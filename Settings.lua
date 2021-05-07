--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--				Copyright 2017-2021 Dylan Fortune (Crieve-Sargeras)           --
--------------------------------------------------------------------------------
local app = select(2, ...);
local L = app.L;

-- Binding Localizations
BINDING_HEADER_ATTC = L["TITLE"];
BINDING_NAME_ATTC_TOGGLEACCOUNTMODE = L["TOGGLE_ACCOUNT_MODE"];
BINDING_NAME_ATTC_TOGGLEDEBUGMODE = L["TOGGLE_DEBUG_MODE"];
BINDING_NAME_ATTC_TOGGLEFACTIONMODE = L["TOGGLE_FACTION_MODE"];

BINDING_HEADER_ATTC_PREFERENCES = L["PREFERENCES"];
BINDING_NAME_ATTC_TOGGLECOMPLETEDTHINGS = L["TOGGLE_COMPLETEDTHINGS"];
BINDING_NAME_ATTC_TOGGLECOMPLETEDGROUPS = L["TOGGLE_COMPLETEDGROUPS"];
BINDING_NAME_ATTC_TOGGLECOLLECTEDTHINGS = L["TOGGLE_COLLECTEDTHINGS"];
BINDING_NAME_ATTC_TOGGLEBOEITEMS = L["TOGGLE_BOEITEMS"];
BINDING_NAME_ATTC_TOGGLESOURCETEXT = L["TOGGLE_SOURCETEXT"];

BINDING_HEADER_ATTC_MODULES = L["MODULES"];
BINDING_NAME_ATTC_TOGGLEMAINLIST = L["TOGGLE_MAINLIST"];
BINDING_NAME_ATTC_TOGGLEMINILIST = L["TOGGLE_MINILIST"];
BINDING_NAME_ATTC_TOGGLE_PROFESSION_LIST = L["TOGGLE_PROFESSION_LIST"];
BINDING_NAME_ATTC_TOGGLE_RAID_ASSISTANT = L["TOGGLE_RAID_ASSISTANT"];
BINDING_NAME_ATTC_TOGGLERANDOM = L["TOGGLE_RANDOM"];
BINDING_NAME_ATTC_REROLL_RANDOM = L["REROLL_RANDOM"];

-- The Settings Frame
local settings = CreateFrame("FRAME", app:GetName() .. "-Settings", InterfaceOptionsFramePanelContainer or UIParent, BackdropTemplateMixin and "BackdropTemplate");
app.Settings = settings;
settings.name = app:GetName();
settings.MostRecentTab = nil;
settings:Hide();
settings.Tabs = {};
settings:SetBackdrop({
	bgFile = "Interface/RAIDFRAME/UI-RaidFrame-GroupBg",
	edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
	tile = false, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
});
settings:SetBackdropColor(0, 0, 0, 1);
InterfaceOptions_AddCategory(settings);
settings.Open = function(self)
	-- Open the Options menu.
	if InterfaceOptionsFrame:IsVisible() then
		InterfaceOptionsFrame_Show();
	else
		InterfaceOptionsFrame_OpenToCategory(self.name);
		InterfaceOptionsFrame_OpenToCategory(self.name);
	end
end
settings:SetScript("OnShow", function(self)
	self:Refresh();
end);

-- Music / Sound Management (You can add your own sounds for this if you want.)
settings.AUDIO_COMPLETE_TABLE = {
	app.asset("complete1.ogg"),
};
settings.AUDIO_DEATH_TABLE = {
	app.asset("death.ogg"),
};
settings.AUDIO_FANFARE_TABLE = {
	app.asset("fanfare1.ogg"),
	app.asset("fanfare2.ogg"),
	app.asset("fanfare3.ogg"),
	app.asset("fanfare4.ogg"),
	app.asset("fanfare5.ogg"),
	app.asset("fanfare6.ogg"),
};
settings.AUDIO_RAREFIND_TABLE = {
	app.asset("rarefind1.ogg"),
};
settings.AUDIO_REMOVE_TABLE = {
	app.asset("remove1.ogg"),
};

