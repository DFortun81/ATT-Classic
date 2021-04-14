profession(FISHING, {
	n(QUESTS, {
		q(8194, {	-- Apprentice Angler
			["qg"] = 15078,	-- Jang <Fishmaster Apprentice>
			["requireSkill"] = FISHING,
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19807, 5 },	-- Speckled Tastyfish
			},
		}),
		q(8229, {	-- Could I get a Fishing Flier?
			["qg"] = 15116,	-- Grinkle <Fishing Promoter>
			["requireSkill"] = FISHING,
			["coord"] = { 53.25, 70.65, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["repeatable"] = true,
			["races"] = HORDE_ONLY,
			["lvl"] = 35,
			["groups"] = {
				i(19978),	-- Fishing Tournament!
			},
		}),
		q(8228, {	-- Could I get a Fishing Flier?
			["qg"] = 15119,	-- Barrus <Fishing Promoter>
			["requireSkill"] = FISHING,
			["coord"] = { 54.8, 63.1, STORMWIND_CITY },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["repeatable"] = true,
			["lvl"] = 35,
			["groups"] = {
				i(19978),	-- Fishing Tournament!
			},
		}),
		q(1580, {	-- Electropellers
			["qg"] = 3666,	-- Wizbang Cranktoggle
			["sourceQuest"] = 1579,	-- Gaffer Jacks
			["requireSkill"] = FISHING,
			["coord"] = { 37.0, 44.0, DARKSHORE },
			["maps"] = { DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 6718, 12 },	-- Electropeller
			},
			["lvl"] = 10,
			["groups"] = {
				{
					["itemID"] = 6718,	-- Electropeller
					["questID"] = 1580,	-- Electropellers
					["coords"] = {
						{ 52.0, 28.9, DARKSHORE },
						{ 41.5, 73.4, DARKSHORE },
					},
				},
				i(6811),	-- Aquadynamic Fish Lens
			},
		}),
		q(1579, {	-- Gaffer Jacks
			["qg"] = 3666,	-- Wizbang Cranktoggle
			["requireSkill"] = FISHING,
			["description"] = 'Requires fishing skill level 30',
			["coord"] = { 37.0, 44.0, DARKSHORE },
			["maps"] = { DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 6717, 8 },	-- Gaffer Jack
			},
			["lvl"] = 10,
		}),
		q(6609, {	-- I Got Nothin' Left!
			["qg"] = 5161,	-- Grimnur Stonebrand <Fishing Trainer>
			["requireSkill"] = FISHING,
			["description"] = "Requires 225 Fishing to start this quest.",
			["coord"] = { 48.4, 6.4, IRONFORGE },
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		}),
		q(8193, {	-- Master Angler
			["qg"] = 15077,	-- Riggle Bassbait <Fishmaster>
			["requireSkill"] = FISHING,
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
		}),
		q(6607, {	-- Nat Pagle, Angler Extreme
			["qg"] = 12919,	-- Nat Pagle
			["sourceQuests"] = {
				6609,	-- I Got Nothin' Left!
				6608,	-- You Too Good.
			},
			["requireSkill"] = FISHING,
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
		}),
		q(8225, {	-- Rare Fish - Brownell's Blue Striped Racer
			["qg"] = 15079,	-- Fishbot 5000
			["requireSkill"] = FISHING,
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19803, 1 },	-- Brownell's Blue Striped Racer
			},
			["g"] = {
				i(19969),	-- Nat Pagle's Extreme Anglin' Boots
			},
		}),
		q(8224, {	-- Rare Fish - Dezian Angelfish
			["qg"] = 15079,	-- Fishbot 5000
			["requireSkill"] = FISHING,
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19806, 1 },	-- Dezian Angelfish
			},
			["g"] = {
				i(19971),	-- High Test Eternium Fishing Line
			},
		}),
		q(8221, {	-- Rare Fish - Keefer's Angelfish
			["qg"] = 15079,	-- Fishbot 5000
			["requireSkill"] = FISHING,
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19805, 1 },	-- Keefer's Angelfish
			},
			["g"] = {
				i(19972),	-- Lucky Fishing Hat
			},
		}),
		un(NEVER_IMPLEMENTED, q(8226, {	-- Rare Fish - Pale Ghoulfish
			["qg"] = 15079,	-- Fishbot 5000
			["requireSkill"] = FISHING,
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19804, 1 },	-- Pale Ghoulfish
			},
			["g"] = {
				un(NEVER_IMPLEMENTED, i(7996)),	-- Worn Fishing Hat
			},
		})),
		q(1141, {	-- The Family and the Fishing Pole
			["qg"] = 10216,	-- Gubber Blump
			["description"] = "Talk to Gubber Blump after accepting the quest to learn Fishing. Buy a Fishing Pole for 23c and a Shiny Bauble for 50c from Gubber Blump. Start fishing next to Gubber Blump to catch the fish required for the quest.",
			["coord"] = { 36.1, 44.9, DARKSHORE },
			["maps"] = { DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 12238, 6 },	-- Darkshore Grouper
			},
			["lvl"] = 10,
			["g"] = {
				i(12225),	-- Blump Family Fishing Pole
			},
		}),
		q(6608, {	-- You Too Good.
			["qg"] = 3332,	-- Lumak <Fishing Trainer>
			["requireSkill"] = FISHING,
			["description"] = "Requires 225 Fishing to start this quest.",
			["coord"] = { 69.8, 29.6, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		}),
	}),
});