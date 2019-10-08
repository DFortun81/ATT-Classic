---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(WESTERN_PLAGUELANDS, {	-- Western Plaguelands
			n(-2, {	-- Vendor
				n(10857, {	-- Argent Quartermaster Lightspark <The Argent Dawn>
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
					i(13482),	-- Recipe: Transmute Air to Fire
				}),
				n(12942, {	-- Leonard Porter <Leatherworking Supplies>
					i(15725),	-- Pattern: Wicked Leather Gauntlets
					i(15741),	-- Pattern: Stormshroud Pants
				}),
				n(11278, {	-- Magnus Frostwake
						i(8030),	-- Plans: Ebon Shiv
						i(12823), 	-- Plans: Huge Thorium Battleaxe
						i(12819), 	-- Plans: Ornate Thorium Handaxe
						i(12703),	-- Plans: Storm Gauntlets
						i(13501),	-- Recipe: Major Mana Potion
						i(13485),	-- Recipe: Transmute Water to Air
				}),
			}),
		}),
	}),
};