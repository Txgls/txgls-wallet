local function useWalletItem()
    local hasWallet = exports.ox_inventory:Search('count', Config.WalletItem.name) > 0

    if hasWallet then
        TriggerServerEvent('wallet:useWalletItem')
    else
        exports.ox_lib:notify({
            type = 'error',
            description = 'You do not have a wallet.',
            duration = 5000
        })
    end
end

RegisterNetEvent('wallet:openWallet', function(stashId)
    exports.ox_inventory:openInventory('stash', stashId)
end)

exports('openWallet', useWalletItem)
