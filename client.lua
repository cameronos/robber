--Sets the function first as opposed to the command
function alert(text)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end
--Sets the concatenation as the mainRobber, prints the arguments of the /robber command to console, and displays a notification saying what the robber is in the bottom left.
RegisterCommand("robber", function(source, args)
	mainRobber = table.concat(args, " ")
	print(mainRobber)
	alert("~r~ Robber at " .. mainRobber)
end)
