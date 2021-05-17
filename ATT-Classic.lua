--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--				Copyright 2017-2021 Dylan Fortune (Crieve-Sargeras)           --
--------------------------------------------------------------------------------
local app = select(2, ...);
local L = app.L;

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
		if not group.itemID and (parent.key == "filterID" or parent.key == "spellID" or ((parent.headerID or (parent.spellID and group.categoryID)) 
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
		if parent.key == "categoryID" or group.key == "filterID" or group.key == "spellID" or group.key == "encounterID" or (parent.key == "mapID" and group.key == "npcID") then
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

-- Quest Completion Lib
local DirtyQuests = {};
local IgnoreErrorQuests = {
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
	[5504]=1,	-- Mantles of the Dawn
	[5507]=1,	-- Mantles of the Dawn
	[5513]=1,	-- Mantles of the Dawn
	[8870]=1,	-- The Lunar Festival
	[8871]=1,	-- The Lunar Festival
	[8872]=1,	-- The Lunar Festival
	[8873]=1,	-- The Lunar Festival
	[8874]=1,	-- The Lunar Festival
	[8875]=1,	-- The Lunar Festival
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
				local questID, nmr, nmc = key, false, false;
				for i,searchResult in ipairs(searchResults) do
					if searchResult.questID == questID and not IgnoreErrorQuests[questID] then
						if searchResult.nmr then
							if not nmr then
								nmr = true;
								key = key .. " [WRONG RACES]";
							end
						end
						if searchResult.nmc then
							if not nmc then
								nmc = true;
								key = key .. " [WRONG CLASSES]";
							end
						end
					end
				end
				if not (nmr or nmc) and app.Settings:GetTooltipSetting("Report:UnsortedQuests") then
					return true;
				end
			else
				key = key .. " [MISSING]";
			end
			print("Completed Quest ID #" .. key);
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
		local hash = key .. (rawget(t, key) or t[key]);
		rawset(t, "hash", hash);
		return hash;
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
				t = app.CreateItem(t.itemID, t);
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
local subroutines = {};
ResolveSymbolicLink = function(o)
	if o and o.sym then
		local searchResults, finalized = {}, {};
		for j,sym in ipairs(o.sym) do
			local cmd = sym[1];
			if cmd == "select" then
				-- Instruction to search the full database for something.
				local cache = app.SearchForField(sym[2], sym[3]);
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
					if reason and not reason[4] then
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
		if paramA == "creatureID" then
			if group and #group > 0 then
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
					if app.Settings:GetTooltipSetting("Descriptions") then
						for i,j in ipairs(regroup) do
							if j.description and j[paramA] and j[paramA] == paramB then
								tinsert(info, 1, { left = j.description, wrap = true, color = "ff66ccff" });
							end
						end
					end
					table.sort(regroup, function(a, b)
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
							if reason and not reason[4] then
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
						if reason and not reason[4] then
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
				table.sort(temp);
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
		
		if group.description and app.Settings:GetTooltipSetting("Descriptions") and not (paramA == "titleID") then
			tinsert(info, 1, { left = group.description, wrap = true, color = "ff66ccff" });
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
									if character.realm == realmName
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
									if character.realm == realmName and character.Quests and not character.Quests[item.group.questID] then
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
							table.sort(entries, function(a, b)
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
							table.sort(entries, function(a, b)
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
								table.sort(entries, function(a, b)
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
		if group.collectible and group.spellID and group.filterID ~= 100 and app.Settings:GetTooltipSetting("KnownBy") then
			local knownBy = {};
			for guid,character in pairs(ATTCharacterData) do
				if character.Spells and character.Spells[group.spellID] then
					table.insert(knownBy, character);
				end
			end
			if #knownBy > 0 then
				table.sort(knownBy, function(a, b)
					return a.text < b.text;
				end);
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
			
			group.info = uniques;
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

-- Lua Constructor Lib
local fieldCache = {};
local CacheField, CacheFields;
local _cache;
(function()
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
fieldCache["spellID"] = {};
fieldCache["tierID"] = {};
fieldCache["titleID"] = {};
fieldConverters = {
	-- Simple Converters
	["creatureID"] = function(group, value)
		if value > 0 then
			CacheField(group, "creatureID", value);
		end
	end,
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
		CacheField(group, "itemID", value);
	end,
	["mapID"] = function(group, value)
		CacheField(group, "mapID", value);
	end,
	["npcID"] = function(group, value)
		if value > 0 then
			CacheField(group, "creatureID", value);
		end
	end,
	["objectID"] = function(group, value)
		-- WARNING: DEV ONLY START
		if not L["OBJECT_ID_NAMES"][value] then
			print("Object Missing Name ", value);
			L["OBJECT_ID_NAMES"][value] = "Object #" .. value;
		end
		-- WARNING: DEV ONLY END
		CacheField(group, "objectID", value);
	end,
	["questID"] = function(group, value)
		CacheField(group, "questID", value);
	end,
	["requireSkill"] = function(group, value)
		CacheField(group, "requireSkill", value);
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
	["g"] = function(group, value)
		for i,subgroup in ipairs(value) do
			CacheFields(subgroup);
		end
	end,
	["crs"] = function(group, value)
		_cache = rawget(fieldConverters, "creatureID");
		for i,creatureID in ipairs(value) do
			_cache(group, creatureID);
		end
	end,
	["qgs"] = function(group, value)
		_cache = rawget(fieldConverters, "creatureID");
		for i,questGiverID in ipairs(value) do
			_cache(group, questGiverID);
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
					CacheField(group, "creatureID", v[2]);
				elseif v[1] == "i" then
					CacheField(group, "itemIDAsCost", v[2]);
					CacheField(group, "itemID", v[2]);
				elseif v[1] == "o" then
					-- WARNING: DEV ONLY START
					if not L["OBJECT_ID_NAMES"][v[2]] then
						print("Object Missing Name ", v[2]);
						L["OBJECT_ID_NAMES"][v[2]] = "Object #" .. v[2];
					end
					-- WARNING: DEV ONLY END
					rawget(fieldConverters, "objectID")(group, v[2]);
				end
			end
		end
	end,
	["maps"] = function(group, value)
		_cache = rawget(fieldConverters, "mapID");
		for i,mapID in ipairs(value) do
			_cache(group, mapID);
		end
	end,
	["cost"] = function(group, value)
		if type(value) == "number" then
			return;
		else
			for k,v in pairs(value) do
				if v[1] == "i" and v[2] > 0 then
					CacheField(group, "itemID", v[2]);
					CacheField(group, "itemIDAsCost", v[2]);
				elseif v[1] == "o" and v[2] > 0 then
					CacheField(group, "objectID", v[2]);
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
};
CacheFields = function(group)
	local n = 0;
	local clone = {};
	for key,value in pairs(group) do
		n = n + 1
		rawset(clone, n, key);
	end
	for i=1,n,1 do
		_cache = rawget(fieldConverters, rawget(clone, i));
		if _cache then _cache(group, rawget(group, rawget(clone, i))); end
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

-- Map Information Lib
local function AddTomTomWaypoint(group, auto)
	if TomTom and (group.visible or (group.objectiveID and not group.saved)) then
		if group.coords or group.coord then
			local opt = {
				title = group.text or group.link,
				persistent = nil,
				minimap = true,
				world = true
			};
			if group.title then opt.title = opt.title .. "\n" .. group.title; end
			--if group.explorationID then opt.title = opt.title .. "\nExploration ID " .. group.explorationID; end
			local defaultMapID = GetRelativeMap(group, app.CurrentMapID);
			local displayID = GetDisplayID(group);
			if displayID then
				opt.minimap_displayID = displayID;
				opt.worldmap_displayID = displayID;
			end
			if group.icon then
				opt.minimap_icon = group.icon;
				opt.worldmap_icon = group.icon;
			end
			if group.coords then
				for i, coord in ipairs(group.coords) do
					TomTom:AddWaypoint(coord[3] or defaultMapID, coord[1] / 100, coord[2] / 100, opt);
				end
			end
			if group.coord then TomTom:AddWaypoint(group.coord[3] or defaultMapID, group.coord[1] / 100, group.coord[2] / 100, opt); end
		end
		if group.g then
			for i,subgroup in ipairs(group.g) do
				AddTomTomWaypoint(subgroup, auto);
			end
		end
	end
end
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
	["Player-4372-0108DCC1"] = true,	-- Grotesque
	["Player-4372-00E8CC3C"] = true,	-- Hairyplodder
	["Player-4372-00D38E94"] = true,	-- Havachant
	["Player-4372-00312AD9"] = true,	-- Hewn
	["Player-4372-0046F7E8"] = true,	-- Holochops
	["Player-4372-007AF4B7"] = true,	-- Intothefray
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
local function AttachTooltipRawSearchResults(self, group)
	if group then
		-- If there was info text generated for this search result, then display that first.
		if group.info then
			local left, right;
			for i,entry in ipairs(group.info) do
				left = entry.left;
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
		
		-- If the user has Show Collection Progress turned on.
		if group.collectionText and self:NumLines() > 0 then
			local rightSide = _G[self:GetName() .. "TextRight1"];
			if rightSide then
				rightSide:SetText(group.collectionText);
				rightSide:Show();
			end
		end
	end
end
local function AttachTooltipSearchResults(self, search, method, paramA, paramB, ...)
	AttachTooltipRawSearchResults(self, GetCachedSearchResults(search, method, paramA, paramB, ...));
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
							AttachTooltipSearchResults(self, "creatureID:" .. npcID, SearchForField, "creatureID", tonumber(npcID));
						end
						return true;
					end
				end
				
				-- Does the tooltip have a spell? [Mount Journal, Action Bars, etc]
				local spellID = select(2, self:GetSpell());
				if spellID then
					AttachTooltipSearchResults(self, "spellID:" .. spellID, SearchForField, "spellID", spellID);
					self:Show();
					if owner and owner.ActiveTexture then
						self.ATTCProcessing = nil;
					end
					return true;
				end
				
				-- Does the tooltip have an itemlink?
				local link = select(2, self:GetItem());
				if link then AttachTooltipSearchResults(self, link, SearchForLink, link); end
				
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

-- Tooltip Hooks
(function()
	local GameTooltip_SetCurrencyByID = GameTooltip.SetCurrencyByID;
	GameTooltip.SetCurrencyByID = function(self, currencyID, count)
		-- Make sure to call to base functionality
		GameTooltip_SetCurrencyByID(self, currencyID, count);
		
		if (not InCombatLockdown() or app.Settings:GetTooltipSetting("DisplayInCombat")) and app.Settings:GetTooltipSetting("Enabled") then
			AttachTooltipSearchResults(self, "currencyID:" .. currencyID, SearchForField, "currencyID", currencyID);
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
							AttachTooltipSearchResults(self, "currencyID:" .. currencyID, SearchForField, "currencyID", currencyID);
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

-- Category Lib
(function()
local fields = {
	["key"] = function(t)
		return "categoryID";
	end,
	["text"] = function(t)
		return L.TRADESKILL_CATEGORY_NAMES[t.categoryID] or ("Unknown Category #" .. t.categoryID);
	end,
	["icon"] = function(t)
		return L.TRADESKILL_CATEGORY_ICONS[t.categoryID] or "Interface/ICONS/INV_Misc_Gear_02";
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
		end
		return t.unit;
	end,
	["icon"] = function(t)
		if t.classID and not app.Settings:GetTooltipSetting("Models") then return classIcons[t.classID]; end
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
		return LEVEL .. " " .. (UnitLevel(t.unit) or RETRIEVING_DATA) .. " " .. (UnitRace(t.unit) or RETRIEVING_DATA) .. " " .. (UnitClass(t.unit) or RETRIEVING_DATA);
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
			table.sort(c, function(a, b)
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
app.ColorizeStandingText = function(standingID, text)
	local standing = StandingByID[standingID];
	if standing then
		return Colorize(text, standing.color);
	else
		local rgb = FACTION_BAR_COLORS[standingID];
		return Colorize(text, RGBToHex(rgb.r * 255, rgb.g * 255, rgb.b * 255));
	end
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
local fields = {
	["key"] = function(t)
		return "factionID";
	end,
	["text"] = function(t)
		return app.ColorizeStandingText((t.saved and 8) or (t.standing + (t.isFriend and 2 or 0)), t.name);
	end,
	["name"] = function(t)
		return select(1, GetFactionInfoByID(t.factionID)) or (t.creatureID and NPCNameFromID[t.creatureID]) or (FACTION .. " #" .. t.factionID);
	end,
	["icon"] = function(t)
		return app.asset("Category_Factions");
	end,
	["filterID"] = function(t)
		return 112;
	end,
	["trackable"] = function(t)
		return app.CollectibleReputations;
	end,
	["saved"] = function(t)
		if app.CurrentCharacter.Factions[t.factionID] then return 1; end
		if t.standing >= t.maxstanding then
			app.CurrentCharacter.Factions[t.factionID] = 1;
			ATTAccountWideData.Factions[t.factionID] = 1;
			return 1;
		end
		if app.AccountWideReputations and ATTAccountWideData.Factions[t.factionID] then return 2; end
		
		-- If your reputation is higher than the maximum for a different faction, return partial completion.
		if t.maxReputation and t.maxReputation[1] ~= t.factionID and (select(3, GetFactionInfoByID(t.maxReputation[1])) or 4) >= app.GetFactionStanding(t.maxReputation[2]) then
			return 2;
		end
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
fields.collectible = fields.trackable;
fields.collected = fields.saved;
app.BaseFaction = app.BaseObjectFields(fields);
app.CreateFaction = function(id, t)
	return setmetatable(constructor(id, t, "factionID"), app.BaseFaction);
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
					if group.flightPathID and not group.nmr and not group.nmc and not group.u then
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
	if app.CacheFlightPathDataForTarget(knownNodeIDs) == 0 then
		if app.CacheFlightPathDataForMap(app.CurrentMapID, knownNodeIDs) == 0 then
			print("Failed to find nearest Flight Path. Please report this to the ATT Discord!");
			local pos = C_Map.GetPlayerMapPosition(app.CurrentMapID, "player");
			if pos then
				local px, py = pos:GetXY();
				print(" Location: " .. (math.floor(px * 10000) * 0.01) .. ", " ..(math.floor(py * 10000) * 0.01) .. ", " .. app.CurrentMapID);
				local target = UnitGUID("target");
				if target then print(" Master: ", target); end
			end
		end
	end
	
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
		local results = SearchForField("itemID", t.itemID);
		if results then
			for i,o in ipairs(results) do
				if o.questID then return 104; end
			end
		end
		local results = SearchForField("itemIDAsCost", t.itemID);
		if results then
			for i,o in ipairs(results) do
				if o.questID then return 104; end
			end
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
			for _,ref in pairs(results) do
				if ref.itemID ~= id and app.RecursiveGroupRequirementsFilter(ref) then
					if ref.collectible or (ref.total and ref.total > 0) then
						return true;
					end
				end
			end
			return false;
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
		local id = t.itemID;
		local results = app.SearchForField("itemIDAsCost", id, true);
		if results and #results > 0 then
			local collected, count = true, 0;
			for _,ref in pairs(results) do
				if ref.itemID ~= id and app.RecursiveGroupRequirementsFilter(ref) then
					if ref.total and ref.total > 0 and not GetRelativeField(t, "parent", ref) then
						count = count + 1;
						if ref.progress < ref.total then
							collected = false;
						end
					elseif ref.collectible then
						count = count + 1;
						if not ref.collected then
							collected = false;
						end
					end
				end
			end
			if count > 0 then
				return collected;
			end
			return false;
		end
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
		if rawget(t, "factionID") then
			if rawget(t, "questID") then
				return setmetatable(constructor(id, t, "itemID"), app.BaseItemWithQuestIDAndFactionID);
			else
				return setmetatable(constructor(id, t, "itemID"), app.BaseItemWithFactionID);
			end
		elseif rawget(t, "questID") then
			return setmetatable(constructor(id, t, "itemID"), app.BaseItemWithQuestID);
		end
	end
	return setmetatable(constructor(id, t, "itemID"), app.BaseItem);
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
app.GetCurrentMapID = function()
	local ZONE_TEXT_TO_MAP_ID = app.L["ZONE_TEXT_TO_MAP_ID"];
	local ALT_ZONE_TEXT_TO_MAP_ID = app.L["ALT_ZONE_TEXT_TO_MAP_ID"];
	local real = GetRealZoneText();
	if real then
		local otherMapID = ZONE_TEXT_TO_MAP_ID[real] or ALT_ZONE_TEXT_TO_MAP_ID[real];
		if otherMapID then return otherMapID; end
	end
	local zone = GetSubZoneText();
	if zone then
		local otherMapID = ZONE_TEXT_TO_MAP_ID[zone] or ALT_ZONE_TEXT_TO_MAP_ID[zone];
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

-- NOTE: Get these values by dumping C_MapExplorationInfo_GetExploredMapTextures(mapID)
-- This is now a table of maphash,subAreaID (explorationID in ATT)
-- The commented sections are areas associated with the map, but not collectible. (afaik, they might add them later)
-- /script for areaID=1,5000,1 do if C_Map.GetAreaInfo(areaID) == "Undercity" then print("Area ID: ", areaID); end end
local EXPLORATION_ID_META = { __index = function(t, artID)
	local exploration = {};
	rawset(t, artID, exploration);
	return exploration;
end };
local EXPLORATION_ID_MAP = setmetatable({}, EXPLORATION_ID_META);

local ExploredMapDataByIDMeta = { __index = function(t, mapID)
	local exploredMapTextures = C_MapExplorationInfo_GetExploredMapTextures(mapID);
	if exploredMapTextures then
		local missingExplorationGroup;
		local artID = C_Map_GetMapArtID(mapID);
		local explorationByID, missingHashes = {}, {};
		rawset(t, mapID, explorationByID);
		for _,info in ipairs(exploredMapTextures) do
			if info.textureWidth > 0 and info.textureHeight > 0 then
				local maphash = info.textureWidth..":"..info.textureHeight..":"..info.offsetX..":"..info.offsetY;
				local remappedExplorationID = EXPLORATION_ID_MAP[artID][maphash];
				if remappedExplorationID then
					rawset(explorationByID, remappedExplorationID, true);
				else
					table.insert(missingHashes, maphash);
				end
			end
		end
		if #missingHashes > 0 then
			if not missingExplorationGroup then
				missingExplorationGroup = {};
				missingExplorationGroup.text = "Missing Exploration Data for Map " .. mapID;
				missingExplorationGroup.icon = "Interface\\Worldmap\\Gear_64Grey";
				missingExplorationGroup.g = {};
				missingExplorationGroup.map = setmetatable(constructor(mapID, NIL, "mapID"), app.BaseMap);
				missingExplorationGroup.map.artID = artID;
				missingExplorationGroup.map.parent = missingExplorationGroup;
				table.insert(missingExplorationGroup.g, missingExplorationGroup.map);
			end
			missingExplorationGroup.map.g = {};
			for i,maphash in ipairs(missingHashes) do
				local exploration = app.CreateExploration(-1);
				exploration.parent = missingExplorationGroup.map;
				exploration.maphash = maphash;
				table.insert(missingExplorationGroup.map.g, exploration);
				print("Missing Exploration ID for ", maphash, " for mapID ", mapID);
			end
			app.CreateMiniListForGroup(missingExplorationGroup);
		end
		return explorationByID;
	end
end };
local ExploredMapDataByID = setmetatable({}, ExploredMapDataByIDMeta);
local ExploredSubMapsByIDMeta = { __index = function(t, mapID)
	local submaps = C_Map_GetMapArtID(mapID) and ExploredMapDataByID[mapID] or {};
	rawset(t, mapID, submaps);
	return submaps;
end };
local ExploredSubMapsByID = setmetatable({}, ExploredSubMapsByIDMeta);

local fields = {
	["key"] = function(t)
		return "explorationID";
	end,
	["text"] = function(t)
		return C_Map.GetAreaInfo(t.explorationID) or t.maphash;
	end,
	["title"] = function(t)
		return t.maphash;
	end,
	["icon"] = function(t)
		return app.asset("INV_Misc_Map02");
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
	["mapID"] = function(t)
		return t.parent and (t.parent.mapID or (t.parent.parent and t.parent.parent.mapID));
	end,
	["collectible"] = function(t)
		return app.CollectibleExploration;
	end,
	["collected"] = function(t)
		return t.exploredMapTextureInfo and 1;
	end,
	["exploredMapTextureInfo"] = function(t)
		local exploredMapTextures = C_MapExplorationInfo_GetExploredMapTextures(t.mapID)
		if exploredMapTextures then
			for i,info in ipairs(exploredMapTextures) do
				local maphash = info.textureWidth..":"..info.textureHeight..":"..info.offsetX..":"..info.offsetY;
				if maphash == t.maphash then
					rawset(t, "exploredMapTextureInfo", info);
					return info;
				end
			end
		end
	end,
	["maphash"] = function(t)
		local artID = t.artID;
		if artID then
			for maphash,explorationID in pairs(EXPLORATION_ID_MAP[artID]) do
				if explorationID == t.explorationID then
					return maphash;
				end
			end
		end
	end,
	["coords"] = function(t)
		local maphash = t.maphash;
		if maphash then
			local layers = C_Map.GetMapArtLayers(t.mapID);
			if layers and layers[1] then
				local coords = {};
				local width, height, offsetX, offsetY = strsplit(":", maphash);
				tinsert(coords, {((offsetX + (width * 0.5)) * 100) / layers[1].layerWidth, ((offsetY + (height * 0.5)) * 100) / layers[1].layerHeight, t.mapID});
				return coords;
			end
		end
	end,
};
app.ExplorationClass = app.BaseObjectFields(fields);
app.CreateExploration = function(id, t)
	return setmetatable(constructor(id, t, "explorationID"), app.ExplorationClass);
end

local fields = {
	["key"] = function(t)
		return "mapID";
	end,
	["text"] = function(t)
		return rawget(t, "isRaid") and ("|cffff8000" .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return app.GetMapName(t.mapID);
	end,
	["icon"] = function(t)
		return app.asset("Category_Zones");
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
	local artID = map.artID;
	if artID and map.g then
		local exploration = EXPLORATION_ID_MAP[artID];
		local explorationHeader = nil;
		for i,o in ipairs(map.g) do
			if o.key == "headerID" and o.headerID == -15 then
				explorationHeader = o;
				if o.g then
					for j,e in ipairs(o.g) do
						exploration[e.maphash] = e.explorationID;
					end
				end
				break;
			end
		end
		
		local newExplorationObjects = {};
		local explored = C_MapExplorationInfo_GetExploredMapTextures(id);
		if explored then
			for i,info in pairs(explored) do
				local maphash = info.textureWidth..":"..info.textureHeight..":"..info.offsetX..":"..info.offsetY;
				if not exploration[maphash] then
					exploration[maphash] = -i;
					tinsert(newExplorationObjects, app.CreateExploration(-i, {artID=artID,maphash=maphash}));
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
				end
			else
				explorationHeader = app.CreateNPC(-15, newExplorationObjects);
				tinsert(map.g, 1, explorationHeader);
			end
		end
		if explorationHeader and explorationHeader.g then
			table.sort(explorationHeader.g, function(a, b)
				if a and a.text then
					if b and b.text then
						return a.text <= b.text;
					end
					return true;
				end
				return false;
			end);
		end
	end
	return map;
end

app.events.MAP_EXPLORATION_UPDATED = function(...)
	wipe(ExploredMapDataByID);
	wipe(ExploredSubMapsByID);
	app.CurrentMapID = app.GetCurrentMapID();
	if #ExploredMapDataByID[app.CurrentMapID] > 0 then
		-- Do nothing.
	end
	app:RefreshData(true, true);
end
app.events.ZONE_CHANGED = function()
	app.CurrentMapID = app.GetCurrentMapID();
end
app.events.ZONE_CHANGED_NEW_AREA = function()
	app.CurrentMapID = app.GetCurrentMapID();
end
app:RegisterEvent("MAP_EXPLORATION_UPDATED");
app:RegisterEvent("ZONE_CHANGED");
app:RegisterEvent("ZONE_CHANGED_NEW_AREA");
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
		return L["OBJECT_ID_NAMES"][t.objectID] or ("Object ID #" .. t.objectID);
	end,
	["icon"] = function(t)
		return L["OBJECT_ID_ICONS"][t.objectID] or "Interface\\Icons\\INV_Misc_Bag_10";
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
	[40] = 2842,	-- Poison
	
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
}, {__index = function(t,k) return k; end})

local BLACKSMITHING = ATTC.SkillIDToSpellID[164];
local LEATHERWORKING = ATTC.SkillIDToSpellID[165];
local TAILORING = ATTC.SkillIDToSpellID[197];
app.OnUpdateForOmarionsHandbook = function(t)
	t.visible = true;
	rawset(t, "collectible", nil);
	if app.Settings:Get("DebugMode") or app.Settings:Get("AccountMode") or CompletedQuests[9233] then
		return false;
	else
		for spellID,skills in pairs(app.CurrentCharacter.ActiveSkills) do
			if (spellID == BLACKSMITHING or spellID == LEATHERWORKING or spellID == TAILORING) and skills[1] > 290 then
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
						return L["OBJECT_ID_ICONS"][v[2]] or "Interface\\Icons\\INV_Misc_Bag_10";
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
	["link"] = function(t)
		-- This might not be a thing in Classic. Investigate more!
		--return "quest:" .. t.questID;
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
	
	["collectibleAsReputation"] = function(t)
		return app.CollectibleQuests and ((not t.repeatable and not t.isBreadcrumb) or C_QuestLog.IsOnQuest(t.questID) or (app.CollectibleReputations and t.maxReputation));
	end,
	["collectedAsReputation"] = function(t)
		if app.CollectibleReputations and t.maxReputation and (select(6, GetFactionInfoByID(t.maxReputation[1])) or 0) >= t.maxReputation[2] then
			return true;
		end
		return app.CollectibleQuests and IsQuestFlaggedCompletedForObject(t);
	end,
};
app.BaseQuest = app.BaseObjectFields(questFields);

local fields = RawCloneData(questFields);
fields.collectible = questFields.collectibleAsReputation;
fields.collected = questFields.collectedAsReputation;
app.BaseQuestWithReputation = app.BaseObjectFields(fields);
app.CreateQuest = function(id, t)
	if t and rawget(t, "maxReputation") then
		return setmetatable(constructor(id, t, "questID"), app.BaseQuestWithReputation);
	end
	return setmetatable(constructor(id, t, "questID"), app.BaseQuest);
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
			return RETRIEVING_DATA;
		end
		return "INVALID: Must be relative to a Quest Object.";
	end,
	["icon"] = function(t)
		if t.providers then
			for k,v in ipairs(t.providers) do
				if v[2] > 0 then
					if v[1] == "o" then
						return L["OBJECT_ID_ICONS"][v[2]] or "Interface\\Worldmap\\Gear_64Grey";
					elseif v[1] == "i" then
						return select(5, GetItemInfoInstant(v[2])) or "Interface\\Worldmap\\Gear_64Grey";
					end
				end
			end
		end
		return t.parent.icon or "Interface\\Worldmap\\Gear_64Grey";
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
		return false;
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
		local numSpellTabs, offset, lastSpellName, currentSpellRank = GetNumSpellTabs(), select(4, GetSpellTabInfo(1)), "", 1;
		for spellTabIndex=2,numSpellTabs do
			local numSpells = select(4, GetSpellTabInfo(spellTabIndex));
			for spellIndex=1,numSpells do
				local spellName, _, _, _, _, _, spellID = GetSpellInfo(offset + spellIndex, BOOKTYPE_SPELL);
				if lastSpellName == spellName then
					currentSpellRank = currentSpellRank + 1;
				else
					lastSpellName = spellName;
					currentSpellRank = 1;
				end
				app.GetSpellName(spellID, currentSpellRank);
				rawset(app.SpellNameToSpellID, spellName, spellID);
			end
			offset = offset + numSpells;
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
		return t.craftTypeID and Colorize(t.name, CraftTypeIDToColor(t.craftTypeID)) or t.name;
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
		if app.CurrentCharacter.Spells[t.spellID] then return 1; end
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
		if GetRelativeValue(t, "requireSkill") == 333 then
			return "|cffffffff|Henchant:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
		else
			return "|cffffffff|Hspell:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
		end
	end,
	["nameAsItem"] = function(t)
		return select(2, GetItemInfo(t.itemID)) or t.nameAsSpell;
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
			["description"] = L["CLASSIC_TIER_DESC"],
		},
		{	-- Burning Crusade
			["text"] = "Burning Crusade",
			["icon"] = app.asset("Expansion_TBC"),
			["description"] = L["TBC_TIER_DESC"],
			["lvl"] = 55,
		},
		{	-- Wrath of the Lich King
			["text"] = "Wrath of the Lich King",
			["icon"] = app.asset("Expansion_WOTLK"),
			["description"] = L["WOTLK_TIER_DESC"],
			["lvl"] = 65,
		},
		{	-- Cataclysm
			["text"] = "Cataclysm",
			["icon"] = app.asset("Expansion_CATA"),
			["description"] = L["CATA_TIER_DESC"],
			["lvl"] = 75,
		},
		{	-- Mists of Pandaria
			["text"] = "Mists of Pandaria",
			["icon"] = app.asset("Expansion_MOP"),
			["description"] = L["MOP_TIER_DESC"],
			["lvl"] = 82,
		},
		{	-- Warlords of Draenor
			["text"] = "Warlords of Draenor",
			["icon"] = app.asset("Expansion_WOD"),
			["description"] = L["WOD_TIER_DESC"],
			["lvl"] = 88,
		},
		{	-- Legion
			["text"] = "Legion",
			["icon"] = app.asset("Expansion_LEGION"),
			["description"] = L["LEGION_TIER_DESC"],
			["lvl"] = 98,
		},
		{	-- Battle for Azeroth
			["text"] = "Battle for Azeroth",
			["icon"] = app.asset("Expansion_BFA"),
			["description"] = L["BFA_TIER_DESC"],
			["lvl"] = 108,
		},
		{	-- Shadowlands
			["text"] = "Shadowlands",
			["icon"] = app.asset("Expansion_SL"),
			["description"] = L["SL_TIER_DESC"],
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
			and app.RaceRequirementFilter(item);
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
				end
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
								if sq and sq.questID then
									questID = sq.questID;
									if sq.parent and sq.parent.questID == questID then
										sq = sq.parent;
									end
									if app.GroupFilter(sq) and not sq.isBreadcrumb then
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
			if reason and not reason[4] then
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
						local d = L["UNOBTAINABLE_ITEM_REASONS"][reference.u];
						if d and not d[4] then GameTooltip:AddLine(d[2], 1, 1, 1, true); end
					end
					AttachTooltipSearchResults(GameTooltip, "itemID:" .. reference.itemID, SearchForField, "itemID", reference.itemID);
				end
			elseif reference.currencyID then
				GameTooltip:SetCurrencyByID(reference.currencyID, 1);
			else
				local link = reference.link;
				if link then pcall(GameTooltip.SetHyperlink, GameTooltip, link); end
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
					table.sort(knownBy, function(a, b)
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
			if #reference.coords > 8 then
				GameTooltip:AddDoubleLine("Coordinates", "Literally everywhere.", 1, 1, 1, 1, 1, 1);
			else
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
				local providerType = provider[1]
				local providerID = provider[2] or 0
				local providerString = "UNKNOWN"
				if providerType == "o" then
					providerString = L["OBJECT_ID_NAMES"][providerID] or reference.text or 'Object #'..providerID
				elseif providerType == "n" then
					providerString = (providerID > 0 and NPCNameFromID[providerID]) or "Creature #"..providerID
				elseif providerType == "i" then
					local name = GetItemInfo(providerID)
					providerString = name or 'Item #'..providerID
				end
				GameTooltip:AddDoubleLine(counter == 0 and "Provider(s)" or " ", providerString .. ' (' .. providerID .. ')');
				counter = counter + 1;
			end
		end
		if reference.description and app.Settings:GetTooltipSetting("Descriptions") and not reference.itemID then
			local found = false;
			for i=1,GameTooltip:NumLines() do
				if _G["GameTooltipTextLeft"..i]:GetText() == reference.description then
					found = true;
					break;
				end
			end
			if not found then GameTooltip:AddLine(reference.description, 0.4, 0.8, 1, 1); end
		end
		if not reference.itemID then
			if reference.questID and not reference.objectiveID then
				local objectified = false;
				local questLogIndex = GetQuestLogIndexByID(reference.questID);
				if questLogIndex then
					local description, objective = GetQuestLogQuestText(questLogIndex);
					if description and app.Settings:GetTooltipSetting("Descriptions") then GameTooltip:AddLine(description, 0.4, 0.8, 1, 1); end
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
				local d = L["UNOBTAINABLE_ITEM_REASONS"][reference.u];
				if d and not d[4] then GameTooltip:AddLine(d[2], 1, 1, 1, true); end
			end
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
							if sq.questID == sourceQuestID then
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
			db.text = TRANSMOG_SOURCE_4;
			db.icon = app.asset("Category_WorldDrops");
			db.g = app.Categories.WorldDrops;
			table.insert(g, db);
		end

		-- PvP
		if app.Categories.PvP then
			db = {};
			db.text = PVP;
			db.icon = app.asset("Category_PvP");
			db.g = app.Categories.PvP;
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
		
		-- Holidays
		if app.Categories.Holidays then
			db = app.CreateNPC(-5, app.Categories.Holidays);
			db.description = "These events occur at consistent dates around the year based on and themed around real world holiday events.";
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
			db.expanded = false;
			table.insert(g, db);
		end
		
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
			table.sort(self.g, function(a, b)
				return a.text < b.text;
			end);
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
			table.sort(self.g, function(a, b)
				return a.text < b.text;
			end);
		end;
		flightPathsCategory:OnUpdate();
		
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
			table.sort(missingCoordinates);
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
			StartCoroutine(window:GetName() .. ":DelayedUpdate", DelayedUpdateCoroutine);
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
						['description'] = "These are players attuned to Molten Core.\n\nPeople can whisper you '!mc' to mark themselves attuned.",
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
						['description'] = "These are players attuned to Onyxia's Lair.\n\nPeople can whisper you '!ony' to mark themselves attuned.",
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
						['icon'] = "Interface\\Icons\\INV_Misc_Head_Dragon_01",
						['description'] = "These are players attuned to Blackwing Lair.\n\nPeople can whisper you '!bwl' to mark themselves attuned.",
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
						['description'] = "These are players attuned to Naxxramas.\n\nPeople can whisper you '!naxx' to mark themselves attuned.",
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
				},
			};
			selectedInstance = instances.options[5];
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
					
					
					local nameToGUID = {};
					local groupMembers = {};
					local count = GetNumGroupMembers();
					if count > 0 then
						for raidIndex = 2, 40, 1 do
							local name = GetRaidRosterInfo(raidIndex);
							if name then
								local unit = app.CreateQuestUnit(name);
								local guid = unit.guid;
								if guid then nameToGUID[name] = guid; end
								table.insert(groupMembers, unit);
							end
						end
					end
					
					-- Sort Member List
					table.sort(groupMembers, data.Sort);
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
											if name then nameToGUID[name] = guid; end
											local a = guildRanks[rankIndex + 1];
											if a then table.insert(a.g, unit); end
										end
									end
								end
								
								local any = false;
								for rankIndex = 1, numRanks, 1 do
									if #guildRanks[rankIndex].g > 0 then
										table.sort(guildRanks[rankIndex].g, data.Sort);
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
							local guid = nameToGUID[message[1]];
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
				local header = app.CreateMap(self.mapID, { g = groups });
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
							if group.headerID ~= -17 then clone = app.CreateNPC(-17, { g = { clone } }); end
						end
						if holidayID then clone = app.CreateHoliday(holidayID, { g = { clone } }); end
						MergeObject(holidaysHeader.g, clone);
					elseif group.key == "mapID" then
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
					elseif group.key == "questID" then
						MergeObject(questsHeader.g, clone, 1);
					elseif group.key == "factionID" then
						MergeObject(factionsHeader.g, clone);
					elseif group.key == "explorationID" then
						MergeObject(explorationHeader.g, clone);
					elseif group.key == "flightPathID" then
						MergeObject(flightPathsHeader.g, clone);
					else
						MergeObject(groups, clone);
					end
				end
				
				-- Swap out the map data for the header.
				results = header;
				
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
			db.blacklist = {
				[25]=1,
				[35]=1,
				[36]=1,
				[37]=1,
				[39]=1,
				[40]=1,
				[41]=1,
				[42]=1,
				[43]=1,
				[44]=1,
				[46]=1,
				[47]=1,
				[48]=1,
				[50]=1,
				[51]=1,
				[52]=1,
				[54]=1,
				[55]=1,
				[56]=1,
				[57]=1,
				[58]=1,
				[59]=1,
				[77]=1,
				[85]=1,
				[86]=1,
				[87]=1,
				[88]=1,
			};
			db.OnUpdate = function(db)
				if self:IsVisible() then
					local iCache = fieldCache["itemID"];
					for i=761,23720 do
						if not iCache[i] then
							local t = app.CreateItem(i);
							t.parent = db;
							t.fails = 0;
							t.OnUpdate = function(source)
								local text = source.text;
								if text and text ~= RETRIEVING_DATA then
									source.OnUpdate = nil;
								else
									source.fails = source.fails + 1;
									self.shouldFullRefresh = true;
								end
							end
							tinsert(db.g, t);
						end
					end
					db.OnUpdate = function(self)
						local g = self.g;
						if g then
							local count = #g;
							if count > 0 then
								for i=count,1,-1 do
									if g[i].fails > 2 then
										table.remove(g, i);
									end
								end
							end
						end
					end;
					
				end
			end
			db.text = "Item Finder";
			db.icon = app.asset("Achievement_Dungeon_GloryoftheRaider");
			db.description = "This is a contribution debug tool. NOT intended to be used by the majority of the player base.\n\nUsing this tool will lag your WoW every 5 seconds. Not sure why - likely a bad Blizzard Database thing.";
			db.visible = true;
			db.expanded = true;
			db.progress = 0;
			db.total = 0;
			db.back = 1;
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
					table.sort(g, data.Sort);
					
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
										table.sort(guildRanks[rankIndex].g, data.Sort);
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
					
					if craftSkillID ~= 0 then
						local numberOfCrafts, spellID = GetNumCrafts();
						for craftIndex = 1,numberOfCrafts do
							spellID = 0;
							local craftName, craftSubSpellName, craftType, numAvailable, isExpanded, trainingPointCost, requiredLevel = GetCraftInfo(craftIndex);
							if craftType ~= "header" then
								spellID = craftSubSpellName and (select(7, GetSpellInfo(craftName, craftSubSpellName)) or app.SpellNameToSpellID[craftName .. " (" .. craftSubSpellName .. ")"]) or app.SpellNameToSpellID[craftName];
								if spellID then
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
									NPCHarvester:SetCraftSpell(craftIndex);
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
						
						local numTradeSkills = GetNumTradeSkills();
						for skillIndex = 1,numTradeSkills do
							local skillName, skillType, numAvailable, isExpanded = GetTradeSkillInfo(skillIndex);
							if skillType ~= "header" then
								local spellID = app.SpellNameToSpellID[skillName];
								if spellID then
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
					else
						tradeSkillID = 0;
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
								local requireSkill = cache.requireSkill;
								local response = app:BuildSearchResponse(app.Categories.Instances, "requireSkill", requireSkill);
								if response then tinsert(cache.g, {text=GROUP_FINDER,icon = app.asset("Category_D&R"),g=response}); end
								response = app:BuildSearchResponse(app.Categories.Zones, "requireSkill", requireSkill);
								if response then tinsert(cache.g, {text=BUG_CATEGORY2,icon = app.asset("Category_Zones"),g=response});  end
								response = app:BuildSearchResponse(app.Categories.WorldDrops, "requireSkill", requireSkill);
								if response then tinsert(cache.g, {text=TRANSMOG_SOURCE_4,icon = app.asset("Category_WorldDrops"),g=response});  end
								response = app:BuildSearchResponse(app.Categories.Craftables, "requireSkill", requireSkill);
								if response then tinsert(cache.g, {text=LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,icon = app.asset("Category_Crafting"),g=response});  end
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
			if CraftFrame and CraftFrame:IsVisible() then
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
				self:RefreshRecipes();
			elseif e == "TRADE_SKILL_SHOW" or e == "CRAFT_SHOW" then
				if self.TSMCraftingVisible == nil then
					self:SetTSMCraftingVisible(false);
				end
				self:UpdateFrameVisibility();
				if app.Settings:GetTooltipSetting("Auto:ProfessionList") then
					self:SetVisible(true);
				end
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
	
	-- Cache the Localized Flight Path Data
	ATTClassicAD.LocalizedFlightPathDB = setmetatable(ATTClassicAD.LocalizedFlightPathDB or {}, { __index = app.FlightPathDB });
	app.FlightPathDB = nil;
	
	-- Cache information about the player.
	local _, class, classIndex = UnitClass("player");
	local classInfo = C_CreatureInfo.GetClassInfo(classIndex);
	local raceName, race = UnitRace("player");
	app.Class = class;
	app.ClassIndex = classIndex;
	app.Level = UnitLevel("player");
	local raceIndex = app.RaceDB[race];
	if type(raceIndex) == "table" then
		local factionGroup = UnitFactionGroup("player");
		raceIndex = raceIndex[factionGroup];
	end
	app.Race = race;
	app.RaceIndex = raceIndex;
	local name, realm = UnitName("player");
	if not realm then realm = GetRealmName(); end
	app.GUID = UnitGUID("player");
	app.Me = "|c" .. (RAID_CLASS_COLORS[classInfo.classFile].colorStr or "ff1eff00") .. name .. "-" .. realm .. "|r";
	app.Faction = UnitFactionGroup("player");
	if app.Faction == "Horde" then
		app.FactionID = Enum.FlightPathFaction.Horde;
	elseif app.Faction == "Alliance" then
		app.FactionID = Enum.FlightPathFaction.Alliance;
	else
		-- Neutral Pandaren or... something else. Scourge? Neat.
		app.FactionID = 0;
	end
	
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
	if not currentCharacter.text then currentCharacter.text = app.Me; end
	if not currentCharacter.name and name then currentCharacter.name = name; end
	if not currentCharacter.realm and realm then currentCharacter.realm = realm; end
	if not currentCharacter.guid and app.GUID then currentCharacter.guid = app.GUID; end
	if not currentCharacter.lvl and app.Level then currentCharacter.lvl = app.Level; end
	if not currentCharacter.factionID and app.FactionID then currentCharacter.factionID = app.FactionID; end
	if not currentCharacter.classID and app.ClassIndex then currentCharacter.classID = app.ClassIndex; end
	if not currentCharacter.raceID and app.RaceIndex then currentCharacter.raceID = app.RaceIndex; end
	if not currentCharacter.class and class then currentCharacter.class = class; end
	if not currentCharacter.race and race then currentCharacter.race = race; end
	if not currentCharacter.Deaths then currentCharacter.Deaths = 0; end
	if not currentCharacter.ActiveSkills then currentCharacter.ActiveSkills = {}; end
	if not currentCharacter.Factions then currentCharacter.Factions = {}; end
	if not currentCharacter.FlightPaths then currentCharacter.FlightPaths = {}; end
	if not currentCharacter.Lockouts then currentCharacter.Lockouts = {}; end
	if not currentCharacter.Quests then currentCharacter.Quests = {}; end
	if not currentCharacter.Spells then currentCharacter.Spells = {}; end
	if not currentCharacter.SpellRanks then currentCharacter.SpellRanks = {}; end
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
	if not accountWideData.Deaths then accountWideData.Deaths = 0; end
	if not accountWideData.Factions then accountWideData.Factions = {}; end
	if not accountWideData.FlightPaths then accountWideData.FlightPaths = {}; end
	if not accountWideData.Quests then accountWideData.Quests = {}; end
	if not accountWideData.Spells then accountWideData.Spells = {}; end
	
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
	ATTClassicAuctionData = nil;
	
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
	app:RegisterEvent("SKILL_LINES_CHANGED");
	StartCoroutine("RefreshSaves", RefreshSaves);
	app:RefreshData(false);
	app:RefreshLocation();
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
					["icon"] = "INTERFACE/ICONS/INV_DARKMOON_EYE",
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
				["icon"] = "Interface/ICONS/ACHIEVEMENT_GUILDPERK_BARTERING",
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
					if entry.filterID then
						local filterData = filteredItems[entry.filterID];
						if not filterData then
							filterData = {};
							filteredItems[entry.filterID] = filterData;
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
			table.sort(window.data.g, function(a, b)
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
					if a == "q" then
						response = "q";
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (IsQuestFlaggedCompleted(b) and 1 or 0);
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
app.events.SKILL_LINES_CHANGED = function()
	RefreshSkills();
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