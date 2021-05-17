---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(EASTERN_PLAGUELANDS, {
			n(VENDORS, {
				n(12941, {	-- Jase Farlane <Trade Supplies>
					["coord"] = { 80.6, 57.6, EASTERN_PLAGUELANDS },
					["groups"] = {
						i(15756),	-- Pattern: Runic Leather Headband
					},
				}),
				n(11536, {	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["groups"] = {
						{
							["itemID"] = 22014,	-- Hallowed Brazier
							["questID"] = 8961,	-- Three Kings of Flame
							["minReputation"] = { 529, HONORED },	-- Argent Dawn
							["cost"] = {
								{ "g", 1500000 },	-- 150g
							},
						},
						i(18182, {	-- Chromatic Mantle of the Dawn
							["sourceQuests"] = {
								5517,	-- Chromatic Mantle of the Dawn
								5521,	-- Chromatic Mantle of the Dawn
								5524,	-- Chromatic Mantle of the Dawn
							},
						}),
						i(18171, {	-- Arcane Mantle of the Dawn
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18169, {	-- Flame Mantle of the Dawn
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18170, {	-- Frost Mantle of the Dawn
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18172, {	-- Nature Mantle of the Dawn
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18173, {	-- Shadow Mantle of the Dawn
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(19447), 	-- Formula: Enchant Bracer - Healing
						i(19446), 	-- Formula: Enchant Bracer - Mana Regeneration
						i(19442), 	-- Formula: Powerful Anti-Venom
						i(19216), 	-- Pattern: Argent Boots
						i(19217), 	-- Pattern: Argent Shoulders
						i(19328), 	-- Pattern: Dawn Treaders
						i(19329), 	-- Pattern: Golden Mantle of the Dawn
						i(19203), 	-- Plans: Girdle of the Dawn
						i(19205), 	-- Plans: Gloves of the Dawn
						i(13482),	-- Recipe: Transmute Air to Fire
					},
				}),
			}),
		}),
	}),
};