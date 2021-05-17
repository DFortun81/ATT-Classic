---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DUSTWALLOW_MARSH, {
			n(VENDORS, {
				n(13476, {	-- Balai Lok'Wein <Potions, Scrolls and Reagents>
					["coord"] = { 36.4, 30.4, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						{
							["itemID"] = 16084,	-- Expert First Aid - Under Wraps
							--["spellID"] = 7924,	-- Expert First Aid
							["requireSkill"] = FIRST_AID,
						},
						{
							["itemID"] = 16112,	-- Manual: Heavy Silk Bandage
							["spellID"] = 7929,	-- Heavy Silk Bandage
							["requireSkill"] = FIRST_AID,
						},
						{
							["itemID"] = 16113,	-- Manual: Mageweave Bandage
							["spellID"] = 10840,	-- Mageweave Bandage
							["requireSkill"] = FIRST_AID,
						},
					},
				}),
				n(6567, {	-- Ghok'kah <Tailoring Supplies>
					["coord"] = { 35.2, 30.8, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4355),	-- Pattern: Icy Cloak
					},
				}),
				n(4885, {	-- Gregor MacVince <Horse Breeder>
					["coord"] = { 65.2, 51.4, DUSTWALLOW_MARSH, },
					["races"] = ALLIANCE_ONLY,
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
					["coord"] = { 66.4, 51.4, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5789),	-- Pattern: Murloc Scale Bracers
						i(12233),	-- Recipe: Mystery Stew
						i(12228),	-- Recipe: Roast Raptor
						i(12239),	-- Recipe: Dragonbreath Chili
					},
				}),
				n(4892, {	-- Jensen Farran <Bowyer>
					["coord"] = { 67.9, 49.9, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(4888, {	-- Marie Holdston <Weaponsmith>
					["coord"] = { 64.6, 50.0, DUSTWALLOW_MARSH, },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12248),	-- Daring Dirk
						i(12250),	-- Midnight Axe
					},
				}),
				n(12919, {	-- Nat Pagle
					["sourceQuest"] = 8227,	-- Nat's Measuring Tape
					["coord"] = { 58.6, 60.1, DUSTWALLOW_MARSH },
					["description"] = "He will only sell you the Mudskunk Lures once you have turned in Nat's Measuring Tape.",
					["groups"] = {
						i(19974),	-- Mudskunk Lure
					},
				}),
				n(4879, {	-- Ogg'marr <Butcher>
					["coord"] = { 36.6, 31.0, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12228),	-- Recipe: Roast Raptor
						i(12232),	-- Recipe: Carrion Surprise
						i(12239),	-- Recipe: Dragonbreath Chili
						i(20075),	-- Recipe: Heavy Crocolisk Stew
					},
				}),
				n(4890, {	-- Piter Verance <Weaponsmith & Armorer>
					["coord"] = { 67.4, 47.8, DUSTWALLOW_MARSH, },
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
					["coord"] = { 35.6, 30.2, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(4884, {	-- Zulrg <Weaponsmith>
					["coord"] = { 36.2, 31.6, DUSTWALLOW_MARSH, },
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