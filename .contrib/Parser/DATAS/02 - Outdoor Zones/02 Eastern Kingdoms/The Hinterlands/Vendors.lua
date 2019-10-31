---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(THE_HINTERLANDS, {	-- The Hinterlands
			n(-2, {	-- Vendor
				n(12958, {	-- Gigget Zipcoil <Trade Supplies>
					i(15735),	-- Pattern: Ironfeather Shoulders
				}),
				n(8161, {	-- Harggan <Blacksmithing Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7995),	-- Plans: Mithril Scale Bracers
					},
					["coord"] = { 13.4, 44.1, THE_HINTERLANDS },
				}),
				n(8160, {	-- Nioma <Leatherworking Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8409),	-- Pattern: Nightscape Shoulders
					},
					["coord"] = { 13.3, 43.4, THE_HINTERLANDS },
				}),
				n(14738, {	-- Otho Moji'ko <Cooking Supplier>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(2688, {	-- Ruppo Zipcoil <Engineering Supplies>
					i(10609),	-- Schematic: Mithril Mechanical Dragonling
				}),
				n(4782, {	-- Truk Wildbeard <Bartender>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak
					},
					["coord"] = { 14.4, 42.3, THE_HINTERLANDS },
				}),
			}),
		}),
	}),
};