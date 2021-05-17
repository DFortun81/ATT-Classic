-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(RAZORFEN_DOWNS, {
		["description"] = "Crafted from the same mighty vines as Razorfen Kraul, Razorfen Downs is the traditional capital city of the quillboar race. The sprawling, thorn-ridden labyrinth houses a veritable army of loyal quillboar as well as their high priests - the Death's Head tribe. Recently, however, a looming shadow has fallen over the crude den. Agents of the undead Scourge - led by the lich, Amnennar the Coldbringer - have taken control over the quillboar race and turned the maze of thorns into a bastion of undead might. Now the quillboar fight a desperate battle to reclaim their beloved city before Amnennar spreads his control across the Barrens.",
		["coord"] = { 50, 92, THE_BARRENS },
		["lvl"] = 25,
		["groups"] = {
			n(QUESTS, {
				q(6626, {	-- A Host of Evil
					["qg"] = 12866,	-- Myriam Moonsinger
					["coord"] = { 49,94, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["lvl"] = 28,
				}),
				q(6521, {	-- An Unholy Alliance
					["sourceQuest"] = 6522,	-- An Unholy Alliance
					["qg"] = 2425,	-- Varimathras
					["coord"] = { 56.3, 92.2, UNDERCITY },
					["maps"] = { THE_BARRENS, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 17009, 1 },	-- Ambassador Malcin's Head
					},
					["lvl"] = 28,
					["groups"] = {
						{
							["itemID"] = 17009,	-- Ambassador Malcin's Head
							["questID"] = 6521,	-- An Unholy Alliance
							["cr"] = 12865,	-- Ambassador Malcin
							["coord"] = { 48.6, 95.6, THE_BARRENS },
						},
						i(17039),	-- Skullbreaker
						i(17042),	-- Nail Spitter
						i(17043),	-- Zealot's Robe
					},
				}),
				q(3341, {	-- Bring the End
					["qg"] = 2308,	-- Andrew Brownell
					["coord"] = { 74, 32.8, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10420, 1 },	-- Skull of the Coldbringer
					},
					["lvl"] = 37,
					["groups"] = {
						i(10823),	-- Vanquisher's Sword
						i(10824),	-- Amberglow Talisman
					},
				}),
				q(3636, {	-- Bring the Light
					["qg"] = 1284,	-- Archbishop Benedictus
					["coord"] = { 39.6, 27.4, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						i(10823),	-- Vanquisher's Sword
						i(10824),	-- Amberglow Talisman
					},
				}),
				q(3525, {	-- Extinguishing the Idol
					["qg"] = 8516,	-- Belnistrasz
					["sourceQuest"] = 3523,	-- Scourge of the Downs
					["lvl"] = 32,
					["groups"] = {
						i(10710),	-- Dragonclaw Ring
					},
				}),
				q(3523, {	-- Scourge of the Downs
					["qg"] = 8516,	-- Belnistrasz
					["cost"] = {
						{ "i", 10682, 1 },	-- Belnistrasz's Oathstone
					},
					["lvl"] = 32,
				}),
			}),
			n(ZONEDROPS, {
				i(10573),	-- Boneslasher
				i(10582),	-- Briar Tredders
				i(10574),	-- Corpseshroud
				i(10581),	-- Death's Head Vestment
				i(10571),	-- Ebony Boneclub
				i(10572),	-- Freezing Shard
				i(10570),	-- Manslayer
				i(10567),	-- Quillshooter
				i(10583),	-- Quillward Harness
				i(10584),	-- Stormgale Fists
				i(10578),	-- Thoughtcast Boots
			}),
			n(7355, {	-- Tuten'kash
				i(10776),	-- Silky Spider Cape
				i(10775),	-- Carapace of Tuten'kash
				i(10777),	-- Arachnid Gloves
			}),
			n(7356, {	-- Plaguemaw the Rotting
				i(10766),	-- Plaguerot Sprig
				i(10760),	-- Swine Fists
			}),
			n(8696,  {	-- Henry Stern
				["description"] = "The only source of acquiring Goldthorn Tea.",
				["groups"] = {
					{
						["recipeID"] = 13028,	-- Goldthorn Tea
						["requireSkill"] = COOKING,
					},
				},
			}),
			n(7357, {	-- Mordresh Fire Eye
				i(10770),	-- Mordresh's Lifeless Skull
				i(10769),	-- Glowing Eye of Mordresh
				i(10771),	-- Deathmage Sash
			}),
			n(7354, {	-- Ragglesnout
				["description"] = "This is a rare spawn that is not always present.",
				["groups"] = {
					i(10758),	-- X'caliboar
					i(10767),	-- Savage Boar's Guard
					i(10768),	-- Boar Champion's Belt
				},
			}),
			n(8567, {	-- Glutton
				i(10772),	-- Glutton's Cleaver
				i(10774),	-- Fleshhide Shoulders
			}),
			n(7358, {	-- Amnennar the Coldbringer
				{
					["itemID"] = 10420,	-- Skull of the Coldbringer
					["questID"] = 3341,	-- Bring the End
					["races"] = HORDE_ONLY,
				},
				i(10761),	-- Coldrage Dagger
				i(10763),	-- Icemetal Barbute
				i(10764),	-- Deathchill Armor
				i(10762),	-- Robes of the Lich
				i(10765),	-- Bonefingers
			}),
		},
	}),
})};