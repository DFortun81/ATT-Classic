---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(SILVERPINE_FOREST, {	-- Silverpine Forest
			n(-2, {	-- Vendors
				n(3552, {	-- Alexandre Lefevre <Leather Armor Merchant>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4788),	-- Agile Boots
						i(4789),	-- Stable Boots
					},
				}),
				n(3554, {	-- Andrea Boynton <Clothier>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
					},
				}),
				n(3556, {	-- Andrew Hilbert <Trade Goods>
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
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6368),	-- Recipe: Rainbow Fin Albacoreat
					},
				}),
				n(5758, {	-- Leo Sarn <Enchanting Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {						
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						i(6349),	-- Formula: Enchant 2H Weapon - Lesser Intellect
						i(22307),	-- Pattern: Enchanted Mageweave Pouch						
					},
				}),
				n(5757, {	-- Lilly <Enchanting Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {						
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						i(6346),	-- Formula: Enchant Chest - Lesser Mana
						i(22307),	-- Pattern: Enchanted Mageweave Pouch						
					},
				}),
				n(9553, {	-- Nadia Vernon <Bowyer>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(3534, {	-- Wallace the Blind <Weaponsmith>
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