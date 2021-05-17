---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(THE_BARRENS, {
			n(VENDORS, {
				n(3495, {	-- Gagsprocket <Engineering Goods>
					["coord"] = { 62.7, 36.3, THE_BARRENS },
					["groups"] = {
						i(18648),	-- Schematic: Green Firework
					},
				}),
				n(3493, {	-- Grazlix <Armorer & Shieldcrafter>
					["coord"] = { 62.2, 38.4, THE_BARRENS },
					["groups"] = {
						i(4797),	-- Fiery Cloak
						i(4798),	-- Heavy Runed Cloak
						i(4799),	-- Antiquated Cloak
						i(4800),	-- Mighty Chain Pants
						i(4816),	-- Legionnaire's Leggings
						i(4820),	-- Guardian Buckler
						i(4821),	-- Bear Buckler
						i(4822),	-- Owl's Disk
					},
				}),
				-- #if AFTER WRATH
				n(3443, {	-- Grub
					["coord"] = { 55.2, 31.8, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(44977, {	-- Recipe: Dig Rat Stew
							["timeline"] = { "removed 4.3.0.2000" },
						}),
					},
				}),
				-- #endif
				n(3486, {	-- Halija Whitestrider <Clothier>
					["coord"] = { 52.2, 31.8, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
						i(4790),	-- Inferno Cloak
						i(4792),	-- Spirit Cloak
						i(4793),	-- Sylvan Cloak
					},
				}),
				n(3490, {	-- Hula'mahi <Reagents and Herbs>
					["coord"] = { 51.4, 30.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6053),	-- Recipe: Holy Protection Potion
					},
				}),
				n(3683, {	-- Kiknikle <Stylish Clothier>
					["coord"] = { 41.8, 38.6, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
						i(5772),	-- Pattern: Red Woolen Bag
					},
				}),
				n(3497, {	-- Kilxx <Fisherman>
					["coord"] = { 62.8, 38.2, THE_BARRENS },
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(6368),	-- Recipe: Rainbow Fin Albacore
					},
				}),
				n(3658, {	-- Lizzarik <Weapon Dealer>
					["coords"] = {
						{ 52.4, 30.6, THE_BARRENS },
						{ 61.8, 38.2, THE_BARRENS },
					},
					["groups"] = {
						i(4765),	-- Enamelled Broadsword
						i(4766),	-- Feral Blade
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace
					},
				}),
				n(3479, {	-- Nargal Deatheye <Weaponsmith>
					["coord"] = { 51.2, 29.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4765),	-- Enamelled Broadsword
						i(4766),	-- Feral Blade
					},
				}),
				n(3684, {	-- Pizznukle <Leather Armor Merchant>
					["coord"] = { 41.8, 38.6, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4788),	-- Agile Boots
						i(4789),	-- Stable Boots
					},
				}),
				-- #if AFTER WRATH
				n(3392, {	-- Prospector Khazgorm <Explorers' League>
					["coord"] = { 47.8, 85.6, THE_BARRENS },
					["timeline"] = { "removed 4.3.0.2000" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(44977, {	-- Recipe: Dig Rat Stew
							["timeline"] = { "removed 4.3.0.2000" },
						}),
					},
				}),
				-- #endif
				n(3499, {	-- Ranik <Trade Supplies>
					["coord"] = { 61.9, 38.7, THE_BARRENS },
					["groups"] = {
						i(5640),	-- Recipe: Rage Potion
						i(6272),	-- Pattern: Blue Linen Robe
						i(6275),	-- Pattern: Greater Adept's Robe
					},
				}),
				n(8307, {	-- Tarban Hearthgrain <Baker>
					["coord"] = { 55.0, 32.0, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(3482, {	-- Tari'qa <Trade Supplies>
					["coord"] = { 51.6, 30.0, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5486),	-- Recipe: Strider Stew
						i(5488),	-- Recipe: Crispy Lizard Tail
					},
				}),
				n(3488, {	-- Uthrok <Bowyer & Gunsmith>
					["coord"] = { 51.0, 29.0, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(3492, {	-- Vexspindle <Cloth & Leather Armor Merchant>
					["coord"] = { 62.2, 38.4, THE_BARRENS },
					["groups"] = {
						i(4794),	-- Wolf Bracers
						i(4795),	-- Bear Bracers
						i(4796),	-- Owl Bracers
					},
				}),
				n(3682, {	-- Vrang Wildgore <Weaponsmith & Armorcrafter>
					["coord"] = { 43.8, 12.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4765),	-- Enamelled Broadsword
						i(4766),	-- Feral Blade
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace
						i(4797),	-- Fiery Cloak
						i(4798),	-- Heavy Runed Cloak
						i(4799),	-- Antiquated Cloak
						i(4800),	-- Mighty Chain Pants
						i(4816),	-- Legionnaire's Leggings
					},
				}),
				n(5944, {	-- Yonada <Tailoring & Leatherworking Supplies>
					["coord"] = { 45.0, 59.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(6274),	-- Pattern: Blue Overalls
					},
				}),
				n(3489, {	-- Zargh <Butcher>
					["coord"] = { 52.6, 29.8, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3735),	-- Recipe: Hot Lion Chops
					},
				}),
			}),
		}),
	}),
};