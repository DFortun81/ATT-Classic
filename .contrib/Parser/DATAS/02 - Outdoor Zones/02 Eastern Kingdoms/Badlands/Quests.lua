---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(BADLANDS, {	-- Badlands
			n(-17, {	-- Quests
				q(719, {	-- A Dwarf and His Tools
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(4978),	-- Ryedol's Hammer
					},
				}),
				q(720, { -- A Sign of Hope
					["provider"] = { "o", 2868 },	-- Crumpled Map
					["coord"] = { 53.0, 33.9, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(721, { -- A Sign of Hope
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
					["cost"] = {
						{ "i", 7847, 5 },	-- Buzzard Gizzard
						{ "i", 7846, 10 },	-- Crag Coyote Fang
						{ "i", 7848, 5 },	-- Rock Elemental Shard
					},
					["coord"] = { 2.6, 46, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 36,
				}),
				q(2203, {	-- Badlands Reagent Run II
					["sourceQuest"] = 2202,	-- Uldaman Reagent Run
					["qg"] = 6868,	-- Jarkal Mossmeld
					["cost"] = {
						{ "i", 7867, 3 },	-- Vessel of Dragon's Blood
					},
					["coord"] = { 2.6, 46, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["requireSkill"] = 171,	-- Alchemy
				}),
				q(703, {	-- Barbecued Buzzard Wings
					["lvl"] = 33,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2817,	-- Rigglefuzz
					["g"] = {
						i(4457),	-- Barbecued Buzzard Wing
						i(4609),	-- Recipe: Barbecued Buzzard Wing
					},
					["coord"] = { 42.39, 52.93, BADLANDS },
				}),
				q(782, {	-- Broken Alliances
					["qg"] = 1068,	-- Gorn
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(793, {	-- Broken Alliances
					["qg"] = 1068,	-- Gorn
					["sourceQuest"] = 782,	-- Broken Alliances
					["races"] = HORDE_ONLY,
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
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 26.0, 44.9, BADLANDS },
				}),
				q(1419, {	-- Coyote Thieves
					["qg"] = 5394,	-- Neeka Bloodscar
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(3821, {	-- Dreadmaul Rock
					["qg"] = 9082,	-- Thal'trak Proudtusk
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				}),
				q(706, {	-- Fiery Blaze Enchantments
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2860, -- Sigrun Ironhew
					["g"] = {
						i(5421),	-- Fiery Blaze Enchantment
					},
				}),
				{
					["questID"] = 1559,	-- Flash Bomb Recipe
					["sourceQuest"] = 705,	-- Pearl Diving
					["qg"] = 2817,	-- Rigglefuzz
					["coord"] = { 42.39, 52.93, BADLANDS },
					["requireSkill"] = 202,	-- Engineering
					["lvl"] = 30,
					["groups"] = {
						i(6672),	-- Schematic: Flash Bomb
					},
				},
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
					["g"] = {
						i(4984),	-- Skull of Impending Doom
					},
				}),
				q(714, {	-- Gyro... What?
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 26.0, 44.9, BADLANDS },
				}),
				{
					["questID"] = 1108,	-- Indurium
					["sourceQuest"] = 1106,	-- Martek the Exiled
					["coord"] = { 42.22, 52.69, BADLANDS },
					["qg"] = 4618,	-- Martek the Exiled
					["lvl"] = 28,
					["groups"] = {
						{
							["itemID"] = 5797,	-- Indurium Flake
							["questID"] = 1108,	-- Indurium
							["crs"] = {
								4851,	-- Stonevault Rockchewer
								4856,	-- Stonevault Cave Hunter
								2892,	-- Stonevault Seer
								2893,	-- Stonevault Bonesnapper
								2894,	-- Stonevault Shaman
								6733,	-- Stonevault Basher
							},
						},
					},
				},
				q(715, {	-- Liquid Stone
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2920,	-- Lucien Tosselwrench
					["coord"] = { 25.8, 44.2, BADLANDS },
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
				q(725, { -- Passing Word of a Threat
					["sourceQuest"] = 724,	-- Prospect of Faith
					["qg"] = 2916,	-- Historian Karnik
					["coord"] = { 77.5, 11.8, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(726, { -- Passing Word of a Threat
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
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(4086),	-- Flash Rifle
						i(5248),	-- Flash Wand
						i(4852),	-- Flash Bomb
					},
				}),
				{
					["questID"] = 2418,	-- Power Stones
					["coord"] = { 42.39, 52.93, BADLANDS },
					["maps"] = { ULDAMAN },
					["qg"] = 2817,	-- Rigglefuzz
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 8052,	-- An'Alleum Power Stone
							["questID"] = 2418,	-- Power Stones
							["crs"] = {
								4844,	-- Shadowforge Surveyor
								4845,	-- Shadowforge Ruffian
								4846,	-- Shadowforge Digger
								4847,	-- Shadowforge Relic Hunter
								4848,	-- Shadowforge Darkcaster
								4849,	-- Shadowforge Archaeologist
								7030,	-- Shadowforge Geologist
								7290,	-- Shadowforge Sharpshooter
								7091,	-- Shadowforge Ambusher
							},
						},
						{
							["itemID"] = 8009,	-- Dentrium Power Stone
							["questID"] = 2418,	-- Power Stones
							["crs"] = {
								4844,	-- Shadowforge Surveyor
								4845,	-- Shadowforge Ruffian
								4846,	-- Shadowforge Digger
								4847,	-- Shadowforge Relic Hunter
								4848,	-- Shadowforge Darkcaster
								4849,	-- Shadowforge Archaeologist
								7030,	-- Shadowforge Geologist
								7290,	-- Shadowforge Sharpshooter
								7091,	-- Shadowforge Ambusher
							},
						},
						i(9522),	-- Energized Stone Circle
						i(10358),	-- Duracin Bracers
						i(10359),	-- Everlast Boots
					},
				},
				q(723, { -- Prospect of Faith
					["sourceQuest"] = 722,	-- Amulet of Secrets
					["qg"] = 2909,	-- Hammertoe Grez
					["coord"] = { 37.94, 10.53, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(724, { -- Prospect of Faith
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
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["sourceQuest"] = 718, -- Mirages
					["g"] = {
						i(4652),	-- Salbac Shield
						i(4653),	-- Ironheel Boots
					},
					["coord"] = { 53.8, 43.3, BADLANDS },
				}),
				q(795, {	-- Seal of the Earth
					["lvl"] = 40,
					["races"] = HORDE_ONLY,
					["altQuests"] =	{
						793,	-- Broken Alliances
					},
					["repeatable"] = true,
					["description"] = "This quest is repeatable but can only be completed while \"Broken Alliances\" is in your quest log.",
				}),
				q(779, {	-- Seal of the Earth
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 2933,	-- Seal of the Earth
					["altQuests"] =	{
						717,	-- Tremors of the Earth
					},
					["repeatable"] = true,
					["description"] = "This quest is repeatable but can only be completed while \"Tremors of the Earth\" is in your quest log.",					
				}),
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
					["lvl"] = 35,
					["g"] = {
						i(4979),	-- Enchanted Stonecloth Bracers
					},
				}),
				q(712, {	-- Study of the Elements: Rock
					["lvl"] = 35,
				}),
				q(711, {	-- Study of the Elements: Rock
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
				}),
				q(710, {	-- Study of the Elements: Rock
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 26.0, 44.9, BADLANDS },
				}),
				q(708, {	-- The Black Box
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["u"] = 1,
				}),
				q(692, {	-- The Lost Fragments
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
					["maps"] = { IRONFORGE, UNDERCITY },
					["cost"] = {
						{ "i", 4646, 1 },	-- Star of Xil'yeh
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
					["lvl"] = 35,
				}),
				q(734, {	-- This Is Going to Be Hard
					["lvl"] = 35,
				}),
				q(778, {	-- This Is Going to Be Hard
					["lvl"] = 35,
					["g"] = {
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
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2888, -- Garek
					["sourceQuest"] = 732, -- Tremors of the Earth
					["g"] = {
						i(11193),	-- Blazewind Breastplate
						i(11194),	-- Prismscale Hauberk
						i(11195),	-- Warforged Chestplate
						i(11196),	-- Mindburst Medallion
					},
				}),
				q(732, {	-- Tremors of the Earth
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2888, -- Garek
					["sourceQuest"] = 718, -- Mirages
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