local prefix = "|cffffff00[HideClassHallButton]|r "

-- Simple hiding the button is not enough. It gets visible again after a little
-- time. Even the event PLAYER_ENTERING_WORLD is too early. So we install a
-- OnShow-Handler that immediately hides the button.

GarrisonLandingPageMinimapButton:SetScript("OnShow",
	function(self, event, ...)
		GarrisonLandingPageMinimapButton:Hide()
		print(prefix .. "Button hidden")
	end)
GarrisonLandingPageMinimapButton:Hide()

print(prefix .. "started")
