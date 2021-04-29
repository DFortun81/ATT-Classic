---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(THE_HINTERLANDS, {
			["description"] = "The Hinterlands, located in the Northern part of the Eastern Kingdoms, are probably most notable for the Wildhammer dwarves who make their residence at Aerie Peak in the west. The Wildhammers have always been staunch allies of the Alliance. It is from the Hinterlands that these dwarves find and tame their world-renowned gryphons. The Razorbeak gryphons roam wild in this region.\n\nAlso in the Hinterlands is one of the last remaining settlements of the high elves in Lordaeron at the Quel'Danil Lodge.\n\nThe Hinterlands are also home to a large population of forest trolls, which are divided into three separate tribes. The Revantusk tribe is the only one of the three that has declared sides in the Horde/Alliance conflict and support the warchief Thrall of the Horde. The Vilebranch tribe holds residence in the massive troll city of Jintha'Alor as well as the Altar of Zul while the Witherbark tribe holds the smallest influence, hailing from the temples of Shadra'Alor.\n\nIn the northern part of the region is the ancient, massive tree, Seradane where the agents of the Green dragonflight have been corrupted. A massive portal on the side of the tree connects the servants of the Aspect Ysera to her own realm, the Emerald Dream.",
			-- #if CLASSIC
			["groups"] = {
				faction(471, {	-- Wildhammer Clan
					["description"] = "This faction gets removed completely with the TBC prepatch.\n\nYou can grind to 11999/12000 by just killing trolls and then you can *technically* grind to Exalted by turning in Troll Necklaces at a rate of 2 Reputation per 5 necklaces, but rather than encourage you to totally waste your life on a Reputation that gets ultimately removed from the game in a few weeks, I'll artificially cap the goal in ATT to Revered.\n\nGodspeed.",
					["minReputation"] = { 471, REVERED },	-- Wildhammer Clan, Revered.
					["races"] = ALLIANCE_ONLY,
				}),
			},
			-- #endif
		}),
	}),
};