---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(TIRISFAL_GLADES, {
			n(QUESTS, {
				q(361, {	-- A Letter Undelivered
					["provider"] = { "i", 2839 },	-- A Letter to Yvette
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2837, 1 },	-- Thurman's Letter
					},
					["lvl"] = 4,
				}),
				q(367, {	-- A New Plague (1/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2858, 5 },	-- Darkhound Blood
					},
					["lvl"] = 6,
					["g"] = {
						i(3382),	-- Weak Troll's Blood Potion
					},
				}),
				q(368, {	-- A New Plague (2/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 367,	-- A New Plague (1/4)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2859, 5 },	-- Vile Fin Scale
					},
					["lvl"] = 6,
					["g"] = {
						i(3434),	-- Slumber Sand
					},
				}),
				q(369, {	-- A New Plague (3/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 368,	-- A New Plague (2/4)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2872, 4 },	-- Vicious Night Web Spider Venom
					},
					["lvl"] = 6,
					["g"] = {
						i(3442),	-- Apprentice Sash
					},
				}),
				q(492, {	-- A New Plague (4/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 369,	-- A New Plague (3/4)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3460, 1 },	-- Johaan's Special Drink
					},
					["lvl"] = 6,
				}),
				q(404, {	-- A Putrid Task
					["qg"] = 1496,	-- Deathguard Dillinger
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2855, 7 },	-- Putrid Claw
					},
					["lvl"] = 4,
				}),
				q(590, {	-- A Rogue's Deal
					["qg"] = 6784,	-- Calvin Montague
					["coord"] = { 38.2, 56.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 7628, 1 },	-- Nondescript Letter
					},
				}),
				q(8, {	-- A Rogue's Deal
					["qg"] = 6784,	-- Calvin Montague
					["coord"] = { 38.2, 56.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4604),	-- Forest Mushroom Cap
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(1821, {	-- Agamand Heirlooms
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuest"] = 1820,	-- Speak with Coleman
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(371, {	-- At War With The Scarlet Crusade
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(370, {	-- At War With The Scarlet Crusade
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(372, {	-- At War With The Scarlet Crusade
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["g"] = {
						i(3445),	-- Ceremonial Knife
						i(3071),	-- Striking Hatchet
					},
				}),
				q(427, {	-- At War With The Scarlet Crusade
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(431, {	-- Candles of Beckoning
					["provider"] = { "o", 1586 },	-- Crate of Candles
					["coord"] = { 68.1, 42, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 5,
					["g"] = {
						{
							["itemID"] = 3080,	-- Candle of Beckoning
							["questID"] = 409,	-- Proving Allegiance
						},
					},
				}),
				q(354, {	-- Deaths in the Family
					["qg"] = 1500,	-- Coleman Farthing
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2829, 1 },	-- Gregor's Remains
						{ "i", 2828, 1 },	-- Nissa's Remains
						{ "i", 2830, 1 },	-- Thurman's Remains
					},
					["lvl"] = 7,
					["groups"] = {
						{
							["itemID"] = 2829,	-- Gregor's Remains
							["questID"] = 354,	-- Deaths in the Family
							["cr"] = 1654, 	-- Gregor Agamand
							["coord"] = { 46.8, 29.6, TIRISFAL_GLADES },
						},
						{
							["itemID"] = 2828,	-- Nissa's Remains
							["questID"] = 354,	-- Deaths in the Family
							["cr"] = 1655, 	-- Nissa Agamand
							["coord"] = { 49.6, 36.2, TIRISFAL_GLADES },
						},
						{
							["itemID"] = 2830,	-- Thurman's Remains
							["questID"] = 354,	-- Deaths in the Family
							["cr"] = 1656, 	-- Thurman Agamand
							["coord"] = { 44.0, 33.4, TIRISFAL_GLADES },
						},
					},
				}),
				q(445, {	-- Delivery to Silverpine Forest
					["qg"] = 1518,	-- Apothecary Johaan
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5482, {	-- Doom Weed
					["qg"] = 10665,	-- Junior Apothecary Holland
					["sourceQuest"] = 5481,	-- Gordo's Task
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13702, 10 },	-- Doom Weed
					},
					["lvl"] = 5,
				}),
				q(3096, {	-- Encrypted Scroll
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
				}),
				q(365, {	-- Fields of Grief (1/2)
					["qg"] = 1519,	-- Deathguard Simmer
					["coord"] = { 40.9, 54.2, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2846, 10 },	-- Tirisfal Pumpkin
					},
					["lvl"] = 4,
				}),
				q(407, {	-- Fields of Grief (2/2)
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 365,	-- Fields of Grief (1/2)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3035, 1 },	-- Laced Pumpkin
					},
					["lvl"] = 4,
				}),
				q(359, {	-- Forsaken Duties
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
				}),
				q(5650, {	-- Garments of Darkness
					["qg"] = 2129,	-- Dark Cleric Beryl <Priest Trainer>
					["coord"] = { 61.6, 52.2, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["classes"] = { PRIEST },
					["lvl"] = 5,
					["groups"] = {
						i(16607),	-- Acolyte's Sacrificial Robes
					},
				}),
				q(3098, {	-- Glyphic Scroll
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["races"] = { UNDEAD },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 9574, 1 },	-- Glyphic Scroll
					},
				}),
				q(5481, {	-- Gordo's Task
					["qg"] = 10666,	-- Gordo
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12737, 3 },	-- Gloom Weed
					},
					["lvl"] = 5,
				}),
				q(358, {	-- Graverobbers
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2834, 8 },	-- Embalming Ichor
					},
					["lvl"] = 4,
					["g"] = {
						i(6063),	-- Cold Steel Gauntlets
						i(3439),	-- Zombie Skin Boots
					},
				}),
				q(1478, {	-- Halgar's Summons
					["qg"] = 5724,	-- Ageron Kargal
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["altQuests"] = {
						1506,	-- Gan'rul's Summons
					},
					["lvl"] = 10,
				}),
				q(1822,  {	-- Heirloom Weapon
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuest"] = 1821,	-- Agamand Heirlooms
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
					["g"] = {
						i(7115),	-- Heirloom Axe
						i(7117),	-- Heirloom Hammer
						i(7116),	-- Heirloom Dagger
						i(7118),	-- Heirloom Sword
					},
				}),
				q(5651, {	-- In Favor of Darkness
					["qg"] = 2123,	-- Dark Cleric Duesten <Priest Trainer>
					["coord"] = { 31.1, 66.0, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["classes"] = { PRIEST },
					["lvl"] = 5,
				}),
				q(6395, {	-- Marla's Last Wish
					["qg"] = 1661,	-- Novice Elreth
					["sourceQuest"] = 376,	-- The Damned
					["coord"] = { 30.9, 66.1, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16333, 1 },	-- Samuel's Remains
					},
					["lvl"] = 3,
					["g"] = {
						{
							["itemID"] = 16333,	-- Samuel's Remains
							["questID"] = 6395,	-- Marla's Last Wish
							["cr"] = 1919,	-- Samuel Fipps
							["coord"] = { 36.6, 61.6, TIRISFAL_GLADES },
						},
					},
				}),
				q(1885, {	-- Mennet Carkad
					["qg"] = 2130,	-- Marion Call
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(380, {	-- Night Web's Hollow
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 376,	-- The Damned
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 2,
					["g"] = {
						i(3270),	-- Flax Vest
						i(3273),	-- Rugged Mail Vest
						i(3272),	-- Zombie Skin Leggings
					},
				}),
				q(1470, {	-- Piercing the Veil
					["qg"] = 5667,	-- Venya Marthand
					["coord"] = { 31.0, 66.4, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6281, 3 },	-- Rattlecage Skull
					},
					["groups"] = {
						recipe(688),	-- Summon Imp
					},
				}),
				q(374, {	-- Proof of Demise
					["qg"] = 1652,	-- Deathguard Burgess
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2875, 10 },	-- Scarlet Insignia Ring
					},
					["lvl"] = 5,
					["g"] = {
						i(3435),	-- Zombie Skin Bracers
						i(3437),	-- Clasped Belt
						i(12299),	-- Netted Gloves
					},
				}),
				q(409, {	-- Proving Allegiance
					["qg"] = 1497,	-- Gunther Arcanus
					["sourceQuest"]= 366,	-- Return the Book
					["coord"] = { 68.2, 42, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3080, 1 },	-- Candle of Beckoning
					},
					["lvl"] = 5,
				}),
				q(3901, {	-- Rattling the Rattlecages
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["sourceQuest"] = 364,	-- The Mindless Ones
					["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(3274),	-- Flax Boots
						i(11851),	-- Scavenger Tunic
						i(11852),	-- Roamer's Leggings
					},
				}),
				q(356, {	-- Rear Guard Patrol
					["qg"] = 1495,	-- Deathguard Linnea
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
				}),
				q(366, {	-- Return the Book
					["qg"] = 1498,	-- Bethor Iceshard
					["sourceQuest"] = 357,	-- The Lich's Identity
					["coord"] = { 84.2, 17.4, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3016, 1 },	-- Gunther's Spellbook
					},
					["lvl"] = 5,
				}),
				q(360, {	-- Return to the Magistrate
					["qg"] = 1495,	-- Deathguard Linnea
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
				}),
				q(363, {	-- Rude Awakening
					["qg"] = 1568,	-- Undertaker Mordo
					["coord"] = { 30.2, 71.6, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["isBreadcrumb"] = true
				}),
				q(3902, {	-- Scavenging Deathknell
					["qg"] = 1740,	-- Deathguard Saltain
					["sourceQuest"] = 376,	-- The Damned
					["coord"] = { 31.6, 65.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11127, 6 },	-- Scavenged Goods
					},
					["lvl"] = 2,
					["g"] = {
						i(11848),	-- Flax Belt
						i(11849),	-- Rustmetal Bracers
						i(11850),	-- Short Duskbat Cape
					},
				}),
				q(1881, {	-- Speak with Anastasia
					["qg"] = 2128,	-- Cain Firesong <Mage Trainer>
					["coord"] = { 61.8, 52.4, TIRISFAL_GLADES },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["altQuests"] = {
						1883,	-- Speak with Un'thuwa
					},
					["lvl"] = 10,
					["isBreadcrumb"] = true
				}),
				q(1820, {	-- Speak with Coleman
					["qg"] = 1496,	-- Deathguard Dillinger
					["sourceQuest"] = 1819,	-- Ulag the Cleaver
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(1818, {	-- Speak with Dillinger
					["qg"] = 2131,	-- Austil de Mon
					["altQuests"] = { 1502 },	-- Thun'grim Firegaze
					["coord"] = { 61.84, 52.53, TIRISFAL_GLADES },
					["description"] = "This quest becomes unavailable after completing \"Path of Defense\" in the Barrens.",
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(355, {	-- Speak with Sevren
					["qg"] = 1500,	-- Coleman Farthing
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
				}),
				q(3099, {	-- Tainted Scroll
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["sourceQuest"] = 364,	-- The Mindless Ones
					["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["classes"] = { WARLOCK },
				}),
				q(375, {	-- The Chill of Death
					["qg"] = 1521,	-- Gretchen Dedmar
					["coord"] = { 61.9, 52.7, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2876, 5 },	-- Duskbat Pelt
						{ "i", 2320, 1 },	-- Coarse Thread
					},
					["lvl"] = 7,
					["g"] = {
						i(3833),	-- Adept's Cloak
						i(5939),	-- Sewing Gloves
					},
				}),
				q(376, {	-- The Damned
					["qg"] = 1661,	-- Novice Elreth
					["coord"] = { 30.9, 66.1, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3264, 6 },	-- Duskbat Wing
						{ "i", 3265, 6 },	-- Scavenger Paw
					},
					["lvl"] = 2,
					["g"] = {
						i(6060),	-- Flax Bracers
						i(2173),	-- Old Leather Belt
					},
				}),
				q(1886, {	-- The Deathstalkers (1/4)
					["qg"] = 6467,	-- Mennet Carkad
					["sourceQuest"] = 1885,	-- Mennet Carkad
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(1898, {	-- The Deathstalkers (2/4)
					["qg"] = 6467,	-- Mennet Carkad
					["sourceQuest"] = 1886,	-- The Deathstalkers (1/4)
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(1899, {	-- The Deathstalkers (3/4)
					["qg"] = 6522,	-- Andron Gant
					["sourceQuest"] = 1898,	-- The Deathstalkers (2/4)
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(1978, {	-- The Deathstalkers (4/4)
					["qg"] = 6467,	-- Mennet Carkad
					["sourceQuest"] = 1899,	-- The Deathstalkers (3/4)
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["g"] = {
						i(7298),	-- Blade of Cunning
					},
				}),
				q(410, {	-- The Dormant Shade
					["provider"] = { "o", 1557 },	-- Lillith's Dinner Table
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 5,
				}),
				q(408, {	-- The Family Crypt
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3082, 1 },	-- Dargol's Skull
					},
					["lvl"] = 7,
					["g"] = {
						{
							["itemID"] = 3082,	-- Dargol's Skull
							["questID"] = 408,	-- The Family Crypt
							["cr"] = 1658,	-- Captain Dargol
							["coord"] = { 52.6, 26.4, TIRISFAL_GLADES },
						},
						i(3446),	-- Darkwood Staff
						i(3440),	-- Bonecracker
					},
				}),
				q(362, {	-- The Haunted Mills
					["qg"] = 1500,	-- Coleman Farthing
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2831, 1 },	-- Devlin's Remains
					},
					["lvl"] = 7,
					["g"] = {
						{
							["itemID"] = 2831,	-- Devlin's Remains
							["questID"] = 362,	-- The Haunted Mills
							["cr"] = 1657,	-- Devlin Agamand
							["coord"] = { 47.6, 40.2, TIRISFAL_GLADES },
						},
					},
				}),
				q(357, {	-- The Lich's Identity
					["qg"] = 1498,	-- Bethor Iceshard
					["sourceQuest"] = 405,	-- The Prodigal Lich
					["coord"] = { 84.2, 17.4, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2833, 1 },	-- The Lich's Spellbook
					},
					["lvl"] = 5,
				}),
				q(426, {	-- The Mills Overrun
					["qg"] = 1496,	-- Deathguard Dillinger
					["sourceQuest"] = 404,	-- A Putrid Task
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3163, 3 },	-- Blackened Skull
						{ "i", 3162, 5 },	-- Notched Rib
					},
					["lvl"] = 6,
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
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3017, 1 },	-- Sevren's Orders
					},
					["lvl"] = 5,
				}),
				q(411, {	-- The Prodigal Lich Returns
					["qg"] = 1497,	-- Gunther Arcanus
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["g"] = {
						i(5940),	-- Bone Buckler
					},
				}),
				q(382, {	-- The Red Messenger
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 381,	-- The Scarlet Crusade
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2885, 1 },	-- Scarlet Crusade Documents
					},
					["lvl"] = 2,
					["g"] = {
						{
							["itemID"] = 2885,	-- Scarlet Crusade Documents
							["questID"] = 382,	-- The Red Messenger
							["cr"] = 1667,	-- Meven Korgal
							["coord"] = { 36.6, 68.6, TIRISFAL_GLADES },
						},
						i(3277),	-- Executor Staff
						i(3276),	-- Deathguard Buckler
					},
				}),
				q(381, {	-- The Scarlet Crusade
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 380,	-- Night Web's Hollow
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3266, 12 },	-- Scarlet Armband
					},
					["lvl"] = 2,
					["g"] = {
						i(3268),	-- Forsaken Dagger
						i(3269),	-- Forsaken Maul
						i(3267),	-- Forsaken Shortsword
						i(5779),	-- Forsaken Bastard Sword
					},
				}),
				q(1819, {	-- Ulag the Cleaver
					["qg"] = 1496,	-- Deathguard Dillinger
					["sourceQuest"] = 1818,	-- Speak with Dillinger
					["altQuests"] = { 1502 },	-- Thun'grim Firegaze
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["description"] = "Completing this quest prevents you from accepting \"Veteran Uzzek\" and \"Path of Defense\" in the Barrens.\n\nThis quest becomes unavailable after completing \"Path of Defense\" in the Barrens.",
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(383, {	-- Vital Intelligence
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 382,	-- The Red Messenger
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2885, 1 },	-- Scarlet Crusade Documents
					},
					["lvl"] = 2,
				}),
				q(398, {	-- Wanted: Maggot Eye
					["provider"] = { "o", 711 },	-- Wanted!
					["coord"] = { 60.7, 51.5, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3635, 1 },	-- Maggot Eye's Paw
					},
					["lvl"] = 6,
					["g"] = {
						{
							["itemID"] = 3635,	-- Maggot Eye's Paw
							["questID"] = 398,	-- Wanted: Maggot Eye
							["cr"] = 1753,	-- Maggot Eye
							["coord"] = { 58.6, 31.6, TIRISFAL_GLADES },
						},
						i(5941),	-- Brass Scale Pants
						i(3444),	-- Tiller's Vest
					},
				}),
				un(REMOVED_FROM_GAME, q(5847, {	-- Welcome!
					["provider"] = { "i", 14651 },	-- Deathknell Gift Voucher
					["altQuests"] = {
						5843,	-- Welcome! [Durotar]
						5844,	-- Welcome! [Mulgore]
						5847,	-- Welcome! [Tirisfal Glades]
					},
					["g"] = bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {
						i(13584),	-- Diablo Stone
						i(13583),	-- Panda Collar
						i(13582),	-- Zergling Leash
					}),
				})),
			}),
		}),
	}),
};