---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(DUN_MOROGH, {	-- Dun Morogh
			n(-17, {	-- Quests
				q(319, {	-- A Favor for Evershine
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1374,	-- Rejold Barleybrew
				}),
				q(170, {	-- A New Threat
					["races"] = ALLIANCE_ONLY,
					["qg"] = 713,	-- Balir Frosthammer
					["g"] = {
						i(6185),	-- Bear Shawl
						i(2172),	-- Rustic Belt
						i(6173),	-- Snow Boots
					},
				}),
				q(417, {	-- A Pilot's Revenge
					["lvl"] = 8,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 2059,	-- A Dwarven Corpse
					["g"] = {
						i(2218),	-- Craftsman's Dagger
						i(1009),	-- Compact Hammer
					},
				}),
				q(3361, {	-- A Refugee's Quandary
					["lvl"] = 3,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8416,	-- Felix Whindlebolt
				}),
				q(5541, {	-- Ammo for Rumbleshot
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1694,	-- Loslor Rudge
				}),
				q(310, {	-- Bitter Rivals
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1375,	-- Marleth Barleybrew
				}),
				q(3365, {	-- Bring Back the Mug
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 836,	-- Durnan Furcutter
				}),
				q(234, {	-- Coldridge Valley Mail Delivery
					["races"] = ALLIANCE_ONLY,
					["qg"] = 714,	-- Talin Keeneye
				}),
				q(233, {	-- Coldridge Valley Mail Delivery
					["races"] = ALLIANCE_ONLY,
					["qg"] = 658,	-- Sten Stoutarm
				}),
				q(308, {	-- Distracting Jarven
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["qg"] = 1373,	-- Jarven Thunderbrew
				}),
				q(179, {	-- Dwarven Outfitters
					["races"] = ALLIANCE_ONLY,
					["qg"] = 658,	-- Sten Stoutarm
					["g"] = {
						i(719),	-- Rabbit Handler Gloves
						i(6171),	-- Wolf Handler Gloves
						i(2547),	-- Boar Handler Gloves
					},
				}),
				q(3113, {	-- Encrypted Memorandum
					["lvl"] = 1,
					["races"] = { 7 },	-- Gnome
					["classes"] = { 4 },	-- Rogue
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
				}),
				q(3109, {	-- Encrypted Rune
					["lvl"] = 1,
					["races"] = { 3 },	-- Dwarf
					["classes"] = { 4 },	-- Rogue
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
				}),
				q(318, {	-- Evershine
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1378,	-- Pilot Bellowfiz
				}),
				q(287, {	-- Frostmane Hold
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1252,	-- Senir Whitebeard
					["g"] = {
						i(3216),	-- Warm Winter Robe
						i(2900),	-- Stone Buckler
					},
				}),
				q(403, {	-- Guarded Thunderbrew Barrel
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					--["objectID"] = 269,	-- Guarded Thunder Ale Barrel
				}),
				q(2239, {	-- Onin's Report
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 6886,	-- Onin MacHammer
					["sourceQuest"] = 2238,	-- Simple Subterfugin'
					["g"] = {
						i(7298),	-- Blade of Cunning
					},
				}),
				q(412, {	-- Operation Recombobulation
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1269,	-- Razzle Sprysprocket
					["g"] = {
						i(3152),	-- Driving Gloves
						i(3153),	-- Oil-stained Cloak
					},
				}),
				q(314, {	-- Protecting the Herd
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1265,	-- Rudra Amberstill
					["g"] = {
						i(10549),	-- Rancher's Trousers
						i(2817),	-- Soft Leather Tunic
						i(3103),	-- Coldridge Hammer
					},
				}),
				q(415, {	-- Rejold's New Brew
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 8,
					["altQuests"] = {
						413,	-- Shimmer Stout
					},
					["g"] = {
						i(3087),	-- Mug of Shimmer Stout
					},
				}),
				q(320, {	-- Return to Bellowfiz
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1374,	-- Rejold Barleybrew
					["g"] = {
						i(1011),	-- Sharp Axe
						i(1010),	-- Gnarled Short Staff
						i(10547),	-- Camping Knife
					},
				}),
				q(311, {	-- Return to Marleth
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 270,	-- Unguarded Thunder Ale Barrel
				}),
				q(2218, {	-- Road to Salvation
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 1234,	-- Hogral Bakkan
				}),
				q(3364, {	-- Scalding Mornbrew Delivery
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 12738,	-- Nori Pridedrift
				}),
				q(466, {	-- Search for Incendicite
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1377,	-- Pilot Stonegear
					["g"] = {
						i(3565),	-- Beerstained Gloves
					},
				}),
				q(420, {	-- Senir's Observations
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1965,	-- Mountaineer Thalos
				}),
				q(282, {	-- Senir's Observations
					["races"] = ALLIANCE_ONLY,
					["qg"] = 786,	-- Grelin Whitebeard
				}),
				q(413, {	-- Shimmer Stout
					["lvl"] = 8,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1374,	-- Rejold Barleybrew
				}),
				{
					["questID"] = 1879,	-- Speak with Bink
					["qg"] = 1228,	-- Magis Sparkmantle <Mage Trainer>
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						1860,	-- Speak with Jennea
					},
					["classes"] = {8},	-- Mage
				},
				q(317, {	-- Stocking Jetsteam
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1378,	-- Pilot Bellowfiz
				}),
				q(467, {	-- Stonegear's Search
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
						1340,	-- Mountaineer Kadrell
						2092,	-- Pilot Longbeard
					},
				}),
				q(414, {	-- Stout to Kadrell
					["lvl"] = 8,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1959,	-- Mountaineer Barleybrew
				}),
				q(2160, {	-- Supplies to Tannok
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6782,	-- Hands Springsprocket
					["g"] = {
						i(117),	-- Tough Jerky
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(183, {	-- The Boar Hunter
					["races"] = ALLIANCE_ONLY,
					["qg"] = 714,	-- Talin Keeneye
					["g"] = {
						i(79),	-- Dwarven Cloth Britches
						i(61),	-- Dwarven Leather Pants
					},
				}),
				q(313, {	-- The Grizzled Den
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1377,	-- Pilot Stonegear
				}),
				q(419, {	-- The Lost Pilot
					["lvl"] = 8,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1960,	-- Pilot Hammerfoot
					["g"] = {
						i(3151),	-- Siege Brigade Vest
					},
				}),
				q(315, {	-- The Perfect Stout
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1374,	-- Rejold Barleybrew
					["g"] = {
						i(2905),	-- Goat Fur Cloak
						i(2326),	-- Ivy-weave Bracers
					},
				}),
				q(433, {	-- The Public Servant
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1977,	-- Senator Mehr Stonehallow
				}),
				q(291, {	-- The Reports
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1252,	-- Senir Whitebeard
				}),
				q(218, {	-- The Stolen Journal
					["races"] = ALLIANCE_ONLY,
					["qg"] = 786,	-- Grelin Whitebeard
					["g"] = {
						i(6176),	-- Dwarven Kite Shield
						i(5581),	-- Smooth Walking Staff
					},
				}),
				q(182, {	-- The Troll Cave
					["races"] = ALLIANCE_ONLY,
					["qg"] = 786,	-- Grelin Whitebeard
					["g"] = {
						i(2047),	-- Anvilmar Hand Axe
						i(2048),	-- Anvilmar Hammer
						i(2195),	-- Anvilmar Knife
						i(5761),	-- Anvilmar Sledge
						i(961),	-- Healing Herb
					},
				}),
				q(432, {	-- Those Blasted Troggs!
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1254,	-- Foreman Stonebrow
				}),
				q(400, {	-- Tools for Steelgrill
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1872,	-- Tharek Blackstone
				}),
				q(312, {	-- Tundra MacGrann's Stolen Stash
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1266,	-- Tundra MacGrann
					["g"] = {
						i(6177),	-- Ironwrought Bracers
						i(10550),	-- Wooly Mittens
					},
				}),
				q(5841, {	-- Welcome!
					["provider"] = { "i", 14647 },	-- Coldridge Valley Gift Voucher
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