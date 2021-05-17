AllTheThings = {};
_ = AllTheThings;

-- Static values for minReputation/maxReputation properties.
-- The values are based on a "distance from zero" to match what Blizzard tracks internally as "totalEarned" rep
HATED, HOSTILE, UNFRIENDLY, NEUTRAL, FRIENDLY, HONORED, REVERED, EXALTED = -42000, -6000, -3000, 0, 3000, 9000, 21000, 42000

-- Map Constants for quick and easy replacement when we can get mapIDs on live!
-- NOTE: All of these must be changed!
-- Raids (Classic)
BLACKWING_LAIR = 287;
MOLTEN_CORE = 232;
NAXXRAMAS = 162;
ONYXIAS_LAIR = 248;
RUINS_OF_AHNQIRAJ = 247;
TEMPLE_OF_AHNQIRAJ = 320;
ZULGURUB = 337;

-- Dungeons (Classic)
BLACKFATHOM_DEEPS = 221;
BLACKROCK_DEPTHS = 242;
BLACKROCK_SPIRE = 250;
DEADMINES = 291;
DIRE_MAUL = 234;
GNOMEREGAN = 226;
MARAUDON = 280;
RAGEFIRE_CHASM = 213;
RAZORFEN_DOWNS = 300;
RAZORFEN_KRAUL = 301;
SCARLET_MONASTERY = 435;
SHADOWFANG_KEEP = 310;
SCHOLOMANCE = 476;
STRATHOLME = 317;
SUNKEN_TEMPLE = 220;
TEMPLE_OF_ATALHAKKAR = 220;
THE_STOCKADE = 225;
ULDAMAN = 230;
WAILING_CAVERNS = 279;
ZULFARRAK = 219;

-- Raids (TBC)
KARAZHAN = 350;
GRUULS_LAIR = 330;	-- Confirmed!
MAGTHERIDONS_LAIR = 331;	-- Confirmed!
SERPENTSHRINE_CAVERN = 332;	-- Confirmed! 1554 also
TEMPEST_KEEP_THE_EYE = 334;	-- Confirmed!
THE_BATTLE_FOR_MOUNT_HYJAL = 329;
THE_BLACK_TEMPLE = 340;	-- Confirmed!
SUNWELL_PLATEAU = 335;
ZULAMAN = 333;

-- Dungeons (TBC)
AUCHINDOUN_AUCHENAI_CRYPTS = 256;	-- Confirmed! 257 also
AUCHINDOUN_MANA_TOMBS = 272;	-- Confirmed!
AUCHINDOUN_SETHEKK_HALLS = 258;	-- Confirmed! 259 also
AUCHINDOUN_SHADOW_LABYRINTH = 260;	-- Confirmed!
CAVERNS_OF_TIME_BLACK_MORASS = 273;
CAVERNS_OF_TIME_OLD_HILLSBRAD_FOOTHILLS = 274;
COILFANG_RESERVOIR_SLAVE_PENS = 265;	-- Confirmed!
COILFANG_RESERVOIR_STEAMVAULT = 263;	-- Confirmed!
COILFANG_RESERVOIR_UNDERBOG = 262;	-- Confirmed!
HELLFIRE_CITADEL_BLOOD_FURNACE = 261;	-- Confirmed!
HELLFIRE_CITADEL_RAMPARTS = 347;	-- Confirmed!
HELLFIRE_CITADEL_SHATTERED_HALLS = 246;	-- Confirmed!
MAGISTERS_TERRACE = 348;
TEMPEST_KEEP_ARCATRAZ = 269;	-- Confirmed! 270, 271 also
TEMPEST_KEEP_BOTANICA = 266;	-- Confirmed!
TEMPEST_KEEP_MECHANAR = 267;	-- Confirmed! 268 also

-- Battlegrounds
ALTERAC_VALLEY = 1459;
EYE_OF_THE_STORM = 1956;

-- World Map
COSMIC = 947;	-- Confirmed!

