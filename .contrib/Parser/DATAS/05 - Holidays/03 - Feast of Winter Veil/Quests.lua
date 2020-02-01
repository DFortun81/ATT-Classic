--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = 
{
	n(-61, {	-- Feast of Winter Veil
		["g"] = {
			n(-17, {	-- Quests
				q(6984, { -- A Smokywood Pastures' Thank You! (Horde)
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 13418, -- Kaymard Copperpinch <Smokywood Pastures>
					["g"] = {
						i(17726), -- Smokywood Pastures Special Gift
					},
				}),
				q(7045, { -- A Smokywood Pastures' Thank You! (Alliance)
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 13433, -- Wulmort Jinglepocket <Smokywood Pastures>
					["g"] = {
						i(17726, {	-- Smokywood Pastures Special Gift
							i(17725),	-- Formula: Enchant Weapon - Winter's Might							
							i(17722),	-- Pattern: Gloves of the Greatfather
							i(17706),	-- Plans: Edge of Winter
							i(17709),	-- Recipe: Elixir of Frost Power
							i(17720),	-- Schematic: Snowmaster 9000
						}),
					},
				}),
				q(6961, { -- Greatfather Winter is Here!
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 13418, -- Kaymard Copperpinch <Smokywood Pastures>
					["altQuests"] = { 
						7021,  -- Greatfather Winter is Here! 
						7124,  -- Greatfather Winter is Here! 
					},
				}),
				q(7021, { -- Greatfather Winter is Here!
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 13431, -- Whulwert Copperpinch <Smokywood Pastures>
					["altQuests"] = { 
						6961,  -- Greatfather Winter is Here! 
						7124,  -- Greatfather Winter is Here! 
					},
				}),
				q(7024, { -- Greatfather Winter is Here!
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 13418, -- Kaymard Copperpinch <Smokywood Pastures>
					["altQuests"] = { 
						6961,  -- Greatfather Winter is Here! 
						7021,  -- Greatfather Winter is Here! 
					},
				}),
				q(7022, { -- Greatfather Winter is Here!
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 13433, -- Wulmort Jinglepocket <Smokywood Pastures>
				}),
				q(7023, { -- Greatfather Winter is Here!
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 13435, -- Khole Jinglepocket <Smokywood Pastures>
				}),
				q(8746, { -- Metzen the Reindeer (Horde)
					["lvl"] = 40,
					["races"] = HORDE_ONLY,
					["qg"] = 13418, -- Kaymard Copperpinch <Smokywood Pastures>
					["g"] = {
						i(21213),  -- Preserved Holly
					},
				}),
				q(8762, { -- Metzen the Reindeer (Alliance)
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 13433, -- Wulmort Jinglepocket <Smokywood Pastures>
					["g"] = {
						i(21213),  -- Preserved Holly
					},
				}),
				q(6963, { -- Stolen Winter Veil Treats (Horde)
					["qg"] = 13418, -- Kaymard Copperpinch <Smokywood Pastures>
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(7042, { -- Stolen Winter Veil Treats (Alliance)
					["qg"] = 13433, -- Wulmort Jinglepocket <Smokywood Pastures>
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(7061, { -- The Feast of Winter Veil
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 13417, -- Sagorne Creststrider <Shaman Trainer>
				}),
				q(7063, { -- The Feast of Winter Veil
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2916, -- Historian Karnik
				}),
				q(8763, { -- The Hero of the Day
					["lvl"] = 40,
					["requireSkill"] = 185,	-- Cooking
					["description"] = 'Requires Cooking Skill Level 300',
					["races"] = ALLIANCE_ONLY,
					["qg"] = 13433, -- Wulmort Jinglepocket <Smokywood Pastures>
					["g"] = {
						i(21213),  -- Preserved Holly
					},
				}),
				q(6964, { -- The Reason for the Season (Horde)
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 1365, -- Goli Krumn
				}),
				q(7062, { -- The Reason for the Season (Alliance)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1365, -- Goli Krumn
				}),
				q(6962, { -- Treats for Greatfather Winter (Horde)
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 13445, -- Great-father Winter
					["g"] = {
						i(17727), -- Smokywood Pastures Special Gift
					},
				}),
				q(7025, { -- Treats for Greatfather Winter (Alliance)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 13444, -- Greatfather Winter
					["g"] = {
						i(17727, {	-- Smokywood Pastures Special Gift
							i(17725),	-- Formula: Enchant Weapon - Winter's Might							
							i(17722),	-- Pattern: Gloves of the Greatfather
							i(17706),	-- Plans: Edge of Winter
							i(17709),	-- Recipe: Elixir of Frost Power
							i(17720),	-- Schematic: Snowmaster 9000
						}),
					},
				}),
				{ -- You're a Mean One...
					["qg"] = 13636, -- Strange Snowman
					["allianceQuestID"] = 7043,	-- You're a Mean One... (Alliance)
					["hordeQuestID"] = 6983,	-- You're a Mean One... (Horde)
					["sourceQuests"] = {
						7042,	-- Stolen Winter Veil Treats (Alliance)
						6963, -- Stolen Winter Veil Treats (Horde)
					},
					["coord"] = { 35.4, 72.6, ALTERAC_MOUNTAINS },
					["cost"] = {
						{ "i", 17662, 1 },	-- Stolen Treats
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 17662,	-- Stolen Treats
							["allianceQuestID"] = 7043,	-- You're a Mean One... (Alliance)
							["hordeQuestID"] = 6983,	-- You're a Mean One... (Horde)
							["cr"] = 13602,	-- The Abominable Greench
						},
					},
				},
				q(8827, { -- Winter's Presents
					["lvl"] = 1,
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		},
	}),
};