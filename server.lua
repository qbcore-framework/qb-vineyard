local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-vineyard:server:getGrapes', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local amount = math.random(Config.GrapeAmount.min, Config.GrapeAmount.max)
    exports['qb-inventory']:AddItem(source, 'grape', amount, false, false, 'qb-vineyard:server:getGrapes')
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['grape'], 'add')
end)

QBCore.Functions.CreateCallback('qb-vineyard:server:loadIngredients', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local grape = Player.Functions.GetItemByName('grapejuice')
    if Player.PlayerData.items ~= nil then
        if grape ~= nil then
            if grape.amount >= 23 then
                exports['qb-inventory']:RemoveItem(src, 'grapejuice', 23, false, 'qb-vineyard:server:loadIngredients')
                TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], 'remove')
                cb(true)
            else
                TriggerClientEvent('QBCore:Notify', source, Lang:t('error.invalid_items'), 'error')
                cb(false)
            end
        else
            TriggerClientEvent('QBCore:Notify', source, Lang:t('error.invalid_items'), 'error')
            cb(false)
        end
    else
        TriggerClientEvent('QBCore:Notify', source, Lang:t('error.no_items'), 'error')
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-vineyard:server:grapeJuice', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local grape = Player.Functions.GetItemByName('grape')
    if Player.PlayerData.items ~= nil then
        if grape ~= nil then
            if grape.amount >= 16 then
                exports['qb-inventory']:RemoveItem(src, 'grape', 16, false, 'qb-vineyard:server:grapeJuice')
                TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['grape'], 'remove')
                cb(true)
            else
                TriggerClientEvent('QBCore:Notify', source, Lang:t('error.invalid_items'), 'error')
                cb(false)
            end
        else
            TriggerClientEvent('QBCore:Notify', source, Lang:t('error.invalid_items'), 'error')
            cb(false)
        end
    else
        TriggerClientEvent('QBCore:Notify', source, Lang:t('error.no_items'), 'error')
        cb(false)
    end
end)

RegisterNetEvent('qb-vineyard:server:receiveWine', function()
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local amount = math.random(Config.WineAmount.min, Config.WineAmount.max)
    exports['qb-inventory']:AddItem(source, 'wine', amount, false, false, 'qb-vineyard:server:receiveWine')
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], 'add')
end)

RegisterNetEvent('qb-vineyard:server:receiveGrapeJuice', function()
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local amount = math.random(Config.GrapeJuiceAmount.min, Config.GrapeJuiceAmount.max)
    exports['qb-inventory']:AddItem(source, 'grapejuice', amount, false, false, 'qb-vineyard:server:receiveGrapeJuice')
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], 'add')
end)
