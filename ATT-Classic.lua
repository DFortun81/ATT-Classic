--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--				Copyright 2017-2019 Dylan Fortune (Crieve-Sargeras)           --
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
local InCombatLockdown = _G["InCombatLockdown"];
local MAX_CREATURES_PER_ENCOUNTER = 9;
local DESCRIPTION_SEPARATOR = "`";

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
					print(err);
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
local GameTooltipModel, model, fi = CreateFrame("FRAME", "ATTGameTooltipModel", GameTooltip);
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
GameTooltipModel.TrySetDisplayInfos = function(self, reference, displayInfos)
	if displayInfos then
		local count = #displayInfos;
		if count > 0 then
			local rotation = reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION;
			local scale = reference.modelScale or 1;
			if count > 1 then
				count = math.min(count, MAX_CREATURES_PER_ENCOUNTER);
				local ratio = count / MAX_CREATURES_PER_ENCOUNTER;
				if count < 3 then
					for i=1,count do
						model = self.Models[i];
						model:SetDisplayInfo(displayInfos[i]);
						model:SetCamDistanceScale(scale);
						model:SetFacing(rotation);
						model:SetPosition(0, (i % 2 == 0 and 0.5 or -0.5), 0);
						model:Show();
					end
				else
					scale = (1 + (ratio * 0.5)) * scale;
					for i=1,count do
						model = self.Models[i];
						model:SetDisplayInfo(displayInfos[i]);
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
				self.Model:SetDisplayInfo(displayInfos[1]);
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
		local displayInfos = reference.displayInfo;
		if GameTooltipModel.TrySetDisplayInfos(self, reference, displayInfos) then
			return true;
		elseif reference.qgs then
			if #reference.qgs > 1 then
				displayInfos = {};
				local markedKeys = {};
				for i,creatureID in ipairs(reference.qgs) do
					local displayID = app.NPCDisplayIDFromID[creatureID];
					if displayID and not markedKeys[displayID] then
						tinsert(displayInfos, displayID);
						markedKeys[displayID] = 1;
					end
				end
				if GameTooltipModel.TrySetDisplayInfos(self, reference, displayInfos) then
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

app.yell = function(msg)
	UIErrorsFrame:AddMessage(msg or "nil", 1, 0, 0);
	app:PlayRemoveSound();
end
app.print = function(...)
	print(L["TITLE"], ...);
end

-- audio lib
local lastPlayedFanfare;
function app:PlayCompleteSound()
	if app.Settings:GetTooltipSetting("Celebrate") then
		PlayAudio(app.Settings.AUDIO_COMPLETE_TABLE);
	end
end
function app:PlayDeathSound()
	if app.Settings:GetTooltipSetting("Celebrate") then
		PlayAudio(app.Settings.AUDIO_DEATH_TABLE);
	end
end
function app:PlayFanfare()
	if app.Settings:GetTooltipSetting("Celebrate") then
		-- Don't spam the users. It's nice sometimes, but let's put a delay of at least 1 second on there.
		local now = time();
		if lastPlayedFanfare and (now - lastPlayedFanfare) < 1 then return nil; end
		lastPlayedFanfare = now;
		PlayAudio(app.Settings.AUDIO_FANFARE_TABLE);
	end
end
function app:PlayRareFindSound()
	if app.Settings:GetTooltipSetting("Celebrate") then
		PlayAudio(app.Settings.AUDIO_RAREFIND_TABLE);
	end
end
function app:PlayRemoveSound()
	if app.Settings:GetTooltipSetting("Warn:Removed") then
		PlayAudio(app.Settings.AUDIO_REMOVE_TABLE);
	end
end
function PlayAudio(targetAudio)
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
	else
		local title = L["NPC_ID_NAMES"][id];
		rawset(t, id, title);
		return title;
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
	if group.parent then
		if l < 1 then
			if group.dr then
				return BuildSourceText(group.parent, l + 1) .. DESCRIPTION_SEPARATOR .. "|c" .. GetProgressColor(group.dr * 0.01) .. tostring(group.dr) .. "%|r";
			else
				return BuildSourceText(group.parent, l + 1);
			end
		else
			return BuildSourceText(group.parent, l + 1) .. " -> " .. (group.text or "*");
		end
	end
	return group.text or "*";
end
local function BuildSourceTextForChat(group, l)
	if group.parent then
		if l < 1 then
			if group.dr then
				return BuildSourceTextForChat(group.parent, l + 1) .. DESCRIPTION_SEPARATOR .. "|c" .. GetProgressColor(group.dr * 0.01) .. tostring(group.dr) .. "%|r";
			else
				return BuildSourceTextForChat(group.parent, l + 1);
			end
		else
			return BuildSourceTextForChat(group.parent, l + 1) .. " -> " .. (group.text or "*");
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
local function GetRelativeMap(group, currentMapID)
	if group then
		if group.mapID then return group.mapID; end
		if group.maps then
			if contains(group.maps, currentMapID) then
				return currentMapID;
			else
				return group.maps[1];
			end
		end
		if group.parent then return GetRelativeMap(group.parent, currentMapID); end
	end
	return currentMapID;
end
local function GetRelativeField(group, field, value)
	if group then
		if group[field] then
			if group[field] == value then
				return true;
			end
		end
		if group.parent then return GetRelativeField(group.parent, field, value); end
	end
end
local function GetRelativeValue(group, field)
	if group then
		if group[field] then return group[field]; end
		if group.parent then return GetRelativeValue(group.parent, field); end
	end
end

-- Quest Completion Lib
local DirtyQuests = {};
local CompletedQuests = setmetatable({}, {__newindex = function (t, key, value)
	if value then
		rawset(t, key, value);
		rawset(DirtyQuests, key, true);
		SetDataSubMember("CollectedQuests", key, 1);
		SetTempDataSubMember("CollectedQuests", key, 1);
		if app.Settings:GetTooltipSetting("Report:CompletedQuests") then
			local searchResults = app.SearchForField("questID", key);
			if searchResults and #searchResults > 0 then
				if app.Settings:GetTooltipSetting("Report:UnsortedQuests") then
					return true;
				end
			else
				key = key .. " (Missing in ATT)";
			end
			print("Completed Quest ID #" .. key);
		end
	end
end});
local IsQuestFlaggedCompleted = function(questID)
	return questID and CompletedQuests[questID];
