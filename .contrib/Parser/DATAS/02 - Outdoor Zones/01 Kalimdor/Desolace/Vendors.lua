---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(DESOLACE, {	-- Desolace
			n(-2, {	-- Vendors
				n(12045, {	-- Hae'Wilani <Axecrafter>
					["groups"] = {
						i(12249),	-- Merciless Axe
						i(12250),	-- Midnight Axe
					},
				}),
				n(8150, {	-- Janet Hommers <Food & Drink>
					["groups"] = {
						i(12240),	-- Recipe: Heavy Kodo Stew
						i(12233),	-- Recipe: Mystery Stew
					},
					["coord"] = { 66.2, 6.6, DESOLACE },
				}),
				n(9636, {	-- Mavralyn <Leather Armor & Leatherworking Supplies>
					["groups"] = {
						i(7114),	-- Pattern: Azure Silk Gloves
						i(12232),	-- Recipe: Carrion Surprise
						i(12240),	-- Recipe: Heavy Kodo Stew
					},
				}),
				n(8878, {	-- Muuran <Superior Macecrafter>
					["groups"] = {
						i(10858),	-- Plans: Solid Iron Maul
					},
				}),
				n(12246, {	-- Super-Seller 680
					["groups"] = {
						i(4609),	-- Recipe: Barbecued Buzzard Wing
						i(3734),	-- Recipe: Big Bear Steak
						i(12239),	-- Recipe: Dragonbreath Chili
						i(12229),	-- Recipe: Hot Wolf Ribs
						i(12227),	-- Recipe: Lean Wolf Steak
						i(12233),	-- Recipe: Mystery Stew
					},
				}),
				n(12033, {	-- Wulan <Cooking Supplies>
					["groups"] = {
						i(16072),	-- Expert Cookbook
						i(17062),	-- Recipe: Mithril Head Trout
						i(6369),	-- Recipe: Rockscale Cod
						i(21219),	-- Recipe: Sagefish Delight
						i(21099),	-- Recipe: Smoked Sagefish
					},
				}),
			}),	
		}),
	}),
};