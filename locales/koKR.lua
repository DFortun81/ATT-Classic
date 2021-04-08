-- Localization for Korean (Korea) Clients.
if GetLocale() ~= "koKR" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

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

L.ALT_PROFESSION_TEXT_TO_ID["가죽 세공"] = 2108;	-- Leatherworking

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

local a = L.TRADESKILL_CATEGORY_NAMES;
for key,value in pairs({
	-- Engineering
	[1] = "투사체",	-- Bullets
	[2] = "장비",	-- Devices
	[3] = "폭발물",	-- Explosives
	[4] = "폭죽",	-- Fireworks
	[5] = "머리",	-- Goggles
	[6] = "총",	-- Guns
	[7] = "부품",	-- Parts
	[8] = "조준경",	-- Scopes
	[9] = "도구",	-- Tools

	-- Cooking
	[10] = "일반 요리",	-- Everyday Cooking
	[11] = "축제 요리",	-- Holiday Cooking
	[12] = "특별한 별미",	-- Unusual Delights

	-- Alchemy
	[13] = "재료",	-- Materials
	[14] = "물약",	-- Potions
	[15] = "비약",	-- Elixirs
	[16] = "영약",	-- Flasks
	[17] = "변환식",	-- Transmutes
	[18] = "도구",	-- Trinkets
	[19] = "오일",	-- Oils

	-- Blacksmithing
	[20] = "광석 & 주괴",	-- Materials
	[23] = "머리",	-- Helms
	[24] = "어깨",	-- Shoulders
	[25] = "가슴",	-- Chest
	[26] = "손",	-- Gauntlets
	[27] = "손목",	-- Bracers
	[28] = "허리",	-- Belts
	[29] = "다리",	-- Legs
	[30] = "발",	-- Boots	
	[33] = "해골 열쇠",	-- Skeleton Keys

	-- Enchanting
	[34] = "도구",	-- Rods
	[35] = "재료",	-- Reagents
	[36] = "장화 마법부여",	-- Boot Enchantments
	[37] = "손목 마법부여",	-- Bracer Enchantments
	[38] = "가슴 마법부여",	-- Chest Enchantments
	[39] = "망토 마법부여",	-- Cloak Enchantments
	[40] = "장갑 마법부여",	-- Glove Enchantments
	[41] = "무기 마법부여",	-- Weapon Enchantments
	[42] = "방패 마법부여",	-- Shield Enchantments
	[43] = "마법봉",	-- Wands
	[44] = "오일",	-- Oils
	[45] = "장신구",	-- Trinket

	-- Leatherworking
	[46] = "가죽",	-- Materials
	[47] = "방어구 키트",	-- Armor Kits
	[48] = "가방",	-- Bags
	[49] = "머리",	-- Helms
	[50] = "어깨",	-- Shoulders
	[51] = "가슴",	-- Chest
	[52] = "손목",	-- Bracers
	[53] = "손",	-- Gloves
	[54] = "허리",	-- Belts
	[55] = "다리",	-- Pants
	[56] = "발",	-- Boots
	[57] = "등",	-- Cloaks

	-- Tailoring
	[58] = "천",	-- Materials
	[59] = "가방",	-- Bags
	[60] = "머리",	-- Hats & Hoods
	[61] = "어깨",	-- Shoulders
	[62] = "가슴",	-- Robes & Tunics
	[63] = "손목",	-- Bracers
	[64] = "허리",	-- Belts
	[65] = "손",	-- Gloves
	[66] = "다리",	-- Pants
	[67] = "발",	-- Boots
	[68] = "등",	-- Cloaks
	[69] = "속옷",	-- Shirts
})
do a[key] = value; end