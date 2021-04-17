profession(COOKING, {
	n(QUESTS, {
		q(384, {	-- Beer Basted Boar Ribs
			["qg"] = 1267,	-- Ragnar Thunderbrew
			["requireSkill"] = COOKING,
			["maps"] = { DUN_MOROGH },
			["races"] = ALLIANCE_ONLY,
			-- #if AFTER CATA
			["coord"] = { 53.9, 50.6, DUN_MOROGH },
			["cost"] = {
				{ "i", 2894, 1 },	-- Rhapsody Malt
				{ "i", 60496, 4 },	-- Tender Boar Ribs
			},
			-- #else
			["coord"] = { 46.8, 52.4, DUN_MOROGH },
			["cost"] = {
				{ "i", 2894, 1 },	-- Rhapsody Malt
				{ "i", 2886, 6 },	-- Crag Boar Rib
			},
			-- #endif
			["lvl"] = 5,
			["g"] = {
				i(2888),	-- Beer Basted Boar Ribs
				i(2889),	-- Recipe: Beer Basted Boar Ribs
			},
		}),
		q(6610, {	-- Clamlette Surprise
			-- #if AFTER CATA
			["qg"] = 40589,	-- Dirge Quikcleave
			["coord"] = { 52.4, 29.0, TANARIS },
			-- #else
			["qg"] = 8125,	-- Dirge Quikcleave
			["coord"] = { 52.63, 28.12, TANARIS },
			-- #endif
			["requireSkill"] = COOKING,
			["altQuests"] = { 13825 },	-- Clamlette Surprise
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 12207, 12 },	-- Giant Egg
				{ "i", 7974, 10 },	-- Zesty Clam Meat
				{ "i", 8932, 20 },	-- Alterac Swiss
			},
			["lvl"] = 35,
			["g"] = {
				i(16971),	-- Clamlette Surprise
				-- #if AFTER WRATH
				recipe(64054),	-- Clamlette Magnifique
				-- #endif
			},
		}),
		q(8307, {	-- Desert Recipe
			["qg"] = 15174,	-- Calandrath <Innkeeper>
			["requireSkill"] = COOKING,
			-- #if AFTER CATA
			["coord"] = { 55.4, 36.6, SILITHUS },
			-- #else
			["coord"] = { 51.8, 39, SILITHUS },
			-- #endif
			["maps"] = { SILITHUS },
			["lvl"] = 40,
		}),
		q(862, {	-- Dig Rat Stew
			["qg"] = 3443,	-- Grub
			["requireSkill"] = COOKING,
			["coord"] = { 55.31, 31.79, THE_BARRENS },
			["maps"] = { THE_BARRENS },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 5051, 8 },	-- Dig Rat
			},
			["timeline"] = { "removed 4.0.3.2000" },
			["lvl"] = 15,
			["g"] = {
				i(10919, {	-- Apothecary Gloves
					["timeline"] = { "removed 4.0.3.2000" },
				}),
				i(5478),	-- Dig Rat Stew
				i(5487, {	-- Recipe: Dig Rat Stew
					["timeline"] = { "removed 4.3.0.2000" },
				}),
			},
		}),
		q(2178, {	-- Easy Strider Living
			["qg"] = 3702,	-- Alanndarian Nightsong
			["requireSkill"] = COOKING,
			["coord"] = { 37.7, 40.7, DARKSHORE },
			["maps"] = { DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["timeline"] = { "removed 4.0.3.2000" },
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
			["timeline"] = { "removed 4.0.3.2000" },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		}),
		q(8317, {	-- Kitchen Assistance
			["qg"] = 15174,	-- Calandrath <Innkeeper>
			["sourceQuest"] = 8313,	-- Sharing the Knowledge
			["requireSkill"] = COOKING,
			-- #if AFTER CATA
			["coord"] = { 55.4, 36.6, SILITHUS },
			-- #else
			["coord"] = { 51.8, 39, SILITHUS },
			-- #endif
			["maps"] = { SILITHUS },
			["cost"] = {
				{ "i", 20452, 10 },	-- Smoked Desert Dumplings
			},
			["lvl"] = 40,
		}),
		q(11380, {	-- Manalicious
			["qg"] = 24393,	-- The Rokk <Master of Cooking>
			["coords"] = {
				{ 61.6, 16.6, SHATTRATH_CITY },
				{ 48, 54, NETHERSTORM },
			},
			["maps"] = { SHATTRATH_CITY, NETHERSTORM },
			["cost"] = {
				{ "i", 33849, 15 },	-- Mana Berry
			},
			["isDaily"] = true,
			-- #if ANYCLASSIC
			["u"] = TBC_PHASE_ONE,
			-- #endif
			["lvl"] = 70,
			["groups"] = {
				crit(3, {	-- Manalicious
					["achievementID"] = 906,	-- Kickin' It Up a Notch
				}),
				i(33844),	-- Barrel of Fish
				i(33857),	-- Crate of Meat
			},
		}),
		q(4161, {	-- Recipe of the Kaldorei
			["qg"] = 6286,	-- Zarrin
			["requireSkill"] = COOKING,
			["coord"] = { 57, 61.2, TELDRASSIL },
			["timeline"] = { "removed 4.0.3.2000" },
			["maps"] = { TELDRASSIL },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 5465, 7 },	-- Small Spider Leg
			},
			["g"] = {
				i(5482, {	-- Recipe: Kaldorei Spider Kabob
					["timeline"] = { "removed 4.0.3.2000" },
				}),
			},
		}),
		q(11377, {	-- Revenge is Tasty
			["qg"] = 24393,	-- The Rokk <Master of Cooking>
			["coord"] = { 61.6, 16.6, SHATTRATH_CITY },
			["maps"] = { SHATTRATH_CITY, TEROKKAR_FOREST },
			["cost"] = {
				{ "i", 33839, 1 },	-- Kaliri Stew
			},
			["isDaily"] = true,
			-- #if ANYCLASSIC
			["u"] = TBC_PHASE_ONE,
			-- #endif
			["lvl"] = 70,
			["groups"] = {
				crit(1, {	-- Revenge is Tasty
					["achievementID"] = 906,	-- Kickin' It Up a Notch
				}),
				i(33837, {	-- Cooking Pot
					["coord"] = { 68.4, 79.0, TEROKKAR_FOREST },
					["cr"] = 23051,	-- Monstrous Kaliri
					["cost"] = {
						{ "i", 27659, 3 },	-- Warp Burger
						{ "i", 33838, 1 },	-- Giant Kaliri Wing
					},
					["groups"] = {
						i(33839),	-- Kaliri Stew
					},
				}),
				i(33844),	-- Barrel of Fish
				i(33857),	-- Crate of Meat
			},
		}),
		q(8313, {	-- Sharing the Knowledge
			["provider"] = { "o", 180503 },	-- Sandy Cookbook
			["sourceQuest"] = 8307,	-- Desert Recipe
			["requireSkill"] = COOKING,
			-- #if AFTER CATA
			["coord"] = { 43.6, 42.0, SILITHUS },
			-- #else
			["coord"] = { 37.9, 45.3, SILITHUS },
			-- #endif
			["maps"] = { SILITHUS },
			["cost"] = {
				{ "i", 20467, 1 },	-- Torn Recipe Page
			},
			["lvl"] = 40,
			["groups"] = {
				recipe(24801),	-- Smoked Desert Dumplings
			},
		}),
		q(555, {	-- Soothing Turtle Bisque (A)
			["qg"] = 2430,	-- Chef Jessen
			["coord"] = { 51.8, 58.7, HILLSBRAD_FOOTHILLS },
			["timeline"] = { "removed 4.0.3.2000" },
			["maps"] = { HILLSBRAD_FOOTHILLS },
			["requireSkill"] = COOKING,
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 3712, 10 },	-- Turtle Meat
				{ "i", 3713, 1 },	-- Soothing Spices
			},
			["lvl"] = 28,
			["g"] = {
				i(3737, {	-- Recipe: Soothing Turtle Bisque
					["timeline"] = { "removed 4.0.3.2000" },
				}),
				i(3729),	-- Soothing Turtle Bisque
			},
		}),
		q(7321, {	-- Soothing Turtle Bisque (H)
			["qg"] = 2393,	-- Christoph Jeffcoat
			["coord"] = { 62.30, 19.05, HILLSBRAD_FOOTHILLS },
			["timeline"] = { "removed 4.0.3.2000" },
			["maps"] = { HILLSBRAD_FOOTHILLS },
			["requireSkill"] = COOKING,
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 3712, 10 },	-- Turtle Meat
				{ "i", 3713, 1 },	-- Soothing Spices
			},
			["lvl"] = 28,
			["g"] = {
				i(3737, {	-- Recipe: Soothing Turtle Bisque
					["timeline"] = { "removed 4.0.3.2000" },
				}),
				i(3729),	-- Soothing Turtle Bisque
			},
		}),
		q(11381, {	-- Soup for the Soul
			["qg"] = 24393,	-- The Rokk <Master of Cooking>
			["coord"] = { 61.6, 16.6, SHATTRATH_CITY },
			["maps"] = { SHATTRATH_CITY, NAGRAND },
			["cost"] = {
				{ "i", 33850, 1 },	-- Spiritual Soup
			},
			["isDaily"] = true,
			-- #if ANYCLASSIC
			["u"] = TBC_PHASE_ONE,
			-- #endif
			["lvl"] = 70,
			["groups"] = {
				crit(4, {	-- Soup for the Soul
					["achievementID"] = 906,	-- Kickin' It Up a Notch
				}),
				i(33851, {	-- Cooking Pot
					["coord"] = { 26, 58, NAGRAND },
					["cost"] = {
						{ "i", 27658, 4 },	-- Roasted Clefthoof
					},
					["groups"] = {
						i(33850),	-- Spiritual Soup
					},
				}),
				i(33844),	-- Barrel of Fish
				i(33857),	-- Crate of Meat
			},
		}),
		q(11379, {	-- Super Hot Stew
			["qg"] = 24393,	-- The Rokk <Master of Cooking>
			["coord"] = { 61.6, 16.6, SHATTRATH_CITY },
			["maps"] = { SHATTRATH_CITY, BLADES_EDGE_MOUNTAINS },
			["cost"] = {
				{ "i", 33848, 1 },	-- Demon Broiled Surprise
			},
			["isDaily"] = true,
			-- #if ANYCLASSIC
			["u"] = TBC_PHASE_ONE,
			-- #endif
			["lvl"] = 70,
			["groups"] = {
				crit(2, {	-- Super Hot Stew
					["achievementID"] = 906,	-- Kickin' It Up a Notch
				}),
				i(33852, {	-- Cooking Pot
					["coord"] = { 28.0, 82.2, BLADES_EDGE_MOUNTAINS },
					["cr"] = 19973,	-- Abyssal Flamebringer
					["cost"] = {
						{ "i", 31672, 2 },	-- Mok'Nathal Shortribs
						{ "i", 31673, 1 },	-- Crunchy Serpent
					},
					["groups"] = {
						i(33848),	-- Demon Broiled Surprise
					},
				}),
				i(33844),	-- Barrel of Fish
				i(33857),	-- Crate of Meat
			},
		}),
		q(6611, {	-- To Gadgetzan You Go!
			["qg"] = 3399,	-- Zamja
			-- #if AFTER CATA
			["coord"] = { 32.2, 69.4, ORGRIMMAR },
			-- #else
			["coord"] = { 57.4, 53.6, ORGRIMMAR },
			-- #endif
			["requireSkill"] = COOKING,
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		}),
	}),
});