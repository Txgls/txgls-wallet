fx_version 'cerulean'
game 'gta5'

author 'Txgls'
description 'A wallet script for QBCore & Ox Resources.'
version '1.0.0'

dependencies {
    'ox_inventory',
    'ox_lib'
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client.lua',
    'config.lua'
}

server_script 'server.lua'

lua54 'yes'
