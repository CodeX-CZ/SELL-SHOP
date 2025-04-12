ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('sellshop:reqLoc', function()
    local _source = source
    TriggerClientEvent('sellshop:sendLoc', _source, SVConfig.SellShops)
end)

lib.callback.register('ws_sellshop:sellItem', function(source, data)
    if exports.ox_inventory:GetItem(source, data.item, nil, true) < data.quantity then
        return false
    else
        local profit = math.floor(data.price * data.quantity)
        exports.ox_inventory:RemoveItem(source, data.item, data.quantity)
        exports.ox_inventory:AddItem(source, 'cash', profit)
        exports['8bit_core']:sendToDiscord({
            webhook = 'https://discord.com/api/webhooks/1134447011014377594/fe-wy00T-p9CxZdhn-E0x3Oah8xJKEHFASlprbo-quY8vd4m-IdwRDOdUz5mYTDHPtt8',
            name = 'Sellshop',
            title = 'Hráč prodal itemy',
            desc = '`Item:` **' .. data.item .. '**\n `Množství:` **' .. data.quantity .. 'x**\n`Profit:` **$' .. profit .. '**',
            color = '0'
        }, source)
        return profit
    end
end)
