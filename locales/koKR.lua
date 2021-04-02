-- Localization for Korean (Korea) Clients.
if GetLocale() ~= "koKR" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data for all classes of your current faction.";

--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["검은심연 나락"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["검은바위 나락"] = 242;	-- BRD
L.ZONE_TEXT_TO_MAP_ID["검은바위 산"] = 35;	-- BRM
L.ZONE_TEXT_TO_MAP_ID["검은바위 첨탑"] = 250;	-- BRS
L.ZONE_TEXT_TO_MAP_ID["죽음의 폐광"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["혈투의 전장"] = 234;	-- Dire Maul
L.ZONE_TEXT_TO_MAP_ID["놈리건"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["마라우돈"] = 280;	-- Maraudon
L.ZONE_TEXT_TO_MAP_ID["성난불길 협곡"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["가시덩굴 구릉"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["가시덩굴 우리"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["스칼로맨스"] = 310;	-- SCHOLO
L.ZONE_TEXT_TO_MAP_ID["그림자송곳니 성채"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["붉은십자군 수도원"] = 435;	-- SM
L.ZONE_TEXT_TO_MAP_ID["스트라솔름"] = 317;	-- STRATH
L.ZONE_TEXT_TO_MAP_ID["아탈학카르 신전"] = 220;	-- ST
L.ZONE_TEXT_TO_MAP_ID["울다만"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["통곡의 동굴"] = 279;	-- WC
L.ZONE_TEXT_TO_MAP_ID["줄파락"] = 219;	-- ZF

L.ZONE_TEXT_TO_MAP_ID["아킨둔: 아키나이 납골당"] = 256;	-- CRYPTS
L.ZONE_TEXT_TO_MAP_ID["아킨둔: 마나 무덤"] = 272;	-- MT
L.ZONE_TEXT_TO_MAP_ID["아킨둔: 세데크 전당"] = 258;	-- SETH
L.ZONE_TEXT_TO_MAP_ID["아킨둔: 어둠의 미궁"] = 260;	-- SLABS
L.ZONE_TEXT_TO_MAP_ID["시간의 동굴: 검은늪"] = 273;	-- BLKM
L.ZONE_TEXT_TO_MAP_ID["시간의 동굴: Old Hillsbrad Foothills"] = 274;	-- OHF
L.ZONE_TEXT_TO_MAP_ID["Coilfang Reservoir: The Slave Pens"] = 265;	-- SPENS
L.ZONE_TEXT_TO_MAP_ID["Coilfang Reservoir: The Steamvault"] = 263;	-- SVALT
L.ZONE_TEXT_TO_MAP_ID["Coilfang Reservoir: The Underbog"] = 262;	-- UNBOG
L.ZONE_TEXT_TO_MAP_ID["Hellfire Citadel: The Blood Furnace"] = 261;	-- BF
L.ZONE_TEXT_TO_MAP_ID["Hellfire Citadel: Hellfire Ramparts"] = 347;	-- RAMPS
L.ZONE_TEXT_TO_MAP_ID["Hellfire Citadel: The Shattered Halls"] = 246;	-- SHALLS
L.ZONE_TEXT_TO_MAP_ID["Tempest Keep: The Arcatraz"] = 269;	-- ARCA
L.ZONE_TEXT_TO_MAP_ID["Tempest Keep: The Botanica"] = 266;	-- BOT
L.ZONE_TEXT_TO_MAP_ID["Tempest Keep: The Mechanar"] = 267;	-- MECH
L.ZONE_TEXT_TO_MAP_ID["Magister's Terrace"] = 348;	-- MGT
L.ZONE_TEXT_TO_MAP_ID["Karazhan"] = 350;	-- KARA
L.ZONE_TEXT_TO_MAP_ID["Gruul's Lair"] = 330;	-- GRUL
L.ZONE_TEXT_TO_MAP_ID["Magtheridon's Lair"] = 331;	-- MAG
L.ZONE_TEXT_TO_MAP_ID["Serpentshrine Cavern"] = 332;	-- SSC
L.ZONE_TEXT_TO_MAP_ID["폭풍우 요새"] = 334;	-- TK
L.ZONE_TEXT_TO_MAP_ID["The Battle for Mount Hyjal"] = 329;	-- HYJAL
L.ZONE_TEXT_TO_MAP_ID["The Black Temple"] = 340;	-- BT
L.ZONE_TEXT_TO_MAP_ID["Sunwell Plataeu"] = 335;	-- SWP
L.ZONE_TEXT_TO_MAP_ID["Zul'Aman"] = 333;	-- ZA

L.ALT_ZONE_TEXT_TO_MAP_ID["폭풍우 요새"] = 334;		-- TK
L.ALT_ZONE_TEXT_TO_MAP_ID["아키나이 납골당"] = 256;	-- CRYPTS
L.ALT_ZONE_TEXT_TO_MAP_ID["마나 무덤"] = 272;	-- MT
L.ALT_ZONE_TEXT_TO_MAP_ID["세데크 전당"] = 258;	-- SETH
L.ALT_ZONE_TEXT_TO_MAP_ID["어둠의 미궁"] = 260;	-- SLABS
L.ALT_ZONE_TEXT_TO_MAP_ID["검은늪"] = 273;	-- BLKM
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
