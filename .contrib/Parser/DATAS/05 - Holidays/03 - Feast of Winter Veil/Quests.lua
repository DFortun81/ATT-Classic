--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = 
{
	n(-61, {	-- Feast of Winter Veil
		["g"] = {
			n(QUESTS, {
				q(6984, {	-- A Smokywood Pastures' Thank You! (Horde)
					["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(17726),	-- Smokywood Pastures Special Gift
					},
				}),
				q(7045, {	-- A Smokywood Pastures' Thank You! (Alliance)
					["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
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
				q(6961, {	-- Greatfather Winter is Here!
					["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["altQuests"] = { 
						7021,  -- Greatfather Winter is Here! 
						7124,  -- Greatfather Winter is Here! 
					},
				}),
				q(7021, {	-- Greatfather Winter is Here!
					["qg"] = 13431,	-- Whulwert Copperpinch <Smokywood Pastures>
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["altQuests"] = { 
						6961,  -- Greatfather Winter is Here! 
						7124,  -- Greatfather Winter is Here! 
					},
				}),
				q(7024, {	-- Greatfather Winter is Here!
					["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["altQuests"] = { 
						6961,  -- Greatfather Winter is Here! 
						7021,  -- Greatfather Winter is Here! 
					},
				}),
				q(7022, {	-- Greatfather Winter is Here!
					["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(7023, {	-- Greatfather Winter is Here!
					["qg"] = 13435,	-- Khole Jinglepocket <Smokywood Pastures>
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(8746, {	-- Metzen the Reindeer (Horde)
					["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(21213),  -- Preserved Holly
					},
				}),
				q(8762, {	-- Metzen the Reindeer (Alliance)
					["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(21213),  -- Preserved Holly
					},
				}),
				q(6963, {	-- Stolen Winter Veil Treats (Horde)
					["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(7042, {	-- Stolen Winter Veil Treats (Alliance)
					["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(7061, {	-- The Feast of Winter Veil
					["qg"] = 13417,	-- Sagorne Creststrider <Shaman Trainer>
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(7063, {	-- The Feast of Winter Veil
					["qg"] = 2916,	-- Historian Karnik
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(8763, {	-- The Hero of the Day
					["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
					["description"] = 'Requires Cooking Skill Level 300',
					["requireSkill"] = 185,	-- Cooking
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["g"] = {
						i(21213),  -- Preserved Holly
					},
				}),
				q(6964, {	-- The Reason for the Season (Horde)
					["qg"] = 1365,	-- Goli Krumn
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(7062, {	-- The Reason for the Season (Alliance)
					["qg"] = 1365,	-- Goli Krumn
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(6962, {	-- Treats for Greatfather Winter (Horde)
					["qg"] = 13445,	-- Great-father Winter
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(17727),	-- Smokywood Pastures Special Gift
					},
				}),
				q(7025, {	-- Treats for Greatfather Winter (Alliance)
					["qg"] = 13444,	-- Greatfather Winter
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
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
				{	-- You're a Mean One...
					["qg"] = 13636,	-- Strange Snowman
					["allianceQuestID"] = 7043,	-- You're a Mean One... (Alliance)
					["hordeQuestID"] = 6983,	-- You're a Mean One... (Horde)
					["sourceQuests"] = {
						7042,	-- Stolen Winter Veil Treats (Alliance)
						6963,	-- Stolen Winter Veil Treats (Horde)
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
				{
					["allianceQuestID"] = 8827,	-- Winter's Presents (Alliance)
					["hordeQuestID"] = 8828,	-- Winter's Presents (Horde)
					["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
				},
			}),
		},
	}),
};