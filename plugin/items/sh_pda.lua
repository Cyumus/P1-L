--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

ITEM = Clockwork.item:New();
ITEM.name = "PDA Combine";
ITEM.cost = 100;
ITEM.model = "models/props_combine/combine_intmonitor003.mdl";
ITEM.weight = 0;
ITEM.business = false;
ITEM.description = "Una PDA utilizada por la Alianza.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	if (Schema:PlayerIsCombine(player)) then
		Clockwork.datastream:Start(player, "DrawPDA", PLUGIN.combineObjectives);
	end
end;


-- Called when a player drops the item.
function ITEM:OnDrop(player, position) return false end;

ITEM:Register();