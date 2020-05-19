---------------------------------------------
--     F A C T I O N S     M O D U L E     --
---------------------------------------------
_.Factions = 
{
	n(-9914, {	-- Alliance
		["races"] = ALLIANCE_ONLY,
		["g"] = {
			n(-6014, {	-- Cities
				faction(69, {	-- Darnassus
					["races"] = ALLIANCE_ONLY,
				}),
				faction(54, {	-- Gnomeregan Exiles
					["races"] = ALLIANCE_ONLY,
				}),
				faction(47, {	-- Ironforge
					["races"] = ALLIANCE_ONLY,
				}),
				faction(72, {	-- Stormwind
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(-304, {	-- Battlegrounds
				faction(890, {	-- Silverwing Sentinels
					["races"] = ALLIANCE_ONLY,
				}),
				faction(730, {	-- Stormpike Guard
					["races"] = ALLIANCE_ONLY,
				}),
				faction(509, {	-- The League of Arathor
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		},
	});
	n(-9913, {	-- Horde
		["races"] = HORDE_ONLY,
		["g"] = {
			n(-6014, {	-- Cities
				faction(530, {	-- Darkspear Trolls
					["races"] = HORDE_ONLY,
				}),
				faction(76, {	-- Orgrimmar
					["races"] = HORDE_ONLY,
				}),
				faction(81, {	-- Thunder Bluff
					["races"] = HORDE_ONLY,
				}),
				faction(68, {	-- Undercity
					["races"] = HORDE_ONLY,
				}),
			}),
			n(-304, {	-- Battlegrounds
				faction(729, {	-- Frostwolf Clan
					["races"] = HORDE_ONLY,
				}),
				faction(510, {	-- The Defilers
					["races"] = HORDE_ONLY,
				}),
				faction(889, {	-- Warsong Outriders
					["races"] = HORDE_ONLY,
				}),
			}),
		},
	});
	faction(529),	-- Argent Dawn
	faction(87), 	-- Bloodsail Buccaneers
	faction(910, {	-- Brood of Nozdormu
		["u"] = 3,	-- Added in later phase
	}),
	faction(609),	-- Cenarion Circle
	faction(92, {	-- Gelkis Clan Centaur
		["collectible"] = false,
		["description"] = "You are not able to reach exalted with this faction.",
	}),
	faction(749),	-- Hydraxian Waterlords
	faction(93, {	-- Magram Clan Centaur
		["collectible"] = false,
		["description"] = "You are not able to reach exalted with this faction.",
	}),
	faction(349),	-- Ravenholdt
	faction(809),	-- Shen'dralar
	faction(169, { 	-- Steamwheedle Cartel
		["collectible"] = false,
		["icon"] = "Interface\\Icons\\achievement_Goblinheaddead",
		["g"] = {
			faction(21), 	-- Booty Bay
			faction(577),	-- Everlook
			faction(369),	-- Gadgetzan
			faction(470),	-- Ratchet
		},
	}),
	faction(59), 	-- Thorium Brotherhood
	faction(576),	-- Timbermaw Hold
	faction(589, {	-- Wintersaber Trainers
		["races"] = ALLIANCE_ONLY,
	}),
	faction(270),	-- Zandalar Tribe
};