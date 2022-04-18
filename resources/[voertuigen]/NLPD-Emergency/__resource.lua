resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
files {	
	-- Meta allevoertuigen 
	'metas/**/*.meta',
	
	-- ELS
	'els/anwb.xml',
	'els/anwb1.xml',
	'els/anwb2.xml',
	'els/anwb3.xml',
	'els/anwb4.xml',
	'els/anwbamarok.xml',
	'els/anwbaudi.xml',
	'els/ANWBCADDY.xml',
	'els/ANWBHYUNDAI.xml',
	'els/anwbmotor.xml',
	'els/bearcatExtend.xml',
	'els/bearcatFolded.xml',
	'els/dsibearcat.xml',
	'els/FLATBED.xml',
	'els/pol540ium.xml',
	'els/POLAUDI2.xml',
	'els/polaudia6avun.xml',
	'els/polaudipit.xml',
	'els/polaudiq7.xml',
	'els/polaudiRS6.xml',
	'els/polbklasse2020.xml',
	'els/polbmwat.xml',
	'els/polbmwg31un.xml',
	'els/polbus.xml',
	'els/polbus2.xml',
	'els/polbus3.xml',
	'els/polbusmeflex.xml',
	'els/POLGOLF7OOV.xml',
	'els/polhilux.xml',
	'els/polhond.xml',
	'els/polhyun.xml',
	'els/polmotor.xml',
	'els/polmotor2.xml',
	'els/polmotorun.xml',
	'els/poltouran2016.xml',
	'els/poltoyota2.xml',
	'els/polvito.xml',
	'els/polvito2019.xml',
	'els/polvovun.xml',
	'els/polvwrop.xml',
	'els/polx5.xml',
	'els/polx52020.xml',
	'els/PRANGER.xml',
	'els/rr1.xml',
	'els/upolities4avant.xml',
	'els/wegenm.xml',
	'els/pola6unm.xml',
	'els/POLAUDI222.xml',
	'els/18outlander.xml',
	'els/ambu1.xml',
	'els/ambu3.xml',
	'els/ambu5.xml',
	'els/ambu6.xml',
	'els/ambu7.xml',
	'els/AMBU8.xml',
	'els/ambue.xml',
	'els/ambumicu.xml',
	'els/ambumotor.xml',
	'els/ambumotor2.xml',
	'els/ambumotor3.xml',
	'els/ambuq7.xml',
	'els/ambut6.xml',
	'els/ambutigis.xml',
	'els/ambutouran2016.xml',
	'els/ambuvito.xml',
	'els/ambuvwama.xml',
	'els/ambuxc40.xml',
	'els/ambuxc70.xml',
	'els/ambuxc90.xml',
}

-- anwb
data_file 'HANDLING_FILE' 'metas/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'metas/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'metas/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'metas/**/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'metas/**/vehiclelayouts.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'metas/**/vehiclelayouts_boxer.meta' 

is_els 'true'