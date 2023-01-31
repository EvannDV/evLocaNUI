ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('ev:CheckPriceB')
AddEventHandler('ev:CheckPriceB', function()
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local sous = xPlayer.getMoney()
    if sous >= 50 then
        xPlayer.removeMoney(50)
        TriggerClientEvent('ev:Blista', source)
    else
        TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent !")
    end
end)



RegisterNetEvent('ev:CheckPriceF')
AddEventHandler('ev:CheckPriceF', function()
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local sous = xPlayer.getMoney()
    if sous >= 25 then
        xPlayer.removeMoney(25)
        TriggerClientEvent('ev:Faggio', source)
    else
        TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent !")
    end
end)