-- Kalimdor
KALIMDOR = 1414;	-- Confirmed!
ASHENVALE = 1440;	-- Confirmed!
AZSHARA = 1447;	-- Confirmed!
CAVERNS_OF_TIME = 75;
DARKSHORE = 1439;	-- Confirmed!
DARNASSUS = 1457;	-- Confirmed!
DESOLACE = 1443;	-- Confirmed!
DUROTAR = 1411;	-- Confirmed!
DUSTWALLOW_MARSH = 1445;	-- Confirmed!
FELWOOD = 1448;	-- Confirmed!
FERALAS = 1444;	-- Confirmed!
MOONGLADE = 1450;	-- Confirmed!
MULGORE = 1412;	-- Confirmed!
ORGRIMMAR = 1454;	-- Confirmed!
SILITHUS = 1451;	-- Confirmed!
STONETALON_MOUNTAINS = 1442;	-- Confirmed!
TANARIS = 1446;	-- Confirmed!
TELDRASSIL = 1438;	-- Confirmed!
THE_BARRENS = 1413;	-- Confirmed!
THOUSAND_NEEDLES = 1441;	-- Confirmed!
THUNDER_BLUFF = 1456;	-- Confirmed!
UNGORO_CRATER = 1449;	-- Confirmed!
WINTERSPRING = 1452;	-- Confirmed!

-- Eastern Kingdoms
EASTERN_KINGDOMS = 1415;	-- Confirmed!
ALTERAC_MOUNTAINS = 1416;	-- Confirmed!
ARATHI_HIGHLANDS = 1417;	-- Confirmed!
BADLANDS = 1418;	-- Confirmed!
BLACKROCK_MOUNTAIN = 33;
BLACKROCK_MOUNTAIN_LEVEL2 = 34;
BLACKROCK_MOUNTAIN_LEVEL3 = 35;
BLASTED_LANDS = 1419;	-- Confirmed!
BURNING_STEPPES = 1428;	-- Confirmed!
DEEPRUN_TRAM = 499;	-- Confirmed!
DEADWIND_PASS = 1430;	-- Confirmed!
DUN_MOROGH = 1426;	-- Confirmed!
DUSKWOOD = 1431;	-- Confirmed!
EASTERN_PLAGUELANDS = 1423;	-- Confirmed!
ELWYNN_FOREST = 1429;	-- Confirmed!
HILLSBRAD_FOOTHILLS = 1424;	-- Confirmed!
IRONFORGE = 1455;	-- Confirmed!
LOCH_MODAN = 1432;	-- Confirmed!
REDRIDGE_MOUNTAINS = 1433;	-- Confirmed!
SEARING_GORGE = 1427;	-- Confirmed!
SILVERPINE_FOREST = 1421;	-- Confirmed!
STORMWIND_CITY = 1453;	-- Confirmed!
STRANGLETHORN_VALE = 1434;	-- Confirmed!
SWAMP_OF_SORROWS = 1435;	-- Confirmed!
SUNSTRIDER_ISLE = 467;	-- This is what it is in Retail, if they ever add a map, update this.
THE_HINTERLANDS = 1425;	-- Confirmed!
TIRISFAL_GLADES = 1420;	-- Confirmed!
UNDERCITY = 1458;	-- Confirmed!
WESTERN_PLAGUELANDS = 1422;	-- Confirmed!
WESTFALL = 1436;	-- Confirmed!
WETLANDS = 1437;	-- Confirmed!

-- Outland & TBC Additions
OUTLAND = 1945;	-- Confirmed!
EVERSONG_WOODS = 1941;	-- Confirmed!
GHOSTLANDS = 1942;	-- Confirmed!
ISLE_OF_QUELDANAS = 1957;	-- Confirmed!
SILVERMOON_CITY = 1954;	-- Confirmed!
AZUREMYST_ISLE = 1943;	-- Confirmed!
BLOODMYST_ISLE = 1950;	-- Confirmed!
AMMEN_VALE = 9997;
THE_EXODAR = 1947;	-- Confirmed!
HELLFIRE_PENINSULA = 1944;	-- Confirmed!
ZANGARMARSH = 1946;	-- Confirmed!
NAGRAND = 1951;	-- Confirmed!
NETHERSTORM = 1953;	-- Confirmed!
TEROKKAR_FOREST = 1952;	-- Confirmed!
SHATTRATH_CITY = 1955;	-- Confirmed!
BLADES_EDGE_MOUNTAINS = 1949;	-- Confirmed!
SHADOWMOON_VALLEY = 1948;	-- Confirmed!

-- CLASSES
WARRIOR = 1;
PALADIN = 2;
HUNTER = 3;
ROGUE = 4;
PRIEST = 5;
DEATHKNIGHT = 6;
SHAMAN = 7;
MAGE = 8;
WARLOCK = 9;
MONK = 10;
DRUID = 11;
DEMONHUNTER = 12;

