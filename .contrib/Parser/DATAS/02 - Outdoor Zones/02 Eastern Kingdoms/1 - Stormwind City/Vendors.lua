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
						i(6274),	-- Pattern: Blue Overalls
						i(10325),	-- Pattern: White Wedding Dress
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
						i(4824),	-- Blurred Axe
						i(4825),	-- Callous Axe
						i(4826),	-- Marauder Axe
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
					},
				}),
				n(1304, {	-- Darian Singh <Fireworks Vendor>
					["coord"] = { 29.6, 67.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18649),	-- Schematic: Blue Firework
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
				n(1298, {	-- Frederick Stover <Bow & Arrow Merchant>
					["coord"] = { 50.3, 57.7, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303),   -- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
				}),
				n(1318, {	-- Jessara Cordell <Enchanting Supplies>
					["coord"] = { 43.0, 64.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {						
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						i(22307),	-- Pattern: Enchanted Mageweave Pouch						
					},
				}),
				n(5512, {	-- Kaita Deepforge <Blacksmithing Supplies>
					["coord"] = { 56.3, 17.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {						
						i(12162),	-- Plans: Hardened Iron Shortsword
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
						i(8489),	-- Cat Carrier 'White Kitten'
					},
				}),
				n(1313, {	-- Maria Lumere <Alchemy Supplies>
					["coord"] = { 46.6, 79.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {						
						i(9301),	-- Recipe: Elixir of Shadow Power
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