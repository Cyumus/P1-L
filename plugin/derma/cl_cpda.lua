local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

local PANEL = {}

Clockwork.datastream:Hook("DrawPDA", function(dataob)

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

surface.CreateFont("FrameDP", {
font = "Couture",
size = 30,
weight = 500,
antialias = true,
shadow = false
} )

function PANEL:vgui.create("Menu", panel)
	self:SetSize(380, 720);
	self:SetPos(center);
	self:SetBackgroudColor(255,255,255);
	self:SetTitle("Combine PDA");
end

local Button1 = vgui.Create( "DButton" )	
	Button1:SetFont( "FrameDP" )		
	Button1:SetText = ("")
	Button1:SetPos( 20 , 50 )				
	Button1:SetSize( 100, 50 )				
	Button1.DoClick = function()			
	local Frame1 = vgui.Create("")
end


