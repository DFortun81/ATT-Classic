-- Localization for Chinese (Traditional, Taiwan) Clients.
if GetLocale() ~= "zhTW" then return; end
local app = select(2, ...);
local L = app.L;

-- TODO

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["黑暗深渊"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["黑石深渊"] = 242;	-- BRD
L.ZONE_TEXT_TO_MAP_ID["死亡矿井"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["诺莫瑞根"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["玛拉顿"] = 280;	-- Maraudon
L.ZONE_TEXT_TO_MAP_ID["怒焰裂谷"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["剃刀高地"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["剃刀沼泽"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["影牙城堡"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["血色修道院"] = 435;	-- SM
L.ZONE_TEXT_TO_MAP_ID["阿塔哈卡神庙"] = 220;	-- ST
L.ZONE_TEXT_TO_MAP_ID["奥达曼"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["哀嚎洞穴"] = 279;	-- WC
L.ZONE_TEXT_TO_MAP_ID["祖尔法拉克"] = 219;	-- ZF

local a = L.NPC_ID_NAMES;
for key,value in pairs({
	-- Enter translated NPCID's here
})
do a[key] = value; end

local a = L.OBJECT_ID_NAMES;
for key,value in pairs({
	-- Enter translated OBJECTID's here
})
do a[key] = value; end