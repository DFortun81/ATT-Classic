---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DESOLACE, {
			n(FACTIONS, {
				faction(92, {	-- Gelkis Clan Centaur
					["minReputation"] = { 92, HONORED },	-- Gelkis Clan Centaur, must be Honored.
					["maxReputation"] = { 93, HONORED },	-- Magram Clan Centaur, must be lower than Honored.
				}),
				faction(93, {	-- Magram Clan Centaur
					["minReputation"] = { 93, HONORED },	-- Magram Clan Centaur, must be Honored.
					["maxReputation"] = { 92, HONORED },	-- Gelkis Clan Centaur, must be lower than Honored.
				}),
			}),
		}),
	}),
};