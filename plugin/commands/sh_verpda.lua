local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("pda");
COMMAND.tip = "Ver la PDA Combine.";
COMMAND.flags = CMD_DEFAULT;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (Schema:PlayerIsCombine(player)) then
end
end

COMMAND:Register();
