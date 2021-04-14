---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ARATHI_HIGHLANDS, {
			n(ZONEDROPS, {
				i(4527, {	-- Azure Agate
					["questID"] = 694,	-- Trelane's Defenses
					["cr"] = 2570,	-- Boulderfist Shaman
					["races"] = ALLIANCE_ONLY,
				}),
				i(4495, {	-- Bloodstone Amulet
					["questID"] = 671,	-- Foul Magics
					["races"] = HORDE_ONLY,
					["crs"] = {
						2586,	-- Syndicate Highwayman
						2589,	-- Syndicate Mercenary
						2587,	-- Syndicate Pathstalker
					},
				}),
				i(4479, {	-- Burning Charm
					["questID"] = 1714,	-- Essence of the Exile
					["classes"] = { WARRIOR },
					["altQuests"] = {
						1712,	-- Cyclonian
					},
					["crs"] = {
						2760,	-- Burning Exile
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
				i(5624, {	-- Circlet of the Order
					["cr"] = 2584,	-- Stromgarde Defender
				}),
				i(4481, {	-- Cresting Charm
					["questID"] = 1714,	-- Essence of the Exile
					["classes"] = { WARRIOR },
					["altQuests"] = {
						1712,	-- Cyclonian
					},
					["crs"] = {
						2761,	-- Cresting Exile
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
				i(11166, {	-- Formula: Enchant Gloves - Skinning
					["crs"] = {
						2606,	-- Nimar the Slayer <Warband Leader>
						2558,	-- Witherbark Berserker
						2556,	-- Witherbark Headhunter
						2557,	-- Witherbark Shadow Hunter
					},
				}),
				i(3341, {	-- Gauntlets of Ogre Strength
					["crs"] = {
						2564,	-- Boulderfist Enforcer
						2562,	-- Boulderfist Ogre
					},
				}),
				i(4512, {	-- Highland Raptor Eye
					["questID"] = 672,	-- Raising Spirits
					["races"] = HORDE_ONLY,
					["crs"] = {
						2559,	-- Highland Strider
						2560,	-- Highland Thrasher
					},
				}),
				i(2623, {	-- Holy Diadem
					["crs"] = {
						2782,	-- Caretaker Alaric
						2780,	-- Caretaker Nevlin
						2781,	-- Caretaker Weston
					},
				}),
				i(4435, {	-- Mote of Myzrael
					["questID"] = 642,	-- The Princess Trapped
					["crs"] = {
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
				i(1993, {	-- Ogremind Ring
					["crs"] = {
						2570,	-- Boulderfist Shaman
						2567,	-- Boulderfist Magus
					},
				}),
				i(4513, {	-- Raptor Heart
					["questID"] = 701,	-- Guile of the Raptor
					["races"] = HORDE_ONLY,
					["cr"] = 2561,	-- Highland Fleshstalker
				}),
				i(1297, {	-- Robes of the Shadowcaster
					["crs"] = {
						2553,	-- Witherbark Shadowcaster
						2577,	-- Dark Iron Shadowcaster
					},
				}),
				i(5040, {	-- Shadow Hunter Knife
					["questID"] = 691,	-- Worth Its Weight in Gold
					["cr"] = 2557,	-- Witherbark Shadow Hunter
					["races"] = ALLIANCE_ONLY,
				}),
				i(4458, {	-- Sigil of Arathor
					["questID"] = 643,	-- Sigil of Arathor
					["races"] = HORDE_ONLY,
					["cr"] = 2612,	-- Lieutenant Valorcall
				}),
				i(4450, {	-- Sigil Fragment
					["questID"] = 640,	-- The Broken Sigil
					["races"] = HORDE_ONLY,
					["crs"] = {
						2584,	-- Stromgarde Defender
						2583,	-- Stromgarde Troll Hunter
						2585,	-- Stromgarde Vindicator
					},
				}),
				i(4440, {	-- Sigil of Strom
					["questID"] = 639,	-- Sigil of Strom
					["races"] = HORDE_ONLY,
					["crs"] = {
						2590,	-- Syndicate Conjuror
						2591,	-- Syndicate Magus
						2588,	-- Syndicate Prowler
					},
				}),
				i(4466, {	-- Sigil of Trollbane
					["questID"] = 644,	-- Sigil of Trollbane
					["races"] = HORDE_ONLY,
					["cr"] = 2607,	-- Prince Galen Trollbane
				}),
				i(3345, {	-- Silk Wizard Hat
					["cr"] = 2591,	-- Syndicate Magus
				}),
				i(6991, {	-- Smoldering Coal
					["questID"] = 4784,	-- Components for the Enchanted Gold Bloodrobe
					["cr"] = 2760,	-- Burning Exile
					["classes"] = { WARLOCK },
				}),
				i(4506, {	-- Stromgarde Badge
					["questID"] = 682,	-- Stromgarde Badges
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2590,	-- Syndicate Conjuror
						2591,	-- Syndicate Magus
						2588,	-- Syndicate Prowler
					},
				}),
				i(4480, {	-- Thundering Charm
					["questID"] = 1714,	-- Essence of the Exile
					["classes"] = { WARRIOR },
					["altQuests"] = {
						1712,	-- Cyclonian
					},
					["crs"] = {
						2762,	-- Thundering Exile
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
				i(4522, {	-- Witherbark Medicine Pouch
					["questID"] = 691,	-- Worth Its Weight in Gold
					["cr"] = 2555,	-- Witherbark Witch Doctor
					["races"] = ALLIANCE_ONLY,
				}),

				i(4503, {	-- Witherbark Tusk
					["questID"] = 691,	-- Worth Its Weight in Gold
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2554,	-- Witherbark Axe Thrower
						2558,	-- Witherbark Berserker
						2556,	-- Witherbark Headhunter
						2557,	-- Witherbark Shadow Hunter
						2553,	-- Witherbark Shadowcaster
						2552,	-- Witherbark Troll
						2555,	-- Witherbark Witch Doctor
						2605,	-- Zalas Witherbark <Warband Leader>
					},
				}),
			}),
		}),
	}),
};