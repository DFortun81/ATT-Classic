---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SWAMP_OF_SORROWS, {
			n(VENDORS, {
				n(989, {	-- Banalash <Trade Goods>
					["coord"] = { 44.6, 56.8, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11223),	-- Formula: Enchant Bracer - Deflection
						i(12232),	-- Recipe: Carrion Surprise
						i(16111),	-- Recipe: Spiced Chili Crab
					},
				}),
				n(8176, {	-- Gharash <Blacksmithing Supplies>
					["coord"] = { 45.6, 51.6, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7995),	-- Plans: Mithril Scale Bracers
					},
				}),
				n(11874, {	-- Masat T'andr <Superior Leatherworker>
					["coord"] = { 26.5, 31.4, SWAMP_OF_SORROWS },
					["groups"] = {
						i(15726),	-- Pattern: Green Dragonscale Breastplate
						i(12253),	-- Brilliant Red Cloak
						i(12254),	-- Well Oiled Cloak
					},
				}),
				n(8177, {	-- Rartar <Alchemy Supplies>
					["coord"] = { 45.4, 57.0, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(9300),	-- Recipe: Elixir of Demonslaying
					},
				}),
				n(984, {	-- Thralosh <Cloth & Leather Armor Merchant>
					["coord"] = { 45.0, 51.6, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12255),	-- Pale Leggings
						i(12256),	-- Cindercloth Leggings
					},
				}),
			}),
		}),
	}),
};