---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(ORGRIMMAR, {
			n(QUESTS, {
				q(7831, {	-- A Donation of Mageweave
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7835, {	-- A Donation of Mageweave
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7824, {	-- A Donation of Runecloth
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7836, {	-- A Donation of Runecloth
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7827, {	-- A Donation of Silk
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7834, {	-- A Donation of Silk
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7826, {	-- A Donation of Wool
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7833, {	-- A Donation of Wool
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7341, {	-- A Fair Trade
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["g"] = {
						i(18042),	-- Thorium Headed Arrow
					},
				}),
				q(7832, {	-- Additional Runecloth
					["qg"] = 14726,	-- Rashona Straglash
					["sourceQuest"] = 7824,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(7837, {	-- Additional Runecloth
					["qg"] = 14727,	-- Vehena
					["sourceQuest"] = 7836,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				un(PHASE_FIVE, q(8917,	{	-- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16710, 1 },	-- Shadowcraft Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22004),	-- Darkmantle Bracers
					},
				})),
				un(PHASE_FIVE, q(8916, {	-- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16697, 1 },	-- Devout Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { PRIEST },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22079),	-- Virtuous Bracers
					},
				})),
				un(PHASE_FIVE, q(8915,	{	-- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16683, 1 },	-- Magister's Bindings
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22063),	-- Sorcerer's Bindings
					},
				})),
				un(PHASE_FIVE, q(8920,	{	-- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16735, 1 },	-- Bracers of Valor
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(21996),	-- Bracers of Heroism
					},
				})),
				un(PHASE_FIVE, q(8918,	{	-- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16722, 1 },	-- Lightforge Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22095),	-- Bindings of The Five Thunders
					},
				})),
				un(PHASE_FIVE, q(8919,	{	-- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16703, 1 },	-- Dreadmist Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22071),	-- Deathmist Bracers
					},
				})),
				un(PHASE_FIVE, q(8913,	{	-- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16714, 1 },	-- Wildheart Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { DRUID },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22108),	-- Feralheart Bracers
					},
				})),
				un(PHASE_FIVE, q(8914, {	-- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16681, 1 },	-- Beaststalker's Bindings
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { HUNTER },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22011),	-- Beastmaster's Bindings
					},
				})),
				un(PHASE_FIVE, q(9016, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22107),	-- Feralheart Boots
						i(22111),	-- Feralheart Kilt
						i(22112),	-- Feralheart Spaulders
					},
				})),
				un(PHASE_FIVE, q(9019, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22084),	-- Virtuous Sandals
						i(22085),	-- Virtuous Skirt
						i(22082),	-- Virtuous Mantle
					},
				})),
				un(PHASE_FIVE, q(9017, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22061),	-- Beastmaster's Boots
						i(22017),	-- Beastmaster's Pants
						i(22016),	-- Beastmaster's Mantle
					},
				})),
				un(PHASE_FIVE, q(9021, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22076),	-- Deathmist Sandals
						i(22072),	-- Deathmist Leggings
						i(22073),	-- Deathmist Mantle
					},
				})),
				un(PHASE_FIVE, q(9018, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22064),	-- Sorcerer's Boots
						i(22067),	-- Sorcerer's Leggings
						i(22068),	-- Sorcerer's Mantle
					},
				})),
				un(PHASE_FIVE, q(8957, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22096),	-- Boots of The Five Thunders
						i(22100),	-- Kilt of The Five Thunders
						i(22101),	-- Pauldrons of The Five Thunders
					},
				})),
				un(PHASE_FIVE, q(9020, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22003),	-- Darkmantle Boots
						i(22007),	-- Darkmantle Pants
						i(22008),	-- Darkmantle Spaulders
					},
				})),
				un(PHASE_FIVE, q(9022, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(21995),	-- Boots of Heroism
						i(22000),	-- Legplates of Heroism
						i(22001),	-- Spaulders of Heroism
					},
				})),
				q(936, {	-- Assisting Arch Druid Runetotem
					["qg"] = 6929,	-- Innkeeper Gryshka
					["altQuests"] = {
						3762,	-- Assisting Arch Druid Runetotem
						3784, 	-- Assisting Arch Druid Runetotem
					},
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				un(PHASE_FIVE, q(8998, {	-- Back to the Beginning
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16033,	-- Bodley
				})),
				q(1508, {	-- Blind Cazul
					["lvl"] = 20,
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["qg"] = 5909,	-- Cazul
				}),
				q(4300, {	-- Bone-Bladed Weapons
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(11862),	-- White Bone Band
						i(11863),	-- White Bone Shredder
						i(11864),	-- White Bone Spear
					},
				}),
				q(4511, {	-- Calm Before the Storm (2/2)
					["sourceQuest"] = 4509,	-- Calm Before the Storm (1/2)
					["qg"] = 7010,	-- Zilzibin Drumlore
					["coord"] = { 56.4, 46.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(11870),	-- Oblivion Orb
						i(11871),	-- Snarkshaw Spaulders
						i(11872),	-- Eschewal Greaves
					},
				}),
				q(8254, {	-- Cenarion Aid
					["qg"] = 6018,	-- Ur'kyo <Priest Trainer>
					["coord"] = { 35.6, 87.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { PRIEST },
					["lvl"] = 50,
				}),
				q(1501, {	-- Creature of the Void
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["sourceQuest"] = 1506,	-- Gan'rul's Summons
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["maps"] = { DUROTAR },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6535, 1 },	-- Tablet of Verga
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6535,	-- Tablet of Verga
							["questID"] = 1501,	-- Creature of the Void
							["coord"] = { 51.6, 9.7, DUROTAR },
						},
					},
				}),
				q(2458, {	-- Deep Cover
					["lvl"] = 20,
					["qg"] = 3401,	-- Shenthul
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["sourceQuest"] = 2460,	-- The Shattered Salute
				}),
				q(1507, {	-- Devourer of Souls
					["qg"] = 5875,	-- Dan'rul Bloodeye
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["description"] = "Completing this quest (1507) prevents you from completing the quest in Orgrimmar also named Devourer of Souls (1472).",
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(8410, {	-- Elemental Mastery
					["qg"] = 5892,	-- Searn Firewarder
					["coord"] = { 38.0, 37.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["lvl"] = 50,
					["cost"] = {
						{ "i", 7067, 1 },	-- Elemental Earth
						{ "i", 7068, 1 },	-- Elemental Fire
						{ "i", 7069, 1 },	-- Elemental Air
						{ "i", 7070, 1 },	-- Elemental Water
					},
				}),
				q(7491, {	-- For All To See
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(18406),	-- Onyxia Blood Talisman
						i(18403),	-- Dragonslayer's Signet
						i(18404),	-- Onyxia Tooth Pendant
					},
				}),
				q(5652, {	-- Hex of Weakness
					["qgs"] = {
						3706,	-- Tai'jin <Priest Trainer>
						4606,	-- Aelthalyste
						6018,	-- Ur'kyo <Priest Trainer>
					},
					["coords"] = {
						{ 54.2, 42.8, DUROTAR },
						{ 49.01, 18.32, UNDERCITY },
						{ 35.6, 87.6, ORGRIMMAR },
					},
					["altQuests"] = {
						5653,	-- Hex of Weakness (NYI)
						5654,	-- Hex of Weakness (Durotar, unused)
						5655,	-- Hex of Weakness (Durotar)
						5656,	-- Hex of Weakness (Undercity)
						5657,	-- Hex of Weakness (Orgrimmar, unused)
					},
					["maps"] = { DUROTAR, UNDERCITY },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 10,
					["groups"] = {
						recipe(9035),	-- Hex of Weakness
					},
				}),
				q(2479, {	-- Hinott's Assistance
					["lvl"] = 20,
					["qg"] = 3401,	-- Shenthul
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["sourceQuest"] = 2478,	-- Mission: Possible But Not Probable
				}),
				q(4737, {	-- In Search of Menara Voidrender
					["lvl"] = 31,
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["qg"] = 3326,	-- Zevrost
				}),
				un(PHASE_FIVE, q(8938, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22010),	-- Beastmaster's Belt
						i(22015),	-- Beastmaster's Gloves
					},
				})),
				un(PHASE_FIVE, q(8942, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22098),	-- Cord of The Five Thunders
						i(22099),	-- Gauntlets of The Five Thunders
					},
				})),
				un(PHASE_FIVE, q(8943, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22070),	-- Deathmist Belt
						i(22077),	-- Deathmist Wraps
					},
				})),
				un(PHASE_FIVE, q(8939, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22062),	-- Sorcerer's Belt
						i(22066),	-- Sorcerer's Gloves
					},
				})),
				un(PHASE_FIVE, q(8941, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22006),	-- Darkmantle Gloves
						i(22002),	-- Darkmantle Belt
					},
				})),
				un(PHASE_FIVE, q(8940, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22078),	-- Virtuous Belt
						i(22081),	-- Virtuous Gloves
					},
				})),
				un(PHASE_FIVE, q(8927, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22106),	-- Feralheart Belt
						i(22110),	-- Feralheart Gloves
					},
				})),
				un(PHASE_FIVE, q(8944, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(21994),	-- Belt of Heroism
						i(21998),	-- Gauntlets of Heroism
					},
				})),
				q(1945, {	-- Laughing Sisters
					["qg"] = 5885,	-- Deino <Mage Trainer>
					["sourceQuest"] = 1944,	-- Waters of Xavian
					["coord"] = { 38.6, 86.0, ORGRIMMAR },
					["maps"] = { ASHENVALE },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7270, 12 },	-- Laughing Sister's Hair
					},
					["lvl"] = 15,
				}),
				q(8250, {	-- Magecraft
					["qg"] = 7311,	-- Uthel'nay <Mage Trainer>
					["coord"] = { 39.0, 86.0, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 50,
				}),
				q(4494, {	-- March of the Silithid
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 7010,	-- Zilzibin Drumlore
				}),
				q(7562, {	-- Mor'zul Bloodbringer
					["qg"] = 5815,	-- Kurgul <Demon Trainer>
					["coord"] = { 47.6, 46.8, ORGRIMMAR },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(1509, {	-- News of Dogran (1/2)
					["lvl"] = 20,
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["qg"] = 5910,	-- Zankaja
					["sourceQuest"] = 1508,	-- Blind Cazul
				}),
				q(1959, {	-- Report to Anastasia
					["qg"] = 7311,	-- Uthel'nay <Mage Trainer>
					["coord"] = { 39.0, 86.0, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				un(PHASE_FIVE, q(8978, {	-- Return to Mokvar
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
				})),
				q(649, {	-- Ripple Recovery
					["qg"] = 6986,	-- Dran Droffers
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(650, {	-- Ripple Recovery
					["qg"] = 6987,	-- Malton Droffers
					["sourceQuest"] = 649,	-- Ripple Recovery
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				un(PHASE_FIVE, q(9008, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22013),	-- Beastmaster's Cap
						i(22060),	-- Beastmaster's Tunic
					},
				})),
				un(PHASE_FIVE, q(9010, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22005),	-- Darkmantle Cap
						i(22009),	-- Darkmantle Tunic
					},
				})),
				un(PHASE_FIVE, q(9012, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22074),	-- Deathmist Mask
						i(22075),	-- Deathmist Robe
					},
				})),
				un(PHASE_FIVE, q(9007, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22109),	-- Feralheart Cowl
						i(22113),	-- Feralheart Vest
					},
				})),
				un(PHASE_FIVE, q(9014, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22065),	-- Sorcerer's Crown
						i(22069),	-- Sorcerer's Robes
					},
				})),
				un(PHASE_FIVE, q(9009, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22080),	-- Virtuous Crown
						i(22083),	-- Virtuous Robe
					},
				})),
				un(PHASE_FIVE, q(9011, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22097),	-- Coif of The Five Thunders
						i(22102),	-- Vest of The Five Thunders
					},
				})),
				un(PHASE_FIVE, q(9013, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(21999),	-- Helm of Heroism
						i(21997),	-- Breastplate of Heroism
					},
				})),
				q(2996, {	-- Seeking Strahad
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1943, {	-- Speak with Deino
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85, 10.2, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 26,
				}),
				q(3631, {	-- Summon Felsteed
					["lvl"] = 40,
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["qg"] = 3326,	-- Zevrost
				}),
				q(235, {	-- The Ashenvale Hunt
					["qg"] = 10880,	-- Warcaller Gorlach
					["coord"] = { 46.6, 64.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["altQuests"] = {
						6383,	-- The Ashenvale Hunt
					},
					["lvl"] = 20,
				}),
				q(1504, {	-- The Binding
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["sourceQuest"] = 1501,	-- Creature of the Void
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["cr"] = 5676,	-- Summoned Voidwalker
					["cost"] = {
						{ "i", 7464, 1 },	-- Glyphs of Summoning
					},
					["lvl"] = 10,
					["groups"] = {
						recipe(697),	-- Summon Voidwalker
					},
				}),
				q(1513, {	-- The Binding (Succubus)
					["lvl"] = 20,
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["sourceQuest"] = 1512,	-- Love's Gift
					["g"] = {
						i(22243),	-- Small Soul Pouch
					},
				}),
				q(8151, {	-- The Hunter's Charm
					["qgs"] = {
						3352,	-- Ormak Grimshot <Hunter Trainer>
						3406,	-- Xor'juul <Hunter Trainer>
					},
					["coord"] = { 66.2, 18.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { HUNTER },
					["lvl"] = 50,
				}),
				q(787, {	-- The New Horde
					["races"] = HORDE_ONLY,
					["qg"] = 3144,	-- Eitrigg
					["altQuests"] = {
						4641,	-- Your Place In The World
					},
				}),
				q(1963, {	-- The Shattered Hand
					["qg"] = 6446,	-- Therzok
					["sourceQuest"] = 1859,	-- Therzok
					["coord"] = { 42.74, 53.52, ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(2460, {	-- The Shattered Salute
					["lvl"] = 20,
					["qg"] = 3401,	-- Shenthul
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
				}),
				q(1146, {	-- The Swarm Grows
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 4485,	-- Belgrom Rockmaul
				}),
				q(1944, {	-- Waters of Xavian
					["qg"] = 5885,	-- Deino <Mage Trainer>
					["sourceQuest"] = 1943,	-- Speak with Deino
					["coord"] = { 38.6, 86.0, ORGRIMMAR },
					["maps"] = { ASHENVALE },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7268, 1 },	-- Xavian Water Sample
					},
					["lvl"] = 26,
					["groups"] = {
						{
							["itemID"] = 7269,	-- Deino's Flask
							["coord"] = { 76, 41, ASHENVALE },
							["groups"] = {
								{
									["itemID"] = 7268,	-- Xavian Water Sample
									["questID"] = 1944,	-- Waters of Xavian
								},
							},
						},
					},
				}),
				q(2382, {	-- Wrenix of Ratchet
					["qg"] = 3402,	-- Zando'zan
					["sourceQuest"] = 2379,	-- Zando'zan
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
				q(2379, {	-- Zando'zan
					["qg"] = 3401,	-- Shenthul
					["sourceQuests"] = {
						2378,	-- Find the Shattered Hand
						2380,	-- To Orgrimmar!
					},
					["coord"] = { 43, 53.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
			}),
		}),
	}),
};
