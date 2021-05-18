--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
_.WorldEvents = bubbleDown({["u"] = PHASE_FIVE },
{
	n(-539, {	-- The Scepter of the Shifting Sands
		["description"] = "In addition to all players on a realm working towards completing the War Effort, one player had to create the Scepter of the Shifting Sands - a very difficult task that could only be solved by a server's top guild back when the questline was added. After the war effort was finished and the army of the Alliance and the Horde arrived in Silithus, the Scepter of the Shifting Sands could be used on the Scarab Gong. Doing so resulted in the opening of Ahn'Qiraj. The first player to bang the Scarab Gong on each server would be rewarded with the Scarab Lord title (in Burning Crusade, the title will not be available in Classic!) and the Black Qiraji Resonating Crystal mount. Anyone else who followed them within 10 hours was rewarded with the title as well.\n\nAlthough it is still possible to complete the questline for the Scepter of the Shifting Sands after the gates have been opened on your server, doing so will not reward neither the Black Qiraji Resonating Crystal nor the Scarab Lord title.",
		["maps"] = {
			CAVERNS_OF_TIME,
			--AZSHARA,
			--FERALAS,
			--SILITHUS,
			--SILVERPINE_FOREST,
			--TANARIS,
		},
		["u"] = PHASE_FIVE,
		["lvl"] = 60,
		["groups"] = {
			n(QUESTS, {
				q(8519, {	-- A Pawn on the Eternal Board
					["provider"] = { "o", 180633 },	-- Crystalline Tear
					["sourceQuest"] = 8305,	-- Long Forgotten Memories
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 28.7, 89.1, SILITHUS },
					["lvl"] = 60,
				}),
				q(8303, {	-- Anachronos
					["qg"] = 15180,	-- Baristolth of the Shifting Sands
					["sourceQuest"] = 8301,	-- The Path of the Righteous
					["coord"] = { 49.5, 36.4, SILITHUS },
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["cost"] = {
						{ "i", 20415, 1 },	-- The War of the Shifting Sands
					},
					["lvl"] = 60,
				}),
				q(8575, {	-- Azuregos's Magical Ledger
					["provider"] = { "i", 20949 },	-- Magical Ledger
					["sourceQuest"] = 8555,	-- The Charge of the Dragonflights
					["qg"] = 15481,	-- Spirit of Azuregos
					["coord"] = { 57.0, 85.6, AZSHARA },
					["lvl"] = 60,
				}),
				q(8743, {	-- Bang a Gong!
					["provider"] = { "o", 180717 },	-- The Scarab Gong
					["sourceQuest"] = 8742,	-- The Might of Kalimdor
					["coord"] = { 25.7, 90.9, SILITHUS },
					["cost"] = {
						{ "i", 21175, 1 },	-- The Scepter of the Shifting Sands
					},
					["u"] = PHASE_FIVE_GONG,
					["lvl"] = 60,
					["groups"] = {
						ach(416, {	-- Scarab Lord (Achievement)
							["timeline"] = { "added 3.0.1.28000" },	-- Added in Wrath of the Lich King Prepatch
							["u"] = WRATH_PHASE_ONE,
						}),
						title(33, {	-- Scarab Lord Crieve
							["timeline"] = { "added 2.0.3.28000" },	-- Added in Burning Crusade
							["u"] = TBC_PHASE_ONE,
						}),
						i(21176, {	-- Black Qiraji Resonating Crystal
							["u"] = PHASE_FIVE_GONG,
						}),
					},
				}),
				q(8606, {	-- Decoy!
					["qg"] = 11811,	-- Narain Soothfancy
					["sourceQuest"] = 8598,	-- rAnS0m
					["coord"] = { 65.2, 18.6, TANARIS },
					["cr"] = 15554,	-- Number Two
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 21042,	-- Narain's Special Kit
							["groups"] = {
								{
									["itemID"] = 21037,	-- Crude Map
									["questID"] = 8606,	-- Decoy!
								},
								{
									["itemID"] = 21039,	-- Narain's Turban
									["questID"] = 8606,	-- Decoy!
								},
								{
									["itemID"] = 21040,	-- Narain's Robe
									["questID"] = 8606,	-- Decoy!
								},
								{
									["itemID"] = 21041,	-- Bag of Gold
									["questID"] = 8606,	-- Decoy!
									["coord"] = { 65, 72, WINTERSPRING },
								},
							},
						},
					},
				}),
				q(8597, {	-- Draconic for Dummies
					["qg"] = 11811,	-- Narain Soothfancy
					["sourceQuest"] = 8576,	-- Translating the Ledger
					["coord"] = { 65.2, 18.6, TANARIS },
					["lvl"] = 60,
				}),
				q(8586, {	-- Dirge's Kickin' Chimaerok Chops
					["qg"] = 8125,	-- Dirge Quikcleave <Butcher>
					["sourceQuest"] = 8585,	-- The Isle of Dread!
					["coord"] = { 52.6, 28.1, TANARIS },
					["cost"] = {
						{ "i", 9061, 20 },	-- Goblin Rocket Fuel
						{ "i", 8150, 20 },	-- Deeprock Salt
					},
					["lvl"] = 60,
					["g"] = {
						i(21025),	-- Recipe: Dirge's Kickin' Chimaerok Chops
					},
				}),
				q(8733, {	-- Eranikus, Tyrant of the Dream
					["qg"] = 15362,	-- Malfurion Stormrage
					["sourceQuest"] = 8555,	-- The Charge of the Dragonflights
					["maps"] = { SUNKEN_TEMPLE },
					["lvl"] = 60,
				}),
				q(8305, {	-- Long Forgotten Memories
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8303,	-- Anachronos
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 65, 50, TANARIS },
					["lvl"] = 60,
				}),
				q(8599, {	-- Love Song for Narain
					["qg"] = 15526,	-- Meridith the Mermaiden
					["sourceQuest"] = 8597,	-- Draconic for Dummies
					["coord"] = { 59.4, 96.0, TANARIS },
					["cost"] = {
						{ "i", 21032, 1 },	-- Meridith's Love Letter
					},
					["lvl"] = 60,
				}),
				q(8730, {	-- Nefarius's Corruption
					["qg"] = 13020,	-- Vaelastrasz the Corrupt
					["sourceQuest"] = 8555,	-- The Charge of the Dragonflights
					["cost"] = {
						{ "i", 21138, 1 },	-- Red Scepter Shard
					},
					["maps"] = { BLACKWING_LAIR },
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 21142,	-- From the Desk of Lord Victor Nefarius
							["questID"] = 8730,	-- Nefarius's Corruption
							["description"] = "You get this if you don't manage to kill Nefarian in time after starting the quest from Vaelastrasz.",
							["cr"] = 11583,	-- Nefarian
						},
						{
							["itemID"] = 21138,	-- Red Scepter Shard
							["questID"] = 8730,	-- Nefarius's Corruption
							["cr"] = 11583,	-- Nefarian
						},
						i(21529),	-- Amulet of Shadow Shielding
						i(21530),	-- Onyx Embedded Leggings
					},
				}),
				q(8584, {	-- Never Ask Me About My Business
					["qg"] = 11811,	-- Narain Soothfancy
					["sourceQuest"] = 8576,	-- Translating the Ledger
					["coord"] = { 65.2, 18.6, TANARIS },
					["lvl"] = 60,
				}),
				q(8288, {	-- Only One May Rise
					["qg"] = 15180,	-- Baristolth of the Shifting Sands
					["sourceQuest"] = 8286,	-- What Tomorrow Brings
					["coord"] = { 49.5, 36.4, SILITHUS },
					["maps"] = { BLACKWING_LAIR },
					["cost"] = {
						{ "i", 20383, 1 },	-- Head of the Broodlord Lashlayer
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 20383,	-- Head of the Broodlord Lashlayer
							["questID"] = 8288,	-- Only One May Rise
							["cr"] = 12017,	-- Broodlord Lashlayer
						},
					},
				}),
				q(8598, {	-- rAnS0m
					["provider"] = { "o", 180652 },	-- Freshly Dug Dirt
					["sourceQuest"] = 8599,	-- Love Song for Narain
					["description"] = "The dirt is on an island waaaaaay south of Tanaris. You'll need to speak to Meridith to get a buff to swim fast enough to reach the island without dying to Fatigue.",
					["coord"] = { 59.4, 96.0, TANARIS },
					["cost"] = {
						{ "i", 21029, 1 },	-- Ransom Letter
					},
					["lvl"] = 60,
				}),
				q(8587, {	-- Return to Narain
					["qg"] = 8125,	-- Dirge Quikcleave <Butcher>
					["sourceQuest"] = 8586,	-- Dirge's Kickin' Chimaerok Chops
					["coord"] = { 52.6, 28.1, TANARIS },
					["cost"] = {
						{ "i", 21028, 1 },	-- 500 Pound Chicken
					},
					["lvl"] = 60,
				}),
				q(8578, {	-- Scrying Goggles? No Problem!
					["provider"] = { "o", 180642 },	-- Inconspicuous Crate
					["sourceQuest"] = 8577,	-- Stewvul, Ex-B.F.F.
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu
					["coord"] = { 46.2, 86.7, SILVERPINE_FOREST },
					["maps"] = { MOLTEN_CORE },
					["cost"] = {
						{ "i", 20951, 1 },	-- Narain's Scrying Goggles
					},
					["lvl"] = 60,
					--[[
					["groups"] = {
						i(18253),	-- Major Rejuvenation Potion
					},
					]]--
				}),
				q(8577, {	-- Stewvul, Ex-B.F.F.
					["qg"] = 11811,	-- Narain Soothfancy
					["sourceQuest"] = 8576,	-- Translating the Ledger
					["coord"] = { 65.2, 18.6, TANARIS },
					["lvl"] = 60,
				}),
				q(8741, {	-- The Champion Returns
					["qg"] = 11832,	-- Keeper Remulos
					["sourceQuest"] = 8736,	-- The Nightmare Manifests
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 36.18, 41.79, MOONGLADE },
					["cost"] = {
						{ "i", 21139, 1 },	-- Green Scepter Shard
					},
					["lvl"] = 60,
				}),
				q(8555, {	-- The Charge of the Dragonflights
					["qg"] = 15192,	-- Anachronos
					["sourceQuest"] = 8519,	-- A Pawn on the Eternal Board
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 65, 50, TANARIS },
					["lvl"] = 60,
				}),
				q(8728, {	-- The Good News and The Bad News
					["qg"] = 11811,	-- Narain Soothfancy
					["sourceQuests"] = {
						8587,	-- Return to Narain
						8578,	-- Scrying Goggles? No Problem!
						8620,	-- The Only Prescription
					},
					["coord"] = { 65.2, 18.6, TANARIS },
					["cost"] = {
						{ "i", 12360, 20 },	-- Arcanite Bar
						{ "i", 18562, 10 },	-- Elementium Ore
						{ "i", 12800, 10 },	-- Azerothian Diamond
						{ "i", 12361, 10 },	-- Blue Sapphire
					},
					["lvl"] = 60,
				}),
				q(8302, {	-- The Hand of the Righteous
					["qg"] = 15180,	-- Baristolth of the Shifting Sands
					["sourceQuest"] = 8301,	-- The Path of the Righteous
					["coord"] = { 49.5, 36.4, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20384, 200 },	-- Silithid Carapace Fragment
					},
					["lvl"] = 60,
					["groups"] = {
						i(20403),	-- Proxy of Nozdormu
					},
				}),
				q(8585, {	-- The Isle of Dread!
					["qg"] = 8125,	-- Dirge Quikcleave <Butcher>
					["sourceQuest"] = 8584,	-- Never Ask Me About My Business
					["coord"] = { 52.6, 28.1, TANARIS },
					["cost"] = {
						{ "i", 21027, 1 },	-- Lakmaeran's Carcass
						{ "i", 21024, 20 },	-- Chimaerok Tenderloin
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 21027,	-- Lakmaeran's Carcass
							["cr"] = 12803,	-- Lord Lakmaeran
							["coord"] = { 29.8, 72.6, FERALAS },
						},
					},
				}),
				q(8742, {	-- The Might of Kalimdor
					["qg"] = 15192,	-- Anachronos
					["sourceQuests"] = {
						8729,	-- The Wrath of Neptulon
						8730,	-- Nefarius's Corruption
						8741,	-- The Champion Returns
					},
					["coord"] = { 65, 50, TANARIS },
					["lvl"] = 60,
					["g"] = {
						i(21175),	-- The Scepter of the Shifting Sands
					},
				}),
				q(8736, {	-- The Nightmare Manifests
					["qg"] = 11832,	-- Keeper Remulos
					["sourceQuest"] = 8735,	-- The Nightmare's Corruption
					["description"] = "You do NOT want to kill Eranikus or allow Remulos to die.",
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 36.18, 41.79, MOONGLADE },
					["lvl"] = 60,
					["groups"] = {
						i(21531),	-- Drake Tooth Necklace
						i(21532),	-- Drudge Boots
					},
				}),
				q(8735, {	-- The Nightmare's Corruption
					["qg"] = 11832,	-- Keeper Remulos
					["sourceQuest"] = 8734,	-- Tyrande and Remulos
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 36.18, 41.79, MOONGLADE },
					["cost"] = {
						{ "i", 21147, 1 },	-- Fragment of the Nightmare's Corruption
						{ "i", 21149, 1 },	-- Fragment of the Nightmare's Corruption
						{ "i", 21148, 1 },	-- Fragment of the Nightmare's Corruption
						{ "i", 21146, 1 },	-- Fragment of the Nightmare's Corruption
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 21147,	-- Fragment of the Nightmare's Corruption
							["questID"] = 8735,	-- The Nightmare's Corruption
							["coord"] = { 91.6, 39.0, ASHENVALE },
							["crs"] = {
								12474,	-- Emeraldon Boughguard
								12475,	-- Emeraldon Tree Warder
								12476,	-- Emeraldon Oracle
							},
						},
						{
							["itemID"] = 21149,	-- Fragment of the Nightmare's Corruption
							["questID"] = 8735,	-- The Nightmare's Corruption
							["description"] = "It is recommended that you bring at least 30 players and they should be experienced raiders.",
							["coord"] = { 48, 33, DUSKWOOD },
							["crs"] = {
								15625,	-- Twilight Corrupter
							},
						},
						{
							["itemID"] = 21148,	-- Fragment of the Nightmare's Corruption
							["questID"] = 8735,	-- The Nightmare's Corruption
							["coord"] = { 50.4, 15.9, FERALAS },
							["crs"] = {
								5320,	-- Jademir Boughguard
								5319,	-- Jademir Tree Warder
								5317,	-- Jademir Oracle
							},
						},
						{
							["itemID"] = 21146,	-- Fragment of the Nightmare's Corruption
							["questID"] = 8735,	-- The Nightmare's Corruption
							["coord"] = { 61.6, 27.7, THE_HINTERLANDS },
							["crs"] = {
								12477,	-- Verdantine Boughguard
								12479,	-- Verdantine Tree Warder
								12478,	-- Verdantine Oracle
							},
						},
					},
				}),
				q(8620, {	-- The Only Prescription
					["qg"] = 11811,	-- Narain Soothfancy
					["sourceQuest"] = 8606,	-- Decoy!
					["coord"] = { 65.2, 18.6, TANARIS },
					["cost"] = {
						{ "i", 21111, 1 },	-- Draconic For Dummies: Volume II
					},
					["maps"] = {
						BLACKWING_LAIR,
						ONYXIAS_LAIR,
						MOLTEN_CORE
					},
					["lvl"] = 60,
					["g"] = {
						{
							["itemID"] = 21112,	-- Magical Book Binding
							["cost"] = {
								{ "i", 21103, 1 },	-- Draconic for Dummies [Chapter I] (Doctor Weavil)
								{ "i", 21104, 1 },	-- Draconic for Dummies [Chapter II] (Blasted Lands Demons)
								{ "i", 21105, 1 },	-- Draconic for Dummies [Chapter III] (Winterspring Demons)
								{ "i", 21106, 1 },	-- Draconic for Dummies [Chapter IV] (Undercity)
								{ "i", 21107, 1 },	-- Draconic for Dummies [Chapter V] (Stormwind Library)
								{ "i", 21108, 1 },	-- Draconic for Dummies [Chapter VI] (Onyxia)
								{ "i", 21109, 1 },	-- Draconic for Dummies [Chapter VII] (Blackwing Lair)
								{ "i", 21110, 1 },	-- Draconic for Dummies [Chapter VIII] (Ragnaros)
							},
							["groups"] = {
								{
									["itemID"] = 21111,	-- Draconic For Dummies: Volume II
									["questID"] = 8620,	-- The Only Prescription
								},
							},
						},
						{
							["itemID"] = 21103,	-- Draconic for Dummies [Chapter I]
							["questID"] = 8620,	-- The Only Prescription
							["cr"] = 15552,	-- Doctor Weavil
							["coord"] = { 77.8, 17.0, DUSTWALLOW_MARSH },
						},
						{
							["itemID"] = 21104,	-- Draconic for Dummies [Chapter II]
							["questID"] = 8620,	-- The Only Prescription
							["coord"] = { 44.6, 56.0, BLASTED_LANDS },
							["crs"] = {
								12396,	-- Doomguard Commander
								8716,	-- Dreadlord
								8717,	-- Felguard Elite
							},
						},
						{
							["itemID"] = 21105,	-- Draconic for Dummies [Chapter III]
							["questID"] = 8620,	-- The Only Prescription
							
							["coords"] = {
								{ 65.0, 80.2, WINTERSPRING },
								{ 51.6, 84.4, WINTERSPRING },
								{ 54.6, 87.4, WINTERSPRING },
							},
							["crs"] = {
								10201,	-- Lady Hederine
								7461,	-- Hederine Initiate
								7463,	-- Hederine Slayer
							},
						},
						{
							["itemID"] = 21106,	-- Draconic for Dummies [Chapter IV]
							["questID"] = 8620,	-- The Only Prescription
							["coord"] = { 77, 38, UNDERCITY },
						},
						{
							["itemID"] = 21107,	-- Draconic for Dummies [Chapter V]
							["questID"] = 8620,	-- The Only Prescription
							["coord"] = { 72, 6, STORMWIND_CITY },
						},
						{
							["itemID"] = 21108,	-- Draconic for Dummies [Chapter VI]
							["questID"] = 8620,	-- The Only Prescription
							["cr"] = 10184,	-- Onyxia
						},
						{
							["itemID"] = 21109,	-- Draconic for Dummies [Chapter VII]
							["questID"] = 8620,	-- The Only Prescription
							["description"] = "Located in Blackwing Lair on one of the tables on the ramp after the first wyrmguard overseer pull.",
						},
						{
							["itemID"] = 21110,	-- Draconic for Dummies [Chapter VIII]
							["questID"] = 8620,	-- The Only Prescription
							["cr"] = 11502,	-- Ragnaros
						},
						i(21517),	-- Gnomish Turban of Psychic Might
					},
				}),
				q(8301, {	-- The Path of the Righteous
					["qg"] = 15180,	-- Baristolth of the Shifting Sands
					["sourceQuest"] = 8288,	-- Only One May Rise
					["coord"] = { 49.5, 36.4, SILITHUS },
					["cost"] = {
						{ "i", 20402, 1 },	-- Agent of Nozdormu
						{ "i", 20384, 200 },	-- Silithid Carapace Fragment
					},
					["lvl"] = 60,
					["groups"] = {
						i(20403),	-- Proxy of Nozdormu
					},
				}),
				q(8729, {	-- The Wrath of Neptulon
					["qg"] = 11811,	-- Narain Soothfancy
					["sourceQuest"] = 8728,	-- The Good News and The Bad News
					["coord"] = { 65.2, 18.6, TANARIS },
					["cost"] = {
						{ "i", 21137, 1 },	-- Blue Scepter Shard
					},
					["lvl"] = 60,
					["g"] = {
						{
							["itemID"] = 21136,	-- Arcanite Buoy
							["coord"] = { 65, 55, AZSHARA },
							["cr"] = 15571,	-- Maws
							["description"] = "This summons a 40 man raid boss.",
							["groups"] = {
								{
									["itemID"] = 21137,	-- Blue Scepter Shard
									["questID"] = 8729,	-- The Wrath of Neptulon
								},
							},
						},
						i(21526),	-- Band of Icy Depths
						i(21527),	-- Darkwater Robes
					},
				}),
				q(8576, {	-- Translating the Ledger
					["qg"] = 11811,	-- Narain Soothfancy
					["sourceQuest"] = 8575,	-- Azuregos's Magical Ledger
					["coord"] = { 65.2, 18.6, TANARIS },
					["lvl"] = 60,
				}),
				q(8745, {	-- Treasure of the Timeless One
					["qg"] = 15693,	-- Jonathan the Revelator
					["sourceQuest"] = 8742,	-- The Might of Kalimdor
					["coord"] = { 25.9, 91.0, SILITHUS },
					["lvl"] = 60,
					["groups"] = {
						--[[
						{
							["achievementID"] = 5533,	-- Veteran of the Shifting Sands
							["timeline"] = {
								"added 4.0.3.28000",	-- Added in Cataclysm Prepatch
							},
						},
						]]--
						i(21523),	-- Fang of Korialstrasz
						i(21522),	-- Shadowsong's Sorrow
						i(21521),	-- Runesword of the Red
						i(21520),	-- Ravencrest's Legacy
					},
				}),
				q(8734, {	-- Tyrande and Remulos
					["qg"] = 15624,	-- Forest Wisp
					["sourceQuest"] = 8733,	-- Eranikus, Tyrant of the Dream
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 37.5, 47.9, TELDRASSIL },
					["lvl"] = 60,
				}),
				q(8286, {	-- What Tomorrow Brings
					["qg"] = 15180,	-- Baristolth of the Shifting Sands
					["description"] = "This quest line is a prerequisite for the Ahn'Qiraj scepter line used to open the doors to Ahn'Qiraj.",
					["coord"] = { 49.5, 36.4, SILITHUS },
					["lvl"] = 60,
				}),
			}),
			n(REWARDS, {
				i(20402),	-- Agent of Nozdormu
			}),
		},
	}),
});