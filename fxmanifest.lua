fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'CodeX sell shop'
version '1.0.1'

client_scripts {
  'client/*.lua'
}

server_scripts {
  'sv_config.lua',
  'server/*.lua'
}

shared_scripts {
  '@ox_lib/init.lua',
  'config.lua'
}

dependencies {
  'es_extended',
  'qtarget',
  'ox_lib'
}
