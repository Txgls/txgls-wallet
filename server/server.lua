local QBCore = exports['qb-core']:GetCoreObject()

local function createWalletStash(citizenid)
    local stashName = "wallet_" .. citizenid
    exports.ox_inventory:RegisterStash(stashName, Config.WalletStash.label, Config.WalletStash.slots, Config.WalletStash.weight, false)
    return stashName
end

RegisterNetEvent('wallet:useWalletItem', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end

    local citizenid = Player.PlayerData.citizenid
    if not citizenid then return end

    local stashName = createWalletStash(citizenid)
    TriggerClientEvent('wallet:openWallet', source, stashName)
end)
