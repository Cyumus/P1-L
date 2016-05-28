--[[
	© 2016 Sell & Xeno
--]]

ITEM = Clockwork.item:New(nil, true);
ITEM.name = "PDA Base";
ITEM.weight = 0.1;
ITEM.access = "3";
ITEM.category = "Tecnologia";

-- Called when a player uses the item.
function ITEM:OnDrop(player, itemEntity)
	local trace = player:GetEyeTraceNoCursor();
	
	if (trace.HitPos:Distance( player:GetShootPos() ) <= 192) then
		local entity = ents.Create("cw_pda");
		
		Clockwork.player:GiveProperty(player, entity);
		
		entity:SetModel(self.model);
		entity:SetPda(self.uniqueID);
		entity:SetPos(trace.HitPos);
		entity:Spawn();
		
		if (IsValid(itemEntity)) then
			local physicsObject = itemEntity:GetPhysicsObject();
			
			entity:SetPos( itemEntity:GetPos() );
			entity:SetAngles( itemEntity:GetAngles() );
			
			if (IsValid(physicsObject)) then
				if (!physicsObject:IsMoveable()) then
					physicsObject = entity:GetPhysicsObject();
					
					if (IsValid(physicsObject)) then
						physicsObject:EnableMotion(false);
					end;
				end;
			end;
		else
			Clockwork.entity:MakeFlushToGround(entity, trace.HitPos, trace.HitNormal);
		end;
	else
		Clockwork.player:Notify(player, "No puedes dropear una pda por ahi!");
		
		return false;
	end;
end;

-- Called when the item should be setup.
function ITEM:OnUse(player, itemEntity)
	if ITEM.uniqueID = "cw_cpcpda"  then
	Clockwork.datastream:Start(player, "cpda", entity);
end
end;


ITEM:Register();