ALL_CLASSES = {	-- NOTE: Use this with the exclude function.
	WARRIOR,
	PALADIN,
	HUNTER,
	ROGUE,
	PRIEST,
	DEATHKNIGHT,
	SHAMAN,
	MAGE,
	WARLOCK,
	MONK,
	DRUID,
	DEMONHUNTER,
};
TANKS = {
	DEATHKNIGHT,
	DEMONHUNTER,
	DRUID,
	MONK,
	PALADIN,
	WARRIOR
};
HEALERS = {
	DRUID,
	MONK,
	PALADIN,
	PRIEST,
	SHAMAN
};

-- RACES
HUMAN = 1;
DWARF = 3;
NIGHTELF = 4;
GNOME = 7;
DRAENEI = 11;
WORGEN = 22;
VOIDELF = 29;
LIGHTFORGED = 30;
KULTIRAN = 32;
DARKIRON = 34;
MECHAGNOME = 37;

PANDAREN_NEUTRAL = 24;
PANDAREN_ALLIANCE = 25;
PANDAREN_HORDE = 26;

ORC = 2;
UNDEAD = 5;
TAUREN = 6;
TROLL = 8;
GOBLIN = 9;
BLOODELF = 10;
NIGHTBORNE = 27;
HIGHMOUNTAIN = 28;
ZANDALARI = 31;
VULPERA = 35;
MAGHAR = 36;

ALLIANCE_ONLY = {
	HUMAN,
	DWARF,
	NIGHTELF,
	GNOME,
	DRAENEI,
	WORGEN,
	PANDAREN_ALLIANCE,
	VOIDELF,
	LIGHTFORGED,
	KULTIRAN,
	DARKIRON,
	MECHAGNOME,
};
HORDE_ONLY = {
	ORC,
	UNDEAD,
	TAUREN,
	TROLL,
	GOBLIN,
	BLOODELF,
	PANDAREN_HORDE,
	NIGHTBORNE,
	HIGHMOUNTAIN,
	ZANDALARI,
	MAGHAR,
	VULPERA,
};
ALL_RACES = { PANDAREN_NEUTRAL }	-- NOTE: Use this with the exclude function.
for _,v in pairs(ALLIANCE_ONLY) do table.insert(ALL_RACES,v) end
for _,v in pairs(HORDE_ONLY) do table.insert(ALL_RACES,v) end

-- Headers
ACHIEVEMENTS = -4;
COMMON_BOSS_DROPS = -1;
EXPLORATION = -15;
FACTIONS = -8;
FLIGHT_PATHS = -6;
QUESTS = -17;
RARES = -16;
REWARDS = -18;
TREASURES = -212;
VENDORS = -2;
WORLD_QUESTS = -34;
ZONEDROPS = 0;

-- Professions
ALCHEMY = 171;
ARCHAEOLOGY = 794;
BLACKSMITHING = 164;
COOKING = 185;
ENCHANTING = 333;
ENGINEERING = 202;
GOBLIN_ENGINEERING = 20222;
GNOMISH_ENGINEERING = 20219;
FIRST_AID = 129;
FISHING = 356;
HERBALISM = 182;
INSCRIPTION = 773;
JEWELCRAFTING = 755;
JUNKYARD_TINKERING = 2720;
LEATHERWORKING = 165;
MINING = 186;
SKINNING = 393;
TAILORING = 197;

-- Unobtainable Filters
NEVER_IMPLEMENTED = 1;
REMOVED_FROM_GAME = 2;

-- Classic Phases
PHASE_ONE = 11;
PHASE_ONE_DIREMAUL = 1101;
PHASE_TWO = 12;
PHASE_THREE = 13;
PHASE_FOUR = 14;
PHASE_FIVE = 15;
PHASE_FIVE_WAR_EFFORT = 1501;
PHASE_FIVE_GONG = 1502;
PHASE_FIVE_WAR = 1503;
PHASE_FIVE_CATCH_UP = 1504;
PHASE_SIX = 16;
PHASE_SIX_SCOURGE_INVASION = 1601;
PHASE_SIX_SILITHYST = 1602;
PHASE_SIX_CLASSICERA = 1603;

-- TBC Classic Phases
TBC_PHASE_ONE = 17;
TBC_PHASE_ONE_DARKPORTAL = 1701;
TBC_PHASE_TWO = 18;
TBC_PHASE_THREE = 19;
TBC_PHASE_FOUR = 20;
TBC_PHASE_FIVE = 21;
TBC_PHASE_SIX = 22;

-- Wrath Classic Phases
WRATH_PHASE_ONE = 30;
WRATH_PHASE_TWO = 31;
WRATH_PHASE_THREE = 32;
WRATH_PHASE_FOUR = 33;
WRATH_PHASE_FIVE = 34;
WRATH_PHASE_SIX = 35;

