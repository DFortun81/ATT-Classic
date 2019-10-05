---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(ASHENVALE, {	-- Ashenvale
			n(-2, {	-- Vendor
				n(3951, {	-- Bhaldaran Ravenshade <Bowyer>
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(3954, {	-- Dalria <Trade Goods>
					["groups"] = {
						i(11039),	-- Formula: Enchant Cloak - Minor Agility
						i(11101),	-- Formula: Enchant Bracer - Lesser Strength
					},
					["coord"] = { 35.1, 52.1, ASHENVALE },
				}),
				n(3956, {	-- Harklan Moongrove <Alchemy Supplies>
					["groups"] = {
						i(6054),	-- Recipe: Shadow Protection Potion
					},
				}),
				n(6731, {	-- Harlown Darkweave <Leatherworking Supplies>
					["groups"] = {
						i(7361),	-- Pattern: Herbalist's Gloves
					},
				}),
				n(3958, {	-- Lardan <Leatherworking Supplies>
					["groups"] = {
						i(5973),	-- Pattern: Barbaric Leggings
					},
					["coord"] = { 34.8, 49.8, ASHENVALE },
					["description"] = "On the 2nd floor of the building.",
				}),
				n(3955, {	-- Shandrina <Trade Goods>
					["groups"] = {
						i(16072),	-- Expert Cookbook
					},
				}),
				n(3960, {	-- Ulthaan <Butcher>
					["groups"] = {
						i(3734),	-- Recipe: Big Bear Steak
						i(5489),	-- Recipe: Lean Venison
					},
				}),
				n(12962, {	-- Wik'Tar <Fish Merchant & Supplies>
					["groups"] = {
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
				}),
			}),
		}),
	}),
};