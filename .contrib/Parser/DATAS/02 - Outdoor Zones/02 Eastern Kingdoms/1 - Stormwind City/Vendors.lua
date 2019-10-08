---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(STORMWIND_CITY, {	-- Stormwind City
			n(-2, {	-- Vendors
				n(1347, {	-- Alexandra Bolero <Tailoring Supplies>
					["groups"] = {
						i(6274),	-- Pattern: Blue Overalls
						i(10325),	-- Pattern: White Wedding Dress
					},
				}),
				n(5494, {	-- Catherine Leland <Fishing Supplier>
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(6368),	-- Recipe: Rainbow Fin Albacore						
					},
					["coord"] = { 45.8, 58.5, STORMWIND_CITY },
				}),
				n(1307, {	-- Charys Yserian <Arcane Trinkets Vendor>
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
					["groups"] = {
						i(18649),	-- Schematic: Blue Firework
					},
				}),
				n(5483, {	-- Erika Tate <Cooking Supplier>
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(1298, {	-- Frederick Stover <Bow & Arrow Merchant>
					["groups"] = {
						i(11303),   -- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
					["coord"] = { 50.3, 57.7, STORMWIND_CITY },
				}),
				n(1318, {	-- Jessara Cordell <Enchanting Supplies>
					["groups"] = {						
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						i(22307),	-- Pattern: Enchanted Mageweave Pouch						
					},
				}),
				n(5512, {	-- Kaita Deepforge <Blacksmithing Supplies>
					["groups"] = {						
						i(12162),	-- Plans: Hardened Iron Shortsword
					},
					["coord"] = { 56.3, 17.2, STORMWIND_CITY },
				}),
				n(340, {	-- Kendor Kabonka <Master of Cooking Recipes>
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
					["groups"] = {						
						i(8489),	-- Cat Carrier 'White Kitten'
					},
				}),
				n(1313, {	-- Maria Lumere <Alchemy Supplies>
					["groups"] = {						
						i(9301),	-- Recipe: Elixir of Shadow Power
					},
				}),
			}),	
		}),
	}),
};