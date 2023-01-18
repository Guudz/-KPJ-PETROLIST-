local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP")

RegisterServerEvent('petrol:givejob')
AddEventHandler('petrol:givejob', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, 'Petrolist'}) then
        TriggerClientEvent('petrol:hasjob', source)
    else
        vRPclient.notify(player,{"Nu ai job-ul"})
    end
end)

RegisterServerEvent('petrol:takejob')
AddEventHandler('petrol:takejob', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    TriggerClientEvent("raid_clothes:incarcaHainele", player)
end)