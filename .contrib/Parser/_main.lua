AllTheThings = {};
_ = AllTheThings;

-- Static values for minReputation/maxReputation properties. 
-- The values are based on a "distance from zero" to match what Blizzard tracks internally as "totalEarned" rep
HATED, HOSTILE, UNFRIENDLY, NEUTRAL, FRIENDLY, HONORED, REVERED, EXALTED = -42000, -6000, -3000, 0, 3000, 9000, 21000, 42000

-- Map Constants for quick and easy replacement when we can get mapIDs on live!
-- NOTE: All of these must be changed!
-- Raids (Custom)
BLACKWING_LAIR = 287;
MOLTEN_CORE = 232;
NAXXRAMAS = 162;
ONYXIAS_LAIR = 248;
RUINS_OF_AHNQIRAJ = 247;
TEMPLE_OF_AHNQIRAJ = 320;
ZULGURUB = 337;

-- Dungeons (Custom)
BLACKFATHOM_DEEPS = 221;
DEADMINES = 291;
DIRE_MAUL = -1;
GNOMEREGAN = 226;
RAGEFIRE_CHASM = 213;
RAZORFEN_DOWNS = 300;
RAZORFEN_KRAUL = 301;
SHADOWFANG_KEEP = 310;
THE_STOCKADE = 225;
ULDAMAN = 230;
WAILING_CAVERNS = 279;

-- Continents
COSMIC = 947;	-- Confirmed!
EASTERN_KINGDOMS = 1415;	-- Confirmed!
KALIMDOR = 1414;	-- Confirmed!

-- Kalimdor
ASHENVALE = 1440;	-- Confirmed!
AZSHARA = 1447;	-- Confirmed!
DARKSHORE = 1439;	-- Confirmed!
DARNASSUS = 89;
DESOLACE = 1443;	-- Confirmed!
DUROTAR = 1454;	-- Confirmed!
DUSTWALLOW_MARSH = 1445;	-- Confirmed!
FELWOOD = 1448;	-- Confirmed!
FERALAS = 1444;	-- Confirmed!
MOONGLADE = 1450;	-- Confirmed!
MULGORE = 1456;	-- Confirmed!
ORGRIMMAR = 85;
SILITHUS = 1451;	-- Confirmed!
STONETALON_MOUNTAINS = 1442;	-- Confirmed!
TANARIS = 1446;	-- Confirmed!
TELDRASSIL = 1438;	-- Confirmed!
THE_BARRENS = 1413;	-- Confirmed!
THOUSAND_NEEDLES = 1441;	-- Confirmed!
THUNDER_BLUFF = 88;
UNGORO_CRATER = 1449;	-- Confirmed!
WINTERSPRING = 1452;	-- Confirmed!

-- Eastern Kingdoms
ALTERAC_MOUNTAINS = -2;
ARATHI_HIGHLANDS = 1417;	-- Confirmed!
BADLANDS = 1418;	-- Confirmed!
BLASTED_LANDS = 1419;	-- Confirmed!
BURNING_STEPPES = 1428;	-- Confirmed!
DEEPRUN_TRAM = 499;	-- Confirmed!
DUN_MOROGH = 1455;	-- Confirmed!
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
TIRISFAL_GLADES = 1458;	-- Confirmed!
UNDERCITY = 90;
WESTERN_PLAGUELANDS = 1422;	-- Confirmed!
WESTFALL = 1436;	-- Confirmed!
WETLANDS = 1437;	-- Confirmed!

-- Custom Maps
BLACKROCK_MOUNTAIN = -3;


-- Helper Tables
ALLIANCE_ONLY = {
	1,	-- Human
	3,	-- Dwarf
	4,	-- Night Elf
	7,	-- Gnome
};
HORDE_ONLY = {
	2,	-- Orc
	5,	-- Undead
	6,	-- Tauren
	8,	-- Troll
};
ALL_RACES = {	-- NOTE: Use this with the exclude function.
	1,	-- Human
	2,	-- Orc
	3,	-- Dwarf
	4,	-- Night Elf
	5,	-- Undead
	6,	-- Tauren
	7,	-- Gnome
	8,	-- Troll
};
ALL_CLASSES = {	-- NOTE: Use this with the exclude function.
	1,	-- Warrior
	2,	-- Paladin
	3,	-- Hunter
	4,	-- Rogue
	5,	-- Priest
	7,	-- Shaman
	8,	-- Mage
	9,	-- Warlock
	11,	-- Druid
};
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
faction = function(id, t)								-- Create an FACTION Object
	return struct("factionID", id, t);
end
flightpath = function(id, t)							-- Create a FLIGHT PATH Object
	return struct("flightPathID", id, t);
end
fp = flightpath;										-- Create a FLIGHT PATH Object (Alternative)
filter = function(id, t)								-- Create an FILTER Object
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
quest = function(id, t)									-- Create a QUEST Object
	return struct("questID", id, t);
end
q = quest;												-- Create a QUEST Object (alternative shortcut)
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
title = function(id, t)									-- Create a TITLE Object
	return struct("titleID", id, t);
end
v = function(id, t)										-- Create a VIGNETTE Object
	return struct("vignetteID", id, t);
end

-- SHORTCUTS for Field Modifiers (not objects, you can apply these anywhere)
un = function(u, t) t.u = u; return t; end						-- Mark an object unobtainable where u is the type.