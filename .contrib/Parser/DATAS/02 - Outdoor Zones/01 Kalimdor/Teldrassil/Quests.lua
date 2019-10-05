---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(TELDRASSIL, {	-- Teldrassil
			n(-17, {	-- Quests
				q(3519, {	-- A Friend in Need
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8584,	-- Iverron
					["sourceQuest"] = 4495,	-- A Good Friend
				}),
				q(4495, {	-- A Good Friend
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8583,	-- Dirania Silvershine
				}),
				q(475, {	-- A Troubling Breeze
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2078,	-- Athridas Bearmantle
				}),
				q(921, {	-- Crown of the Earth (1/6)
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3514,	-- Tenaron Stormgrip
					["sourceQuest"] = 920,	-- Tenaron's Summons
				}),
				q(928, {	-- Crown of the Earth (2/6)
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3514,	-- Tenaron Stormgrip
					["sourceQuest"] = 921,	-- Crown of the Earth (1/6)
				}),
				q(929, {	-- Crown of the Earth (3/6)
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3515,	-- Corithras Moonrage
					["sourceQuest"] = 928,	-- Crown of the Earth (2/6)
				}),
				q(933, {	-- Crown of the Earth (4/6)
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3515,	-- Corithras Moonrage
					["sourceQuest"] = 929,	-- Crown of the Earth (3/6)
				}),
				q(7383, {	-- Crown of the Earth (5/6)
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3515,	-- Corithras Moonrage
					["sourceQuest"] = 933,	-- Crown of the Earth (4/6)
				}),
				q(935, {	-- Crown of the Earth (6/6)
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3515,	-- Corithras Moonrage
					["sourceQuest"] = 7383,	-- Crown of the Earth (5/6)
					["g"] = {
						i(5596),	-- Ashwood Bow
						i(5595),	-- Thicket Hammer
					},
				}),
				q(934, {	-- Crown of the Earth (?/?) did the entire chain and never got this one yet it is marked as completed at the end
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3515,	-- Corithras Moonrage
					["altQuests"] = { 7383 },	-- Crown of the Earth (5/6)
				}),
				q(997, {	-- Denalan's Earth
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2083,	-- Syral Bladeleaf
				}),
				q(2159, {	-- Dolanaar Delivery
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6780,	-- Porthannius
					["g"] = {
						i(2070),	-- Darnassian Bleu
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(2561, {	-- Druid of the Claw
					["lvl"] = 3,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7317,	-- Oben Rageclaw
					["sourceQuest"] = 2541,	-- The Sleeping Druid
					["g"] = {
						i(9598),	-- Sleeping Robes
						i(18957),	-- Brushwood Blade
					},
				}),
				q(3118, {	-- Encrypted Sigil
					["lvl"] = 1,
					["races"] = { 4 },	-- Night Elf
					["classes"] = { 4 },	-- Rogue
					["qg"] = 2079,	-- Conservator Ilthalaine
					["sourceQuest"] = 457,	-- The Balance of Nature
				}),
				q(2259, { -- Erion Shadewhisper
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 3599,	-- Jannok Breezesong
					["coord"] = { 56.4, 60.1, TELDRASSIL },
					["isBreadcrumb"] = true,
					["sourceQuest"] = 2241,	-- The Apple Falls
					["description"] = "In Darnassus, enter the base of the tree at 32.7, 16.3 to turn in the quest.",
				}),
				q(3117, {	-- Etched Sigil
					["lvl"] = 1,
					["classes"] = { 3 },	-- Hunter
					["races"] = { 4 },	-- Night Elf
					["qg"] = 2079,	-- Conservator Ilthalaine
					["sourceQuest"] = 457,	-- The Balance of Nature
				}),
				q(3661, {	-- Favored of Elune?
					["lvl"] = 42,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7916,	-- Erelas Ambersky
					["maps"] = { THE_HINTERLANDS },
				}),
				q(2940, {	-- Feralas: A History
					["lvl"] = 42,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 142958 },	-- Feralas: A History
				}),
				q(2459, {	-- Ferocitas the Dream Eater
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3567,	-- Tallonkai Swiftroot
					["sourceQuest"] = 2438,	-- The Emerald Dreamcatcher
					["g"] = {
						i(8049),	-- Gnarlpine Necklace
					},
				}),
				q(979, {	-- Find Ranshalla
					["lvl"] = 52,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7916,	-- Erelas Ambersky
					["maps"] = { WINTERSPRING },
				}),
				q(6342, {	-- Flight to Auberdine
					["lvl"] = 10,
					["races"] = {
						4,	-- Night Elf
					},
					["qg"] = 3838,	-- Vesprystus
					["sourceQuest"] = 6341,	-- The Bounty of Teldrassil
				}),
				q(476, {	-- Gnarlpine Corruption
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2107,	-- Gaerolas Talvethren
					["sourceQuest"] = 475,	-- Gnarlpine Corruption
				}),
				q(3521, {	-- Iverron's Antidote
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8583,	-- Dirania Silvershine
					["sourceQuest"] = 3519,	-- A Friend in Need
				}),
				q(3522, {	-- Iverron's Antidote
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8583,	-- Dirania Silvershine
					["sourceQuest"] = 3522,	-- Iverron's Antidote
					["g"] = {
						i(10655),	-- Sedgeweed Britches
						i(10656),	-- Barkmail Vest
					},
				}),
				q(938, {	-- Mist
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3568,	-- Mist
					["g"] = {
						i(5590),	-- Cord Bracers
						i(5593),	-- Crag Buckler
						i(5618),	-- Scout's Cloak
					},
				}),
				q(978, {	-- Moontouched Wildkin
					["lvl"] = 52,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7916,	-- Erelas Ambersky
					["maps"] = { WINTERSPRING },
				}),
				q(2499, {	-- Oakenscowl
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2080,	-- Denalan
					["sourceQuest"] = 2498,	-- Return to Denalan
					["g"] = {
						i(5458),	-- Dirtwood Belt
						i(5589),	-- Moss-covered Gauntlets
					},
				}),
				q(941, {	-- Planting the Heart
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2080,	-- Denalan
					["sourceQuest"] = 927,	-- The Moss-twined Heart
					["g"] = {
						i(5218),	-- Cleansed Timberling Heart
					},
				}),
				q(922, {	-- Rellian Greenspyre
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2080,	-- Denalan
					["sourceQuest"] = 918,	-- Timberling Seeds
				}),
				q(2943, {	-- Return to Troyas
					["lvl"] = 42,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7907,	-- Daryn Lightwind
					["sourceQuest"] = 2944,	-- The Super Snapper FX
				}),
				q(489, {	-- Seek Redemption!
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2083,	-- Syral Bladeleaf
					["sourceQuest"] = 488,	-- Zenn's Bidding
				}),
				q(5250, {	-- Starfall
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
				}),
				q(6063, {	-- Taming the Beast
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["sourceQuests"] = {
						6071,	-- The Hunter's Path
						6072,	-- The Hunter's Path
						6073,	-- The Hunter's Path
						6721,	-- The Hunter's Path
						6722,	-- The Hunter's Path
					},
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
					["lvl"] = 10,
				}),
				q(6101, {	-- Taming the Beast
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["sourceQuest"] = 6063,	-- Taming the Beast
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
					["lvl"] = 10,
				}),
				q(6102, {	-- Taming the Beast
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["sourceQuest"] = 6101,	-- Taming the Beast
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
					["lvl"] = 10,
					["groups"] = {
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
					},
				}),
				q(940, {	-- Teldrassil
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3519,	-- Sentinel Arynia Cloudsbreak
					["sourceQuest"] = 937,	-- The Enchanted Glade
				}),
				q(920, {	-- Tenaron's Summons
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2082,	-- Gilshalan Windwalker
					["sourceQuest"] = 917,	-- Webwood Egg
				}),
				q(2241, {	-- The Apple Falls
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 3599,	-- Jannok Breezesong
					["coord"] = { 56.4, 60.1, TELDRASSIL },
					["altQuests"] = {
						2205,	-- Seek out SI:7
						2218,	-- Road to Salvation
					},
				}),
				q(456, {	-- The Balance of Nature
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2079,	-- Conservator Ilthalaine
					["g"] = {
						i(5394),	-- Archery Training Gloves
						i(11187),	-- Stemleaf Bracers
					},
				}),
				q(457, {	-- The Balance of Nature
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2079,	-- Conservator Ilthalaine
					["sourceQuest"] = 456,	-- The Balance of Nature
					["g"] = {
						i(5405),	-- Draped Cloak
						i(6058),	-- Blackened Leather Belt
					},
				}),
				q(6341, {	-- The Bounty of Teldrassil
					["lvl"] = 10,
					["races"] = {
						4,	-- Night Elf
					},
					["qg"] = 10118,	-- Nessa Shadowsong
					["sourceQuest"] = 6344,	-- Nessa Shadowsong
				}),
				q(2941, {	-- The Borrower
					["lvl"] = 42,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7907,	-- Daryn Lightwind
					["sourceQuest"] = 2940,	-- Feralas: A History
				}),
				q(2438, {	-- The Emerald Dreamcatcher
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3567,	-- Tallonkai Swiftroot
				}),
				q(937, {	-- The Enchanted Glade
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3519,	-- Sentinel Arynia Cloudsbreak
					["g"] = {
						i(5592),	-- Shackled Girdle
						i(5591),	-- Rain-spotted Cape
					},
				}),
				q(930, {	-- The Glowing Fruit
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 6751 },	-- Strange Fruited Plant
				}),
				q(6072, {	-- The Hunter's Path
					["qg"] = 3596,	-- Ayanna Everstride <Hunter Trainer>
					["coord"] = { 58.66, 40.45, TELDRASSIL },
					["maps"] = { TELDRASSIL },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
					["isBreadcrumb"] = true,
					["altQuests"] = {
						6071,	-- The Hunter's Path
						-- 6072,	-- The Hunter's Path
						6073,	-- The Hunter's Path
						6721,	-- The Hunter's Path
						6722,	-- The Hunter's Path
					},
					["lvl"] = 10,
				}),
				q(927, {	-- The Moss-twined Heart
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "i", 5179 },	-- Moss-twined Heart
				}),
				q(483, {	-- The Relics of Wakening
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2078,	-- Athridas Bearmantle
					["sourceQuest"] = 476,	-- Gnarlpine Corruption
					["g"] = {
						i(9599),	-- Barkmail Leggings
						i(9603),	-- Gritroot Staff
					},
				}),
				q(487, {	-- The Road to Darnassus
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2151,	-- Moon Priestess Amara
				}),
				q(931, {	-- The Shimmering Frond
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 6752,	-- Strange Fronded Plant
				}),
				q(2541, {	-- The Sleeping Druid
					["lvl"] = 3,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7317,	-- Oben Rageclaw
				}),
				q(2399, {	-- The Sprouted Fronds
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 7510 },	-- Sprouted Frond
					["g"] = {
						i(5205),	-- Sprouted Frond
					},
				}),
				q(458, {	-- The Woodland Protector
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2077,	-- Melithar Staghelm
				}),
				q(459, {	-- The Woodland Protector
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1992,	-- Tarindrella
					["sourceQuest"] = 458,	-- The Woodland Protector
					["g"] = {
						i(5398),	-- Canopy Leggings
						i(5399),	-- Tracking Boots
						i(11190),	-- Viny Gloves
						i(961),	-- Healing Herb
					},
				}),
				q(918, {	-- Timberling Seeds
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2080,	-- Denalan
					["sourceQuest"] = 997,	-- Denalan's Earth
					["g"] = {
						i(4604),	-- Forest Mushroom Cap
					},
				}),
				q(919, {	-- Timberling Sprouts
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2080,	-- Denalan
					["sourceQuest"] = 997,	-- Denalan's Earth
					["g"] = {
						i(5606),	-- Gardening Gloves
						i(6061),	-- Graystone Bracers
					},
				}),
				q(6103, {	-- Training the Beast
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["sourceQuest"] = 6102,	-- Taming the Beast
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
					["lvl"] = 10,
					["groups"] = {
						recipe(6991),		-- Feed Pet
						recipe(982),		-- Revive Pet
					},
				}),
				q(932, {	-- Twisted Hatred
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3567,	-- Tallonkai Swiftroot
					["g"] = {
						i(5419),	-- Feral Bracers
						i(2571),	-- Viny Wrappings
					},
				}),
				q(8734, {	-- Tyrande and Remulos
					["lvl"] = 60,
					["races"] = ALLIANCE_ONLY,
				}),
				q(486, {	-- Ursal the Mauler
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2078,	-- Athridas Bearmantle
					["sourceQuest"] = 775,	-- The Relics of Wakening
					["g"] = {
						i(5459),	-- Defender Axe
						i(5587),	-- Thornroot Club
					},
					["coord"] = { 55.9, 57.3, TELDRASSIL},
				}),
				q(917, {	-- Webwood Egg
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2082,	-- Gilshalan Windwalker
					["g"] = {
						i(5395),	-- Woodland Shield
						i(4907),	-- Woodland Tunic
						i(11189),	-- Woodland Robes
					},
				}),
				q(916, {	-- Webwood Venom
					["lvl"] = 3,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2082,	-- Gilshalan Windwalker
					["g"] = {
						i(10544),	-- Thistlewood Maul
						i(5392),	-- Thistlewood Dagger
						i(5393),	-- Thistlewood Staff
						i(5586),	-- Thistlewood Blade
					},
				}),
				q(5842, {	-- Welcome!
					["provider"] = { "i", 14648 },	-- Shadowglen Gift Voucher
					["u"] = 2,
					["g"] = {
						un(2, i(13584)),	-- Diablo Stone
						un(2, i(13583)),	-- Panda Collar
						un(2, i(13582)),	-- Zergling Leash
					},
				}),
				q(4902, {	-- Wildkin of Elune
					["lvl"] = 52,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7916,	-- Erelas Ambersky
					["maps"] = { WINTERSPRING },
					["g"] = {
						i(16622),	-- Thornflinger
						i(16623),	-- Opaline Medallion
					},
				}),
				q(488, {	-- Zenn's Bidding
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2150,	-- Zenn Foulhoof
					["g"] = {
						i(5457),	-- Severed Voodoo Claw
					},
				}),
			}),
		}),
	}),
};