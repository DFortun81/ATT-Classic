---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ELWYNN_FOREST, {	-- Elwynn Forest
			n(-2, {	-- Vendors
				n(844, {	-- Antonio Perelli <Traveling Salesman>
					["races"] = ALLIANCE_ONLY,
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
				n(6367, {	-- Donni Anthania <Crazy Cat Lady>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8485),	-- Cat Carrier (Bombay)
						i(8486),	-- Cat Carrier (Cornish Rex)
						i(8487),	-- Cat Carrier (Orange Tabby)
						i(8488),	-- Cat Carrier (Silver Tabby)
					},
				}),
				n(384, {	-- Katie Hunter <Horse Breeder>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 84.0, 65.4, ELWYNN_FOREST },
					["maps"] = { ELWYNN_FOREST },
					["groups"] = {
						i(2414),	-- Pinto Bridle
						i(5655),	-- Chestnut Mare Bridle
						i(5656),	-- Brown Horse Bridle
						i(18776),	-- Swift Palomino
						i(18777),	-- Swift Brown Steed
						i(18778),	-- Swift White Steed
					},
				}),
				n(1250, {	-- Drake Lindgren <General & Trade Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6272),	-- Pattern: Blue Linen Robe
					},
				}),
				n(1198, {	-- Rallic Finn <Bowyer>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
					},
					["coord"] = { 83.3, 66.1, ELWYNN_FOREST },
				}),
				n(66, {	-- Tharynn Bouden <Trade Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6270),	-- Pattern: Blue Linen Vest
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
					},
				}),
			}),	
		}),
	}),
};