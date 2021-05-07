---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if CLASSIC
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(THE_HINTERLANDS, {
			n(FACTIONS, {
				faction(471, {	-- Wildhammer Clan
					["description"] = "This faction gets removed completely with the TBC prepatch.\n\nYou can grind to 11999/12000 by just killing trolls and then you can *technically* grind to Exalted by turning in Troll Necklaces at a rate of 2 Reputation per 5 necklaces, but rather than encourage you to totally waste your life on a Reputation that gets ultimately removed from the game in a few weeks, I'll artificially cap the goal in ATT to Revered.\n\nGodspeed.",
					["minReputation"] = { 471, REVERED },	-- Wildhammer Clan, Revered.
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	}),
};
-- #endif