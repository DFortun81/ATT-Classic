-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(248, { 	-- Onyxia's Lair
		["description"] = "Onyxia is the daughter of the mighty dragon Deathwing, and sister of the scheming Nefarian, Lord of Blackrock Spire.\n\nIt is said that Onyxia delights in corrupting the mortal races by meddling in their political affairs. To this end it is believed that she takes on various humanoid forms and uses her charm and power to influence delicate matters between the different races. Some believe that Onyxia has even assumed an alias once used by her father - the title of the royal House Prestor. When not meddling in mortal concerns, Onyxia resides in a fiery cave below the Dragonmurk, a dismal swamp located within Dustwallow Marsh. There she is guarded by her kin, the remaining members of the insidious black dragonflight.",
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