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
			["requireSkill"] = 356,	-- Fishing
			["coord"] = { 37.0, 44.0, DARKSHORE },
			["maps"] = { DARKSHORE },
			["lvl"] = 10,
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
		
		
		
		
	}),
});