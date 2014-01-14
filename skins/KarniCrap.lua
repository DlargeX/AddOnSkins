local AS = ElvUI[1]:GetModule('AddOnSkins')

if not AS:CheckAddOn('KarniCrap') then return end

local name = "KarniCrapSkin"
function AS:SkinKarniCrap()
	AS:SkinFrame(KarniCrap)
	AS:SkinFrame(KarniCrap_CategoryFrame)
	AS:SkinFrame(KarniCrap_OptionsFrame)
	AS:SkinFrame(KarniCrap_Blacklist)
	AS:SkinFrame(KarniCrap_Whitelist)
	AS:SkinFrame(KarniCrap_Inventory)
	KarniCrap_Inventory_ScrollBar:StripTextures(True)
	KarniCrapTab1:Point("BOTTOMLEFT", KarniCrap, "BOTTOMLEFT",0,-30)
	AS:SkinScrollBar(KarniCrap_Inventory_ScrollBarScrollBar)
	AS:SkinButton(KarniCrap_BtnBlacklistRemove)
	AS:SkinButton(KarniCrap_BtnWhitelistRemove)
	AS:SkinCloseButton(KarniCrapCloseButton)
	AS:SkinTab(KarniCrapTab1)
	AS:SkinTab(KarniCrapTab2)
	AS:SkinTab(KarniCrapTab3)
	AS:SkinButton(KarniCrap_InvHeader1)
	AS:SkinButton(KarniCrap_InvHeader2)
	AS:SkinButton(KarniCrap_ValueHeader)
	AS:SkinButton(KarniCrap_InvHeader4)
	AS:SkinButton(KarniCrap_BtnDestroyItem)
	AS:SkinButton(KarniCrap_BtnDestroyAllCrap)
	KarniCrapPortrait:Kill()
	AS:SkinCheckBox(KarniCrap_CBEnabled)
	AS:SkinCheckBox(KarniCrap_CBPoor)
	AS:SkinCheckBox(KarniCrap_Tab1_CBCommon)
	AS:SkinCheckBox(KarniCrap_Tab1_CBUseStackValue)
	AS:SkinCheckBox(KarniCrap_Tab1_CBEcho)
	AS:SkinCheckBox(KarniCrap_CBDestroy)
	AS:SkinCheckBox(KarniCrap_CBDestroySlots)
	AS:SkinCheckBox(KarniCrap_CBNoDestroyTradeskill)
	AS:SkinCheckBox(KarniCrap_CBDestroyGroup)
	AS:SkinCheckBox(KarniCrap_CBDestroyRaid)
	AS:SkinCheckBox(KarniCrap_Cloth_CBLinen)
	AS:SkinCheckBox(KarniCrap_Cloth_CBLinen_Never)
	AS:SkinCheckBox(KarniCrap_Cloth_CBWool)
	AS:SkinCheckBox(KarniCrap_Cloth_CBWool_Never)
	AS:SkinCheckBox(KarniCrap_Cloth_CBSilk)
	AS:SkinCheckBox(KarniCrap_Cloth_CBSilk_Never)
	AS:SkinCheckBox(KarniCrap_Cloth_CBMageweave)
	AS:SkinCheckBox(KarniCrap_Cloth_CBMageweave_Never)
	AS:SkinCheckBox(KarniCrap_Cloth_CBRunecloth)
	AS:SkinCheckBox(KarniCrap_Cloth_CBRunecloth_Never)
	AS:SkinCheckBox(KarniCrap_Cloth_CBNetherweave)
	AS:SkinCheckBox(KarniCrap_Cloth_CBNetherweave_Never)
	AS:SkinCheckBox(KarniCrap_Cloth_CBFrostweave)
	AS:SkinCheckBox(KarniCrap_Cloth_CBFrostweave_Never)
	AS:SkinCheckBox(KarniCrap_Cloth_CBEmbersilk)
	AS:SkinCheckBox(KarniCrap_Cloth_CBEmbersilk_Never)
	AS:SkinCheckBox(KarniCrap_Corpses_CBSkinnable)
	AS:SkinCheckBox(KarniCrap_Corpses_CBGatherable)
	AS:SkinCheckBox(KarniCrap_Corpses_CBMinable)
	AS:SkinCheckBox(KarniCrap_Corpses_CBEngineerable)
	AS:SkinCheckBox(KarniCrap_Corpses_CBSkilledEnough)
	AS:SkinCheckBox(KarniCrap_Consumables_RBFood1)
	AS:SkinCheckBox(KarniCrap_Consumables_RBFood2)
	AS:SkinCheckBox(KarniCrap_Consumables_CBFoodMax)
	AS:SkinCheckBox(KarniCrap_Consumables_RBWater1)
	AS:SkinCheckBox(KarniCrap_Consumables_RBWater2)
	AS:SkinCheckBox(KarniCrap_Consumables_CBWaterMax)
	AS:SkinCheckBox(KarniCrap_Potions_RBHealth1)
	AS:SkinCheckBox(KarniCrap_Potions_RBHealth2)
	AS:SkinCheckBox(KarniCrap_Potions_CBHealthMax)
	AS:SkinCheckBox(KarniCrap_Potions_RBMana1)
	AS:SkinCheckBox(KarniCrap_Potions_RBMana2)
	AS:SkinCheckBox(KarniCrap_Potions_CBManaMax)
	AS:SkinCheckBox(KarniCrap_Quality_CBQualityPoor)
	AS:SkinCheckBox(KarniCrap_Quality_CBQualityCommon)
	AS:SkinCheckBox(KarniCrap_Quality_CBQualityUncommon)
	AS:SkinCheckBox(KarniCrap_Quality_CBQualityRare)
	AS:SkinCheckBox(KarniCrap_Quality_CBQualityEpic)
	AS:SkinCheckBox(KarniCrap_Quality_CBQualityGrouped)
	AS:SkinCheckBox(KarniCrap_Scrolls_CBMaxScrolls)
	AS:SkinCheckBox(KarniCrap_Scrolls_CBScrollAgility)
	AS:SkinCheckBox(KarniCrap_Scrolls_CBScrollIntellect)
	AS:SkinCheckBox(KarniCrap_Scrolls_CBScrollProtection)
	AS:SkinCheckBox(KarniCrap_Scrolls_CBScrollSpirit)
	AS:SkinCheckBox(KarniCrap_Scrolls_CBScrollStamina)
	AS:SkinCheckBox(KarniCrap_Scrolls_CBScrollStrength)
	AS:SkinCheckBox(KarniCrap_Tradeskills_CBCooking)
	AS:SkinCheckBox(KarniCrap_Tradeskills_CBFishing)
	AS:SkinCheckBox(KarniCrap_Tradeskills_CBPickpocketing)
	AS:SkinCheckBox(KarniCrap_Tradeskills_CBEnchanting)
	AS:SkinCheckBox(KarniCrap_Tradeskills_CBGathering)
	AS:SkinCheckBox(KarniCrap_Tradeskills_CBMilling)
	AS:SkinCheckBox(KarniCrap_Tradeskills_CBMining)
	AS:SkinCheckBox(KarniCrap_Tradeskills_CBProspecting)
	AS:SkinCheckBox(KarniCrap_Tradeskills_CBSkinning)
	AS:SkinCheckBox(KarniCrap_Inventory_CBHideQuestItems)
	AS:SkinCheckBox(KarniCrap_CBOpenAtMerchant)

	for i = 1, 15 do
		AS:SkinCloseButton(_G["KarniInvEntry"..i.."_BtnCrap"])
	end

--	AS:SkinEditBox(KarniCrap_Poor_GoldInputBox)	
--	AS:SkinEditBox(KarniCrap_Poor_SilverInputBox)
--	AS:SkinEditBox(KarniCrap_Poor_CopperInputBox)
--	AS:SkinEditBox(KarniCrap_Tab1_CBCommonDesc_GoldInputBox)
--	AS:SkinEditBox(KarniCrap_Tab1_CBCommonDesc_SilverInputBox)
--	AS:SkinEditBox(KarniCrap_Tab1_CBCommonDesc_CopperInputBox)
--	AS:SkinEditBox(KarniCrap_EBDestroySlotsNum)
end

AS:RegisterSkin(name, AS.SkinKarniCrap)