SlashCmdList["FRAME"] = function() print(GetMouseFocus():GetName()) end
SLASH_FRAME1 = "/gn"
SLASH_FRAME2 = "/frame"

SlashCmdList["GETPARENT"] = function() print(GetMouseFocus():GetParent():GetName()) end
SLASH_GETPARENT1 = "/gp"
SLASH_GETPARENT2 = "/parent"

SlashCmdList["RELOADUI"] = function() ReloadUI() end
SLASH_RELOADUI1 = "/rl"
SLASH_RELOADUI2 = "/кд"
SLASH_RELOADUI3 = "/пи"

SlashCmdList["RCSLASH"] = function() DoReadyCheck() end
SLASH_RCSLASH1 = "/rc"
SLASH_RCSLASH2 = "/кс"
SLASH_RCSLASH2 = "/рч"
SLASH_RCSLASH2 = "/пг"

SlashCmdList["TICKET"] = function() ToggleHelpFrame() end
SLASH_TICKET1 = "/ticket"
SLASH_TICKET2 = "/gm"
SLASH_TICKET3 = "/гм"

--[[ Set oRA2 tanks! ]]
SLASH_SETORATANK1 = "/oramt"
SLASH_SETORATANK2 = "/setmt"
SLASH_SETORATANK3 = "/omt"
SLASH_SETORATANK4 = "/щкфье"
SlashCmdList["SETORATANK"] = function(msg)
    local a, b = strsplit(" ", msg)
    if(type(tonumber(a))=="number" and b) then
        SendAddonMessage("oRA", "SET " .. a .. " " .. b, "RAID")
    elseif(a=="remove" or a=="сдуфк" and b) then
        SendAddonMessage("oRA", "R "..b, "RAID")
    else
        print("|cff00ffffaSettings|r: how to set oRA2 tanks.\n/oramt |cff00ffffindex |cff00ff00name|r - set a player with |cff00ff00name|r as tank. Index must be a number (1-10).\n/oramt |cff00ffffremove |cff00ff00name|r - remove a tank.")
    end
end

--[[ Raid Disband ]]--
SlashCmdList["RADISBAND"] = function()
	local pName = UnitName("player")
	for i = 1, GetNumRaidMembers() do 
		local name = GetRaidRosterInfo(i) 
		if name ~= pName then 
			UninviteUnit(name) 
		end 
	end 
	LeaveParty()
end
SLASH_RADISBAND1 = "/radisband"