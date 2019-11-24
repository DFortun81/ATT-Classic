---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(TIRISFAL_GLADES, {	-- Tirisfal Glades
			n(-17, {	-- Quests
				q(361, {	-- A Letter Undelivered
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
				}),
				q(492, {	-- A New Plague
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 1518,	-- Apothecary Johaan
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
				}),
				q(369, {	-- A New Plague
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 1518,	-- Apothecary Johaan
					["g"] = {
						i(3442),	-- Apprentice Sash
					},
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
				}),
				q(368, {	-- A New Plague
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 1518,	-- Apothecary Johaan
					["g"] = {
						i(3434),	-- Slumber Sand
					},
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
				}),
				q(367, {	-- A New Plague
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 1518,	-- Apothecary Johaan
					["g"] = {
						i(3382),	-- Weak Troll's Blood Potion
					},
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
				}),
				q(5901, {	-- A Plague Upon Thee
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["qg"] = 11615,	-- Mickey Levine
				}),
				q(5902, {	-- A Plague Upon Thee
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["qg"] = 11615,	-- Mickey Levine
					["sourceQuest"] = 5901,	-- A Plague Upon Thee
				}),
				q(404, {	-- A Putrid Task
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 1496,	-- Deathguard Dillinger
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
				}),
				q(590, {	-- A Rogue's Deal
					["races"] = HORDE_ONLY,
				}),
				q(8, {	-- A Rogue's Deal
					["races"] = HORDE_ONLY,
					["qg"] = 6784,	-- Calvin Montague
					["g"] = {
						i(4604),	-- Forest Mushroom Cap
						i(159),	-- Refreshing Spring Water
					},
					["coord"] = { 38.2, 56.8, TIRISFAL_GLADES },
				}),
				q(1821, {	-- Agamand Heirlooms
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuests"] = {
						1820,	-- Speak with Coleman
					},
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["classes"] = { 1 },	-- Warrior
					["lvl"] = 10,
				}),
				q(371, {	-- At War With The Scarlet Crusade
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
				}),
				q(370, {	-- At War With The Scarlet Crusade
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
				}),
				q(372, {	-- At War With The Scarlet Crusade
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1515,	-- Executor Zygand
					["g"] = {
						i(3445),	-- Ceremonial Knife
						i(3071),	-- Striking Hatchet
					},
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
				}),
				q(427, {	-- At War With The Scarlet Crusade
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
				}),
				q(431, {	-- Candles of Beckoning
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					--["objectID"] = 1586,	-- Crate of Candles
					["g"] = {
						i(3080),	-- Candle of Beckoning
					},
				}),
				q(354, {	-- Deaths in the Family
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 1500,	-- Coleman Farthing
				}),
				q(445, {	-- Delivery to Silverpine Forest
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 1518,	-- Apothecary Johaan
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
				}),
				q(5482, {	-- Doom Weed
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 10665,	-- Junior Apothecary Holland
					["sourceQuest"] = 5481, -- Gordo's Task
				}),
				q(365, {	-- Fields of Grief
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 1519,	-- Deathguard Simmer
					["coord"] = { 40.9, 54.2, TIRISFAL_GLADES },
				}),
				q(407, {	-- Fields of Grief
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 1518,	-- Apothecary Johaan
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
				}),
				q(359, {	-- Forsaken Duties
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
				}),
				q(5650, { -- Garments of Darkness
					["lvl"] = 5,
					["races"] = { 5 }, -- Undead
					["classes"] = { 5 }, -- Priest
					["qg"] = 2129,	-- Dark Cleric Beryl <Priest Trainer>
					["coord"] = { 61.6, 52.2, TIRISFAL_GLADES },
				}),
				q(3098, { -- Glyphic Scroll
					["lvl"] = 1,
					["races"] = { UNDEAD },
					["classes"] = { MAGE },
					["qg"] = 1569, -- Shadow Priest Sarvis
				}),
				q(5481, {	-- Gordo's Task
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 10666,	-- Gordo
				}),
				q(358, {	-- Graverobbers
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 1499,	-- Magistrate Sevren
					["g"] = {
						i(6063),	-- Cold Steel Gauntlets
						i(3439),	-- Zombie Skin Boots
					},
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
				}),
				q(5651, { -- In Favor of Darkness
					["lvl"] = 5,
					["races"] = { 5 }, -- Undead
					["classes"] = { 5 }, -- Priest
					["qg"] = 2123,	-- Dark Cleric Duesten <Priest Trainer>
					["coord"] = { 31.1, 66.0, TIRISFAL_GLADES },
				}),
				q(6395, {	-- Marla's Last Wish
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["qg"] = 1661,	-- Novice Elreth
					["sourceQuest"] = 376, -- The Damned
					["g"] = {
						i(16333),	-- Samuel's Remains
					},
					["coord"] = { 30.9, 66.1, TIRISFAL_GLADES },
				}),
				q(380, {	-- Night Web's Hollow
					["lvl"] = 2,
					["races"] = HORDE_ONLY,
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 376, -- The Damned
					["g"] = {
						i(3270),	-- Flax Vest
						i(3273),	-- Rugged Mail Vest
						i(3272),	-- Zombie Skin Leggings
					},
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
				}),
				q(374, {	-- Proof of Demise
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1652,	-- Deathguard Burgess
					["g"] = {
						i(3435),	-- Zombie Skin Bracers
						i(3437),	-- Clasped Belt
						i(12299),	-- Netted Gloves
					},
				}),
				q(409, {	-- Proving Allegiance
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1497,	-- Gunther Arcanus
				}),
				q(3901, {	-- Rattling the Rattlecages
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 364, -- The Mindless Ones
					["g"] = {
						i(3274),	-- Flax Boots
						i(11851),	-- Scavenger Tunic
						i(11852),	-- Roamer's Leggings
					},
					["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
				}),
				q(356, {	-- Rear Guard Patrol
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 1495,	-- Deathguard Linnea
				}),
				q(366, {	-- Return the Book
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1498,	-- Bethor Iceshard
				}),
				q(360, {	-- Return to the Magistrate
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 1495,	-- Deathguard Linnea
				}),
				q(363, {	-- Rude Awakening
					["qg"] = 1568,	-- Undertaker Mordo
					["coord"] = { 30.2, 71.6, TIRISFAL_GLADES },
					["races"] = {
						5,	-- Undead
					},
				}),
				q(3902, {	-- Scavenging Deathknell
					["lvl"] = 2,
					["races"] = HORDE_ONLY,
					["qg"] = 1740,	-- Deathguard Saltain
					["sourceQuest"] = 376, -- The Damned
					["g"] = {
						i(11848),	-- Flax Belt
						i(11849),	-- Rustmetal Bracers
						i(11850),	-- Short Duskbat Cape
					},
					["coord"] = { 31.6, 65.6, TIRISFAL_GLADES },
				}),
				q(1820, {	-- Speak with Coleman
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["classes"] = { 1 },	-- Warrior
					["qg"] = 1496,	-- Deathguard Dillinger
					["sourceQuests"] = {
						1819,	-- Ulag the Cleaver
					},
					["isBreadcrumb"] = true,
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
				}),
				q(1818, {	-- Speak with Dillinger
					["qg"] = 2131,	-- Austil de Mon
					["altQuests"] = { 1502 },	-- Thun'grim Firegaze
					["coord"] = { 61.84, 52.53, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["classes"] = { 1 },	-- Warrior
					["lvl"] = 10,
					["description"] = "This quest becomes unavailable after completing \"Path of Defense\" in the Barrens.",
				}),
				q(355, {	-- Speak with Sevren
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 1500,	-- Coleman Farthing
				}),
				q(375, {	-- The Chill of Death
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 1521,	-- Gretchen Dedmar
					["g"] = {
						i(3833),	-- Adept's Cloak
						i(5939),	-- Sewing Gloves
					},
					["coord"] = { 61.9, 52.7, TIRISFAL_GLADES },
				}),
				q(376, {	-- The Damned
					["lvl"] = 2,
					["races"] = HORDE_ONLY,
					["qg"] = 1661,	-- Novice Elreth
					["g"] = {
						i(6060),	-- Flax Bracers
						i(2173),	-- Old Leather Belt
					},
					["coord"] = { 30.9, 66.1, TIRISFAL_GLADES },
				}),
				q(410, {	-- The Dormant Shade
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					--["objectID"] = 1557,	-- Lillith's Dinner Table
				}),
				q(408, {	-- The Family Crypt
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 1499,	-- Magistrate Sevren
					["g"] = {
						i(3446),	-- Darkwood Staff
						i(3440),	-- Bonecracker
					},
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
				}),
				q(362, {	-- The Haunted Mills
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 1500,	-- Coleman Farthing
				}),
				q(426, {	-- The Mills Overrun
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 1496,	-- Deathguard Dillinger
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["g"] = {
						i(3447),	-- Cryptwalker Boots
						i(3834),	-- Sturdy Cloth Trousers
					},
				}),
				q(364, {	-- The Mindless Ones
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["sourceQuest"] = 363,	-- Rude Awakening
					["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(3275),	-- Flax Gloves
						i(11847),	-- Battered Cloak
					},
				}),
				q(405, {	-- The Prodigal Lich
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
				}),
				q(411, {	-- The Prodigal Lich Returns
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 1497,	-- Gunther Arcanus
					["g"] = {
						i(5940),	-- Bone Buckler
					},
				}),
				q(382, {	-- The Red Messenger
					["lvl"] = 2,
					["races"] = HORDE_ONLY,
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 381, -- The Scarlet Crusade
					["g"] = {
						i(3277),	-- Executor Staff
						i(3276),	-- Deathguard Buckler
					},
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
				}),
				q(381, {	-- The Scarlet Crusade
					["qg"] = 1570,	-- Executor Arren
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 380, -- Night Web's Hollow
					["lvl"] = 2,
					["g"] = {
						i(3268),	-- Forsaken Dagger
						i(3269),	-- Forsaken Maul
						i(3267),	-- Forsaken Shortsword
						i(5779),	-- Forsaken Bastard Sword
						i(159),	-- Refreshing Spring Water
					},
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
				}),
				q(1819, {	-- Ulag the Cleaver
					["qg"] = 1496,	-- Deathguard Dillinger
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["sourceQuest"] = 1818,	-- Speak with Dillinger
					["altQuests"] = { 1502 },	-- Thun'grim Firegaze
					["races"] = HORDE_ONLY,
					["classes"] = { 1 },	-- Warrior
					["lvl"] = 10,
					["description"] = "Completing this quest prevents you from accepting \"Veteran Uzzek\" and \"Path of Defense\" in the Barrens.\n\nThis quest becomes unavailable after completing \"Path of Defense\" in the Barrens.",
				}),
				q(383, {	-- Vital Intelligence
					["lvl"] = 2,
					["races"] = HORDE_ONLY,
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 382, -- The Red Messenger
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
				}),
				q(398, {	-- Wanted: Maggot Eye
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["provider"] = { "i", 711 }, -- Wanted!
					--["objectID"] = 711,	-- Wanted!
					["g"] = {
						i(5941),	-- Brass Scale Pants
						i(3444),	-- Tiller's Vest
					},
					["coord"] = { 60.7, 51.5, TIRISFAL_GLADES },
				}),
				q(5847, {	-- Welcome!
					["provider"] = { "i", 14651 },	-- Deathknell Gift Voucher
					["u"] = 2,
					["g"] = {
						un(2, i(13584)),	-- Diablo Stone
						un(2, i(13583)),	-- Panda Collar
						un(2, i(13582)),	-- Zergling Leash
					},
				}),
			}),
		}),
	}),
};