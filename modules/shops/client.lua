if not lib then return end

local shopTypes = {}
local shops = {}
local createBlip = require 'modules.utils.client'.CreateBlip


for shopType, shopData in pairs(lib.load('data.shops') or {} --[[@as table<string, OxShop>]]) do
	local shop = {
		name = shopData.name,
		groups = shopData.groups or shopData.jobs,
		blip = shopData.blip,
		label = shopData.label,
        icon = shopData.icon
	}

	if shared.target then
		shop.model = shopData.model
		shop.targets = shopData.targets
	else
		shop.locations = shopData.locations
	end

	shopTypes[shopType] = shop
	local blip = shop.blip

	if blip then
		blip.name = ('ox_shop_%s'):format(shopType)
		AddTextEntry(blip.name, shop.name or shopType)
	end
end

---@param point CPoint
local function onEnterShop(point)
	if not point.entity then
		local model = lib.requestModel(point.ped)

		if not model then return end

		local entity = CreatePed(0, model, point.coords.x, point.coords.y, point.coords.z, point.heading, false, true)

		if point.scenario then TaskStartScenarioInPlace(entity, point.scenario, 0, true) end

		SetModelAsNoLongerNeeded(model)
		FreezeEntityPosition(entity, true)
		SetEntityInvincible(entity, true)
		SetBlockingOfNonTemporaryEvents(entity, true)

		exports.ox_target:addLocalEntity(entity, {
            {
                icon = point.icon or 'fas fa-shopping-basket',
                label = point.label,
                groups = point.groups,
                onSelect = function()
                    client.openInventory('shop', { id = point.invId, type = point.type })
                end,
                iconColor = point.iconColor,
                distance = point.shopDistance or 2.0
            }
		})

		point.entity = entity
	end
end

local Utils = require 'modules.utils.client'

local function onExitShop(point)
	local entity = point.entity

	if not entity then return end

	exports.ox_target:removeLocalEntity(entity)
	Utils.DeleteEntity(entity)

	point.entity = nil
end

local function hasShopAccess(shop)
	return not shop.groups or client.hasGroup(shop.groups)
end

local function wipeShops()
	for i = 1, #shops do
		local shop = shops[i]

		if shop.zoneId then
            exports.ox_target:removeZone(shop.zoneId)
            shop.zoneId = nil
		end

		if shop.remove then
			if shop.entity then onExitShop(shop) end

			shop:remove()
		end

		if shop.blip then
			RemoveBlip(shop.blip)
		end
	end

	table.wipe(shops)
end

local function refreshShops()
	wipeShops()

	local id = 0

	for type, shop in pairs(shopTypes) do
		local blip = shop.blip
		local label = shop.label or locale('open_label', shop.name)

		if shared.target then
			if shop.model then
				if not hasShopAccess(shop) then goto skipLoop end

				exports.ox_target:removeModel(shop.model, shop.name)
				exports.ox_target:addModel(shop.model, {
                    {
                        name = shop.name,
                        icon = shop.icon or 'fas fa-shopping-basket',
                        label = label,
                        onSelect = function()
                            client.openInventory('shop', { type = type })
                        end,
                        distance = 2
                    },
				})
			elseif shop.targets then
				for i = 1, #shop.targets do
					local target = shop.targets[i]
					local shopid = ('%s-%s'):format(type, i)

					if target.ped then
						id += 1

						shops[id] = lib.points.new({
							coords = target.loc,
							heading = target.heading,
							distance = 60,
							inv = 'shop',
							invId = i,
							type = type,
							blip = blip and hasShopAccess(shop) and createBlip(blip, target.loc),
							ped = target.ped,
							scenario = target.scenario,
							label = label,
							groups = shop.groups,
							icon = shop.icon or 'fas fa-shopping-basket',
							iconColor = target.iconColor,
							onEnter = onEnterShop,
							onExit = onExitShop,
							shopDistance = target.distance,
						})
					else
						if not hasShopAccess(shop) then goto nextShop end

						id += 1

						shops[id] = {
							zoneId = Utils.CreateBoxZone(target, {
                                {
                                    name = shopid,
                                    icon = shop.icon or 'fas fa-shopping-basket',
                                    label = label,
                                    groups = shop.groups,
                                    onSelect = function()
                                        client.openInventory('shop', { id = i, type = type })
                                    end,
                                    iconColor = target.iconColor,
                                    distance = target.distance
                                }
                            }),
							blip = blip and createBlip(blip, target.coords)
						}
					end

					::nextShop::
				end
			end
		elseif shop.locations then
			if not hasShopAccess(shop) then goto skipLoop end
            local shopPrompt = { icon = 'fas fa-shopping-basket' }

			for i = 1, #shop.locations do
				local coords = shop.locations[i]
				id += 1

				shops[id] = lib.points.new(coords, 16, {
					coords = coords,
					distance = 16,
					inv = 'shop',
					invId = i,
					type = type,
                    marker = client.shopmarker,
                    prompt = {
                        options = shop.icon and { icon = shop.icon } or shopPrompt,
                        message = ('**%s**  \n%s'):format(label, locale('interact_prompt', GetControlInstructionalButton(0, 38, true):sub(3)))
                    },
					nearby = Utils.nearbyMarker,
					blip = blip and createBlip(blip, coords)
				})
			end
		end

		::skipLoop::
	end
end


--- mythic shops

CreateThread(function()
	while not _Ready do 
		Wait(1000)
	end

	for shopType, shopData in pairs(lib.load('data.mythicShops') or {}) do
		local shopName = shopData.name or "Shop"
		local inventoryId = shopType
		local entityId = shopData.entityId

		for i, loc in ipairs(shopData.tlocations or {}) do
			local coords = loc.coords
			if coords and #coords == 4 then
				local menu = {
					icon = "sack-dollar",
					text = shopName,
					event = "Shop:Client:OpenShop",
					data = inventoryId,
				}

				-- Add restriction if it exists
				if loc.restriction and loc.restriction.job then
					menu.jobPerms = {
						{
							job = loc.restriction.job.id,
							workplace = loc.restriction.job.workplace,
							grade = loc.restriction.job.grade,
							permissionKey = loc.restriction.job.permissionKey,
							reqDuty = loc.restriction.job.duty or false,
						}
					}
				end

				-- Generate unique interaction ID
				local interactionId = string.format("shop-%s-%s", inventoryId, i)

				-- Add NPC interaction
				PedInteraction:Add(
					interactionId,
					GetHashKey(loc.npc or "a_m_m_business_01"),
					vector3(coords[1], coords[2], coords[3]),
					coords[4],
					25.0,
					{ menu },
					loc.icon or "shop"
				)

				-- Add blip once for each tlocation (or just first time if preferred)
				if shopData.blip then
					local blipId = string.format("inventory_shop_%s_%s", inventoryId, i)
					Blips:Add(
						blipId,
						shopName,
						vector3(coords[1], coords[2], coords[3]),
						shopData.blip.id or shopData.blip.sprite or 59,
						shopData.blip.colour or 69,
						shopData.blip.scale or 0.6
					)
				end
			end
		end
	end
end)

AddEventHandler("Shop:Client:OpenShop", function(obj, data)
	client.openInventory("MythicShop", data)
end)

return {
	refreshShops = refreshShops,
	wipeShops = wipeShops,
}