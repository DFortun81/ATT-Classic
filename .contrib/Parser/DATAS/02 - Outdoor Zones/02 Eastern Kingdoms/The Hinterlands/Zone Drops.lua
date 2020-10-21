---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(THE_HINTERLANDS, {
			n(ZONEDROPS, {
				i(16214, {	-- Formula: Enchant Bracer - Greater Intellect
					["cr"] = 2642,	-- Vilebranch Shadowcaster
				}),
				i(4589, {	-- Long Elegant Feather
					["questID"] = 7842,	-- Another Message to the Wildhammer
					["races"] = HORDE_ONLY,
				}),
				i(9592, {	-- Metallic Fragments
					["questID"] = 3128,	-- Natural Materials
					["races"] = HORDE_ONLY,
					["crs"] = {
						7808,	-- Marauding Owlbeast
						2928,	-- Primitive Owlbeast
						2929,	-- Savage Owlbeast
						2927,	-- Vicious Owlbeast
					},
				}),
				i(8704, {	-- OOX-09/HL Distress Beacon
					["questID"] = 485,	-- Find OOX-09/HL!
					["description"] = "Can drop off of any mob in the zone. Much higher chance to drop from the elites.",
				}),
				i(15760, {	-- Pattern: Ironfeather Breastplate
					["cr"] = 2644,	-- Vilebranch Hideskinner
				}),
				i(9295, {	-- Recipe: Invisibility Potion
					["cr"] = 4469,	-- Emerald Ooze
				}),
				i(9294, {	-- Recipe: Wildvine Potion
					["description"] = "Can drop from any troll in Hinterlands or Stranglethorn Vale.",
				}),
				i(9591, {	-- Resilient Sinew
					["questID"] = 3128,	-- Natural Materials
					["races"] = HORDE_ONLY,
					["crs"] = {
						7808,	-- Marauding Owlbeast
						2928,	-- Primitive Owlbeast
						2929,	-- Savage Owlbeast
						2927,	-- Vicious Owlbeast
					},
				}),
				i(11472, {	-- Silvermane Stalker Flank
					["questID"] = 4297,	-- Food for Baby
					["cr"] = 2926,	-- Silvermane Stalker
					["races"] = ALLIANCE_ONLY,
				}),
				i(19025, {	-- Skylord Plume
					["questID"] = 7830,	-- Avenging the Fallen
					["cr"] = 2659,	-- Razorbeak Skylord
					["races"] = HORDE_ONLY,
				}),
				i(9259, {	-- Troll Tribal Necklace
					["questID"] = 2880,	-- Troll Necklace Bounty
					["description"] = "Can drop from any troll in The Hinterlands.",
					["races"] = ALLIANCE_ONLY,
				}),
				i(9322, {	-- Undamaged Venom Sac
					["questID"] = 2934,	-- Undamaged Venom Sac
					["cr"] = 2686,	-- Witherbark Broodguard
					["races"] = HORDE_ONLY,
				}),
				i(10819, {	-- Wildkin Feather
					["questID"] = 3661,	-- Favored of Elune?
					["description"] = "Scattered on the ground around the Hinterlands.",
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				i(8153, {	-- Wildvine
					["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
				}),
				i(9320, {	-- Witherbark Skull
					["questID"] = 2932,	-- Grim Message
					["races"] = HORDE_ONLY,
					["crs"] = {
						2654,	-- Witherbark Caller
						2651,	-- Witherbark Hideskinner
						2653,	-- Witherbark Sadist
						2649,	-- Witherbark Scalper
						2652,	-- Witherbark Venomblood
						2650,	-- Witherbark Zealot
					},
				}),
			}),
		}),
	}),
};