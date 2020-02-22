---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DESOLACE, {	-- Desolace
			n(0, {	-- Zone Drops
				i(2620, {	-- Augural Shroud
					["cr"] = 4684,	-- Nether Sorceress
				}),
				i(6082, {	-- Deepstrider Tumor
					["questID"] = 1383,	-- Nothing But The Truth
					["races"] = HORDE_ONLY,
					["crs"] = {
						4686,	-- Deepstrider Giant
						4687,	-- Deepstrider Searcher
					},
				}),
			}),
		}),
	}),
};