-- NOTE: Reason for this is to show when stuff is going away eventually.
-- Cataclysm Classic Phases
CATA_PHASE_ONE = 40;

-- Mists of Pandaria Classic Phases
MOP_PHASE_ONE = 50;

-- Warlords of Draenor Classic Phases
WOD_PHASE_ONE = 60;

-- Legion Classic Phases
LEGION_PHASE_ONE = 70;

-- Battle for Azeroth Phases
BFA_PHASE_ONE = 80;

-- Shadowlands Phases
SHADOWLANDS_PHASE_ONE = 90;

-- Holiday Filters
BREWFEST = 1000;
CHILDRENS_WEEK = 1001;
DAY_OF_THE_DEAD = 1002;
DARKMOON_FAIRE = 1012;
FEAST_OF_WINTER_VEIL = 1003;
HALLOWS_END = 1004;
HARVEST_FESTIVAL = 1005;
LOVE_IS_IN_THE_AIR = 1006;
LUNAR_FESTIVAL = 1007;
MIDSUMMER_FIRE_FESTIVAL = 1008;
NOBLEGARDEN = 1010;
PIRATES_DAY = 1011;

-- Helper Tables
ItemClassInfo = {
	{
		"Soul Bag", -- [1]
		"Herb Bag", -- [2]
		"Enchanting Bag", -- [3]
		"Engineering Bag", -- [4]
		"Gem Bag", -- [5]
		"Mining Bag", -- [6]
		"Leatherworking Bag", -- [7]
		"Inscription Bag", -- [8]
		"Tackle Box", -- [9]
		"Cooking Bag", -- [10]
		[0] = "Bag",
		["class"] = "Container",
	}, -- [1]
	{
		"Two-Handed Axes", -- [1]
		"Bows", -- [2]
		"Guns", -- [3]
		"One-Handed Maces", -- [4]
		"Two-Handed Maces", -- [5]
		"Polearms", -- [6]
		"One-Handed Swords", -- [7]
		"Two-Handed Swords", -- [8]
		"Warglaives", -- [9]
		"Staves", -- [10]
		"Bear Claws", -- [11]
		"CatClaws", -- [12]
		"Fist Weapons", -- [13]
		"Miscellaneous", -- [14]
		"Daggers", -- [15]
		"Thrown", -- [16]
		"Spears", -- [17]
		"Crossbows", -- [18]
		"Wands", -- [19]
		"Fishing Poles", -- [20]
		[0] = "One-Handed Axes",
		["class"] = "Weapon",
	}, -- [2]
	{
		"Agility", -- [1]
		"Strength", -- [2]
		"Stamina", -- [3]
		"Spirit", -- [4]
		"Critical Strike", -- [5]
		"Mastery", -- [6]
		"Haste", -- [7]
		"Versatility", -- [8]
		"Other", -- [9]
		"Multiple Stats", -- [10]
		"Artifact Relic", -- [11]
		[0] = "Intellect",
		["class"] = "Gem",
	}, -- [3]
	{
		"Cloth", -- [1]
		"Leather", -- [2]
		"Mail", -- [3]
		"Plate", -- [4]
		"Cosmetic", -- [5]
		"Shields", -- [6]
		"Librams", -- [7]
		"Idols", -- [8]
		"Totems", -- [9]
		"Sigils", -- [10]
		"Relic", -- [11]
		[0] = "Miscellaneous",
		["class"] = "Armor",
	}, -- [4]
	{
		"Keystone", -- [1]
		[0] = "Reagent",
		["class"] = "Reagent",
	}, -- [5]
	{
		"Bolt(OBSOLETE)", -- [1]
		"Arrow", -- [2]
		"Bullet", -- [3]
		"Thrown(OBSOLETE)", -- [4]
		[0] = "Wand(OBSOLETE)",
		["class"] = "Projectile",
	}, -- [6]
	{
		"Parts", -- [1]
		"Explosives (OBSOLETE)", -- [2]
		"Devices (OBSOLETE)", -- [3]
		"Jewelcrafting", -- [4]
		"Cloth", -- [5]
		"Leather", -- [6]
		"Metal & Stone", -- [7]
		"Cooking", -- [8]
		"Herb", -- [9]
		"Elemental", -- [10]
		"Other", -- [11]
		"Enchanting", -- [12]
		"Materials (OBSOLETE)", -- [13]
		"Item Enchantment (OBSOLETE)", -- [14]
		"Weapon Enchantment - Obsolete", -- [15]
		"Inscription", -- [16]
		"Explosives and Devices (OBSOLETE)", -- [17]
		[0] = "Trade Goods (OBSOLETE)",
		["class"] = "Tradeskill",
	}, -- [7]
	{
		"Neck", -- [1]
		"Shoulder", -- [2]
		"Cloak", -- [3]
		"Chest", -- [4]
		"Wrist", -- [5]
		"Hands", -- [6]
		"Waist", -- [7]
		"Legs", -- [8]
		"Feet", -- [9]
		"Finger", -- [10]
		"Weapon", -- [11]
		"Two-Handed Weapon", -- [12]
		"Shield/Off-hand", -- [13]
		"Misc", -- [14]
		[0] = "Head",
		["class"] = "Item Enhancement",
	}, -- [8]
	{
		"Leatherworking", -- [1]
		"Tailoring", -- [2]
		"Engineering", -- [3]
		"Blacksmithing", -- [4]
		"Cooking", -- [5]
		"Alchemy", -- [6]
		"First Aid", -- [7]
		"Enchanting", -- [8]
		"Fishing", -- [9]
		"Jewelcrafting", -- [10]
		"Inscription", -- [11]
		"Poisons",	-- [12]
		[0] = "Book",
		["class"] = "Recipe",
	}, -- [9]
	{
		[0] = "Money(OBSOLETE)",
		["class"] = "Money(OBSOLETE)",
	}, -- [10]
	{
		"Bolt(OBSOLETE)", -- [1]
		"Quiver", -- [2]
		"Ammo Pouch", -- [3]
		[0] = "Quiver(OBSOLETE)",
		["class"] = "Quiver",
	}, -- [11]
	{
		[0] = "Quest",
		["class"] = "Quest",
	}, -- [12]
	{
		"Lockpick", -- [1]
		[0] = "Key",
		["class"] = "Key",
	}, -- [13]
	{
		[0] = "Permanent",
		["class"] = "Permanent(OBSOLETE)",
	}, -- [14]
	{
		"Reagent", -- [1]
		"Companion Pets", -- [2]
		"Holiday", -- [3]
		"Other", -- [4]
		"Mount", -- [5]
		[0] = "Junk",
		["class"] = "Miscellaneous",
	}, -- [15]
	{
		"Warrior", -- [1]
		"Paladin", -- [2]
		"Hunter", -- [3]
		"Rogue", -- [4]
		"Priest", -- [5]
		"Death Knight", -- [6]
		"Shaman", -- [7]
		"Mage", -- [8]
		"Warlock", -- [9]
		"Monk", -- [10]
		"Druid", -- [11]
		"Demon Hunter", -- [12]
		["class"] = "Glyph",
	}, -- [16]
	{
		"Dragonkin", -- [1]
		"Flying", -- [2]
		"Undead", -- [3]
		"Critter", -- [4]
		"Magic", -- [5]
		"Elemental", -- [6]
		"Beast", -- [7]
		"Aquatic", -- [8]
		"Mechanical", -- [9]
		[0] = "Humanoid",
		["class"] = "Battle Pets",
	}, -- [17]
	{
		[0] = "WoW Token",
		["class"] = "WoW Token",
	}, -- [18]
	[0] = {
		"Potion", -- [1]
		"Elixir", -- [2]
		"Flask", -- [3]
		"Scroll (OBSOLETE)", -- [4]
		"Food & Drink", -- [5]
		"Item Enhancement (OBSOLETE)", -- [6]
		"Bandage", -- [7]
		"Other", -- [8]
		"Vantus Runes", -- [9]
		[0] = "Explosives and Devices",
		["class"] = "Consumable",
	},
};
POST_PROCESSING_FUNCTIONS = {};

