-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = { tier(1, {	-- Classic
	map(RAGEFIRE_CHASM, {
		["description"] = "Ragefire Chasm consists of a network of volcanic caverns that lie below the orcs' new capital city of Orgrimmar. Recently, rumors have spread that a cult loyal to the demonic Shadow Council has taken up residence within the Chasm's fiery depths. This cult, known as the Burning Blade, threatens the very sovereignty of Durotar. Many believe that the orc Warchief, Thrall, is aware of the Blade's existence and has chosen not to destroy it in the hopes that its members might lead him straight to the Shadow Council. Either way, the dark powers emanating from Ragefire Chasm could undo all that the orcs have fought to attain",
		["coord"] = { 50.6, 51.6, ORGRIMMAR },
		["lvl"] = 13,
		["groups"] = {
			n(QUESTS, {
				q(5726, {	-- Hidden Enemies (1/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["maps"] = { DUROTAR, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 14544, 1 },	-- Lieutenant's Insignia
					},
					["lvl"] = 9,
				}),
				q(5727, {	-- Hidden Enemies (2/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 5726,	-- Hidden Enemies (1/5)
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5728, {	-- Hidden Enemies (3/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 5727,	-- Hidden Enemies (2/5)
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5729, {	-- Hidden Enemies (4/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 5728,	-- Hidden Enemies (3/5)
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5730, {	-- Hidden Enemies (5/5)
					["qg"] = 3216,	-- Neeru Fireblade
					["sourceQuest"] = 5729,	-- Hidden Enemies (4/5)
					["coord"] = { 49.6, 50.6, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(15424),	-- Axe of Orgrimmar
						i(15445),	-- Hammer of Orgrimmar
						i(15443),	-- Kris of Orgrimmar
						i(15444),	-- Staff of Orgrimmar
					},
				}),
				q(5724, {	-- Returning the Lost Satchel
					["qg"] = 11834,	-- Maur Grimtotem
					["sourceQuest"] = 5722,	-- Searching for the Lost Satchel
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 14381, 1 },	-- Grimtotem Satchel
					},
					["lvl"] = 9,
					["groups"] = {
						i(15452),	-- Featherbead Bracers
						i(15453),	-- Savannah Bracers
					},
				}),
				q(5722, {	-- Searching for the Lost Satchel
					["qg"] = 11833,	-- Rahauro <Magatha's Servant>
					["coord"] = { 70.6, 31.4, THUNDER_BLUFF },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5761, {	-- Slaying the Beast
					["qg"] = 3216,	-- Neeru Fireblade
					["sourceQuest"] = 5727,	-- Hidden Enemies [Pt 2]
					["coord"] = { 49.6, 50.6, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 14540, 1 },	-- Taragaman the Hungerer's Heart
					},
					["lvl"] = 9,
				}),
				q(5723, {	-- Testing an Enemy's Strength
					["qg"] = 11833,	-- Rahauro <Magatha's Servant>
					["coord"] = { 70.6, 31.4, THUNDER_BLUFF },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5725, {	-- The Power to Destroy...
					["qg"] = 2425,	-- Varimathras
					["coord"] = { 56.2, 91.8, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 14396, 1 },	-- Incantations from the Nether
						{ "i", 14395, 1 },	-- Spells of Shadow
					},
					["lvl"] = 9,
					["groups"] = {
						i(15450),	-- Dredgemire Leggings
						i(15451),	-- Gargoyle Leggings
						i(15449),	-- Ghastly Trousers
					},
				}),
			}),
			n(ZONEDROPS, {
				i(14396, {	-- Incantations from the Nether
					["questID"] = 5725,	-- The Power to Destroy...
					["races"] = HORDE_ONLY,
					["crs"] = {
						11322,	-- Searing Blade Cultist
						11324,	-- Searing Blade Warlock
					},
				}),
				i(14395, {	-- Spells of Shadow
					["questID"] = 5725,	-- The Power to Destroy...
					["races"] = HORDE_ONLY,
					["crs"] = {
						11322,	-- Searing Blade Cultist
						11324,	-- Searing Blade Warlock
					},
				}),
			}),
			n(11517, {	-- Oggleflint <Ragefire Chieftain>
				{
					["itemID"] = 14381,	-- Grimtotem Satchel
					["questID"] = 5724,	-- Returning the Lost Satchel
					["description"] = "Found on the tauren corpse in front of this boss.",
					["races"] = HORDE_ONLY,
				},
			}),
			n(11520, {	-- Taragaman the Hungerer
				{
					["itemID"] = 14540,	-- Taragaman the Hungerer's Heart
					["questID"] = 5761,	-- Slaying the Beast
					["races"] = HORDE_ONLY,
				},
				i(14145),	-- Cursed Felblade
				i(14149),	-- Subterranean Cape
				i(14148),	-- Crystalline Cuffs
			}),
			n(11518, {	-- Jergosh the Invoker
				i(14151),	-- Chanting Blade
				i(14150),	-- Robe of Evocation
				i(14147),	-- Cavedweller Bracers
			}),
			n(11519, {	-- Bazzalan
				["description"] = "Drops nothing of note.",
			}),
			n(17830, {	-- Zelemar the Wrathful
				["timeline"] = { "created 2.2.0.7272", "added 2.2.0.7272", "removed 4.0.3.10000" },
				["groups"] = {
					i(24225, {	-- Blood of the Wrathful
						["timeline"] = { "created 2.2.0.7272", "added 2.2.0.7272", "removed 4.0.3.10000" },
						["classes"] = { PALADIN },
						["races"] = { BLOODELF },
					}),
				},
			}),
		},
	}),
})};