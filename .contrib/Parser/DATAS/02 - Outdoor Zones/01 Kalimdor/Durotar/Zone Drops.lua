---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DUROTAR, {
			n(ZONEDROPS, {
				i(4882, {	-- Benedict's Key
					["cr"] = 3192,	-- Lieutenant Benedict
					["coord"] = { 59.6, 58.2, DUROTAR },
					["groups"] = {
						{
							["objectID"] = 3239,	-- Benedict's Chest
							["coord"] = { 59.3, 57.7, DUROTAR },
							["groups"] = {
								{
									["itemID"] = 4881,	-- Aged Envelope
									["questID"] = 830,	-- The Admiral's Orders
									["races"] = HORDE_ONLY,
								},
							},
						},
					},
				}),
				i(4870, {	-- Canvas Scraps
					["questID"] = 791,	-- Carry Your Weight
					["races"] = HORDE_ONLY,
					["crs"] = {
						3119,	-- Kolkar Drudge
						3120,	-- Kolkar Outrunner
						3129,	-- Kul Tiras Marine
						3128,	-- Kul Tiras Sailor
						3192,	-- Lieutenant Benedict
						5808,	-- Warlord Kolkanis
						5809,	-- Watch Commander Zalaphil
					},
				}),
				i(4888, {	-- Crawler Mucus
					["questID"] = 818,	-- A Solvent Spirit
					["races"] = HORDE_ONLY,
					["crs"] = {
						3228,	-- Corrupted Surf Crawler
						3108,	-- Encrusted Surf Crawler
						3106,	-- Pygmy Surf Crawler
						3107,	-- Surf Crawler
					},
				}),
				i(6640, {	-- Felstalker Hoof
					["questID"] = 1516,	-- Call of Earth (1/3)
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cr"] = 3102,	-- Felstalker
				}),
				i(4887, {	-- Intact Makrura Eye
					["questID"] = 818,	-- A Solvent Spirit
					["races"] = HORDE_ONLY,
					["cr"] = 3103,	-- Makrura Clacker
				}),
				i(4891, {	-- Kron's Amulet
					["questID"] = 816,	-- Lost But Not Forgotten
					["races"] = HORDE_ONLY,
					["crs"] = {
						3231,	-- Corrupted Dreadmaw Crocolisk
						3110,	-- Dreadmaw Crocolisk
					},
				}),
				i(14544, {	-- Lieutenant's Insignia
					["questID"] = 5726,	-- Hidden Enemies
					["races"] = HORDE_ONLY,
					["crs"] = {
						3198,	-- Burning Blade Apprentice
						3197,	-- Burning Blade Fanatic
					},
				}),
				i(6652, {	-- Reagent Pouch
					["questID"] = 1525,	-- Call of Fire (3/5)
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cr"] = 3199,	-- Burning Blade Cultist
				}),
				i(4862, {	-- Scorpid Worker Tail
					["questID"] = 789,	-- Sting of the Scorpid
					["races"] = HORDE_ONLY,
					["crs"] = {
						3281,	-- Sarkoth
						3124,	-- Scorpid Worker
					},
				}),
				i(4871, {	-- Searing Collar
					["questID"] = 827,	-- Skull Rock
					["races"] = HORDE_ONLY,
					["crs"] = {
						3198,	-- Burning Blade Apprentice
						3199,	-- Burning Blade Cultist
						3197,	-- Burning Blade Fanatic
						3196,	-- Burning Blade Neophyte
						3195,	-- Burning Blade Thug
					},
				}),
				i(6486, {	-- Singed Scale
					["questID"] = 1498,	-- Path of Defense
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["crs"] = {
						3131,	-- Lightning Hide
						3130,	-- Thunder Lizard
					},
				}),
			}),
		}),
	}),
};