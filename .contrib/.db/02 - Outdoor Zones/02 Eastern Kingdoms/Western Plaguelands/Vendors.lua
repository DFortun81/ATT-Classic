---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(WESTERN_PLAGUELANDS, {
			n(VENDORS, {
				n(11056, {	-- Alchemist Arbington
					["coord"] = { 42.6, 83.8, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13320),	-- Arcane Quickener
						i(13370),	-- Vitreous Focuser
					},
				}),
				n(10857, {	-- Argent Quartermaster Lightspark <The Argent Dawn>
					["coord"] = { 42.8, 83.7, WESTERN_PLAGUELANDS },
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
						i(19446),	-- Formula: Enchant Bracer - Mana Regeneration
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
				n(10667, {	-- Chromie
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["groups"] = bubbleDown({ ["u"] = PHASE_SIX_CLASSICERA }, {
						i(184937, {	-- Chronoboon Displacer
							["sourceQuest"] = 4972,	-- Counting Out Time
							["f"] = 55,	-- Consumable
							["groups"] = {
								i(184938, {	-- Supercharged Chronoboon Displacer
									["f"] = 55,	-- Consumable
								}),
							},
						}),
					}),
				}),
				n(12942, {	-- Leonard Porter <Leatherworking Supplies>
					["coord"] = { 43.0, 84.3, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(15725),	-- Pattern: Wicked Leather Gauntlets
						i(15741),	-- Pattern: Stormshroud Pants
					},
				}),
				n(11278, {	-- Magnus Frostwake
					["coord"] = { 68.0, 77.6, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13544, 1 },	-- Spectral Essence
					},
					["groups"] = {
						i(8030),	-- Plans: Ebon Shiv
						i(12823),	-- Plans: Huge Thorium Battleaxe
						i(12819),	-- Plans: Ornate Thorium Handaxe
						i(12703),	-- Plans: Storm Gauntlets
						i(13501),	-- Recipe: Major Mana Potion
						i(13485),	-- Recipe: Transmute Water to Air
					},
				}),
			}),
		}),
	}),
};