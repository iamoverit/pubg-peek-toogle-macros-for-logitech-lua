EnablePrimaryMouseButtonEvents(true)
buttonPressed = false

function OnEvent(event, arg)
	if (event == "MOUSE_BUTTON_PRESSED" and (arg == 8 or arg == 7)) then
		if(buttonPressed) then
			buttonPressed = not buttonPressed
			ReleaseKey(17)
			ReleaseKey(19)
		else
			buttonPressed = not buttonPressed
			btn = (arg == 8) and 17 or 19
			PressKey(btn)
		end
	end
end