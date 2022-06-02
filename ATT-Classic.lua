--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--				Copyright 2017-2021 Dylan Fortune (Crieve-Sargeras)           --
--------------------------------------------------------------------------------
local app = select(2, ...);
local L = app.L;

-- Cache information about the player.
local _, class, classIndex = UnitClass("player");
app.Class = class;
app.ClassIndex = classIndex;
app.Level = UnitLevel("player");
app.Race = select(2, UnitRace("player"));
app.Faction = UnitFactionGroup("player");
if app.Faction == "Horde" then
	app.FactionID = Enum.FlightPathFaction.Horde;
elseif app.Faction == "Alliance" then
	app.FactionID = Enum.FlightPathFaction.Alliance;
else
	-- Neutral Pandaren or... something else. Scourge? Neat.
	app.FactionID = 0;
end

-- Performance Cache
-- While this may seem silly, caching references to commonly used APIs is actually a performance gain...
local SetPortraitTexture = _G["SetPortraitTexture"];
local SetPortraitTextureFromDisplayID = _G["SetPortraitTextureFromCreatureDisplayID"];
local GetFactionInfoByID = _G["GetFactionInfoByID"];
local GetItemInfo = _G["GetItemInfo"];
local GetItemInfoInstant = _G["GetItemInfoInstant"];
local GetItemStats = _G["GetItemStats"];
local InCombatLockdown = _G["InCombatLockdown"];
local MAX_CREATURES_PER_ENCOUNTER = 9;
local DESCRIPTION_SEPARATOR = "`";
local ALLIANCE_ONLY = {
	1,
	3,
	4,
	7,
	11,
	22,
	25,
	29,
	30,
	32,
	34,
	37,
};
local HORDE_ONLY = {
	2,
	5,
	6,
	8,
	9,
	10,
	26,
	27,
	28,
	31,
	35,
	36,
};

-- Coroutine Helper Functions
app.RawData = {};
app.refreshing = {};
local function OnUpdate(self)
	for i=#self.__stack,1,-1 do
		if not self.__stack[i][1](self) then
			table.remove(self.__stack, i);
			if #self.__stack < 1 then
				self:SetScript("OnUpdate", nil);
			end
		end
	end
end
local function Push(self, name, method)
	if not self.__stack then
		self.__stack = {};
		self:SetScript("OnUpdate", OnUpdate);
	elseif #self.__stack < 1 then
		self:SetScript("OnUpdate", OnUpdate);
	end
	--print("Push->" .. name);
	table.insert(self.__stack, { method, name });
end
local function StartCoroutine(name, method)
	if method and not app.refreshing[name] then
		local instance = coroutine.create(method);
		app.refreshing[name] = true;
		Push(app, name, function()
			-- Check the status of the coroutine
			if instance and coroutine.status(instance) ~= "dead" then
				local ok, err = coroutine.resume(instance);
				if ok then return true;	-- This means more work is required.
				else
					-- Show the error. Returning nothing is the same as canceling the work.
					error(err,2);
				end
			end
			app.refreshing[name] = nil;
		end);
	end
end
local constructor = function(id, t, typeID)
	if t then
		if not rawget(t, "g") and rawget(t, 1) then
			return { g=t, [typeID]=id };
		else
			rawset(t, typeID, id);
			return t;
		end
	else
		return {[typeID] = id};
	end
end
local contains = function(arr, value)
	for i,value2 in ipairs(arr) do
		if value2 == value then return true; end
	end
end
local containsAny = function(arr, otherArr)
	for i, v in ipairs(arr) do
		for j, w in ipairs(otherArr) do
			if v == w then return true; end
		end
	end
end
local containsValue = function(dict, value)
	for key,value2 in pairs(dict) do
		if value2 == value then return true; end
	end
end
local defaultComparison = function(a,b)
	return a > b;
end
local function insertionSort(t, compare, nested)
	if t then
		if not compare then compare = defaultComparison; end
		local j;
		for i=2,#t,1 do
			j = i;
			while j > 1 and compare(t[j], t[j - 1]) do
				t[j],t[j - 1] = t[j - 1],t[j];
				j = j - 1;
			end
		end
		if nested then
			for i=#t,1,-1 do
				insertionSort(t[i].g, compare, nested);
			end
		end
	end
end
local sortByNameSafely = function(a, b)
	if a and a.name then
		if b and b.name then
			return a.name <= b.name;
		end
		return true;
	end
	return false;
end;
local sortByTextSafely = function(a, b)
	if a and a.text then
		if b and b.text then
			return a.text <= b.text;
		end
		return true;
	end
	return false;
end;

-- Data Lib
local attData;
local ATTCTempData = {}; 	-- For temporary data.
local ATTClassicAD = {};			-- For account-wide data.
local function SetDataMember(member, data)
	rawset(ATTClassicAD, member, data);
end
local function GetDataMember(member, default)
	attData = rawget(ATTClassicAD, member);
	if attData == nil then
		rawset(ATTClassicAD, member, default);
		return default;
	else
		return attData;
	end
end
local function SetTempDataMember(member, data)
	rawset(ATTCTempData, member, data);
end
local function GetTempDataMember(member, default)
	attData = rawget(ATTCTempData, member);
	if attData == nil then
		rawset(ATTCTempData, member, default);
		return default;
	else
		return attData;
	end
end
local function SetDataSubMember(member, submember, data)
	attData = rawget(ATTClassicAD, member);
	if attData == nil then
		attData = {};
		rawset(attData, submember, data);
		rawset(ATTClassicAD, member, attData);
	else
		rawset(attData, submember, data);
	end
end
local function GetDataSubMember(member, submember, default)
	attData = rawget(ATTClassicAD,member);
	if attData then
		attData = rawget(attData, submember);
		if attData == nil then
			rawset(rawget(ATTClassicAD,member), submember, default);
			return default;
		else
			return attData;
		end
	else
		attData = {};
		rawset(attData, submember, default);
		rawset(ATTClassicAD, member, attData);
		return default;
	end
end
local function SetTempDataSubMember(member, submember, data)
	attData = rawget(ATTCTempData, member);
	if attData == nil then
		attData = {};
		rawset(attData, submember, data);
		rawset(ATTCTempData, member, attData);
	else
		rawset(attData, submember, data);
	end
end
local function GetTempDataSubMember(member, submember, default)
	attData = rawget(ATTCTempData,member);
	if attData then
		attData = rawget(attData, submember);
		if attData == nil then
			rawset(rawget(ATTCTempData,member), submember, default);
			return default;
		else
			return attData;
		end
	else
		attData = {};
		rawset(attData, submember, default);
		rawset(ATTCTempData, member, attData);
		return default;
	end
end
app.SetDataMember = SetDataMember;
app.GetDataMember = GetDataMember;
app.SetDataSubMember = SetDataSubMember;
app.GetDataSubMember = GetDataSubMember;
app.GetTempDataMember = GetTempDataMember;
app.GetTempDataSubMember = GetTempDataSubMember;

local backdrop = {
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
};

-- Game Tooltip Icon
local GameTooltipIcon = CreateFrame("FRAME", nil, GameTooltip);
GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
GameTooltipIcon:SetSize(72, 72);
GameTooltipIcon.icon = GameTooltipIcon:CreateTexture(nil, "ARTWORK");
GameTooltipIcon.icon:SetAllPoints(GameTooltipIcon);
GameTooltipIcon.icon:Show();
GameTooltipIcon.icon.Background = GameTooltipIcon:CreateTexture(nil, "BACKGROUND");
GameTooltipIcon.icon.Background:SetAllPoints(GameTooltipIcon);
GameTooltipIcon.icon.Background:Show();
GameTooltipIcon.icon.Border = GameTooltipIcon:CreateTexture(nil, "BORDER");
GameTooltipIcon.icon.Border:SetAllPoints(GameTooltipIcon);
GameTooltipIcon.icon.Border:Show();
GameTooltipIcon:Hide();

-- Model is used to display the model of an NPC/Encounter.
local GameTooltipModel, model, fi = CreateFrame("FRAME", "ATTGameTooltipModel", GameTooltip, BackdropTemplateMixin and "BackdropTemplate");
GameTooltipModel:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
GameTooltipModel:SetSize(128, 128);
GameTooltipModel:SetBackdrop(backdrop);
GameTooltipModel:SetBackdropBorderColor(1, 1, 1, 1);
GameTooltipModel:SetBackdropColor(0, 0, 0, 1);
GameTooltipModel.Models = {};
GameTooltipModel.Model = CreateFrame("DressUpModel", nil, GameTooltipModel);
GameTooltipModel.Model:SetPoint("TOPLEFT", GameTooltipModel ,"TOPLEFT", 4, -4)
GameTooltipModel.Model:SetPoint("BOTTOMRIGHT", GameTooltipModel ,"BOTTOMRIGHT", -4, 4)
GameTooltipModel.Model:SetFacing(MODELFRAME_DEFAULT_ROTATION);
GameTooltipModel.Model:SetScript("OnUpdate", function(self, elapsed)
	self:SetFacing(self:GetFacing() + elapsed);
end);
GameTooltipModel.Model:Hide();

for i=1,MAX_CREATURES_PER_ENCOUNTER do
	model = CreateFrame("DressUpModel", "ATTGameTooltipModel" .. i, GameTooltipModel);
	model:SetPoint("TOPLEFT", GameTooltipModel ,"TOPLEFT", 4, -4);
	model:SetPoint("BOTTOMRIGHT", GameTooltipModel ,"BOTTOMRIGHT", -4, 4);
	model:SetCamDistanceScale(1.7);
	model:SetDisplayInfo(987);
	model:SetFacing(MODELFRAME_DEFAULT_ROTATION);
	fi = math.floor(i / 2);
	model:SetPosition(fi * -0.1, (fi * (i % 2 == 0 and -1 or 1)) * ((MAX_CREATURES_PER_ENCOUNTER - i) * 0.1), fi * 0.2 - 0.3);
	model:SetDepth(i);
	model:Hide();
	tinsert(GameTooltipModel.Models, model);
end
GameTooltipModel.HideAllModels = function(self)
	for i=1,MAX_CREATURES_PER_ENCOUNTER do
		GameTooltipModel.Models[i]:Hide();
	end
	GameTooltipModel.Model:Hide();
end
GameTooltipModel.SetCreatureID = function(self, creatureID)
	GameTooltipModel.HideAllModels(self);
	if creatureID > 0 then
		self.Model:SetUnit("none");
		self.Model:SetCreature(creatureID);
		local displayID = self.Model:GetDisplayInfo();
		if not displayID then
			Push(app, "SetCreatureID", function()
				if self.lastModel == creatureID then
					self:SetCreatureID(creatureID);
				end
			end);
		end
	end
	self:Show();
end
GameTooltipModel.TrySetDisplayInfo = function(self, reference, displayInfo)
	if displayInfo then
		local count = #displayInfo;
		if count > 0 then
			local rotation = reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION;
			local scale = reference.modelScale or 1;
			if count > 1 then
				count = math.min(count, MAX_CREATURES_PER_ENCOUNTER);
				local ratio = count / MAX_CREATURES_PER_ENCOUNTER;
				if count < 3 then
					for i=1,count do
						model = self.Models[i];
						model:SetDisplayInfo(displayInfo[i]);
						model:SetCamDistanceScale(scale);
						model:SetFacing(rotation);
						model:SetPosition(0, (i % 2 == 0 and 0.5 or -0.5), 0);
						model:Show();
					end
				else
					scale = (1 + (ratio * 0.5)) * scale;
					for i=1,count do
						model = self.Models[i];
						model:SetDisplayInfo(displayInfo[i]);
						model:SetCamDistanceScale(scale);
						model:SetFacing(rotation);
						fi = math.floor(i / 2);
						model:SetPosition(fi * -0.1, (fi * (i % 2 == 0 and -1 or 1)) * ((MAX_CREATURES_PER_ENCOUNTER - i) * 0.1), fi * 0.2 - (ratio * 0.15));
						model:Show();
					end
				end
			else
				self.Model:SetFacing(rotation);
				self.Model:SetCamDistanceScale(scale);
				self.Model:SetDisplayInfo(displayInfo[1]);
				self.Model:Show();
			end
			self:Show();
			return true;
		end
	end
end
GameTooltipModel.TrySetModel = function(self, reference)
	GameTooltipModel.HideAllModels(self);
	if app.Settings:GetTooltipSetting("Models") then
		self.lastModel = reference;
		if reference.qgs then
			if #reference.qgs > 1 then
				local displayInfo = {};
				local markedKeys = {};
				for i,creatureID in ipairs(reference.qgs) do
					local displayID = app.NPCDisplayIDFromID[creatureID];
					if displayID and not markedKeys[displayID] then
						tinsert(displayInfo, displayID);
						markedKeys[displayID] = 1;
					end
				end
				if GameTooltipModel.TrySetDisplayInfo(self, reference, displayInfo) then
					return true;
				end
			else
				local displayID = app.NPCDisplayIDFromID[reference.qgs[1]];
				if displayID then
					self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
					self.Model:SetCamDistanceScale(reference.modelScale or 1);
					self.Model:SetDisplayInfo(displayID);
					self.Model:Show();
					self:Show();
					return true;
				end
			end
		elseif reference.providers then
			local displayInfo = {}
			local markedKeys = {}
			for k,v in pairs(reference.providers) do
				if v[1] == "n" and v[2] > 0 then
					local displayID = app.NPCDisplayIDFromID[v[2]];
					if displayID and not markedKeys[displayID] then
						tinsert(displayInfo, displayID);
						markedKeys[displayID] = 1;
					end
				end
			end
			if GameTooltipModel.TrySetDisplayInfo(self, reference, displayInfo) then
				return true;
			end
		end
		
		if reference.displayID then
			self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self.Model:SetDisplayInfo(reference.displayID);
			self.Model:Show();
			self:Show();
			return true;
		elseif reference.modelID then
			self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self.Model:SetDisplayInfo(reference.modelID);
			self.Model:Show();
			self:Show();
			return true;
		elseif reference.unit and not reference.icon then
			self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self.Model:SetUnit(reference.unit);
			self.Model:Show();
			self:Show();
		end
		if reference.model then
			self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self.Model:SetUnit("none");
			self.Model:SetModel(reference.model);
			self.Model:Show();
			self:Show();
			return true;
		elseif reference.creatureID and reference.creatureID > 0 then
			self.Model:SetFacing(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self:SetCreatureID(reference.creatureID);
			self.Model:Show();
			return true;
		end
		if reference.atlas then
			GameTooltipIcon:SetSize(64,64);
			GameTooltipIcon.icon:SetAtlas(reference.atlas);
			GameTooltipIcon:Show();
			if reference["atlas-background"] then
				GameTooltipIcon.icon.Background:SetAtlas(reference["atlas-background"]);
				GameTooltipIcon.icon.Background:Show();
			end
			if reference["atlas-border"] then
				GameTooltipIcon.icon.Border:SetAtlas(reference["atlas-border"]);
				GameTooltipIcon.icon.Border:Show();
				if reference["atlas-color"] then
					local swatches = reference["atlas-color"];
					GameTooltipIcon.icon.Border:SetVertexColor(swatches[1], swatches[2], swatches[3], swatches[4] or 1.0);
				else
					GameTooltipIcon.icon.Border:SetVertexColor(1, 1, 1, 1.0);
				end
			end
			return true;
		end
	end
end
GameTooltipModel:Hide();

app.AlwaysShowUpdate = function(data) data.visible = true; return true; end
app.AlwaysShowUpdateWithoutReturn = function(data) data.visible = true; end
app.print = function(...)
	print(L["TITLE"], ...);
end

-- audio lib
local lastPlayedFanfare;
function app:PlayCompleteSound()
	if app.Settings:GetTooltipSetting("Celebrate") then
		app:PlayAudio(app.Settings.AUDIO_COMPLETE_TABLE);
	end
end
function app:PlayDeathSound()
	if app.Settings:GetTooltipSetting("PlayDeathSound") then
		app:PlayAudio(app.Settings.AUDIO_DEATH_TABLE);
	end
end
function app:PlayFanfare()
	if app.Settings:GetTooltipSetting("Celebrate") then
		-- Don't spam the users. It's nice sometimes, but let's put a delay of at least 1 second on there.
		local now = time();
		if lastPlayedFanfare and (now - lastPlayedFanfare) < 1 then return nil; end
		lastPlayedFanfare = now;
		app:PlayAudio(app.Settings.AUDIO_FANFARE_TABLE);
	end
end
function app:PlayRareFindSound()
	if app.Settings:GetTooltipSetting("Celebrate") then
		app:PlayAudio(app.Settings.AUDIO_RAREFIND_TABLE);
	end
end
function app:PlayRemoveSound()
	if app.Settings:GetTooltipSetting("Warn:Removed") then
		app:PlayAudio(app.Settings.AUDIO_REMOVE_TABLE);
	end
end
function app:PlayAudio(targetAudio)
	if targetAudio and type(targetAudio) == "table" then
		local id = math.random(1, #targetAudio);
		if targetAudio[id] then PlaySoundFile(targetAudio[id], app.Settings:GetTooltipSetting("Channel")); end
	end
end

-- Color Lib
local CS = CreateFrame("ColorSelect", nil, app._);
local function Colorize(str, color)
	return "|c" .. color .. str .. "|r";
end
local function HexToARGB(hex)
	return tonumber("0x"..hex:sub(1,2)), tonumber("0x"..hex:sub(3,4)), tonumber("0x"..hex:sub(5,6)), tonumber("0x"..hex:sub(7,8));
end
local function HexToRGB(hex)
	return tonumber("0x"..hex:sub(1,2)), tonumber("0x"..hex:sub(3,4)), tonumber("0x"..hex:sub(5,6));
end
local function RGBToHex(r, g, b)
	return string.format("ff%02x%02x%02x",
		r <= 255 and r >= 0 and r or 0,
		g <= 255 and g >= 0 and g or 0,
		b <= 255 and b >= 0 and b or 0);
end
local function ConvertColorRgbToHsv(r, g, b)
  CS:SetColorRGB(r, g, b);
  local h,s,v = CS:GetColorHSV()
  return {h=h,s=s,v=v}
end
local red, green = ConvertColorRgbToHsv(1,0,0), ConvertColorRgbToHsv(0,1,0);
local progress_colors = setmetatable({[1] = "ff15abff"}, {
	__index = function(t, p)
		local h;
		p = tonumber(p);
		if abs(red.h - green.h) > 180 then
			local angle = (360 - abs(red.h - green.h)) * p;
			if red.h < green.h then
				h = floor(red.h - angle);
				if h < 0 then h = 360 + h end
			else
				h = floor(red.h + angle);
				if h > 360 then h = h - 360 end
			end
		else
			h = floor(red.h-(red.h-green.h)*p)
		end
		CS:SetColorHSV(h, red.s-(red.s-green.s)*p, red.v-(red.v-green.v)*p);
		local r,g,b = CS:GetColorRGB();
		local color = RGBToHex(r * 255, g * 255, b * 255);
		rawset(t, p, color);
		return color;
	end
});
local function GetNumberWithZeros(number, desiredLength)
	if desiredLength > 0 then
		local str = tostring(number);
		local length = string.len(str);
		local pos = string.find(str,"[.]");
		if not pos then
			str = str .. ".";
			for i=desiredLength,1,-1 do
				str = str .. "0";
			end
		else
			local totalExtra = desiredLength - (length - pos);
			for i=totalExtra,1,-1 do
				str = str .. "0";
			end
			if totalExtra < 1 then
				str = string.sub(str, 1, pos + desiredLength);
			end
		end
		return str;
	else
		return tostring(floor(number));
	end
end
local function GetProgressTextDefault(progress, total)
	return tostring(progress) .. " / " .. tostring(total);
end
local function GetProgressTextRemaining(progress, total)
	return tostring(total - progress);
end
local function GetProgressColor(p)
	return progress_colors[p];
end
local function GetProgressColorText(progress, total)
	if total and total > 0 then
		local percent = progress / total;
		return "|c" .. GetProgressColor(percent) .. app.GetProgressText(progress, total) .. " (" .. GetNumberWithZeros(percent * 100, app.Settings:GetTooltipSetting("Precision")) .. "%) |r";
	end
end
local function GetCollectionIcon(state)
	return L[(state and (state == 2 and "COLLECTED_APPEARANCE_ICON" or "COLLECTED_ICON")) or "NOT_COLLECTED_ICON"];
end
local function GetCollectionText(state)
	return L[(state and (state == 2 and "COLLECTED_APPEARANCE" or "COLLECTED")) or "NOT_COLLECTED"];
end
local function GetCompletionIcon(state)
	return L[state and "COMPLETE_ICON" or "NOT_COLLECTED_ICON"];
end
local function GetCompletionText(state)
	return L[(state == 2 and "COMPLETE_OTHER") or (state == 1 and "COMPLETE") or "INCOMPLETE"];
end
local function GetProgressTextForRow(data)
	if data.total and (data.total > 1 or (data.total > 0 and not data.collectible)) then
		return GetProgressColorText(data.progress or 0, data.total);
	elseif data.collectible then
		return GetCollectionIcon(data.collected);
	elseif data.trackable then
		return GetCompletionIcon(data.saved);
	end
end
local function GetProgressTextForTooltip(data)
	if data.total and (data.total > 1 or (data.total > 0 and not data.collectible)) then
		return GetProgressColorText(data.progress or 0, data.total);
	elseif data.collectible then
		return GetCollectionText(data.collected);
	elseif data.trackable then
		return GetCompletionText(data.saved);
	end
end
local function GetRemovedWithPatchString(rwp)
	if rwp then
		rwp = tonumber(rwp);
		return "This gets removed in patch " .. math.floor(rwp / 10000) .. "." .. (math.floor(rwp / 100) % 10) .. "." .. (rwp % 10);
	end
end
app.GetProgressText = GetProgressTextDefault;
app.GetProgressTextDefault = GetProgressTextDefault;
app.GetProgressTextRemaining = GetProgressTextRemaining;
CS:Hide();

-- NPC & Title Name Harvesting Lib (https://us.battle.net/forums/en/wow/topic/20758497390?page=1#post-4, Thanks Gello!)
local NPCTitlesFromID = {};
local NPCHarvester = CreateFrame("GameTooltip", "ATTCNPCHarvester", UIParent, "GameTooltipTemplate");
local NPCNameFromID = setmetatable({}, { __index = function(t, id)
	if id > 0 then
		NPCHarvester:SetOwner(UIParent,"ANCHOR_NONE")
		NPCHarvester:SetHyperlink(format("unit:Creature-0-0-0-0-%d-0000000000",id))
		local title = ATTCNPCHarvesterTextLeft1:GetText();
		if title and NPCHarvester:NumLines() > 2 then
			rawset(NPCTitlesFromID, id, ATTCNPCHarvesterTextLeft2:GetText());
		end
		NPCHarvester:Hide();
		if title and title ~= RETRIEVING_DATA then
			rawset(t, id, title);
			return title;
		end
	else
		return L["HEADER_NAMES"][id];
	end
end});


-- Source ID Harvesting Lib
local DressUpModel = CreateFrame('DressUpModel');
local NPCModelHarvester = CreateFrame('DressUpModel', nil, OffScreenFrame);
local inventorySlotsMap = {	-- Taken directly from CanIMogIt (Thanks!)
    ["INVTYPE_HEAD"] = {1},
	["INVTYPE_NECK"] = {2},
    ["INVTYPE_SHOULDER"] = {3},
    ["INVTYPE_BODY"] = {4},
    ["INVTYPE_CHEST"] = {5},
    ["INVTYPE_ROBE"] = {5},
    ["INVTYPE_WAIST"] = {6},
    ["INVTYPE_LEGS"] = {7},
    ["INVTYPE_FEET"] = {8},
    ["INVTYPE_WRIST"] = {9},
    ["INVTYPE_HAND"] = {10},
	["INVTYPE_RING"] = {11},
	["INVTYPE_TRINKET"] = {12},
    ["INVTYPE_CLOAK"] = {15},
    ["INVTYPE_WEAPON"] = {16, 17},
    ["INVTYPE_SHIELD"] = {17},
    ["INVTYPE_2HWEAPON"] = {16, 17},
    ["INVTYPE_WEAPONMAINHAND"] = {16},
    ["INVTYPE_RANGED"] = {16},
    ["INVTYPE_RANGEDRIGHT"] = {16},
    ["INVTYPE_WEAPONOFFHAND"] = {17},
    ["INVTYPE_HOLDABLE"] = {17},
    ["INVTYPE_TABARD"] = {19},
};
local function BuildGroups(parent, g)
	if g then
		-- Iterate through the groups
		for key, group in ipairs(g) do
			-- Set the group's parent
			group.parent = parent;
			
			-- Build the groups
			BuildGroups(group, group.g);
		end
	end
end
local function BuildSourceText(group, l)
	local parent = group.parent;
	if parent then
		if not group.itemID and (parent.key == "filterID" or parent.key == "spellID" or ((parent.headerID or (parent.spellID and (group.categoryID or group.tierID)))
			and ((parent.headerID == -2 or parent.headerID == -17 or parent.headerID == -7) or (parent.parent and parent.parent.parent)))) then
			return BuildSourceText(parent.parent, 5) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA) .. " (" .. (parent.text or RETRIEVING_DATA) .. ")";
		end
		if group.headerID then
			if group.headerID == 0 then
				if group.crs and #group.crs == 1 then
					return BuildSourceText(parent, l + 1) .. DESCRIPTION_SEPARATOR .. (NPCNameFromID[group.crs[1]] or RETRIEVING_DATA) .. " (Drop)";
				end
				return BuildSourceText(parent, l + 1) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA);
			end
			if parent.parent then
				return BuildSourceText(parent, l + 1) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA);
			end
		end
		if parent.key == "categoryID" or parent.key == "tierID" or group.key == "filterID" or group.key == "spellID" or group.key == "encounterID" or (parent.key == "mapID" and group.key == "npcID") then
			return BuildSourceText(parent, 5) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA);
		end
		if l < 1 then
			return BuildSourceText(parent, l + 1);
		else
			return BuildSourceText(parent, l + 1) .. " > " .. (group.text or RETRIEVING_DATA);
		end
	end
	return group.text or RETRIEVING_DATA;
end
local function BuildSourceTextForChat(group, l)
	if group.parent then
		if l < 1 then
			return BuildSourceTextForChat(group.parent, l + 1);
		else
			return BuildSourceTextForChat(group.parent, l + 1) .. " > " .. (group.text or "*");
		end
		return group.text or "*";
	end
	return "ATT";
end
local function BuildSourceTextForTSM(group, l)
	if group.parent then
		if l < 1 or not group.text then
			return BuildSourceTextForTSM(group.parent, l + 1);
		else
			return BuildSourceTextForTSM(group.parent, l + 1) .. "`" .. group.text;
		end
	end
	return L["TITLE"];
end
local function CloneData(data)
	local clone = setmetatable({}, { __index = data });
	if data.g then
		clone.g = {};
		for i,group in ipairs(data.g) do
			local child = CloneData(group);
			child.parent = clone;
			tinsert(clone.g, child);
		end
	end
	return clone;
end
local function RawCloneData(data)
	local clone = {};
	for key,value in pairs(data) do
		rawset(clone, key, value);
	end
	return clone;
end
local function RawCloneArray(arr)
	local clone = {};
	for i,value in ipairs(arr) do
		tinsert(clone, value);
	end
	return clone;
end
app.IsComplete = function(o)
	if o.total then return o.total == o.progress; end
	if o.collectible then return o.collected; end
	if o.trackable then return o.saved; end
end
app.MaximumItemInfoRetries = 400;
local function GetDisplayID(data)
	if data.displayID then
		return data.displayID;
	elseif data.creatureID then
		local displayID = app.NPCDisplayIDFromID[data.creatureID];
		if displayID then
			return displayID;
		end
	end
	
	if data.providers and #data.providers > 0 then
		for k,v in pairs(data.providers) do
			-- if one of the providers is an NPC, we should show its texture regardless of other providers
			if v[1] == "n" then
				return app.NPCDisplayIDFromID[v[2]];
			end
		end
	end
	
	if data.qgs and #data.qgs > 0 then
		return app.NPCDisplayIDFromID[data.qgs[1]];
	end
end
local function SetPortraitIcon(self, data, x)
	self.lastData = data;
	local displayID = GetDisplayID(data);
	if displayID then
		SetPortraitTextureFromDisplayID(self, displayID);
		self:SetWidth(self:GetHeight());
		self:SetTexCoord(0, 1, 0, 1);
		return true;
	elseif data.unit and not data.icon then
		SetPortraitTexture(self, data.unit);
		self:SetWidth(self:GetHeight());
		self:SetTexCoord(0, 1, 0, 1);
		return true;
	end
	
	-- Fallback to a traditional icon.
	if data.atlas then
		self:SetAtlas(data.atlas);
		self:SetWidth(self:GetHeight());
		self:SetTexCoord(0, 1, 0, 1);
		if data["atlas-background"] then
			self.Background:SetAtlas(data["atlas-background"]);
			self.Background:SetWidth(self:GetHeight());
			self.Background:Show();
		end
		if data["atlas-border"] then
			self.Border:SetAtlas(data["atlas-border"]);
			self.Border:SetWidth(self:GetHeight());
			self.Border:Show();
			if data["atlas-color"] then
				local swatches = data["atlas-color"];
				self.Border:SetVertexColor(swatches[1], swatches[2], swatches[3], swatches[4] or 1.0);
			else
				self.Border:SetVertexColor(1, 1, 1, 1.0);
			end
		end
		return true;
	elseif data.icon then
		self:SetWidth(self:GetHeight());
		self:SetTexture(data.icon);
		local texcoord = data.texcoord;
		if texcoord then
			self:SetTexCoord(texcoord[1], texcoord[2], texcoord[3], texcoord[4]);
		else
			self:SetTexCoord(0, 1, 0, 1);
		end
		return true;
	end
end
local function GetBestMapForGroup(group)
	if group then
		return group.mapID or (group.maps and group.maps[1]) or (group.coords and group.coords[1][3]) or GetBestMapForGroup(group.parent);
	end
end
local function GetRelativeDifficulty(group, difficultyID)
	if group then
		if group.difficultyID then
			if group.difficultyID == difficultyID then
				return true;
			end
			if group.difficulties then
				for i, difficulty in ipairs(group.difficulties) do
					if difficulty == difficultyID then
						return true;
					end
				end
			end
			return false;
		end
		if group.parent then
			return GetRelativeDifficulty(group.sourceParent or group.parent, difficultyID);
		else
			return true;
		end
	end
end
local function GetRelativeMap(group, currentMapID)
	if group then
		return group.mapID or (group.maps and (contains(group.maps, currentMapID) and currentMapID or group.maps[1])) or GetRelativeMap(group.parent, currentMapID);
	end
	return currentMapID;
end
local function GetRelativeField(group, field, value)
	if group then
		return group[field] == value or GetRelativeField(group.parent, field, value);
	end
end
local function GetRelativeValue(group, field)
	if group then
		return group[field] or GetRelativeValue(group.parent, field);
	end
end
local function GetDeepestRelativeValue(group, field)
	if group then
		return GetDeepestRelativeValue(group.parent, field) or group[field];
	end
end

-- Quest Completion Lib
local DirtyQuests = {};
local IgnoreErrorQuests = {
	[1476]=1,	-- Hearts of the Pure (Horde Pre-req for the Undercity Succubus Binding quest)
	[1474]=1,	-- The Binding (Succubus) [Undercity]
	[1508]=1,	-- Blind Cazul (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1509]=1,	-- News of Dogran (1/2) (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1510]=1,	-- News of Dogran (2/2) (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1511]=1,	-- Ken'zigla's Draught (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1515]=1,	-- Dogran's Captivity (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1512]=1,	-- Love's Gift (Horde Pre-req for the Orgrimmar Succubus Binding quest)
	[1513]=1,	-- The Binding (Succubus) [Orgrimmar]
	[1738]=1,	-- Heartswood (Alliance Pre-req for the Stormwind City Succubus Binding quest)
	[1739]=1,	-- The Binding (Succubus) [Stormwind City]
	[1516]=1, 	-- Call of Earth (1/3 Durotar)
	[1519]=1, 	-- Call of Earth (1/3 Mulgore)
	[9449]=1, 	-- Call of Earth (1/3 Ammen Vale)
	[555]=1,	-- Soothing Turtle Bisque (A)
	[7321]=1,	-- Soothing Turtle Bisque (H)
	[3630]=1,	-- Gnome Engineering [A]
	[3632]=1,	-- Gnome Engineering [A]
	[3634]=1,	-- Gnome Engineering [H]
	[3635]=1,	-- Gnome Engineering [H]
	[3637]=1,	-- Gnome Engineering [H]
	[3526]=1,	-- Goblin Engineering [H]
	[3629]=1,	-- Goblin Engineering [A]
	[3633]=1,	-- Goblin Engineering [H]
	[4181]=1,	-- Goblin Engineering [A]
	[5517]=1,	-- Chromatic Mantle of the Dawn
	[5521]=1,	-- Chromatic Mantle of the Dawn
	[5524]=1,	-- Chromatic Mantle of the Dawn
	[5504]=1,	-- Mantles of the Dawn
	[5507]=1,	-- Mantles of the Dawn
	[5513]=1,	-- Mantles of the Dawn
	[7170]=1,	-- Earned Reverence (Alliance)
	[7165]=1,	-- Earned Reverence (Horde)
	[7171]=1,	-- Legendary Heroes (Alliance)
	[7166]=1,	-- Legendary Heroes (Horde)
	[7168]=1,	-- Rise and Be Recognized (Alliance)
	[7163]=1,	-- Rise and Be Recognized (Horde)
	[7172]=1,	-- The Eye of Command (Alliance)
	[7167]=1,	-- The Eye of Command (Horde)
	[7164]=1,	-- Honored Amongst the Clan
	[7169]=1,	-- Honored Amongst the Guard
	[8870]=1,	-- The Lunar Festival
	[8871]=1,	-- The Lunar Festival
	[8872]=1,	-- The Lunar Festival
	[8873]=1,	-- The Lunar Festival
	[8874]=1,	-- The Lunar Festival
	[8875]=1,	-- The Lunar Festival
	[8700]=1,	-- Band of Unending Life
	[8692]=1,	-- Cloak of Unending Life
	[8708]=1,	-- Mace of Unending Life
	[8704]=1,	-- Signet of the Unseen Path
	[8696]=1,	-- Cloak of the Unseen Path
	[8712]=1,	-- Scythe of the Unseen Path
	[8699]=1,	-- Band of Vaulted Secrets
	[8691]=1,	-- Drape of Vaulted Secrets
	[8707]=1,	-- Blade of Vaulted Secrets
	[8703]=1,	-- Ring of Eternal Justice
	[8695]=1,	-- Cape of Eternal Justice
	[8711]=1,	-- Blade of Eternal Justice
	[8697]=1,	-- Ring of Infinite Wisdom
	[8689]=1,	-- Shroud of Infinite Wisdom
	[8705]=1,	-- Gavel of Infinite Wisdom
	[8701]=1,	-- Band of Veiled Shadows
	[8693]=1,	-- Cloak of Veiled Shadows
	[8709]=1,	-- Dagger of Veiled Shadows
	[8698]=1,	-- Ring of the Gathering Storm
	[8690]=1,	-- Cloak of the Gathering Storm
	[8706]=1,	-- Hammer of the Gathering Storm
	[8702]=1,	-- Ring of Unspoken Names
	[8694]=1,	-- Shroud of Unspoken Names
	[8710]=1,	-- Kris of Unspoken Names
	[8556]=1,	-- Signet of Unyielding Strength
	[8557]=1,	-- Drape of Unyielding Strength
	[8558]=1,	-- Sickle of Unyielding Strength
	[9520]=1,	-- Diabolical Plans [Alliance]
	[9535]=1,	-- Diabolical Plans [Horde]
	[9522]=1,	-- Never Again! [Alliance]
	[9536]=1,	-- Never Again! [Horde]
	[10371]=1,	-- Yorus Barleybrew (Draenei)
	[10621]=1,	-- Illidari Bane-Shard (A)
	[10623]=1,	-- Illidari Bane-Shard (H)
	[10759]=1,	-- Find the Deserter (A)
	[10761]=1,	-- Find the Deserter (H)
	[11185]=1,	-- The Apothecary's Letter
	[11186]=1,	-- Signs of Treachery?
	[11201]=1,	-- The Grimtotem Plot
	[11123]=1,	-- Inspecting the Ruins [Alliance]
	[11124]=1,	-- Inspecting the Ruins [Horde]
	[11150]=1,	-- Raze Direhorn Post! [Alliance]
	[11205]=1,	-- Raze Direhorn Post! [Horde]
	[11215]=1,	-- Help Mudsprocket
};
local CompletedQuests = setmetatable({}, {__newindex = function (t, key, value)
	if value then
		rawset(t, key, value);
		rawset(DirtyQuests, key, true);
		app.CurrentCharacter.Quests[key] = 1;
		ATTAccountWideData.Quests[key] = 1;
		if app.Settings:GetTooltipSetting("Report:CompletedQuests") then
			local searchResults = app.SearchForField("questID", key);
			if searchResults and #searchResults > 0 then
				local questID, nmr, nmc, text = key, false, false, "";
				for i,searchResult in ipairs(searchResults) do
					if searchResult.questID == questID and not IgnoreErrorQuests[questID] and not GetRelativeField(searchResult, "headerID", -420) then
						if searchResult.nmr and not nmr then
							nmr = true;
							text = searchResult.text;
						end
						if searchResult.nmc and not nmc then
							nmc = true;
							text = searchResult.text;
						end
					end
				end
				if not (nmr or nmc) and app.Settings:GetTooltipSetting("Report:UnsortedQuests") then
					return true;
				end
				if nmc then key = key .. " [C]"; end
				if nmr then key = key .. " [R]"; end
				key = key .. " (" .. text .. ")";
			else
				local text = C_QuestLog.GetQuestInfo(key) or RETRIEVING_DATA;
				key = key .. " [M] (" .. text .. ")";
			end
			print("Completed Quest #" .. key);
		end
	end
end});
local IsQuestFlaggedCompleted = function(questID)
	return questID and CompletedQuests[questID];
end
local IsQuestFlaggedCompletedForObject = function(t)
	if IsQuestFlaggedCompleted(t.questID) then return 1; end
	if app.AccountWideQuests and not t.repeatable then
		if t.questID and ATTAccountWideData.Quests[t.questID] then
			return 2;
		end
	end
	if t.altQuests then
		for i,questID in ipairs(t.altQuests) do
			if IsQuestFlaggedCompleted(questID) then
				return 2;
			end
		end
		if app.AccountWideQuests then
			for i,questID in ipairs(t.altQuests) do
				if  ATTAccountWideData.Quests[questID] then
					return 2;
				end
			end
		end
	end
end

-- Search Caching
local searchCache, CreateObject, MergeObject, MergeObjects = {};
app.searchCache = searchCache;
(function()
local keysByPriority = {	-- Sorted by frequency of use.
	"itemID",
	"questID",
	"npcID",
	"creatureID",
	"objectID",
	"mapID",
	"currencyID",
	"spellID",
	"classID",
	"professionID",
	"categoryID",
	"headerID",
};
local function GetKey(t)
	for i,key in ipairs(keysByPriority) do
		if rawget(t, key) then
			return key;
		end
	end
	for i,key in ipairs(keysByPriority) do
		if t[key] then	-- This goes a bit deeper.
			return key;
		end
	end
end
local function CreateHash(t)
	local key = t.key or GetKey(t);
	if key then
		return key .. t[key];
	end
end
local function GetHash(t)
	return t.hash or CreateHash(t);
end
CreateObject = function(t)
	local s = {};
	if t[1] then
		-- array
		for i,o in ipairs(t) do
			tinsert(s, CreateObject(o));
		end
		return s;
	else
		for k,v in pairs(t) do
			rawset(s, k, v);
		end
		if t.g then
			s.g = {};
			for i,o in ipairs(t.g) do
				tinsert(s.g, CreateObject(o));
			end
		end
		
		local meta = getmetatable(t);
		if meta then
			setmetatable(s, meta);
			return s;
		else
			t = s;
			if t.mapID then
				t = app.CreateMap(t.mapID, t);
			elseif t.currencyID then
				t = app.CreateCurrencyClass(t.currencyID, t);
			elseif t.objectID then
				t = app.CreateObject(t.objectID, t);
			elseif t.professionID then
				t = app.CreateProfession(t.professionID, t);
			elseif t.categoryID then
				t = app.CreateCategory(t.categoryID, t);
			elseif t.recipeID then
				t = app.CreateRecipe(t.recipeID, t);
			elseif t.spellID then
				if t.f == 200 then
					t = app.CreateRecipe(t.spellID, t);
				else
					t = app.CreateSpell(t.spellID, t);
				end
			elseif t.itemID then
				if t.isToy then
					t = app.CreateToy(t.itemID, t);
				else
					t = app.CreateItem(t.itemID, t);
				end
			elseif t.classID then
				t = app.CreateCharacterClass(t.classID, t);
			elseif t.npcID or t.creatureID then
				t = app.CreateNPC(t.npcID or t.creatureID, t);
			elseif t.headerID then
				t = app.CreateNPC(t.headerID, t);	-- For now.
			elseif t.questID then
				t = app.CreateQuest(t.questID, t);
			else
				t = setmetatable({}, { __index = t });
			end
			t.visible = true;
			return t;
		end
	end
end
MergeObjects = function(g, g2)
	if #g2 > 25 then
		local hashTable,t = {};
		for i,o in ipairs(g) do
			local hash = GetHash(o);
			if hash then
				hashTable[hash] = o;
			end
		end
		for i,o in ipairs(g2) do
			local hash = GetHash(o);
			if hash then
				t = hashTable[hash];
				if t then
					if o.g then
						local og = o.g;
						o.g = nil;
						if t.g then
							MergeObjects(t.g, og);
						else
							t.g = og;
						end
					end
					for k,v in pairs(o) do
						if k ~= "expanded" then
							rawset(t, k, v);
						end
					end
				else
					hashTable[hash] = o;
					tinsert(g, o);
				end
			else
				tinsert(g, o);
			end
		end
	else
		for i,o in ipairs(g2) do
			MergeObject(g, o);
		end
	end
end
MergeObject = function(g, t, index)
	local hash = GetHash(t);
	if hash then
		for i,o in ipairs(g) do
			if GetHash(o) == hash then
				if t.g then
					local tg = t.g;
					t.g = nil;
					if o.g then
						MergeObjects(o.g, tg);
					else
						o.g = tg;
					end
				end
				for k,v in pairs(t) do
					if k ~= "expanded" then
						rawset(o, k, v);
					end
				end
				return o;
			end
		end
	end
	if index then
		tinsert(g, index, t);
	else
		tinsert(g, t);
	end
	return t;
end
end)();
local function ExpandGroupsRecursively(group, expanded, manual)
	if group.g and (not group.itemID or manual) then
		group.expanded = expanded;
		for i, subgroup in ipairs(group.g) do
			ExpandGroupsRecursively(subgroup, expanded, manual);
		end
	end
end
local function ReapplyExpand(g, g2)
	for j,p in ipairs(g2) do
		local found = false;
		local key = p.key;
		local id = p[key];
		for i,o in ipairs(g) do
			if o[key] == id then
				found = true;
				if o.expanded then
					if not p.expanded then
						p.expanded = true;
						if o.g and p.g then ReapplyExpand(o.g, p.g); end
					end
				end
				break;
			end
		end
		if not found then
			ExpandGroupsRecursively(p, true);
		end
	end
end

local ResolveSymbolicLink;
(function()
local subroutines;
subroutines = {
	["common_vendor"] = function(npcID)
		return {
			{"select", "creatureID", npcID},	-- Main Vendor
			{"pop"},	-- Remove Main Vendor and push his children into the processing queue.
			{"is", "itemID"},	-- Only Items
		};
	end,
};
ResolveSymbolicLink = function(o)
	if o.resolved then return o.resolved; end
	if o and o.sym then
		local searchResults, finalized = {}, {};
		for j,sym in ipairs(o.sym) do
			local cmd = sym[1];
			if cmd == "select" then
				-- Instruction to search the full database for multiple of a given type
				local field = sym[2];
				local cache;
				for i=3,#sym do
					local cache = app.SearchForField(field, sym[i]);
					if cache then
						for k,s in ipairs(cache) do
							local ref = ResolveSymbolicLink(s);
							if ref then
								if s.g then
									for i,m in ipairs(s.g) do
										table.insert(searchResults, m);
									end
								end
								for i,m in ipairs(ref) do
									table.insert(searchResults, m);
								end
							else
								table.insert(searchResults, s);
							end
						end
					else
						print("Failed to select ", field, sym[i]);
					end
				end
			elseif cmd == "selectparent" then
				-- Instruction to select the parent object of the parent that owns the symbolic link.
				local cache = sym[2];
				if cache and cache > 0 then
					local parent = o.parent;
					while cache > 1 do
						parent = parent.parent;
						cache = cache - 1;
					end
					if parent then
						table.insert(searchResults, parent);
					else
						print("Failed to select parent " .. sym[2] .. " levels up.");
					end
				else
					-- Select the direct parent object.
					table.insert(searchResults, o.parent);
				end
			elseif cmd == "selectprofession" then
				local requireSkill, response = sym[2];
				if app.Categories.Achievements then
					response = app:BuildSearchResponse(app.Categories.Achievements, "requireSkill", requireSkill);
					if response then tinsert(searchResults, {text=ACHIEVEMENTS,icon = app.asset("Category_Achievements"),g=response}); end
				end
				response = app:BuildSearchResponse(app.Categories.Instances, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=GROUP_FINDER,icon = app.asset("Category_D&R"),g=response}); end
				response = app:BuildSearchResponse(app.Categories.Zones, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=BUG_CATEGORY2,icon = app.asset("Category_Zones"),g=response});  end
				response = app:BuildSearchResponse(app.Categories.WorldDrops, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=TRANSMOG_SOURCE_4,icon = app.asset("Category_WorldDrops"),g=response});  end
				response = app:BuildSearchResponse(app.Categories.Craftables, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,icon = app.asset("Category_Crafting"),g=response});  end
			elseif cmd == "fill" then
				-- Instruction to fill with identical content cached elsewhere for this group
				local cache = app.SearchForField(o.key, o[o.key]);
				if cache then
					o.symbolizing = true;
					for k,s in ipairs(cache) do
						if not s.symbolizing then
							local ref = ResolveSymbolicLink(s);
							if ref then
								if s.g then
									for i,m in ipairs(s.g) do
										table.insert(searchResults, m);
									end
								end
								for i,m in ipairs(ref) do
									table.insert(searchResults, m);
								end
							else
								table.insert(searchResults, s);
							end
						end
					end
					o.symbolizing = nil;
				else
					print("Failed to select ", sym[2], sym[3]);
				end
			elseif cmd == "pop" then
				-- Instruction to "pop" all of the group values up one level.
				local orig = searchResults;
				searchResults = {};
				for k,s in ipairs(orig) do
					if s.g then
						for l,t in ipairs(s.g) do
							table.insert(searchResults, t);
						end
					end
				end
			elseif cmd == "where" then
				-- Instruction to include only search results where a key value is a value
				local key, value = sym[2], sym[3];
				for k=#searchResults,1,-1 do
					local s = searchResults[k];
					if not s[key] or s[key] ~= value then
						table.remove(searchResults, k);
					end
				end
			elseif cmd == "index" then
				-- Instruction to include the search result with a given index within each of the selection's groups.
				local index = sym[2];
				local orig = searchResults;
				searchResults = {};
				for k=#orig,1,-1 do
					local s = orig[k];
					if s.g and index <= #s.g then
						table.insert(searchResults, s.g[index]);
					end
				end
			elseif cmd == "not" then
				-- Instruction to include only search results where a key value is not a value
				if #sym > 3 then
					local dict = {};
					for k=2,#sym,2 do
						dict[sym[k] ] = sym[k + 1];
					end
					for k=#searchResults,1,-1 do
						local s = searchResults[k];
						local matched = true;
						for key,value in pairs(dict) do
							if not s[key] or s[key] ~= value then
								matched = false;
								break;
							end
						end
						if matched then
							table.remove(searchResults, k);
						end
					end
				else
					local key, value = sym[2], sym[3];
					for k=#searchResults,1,-1 do
						local s = searchResults[k];
						if s[key] and s[key] == value then
							table.remove(searchResults, k);
						end
					end
				end
			elseif cmd == "is" then
				-- Instruction to include only search results where a key exists
				local key = sym[2];
				for k=#searchResults,1,-1 do
					local s = searchResults[k];
					if not s[key] then table.remove(searchResults, k); end
				end
			elseif cmd == "isnt" then
				-- Instruction to include only search results where a key doesn't exist
				local key = sym[2];
				for k=#searchResults,1,-1 do
					local s = searchResults[k];
					if s[key] then table.remove(searchResults, k); end
				end
			elseif cmd == "contains" then
				-- Instruction to include only search results where a key value contains a value.
				local key = sym[2];
				local clone = {unpack(sym)};
				table.remove(clone, 1);
				table.remove(clone, 1);
				if #clone > 0 then
					for k=#searchResults,1,-1 do
						local s = searchResults[k];
						if not s[key] or not contains(clone, s[key]) then
							table.remove(searchResults, k);
						end
					end
				end
			elseif cmd == "exclude" then
				-- Instruction to exclude search results where a key value contains a value.
				local key = sym[2];
				local clone = {unpack(sym)};
				table.remove(clone, 1);
				table.remove(clone, 1);
				if #clone > 0 then
					for k=#searchResults,1,-1 do
						local s = searchResults[k];
						if s[key] and contains(clone, s[key]) then
							table.remove(searchResults, k);
						end
					end
				end
			elseif cmd == "finalize" then
				-- Instruction to finalize the current search results and prevent additional queries from affecting this selection.
				for k,s in ipairs(searchResults) do
					table.insert(finalized, s);
				end
				wipe(searchResults);
			elseif cmd == "merge" then
				-- Instruction to take all of the finalized and non-finalized search results and merge them back in to the processing queue.
				for k,s in ipairs(searchResults) do
					table.insert(finalized, s);
				end
				searchResults = finalized;
				finalized = {};
			elseif cmd == "postprocess" then
				-- Instruction to take all of the current search results and ensure that there are no duplicated primary keys.
				local uniques = {};
				MergeObjects(uniques, searchResults);
				searchResults = uniques;
			elseif cmd == "invtype" then
				-- Instruction to include only search results where an item is of a specific inventory type.
				local types = {unpack(sym)};
				table.remove(types, 1);
				if #types > 0 then
					for k=#searchResults,1,-1 do
						local s = searchResults[k];
						if s.itemID and not contains(types, select(4, GetItemInfoInstant(s.itemID))) then
							table.remove(searchResults, k);
						end
					end
				end
			elseif cmd == "sub" then
				local subroutine = subroutines[sym[2]];
				if subroutine then
					local args = {unpack(sym)};
					table.remove(args, 1);
					table.remove(args, 1);
					local commands = subroutine(unpack(args));
					if commands then
						local results = ResolveSymbolicLink(setmetatable({sym=commands}, {__index=o}));
						if results then
							for k,s in ipairs(results) do
								table.insert(searchResults, s);
							end
						end
					end
				else
					print("Could not find subroutine", sym[2]);
				end
			elseif cmd == "subif" then
				-- Instruction to perform a set of commands if a conditional is returned true.
				local subroutine = subroutines[sym[2]];
				if subroutine then
					-- If the subroutine's conditional was successful.
					if sym[3] and (sym[3])(o) then
						local args = {unpack(sym)};
						table.remove(args, 1);
						table.remove(args, 1);
						table.remove(args, 1);
						local commands = subroutine(unpack(args));
						if commands then
							local results = ResolveSymbolicLink(setmetatable({sym=commands}, {__index=o}));
							if results then
								for k,s in ipairs(results) do
									table.insert(searchResults, s);
								end
							end
						end
					end
				else
					print("Could not find subroutine", sym[2]);
				end
			elseif cmd == "achievement_criteria" then
				-- Instruction to select the criteria provided by the achievement this is attached to. (maybe build this into achievements?)
				if GetAchievementNumCriteria then
					local achievementID = o.achievementID;
					local cache;
					for criteriaID=1,GetAchievementNumCriteria(achievementID),1 do
						local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString = GetAchievementCriteriaInfo(achievementID, criteriaID);
						if criteriaType == 27 then
							cache = app.SearchForField("questID", assetID);
						else
							print("Unhandled Criteria Type", criteriaType);
						end
						if cache then
							local uniques = {};
							MergeObjects(uniques, cache);
							for i,o in ipairs(uniques) do
								o.g = nil;
								o.achievementID = nil;
								app.CacheFields(o);
								o.achievementID = achievementID;
								tinsert(searchResults, app.CreateAchievementCriteria(criteriaID, o));
							end
						end
					end
				end
			end
		end
		
		-- If we have any pending finalizations to make, then merge them into the finalized table. [Equivalent to a "finalize" instruction]
		if #searchResults > 0 then
			for k,s in ipairs(searchResults) do
				table.insert(finalized, s);
			end
		end
		
		-- If we had any finalized search results, then return it.
		if #finalized > 0 then
			-- print("Symbolic Link for ", o.key, " ", o[o.key], " contains ", #finalized, " values after filtering.");
			o.resolved = finalized;
			return finalized;
		else
			-- print("Symbolic Link for ", o.key, " ", o[o.key], " contained no values after filtering.");
		end
	end
end
end)();
local function BuildContainsInfo(groups, entries, paramA, paramB, indent, layer)
	for i,group in ipairs(groups) do
		if app.RecursiveGroupRequirementsFilter(group) then
			local right = nil;
			if group.total and (group.total > 1 or (group.total > 0 and not group.collectible)) then
				if (group.progress / group.total) < 1 or app.Settings:Get("Show:CompletedGroups") then
					right = GetProgressColorText(group.progress, group.total);
				end
			elseif paramA and paramB and (not group[paramA] or (group[paramA] and group[paramA] ~= paramB)) then
				if group.collectible then
					if group.collected then
						if app.Settings:Get("Show:CollectedThings") then
							right = GetCollectionIcon(group.collected);
						end
					else
						right = L["NOT_COLLECTED_ICON"];
					end
				elseif group.trackable then
					if app.Settings:Get("Show:IncompleteThings") then
						if group.saved then
							if app.Settings:Get("Show:CollectedThings") then
								right = L["COMPLETE_ICON"];
							end
						else
							right = L["NOT_COLLECTED_ICON"];
						end
					elseif group.visible then
						right = group.count and (group.count .. "x") or "---";
					end
				elseif group.visible then
					right = group.count and (group.count .. "x") or "---";
				end
			end
			
			if right then
				-- Insert into the display.
				local o = { prefix = indent, group = group, right = right };
				if group.u then
					local reason = L["UNOBTAINABLE_ITEM_REASONS"][group.u];
					if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then
						o.prefix = string.sub(o.prefix, 4) .. "|T" .. L["UNOBTAINABLE_ITEM_TEXTURES"][reason[1]] .. ":0|t ";
					end
				end
				tinsert(entries, o);
				
				-- Only go down one more level.
				if layer < 2 and group.g and #group.g > 0 and not group.symbolized then
					BuildContainsInfo(group.g, entries, paramA, paramB, indent .. "  ", layer + 1);
				end
			end
		end
	end
end
local function GetCachedSearchResults(search, method, paramA, paramB, ...)
	if search then
		local now = time();
		local cache = searchCache[search];
		if cache and (now - cache[1]) < cache[2] then return cache[3]; end
		
		-- Determine if this tooltip needs more work the next time it refreshes.
		if not paramA then paramA = ""; end
		local working, info, crafted, recipes = false, {}, {}, {};
		cache = { now, 100000000 };
		searchCache[search] = cache;
		
		-- Call to the method to search the database.
		local group, a, b = method(paramA, paramB, ...);
		if not group then
			group = {};
		elseif group.g then
			group = group.g;
		end
		if a then paramA = a; end
		if b then paramB = b; end
		
		-- For Creatures that are inside of an instance, we only want the data relevant for the instance.
		if paramA == "creatureID" or paramA == "encounterID" then
			if group and #group > 0 then
				local difficultyID = (IsInInstance() and select(3, GetInstanceInfo())) or (paramA == "encounterID" and EJ_GetDifficulty and EJ_GetDifficulty()) or 0;
				if difficultyID > 0 then
					local subgroup = {};
					for _,j in ipairs(group) do
						if GetRelativeDifficulty(j, difficultyID) then
							tinsert(subgroup, j);
						end
					end
					group = subgroup;
				end
			
				local regroup = {};
				if app.Settings:Get("DebugMode") then
					for i,j in ipairs(group) do
						tinsert(regroup, j);
					end
				else
					if app.Settings:Get("AccountMode") then
						for i,j in ipairs(group) do
							if app.RecursiveUnobtainableFilter(j) then
								if j.questID and j.itemID then
									if not j.saved then
										-- Only show the item on the tooltip if the quest is active and incomplete or the item is a provider.
										if C_QuestLog.IsOnQuest(j.questID) then
											if not IsQuestComplete(j.questID) then
												tinsert(regroup, j);
											end
										elseif j.providers then
											tinsert(regroup, j);
										else
											-- Do a quick search on the itemID.
											local searchResults = app.SearchForField("itemID", j.itemID);
											if searchResults and #searchResults > 0 then
												for k,searchResult in ipairs(searchResults) do
													if searchResult.providers then
														for l,provider in ipairs(searchResult.providers) do
															if provider[1] == 'i' and provider[2] == j.itemID then
																tinsert(regroup, j);
																break;
															end
														end
														break;
													end
												end
											end
										end
									end
								else
									tinsert(regroup, j);
								end
							end
						end
					else
						for i,j in ipairs(group) do
							if app.RecursiveClassAndRaceFilter(j) and app.RecursiveUnobtainableFilter(j) and app.RecursiveGroupRequirementsFilter(j) then
								if j.questID and j.itemID then
									if not j.saved then
										-- Only show the item on the tooltip if the quest is active and incomplete or the item is a provider.
										if C_QuestLog.IsOnQuest(j.questID) then
											if not IsQuestComplete(j.questID) then
												tinsert(regroup, j);
											end
										elseif j.providers then
											tinsert(regroup, j);
										else
											-- Do a quick search on the itemID.
											local searchResults = app.SearchForField("itemID", j.itemID);
											if searchResults and #searchResults > 0 then
												for k,searchResult in ipairs(searchResults) do
													if searchResult.providers then
														for l,provider in ipairs(searchResult.providers) do
															if provider[1] == 'i' and provider[2] == j.itemID then
																tinsert(regroup, j);
																break;
															end
														end
														break;
													end
												end
											end
										end
									end
								else
									tinsert(regroup, j);
								end
							end
						end
					end
				end
				if #regroup > 0 then
					if app.Settings:GetTooltipSetting("Lore") then
						for i,j in ipairs(regroup) do
							if j.lore and j[paramA] and j[paramA] == paramB then
								tinsert(info, 1, { left = j.lore, wrap = true, color = "ff66ccff" });
							end
						end
					end
					if app.Settings:GetTooltipSetting("Descriptions") then
						for i,j in ipairs(regroup) do
							if j.description and j[paramA] and j[paramA] == paramB then
								tinsert(info, 1, { left = j.description, wrap = true, color = "ff66ccff" });
							end
						end
					end
					insertionSort(regroup, function(a, b)
						return not (a.headerID and a.headerID == -1) and b.headerID and b.headerID == -1;
					end);
				end
				group = regroup;
			end
		elseif paramA == "titleID" then
			-- Don't do anything
			local regroup = {};
			if app.Settings:Get("AccountMode") then
				for i,j in ipairs(group) do
					if app.RecursiveUnobtainableFilter(j) then
						tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
					end
				end
			else
				for i,j in ipairs(group) do
					if app.RecursiveClassAndRaceFilter(j) and app.RecursiveUnobtainableFilter(j) then
						tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
					end
				end
			end
			
			group = regroup;
		else
			-- Determine if this is a cache for an item
			local itemID;
			if not paramB then
				local itemString = string.match(paramA, "item[%-?%d:]+");
				if itemString then
					if app.Settings:GetTooltipSetting("itemString") then tinsert(info, { left = itemString }); end
					local itemID2 = select(2, strsplit(":", itemString));
					if itemID2 then
						itemID = tonumber(itemID2);
						paramA = "itemID";
						paramB = itemID;
					end
				else
					local kind, id = strsplit(":", paramA);
					kind = string.lower(kind);
					if id then id = tonumber(id); end
					if kind == "itemid" then
						paramA = "itemID";
						paramB = id;
						itemID = id;
					elseif kind == "questid" then
						paramA = "questID";
						paramB = id;
					elseif kind == "creatureid" or kind == "npcid" then
						paramA = "creatureID";
						paramB = id;
					end
				end
			elseif paramA == "itemID" then
				itemID = paramB;
			end
			
			if itemID then
				-- Show the unobtainable source text
				for i,j in ipairs(group) do
					if j.itemID == itemID then
						if j.u and (not j.crs or paramA == "itemID") then
							local reason = L["UNOBTAINABLE_ITEM_REASONS"][j.u];
							if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then
								tinsert(info, { left = reason[2] });
							end
							break;
						end
					end
				end
				if app.Settings:GetTooltipSetting("itemID") then tinsert(info, { left = L["ITEM_ID"], right = tostring(itemID) }); end
				
				-- Show Reservations
				local reservesForItem = GetTempDataMember("SoftReservesByItemID")[itemID];
				if reservesForItem and app.Settings:GetTooltipSetting("SoftReserves") then
					local left = "Soft Reserves";
					for i,guid in ipairs(reservesForItem) do
						if guid and IsGUIDInGroup(guid) then
							tinsert(info, { left = left, right = app.CreateSoftReserveUnit(guid).tooltipText });
							left = nil;
						end
					end
				end
				
				local reagentCache = app.GetDataSubMember("Reagents", itemID);
				if reagentCache then
					for spellID,count in pairs(reagentCache[1]) do
						MergeObject(recipes, CreateObject({ ["spellID"] = spellID, ["collectible"] = false, ["count"] = count }));
					end
					for craftedItemID,count in pairs(reagentCache[2]) do
						MergeObject(crafted, CreateObject({ ["itemID"] = craftedItemID, ["count"] = count }));
						local searchResults = app.SearchForField("itemID", craftedItemID);
						if searchResults and #searchResults > 0 then
							for i,o in ipairs(searchResults) do
								if not o.itemID and o.cost then
									-- Reagent for something that crafts a thing required for something else.
									MergeObject(group, CreateObject({ ["itemID"] = craftedItemID, ["count"] = count, ["g"] = { CreateObject(o) } }));
								end
							end
						end
					end
				end
			end
		end
		
		--[[
		if paramA == "currencyID" then
			local costResults = app.SearchForField("currencyIDAsCost", paramB);
			if costResults and #costResults > 0 then
				for i,o in ipairs(costResults) do
					MergeObject(group, o);
				end
			end
		elseif paramA == "itemID" then
			local costResults = app.SearchForField("itemIDAsCost", paramB);
			if costResults and #costResults > 0 then
				for i,o in ipairs(costResults) do
					if o.itemID ~= paramB then
						print(o.key, o[o.key], o.text);
						MergeObject(group, o);
					end
				end
			end
		end
		]]
		
		-- Create a list of sources
		if app.Settings:GetTooltipSetting("SourceLocations") and (not paramA or (app.Settings:GetTooltipSetting(paramA == "creatureID" and "SourceLocations:Creatures" or "SourceLocations:Things"))) then
			local temp = {};
			local unfiltered = {};
			local abbrevs = L["ABBREVIATIONS"];
			local abbrevs_post = L["ABBREVIATIONS_POST"];
			if not abbrevs_post[" true "] then
				abbrevs_post[" %> " .. app.GetMapName(947)] = "";
				abbrevs_post[" %> " .. app.GetMapName(1415)] = "";
				abbrevs_post[" %> " .. app.GetMapName(1414)] = "";
				abbrevs_post[" false "] = " 0 ";
				abbrevs_post[" true "] = " 1 ";
			end
			for i,j in ipairs(group) do
				if j.parent and not j.parent.hideText and j.parent.parent
					and (app.Settings:GetTooltipSetting("SourceLocations:Completed") or not app.IsComplete(j)) then
					local text = BuildSourceText(paramA ~= "itemID" and j.parent or j, paramA ~= "itemID" and 1 or 0);
					for source,replacement in pairs(abbrevs) do
						text = string.gsub(text, source, replacement);
					end
					for source,replacement in pairs(abbrevs_post) do
						text = string.gsub(text, source, replacement);
					end
					
					local didthing = false;
					if j.u then
						local reason = L["UNOBTAINABLE_ITEM_REASONS"][j.u];
						if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then
							tinsert(unfiltered, text .. " |T" .. L["UNOBTAINABLE_ITEM_TEXTURES"][reason[1]] .. ":0|t");
							didthing = true;
						end
					end
					if not didthing then
						if not app.RecursiveClassAndRaceFilter(j.parent) then
							tinsert(unfiltered, text .. " |TInterface\\FriendsFrame\\StatusIcon-Away:0|t");
						elseif not app.RecursiveUnobtainableFilter(j.parent) then
							tinsert(unfiltered, text .. " |TInterface\\FriendsFrame\\StatusIcon-DnD:0|t");
						else
							tinsert(temp, text);
						end
					end
				end
			end
			if (#temp < 1 and not (paramA == "creatureID")) or app.Settings:Get("DebugMode") then
				for i,j in ipairs(unfiltered) do
					tinsert(temp, j);
				end
			end
			if #temp > 0 then
				local listing = {};
				local maximum = app.Settings:GetTooltipSetting("Locations");
				insertionSort(temp);
				for i,j in ipairs(temp) do
					if not contains(listing, j) then
						tinsert(listing, 1, j);
						if string.find(j, RETRIEVING_DATA) then working = true; end
					end
				end
				local count, splitCounts, splitCount = 0, { };
				for i,text in ipairs(listing) do
					local left, right = strsplit(DESCRIPTION_SEPARATOR, text);
					splitCount = splitCounts[left];
					if not splitCount then
						splitCount = { count = 0,variants ={} };
						splitCounts[left] = splitCount;
					end
					if right and not contains(splitCount.variants, right) then
						table.insert(splitCount.variants, right);
						if string.find(right, BATTLE_PET_SOURCE_2) then
							splitCount.count = splitCount.count + 1;
						end
					end
				end
				for left,splitCount in pairs(splitCounts) do
					if splitCount.count < 6 then
						if #splitCount.variants < 1 then
							tinsert(info, 1, { left = left, wrap = not string.find(left, " > ") });
							count = count + 1;
						else
							for i,right in ipairs(splitCount.variants) do
								tinsert(info, 1, { left = left, right = right, wrap = not string.find(left, " > ") });
								count = count + 1;
							end
						end
					else
						tinsert(info, 1, { left = left, right = TRACKER_HEADER_QUESTS, wrap = not string.find(left, " > ") });
						count = count + 1;
						for i,right in ipairs(splitCount.variants) do
							if not string.find(right, BATTLE_PET_SOURCE_2) then
								tinsert(info, 1, { left = left, right = right, wrap = not string.find(left, " > ") });
								count = count + 1;
							end
						end
					end
				end
				if count > maximum + 1 then
					for i=count,maximum + 1,-1 do
						table.remove(info, 1);
					end
					tinsert(info, 1, "And " .. (count - maximum) .. " other sources...");
				end
			end
		end
		
		-- Create an unlinked version of the object.
		if not group.g then
			local merged = {};
			for i,o in ipairs(group) do
				MergeObject(merged, CreateObject(o));
			end
			if #merged == 1 and merged[1][paramA] == paramB then
				group = merged[1];
				local symbolicLink = ResolveSymbolicLink(group);
				if symbolicLink then
					if group.g and #group.g >= 0 then
						for j=1,#symbolicLink,1 do
							MergeObject(group.g, CreateObject(symbolicLink[j]));
						end
					else
						for j=#symbolicLink,1,-1 do
							symbolicLink[j] = CreateObject(symbolicLink[j]);
						end
						group.g = symbolicLink;
					end
				end
			else
				for i,o in ipairs(merged) do
					local symbolicLink = ResolveSymbolicLink(o);
					if symbolicLink then
						o.symbolized = true;
						if o.g and #o.g >= 0 then
							for j=1,#symbolicLink,1 do
								MergeObject(o.g, CreateObject(symbolicLink[j]));
							end
						else
							for j=#symbolicLink,1,-1 do
								symbolicLink[j] = CreateObject(symbolicLink[j]);
							end
							o.g = symbolicLink;
						end
					end
				end
				group = CreateObject({ [paramA] = paramB });
				group.g = merged;
			end
		end
		
		
		
		-- Resolve Cost
		--[[
		if paramA == "currencyID" then
			local costResults = app.SearchForField("currencyIDAsCost", paramB);
			if costResults and #costResults > 0 then
				if not group.g then group.g = {} end
				for i,o in ipairs(costResults) do
					MergeObject(group.g, o);
				end
			end
		elseif paramA == "itemID" or (paramA == "s" and group.itemID) then
			local costResults = app.SearchForField("itemIDAsCost", group.itemID or paramB);
			if costResults and #costResults > 0 then
				if not group.g then group.g = {} end
				for i,o in ipairs(costResults) do
					if o.itemID ~= paramB then
						MergeObject(group.g, o);
					end
				end
			end
		end
		]]
		-- Resolve Cost
		if paramA == "currencyID" then
			local costResults = app.SearchForField("currencyIDAsCost", paramB);
			if costResults and #costResults > 0 then
				if not group.g then group.g = {} end
				local usedToBuy = app.CreateNPC(-2);
				usedToBuy.text = "Currency For";
				if not usedToBuy.g then usedToBuy.g = {}; end
				for i,o in ipairs(costResults) do
					MergeObject(usedToBuy.g, CreateObject(o));
				end
				MergeObject(group.g, usedToBuy);
			end
		elseif paramA == "itemID" then
			local costResults = app.SearchForField("itemIDAsCost", paramB);
			if costResults and #costResults > 0 then
				if not group.g then group.g = {} end
				local attunement = app.CreateNPC(-17);
				if not attunement.g then attunement.g = {}; end
				local usedToBuy = app.CreateNPC(-2);
				if not usedToBuy.g then usedToBuy.g = {}; end
				for i,o in ipairs(costResults) do
					if o.key == "instanceID" or ((o.key == "difficultyID" or o.key == "mapID" or o.key == "headerID") and (o.parent and GetRelativeValue(o.parent, "instanceID"))) then
						if app.CollectibleQuests then
							local d = CreateObject(o);
							d.collectible = true;
							d.collected = GetItemCount(paramB, true) > 0;
							d.progress = nil;
							d.total = nil;
							d.g = {};
							MergeObject(attunement.g, d);
						end
					else
						MergeObject(usedToBuy.g, CreateObject(o));
					end
				end
				if #attunement.g > 0 then
					attunement.text = "Attunement For";
					MergeObject(group.g, attunement);
				end
				if #usedToBuy.g > 0 then
					usedToBuy.text = "Currency For";
					MergeObject(group.g, usedToBuy);
				end
			end
		end
		
		if group.g then
			group.total = 0;
			group.progress = 0;
			app.UpdateGroups(group, group.g);
			if group.collectible then
				group.total = group.total + 1;
				if group.collected then
					group.progress = group.progress + 1;
				end
			end
		end
		
		if group.lore and app.Settings:GetTooltipSetting("Lore") and not (paramA == "titleID") then
			tinsert(info, 1, { left = group.lore, wrap = true, color = "ff66ccff" });
		end
		
		if group.description and app.Settings:GetTooltipSetting("Descriptions") and not (paramA == "titleID") then
			tinsert(info, 1, { left = group.description, wrap = true, color = "ff66ccff" });
		end
		
		if group.rwp then
			tinsert(info, 1, { left = GetRemovedWithPatchString(group.rwp), wrap = true, color = "FFFFAAAA" });
		end
		
		if group.isLimited then
			tinsert(info, 1, { left = L.LIMITED_QUANTITY, wrap = true, color = "ff66ccff" });
		end
		
		local showOtherCharacterQuests = app.Settings:GetTooltipSetting("Show:OtherCharacterQuests");
		if app.Settings:GetTooltipSetting("SummarizeThings") then
			-- Contents
			if group.g and #group.g > 0 then
				local entries = {};
				BuildContainsInfo(group.g, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
				if #entries > 0 then
					local realmName, left, right = GetRealmName();
					tinsert(info, { left = "Contains:" });
					if #entries < 25 then
						for i,item in ipairs(entries) do
							left = item.group.text or RETRIEVING_DATA;
							if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
							local mapID = GetBestMapForGroup(item.group);
							if mapID and mapID ~= app.CurrentMapID then left = left .. " (" .. app.GetMapName(mapID) .. ")"; end
							if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
							tinsert(info, { left = item.prefix .. left, right = item.right });
							
							if item.group.questID and not item.group.repeatable and showOtherCharacterQuests then
								local incompletes = {};
								for guid,character in pairs(ATTCharacterData) do
									if not character.ignored and character.realm == realmName
										and (not item.group.r or (character.factionID and item.group.r == character.factionID))
										and (not item.group.races or (character.raceID and contains(item.group.races, character.raceID)))
										and (not item.group.c or (character.classID and contains(item.group.c, character.classID)))
										and (character.Quests and not character.Quests[item.group.questID]) then
										incompletes[guid] = character;
									end
								end
								local desc, j = "", 0;
								for guid,character in pairs(incompletes) do
									if j > 0 then desc = desc .. ", "; end
									desc = desc .. (character.text or guid);
									j = j + 1;
								end
								if j > 0 then
									tinsert(info, { left = " ", right = string.gsub(desc, "-" .. realmName, ""), hash = "HASH" .. item.group.questID });
								end
							end
						end
					else
						for i=1,math.min(25, #entries) do
							local item = entries[i];
							left = item.group.text or RETRIEVING_DATA;
							if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
							local mapID = GetBestMapForGroup(item.group);
							if mapID and mapID ~= app.CurrentMapID then left = left .. " (" .. app.GetMapName(mapID) .. ")"; end
							if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
							tinsert(info, { left = item.prefix .. left, right = item.right });
							
							if item.group.questID and not item.group.repeatable and showOtherCharacterQuests then
								local incompletes = {};
								for guid,character in pairs(ATTCharacterData) do
									if not character.ignored and character.realm == realmName and character.Quests and not character.Quests[item.group.questID] then
										incompletes[guid] = character;
									end
								end
								local desc, j = "", 0;
								for guid,character in pairs(incompletes) do
									if j > 0 then desc = desc .. ", "; end
									desc = desc .. (character.text or guid);
									j = j + 1;
								end
								tinsert(info, { left = " ", right = string.gsub(desc, "-" .. realmName, ""), hash = "HASH" .. item.group.questID });
							end
						end
						local more = #entries - 25;
						if more > 0 then tinsert(info, { left = "And " .. more .. " more..." }); end
					end
				end
			end
			
			-- Crafted Items
			if crafted and #crafted > 0 then
				if app.Settings:GetTooltipSetting("Show:CraftedItems") then
					local entries = {};
					BuildContainsInfo(crafted, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
					if #entries > 0 then
						local left, right;
						tinsert(info, { left = "Used to Craft:" });
						if #entries < 25 then
							insertionSort(entries, function(a, b)
								if a.group.name then
									if b.group.name then
										return a.group.name <= b.group.name;
									end
									return true;
								end
								return false;
							end);
							for i,item in ipairs(entries) do
								left = item.group.text or RETRIEVING_DATA;
								if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
								if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
								tinsert(info, { left = item.prefix .. left, right = item.right });
							end
						else
							for i=1,math.min(25, #entries) do
								local item = entries[i];
								left = item.group.text or RETRIEVING_DATA;
								if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
								if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
								tinsert(info, { left = item.prefix .. left, right = item.right });
							end
							local more = #entries - 25;
							if more > 0 then tinsert(info, { left = "And " .. more .. " more..." }); end
						end
					end
				end
			end
		
			-- Recipes
			if recipes and #recipes > 0 then
				if app.Settings:GetTooltipSetting("Show:Recipes") then
					local entries, left, right = {};
					BuildContainsInfo(recipes, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
					if #entries > 0 then
						tinsert(info, { left = "Used in Recipes:" });
						if #entries < 25 then
							insertionSort(entries, function(a, b)
								if a and a.group.name then
									if b and b.group.name then
										return a.group.name <= b.group.name;
									end
									return true;
								end
								return false;
							end);
							for i,item in ipairs(entries) do
								left = item.group.text or RETRIEVING_DATA;
								if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
								if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
								tinsert(info, { left = item.prefix .. left, right = item.right });
							end
						else
							for i=1,math.min(25, #entries) do
								local item = entries[i];
								left = item.group.text or RETRIEVING_DATA;
								if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
								if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
								tinsert(info, { left = item.prefix .. left, right = item.right });
							end
							local more = #entries - 25;
							if more > 0 then tinsert(info, { left = "And " .. more .. " more..." }); end
						end
					end
				end
				if app.Settings:GetTooltipSetting("Show:SpellRanks") then
					if app.Settings:Get("AccountMode") or app.Settings:Get("DebugMode") then
						-- Show all characters
					else
						-- Show only the current character
						local nonTrivialRecipes = {};
						for i, o in pairs(recipes) do
							local craftTypeID = app.CurrentCharacter.SpellRanks[o.spellID];
							if craftTypeID and craftTypeID > 0 then
								o.craftTypeID = craftTypeID;
								tinsert(nonTrivialRecipes, o);
							end
						end
						local entries, left, right = {};
						BuildContainsInfo(nonTrivialRecipes, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
						if #entries > 0 then
							tinsert(info, { left = "Available Skill Ups:" });
							if #entries < 25 then
								insertionSort(entries, function(a, b)
									if a.group.craftTypeID == b.group.craftTypeID then
										if a.group.name then
											if b.group.name then
												return a.group.name <= b.group.name;
											end
											return true;
										end
										return false;
									end
									return a.group.craftTypeID > b.group.craftTypeID;
								end);
								for i,item in ipairs(entries) do
									left = item.group.text or RETRIEVING_DATA;
									if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
									if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
									tinsert(info, { left = item.prefix .. left, right = item.right });
								end
							else
								for i=1,math.min(25, #entries) do
									local item = entries[i];
									left = item.group.text or RETRIEVING_DATA;
									if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
									if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
									tinsert(info, { left = item.prefix .. left, right = item.right });
								end
								local more = #entries - 25;
								if more > 0 then tinsert(info, { left = "And " .. more .. " more..." }); end
							end
						end
					end
				end
			end
		end
		
		-- If the item is a recipe, then show which characters know this recipe.
		if group.collectible and group.spellID and group.f ~= 100 and app.Settings:GetTooltipSetting("KnownBy") then
			local knownBy = {};
			for guid,character in pairs(ATTCharacterData) do
				if character.Spells and character.Spells[group.spellID] then
					table.insert(knownBy, character);
				end
			end
			if #knownBy > 0 then
				insertionSort(knownBy, sortByNameSafely);
				local desc = "Known by ";
				for i,character in ipairs(knownBy) do
					if i > 1 then desc = desc .. ", "; end
					desc = desc .. (character.text or "???");
				end
				tinsert(info, { left = string.gsub(desc, "-" .. GetRealmName(), ""), wrap = true, color = "ff66ccff" });
			end
		end
		
		-- If the user wants to show the progress of this search result, do so.
		if app.Settings:GetTooltipSetting("Progress") and (not group.spellID or #info > 0) then
			group.collectionText = (app.Settings:GetTooltipSetting("ShowIconOnly") and GetProgressTextForRow or GetProgressTextForTooltip)(group);
			
			-- add the progress as a new line for encounter tooltips instead of using right text since it can overlap the NPC name
			if group.encounterID then tinsert(info, 1, { left = "Progress", right = group.collectionText }); end
		end
		
		-- If there was any informational text generated, then attach that info.
		if #info > 0 then
			local uniques, dupes, _ = {}, {};
			for i,item in ipairs(info) do
				_ = item.hash or item.left;
				if not _ then
					tinsert(uniques, item);
				else
					if item.right then _ = _ .. item.right; end
					if not dupes[_] then
						dupes[_] = true;
						tinsert(uniques, item);
					end
				end
			end
			
			group.tooltipInfo = uniques;
			for i,item in ipairs(uniques) do
				if item.color then item.a, item.r, item.g, item.b = HexToARGB(item.color); end
			end
		end
		
		-- Cache the result for a while depending on if there is more work to be done.
		cache[2] = (working and 0.01) or 100000000;
		cache[3] = group;
		return group;
	end
end
local function SendGroupChatMessage(msg)
	if IsInRaid() then
		SendChatMessage(msg, "RAID", nil, nil);
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		SendChatMessage(msg, "PARTY", nil, nil);
	end
end
local function SendGroupMessage(msg)
	if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "INSTANCE_CHAT")
	elseif IsInRaid() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "RAID")
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "PARTY")
	end
end
local function SendGuildMessage(msg)
	if IsInGuild() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "GUILD");
	else
		app.events.CHAT_MSG_ADDON("ATTC", msg, "WHISPER", "player");
	end
end
local function SendResponseMessage(msg, player)
	if UnitInRaid(player) or UnitInParty(player) then
		SendGroupMessage("to\t" .. player .. "\t" .. msg);
	else
		C_ChatInfo.SendAddonMessage("ATTC", msg, "WHISPER", player);
	end
end
local function SendGUIDWhisper(msg, guid)
	local name = select(6, GetPlayerInfoByGUID(guid));
	if name then SendChatMessage(msg, "WHISPER", nil, name); end
end

-- Synchronization Functions
(function()
local outgoing,incoming,queue,active = {},{},{};
local whiteListedFields = { "FlightPaths", "Exploration", "BattlePets", "Achievements", "Spells", "Titles", "Toys", "Quests", "Factions"};
function splittoarray(sep, inputstr)
	local t = {};
	for str in string.gmatch(inputstr, "([^" .. (sep or "%s") .. "]+)") do
		table.insert(t, str);
	end
	return t;
end
local function processQueue()
	if #queue > 0 and not active then
		local data = queue[1];
		table.remove(queue, 1);
		active = data[1];
		if data[4] then
			C_ChatInfo.SendAddonMessage("ATTC", "!\tsyncsumchar\t" .. data[1], "WHISPER", data[3]);
			active = nil;
			processQueue();
		else
			app.print("Updating " .. data[2] .. " from " .. data[3] .. "...");
			C_ChatInfo.SendAddonMessage("ATTC", "!\tsyncsum\t" .. data[1], "WHISPER", data[3]);
		end
	end
end

function app:AcknowledgeIncomingChunks(sender, uid, total)
	local incomingFromSender = incoming[sender];
	if not incomingFromSender then
		incomingFromSender = {};
		incoming[sender] = incomingFromSender;
	end
	incomingFromSender[uid] = { ["chunks"] = {}, ["total"] = total };
	C_ChatInfo.SendAddonMessage("ATTC", "chksack\t" .. uid, "WHISPER", sender);
end
local function ProcessIncomingChunk(sender, uid, index, chunk)
	if not (chunk and index and uid and sender) then return false; end
	local incomingFromSender = incoming[sender];
	if not incomingFromSender then return false; end
	local incomingForUID = incomingFromSender[uid];
	if not incomingForUID then return false; end
	incomingForUID.chunks[index] = chunk;
	if index < incomingForUID.total then
		return true;
	end
	
	incomingFromSender[uid] = nil;
	
	local msg = "";
	for i=1,incomingForUID.total,1 do
		msg = msg .. incomingForUID.chunks[i];
	end
	-- app:ShowPopupDialogWithMultiLineEditBox(msg);
	local characters = splittoarray("\t", msg);
	for _,characterString in ipairs(characters) do
		local data = splittoarray(":", characterString);
		local guid = data[1];
		local character = ATTCharacterData[guid];
		if not character then
			character = {};
			character.guid = guid;
			ATTCharacterData[guid] = character;
		end
		character.name = data[2];
		character.lvl = tonumber(data[3]);
		character.text = data[4];
		character.realm = data[5];
		character.factionID = tonumber(data[6]);
		character.classID = tonumber(data[7]);
		character.raceID = tonumber(data[8]);
		character.lastPlayed = tonumber(data[9]);
		character.Deaths = tonumber(data[10]);
		character.class = C_CreatureInfo.GetClassInfo(character.classID).classFile;
		character.race = C_CreatureInfo.GetRaceInfo(character.raceID).clientFileString;
		for i=11,#data,1 do
			local piece = splittoarray("/", data[i]);
			local key = piece[1];
			local field = {};
			character[key] = field;
			if key == "ActiveSkills" then
				for j=2,#piece,1 do
					local skill = splittoarray("|", piece[j]);
					field[tonumber(skill[1])] = { tonumber(skill[2]), tonumber(skill[3]) };
				end
			else
				for j=2,#piece,1 do
					local index = tonumber(piece[j]);
					if index then field[index] = 1; end
				end
			end
		end
		app.print("Update complete for " .. character.text .. ".");
	end
	
	app:RecalculateAccountWideData();
	app.Settings:Refresh();
	active = nil;
	processQueue();
	return false;
end
function app:AcknowledgeIncomingChunk(sender, uid, index, chunk)
	if chunk and ProcessIncomingChunk(sender, uid, index, chunk) then
		C_ChatInfo.SendAddonMessage("ATTC", "chkack\t" .. uid .. "\t" .. index .. "\t1", "WHISPER", sender);
	else
		C_ChatInfo.SendAddonMessage("ATTC", "chkack\t" .. uid .. "\t" .. index .. "\t0", "WHISPER", sender);
	end
end
function app:SendChunk(sender, uid, index, success)
	local outgoingForSender = outgoing[sender];
	if outgoingForSender then
		local chunksForUID = outgoingForSender.uids[uid];
		if chunksForUID and success == 1 then
			local chunk = chunksForUID[index];
			if chunk then
				C_ChatInfo.SendAddonMessage("ATTC", "chk\t" .. uid .. "\t" .. index .. "\t" .. chunk, "WHISPER", sender);
			end
		else
			outgoingForSender.uids[uid] = nil;
		end
	end
end

function app:IsAccountLinked(sender)
	return ATTClassicAD.LinkedAccounts[sender] or ATTClassicAD.LinkedAccounts[strsplit("-", sender)[1]];
end
function app:RecalculateAccountWideData()
	for key,data in pairs(ATTAccountWideData) do
		if type(data) == "table" then
			data = {};
			for guid,character in pairs(ATTCharacterData) do
				local characterData = character[key];
				if characterData then
					for index,_ in pairs(characterData) do
						data[index] = 1;
					end
				end
			end
			ATTAccountWideData[key] = data;
		end
	end
	local deaths = 0;
	for guid,character in pairs(ATTCharacterData) do
		if character.Deaths then
			deaths = deaths + character.Deaths;
		end
	end
	ATTAccountWideData.Deaths = deaths;
end
function app:ReceiveSyncRequest(sender, battleTag)
	if battleTag ~= select(2, BNGetInfo()) then
		-- Check to see if the the character/account is linked.
		if not (ATTClassicAD.LinkedAccounts[sender] or ATTClassicAD.LinkedAccounts[battleTag]) then
			return false;
		end
	end
	
	-- Whitelist the character name, if not already. (This is needed for future sync methods)
	ATTClassicAD.LinkedAccounts[sender] = true;
	
	-- Generate the sync string (there may be several depending on how many alts there are)
	local msgs = {};
	local msg = "?\tsyncsum";
	for guid,character in pairs(ATTCharacterData) do
		if character.lastPlayed and not character.ignored then
			local charsummary = "\t" .. guid .. ":" .. character.lastPlayed;
			if (string.len(msg) + string.len(charsummary)) < 255 then
				msg = msg .. charsummary;
			else
				C_ChatInfo.SendAddonMessage("ATTC", msg, "WHISPER", sender);
				msg = "?\tsyncsum" .. charsummary;
			end
		end
	end
	C_ChatInfo.SendAddonMessage("ATTC", msg, "WHISPER", sender);
end
function app:ReceiveSyncSummary(sender, summary, shouldPrint)
	if app:IsAccountLinked(sender) then
		local first = #queue == 0;
		for i,data in ipairs(summary) do
			local guid,lastPlayed = strsplit(":", data);
			local character = ATTCharacterData[guid];
			if not character or not character.lastPlayed or (character.lastPlayed < tonumber(lastPlayed)) and guid ~= app.GUID then
				tinsert(queue, { guid, character and character.text or guid, sender });
			elseif shouldPrint then
				tinsert(queue, { guid, character and character.text or guid, sender, true });
			end
			if first then processQueue(); end
		end
	end
end
function app:ReceiveSyncSummaryResponse(sender, summary)
	if app:IsAccountLinked(sender) then
		local rawMsg;
		for i,guid in ipairs(summary) do
			local character = ATTCharacterData[guid];
			if character then
				-- Put easy character data into a raw data string
				local rawData = character.guid .. ":" .. character.name .. ":" .. character.lvl .. ":" .. character.text .. ":" .. character.realm .. ":" .. character.factionID .. ":" .. character.classID .. ":" .. character.raceID .. ":" .. character.lastPlayed .. ":" .. character.Deaths;
				
				-- Difficult character data
				rawData = rawData .. ":ActiveSkills";
				for skillID,skill in pairs(character.ActiveSkills) do
					rawData = rawData .. "/" .. skillID .. "|" .. skill[1] .. "|" .. skill[2];
				end
				
				for i,field in ipairs(whiteListedFields) do
					if character[field] then
						rawData = rawData .. ":" .. field;
						for index,value in pairs(character[field]) do
							if value then
								rawData = rawData .. "/" .. index;
							end
						end
					end
				end
				
				if not rawMsg then
					rawMsg = rawData;
				else
					rawMsg = rawMsg .. "\t" .. rawData;
				end
			end
		end
		
		if rawMsg then
			-- Send Addon Message Back
			local length = string.len(rawMsg);
			local chunks = {};
			for i=1,length,241 do
				tinsert(chunks, string.sub(rawMsg, i, math.min(length, i + 240)));
			end
			local outgoingForSender = outgoing[sender];
			if not outgoingForSender then
				outgoingForSender = { ["total"] = 0, ["uids"] = {}};
				outgoing[sender] = outgoingForSender;
			end
			local uid = outgoingForSender.total + 1;
			outgoingForSender.uids[uid] = chunks;
			outgoingForSender.total = uid;
			
			-- Send Addon Message Back
			C_ChatInfo.SendAddonMessage("ATTC", "chks\t" .. uid .. "\t" .. #chunks, "WHISPER", sender);
		end
	end
end
function app:Synchronize(automatically)
	-- Update the last played timestamp. This ensures the sync process does NOT destroy unsaved progress on this character.
	local battleTag = select(2, BNGetInfo());
	if battleTag then
		app.CurrentCharacter.lastPlayed = time();
		local any, msg = false, "?\tsync\t" .. battleTag;
		for playerName,allowed in pairs(ATTClassicAD.LinkedAccounts) do
			if allowed and not string.find(playerName, "#") then
				C_ChatInfo.SendAddonMessage("ATTC", msg, "WHISPER", playerName);
				any = true;
			end
		end
		if not any and not automatically then
			app.print("You need to link a character or BNET account in the settings first before you can Sync accounts.");
		end
	end
end
function app:SynchronizeWithPlayer(playerName)
	-- Update the last played timestamp. This ensures the sync process does NOT destroy unsaved progress on this character.
	local battleTag = select(2, BNGetInfo());
	if battleTag then
		app.CurrentCharacter.lastPlayed = time();
		C_ChatInfo.SendAddonMessage("ATTC", "?\tsync\t" .. battleTag, "WHISPER", playerName);
	end
end
end)();

-- Lua Constructor Lib
local fieldCache = {};
local CacheField, CacheFields;
local _cache;
(function()
local currentMaps = {};
local fieldCache_g,fieldCache_f, fieldConverters;
CacheField = function(group, field, value)
	fieldCache_g = rawget(fieldCache, field);
	fieldCache_f = rawget(fieldCache_g, value);
	if fieldCache_f then
		tinsert(fieldCache_f, group);
	else
		rawset(fieldCache_g, value, {group});
	end
end
-- These are the fields we store.
fieldCache["achievementID"] = {};
fieldCache["creatureID"] = {};
fieldCache["currencyID"] = {};
fieldCache["factionID"] = {};
fieldCache["flightPathID"] = {};
fieldCache["headerID"] = {};
fieldCache["itemID"] = {};
fieldCache["itemIDAsCost"] = {};
fieldCache["mapID"] = {};
fieldCache["objectID"] = {};
fieldCache["questID"] = {};
fieldCache["requireSkill"] = {};
fieldCache["sourceQuestID"] = {};
fieldCache["speciesID"] = {};
fieldCache["spellID"] = {};
fieldCache["tierID"] = {};
fieldCache["titleID"] = {};
fieldCache["toyID"] = {};
local cacheCreatureID = function(group, value)
	if value > 0 then
		CacheField(group, "creatureID", value);
	end
end;
local cacheMapID = function(group, mapID)
	if not currentMaps[mapID] or currentMaps[mapID] == 0 then
		currentMaps[mapID] = 1;
		CacheField(group, "mapID", mapID);
	else
		currentMaps[mapID] = currentMaps[mapID] + 1;
	end
end;
local cacheObjectID = function(group, value)
	-- WARNING: DEV ONLY START
	if not app.ObjectNames[value] then
		print("Object Missing Name ", value);
		app.ObjectNames[value] = "Object #" .. value;
	end
	-- WARNING: DEV ONLY END
	CacheField(group, "objectID", value);
end;
fieldConverters = {
	-- Simple Converters
	["achievementID"] = function(group, value)
		CacheField(group, "achievementID", value);
	end,
	["achID"] = function(group, value)
		CacheField(group, "achievementID", value);
	end,
	["altAchID"] = function(group, value)
		CacheField(group, "achievementID", value);
	end,
	["creatureID"] = cacheCreatureID,
	["currencyID"] = function(group, value)
		CacheField(group, "currencyID", value);
	end,
	["factionID"] = function(group, value)
		CacheField(group, "factionID", value);
	end,
	["flightPathID"] = function(group, value)
		CacheField(group, "flightPathID", value);
	end,
	["headerID"] = function(group, value)
		-- WARNING: DEV ONLY START
		if not L["HEADER_NAMES"][value] then
			print("Header Missing Name ", value);
			L["HEADER_NAMES"][value] = "Header #" .. value;
		end
		-- WARNING: DEV ONLY END
		CacheField(group, "headerID", value);
	end,
	["itemID"] = function(group, value)
		if group.isToy then CacheField(group, "toyID", value); end
		CacheField(group, "itemID", value);
	end,
	["mapID"] = cacheMapID,
	["npcID"] = cacheCreatureID,
	["objectID"] = cacheObjectID,
	["questID"] = function(group, value)
		CacheField(group, "questID", value);
	end,
	["otherQuestData"] = function(group, value)
		CacheFields(value);
	end,
	["requireSkill"] = function(group, value)
		CacheField(group, "requireSkill", value);
	end,
	["speciesID"] = function(group, value)
		CacheField(group, "speciesID", value);
	end,
	["spellID"] = function(group, value)
		CacheField(group, "spellID", value);
	end,
	["tierID"] = function(group, value)
		CacheField(group, "tierID", value);
	end,
	["titleID"] = function(group, value)
		CacheField(group, "titleID", value);
	end,
	
	-- Complex Converters
	["crs"] = function(group, value)
		for i,creatureID in ipairs(value) do
			cacheCreatureID(group, creatureID);
		end
	end,
	["qgs"] = function(group, value)
		for i,questGiverID in ipairs(value) do
			cacheCreatureID(group, questGiverID);
		end
	end,
	["altQuests"] = function(group, value)
		_cache = rawget(fieldConverters, "questID");
		for i,questID in ipairs(value) do
			_cache(group, questID);
		end
	end,
	["providers"] = function(group, value)
		for k,v in pairs(value) do
			if v[2] > 0 then
				if v[1] == "n" then
					cacheCreatureID(group, v[2]);
				elseif v[1] == "i" then
					CacheField(group, "itemIDAsCost", v[2]);
				elseif v[1] == "o" then
					cacheObjectID(group, v[2]);
				end
			end
		end
	end,
	["maps"] = function(group, value)
		for i,mapID in ipairs(value) do
			cacheMapID(group, mapID);
		end
	end,
	["coord"] = function(group, coord)
		if coord[3] and not (group.instanceID or group.mapID or group.objectiveID) then 
		cacheMapID(group, coord[3]); end
	end,
	["coords"] = function(group, value)
		if not (group.instanceID or group.mapID or group.objectiveID) then
			for i,coord in ipairs(value) do
				if coord[3] then cacheMapID(group, coord[3]); end
			end
		end
	end,
	["cost"] = function(group, value)
		if type(value) == "number" then
			return;
		else
			for k,v in pairs(value) do
				if v[1] == "i" and v[2] > 0 then
					CacheField(group, "itemIDAsCost", v[2]);
				elseif v[1] == "o" and v[2] > 0 then
					cacheObjectID(group, v[2]);
				end
			end
		end
	end,
	["c"] = function(group, value)
		if not containsValue(value, app.ClassIndex) then
			rawset(group, "nmc", true); -- "Not My Class"
		end
	end,
	["r"] = function(group, value)
		if value ~= app.FactionID then
			rawset(group, "nmr", true);	-- "Not My Race"
		end
	end,
	["races"] = function(group, value)
		if not containsValue(value, app.RaceIndex) then
			rawset(group, "nmr", true);	-- "Not My Race"
		end
	end,
	["sourceQuests"] = function(group, value)
		for i,questID in ipairs(value) do
			CacheField(group, "sourceQuestID", questID);
		end
	end,
};
local uncacheMap = function(group, mapID)
	currentMaps[mapID] = (currentMaps[mapID] or 0) - 1;
end;
local mapKeyConverters = {
	["mapID"] = uncacheMap,
	["maps"] = function(group, maps)
		for _,mapID in ipairs(maps) do
			uncacheMap(group, mapID);
		end
	end,
	["coord"] = function(group, coord)
		if coord[3] and not (group.instanceID or group.mapID or group.objectiveID) then uncacheMap(group, coord[3]); end
	end,
	["coords"] = function(group, coords)
		if not (group.instanceID or group.mapID or group.objectiveID) then
			for i,coord in ipairs(coords) do
				if coord[3] then uncacheMap(group, coord[3]); end
			end
		end
	end,
};
CacheFields = function(group)
	local n = 0;
	local clone, mapKeys, key, value, hasG = {};
	for key,value in pairs(group) do
		if key == "g" then
			hasG = true;
		else
			n = n + 1
			rawset(clone, n, key);
		end
	end
	for i=1,n,1 do
		key = rawget(clone, i);
		_cache = rawget(fieldConverters, key);
		if _cache then
			value = rawget(group, key);
			_cache(group, value);
			if rawget(mapKeyConverters, key) then
				if not mapKeys then mapKeys = {}; end
				mapKeys[key] = value;
			end
		end
	end
	if hasG then
		for i,subgroup in ipairs(rawget(group, "g")) do
			CacheFields(subgroup);
		end
	end
	if mapKeys then
		for key,value in pairs(mapKeys) do
			rawget(mapKeyConverters, key)(group, value);
		end
	end
end
end)();
local function SearchForFieldRecursively(group, field, value)
	if group.g then
		-- Go through the sub groups and determine if any of them have a response.
		local first = nil;
		for i, subgroup in ipairs(group.g) do
			local g = SearchForFieldRecursively(subgroup, field, value);
			if g then
				if first then
					-- Merge!
					for j,data in ipairs(g) do
						tinsert(first, data);
					end
				else
					-- Cool! (This should be the most common occurance)
					first = g;
				end
			end
		end
		if group[field] == value then
			-- OH BOY, WE FOUND IT!
			if first then
				return tinsert(first, group);
			else
				return { group };
			end
		end
		return first;
	elseif group[field] == value then
		-- OH BOY, WE FOUND IT!
		return { group };
	end
end
local function SearchForFieldContainer(field)
	if field then return rawget(fieldCache, field); end
end
local function SearchForField(field, id)
	if field and id then
		_cache = rawget(fieldCache, field);
		if _cache then return rawget(_cache, id), field, id; end
		return SearchForFieldRecursively(app:GetDataCache(), field, id), field, id;
	end
end
app.SearchForFieldContainer = SearchForFieldContainer;
app.SearchForField = SearchForField;

-- Item Information Lib
local function SearchForLink(link)
	if string.match(link, "item") then
		-- Parse the link and get the itemID and bonus ids.
		local itemString = string.match(link, "item[%-?%d:]+") or link;
		if itemString then
			-- Cache the Item ID and the Suffix ID.
			local _, itemID, _, _, _, _, _, suffixID = strsplit(":", itemString);
			if itemID then
				-- Ensure that the itemID and suffixID are properly formatted.
				itemID = tonumber(itemID) or 0;
				if itemID > 0 then
					if suffixID and suffixID ~= "" then
						suffixID = tonumber(suffixID) or 0;
						if suffixID > 0 then
							-- Record the Suffix as valid for this itemID.
							local suffixes = GetDataSubMember("ValidSuffixesPerItemID", itemID);
							if not suffixes then
								suffixes = {};
								GetDataSubMember("ValidSuffixesPerItemID", itemID, suffixes);
							end
							if not suffixes[suffixID] then
								suffixes[suffixID] = 1;
								app.ClearItemCache();
							end
						end
					end
					return SearchForField("itemID", itemID);
				end
			end
		end
	else
		local kind, id, paramA, paramB = strsplit(":", link);
		kind = string.lower(kind);
		if string.sub(kind,1,2) == "|c" then
			kind = string.sub(kind,11);
		end
		if string.sub(kind,1,2) == "|h" then
			kind = string.sub(kind,3);
		end
		if id then id = tonumber(select(1, strsplit("|[", id)) or id); end
		--print(kind, id, paramA, paramB);
		--print(string.gsub(string.gsub(link, "|c", "c"), "|h", "h"));
		if kind == "itemid" then
			return SearchForField("itemID", id);
		elseif kind == "questid" or kind == "quest" then
			return SearchForField("questID", id);
		elseif kind == "creatureid" or kind == "npcid" then
			return SearchForField("creatureID", id);
		elseif kind == "currencyid" or kind == "currency" then
			return SearchForField("currencyID", id);
		elseif kind == "spellid" or kind == "spell" or kind == "enchant" or kind == "talent" then
			return SearchForField("spellID", id);
		else
			return SearchForField(string.gsub(kind, "id", "ID"), id);
		end
	end
end
local function SearchForMissingItemsRecursively(group, listing)
	if group.visible then
		if (group.collectible or (group.itemID and group.total and group.total > 0)) and (not group.b or group.b == 2 or group.b == 3) then
			table.insert(listing, group);
		end
		if group.g and group.expanded then
			-- Go through the sub groups and determine if any of them have a response.
			for i, subgroup in ipairs(group.g) do
				SearchForMissingItemsRecursively(subgroup, listing);
			end
		end
	end
end
local function SearchForMissingItems(group)
	local listing = {};
	SearchForMissingItemsRecursively(group, listing);
	return listing;
end
local function SearchForMissingItemNames(group)
	-- Auctionator needs unique Item Names. Nothing else.
	local uniqueNames = {};
	for i,group in ipairs(SearchForMissingItems(group)) do
		local name = group.name;
		if name then uniqueNames[name] = 1; end
	end
	
	-- Build the array of names.
	local arr = {};
	for key,value in pairs(uniqueNames) do
		table.insert(arr, key);
	end
	return arr;
end
local function UpdateSearchResults(searchResults)
	if searchResults and #searchResults > 0 then
		-- Attempt to cleanly refresh the data.
		local fresh = false;
		
		-- Mark all results as marked. This prevents a double +1 on parents.
		for i,result in ipairs(searchResults) do
			if result.visible and result.parent and result.parent.total then
				result.marked = true;
			end
		end
		
		-- Only unmark and +1 marked search results.
		for i,result in ipairs(searchResults) do
			if result.marked then
				result.marked = nil;
				if result.total then
					-- This is an item that has a relative set of groups
					app.UpdateParentProgress(result);
					
					-- If this is NOT a group...
					if not result.g then
						-- If we've collected the item, use the "Show Collected Items" filter.
						result.visible = app.CollectedItemVisibilityFilter(result);
					end
				else	
					app.UpdateParentProgress(result.parent);
					
					-- If we've collected the item, use the "Show Collected Items" filter.
					result.visible = app.CollectedItemVisibilityFilter(result);
				end
				fresh = true;
			end
		end
		
		-- If the data is fresh, don't force a refresh.
		app:RefreshData(fresh, true);
	end
end
app.SearchForLink = SearchForLink;



-- Tooltip Functions
local EXTERMINATOR = {
	["Player-4372-00B131BB"] = true,	-- Aivet
	["Player-4372-004A0418"] = true,	-- Jubilee
	["Player-4372-00273DCA"] = true,	-- Havadin
	["Player-4372-00DED426"] = true,	-- Krieve
	["Player-4372-00862D32"] = true,	-- Aethbric
	["Player-4372-0128B376"] = true,	-- Alizewsaur
	["Player-4372-012A730E"] = true,	-- Allysandra
	["Player-4372-00FE5CE7"] = true,	-- Amiera
	["Player-4372-0073B95B"] = true,	-- Amyralynn
	["Player-4372-0087049A"] = true,	-- Asandra
	["Player-4372-003159A9"] = true,	-- Astromarus
	["Player-4372-006A97BA"] = true,	-- Azwel
	["Player-4372-0014521D"] = true,	-- Bombeon
	["Player-4372-00E86132"] = true,	-- Borlemont
	["Player-4372-010B9178"] = true,	-- Braven
	["Player-4372-0063664F"] = true,	-- Brittbrat
	["Player-4372-001BA8B1"] = true,	-- Darkirontank
	["Player-4372-0100DF23"] = true,	-- Dizplaced
	["Player-4372-01230376"] = true,	-- Drixxtwo
	["Player-4372-002719C4"] = true,	-- Drunkninja
	["Player-4372-0124174F"] = true,	-- Dubsteve
	["Player-4372-00BD6CC7"] = true,	-- Enthira
	["Player-4372-00A3A0FD"] = true,	-- Fairplay
	["Player-4372-0046DDA0"] = true,	-- Firasia
	["Player-4372-004A7A3F"] = true,	-- Fortress
	["Player-4372-00CF7821"] = true,	-- Glas
	["Player-4372-00E7DEC4"] = true,	-- Gnubs
	["Player-4372-0108DCC1"] = true,	-- Grotesque
	["Player-4372-00E8CC3C"] = true,	-- Hairyplodder
	["Player-4372-00D38E94"] = true,	-- Havachant
	["Player-4372-00312AD9"] = true,	-- Hewn
	["Player-4372-0046F7E8"] = true,	-- Holochops
	["Player-4372-007AF4B7"] = true,	-- Intothefray
	["Player-4372-01125B10"] = true,	-- Jonaya
	["Player-4372-011C1FE9"] = true,	-- Katalysm
	["Player-4372-00EBCC07"] = true,	-- Lilithann
	["Player-4372-0075A187"] = true,	-- Loknido
	["Player-4372-01390D2A"] = true,	-- Manamontanna
	["Player-4372-00FE5DA2"] = true,	-- Mimico
	["Player-4372-00D7B345"] = true,	-- Narom
	["Player-4372-01353958"] = true,	-- Naromot
	["Player-4372-01294037"] = true,	-- Necrid
	["Player-4372-00793732"] = true,	-- Nirv
	["Player-4372-01250D6D"] = true,	-- Pewpeu
	["Player-4372-0008B144"] = true,	-- Pixl
	["Player-4372-00C2F945"] = true,	-- Rooni
	["Player-4372-0058A418"] = true,	-- Saitosan [Druid]
	["Player-4372-0123A5BE"] = true,	-- Sheisskopf
	["Player-4372-00F82168"] = true,	-- Semiha
	["Player-4372-001F92DA"] = true,	-- Shadrac
	["Player-4372-00732218"] = true,	-- Solow
	["Player-4372-01091DE4"] = true,	-- Tacolock
	["Player-4372-00451B8E"] = true,	-- Tinybit
	["Player-4372-00E5AE25"] = true,	-- Villeinia
	["Player-4372-0066A25C"] = true,	-- Viran
	["Player-4372-00D96703"] = true,	-- Worfin
};
local GOLD_TYCOON = {
	["Player-4372-004A0418"] = true,	-- Jubilee
	["Player-4372-00273DCA"] = true,	-- Havadin
	["Player-4372-0068D548"] = true,	-- Headphones
	["Player-4372-00F2D620"] = true,	-- Notloknido
	["Player-4372-00FF84F0"] = true,	-- Saitosan [Priest]
};
local SCARAB_LORD = {
	["Player-4372-000B3C4D"] = true,	-- Congelatore
	["Player-4372-00A64EA0"] = true,	-- Macpayn
};
local function AttachTooltipRawSearchResults(self, lineNumber, group)
	if group then
		-- If there was info text generated for this search result, then display that first.
		if group.tooltipInfo and #group.tooltipInfo > 0 then
			local left, right;
			local name = self:GetName() .. "TextLeft";
			for i,entry in ipairs(group.tooltipInfo) do
				local found = false;
				left = entry.left;
				for i=self:NumLines(),1,-1 do
					if _G[name..i]:GetText() == left then
						found = true;
						break;
					end
				end
				if not found then
					right = entry.right;
					if right then
						self:AddDoubleLine(left or " ", right);
					elseif entry.r then
						if entry.wrap then
							self:AddLine(left, entry.r / 255, entry.g / 255, entry.b / 255, 1);
						else
							self:AddLine(left, entry.r / 255, entry.g / 255, entry.b / 255);
						end
					else
						if entry.wrap then
							self:AddLine(left, nil, nil, nil, 1);
						else
							self:AddLine(left);
						end
					end
				end
			end
		end
		
		-- If the user has Show Collection Progress turned on.
		if group.encounterID then
			self:Show();
		elseif group.collectionText and self:NumLines() > 0 then
			local rightSide = _G[self:GetName() .. "TextRight" .. (lineNumber or 1)];
			if rightSide then
				rightSide:SetText(group.collectionText);
				rightSide:Show();
			end
		end
	end
end
local function AttachTooltipSearchResults(self, lineNumber, search, method, ...)
	AttachTooltipRawSearchResults(self, lineNumber, GetCachedSearchResults(search, method, ...));
end
local function AttachTooltip(self)
	if not self.ATTCProcessing then
		self.ATTCProcessing = true;
		if (not InCombatLockdown() or app.Settings:GetTooltipSetting("DisplayInCombat")) and app.Settings:GetTooltipSetting("Enabled") then
			local numLines = self:NumLines();
			if numLines > 0 then
				--[[--
				-- Debug all of the available fields on the tooltip.
				for i,j in pairs(self) do
					self:AddDoubleLine(tostring(i), tostring(j));
				end
				self:Show();
				self:AddDoubleLine("GetItem", tostring(select(2, self:GetItem()) or "nil"));
				self:AddDoubleLine("GetSpell", tostring(select(2, self:GetSpell()) or "nil"));
				self:AddDoubleLine("GetUnit", tostring(select(2, self:GetUnit()) or "nil"));
				--]]--
				
				-- Does the tooltip have an owner?
				local owner = self:GetOwner();
				if owner then
					if owner.SpellHighlightTexture then
						-- Actionbars, don't want that.
						return true;
					end
					if owner.cooldownWrapper then
						local parent = owner:GetParent();
						if parent then
							parent = parent:GetParent();
							if parent and parent.fanfareToys then
								-- Toy Box, don't want that.
								return true;
							end
						end
					end
				end
				
				-- Does the tooltip have a target?
				local target = select(2, self:GetUnit());
				if target then
					-- Yes.
					local guid = UnitGUID(target);
					if guid then
						local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid);
						-- print(guid, type, npcID);
						if type == "Player" then
							if guid == "Player-4372-0000390A" then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then
									leftSide:SetText("|cffff8000" .. UnitName(target) .. " the Completionist|r");
								end
								local rightSide = _G[self:GetName() .. "TextRight2"];
								leftSide = _G[self:GetName() .. "TextLeft2"];
								if leftSide and rightSide then
									leftSide:SetText(L["TITLE"]);
									leftSide:Show();
									rightSide:SetText("Author");
									rightSide:Show();
								else
									self:AddDoubleLine(L["TITLE"], "Author");
								end
							elseif SCARAB_LORD[guid] then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then leftSide:SetText("|cffff8000Scarab Lord " .. UnitName(target) .. "|r"); end
							elseif GOLD_TYCOON[guid] then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then leftSide:SetText("|cffff8000Gold Tycoon " .. UnitName(target) .. "|r"); end
							elseif EXTERMINATOR[guid] then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then leftSide:SetText("|cffa335ee" .. UnitName(target) .. " the Exterminator|r"); end
							elseif guid == "Player-4372-00006B41" then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then leftSide:SetText("|cffF58CBA" .. UnitName(target) .. " the Huggler|r"); end
							end
						elseif type == "Creature" or type == "Vehicle" then
							if app.Settings:GetTooltipSetting("creatureID") then self:AddDoubleLine(L["CREATURE_ID"], tostring(npcID)); end
							AttachTooltipSearchResults(self, 1, "creatureID:" .. npcID, SearchForField, "creatureID", tonumber(npcID));
						end
						return true;
					end
				end
				
				-- Does the tooltip have a spell? [Mount Journal, Action Bars, etc]
				local spellID = select(2, self:GetSpell());
				if spellID then
					AttachTooltipSearchResults(self, 1, "spellID:" .. spellID, SearchForField, "spellID", spellID);
					self:Show();
					if owner and owner.ActiveTexture then
						self.ATTCProcessing = nil;
					end
					return true;
				end
				
				-- Does the tooltip have an itemlink?
				local link = select(2, self:GetItem());
				if link then AttachTooltipSearchResults(self, 1, link, SearchForLink, link); end
				
				-- If the owner has a ref, it's an ATT row. Ignore it.
				if owner and owner.ref then return true; end
				
				-- Addons Menu?
				if numLines == 2 then
					local leftSide = _G[self:GetName() .. "TextLeft1"];
					if leftSide and leftSide:GetText() == "ATT-Classic" then
						local reference = app:GetDataCache();
						self:ClearLines();
						self:AddDoubleLine(L["TITLE"], GetProgressColorText(reference.progress, reference.total), 1, 1, 1);
						self:AddDoubleLine(app.Settings:GetModeString(), app.GetNumberOfItemsUntilNextPercentage(reference.progress, reference.total), 1, 1, 1);
						self:AddLine(reference.description, 0.4, 0.8, 1, 1);
						return true;
					end
				end
			end
		end
	end
end
local function ClearTooltip(self)
	self.ATTCProcessing = nil;
end

-- Map Information Lib
(function()
local __TomTomWaypointCacheIndexY = { __index = function(t, y)
	local o = {};
	rawset(t, y, o);
	return o;
end };
local __TomTomWaypointCacheIndexX = { __index = function(t, x)
	local o = setmetatable({}, __TomTomWaypointCacheIndexY);
	rawset(t, x, o);
	return o;
end };
local __TomTomWaypointCache, __TomTomWaypointFirst = setmetatable({}, { __index = function(t, mapID)
	local o = setmetatable({}, __TomTomWaypointCacheIndexX);
	rawset(t, mapID, o);
	return o;
end });
local function AddTomTomWaypointCache(coord, group)
	local mapID = coord[3];
	if mapID then
		__TomTomWaypointCache[mapID][math.floor(coord[1] * 10)][math.floor(coord[2] * 10)][group.key .. ":" .. group[group.key]] = group;
	else
		print("Missing mapID for", group.text, coord[1], coord[2], mapID);
	end
end
local function AddTomTomWaypointInternal(group, depth)
	if group.visible then
		if group.plotting then return false; end
		group.plotting = true;
		if group.g then
			depth = depth + 1;
			for _,o in ipairs(group.g) do
				AddTomTomWaypointInternal(o, depth);
			end
			depth = depth - 1;
		end
		
		local searchResults = ResolveSymbolicLink(group);
		if searchResults then
			depth = depth + 1;
			for _,o in ipairs(searchResults) do
				AddTomTomWaypointInternal(o, depth);
			end
			depth = depth - 1;
		end
		group.plotting = nil;
		
		if TomTom then
			if (depth == 0 and not __TomTomWaypointFirst) or not group.saved then
				if group.coords or group.coord then
					__TomTomWaypointFirst = false;
					if group.coords then
						for _,coord in ipairs(group.coords) do
							AddTomTomWaypointCache(coord, group);
						end
					end
					if group.coord then AddTomTomWaypointCache(group.coord, group); end
				end
			end
		elseif C_SuperTrack then
			if depth == 0 or __TomTomWaypointFirst then
				local coord = group.coords and group.coords[1] or group.coord;
				if coord then
					__TomTomWaypointFirst = false;
					C_SuperTrack.SetSuperTrackedUserWaypoint(false);
					C_Map.ClearUserWaypoint();
					C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(coord[3] or defaultMapID,coord[1]/100,coord[2]/100));
					C_SuperTrack.SetSuperTrackedUserWaypoint(true);
				end
			end
		end
	end
end
AddTomTomWaypoint = function(group)
	if TomTom or C_SuperTrack then
		__TomTomWaypointFirst = true;
		wipe(__TomTomWaypointCache);
		AddTomTomWaypointInternal(group, 0);
		if TomTom then
			local xnormal;
			for mapID,c in pairs(__TomTomWaypointCache) do
				for x,d in pairs(c) do
					xnormal = x / 1000;
					for y,datas in pairs(d) do
						-- Determine the Root and simplify NPC/Object data.
						-- An NPC/Object can contain all of the other types by reference and don't need individual entries.
						local root,rootByCreatureID,rootByObjectID = {},{},{};
						for key,group in pairs(datas) do
							local creatureID, objectID;
							if group.npcID or group.creatureID then
								creatureID = group.npcID or group.creatureID;
							elseif group.objectID then
								objectID = group.objectID;
							else
								if group.providers then
									for i,provider in ipairs(group.providers) do
										if provider[1] == "n" then
											if provider[2] > 0 then
												creatureID = provider[2];
											end
										elseif provider[1] == "o" then
											if provider[2] > 0 then
												objectID = provider[2];
											end
										end
									end
								end
								if group.qgs then
									local count = #group.qgs;
									if count > 1 and group.coords and #group.coords == count then
										for i=count,1,-1 do
											local coord = group.coords[i];
											if coord[3] == mapID and math.floor(coord[1] * 10) == x and math.floor(coord[2] * 10) == y then
												creatureID = group.qgs[i];
												break;
											end
										end
										if not creatureID then
											creatureID = group.qgs[1];
										end
									else
										creatureID = group.qgs[1];
									end
								end
								if group.crs then
									local count = #group.crs;
									if count > 1 and group.coords and #group.coords == count then
										for i=count,1,-1 do
											local coord = group.coords[i];
											if coord[3] == mapID and math.floor(coord[1] * 10) == x and math.floor(coord[2] * 10) == y then
												creatureID = group.crs[i];
												break;
											end
										end
										if not creatureID then
											creatureID = group.crs[1];
										end
									else
										creatureID = group.crs[1];
									end
								end
							end
							if creatureID then
								if not rootByCreatureID[creatureID] then
									rootByCreatureID[creatureID] = group;
									tinsert(root, app.CreateNPC(creatureID));
								end
							elseif objectID then
								if not rootByObjectID[objectID] then
									rootByObjectID[objectID] = group;
									tinsert(root, app.CreateObject(objectID));
								end
							else
								tinsert(root, group);
							end
						end
						
						local first = root[1];
						if first then
							local opt = { from = "ATT", persistent = false };
							opt.title = first.text or RETRIEVING_DATA;
							local displayID = GetDisplayID(first);
							if displayID then
								opt.minimap_displayID = displayID;
								opt.worldmap_displayID = displayID;
							end
							if first.icon then
								opt.minimap_icon = first.icon;
								opt.worldmap_icon = first.icon;
							end
							
							if TomTom.DefaultCallbacks then
								local callbacks = TomTom:DefaultCallbacks();
								callbacks.minimap.tooltip_update = nil;
								callbacks.minimap.tooltip_show = function(event, tooltip, uid, dist)
									tooltip:ClearLines();
									for i,o in ipairs(root) do
										local line = tooltip:NumLines() + 1;
										tooltip:AddLine(o.text);
										if o.title and not o.explorationID then tooltip:AddLine(o.title); end
										local key = o.key;
										if key == "objectiveID" then
											if o.parent and o.parent.questID then tooltip:AddLine("Objective for " .. o.parent.text); end
										elseif key == "criteriaID" then
											tooltip:AddLine("Criteria for " .. GetAchievementLink(group.achievementID));
										else
											if key == "npcID" then key = "creatureID"; end
											AttachTooltipSearchResults(tooltip, 1, key .. ":" .. o[o.key], SearchForField, key, o[o.key], line);
										end
									end
									tooltip:Show();
								end
								callbacks.world.tooltip_update = nil;
								callbacks.world.tooltip_show = callbacks.minimap.tooltip_show;
								opt.callbacks = callbacks;
							end
							TomTom:AddWaypoint(mapID, xnormal, y / 1000, opt);
						end
					end
				end
			end
			TomTom:SetClosestWaypoint();
		end
		if C_SuperTrack and group.questID and C_QuestLog.IsOnQuest(group.questID) then
			C_SuperTrack.SetSuperTrackedQuestID(group.questID);
		end
	else
		app.print("You must have TomTom installed to plot coordinates.");
	end
end
end)();
local function OpenMainList()
	app:OpenWindow("Prime");
end
local function RefreshSaves()
	local waitTimer = 30;
	while waitTimer > 0 do
		coroutine.yield();
		waitTimer = waitTimer - 1;
	end
	
	-- While the player is in combat, wait for combat to end.
	while InCombatLockdown() do coroutine.yield(); end
	
	-- While the player is still logging in, wait.
	while not app.GUID do coroutine.yield(); end
	
	-- Cache the lockouts across your account.
	local serverTime = GetServerTime();
	
	-- Check to make sure that the old instance data has expired
	for guid,character in pairs(ATTCharacterData) do
		local locks = character.Lockouts;
		if locks then
			for name,lock in pairs(locks) do
				if serverTime >= lock.reset then
					locks[name] = nil;
				end
			end
		end
	end
	
	-- While the player is still waiting for information, wait.
	-- NOTE: Usually, this is only 1 wait.
	local counter = 0;
	while GetNumSavedInstances() < 1 do
		coroutine.yield();
		counter = counter + 1;
		if counter > 600 then
			app.refreshingSaves = false;
			coroutine.yield(false);
		end
	end
	
	-- Update Saved Instances
	local converter = L["SAVED_TO_DJ_INSTANCES"];
	local myLockouts = app.CurrentCharacter.Lockouts;
	for instanceIter=1,GetNumSavedInstances() do
		local name, id, reset, difficulty, locked, _, _, isRaid, _, _, numEncounters = GetSavedInstanceInfo(instanceIter);
		if locked then
			-- Update the name of the instance and cache the lock for this instance
			name = converter[name] or name;
			reset = serverTime + reset;
			local lock = myLockouts[name];
			if not lock then
				lock = { ["id"] = id, ["reset"] = reset, ["encounters"] = {}};
				myLockouts[name] = lock;
			end
			
			-- Check Encounter locks
			for encounterIter=1,numEncounters do
				local name, _, isKilled = GetSavedInstanceEncounterInfo(instanceIter, encounterIter);
				if not lock.encounters[encounterIter] then
					table.insert(lock.encounters, { ["name"] = name, ["isKilled"] = isKilled });
				elseif isKilled then
					lock.encounters[encounterIter].isKilled = true;
				end
			end
		end
	end
	
	-- Mark that we're done now.
	app:UpdateWindows(nil, true);
end
local function RefreshSkills()
	-- Store Skill Data
	local activeSkills = app.CurrentCharacter.ActiveSkills;
	wipe(activeSkills);
	rawset(app.SpellNameToSpellID, 0, nil);
	app.GetSpellName(0);
	for index=GetNumSkillLines(),2,-1 do
		local skillName, header, isExpanded, skillRank, numTempPoints, skillModifier,
			skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType,
			skillDescription = GetSkillLineInfo(index);
		if not header then
			local spellID = app.SpellNameToSpellID[skillName];
			if spellID then
				local spellName = GetSpellInfo(spellID);
				for _,s in pairs(app.SkillIDToSpellID) do
					if GetSpellInfo(s) == spellName then
						spellID = s;
						break;
					end
				end
				activeSkills[spellID] = { skillRank, skillMaxRank };
			else
				-- print(skillName, header, isExpanded, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType, skillDescription);
			end
		end
	end
	
	-- Hunter Only
	if app.ClassIndex == 3 then
		activeSkills[5149] = { 1, 1 };
	end
	
	-- Clone the data for the specializations.
	for specID,spellID in pairs(app.SpecializationSpellIDs) do
		local baseSpell = activeSkills[spellID];
		if baseSpell and (app.CurrentCharacter.Spells[specID] or IsSpellKnown(specID)) then
			activeSkills[specID] = baseSpell;
		end
	end
end
local function RefreshCollections()
	StartCoroutine("RefreshingCollections", function()
		while InCombatLockdown() do coroutine.yield(); end
		app.print("Refreshing collection...");
		app.events.QUEST_LOG_UPDATE();
		
		-- Wait a frame before harvesting item collection status.
		coroutine.yield();
		
		RefreshSkills();
		
		-- Harvest Item Collections that are used by the addon.
		app:GetDataCache();
		
		-- Refresh the Collection Windows!
		app:RefreshData(false, false, true);
		
		-- Report success.
		app.print("Done refreshing collection.");
	end);
end
app.ToggleMainList = function()
	app:ToggleWindow("Prime");
end
app.RefreshCollections = RefreshCollections;
app.OpenMainList = OpenMainList;

-- Tooltip Hooks
(function()
	local GameTooltip_SetCurrencyByID = GameTooltip.SetCurrencyByID;
	GameTooltip.SetCurrencyByID = function(self, currencyID, count)
		-- Make sure to call to base functionality
		GameTooltip_SetCurrencyByID(self, currencyID, count);
		
		if (not InCombatLockdown() or app.Settings:GetTooltipSetting("DisplayInCombat")) and app.Settings:GetTooltipSetting("Enabled") then
			AttachTooltipSearchResults(self, 1, "currencyID:" .. currencyID, SearchForField, "currencyID", currencyID);
			if app.Settings:GetTooltipSetting("currencyID") then self:AddDoubleLine(L["CURRENCY_ID"], tostring(currencyID)); end
			self:Show();
		end
	end
	local GameTooltip_SetCurrencyToken = GameTooltip.SetCurrencyToken;
	GameTooltip.SetCurrencyToken = function(self, tokenID)
		-- Make sure to call to base functionality
		GameTooltip_SetCurrencyToken(self, tokenID);
		
		if (not InCombatLockdown() or app.Settings:GetTooltipSetting("DisplayInCombat")) and app.Settings:GetTooltipSetting("Enabled") then
			-- Determine what kind of list data this is. (Blizzard is whack and using this API call for headers too...)
			local name, isHeader = GetCurrencyListInfo(tokenID);
			if not isHeader then
				-- Determine which currencyID is the one that we're dealing with.
				local cache = SearchForFieldContainer("currencyID");
				if cache then
					-- We only care about currencies in the addon at the moment.
					for currencyID, _ in pairs(cache) do
						-- Compare the name of the currency vs the name of the token
						if select(1, GetCurrencyInfo(currencyID)) == name then
							AttachTooltipSearchResults(self, 1, "currencyID:" .. currencyID, SearchForField, "currencyID", currencyID);
							if app.Settings:GetTooltipSetting("currencyID") then self:AddDoubleLine(L["CURRENCY_ID"], tostring(currencyID)); end
							self:Show();
							break;
						end
					end
				end
			end
		end
	end
end)();

-- Lib Helpers
-- Creates a Base Object Table which will evaluate the provided set of 'fields' (each field value being a keyed function)
app.BaseObjectFields = function(fields)
	return {
	__index = function(t, key)
		_cache = rawget(fields, key);
		return _cache and _cache(t);
	end
};
end

-- Achievement Lib
(function()
local IsAchievementCollected = function(achievementID)
	if app.CurrentCharacter.Achievements[achievementID] then return 1; end
	if app.AccountWideAchievements and ATTAccountWideData.Achievements[achievementID] then return 2; end
end
local SetAchievementCollected = function(achievementID, collected)
	if collected then
		app.CurrentCharacter.Achievements[achievementID] = 1;
		ATTAccountWideData.Achievements[achievementID] = 1;
	elseif app.CurrentCharacter.Achievements[achievementID] then
		app.CurrentCharacter.Achievements[achievementID] = nil;
		ATTAccountWideData.Achievements[achievementID] = nil;
		for guid,characterData in pairs(ATTCharacterData) do
			if characterData.Achievements and characterData.Achievements[achievementID] then
				ATTAccountWideData.Achievements[achievementID] = 1;
				break;
			end
		end
	end
end
local GetAchievementCategory = function(achievementID)
	local data = L.ACHIEVEMENT_DATA[achievementID];
	if data then return data[1]; end
end
local fields = {
	["key"] = function(t)
		return "achievementID";
	end,
	["text"] = function(t)
		return "|cffffff00[" .. (t.name or RETRIEVING_DATA) .. "]|r";
	end,
	["name"] = function(t)
		local data = L.ACHIEVEMENT_DATA[t.achievementID];
		if data and data[2] then return data[2]; end
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectNames[v[2]];
					elseif v[1] == "i" then
						return select(1, GetItemInfo(v[2]));
					end
				end
			end
		end
		if t.spellID then return select(1, GetSpellInfo(t.spellID)); end
	end,
	["icon"] = function(t)
		local data = L.ACHIEVEMENT_DATA[t.achievementID];
		if data and data[3] then return data[3]; end
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectIcons[v[2]] or "Interface\\Worldmap\\Gear_64Grey";
					elseif v[1] == "i" then
						return select(5, GetItemInfoInstant(v[2])) or "Interface\\Worldmap\\Gear_64Grey";
					end
				end
			end
		end
		if t.spellID then return select(3, GetSpellInfo(t.spellID)); end
		return t.parent.icon or "Interface\\Worldmap\\Gear_64Grey";
	end,
	["collectible"] = function(t)
		return app.CollectibleAchievements;
	end,
	["collected"] = function(t)
		return IsAchievementCollected(t.achievementID);
	end,
	["parentCategoryID"] = function(t)
		return GetAchievementCategory(t.achievementID) or -1;
	end,
	["SetAchievementCollected"] = function() return SetAchievementCollected; end,
	["OnUpdateForSpellID"] = function(t)
		if t.collectible then
			local spellID = t.spellID;
			local collected = app.IsSpellKnown(spellID, t.rank);
			if collected then
				app.CurrentCharacter.Spells[spellID] = 1;
				ATTAccountWideData.Spells[spellID] = 1;
			else
				app.CurrentCharacter.Spells[spellID] = nil;
			end
			t.SetAchievementCollected(t.achievementID, collected);
		end
	end,
	["OnUpdate"] = function(t) ResolveSymbolicLink(t); end,
};
app.BaseAchievement = app.BaseObjectFields(fields);

local fieldsWithSpellID = RawCloneData(fields);
fieldsWithSpellID.OnUpdate = fields.OnUpdateForSpellID;
app.BaseAchievementWithSpellID = app.BaseObjectFields(fieldsWithSpellID);
app.CreateAchievement = function(id, t)
	t = constructor(id, t, "achievementID");
	return setmetatable(t, t.spellID and app.BaseAchievementWithSpellID or app.BaseAchievement);
end

local categoryFields = {
	["key"] = function(t)
		return "achievementCategoryID";
	end,
	["text"] = function(t)
		local data = L.ACHIEVEMENT_CRITERIA_DATA[t.achievementCategoryID];
		if data then return data[2]; end
		return RETRIEVING_DATA .. " achcat:" .. t.achievementCategoryID;
	end,
	["icon"] = function(t)
		return app.asset("Category_Achievements");
	end,
	["parentCategoryID"] = function(t)
		local data = L.ACHIEVEMENT_CRITERIA_DATA[t.achievementCategoryID];
		if data then return data[1]; end
		return -1;
	end,
};
app.BaseAchievementCategory = app.BaseObjectFields(categoryFields);
app.CreateAchievementCategory = function(id, t)
	return setmetatable(constructor(id, t, "achievementCategoryID"), app.BaseAchievementCategory);
end

app.CommonAchievementHandlers = {
["ALL_ITEM_COSTS"] = function(t)
	local collected = true;
	for i,provider in ipairs(t.cost) do
		if provider[1] == "i" and GetItemCount(provider[2], true) == 0 then
			collected = false;
			break;
		end
	end
	t.SetAchievementCollected(t.achievementID, collected);
end,
["ANY_ITEM_COST"] = function(t)
	local collected = false;
	for i,provider in ipairs(t.cost) do
		if provider[1] == "i" and GetItemCount(provider[2], true) > 0 then
			collected = true;
			break;
		end
	end
	t.SetAchievementCollected(t.achievementID, collected);
end,
["ALL_ITEM_PROVIDERS"] = function(t)
	local collected = true;
	for i,provider in ipairs(t.providers) do
		if provider[1] == "i" and GetItemCount(provider[2], true) == 0 then
			collected = false;
			break;
		end
	end
	t.SetAchievementCollected(t.achievementID, collected);
end,
["ANY_ITEM_PROVIDER"] = function(t)
	local collected = false;
	for i,provider in ipairs(t.providers) do
		if provider[1] == "i" and GetItemCount(provider[2], true) > 0 then
			collected = true;
			break;
		end
	end
	t.SetAchievementCollected(t.achievementID, collected);
end,
["ALL_SOURCE_QUESTS"] = function(t)
	local collected = true;
	for i,questID in ipairs(t.sourceQuests) do
		if not C_QuestLog.IsQuestFlaggedCompleted(questID) then
			collected = false;
			break;
		end
	end
	t.SetAchievementCollected(t.achievementID, collected);
end,
["ANY_SOURCE_QUEST"] = function(t)
	local collected = false;
	for i,questID in ipairs(t.sourceQuests) do
		if C_QuestLog.IsQuestFlaggedCompleted(questID) then
			collected = true;
			break;
		end
	end
	t.SetAchievementCollected(t.achievementID, collected);
end,
["EXPLORATION_OnUpdate"] = function(t)
	if t.collectible and t.parent then
		if not t.areas then
			local g = (t.sourceParent or t.parent).parent.g;
			if g and #g > 0 then
				for i,o in ipairs(g) do
					if o.headerID == -15 then
						t.areas = o.g;
						break;
					end
				end
				if not t.areas then return true; end
			else
				return true;
			end
		end
		local collected = true;
		for i,o in ipairs(t.areas) do
			if o.collected ~= 1 and app.FilterItemClass_UnobtainableItem(o) then
				collected = false;
				break;
			end
		end
		t.SetAchievementCollected(t.achievementID, collected);
	end
end,
["EXPLORATION_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local clone = app.CreateMiniListForGroup(app.CreateAchievement(t[t.key], t.areas)).data;
		clone.description = t.description;
		return true;
	end
end,
["EXALTED_REP_OnUpdate"] = function(t, factionID)
	if t.collectible then
		if not t.rep then
			local f = app.SearchForField("factionID", factionID);
			if f and #f > 0 then
				t.rep = f[1];
			else
				return true;
			end
		end
		t.SetAchievementCollected(t.achievementID, t.rep.standing == 8);
	end
end,
["EXALTED_REP_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local clone = app.CreateMiniListForGroup(app.CreateAchievement(t[t.key], { t.rep })).data;
		clone.description = t.description;
		return true;
	end
end,
["EXALTED_REP_OnTooltip"] = function(t)
	if t.collectible then
		GameTooltip:AddLine(" ");
		GameTooltip:AddDoubleLine(" |T" .. t.rep.icon .. ":0|t " .. t.rep.text, app.L[t.rep.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
	end
end,
["EXALTED_REPS_OnUpdate"] = function(t, ...)
	if t.collectible then
		if not t.reps then
			local reps = {};
			for i,factionID in ipairs({ ... }) do
				local f = app.SearchForField("factionID", factionID);
				if f and #f > 0 then
					tinsert(reps, f[1]);
				else
					return true;
				end
			end
			if #reps < 1 then return true; end
			t.reps = reps;
		end
		local collected = true;
		for i,faction in ipairs(t.reps) do
			if faction.standing < 8 then
				collected = false;
				break;
			end
		end
		t.SetAchievementCollected(t.achievementID, collected);
	end
end,
["EXALTED_REPS_ANY_OnUpdate"] = function(t, ...)
	if t.collectible then
		if not t.reps then
			local reps = {};
			for i,factionID in ipairs({ ... }) do
				local f = app.SearchForField("factionID", factionID);
				if f and #f > 0 then
					tinsert(reps, f[1]);
				else
					return true;
				end
			end
			if #reps < 1 then return true; end
			t.reps = reps;
		end
		local collected = false;
		for i,faction in ipairs(t.reps) do
			if faction.standing < 8 then
				collected = true;
				break;
			end
		end
		t.SetAchievementCollected(t.achievementID, collected);
	end
end,
["EXALTED_REPS_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local clone = app.CreateMiniListForGroup(app.CreateAchievement(t[t.key], t.reps)).data;
		clone.description = t.description;
		return true;
	end
end,
["EXALTED_REPS_OnTooltip"] = function(t)
	if t.collectible and t.reps then
		GameTooltip:AddLine(" ");
		for i,faction in ipairs(t.reps) do
			GameTooltip:AddDoubleLine(" |T" .. faction.icon .. ":0|t " .. faction.text, app.L[faction.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		end
	end
end,
["LOREMASTER_OnUpdate"] = function(t, ...)
	if t.collectible and t.parent then
		local quests = t.quests;
		if not quests then
			-- Get the quests list from the zone itself.
			local g = (t.sourceParent or t.parent).parent.g;
			if g and #g > 0 then
				for i,o in ipairs(g) do
					if o.headerID == -17 then
						quests = o.g;
						break;
					end
				end
			else
				return true;
			end
			
			-- If additional questIDs were manually included, let's do some extra work.
			local extraQuestIDs = { ... };
			if #extraQuestIDs > 0 then
				-- Clone the list to prevent dirtying the quest list in the zone.
				quests = RawCloneArray(quests);
				for i,questID in ipairs(extraQuestIDs) do
					local results = SearchForField("questID", questID);
					if results and #results > 0 then
						tinsert(quests, 1, results[1]);
					end
				end
			end
		end
		return app.CommonAchievementHandlers.LOREMASTER_EXPLICIT_OnUpdate(t, quests);
	end
end,
["LOREMASTER_EXPLICIT_OnUpdate"] = function(t, quests)
	if quests or #quests < 1 then
		local p = 0;
		if app.FilterItemClass_RequireRaces(t) then
			for i,o in ipairs(quests) do
				if app.FilterItemClass(o) then
					if o.collected == 1 then
						p = p + 1;
					end
				end
			end
		end
		t.p = p;
		t.quests = quests;
		t.SetAchievementCollected(t.achievementID, p >= t.rank);
	else
		return true;
	end
end,
["LOREMASTER_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local clone = app.CreateMiniListForGroup(app.CreateAchievement(t[t.key], t.quests)).data;
		clone.description = t.description;
		return true;
	end
end,
["LOREMASTER_OnTooltip"] = function(t)
	if t.collectible and t.p and not t.collected then
		GameTooltip:AddLine(" ");
		GameTooltip:AddDoubleLine(" ", app.GetProgressText(min(t.rank, t.p),t.rank), 1, 1, 1);
	end
end,
["META_OnUpdate"] = function(t, ...)
	if t.collectible then
		if not t.achievements then
			local achievements = {};
			for i,achievementID in ipairs({ ... }) do
				local f = app.SearchForField("achievementID", achievementID);
				if f and #f > 0 then
					tinsert(achievements, f[1]);
				else
					return true;
				end
			end
			if #achievements < 1 then return true; end
			t.achievements = achievements;
		end
		local collected = true;
		for i,faction in ipairs(t.achievements) do
			if not faction.collected then
				collected = false;
				break;
			end
		end
		t.SetAchievementCollected(t.achievementID, collected);
	end
end,
["META_ACHCAT_OnUpdate"] = function(t, achievementCategoryID)
	if t.collectible then
		if not t.achievements then
			local achievements;
			for i,o in ipairs(t.parent.g) do
				if o.achievementCategoryID == achievementCategoryID then
					achievements = o.g;
					break;
				end
			end
			if not achievements then return true; end
			t.achievements = achievements;
		end
		local collected = true;
		for i,faction in ipairs(t.achievements) do
			if not faction.collected and app.FilterItemClass_UnobtainableItem(faction) then
				collected = false;
				break;
			end
		end
		t.SetAchievementCollected(t.achievementID, collected);
	end
end,
["META_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local clone = app.CreateMiniListForGroup(app.CreateAchievement(t[t.key], t.achievements)).data;
		clone.description = t.description;
		return true;
	end
end,
["META_OnTooltip"] = function(t)
	if t.collectible and t.reps then
		GameTooltip:AddLine(" ");
		for i,achievement in ipairs(t.achievements) do
			GameTooltip:AddDoubleLine(" |T" .. achievement.icon .. ":0|t " .. achievement.text, app.L[achievement.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		end
	end
end,
};
end)();

-- Battle Pet Lib
(function()
local fields = {
	["key"] = function(t)
		return "speciesID";
	end,
	["f"] = function(t)
		return 101;
	end,
	["collectible"] = function(t)
		return app.CollectibleBattlePets;
	end,
	["collected"] = function(t)
		if t.itemID then
			if GetItemCount(t.itemID, true) > 0 then
				app.CurrentCharacter.BattlePets[t.speciesID] = 1;
				ATTAccountWideData.BattlePets[t.speciesID] = 1;
				return 1;
			elseif app.CurrentCharacter.BattlePets[t.speciesID] == 1 then
				app.CurrentCharacter.BattlePets[t.speciesID] = nil;
				ATTAccountWideData.BattlePets[t.speciesID] = nil;
				for guid,characterData in pairs(ATTCharacterData) do
					if characterData.BattlePets and characterData.BattlePets[t.speciesID] then
						ATTAccountWideData.BattlePets[t.speciesID] = 1;
					end
				end
			end
			if app.AccountWideBattlePets and ATTAccountWideData.BattlePets[t.speciesID] then
				return 2;
			end
		end
	end,
	["text"] = function(t)
		return "|cff0070dd" .. (t.name or RETRIEVING_DATA) .. "|r";
	end,
	["icon"] = function(t)
		if t.itemID then
			return select(5, GetItemInfoInstant(t.itemID)) or "Interface\\Icons\\INV_Misc_QuestionMark";
		end
		return "Interface\\Icons\\INV_Misc_QuestionMark";
		--return select(2, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end,
	--[[
	["description"] = function(t)
		return select(6, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end,
	["displayID"] = function(t)
		return select(12, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end,
	["petTypeID"] = function(t)
		return select(3, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end,
	]]--
	["name"] = function(t)
		return select(1, GetItemInfo(t.itemID));
		--return select(1, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end,
	["link"] = function(t)
		if t.itemID then
			local link = select(2, GetItemInfo(t.itemID));
			if link then
				t.link = link;
				return link;
			end
		end
	end,
	["tsm"] = function(t)
		return string.format("p:%d:1:3", t.speciesID);
	end,
};
app.BaseSpecies = app.BaseObjectFields(fields);
app.CreateSpecies = function(id, t)
	return setmetatable(constructor(id, t, "speciesID"), app.BaseSpecies);
end

app.BasePetType = app.BaseObjectFields({
	["key"] = function(t)
		return "petTypeID";
	end,
	["text"] = function(t)
		return _G["BATTLE_PET_NAME_" .. t.petTypeID];
	end,
	["icon"] = function(t)
		-- return "Interface/Icons/Icon_PetFamily_"..PET_TYPE_SUFFIX[t.petTypeID];
		return app.asset("Icon_PetFamily_"..PET_TYPE_SUFFIX[t.petTypeID]);
	end,
});
app.CreatePetType = function(id, t)
	return setmetatable(constructor(id, t, "petTypeID"), app.BasePetType);
end
end)();

-- Category Lib
(function()
local fields = {
	["key"] = function(t)
		return "categoryID";
	end,
	["text"] = function(t)
		return ATTClassicAD.LocalizedCategoryNames[t.categoryID] or ("Unknown Category #" .. t.categoryID);
	end,
	["icon"] = function(t)
		return ATTC.CategoryIcons[t.categoryID] or "Interface/ICONS/INV_Misc_Gear_02";
	end,
};
app.BaseCategory = app.BaseObjectFields(fields);
app.CreateCategory = function(id, t)
	return setmetatable(constructor(id, t, "categoryID"), app.BaseCategory);
end
end)();

-- Character Class Lib
(function()
local classIcons = {
	[1] = app.asset("ClassIcon_Warrior"),
	[2] = app.asset("ClassIcon_Paladin"),
	[3] = app.asset("ClassIcon_Hunter"),
	[4] = app.asset("ClassIcon_Rogue"),
	[5] = app.asset("ClassIcon_Priest"),
	[6] = app.asset("ClassIcon_DeathKnight"),
	[7] = app.asset("ClassIcon_Shaman"),
	[8] = app.asset("ClassIcon_Mage"),
	[9] = app.asset("ClassIcon_Warlock"),
	[10] = app.asset("ClassIcon_Monk"),
	[11] = app.asset("ClassIcon_Druid"),
	[12] = app.asset("ClassIcon_DemonHunter"),
};
local GetClassIDFromClassFile = function(classFile)
	for i,icon in pairs(classIcons) do
		local info = C_CreatureInfo.GetClassInfo(i);
		if info and info.classFile == classFile then
			return i;
		end
	end
end
app.ClassDB = setmetatable({}, { __index = function(t, className)
	for i,_ in pairs(classIcons) do
		local info = C_CreatureInfo.GetClassInfo(i);
		if info and info.className == className then
			rawset(t, className, i);
			return i;
		end
	end
end });
local SoftReserveUnitOnClick = function(self, button)
	local guid = self.ref.guid or self.ref.unit;
	if guid then
		if button == "RightButton" then
			if self.ref.itemID then
				if app.IsMasterLooter() then
					-- Master Looters can do whatever they want.
					app:ShowPopupDialog((self.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
					function()
						if IsGUIDInGroup(guid) then
							app:UpdateSoftReserve(guid, nil, time(), false, true);
						else
							app:UpdateSoftReserveInternal(guid, nil);
						end
						app:RefreshSoftReserveWindow();
					end);
				elseif UnitGUID("player") == guid then
					if app.Settings:GetTooltipSetting("SoftReservesLocked") then
						app.print("You can't do that while the session is locked.");
						return true;
					end
					-- A player can change their own, so long as it isn't locked.
					app:ShowPopupDialog("Your Soft Reserve is currently set to:\n \n" .. (self.ref.itemText or RETRIEVING_DATA) .. "\n \nDo you want to delete it?",
					function()
						app:UpdateSoftReserve(guid, nil, time(), false, true);
						app:RefreshSoftReserveWindow();
					end);
				elseif IsGUIDInGroup(guid) then
					app.print("You must be the Master Looter to do that.");
					return true;
				else
					-- You can do whatever you want to non-group members.
					app:ShowPopupDialog((self.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
					function()
						app:UpdateSoftReserveInternal(guid, nil);
						app:RefreshSoftReserveWindow();
					end);
				end
			end
		elseif button == "LeftButton" then
			if IsShiftKeyDown() or IsControlKeyDown() then
				return false;
			end
			if app.IsMasterLooter() then
				-- Master Looters can do whatever they want.
				if self.ref.itemID then
					app:ShowPopupDialogWithEditBox((self.ref.unitText or RETRIEVING_DATA) .. " has their Soft Reserve set to:\n \n" .. (self.ref.itemText or RETRIEVING_DATA) .. "\n \nEnter a new Item ID or an Item Link.", "", function(cmd)
						if cmd and cmd ~= "" then
							app:ParseSoftReserve(guid, cmd);
							app:RefreshSoftReserveWindow();
						end
					end);
				else
					app:ShowPopupDialogWithEditBox((self.ref.unitText or RETRIEVING_DATA) .. " does not have a Soft Reserve.\n \nEnter a new Item ID or an Item Link.", "", function(cmd)
						if cmd and cmd ~= "" then
							app:ParseSoftReserve(guid, cmd);
							app:RefreshSoftReserveWindow();
						end
					end);
				end
			elseif UnitGUID("player") == guid then
				if app.Settings:GetTooltipSetting("SoftReservesLocked") then
					app.print("You can't do that while the session is locked.");
					return true;
				end
				-- A player can change their own, so long as it isn't locked.
				if self.ref.itemID then
					app:ShowPopupDialogWithEditBox("Your Soft Reserve is set to:\n \n" .. (self.ref.itemText or RETRIEVING_DATA) .. "\n \nEnter a new Item ID or an Item Link.", "", function(cmd)
						if cmd and cmd ~= "" then
							app:ParseSoftReserve(UnitGUID("player"), cmd, true, true);
							app:RefreshSoftReserveWindow();
						end
					end);
				else
					app:ShowPopupDialogWithEditBox("You do not have a Soft Reserve yet.\n \nEnter a new Item ID or an Item Link.", "", function(cmd)
						if cmd and cmd ~= "" then
							app:ParseSoftReserve(UnitGUID("player"), cmd, true, true);
							app:RefreshSoftReserveWindow();
						end
					end);
				end
			elseif IsGUIDInGroup(guid) then
				app.print("You must be the Master Looter to do that.");
				return true;
			end
		end
	end
	return true;
end
app.GetGroupType = function()
	if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance() then
		return "INSTANCE_CHAT";
	elseif IsInRaid() then
		return "RAID";
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		return "PARTY";
	end
	return "RAID";
end
app.IsMasterLooter = function()
	return app.IsUnitMasterLooter(UnitName("player"));
end
app.IsUnitMasterLooter = function(name)
	if IsInGroup() then
		-- Ensure that the player is the master looter.
		local lootMethod, partyIndex, raidIndex = GetLootMethod();
		if lootMethod == "master" then
			if raidIndex then
				return name == GetRaidRosterInfo(raidIndex);
			elseif partyIndex == 0 then
				-- Player is the Master Looter
				return name == UnitName("player");
			else
				return name == UnitName("party" .. partyIndex);
			end
		end
	end
end
app.ParseSoftReserve = function(app, guid, cmd, isSilentMode, isCurrentPlayer)
	-- Attempt to parse the command.
	if cmd and cmd ~= "" then
		cmd = cmd:match("^%s*(.+)$");
		if cmd == "clear" or cmd == '0' then
			app:UpdateSoftReserve(guid, nil, time(), isSilentMode, isCurrentPlayer);
			return;
		end
		
		-- Parse out the itemID if possible.
		local itemID = tonumber(cmd) or GetItemInfoInstant(cmd);
		if itemID then cmd = "itemid:" .. itemID; end
		
		-- Search for the Link in the database
		local group = SearchForLink(cmd);
		if group and #group > 0 then
			for i,g in ipairs(group) do
				if g.itemID then
					app:UpdateSoftReserve(guid, g.itemID, time(), isSilentMode, isCurrentPlayer);
					return true;
				end
			end
		end
	end
	
	-- Send back an error message.
	SendGUIDWhisper("Unrecognized Command. Please use '!sr [itemLink/itemID]'. You can send an item link or an itemID from WoWHead. EX: '!sr 12345' or '!sr [Azuresong Mageblade]'", guid);
end
app.PlayerGUIDFromInfo = setmetatable({}, { __index = function(t, info)
	-- Let WoW parse it.
	local guid = UnitGUID(info);
	if guid then
		rawset(t, info, guid);
		return guid;
	end
	if string.match(info, "Player-") then
		-- Already a GUID!
		rawset(t, info, info);
		return info;
	end
	
	-- Only check the guild once every 10 seconds.
	if (rawget(t, "cooldown") or 0) <= time() then
		local count = GetNumGuildMembers();
		if count > 0 then
			for guildIndex = 1, count, 1 do
				local name, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, guid = GetGuildRosterInfo(guildIndex);
				if name and guid then
					rawset(t, strsplit('-', name), guid);
				end
			end
		end
		rawset(t, "cooldown", time() + 10);
		return rawget(t, info);
	end
end });
app.PushSoftReserve = function(ignoreZero)
	local guid, itemID, timeStamp = UnitGUID("player");
	local reserves = GetDataMember("SoftReserves");
	if reserves then
		local oldreserve = reserves[guid];
		if oldreserve then
			itemID = oldreserve[1];
			timeStamp = oldreserve[2];
		end
	end
	if itemID or not ignoreZero then
		itemID = "!\tsr\t" .. guid .. "\t" .. (itemID or 0);
		if timeStamp then itemID = itemID .. "\t" .. timeStamp; end
		SendGuildMessage(itemID);
		if IsInGroup() then SendGroupMessage(itemID); end
	end
end
app.PushSoftReserves = function(method, target)
	local reserves = GetDataMember("SoftReserves");
	if reserves then
		local count, length, msg, s = 7, 0, "!\tsrml";
		if not method then method = app.GetGroupType(); end
		for gu,reserve in pairs(reserves) do
			if gu and IsGUIDInGroup(gu) then
				s = "\t" .. gu .. "\t" .. reserve[1];
				length = string.len(s);
				if count + length >= 255 then
					C_ChatInfo.SendAddonMessage("ATTC", msg, method, target);
					count = 7;
					msg = "!\tsrml";
				else
					count = count + length;
					msg = msg .. s;
				end
			end
		end
		if count > 5 then
			C_ChatInfo.SendAddonMessage("ATTC", msg, method, target);
		end
	end
end
app.QuerySoftReserve = function(app, guid, cmd, target)
	-- Attempt to parse the command.
	if cmd and cmd ~= "" then
		local all = not IsInGroup() or not IsGUIDInGroup(guid);
		cmd = cmd:match("^%s*(.+)$");
		if strsub(cmd, 1, 3) == "all" then
			cmd = strsub(cmd, 4):match("^%s*(.+)$");
			all = true;
		elseif cmd == "srml" then
			if app.IsMasterLooter() then
				-- Push the Soft Reserve List to the target.
				app.PushSoftReserves("WHISPER", target);
			end
			return true;
		end
		
		-- Parse out the itemID if possible.
		local itemID = tonumber(cmd) or GetItemInfoInstant(cmd);
		if itemID then cmd = "itemid:" .. itemID; end
		
		-- Search for the Link in the database
		local group = SearchForLink(cmd);
		if group and #group > 0 then
			for i,g in ipairs(group) do
				if g.itemID then
					local link = g.link;
					if not link or link == RETRIEVING_DATA or strsub(link, 1, 4) == "item" then
						link = "item:" .. g.itemID;
					end
					local sr = {};
					local message = link .. " ";
					local reservesForItem = GetTempDataMember("SoftReservesByItemID")[g.itemID];
					if reservesForItem then
						for i,guid in ipairs(reservesForItem) do
							if guid and (all or IsGUIDInGroup(guid)) then
								local unit = app.CreateSoftReserveUnit(guid);
								table.insert(sr, unit.unitText and unit.name or guid);
							end
						end
					end
					if #sr == 0 then
						if all then
							message = message .. "Not Soft Reserved by anyone.";
						else
							message = message .. "Not Soft Reserved by anyone in our group.";
						end
					else
						for i,name in ipairs(sr) do
							if i > 1 then message = message .. ", "; end
							message = message .. name;
						end
					end
					SendGUIDWhisper(message, guid);
					return true;
				end
			end
		end
	else
		local reserve = rawget(GetDataMember("SoftReserves"), guid);
		if reserve then
			-- Parse out the itemID if possible.
			local itemID = type(reserve) == 'number' and reserve or reserve[1];
			if itemID then itemID = "itemid:" .. itemID; end
			
			-- Search for the Link in the database
			local group = SearchForLink(itemID);
			if group and #group > 0 then
				for i,g in ipairs(group) do
					if g.itemID then
						local link = g.link;
						if not link or link == RETRIEVING_DATA or strsub(link, 1, 4) == "item" then
							link = "item:" .. g.itemID;
						end
						SendGUIDWhisper("You have " .. link .. " Soft Reserved.", guid);
						return true;
					end
				end
			end
		else
			SendGUIDWhisper("You have nothing Soft Reserved.", guid);
			return true;
		end
	end
	
	-- Send back an error message.
	SendGUIDWhisper("Unrecognized Command. Please use '!sr [itemLink/itemID]'. You can send an item link or an itemID from WoWHead. EX: '!sr 12345' or '!sr [Azuresong Mageblade]'", guid);
end
app.RefreshSoftReserveWindow = function(app, force)
	if app.SoftReservesDirty or force then
		app.SoftReservesDirty = nil;
		app:GetWindow("SoftReserves"):Update(true);
	end
end
app.UpdateSoftReserveInternal = function(app, guid, itemID, timeStamp, isCurrentPlayer)
	local reserves = GetDataMember("SoftReserves");
	local reservesByItemID = GetTempDataMember("SoftReservesByItemID");
	
	-- Check the Old Reserve against the new one.
	local oldreserve = reserves[guid];
	if oldreserve then
		-- If there was an old reservation...
		local oldItemID = oldreserve[1];
		if oldItemID then
			if oldItemID == itemID then
				return true;
			end
			
			-- Uncache the reserve
			local reservesForItem = reservesByItemID[oldItemID];
			if reservesForItem then
				for i,value in ipairs(reservesForItem) do
					if value == guid then
						table.remove(reservesForItem, i);
						break;
					end
				end
			end
		end
	end
	
	-- Update the Reservation
	wipe(searchCache);
	app.SoftReservesDirty = true;
	if itemID and itemID > 0 then
		if not timeStamp then timeStamp = time(); end
		reserves[guid] = { itemID, timeStamp };
		local reservesForItem = reservesByItemID[itemID];
		if not reservesForItem then
			reservesForItem = {};
			reservesByItemID[itemID] = reservesForItem;
		end
		table.insert(reservesForItem, guid);
	else
		itemID = 0;
		reserves[guid] = nil;
	end
	if isCurrentPlayer then
		itemID = "!\tsr\t" .. guid .. "\t" .. itemID;
		if timeStamp then itemID = itemID .. "\t" .. timeStamp; end
		SendGuildMessage(itemID);
		if IsInGroup() then SendGroupMessage(itemID); end
	end
end
app.UpdateSoftReserve = function(app, guid, itemID, timeStamp, silentMode, isCurrentPlayer)
	if IsInGroup() and GetDataMember("SoftReserves")[guid] and not app.IsMasterLooter() and app.Settings:GetTooltipSetting("SoftReservesLocked") then
		if not silentMode then
			SendGUIDWhisper("The Soft Reserve is currently locked by your Master Looter. Please make sure to update your Soft Reserve before raid next time!", guid);
		end
	else
		-- If they didn't previously have a reserve, then allow it. If so, then reject it.
		app:UpdateSoftReserveInternal(guid, itemID, timeStamp, isCurrentPlayer);
		app:RefreshSoftReserveWindow();
		if not silentMode then
			if itemID then
				local searchResults = SearchForLink("itemid:" .. itemID);
				if searchResults and #searchResults > 0 then
					if guid ~= UnitGUID("player") then
						SendGUIDWhisper("SR: Updated to " .. (searchResults[1].link or select(1, GetItemInfo(itemID)) or ("itemid:" .. itemID)), guid);
					end
					if app.IsMasterLooter() then
						C_ChatInfo.SendAddonMessage("ATTC", "!\tsrml\t" .. guid .. "\t" .. itemID, app.GetGroupType());
						if app.Settings:GetTooltipSetting("SoftReservesLocked") then
							SendGroupChatMessage("Updated " .. (app:GetWindow("SoftReserves").GUIDToName(guid) or UnitName(guid) or guid) .. " to " .. (searchResults[1].link or select(1, GetItemInfo(itemID)) or ("itemid:" .. itemID)));
						end
					end
				end
			else
				if guid ~= UnitGUID("player") then
					SendGUIDWhisper("SR: Cleared.", guid);
				end
				if app.IsMasterLooter() then
					C_ChatInfo.SendAddonMessage("ATTC", "!\tsrml\t" .. guid .. "\t0", app.GetGroupType());
				end
			end
		end
	end
end

local fields = {
	["key"] = function(t)
		return "classID";
	end,
	["text"] = function(t)
		local text = "|c" .. t.classColors.colorStr .. t.name .. "|r";
		rawset(t, "text", text);
		return text;
	end,
	["icon"] = function(t)
		return classIcons[t.classID];
	end,
	["name"] = function(t)
		return C_CreatureInfo.GetClassInfo(t.classID).className;
	end,
	["c"] = function(t)
		local c = { t.classID };
		rawset(t, "c", c);
		return c;
	end,
	["nmc"] = function(t)
		return t.classID ~= app.ClassIndex;
	end,
	["classColors"] = function(t)
		return RAID_CLASS_COLORS[C_CreatureInfo.GetClassInfo(t.classID).classFile];
	end,
};
app.BaseCharacterClass = app.BaseObjectFields(fields);
app.CreateCharacterClass = function(id, t)
	return setmetatable(constructor(id, t, "classID"), app.BaseCharacterClass);
end

local fields = {
	["key"] = function(t)
		return "unit";
	end,
	["text"] = function(t)
		local name = t.unitText;
		if name then
			return name .. " - " .. t.itemText;
		end
		return t.unit;
	end,
	["unitText"] = function(t)
		local name, className, classFile, classID = UnitName(t.unit);
		if name then
			className, classFile, classID = UnitClass(t.unit);
		elseif #{strsplit("-", t.unit)} > 1 then
			-- It's a GUID.
			rawset(t, "guid", t.unit);
			className, classFile, _, _, _, name = GetPlayerInfoByGUID(t.unit);
			classID = GetClassIDFromClassFile(classFile);
		end
		if name then
			rawset(t, "name", name);
			if classFile then name = "|c" .. RAID_CLASS_COLORS[classFile].colorStr .. name .. "|r"; end
			rawset(t, "className", className);
			rawset(t, "classFile", classFile);
			rawset(t, "classID", classID);
			return name;
		end
		return t.unit;
	end,
	["itemText"] = function(t)
		local itemID = t.itemID;
		if itemID then
			local itemName, itemLink,_,_,_,_,_,_,_,icon = GetItemInfo(itemID);
			if itemLink then
				return (icon and ("|T" .. icon .. ":0|t") or "") .. itemLink .. (t.mapText or "");
			else
				return RETRIEVING_DATA;
			end
		else
			return "No Soft Reserve Selected";
		end
	end,
	["mapText"] = function(t)
		local mapID = t.internalMapID;
		if mapID and mapID ~= app.CurrentMapID then
			return " (" .. app.GetMapName(mapID) .. ")";
		end
	end,
	["name"] = function(t)
		return UnitName(t.unit);
	end,
	["guid"] = function(t)
		return UnitGUID(t.unit);
	end,
	["icon"] = function(t)
		return t.classID and classIcons[t.classID];
	end,
	["visible"] = function(t)
		return true;
	end,
	["itemID"] = function(t)
		local guid = t.guid;
		if guid then
			local reserve = rawget(GetDataMember("SoftReserves"), guid);
			if reserve then
				return type(reserve) == 'number' and reserve or reserve[1];
			end
		end
	end,
	["persistence"] = function(t)
		local guid = t.guid;
		if guid then
			local reserve = rawget(GetDataMember("SoftReserves"), guid);
			if reserve then
				local itemID = type(reserve) == 'number' and reserve or reserve[1];
				if itemID then
					local persistence = rawget(GetDataMember("SoftReservePersistence"), guid);
					if persistence then return persistence[itemID]; end
					return 0;
				end
			end
		end
	end,
	["roll"] = function(t)
		if app.Settings:GetTooltipSetting("SoftReservePersistence") then
			local persistence = t.persistence;
			if persistence and persistence > 0 then
				return 100 + (persistence * 10);
			else
				return 100;
			end
		end
	end,
	["preview"] = function(t)
		return t.itemID and select(5, GetItemInfoInstant(t.itemID)) or "Interface\\Icons\\INV_Misc_QuestionMark";
	end,
	["link"] = function(t)
		return t.itemID and select(2, GetItemInfo(t.itemID));
	end,
	["tooltipText"] = function(t)
		local text = t.unitText;
		local guid = t.guid;
		local roll = t.roll;
		local icon = t.icon;
		if icon then text = "|T" .. icon .. ":0|t " .. text; end
		if roll and app.Settings:GetTooltipSetting("SoftReservePersistence") then text = text .. " (" .. roll .. ")"; end
		if guid and not IsGUIDInGroup(guid) then
			text = text .. " |CFFFFFFFF(Not in Group)|r";
		end
		return text;
	end,
	["summary"] = function(t)
		return t.roll;
	end,
	["OnClick"] = function(t)
		return SoftReserveUnitOnClick;
	end,
	["itemName"] = function(t)
		local itemID = t.itemID;
		if itemID then
			local itemName = GetItemInfo(itemID);
			if itemName then
				return itemName;
			else
				return RETRIEVING_DATA;
			end
		else
			return "No Soft Reserve Selected";
		end
	end,
	["crs"] = function(t)
		local itemID = t.itemID;
		if itemID then
			local searchResults = app.SearchForField("itemID", itemID);
			if searchResults and #searchResults > 0 then
				for i,o in ipairs(searchResults) do
					if o.itemID then
						if o.crs then
							return o.crs;
						end
						if o.qgs then
							return o.qgs;
						end
						if o.parent then
							if o.parent.npcID and o.parent.npcID > 0 then
								return { o.parent.npcID };
							end
							if o.parent.cr then
								return { o.parent.cr };
							end
							if o.parent.crs then
								return o.parent.crs;
							end
							if o.parent.qgs then
								return o.parent.qgs;
							end
						end
					end
				end
			end
		end
	end,
	["internalMapID"] = function(t)
		local itemID = t.itemID;
		if itemID then
			local searchResults = app.SearchForField("itemID", itemID);
			if searchResults and #searchResults > 0 then
				for i,o in ipairs(searchResults) do
					if o.itemID then
						local mapID = GetRelativeValue(o, "mapID");
						if mapID then
							return mapID;
						end
					end
				end
			end
		end
	end,
};
app.BaseSoftReserveUnit = app.BaseObjectFields(fields);
app.CreateSoftReserveUnit = function(unit, t)
	return setmetatable(constructor(unit, t, "unit"), app.BaseSoftReserveUnit);
end

local fields = {
	["key"] = function(t)
		return "unit";
	end,
	["unitText"] = function(t)
		local name, className, classFile, classID = UnitName(t.unit);
		if name then
			className, classFile, classID = UnitClass(t.unit);
		elseif #{strsplit("-", t.unit)} > 1 then
			-- It's a GUID.
			rawset(t, "guid", t.unit);
			className, classFile, _, _, _, name = GetPlayerInfoByGUID(t.unit);
			classID = GetClassIDFromClassFile(classFile);
		end
		if name then
			rawset(t, "name", name);
			if classFile then name = "|c" .. RAID_CLASS_COLORS[classFile].colorStr .. name .. "|r"; end
			rawset(t, "className", className);
			rawset(t, "classFile", classFile);
			rawset(t, "classID", classID);
			return name;
		end
		return t.unit;
	end,
	["text"] = function(t)
		return t.unitText;
	end,
	["icon"] = function(t)
		return t.classID and classIcons[t.classID];
	end,
	["name"] = function(t)
		local name = UnitName(t.unit);
		if name then
			rawset(t, "name", name);
			return name;
		elseif #{strsplit("-", t.unit)} > 1 then
			-- It's a GUID.
			rawset(t, "guid", t.unit);
			local className, classFile, _, _, _, name = GetPlayerInfoByGUID(t.unit);
			if name then
				rawset(t, "name", name);
				return name;
			end
		end
	end,
	["guid"] = function(t)
		return UnitGUID(t.unit);
	end,
	["visible"] = function(t)
		return true;
	end,
	["collectible"] = function(t)
		return true;
	end,
	["trackable"] = function(t)
		return true;
	end,
	["collected"] = function(t)
		return t.saved;
	end,
	["OnClick"] = function(t)
		return app.NoFilter;
	end,
	["OnUpdate"] = function(t)
		return app.AlwaysShowUpdateWithoutReturn;
	end,
	["saved"] = function(t)
		local questID = GetRelativeValue(t, "questID");
		if questID then
			local guid = t.guid;
			if guid and questID then
				if guid == app.GUID then
					return IsQuestFlaggedCompleted(questID);
				else
					local questsForGUID = GetDataMember("GroupQuestsByGUID")[guid] or (ATTCharacterData[guid] and ATTCharacterData[guid].Quests);
					return questsForGUID and questsForGUID[questID];
				end
			end
		end
	end,
	["tooltipText"] = function(t)
		local text = t.unitText;
		local icon = t.icon;
		if icon then text = "|T" .. icon .. ":0|t " .. text; end
		return text;
	end,
};
app.BaseQuestUnit = app.BaseObjectFields(fields);
app.CreateQuestUnit = function(unit, t)
	return setmetatable(constructor(unit, t, "unit"), app.BaseQuestUnit);
end

local fields = {
	["key"] = function(t)
		return "unit";
	end,
	["text"] = function(t)
		local name = UnitName(t.unit);
		if name then
			local classFile = select(2, UnitClass(t.unit));
			if classFile then
				name = "|c" .. RAID_CLASS_COLORS[classFile].colorStr .. name .. "|r";
				rawset(t, "classID", GetClassIDFromClassFile(classFile));
			end
			return name;
		else
			for guid,character in pairs(ATTCharacterData) do
				if guid == t.unit or character.name == t.unit then
					rawset(t, "text", character.text);
					rawset(t, "level", character.lvl);
					if character.classID then
						rawset(t, "classID", character.classID);
						rawset(t, "class", C_CreatureInfo.GetClassInfo(character.classID).className);
					end
					if character.raceID then
						rawset(t, "raceID", character.raceID);
						rawset(t, "race", C_CreatureInfo.GetRaceInfo(character.raceID).raceName);
					end
					return character.text;
				end
			end
		end
		return t.unit;
	end,
	["icon"] = function(t)
		if t.classID then return classIcons[t.classID]; end
	end,
	["name"] = function(t)
		return UnitName(t.unit);
	end,
	["guid"] = function(t)
		return UnitGUID(t.unit);
	end,
	["title"] = function(t)
		if IsInGroup() then
			if rawget(t, "isML") then return MASTER_LOOTER; end
			if UnitIsGroupLeader(t.name) then return RAID_LEADER; end
		end
	end,
	["description"] = function(t)
		return LEVEL .. " " .. (t.level or RETRIEVING_DATA) .. " " .. (t.race or RETRIEVING_DATA) .. " " .. (t.class or RETRIEVING_DATA);
	end,
	["level"] = function(t)
		return UnitLevel(t.unit);
	end,
	["race"] = function(t)
		return UnitRace(t.unit);
	end,
	["class"] = function(t)
		return UnitClass(t.unit);
	end,
};
app.BaseUnit = app.BaseObjectFields(fields);
app.CreateUnit = function(unit, t)
	return setmetatable(constructor(unit, t, "unit"), app.BaseUnit);
end
end)();

-- Currency Lib
(function()
local fields = {
	["key"] = function(t)
		return "currencyID";
	end,
	["text"] = function(t)
		return t.link or select(1, GetCurrencyInfo(t.currencyID));
	end,
	["icon"] = function(t)
		return select(3, GetCurrencyInfo(t.currencyID));
	end,
	["link"] = function(t)
		return GetCurrencyLink(t.currencyID, 1);
	end,
};
app.BaseCurrencyClass = app.BaseObjectFields(fields);
app.CreateCurrencyClass = function(id, t)
	return setmetatable(constructor(id, t, "currencyID"), app.BaseCurrencyClass);
end
end)();

-- Death Tracker Lib
(function()
local OnUpdateForDeathTrackerLib = function(t)
	if app.Settings:Get("Thing:Deaths") then
		t.visible = app.GroupVisibilityFilter(t);
		t.parent.progress = t.parent.progress + t.progress;
		t.parent.total = t.parent.total + t.total;
	else
		t.visible = false;
	end
	return true;
end
local fields = {
	["key"] = function(t)
		return "deaths";
	end,
	["text"] = function(t)
		return "Total Deaths";
	end,
	["icon"] = function(t)
		return app.asset("Category_Deaths");
	end,
	["progress"] = function(t)
		return math.min(1000, app.AccountWideDeaths and ATTAccountWideData.Deaths or app.CurrentCharacter.Deaths);
	end,
	["total"] = function(t)
		return 1000;
	end,
	["description"] = function(t)
		return "The ATT Gods must be sated. Go forth and attempt to level, mortal!\n\n 'Live! Die! Live Again!'\n";
	end,
	["OnTooltip"] = function(t)
		local c = {};
		for _,character in pairs(ATTCharacterData) do
			if character and character.Deaths and character.Deaths > 0 then
				table.insert(c, character);
			end
		end
		if #c > 0 then
			GameTooltip:AddLine(" ");
			GameTooltip:AddLine("Deaths Per Character:");
			insertionSort(c, function(a, b)
				return a.Deaths > b.Deaths;
			end);
			for i,character in ipairs(c) do
				GameTooltip:AddDoubleLine("  " .. string.gsub(character.text, "-" .. GetRealmName(), ""), character.Deaths, 1, 1, 1);
			end
		end
	end,
	["OnUpdate"] = function(t)
		return OnUpdateForDeathTrackerLib;
	end,
};
app.BaseDeathClass = app.BaseObjectFields(fields);
app.CreateDeathClass = function()
	return setmetatable({}, app.BaseDeathClass);
end
end)();

-- Difficulty Lib
(function()
local difficulties = {
	[1] = { 9, 148, 173 },
	[2] = { 174 },
	[3] = { 175 },
	[4] = { 176 },
	[9] = { 1 },
	[148] = { 1 },
	[173] = { 1 },
	[174] = { 2 },
	[175] = { 3 },
	[176] = { 4 },
};
app.DifficultyColors = {
	[2] = "ff0070dd",
	[5] = "ff0070dd",
	[6] = "ff0070dd",
	[7] = "ff9d9d9d",
	[15] = "ff0070dd",
	[16] = "ffa335ee",
	[17] = "ff9d9d9d",
	[23] = "ffa335ee",
	[24] = "ffe6cc80",
	[33] = "ffe6cc80",
};
app.DifficultyIcons = {
	[-1] = app.asset("Difficulty_LFR"),
	[-2] = app.asset("Difficulty_Normal"),
	[-3] = app.asset("Difficulty_Heroic"),
	[-4] = app.asset("Difficulty_Mythic"),
	[1] = app.asset("Difficulty_Normal"),
	[2] = app.asset("Difficulty_Heroic"),
	[3] = app.asset("Difficulty_Normal"),
	[4] = app.asset("Difficulty_Normal"),
	[5] = app.asset("Difficulty_Heroic"),
	[6] = app.asset("Difficulty_Heroic"),
	[7] = app.asset("Difficulty_LFR"),
	[9] = app.asset("Difficulty_Mythic"),
	[11] = app.asset("Difficulty_Normal"),
	[12] = app.asset("Difficulty_Heroic"),
	[14] = app.asset("Difficulty_Normal"),
	[15] = app.asset("Difficulty_Heroic"),
	[16] = app.asset("Difficulty_Mythic"),
	[17] = app.asset("Difficulty_LFR"),
	[18] = app.asset("Category_Event"),
	[23] = app.asset("Difficulty_Mythic"),
	[24] = app.asset("Difficulty_Timewalking"),
	[33] = app.asset("Difficulty_Timewalking"),
};
local fields = {
	["key"] = function(t)
		return "difficultyID";
	end,
	["text"] = function(t)
		return L["CUSTOM_DIFFICULTIES"][t.difficultyID] or GetDifficultyInfo(t.difficultyID) or "Unknown Difficulty";
	end,
	["icon"] = function(t)
		return app.DifficultyIcons[t.difficultyID];
	end,
	["saved"] = function(t)
		return t.locks;
	end,
	["locks"] = function(t)
		local locks = t.parent and t.parent.locks;
		if locks then
			if t.parent.isLockoutShared and not (t.difficultyID == 7 or t.difficultyID == 17) then
				rawset(t, "locks", locks.shared);
				return locks.shared;
			else
				-- Look for this difficulty's lockout.
				for difficultyKey, lock in pairs(locks) do
					if difficultyKey == "shared" then
						-- ignore this one
					elseif difficultyKey == t.difficultyID then
						rawset(t, "locks", lock);
						return lock;
					end
				end
			end
		end
	end,
	["difficulties"] = function(t)
		return difficulties[t.difficultyID];
	end,
	["u"] = function(t)
		if t.difficultyID == 24 or t.difficultyID == 33 then
			return 42;
		end
	end,
	["description"] = function(t)
		if t.difficultyID == 24 or t.difficultyID == 33 then
			return L["WE_JUST_HATE_TIMEWALKING"];
		end
	end,
	["hash"] = function(t)
		if t.parent then return t.key .. t[t.key] .. "~" .. t.parent.key .. t.parent[t.parent.key]; end
	end,
};
app.BaseDifficulty = app.BaseObjectFields(fields);
app.CreateDifficulty = function(id, t)
	return setmetatable(constructor(id, t, "difficultyID"), app.BaseDifficulty);
end
end)();

-- Faction Lib
(function()
local StandingByID = {
	{	-- 1: HATED
		["color"] = GetProgressColor(0),
		["threshold"] = -42000,
	},
	{	-- 2: HOSTILE
		["color"] = "00FF0000",
		["threshold"] = -6000,
	},
	{	-- 3: UNFRIENDLY
		["color"] = "00EE6622",
		["threshold"] = -3000,
	},
	{	-- 4: NEUTRAL
		["color"] = "00FFFF00",
		["threshold"] = 0,
	},
	{	-- 5: FRIENDLY
		["color"] = "0000FF00",
		["threshold"] = 3000,
	},
	{	-- 6: HONORED
		["color"] = "0000FF88",
		["threshold"] = 9000,
	},
	{	-- 7: REVERED
		["color"] = "0000FFCC",
		["threshold"] = 21000,
	},
	{	-- 8: EXALTED
		["color"] = GetProgressColor(1),
		["threshold"] = 42000,
	},
};
app.FactionNameByID = setmetatable({}, { __index = function(t, id)
	local name = select(1, GetFactionInfoByID(id));
	if name then
		rawset(t, id, name);
		rawset(app.FactionIDByName, name, id);
		return name;
	end
end });
app.FactionIDByName = setmetatable({}, { __index = function(t, name)
	for i=1,3000,1 do
		if app.FactionNameByID[i] == name then
			return i;
		end
	end
end });
app.ColorizeStandingText = function(standingID, text)
	local standing = StandingByID[standingID];
	if standing then
		return Colorize(text, standing.color);
	else
		local rgb = FACTION_BAR_COLORS[standingID];
		return Colorize(text, RGBToHex(rgb.r * 255, rgb.g * 255, rgb.b * 255));
	end
end
app.GetFactionIDByName = function(name)
	name = strtrim(name);
	return app.FactionIDByName[name] or name;
end
app.GetFactionStanding = function(reputation)
	-- Total earned rep from GetFactionInfoByID is a value AWAY FROM ZERO, not a value within the standing bracket.
	if reputation then
		for i=#StandingByID,1,-1 do
			local threshold = StandingByID[i].threshold;
			if reputation >= threshold then
				return i, threshold < 0 and (threshold - reputation) or (reputation - threshold);
			end
		end
	end
	return 1, 0
end
app.GetFactionStandingText = function(standingID)
	return app.ColorizeStandingText(standingID, _G["FACTION_STANDING_LABEL" .. standingID] or UNKNOWN);
end
app.GetFactionStandingThresholdFromString = function(replevel)
	replevel = strtrim(replevel);
	for standing=1,8,1 do
		if _G["FACTION_STANDING_LABEL" .. standing] == replevel then
			return StandingByID[standing].threshold;
		end
	end
end
app.IsFactionExclusive = function(factionID)
	return factionID == 934 or factionID == 932;
end
local fields = {
	["key"] = function(t)
		return "factionID";
	end,
	["text"] = function(t)
		return app.ColorizeStandingText((t.saved and 8) or (t.standing + (t.isFriend and 2 or 0)), t.name);
	end,
	["name"] = function(t)
		return app.FactionNameByID[t.factionID] or (t.creatureID and NPCNameFromID[t.creatureID]) or (FACTION .. " #" .. t.factionID);
	end,
	["icon"] = function(t)
		return app.asset("Category_Factions");
	end,
	["trackable"] = function(t)
		return true;
	end,
	["collectible"] = function(t)
		if app.CollectibleReputations then
			-- If your reputation is higher than the maximum for a different faction, return partial completion.
			if not app.AccountWideReputations and t.maxReputation and t.maxReputation[1] ~= t.factionID and (select(3, GetFactionInfoByID(t.maxReputation[1])) or 4) >= app.GetFactionStanding(t.maxReputation[2]) then
				return false;
			end
			return true;
		end
		return false;
	end,
	["saved"] = function(t)
		if t.minReputation and t.minReputation[1] == t.factionID and (select(6, GetFactionInfoByID(t.minReputation[1])) or 0) >= t.minReputation[2] then
			app.CurrentCharacter.Factions[t.factionID] = 1;
			ATTAccountWideData.Factions[t.factionID] = 1;
			return 1;
		elseif (not t.minReputation or t.minReputation[1] ~= t.factionID) and t.standing >= t.maxstanding then
			app.CurrentCharacter.Factions[t.factionID] = 1;
			ATTAccountWideData.Factions[t.factionID] = 1;
			return 1;
		elseif app.CurrentCharacter.Factions[t.factionID] then
			app.CurrentCharacter.Factions[t.factionID] = nil;
			ATTAccountWideData.Factions[t.factionID] = nil;
			for guid,character in pairs(ATTCharacterData) do
				if character.Factions and character.Factions[t.factionID] then
					ATTAccountWideData.Factions[t.factionID] = 1;
				end
			end
		end
		if app.AccountWideReputations and ATTAccountWideData.Factions[t.factionID] then return 2; end
	end,
	["title"] = function(t)
		local reputation = t.reputation;
		local amount, ceiling = select(2, app.GetFactionStanding(reputation)), t.ceiling;
		local title = _G["FACTION_STANDING_LABEL" .. t.standing];
		if ceiling then
			title = title .. DESCRIPTION_SEPARATOR .. amount .. " / " .. ceiling;
			if reputation < 42000 then
				return title .. " (" .. (42000 - reputation) .. " to " .. _G["FACTION_STANDING_LABEL8"] .. ")";
			end
		end
		return title;
	end,
	["reputation"] = function(t)
		return select(6, GetFactionInfoByID(t.factionID));
	end,
	["ceiling"] = function(t)
		local _, _, _, m, ma = GetFactionInfoByID(t.factionID);
		return ma and m and (ma - m);
	end,
	["standing"] = function(t)
		return select(3, GetFactionInfoByID(t.factionID)) or 1;
	end,
	["maxstanding"] = function(t)
		if t.minReputation and t.minReputation[1] == t.factionID then
			return app.GetFactionStanding(t.minReputation[2]);
		end
		return 8;
	end,
	["description"] = function(t)
		return select(2, GetFactionInfoByID(t.factionID)) or "Not all reputations can be viewed on a single character. IE: Warsong Outriders cannot be viewed by an Alliance Player and Silverwing Sentinels cannot be viewed by a Horde Player.";
	end,
};
fields.collected = fields.saved;
app.BaseFaction = app.BaseObjectFields(fields);
app.CreateFaction = function(id, t)
	return setmetatable(constructor(id, t, "factionID"), app.BaseFaction);
end
app.OnUpdateReputationRequired = function(t)
	if app.Settings:Get("DebugMode") or app.Settings:Get("AccountMode") then
		t.visible = true;
		return false;
	else
		local reputationID = t.minReputation[1];
		t.visible = (select(3, GetFactionInfoByID(reputationID)) or 1) >= 4;
		return true;
	end
end
end)();

-- Filter Lib
(function()
local fields = {
	["key"] = function(t)
		return "filterID";
	end,
	["text"] = function(t)
		return L["FILTER_ID_TYPES"][t.filterID];
	end,
	["icon"] = function(t)
		return L["FILTER_ID_ICONS"][t.filterID];
	end,
};
app.BaseFilter = app.BaseObjectFields(fields);
app.CreateFilter = function(id, t)
	return setmetatable(constructor(id, t, "filterID"), app.BaseFilter);
end
end)();

-- Flight Path Lib
(function()
local arrOfNodes = {
	1414,	-- Kalimdor
	1415,	-- Eastern Kingdoms
	1941,	-- Eversong Woods (and Ghostlands + Isle of Quel'Danas)
	1943,	-- Azuremyst Isle (and Bloodmyst)
	1944,	-- Hellfire Peninsula (All of Outland)
	
	-- TODO:
	--118,	-- Icecrown (All of Northrend)
	--422,	-- Dread Wastes (All of Pandaria)
	--525,	-- Frostfire Ridge (All of Draenor)
	--630,	-- Azsuna (All of Broken Isles)
	--882,	-- Mac'Aree (All of Argus)
	--862,	-- Zuldazar (All of Zuldazar)
	--896,	-- Drustvar (All of Kul Tiras)
};
app.CacheFlightPathData = function()
	local newNodes, anyNew = {}, false;
	for i,mapID in ipairs(arrOfNodes) do
		local allNodeData = C_TaxiMap.GetTaxiNodesForMap(mapID);
		if allNodeData then
			for j,nodeData in ipairs(allNodeData) do
				if nodeData.name then
					local node = ATTClassicAD.LocalizedFlightPathDB[nodeData.nodeID];
					if node then
						-- Update the name of the node for this flight path.
						if node.name ~= nodeData.name then
							node.name = nodeData.name;
							ATTClassicAD.LocalizedFlightPathDB[nodeData.nodeID] = node;
						end
					else
						node = {};
						node.name = nodeData.name;
						ATTClassicAD.LocalizedFlightPathDB[nodeData.nodeID] = node;
					end
					if not fieldCache.flightPathID[nodeData.nodeID] then
						if nodeData.faction and nodeData.faction > 0 then
							node.r = nodeData.faction;
						elseif nodeData.atlasName then
							if nodeData.atlasName == "TaxiNode_Alliance" then
								node.r = Enum.FlightPathFaction.Alliance;
							elseif nodeData.atlasName == "TaxiNode_Horde" then
								node.r = Enum.FlightPathFaction.Horde;
							end
						end
						newNodes[nodeData.nodeID] = node;
						anyNew = true;
					end
				end
			end
		end
	end
	if anyNew then
		print("Found new flight path data:");
		for i,node in pairs(newNodes) do
			print(i, node.name);
		end
		SetDataMember("NewFlightPathData", newNodes);
	end
end
app.CacheFlightPathDataForMap = function(mapID, nodes)
	local count = 0;
	local temp = {};
	for nodeID,_ in pairs(fieldCache.flightPathID) do
		for i,node in ipairs(_) do
			if not node.u and node.coords and node.coords[1][3] == mapID then
				if not node.r or node.r == app.FactionID then
					temp[nodeID] = node;
					count = count + 1;
				end
			end
		end
	end
	if count > 0 then
		if count > 1 then
			count = 0;
			local pos = C_Map.GetPlayerMapPosition(app.CurrentMapID, "player");
			if pos then
				local px, py = pos:GetXY();
				px = px * 100;
				py = py * 100;
				
				-- Select the best flight path node.
				for nodeID,node in pairs(temp) do
					local coord = node.coords and node.coords[1];
					if coord then
						-- Allow for a little bit of leeway.
						if math.sqrt((coord[1] - px)^2 + (coord[2] - py)^2) < 0.6 then
							nodes[nodeID] = true;
						end
					end
				end
			end
		else
			for nodeID,_ in pairs(temp) do
				nodes[nodeID] = true;
			end
		end
	end
	return count;
end
app.CacheFlightPathDataForTarget = function(nodes)
	local guid = UnitGUID("npc") or UnitGUID("target");
	if guid then
		local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid);
		if type == "Creature" and npcID then
			npcID = tonumber(npcID);
			local count = 0;
			local searchResults = SearchForField("creatureID", npcID);
			if searchResults and #searchResults > 0 then
				for i,group in ipairs(searchResults) do
					if group.flightPathID and not group.nmr and not group.nmc and (not group.u or group.u > 1) then
						nodes[group.flightPathID] = true;
						count = count + 1;
					end
				end
			end
			return count;
		end
	end
	return 0;
end
local fields = {
	["key"] = function(t)
		return "flightPathID";
	end,
	["text"] = function(t)
		return t.name;
	end,
	["name"] = function(t)
		local info = ATTClassicAD.LocalizedFlightPathDB[t.flightPathID];
		return info and info.name or "Visit the Flight Master to cache.";
	end,
	["icon"] = function(t)
		local r = t.r;
		if r then
			if r == Enum.FlightPathFaction.Horde then
				return app.asset("fp_horde");
			else
				return app.asset("fp_alliance");
			end
		end
		return app.asset("fp_neutral");
	end,
	["description"] = function(t)
		return "Flight paths are cached when you look at the flight master at each location.\n  - Crieve";
	end,
	["collectible"] = function(t)
		return app.CollectibleFlightPaths;
	end,
	["collected"] = function(t)
		if app.CurrentCharacter.FlightPaths[t.flightPathID] then return 1; end
		if app.AccountWideFlightPaths and ATTAccountWideData.FlightPaths[t.flightPathID] then return 2; end
		if t.altQuests then
			for i,questID in ipairs(t.altQuests) do
				if IsQuestFlaggedCompleted(questID) then
					return 2;
				end
			end
		end
	end,
	["nmc"] = function(t)
		local c = t.c;
		if c and not containsValue(c, app.ClassIndex) then
			rawset(t, "nmc", true); -- "Not My Class"
			return true;
		end
		rawset(t, "nmc", false); -- "My Class"
		return false;
	end,
	["nmr"] = function(t)
		local r = t.r;
		return r and r ~= app.FactionID;
	end,
};
app.BaseFlightPath = app.BaseObjectFields(fields);
app.CreateFlightPath = function(id, t)
	return setmetatable(constructor(id, t, "flightPathID"), app.BaseFlightPath);
end
app.events.GOSSIP_SHOW = function()
	local knownNodeIDs = {};
	if app.CacheFlightPathDataForTarget(knownNodeIDs) > 0 then
		for nodeID,_ in pairs(knownNodeIDs) do
			nodeID = tonumber(nodeID);
			if not app.CurrentCharacter.FlightPaths[nodeID] then
				ATTAccountWideData.FlightPaths[nodeID] = 1;
				app.CurrentCharacter.FlightPaths[nodeID] = 1;
				UpdateSearchResults(SearchForField("flightPathID", nodeID));
			end
		end
	end
end
app.events.TAXIMAP_OPENED = function()
	local knownNodeIDs = {};
	app.CacheFlightPathDataForTarget(knownNodeIDs);
	app.CacheFlightPathDataForMap(app.CurrentMapID, knownNodeIDs);
	
	local allNodeData = C_TaxiMap.GetAllTaxiNodes(app.CurrentMapID);
	if allNodeData then
		for j,nodeData in ipairs(allNodeData) do
			if nodeData.state and nodeData.state < 2 then
				knownNodeIDs[nodeData.nodeID] = true;
			end
		end
	end
	
	for nodeID,_ in pairs(knownNodeIDs) do
		nodeID = tonumber(nodeID);
		if not app.CurrentCharacter.FlightPaths[nodeID] then
			ATTAccountWideData.FlightPaths[nodeID] = 1;
			app.CurrentCharacter.FlightPaths[nodeID] = 1;
			UpdateSearchResults(SearchForField("flightPathID", nodeID));
		end
	end
end
end)();

-- Holiday Lib
(function()
local function GetHolidayCache()
	local cache = GetTempDataMember("HOLIDAY_CACHE");
	if not cache then
		cache = {};
		SetTempDataMember("HOLIDAY_CACHE", cache);
		SetDataMember("HOLIDAY_CACHE", cache);
		local date = C_Calendar.GetDate();
		C_Calendar.SetAbsMonth(date.month, date.year);
		for month=1,12,1 do
			C_Calendar.SetMonth(1);
			for day=1,31,1 do
				local numEvents = C_Calendar.GetNumDayEvents(0, day);
				if numEvents > 0 then
					for index=1,numEvents,1 do
						local event = C_Calendar.GetDayEvent(0, day, index)
						if event and event.calendarType == "HOLIDAY" and event.sequenceType == "START" then
							if event.iconTexture then
								local t = cache[event.iconTexture];
								if not t then
									t = {
										["name"] = event.title,
										["icon"] = event.iconTexture,
										["times"] = {},
									};
									cache[event.iconTexture] = t;
								elseif event.iconTexture == 235465 then
									-- Harvest Festival and Pilgrims Bounty use the same icon...
									t = {
										["name"] = event.title,
										["icon"] = event.iconTexture,
										["times"] = {},
									};
									cache[235466] = t;
								end
								tinsert(t.times,
								{
									["start"] = time({
										year=event.startTime.year,
										month=event.startTime.month,
										day=event.startTime.monthDay,
										hour=event.startTime.hour,
										minute=event.startTime.minute,
									}),
									["end"] = time({
										year=event.endTime.year,
										month=event.endTime.month,
										day=event.endTime.monthDay,
										hour=event.endTime.hour,
										minute=event.endTime.minute,
									}),
									["startTime"] = event.startTime,
									["endTime"] = event.endTime,
								});
							end
						end
					end
				end
			end
		end
		C_Calendar.SetAbsMonth(date.month, date.year);
	end
	return cache;
end
local texcoord = { 0.0, 0.7109375, 0.0, 0.7109375 };
local fields = {
	["key"] = function(t)
		return "holidayID";
	end,
	["info"] = function(t)
		local info = GetHolidayCache()[t.holidayID];
		if info then
			rawset(t, "info", info);
			return info;
		end
		return {};
	end,
	["text"] = function(t)
		return t.info.name;
	end,
	["icon"] = function(t)
		return t.holidayID == 235466 and 235465 or t.holidayID;
	end,
	["texcoord"] = function(t)
		return not rawget(t, "icon") and texcoord;
	end,
};
app.BaseHoliday = app.BaseObjectFields(fields);
app.CreateHoliday = function(id, t)
	return setmetatable(constructor(id, t, "holidayID"), app.BaseHoliday);
end
end)();

-- Item Lib
(function()
local BestSuffixPerItemID = setmetatable({}, { __index = function(t, id)
	local suffixes = GetDataSubMember("ValidSuffixesPerItemID", id);
	if suffixes then
		for suffixID,_ in pairs(suffixes) do
			rawset(t, id, suffixID);
			return suffixID;
		end
	else
		-- No valid suffixes
		rawset(t, id, 0);
		return 0;
	end
end });
local TotalRetriesPerItemID = setmetatable({}, { __index = function(t, id)
	return 0;
end });
local BestItemLinkPerItemID = setmetatable({}, { __index = function(t, id)
	local suffixID = BestSuffixPerItemID[id];
	local link = select(2, GetItemInfo(suffixID > 0 and string.format("item:%d:0:0:0:0:0:%d", id, suffixID) or id));
	if link then
		rawset(t, id, link);
		return link;
	end
end });
app.ParseItemID = function(itemName)
	if type(itemName) == "number" then
		return itemName;
	else
		local itemID = tonumber(itemName);
		if string.match(tostring(itemID), itemName) then
			-- This was actually an item ID.
			return itemID;
		else
			-- The itemID given was actually the name or a link.
			itemID = select(1, GetItemInfoInstant(itemName));
			if itemID then
				-- Oh good, it was cached by WoW.
				return itemID;
			else
				-- Oh no, gonna need to work for it.
				local iCache = fieldCache["itemID"];
				for id,_ in pairs(iCache) do
					local text = BestItemLinkPerItemID[id];
					if text and string.match(text, itemName) then
						return id;
					end
				end
			end
		end
	end
end
app.ClearItemCache = function()
	wipe(BestSuffixPerItemID);
	wipe(BestItemLinkPerItemID);
end
local itemFields = {
	["key"] = function(t)
		return "itemID";
	end,
	["text"] = function(t)
		return t.link;
	end,
	["icon"] = function(t)
		return select(5, GetItemInfoInstant(t.itemID)) or "Interface\\Icons\\INV_Misc_QuestionMark";
	end,
	["link"] = function(t)
		return BestItemLinkPerItemID[t.itemID];
	end,
	["name"] = function(t)
		local link = t.link;
		return link and GetItemInfo(link);
	end,
	["b"] = function(t)
		return 2;
	end,
	["f"] = function(t)
		if t.questID then return 104; end
		local results = SearchForField("itemIDAsCost", t.itemID);
		if results and #results > 0 then
			return 104;
		end
	end,
	["tsm"] = function(t)
		return string.format("i:%d", t.itemID);
	end,
	["repeatable"] = function(t)
		return rawget(t, "isDaily") or rawget(t, "isWeekly") or rawget(t, "isMonthly") or rawget(t, "isYearly");
	end,
	["trackableAsQuest"] = function(t)
		return true;
	end,
	["collectible"] = function(t)
		return t.collectibleAsCost;
	end,
	["collectibleAsCost"] = function(t)
		local id = t.itemID;
		local results = app.SearchForField("itemIDAsCost", id, true);
		if results and #results > 0 then
			if not t.parent or not t.parent.saved then
				for _,ref in pairs(results) do
					if ref.itemID ~= id and app.RecursiveGroupRequirementsFilter(ref) then
						if ref.key == "instanceID" or ((ref.key == "difficultyID" or ref.key == "mapID" or ref.key == "headerID") and (ref.parent and GetRelativeValue(ref.parent, "instanceID"))) then
							return app.CollectibleQuests;
						elseif ref.collectible and not ref.collected then
							return true;
						elseif ref.total and ref.total > 0 then
							return true;
						end
					end
				end
			end
			return false;
		--elseif t.rwp then
		--	return true;
		elseif t.metaAfterFailure then
			setmetatable(t, t.metaAfterFailure);
			return false;
		end
	end,
	["collectibleAsCostAfterFailure"] = function(t)
		return false;
	end,
	["collectibleAsFaction"] = function(t)
		return app.CollectibleReputations or t.collectibleAsCost;
	end,
	["collectibleAsFactionOnly"] = function(t)
		return app.CollectibleReputations;
	end,
	["collectibleAsFactionOrQuest"] = function(t)
		return t.collectibleAsFactionOnly or t.collectibleAsQuestOnly;
	end,
	["collectibleAsQuest"] = function(t)
		if app.CollectibleQuests then
			return (not t.repeatable and not t.isBreadcrumb) or C_QuestLog.IsOnQuest(t.questID);
		end
		return t.collectibleAsCost;
	end,
	["collected"] = function(t)
		return t.collectedAsCost;
	end,
	["collectedAsCost"] = function(t)
		local id, partial = t.itemID;
		local results = app.SearchForField("itemIDAsCost", id, true);
		if results and #results > 0 then
			for _,ref in pairs(results) do
				if ref.itemID ~= id and app.RecursiveGroupRequirementsFilter(ref) then
					if ref.key == "instanceID" or ((ref.key == "difficultyID" or ref.key == "mapID" or ref.key == "headerID") and (ref.parent and GetRelativeValue(ref.parent, "instanceID"))) then
						if app.CollectibleQuests and GetItemCount(id, true) == 0 then
							return false;
						end
					elseif ref.collectible and not ref.collected then
						if ref.cost then
							for k,v in ipairs(ref.cost) do
								if v[2] == id and v[1] == "i" then
									if GetItemCount(id, true) >= (v[3] or 1) then
										partial = true;
									else
										return false;
									end
								end
							end
						end
						if ref.providers then
							for k,v in ipairs(ref.providers) do
								if v[2] == id and v[1] == "i" then
									if GetItemCount(id, true) > 0 and (not ref.objectiveID or ref.saved) then
										partial = true;
									else
										return false;
									end
								end
							end
						end
					elseif (ref.total and ref.total > 0 and not GetRelativeField(t, "parent", ref) and ref.progress < ref.total) then
						if ref.cost then
							for k,v in ipairs(ref.cost) do
								if v[2] == id and v[1] == "i" then
									if GetItemCount(id, true) >= (v[3] or 1) then
										partial = true;
									else
										return false;
									end
								end
							end
						end
						if ref.providers then
							for k,v in ipairs(ref.providers) do
								if v[2] == id and v[1] == "i" then
									if GetItemCount(id, true) > 0 then
										partial = true;
									else
										return false;
									end
								end
							end
						end
					end
				end
			end
			return partial and 2 or 1;
		end
		--if t.rwp then
		--	return GetItemCount(id, true) > 0;
		--end
	end,
	["collectedAsCostAfterFailure"] = function(t)
		
	end,
	["collectedAsFaction"] = function(t)
		return t.collectedAsFactionOnly or t.collectedAsCost;
	end,
	["collectedAsFactionOnly"] = function(t)
		if t.factionID then
			-- This is used by reputation tokens. (turn in items)
			if app.CurrentCharacter.Factions[t.factionID] then return 1; end
			if app.AccountWideReputations and ATTAccountWideData.Factions[t.factionID] then return 2; end
			if select(3, GetFactionInfoByID(t.factionID)) == 8 then
				app.CurrentCharacter.Factions[t.factionID] = 1;
				ATTAccountWideData.Factions[t.factionID] = 1;
				return 1;
			end
		end
	end,
	["collectedAsFactionOrQuest"] = function(t)
		return t.collectedAsFactionOnly or t.collectedAsQuest;
	end,
	["collectedAsQuest"] = function(t)
		return IsQuestFlaggedCompletedForObject(t) or t.collectedAsCost;
	end,
	["savedAsQuest"] = function(t) 
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end,
};
app.BaseItem = app.BaseObjectFields(itemFields);
(function()
local fieldsAfterFailure = RawCloneData(itemFields);
fieldsAfterFailure.collectibleAsCost = itemFields.collectibleAsCostAfterFailure;
fieldsAfterFailure.collectedAsCost = itemFields.collectedAsCostAfterFailure;
local newMeta = app.BaseObjectFields(fieldsAfterFailure);
itemFields.metaAfterFailure = function(t) return newMeta; end;
end)();

local fields = RawCloneData(itemFields);
fields.collectible = itemFields.collectibleAsFaction;
fields.collected = itemFields.collectedAsFaction;
app.BaseItemWithFactionID = app.BaseObjectFields(fields);
(function()
local fieldsAfterFailure = RawCloneData(fields);
fieldsAfterFailure.collectibleAsCost = itemFields.collectibleAsCostAfterFailure;
fieldsAfterFailure.collectedAsCost = itemFields.collectedAsCostAfterFailure;
local newMeta = app.BaseObjectFields(fieldsAfterFailure);
fields.metaAfterFailure = function(t) return newMeta; end;
end)();

local fields = RawCloneData(itemFields);
fields.collectible = itemFields.collectibleAsQuest;
fields.collected = itemFields.collectedAsQuest;
fields.trackable = itemFields.trackableAsQuest;
fields.saved = itemFields.savedAsQuest;
app.BaseItemWithQuestID = app.BaseObjectFields(fields);
(function()
local fieldsAfterFailure = RawCloneData(fields);
fieldsAfterFailure.collectibleAsCost = itemFields.collectibleAsCostAfterFailure;
fieldsAfterFailure.collectedAsCost = itemFields.collectedAsCostAfterFailure;
local newMeta = app.BaseObjectFields(fieldsAfterFailure);
fields.metaAfterFailure = function(t) return newMeta; end;
end)();

local fields = RawCloneData(itemFields);
fields.collectible = itemFields.collectibleAsFactionOrQuest;
fields.collected = itemFields.collectedAsFactionOrQuest;
fields.trackable = itemFields.trackableAsQuest;
fields.saved = itemFields.savedAsQuest;
app.BaseItemWithQuestIDAndFactionID = app.BaseObjectFields(fields);
(function()
local fieldsAfterFailure = RawCloneData(fields);
fieldsAfterFailure.collectibleAsCost = itemFields.collectibleAsCostAfterFailure;
fieldsAfterFailure.collectedAsCost = itemFields.collectedAsCostAfterFailure;
local newMeta = app.BaseObjectFields(fieldsAfterFailure);
fields.metaAfterFailure = function(t) return newMeta; end;
end)();
app.CreateItem = function(id, t)
	if t then
		--[[
		if t.requireSkill and t.f == 200 then
			print("Missing SpellID for ItemID ", id);
		end
		]]--
		if rawget(t, "factionID") then
			if rawget(t, "questID") then
				return setmetatable(constructor(id, t, "itemID"), app.BaseItemWithQuestIDAndFactionID);
			else
				return setmetatable(constructor(id, t, "itemID"), app.BaseItemWithFactionID);
			end
		elseif rawget(t, "questID") then
			return setmetatable(constructor(id, t, "itemID"), app.BaseItemWithQuestID);
		elseif rawget(t, "spellID") and rawget(t, "f") == 200 then
			-- Temporary fix until someone fixes parser. (this is slower than using parser)
			rawset(t, "f", nil);
			rawset(t, "itemID", id);
			return setmetatable(constructor(rawget(t, "spellID"), t, "spellID"), app.BaseRecipeWithItem);
		end
	end
	return setmetatable(constructor(id, t, "itemID"), app.BaseItem);
end

local fields = RawCloneData(itemFields);
fields.collectible = function(t)
	return app.CollectibleToys;
end
fields.collected = function(t)
	if t.itemID then
		if GetItemCount(t.itemID, true) > 0 then
			app.CurrentCharacter.Toys[t.itemID] = 1;
			ATTAccountWideData.Toys[t.itemID] = 1;
			return 1;
		elseif app.CurrentCharacter.Toys[t.itemID] == 1 then
			app.CurrentCharacter.Toys[t.itemID] = nil;
			ATTAccountWideData.Toys[t.itemID] = nil;
			for guid,characterData in pairs(ATTCharacterData) do
				if characterData.Toys and characterData.Toys[t.itemID] then
					ATTAccountWideData.Toys[t.itemID] = 1;
				end
			end
		end
		if app.AccountWideToys and ATTAccountWideData.Toys[t.itemID] then
			return 2;
		end
	end
end
fields.isToy = function(t) return true; end

app.BaseToy = app.BaseObjectFields(fields);
app.CreateToy = function(id, t)
	return setmetatable(constructor(id, t, "itemID"), app.BaseToy);
end

local HarvestedItemDatabase = {};
local itemHarvesterFields = RawCloneData(itemFields);
itemHarvesterFields.collectible = function(t)
	return true;
end
itemHarvesterFields.collected = function(t)
	return false;
end
itemHarvesterFields.text = function(t)
	local link = t.link;
	if link then
		local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
		itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent
			= GetItemInfo(link);
		if itemName then
			local spellName, spellID;
			if class == "Recipe" or class == "Mount" then
				spellName, spellID = GetItemSpell(t.itemID);
				if spellName == "Learning" then spellID = nil; end	-- RIP.
				setmetatable(t, app.BaseItemTooltipHarvester);
			else
				setmetatable(t, app.BaseItemTooltipHarvester);
			end
			local info = {
				["name"] = itemName,
				["itemID"] = t.itemID,
				["equippable"] = itemEquipLoc and itemEquipLoc ~= "" and true or false,
				["class"] = classID,
				["subclass"] = subclassID,
				["inventoryType"] = C_Item.GetItemInventoryTypeByID(t.itemID),
				["b"] = bindType,
				["q"] = itemQuality,
				["iLvl"] = itemLevel,
				["spellID"] = spellID,
			};
			if itemMinLevel and itemMinLevel > 1 then
				info.lvl = itemMinLevel;
			end
			if info.inventoryType == 0 then
				info.inventoryType = nil;
			end
			if info.b and info.b ~= 1 then
				info.b = nil;
			end
			if info.q and info.q < 1 then
				info.q = nil;
			end
			if info.iLvl and info.iLvl < 2 then
				info.iLvl = nil;
			end
			t.itemType = itemType;
			t.itemSubType = itemSubType;
			t.info = info;
			t.retries = nil;
			HarvestedItemDatabase[t.itemID] = info;
			ATTClassicAD.HarvestedItemDatabase = HarvestedItemDatabase;
			return link;
		end
	end
	
	t.retries = (t.retries or 0) + 1;
	if t.retries > 30 then
		rawset(t, "collected", true);
	end
end
app.BaseItemHarvester = app.BaseObjectFields(itemHarvesterFields);

local ItemHarvester = CreateFrame("GameTooltip", "ATTCItemHarvester", UIParent, "GameTooltipTemplate");
local itemTooltipHarvesterFields = RawCloneData(itemHarvesterFields);
itemTooltipHarvesterFields.text = function(t)
	local link = t.link;
	if link then
		ItemHarvester:SetOwner(UIParent,"ANCHOR_NONE")
		ItemHarvester:SetHyperlink(link);
		local lineCount = ItemHarvester:NumLines();
		if ATTCItemHarvesterTextLeft1:GetText() and ATTCItemHarvesterTextLeft1:GetText() ~= RETRIEVING_DATA and lineCount > 0 then
			local requirements = {};
			for index=2,lineCount,1 do
				local line = _G["ATTCItemHarvesterTextLeft" .. index] or _G["ATTCItemHarvesterText" .. index];
				if line then
					local text = line:GetText();
					if text then
						if string.find(text, "Classes: ") then
							local classes = {};
							local _,list = strsplit(":", text);
							for i,s in ipairs({strsplit(",", list)}) do
								table.insert(classes, app.ClassDB[strtrim(s)]);
							end
							if #classes > 0 then
								t.info.classes = classes;
							end
						elseif string.find(text, "Races: ") then
							local races = {};
							local _,list = strsplit(":", text);
							for i,s in ipairs({strsplit(",", list)}) do
								table.insert(races, app.RaceDB[strtrim(s)]);
							end
							if #races > 0 then
								t.info.races = races;
							end
						elseif string.find(text, "Requires") and not string.find(text, "Level") and not string.find(text, "Riding") then
							local c = strsub(text, 1, 1);
							if c ~= " " and c ~= "\t" and c ~= "\n" and c ~= "\r" then
								text = strsub(strtrim(text), 9);
								if string.find(text, "-") then
									local faction,replevel = strsplit("-", text);
									t.info.minReputation = { app.GetFactionIDByName(faction), app.GetFactionStandingThresholdFromString(replevel) };
								else
									if string.find(text, "%(") then
										if t.info.requireSkill then
											-- If non-specialization skill is already assigned, skip this part.
											text = nil;
										else
											text = strsplit("(", text);
										end
									end
									if text then
										local spellName = strtrim(text);
										if spellName == "Herbalism" then spellName = "Herb Gathering"; end
										local spellID = app.SpellNameToSpellID[spellName];
										if spellID then
											local skillID = app.SpellIDToSkillID[spellID];
											if skillID then
												t.info.requireSkill = skillID;
											else
												print("Unknown Skill", text);
												table.insert(requirements, text);
											end
										else
											print("Unknown Spell", text);
											table.insert(requirements, text);
										end
									end
								end
							end
						end
					end
				end
			end
			if #requirements > 0 then
				t.info.otherRequirements = requirements;
			end
			rawset(t, "text", link);
			rawset(t, "collected", true);
		end
		ItemHarvester:Hide();
		return link;
	end
end
app.BaseItemTooltipHarvester = app.BaseObjectFields(itemTooltipHarvesterFields);
app.CreateItemHarvester = function(id, t)
	return setmetatable(constructor(id, t, "itemID"), app.BaseItemHarvester);
end
end)();

-- Loot Method + Threshold Lib
(function()
local lootMethodIcons = {
	freeforall = "Interface\\Icons\\Ability_Rogue_Sprint",
	group = "Interface\\Icons\\INV_Misc_Coin_01",
	master = "Interface\\Icons\\Ability_Warrior_BattleShout",
	needbeforegreed = "Interface\\Icons\\Ability_Rogue_Eviscerate",
	roundrobin = "Interface\\Icons\\INV_Misc_Coin_01",
};
local lootThresholdIcons = {
	"Interface\\Icons\\inv_sword_04",	-- Common
	"Interface\\Icons\\inv_sword_24",	-- Uncommon
	"Interface\\Icons\\inv_sword_42",	-- Rare
	"Interface\\Icons\\inv_sword_62",	-- Epic
	"Interface\\Icons\\inv_hammer_unique_sulfuras",	-- Legendary
	[0] = "Interface\\Icons\\inv_sword_04",	-- Poor
};
local setLootMethod = function(self, button)
	if IsInGroup() then
		if self.ref.id == "master" then
			SetLootMethod(self.ref.id, UnitName("player"));
		else
			SetLootMethod(self.ref.id);
		end
	end
	if self then self:GetParent():GetParent():Reset(); end
	return true;
end;
local setLootThreshold = function(self, button)
	if IsInGroup() then
		SetLootThreshold(self.ref.id);
	end
	if self then self:GetParent():GetParent():Reset(); end
	return true;
end;
local fields = {
	["key"] = function(t)
		return "id";
	end,
	["text"] = function(t)
		return UnitLootMethod[t.id].text;
	end,
	["icon"] = function(t)
		return lootMethodIcons[t.id];
	end,
	["description"] = function(t)
		return UnitLootMethod[t.id].tooltipText;
	end,
	["visible"] = function(t)
		return true;
	end,
	["back"] = function(t)
		return 0.5;
	end,
	["OnClick"] = function(t)
		return setLootMethod;
	end,
};
app.BaseLootMethod = app.BaseObjectFields(fields);
app.CreateLootMethod = function(id, t)
	return setmetatable(constructor(id, t, "id"), app.BaseLootMethod);
end

local fields = {
	["key"] = function(t)
		return "id";
	end,
	["text"] = function(t)
		return ITEM_QUALITY_COLORS[t.id].hex .. t.name .. "|r";
	end,
	["name"] = function(t)
		return _G["ITEM_QUALITY" .. t.id .. "_DESC"];
	end,
	["icon"] = function(t)
		return lootThresholdIcons[t.id];
	end,
	["description"] = function(t)
		return NEWBIE_TOOLTIP_UNIT_LOOT_THRESHOLD;
	end,
	["visible"] = function(t)
		return true;
	end,
	["back"] = function(t)
		return 0.5;
	end,
	["OnClick"] = function(t)
		return setLootThreshold;
	end,
};
app.BaseLootThreshold = app.BaseObjectFields(fields);
app.CreateLootThreshold = function(id, t)
	return setmetatable(constructor(id, t, "id"), app.BaseLootThreshold);
end
end)();

-- Map Lib
(function()
local C_Map_GetMapArtID = C_Map.GetMapArtID;
local C_Map_GetMapInfo = C_Map.GetMapInfo;
local C_Map_GetMapLevels = C_Map.GetMapLevels;
local C_Map_GetBestMapForUnit = C_Map.GetBestMapForUnit;
local C_MapExplorationInfo_GetExploredMapTextures = C_MapExplorationInfo.GetExploredMapTextures;
local C_MapExplorationInfo_GetExploredAreaIDsAtPosition = C_MapExplorationInfo.GetExploredAreaIDsAtPosition;
app.GetCurrentMapID = function()
	local real = GetRealZoneText();
	if real then
		local otherMapID = L.ZONE_TEXT_TO_MAP_ID[real] or L.ALT_ZONE_TEXT_TO_MAP_ID[real];
		if otherMapID then return otherMapID; end
	end
	local zone = GetSubZoneText();
	if zone then
		local otherMapID = L.ZONE_TEXT_TO_MAP_ID[zone] or L.ALT_ZONE_TEXT_TO_MAP_ID[zone];
		if otherMapID then return otherMapID; end
	end
	return C_Map_GetBestMapForUnit("player");
end
app.GetMapName = function(mapID)
	if mapID and mapID > 0 then
		local info = C_Map_GetMapInfo(mapID);
		if info then
			return info.name;
		else
			for name,m in pairs(L["ZONE_TEXT_TO_MAP_ID"]) do
				if mapID == m then
					return name;
				end
			end
			for name,m in pairs(L["ALT_ZONE_TEXT_TO_MAP_ID"]) do
				if mapID == m then
					return name;
				end
			end
		end
		return "Map ID #" .. mapID;
	else
		return "Map ID #???";
	end
end

local fields = {
	["key"] = function(t)
		return "explorationID";
	end,
	["text"] = function(t)
		return C_Map.GetAreaInfo(t.explorationID) or RETRIEVING_DATA;
	end,
	["title"] = function(t)
		return t.maphash;
	end,
	["preview"] = function(t)
		local exploredMapTextureInfo = t.exploredMapTextureInfo;
		if exploredMapTextureInfo then
			local texture = exploredMapTextureInfo.fileDataIDs[1];
			if texture then
				rawset(t, "preview", texture);
				return texture;
			end
		end
	end,
	["artID"] = function(t)
		return t.parent and (t.parent.artID or (t.parent.parent and t.parent.parent.artID));
	end,
	["icon"] = function(t)
		return app.asset("INV_Misc_Map02");
	end,
	["mapID"] = function(t)
		return t.parent and (t.parent.mapID or (t.parent.parent and t.parent.parent.mapID));
	end,
	["collectible"] = function(t)
		return app.CollectibleExploration;
	end,
	["collected"] = function(t)
		if app.CurrentCharacter.Exploration[t.explorationID] then return 1; end
		if app.AccountWideExploration and ATTAccountWideData.Exploration[t.explorationID] then return 2; end
		
		local maphash = t.maphash;
		if maphash then
			local exploredMapTextures = C_MapExplorationInfo_GetExploredMapTextures(t.mapID)
			if exploredMapTextures then
				for i,info in ipairs(exploredMapTextures) do
					local hash = info.textureWidth..":"..info.textureHeight..":"..info.offsetX..":"..info.offsetY;
					if hash == maphash then
						app.CurrentCharacter.Exploration[t.explorationID] = 1;
						ATTAccountWideData.Exploration[t.explorationID] = 1;
						return 1;
					end
				end
			end
		end
		--[[
		local coords = t.coords;
		if coords and #coords > 0 then
			local c = coords[1];
			local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(c[2], CreateVector2D(c[1] / 100, c[2] / 100, c[2]));
			if explored then
				for _,areaID in ipairs(explored) do
					if areaID == t.explorationID then
						app.CurrentCharacter.Exploration[areaID] = 1;
						ATTAccountWideData.Exploration[areaID] = 1;
						return 1;
					end
				end
			end
		end
		]]
	end,
	["coords"] = function(t)
		local coords = app.ExplorationAreaPositionDB[t.explorationID];
		if not coords then
			local maphash = t.maphash;
			if maphash then
				local coords = {};
				local width, height, offsetX, offsetY = strsplit(":", maphash);
				tinsert(coords, {((offsetX + (width * 0.5)) * 100) / WorldMapFrame:GetWidth(), ((offsetY + (height * 0.5)) * 100) / WorldMapFrame:GetHeight(), t.mapID});
				return coords;
			end
		end
		return coords;
	end,
	["exploredMapTextureInfo"] = function(t)
		local maphash = t.maphash;
		if maphash then
			local exploredMapTextures = C_MapExplorationInfo_GetExploredMapTextures(t.mapID)
			if exploredMapTextures then
				for i,info in ipairs(exploredMapTextures) do
					local hash = info.textureWidth..":"..info.textureHeight..":"..info.offsetX..":"..info.offsetY;
					if hash == maphash then
						rawset(t, "exploredMapTextureInfo", info);
						return info;
					end
				end
			end
		end
	end
};
app.ExplorationClass = app.BaseObjectFields(fields);
app.CreateExploration = function(id, t)
	return setmetatable(constructor(id, t, "explorationID"), app.ExplorationClass);
end

local ExplorationGrid = {};
local levelOfDetail = -1;--200;
for i=0,levelOfDetail,1 do
	for j=0,levelOfDetail,1 do
		tinsert(ExplorationGrid, CreateVector2D(i / levelOfDetail, j / levelOfDetail));
	end
end

local DiscoveredNewArea = {};
local onMapUpdate = function(t)
	local explorationByAreaID = {};
	local explorationHeader = nil;
	local coordinates = {};
	for i,o in ipairs(t.g) do
		if o.key == "headerID" and o.headerID == -15 then
			explorationHeader = o;
			if o.g then
				for j,e in ipairs(o.g) do
					explorationByAreaID[e.explorationID] = e;
					if e.coords and #e.coords > 0 then
						tinsert(coordinates, e.coords[1]);
					else
						print("Missing Coordinates for areaID", e.explorationID);
					end
				end
			end
			break;
		end
	end
	
	local id = t.mapID;
	local newExplorationObjects = {};
	local areaIDs = app.ExplorationDB[id];
	for _,pos in ipairs(coordinates) do
		local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(pos[3] or id, CreateVector2D(pos[1] / 100, pos[2] / 100));
		if explored then
			for _,areaID in ipairs(explored) do
				app.CurrentCharacter.Exploration[areaID] = 1;
				ATTAccountWideData.Exploration[areaID] = 1;
				local o = explorationByAreaID[areaID];
				if not o and not DiscoveredNewArea[areaID] then
					DiscoveredNewArea[areaID] = true;
					o = app.CreateExploration(areaID);
					explorationByAreaID[areaID] = o;
					tinsert(newExplorationObjects, o);
					print("Found New AreaID:", id, t.text, areaID, o.text);
					tinsert(areaIDs, areaID);
				end
			end
		end
	end
	for _,pos in ipairs(ExplorationGrid) do
		local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(id, pos);
		if explored then
			for _,areaID in ipairs(explored) do
				app.CurrentCharacter.Exploration[areaID] = 1;
				ATTAccountWideData.Exploration[areaID] = 1;
				local o = explorationByAreaID[areaID];
				if not o and not DiscoveredNewArea[areaID] then
					DiscoveredNewArea[areaID] = true;
					o = app.CreateExploration(areaID);
					explorationByAreaID[areaID] = o;
					tinsert(newExplorationObjects, o);
					print("Found New AreaID:", id, t.text, areaID, o.text);
					tinsert(areaIDs, areaID);
				end
				local coords = app.ExplorationAreaPositionDB[areaID];
				if not coords then
					coords = {};
					app.ExplorationAreaPositionDB[areaID] = coords;
					local missing = ATTClassicAD.ExplorationAreaPositionDB;
					if not missing then
						missing = {};
						ATTClassicAD.ExplorationAreaPositionDB = missing;
					end
					missing[areaID] = coords;
				end
				tinsert(coords, {pos.x * 100, pos.y * 100, id});
			end
		end
	end
	if #newExplorationObjects > 0 then
		if explorationHeader then
			if not explorationHeader.g then
				explorationHeader.g = {};
			end
			for i,o in ipairs(newExplorationObjects) do
				table.insert(explorationHeader.g, o);
				o.parent = explorationHeader;
			end
		else
			explorationHeader = app.CreateNPC(-15, newExplorationObjects);
			explorationHeader.u = t.u;
			for i,o in ipairs(newExplorationObjects) do
				o.parent = explorationHeader;
				if not o.u then o.u = t.u; end
			end
			explorationHeader.parent = t;
			tinsert(t.g, 1, explorationHeader);
		end
	end
	if explorationHeader and explorationHeader.g then
		insertionSort(explorationHeader.g, sortByTextSafely);
	end
	rawset(t, "OnUpdate", nil);
end;
local fields = {
	["key"] = function(t)
		return "mapID";
	end,
	["text"] = function(t)
		return rawget(t, "isRaid") and ("|cffff8000" .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return t.headerID and NPCNameFromID[t.headerID] or app.GetMapName(t.mapID);
	end,
	["icon"] = function(t)
		return t.headerID and L["HEADER_ICONS"][t.headerID] or app.asset("Category_Zones");
	end,
	["back"] = function(t)
		if app.CurrentMapID == t.mapID or (t.maps and contains(t.maps, app.CurrentMapID)) then
			return 1;
		end
	end,
	["artID"] = function(t)
		return C_Map_GetMapArtID(t.mapID);
	end,
	["lvl"] = function(t)
		return select(1, C_Map_GetMapLevels(t.mapID));
	end,
	["locks"] = function(t)
		local locks = app.CurrentCharacter.Lockouts[t.name];
		if locks then
			rawset(t, "locks", locks);
			return locks;
		end
	end,
	["saved"] = function(t)
		return t.locks;
	end,
};
app.BaseMap = app.BaseObjectFields(fields);
app.CreateMap = function(id, t)
	local map = setmetatable(constructor(id, t, "mapID"), app.BaseMap);
	local artID = t.artID;
	if artID and t.g then
		local explorationByAreaID = {};
		local explorationHeader = nil;
		for i,o in ipairs(t.g) do
			if o.headerID == -15 then
				explorationHeader = o;
				if o.g then
					for j,e in ipairs(o.g) do
						explorationByAreaID[e.explorationID] = e;
					end
				end
				break;
			end
		end
		
		local newExplorationObjects = {};
		local areaIDs = app.ExplorationDB[id];
		if not areaIDs then
			areaIDs = {};
			app.ExplorationDB[id] = areaIDs;
			--ATTClassicAD.ExplorationDB = ATTC.ExplorationDB;
		else
			for _,areaID in ipairs(areaIDs) do
				if not explorationByAreaID[areaID] then
					o = app.CreateExploration(areaID);
					explorationByAreaID[areaID] = o;
					tinsert(newExplorationObjects, o);
				end
			end
		end
		if #newExplorationObjects > 0 then
			if explorationHeader then
				if not explorationHeader.g then
					explorationHeader.g = {};
				end
				for i,o in ipairs(newExplorationObjects) do
					table.insert(explorationHeader.g, o);
					o.parent = explorationHeader;
				end
			else
				explorationHeader = app.CreateNPC(-15, newExplorationObjects);
				explorationHeader.u = t.u;
				for i,o in ipairs(newExplorationObjects) do
					o.parent = explorationHeader;
					if not o.u then o.u = t.u; end
				end
				explorationHeader.parent = t;
				tinsert(t.g, 1, explorationHeader);
			end
		end
		if explorationHeader and explorationHeader.g then
			insertionSort(explorationHeader.g, sortByTextSafely);
		end
		if not rawget(t, "OnUpdate") then
			map.OnUpdate = onMapUpdate;
		end
	end
	if t.creatureID and t.creatureID < 0 then
		rawset(t, "headerID", t.creatureID);
		rawset(t, "creatureID", nil);
	end
	return map;
end

local instanceFields = {
	["key"] = function(t)
		return "instanceID";
	end,
	["text"] = function(t)
		return rawget(t, "isRaid") and ("|cffff8000" .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return t.headerID and NPCNameFromID[t.headerID] or app.GetMapName(t.mapID);
	end,
	["icon"] = function(t)
		return t.headerID and L["HEADER_ICONS"][t.headerID] or app.asset("Category_Zones");
	end,
	["back"] = function(t)
		if app.CurrentMapID == t.mapID or (t.maps and contains(t.maps, app.CurrentMapID)) then
			return 1;
		end
	end,
	["mapID"] = function(t)
		return t.maps and t.maps[1];
	end,
	["lvl"] = function(t)
		return select(1, C_Map_GetMapLevels(t.mapID));
	end,
	["locks"] = function(t)
		local locks = app.CurrentCharacter.Lockouts[t.name];
		if locks then
			rawset(t, "locks", locks);
			return locks;
		end
	end,
	["saved"] = function(t)
		return t.locks;
	end,
};
app.BaseInstance = app.BaseObjectFields(instanceFields);
app.CreateInstance = function(id, t)
	if t.creatureID and t.creatureID < 0 then
		rawset(t, "headerID", t.creatureID);
		rawset(t, "creatureID", nil);
	end
	return setmetatable(constructor(id, t, "instanceID"), app.BaseInstance);
end

app.events.MAP_EXPLORATION_UPDATED = function(...)
	app.CurrentMapID = app.GetCurrentMapID();
	StartCoroutine("RefreshExploration", function()
		coroutine.yield();
		
		local pos = C_Map.GetPlayerMapPosition(app.CurrentMapID, "player");
		if pos then
			local x, y = pos:GetXY();
			local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(app.CurrentMapID, pos);
			if explored then
				local newArea = false;
				for _,areaID in ipairs(explored) do
					if not app.CurrentCharacter.Exploration[areaID] then
						app.CurrentCharacter.Exploration[areaID] = 1;
						ATTAccountWideData.Exploration[areaID] = 1;
						newArea = true;
						if not app.ExplorationAreaPositionDB[areaID] then
							local coord = {x * 100, y * 100, app.CurrentMapID};
							print("New Coordinate: ", C_Map.GetAreaInfo(areaID), coord);
							app.ExplorationAreaPositionDB[areaID] = { coord };
						end
					end
				end
				if newArea then
					app:RefreshData(true, true);
				end
			end
		end
	end);
end
app.events.UI_INFO_MESSAGE = function(messageID)
	if messageID == 372 then
		app.events.MAP_EXPLORATION_UPDATED();
	end
end
app.events.ZONE_CHANGED = function()
	app.CurrentMapID = app.GetCurrentMapID();
end
app.events.ZONE_CHANGED_NEW_AREA = function()
	app.CurrentMapID = app.GetCurrentMapID();
end
app:RegisterEvent("MAP_EXPLORATION_UPDATED");
app:RegisterEvent("UI_INFO_MESSAGE");
app:RegisterEvent("ZONE_CHANGED");
app:RegisterEvent("ZONE_CHANGED_NEW_AREA");
end)();

-- Mount Lib
(function()
local mountFields = {
	["key"] = function(t)
		return "spellID";
	end,
	["text"] = function(t)
		return "|cffb19cd9" .. t.name .. "|r";
	end,
	["icon"] = function(t)
		return select(3, GetSpellInfo(t.spellID));
	end,
	["link"] = function(t)
		return (t.itemID and select(2, GetItemInfo(t.itemID))) or select(1, GetSpellLink(t.spellID));
	end,
	["f"] = function(t)
		return 100;
	end,
	["collectible"] = function(t)
		return app.CollectibleMounts;
	end,
	["collected"] = function(t)
		-- Check all of the matches
		for i,o in ipairs(app.SearchForField("spellID", t.spellID)) do
			if o.explicitlyCollected then
				app.CurrentCharacter.Spells[t.spellID] = 1;
				ATTAccountWideData.Spells[t.spellID] = 1;
				return 1;
			end
		end
		
		-- Unflag collection
		if app.CurrentCharacter.Spells[t.spellID] == 1 then
			app.CurrentCharacter.Spells[t.spellID] = nil;
			ATTAccountWideData.Spells[t.spellID] = nil;
			for guid,characterData in pairs(ATTCharacterData) do
				if characterData.Spells and characterData.Spells[t.spellID] then
					ATTAccountWideData.Spells[t.spellID] = 1;
				end
			end
		end
		if app.AccountWideMounts and ATTAccountWideData.Spells[t.spellID] then return 2; end
	end,
	["explicitlyCollected"] = function(t)
		return IsSpellKnown(t.spellID) or (t.questID and IsQuestFlaggedCompleted(t.questID)) or (t.itemID and GetItemCount(t.itemID, true) > 0);
	end,
	["b"] = function(t)
		return (t.parent and t.parent.b) or 1;
	end,
	["name"] = function(t)
		return select(1, GetSpellInfo(t.spellID)) or RETRIEVING_DATA;
	end,
	["tsmForItem"] = function(t)
		if t.itemID then return string.format("i:%d", t.itemID); end
		if t.parent and t.parent.itemID then return string.format("i:%d", t.parent.itemID); end
	end,
	["linkForItem"] = function(t)
		return select(2, GetItemInfo(t.itemID)) or select(1, GetSpellLink(t.spellID));
	end,
};
app.BaseMount = app.BaseObjectFields(mountFields);

local fields = RawCloneData(mountFields);
fields.link = mountFields.linkForItem;
fields.tsm = mountFields.tsmForItem;
app.BaseMountWithItemID = app.BaseObjectFields(fields);
app.CreateMount = function(id, t)
	if t and rawget(t, "itemID") then
		return setmetatable(constructor(id, t, "spellID"), app.BaseMountWithItemID);
	else
		return setmetatable(constructor(id, t, "spellID"), app.BaseMount);
	end
end
end)();

-- NPC Lib
(function()
-- NPC Model Harvester (also acquires the displayID)
local npcModelHarvester = CreateFrame("DressUpModel", nil, UIParent);
npcModelHarvester:SetPoint("TOPRIGHT", UIParent, "BOTTOMRIGHT", 0, 0);
npcModelHarvester:SetSize(1, 1);
npcModelHarvester:Hide();
local NPCDisplayIDFromID = setmetatable({}, { __index = function(t, id)
	if id > 0 then
		npcModelHarvester:SetDisplayInfo(0);
		npcModelHarvester:SetUnit("none");
		npcModelHarvester:SetCreature(id);
		local displayID = npcModelHarvester:GetDisplayInfo();
		if displayID and displayID ~= 0 then
			rawset(t, id, displayID);
			return displayID;
		end
	end
end});
app.NPCDisplayIDFromID = NPCDisplayIDFromID;

local npcFields = {
	["key"] = function(t)
		return "npcID";
	end,
	["text"] = function(t)
		return rawget(t, "isRaid") and ("|cffff8000" .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return NPCNameFromID[t.npcID] or RETRIEVING_DATA;
	end,
	["icon"] = function(t)
		return (t.parent and t.parent.headerID == -2 and "Interface\\Icons\\INV_Misc_Coin_01")
			or app.DifficultyIcons[GetRelativeValue(t, "difficultyID") or 1];
	end,
	["title"] = function(t)
		return NPCTitlesFromID[t.npcID];
	end,
	["displayID"] = function(t)
		return app.NPCDisplayIDFromID[t.npcID];
	end,
	["creatureID"] = function(t)	-- TODO: Do something about this, it's silly.
		return t.npcID;
	end,
	
	["collectibleAsQuest"] = function(t)
		return app.CollectibleQuests and (not t.repeatable and not t.isBreadcrumb or C_QuestLog.IsOnQuest(t.questID));
	end,
	["collectedAsQuest"] = function(t)
		return IsQuestFlaggedCompletedForObject(t);
	end,
	["savedAsQuest"] = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end,
	["trackableAsQuest"] = function(t)
		return true;
	end,
	["repeatableAsQuest"] = function(t)
		return rawget(t, "isDaily") or rawget(t, "isWeekly") or rawget(t, "isMonthly") or rawget(t, "isYearly");
	end,
};
npcFields.icon = npcFields.iconAsDefault;
app.BaseNPC = app.BaseObjectFields(npcFields);

local fields = RawCloneData(npcFields);
fields.collectible = npcFields.collectibleAsQuest;
fields.collected = npcFields.collectedAsQuest;
fields.trackable = npcFields.trackableAsQuest;
fields.repeatable = npcFields.repeatableAsQuest;
fields.saved = fields.savedAsQuest;
app.BaseNPCWithQuest = app.BaseObjectFields(fields);

local headerFields = {
	["key"] = function(t)
		return "headerID";
	end,
	["text"] = function(t)
		return rawget(t, "isRaid") and ("|cffff8000" .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return L["HEADER_NAMES"][t.headerID];
	end,
	["icon"] = function(t)
		return L["HEADER_ICONS"][t.headerID];
	end,
	["description"] = function(t)
		return L["HEADER_DESCRIPTIONS"][t.headerID];
	end,
	["savedAsQuest"] = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end,
	["trackableAsQuest"] = function(t)
		return true;
	end,
};
app.BaseHeader = app.BaseObjectFields(headerFields);
local fields = RawCloneData(headerFields);
fields.saved = headerFields.savedAsQuest;
fields.trackable = headerFields.trackableAsQuest;
app.BaseHeaderWithQuest = app.BaseObjectFields(fields);
app.CreateNPC = function(id, t)
	if t then
		if id < 1 then
			if rawget(t, "questID") then
				return setmetatable(constructor(id, t, "headerID"), app.BaseHeaderWithQuest);
			else
				return setmetatable(constructor(id, t, "headerID"), app.BaseHeader);
			end
		else
			if rawget(t, "questID") then
				return setmetatable(constructor(id, t, "npcID"), app.BaseNPCWithQuest);
			else
				return setmetatable(constructor(id, t, "npcID"), app.BaseNPC);
			end
		end
	elseif id > 1 then
		return setmetatable(constructor(id, t, "npcID"), app.BaseNPC);
	else
		return setmetatable(constructor(id, t, "headerID"), app.BaseHeader);
	end
end
end)();

-- Object Lib (as in "World Object")
(function()
local objectFields = {
	["key"] = function(t)
		return "objectID";
	end,
	["text"] = function(t)
		return rawget(t, "isRaid") and ("|cffff8000" .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectNames[v[2]] or RETRIEVING_DATA;
					elseif v[1] == "i" then
						return select(1, GetItemInfo(v[2])) or RETRIEVING_DATA;
					end
				end
			end
		end
		return app.ObjectNames[t.objectID] or ("Object ID #" .. t.objectID);
	end,
	["icon"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectIcons[v[2]] or "Interface\\Icons\\INV_Misc_Bag_10";
					elseif v[1] == "i" then
						return select(5, GetItemInfoInstant(v[2])) or "Interface\\Icons\\INV_Misc_Bag_10";
					end
				end
			end
		end
		return app.ObjectIcons[t.objectID] or "Interface\\Icons\\INV_Misc_Bag_10";
	end,
	["model"] = function(t)
		return app.ObjectModels[t.objectID];
	end,
	
	["collectibleAsQuest"] = function(t)
		return app.CollectibleQuests and (not t.repeatable and not t.isBreadcrumb or C_QuestLog.IsOnQuest(t.questID));
	end,
	["collectedAsQuest"] = function(t)
		return IsQuestFlaggedCompletedForObject(t);
	end,
	["savedAsQuest"] = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end,
	["trackableAsQuest"] = function(t)
		return true;
	end,
	["repeatableAsQuest"] = function(t)
		return rawget(t, "isDaily") or rawget(t, "isWeekly") or rawget(t, "isMonthly") or rawget(t, "isYearly");
	end,
};
app.BaseObject = app.BaseObjectFields(objectFields);

local fields = RawCloneData(objectFields);
fields.collectible = objectFields.collectibleAsQuest;
fields.collected = objectFields.collectedAsQuest;
fields.trackable = objectFields.trackableAsQuest;
fields.repeatable = objectFields.repeatableAsQuest;
fields.saved = fields.savedAsQuest;
app.BaseObjectWithQuest = app.BaseObjectFields(fields);
app.CreateObject = function(id, t)
	if t and rawget(t, "questID") then
		return setmetatable(constructor(id, t, "objectID"), app.BaseObjectWithQuest);
	else
		return setmetatable(constructor(id, t, "objectID"), app.BaseObject);
	end
end
end)();

-- Profession Lib
(function()
app.SkillIDToSpellID = setmetatable({
	[171] = 2259,	-- Alchemy
	[794] = 158762,	-- Arch
	[261] = 5149,	-- Beast Training
	[164] = 2018,	-- Blacksmithing
	[185] = 2550,	-- Cooking
	[333] = 7411,	-- Enchanting
	[202] = 4036,	-- Engineering
	[356] = 7620,	-- Fishing
	[129] = 3273,	-- First Aid
	[182] = 2366,	-- Herb Gathering
	[773] = 45357,	-- Inscription
	[755] = 25229,	-- Jewelcrafting
	[165] = 2108,	-- Leatherworking
	[186] = 2575,	-- Mining
	[393] = 8613,	-- Skinning
	[197] = 3908,	-- Tailoring
	[960] = 53428,  -- Runeforging
	[40] = 2842,	-- Poisons
	[633] = 1809,	-- Lockpicking
	
	-- Specializations
	[20219] = 20219,	-- Gnomish Engineering
	[20222] = 20222,	-- Goblin Engineering
	[9788] = 9788,		-- Armorsmith
	[9787] = 9787,		-- Weaponsmith
	[17041] = 17041,	-- Master Axesmith
	[17040] = 17040,	-- Master Hammersmith
	[17039] = 17039,	-- Master Swordsmith
	[10656] = 10656,	-- Dragonscale Leatherworking
	[10658] = 10658,	-- Elemental Leatherworking
	[10660] = 10660,	-- Tribal Leatherworking
	[26801] = 26801,	-- Shadoweave Tailoring
	[26797] = 26797,	-- Spellfire Tailoring
	[26798] = 26798,	-- Mooncloth Tailoring
	[125589] = 125589,	-- Way of the Brew
	[124694] = 124694,	-- Way of the Grill
	[125588] = 125588,	-- Way of the Oven
	[125586] = 125586,	-- Way of the Pot
	[125587] = 125587,	-- Way of the Steamer
	[125584] = 125584,	-- Way of the Wok
}, {__index = function(t,k) return k; end});
app.SpellIDToSkillID = {};
for skillID,spellID in pairs(app.SkillIDToSpellID) do
	app.SpellIDToSkillID[spellID] = skillID;
end
app.SpecializationSpellIDs = setmetatable({
	[20219] = 4036,	-- Gnomish Engineering
	[20222] = 4036,	-- Goblin Engineering
	[9788] = 2018,	-- Armorsmith
	[9787] = 2018,	-- Weaponsmith
	[17041] = 2018,	-- Master Axesmith
	[17040] = 2018,	-- Master Hammersmith
	[17039] = 2018,	-- Master Swordsmith
	[10656] = 2108,	-- Dragonscale Leatherworking
	[10658] = 2108,	-- Elemental Leatherworking
	[10660] = 2108,	-- Tribal Leatherworking
	[26801] = 3908,	-- Shadoweave Tailoring
	[26797] = 3908,	-- Spellfire Tailoring
	[26798] = 3908,	-- Mooncloth Tailoring
	[125589] = 2550,-- Way of the Brew
	[124694] = 2550,-- Way of the Grill
	[125588] = 2550,-- Way of the Oven
	[125586] = 2550,-- Way of the Pot
	[125587] = 2550,-- Way of the Steamer
	[125584] = 2550,-- Way of the Wok
}, {__index = function(t,k) return k; end})

local BLACKSMITHING = ATTC.SkillIDToSpellID[164];
local LEATHERWORKING = ATTC.SkillIDToSpellID[165];
local TAILORING = ATTC.SkillIDToSpellID[197];
app.OnUpdateForOmarionsHandbook = function(t)
	t.visible = true;
	rawset(t, "collectible", nil);
	if app.Settings:Get("DebugMode") or app.Settings:Get("AccountMode") or CompletedQuests[9233] or C_QuestLog.IsOnQuest(9233) then
		return false;
	else
		for spellID,skills in pairs(app.CurrentCharacter.ActiveSkills) do
			if (spellID == BLACKSMITHING or spellID == LEATHERWORKING or spellID == TAILORING) and skills[1] > 270 then
				rawset(t, "collectible", false);
				t.visible = false;
				return true;
			end
		end
	end
end;
local fields = {
	["key"] = function(t)
		return "professionID";
	end,
	["text"] = function(t)
		return select(1, GetSpellInfo(t.spellID));
	end,
	["icon"] = function(t)
		return select(3, GetSpellInfo(t.spellID));
	end,
	["spellID"] = function(t)
		return app.SkillIDToSpellID[t.professionID];
	end,
	["requireSkill"] = function(t)
		return t.professionID;
	end,
	["sym"] = function(t)
		return {{"selectprofession", t.professionID}};
	end
};
app.BaseProfession = app.BaseObjectFields(fields);
app.CreateProfession = function(id, t)
	return setmetatable(constructor(id, t, "professionID"), app.BaseProfession);
end
end)();

-- PVP Ranks
(function()
local fields = {
	["key"] = function(t)
		return "pvpRankID";
	end,
	["text"] = function(t)
		return _G["PVP_RANK_" .. (t.pvpRankID + 4) .. "_" .. (t.inverseR or 0)];
	end,
	["icon"] = function(t)
		return format("%s%02d","Interface\\PvPRankBadges\\PvPRank", t.pvpRankID);
	end,
	["title"] = function(t)
		return RANK .. " " .. t.pvpRankID .. DESCRIPTION_SEPARATOR ..  _G["PVP_RANK_" .. (t.pvpRankID + 4) .. "_" .. ((t.inverseR == 1 and 0 or 1))] .. " (" .. (t.r == Enum.FlightPathFaction.Alliance and FACTION_HORDE or FACTION_ALLIANCE) .. ")";
	end,
	["description"] = function(t)
		return "There are a total of 14 ranks for both factions. Each rank requires a minimum amount of Rating Points to be calculated every week, then calculated in comparison to other players on your server.\n\nEach rank grants access to different rewards, from PvP consumables to Epic Mounts that do not require Epic Riding Skill and Epic pieces of gear at the highest ranks. Each rank is also applied to your character as a Title.";
	end,
	["r"] = function(t)
		return t.parent.r or app.FactionID;
	end,
	["inverseR"] = function(t)
		return t.r == Enum.FlightPathFaction.Alliance and 1 or 0;
	end,
	["lifetimeRank"] = function(t)
		return select(3, GetPVPLifetimeStats());
	end,
	["collectible"] = function(t)
		return app.CollectiblePVPRanks;
	end,
	["collected"] = function(t)
		return t.lifetimeRank >= (t.pvpRankID + 4);
	end,
	["u"] = function(t)
		return app.Settings:GetUnobtainableFilter(17) and 2;
	end,
	["OnTooltip"] = function(t)
		GameTooltip:AddDoubleLine("Your lifetime highest rank: ", _G["PVP_RANK_" .. (t.lifetimeRank) .. "_" .. (app.FactionID == 2 and 1 or 0)], 1, 1, 1, 1, 1, 1);
	end
};
app.BasePVPRank = app.BaseObjectFields(fields);
app.CreatePVPRank = function(id, t)
	return setmetatable(constructor(id, t, "pvpRankID"), app.BasePVPRank);
end
end)();

-- Quest Lib
(function()
local questRetries = {};
local QuestTitleFromID = setmetatable({}, { __index = function(t, id)
	local title = C_QuestLog.GetQuestInfo(id);
	if title and title ~= RETRIEVING_DATA then
		rawset(questRetries, id, nil);
		rawset(t, id, title);
		return title;
	else
		local retries = rawget(questRetries, id);
		if retries and retries > 120 then
			title = "Quest #" .. id .. "*";
			rawset(questRetries, id, nil);
			rawset(t, id, title);
			return title;
		else
			rawset(questRetries, id, (retries or 0) + 1);
		end
	end
end })
local questFields = {
	["key"] = function(t)
		return "questID";
	end,
	["text"] = function(t)
		return t.name;
	end,
	["name"] = function(t)
		return QuestTitleFromID[t.questID] or (t.npcID and NPCNameFromID[t.npcID]) or RETRIEVING_DATA;
	end,
	["icon"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectIcons[v[2]] or "Interface\\Icons\\INV_Misc_Bag_10";
					elseif v[1] == "i" then
						return select(5, GetItemInfoInstant(v[2])) or "Interface\\Icons\\INV_Misc_Book_09";
					end
				end
			end
		end
		if t.isWorldQuest then
			return "Interface\\GossipFrame\\DailyActiveQuestIcon";
		elseif t.repeatable then
			return "Interface\\GossipFrame\\DailyQuestIcon";
		else
			return "Interface\\GossipFrame\\AvailableQuestIcon";
		end
	end,
	["model"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectModels[v[2]];
					end
				end
			end
		end
	end,
	["link"] = function(t)
		if t.questID then return "[" .. t.name .. " (".. t.questID .. ")]"; end
	end,
	["repeatable"] = function(t)
		return rawget(t, "isDaily") or rawget(t, "isWeekly") or rawget(t, "isMonthly") or rawget(t, "isYearly");
	end,
	["collectible"] = function(t)
		return app.CollectibleQuests and ((not t.repeatable and not t.isBreadcrumb) or C_QuestLog.IsOnQuest(t.questID));
	end,
	["collected"] = function(t)
		return IsQuestFlaggedCompletedForObject(t);
	end,
	["trackable"] = function(t)
		return true;
	end,
	["saved"] = function(t)
		return IsQuestFlaggedCompletedForObject(t) == 1;
	end,
	
	["collectibleAsBreadcrumb"] = function(t)
		if app.CollectibleQuests then
			if C_QuestLog.IsOnQuest(t.questID) or IsQuestFlaggedCompletedForObject(t) then
				return true;
			end
			local results = SearchForField("sourceQuestID", t.questID);
			if results and #results > 0 then
				for i,o in ipairs(results) do
					if o.collectible and not o.collected then
						return true;
					end
				end
			end
		end
		return false;
	end,
	["collectedAsBreadcrumb"] = function(t)
		return IsQuestFlaggedCompletedForObject(t);
	end,
	["textAsBreadcrumb"] = function(t)
		return "|cffcbc3e3" .. t.name .. "|r";
	end,
	["collectibleAsReputation"] = function(t)
		return app.CollectibleQuests and ((not t.repeatable and not t.isBreadcrumb) or C_QuestLog.IsOnQuest(t.questID) or (t.maxReputation and (app.CollectibleReputations or not t.repeatable)));
	end,
	["collectedAsReputation"] = function(t)
		if t.maxReputation then
			if app.AccountWideReputations then
				local faction = SearchForField("factionID", t.maxReputation[1]);
				if (faction and #faction > 0 and faction[1].collected) then
					return 2;
				end
			end
			if (select(6, GetFactionInfoByID(t.maxReputation[1])) or 0) >= t.maxReputation[2] then
				return true;
			end
		end
		return app.CollectibleQuests and IsQuestFlaggedCompletedForObject(t);
	end,
};
app.BaseQuest = app.BaseObjectFields(questFields);

local fields = RawCloneData(questFields);
fields.collectible = questFields.collectibleAsBreadcrumb;
fields.collected = questFields.collectedAsBreadcrumb;
fields.text = questFields.textAsBreadcrumb;
app.BaseQuestAsBreadcrumb = app.BaseObjectFields(fields);

local fields = RawCloneData(questFields);
fields.collectible = questFields.collectibleAsReputation;
fields.collected = questFields.collectedAsReputation;
app.BaseQuestWithReputation = app.BaseObjectFields(fields);
app.CreateQuest = function(id, t)
	if t then
		if rawget(t, "maxReputation") then
			return setmetatable(constructor(id, t, "questID"), app.BaseQuestWithReputation);
		elseif rawget(t, "isBreadcrumb") then
			return setmetatable(constructor(id, t, "questID"), app.BaseQuestAsBreadcrumb);
		end
	end
	return setmetatable(constructor(id, t, "questID"), app.BaseQuest);
end
app.CreateQuestWithFactionData = function(t)
	local questData, otherQuestData;
	if app.FactionID == Enum.FlightPathFaction.Horde then
		questData = t.hqd;
		otherQuestData = t.aqd;
		otherQuestData.r = Enum.FlightPathFaction.Alliance;
	else
		questData = t.aqd;
		otherQuestData = t.hqd;
		otherQuestData.r = Enum.FlightPathFaction.Horde;
	end
	
	-- Apply this quest's current data into the other faction's quest. (this is for tooltip caching and source quest resolution)
	--for key,value in pairs(t) do otherQuestData[key] = value; end
	setmetatable(otherQuestData, { __index = t });
	rawset(t, "otherQuestData", otherQuestData);
	
	-- Apply the faction specific quest data to this object.
	for key,value in pairs(questData) do t[key] = value; end
	rawset(t, "r", app.FactionID);
	return setmetatable(t, app.BaseQuest);
end

local fields = {
	["key"] = function(t)
		return "objectiveID";
	end,
	["text"] = function(t)
		return t.name;
	end,
	["name"] = function(t)
		local questID = t.questID;
		if questID then
			local objectives = C_QuestLog.GetQuestObjectives(questID);
			if objectives then
				local objective = objectives[t.objectiveID];
				if objective then
					return objective.text;
				end
			end
			if t.providers then
				for k,v in ipairs(t.providers) do
					if v[2] > 0 then
						if v[1] == "o" then
							return app.ObjectNames[v[2]] or RETRIEVING_DATA;
						elseif v[1] == "i" then
							return select(1, GetItemInfo(v[2])) or RETRIEVING_DATA;
						end
					end
				end
			end
			if t.spellID then return select(1, GetSpellInfo(t.spellID)); end
			return RETRIEVING_DATA;
		end
		return "INVALID: Must be relative to a Quest Object.";
	end,
	["icon"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectIcons[v[2]] or "Interface\\Worldmap\\Gear_64Grey";
					elseif v[1] == "i" then
						return select(5, GetItemInfoInstant(v[2])) or "Interface\\Worldmap\\Gear_64Grey";
					end
				end
			end
		end
		if t.spellID then return select(3, GetSpellInfo(t.spellID)); end
		return t.parent.icon or "Interface\\Worldmap\\Gear_64Grey";
	end,
	["model"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return app.ObjectModels[v[2]];
					end
				end
			end
		end
	end,
	["objectiveID"] = function(t)
		return 1;
	end,
	["questID"] = function(t)
		return t.parent.questID;
	end,
	["isDaily"] = function(t)
		return t.parent.isDaily;
	end,
	["isWeekly"] = function(t)
		return t.parent.isWeekly;
	end,
	["isMonthly"] = function(t)
		return t.parent.isMonthly;
	end,
	["isYearly"] = function(t)
		return t.parent.isYearly;
	end,
	["isWorldQuest"] = function(t)
		return t.parent.isWorldQuest;
	end,
	["repeatable"] = function(t)
		return t.parent.repeatable;
	end,
	["collectible"] = function(t)
		if not t.questID then
			return false;
		end
		return C_QuestLog.IsOnQuest(t.questID);
	end,
	["trackable"] = function(t)
		return true;
	end,
	["collected"] = function(t)
		-- If the parent is collected, return immediately.
		local collected = t.parent.collected;
		if collected then return collected; end
		
		-- Check to see if the objective was completed.
		local questID = t.questID;
		if questID then
			-- If the player isn't on that quest, return.
			local index = GetQuestLogIndexByID(questID);
			if index == 0 then return 0; end
			
			-- If the player completed the quest, return.
			if select(6, GetQuestLogTitle(index)) then return 1; end
			
			local objectives = C_QuestLog.GetQuestObjectives(questID);
			if objectives then
				local objective = objectives[t.objectiveID];
				if objective then
					return objective.finished and 1;
				end
			end
		end
	end,
	["saved"] = function(t)
		-- If the parent is saved, return immediately.
		local saved = t.parent.saved;
		if saved then return saved; end
		
		-- Check to see if the objective was completed.
		local questID = t.questID;
		if questID then
			local objectives = C_QuestLog.GetQuestObjectives(questID);
			if objectives then
				local objective = objectives[t.objectiveID];
				if objective then
					return objective.finished and 1;
				end
			end
		end
	end,
};
app.BaseQuestObjective = app.BaseObjectFields(fields);
app.CreateQuestObjective = function(id, t)
	return setmetatable(constructor(id, t, "objectiveID"), app.BaseQuestObjective);
end
app.CompareQuestieDB = function()
	if QuestieLoader then
		local QuestieDB,missingQuestIDs = QuestieLoader:ImportModule("QuestieDB"), {};
		for id,_ in pairs(QuestieDB.QuestPointers) do
			local s = app.SearchForField("questID", id);
			if not s or #s == 0 then
				table.insert(missingQuestIDs, id);
			end
		end
		insertionSort(missingQuestIDs);
		for _,id in ipairs(missingQuestIDs) do
			print("Missing Quest ", id);
		end
	else
		print("Error: Questie not available. Please enable it!");
	end
end

app:RegisterEvent("QUEST_WATCH_UPDATE");
app:RegisterEvent("BAG_NEW_ITEMS_UPDATED");
app.events.QUEST_WATCH_UPDATE = function(questID)
	wipe(searchCache);
end
app.events.BAG_NEW_ITEMS_UPDATED = function(questID)
	wipe(searchCache);
end
end)();

-- Recipe & Spell Lib
(function()
local craftColors = {
	RGBToHex(64,192,64),
	RGBToHex(255,255,0),
	RGBToHex(255,128,64),
	[0]=RGBToHex(128, 128, 128),
};
local CraftTypeIDToColor = function(craftTypeID)
	return craftColors[craftTypeID];
end
app.CraftTypeToCraftTypeID = function(craftType)
	if craftType then
		if craftType == "optimal" then
			return 3;
		elseif craftType == "medium" then
			return 2;
		elseif craftType == "easy" then
			return 1;
		elseif craftType == "trivial" then
			return 0;
		end
	end
	return nil;
end
local MaxSpellRankPerSpellName = {};
local SpellIDToSpellName = {};
app.GetSpellName = function(spellID, rank)
	local spellName = rawget(SpellIDToSpellName, spellID);
	if spellName then return spellName; end
	if rank then
		spellName = GetSpellInfo(spellID, rank);
	else
		spellName = GetSpellInfo(spellID);
	end
	if spellName and spellName ~= "" then
		if rank then
			if (rawget(MaxSpellRankPerSpellName, spellName) or 0) < rank then
				rawset(MaxSpellRankPerSpellName, spellName, rank);
			end
			spellName = spellName .. " (" .. RANK .. " " .. rank .. ")";
		end
		rawset(SpellIDToSpellName, spellID, spellName);
		rawset(app.SpellNameToSpellID, spellName, spellID);
		return spellName;
	end
end
app.IsSpellKnown = function(spellID, rank, ignoreHigherRanks)
	if IsPlayerSpell(spellID) or IsSpellKnown(spellID) or IsSpellKnown(spellID, true)
		or IsSpellKnownOrOverridesKnown(spellID) or IsSpellKnownOrOverridesKnown(spellID, true) then
		return true;
	end
	if rank then
		local spellName = GetSpellInfo(spellID);
		if spellName then
			local maxRank = ignoreHigherRanks and rank or  rawget(MaxSpellRankPerSpellName, spellName);
			if maxRank then
				spellName = spellName .. " (" .. RANK .. " ";
				for i=maxRank,rank,-1 do
					spellID = app.SpellNameToSpellID[spellName .. i .. ")"];
					if spellID and (IsPlayerSpell(spellID) or IsSpellKnown(spellID) or IsSpellKnown(spellID, true)
						or IsSpellKnownOrOverridesKnown(spellID) or IsSpellKnownOrOverridesKnown(spellID, true)) then
						return true;
					end
				end
			end
		end
	end
end
app.SpellNameToSpellID = setmetatable(L.ALT_PROFESSION_TEXT_TO_ID, {
	__index = function(t, key)
		local cache = fieldCache["spellID"];
		for spellID,g in pairs(cache) do
			local rank;
			for i,o in ipairs(g) do
				if o.rank then
					rank = o.rank;
					break;
				end
			end
			app.GetSpellName(spellID, rank);
		end
		for _,spellID in pairs(app.SkillIDToSpellID) do
			app.GetSpellName(spellID);
		end
		for specID,spellID in pairs(app.SpecializationSpellIDs) do
			app.GetSpellName(spellID);
		end
		local numSpellTabs, offset, lastSpellName, currentSpellRank, lastSpellRank = GetNumSpellTabs(), 1, "", 1, 1;
		for spellTabIndex=1,numSpellTabs do
			local numSpells = select(4, GetSpellTabInfo(spellTabIndex));
			for spellIndex=1,numSpells do
				local spellName, _, _, _, _, _, spellID = GetSpellInfo(offset, BOOKTYPE_SPELL);
				currentSpellRank = GetSpellRank(spellID);
				if not currentSpellRank then
					if lastSpellName == spellName then
						currentSpellRank = lastSpellRank + 1;
					else
						lastSpellName = spellName;
						currentSpellRank = 1;
					end
				end
				app.GetSpellName(spellID, currentSpellRank);
				rawset(app.SpellNameToSpellID, spellName, spellID);
				lastSpellRank = currentSpellRank;
				offset = offset + 1;
			end
		end
		return rawget(t, key);
	end
});

-- The difference between a recipe and a spell is that a spell is not collectible.
local spellFields = {
	["key"] = function(t)
		return "spellID";
	end,
	["text"] = function(t)
		return t.craftTypeID and Colorize(t.name, CraftTypeIDToColor(t.craftTypeID)) or t.link;
	end,
	["icon"] = function(t)
		local icon = t.baseIcon;
		if icon and icon ~= 136235 and icon ~= 136192 then
			return icon;
		end
		return "Interface\\ICONS\\INV_Scroll_04";
	end,
	["craftTypeID"] = function(t)
		return app.CurrentCharacter.SpellRanks[t.spellID];
	end,
	["trackable"] = function(t)
		return true;
	end,
	["saved"] = function(t)
		return GetSpellCooldown(t.spellID) > 0 and 1;
	end,
	
	["bAsItem"] = function(t)
		return app.AccountWideRecipes and 2;
	end,
	["fAsSpell"] = function(t)
		return 200;
	end,
	["collectibleAsSpell"] = function(t)
		return app.CollectibleRecipes;
	end,
	["collectedAsSpell"] = function(t)
		if app.CurrentCharacter.Spells[t.spellID] then
			ATTAccountWideData.Spells[t.spellID] = 1;
			return 1;
		end
		if app.AccountWideRecipes and ATTAccountWideData.Spells[t.spellID] then return 2; end
		if app.IsSpellKnown(t.spellID, t.rank, GetRelativeValue(t, "requireSkill") == 261) then
			app.CurrentCharacter.Spells[t.spellID] = 1;
			ATTAccountWideData.Spells[t.spellID] = 1;
			return 1;
		end
	end,
	["baseIconAsItem"] = function(t)
		return select(5, GetItemInfoInstant(t.itemID)) or t.baseIconAsSpell;
	end,
	["baseIconAsSpell"] = function(t)
		return select(3, GetSpellInfo(t.spellID)) or (t.requireSkill and select(3, GetSpellInfo(t.requireSkill)));
	end,
	["linkAsItem"] = function(t)
		return select(2, GetItemInfo(t.itemID)) or t.linkAsSpell;
	end,
	["linkAsSpell"] = function(t)
		local link = select(1, GetSpellLink(t.spellID));
		if not link then
			if GetRelativeValue(t, "requireSkill") == 333 then
				return "|cffffffff|Henchant:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
			else
				return "|cffffffff|Hspell:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
			end
		end
		return link;
	end,
	["nameAsItem"] = function(t)
		return select(1, GetItemInfo(t.itemID)) or t.nameAsSpell;
	end,
	["nameAsSpell"] = function(t)
		return select(1, GetSpellLink(t.spellID)) or RETRIEVING_DATA;
	end,
	["tsmAsItem"] = function(t)
		return string.format("i:%d", t.itemID);
	end,
};
spellFields.baseIcon = spellFields.baseIconAsSpell;
spellFields.link = spellFields.linkAsSpell;
spellFields.name = spellFields.nameAsSpell;
app.BaseSpell = app.BaseObjectFields(spellFields);
app.CreateSpell = function(id, t)
	if t and rawget(t, "itemID") then
		return setmetatable(constructor(id, t, "spellID"), app.BaseRecipeWithItem);
	else
		return setmetatable(constructor(id, t, "spellID"), app.BaseSpell);
	end
end

local recipeFields = RawCloneData(spellFields);
recipeFields.baseIcon = recipeFields.baseIconAsSpell;
recipeFields.collectible = recipeFields.collectibleAsSpell;
recipeFields.collected = recipeFields.collectedAsSpell;
recipeFields.link = recipeFields.linkAsSpell;
recipeFields.name = recipeFields.nameAsSpell;
recipeFields.f = recipeFields.fAsSpell;
app.BaseRecipe = app.BaseObjectFields(recipeFields);

local fields = RawCloneData(recipeFields);
fields.baseIcon = recipeFields.baseIconAsItem;
fields.link = recipeFields.linkAsItem;
fields.name = recipeFields.nameAsItem;
fields.tsm = recipeFields.tsmAsItem;
fields.b = recipeFields.bAsItem;
app.BaseRecipeWithItem = app.BaseObjectFields(fields);
app.CreateRecipe = function(id, t)
	if t and rawget(t, "itemID") then
		return setmetatable(constructor(id, t, "spellID"), app.BaseRecipeWithItem);
	else
		return setmetatable(constructor(id, t, "spellID"), app.BaseRecipe);
	end
end
end)();

-- Tier Lib
(function()
	local tiers = {
		{	-- Classic
			["text"] = "Classic",
			["icon"] = app.asset("Expansion_CLASSIC"),
			["lore"] = L["CLASSIC_TIER_DESC"],
		},
		{	-- Burning Crusade
			["text"] = "Burning Crusade",
			["icon"] = app.asset("Expansion_TBC"),
			["lore"] = L["TBC_TIER_DESC"],
			["lvl"] = 55,
		},
		{	-- Wrath of the Lich King
			["text"] = "Wrath of the Lich King",
			["icon"] = app.asset("Expansion_WOTLK"),
			["lore"] = L["WOTLK_TIER_DESC"],
			["lvl"] = 65,
		},
		{	-- Cataclysm
			["text"] = "Cataclysm",
			["icon"] = app.asset("Expansion_CATA"),
			["lore"] = L["CATA_TIER_DESC"],
			["lvl"] = 75,
		},
		{	-- Mists of Pandaria
			["text"] = "Mists of Pandaria",
			["icon"] = app.asset("Expansion_MOP"),
			["lore"] = L["MOP_TIER_DESC"],
			["lvl"] = 82,
		},
		{	-- Warlords of Draenor
			["text"] = "Warlords of Draenor",
			["icon"] = app.asset("Expansion_WOD"),
			["lore"] = L["WOD_TIER_DESC"],
			["lvl"] = 88,
		},
		{	-- Legion
			["text"] = "Legion",
			["icon"] = app.asset("Expansion_LEGION"),
			["lore"] = L["LEGION_TIER_DESC"],
			["lvl"] = 98,
		},
		{	-- Battle for Azeroth
			["text"] = "Battle for Azeroth",
			["icon"] = app.asset("Expansion_BFA"),
			["lore"] = L["BFA_TIER_DESC"],
			["lvl"] = 108,
		},
		{	-- Shadowlands
			["text"] = "Shadowlands",
			["icon"] = app.asset("Expansion_SL"),
			["lore"] = L["SL_TIER_DESC"],
			["lvl"] = 50,
		},
	};
	app.BaseTier = {
		__index = function(t, key)
			if key == "key" then
				return "tierID";
			else
				local info = rawget(tiers, t.tierID);
				return info and rawget(info, key);
			end
		end
	};
	app.CreateTier = function(id, t)
		return setmetatable(constructor(id, t, "tierID"), app.BaseTier);
	end
end)();

-- Title Lib
(function()
local fields = {
	["key"] = function(t)
		return "titleID";
	end,
	["icon"] = function(t)
		return "Interface\\Icons\\INV_Misc_Horn_01";
	end,
	["description"] = function(t)
		return L["TITLES_DESC"];
	end,
	["text"] = function(t)
		local name = t.playerTitle;
		if name then
			name = "|cff00ccff" .. name .. "|r";
			rawset(t, "name", name);
			return name;
		end
	end,
	["playerTitle"] = function(t)
		local name = GetTitleName(t.titleID);
		if name then
			local style = t.style;
			if style == 0 then
				-- Prefix
				return name .. UnitName("player");
			elseif style == 1 then
				-- Player Name First
				return UnitName("player") .. name;
			elseif style == 2 then
				-- Player Name First (with space)
				return UnitName("player") .. " " .. name;
			elseif style == 3 then
				-- Comma Separated
				return UnitName("player") .. ", " .. name;
			end
		end
	end,
	["style"] = function(t)
		local name = GetTitleName(t.titleID);
		if name then
			local first = string.sub(name, 1, 1);
			if first == " " then
				-- Suffix
				first = string.sub(name, 2, 2);
				if first == string.upper(first) then
					-- Comma Separated
					return 3;
				end

				-- Player Name First
				return 1;
			else
				local last = string.sub(name, -1);
				if last == " " then
					-- Prefix
					return 0;
				end

				-- Suffix
				if first == string.lower(first) then
					-- Player Name First with a space
					return 2;
				end

				-- Comma Separated
				return 3;
			end
		end

		return 1;	-- Player Name First
	end,
	["collectible"] = function(t)
		return app.CollectibleTitles;
	end,
	["trackable"] = function(t)
		return true;
	end,
	["collected"] = function(t)
		if app.CurrentCharacter.Titles[t.titleID] then return 1; end
		if app.AccountWideTitles and ATTAccountWideData.Titles[t.titleID] then return 2; end
		if IsTitleKnown(t.titleID) then
			app.CurrentCharacter.Titles[t.titleID] = 1;
			ATTAccountWideData.Titles[t.titleID] = 1;
			return 1;
		end
	end,
	["saved"] = function(t)
		if app.CurrentCharacter.Titles[t.titleID] then return true; end
		if IsTitleKnown(t.titleID) then
			app.CurrentCharacter.Titles[t.titleID] = 1;
			ATTAccountWideData.Titles[t.titleID] = 1;
			return true;
		end
	end,
};
app.BaseTitle = app.BaseObjectFields(fields);
app.CreateTitle = function(id, t)
	return setmetatable(constructor(id, t, "titleID"), app.BaseTitle);
end
end)();

-- Filtering
function app.Filter()
	-- Meaning "Don't display."
	return false;
end
function app.NoFilter()
	-- Meaning "Display as expected."
	return true;
end
function app.FilterGroupsByLevel(group)
	-- after 9.0, transition to a req lvl range, either min, or min + max
    if group.lvl then
        local minlvl, maxlvl;
        if type(group.lvl) == "table" then
            minlvl = group.lvl[1];
            maxlvl = group.lvl[2];
        else
            minlvl = group.lvl;
        end

        if maxlvl then
            -- min and max provided
            return app.Level >= minlvl and app.Level <= maxlvl;
        elseif minlvl then
            -- only min provided
            return app.Level >= minlvl;
        end
    end
    -- no level requirement on the group, have to include it
    return true;
end
function app.FilterGroupsByCompletion(group)
	return group.progress < group.total;
end
function app.FilterItemBind(item)
	return item.b == 2 or item.b == 3; -- BoE
end
function app.FilterItemClass(item)
	if app.UnobtainableItemFilter(item) then
		if app.ItemBindFilter(item) then return true; end
		return app.ItemTypeFilter(item)
			and app.RequireBindingFilter(item)
			and app.RequiredSkillFilter(item)
			and app.ClassRequirementFilter(item)
			and app.RaceRequirementFilter(item)
			and app.RequireFactionFilter(item);
	end
end
function app.FilterItemClass_RequireClasses(item)
	return not item.nmc;
end
function app.FilterItemClass_RequireItemFilter(item)
	if item.f then
		if app.Settings:GetFilter(item.f) then
			return true;
		else
			return false;
		end
	else
		return true;
	end
end
function app.FilterItemClass_RequireRaces(item)
	return not item.nmr;
end
function app.FilterItemClass_RequireRacesCurrentFaction(item)
	if item.nmr then
		if item.r then
			if item.r == app.FactionID then
				return true;
			else
				return false;
			end
		end
		if item.races then
			if app.FactionID == Enum.FlightPathFaction.Horde then
				return containsAny(item.races, HORDE_ONLY);
			else
				return containsAny(item.races, ALLIANCE_ONLY);
			end
		else
			return false;
		end
	else
		if item.nmc then
			if item.c and #item.c == 1 then
				if app.FactionID == Enum.FlightPathFaction.Horde then
					return item.c[1] ~= 2;	-- Check for Paladin
				else
					return item.c[1] ~= 7;	-- Check for Shaman
				end
			else
				return true;
			end
		else
			return true;
		end
	end
end
function app.FilterItemClass_RequireBinding(item)
	if item.b and (item.b == 2 or item.b == 3) then
		return false;
	else
		return true;
	end
end
function app.FilterItemClass_RequiredSkill(item)
	local requireSkill = item.requireSkill;
	if requireSkill and (not item.professionID or not GetRelativeValue(item, "DontEnforceSkillRequirements") or item.b == 1) then
		requireSkill = app.SkillIDToSpellID[requireSkill];
		return requireSkill and app.CurrentCharacter.ActiveSkills[requireSkill];
	else
		return true;
	end
end
function app.FilterItemClass_RequireFaction(item)
	if item.minReputation and app.IsFactionExclusive(item.minReputation[1]) then
		if item.minReputation[2] > (select(6, GetFactionInfoByID(item.minReputation[1])) or 0) then
			--print("Filtering Out", item.key, item[item.key], item.text, item.minReputation[1], app.CreateFaction(item.minReputation[1]).text);
			return false;
		else
			return true;
		end
	else
		return true;
	end
end
function app.FilterItemClass_UnobtainableItem(item)
	if item.u and not ATTClassicSettings.Unobtainables[item.u] then
		return false;
	else
		return true;
	end
end
function app.FilterItemTrackable(group)
	return group.trackable;
end
function app.ObjectVisibilityFilter(group)
	return group.visible;
end

-- Default Filter Settings (changed in VARIABLES_LOADED and in the Options Menu)
app.VisibilityFilter = app.ObjectVisibilityFilter;
app.GroupFilter = app.FilterItemClass;
app.GroupRequirementsFilter = app.NoFilter;
app.GroupVisibilityFilter = app.NoFilter;
app.ItemBindFilter = app.FilterItemBind;
app.ItemTypeFilter = app.NoFilter;
app.CollectedItemVisibilityFilter = app.NoFilter;
app.ClassRequirementFilter = app.NoFilter;
app.RaceRequirementFilter = app.NoFilter;
app.RequireBindingFilter = app.NoFilter;
app.RequiredSkillFilter = app.NoFilter;
app.RequireFactionFilter = app.FilterItemClass_RequireFaction;
app.UnobtainableItemFilter = app.FilterItemClass_UnobtainableItem;
app.ShowIncompleteThings = app.Filter;

-- Recursive Checks
app.RecursiveGroupRequirementsFilter = function(group)
	if app.GroupRequirementsFilter(group) and app.GroupFilter(group) then
		if group.parent then return app.RecursiveGroupRequirementsFilter(group.parent); end
		return true;
	end
	return false;
end
app.RecursiveClassAndRaceFilter = function(group)
	if app.ClassRequirementFilter(group) and app.RaceRequirementFilter(group) then
		if group.parent then return app.RecursiveClassAndRaceFilter(group.parent); end
		return true;
	end
	return false;
end
app.RecursiveUnobtainableFilter = function(group)
	if app.UnobtainableItemFilter(group) then
		if group.parent then return app.RecursiveUnobtainableFilter(group.parent); end
		return true;
	end
	return false;
end
app.RecursiveIsDescendantOfParentWithValue = function(group, field, value)
	if group then
		if group[field] and group[field] == value then
			return true
		else
			if group.parent then
				return app.RecursiveIsDescendantOfParentWithValue(group.parent, field, value)
			end
		end
	end
	return false;
end

-- Processing Functions (Coroutines)
local UpdateGroup, UpdateGroups;
UpdateGroup = function(parent, group)
	local visible = false;
	
	-- Determine if this user can enter the instance or acquire the item.
	if app.GroupRequirementsFilter(group) then
		-- Check if this is a group
		if group.g then
			-- If this item is collectible, then mark it as such.
			if group.collectible then
				-- An item is a special case where it may have both an appearance and a set of items
				group.progress = group.collected and 1 or 0;
				group.total = 1;
			else
				-- Default to 0 for both
				group.progress = 0;
				group.total = 0;
			end
			
			-- Update the subgroups recursively...
			visible = UpdateGroups(group, group.g);
			
			-- If the 'can equip' filter says true
			if app.GroupFilter(group) then
				-- Increment the parent group's totals.
				parent.total = (parent.total or 0) + group.total;
				parent.progress = (parent.progress or 0) + group.progress;
				
				-- If this group is trackable, then we should show it.
				if group.total > 0 and app.GroupVisibilityFilter(group) then
					visible = true;
				elseif app.ShowIncompleteThings(group) and not group.saved then
					visible = true;
				elseif group.itemID and app.CollectibleLoot and group.f then
					visible = true;
				end
			else
				visible = false;
			end
		else
			-- If the 'can equip' filter says true
			if app.GroupFilter(group) then
				if group.collectible then
					-- Increment the parent group's totals.
					parent.total = (parent.total or 0) + 1;
					
					-- If we've collected the item, use the "Show Collected Items" filter.
					if group.collected then
						parent.progress = (parent.progress or 0) + 1;
						if app.CollectedItemVisibilityFilter(group) then
							visible = true;
						end
					else
						visible = true;
					end
				elseif group.trackable then
					-- If this group is trackable, then we should show it.
					if app.ShowIncompleteThings(group) and not group.saved then
						visible = true;
					end
				elseif group.itemID and app.CollectibleLoot and group.f then
					visible = true;
				elseif app.Settings:Get("DebugMode") then
					visible = true;
				end
			elseif app.Settings:Get("DebugMode") then
				visible = true;
			else
				visible = false;
			end
		end
	end
	
	-- Set the visibility
	group.visible = visible;
	return visible;
end
UpdateGroups = function(parent, g)
	if g then
		local visible = false;
		for key, group in ipairs(g) do
			if group.OnUpdate then
				if not group:OnUpdate() then
					if UpdateGroup(parent, group) then
						visible = true;
					end
				elseif group.visible then
					visible = true;
				end
			elseif UpdateGroup(parent, group) then
				visible = true;
			end
		end
		return visible;
	end
end
local function UpdateParentProgress(group)
	if group.collectible then
		group.progress = group.progress + 1;
	end
	
	-- Continue on to this object's parent.
	if group.parent then
		if group.visible then
			-- If we were initially visible, then update the parent.
			UpdateParentProgress(group.parent);
			
			-- If this group is trackable, then we should show it.
			if app.GroupVisibilityFilter(group) then
				group.visible = true;
			elseif app.ShowIncompleteThings(group) then
				group.visible = not group.saved;
			else
				group.visible = false;
			end
		end
	end
end
app.UpdateGroups = UpdateGroups;
app.UpdateParentProgress = UpdateParentProgress;

-- Helper Methods
function app.GetNumberOfItemsUntilNextPercentage(progress, total)
	if total <= progress then
		return "|c" .. GetProgressColor(1) .. "YOU DID IT!|r";
	else
		local originalPercent = progress / total;
		local nextPercent = math.ceil(originalPercent * 100);
		local roundedPercent = nextPercent * 0.01;
		local diff = math.ceil(total * (roundedPercent - originalPercent));
		if diff < 1 or nextPercent == 100 then
			return "|c" .. GetProgressColor(1) .. (total - progress) .. " THINGS UNTIL 100%|r";
		elseif diff == 1 then
			return "|c" .. GetProgressColor(roundedPercent) .. diff .. " THING UNTIL " .. nextPercent .. "%|r";
		else
			return "|c" .. GetProgressColor(roundedPercent) .. diff .. " THINGS UNTIL " .. nextPercent .. "%|r";
		end
	end
end
function app.QuestCompletionHelper(questID)
	-- Search ATT for the related quests.
	local searchResults = SearchForField("questID", questID);
	if searchResults and #searchResults > 0 then
		-- Only increase progress for Quests as Collectible users.
		if app.CollectibleQuests then
			-- Attempt to cleanly refresh the data.
			for i,result in ipairs(searchResults) do
				if result.visible and result.parent and result.parent.total then
					result.marked = true;
				end
			end
			for i,result in ipairs(searchResults) do
				if result.marked then
					result.marked = nil;
					if result.total then
						-- This is an item that has a relative set of groups
						UpdateParentProgress(result);
						
						-- If this is NOT a group...
						if not result.g and result.collectible then
							-- If we've collected the item, use the "Show Collected Items" filter.
							result.visible = app.CollectedItemVisibilityFilter(result);
						end
					else
						UpdateParentProgress(result.parent);
						
						if result.collectible then
							-- If we've collected the item, use the "Show Collected Items" filter.
							result.visible = app.CollectedItemVisibilityFilter(result);
						end
					end
				end
			end
		end
	end
end

local function MinimapButtonOnClick(self, button)
	if button == "RightButton" then
		-- Right Button opens the Options menu.
		app.Settings:Open();
	else
		-- Left Button
		if IsShiftKeyDown() then
			app.RefreshCollections();
		elseif IsAltKeyDown() or IsControlKeyDown() then
			app.ToggleMiniListForCurrentZone();
		else
			app.ToggleMainList();
		end
	end
end
local function MinimapButtonOnEnter(self)
	local reference = app:GetDataCache();
	GameTooltip:SetOwner(self, "ANCHOR_LEFT");
	GameTooltip:ClearLines();
	GameTooltip:AddDoubleLine(L["TITLE"], GetProgressColorText(reference.progress, reference.total));
	GameTooltip:AddDoubleLine(app.Settings:GetModeString(), app.GetNumberOfItemsUntilNextPercentage(reference.progress, reference.total), 1, 1, 1);
	GameTooltip:AddLine(L["DESCRIPTION"], 0.4, 0.8, 1, 1);
	GameTooltip:AddLine(L["MINIMAP_MOUSEOVER_TEXT"], 1, 1, 1);
	GameTooltip:Show();
	GameTooltipIcon:SetSize(72,72);
	GameTooltipIcon.icon:SetTexture(reference.preview or reference.icon);
	GameTooltipIcon:ClearAllPoints();
	GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
	local texcoord = reference.texcoord;
	if texcoord then
		GameTooltipIcon.icon:SetTexCoord(texcoord[1], texcoord[2], texcoord[3], texcoord[4]);
	else
		GameTooltipIcon.icon:SetTexCoord(0, 1, 0, 1);
	end
	GameTooltipIcon:Show();
end
local function MinimapButtonOnLeave()
	GameTooltip:Hide();
	GameTooltipIcon.icon.Background:Hide();
	GameTooltipIcon.icon.Border:Hide();
	GameTooltipIcon:Hide();
	GameTooltipModel:Hide();
end
local function CreateMinimapButton()
	-- Create the Button for the Minimap frame. Create a local and non-local copy.
	local size = app.Settings:GetTooltipSetting("MinimapSize");
	local button = CreateFrame("BUTTON", app:GetName() .. "-Minimap", Minimap);
	button:SetPoint("CENTER", 0, 0);
	button:SetFrameStrata("HIGH");
	button:SetMovable(true);
	button:EnableMouse(true);
	button:RegisterForDrag("LeftButton", "RightButton");
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	button:SetSize(size, size);
	
	-- Create the Button Texture
	local texture = button:CreateTexture(nil, "BACKGROUND");
	texture:SetATTSprite("base_36x36", 429, 217, 36, 36, 512, 256);
	--texture:SetATTSprite("in_game_logo", 430, 75, 53, 59, 512, 256);
	--texture:SetScale(53 / 64, 59 / 64);
	texture:SetPoint("CENTER", 0, 0);
	texture:SetAllPoints();
	button.texture = texture;
	
	-- Create the Button Texture
	local oldtexture = button:CreateTexture(nil, "BACKGROUND");
	oldtexture:SetPoint("CENTER", 0, 0);
	oldtexture:SetTexture(L["LOGO_SMALL"]);
	oldtexture:SetSize(21, 21);
	oldtexture:SetTexCoord(0,1,0,1);
	button.oldtexture = oldtexture;
	
	-- Create the Button Tracking Border
	local border = button:CreateTexture(nil, "BORDER");
	border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder");
	border:SetPoint("CENTER", 12, -12);
	border:SetSize(56, 56);
	button.border = border;
	button.UpdateStyle = function(self)
		if app.Settings:GetTooltipSetting("MinimapStyle") then
			self:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight", "ADD");
			self:GetHighlightTexture():SetTexCoord(0,1,0,1);
			self:GetHighlightTexture():SetAlpha(1);
			self.texture:Hide();
			self.oldtexture:Show();
			self.border:Show();
		else
			self:SetATTHighlightSprite("epic_36x36", 297, 215, 36, 36, 512, 256):SetAlpha(0.2);
			self.texture:Show();
			self.oldtexture:Hide();
			self.border:Hide();
		end
	end
	button:UpdateStyle();
	
	-- Button Configuration
	local radius = 78;
	local rounding = 10;
	local MinimapShapes = {
		-- quadrant booleans (same order as SetTexCoord)
		-- {bottom-right, bottom-left, top-right, top-left}
		-- true = rounded, false = squared
		["ROUND"] 			= {true,  true,  true,  true },
		["SQUARE"] 			= {false, false, false, false},
		["CORNER-TOPLEFT"] 		= {false, false, false, true },
		["CORNER-TOPRIGHT"] 		= {false, false, true,  false},
		["CORNER-BOTTOMLEFT"] 		= {false, true,  false, false},
		["CORNER-BOTTOMRIGHT"]	 	= {true,  false, false, false},
		["SIDE-LEFT"] 			= {false, true,  false, true },
		["SIDE-RIGHT"] 			= {true,  false, true,  false},
		["SIDE-TOP"] 			= {false, false, true,  true },
		["SIDE-BOTTOM"] 		= {true,  true,  false, false},
		["TRICORNER-TOPLEFT"] 		= {false, true,  true,  true },
		["TRICORNER-TOPRIGHT"] 		= {true,  false, true,  true },
		["TRICORNER-BOTTOMLEFT"] 	= {true,  true,  false, true },
		["TRICORNER-BOTTOMRIGHT"] 	= {true,  true,  true,  false},
	};
	button.update = function(self)
		local position = GetDataMember("Position", -10.31);
		local angle = math.rad(position) -- determine position on your own
		local x, y
		local cos = math.cos(angle)
		local sin = math.sin(angle)
		local q = 1;
		if cos < 0 then
			q = q + 1;	-- lower
		end
		if sin > 0 then
			q = q + 2;	-- right
		end
		if MinimapShapes[GetMinimapShape and GetMinimapShape() or "ROUND"][q] then
			x = cos*radius;
			y = sin*radius;
		else
			local diagRadius = math.sqrt(2*(radius)^2)-rounding
			x = math.max(-radius, math.min(cos*diagRadius, radius))
			y = math.max(-radius, math.min(sin*diagRadius, radius))
		end
		self:SetPoint("CENTER", "Minimap", "CENTER", -x, y);
	end
	local update = function(self)
		local w, x = GetCursorPosition();
		local y, z = Minimap:GetLeft(), Minimap:GetBottom();
		local s = UIParent:GetScale();
		w = y - w / s + 70; x = x / s - z - 70;
		SetDataMember("Position", math.deg(math.atan2(x, w)));
		self:Raise();
		self:update();
	end

	-- Register for Frame Events
	button:SetScript("OnDragStart", function(self)
		self:SetScript("OnUpdate", update);
	end);
	button:SetScript("OnDragStop", function(self)
		self:SetScript("OnUpdate", nil);
	end);
	button:SetScript("OnEnter", MinimapButtonOnEnter);
	button:SetScript("OnLeave", MinimapButtonOnLeave);
	button:SetScript("OnClick", MinimapButtonOnClick);
	button:update();
	button:Show();
	return button;
end
app.CreateMinimapButton = CreateMinimapButton;

-- Row Helper Functions
local CreateRow;
local function CreateMiniListForGroup(group)
	-- Pop Out Functionality! :O
	local suffix = BuildSourceTextForChat(group, 0) .. " > " .. (group.text or "") .. (group.key and group[group.key] or "");
	local popout = app.Windows[suffix];
	if not popout then
		popout = app:GetWindow(suffix);
		popout.shouldFullRefresh = true;
		if group.questID or group.sourceQuests then
			-- This is a quest object. Let's show prereqs and breadcrumbs.
			local questID = group.questID;
			if questID and group.parent and group.parent.parent then
				if group.parent.questID == questID then
					group = group.parent;
				end
			end
			
			local mainQuest = CloneData(group);
			if mainQuest.sym then
				mainQuest.collectible = true;
				mainQuest.visible = true;
				mainQuest.progress = 0;
				mainQuest.total = 0;
				if not mainQuest.g then
					local resolved = ResolveSymbolicLink(group);
					if resolved then
						for i=#resolved,1,-1 do
							resolved[i] = CreateObject(resolved[i]);
						end
						mainQuest.g = resolved;
					end
				else
					local resolved = ResolveSymbolicLink(group);
					if resolved then
						MergeObjects(mainQuest.g, resolved);
					end
				end
			end
			
			if questID then mainQuest.collectible = true; end
			local g = { mainQuest };
			
			-- Check to see if Source Quests are listed elsewhere.
			if questID and not group.sourceQuests then
				local searchResults = SearchForField("questID", questID);
				if searchResults and #searchResults > 1 then
					for i=1,#searchResults,1 do
						local searchResult = searchResults[i];
						if searchResult.questID == questID and searchResult.sourceQuests then
							searchResult = CloneData(searchResult);
							searchResult.collectible = true;
							searchResult.g = g;
							mainQuest = searchResult;
							g = { mainQuest };
							break;
						end
					end
				end
			end
			
			-- Show Quest Prereqs
			if mainQuest.sourceQuests then
				local breakafter = 0;
				local sourceQuests, sourceQuest, subSourceQuests, prereqs = mainQuest.sourceQuests;
				while sourceQuests and #sourceQuests > 0 do
					subSourceQuests = {}; prereqs = {};
					for i,sourceQuestID in ipairs(sourceQuests) do
						sourceQuest = sourceQuestID < 1 and SearchForField("creatureID", math.abs(sourceQuestID)) or SearchForField("questID", sourceQuestID);
						if sourceQuest and #sourceQuest > 0 then
							local found = nil;
							for i=1,#sourceQuest,1 do
								-- Only care about the first search result.
								local sq = sourceQuest[i];
								if sq and sq.questID and not sq.objectiveID then
									questID = sq.questID;
									if sq.parent and sq.parent.questID == questID then
										sq = sq.parent;
									end
									if app.GroupFilter(sq) then
										if app.RecursiveClassAndRaceFilter(sq) and questID == sourceQuestID then
											if not found or (not found.sourceQuests and sq.sourceQuests) then
												found = sq;
											end
										end
									end
								end
							end
							if found then
								sourceQuest = CloneData(found);
								sourceQuest.collectible = true;
								sourceQuest.visible = true;
								sourceQuest.hideText = true;
								if found.sourceQuests and #found.sourceQuests > 0 and (not found.saved or app.CollectedItemVisibilityFilter(sourceQuest)) then
									-- Mark the sub source quest IDs as marked (as the same sub quest might point to 1 source quest ID)
									for j, subsourceQuests in ipairs(found.sourceQuests) do
										subSourceQuests[subsourceQuests] = true;
									end
								end
							else
								sourceQuest = nil;
							end
						elseif sourceQuestID > 0 then
							-- Create a Quest Object.
							sourceQuest = app.CreateQuest(sourceQuestID, { ['visible'] = true, ['collectible'] = true, ['hideText'] = true });
						else
							-- Create a NPC Object.
							sourceQuest = app.CreateNPC(math.abs(sourceQuestID), { ['visible'] = true, ['hideText'] = true });
						end
						
						-- If the quest was valid, attach it.
						if sourceQuest then tinsert(prereqs, sourceQuest); end
					end
					
					-- Convert the subSourceQuests table into an array
					sourceQuests = {};
					if #prereqs > 0 then
						for sourceQuestID,i in pairs(subSourceQuests) do
							tinsert(sourceQuests, tonumber(sourceQuestID));
						end
						tinsert(prereqs, {
							["text"] = "Upon Completion",
							["description"] = "The above quests need to be completed before being able to complete the quest(s) listed below.",
							["icon"] = "Interface\\Icons\\Spell_Holy_MagicalSentry.blp",
							["visible"] = true,
							["expanded"] = true,
							["hideText"] = true,
							["g"] = g,
						});
						g = prereqs;
						breakafter = breakafter + 1;
						if breakafter >= 100 then
							app.print("Likely just broke out of an infinite source quest loop. Please report this to the ATT Discord!");
							break;
						end
					end
				end
				
				-- Clean up the recursive hierarchy. (this removed duplicates)
				sourceQuests = {};
				prereqs = g;
				local orig = g;
				while prereqs and #prereqs > 0 do
					for i=#prereqs,1,-1 do
						local o = prereqs[i];
						if o.key then
							sourceQuest = o.key .. o[o.key];
							if sourceQuests[sourceQuest] then
								-- Already exists in the hierarchy. Uh oh.
								table.remove(prereqs, i);
							else
								sourceQuests[sourceQuest] = true;
							end
						end
					end
					
					if #prereqs > 1 then
						prereqs = prereqs[#prereqs];
						if prereqs then prereqs = prereqs.g; end
						orig = prereqs;
					else
						prereqs = prereqs[#prereqs];
						if prereqs then prereqs = prereqs.g; end
						orig[#orig].g = prereqs;
					end
				end
				
				-- Clean up standalone "Upon Completion" headers.
				prereqs = g;
				repeat
					local n = #prereqs;
					local lastprereq = prereqs[n];
					if lastprereq.text == "Upon Completion" and n > 1 then
						table.remove(prereqs, n);
						local g = prereqs[n-1].g;
						if not g then
							g = {};
							prereqs[n-1].g = g;
						end
						if lastprereq.g then
							for i,data in ipairs(lastprereq.g) do
								table.insert(g, data);
							end
						end
						prereqs = g;
					else
						prereqs = lastprereq.g;
					end
				until not prereqs or #prereqs < 1;
			end
			popout.data = {
				["text"] = "Quest Chain Requirements",
				["description"] = "The following quests need to be completed before being able to complete the final quest.",
				["icon"] = "Interface\\Icons\\Spell_Holy_MagicalSentry.blp",
				["g"] = g,
				["hideText"] = true
			};
		elseif group.sym then
			popout.data = CloneData(group);
			popout.data.collectible = true;
			popout.data.visible = true;
			popout.data.progress = 0;
			popout.data.total = 0;
			if not popout.data.g then
				local resolved = ResolveSymbolicLink(group);
				if resolved then
					for i=#resolved,1,-1 do
						resolved[i] = CreateObject(resolved[i]);
					end
					popout.data.g = resolved;
				end
			else
				local resolved = ResolveSymbolicLink(group);
				if resolved then
					MergeObjects(popout.data.g, resolved);
				end
			end
		elseif group.g then
			-- This is already a container with accurate numbers.
			popout.data = group;
		else
			-- This is a standalone item
			group.visible = true;
			if not group.g and (group.itemID or group.currencyID) then
				local cmd = group.link or group.key .. ":" .. group[group.key];
				group = GetCachedSearchResults(cmd, SearchForLink, cmd);
			end
			popout.data = group;
		end
		
		-- Clone the data and then insert it into the Raw Data table.
		popout.data = CloneData(popout.data);
		popout.data.hideText = true;
		popout.data.visible = true;
		popout.data.indent = 0;
		popout.data.total = 0;
		popout.data.progress = 0;
		BuildGroups(popout.data, popout.data.g);
		UpdateGroups(popout.data, popout.data.g);
		table.insert(app.RawData, popout.data);
	end
	if IsAltKeyDown() then
		AddTomTomWaypoint(popout.data, false);
	else
		if not popout.data.expanded then
			ExpandGroupsRecursively(popout.data, true, true);
		end
		popout:Toggle(true);
	end
	return popout;
end
local function ClearRowData(self)
	self.ref = nil;
	self.Background:Hide();
	self.Texture:Hide();
	self.Texture.Background:Hide();
	self.Texture.Border:Hide();
	self.Indicator:Hide();
	self.Summary:Hide();
	self.Label:Hide();
end
local function CalculateRowBack(data)
	if data.back then return data.back; end
	if data.parent then
		return CalculateRowBack(data.parent) * 0.5;
	else
		return 0;
	end
end
local function CalculateRowIndent(data)
	if data.indent then return data.indent; end
	if data.parent then
		return CalculateRowIndent(data.parent) + 1;
	else
		return 0;
	end
end
local function SetRowData(self, row, data)
	ClearRowData(row);
	if data then
		local text = data.text;
		if not text or text == RETRIEVING_DATA then
			text = RETRIEVING_DATA;
			self.processingLinks = true;
		elseif string.find(text, "%[%]") then
			-- This means the link is still rendering
			text = RETRIEVING_DATA;
			self.processingLinks = true;
		end
		local leftmost = row;
		local relative = "LEFT";
		local x = ((CalculateRowIndent(data) * 8) or 0) + 8;
		local back = CalculateRowBack(data);
		row.ref = data;
		if back then
			row.Background:SetAlpha(back or 0.2);
			row.Background:Show();
		end
		if data.u then
			local reason = L["UNOBTAINABLE_ITEM_REASONS"][data.u];
			if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then
				local texture = L["UNOBTAINABLE_ITEM_TEXTURES"][reason[1]];
				if texture then
					row.Indicator:SetTexture(texture);
					row.Indicator:SetPoint("RIGHT", leftmost, relative, x, 0);
					row.Indicator:Show();
				end
			end
		end
		-- if data is quest and is currently accepted
		if data.questID and GetQuestLogIndexByID(data.questID)>0 then
			row.Indicator:SetTexture(app.asset("known_circle"));
			row.Indicator:SetPoint("RIGHT", leftmost, relative, x, 0);
			row.Indicator:Show();
		end
		if data.saved then
			if data.parent and data.parent.locks or data.isDaily then
				row.Indicator:SetTexture(app.asset("known"));
			else
				row.Indicator:SetTexture(app.asset("known_green"));
			end
			row.Indicator:SetPoint("RIGHT", leftmost, relative, x, 0);
			row.Indicator:Show();
		end
		if SetPortraitIcon(row.Texture, data) then
			row.Texture.Background:SetPoint("LEFT", leftmost, relative, x, 0);
			row.Texture.Border:SetPoint("LEFT", leftmost, relative, x, 0);
			row.Texture:SetPoint("LEFT", leftmost, relative, x, 0);
			row.Texture:Show();
			leftmost = row.Texture;
			relative = "RIGHT";
			x = 4;
		end
		local summary = GetProgressTextForRow(data) or data.summary;
		if not summary then
			if data.g and not data.expanded and #data.g > 0 then
				summary = "+++";
			else
				summary = "---";
			end
		end
		row.Summary:SetText(summary);
		row.Summary:Show();
		row.Label:SetPoint("LEFT", leftmost, relative, x, 0);
		if row.Summary and row.Summary:IsShown() then
			row.Label:SetPoint("RIGHT", row.Summary, "LEFT", 0, 0);
		else
			row.Label:SetPoint("RIGHT");
		end
		row.Label:SetText(text);
		if data.font then
			row.Label:SetFontObject(data.font);
			row.Summary:SetFontObject(data.font);
		else
			row.Label:SetFontObject("GameFontNormal");
			row.Summary:SetFontObject("GameFontNormal");
		end
		row:SetHeight(select(2, row.Label:GetFont()) + 4);
		row.Label:Show();
		row:Show();
	else
		row:Hide();
	end
end
local function UpdateRowProgress(group)
	if group.collectible then
		group.progress = group.collected and 1 or 0;
		group.total = 1;
	else
		group.progress = 0;
		group.total = 0;
	end
	if group.g then
		for i,subgroup in ipairs(group.g) do
			UpdateRowProgress(subgroup);
			if subgroup.total then
				group.progress = group.progress + subgroup.progress;
				group.total = group.total + subgroup.total;
			end
		end
	end
end
local function UpdateVisibleRowData(self)
	-- If there is no raw data, then return immediately.
	if not self.rowData then return; end
	if self:GetHeight() > 64 then self.ScrollBar:Show(); else self.ScrollBar:Hide(); end
	
	-- Make it so that if you scroll all the way down, you have the ability to see all of the text every time.
	local totalRowCount = #self.rowData;
	if totalRowCount > 0 then
		-- Fill the remaining rows up to the (visible) row count.
		local container, rowCount, totalHeight = self.Container, 0, 0;
		local current = math.max(1, math.min(self.ScrollBar.CurrentValue, totalRowCount));
		
		-- Ensure that the first row doesn't move out of position.
		local row = container.rows[1] or CreateRow(container);
		SetRowData(self, row, self.rowData[1]);
		totalHeight = totalHeight + row:GetHeight();
		current = current + 1;
		rowCount = rowCount + 1;
		
		for i=2,totalRowCount do
			row = container.rows[i] or CreateRow(container);
			SetRowData(self, row, self.rowData[current]);
			totalHeight = totalHeight + row:GetHeight();
			if totalHeight > container:GetHeight() then
				break;
			else
				current = current + 1;
				rowCount = rowCount + 1;
			end
		end
		
		-- Hide the extra rows if any exist
		for i=math.max(2, rowCount + 1),#container.rows do
			ClearRowData(container.rows[i]);
			container.rows[i]:Hide();
		end
		
		totalRowCount = totalRowCount + 1;
		self.ScrollBar:SetMinMaxValues(1, math.max(1, totalRowCount - rowCount));
		
		-- If the rows need to be processed again, do so next update.
		if self.processingLinks then
			StartCoroutine(self:GetName(), function()
				while self.processingLinks do
					self.processingLinks = nil;
					coroutine.yield();
					UpdateVisibleRowData(self);
				end
				if self.UpdateDone then
					StartCoroutine(self:GetName()..":UpdateDone", function()
						coroutine.yield();
						StartCoroutine(self:GetName()..":UpdateDoneP2", function()
							coroutine.yield();
							self:UpdateDone();
						end);
					end);
				end
			end);
		elseif self.UpdateDone and rowCount > 5 then
			StartCoroutine(self:GetName()..":UpdateDone", function()
				coroutine.yield();
				StartCoroutine(self:GetName()..":UpdateDoneP2", function()
					coroutine.yield();
					self:UpdateDone();
				end);
			end);
		end
	else
		self:Hide();
	end
end
local function HideParent(self)
	self:GetParent():Toggle();
end
local function IsSelfOrChild(self, focus)
	-- This function helps validate that the focus is within the local hierarchy.
	return focus and (self == focus or IsSelfOrChild(self, focus:GetParent()));
end
local function StopMovingOrSizing(self)
	if self.isMoving then
		self:StopMovingOrSizing();
		self.isMoving = false;
	end
end
local function StartMovingOrSizing(self, fromChild)
	if not self:IsMovable() and not self:IsResizable() then
		return
	end
	if self.isMoving then
		StopMovingOrSizing(self);
	else
		self.isMoving = true;
		if not self:IsMovable() or ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < math.max(self:GetTop() - 40, self:GetBottom() + 10)) then
			self:StartSizing();
			Push(self, "StartMovingOrSizing (Sizing)", function()
				if self.isMoving then
					--self:Update();
					UpdateVisibleRowData(self);
					return true;
				end
			end);
		else
			self:StartMoving();
			Push(app, "StartMovingOrSizing (Moving)", function()
				-- This fixes a bug where the window will get stuck on the mouse until you reload.
				if IsSelfOrChild(self, GetMouseFocus()) then
					return true;
				else
					StopMovingOrSizing(self);
				end
			end);
		end
	end
end
local function RowOnClick(self, button)
	local reference = self.ref;
	if reference then
		-- If the row data itself has an OnClick handler... execute that first.
		if reference.OnClick and reference.OnClick(self, button) then
			return true;
		end
		
		if IsShiftKeyDown() then
			-- If we're at the Auction House
			if AuctionFrame and AuctionFrame:IsShown() then
				-- Auctionator Support
				if Atr_SearchAH then
					if reference.g and #reference.g > 0 then
						local missingItems = SearchForMissingItemNames(reference);					
						if #missingItems > 0 then
							Atr_SelectPane(3);
							Atr_SearchAH(L["TITLE"], missingItems, LE_ITEM_CLASS_ARMOR);
							return true;
						end
						app.print("No cached items found in search. Expand the group and view the items to cache the names and try again. Only Bind on Equip items will be found using this search.");
					else
						local name = reference.name;
						if name then
							Atr_SelectPane(3);
							--Atr_SearchAH(name, { name });
							Atr_SetSearchText (name);
							Atr_Search_Onclick ();
							return true;
						end
						app.print("Only Bind on Equip items can be found using this search.");
					end
					return true;
				elseif TSMAPI and TSMAPI.Auction then
					if reference.g and #reference.g > 0 then
						local missingItems = SearchForMissingItems(reference);					
						if #missingItems > 0 then
							local itemList, search = {};
							for i,group in ipairs(missingItems) do
								search = group.tsm or TSMAPI.Item:ToItemString(group.link or group.itemID);
								if search then itemList[search] = BuildSourceTextForTSM(group, 0); end
							end
							app:ShowPopupDialog("Running this command can potentially destroy your existing TSM settings by reassigning items to the " .. L["TITLE"] .. " preset.\n\nWe recommend that you use a different profile when using this feature.\n\nDo you want to proceed anyways?",
							function()
								TSMAPI.Groups:CreatePreset(itemList);
								app.print("Updated the preset successfully.");
								if not TSMAPI.Operations:GetFirstByItem(search, "Shopping") then
									print("The preset is missing a 'Shopping' Operation assignment.");
									print("Type '/tsm operations' to create or assign one.");
								end
							end);
							return true;
						end
						app.print("No cached items found in search. Expand the group and view the items to cache the names and try again. Only Bind on Equip items will be found using this search.");
					else
						-- Attempt to search manually with the link.
						local link = reference.link or reference.silentLink;
						if link and HandleModifiedItemClick(link) then
							AuctionFrameBrowse_Search();
							return true;
						end
					end
					return true;
				else
					if reference.g and #reference.g > 0 and not reference.link then
						app.print("Group-based searches are only supported using Auctionator.");
						return true;
					else
						-- Attempt to search manually with the link.
						local link = reference.link or reference.silentLink;
						if link and HandleModifiedItemClick(link) then
							AuctionFrameBrowse_Search();
							return true;
						end
					end
				end
			elseif TSMAPI_FOUR and false then
				if reference.g and #reference.g > 0 then
					if true then
						app.print("TSM4 not compatible with ATT yet. If you know how to create Presets like we used to do in TSM3, please whisper Crieve on Discord!");
						return true;
					end
					local missingItems = SearchForMissingItems(reference);					
					if #missingItems > 0 then
						app:ShowPopupDialog("Running this command can potentially destroy your existing TSM settings by reassigning items to the " .. L["TITLE"] .. " preset.\n\nWe recommend that you use a different profile when using this feature.\n\nDo you want to proceed anyways?",
						function()
							local itemString, groupPath;
							groupPath = BuildSourceTextForTSM(app:GetWindow("Prime").data, 0);
							if TSMAPI_FOUR.Groups.Exists(groupPath) then
								TSMAPI_FOUR.Groups.Remove(groupPath);
							end
							TSMAPI_FOUR.Groups.AppendOperation(groupPath, "Shopping", operation)
							for i,group in ipairs(missingItems) do
								if not group.spellID or group.itemID then
									itemString = group.tsm;
									if itemString then
										groupPath = BuildSourceTextForTSM(group, 0);
										TSMAPI_FOUR.Groups.Create(groupPath);
										if TSMAPI_FOUR.Groups.IsItemInGroup(itemString) then
											TSMAPI_FOUR.Groups.MoveItem(itemString, groupPath)
										else
											TSMAPI_FOUR.Groups.AddItem(itemString, groupPath)
										end
										if i > 10 then break; end
									end
								end
							end
							app.print("Updated the preset successfully.");
						end);
						return true;
					end
					app.print("No cached items found in search. Expand the group and view the items to cache the names and try again. Only Bind on Equip items will be found using this search.");
				else
					-- Attempt to search manually with the link.
					local link = reference.link or reference.silentLink;
					if link and HandleModifiedItemClick(link) then
						AuctionFrameBrowse_Search();
						return true;
					end
				end
				return true;
			else
				-- Not at the Auction House
				-- If this reference has a link, then attempt to preview the appearance or write to the chat window.
				local link = reference.link or reference.silentLink;
				if link then
					if HandleModifiedItemClick(link) or ChatEdit_InsertLink(link or BuildSourceTextForChat(reference, 0)) then return true; end
					local _, dialog = StaticPopup_Visible("ALL_THE_THINGS_EDITBOX");
					if dialog then dialog.editBox:SetText(link); return true; end
				end
				if button == "LeftButton" then RefreshCollections(); end
				return true;
			end
		end
		
		-- Control Click Expands the Groups
		if IsControlKeyDown() then
			-- If this reference has a link, then attempt to preview the appearance.
			local link = reference.link or reference.silentLink;
			if link and HandleModifiedItemClick(link) then
				return true;
			end
			
			-- If this reference is anything else, expand the groups.
			if reference.g then
				if self.index < 1 and #reference.g > 0 then
					ExpandGroupsRecursively(reference, not reference.g[1].expanded, true);
				else
					ExpandGroupsRecursively(reference, not reference.expanded, true);
				end
				app:UpdateWindows();
				return true;
			end
		end
		
		-- All non-Shift Right Clicks open a mini list or the settings.
		if button == "RightButton" then
			if IsAltKeyDown() then
				AddTomTomWaypoint(reference, false);
			elseif self.index > 0 then
				CreateMiniListForGroup(self.ref);
			else
				app.Settings:Open();
			end
		elseif self.index > 0 then
			reference.expanded = not reference.expanded;
			self:GetParent():GetParent():Update();
		elseif not reference.expanded then
			reference.expanded = true;
			self:GetParent():GetParent():Update();
		else
			-- Allow the First Frame to move the parent.
			local owner = self:GetParent():GetParent();
			self:SetScript("OnMouseUp", function(self)
				self:SetScript("OnMouseUp", nil);
				StopMovingOrSizing(owner);
			end);
			StartMovingOrSizing(owner, true);
		end
	end
end
local function RowOnEnter(self)
	local reference = self.ref; -- NOTE: This is the good ref value, not the parasitic one.
	if reference and GameTooltip then
		GameTooltipIcon.icon.Background:Hide();
		GameTooltipIcon.icon.Border:Hide();
		GameTooltipIcon:Hide();
		GameTooltipModel:Hide();
		GameTooltip:ClearLines();
		GameTooltipIcon:ClearAllPoints();
		GameTooltipModel:ClearAllPoints();
		if self:GetCenter() > (UIParent:GetWidth() / 2) and (not AuctionFrame or not AuctionFrame:IsVisible()) then
			GameTooltip:SetOwner(self, "ANCHOR_LEFT");
			GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
			GameTooltipModel:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
		else
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltipIcon:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, 0);
			GameTooltipModel:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, 0);
		end
		
		-- NOTE: Order matters, we "fall-through" certain values in order to pass this information to the item ID section.
		if not reference.creatureID then
			if reference.itemID then
				local link = reference.link;
				if link and link ~= "" then
					GameTooltip:SetHyperlink(link);
				else
					GameTooltip:AddLine("Item #" .. reference.itemID);
					if reference and reference.u then
						local reason = L["UNOBTAINABLE_ITEM_REASONS"][reference.u];
						if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then GameTooltip:AddLine(reason[2], 1, 1, 1, true); end
					end
					AttachTooltipSearchResults(GameTooltip, 1, "itemID:" .. reference.itemID, SearchForField, "itemID", reference.itemID);
				end
			elseif reference.currencyID then
				GameTooltip:SetCurrencyByID(reference.currencyID, 1);
			else
				local link = reference.link;
				if link then
					pcall(GameTooltip.SetHyperlink, GameTooltip, link);
					if reference.spellID and GetRelativeValue(reference, "requireSkill") == 333 then
						AttachTooltipSearchResults(GameTooltip, 1, "spellID:" .. reference.spellID, SearchForField, "spellID", reference.spellID);
					end
				end
			end
		end
		
		-- Miscellaneous fields
		if GameTooltip:NumLines() < 1 then GameTooltip:AddLine(self.Label:GetText()); end
		if app.Settings:GetTooltipSetting("Progress") then
			if reference.trackable and reference.total and reference.total >= 2 then
				GameTooltip:AddDoubleLine("Tracking Progress", GetCompletionText(reference.saved));
			end
		end
		
		-- Relative ATT location
		if reference.parent and not reference.itemID then
			if reference.parent.parent then
				GameTooltip:AddDoubleLine(reference.parent.parent.text or RETRIEVING_DATA, reference.parent.text or RETRIEVING_DATA);
			else
				--GameTooltip:AddLine(reference.parent.text or RETRIEVING_DATA, 1, 1, 1);
			end
		end
		
		local title = reference.title;
		if title then
			local left, right = strsplit(DESCRIPTION_SEPARATOR, title);
			if right then
				GameTooltip:AddDoubleLine(left, right);
			else
				GameTooltip:AddLine(title, 1, 1, 1);
			end
		elseif reference.retries then
			GameTooltip:AddLine("Failed to acquire information. This quest may have been removed from the game. " .. tostring(reference.retries), 1, 1, 1);
		end
		if reference.lvl then
			local minlvl, maxlvl;
			if type(reference.lvl) == "table" then
				minlvl = reference.lvl[1] or 0;
				maxlvl = reference.lvl[2] or 0;
			else
				minlvl = reference.lvl;
			end
			-- i suppose a maxlvl of 1 might exist?
			if maxlvl and maxlvl > 0 then
				GameTooltip:AddDoubleLine(L["REQUIRES_LEVEL"], tostring(minlvl) .. " to " .. tostring(maxlvl));
			-- no point to show 'requires lvl 1'
			elseif minlvl and minlvl > 1 then
				GameTooltip:AddDoubleLine(L["REQUIRES_LEVEL"], tostring(minlvl));
			end
		end
		if reference.b and app.Settings:GetTooltipSetting("binding") then GameTooltip:AddDoubleLine("Binding", tostring(reference.b)); end
		if reference.requireSkill then GameTooltip:AddDoubleLine(L["REQUIRES"], GetSpellInfo(app.SkillIDToSpellID[reference.requireSkill] or 0) or RETRIEVING_DATA); end
		if reference.f and reference.f > 0 and app.Settings:GetTooltipSetting("filterID") then GameTooltip:AddDoubleLine(L["FILTER_ID"], tostring(L["FILTER_ID_TYPES"][reference.f])); end
		if reference.achievementID and app.Settings:GetTooltipSetting("achievementID") then
			GameTooltip:AddDoubleLine(L["ACHIEVEMENT_ID"], tostring(reference.achievementID));
			if reference.sourceQuests then
				GameTooltip:AddLine("This achievement has associated quests that can be completed before the introduction of the Achievement system coming with the Wrath Prepatch. Not all achievements can be tracked this way, but for those that can, they will be displayed. All other non-trackable achievements will be activated with the prepatch.", 0.4, 0.8, 1, true);
			end
		end
		if app.Settings:GetTooltipSetting("creatureID") then 
			if reference.creatureID then
				GameTooltip:AddDoubleLine(L["CREATURE_ID"], tostring(reference.creatureID));
			elseif reference.npcID then
				GameTooltip:AddDoubleLine(L["NPC_ID"], tostring(reference.npcID));
			end
		end
		if reference.factionID and app.Settings:GetTooltipSetting("factionID") then GameTooltip:AddDoubleLine(L["FACTION_ID"], tostring(reference.factionID)); end
		if reference.minReputation and not reference.maxReputation then
			local standingId, offset = app.GetFactionStanding(reference.minReputation[2])
			local msg = "Requires a minimum standing of"
			if offset ~= 0 then msg = msg .. " " .. offset end
			msg = msg .. " " .. app.GetFactionStandingText(standingId) .. " with " .. (GetFactionInfoByID(reference.minReputation[1]) or "the opposite faction") .. "."
			GameTooltip:AddLine(msg);
		end
		if reference.maxReputation and not reference.minReputation then
			local standingId, offset = app.GetFactionStanding(reference.maxReputation[2])
			local msg = "Requires a standing lower than"
			if offset ~= 0 then msg = msg .. " " .. offset end
			msg = msg .. " " .. app.GetFactionStandingText(standingId) .. " with " .. (GetFactionInfoByID(reference.maxReputation[1]) or "the opposite faction") .. "."
			GameTooltip:AddLine(msg);
		end
		if reference.minReputation and reference.maxReputation then
			local minStandingId, minOffset = app.GetFactionStanding(reference.minReputation[2])
			local maxStandingId, maxOffset = app.GetFactionStanding(reference.maxReputation[2])
			if reference.maxReputation[1] == reference.minReputation[1] then
				local msg = "Requires a standing between"
				if minOffset ~= 0 then msg = msg .. " " .. minOffset end
				msg = msg .. " " .. app.GetFactionStandingText(minStandingId) .. " and"
				if maxOffset ~= 0 then msg = msg .. " " .. maxOffset end
				msg = msg .. " " .. app.GetFactionStandingText(maxStandingId) .. " with " .. (GetFactionInfoByID(reference.minReputation[1]) or "the opposite faction") .. ".";
				GameTooltip:AddLine(msg);
			else
				local msg = "Requires a minimum standing of"
				if minOffset ~= 0 then msg = msg .. " " .. minOffset end
				msg = msg .. " " .. app.GetFactionStandingText(minStandingId) .. " with " .. (GetFactionInfoByID(reference.minReputation[1]) or "the opposite faction") .. "."
				GameTooltip:AddLine(msg);
				
				msg = "Requires a standing lower than"
				if maxOffset ~= 0 then msg = msg .. " " .. maxOffset end
				msg = msg .. " " .. app.GetFactionStandingText(maxStandingId) .. " with " .. (GetFactionInfoByID(reference.maxReputation[1]) or "the opposite faction") .. "."
				GameTooltip:AddLine(msg);
			end
		end
		if reference.objectID and app.Settings:GetTooltipSetting("objectID") then GameTooltip:AddDoubleLine(L["OBJECT_ID"], tostring(reference.objectID)); end
		if reference.spellID then
			if app.Settings:GetTooltipSetting("spellID") then GameTooltip:AddDoubleLine(L["SPELL_ID"], tostring(reference.spellID) .. " (" .. (app.GetSpellName(reference.spellID, reference.rank) or "??") .. ")"); end
			
			-- If the item is a recipe, then show which characters know this recipe.
			if not reference.collectible and app.Settings:GetTooltipSetting("KnownBy") then
				local knownBy = {};
				for _,character in pairs(ATTCharacterData) do
					if character.ActiveSkills then
						local skills = character.ActiveSkills[reference.spellID];
						if skills then table.insert(knownBy, { character, skills[1], skills[2] }); end
					end
				end
				if #knownBy > 0 then
					insertionSort(knownBy, function(a, b)
						return a[2] > b[2];
					end);
					GameTooltip:AddLine("|cff66ccffKnown by:|r");
					for i,data in ipairs(knownBy) do
						local character = data[1];
						GameTooltip:AddDoubleLine("  " .. string.gsub(character and character.text or "???", "-" .. GetRealmName(), ""), data[2] .. " / " .. data[3]);
					end
					
				end
			end
		end
		if reference.flightPathID and app.Settings:GetTooltipSetting("flightPathID")  then GameTooltip:AddDoubleLine(L["FLIGHT_PATH_ID"], tostring(reference.flightPathID)); end
		if reference.mapID and app.Settings:GetTooltipSetting("mapID") then GameTooltip:AddDoubleLine(L["MAP_ID"], tostring(reference.mapID)); end
		if reference.explorationID and app.Settings:GetTooltipSetting("explorationID") then GameTooltip:AddDoubleLine(L["EXPLORATION_ID"], tostring(reference.explorationID)); end
		if reference.artID and app.Settings:GetTooltipSetting("artID") then GameTooltip:AddDoubleLine(L["ART_ID"], tostring(reference.artID)); end
		--if reference.hash then GameTooltip:AddDoubleLine("Hash", tostring(reference.hash)); end
		if reference.coords and app.Settings:GetTooltipSetting("Coordinates") then
			local currentMapID, j, str = app.CurrentMapID, 0;
			for i,coord in ipairs(reference.coords) do
				local x, y = coord[1], coord[2];
				local mapID = coord[3] or currentMapID;
				if mapID ~= currentMapID then
					str = app.GetMapName(mapID) or "??";
					if app.Settings:GetTooltipSetting("mapID") then
						str = str .. " (" .. mapID .. ")";
					end
					str = str .. ": ";
				else
					str = "";
				end
				GameTooltip:AddDoubleLine(j == 0 and "Coordinates" or " ", 
					str.. GetNumberWithZeros(math.floor(x * 10) * 0.1, 1) .. ", " .. GetNumberWithZeros(math.floor(y * 10) * 0.1, 1), 1, 1, 1, 1, 1, 1);
				j = j + 1;
				if j > 8 then
					break;
				end
			end
		end
		if reference.coord and app.Settings:GetTooltipSetting("Coordinates") then
			GameTooltip:AddDoubleLine("Coordinate",
				GetNumberWithZeros(math.floor(reference.coord[1] * 10) * 0.1, 1) .. ", " .. 
				GetNumberWithZeros(math.floor(reference.coord[2] * 10) * 0.1, 1), 1, 1, 1, 1, 1, 1);
		end
		if reference.providers then
			local counter = 0;
			for i,provider in pairs(reference.providers) do
				local providerType = provider[1];
				local providerID = provider[2] or 0;
				local providerString = UNKNOWN;
				if providerType == "o" then
					providerString = app.ObjectNames[providerID] or reference.text or ("Object: " .. RETRIEVING_DATA)
					if app.Settings:GetTooltipSetting("objectID") then
						providerString = providerString .. ' (' .. providerID .. ')';
					end
				elseif providerType == "n" then
					providerString = (providerID > 0 and NPCNameFromID[providerID]) or ("Creature: " .. RETRIEVING_DATA)
					if app.Settings:GetTooltipSetting("creatureID") then
						providerString = providerString .. ' (' .. providerID .. ')';
					end
				elseif providerType == "i" then
					local _,name,_,_,_,_,_,_,_,icon = GetItemInfo(providerID);
					providerString = (icon and ("|T" .. icon .. ":0|t") or "") .. (name or ("Item: " .. RETRIEVING_DATA));
					if app.Settings:GetTooltipSetting("itemID") then
						providerString = providerString .. ' (' .. providerID .. ')';
					end
				end
				GameTooltip:AddDoubleLine(counter == 0 and "Provider(s)" or " ", providerString);
				counter = counter + 1;
			end
		end
		
		if not reference.itemID then
			if reference.lore and app.Settings:GetTooltipSetting("Lore") then
				local found = false;
				for i=1,GameTooltip:NumLines() do
					if _G["GameTooltipTextLeft"..i]:GetText() == reference.lore then
						found = true;
						break;
					end
				end
				if not found then GameTooltip:AddLine(reference.lore, 0.4, 0.8, 1, 1); end
			end
			if reference.description and app.Settings:GetTooltipSetting("Descriptions") then
				local found = false;
				for i=1,GameTooltip:NumLines() do
					if _G["GameTooltipTextLeft"..i]:GetText() == reference.description then
						found = true;
						break;
					end
				end
				if not found then GameTooltip:AddLine(reference.description, 0.4, 0.8, 1, 1); end
			end
			if reference.rwp then
				local found = false;
				local rwp = GetRemovedWithPatchString(reference.rwp);
				for i=1,GameTooltip:NumLines() do
					if _G["GameTooltipTextLeft"..i]:GetText() == rwp then
						found = true;
						break;
					end
				end
				if not found then
					local a,r,g,b = HexToARGB("FFFFAAAA");
					GameTooltip:AddLine(rwp, r / 255, g / 255, b / 255, 1);
				end
			end
			if reference.questID and not reference.objectiveID then
				local objectified = false;
				local questLogIndex = GetQuestLogIndexByID(reference.questID);
				if questLogIndex then
					local lore, objective = GetQuestLogQuestText(questLogIndex);
					if lore and app.Settings:GetTooltipSetting("Lore") then GameTooltip:AddLine(lore, 0.4, 0.8, 1, 1); end
					if objective and app.Settings:GetTooltipSetting("Objectives") then
						GameTooltip:AddLine(QUEST_OBJECTIVES, 1, 1, 1, 1);
						GameTooltip:AddLine(objective, 0.4, 0.8, 1, 1);
						objectified = true;
					end
				end
				if not reference.saved and app.Settings:GetTooltipSetting("Objectives") then
					local objectives = C_QuestLog.GetQuestObjectives(reference.questID);
					if objectives and #objectives > 0 then
						if not objectified then
							GameTooltip:AddLine(QUEST_OBJECTIVES, 1, 1, 1, 1);
						end
						for i,objective in ipairs(objectives) do
							local _ = objective.text;
							if not _ or _:sub(1, 1) == " " then
								_ = RETRIEVING_DATA;
							end
							GameTooltip:AddDoubleLine("  " .. _, GetCompletionIcon(objective.finished), 1, 1, 1, 1);
						end
					end
				end
			end
			if reference.u then
				local reason = L["UNOBTAINABLE_ITEM_REASONS"][reference.u];
				if reason and (not reason[5] or select(4, GetBuildInfo()) < reason[5]) then GameTooltip:AddLine(reason[2], 1, 1, 1, true); end
			end
		end
		if reference.titleID then
			if app.Settings:GetTooltipSetting("titleID") then GameTooltip:AddDoubleLine(L["TITLE_ID"], tostring(reference.titleID)); end
			AttachTooltipSearchResults(GameTooltip, 1, "titleID:" .. reference.titleID, SearchForField, "titleID", reference.titleID);
		end
		if reference.questID and app.Settings:GetTooltipSetting("questID") then GameTooltip:AddDoubleLine(L["QUEST_ID"], tostring(reference.questID)); end
		if reference.qgs and app.Settings:GetTooltipSetting("QuestGivers") then
			if app.Settings:GetTooltipSetting("creatureID") then 
				for i,qg in ipairs(reference.qgs) do
					GameTooltip:AddDoubleLine(i == 1 and L["QUEST_GIVER"] or " ", tostring(qg > 0 and NPCNameFromID[qg] or "") .. " (" .. qg .. ")");
				end
			else
				for i,qg in ipairs(reference.qgs) do
					GameTooltip:AddDoubleLine(i == 1 and L["QUEST_GIVER"] or " ", tostring(qg > 0 and NPCNameFromID[qg] or qg));
				end
			end
		end
		if reference.crs and app.Settings:GetTooltipSetting("creatures") then
			if app.Settings:GetTooltipSetting("creatureID") then 
				for i,cr in ipairs(reference.crs) do
					GameTooltip:AddDoubleLine(i == 1 and CREATURE or " ", tostring(cr > 0 and NPCNameFromID[cr] or "") .. " (" .. cr .. ")");
				end
			else
				for i,cr in ipairs(reference.crs) do
					GameTooltip:AddDoubleLine(i == 1 and CREATURE or " ", tostring(cr > 0 and NPCNameFromID[cr] or cr));
				end
			end
		end
		if reference.c and app.Settings:GetTooltipSetting("ClassRequirements") then
			local str = "";
			for i,cl in ipairs(reference.c) do
				local info = C_CreatureInfo.GetClassInfo(cl);
				if info then
					if i > 1 then str = str .. ", "; end
					str = str .. info.className;
				end
			end
			GameTooltip:AddDoubleLine("Classes", str);
		end
		if app.Settings:GetTooltipSetting("RaceRequirements") then
			if reference.races then
				local str = "";
				for i,race in ipairs(reference.races) do
					local info = C_CreatureInfo.GetRaceInfo(race);
					if info then
						if i > 1 then str = str .. "*, "; end
						str = str .. info.raceName;
					end
				end
				GameTooltip:AddDoubleLine("Races", str);
			elseif reference.r and reference.r > 0 then
				GameTooltip:AddDoubleLine("Races", (reference.r == 2 and ITEM_REQ_ALLIANCE) or (reference.r == 1 and ITEM_REQ_HORDE) or "Unknown");
			end
		end
		if reference.isDaily then GameTooltip:AddLine("This can be completed daily.");
		elseif reference.isWeekly then GameTooltip:AddLine("This can be completed weekly.");
		elseif reference.isMontly then GameTooltip:AddLine("This can be completed monthly.");
		elseif reference.isYearly then GameTooltip:AddLine("This can be completed yearly.");
		elseif reference.repeatable then GameTooltip:AddLine("This can be repeated multiple times."); end
		if not GameTooltipModel:TrySetModel(reference) then
			local texture = reference.preview or reference.icon;
			if texture then
				if reference.explorationID and reference.maphash and reference.preview then
					local width, height, offsetX, offsetY = strsplit(":", reference.maphash);
					GameTooltipIcon:SetSize(tonumber(width) or 72,tonumber(height) or 72);
				else
					GameTooltipIcon:SetSize(72,72);
				end
				GameTooltipIcon.icon:SetTexture(texture);
				local texcoord = reference.texcoord;
				if texcoord then
					GameTooltipIcon.icon:SetTexCoord(texcoord[1], texcoord[2], texcoord[3], texcoord[4]);
				else
					GameTooltipIcon.icon:SetTexCoord(0, 1, 0, 1);
				end
				GameTooltipIcon:Show();
			end
		end
		if reference.displayID and app.Settings:GetTooltipSetting("displayID") then
			GameTooltip:AddDoubleLine("Display ID", reference.displayID);
		end
		if reference.modelID and app.Settings:GetTooltipSetting("modelID") then
			GameTooltip:AddDoubleLine("Model ID", reference.modelID);
		end
		if reference.cost then
			if type(reference.cost) == "table" then
				local _, name, icon, amount;
				for k,v in pairs(reference.cost) do
					_ = v[1];
					if _ == "g" then
						GameTooltip:AddDoubleLine(k == 1 and "Cost" or " ", GetCoinTextureString(v[2]));
					else
						if _ == "i" then
							_,name,_,_,_,_,_,_,_,icon = GetItemInfo(v[2]);
						elseif _ == "c" then
							name,_,icon = GetCurrencyInfo(v[2])
						end
						name = (icon and ("|T" .. icon .. ":0|t") or "") .. (name or RETRIEVING_DATA);
						_ = (v[3] or 1);
						if _ > 1 then
							name = _ .. "x  " .. name;
						end
						GameTooltip:AddDoubleLine(k == 1 and "Cost" or " ", name);
					end
				end
			else
				GameTooltip:AddDoubleLine("Cost", GetCoinTextureString(reference.cost));
			end
		end
		if app.Settings:GetTooltipSetting("Progress") then
			local right = (app.Settings:GetTooltipSetting("ShowIconOnly") and GetProgressTextForRow or GetProgressTextForTooltip)(reference);
			if right and right ~= "" and right ~= "---" then
				GameTooltipTextRight1:SetText(right);
				GameTooltipTextRight1:Show();
			end
		end
		
		-- Show Breadcrumb information
		if reference.isBreadcrumb then
			GameTooltip:AddLine("This is a breadcrumb quest.");
		end
		
		-- Show lockout information about an Instance (Raid or Dungeon)
		local locks = reference.locks;
		if locks then
			if locks.encounters then
				GameTooltip:AddDoubleLine("Resets", date("%c", locks.reset));
				for encounterIter,encounter in pairs(locks.encounters) do
					GameTooltip:AddDoubleLine(" " .. encounter.name, GetCompletionIcon(encounter.isKilled));
				end
			else
				if reference.isLockoutShared and locks.shared then
					GameTooltip:AddDoubleLine("Shared", date("%c", locks.shared.reset));
					for encounterIter,encounter in pairs(locks.shared.encounters) do
						GameTooltip:AddDoubleLine(" " .. encounter.name, GetCompletionIcon(encounter.isKilled));
					end
				else
					for key,value in pairs(locks) do
						if key == "shared" then
							-- Skip
						else
							GameTooltip:AddDoubleLine(Colorize(GetDifficultyInfo(key), app.DifficultyColors[key] or "ff1eff00"), date("%c", value.reset));
							for encounterIter,encounter in pairs(value.encounters) do
								GameTooltip:AddDoubleLine(" " .. encounter.name, GetCompletionIcon(encounter.isKilled));
							end
						end
					end
				end
			end
		end
		
		if reference.OnTooltip then reference:OnTooltip(); end
				
		if reference.questID and app.Settings:GetTooltipSetting("SummarizeThings") then
			if not reference.repeatable and app.Settings:GetTooltipSetting("Show:OtherCharacterQuests") then
				local incompletes, realmName = {}, GetRealmName();
				for guid,character in pairs(ATTCharacterData) do
					if not character.ignored and character.realm == realmName
						and (not reference.r or (character.factionID and reference.r == character.factionID))
						and (not reference.races or (character.raceID and contains(reference.races, character.raceID)))
						and (not reference.c or (character.classID and contains(reference.c, character.classID)))
						and (character.Quests and not character.Quests[reference.questID]) then
						incompletes[guid] = character;
					end
				end
				incompletes[app.GUID] = nil;
				local desc, j = "", 0;
				for guid,character in pairs(incompletes) do
					if j > 0 then desc = desc .. ", "; end
					desc = desc .. (character.text or guid);
					j = j + 1;
				end
				if j > 0 then
					GameTooltip:AddLine("Incomplete on " .. string.gsub(desc, "-" .. realmName, ""), 1, 1, 1, true);
				end
			end
		end
		
		-- Show Quest Prereqs
		local isDebugMode = app.Settings:Get("DebugMode");
		if reference.sourceQuests and (isDebugMode or not reference.saved) then
			local prereqs, bc = {}, {};
			for i,sourceQuestID in ipairs(reference.sourceQuests) do
				if sourceQuestID > 0 and (isDebugMode or not IsQuestFlaggedCompleted(sourceQuestID)) then
					local sqs = SearchForField("questID", sourceQuestID);
					if sqs and #sqs > 0 then
						local bestMatch = nil;
						for j,sq in ipairs(sqs) do
							if sq.questID == sourceQuestID and not sq.objectiveID then
								if isDebugMode or (app.RecursiveClassAndRaceFilter(sq) and not IsQuestFlaggedCompleted(sourceQuestID)) then
									if sq.sourceQuests then
										-- Always prefer the source quest with additional source quest data.
										bestMatch = sq;
									elseif not sq.itemID and (not bestMatch or not bestMatch.sourceQuests) then
										-- Otherwise try to find the version of the quest that isn't an item.
										bestMatch = sq;
									end
								end
							end
						end
						if bestMatch then
							if bestMatch.isBreadcrumb then
								table.insert(bc, bestMatch);
							else
								table.insert(prereqs, bestMatch);
							end
						end
					else
						table.insert(prereqs, app.CreateQuest(sourceQuestID));
					end
				end
			end

			if prereqs and #prereqs > 0 then
				GameTooltip:AddLine("This quest has an incomplete prerequisite quest that you need to complete first.");
				for i,prereq in ipairs(prereqs) do
					local text = "   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA);
					if prereq.mapID then
						text = text .. " (" .. (app.GetMapName(prereq.mapID) or RETRIEVING_DATA) .. ")";
					elseif prereq.maps then
						text = text .. " (" .. (app.GetMapName(prereq.maps[1]) or RETRIEVING_DATA) .. ")";
					elseif prereq.coords then
						text = text .. " (" .. (app.GetMapName(prereq.coords[1][3]) or RETRIEVING_DATA) .. ")";
					end
					GameTooltip:AddDoubleLine(text, GetCompletionIcon(IsQuestFlaggedCompleted(prereq.questID)));
				end
			end
			if bc and #bc > 0 then
				GameTooltip:AddLine("This quest has a breadcrumb quest that you may be unable to complete after completing this one.");
				for i,prereq in ipairs(bc) do
					local text = "   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA);
					if prereq.mapID then
						text = text .. " (" .. (app.GetMapName(prereq.mapID) or RETRIEVING_DATA) .. ")";
					elseif prereq.maps then
						text = text .. " (" .. (app.GetMapName(prereq.maps[1]) or RETRIEVING_DATA) .. ")";
					elseif prereq.coords then
						text = text .. " (" .. (app.GetMapName(prereq.coords[1][3]) or RETRIEVING_DATA) .. ")";
					end
					GameTooltip:AddDoubleLine(text, GetCompletionIcon(IsQuestFlaggedCompleted(prereq.questID)));
				end
			end
		end
		
		if reference.g then
			-- If we're at the Auction House
			if AuctionFrame and AuctionFrame:IsShown() then
				GameTooltip:AddLine(L[(self.index > 0 and "OTHER_ROW_INSTRUCTIONS_AH") or "TOP_ROW_INSTRUCTIONS_AH"], 1, 1, 1);
			else
				GameTooltip:AddLine(L[(self.index > 0 and "OTHER_ROW_INSTRUCTIONS") or "TOP_ROW_INSTRUCTIONS"], 1, 1, 1);
			end
		end
		GameTooltip:Show();
	end
end
local function RowOnLeave(self)
	if GameTooltip then
		GameTooltip:ClearLines();
		GameTooltip:Hide();
		GameTooltipIcon.icon.Background:Hide();
		GameTooltipIcon.icon.Border:Hide();
		GameTooltipIcon:Hide();
		GameTooltipModel:Hide();
	end
end
CreateRow = function(self)
	local row = CreateFrame("Button", nil, self);
	row.index = #self.rows;
	if row.index == 0 then
		-- This means relative to the parent.
		row:SetPoint("TOPLEFT");
		row:SetPoint("TOPRIGHT");
	else
		-- This means relative to the row above this one.
		row:SetPoint("TOPLEFT", self.rows[row.index], "BOTTOMLEFT");
		row:SetPoint("TOPRIGHT", self.rows[row.index], "BOTTOMRIGHT");
	end
	table.insert(self.rows, row);
	
	-- Setup highlighting and event handling
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
	row:RegisterForClicks("LeftButtonDown","RightButtonDown");
	row:SetScript("OnClick", RowOnClick);
	row:SetScript("OnEnter", RowOnEnter);
	row:SetScript("OnLeave", RowOnLeave);
	row:EnableMouse(true);
	
	-- Label is the text information you read.
	row.Label = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Label:SetJustifyH("LEFT");
	row.Label:SetPoint("BOTTOM");
	row.Label:SetPoint("TOP");
	row:SetHeight(select(2, row.Label:GetFont()) + 4);
	
	-- Summary is the completion summary information. (percentage text)
	row.Summary = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Summary:SetJustifyH("CENTER");
	row.Summary:SetPoint("BOTTOM");
	row.Summary:SetPoint("RIGHT");
	row.Summary:SetPoint("TOP");
	
	-- Background is used by the Map Highlight functionality.
	row.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Background:SetPoint("LEFT", 4, 0);
	row.Background:SetPoint("BOTTOM");
	row.Background:SetPoint("RIGHT");
	row.Background:SetPoint("TOP");
	row.Background:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight");
	
	-- Indicator is used by the Instance Saves functionality.
	row.Indicator = row:CreateTexture(nil, "ARTWORK");
	row.Indicator:SetPoint("BOTTOM");
	row.Indicator:SetPoint("TOP");
	row.Indicator:SetWidth(row:GetHeight());
	
	-- Texture is the icon.
	row.Texture = row:CreateTexture(nil, "ARTWORK");
	row.Texture:SetPoint("BOTTOM");
	row.Texture:SetPoint("TOP");
	row.Texture:SetWidth(row:GetHeight());
	row.Texture.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Texture.Background:SetPoint("BOTTOM");
	row.Texture.Background:SetPoint("TOP");
	row.Texture.Background:SetWidth(row:GetHeight());
	row.Texture.Border = row:CreateTexture(nil, "BORDER");
	row.Texture.Border:SetPoint("BOTTOM");
	row.Texture.Border:SetPoint("TOP");
	row.Texture.Border:SetWidth(row:GetHeight());
	
	-- Clear the Row Data Initially
	ClearRowData(row);
	return row;
end
app.CreateMiniListForGroup = CreateMiniListForGroup;
 
-- Collection Window Creation
app.Windows = {};
local function OnScrollBarMouseWheel(self, delta)
	self.ScrollBar:SetValue(self.ScrollBar.CurrentValue - delta);
end
local function OnScrollBarValueChanged(self, value)
	local un = math.floor(value);
	local up = un + 1;
	self.CurrentValue = (up - value) > (-(un - value)) and un or up;
	--self:GetParent():Update();
	UpdateVisibleRowData(self:GetParent());
end
local function SetWindowVisibility(self, show)
	if show then
		self:Show();
		self:Update();
	else
		self:Hide();
		for i, self in pairs(app.Windows) do
			if self:IsVisible() then
				return;
			end
		end
	end
	
	-- Return that at least one window is visible...
	return true;
end
local function ToggleWindow(self)
	return SetWindowVisibility(self, not self:IsVisible());
end
function app:OpenWindow(suffix)
	local window = app.Windows[suffix];
	if window then SetWindowVisibility(window, true); end
end
function app:ToggleWindow(suffix)
	local window = app.Windows[suffix];
	if window then ToggleWindow(window); end
end
local function ProcessGroup(data, object)
	if app.VisibilityFilter(object) then
		tinsert(data, object);
		if object.g and object.expanded then
			for j, group in ipairs(object.g) do
				ProcessGroup(data, group);
			end
		end
	end
end
local function UpdateWindow(self, force, got)
	-- If this window doesn't have data, do nothing.
	if not self.data then return; end
	if not self.rowData then
		self.rowData = {};
	else
		wipe(self.rowData);
	end
	if self.data and (force or self:IsVisible()) then
		self.data.expanded = true;
		if self.shouldFullRefresh and (force or got) then
			self.data.progress = 0;
			self.data.total = 0;
			UpdateGroups(self.data, self.data.g);
		end
		ProcessGroup(self.rowData, self.data);
		
		-- Does this user have everything?
		if self.data.total then
			if self.data.total <= self.data.progress then
				if #self.rowData < 1 then
					self.data.back = 1;
					tinsert(self.rowData, self.data);
				end
				if self.missingData then
					if got then app:PlayCompleteSound(); end
					self.missingData = nil;
				end
				tinsert(self.rowData, {
					["text"] = "No entries matching your filters were found.",
					["description"] = "If you believe this was in error, try activating 'Debug Mode'. One of your filters may be restricting the visibility of the group.",
					["collectible"] = 1,
					["collected"] = 1,
					["back"] = 0.7
				});
			else
				self.missingData = true;
			end
		else
			self.missingData = nil;
		end
		
		UpdateVisibleRowData(self);
		if self.Refresh then self:Refresh(); end
		return true;
	else
		UpdateVisibleRowData(self);
	end
end
local function UpdateWindowColor(self, suffix)
	self:SetBackdropBorderColor(1, 1, 1, 1);
	self:SetBackdropColor(0, 0, 0, 1);
end
function app:UpdateWindows(force, got)
	local anyUpdated = false;
	for name, window in pairs(app.Windows) do
		if window:Update(force, got) then
			--print(name .. ": Updated");
			anyUpdated = true;
		end
	end
	return anyUpdated;
end
function app:UpdateWindowColors()
	for suffix, window in pairs(app.Windows) do
		UpdateWindowColor(window, suffix);
	end
end
function app:GetDataCache()
	-- Update the Row Data by filtering raw data
	local allData = app:GetWindow("Prime").data;
	if not allData or not allData.total and app.Categories then
		allData = setmetatable({}, {
			__index = function(t, key)
				if key == "title" then
					return app.Settings:GetModeString() .. DESCRIPTION_SEPARATOR .. app.GetNumberOfItemsUntilNextPercentage(t.progress, t.total);
				else
					-- Something that isn't dynamic.
					return table[key];
				end
			end
		});
		allData.expanded = true;
		allData.icon = app.asset("logo_32x32");
		allData.preview = app.asset("Discord_2_128");
		allData.text = L["TITLE"];
		allData.description = L["DESCRIPTION"];
		allData.visible = true;
		allData.font = "GameFontNormalLarge";
		allData.progress = 0;
		allData.total = 0;
		local g, db = {};
		allData.g = g;
		table.insert(app.RawData, allData);
		
		-- Dungeons & Raids
		db = {};
		db.text = GROUP_FINDER;
		db.icon = app.asset("Category_D&R");
		db.g = app.Categories.Instances;
		table.insert(g, db);
		
		-- Zones
		if app.Categories.Zones then
			db = {};
			db.mapID = 947;
			db.text = BUG_CATEGORY2;
			db.icon = app.asset("Category_Zones");
			db.g = app.Categories.Zones;
			table.insert(g, db);
		end
		
		-- World Drops
		if app.Categories.WorldDrops then
			db = {};
			db.isWorldDropCategory = true;
			db.text = TRANSMOG_SOURCE_4;
			db.icon = app.asset("Category_WorldDrops");
			db.g = app.Categories.WorldDrops;
			table.insert(g, db);
		end
		
		-- Craftables
		if app.Categories.Craftables then
			db = {};
			db.expanded = false;
			db.text = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM;
			db.icon = app.asset("Category_Crafting");
			db.DontEnforceSkillRequirements = true;
			db.g = app.Categories.Craftables;
			table.insert(g, db);
		end
		
		-- Professions
		if app.Categories.Professions then
			db = {};
			db.expanded = false;
			db.text = TRADE_SKILLS;
			db.icon = app.asset("Category_Professions");
			db.description = "This section will only show your character's professions outside of Account and Debug Mode.";
			db.g = app.Categories.Professions;
			table.insert(g, db);
		end
		
		-- Skills
		if app.Categories.Skills then
			db = {};
			db.expanded = false;
			db.text = SKILLS;
			db.icon = "Interface\\ICONS\\SPELL_NATURE_THUNDERCLAP";
			db.g = app.Categories.Skills;
			table.insert(g, db);
		end
		
		-- PvP
		if app.Categories.PVP then
			db = {};
			db.text = PVP;
			db.isPVPCategory = true;
			db.icon = app.asset("Category_PvP");
			db.g = app.Categories.PVP;
			table.insert(g, db);
		end
		
		-- Factions (Dynamic)
		local factionsCategory = app.CreateNPC(-8, {});
		factionsCategory.g = {};
		factionsCategory.factions = {};
		factionsCategory.expanded = false;
		table.insert(g, factionsCategory);
		
		-- Flight Paths (Dynamic)
		local flightPathsCategory = {};
		flightPathsCategory.g = {};
		flightPathsCategory.fps = {};
		flightPathsCategory.expanded = false;
		flightPathsCategory.icon = app.asset("Category_FlightPaths");
		flightPathsCategory.text = "Flight Paths";
		table.insert(g, flightPathsCategory);
		
		-- Holidays
		if app.Categories.Holidays then
			db = app.CreateNPC(-5, app.Categories.Holidays);
			db.description = "These events occur at consistent dates around the year based on and themed around real world holiday events.";
			db.isHolidayCategory = true;
			db.expanded = false;
			table.insert(g, db);
		end
		
		-- World Events
		if app.Categories.WorldEvents then
			db = {};
			db.text = BATTLE_PET_SOURCE_7;
			db.description = "These events occur at different times in the game's timeline, typically as one time server wide events. Special celebrations such as Anniversary events and such may be found within this category.";
			db.icon = app.asset("Category_Event");
			db.g = app.Categories.WorldEvents;
			db.isEventCategory = true;
			db.expanded = false;
			table.insert(g, db);
		end
		
		-- Promotions
		if app.Categories.Promotions then
			db = {};
			db.isPromotionCategory = true;
			db.text = BATTLE_PET_SOURCE_8;
			db.description = "This section is for real world promotions that seeped extremely rare content into the game prior to some of them appearing within the In-Game Shop.";
			db.icon = app.asset("Category_Promo");
			db.g = app.Categories.Promotions;
			db.expanded = false;
			table.insert(g, db);
		end
		
		-- Achievements
		local achievementsCategory = app.CreateFilter(105, app.Categories.Achievements or {});
		achievementsCategory.description = "This section isn't a thing until Wrath, but by popular demand and my own insanity, I've added this section so you can track your progress for at least one of the big ticket achievements if you have the stomach for it.";
		app.Categories.Achievements = achievementsCategory.g;
		achievementsCategory.expanded = false;
		achievementsCategory.achievements = {};
		table.insert(g, achievementsCategory);
		
		-- Battle Pets
		local battlePetsCategory = {};
		battlePetsCategory.g = {};
		battlePetsCategory.battlepets = {};
		for _,petTypeID in ipairs({9,8,5,2,7,3,1,6,10,4}) do
			table.insert(battlePetsCategory.g, app.CreatePetType(petTypeID));
		end
		battlePetsCategory.expanded = false;
		battlePetsCategory.text = AUCTION_CATEGORY_BATTLE_PETS;
		battlePetsCategory.icon = app.asset("Category_PetJournal");
		table.insert(g, battlePetsCategory);
		
		-- Mounts
		local mountsCategory = {};
		mountsCategory.g = {};
		mountsCategory.mounts = {};
		mountsCategory.expanded = false;
		mountsCategory.text = MOUNTS;
		mountsCategory.icon = app.asset("Category_Mounts");
		table.insert(g, mountsCategory);
		
		-- Titles
		local titlesCategory = {};
		titlesCategory.g = {};
		titlesCategory.titles = {};
		titlesCategory.expanded = false;
		titlesCategory.text = PAPERDOLL_SIDEBAR_TITLES;
		titlesCategory.icon = app.asset("Category_Titles");
		table.insert(g, titlesCategory);
		
		-- Toys
		local toyCategory = {};
		toyCategory.g = {};
		toyCategory.toys = {};
		toyCategory.expanded = false;
		toyCategory.text = TOY_BOX;
		toyCategory.icon = app.asset("Category_ToyBox");
		table.insert(g, toyCategory);
		
		-- Track Deaths!
		table.insert(g, app:CreateDeathClass());
		
		-- Yourself.
		table.insert(g, app.CreateUnit("player", {
			["description"] = "Awarded for logging in.\n\nGood job! YOU DID IT!\n\nOnly visible while in Debug Mode.",
			["races"] = { app.RaceIndex },
			["c"] = { app.ClassIndex },
			["r"] = app.FactionID,
			["collected"] = 1,
			["nmr"] = false,
			["OnUpdate"] = function(self)
				self.lvl = app.Level;
				if app.Settings:Get("DebugMode") then
					self.collectible = true;
				else
					self.collectible = false;
				end
			end
		}));
		
		-- Items (Dynamic)
		--[[
		db = {};
		db.g = (function()
			local cache = GetTempDataMember("ITEM_CACHE");
			if not cache then
				cache = {};
				SetTempDataMember("ITEM_CACHE", cache);
				for i=1,40000,1 do
					tinsert(cache, app.CreateItem(i));
				end
			end
			return cache;
		end)();
		db.expanded = false;
		db.text = "All Items (Dynamic)";
		table.insert(g, db);
		
		-- Factions (Dynamic)
		db = {};
		db.g = (function()
			local cache = {};
			--local datas = {};
			for i=1,929,1 do
				local faction = app.CreateFaction(i);
				tinsert(cache, faction);
			end
			--SetDataMember("FactionDB", datas);
			return cache;
		end)();
		db.expanded = false;
		db.text = "Factions (Dynamic)";
		table.insert(g, db);
		]]--
		
		-- NPCs (Dynamic)
		--[[
		db = {};
		db.g = (function()
			local cache = GetTempDataMember("NPC_CACHE");
			if not cache then
				cache = {};
				SetTempDataMember("NPC_CACHE", cache);
				for i=1,40000,1 do
					tinsert(cache, app.CreateNPC(i));
				end
			end
			return cache;
		end)();
		db.expanded = false;
		db.text = "Non-Player Characters";
		table.insert(g, db);
		
		-- Quests (Dynamic)
		db = {};
		db.g = (function()
			local cache = GetTempDataMember("QUEST_CACHE");
			if not cache then
				cache = {};
				SetTempDataMember("QUEST_CACHE", cache);
				for i=1,40000,1 do
					tinsert(cache, app.CreateQuest(i));
				end
			end
			return cache;
		end)();
		db.expanded = false;
		db.text = "Quests";
		table.insert(g, db);
		]]--
		
		-- The Main Window's Data
		app.refreshDataForce = true;
		BuildGroups(allData, allData.g);
		app:GetWindow("Prime").data = allData;
		CacheFields(allData);
		
		-- Determine how many tierID instances could be found
		local tierCounter = 0;
		for key,value in pairs(fieldCache["tierID"]) do
			tierCounter = tierCounter + 1;
		end
		if tierCounter == 1 then
			-- Purge the Tier Objects. This is the Classic Layout style.
			for key,values in pairs(fieldCache["tierID"]) do
				for j,value in ipairs(values) do
					local parent = value.parent;
					if parent then
						-- Remove the tier object reference.
						for i=#parent.g,1,-1 do
							if parent.g[i] == value then
								table.remove(parent.g, i);
								break;
							end
						end
						
						-- Feed the children to its parent.
						if value.g then
							for i,child in ipairs(value.g) do
								child.parent = parent;
								table.insert(parent.g, child);
							end
						end
					end
				end
			end
			
			-- Wipe out the tier object cache.
			fieldCache["tierID"] = {};
		end
		
		-- Now build the hidden "Unsorted" Window's Data
		allData = {};
		allData.expanded = true;
		allData.icon = app.asset("logo_32x32");
		allData.preview = app.asset("Discord_2_128");
		allData.font = "GameFontNormalLarge";
		allData.text = L["TITLE"];
		allData.title = "Unsorted";
		allData.description = "This data hasn't been implemented yet.";
		allData.visible = true;
		allData.progress = 0;
		allData.total = 0;
		local g, db = {};
		allData.g = g;
		table.insert(app.RawData, allData);
		
		-- Never Implemented
		if app.Categories.NeverImplemented then
			db = {};
			db.expanded = false;
			db.g = app.Categories.NeverImplemented;
			db.text = "Never Implemented";
			table.insert(g, db);
		end
		
		-- Unsorted
		if app.Categories.Unsorted then
			db = {};
			db.g = app.Categories.Unsorted;
			db.expanded = false;
			db.text = "Unsorted";
			table.insert(g, db);
		end
		BuildGroups(allData, allData.g);
		app:GetWindow("Unsorted").data = allData;
		CacheFields(allData);
		
		local calculateAccessibility = function(source)
			local score = 0;
			if source.nmr then
				score = score + 10;
			end
			if source.nmc then
				score = score + 10;
			end
			if source.u then
				score = score + 1;
				if source.u < 3 then
					score = score + 100;
				elseif source.u < 4 then
					score = score + 10;
				else
					score = score + 1;
				end
			end
			return score;
		end
		local sortByAccessibility = function(a, b)
			return calculateAccessibility(a) <= calculateAccessibility(b);
		end
		local buildCategoryEntry = function(self, headers, searchResults, inst)
			local atLeastOne, header, headerType = false, self;
			for j,o in ipairs(searchResults) do
				if not o.u or o.u ~= 1 then
					atLeastOne = true;
					for key,value in pairs(o) do rawset(inst, key, value); end
					if o.parent then
						if not o.sourceQuests then
							local questID = GetRelativeValue(o, "questID");
							if questID then
								if not inst.sourceQuests then
									inst.sourceQuests = {};
								end
								if not contains(inst.sourceQuests, questID) then
									tinsert(inst.sourceQuests, questID);
								end
							else
								local sourceQuests = GetRelativeValue(o, "sourceQuests");
								if sourceQuests then
									if not inst.sourceQuests then
										inst.sourceQuests = {};
										for k,questID in ipairs(sourceQuests) do
											tinsert(inst.sourceQuests, questID);
										end
									else
										for k,questID in ipairs(sourceQuests) do
											if not contains(inst.sourceQuests, questID) then
												tinsert(inst.sourceQuests, questID);
											end
										end
									end
								end
							end
						end
						
						if GetRelativeValue(o, "isHolidayCategory") then
							headerType = "holiday";
						elseif GetRelativeValue(o, "isPromotionCategory") then
							headerType = "promo";
						elseif GetRelativeValue(o, "isPVPCategory") then
							headerType = "pvp";
						elseif GetRelativeValue(o, "isEventCategory") then
							headerType = "event";
						elseif o.parent.headerID == 0 or o.parent.headerID == -1 or o.parent.headerID == -82 or GetRelativeValue(o, "isWorldDropCategory") then
							headerType = "drop";
						elseif o.parent.key == "npcID" then
							if GetRelativeValue(o, "headerID") == -2 then
								headerType = -2;
							else
								headerType = "drop";
							end
						elseif o.parent.key == "categoryID" then
							headerType = "crafted";
						elseif not headerType then
							headerType = GetDeepestRelativeValue(o, "headerID");
						end
					end
				end
			end
			if not atLeastOne then return nil; end
			local sources, sourcesByItemID, sourcesBySpellID = {}, {}, {};
			for j,o in ipairs(searchResults) do
				local source;
				if o.itemID then
					source = sourcesByItemID[o.itemID];
					if not source then
						source = {};
						source.itemID = o.itemID;
						tinsert(sources, source);
						sourcesByItemID[o.itemID] = source;
					end
				elseif o.spellID then
					source = sourcesBySpellID[o.spellID];
					if not source then
						source = {};
						tinsert(sources, source);
						sourcesBySpellID[o.spellID] = source;
					end
				end
				if source then
					if o.requireSkill then source.requireSkill = o.requireSkill; end
					local u = GetRelativeValue(o, "u");
					if u then source.u = u; end
					local r = GetRelativeValue(o, "r");
					if r then
						source.r = r;
						if r ~= app.FactionID then
							rawset(source, "nmr", true);	-- "Not My Race"
						end
					end
					local races = GetRelativeValue(o, "races");
					if races then
						source.races = races;
						if not containsValue(races, app.RaceIndex) then
							rawset(source, "nmr", true);	-- "Not My Race"
						end
					end
					local c = GetRelativeValue(o, "c");
					if c then
						source.c = c;
						if not containsValue(c, app.ClassIndex) then
							rawset(source, "nmc", true); -- "Not My Class"
						end
					end
				end
			end
			local count = #sources;
			if count == 1 then
				for key,value in pairs(sources[1]) do
					inst[key] = value;
				end
			elseif count > 1 then
				-- Find the most accessible version of the thing.
				insertionSort(sources, sortByAccessibility);
				for key,value in pairs(sources[1]) do
					inst[key] = value;
				end
			end
			
			-- Determine the type of header to put the thing into.
			if not headerType then headerType = "drop"; end
			header = headers[headerType];
			if not header then
				if headerType == "holiday" then
					header = app.CreateNPC(-5);
				elseif headerType == "promo" then
					header = {};
					header.text = BATTLE_PET_SOURCE_8;
					header.icon = app.asset("Category_Promo");
				elseif headerType == "pvp" then
					header = {};
					header.text = PVP;
					header.icon = app.asset("Category_PvP");
				elseif headerType == "event" then
					header = {};
					header.text = BATTLE_PET_SOURCE_7;
					header.icon = app.asset("Category_Event");
				elseif headerType == "drop" then
					header = {};
					header.text = BATTLE_PET_SOURCE_1;
					header.icon = app.asset("Category_WorldDrops");
				elseif headerType == "crafted" then
					header = {};
					header.text = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM;
					header.icon = app.asset("Category_Crafting");
				elseif type(headerType) == "number" then
					header = app.CreateNPC(headerType);
				else
					print("Unhandled Header Type", headerType);
				end
				if not headers[headerType] then
					headers[headerType] = header;
					tinsert(self.g, header);
					header.parent = self;
					header.g = {};
				end
			end
			inst.parent = header;
			inst.progress = nil;
			inst.total = nil;
			inst.g = nil;
			tinsert(header.g, inst);
			return inst;
		end
		
		-- Update Achievement data.
		local function cacheAchievementData(self, categories, g)
			if g then
				for i,o in ipairs(g) do
					if o.achievementCategoryID then
						categories[o.achievementCategoryID] = o;
						if not o.g then
							o.g = {};
						else
							cacheAchievementData(self, categories, o.g);
						end
					elseif o.achievementID then
						self.achievements[o.achievementID] = o;
					end
				end
			end
		end
		local function getAchievementCategory(categories, achievementCategoryID)
			local c = categories[achievementCategoryID];
			if not c then
				c = app.CreateAchievementCategory(achievementCategoryID);
				categories[achievementCategoryID] = c;
				c.g = {};
				
				local p = getAchievementCategory(categories, c.parentCategoryID);
				if not p.g then p.g = {}; end
				table.insert(p.g, c);
				c.parent = p;
			end
			return c;
		end
		local function achievementSort(a, b)
			if a.achievementCategoryID then
				if b.achievementCategoryID then
					return a.achievementCategoryID < b.achievementCategoryID;
				end
				return true;
			elseif b.achievementCategoryID then
				return false;
			end
			if a.rank then
				if b.rank then
					if a.f then
						if b.f then
							if a.f == b.f then
								return a.rank < b.rank;
							else
								return a.f < b.f;
							end
						end
						return true;
					elseif b.f then
						return false;
					end
					return a.rank < b.rank;
				end
				return true;
			elseif b.rank then
				return false;
			end
			return sortByNameSafely(a, b);
		end;
		achievementsCategory.OnUpdate = function(self)
			local categories = {};
			categories[-1] = self;
			cacheAchievementData(self, categories, self.g);
			for i,_ in pairs(fieldCache["achievementID"]) do
				if not self.achievements[i] then
					local achievement = app.CreateAchievement(tonumber(i));
					for j,o in ipairs(_) do
						for key,value in pairs(o) do rawset(achievement, key, value); end
						if o.parent then
							achievement.sourceParent = o.parent;
							if not o.sourceQuests then
								local questID = GetRelativeValue(o, "questID");
								if questID then
									if not achievement.sourceQuests then
										achievement.sourceQuests = {};
									end
									if not contains(achievement.sourceQuests, questID) then
										tinsert(achievement.sourceQuests, questID);
									end
								else
									local sourceQuests = GetRelativeValue(o, "sourceQuests");
									if sourceQuests then
										if not achievement.sourceQuests then
											achievement.sourceQuests = {};
											for k,questID in ipairs(sourceQuests) do
												tinsert(achievement.sourceQuests, questID);
											end
										else
											for k,questID in ipairs(sourceQuests) do
												if not contains(achievement.sourceQuests, questID) then
													tinsert(achievement.sourceQuests, questID);
												end
											end
										end
									end
								end
							end
						end
					end
					self.achievements[i] = achievement;
					achievement.progress = nil;
					achievement.total = nil;
					achievement.g = nil;
					achievement.parent = getAchievementCategory(categories, achievement.parentCategoryID);
					if not achievement.u or achievement.u ~= 1 then
						tinsert(achievement.parent.g, achievement);
					end
				end
			end
			insertionSort(self.g, achievementSort, true);
		end
		achievementsCategory:OnUpdate();
		
		-- Update Battle Pet data.
		battlePetsCategory.OnUpdate = function(self)
			local petTypes = {};
			for i,petType in ipairs(self.g) do
				if petType.petTypeID and petType.key == "petTypeID" then
					petTypes[petType.petTypeID] = petType;
					if not petType.g then
						petType.g = {};
					end
				end
			end
			for i,_ in pairs(fieldCache["speciesID"]) do
				if not self.battlepets[i] then
					local battlepet = app.CreateSpecies(tonumber(i));
					for j,o in ipairs(_) do
						--[[
						if o.key == "speciesID" then
							for key,value in pairs(o) do rawset(battlepet, key, value); end
						end
						]]--
						for key,value in pairs(o) do rawset(battlepet, key, value); end
						if o.parent and not o.sourceQuests then
							local questID = GetRelativeValue(o, "questID");
							if questID then
								if not battlepet.sourceQuests then
									battlepet.sourceQuests = {};
								end
								if not contains(battlepet.sourceQuests, questID) then
									tinsert(battlepet.sourceQuests, questID);
								end
							else
								local sourceQuests = GetRelativeValue(o, "sourceQuests");
								if sourceQuests then
									if not battlepet.sourceQuests then
										battlepet.sourceQuests = {};
										for k,questID in ipairs(sourceQuests) do
											tinsert(battlepet.sourceQuests, questID);
										end
									else
										for k,questID in ipairs(sourceQuests) do
											if not contains(battlepet.sourceQuests, questID) then
												tinsert(battlepet.sourceQuests, questID);
											end
										end
									end
								end
							end
						end
					end
					self.battlepets[i] = battlepet;
					battlepet.progress = nil;
					battlepet.total = nil;
					battlepet.g = nil;
					battlepet.parent = battlepet.petTypeID and petTypes[battlepet.petTypeID] or self;
					if not battlepet.u or battlepet.u ~= 1 then
						tinsert(battlepet.parent.g, battlepet);
					end
				end
			end
			insertionSort(self.g, sortByTextSafely);
			for i,petType in pairs(petTypes) do
				insertionSort(petType.g, sortByTextSafely);
			end
		end
		battlePetsCategory:OnUpdate();
		
		-- Update Faction data.
		factionsCategory.OnUpdate = function(self)
			for i,_ in pairs(fieldCache["factionID"]) do
				if not self.factions[i] then
					local faction = app.CreateFaction(tonumber(i));
					for j,o in ipairs(_) do
						if o.key == "factionID" then
							for key,value in pairs(o) do rawset(faction, key, value); end
						end
					end
					self.factions[i] = faction;
					if not faction.u or faction.u ~= 1 then
						faction.progress = nil;
						faction.total = nil;
						faction.g = nil;
						faction.parent = self;
						tinsert(self.g, faction);
					end
				end
			end
			insertionSort(self.g, sortByTextSafely);
		end
		factionsCategory:OnUpdate();
		
		-- Update Flight Path data.
		app.CacheFlightPathData();
		flightPathsCategory.OnUpdate = function(self)
			for i,_ in pairs(fieldCache.flightPathID) do
				if not self.fps[i] then
					local fp = app.CreateFlightPath(tonumber(i));
					for j,o in ipairs(_) do
						for key,value in pairs(o) do rawset(fp, key, value); end
					end
					self.fps[i] = fp;
					if not fp.u or fp.u ~= 1 then
						fp.g = nil;
						fp.maps = nil;
						fp.parent = self;
						tinsert(self.g, fp);
					end
				end
			end
			for i,_ in pairs(ATTClassicAD.LocalizedFlightPathDB) do
				if not self.fps[i] then
					local fp = app.CreateFlightPath(tonumber(i));
					self.fps[i] = fp;
					if not _.u or _.u ~= 1 then
						fp.r = _.r;
						fp.u = _.u;
						fp.parent = self;
						tinsert(self.g, fp);
					end
				end
			end
			insertionSort(self.g, sortByTextSafely);
		end;
		flightPathsCategory:OnUpdate();
		
		-- Update Mount data.
		mountsCategory.OnUpdate = function(self)
			local headers = {};
			for i,header in ipairs(self.g) do
				if header.headerID then
					headers[header.headerID] = header;
					if not header.g then
						header.g = {};
					end
				end
			end
			for i,_ in pairs(fieldCache["spellID"]) do
				if ((_[1].f and _[1].f == 100) or (_[1].filterID and _[1].filterID == 100)) and not self.mounts[i] then
					local mount = app.CreateMount(tonumber(i));
					self.mounts[i] = buildCategoryEntry(self, headers, _, mount);
					if mount.u and mount.u < 3 then
						for j,o in ipairs(_) do
							if o.itemID and not o.u or o.u >= 3 then
								mount.u = nil;
							end
						end
					end
				end
			end
			insertionSort(self.g, sortByTextSafely);
			for i,header in pairs(headers) do
				insertionSort(header.g, sortByTextSafely);
			end
			for i=#self.g,1,-1 do
				header = self.g[i];
				if header.g and #header.g < 1 and header.headerID then
					headers[header.headerID] = nil;
					table.remove(self.g, i);
				end
			end
		end
		mountsCategory:OnUpdate();
		
		-- Update Title data.
		titlesCategory.OnUpdate = function(self)
			local headers = {};
			for i,header in ipairs(self.g) do
				if header.headerID and header.key == "headerID" then
					headers[header.headerID] = header;
					if not header.g then
						header.g = {};
					end
				end
			end
			for i,_ in pairs(fieldCache["titleID"]) do
				if not self.titles[i] then
					self.titles[i] = buildCategoryEntry(self, headers, _, app.CreateTitle(tonumber(i)));
				end
			end
			if not headers[-32] then
				local searchResults = SearchForField("headerID", -32);
				if searchResults and #searchResults > 0 then
					header = app.CreateNPC(-32);
					headers[-32] = header;
					tinsert(self.g, header);
					header.parent = self;
					header.u = searchResults[1].u;
					header.g = searchResults[1].g;
					header.ignoreSort = true;
				end
			end
			insertionSort(self.g, sortByTextSafely);
			for i,header in pairs(headers) do
				if not header.ignoreSort then
					insertionSort(header.g, sortByTextSafely);
				end
			end
			for i=#self.g,1,-1 do
				header = self.g[i];
				if header.g and #header.g < 1 and header.headerID and header.key == "headerID" then
					headers[header.headerID] = nil;
					table.remove(self.g, i);
				end
			end
		end
		titlesCategory:OnUpdate();
		
		-- Update Toy data.
		toyCategory.OnUpdate = function(self)
			local headers = {};
			for i,header in ipairs(self.g) do
				if header.headerID and header.key == "headerID" then
					headers[header.headerID] = header;
					if not header.g then
						header.g = {};
					end
				end
			end
			for i,_ in pairs(fieldCache["toyID"]) do
				if not self.toys[i] and i < 160000 then
					self.toys[i] = buildCategoryEntry(self, headers, _, app.CreateToy(tonumber(i)));
				end
			end
			insertionSort(self.g, sortByTextSafely);
			for i,header in pairs(headers) do
				insertionSort(header.g, sortByTextSafely);
			end
			for i=#self.g,1,-1 do
				header = self.g[i];
				if header.g and #header.g < 1 and header.headerID and header.key == "headerID" then
					headers[header.headerID] = nil;
					table.remove(self.g, i);
				end
			end
		end
		toyCategory:OnUpdate();
		
		-- Check for Vendors missing Coordinates
		--[[
		local searchResults = SearchForFieldContainer("creatureID");
		if searchResults then
			local missingCoordinates = {};
			for npcID,_ in pairs(searchResults) do
				for i,data in ipairs(_) do
					if not data.coords and data.parent then
						if data.parent.headerID == -2 or data.parent.headerID == -16 then 
							-- If this is a rare or vendor with no coordinates
							tinsert(missingCoordinates, npcID);
							break;
						end
					end
				end
			end
			insertionSort(missingCoordinates);
			for i,npcID in ipairs(missingCoordinates) do
				print("NPC ID " .. npcID .. " is missing coordinates.");
			end
		end
		]]--
	end
	app.GetDataCache = function()
		return app:GetWindow("Prime").data;
	end
	return allData;
end
function app:RefreshData(lazy, got, manual)
	--print("RefreshData(" .. tostring(lazy or false) .. ", " .. tostring(got or false) .. ")");
	app.refreshDataForce = app.refreshDataForce or not lazy;
	app.countdown = manual and 0 or 30;
	StartCoroutine("RefreshData", function()
		-- While the player is in combat, wait for combat to end.
		while InCombatLockdown() do coroutine.yield(); end
		
		-- Wait 1/2 second. For multiple simultaneous requests, each one will reapply the delay.
		while app.countdown > 0 do
			app.countdown = app.countdown - 1;
			coroutine.yield();
		end
		
		-- Send an Update to the Windows to Rebuild their Row Data
		if app.refreshDataForce then
			app.refreshDataForce = nil;
			app:GetDataCache();
			for i,data in ipairs(app.RawData) do
				data.progress = 0;
				data.total = 0;
				UpdateGroups(data, data.g);
			end
			
			-- Forcibly update the windows.
			app:UpdateWindows(true, got);
		else
			app:UpdateWindows(nil, got);
		end
		
		-- Send a message to your party members.
		local data = app:GetWindow("Prime").data;
		local msg = "A\t" .. app.Version .. "\t" .. (data.progress or 0) .. "\t" .. (data.total or 0);
		if app.lastMsg ~= msg then
			SendGroupMessage(msg);
			SendGuildMessage(msg);
			app.lastMsg = msg;
		end
		wipe(searchCache);
	end);
end
function app:GetWindow(suffix, parent, onUpdate)
	local window = app.Windows[suffix];
	if not window then
		-- Create the window instance.
		window = CreateFrame("FRAME", app:GetName() .. "-Window-" .. suffix, parent or UIParent, BackdropTemplateMixin and "BackdropTemplate");
		app.Windows[suffix] = window;
		window.Suffix = suffix;
		window.Toggle = ToggleWindow;
		window.Update = onUpdate or UpdateWindow;
		window.SetVisible = SetWindowVisibility;
		
		if ATTClassicSettings then
			if suffix == "Prime" then
				window:SetScale(app.Settings:GetTooltipSetting("MainListScale"));
			else
				window:SetScale(app.Settings:GetTooltipSetting("MiniListScale"));
			end
		end
		
		window:SetScript("OnMouseWheel", OnScrollBarMouseWheel);
		window:SetScript("OnMouseDown", StartMovingOrSizing);
		window:SetScript("OnMouseUp", StopMovingOrSizing);
		window:SetScript("OnHide", StopMovingOrSizing);
		window:SetBackdrop(backdrop);
		UpdateWindowColor(window, suffix);
		window:SetClampedToScreen(true);
		window:SetToplevel(true);
		window:EnableMouse(true);
		window:SetMovable(true);
		window:SetResizable(true);
		window:SetPoint("CENTER");
		window:SetMinResize(32, 32);
		window:SetSize(300, 300);
		window:SetUserPlaced(true);
		window.data = {
			['text'] = suffix,
			['icon'] = "Interface\\Icons\\Ability_Spy.blp", 
			['visible'] = true, 
			['expanded'] = true,
			['g'] = {
				{
					['text'] = "No data linked to listing.", 
					['visible'] = true
				}
			}
		};
		window:Hide();
		window.AddObject = function(self, info)
			-- Bubble Up the Maps
			local mapInfo;
			local mapID = app.CurrentMapID;
			if mapID then
				local pos = C_Map.GetPlayerMapPosition(mapID, "player");
				if pos then
					local px, py = pos:GetXY();
					info.coord = { px * 100, py * 100, mapID };
				end
				repeat
					mapInfo = C_Map.GetMapInfo(mapID);
					if mapInfo then
						info = { ["mapID"] = mapInfo.mapID, ["g"] = { info } };
						mapID = mapInfo.parentMapID
					end
				until not mapInfo or not mapID;
			end
			
			MergeObject(self.data.g, CreateObject(info));
			MergeObject(self.rawData, info);
			self:Update();
		end
		window.Clear = function(self)
			if self.rawData then
				wipe(self.rawData);
			else
				self.rawData = {};
			end
			app.SetDataMember(self.Suffix, self.rawData);
			wipe(self.data.g);
			self:Update();
		end
		local function DelayedUpdateCoroutine()
			while window.delayRemaining > 0 do
				coroutine.yield();
				window.delayRemaining = window.delayRemaining - 1;
			end
			window:Update(true);
		end
		window.DelayedUpdate = function(self)
			window.delayRemaining = 180;
			StartCoroutine(window:GetName() .. ":DelayedUpdatePreWarm", function()
				coroutine.yield();
				StartCoroutine(window:GetName() .. ":DelayedUpdate", DelayedUpdateCoroutine);
			end);
		end
		
		-- The Close Button. It's assigned as a local variable so you can change how it behaves.
		window.CloseButton = CreateFrame("Button", nil, window, "UIPanelCloseButton");
		window.CloseButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", 4, 3);
		window.CloseButton:SetScript("OnClick", HideParent);
		
		-- The Scroll Bar.
		local scrollbar = CreateFrame("Slider", nil, window, "UIPanelScrollBarTemplate");
		scrollbar:SetPoint("TOP", window.CloseButton, "BOTTOM", 0, -10);
		scrollbar:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -4, 36);
		scrollbar:SetScript("OnValueChanged", OnScrollBarValueChanged);
		scrollbar.back = scrollbar:CreateTexture(nil, "BACKGROUND");
		scrollbar.back:SetColorTexture(0,0,0,0.4)
		scrollbar.back:SetAllPoints(scrollbar);
		scrollbar:SetMinMaxValues(1, 1);
		scrollbar:SetValueStep(1);
		scrollbar.CurrentValue = 1;
		scrollbar:SetWidth(16);
		scrollbar:EnableMouseWheel(true);
		window:EnableMouseWheel(true);
		window.ScrollBar = scrollbar;
		
		-- The Corner Grip. (this isn't actually used, but it helps indicate to players that they can do something)
		local grip = window:CreateTexture(nil, "ARTWORK");
		grip:SetTexture(app.asset("grip"));
		grip:SetSize(16, 16);
		grip:SetTexCoord(0,1,0,1);
		grip:SetPoint("BOTTOMRIGHT", -5, 5);
		
		-- The Row Container. This contains all of the row frames.
		local container = CreateFrame("FRAME", nil, window);
		container:SetPoint("TOPLEFT", window, "TOPLEFT", 0, -6);
		container:SetPoint("RIGHT", scrollbar, "LEFT", 0, 0);
		container:SetPoint("BOTTOM", window, "BOTTOM", 0, 6);
		window.Container = container;
		container.rows = {};
		scrollbar:SetValue(1);
		container:Show();
		window:Update(true);
	end
	return window;
end
function app:BuildSearchResponse(groups, field, value)
	if groups then
		local t;
		for i,group in ipairs(groups) do
			local v = group[field];
			if v and (v == value or (field == "requireSkill" and app.SpellIDToSkillID[app.SpecializationSpellIDs[v] or 0] == value)) then
				if not t then t = {}; end
				tinsert(t, CloneData(group));
			elseif group.g then
				local response = app:BuildSearchResponse(group.g, field, value);
				if response then
					if not t then t = {}; end
					tinsert(t, setmetatable({g=response}, { __index = group }));
				end
			end
		end
		return t;
	end
end

-- Create the Primary Collection Window (this allows you to save the size and location)
app:GetWindow("Prime"):SetSize(425, 305);
app:GetWindow("Unsorted");
app:GetWindow("Attuned", UIParent, function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			
			-- Attunements
			local instances, instanceSelector, selectedInstance, attunements;
			instances = {
				['text'] = 'Instances',
				['icon'] = "Interface\\Icons\\Spell_Fire_Immolation",
				["description"] = "This setting allows you to change which instance's attunement data is displayed or queried for.\n\nClick this row to go back to the Attunements List.",
				['OnClick'] = function(row, button)
					self.data = attunements;
					self:Update(true);
					return true;
				end,
				['visible'] = true, 
				['expanded'] = true,
				['back'] = 1,
				['g'] = {},
				['OnUpdate'] = function(data)
					data.g = {};
					if data.options then
						for i,option in ipairs(data.options) do
							table.insert(data.g, option);
						end
					end
				end,
				['options'] = {
					app.CreateMap(250, {	-- Upper Blackrock Spire
						['icon'] = app.asset("Achievement_Boss_Overlord_Wyrmthalak"),
						['description'] = "These are players attuned to Upper Blackrock Spire.\n\nYou only need one person in your group that is attuned in order to enter the instance.",
						['questID'] = 4743,
						['visible'] = true,
						['back'] = 0.5,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							selectedInstance = row.ref;
							self:Reset();
							return true;
						end
					}),
					app.CreateMap(232, {	-- Molten Core
						['icon'] = "Interface\\Icons\\Spell_Fire_Immolation",
						['description'] = "These are players attuned to Molten Core.",
						['questID'] = 7848,
						['visible'] = true,
						["isRaid"] = true,
						['back'] = 0.5,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							selectedInstance = row.ref;
							self:Reset();
							return true;
						end
					}),
					app.CreateMap(248, {	-- Onyxia's Lair
						['icon'] = "Interface\\Icons\\INV_Misc_Head_Dragon_01",
						['description'] = "These are players attuned to Onyxia's Lair.",
						['questID'] = app.FactionID == Enum.FlightPathFaction.Horde and 6602 or 6502,
						['visible'] = true,
						["isRaid"] = true,
						['back'] = 0.5,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							selectedInstance = row.ref;
							self:Reset();
							return true;
						end
					}),
					app.CreateMap(287, {	-- Blackwing Lair
						['icon'] = "Interface\\Icons\\inv_misc_head_dragon_black",
						['description'] = "These are players attuned to Blackwing Lair.",
						['questID'] = 7761,
						['visible'] = true,
						["isRaid"] = true,
						['back'] = 0.5,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							selectedInstance = row.ref;
							self:Reset();
							return true;
						end
					}),
					app.CreateMap(162, {	-- Naxxramas
						['icon'] = "Interface\\Icons\\INV_Trinket_Naxxramas03",
						['description'] = "These are players attuned to Naxxramas.",
						['questID'] = 9378,	-- Attunement [HIDDEN QUEST TRIGGER]
						['visible'] = true,
						["isRaid"] = true,
						['back'] = 0.5,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							selectedInstance = row.ref;
							self:Reset();
							return true;
						end
					}),
					app.CreateMap(350, {	-- Karazhan
						['icon'] = "Interface\\Icons\\Ability_mount_dreadsteed",
						['description'] = "These are players attuned to Karazhan.",
						['questID'] = 9837,	-- Return to Khadgar [The Master's Key]
						['visible'] = true,
						["isRaid"] = true,
						['back'] = 0.5,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							selectedInstance = row.ref;
							self:Reset();
							return true;
						end
					}),
					app.CreateMap(332, {	-- SSC
						['icon'] = "Interface\\Icons\\inv_weapon_shortblade_42",
						['description'] = "These are players attuned to Serpentshrine Cavern.",
						['questID'] = 10901,	-- The Cudgel of Kar'desh
						['visible'] = true,
						["isRaid"] = true,
						['back'] = 0.5,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							selectedInstance = row.ref;
							self:Reset();
							return true;
						end
					}),
					app.CreateMap(334, {	-- The Eye
						['icon'] = "Interface\\Icons\\inv_misc_summerfest_brazierorange",
						['description'] = "These are players attuned to The Eye.",
						['questID'] = 10888,	-- Trial of the Naaru: Magtheridon
						['visible'] = true,
						["isRaid"] = true,
						['back'] = 0.5,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							selectedInstance = row.ref;
							self:Reset();
							return true;
						end
					}),
					app.CreateMap(329, {	-- Hyjal Summit
						['icon'] = "Interface\\Icons\\inv_weapon_bow_30",
						['description'] = "These are players attuned to Hyjal Summit.",
						['questID'] = 10445,	-- The Vials of Eternity
						['visible'] = true,
						["isRaid"] = true,
						['back'] = 0.5,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							selectedInstance = row.ref;
							self:Reset();
							return true;
						end
					}),
					app.CreateMap(340, {	-- Black Temple
						['icon'] = "Interface\\Icons\\inv_helmet_98",
						['description'] = "These are players attuned to the Black Temple.",
						['questID'] = 10985,	-- A Distraction for Akama
						['visible'] = true,
						["isRaid"] = true,
						['back'] = 0.5,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							selectedInstance = row.ref;
							self:Reset();
							return true;
						end
					}),
				},
			};
			selectedInstance = instances.options[#instances.options];
			selectedQuest = app.CreateQuest(971);
			instanceSelector = app.CreateMap(1455, {
				['visible'] = true,
				['back'] = 0.5,
				['OnUpdate'] = app.AlwaysShowUpdate,
				['OnClick'] = function(row, button)
					self.data = instances;
					self:Update(true);
					return true;
				end,
			});
			attunements = {
				['text'] = "Attunements",
				['icon'] = app.asset("Achievement_Dungeon_HEROIC_GloryoftheRaider"), 
				["description"] = "This list shows you all of the players you have encountered that are Attuned to raids.",
				['visible'] = true,
				['expanded'] = true,
				['nameToGUID'] = {},
				['back'] = 1,
				['OnUpdate'] = function(data)
					data.progress = 0;
					data.total = 0;
					data.indent = 0;
					data.back = 1;
					wipe(data.g);
					
					-- Assign the Selected Instance.
					instanceSelector.locks = nil;
					data.questID = selectedInstance.questID;
					instanceSelector.mapID = selectedInstance.mapID;
					instanceSelector.icon = selectedInstance.icon;
					instanceSelector.text = selectedInstance.text;
					instanceSelector.description = selectedInstance.description;
					instanceSelector.questID = selectedInstance.questID;
					table.insert(data.g, data.queryGroupMembers);
					table.insert(data.g, data.queryGuildMembers);
					table.insert(data.g, instanceSelector);
					table.insert(data.g, selectedQuest);
					if data.questID == 9378 then	-- Naxx Attunement needs to be handled different, display-wise.
						-- Based on current Argent Dawn rep, show a different quest. (still querying for the hidden attunement quest)
						local currentStanding = app.CreateFaction(529).standing or 6;
						local specificQuestID = (currentStanding == 8 and 9123) or (currentStanding == 7 and 9122) or 9121;
						local searchResults = SearchForField("questID", specificQuestID);
						if searchResults and #searchResults > 0 then
							wipe(selectedQuest);
							for i,questData in ipairs(searchResults) do
								if questData.questID == specificQuestID then
									for key,value in pairs(questData) do
										selectedQuest[key] = value;
									end
								end
							end
							selectedQuest.OnUpdate = app.AlwaysShowUpdate;
						end
						selectedQuest.text = "The Dread Citadel - Naxxramas";
					else
						local searchResults = SearchForField("questID", data.questID);
						if searchResults and #searchResults > 0 then
							wipe(selectedQuest);
							for i,questData in ipairs(searchResults) do
								for key,value in pairs(questData) do
									selectedQuest[key] = value;
								end
							end
							selectedQuest.OnUpdate = app.AlwaysShowUpdate;
						end
					end
					selectedQuest.questID = selectedInstance.questID;
					
					local groupMembers = {};
					local count = GetNumGroupMembers();
					if count > 0 then
						for raidIndex = 2, 40, 1 do
							local name = GetRaidRosterInfo(raidIndex);
							if name then
								local unit = app.CreateQuestUnit(name);
								local guid = unit.guid;
								if guid then data.nameToGUID[strsplit("-",name)] = guid; end
								table.insert(groupMembers, unit);
							end
						end
					end
					
					-- Sort Member List
					insertionSort(groupMembers, data.Sort);
					for i,unit in ipairs(groupMembers) do
						table.insert(data.g, unit);
					end
					
					-- Insert Guild Members
					local guildRanks = data.guildMembersHeader.g;
					if #guildRanks < 1 then
						local numRanks = GuildControlGetNumRanks();
						if numRanks > 0 then
							local tempRanks = {};
							for rankIndex = 1, numRanks, 1 do
								table.insert(tempRanks, {
									["text"] = GuildControlGetRankName(rankIndex),
									["icon"] = format("%s%02d","Interface\\PvPRankBadges\\PvPRank", (15 - rankIndex)),
									["visible"] = true,
									["g"] = {}
								});
							end
							for rankIndex = 1, min(#tempRanks, #guildRanks), 1 do
								if guildRanks[rankIndex].expanded then
									tempRanks[rankIndex].expanded = true;
								end
							end
							data.guildMembersHeader.g = tempRanks;
							guildRanks = tempRanks;
							
							local debugMode = app.Settings:Get("DebugMode");
							local count = GetNumGuildMembers();
							if count > 0 then
								for guildIndex = 1, count, 1 do
									local name, _, rankIndex, level, _, _, _, _, _, _, _, _, _, _, _, _, guid = GetGuildRosterInfo(guildIndex);
									if guid and level > 54 then
										local yearsOffline, monthsOffline, daysOffline, hoursOffline = GetGuildRosterLastOnline(guildIndex);
										if (((yearsOffline or 0) * 12) + (monthsOffline or 0)) < 3 or debugMode then
											local unit = app.CreateQuestUnit(guid);
											local name = unit.name;
											if name then data.nameToGUID[strsplit("-",name)] = guid;  end
											local a = guildRanks[rankIndex + 1];
											if a then table.insert(a.g, unit); end
										end
									end
								end
								
								local any = false;
								for rankIndex = 1, numRanks, 1 do
									if #guildRanks[rankIndex].g > 0 then
										insertionSort(guildRanks[rankIndex].g, data.Sort);
										any = true;
									end
								end
								if any then
									table.insert(data.g, data.guildMembersHeader);
								end
							end
						end
					else
						table.insert(data.g, data.guildMembersHeader);
					end
					
					-- Process Addon Messages
					local addonMessages = GetDataMember("AddonMessageProcessor");
					if addonMessages and #addonMessages > 0 then
						local unprocessedMessages = {};
						for i,message in ipairs(addonMessages) do
							local guid = data.nameToGUID[message[1]];
							if guid then
								-- Attempt to process a quest message.
								if message[2] == 'q' then
									GetDataSubMember("GroupQuestsByGUID", guid, {})[message[3]] = 1;
								else
									table.insert(unprocessedMessages, message);
								end
							end
						end
						SetDataMember("AddonMessageProcessor", unprocessedMessages);
						
					end
				end,
				['g'] = {},
				['guildMembersHeader'] = {
					['text'] = "Guild Members",
					['icon'] = "Interface\\Icons\\Ability_Warrior_BattleShout",
					['description'] = "These active characters are in your guild.\n\nOnly showing level 55+. (2 months)",
					['visible'] = true,
					['dirty'] = true,
					['g'] = {},
				},
				['queryGroupMembers'] = {
					['text'] = "Query Group Members",
					['icon'] = "Interface\\Icons\\INV_Wand_05",
					['description'] = "Press this button to send an addon message to your Group Members if they are attuned for all of these instances.",
					['visible'] = true,
					['back'] = 0.5,
					['g'] = {},
					['OnClick'] = function(row, button)
						local message = "?\tq";
						for i,instance in ipairs(instances) do
							message = message .. "\t" .. instance.questID;
						end
						SendGroupMessage(message);
						self:Reset();
						return true;
					end,
					['OnUpdate'] = function(data)
						data.visible = IsInGroup();
					end,
				},
				['queryGuildMembers'] = {
					['text'] = "Query Guild Members",
					['icon'] = "Interface\\Icons\\INV_Wand_04",
					['description'] = "Press this button to send an addon message to your Guild Members if they are attuned for all of these instances.",
					['visible'] = true,
					['back'] = 0.5,
					['g'] = {},
					['OnClick'] = function(row, button)
						local message = "?\tq";
						for i,instance in ipairs(instances.options) do
							message = message .. "\t" .. instance.questID;
						end
						SendGuildMessage(message);
						self:Reset();
						
						--[[
						local s, count = "", 0;
						for i,o in ipairs(self.data.guildMembersHeader.g) do
							for j,p in ipairs(o.g) do
								if p.guid then
									if count > 0 then
										s = s .. "\n";
									end
									s = s .. i .. "\\t" .. p.guid .. "\\t" .. p.name;
									if p.classID then
										s = s .. "\\t" .. p.classID;
									end
									count = count + 1;
								end
							end
						end
						
						app:ShowPopupDialogWithMultiLineEditBox(s);
						]]--
						return true;
					end,
					['OnUpdate'] = app.AlwaysShowUpdate,
				},
				['Sort'] = function(a, b)
					return b.text > a.text;
				end,
			};
			
			self.Reset = function()
				self.data = attunements;
				self:Update(true);
			end
			
			-- Setup Event Handlers and register for events
			self:SetScript("OnEvent", function(self, e, ...)
				self.dirty = true;
				self:Update();
			end);
			self:RegisterEvent("CHAT_MSG_SYSTEM");
			self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
			self:RegisterEvent("GROUP_ROSTER_UPDATE");
			self:Reset();
		end
		
		-- Update the groups without forcing Debug Mode.
		local visibilityFilter, groupFilter = app.VisibilityFilter, app.GroupFilter;
		app.GroupFilter = app.ObjectVisibilityFilter;
		app.VisibilityFilter = app.ObjectVisibilityFilter;
		if self.data.OnUpdate then self.data.OnUpdate(self.data, self); end
		BuildGroups(self.data, self.data.g);
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g, self); end
		end
		UpdateGroups(self.data, self.data.g);
		UpdateWindow(self, true);
		app.GroupFilter = groupFilter;
		app.VisibilityFilter = visibilityFilter;
	end
end);
app:GetWindow("CosmicInfuser", UIParent, function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			self.data = {
				['text'] = "Cosmic Infuser",
				['icon'] = app.asset("Category_Zones"), 
				["description"] = "This window helps debug when we're missing map IDs in the addon.",
				['visible'] = true, 
				['expanded'] = true,
				['g'] = {
					{
						['text'] = "Check for missing maps now!",
						['icon'] = "Interface\\Icons\\INV_Misc_Map_01",
						['description'] = "This function will check for missing mapIDs in ATT.",
						['OnClick'] = function(data, button)
							Push(self, "Rebuild", self.Rebuild);
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					},
				},
			};
			self.Rebuild = function(self)
				-- Rebuild all the datas
				local temp = self.data.g[1];
				wipe(self.data.g);
				tinsert(self.data.g, temp);
				
				-- Go through all of the possible maps
				for mapID=1,3000,1 do
					local mapInfo = C_Map.GetMapInfo(mapID);
					if mapInfo then
						local results = SearchForField("mapID", mapID);
						local mapObject = { ["mapID"] = mapID, ["collectible"] = true };
						if results and #results > 0 then
							mapObject.collected = true;
						else	
							mapObject.collected = false;
						end
						
						-- Recurse up the map chain and build the full hierarchy
						local parentMapID = mapInfo.parentMapID;
						while parentMapID do
							mapInfo = C_Map.GetMapInfo(parentMapID);
							if mapInfo then
								mapObject = { ["mapID"] = parentMapID, ["collectible"] = true, ["g"] = { mapObject } };
								parentMapID = mapInfo.parentMapID;
							else
								break;
							end
						end
						
						-- Merge it into the listing.
						MergeObject(self.data.g, CreateObject(mapObject));
					end
				end
				
				self:Update();
			end
		end
		
		-- Update the window and all of its row data
		self.data.progress = 0;
		self.data.total = 0;
		self.data.indent = 0;
		self.data.back = 1;
		BuildGroups(self.data, self.data.g);
		UpdateGroups(self.data, self.data.g);
		UpdateWindow(self, true);
	end
end);

-- Uncomment this section if you need to enable Debugger:
--[[
app:GetWindow("Debugger", UIParent, function(self)
	if not self.initialized then
		self.initialized = true;
		self.data = {
			['text'] = "Session History",
			['icon'] = app.asset("Achievement_Dungeon_GloryoftheRaider.blp"), 
			["description"] = "This keeps a visual record of all of the quests, maps, loot, and vendors that you have come into contact with since the session was started.",
			['visible'] = true, 
			['expanded'] = true,
			['back'] = 1,
			['options'] = {
				{
					['text'] = "Clear History",
					['icon'] = "Interface\\Icons\\Ability_Rogue_FeignDeath.blp", 
					["description"] = "Click this to fully clear this window.\n\nNOTE: If you click this by accident, use the dynamic Restore Buttons that this generates to reapply the data that was cleared.\n\nWARNING: If you reload the UI, the data stored in the Reload Button will be lost forever!",
					['visible'] = true,
					['count'] = 0,
					['OnClick'] = function(row, button)
						local copy = {};
						for i,o in ipairs(self.rawData) do
							tinsert(copy, o);
						end
						if #copy < 1 then
							app.print("There is nothing to clear.");
							return true;
						end
						row.ref.count = row.ref.count + 1;
						tinsert(self.data.options, {
							['text'] = "Restore Button " .. row.ref.count,
							['icon'] = "Interface\\Icons\\ability_monk_roll.blp", 
							["description"] = "Click this to restore your cleared data.\n\nNOTE: Each Restore Button houses different data.\n\nWARNING: This data will be lost forever when you reload your UI!",
							['visible'] = true,
							['data'] = copy,
							['OnClick'] = function(row, button)
								for i,info in ipairs(row.ref.data) do
									MergeObject(self.data.g, CreateObject(info));
									MergeObject(self.rawData, info);
								end
								self:Update();
								return true;
							end,
						});
						wipe(self.rawData);
						wipe(self.data.g);
						for i=#self.data.options,1,-1 do
							tinsert(self.data.g, 1, self.data.options[i]);
						end
						self:Update();
						return true;
					end,
				},
			},
			['g'] = {},
		};
		self.rawData = {};
		
		-- Setup Event Handlers and register for events
		self:SetScript("OnEvent", function(self, e, ...)
			--print(e, ...);
			if e == "VARIABLES_LOADED" then
				if not ATTClassicDebugData then
					ATTClassicDebugData = app.GetDataMember("Debugger", {});
					app.SetDataMember("Debugger", nil);
				end
				self.rawData = ATTClassicDebugData;
				self.data.g = CreateObject(self.rawData);
				for i=#self.data.options,1,-1 do
					tinsert(self.data.g, 1, self.data.options[i]);
				end
				self:Update();
			elseif e == "ZONE_CHANGED" or e == "ZONE_CHANGED_NEW_AREA" then
				-- Bubble Up the Maps
				local mapInfo, info;
				local mapID = app.CurrentMapID;
				if mapID then
					repeat
						info = { ["mapID"] = mapID, ["g"] = info and { info } or nil };
						mapInfo = C_Map.GetMapInfo(mapID);
						if mapInfo then
							mapID = mapInfo.parentMapID;
						end
					until not mapInfo or not mapID;
					
					MergeObject(self.data.g, CreateObject(info));
					MergeObject(self.rawData, info);
					self:Update();
				end
			elseif e == "MERCHANT_SHOW" or e == "MERCHANT_UPDATE" then
				C_Timer.After(0.6, function()
					local guid = UnitGUID("npc");
					local ty, zero, server_id, instance_id, zone_uid, npcID, spawn_uid;
					if guid then ty, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid); end
					if npcID then
						npcID = tonumber(npcID);
						
						-- Ignore vendor mount...
						if npcID == 62822 then
							return true;
						end
						
						local numItems = GetMerchantNumItems();
						--print("MERCHANT DETAILS", ty, npcID, numItems);
						
						local rawGroups = {};
						for i=1,numItems,1 do
							local link = GetMerchantItemLink(i);
							if link then
								local name, texture, cost, quantity, numAvailable, isPurchasable, isUsable, extendedCost = GetMerchantItemInfo(i);
								if extendedCost then
									cost = {};
									local itemCount = GetMerchantItemCostInfo(i);
									for j=1,itemCount,1 do
										local itemTexture, itemValue, itemLink = GetMerchantItemCostItem(i, j);
										if itemLink then
											-- print("  ", itemValue, itemLink, gsub(itemLink, "\124", "\124\124"));
											local m = itemLink:match("currency:(%d+)");
											if m then
												-- Parse as a CURRENCY.
												tinsert(cost, {"c", tonumber(m), itemValue});
											else
												-- Parse as an ITEM.
												tinsert(cost, {"i", tonumber(itemLink:match("item:(%d+)")), itemValue});
											end
										end
									end
								end
								
								-- Parse as an ITEM LINK.
								table.insert(rawGroups, {["itemID"] = tonumber(link:match("item:(%d+)")), ["cost"] = cost});
							end
						end
						
						local info = { [(ty == "GameObject") and "objectID" or "npcID"] = npcID };
						info.faction = UnitFactionGroup("npc");
						info.text = UnitName("npc");
						info.g = rawGroups;
						self:AddObject(info);
					end
				end);
			elseif e == "GOSSIP_SHOW" then
				local guid = UnitGUID("npc");
				if guid then
					local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid);
					if npcID then
						npcID = tonumber(npcID);
						--print("GOSSIP_SHOW", type, npcID);
						if type == "GameObject" then
							info = { ["objectID"] = npcID, ["text"] = UnitName("npc") };
						else
							info = { ["npcID"] = npcID };
							info.name = UnitName("npc");
						end
						info.faction = UnitFactionGroup("npc");
						self:AddObject(info);
					end
				end
			elseif e == "QUEST_DETAIL" then
				local questStartItemID = ...;
				local questID = GetQuestID();
				if questID == 0 then return false; end
				local npc = "questnpc";
				local guid = UnitGUID(npc);
				if not guid then
					npc = "npc";
					guid = UnitGUID(npc);
				end
				local type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid;
				if guid then type, zero, server_id, instance_id, zone_uid, npcID, spawn_uid = strsplit("-",guid); end
				-- print("QUEST_DETAIL", questStartItemID, " => Quest #", questID, type, npcID);
				
				local rawGroups = {};
				for i=1,GetNumQuestRewards(),1 do
					local link = GetQuestItemLink("reward", i);
					if link then table.insert(rawGroups, { ["itemID"] = GetItemInfoInstant(link) }); end
				end
				for i=1,GetNumQuestChoices(),1 do
					local link = GetQuestItemLink("choice", i);
					if link then table.insert(rawGroups, { ["itemID"] = GetItemInfoInstant(link) }); end
				end
				for i=1,GetNumQuestLogRewardSpells(questID),1 do
					local texture, name, isTradeskillSpell, isSpellLearned, hideSpellLearnText, isBoostSpell, garrFollowerID, genericUnlock, spellID = GetQuestLogRewardSpell(i, questID);
					if spellID then
						if isTradeskillSpell then
							table.insert(rawGroups, { ["recipeID"] = spellID, ["name"] = name });
						else
							table.insert(rawGroups, { ["spellID"] = spellID, ["name"] = name });
						end
					end
				end
				
				local info = { ["questID"] = questID, ["description"] = GetQuestText(), ["objectives"] = GetObjectiveText(), ["g"] = rawGroups };
				if questStartItemID and questStartItemID > 0 then info.itemID = questStartItemID; end
				if npcID then
					npcID = tonumber(npcID);
					if type == "GameObject" then
						info = { ["objectID"] = npcID, ["text"] = UnitName(npc), ["g"] = { info } };
					else
						info.qgs = {npcID};
						info.name = UnitName(npc);
					end
					info.faction = UnitFactionGroup(npc);
				end
				self:AddObject(info);
			elseif e == "CHAT_MSG_LOOT" then
				local msg, player, a, b, c, d, e, f, g, h, i, j, k, l = ...;
				local itemString = string.match(msg, "item[%-?%d:]+");
				if itemString then
					self:AddObject({ ["itemID"] = GetItemInfoInstant(itemString) });
				end
			end
		end);
		self:RegisterEvent("VARIABLES_LOADED");
		self:RegisterEvent("GOSSIP_SHOW");
		self:RegisterEvent("QUEST_DETAIL");
		self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
		self:RegisterEvent("ZONE_CHANGED");
		self:RegisterEvent("MERCHANT_SHOW");
		self:RegisterEvent("MERCHANT_UPDATE");
		self:RegisterEvent("CHAT_MSG_LOOT");
		--self:RegisterAllEvents();
	end
	
	-- Update the window and all of its row data
	if self.data.OnUpdate then self.data.OnUpdate(self.data); end
	for i,g in ipairs(self.data.g) do
		if g.OnUpdate then g.OnUpdate(g); end
	end
	self.data.index = 0;
	self.data.back = 1;
	self.data.indent = 0;
	BuildGroups(self.data, self.data.g);
	UpdateWindow(self, true);
end);
]]--
app:GetWindow("CurrentInstance", UIParent, function(self, force, got)
	if not self.initialized then
		self.initialized = true;
		self.openedOnLogin = false;
		self.data = app.CreateMap(946, {
			['text'] = "Mini List",
			['icon'] = "Interface\\Icons\\INV_Misc_Map06.blp", 
			["description"] = "This list contains the relevant information for your current zone.",
			['visible'] = true, 
			['expanded'] = true,
			['g'] = {
				{
					['text'] = "Update Location Now",
					['icon'] = "Interface\\Icons\\INV_Misc_Map_01",
					['description'] = "If you wish to forcibly refresh the data without changing zones, click this button now!",
					['visible'] = true,
					['OnClick'] = function(row, button)
						Push(self, "Rebuild", self.Rebuild);
						return true;
					end,
				},
			},
		});
		table.insert(app.RawData, self.data);
		self.rawData = {};
		local IsSameMap = function(data, results)
			if data.mapID then
				-- Exact same map?
				if data.mapID == results.mapID then
					return true;
				end
				
				-- Does the result map have an array of associated maps and this map is in there?
				if results.maps and contains(results.maps, data.mapID) then
					return true;
				end
			end
			if data.maps then
				-- Does the old map data contain this map?
				if contains(data.maps, results.mapID) then
					return true;
				end
				
				-- Does the result map have an array of associated maps and this map is in there?
				if results.maps and containsAny(results.maps, data.maps) then
					return true;
				end
			end
		end
		self.SetMapID = function(self, mapID)
			self.mapID = mapID;
			self:SetVisible(true);
			self:Update();
		end
		self.Rebuild = function(self)
			local results = SearchForField("mapID", self.mapID);
			if results then
				-- Simplify the returned groups
				local groups = {};
				local header = { mapID = self.mapID, g = groups };
				local achievementsHeader = app.CreateNPC(-4, { ["g"] = {} });
				table.insert(groups, achievementsHeader);
				local explorationHeader = app.CreateNPC(-15, { ["g"] = {} });
				table.insert(groups, explorationHeader);
				local factionsHeader = app.CreateNPC(-8, { ["g"] = {} });
				table.insert(groups, factionsHeader);
				local flightPathsHeader = app.CreateNPC(-6, { ["g"] = {} });
				table.insert(groups, flightPathsHeader);
				local holidaysHeader = app.CreateNPC(-5, { ["g"] = {} });
				table.insert(groups, holidaysHeader);
				local questsHeader = app.CreateNPC(-17, { ["g"] = {} });
				table.insert(groups, questsHeader);
				local raresHeader = app.CreateNPC(-16, { ["g"] = {} });
				table.insert(groups, raresHeader);
				local vendorsHeader = app.CreateNPC(-2, { ["g"] = {} });
				table.insert(groups, vendorsHeader);
				local zoneDropsHeader = app.CreateNPC(0, { ["g"] = {} });
				table.insert(groups, zoneDropsHeader);
				for i, group in ipairs(results) do
					local clone = {};
					for key,value in pairs(group) do
						if key == "maps" then
							local maps = {};
							for i,mapID in ipairs(value) do
								tinsert(maps, mapID);
							end
							clone[key] = maps;
						elseif key == "g" then
							local g = {};
							for i,o in ipairs(value) do
								o = CloneData(o);
								ExpandGroupsRecursively(o, false);
								tinsert(g, o);
							end
							clone[key] = g;
						else
							clone[key] = value;
						end
					end
					setmetatable(clone, getmetatable(group));
					
					-- If this is relative to a holiday, let's do something special
					local holidayID = GetRelativeValue(group, "holidayID");
					if holidayID or GetRelativeField(group, "headerID", -5) then
						if group.key == "headerID" then
							if GetRelativeField(group, "headerID", -2) or GetRelativeField(group, "headerID", -173) then	-- It's a Vendor. (or a timewaking vendor)
								if group.headerID ~= -2 then clone = app.CreateNPC(-2, { g = { clone } }); end
							elseif GetRelativeField(group, "headerID", -17) then	-- It's a Quest.
								if group.headerID ~= -17 then clone = app.CreateNPC(-17, { g = { clone } }); end
							end
						elseif group.key == "questID" then
							clone = app.CreateNPC(-17, { g = { clone } });
						elseif group.key == "npcID" and group.parent.headerID == -2 then
							clone = app.CreateNPC(-2, { g = { clone } });
							clone.OnTooltip = group.parent.OnTooltip;
						end
						if holidayID then clone = app.CreateHoliday(holidayID, { g = { clone } }); end
						MergeObject(holidaysHeader.g, clone);
					elseif group.key == "mapID" or group.key == "instanceID" then
						header.key = group.key;
						header[group.key] = group[group.key];
						MergeObject({header}, clone);
					elseif group.key == "npcID" then
						if GetRelativeField(group, "headerID", -2) or GetRelativeField(group, "headerID", -173) then	-- It's a Vendor. (or a timewaking vendor)
							MergeObject(vendorsHeader.g, clone, 1);
						elseif GetRelativeField(group, "headerID", -17) then	-- It's a Quest.
							MergeObject(questsHeader.g, clone, 1);
						else
							MergeObject(groups, clone);
						end
					elseif group.key == "achievementID" then
						MergeObject(achievementsHeader.g, clone);
					elseif group.key == "questID" then
						MergeObject(questsHeader.g, clone, 1);
					elseif group.key == "factionID" then
						MergeObject(factionsHeader.g, clone);
					elseif group.key == "explorationID" then
						MergeObject(explorationHeader.g, clone);
					elseif group.key == "flightPathID" then
						MergeObject(flightPathsHeader.g, clone);
					elseif group.key == "itemID" then
						if GetRelativeField(group, "headerID", 0) then
							MergeObject(zoneDropsHeader.g, clone);
						else
							local requireSkill = GetRelativeValue(group, "requireSkill");
							if requireSkill then
								clone = app.CreateProfession(requireSkill, { g = { clone } });
								MergeObject(groups, clone);
							else
								MergeObject(groups, clone);
							end
						end
					elseif group.key == "headerID" then
						if not GetRelativeValue(group, "instanceID") then
							MergeObject(groups, clone);
						end
					else
						MergeObject(groups, clone);
					end
				end
				
				-- Swap out the map data for the header.
				results = (header.key == "instanceID" and app.CreateInstance or app.CreateMap)(header.mapID, header);
				
				if IsSameMap(self.data, results) then
					ReapplyExpand(self.data.g, results.g);
				else
					ExpandGroupsRecursively(results, true);
				end
				
				for key,value in pairs(self.data) do
					self.data[key] = nil;
				end
				for key,value in pairs(results) do
					self.data[key] = value;
				end
				
				self.data.u = nil;
				self.data.mapID = self.mapID;
				setmetatable(self.data,
					self.data.classID and app.BaseCharacterClass
					or app.BaseMap);
				
				-- Move all "isRaid" entries to the top of the list.
				if results.g then
					local bottom = {};
					local top = {};
					for i=#results.g,1,-1 do
						local o = results.g[i];
						if o.key == "factionID" then
							table.remove(results.g, i);
							MergeObject(factionsHeader.g, o, 1);
						elseif o.key == "flightPathID" then
							table.remove(results.g, i);
							MergeObject(flightPathsHeader.g, o, 1);
						elseif o.key == "questID" then
							table.remove(results.g, i);
							MergeObject(questsHeader.g, o, 1);
						end
					end
					for i=#results.g,1,-1 do
						local o = results.g[i];
						if o.isRaid then
							table.remove(results.g, i);
							table.insert(top, o);
						elseif o.g and #o.g < 1 and o.key == "headerID" then
							table.remove(results.g, i);
						end
					end
					for i,o in ipairs(top) do
						table.insert(results.g, 1, o);
					end
					for i,o in ipairs(bottom) do
						table.insert(results.g, o);
					end
				end
				
				-- Check to see completion...
				BuildGroups(self.data, self.data.g);
				UpdateGroups(self.data, self.data.g);
			end
			
			-- If we don't have any map data on this area, report it to the chat window.
			if not results then
				local mapID = self.mapID;
				print("No map found for this location ", app.GetMapName(mapID), " [", mapID, "]");
				
				local mapInfo = C_Map.GetMapInfo(mapID);
				if mapInfo then
					local mapPath = mapInfo.name or ("Map ID #" .. mapID);
					mapID = mapInfo.parentMapID;
					while mapID do
						mapInfo = C_Map.GetMapInfo(mapID);
						if mapInfo then
							mapPath = (mapInfo.name or ("Map ID #" .. mapID)) .. " > " .. mapPath;
							mapID = mapInfo.parentMapID;
						else
							break;
						end
					end
					print("Path: ", mapPath);
				end
				print("Please report this to the ATT Discord! Thanks! ", app.Version);
			end
		end
		local function OpenMiniList(id, show)
			-- Determine whether or not to forcibly reshow the mini list.
			local self = app:GetWindow("CurrentInstance");
			if not self:IsVisible() then
				if app.Settings:GetTooltipSetting("Auto:MiniList") then
					if not self.openedOnLogin and not show then
						self.openedOnLogin = true;
						show = true;
					end
				else
					self.openedOnLogin = false;
				end
				if show then self:Show(); end
			else
				show = true;
			end
			if self.mapID == id then
				return; -- Haha JK BRO
			end
			
			-- Cache that we're in the current map ID.
			self.mapID = id;
			self:Update();
		end
		local function OpenMiniListForCurrentZone()
			OpenMiniList(app.GetCurrentMapID(), true);
		end
		local function RefreshLocationCoroutine()
			-- Wait for a few moments for the map to update.
			local waitTimer = 30;
			while waitTimer > 0 do
				coroutine.yield();
				waitTimer = waitTimer - 1;
			end
			
			-- While the player is in combat, wait for combat to end.
			while InCombatLockdown() do coroutine.yield(); end
			
			-- Acquire the new map ID.
			local mapID = app.GetCurrentMapID();
			while not mapID or mapID < 0 do
				coroutine.yield();
				mapID = app.GetCurrentMapID();
			end
			app.CurrentMapID = mapID;
			OpenMiniList(mapID);
		end
		local function RefreshLocation()
			if app.Settings:GetTooltipSetting("Auto:MiniList") or app:GetWindow("CurrentInstance"):IsVisible() then
				StartCoroutine("RefreshLocation", RefreshLocationCoroutine);
			end
		end
		local function ToggleMiniListForCurrentZone()
			local self = app:GetWindow("CurrentInstance");
			if self:IsVisible() then
				self:Hide();
			else
				OpenMiniListForCurrentZone();
			end
		end
		app.OpenMiniListForCurrentZone = OpenMiniListForCurrentZone;
		app.ToggleMiniListForCurrentZone = ToggleMiniListForCurrentZone;
		app.RefreshLocation = RefreshLocation;
		self:SetScript("OnEvent", function(self, e, ...)
			RefreshLocation();
		end);
		self:RegisterEvent("ZONE_CHANGED");
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
	end
	if self:IsVisible() then
		-- Update the window and all of its row data
		if self.mapID ~= self.displayedMapID then
			self.displayedMapID = self.mapID;
			self:Rebuild();
		end
		self.data.progress = 0;
		self.data.total = 0;
		self.data.back = 1;
		self.data.indent = 0;
		UpdateGroups(self.data, self.data.g);
		self.data.visible = true;
		UpdateWindow(self, true, got);
	end
end);
app:GetWindow("Dailies", UIParent, function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			self.dirty = true;
			
			-- Item Filter
			local actions = {
				['text'] = "Dailies",
				['icon'] = app.asset("Achievement_Dungeon_HEROIC_GloryoftheRaider"), 
				["description"] = "You can search the ATT Database for all Dailies.",
				['visible'] = true, 
				['expanded'] = true,
				['back'] = 1,
				['OnUpdate'] = function(data)
					if not self.dirty then return nil; end
					self.dirty = nil;
					
					local g = {};
					if not data.results then
						data.results = app:BuildSearchResponse(app:GetWindow("Prime").data.g, "isDaily", 1);
					end
					if #data.results > 0 then
						for i,result in ipairs(data.results) do
							table.insert(g, result);
						end
					end
					data.g = g;
					if #g > 0 then
						for i,entry in ipairs(g) do
							entry.indent = nil;
						end
						data.indent = 0;
						data.visible = true;
						BuildGroups(data, data.g);
						app.UpdateGroups(data, data.g);
						if not data.expanded then
							data.expanded = true;
							ExpandGroupsRecursively(data, true);
						end
					end
					
					-- Update the groups without forcing Debug Mode.
					local incompleteFilter = app.ShowIncompleteThings;
					app.ShowIncompleteThings = app.Filter;
					BuildGroups(self.data, self.data.g);
					UpdateWindow(self, true);
					app.ShowIncompleteThings = incompleteFilter;
				end,
				['g'] = {},
			};
			
			self.Reset = function()
				self.data = actions;
			end
			
			-- Setup Event Handlers and register for events
			self:SetScript("OnEvent", function(self, e, ...)
				self.dirty = true;
				self:Update();
			end);
			self:Reset();
		end
		
		-- Update the window and all of its row data
		if self.data.OnUpdate then self.data.OnUpdate(self.data, self); end
		UpdateWindow(self, true);
	end
end);
app:GetWindow("ItemFilter", UIParent, function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			self.dirty = true;
			
			-- Item Filter
			local actions = {
				['text'] = "Item Filters",
				['icon'] = app.asset("Achievement_Dungeon_HEROIC_GloryoftheRaider"), 
				["description"] = "You can search the ATT Database by using a item filter.",
				['visible'] = true, 
				['expanded'] = true,
				['back'] = 1,
				['OnUpdate'] = function(data)
					if not self.dirty then return nil; end
					self.dirty = nil;
					
					local g = {};
					table.insert(g, 1, data.setItemFilter);
					if #data.results > 0 then
						for i,result in ipairs(data.results) do
							table.insert(g, result);
						end
					end
					data.g = g;
					if #g > 0 then
						for i,entry in ipairs(g) do
							entry.indent = nil;
						end
						data.indent = 0;
						data.visible = true;
						BuildGroups(data, data.g);
						app.UpdateGroups(data, data.g);
						if not data.expanded then
							data.expanded = true;
							ExpandGroupsRecursively(data, true);
						end
					end
					
					-- Update the groups without forcing Debug Mode.
					local visibilityFilter = app.VisibilityFilter;
					app.VisibilityFilter = app.ObjectVisibilityFilter;
					BuildGroups(self.data, self.data.g);
					UpdateWindow(self, true);
					app.VisibilityFilter = visibilityFilter;
				end,
				['g'] = {},
				['results'] = {},
				['setItemFilter'] = {
					['text'] = "Set Item Filter",
					['icon'] = "Interface\\Icons\\INV_MISC_KEY_12",
					['description'] = "Click this to change the item filter you want to search for within ATT.",
					['visible'] = true,
					['OnClick'] = function(row, button)
						app:ShowPopupDialogWithEditBox("Which Item Filter would you like to search for?", "", function(text)
							text = string.lower(text);
							local f = tonumber(text);
							if tostring(f) ~= text then
								-- The string form did not match, the filter must have been by name.
								for id,filter in pairs(L["FILTER_ID_TYPES"]) do
									if string.match(string.lower(filter), text) then
										f = tonumber(id);
										break;
									end
								end
							end
							if f then
								self.data.results = app:BuildSearchResponse(app:GetWindow("Prime").data.g, "f", f);
								row.ref.f = f;
								self.dirty = true;
							end
							wipe(searchCache);
							self:Update();
						end);
						return true;
					end,
					['OnUpdate'] = app.AlwaysShowUpdate,
				},
			};
			
			self.Reset = function()
				self.data = actions;
			end
			
			-- Setup Event Handlers and register for events
			self:SetScript("OnEvent", function(self, e, ...)
				self.dirty = true;
				self:Update();
			end);
			self:Reset();
		end
		
		-- Update the window and all of its row data
		if self.data.OnUpdate then self.data.OnUpdate(self.data, self); end
		UpdateWindow(self, true);
	end
end);
app:GetWindow("ItemFinder", UIParent, function(self, ...)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			local db = {};
			db.g = {
				{
					['text'] = "Update Now",
					['icon'] = app.asset("ability_monk_roll"),
					["description"] = "Click this to update the listing. Doing so shall remove all invalid, grey, or white items.",
					['visible'] = true,
					['fails'] = 0,
					['OnClick'] = function(row, button)
						self:Update(true);
						return true;
					end,
					['OnUpdate'] = app.AlwaysShowUpdate,
				},
			};
			db.OnUpdate = function(t)
				local g = t.g;
				if g then
					local count = #g;
					if count > 0 then
						for i=count,1,-1 do
							if g[i].collected then
								table.remove(g, i);
								self.shouldFullRefresh = true;
							end
						end
					end
					for count=#g,100 do
						local i = db.currentItemID - 1;
						if i > 0 then
							db.currentItemID = i;
							local t = app.CreateItemHarvester(i);
							t.parent = db;
							tinsert(g, t);
							self.shouldFullRefresh = true;
						end
					end
					self:DelayedUpdate(true);
					self.delayRemaining = 1;
				end
			end;
			db.text = "Item Finder";
			db.icon = app.asset("Achievement_Dungeon_GloryoftheRaider");
			db.description = "This is a contribution debug tool. NOT intended to be used by the majority of the player base.\n\nUsing this tool will lag your WoW every 5 seconds. Not sure why - likely a bad Blizzard Database thing.";
			db.visible = true;
			db.expanded = true;
			db.progress = 0;
			db.total = 0;
			db.back = 1;
			db.currentItemID = 40001;
			self.data = db;
		end
		self.data.progress = 0;
		self.data.total = 0;
		UpdateGroups(self.data, self.data.g);
		UpdateWindow(self, ...);
		if self.data.OnUpdate then self.data.OnUpdate(self.data); end
	end
end);
app:GetWindow("RaidAssistant", UIParent, function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			
			-- Loot Method Switching
			local lootmethod, lootmasters, lootthreshold, raidassistant;
			lootmethod = {
				['text'] = LOOT_METHOD,
				['icon'] = "Interface\\Icons\\INV_Misc_Coin_01.blp",
				["description"] = "This setting allows you to customize what kind of loot will drop and how much.\n\nThis only works while in a party - If you're by yourself, you can create a Premade Group (just don't invite anyone) and then change it.\n\nClick this row to go back to the Raid Assistant.",
				['OnClick'] = function(row, button)
					self.data = raidassistant;
					self:Update(true);
					return true;
				end,
				['visible'] = true, 
				['expanded'] = true,
				['back'] = 1,
				['g'] = {},
				['OnUpdate'] = function(data)
					data.g = {};
					if data.options then
						for i,option in ipairs(data.options) do
							table.insert(data.g, option);
						end
					end
					for key,value in pairs(UnitLootMethod) do
						table.insert(data.g, app.CreateLootMethod(key));
					end
				end,
			};
			lootmasters = {
				['text'] = MASTER_LOOTER,
				['icon'] = "Interface\\Icons\\INV_Misc_Coin_01.blp",
				["description"] = "This setting allows you to select a new Master Looter.",
				['OnClick'] = function(row, button)
					self.data = raidassistant;
					self:Update(true);
					return true;
				end,
				['OnUpdate'] = function(data)
					data.g = {};
					local count = GetNumGroupMembers();
					if count > 0 then
						for raidIndex = 1, 40, 1 do
							local name, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML = GetRaidRosterInfo(raidIndex);
							if name then
								table.insert(data.g, app.CreateUnit(name, {
									['isML'] = isML,
									['name'] = name,
									['visible'] = true,
									['OnClick'] = function(row, button)
										SetLootMethod("master", row.ref.name);
										self:Reset();
										return true;
									end,
									['back'] = 0.5,
								}));
							end
						end
					end
				end,
				['visible'] = true, 
				['expanded'] = true,
				['back'] = 1,
				['g'] = {},
			};
			lootthreshold = {
				['text'] = "Loot Threshold",
				['icon'] = "Interface\\Icons\\INV_Misc_Coin_01.blp",
				["description"] = "Select a new loot threshold.",
				['OnClick'] = function(row, button)
					self.data = raidassistant;
					self:Update(true);
					return true;
				end,
				['visible'] = true, 
				['expanded'] = true,
				['back'] = 1,
				['g'] = {
					app.CreateLootThreshold(2),
					app.CreateLootThreshold(3),
					app.CreateLootThreshold(4)
				},
			};
			
			-- Raid Assistant
			raidassistant = {
				['text'] = "Raid Assistant",
				['icon'] = app.asset("Achievement_Dungeon_GloryoftheRaider"), 
				["description"] = "Never enter the instance with the wrong settings again! Verify that everything is as it should be!",
				['visible'] = true, 
				['expanded'] = true,
				['back'] = 1,
				['g'] = {
					app.CreateLootMethod("group", {
						['title'] = LOOT_METHOD,
						['visible'] = true,
						['OnClick'] = function(row, button)
							if UnitIsGroupLeader("player") then
								self.data = lootmethod;
								self:Update(true);
							end
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = IsInGroup();
							if data.visible then
								data.id = GetLootMethod();
							end
						end,
						['back'] = 0.5,
					}),
					app.CreateUnit("player", {
						['title'] = MASTER_LOOTER,
						["description"] = "This player is currently the Master Looter.",
						['visible'] = true,
						['isML'] = true,
						['OnClick'] = function(row, button)
							if UnitIsGroupLeader("player") then
								self.data = lootmasters;
								self:Update(true);
							end
							return true;
						end,
						['OnUpdate'] = function(data)
							if IsInGroup() then
								local lootMethod, partyIndex, raidIndex = GetLootMethod();
								if lootMethod == "master" then
									if raidIndex then
										data.unit = "raid" .. raidIndex;
									elseif partyIndex == 0 then
										data.unit = "player";
									else
										data.unit = "party" .. partyIndex;
									end
									data.text = nil;
									data.visible = true;
								else
									data.visible = false;
								end
							else
								data.visible = false;
							end
						end,
						['back'] = 0.5,
					}),
					app.CreateLootThreshold(2, {
						['title'] = LOOT_TRESHOLD,
						['visible'] = true,
						['OnClick'] = function(row, button)
							if UnitIsGroupLeader("player") then
								self.data = lootthreshold;
								self:Update(true);
							end
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = IsInGroup();
							if data.visible then
								data.id = GetLootThreshold();
							end
						end,
						['back'] = 0.5,
					}),
					{
						['text'] = "Reset Instances",
						['icon'] = app.asset("Ability_Priest_VoidShift"),
						['description'] = "Click here to reset your instances.\n\nAlt+Click to toggle automatically resetting your instances when you leave a dungeon.\n\nWARNING: BE CAREFUL WITH THIS!",
						['visible'] = true,
						['OnClick'] = function(row, button)
							if IsAltKeyDown() then
								row.ref.saved = not row.ref.saved;
								self:Update();
							else
								ResetInstances();
							end
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = not IsInGroup() or UnitIsGroupLeader("player");
							if data.visible and data.saved then
								if IsInInstance() then
									data.shouldReset = true;
								elseif data.shouldReset then
									data.shouldReset = nil;
									C_Timer.After(0.5, ResetInstances);
								end
							end
						end,
					},
					{
						['text'] = "Leave Group",
						['icon'] = "Interface\\Icons\\Ability_Vanish",
						['description'] = "Click here to leave the group. In most instances, this will also port you to the nearest graveyard after 60 seconds or so.\n\nNOTE: Only works if you're in a group or if the game thinks you're in a group.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							LeaveParty();
							self:Reset();
							UpdateWindow(self, true);
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = IsInGroup();
						end,
					},
				}
			};
			self.Reset = function()
				self.data = raidassistant;
			end
			
			-- Setup Event Handlers and register for events
			self:SetScript("OnEvent", function(self, e, ...) self:Update(); end);
			self:RegisterEvent("CHAT_MSG_SYSTEM");
			self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
			self:RegisterEvent("GROUP_ROSTER_UPDATE");
			self:Reset();
		end
		
		-- Update the window and all of its row data
		if self.data.OnUpdate then self.data.OnUpdate(self.data, self); end
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g, self); end
		end
		
		-- Update the groups without forcing Debug Mode.
		local visibilityFilter = app.VisibilityFilter;
		app.VisibilityFilter = app.ObjectVisibilityFilter;
		BuildGroups(self.data, self.data.g);
		UpdateWindow(self, true);
		app.VisibilityFilter = visibilityFilter;
	end
end);
app:GetWindow("Random", UIParent, function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			local function SearchRecursively(group, field, temp)
				if group.visible and not group.saved then
					if group.g then
						for i, subgroup in ipairs(group.g) do
							SearchRecursively(subgroup, field, temp);
						end
					end
					if group[field] then tinsert(temp, group); end
				end
			end
			local function SearchRecursivelyForEverything(group, temp)
				if group.visible and not group.saved then
					if group.g then
						for i, subgroup in ipairs(group.g) do
							SearchRecursivelyForEverything(subgroup, temp);
						end
					end
					tinsert(temp, group);
				end
			end
			local function SearchRecursivelyForValue(group, field, value, temp)
				if group.visible and not group.saved then
					if group.g then
						for i, subgroup in ipairs(group.g) do
							SearchRecursivelyForValue(subgroup, field, value, temp);
						end
					end
					if group[field] and group[field] == value then tinsert(temp, group); end
				end
			end
			function self:SelectATTC()
				if searchCache["randomatt"] then
					return searchCache["randomatt"];
				else
					local searchResults = {};
					for i, subgroup in ipairs(app:GetWindow("Prime").data.g) do
						SearchRecursivelyForEverything(subgroup, searchResults);
					end
					searchCache["randomatt"] = searchResults;
					return searchResults;
				end
			end
			function self:SelectItem()
				if searchCache["randomitem"] then
					return searchCache["randomitem"];
				else
					local searchResults, dict, temp = {}, {} , {};
					SearchRecursively(app:GetWindow("Prime").data, "itemID", searchResults);
					for i,o in pairs(searchResults) do
						if not (o.saved or o.collected) and o.collectible then
							tinsert(temp, o);
						end
					end
					searchCache["randomitem"] = temp;
					return temp;
				end
			end
			function self:SelectQuest()
				if searchCache["randomquest"] then
					return searchCache["randomquest"];
				else
					local searchResults, dict, temp = {}, {} , {};
					SearchRecursively(app:GetWindow("Prime").data, "questID", searchResults);
					for i,o in pairs(searchResults) do
						if not (o.saved or o.collected) and o.collectible then
							tinsert(temp, o);
						end
					end
					searchCache["randomquest"] = temp;
					return temp;
				end
			end
			function self:SelectInstance()
				if searchCache["randominstance"] then
					return searchCache["randominstance"];
				else
					local searchResults, dict, temp = {}, {} , {};
					SearchRecursively(app:GetWindow("Prime").data, "mapID", searchResults);
					for i,o in pairs(searchResults) do
						if not (o.saved or o.collected) and (((o.total or 0) - (o.progress or 0)) > 0) and not C_Map.GetMapInfo(o.mapID) then
							tinsert(temp, o);
						end
					end
					searchCache["randominstance"] = temp;
					return temp;
				end
			end
			function self:SelectDungeon()
				if searchCache["randomdungeon"] then
					return searchCache["randomdungeon"];
				else
					local searchResults, dict, temp = {}, {} , {};
					SearchRecursively(app:GetWindow("Prime").data, "mapID", searchResults);
					for i,o in pairs(searchResults) do
						if not (o.saved or o.collected) and not o.isRaid and (((o.total or 0) - (o.progress or 0)) > 0) and not C_Map.GetMapInfo(o.mapID) then
							tinsert(temp, o);
						end
					end
					searchCache["randomdungeon"] = temp;
					return temp;
				end
			end
			function self:SelectRaid()
				if searchCache["randomraid"] then
					return searchCache["randomraid"];
				else
					local searchResults, dict, temp = {}, {} , {};
					SearchRecursively(app:GetWindow("Prime").data, "mapID", searchResults);
					for i,o in pairs(searchResults) do
						if not (o.saved or o.collected) and o.isRaid and (((o.total or 0) - (o.progress or 0)) > 0) and not C_Map.GetMapInfo(o.mapID) then
							tinsert(temp, o);
						end
					end
					searchCache["randomraid"] = temp;
					return temp;
				end
			end
			local excludedZones = {
				947,	-- Cosmic
				1414,	-- Kalimdor
				1415,	-- Eastern Kingdoms
			};
			function self:SelectZone()
				if searchCache["randomzone"] then
					return searchCache["randomzone"];
				else
					local searchResults, dict, temp = {}, {} , {};
					SearchRecursively(app:GetWindow("Prime").data, "mapID", searchResults);
					for i,o in pairs(searchResults) do
						if not (o.saved or o.collected) and (((o.total or 0) - (o.progress or 0)) > 0) and not contains(excludedZones, o.mapID) then
							tinsert(temp, o);
						end
					end
					searchCache["randomzone"] = temp;
					return temp;
				end
			end
			local mainHeader, filterHeader;
			local rerollOption = {
				['text'] = "Reroll",
				['icon'] = app.asset("ability_monk_roll"),
				['description'] = "Click this button to reroll using the active filter.",
				['visible'] = true,
				['OnClick'] = function(row, button)
					self:Reroll();
					return true;
				end,
				['OnUpdate'] = app.AlwaysShowUpdate,
			};
			filterHeader = {
				['text'] = "Apply a Search Filter",
				['icon'] = app.asset("TRADE_ARCHAEOLOGY.blp"), 
				["description"] = "Please select a search filter option.",
				['visible'] = true,
				['expanded'] = true,
				['back'] = 1,
				['g'] = {
					setmetatable({
						['description'] = "Click this button to search... EVERYTHING.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app.SetDataMember("RandomSearchFilter", "ATTC");
							self.data = mainHeader;
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					}, { __index = function(t, key)
						if key == "text" or key == "icon" or key == "preview" or key == "texcoord" then
							return app:GetWindow("Prime").data[key];
						end
					end}),
					{
						['text'] = "Item",
						['icon'] = "Interface\\Icons\\INV_Box_02",
						['description'] = "Click this button to select a random item based on what you're missing.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app.SetDataMember("RandomSearchFilter", "Item");
							self.data = mainHeader;
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					},
					{
						['text'] = "Quest",
						['icon'] = "Interface\\GossipFrame\\AvailableQuestIcon",
						['description'] = "Click this button to select a random quest based on what you're missing.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app.SetDataMember("RandomSearchFilter", "Quest");
							self.data = mainHeader;
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					},
					{
						['text'] = "Instance",
						['icon'] = app.asset("Achievement_Dungeon_HEROIC_GloryoftheRaider"),
						['description'] = "Click this button to select a random instance based on what you're missing.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app.SetDataMember("RandomSearchFilter", "Instance");
							self.data = mainHeader;
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					},
					{
						['text'] = "Dungeon",
						['icon'] = app.asset("Achievement_Dungeon_GloryoftheHERO"),
						['description'] = "Click this button to select a random dungeon based on what you're missing.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app.SetDataMember("RandomSearchFilter", "Dungeon");
							self.data = mainHeader;
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					},
					{
						['text'] = "Raid",
						['icon'] = app.asset("Achievement_Dungeon_GloryoftheRaider"),
						['description'] = "Click this button to select a random raid based on what you're missing.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app.SetDataMember("RandomSearchFilter", "Raid");
							self.data = mainHeader;
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					},
					{
						['text'] = "Zone",
						['icon'] = "Interface\\Icons\\INV_Misc_Map_01",
						['description'] = "Click this button to select a random zone based on what you're missing.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app.SetDataMember("RandomSearchFilter", "Zone");
							self.data = mainHeader;
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					},
				},
			};
			mainHeader = {
				['text'] = "Random - Go Get 'Em!",
				['icon'] = app.asset("Ability_Rogue_RolltheBones.blp"), 
				["description"] = "This window allows you to randomly select a place or item to get. Go get 'em!",
				['visible'] = true, 
				['expanded'] = true,
				['back'] = 1,
				["indent"] = 0,
				['options'] = {
					{
						['text'] = "Change Search Filter",
						['icon'] = app.asset("TRADE_ARCHAEOLOGY.blp"), 
						["description"] = "Click this to change your search filter.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							self.data = filterHeader;
							UpdateWindow(self, true);
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					},
					rerollOption,
				},
				['g'] = { },
			};
			self.data = mainHeader;
			self.Rebuild = function(self, no)
				-- Rebuild all the datas
				wipe(self.data.g);
				
				-- Call to our method and build a list to draw from
				local method = app.GetDataMember("RandomSearchFilter", "Instance");
				if method then
					rerollOption.text = "Reroll: " .. method;
					method = "Select" .. method;
					local temp = self[method]() or {};
					local totalWeight = 0;
					for i,o in ipairs(temp) do
						totalWeight = totalWeight + ((o.total or 1) - (o.progress or 0));
					end
					if totalWeight > 0 and #temp > 0 then
						local weight, selected = math.random(totalWeight), nil;
						totalWeight = 0;
						for i,o in ipairs(temp) do
							totalWeight = totalWeight + ((o.total or 1) - (o.progress or 0));
							if weight <= totalWeight then
								selected = o;
								break;
							end
						end
						if not selected then selected = temp[#temp - 1]; end
						if selected then
							MergeObject(self.data.g, CreateObject(selected));
						else
							app.print("There was nothing to randomly select from.");
						end
					else
						app.print("There was nothing to randomly select from.");
					end
				else
					app.print("No search method specified.");
				end
				for i=#self.data.options,1,-1 do
					tinsert(self.data.g, 1, self.data.options[i]);
				end
				BuildGroups(self.data, self.data.g);
				if not no then self:Update(); end
			end
			self.Reroll = function(self)
				Push(self, "Rebuild", self.Rebuild);
			end
			for i,o in ipairs(self.data.options) do
				tinsert(self.data.g, o);
			end
			rerollOption.text = "Reroll: " .. app.GetDataMember("RandomSearchFilter", "Instance");
		end
		
		-- Update the window and all of its row data
		self.data.progress = 0;
		self.data.total = 0;
		self.data.indent = 0;
		
		-- Update the groups without forcing Debug Mode.
		local visibilityFilter = app.VisibilityFilter;
		app.VisibilityFilter = app.ObjectVisibilityFilter;
		BuildGroups(self.data, self.data.g);
		UpdateGroups(self.data, self.data.g);
		UpdateWindow(self, true);
		app.VisibilityFilter = visibilityFilter;
	end
end);
app:GetWindow("SoftReserves", UIParent, function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			self.dirty = true;
			
			-- Soft Reserves
			local softReserves = {
				['text'] = "Soft Reserves",
				['icon'] = app.asset("Achievement_Dungeon_HEROIC_GloryoftheRaider"), 
				["description"] = "The soft reservation list submitted by your raid group. This is managed through the Master Looter, should they have ATT-Classic installed. If not, this feature will not function.\n\nML: Members of your raid without ATT-Classic installed can whisper you '!sr <itemlink>' or '!sr <itemID>' to Soft Reserve an item.",
				['visible'] = true, 
				['expanded'] = true,
				['back'] = 1,
				['OnUpdate'] = function(data)
					if not self.dirty then return nil; end
					self.dirty = nil;
					
					local g = {};
					local groupMembers = {};
					groupMembers[app.GUID] = true;
					local count = GetNumGroupMembers();
					if count > 0 then
						for raidIndex = 1, 40, 1 do
							local name, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML = GetRaidRosterInfo(raidIndex);
							if name then
								local unit = app.CreateSoftReserveUnit(name);
								local guid = unit.guid;
								if guid and not groupMembers[guid]then
									groupMembers[guid] = true;
									table.insert(g, unit);
								end
							end
						end
					end
					
					-- Sort Member List
					insertionSort(g, data.Sort);
					
					-- Insert Control Methods
					table.insert(g, 1, app.CreateSoftReserveUnit(app.GUID));
					table.insert(g, 1, data.exportSoftReserves);
					table.insert(g, 1, data.queryMasterLooter);
					table.insert(g, 1, data.queryGuildMembers);
					table.insert(g, 1, data.queryGroupMembers);
					table.insert(g, 1, data.pushSoftReserve);
					table.insert(g, 1, data.pushGroupMembers);
					table.insert(g, 1, data.importPersistence);
					table.insert(g, 1, data.usePersistence);
					table.insert(g, 1, data.lockSoftReserves);
					table.insert(g, 1, data.lootMethodReminder);
					data.g = g;
					
					-- Insert Guild Members
					local guildRanks = data.guildMembersHeader.g;
					if #guildRanks < 1 then
						local numRanks = GuildControlGetNumRanks();
						if numRanks > 0 then
							local tempRanks = {};
							for rankIndex = 1, numRanks, 1 do
								table.insert(tempRanks, {
									["text"] = GuildControlGetRankName(rankIndex),
									["icon"] = format("%s%02d","Interface\\PvPRankBadges\\PvPRank", (15 - rankIndex)),
									["OnUpdate"] = app.AlwaysShowUpdate,
									["visible"] = true,
									["g"] = {}
								});
							end
							for rankIndex = 1, min(#tempRanks, #guildRanks), 1 do
								if guildRanks[rankIndex].expanded then
									tempRanks[rankIndex].expanded = true;
								end
							end
							data.guildMembersHeader.g = tempRanks;
							guildRanks = tempRanks;
							
							local debugMode = app.Settings:Get("DebugMode");
							local count = GetNumGuildMembers();
							if count > 0 then
								for guildIndex = 1, count, 1 do
									local _, _, rankIndex, _, _, _, _, _, _, _, _, _, _, _, _, _, guid = GetGuildRosterInfo(guildIndex);
									if guid then
										if not groupMembers[guid] then
											groupMembers[guid] = true;
											local yearsOffline, monthsOffline, daysOffline, hoursOffline = GetGuildRosterLastOnline(guildIndex);
											if (((yearsOffline or 0) * 12) + (monthsOffline or 0)) < 3 or debugMode then
												local a = guildRanks[rankIndex + 1];
												if a then table.insert(a.g, app.CreateSoftReserveUnit(guid)); end
											end
										end
									end
								end
								
								local any = false;
								for rankIndex = 1, numRanks, 1 do
									if #guildRanks[rankIndex].g > 0 then
										insertionSort(guildRanks[rankIndex].g, data.Sort);
										any = true;
									end
								end
								if any then
									table.insert(data.g, data.guildMembersHeader);
								end
							end
						end
					else
						table.insert(data.g, data.guildMembersHeader);
					end
				end,
				['g'] = {},
				['guildMembersHeader'] = {
					['text'] = "Guild Members",
					['icon'] = "Interface\\Icons\\Ability_Warrior_BattleShout",
					['description'] = "These active characters are in your guild.\n\nOnly showing characters logged in the last 2 months.",
					['visible'] = true,
					['g'] = {},
				},
				['exportSoftReserves'] = {
					['text'] = "Export Soft Reserves",
					['icon'] = "Interface\\Icons\\Spell_Shadow_LifeDrain02",
					['description'] = "Press this button to open an edit box containing the full content of your raid's Soft Reserve list in the format expected by the Persistence importer.\n\nYou can give this string to your raid members for them to import the full persistence list for the session.",
					['visible'] = true,
					['g'] = {},
					['OnClick'] = function(row, button)
						local s, count = "", 0;
						for i,o in ipairs(self.data.g) do
							if o.guid then
								if count > 0 then
									s = s .. "\n";
								end
								s = s .. o.guid .. "\\t" .. (o.itemID or 0) .. "\\t" .. (o.persistence or 0) .. "\\t" .. o.name .. "\\t" .. o.itemName;
								count = count + 1;
							end
						end
						
						app:ShowPopupDialogWithMultiLineEditBox(s);
						return true;
					end,
					['OnUpdate'] = function(data)
						if app.Settings:GetTooltipSetting("SoftReservesLocked") then
							data.visible = true;
						else
							data.visible = false;
						end
					end,
					['back'] = 0.5,
				},
				['lockSoftReserves'] = setmetatable({
					['text'] = "Lock All Soft Reserves",
					['icon'] = "Interface\\Icons\\INV_MISC_KEY_13",
					['description_ML'] = "Click to toggle locking the Soft Reserves. You must click this again to turn it back off.",
					['description_PLEB'] = "Your Master Looter controls whether the Soft Reserve list is locked or not.",
					['visible'] = true,
					['OnClick'] = function(row, button)
						if app.IsMasterLooter() then
							local locked = not app.Settings:GetTooltipSetting("SoftReservesLocked");
							if locked then app.PushSoftReserves(); end
							SendGroupMessage("!\tsrlock\t" .. (locked and 1 or 0));
							app.Settings:SetTooltipSetting("SoftReservesLocked", locked);
							SendGroupChatMessage(locked and "Soft Reserves locked." or "Soft Reserves unlocked.");
							wipe(searchCache);
							self:Update();
							return true;
						else
							app.print("You must be the Master Looter to lock the soft reserves.");
						end
					end,
					['OnUpdate'] = function(data)
						if IsInGroup() then
							if GetLootMethod() == "master" then
								data.visible = true;
								if app.IsMasterLooter() then
									data.description = data.description_ML;
								else
									data.description = data.description_PLEB;
								end
							else
								data.visible = app.Settings:GetTooltipSetting("SoftReservesLocked");
								data.description = data.description_PLEB;
							end
						else
							data.visible = false;
							
							-- Automatically unlock when not in a group.
							local locked = app.Settings:GetTooltipSetting("SoftReservesLocked");
							if locked then
								app.Settings:SetTooltipSetting("SoftReservesLocked", false);
								wipe(searchCache);
								self:Update();
								return true;
							end
						end
					end,
				}, {
					__index = function(t, key)
						if key == "title" then
							if t.saved then return "Locked"; end
						elseif key == "saved" then
							if app.Settings:GetTooltipSetting("SoftReservesLocked") then
								return 1;
							end
						elseif key == "trackable" then
							return true;
						else
							return table[key];
						end
					end
				}),
				['lootMethodReminder'] = app.CreateLootMethod("group", {
					['title'] = LOOT_METHOD,
					['description'] = "If you are seeing this option, you are the group leader and have not setup Master Looter yet.",
					['visible'] = true,
					['OnClick'] = function(row, button)
						SetLootMethod("master", UnitName("player"));
						self:Reset();
						return true;
					end,
					['OnUpdate'] = function(data)
						data.visible = IsInGroup() and UnitIsGroupLeader("player");
						if data.visible then
							data.id = GetLootMethod();
							data.visible = data.id ~= "master";
						end
					end,
					['back'] = 0.5,
				}),
				['nonGroupMembersHeader'] = {
					['text'] = "Non-Group Members",
					['icon'] = "Interface\\Icons\\INV_Misc_Head_Dragon_01",
					['description'] = "These are players that have Soft Reserved something in your raid, but are not currently in your group.",
					['visible'] = true,
					['g'] = {},
					['OnUpdate'] = function(data)
						data.visible = #data.g > 0 and not app.Settings:GetTooltipSetting("SoftReservesLocked");
					end,
					['back'] = 0.5,
				},
				['pushGroupMembers'] = {
					['text'] = "Push List to Group Members",
					['icon'] = "Interface\\Icons\\INV_Wand_06",
					['description'] = "Press this button to send an addon message to your group containing all of the Soft Reserves in this session.",
					['visible'] = true,
					['g'] = {},
					['OnClick'] = function(row, button)
						app.PushSoftReserves();
						return true;
					end,
					['OnUpdate'] = function(data)
						if app.IsMasterLooter() then
							data.visible = true;
						else
							data.visible = false;
						end
					end,
					['back'] = 0.5,
				},
				['pushSoftReserve'] = {
					['text'] = "Push Soft Reserve",
					['icon'] = "Interface\\Icons\\INV_Wand_06",
					['description'] = "Press this button to send an addon message containing your Soft Reserve to your group or guild.",
					['visible'] = true,
					['g'] = {},
					['OnClick'] = function(row, button)
						app.PushSoftReserve();
						return true;
					end,
					['OnUpdate'] = function(data)
						if app.Settings:GetTooltipSetting("SoftReservesLocked") or app.IsMasterLooter() then
							data.visible = false;
						else
							data.visible = true;
						end
					end,
					['back'] = 0.5,
				},
				['queryGroupMembers'] = {
					['text'] = "Query Group Members",
					['icon'] = "Interface\\Icons\\INV_Wand_05",
					['description'] = "Press this button to send an addon message to your Group Members to update their Soft Reserves.",
					['visible'] = true,
					['g'] = {},
					['OnClick'] = function(row, button)
						SendGroupMessage("?\tsr");
						self:Reset();
						return true;
					end,
					['OnUpdate'] = function(data)
						if app.Settings:GetTooltipSetting("SoftReservesLocked") then
							data.visible = false;
						elseif app.IsMasterLooter() then
							data.visible = true;
						else
							data.visible = false;
						end
					end,
					['back'] = 0.5,
				},
				['queryGuildMembers'] = {
					['text'] = "Query Guild Members",
					['icon'] = "Interface\\Icons\\INV_Wand_04",
					['description'] = "Press this button to send an addon message to your Guild Members to update their Soft Reserves.",
					['visible'] = true,
					['g'] = {},
					['OnClick'] = function(row, button)
						SendGuildMessage("?\tsr");
						self:Reset();
						return true;
					end,
					['OnUpdate'] = function(data)
						if app.Settings:GetTooltipSetting("SoftReservesLocked") then
							data.visible = false;
						elseif not IsInGroup() or app.IsMasterLooter() then
							data.visible = true;
						else
							data.visible = false;
						end
					end,
					['back'] = 0.5,
				},
				['queryMasterLooter'] = {
					['text'] = "Query Master Looter",
					['icon'] = "Interface\\Icons\\INV_Wand_06",
					['description'] = "Press this button to send an addon message to the Master Looter for a list of all the Soft Reserves in the raid.",
					['visible'] = true,
					['cooldown'] = 0,
					['g'] = {},
					['OnClick'] = function(row, button)
						SendGroupMessage("?\tsrml");
						self:Reset();
						return true;
					end,
					['OnUpdate'] = function(data)
						if not IsInGroup() or GetLootMethod() ~= "master" or app.IsMasterLooter() then
							data.visible = false;
						else
							data.visible = true;
						end
					end,
					['back'] = 0.5,
				},
				['importPersistence'] = {
					['text'] = "Import Persistence",
					['icon'] = "Interface\\Icons\\INV_MISC_KEY_12",
					['description'] = "Click this to import Persistence from a CSV document.\n\nFORMAT:\nPLAYER NAME/GUID \\t ITEM NAME/ID \\t PERSISTENCE\n\nNOTE: There's an issue with Blizzard not finding player GUIDs that aren't in your raid and items that you personally have never encountered. For best performance, import Player GUIDs, Item IDs, and Persistence values.\n\nPersistence is stored locally and not sent to your group.",
					['visible'] = true,
					['OnClick'] = function(row, button)
						app:ShowPopupDialogWithMultiLineEditBox("FORMAT: PLAYER NAME\\tITEM NAME/ID\\tPERSISTENCE\n\n", function(text)
							text = string.gsub(text, "    ", "\t");	-- The WoW UI converts tab characters into 4 spaces in the English Client.
							local u, pers, g, word, l, esc, c = "", {}, {}, "", string.len(text), false;
							for i=1,l,1 do
								c = string.sub(text, i, i);
								if c == "\\" then
									esc = true;
								elseif esc then
									esc = false;
									if c == "t" then
										c = "\t";
									elseif c == "n" or c == "r" then
										c = "\n";
									else
										-- Add back the backslash.
										word = word .. "\\";
									end
								end
								
								if c == "\t" then
									if string.len(word) > 0 then
										if #g < 1 then
											u = word;
										end
										tinsert(g, word);
										word = "";
									else
										if #g < 1 and string.len(u) > 0 then
											tinsert(g, u);
										end
									end
								elseif c == "\n" or c == "\r" then
									if string.len(word) > 0 then
										tinsert(g, word);
										word = "";
									end
									if #g > 2 then
										if not string.match(g[1], "FORMAT: ") then
											tinsert(pers, g);
										end
										g = {};
									end
								else
									word = word .. c;
								end
							end
							if string.len(word) > 0 then
								tinsert(g, word);
							end
							if #g > 2 and not string.match(g[1], "FORMAT: ") then tinsert(pers, g); end
							if #pers > 0 then
								local success = 0;
								local allpersistence, allsrs = GetDataMember("SoftReservePersistence"), GetDataMember("SoftReserves");
								for i,g in ipairs(pers) do
									local guid, itemID = app.PlayerGUIDFromInfo[g[1]], app.ParseItemID(g[2]);
									if guid and itemID then
										local persistence = rawget(allpersistence, guid);
										if not persistence then
											persistence = {};
											allpersistence[guid] = persistence;
										end
										persistence[itemID] = tonumber(g[3]);
										success = success + 1;
										-- app.print(g[1] .. ": " .. (select(2, GetItemInfo(itemID)) or g[2]) .. " [+" .. g[3] .. "]");
									else
										app.print("FAILED TO IMPORT: ", g[1], g[2], guid, itemID);
									end
								end
								if success > 0 then
									app.print("Successfully imported " .. success .. " Persistence entries.");
								end
							end
						end);
						wipe(searchCache);
						self:Update();
						return true;
					end,
					['OnUpdate'] = app.AlwaysShowUpdate,
				},
				['usePersistence'] = setmetatable({
					['text'] = "Use Persistence",
					['icon'] = "Interface\\Icons\\INV_MISC_KEY_13",
					['description_ML'] = "Click to toggle Persistence for this raid.\n\nIf Persistence is active, each member of the raid with a persistence value on their Soft Reserved item gets a +10 to the top end of their roll for each Persistence they have on the item.\n\nYou may import Persistence from a CSV document.\n\nPersistence is stored locally and not sent to your group.",
					['description_PLEB'] = "Your Master Looter controls whether Persistence is active or not.",
					['description_SOLO'] = "Click to toggle Persistence for viewing the list outside of raid.\n\nThis state will change when you join a group whose Persistence is inactive.",
					['visible'] = true,
					['OnClick'] = function(row, button)
						if app.IsMasterLooter() or not IsInGroup() then
							local persistence = not app.Settings:GetTooltipSetting("SoftReservePersistence");
							app.Settings:SetTooltipSetting("SoftReservePersistence", persistence);
							SendGroupMessage("!\tsrpersistence\t" .. (persistence and 1 or 0));
							wipe(searchCache);
							self:Update();
							return true;
						else
							app.print("You must be the Master Looter to modify Persistence.");
						end
					end,
					['OnUpdate'] = function(data)
						if IsInGroup() then
							if GetLootMethod() == "master" then
								data.visible = true;
								if app.IsMasterLooter() then
									data.description = data.description_ML;
								else
									data.description = data.description_PLEB;
								end
							else
								data.visible = app.Settings:GetTooltipSetting("SoftReservePersistence");
								data.description = data.description_PLEB;
							end
						else
							data.visible = true;
							data.description = data.description_SOLO;
						end
					end,
				}, {
					__index = function(t, key)
						if key == "title" then
							if t.saved then return "Persistence Active"; end
						elseif key == "saved" then
							if app.Settings:GetTooltipSetting("SoftReservePersistence") then
								return 1;
							end
						elseif key == "trackable" then
							return true;
						else
							return table[key];
						end
					end
				}),
				['Sort'] = function(a, b)
					return b.text > a.text;
				end,
			};
			
			self.Reset = function()
				self.data = softReserves;
			end
			self.GUIDToName = function(guid)
				local count = GetNumGroupMembers();
				if count > 0 then
					for raidIndex = 1, 40, 1 do
						local name = select(1, GetRaidRosterInfo(raidIndex));
						if name and UnitGUID(name) == guid then
							return name;
						end
					end
				end
			end
			
			-- Setup Event Handlers and register for events
			self:SetScript("OnEvent", function(self, e, ...)
				self.dirty = true;
				self:Update();
			end);
			self:RegisterEvent("CHAT_MSG_SYSTEM");
			self:RegisterEvent("GROUP_ROSTER_UPDATE");
			self:RegisterEvent("PARTY_LOOT_METHOD_CHANGED");
			self:Reset();
		end
		
		-- Update the window and all of its row data
		if self.data.OnUpdate then self.data.OnUpdate(self.data, self); end
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g, self); end
		end
		
		-- Update the groups without forcing Debug Mode.
		local visibilityFilter = app.VisibilityFilter;
		app.VisibilityFilter = app.ObjectVisibilityFilter;
		BuildGroups(self.data, self.data.g);
		UpdateWindow(self, true);
		app.VisibilityFilter = visibilityFilter;
	end
end);
app:GetWindow("Sync", UIParent, function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			
			local function OnClickForCharacter(row, button)
				if button == "RightButton" then
					if IsAltKeyDown() then
						local character = ATTCharacterData[row.ref.datalink];
						if character then character.ignored = not character.ignored; end
						self:Reset();
					else
						app:ShowPopupDialog("CHARACTER DATA: " .. (row.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
						function()
							ATTCharacterData[row.ref.datalink] = nil;
							app:RecalculateAccountWideData();
							self:Reset();
						end);
					end
				elseif button == "LeftButton" then
					local character = ATTCharacterData[row.ref.datalink];
					if character then 
						local msg = "?\tsyncsumchar\t" .. row.ref.datalink .. ":" .. character.lastPlayed;
						for playerName,allowed in pairs(ATTClassicAD.LinkedAccounts) do
							if allowed and not string.find(playerName, "#") then
								C_ChatInfo.SendAddonMessage("ATTC", msg, "WHISPER", playerName);
							end
						end
					end
				end
				return true;
			end
			local function OnClickForLinkedAccount(row, button)
				if button == "RightButton" then
					app:ShowPopupDialog("LINKED ACCOUNT: " .. (row.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
					function()
						ATTClassicAD.LinkedAccounts[row.ref.datalink] = nil;
						app:SynchronizeWithPlayer(row.ref.datalink);
						self:Reset();
					end);
				end
				return true;
			end
			local function OnTooltipForCharacter(t)
				local character = ATTCharacterData[t.unit];
				if character then
					local total = 0;
					for i,field in ipairs({ "Achievements", "BattlePets", "Exploration", "Factions", "FlightPaths", "Spells", "Titles", "Toys", "Quests" }) do
						local values = character[field];
						if values then
							local subtotal = 0;
							for key,value in pairs(values) do
								if value then
									subtotal = subtotal + 1;
								end
							end
							total = total + subtotal;
							GameTooltip:AddDoubleLine(field, tostring(subtotal), 1, 1, 1);
						end
					end
					GameTooltip:AddLine(" ", 1, 1, 1);
					GameTooltip:AddDoubleLine("Total", tostring(total), 0.8, 0.8, 1);
					GameTooltip:AddLine("Left Click to Sync this Character", 0.8, 1, 0.8);
					GameTooltip:AddLine("Right Click to Delete this Character", 1, 0.8, 0.8);
					if character.ignored then
						GameTooltip:AddLine("Alt-Right Click to Unignore this Character", 1, 0.8, 0.8);
						GameTooltip:AddLine(" ");
						GameTooltip:AddLine("Ignored Characters will not appear in the tooltip when using 'Show Other Characters' nor will they be sync'd with your other accounts. Characters from other accounts that are ignored on your current account will still receive updates from your other accounts.", 1, 1, 1, true);
					else
						GameTooltip:AddLine("Alt-Right Click to Ignore this Character", 1, 0.8, 0.8);
					end
				end
			end
			local function OnTooltipForLinkedAccount(t)
				if t.unit then
					GameTooltip:AddLine("This character's account will be synchronized with automatically when they log in. For optimal play, you should whitelist a bank character and probably not your main as to not affect your ability to play your character when syncing account data.", 0.8, 0.8, 1, true);
					GameTooltip:AddLine("Right Click to Delete this Linked Character", 1, 0.8, 0.8);
				else
					GameTooltip:AddLine("Right Click to Delete this Linked Account", 1, 0.8, 0.8);
				end
			end
			
			local syncHeader;
			syncHeader = {
				['text'] = "Account Management",
				['icon'] = app.asset("Achievement_Dungeon_HEROIC_GloryoftheRaider"), 
				["description"] = "This list shows you all of the functionality related to syncing account data.",
				['visible'] = true,
				['expanded'] = true,
				['back'] = 1,
				['OnUpdate'] = app.AlwaysShowUpdate,
				['g'] = {
					{
						['text'] = "Add Linked Character / Account",
						['icon'] = app.asset("Ability_Priest_VoidShift"),
						['description'] = "Click here to link a character or account to your account.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app:ShowPopupDialogWithEditBox("Please type the name of the character or BNET account to link to.", "", function(cmd)
								if cmd and cmd ~= "" then
									ATTClassicAD.LinkedAccounts[cmd] = true;
									
									self:Reset();
								end
							end);
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					},
					-- Characters Section
					{
						['text'] = "Characters",
						['icon'] = "Interface\\FriendsFrame\\Battlenet-Portrait",
						["description"] = "This shows all of the characters on your account.",
						['OnUpdate'] = function(data)
							data.g = {};
							for guid,character in pairs(ATTCharacterData) do
								if character then
									table.insert(data.g, app.CreateUnit(guid, {
										['datalink'] = guid,
										['OnClick'] = OnClickForCharacter,
										['OnTooltip'] = OnTooltipForCharacter,
										['OnUpdate'] = app.AlwaysShowUpdate,
										["saved"] = not character.ignored,
										["trackable"] = true,
										['visible'] = true,
									}));
								end
							end
							
							if #data.g < 1 then
								table.insert(data.g, {
									['text'] = "No characters found.",
									['icon'] = "Interface\\FriendsFrame\\Battlenet-Portrait",
									['visible'] = true,
								});
							end
							insertionSort(data.g, syncHeader.Sort);
							BuildGroups(data, data.g);
							return app.AlwaysShowUpdate(data);
						end,
						['visible'] = true, 
						['expanded'] = true,
						['g'] = {},
					},
					
					-- Linked Accounts Section
					{
						['text'] = "Linked Accounts",
						['icon'] = "Interface\\FriendsFrame\\Battlenet-Portrait",
						["description"] = "This shows all of the linked accounts you have defined so far.",
						['OnUpdate'] = function(data)
							data.g = {};
							local charactersByName = {};
							for guid,character in pairs(ATTCharacterData) do
								if character.name then
									charactersByName[character.name] = character;
								end
							end
							
							for playerName,allowed in pairs(ATTClassicAD.LinkedAccounts) do
								local character = charactersByName[playerName];
								if character then
									table.insert(data.g, app.CreateUnit(playerName, {
										['datalink'] = playerName,
										['OnClick'] = OnClickForLinkedAccount,
										['OnTooltip'] = OnTooltipForLinkedAccount,
										['OnUpdate'] = app.AlwaysShowUpdate,
										['visible'] = true,
									}));
								elseif string.find("#", playerName) then
									-- Garbage click handler for unsync'd account data.
									table.insert(data.g, {
										['text'] = playerName,
										['datalink'] = playerName,
										['icon'] = "Interface\\FriendsFrame\\Battlenet-Portrait",
										['OnClick'] = OnClickForLinkedAccount,
										['OnTooltip'] = OnTooltipForLinkedAccount,
										['OnUpdate'] = app.AlwaysShowUpdate,
										['visible'] = true,
									});
								else
									-- Garbage click handler for unsync'd character data.
									table.insert(data.g, {
										['text'] = playerName,
										['datalink'] = playerName,
										['icon'] = "Interface\\FriendsFrame\\Battlenet-WoWicon",
										['OnClick'] = OnClickForLinkedAccount,
										['OnTooltip'] = OnTooltipForLinkedAccount,
										['OnUpdate'] = app.AlwaysShowUpdate,
										['visible'] = true,
									});
								end
							end
							
							if #data.g < 1 then
								table.insert(data.g, {
									['text'] = "No linked accounts found.",
									['icon'] = "Interface\\FriendsFrame\\Battlenet-Portrait",
									['visible'] = true,
								});
							end
							BuildGroups(data, data.g);
							return app.AlwaysShowUpdate(data);
						end,
						['visible'] = true, 
						['expanded'] = true,
						['g'] = {},
					},
				},
				['Sort'] = function(a, b)
					return b.text > a.text;
				end,
			};
			
			self.Reset = function()
				self.data = syncHeader;
				self:Update(true);
			end
			self:Reset();
		end
		
		-- Update the groups without forcing Debug Mode.
		local visibilityFilter, groupFilter = app.VisibilityFilter, app.GroupFilter;
		app.GroupFilter = app.ObjectVisibilityFilter;
		app.VisibilityFilter = app.ObjectVisibilityFilter;
		if self.data.OnUpdate then self.data.OnUpdate(self.data, self); end
		BuildGroups(self.data, self.data.g);
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g, self); end
		end
		UpdateGroups(self.data, self.data.g);
		UpdateWindow(self, true);
		app.GroupFilter = groupFilter;
		app.VisibilityFilter = visibilityFilter;
	end
end);
app:GetWindow("Tradeskills", UIParent, function(self, ...)
	if not self.initialized then
		self.initialized = true;
		self:SetMovable(false);
		self:SetUserPlaced(false);
		self:SetClampedToScreen(false);
		self:RegisterEvent("CRAFT_SHOW");
		self:RegisterEvent("CRAFT_UPDATE");
		self:RegisterEvent("CRAFT_CLOSE");
		self:RegisterEvent("TRADE_SKILL_SHOW");
		self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
		self:RegisterEvent("TRADE_SKILL_CLOSE");
		self:RegisterEvent("LEARNED_SPELL_IN_TAB");
		self:RegisterEvent("NEW_RECIPE_LEARNED");
		self:RegisterEvent("SKILL_LINES_CHANGED");
		self.wait = 5;
		self.cache = {};
		self.header = {
			['text'] = "Profession List",
			['icon'] = "Interface\\Icons\\INV_Scroll_04", 
			["description"] = "Open your professions to cache them.",
			['visible'] = true, 
			['expanded'] = true,
			["indent"] = 0,
			['back'] = 1,
			['g'] = { },
		};
		self.data = self.header;
		self.previousCraftSkillID = 0;
		self.previousTradeSkillID = 0;
		self.CacheRecipes = function(self)
			-- Cache Learned Spells
			local skillCache = fieldCache["spellID"];
			if skillCache then
				-- Cache learned recipes and reagents
				local reagentCache = app.GetDataMember("Reagents", {});
				local learned, craftSkillID, tradeSkillID = 0, 0, 0;
				rawset(app.SpellNameToSpellID, 0, nil);
				app.GetSpellName(0);
				
				if CraftFrame and CraftFrame:IsVisible() then
					-- Crafting Skills (Enchanting and Beast Training Only)
					local craftSkillName, craftSkillLevel, craftSkillMaxLevel = GetCraftDisplaySkillLine();
					if craftSkillName and craftSkillName ~= "UNKNOWN" then
						local shouldShowSpellRanks = craftSkillLevel and craftSkillLevel ~= math.max(300, craftSkillMaxLevel);
						craftSkillID = app.SpellNameToSpellID[craftSkillName] or 0;
						if craftSkillID == 0 then
							app.print("Could not find spellID for", craftSkillName, GetLocale(), "! Please report this to the ATT Discord!");
						end
					elseif CraftFrameTitleText then
						craftSkillName = CraftFrameTitleText:GetText();
						craftSkillID = app.SpellNameToSpellID[craftSkillName] or 0;
						if craftSkillID == 0 then
							app.print("Could not find spellID for", craftSkillName, GetLocale(), "! Please report this to the ATT Discord!");
						end
					else
						craftSkillID = 0;
					end
				end
				
				if TradeSkillFrame and TradeSkillFrame:IsVisible() then
					-- Trade Skills (Non-Enchanting)
					local tradeSkillName, tradeSkillLevel, tradeSkillMaxLevel = GetTradeSkillLine();
					if tradeSkillName and tradeSkillName ~= "UNKNOWN" then
						local shouldShowSpellRanks = tradeSkillLevel and tradeSkillLevel ~= math.max(300, tradeSkillMaxLevel);
						tradeSkillID = app.SpellNameToSpellID[tradeSkillName] or 0;
						if tradeSkillID == 2656 then	-- Smelting, point this to Mining.
							tradeSkillID = 2575;
						elseif tradeSkillID == 0 then
							app.print("Could not find spellID for", tradeSkillName, GetLocale(), "! Please report this to the ATT Discord!");
						end
					else
						tradeSkillID = 0;
					end
				end
				
				if Skillet and Skillet.currentTrade and tradeSkillID == 0 and craftSkillID == 0 then
					if Skillet.isCraft then
						craftSkillID = Skillet.currentTrade;
					else
						tradeSkillID = Skillet.currentTrade;
					end
				end
				
				if craftSkillID ~= 0 then
					local spellName = GetSpellInfo(craftSkillID);
					for _,spellID in pairs(app.SkillIDToSpellID) do
						if GetSpellInfo(spellID) == spellName then
							craftSkillID = spellID;
							break;
						end
					end
					
					local numberOfCrafts, spellID = GetNumCrafts();
					for craftIndex = 1,numberOfCrafts do
						spellID = 0;
						local craftName, craftSubSpellName, craftType, numAvailable, isExpanded, trainingPointCost, requiredLevel = GetCraftInfo(craftIndex);
						if craftType == "optimal" or craftType == "medium" or craftType == "easy" or craftType == "trivial" or craftType == "used" or craftType == "none" then
							spellID = craftSubSpellName and (select(7, GetSpellInfo(craftName, craftSubSpellName)) or app.SpellNameToSpellID[craftName .. " (" .. craftSubSpellName .. ")"]) or app.SpellNameToSpellID[craftName];
							if spellID then
								if spellID == 44153 then spellID = 44155;	-- Fix the Flying Machine spellID.
								elseif spellID == 44151 then spellID = 44157;	-- Fix the Turbo Flying Machine spellID.
								elseif spellID == 20583 then spellID = 24492; end 	-- Fix rank 1 Nature Resistance.
								app.CurrentCharacter.SpellRanks[spellID] = shouldShowSpellRanks and app.CraftTypeToCraftTypeID(craftType) or nil;
								app.CurrentCharacter.Spells[spellID] = 1;
								if not ATTAccountWideData.Spells[spellID] then
									ATTAccountWideData.Spells[spellID] = 1;
									learned = learned + 1;
								end
								if not skillCache[spellID] then
									app.print("Missing " .. craftName .. " (Spell ID #" .. spellID .. ") in ATT Database. Please report it!");
									skillCache[spellID] = { {} };
								end
							else
								app.print("Missing " .. craftName .. " spellID in ATT Database. Please report it!");
							end
							
							if craftType ~= "none" then
								-- Attempt to harvest the item associated with this craft.
								GameTooltip.SetCraftSpell(NPCHarvester, craftIndex);
								local link, craftedItemID = select(2, NPCHarvester:GetItem());
								if link then craftedItemID = GetItemInfoInstant(link); end
								
								-- Cache the Reagents used to make this item.
								for i=1,GetCraftNumReagents(craftIndex) do
									local itemID = GetItemInfoInstant(GetCraftReagentItemLink(craftIndex, i));
									if itemID then
										-- Make sure a cache table exists for this item.
										local _, _, reagentCount = GetCraftReagentInfo(craftIndex, i);
										if not reagentCache[itemID] then reagentCache[itemID] = { {}, {} }; end
										
										-- Index 1: The Recipe Skill IDs
										if spellID then reagentCache[itemID][1][spellID] = reagentCount; end
										
										-- Index 2: The Crafted Item IDs
										if craftedItemID then reagentCache[itemID][2][craftedItemID] = reagentCount; end
									end
								end
							end
						end
					end
				end
				
				if tradeSkillID ~= 0 then
					local spellName = GetSpellInfo(tradeSkillID);
					for _,spellID in pairs(app.SkillIDToSpellID) do
						if GetSpellInfo(spellID) == spellName then
							tradeSkillID = spellID;
							break;
						end
					end
					local numTradeSkills = GetNumTradeSkills();
					for skillIndex = 1,numTradeSkills do
						local skillName, skillType, numAvailable, isExpanded = GetTradeSkillInfo(skillIndex);
						if skillType == "optimal" or skillType == "medium" or skillType == "easy" or skillType == "trivial" or skillType == "used" or skillType == "none" then
							local spellID = app.SpellNameToSpellID[skillName];
							if spellID then
								if spellID == 44153 then spellID = 44155;	-- Fix the Flying Machine spellID.
								elseif spellID == 44151 then spellID = 44157;	-- Fix the Turbo Flying Machine spellID.
								elseif spellID == 20583 then spellID = 24492; end 	-- Fix rank 1 Nature Resistance.
								app.CurrentCharacter.SpellRanks[spellID] = shouldShowSpellRanks and app.CraftTypeToCraftTypeID(skillType) or nil;
								app.CurrentCharacter.Spells[spellID] = 1;
								if not ATTAccountWideData.Spells[spellID] then
									ATTAccountWideData.Spells[spellID] = 1;
									learned = learned + 1;
								end
								if not skillCache[spellID] then
									app.print("Missing " .. (skillName or "[??]") .. " (Spell ID #" .. spellID .. ") in ATT Database. Please report it!");
									skillCache[spellID] = { {} };
								end
							else
								app.print("Missing " .. (skillName or "[??]") .. " spellID in ATT Database. Please report it!");
							end
							
							-- Cache the Reagents used to make this item.
							local craftedItemID = GetItemInfoInstant(GetTradeSkillItemLink(skillIndex));
							for i=1,GetTradeSkillNumReagents(skillIndex) do
								local reagentCount = select(3, GetTradeSkillReagentInfo(skillIndex, i));
								local itemID = GetItemInfoInstant(GetTradeSkillReagentItemLink(skillIndex, i));
								
								-- Make sure a cache table exists for this item.
								-- Index 1: The Recipe Skill IDs
								-- Index 2: The Crafted Item IDs
								if not reagentCache[itemID] then reagentCache[itemID] = { {}, {} }; end
								if spellID then reagentCache[itemID][1][spellID] = reagentCount; end
								if craftedItemID then reagentCache[itemID][2][craftedItemID] = reagentCount; end
							end
						end
					end
				end
				
				-- Open the Tradeskill list for this Profession
				if app.Categories.Professions and (craftSkillID ~= 0 or tradeSkillID ~= 0) and (craftSkillID ~= self.previousCraftSkillID or tradeSkillID ~= self.previousTradeSkillID) then
					self.previousCraftSkillID = craftSkillID;
					self.previousTradeSkillID = tradeSkillID;
					local g = {};
					for i,group in ipairs(app.Categories.Professions) do
						if group.spellID == craftSkillID or group.spellID == tradeSkillID then
							local cache = self.cache[group.spellID];
							if not cache then
								cache = CloneData(group);
								self.cache[group.spellID] = cache;
								local searchResults = ResolveSymbolicLink(group);
								if searchResults and #searchResults then
									for j,o in ipairs(searchResults) do
										tinsert(cache.g, o);
									end
								end
							end
							table.insert(g, cache);
						end
					end
					if #g > 0 then
						if #g == 1 then
							self.data = g[1];
						else
							self.data = self.header;
							self.data.g = g;
							for i,entry in ipairs(g) do
								entry.indent = nil;
							end
						end
						self.data.indent = 0;
						self.data.visible = true;
						BuildGroups(self.data, self.data.g);
						app.UpdateGroups(self.data, self.data.g);
						if not self.data.expanded then
							self.data.expanded = true;
							ExpandGroupsRecursively(self.data, true);
						end
						self:Update();
					end
				end
			
				-- If something new was "learned", then refresh the data.
				if learned > 0 then
					app:RefreshData(false, true);
					app.print("Cached " .. learned .. " known recipes!");
					wipe(searchCache);
				end
			end
		end
		self.RefreshRecipes = function(self)
			if app.CollectibleRecipes then
				self.wait = 5;
				StartCoroutine("RefreshingRecipes", function()
					while self.wait > 0 do
						self.wait = self.wait - 1;
						coroutine.yield();
					end
					while not self:IsVisible() do
						coroutine.yield();
					end
					self:CacheRecipes();
					self:Update();
					wipe(searchCache);
				end);
			end
		end
		
		-- Skillet support.
		self.SkilletSupported = nil;
		
		-- TSM Shenanigans
		self.TSMCraftingVisible = nil;
		self.SetTSMCraftingVisible = function(self, visible)
			visible = not not visible;
			if visible == self.TSMCraftingVisible then
				return;
			end
			self.TSMCraftingVisible = visible;
			self:UpdateFrameVisibility();
			StartCoroutine("UpdateTradeSkills", function()
				while InCombatLockdown() do coroutine.yield(); end
				coroutine.yield();
				self:Update();
			end);
		end
		self.UpdateDefaultFrameVisibility = function(self)
			-- Skillet compatibility
			if SkilletFrame then
				if not self.SkilletSupported then
					Skillet["ATTC"] = { ["Update"] = function() self:Update(); end };
					Skillet:RegisterUpdatePlugin("ATTC");
					self.SkilletSupported = true;
				end
				self:SetParent(SkilletFrame);
				self:SetPoint("TOPLEFT", SkilletFrame, "TOPRIGHT", 0, 0);
				self:SetPoint("BOTTOMLEFT", SkilletFrame, "BOTTOMRIGHT", 0, 0);
				self:SetMovable(false);
				return true;
			elseif CraftFrame and CraftFrame:IsVisible() then
				-- Default Alignment on the Craft UI.
				self:ClearAllPoints();
				self:SetPoint("TOPLEFT", CraftFrame, "TOPRIGHT", -37, -11);
				self:SetPoint("BOTTOMLEFT", CraftFrame, "BOTTOMRIGHT", -37, 72);
				self:SetMovable(false);
				return true;
			elseif TradeSkillFrame and TradeSkillFrame:IsVisible() then
				-- Default Alignment on the TradeSkill UI.
				self:ClearAllPoints();
				self:SetPoint("TOPLEFT", TradeSkillFrame, "TOPRIGHT", -37, -11);
				self:SetPoint("BOTTOMLEFT", TradeSkillFrame, "BOTTOMRIGHT", -37, 72);
				self:SetMovable(false);
				return true;
			end
		end
		self.UpdateFrameVisibility = function(self)
			self:SetMovable(true);
			self:ClearAllPoints();
			if self.TSMCraftingVisible and self.cachedTSMFrame then
				if self.cachedTSMFrame.queue and self.cachedTSMFrame.queue:IsShown() then
					self:SetPoint("TOPLEFT", self.cachedTSMFrame.queue, "TOPRIGHT", 0, 0);
					self:SetPoint("BOTTOMLEFT", self.cachedTSMFrame.queue, "BOTTOMRIGHT", 0, 0);
				else
					self:SetPoint("TOPLEFT", self.cachedTSMFrame, "TOPRIGHT", 0, 0);
					self:SetPoint("BOTTOMLEFT", self.cachedTSMFrame, "BOTTOMRIGHT", 0, 0);
				end
				self:SetMovable(false);
				return true;
			elseif self:UpdateDefaultFrameVisibility() then
				return true;
			else
				self:SetMovable(false);
				StartCoroutine("TSMWHY", function()
					while InCombatLockdown() or not TradeSkillFrame do coroutine.yield(); end
					StartCoroutine("TSMWHYPT2", function()
						local thing = self.TSMCraftingVisible;
						self.TSMCraftingVisible = nil;
						self:SetTSMCraftingVisible(thing);
					end);
				end);
			end
		end
		-- Setup Event Handlers and register for events
		self:SetScript("OnEvent", function(self, e, ...)
			if e == "TRADE_SKILL_LIST_UPDATE" or e == "SKILL_LINES_CHANGED" then
				self:Update();
			elseif e == "TRADE_SKILL_SHOW" or e == "CRAFT_SHOW" then
				if self.TSMCraftingVisible == nil then
					self:SetTSMCraftingVisible(false);
				end
				self:UpdateFrameVisibility();
				if app.Settings:GetTooltipSetting("Auto:ProfessionList") then
					self:SetVisible(true);
				end
				RefreshSkills();
				self:RefreshRecipes();
			elseif e == "NEW_RECIPE_LEARNED" or e == "LEARNED_SPELL_IN_TAB" then
				local spellID = ...;
				if spellID then
					local previousState = ATTAccountWideData.Spells[spellID];
					ATTAccountWideData.Spells[spellID] = 1;
					if not app.CurrentCharacter.Spells[spellID] then
						app.CurrentCharacter.Spells[spellID] = 1;
						app:RefreshData(true, true);
						if not previousState or not app.Settings:Get("AccountWide:Recipes") then
							app:PlayFanfare();
						end
					end
					self:RefreshRecipes();
				end
			elseif e == "TRADE_SKILL_CLOSE" or e == "CRAFT_CLOSE" then
				StartCoroutine("TSMWHY3", function()
					self:RefreshRecipes();
					if not self:UpdateFrameVisibility() then
						self:SetVisible(false);
					end
				end);
			end
		end);
		return;
	end
	if self:IsVisible() then
		if TSM_API and TSMAPI_FOUR then
			if not self.cachedTSMFrame then
				for i,f in ipairs({UIParent:GetChildren()}) do
					if f.headerBgCenter then
						self.cachedTSMFrame = f;
						local oldSetVisible = f.SetVisible;
						local oldShow = f.Show;
						local oldHide = f.Hide;
						f.SetVisible = function(s, visible)
							oldSetVisible(s, visible);
							self:SetTSMCraftingVisible(visible);
						end
						f.Hide = function(s)
							oldHide(s);
							self:SetTSMCraftingVisible(false);
						end
						f.Show = function(s)
							oldShow(s);
							self:SetTSMCraftingVisible(true);
						end
						if self.gettinMadAtDumbNamingConventions then
							TSMAPI_FOUR.UI.NewElement = self.OldNewElement;
							self.gettinMadAtDumbNamingConventions = nil;
							self.OldNewElement = nil;
						end
						self:SetTSMCraftingVisible(f:IsShown());
						return;
					end
				end
				if not self.gettinMadAtDumbNamingConventions then
					self.gettinMadAtDumbNamingConventions = true;
					self.OldNewElement = TSMAPI_FOUR.UI.NewElement;
					TSMAPI_FOUR.UI.NewElement = function(...)
						StartCoroutine("UpdateTradeSkills", function()
							while InCombatLockdown() do coroutine.yield(); end
							coroutine.yield();
							self:Update();
						end);
						return self.OldNewElement(...);
					end
				end
			end
		elseif TSMCraftingTradeSkillFrame then
			if not self.cachedTSMFrame then
				local f = TSMCraftingTradeSkillFrame;
				self.cachedTSMFrame = f;
				local oldSetVisible = f.SetVisible;
				local oldShow = f.Show;
				local oldHide = f.Hide;
				f.SetVisible = function(s, visible)
					oldSetVisible(s, visible);
					self:SetTSMCraftingVisible(visible);
				end
				f.Hide = function(s)
					oldHide(s);
					self:SetTSMCraftingVisible(false);
				end
				f.Show = function(s)
					oldShow(s);
					self:SetTSMCraftingVisible(true);
				end
				if f.queueBtn then
					local setScript = f.queueBtn.SetScript;
					f.queueBtn.SetScript = function(s, e, callback)
						if e == "OnClick" then
							setScript(s, e, function(...)
								if callback then callback(...); end
								
								local thing = self.TSMCraftingVisible;
								self.TSMCraftingVisible = nil;
								self:SetTSMCraftingVisible(thing);
							end);
						else
							setScript(s, e, callback);
						end
					end
					f.queueBtn:SetScript("OnClick", f.queueBtn:GetScript("OnClick"));
				end
				self:SetTSMCraftingVisible(f:IsShown());
				return;
			end
		end
		
		-- Update the window and all of its row data
		self.data.progress = 0;
		self.data.total = 0;
		UpdateGroups(self.data, self.data.g);
		UpdateWindow(self, ...);
	end
end);
GameTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
GameTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
GameTooltip:HookScript("OnTooltipSetUnit", AttachTooltip);
GameTooltip:HookScript("OnTooltipCleared", ClearTooltip);
ItemRefTooltip:HookScript("OnShow", AttachTooltip);
ItemRefTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
ItemRefTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
ItemRefTooltip:HookScript("OnTooltipCleared", ClearTooltip);
ItemRefShoppingTooltip1:HookScript("OnShow", AttachTooltip);
ItemRefShoppingTooltip1:HookScript("OnTooltipSetQuest", AttachTooltip);
ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", AttachTooltip);
ItemRefShoppingTooltip1:HookScript("OnTooltipCleared", ClearTooltip);
ItemRefShoppingTooltip2:HookScript("OnShow", AttachTooltip);
ItemRefShoppingTooltip2:HookScript("OnTooltipSetQuest", AttachTooltip);
ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", AttachTooltip);
ItemRefShoppingTooltip2:HookScript("OnTooltipCleared", ClearTooltip);
WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetItem", AttachTooltip);
WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetUnit", AttachTooltip);
WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipCleared", ClearTooltip);
WorldMapTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
WorldMapTooltip:HookScript("OnTooltipSetQuest", AttachTooltip);
WorldMapTooltip:HookScript("OnTooltipCleared", ClearTooltip);
WorldMapTooltip:HookScript("OnTooltipCleared", ClearTooltip);
WorldMapTooltip:HookScript("OnShow", AttachTooltip);

-- Slash Command List
SLASH_ATTC1 = "/allthethings";
SLASH_ATTC2 = "/things";
SLASH_ATTC3 = "/att";
SLASH_ATTC4 = "/attc";
SlashCmdList["ATTC"] = function(cmd)
	if cmd then
		cmd = string.lower(cmd);
		if cmd == "" or cmd == "main" or cmd == "mainlist" then
			app.ToggleMainList();
			return true;
		elseif cmd == "debug" or cmd == "debugger" then
			app:GetWindow("Debugger"):Toggle();
			return true;
		elseif cmd == "ra" then
			app:GetWindow("RaidAssistant"):Toggle();
			return true;
		elseif cmd == "ran" or cmd == "rand" or cmd == "random" then
			app:GetWindow("Random"):Toggle();
			return true;
		elseif cmd == "sr" then
			app:GetWindow("SoftReserves"):Toggle();
			return true;
		elseif cmd == "unsorted" then
			app:GetWindow("Unsorted"):Toggle();
			return true;
		elseif strsub(cmd, 1, 4) == "mini" then
			app:ToggleMiniListForCurrentZone();
			return true;
		else
			local subcmd = strsub(cmd, 1, 6);
			if subcmd == "mapid:" then
				app:GetWindow("CurrentInstance"):SetMapID(tonumber(strsub(cmd, 7)));
				return true;
			end
		end
		
		-- Search for the Link in the database
		local group = GetCachedSearchResults(cmd, SearchForLink, cmd);
		if group then CreateMiniListForGroup(group); end
	else
		-- Default command
		app.ToggleMainList();
	end
end

SLASH_ATTCMAPS1 = "/attmaps";
SlashCmdList["ATTCMAPS"] = function(cmd)
	app:GetWindow("CosmicInfuser"):Toggle();
end

SLASH_ATTCMINI1 = "/attmini";
SLASH_ATTCMINI2 = "/attminilist";
SlashCmdList["ATTCMINI"] = function(cmd)
	app:ToggleMiniListForCurrentZone();
end

SLASH_ATTCRA1 = "/attra";
SLASH_ATTCRA2 = "/attraid";
SlashCmdList["ATTCRA"] = function(cmd)
	app:GetWindow("RaidAssistant"):Toggle();
end

SLASH_ATTCRAN1 = "/attran";
SLASH_ATTCRAN2 = "/attrandom";
SlashCmdList["ATTCRAN"] = function(cmd)
	app:GetWindow("Random"):Toggle();
end

SLASH_ATTCSR1 = "/attsr";
SLASH_ATTCSR2 = "/attsoft";
SLASH_ATTCSR3 = "/attsoftreserve";
SLASH_ATTCSR4 = "/attsoftreserves";
SLASH_ATTCSR5 = "/sr";
SLASH_ATTCSR6 = "/softreserve";
SLASH_ATTCSR7 = "/softreserves";
SlashCmdList["ATTCSR"] = function(cmd)
	if cmd and cmd ~= "" then
		app:ParseSoftReserve(UnitGUID("player"), cmd, true, true);
	else
		-- Default command
		app:GetWindow("SoftReserves"):Toggle();
	end
end

SLASH_ATTUNED1 = "/attuned";
SlashCmdList["ATTUNED"] = function(cmd)
	app:GetWindow("Attuned"):Toggle();
end

SLASH_ATTCU1 = "/attu";
SLASH_ATTCU2 = "/attyou";
SLASH_ATTCU3 = "/attwho";
SlashCmdList["ATTCU"] = function(cmd)
	local name,server = UnitName("target");
	if name then SendResponseMessage("?", server and (name .. "-" .. server) or name); end
end

SLASH_ATTCUYELL1 = "/attyell";
SLASH_ATTCUYELL2 = "/attrohduh";
SlashCmdList["ATTCUYELL"] = function(cmd)
	C_ChatInfo.SendAddonMessage("ATTC", "?", "YELL");
end

local oldItemSetHyperlink = ItemRefTooltip.SetHyperlink;
function ItemRefTooltip:SetHyperlink(link, a, b, c, d, e, f)
	-- Make sure to call the default function, but with a try-catch.
	local status, err = pcall(function () oldItemSetHyperlink(self, link, a, b, c, d, e, f) end)
	if not status then	
		local linkType, id, params = strsplit(':', link)
		linkType = linkType .. "ID";
		print(linkType, id, params);
		if not fieldCache[linkType] then return end
		
		-- Search for the Link in the database
		local cmd = linkType .. ":" .. id;
		local group = GetCachedSearchResults(cmd, SearchForLink, cmd);
		if group then CreateMiniListForGroup(group); end
	end
end

-- Register Events required at the start
app:RegisterEvent("ADDON_LOADED");
app:RegisterEvent("BOSS_KILL");
app:RegisterEvent("CHAT_MSG_ADDON");
app:RegisterEvent("CHAT_MSG_WHISPER")
app:RegisterEvent("PLAYER_DEAD");
app:RegisterEvent("VARIABLES_LOADED");
app:RegisterEvent("PARTY_LOOT_METHOD_CHANGED");

-- Define Event Behaviours
app.events.VARIABLES_LOADED = function()
	app.Version = GetAddOnMetadata("ATT-Classic", "Version");
	ATTClassicAD = _G["ATTClassicAD"];	-- For account-wide data.
	if not ATTClassicAD then
		ATTClassicAD = { };
		_G["ATTClassicAD"] = ATTClassicAD;
	end
	app:UpdateWindowColors();
	LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject(L["TITLE"], {
		type = "launcher",
		icon = app.asset("logo_32x32"),
		OnClick = MinimapButtonOnClick,
		OnEnter = MinimapButtonOnEnter,
		OnLeave = MinimapButtonOnLeave,
	});
	
	-- Cache the Localized Category Data
	ATTClassicAD.LocalizedCategoryNames = setmetatable(ATTClassicAD.LocalizedCategoryNames or {}, { __index = app.CategoryNames });
	app.CategoryNames = nil;
	
	-- Cache the Localized Flight Path Data
	ATTClassicAD.LocalizedFlightPathDB = setmetatable(ATTClassicAD.LocalizedFlightPathDB or {}, { __index = app.FlightPathDB });
	app.FlightPathDB = nil;
	
	-- Cache information about the player.
	local raceIndex = app.RaceDB[app.Race];
	app.RaceIndex = type(raceIndex) == "table" and raceIndex[UnitFactionGroup("player")] or raceIndex;
	local name, realm = UnitName("player");
	if not realm then realm = GetRealmName(); end
	app.GUID = UnitGUID("player");
	local classInfo = C_CreatureInfo.GetClassInfo(classIndex);
	app.Me = "|c" .. (RAID_CLASS_COLORS[classInfo.classFile].colorStr or "ff1eff00") .. name .. "-" .. realm .. "|r";
	
	-- Character Data Storage
	local characterData = ATTCharacterData;
	if not characterData then
		characterData = {};
		ATTCharacterData = characterData;
	end
	local currentCharacter = characterData[app.GUID];
	if not currentCharacter then
		currentCharacter = {};
		characterData[app.GUID] = currentCharacter;
	end
	if name then currentCharacter.name = name; end
	if realm then currentCharacter.realm = realm; end
	if app.Me then currentCharacter.text = app.Me; end
	if app.GUID then currentCharacter.guid = app.GUID; end
	if app.Level then currentCharacter.lvl = app.Level; end
	if app.FactionID then currentCharacter.factionID = app.FactionID; end
	if app.ClassIndex then currentCharacter.classID = app.ClassIndex; end
	if app.RaceIndex then currentCharacter.raceID = app.RaceIndex; end
	if class then currentCharacter.class = class; end
	if race then currentCharacter.race = race; end
	if not currentCharacter.Achievements then currentCharacter.Achievements = {}; end
	if not currentCharacter.ActiveSkills then currentCharacter.ActiveSkills = {}; end
	if not currentCharacter.BattlePets then currentCharacter.BattlePets = {}; end
	if not currentCharacter.Deaths then currentCharacter.Deaths = 0; end
	if not currentCharacter.Exploration then currentCharacter.Exploration = {}; end
	if not currentCharacter.Factions then currentCharacter.Factions = {}; end
	if not currentCharacter.FlightPaths then currentCharacter.FlightPaths = {}; end
	if not currentCharacter.Lockouts then currentCharacter.Lockouts = {}; end
	if not currentCharacter.Quests then currentCharacter.Quests = {}; end
	if not currentCharacter.Spells then currentCharacter.Spells = {}; end
	if not currentCharacter.SpellRanks then currentCharacter.SpellRanks = {}; end
	if not currentCharacter.Titles then currentCharacter.Titles = {}; end
	if not currentCharacter.Toys then currentCharacter.Toys = {}; end
	currentCharacter.lastPlayed = time();
	app.CurrentCharacter = currentCharacter;
	
	-- Convert over the deprecated Characters table.
	local characters = GetDataMember("Characters");
	if characters then
		for guid,text in pairs(characters) do
			if not characterData[guid] then
				characterData[guid] = { ["text"] = text };
			end
		end
	end
	
	-- Convert over the deprecated DeathsPerCharacter table.
	local deathsPerCharacter = GetDataMember("DeathsPerCharacter");
	if deathsPerCharacter then
		for guid,deaths in pairs(deathsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.Deaths = deaths;
		end
	end
	
	-- Convert over the deprecated ActiveSkillsPerCharacter table.
	local activeSkillsPerCharacter = GetDataMember("ActiveSkillsPerCharacter");
	if activeSkillsPerCharacter then
		for guid,skills in pairs(activeSkillsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.ActiveSkills = skills;
		end
	end
	
	-- Convert over the deprecated CollectedFlightPathsPerCharacter table.
	local collectedFlightPathsPerCharacter = GetDataMember("CollectedFlightPathsPerCharacter");
	if collectedFlightPathsPerCharacter then
		for guid,flightPaths in pairs(collectedFlightPathsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.FlightPaths = flightPaths;
		end
	end
	
	-- Convert over the deprecated CollectedFactionsPerCharacter table.
	local collectedFactionsPerCharacter = GetDataMember("CollectedFactionsPerCharacter");
	if collectedFactionsPerCharacter then
		for guid,factions in pairs(collectedFactionsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.Factions = factions;
		end
	end
	
	-- Convert over the deprecated lockouts table.
	local lockouts = GetDataMember("lockouts");
	if lockouts then
		for guid,locks in pairs(lockouts) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.Lockouts = locks;
		end
	end
	
	-- Convert over the deprecated CollectedQuestsPerCharacter table.
	local collectedQuestsPerCharacter = GetDataMember("CollectedQuestsPerCharacter");
	if collectedQuestsPerCharacter then
		for guid,quests in pairs(collectedQuestsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.Quests = quests;
		end
	end
	
	-- Convert over the deprecated CollectedSpellsPerCharacter table.
	local collectedSpellsPerCharacter = GetDataMember("CollectedSpellsPerCharacter");
	if collectedSpellsPerCharacter then
		for guid,spells in pairs(collectedSpellsPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.Spells = spells;
		end
	end
	
	-- Convert over the deprecated SpellRanksPerCharacter table.
	local spellRanksPerCharacter = GetDataMember("SpellRanksPerCharacter");
	if spellRanksPerCharacter then
		for guid,ranks in pairs(spellRanksPerCharacter) do
			local character = characterData[guid];
			if not character then
				character = { ["guid"] = guid };
				characterData[guid] = character;
			end
			character.SpellRanks = ranks;
		end
	end
	
	-- Account Wide Data Storage
	local accountWideData = ATTAccountWideData;
	if not accountWideData then
		accountWideData = {};
		ATTAccountWideData = accountWideData;
	end
	if not accountWideData.Achievements then accountWideData.Achievements = {}; end
	if not accountWideData.BattlePets then accountWideData.BattlePets = {}; end
	if not accountWideData.Deaths then accountWideData.Deaths = 0; end
	if not accountWideData.Exploration then accountWideData.Exploration = {}; end
	if not accountWideData.Factions then accountWideData.Factions = {}; end
	if not accountWideData.FlightPaths then accountWideData.FlightPaths = {}; end
	if not accountWideData.Quests then accountWideData.Quests = {}; end
	if not accountWideData.Spells then accountWideData.Spells = {}; end
	if not accountWideData.Titles then accountWideData.Titles = {}; end
	if not accountWideData.Toys then accountWideData.Toys = {}; end
	
	-- Convert over the deprecated account wide tables.
	local data = GetDataMember("Deaths");
	if data then accountWideData.Deaths = data; end
	data = GetDataMember("CollectedFactions");
	if data then accountWideData.Factions = data; end
	data = GetDataMember("CollectedFlightPaths");
	if data then accountWideData.FlightPaths = data; end
	data = GetDataMember("CollectedQuests");
	if data then accountWideData.Quests = data; end
	data = GetDataMember("CollectedSpells");
	if data then accountWideData.Spells = data; end
	
	
	-- Check to see if we have a leftover ItemDB cache
	GetDataMember("LinkedAccounts", {});
	GetDataMember("GroupQuestsByGUID", {});
	GetDataMember("AddonMessageProcessor", {});
	GetDataMember("ValidSuffixesPerItemID", {});
	
	-- Check the format of the Soft Reserve Cache
	local reserves = GetDataMember("SoftReserves", {});
	local persistence = GetDataMember("SoftReservePersistence", {});
	local reservesByItemID = GetTempDataMember("SoftReservesByItemID", {});
	for guid,reserve in pairs(reserves) do
		if type(reserve) == 'number' then
			reserve = { reserve, time() };
			reserves[guid] = reserve;
		end
		local itemID = reserve[1];
		local reservesForItem = reservesByItemID[itemID];
		if not reservesForItem then
			reservesForItem = {};
			reservesByItemID[itemID] = reservesForItem;
		end
		table.insert(reservesForItem, guid);
	end
	
	-- Clean up settings
	local oldsettings = {};
	for i,key in ipairs({
		"AddonMessageProcessor",
		"GroupQuestsByGUID",
		"LinkedAccounts",
		"LocalizedCategoryNames",
		"LocalizedFlightPathDB",
		"Position",
		"RandomSearchFilter",
		"Reagents",
		"SoftReserves",
		"SoftReservePersistence",
		"ValidSuffixesPerItemID",
	}) do
		oldsettings[key] = ATTClassicAD[key];
	end
	wipe(ATTClassicAD);
	for key,value in pairs(oldsettings) do
		ATTClassicAD[key] = value;
	end
	
	-- Wipe the Debugger Data
	ATTClassicDebugData = nil;
	
	-- Tooltip Settings
	app.Settings:Initialize();
	app.PushSoftReserve(true);
	C_ChatInfo.RegisterAddonMessagePrefix("ATTC");
	
	-- Check if the SRs are locked
	if IsInGroup() then
		if not app.IsMasterLooter() then
			SendGroupMessage("?\tsrlock");
			SendGroupMessage("?\tsrpersistence");
		end
	else
		-- Unlock the Soft Reserves when not in a group
		local locked = app.Settings:GetTooltipSetting("SoftReservesLocked");
		if locked then
			app.Settings:SetTooltipSetting("SoftReservesLocked", false);
			wipe(searchCache);
		end
	end
	
	app.CurrentMapID = app.GetCurrentMapID();
	app:GetDataCache();
	
	-- Mark all previously completed quests.
	GetQuestsCompleted(CompletedQuests);
	wipe(DirtyQuests);
	app:RegisterEvent("QUEST_LOG_UPDATE");
	app:RegisterEvent("QUEST_ACCEPTED");
	app:RegisterEvent("QUEST_TURNED_IN");
	StartCoroutine("RefreshSaves", RefreshSaves);
	app:RefreshData(false);
	app:RefreshLocation();
	
	if GroupBulletinBoard_Addon then
		local oldGroupBulletinBoard_Addon_ClickDungeon = GroupBulletinBoard_Addon.ClickDungeon;
		GroupBulletinBoard_Addon.ClickDungeon = function(self,button,...)
			if button == "RightButton" and self.attRef and IsShiftKeyDown() then
				CreateMiniListForGroup(self.attRef);
				return;
			end
			oldGroupBulletinBoard_Addon_ClickDungeon(self, button, ...);
		end
		local oldGroupBulletinBoard_Addon_UpdateList = GroupBulletinBoard_Addon.UpdateList;
		GroupBulletinBoard_Addon.UpdateList = function(...) 
			oldGroupBulletinBoard_Addon_UpdateList(...);
			if not GroupBulletinBoardFrame:IsVisible() or not app.Settings:GetTooltipSetting("Integrate:LFGBulletinBoard") then
				return;
			end
			for key,f in pairs(GroupBulletinBoard_Addon.FramesEntries) do
				if f:IsVisible() and type(key) == "string" then
					local frameName = f:GetName();
					if frameName then
						local nameFrame = _G[frameName .. "_name"];
						if nameFrame then
							if not f.attRef then
								local instanceID = L.INSTANCE_ACRONYM_TO_INSTANCE_ID[key];
								if instanceID then
									local searchResults = app.SearchForField(type(instanceID) == "number" and "instanceID" or "mapID", tonumber(instanceID));
									if searchResults and #searchResults > 0 then
										f.attRef = searchResults[1];
										local progressText = GetProgressTextForTooltip(f.attRef);
										if progressText then
											local attString = "|T" .. app.asset("logo_32x32") .. ":0|t " .. progressText;
											nameFrame:SetText(attString .. "  " .. (nameFrame:GetText() or RETRIEVING_DATA));
										end
									end
								else
									--print("Unknown Acronym for ", key);
								end
							else
								local progressText = GetProgressTextForTooltip(f.attRef);
								if progressText then
									local attString = "|T" .. app.asset("logo_32x32") .. ":0|t " .. progressText;
									nameFrame:SetText(attString .. "  " .. (nameFrame:GetText() or RETRIEVING_DATA));
								end
							end
						end
					end
				end
			end
		end
	end
end
app.events.PLAYER_DEAD = function()
	ATTAccountWideData.Deaths = ATTAccountWideData.Deaths + 1;
	app.CurrentCharacter.Deaths = app.CurrentCharacter.Deaths + 1;
	app.refreshDataForce = true;
	app:RefreshData(true, true);
	app:PlayDeathSound();
end
app.events.ADDON_LOADED = function(addonName)
	if addonName == "Blizzard_AuctionUI" then
		app:UnregisterEvent("ADDON_LOADED");
		
		-- Create the Auction Tab for ATT.
		local n = AuctionFrame.numTabs + 1;
		local button = CreateFrame("Button", "AuctionFrameTab" .. n, AuctionFrame, "AuctionTabTemplate");
		button:SetID(n);
		button:SetText(L["AUCTION_TAB"]);
		button:SetPoint("LEFT", _G["AuctionFrameTab" .. n-1], "RIGHT", -8, 0);
		
		PanelTemplates_SetNumTabs (AuctionFrame, n);
		PanelTemplates_EnableTab  (AuctionFrame, n);
		
		-- Create the Auction Frame
		local frame = CreateFrame("FRAME", app:GetName() .. "-AuctionFrame", AuctionFrame );
		frame:SetPoint("TOPLEFT", AuctionFrame, 19, -67);
		frame:SetPoint("BOTTOMRIGHT", AuctionFrame, -8, 36);
		
		-- Create the movable Auction Data window.
		local window = app:GetWindow("AuctionData");
		window.shouldFullRefresh = true;
		window:SetParent(AuctionFrame);
		window:SetPoint("TOPLEFT", AuctionFrame, "TOPRIGHT", 0, -10);
		window:SetPoint("BOTTOMLEFT", AuctionFrame, "BOTTOMRIGHT", 0, 10);
		window.data = {
			["text"] = "Auction Module",
			["visible"] = true,
			["back"] = 1,
			["icon"] = "INTERFACE/ICONS/INV_Misc_Coin_01",
			["description"] = "This is a debug window for all of the auction data that was returned. Turn on 'Account Mode' to show items usable on any character on your account!",
			["options"] = {
				{
					["text"] = "Perform a Full Scan",
					["icon"] = "INTERFACE/ICONS/Ability_Ambush",
					["description"] = "Click this button to perform a full scan of the auction house. This information will appear within this window and clear out the existing data.",
					["visible"] = true,
					["OnClick"] = function() 
						if AucAdvanced and AucAdvanced.API then AucAdvanced.API.CompatibilityMode(1, ""); end
					
						-- QueryAuctionItems(name, minLevel, maxLevel, page, isUsable, qualityIndex, getAll, exactMatch, filterData);
						if select(2, CanSendAuctionQuery()) then
							-- Disable the button and register for the event.
							frame:RegisterEvent("AUCTION_ITEM_LIST_UPDATE");
							frame.descriptionLabel:SetText("Full Scan request sent.\n\nPlease wait while we wait for the server to respond.");
							frame.descriptionLabel:Show();
							QueryAuctionItems("", nil, nil, 0, nil, nil, true, false, nil);
						end
					end,
					['OnUpdate'] = app.AlwaysShowUpdate,
				},
				{
					["text"] = "Toggle Debug Mode",
					["icon"] = "INTERFACE/ICONS/INV_Scarab_Crystal",
					["description"] = "Click this button to toggle debug mode to show everything regardless of filters!",
					["visible"] = true,
					["OnClick"] = function() 
						app.Settings:ToggleDebugMode();
					end,
					['OnUpdate'] = function(data)
						data.visible = true;
						if app.Settings:Get("DebugMode") then
							-- Novaplane made me do it
							data.trackable = true;
							data.saved = true;
						else
							data.trackable = nil;
							data.saved = nil;
						end
						return true;
					end,
				},
				{
					["text"] = "Toggle Account Mode",
					["icon"] = "INTERFACE/ICONS/INV_Misc_Book_01",
					["description"] = "Turn this setting on if you want to track all of the Things for all of your characters regardless of class and race filters.\n\nUnobtainable filters still apply.",
					["visible"] = true,
					["OnClick"] = function() 
						app.Settings:ToggleAccountMode();
					end,
					['OnUpdate'] = function(data)
						if app.Settings:Get("DebugMode") then
							data.visible = false;
						else
							data.visible = true;
							if app.Settings:Get("AccountMode") then
								data.trackable = true;
								data.saved = true;
							else
								data.trackable = nil;
								data.saved = nil;
							end
						end
						return true;
					end,
				},
				{
					["text"] = "Toggle Faction Mode",
					["icon"] = "INTERFACE/ICONS/INV_Scarab_Crystal",
					["description"] = "Click this button to toggle faction mode to show everything for your faction!",
					["visible"] = true,
					["OnClick"] = function() 
						app.Settings:ToggleFactionMode();
					end,
					['OnUpdate'] = function(data)
						if app.Settings:Get("DebugMode") or not app.Settings:Get("AccountMode") then
							data.visible = false;
						else
							data.visible = true;
							if app.Settings:Get("FactionMode") then
								data.trackable = true;
								data.saved = true;
							else
								data.trackable = nil;
								data.saved = nil;
							end
						end
						return true;
					end,
				},
			},
			["g"] = {}
		};
		for i,option in ipairs(window.data.options) do
			table.insert(window.data.g, option);
		end
		window:Hide();
		
		-- Cache some functions to make them faster
		local _GetAuctionItemInfo, _GetAuctionItemLink = GetAuctionItemInfo, GetAuctionItemLink;
		local origSideDressUpFrameHide, origSideDressUpFrameShow = SideDressUpFrame.Hide, SideDressUpFrame.Show;
		SideDressUpFrame.Hide = function(...)
			origSideDressUpFrameHide(...);
			window:ClearAllPoints();
			window:SetPoint("TOPLEFT", AuctionFrame, "TOPRIGHT", 0, -10);
			window:SetPoint("BOTTOMLEFT", AuctionFrame, "BOTTOMRIGHT", 0, 10);
		end
		SideDressUpFrame.Show = function(...)
			origSideDressUpFrameShow(...);
			window:ClearAllPoints();
			window:SetPoint("LEFT", SideDressUpFrame, "RIGHT", 0, 0);
			window:SetPoint("TOP", AuctionFrame, "TOP", 0, -10);
			window:SetPoint("BOTTOM", AuctionFrame, "BOTTOM", 0, 10);
		end
		
		-- The ALL THE THINGS Epic Logo!
		local f = frame:CreateTexture(nil, "ARTWORK");
		f:SetATTSprite("base_36x36", 429, 217, 36, 36, 512, 256);
		f:SetPoint("BOTTOMLEFT", frame, "TOPLEFT", 72, 0);
		f:SetSize(36, 36);
		f:SetScale(0.8);
		f:Show();
		frame.logo = f;

		f = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
		f:SetPoint("TOPLEFT", frame.logo, "TOPRIGHT", 4, -2);
		f:SetJustifyH("LEFT");
		f:SetText(L["TITLE"]);
		f:SetScale(1.5);
		f:Show();
		frame.title = f;
		
		f = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
		f:SetPoint("CENTER", frame.title, "CENTER", 0, 0);
		f:SetPoint("RIGHT", frame, "RIGHT", -8, 0);
		f:SetJustifyH("RIGHT");
		f:SetText("Auction House Module");
		f:Show();
		frame.moduletitle = f;
		
		-- Settings Button
		f = CreateFrame("Button", nil, frame, "OptionsButtonTemplate");
		f:SetPoint("TOPLEFT", frame, "BOTTOMLEFT", 160, 0);
		f:SetText("Settings");
		f:SetWidth(120);
		f:SetHeight(22);
		f:RegisterForClicks("AnyUp");
		f:SetScript("OnClick", function()
			app.Settings:Open();
		end);
		f:SetATTTooltip("Click this button to toggle the settings menu.\n\nThe results displayed in this window will be filtered by your settings.");
		frame.settingsButton = f;
		
		-- Function to Update the State of the Scan button. (Coroutines, do not call manually.)
		local ObjectTypeMetas = {
			["mountID"] = setmetatable({	-- Mounts
				["filterID"] = 100,
				["description"] = "All mounts that you have not collected yet are displayed here.",
				["priority"] = 3,
			}, app.BaseFilter),
			["recipeID"] = setmetatable({	-- Recipes
				["filterID"] = 200,
				["description"] = "All recipes that you have not collected yet are displayed here.",
				["priority"] = 6,
			}, app.BaseFilter),
			["reagentID"] = {	-- Reagents
				["text"] = "Reagents",
				["icon"] = "Interface/ICONS/INV_Enchant_DustIllusion",
				["description"] = "All items that can be used to craft an item using a profession on your account.",
				["priority"] = 5,
			},
			["itemID"] = {	-- Items
				["text"] = "Items",
				["icon"] = "Interface/ICONS/INV_Box_02",
				["description"] = "All items that could potentially be upgrades are listed here.",
				["priority"] = 7,
			},
		};
		local UpdateScanButtonState = function()
			repeat
				if select(2, CanSendAuctionQuery()) then
					frame.scanButton:Enable();
					return true;
				else
					frame.scanButton:Disable();
					for i=0,60,1 do coroutine.yield(); end
				end
			until not frame:IsVisible();
		end
		local ProcessAuctionData = function()
			-- If we have no auction data, then simply return now.
			if not ATTClassicAuctionData then return false; end
			local count = #ATTClassicAuctionData;
			if count < 1 then return false; end
			
			-- Wait a second!
			for i=0,60,1 do coroutine.yield(); end
			
			-- Search the ATT Database for information related to the auction links (items, species, etc)
			local searchResultsByKey, searchResult, searchResults, key, keys, value, data = {};
			for i,itemLink in ipairs(ATTClassicAuctionData) do
				searchResults = SearchForLink(itemLink);
				if searchResults and #searchResults > 0 then
					searchResult = searchResults[1];
					key = searchResult.key;
					if key == "npcID" then
						if searchResult.itemID then
							key = "itemID";
						end
					end
					value = searchResult[key];
					keys = searchResultsByKey[key];
					
					-- Make sure that the key type is represented.
					if not keys then
						keys = {};
						searchResultsByKey[key] = keys;
					end
					
					-- First time this key value was used.
					data = keys[value];
					if not data then
						data = CreateObject(searchResult);
						for i=2,#searchResults,1 do
							MergeObject(data, CreateObject(searchResults[i]));
						end
						if data.key == "npcID" then setmetatable(data, app.BaseItem); end
						data.auctions = {};
						keys[value] = data;
					end
					table.insert(data.auctions, itemLink);
				end
			end
			
			-- Apply a sub-filter to items with spellID-based identifiers.
			if searchResultsByKey.spellID then
				local filteredItems = {};
				for key,entry in pairs(searchResultsByKey.spellID) do
					if entry.f then
						local filterData = filteredItems[entry.f];
						if not filterData then
							filterData = {};
							filteredItems[entry.f] = filterData;
						end
						filterData[key] = entry;
					else
						print("Spell " .. entry.spellID .. " (Item ID #" .. (entry.itemID or RETRIEVING_DATA) .. " is missing a filterID?");
					end
				end
				
				if filteredItems[100] then searchResultsByKey.mountID = filteredItems[100]; end	-- Mounts
				if filteredItems[200] then searchResultsByKey.recipeID = filteredItems[200]; end	-- Recipes
				searchResultsByKey.spellID = nil;
			end
			
			-- Process the Non-Collectible Items for Reagents
			local reagentCache = app.GetDataMember("Reagents");
			if reagentCache and searchResultsByKey.itemID then
				local cachedItems = searchResultsByKey.itemID;
				searchResultsByKey.itemID = {};
				searchResultsByKey.reagentID = {};
				for itemID,entry in pairs(cachedItems) do
					if reagentCache[itemID] then
						searchResultsByKey.reagentID[itemID] = entry;
						if not entry.g then entry.g = {}; end
						for itemID2,count in pairs(reagentCache[itemID][2]) do
							local searchResults = app.SearchForField("itemID", itemID2);
							if searchResults and #searchResults > 0 then
								table.insert(entry.g, CloneData(searchResults[1]));
							end
						end
					else
						-- Push it back into the itemID table
						searchResultsByKey.itemID[itemID] = entry;
					end
				end
			end
			
			-- Insert Buttons into the groups.
			wipe(window.data.g);
			for i,option in ipairs(window.data.options) do
				table.insert(window.data.g, option);
			end
			
			-- Display Test for Raw Data + Filtering
			for key, searchResults in pairs(searchResultsByKey) do
				local subdata = {};
				subdata.visible = true;
				if ObjectTypeMetas[key] then
					setmetatable(subdata, { __index = ObjectTypeMetas[key] });
				else
					subdata.description = "Container for '" .. key .. "' object types.";
					subdata.text = key;
				end
				subdata.g = {};
				for i,j in pairs(searchResults) do
					table.insert(subdata.g, j);
				end
				table.insert(window.data.g, subdata);
			end
			insertionSort(window.data.g, function(a, b)
				return (b.priority or 0) > (a.priority or 0);
			end);
			BuildGroups(window.data, window.data.g);
			UpdateGroups(window.data, window.data.g);
			window:Show();
			window:Update();
			
			-- Change the message!
			frame.descriptionLabel:SetText("Got the datas!\n\nShift Left click into the search bar on the Browse tab to look for items!");
			frame.descriptionLabel:Show();
		end
		local ProcessAuctions = function()
			-- Gather the Auctions
			ATTClassicAuctionData = {};
			app.CurrentAuctionIndex = 1;
			if app.CurrentAuctionIndex <= app.CurrentAuctionTotal then
				local iter = 0;
				repeat
					-- Process the Auction
					local link = _GetAuctionItemLink("list", app.CurrentAuctionIndex);
					if link then
						table.insert(ATTClassicAuctionData, link);
					else
						local name, texture, count, quality, canUse, level, levelColHeader, minBid,
							minIncrement, buyoutPrice, bidAmount, highBidder, bidderFullName, owner,
							ownerFullName, saleStatus, itemID, hasAllInfo = _GetAuctionItemInfo("list", app.CurrentAuctionIndex);
						if itemID and itemID > 0 and saleStatus == 0 then
							table.insert(ATTClassicAuctionData, "item:" .. itemID);
						end
					end
					
					-- Increment the index and check the iteration variable.
					iter = iter + 1;
					if iter >= 10000 then
						coroutine.yield();
						iter = 0;
					end
					app.CurrentAuctionIndex = app.CurrentAuctionIndex + 1;
				until app.CurrentAuctionIndex > app.CurrentAuctionTotal;
			else
				return false;
			end
			
			-- Process the items
			app.CurrentAuctionIndex = 0;
			app.CurrentAuctionTotal = 0;
			StartCoroutine("ProcessAuctionData", ProcessAuctionData);
		end
		
		-- Scan Button
		f = CreateFrame("Button", nil, frame, "OptionsButtonTemplate");
		f:SetPoint("TOPLEFT", frame.settingsButton, "TOPRIGHT", 2, 0);
		f:SetPoint("BOTTOMLEFT", frame.settingsButton, "BOTTOMRIGHT", 2, 0);
		f:SetText("Scan");
		f:SetWidth(120);
		f:RegisterForClicks("AnyUp");
		f:SetScript("OnClick", function()
			if AucAdvanced and AucAdvanced.API then AucAdvanced.API.CompatibilityMode(1, ""); end
		
			-- QueryAuctionItems(name, minLevel, maxLevel, page, isUsable, qualityIndex, getAll, exactMatch, filterData);
			local CanQuery, CanQueryAll = CanSendAuctionQuery();
			if CanQueryAll then
				-- Disable the button and register for the event.
				frame.scanButton:Disable();
				frame:RegisterEvent("AUCTION_ITEM_LIST_UPDATE");
				frame.descriptionLabel:SetText("Full Scan request sent.\n\nPlease wait while we wait for the server to respond.");
				frame.descriptionLabel:Show();
				QueryAuctionItems("", nil, nil, 0, nil, nil, true, false, nil);
			else
				return false;
			end
			
			-- Update the Scan Button State
			StartCoroutine("UpdateScanButtonState", UpdateScanButtonState);
		end);
		f:SetATTTooltip("Click this button to scan the auction house for collectible Things.\n\nIf you have \"Live Scan\" checked, this will do a scan through common collectible categories using Live data rather than a more efficient Full Scan.\n\nFull Scans have an internal 15 minute cooldown if you invalidate the cache by reloading your UI.");
		frame.scanButton = f;
		f = frame.scanButton:CreateTexture(nil, "BORDER");
		f:SetPoint("TOPRIGHT", frame.scanButton, "TOPLEFT", 6, 1);
		f:SetTexture("Interface\\FrameGeneral\\UI-Frame");
		f:SetTexCoord(0.00781250,0.10937500,0.75781250,0.95312500);
		f:SetSize(13, 25);
		f:Show();
		f = frame.scanButton:CreateTexture(nil, "BORDER");
		f:SetPoint("TOPLEFT", frame.scanButton, "TOPRIGHT", -6, 1);
		f:SetTexture("Interface\\FrameGeneral\\UI-Frame");
		f:SetTexCoord(0.00781250,0.10937500,0.75781250,0.95312500);
		f:SetSize(13, 25);
		f:Show();
		
		-- Close Button
		f = CreateFrame("Button", nil, frame, "OptionsButtonTemplate");
		f:SetPoint("TOPRIGHT", frame, "BOTTOMRIGHT", 0, 0);
		f:SetText("Close");
		f:SetWidth(80);
		f:SetHeight(22);
		f:RegisterForClicks("AnyUp");
		f:SetScript("OnClick", CloseAuctionHouse);
		frame.closeButton = f;
		f = frame.closeButton:CreateTexture(nil, "BORDER");
		f:SetPoint("TOPRIGHT", frame.closeButton, "TOPLEFT", 5, 1);
		f:SetTexture("Interface\\FrameGeneral\\UI-Frame");
		f:SetTexCoord(0.00781250,0.10937500,0.75781250,0.95312500);
		f:SetSize(13, 25);
		f:Show();
		
		f = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
		f:SetPoint("CENTER", frame, "CENTER", 0, 0);
		f:SetText("No Auction Data.\n\nPress 'Scan' to ask the server for information.");
		f:SetTextColor(1, 1, 1, 1);
		f:SetJustifyH("CENTER");
		f:Show();
		frame.descriptionLabel = f;
		
		-- Register for Events [Only when requests sent by ATT]
		frame:SetScript("OnEvent", function(self, e, ...)
			local numItems = GetNumAuctionItems("list");
			if numItems > 0 then
				-- Unregister, then begin processing the Auction Item List
				self:UnregisterEvent("AUCTION_ITEM_LIST_UPDATE");
				app.CurrentAuctionTotal = numItems;
				app.CurrentAuctionIndex = 0;
				frame.descriptionLabel:SetText("Scan data received. Found " .. numItems .. " auctions.\n\nPlease wait while we determine how useful they all are.");
				frame.descriptionLabel:Show();
				StartCoroutine("ProcessAuctions", ProcessAuctions);
			end
		end);
		hooksecurefunc("AuctionFrameTab_OnClick", function(self)
			-- print("AuctionFrameTab_OnClick", self:GetID());
			if self:GetID() == n then
				--Default AH textures
				AuctionFrameTopLeft:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Bid-TopLeft");
				AuctionFrameTop:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Auction-Top");
				AuctionFrameTopRight:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Auction-TopRight");
				AuctionFrameBotLeft:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Bid-BotLeft");
				AuctionFrameBot:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Auction-Bot");
				AuctionFrameBotRight:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Bid-BotRight");
				StartCoroutine("UpdateScanButtonState", UpdateScanButtonState);
				if not self.InitialProcess then
					StartCoroutine("ProcessAuctionData", ProcessAuctionData);
					self.InitialProcess = true;
				else
					window:Show();
				end
				
				frame:Show();
			else
				frame:Hide();
			end
		end);
	end
end
app.events.CHAT_MSG_ADDON = function(prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID, ...)
	if prefix == "ATTC" then
		--print(prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID, ...)
		local args = { strsplit("\t", text) };
		local cmd = args[1];
		if cmd then
			local a = args[2];
			if cmd == "?" then		-- Query Request
				local response;
				if a then
					if a == "a" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Achievements[b] and 1 or 0);
						end
					elseif a == "e" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Exploration[b] and 1 or 0);
						end
					elseif a == "f" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Factions[b] and 1 or 0);
						end
					elseif a == "fp" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.FlightPaths[b] and 1 or 0);
						end
					elseif a == "p" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.BattlePets[b] and 1 or 0);
						end
					elseif a == "q" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (IsQuestFlaggedCompleted(b) and 1 or 0);
						end
					--[[
					elseif a == "s" then
						response = "s";
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (ATTAccountWideData.Sources[b] or 0);
						end
					]]--
					elseif a == "sp" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Spells[b] and 1 or 0);
						end
					elseif a == "t" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Titles[b] and 1 or 0);
						end
					elseif a == "toy" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Toys[b] and 1 or 0);
						end
					elseif a == "sr" then
						if target == UnitName("player") then
							return false;
						else
							local softReserve = GetDataMember("SoftReserves")[app.GUID];
							response = "sr" .. "\t" .. app.GUID .. "\t" .. (softReserve and ((softReserve[1] or 0) .. "\t" .. (softReserve[2] or 0)) or "0\t0");
						end
					elseif a == "srml" then -- Soft Reserve (Master Looter) Command
						app:QuerySoftReserve(UnitGUID(target), a, target);
					elseif a == "srlock" then
						if target == UnitName("player") then
							return false;
						else
							response = "srlock\t" .. (app.Settings:GetTooltipSetting("SoftReservesLocked") and 1 or 0);
						end
					elseif a == "srpersistence" then
						if target == UnitName("player") then
							return false;
						else
							response = "srpersistence\t" .. (app.Settings:GetTooltipSetting("SoftReservePersistence") and 1 or 0);
						end
					elseif a == "sync" then
						app:ReceiveSyncRequest(target, a);
					elseif a == "syncsum" then
						table.remove(args, 1);
						table.remove(args, 1);
						app:ReceiveSyncSummary(target, args);
					elseif a == "syncsumchar" then
						table.remove(args, 1);
						table.remove(args, 1);
						app:ReceiveSyncSummary(target, args, true);
					end
				else
					local data = app:GetWindow("Prime").data;
					response = "ATTC\t" .. (data.progress or 0) .. "\t" .. (data.total or 0) .. "\t" .. app.Settings:GetShortModeString();
				end
				if response then SendResponseMessage("!\t" .. response, sender); end
			elseif cmd == "!" then	-- Query Response
				if a == "ATTC" then
					print(target .. ": " .. GetProgressColorText(tonumber(args[3]), tonumber(args[4])) .. " " .. args[5]);
				else
					if a == "q" then
						local processor = GetDataMember("AddonMessageProcessor");
						for i=3,#args,2 do
							local b = tonumber(args[i]);
							local c = tonumber(args[i + 1]);
							if c == 1 then table.insert(processor, { target, "q", b }); end
						end
						app:GetWindow("Attuned"):DelayedUpdate();
					elseif a == "sr" then
						app:UpdateSoftReserve(args[3], tonumber(args[4]), tonumber(args[5]), true);
					elseif a == "srml" then
						if target == UnitName("player") then
							return false;
						else
							for i=3,#args,2 do
								app:UpdateSoftReserveInternal(args[i], tonumber(args[i + 1]));
							end
							app:RefreshSoftReserveWindow();
						end
					elseif a == "srlock" then
						if target == UnitName("player") then
							return false;
						else
							app.Settings:SetTooltipSetting("SoftReservesLocked", tonumber(args[3]) == 1);
							wipe(searchCache);
							app:RefreshSoftReserveWindow(true);
						end
					elseif a == "srpersistence" then
						if target == UnitName("player") then
							return false;
						else
							app.Settings:SetTooltipSetting("SoftReservePersistence", tonumber(args[3]) == 1);
							wipe(searchCache);
							app:RefreshSoftReserveWindow(true);
						end
					elseif a == "syncsum" then
						table.remove(args, 1);
						table.remove(args, 1);
						app:ReceiveSyncSummaryResponse(target, args);
					elseif a == "syncsumchar" then
						table.remove(args, 1);
						table.remove(args, 1);
						for i,guid in ipairs(args) do
							local character = ATTCharacterData[guid];
							if character then
								print(character.text .. " is already up-to-date.");
							end
						end
					end
				end
			elseif cmd == "to" then	-- To Command
				local myName = UnitName("player");
				local name,server = strsplit("-", a);
				if myName == name and (not server or GetRealmName() == server) then
					app.events.CHAT_MSG_ADDON(prefix, strsub(text, 5 + strlen(a)), "WHISPER", sender);
				end
			elseif cmd == "sr" then -- Soft Reserve Command
				app:ParseSoftReserve(UnitGUID(target), a, true);
			elseif cmd == "chks" then	-- Total Chunks Command [sender, uid, total]
				app:AcknowledgeIncomingChunks(target, tonumber(a), tonumber(args[3]));
			elseif cmd == "chk" then	-- Incoming Chunk Command [sender, uid, index, chunk]
				app:AcknowledgeIncomingChunk(target, tonumber(a), tonumber(args[3]), args[4]);
			elseif cmd == "chksack" then	-- Chunks Acknowledge Command [sender, uid]
				app:SendChunk(target, tonumber(a), 1, 1);
			elseif cmd == "chkack" then	-- Chunk Acknowledge Command [sender, uid, index, success]
				app:SendChunk(target, tonumber(a), tonumber(args[3]) + 1, tonumber(args[4]));
			end
		end
	end
end
app.events.CHAT_MSG_WHISPER = function(text, playerName, _, _, _, _, _, _, _, _, _, guid)
	text = text:match("^%s*(.+)$") or "";
	local action = strsub(text, 1, 1);
	if action == '!' then	-- Send
		local lowercased = string.lower(text);
		local cmd = strsub(lowercased, 2, 3);
		if cmd == "sr" then
			app:ParseSoftReserve(guid, strsub(text, 4));
		elseif cmd == "mc" then
			GetDataSubMember("GroupQuestsByGUID", guid, {})[7848] = 1;
		else
			cmd = strsub(lowercased, 2, 4);
			if cmd == "ony" then
				GetDataSubMember("GroupQuestsByGUID", guid, {})[app.FactionID == Enum.FlightPathFaction.Horde and 6602 or 6502] = 1;
			elseif cmd == "bwl" then
				GetDataSubMember("GroupQuestsByGUID", guid, {})[7761] = 1;
			end
		end
	elseif action == '?' then	-- Request
		local lowercased = string.lower(text);
		if strsub(lowercased, 2, 3) == "sr" then
			-- Turn off the AskPrice addon message if it's a Soft Reserve.
			if AucAdvanced and AucAdvanced.Settings then
				local oldSetting = AucAdvanced.Settings.GetSetting('util.askprice.activated');
				if oldSetting then
					AucAdvanced.Settings.SetSetting("util.askprice.activated", false);
					C_Timer.After(0.01, function()
						AucAdvanced.Settings.SetSetting("util.askprice.activated", true);
					end);
				end
			end
			app:QuerySoftReserve(guid, strsub(text, 4));
		end
	end
end
app.events.PARTY_LOOT_METHOD_CHANGED = function()
	if GetLootMethod() == "master" then
		app.PushSoftReserve();
	end
end
app.events.PLAYER_LEVEL_UP = function(newLevel)
	app.Level = newLevel;
	app:UpdateWindows();
	app.Settings:Refresh();
end
app.events.BOSS_KILL = function(id, name, ...)
	-- This is so that when you kill a boss, you can trigger 
	-- an automatic update of your saved instance cache. 
	-- (It does lag a little, but you can disable this if you want.)
	-- Waiting until the LOOT_CLOSED occurs will prevent the failed Auto Loot bug.
	-- print("BOSS_KILL", id, name, ...);
	app:UnregisterEvent("LOOT_CLOSED");
	app:RegisterEvent("LOOT_CLOSED");
end
app.events.LOOT_CLOSED = function()
	-- Once the loot window closes after killing a boss, THEN trigger the update.
	app:UnregisterEvent("LOOT_CLOSED");
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	app:RegisterEvent("UPDATE_INSTANCE_INFO");
	RequestRaidInfo();
end
app.events.UPDATE_INSTANCE_INFO = function()
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	StartCoroutine("RefreshSaves", RefreshSaves);
end
app.events.QUEST_ACCEPTED = function(questID)
	wipe(searchCache);
	app:RefreshData(true, true);
end
app.events.QUEST_TURNED_IN = function(questID)
	if fieldCache.questID[questID] and not fieldCache.questID[questID][1].repeatable then
		CompletedQuests[questID] = true;
		for questID,completed in pairs(DirtyQuests) do
			app.QuestCompletionHelper(tonumber(questID));
		end
		wipe(DirtyQuests);
		wipe(searchCache);
	end
	app:RefreshData(true, true);
end
app.events.QUEST_LOG_UPDATE = function()
	GetQuestsCompleted(CompletedQuests);
	for questID,completed in pairs(DirtyQuests) do
		app.QuestCompletionHelper(tonumber(questID));
	end
	wipe(DirtyQuests);
	wipe(searchCache);
	app:RefreshData(true, true);
	app:UnregisterEvent("QUEST_LOG_UPDATE");
end
