---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(MOONGLADE, {
			n(VENDORS, {
				n(7940, {	-- Darnall <Tailoring Supplies>
					["coord"] = { 51.6, 33.2, MOONGLADE },
					["groups"] = {
						i(14469),	-- Pattern: Runecloth Robe
						i(14472),	-- Pattern: Runecloth Cloak
						i(14488),	-- Pattern: Runecloth Boots
					},
				}),
				n(12023, {	-- Kharedon <Light Armor Merchant>
					["coord"] = { 56.6, 29.8, MOONGLADE },
					["groups"] = {
						i(12254),	-- Well Oiled Cloak
					},
				}),
				n(12022, {	-- Lorelae Wintersong <Trade Supplies>
					["coord"] = { 48.2, 40.1, MOONGLADE },
					["groups"] = {
						i(16243),	-- Formula: Runed Arcanite Rod
						i(16224),	-- Formula: Enchant Cloak - Superior Defense
						i(14483),	-- Pattern: Felcloth Pants
					},
				}),
				n(12029, {	-- Narianna <Bowyer>
					["coord"] = { 53.2, 42.6, MOONGLADE },
					["groups"] = {
						i(11308),	-- Sylvan Shortbow
					},
				}),
			}),
		}),
	}),
};