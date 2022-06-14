CreateThread(function()
	Wait(100)
	while true do
		local PlayerPed = PlayerPedId()
		local radarEnabled = IsRadarEnabled()

		if not IsPedInAnyVehicle(PlayerPed) and radarEnabled then
			DisplayRadar(false)
		elseif IsPedInAnyVehicle(PlayerPed) and not radarEnabled then
			DisplayRadar(true)
		end

		Wait(500)
	end
end)
