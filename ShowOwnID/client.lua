Citizen.CreateThread(function()
    Wait(50)
    while true do
        --miid(0.670, 1.400, 1.0,1.0,0.50, "~w~Е~g~Г~r~Н".. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. '', 255, 255, 255, 255)
		 miid(0.670, 1.300, 1.0,1.0,0.50, "~w~Е~g~Г~r~Н~w~ - ".. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. '', 255, 255, 255, 255)
        Citizen.Wait(1)
    end
end)

function miid(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
	SetTextColour( 0,255,255, 255 )
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end



-- ДОБАВКА ДА ПОКАЗВА ПО-ГОЛЯМА КАРТА 

Citizen.CreateThread(function()
  local toggle = false -- Create the variable which will change
  SetRadarBigmapEnabled(toggle) -- Call the function with the variable we just created (to set it to the default we want it to be; in this case false)
  while true do
    Citizen.Wait(0)

    --if IsControlPressed(0, 21) and IsControlJustReleased(0, 20) then -- Смяна на бутоните да е с SHIFT и Z вместо само Z
    if IsControlJustReleased(0, 20) then -- Checking if it was released rather than pressed is better
      toggle = not toggle -- Invert current value of the variable (not true = false, not false = true)
      SetRadarBigmapEnabled(toggle) -- Call the function again with the same variable (which should now be inverted)
    end
  end
end)

-- КРАЙ НА ДОБАВКАТА
