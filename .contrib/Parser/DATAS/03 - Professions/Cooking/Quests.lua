profession(COOKING, {
	n(QUESTS, {
		q(384, {	-- Beer Basted Boar Ribs
			["qg"] = 1267,	-- Ragnar Thunderbrew
			["requireSkill"] = COOKING,
			["maps"] = { DUN_MOROGH },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 5,
			["g"] = {
				i(2888),	-- Beer Basted Boar Ribs
				i(2889),	-- Recipe: Beer Basted Boar Ribs
			},
		}),
		q(6610, {	-- Clamlette Surprise
			["qg"] = 8125,	-- Dirge Quikcleave
			["requireSkill"] = COOKING,
			["coord"] = { 52.63, 28.12, TANARIS },
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 12207, 12 },	-- Giant Egg
				{ "i", 7974, 10 },	-- Zesty Clam Meat
				{ "i", 8932, 20 },	-- Alterac Swiss
			},
			["lvl"] = 35,
			["g"] = {
				i(16971),	-- Clamlette Surprise
			},
		}),
		q(8307, {	-- Desert Recipe
			["qg"] = 15174,	-- Calandrath
			["requireSkill"] = COOKING,
			["maps"] = { SILITHUS },
			["lvl"] = 40,
			["u"] = 3,	-- Added in later phase
		}),
		q(862, {	-- Dig Rat Stew
			["qg"] = 3443,	-- Grub
			["requireSkill"] = COOKING,
			["coord"] = { 55.31, 31.79, THE_BARRENS },
			["maps"] = { THE_BARRENS },
			["races"] = HORDE_ONLY,
			["lvl"] = 15,
			["g"] = {
				i(10919),	-- Apothecary Gloves
				i(5478),	-- Dig Rat Stew
				i(5487),	-- Recipe: Dig Rat Stew
			},
		}),
		q(2178, {	-- Easy Strider Living
			["qg"] = 3702,	-- Alanndarian Nightsong
			["requireSkill"] = COOKING,
			["coord"] = { 37.7, 40.7, DARKSHORE },
			["maps"] = { DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 5469, 5 },	-- Strider Meat
			},
			["lvl"] = 9,
			["g"] = {
				i(5486),	-- Recipe: Strider Stew
				i(5477),	-- Strider Stew
			},
		}),
		q(6612, {	-- I Know A Guy...
			["qg"] = 5159,	-- Daryl Riknussun
			["requireSkill"] = COOKING,
			["coord"] = { 60.1, 36.5, IRONFORGE },
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		}),
		q(8317, {	-- Kitchen Assistance
			["provider"] = { "o", 180503 },	-- Sandy Cookbook
			["sourceQuest"] = 8313,	-- Sharing the Knowledge
			["requireSkill"] = COOKING,
			["maps"] = { SILITHUS },
			["lvl"] = 40,
			["u"] = 3,	-- Added in later phase
		}),
		q(4161, {	-- Recipe of the Kaldorei
			["qg"] = 6286,	-- Zarrin
			["requireSkill"] = COOKING,
			["maps"] = { TELDRASSIL },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(5482),	-- Recipe: Kaldorei Spider Kabob
			},
		}),
		q(8313, {	-- Sharing the Knowledge
			["provider"] = { "o", 180503 },	-- Sandy Cookbook
			["sourceQuest"] = 8307,	-- Desert Recipe
			["requireSkill"] = COOKING,
			["maps"] = { SILITHUS },
			["lvl"] = 40,
			["u"] = 3,	-- Added in later phase
		}),
		q(555, {	-- Soothing Turtle Bisque (A)
			["qg"] = 2430,	-- Chef Jessen
			["coord"] = { 51.8, 58.7, HILLSBRAD_FOOTHILLS },
			["maps"] = { HILLSBRAD_FOOTHILLS },
			["requireSkill"] = COOKING,
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 28,
			["g"] = {
				i(3737),	-- Recipe: Soothing Turtle Bisque
				i(3729),	-- Soothing Turtle Bisque
			},
		}),
		q(7321, {	-- Soothing Turtle Bisque (H)
			["qg"] = 2393,	-- Christoph Jeffcoat
			["coord"] = { 62.30, 19.05, HILLSBRAD_FOOTHILLS },
			["maps"] = { HILLSBRAD_FOOTHILLS },
			["requireSkill"] = COOKING,
			["races"] = HORDE_ONLY,
			["lvl"] = 28,
			["g"] = {
				i(3737),	-- Recipe: Soothing Turtle Bisque
				i(3729),	-- Soothing Turtle Bisque
			},
		}),
		q(6611, {	-- To Gadgetzan You Go!
			["qg"] = 3399,	-- Zamja
			["requireSkill"] = COOKING,
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		}),
	}),
});