---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(STORMWIND_CITY, {
			n(VENDORS, {
				n(1347, {	-- Alexandra Bolero <Tailoring Supplies>
					["coord"] = { 43.3, 74.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6274, {	-- Pattern: Blue Overalls
							["isLimited"] = true,
						}),
						i(10325, {	-- Pattern: White Wedding Dress
							["isLimited"] = true,
						}),
					},
				}),
				n(5494, {	-- Catherine Leland <Fishing Supplier>
					["coord"] = { 45.8, 58.5, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(6368),	-- Recipe: Rainbow Fin Albacore
					},
				}),
				n(1307, {	-- Charys Yserian <Arcane Trinkets Vendor>
					["coord"] = { 32.4, 79.9, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4824, {	-- Blurred Axe
							["isLimited"] = true,
						}),
						i(4825, {	-- Callous Axe
							["isLimited"] = true,
						}),
						i(4826, {	-- Marauder Axe
							["isLimited"] = true,
						}),
						i(4827, {	-- Wizard's Belt
							["isLimited"] = true,
						}),
						i(4828, {	-- Nightwind Belt
							["isLimited"] = true,
						}),
						i(4829, {	-- Dreamer's Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(1304, {	-- Darian Singh <Fireworks Vendor>
					["coord"] = { 29.6, 67.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18649, {	-- Schematic: Blue Firework
							["isLimited"] = true,
						}),
					},
				}),
				n(1286, {	-- Edna Mullby <Trade Supplies>
					["coord"] = { 58.2, 60.5, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20856, {	-- Design: Heavy Golden Necklace of Battle
							["isLimited"] = true,
							["u"] = TBC_PHASE_ONE,
						}),
					},
				}),
				n(5483, {	-- Erika Tate <Cooking Supplier>
					["coord"] = { 76.0, 36.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(1303, {	-- Felicia Gump <Herbalism Supplier>
					["coord"] = { 64.2, 60.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2665),	-- Stormwind Seasoning Herbs
					},
				}),
				n(1298, {	-- Frederick Stover <Bow & Arrow Merchant>
					["coord"] = { 50.3, 57.7, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303, {	-- Fine Shortbow
							["isLimited"] = true,
						}),
						i(11307, {	-- Massive Longbow
							["isLimited"] = true,
						}),
						i(11306, {	-- Sturdy Recurve
							["isLimited"] = true,
						}),
					},
				}),
				n(1318, {	-- Jessara Cordell <Enchanting Supplies>
					["coord"] = { 43.0, 64.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						-- #if NOT CLASSIC
						i(20753),	-- Formula: Lesser Wizard Oil
						i(20752),	-- Formula: Minor Mana Oil
						i(20758),	-- Formula: Minor Wizard Oil
						-- #endif
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(5512, {	-- Kaita Deepforge <Blacksmithing Supplies>
					["coord"] = { 56.3, 17.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12162, {	-- Plans: Hardened Iron Shortsword
							["isLimited"] = true,
						}),
					},
				}),
				n(340, {	-- Kendor Kabonka <Master of Cooking Recipes>
					["coord"] = { 74.6, 36.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(728),		-- Recipe: Westfall Stew
						i(2697),	-- Recipe: Goretusk Liver Pie
						i(2698),	-- Recipe: Cooked Crab Claw
						i(2699),	-- Recipe: Redridge Goulash
						i(2700),	-- Recipe: Succulent Pork Ribs
						i(2701),	-- Recipe: Seasoned Wolf Kabob
						i(2889),	-- Recipe: Beer Basted Boar Ribs
						i(3678),	-- Recipe: Crocolisk Steak
						i(3679),	-- Recipe: Blood Sausage
						i(3680),	-- Recipe: Murloc Fin Soup
						i(3681),	-- Recipe: Crocolisk Gumbo
						i(3682),	-- Recipe: Curiously Tasty Omelet
						i(3683),	-- Recipe: Gooey Spider Cake
					},
				}),
				n(8666, {	-- Lil Timmy <Boy with kittens>
					["coord"] = { 64.0, 38.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8489, {	-- Cat Carrier 'White Kitten'
							["isLimited"] = true,
						}),
					},
				}),
				n(1313, {	-- Maria Lumere <Alchemy Supplies>
					["coord"] = { 46.6, 79.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(9301, {	-- Recipe: Elixir of Shadow Power
							["isLimited"] = true,
						}),
					},
				}),
				n(277, {	-- Roberto Pupellyverbos <Merlot Connoisseur>
					["coord"] = { 52.0, 67.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						{
							["itemID"] = 1941,	-- Cask of Merlot
							["questID"] = 116,	-- Dry Times
							["races"] = ALLIANCE_ONLY,
						},
					},
				}),
			}),
		}),
	}),
};