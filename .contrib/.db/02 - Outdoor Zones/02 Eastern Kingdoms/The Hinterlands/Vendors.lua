---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(THE_HINTERLANDS, {
			n(VENDORS, {
				n(12958, {	-- Gigget Zipcoil <Trade Supplies>
					["coord"] = { 34.6, 38.6, THE_HINTERLANDS },
					["groups"] = {
						i(15735),	-- Pattern: Ironfeather Shoulders
					},
				}),
				n(8161, {	-- Harggan <Blacksmithing Supplies>
					["coord"] = { 13.4, 44.1, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7995),	-- Plans: Mithril Scale Bracers
					},
				}),
				n(8160, {	-- Nioma <Leatherworking Supplies>
					["coord"] = { 13.3, 43.4, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8409),	-- Pattern: Nightscape Shoulders
					},
				}),
				n(14738, {	-- Otho Moji'ko <Cooking Supplier>
					["coord"] = { 79.2, 79.0, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(2688, {	-- Ruppo Zipcoil <Engineering Supplies>
					["coord"] = { 34.2, 37.8, THE_HINTERLANDS },
					["groups"] = {
						i(10609),	-- Schematic: Mithril Mechanical Dragonling
					},
				}),
				n(4782, {	-- Truk Wildbeard <Bartender>
					["coord"] = { 14.4, 42.3, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak
					},
				}),
			}),
		}),
	}),
};