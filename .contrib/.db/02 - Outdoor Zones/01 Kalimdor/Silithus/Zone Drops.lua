---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(SILITHUS, {
			n(ZONEDROPS, {
				i(20461, {	-- Brann Bronzebeard's Lost Letter
					["questID"] = 8308,	-- Brann Bronzebeard's Lost Letter
					["crs"] = {
						13301,	-- Hive'Ashi Ambusher
						11722,	-- Hive'Ashi Defender
						13136,	-- Hive'Ashi Drone
						11723,	-- Hive'Ashi Sandstalker
						11698,	-- Hive'Ashi Stinger
						11724,	-- Hive'Ashi Swarmer
						11721,	-- Hive'Ashi Worker
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
						11729,	-- Hive'Zora Hive Sister
						11728,	-- Hive'Zora Reaver
						11726,	-- Hive'Zora Tunneler
						11727,	-- Hive'Zora Wasp
						11725,	-- Hive'Zora Waywatcher
					},
				}),
				un(PHASE_FIVE, i(22226, {	-- Druidical Remains
					["crs"] = {
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
					},
				})),
				i(20404, {	-- Encrypted Twilight Text
					["questID"] = 8323,	-- True Believers
					["crs"] = {
						15308,	-- Twilight Prophet <Twilight's Hammer>
						15541,	-- Twilight Marauder Morna <Twilight's Hammer>
						11880,	-- Twilight Avenger <Twilight's Hammer>
						15201,	-- Twilight Flamereaver
						11881,	-- Twilight Geolord <Twilight's Hammer>
						11804,	-- Twilight Keeper Havunth <Twilight's Hammer>
						14479,	-- Twilight Lord Everun <Twilight's Hammer>
						15542,	-- Twilight Marauder <Twilight's Hammer>
						11883,	-- Twilight Master <Twilight's Hammer>
						15213,	-- Twilight Overlord <Twilight's Hammer>
						11882,	-- Twilight Stonecaller <Twilight's Hammer>
					},
				}),
				i(20457, {	-- Hive'Ashi Silithid Brain
					["questID"] = 8310,	-- Breaking the Code
					["crs"] = {
						13301,	-- Hive'Ashi Ambusher
						11722,	-- Hive'Ashi Defender
						13136,	-- Hive'Ashi Drone
						11723,	-- Hive'Ashi Sandstalker
						11698,	-- Hive'Ashi Stinger
						11724,	-- Hive'Ashi Swarmer
						11721,	-- Hive'Ashi Worker
					},
				}),
				i(20459, {	-- Hive'Regal Silithid Brain
					["questID"] = 8310,	-- Breaking the Code
					["crs"] = {
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
					},
				}),
				i(20458, {	-- Hive'Zora Silithid Brain
					["questID"] = 8310,	-- Breaking the Code
					["crs"] = {
						11729,	-- Hive'Zora Hive Sister
						11728,	-- Hive'Zora Reaver
						11726,	-- Hive'Zora Tunneler
						11727,	-- Hive'Zora Wasp
						11725,	-- Hive'Zora Waywatcher
					},
				}),
				i(20377, {	-- Rock Stalker Fang
					["questID"] = 8278,	-- Noggle's Last Hope
					["cr"] = 11739,	-- Rock Stalker
				}),
				i(20376, {	-- Sand Skitterer Fang
					["questID"] = 8277,	-- Deadly Desert Venom
					["cr"] = 11738,	-- Sand Skitterer
				}),
				un(PHASE_FIVE, i(21937, {	-- Scorched Ectoplasm
					["questID"] = 8924,	-- Hunting for Ectoplasm
					["crs"] = {
						12178,	-- Tortured Druid
						12179,	-- Tortured Sentinel
					},
					["cost"] = {
						{ "i", 21946, 1 },	-- Ectoplasmic Distiller
					},
				})),
				i(22381, {	-- Silithus Venom Sample
					["crs"] = {
						11739,	-- Rock Stalker
						11738,	-- Sand Skitterer
						11737,	-- Stonelash Flayer
						11736,	-- Stonelash Pincer
						11735,	-- Stonelash Scorpid
					},
				}),
				i(20375, {	-- Stonelash Flayer Stinger
					["questID"] = 8278,	-- Noggle's Last Hope
					["cr"] = 11737,	-- Stonelash Flayer
				}),
				i(20374, {	-- Stonelash Pincer Stinger
					["questID"] = 8278,	-- Noggle's Last Hope
					["cr"] = 11736,	-- Stonelash Pincer
				}),
				i(20373, {	-- Stonelash Scorpid Stinger
					["questID"] = 8277,	-- Deadly Desert Venom
					["cr"] = 11735,	-- Stonelash Scorpid
				}),
				
				-- <Abyssal Templar> Drops
				i(20513, {	-- Abyssal Crest
					["crs"] = {
						15211,	-- Azure Templar <Abyssal Council>
						15209,	-- Crimson Templar <Abyssal Council>
						15307,	-- Earthen Templar <Abyssal Council>
						15212,	-- Hoary Templar <Abyssal Council>
					},
				}),
				i(20515, {	-- Abyssal Scepter
					["crs"] = {
						15205,	-- Baron Kazum <Abyssal High Council>
						15204,	-- High Marshal Whirlaxis <Abyssal High Council>
						15305,	-- Lord Skwol <Abyssal High Council>
						15203,	-- Prince Skaldrenox <Abyssal High Council>
					},
				}),
				i(20514, {	-- Abyssal Signet
					["crs"] = {
						15206,	-- The Duke of Cynders <Abyssal Council>
						15207,	-- The Duke of Fathoms <Abyssal Council>
						15208,	-- The Duke of Shards <Abyssal Council>
						15220,	-- The Duke of Zephyrs <Abyssal Council>
					},
				}),
				i(20686, {	-- Abyssal Cloth Amice
					["cr"] = 15205,	-- Baron Kazum <Abyssal High Council>
				}),
				i(20655, {	-- Abyssal Cloth Handwraps
					["cr"] = 15209,	-- Crimson Templar <Abyssal Council>
				}),
				i(20674, {	-- Abyssal Cloth Pants
					["cr"] = 15220,	-- The Duke of Zephyrs <Abyssal Council>
				}),
				i(20664, {	-- Abyssal Cloth Sash
					["cr"] = 15206,	-- The Duke of Cynders <Abyssal Council>
				}),
				i(20652, {	-- Abyssal Cloth Slippers
					["cr"] = 15211,	-- Azure Templar <Abyssal Council>
				}),
				i(20690, {	-- Abyssal Cloth Wristbands
					["cr"] = 15204,	-- High Marshal Whirlaxis <Abyssal High Council>
				}),
				i(20667, {	-- Abyssal Leather Belt
					["cr"] = 15207,	-- The Duke of Fathoms <Abyssal Council>
				}),
				i(20658, {	-- Abyssal Leather Boots
					["cr"] = 15212,	-- Hoary Templar <Abyssal Council>
				}),
				i(20681, {	-- Abyssal Leather Bracers
					["cr"] = 15203,	-- Prince Skaldrenox <Abyssal High Council>
				}),
				i(20661, {	-- Abyssal Leather Gloves
					["cr"] = 15307,	-- Earthen Templar <Abyssal Council>
				}),
				i(20665, {	-- Abyssal Leather Leggings
					["cr"] = 15206,	-- The Duke of Cynders <Abyssal Council>
				}),
				i(20689, {	-- Abyssal Leather Shoulders
					["cr"] = 15204,	-- High Marshal Whirlaxis <Abyssal High Council>
				}),
				i(20684, {	-- Abyssal Mail Armguards
					["cr"] = 15305,	-- Lord Skwol <Abyssal High Council>
				}),
				i(20670, {	-- Abyssal Mail Clutch
					["cr"] = 15208,	-- The Duke of Shards <Abyssal Council>
				}),
				i(20659, {	-- Abyssal Mail Handguards
					["cr"] = 15212,	-- Hoary Templar <Abyssal Council>
				}),
				i(20668, {	-- Abyssal Mail Legguards
					["cr"] = 15207,	-- The Duke of Fathoms <Abyssal Council>
				}),
				i(20680, {	-- Abyssal Mail Pauldrons
					["cr"] = 15203,	-- Prince Skaldrenox <Abyssal High Council>
				}),
				i(20656, {	-- Abyssal Mail Sabatons
					["cr"] = 15209,	-- Crimson Templar <Abyssal Council>
				}),
				i(20683, {	-- Abyssal Plate Epaulets
					["cr"] = 15305,	-- Lord Skwol <Abyssal High Council>
				}),
				i(20653, {	-- Abyssal Plate Gauntlets
					["cr"] = 15211,	-- Azure Templar <Abyssal Council>
				}),
				i(20673, {	-- Abyssal Plate Girdle
					["cr"] = 15220,	-- The Duke of Zephyrs <Abyssal Council>
				}),
				i(20662, {	-- Abyssal Plate Greaves
					["cr"] = 15307,	-- Earthen Templar <Abyssal Council>
				}),
				i(20671, {	-- Abyssal Plate Legplates
					["cr"] = 15208,	-- The Duke of Shards <Abyssal Council>
				}),
				i(20687, {	-- Abyssal Plate Vambraces
					["cr"] = 15205,	-- Baron Kazum <Abyssal High Council>
				}),
				
				i(20654, {	-- Amethyst War Staff
					["cr"] = 15211,	-- Azure Templar <Abyssal Council>
				}),
				un(PHASE_FIVE, i(21989, {	-- Cinder of Cynders
					["questID"] = 8961,	-- Three Kings of Flame
					["cr"] = 15206,	-- The Duke of Cynders <Abyssal Council>
				})),
				i(20657, {	-- Crystal Tipped Stiletto
					["cr"] = 15209,	-- Crimson Templar <Abyssal Council>
				}),
				i(20669, {	-- Darkstone Claymore
					["cr"] = 15207,	-- The Duke of Fathoms <Abyssal Council>
				}),
				i(20663, {	-- Deep Strike Bow
					["cr"] = 15307,	-- Earthen Templar <Abyssal Council>
				}),
				i(20688, {	-- Earthen Guard
					["cr"] = 15205,	-- Baron Kazum <Abyssal High Council>
				}),
				i(20682, {	-- Elemental Focus Band
					["cr"] = 15203,	-- Prince Skaldrenox <Abyssal High Council>
				}),
				i(20666, {	-- Hardened Steel Warhammer
					["cr"] = 15206,	-- The Duke of Cynders <Abyssal Council>
				}),
				i(20675, {	-- Soulrender
					["cr"] = 15220,	-- The Duke of Zephyrs <Abyssal Council>
				}),
				i(20672, {	-- Sparkling Crystal Wand
					["cr"] = 15208,	-- The Duke of Shards <Abyssal Council>
				}),
				i(20660, {	-- Stonecutting Glaive
					["cr"] = 15212,	-- Hoary Templar <Abyssal Council>
				}),
				
				-- Twilight Cultist Drops
				i(20408),	-- Twilight Cultist Cowl
				i(20406),	-- Twilight Cultist Mantle
				i(20407),	-- Twilight Cultist Robe
				
				i(20685, {	-- Wavefront Necklace
					["cr"] = 15305,	-- Lord Skwol <Abyssal High Council>
				}),
				i(20691, {	-- Windshear Cape
					["cr"] = 15204,	-- High Marshal Whirlaxis <Abyssal High Council>
				}),
			}),
		}),
	}),
};