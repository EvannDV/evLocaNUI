---@diagnostic disable: undefined-global
ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(900)
  end

  ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

-- Open Menu
function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end


local display = false

RegisterCommand("gqsdgqsdfqf", function(source, args)
    SetDisplay(not display)
end)

RegisterCommand("lkgkghjgfhdf", function(source, args)
    SetDisplay(display)
end)








---- Js



RegisterNUICallback('closeAll', function(data)
    ExecuteCommand('lkgkghjgfhdf')
end)


RegisterNUICallback('giveBli', function(data)
    TriggerServerEvent('ev:CheckPriceB')
end)

RegisterNUICallback('giveFaggio', function(data)
    TriggerServerEvent('ev:CheckPriceF')
end)


---- Lua pure 



RegisterNetEvent('ev:Blista')
AddEventHandler('ev:Blista', function()
    local ped = PlayerPedId()
    local model = GetHashKey("blista")
    RequestModel(model)
    while not HasModelLoaded(model) do Citizen.Wait(10) end
    local pos = GetEntityCoords(PlayerPedId())
    local vehicle = CreateVehicle(model, Config.Xveh, Config.Yveh, Config.Zveh,Config.Hveh, true, false)
    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
    ESX.ShowNotification("Vous venez de louer une blista pour ~g~50~s~ $ !")
    ExecuteCommand('lkgkghjgfhdf')
end)



RegisterNetEvent('ev:Faggio')
AddEventHandler('ev:Faggio', function()
    local ped = PlayerPedId()
    local model = GetHashKey("faggio")
    RequestModel(model)
    while not HasModelLoaded(model) do Citizen.Wait(10) end
    local pos = GetEntityCoords(PlayerPedId())
    local vehicle = CreateVehicle(model, Config.Xveh, Config.Yveh, Config.Zveh,Config.Hveh, true, false)
    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
    ESX.ShowNotification("Vous venez de louer un faggio pour ~g~25~s~ $ !")
    ExecuteCommand('lkgkghjgfhdf')
end)








Citizen.CreateThread(function()
    while true do 
        local wait = 750

                for k in pairs {vector3(Config.Xpos,Config.Ypos,Config.Zpos)} do 
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local pos = {vector3(Config.Xpos,Config.Ypos,Config.Zpos)}
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)

                if dist <= 15 then 
                    wait = 0
                    DrawMarker(6, Config.Xpos,Config.Ypos,Config.Zpos-0.99, 0.0, 0.0, 0.0, -90, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 0, 0, 170, 0, 1, 2, 0, nil, nil, 0)
                end
                if dist <= 1.0 then 
                    wait = 0

                    AddTextEntry("HELP", "Appuyez sur ~INPUT_CONTEXT~ ~s~pour accéder à la location")
                    DisplayHelpTextThisFrame("HELP", false)
                    if IsControlJustPressed(1, 51) then 
                        ExecuteCommand('gqsdgqsdfqf')
                    end
                end
            end

    Citizen.Wait(wait)
    end
end)


------------------Keyboard INPUT


KeyboardInput = function(TextEntry, ExampleText, MaxStringLenght)
    AddTextEntry('FMMC_KEY_TIP1', TextEntry) 
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
    blockinput = true

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do 
        Citizen.Wait(0)
    end
        
    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult() 
        Citizen.Wait(500) 
        blockinput = false
        return result 
    else
        Citizen.Wait(500) 
        blockinput = false 
        return nil 
    end
end





