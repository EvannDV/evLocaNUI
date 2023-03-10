fx_version 'adamant'

game 'gta5'



-- RageUI V2

client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua"
}

client_scripts {
    "client.lua",
    "config.lua",
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'serveur.lua',
    'config.lua',
}



ui_page {
	"html/index.html"
}

files {
	'html/index.html',
	'html/assets/js/script.js',
	'html/assets/css/style.css',
	'html/assets/css/reset.css',
}


