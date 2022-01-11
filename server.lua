local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-vineyard:server:getGrapes', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("grape", Config.GrapeAmount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grape'], "add")
end)

RegisterNetEvent('qb-vineyard:server:loadIngredients', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grape = xPlayer.Functions.GetItemByName('grapejuice')
	if xPlayer.PlayerData.items ~= nil then
        if grape ~= nil then
            if grape.amount >= 23 then
                xPlayer.Functions.RemoveItem("grapejuice", 23, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "remove")
                TriggerClientEvent("qb-vineyard:client:loadIngredients", source)
            else
                TriggerClientEvent('QBCore:Notify', source, Lang:t("error.invalid_items"), 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, Lang:t("error.invalid_items"), 'error')
        end
	else
		TriggerClientEvent('QBCore:Notify', source, Lang:t("error.no_items"), "error")
	end
end)

RegisterNetEvent('qb-vineyard:server:grapeJuice', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grape = xPlayer.Functions.GetItemByName('grape')
	if xPlayer.PlayerData.items ~= nil then
        if grape ~= nil then
            if grape.amount >= 16 then
                xPlayer.Functions.RemoveItem("grape", 16, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grape'], "remove")
                TriggerClientEvent("qb-vineyard:client:grapeJuice", source)
            else
                TriggerClientEvent('QBCore:Notify', source, Lang:t("error.invalid_items"), 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, Lang:t("error.invalid_items"), 'error')
        end
	else
		TriggerClientEvent('QBCore:Notify', source, Lang:t("error.no_items"), "error")
	end
end)

RegisterNetEvent('qb-vineyard:server:receiveWine', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	xPlayer.Functions.AddItem("wine", Config.WineAmount, false)
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], "add")
end)

RegisterNetEvent('qb-vineyard:server:receiveGrapeJuice', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	xPlayer.Functions.AddItem("grapejuice", Config.GrapeJuiceAmount, false)
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "add")
end)
