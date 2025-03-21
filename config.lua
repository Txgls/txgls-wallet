Config = {}

Config.WalletItem = {
    name = 'wallet',          -- Item name (must match the item in ox_inventory/data/items.lua).
    label = 'Wallet',         -- Item label.
}

-- Wallet stash settings
Config.WalletStash = {
    slots = 5,                -- Number of slots in the wallet.
    weight = 100,             -- Maximum weight the wallet can hold (keep small).
    label = "Wallet"          -- Label for the stash.
}

return Config
