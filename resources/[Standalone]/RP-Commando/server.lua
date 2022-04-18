--------------------------------- RP - Commands ----------------------------------
-- Need Support? Join my Modifications discord: https://discord.gg/kSCgxB3Ucz


-- Do not change anything unless you know what your doing -- 
-- Do not change anything unless you know what your doing -- 


-------------------------------------------------------

RegisterCommand("ooc", function(source, args, message, raw) 
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, '^9 OOC | ^0' ..  GetPlayerName(source) .. config.returnchatcolor .. " ", {128, 128, 128}, message)
end)

RegisterCommand("looc", function(source, args, raw) 
    TriggerClientEvent('sendProxMsgM', -1,  GetPlayerName(source) .. config.returnchatcolor .. ": ", {128, 128, 128}, table.concat(args, " "))
end)

RegisterCommand("twt", function(source, args, message, raw) 
    if #args <= 0 then return end
    local message2 = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, '^4^* Twitter | ^4(@' ..  GetPlayerName(source) ..") | ^4 ".. config.returnchatcolor .. " ", {128, 128, 128}, message2) -- THis is the Twt line just edit the ` ") | ^4 " part for config
end)

RegisterCommand("gme", function(source, args, message, raw) 
    if #args <= 0 then return end
    local message3 = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, '^4 Global Action | ^0' ..  GetPlayerName(source) .." ".. config.returnchatcolor .. " ", {128, 128, 128}, message3)
end)

RegisterCommand("anontwt", function(source, args, message, raw) 
    if #args <= 0 then return end
    local message6 = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, '^4^* Twitter | ^4(^*@ANONYMOUS) ^r )' .. config.returnchatcolor .. " ",  {128, 128, 128}, message6)
end)

RegisterCommand("advert", function(source, args, message, raw) 
    if #args <= 0 then return end
    local message7 = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, '^0^*[^3^*Local Advertisement^0^*] ^r^* | ^r^*' .. config.returnchatcolor .. " ",  {128, 128, 128}, message7)
end)

RegisterCommand("ad", function(source, args, message, raw) 
    if #args <= 0 then return end
    local message8 = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, '^0^*[^3^*Local Advertisement^0^*] ^r^* | ^r^*' .. config.returnchatcolor .. " ",  {128, 128, 128}, message8)
end)

RegisterCommand("discord", function(source, args, message) 
    TriggerClientEvent('chatMessage', source, " ".. config.discordlink)
end)

RegisterCommand("cad", function(source, args, message, raw) 
    TriggerClientEvent('chatMessage', source, " ".. config.activecadlink)
end)

RegisterCommand("website", function(source, args, message, raw) 
    TriggerClientEvent('chatMessage', source, " ".. config.websitelink)
end)

local function TableToString(tab)
	local str = ""
	for i = 1, #tab do
		str = str .. " " .. tab[i]
	end
	return str
end

RegisterCommand("me", function(source, args)
    local text = "~b~*" .. TableToString(args) .. " *"
    TriggerClientEvent('3dme:shareDisplay', -1, text, source)
end)