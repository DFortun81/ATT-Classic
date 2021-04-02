---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(WESTERN_PLAGUELANDS, {
			n(QUESTS, {
				q(5066, {	-- A Call to Arms: The Plaguelands!
					["qg"] = 2198,	-- Crier Goodman
					["coord"] = { 54.8, 62.6, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5090, {	-- A Call to Arms: The Plaguelands!
					["qg"] = 10877,	-- Courier Hammerfall
					["coord"] = { 31.6, 67, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5091, {	-- A Call to Arms: The Plaguelands!
					["qg"] = 10878,	-- Herald Moonstalker
					["coord"] = { 36.4, 39.8, DARNASSUS },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5093, {	-- A Call to Arms: The Plaguelands!
					["qg"] = 10880,	-- Warcaller Gorlach
					["coord"] = { 46.6, 64.6, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5094, {	-- A Call to Arms: The Plaguelands!
					["qg"] = 10879,	-- Harbinger Balthazad
					["coord"] = { 64, 44, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5095, {	-- A Call to Arms: The Plaguelands!
					["qg"] = 10881,	-- Bluff Runner Windstrider
					["coord"] = { 41.4, 54.2, THUNDER_BLUFF },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(4971, {	-- A Matter of Time
					["qg"] = 10667,	-- Chromie
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12627, 1 },	-- Temporal Displacer
					},
					["lvl"] = 53,
					["g"] = {
						i(15812),	-- Orchid Amice
						i(15813),	-- Gold Link Belt
					},
				}),
				q(5903, {	-- A Plague Upon Thee
					["qg"] = 11616,	-- Nathaniel Dumah
					["coord"] = { 43.4, 84.8, WESTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 15042, 1 },	-- Empty Termite Jar
						{ "i", 15043, 100 },	-- Plagueland Termites
					},
					["lvl"] = 48,
				}),
				q(5904, {	-- A Plague Upon Thee
					["qg"] = 11616,	-- Nathaniel Dumah
					["sourceQuest"] = 5903,	-- A Plague Upon Thee
					["coord"] = { 43.4, 84.8, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 15044, 1 },	-- Barrel of Plagueland Termites
					},
					["lvl"] = 48,
				}),
				q(6389, {	-- A Plague Upon Thee
					["provider"] = { "o", 177491 },	-- Termite Barrel
					["sourceQuest"] = 5904,	-- A Plague Upon Thee
					["coord"] = { 48.4, 31.9, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				}),
				q(5901, {	-- A Plague Upon Thee
					["qg"] = 11615,	-- Mickey Levine
					["coord"] = { 83.2, 72.4, TIRISFAL_GLADES },
					["maps"] = { EASTERN_PLAGUELANDS, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15042, 1 },	-- Empty Termite Jar
						{ "i", 15043, 100 },	-- Plagueland Termites
					},
					["lvl"] = 48,
				}),
				q(5902, {	-- A Plague Upon Thee
					["qg"] = 11615,	-- Mickey Levine
					["sourceQuest"] = 5901,	-- A Plague Upon Thee
					["coord"] = { 83.2, 72.4, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15044, 1 },	-- Barrel of Plagueland Termites
					},
					["lvl"] = 48,
				}),
				q(6390, {	-- A Plague Upon Thee
					["provider"] = { "o", 177491 },	-- Termite Barrel
					["sourceQuest"] = 5902,	-- A Plague Upon Thee
					["coord"] = { 48.4, 31.9, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				}),
				q(5153, {	-- A Strange Historian
					["qg"] = 10927,	-- Marlene Redpath
					["sourceQuest"] = 5152,	-- Auntie Marlene
					["coord"] = { 49.2, 78.4, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12894, 1 },	-- Joseph's Wedding Ring
					},
					["lvl"] = 50,
				}),
				q(211, {	-- Alas, Andorhal
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 5097,	-- All Along the Watchtowers
					["coord"] = { 42.7, 84.1, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 17114, 1 },	-- Araj's Phylactery Shard
					},
					["lvl"] = 50,
					["g"] = {
						i(17759),	-- Mark of Resolution
					},
				}),
				q(105, {	-- Alas, Andorhal
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 5098,	-- All Along the Watchtowers
					["coord"] = { 83.0, 69.0, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 17114, 1 },	-- Araj's Phylactery Shard
					},
					["lvl"] = 50,
					["g"] = {
						i(17759),	-- Mark of Resolution
					},
				}),
				q(5097, {	-- All Along the Watchtowers (A)
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 5092,	-- Clear The Way
					["coord"] = { 42.7, 84.1, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12815, 1 },	-- Beacon Torch
					},
					["lvl"] = 50,
				}),
				q(5098, {	-- All Along the Watchtowers (H)
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 5096,	-- Scarlet Diversions
					["coord"] = { 83.0, 69.0, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12815, 1 },	-- Beacon Torch
					},
					["lvl"] = 50,
				}),
				q(5401, {	-- Argent Dawn Commission
					["qg"] = 10840,	-- Argent Officer Pureheart
					["coord"] = { 43.0, 83.6, WESTERN_PLAGUELANDS },
					["lvl"] = 50,
					["g"] = {
						i(12846),	-- Argent Dawn Commission
					},
				}),
				q(5405, {	-- Argent Dawn Commission
					["qg"] = 10839,	-- Argent Officer Garush
					["coord"] = { 83.2, 68.4, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["lvl"] = 50,
					["g"] = {
						i(12846),	-- Argent Dawn Commission
					},
				}),
				q(5021, {	-- Better Late Than Never
					["qg"] = 10778,	-- Janice Felstone
					["coord"] = { 38.4, 54.0, WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5023, {	-- Better Late Than Never
					["provider"] = { "o", 175894 },	-- Janice's Parcel
					["sourceQuest"] = 5021,	-- Better Late Than Never
					["coord"] = { 38.8, 55.2, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12724, 1 },	-- Janice's Parcel
					},
					["lvl"] = 50,
				}),
				q(5022, {	-- Better Late Than Never
					["provider"] = { "o", 175894 },	-- Janice's Parcel
					["sourceQuest"] = 5021,	-- Better Late Than Never
					["coord"] = { 38.8, 55.2, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12724, 1 },	-- Janice's Parcel
					},
					["lvl"] = 50,
				}),
				q(5210, {	-- Brother Carlin
					["qg"] = 10667,	-- Chromie
					["sourceQuests"] = {
						5154,	-- The Annals of Darrowshire
						5168,	-- Heroes of Darrowshire
					},
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13202, 1 },	-- Extended Annals of Darrowshire
					},
					["lvl"] = 50,
				}),
				q(8415, {	-- Chillwind Point
					["qgs"] = {
						5149,	-- Brandur Ironhammer <Paladin Trainer>
						928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					},
					["coords"] = {
						{ 23.6, 6.6, IRONFORGE },
						{ 37.6, 32.6, STORMWIND_CITY },
					},
					["maps"] = {
						IRONFORGE,
						STORMWIND_CITY,
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 50,
				}),
				q(5524, {	-- Chromatic Mantle of the Dawn
					["qg"] = 10856,	-- Argent Quartermaster Hasana <The Argent Dawn>
					["sourceQuest"] = 5504,	-- Mantles of the Dawn
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["coord"] = { 83.2, 68.2, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["altQuests"] = {
						5517,	-- Chromatic Mantle of the Dawn
						5521,	-- Chromatic Mantle of the Dawn
						5524,	-- Chromatic Mantle of the Dawn
					},
					["cost"] = {
						{ "i", 12844, 25 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
					["g"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				}),
				q(5521, {	-- Chromatic Mantle of the Dawn
					["qg"] = 10857,	-- Argent Quartermaster Lightspark <The Argent Dawn>
					["sourceQuest"] = 5507,	-- Mantles of the Dawn
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["coord"] = { 42.8, 83.8, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						5517,	-- Chromatic Mantle of the Dawn
						5521,	-- Chromatic Mantle of the Dawn
						5524,	-- Chromatic Mantle of the Dawn
					},
					["cost"] = {
						{ "i", 12844, 25 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
					["g"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				}),
				q(5092, {	-- Clear the Way
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuests"] = {
						5066,	-- A Call to Arms: The Plaguelands!
						5090,	-- A Call to Arms: The Plaguelands!
						5091,	-- A Call to Arms: The Plaguelands!
					},
					["coord"] = { 42.7, 84.1, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(5404, {	-- Corruptor's Scourgestones
					["qg"] = 10840,	-- Argent Officer Pureheart
					["coord"] = { 43.0, 83.6, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12843, 1 },	-- Corruptor's Scourgestone
					},
					["lvl"] = 50,
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5406, {	-- Corruptor's Scourgestones
					["qg"] = 10839,	-- Argent Officer Garush
					["coord"] = { 83.2, 68.4, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12843, 1 },	-- Corruptor's Scourgestone
					},
					["lvl"] = 50,
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(4972, {	-- Counting Out Time
					["qg"] = 10667,	-- Chromie
					["sourceQuest"] = 4971,	-- A Matter of Time
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12638, 5 },	-- Andorhal Watch
					},
					["lvl"] = 53,
					["g"] = {
						i(12650),	-- Attuned Dampener
					},
				}),
				q(4973, {	-- Counting Out Time
					["qg"] = 10667,	-- Chromie
					["sourceQuest"] = 4972,	-- Counting Out Time
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12638, 5 },	-- Andorhal Watch
					},
					["lvl"] = 53,
					["g"] = {
						i(12650),	-- Attuned Dampener
					},
				}),
				q(5221, {	-- Dalson's Tears Cauldron
					["provider"] = { "o", 177289 },	-- Scourge Cauldron
					["coord"] = { 46.2, 52, WESTERN_PLAGUELANDS },
					["sourceQuests"] = {
						5219,	-- Target: Dalson's Tears
						5231,	-- Target: Dalson's Tears
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13356, 5 },	-- Somatic Intensifier
						{ "i", 14047, 4 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(9444, {	-- Defiling Uther's Tomb
					["qg"] = 17099,	-- Mehlar Dawnblade
					["sourceQuest"] = 9443,	-- The So-Called Mark of the Lightbringer
					["coord"] = { 26.6, 58.5, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["cost"] = {
						{ "i", 23691, 1 },	-- Corrupted Mark of the Lightbringer
					},
					["lvl"] = 55,
					["groups"] = {
						{
							["itemID"] = 23691,	-- Corrupted Mark of the Lightbringer
							["questID"] = 9443,	-- The So-Called Mark of the Lightbringer
							["coord"] = { 52.1, 83.5, WESTERN_PLAGUELANDS },
						},
					},
				}),
				q(8414, {	-- Dispelling Evil
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 8415,	-- Chillwind Camp
					["coord"] = { 42.8, 84.0, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["cost"] = {
						{ "i", 12840, 20 },	-- Minion's Scourgestone
					},
					["lvl"] = 50,
				}),
				q(5218, {	-- Felstone Field Cauldron
					["provider"] = { "o", 176361 },	-- Scourge Cauldron
					["coord"] = { 37.2, 56.9, WESTERN_PLAGUELANDS },
					["sourceQuests"] = {
						5216,	-- Target: Felstone Field
						5229,	-- Target: Felstone Field
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13357, 6 },	-- Osseous Agitator
						{ "i", 14047, 4 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(5227, {	-- Gahrron's Withering Cauldron
					["provider"] = { "o", 176392 },	-- Scourge Cauldron
					["sourceQuests"] = {
						5225,	-- Target: Gahrron's Withering
						5235,	-- Target: Gahrron's Withering
					},
					["coord"] = { 62.5, 58.6, WESTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13354, 4 },	-- Ectoplasmic Resonator
						{ "i", 14047, 4 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(4986, {	-- Glyphed Oaken Branch (A)
					["qg"] = 10739,	-- Mulgris Deepriver
					["sourceQuest"] = 4985,	-- The Wildlife Suffers Too
					["coord"] = { 53.6, 64.6, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12663, 1 },	-- Glyphed Oaken Branch
					},
					["lvl"] = 51,
					["g"] = {
						i(15804),	-- Cerise Drape
					},
				}),
				q(4987, {	-- Glyphed Oaken Branch (H)
					["qg"] = 10739,	-- Mulgris Deepriver
					["sourceQuest"] = 4985,	-- The Wildlife Suffers Too
					["coord"] = { 53.6, 64.6, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12663, 1 },	-- Glyphed Oaken Branch
					},
					["lvl"] = 51,
					["g"] = {
						i(15804),	-- Cerise Drape
					},
				}),
				q(5050, {	-- Good Luck Charm
					["qgs"] = {
						8403,	-- Jeremiah Payson <Cockroach Vendor>
						3520,	-- Ol' Emma
					},
					["sourceQuests"] = {
						5048,	-- Good Natured Emma
						5049,	-- The Jeremiah Blues
					},
					["coords"] = {
						{ 67.4, 43.8, UNDERCITY },
						{ 52.4, 41.8, STORMWIND_CITY },
					},
					["maps"] = { STORMWIND_CITY, UNDERCITY },
					["cost"] = {
						{ "i", 12721, 1 },	-- Good Luck Half-Charm
					},
					["lvl"] = 50,
				}),
				q(8416, {	-- Inert Scourgestones
					["qg"] = 1854,	-- High Priest Thel'danis
					["sourceQuest"] = 8414,	-- Dispelling Evil
					["coord"] = { 52.2, 83.6, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 50,
				}),
				q(5407, {	-- Invader's Scourgestones
					["qg"] = 10839,	-- Argent Officer Garush
					["coord"] = { 83.2, 68.4, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12841, 10 },	-- Invader's Scourgestones
					},
					["lvl"] = 50,
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5403, {	-- Invader's Scourgestones
					["qg"] = 10840,	-- Argent Officer Pureheart
					["coord"] = { 43.0, 83.6, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12841, 10 },	-- Invader's Scourgestones
					},
					["lvl"] = 50,
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5142, {	-- Little Pamela
					["qg"] = 10927,	-- Marlene Redpath
					["coord"] = { 49.2, 78.4, WESTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5059, {	-- Locked Away
					["provider"] = { "o", 175925 },	-- Outhouse
					["coord"] = { 48.2, 49.6, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12738, 1 },	-- Dalson Outhouse Key
					},
					["altQuests"] = { 5060 },	-- Locked Away
					["lvl"] = 52,
					["groups"] = {
						{
							["itemID"] = 12738,	-- Dalson Outhouse Key
							["questID"] = 5060,	-- Locked Away
							["cr"] = 10816,	-- Wandering Skeleton
							["coord"] = { 48.0, 49.8, WESTERN_PLAGUELANDS },
						},
						{
							["itemID"] = 12739,	-- Dalson Cabinet Key
							["questID"] = 5060,	-- Locked Away
							["cr"] = 10836,	-- Farmer Dalson
							["coord"] = { 48.2, 49.6, WESTERN_PLAGUELANDS },
						},
					},
				}),
				q(5060, {	-- Locked Away
					["provider"] = { "o", 175924 },	-- Locked Cabinet
					["coord"] = { 47.4, 49.7, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12739, 1 },	-- Dalson Cabinet Key
					},
					["lvl"] = 52,
					["g"] = {
						i(13474),	-- Farmer Dalson's Shotgun
						i(13475),	-- Dalson Family Wedding Ring
					},
				}),
				q(5507, {	-- Mantles of the Dawn
					["qg"] = 10857,	-- Argent Quartermaster Lightspark <The Argent Dawn>
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["coord"] = { 42.8, 83.8, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12844, 10 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
				}),
				q(5504, {	-- Mantles of the Dawn
					["qg"] = 10856,	-- Argent Quartermaster Hasana <The Argent Dawn>
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["coord"] = { 83.2, 68.2, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12844, 10 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
				}),
				q(5408, {	-- Minion's Scourgestones
					["qg"] = 10839,	-- Argent Officer Garush
					["coord"] = { 83.2, 68.4, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12840, 20 },	-- Minion's Scourgestone
					},
					["lvl"] = 50,
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5402, {	-- Minion's Scourgestones
					["qg"] = 10840,	-- Argent Officer Pureheart
					["coord"] = { 43.0, 83.6, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12840, 20 },	-- Minion's Scourgestone
					},
					["lvl"] = 50,
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5237, {	-- Mission Accomplished! (A)
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 5226,	-- Return to Chillwind Camp
					["coord"] = { 42.7, 84.1, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["g"] = {
						i(15801),	-- Valiant Shortsword
						i(15800),	-- Intrepid Shortsword
						i(15799),	-- Heroic Commendation Medal
					},
				}),
				q(5238, {	-- Mission Accomplished! (H)
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 5236,	-- Return to the Bulwark
					["coord"] = { 83.0, 69.0, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["g"] = {
						i(15801),	-- Valiant Shortsword
						i(15800),	-- Intrepid Shortsword
						i(15799),	-- Heroic Commendation Medal
					},
				}),
				q(5058, {	-- Mrs. Dalson's Diary
					["provider"] = { "o", 175926 },	-- Mrs. Dalson's Diary
					["coord"] = { 47.8, 50.7, WESTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				q(5217, {	-- Return to Chillwind Camp
					["provider"] = { "o", 176361 },	-- Scourge Cauldron
					["sourceQuest"] = 5216,	-- Target: Felstone Field
					["coord"] = { 37.2, 56.9, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13190, 1 },	-- Filled Felstone Field Bottle
					},
					["lvl"] = 50,
				}),
				q(5220, {	-- Return to Chillwind Camp
					["provider"] = { "o", 177289 },	-- Scourge Cauldron
					["sourceQuest"] = 5219,	-- Target: Dalson's Tears
					["coord"] = { 46.2, 52, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13191, 1 },	-- Filled Dalson's Tears Bottle
					},
					["lvl"] = 50,
				}),
				q(5223, {	-- Return to Chillwind Camp
					["provider"] = { "o", 176393 },	-- Scourge Cauldron
					["sourceQuest"] = 5222,	-- Target: Writhing Haunt
					["coord"] = { 53, 65.7, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13192, 1 },	-- Filled Writhing Haunt Bottle
					},
					["lvl"] = 50,
				}),
				q(5226, {	-- Return to Chillwind Camp
					["provider"] = { "o", 176392 },	-- Scourge Cauldron
					["sourceQuest"] = 5225,	-- Target: Gahrron's Withering
					["coord"] = { 62.5, 58.6, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13193, 1 },	-- Filled Gahrron's Withering Bottle
					},
					["lvl"] = 50,
				}),
				q(5230, {	-- Return to the Bulwark
					["provider"] = { "o", 176361 },	-- Scourge Cauldron
					["sourceQuest"] = 5229,	-- Target: Felstone Field
					["coord"] = { 37.2, 56.9, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13190, 1 },	-- Filled Felstone Field Bottle
					},
					["lvl"] = 50,
				}),
				q(5232, {	-- Return to the Bulwark
					["provider"] = { "o", 177289 },	-- Scourge Cauldron
					["sourceQuest"] = 5231, 	-- Target: Dalson's Tears
					["coord"] = { 46.2, 52, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13191, 1 },	-- Filled Dalson's Tears Bottle
					},
					["lvl"] = 50,
				}),
				q(5234, {	-- Return to the Bulwark
					["provider"] = { "o", 176393 },	-- Scourge Cauldron
					["sourceQuest"] = 5233,	-- Target: Writhing Haunt
					["coord"] = { 53, 65.7, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13192, 1 },	-- Filled Writhing Haunt Bottle
					},
					["lvl"] = 50,
				}),
				q(5236, {	-- Return to the Bulwark
					["provider"] = { "o", 176392 },	-- Scourge Cauldron
					["sourceQuest"] = 5235,	-- Target: Gahrron's Withering
					["coord"] = { 62.5, 58.6, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13193, 1 },	-- Filled Gahrron's Withering Bottle
					},
					["lvl"] = 50,
				}),
				q(5096, {	-- Scarlet Diversions
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuests"] = {
						5093,	-- A Call to Arms: The Plaguelands!
						5094,	-- A Call to Arms: The Plaguelands!
						5095,	-- A Call to Arms: The Plaguelands!
					},
					["coord"] = { 83.0, 69.0, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12814, 1 },	-- Flame in a Bottle
						{ "i", 12807, 1 },	-- Scourge Banner
					},
					["lvl"] = 50,
				}),
				q(5219, {	-- Target: Dalson's Tears
					["qg"] = 11053,	-- High Priestess MacDonnell
					["sourceQuest"] = 5217,	-- Return to Chillwind Camp
					["coord"] = { 43.0, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13187, 1 },	-- Empty Dalson's Tears Bottle
						{ "i", 13195, 1 },	-- Dalson's Tears Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5231, {	-- Target: Dalson's Tears
					["qg"] = 11055,	-- Shadow Priestess Vandis
					["sourceQuest"] = 5230,	-- Return to the Bulwark
					["coord"] = { 83.0, 71.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13187, 1 },	-- Empty Dalson's Tears Bottle
						{ "i", 13195, 1 },	-- Dalson's Tears Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5216, {	-- Target: Felstone Field
					["qg"] = 11053,	-- High Priestess MacDonnell
					["sourceQuest"] = 5215,	-- The Scourge Cauldrons
					["coord"] = { 43.0, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13186, 1 },	-- Empty Felstone Field Bottle
						{ "i", 13194, 1 },	-- Felstone Field Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5229, {	-- Target: Felstone Field
					["qg"] = 11055,	-- Shadow Priestess Vandis
					["sourceQuest"] = 5228,	-- The Scourge Cauldrons
					["coord"] = { 83.0, 71.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13186, 1 },	-- Empty Felstone Field Bottle
						{ "i", 13194, 1 },	-- Felstone Field Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5225, {	-- Target: Gahrron's Withering
					["qg"] = 11053,	-- High Priestess MacDonnell
					["sourceQuest"] = 5223,	-- Return to Chillwind Camp
					["coord"] = { 43.0, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13189, 1 },	-- Empty Gahrron's Withering Bottle
						{ "i", 13196, 1 },	-- Gahrron's Withering Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5235, {	-- Target: Gahrron's Withering
					["qg"] = 11055,	-- Shadow Priestess Vandis
					["sourceQuest"] = 5234,	-- Return to the Bulwark
					["coord"] = { 83.0, 71.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13189, 1 },	-- Empty Gahrron's Withering Bottle
						{ "i", 13196, 1 },	-- Gahrron's Withering Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5222, {	-- Target: Writhing Haunt
					["qg"] = 11053,	-- High Priestess MacDonnell
					["sourceQuest"] = 5220,	-- Return to Chillwind Camp
					["coord"] = { 43.0, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13188, 1 },	-- Empty Writhing Haunt Bottle
						{ "i", 13197, 1 },	-- Writhing Haunt Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5233, {	-- Target: Writhing Haunt
					["qg"] = 11055,	-- Shadow Priestess Vandis
					["sourceQuest"] = 5232,	-- Return to the Bulwark
					["coord"] = { 83.0, 71.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13188, 1 },	-- Empty Writhing Haunt Bottle
						{ "i", 13197, 1 },	-- Writhing Haunt Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5154, {	-- The Annals of Darrowshire
					["qg"] = 10667,	-- Chromie
					["sourceQuest"] = 5153,	-- A Strange Historian
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12900, 1 },	-- Annals of Darrowshire
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 12900,	-- Annals of Darrowshire
							["questID"] = 5154,	-- The Annals of Darrowshire
							["description"] = "The Musty Tome you are looking for has a faint X on its binding. If none of the books have this marking, you may have to interact with a few to despawn them.\n\nWARNING: The ghosts that spawn can be a pain.",
							["coord"] = { 43.4, 69.7, WESTERN_PLAGUELANDS },
						},
					},
				}),
				q(6186, {	-- The Blightcaller Cometh
					["qg"] = 12425,	-- Flint Shadowmore <SI:7>
					["sourceQuest"] = 6185,	-- The Eastern Plagues
					["coord"] = { 43.6, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(6185, {	-- The Eastern Plagues
					["qg"] = 12425,	-- Flint Shadowmore <SI:7>
					["sourceQuest"] = 6184,	-- Flint Shadowmore
					["coord"] = { 43.6, 84.5, WESTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 16001, 1 },	-- SI:7 Insignia (Fredo)
						{ "i", 16003, 1 },	-- SI:7 Insignia (Rutger)
						{ "i", 16002, 1 },	-- SI:7 Insignia (Turyen)
					},
					["lvl"] = 56,
					["groups"] = {
						{
							["itemID"] = 16001,	-- SI:7 Insignia (Fredo)
							["questID"] = 6185,	-- The Eastern Plagues
							["coord"] = { 27.3, 75.0, EASTERN_PLAGUELANDS },
						},
						{
							["itemID"] = 16003,	-- SI:7 Insignia (Rutger)
							["questID"] = 6185,	-- The Eastern Plagues
							["coord"] = { 28.8, 79.8, EASTERN_PLAGUELANDS },
						},
						{
							["itemID"] = 16002,	-- SI:7 Insignia (Turyen)
							["questID"] = 6185,	-- The Eastern Plagues
							["coord"] = { 28.8, 74.9, EASTERN_PLAGUELANDS },
						},
					},
				}),
				q(5049, {	-- The Jeremiah Blues
					["qg"] = 10781,	-- Royal Overseer Bauhaus <Undercity Census>
					["sourceQuest"] = 5023,	-- Better Late Than Never
					["coord"] = { 69.6, 43.6, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12724, 1 },	-- Janice's Parcel
					},
					["lvl"] = 50,
				}),
				q(9474, {	-- The Mark of the Lightbringer
					["qg"] = 17238,	-- Anchorite Truuen
					["coord"] = { 42.9, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["cost"] = {
						{ "i", 23661, 1 },	-- Mark of the Lightbringer
					},
					["lvl"] = 55,
					["groups"] = {
						{
							["itemID"] = 23661,	-- Mark of the Lightbringer
							["questID"] = 9474,	-- The Mark of the Lightbringer
							["coord"] = { 53.8, 24.4, WESTERN_PLAGUELANDS },
						},
					},
				}),
				q(5215, {	-- The Scourge Cauldrons
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 5092,	-- Clear the Way
					["coord"] = { 42.7, 84.1, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(5228, {	-- The Scourge Cauldrons
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 5096,	-- Scarlet Diversions
					["coord"] = { 83.0, 69.0, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(9443, {	-- The So-Called Mark of the Lightbringer
					["qg"] = 17099,	-- Mehlar Dawnblade
					["coord"] = { 26.6, 58.5, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["cost"] = {
						{ "i", 23661, 1 },	-- Mark of the Lightbringer
					},
					["lvl"] = 55,
					["groups"] = {
						{
							["itemID"] = 23661,	-- Mark of the Lightbringer
							["questID"] = 9443,	-- The So-Called Mark of the Lightbringer
							["coord"] = { 53.8, 24.4, WESTERN_PLAGUELANDS },
						},
					},
				}),
				q(4984, {	-- The Wildlife Suffers Too
					["qg"] = 10739,	-- Mulgris Deepriver
					["coord"] = { 53.6, 64.6, WESTERN_PLAGUELANDS },
					["lvl"] = 51,
				}),
				q(4985, {	-- The Wildlife Suffers Too
					["qg"] = 10739,	-- Mulgris Deepriver
					["sourceQuest"] = 4984,	-- The Wildlife Suffers Too
					["coord"] = { 53.6, 64.6, WESTERN_PLAGUELANDS },
					["lvl"] = 51,
				}),
				q(9446, {	-- Tomb of the Lightbringer
					["qg"] = 17238,	-- Anchorite Truuen
					["sourceQuest"] = 9474,	-- The Mark of the Lightbringer
					["coord"] = { 42.9, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 55,
				}),
				q(5051, {	-- Two Halves Become One
					["qg"] = 10778,	-- Janice Felstone
					["sourceQuest"] = 5050,	-- Good Luck Charm
					["coord"] = { 38.4, 54.0, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12723, 1 },	-- Good Luck Charm
					},
					["lvl"] = 50,
					["g"] = {
						{
							["itemID"] = 12722,	-- Good Luck Other-Half-Charm
							["cr"] = 10801,	-- Jabbering Ghoul
							["coord"] = { 38.6, 56.2, WESTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 12721, 1 },	-- Good Luck Half-Charm
							},
							["groups"] = {
								{
									["itemID"] = 12723,	-- Good Luck Charm
									["questID"] = 5051,	-- Two Halves Become One
								},
							},
						},
						i(13473),	-- Felstone Good Luck Charm
					},
				}),
				q(6004, {	-- Unfinished Business
					["qg"] = 11610,	-- Kirsta Deepshadow
					["coord"] = { 52, 28, WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(6023, {	-- Unfinished Business
					["qg"] = 11610,	-- Kirsta Deepshadow
					["sourceQuest"] = 6004,	-- Unfinished Business
					["coord"] = { 52, 28, WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(6025, {	-- Unfinished Business
					["qg"] = 11610,	-- Kirsta Deepshadow
					["sourceQuest"] = 6023,	-- Unfinished Business
					["coord"] = { 52, 28, WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5224, {	-- Writhing Haunt Cauldron
					["provider"] = { "o", 176393 },	-- Scourge Cauldron
					["coord"] = { 53, 65.7, WESTERN_PLAGUELANDS },
					["sourceQuests"] = {
						5222,	-- Target: Writhing Haunt
						5233,	-- Target: Writhing Haunt
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13356, 5 },	-- Somatic Intensifier
						{ "i", 14047, 4 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
			}),
		}),
	}),
};