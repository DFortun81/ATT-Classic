---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(THUNDER_BLUFF, {	-- Thunder Bluff
			n(-2, {	-- Vendors
				n(3019, {	-- Delgo Ragetotem <Axe Merchant>
					["groups"] = {
						i(12249),	-- Merciless Axe
					},
				}),
				n(3015, {	-- Kuna Thunderhorn <Bowyer & Fletching Goods>
					["groups"] = {
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
				}),
				n(3005, {	-- Mahu <Leatherworking & Tailoring Supplies>
					["groups"] = {
						i(10325),	-- Pattern: White Wedding Dress
						i(10311),	-- Pattern: Orange Martial Shirt
						i(5772),	-- Pattern: Red Woolen Bag
						i(5771),	-- Pattern: Red Linen Bag
					},
				}),
				n(3027, {	-- Naal Mistrunner <Cooking Supplier>
					["groups"] = {
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(3012, {	-- Nata Dawnstrider <Enchanting Supplies>
					["groups"] = {
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						i(6349),	-- Formula: Enchant 2H Weapon - Lesser Intellect
						i(6377),	-- Formula: Enchant Boots - Minor Agility
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(3029, {	-- Sewa Mistrunner <Fishing Supplier>
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6330),	-- Recipe: Bristle Whisker Catfish
					},
				}),
			}),	
		}),
	}),
};