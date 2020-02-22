---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(LOCH_MODAN, {	-- Loch Modan
			n(-2, {	-- Vendors
				n(1214, {	-- Aldren Cordon <Clothier>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
					},
					["coord"] = { 64.8, 66.0, LOCH_MODAN },
				}),
				n(1687, {	-- Cliff Hadin <Bowyer>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(1465, {	-- Drav Roughcut <Tradesman>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6892),	-- Recipe: Smoked Bear Meat
					},
					["coord"] = { 35.6, 49.2, LOCH_MODAN },
					["description"] = "Drav Roughcut is located inside of the Stoutlager Inn.",
				}),
				n(954, {	-- Kat Sampson <Leather Armor Merchant>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4788),	-- Agile Boots
						i(4789),	-- Stable Boots
					},
				}),
				n(1684, {	-- Khara Deepwater <Fishing Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6329),	-- Recipe: Loch Frenzy Delight
					},
				}),
				n(167, {	-- Morhan Coppertongue <Metalsmith>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4765),	-- Enamelled Broadsword						
						i(4766),	-- Feral Blade
					},
					["coord"] = { 34.0, 46.6, LOCH_MODAN },
				}),
				n(222, {	-- Nillen Andemar <Macecrafter>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace
					},
				}),
				n(1474, {	-- Rann Flamespinner <Tailoring Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(6275),	-- Pattern: Greater Adept's Robe
					},
					["coord"] = { 36.0, 45.9, LOCH_MODAN },
				}),
				n(1685, {	-- Xandar Goodbeard <General Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5640),	-- Recipe: Rage Potion
						i(6053),	-- Recipe: Holy Protection Potion
					},
				}),
			}),	
		}),
	}),
};