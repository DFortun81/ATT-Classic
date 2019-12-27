profession(356, {	-- Fishing
	n(-17, {	-- Quests
		{
			["questID"] = 8194,	-- Apprentice Angler
			["qg"] = 15078,	-- Jang <Fishmaster Apprentice>
			["requireSkill"] = 356,	-- Fishing
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19807, 5 },	-- Speckled Tastyfish
			},
		},
		{
			["questID"] = 8229,	-- Could I get a Fishing Flier?
			["qg"] = 15116,	-- Grinkle <Fishing Promoter>
			["requireSkill"] = 356,	-- Fishing
			["coord"] = { 53.25, 70.65, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["repeatable"] = true,
			["races"] = HORDE_ONLY,
			["lvl"] = 35,
			["groups"] = {
				i(19978),	-- Fishing Tournament!
			},
		},
		{
			["questID"] = 8228,	-- Could I get a Fishing Flier?
			["qg"] = 15119,	-- Barrus <Fishing Promoter>
			["requireSkill"] = 356,	-- Fishing
			["coord"] = { 54.8, 63.1, STORMWIND_CITY },
			["maps"] = { STORMWIND_CITY },
			["repeatable"] = true,
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 35,
			["groups"] = {
				i(19978),	-- Fishing Tournament!
			},
		},
		{
			["questID"] = 1580,	-- Electropellers
			["sourceQuest"] = 1579,	-- Gaffer Jacks
			["qg"] = 3666,	-- Wizbang Cranktoggle
			["races"] = ALLIANCE_ONLY,
			["requireSkill"] = 356,	-- Fishing
			["coord"] = { 37.0, 44.0, DARKSHORE },
			["maps"] = { DARKSHORE },
			["lvl"] = 10,
			["groups"] = {
				i(6811),	-- Aquadynamic Fish Lens
			},
		},
		{
			["questID"] = 1579,	-- Gaffer Jacks
			["qg"] = 3666,	-- Wizbang Cranktoggle
			["races"] = ALLIANCE_ONLY,
			["requireSkill"] = 356,	-- Fishing
			["description"] = 'Requires fishing skill level 30',
			["coord"] = { 37.0, 44.0, DARKSHORE },
			["maps"] = { DARKSHORE },
			["lvl"] = 10,
		},
		{
			["questID"] = 6609,	-- I Got Nothin' Left!
			["qg"] = 5161,	-- Grimnur Stonebrand <Fishing Trainer>
			["requireSkill"] = 356,	-- Fishing
			["description"] = "Requires 225 Fishing to start this quest.",
			["coord"] = { 48.4, 6.4, IRONFORGE },
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		},
		{
			["questID"] = 8193,	-- Master Angler
			["qg"] = 15077,	-- Riggle Bassbait <Fishmaster>
			["requireSkill"] = 356,	-- Fishing
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19807, 40 },	-- Speckled Tastyfish
			},
			["groups"] = {
				i(19970),	-- Arcanite Fishing Pole
				i(19979),	-- Hook of the Master Angler
			},
		},
		{
			["questID"] = 6607,	-- Nat Pagle, Angler Extreme
			["qg"] = 12919,	-- Nat Pagle
			["sourceQuests"] = {
				6609,	-- I Got Nothin' Left!
				6608,	-- You Too Good.
			},
			["requireSkill"] = 356,	-- Fishing
			["description"] = "Requires 225 Fishing to start this quest.",
			["coord"] = { 58.6, 60.0, DUSTWALLOW_MARSH },
			["maps"] = { DUSTWALLOW_MARSH },
			["lvl"] = 35,
			["cost"] = {
				{ "i", 16967, 1 },	-- Feralas Ahi
				{ "i", 16970, 1 },	-- Misty Reed Mahi Mahi
				{ "i", 16968, 1 },	-- Sar'theris Striker
				{ "i", 16969, 1 },	-- Savage Coast Blue Sailfin
			},
			["groups"] = {
				recipe(18248),	-- Fishing (Artisan)
			},
		},
		{
			["questID"] = 8225,	-- Rare Fish - Brownell's Blue Striped Racer
			["qg"] = 15079,	-- Fishbot 5000
			["requireSkill"] = 356,	-- Fishing
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19803, 1 },	-- Brownell's Blue Striped Racer
			},
			["g"] = {
				i(19969),	-- Nat Pagle's Extreme Anglin' Boots
			},
		},
		{
			["questID"] = 8224,	-- Rare Fish - Dezian Angelfish
			["qg"] = 15079,	-- Fishbot 5000
			["requireSkill"] = 356,	-- Fishing
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19806, 1 },	-- Dezian Angelfish
			},
			["g"] = {
				i(19971),	-- High Test Eternium Fishing Line
			},
		},
		{
			["questID"] = 8221,	-- Rare Fish - Keefer's Angelfish
			["qg"] = 15079,	-- Fishbot 5000
			["requireSkill"] = 356,	-- Fishing
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19805, 1 },	-- Keefer's Angelfish
			},
			["g"] = {
				i(19972),	-- Lucky Fishing Hat
			},
		},
		{
			["questID"] = 8226,	-- Rare Fish - Pale Ghoulfish
			["qg"] = 15079,	-- Fishbot 5000
			["requireSkill"] = 356,	-- Fishing
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["u"] = 1,
			["cost"] = {
				{ "i", 19804, 1 },	-- Pale Ghoulfish
			},
			["g"] = {
				i(7996),	-- Worn Fishing Hat
			},
		},
		{
			["questID"] = 6608,	-- You Too Good.
			["qg"] = 3332,	-- Lumak <Fishing Trainer>
			["requireSkill"] = 356,	-- Fishing
			["description"] = "Requires 225 Fishing to start this quest.",
			["coord"] = { 69.8, 29.6, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		},
	}),
});