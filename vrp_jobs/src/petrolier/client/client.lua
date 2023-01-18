local inRange = false

CreateThread(function()
    while true do
        Wait(1)
        local pos = GetEntityCoords(PlayerPedId())
        if #(pos - vector3(1265.9926757812,-2342.189453125,50.813217163086)) <= 2.0 then
            Wait(10)
        inRange = true
        exports['vrp_textui']:Open('Apasa [E] pentru a deschide valva ', 'darkblue', 'left') 
        if IsControlJustPressed(0, 46) then
            Citizen.Wait(10)
            SetDisplay(not display)
        end
        else
            exports['vrp_textui']:Close()
        end
        if not inRange then
            Wait(2500)
        end
    end
end)

RegisterNUICallback("exit", function()
    Citizen.Wait(10)
    SetDisplay(false)
end)

