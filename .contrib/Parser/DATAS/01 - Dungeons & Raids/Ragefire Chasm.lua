-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(213, { 	-- Ragefire Chasm
		["description"] = "Ragefire Chasm consists of a network of volcanic caverns that lie below the orcs' new capital city of Orgrimmar. Recently, rumors have spread that a cult loyal to the demonic Shadow Council has taken up residence within the Chasm's fiery depths. This cult, known as the Burning Blade, threatens the very sovereignty of Durotar. Many believe that the orc Warchief, Thrall, is aware of the Blade's existence and has chosen not to destroy it in the hopes that its members might lead him straight to the Shadow Council. Either way, the dark powers emanating from Ragefire Chasm could undo all that the orcs have fought to attain",
		["lvl"] = 13,
		["groups"] = {
			n(-17, {	-- Quests
				q(5726, {	-- Hidden Enemies [Pt 1]
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8 },	-- Orgrimmar [TODO: Add MapID]
					--["maps"] = { },	-- Orgrimmar
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5727, {	-- Hidden Enemies [Pt 2]
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 5726,	-- Hidden Enemies [Pt 1]
					["coord"] = { 32.0, 37.8 },	-- Orgrimmar [TODO: Add MapID]
					--["maps"] = { },	-- Orgrimmar
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5728, {	-- Hidden Enemies [Pt 3]
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 5727,	-- Hidden Enemies [Pt 2]
					["coord"] = { 32.0, 37.8 },	-- Orgrimmar [TODO: Add MapID]
					--["maps"] = { },	-- Orgrimmar
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5729, {	-- Hidden Enemies [Pt 4]
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 5728,	-- Hidden Enemies [Pt 3]
					["coord"] = { 32.0, 37.8 },	-- Orgrimmar [TODO: Add MapID]
					--["maps"] = { },	-- Orgrimmar
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5730, {	-- Hidden Enemies [Pt 5]
					["qg"] = 3216,	-- Neeru Fireblade
					["sourceQuest"] = 5729,	-- Hidden Enemies [Pt 4]
					["coord"] = { 49.6, 50.6 },	-- Orgrimmar [TODO: Add MapID]
					--["maps"] = { },	-- Orgrimmar
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
					["lvl"] = 9,
					["groups"] = {
						i(15452),	-- Featherbead Bracers
						i(15453),	-- Savannah Bracers
					},
				}),
				q(5722, {	-- Searching for the Lost Satchel
					["qg"] = 11833,	-- Rahauro <Magatha's Servant>
					["coord"] = { 70.6, 31.4 },	-- Thunder Bluff [TODO: Add MapID]
					--["maps"] = { },	-- Orgrimmar
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5761, {	-- Slaying the Beast
					["qg"] = 3216,	-- Neeru Fireblade
					["sourceQuest"] = 5727,	-- Hidden Enemies [Pt 2]
					["coord"] = { 49.6, 50.6 },	-- Orgrimmar [TODO: Add MapID]
					--["maps"] = { },	-- Orgrimmar
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5723, {	-- Testing an Enemy's Strength
					["qg"] = 11833,	-- Rahauro <Magatha's Servant>
					["coord"] = { 70.6, 31.4 },	-- Thunder Bluff [TODO: Add MapID]
					--["maps"] = { },	-- Orgrimmar
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5725, {	-- The Power to Destroy...
					["qg"] = 2425,	-- Varimathras
					["coord"] = { 56.2, 91.8 },	-- Undercity [TODO: Add MapID]
					--["maps"] = { },	-- Undercity
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(15450),	-- Dredgemire Leggings
						i(15451),	-- Gargoyle Leggings
						i(15449),	-- Ghastly Trousers
					},
				}),
			}),
			n(11517, {	-- Oggleflint <Ragefire Chieftain>
				i(2589),	-- Linen Cloth
			}),
			n(11520, {	-- Taragaman the Hungerer
				i(14540),	-- Taragaman the Hungerer's Heart
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
		},
	}),
};