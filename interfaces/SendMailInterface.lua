local edit = SendMailNameEditBox
if not edit then return end
if edit._disabled then return end
edit._disabled = true

-- Erstelle overlay, das Klicks abfängt
local block = CreateFrame("Frame", nil, edit)
block:SetAllPoints(edit)
block:EnableMouse(true)
block:Show()

block:SetScript("OnEnter", function()
    GameTooltip:SetOwner(edit, "ANCHOR_RIGHT")
    GameTooltip:AddLine("Adressfeld deaktiviert", 1, 1, 1)
    GameTooltip:AddLine("Namen per Dropdown auswählen.", 0.8, 0.8, 0.8, true)
    GameTooltip:Show()
end)
block:SetScript("OnLeave", function() GameTooltip:Hide() end)

edit._block = block

-- Falls der Nutzer per Tastatur versucht zu fokussieren: sofort Fokus entfernen
if not edit._focusHooked then
    edit:HookScript("OnEditFocusGained", function(self)
    if self._disabled then
        self:ClearFocus()
    end
    end)
    edit._focusHooked = true
end

-- opt. visuelle Dimmung
local r,g,b,a = edit:GetTextColor()
edit._savedTextColor = {r,g,b,a}
edit:SetTextColor(0.6, 0.6, 0.6)
edit:ClearFocus()
-- Erstelle das Dropdown-Widget (nutzt Blizzard UIDropDownMenuTemplate -> standard Pfeil)
local dd = CreateFrame("Button", "SendMailRecipientDropDown", SendMailNameEditBox, "UIDropDownMenuTemplate")
dd:SetPoint("LEFT", SendMailNameEditBox, "RIGHT", -12, 0)  -- rechts neben Adressfeld
UIDropDownMenu_SetWidth(dd, 8) -- schmal, damit nur der Pfeil sichtbar ist
UIDropDownMenu_JustifyText(dd, "LEFT")

-- Initialisierer: füllt Menü mit recentRecipients
UIDropDownMenu_Initialize(dd, function(self, level)
  local info = UIDropDownMenu_CreateInfo()
  for _, name in ipairs(Sauercrowd.MailRecipients) do
    info = UIDropDownMenu_CreateInfo()
    info.text = name
    info.func = function()
      SendMailNameEditBox:SetText(name)
      SendMailNameEditBox:SetFocus()
      SendMailNameEditBox:HighlightText()
    end
    info.notCheckable = true
    UIDropDownMenu_AddButton(info, level)
  end
end)