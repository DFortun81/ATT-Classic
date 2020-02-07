---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(TIRISFAL_GLADES, {	-- Tirisfal Glades
			n(-2, {	-- Vendor
				n(2118, {	-- Abigail Shiel <Trade Supplies>
					["coord"] = { 61.0, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12226),	-- Recipe: Crispy Bat Wing
					},
				}),
				n(10856, {	-- Argent Quartermaster Hasana <The Argent Dawn>
					i(19447, {	-- Formula: Enchant Bracer - Healing
						["u"] = 3,	-- Added in later phase
					}),
					i(19446, {	-- Formula: Enchant Bracer - Mana Regeneration
						["u"] = 3,	-- Added in later phase
					}),
					i(19442, {	-- Formula: Powerful Anti-Venom
						["u"] = 3,	-- Added in later phase
					}),
					i(19216, {	-- Pattern: Argent Boots
						["u"] = 3,	-- Added in later phase
					}),
					i(19217, {	-- Pattern: Argent Shoulders
						["u"] = 3,	-- Added in later phase
					}),
					i(19328, {	-- Pattern: Dawn Treaders
						["u"] = 3,	-- Added in later phase
					}),
					i(19329, {	-- Pattern: Golden Mantle of the Dawn
						["u"] = 3,	-- Added in later phase
					}),
					i(19203, {	-- Plans: Girdle of the Dawn
						["u"] = 3,	-- Added in later phase
					}),
					i(19205, {	-- Plans: Gloves of the Dawn
						["u"] = 3,	-- Added in later phase
					}),
					i(13482),	-- Recipe: Transmute Air to Fire
				}),
				n(3550, {	-- Martine Tramblay <Fishing Supplies>
					["coord"] = { 65.8, 59.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6326),	-- Recipe: Slitherskin Mackere
					},
				}),
				n(12943, {	-- Werg Thickblade <Leatherworking Supplies>
					["coord"] = { 83.2, 69.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(15725),	-- Pattern: Wicked Leather Gauntlets
						i(15741),	-- Pattern: Stormshroud Pants
					},
				}),
				n(4731, {	-- Zachariah Post <Undead Horse Merchant>
					["coord"] = { 59.8, 52.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(13331),	-- Red Skeletal Horse
						i(13332),	-- Blue Skeletal Horse
						i(13333),	-- Brown Skeletal Horse
						i(13334),	-- Green Skeletal Warhorse
						i(18791),	-- Purple Skeletal Warhorse
					},
				}),
			}),
		}),
	}),
};