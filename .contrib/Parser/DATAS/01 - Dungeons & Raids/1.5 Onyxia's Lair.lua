-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(248, { 	-- Onyxia's Lair
		["sourceQuests"] = {
			6502,	-- Alliance Attunement Quest
			6602,	-- Horde Attunement Quest
		},
		["isRaid"] = true,
		["lvl"] = 60,
		["groups"] = {
			n(10184, {	-- Onyxia
				i(18423, {	-- Head of Onyxia (A)
					["questID"] = 7495,	-- Victory for the Alliance
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
					["groups"] = {
						q(7496, {	-- Celebrating Good Times
							["qg"] = 1748,	-- Highlord Bolvar Fordragon
							["sourceQuest"] = 7495,	-- Victory for the Alliance
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 60,
							["groups"] = {
								i(18403),	-- Dragonslayer's Signet
								i(18406),	-- Onyxia Blood Talisman
								i(18404),	-- Onyxia Tooth Pendant
							},
						}),
						q(7497, {	-- The Journey Has Just Begun
							["qg"] = 14394,	-- Major Mattingly
							["sourceQuest"] = 7496,	-- Celebrating Good Times
							["requireSkill"] = 165,	-- Leatherworking
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 60,
							["g"] = {
								recipe(19093),	-- Pattern: Onyxia Scale Cloak
								i(15769),	-- Onyxia Scale Cloak
							},
						}),
					},
				}),
				i(18422, {	-- Head of Onyxia (H)
					["questID"] = 7490,		-- Victory for the Horde
					["races"] = HORDE_ONLY,
					["lvl"] = 60,
					["groups"] = {
						q(7491, {	-- For All To See
							["qg"] = 4949,	-- Thrall
							["sourceQuest"] = 7490,	-- Victory for the Horde
							["races"] = HORDE_ONLY,
							["lvl"] = 60,
							["groups"] = {
								i(18403),	-- Dragonslayer's Signet
								i(18404),	-- Onyxia Tooth Pendant
								i(18406),	-- Onyxia Blood Talisman
							},
						}),
						q(7493, {	-- The Journey Has Just Begun (H)
							["qg"] = 14392,		-- Overlord Runthak
							["sourceQuest"] = 7491,	-- For All To See
							["requireSkill"] = 165,	-- Leatherworking
							["races"] = HORDE_ONLY,
							["lvl"] = 60,
							["g"] = {
								recipe(19093),	-- Pattern: Onyxia Scale Cloak
								i(15769),	-- Onyxia Scale Cloak
							},
						}),
					},
				}),
				i(18705, {	-- Mature Black Dragon Sinew
					["questID"] = 7635,	-- A Proper String
					["classes"] = { 3 },	-- Hunter
					["lvl"] = 60,
					["groups"] = {
						i(18715),	-- Lok'delar, Stave of the Ancient Keepers
						i(18707, {	-- Ancient Rune Etched Stave
							i(18713),	-- Rhok'delar, Longbow of the Ancient Keepers
						}),
					},
				}),
				i(17966),	-- Onyxia Hide Backpack (Bag)
				i(17068),	-- Deathbringer
				i(17075),	-- Vis'kag the Bloodletter
				i(17067),	-- Ancient Cornerstone Grimoire
				i(16908),	-- Bloodfang Hood
				i(16939),	-- Dragonstalker's Helm
				i(16921),	-- Halo of Transcendence
				i(16963),	-- Helm of Wrath
				i(16947),	-- Helmet of Ten Storms
				i(16955),	-- Judgment Crown
				i(16929),	-- Nemesis Skullcap
				i(16914),	-- Netherwind Crown
				i(16900),	-- Stormrage Cover
				i(18205),	-- Eskhandar's Collar
				i(17078),	-- Sapphiron Drape
				i(18813),	-- Ring of Binding
				i(17064),	-- Shard of the Scale
			}),
		},
	}),
};