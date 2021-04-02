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
THE_BLACK_TEMPLE = 339;	-- Confirmed!
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
TERROKAR_FOREST = 1952;	-- Confirmed!
SHATTRATH_CITY = 1955;	-- Confirmed!
BLADESEDGE_MOUNTAINS = 1949;	-- Confirmed!
SHADOWMOON_VALLEY = 1948;	-- Confirmed!

-- Custom Maps
BLACKROCK_MOUNTAIN = 35;
CAVERNS_OF_TIME = 75;

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

-- Common Custom NPCs used for headers
ACHIEVEMENTS = -4;
COMMON_BOSS_DROPS = -1;
REWARDS = -18;
QUESTS = -17;
RARES = -16;
EXPLORATION = -15;
VENDORS = -2;
ZONEDROPS = 0;

-- Professions
ALCHEMY = 171;
ARCHAEOLOGY = 794;
BLACKSMITHING = 164;
COOKING = 185;
ENCHANTING = 333;
ENGINEERING = 202;
FIRST_AID = 129;
FISHING = 356;
HERBALISM = 182;
INSCRIPTION = 773;
JEWELCRAFTING = 755;
LEATHERWORKING = 165;
MINING = 186;
SKINNING = 393;
TAILORING = 197;

-- Unobtainable Filters
NEVER_IMPLEMENTED = 1;
REMOVED_FROM_GAME = 2;

-- Classic Phases
PHASE_ONE = 11;
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
TBC_PHASE_TWO = 18;
TBC_PHASE_THREE = 19;
TBC_PHASE_FOUR = 20;
TBC_PHASE_FIVE = 21;
TBC_PHASE_SIX = 22;

-- Wrath Classic Phases
WRATH_PHASE_ONE = 23;
WRATH_PHASE_TWO = 24;
WRATH_PHASE_THREE = 25;
WRATH_PHASE_FOUR = 26;
WRATH_PHASE_FIVE = 27;
WRATH_PHASE_SIX = 28;

-- Cataclysm Classic Phases
CATA_PHASE_ONE = 29;	-- NOTE: Reason for this is to show when stuff is going away eventually.

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
addObject = function(o, t)
	table.insert(t, o);
	return t;
end
bubbleDown = function(data, t)
	for i, group in ipairs(t) do
		for key, value in pairs(data) do
			if not group[key] then
				group[key] = value;
			end
		end
		if group.groups then bubbleDown(data, group.groups); end
		if group.g then bubbleDown(data, group.g); end
	end
	return t;
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
		for i,o in ipairs(t) do
			if not contains(data, o) then
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
merge = function(...)
	local t = {};
	for i,groups in ipairs({...}) do
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
isarray = function(t)
	return type(t) == 'table' and (#t > 0 or next(t) == nil);
end

-- Asset Path Helper Functions
asset = function(path)
	return "Interface\\Addons\\ATT-Classic\\assets\\" .. path;
end
icon = function(path)
	return "Interface\\Icons\\" .. path;
end

-- SHORTCUTS for Object Class Types
cat = function(id, t)									-- Create a CATEGORY Object.
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
exploration = function(id, t)							-- Create an EXPLORATION Object
	return struct("explorationID", id, t);
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
map = function(id, t)									-- Create a MAP Object
	return struct("mapID", id, t);
end
m = map;												-- Create a MAP Object (alternative shortcut)
npc = function(id, t)									-- Create an NPC Object (negative indicates that it is custom)
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
un = function(u, t) t.u = u; return t; end						-- Mark an object unobtainable where u is the type.