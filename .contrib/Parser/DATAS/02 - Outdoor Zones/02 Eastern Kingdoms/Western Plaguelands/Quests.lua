---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(WESTERN_PLAGUELANDS, {	-- Western Plaguelands
			n(-17, {	-- Quests
				q(5095, {	-- A Call to Arms: The Plaguelands!
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 10881,	-- Bluff Runner Windstrider
				}),
				q(5093, {	-- A Call to Arms: The Plaguelands!
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 10880,	-- Warcaller Gorlach
				}),
				q(5094, {	-- A Call to Arms: The Plaguelands!
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 10879,	-- Harbinger Balthazad
				}),
				q(4971, {	-- A Matter of Time
					["lvl"] = 53,
					["qg"] = 10667,	-- Chromie
					["g"] = {
						i(15812),	-- Orchid Amice
						i(15813),	-- Gold Link Belt
					},
				}),
				q(5903, {	-- A Plague Upon Thee
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11616,	-- Nathaniel Dumah
				}),
				q(5904, {	-- A Plague Upon Thee
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11616,	-- Nathaniel Dumah
					["sourceQuest"] = 5903,	-- A Plague Upon Thee
				}),
				q(6389, {	-- A Plague Upon Thee
					["lvl"] = 48,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 177491 },	-- Termite Barrel
					["sourceQuest"] = 5904,	-- A Plague Upon Thee
				}),
				q(6390, {	-- A Plague Upon Thee
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["provider"] = { "o", 177491 },	-- Termite Barrel
					["sourceQuest"] = 5902,	-- A Plague Upon Thee
				}),
				q(5153, {	-- A Strange Historian
					["lvl"] = 50,
					["qg"] = 10927,	-- Marlene Redpath
					["sourceQuest"] = 5152,	-- Auntie Marlene
				}),
				q(211, {	-- Alas, Andorhal
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["g"] = {
						i(17759),	-- Mark of Resolution
					},
				}),
				q(105, {	-- Alas, Andorhal
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(17759),	-- Mark of Resolution
					},
				}),
				q(5097, {	-- All Along the Watchtowers (A)
					["lvl"] = 50,
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 5092,	-- Clear The Way
				}),
				q(5098, {	-- All Along the Watchtowers (H)
					["lvl"] = 50,
					["qg"] = 10837,	-- High Executor Derrington
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 5096,	-- Scarlet Diversions
				}),
				q(5803, {	-- Araj's Scarab
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11056,	-- Alchemist Arbington
					["sourceQuest"] = 5801,	-- Fire Plume Forged
				}),
				q(5804, {	-- Araj's Scarab
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
				}),
				q(5401, {	-- Argent Dawn Commission
					["lvl"] = 50,
					["qg"] = 10840,	-- Argent Officer Pureheart
					["g"] = {
						i(12846),	-- Argent Dawn Commission
					},
				}),
				q(5405, {	-- Argent Dawn Commission
					["lvl"] = 50,
					["qg"] = 10839,	-- Argent Officer Garush
					["g"] = {
						i(12846),	-- Argent Dawn Commission
					},
				}),
				q(5023, {	-- Better Late Than Never
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(5022, {	-- Better Late Than Never
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
				}),
				q(5021, {	-- Better Late Than Never
					["lvl"] = 50,
				}),
				q(5166, {	-- Breastplate of the Chromatic Flight
					["lvl"] = 57,
					--["objectID"] = 176192,	-- Catalogue of the Wayward
					["sourceQuest"] = 5164,	-- Catalogue of the Wayward
					["g"] = {
						i(12895),	-- Breastplate of the Chromatic Flight
					},
				}),
				q(5210, {	-- Brother Carlin
					["lvl"] = 50,
					["qg"] = 10667,	-- Chromie
					["sourceQuest"] = 5154,	-- The Annals of Darrowshire
				}),
				q(5164, {	-- Catalogue of the Wayward
					["lvl"] = 57,
					["qg"] = 10976,	-- Jeziba
					["sourceQuest"] = 5162,	-- Wrath of the Blue Flight
				}),
				q(5524, {	-- Chromatic Mantle of the Dawn
					["lvl"] = 55,
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["repeatable"] = true,	-- need to check and make sure 5521 is the first one and 5524 is the repeatable one
					["g"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				}),
				q(5521, {	-- Chromatic Mantle of the Dawn
					["lvl"] = 55,
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["g"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				}),
				q(5092, {	-- Clear the Way
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10838,	-- Commander Ashlam Valorfist
				}),
				q(5406, {	-- Corruptor's Scourgestones
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 10839,	-- Argent Officer Garush
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5404, {	-- Corruptor's Scourgestones
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["qg"] = 10840,	-- Argent Officer Pureheart
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(4972, {	-- Counting Out Time
					["lvl"] = 53,
					["g"] = {
						i(12650),	-- Attuned Dampener
					},
				}),
				q(4973, {	-- Counting Out Time
					["lvl"] = 53,
					["repeatable"] = true,
					["g"] = {
						i(12650),	-- Attuned Dampener
					},
				}),
				q(5221, {	-- Dalson's Tears Cauldron
					["lvl"] = 50,
					["repeatable"] = true,
				}),
				q(5218, {	-- Felstone Field Cauldron
					["lvl"] = 50,
					["repeatable"] = true,
				}),
				q(5227, {	-- Gahrron's Withering Cauldron
					["lvl"] = 50,
					["repeatable"] = true,
				}),
				q(4986, {	-- Glyphed Oaken Branch (A)
					["lvl"] = 51,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10739,	-- Mulgris Deepriver
					["g"] = {
						i(15804),	-- Cerise Drape
					},
				}),
				q(4987, {	-- Glyphed Oaken Branch (H)
					["lvl"] = 51,
					["races"] = HORDE_ONLY,
					["qg"] = 10739,	-- Mulgris Deepriver
					["g"] = {
						i(15804),	-- Cerise Drape
					},
				}),
				q(5050, {	-- Good Luck Charm
					["lvl"] = 50,
				}),
				q(5944, {	-- In Dreams
					["lvl"] = 52,
					["qg"] = 1842,	-- Highlord Taelan Fordring
					["g"] = {
						i(15411),	-- Mark of Fordring
						i(15413),	-- Ornate Adamantium Breastplate
						i(15418),	-- Shimmering Platinum Warhammer
						i(15421),	-- Shroud of the Exile
						i(16058),	-- Fordring's Seal
					},
				}),
				q(5407, {	-- Invader's Scourgestones
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 10839,	-- Argent Officer Garush
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5403, {	-- Invader's Scourgestones
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["qg"] = 10840,	-- Argent Officer Pureheart
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5167, {	-- Legplates of the Chromatic Defier
					["lvl"] = 57,
					["sourceQuest"] = 5164,	-- Catalogue of the Wayward
					["g"] = {
						i(12903),	-- Legguards of the Chromatic Defier
						i(12945),	-- Legplates of the Chromatic Defier
					},
				}),
				q(5059, {	-- Locked Away
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
				}),
				q(5060, {	-- Locked Away
					["lvl"] = 52,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(13474),	-- Farmer Dalson's Shotgun
						i(13475),	-- Dalson Family Wedding Ring
					},
				}),
				q(5507, {	-- Mantles of the Dawn
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
				}),
				q(5504, {	-- Mantles of the Dawn
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 10856,	-- Argent Quartermaster Hasana
				}),
				q(5408, {	-- Minion's Scourgestones
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["qg"] = 10839,	-- Argent Officer Garush
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5402, {	-- Minion's Scourgestones
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["qg"] = 10840,	-- Argent Officer Pureheart
					["g"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5238, {	-- Mission Accomplished!
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["g"] = {
						i(15801),	-- Valiant Shortsword
						i(15800),	-- Intrepid Shortsword
						i(15799),	-- Heroic Commendation Medal
					},
				}),
				q(5237, {	-- Mission Accomplished!
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 10837,	-- High Executor Derrington
					["g"] = {
						i(15801),	-- Valiant Shortsword
						i(15800),	-- Intrepid Shortsword
						i(15799),	-- Heroic Commendation Medal
					},
				}),
				q(5538, {	-- Mold Rhymes With... (A)
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11056,	-- Alchemist Arbington
					["sourceQuest"] = 5537,	-- Skeletal Fragments
				}),
				q(5514, {	-- Mold Rhymes With... (H)
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 11057,	-- Apothecary Dithers
					["sourceQuest"] = 964,	-- Skeletal Fragments
				}),
				q(5058, {	-- Mrs. Dalson's Diary
					["lvl"] = 52,
				}),
				q(5223, {	-- Return to Chillwind Camp
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 176393,	-- Scourge Cauldron
				}),
				q(5217, {	-- Return to Chillwind Camp
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 176361,	-- Scourge Cauldron
				}),
				q(5220, {	-- Return to Chillwind Camp
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 177289,	-- Scourge Cauldron
				}),
				q(5226, {	-- Return to Chillwind Camp
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 176392,	-- Scourge Cauldron
				}),
				q(5232, {	-- Return to the Bulwark
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(5234, {	-- Return to the Bulwark
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(5230, {	-- Return to the Bulwark
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(5236, {	-- Return to the Bulwark
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					--["objectID"] = 176392,	-- Scourge Cauldron
				}),
				q(5096, {	-- Scarlet Diversions
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 10837,	-- High Executor Derrington
					["g"] = {
						i(12814),	-- Flame in a Bottle
					},
				}),
				q(5862, {	-- Scarlet Subterfuge
					["lvl"] = 52,
				}),
				q(5533, {	-- Scholomance
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 5097,	-- All Along The Watchtowers
				}),
				q(838, {	-- Scholomance
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 5098,	-- All Along The Watchtowers
				}),
				q(5537, {	-- Skeletal Fragments
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11056,	-- Alchemist Arbington
					["sourceQuest"] = 5533,	-- Scholomance
				}),
				q(964, {	-- Skeletal Fragments
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 11057,	-- Apothecary Dithers
					["sourceQuest"] = 838,	-- Scholomance
				}),
				q(5219, {	-- Target: Dalson's Tears
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11053,	-- High Priestess MacDonnell
				}),
				q(5231, {	-- Target: Dalson's Tears
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(5216, {	-- Target: Felstone Field
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11053,	-- High Priestess MacDonnell
				}),
				q(5229, {	-- Target: Felstone Field
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(5225, {	-- Target: Gahrron's Withering
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11053,	-- High Priestess MacDonnell
				}),
				q(5235, {	-- Target: Gahrron's Withering
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(5222, {	-- Target: Writhing Haunt
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11053,	-- High Priestess MacDonnell
				}),
				q(5233, {	-- Target: Writhing Haunt
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(5154, {	-- The Annals of Darrowshire
					["lvl"] = 50,
					["qg"] = 10667,	-- Chromie
					["sourceQuest"] = 5153,	-- A Strange Historian
				}),
				q(6186, {	-- The Blightcaller Cometh
					["lvl"] = 56,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 12425,	-- Flint Shadowmore <SI:7>
					["sourceQuest"] = 6185,	-- The Eastern Plagues
				}),
				q(6185, {	-- The Eastern Plagues
					["lvl"] = 56,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 12425,	-- Flint Shadowmore <SI:7>
					["sourceQuest"] = 6184,	-- Flint Shadowmore
				}),
				q(5505, {	-- The Key to Scholomance (A)
					["lvl"] = 55,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11056,	-- Alchemist Arbington
					["sourceQuest"] = 5803,	-- Araj's Scarab
					["g"] = {
						i(13704),	-- Skeleton Key
					},
				}),
				q(5511, {	-- The Key to Scholomance (H)
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 11057,	-- Apothecary Dithers
					["sourceQuest"] = 5804,	-- Araj's Scarab
					["g"] = {
						i(13704),	-- Skeleton Key
					},
				}),
				q(5215, {	-- The Scourge Cauldrons
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10838,	-- Commander Ashlam Valorfist
				}),
				q(5228, {	-- The Scourge Cauldrons
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
				}),
				q(4985, {	-- The Wildlife Suffers Too
					["lvl"] = 51,
					["races"] = HORDE_ONLY,
				}),
				q(4984, {	-- The Wildlife Suffers Too
					["lvl"] = 51,
					["qg"] = 10739,	-- Mulgris Deepriver
				}),
				q(5051, {	-- Two Halves Become One
					["lvl"] = 50,
					["g"] = {
						i(13473),	-- Felstone Good Luck Charm
						i(12722),	-- Good Luck Other-Half-Charm
					},
				}),
				q(6004, {	-- Unfinished Business
					["lvl"] = 50,
					["qg"] = 11610,	-- Kirsta Deepshadow
				}),
				q(6023, {	-- Unfinished Business
					["lvl"] = 50,
					["qg"] = 11610,	-- Kirsta Deepshadow
					["sourceQuest"] = 6004,	-- Unfinished Business
				}),
				q(6025, {	-- Unfinished Business
					["lvl"] = 50,
					["qg"] = 11610,	-- Kirsta Deepshadow
					["sourceQuest"] = 6023,	-- Unfinished Business
				}),
				q(5224, {	-- Writhing Haunt Cauldron
					["lvl"] = 50,
					["repeatable"] = true,
				}),
			}),
		}),
	}),
};