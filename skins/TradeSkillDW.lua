local AS = ElvUI[1]:GetModule('AddOnSkins')

if not AS:CheckAddOn('TradeSkillDW') then return end

local name = "TradeSkillDWSkin"
function AS:SkinTradeSkillDW()
	AS:SkinFrame(TradeSkillFrame)
	TradeSkillListScrollFrame:StripTextures(True)
	TradeSkillDetailScrollFrame:StripTextures(True)
	TradeSkillFrameInset:StripTextures(True)
	TradeSkillExpandButtonFrame:StripTextures(True)
	TradeSkillDetailScrollChildFrame:StripTextures(True)
	TradeSkillListScrollFrame:StripTextures(True)
	AS:SkinFrame(TradeSkillGuildFrame)
	AS:SkinFrame(TradeSkillGuildFrameContainer)
	TradeSkillGuildFrame:Point("BOTTOMLEFT", TradeSkillFrame, "BOTTOMRIGHT", 3, 19)
	AS:SkinCloseButton(TradeSkillGuildFrameCloseButton)
	TradeSkillFrame:HookScript("OnShow", function() AS:SkinFrame(TradeSkillFrame) TradeSkillListScrollFrame:StripTextures() if not TradeSkillDWExpandButton then return end if not TradeSkillDWExpandButton.skinned then AS:SkinNextPrevButton(TradeSkillDWExpandButton) TradeSkillDWExpandButton.skinned = true end end)
	TradeSkillFrame:Height(TradeSkillFrame:GetHeight() + 12)
	AS:SkinStatusBar(TradeSkillRankFrame)
	AS:SkinButton(TradeSkillCreateButton, true)
	AS:SkinButton(TradeSkillCancelButton, true)
	AS:SkinButton(TradeSkillFilterButton, true)
	AS:SkinButton(TradeSkillCreateAllButton, true)
	AS:SkinButton(TradeSkillViewGuildCraftersButton, true)
	TradeSkillLinkButton:GetNormalTexture():SetTexCoord(0.25, 0.7, 0.37, 0.75)
	TradeSkillLinkButton:GetPushedTexture():SetTexCoord(0.25, 0.7, 0.45, 0.8)
	TradeSkillLinkButton:GetHighlightTexture():Kill()
	AS:SkinBackdropFrame(TradeSkillLinkButton)
	TradeSkillLinkButton:Size(17, 14)
	TradeSkillLinkButton:Point("LEFT", TradeSkillLinkFrame, "LEFT", 5, -1)
	AS:SkinEditBox(TradeSkillFrameSearchBox)
	AS:SkinEditBox(TradeSkillInputBox)
	--AS:SkinNextPrevButton(TradeSkillDecrementButton)
	--AS:SkinNextPrevButton(TradeSkillIncrementButton)
	TradeSkillIncrementButton:Point("RIGHT", TradeSkillCreateButton, "LEFT", -13, 0)
	AS:SkinCloseButton(TradeSkillFrameCloseButton)
	AS:SkinScrollBar(TradeSkillDetailScrollFrameScrollBar)
	--AS:SkinScrollBar(TradeSkillListScrollFrameScrollBar)
	local once = false
	hooksecurefunc("TradeSkillFrame_SetSelection", function(id)
		TradeSkillSkillIcon:StyleButton()
		if TradeSkillSkillIcon:GetNormalTexture() then
			AS:SkinTexture(TradeSkillSkillIcon:GetNormalTexture())
			TradeSkillSkillIcon:GetNormalTexture():ClearAllPoints()
			TradeSkillSkillIcon:GetNormalTexture():Point("TOPLEFT", 2, -2)
			TradeSkillSkillIcon:GetNormalTexture():Point("BOTTOMRIGHT", -2, 2)
		end
		TradeSkillSkillIcon:SetTemplate("Default")
		for i = 1, MAX_TRADE_SKILL_REAGENTS do
			local button = _G["TradeSkillReagent"..i]
			local icon = _G["TradeSkillReagent"..i.."IconTexture"]
			local count = _G["TradeSkillReagent"..i.."Count"]
			AS:SkinTexture(icon)
			icon:SetDrawLayer("OVERLAY")
			if not icon.backdrop then
				icon.backdrop = CreateFrame("Frame", nil, button)
				icon.backdrop:SetFrameLevel(button:GetFrameLevel() - 1)
				AS:SkinFrame(icon.backdrop)
				icon.backdrop:Point("TOPLEFT", icon, "TOPLEFT", -2, 2)
				icon.backdrop:Point("BOTTOMRIGHT", icon, "BOTTOMRIGHT", 2, -2)
			end
			icon:SetParent(icon.backdrop)
			count:SetParent(icon.backdrop)
			count:SetDrawLayer("OVERLAY")
			if i > 2 and once == false then
				local point, anchoredto, point2, x, y = button:GetPoint()
				button:ClearAllPoints()
				button:Point(point, anchoredto, point2, x, y - 3)
				once = true
			end
			_G["TradeSkillReagent"..i.."NameFrame"]:Kill()
		end
	end)
	TradeSkillDW_QueueFrame:HookScript("OnShow", function() AS:SkinFrame(TradeSkillDW_QueueFrame) end)
	AS:SkinCloseButton(TradeSkillDW_QueueFrameCloseButton)
	TradeSkillDW_QueueFrameInset:StripTextures()
	AS:SkinButton(TradeSkillDW_QueueFrameClear, true)
	AS:SkinButton(TradeSkillDW_QueueFrameDown, true)
	AS:SkinButton(TradeSkillDW_QueueFrameUp, true)
	AS:SkinButton(TradeSkillDW_QueueFrameDo, true)
	TradeSkillDW_QueueFrameDetailScrollFrame:StripTextures()
	TradeSkillDW_QueueFrameDetailScrollFrameChildFrame:StripTextures()
	TradeSkillDW_QueueFrameDetailScrollFrameChildFrameReagent1:StripTextures()
	TradeSkillDW_QueueFrameDetailScrollFrameChildFrameReagent2:StripTextures()
	TradeSkillDW_QueueFrameDetailScrollFrameChildFrameReagent3:StripTextures()
	TradeSkillDW_QueueFrameDetailScrollFrameChildFrameReagent4:StripTextures()
	TradeSkillDW_QueueFrameDetailScrollFrameChildFrameReagent5:StripTextures()
	TradeSkillDW_QueueFrameDetailScrollFrameChildFrameReagent6:StripTextures()
	TradeSkillDW_QueueFrameDetailScrollFrameChildFrameReagent7:StripTextures()
	TradeSkillDW_QueueFrameDetailScrollFrameChildFrameReagent8:StripTextures()
	AS:SkinScrollBar(TradeSkillDW_QueueFrameDetailScrollFrameScrollBar)
	TradeSkillListScrollFrame:StripTextures()
end

AS:RegisterSkin(name, AS.SkinTradeSkillDW)