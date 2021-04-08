-- Localization for Korean (Korea) Clients.
if GetLocale() ~= "koKR" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";

local a = L.ZONE_TEXT_TO_MAP_ID;
for key,value in pairs({
	-- Dungeons
	["검은심연 나락"] = 221,	-- BFD
	["검은바위 나락"] = 242,	-- BRD
	["검은바위 산"] = 35,	-- BRM
	["검은바위 첨탑"] = 250,	-- BRS
	["죽음의 폐광"] = 291,	-- DM/VC
	["혈투의 전장"] = 234,	-- Dire Maul
	["놈리건"] = 226,	-- Gnomer
	["마라우돈"] = 280,	-- Maraudon
	["성난불길 협곡"] = 213,	-- RFC
	["가시덩굴 구릉"] = 300,	-- RFD
	["가시덩굴 우리"] = 301,	-- RFK
	["스칼로맨스"] = 310,	-- SCHOLO
	["그림자송곳니 성채"] = 310,	-- SFK
	["붉은십자군 수도원"] = 435,	-- SM
	["스트라솔름"] = 317,	-- STRATH
	["아탈학카르 신전"] = 220,	-- ST
	["울다만"] = 230,	-- ULDA
	["통곡의 동굴"] = 279,	-- WC
	["줄파락"] = 219,	-- ZF
	
	-- TBC
	["카라잔"] = 350,		-- Karazhan
	["그룰의 둥지"] = 330,	-- Gruul's Lair
	["마그테리돈의 둥지"] = 331,	-- Magtheridon's Lair
	["불뱀 제단"] = 332,	-- Serpentshrine Cavern
	["폭풍우 요새"] = 334,	-- Tempest Keep
	["하이잘 정상"] = 329,	-- The Battle for Mount Hyjal
	["검은 사원"] = 340,	-- The Black Temple
	["태양샘 고원"] = 335,	-- Sunwell Plataeu
	["줄아만"] = 333,		-- Zul'Aman
	["마법학자의 정원"] = 348,	-- Magister's Terrace
})
do a[key] = value; end

local a = L.ALT_ZONE_TEXT_TO_MAP_ID;
for key,value in pairs({
	-- Classic
	["안퀴라즈 사원"] = 320,	-- Temple of Ahn'Qiraj
	["안퀴라즈 관문"] = 1451,	-- Gates of Ahn'Qiraj

	-- TBC
	["폭풍우 요새"] = 334,	-- The Eye
	["아키나이 납골당"] = 256,	-- Auchenai Crypts
	["마나 무덤"] = 272,	-- Mana Tombs
	["세데크 전당"] = 258,	-- Sethekk Halls
	["어둠의 미궁"] = 260,	-- Shadow Labyrinth
	["검은늪"] = 273,		-- The Black Morass
	["옛 언덕마루 구릉지"] = 274,	-- Old Hillsbrad Foothills
	["강제 노역소"] = 265,	-- The Slave Pens
	["증기 저장고"] = 263,	-- The Steamvault
	["지하 수렁"] = 262,	-- The Underbog
	["피의 용광로"] = 261,	-- The Blood Furnace
	["지옥불 성루"] = 347,	-- Hellfire Ramparts
	["으스러진 손의 전당"] = 246,	-- The Shattered Halls
	["알카트라즈"] = 269,	-- The Arcatraz
	["신록의 정원"] = 266,	-- The Botanica
	["메카나르"] = 267,		-- The Mechanar
})
do a[key] = value; end

local a = L.ALT_PROFESSION_TEXT_TO_ID;
for key,value in pairs({
	["가죽 세공"] = 2108,	-- Leatherworking
})
do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Enter translated headers here
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