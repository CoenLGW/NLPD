local color = config.textcolor -- Text color

RegisterCommand("dv", function()
    TriggerEvent( "JM-DeleteVehicle:deleteVehicle" )
end, false )
TriggerEvent( "chat:addSuggestion", "/dv", "Delete Vehicle" )

local distanceToCheck = 5.0
local numRetries = 5

RegisterNetEvent( "JM-DeleteVehicle:deleteVehicle" )
AddEventHandler( "JM-DeleteVehicle:deleteVehicle", function()
    local ped = PlayerPedId()

    if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
        local pos = GetEntityCoords( ped )

        if ( IsPedSittingInAnyVehicle( ped ) ) then 
            local vehicle = GetVehiclePedIsIn( ped, false )

            if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                DeleteGivenVehicle( vehicle, numRetries )
            else 
                notify("Enter the Vehicle")
            end 
        else
            local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
            local vehicle = GetVehicleInDirection( ped, pos, inFrontOfPlayer )

            if ( DoesEntityExist( vehicle ) ) then 
                DeleteGivenVehicle( vehicle, numRetries )
            else 
                notify("~r~No Vehicles Nearby")
            end 
        end 
    end 
end )

function DeleteGivenVehicle( veh, timeoutMax )
    local timeout = 0 

    SetEntityAsMissionEntity( veh, true, true )
    DeleteVehicle( veh )

    if ( DoesEntityExist( veh ) ) then
        notify("~r~There was a problem trying to Delete your Vehicle!")
        while ( DoesEntityExist( veh ) and timeout < timeoutMax ) do 
            DeleteVehicle( veh )

            if ( not DoesEntityExist( veh ) ) then 
                notify("~g~Vehicle Deleted")
            end 

            timeout = timeout + 1 
            Citizen.Wait( 500 )

            if ( DoesEntityExist( veh ) and ( timeout == timeoutMax - 1 ) ) then
                notify("~r~There was a problem trying to Delete your Vehicle")
            end 
        end 
    else 
        notify("~g~Vehicle Deleted")
    end 
end 

function GetVehicleInDirection( entFrom, coordFrom, coordTo )
	local rayHandle = StartShapeTestCapsule( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 5.0, 10, entFrom, 7 )
    local _, _, _, _, vehicle = GetShapeTestResult( rayHandle )
    
    if ( IsEntityAVehicle( vehicle ) ) then 
        return vehicle
    end 
end

TriggerEvent('chat:addSuggestion', '/dv', 'Deletes Vehicles')

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end



local pedDisplaying = {}

local function DrawText3D(coords, text)
    local camCoords = GetGameplayCamCoord()
    local dist = #(coords - camCoords)
    
    local scale = 200 / (GetGameplayCamFov() * dist)

        SetTextColour(color.r, color.g, color.b, color.a)
        SetTextScale(0.0, config.textsize * scale)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextDropShadow()
        SetTextCentre(true)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(text)
        SetDrawOrigin(coords, 0)
        EndTextCommandDisplayText(0.0, 0.0)
        ClearDrawOrigin()

    --end
end


local function Display(ped, text)

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local pedCoords = GetEntityCoords(ped)
    local dist = #(playerCoords - pedCoords)

    if dist <= config.disttodraw then

        pedDisplaying[ped] = (pedDisplaying[ped] or 1) + 1
		
        local display = true

        Citizen.CreateThread(function()
            Wait(config.displaytime)
            display = false
        end)


        local offset = 0.8 + pedDisplaying[ped] * 0.1
        while display do
            if HasEntityClearLosToEntity(playerPed, ped, 17 ) then
                local x, y, z = table.unpack(GetEntityCoords(ped))
                z = z + offset
                DrawText3D(vector3(x, y, z), text)
            end
            Wait(0)
        end

        pedDisplaying[ped] = pedDisplaying[ped] - 1

    end
end

--

RegisterNetEvent('3dme:shareDisplay')
AddEventHandler('3dme:shareDisplay', function(text, serverId)
    local player = GetPlayerFromServerId(serverId)
    if player ~= -1 then
        local ped = GetPlayerPed(player)
        Display(ped, text)
    end
end)

--


RegisterNetEvent('sendProxMsg')
AddEventHandler('sendProxMsg', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
	 TriggerEvent('chatMessage', "", {255, 0, 0}, "^9Local OOC | ^0" .. GetPlayerName(PlayerId()) .. ": ".." " .. message .. " ")
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
	 TriggerEvent('chatMessage', "", {255, 0, 0}, "^9Local OOC | ^0" .. GetPlayerName(PlayerId()) .. ": ".." " .. message .. " ")
  end
end)


RegisterNetEvent('sendProxMsgM')
AddEventHandler('sendProxMsgM', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, "^9Local OOC | ^0" .. GetPlayerName(PlayerId()) .. ": ".." " .. message .. " ")
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "", {255, 0, 0}, "^9Local OOC | ^0" .. GetPlayerName(PlayerId()) .. ": ".." " .. message .. " ")
  end
end)