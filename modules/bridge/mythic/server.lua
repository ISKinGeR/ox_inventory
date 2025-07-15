local Inventory = require 'modules.inventory.server' -- Load ox inventory
ItemCallbacks = {}

-- Setup inventory for a player when they load in
local function setupPlayer(src)
    local source = src
    local player = Fetch:Source(source)
    local char = player:GetData("Character")
    local sid = char:GetData("SID")
    local inventory = MySQL.query.await('SELECT id, count(id) as Count, name as Owner, item_id as Name, dropped as Temp, MAX(quality) as Quality, information as MetaData, slot as Slot, MIN(creationDate) AS CreateDate FROM inventory WHERE NAME = ? GROUP BY slot ORDER BY slot ASC', { string.format("%s-%s", sid, 1)}) or {}

    server.setPlayerInventory({
        source = source,
        inventory = inventory,
        identifier = sid,
        name = ('%s %s'):format(char:GetData("First"), char:GetData("Last")),
    })

    Inventory.SetItem(source, 'money', char:GetData("Cash"))
end

function dumpTable(tbl, indent) -- print table that help printing without function errors
    indent = indent or ""
    for k, v in pairs(tbl) do
        local keyStr = tostring(k)
        local valueType = type(v)

        if valueType == "table" then
            print(indent .. keyStr .. " = {")
            dumpTable(v, indent .. "  ")
            print(indent .. "}")
        elseif valueType ~= "function" then
            print(indent .. keyStr .. " = " .. tostring(v))
        else
            print(indent .. keyStr .. " = <function>")
        end
    end
end

RegisterServerEvent('Inventory:Cash', function(key)
    Middleware:TriggerEvent('Inventory:Wallet', source)
end)

AddEventHandler("Inventory:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Fetch = exports["mythic-base"]:FetchComponent("Fetch")
	Utils = exports["mythic-base"]:FetchComponent("Utils")
	Middleware = exports["mythic-base"]:FetchComponent("Middleware")
    Wallet = exports["mythic-base"]:FetchComponent("Wallet")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["mythic-base"]:RequestDependencies("Inventory", {
        "Fetch",
        "Utils",
        "Middleware",
        "Wallet",
	}, function(error)
		if #error > 0 then
			return
		end
		RetrieveComponents()

		Middleware:Add("Characters:Spawning", function(source)
			setupPlayer(source)
		end, 1)

        Middleware:Add("Characters:Logout", function(source)
			server.playerDropped(source)
		end, 1)

        Middleware:Add("Inventory:Wallet", function(source)
            local player = Fetch:Source(source)
            local char = player:GetData("Character")
            Inventory.SetItem(source, 'money', char:GetData("Cash"))
		end, 1)
        
	end)
end)

RegisterCommand('l', function(source, args)
    setupPlayer(source)
end, false)

function server.setPlayerData(player)
    local psource = Fetch:Source(player.source)
    local playerdata = psource:GetData("Character")
    return {
        source = psource:GetData('Source'),
        identifier = playerdata:GetData("SID"),
        name = ("%s %s"):format(playerdata:GetData('First'), playerdata:GetData('Last')),
        groups = psource:GetData('Groups'),
        dateofbirth = playerdata:GetData('DOB')
    }

end

function server.syncInventory(inv)
    local source = inv.player.source
    local player = Fetch:Source(source)
    local char = player:GetData("Character")

    local accounts = Inventory.GetAccountItemCounts(inv)
    if not accounts then return end
    for account, invAmount in pairs(accounts) do
        local currentCash = Wallet:Get(source) or 0
        if invAmount ~= currentCash then
            local diff = invAmount - currentCash
            Wallet:Modify(source, diff)
        end
    end
end


function server.UseItem(source, itemName, data)
    -- TODO MYTHIC:
    print("[UseItem] This UseItem callback!")
    Inventory.Items:Use(source,itemName)

end

function server.CheckJob(source, data)
    -- TODO MYTHIC:

end

local function normalizeLicenseName(name)
    if name == "weapon" then name = "weapons" end
    return name:sub(1,1):upper() .. name:sub(2):lower()
end

function server.hasLicense(inv, license)
    local sid = inv.player and inv.player.identifier

    license = normalizeLicenseName(license)

    local licensesJson = MySQL.scalar.await('SELECT licenses FROM characters WHERE SID = ?', { sid})
    if not licensesJson then
        print("No licenses found for SID: " .. sid)
        return false
    end

    local licenses = json.decode(licensesJson)

    local data = licenses[license]
    if data and data.Active then
        return true
    end

    return false
