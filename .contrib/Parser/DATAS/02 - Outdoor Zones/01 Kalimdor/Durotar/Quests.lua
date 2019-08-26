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
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4540),	-- Tough Hunk of Bread
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(818,  {	-- A Solvent Spirit
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 3304,	-- Master Vornal
					["g"] = {
						i(4941),	-- Really Sticky Glue
					},
				}),
				q(785,  {	-- A Strategic Alliance -- low enough questID for classic, but unable to verify if it actuallyw as in vanilla
					["lvl"] = 5,
					["qg"] = 3216,	-- Neeru Fireblade
				}),
				q(815,  {	-- Break a Few Eggs
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 3191,	-- Cook Torka
					["g"] = {
						i(4540),	-- Tough Hunk of Bread
						i(117),	-- Tough Jerky
					},
				}),
				q(794,  {	-- Burning Blade Medallion -- valley of trials?
					["qg"] = 3145,	-- Zureetha Fargaze
					["sourceQuest"] = 792,	-- Vile Familiars
					["g"] = {
						i(4921),	-- Dust-covered Leggings
						i(4922),	-- Jagged Chain Vest
						i(6713),	-- Ripped Pants
						i(118),	-- Minor Healing Potion
					},
				}),
				q(832,  {	-- Burning Shadows
					["itemID"] = 4903,	-- Eye of Burning Shadow
					["cr"] = 3204,	-- Gazz'uz
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
				}),
				q(791,  {	-- Carry Your Weight
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 3147,	-- Furl Scornbrow
					["g"] = {
						i(11845),	-- Handmade Leather Bag
					},
				}),
				q(840,  {	-- Conscript of the Horde
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3336,	-- Takrin Pathseeker
				}),
				q(842,  {	-- Crossroads Conscription
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3337,	-- Kargal Battlescar
					["sourceQuest"] = 840,	-- Conscript of the Horde
				}),
				q(788,  {	-- Cutting Teeth -- valley of trials
					["races"] = HORDE_ONLY,
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 787,	-- The New Horde
					["g"] = {
						i(4915),	-- Soft Wool Boots
						i(4914),	-- Battleworn Leather Gloves
					},
				}),
				q(806,  {	-- Dark Storms
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 3142,	-- Orgnil Soulscar
					["sourceQuest"] = 823,	-- Report to Orgnil
					["g"] = {
						i(4942),	-- Tiger Hide Boots
					},
				}),
				q(837,  {	-- Encroachment
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 3139,	-- Gar'Thok
				}),
				q(813,  {	-- Finding the Antidote
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 3189,	-- Kor'ghan
					["g"] = {
						i(4904),	-- Venomtail Antidote
					},
				}),
				q(926,  {	-- Flawed Power Stone
					["races"] = HORDE_ONLY,
					--["objectID"] = 5620,	-- Flawed Power Stones
					["g"] = {
						i(4986),	-- Flawed Power Stone
					},
				}),
				q(825,  {	-- From The Wreckage....
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["qg"] = 3139,	-- Gar'Thok
					["sourceQuest"] = 784,	-- Vanquish the Betrayers
					["g"] = {
						i(4936),	-- Dirt-trodden Boots
						i(4928),	-- Sandrunner Wristguards
						i(4935),	-- Wide Metal Girdle
					},
				}),
				q(4402, {	-- Galgar's Cactus Apple Surprise -- valley of trials
					["races"] = HORDE_ONLY,
					["qg"] = 9796,	-- Galgar
					["sourceQuest"] = 788,	-- Cutting Teeth
					["g"] = {
						i(11584),	-- Cactus Apple Surprise
					},
				}),
				q(5441, {	-- Lazy Peons -- valley of trials
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["qg"] = 11378,	-- Foreman Thazz'ril
				}),
				q(816,  {	-- Lost But Not Forgotten
					["lvl"] = 8,
					["races"] = HORDE_ONLY,
					["qg"] = 3193,	-- Misha Tor'kren
					["g"] = {
						i(4944),	-- Handsewn Cloak
					},
				}),
				q(828,  {	-- Margoz
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 3142,	-- Orgnil Soulscar
				}),
				q(808,  {	-- Minshina's Skull
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 3188,	-- Master Gadrin
					["g"] = {
						i(4945),	-- Faintly Glowing Skull
					},
				}),
				q(812,  {	-- Need for a Cure
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 3190,	-- Rhinag
					["g"] = {
						i(4937),	-- Charging Buckler
						i(4929),	-- Light Scorpid Armor
					},
				}),
				q(829,  {	-- Neeru Fireblade
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 3208,	-- Margoz
				}),
				q(817,  {	-- Practical Prey
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 3194,	-- Vel'rin Fang
				}),
				q(823,  {	-- Report to Orgnil
					["lvl"] = 4,
					["qg"] = 3188,	-- Master Gadrin
				}),
				q(805,  {	-- Report to Sen'jin Village
					["races"] = HORDE_ONLY,
					["qg"] = 3145,	-- Zureetha Fargaze
					["sourceQuest"] = 794,	-- Burning Blade Medallion
				}),
				q(804,  {	-- Sarkoth -- valley of trials
					["races"] = HORDE_ONLY,
					["qg"] = 3287,	-- Hana'zua
					["g"] = {
						i(4916),	-- Soft Wool Vest
						i(4917),	-- Battleworn Chain Leggings
					},
				}),
				q(790,  {	-- Sarkoth -- valley of trials
					["qg"] = 3287,	-- Hana'zua
				}),
				q(835,  {	-- Securing the Lines
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 3293,	-- Rezlak
					["sourceQuest"] = 834,	-- Winds in the Desert
					["g"] = {
						i(4932),	-- Harpy Wing Clipper
						i(4931),	-- Hickory Shortbow
						i(4938),	-- Blemished Wooden Staff
					},
				}),
				q(827,  {	-- Skull Rock
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 3208,	-- Margoz
					["sourceQuest"] = 828,	-- Margoz
					["g"] = {
						i(4947),	-- Jagged Dagger
						i(4939),	-- Steady Bastard Sword
						i(4948),	-- Stinging Mace
					},
				}),
				q(789,  {	-- Sting of the Scorpid
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["g"] = {
						i(4919),	-- Soft Wool Belt
						i(4920),	-- Battleworn Cape
					},
				}),
				q(6394, {	-- Thazz'ril's Pick
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["qg"] = 11378,	-- Foreman Thazz'ril
					["sourceQuest"] = 5441,	-- Lazy Peons
				}),
				q(831,  {	-- The Admiral's Orders
					["races"] = HORDE_ONLY,
					["qg"] = 3139,	-- Gar'Thok
					["sourceQuest"] = 830,	-- The Admiral's Orders
				}),
				q(830,  {	-- The Admiral's Orders
					["itemID"] = 4881,	-- Aged Envelope
					["races"] = HORDE_ONLY,
				}),
				q(924,  {	-- The Demon Seed
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3521,	-- Ak'Zeloth
					["sourceQuest"] = 809,	-- Ak'Zeloth
					["g"] = {
						i(5420),	-- Banshee Armor
					},
				}),
				q(786,  {	-- Thwarting Kolkar Aggression
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 3140,	-- Lar Prowltusk
					["g"] = {
						i(4933),	-- Seasoned Fighter's Cloak
						i(6062),	-- Heavy Cord Bracers
					},
				}),
				q(784,  {	-- Vanquish the Betrayers
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["qg"] = 3139,	-- Gar'Thok
				}),
				q(792,  {	-- Vile Familiars
					["lvl"] = 2,
					["races"] = HORDE_ONLY,
					["qg"] = 3145,	-- Zureetha Fargaze
					["g"] = {
						i(4924),	-- Primitive Club
						i(4925),	-- Primitive Hand Blade
						i(4923),	-- Primitive Hatchet
						i(5778),	-- Primitive Walking Stick
					},
				}),
				q(5843, {	-- Welcome! (available only if you bought the Vanilla WoW collector's edition
					["u"] = 40,
					["itemID"] = 14649,	-- Valley of Trials Gift Voucher
					["g"] = {
						un(2, i(13584)),	-- Diablo Stone
						un(2, i(13583)),	-- Panda Collar
						un(2, i(13582)),	-- Zergling Leash
					},
				}),
				q(834,  {	-- Winds in the Desert
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 3293,	-- Rezlak
				}),
				q(4641, {	-- Your Place In The World
					["qg"] = 10176,	-- Kaltunk
				}),
				q(826,  {	-- Zalazane
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 3188,	-- Master Gadrin
					["g"] = {
						i(4946),	-- Lightweight Boots
						i(4940),	-- Veiled Grips
					},
				}),
			}),
		}),
	}),
};