---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(ASHENVALE, {
			n(VENDORS, {
				n(3951, {	-- Bhaldaran Ravenshade <Bowyer>
					["coord"] = { 50.3, 67.2, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(3954, {	-- Dalria <Trade Goods>
					["coord"] = { 35.1, 52.1, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11039),	-- Formula: Enchant Cloak - Minor Agility
						i(11101),	-- Formula: Enchant Bracer - Lesser Strength
					},
				}),
				n(3956, {	-- Harklan Moongrove <Alchemy Supplies>
					["coord"] = { 50.8, 67.0, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6054),	-- Recipe: Shadow Protection Potion
					},
				}),
				n(6731, {	-- Harlown Darkweave <Leatherworking Supplies>
					["coord"] = { 18.2, 60.0, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7361),	-- Pattern: Herbalist's Gloves
					},
				}),
				n(3958, {	-- Lardan <Leatherworking Supplies>
					["coord"] = { 34.8, 49.8, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5973),	-- Pattern: Barbaric Leggings
					},
				}),
				n(3955, {	-- Shandrina <Trade Goods>
					["coord"] = { 49.5, 67.1, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16072),	-- Expert Cookbook
					},
				}),
				n(3960, {	-- Ulthaan <Butcher>
					["coord"] = { 50.0, 66.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(3734),	-- Recipe: Big Bear Steak
						i(5489),	-- Recipe: Lean Venison
					},
				}),
				n(12962, {	-- Wik'Tar <Fish Merchant & Supplies>
					["coord"] = { 11.8, 34.0, ASHENVALE },
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