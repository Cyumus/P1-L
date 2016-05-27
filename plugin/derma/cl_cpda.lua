local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

local PANEL = {}

function PANEL:Init()
  self:SetBackgroundBlur(true);
	self:SetDeleteOnClose(false);

	-- Called when the button is clicked.
	function self.btnClose.DoClick(button)
		self:Close();
		self:Remove();

		gui.EnableScreenClicker(false);
	end;
end;

local frame = vgui.Create( "DFrame" ) -- Create a container for everything
frame:SetSize( 800, 600 )
frame:SetTitle( "Combine PDA" )
frame:Center()
frame:MakePopup()

local window = vgui.Create( "DHTML", frame ) -- Our DHTML window
window:SetSize( 750, 500 )
window:Center()

local ctrls = vgui.Create( "DHTMLControls", frame ) -- Navigation controls
ctrls:SetWide( 750 )
ctrls:SetPos( 25, 40 )
ctrls:SetHTML( window ) -- Links the controls to the DHTML window
ctrls.AddressBar:SetText( "http://treballdereserca.xenomorfius.xyz" ) -- Address bar isn't updated automatically

window:MoveBelow( ctrls ) -- Align the window to sit below the controls
window:OpenURL( "http://treballdereserca.xenomorfius.xyz" )


