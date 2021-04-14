---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BLASTED_LANDS, {
			n(QUESTS, {
				q(2583, {	-- A Boar's Vitality
					["qg"] = 7505,	-- Bloodmage Drazial
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["cost"] = {
						{ "i", 8392, 3 },	-- Blasted Boar Lung
						{ "i", 8393, 2 },	-- Scorpok Pincer
						{ "i", 8394, 1 },	-- Basilisk Brain
					},
					["lvl"] = 45,
					["g"] = {
						i(8411),	-- Lung Juice Cocktail
					},
				}),
				q(3501, {	-- Everything Counts In Large Amounts
					["qg"] = 7363,	-- Kum'isha the Collector
					["cost"] = {
						{ "i", 10593, 1 },	-- Imperfect Draenethyst Fragment
					},
					["lvl"] = 45,
					["g"] = {
						i(12122),	-- Kum'isha's Junk
					},
				}),
				q(2602, {	-- Infallible Mind
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8394, 10 },	-- Basilisk Brain
						{ "i", 8396, 2 },	-- Vulture Gizzard
					},
					["lvl"] = 45,
					["g"] = {
						i(8423),	-- Cerebral Cortex Compound
					},
				}),
				q(2522, {	-- Kum'isha's Endeavors
					["qg"] = 7363,	-- Kum'isha the Collector
					["sourceQuest"] = 2521,	-- To Serve Kum'isha
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8244, 1 },	-- Flawless Draenethyst Sphere
					},
					["lvl"] = 45,
					["g"] = {
						i(10752),	-- Emerald Encrusted Chest
					},
				}),
				q(3502, {	-- One Draenei's Junk...
					["qg"] = 7363,	-- Kum'isha the Collector
					["sourceQuest"] = 3501,	-- Everything Counts In Large Amounts
					["repeatable"] = true,
					["cost"] = {
						{ "i", 10593, 1 },	-- Imperfect Draenethyst Fragment
					},
					["lvl"] = 45,
					["g"] = {
						i(12122),	-- Kum'isha's Junk
					},
				}),
				q(2783, {	-- Petty Squabbles
					["qg"] = 7826,	-- Ambassador Ardalan
					["coord"] = { 67.6, 19.2, BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(2582, {	-- Rage of Ages
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2581,	-- Snickerfang Jowls
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8391, 3 },	-- Snickerfang Jowl
						{ "i", 8392, 2 },	-- Blasted Boar Lung
						{ "i", 8393, 1 },	-- Scorpok Pincer
					},
					["lvl"] = 45,
					["g"] = {
						i(8410),	-- R.O.I.D.S.
					},
				}),
				q(4128, {	-- Ragnar Thunderbrew
					["qg"] = 9540,	-- Enohar Thunderbrew
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(2993, {	-- Return to the Hinterlands
					["qg"] = 8022,	-- Thadius Grimshade
					["sourceQuest"] = 2992,	-- The Divination
					["coord"] = { 67.0, 19.4, BLASTED_LANDS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2586, {	-- Salt of the Scorpok
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2585,	-- The Decisive Striker
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8393, 3 },	-- Scorpok Pincer
						{ "i", 8396, 2 },	-- Vulture Gizzard
						{ "i", 8392, 1 },	-- Blasted Boar Lung
					},
					["lvl"] = 45,
					["g"] = {
						i(8412),	-- Ground Scorpok Assay
					},
				}),
				q(2581, {	-- Snickerfang Jowls
					["qg"] = 7505,	-- Bloodmage Drazial
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["cost"] = {
						{ "i", 8391, 3 },	-- Snickerfang Jowl
						{ "i", 8392, 2 },	-- Blasted Boar Lung
						{ "i", 8393, 1 },	-- Scorpok Pincer
					},
					["lvl"] = 45,
					["g"] = {
						i(8410),	-- R.O.I.D.S.
					},
				}),
				q(2584, {	-- Spirit of the Boar
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2583,	-- A Boar's Vitality
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8392, 3 },	-- Blasted Boar Lung
						{ "i", 8393, 2 },	-- Scorpok Pincer
						{ "i", 8394, 1 },	-- Basilisk Brain
					},
					["lvl"] = 45,
					["g"] = {
						i(8411),	-- Lung Juice Cocktail
					},
				}),
				q(2604, {	-- Spiritual Domination
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["repeatable"] = true,
					["lvl"] = 45,
					["g"] = {
						i(8424),	-- Gizzard Gum
					},
				}),
				q(7583, {	-- Suppression
					["qg"] = 14463,	-- Daio the Decrepit
					["coord"] = { 34, 50.2, BLASTED_LANDS },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18605, 1 },	-- Imprisoned Doomguard
						{ "i", 18601, 1 },	-- Glowing Crystal Prison
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["recipeID"] = 18540,	-- Ritual of Doom
							["classes"] = { WARLOCK },
						},
						i(18602),	-- Tome of Sacrifice
					},
				}),
				q(2601, {	-- The Basilisk's Bite
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["cost"] = {
						{ "i", 8394, 10 },	-- Basilisk Brain
						{ "i", 8396, 2 },	-- Vulture Gizzard
					},
					["lvl"] = 45,
					["g"] = {
						i(8423),	-- Cerebral Cortex Compound
					},
				}),
				q(2743, {	-- The Cover of Darkness
					["qg"] = 7729,	-- Spirit of Kirith
					["sourceQuest"] = 2721,	-- Kirith
					["lvl"] = 45,
				}),
				q(2585, {	-- The Decisive Striker
					["qg"] = 7505,	-- Bloodmage Drazial
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["cost"] = {
						{ "i", 8393, 3 },	-- Scorpok Pincer
						{ "i", 8396, 2 },	-- Vulture Gizzard
						{ "i", 8392, 1 },	-- Blasted Boar Lung
					},
					["lvl"] = 45,
					["g"] = {
						i(8412),	-- Ground Scorpok Assay
					},
				}),
				q(2992, {	-- The Divination
					["provider"] = { "n", 8022 },	-- Thadius Grimshade
					["sourceQuest"] = 2991,	-- Nekrum's Medallion
					["coord"] = { 67.0, 19.4, BLASTED_LANDS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7581, {	-- The Prison's Bindings
					["qg"] = 14463,	-- Daio the Decrepit
					["coord"] = { 34, 50.2, BLASTED_LANDS },
					["maps"] = { DIRE_MAUL },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18603, 15 },	-- Satyr Blood
					},
					["lvl"] = 60,
				}),
				q(7582, {	-- The Prison's Casing
					["qg"] = 14463,	-- Daio the Decrepit
					["coord"] = { 34, 50.2, BLASTED_LANDS },
					["maps"] = { WINTERSPRING },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18604, 5 },	-- Tears of the Hederine
					},
					["lvl"] = 60,
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
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["cost"] = {
						{ "i", 8396, 10 },	-- Vulture Gizzard
						{ "i", 8391, 2 },	-- Snickerfang Jowl
					},
					["lvl"] = 45,
					["g"] = {
						i(8424),	-- Gizzard Gum
					},
				}),
				q(3628, {	-- You Are Rakh'likh, Demon
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 3627,	-- Uniting the Shattered Amulet
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["cost"] = {
						{ "i", 10759, 1 },	-- Severed Horn of the Defiler
					},
					["lvl"] = 45,
					["g"] = {
						{
							["itemID"] = 10759,	-- Severed Horn of the Defiler
							["questID"] = 3628,	-- You Are Rakh'likh, Demon
							["cr"] = 7664,	-- Razelikh the Defiler
							["coord"] = { 47.6, 30.0, BLASTED_LANDS },
						},
						i(10778),	-- Necklace of Sanctuary
						i(10779),	-- Demon's Blood
						i(10959),	-- Demon Hide Sack
					},
				}),
			}),
		}),
	}),
};