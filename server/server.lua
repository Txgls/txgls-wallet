local function createWalletStash(playerId, identifier)
    local stashName = "wallet_" .. identifier
    exports.ox_inventory:RegisterStash(stashName, Config.WalletStash.label, Config.WalletStash.slots, Config.WalletStash.weight, false)

    return stashName
end

RegisterNetEvent('wallet:useWalletItem')
AddEventHandler('wallet:useWalletItem', function()
    local playerId = source
    local playerIdentifier = GetPlayerIdentifier(playerId, 0)
    local stashName = "wallet_" .. playerIdentifier

    TriggerClientEvent('wallet:openWallet', playerId, stashName)
end)
