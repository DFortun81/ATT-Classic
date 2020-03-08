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
		q(8226, {	-- Rare Fish - Pale Ghoulfish
			["qg"] = 15079,	-- Fishbot 5000
			["requireSkill"] = FISHING,
			["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["repeatable"] = true,
			["cost"] = {
				{ "i", 19804, 1 },	-- Pale Ghoulfish
			},
			["u"] = 1,
			["g"] = {
				i(7996),	-- Worn Fishing Hat
			},
		}),
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
	filter(23, {	-- 1H Maces
		i(19808),	-- Rockhide Strongfish
		i(6360),	-- Steelscale Crushfish
	}),
	filter(52, {	-- Finger
		i(8350),	-- The 1 Ring
	}),
	filter(1, {	-- Held in Off-hand
		i(6292),	-- 10 Pound Mud Snapper
		i(6294),	-- 12 Pound Mud Snapper
		i(6295),	-- 15 Pound Mud Snapper
		i(13901),	-- 15 Pound Salmon
		i(6309),	-- 17 Pound Catfish
		i(13902),	-- 18 Pound Salmon
		i(6310),	-- 19 Pound Catfish
		i(6311),	-- 22 Pound Catfish
		i(13903),	-- 22 Pound Salmon
		i(13904),	-- 25 Pound Salmon
		i(6363),	-- 26 Pound Catfish
		i(13905),	-- 29 Pound Salmon
		i(6364),	-- 32 Pound Catfish
		i(13906),	-- 32 Pound Salmon
		i(13885),	-- 34 Pound Redgill
		i(13886),	-- 37 Pound Redgill
		i(13882),	-- 42 Pound Redgill
		i(13883),	-- 45 Pound Redgill
		i(13884),	-- 49 Pound Redgill
		i(13887),	-- 52 Pound Redgill
		i(13914),	-- 70 Pound Mightfish
		i(13915),	-- 85 Pound Mightfish
		i(13916),	-- 92 Pound Mightfish
		i(13917),	-- 103 Pound Mightfish
	}),
	filter(50, {	-- Miscellaneous
		i(13907),	-- 7 Pound Lobster
		i(13908),	-- 9 Pound Lobster
		i(13909),	-- 12 Pound Lobster
		i(13910),	-- 15 Pound Lobster
		i(13911),	-- 19 Pound Lobster
		i(13912),	-- 21 Pound Lobster
		i(13913),	-- 22 Pound Lobster
		i(13876),	-- 40 Pound Grouper
		i(13877),	-- 47 Pound Grouper
		i(13878),	-- 53 Pound Grouper
		i(13879),	-- 59 Pound Grouper
		i(13880),	-- 68 Pound Grouper
		i(6646),	-- Bloated Albacore
		i(6647),	-- Bloated Catfish
		i(21163),	-- Bloated Firefin
		i(6644),	-- Bloated Mackerel
		i(21243),	-- Bloated Mightfish
		i(6645),	-- Bloated Mud Snapper
		i(21162),	-- Bloated Oily Blackmouth
		i(13881, {	-- Bloated Redgill
			i(7551),	-- Entwined Opaline Talisman
			i(7549),	-- Fairy's Embrace
		}),
		i(21164),	-- Bloated Rockscale Cod
		i(13891),	-- Bloated Salmon
		i(6643),	-- Bloated Smallfish
		i(8366),	-- Bloated Trout
	}),
});