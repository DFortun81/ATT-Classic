-- Localization for Chinese (Traditional, Taiwan) Clients.
if GetLocale() ~= "zhTW" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["黑暗深渊"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["黑石深渊"] = 242;	-- BRD
L.ZONE_TEXT_TO_MAP_ID["黑石山"] = 35;	-- BRM
L.ZONE_TEXT_TO_MAP_ID["黑石塔"] = 250;	-- BRS
L.ZONE_TEXT_TO_MAP_ID["死亡矿井"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["厄运之槌"] = 234;	-- Dire Maul
L.ZONE_TEXT_TO_MAP_ID["诺莫瑞根"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["玛拉顿"] = 280;	-- Maraudon
L.ZONE_TEXT_TO_MAP_ID["怒焰裂谷"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["剃刀高地"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["剃刀沼泽"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["通灵学院"] = 310;	-- SCHOLO
L.ZONE_TEXT_TO_MAP_ID["影牙城堡"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["血色修道院"] = 435;	-- SM
L.ZONE_TEXT_TO_MAP_ID["斯坦索姆"] = 317;	-- STRATH
L.ZONE_TEXT_TO_MAP_ID["阿塔哈卡神庙"] = 220;	-- ST
L.ZONE_TEXT_TO_MAP_ID["奥达曼"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["哀嚎洞穴"] = 279;	-- WC
L.ZONE_TEXT_TO_MAP_ID["祖尔法拉克"] = 219;	-- ZF

L.ZONE_TEXT_TO_MAP_ID["Magister's Terrace"] = 348;	-- MGT
L.ZONE_TEXT_TO_MAP_ID["Karazhan"] = 350;	-- KARA
L.ZONE_TEXT_TO_MAP_ID["Gruul's Lair"] = 330;	-- GRUL
L.ZONE_TEXT_TO_MAP_ID["Magtheridon's Lair"] = 331;	-- MAG
L.ZONE_TEXT_TO_MAP_ID["Serpentshrine Cavern"] = 332;	-- SSC
L.ZONE_TEXT_TO_MAP_ID["风暴要塞"] = 334;	-- TK
L.ZONE_TEXT_TO_MAP_ID["The Battle for Mount Hyjal"] = 329;	-- HYJAL
L.ZONE_TEXT_TO_MAP_ID["The Black Temple"] = 340;	-- BT
L.ZONE_TEXT_TO_MAP_ID["Sunwell Plataeu"] = 335;	-- SWP
L.ZONE_TEXT_TO_MAP_ID["Zul'Aman"] = 333;	-- ZA

L.ALT_ZONE_TEXT_TO_MAP_ID["奥金尼地穴"] = 256;	-- CRYPTS
L.ALT_ZONE_TEXT_TO_MAP_ID["法力陵墓"] = 272;	-- MT
L.ALT_ZONE_TEXT_TO_MAP_ID["塞泰克大厅"] = 258;	-- SETH
L.ALT_ZONE_TEXT_TO_MAP_ID["暗影迷宫"] = 260;	-- SLABS
L.ALT_ZONE_TEXT_TO_MAP_ID["黑色沼泽"] = 273;	-- BLKM
L.ALT_ZONE_TEXT_TO_MAP_ID["Old Hillsbrad Foothills"] = 274;	-- OHF
L.ALT_ZONE_TEXT_TO_MAP_ID["The Slave Pens"] = 265;	-- SPENS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Steamvault"] = 263;	-- SVALT
L.ALT_ZONE_TEXT_TO_MAP_ID["The Underbog"] = 262;	-- UNBOG
L.ALT_ZONE_TEXT_TO_MAP_ID["The Blood Furnace"] = 261;	-- BF
L.ALT_ZONE_TEXT_TO_MAP_ID["Hellfire Ramparts"] = 347;	-- RAMPS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Shattered Halls"] = 246;	-- SHALLS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Arcatraz"] = 269;	-- ARCA
L.ALT_ZONE_TEXT_TO_MAP_ID["The Botanica"] = 266;	-- BOT
L.ALT_ZONE_TEXT_TO_MAP_ID["The Mechanar"] = 267;	-- MECH

local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Enter translated NPCID's here
})
do a[key] = value; end

local a = L.OBJECT_ID_NAMES;
for key,value in pairs({
	-- Enter translated OBJECTID's here
})
do a[key] = value; end
