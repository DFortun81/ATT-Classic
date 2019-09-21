---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(UNGORO_CRATER, {	-- Un'Goro Crater
			n(-17, {	-- Quests
				q(3941, {	-- A Gnome's Assistance
					["lvl"] = 47,
				}),
				q(3913, {	-- A Grave Situation
					["lvl"] = 47,
				}),
				q(4491, {	-- A Little Help From My Friends
					["lvl"] = 50,
					["g"] = {
						i(11910),	-- Bejeweled Legguards
						i(11911),	-- Treetop Leggings
						i(11913),	-- Clayridge Helm
					},
				}),
				q(4142, {	-- A Visit to Gregan
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9119,	-- Muigin
					["sourceQuest"] = 4141,	-- Muigin and Larion
				}),
				q(3883, {	-- Alien Ecology
					["lvl"] = 48,
					["qg"] = 9271,	-- Hol'anyee Marshal
				}),
				q(4005, {	-- Aquementas
					["lvl"] = 47,
					["g"] = {
						i(11172),	-- Silvery Claws
					},
				}),
				q(4501, {	-- Beware of Pterrordax
					["lvl"] = 49,
					--["objectID"] = 174682,	-- Beware of Pterrordax
					["g"] = {
						i(11918),	-- Grotslab Gloves
						i(11919),	-- Cragplate Greaves
					},
				}),
				q(4144, {	-- Bloodpetal Sprouts
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9119,	-- Muigin
					["sourceQuest"] = 4143,	-- Haze of Evil
				}),
				q(4148, {	-- Bloodpetal Zapper
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 9118,	-- Larion
					["sourceQuest"] = 4146,	-- Zapper Fuel
					["g"] = {
						i(11320),	-- Bloodpetal Zapper
					},
				}),
				q(4243, {	-- Chasing A-Me 01
					["lvl"] = 48,
					["qg"] = 9618,	-- Karna Remtravel
				}),
				q(4244, {	-- Chasing A-Me 01
					["lvl"] = 48,
					["qg"] = 9623,	-- A-Me 01
					["sourceQuest"] = 4243,	-- Chasing A-Me 01
				}),
				q(4245, {	-- Chasing A-Me 01
					["lvl"] = 48,
					["qg"] = 9623,	-- A-Me 01
					["sourceQuest"] = 4244,	-- Chasing A-Me 01
				}),
				q(4385, {	-- Crystal Charge
					["lvl"] = 47,
					["repeatable"] = true,
					["g"] = {
						i(11566),	-- Crystal Charge
					},
				}),
				q(4382, {	-- Crystal Force
					["lvl"] = 47,
					["repeatable"] = true,
					["g"] = {
						i(11563),	-- Crystal Force
					},
				}),
				q(4381, {	-- Crystal Restore
					["lvl"] = 47,
					["repeatable"] = true,
					["g"] = {
						i(11562),	-- Crystal Restore
					},
				}),
				q(4386, {	-- Crystal Spire
					["lvl"] = 47,
					["repeatable"] = true,
					["g"] = {
						i(11567),	-- Crystal Spire
					},
				}),
				q(4383, {	-- Crystal Ward
					["lvl"] = 47,
					["repeatable"] = true,
					["g"] = {
						i(11564),	-- Crystal Ward
					},
				}),
				q(4384, {	-- Crystal Yield
					["lvl"] = 47,
					["repeatable"] = true,
					["g"] = {
						i(11565),	-- Crystal Yield
					},
				}),
				q(4284, {	-- Crystals of Power
					["lvl"] = 47,
					["qg"] = 9117,	-- J.D. Collie
				}),
				q(5150, {	-- Dadanga is Hungry!
					["lvl"] = 47,
					["repeatable"] = true,
					["qg"] = 9274,	-- Dadanga
					["g"] = {
						i(15699),	-- Small Brown-wrapped Package
					},
				}),
				q(3881, {	-- Expedition Salvation
					["lvl"] = 48,
					["qg"] = 9270,	-- Williden Marshal
				}),
				q(974, {	-- Finding the Source
					["lvl"] = 51,
					["qg"] = 10302,	-- Krakle
				}),
				q(3962, {	-- It's Dangerous to Go Alone
					["lvl"] = 47,
					["g"] = {
						i(11902),	-- Linken's Sword of Mastery
						i(11904),	-- Spirit of Aquementas
						i(11905),	-- Linken's Boomerang
					},
				}),
				q(3908, {	-- It's a Secret to Everybody
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
				}),
				q(3845, {	-- It's a Secret to Everybody
					["lvl"] = 47,
				}),
				q(3844, {	-- It's a Secret to Everybody
					["lvl"] = 47,
				}),
				q(4145, {	-- Larion and Muigin
					["lvl"] = 47,
					["qg"] = 9118,	-- Larion
					["races"] = HORDE_ONLY,
				}),
				q(3961, {	-- Linken's Adventure
					["lvl"] = 47,
					["qg"] = 9117,	-- J.D. Collie
				}),
				q(3942, {	-- Linken's Memory
					["lvl"] = 47,
					["qg"] = 9117,	-- J.D. Collie
				}),
				q(4492, {	-- Lost!
					["lvl"] = 50,
				}),
				q(4321, {	-- Making Sense of It
					["lvl"] = 47,
					["qg"] = 9117,	-- J.D. Collie
					["g"] = {
						i(11482),	-- Crystal Pylon User's Manual
					},
				}),
				q(4147, {	-- Marvon's Workshop
					["lvl"] = 47,
					["qg"] = 9118,	-- Larion
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 4145,	-- Larion and Muigin
				}),
				q(3912, {	-- Meet at the Grave
					["lvl"] = 47,
				}),
				q(4141, {	-- Muigin and Larion
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9119,	-- Muigin
				}),
				q(3882, {	-- Roll the Bones
					["lvl"] = 49,
					["g"] = {
						i(11908),	-- Archaeologist's Quarry Boots
						i(11909),	-- Excavator's Utility Belt
					},
				}),
				q(4503, {	-- Shizzle's Flyer
					["lvl"] = 49,
					["qg"] = 9998,	-- Shizzle
					["g"] = {
						i(11915),	-- Shizzle's Drizzle Blocker
						i(11916),	-- Shizzle's Muzzle
						i(11917),	-- Shizzle's Nozzle Wiper
					},
				}),
				q(4084, {	-- Silver Heart
					["lvl"] = 47,
				}),
				q(4289, {	-- The Apes of Un'Goro
					["lvl"] = 47,
					["qg"] = 9619,	-- Torwa Pathfinder
				}),
				q(4292, {	-- The Bait for Lar'korwi
					["lvl"] = 48,
					["qg"] = 9619,	-- Torwa Pathfinder
					["g"] = {
						i(11876),	-- Plainstalker Tunic
						i(11882),	-- Outrider Leggings
					},
				}),
				q(4287, {	-- The Eastern Pylon
					["lvl"] = 47,
					["qg"] = 9117,	-- J.D. Collie
				}),
				q(4290, {	-- The Fare of Lar'korwi
					["lvl"] = 48,
				}),
				q(4301, {	-- The Mighty U'cha
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 9619,	-- Torwa Pathfinder
					["g"] = {
						i(11906),	-- Beastsmasher
						i(11907),	-- Beastslayer
					},
				}),
				q(980, {	-- The New Springs
					["lvl"] = 51,
					["races"] = HORDE_ONLY,
					["qg"] = 10302,	-- Krakle
				}),
				q(4285, {	-- The Northern Pylon
					["lvl"] = 47,
					["qg"] = 9117,	-- J.D. Collie
				}),
				q(4291, {	-- The Scent of Lar'korwi
					["lvl"] = 48,
					["qg"] = 9619,	-- Torwa Pathfinder
				}),
				q(3909, {	-- The Videre Elixir
					["lvl"] = 47,
					["qg"] = 9298,	-- Donova Snowden
					["g"] = {
						i(11242),	-- Evoroot
					},
				}),
				q(4288, {	-- The Western Pylon
					["lvl"] = 47,
					["qg"] = 9117,	-- J.D. Collie
				}),
				q(4502, {	-- Volcanic Activity
					["lvl"] = 49,
					["qg"] = 8496,	-- Liv Rizzlefix
				}),
				q(3884, {	-- Williden's Journal
					["lvl"] = 48,
				}),
			}),
		}),
	}),
};