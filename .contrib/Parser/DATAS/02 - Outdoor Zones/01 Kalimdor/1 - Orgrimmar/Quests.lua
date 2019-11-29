---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(ORGRIMMAR, {	-- Orgrimmar
			n(-17, {	-- Quests
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
				q(2981, {	-- A Threat in Feralas
					["lvl"] = 38,
					["races"] = HORDE_ONLY,
					["qg"] = 4485,	-- Belgrom Rockmaul
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
				q(1431, {	-- Alliance Relations
					["qg"] = 5639,	-- Craven Drok
					["coord"] = { 52.4, 44.6, ORGRIMMAR },
					["maps"] = { DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1432, {	-- Alliance Relations
					["qg"] = 5640,	-- Keldran
					["sourceQuest"] = 1431,	-- Alliance Relations
					["coord"] = { 22.4, 52.8, ORGRIMMAR },
					["maps"] = { DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(8917,	{ -- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16710, 1 },	-- Shadowcraft Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 4 },	-- Rogue
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22004),	-- Darkmantle Bracers
					},
				}),
				q(8916, {	-- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16697, 1 },	-- Devout Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 5 },	-- Priest
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22079),	-- Virtuous Bracers
					},
				}),
				q(8915,	{ -- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16683, 1 },	-- Magister's Bindings
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 8 },	-- Mage
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22063),	-- Sorcerer's Bindings
					},
				}),
				q(8920,	{ -- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16735, 1 },	-- Bracers of Valor
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 1 },	-- Warrior
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(21996),	-- Bracers of Heroism
					},
				}),
				q(8918,	{ -- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16722, 1 },	-- Lightforge Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 7 },	-- Shaman
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22095),	-- Bindings of The Five Thunders
					},
				}),
				q(8919,	{ -- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16703, 1 },	-- Dreadmist Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 9 },	-- Warlock
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22071),	-- Deathmist Bracers
					},
				}),
				q(8913,	{ -- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16714, 1 },	-- Wildheart Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 11 },	-- Druid
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22108),	-- Feralheart Bracers
					},
				}),
				q(8914, {	-- An Earnest Proposition
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16681, 1 },	-- Beaststalker's Bindings
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { 3 },	-- Hunter
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
					["groups"] = {
						i(22011),	-- Beastmaster's Bindings
					},
				}),
				q(9016, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22107),	-- Feralheart Boots
						i(22111),	-- Feralheart Kilt
					},
				}),
				q(9019, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22084),	-- Virtuous Sandals
						i(22085),	-- Virtuous Skirt
					},
				}),
				q(9017, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22061),	-- Beastmaster's Boots
						i(22017),	-- Beastmaster's Pants
					},
				}),
				q(9021, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22076),	-- Deathmist Sandals
						i(22072),	-- Deathmist Leggings
					},
				}),
				q(9018, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22064),	-- Sorcerer's Boots
						i(22067),	-- Sorcerer's Leggings
					},
				}),
				q(8957, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22096),	-- Boots of The Five Thunders
						i(22100),	-- Kilt of The Five Thunders
					},
				}),
				q(9020, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(22003),	-- Darkmantle Boots
						i(22007),	-- Darkmantle Pants
					},
				}),
				q(9022, {	-- Anthion's Parting Words
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16016,	-- Anthion Harmon
					["g"] = {
						i(21995),	-- Boots of Heroism
						i(22000),	-- Legplates of Heroism
					},
				}),
				q(936, {	-- Assisting Arch Druid Runetotem
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 6929,	-- Innkeeper Gryshka
				}),
				q(8998, {	-- Back to the Beginning
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["qg"] = 16033,	-- Bodley
				}),
				q(3506, {	-- Betrayed
					["lvl"] = 44,
					["races"] = HORDE_ONLY,
				}),
				q(3504, {	-- Betrayed
					["lvl"] = 44,
					["races"] = HORDE_ONLY,
					["qg"] = 4485,	-- Belgrom Rockmaul
				}),
				q(3505, {	-- Betrayed
					["lvl"] = 44,
					["races"] = HORDE_ONLY,
					["qg"] = 8576,	-- Ag'tor Bloodfist
				}),
				q(3507, {	-- Betrayed
					["lvl"] = 44,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(10709),	-- Pyrestone Orb
						i(11120),	-- Belgrom's Hammer
					},
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
				{
					["questID"] = 4511,	-- Calm Before the Storm (2/2)
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
				},
				q(1501, { -- Creature of the Void
					["lvl"] = 10,
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["qg"] = 5875, -- Gan'rul Bloodeye
					["sourceQuest"] = 1506, -- Gan'rul's Summons
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
					["qg"] = 6018,	-- Ur'kyo
					["coord"] = { 35.60, 87.77, ORGRIMMAR },
					["altQuests"] = {
						5653,
						5654,
						5655,
						5656,
						5657,
					},
					["class"] = PRIEST,
					["races"] = { TROLL },
					["lvl"] = 10
				}),
				--q(5726, {}),	-- Hidden Enemies [Ragefire Chasm.lua]
				--q(5727, {}),	-- Hidden Enemies [Ragefire Chasm.lua]
				--q(5729, {}),	-- Hidden Enemies [Ragefire Chasm.lua]
				--q(5730, {}),	-- Hidden Enemies [Ragefire Chasm.lua]
				q(4737, { -- In Search of Menara Voidrender
					["lvl"] = 31,
					["races"] = HORDE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 3326, -- Zevrost
				}),
				q(8938, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22010),	-- Beastmaster's Belt
						i(22015),	-- Beastmaster's Gloves
					},
				}),
				q(8942, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22098),	-- Cord of The Five Thunders
						i(22099),	-- Gauntlets of The Five Thunders
					},
				}),
				q(8943, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22070),	-- Deathmist Belt
						i(22077),	-- Deathmist Wraps
					},
				}),
				q(8939, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22062),	-- Sorcerer's Belt
						i(22066),	-- Sorcerer's Gloves
					},
				}),
				q(8941, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22006),	-- Darkmantle Gloves
						i(22002),	-- Darkmantle Belt
					},
				}),
				q(8940, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22078),	-- Virtuous Belt
						i(22081),	-- Virtuous Gloves
					},
				}),
				q(8927, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22106),	-- Feralheart Belt
						i(22110),	-- Feralheart Gloves
					},
				}),
				q(8944, {	-- Just Compensation
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(21994),	-- Belt of Heroism
						i(21998),	-- Gauntlets of Heroism
					},
				}),
				q(4967, { -- Knowledge of the Orb of Orahil
					["lvl"] = 35,
					["races"] = HORDE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 3326, -- Zevrost
				}),
				q(4494, {	-- March of the Silithid
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 7010,	-- Zilzibin Drumlore
				}),
				q(8978, {	-- Return to Mokvar
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
				}),
				q(81, {	-- Ripple Delivery
					["lvl"] = 42,
					["races"] = HORDE_ONLY,
				}),
				q(650, {	-- Ripple Recovery
					["lvl"] = 42,
					["races"] = HORDE_ONLY,
					["qg"] = 6987,	-- Malton Droffers
				}),
				q(649, {	-- Ripple Recovery
					["lvl"] = 42,
					["races"] = HORDE_ONLY,
					["qg"] = 6986,	-- Dran Droffers
				}),
				q(9008, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22013),	-- Beastmaster's Cap
						i(22060),	-- Beastmaster's Tunic
					},
				}),
				q(9010, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22005),	-- Darkmantle Cap
						i(22009),	-- Darkmantle Tunic
					},
				}),
				q(9012, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22074),	-- Deathmist Mask
						i(22075),	-- Deathmist Robe
					},
				}),
				q(9007, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22109),	-- Feralheart Cowl
						i(22113),	-- Feralheart Vest
					},
				}),
				q(9014, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22065),	-- Sorcerer's Crown
						i(22069),	-- Sorcerer's Robes
					},
				}),
				q(9009, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22080),	-- Virtuous Crown
						i(22083),	-- Virtuous Robe
					},
				}),
				q(9011, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(22097),	-- Coif of The Five Thunders
						i(22102),	-- Vest of The Five Thunders
					},
				}),
				q(9013, {	-- Saving the Best for Last
					["lvl"] = 58,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(21999),	-- Helm of Heroism
						i(21997),	-- Breastplate of Heroism
					},
				}),
				q(2996, { -- Seeking Strahad
					["lvl"] = 10,
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["qg"] = 5875, -- Gan'rul Bloodeye
					["isBreadcrumb"] = true,
				}),
				q(3631, { -- Summon Felsteed
					["lvl"] = 40,
					["races"] = HORDE_ONLY,
					["classes"] = { 9 },	-- Warlock
					["qg"] = 3326, -- Zevrost
				}),
				q(8276, {	-- Taking Back Silithus
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
					["qg"] = 15188,	-- Cenarion Emissary Blackhoof
					["u"] = 3,	-- Added in later phase
				}),
				q(235, {	-- The Ashenvale Hunt
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 10880,	-- Warcaller Gorlach
				}),
				q(1504, { -- The Binding
					["lvl"] = 10,
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["qg"] = 5875, -- Gan'rul Bloodeye
					["sourceQuest"] = 1501, -- Creature of the Void
				}),
				q(7926, {	-- The Darkmoon Faire
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 14843,	-- Kruban Darkblade
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7493, {	-- The Journey Has Just Begun
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
					["qg"] = 14392,	-- Overlord Runthak
				}),
				q(7784, {	-- The Lord of Blackrock
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
					["qg"] = 4949,	-- Thrall
					["coord"] = { 31.73, 37.81, ORGRIMMAR },
					["g"] = {
						i(19383),	-- Master Dragonslayer's Medallion
						i(19366),	-- Master Dragonslayer's Orb
						i(19384),	-- Master Dragonslayer's Ring
					},
				}),
				q(7783, {	-- The Lord of Blackrock
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
				}),
				q(1018, {	-- The New Frontier
					["lvl"] = 54,
					["races"] = HORDE_ONLY,
					["qg"] = 10880,	-- Warcaller Gorlach
				}),
				q(787, {	-- The New Horde
					["races"] = HORDE_ONLY,
					["qg"] = 3144,	-- Eitrigg
					["altQuests"] = {
						4641,	-- Your Place In The World
					},
				}),
				q(1963, {
					["qg"] = 6446,	-- Therzok
					["sourceQuest"] = 1859,	-- Therzok
					["coord"] = { 42.74, 53.52, ORGRIMMAR },
					["races"] = {
						2,	-- Orc
						8,	-- Troll
					},
					["classes"] = { 4 },	-- Rogue
					["lvl"] = 10,
				}),
				q(1146, {	-- The Swarm Grows
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 4485,	-- Belgrom Rockmaul
				}),
				q(7490, {	-- Victory for the Horde
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};