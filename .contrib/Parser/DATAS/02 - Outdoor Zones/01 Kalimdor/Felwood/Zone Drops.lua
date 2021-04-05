---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FELWOOD, {
			n(ZONEDROPS, {
				i(11503, {	-- Blood Amber
					["allianceQuestID"] = 4101,	-- Cleansing Felwood
					["hordeQuestID"] = 4102,	-- Cleansing Felwood
					["crs"] = {
						7104,	-- Dessecus
						7100,	-- Warpwood Moss Flayer
						7101,	-- Warpwood Shredder
					},
				}),
				i(20614, {	-- Bloodvenom Essence
					["questID"] = 8421,	-- The Wrong Stuff
					["classes"] = { WARLOCK },
					["cr"] = 7092,	-- Tainted Ooze
				}),
				i(11511, {	-- Cenarion Beacon
					["description"] = "You must keep this in your bags for the Fel Creep, Patch of Tainted Skin, Tainted Vitriol, and Corrupted Soul Shards to drop from the various means of gathering.",
					["sourceQuests"] = {
						4101,	-- Cleansing Felwood (A)
						4102,	-- Cleansing Felwood (H)
					},
				}),
				i(11515, {	-- Corrupted Soul Shard
					["description"] = "In order for this to drop by killing mobs, you must have the Cenarion Beacon in your bags.",
					["cost"] = {
						{ "i", 11511, 1 },	-- Cenarion Beacon
					},
				}),
				i(21377, {	-- Deadwood Headdress Feather
					["crs"] = {
						9462,	-- Chieftain Bloodmaw
						7157,	-- Deadwood Avenger
						7156,	-- Deadwood Den Watcher
						7154,	-- Deadwood Gardener
						7155,	-- Deadwood Pathfinder
						7158,	-- Deadwood Shaman
						7153,	-- Deadwood Warrior
						9464,	-- Overlord Ror
						14342,	-- Ragepaw
					},
				}),
				i(11514, {	-- Fel Creep
					["description"] = "In order for this to drop while Herbing, you must have the Cenarion Beacon in your bags.",
					["cost"] = {
						{ "i", 11511, 1 },	-- Cenarion Beacon
					},
				}),
				i(12230, {	-- Felwood Slime Sample
					["questID"] = 4293,	-- A Sample of Slime...
					["races"] = HORDE_ONLY,
					["crs"] = {
						7086,	-- Cursed Ooze
						7092,	-- Tainted Ooze
						14345,	-- The Ongar
					},
				}),
				i(18622, {	-- Flawless Fel Essence (Jaedenar)
					["questID"] = 7602,	-- Flawless Fel Essence
					["cr"] = 9862,	-- Jaedenar Legionnaire
					["classes"] = { WARLOCK },
				}),
				i(11674, {	-- Jadefire Felbind
					["questID"] = 939,	-- Flute of Xavaric
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						14340,	-- Alshirr Banebreath
						7108,	-- Jadefire Betrayer
						7109,	-- Jadefire Felsworn
						7111,	-- Jadefire Hellcaller
						7106,	-- Jadefire Rogue
						7105,	-- Jadefire Satyr
						7110,	-- Jadefire Shadowstalker
						7107,	-- Jadefire Trickster
					},
				}),
				i(11173, {	-- Irontree Heart
					["questID"] = 4084,	-- Silver Heart
					["crs"] = {
						7139,	-- Irontree Stomper
						7138,	-- Irontree Wanderer
					},
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						7092,	-- Tainted Ooze
						14345,	-- The Ongar
						7093,	-- Vile Ooze
					},
					["groups"] = {
						i(20769),	-- Disgusting Oozeling
					},
				}),
				i(15752, {	-- Pattern: Living Leggings
					["cr"] = 7158,	-- Deadwood Shaman
				}),
				i(15739, {	-- Pattern: Runic Leather Bracers
					["cr"] = 7112,	-- Jaedenar Cultist
				}),
				un(2, i(15754, {	-- Pattern: Warbear Woolies
					["crs"] = {
						7158,	-- Deadwood Shaman
						7156,	-- Deadwood Den Watcher
					},
				})),
				i(15744, {	-- Pattern: Wicked Leather Headband
					["cr"] = 7107,	-- Jadefire Trickster
				}),
				i(13491, {	-- Recipe: Elixir of the Mongoose
					["cr"] = 7106,	-- Jadefire Rogue
				}),
				i(20613, {	-- Rotting Wood
					["questID"] = 8421,	-- The Wrong Stuff
					["classes"] = { WARLOCK },
					["crs"] = {
						7139,	-- Irontree Stomper
						7138,	-- Irontree Wanderer
						7149,	-- Withered Protector
					},
				}),
				i(11172, {	-- Silvery Claws
					["questID"] = 4084,	-- Silver Heart
					["crs"] = {
						8956,	-- Angerclaw Bear
						8957,	-- Angerclaw Grizzly
						8958,	-- Angerclaw Mauler
						14339,	-- Death Howl
						8961,	-- Felpaw Ravager
						8960,	-- Felpaw Scavenger
						8959,	-- Felpaw Wolf
						14344,	-- Mongress
					},
				}),
				i(11513, {	-- Tainted Vitriol
					["description"] = "In order for this to drop while Mining, you must have the Cenarion Beacon in your bags.",
					["cost"] = {
						{ "i", 11511, 1 },	-- Cenarion Beacon
					},
				}),
				i(12822, {	-- Toxic Horror Droplet
					["questID"] = 5086,	-- Toxic Horrors
					["cr"] = 7132,	-- Toxic Horror
				}),
			}),
		}),
	}),
};