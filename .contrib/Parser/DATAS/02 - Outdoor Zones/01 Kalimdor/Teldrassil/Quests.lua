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
				q(928, {	-- Crown of the Earth
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3514,	-- Tenaron Stormgrip
				}),
				q(929, {	-- Crown of the Earth
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3515,	-- Corithras Moonrage
				}),
				q(921, {	-- Crown of the Earth
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3514,	-- Tenaron Stormgrip
				}),
				q(7383, {	-- Crown of the Earth
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3515,	-- Corithras Moonrage
				}),
				q(934, {	-- Crown of the Earth
				}),
				q(933, {	-- Crown of the Earth
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3515,	-- Corithras Moonrage
				}),
				q(935, {	-- Crown of the Earth
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
						1992,	-- Tarindrella
						3515,	-- Corithras Moonrage
					},
					["g"] = {
						i(5596),	-- Ashwood Bow
						i(5595),	-- Thicket Hammer
					},
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
					["g"] = {
						i(9598),	-- Sleeping Robes
						i(18957),	-- Brushwood Blade
					},
				}),
				q(3661, {	-- Favored of Elune?
					["lvl"] = 42,
				}),
				q(2459, {	-- Ferocitas the Dream Eater
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3567,	-- Tallonkai Swiftroot
					["g"] = {
						i(8049),	-- Gnarlpine Necklace
					},
				}),
				q(476, {	-- Gnarlpine Corruption
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2107,	-- Gaerolas Talvethren
				}),
				q(3522, {	-- Iverron's Antidote
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8583,	-- Dirania Silvershine
					["g"] = {
						i(10655),	-- Sedgeweed Britches
						i(10656),	-- Barkmail Vest
					},
				}),
				q(3521, {	-- Iverron's Antidote
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8583,	-- Dirania Silvershine
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
				q(2499, {	-- Oakenscowl
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2080,	-- Denalan
					["g"] = {
						i(5458),	-- Dirtwood Belt
						i(5589),	-- Moss-covered Gauntlets
					},
				}),
				q(941, {	-- Planting the Heart
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2080,	-- Denalan
					["g"] = {
						i(5218),	-- Cleansed Timberling Heart
					},
				}),
				q(922, {	-- Rellian Greenspyre
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2080,	-- Denalan
				}),
				q(2498, {	-- Return to Denalan
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3517,	-- Rellian Greenspyre
				}),
				q(489, {	-- Seek Redemption!
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2083,	-- Syral Bladeleaf
				}),
				q(5250, {	-- Starfall
					["lvl"] = 53,
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
						spell(883),		-- Call Pet
						spell(2641),	-- Dismiss Pet
						spell(1515),	-- Tame Beast
					},
				}),
				q(6103, {	-- Taming the Beast
					["qg"] = 6102,	-- Dazalar <Hunter Trainer>
					["sourceQuest"] = 6101,	-- Taming the Beast
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
					["lvl"] = 10,
					["groups"] = {
						spell(261),		-- Beast Training
						spell(6991),	-- Feed Pet
						spell(982),		-- Revive Pet
					},
				}),
				q(940, {	-- Teldrassil
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3519,	-- Sentinel Arynia Cloudsbreak
				}),
				q(920, {	-- Tenaron's Summons
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2082,	-- Gilshalan Windwalker
				}),
				q(457, {	-- The Balance of Nature
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2079,	-- Conservator Ilthalaine
					["g"] = {
						i(5405),	-- Draped Cloak
						i(6058),	-- Blackened Leather Belt
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
					--["objectID"] = 6751,	-- Strange Fruited Plant
				}),
				q(6072, {	-- The Hunter's Path
					["qg"] = 3596,	-- Ayanna Everstride <Hunter Trainer>
					["coord"] = { 58.66, 40.45, TELDRASSIL },
					["maps"] = { TELDRASSIL },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
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
				}),
				q(483, {	-- The Relics of Wakening
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2078,	-- Athridas Bearmantle
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
					--["objectID"] = 7510,	-- Sprouted Frond
					["g"] = {
						i(5205),	-- Sprouted Frond
					},
				}),
				q(459, {	-- The Woodland Protector
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1992,	-- Tarindrella
					["g"] = {
						i(5398),	-- Canopy Leggings
						i(5399),	-- Tracking Boots
						i(11190),	-- Viny Gloves
						i(961),	-- Healing Herb
					},
				}),
				q(458, {	-- The Woodland Protector
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2077,	-- Melithar Staghelm
				}),
				q(918, {	-- Timberling Seeds
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2080,	-- Denalan
					["g"] = {
						i(4604),	-- Forest Mushroom Cap
					},
				}),
				q(919, {	-- Timberling Sprouts
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2080,	-- Denalan
					["g"] = {
						i(5606),	-- Gardening Gloves
						i(6061),	-- Graystone Bracers
					},
				}),
				q(923, {	-- Tumors
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3517,	-- Rellian Greenspyre
					["g"] = {
						i(5605),	-- Pruning Knife
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
					["g"] = {
						i(5459),	-- Defender Axe
						i(5587),	-- Thornroot Club
					},
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