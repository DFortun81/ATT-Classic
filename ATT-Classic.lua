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
local GetItemStats = _G["GetItemStats"];
local InCombatLockdown = _G["InCombatLockdown"];
local MAX_CREATURES_PER_ENCOUNTER = 9;
local DESCRIPTION_SEPARATOR = "`";

--[[
local protectedAura = {
	[22888]=true,	-- Rallying Cry of the Dragonslayer
	[16609]=true,	-- Warchief's Blessing
	[15366]=true,	-- Songflower Serenade
	[24425]=true,	-- Spirit of Zandalar
	[17538]=true,	-- Elixir of the Mongoose
	[20875]=true,	-- Rumsey Rum
};
local origBuffButton_OnClick = _G["BuffButton_OnClick"];
function BuffButton_OnClick(self, ...)
	if self.unit == "player" then
		local name, _, _, _, _, _, _, _, _, spellID = UnitAura(self.unit, self:GetID(), self.filter);
		if spellID then
			print(name, spellID);
			if protectedAura[spellID] then
				print("HOW ABOUT NOOOO");
				return false;
			end
		end
	end
	return origBuffButton_OnClick(self, ...);
end
]]--

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

app.AlwaysShowUpdate = function(data) data.visible = true; end
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
	if app.Settings:GetTooltipSetting("PlayDeathSound") then
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
		if not group.itemID and (group.parent.key == "filterID" or group.parent.key == "spellID" or ((group.parent.npcID or (group.parent.spellID and group.categoryID)) 
			and ((group.parent.npcID == -2 or group.parent.npcID == -17 or group.parent.npcID == -7) or (group.parent.parent and group.parent.parent.parent)))) then
			return BuildSourceText(group.parent.parent, 5) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA) .. " (" .. (group.parent.text or RETRIEVING_DATA) .. ")";
		end
		if group.npcID then
			if group.npcID == 0 then
				if group.crs and #group.crs == 1 then
					return BuildSourceText(group.parent, l + 1) .. DESCRIPTION_SEPARATOR .. (NPCNameFromID[group.crs[1]] or RETRIEVING_DATA) .. " (Drop)";
				end
				return BuildSourceText(group.parent, l + 1) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA);
			end
			if group.parent.parent then
				return BuildSourceText(group.parent, l + 1) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA);
			end
		end
		if group.key == "filterID" or group.key == "spellID" then
			return BuildSourceText(group.parent, 5) .. DESCRIPTION_SEPARATOR .. (group.text or RETRIEVING_DATA);
		end
		if l < 1 then
			if group.dr then
				return BuildSourceText(group.parent, l + 1) .. DESCRIPTION_SEPARATOR .. "|c" .. GetProgressColor(group.dr * 0.01) .. tostring(group.dr) .. "%|r";
			else
				return BuildSourceText(group.parent, l + 1);
			end
		end
		return BuildSourceText(group.parent, l + 1) .. " -> " .. (group.text or RETRIEVING_DATA);
	end
	return group.text or RETRIEVING_DATA;
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
		if group.mapID then return group.mapID; end
		if group.maps then return group.maps[1]; end
		if group.coords then return group.coords[1][3]; end
		if group.parent then return GetBestMapForGroup(group.parent); end
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
		SetDataSubMember("CollectedQuests", key, 1);
		SetTempDataSubMember("CollectedQuests", key, 1);
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
				-- If this group has a droprate, add it to the display.
				if group.dr then right = "|c" .. GetProgressColor(group.dr * 0.01) .. tostring(group.dr) .. "%|r " .. right; end
				
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
								tinsert(regroup, j);
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
						return not (a.npcID and a.npcID == -1) and b.npcID and b.npcID == -1;
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
				abbrevs_post[" %-%> " .. app.GetMapName(947)] = "";
				abbrevs_post[" %-%> " .. app.GetMapName(1415)] = "";
				abbrevs_post[" %-%> " .. app.GetMapName(1414)] = "";
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
							tinsert(info, 1, { left = left, wrap = not string.find(left, " -> ") });
							count = count + 1;
						else
							for i,right in ipairs(splitCount.variants) do
								tinsert(info, 1, { left = left, right = right, wrap = not string.find(left, " -> ") });
								count = count + 1;
							end
						end
					else
						tinsert(info, 1, { left = left, right = TRACKER_HEADER_QUESTS, wrap = not string.find(left, " -> ") });
						count = count + 1;
						for i,right in ipairs(splitCount.variants) do
							if not string.find(right, BATTLE_PET_SOURCE_2) then
								tinsert(info, 1, { left = left, right = right, wrap = not string.find(left, " -> ") });
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
		
		if app.Settings:GetTooltipSetting("SummarizeThings") then
			-- Contents
			if group.g and #group.g > 0 then
				local entries, left, right = {};
				BuildContainsInfo(group.g, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
				if #entries > 0 then
					tinsert(info, { left = "Contains:" });
					if #entries < 25 then
						for i,item in ipairs(entries) do
							left = item.group.text or RETRIEVING_DATA;
							if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
							local mapID = GetBestMapForGroup(item.group);
							if mapID and mapID ~= app.GetCurrentMapID() then left = left .. " (" .. app.GetMapName(mapID) .. ")"; end
							if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
							tinsert(info, { left = item.prefix .. left, right = item.right });
						end
					else
						for i=1,math.min(25, #entries) do
							local item = entries[i];
							left = item.group.text or RETRIEVING_DATA;
							if left == RETRIEVING_DATA or left:find("%[]") then working = true; end
							local mapID = GetBestMapForGroup(item.group);
							if mapID and mapID ~= app.GetCurrentMapID() then left = left .. " (" .. app.GetMapName(mapID) .. ")"; end
							if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
							tinsert(info, { left = item.prefix .. left, right = item.right });
						end
						local more = #entries - 25;
						if more > 0 then tinsert(info, { left = "And " .. more .. " more..." }); end
					end
				end
			end
			
			-- Crafted Items
			if crafted and #crafted > 0 then
				if app.Settings:GetTooltipSetting("Show:CraftedItems") then
					local entries, left, right = {};
					BuildContainsInfo(crafted, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
					if #entries > 0 then
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
							local craftTypeID = GetTempDataSubMember("SpellRanks", o.spellID);
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
	["providers"] = function(group, value)
		for k,v in pairs(value) do
			if v[2] > 0 then
				if v[1] == "n" then
					rawget(fieldConverters, "creatureID")(group, v[2]);
				elseif v[1] == "i" then
					rawget(fieldConverters, "itemID")(group, v[2]);
				elseif v[1] == "o" then
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
	["cost"] = function(group, value)
		if type(value) == "number" then
			return;
		else
			for k,v in pairs(value) do
				if v[1] == "i" and v[2] > 0 then
					CacheField(group, "itemID", v[2]);
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
local function RefreshSkills()
	-- Store Skill Data
	local activeSkills = GetTempDataMember("ActiveSkills");
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
		if baseSpell and app.GetTempDataSubMember("CollectedSpells", specID) then activeSkills[specID] = baseSpell; end
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

-- Category Lib
app.BaseCategory = {
	__index = function(t, key)
		if key == "key" then
			return "categoryID";
		elseif key == "text" then
			return L.TRADESKILL_CATEGORY_NAMES[t.categoryID] or ("Unknown Category #" .. t.categoryID);
		elseif key == "icon" then
			return L.TRADESKILL_CATEGORY_ICONS[t.categoryID] or "Interface/ICONS/INV_Misc_Gear_02";
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
local classIcons = {
	[1] = app.asset("ClassIcon_Warrior"),
	[2] = app.asset("ClassIcon_Paladin"),
	[3] = app.asset("ClassIcon_Hunter"),
	[4] = app.asset("ClassIcon_Rogue"),
	[5] = app.asset("ClassIcon_Priest"),
	[7] = app.asset("ClassIcon_Shaman"),
	[8] = app.asset("ClassIcon_Mage"),
	[9] = app.asset("ClassIcon_Warlock"),
	[11] = app.asset("ClassIcon_Druid"),
};
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
local guildCheckCooldown = 0;
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
	if guildCheckCooldown <= time() then
		local count = GetNumGuildMembers();
		if count > 0 then
			for guildIndex = 1, count, 1 do
				local name, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, guid = GetGuildRosterInfo(guildIndex);
				if name and guid then
					rawset(t, strsplit('-', name), guid);
				end
			end
		end
		guildCheckCooldown = time() + 10;
		return rawget(t, info);
	end
end });

app.GetClassIDFromClassFile = function(classFile)
	for i,icon in pairs(classIcons) do
		if C_CreatureInfo.GetClassInfo(i).classFile == classFile then
			return i;
		end
	end
end
app.BaseCharacterClass = {
	__index = function(t, key)
		if key == "key" then
			return "classID";
		elseif key == "text" then
			local text = "|c" .. t.classColors.colorStr .. t.name .. "|r";
			rawset(t, "text", text);
			return text;
		elseif key == "name" then
			return C_CreatureInfo.GetClassInfo(t.classID).className;
		elseif key == "icon" then
			return classIcons[t.classID];
		elseif key == "c" then
			local c = { t.classID };
			rawset(t, "c", c);
			return c;
		elseif key == "nmc" then
			return t.classID ~= app.ClassIndex;
		elseif key == "classColors" then
			return RAID_CLASS_COLORS[C_CreatureInfo.GetClassInfo(t.classID).classFile];
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateCharacterClass = function(id, t)
	return setmetatable(constructor(id, t, "classID"), app.BaseCharacterClass);
end
app.BaseUnit = {
	__index = function(t, key)
		if key == "key" then
			return "unit";
		elseif key == "text" then
			local name = UnitName(t.unit);
			if name then
				rawset(t, "name", name);
				local className, classFile, classID = UnitClass(t.unit);
				if classFile then name = "|c" .. RAID_CLASS_COLORS[classFile].colorStr .. name .. "|r"; end
				if rawget(t, "isML") then name = name .. " |cFFFFFFFF(" .. MASTER_LOOTER .. ")|r"; end
				rawset(t, "className", className);
				rawset(t, "classFile", classFile);
				rawset(t, "classID", classID);
				rawset(t, "text", name);
				return name;
			end
			return t.unit;
		elseif key == "name" then
			return UnitName(t.unit);
		elseif key == "guid" then
			return UnitGUID(t.unit);
		elseif key == "title" then
			if IsInGroup() then
				if rawget(t, "isML") then return MASTER_LOOTER; end
				if UnitIsGroupLeader(t.name) then return RAID_LEADER; end
			end
		elseif key == "description" then
			return LEVEL .. " " .. (UnitLevel(t.unit) or RETRIEVING_DATA) .. " " .. (UnitRace(t.unit) or RETRIEVING_DATA) .. " " .. (UnitClass(t.unit) or RETRIEVING_DATA);
		elseif key == "icon" then
			if t.classID then return classIcons[t.classID]; end
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateUnit = function(unit, t)
	return setmetatable(constructor(unit, t, "unit"), app.BaseUnit);
end
app.BaseSoftReserveUnit = {
	__index = function(t, key)
		if key == "key" then
			return "unit";
		elseif key == "unitText" then
			local name, className, classFile, classID = UnitName(t.unit);
			if name then
				className, classFile, classID = UnitClass(t.unit);
			elseif #{strsplit("-", t.unit)} > 1 then
				-- It's a GUID.
				rawset(t, "guid", t.unit);
				className, classFile, _, _, _, name = GetPlayerInfoByGUID(t.unit);
				classID = app.GetClassIDFromClassFile(classFile);
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
		elseif key == "itemText" then
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
		elseif key == "mapText" then
			local mapID = t.internalMapID;
			if mapID and mapID ~= app.GetCurrentMapID() then
				return " (" .. app.GetMapName(mapID) .. ")";
			end
		elseif key == "text" then
			local name = t.unitText;
			if name then
				return name .. " - " .. t.itemText;
			end
			return t.unit;
		elseif key == "name" then
			return UnitName(t.unit);
		elseif key == "guid" then
			return UnitGUID(t.unit);
		elseif key == "icon" then
			if t.classID then return classIcons[t.classID]; end
		elseif key == "visible" then
			return true;
		elseif key == "itemID" then
			local guid = t.guid;
			if guid then
				local reserve = rawget(GetDataMember("SoftReserves"), guid);
				if reserve then
					return type(reserve) == 'number' and reserve or reserve[1];
				end
			end
		elseif key == "persistence" then
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
		elseif key == "roll" then
			if app.Settings:GetTooltipSetting("SoftReservePersistence") then
				local persistence = t.persistence;
				if persistence and persistence > 0 then
					return 100 + (persistence * 10);
				else
					return 100;
				end
			end
		elseif key == "preview" then
			return t.itemID and select(5, GetItemInfoInstant(t.itemID)) or "Interface\\Icons\\INV_Misc_QuestionMark";
		elseif key == "link" then
			if t.itemID then
				return select(2, GetItemInfo(t.itemID));
			end
		elseif key == "tooltipText" then
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
		elseif key == "summary" then
			return t.roll;
		elseif key == "OnClick" then
			return SoftReserveUnitOnClick;
		elseif key == "itemName" then
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
		elseif key == "crs" then
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
		elseif key == "internalMapID" then
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
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateSoftReserveUnit = function(unit, t)
	return setmetatable(constructor(unit, t, "unit"), app.BaseSoftReserveUnit);
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
app.BaseQuestUnit = {
	__index = function(t, key)
		if key == "key" then
			return "unit";
		elseif key == "unitText" then
			local name, className, classFile, classID = UnitName(t.unit);
			if name then
				className, classFile, classID = UnitClass(t.unit);
			elseif #{strsplit("-", t.unit)} > 1 then
				-- It's a GUID.
				rawset(t, "guid", t.unit);
				className, classFile, _, _, _, name = GetPlayerInfoByGUID(t.unit);
				classID = app.GetClassIDFromClassFile(classFile);
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
		elseif key == "text" then
			return t.unitText;
		elseif key == "name" then
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
		elseif key == "guid" then
			return UnitGUID(t.unit);
		elseif key == "icon" then
			if t.classID then return classIcons[t.classID]; end
		elseif key == "visible" then
			return true;
		elseif key == "collectible" then
			return true;
		elseif key == "trackable" then
			return true;
		elseif key == "collected" then
			return t.saved;
		elseif key == "OnClick" then
			return app.NoFilter;
		elseif key == "OnUpdate" then
			return app.AlwaysShowUpdate;
		elseif key == "saved" then
			local questID = GetRelativeValue(t, "questID");
			if questID then
				local guid = t.guid;
				if guid and questID then
					if guid == app.GUID then
						return IsQuestFlaggedCompleted(questID);
					else
						local questsForGUID = GetDataMember("GroupQuestsByGUID")[guid] or GetDataMember("CollectedQuestsPerCharacter")[guid];
						return questsForGUID and questsForGUID[questID];
					end
				end
			end
		elseif key == "tooltipText" then
			local text = t.unitText;
			local icon = t.icon;
			if icon then text = "|T" .. icon .. ":0|t " .. text; end
			return text;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end,
};
app.CreateQuestUnit = function(unit, t)
	return setmetatable(constructor(unit, t, "unit"), app.BaseQuestUnit);
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
			return app.asset("Normal");
		elseif key == "collectible" then
			return app.Settings:Get("Thing:Deaths");
		elseif key == "progress" then
			if t.collectible then
				return math.min(1000, GetDataMember("Deaths", 0));
			else
				return 0;
			end
		elseif key == "total" then
			if t.collectible then
				return 1000;
			else
				return 0;
			end
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
			local c = {};
			for guid,deaths in pairs(deathsPerCharacter) do
				if guid and deaths and deaths > 0 then
					table.insert(c, { ["name"] = characters[guid] or guid or "???", ["deaths"] = deaths or 0 });
				end
			end
			table.sort(c, function(a, b)
				return a.deaths > b.deaths;
			end);
			for i,data in ipairs(c) do
				tooltip:AddDoubleLine("  " .. data.name, data.deaths, 1, 1, 1);
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
			return app.ColorizeStandingText(t.standing, t.name);
		elseif key == "trackable" or key == "collectible" then
			return app.CollectibleReputations;
		elseif key == "saved" or key == "collected" then
			if app.AccountWideReputations then
				if GetDataSubMember("CollectedFactions", t.factionID) then return 1; end
			else
				if GetTempDataSubMember("CollectedFactions", t.factionID) then return 1; end
			end
			if t.standing >= t.maxstanding then
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
		elseif key == "maxstanding" then
			return 8;
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
	local text = _G["FACTION_STANDING_LABEL" .. standingID];
	return text and app.ColorizeStandingText(standingID, text) or "|cCC222200UNKNOWN|r"
end
app.ColorizeStandingText = function(standingID, text)
	if standingID == 1 then return "|c00CC2222" .. text .. "|r"
	elseif standingID == 2 then return "|c00FF0000" .. text .. "|r"
	elseif standingID == 3 then return "|c00EE6622" .. text .. "|r"
	elseif standingID == 4 then return "|c00FFFF00" .. text .. "|r"
	elseif standingID == 5 then return "|c0000FF00" .. text .. "|r"
	elseif standingID == 6 then return "|c0000FF88" .. text .. "|r"
	elseif standingID == 7 then return "|c0000FFCC" .. text .. "|r"
	elseif standingID == 8 then return "|c0000FFFF" .. text .. "|r"
	else
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
(function()
local itemStats = {};
local function GetItemWeight(itemLink)
	wipe(itemStats);
	GetItemStats(itemLink, itemStats);
	for key,value in pairs(itemStats) do
		--print(_G[key], value);
		return 1;
	end
end
app.GetItemWeight = GetItemWeight;
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
local BestWeightPerItemID = setmetatable({}, { __index = function(t, id)
	local weight = GetItemWeight(string.format("item:%d:0:0:0:0:0:%d", id, BestSuffixPerItemID[id]));
	if weight then
		rawset(t, id, weight);
		return weight;
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
	wipe(BestWeightPerItemID);
end
app.BaseItem = {
	__index = function(t, key)
		if key == "key" then
			return "itemID";
		elseif key == "collectible" then
			return (t.questID and app.CollectibleQuests and not t.repeatable and not t.isBreadcrumb) or (t.factionID and app.CollectibleReputations);
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
			return BestItemLinkPerItemID[t.itemID];
		elseif key == "trackable" then
			return t.questID;
		elseif key == "repeatable" then
			return t.isDaily or t.isWeekly or t.isYearly;
		elseif key == "saved" then
			return IsQuestFlaggedCompletedForObject(t);
		elseif key == "name" then
			return t.link and GetItemInfo(t.link);
		elseif key == "tsm" then
			return string.format("i:%d", t.itemID);
		elseif key == "weight" then
			return BestWeightPerItemID[t.itemID];
		elseif key == "b" then
			return 2;
		elseif key == "f" then
			if t.questID then return 104; end
			local results = SearchForField("itemID", t.itemID);
			if results then
				for i,o in ipairs(SearchForField("itemID", t.itemID)) do
					if o.questID then return 104; end
				end
			end
			if not t.g then return 50; end
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateItem  = function(id, t)
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
app.BaseLootMethod = {
	__index = function(t, key)
		if key == "key" then
			return "id";
		elseif key == "text" then
			return UnitLootMethod[t.id].text;
		elseif key == "description" then
			return UnitLootMethod[t.id].tooltipText;
		elseif key == "icon" then
			return lootMethodIcons[t.id];
		elseif key == "visible" then
			return true;
		elseif key == "back" then
			return 0.5;
		elseif key == "OnClick" then
			return setLootMethod;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateLootMethod = function(id, t)
	return setmetatable(constructor(id, t, "id"), app.BaseLootMethod);
end
app.BaseLootThreshold = {
	__index = function(t, key)
		if key == "key" then
			return "id";
		elseif key == "text" then
			return ITEM_QUALITY_COLORS[t.id].hex .. t.name .. "|r";
		elseif key == "name" then
			return _G["ITEM_QUALITY" .. t.id .. "_DESC"];
		elseif key == "description" then
			return NEWBIE_TOOLTIP_UNIT_LOOT_THRESHOLD;
		elseif key == "icon" then
			return lootThresholdIcons[t.id];
		elseif key == "visible" then
			return true;
		elseif key == "back" then
			return 0.5;
		elseif key == "OnClick" then
			return setLootThreshold;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateLootThreshold = function(id, t)
	return setmetatable(constructor(id, t, "id"), app.BaseLootThreshold);
end
end)();

-- Map Lib
(function()
local arrOfNodes = {
	1414,		-- Kalimdor
	1415,		-- Eastern Kingdoms
};
local C_Map_GetMapInfo = C_Map.GetMapInfo;
local C_Map_GetMapLevels = C_Map.GetMapLevels;
local C_Map_GetBestMapForUnit = C_Map.GetBestMapForUnit;
local C_MapExplorationInfo_GetExploredMapTextures = C_MapExplorationInfo.GetExploredMapTextures;

local EXPLORATION_MAP_ID_TO_AREA_ID_MAP = {
	-- Eastern Kingdoms
	[1416] = 36, 						-- Alterac Mountains
	[1417] = 45, 						-- Arathi Highlands
	[1418] = 3, 						-- Badlands
	[1419] = 4, 						-- Blasted Lands
	[1428] = 46, 						-- Burning Steppes
	[1430] = 41, 						-- Deadwind Pass
	[1426] = 1, 						-- Dun Morogh
	[1431] = 10, 						-- Duskwood
	[1423] = 139, 						-- Eastern Plaguelands
	[1429] = 12, 						-- Elwynn Forest
	[1424] = 267, 						-- Hillsbrad Foothills
	[1432] = 38, 						-- Loch Modan
	[1433] = 44, 						-- Redridge Mountains
	[1427] = 51, 						-- Searing Gorge
	[1421] = 130, 						-- Silverpine Forest
	[1434] = 33, 						-- Stranglethorn Vale
	[1435] = 8, 						-- Swamp of Sorrows
	[1425] = 47, 						-- The Hinterlands
	[1420] = 85, 						-- Tirisfal Glades
	[1436] = 40, 						-- Westfall
	[1422] = 28, 						-- Western Plaguelands
	[1437] = 11, 						-- Wetlands

	-- Kalimdor
	[1440] = 331, 						-- Ashenvale
	[1447] = 16, 						-- Azshara
	[1439] = 148, 						-- Darkshore
	[1443] = 405, 						-- Desolace
	[1411] = 14, 						-- Durotar
	[1445] = 15, 						-- Dustwallow Marsh
	[1448] = 361, 						-- Felwood
	[1444] = 357, 						-- Feralas
	[1450] = 493, 						-- Moonglade
	[1412] = 215, 						-- Mulgore
	[1451] = 1377, 						-- Silithus
	[1442] = 406, 						-- Stonetalon Mountains
	[1446] = 440, 						-- Tanaris
	[1438] = 141, 						-- Teldrassil
	[1413] = 17, 						-- The Barrens
	[1441] = 400, 						-- Thousand Needles
	[1449] = 490, 						-- Un'Goro Crater
	[1452] = 618, 						-- Winterspring
};

local EXPLORATION_AREA_ID_MAP = {
	[1] = {                                      -- Dun Morogh
		[77] = 1,                                -- Anvilmar
		[131] = 2,                               -- Kharanos
		[132] = 3,                               -- Coldridge Valley
		[133] = 4,                               -- Gnomeregan
		[134] = 5,                               -- Gol'Bolar Quarry
		[135] = 6,                               -- Frostmane Hold
		[136] = 7,                               -- The Grizzled Den
		[137] = 8,                               -- Brewnall Village
		[138] = 9,                               -- Misty Pine Refuge
		[189] = 10,                              -- Steelgrill's Depot
		[211] = 11,                              -- Iceflow Lake
		[212] = 12,                              -- Helm's Bed Lake
		[716] = 13,                              -- Ironband's Compound
		[800] = 14,                              -- Coldridge Pass
		[801] = 15,                              -- Chill Breeze Valley
		[802] = 16,                              -- Shimmer Ridge
		[803] = 17,                              -- Amberstill Ranch
		[804] = 18,                              -- The Tundrid Hills
		[805] = 19,                              -- South Gate Pass
		[806] = 20,                              -- South Gate Outpost
		[807] = 21,                              -- North Gate Pass
		[808] = 22,                              -- North Gate Outpost
		[809] = 23,                              -- Gates of Ironforge
		[2102] = 24,                             -- Thunderbrew Distillery
	},
	[3] = {                                      -- Badlands
		[337] = 1,                               -- Apocryphan's Rest
		[338] = 2,                               -- Angor Fortress
		[339] = 3,                               -- Lethlor Ravine
		[340] = 4,                               -- Kargath
		[341] = 5,                               -- Camp Kosh
		[342] = 6,                               -- Camp Boff
		[343] = 7,                               -- Camp Wurg
		[344] = 8,                               -- Camp Cagg
		[345] = 9,                               -- Agmond's End
		[346] = 10,                              -- Hammertoe's Digsite
		[347] = 11,                              -- Dustbelch Grotto
		[1517] = 12,                             -- Uldaman
		[1877] = 13,                             -- Valley of Fangs
		[1878] = 14,                             -- The Dustbowl
		[1879] = 15,                             -- Mirage Flats
		[1897] = 16,                             -- The Maker's Terrace
		[1898] = 17,                             -- Dustwind Gulch
	},
	[4] = {                                      -- Blasted Lands
		[72] = 1,                                -- The Dark Portal
		[73] = 2,                                -- The Tainted Scar
		[1437] = 3,                              -- Dreadmaul Hold
		[1438] = 4,                              -- Nethergarde Keep
		[1439] = 5,                              -- Dreadmaul Post
		[1440] = 6,                              -- Serpent's Coil
		[1441] = 7,                              -- Altar of Storms
		[1457] = 8,                              -- Garrison Armory
		[2517] = 9,                              -- Rise of the Defiler
	},
	[8] = {                                      -- Swamp of Sorrows
		[74] = 1,                                -- Pool of Tears
		[75] = 2,                                -- Stonard
		[76] = 3,                                -- Fallow Sanctuary
		[116] = 4,                               -- Misty Valley
		[300] = 5,                               -- Misty Reed Strand
		[657] = 6,                               -- The Harborage
		[1777] = 7,                              -- Itharius's Cave
		[1778] = 8,                              -- Sorrowmurk
		[1779] = 9,                              -- Draenil'dur Village
		[1780] = 10,                             -- Splinterspear Junction
		[1797] = 11,                             -- Stagalbog
		[1798] = 12,                             -- The Shifting Mire
		[1817] = 13,                             -- Stagalbog Cave
		[1978] = 14,                             -- Misty Reed Post
		[2403] = 15,                             -- The Forbidding Sea
	},
	[10] = {                                     -- Duskwood
		[13] = 1,                                -- The World Tree
		[32] = 2,                                -- The Cemetary
		[42] = 3,                                -- Darkshire
		[93] = 4,                                -- Vul'Gol Ogre Mound
		[94] = 5,                                -- Raven Hill
		[121] = 6,                               -- Tranquil Gardens Cemetery
		[241] = 7,                               -- The Rotting Orchard
		[242] = 8,                               -- Brightwood Grove
		[243] = 9,                               -- Forlorn Rowe
		[244] = 10,                              -- The Whipple Estate
		[245] = 11,                              -- The Yorgen Farmstead
		[492] = 12,                              -- Raven Hill Cemetery
		[536] = 13,                              -- Addle's Stead
		[576] = 14,                              -- Beggar's Haunt
		[799] = 15,                              -- The Darkened Bank
		[856] = 16,                              -- Twilight Grove
		[1097] = 17,                             -- The Hushed Bank
		[1098] = 18,                             -- Manor Mistmantle
		[2098] = 19,                             -- Dawning Wood Catacombs
		[2161] = 20,                             -- Roland's Doom
	},
	[11] = {                                     -- Wetlands
		[118] = 1,                               -- Whelgar's Excavation Site
		[150] = 2,                               -- Menethil Harbor
		[205] = 3,                               -- Dun Modr
		[298] = 4,                               -- Baradin Bay
		[299] = 5,                               -- Menethil Bay
		[309] = 6,                               -- Ironbeard's Tomb
		[836] = 7,                               -- Dun Algaz
		[881] = 8,                               -- Thandol Span
		[1016] = 9,                              -- Direforge Hill
		[1017] = 10,                             -- Raptor Ridge
		[1018] = 11,                             -- Black Channel Marsh
		[1020] = 12,                             -- Mosshide Fen
		[1021] = 13,                             -- Thelgen Rock
		[1022] = 14,                             -- Bluegill Marsh
		[1023] = 15,                             -- Saltspray Glen
		[1024] = 16,                             -- Sundown Marsh
		[1025] = 17,                             -- The Green Belt
		[1036] = 18,                             -- Angerfang Encampment
		[1037] = 19,                             -- Grim Batol
		[1038] = 20,                             -- Dragonmaw Gates
		[1039] = 21,                             -- The Lost Fleet
		[2103] = 22,                             -- Menethil Keep
		[2104] = 23,                             -- Deepwater Tavern
		[2365] = 24,                             -- The Great Sea
		[2402] = 25,                             -- The Forbidding Sea
	},
	[12] = {                                     -- Elwynn Forest
		[9] = 1,                                 -- Northshire Valley
		[18] = 2,                                -- Crystal Lake
		[23] = 3,                                -- Northshire River
		[24] = 4,                                -- Northshire Abbey
		[34] = 5,                                -- Echo Ridge Mine
		[53] = 6,                                -- Thieves Camp
		[54] = 7,                                -- Jasperlode Mine
		[55] = 8,                                -- Valley of Heroes UNUSED
		[56] = 9,                                -- Heroes' Vigil
		[57] = 10,                               -- Fargodeep Mine
		[59] = 11,                               -- Northshire Vineyards
		[60] = 12,                               -- Forest's Edge
		[61] = 13,                               -- Thunder Falls
		[62] = 14,                               -- Brackwell Pumpkin Patch
		[63] = 15,                               -- The Stonefield Farm
		[64] = 16,                               -- The Maclure Vineyards
		[80] = 17,                               -- Stormwind Mountains
		[86] = 18,                               -- Stone Cairn Lake
		[87] = 19,                               -- Goldshire
		[88] = 20,                               -- Eastvale Logging Camp
		[89] = 21,                               -- Mirror Lake Orchard
		[91] = 22,                               -- Tower of Azora
		[92] = 23,                               -- Mirror Lake
		[120] = 24,                              -- Westbrook Garrison
		[797] = 25,                              -- Jerod's Landing
		[798] = 26,                              -- Ridgepoint Tower
	},
	[14] = {                                     -- Durotar
		[362] = 1,                               -- Razor Hill
		[363] = 2,                               -- Valley of Trials
		[364] = 3,                               -- The Den
		[365] = 4,                               -- Burning Blade Coven
		[366] = 5,                               -- Kolkar Crag
		[367] = 6,                               -- Sen'jin Village
		[368] = 7,                               -- Echo Isles
		[369] = 8,                               -- Thunder Ridge
		[370] = 9,                               -- Drygulch Ravine
		[371] = 10,                              -- Dustwind Cave
		[372] = 11,                              -- Tiragarde Keep
		[373] = 12,                              -- Scuttle Coast
		[374] = 13,                              -- Bladefist Bay
		[375] = 14,                              -- Deadeye Shore
		[393] = 15,                              -- Darkspear Strand
		[407] = 16,                              -- Orgrimmar UNUSED
		[410] = 17,                              -- Razorwind Canyon
		[638] = 18,                              -- Hidden Path
		[639] = 19,                              -- Spirit Rock
		[640] = 20,                              -- Shrine of the Dormant Flame
		[814] = 21,                              -- Southfury River
		[816] = 22,                              -- Razormane Grounds
		[817] = 23,                              -- Skull Rock
		[1296] = 24,                             -- Rocktusk Farm
		[1297] = 25,                             -- Jaggedswine Farm
		[2320] = 26,                             -- The Great Sea
		[2337] = 27,                             -- Razor Hill Barracks
		[2979] = 28,                             -- Tor'kren Farm
	},
	[15] = {                                     -- Dustwallow Marsh
		[403] = 1,                               -- Shady Rest Inn
		[496] = 2,                               -- Brackenwall Village
		[497] = 3,                               -- Swamplight Manor
		[498] = 4,                               -- Bloodfen Burrow
		[499] = 5,                               -- Darkmist Cavern
		[500] = 6,                               -- Moggle Point
		[501] = 7,                               -- Beezil's Wreck
		[502] = 8,                               -- Witch Hill
		[503] = 9,                               -- Sentry Point
		[504] = 10,                              -- North Point Tower
		[505] = 11,                              -- West Point Tower
		[506] = 12,                              -- Lost Point
		[507] = 13,                              -- Bluefen
		[508] = 14,                              -- Stonemaul Ruins
		[509] = 15,                              -- The Den of Flame
		[510] = 16,                              -- The Dragonmurk
		[511] = 17,                              -- Wyrmbog
		[512] = 18,                              -- Onyxia's Lair UNUSED
		[513] = 19,                              -- Theramore Isle
		[514] = 20,                              -- Foothold Citadel
		[515] = 21,                              -- Ironclad Prison
		[516] = 22,                              -- Dustwallow Bay
		[517] = 23,                              -- Tidefury Cove
		[518] = 24,                              -- Dreadmurk Shore
		[2079] = 25,                             -- Alcaz Island
		[2158] = 26,                             -- Emberstrife's Den
		[2302] = 27,                             -- The Quagmire
		[2318] = 28,                             -- The Great Sea
	},
	[16] = {                                     -- Azshara
		[878] = 1,                               -- Southfury River
		[1216] = 2,                              -- Timbermaw Hold
		[1217] = 3,                              -- Vanndir Encampment
		[1218] = 4,                              -- TESTAzshara
		[1219] = 5,                              -- Legash Encampment
		[1220] = 6,                              -- Thalassian Base Camp
		[1221] = 7,                              -- Ruins of Eldarath
		[1222] = 8,                              -- Hetaera's Clutch
		[1223] = 9,                              -- Temple of Zin-Malor
		[1224] = 10,                             -- Bear's Head
		[1225] = 11,                             -- Ursolan
		[1226] = 12,                             -- Temple of Arkkoran
		[1227] = 13,                             -- Bay of Storms
		[1228] = 14,                             -- The Shattered Strand
		[1229] = 15,                             -- Tower of Eldara
		[1230] = 16,                             -- Jagged Reef
		[1231] = 17,                             -- Southridge Beach
		[1232] = 18,                             -- Ravencrest Monument
		[1233] = 19,                             -- Forlorn Ridge
		[1234] = 20,                             -- Lake Mennar
		[1235] = 21,                             -- Shadowsong Shrine
		[1236] = 22,                             -- Haldarr Encampment
		[1237] = 23,                             -- Valormok
		[1256] = 24,                             -- The Ruined Reaches
		[2321] = 25,                             -- The Great Sea
		[2497] = 26,                             -- Bitter Reaches
		[3137] = 27,                             -- Talrendis Point
		[3138] = 28,                             -- Rethress Sanctum
		[3140] = 29,                             -- Scalebeard's Cave
	},
	[17] = {                                     -- The Barrens
		[359] = 1,                               -- Bael Modan
		[378] = 2,                               -- Camp Taurajo
		[379] = 3,                               -- Far Watch Post
		[380] = 4,                               -- The Crossroads
		[381] = 5,                               -- Boulder Lode Mine
		[382] = 6,                               -- The Sludge Fen
		[383] = 7,                               -- The Dry Hills
		[384] = 8,                               -- Dreadmist Peak
		[385] = 9,                               -- Northwatch Hold
		[386] = 10,                              -- The Forgotten Pools
		[387] = 11,                              -- Lushwater Oasis
		[388] = 12,                              -- The Stagnant Oasis
		[390] = 13,                              -- Field of Giants
		[391] = 14,                              -- The Merchant Coast
		[392] = 15,                              -- Ratchet
		[401] = 16,                              -- The Tidus Stair
		[458] = 17,                              -- Gold Road
		[720] = 18,                              -- Fray Island
		[815] = 19,                              -- Southfury River
		[877] = 20,                              -- Delete ME
		[1156] = 21,                             -- Southern Barrens
		[1157] = 22,                             -- Southern Gold Road
		[1316] = 23,                             -- Razorfen Downs
		[1597] = 24,                             -- Raptor Grounds UNUSED
		[1598] = 25,                             -- Grol'dom Farm UNUSED
		[1599] = 26,                             -- Mor'shan Base Camp
		[1600] = 27,                             -- Honor's Stand UNUSED
		[1601] = 28,                             -- Blackthorn Ridge UNUSED
		[1602] = 29,                             -- Bramblescar UNUSED
		[1603] = 30,                             -- Agama'gor UNUSED
		[1697] = 31,                             -- Raptor Grounds
		[1698] = 32,                             -- Bramblescar
		[1699] = 33,                             -- Thorn Hill
		[1700] = 34,                             -- Agama'gor
		[1701] = 35,                             -- Blackthorn Ridge
		[1702] = 36,                             -- Honor's Stand
		[1703] = 37,                             -- The Mor'shan Rampart
		[1704] = 38,                             -- Grol'dom Farm
		[1717] = 39,                             -- Razorfen Kraul
		[1718] = 40,                             -- The Great Lift
		[2138] = 41,                             -- Dreadmist Den
		[2157] = 42,                             -- Bael'dun Keep
		[2319] = 43,                             -- The Great Sea
		[2757] = 44,                             -- Shrine of the Fallen Warrior
	},
	[28] = {                                     -- Western Plaguelands
		[190] = 1,                               -- Hearthglen
		[192] = 2,                               -- Northridge Lumber Camp
		[193] = 3,                               -- Ruins of Andorhal
		[195] = 4,                               -- School of Necromancy
		[196] = 5,                               -- Uther's Tomb
		[197] = 6,                               -- Sorrow Hill
		[198] = 7,                               -- The Weeping Cave
		[199] = 8,                               -- Felstone Field
		[200] = 9,                               -- Dalson's Tears
		[201] = 10,                              -- Gahrron's Withering
		[202] = 11,                              -- The Writhing Haunt
		[203] = 12,                              -- Mardenholde Keep
		[813] = 13,                              -- The Bulwark
		[2297] = 14,                             -- Darrowmere Lake
		[2298] = 15,                             -- Caer Darrow
		[2620] = 16,                             -- Thondroril River
		[3197] = 17,                             -- Chillwind Camp
	},
	[33] = {                                     -- Stranglethorn Vale
		[7] = 1,                                 -- Blackwater Cove
		[19] = 2,                                -- Zul'Gurub
		[35] = 3,                                -- Booty Bay
		[37] = 4,                                -- Lake Nazferiti
		[43] = 5,                                -- Wild Shore
		[99] = 6,                                -- Rebel Camp
		[100] = 7,                               -- Nesingwary's Expedition
		[101] = 8,                               -- Kurzen's Compound
		[102] = 9,                               -- Ruins of Zul'Kunda
		[103] = 10,                              -- Ruins of Zul'Mamwe
		[104] = 11,                              -- The Vile Reef
		[105] = 12,                              -- Mosh'Ogg Ogre Mound
		[106] = 13,                              -- The Stockpile
		[117] = 14,                              -- Grom'gol Base Camp
		[122] = 15,                              -- Zuuldaia Ruins
		[123] = 16,                              -- Bal'lal Ruins
		[125] = 17,                              -- Kal'ai Ruins
		[126] = 18,                              -- Tkashi Ruins
		[127] = 19,                              -- Balia'mah Ruins
		[128] = 20,                              -- Ziata'jai Ruins
		[129] = 21,                              -- Mizjah Ruins
		[297] = 22,                              -- Jaguero Isle
		[301] = 23,                              -- The Savage Coast
		[302] = 24,                              -- The Crystal Shore
		[303] = 25,                              -- Shell Beach
		[310] = 26,                              -- Crystalvein Mine
		[311] = 27,                              -- Ruins of Aboraz
		[312] = 28,                              -- Janeiro's Point
		[477] = 29,                              -- Ruins of Jubuwal
		[1577] = 30,                             -- The Cape of Stranglethorn
		[1578] = 31,                             -- Southern Savage Coast
		[1737] = 32,                             -- Mistvale Valley
		[1738] = 33,                             -- Nek'mani Wellspring
		[1739] = 34,                             -- Bloodsail Compound
		[1740] = 35,                             -- Venture Co. Base Camp
		[1741] = 36,                             -- Gurubashi Arena
		[1742] = 37,                             -- Spirit Den
		[1757] = 38,                             -- The Crimson Veil
		[1758] = 39,                             -- The Riptide
		[1759] = 40,                             -- The Damsel's Luck
		[1760] = 41,                             -- Venture Co. Operations Center
		[2177] = 42,                             -- Battle Ring
		[2338] = 43,                             -- South Seas
		[2339] = 44,                             -- The Great Sea
		[3357] = 45,                             -- Yojamba Isle
	},
	[36] = {                                     -- Alterac Mountains
		[277] = 1,                               -- The Foothill Caverns
		[278] = 2,                               -- Lordamere Internment Camp
		[279] = 3,                               -- Dalaran
		[280] = 4,                               -- Strahnbrad
		[281] = 5,                               -- Ruins of Alterac
		[282] = 6,                               -- Crushridge Hold
		[283] = 7,                               -- Slaughter Hollow
		[284] = 8,                               -- The Uplands
		[1339] = 9,                              -- Lordamere Lake
		[1357] = 10,                             -- Gallows' Corner
		[1677] = 11,                             -- Gavin's Naze
		[1678] = 12,                             -- Sofera's Naze
		[1679] = 13,                             -- Corrahn's Dagger
		[1680] = 14,                             -- The Headland
		[1681] = 15,                             -- Misty Shore
		[1682] = 16,                             -- Dandred's Fold
		[1683] = 17,                             -- Growless Cave
		[1684] = 18,                             -- Chillwind Point
		[2839] = 19,                             -- Alterac Valley
		[3486] = 20,                             -- Ravenholdt Manor
	},
	[38] = {                                     -- Loch Modan
		[142] = 1,                               -- Ironband's Excavation Site
		[143] = 2,                               -- Mo'grosh Stronghold
		[144] = 3,                               -- Thelsamar
		[145] = 4,                               -- Algaz Gate
		[146] = 5,                               -- Stonewrought Dam
		[147] = 6,                               -- The Farstrider Lodge
		[149] = 7,                               -- Silver Stream Mine
		[556] = 8,                               -- The Loch
		[837] = 9,                               -- Dun Algaz
		[838] = 10,                              -- North Gate Pass
		[839] = 11,                              -- South Gate Pass
		[923] = 12,                              -- Stonesplinter Valley
		[924] = 13,                              -- Valley of Kings
		[925] = 14,                              -- Algaz Station
		[936] = 15,                              -- Grizzlepaw Ridge
		[2101] = 16,                             -- Stoutlager Inn
	},
	[40] = {                                     -- Westfall
		[2] = 1,                                 -- Longshore
		[20] = 2,                                -- Moonbrook
		[26] = 3,                                -- Lighthouse
		[107] = 4,                               -- Saldean's Farm
		[108] = 5,                               -- Sentinel Hill
		[109] = 6,                               -- Furlbrow's Pumpkin Farm
		[111] = 7,                               -- Jangolode Mine
		[113] = 8,                               -- Gold Coast Quarry
		[115] = 9,                               -- Westfall Lighthouse
		[219] = 10,                              -- Alexston Farmstead
		[916] = 11,                              -- The Jansen Stead
		[917] = 12,                              -- The Dead Acre
		[918] = 13,                              -- The Molsen Farm
		[919] = 14,                              -- Stendel's Pond
		[920] = 15,                              -- The Dagger Hills
		[921] = 16,                              -- Demont's Place
		[922] = 17,                              -- The Dust Plains
		[1518] = 18,                             -- Not Used Deadmines
		[2364] = 19,                             -- The Great Sea
	},
	[41] = {                                     -- Deadwind Pass
		[2558] = 1,                              -- Deadwind Ravine
		[2559] = 2,                              -- Diamondhead River
		[2560] = 3,                              -- Ariden's Camp
		[2561] = 4,                              -- The Vice
		[2562] = 5,                              -- Karazhan
		[2563] = 6,                              -- Morgan's Plot
		[2697] = 7,                              -- Deadman's Crossing
		[2837] = 8,                              -- The Master's Cellar
		[2937] = 9,                              -- Grosh'gok Compound
		[2938] = 10,                             -- Sleeping Gorge
	},
	[44] = {                                     -- Redridge Mountains
		[68] = 1,                                -- Lake Everstill
		[69] = 2,                                -- Lakeshire
		[70] = 3,                                -- Stonewatch
		[71] = 4,                                -- Stonewatch Falls
		[95] = 5,                                -- Redridge Canyons
		[96] = 6,                                -- Tower of Ilgalar
		[97] = 7,                                -- Alther's Mill
		[98] = 8,                                -- Rethban Caverns
		[996] = 9,                               -- Render's Camp
		[997] = 10,                              -- Render's Valley
		[998] = 11,                              -- Render's Rock
		[999] = 12,                              -- Stonewatch Tower
		[1000] = 13,                             -- Galardell Valley
		[1001] = 14,                             -- Lakeridge Highway
		[1002] = 15,                             -- Three Corners
		[2099] = 16,                             -- Stonewatch Keep
	},
	[45] = {                                     -- Arathi Highlands
		[313] = 1,                               -- Northfold Manor
		[314] = 2,                               -- Go'Shek Farm
		[315] = 3,                               -- Dabyrie's Farmstead
		[316] = 4,                               -- Boulderfist Hall
		[317] = 5,                               -- Witherbark Village
		[318] = 6,                               -- Drywhisker Gorge
		[320] = 7,                               -- Refuge Pointe
		[321] = 8,                               -- Hammerfall
		[322] = 9,                               -- Blackwater Shipwrecks
		[323] = 10,                              -- O'Breen's Camp
		[324] = 11,                              -- Stromgarde Keep
		[325] = 12,                              -- The Tower of Arathor
		[326] = 13,                              -- The Sanctum
		[327] = 14,                              -- Faldir's Cove
		[328] = 15,                              -- The Drowned Reef
		[333] = 16,                              -- Circle of East Binding
		[334] = 17,                              -- Circle of West Binding
		[335] = 18,                              -- Circle of Inner Binding
		[336] = 19,                              -- Circle of Outer Binding
		[880] = 20,                              -- Thandol Span
		[1837] = 21,                             -- Witherbark Caverns
		[1857] = 22,                             -- Thoradin's Wall
		[1858] = 23,                             -- Boulder'gor
		[2401] = 24,                             -- The Forbidding Sea
	},
	[46] = {                                     -- Burning Steppes
		[249] = 1,                               -- Dreadmaul Rock
		[250] = 2,                               -- Ruins of Thaurissan
		[251] = 3,                               -- Flame Crest
		[252] = 4,                               -- Blackrock Stronghold
		[253] = 5,                               -- The Pillar of Ash
		[254] = 6,                               -- Blackrock Mountain
		[255] = 7,                               -- Altar of Storms
		[2417] = 8,                              -- Blackrock Pass
		[2418] = 9,                              -- Morgan's Vigil
		[2419] = 10,                             -- Slither Rock
		[2420] = 11,                             -- Terror Wing Path
		[2421] = 12,                             -- Draco'dar
	},
	[47] = {                                     -- The Hinterlands
		[307] = 1,                               -- The Overlook Cliffs
		[348] = 2,                               -- Aerie Peak
		[349] = 3,                               -- Wildhammer Keep
		[350] = 4,                               -- Quel'Danil Lodge
		[351] = 5,                               -- Skulk Rock
		[352] = 6,                               -- Zun'watha
		[353] = 7,                               -- Shadra'Alor
		[354] = 8,                               -- Jintha'Alor
		[355] = 9,                               -- The Altar of Zul
		[356] = 10,                              -- Seradane
		[1880] = 11,                             -- Featherbeard's Hovel
		[1881] = 12,                             -- Shindigger's Camp
		[1882] = 13,                             -- Plaguemist Ravine
		[1883] = 14,                             -- Valorwind Lake
		[1884] = 15,                             -- Agol'watha
		[1885] = 16,                             -- Hiri'watha
		[1886] = 17,                             -- The Creeping Ruin
		[1887] = 18,                             -- Bogen's Ledge
		[1917] = 19,                             -- Shaol'watha
		[2400] = 20,                             -- The Forbidding Sea
		[3317] = 21,                             -- Revantusk Village
	},
	[51] = {                                     -- Searing Gorge
		[246] = 1,                               -- The Cauldron
		[247] = 2,                               -- Grimesilt Dig Site
		[1442] = 3,                              -- Firewatch Ridge
		[1443] = 4,                              -- The Slag Pit
		[1444] = 5,                              -- The Sea of Cinders
		[1445] = 6,                              -- Blackrock Mountain
		[1446] = 7,                              -- Thorium Point
		[1957] = 8,                              -- Blackchar Cave
		[1958] = 9,                              -- Tanner Camp
		[1959] = 10,                             -- Dustfire Valley
		[2838] = 11,                             -- Stonewrought Pass
	},
	[85] = {                                     -- Tirisfal Glades
		[152] = 1,                               -- The Bulwark
		[153] = 2,                               -- Ruins of Lordaeron
		[154] = 3,                               -- Deathknell
		[155] = 4,                               -- Night Web's Hollow
		[156] = 5,                               -- Solliden Farmstead
		[157] = 6,                               -- Agamand Mills
		[158] = 7,                               -- Agamand Family Crypt
		[159] = 8,                               -- Brill
		[160] = 9,                               -- Whispering Gardens
		[161] = 10,                              -- Terrace of Repose
		[162] = 11,                              -- Brightwater Lake
		[163] = 12,                              -- Gunther's Retreat
		[164] = 13,                              -- Garren's Haunt
		[165] = 14,                              -- Balnir Farmstead
		[166] = 15,                              -- Cold Hearth Manor
		[167] = 16,                              -- Crusader Outpost
		[168] = 17,                              -- The North Coast
		[169] = 18,                              -- Whispering Shore
		[173] = 19,                              -- Faol's Rest
		[459] = 20,                              -- Scarlet Watch Post
		[810] = 21,                              -- Stillwater Pond
		[811] = 22,                              -- Nightmare Vale
		[812] = 23,                              -- Venomweb Vale
		[2117] = 24,                             -- Shadow Grave
		[2118] = 25,                             -- Brill Town Hall
		[2119] = 26,                             -- Gallows' End Tavern
		[2399] = 27,                             -- The Great Sea
	},
	[130] = {                                    -- Silverpine Forest
		[172] = 1,                               -- Fenris Isle
		[204] = 2,                               -- Pyrewood Village
		[213] = 3,                               -- Deep Elem Mine
		[226] = 4,                               -- The Skittering Dark
		[227] = 5,                               -- Valgan's Field
		[228] = 6,                               -- The Sepulcher
		[229] = 7,                               -- Olsen's Farthing
		[230] = 8,                               -- The Greymane Wall
		[231] = 9,                               -- Beren's Peril
		[232] = 10,                              -- The Dawning Isles
		[233] = 11,                              -- Ambermill
		[235] = 12,                              -- Fenris Keep
		[236] = 13,                              -- Shadowfang Keep
		[237] = 14,                              -- The Decrepit Ferry
		[238] = 15,                              -- Malden's Orchard
		[239] = 16,                              -- The Ivar Patch
		[240] = 17,                              -- The Dead Field
		[305] = 18,                              -- North Tide's Run
		[306] = 19,                              -- South Tide's Run
		[926] = 20,                              -- Bucklebree Farm
		[927] = 21,                              -- The Shining Strand
		[928] = 22,                              -- North Tide's Hollow
		[1338] = 23,                             -- Lordamere Lake
		[2398] = 24,                             -- The Great Sea
	},
	[139] = {                                    -- Eastern Plaguelands
		[1019] = 1,                              -- The Green Belt
		[2258] = 2,                              -- The Fungal Vale
		[2259] = 3,                              -- UNUSEDThe Marris Stead
		[2260] = 4,                              -- The Marris Stead
		[2261] = 5,                              -- The Undercroft
		[2262] = 6,                              -- Darrowshire
		[2263] = 7,                              -- Crown Guard Tower
		[2264] = 8,                              -- Corin's Crossing
		[2265] = 9,                              -- Scarlet Base Camp
		[2266] = 10,                             -- Tyr's Hand
		[2267] = 11,                             -- The Scarlet Basilica
		[2268] = 12,                             -- Light's Hope Chapel
		[2269] = 13,                             -- Browman Mill
		[2270] = 14,                             -- The Noxious Glade
		[2271] = 15,                             -- Eastwall Tower
		[2272] = 16,                             -- Northdale
		[2273] = 17,                             -- Zul'Mashar
		[2274] = 18,                             -- Mazra'Alor
		[2275] = 19,                             -- Northpass Tower
		[2276] = 20,                             -- Quel'Lithien Lodge
		[2277] = 21,                             -- Plaguewood
		[2278] = 22,                             -- Scourgehold
		[2279] = 23,                             -- Stratholme
		[2299] = 24,                             -- Darrowmere Lake
		[2619] = 25,                             -- Thondroril River
		[2621] = 26,                             -- Lake Mereldar
		[2622] = 27,                             -- Pestilent Scar
		[2623] = 28,                             -- The Infectis Scar
		[2624] = 29,                             -- Blackwood Lake
		[2625] = 30,                             -- Eastwall Gate
		[2626] = 31,                             -- Terrorweb Tunnel
		[2627] = 32,                             -- Terrordale
	},
	[141] = {                                    -- Teldrassil
		[186] = 1,                               -- Dolanaar
		[187] = 2,                               -- Darnassus UNUSED
		[188] = 3,                               -- Shadowglen
		[256] = 4,                               -- Aldrassil
		[257] = 5,                               -- Shadowthread Cave
		[258] = 6,                               -- Fel Rock
		[259] = 7,                               -- Lake Al'Ameth
		[260] = 8,                               -- Starbreeze Village
		[261] = 9,                               -- Gnarlpine Hold
		[262] = 10,                              -- Ban'ethil Barrow Den
		[263] = 11,                              -- The Cleft
		[264] = 12,                              -- The Oracle Glade
		[265] = 13,                              -- Wellspring River
		[266] = 14,                              -- Wellspring Lake
		[478] = 15,                              -- Pools of Arlithrien
		[696] = 16,                              -- Craftsmen's Terrace UNUSED
		[697] = 17,                              -- Tradesmen's Terrace UNUSED
		[698] = 18,                              -- The Temple Gardens UNUSED
		[699] = 19,                              -- Temple of Elune UNUSED
		[700] = 20,                              -- Cenarion Enclave UNUSED
		[701] = 21,                              -- Warrior's Terrace UNUSED
		[702] = 22,                              -- Rut'theran Village
		[736] = 23,                              -- Ban'ethil Hollow
		[2322] = 24,                             -- The Veiled Sea
	},
	[148] = {                                    -- Darkshore
		[442] = 1,                               -- Auberdine
		[443] = 2,                               -- Ruins of Mathystra
		[444] = 3,                               -- Tower of Althalaxx
		[445] = 4,                               -- Cliffspring Falls
		[446] = 5,                               -- Bashal'Aran
		[447] = 6,                               -- Ameth'Aran
		[448] = 7,                               -- Grove of the Ancients
		[449] = 8,                               -- The Master's Glaive
		[450] = 9,                               -- Remtravel's Excavation
		[452] = 10,                              -- Mist's Edge
		[453] = 11,                              -- The Long Wash
		[454] = 12,                              -- Wildbend River
		[455] = 13,                              -- Blackwood Den
		[456] = 14,                              -- Cliffspring River
		[2077] = 15,                             -- Twilight Vale
		[2078] = 16,                             -- Twilight Shore
		[2326] = 17,                             -- The Veiled Sea
	},
	[215] = {                                    -- Mulgore
		[220] = 1,                               -- Red Cloud Mesa
		[221] = 2,                               -- Camp Narache
		[222] = 3,                               -- Bloodhoof Village
		[223] = 4,                               -- Stonebull Lake
		[224] = 5,                               -- Ravaged Caravan
		[225] = 6,                               -- Red Rocks
		[358] = 7,                               -- Brambleblade Ravine
		[360] = 8,                               -- The Venture Co. Mine
		[396] = 9,                               -- Winterhoof Water Well
		[397] = 10,                              -- Thunderhorn Water Well
		[398] = 11,                              -- Wildmane Water Well
		[399] = 12,                              -- Skyline Ridge
		[404] = 13,                              -- Bael'dun Digsite
		[470] = 14,                              -- Thunder Bluff UNUSED
		[471] = 15,                              -- Brave Wind Mesa
		[472] = 16,                              -- Fire Stone Mesa
		[473] = 17,                              -- Mantle Rock
		[474] = 18,                              -- Hunter Rise UNUSED
		[475] = 19,                              -- Spirit RiseUNUSED
		[476] = 20,                              -- Elder RiseUNUSED
		[637] = 21,                              -- Kodo Rock
		[818] = 22,                              -- Palemane Rock
		[819] = 23,                              -- Windfury Ridge
		[820] = 24,                              -- The Golden Plains
		[821] = 25,                              -- The Rolling Plains
		[2137] = 26,                             -- The Pools of VisionUNUSED
	},
	[267] = {                                    -- Hillsbrad Foothills
		[271] = 1,                               -- Southshore
		[272] = 2,                               -- Tarren Mill
		[275] = 3,                               -- Durnholde Keep
		[285] = 4,                               -- Southpoint Tower
		[286] = 5,                               -- Hillsbrad Fields
		[287] = 6,                               -- Hillsbrad
		[288] = 7,                               -- Azurelode Mine
		[289] = 8,                               -- Nethander Stead
		[290] = 9,                               -- Dun Garok
		[294] = 10,                              -- Eastern Strand
		[295] = 11,                              -- Western Strand
		[896] = 12,                              -- Purgation Isle
		[1056] = 13,                             -- Darrow Hill
		[1057] = 14,                             -- Thoradin's Wall
		[2397] = 15,                             -- The Great Sea
		[2777] = 16,                             -- UNUSED Alterac Valley
	},
	[331] = {                                    -- Ashenvale
		[411] = 1,                               -- Bathran's Haunt
		[412] = 2,                               -- The Ruins of Ordil'Aran
		[413] = 3,                               -- Maestra's Post
		[414] = 4,                               -- The Zoram Strand
		[415] = 5,                               -- Astranaar
		[416] = 6,                               -- The Shrine of Aessina
		[417] = 7,                               -- Fire Scar Shrine
		[418] = 8,                               -- The Ruins of Stardust
		[419] = 9,                               -- The Howling Vale
		[420] = 10,                              -- Silverwind Refuge
		[421] = 11,                              -- Mystral Lake
		[422] = 12,                              -- Fallen Sky Lake
		[424] = 13,                              -- Iris Lake
		[425] = 14,                              -- Moonwell
		[426] = 15,                              -- Raynewood Retreat
		[427] = 16,                              -- The Shady Nook
		[428] = 17,                              -- Night Run
		[429] = 18,                              -- Xavian
		[430] = 19,                              -- Satyrnaar
		[431] = 20,                              -- Splintertree Post
		[432] = 21,                              -- The Dor'Danil Barrow Den
		[433] = 22,                              -- Falfarren River
		[434] = 23,                              -- Felfire Hill
		[435] = 24,                              -- Demon Fall Canyon
		[436] = 25,                              -- Demon Fall Ridge
		[437] = 26,                              -- Warsong Lumber Camp
		[438] = 27,                              -- Bough Shadow
		[441] = 28,                              -- Lake Falathim
		[879] = 29,                              -- Southfury River
		[1276] = 30,                             -- The Talondeep Path
		[2301] = 31,                             -- Thistlefur Village
		[2325] = 32,                             -- The Veiled Sea
		[2357] = 33,                             -- Bloodtooth Camp
		[2358] = 34,                             -- Forest Song
		[2359] = 35,                             -- Greenpaw Village
		[2360] = 36,                             -- Silverwing Outpost
		[2457] = 37,                             -- Nightsong Woods
		[2637] = 38,                             -- Kargathia Keep
		[2797] = 39,                             -- Blackfathom Deeps
		[2897] = 40,                             -- Zoram'gar Outpost
		[3177] = 41,                             -- Warsong Labor Camp
		[3319] = 42,                             -- Silverwing Grove
	},
	[357] = {                                    -- Feralas
		[489] = 1,                               -- Thalanaar
		[1099] = 2,                              -- Camp Mojache
		[1100] = 3,                              -- Grimtotem Compound
		[1101] = 4,                              -- The Writhing Deep
		[1102] = 5,                              -- Wildwind Lake
		[1103] = 6,                              -- Gordunni Outpost
		[1104] = 7,                              -- Mok'Gordun
		[1105] = 8,                              -- Feral Scar Vale
		[1106] = 9,                              -- Frayfeather Highlands
		[1107] = 10,                             -- Idlewind Lake
		[1108] = 11,                             -- The Forgotten Coast
		[1109] = 12,                             -- East Pillar
		[1110] = 13,                             -- West Pillar
		[1111] = 14,                             -- Dream Bough
		[1112] = 15,                             -- Jademir Lake
		[1113] = 16,                             -- Oneiros
		[1114] = 17,                             -- Ruins of Ravenwind
		[1115] = 18,                             -- Rage Scar Hold
		[1116] = 19,                             -- Feathermoon Stronghold
		[1117] = 20,                             -- Ruins of Solarsal
		[1118] = 21,                             -- Lower Wilds UNUSED
		[1119] = 22,                             -- The Twin Colossals
		[1120] = 23,                             -- Sardor Isle
		[1121] = 24,                             -- Isle of Dread
		[1136] = 25,                             -- High Wilderness
		[1137] = 26,                             -- Lower Wilds
		[2323] = 27,                             -- The Veiled Sea
		[2518] = 28,                             -- Lariss Pavilion
		[2519] = 29,                             -- Woodpaw Hills
		[2520] = 30,                             -- Woodpaw Den
		[2521] = 31,                             -- Verdantis River
		[2522] = 32,                             -- Ruins of Isildien
		[2577] = 33,                             -- Dire Maul
		[3117] = 34,                             -- Shalzaru's Lair
	},
	[361] = {                                    -- Felwood
		[1761] = 1,                              -- Deadwood Village
		[1762] = 2,                              -- Felpaw Village
		[1763] = 3,                              -- Jaedenar
		[1764] = 4,                              -- Bloodvenom River
		[1765] = 5,                              -- Bloodvenom Falls
		[1766] = 6,                              -- Shatter Scar Vale
		[1767] = 7,                              -- Irontree Woods
		[1768] = 8,                              -- Irontree Cavern
		[1769] = 9,                              -- Timbermaw Hold
		[1770] = 10,                             -- Shadow Hold
		[1771] = 11,                             -- Shrine of the Deceiver
		[1997] = 12,                             -- Bloodvenom Post
		[1998] = 13,                             -- Talonbranch Glade
		[2478] = 14,                             -- Morlos'Aran
		[2479] = 15,                             -- Emerald Sanctuary
		[2480] = 16,                             -- Jadefire Glen
		[2481] = 17,                             -- Ruins of Constellas
		[2618] = 18,                             -- Jadefire Run
	},
	[400] = {                                    -- Thousand Needles
		[439] = 1,                               -- The Shimmering Flats
		[479] = 2,                               -- The Rustmaul Dig Site
		[480] = 3,                               -- Camp E'thok
		[481] = 4,                               -- Splithoof Crag
		[482] = 5,                               -- Highperch
		[483] = 6,                               -- The Screeching Canyon
		[484] = 7,                               -- Freewind Post
		[485] = 8,                               -- The Great Lift
		[486] = 9,                               -- Galak Hold
		[487] = 10,                              -- Roguefeather Den
		[488] = 11,                              -- The Weathered Nook
		[1557] = 12,                             -- Splithoof Hold
		[2097] = 13,                             -- Darkcloud Pinnacle
		[2237] = 14,                             -- Whitereach Post
		[2238] = 15,                             -- Gornia
		[2239] = 16,                             -- Zane's Eye Crater
		[2240] = 17,                             -- Mirage Raceway
		[2303] = 18,                             -- Windbreak Canyon
		[3037] = 19,                             -- Ironstone Camp
		[3038] = 20,                             -- Weazel's Crater
		[3039] = 21,                             -- Tahonda Ruins
	},
	[405] = {                                    -- Desolace
		[596] = 1,                               -- Kodo Graveyard
		[597] = 2,                               -- Ghost Walker Post
		[598] = 3,                               -- Sar'theris Strand
		[599] = 4,                               -- Thunder Axe Fortress
		[600] = 5,                               -- Bolgan's Hole
		[602] = 6,                               -- Mannoroc Coven
		[603] = 7,                               -- Sargeron
		[604] = 8,                               -- Magram Village
		[606] = 9,                               -- Gelkis Village
		[607] = 10,                              -- Valley of Spears
		[608] = 11,                              -- Nijel's Point
		[609] = 12,                              -- Kolkar Village
		[2198] = 13,                             -- Shadowbreak Ravine
		[2217] = 14,                             -- Broken Spear Village
		[2324] = 15,                             -- The Veiled Sea
		[2404] = 16,                             -- Tethris Aran
		[2405] = 17,                             -- Ethel Rethor
		[2406] = 18,                             -- Ranazjar Isle
		[2407] = 19,                             -- Kormek's Hut
		[2408] = 20,                             -- Shadowprey Village
		[2617] = 21,                             -- Scrabblescrew's Camp
		[2657] = 22,                             -- Valley of Bones
	},
	[406] = {                                    -- Stonetalon Mountains
		[460] = 1,                               -- Sun Rock Retreat
		[461] = 2,                               -- Windshear Crag
		[463] = 3,                               -- Cragpool Lake
		[464] = 4,                               -- Mirkfallon Lake
		[465] = 5,                               -- The Charred Vale
		[466] = 6,                               -- Valley of the Bloodfuries
		[467] = 7,                               -- Stonetalon Peak
		[468] = 8,                               -- The Talon Den
		[469] = 9,                               -- Greatwood Vale
		[636] = 10,                              -- Blackwolf River
		[1076] = 11,                             -- Webwinder Path
		[1277] = 12,                             -- The Talondeep Path
		[2160] = 13,                             -- Windshear Mine
		[2537] = 14,                             -- Grimtotem Post
		[2538] = 15,                             -- Camp Aparaje
		[2539] = 16,                             -- Malaka'jin
		[2540] = 17,                             -- Boulderslide Ravine
		[2541] = 18,                             -- Sishir Canyon
		[3157] = 19,                             -- Boulderslide Cavern
	},
	[440] = {                                    -- Tanaris
		[976] = 1,                               -- Gadgetzan
		[977] = 2,                               -- Steamwheedle Port
		[978] = 3,                               -- Zul'Farrak
		[979] = 4,                               -- Sandsorrow Watch
		[980] = 5,                               -- Thistleshrub Valley
		[981] = 6,                               -- The Gaping Chasm
		[982] = 7,                               -- The Noxious Lair
		[983] = 8,                               -- Dunemaul Compound
		[984] = 9,                               -- Eastmoon Ruins
		[985] = 10,                              -- Waterspring Field
		[986] = 11,                              -- Zalashji's Den
		[987] = 12,                              -- Land's End Beach
		[988] = 13,                              -- Wavestrider Beach
		[989] = 14,                              -- Uldum
		[990] = 15,                              -- Valley of the Watchers
		[991] = 16,                              -- Gunstan's Post
		[992] = 17,                              -- Southmoon Ruins
		[1336] = 18,                             -- Lost Rigger Cove
		[1937] = 19,                             -- Noonshade Ruins
		[1938] = 20,                             -- Broken Pillar
		[1939] = 21,                             -- Abyssal Sands
		[1940] = 22,                             -- Southbreak Shore
		[2300] = 23,                             -- Caverns of Time
		[2317] = 24,                             -- South Seas
		[2857] = 25,                             -- The Rumble Cage
	},
	[490] = {                                    -- Un'Goro Crater
		[537] = 1,                               -- Fire Plume Ridge
		[538] = 2,                               -- Lakkari Tar Pits
		[539] = 3,                               -- Terror Run
		[540] = 4,                               -- The Slithering Scar
		[541] = 5,                               -- Marshal's Refuge
		[542] = 6,                               -- Fungal Rock
		[543] = 7,                               -- Golakka Hot Springs
		[1942] = 8,                              -- The Marshlands
		[1943] = 9,                              -- Ironstone Plateau
	},
	[493] = {                                    -- Moonglade
		[656] = 1,                               -- Lake Elune'ara
		[2361] = 2,                              -- Nighthaven
		[2362] = 3,                              -- Shrine of Remulos
		[2363] = 4,                              -- Stormrage Barrow Dens
	},
	[618] = {                                    -- Winterspring
		[2241] = 1,                              -- Frostsaber Rock
		[2242] = 2,                              -- The Hidden Grove
		[2243] = 3,                              -- Timbermaw Post
		[2244] = 4,                              -- Winterfall Village
		[2245] = 5,                              -- Mazthoril
		[2246] = 6,                              -- Frostfire Hot Springs
		[2247] = 7,                              -- Ice Thistle Hills
		[2248] = 8,                              -- Dun Mandarr
		[2249] = 9,                              -- Frostwhisper Gorge
		[2250] = 10,                             -- Owl Wing Thicket
		[2251] = 11,                             -- Lake Kel'Theril
		[2252] = 12,                             -- The Ruins of Kel'Theril
		[2253] = 13,                             -- Starfall Village
		[2254] = 14,                             -- Ban'Thallow Barrow Den
		[2255] = 15,                             -- Everlook
		[2256] = 16,                             -- Darkwhisper Gorge
		[3139] = 17,                             -- Moon Horror Den
	},
	[1377] = {                                   -- Silithus
		[2477] = 1,                              -- The Veiled Sea
		[2737] = 2,                              -- The Scarab Wall
		[2738] = 3,                              -- Southwind Village
		[2739] = 4,                              -- Twilight Base Camp
		[2740] = 5,                              -- The Crystal Vale
		[2741] = 6,                              -- The Scarab Dais
		[2742] = 7,                              -- Hive'Ashi
		[2743] = 8,                              -- Hive'Zora
		[2744] = 9,                              -- Hive'Regal
		[3077] = 10,                             -- Valor's Rest
		[3097] = 11,                             -- The Swarming Pillar
		[3098] = 12,                             -- Twilight Post
		[3099] = 13,                             -- Twilight Outpost
		[3100] = 14,                             -- Ravaged Twilight Camp
		[3257] = 15,                             -- Bones of Grakkarond
		[3425] = 16,                             -- Cenarion Hold
		[3426] = 17,                             -- Staghelm Point
		[3427] = 18,                             -- Bronzebeard Encampment
		[3446] = 19,                             -- Twilight's Run
		[3447] = 20,                             -- Ortell's Hideout
		[3454] = 21,                             -- Ruins of Ahn'Qiraj
	},
}

local EXPLORATION_ID_MAP = {
	[1194] = {
		["128:110:464:33"] = 1,
		["160:120:413:476"] = 2,
		["160:190:474:384"] = 3,
		["190:180:462:286"] = 4,
		["190:200:327:60"] = 5,
		["200:240:549:427"] = 6,
		["210:160:427:78"] = 7,
		["215:215:355:320"] = 8,
		["220:230:432:170"] = 9,
		["230:230:301:189"] = 10,
		["445:160:244:0"] = 11,
	},
	[1200] = {
		["128:120:473:260"] = 1,
		["128:155:379:242"] = 2,
		["128:205:303:307"] = 3,
		["170:128:458:369"] = 4,
		["185:128:291:0"] = 5,
		["205:128:395:0"] = 6,
		["205:230:502:16"] = 7,
		["210:180:255:214"] = 8,
		["215:240:428:80"] = 9,
		["225:235:532:238"] = 10,
		["256:190:523:356"] = 11,
		["256:200:367:303"] = 12,
		["280:240:249:59"] = 13,
		["470:243:270:425"] = 14,
	},
	[1202] = {
		["100:165:564:52"] = 1,
		["115:110:507:294"] = 2,
		["120:110:555:0"] = 3,
		["120:125:384:115"] = 4,
		["125:115:492:63"] = 5,
		["125:125:556:189"] = 6,
		["125:165:442:298"] = 7,
		["128:100:412:0"] = 8,
		["128:105:419:63"] = 9,
		["128:128:306:130"] = 10,
		["128:128:341:537"] = 11,
		["128:128:431:479"] = 12,
		["140:128:498:119"] = 13,
		["145:125:365:350"] = 14,
		["150:120:527:307"] = 15,
		["155:115:407:553"] = 16,
		["155:128:335:462"] = 17,
		["155:128:481:211"] = 18,
		["155:155:431:118"] = 19,
		["170:120:456:0"] = 20,
		["175:185:365:177"] = 21,
		["200:145:317:29"] = 22,
		["200:185:340:234"] = 23,
		["210:150:355:402"] = 24,
		["95:100:581:247"] = 25,
	},
	[1205] = {
		["160:175:225:478"] = 1,
		["165:197:314:471"] = 2,
		["190:170:317:372"] = 3,
		["195:288:399:380"] = 4,
		["200:200:406:279"] = 5,
		["220:280:196:131"] = 6,
		["235:200:462:77"] = 7,
		["255:255:270:197"] = 8,
		["255:320:462:307"] = 9,
		["280:240:334:162"] = 10,
		["285:230:276:0"] = 11,
		["300:300:26:262"] = 12,
		["330:265:44:403"] = 13,
		["350:370:626:253"] = 14,
		["370:300:549:105"] = 15,
	},
	[1206] = {
		["160:230:558:112"] = 1,
		["170:155:419:293"] = 2,
		["175:225:370:186"] = 3,
		["180:210:472:165"] = 4,
		["190:210:138:54"] = 5,
		["190:240:87:138"] = 6,
		["200:220:355:412"] = 7,
		["205:250:655:120"] = 8,
		["210:185:286:310"] = 9,
		["215:210:559:333"] = 10,
		["215:235:432:362"] = 11,
		["230:195:531:276"] = 12,
		["230:240:192:90"] = 13,
		["240:230:108:287"] = 14,
		["245:245:232:145"] = 15,
		["256:215:171:424"] = 16,
	},
	[1207] = {
		["195:200:325:148"] = 1,
		["200:195:445:120"] = 2,
		["220:220:551:48"] = 3,
		["230:230:349:256"] = 4,
		["240:255:0:148"] = 5,
		["245:205:389:7"] = 6,
		["245:205:498:209"] = 7,
		["255:205:17:310"] = 8,
		["255:220:12:428"] = 9,
		["255:280:501:341"] = 10,
		["265:270:345:389"] = 11,
		["270:275:159:199"] = 12,
		["285:240:148:384"] = 13,
		["370:455:611:110"] = 14,
	},
	[1209] = {
		["170:145:405:123"] = 1,
		["170:200:472:9"] = 2,
		["185:155:310:133"] = 3,
		["185:190:559:30"] = 4,
		["195:180:361:15"] = 5,
		["225:170:501:140"] = 6,
		["245:195:361:195"] = 7,
		["265:220:453:259"] = 8,
		["384:450:212:178"] = 9,
	},
	[1210] = {
		["128:158:537:299"] = 1,
		["150:128:474:327"] = 2,
		["173:128:694:289"] = 3,
		["174:220:497:145"] = 4,
		["175:247:689:104"] = 5,
		["186:128:395:277"] = 6,
		["201:288:587:139"] = 7,
		["211:189:746:125"] = 8,
		["216:179:630:326"] = 9,
		["230:205:698:362"] = 10,
		["237:214:757:205"] = 11,
		["243:199:363:349"] = 12,
		["245:205:227:328"] = 13,
		["256:156:239:250"] = 14,
		["256:210:335:139"] = 15,
		["315:235:463:361"] = 16,
	},
	[1211] = {
		["140:125:391:446"] = 1,
		["160:170:470:261"] = 2,
		["165:185:382:252"] = 3,
		["175:165:402:65"] = 4,
		["180:128:323:128"] = 5,
		["180:185:457:144"] = 6,
		["185:165:286:37"] = 7,
		["210:160:352:168"] = 8,
		["210:215:379:447"] = 9,
		["220:160:364:359"] = 10,
		["240:180:491:417"] = 11,
		["240:240:494:262"] = 12,
		["250:215:593:74"] = 13,
		["256:160:465:0"] = 14,
		["256:220:459:13"] = 15,
	},
	[1212] = {
		["160:125:300:311"] = 1,
		["160:200:566:198"] = 2,
		["170:165:600:412"] = 3,
		["170:190:451:323"] = 4,
		["180:205:520:250"] = 5,
		["205:340:590:86"] = 6,
		["220:150:381:265"] = 7,
		["220:180:382:164"] = 8,
		["225:185:137:293"] = 9,
		["285:230:260:355"] = 10,
		["300:206:355:462"] = 11,
		["340:288:307:16"] = 12,
		["370:270:504:343"] = 13,
	},
	[1213] = {
		["165:160:537:367"] = 1,
		["175:245:716:299"] = 2,
		["180:160:592:241"] = 3,
		["185:150:172:477"] = 4,
		["190:205:620:128"] = 5,
		["190:205:79:98"] = 6,
		["195:275:620:291"] = 7,
		["200:205:156:360"] = 8,
		["205:165:291:401"] = 9,
		["205:165:614:30"] = 10,
		["205:250:409:345"] = 11,
		["210:179:309:489"] = 12,
		["210:210:271:261"] = 13,
		["220:360:7:231"] = 14,
		["225:215:722:166"] = 15,
		["230:150:422:36"] = 16,
		["230:235:442:199"] = 17,
		["240:195:457:109"] = 18,
		["240:200:194:9"] = 19,
		["245:170:717:471"] = 20,
		["250:175:537:463"] = 21,
		["360:270:169:83"] = 22,
	},
	[1214] = {
		["125:100:109:482"] = 1,
		["165:200:175:275"] = 2,
		["205:155:414:154"] = 3,
		["215:240:541:236"] = 4,
		["220:310:509:0"] = 5,
		["230:320:524:339"] = 6,
		["235:270:418:201"] = 7,
		["240:275:637:294"] = 8,
		["285:155:208:368"] = 9,
		["288:225:2:192"] = 10,
		["305:275:198:155"] = 11,
		["384:365:605:75"] = 12,
	},
	[1215] = {
		["145:220:158:149"] = 1,
		["160:145:512:232"] = 2,
		["170:170:319:302"] = 3,
		["170:310:693:303"] = 4,
		["180:170:408:260"] = 5,
		["185:195:237:185"] = 6,
		["195:185:240:387"] = 7,
		["200:165:373:365"] = 8,
		["205:195:374:164"] = 9,
		["225:200:171:306"] = 10,
		["235:285:505:333"] = 11,
		["255:205:13:245"] = 12,
		["275:275:509:19"] = 13,
		["280:205:571:239"] = 14,
	},
	[1216] = {
		["115:115:252:249"] = 1,
		["125:125:217:287"] = 2,
		["128:120:792:279"] = 3,
		["128:128:573:280"] = 4,
		["128:165:502:221"] = 5,
		["128:165:759:173"] = 6,
		["128:180:281:167"] = 7,
		["128:190:347:163"] = 8,
		["150:128:295:385"] = 9,
		["155:128:522:322"] = 10,
		["155:170:694:273"] = 11,
		["165:165:608:291"] = 12,
		["180:128:274:296"] = 13,
		["180:165:166:184"] = 14,
		["200:185:314:311"] = 15,
		["200:200:386:294"] = 16,
		["240:185:155:403"] = 17,
		["315:200:397:163"] = 18,
	},
	[1220] = {
		["275:235:77:366"] = 1,
		["305:220:494:300"] = 2,
		["305:230:545:407"] = 3,
		["360:280:247:388"] = 4,
		["405:430:85:30"] = 5,
		["425:325:250:170"] = 6,
		["460:365:422:8"] = 7,
	},
	[1224] = {
		["220:225:707:168"] = 1,
		["225:220:36:109"] = 2,
		["245:265:334:114"] = 3,
		["256:280:173:101"] = 4,
		["270:285:513:99"] = 5,
		["270:310:589:279"] = 6,
		["280:355:722:46"] = 7,
		["294:270:708:311"] = 8,
		["320:270:377:285"] = 9,
		["415:315:56:258"] = 10,
	},
	[1228] = {
		["225:220:422:332"] = 1,
		["240:220:250:270"] = 2,
		["255:250:551:292"] = 3,
		["256:210:704:330"] = 4,
		["256:237:425:431"] = 5,
		["256:240:238:428"] = 6,
		["256:249:577:419"] = 7,
		["256:256:381:147"] = 8,
		["256:341:124:327"] = 9,
		["306:233:696:435"] = 10,
		["310:256:587:190"] = 11,
		["485:405:0:0"] = 12,
	},
	[1233] = {
		["270:270:426:299"] = 1,
		["300:245:269:337"] = 2,
		["380:365:249:76"] = 3,
	},
	[1235] = {
		["160:330:19:132"] = 1,
		["195:145:102:302"] = 2,
		["200:175:653:120"] = 3,
		["220:220:690:353"] = 4,
		["220:340:504:117"] = 5,
		["235:250:390:382"] = 6,
		["250:230:539:369"] = 7,
		["255:285:243:348"] = 8,
		["275:250:55:342"] = 9,
		["315:280:631:162"] = 10,
		["350:300:85:149"] = 11,
		["360:420:298:79"] = 12,
		["910:210:89:31"] = 13,
	},
	[1236] = {
		["195:250:109:370"] = 1,
		["230:300:125:12"] = 2,
		["235:270:229:11"] = 3,
		["255:285:215:348"] = 4,
		["256:230:217:203"] = 5,
		["290:175:339:11"] = 6,
		["295:358:309:310"] = 7,
		["315:235:542:48"] = 8,
		["320:410:352:87"] = 9,
		["345:256:482:321"] = 10,
		["370:295:546:199"] = 11,
	},
	[1237] = {
		["235:270:399:129"] = 1,
		["250:250:654:161"] = 2,
		["255:300:500:215"] = 3,
		["275:256:277:0"] = 4,
		["320:210:595:320"] = 5,
		["340:195:83:197"] = 6,
		["365:245:121:72"] = 7,
		["365:350:0:284"] = 8,
		["430:290:187:333"] = 9,
		["465:255:484:361"] = 10,
		["535:275:133:240"] = 11,
	},
	[1238] = {
		["105:110:311:131"] = 1,
		["105:125:387:64"] = 2,
		["110:105:260:132"] = 3,
		["110:110:306:301"] = 4,
		["110:140:371:129"] = 5,
		["115:115:156:42"] = 6,
		["120:120:345:276"] = 7,
		["125:120:314:493"] = 8,
		["125:125:280:368"] = 9,
		["125:140:196:3"] = 10,
		["128:125:331:59"] = 11,
		["128:125:364:231"] = 12,
		["128:175:432:94"] = 13,
		["140:110:269:26"] = 14,
		["145:128:203:433"] = 15,
		["155:150:388:0"] = 16,
		["165:175:194:284"] = 17,
		["165:190:229:422"] = 18,
		["170:125:394:212"] = 19,
		["170:90:284:0"] = 20,
		["190:175:152:90"] = 21,
		["200:185:235:189"] = 22,
		["245:220:483:8"] = 23,
		["90:115:211:359"] = 24,
		["90:80:241:92"] = 25,
		["95:95:299:88"] = 26,
		["95:95:350:335"] = 27,
	},
	[1239] = {
		["215:365:724:120"] = 1,
		["235:205:171:145"] = 2,
		["240:245:0:262"] = 3,
		["245:305:0:140"] = 4,
		["256:668:746:0"] = 5,
		["275:240:129:236"] = 6,
		["300:275:565:218"] = 7,
		["315:235:286:110"] = 8,
		["345:250:552:378"] = 9,
		["360:315:279:237"] = 10,
		["365:305:492:0"] = 11,
	},
	[1240] = {
		["165:200:488:0"] = 1,
		["195:240:442:241"] = 2,
		["200:185:208:375"] = 3,
		["200:240:524:252"] = 4,
		["210:215:387:11"] = 5,
		["215:215:307:29"] = 6,
		["220:200:317:331"] = 7,
		["225:205:328:148"] = 8,
		["225:210:459:105"] = 9,
		["225:256:220:102"] = 10,
		["256:175:339:418"] = 11,
		["280:190:205:467"] = 12,
		["288:235:523:377"] = 13,
		["305:210:204:260"] = 14,
	},
	[1243] = {
		["175:128:13:314"] = 1,
		["185:240:456:125"] = 2,
		["190:160:628:176"] = 3,
		["195:185:247:205"] = 4,
		["200:185:349:115"] = 5,
		["200:240:237:41"] = 6,
		["205:180:401:21"] = 7,
		["205:245:527:264"] = 8,
		["225:185:347:218"] = 9,
		["225:190:89:142"] = 10,
		["230:190:470:371"] = 11,
		["240:175:77:245"] = 12,
		["256:250:507:115"] = 13,
		["300:240:92:82"] = 14,
		["350:360:611:230"] = 15,
	},
	[1244] = {
		["128:100:494:548"] = 1,
		["128:190:335:313"] = 2,
		["160:210:382:281"] = 3,
		["170:240:272:127"] = 4,
		["180:256:377:93"] = 5,
		["185:128:368:443"] = 6,
		["190:128:462:323"] = 7,
		["200:200:561:292"] = 8,
		["225:225:491:153"] = 9,
		["256:185:436:380"] = 10,
		["315:256:101:247"] = 11,
	},
	[1247] = {
		["150:215:318:162"] = 1,
		["170:195:468:85"] = 2,
		["175:158:329:510"] = 3,
		["175:183:229:485"] = 4,
		["180:195:365:181"] = 5,
		["190:205:324:306"] = 6,
		["195:215:510:0"] = 7,
		["200:170:305:412"] = 8,
		["230:190:375:94"] = 9,
	},
	[1248] = {
		["128:195:131:137"] = 1,
		["146:200:856:151"] = 2,
		["155:150:260:373"] = 3,
		["165:175:189:324"] = 4,
		["180:245:520:238"] = 5,
		["200:160:796:311"] = 6,
		["200:205:392:218"] = 7,
		["205:185:272:251"] = 8,
		["210:185:463:141"] = 9,
		["215:305:205:38"] = 10,
		["220:195:104:259"] = 11,
		["225:255:597:258"] = 12,
		["235:205:547:426"] = 13,
		["245:245:19:28"] = 14,
		["245:255:713:344"] = 15,
		["255:195:203:158"] = 16,
		["275:240:356:347"] = 17,
		["285:185:694:225"] = 18,
	},
	[1249] = {
		["190:190:31:155"] = 1,
		["205:195:259:131"] = 2,
		["210:180:205:70"] = 3,
		["210:190:357:264"] = 4,
		["210:195:391:192"] = 5,
		["240:220:492:250"] = 6,
		["250:240:179:200"] = 7,
		["305:310:0:0"] = 8,
		["320:365:610:300"] = 9,
	},
	[1250] = {
		["125:125:475:433"] = 1,
		["125:86:663:582"] = 2,
		["145:107:572:561"] = 3,
		["150:150:389:320"] = 4,
		["190:97:718:571"] = 5,
		["200:215:390:145"] = 6,
		["225:120:668:515"] = 7,
		["230:355:210:234"] = 8,
		["270:205:247:0"] = 9,
		["288:355:457:282"] = 10,
		["320:275:553:197"] = 11,
	},
	[1251] = {
		["100:100:241:6"] = 1,
		["170:160:555:181"] = 2,
		["190:220:447:102"] = 3,
		["195:242:293:426"] = 4,
		["200:250:554:0"] = 5,
		["205:145:431:0"] = 6,
		["205:195:690:444"] = 7,
		["205:250:311:61"] = 8,
		["205:285:590:365"] = 9,
		["220:220:607:215"] = 10,
		["230:230:167:389"] = 11,
		["245:285:212:215"] = 12,
		["275:250:387:244"] = 13,
		["285:245:625:33"] = 14,
		["285:280:399:380"] = 15,
	},
	[1252] = {
		["110:110:493:70"] = 1,
		["110:170:478:386"] = 2,
		["115:115:486:329"] = 3,
		["120:195:623:167"] = 4,
		["140:165:690:141"] = 5,
		["145:320:404:256"] = 6,
		["150:125:454:0"] = 7,
		["155:160:689:233"] = 8,
		["180:180:208:234"] = 9,
		["190:155:305:0"] = 10,
		["190:250:540:320"] = 11,
		["215:293:192:375"] = 12,
		["225:180:751:198"] = 13,
		["230:195:454:201"] = 14,
		["240:220:618:298"] = 15,
		["285:245:319:75"] = 16,
	},
	[1253] = {
		["200:195:660:21"] = 1,
		["230:205:534:224"] = 2,
		["250:315:422:0"] = 3,
		["255:250:257:313"] = 4,
		["280:270:230:0"] = 5,
		["285:240:367:381"] = 6,
		["400:255:239:189"] = 7,
	},
	[1254] = {
		["110:140:611:147"] = 1,
		["110:180:473:234"] = 2,
		["120:135:533:104"] = 3,
		["150:160:291:434"] = 4,
		["155:150:561:256"] = 5,
		["155:150:592:75"] = 6,
		["160:150:395:346"] = 7,
		["160:190:629:220"] = 8,
		["165:180:509:168"] = 9,
		["175:165:421:91"] = 10,
		["180:200:252:199"] = 11,
		["185:250:203:286"] = 12,
		["195:175:299:100"] = 13,
		["195:210:323:359"] = 14,
		["205:145:325:289"] = 15,
		["205:157:445:511"] = 16,
		["210:175:254:0"] = 17,
		["215:175:499:293"] = 18,
		["215:180:363:194"] = 19,
		["220:210:449:372"] = 20,
	},
	[1259] = {
		["120:155:818:107"] = 1,
		["145:215:422:95"] = 2,
		["160:210:404:194"] = 3,
		["190:200:681:153"] = 4,
		["200:150:77:331"] = 5,
		["215:175:84:229"] = 6,
		["220:255:191:369"] = 7,
		["225:180:35:422"] = 8,
		["235:140:478:44"] = 9,
		["235:270:250:106"] = 10,
		["240:125:552:499"] = 11,
		["240:155:499:119"] = 12,
		["245:185:644:40"] = 13,
		["265:280:238:221"] = 14,
		["270:300:479:201"] = 15,
		["315:200:296:429"] = 16,
		["370:220:389:353"] = 17,
		["395:128:396:540"] = 18,
		["570:170:366:0"] = 19,
	},
	[1260] = {
		["145:159:496:509"] = 1,
		["160:145:548:90"] = 2,
		["165:155:332:465"] = 3,
		["175:135:408:533"] = 4,
		["185:160:405:429"] = 5,
		["195:170:330:29"] = 6,
		["215:215:420:54"] = 7,
		["235:145:292:263"] = 8,
		["235:155:297:381"] = 9,
		["235:200:307:123"] = 10,
		["240:145:483:0"] = 11,
		["245:128:271:331"] = 12,
	},
	[1261] = {
		["285:285:582:67"] = 1,
		["295:270:367:178"] = 2,
		["310:355:560:240"] = 3,
		["315:345:121:151"] = 4,
		["345:285:158:368"] = 5,
		["345:285:367:380"] = 6,
		["570:265:160:6"] = 7,
	},
	[1263] = {
		["555:510:244:89"] = 1,
	},
	[1264] = {
		["288:256:116:413"] = 1,
		["320:256:344:197"] = 2,
		["320:289:104:24"] = 3,
		["384:384:500:65"] = 4,
		["384:512:97:144"] = 5,
		["512:320:265:12"] = 6,
		["512:384:245:285"] = 7,
	},
	[1266] = {
		["125:165:611:242"] = 1,
		["145:125:617:158"] = 2,
		["165:140:593:340"] = 3,
		["165:200:509:107"] = 4,
		["175:185:555:27"] = 5,
		["185:160:392:137"] = 6,
		["185:180:493:258"] = 7,
		["200:160:523:376"] = 8,
		["215:185:401:198"] = 9,
		["230:120:229:243"] = 10,
		["240:140:222:172"] = 11,
		["250:180:368:7"] = 12,
		["255:205:447:441"] = 13,
	},
	[1273] = {
		["235:290:399:375"] = 1,
		["270:240:348:13"] = 2,
		["300:300:335:172"] = 3,
	},
};

local ExploredSubMapsByIDMeta = { __index = function(t, mapID)
	local submaps = {};
	local artID = C_Map.GetMapArtID(mapID);
	if artID then
		submaps = setmetatable(submaps, { __index = function(t2, submapid)
			local exploredMapTextures = C_MapExplorationInfo_GetExploredMapTextures(mapID)
			if exploredMapTextures then
				for _,info in ipairs(exploredMapTextures) do
					local hash = info.textureWidth..":"..info.textureHeight..":"..info.offsetX..":"..info.offsetY;
					local remappedExplorationID = EXPLORATION_ID_MAP[artID][hash];
					if remappedExplorationID then
						rawset(t2, remappedExplorationID, true);
					else
						-- print("Missing Exploration ID for ", hash);
					end
				end
			end
			if rawget(t2, submapid) then
				return true;
			end
		end });
	end
	rawset(t, mapID, submaps);
	return submaps;
end };
local ExploredSubMapsByID = setmetatable({}, ExploredSubMapsByIDMeta);
app.GetCurrentMapID = function()
	local mapID = C_Map_GetBestMapForUnit("player");
	local text_to_mapID = app.L["ZONE_TEXT_TO_MAP_ID"];
	if text_to_mapID then
		local real = GetRealZoneText();
		local zone = GetSubZoneText();
		local otherMapID = (real and text_to_mapID[real]) or (zone and text_to_mapID[zone]);
		if otherMapID then return otherMapID; end
	end
	text_to_mapID = app.L["ALT_ZONE_TEXT_TO_MAP_ID"];
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
app.CacheFlightPathDataForMap = function(mapID, nodes)
	local count = 0;
	local temp = {};
	for nodeID,node in pairs(app.FlightPathDB) do
		if node.mapID == mapID and not node.u then
			if not node.faction or node.faction < 1 or node.faction == app.FactionID then
				temp[nodeID] = true;
				count = count + 1;
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
				for nodeID,_ in pairs(temp) do
					local node = app.FlightPathDB[nodeID];
					if node.coord then
						-- Allow for a little bit of leeway.
						if math.sqrt((node.coord[1] - px)^2 + (node.coord[2] - py)^2) < 0.6 then
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
app.events.GOSSIP_SHOW = function()
	local nodes = {};
	if app.CacheFlightPathDataForTarget(nodes) > 0 then
		if app.AccountWideFlightPaths then
			for nodeID,_ in pairs(nodes) do
				SetTempDataSubMember("CollectedFlightPaths", nodeID, 1);
				if not GetDataSubMember("CollectedFlightPaths", nodeID) then
					SetDataSubMember("CollectedFlightPaths", nodeID, 1);
					UpdateSearchResults(SearchForField("flightPathID", nodeID));
				end
			end
		else
			for nodeID,_ in pairs(nodes) do
				SetDataSubMember("CollectedFlightPaths", nodeID, 1);
				if not GetTempDataSubMember("CollectedFlightPaths", nodeID) then
					SetTempDataSubMember("CollectedFlightPaths", nodeID, 1);
					UpdateSearchResults(SearchForField("flightPathID", nodeID));
				end
			end
		end
	end
end
app.events.TAXIMAP_OPENED = function()
	local nodes = {};
	if app.CacheFlightPathDataForTarget(nodes) == 0 then
		-- Refresh the current location.
		app.CurrentMapID = app.GetCurrentMapID();
		if app.CacheFlightPathDataForMap(app.CurrentMapID, nodes) == 0 then
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
	
	local allNodeData = C_TaxiMap.GetAllTaxiNodes(GetTaxiMapID());
	if allNodeData then
		for j,nodeData in ipairs(allNodeData) do
			if nodeData.state and nodeData.state < 2 then
				nodes[nodeData.nodeID] = true;
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
		for nodeID,_ in pairs(nodes) do
			SetTempDataSubMember("CollectedFlightPaths", nodeID, 1);
			if not GetDataSubMember("CollectedFlightPaths", nodeID) then
				SetDataSubMember("CollectedFlightPaths", nodeID, 1);
				UpdateSearchResults(SearchForField("flightPathID", nodeID));
			end
		end
	else
		for nodeID,_ in pairs(nodes) do
			SetDataSubMember("CollectedFlightPaths", nodeID, 1);
			if not GetTempDataSubMember("CollectedFlightPaths", nodeID) then
				SetTempDataSubMember("CollectedFlightPaths", nodeID, 1);
				UpdateSearchResults(SearchForField("flightPathID", nodeID));
			end
		end
	end
end
app.ExplorationClass = {
	__index = function(t, key)
		if key == "key" then
			return "explorationID";
		elseif key == "text" then
			local areaID = t.areaID;
			if areaID and EXPLORATION_AREA_ID_MAP[areaID] then
				for subZoneAreaID, explorationID in pairs(EXPLORATION_AREA_ID_MAP[areaID]) do
					if explorationID == t.explorationID then
						local subZoneName = C_Map.GetAreaInfo(subZoneAreaID)
						if subZoneName then
							return subZoneName;
						end
					end
				end
			end

			return t.explorationID;
		elseif key == "icon" then
			return "Interface\\Addons\\ATT-Classic\\assets\\INV_Misc_Map02";
		elseif key == "areaID" then
			local mapID = t.mapID;
			if mapID and EXPLORATION_MAP_ID_TO_AREA_ID_MAP[mapID] then
				return EXPLORATION_MAP_ID_TO_AREA_ID_MAP[mapID];
			end
		elseif key == "artID" then
			return t.parent and (t.parent.artID or (t.parent.parent and t.parent.parent.artID));
		elseif key == "mapID" then
			return t.parent and (t.parent.mapID or (t.parent.parent and t.parent.parent.mapID));
		elseif key == "collectible" then
			return app.CollectibleExploration;
		elseif key == "collected" then
			return ExploredSubMapsByID[t.mapID][t.explorationID];
		elseif key == "hash" then
			local artID = t.artID;
			if artID then
				if EXPLORATION_ID_MAP[artID] then
					for hash,explorationID in pairs(EXPLORATION_ID_MAP[artID]) do
						if explorationID == t.explorationID then
							return hash;
						end
					end
				end
			end
		elseif key == "coords" then
			local hash = t.hash;
			if hash then
				local layers = C_Map.GetMapArtLayers(t.mapID);
				if layers and layers[1] then
					local coords = {};
					local width, height, offsetX, offsetY = strsplit(":", hash);
					tinsert(coords, {((offsetX + (width * 0.5)) * 100) / layers[1].layerWidth, ((offsetY + (height * 0.5)) * 100) / layers[1].layerHeight, t.mapID});
					return coords;
				end
			end
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateExploration = function(id, t)
	return setmetatable(constructor(id, t, "explorationID"), app.ExplorationClass);
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
		elseif key == "crs" then
			local qg = t.info.qg;
			if qg then return { qg }; end
		elseif key == "mapID" then
			return t.info.mapID;
		elseif key == "races" then
			local faction = t.info.faction;
			if faction and faction > 0 then
				if faction == Enum.FlightPathFaction.Horde then
					return {2,5,6,8};
				else
					return {1,3,4,7};
				end
			end
		elseif key == "nmc" then
			local c = t.info.c;
			if c and not containsValue(c, app.ClassIndex) then
				rawset(t, "nmc", true); -- "Not My Class"
				return true;
			end
			rawset(t, "nmc", false); -- "My Class"
			return false;
		elseif key == "nmr" then
			local faction = t.info.faction;
			if faction and faction > 0 then
				return faction ~= app.FactionID;
			end
		elseif key == "info" then
			local info = app.FlightPathDB[t.flightPathID];
			if info then
				rawset(t, key, info);
				if info.mapID then CacheField(t, "mapID", info.mapID); end
				if info.qg then CacheField(t, "creatureID", info.qg); end
				return info;
			end
		elseif key == "description" then
			local description = t.info.description;
			if description then
				description = description .."\n\n";
			else
				description = "";
			end
			return description .. "Flight paths are cached when you look at the flight master at each location.\n  - Crieve";
		elseif key == "icon" then
			local faction = t.info.faction;
			if faction and faction > 0 then
				if faction == Enum.FlightPathFaction.Horde then
					return app.asset("fp_horde");
				else
					return app.asset("fp_alliance");
				end
			end
			return app.asset("fp_neutral");
		else
			-- Something that isn't dynamic.
			return rawget(t.info, key);
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
		elseif key == "name" then
			return app.GetMapName(t.mapID);
		elseif key == "text" then
			if t["isRaid"] then return "|cffff8000" .. t.name .. "|r"; end
			return t.name;
		elseif key == "back" then
			if app.CurrentMapID == t.mapID or (t.maps and contains(t.maps, app.CurrentMapID)) then
				return 1;
			end
		elseif key == "icon" then
			return "Interface/ICONS/INV_Misc_Map_01";
		elseif key == "lvl" then
			return app.GetMapLevel(t.mapID);
		elseif key == "artID" then
			return C_Map.GetMapArtID(t.mapID);
		elseif key == "saved" then
			return t.locks;
		elseif key == "locks" then
			local locks = GetTempDataSubMember("lockouts", t.name);
			if locks then
				rawset(t, key, locks);
				return locks;
			end
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateMap = function(id, t)
	local map = setmetatable(constructor(id, t, "mapID"), app.BaseMap);
	local artID = map.artID;
	if artID and map.g then
		local maxExplorationID = 0;
		if EXPLORATION_ID_MAP[artID] then
			for _,explorationID in pairs(EXPLORATION_ID_MAP[artID]) do
				if explorationID > maxExplorationID then
					maxExplorationID = explorationID;
				end
			end
		else
			-- NOTE: Crieve tested this, but you can't detect if you've discovered a major city. The map is always visible.
			-- print("Missing EXPLORATION_ID_MAP for Map #", id , ", Art #", artID);
		end
		if maxExplorationID > 0 then
			local explorationObjects = {};
			for explorationID=1,maxExplorationID,1 do
				tinsert(explorationObjects, app.CreateExploration(explorationID, {artID=artID}));
			end
			tinsert(map.g, 1, app.CreateNPC(-15, explorationObjects))
		end
	end
	return map;
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
			return t.isDaily or t.isWeekly or t.isYearly;
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
(function()
app.SkillIDToSpellID = setmetatable({
	[171] = 2259,	-- Alchemy
	[261] = 5149,	-- Beast Training
	[164] = 2018,	-- Blacksmithing
	[185] = 2550,	-- Cooking
	[333] = 7411,	-- Enchanting
	[202] = 4036,	-- Engineering
	[356] = 7620,	-- Fishing
	[129] = 3273,	-- First Aid
	[182] = 2366,	-- Herb Gathering
	[165] = 2108,	-- Leatherworking
	[186] = 2575,	-- Mining
	[393] = 8613,	-- Skinning
	[197] = 3908,	-- Tailoring
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
			return app.SkillIDToSpellID[t.requireSkill];
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
end)();

-- PVP Ranks
app.BasePVPRank = {
	__index = function(t, key)
		if key == "key" then
			return "pvpRankID";
		elseif key == "text" then
			return _G["PVP_RANK_" .. (t.pvpRankID + 4) .. "_" .. (t.s or 0)];
		elseif key == "icon" then
			return format("%s%02d","Interface\\PvPRankBadges\\PvPRank", t.pvpRankID);
		elseif key == "description" then
			return "Opposite faction equivalent: " .. _G["PVP_RANK_" .. (t.pvpRankID + 4) .. "_" .. ((t.s == 1 and 0 or 1))];
		elseif key == "title" then
			return RANK .. " " .. t.pvpRankID;
		elseif key == "r" then
			return t.parent.r or app.FactionID;
		elseif key == "s" then
			return t.r == Enum.FlightPathFaction.Alliance and 1 or 0;
		end
	end
};
app.CreatePVPRank = function(id, t)
	return setmetatable(constructor(id, t, "pvpRankID"), app.BasePVPRank);
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
			if t.providers then
				for k,v in pairs(t.providers) do
					if v[2] > 0 then
						if v[1] == "o" then
							return L["OBJECT_ID_ICONS"][v[2]] or "Interface\\Icons\\INV_Misc_Bag_10"
						elseif v[1] == "i" then
							local _,_,_,_,icon = GetItemInfoInstant(v[2]);
							if icon then
								return icon
							end
						end
					end
				end
			end
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
			return t.isDaily or t.isWeekly or t.isYearly;
		elseif key == "saved" then
			return IsQuestFlaggedCompletedForObject(t);
		elseif key == "f" then
			if t.itemID then return 104; end
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateQuest = function(id, t)
	return setmetatable(constructor(id, t, "questID"), app.BaseQuest);
end
app.BaseQuestObjective = {
	__index = function(t, key)
		if key == "key" then
			return "objectiveID";
		elseif key == "text" then
			local questID = t.parent.questID;
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
		elseif key == "questID" then
			return t.parent.questID;
		elseif key == "objectiveID" then
			return 1;
		elseif key == "icon" then
			if t.providers then
				for k,v in pairs(t.providers) do
					if v[2] > 0 then
						if v[1] == "o" then
							return L["OBJECT_ID_ICONS"][v[2]] or "Interface\\Worldmap\\Gear_64Grey"
						elseif v[1] == "i" then
							local _,_,_,_,icon = GetItemInfoInstant(v[2]);
							if icon then
								return icon
							end
						end
					end
				end
			end
			return t.parent.icon or "Interface\\Worldmap\\Gear_64Grey";
		elseif key == "trackable" then
			return true;
		elseif key == "collectible" then
			return false;
		elseif key == "repeatable" then
			return t.parent.repeatable;
		elseif key == "saved" then
			-- If the parent is saved, return immediately.
			local saved = t.parent.saved;
			if saved then return saved; end
			
			-- Check to see if the objective was completed.
			local questID = t.parent.questID;
			if questID then
				local objectives = C_QuestLog.GetQuestObjectives(questID);
				if objectives then
					local objective = objectives[t.objectiveID];
					if objective then
						return objective.finished and 1;
					end
				end
			end
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateQuestObjective = function(id, t)
	return setmetatable(constructor(id, t, "objectiveID"), app.BaseQuestObjective);
end
end)();

-- Recipe Lib
app.BaseRecipe = {
	__index = function(t, key)
		if key == "key" then
			return "spellID";
		elseif key == "filterID" then
			return 200;
		elseif key == "name" then
			return select(1, GetSpellLink(t.spellID));
		elseif key == "text" then
			if t.itemID then return select(2, GetItemInfo(t.itemID)); end
			if t.craftTypeID then return Colorize(t.name, app.CraftTypeIDToColor(t.craftTypeID)); end
			return t.name;
		elseif key == "icon" then
			local icon = t.baseicon;
			if icon and icon ~= 136235 and icon ~= 136192 then
				return icon;
			end
			return "Interface\\ICONS\\INV_Scroll_04";
		elseif key == "baseicon" then
			if t.itemID then return select(5, GetItemInfoInstant(t.itemID)); end
			return select(3, GetSpellInfo(t.spellID)) or (t.requireSkill and select(3, GetSpellInfo(t.requireSkill)));
		elseif key == "link" then
			if t.itemID then return select(2, GetItemInfo(t.itemID)); end
			if GetRelativeValue(t, "requireSkill") == 333 then
				return "|cffffffff|Henchant:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
			else
				return "|cffffffff|Hspell:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
			end
		elseif key == "collectible" then
			return app.CollectibleRecipes;
		elseif key == "collected" then
			if app.RecipeChecker("CollectedSpells", t.spellID) then
				return GetTempDataSubMember("CollectedSpells", t.spellID) and 1 or 2;
			end
			if app.IsSpellKnown(t.spellID, t.rank) then
				SetTempDataSubMember("CollectedSpells", t.spellID, 1);
				SetDataSubMember("CollectedSpells", t.spellID, 1);
				return 1;
			end
		elseif key == "craftTypeID" then
			return GetTempDataSubMember("SpellRanks", t.spellID);
		elseif key == "tsm" then
			if t.itemID then
				return string.format("i:%d", t.itemID);
			end
		elseif key == "skillID" then
			return t.requireSkill;
		elseif key == "b" then
			return t.itemID and app.AccountWideRecipes and 2;
		elseif key == "f" then
			return t.itemID and 200;
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
(function()
local colors = {
	optimal=RGBToHex(255,128,64),
	medium=RGBToHex(255,255,0),
	easy=RGBToHex(64,192,64),
	trivial=RGBToHex(128, 128, 128),
};
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
app.CraftTypeIDToCraftType = function(craftTypeID)
	if craftTypeID then
		if craftTypeID == 3 then
			return "optimal";
		elseif craftTypeID == 2 then
			return "medium";
		elseif craftTypeID == 1 then
			return "easy";
		elseif craftTypeID == 0 then
			return "trivial";
		end
	end
	return nil;
end
app.CraftTypeIDToColor = function(craftTypeID)
	local craftType = app.CraftTypeIDToCraftType(craftTypeID);
	if craftType then return colors[craftType]; end
	return nil;
end
app.MaxSpellRankPerSpellName = {};
app.SpellIDToSpellName = {};
app.GetSpellName = function(spellID, rank)
	local spellName = rawget(app.SpellIDToSpellName, spellID);
	if spellName then return spellName; end
	if rank then
		spellName = GetSpellInfo(spellID, rank);
	else
		spellName = GetSpellInfo(spellID);
	end
	if spellName and spellName ~= "" then
		if rank then
			if (rawget(app.MaxSpellRankPerSpellName, spellName) or 0) < rank then
				rawset(app.MaxSpellRankPerSpellName, spellName, rank);
			end
			spellName = spellName .. " (" .. RANK .. " " .. rank .. ")";
		end
		rawset(app.SpellIDToSpellName, spellID, spellName);
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
			local maxRank = ignoreHigherRanks and rank or  rawget(app.MaxSpellRankPerSpellName, spellName);
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
app.SpellNameToSpellID = setmetatable({["Ingénierie"] = 4036}, {
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
		for skillID,spellID in pairs(app.SkillIDToSpellID) do
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
app.BaseSpell = {
	__index = function(t, key)
		if key == "key" then
			return "spellID";
		elseif key == "name" then
			return select(1, GetSpellLink(t.spellID)) or RETRIEVING_DATA;
		elseif key == "text" then
			if t.itemID and t.filterID ~= 200 and t.f ~= 200 then
				local _, link, _, _, _, _, _, _, _, icon = GetItemInfo(t.itemID);
				if link then
					t.link = link;
					t.icon = icon;
					return link;
				end
			end
			if t.craftTypeID then return Colorize(t.name, app.CraftTypeIDToColor(t.craftTypeID)); end
			return t.name;
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
			if GetRelativeValue(t, "requireSkill") == 333 then
				return "|cffffffff|Henchant:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
			else
				return "|cffffffff|Hspell:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
			end
		elseif key == "collectible" then
			return app.CollectibleRecipes;
		elseif key == "collected" then
			if app.RecipeChecker("CollectedSpells", t.spellID) then
				return GetTempDataSubMember("CollectedSpells", t.spellID) and 1 or 2;
			end
			if app.IsSpellKnown(t.spellID, t.rank, GetRelativeValue(t, "requireSkill") == 261) then
				SetTempDataSubMember("CollectedSpells", t.spellID, 1);
				SetDataSubMember("CollectedSpells", t.spellID, 1);
				return 1;
			end
		elseif key == "craftTypeID" then
			return GetTempDataSubMember("SpellRanks", t.spellID);
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
			and app.RequiredSkillFilter(item.requireSkill)
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
function app.FilterItemClass_RequireBinding(item)
	if item.b and (item.b == 2 or item.b == 3) then
		return false;
	else
		return true;
	end
end
function app.FilterItemClass_RequiredSkill(requireSkill)
	if requireSkill then
		requireSkill = app.SkillIDToSpellID[requireSkill];
		return requireSkill and GetTempDataMember("ActiveSkills")[requireSkill];
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
	if group.OnUpdate then group:OnUpdate(); end
	return group.visible;
end
UpdateGroups = function(parent, g)
	if g then
		local visible = false;
		for key, group in ipairs(g) do
			if UpdateGroup(parent, group) then
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
	local suffix = BuildSourceTextForChat(group, 0) .. " -> " .. (group.text or "") .. (group.key and group[group.key] or "");
	local popout = app.Windows[suffix];
	if not popout then
		popout = app:GetWindow(suffix);
		popout.shouldFullRefresh = true;
		if group.questID or group.sourceQuests then
			-- This is a quest object. Let's show prereqs and breadcrumbs.
			local questID = group.altQuestID and app.FactionID == Enum.FlightPathFaction.Horde and group.altQuestID or group.questID;
			if questID and group.parent and group.parent.parent then
				if (group.parent.altQuestID and app.FactionID == Enum.FlightPathFaction.Horde and group.parent.altQuestID or group.parent.questID) == questID then
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
									questID = sq.altQuestID and app.FactionID == Enum.FlightPathFaction.Horde and sq.altQuestID or sq.questID;
									if sq.parent and sq.parent.questID == questID then
										sq = sq.parent;
									end
									if app.GroupFilter(sq) and not sq.isBreadcrumb then
										if sq.altQuestID then
											-- Alt Quest IDs are always Horde.
											if app.FactionID == Enum.FlightPathFaction.Horde then
												if sq.altQuestID == sourceQuestID then
													if not found or (not found.sourceQuests and sq.sourceQuests) then
														found = sq;
													end
												end
											elseif questID == sourceQuestID then
												if not found or (not found.sourceQuests and sq.sourceQuests) then
													found = sq;
												end
											end
										elseif app.RecursiveClassAndRaceFilter(sq) and questID == sourceQuestID then
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
			elseif reference.npcID and reference.npcID > 0 then
				GameTooltip:AddDoubleLine(L["NPC_ID"], tostring(reference.npcID));
			end
		end
		if reference.factionID and app.Settings:GetTooltipSetting("factionID") then GameTooltip:AddDoubleLine(L["FACTION_ID"], tostring(reference.factionID)); end
		if reference.minReputation and not reference.maxReputation then
			local standingId, offset = app.GetFactionStanding(reference.minReputation[2])
			local factionName = GetFactionInfoByID(reference.minReputation[1]) or "the opposite faction";
			local msg = "Requires a minimum standing of"
			if offset ~= 0 then msg = msg .. " " .. offset end
			msg = msg .. " " .. app.GetFactionStandingText(standingId) .. " with " .. factionName .. "."
			GameTooltip:AddLine(msg);
		end
		if reference.maxReputation and not reference.minReputation then
			local standingId, offset = app.GetFactionStanding(reference.maxReputation[2])
			local factionName = GetFactionInfoByID(reference.maxReputation[1]) or "the opposite faction";
			local msg = "Requires a standing lower than"
			if offset ~= 0 then msg = msg .. " " .. offset end
			msg = msg .. " " .. app.GetFactionStandingText(standingId) .. " with " .. factionName .. "."
			GameTooltip:AddLine(msg);
		end
		if reference.minReputation and reference.maxReputation then
			local minStandingId, minOffset = app.GetFactionStanding(reference.minReputation[2])
			local maxStandingId, maxOffset = app.GetFactionStanding(reference.maxReputation[2])
			local factionName = GetFactionInfoByID(reference.minReputation[1]) or "the opposite faction";
			local msg = "Requires a standing between"
			if minOffset ~= 0 then msg = msg .. " " .. minOffset end
			msg = msg .. " " .. app.GetFactionStandingText(minStandingId) .. " and"
			if maxOffset ~= 0 then msg = msg .. " " .. maxOffset end
			msg = msg .. " " .. app.GetFactionStandingText(maxStandingId) .. " with " .. factionName .. ".";
			GameTooltip:AddLine(msg);
		end
		if reference.objectID and app.Settings:GetTooltipSetting("objectID") then GameTooltip:AddDoubleLine(L["OBJECT_ID"], tostring(reference.objectID)); end
		if reference.spellID then
			if app.Settings:GetTooltipSetting("spellID") then GameTooltip:AddDoubleLine(L["SPELL_ID"], tostring(reference.spellID) .. " (" .. (app.GetSpellName(reference.spellID, reference.rank) or "??") .. ")"); end
			
			-- If the item is a recipe, then show which characters know this recipe.
			if not reference.collectible and app.Settings:GetTooltipSetting("KnownBy") then
				local activeSkills, knownBy = GetDataMember("ActiveSkillsPerCharacter"), {};
				for key,value in pairs(activeSkills) do
					local skills = value[reference.spellID];
					if skills then table.insert(knownBy, { key, skills[1], skills[2] }); end
				end
				if #knownBy > 0 then
					table.sort(knownBy, function(a, b)
						return a[2] > b[2];
					end);
					GameTooltip:AddLine("|cff66ccffKnown by:|r");
					local characters = GetDataMember("Characters");
					for i,data in ipairs(knownBy) do
						GameTooltip:AddDoubleLine("  " .. string.gsub(characters[data[1]] or data[1], "-" .. GetRealmName(), ""), data[2] .. " / " .. data[3]);
					end
					
				end
			end
		end
		if reference.flightPathID and app.Settings:GetTooltipSetting("flightPathID")  then GameTooltip:AddDoubleLine(L["FLIGHT_PATH_ID"], tostring(reference.flightPathID)); end
		if reference.mapID and app.Settings:GetTooltipSetting("mapID") then GameTooltip:AddDoubleLine(L["MAP_ID"], tostring(reference.mapID)); end
		if reference.artID and app.Settings:GetTooltipSetting("artID") then GameTooltip:AddDoubleLine(L["ART_ID"], tostring(reference.artID)); end
		if reference.coords and app.Settings:GetTooltipSetting("Coordinates") then
			local currentMapID, j, str = app.GetCurrentMapID(), 0;
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
		if reference.dr then GameTooltip:AddDoubleLine(L["DROP_RATE"], "|c" .. GetProgressColor(reference.dr * 0.01) .. tostring(reference.dr) .. "%|r"); end
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
		if reference.isDaily then GameTooltip:AddLine("This can be completed daily.");
		elseif reference.isWeekly then GameTooltip:AddLine("This can be completed weekly.");
		elseif reference.isMontly then GameTooltip:AddLine("This can be completed monthly.");
		elseif reference.isYearly then GameTooltip:AddLine("This can be completed yearly.");
		elseif reference.repeatable then GameTooltip:AddLine("This can be repeated multiple times."); end
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
		
		-- Contains information about an Instance (Raid or Dungeon)
		local locks = reference.locks;
		if locks then
			GameTooltip:AddDoubleLine("Lockout", date("%c", locks.reset));
			for encounterIter,encounter in pairs(locks.encounters) do
				GameTooltip:AddDoubleLine(" " .. encounter.name, GetCompletionIcon(encounter.isKilled));
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
						local isBreadcrumb, isPrereq = false, false;
						for j,sq in ipairs(sqs) do
							if sq.questID == sourceQuestID then
								if app.RecursiveClassAndRaceFilter(sq) then
									if sq.isBreadcrumb then
										isBreadcrumb = true;
									else
										isPrereq = true;
									end
								else
									isPrereq = false;
								end
							end
						end
						if isPrereq then
							if isBreadcrumb then
								table.insert(bc, sqs[1]);
							else
								table.insert(prereqs, sqs[1]);
							end
						end
					else
						table.insert(prereqs, {questID = sourceQuestID});
					end
				end
			end

			if prereqs and #prereqs > 0 then
				GameTooltip:AddLine("This quest has an incomplete prerequisite quest that you need to complete first.");
				for i,prereq in ipairs(prereqs) do
					if prereq.maps then
						local mapName = app.GetMapName(prereq.maps[1]);
						GameTooltip:AddLine("   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA) .. " (" .. (mapName or RETRIEVING_DATA) .. ")");
					elseif prereq.coords then
						local mapName = app.GetMapName(prereq.coords[1][3]);
						GameTooltip:AddLine("   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA) .. " (" .. (mapName or RETRIEVING_DATA) .. ")");
					else
						GameTooltip:AddLine("   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA));
					end
				end
			end
			if bc and #bc > 0 then
				GameTooltip:AddLine("This quest has a breadcrumb quest that you may be unable to complete after completing this one.");
				for i,prereq in ipairs(bc) do
					if prereq.maps then
						local mapName = app.GetMapName(prereq.maps[1]);
						GameTooltip:AddLine("   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA) .. " (" .. (mapName or RETRIEVING_DATA) .. ")");
					elseif prereq.coords then
						local mapName = app.GetMapName(prereq.coords[1][3]);
						GameTooltip:AddLine("   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA) .. " (" .. (mapName or RETRIEVING_DATA) .. ")");
					else
						GameTooltip:AddLine("   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA));
					end
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
		allData.icon = app.asset("content");
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

		-- Factions
		if app.Categories.Factions then
			db = {};
			db.text = "Factions";
			db.icon = "Interface/ICONS/INV_Misc_Map_01";
			db.g = app.Categories.Factions;
			table.insert(g, db);
		end

		-- PvP
		if app.Categories.PvP then
			db = {};
			db.text = PVP;
			db.icon = "Interface/ICONS/INV_Misc_Map_01";
			db.g = app.Categories.PvP;
			table.insert(g, db);
		end
		
		-- Craftables
		if app.Categories.Craftables then
			db = {};
			db.expanded = false;
			db.text = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM;
			db.icon = "Interface\\ICONS\\ability_repair";
			db.g = app.Categories.Craftables;
			db.collectible = false;
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
		
		-- Professions
		if app.Categories.Professions then
			db = {};
			db.expanded = false;
			db.text = TRADE_SKILLS;
			db.icon = "Interface\\ICONS\\INV_Scroll_04";
			db.g = app.Categories.Professions;
			db.collectible = false;
			table.insert(g, db);
		end
		
		-- Skills
		if app.Categories.Skills then
			db = {};
			db.expanded = false;
			db.text = SKILLS;
			db.icon = "Interface\\ICONS\\SPELL_NATURE_THUNDERCLAP";
			db.g = app.Categories.Skills;
			db.collectible = false;
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
			db.description = "These events occur at different times in the game's timeline, typically as one time server wide events with the exception of the Darkmoon Faire, which happens once per month every month.";
			db.icon = "Interface\\Icons\\Spell_arcane_portalstormwind";
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
		
		-- The Main Window's Data
		app.refreshDataForce = true;
		BuildGroups(allData, allData.g);
		app:GetWindow("Prime").data = allData;
		CacheFields(allData);
		
		-- Now build the hidden "Unsorted" Window's Data
		allData = {};
		allData.expanded = true;
		allData.icon = app.asset("content");
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
		
		-- Check for Vendors missing Coordinates
		--[[
		local searchResults = SearchForFieldContainer("creatureID");
		if searchResults then
			local missingCoordinates = {};
			for npcID,_ in pairs(searchResults) do
				for i,data in ipairs(_) do
					if not data.coords and data.parent then
						if data.parent.npcID == -2 or data.parent.npcID == -16 then 
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
		window = CreateFrame("FRAME", app:GetName() .. "-Window-" .. suffix, parent or UIParent);
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
							else
								table.insert(unprocessedMessages, message);
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
				['icon'] = "Interface/ICONS/INV_Misc_Map_01", 
				["description"] = "This window helps debug when we're missing map IDs in the addon.",
				['visible'] = true, 
				['expanded'] = true,
				['OnUpdate'] = app.AlwaysShowUpdate,
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
			elseif e == "ZONE_CHANGED" or e == "ZONE_CHANGED_NEW_AREA" then
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
		self:RegisterEvent("PLAYER_LOGIN");
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
					local holidayID = GetRelativeValue(group, "holidayID");
					if holidayID or GetRelativeField(group, "npcID", -5) then
						if group.key == "npcID" then
							if GetRelativeField(group, "npcID", -2) or GetRelativeField(group, "npcID", -173) then	-- It's a Vendor. (or a timewaking vendor)
								if group.npcID ~= -2 then group = app.CreateNPC(-2, { g = { group } }); end
							elseif GetRelativeField(group, "npcID", -17) then	-- It's a Quest.
								if group.npcID ~= -17 then group = app.CreateNPC(-17, { g = { group } }); end
							end
						elseif group.key == "questID" then
							if group.npcID ~= -17 then group = app.CreateNPC(-17, { g = { group } }); end
						end
						if holidayID then group = app.CreateHoliday(holidayID, { g = { group } }); end
						MergeObject(holiday, group);
					elseif group.key == "mapID" then
						header.key = group.key;
						header[group.key] = group[group.key];
						MergeObject({header}, group);
					elseif group.key == "npcID" then
						if GetRelativeField(group, "npcID", -2) or GetRelativeField(group, "npcID", -173) then	-- It's a Vendor. (or a timewaking vendor)
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
							for j,o in ipairs(SearchForField("npcID", -5)) do
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
					
					tinsert(groups, 1, app.CreateNPC(-5, { g = holiday, description = "A specific holiday may need to be active for you to complete the referenced Things within this section." }));
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
							local filterID = tonumber(text);
							if tostring(filterID) ~= text then
								-- The string form did not match, the filter must have been by name.
								for id,filter in pairs(L["FILTER_ID_TYPES"]) do
									if string.find(string.lower(filter), text) then
										filterID = tonumber(id);
										break;
									end
								end
							end
							if filterID then
								self.data.results = app:BuildSearchResponse(app:GetWindow("Prime").data.g, "f", filterID);
								self.dirty = true;
							end
							wipe(searchCache);
							self:Update();
						end);
						return true;
					end,
					['OnUpdate'] = function(data)
						data.visible = true;
					end,
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
					['OnUpdate'] = function(data)
						data.visible = true;
					end,
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
				['text'] = LOOT_TRESHOLD,
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
										data.unit = GetRaidRosterInfo(raidIndex);
									elseif partyIndex == 0 then
										data.unit = "player";
									else
										data.unit = UnitName("party" .. partyIndex);
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
				['OnUpdate'] = app.AlwaysShowUpdate,
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
				['OnUpdate'] = app.AlwaysShowUpdate,
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
										c = tab;
									elseif c == "n" or c == "r" then
										c = nl;
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
					['OnUpdate'] = function(data)
						data.visible = true;
					end,
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
		self.CacheRecipes = function(self)
			-- Cache Learned Spells
			local skillCache = fieldCache["spellID"];
			if skillCache then
				-- Cache learned recipes and reagents
				local reagentCache = app.GetDataMember("Reagents", {});
				local activeSkills = GetTempDataMember("ActiveSkills");
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
									SetTempDataSubMember("SpellRanks", spellID, shouldShowSpellRanks and app.CraftTypeToCraftTypeID(craftType) or nil);
									SetTempDataSubMember("CollectedSpells", spellID, 1);
									if not GetDataSubMember("CollectedSpells", spellID) then
										SetDataSubMember("CollectedSpells", spellID, 1);
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
								local craftedItemID = GetItemInfoInstant(GetTradeSkillItemLink(skillIndex));
								local spellID = app.SpellNameToSpellID[skillName];
								if spellID then
									SetTempDataSubMember("SpellRanks", spellID, shouldShowSpellRanks and app.CraftTypeToCraftTypeID(skillType) or nil);
									SetTempDataSubMember("CollectedSpells", spellID, 1);
									if not GetDataSubMember("CollectedSpells", spellID) then
										SetDataSubMember("CollectedSpells", spellID, 1);
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
				if app.Categories.Professions and (craftSkillID ~= 0 or tradeSkillID ~= 0) then
					local g = {};
					for i,group in ipairs(app.Categories.Professions) do
						if group.spellID == craftSkillID or group.spellID == tradeSkillID then
							local cache = self.cache[group.spellID];
							if not cache then
								cache = CloneData(group);
								self.cache[group.spellID] = cache;
								local requireSkill = cache.requireSkill;
								local response = app:BuildSearchResponse(app.Categories.Instances, "requireSkill", requireSkill);
								if response then tinsert(cache.g, {text=GROUP_FINDER,icon = "Interface\\LFGFRAME\\LFGIcon-ReturntoKarazhan",g=response}); end
								response = app:BuildSearchResponse(app.Categories.Zones, "requireSkill", requireSkill);
								if response then tinsert(cache.g, {text=BUG_CATEGORY2,icon = "Interface/ICONS/INV_Misc_Map_01",g=response});  end
								response = app:BuildSearchResponse(app.Categories.WorldDrops, "requireSkill", requireSkill);
								if response then tinsert(cache.g, {text=TRANSMOG_SOURCE_4,icon = "Interface/ICONS/INV_Misc_Map_01",g=response});  end
								response = app:BuildSearchResponse(app.Categories.Craftables, "requireSkill", requireSkill);
								if response then tinsert(cache.g, {text=LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,icon = "Interface\\ICONS\\ability_repair",g=response});  end
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
					self:CacheRecipes();
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
				self:Update();
				wipe(searchCache);
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
					local previousState = GetDataSubMember("CollectedSpells", spellID);
					SetDataSubMember("CollectedSpells", spellID, 1);
					if not GetTempDataSubMember("CollectedSpells", spellID) then
						SetTempDataSubMember("CollectedSpells", spellID, 1);
						app:RefreshData(true, true);
						if not previousState or not app.Settings:Get("AccountWide:Recipes") then
							app:PlayFanfare();
						end
					end
					self:RefreshRecipes();
					self:Update();
					wipe(searchCache);
				end
			elseif e == "TRADE_SKILL_CLOSE" or e == "CRAFT_CLOSE" then
				StartCoroutine("TSMWHY3", function()
					self:RefreshRecipes();
					self:Update();
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
app:RegisterEvent("PLAYER_LOGIN");
app:RegisterEvent("VARIABLES_LOADED");
app:RegisterEvent("ZONE_CHANGED");
app:RegisterEvent("ZONE_CHANGED_NEW_AREA");
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
	
	-- Check to see if we have a leftover ItemDB cache
	GetDataMember("CollectedFactions", {});
	GetDataMember("CollectedFlightPaths", {});
	GetDataMember("CollectedQuests", {});
	GetDataMember("CollectedSpells", {});
	GetDataMember("WaypointFilters", {});
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
	
	-- Cache your character's skill data.
	local skills = GetDataMember("ActiveSkillsPerCharacter", {});
	local mySkills = GetTempDataMember("ActiveSkills", skills[app.GUID]);
	if not mySkills then
		mySkills = {};
		skills[app.GUID] = mySkills;
		SetTempDataMember("ActiveSkills", mySkills);
	end
	
	-- Cache your character's spell ranks. (triviality of their recipes)
	local spellRanks = GetDataMember("SpellRanksPerCharacter", {});
	local mySpellRanks = GetTempDataMember("SpellRanks", spellRanks[app.GUID]);
	if not mySpellRanks then
		mySpellRanks = {};
		spellRanks[app.GUID] = mySpellRanks;
		SetTempDataMember("SpellRanks", mySpellRanks);
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
		"AddonMessageProcessor",
		"ActiveSkills",
		"ActiveSkillsPerCharacter",
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
		"GroupQuestsByGUID",
		"lockouts",
		"Position",
		"RandomSearchFilter",
		"Reagents",
		"SoftReserves",
		"SoftReservePersistence",
		"SpellRanksPerCharacter",
		"WaypointFilters",
		"EnableTomTomWaypointsOnTaxi",
		"TomTomIgnoreCompletedObjects",
		"ValidSuffixesPerItemID"
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
	GetDataMember("EnableTomTomWaypointsOnTaxi", false);
	GetDataMember("TomTomIgnoreCompletedObjects", true);
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
	
end
app.events.PLAYER_LOGIN = function()
	app:UnregisterEvent("PLAYER_LOGIN");
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
	app.CacheFlightPathData();
	app:RefreshData(false);
	LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject(L["TITLE"], {
		type = "launcher",
		icon = app.asset("logo_32x32"),
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
app.events.ZONE_CHANGED = function()
	app.CurrentMapID = app.GetCurrentMapID();
end
app.events.ZONE_CHANGED_NEW_AREA = function()
	app.CurrentMapID = app.GetCurrentMapID();
end
app.events.UPDATE_INSTANCE_INFO = function()
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	StartCoroutine("RefreshSaves", RefreshSaves);
end
app.events.QUEST_ACCEPTED = function(questID)
	wipe(searchCache);
end
app.events.QUEST_TURNED_IN = function(questID)
	CompletedQuests[questID] = true;
	for questID,completed in pairs(DirtyQuests) do
		app.QuestCompletionHelper(tonumber(questID));
	end
	wipe(DirtyQuests);
	wipe(searchCache);
end
app.events.QUEST_LOG_UPDATE = function()
	GetQuestsCompleted(CompletedQuests);
	for questID,completed in pairs(DirtyQuests) do
		app.QuestCompletionHelper(tonumber(questID));
	end
	wipe(DirtyQuests);
	wipe(searchCache);
	app:UnregisterEvent("QUEST_LOG_UPDATE");
end