-- Construct a commonly formatted object.
struct = function(field, id, t)
	if not t then t = {};
	elseif not t.groups and t[1] then
		t = { ["groups"] = bubbleUp(t) };
	elseif t.groups then
		t.groups = bubbleUp(t.groups);
	end
	t[field] = id;
	return t;
end

-- Helper Functions
isarray = function(t)
	return type(t) == 'table' and (#t > 0 or next(t) == nil);
end
addObject = function(o, t)
	table.insert(t, o);
	return t;
end
appendGroups = function(common, groups)
	if not groups then groups = {}; end
	if common then
		for i,o in ipairs(common) do
			table.insert(groups, o);
		end
	end
	return groups;
end
bubbleDown = function(data, t)
	if t then
		if t.g or t.groups then
			for key, value in pairs(data) do
				if not t[key] then
					t[key] = value;
				end
			end
			bubbleDown(data, t.groups);
			bubbleDown(data, t.g);
		elseif isarray(t) then
			for i,group in ipairs(t) do
				bubbleDown(data, group);
			end
		else
			for key, value in pairs(data) do
				if not t[key] then
					t[key] = value;
				end
			end
		end
		return t;
	end
end
bubbleUp = function(t)
	local t2 = {};
	for i, group in pairs(t) do
		table.insert(t2, group);
	end
	for i=#t,1,-1 do
		table.remove(t, i);
	end
	for i, group in pairs(t2) do
		if type(i) ~= "number" then
			print("You're trying to use '" .. i .. "' in a 'groups' field. (can't do that!)");
		elseif type(group) ~= "table" then
			print("You're trying to use '" .. group .. "' in a 'groups' field. (can't do that!)");
		else
			if group.bubble then
				-- this isn't just a normal group object, merge up the contents.
				if group.groups or group.g then
					for j,subgroup in pairs(group.groups or group.g) do
						if type(j) ~= "number" then
							print("You're trying to use '" .. j .. "' in a 'groups' field. (can't do that!)");
						elseif type(subgroup) ~= "table" then
							print("You're trying to use '" .. subgroup .. "' in a 'groups' field. (can't do that!)");
						else
							table.insert(t, subgroup);
						end
					end
				end
			else
				table.insert(t, group);
			end
		end
	end
	return t;
end
contains = function(arr, value)
	for i,value2 in ipairs(arr) do
		if value2 == value then return true; end
	end
end
containsAny = function(arr, otherArr)
	for i, v in ipairs(arr) do
		for j, w in ipairs(otherArr) do
			if v == w then return true; end
		end
	end
end
containsValue = function(dict, value)
	for key,value2 in pairs(dict) do
		if value2 == value then return true; end
	end
end
exclude = function(data, t)
	local t2 = {};
	if type(data) == "table" then
		-- Group of Values (You shouldn't be excluding a complex object if that's what you're trying to do)
		if #data > 0 then
			for i,o in ipairs(t) do
				if not contains(data, o) then
					table.insert(t2, o);
				end
			end
		else
			-- Just create a clone
			for i,o in ipairs(t) do
				table.insert(t2, o);
			end
		end
	else
		-- Single Value
		for i,o in ipairs(t) do
			if o ~= data then
				table.insert(t2, o);
			end
		end
	end
	return t2;
end
excludeMany = function(t, ...)
	return exclude({...}, t);
end
merge = function(...)
	local t = {};
	for i,groups in ipairs({...}) do
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
function unpack (t, i)
  i = i or 1
  if t[i] ~= nil then
	return t[i], unpack(t, i + 1)
  end
end

-- Asset Path Helper Functions
asset = function(path)
	return "Interface\\Addons\\ATT-Classic\\assets\\" .. path;
end
icon = function(path)
	return "Interface\\Icons\\" .. path;
end

-- Classic / Retail Helper Functions
isanyclassic = function(modifier, data)
	-- #if ANYCLASSIC
	return modifier(data);
	-- #else
	return data;
	-- #endif
end
applyclassicphase = function(phase, data)
	-- #if ANYCLASSIC
	return bubbleDown({ ["u"] = phase }, data);
	-- #else
	return data;
	-- #endif
end
applylegacyclassicphase = function(phase, data)
	-- #if ANYCLASSIC
	return bubbleDown({ ["u"] = phase }, data);
	-- #else
	return bubbleDown({ ["u"] = REMOVED_FROM_GAME }, data);
	-- #endif
end
lvlsquish = function(originalLvl, shadowlandsLvl, retailLvl)
	-- #if ANYCLASSIC
	return originalLvl;
	-- #elseif AFTER SHADOWLANDS
	return shadowlandsLvl;
	-- #else
	return retailLvl or originalLvl;
	-- #endif
end

-- SHORTCUTS for Object Class Types
ach = function(id, altID, t)							-- Create an ACHIEVEMENT Object
	if t or type(altID) == "number" then
		t = struct("allianceAchievementID", id, t or {});
		t["hordeAchievementID"] = altID;
		return un(WRATH_PHASE_ONE, t);
	else
		return un(WRATH_PHASE_ONE, struct("achievementID", id, altID));
	end
end
battlepet = function(id, t)								-- Create a BATTLE PET Object (Battle Pet == Species == Pet)
	t = struct("speciesID", id, t);
	t.u = WRATH_PHASE_ONE;
	return t;
end
p = battlepet;											-- Create a BATTLE PET Object (alternative shortcut)
pet = p;												-- Create a BATTLE PET Object (alternative shortcut)
cat = function(id, t)									-- Create a CATEGORY Object.
	return struct("categoryID", id, t);
end
category = function(id, t)								-- Create a CATEGORY Object.
	return struct("categoryID", id, t);
end
cl = function(id, t)									-- Create a CHARACTER CLASS Object
	return struct("classID", id, t);
end
creature = function(id, t)								-- Create a CREATURE Object
	return struct("creatureID", id, t);
end
cr = creature;											-- Create a CREATURE Object (alternative shortcut)
currency = function(id, t)								-- Create a CURRENCY Object
	return struct("currencyID", id, t);
end
d = function(id, t)										-- Create a DIFFICULTY Object
	return struct("difficultyID", id, t);
end
faction = function(id, t)								-- Create a FACTION Object
	return struct("factionID", id, t);
end
e = function(id, t)										-- Create an ENCOUNTER Object
	-- #if BEFORE WRATH
	-- Not yet supported in classic.
	if t then
		if t.groups or t.g then
			-- Convert to a Header or NPC ID.
			if t.npcID then
				return t;
			elseif t.creatureID then
				t.npcID = t.creatureID;
				t.creatureID = nil;
				return t;
			elseif t.cr then
				t.npcID = t.cr;
				t.cr = nil;
				return t;
			elseif t.crs then
				t.npcID = t.crs[1];
				table.remove(t.crs, 1);
				if #t.crs < 1 then
					t.crs = nil;
				end
				return t;
			else
				t.npcID = -1;
				return t;
			end
		else
			return { ["npcID"] = -1, ["g"] = t };
		end
	end
	-- #else
	return struct("encounterID", id, t);
	-- #endif
end
exploration = function(id, t)							-- Create an EXPLORATION Object
	if type(t) == "string" then t = { ["maphash"] = t }; end
	return struct("explorationID", id, t);
end
explorationBatch = function(data)
	local groups = {};
	for maphash,explorationID in pairs(data) do
		table.insert(groups, exploration(explorationID, maphash));
	end
	return groups;
end
flightpath = function(id, t)							-- Create a FLIGHT PATH Object
	return struct("flightPathID", id, t);
end
fp = flightpath;										-- Create a FLIGHT PATH Object (Alternative)
filter = function(id, t)								-- Create a FILTER Object
	return struct("f", id, t);
end
holiday = function(id, t)								-- Create an HOLIDAY Object
	return struct("holidayID", id, t);
end
ho = holiday;											-- Create an HOLIDAY Object (alternative shortcut)
item = function(id, t)									-- Create an ITEM Object
	return struct("itemID", id, t);
end
i = item;												-- Create an ITEM Object (alternative shortcut)
inst = function(id, t)									-- Create an INSTANT Object
	-- #if BEFORE WRATH
	-- Not yet supported in classic.
	if t then
		if t.groups or t.g then
			-- Convert to a MAP ID.
			if t.mapID then
				return t;
			else
				if t.maps then
					t.mapID = t.maps[1];
					table.remove(t.maps, 1);
					if #t.maps < 1 then
						t.maps = nil;
					end
				else
					error("Instance Missing a MapID.");
				end
				return t;
			end
		else
			return { ["npcID"] = -1, ["g"] = t };
		end
		
	end
	-- #else
	return struct("encounterID", id, t);
	-- #endif
end
map = function(id, t)									-- Create a MAP Object
	return struct("mapID", id, t);
end
m = map;												-- Create a MAP Object (alternative shortcut)
mount = function(id, t)									-- Create a MOUNT Object, which is just a spellID with a filter.
	-- #if BEFORE WRATH
	return struct("spellID", id, t);
	-- #else
	return struct("mountID", id, t);
	-- #endif
end
npc = function(id, t)									-- Create an NPC Object (negative indicates that it is custom)
	if not id then
		--error("NPC ID Missing");
		return unpack(t);
	end
	return struct("npcID", id, t);
end
n = npc;												-- Create an NPC Object (alternative shortcut)
obj = function(id, t)									-- Create a WORLD OBJECT Object (an interactable, non-NPC object out in the world - like a chest)
	return struct("objectID", id, t);
end
o = obj;												-- Create a WORLD OBJECT Object (alternative shortcut)
prof = function(skillID, t)								-- Create a PROFESSION Object
	return struct("professionID", skillID, t);
end
profession = function(skillID, t)						-- Create a PROFESSION Container. (NOTE: Only use in the Profession Folder.)
	local p = prof(skillID, t);
	_.Professions = { p };
	return p;
end
pvprank = function(id, t)								-- Create a PVP Rank Object.
	return struct("pvpRankID", id, t);
end
quest = function(id, t)									-- Create a QUEST Object
	return struct("questID", id, t);
end
q = quest;												-- Create a QUEST Object (alternative shortcut)
questobjective = function(id, t)						-- Create a QUEST OBJECTIVE Object
	return struct("objectiveID", id, t);
end
objective = questobjective;								-- Create a QUEST OBJECTIVE Object (alternative shortcut)
qo = questobjective;									-- Create a QUEST OBJECTIVE Object (alternative shortcut)
race = function(id, t)									-- Create a RACE Object
	return struct("raceID", id, t);
end
recipe = function(id, t)								-- Create a RECIPE Object
	return struct("recipeID", id, t);
end
spell = function(id, t)									-- Create a SPELL Object
	return struct("spellID", id, t);
end
sp = spell;												-- Create a SPELL Object (alternative shortcut)
tier = function(id, t)									-- Create a TIER Object
	return struct("tierID", id, t);
end
title = function(id, t)									-- Create a TITLE Object
	return struct("titleID", id, t);
end
v = function(id, t)										-- Create a VIGNETTE Object
	return struct("vignetteID", id, t);
end

-- SHORTCUTS for Field Modifiers (not objects, you can apply these anywhere)
a = function(t)	-- Flag as Alliance Only
	if t.races then
		for key,value in pairs(t) do
			if key == "g" then
				-- Do nothing.
			elseif type(value) == "table" then
				-- Show the table.
				local statement = "";
				local count = 0;
				for j,value2 in ipairs(value) do
					if count > 0 then statement = statement .. ", "; end
					statement = statement .. tostring(value2);
					count = count + 1;
				end
				print("\t" .. tostring(key) .. ": { " .. statement .. " }");
			else
				print("\t" .. tostring(key) .. ": " .. tostring(value));
			end
		end
		error("Attempted to assign RACES as ALLIANCE_ONLY on a thing already marked with races.");
	else
		t.races = ALLIANCE_ONLY;
	end
	return t;
end
crit = function(criteriaID, t)           -- Create an Achievement Criteria Object (localized automatically)
	if not t then t = {};
	elseif not t.groups then
		if not isarray(t) then
			-- DO NOT do that lol
		else
			t = { ["groups"] = t };
		end
	end
	t.criteriaID = criteriaID;
	return un(WRATH_PHASE_ONE, t);
end
model = function(displayID, t)
	t.displayID = displayID;
	return t;
end
h = function(t) -- Flag as Horde Only
	if t.races then
		for key,value in pairs(t) do
			if key == "g" then
				-- Do nothing.
			elseif type(value) == "table" then
				-- Show the table.
				local statement = "";
				local count = 0;
				for j,value2 in ipairs(value) do
					if count > 0 then statement = statement .. ", "; end
					statement = statement .. tostring(value2);
					count = count + 1;
				end
				print("\t" .. tostring(key) .. ": { " .. statement .. " }");
			else
				print("\t" .. tostring(key) .. ": " .. tostring(value));
			end
		end
		error("Attempted to assign RACES as HORDE_ONLY on a thing already marked with races.");
	else
		t.races = HORDE_ONLY;
	end
	return t;
end
un = function(u, t) t.u = u; return t; end						-- Mark an object unobtainable where u is the type.

-- Used by the Harvester (Parser)
function Harvest(things)
	if not _.ItemDB then _.ItemDB = {}; end
	local thing;
	for i,j in pairs(things) do
		thing = _.ItemDB[i];
		if not thing then
			thing = {};
			thing.mods = {};
			thing.bonuses = {};
			_.ItemDB[i] = thing;
		else
			if not thing.mods then thing.mods = {} end
			if not thing.bonuses then thing.bonuses = {} end
		end
		if j.mods then
			for l,modID in ipairs(j.mods) do
				thing.mods[l] = modID;
			end
			for l,modID in pairs(j.mods) do
				thing.mods[l] = modID;
			end
		end
		if j.bonuses then
			for l,bonusID in pairs(j.bonuses) do
				thing.bonuses[l] = bonusID;
			end
		end
	end
end