---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DESOLACE, {
			["description"] = "Centaur control this rugged wilderness. Desolace is a land of craggy rock faces and stormy skies, and the rampaging centaur let no other race survive. Five centaur tribes strike from individual strongholds, but the great fortress of Maraudon occasionally plays host to them all.",
			["groups"] = {
				faction(92, {	-- Gelkis Clan Centaur
					["collectible"] = false,
					["description"] = "You are not able to reach exalted with this faction.",
				}),
				faction(93, {	-- Magram Clan Centaur
					["collectible"] = false,
					["description"] = "You are not able to reach exalted with this faction.",
				}),
			},
		}),
	}),
};