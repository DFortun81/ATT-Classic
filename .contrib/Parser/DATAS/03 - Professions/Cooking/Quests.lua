profession(185, {	-- Cooking
	n(-17, {	-- Quests
		q(384, {	-- Beer Basted Boar Ribs
			["lvl"] = 5,
			["requireSkill"] = 185,	-- Cooking
			["races"] = ALLIANCE_ONLY,
			["qg"] = 1267,	-- Ragnar Thunderbrew
			["maps"] = { DUN_MOROGH },
			["g"] = {
				i(2888),	-- Beer Basted Boar Ribs
				i(2889),	-- Recipe: Beer Basted Boar Ribs
			},
		}),
		q(6610, {	-- Clamlette Surprise
			["lvl"] = 35,
			["requireSkill"] = 185,	-- Cooking
			["qg"] = 8125,	-- Dirge Quikcleave
			["maps"] = { TANARIS },
			["g"] = {
				i(16971),	-- Clamlette Surprise
			},
			["coord"] = { 52.63, 28.12, TANARIS },
		}),
		q(8307, {	-- Desert Recipe
			["u"] = 3,	-- Added in later phase
			["lvl"] = 40,
			["requireSkill"] = 185,	-- Cooking
			["qg"] = 15174,	-- Calandrath
			["maps"] = { SILITHUS },
		}),
		q(862, {	-- Dig Rat Stew
			["lvl"] = 15,
			["requireSkill"] = 185,	-- Cooking
			["races"] = HORDE_ONLY,
			["qg"] = 3443,	-- Grub
			["coord"] = { 55.31, 31.79, THE_BARRENS },
			["maps"] = { THE_BARRENS },
			["g"] = {
				i(10919),	-- Apothecary Gloves
				i(5478),	-- Dig Rat Stew
				i(5487),	-- Recipe: Dig Rat Stew
			},
		}),
		q(2178, {	-- Easy Strider Living
			["lvl"] = 9,
			["races"] = ALLIANCE_ONLY,
			["qg"] = 3702,	-- Alanndarian Nightsong
			["requireSkill"] = 	185, -- Cooking
			["maps"] = { DARKSHORE },
			["g"] = {
				i(5486),	-- Recipe: Strider Stew
				i(5477),	-- Strider Stew
			},
			["coord"] = { 37.7, 40.7, DARKSHORE },
		}),
		q(6612, {	-- I Know A Guy...
			["lvl"] = 35,
			["races"] = ALLIANCE_ONLY,
			["requireSkill"] = 185,	-- Cooking
			["qg"] = 5159,	-- Daryl Riknussun
			["maps"] = { IRONFORGE },
			["isBreadcrumb"] = true,
			["coord"] = { 60.1, 36.5, IRONFORGE },
		}),
		q(8317, {	-- Kitchen Assistance
			["u"] = 3,	-- Added in later phase
			["lvl"] = 40,
			["requireSkill"] = 185,	-- Cooking
			["provider"] = { "o", 180503 },	-- Sandy Cookbook
			["maps"] = { SILITHUS },
			["sourceQuest"] = 8313,	-- Sharing the Knowledge
		}),
		q(4161, {	-- Recipe of the Kaldorei
			["lvl"] = 1,
			["requireSkill"] = 185,	-- Cooking
			["races"] = ALLIANCE_ONLY,
			["qg"] = 6286,	-- Zarrin
			["maps"] = { TELDRASSIL },
			["g"] = {
				i(5482),	-- Recipe: Kaldorei Spider Kabob
			},
		}),
		q(8313, {	-- Sharing the Knowledge
			["u"] = 3,	-- Added in later phase
			["lvl"] = 40,
			["requireSkill"] = 185,	-- Cooking
			["provider"] = { "o", 180503 },	-- Sandy Cookbook
			["maps"] = { SILITHUS },
			["sourceQuest"] = 8307,	-- Desert Recipe
		}),
		q(555, {	-- Soothing Turtle Bisque (A)
			["lvl"] = 28,
			["requireSkill"] = 185,	-- Cooking
			["races"] = ALLIANCE_ONLY,
			["qg"] = 2430,	-- Chef Jessen
			["maps"] = { HILLSBRAD_FOOTHILLS },
			["g"] = {
				i(3737),	-- Recipe: Soothing Turtle Bisque
				i(3729),	-- Soothing Turtle Bisque
			},
		}),
		q(7321, {	-- Soothing Turtle Bisque (H)
			["lvl"] = 28,
			["requireSkill"] = 185,	-- Cooking
			["races"] = HORDE_ONLY,
			["qg"] = 2393,	-- Christoph Jeffcoat
			["maps"] = { HILLSBRAD_FOOTHILLS },
			["g"] = {
				i(3737),	-- Recipe: Soothing Turtle Bisque
				i(3729),	-- Soothing Turtle Bisque
			},
		}),
		q(6611, {	-- To Gadgetzan You Go!
			["lvl"] = 35,
			["races"] = HORDE_ONLY,
			["requireSkill"] = 185,	-- Cooking
			["qg"] = 3399,	-- Zamja
			["maps"] = { ORGRIMMAR },
			["isBreadcrumb"] = true,
		}),
	}),
});