--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local PLUGIN = PLUGIN;

-- Called when an entity's menu options are needed.
function PLUGIN:GetEntityMenuOptions(entity, options)
	local class = entity:GetClass();
	
	if (class == "cw_pda") then
		options["Ver"] = "cw_pdaView";
		options["Coger"] = "cw_pdaTake";
	end;
end;
