--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = bubbleDown({ ["u"] = FEAST_OF_WINTER_VEIL },
{
	n(-61, {	-- Feast of Winter Veil
		n(COMMON_BOSS_DROPS, {
			i(21525, {	-- Green Winter Hat
				["maps"] = {
					BLACKROCK_SPIRE,
					DIRE_MAUL,
					SCHOLOMANCE
				},
				["crs"] = {
					10899,	-- Goraluk Anvilcrack <Blackhand Legion Armorsmith>
					11486,	-- Prince Tortheldrin
					1853,	-- Darkmaster Gandling
				},
			}),
			i(21524, {	-- Red Winter Hat
				["maps"] = {
					BLACKROCK_DEPTHS,
					BLACKROCK_SPIRE,
					STRATHOLME
				},
				["crs"] = {
					9019,	-- Emperor Dagran Thaurissan (BRD)
					9237,	-- War Master Voone
					10997,	-- Cannon Master Willey
				},
			}),
		}),
		n(-297, {	-- Mailbox
			i(17724),	-- Pattern: Green Holiday Shirt
			i(17712),	-- Winter Veil Disguise Kit
		}),
		n(QUESTS, {
			q(8744, { 	-- A Carefully Wrapped Present
				["isYearly"] = true,
				["groups"] = {
					i(21191, {  -- Carefully Wrapped Present
						i(21254),  -- Winter Veil Cookie
					}),
				},
			}),
			q(8803, { 	-- A Festive Gift
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(21363, {  -- Festive Gift
						i(21328),  -- Wand of Holiday Cheer
					}),
				},
			}),
			q(8768, { 	-- A Gaily Wrapped Present
				["isYearly"] = true,
				["lvl"] = 20,
				["groups"] = {
					i(21310, {  -- Gaily Wrapped Present
						i(21301),  -- Green Helper Box
						i(21309),  -- Snowman Kit
					}),
				},
			}),
			q(8767, { 	-- A Gently Shaken Gift
				["isYearly"] = true,
				["altQuests"] = {
					8788, 	-- A Gently Shaken Gift
				},
				["groups"] = {
					i(21270, {  -- Gently Shaken Gift
						i(21235),  -- Winter Veil Roast
					}),
				},
			}),
			q(8788, { 	-- A Gently Shaken Gift
				["isYearly"] = true,
				["altQuests"] = {
					8767, 	-- A Gently Shaken Gift
				},
				["groups"] = {
					i(21270, {  -- Gently Shaken Gift
						i(21235),  -- Winter Veil Roast
					}),
				},
			}),
			q(8769, { 	-- A Ticking Present
				["isYearly"] = true,
				["lvl"] = 40,
				["groups"] = {
					i(21327, {  -- Ticking Present
						i(17720),  -- Schematic: Snowmaster 9000
						i(21213),  -- Preserved Holly
						i(21325),  -- Mechanical Greench
					}),
				},
			}),
			q(6984, {	-- A Smokywood Pastures' Thank You! (Horde)
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
				["g"] = {
					i(17726),	-- Smokywood Pastures Special Gift
				},
			}),
			q(7045, {	-- A Smokywood Pastures' Thank You! (Alliance)
				["isYearly"] = true,
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
				["isYearly"] = true,
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(7023, {	-- Greatfather Winter is Here!
				["isYearly"] = true,
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
				["isYearly"] = true,
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
				["g"] = {
					i(21213),  -- Preserved Holly
				},
			}),
			{
				["allianceQuestID"] = 8860,	-- New Year Celebrations!
				["hordeQuestID"] = 8861,	-- New Year Celebrations!
				["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
				["isYearly"] = true,
				["cost"] = {
					{ "i", 21545, 1 },	-- Smokywood Supplies
				},
			},
			q(6963, {	-- Stolen Winter Veil Treats (Horde)
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["isYearly"] = true,
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
			}),
			q(7042, {	-- Stolen Winter Veil Treats (Alliance)
				["isYearly"] = true,
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(7061, {	-- The Feast of Winter Veil
				["isYearly"] = true,
				["qg"] = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
			}),
			q(7063, {	-- The Feast of Winter Veil
				["isYearly"] = true,
				["qg"] = 2916,	-- Historian Karnik
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(8763, {	-- The Hero of the Day
				["isYearly"] = true,
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["description"] = 'Requires Cooking Skill Level 300',
				["requireSkill"] = COOKING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
				["g"] = {
					i(21213),  -- Preserved Holly
				},
			}),
			q(6964, {	-- The Reason for the Season (Horde)
				["isYearly"] = true,
				["qg"] = 1365,	-- Goli Krumn
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
			}),
			q(7062, {	-- The Reason for the Season (Alliance)
				["isYearly"] = true,
				["qg"] = 1365,	-- Goli Krumn
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(6962, {	-- Treats for Greatfather Winter (Horde)
				["isYearly"] = true,
				["qg"] = 13445,	-- Great-father Winter
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
				["g"] = {
					i(17727),	-- Smokywood Pastures Special Gift
				},
			}),
			q(7025, {	-- Treats for Greatfather Winter (Alliance)
				["isYearly"] = true,
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
				["isYearly"] = true,
				["hordeQuestID"] = 6983,	-- You're a Mean One... (Horde)
				["isYearly"] = true,
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
						["isYearly"] = true,
						["hordeQuestID"] = 6983,	-- You're a Mean One... (Horde)
						["isYearly"] = true,
						["cr"] = 13602,	-- The Abominable Greench
					},
				},
			},
			{
				["allianceQuestID"] = 8827,	-- Winter's Presents (Alliance)
				["isBreadcrumb"] = true,
				["isYearly"] = true,
				["hordeQuestID"] = 8828,	-- Winter's Presents (Horde)
				["isBreadcrumb"] = true,
				["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
			},
		}),
		n(VENDORS, {
			n(13433, {	-- Wulmort Jinglepocket <Smokywood Pastures>
				["coord"] = { 33.6, 66.8, IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(17201),	-- Recipe: Egg Nog
					i(17200),	-- Recipe: Gingerbread Cookie
				},
			}),
		}),
	}),
});