end

function server.buyLicense(inv, license)    
    local sid = inv.player and inv.player.identifier
    license.name = normalizeLicenseName(license.name)

    if server.hasLicense(inv, license.name) then
        return false, 'already_have'
    end

    local money = Inventory.GetItemCount(inv, 'money')

    if money < license.price then
        return false, 'can_not_afford'
    end

    Inventory.RemoveItem(inv, 'money', license.price)

    local licensesJson = MySQL.scalar.await('SELECT licenses FROM characters WHERE SID = ?', { sid })

    local licenses = json.decode(licensesJson)

    if not licenses[license.name] then
        licenses[license.name] = {}
    end

    licenses[license.name].Active = true
    licenses[license.name].Suspended = false

    MySQL.update.await('UPDATE characters SET licenses = ? WHERE SID = ?', {
        json.encode(licenses),
        sid
    })

    return true, 'have_purchased'
end


function server.isPlayerBoss(playerId, group, grade)
    -- TODO MYTHIC:
    print("[isPlayerBoss] This check if the player have highest grade in his job!")

end

function server.getOwnedVehicleId(entityId)
    if not entityId or not DoesEntityExist(entityId) then
        return nil
    end
    local vin = Entity(entityId).state.VIN
    return vin
end



-- Starting remake INVENTORY functions callbacks to ox

