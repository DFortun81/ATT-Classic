---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SILVERPINE_FOREST, {
			n(VENDORS, {
				n(3552, {	-- Alexandre Lefevre <Leather Armor Merchant>
					["coord"] = { 44.6, 39.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4788),	-- Agile Boots
						i(4789),	-- Stable Boots
					},
				}),
				n(3554, {	-- Andrea Boynton <Clothier>
					["coord"] = { 44.6, 39.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
					},
				}),
				n(3556, {	-- Andrew Hilbert <Trade Goods>
					["coord"] = { 43.2, 40.6, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5787),	-- Pattern: Murloc Scale Breastplate
						i(5786),	-- Pattern: Murloc Scale Belt
						i(6272),	-- Pattern: Blue Linen Robe
						i(5771),	-- Pattern: Red Linen Bag
						i(6892),	-- Recipe: Smoked Bear Meat
					},
				}),
				n(5748, {	-- Killian Sanatha <Fisherman>
					["coord"] = { 33.0, 17.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6368),	-- Recipe: Rainbow Fin Albacoreat
					},
				}),
				n(5758, {	-- Leo Sarn <Enchanting Supplies>
					["coord"] = { 54.0, 82.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(6349),	-- Formula: Enchant 2H Weapon - Lesser Intellect
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(5757, {	-- Lilly <Enchanting Supplies>
					["coord"] = { 43.0, 50.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(6346),	-- Formula: Enchant Chest - Lesser Mana
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(9553, {	-- Nadia Vernon <Bowyer>
					["coord"] = { 45.0, 39.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(3534, {	-- Wallace the Blind <Weaponsmith>
					["coord"] = { 46.4, 86.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace
						i(4817),	-- Blessed Claymore
						i(4818),	-- Executioner's Sword
						i(11304),	-- Fine Longbow
					},
				}),
			}),
		}),
	}),
};