function startUI(time, text, stop)
	if not stop then
		SendNUIMessage({
			type = "ui",
			display = true,
			time = time,
			text = text
		})
	else
		SendNUIMessage({
			type = "ui",
			display = false,
			time = 0,
			text = ""
		})
	end
end

-- example

--[[Citizen.CreateThread(function()
		while true do 
			if IsControlJustReleased(0, 38) then 

				exports['LS_Progressbar']:startUI(10000, "example")

			end
			Citizen.Wait(1)
		end
	end)	]]