end
local IsQuestFlaggedCompletedForObject = function(t)
	-- If the quest or altQuestID is completed, then return completed.
	if IsQuestFlaggedCompleted(t.questID) or IsQuestFlaggedCompleted(t.altQuestID) then
		return 1;
	end
	if not t.repeatable and app.AccountWideQuests then
		if t.questID and GetDataSubMember("CollectedQuests", t.questID) then
			return 2;
		end
		if t.altQuestID and GetDataSubMember("CollectedQuests", t.altQuestID) then
			return 2;
		end
	end
	if t.altQuests then
		for i,questID in ipairs(t.altQuests) do
			if IsQuestFlaggedCompleted(questID) then
				return 2;
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
	"recipeID",
	"spellID",
	"classID",
	"professionID",
	"categoryID",
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
		if key == "criteriaID" and t.achID then hash = hash .. ":" .. t.achID; end
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
				t = app.CreateRecipe(t.spellID, t);
			elseif t.itemID then
				t = app.CreateItem(t.itemID, t);
			elseif t.classID then
				t = app.CreateCharacterClass(t.classID, t);
			elseif t.npcID or t.creatureID then
				t = app.CreateNPC(t.npcID or t.creatureID, t);
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
		if app.GroupRequirementsFilter(group) and app.GroupFilter(group) then
			local right = nil;
			if group.total and (group.total > 1 or (group.total > 0 and not group.collectible)) then
				if (group.progress / group.total) < 1 or app.Settings:Get("Show:CompletedGroups") then
					right = GetProgressColorText(group.progress, group.total);
				end
			elseif paramA and paramB and (not group[paramA] or (group[paramA] and group[paramA] ~= paramB)) then
				if group.collectible then
					if group.collected or (group.trackable and group.saved) then
						if app.Settings:Get("Show:CollectedThings") then
							right = L["COLLECTED_ICON"];
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
					right = "---";
				end
			end
			
			-- If there's progress to display, then let's summarize a bit better.
			if right then
				-- If this group has a droprate, add it to the display.
				if group.dr then right = "|c" .. GetProgressColor(group.dr * 0.01) .. tostring(group.dr) .. "%|r " .. right; end
				
				-- Insert into the display.
				local o = { prefix = indent, group = group, right = right };
				if group.u then o.prefix = string.sub(o.prefix, 4) .. "|T" .. L["UNOBTAINABLE_ITEM_TEXTURES"][L["UNOBTAINABLE_ITEM_REASONS"][group.u][1]] .. ":0|t "; end
				tinsert(entries, o);
				
				-- Only go down one more level.
				if layer < 2 and group.g and paramA == "creatureID" and #group.g > 0 and not group.symbolized then
					BuildContainsInfo(group.g, entries, paramA, paramB, indent .. " ", layer + 1);
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
		local working, info = false, {};
		cache = { now, 100000000 };
		searchCache[search] = cache;
		
		-- Call to the method to search the database.
		local group, a, b = method(paramA, paramB, ...);
		if not group then group = {}; end
		if a then paramA = a; end
		if b then paramB = b; end
		
		-- For Creatures that are inside of an instance, we only want the data relevant for the instance.
		if paramA == "creatureID" then
			if not app.Settings:Get("DebugMode") then
				local regroup = {};
				if app.Settings:Get("AccountMode") then
					for i,j in ipairs(group) do
						if app.RecursiveUnobtainableFilter(j) then
							tinsert(regroup, j);
						end
					end
				else
					for i,j in ipairs(group) do
						if app.RecursiveClassAndRaceFilter(j) and app.RecursiveUnobtainableFilter(j) then
							tinsert(regroup, j);
						end
					end
				end
				
				group = regroup;
			end
			
			if group and #group > 0 then
				if app.Settings:GetTooltipSetting("Descriptions") then
					for i,j in ipairs(group) do
						if j.description and j[paramA] and j[paramA] == paramB then
							tinsert(info, 1, { left = j.description, wrap = true, color = "ff66ccff" });
						end
					end
				end
				local subgroup = {};
				table.sort(group, function(a, b)
					return not (a.npcID and a.npcID == -1) and b.npcID and b.npcID == -1;
				end);
				for i,j in ipairs(group) do
					if j.g and not (j.achievementID and j.parent.difficultyID) and j.npcID ~= 0 then
						for k,l in ipairs(j.g) do
							tinsert(subgroup, l);
						end
					else
						tinsert(subgroup, j);
					end
				end
				group = subgroup;
			end
		elseif paramA == "achievementID" then
			-- Don't do anything for things linked to maps.
			local regroup = {};
			local criteriaID = ...;
			if app.Settings:Get("AccountMode") then
				for i,j in ipairs(group) do
					if j.criteriaID == criteriaID and app.RecursiveUnobtainableFilter(j) then
						if j.mapID or j.parent == nil or j.parent.parent == nil then
							tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
						else
							tinsert(regroup, j);
						end
					end
				end
			else
				for i,j in ipairs(group) do
					if j.criteriaID == criteriaID and app.RecursiveClassAndRaceFilter(j) and app.RecursiveUnobtainableFilter(j) then
						if j.mapID or j.parent == nil or j.parent.parent == nil then
							tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
						else
							tinsert(regroup, j);
						end
					end
				end
			end
			
			group = regroup;
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
		elseif paramA == "followerID" then
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
					local _, itemID2, enchantId, gemId1, gemId2, gemId3, gemId4, suffixId, uniqueId, linkLevel, specializationID, upgradeId, difficultyID, numBonusIds = strsplit(":", itemString);
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
					elseif kind == "achievementid" then
						paramA = "achievementID";
						paramB = id;
					end
				end
			elseif paramA == "itemID" then
				itemID = paramB;
			end
			
			if itemID then
				-- Show the unobtainable source text
				for i,j in ipairs(group.g or group) do
					if j.itemID == itemID then
						if j.u and (not j.crs or paramA == "itemID") then
							tinsert(info, { left = L["UNOBTAINABLE_ITEM_REASONS"][j.u][2] });
							break;
						end
					end
				end
				if app.Settings:GetTooltipSetting("itemID") then tinsert(info, { left = L["ITEM_ID"], right = tostring(itemID) }); end
				if app.Settings:GetTooltipSetting("SpecializationRequirements") then
					local specs = GetItemSpecInfo(itemID);
					if specs then
						if #specs > 0 then
							table.sort(specs);
							local spec_label = "";
							local atleastone = false;
							for key, specID in ipairs(specs) do
								local id, name, description, icon, role, class = GetSpecializationInfoByID(specID);
								if class == app.Class then
									spec_label = spec_label .. "  |T" .. icon .. ":0|t " .. name;
									atleastone = true;
								end
							end
							if atleastone then
								tinsert(info, { right = spec_label });
							else
								tinsert(info, { right = "Not available in Personal Loot." });
							end
						else
							tinsert(info, { right = "Not available in Personal Loot." });
						end
					end
				end
				
				local reagentCache = app.GetDataSubMember("Reagents", itemID);
				if reagentCache then
					--[[
					for recipeID,count in pairs(reagentCache[1]) do
						local searchResults = SearchForField("spellID", recipeID);
						if searchResults then
							for i,o in ipairs(searchResults) do
								if not contains(group, o) then
									tinsert(group, o);
								end
							end
						end
					end
					]]--
					if select(14, GetItemInfo(itemID)) == 1 and not app.Settings:Get("DebugMode") then
						if not app.AppliedSkillIDToNPCIDs then
							app.AppliedSkillIDToNPCIDs = true;
							local skillIDMap = {
								[-178] = 20222, 										-- Goblin Engineering
								[-179] = 20219, 										-- Gnomish Engineering
								[-180] = 171,				 							-- Alchemy
								[-181] = 164,				 							-- Blacksmithing
								[-182] = 333,				 							-- Enchanting
								[-183] = 202,				 							-- Engineering
								[-184] = 182,				 							-- Herbalism
								[-185] = 773,				 							-- Inscription
								[-186] = 755,				 							-- Jewelcrafting
								[-187] = 165,				 							-- Leatherworking
								[-188] = 186,				 							-- Mining
								[-189] = 393,				 							-- Skinning
								[-190] = 197,				 							-- Tailoring
								[-191] = 794, 										-- Archaeology
								[-192] = 185, 											-- Cooking
								[-193] = 129, 										-- First Aid
								[-194] = 356, 											-- Fishing
							};
							for npcID,skillID in pairs(skillIDMap) do
								local searchResults = app.SearchForField("creatureID", npcID);
								if searchResults then
									for i,o in ipairs(searchResults) do
										o.skillID = skillID;
									end
								end
							end
						end
					
						-- If the reagent itself is BOP, then only show things you can make.
						for itemID,count in pairs(reagentCache[2]) do
							local searchResults = app.SearchForField("itemID", itemID);
							if searchResults then
								for i,o in ipairs(searchResults) do
									if not contains(group, o) then
										local skillID = GetRelativeValue(o, "skillID");
										if not skillID or app.GetTradeSkillCache()[skillID] then
											tinsert(group, o);
										end
									end
								end
							end
						end
					else
						for itemID,count in pairs(reagentCache[2]) do
							local searchResults = app.SearchForField("itemID", itemID);
							if searchResults then
								for i,o in ipairs(searchResults) do
									if not contains(group, o) then
										tinsert(group, o);
									end
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
			for i,j in ipairs(group.g or group) do
				if j.parent and not j.parent.hideText and j.parent.parent
					and (app.Settings:GetTooltipSetting("SourceLocations:Completed") or not app.IsComplete(j)) then
					local text = BuildSourceText(paramA ~= "itemID" and j.parent or j, paramA ~= "itemID" and 1 or 0);
					for source,replacement in pairs(abbrevs) do
						text = string.gsub(text, source,replacement);
					end
					if j.u then
						tinsert(unfiltered, text .. " |T" .. L["UNOBTAINABLE_ITEM_TEXTURES"][L["UNOBTAINABLE_ITEM_REASONS"][j.u][1]] .. ":0|t");
					elseif not app.RecursiveClassAndRaceFilter(j.parent) then
						tinsert(unfiltered, text .. " |TInterface\\FriendsFrame\\StatusIcon-Away:0|t");
					elseif not app.RecursiveUnobtainableFilter(j.parent) then
						tinsert(unfiltered, text .. " |TInterface\\FriendsFrame\\StatusIcon-DnD:0|t");
					else
						tinsert(temp, text);
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
					end
				end
				local count = #listing;
				if count > maximum + 1 then
					for i=count,maximum + 1,-1 do
						table.remove(listing, 1);
					end
					tinsert(listing, 1, "And " .. (count - maximum) .. " other sources...");
				end
				for i,text in ipairs(listing) do
					local left, right = strsplit(DESCRIPTION_SEPARATOR, text);
					tinsert(info, 1, { left = left, right = right, wrap = not string.find(left, " -> ") });
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
			
			group.total = (group.total or 0);
			group.progress = (group.progress or 0);
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
		
		if group.g and #group.g > 0 then
			--[[
			if app.Settings:GetTooltipSetting("Descriptions") and not (paramA == "achievementID" or paramA == "titleID") then
				for i,j in ipairs(group.g) do
					if j.description and ((j[paramA] and j[paramA] == paramB) or (paramA == "itemID" and group.key == j.key)) then
						tinsert(info, 1, { left = j.description, wrap = true, color = "ff66ccff" });
					end
				end
			end
			]]--
			if app.Settings:GetTooltipSetting("SummarizeThings") then
				local entries, left, right = {};
				BuildContainsInfo(group.g, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
				if #entries > 0 then
					tinsert(info, { left = "Contains:" });
					if #entries < 25 then
						for i,item in ipairs(entries) do
							left = item.group.text or RETRIEVING_DATA;
							if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
							if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
							
							-- If this group has specialization requirements, let's attempt to show the specialization icons.
							right = item.right;
							local specs = item.group.specs;
							if specs and #specs > 0 then
								table.sort(specs);
								for i,spec in ipairs(specs) do
									local id, name, description, icon, role, class = GetSpecializationInfoByID(spec);
									if class == app.Class then right = "|T" .. icon .. ":0|t " .. right; end
								end
							end
							tinsert(info, { left = item.prefix .. left, right = right });
						end
					else
						for i=1,math.min(25, #entries) do
							local item = entries[i];
							left = item.group.text or RETRIEVING_DATA;
							if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
							if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
							
							-- If this group has specialization requirements, let's attempt to show the specialization icons.
							right = item.right;
							local specs = item.group.specs;
							if specs and #specs > 0 then
								table.sort(specs);
								for i,spec in ipairs(specs) do
									local id, name, description, icon, role, class = GetSpecializationInfoByID(spec);
									if class == app.Class then right = "|T" .. icon .. ":0|t " .. right; end
								end
							end
							tinsert(info, { left = item.prefix .. left, right = right });
						end
						local more = #entries - 25;
						if more > 0 then tinsert(info, { left = "And " .. more .. " more..." }); end
					end
				end
			end
		end
		
		-- If the item is a recipe, then show which characters know this recipe.
		if group.collectible and group.spellID and group.filterID ~= 100 and app.Settings:GetTooltipSetting("KnownBy") then
			local recipes, knownBy = GetDataMember("CollectedSpellsPerCharacter"), {};
			for key,value in pairs(recipes) do
				if value[group.spellID] then
					table.insert(knownBy, key);
				end
			end
			if #knownBy > 0 then
				table.sort(knownBy);
				local desc = "Known by ";
				local characters = GetDataMember("Characters");
				for i,key in ipairs(knownBy) do
					if i > 1 then desc = desc .. ", "; end
					desc = desc .. (characters[key] or key);
				end
				tinsert(info, { left = desc, wrap = true, color = "ff66ccff" });
			end
		end
		
		-- If the user wants to show the progress of this search result, do so.
		if app.Settings:GetTooltipSetting("Progress") and (not group.spellID or #info > 0) then
			group.collectionText = (app.Settings:GetTooltipSetting("ShowIconOnly") and GetProgressTextForRow or GetProgressTextForTooltip)(group);
		end
		
		-- If there was any informational text generated, then attach that info.
		if #info > 0 then
			local uniques, dupes = {}, {};
			for i,item in ipairs(info) do
				if not item.left then
					tinsert(uniques, item);
				elseif not dupes[item.left] then
					dupes[item.left] = true;
					tinsert(uniques, item);
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

-- Lua Constructor Lib
local fieldCache = {};
local CacheFields;
local _cache;
(function()
local fieldCache_g,fieldCache_f, fieldConverters;
local function CacheField(group, field, value)
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
fieldCache["flightPathID"] = {};
fieldCache["itemID"] = {};
fieldCache["mapID"] = {};
fieldCache["objectID"] = {};
fieldCache["questID"] = {};
fieldCache["requireSkill"] = {};
fieldCache["spellID"] = {};
fieldCache["titleID"] = {};
fieldConverters = {
	-- Simple Converters
	["altQuestID"] = function(group, value)
		CacheField(group, "questID", value);
	end,
	["creatureID"] = function(group, value)
		if value > 0 then
			CacheField(group, "creatureID", value);
		end
	end,
	["currencyID"] = function(group, value)
		CacheField(group, "currencyID", value);
	end,
	["flightPathID"] = function(group, value)
		CacheField(group, "flightPathID", value);
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
	["maps"] = function(group, value)
		_cache = rawget(fieldConverters, "mapID");
		for i,mapID in ipairs(value) do
			_cache(group, mapID);
		end
	end,
	--[[
	-- TODO: Mark coordinates in a special way.
	["coord"] = function(group, value)
		if value[3] then
			rawget(fieldConverters, "mapID")(group, value[3]);
		end
	end,
	["coords"] = function(group, value)
		_cache = rawget(fieldConverters, "mapID");
		for i,coord in ipairs(value) do
			if coord[3] then
				_cache(group, coord[3]);
			end
		end
	end,
	]]--
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
	if group.mapID then
		_cache = fieldConverters.mapID;
		if _cache then _cache(group, group.mapID); end
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
		local group = app:GetDataCache();
		_cache = rawget(fieldCache, field);
		if _cache then return rawget(_cache, id), field, id; end
		return SearchForFieldRecursively(group, field, id), field, id;
	end
end
app.SearchForField = SearchForField;

-- Item Information Lib
local function SearchForLink(link)
	if string.match(link, "item") then
		-- Parse the link and get the itemID and bonus ids.
		local itemString = string.match(link, "item[%-?%d:]+") or link;
		if itemString then
			local itemID = select(2, strsplit(":", link));
			if itemID then
				return SearchForField("itemID", tonumber(itemID) or 0);
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
	if TomTom and group.visible then
		if group.coords or group.coord then
			if auto then
				if C_Map.GetMapInfo(app.GetCurrentMapID()).mapType ~= 3 then return end -- only set waypoints if the current map is a zone
				local waypointFilters = GetDataMember("WaypointFilters")
				for headerID, enabled in pairs(waypointFilters) do
					if (UnitOnTaxi("player") and not GetDataMember("EnableTomTomWaypointsOnTaxi"))
					   or (app.RecursiveIsDescendantOfParentWithValue(group, "npcID", headerID) and not enabled)
					   or (GetDataMember("TomTomIgnoreCompletedObjects") and app.IsComplete(group))
					then
						return
					end
				end
			end
			local opt = {
				title = group.text or group.link,
				persistent = nil,
				minimap = true,
				world = true
			};
			if group.title then opt.title = opt.title .. "\n" .. group.title; end
			local defaultMapID = GetRelativeMap(group, app.GetCurrentMapID());
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
local function RefreshSavesCoroutine()
	local waitTimer = 30;
	while waitTimer > 0 do
		coroutine.yield();
		waitTimer = waitTimer - 1;
	end
	
	-- While the player is in combat, wait for combat to end.
	while InCombatLockdown() do coroutine.yield(); end
	
	-- While the player is still logging in, wait.
	while not app.GUID do coroutine.yield(); end
	
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
	
	-- Cache the lockouts across your account.
	local serverTime = GetServerTime();
	local lockouts = GetDataMember("lockouts");
	local myLockouts = GetTempDataMember("lockouts");
	
	-- Check to make sure that the old instance data has expired
	for character,locks in pairs(lockouts) do
		local lockCount = 0;
		for name,lock in pairs(locks) do
			if serverTime >= lock.reset then
				-- Clean this up.
				lock[name] = nil;
			else
				lockCount = lockCount + 1;
			end
		end
		if lockCount == 0 then
			-- Clean this up.
			lockouts[character] = nil;
		end
	end
	
	-- Update Saved Instances
	local converter = L["SAVED_TO_DJ_INSTANCES"];
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
local function RefreshSaves()
	StartCoroutine("RefreshSaves", RefreshSavesCoroutine);
end
local function RefreshCollections()
	StartCoroutine("RefreshingCollections", function()
		while InCombatLockdown() do coroutine.yield(); end
		app.print("Refreshing collection...");
		app.events.QUEST_LOG_UPDATE();
		
		-- Wait a frame before harvesting item collection status.
		coroutine.yield();
		
		-- Harvest Item Collections that are used by the addon.
		app:GetDataCache();
		
		-- Refresh the Collection Windows!
		app:RefreshData(false, false, true);
		collectgarbage();
		
		-- Report success.
		app.print("Done refreshing collection.");
	end);
end
local function RefreshMountCollection()
	StartCoroutine("RefreshMountCollection", function()
		while InCombatLockdown() do coroutine.yield(); end
		
		-- Cache current counts
		local previousProgress = app:GetDataCache().progress or 0;
		
		-- Refresh Mounts
		local collectedSpells = GetDataMember("CollectedSpells", {});
		local collectedSpellsPerCharacter = GetTempDataMember("CollectedSpells", {});
		for i,mountID in ipairs(C_MountJournal.GetMountIDs()) do
			local _, spellID, _, _, _, _, _, _, _, _, isCollected = C_MountJournal_GetMountInfoByID(mountID);
			if spellID and isCollected then
				collectedSpells[spellID] = 1;
				collectedSpellsPerCharacter[spellID] = 1;
			end
		end
		
		-- Wait a frame before harvesting item collection status.
		coroutine.yield();
		
		-- Refresh the Collection Windows!
		app:RefreshData(false, true);
		
		-- Wait 2 frames before refreshing states.
		coroutine.yield();
		coroutine.yield();
		
		-- Compare progress
		local progress = app:GetDataCache().progress or 0;
		if progress < previousProgress then
			app:PlayRemoveSound();
		elseif progress > previousProgress then
			app:PlayFanfare();
		end
		wipe(searchCache);
		collectgarbage();
	end);
end
app.ToggleMainList = function()
	app:ToggleWindow("Prime");
end
app.RefreshCollections = RefreshCollections;
app.RefreshSaves = RefreshSaves;
app.OpenMainList = OpenMainList;

-- Tooltip Functions
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
					target = UnitGUID(target);
					if target then
						local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",target);
						-- print(target, type, npc_id);
						if type == "Player" then
							if target == "Player-76-0895E23B" then
								local leftSide = _G[self:GetName() .. "TextLeft1"];
								if leftSide then
									leftSide:SetText("|cffff8000" .. leftSide:GetText() .. "|r");
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
							end
						elseif type == "Creature" or type == "Vehicle" then
							if app.Settings:GetTooltipSetting("creatureID") then self:AddDoubleLine(L["CREATURE_ID"], tostring(npc_id)); end
							AttachTooltipSearchResults(self, "creatureID:" .. npc_id, SearchForField, "creatureID", tonumber(npc_id));
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
				
				-- Does the tooltip have an owner?
				if owner then
					-- If the owner has a ref, it's an ATT row. Ignore it.
					if owner.ref then return true; end
					
					--[[--
					-- Debug all of the available fields on the owner.
					self:AddDoubleLine("GetOwner", tostring(owner:GetName()));
					for i,j in pairs(owner) do
						self:AddDoubleLine(tostring(i), tostring(j));
					end
					self:Show();
					--]]--
					
					local gf;
					if owner.lastNumMountsNeedingFanfare then
						-- Collections
						gf = app:GetWindow("Prime").data;
					elseif owner.NewAdventureNotice then
						-- Adventure Guide
						gf = app:GetWindow("Prime").data.g[1];
					elseif owner.tooltipText then
						if type(owner.tooltipText) == "string" then 
							if owner.tooltipText == DUNGEONS_BUTTON then
								-- Group Finder
								gf = app:GetWindow("Prime").data.g[4];
							elseif owner.tooltipText == BLIZZARD_STORE then
								-- Shop
								gf = app:GetWindow("Prime").data.g[15];
							elseif string.sub(owner.tooltipText, 1, string.len(ACHIEVEMENT_BUTTON)) == ACHIEVEMENT_BUTTON then
								-- Achievements
								gf = app:GetWindow("Prime").data.g[5];
							end
						end
					end
					if gf then
						app.noDepth = true;
						AttachTooltipSearchResults(self, owner:GetName(), (function() return gf; end), owner:GetName(), 1);
						app.noDepth = nil;
						self:Show();
					end
				end
				
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

-- Category Lib
app.BaseCategory = {
	__index = function(t, key)
		if key == "key" then
			return "categoryID";
		elseif key == "text" then
			local info = app.GetDataSubMember("Categories", t.categoryID);
			if info then return info; end
			return "Open your Professions to Cache";
		elseif key == "icon" then
			return "Interface/ICONS/INV_Garrison_Blueprints1";
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateCategory = function(id, t)
	return setmetatable(constructor(id, t, "categoryID"), app.BaseCategory);
end

-- Character Class Lib
(function()
local classKeys = {
	[1] = "WARRIOR",
	[2] = "PALADIN",
	[3] = "HUNTER",
	[4] = "ROGUE",
	[5] = "PRIEST",
	[7] = "SHAMAN",
	[8] = "MAGE",
	[9] = "WARLOCK",
	[11] = "DRUID",
};
local classNames = {
	[1] = "Warrior",
	[2] = "Paladin",
	[3] = "Hunter",
	[4] = "Rogue",
	[5] = "Priest",
	[7] = "Shaman",
	[8] = "Mage",
	[9] = "Warlock",
	[11] = "Druid",
};
local classIcons = {
	[1] = "Interface\\Icons\\ClassIcon_Warrior",
	[2] = "Interface\\Icons\\ClassIcon_Paladin",
	[3] = "Interface\\Icons\\ClassIcon_Hunter",
	[4] = "Interface\\Icons\\ClassIcon_Rogue",
	[5] = "Interface\\Icons\\ClassIcon_Priest",
	[7] = "Interface\\Icons\\ClassIcon_Shaman",
	[8] = "Interface\\Icons\\ClassIcon_Mage",
	[9] = "Interface\\Icons\\ClassIcon_Warlock",
	[11] = "Interface\\Icons\\ClassIcon_Druid",
};
app.BaseCharacterClass = {
	__index = function(t, key)
		if key == "key" then
			return "classID";
		elseif key == "text" then
			local text = "|c" .. t.classColors.colorStr .. t.name .. "|r";
			rawset(t, "text", text);
			return text;
		elseif key == "name" then
			return classNames[t.classID];
		elseif key == "icon" then
			return classIcons[t.classID];
		elseif key == "c" then
			local c = { t.classID };
			rawset(t, "c", c);
			return c;
		elseif key == "classColors" then
			return RAID_CLASS_COLORS[classKeys[t.classID]];
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateCharacterClass = function(id, t)
	return setmetatable(constructor(id, t, "classID"), app.BaseCharacterClass);
end
end)();

-- Currency Lib
app.BaseCurrencyClass = {
	__index = function(t, key)
		if key == "key" then
			return "currencyID";
		elseif key == "text" then
			return GetCurrencyLink(t.currencyID, 1) or select(1, GetCurrencyInfo(t.currencyID));
		elseif key == "icon" then
			return select(3, GetCurrencyInfo(t.currencyID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateCurrencyClass = function(id, t)
	return setmetatable(constructor(id, t, "currencyID"), app.BaseCurrencyClass);
end

app.BaseDeathClass = {
	__index = function(t, key)
		if key == "key" then
			return "deaths";
		elseif key == "text" then
			return "Total Deaths";
		elseif key == "icon" then
			return "Interface\\Addons\\ATT-Classic\\assets\\Normal";
		elseif key == "collectible" then
			return true;
		elseif key == "progress" then
			return math.min(1000, GetDataMember("Deaths", 0));
		elseif key == "total" then
			return 1000;
		elseif key == "description" then
			return "The ATT Gods must be sated. Go forth and attempt to level, mortal!\n\n 'Live! Die! Live Again!'\n";
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateDeathClass = function()
	local t = setmetatable({}, app.BaseDeathClass);
	t.OnTooltip = function(self, tooltip)
		tooltip:AddLine("Total Deaths Per Character:");
		local deathsPerCharacter = GetDataMember("DeathsPerCharacter");
		if deathsPerCharacter then
			local characters = GetDataMember("Characters");
			local characterDeaths = {};
			for guid,deaths in pairs(deathsPerCharacter) do
				if deaths > 0 then
					table.insert(characterDeaths, {"  " .. characters[guid], deaths});
				end
			end
			table.sort(characterDeaths, function(a, b)
				return a[2] >= b[2];
			end);
			for i,data in ipairs(characterDeaths) do
				tooltip:AddDoubleLine(data[1], data[2], 1, 1, 1);
			end
		else
			tooltip:AddLine("  No Deaths! Literal god!");
		end
	end
	t.OnUpdate = function(self)
		t.parent.progress = t.parent.progress + t.progress;
		t.parent.total = t.parent.total + t.total;
	end
	return t;
end

-- Faction Lib
(function()
app.FACTION_RACES = {
	[1] = {
		1,	-- Human
		3,	-- Dwarf
		4,	-- Night Elf
		7,	-- Gnome
	},
	[2] = {
		2,	-- Orc
		5,	-- Undead
		6,	-- Tauren
		8,	-- Troll
		9,	-- Goblin
	}
};
local HATED, HOSTILE, UNFRIENDLY, NEUTRAL, FRIENDLY, HONORED, REVERED, EXALTED = -42000, -6000, -3000, 0, 3000, 9000, 21000, 42000;
app.BaseFaction = {
	-- name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus = GetFactionInfo(factionIndex)
	__index = function(t, key)
		if key == "key" then
			return "factionID";
		elseif key == "filterID" then
			return 112;
		elseif key == "text" then
			return app.GetFactionStandingColor(t.standing, t.name);
		elseif key == "trackable" or key == "collectible" then
			return app.CollectibleReputations;
		elseif key == "saved" or key == "collected" then
			if app.AccountWideReputations then
				if GetDataSubMember("CollectedFactions", t.factionID) then return 1; end
			else
				if GetTempDataSubMember("CollectedFactions", t.factionID) then return 1; end
			end
			if t.standing == 8 then
				SetTempDataSubMember("CollectedFactions", t.factionID, 1);
				SetDataSubMember("CollectedFactions", t.factionID, 1);
				return 1;
			end
		elseif key == "title" then
			return _G["FACTION_STANDING_LABEL" .. t.standing];
		elseif key == "icon" then
			return nil;	-- TODO: Add a faction icon?
		elseif key == "standing" then
			return select(3, GetFactionInfoByID(t.factionID)) or 4;
		elseif key == "description" then
			return select(2, GetFactionInfoByID(t.factionID)) or "Not all reputations can be viewed on a single character. IE: Warsong Outriders cannot be viewed by an Alliance Player and Silverwing Sentinels cannot be viewed by a Horde Player.";
		elseif key == "name" then
			return app.FactionDB[t.factionID] or ((select(1, GetFactionInfoByID(t.factionID)) or ("Faction #" .. t.factionID)) .. " *NEW*");
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateFaction = function(id, t)
	return setmetatable(constructor(id, t, "factionID"), app.BaseFaction);
end
app.GetFactionStanding = function(reputationPoints)
	-- total earned rep from GetFactionInfoByID is a value AWAY FROM ZERO, not a value within the standing bracket
	-- This math is awful. There's got to be a more sensible way of doing this. [Pr3vention]
	if not reputationPoints then return 0, 0
	elseif reputationPoints < HOSTILE then return 1, HATED - reputationPoints
	elseif reputationPoints < UNFRIENDLY then return 2, HOSTILE - reputationPoints
	elseif reputationPoints < NEUTRAL then return 3, UNFRIENDLY - reputationPoints
	elseif reputationPoints < FRIENDLY then return 4, reputationPoints - NEUTRAL
	elseif reputationPoints < HONORED then return 5, reputationPoints - FRIENDLY
	elseif reputationPoints < REVERED then return 6, reputationPoints - HONORED
	elseif reputationPoints < EXALTED then return 7, reputationPoints - REVERED
	elseif reputationPoints >= EXALTED then return 8, 0
	else return 0
	end
end
app.GetFactionStandingText = function(standingID)
	return app.GetFactionStandingColor(standingID, _G["FACTION_STANDING_LABEL" .. standingID]);
end
app.GetFactionStandingColor = function(standingID, text)
	if text then 
		local rgb = FACTION_BAR_COLORS[standingID];
		return Colorize(text, RGBToHex(rgb.r * 255, rgb.g * 255, rgb.b * 255));
	end
end
end)();

-- Filter Lib
app.BaseFilter = {
	__index = function(t, key)
		if key == "key" then
			return "filterID";
		elseif key == "text" then
			return L["FILTER_ID_TYPES"][t.filterID];
		elseif key == "icon" then
			return L["FILTER_ID_ICONS"][t.filterID];
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateFilter = function(id, t)
	return setmetatable(constructor(id, t, "filterID"), app.BaseFilter);
end

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
app.BaseHoliday = {
	__index = function(t, key)
		if key == "key" then
			return "holidayID";
		elseif key == "icon" then
			if t.holidayID == 235466 then return 235465; end
			return t.holidayID;
		elseif key == "text" then
			return t.info and t.info.name;
		elseif key == "eventType" then
			return 4294967295;
		elseif key == "texcoord" then
			return { 0.0, 0.7109375, 0.0, 0.7109375 };
		elseif key == "info" then
			local info = GetHolidayCache()[t.holidayID];
			if info then
				rawset(t, "info", info);
				return info;
			end
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateHoliday = function(id, t)
	return setmetatable(constructor(id, t, "holidayID"), app.BaseHoliday);
end
end)();

-- Item Lib
app.BaseItem = {
	__index = function(t, key)
		if key == "key" then
			return "itemID";
		elseif key == "collectible" then
			return (t.questID and not t.repeatable and not t.isBreadcrumb and app.CollectibleQuests) or (t.factionID and app.CollectibleReputations);
		elseif key == "collected" then
			if t.factionID then
				-- This is used by reputation tokens. (turn in items)
				if app.AccountWideReputations then
					if GetDataSubMember("CollectedFactions", t.factionID) then
						return 1;
					end
				else
					if GetTempDataSubMember("CollectedFactions", t.factionID) then
						return 1;
					end
				end
				
				if select(3, GetFactionInfoByID(t.factionID)) == 8 then
					SetTempDataSubMember("CollectedFactions", t.factionID, 1);
					SetDataSubMember("CollectedFactions", t.factionID, 1);
					return 1;
				end
			end
			return t.saved;
		elseif key == "text" then
			return t.link;
		elseif key == "icon" then
			return select(5, GetItemInfoInstant(t.itemID)) or "Interface\\Icons\\INV_Misc_QuestionMark";
		elseif key == "link" then
			local link = select(2, GetItemInfo(t.itemID));
			if link then
				t.link = link;
				t.retries = nil;
				return link;
			else
				if t.retries then
					t.retries = t.retries + 1;
					if t.retries > app.MaximumItemInfoRetries then
						local itemName = "Item #" .. t.itemID .. "*";
						t.title = "Failed to acquire item information. The item made be invalid or may not have been cached on your server yet.";
						t.link = "";
						t.text = itemName;
						return itemName;
					end
				else
					t.retries = 1;
				end
			end
		elseif key == "trackable" then
			return t.questID;
		elseif key == "repeatable" then
			return t.isDaily or t.isWeekly;
		elseif key == "saved" then
			return IsQuestFlaggedCompletedForObject(t);
		elseif key == "name" then
			return t.link and GetItemInfo(t.link);
		elseif key == "tsm" then
			return string.format("i:%d", t.itemID);
		elseif key == "b" then
			return 2;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateItem  = function(id, t)
	return setmetatable(constructor(id, t, "itemID"), app.BaseItem);
end

-- Map Lib
(function()
local arrOfNodes = {
	1414,		-- Kalimdor
	1415,		-- Eastern Kingdoms
};
local C_Map_GetMapInfo = C_Map.GetMapInfo;
local C_Map_GetMapLevels = C_Map.GetMapLevels;
local C_Map_GetBestMapForUnit = C_Map.GetBestMapForUnit;
app.GetCurrentMapID = function()
	local mapID = C_Map_GetBestMapForUnit("player");
	local text_to_mapID = app.L["ZONE_TEXT_TO_MAP_ID"];
	if text_to_mapID then
		local real = GetRealZoneText();
		local zone = GetSubZoneText();
		local otherMapID = (real and text_to_mapID[real]) or (zone and text_to_mapID[zone]);
		if otherMapID then return otherMapID; end
	end
	return mapID;
end
app.GetMapLevel = function(mapID)
	return select(1, C_Map_GetMapLevels(mapID));
end
app.GetMapParent = function(mapID)
	local mapInfo = C_Map_GetMapInfo(mapID);
	if mapInfo then
		return mapInfo.parentMapID;
	else
		
	end
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
		end
		return "Map ID #" .. mapID;
	else
		return "Map ID #???";
	end
end
app.CacheFlightPathData = function()
	for i,mapID in ipairs(arrOfNodes) do
		local allNodeData = C_TaxiMap.GetTaxiNodesForMap(mapID);
		if allNodeData then
			local keys = {};
			for j,nodeData in ipairs(allNodeData) do
				if nodeData.name then 
					local node = app.FlightPathDB[nodeData.nodeID];
					if node then
						node.name = nodeData.name;
					else
						node = {};
						node.faction = nodeData.faction;
						node.name = nodeData.name .. " *NEW*";
						app.FlightPathDB[nodeData.nodeID] = node;
					end
				end
			end
		end
	end
end
app.events.TAXIMAP_OPENED = function()
	local flightMaps, knownNodeIDs = {}, {};
	for nodeID,node in pairs(app.FlightPathDB) do
		if node.mapID == app.CurrentMapID then
			tinsert(flightMaps, nodeID);
		end
	end
	local count = #flightMaps;
	if count > 0 then
		if count > 1 then
			local pos = C_Map.GetPlayerMapPosition(app.CurrentMapID, "player");
			if pos then
				local px, py = pos:GetXY();
				px = px * 100;
				py = py * 100;
				
				-- Select the best flight path node.
				for i,id in ipairs(flightMaps) do
					local node = app.FlightPathDB[id];
					if node and node.coord then
						-- Allow for a little bit of leeway.
						if math.sqrt((x2 - px)^2 + (y2 - py)^2) < 0.05 then
							tinsert(knownNodeIDs, id);
						end
					end
				end
			end
		else
			tinsert(knownNodeIDs, flightMaps[1]);
		end
	end
	
	if #knownNodeIDs == 0 then
		print("Failed to find nearest Flight Path. Please report this to the ATT Discord! MapID: ", mapID);
	end
	
	local allNodeData = C_TaxiMap.GetAllTaxiNodes(GetTaxiMapID());
	if allNodeData then
		for j,nodeData in ipairs(allNodeData) do
			if nodeData.state and nodeData.state < 2 then
				tinsert(knownNodeIDs, nodeData.nodeID);
			end
			if nodeData.name then 
				local node = app.FlightPathDB[nodeData.nodeID];
				if not node then
					node = {};
					node.name = nodeData.name .. " *NEW*";
					node.faction = nodeData.faction;
					app.FlightPathDB[nodeData.nodeID] = node;
				end
			end
		end
	end
	
	if app.AccountWideFlightPaths then
		for i,nodeID in ipairs(knownNodeIDs) do
			SetTempDataSubMember("CollectedFlightPaths", nodeID, 1);
			if not GetDataSubMember("CollectedFlightPaths", nodeID) then
				SetDataSubMember("CollectedFlightPaths", nodeID, 1);
				UpdateSearchResults(SearchForField("flightPathID", nodeID));
			end
		end
	else
		for i,nodeID in ipairs(knownNodeIDs) do
			SetDataSubMember("CollectedFlightPaths", nodeID, 1);
			if not GetTempDataSubMember("CollectedFlightPaths", nodeID) then
				SetTempDataSubMember("CollectedFlightPaths", nodeID, 1);
				UpdateSearchResults(SearchForField("flightPathID", nodeID));
			end
		end
	end
end
app.BaseFlightPath = {
	__index = function(t, key)
		if key == "key" then
			return "flightPathID";
		elseif key == "collectible" then
			return app.CollectibleFlightPaths;
		elseif key == "collected" then
			if app.AccountWideFlightPaths then
				if GetDataSubMember("CollectedFlightPaths", t.flightPathID) then
					return 1;
				end
			else
				if GetTempDataSubMember("CollectedFlightPaths", t.flightPathID) then
					return 1;
				end
			end
		elseif key == "text" then
			return t.info.name or "Visit the Flight Master to cache.";
		elseif key == "u" then
			return t.info.u;
		elseif key == "coord" then
			return t.info.coord;
		elseif key == "mapID" then
			return t.info.mapID;
		elseif key == "nmr" then
			local info = t.info;
			if info and info.faction and info.faction > 0 then
				return info.faction ~= app.FactionID;
			end
		elseif key == "info" then
			return app.FlightPathDB[t.flightPathID];
		elseif key == "description" then
			return "Flight paths are cached when you look at the flight master at each location.\n  - Crieve";
		elseif key == "icon" then
			local info = t.info;
			if info and info.faction and info.faction > 0 then
				if info.faction == Enum.FlightPathFaction.Horde then
					return "Interface\\Addons\\ATT-Classic\\assets\\fp_horde";
				else
					return "Interface\\Addons\\ATT-Classic\\assets\\fp_alliance";
				end
			end
			return "Interface\\Addons\\ATT-Classic\\assets\\fp_neutral";
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateFlightPath = function(id, t)
	return setmetatable(constructor(id, t, "flightPathID"), app.BaseFlightPath);
end
app.BaseMap = {
	__index = function(t, key)
		if key == "key" then
			return "mapID";
		elseif key == "text" then
			if t["isRaid"] then return "|cffff8000" .. app.GetMapName(t.mapID) .. "|r"; end
			return app.GetMapName(t.mapID);
		elseif key == "back" then
			if app.CurrentMapID == t.mapID or (t.maps and contains(t.maps, app.CurrentMapID)) then
				return 1;
			end
		elseif key == "icon" then
			return "Interface/ICONS/INV_Misc_Map_01";
		elseif key == "lvl" then
			return app.GetMapLevel(t.mapID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateMap = function(id, t)
	return setmetatable(constructor(id, t, "mapID"), app.BaseMap);
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
app.BaseNPC = {
	__index = function(t, key)
		if key == "key" then
			return "npcID";
		elseif key == "text" then
			if t["isRaid"] and t.name then return "|cffff8000" .. t.name .. "|r"; end
			return t.name;
		elseif key == "name" then
			return NPCNameFromID[t.npcID];
		elseif key == "title" then
			return NPCTitlesFromID[t.npcID];
		elseif key == "icon" then
			return L["NPC_ID_ICONS"][t.npcID] or "Interface\\Icons\\INV_Misc_Head_Human_01";
		elseif key == "displayID" then
			return NPCDisplayIDFromID[t.npcID];
		elseif key == "creatureID" then
			return t.npcID;
		elseif key == "trackable" then
			return t.questID;
		elseif key == "collectible" then
			return t.questID and not t.repeatable and not t.isBreadcrumb and app.CollectibleQuests;
		elseif key == "saved" then
			return IsQuestFlaggedCompletedForObject(t);
		elseif key == "collected" then
			return t.saved;
		elseif key == "repeatable" then
			return t.isDaily or t.isWeekly;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateNPC = function(id, t)
	return setmetatable(constructor(id, t, "npcID"), app.BaseNPC);
end
end)();

-- Object Lib (as in "World Object")
app.BaseObject = {
	__index = function(t, key)
		if key == "key" then
			return "objectID";
		elseif key == "text" then
			local name = L["OBJECT_ID_NAMES"][t.objectID] or ("Object ID #" .. t.objectID);
			if t["isRaid"] then name = "|cffff8000" .. name .. "|r"; end
			rawset(t, "text", name);
			return name;
		elseif key == "icon" then
			return L["OBJECT_ID_ICONS"][t.objectID] or "Interface\\Icons\\INV_Misc_Bag_10";
		elseif key == "collectible" then
			return (t.questID and not t.repeatable and not t.isBreadcrumb and app.CollectibleQuests);
		elseif key == "collected" then
			return t.saved;
		elseif key == "trackable" then
			return t.questID;
		elseif key == "saved" then
			return IsQuestFlaggedCompletedForObject(t);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateObject = function(id, t)
	return setmetatable(constructor(id, t, "objectID"), app.BaseObject);
end

-- Profession Lib
local SkillIDToSpellID = setmetatable({
	[171] = 2259,	-- Alchemy
	[794] = 158762,	-- Arch
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
}, {__index = function(t,k) return(106727) end})
app.BaseProfession = {
	__index = function(t, key)
		if key == "key" then
			return "requireSkill";
		elseif key == "text" then
			if t.spellID then
				return select(1, GetSpellInfo(t.spellID));
			end
		elseif key == "icon" then
			return select(3, GetSpellInfo(t.spellID));
		elseif key == "spellID" then
			return SkillIDToSpellID[t.requireSkill];
		elseif key == "skillID" then
			return t.requireSkill;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateProfession = function(id, t)
	return setmetatable(constructor(id, t, "requireSkill"), app.BaseProfession);
end

-- Quest Lib
(function()
-- Quest Name Harvesting Lib
local questRetries = {};
local QuestTitleFromID = setmetatable({}, { __index = function(t, id)
	local title = C_QuestLog.GetQuestInfo(id);
	if title and title ~= RETRIEVING_DATA then
		rawset(questRetries, id, nil);
		rawset(t, id, title);
		return title
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
		return RETRIEVING_DATA;
	end
end })
app.BaseQuest = {
	__index = function(t, key)
		if key == "key" then
			return "questID";
		elseif key == "text" then
			if rawget(t, "title") then
				rawset(t, "text", rawget(t, "title"));
				t.title = false;
				return t.text;
			end
			local questName = t.questName;
			if t.retries and t.retries > 120 then
				if t.npcID then
					if t.npcID > 0 then
						return t.npcID > 0 and NPCNameFromID[t.npcID];
					else
						return L["NPC_ID_NAMES"][t.npcID];
					end
				end
			end
			return questName;
		elseif key == "questName" then
			local questID = t.altQuestID and app.FactionID == Enum.FlightPathFaction.Horde and t.altQuestID or t.questID;
			return QuestTitleFromID[questID];
		elseif key == "icon" then
			if t.isDaily or t.isWeekly then
				return "Interface\\GossipFrame\\DailyQuestIcon";
			elseif t.repeatable then
				return "Interface\\GossipFrame\\DailyActiveQuestIcon";
			else
				return "Interface\\GossipFrame\\AvailableQuestIcon";
			end
		elseif key == "preview" then
			return "Interface\\Icons\\INV_Misc_Book_09";
		elseif key == "trackable" then
			return true;
		elseif key == "collectible" then
			return not t.repeatable and not t.isBreadcrumb and app.CollectibleQuests;
		elseif key == "collected" then
			return t.saved;
		elseif key == "repeatable" then
			return t.isDaily or t.isWeekly;
		elseif key == "saved" then
			return IsQuestFlaggedCompletedForObject(t);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateQuest = function(id, t)
	return setmetatable(constructor(id, t, "questID"), app.BaseQuest);
end
end)();

-- Recipe Lib
app.BaseRecipe = {
	__index = function(t, key)
		if key == "key" then
			return "spellID";
		elseif key == "filterID" then
			return 200;
		elseif key == "text" then
			return t.link;
		elseif key == "icon" then
			if t.itemID then return select(5, GetItemInfoInstant(t.itemID)); end
			return select(3, GetSpellInfo(t.spellID)) or (t.requireSkill and select(3, GetSpellInfo(t.requireSkill)));
		elseif key == "link" then
			if t.itemID then return select(2, GetItemInfo(t.itemID)); end
			return select(1, GetSpellLink(t.spellID));
		elseif key == "collectible" then
			return app.CollectibleRecipes;
		elseif key == "collected" then
			if app.RecipeChecker("CollectedSpells", t.spellID) then
				return GetTempDataSubMember("CollectedSpells", t.spellID) and 1 or 2;
			end
			if IsSpellKnown(t.spellID) then
				SetTempDataSubMember("CollectedSpells", t.spellID, 1);
				SetDataSubMember("CollectedSpells", t.spellID, 1);
				return 1;
			end
		elseif key == "name" then
			return t.itemID and GetItemInfo(t.itemID);
		elseif key == "tsm" then
			if t.itemID then
				return string.format("i:%d", t.itemID);
			end
		elseif key == "skillID" then
			return t.requireSkill;
		elseif key == "b" then
			return t.itemID and app.AccountWideRecipes and 2;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateRecipe = function(id, t)
	return setmetatable(constructor(id, t, "spellID"), app.BaseRecipe);
end

-- Spell Lib
app.BaseSpell = {
	__index = function(t, key)
		if key == "key" then
			return "spellID";
		elseif key == "text" then
			return t.link;
		elseif key == "icon" then
			return select(3, GetSpellInfo(t.spellID));
		elseif key == "link" then
			if t.itemID and t.filterID ~= 200 and t.f ~= 200 then
				local _, link, _, _, _, _, _, _, _, icon = GetItemInfo(t.itemID);
				if link then
					t.link = link;
					t.icon = icon;
					return link;
				end
			end
			return select(1, GetSpellLink(t.spellID));
		elseif key == "collectible" then
			return false;
		elseif key == "collected" then
			if app.RecipeChecker("CollectedSpells", t.spellID) then
				return GetTempDataSubMember("CollectedSpells", t.spellID) and 1 or 2;
			end
			if IsSpellKnown(t.spellID) then
				SetTempDataSubMember("CollectedSpells", t.spellID, 1);
				SetDataSubMember("CollectedSpells", t.spellID, 1);
				return 1;
			end
		elseif key == "name" then
			return t.itemID and GetItemInfo(t.itemID);
		elseif key == "tsm" then
			if t.itemID then
				return string.format("i:%d", t.itemID);
			end
		elseif key == "skillID" then
			return t.requireSkill;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateSpell = function(id, t)
	return setmetatable(constructor(id, t, "spellID"), app.BaseSpell);
end

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
	return app.Level >= (group.lvl or 0);
end
function app.FilterGroupsByCompletion(group)
	return group.progress < group.total;
end
function app.FilterItemBind(item)
	return item.b == 2 or item.b == 3; -- BoE
end
function app.FilterItemClass(item)
	if app.ItemBindFilter(item) then return true; end
	return app.ItemTypeFilter(item)
		and app.RequireBindingFilter(item)
		and app.ClassRequirementFilter(item)
		and app.RaceRequirementFilter(item);
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
function app.FilterItemClass_RequireBinding(item)
	if item.b and (item.b == 2 or item.b == 3) then
		return false;
	else
		return true;
	end
end
function app.FilterItemClass_UnobtainableItem(item)
	if item.u then
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
app.SeasonalItemFilter = app.NoFilter;
app.UnobtainableItemFilter = app.NoFilter;
app.ShowIncompleteThings = app.Filter;

-- Recursive Checks
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
			UpdateGroups(group, group.g);
			
			-- If the 'can equip' filter says true
			if app.GroupFilter(group) then
				-- Increment the parent group's totals.
				parent.total = (parent.total or 0) + group.total;
				parent.progress = (parent.progress or 0) + group.progress;
				
				-- If this group is trackable, then we should show it.
				if group.total > 0 and app.GroupVisibilityFilter(group) then
					group.visible = true;
				elseif app.ShowIncompleteThings(group) then
					group.visible = not group.saved;
				else
					group.visible = false;
				end
			else
				-- Hide this group. We aren't filtering for it.
				group.visible = false;
			end
		else
			-- If the 'can equip' filter says true
			if app.GroupFilter(group) then
				if group.collectible then
					-- Increment the parent group's totals.
					parent.total = (parent.total or 0) + 1;
					
					-- If we've collected the item, use the "Show Collected Items" filter.
					if group.collected then
						group.visible = app.CollectedItemVisibilityFilter(group);
						parent.progress = (parent.progress or 0) + 1;
					else
						group.visible = true;
					end
				elseif group.trackable then
					-- If this group is trackable, then we should show it.
					if app.ShowIncompleteThings(group) then
						group.visible = not group.saved;
					else
						-- Hide this group. We aren't filtering for it.
						group.visible = false;
					end
				else
					-- Hide this group.
					group.visible = false;
				end
			else
				-- Hide this group. We aren't filtering for it.
				group.visible = false;
			end
		end
	else
		-- This group doesn't meet requirements.
		group.visible = false;
	end
	
	if group.OnUpdate then group:OnUpdate(); end
end
UpdateGroups = function(parent, g)
	if g then
		for key, group in ipairs(g) do
			UpdateGroup(parent, group);
		end
	end
end
local function UpdateParentProgress(group)
	group.progress = group.progress + 1;
	
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
		if diff < 1 then
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
		
		-- Don't force a full refresh.
		app:RefreshData(true, true);
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
	GameTooltipIcon:ClearAllPoints();
	GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
	GameTooltipIcon.icon:SetTexture(reference.preview or reference.icon);
	local texcoord = reference.previewtexcoord or reference.texcoord;
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
	button.update = function(self)
		local position = GetDataMember("Position", -10.31);
		self:SetPoint("CENTER", "Minimap", "CENTER", -78 * cos(position), 78 * sin(position));
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
	local suffix = BuildSourceTextForChat(group, 0) .. " -> " .. (group.text or "");
	local popout = app.Windows[suffix];
	if not popout then
		popout = app:GetWindow(suffix);
		popout.shouldFullRefresh = true;
		if group.questID or group.sourceQuests then
			-- This is a quest object. Let's show prereqs and breadcrumbs.
			if group.parent.questID == group.questID then
				group = group.parent;
			end
			local mainQuest = CloneData(group);
			mainQuest.collectible = true;
			local g = { mainQuest };
			
			-- Check to see if Source Quests are listed elsewhere.
			if group.questID and not group.sourceQuests then
				local searchResults = SearchForField("questID", group.questID);
				if searchResults and #searchResults > 1 then
					for i=1,#searchResults,1 do
						local searchResult = searchResults[i];
						if searchResult.sourceQuests then
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
								if sq.parent and sq.parent.questID == sq.questID then
									sq = sq.parent;
								end
								if sq and app.GroupFilter(sq) and not sq.isBreadcrumb then
									if sq.altQuestID then
										-- Alt Quest IDs are always Horde.
										if app.FactionID == Enum.FlightPathFaction.Horde then
											if sq.altQuestID == sourceQuestID then
												found = sq;
												break;
											end
										elseif sq.questID == sourceQuestID then
											found = sq;
											break;
										end
									elseif app.RecursiveClassAndRaceFilter(sq) then
										found = sq;
										break;
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
						
						-- Insert the header for the source quest
						if #prereqs > 0 then
							tinsert(prereqs, {
								["text"] = "Upon Completion",
								["description"] = "The above quests need to be completed before being able to complete the quest(s) listed below.",
								["icon"] = "Interface\\Icons\\Spell_Holy_MagicalSentry.blp",
								["visible"] = true,
								["expanded"] = true,
								["g"] = g,
								["hideText"] = true
							});
						else
							local prereq = prereqs[1];
							if prereq.g then
								for i,group in ipairs(prereq.g) do
									tinsert(g, 1, group);
								end
							end
							prereq["g"] = g;
						end
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
					local orig = prereqs;
					if #orig == 2 then
						prereqs = orig[1].g;
						if not prereqs or #prereqs < 1 then
							prereqs = orig[2].g;
							if orig[2].text == "Upon Completion" then
								orig[1].g = prereqs;
								table.remove(orig, 2);
							end
						else
							sourceQuests = orig[2].g;
							if sourceQuests then
								table.remove(orig, 2);
								if #sourceQuests == 2 then
									sourceQuests[1].g = sourceQuests[2].g;
									table.remove(sourceQuests, 2);
								end
								for i,sourceQuest in ipairs(sourceQuests) do
									table.insert(prereqs, sourceQuest);
								end
							end
						end
					else
						prereqs = orig[#orig].g;
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
			popout.data = {
				["text"] = "Standalone Item",
				["icon"] = "Interface\\Icons\\Achievement_Garrison_blueprint_medium.blp",
				["g"] = { group },
			};
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
			local reason = L["UNOBTAINABLE_ITEM_REASONS"][data.u or 1];
			if reason then
				local texture = L["UNOBTAINABLE_ITEM_TEXTURES"][reason[1]];
				if texture then
					row.Indicator:SetTexture(texture);
					row.Indicator:SetPoint("RIGHT", leftmost, relative, x, 0);
					row.Indicator:Show();
				end
			end
		end
		if data.saved then
			if data.parent and data.parent.locks or data.isDaily then
				row.Indicator:SetTexture("Interface\\Addons\\ATT-Classic\\assets\\known");
			else
				row.Indicator:SetTexture("Interface\\Addons\\ATT-Classic\\assets\\known_green");
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
		local summary = GetProgressTextForRow(data);
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
		if ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < math.max(self:GetTop() - 40, self:GetBottom() + 10)) then
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
								if (not group.spellID and not group.achID) or group.itemID then
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
				if (link and HandleModifiedItemClick(link)) or ChatEdit_InsertLink(link or BuildSourceTextForChat(reference, 0)) then return true; end
				
				-- If you're looking at the Profession Window, Shift Clicking will replace the search string instead.
				if app:GetWindow("Tradeskills"):IsShown() then
					
				elseif button == "LeftButton" then
					-- Default behaviour is to Refresh Collections.
					RefreshCollections(reference);
				end
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
			if self.index > 0 then
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
					if reference and reference.u then GameTooltip:AddLine(L["UNOBTAINABLE_ITEM_REASONS"][reference.u][2], 1, 1, 1, true); end
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
		local lvl = reference.lvl or 0;
		if lvl > 1 then GameTooltip:AddDoubleLine(L["REQUIRES_LEVEL"], tostring(lvl)); end
		if reference.b and app.Settings:GetTooltipSetting("binding") then GameTooltip:AddDoubleLine("Binding", tostring(reference.b)); end
		if reference.requireSkill then GameTooltip:AddDoubleLine(L["REQUIRES"], tostring(GetSpellInfo(SkillIDToSpellID[reference.requireSkill] or 0))); end
		if reference.f and reference.f > 0 and app.Settings:GetTooltipSetting("filterID") then GameTooltip:AddDoubleLine(L["FILTER_ID"], tostring(L["FILTER_ID_TYPES"][reference.f])); end
		if app.Settings:GetTooltipSetting("creatureID") then 
			if reference.creatureID then
				GameTooltip:AddDoubleLine(L["CREATURE_ID"], tostring(reference.creatureID));
			elseif reference.npcID and reference.npcID > 0 then
				GameTooltip:AddDoubleLine(L["NPC_ID"], tostring(reference.npcID));
			end
		end
		if reference.factionID and app.Settings:GetTooltipSetting("factionID") then GameTooltip:AddDoubleLine(L["FACTION_ID"], tostring(reference.factionID)); end
		if reference.minReputation and not reference.maxReputation then
			local standingId, offset = app.GetFactionStanding(reference.minReputation[2])
			local factionName = GetFactionInfoByID(reference.minReputation[1]);
			local msg = "Requires a minimum standing of"
			if offset ~= 0 then msg = msg .. " " .. offset end
			msg = msg .. " " .. app.GetFactionStandingText(standingId, true) .. " with " .. factionName .. "."
			GameTooltip:AddLine(msg);
		end
		if reference.maxReputation and not reference.minReputation then
			local standingId, offset = app.GetFactionStanding(reference.maxReputation[2])
			local factionName = GetFactionInfoByID(reference.maxReputation[1]);
			local msg = "Requires a standing lower than"
			if offset ~= 0 then msg = msg .. " " .. offset end
			msg = msg .. " " .. app.GetFactionStandingText(standingId, true) .. " with " .. factionName .. "."
			GameTooltip:AddLine(msg);
		end
		if reference.minReputation and reference.maxReputation then
			local minStandingId, minOffset = app.GetFactionStanding(reference.minReputation[2])
			local maxStandingId, maxOffset = app.GetFactionStanding(reference.maxReputation[2])
			local factionName = GetFactionInfoByID(reference.minReputation[1]);
			local msg = "Requires a standing between"
			if minOffset ~= 0 then msg = msg .. " " .. minOffset end
			msg = msg .. " " .. app.GetFactionStandingText(minStandingId, true) .. " and"
			if maxOffset ~= 0 then msg = msg .. " " .. maxOffset end
			msg = msg .. " " .. app.GetFactionStandingText(maxStandingId, true) .. " with " .. factionName .. ".";
			GameTooltip:AddLine(msg);
		end
		if reference.objectID and app.Settings:GetTooltipSetting("objectID") then GameTooltip:AddDoubleLine(L["OBJECT_ID"], tostring(reference.objectID)); end
		if reference.spellID and app.Settings:GetTooltipSetting("spellID") then GameTooltip:AddDoubleLine(L["SPELL_ID"], tostring(reference.spellID)); end
		if reference.flightPathID and app.Settings:GetTooltipSetting("flightPathID")  then GameTooltip:AddDoubleLine(L["FLIGHT_PATH_ID"], tostring(reference.flightPathID)); end
		if reference.mapID and app.Settings:GetTooltipSetting("mapID") then GameTooltip:AddDoubleLine(L["MAP_ID"], tostring(reference.mapID)); end
		if reference.coords and app.Settings:GetTooltipSetting("Coordinates") then
			local j = 0;
			for i,coord in ipairs(reference.coords) do
				local x = coord[1];
				local y = coord[2];
				local str;
				local mapID = coord[3];
				if mapID then
					str = tostring(mapID);
					if mapID == app.GetCurrentMapID() then str = str .. "*"; end
					str = str .. ": ";
				else
					str = "";
				end
				GameTooltip:AddDoubleLine(j == 0 and "Coordinates" or " ", 
					str.. GetNumberWithZeros(math.floor(x * 10) * 0.1, 1) .. ", " .. GetNumberWithZeros(math.floor(y * 10) * 0.1, 1), 1, 1, 1, 1, 1, 1);
				j = j + 1;
			end
		end
		if reference.coord and app.Settings:GetTooltipSetting("Coordinates") then
			GameTooltip:AddDoubleLine("Coordinate",
				GetNumberWithZeros(math.floor(reference.coord[1] * 10) * 0.1, 1) .. ", " .. 
				GetNumberWithZeros(math.floor(reference.coord[2] * 10) * 0.1, 1), 1, 1, 1, 1, 1, 1);
		end
		if reference.dr then GameTooltip:AddDoubleLine(L["DROP_RATE"], "|c" .. GetProgressColor(reference.dr * 0.01) .. tostring(reference.dr) .. "%|r"); end
		if not reference.itemID then
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
			
			if reference.questID then
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
							GameTooltip:AddDoubleLine("  " .. (objective.text or "???"), GetCompletionIcon(objective.finished), 1, 1, 1, 1);
						end
					end
				end
			end
			if reference.u then
				GameTooltip:AddLine(L["UNOBTAINABLE_ITEM_REASONS"][reference.u][2], 1, 1, 1, 1, true);
			end
		end
		if reference.questID then
			if app.Settings:GetTooltipSetting("questID") then
				GameTooltip:AddDoubleLine(L["QUEST_ID"], tostring(reference.questID));
				if reference.altQuestID then GameTooltip:AddDoubleLine(" ", tostring(reference.altQuestID)); end
			end
		end
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
				if i > 1 then str = str .. ", "; end
				str = str .. C_CreatureInfo.GetClassInfo(cl).className;
			end
			GameTooltip:AddDoubleLine("Classes", str);
		end
		if app.Settings:GetTooltipSetting("RaceRequirements") then
			if reference.races then
				local str = "";
				for i,race in ipairs(reference.races) do
					if i > 1 then str = str .. ", "; end
					str = str .. C_CreatureInfo.GetRaceInfo(race).raceName;
				end
				GameTooltip:AddDoubleLine("Races", str);
			elseif reference.r and reference.r > 0 then
				GameTooltip:AddDoubleLine("Races", (reference.r == 2 and ITEM_REQ_ALLIANCE) or (reference.r == 1 and ITEM_REQ_HORDE) or "Unknown");
			end
		end
		if reference.isDaily then GameTooltip:AddLine("This can be completed daily."); end
		if reference.isWeekly then GameTooltip:AddLine("This can be completed weekly."); end
		if not GameTooltipModel:TrySetModel(reference) and reference.icon then
			GameTooltipIcon:SetSize(72,72);
			GameTooltipIcon.icon:SetTexture(reference.preview or reference.icon);
			local texcoord = reference.previewtexcoord or reference.texcoord;
			if texcoord then
				GameTooltipIcon.icon:SetTexCoord(texcoord[1], texcoord[2], texcoord[3], texcoord[4]);
			else
				GameTooltipIcon.icon:SetTexCoord(0, 1, 0, 1);
			end
			GameTooltipIcon:Show();
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
					if _ == "i" then
						_,name,_,_,_,_,_,_,_,icon = GetItemInfo(v[2]);
						amount = "x" .. v[3];
					elseif _ == "c" then
						name,_,icon = GetCurrencyInfo(v[2])
						amount = "x" .. v[3];
					elseif _ == "g" then
						name = "";
						icon = nil;
						amount = GetCoinTextureString(v[2]);
					end
					GameTooltip:AddDoubleLine(k == 1 and "Cost" or " ", (icon and ("|T" .. icon .. ":0|t") or "") .. (name or "???") .. " " .. amount);
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
		
		if reference.OnTooltip then reference:OnTooltip(GameTooltip); end
		
		-- Show Quest Prereqs
		if reference.sourceQuests and not reference.saved then
			local prereqs, bc = {}, {};
			for i,sourceQuestID in ipairs(reference.sourceQuests) do
				if sourceQuestID > 0 and not IsQuestFlaggedCompleted(sourceQuestID) then
					local sqs = SearchForField("questID", sourceQuestID);
					if sqs and #sqs > 0 then
						local sq = sqs[1];
						if sq and sq.isBreadcrumb then
							table.insert(bc, sqs[1]);
						else
							table.insert(prereqs, sqs[1]);
						end
					else
						table.insert(prereqs, {questID = sourceQuestID});
					end
				end
			end
			if prereqs and #prereqs > 0 then
				GameTooltip:AddLine("This quest has an incomplete prerequisite quest that you need to complete first.");
				for i,prereq in ipairs(prereqs) do
					GameTooltip:AddLine("   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA));
				end
			end
			if bc and #bc > 0 then
				GameTooltip:AddLine("This quest has a breadcrumb quest that you may be unable to complete after completing this one.");
				for i,prereq in ipairs(bc) do
					GameTooltip:AddLine("   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA));
				end
			end
		end
		
		-- Show lockout information
		if reference.mapID and not C_Map.GetMapInfo(reference.mapID) then
			-- Contains information about an Instance (Raid or Dungeon)
			local locks = reference.locks;
			if locks then
				GameTooltip:AddDoubleLine("Lockout", date("%c", locks.shared.reset));
				for encounterIter,encounter in pairs(locks.shared.encounters) do
					GameTooltip:AddDoubleLine(" " .. encounter.name, GetCompletionIcon(encounter.isKilled));
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
		allData.icon = "Interface\\Addons\\ATT-Classic\\assets\\content";
		allData.texcoord = {429 / 512, (429 + 36) / 512, 217 / 256, (217 + 36) / 256};
		allData.previewtexcoord = {1 / 512, (1 + 72) / 512, 75 / 256, (75 + 72) / 256};
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
		db.icon = "Interface\\LFGFRAME\\LFGIcon-ReturntoKarazhan";
		db.g = app.Categories.Instances;
		table.insert(g, db);
		
		-- Zones
		if app.Categories.Zones then
			db = {};
			db.mapID = 947;
			db.text = BUG_CATEGORY2;
			db.icon = "Interface/ICONS/INV_Misc_Map_01"
			db.g = app.Categories.Zones;
			table.insert(g, db);
		end
		
		-- World Drops
		if app.Categories.WorldDrops then
			db = {};
			db.text = TRANSMOG_SOURCE_4;
			db.icon = "Interface/ICONS/INV_Misc_Map_01";
			db.g = app.Categories.WorldDrops;
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
		
		-- Flight Paths (Dynamic)
		db = {};
		db.g = (function()
			local cache = {};
			for key,fp in pairs(app.FlightPathDB) do
				tinsert(cache, app.CreateFlightPath(tonumber(key)));
			end
			table.sort(cache, function(a, b)
				return a.text < b.text;
			end);
			return cache;
		end)();
		db.expanded = false;
		db.icon = "Interface\\Minimap\\Tracking\\Flightmaster";
		db.text = "Flight Paths";
		table.insert(g, db);
		
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
		
		-- The Main Window's Data
		app.refreshDataForce = true;
		BuildGroups(allData, allData.g);
		app:GetWindow("Prime").data = allData;
		CacheFields(allData);
		
		-- Now build the hidden "Unsorted" Window's Data
		allData = {};
		allData.expanded = true;
		allData.icon = "Interface\\Addons\\ATT-Classic\\assets\\content";
		allData.texcoord = {429 / 512, (429 + 36) / 512, 217 / 256, (217 + 36) / 256};
		allData.previewtexcoord = {1 / 512, (1 + 72) / 512, 75 / 256, (75 + 72) / 256};
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
		
		-- Wait 1/2 second. For multiple simultaneous requests, each one will reapply the delay. [This should fix a lot of lag with ensembles.]
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
		collectgarbage();
	end);
end
function app:GetWindow(suffix, parent, onUpdate)
	local window = app.Windows[suffix];
	if not window then
		-- Create the window instance.
		window = CreateFrame("FRAME", app:GetName() .. "-Window-" .. suffix, parent or UIParent);
		app.Windows[suffix] = window;
		window.Suffix = suffix;
		window.Toggle = ToggleWindow;
		window.Update = onUpdate or UpdateWindow;
		window.SetVisible = SetWindowVisibility;
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
			local mapID = app.GetCurrentMapID();
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
		grip:SetTexture("Interface\\Addons\\ATT-Classic\\assets\\grip");
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

-- Create the Primary Collection Window (this allows you to save the size and location)
app:GetWindow("Prime"):SetSize(425, 305);
app:GetWindow("Unsorted");
app:GetWindow("CosmicInfuser", UIParent, function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			self.data = {
				['text'] = "Cosmic Infuser",
				['icon'] = "Interface\\Icons\\INV_Misc_Celestial Map.blp", 
				["description"] = "This window helps debug when we're missing map IDs in the addon.",
				['visible'] = true, 
				['expanded'] = true,
				['OnUpdate'] = function(data) 
					data.visible = true;
				end,
				['g'] = {
					{
						['text'] = "Check for missing maps now!",
						['icon'] = "Interface\\Icons\\INV_Misc_Map_01",
						['description'] = "This function will check for missing mapIDs in ATT.",
						['OnClick'] = function(data, button)
							Push(self, "Rebuild", self.Rebuild);
							return true;
						end,
						['OnUpdate'] = function(data) 
							data.visible = true;
						end,
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
--[[]]--
app:GetWindow("Debugger", UIParent, function(self)
	if not self.initialized then
		self.initialized = true;
		self.data = {
			['text'] = "Session History",
			['icon'] = "Interface\\Icons\\Achievement_Dungeon_GloryoftheRaider.blp", 
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
			if e == "PLAYER_LOGIN" then
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
			elseif e == "ZONE_CHANGED_NEW_AREA" then
				-- Bubble Up the Maps
				local mapInfo, info;
				local mapID = app.GetCurrentMapID();
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
					local ty, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid;
					if guid then ty, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid); end
					if npc_id then
						npc_id = tonumber(npc_id);
						
						-- Ignore vendor mount...
						if npc_id == 62822 then
							return true;
						end
						
						local numItems = GetMerchantNumItems();
						--print("MERCHANT DETAILS", ty, npc_id, numItems);
						
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
						
						local info = { [(ty == "GameObject") and "objectID" or "npcID"] = npc_id };
						info.faction = UnitFactionGroup("npc");
						info.text = UnitName("npc");
						info.g = rawGroups;
						self:AddObject(info);
					end
				end);
			elseif e == "GOSSIP_SHOW" then
				local guid = UnitGUID("npc");
				if guid then
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if npc_id then
						npc_id = tonumber(npc_id);
						--print("GOSSIP_SHOW", type, npc_id);
						if type == "GameObject" then
							info = { ["objectID"] = npc_id, ["text"] = UnitName("npc") };
						else
							info = { ["npcID"] = npc_id };
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
				local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid;
				if guid then type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid); end
				-- print("QUEST_DETAIL", questStartItemID, " => Quest #", questID, type, npc_id);
				
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
				if npc_id then
					npc_id = tonumber(npc_id);
					if type == "GameObject" then
						info = { ["objectID"] = npc_id, ["text"] = UnitName(npc), ["g"] = { info } };
					else
						info.qgs = {npc_id};
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
		self:RegisterEvent("PLAYER_LOGIN");
		self:RegisterEvent("GOSSIP_SHOW");
		self:RegisterEvent("QUEST_DETAIL");
		self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
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
--[[]]--
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
				local groups, holiday = {}, {};
				local header = app.CreateMap(self.mapID, { g = groups });
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
					group = clone;
					
					-- If this is relative to a holiday, let's do something special
					if GetRelativeField(group, "npcID", -3) then
						if group.achievementID then
							if group.criteriaID then
								if group.parent.achievementID then
									group = app.CreateAchievement(group.parent.achievementID, 
										{ g = { group }, total = group.total, progress = group.progress, 
											u = group.parent.u, races = group.parent.races, r = group.r, c = group.parent.c, nmc = group.parent.nmc, nmr = group.parent.nmr });
								else
									group = app.CreateAchievement(group.achievementID,
										{ g = { group }, total = group.total, progress = group.progress,
											u = group.u, races = group.races, r = group.r, c = group.c, nmc = group.nmc, nmr = group.nmr });
								end
							end
						elseif group.criteriaID and group.parent.achievementID then
							group = app.CreateAchievement(group.parent.achievementID, { g = { group }, total = group.total, progress = group.progress, 
								u = group.parent.u, races = group.parent.races, r = group.r, c = group.parent.c, nmc = group.parent.nmc, nmr = group.parent.nmr });
						end
						
						local holidayID = GetRelativeValue(group, "holidayID");
						local u = group.u or GetRelativeValue(group, "u");
						if group.key == "npcID" then
							if GetRelativeField(group, "npcID", -4) then	-- It's an Achievement. (non-Holiday)
								if group.npcID ~= -4 then group = app.CreateNPC(-4, { g = { group }, u = u }); end
							elseif GetRelativeField(group, "npcID", -2) or GetRelativeField(group, "npcID", -173) then	-- It's a Vendor. (or a timewaking vendor)
								if group.npcID ~= -2 then group = app.CreateNPC(-2, { g = { group }, u = u }); end
							elseif GetRelativeField(group, "npcID", -17) then	-- It's a Quest.
								if group.npcID ~= -17 then group = app.CreateNPC(-17, { g = { group }, u = u }); end
							end
						elseif group.key == "questID" then
							if group.npcID ~= -17 then group = app.CreateNPC(-17, { g = { group }, u = u }); end
						end
						if holidayID then group = app.CreateHoliday(holidayID, { g = { group }, u = u }); end
						MergeObject(holiday, group);
					elseif group.key == "mapID" or group.key == "classID" then
						header.key = group.key;
						header[group.key] = group[group.key];
						MergeObject({header}, group);
					elseif group.key == "npcID" then
						if GetRelativeField(group, "npcID", -4) then	-- It's an Achievement. (non-Holiday)
							MergeObject(groups, app.CreateNPC(-4, { g = { group } }), 1);
						elseif GetRelativeField(group, "npcID", -2) or GetRelativeField(group, "npcID", -173) then	-- It's a Vendor. (or a timewaking vendor)
							MergeObject(groups, app.CreateNPC(-2, { g = { group } }), 1);
						elseif GetRelativeField(group, "npcID", -17) then	-- It's a Quest.
							MergeObject(groups, app.CreateNPC(-17, { g = { group } }), 1);
						else
							MergeObject(groups, group);
						end
					elseif group.key == "questID" then
						MergeObject(groups, app.CreateNPC(-17, { g = { group } }), 1);
					else
						MergeObject(groups, group);
					end
				end
				
				if #holiday > 0 then
					-- Search for Holiday entries that are not within a holidayID and attempt to find the appropriate group for them.
					local holidays, unlinked = {}, {};
					for i=#holiday,1,-1 do
						local group = holiday[i];
						if group.holidayID then
							if group.u then holidays[group.u] = group; end
						elseif group.u then
							local temp = unlinked[group.u];
							if not temp then
								temp = {};
								unlinked[group.u] = temp;
							end
							table.insert(temp, group);
							table.remove(holiday, i);
						end
					end
					for u,temp in pairs(unlinked) do
						local h = holidays[u];
						if h then
							for i,data in ipairs(temp) do
								MergeObject(h.g, data);
							end
						else
							-- Attempt to scan for the main holiday header.
							local done = false;
							for j,o in ipairs(SearchForField("npcID", -3)) do
								if o.g and #o.g > 5 and o.g[1].holidayID then
									for k,group in ipairs(o.g) do
										if group.holidayID and group.u == u then
											MergeObject(holiday, app.CreateHoliday(group.holidayID, { g = temp, u = u }));
											done = true;
										end
									end
									break;
								end
							end
							if not done then
								for i,data in ipairs(temp) do
									MergeObject(holiday, data);
								end
							end
						end
					end
					
					tinsert(groups, 1, app.CreateNPC(-3, { g = holiday, description = "A specific holiday may need to be active for you to complete the referenced Things within this section." }));
				end
				
				-- Check for timewalking difficulty objects
				for i, group in ipairs(groups) do
					if group.difficultyID and group.difficultyID == 24 and group.g then
						-- Look for a Common Boss Drop header.
						local cbdIndex = -1;
						for j, subgroup in ipairs(group.g) do
							if subgroup.npcID and subgroup.npcID == -1 then
								cbdIndex = j;
								break;
							end
						end
						
						-- Push the Common Boss Drop header to the top.
						if cbdIndex > -1 then
							table.insert(group.g, 1, table.remove(group.g, cbdIndex));
						end
						
						-- Look for a Zone Drop header.
						cbdIndex = -1;
						for j, subgroup in ipairs(group.g) do
							if subgroup.npcID and subgroup.npcID == 0 then
								cbdIndex = j;
								break;
							end
						end
						
						-- Push the Zone Drop header to the top.
						if cbdIndex > -1 then
							table.insert(group.g, 1, table.remove(group.g, cbdIndex));
						end
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
				
				-- If we have determined that we want to expand this section, then do it
				if results.g then
					local bottom = {};
					local top = {};
					for i=#results.g,1,-1 do
						local o = results.g[i];
						if o.isRaid or o.flightPathID then
							table.remove(results.g, i);
							table.insert(top, o);
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
			if not results or not results.g or #results.g < 1 then
				local mapID = self.mapID;
				print("No map found for this location ", app.GetMapName(mapID), " [", mapID, "]");
				
				local mapInfo = C_Map.GetMapInfo(mapID);
				if mapInfo then
					local mapPath = mapInfo.name or ("Map ID #" .. mapID);
					mapID = mapInfo.parentMapID;
					while mapID do
						mapInfo = C_Map.GetMapInfo(mapID);
						if mapInfo then
							mapPath = (mapInfo.name or ("Map ID #" .. mapID)) .. " -> " .. mapPath;
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
		self:RegisterEvent("PLAYER_LOGIN");
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
app:GetWindow("RaidAssistant", UIParent, function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			
			-- Raid Assistant
			local raidassistant = {
				['text'] = "Raid Assistant",
				['icon'] = "Interface\\Icons\\Achievement_Dungeon_GloryoftheRaider.blp", 
				["description"] = "Never enter the instance with the wrong settings again! Verify that everything is as it should be!",
				['visible'] = true, 
				['expanded'] = true,
				['back'] = 1,
				['g'] = {
					{
						['text'] = "Reset Instances",
						['icon'] = "Interface\\Icons\\Ability_Priest_VoidShift",
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
							self.data = raidassistant;
							UpdateWindow(self, true);
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = IsInGroup();
						end,
					},
				}
			};
			self.data = raidassistant;
			
			-- Setup Event Handlers and register for events
			self:SetScript("OnEvent", function(self, e, ...) self:Update(); end);
			self:RegisterEvent("CHAT_MSG_SYSTEM");
			self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
			self:RegisterEvent("GROUP_ROSTER_UPDATE");
		end
		
		-- Update the window and all of its row data
		if self.data.OnUpdate then self.data.OnUpdate(self.data); end
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g); end
		end
		BuildGroups(self.data, self.data.g);
		UpdateWindow(self, true);
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
				['icon'] = "Interface\\Icons\\ability_monk_roll",
				['description'] = "Click this button to reroll using the active filter.",
				['visible'] = true,
				['OnClick'] = function(row, button)
					self:Reroll();
					return true;
				end,
				['OnUpdate'] = function(data) 
					data.visible = true;
				end,
			};
			filterHeader = {
				['text'] = "Apply a Search Filter",
				['icon'] = "Interface\\Icons\\TRADE_ARCHAEOLOGY.blp", 
				["description"] = "Please select a search filter option.",
				['visible'] = true,
				['expanded'] = true,
				['OnUpdate'] = function(data) 
					data.visible = true;
				end,
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
						['OnUpdate'] = function(data) 
							data.visible = true;
						end,
					}, { __index = function(t, key)
						if key == "text" or key == "icon" or key == "preview" or key == "texcoord" or key == "previewtexcoord" then
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
						['OnUpdate'] = function(data) 
							data.visible = true;
						end,
					},
					{
						['text'] = "Instance",
						['icon'] = "Interface\\Icons\\Achievement_Dungeon_HEROIC_GloryoftheRaider",
						['description'] = "Click this button to select a random instance based on what you're missing.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app.SetDataMember("RandomSearchFilter", "Instance");
							self.data = mainHeader;
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = function(data) 
							data.visible = true;
						end,
					},
					{
						['text'] = "Dungeon",
						['icon'] = "Interface\\Icons\\Achievement_Dungeon_GloryoftheHERO",
						['description'] = "Click this button to select a random dungeon based on what you're missing.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app.SetDataMember("RandomSearchFilter", "Dungeon");
							self.data = mainHeader;
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = function(data) 
							data.visible = true;
						end,
					},
					{
						['text'] = "Raid",
						['icon'] = "Interface\\Icons\\Achievement_Dungeon_GloryoftheRaider",
						['description'] = "Click this button to select a random raid based on what you're missing.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							app.SetDataMember("RandomSearchFilter", "Raid");
							self.data = mainHeader;
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = function(data) 
							data.visible = true;
						end,
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
						['OnUpdate'] = function(data) 
							data.visible = true;
						end,
					},
				},
			};
			mainHeader = {
				['text'] = "Random - Go Get 'Em!",
				['icon'] = "Interface\\Icons\\Ability_Rogue_RolltheBones.blp", 
				["description"] = "This window allows you to randomly select a place or item to get. Go get 'em!",
				['visible'] = true, 
				['expanded'] = true,
				['OnUpdate'] = function(data) 
					data.visible = true;
				end,
				['back'] = 1,
				["indent"] = 0,
				['options'] = {
					{
						['text'] = "Change Search Filter",
						['icon'] = "Interface\\Icons\\TRADE_ARCHAEOLOGY.blp", 
						["description"] = "Click this to change your search filter.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							self.data = filterHeader;
							UpdateWindow(self, true);
							return true;
						end,
						['OnUpdate'] = function(data) 
							data.visible = true;
						end,
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
		BuildGroups(self.data, self.data.g);
		UpdateGroups(self.data, self.data.g);
		UpdateWindow(self, true);
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

SLASH_ATTUNED1 = "/attuned";
SlashCmdList["ATTUNED"] = function(cmd)
	if IsInRaid() or (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance()) or IsInGroup(LE_PARTY_CATEGORY_HOME) then
		SlashCmdList["ATTUNEDRAID"]();
	else
		SlashCmdList["ATTUNEDGUILD"]();
	end
end

SLASH_ATTUNEDGUILD1 = "/attunedguild";
SLASH_ATTUNEDGUILD2 = "/attunedg";
SlashCmdList["ATTUNEDGUILD"] = function()
	print("MC - ONY - BWL - NAXX - PLAYER");
	SendGuildMessage("?\tq\t7848\t" .. (app.FactionID == Enum.FlightPathFaction.Horde and 6602 or 6502) .. "\t7761\t9121");
end

SLASH_ATTUNEDRAID1 = "/attunedraid";
SLASH_ATTUNEDRAID2 = "/attunedr";
SlashCmdList["ATTUNEDRAID"] = function()
	print("MC - ONY - BWL - NAXX - PLAYER");
	SendGroupMessage("?\tq\t7848\t" .. (app.FactionID == Enum.FlightPathFaction.Horde and 6602 or 6502) .. "\t7761\t9121");
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
app:RegisterEvent("PLAYER_DEAD");
app:RegisterEvent("PLAYER_LOGIN");
app:RegisterEvent("VARIABLES_LOADED");
app:RegisterEvent("ZONE_CHANGED_NEW_AREA");

-- Define Event Behaviours
app.events.VARIABLES_LOADED = function()
	app.Version = GetAddOnMetadata("ATT-Classic", "Version");
	ATTClassicAD = _G["ATTClassicAD"];	-- For account-wide data.
	if not ATTClassicAD then
		ATTClassicAD = { };
		_G["ATTClassicAD"] = ATTClassicAD;
	end
	app:UpdateWindowColors();
	
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
	app.GUID = UnitGUID("player");
	app.Me = "|c" .. (RAID_CLASS_COLORS[classInfo.classFile].colorStr or "ff1eff00") .. name .. "-" .. (realm or GetRealmName()) .. "|r";
	app.Faction = UnitFactionGroup("player");
	if app.Faction == "Horde" then
		app.FactionID = Enum.FlightPathFaction.Horde;
	elseif app.Faction == "Alliance" then
		app.FactionID = Enum.FlightPathFaction.Alliance;
	else
		-- Neutral Pandaren or... something else. Scourge? Neat.
		app.FactionID = 0;
	end
	
	-- Check to see if we have a leftover ItemDB cache
	GetDataMember("CollectedFactions", {});
	GetDataMember("CollectedFlightPaths", {});
	GetDataMember("CollectedQuests", {});
	GetDataMember("CollectedSpells", {});
	GetDataMember("WaypointFilters", {});
	
	-- Cache your character's deaths.
	local totalDeaths = GetDataMember("Deaths", 0);
	local deaths = GetDataMember("DeathsPerCharacter", {});
	deaths[app.GUID] = deaths[app.GUID] or 0;
	
	-- Cache your character's lockouts.
	local lockouts = GetDataMember("lockouts", {});
	local myLockouts = GetTempDataMember("lockouts", lockouts[app.GUID]);
	if not myLockouts then
		myLockouts = {};
		lockouts[app.GUID] = myLockouts;
		SetTempDataMember("lockouts", myLockouts);
	end
	
	-- Cache your character's profession data.
	local recipes = GetDataMember("CollectedSpellsPerCharacter", {});
	local myRecipes = GetTempDataMember("CollectedSpells", recipes[app.GUID]);
	if not myRecipes then
		myRecipes = {};
		recipes[app.GUID] = myRecipes;
		SetTempDataMember("CollectedSpells", myRecipes);
	end
	
	-- Cache your character's faction data.
	local factions = GetDataMember("CollectedFactionsPerCharacter", {});
	local myfactions = GetTempDataMember("CollectedFactions", factions[app.GUID]);
	if not myfactions then
		myfactions = {};
		factions[app.GUID] = myfactions;
		SetTempDataMember("CollectedFactions", myfactions);
	end
	
	-- Cache your character's flight path data.
	local flightPaths = GetDataMember("CollectedFlightPathsPerCharacter", {});
	local myFlightPaths = GetTempDataMember("CollectedFlightPaths", flightPaths[app.GUID]);
	if not myFlightPaths then
		myFlightPaths = {};
		flightPaths[app.GUID] = myFlightPaths;
		SetTempDataMember("CollectedFlightPaths", myFlightPaths);
	end
	
	-- Migrate Flight Path data to the new containers.
	if ATTClassicAD.FlightPaths then
		for key,value in pairs(ATTClassicAD.FlightPaths) do
			SetDataSubMember("CollectedFlightPaths", key, value);
		end
	end
	if ATTCPCD and ATTCPCD.FlightPaths then
		for key,value in pairs(ATTCPCD.FlightPaths) do
			if value then
				myFlightPaths[key] = value;
				SetDataSubMember("CollectedFlightPaths", key, value);
			end
		end
	end
	
	-- Cache your character's quest data.
	local quests = GetDataMember("CollectedQuestsPerCharacter", {});
	local myQuests = GetTempDataMember("CollectedQuests", quests[app.GUID]);
	if not myQuests then
		myQuests = {};
		quests[app.GUID] = myQuests;
		SetTempDataMember("CollectedQuests", myQuests);
	end
	
	-- GUID to Character Name cache
	local characters = GetDataMember("Characters", {});
	if not characters[app.GUID] or true then -- Temporary
		-- Convert old-style "ME" data entries to "GUID" entries.
		local nameF = name .. "%-" .. (realm or GetRealmName());
		local CleanData = function(t, t2)
			for key,data in pairs(t) do
				if string.match(key, nameF) then
					for id,state in pairs(data) do
						t2[id] = state;
					end
					t[key] = nil;
				elseif key ~= app.GUID then
					local isEmpty = true;
					for id,state in pairs(data) do
						isEmpty = false;
						break;
					end
					if isEmpty then
						t[key] = nil;
					end
				end
			end
		end
		CleanData(factions, myfactions);
		CleanData(lockouts, myLockouts);
		CleanData(recipes, myRecipes);
		characters[app.GUID] = app.Me;
	end
	
	-- Clean up settings
	local oldsettings = {};
	for i,key in ipairs({
		"Categories",
		"Characters",
		"CollectedFactions",
		"CollectedFactionsPerCharacter",
		"CollectedFlightPaths",
		"CollectedFlightPathsPerCharacter",
		"CollectedQuests",
		"CollectedQuestsPerCharacter",
		"CollectedSpells",
		"CollectedSpellsPerCharacter",
		"Deaths",
		"DeathsPerCharacter",
		"lockouts",
		"Position",
		"RandomSearchFilter",
		"Reagents",
		"WaypointFilters",
		"EnableTomTomWaypointsOnTaxi",
		"TomTomIgnoreCompletedObjects"
	}) do
		oldsettings[key] = ATTClassicAD[key];
	end
	wipe(ATTClassicAD);
	for key,value in pairs(oldsettings) do
		ATTClassicAD[key] = value;
	end

	-- Tooltip Settings
	GetDataMember("EnableTomTomWaypointsOnTaxi", false);
	GetDataMember("TomTomIgnoreCompletedObjects", true);
	app.Settings:Initialize();
	C_ChatInfo.RegisterAddonMessagePrefix("ATTC");
end
app.events.PLAYER_LOGIN = function()
	app:UnregisterEvent("PLAYER_LOGIN");
	app.CurrentMapID = app.GetCurrentMapID();
	local reagentCache = app.GetDataMember("Reagents");
	if reagentCache then
		local craftedItem = { {}, {[31890] = 1} };	-- Blessings Deck
		for i,itemID in ipairs({ 31882, 31889, 31888, 31885, 31884, 31887, 31886, 31883 }) do reagentCache[itemID] = craftedItem; end
		craftedItem = { {}, {[31907] = 1} };	-- Furies Deck
		for i,itemID in ipairs({ 31901, 31909, 31908, 31904, 31903, 31906, 31905, 31902 }) do reagentCache[itemID] = craftedItem; end
		craftedItem = { {}, {[31914] = 1} };	-- Lunacy Deck
		for i,itemID in ipairs({ 31910, 31918, 31917, 31913, 31912, 31916, 31915, 31911 }) do reagentCache[itemID] = craftedItem; end
		craftedItem = { {}, {[31891] = 1} };	-- Storms Deck
		for i,itemID in ipairs({ 31892, 31900, 31899, 31895, 31894, 31898, 31896, 31893 }) do reagentCache[itemID] = craftedItem; end
	end
	app:GetDataCache();
	
	-- Mark all previously completed quests.
	GetQuestsCompleted(CompletedQuests);
	wipe(DirtyQuests);
	app:RegisterEvent("QUEST_LOG_UPDATE");
	app:RegisterEvent("QUEST_ACCEPTED");
	app:RegisterEvent("QUEST_TURNED_IN");
	RefreshSaves();
	app.CacheFlightPathData();
	app:RefreshData(false);
	LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject(L["TITLE"], {
		type = "launcher",
		icon = "Interface\\Addons\\ATT-Classic\\assets\\logo_32x32",
		OnClick = MinimapButtonOnClick,
		OnEnter = MinimapButtonOnEnter,
		OnLeave = MinimapButtonOnLeave,
	});
end
app.events.PLAYER_DEAD = function()
	SetDataMember("Deaths", GetDataMember("Deaths", 0) + 1);
	local deathsPerCharacter = GetDataMember("DeathsPerCharacter");
	deathsPerCharacter[app.GUID] = (deathsPerCharacter[app.GUID] or 0) + 1;
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
					['OnUpdate'] = function(data)
						data.visible = true;
					end,
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
						data.visible = true;
						if app.Settings:Get("AccountMode") then
							data.trackable = true;
							data.saved = true;
						else
							data.trackable = nil;
							data.saved = nil;
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
						print("Spell " .. entry.spellID .. " (Item ID #" .. (entry.itemID or "???") .. " is missing a filterID?");
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
app.events.CHAT_MSG_ADDON = function(prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID)
	if prefix == "ATTC" then
		--print(prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID)
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
					end
				else
					local data = app:GetWindow("Prime").data;
					response = "ATTC\t" .. (data.progress or 0) .. "\t" .. (data.total or 0) .. "\t" .. app.Settings:GetShortModeString();
				end
				if response then SendResponseMessage("!\t" .. response, sender); end
			elseif cmd == "!" then	-- Query Response
				if a == "ATTC" then
					print(sender .. ": " .. GetProgressColorText(tonumber(args[3]), tonumber(args[4])) .. " " .. args[5]);
				else
					if a == "q" then
						local response = " ";
						for i=3,#args,2 do
							local b = tonumber(args[i]);
							local c = tonumber(args[i + 1]);
							response = response .. b .. ": " .. GetCompletionIcon(c == 1) .. " - ";
						end
						print(response .. sender);
					end
				end
			elseif cmd == "to" then	-- To Command
				local myName = UnitName("player");
				local name,server = strsplit("-", a);
				if myName == name and (not server or GetRealmName() == server) then
					app.events.CHAT_MSG_ADDON(prefix, strsub(text, 5 + strlen(a)), "WHISPER", sender);
				end
			end
		end
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
app.events.ZONE_CHANGED_NEW_AREA = function()
	app.CurrentMapID = app.GetCurrentMapID();
end
app.events.UPDATE_INSTANCE_INFO = function()
	-- We got new information, not refresh the saves. :D
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	RefreshSaves();
end
app.events.QUEST_ACCEPTED = function(questID)
	
end
app.events.QUEST_TURNED_IN = function(questID)
	CompletedQuests[questID] = true;
	for questID,completed in pairs(DirtyQuests) do
		app.QuestCompletionHelper(tonumber(questID));
	end
	wipe(DirtyQuests);
end
app.events.QUEST_LOG_UPDATE = function()
	GetQuestsCompleted(CompletedQuests);
	for questID,completed in pairs(DirtyQuests) do
		app.QuestCompletionHelper(tonumber(questID));
	end
	wipe(DirtyQuests);
	app:UnregisterEvent("QUEST_LOG_UPDATE");
end