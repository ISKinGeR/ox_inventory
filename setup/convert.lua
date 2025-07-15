local Items = require 'modules.items.server'
local started

local function Print(arg)
	print(('^3=================================================================\n^0%s\n^3=================================================================^0'):format(arg))
end

local function Upgrade()
	if started then
		return warn('Data is already being converted, please wait..')
	end

	started = true

	local trunk = MySQL.query.await('SELECT owner, name, data FROM ox_inventory WHERE name LIKE ?', {'trunk-%'})
	local glovebox = MySQL.query.await('SELECT owner, name, data FROM ox_inventory WHERE name LIKE ?', {'glovebox-%'})

	if trunk and glovebox then
		local vehicles = {}

		for _, v in pairs(trunk) do
			vehicles[v.owner] = vehicles[v.owner] or {}
			local subbedName = v.name:sub(7, #v.name)
			vehicles[v.owner][subbedName] = vehicles[v.owner][subbedName] or {trunk=v.data or '[]', glovebox='[]'}
		end

		for _, v in pairs(glovebox) do
			vehicles[v.owner] = vehicles[v.owner] or {}
			local subbedName = v.name:sub(10, #v.name)
			vehicles[v.owner][subbedName] = {trunk=vehicles[v.owner][subbedName].trunk ~= '[]' and vehicles[v.owner][subbedName].trunk or '[]', glovebox=vehicles[v.owner][subbedName].glovebox ~= '[]' and vehicles[v.owner][subbedName].glovebox or v.data or '[]'}
		end

		Print(('Moving ^3%s^0 trunks and ^3%s^0 gloveboxes to owned_vehicles table'):format(#trunk, #glovebox))
		local parameters = {}
		local count = 0

		for owner, v in pairs(vehicles) do
			for plate, v2 in pairs(v) do
				count += 1
				parameters[count] = {
					v2.trunk,
					v2.glovebox,
					plate,
					owner
				}
			end
		end

		MySQL.prepare.await('UPDATE owned_vehicles SET trunk = ?, glovebox = ? WHERE plate = ? AND owner = ?', parameters)
		MySQL.prepare.await('DELETE FROM ox_inventory WHERE name LIKE ? OR name LIKE ?', {'trunk-%', 'glovebox-%'})

		Print('Successfully converted trunks and gloveboxes')
	else
		Print('No inventories need to be converted')
	end

	started = false
end

local function GenerateText(num)
	local str
	repeat str = {}
		for i = 1, num do str[i] = string.char(math.random(65, 90)) end
		str = table.concat(str)
	until str ~= 'POL' and str ~= 'EMS'
	return str
end

local function GenerateSerial(text)
	if text and text:len() > 3 then
		return text
	end

	return ('%s%s%s'):format(math.random(100000,999999), text == nil and GenerateText(3) or text, math.random(100000,999999))
end

local function ConvertESX()
	if started then
		return warn('Data is already being converted, please wait..')
	end

	local users = MySQL.query.await('SELECT identifier, inventory, loadout, accounts FROM users')

	if not users then return end

	started = true
	local total = #users
	local count = 0
	local parameters = {}

	Print(('Converting %s user inventories to new data format'):format(total))

	for i = 1, total do
		count += 1
		local inventory, slot = {}, 0
		local items = users[i].inventory and json.decode(users[i].inventory) or {}
		local accounts = users[i].accounts and json.decode(users[i].accounts) or {}
		local loadout = users[i].loadout and json.decode(users[i].loadout) or {}

		for k, v in pairs(accounts) do
			if type(v) == 'table' then break end
			if server.accounts[k] and Items(k) and v > 0 then
				slot += 1
				inventory[slot] = {slot=slot, name=k, count=v}
			end
		end

		for k in pairs(loadout) do
			local item = Items(k)
			if item then
				slot += 1
				inventory[slot] = {slot=slot, name=k, count=1, metadata = {durability=100}}
				if item.ammoname then
					inventory[slot].metadata.ammo = 0
					inventory[slot].metadata.components = {}
					inventory[slot].metadata.serial = GenerateSerial()
				end
			end
		end

		for k, v in pairs(items) do
			if type(v) == 'table' then break end
			if Items(k) and v > 0 then
				slot += 1
				inventory[slot] = {slot=slot, name=k, count=v}
			end
		end

		parameters[count] = {json.encode(inventory), users[i].identifier}
	end

	MySQL.prepare.await('UPDATE users SET inventory = ? WHERE identifier = ?', parameters)
	Print('Successfully converted user inventories')
	started = false
end

local function Convert_Old_ESX_Property()
	if started then
		return warn('Data is already being converted, please wait..')
	end

	local inventories = MySQL.query.await('select distinct owner from ( select owner from addon_inventory_items WHERE inventory_name = "property" union all select owner from datastore_data WHERE NAME = "property" union all select owner from addon_account_data WHERE account_name = "property_black_money") a ')

	if not inventories then return end

	started = true
	local total = #inventories
	local count = 0
	local parameters = {}

	Print(('Converting %s user property inventories to new data format'):format(total))

	for i = 1, #inventories do
		count += 1
		local inventory, slot = {}, 0

		local addoninventory = MySQL.query.await('SELECT name,count FROM addon_inventory_items WHERE owner = ? AND inventory_name = "property"', {inventories[i].owner})

		for k,v in pairs(addoninventory) do
			if Items(v.name) and v.count > 0 then
				slot += 1
				inventory[slot] = {slot=slot, name=v.name, count=v.count}
			end
		end

		local addonaccount = MySQL.query.await('SELECT money FROM addon_account_data WHERE owner = ? AND account_name = "property_black_money"', {inventories[i].owner})

		for k,v in pairs(addonaccount) do
			if v.money > 0 then
				slot += 1
				inventory[slot] = {slot=slot, name="black_money", count=v.money}
			end
		end

		local datastore = MySQL.query.await('SELECT data FROM datastore_data WHERE owner = ? AND name = "property"', {inventories[i].owner})

		for k,v in pairs(datastore) do
			local obj = json.decode(v['data'])
			if obj then
				for b = 1, #obj['weapons'] do
					local item = Items(obj['weapons'][b].name)
					if item then
						slot += 1
						inventory[slot] = {slot=slot, name=obj['weapons'][b].name, count=1, metadata = {durability=100}}
						if item.ammoname then
							inventory[slot].metadata.ammo = obj['weapons'][b].ammo
							inventory[slot].metadata.components = {}
							inventory[slot].metadata.serial = GenerateSerial()
						end
					end
				end
			end
		end
		parameters[count] = {inventories[i].owner,"property"..inventories[i].owner,json.encode(inventory,{indent=false})}
	end
	MySQL.prepare.await('INSERT INTO ox_inventory (owner,name,data) VALUES (?,?,?)', parameters)
	Print('Successfully converted user property inventories')
	started = false
end
local function ConvertMythic()
    if started then
        return warn('Data is already being converted, please wait..')
    end

    started = true
    Print('Starting Mythic to Ox inventory conversion')

    -- Ensure required columns exist
    MySQL.query.await([[
        ALTER TABLE `characters`
        ADD COLUMN IF NOT EXISTS `inventory` LONGTEXT NULL DEFAULT NULL;

        ALTER TABLE `vehicles`
        ADD COLUMN IF NOT EXISTS `trunk` LONGTEXT NULL DEFAULT NULL,
        ADD COLUMN IF NOT EXISTS `glovebox` LONGTEXT NULL DEFAULT NULL;
    ]])

    -- Process player inventories (type=1)
    local players = MySQL.query.await('SELECT SID FROM characters')
    Print(('Converting %d player inventories'):format(#players))
    
    for i, player in ipairs(players) do
        local items = {}
        local sid = player.SID
        local inventoryName = sid..'-1'
        
        -- Get all items for this player
        local result = MySQL.query.await('SELECT * FROM inventory WHERE name = ?', {inventoryName})
        
        if result and #result > 0 then
            local groupedItems = {}
            
            -- Group items by slot and metadata
            for _, item in ipairs(result) do
                local key = item.slot..(item.information or '')
                
                if not groupedItems[key] then
                    groupedItems[key] = {
                        slot = item.slot,
                        name = item.item_id,
                        count = 0,
                        metadata = item.information ~= '[]' and json.decode(item.information) or {}
                    }
                end
                
                groupedItems[key].count = groupedItems[key].count + 1
            end
            
            -- Convert to array
            for _, item in pairs(groupedItems) do
                table.insert(items, item)
            end
        end
        
        -- Update character inventory
        MySQL.update.await('UPDATE characters SET inventory = ? WHERE SID = ?', {
            json.encode(items), sid
        })
    end

    -- Process vehicle trunks (type=4)
    Print('Converting vehicle trunks')
    local trunkResults = MySQL.query.await([[
        SELECT SUBSTRING_INDEX(name, '-', 1) AS vehicle_id, 
               GROUP_CONCAT(id) AS item_ids
        FROM inventory 
        WHERE name LIKE '%-4'
        GROUP BY name, slot, item_id, information
    ]])
    
    for _, trunk in ipairs(trunkResults) do
        local items = {}
        local itemIds = {}
        
        for id in trunk.item_ids:gmatch('%d+') do
            table.insert(itemIds, tonumber(id))
        end
        
        -- Get grouped trunk items
        local query = string.format([[
            SELECT item_id, COUNT(*) as count, information
            FROM inventory
            WHERE id IN (%s)
            GROUP BY item_id, information
        ]], table.concat(itemIds, ','))
        
        local trunkItems = MySQL.query.await(query)
        
        for _, item in ipairs(trunkItems) do
            table.insert(items, {
                name = item.item_id,
                count = item.count,
                metadata = item.information ~= '[]' and json.decode(item.information) or {}
            })
        end
        
        -- Update vehicle trunk
        MySQL.update.await('UPDATE vehicles SET trunk = ? WHERE id = ?', {
            json.encode(items), trunk.vehicle_id
        })
    end

    -- Process vehicle gloveboxes (type=5)
    Print('Converting vehicle gloveboxes')
    local gloveboxResults = MySQL.query.await([[
        SELECT SUBSTRING_INDEX(name, '-', 1) AS vehicle_id, 
               GROUP_CONCAT(id) AS item_ids
        FROM inventory 
        WHERE name LIKE '%-5'
        GROUP BY name, slot, item_id, information
    ]])
    
    for _, glovebox in ipairs(gloveboxResults) do
        local items = {}
        local itemIds = {}
        
        for id in glovebox.item_ids:gmatch('%d+') do
            table.insert(itemIds, tonumber(id))
        end
        
        -- Get grouped glovebox items
        local query = string.format([[
            SELECT item_id, COUNT(*) as count, information
            FROM inventory
            WHERE id IN (%s)
            GROUP BY item_id, information
        ]], table.concat(itemIds, ','))
        
        local gloveboxItems = MySQL.query.await(query)
        
        for _, item in ipairs(gloveboxItems) do
            table.insert(items, {
                name = item.item_id,
                count = item.count,
                metadata = item.information ~= '[]' and json.decode(item.information) or {}
            })
        end
        
        -- Update vehicle glovebox
        MySQL.update.await('UPDATE vehicles SET glovebox = ? WHERE id = ?', {
            json.encode(items), glovebox.vehicle_id
        })
    end

    -- Process property stashes (types 1000-1005)
    Print('Converting property stashes')
    for stashType = 1000, 1005 do
        local stashes = MySQL.query.await([[
            SELECT SUBSTRING_INDEX(name, '-', 1) AS property_id, 
                   GROUP_CONCAT(id) AS item_ids
            FROM inventory 
            WHERE name LIKE ? 
            GROUP BY name, slot, item_id, information
        ]], {'%-'..stashType})
        
        for _, stash in ipairs(stashes) do
            local items = {}
            local itemIds = {}
            local stashName = 'property'..stash.property_id
            
            for id in stash.item_ids:gmatch('%d+') do
                table.insert(itemIds, tonumber(id))
            end
            
            -- Get grouped property items
            local query = string.format([[
                SELECT item_id, COUNT(*) as count, information
                FROM inventory
                WHERE id IN (%s)
                GROUP BY item_id, information
            ]], table.concat(itemIds, ','))
            
            local propertyItems = MySQL.query.await(query)
            
            for _, item in ipairs(propertyItems) do
                table.insert(items, {
                    name = item.item_id,
                    count = item.count,
                    metadata = item.information ~= '[]' and json.decode(item.information) or {}
                })
            end
            
            -- Insert into ox_inventory
            MySQL.insert.await([[
                INSERT INTO ox_inventory (owner, name, data)
                VALUES (?, ?, ?)
                ON DUPLICATE KEY UPDATE data = VALUES(data)
            ]], {
                '',  -- Public stash
                stashName,
                json.encode(items)
            })
        end
    end

    -- Process warehouses (types 1010-1012)
    Print('Converting warehouses')
    for _, warehouseType in ipairs({1010, 1011, 1012}) do
        local warehouses = MySQL.query.await([[
            SELECT SUBSTRING_INDEX(name, '-', 1) AS warehouse_id, 
                   GROUP_CONCAT(id) AS item_ids
            FROM inventory 
            WHERE name LIKE ? 
            GROUP BY name, slot, item_id, information
        ]], {'%-'..warehouseType})
        
        for _, warehouse in ipairs(warehouses) do
            local items = {}
            local itemIds = {}
            local warehouseName = 'warehouse'..warehouse.warehouse_id
            
            for id in warehouse.item_ids:gmatch('%d+') do
                table.insert(itemIds, tonumber(id))
            end
            
            -- Get grouped warehouse items
            local query = string.format([[
                SELECT item_id, COUNT(*) as count, information
                FROM inventory
                WHERE id IN (%s)
                GROUP BY item_id, information
            ]], table.concat(itemIds, ','))
            
            local warehouseItems = MySQL.query.await(query)
            
            for _, item in ipairs(warehouseItems) do
                table.insert(items, {
                    name = item.item_id,
                    count = item.count,
                    metadata = item.information ~= '[]' and json.decode(item.information) or {}
                })
            end
            
            -- Insert into ox_inventory
            MySQL.insert.await([[
                INSERT INTO ox_inventory (owner, name, data)
                VALUES (?, ?, ?)
                ON DUPLICATE KEY UPDATE data = VALUES(data)
            ]], {
                '',  -- Public stash
                warehouseName,
                json.encode(items)
            })
        end
    end

    Print('Mythic to Ox inventory conversion completed successfully')
    started = false
end

return {
    linden = Upgrade,
    esx = ConvertESX,
    esxproperty = Convert_Old_ESX_Property,
    mythic = ConvertMythic,
}