INVENTORY = {
    -- D:\fivemserver\mythic\resources\[mythic]\mythic-businesses\server\sagma.lua
	GetInventory = function(self, source, owner, invType)
		return getInventory(source, owner, invType)
	end,

    -- D:\fivemserver\mythic\resources\[mythic]\mythic-evidence\server\ballistics.lua
	SetMetaDataKey = function(self, id, key, value)
		local slot = Inventory:GetItem(id)
		if slot ~= nil then
			local md = json.decode(slot.MetaData or "{}")
			md[key] = value
			MySQL.query.await('UPDATE inventory SET information = ? WHERE id = ?', {
				json.encode(md),
				id,
			})
			return md
		else
			return {}
		end
	end,

    -- D:\fivemserver\mythic\resources\[mythic]\mythic-vehicles\server\itemuse.lua
    -- D:\fivemserver\mythic\resources\[mythic]\mythic-status\server\registerItems.lua
	UpdateMetaData = function(self, id, updatingMeta)
		if type(updatingMeta) ~= "table" then
			return false
		end
		
		local slot = Inventory:GetItem(id)
		if slot ~= nil then
			local md = json.decode(slot.MetaData or "{}")

			for k, v in pairs(updatingMeta) do
				md[k] = v
			end

			MySQL.query.await('UPDATE inventory SET information = ? WHERE id = ?', {
				json.encode(md),
				id,
			})

			return md
		else
			return {}
		end
	end,

    -- a lot
	OpenSecondary = function(self, _src, invType, Owner, vehClass, vehModel, isRaid, nameOverride, slotOverride, capacityOverride)
		if _src and invType and Owner then
			local player = Fetch:Source(_src)
			local char = player:GetData("Character")

			local plyrInvData = {
				size = (LoadedEntitys[1].slots or 10),
				name = char:GetData("First") .. " " .. char:GetData("Last"),
				inventory = {},
				invType = 1,
				capacity = LoadedEntitys[1].capacity,
				owner = char:GetData("SID"),
				isWeaponEligble = Weapons:IsEligible(_src),
				qualifications = char:GetData("Qualifications") or {},
			}
		
			TriggerEvent("Inventory:Server:Opened", _src, Owner, invType)

			TriggerClientEvent("Inventory:Client:Open", _src, plyrInvData, Inventory:GetSecondaryData(_src, invType, Owner, vehClass, vehModel, isRaid, nameOverride, slotOverride, capacityOverride))
		
			plyrInvData.inventory = getInventory(_src, char:GetData("SID"), 1)
			plyrInvData.loaded = true
		
			TriggerClientEvent("Inventory:Client:Cache", _src, plyrInvData)
			TriggerClientEvent("Inventory:Client:Load", _src, plyrInvData, Inventory:GetSecondary(_src, invType, Owner, vehClass, vehModel, isRaid, nameOverride, slotOverride, capacityOverride))
		end
	end,

	GetSlots = function(self, Owner, Type)
		local db = MySQL.query.await('SELECT slot as Slot FROM inventory WHERE name = ? GROUP BY slot ORDER BY slot', {
			string.format("%s-%s", Owner, Type)
		})

		local slots = {}
		for k, v in ipairs(db) do
			table.insert(slots, v.Slot)
		end
		return slots
	end,

	GetMatchingSlot = function(self, Owner, Name, Count, Type)
		if not itemsDatabase[Name].isStackable then
			return nil
		end

		return (MySQL.single.await('SELECT slot as Slot FROM inventory WHERE name = ? AND item_id = ? GROUP BY slot HAVING COUNT(item_id) <= ?', {
			string.format("%s-%s", Owner, Type),
			Name,
			itemsDatabase[Name].isStackable - Count
		}))?.Slot
	end,

	GetFreeSlotNumbers = function(self, Owner, invType, vehClass, vehModel)
		local result = Inventory:GetSlots(Owner, invType)
		local occupiedTable = {}
		local unOccupiedSlots = {}
		for k, v in ipairs(result) do
			occupiedTable[v] = true
		end

		local total = 8
		if LoadedEntitys[invType] ~= nil then
			total = getSlotCount(invType, vehClass or false, vehModel or false)
		else
			Logger:Error("Inventory", string.format("Entity Type ^2%s^7 Was Attempted To Be Loaded", invType))
		end

		for i = 1, total do
			if not occupiedTable[i] then
				table.insert(unOccupiedSlots, i)
			end
		end

		table.sort(unOccupiedSlots)

		return unOccupiedSlots
	end,

	GetSlot = function(self, Owner, Slot, Type)
		local item = MySQL.single.await('SELECT id, count(Name) as Count, name as Owner, item_id as Name, dropped as Temp, MAX(quality) as Quality, information as MetaData, slot as Slot, MIN(creationDate) as CreateDate FROM inventory WHERE name = ? AND slot = ? GROUP BY slot ORDER BY slot ASC', {
			string.format("%s-%s", Owner, Type),
			Slot
		})

		if item ~= nil then
			item.MetaData = json.decode(item.MetaData or "{}")
			item.Owner = Owner
			item.invType = Type
		end

		return item
	end,

	GetItem = function(self, id)
		return MySQL.single.await('SELECT id, count(Name) as Count, name as Owner, item_id as Name, dropped as Temp, quality as Quality, information as MetaData, slot as Slot, creationDate as CreateDate FROM inventory WHERE id = ?', {
			id
		})
	end,
    
	AddItem = function(self, Owner, itemName, Count, md, invType, vehClass, vehModel, entity, isRecurse, Slot, forceCreateDate, quality)
		local plyr = Fetch:SID(Owner)
		local pSource = plyr:GetData("Source")
		md = md or {}
		if quality then md.quality = quality end
		return Inventory.AddItem(pSource, itemName, Count, md)
	end,
	

	SetItemCreateDate = function(self, id, value)
		MySQL.query.await('UPDATE inventory SET creationDate = ? WHERE id = ?', {
			value,
			id,
		})
	end,


	Items = {
        -- D:\fivemserver\mythic\resources\[mythic]\mythic-police\server\handcuffs\component.lua
        HasAnyItems = function(self, source, items)
			local player = exports["mythic-base"]:FetchComponent("Fetch"):Source(source)
			local char = player:GetData("Character")
			local charId = char:GetData("SID")

			for k, v in ipairs(items) do
				if Inventory.Items:Has(charId, 1, v.item, v.count) then
					return true
				end
			end

			return false
		end,

        -- D:\fivemserver\mythic\resources\[mythic]\mythic-businesses\server\sagma.lua
		GetAllOfTypeNoStack = function(self, owner, invType, itemType)
			local f = {}
			local params = {}

			for k, v in pairs(itemsDatabase) do
				if v.type == itemType then
					table.insert(f, string.format('"%s"', v.name))
				end
			end

			local qry = string.format(
				'SELECT id, name as Owner, item_id as Name, dropped as Temp, quality as Quality, information as MetaData, slot as Slot, creationDate as CreateDate FROM inventory WHERE name = ? AND item_id IN (%s)',
				table.concat(f, ',')
			)
			return MySQL.query.await(qry, { string.format("%s-%s", owner, invType) })
		end,

		GetData = function(self, item)
			return itemsDatabase[item]
		end,

		GetCount = function(self, owner, invType, item)
			local counts = Inventory.Items:GetCounts(owner, invType)
			return counts[item] or 0
		end,

		GetCounts = function(self, owner, invType)
			local counts = {}

			local qry = MySQL.query.await('SELECT COUNT(id) as Count, item_id as Name FROM inventory WHERE name = ? GROUP BY item_id', {
				string.format("%s-%s", owner, invType)
			})

			for k, v in ipairs(qry) do
				counts[v.Name] = v.Count
			end

			return counts
		end,

		GetFirst = function(self, Owner, Name, invType)
			local item = MySQL.single.await("SELECT id, name as Owner, item_id as Name, dropped as Temp, quality as Quality, information as MetaData, slot as Slot, creationDate as CreateDate FROM inventory WHERE NAME = ? AND item_id = ? ORDER BY quality DESC, creationDate ASC LIMIT 1", {
				string.format("%s-%s", Owner, invType),
				Name,
			})

			if item ~= nil then
				item.MetaData = json.decode(item.MetaData or "{}")
				item.Owner = Owner
				item.invType = invType
			end
			
			return item
		end,

		Has = function(self, owner, invType, item, count)
			return (MySQL.single.await('SELECT id, count(id) as Count FROM inventory WHERE name = ? AND item_id = ? GROUP BY item_id', {
				string.format("%s-%s", owner, invType),
				item
			})?.Count or 0) >= (count or 1)
		end,
        

		RegisterUse = function(self, item, id, cb)
			if ItemCallbacks[item] == nil then
				ItemCallbacks[item] = {}
			end
			ItemCallbacks[item][id] = cb
		end,
		Use = function(self, source, item, cb)
			if item == nil then
				return cb(false)
			end

			if not itemsDatabase[item.Name]?.isUsable or _inUse[source] then
				return cb(false)
			end

			local itemData = itemsDatabase[item.Name]
			if
				not itemData.durability
				or item ~= nil
					and item.CreateDate ~= nil
					and item.CreateDate + itemData.durability > os.time()
			then
				if itemData.closeUi then
					TriggerClientEvent("Inventory:CloseUI", source)
				end

				if
					itemData.useRestrict == nil
					or (itemData.useRestrict.job ~= nil and Jobs.Permissions:HasJob(
						source,
						itemData.useRestrict.job.id,
						itemData.useRestrict.job.workplace or false,
						itemData.useRestrict.job.grade or false,
						false,
						false,
						itemData.useRestrict.job.permissionKey or false
					) and (not itemData.useRestrict.job.duty or Player(source).state.onDuty == itemData.useRestrict.job.id))
					or (itemData.useRestrict.state and hasValue(char:GetData("States"), itemData.useRestrict.state))
					or (itemData.useRestrict.rep ~= nil and Reputation:GetLevel(source, itemData.useRestrict.rep.id) >= itemData.useRestrict.rep.level)
					or (itemData.useRestrict.character ~= nil and itemData.useRestrict.character == char:GetData("ID"))
					or (itemData.useRestrict.admin and plyr.Permissions:IsAdmin())
				then
					_inUse[source] = true
					TriggerClientEvent("Inventory:Client:InUse", source, _inUse[source])
					TriggerClientEvent("Inventory:Client:Changed", source, itemData.type == 2 and "holster" or "used", item.Name, 0, item.Slot)

					local used = true
					if itemData.animConfig ~= nil then
						used = false
						local p = promise.new()
						Callbacks:ClientCallback(source, "Inventory:ItemUse", itemData.animConfig, function(state)
							p:resolve(state)
						end)
						used = Citizen.Await(p)
					end

					if used then
						local retard = false
						if ItemCallbacks[item.Name] ~= nil then
							for k, callback in pairs(ItemCallbacks[item.Name]) do
								retard = true
								callback(source, item, itemsDatabase[item.Name])
							end
						elseif itemData.imitate and ItemCallbacks[itemData.imitate] ~= nil then
							for k, callback in pairs(ItemCallbacks[itemData.imitate]) do
								retard = true
								callback(source, item, itemsDatabase[item.Name])
							end
						end

						if retard then
							TriggerClientEvent("Markers:ItemAction", source, item)
						end
					end

					local char = Fetch:Source(source):GetData("Character")
					sendRefreshForClient(source, char:GetData("SID"), 1, item.Slot)
					_inUse[source] = false
					TriggerClientEvent("Inventory:Client:InUse", source, _inUse[source])
					cb(used)
				else
					Execute:Client(source, "Notification", "Error", "You Can't Use That")
					cb(false)
				end

			else
				cb(false)
			end
		end,
		Remove = function(self, owner, invType, item, count, skipUpdate)
			local results = MySQL.query.await("DELETE FROM inventory WHERE name = ? AND item_id = ? ORDER BY slot ASC, creationDate ASC LIMIT ?", {
				string.format("%s-%s", owner, invType),
				item,
				count,
			})

			if not skipUpdate then
				if invType == 1 then
					local plyr = Fetch:SID(owner)
					if plyr ~= nil then
						local source = plyr:GetData("Source")
						local char = plyr:GetData("Character")
						TriggerClientEvent("Inventory:Client:Changed", source, "removed", item, count)
						if WEAPON_PROPS[item] ~= nil then
							_refreshAttchs[owner] = source
						end
						refreshShit(owner)
					end
				end
			end

			return results.affectedRows >= count
		end,
		RemoveId = function(self, owner, invType, item)
			MySQL.query.await("DELETE FROM inventory WHERE id = ?", { item.id })

			if invType == 1 then
				local plyr = Fetch:SID(tonumber(owner))
				if plyr ~= nil then
					local source = plyr:GetData("Source")
					TriggerClientEvent("Inventory:Client:Changed", source, "removed", item.Name, 1)
					if WEAPON_PROPS[item.Name] ~= nil then
						_refreshAttchs[owner] = source
					end
					refreshShit(owner)
				end
			end

			return true
		end,
		RemoveAll = function(self, owner, type, item)
			if type == 1 then
				local plyr = Fetch:SID(owner)
				if plyr ~= nil then
					local count = MySQL.scalar.await('SELECT COUNT(item_id) as count FROM inventory WHERE name = ? and item_id = ?', {
						string.format("%s-%s", owner, type),
						item,
					})

					if count > 0 then
						TriggerClientEvent("Inventory:Client:Changed", plyr:GetData("Source"), "removed", item, count)
					end
				end
			end

			MySQL.query.await('DELETE FROM inventory WHERE name = ? AND item_id = ?', {
				string.format("%s-%s", owner, type),
				item,
			})
			return true
		end,
		RemoveSlot = function(self, Owner, Name, Count, Slot, invType)
			local slot = Inventory:GetSlot(Owner, Slot, invType)
			if slot == nil then
				Logger:Error(
					"Inventory",
					"Failed to remove " .. Count .. " from Slot " .. Slot .. " for " .. Owner,
					{ console = false }
				)
				return false
			else
				if slot.Count >= Count then
					MySQL.query.await('DELETE FROM inventory WHERE name = ? AND slot = "?" AND item_id = ? ORDER BY creationDate ASC LIMIT ?', {
						string.format("%s-%s", Owner, invType),
						Slot,
						Name,
						Count,
					})
	
					if invType == 1 then
						local plyr = Fetch:SID(Owner)
						if plyr ~= nil then
							local source = plyr:GetData("Source")
							local char = plyr:GetData("Character")
							TriggerClientEvent("Inventory:Client:Changed", source, "removed", Name, Count)
							if WEAPON_PROPS[item] ~= nil then
								_refreshAttchs[Owner] = source
							end
							refreshShit(Owner)
						end
					end
	
					return true
				else
					return false
				end
			end
		end,

        -- D:\fivemserver\mythic\resources\[mythic]\mythic-weed\server\items.lua
		RemoveList = function(self, owner, invType, items)
			for k, v in ipairs(items) do
				Inventory.Items:Remove(owner, invType, v.name, v.count)
			end
		end,


        -- D:\fivemserver\mythic\resources\[mythic]\mythic-ped\server\ped.lua
		GetWithStaticMetadata = function(self, masterKey, mainIdName, textureIdName, gender, data)
			for k, v in pairs(itemsDatabase) do
				if v.staticMetadata ~= nil
					and v.staticMetadata[masterKey] ~= nil
					and v.staticMetadata[masterKey][gender] ~= nil
					and v.staticMetadata[masterKey][gender][mainIdName] == data[mainIdName]
					and v.staticMetadata[masterKey][gender][textureIdName] == data[textureIdName]
				then
					return k
				end
			end

			return nil
		end,
	},

    -- hospital and jail things
	Holding = {
		Put = function(self, source)
			CreateThread(function()
				local p = promise.new()
				local plyr = Fetch:Source(source)
				if plyr ~= nil then
					local char = plyr:GetData("Character")
					if char ~= nil then
						local inv = getInventory(source, char:GetData("SID"), 1)

						if #inv > 0 then
							local freeSlots = Inventory:GetFreeSlotNumbers(char:GetData("SID"), 2)

							if #inv <= #freeSlots then
								local queries = {}

								for k, v in ipairs(inv) do
									table.insert(queries, {
										query = "UPDATE inventory SET name = ?, slot = ? WHERE name = ? AND slot = ?", 
										values = {
											string.format("%s-%s", char:GetData("SID"), 2),
											freeSlots[k],
											string.format("%s-%s", char:GetData("SID"), 1),
											v.Slot
										}
									})
								end

								MySQL.transaction.await(queries)
								refreshShit(char:GetData("SID"))

								Execute:Client(source, "Notification", "Success", "Retreived Items")
							else
								Execute:Client(source, "Notification", "Error", "Not Enough Slots Available")
							end
						else
							Execute:Client(source, "Notification", "Error", "No Items To Retreive")
						end
					end
					
					p:resolve(true)
				end
				Citizen.Await(p)
			end)
		end,
		Take = function(self, source)
			CreateThread(function()
				local p = promise.new()
				local plyr = Fetch:Source(source)
				if plyr ~= nil then
					local char = plyr:GetData("Character")
					if char ~= nil then
						local inv = getInventory(source, char:GetData("SID"), 2)

						if #inv > 0 then
							local freeSlots = Inventory:GetFreeSlotNumbers(char:GetData("SID"), 1)

							if #inv <= #freeSlots then
								local queries = {}

								for k, v in ipairs(inv) do
									table.insert(queries, {
										query = "UPDATE inventory SET name = ?, slot = ? WHERE name = ? AND slot = ?", 
										values = {
											string.format("%s-%s", char:GetData("SID"), 1),
											freeSlots[k],
											string.format("%s-%s", char:GetData("SID"), 2),
											v.Slot
										}
									})
								end

								MySQL.transaction.await(queries)
								refreshShit(char:GetData("SID"), true)

								Execute:Client(source, "Notification", "Success", "Retreived Items")
							else
								Execute:Client(source, "Notification", "Error", "Not Enough Slots Available")
							end
						else
							Execute:Client(source, "Notification", "Error", "No Items To Retreive")
						end
					end
					
					p:resolve(true)
				end
				Citizen.Await(p)
			end)
		end,
	},

    -- idk what im going to do with these!
	Container = {
		Open = function(self, src, item, identifier)
			Callbacks:ClientCallback(src, "Inventory:Container:Open", {
				item = item,
				container = ("container:%s"):format(identifier),
			}, function()
				Inventory:OpenSecondary(src, itemsDatabase[item.Name].container, ("container:%s"):format(identifier))
			end)
		end,
	},
	Stash = {
		Open = function(self, src, invType, identifier)
			Inventory:OpenSecondary(src, invType, ("stash:%s"):format(identifier))
		end,
	},
	Shop = {
		Open = function(self, src, identifier)
			Inventory:OpenSecondary(src, 11, ("shop:%s"):format(identifier))
		end,
	},

    -- D:\fivemserver\mythic\resources\[mythic]\mythic-police\client\police\events.lua
	Search = {
		Character = function(self, src, tSrc, id)
			Callbacks:ClientCallback(tSrc, "Inventory:ForceClose", {}, function(state)
				Execute:Client(tSrc, "Notification", "Info", "You Were Searched")
				Inventory:OpenSecondary(src, 1, id)
			end)
		end,
	},

	Poly = {
		Create = function(self, data)
			table.insert(_polyInvs, data.id)
			GlobalState[string.format("Inventory:%s", data.id)] = data
		end,
		-- Add = {
		-- 	Box = function(self, id, coords, length, width, options, entityId, restrictions)

		-- 	end,
		-- 	Poly = function(self) end,
		-- 	Circle = function(self) end,
		-- },
		Remove = function(self, id)

		end,
	},
}