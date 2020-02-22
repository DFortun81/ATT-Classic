---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DUSTWALLOW_MARSH, {	-- Dustwallow Marsh
			n(-2, {	-- Vendors
				n(13476, {	-- Balai Lok'Wein <Potions, Scrolls and Reagents>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16084),	-- Expert First Aid - Under Wraps
						i(16112),	-- Manual: Heavy Silk Bandage
						i(16113),	-- Manual: Mageweave Bandage
					},
				}),
				n(6567, {	-- Ghok'kah <Tailoring Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4355),	-- Pattern: Icy Cloak
					},
				}),
				n(4885, {	-- Gregor MacVince <Horse Breeder>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 65.2, 51.4, DUSTWALLOW_MARSH, },
					["maps"] = { DUSTWALLOW_MARSH, },
					["groups"] = {
						i(2414),	-- Pinto Bridle
						i(5655),	-- Chestnut Mare Bridle
						i(5656),	-- Brown Horse Bridle
						i(18776),	-- Swift Palomino
						i(18777),	-- Swift Brown Steed
						i(18778),	-- Swift White Steed
					},
				}),
				n(4897, {	-- Helenia Olden <Trade Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5789),	-- Pattern: Murloc Scale Bracers
						i(12233),	-- Recipe: Mystery Stew
						i(12228),	-- Recipe: Roast Raptor
						i(12239),	-- Recipe: Dragonbreath Chili
					},
					["coord"] = { 66.4, 51.4, DUSTWALLOW_MARSH },
				}),
				n(4892, {	-- Jensen Farran <Bowyer>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
					["coord"] = { 67.9, 49.9, DUSTWALLOW_MARSH },
				}),
				n(4888, {	-- Marie Holdston <Weaponsmith>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12248),	-- Daring Dirk
						i(12250),	-- Midnight Axe
					},
				}),
				n(4879, {	-- Ogg'marr <Butcher>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12228),	-- Recipe: Roast Raptor
						i(12232),	-- Recipe: Carrion Surprise
						i(12239),	-- Recipe: Dragonbreath Chili
						i(20075),	-- Recipe: Heavy Crocolisk Stew
					},
				}),
				n(4890, {	-- Piter Verance <Weaponsmith & Armorer>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4817),	-- Blessed Claymore
						i(4818),	-- Executioner's Sword
						i(4824),	-- Blurred Axe
						i(4825),	-- Callous Axe
						i(4826),	-- Marauder Axe
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
					},
				}),
				n(9552, {	-- Zanara <Bowyer>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(4884, {	-- Zulrg <Weaponsmith>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12250),	-- Midnight Axe
						i(12251),	-- Big Stick
					},
				}),
			}),	
		}),
	}),
};