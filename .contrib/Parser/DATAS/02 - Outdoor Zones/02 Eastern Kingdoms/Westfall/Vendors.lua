---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(WESTFALL, {	-- Westfall
			n(-2, {	-- Vendors
				n(844, {	-- Antonio Perelli <Traveling Salesman>
					["groups"] = {
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace	
						i(4794),	-- Wolf Bracers
						i(4795),	-- Bear Bracers						
						i(4796),	-- Owl Bracers
						i(4817),	-- Blessed Claymore	
						i(4818),	-- Executioner's Sword
					},
				}),
				n(1669, {	-- Defias Profiteer <Free Wheeling Merchant>
					["groups"] = {
						i(4788),	-- Agile Boots
						i(4789),	-- Stable Boots
						i(5640),	-- Recipe: Rage Potion
					},
				}),
				n(843, {	-- Gina MacGregor <Trade Supplies>
					["coord"] = { 57.6, 54.1, WESTFALL },
					["groups"] = {
						i(5787),	-- Pattern: Murloc Scale Breastplate
						i(5786),	-- Pattern: Murloc Scale Belt
						i(5771),	-- Pattern: Red Linen Bag
						i(6274),	-- Pattern: Blue Overalls
					},
				}),
				n(4305, {	-- Kriggon Talsone <Fisherman>
					["groups"] = {
						i(5528),	-- Recipe: Clam Chowder
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(16111),	-- Recipe: Spiced Chili Crab
					},
				}),
				n(1668, {	-- William MacGregor <Bowyer>
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
			}),	
		}),
	}),
};