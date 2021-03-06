--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

ITEM = Clockwork.item:New("pda_base");
ITEM.name = "PDA Combine";
ITEM.cost = 0;
ITEM.model = "models/props_combine/combine_intmonitor003.mdl";
ITEM.weight = 0;
ITEM.business = false;
ITEM.description = "Una PDA utilizada por la Alianza.";
ITEM.uniqueID = "cw_cpcpda";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	Clockwork.datastream:Start(player, "cpda", entity);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) return false end;

ITEM:Register();
