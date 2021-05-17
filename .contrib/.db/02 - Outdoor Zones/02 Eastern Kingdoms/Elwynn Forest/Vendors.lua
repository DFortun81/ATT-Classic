---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ELWYNN_FOREST, {
			n(VENDORS, {
				n(844, {	-- Antonio Perelli <Traveling Salesman>
					["coords"] = {
						{ 42.6, 66.6, ELWYNN_FOREST },
						{ 68.8, 71.6, ELWYNN_FOREST },
						{ 75.0, 72.4, ELWYNN_FOREST },
					},
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
				n(465, {	-- Barkeep Dobbins <Bartender>
					["coord"] = { 43.8, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						{
							["itemID"] = 1939,	-- Skin of Sweet Rum
							["questID"] = 116,	-- Dry Times
							["races"] = ALLIANCE_ONLY,
						},
					},
				}),
				n(6367, {	-- Donni Anthania <Crazy Cat Lady>
					["coord"] = { 44.2, 53.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8485),	-- Cat Carrier (Bombay)
						i(8486),	-- Cat Carrier (Cornish Rex)
						i(8487),	-- Cat Carrier (Orange Tabby)
						i(8488),	-- Cat Carrier (Silver Tabby)
					},
				}),
				n(384, {	-- Katie Hunter <Horse Breeder>
					["coord"] = { 84.0, 65.4, ELWYNN_FOREST },
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
				n(1250, {	-- Drake Lindgren <General & Trade Supplies>
					["coord"] = { 83.2, 66.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6272),	-- Pattern: Blue Linen Robe
					},
				}),
				n(1198, {	-- Rallic Finn <Bowyer>
					["coord"] = { 83.3, 66.1, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
					},
				}),
				n(66, {	-- Tharynn Bouden <Trade Supplies>
					["coord"] = { 41.8, 67.0, ELWYNN_FOREST },
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