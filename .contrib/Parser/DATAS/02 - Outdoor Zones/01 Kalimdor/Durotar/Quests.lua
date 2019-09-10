---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(DUROTAR, {	-- Durotar
			n(-17, {	-- Quests
				q(2161, {	-- A Peon's Burden
					["qg"] = 6786,	-- Ukor
					["coord"] = { 52.05, 68.31, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
					["g"] = {
						i(4540),	-- Tough Hunk of Bread
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(818, {	-- A Solvent Spirit
					["qg"] = 3304,	-- Master Vornal
					["coord"] = { 55.95, 74.39, DUROTAR },
					["crs"] = {
						3103,	-- Makrura Clacker
						3104,	-- Makrura Shellhide
						3106,	-- Pygmy Surf Crawler
						3107,	-- Surf Crawler
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["g"] = {
						i(4941),	-- Really Sticky Glue
					},
				}),
				q(785, {	-- A Strategic Alliance
					-- low enough questID for classic, but unable to verify if it actually was in vanilla
					-- since Neeru Fireblade was moved to Orgrimmar for launch, it seems unlikely. 
					["qg"] = 3216,	-- Neeru Fireblade
					["coord"] = { 49.64, 50.31, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["u"] = 1,
				}),
				q(809, {	-- Ak'Zeloth
					["qg"] = 3216,	-- Neeru Fireblade
					["sourceQuest"] = 829,	-- Neeru Fireblade
					["coord"] = { 49.64, 50.31, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
				}),
				q(815, {	-- Break a Few Eggs
					["qg"] = 3191,	-- Cook Torka
					["coord"] = { 51.11, 42.45, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["g"] = {
						i(4540),	-- Tough Hunk of Bread
						i(117),	-- Tough Jerky
					},
				}),
				q(794, {	-- Burning Blade Medallion
					["qg"] = 3145,	-- Zureetha Fargaze
					["coord"] = { 42.85, 69.14, DUROTAR },
					["sourceQuest"] = 792,	-- Vile Familiars
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
					["g"] = {
						i(4921),	-- Dust-covered Leggings
						i(4922),	-- Jagged Chain Vest
						i(6713),	-- Ripped Pants
						i(118),	-- Minor Healing Potion
					},
				}),
				q(832, {	-- Burning Shadows
					["provider"] = { "i", 4903 },	-- Eye of Burning Shadow
					["coord"] = { 51.78, 9.56, DUROTAR },
					["cr"] = 3204,	-- Gazz'uz
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
				}),
				q(791, {	-- Carry Your Weight
					["qg"] = 3147,	-- Furl Scornbrow
					["coord"] = { 49.88, 40.39, DUROTAR },
					["crs"] = {
						3129,	-- Kul Tiras Marine
						3128,	-- Kul Tiras Sailor
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
					["g"] = {
						i(11845),	-- Handmade Leather Bag
					},
				}),
				q(840, {	-- Conscript of the Horde
					["qg"] = 3336,	-- Takrin Pathseeker
					["coord"] = { 50.85, 43.59, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(842, {	-- Crossroads Conscription
					["qg"] = 3337,	-- Kargal Battlescar
					["sourceQuest"] = 840,	-- Conscript of the Horde
					["coord"] = { 62.26, 19.37, THE_BARRENS },
					["maps"] = { DUROTAR, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(788, {	-- Cutting Teeth
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 4641,	-- Your Place In The World
					["coord"] = { 42.06, 68.33, DUROTAR },
					["cr"] = 3098,	-- Mottled Boar
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
					["g"] = {
						i(4915),	-- Soft Wool Boots
						i(4914),	-- Battleworn Leather Gloves
					},
				}),
				q(806, {	-- Dark Storms
					["qg"] = 3142,	-- Orgnil Soulscar
					["sourceQuest"] = 823,	-- Report to Orgnil
					["coord"] = { 52.25, 43.14, DUROTAR },
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4942),	-- Tiger Hide Boots
					},
				}),
				q(837, {	-- Encroachment
					["qg"] = 3139,	-- Gar'Thok
					["coord"] = { 51.95, 43.50, DUROTAR },
					["crs"] = {
						3111,	-- Razormane Quilboar
						3112,	-- Razormane Scout
						3113,	-- Razormane Dustrunner
						3114,	-- Razormane Battleguard
					},
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
				}),
				q(3088, {	-- Encrypted Parchment
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = { 2 },	-- Orc
					["classes"] = { 4 },	-- Rogue
					["lvl"] = 1,
				}),
				q(813, {	-- Finding the Antidote
					["qg"] = 3189,	-- Kor'ghan
					["sourceQuest"] = 812,	-- Need for a Cure
					["repeatable"] = true,
					["coord"] = { 47.23, 53.59, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
					["g"] = {
						i(4904),	-- Venomtail Antidote
					},
				}),
				q(926, {	-- Flawed Power Stone
					["provider"] = { "o", 5620 },	-- Flawed Power Stones
					["repeatable"] = true,
					["coord"] = { 62.34, 20.03, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
					["g"] = {
						i(4986),	-- Flawed Power Stone
					},
				}),
				q(825, {	-- From The Wreckage....
					["qg"] = 3139,	-- Gar'Thok
					["sourceQuest"] = 784,	-- Vanquish the Betrayers
					["coord"] = { 51.95, 43.50, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
					["g"] = {
						i(4936),	-- Dirt-trodden Boots
						i(4928),	-- Sandrunner Wristguards
						i(4935),	-- Wide Metal Girdle
					},
				}),
				q(4402, {	-- Galgar's Cactus Apple Surprise
					["qg"] = 9796,	-- Galgar
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.73, 67.23, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
					["g"] = {
						i(11584),	-- Cactus Apple Surprise
					},
				}),
				q(5441, {	-- Lazy Peons
					["qg"] = 11378,	-- Foreman Thazz'ril
					["coord"] = { 44.62, 68.65, DUROTAR },
					["cr"] = 10556,	-- Lazy Peon
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(816, {	-- Lost But Not Forgotten
					["qg"] = 3193,	-- Misha Tor'kren
					["coord"] = { 43.10, 30.24, DUROTAR },
					["crs"] = {
						3110,	-- Dreadmaw Crocolisk
						3231,	-- Corrupted Dreadmaw Crocolisk
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 8,
					["g"] = {
						i(4944),	-- Handsewn Cloak
					},
				}),
				q(828, {	-- Margoz
					["qg"] = 3142,	-- Orgnil Soulscar
					["sourceQuest"] = 806,	-- Dark Storms
					["coord"] = { 52.25, 43.14, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
				}),
				q(808, {	-- Minshina's Skull
					["qg"] = 3188,	-- Master Gadrin
					["sourceQuest"] = 805,	-- Report to Sen'jin Village
					["coord"] = { 55.95, 74.72, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
					["g"] = {
						i(4945),	-- Faintly Glowing Skull
					},
				}),
				q(812, {	-- Need for a Cure
					["qg"] = 3190,	-- Rhinag
					["coord"] = { 41.54, 18.61, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
					["g"] = {
						i(4937),	-- Charging Buckler
						i(4929),	-- Light Scorpid Armor
					},
				}),
				q(829, {	-- Neeru Fireblade
					["qg"] = 3208,	-- Margoz
					["sourceQuest"] = 827,	-- Skull Rock
					["coord"] = { 56.41, 20.05, DUROTAR },
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
				}),
				q(817, {	-- Practical Prey
					["qg"] = 3194,	-- Vel'rin Fang
					["coord"] = { 55.95, 73.92, DUROTAR },
					["cr"] = 3121,	-- Durotar Tiger
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(823, {	-- Report to Orgnil
					["qg"] = 3188,	-- Master Gadrin
					["sourceQuest"] = 805,	-- Report to Sen'jin Village
					["coord"] = { 55.95, 74.72, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
				}),
				q(805, {	-- Report to Sen'jin Village
					["qg"] = 3145,	-- Zureetha Fargaze
					["sourceQuest"] = 794,	-- Burning Blade Medallion
					["coord"] = { 42.85, 69.14, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
				}),
				q(790, {	-- Sarkoth
					["qg"] = 3287,	-- Hana'zua
					["coord"] = { 40.60, 62.60, DUROTAR },
					["cr"] = 3281,	-- Sarkoth
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
				}),
				q(804, {	-- Sarkoth
					["qg"] = 3287,	-- Hana'zua
					["sourceQuest"] = 790,	-- Sarkoth
					["coord"] = { 40.60, 62.60, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
					["g"] = {
						i(4916),	-- Soft Wool Vest
						i(4917),	-- Battleworn Chain Leggings
					},
				}),
				q(835, {	-- Securing the Lines
					["qg"] = 3293,	-- Rezlak
					["sourceQuest"] = 834,	-- Winds in the Desert
					["coord"] = { 46.38, 22.94, DUROTAR },
					["crs"] = {
						3117,	-- Dustwind Savage
						3118,	-- Dustwind Storm Witch
					},
					["lvl"] = 7,
					["g"] = {
						i(4932),	-- Harpy Wing Clipper
						i(4931),	-- Hickory Shortbow
						i(4938),	-- Blemished Wooden Staff
					},
				}),
				q(827, {	-- Skull Rock
					["qg"] = 3208,	-- Margoz
					["sourceQuest"] = 828,	-- Margoz
					["coord"] = { 56.41, 20.05, DUROTAR },
					["crs"] = {
						3195,	-- Burning Blade Thug
						3196,	-- Burning Blade Neophyte
						3197,	-- Burning Blade Fanatic
						3198,	-- Burning Blade Apprentice
						3199,	-- Burning Blade Cultist
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
					["g"] = {
						i(4947),	-- Jagged Dagger
						i(4939),	-- Steady Bastard Sword
						i(4948),	-- Stinging Mace
					},
				}),
				q(789, {	-- Sting of the Scorpid
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
					["g"] = {
						i(4919),	-- Soft Wool Belt
						i(4920),	-- Battleworn Cape
					},
				}),
				q(6394, {	-- Thazz'ril's Pick
					["qg"] = 11378,	-- Foreman Thazz'ril
					["sourceQuest"] = 5441,	-- Lazy Peons
					["coord"] = { 44.62, 68.65, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(830, {	-- The Admiral's Orders
					["provider"] = { "i", 4881 },	-- Aged Envelope
					["coord"] = { 59.26, 57.65, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
				}),
				q(831, {	-- The Admiral's Orders
					["qg"] = 3139,	-- Gar'Thok
					["sourceQuest"] = 830,	-- The Admiral's Orders
					["coord"] = { 51.95, 43.50, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
				}),
				q(924, {	-- The Demon Seed
					["qg"] = 3521,	-- Ak'Zeloth
					["sourceQuest"] = 809,	-- Ak'Zeloth
					["coord"] = { 62.34, 20.07, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["g"] = {
						i(5420),	-- Banshee Armor
					},
				}),
				q(1859, {	-- Therzok
					["qg"] = 3170,	-- Kaplak
					["isBreadcrumb"] = true,
					["coord"] = { 51.98, 43.70, DUROTAR },
					["races"] = {
						2,	-- Orc
						8,	-- Troll
					},
					["classes"] = { 4 },	-- Rogue
					["lvl"] = 10,
				}),
				q(786, {	-- Thwarting Kolkar Aggression
					["qg"] = 3140,	-- Lar Prowltusk
					--["sourceQuest"] = 785,	-- A Strategic Alliance
					["coord"] = { 54.52, 75.20, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["g"] = {
						i(4933),	-- Seasoned Fighter's Cloak
						i(6062),	-- Heavy Cord Bracers
					},
				}),
				q(784, {	-- Vanquish the Betrayers
					["qg"] = 3139,	-- Gar'Thok
					["coord"] = { 51.95, 43.50, DUROTAR },
					["crs"] = {
						3128,	-- Kul Tiras Sailor
						3129,	-- Kul Tiras Marine
						3192,	-- Lieutenant Benedict
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(792, {	-- Vile Familiars
					["qg"] = 3145,	-- Zureetha Fargaze
					["coord"] = { 42.85, 69.14, DUROTAR },
					["cr"] = 3101,	-- Vile Familiar
					["races"] = HORDE_ONLY,
					["lvl"] = 2,
					["g"] = {
						i(4924),	-- Primitive Club
						i(4925),	-- Primitive Hand Blade
						i(4923),	-- Primitive Hatchet
						i(5778),	-- Primitive Walking Stick
					},
				}),
				q(5843, {	-- Welcome!
					["provider"] = { "i", 14649 },	-- Valley of Trials Gift Voucher
					["u"] = 2,
					["g"] = {
						un(2, i(13584)),	-- Diablo Stone
						un(2, i(13583)),	-- Panda Collar
						un(2, i(13582)),	-- Zergling Leash
					},
				}),
				q(834, {	-- Winds in the Desert
					["qg"] = 3293,	-- Rezlak
					["coord"] = { 46.38, 22.94, DUROTAR },
					["lvl"] = 7,
				}),
				q(4641, {	-- Your Place In The World
					["qg"] = 10176,	-- Kaltunk
					["coord"] = { 43.29, 68.53, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 1,
				}),
				q(826, {	-- Zalazane
					["qg"] = 3188,	-- Master Gadrin
					["sourceQuest"] = 805,	-- Report to Sen'jin Village
					["coord"] = { 55.95, 74.72, DUROTAR },
					["crs"] = {
						3205,	-- Zalazane
						3206,	-- Voodoo Troll
						3207,	-- Hexed Troll
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
					["g"] = {
						i(4946),	-- Lightweight Boots
						i(4940),	-- Veiled Grips
					},
				}),
			}),
		}),
	}),
};