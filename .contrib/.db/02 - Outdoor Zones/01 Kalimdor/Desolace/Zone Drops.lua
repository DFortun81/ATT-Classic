---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DESOLACE, {
			n(ZONEDROPS, {
				i(6249, {	-- Aged Kodo Hide
					["questID"] = 1459,	-- Reagents for Reclaimers Inc. (2/4)
					["races"] = ALLIANCE_ONLY,
					["cr"] = 4700,	-- Aged Kodo
				}),
				i(6248, {	-- Scorpashi Venom
					["questID"] = 1459,	-- Reagents for Reclaimers Inc. (2/4)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4697,	-- Scorpashi Lasher
						4696,	-- Scorpashi Snapper
						4699,	-- Scorpashi Venomlash
					},
				}),
				i(2620, {	-- Augural Shroud
					["cr"] = 4684,	-- Nether Sorceress
				}),
				i(6079, {	-- Crude Charm
					["questID"] = 1384,	-- Raid on the Kolkar
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						12977,	-- Kolkar Ambusher
						4636,	-- Kolkar Battle Lord
						4632,	-- Kolkar Centaur
						4637,	-- Kolkar Destroyer
						4634,	-- Kolkar Mauler
						4633,	-- Kolkar Scout
						12976,	-- Kolkar Waylayer
						4635,	-- Kolkar Windchaser
					},
				}),
				i(6082, {	-- Deepstrider Tumor
					["questID"] = 1383,	-- Nothing But The Truth
					["races"] = HORDE_ONLY,
					["crs"] = {
						4686,	-- Deepstrider Giant
						4687,	-- Deepstrider Searcher
					},
				}),
				i(6252, {	-- Doomwarder Blood
					["questID"] = 1466,	-- Reagents for Reclaimers Inc. (3/4)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4680,	-- Doomwarder Captain
						14226,	-- Kaskk
						5760,	-- Lord Azrethoc
					},
				}),
				i(6250, {	-- Felhound Brain
					["questID"] = 1466,	-- Reagents for Reclaimers Inc. (3/4)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4685,	-- Ley Hunter
						4681,	-- Mage Hunter
						4678,	-- Mana Eater
					},
				}),
				i(20310, {	-- Flayed Demon Skin
					["questID"] = 1480,	-- The Corrupter (1/5)
					["races"] = HORDE_ONLY,
					["crs"] = {
						4665,	-- Burning Blade Adept
						4663,	-- Burning Blade Augur
						4666,	-- Burning Blade Felsworn
						4705,	-- Burning Blade Invoker
						4664,	-- Burning Blade Reaver
						13019,	-- Burning Blade Seer
						4667,	-- Burning Blade Shadowmage
						4668,	-- Burning Blade Summoner
					},
				}),
				i(6246, {	-- Hatefury Claw
					["questID"] = 1458,	-- Reagents for Reclaimers Inc. (1/4)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4673,	-- Hatefury Betrayer
						4672,	-- Hatefury Felsworn
						4675,	-- Hatefury Hellcaller
						4670,	-- Hatefury Rogue
						4674,	-- Hatefury Shadowstalker
						4671,	-- Hatefury Trickster
						14225,	-- Prince Kellen
					},
				}),
				i(6247, {	-- Hatefury Horn
					["questID"] = 1458,	-- Reagents for Reclaimers Inc. (1/4)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4673,	-- Hatefury Betrayer
						4672,	-- Hatefury Felsworn
						4675,	-- Hatefury Hellcaller
						4670,	-- Hatefury Rogue
						4674,	-- Hatefury Shadowstalker
						4671,	-- Hatefury Trickster
						14225,	-- Prince Kellen
					},
				}),
				i(6245, {	-- Karnitol's Satchel
					["questID"] = 1456,	-- The Karnitol Shipwreck (3/4)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4719,	-- Slitherblade Sea Witch
						4716,	-- Slitherblade Tidehunter
					},
				}),
				i(6990, {	-- Lesser Infernal Stone
					["questID"] = 4783,	-- Components for the Enchanted Gold Bloodrobe (4/5)
					["classes"] = { WARLOCK },
					["cr"] = 4676,	-- Lesser Infernal
				}),
				i(6251, {	-- Nether Wing
					["questID"] = 1466,	-- Reagents for Reclaimers Inc. (3/4)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4679,	-- Nether Maiden
						4682,	-- Nether Sister
						4684,	-- Nether Sorceress
					},
				}),
				i(15881, {	-- Rackmore's Golden Key
					["questID"] = 6161,	-- Claim Rackmore's Treasure!
					["crs"] = {
						14229,	-- Accursed Slitherblade
						4714,	-- Slitherblade Myrmidon
						4711,	-- Slitherblade Naga
						4718,	-- Slitherblade Oracle
						4715,	-- Slitherblade Razortail
						4719,	-- Slitherblade Sea Witch
						4712,	-- Slitherblade Sorceress
						4716,	-- Slitherblade Tidehunter
						4713,	-- Slitherblade Warrior
					},
				}),
				i(15878, {	-- Rackmore's Silver Key
					["questID"] = 6161,	-- Claim Rackmore's Treasure!
					["crs"] = {
						11562,	-- Drysnap Crawler
						11563,	-- Drysnap Pincer
					},
				}),
				o(176582, {	-- Shellfish Trap
					["coords"] = {
						{ 20.3, 71.3, DESOLACE },
						{ 23.4, 77.1, DESOLACE },
						{ 18.1, 86.5, DESOLACE },
					},
					["groups"] = {
						i(6367),	-- Big Iron Fishing Pole
						i(13545),	-- Shellfish
					},
				}),
				i(15874, {	-- Soft-shelled Clam
					["cr"] = 12347,	-- Enraged Reef Crawler
					["races"] = HORDE_ONLY,
					["groups"] = {
						{
							["itemID"] = 15924,	-- Soft-shelled Clam Meat
							["questID"] = 6142,	-- Clam Bait
						},
					},
				}),
				i(6989, {	-- Vial of Hatefury Blood
					["questID"] = 4783,	-- Components for the Enchanted Gold Bloodrobe (4/5)
					["classes"] = { WARLOCK },
					["crs"] = {
						4673,	-- Hatefury Betrayer
						4672,	-- Hatefury Felsworn
						4675,	-- Hatefury Hellcaller
						4670,	-- Hatefury Rogue
						4674,	-- Hatefury Shadowstalker
						4671,	-- Hatefury Trickster
						14225,	-- Prince Kellen
					},
				}),
			}),
		}),
	}),
};