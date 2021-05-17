---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DESOLACE, {
			n(VENDORS, {
				n(12045, {	-- Hae'Wilani <Axecrafter>
					["coord"] = { 25.8, 71.0, DESOLACE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12249),	-- Merciless Axe
						i(12250),	-- Midnight Axe
					},
				}),
				n(8150, {	-- Janet Hommers <Food & Drink>
					["coord"] = { 66.2, 6.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12240),	-- Recipe: Heavy Kodo Stew
						i(12233),	-- Recipe: Mystery Stew
					},
				}),
				n(9636, {	-- Kireena <Trade Goods>
					["coord"] = { 51.0, 53.5, DESOLACE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(20973, {	-- Design: Blazing Citrine Ring
							["u"] = TBC_PHASE_ONE,
						}),
						i(7114),	-- Pattern: Azure Silk Gloves
						i(12232),	-- Recipe: Carrion Surprise
						i(12240),	-- Recipe: Heavy Kodo Stew
					},
				}),
				n(9636, {	-- Mavralyn <Leather Armor & Leatherworking Supplies>
					["coord"] = { 37.0, 41.2, DESOLACE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7114),	-- Pattern: Azure Silk Gloves
						i(12232),	-- Recipe: Carrion Surprise
						i(12240),	-- Recipe: Heavy Kodo Stew
					},
				}),
				n(8878, {	-- Muuran <Superior Macecrafter>
					["coord"] = { 55.6, 56.6, DESOLACE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10858),	-- Plans: Solid Iron Maul
					},
				}),
				n(12245, {	-- Vendor-Tron 1000
					["coord"] = { 60.2, 38.2, DESOLACE },
					["groups"] = {
						i(3735),  -- Recipe: Hot Lion Chops
						i(5489),  -- Recipe: Lean Venison
						i(5643),  -- Recipe: Great Rage Potion
						i(5973),  -- Pattern: Barbaric Leggings
						i(7613),  -- Pattern: Green Leather Armor
						i(12228),  -- Recipe: Roast Raptor
						i(12231),  -- Recipe: Jungle Stew
						i(12232),  -- Recipe: Carrion Surprise
						i(12240),  -- Recipe: Heavy Kodo Stew
						i(14635),  -- Pattern: Gem-studded Leather Belt
					},
				}),
				n(12246, {	-- Super-Seller 680
					["coord"] = { 60.0, 38.8, DESOLACE },
					["groups"] = {
						i(3734),  -- Recipe: Big Bear Steak
						i(4609),  -- Recipe: Barbecued Buzzard Wing
						i(7087),  -- Pattern: Crimson Silk Cloak
						i(7561),  -- Schematic: Goblin Jumper Cables
						i(12227),  -- Recipe: Lean Wolf Steak
						i(12229),  -- Recipe: Hot Wolf Ribs
						i(12233),  -- Recipe: Mystery Stew
						i(12239),  -- Recipe: Dragonbreath Chili
						i(13310),  -- Schematic: Accurate Scope
					},
				}),
				n(12033, {	-- Wulan <Cooking Supplies>
					["coord"] = { 26.2, 69.8, DESOLACE },
					["races"] = HORDE_ONLY,
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