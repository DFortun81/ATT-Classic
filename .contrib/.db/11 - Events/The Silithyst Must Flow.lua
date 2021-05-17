--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
-- Note: This is up here to prevent the unobtainable flag from getting put on the Major Healing and Mana Potions (for now)
local MAJOR_HEALING_POTION = i(13446);	-- Major Healing Potion
local MAJOR_MANA_POTION =    i(13444);	-- Major Mana Potion

_.WorldEvents = bubbleDown({["u"] = PHASE_SIX_SILITHYST },
{
	n(-541, {	-- The Silithyst Must Flow
		["description"] = "The Silithyst Must Flow is the name of the world PvP event in Silithus, where players of both factions must try and secure as much Silithyst as possible. Silithyst is a red crystalline dust that reaches the surface through geysers exclusive to the Silithus desert. Both the Alliance and the Horde have taken an interest in this new substance, and researchers on both sides have discovered unique and valuable properties in the dust. The Horde and Alliance camps in the region have both been outfitted with turn-in stations where players can unload the Silithyst they collect. ",
		["maps"] = {
			SILITHUS,
		},
		["u"] = PHASE_SIX_SILITHYST,
		["lvl"] = 60,
		["groups"] = {
			un(PHASE_SIX_SILITHYST, q(9416, {	-- Report to General Kirika
				["qg"] = 17081,	-- Scout Bloodfist
				["coord"] = { 49.0, 36.7, SILITHUS },
				["races"] = HORDE_ONLY,
				["lvl"] = 53,
			})),
			un(PHASE_SIX_SILITHYST, q(9415, {	-- Report to Marshal Bluewall
				["qg"] = 17082,	-- Rifleman Torrig
				["coord"] = { 50.7, 34.7, SILITHUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 53,
			})),
			un(PHASE_SIX_SILITHYST, q(9419, {	-- Scouring the Desert [ALLIANCE]
				["qg"] = 17080,	-- Marshal Bluewall
				["sourceQuest"] = 9415,	-- Report to Marshal Bluewall
				["coord"] = { 33.3, 51.1, SILITHUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 53,
				["groups"] = {
					MAJOR_HEALING_POTION,
					MAJOR_MANA_POTION,
				},
			})),
			un(PHASE_SIX_SILITHYST, q(9422, {	-- Scouring the Desert [HORDE]
				["qg"] = 17079,	-- General Kirika
				["sourceQuest"] = 9416,	-- Report to General Kirika
				["coord"] = { 50.8, 69.5, SILITHUS },
				["races"] = HORDE_ONLY,
				["lvl"] = 53,
				["groups"] = {
					MAJOR_HEALING_POTION,
					MAJOR_MANA_POTION,
				},
			})),
		},
	}),
});

-- Wipe out the unobtainable states.
MAJOR_HEALING_POTION.u = nil;
MAJOR_MANA_POTION.u = nil;