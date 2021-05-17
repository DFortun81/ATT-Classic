---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SILVERPINE_FOREST, {
			n(ZONEDROPS, {
				i(3317, {	-- A Talking Head
					["questID"] = 460,	-- Resting in Pieces
					["races"] = HORDE_ONLY,
					["crs"] = {
						1943,	-- Raging Rot Hide
						1944,	-- Rot Hide Bruiser
						1939,	-- Rot Hide Brute
						1940,	-- Rot Hide Plague Weaver
						1942,	-- Rot Hide Savage
					},
				}),
				i(7231, {	-- Astor's Letter of Introduction [TODO: Move this to Class Quests Section]
					["questID"] = 1898,	-- The Deathstalkers
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["cr"] = 6497,	-- Astor Hadren
				}),
				i(4767, {	-- Coppercloth Gloves
					["cr"] = 3578,	-- Dalaran Miner
				}),
				i(7812, {	-- Corrupt Manifestation's Bracers [TODO: Move this to Class Quests Section]
					["questID"] = 63,	-- Call of Water
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cr"] = 5894,	-- Corrupt Minor Manifestation of Water
				}),
				i(3354, {	-- Dalaran Pendant
					["questID"] = 479,	-- Ambermill Investigations
					["races"] = HORDE_ONLY,
					["crs"] = {
						1915,	-- Dalaran Conjuror
						1914,	-- Dalaran Mage
						1912,	-- Dalaran Protector
					},
				}),
				i(7293, {	-- Dalaran Mana Gem
					["questID"] = 1961,	-- Gathering Materials
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["crs"] = {
						1867,	-- Dalaran Apprentice
						3577,	-- Dalaran Brewmaster
						1915,	-- Dalaran Conjuror
						1914,	-- Dalaran Mage
						3578,	-- Dalaran Miner
						1912,	-- Dalaran Protector
						1913,	-- Dalaran Warder
						1888,	-- Dalaran Watcher
						1889,	-- Dalaran Wizard
					},
				}),
				i(5110, {	-- Dalaran Wizard's Robe
					["crs"] = {
						2120,	-- Archmage Ataeric
						1867,	-- Dalaran Apprentice
						3577,	-- Dalaran Brewmaster
						1915,	-- Dalaran Conjuror
						1914,	-- Dalaran Mage
						3578,	-- Dalaran Miner
						1912,	-- Dalaran Protector
						1920,	-- Dalaran Spellscribe
						1913,	-- Dalaran Warder
						1888,	-- Dalaran Watcher
						1889,	-- Dalaran Wizard
					},
				}),
				i(6312, {	-- Dalin's Heart [TODO: Move this to Class Quests Section]
					["questID"] = 1476,	-- Hearts of the Pure
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["cr"] = 5682,	-- Dalin Forgewright
				}),
				i(3157, {	-- Darksoul Shackle
					["questID"] = 423,	-- Arugal's Folly
					["cr"] = 1782,	-- Moonrage Darksoul
					["races"] = HORDE_ONLY,
				}),
				i(3164, {	-- Discolored Worg Heart
					["questID"] = 429,	-- Wild Hearts
					["races"] = HORDE_ONLY,
					["crs"] = {
						1923,	-- Bloodsnout Worg
						12431,	-- Gorefang
						1766,	-- Mottled Worg
						1765,	-- Worg
					},
				}),
				i(3156, {	-- Glutton Shackle
					["questID"] = 423,	-- Arugal's Folly
					["cr"] = 1779,	-- Moonrage Glutton
					["races"] = HORDE_ONLY,
				}),
				i(3253, {	-- Grizzled Bear Heart
					["questID"] = 447,	-- A Recipe For Death
					["races"] = HORDE_ONLY,
					["crs"] = {
						1778,	-- Ferocious Grizzled Bear
						1797,	-- Giant Grizzled Bear
						12432,	-- Old Vicejaw
					},
				}),
				i(3258, {	-- Hardened Tumor
					["questID"] = 451,	-- A Recipe For Death
					["races"] = HORDE_ONLY,
					["crs"] = {
						1909,	-- Vile Fin Lakestalker
						1908,	-- Vile Fin Oracle
						1957,	-- Vile Fin Shorecreeper
						1767,	-- Vile Fin Shredder
						1958,	-- Vile Fin Tidecaller
						1768,	-- Vile Fin Tidehunter
					},
				}),
				i(3257, {	-- Lake Creeper Moss
					["questID"] = 451,	-- A Recipe For Death
					["races"] = HORDE_ONLY,
					["crs"] = {
						1956,	-- Elder Lake Creeper
						1955,	-- Lake Creeper
					},
				}),
				i(3256, {	-- Lake Skulker Moss
					["questID"] = 451,	-- A Recipe For Death
					["races"] = HORDE_ONLY,
					["crs"] = {
						1954,	-- Elder Lake Skulker
						1953,	-- Lake Skulker
					},
				}),
				i(5771, {	-- Pattern: Red Linen Bag
					["crs"] = {
						3531,	-- Moonrage Tailor
						3530,	-- Pyrewood Tailor
					},
				}),
				i(3218, {	-- Pyrewood Shackle
					["questID"] = 99,	-- Arugal's Folly
					["races"] = HORDE_ONLY,
					["crs"] = {
						3529,	-- Moonrage Armorer
						1896,	-- Moonrage Elder
						3533,	-- Moonrage Leatherworker
						1893,	-- Moonrage Sentry
						3531,	-- Moonrage Tailor
						1892,	-- Moonrage Watcher
						3528,	-- Pyrewood Armorer
						1895,	-- Pyrewood Elder
						3532,	-- Pyrewood Leatherworker
						1894,	-- Pyrewood Sentry
						3530,	-- Pyrewood Tailor
						1891,	-- Pyrewood Watcher
					},
				}),
				i(3236, {	-- Rot Hide Ichor
					["questID"] = 443,	-- Rot Hide Ichor
					["races"] = HORDE_ONLY,
					["crs"] = {
						1943,	-- Raging Rot Hide
						1944,	-- Rot Hide Bruiser
						1939,	-- Rot Hide Brute
						1940,	-- Rot Hide Plague Weaver
						1942,	-- Rot Hide Savage
					},
				}),
				i(3254, {	-- Skittering Blood
					["questID"] = 447,	-- A Recipe For Death
					["races"] = HORDE_ONLY,
					["crs"] = {
						12433,	-- Krethis Shadowspinner
						1781,	-- Mist Creeper
						1780,	-- Moss Stalker
					},
				}),
			}),
		}),
	}),
};