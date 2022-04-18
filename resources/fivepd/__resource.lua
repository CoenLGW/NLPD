resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'
description 'FivePD'

ui_page './computer/index.html'
loadscreen "./loading_screen/index.html"

files {
	'./loading_screen/bundle.js',
	'./loading_screen/index.html',
	'./callouts/*.json',
	'./callouts/**/*.json',
	'./languages/*.json',
	'./config/mdt_vehicles.json',
	'./config/disabled_callouts.json',
	'./index.html',
	"./Newtonsoft.Json.dll",
	'./MenuAPI.dll',
    './Newtonsoft.Json.dll',
	'./computer/*',
	'./computer/static/*',
	'./computer/static/css/*',
	'./computer/static/js/*',
	'./computer/static/media/*',
	'./computer/public/*',
	'./computer/public/icon/*',
	"./Newtonsoft.Json.dll",
	'./NativeUI.dll',
    './Newtonsoft.Json.dll',
    './callouts/*.dll',
	'./config/vehicles.json',
	'./config/loadouts.json',
	'./config/menu.json',
	'./config/callouts.json',
	'./config/questions.json',
	'./config/coordinates.json',
	'./config/scene_management.json',
	'./FivePD.net.dll'
}

client_scripts {
	'./FivePD_client.net.dll',
  	'./callouts/*.net.dll',
	'./callouts/**/*.net.dll',
	'./plugins/*.net.dll',
	'./plugins/**/*.net.dll'
}

server_scripts {
    './System.Net.dll',
	'./FivePD_server.net.dll'
}
clr_disable_task_scheduler 'yes'