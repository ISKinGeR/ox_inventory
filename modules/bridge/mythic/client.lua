_CacheMythic = {}
_Ready = false
AddEventHandler("Inventory:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Callbacks = exports["mythic-base"]:FetchComponent("Callbacks")
	Inventory = exports["mythic-base"]:FetchComponent("Inventory")
	Utils = exports["mythic-base"]:FetchComponent("Utils")
	Notification = exports["mythic-base"]:FetchComponent("Notification")
	Action = exports["mythic-base"]:FetchComponent("Action")
	Keybinds = exports["mythic-base"]:FetchComponent("Keybinds")
	Animations = exports["mythic-base"]:FetchComponent("Animations")
	Progress = exports["mythic-base"]:FetchComponent("Progress")
	Crafting = exports["mythic-base"]:FetchComponent("Crafting")
	Interaction = exports["mythic-base"]:FetchComponent("Interaction")
	Targeting = exports["mythic-base"]:FetchComponent("Targeting")
	UISounds = exports["mythic-base"]:FetchComponent("UISounds")
	Blips = exports["mythic-base"]:FetchComponent("Blips")
	PedInteraction = exports["mythic-base"]:FetchComponent("PedInteraction")
	Polyzone = exports["mythic-base"]:FetchComponent("Polyzone")
	Hud = exports["mythic-base"]:FetchComponent("Hud")
	Phone = exports["mythic-base"]:FetchComponent("Phone")
	Jobs = exports["mythic-base"]:FetchComponent("Jobs")
	Reputation = exports["mythic-base"]:FetchComponent("Reputation")
	Vehicles = exports["mythic-base"]:FetchComponent("Vehicles")
	Sounds = exports["mythic-base"]:FetchComponent("Sounds")
	ListMenu = exports["mythic-base"]:FetchComponent("ListMenu")

	--Weapons = exports['mythic-base']:FetchComponent('Weapons')
    _Ready = true
end

AddEventHandler("Core:Shared:Ready", function()
	exports["mythic-base"]:RequestDependencies("Inventory", {
		"Callbacks",
		"Inventory",
		"Utils",
		"Notification",
		"Action",
		"Animations",
		"Progress",
		"Crafting",
		"Interaction",
		"Targeting",
		"UISounds",
		"Blips",
		"PedInteraction",
		"Polyzone",
		"Hud",
		"Phone",
		"Jobs",
		"Reputation",
		"Vehicles",
		"Sounds",
		"ListMenu",
		--'Weapons',
	}, function(error)
		if #error > 0 then
			return
		end
		RetrieveComponents()
    end)
end)


AddEventHandler("Characters:Client:Updated", function(key)
	if key == "Cash" then
		TriggerServerEvent('Inventory:Cash', key)
	end
end)


function client.setPlayerStatus(values)
    -- TODO MYTHIC:

end

RegisterNetEvent('Characters:Client:Logout')
AddEventHandler('Characters:Client:Logout', function()
    client.onLogout()
	_CacheMythic._inInvPoly = nil
end)

RegisterNetEvent("Inventory:Client:PolyZonesFromState", function(_polyInvs)
    for _, zoneId in ipairs(_polyInvs) do
        local data = GlobalState[string.format("Inventory:%s", zoneId)]

        if data then
            if not data.data then
                data.data = {}
            end

            data.data.isInventory = true

            -- Assign group access using business name
            if data.data.business then
                data.data.groups = { [data.data.business] = 0 }
            end

            if data.type == "box" then
                Polyzone.Create:Box(data.id, data.coords, data.length, data.width, data.options, data.data)
            elseif data.type == "poly" then
                Polyzone.Create:Poly(data.id, data.points, data.options, data.data)
            elseif data.type == "circle" then
                Polyzone.Create:Circle(data.id, data.coords, data.radius, data.options, data.data)
            else
                print(('[PolyZone] Unknown type for zone "%s": %s'):format(zoneId, data.type))
            end
        else
            print(('[PolyZone] No GlobalState found for zone "%s"'):format(zoneId))
        end
    end
end)

AddEventHandler("Polyzone:Enter", function(id, testedPoint, insideZones, data)
    local stateKey = string.format("Inventory:%s", id)
    local isInventoryZone = GlobalState[stateKey] ~= nil

    if isInventoryZone then
        LocalPlayer.state:set("_inInvPoly", data, true)
        _CacheMythic._inInvPoly = data
        print(("Entered inventory polyzone: %s"):format(id))
    end
end)

AddEventHandler("Polyzone:Exit", function(id, testedPoint, insideZones, data)
    local stateKey = string.format("Inventory:%s", id)
    local isInventoryZone = GlobalState[stateKey] ~= nil

    if LocalPlayer.state.loggedIn and isInventoryZone then
        LocalPlayer.state:set("_inInvPoly", nil, true)
        _CacheMythic._inInvPoly = nil
        print(("Exited inventory polyzone: %s"):format(id))
    end
end)

