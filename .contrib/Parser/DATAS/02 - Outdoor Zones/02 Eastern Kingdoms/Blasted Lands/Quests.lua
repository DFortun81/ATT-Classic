---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(BLASTED_LANDS, {	-- Blasted Lands
			n(-17, {	-- Quests
				q(2583, {	-- A Boar's Vitality
					["lvl"] = 45,
					["g"] = {
						i(8411),	-- Lung Juice Cocktail
					},
				}),
				q(3501, {	-- Everything Counts In Large Amounts
					["qg"] = 7363,	-- Kum'isha the Collector
					["lvl"] = 45,
					["cost"] = {
						{ "i", 10593, 1 },	-- Imperfect Draenethyst Fragment
					},
					["g"] = {
						i(12122),	-- Kum'isha's Junk
					},
				}),
				q(2602, {	-- Infallible Mind
					["lvl"] = 45,
					["repeatable"] = true,
					["qg"] = 7506,	-- Bloodmage Lynnore
					["g"] = {
						i(8423),	-- Cerebral Cortex Compound
					},
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
				}),
				q(2522, {	-- Kum'isha's Endeavors
					["qg"] = 7363,	-- Kum'isha the Collector
					["sourceQuest"] = 2521,	-- To Serve Kum'isha
					["cost"] = {
						{ "i", 8244, 1 },	-- Flawless Draenethyst Sphere
					},
					["repeatable"] = true,
					["lvl"] = 45,
					["g"] = {
						i(10752),	-- Emerald Encrusted Chest
					},
				}),
				q(3502, {	-- One Draenei's Junk...
					["qg"] = 7363,	-- Kum'isha the Collector
					["sourceQuest"] = 3501,	-- Everything Counts In Large Amounts
					["cost"] = {
						{ "i", 10593, 1 },	-- Imperfect Draenethyst Fragment
					},
					["repeatable"] = true,
					["lvl"] = 45,
					["g"] = {
						i(12122),	-- Kum'isha's Junk
					},
				}),
				q(2783, {	-- Petty Squabbles
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
				}),
				q(2582, {	-- Rage of Ages
					["lvl"] = 45,
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2581, -- Snickerfang Jowls
					["repeatable"] = true,
					["g"] = {
						i(8410),	-- R.O.I.D.S.
					},
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
				}),
				q(4128, {	-- Ragnar Thunderbrew
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9540,	-- Enohar Thunderbrew
					["isBreadcrumb"] = true,
				}),
				q(2993, {	-- Return to the Hinterlands
					["sourceQuest"] = 2992,	-- The Divination
					["qg"] = 8022,	-- Thadius Grimshade
					["coord"] = { 67.0, 19.4, BLASTED_LANDS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2586, {	-- Salt of the Scorpok
					["lvl"] = 45,
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2585, -- The Decisive Striker
					["repeatable"] = true,
					["g"] = {
						i(8412),	-- Ground Scorpok Assay
					},
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
				}),
				q(2581, {	-- Snickerfang Jowls
					["lvl"] = 45,
					["qg"] = 7505,	-- Bloodmage Drazial
					["g"] = {
						i(8410),	-- R.O.I.D.S.
					},
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
				}),
				q(2584, {	-- Spirit of the Boar
					["lvl"] = 45,
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2583, -- A Boar's Vitality
					["repeatable"] = true,
					["g"] = {
						i(8411),	-- Lung Juice Cocktail
					},
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
				}),
				q(2604, {	-- Spiritual Domination
					["lvl"] = 45,
					["repeatable"] = true,
					["qg"] = 7506,	-- Bloodmage Lynnore
					["g"] = {
						i(8424),	-- Gizzard Gum
					},
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
				}),
				q(2601, {	-- The Basilisk's Bite
					["lvl"] = 45,
					["qg"] = 7506,	-- Bloodmage Lynnore
					["g"] = {
						i(8423),	-- Cerebral Cortex Compound
					},
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
				}),
				q(2743, {	-- The Cover of Darkness
					["lvl"] = 45,
					["qg"] = 7729,	-- Spirit of Kirith
					["sourceQuest"] = 2721,	-- Kirith
				}),
				q(2585, {	-- The Decisive Striker
					["lvl"] = 45,
					["qg"] = 7505,	-- Bloodmage Drazial
					["g"] = {
						i(8412),	-- Ground Scorpok Assay
					},
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
				}),
				q(2992, {	-- The Divination
					["sourceQuest"] = 2991,	-- Nekrum's Medallion
					["provider"] = { "n", 8022 },	-- Thadius Grimshade
					["coord"] = { 67.0, 19.4, BLASTED_LANDS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2521, {	-- To Serve Kum'isha
					["qg"] = 7363,	-- Kum'isha the Collector
					["cost"] = {
						{ "i", 8244, 1 },	-- Flawless Draenethyst Sphere
					},
					["lvl"] = 45,
					["g"] = {
						i(10752),	-- Emerald Encrusted Chest
					},
				}),
				q(2603, {	-- Vulture's Vigor
					["lvl"] = 45,
					["qg"] = 7506,	-- Bloodmage Lynnore
					["g"] = {
						i(8424),	-- Gizzard Gum
					},
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
				}),
				q(3628, {	-- You Are Rakh'likh, Demon
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 3627,	-- Uniting the Shattered Amulet
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["lvl"] = 45,
					["g"] = {
						i(10778),	-- Necklace of Sanctuary
						i(10779),	-- Demon's Blood
						i(10959),	-- Demon Hide Sack
					},
				}),
			}),
		}),
	}),
};