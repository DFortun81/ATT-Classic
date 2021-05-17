---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BADLANDS, {
			n(QUESTS, {
				q(719, {	-- A Dwarf and His Tools
					["qg"] = 2910,	-- Prospector Ryedol <Explorers' League>
					["coord"] = { 53.4, 43.2, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4616, 1 },	-- Ryedol's Lucky Pick
					},
					["lvl"] = 35,
					["g"] = {
						i(4978),	-- Ryedol's Hammer
					},
				}),
				q(720, {	-- A Sign of Hope
					["provider"] = { "o", 2868 },	-- Crumpled Map
					["coord"] = { 53.0, 33.9, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(721, {	-- A Sign of Hope
					["sourceQuest"] = 720,	-- A Sign of Hope
					["qg"] = 2910,	-- Prospector Ryedol <Explorers' League>
					["coord"] = { 53.4, 43.4, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				{
					["questID"] = 722,	-- Amulet of Secrets
					["sourceQuest"] = 721,	-- A Sign of Hope
					["qg"] = 2909,	-- Hammertoe Grez
					["coord"] = { 37.94, 10.53, BADLANDS },
					["maps"] = { ULDAMAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 4635,	-- Hammertoe's Amulet
							["questID"] = 722,	-- Amulet of Secrets
							["qg"] = 2932,	-- Magregan Deepshadow
							["coord"] = { 38.0, 92.6, LOCH_MODAN },
							["races"] = ALLIANCE_ONLY,
						},
					},
				},
				{
					["questID"] = 762,	-- An Ambassador of Evil
					["sourceQuest"] = 726,	-- Passing Word of a Threat
					["qg"] = 2916,	-- Historian Karnik
					["cost"] = {
						{ "i", 4621, 1 },	-- Ambassador Infernus' Bracer
					},
					["coord"] = { 77.5, 11.8, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 4621,	-- Ambassador Infernus' Bracer
							["questID"] = 762,	-- An Ambassador of Evil
							["qg"] = 2745,	-- Ambassador Infernus
							["coord"] = { 42.1, 28.9, BADLANDS },
							["races"] = ALLIANCE_ONLY,
						},
						i(4987),	-- Dwarf Captain's Sword
					},
				},
				q(2258, {	-- Badlands Reagent Run
					["qg"] = 6868,	-- Jarkal Mossmeld
					["coord"] = { 2.6, 46, BADLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 7847, 5 },	-- Buzzard Gizzard
						{ "i", 7846, 10 },	-- Crag Coyote Fang
						{ "i", 7848, 5 },	-- Rock Elemental Shard
					},
					["lvl"] = 36,
				}),
				q(703, {	-- Barbecued Buzzard Wings
					["qg"] = 2817,	-- Rigglefuzz
					["coord"] = { 42.39, 52.93, BADLANDS },
					["cost"] = {
						{ "i", 3404, 4 },	-- Buzzard Wing
					},
					["lvl"] = 33,
					["g"] = {
						i(4457),	-- Barbecued Buzzard Wing
						i(4609),	-- Recipe: Barbecued Buzzard Wing
					},
				}),
				q(782, {	-- Broken Alliances
					["qg"] = 1068,	-- Gorn
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4640, 1 },	-- Sign of the Earth
					},
					["lvl"] = 40,
				}),
				q(793, {	-- Broken Alliances
					["qg"] = 1068,	-- Gorn
					["sourceQuest"] = 782,	-- Broken Alliances
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4615, 1 },	-- Blacklash's Bindings
						{ "i", 4645, 1 },	-- Chains of Hematus
					},
					["lvl"] = 40,
					["g"] = {
						i(11193),	-- Blazewind Breastplate
						i(11194),	-- Prismscale Hauberk
						i(11195),	-- Warforged Chestplate
						i(11196),	-- Mindburst Medallion
					},
				}),
				q(713, {	-- Coolant Heads Prevail
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 26.0, 44.9, BADLANDS },
					["lvl"] = 35,
				}),
				q(1419, {	-- Coyote Thieves
					["qg"] = 5394,	-- Neeka Bloodscar
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6166, 30 },	-- Coyote Jawbone
					},
					["lvl"] = 30,
				}),
				q(3821, {	-- Dreadmaul Rock
					["qg"] = 9082,	-- Thal'trak Proudtusk
					["coord"] = { 3.4, 48, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				}),
				q(706, {	-- Fiery Blaze Enchantments
					["qg"] = 2860,	-- Sigrun Ironhew
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4612, 1 },	-- Black Drake's Heart
					},
					["lvl"] = 40,
					["g"] = {
						i(5421),	-- Fiery Blaze Enchantment
					},
				}),
				q(737, {	-- Forbidden Knowledge
					["sourceQuests"] = {
						735,	-- To Ironforge for Yagyin's Digest
						736,	-- The Star, the Hand and the Heart
					},
					["qgs"] = {
						2786,	-- Gerrig Bonegrip
						2934,	-- Keeper Bel'dugur
					},
					["coords"] = {
						{ 50.8, 5.6, IRONFORGE },
						{ 53.7, 54.5, UNDERCITY },
					},
					["maps"] = { IRONFORGE, UNDERCITY },
					["lvl"] = 30,
					["cost"] = {
						{ "i", 4647, 1 },	-- Yagyin's Digest
					},
					["g"] = {
						i(4984),	-- Skull of Impending Doom
					},
				}),
				q(714, {	-- Gyro... What?
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 26.0, 44.9, BADLANDS },
					["cost"] = {
						{ "i", 4389, 1 },	-- Gyrochronatom
					},
					["lvl"] = 35,
				}),
				q(1108, {	-- Indurium
					["qg"] = 4618,	-- Martek the Exiled
					["sourceQuest"] = 1106,	-- Martek the Exiled
					["coord"] = { 42.22, 52.69, BADLANDS },
					["cost"] = {
						{ "i", 5797, 10 },	-- Indurium Flake
					},
					["lvl"] = 28,
				}),
				q(715, {	-- Liquid Stone
					["qg"] = 2920,	-- Lucien Tosselwrench
					["coord"] = { 25.8, 44.2, BADLANDS },
					["cost"] = {
						{ "i", 929, 1 },	-- Healing Potion
						{ "i", 3823, 1 },	-- Lesser Invisibility Potion
					},
					["lvl"] = 35,
					["g"] = {
						i(4624),	-- Recipe: Lesser Stoneshield Potion
						i(4623),	-- Lesser Stoneshield Potion
					},
				}),
				q(718, {	-- Mirages
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2860,	-- Sigrun Ironhew
					["coord"] = { 53.8, 43.3, BADLANDS },
				}),
				q(739, {	-- Murdaloc
					["provider"] = { "o", 2875 },	-- Battered Dwarven Skeleton
					["sourceQuest"] = 738,	-- Find Agmond
					["coord"] = { 50.89, 62.4, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(4983),	-- Rock Pulverizer
					},
				}),
				q(1137, {	-- News for Fizzle
					["qg"] = 4618,	-- Martek the Exiled
					["sourceQuest"] = 1108,	-- Indurium
					["coord"] = { 42.22, 52.69, BADLANDS },
					["maps"] = { THOUSAND_NEEDLES },
					["lvl"] = 28,
					["groups"] = {
						i(6729),	-- Fizzle's Zippy Lighter
						i(6732),	-- Gnomish Mechanic's Gloves
					},
				}),
				q(725, {	-- Passing Word of a Threat
					["sourceQuest"] = 724,	-- Prospect of Faith
					["qg"] = 2916,	-- Historian Karnik
					["coord"] = { 77.5, 11.8, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(726, {	-- Passing Word of a Threat
					["sourceQuest"] = 725,	-- Passing Word of a Threat
					["qg"] = 2918,	-- Advisor Belgrum
					["coord"] = { 77.3, 9.7, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(705, {	-- Pearl Diving
					["qg"] = 2817,	-- Rigglefuzz
					["coord"] = { 42.39, 52.93, BADLANDS },
					["maps"] = { STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4611, 9 },	-- Blue Pearl
					},
					["lvl"] = 30,
					["g"] = {
						i(4086),	-- Flash Rifle
						i(5248),	-- Flash Wand
						i(4852),	-- Flash Bomb
					},
				}),
				q(2418, {	-- Power Stones
					["qg"] = 2817,	-- Rigglefuzz
					["coord"] = { 42.39, 52.93, BADLANDS },
					["maps"] = { ULDAMAN },
					["cost"] = {
						{ "i", 8052, 8 },	-- An'Alleum Power Stone
						{ "i", 8009, 8 },	-- Dentrium Power Stone
					},
					["lvl"] = 30,
					["groups"] = {
						i(9522),	-- Energized Stone Circle
						i(10358),	-- Duracin Bracers
						i(10359),	-- Everlast Boots
					},
				}),
				q(723, {	-- Prospect of Faith
					["sourceQuest"] = 722,	-- Amulet of Secrets
					["qg"] = 2909,	-- Hammertoe Grez
					["coord"] = { 37.94, 10.53, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(724, {	-- Prospect of Faith
					["sourceQuest"] = 723,	-- Prospect of Faith
					["qg"] = 2909,	-- Prospector Ryedol
					["coord"] = { 53.4, 43.2, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				{
					["questID"] = 1360,	-- Reclaimed Treasures
					["qg"] = 6294,	-- Krom Stoutarm
					["coord"] = { 74.2, 9.4, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						{
							["itemID"] = 8027,	-- Krom Stoutarm's Treasure
							["questID"] = 1360,	-- Reclaimed Treasures
							["provider"] = { "o", 124389 },	-- Krom Stoutarm's Chest
							["coord"] = { 35.2, 97.4, LOCH_MODAN },
						},
					},
				},
				{
					["questID"] = 2342,	-- Reclaimed Treasures
					["qg"] = 5651,	-- Patrick Garrett
					["coord"] = { 62.3, 48.6, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						{
							["itemID"] = 8026,	-- Garrett Family Treasure
							["questID"] = 2342,	-- Reclaimed Treasures
							["provider"] = { "o", 124388 },	-- Garrett Family Chest
							["coord"] = { 33.9, 93.0, LOCH_MODAN },
						},
					},
				},
				q(1420, {	-- Report to Helgrum
					["qg"] = 5394,	-- Neeka Bloodscar
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(733, {	-- Scrounging
					["qg"] = 2860,	-- Sigrun Ironhew
					["sourceQuest"] = 718,	-- Mirages
					["coord"] = { 53.8, 43.3, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4630, 7 },	-- Scrap Metal
					},
					["lvl"] = 35,
					["g"] = {
						i(4652),	-- Salbac Shield
						i(4653),	-- Ironheel Boots
					},
				}),
				{
					["provider"] = { "o", 2933 },	-- Seal of the Earth
					["allianceQuestID"] = 779,	-- Seal of the Earth
					["hordeQuestID"] = 795,	-- Seal of the Earth
					["description"] = "This quest is repeatable but can only be completed while \"Broken Alliances\" (H) or \"Tremors of the Earth\" (A) is in your quest log.",
					["altQuests"] =	{
						793,	-- Broken Alliances
						717,	-- Tremors of the Earth
					},
					["cost"] = {
						{ "i", 4843, 1 },	-- Amethyst Runestone
						{ "i", 4845, 1 },	-- Diamond Runestone
						{ "i", 4844, 1 },	-- Opal Runestone
					},
					["repeatable"] = true,
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 4843,	-- Amethyst Runestone
							["allianceQuestID"] = 717,	-- Tremors of the Earth
							["hordeQuestID"] = 793,	-- Broken Alliances
							["coord"] = { 81.27, 64.29, BADLANDS },
						},
						{
							["itemID"] = 4845,	-- Diamond Runestone
							["allianceQuestID"] = 717,	-- Tremors of the Earth
							["hordeQuestID"] = 793,	-- Broken Alliances
							["coord"] = { 83.5, 32.9, BADLANDS },
						},
						{
							["itemID"] = 4844,	-- Opal Runestone
							["allianceQuestID"] = 717,	-- Tremors of the Earth
							["hordeQuestID"] = 793,	-- Broken Alliances
							["coord"] = { 72.38, 66.94, BADLANDS },
						},
						{
							["itemID"] = 4615,	-- Blacklash's Bindings
							["allianceQuestID"] = 717,	-- Tremors of the Earth
							["hordeQuestID"] = 793,	-- Broken Alliances
							["cr"] = 2757,	-- Blacklash
							["coord"] = { 82.6, 48.8, BADLANDS },
						},
						{	--
							["itemID"] = 4645,	-- Chains of Hematus
							["allianceQuestID"] = 717,	-- Tremors of the Earth
							["hordeQuestID"] = 793,	-- Broken Alliances
							["cr"] = 2759,	-- Hematus
							["coord"] = { 81.4, 50.6, BADLANDS },
						},
					},
				},
				q(709, {	-- Solution to Doom
					["qg"] = 2785,	-- Theldurin the Lost
					["coord"] = { 51.4, 76.9, BADLANDS },
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4631,	-- Tablet of Ryun'eh
							["questID"] = 709,	-- Solution to Doom
							["provider"] = { "o", 126260 },	-- Ancient Chest
							["coord"] = { 39.3, 18.8, BADLANDS },
						},
						i(4746),	-- Doomsayer's Robe
					},
				}),
				q(716, {	-- Stone Is Better than Cloth
					["qg"] = 2920,	-- Lucien Tosselwrench
					["sourceQuests"] = {
						714,	-- Gyro... What?
						712,	-- Study of the Elements: Rock
					},
					["coord"] = { 25.8, 44.4, BADLANDS },
					["cost"] = {
						{ "i", 2868, 1 },	-- Patterned Bronze Bracers
					},
					["lvl"] = 35,
					["g"] = {
						i(4979),	-- Enchanted Stonecloth Bracers
					},
				}),
				q(712, {	-- Study of the Elements: Rock
					["qg"] = 2921,	-- Lotwil Veriatus
					["sourceQuest"] = 711,	-- Study of the Elements: Rock
					["coord"] = { 25.8, 45, BADLANDS },
					["cost"] = {
						{ "i", 4628, 5 },	-- Bracers of Rock Binding
					},
					["lvl"] = 35,
				}),
				q(711, {	-- Study of the Elements: Rock
					["qg"] = 2921,	-- Lotwil Veriatus
					["sourceQuest"] = 710,	-- Study of the Elements: Rock
					["coord"] = { 25.8, 45, BADLANDS },
					["cost"] = {
						{ "i", 4627, 3 },	-- Large Stone Slab
					},
					["lvl"] = 35,
				}),
				q(710, {	-- Study of the Elements: Rock
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 25.8, 45, BADLANDS },
					["cost"] = {
						{ "i", 4626, 10 },	-- Small Stone Shard
					},
					["lvl"] = 35,
				}),
				un(NEVER_IMPLEMENTED, q(708, {	-- The Black Box
					["provider"] = { "i", 4613 },	-- Corroded Black Box
					["races"] = ALLIANCE_ONLY,
					["cr"] = 2931,	-- Zaricotl
					["lvl"] = 30,
				})),
				q(692, {	-- The Lost Fragments
					["qg"] = 2785,	-- Theldurin the Lost
					["sourceQuest"] = 687,	-- Theldurin the Lost
					["coord"] = { 51.4, 76.9, BADLANDS },
					["cost"] = {
						{ "i", 4519, 1 },	-- Crumpled Scroll Fragment
						{ "i", 4520, 1 },	-- Singed Scroll Fragment
						{ "i", 4518, 1 },	-- Torn Scroll Fragment
					},
					["lvl"] = 30,
				}),
				{	-- The Star, the Hand and the Heart
					["allianceQuestID"] = 735,	-- The Star, the Hand and the Heart
					["hordeQuestID"] = 736,	-- The Star, the Hand and the Heart
					["sourceQuests"] = {
						727,	-- To Ironforge for Yagyin's Digest
						728,	-- To the Undercity for Yagyin's Digest
					},
					["qgs"] = {
						2786,	-- Gerrig Bonegrip
						2934,	-- Keeper Bel'dugur
					},
					["coords"] = {
						{ 50.8, 5.6, IRONFORGE },
						{ 53.7, 54.5, UNDERCITY },
					},
					["maps"] = { IRONFORGE, UNDERCITY, ALTERAC_MOUNTAINS, DUSTWALLOW_MARSH, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4641, 1 },	-- Hand of Dagun
						{ "i", 4646, 1 },	-- Star of Xil'yeh
						{ "i", 4644, 1 },	-- The Legacy Heart
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4639,	-- Enchanted Sea Kelp
							["allianceQuestID"] = 735,	-- The Star, the Hand and the Heart
							["hordeQuestID"] = 736,	-- The Star, the Hand and the Heart
							["qg"] = 4363,	-- Mirefin Oracle
						},
						{
							["itemID"] = 4641,	-- Hand of Dagun
							["allianceQuestID"] = 735,	-- The Star, the Hand and the Heart
							["hordeQuestID"] = 736,	-- The Star, the Hand and the Heart
							["qg"] = 2937,	-- Dagun the Ravenous
							["cost"] = {
								{ "i", 4639, 1 },	-- Enchanted Sea Kelp
							},
							["coord"] = { 60.4, 12.2, DUSTWALLOW_MARSH },
						},
						{
							["itemID"] = 4644,	-- The Legacy Heart
							["allianceQuestID"] = 735,	-- The Star, the Hand and the Heart
							["hordeQuestID"] = 736,	-- The Star, the Hand and the Heart
							["qg"] = 1060,	-- Mogh the Undying <Skullsplitter Clan Witchdoctor>
							["coord"] = { 47.6, 44.2, STRANGLETHORN_VALE },
						},
						{
							["itemID"] = 4646,	-- Star of Xil'yeh
							["allianceQuestID"] = 735,	-- The Star, the Hand and the Heart
							["hordeQuestID"] = 736,	-- The Star, the Hand and the Heart
							["qg"] = 2417,	-- Grel'borg the Miser
							["coord"] = { 39.6, 51.8, ALTERAC_MOUNTAINS },
						},
						{
							["itemID"] = 4650,	-- Bel'dugur's Note
							["allianceQuestID"] = 735,	-- The Star, the Hand and the Heart
							["hordeQuestID"] = 736,	-- The Star, the Hand and the Heart
						},
						{
							["itemID"] = 4649,	-- Bonegrip's Note
							["allianceQuestID"] = 735,	-- The Star, the Hand and the Heart
							["hordeQuestID"] = 736,	-- The Star, the Hand and the Heart
						},
					},
				},
				q(777, {	-- This Is Going to Be Hard
					["qg"] = 2920,	-- Lucien Tosselwrench
					["sourceQuest"] = 734,	-- This Is Going to Be Hard
					["coord"] = { 25.8, 44.4, BADLANDS },
					["cost"] = {
						{ "i", 4846, 1 },	-- Cog #5
					},
					["lvl"] = 35,
				}),
				q(734, {	-- This Is Going to Be Hard
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 25.8, 45, BADLANDS },
					["lvl"] = 35,
				}),
				q(778, {	-- This Is Going to Be Hard
					["qg"] = 2921,	-- Lotwil Veriatus
					["sourceQuest"] = 777,	-- This Is Going to Be Hard
					["coord"] = { 25.8, 45, BADLANDS },
					["cost"] = {
						{ "i", 4847, 1 }	-- Lotwil's Shackles of Elemental Binding
					},
					["lvl"] = 35,
					["g"] = {
						{
							["itemID"] = 4847,	-- Lotwil's Shackles of Elemental Binding
							["questID"] = 778,	-- This Is Going to Be Hard
							["cr"] = 2919,	-- Fam'retor Guardian
							["coord"] = { 26.0, 46.6, BADLANDS },
						},
						i(2820),	-- Nifty Stopwatch
					},
				}),
				q(727, {	-- To Ironforge for Yagyin's Digest
					["sourceQuest"] = 709,	-- Solution to Doom
					["qg"] = 2785,	-- Theldurin the Lost
					["coord"] = { 51.4, 76.9, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(728, {	-- To the Undercity for Yagyin's Digest
					["sourceQuest"] = 709,	-- Solution to Doom
					["qg"] = 2785,	-- Theldurin the Lost
					["coord"] = { 51.4, 76.9, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(717, {	-- Tremors of the Earth
					["qg"] = 2888,	-- Garek
					["sourceQuest"] = 732,	-- Tremors of the Earth
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4615, 1 },	-- Blacklash's Bindings
						{ "i", 4645, 1 },	-- Chains of Hematus
					},
					["lvl"] = 40,
					["g"] = {
						
						i(11193),	-- Blazewind Breastplate
						i(11194),	-- Prismscale Hauberk
						i(11195),	-- Warforged Chestplate
						i(11196),	-- Mindburst Medallion
					},
				}),
				q(732, {	-- Tremors of the Earth
					["qg"] = 2888,	-- Garek
					["sourceQuest"] = 718,	-- Mirages
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4640, 1 },	-- Sign of the Earth
					},
					["lvl"] = 40,
				}),
				q(2202, {	-- Uldaman Reagent Run
					["sourceQuest"] = 2258,	-- Badlands Reagent Run
					["qg"] = 6868,	-- Jarkal Mossmeld
					["cost"] = {
						{ "i", 8047, 12 },	-- Magenta Fungus Cap
					},
					["coord"] = { 2.6, 46, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
			}),
		}),
	}),
};