-- Settings Class
local GeneralSettingsBase = {
	__index = {
		["AccountMode"] = false,
		["DebugMode"] = false,
		["FactionMode"] = false,
		["AccountWide:Deaths"] = true,
		["AccountWide:Exploration"] = false,
		["AccountWide:FlightPaths"] = true,
		["AccountWide:PVPRanks"] = false,
		["AccountWide:Quests"] = false,
		["AccountWide:Recipes"] = true,
		["AccountWide:Reputations"] = true,
		["Thing:Deaths"] = true,
		["Thing:Exploration"] = true,
		["Thing:FlightPaths"] = true,
		["Thing:Loot"] = false,
		["Thing:PVPRanks"] = false,
		["Thing:Quests"] = true,
		["Thing:Recipes"] = true,
		["Thing:Reputations"] = true,
		["Show:CompletedGroups"] = false,
		["Show:CollectedThings"] = false,
	},
};
local FilterSettingsBase = {
	__index = {

	},
};
local TooltipSettingsBase = {
	__index = {
		["Auto:MiniList"] = true,
		["Auto:ProfessionList"] = true,
		["Celebrate"] = true,
		["Channel"] = "master",
		["ClassRequirements"] = true,
		["Coordinates"] = true,
		["Descriptions"] = true,
		["DisplayInCombat"] = true,
		["Enabled"] = true,
		["KnownBy"] = true,
		["Locations"] = 5,
		["MainListScale"] = 1,
		["MiniListScale"] = 1,
		["MinimapButton"] = true,
		["MinimapSize"] = 36,
		["MinimapStyle"] = false,
		["Models"] = true,
		["Objectives"] = true,
		["PlayDeathSound"] = false,
		["Precision"] = 2,
		["Progress"] = true,
		["QuestGivers"] = true,
		["RaceRequirements"] = true,
		["Report:Collected"] = true,
		["Report:CompletedQuests"] = false,
		["ShowIconOnly"] = false,
		["Show:CraftedItems"] = false,
		["Show:OtherCharacterQuests"] = false,
		["Show:Recipes"] = false,
		["Show:Remaining"] = false,
		["Show:SpellRanks"] = true,
		["SoftReserves"] = true,
		["SoftReservePersistence"] = false,
		["SourceLocations"] = true,
		["SourceLocations:Completed"] = true,
		["SourceLocations:Creatures"] = true,
		["SourceLocations:Things"] = true,
		["SummarizeThings"] = true,
		["Warn:Removed"] = true,
	},
};
local UnobtainableSettingsBase = {
	__index = {
		[1] = false,	-- Never Implemented
		[2] = false,	-- Removed From Game
		[3] = false,	-- Future Releases [TODO: Convert these, you dummy!]

		-- Future Content Releases
		[11] = 2,		-- Phase 1
		[1101] = true,	-- Dire Maul
		[12] = true,	-- Phase 2
		[13] = true,	-- Phase 3
		[14] = true,	-- Phase 4
		[15] = true,	-- Phase 5
		[16] = true,	-- Phase 6
		[1601] = true,	-- Scourge Invasion
		[1602] = true,	-- Silithyst
		[1603] = true,	-- Silithyst

		-- Seasonal Filters
		[1000] = false,	-- Brewfest
		[1001] = false,	-- Children's Week
		[1002] = false,	-- Day of the Dead
		[1003] = false,	-- Feast of Winter Veil
		[1004] = false,	-- Hallow's End
		[1005] = false,	-- Harvest Festival
		[1006] = false,	-- Love is in the Air (Valentine's Day)
		[1007] = false,	-- Lunar Festival
		[1008] = false,	-- Midsummer Fire Festival
		[1010] = false,	-- Noblegarden
		[1011] = false,	-- Pirate's Day
	},
};
local OnClickForTab = function(self)
	local id = self:GetID();
	local parent = self:GetParent();
	PanelTemplates_SetTab(parent, id);
	-- print("CLICKED TAB", id, self:GetText());
	for i,tab in ipairs(parent.Tabs) do
		if i == id then
			for j,o in ipairs(tab.objects) do
				o:Show();
			end
		else
			for j,o in ipairs(tab.objects) do
				o:Hide();
			end
		end
	end
end;
settings.Initialize = function(self)
	PanelTemplates_SetNumTabs(self, #self.Tabs);

	-- Assign the default settings
	if not ATTClassicSettings then ATTClassicSettings = {}; end
	if not ATTClassicSettings.General then ATTClassicSettings.General = {}; end
	if not ATTClassicSettings.Tooltips then ATTClassicSettings.Tooltips = {}; end
	if not ATTClassicSettings.Unobtainables then ATTClassicSettings.Unobtainables = {}; end
	setmetatable(ATTClassicSettings.General, GeneralSettingsBase);
	setmetatable(ATTClassicSettings.Tooltips, TooltipSettingsBase);
	setmetatable(ATTClassicSettings.Unobtainables, UnobtainableSettingsBase);

	-- Assign the preset filters for your character class as the default states
	if not ATTClassicSettingsPerCharacter then ATTClassicSettingsPerCharacter = {}; end
	if not ATTClassicSettingsPerCharacter.Filters then ATTClassicSettingsPerCharacter.Filters = {}; end
	setmetatable(ATTClassicSettingsPerCharacter.Filters, FilterSettingsBase);
	FilterSettingsBase.__index = app.Presets[app.Class] or app.Presets.ALL;

	self.LocationsSlider:SetValue(self:GetTooltipSetting("Locations"));
	self.MainListScaleSlider:SetValue(self:GetTooltipSetting("MainListScale"));
	self.MiniListScaleSlider:SetValue(self:GetTooltipSetting("MiniListScale"));
	self.PrecisionSlider:SetValue(self:GetTooltipSetting("Precision"));
	self.MinimapButtonSizeSlider:SetValue(self:GetTooltipSetting("MinimapSize"));
	if self:GetTooltipSetting("MinimapButton") then
		if not app.Minimap then app.Minimap = app.CreateMinimapButton(); end
		app.Minimap:Show();
	elseif app.Minimap then
		app.Minimap:Hide();
	end
	OnClickForTab(self.Tabs[1]);
	self:UpdateMode();

	if self:GetTooltipSetting("Auto:MainList") then
		app:OpenMainList();
	end
	if self:GetTooltipSetting("Auto:RaidAssistant") then
		app:GetWindow("RaidAssistant"):Show();
	end
	if self:GetTooltipSetting("Auto:WorldQuestsList") then
		app:GetWindow("WorldQuests"):Show();
	end
end
settings.Get = function(self, setting)
	return ATTClassicSettings.General[setting];
end
settings.GetFilter = function(self, filterID)
	return ATTClassicSettingsPerCharacter.Filters[filterID];
end
settings.GetModeString = function(self)
	local mode = "Mode";
	if self:Get("DebugMode") then
		mode = "Debug " .. mode;
	else
		if self:Get("AccountMode") then
			if self:Get("FactionMode") then
				mode = FACTION .. " " .. mode;
			else
				mode = "Account " .. mode;
			end
		end

		local things = {};
		local thingCount = 0;
		local totalThingCount = 0;
		for key,_ in pairs(GeneralSettingsBase.__index) do
			if string.sub(key, 1, 6) == "Thing:" then
				totalThingCount = totalThingCount + 1;
				if settings:Get(key) then
					thingCount = thingCount + 1;
					table.insert(things, string.sub(key, 7));
				end
			end
		end
		if thingCount == 0 then
			mode = "None of the Things " .. mode;
		elseif thingCount == 1 then
			mode = things[1] .. " Only " .. mode;
		elseif thingCount == 2 then
			mode = things[1] .. " + " .. things[2] .. " Only " .. mode;
		elseif thingCount == totalThingCount then
			mode = "Insane " .. mode;
		else
			mode = "Normal " .. mode;
		end
	end
	if self:Get("Filter:ByLevel") then
		mode = "Level " .. app.Level .. " " .. mode;
	end
	return mode;
end
settings.GetShortModeString = function(self)
	if self:Get("DebugMode") then
		return "D";
	elseif self:Get("AccountMode") then
		return "A";
	else
		return "N";
	end
end
settings.GetPersonal = function(self, setting)
	return ATTClassicSettingsPerCharacter[setting];
end
settings.GetTooltipSetting = function(self, setting)
	return ATTClassicSettings.Tooltips[setting];
end
settings.GetUnobtainableFilter = function(self, u)
	return ATTClassicSettings.Unobtainables[u];
end
settings.Set = function(self, setting, value)
	ATTClassicSettings.General[setting] = value;
	self:Refresh();
end
settings.SetFilter = function(self, filterID, value)
	ATTClassicSettingsPerCharacter.Filters[filterID] = value;
	self:Refresh();
	app:RefreshData();
end
settings.SetTooltipSetting = function(self, setting, value)
	ATTClassicSettings.Tooltips[setting] = value;
	wipe(app.searchCache);
	self:Refresh();
end
settings.SetUnobtainableFilter = function(self, u, value)
	ATTClassicSettings.Unobtainables[u] = value;
	self:Refresh();
	app:RefreshData();
end
settings.SetPersonal = function(self, setting, value)
	ATTClassicSettingsPerCharacter[setting] = value;
	self:Refresh();
end
settings.Refresh = function(self)
	for i,tab in ipairs(self.Tabs) do
		if tab.OnRefresh then tab:OnRefresh(); end
		for j,o in ipairs(tab.objects) do
			if o.OnRefresh then o:OnRefresh(); end
		end
	end
end
settings.CreateCheckBox = function(self, text, OnRefresh, OnClick)
	local cb = CreateFrame("CheckButton", self:GetName() .. "-" .. text, self, "InterfaceOptionsCheckButtonTemplate");
	table.insert(self.MostRecentTab.objects, cb);
	cb:SetScript("OnClick", OnClick);
	cb.OnRefresh = OnRefresh;
	cb.Text:SetText(text);
	return cb;
end
settings.CreateTab = function(self, text)
	local id = #self.Tabs + 1;
	local tab = CreateFrame('Button', self:GetName() .. '-Tab' .. id, self, 'OptionsFrameTabButtonTemplate');
	if id > 1 then tab:SetPoint("TOPLEFT", self.Tabs[id - 1], "TOPRIGHT", 0, 0); end
	table.insert(self.Tabs, tab);
	self.MostRecentTab = tab;
	tab.objects = {};
	tab:SetID(id);
	tab:SetText(text);
	PanelTemplates_TabResize(tab, 0);
	tab:SetScript('OnClick', OnClickForTab);
	return tab;
end
settings.ShowCopyPasteDialog = function(self)
	app:ShowPopupDialogWithEditBox("Ctrl+A, Ctrl+C to Copy to your Clipboard.", self:GetText(), nil, 10);
end

settings.SetAccountMode = function(self, accountMode)
	self:Set("AccountMode", accountMode);
	self:UpdateMode();
	app:RefreshData();
end
settings.ToggleAccountMode = function(self)
	self:SetAccountMode(not self:Get("AccountMode"));
end
settings.SetDebugMode = function(self, debugMode)
	self:Set("DebugMode", debugMode);
	self:UpdateMode();
	if debugMode then app.RefreshCollections(); end
	app:RefreshData();
end
settings.ToggleDebugMode = function(self)
	self:SetDebugMode(not self:Get("DebugMode"));
end
settings.SetFactionMode = function(self, factionMode)
	self:Set("FactionMode", factionMode);
	self:UpdateMode();
	if factionMode then app.RefreshCollections(); end
	app:RefreshData();
end
settings.ToggleFactionMode = function(self)
	self:SetFactionMode(not self:Get("FactionMode"));
end
settings.SetCompletedThings = function(self, checked)
	self:Set("Show:CompletedGroups", checked);
	self:Set("Show:CollectedThings", checked);
	self:UpdateMode();
	app:RefreshData();
end
settings.ToggleCompletedThings = function(self)
	self:SetCompletedThings(not self:Get("Show:CompletedGroups"));
end
settings.SetCompletedGroups = function(self, checked)
	self:Set("Show:CompletedGroups", checked);
	self:UpdateMode();
	app:RefreshData();
end
settings.ToggleCompletedGroups = function(self)
	self:SetCompletedGroups(not self:Get("Show:CompletedGroups"));
end
settings.SetCollectedThings = function(self, checked)
	self:Set("Show:CollectedThings", checked);
	self:UpdateMode();
	app:RefreshData();
end
settings.ToggleCollectedThings = function(self)
	settings:SetCollectedThings(not self:Get("Show:CollectedThings", checked));
end
settings.SetHideBOEItems = function(self, checked)
	self:Set("Hide:BoEs", checked);
	if checked then
		app.RequireBindingFilter = app.FilterItemClass_RequireBinding;
	else
		app.RequireBindingFilter = app.NoFilter;
	end
	app:RefreshData();
end
settings.ToggleBOEItems = function(self)
	self:SetHideBOEItems(not self:Get("Hide:BoEs"));
end
settings.UpdateMode = function(self)
	if self:Get("DebugMode") then
		app.GroupFilter = app.NoFilter;
		app.SeasonalItemFilter = app.NoFilter;
		app.VisibilityFilter = app.NoFilter;

		app.AccountWideDeaths = true;
		app.AccountWideExploration = true;
		app.AccountWideFlightPaths = true;
		app.AccountWidePVPRanks = true;
		app.AccountWideQuests = true;
		app.AccountWideRecipes = true;
		app.AccountWideReputations = true;

		app.CollectibleExploration = true;
		app.CollectibleFlightPaths = true;
		app.CollectibleLoot = true;
		app.CollectiblePVPRanks = true;
		app.CollectibleQuests = true;
		app.CollectibleRecipes = true;
		app.CollectibleReputations = true;
	else
		app.VisibilityFilter = app.ObjectVisibilityFilter;
		app.GroupFilter = app.FilterItemClass;
		if app.GetDataMember("FilterSeasonal") then
			app.SeasonalItemFilter = app.FilterItemClass_SeasonalItem;
		else
			app.SeasonalItemFilter = app.NoFilter;
		end

		app.AccountWideDeaths = self:Get("AccountWide:Deaths");
		app.AccountWideExploration = self:Get("AccountWide:Exploration");
		app.AccountWideFlightPaths = self:Get("AccountWide:FlightPaths");
		app.AccountWidePVPRanks = self:Get("AccountWide:PVPRanks");
		app.AccountWideQuests = self:Get("AccountWide:Quests");
		app.AccountWideRecipes = self:Get("AccountWide:Recipes");
		app.AccountWideReputations = self:Get("AccountWide:Reputations");

		app.CollectibleExploration = self:Get("Thing:Exploration");
		app.CollectibleFlightPaths = self:Get("Thing:FlightPaths");
		app.CollectibleLoot = self:Get("Thing:Loot");
		app.CollectiblePVPRanks = self:Get("Thing:PVPRanks");
		app.CollectibleQuests = self:Get("Thing:Quests");
		app.CollectibleRecipes = self:Get("Thing:Recipes");
		app.CollectibleReputations = self:Get("Thing:Reputations");

		if self:Get("AccountMode") then
			app.ItemTypeFilter = app.NoFilter;
			app.ClassRequirementFilter = app.NoFilter;
			app.RequiredSkillFilter = app.NoFilter;
			if self:Get("FactionMode") then
				app.RaceRequirementFilter = app.FilterItemClass_RequireRacesCurrentFaction;
			else
				app.RaceRequirementFilter = app.NoFilter;
			end
		else
			app.ItemTypeFilter = app.FilterItemClass_RequireItemFilter;
			app.ClassRequirementFilter = app.FilterItemClass_RequireClasses;
			app.RaceRequirementFilter = app.FilterItemClass_RequireRaces;
			app.RequiredSkillFilter = app.FilterItemClass_RequiredSkill;
		end
	end
	if self:Get("Show:CompletedGroups") or self:Get("DebugMode") then
		app.GroupVisibilityFilter = app.NoFilter;
	else
		app.GroupVisibilityFilter = app.FilterGroupsByCompletion;
	end
	if self:Get("Show:CollectedThings") or self:Get("DebugMode") then
		app.CollectedItemVisibilityFilter = app.NoFilter;
	else
		app.CollectedItemVisibilityFilter = app.Filter;
	end
	if self:Get("Show:IncompleteThings") then
		app.ShowIncompleteThings = app.FilterItemTrackable;
	else
		app.ShowIncompleteThings = app.Filter;
	end
	if self:Get("Filter:BoEs") then
		app.ItemBindFilter = app.FilterItemBind;
	else
		app.ItemBindFilter = app.Filter;
	end
	if self:Get("Hide:BoEs") then
		app.RequireBindingFilter = app.FilterItemClass_RequireBinding;
	else
		app.RequireBindingFilter = app.NoFilter;
	end
	app:UnregisterEvent("PLAYER_LEVEL_UP");
	if self:Get("Filter:ByLevel") and not self:Get("DebugMode") then
		app:RegisterEvent("PLAYER_LEVEL_UP");
		app.GroupRequirementsFilter = app.FilterGroupsByLevel;
	else
		app.GroupRequirementsFilter = app.NoFilter;
	end
	app:UnregisterEvent("GOSSIP_SHOW");
	app:UnregisterEvent("TAXIMAP_OPENED");
	if self:Get("Thing:FlightPaths") or self:Get("DebugMode") then
		app:RegisterEvent("GOSSIP_SHOW");
		app:RegisterEvent("TAXIMAP_OPENED");
	end
end

-- The ALL THE THINGS Epic Logo!
local f = settings:CreateTexture(nil, "ARTWORK");
f:SetATTSprite("base_36x36", 429, 217, 36, 36, 512, 256);
f:SetPoint("TOPLEFT", settings, "TOPLEFT", 8, -8);
f:SetSize(36, 36);
f:Show();
settings.logo = f;

f = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
f:SetPoint("TOPLEFT", settings.logo, "TOPRIGHT", 4, -4);
f:SetJustifyH("LEFT");
f:SetText(L["TITLE"]);
f:SetScale(1.5);
f:Show();
settings.title = f;

f = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
f:SetPoint("TOPRIGHT", settings, "TOPRIGHT", -8, -8);
f:SetJustifyH("RIGHT");
f:SetText("Crieve-Atiesh\nv" .. GetAddOnMetadata("ATT-Classic", "Version"));
f:Show();
settings.version = f;

f = CreateFrame("Button", nil, settings, "OptionsButtonTemplate");
f:SetPoint("TOPLEFT", settings, "BOTTOMLEFT", 0, -6);
f:SetText("https://www.twitch.tv/crieve");
f:SetWidth(230);
f:SetHeight(30);
f:RegisterForClicks("AnyUp");
f:SetScript("OnClick", settings.ShowCopyPasteDialog);
f:SetATTTooltip("Click this button to copy the url to get to my Twitch Channel.\n\nYou can ask questions while I'm streaming and I will try my best to answer them!");
settings.twitch = f;

f = CreateFrame("Button", nil, settings, "OptionsButtonTemplate");
f:SetPoint("TOPLEFT", settings.twitch, "TOPRIGHT", 4, 0);
f:SetText("https://discord.gg/9GFDsgy");
f:SetWidth(200);
f:SetHeight(30);
f:RegisterForClicks("AnyUp");
f:SetScript("OnClick", settings.ShowCopyPasteDialog);
f:SetATTTooltip("Click this button to copy the url to get to the ALL THE THINGS Discord.\n\nYou can share your progress/frustrations with other collectors!");
settings.community = f;

------------------------------------------
-- The "General" Tab.					--
------------------------------------------
local line;
(function()
local tab = settings:CreateTab("General");
tab:SetPoint("TOPLEFT", settings.logo, "BOTTOMRIGHT", 16, 0);
line = settings:CreateTexture(nil, "ARTWORK");
line:SetPoint("LEFT", settings, "LEFT", 4, 0);
line:SetPoint("RIGHT", settings, "RIGHT", -4, 0);
line:SetPoint("TOP", settings.Tabs[1], "BOTTOM", 0, 0);
line:SetColorTexture(1, 1, 1, 0.4);
line:SetHeight(2);

local ModeLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
ModeLabel:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
ModeLabel:SetJustifyH("LEFT");
ModeLabel:Show();
table.insert(settings.MostRecentTab.objects, ModeLabel);
ModeLabel.OnRefresh = function(self)
	self:SetText(settings:GetModeString());
end;

local DebugModeCheckBox = settings:CreateCheckBox("|Cff15abffDebug Mode|r (Show Everything)",
function(self)
	self:SetChecked(settings:Get("DebugMode"));
end,
function(self)
	settings:SetDebugMode(self:GetChecked());
end);
DebugModeCheckBox:SetATTTooltip("Quite literally... ALL THE THINGS IN THE GAME. PERIOD. DOT. YEAH, ALL OF IT. Even Uncollectible things like bags, consumables, reagents, etc will appear in the lists. (Even yourself! No, really. Look.)\n\nThis is for Debugging purposes only. Not intended to be used for completion tracking.\n\nThis mode bypasses all filters, including Unobtainables.");
DebugModeCheckBox:SetPoint("TOPLEFT", ModeLabel, "BOTTOMLEFT", 0, -8);

local AccountModeCheckBox = settings:CreateCheckBox("|Cff00ab00Account Mode|r",
function(self)
	self:SetChecked(settings:Get("AccountMode"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetAccountMode(self:GetChecked());
end);
AccountModeCheckBox:SetATTTooltip("Turn this setting on if you want to track all of the Things for all of your characters regardless of class and race filters.\n\nUnobtainable filters still apply.");
AccountModeCheckBox:SetPoint("TOPLEFT", DebugModeCheckBox, "BOTTOMLEFT", 0, 4);

local FactionModeCheckBox = settings:CreateCheckBox("Only Current Faction",
function(self)
	self:SetChecked(settings:Get("FactionMode"));
	if settings:Get("DebugMode") or not settings:Get("AccountMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetFactionMode(self:GetChecked());
end);
FactionModeCheckBox:SetATTTooltip(L["FACTION_MODE_TOOLTIP"]);
FactionModeCheckBox:SetPoint("TOPLEFT", AccountModeCheckBox, "TOPLEFT", 140, 0);

-- This creates the "Precision" slider.
local PrecisionSlider = CreateFrame("Slider", "ATTPrecisionSlider", settings, "OptionsSliderTemplate");
PrecisionSlider:SetPoint("RIGHT", settings, "RIGHT", -20, 0);
PrecisionSlider:SetPoint("TOP", ModeLabel, "BOTTOM", 0, -12);
table.insert(settings.MostRecentTab.objects, PrecisionSlider);
settings.PrecisionSlider = PrecisionSlider;
PrecisionSlider.tooltipText = 'Use this to customize your desired level of precision in percentage calculations.\n\nDefault: 2';
PrecisionSlider:SetOrientation('HORIZONTAL');
PrecisionSlider:SetWidth(260);
PrecisionSlider:SetHeight(20);
PrecisionSlider:SetValueStep(1);
PrecisionSlider:SetMinMaxValues(0, 8);
PrecisionSlider:SetObeyStepOnDrag(true);
_G[PrecisionSlider:GetName() .. 'Low']:SetText('0')
_G[PrecisionSlider:GetName() .. 'High']:SetText('8')
_G[PrecisionSlider:GetName() .. 'Text']:SetText("Level of Precision for Percentage")
PrecisionSlider.Label = PrecisionSlider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
PrecisionSlider.Label:SetPoint("TOP", PrecisionSlider, "BOTTOM", 0, 0);
PrecisionSlider.Label:SetText(PrecisionSlider:GetValue());
PrecisionSlider:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue);
	if newValue == settings:GetTooltipSetting("Precision") then
		return 1;
	end
	settings:SetTooltipSetting("Precision", newValue)
	app:UpdateWindows();
end);

-- This creates the "Minimap Button Size" slider.
local MinimapButtonSizeSlider = CreateFrame("Slider", "ATTMinimapButtonSizeSlider", settings, "OptionsSliderTemplate");
MinimapButtonSizeSlider:SetPoint("RIGHT", settings, "RIGHT", -20, 0);
MinimapButtonSizeSlider:SetPoint("TOP", PrecisionSlider, "BOTTOM", 0, -28);
table.insert(settings.MostRecentTab.objects, MinimapButtonSizeSlider);
settings.MinimapButtonSizeSlider = MinimapButtonSizeSlider;
MinimapButtonSizeSlider.tooltipText = 'Use this to customize the size of the Minimap Button.\n\nDefault: 36';
MinimapButtonSizeSlider:SetOrientation('HORIZONTAL');
MinimapButtonSizeSlider:SetWidth(260);
MinimapButtonSizeSlider:SetHeight(20);
MinimapButtonSizeSlider:SetValueStep(1);
MinimapButtonSizeSlider:SetMinMaxValues(18, 48);
MinimapButtonSizeSlider:SetObeyStepOnDrag(true);
_G[MinimapButtonSizeSlider:GetName() .. 'Low']:SetText('18')
_G[MinimapButtonSizeSlider:GetName() .. 'High']:SetText('48')
_G[MinimapButtonSizeSlider:GetName() .. 'Text']:SetText("Minimap Button Size")
MinimapButtonSizeSlider.Label = MinimapButtonSizeSlider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
MinimapButtonSizeSlider.Label:SetPoint("TOP", MinimapButtonSizeSlider, "BOTTOM", 0, 0);
MinimapButtonSizeSlider.Label:SetText(MinimapButtonSizeSlider:GetValue());
MinimapButtonSizeSlider:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue);
	if newValue == settings:GetTooltipSetting("MinimapSize") then
		return 1;
	end
	settings:SetTooltipSetting("MinimapSize", newValue)
	if app.Minimap then app.Minimap:SetSize(newValue, newValue); end
end);



local ThingsLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
ThingsLabel:SetPoint("TOPLEFT", AccountModeCheckBox, "BOTTOMLEFT", 0, -16);
ThingsLabel:SetJustifyH("LEFT");
ThingsLabel:SetText("Which \"Things\" do you want to track?");
ThingsLabel:Show();
table.insert(settings.MostRecentTab.objects, ThingsLabel);
ThingsLabel.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.2);
	else
		self:SetAlpha(1);
	end
end;

local DeathsCheckBox = settings:CreateCheckBox("Deaths / Soul Fragments",
function(self)
	self:SetChecked(settings:Get("Thing:Deaths"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Thing:Deaths", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
DeathsCheckBox:SetATTTooltip("Enable this option to track each time one of your characters die and show it as a Collectible section within the addon.\n\nNOTE: If you turn this off, we'll still track it, but we simply will not show the statistic unless you're in Debug Mode.");
DeathsCheckBox:SetPoint("TOPLEFT", ThingsLabel, "BOTTOMLEFT", 0, -8);

local DeathsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Deaths"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Deaths") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Deaths", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
DeathsAccountWideCheckBox:SetATTTooltip("Most people keep this setting turned on. It may be considered insane to turn it off!");
DeathsAccountWideCheckBox:SetPoint("TOPLEFT", DeathsCheckBox, "TOPLEFT", 220, 0);

local ExplorationCheckBox = settings:CreateCheckBox("Exploration / Map Completion",
function(self)
	self:SetChecked(settings:Get("Thing:Exploration"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Thing:Exploration", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
ExplorationCheckBox:SetATTTooltip("Enable this option to track exploration completion for outdoor maps. If you want the Explorer title, completing this in preparation for Wrath Classic will greatly help you!");
ExplorationCheckBox:SetPoint("TOPLEFT", DeathsCheckBox, "BOTTOMLEFT", 0, 4);

local ExplorationAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Exploration"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Exploration") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Exploration", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
ExplorationAccountWideCheckBox:SetATTTooltip("Flight Paths tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?");
ExplorationAccountWideCheckBox:SetPoint("TOPLEFT", ExplorationCheckBox, "TOPLEFT", 220, 0);

local FlightPathsCheckBox = settings:CreateCheckBox("Flight Paths / Ferry Stations",
function(self)
	self:SetChecked(settings:Get("Thing:FlightPaths"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Thing:FlightPaths", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
FlightPathsCheckBox:SetATTTooltip("Enable this option to track flight paths and ferry stations.\n\nTo collect these, open the dialog with the flight / ferry master in each continent.\n\NOTE: Due to phasing technology, you may have to phase to the other versions of a zone to get credit for those points of interest.");
FlightPathsCheckBox:SetPoint("TOPLEFT", ExplorationCheckBox, "BOTTOMLEFT", 0, 4);

local FlightPathsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:FlightPaths"));
	if settings:Get("DebugMode") or not settings:Get("Thing:FlightPaths") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:FlightPaths", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
FlightPathsAccountWideCheckBox:SetATTTooltip("Flight Paths tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?");
FlightPathsAccountWideCheckBox:SetPoint("TOPLEFT", FlightPathsCheckBox, "TOPLEFT", 220, 0);

local LootCheckBox = settings:CreateCheckBox("Loot / Drops / Items",
function(self)
	self:SetChecked(settings:Get("Thing:Loot"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Thing:Loot", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
LootCheckBox:SetATTTooltip("Enable this option to track loot.\n\nLoot being any item you can get from a mob, quest, or container. Loot that qualifies for one of the other filters will still appear in ATT if this filter is turned off.\n\nYou can change which sort of loot displays for you based on the Filters tab.\n\nDefault: Class Defaults, Disabled.");
LootCheckBox:SetPoint("TOPLEFT", FlightPathsCheckBox, "BOTTOMLEFT", 0, 4);

local QuestsCheckBox = settings:CreateCheckBox("Quests",
function(self)
	self:SetChecked(settings:Get("Thing:Quests"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Thing:Quests", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
QuestsCheckBox:SetATTTooltip("Enable this option to track quests.\n\nYou can right click any quest in the lists to pop out their full quest chain to show your progress and any prerequisite or breadcrumb quests.\n\nNOTE: Quests are not permanently tracked due to the nature of how Daily, Weekly, Yearly, and Repeatable Quests are tracked in the Blizzard Database.");
QuestsCheckBox:SetPoint("TOPLEFT", LootCheckBox, "BOTTOMLEFT", 0, 4);

local QuestsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Quests"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Quests") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Quests", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
QuestsAccountWideCheckBox:SetPoint("TOPLEFT", QuestsCheckBox, "TOPLEFT", 220, 0);

local RecipesCheckBox = settings:CreateCheckBox("Recipes",
function(self)
	self:SetChecked(settings:Get("Thing:Recipes"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Thing:Recipes", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
RecipesCheckBox:SetATTTooltip("Enable this option to track recipes for your professions.\n\nNOTE: You must open your professions list in order to cache these.");
RecipesCheckBox:SetPoint("TOPLEFT", QuestsCheckBox, "BOTTOMLEFT", 0, 4);

local RecipesAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Recipes"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Recipes") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Recipes", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
RecipesAccountWideCheckBox:SetATTTooltip("Recipes are not normally tracked account wide in Blizzard's database, but we can do that.\n\nIt is impossible to collect them all on one character, so with this, you can give your alts and their professions meaning.");
RecipesAccountWideCheckBox:SetPoint("TOPLEFT", RecipesCheckBox, "TOPLEFT", 220, 0);

local ReputationsCheckBox = settings:CreateCheckBox("Reputations",
function(self)
	self:SetChecked(settings:Get("Thing:Reputations"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Thing:Reputations", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
ReputationsCheckBox:SetATTTooltip("Enable this option to track reputations.\n\nOnce you reach Exalted with a reputation, it will be marked Collected.\n\nYou may have to do a manual refresh for this to update correctly.");
ReputationsCheckBox:SetPoint("TOPLEFT", RecipesCheckBox, "BOTTOMLEFT", 0, 4);

local ReputationsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Reputations"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Reputations") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Reputations", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
ReputationsAccountWideCheckBox:SetATTTooltip("Reputations are not normally tracked account wide in Blizzard's database, but we can do that.");
ReputationsAccountWideCheckBox:SetPoint("TOPLEFT", ReputationsCheckBox, "TOPLEFT", 220, 0);

local ShowMinimapButtonCheckBox = settings:CreateCheckBox("Show the Minimap Button",
function(self)
	self:SetChecked(settings:GetTooltipSetting("MinimapButton"));
end,
function(self)
	settings:SetTooltipSetting("MinimapButton", self:GetChecked());
	if self:GetChecked() then
		if not app.Minimap then app.Minimap = app.CreateMinimapButton(); end
		app.Minimap:Show();
	elseif app.Minimap then
		app.Minimap:Hide();
	end
end);
ShowMinimapButtonCheckBox:SetATTTooltip("Enable this option if you want to see the minimap button. This button allows you to quickly access the Main List, show your Overall Collection Progress, and access the Settings Menu by right clicking it.\n\nSome people don't like clutter. Alternatively, you can access the Main List by typing '/att' in your chatbox. From there, you can right click the header to get to the Settings Menu.");
ShowMinimapButtonCheckBox:SetPoint("TOPLEFT", FlightPathsAccountWideCheckBox, "TOPLEFT", 160, 0);

local MinimapButtonStyleCheckBox = settings:CreateCheckBox("Use the Old Minimap Style",
function(self)
	self:SetChecked(settings:GetTooltipSetting("MinimapStyle"));
end,
function(self)
	settings:SetTooltipSetting("MinimapStyle", self:GetChecked());
	if app.Minimap then app.Minimap:UpdateStyle(); end
end);
MinimapButtonStyleCheckBox:SetATTTooltip("Some people don't like the new minimap button...\n\nThose people are wrong!\n\nIf you don't like it, here's an option to go back to the old style.");
MinimapButtonStyleCheckBox:SetPoint("TOPLEFT", ShowMinimapButtonCheckBox, "BOTTOMLEFT", 0, 4);

local ShowCompletedGroupsCheckBox = settings:CreateCheckBox("Show Completed Groups",
function(self)
	self:SetChecked(settings:Get("Show:CompletedGroups"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetCompletedGroups(self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
ShowCompletedGroupsCheckBox:SetATTTooltip("Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.");
ShowCompletedGroupsCheckBox:SetPoint("TOPLEFT", MinimapButtonStyleCheckBox, "BOTTOMLEFT", 0, -4);

local ShowCollectedThingsCheckBox = settings:CreateCheckBox("Show Collected Things",
function(self)
	self:SetChecked(settings:Get("Show:CollectedThings"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetCollectedThings(self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
ShowCollectedThingsCheckBox:SetATTTooltip("Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.");
ShowCollectedThingsCheckBox:SetPoint("TOPLEFT", ShowCompletedGroupsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowIncompleteThingsCheckBox = settings:CreateCheckBox("Show Incomplete Things",
function(self)
	self:SetChecked(settings:Get("Show:IncompleteThings"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Show:IncompleteThings", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
ShowIncompleteThingsCheckBox:SetATTTooltip("Enable this option if you want to see items, objects, NPCs, and headers associated with incomplete quests that don't necessarily have anything you can collect as a result of completing them.\n\nNOTE: Rare Spawns and Vignettes also appear in the listing with this setting turned on.");
ShowIncompleteThingsCheckBox:SetPoint("TOPLEFT", ShowCollectedThingsCheckBox, "BOTTOMLEFT", 0, 4);

local FilterThingsByLevelCheckBox = settings:CreateCheckBox("Filter Things By Level",
function(self)
	self:SetChecked(settings:Get("Filter:ByLevel"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Filter:ByLevel", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
FilterThingsByLevelCheckBox:SetATTTooltip("Enable this setting if you only want to see content available to your current level character.");
FilterThingsByLevelCheckBox:SetPoint("TOPLEFT", ShowIncompleteThingsCheckBox, "BOTTOMLEFT", 0, -4);

local HideBoEItemsCheckBox = settings:CreateCheckBox("Hide BoE Items",
function(self)
	self:SetChecked(settings:Get("Hide:BoEs"));
	if settings:Get("DebugMode") or settings:Get("Filter:BoEs") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetHideBOEItems(self:GetChecked());
end);
HideBoEItemsCheckBox:SetATTTooltip("Enable this setting if you want to hide Bind on Equip items.\n\nThis setting is useful for when you are trying to finish a Classic Dungeon for a character and don't want to farm specifically for items that can be farmed on alts or on the Auction House.\n\nIE: Don't lose your mind grinding for Pendulum of Doom.");
HideBoEItemsCheckBox:SetPoint("TOPLEFT", FilterThingsByLevelCheckBox, "BOTTOMLEFT", 0, 4);

local IgnoreFiltersForBoEsCheckBox = settings:CreateCheckBox("Ignore Filters for BoEs",
function(self)
	self:SetChecked(settings:Get("Filter:BoEs"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Filter:BoEs", self:GetChecked());
	settings:UpdateMode();
	app:RefreshData();
end);
IgnoreFiltersForBoEsCheckBox:SetATTTooltip("Enable this setting if you want to ignore armor, weapon, race, class, or profession requirements for BoE items.\n\nIf you are trying to collect things for your alts via Auction House scanning, this mode may be useful to you.");
IgnoreFiltersForBoEsCheckBox:SetPoint("TOPLEFT", HideBoEItemsCheckBox, "BOTTOMLEFT", 0, 4);

local ReportCollectedThingsCheckBox = settings:CreateCheckBox("Report Collected Things",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:Collected"));
end,
function(self)
	settings:SetTooltipSetting("Report:Collected", self:GetChecked());
end);
ReportCollectedThingsCheckBox:SetATTTooltip("Enable this option if you want to see a message in chat detailing which items you have collected or removed from your collection.\n\nNOTE: This is present because Blizzard silently adds appearances and other collectible items and neglects to notify you of the additional items available to you.\n\nWe recommend you keep this setting on. You will still hear the fanfare with it off assuming you have that option turned on.");
ReportCollectedThingsCheckBox:SetPoint("TOPLEFT", IgnoreFiltersForBoEsCheckBox, "BOTTOMLEFT", 0, -4);

local ReportCompletedQuestsCheckBox = settings:CreateCheckBox("Report Completed Quests",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:CompletedQuests"));
end,
function(self)
	settings:SetTooltipSetting("Report:CompletedQuests", self:GetChecked());
end);
ReportCompletedQuestsCheckBox:SetATTTooltip("Enable this option if you want to see the Quest ID for any quest you complete immediately after it happens. (For reporting bugs, trackings purposes, etc)");
ReportCompletedQuestsCheckBox:SetPoint("TOPLEFT", ReportCollectedThingsCheckBox, "BOTTOMLEFT", 0, 4);

local ReportUnsortedCompletedQuestsCheckBox = settings:CreateCheckBox("Only Unsorted Quests",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:UnsortedQuests"));
end,
function(self)
	settings:SetTooltipSetting("Report:UnsortedQuests", self:GetChecked());
end);
ReportUnsortedCompletedQuestsCheckBox:SetATTTooltip("Enable this option if you only want to see the Quest ID for any quest you complete that isn't already listed in the addon.");
ReportUnsortedCompletedQuestsCheckBox:SetPoint("TOPLEFT", ReportCompletedQuestsCheckBox, "BOTTOMLEFT", 4, 4);
end)();

------------------------------------------
-- The "Filters" Tab.					--
------------------------------------------
(function()
local tab = settings:CreateTab("Filters");
tab.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		PanelTemplates_DisableTab(settings, self:GetID());
	else
		PanelTemplates_EnableTab(settings, self:GetID());
	end
end;

local ItemFiltersLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
ItemFiltersLabel:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
ItemFiltersLabel:SetJustifyH("LEFT");
ItemFiltersLabel:SetText("Armor / Weapon Filters");
ItemFiltersLabel:Show();
table.insert(settings.MostRecentTab.objects, ItemFiltersLabel);

-- Armor
local last, xoffset, yoffset = ItemFiltersLabel, 0, -4;
local itemFilterNames = L["FILTER_ID_TYPES"];

-- Primary Armor Class
local ItemFilterOnClick = function(self)
	settings:SetFilter(self.filterID, self:GetChecked());
end;
local ItemFilterOnRefresh = function(self)
	if settings:Get("AccountMode") or settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	elseif FilterSettingsBase.__index[self.filterID] then
		self:SetChecked(settings:GetFilter(self.filterID));
		self:Enable();
		self:SetAlpha(1);
	else
		self:SetChecked(false);
		self:Disable();
		self:SetAlpha(0.2);
	end
end;
for i,filterID in ipairs({ 2, 4, 5, 6, 7 }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

-- Weapons
yoffset = -4;
for i,filterID in ipairs({ 20, 34, 29, 8, 28  }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

-- Ranged Weapons
yoffset = -4;
for i,filterID in ipairs({ 33, 32, 31, 27  }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

-- Big Ole Boys
yoffset = -4;
for i,filterID in ipairs({ 21, 22, 23, 24, 25, 26 }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

-- Secondary Armor Classes
last, xoffset, yoffset = ItemFiltersLabel, 120, -4;
for i,filterID in ipairs({ 10, 9, 51, 52, 53 }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", xoffset, yoffset);
	filter.filterID = filterID;
	last = filter;
	xoffset = 0;
	yoffset = 6;
end

-- Secondary Weapon Classes
yoffset = -4;
for i,filterID in ipairs({ 50, 57, 100, 54, 1 }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

-- Miscellaneous
yoffset = -4;
for i,filterID in ipairs({ 113, 55, 104, 200 }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

f = CreateFrame("Button", nil, settings, "OptionsButtonTemplate");
f:SetPoint("BOTTOMLEFT", settings, "BOTTOMLEFT", 8, 8);
f:SetText("Class Defaults");
f:SetWidth(120);
f:SetHeight(24);
f:RegisterForClicks("AnyUp");
f:SetScript("OnClick", function(self)
	for key,value in pairs(ATTClassicSettingsPerCharacter.Filters) do
		ATTClassicSettingsPerCharacter.Filters[key] = nil;
	end
	settings:Refresh();
	app:RefreshData();
end);
f:SetATTTooltip("Click this button to reset all of the filters to your class defaults.\n\nNOTE: Only filters that are collectible for your class can be turned on.");
f.OnRefresh = function(self)
	if settings:Get("AccountMode") or settings:Get("DebugMode") then
		self:Disable();
	else
		self:Enable();
	end
end;
table.insert(settings.MostRecentTab.objects, f);
settings.classdefaults = f;

f = CreateFrame("Button", nil, settings, "OptionsButtonTemplate");
f:SetPoint("TOPLEFT", settings.classdefaults, "TOPRIGHT", 3, 0);
f:SetText("All");
f:SetWidth(80);
f:SetHeight(24);
f:RegisterForClicks("AnyUp");
f:SetScript("OnClick", function(self)
	local active, count = 0, 0;
	for key,value in pairs(FilterSettingsBase.__index) do
		if value then
			count = count + 1;
			if ATTClassicSettingsPerCharacter.Filters[key] then
				active = active + 1;
			end
		end
	end
	if count > 0 then
		if (active / count) > 0.5 then
			for key,value in pairs(FilterSettingsBase.__index) do
				if value then ATTClassicSettingsPerCharacter.Filters[key] = false; end
			end
		else
			for key,value in pairs(FilterSettingsBase.__index) do
				if value then ATTClassicSettingsPerCharacter.Filters[key] = true; end
			end
		end
		settings:Refresh();
		app:RefreshData();
	end
end);
f:SetATTTooltip("Click this button to toggle all of the filters at once.");
f.OnRefresh = function(self)
	if settings:Get("AccountMode") or settings:Get("DebugMode") then
		self:Disable();
	else
		self:Enable();
	end
end;
table.insert(settings.MostRecentTab.objects, f);

local UnobtainableFilterOnClick = function(self)
	settings:SetUnobtainableFilter(self.u, self:GetChecked());
end;
local UnobtainableOnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	elseif UnobtainableSettingsBase.__index[self.u] ~= 2 then
		self:SetChecked(settings:GetUnobtainableFilter(self.u));
		self:Enable();
		self:SetAlpha(1);
	else
		self:SetChecked(true);
		self:Disable();
		self:SetAlpha(0.2);
	end
end;
local LegacyFiltersLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
LegacyFiltersLabel:SetPoint("TOPRIGHT", line, "BOTTOMRIGHT", -110, -8);
LegacyFiltersLabel:SetJustifyH("LEFT");
LegacyFiltersLabel:SetText("Seasonal & Unobtainable Filters");
LegacyFiltersLabel:Show();
table.insert(settings.MostRecentTab.objects, LegacyFiltersLabel);

local SeasonalHolidayFiltersLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormal");
SeasonalHolidayFiltersLabel:SetPoint("TOPLEFT", LegacyFiltersLabel, "BOTTOMLEFT", 4, -8);
SeasonalHolidayFiltersLabel:SetJustifyH("LEFT");
SeasonalHolidayFiltersLabel:SetText("|CFFAAAAFFSeasonal Holiday Filters|r");
SeasonalHolidayFiltersLabel:Show();
table.insert(settings.MostRecentTab.objects, SeasonalHolidayFiltersLabel);

-- Seasonal Filters
yoffset = -4;
last = SeasonalHolidayFiltersLabel;
for i,u in ipairs({ 1000, 1001, 1002, 1012, 1003, 1004, 1005, 1006, 1007, 1008, 1010, 1011 }) do
	local filter = settings:CreateCheckBox(L["UNOBTAINABLE_ITEM_REASONS"][u][3] or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
	filter:SetATTTooltip(L["UNOBTAINABLE_ITEM_REASONS"][u][2]);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.u = u;
	last = filter;
	yoffset = 6;
end

local GeneralUnobtainableFiltersLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormal");
GeneralUnobtainableFiltersLabel:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -8);
GeneralUnobtainableFiltersLabel:SetJustifyH("LEFT");
GeneralUnobtainableFiltersLabel:SetText("|CFFFFAAAAGeneral Unobtainable Filters|r");
GeneralUnobtainableFiltersLabel:Show();
table.insert(settings.MostRecentTab.objects, GeneralUnobtainableFiltersLabel);

-- General Unobtainable Filters
yoffset = -4;
last = GeneralUnobtainableFiltersLabel;
for i,u in ipairs({ 1, 2  }) do
	local filter = settings:CreateCheckBox(L["UNOBTAINABLE_ITEM_REASONS"][u][3] or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
	filter:SetATTTooltip(L["UNOBTAINABLE_ITEM_REASONS"][u][2]);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.u = u;
	last = filter;
	yoffset = 6;
end

local FutureContentReleasesLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormal");
FutureContentReleasesLabel:SetPoint("RIGHT", line, "RIGHT", -20, 0);
FutureContentReleasesLabel:SetPoint("TOP", LegacyFiltersLabel, "BOTTOM", 0, -8);
FutureContentReleasesLabel:SetJustifyH("LEFT");
FutureContentReleasesLabel:SetText("|CFFAAFFAAFuture Content Releases|r");
FutureContentReleasesLabel:Show();
table.insert(settings.MostRecentTab.objects, FutureContentReleasesLabel);

-- Future Content Releases
yoffset = -4;
last = FutureContentReleasesLabel;
for i,o in ipairs({ { 11, 0 }, {1101, 4 }, { 12, -4 }, { 13, 0 }, { 14, 0 }, { 15, 0 }, { 1501, 4 }, { 1502, 0 }, { 1503, 0 }, { 1504, 0 }, { 16, -4 }, { 1601, 4 }, { 1602, 0 }, { 1603, 0 }, }) do
	local u = o[1];
	local filter = settings:CreateCheckBox(L["UNOBTAINABLE_ITEM_REASONS"][u][3] or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
	filter:SetATTTooltip(L["UNOBTAINABLE_ITEM_REASONS"][u][2] .. (L["UNOBTAINABLE_ITEM_REASONS"][u][5] or ""));
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", o[2], yoffset);
	filter.u = u;
	last = filter;
	yoffset = 6;
end
end)();

------------------------------------------
-- The "Social" Tab.					--
------------------------------------------
--[[
(function()
local tab = settings:CreateTab("Social");
tab.OnRefresh = function(self)
	-- We aren't ready yet. :(
	PanelTemplates_DisableTab(settings, self:GetID());
end;
end)();
--]]

------------------------------------------
-- The "Interface" Tab.					--
------------------------------------------
(function()
local tab = settings:CreateTab("Interface");
local TooltipLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
TooltipLabel:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
TooltipLabel:SetJustifyH("LEFT");
TooltipLabel:SetText("Tooltips");
TooltipLabel:Show();
table.insert(settings.MostRecentTab.objects, TooltipLabel);

local EnableTooltipInformationCheckBox = settings:CreateCheckBox("|CFFADD8E6Enable Tooltip Integrations|r",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Enabled"));
end,
function(self)
	settings:SetTooltipSetting("Enabled", self:GetChecked());
end);
EnableTooltipInformationCheckBox:SetATTTooltip("Enable this option if you want to see the information provided by ATT in external tooltips. This includes item links sent by other players, in the auction house, in the dungeon journal, in your bags, in the world, on NPCs, etc.\n\nIf you turn this feature off, you are seriously reducing your ability to quickly determine if you need to kill a mob or learn an appearance.\n\nWe recommend you keep this setting on.");
EnableTooltipInformationCheckBox:SetPoint("TOPLEFT", TooltipLabel, "BOTTOMLEFT", 4, 0);

local DisplayInCombatCheckBox = settings:CreateCheckBox("Display In Combat",
function(self)
	self:SetChecked(settings:GetTooltipSetting("DisplayInCombat"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("DisplayInCombat", self:GetChecked());
end);
DisplayInCombatCheckBox:SetATTTooltip("Enable this option if you want to render tooltip information while you are in combat.\n\nIf you are raiding with your Mythic/Mythic+ Guild, you should probably turn this setting off to save as much performance as you can.\n\nIt can be useful while you are soloing old content to immediately know what you need from a boss.");
DisplayInCombatCheckBox:SetPoint("TOPLEFT", EnableTooltipInformationCheckBox, "BOTTOMLEFT", 8, 4);


local ShowCollectionProgressCheckBox = settings:CreateCheckBox("Show Collection Progress",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Progress"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Progress", self:GetChecked());
end);
ShowCollectionProgressCheckBox:SetATTTooltip("Enable this option if you want to see your progress towards collecting a Thing or completing a group of Things at the Top Right of its tooltip.\n\nWe recommend that you keep this setting turned on.");
ShowCollectionProgressCheckBox:SetPoint("TOPLEFT", DisplayInCombatCheckBox, "BOTTOMLEFT", 0, 4);

local ShortenProgressCheckBox = settings:CreateCheckBox("Only Show Icon",
function(self)
	self:SetChecked(settings:GetTooltipSetting("ShowIconOnly"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("Progress") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("ShowIconOnly", self:GetChecked());
end);
ShortenProgressCheckBox:SetATTTooltip("Enable this option if you only want to see the icon in the topright corner instead of the icon and the collected/not collected text.\n\nSome people like smaller tooltips...");
ShortenProgressCheckBox:SetPoint("TOPLEFT", ShowCollectionProgressCheckBox, "BOTTOMLEFT", 8, 4);


local SummarizeThingsCheckBox = settings:CreateCheckBox("Summarize Things",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SummarizeThings"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SummarizeThings", self:GetChecked());
end);
SummarizeThingsCheckBox:SetATTTooltip("Enable this option to summarize Things in the tooltip. For example, if a Thing can be turned into a Vendor for another Thing, then show that other thing in the tooltip to provide visibility for its multiple uses. If a Thing acts as a Container for a number of other Things, this option will show all of the other Things that the container Contains.\n\nWe recommend that you keep this setting turned on.");
SummarizeThingsCheckBox:SetPoint("TOPLEFT", ShortenProgressCheckBox, "BOTTOMLEFT", -8, 4);

local ShowCraftedItemsCheckBox = settings:CreateCheckBox("Show Crafted Items",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:CraftedItems"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:CraftedItems", self:GetChecked());
end);
ShowCraftedItemsCheckBox:SetATTTooltip("Enable this option if you want to see a list of all of the items that can be crafted by any of your characters for a reagent in its tooltip.");
ShowCraftedItemsCheckBox:SetPoint("TOPLEFT", SummarizeThingsCheckBox, "BOTTOMLEFT", 8, 4);

local ShowRecipesCheckBox = settings:CreateCheckBox("Show Recipes",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Recipes"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:Recipes", self:GetChecked());
end);
ShowRecipesCheckBox:SetATTTooltip("Enable this option if you want to see a list of all of the recipes that can be crafted by any of your characters for a reagent in its tooltip.");
ShowRecipesCheckBox:SetPoint("TOPLEFT", ShowCraftedItemsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowSpellRanksCheckBox = settings:CreateCheckBox("Show Spell Ranks",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:SpellRanks"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:SpellRanks", self:GetChecked());
end);
ShowSpellRanksCheckBox:SetATTTooltip("Enable this option if you want to see the best spell rank of triviality for any unleveled related profession for a reagent in its tooltip.\n\nSpell Ranks of 'trivial' or lesser will not be displayed.\nWhile on Account or Debug Mode, this will show for all of your characters that you have cached in ATT.");
ShowSpellRanksCheckBox:SetPoint("TOPLEFT", ShowRecipesCheckBox, "BOTTOMLEFT", 0, 4);

local ShowCoordinatesCheckBox = settings:CreateCheckBox("Show Coordinates",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Coordinates"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Coordinates", self:GetChecked());
end);
ShowCoordinatesCheckBox:SetATTTooltip("Enable this option if you want to see coordinates in the tooltip when hovering over an entry in the mini list.");
ShowCoordinatesCheckBox:SetPoint("TOPLEFT", ShowSpellRanksCheckBox, "BOTTOMLEFT", -8, 4);

local ShowDescriptionsCheckBox = settings:CreateCheckBox("Show Descriptions",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Descriptions"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Descriptions", self:GetChecked());
end);
ShowDescriptionsCheckBox:SetATTTooltip("Enable this option to show descriptions within the tooltip. This may include the descriptive text supplied by the Dungeon Journal or a custom description added by a Contributor who felt some additional information was necessary.\n\nYou might want to keep this turned on.");
ShowDescriptionsCheckBox:SetPoint("TOPLEFT", ShowCoordinatesCheckBox, "BOTTOMLEFT", 0, 4);

local ShowKnownByCheckBox = settings:CreateCheckBox("Show Known By",
function(self)
	self:SetChecked(settings:GetTooltipSetting("KnownBy"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("KnownBy", self:GetChecked());
end);
ShowKnownByCheckBox:SetATTTooltip("Enable this option if you want to see the full list of characters on all servers that know this recipe in the tooltip.");
ShowKnownByCheckBox:SetPoint("TOPLEFT", ShowDescriptionsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowModelsCheckBox = settings:CreateCheckBox("Show Model Preview",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Models"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Models", self:GetChecked());
end);
ShowModelsCheckBox:SetATTTooltip("Enable this option to show models within a preview instead of the icon on the tooltip.\n\nThis option may assist you in identifying what a Rare Spawn or Vendor looks like. It might be a good idea to keep this turned on for that reason.");
ShowModelsCheckBox:SetPoint("TOPLEFT", ShowKnownByCheckBox, "BOTTOMLEFT", 0, 4);

local ShowOtherCharactersCheckBox = settings:CreateCheckBox("Show Other Characters",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:OtherCharacterQuests"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:OtherCharacterQuests", self:GetChecked());
end);
ShowOtherCharactersCheckBox:SetATTTooltip("Enable this option if you want to see all of the characters on your account that still need to complete a quest in its tooltip.\n\nIE: You can look at a quest item and see that it may still be useful to a different character before getting rid of it.");
ShowOtherCharactersCheckBox:SetPoint("TOPLEFT", ShowModelsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowClassRequirementsCheckBox = settings:CreateCheckBox("Show Class Requirements",
function(self)
	self:SetChecked(settings:GetTooltipSetting("ClassRequirements"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("ClassRequirements", self:GetChecked());
end);
ShowClassRequirementsCheckBox:SetATTTooltip("Enable this option if you want to see the full list of class requirements in the tooltip.");
ShowClassRequirementsCheckBox:SetPoint("TOPLEFT", ShowOtherCharactersCheckBox, "BOTTOMLEFT", 0, 4);

local ShowRaceRequirementsCheckBox = settings:CreateCheckBox("Show Race Requirements",
function(self)
	self:SetChecked(settings:GetTooltipSetting("RaceRequirements"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("RaceRequirements", self:GetChecked());
end);
ShowRaceRequirementsCheckBox:SetATTTooltip("Enable this option if you want to see the full list of race requirements in the tooltip.");
ShowRaceRequirementsCheckBox:SetPoint("TOPLEFT", ShowClassRequirementsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowSoftReservesCheckBox = settings:CreateCheckBox("Show Soft Reserves",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SoftReserves"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SoftReserves", self:GetChecked());
end);
ShowSoftReservesCheckBox:SetATTTooltip("Enable this option if you want to see Soft Reserves made by your Raid Members within the ATT database in the tooltip.");
ShowSoftReservesCheckBox:SetPoint("TOPLEFT", ShowRaceRequirementsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowSourceLocationsCheckBox = settings:CreateCheckBox("Show Source Locations",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations", self:GetChecked());
end);
ShowSourceLocationsCheckBox:SetATTTooltip("Enable this option if you want to see full Source Location Paths for objects within the ATT database in the tooltip.");
ShowSourceLocationsCheckBox:SetPoint("TOPLEFT", ShowSoftReservesCheckBox, "BOTTOMLEFT", 0, 4);

local ShowCompletedSourceLocationsForCheckBox = settings:CreateCheckBox("For Completed Sources",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Completed"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Completed", self:GetChecked());
end);
ShowCompletedSourceLocationsForCheckBox:SetATTTooltip("Enable this option if you want to see completed source locations in the tooltip.\n\nAs an example, if you complete the quest \"Bathran's Hair\" in Ashenvale, the tooltip for Evenar Stillwhisper will no longer show that quest when hovering over him.");
ShowCompletedSourceLocationsForCheckBox:SetPoint("TOPLEFT", ShowSourceLocationsCheckBox, "BOTTOMLEFT", 8, 4);

local ShowSourceLocationsForCreaturesCheckBox = settings:CreateCheckBox("For Creatures",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Creatures"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Creatures", self:GetChecked());
end);
ShowSourceLocationsForCreaturesCheckBox:SetATTTooltip("Enable this option if you want to see Source Locations for Creatures.");
ShowSourceLocationsForCreaturesCheckBox:SetPoint("TOPLEFT", ShowCompletedSourceLocationsForCheckBox, "BOTTOMLEFT", 0, 4);

local ShowSourceLocationsForThingsCheckBox = settings:CreateCheckBox("For Things",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Things"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Things", self:GetChecked());
end);
ShowSourceLocationsForThingsCheckBox:SetATTTooltip("Enable this option if you want to see Source Locations for Things.");
ShowSourceLocationsForThingsCheckBox:SetPoint("TOPLEFT", ShowSourceLocationsForCreaturesCheckBox, "BOTTOMLEFT", 0, 4);

local ShowRemainingCheckBox = settings:CreateCheckBox("Show Remaining Things",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Remaining"));
	if self:GetChecked() then
		app.GetProgressText = app.GetProgressTextRemaining;
	else
		app.GetProgressText = app.GetProgressTextDefault;
	end
end,
function(self)
	settings:SetTooltipSetting("Show:Remaining", self:GetChecked());
	-- app:RefreshData();
	app:UpdateWindows();
end);
ShowRemainingCheckBox:SetATTTooltip("Enable this option if you want to see the number of items remaining instead of the progress over total.");
ShowRemainingCheckBox:SetPoint("TOPLEFT", ShowSourceLocationsForThingsCheckBox, "BOTTOMLEFT", -8, 4);

local DebuggingLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
DebuggingLabel:SetPoint("TOPRIGHT", line, "BOTTOMRIGHT", -220, -8);
DebuggingLabel:SetJustifyH("LEFT");
DebuggingLabel:SetText("Debugging");
DebuggingLabel:Show();
table.insert(settings.MostRecentTab.objects, DebuggingLabel);
local ids = {
	["artID"] = "Art ID",
	["creatureID"] = "Creature ID",
	["creatures"] = "Creatures List",
	["Coordinates"] = "Coordinates",
	["currencyID"] = "Currency ID",
	["Descriptions"] = "Descriptions",
	["displayID"] = "Display ID",
	["explorationID"] = "Exploration ID",
	["factionID"] = "Faction ID",
	["filterID"] = "Filter ID",
	["flightPathID"] = "Flight Path ID",
	["itemID"] = "Item ID",
	["itemString"] = "Item String",
	["mapID"] = "Map ID",
	["modelID"] = "Model ID",
	["objectID"] = "Object ID",
	["Objectives"] = "Objectives",
	["questID"] = "Quest ID",
	["QuestGivers"] = "Quest Givers",
	["spellID"] = "Spell ID",
};
local last = nil;
for _,id in pairs({"artID", "creatureID","creatures","Coordinates","currencyID","Descriptions","displayID","explorationID","factionID","filterID","flightPathID"}) do
	local filter = settings:CreateCheckBox(ids[id],
	function(self)
		self:SetChecked(settings:GetTooltipSetting(id));
	end,
	function(self)
		settings:SetTooltipSetting(id, self:GetChecked());
		settings:Refresh();
	end);
	if not last then
		filter:SetPoint("TOPLEFT", DebuggingLabel, "BOTTOMLEFT", 4, 0);
	else
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, 4);
	end
	last = filter;
end
last = nil;
for _,id in pairs({"itemID","itemString","mapID","modelID","objectID","Objectives","questID","QuestGivers","spellID"}) do
	local filter = settings:CreateCheckBox(ids[id],
	function(self)
		self:SetChecked(settings:GetTooltipSetting(id));
	end,
	function(self)
		settings:SetTooltipSetting(id, self:GetChecked());
		settings:Refresh();
	end);
	if not last then
		filter:SetPoint("TOPLEFT", DebuggingLabel, "BOTTOMLEFT", 164, 0);
	else
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, 4);
	end
	last = filter;
end

-- This creates the "Main List Scale" slider.
local MainListScaleSlider = CreateFrame("Slider", "ATTMainListScaleSlider", settings, "OptionsSliderTemplate");
MainListScaleSlider:SetPoint("LEFT", DebuggingLabel, "LEFT", 0, 0);
MainListScaleSlider:SetPoint("TOP", ShowRaceRequirementsCheckBox, "BOTTOM", 0, 0);
table.insert(settings.MostRecentTab.objects, MainListScaleSlider);
settings.MainListScaleSlider = MainListScaleSlider;
MainListScaleSlider.tooltipText = 'Use this to customize the scale of the Main List.\n\nDefault: 1';
MainListScaleSlider:SetOrientation('HORIZONTAL');
MainListScaleSlider:SetWidth(280);
MainListScaleSlider:SetHeight(20);
MainListScaleSlider:SetValueStep(0.1);
MainListScaleSlider:SetMinMaxValues(0.1, 4);
MainListScaleSlider:SetObeyStepOnDrag(true);
_G[MainListScaleSlider:GetName() .. 'Low']:SetText('0.1')
_G[MainListScaleSlider:GetName() .. 'High']:SetText('4')
_G[MainListScaleSlider:GetName() .. 'Text']:SetText("Main List Scale")
MainListScaleSlider.Label = MainListScaleSlider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
MainListScaleSlider.Label:SetPoint("TOP", MainListScaleSlider, "BOTTOM", 0, 0);
MainListScaleSlider.Label:SetText(MainListScaleSlider:GetValue());
MainListScaleSlider:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue);
	settings:SetTooltipSetting("MainListScale", newValue)
	app:GetWindow("Prime"):SetScale(newValue);
end);

-- This creates the "Mini List Scale" slider.
local MiniListScaleSlider = CreateFrame("Slider", "ATTMiniListScaleSlider", settings, "OptionsSliderTemplate");
MiniListScaleSlider:SetPoint("LEFT", DebuggingLabel, "LEFT", 0, 0);
MiniListScaleSlider:SetPoint("TOP", MainListScaleSlider, "BOTTOM", 0, -32);
table.insert(settings.MostRecentTab.objects, MiniListScaleSlider);
settings.MiniListScaleSlider = MiniListScaleSlider;
MiniListScaleSlider.tooltipText = 'Use this to customize the scale of all Mini and Bitty Lists.\n\nDefault: 1';
MiniListScaleSlider:SetOrientation('HORIZONTAL');
MiniListScaleSlider:SetWidth(280);
MiniListScaleSlider:SetHeight(20);
MiniListScaleSlider:SetValueStep(0.1);
MiniListScaleSlider:SetMinMaxValues(0.1, 4);
MiniListScaleSlider:SetObeyStepOnDrag(true);
_G[MiniListScaleSlider:GetName() .. 'Low']:SetText('0.1')
_G[MiniListScaleSlider:GetName() .. 'High']:SetText('4')
_G[MiniListScaleSlider:GetName() .. 'Text']:SetText("Mini List Scale")
MiniListScaleSlider.Label = MiniListScaleSlider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
MiniListScaleSlider.Label:SetPoint("TOP", MiniListScaleSlider, "BOTTOM", 0, 0);
MiniListScaleSlider.Label:SetText(MiniListScaleSlider:GetValue());
MiniListScaleSlider:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue);
	settings:SetTooltipSetting("MiniListScale", newValue)
	for key,window in pairs(app.Windows) do
		if key ~= "Prime" then
			window:SetScale(newValue);
		end
	end
end);

-- This creates the "Locations" slider.
local LocationsSlider = CreateFrame("Slider", "ATTLocationsSlider", settings, "OptionsSliderTemplate");
LocationsSlider:SetPoint("LEFT", DebuggingLabel, "LEFT", 0, 0);
LocationsSlider:SetPoint("TOP", MiniListScaleSlider, "BOTTOM", 0, -32);
table.insert(settings.MostRecentTab.objects, LocationsSlider);
settings.LocationsSlider = LocationsSlider;
LocationsSlider.tooltipText = 'Use this to customize the number of source locations to show in the tooltip.\n\nNOTE: This will also show "X" number of other sources based on how many, if that total is equivalent to the total number of displayed elements, then that will simply display the last source.\n\nDefault: 5';
LocationsSlider:SetOrientation('HORIZONTAL');
LocationsSlider:SetWidth(280);
LocationsSlider:SetHeight(20);
LocationsSlider:SetValueStep(1);
LocationsSlider:SetMinMaxValues(1, 40);
LocationsSlider:SetObeyStepOnDrag(true);
_G[LocationsSlider:GetName() .. 'Low']:SetText('1')
_G[LocationsSlider:GetName() .. 'High']:SetText('40')
_G[LocationsSlider:GetName() .. 'Text']:SetText("Displayed Source Locations")
LocationsSlider.Label = LocationsSlider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
LocationsSlider.Label:SetPoint("TOP", LocationsSlider, "BOTTOM", 0, 0);
LocationsSlider.Label:SetText(LocationsSlider:GetValue());
LocationsSlider:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue);
	if newValue == settings:GetTooltipSetting("Locations") then
		return 1;
	end
	settings:SetTooltipSetting("Locations", newValue)
	app:UpdateWindows();
end);
LocationsSlider.OnRefresh = function(self)
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end;


end)();

------------------------------------------
-- The "Features" Tab.					--
------------------------------------------
(function()
local tab = settings:CreateTab("Features");
local ModulesLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
ModulesLabel:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
ModulesLabel:SetJustifyH("LEFT");
ModulesLabel:SetText("Modules & Mini Lists");
ModulesLabel:Show();
table.insert(settings.MostRecentTab.objects, ModulesLabel);

local ChangeSkipCutsceneState = function(self, checked)
	if checked then
		self:RegisterEvent("PLAY_MOVIE");
		self:RegisterEvent("CINEMATIC_START");
	else
		self:UnregisterEvent("PLAY_MOVIE");
		self:UnregisterEvent("CINEMATIC_START");
	end
end
local AutomaticallySkipCutscenesCheckBox = settings:CreateCheckBox("Automatically Skip Cutscenes",
function(self)
	local checked = settings:GetTooltipSetting("Skip:Cutscenes");
	self:SetChecked(checked);
	self:SetScript("OnEvent", function(self, ...)
		-- print(self, "OnEvent", ...);
		MovieFrame:Hide();
		CinematicFrame_CancelCinematic();
	end);
	ChangeSkipCutsceneState(self, checked);
end,
function(self)
	settings:SetTooltipSetting("Skip:Cutscenes", self:GetChecked());
end);
AutomaticallySkipCutscenesCheckBox:SetATTTooltip("Enable this option if you want ATT to automatically skip all cutscenes on your behalf.");
AutomaticallySkipCutscenesCheckBox:SetPoint("TOPLEFT", ModulesLabel, "BOTTOMLEFT", 4, 0);

local OpenMainListAutomatically = settings:CreateCheckBox("Automatically Open the Main List",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:MainList"));
end,
function(self)
	settings:SetTooltipSetting("Auto:MainList", self:GetChecked());
end);
OpenMainListAutomatically:SetATTTooltip("Enable this option if you want to automatically open the Main List when you login.\n\nYou can also bind this setting to a Key:\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Main List\n\nShortcut Command: /att");
OpenMainListAutomatically:SetPoint("TOPLEFT", AutomaticallySkipCutscenesCheckBox, "BOTTOMLEFT", 0, 4);

local OpenMiniListAutomatically = settings:CreateCheckBox("Automatically Open the Mini List",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:MiniList"));
end,
function(self)
	settings:SetTooltipSetting("Auto:MiniList", self:GetChecked());
end);
OpenMiniListAutomatically:SetATTTooltip("Enable this option if you want to see everything you can collect in your current zone. The list will automatically switch when you change zones. Some people don't like this feature, but when you are solo farming, this feature is extremely useful.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Mini List\n\nShortcut Command: /att mini");
OpenMiniListAutomatically:SetPoint("TOPLEFT", OpenMainListAutomatically, "BOTTOMLEFT", 0, 4);

local OpenProfessionListAutomatically = settings:CreateCheckBox("Automatically Open the Profession List",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:ProfessionList"));
end,
function(self)
	settings:SetTooltipSetting("Auto:ProfessionList", self:GetChecked());
end);
OpenProfessionListAutomatically:SetATTTooltip("Enable this option if you want ATT to open and refresh the profession list when you open your professions. Due to an API limitation imposed by Blizzard, the only time an addon can interact with your profession data is when it is open. The list will automatically switch when you change to a different profession.\n\nWe don't recommend disabling this option as it may prevent recipes from tracking correctly.\n\nYou can also bind this setting to a Key. (only works when a profession is open)\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Profession Mini List\n\nShortcut Command: /att prof");
OpenProfessionListAutomatically:SetPoint("TOPLEFT", OpenMiniListAutomatically, "BOTTOMLEFT", 0, 4);

local OpenRaidAssistantAutomatically = settings:CreateCheckBox("Automatically Open the Raid Assistant",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:RaidAssistant"));
end,
function(self)
	settings:SetTooltipSetting("Auto:RaidAssistant", self:GetChecked());
end);
OpenRaidAssistantAutomatically:SetATTTooltip("Enable this option if you want to see an alternative group/party/raid settings manager called the 'Raid Assistant'. The list will automatically update whenever group settings change.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Raid Assistant\n\nShortcut Command: /attra");
OpenRaidAssistantAutomatically:SetPoint("TOPLEFT", OpenProfessionListAutomatically, "BOTTOMLEFT", 0, 4);

local CelebrationsLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
CelebrationsLabel:SetPoint("TOPRIGHT", line, "BOTTOMRIGHT", -50, -8);
CelebrationsLabel:SetJustifyH("LEFT");
CelebrationsLabel:SetText("Celebrations & Sound Effects");
CelebrationsLabel:Show();
table.insert(settings.MostRecentTab.objects, CelebrationsLabel);

local UseMasterAudioChannel = settings:CreateCheckBox("Use the Master Audio Channel",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Channel") == "master");
end,
function(self)
	local state = self:GetChecked() and "master" or "sound";
	if settings:GetTooltipSetting("Channel") ~= state then
		settings:SetTooltipSetting("Channel", state);
	end
end);
UseMasterAudioChannel:SetATTTooltip("Enable this option if you want the celebrations and other ATT sound effects to play on the 'MASTER' audio channel.\n\nDefault: Yes\n\nA lot of people play with sound effects off, so this option allows the ATT sounds to bypass that should it be desired.");
UseMasterAudioChannel:SetPoint("TOPLEFT", CelebrationsLabel, "BOTTOMLEFT", 4, 0);

local CelebrateCollectedThingsCheckBox = settings:CreateCheckBox("Collected Things Trigger a Celebration",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Celebrate"));
end,
function(self)
	settings:SetTooltipSetting("Celebrate", self:GetChecked());
end);
CelebrateCollectedThingsCheckBox:SetATTTooltip("Enable this option if you want to hear a celebratory 'fanfare' sound effect when you obtain a new Thing.\n\nThis feature can greatly help keep you motivated.");
CelebrateCollectedThingsCheckBox:SetPoint("TOPLEFT", UseMasterAudioChannel, "BOTTOMLEFT", 0, 4);

local DeathSoundCheckBox = settings:CreateCheckBox("Play a Sound Effect when you Die",
function(self)
	self:SetChecked(settings:GetTooltipSetting("PlayDeathSound"));
end,
function(self)
	settings:SetTooltipSetting("PlayDeathSound", self:GetChecked());
end);
DeathSoundCheckBox:SetATTTooltip("Enable this option if you want to hear a sound effect when you die.");
DeathSoundCheckBox:SetPoint("TOPLEFT", CelebrateCollectedThingsCheckBox, "BOTTOMLEFT", 0, 4);

local WarnRemovedThingsCheckBox = settings:CreateCheckBox("Removed Things Trigger a Warning",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Warn:Removed"));
end,
function(self)
	settings:SetTooltipSetting("Warn:Removed", self:GetChecked());
end);
WarnRemovedThingsCheckBox:SetATTTooltip("Enable this option if you want to hear a warning sound effect when you accidentally sell back or trade an item that granted you an appearance that would cause you to lose that appearance from your collection.\n\nThis can be extremely helpful if you vendor an item with a purchase timer. The addon will tell you that you've made a mistake.");
WarnRemovedThingsCheckBox:SetPoint("TOPLEFT", DeathSoundCheckBox, "BOTTOMLEFT", 0, 4);
end)();

------------------------------------------
-- The "About" Tab.				--
------------------------------------------
(function()
local tab = settings:CreateTab("About");
local AboutText = settings:CreateFontString(nil, "ARTWORK", "GameFontNormal");
AboutText:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
AboutText:SetPoint("TOPRIGHT", line, "BOTTOMRIGHT", -8, -8);
AboutText:SetJustifyH("LEFT");
AboutText:SetText(L["TITLE"] .. " |CFFFFFFFFis a collection tracking addon that shows you where and how to get everything in the game! We have a large community of users on our Discord (link at the bottom) where you can ask questions, submit suggestions as well as report bugs or missing items. If you find something collectible or a quest that isn't documented, you can tell us on the Discord, or for the more technical savvy, we have a Git that you may contribute directly to.\n\nWhile we do strive for completion, there's a lot of stuff getting added into the game each patch, so if we're missing something, please understand that we're a small team trying to keep up with changes as well as collect things ourselves. :D\n\nFeel free to ask me questions when I'm streaming and I'll try my best to answer it, even if it's not directly related to ATT (general WoW addon programming as well).\n\n- |r|Cffff8000Crieve (DFortun81 on GitHub)|CFFFFFFFF\n\nIf you wish to play with us, we're on Atiesh (Alliance) in the <All The Things> guild!|r\n\n\nContributors working on Classic:\n |CFFFFFFFF\nPr3vention, Avella, Mogwai, Crieve and Talonzor |r\n\n\n\nIf we're missing something, please let us know!\n\nStill lots of things to add, but thankfully there is a finite number of things in WoW Classic and TBC Classic, so we should eventually get it all!");
AboutText:Show();
table.insert(settings.MostRecentTab.objects, AboutText);
end)();
