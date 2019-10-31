---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(ASHENVALE, {	-- Ashenvale
			n(-2, {	-- Vendor
				n(3951, {	-- Bhaldaran Ravenshade <Bowyer>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
					["coord"] = { 50.3, 67.2, ASHENVALE },
				}),
				n(3954, {	-- Dalria <Trade Goods>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11039),	-- Formula: Enchant Cloak - Minor Agility
						i(11101),	-- Formula: Enchant Bracer - Lesser Strength
					},
					["coord"] = { 35.1, 52.1, ASHENVALE },
				}),
				n(3956, {	-- Harklan Moongrove <Alchemy Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6054),	-- Recipe: Shadow Protection Potion
					},
					["coord"] = { 50.8, 67.0, ASHENVALE },
				}),
				n(6731, {	-- Harlown Darkweave <Leatherworking Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7361),	-- Pattern: Herbalist's Gloves
					},
				}),
				n(3958, {	-- Lardan <Leatherworking Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5973),	-- Pattern: Barbaric Leggings
					},
					["coord"] = { 34.8, 49.8, ASHENVALE },
					["description"] = "On the 2nd floor of the building.",
				}),
				n(3955, {	-- Shandrina <Trade Goods>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16072),	-- Expert Cookbook
					},
					["coord"] = { 49.5, 67.1, ASHENVALE },
				}),
				n(3960, {	-- Ulthaan <Butcher>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(3734),	-- Recipe: Big Bear Steak
						i(5489),	-- Recipe: Lean Venison
					},
					["coord"] = { 50.0, 66.6, ASHENVALE },
				}),
				n(12962, {	-- Wik'Tar <Fish Merchant & Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
				}),
			}),
		}),
	}),
};