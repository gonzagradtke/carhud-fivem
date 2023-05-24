CreateThread(function()
    local status = {}
    while (true) do
        status.fuel = IsPedInAnyVehicle(PlayerPedId()) and GetVehicleFuelLevel(GetVehiclePedIsIn(PlayerPedId(), false)) or 0
        status.gears = IsPedInAnyVehicle(PlayerPedId()) and GetVehicleCurrentGear(GetVehiclePedIsIn(PlayerPedId(), false)) or 0
        status.speed = IsPedInAnyVehicle(PlayerPedId()) and GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false)) * 3.6 or 0

        SendNUIMessage({
            type = 'update',
            status = status,
            show = IsPedInAnyVehicle(PlayerPedId()),
        })

        Wait(IsPedInAnyVehicle(PlayerPedId()) and 150 or 1000)
    end
end)