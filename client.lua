CreateThread(function()
	Wait(100)

	while true do
		local sleepThread = 500
		local PlayerPed = PlayerPedId()
		local radarEnabled = IsRadarEnabled()

		if not IsPedInAnyVehicle(PlayerPed) and radarEnabled then
			DisplayRadar(false)
		elseif IsPedInAnyVehicle(PlayerPed) and not radarEnabled then
			DisplayRadar(true)
		end

		Wait(sleepThread)
	end
end)
