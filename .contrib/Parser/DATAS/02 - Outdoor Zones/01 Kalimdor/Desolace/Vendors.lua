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
						i(12233),	-- Recipe: Mystery Stew
						i(12240),	-- Recipe: Heavy Kodo Stew
					},
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
				n(12033, {	-- Wulan <Cooking Supplies>
					["groups"] = {
						i(6369),	-- Recipe: Rockscale Cod
						i(16072),	-- Expert Cookbook
						i(17062),	-- Recipe: Mithril Head Trout
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
			}),	
		}),
	}),
};