-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = { tier(1, bubbleDown({ ["u"] = PHASE_ONE_DIREMAUL }, {	-- Classic
	map(DIRE_MAUL, {
		["description"] = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
		["lvl"] = 44,
		["groups"] = {
			n(FACTIONS, {
				faction(809),	-- Shen'dralar
			}),
			n(QUESTS, {
				q(1193, {	-- A Broken Trap
					["description"] = "Use the items on the Broken Trap to trap Guard Slip'kik. It takes a few seconds to finish fixing the trap.\n\nYou must activate this trap in order to do the Tribute Run.",
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15994, 1 },	-- Thorium Widget
						{ "i", 3829, 1 },	-- Frost Oil
					},
					["crs"] = {
						14323,	-- Guard Slip'kik
					},
					["lvl"] = 56,
				}),
				q(7463, {	-- Arcane Refreshment
					["qg"] = 14368,	-- Lorekeeper Lydros
					["classes"] = { MAGE },
					["lvl"] = 60,
					["cost"] = {
						{ "i", 18299, 1 },	-- Hydrospawn Essence
					},
					["groups"] = {
						recipe(10140),	-- Conjure Water (Rank 7)
					},
				}),
				q(7492, {	-- Camp Mojache
					["qgs"] = {
						10879,	-- Harbinger Balthazad
						10880,	-- Warcaller Gorlach
						10881,	-- Bluff Runner Windstrider
					},
					["coords"] = {
						{ 46.6, 64.6, ORGRIMMAR },
						{ 41.4, 54.2, THUNDER_BLUFF },
						{ 69.2, 49.2, UNDERCITY },
					},
					["maps"] = { FERALAS, ORGRIMMAR, THUNDER_BLUFF, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(7499, {	-- Codex of Defense
					["classes"] = { WARRIOR },
					["qg"] = 14383,	-- Lorekeeper Kildrath
					["cost"] = {
						{ "i", 18357, 1 },	-- Codex of Defense
					},
					["lvl"] = 54,
					["groups"] = {
						i(18466),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7481, {	-- Elven Legends
					["qg"] = 14373,	-- Sage Korolusk
					["description"] = "The objective is next to Lorekeeper Lydros in the Dire Maul West Library.",
					["coord"] = { 75.3, 43.8, FERALAS },
					["maps"] = { FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(7482, {	-- Elven Legends
					["qg"] = 14374,	-- Scholar Runethorn
					["description"] = "The objective is next to Lorekeeper Lydros in the Dire Maul West Library.",
					["coord"] = { 31.2, 43.9, FERALAS },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(7494, {	-- Feathermoon Stronghold
					["qgs"] = {
						2198,	-- Crier Goodman
						10877,	-- Courier Hammerfall
						10878,	-- Herald Moonstalker
					},
					["coords"] = {
						{ 39, 63.6, DARNASSUS },
						{ 30.5, 67, IRONFORGE },
						{ 54.8, 62.6, STORMWIND_CITY },
					},
					["maps"] = { FERALAS, DARNASSUS, IRONFORGE, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
					["isBreadcrumb"] = true,
				}),
				q(5525, {	-- Free Knot!
					["qg"] = 14338,	-- Knot Thimblejack
					["description"] = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					["cost"] = {
						{ "i", 18250, 1 },	-- Gordok Shackle Key
					},
					["lvl"] = 54,
				}),
				q(7429, {	-- Free Knot!
					["sourceQuest"] = 5525,	-- Free Knot!
					["qg"] = 14338,	-- Knot Thimblejack
					["description"] = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					["cost"] = {
						{ "i", 18250, 1 },	-- Gordok Shackle Key
					},
					["repeatable"] = true,
					["lvl"] = 54,
				}),
				q(7505, {	-- Frost Shock and You
					["qg"] = 14381,	-- Lorekeeper Javon
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 18363, 1 },	-- Frost Shock and You
					},
					["lvl"] = 54,
					["groups"] = {
						i(18471),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7498, {	-- Garona: A Study on Stealth and Treachery
					["qg"] = 14383,	-- Lorekeeper Kildrath
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 18356, 1 },	-- Garona: A Study on Stealth and Treachery
					},
					["lvl"] = 54,
					["groups"] = {
						i(18465),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7502, {	-- Harnessing Shadows
					["qg"] = 14382,	-- Lorekeeper Mykos
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18360, 1 },	-- Harnessing Shadows
					},
					["lvl"] = 54,
					["groups"] = {
						i(18467),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7504, {	-- Holy Bologna: What the Light Won't Tell You
					["qg"] = 14381,	-- Lorekeeper Javon
					["classes"] = { PRIEST },
					["cost"] = {
						{ "i", 18362, 1 },	-- Holy Bologna: What the Light Won't Tell You
					},
					["lvl"] = 54,
					["groups"] = {
						i(18469),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7489, {	-- Lethtendris's Web
					["sourceQuest"] = 7492,	-- Camp Mojache
					["qg"] = 7776,	-- Talo Thornhoof
					["coord"] = { 76.2, 43.8, FERALAS },
					["maps"] = { FERALAS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 18426, 1 },	-- Lethtendris's Web
					},
					["lvl"] = 54,
					["groups"] = {
						i(18491),	-- Lorespinner
					},
				}),
				q(7488, {	-- Lethtendris's Web
					["sourceQuest"] = 7494,	-- Feathermoon Stronghold
					["qg"] = 7877,	-- Latronicus Moonspear
					["coord"] = { 30.4, 46.2, FERALAS },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 18426, 1 },	-- Lethtendris's Web
					},
					["lvl"] = 54,
					["groups"] = {
						i(18491),	-- Lorespinner
					},
				}),
				q(7484, {	-- Libram of Focus
					["altQuests"] = {
						7479,	-- Libram of Focus
					},
					["sourceQuests"] = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					["qg"] = 14368,	-- Lorekeeper Lydros
					["repeatable"] = true,
					["cost"] = {
						{ "i", 18333, 1 },	-- Libram of Focus
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 4 },	-- Large Brilliant Shard
						{ "i", 12753, 2 },	-- Skin of Shadow
					},
					["lvl"] = 57,
					["groups"] = {
						i(18330),	-- Arcanum of Focus
					},
				}),
				{
					["questID"] = 7485,	-- Libram of Protection
					["altQuests"] = {
						7480,	-- Libram of Protection
					},
					["sourceQuests"] = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					["qg"] = 14368,	-- Lorekeeper Lydros
					["repeatable"] = true,
					["cost"] = {
						{ "i", 18334, 1 },	-- Libram of Protection
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12735, 1 },	-- Frayed Abomination Stitching
					},
					["lvl"] = 57,
					["groups"] = {
						i(18331),	-- Arcanum of Protection
					},
				},
				{
					["questID"] = 7483,	-- Libram of Rapidity
					["altQuests"] = {
						7478,	-- Libram of Rapidity
					},
					["sourceQuests"] = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					["qg"] = 14368,	-- Lorekeeper Lydros
					["repeatable"] = true,
					["cost"] = {
						{ "i", 18332, 1 },	-- Libram of Rapidity
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12938, 2 },	-- Blood of Heroes
					},
					["lvl"] = 57,
					["groups"] = {
						i(18329),	-- Arcanum of Rapidity
					},
				},
				{
					["questID"] = 7441,	-- Pusillin and the Elder Azj'Tordin
					["qg"] = 14355,	-- Azj'Tordin
					["coord"] = { 76.7, 37.2, FERALAS },
					["maps"] = { FERALAS },
					["cost"] = {
						{ "i", 18261, 1 },	-- Book of Incantations
					},
					["lvl"] = 54,
					["groups"] = {
						i(18410),	-- Sprinter's Sword
						i(18411),	-- Spry Boots
					},
				},
				{
					["questID"] = 7500,	-- The Arcanist's Cookbook
					["qg"] = 14383,	-- Lorekeeper Kildrath
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 18358, 1 },	-- The Arcanist's Cookbook
					},
					["lvl"] = 54,
					["groups"] = {
						i(18468),	-- Royal Seal of Eldre'Thalas
					},
				},
				{
					["questID"] = 7506,	-- The Emerald Dream...
					["qg"] = 14381,	-- Lorekeeper Javon
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 18364, 1 },	-- The Emerald Dream
					},
					["lvl"] = 54,
					["groups"] = {
						i(18470),	-- Royal Seal of Eldre'Thalas
					},
				},
				{
					["questID"] = 5518,	-- The Gordok Ogre Suit
					["qg"] = 14338,	-- Knot Thimblejack
					["cost"] = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					["lvl"] = 56,
					["groups"] = {
						{
							["recipeID"] = 22813,	-- Gordok Ogre Suit
							["requireSkill"] = TAILORING,
						},
						{
							["recipeID"] = 22815,	-- Gordok Ogre Suit
							["requireSkill"] = LEATHERWORKING,
						},
						{
							["itemID"] = 18258,	-- Gordok Ogre Suit
							["description"] = "Before using this, clear the trash before Captain Kromcrush. Tell your group to stay back while you talk to Kromcrush with this disguise on. If they aggro him, your group will fail the Tribute Run.",
						},
					},
				},
				{
					["questID"] = 5519,	-- The Gordok Ogre Suit
					["sourceQuest"] = 5518,	-- The Gordok Ogre Suit
					["qg"] = 14338,	-- Knot Thimblejack
					["cost"] = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					["repeatable"] = true,
					["lvl"] = 56,
					["groups"] = {
						i(18258),	-- Gordok Ogre Suit
					},
				},
				{
					["questID"] = 5528,	-- The Gordok Taste Test
					["qg"] = 14322,	-- Stomper Kreeg <The Drunk>
					["description"] = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					["lvl"] = 56,
					["groups"] = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				},
				{
					["questID"] = 7503,	-- The Greatest Race of Hunters
					["qg"] = 14382,	-- Lorekeeper Mykos
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 18361, 1 },	-- The Greatest Race of Hunters
					},
					["lvl"] = 54,
					["groups"] = {
						i(18473),	-- Royal Seal of Eldre'Thalas
					},
				},
				{
					["questID"] = 7501,	-- The Light and How To Swing It
					["qg"] = 14382,	-- Lorekeeper Mykos
					["classes"] = { PALADIN },
					["cost"] = {
						{ "i", 18359, 1 },	-- The Light and How to Swing It
					},
					["lvl"] = 54,
					["groups"] = {
						i(18472),	-- Royal Seal of Eldre'Thalas
					},
				},
				{
					["questID"] = 7461,	-- The Madness Within
					["qg"] = 14358,	-- Shen'dralar Ancient
					["crs"] = {
						11496,	-- Immol'thar
						11486,	-- Prince Tortheldrin
					},
					["lvl"] = 56,
				},
				{
					["questID"] = 7877,	-- The Treasure of the Shen'dralar
					["altQuests"] = {
						7462,	-- The Treasure of the Shen'dralar
					},
					["sourceQuest"] = 7461,	-- The Madness Within
					["qg"] = 14358,	-- Shen'dralar Ancient
					["lvl"] = 57,
					["groups"] = {
						i(18421),	-- Backwood Helm
						i(18420),	-- Bonecrusher
						i(18424),	-- Sedge Boots
					},
				},
				q(7631, {	-- Dreadsteed of Xoroth
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7629,	-- Imp Delivery
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18818, 1 },	-- Mor'zul's Instructions
					},
					["lvl"] = 60,
					["group"] = {
						recipe(23161),	-- Summon Dreadsteed
					},
				}),
				{
					["questID"] = 7703,	-- Unfinished Gordok Business
					["qg"] = 14325,	-- Captain Kromcrush
					["description"] = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					["altQuests"] = {
						1318,	-- Unfinished Gordok Business
					},
					["cost"] = {
						{ "i", 18336, 1 },	-- Gauntlet of Gordok Might
					},
					["lvl"] = 60,
					["groups"] = {
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
				},
			}),
			n(ZONEDROPS, {
				i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
					["description"] = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.\n\nThis can be found in various places throughout all the wings of Dire Maul.\n\nDire Maul North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\nDire Maul East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\nDire Maul West: By the southern generator in Immol'thar's room.",
				}),
				i(12662),	-- Demonic Rune
				{
					["itemID"] = 18250,	-- Gordok Shackle Key
					["questID"] = 5525,	-- Free Knot!
					["description"] = "NOTE: Do NOT Free Knot if you are doing a Tribute Run. He runs away.",
					["crs"] = {
						14325,	-- Captain Kromcrush
						14321,	-- Guard Fengus
						14326,	-- Guard Mol'dar
						14323,	-- Guard Slip'kik
						11441,	-- Gordok Brute
						14351,	-- Gordok Bushwacker
						11445,	-- Gordok Captain
						11444,	-- Gordok Mage-Lord
						11450,	-- Gordok Reaver
						11448,	-- Gordok Warlock
					},
				},
				i(18640),	-- Happy Fun Rock
				i(18333),	-- Libram of Focus
				i(18334),	-- Libram of Protection
				i(18332),	-- Libram of Rapidity
				un(PHASE_FIVE, {
					["itemID"] = 21982,	-- Ogre Warbeads
					["questID"] = 8949,	-- Falrin's Vendetta
					["crs"] = {
						11441,	-- Gordok Brute
						14351,	-- Gordok Bushwacker
						11445,	-- Gordok Captain
						11440,	-- Gordok Enforcer
						11444,	-- Gordok Mage-Lord
						11442,	-- Gordok Mauler
						11443,	-- Gordok Ogre-Mage
						11450,	-- Gordok Reaver
						11448,	-- Gordok Warlock
					},
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["description"] = "The following items can drop from any boss in Dire Maul.",
				["groups"] = {
					{
						["itemID"] = 18357,	-- Codex of Defense
						["questID"] = 7499,	-- Codex of Defense
						["classes"] = { WARRIOR },
					},
					{
						["itemID"] = 18360,	-- Harnessing Shadows
						["questID"] = 7502,	-- Harnessing Shadows
						["classes"] = { WARLOCK },
					},
					{
						["itemID"] = 18401,	-- Foror's Compendium of Dragon Slaying
						["classes"] = { WARRIOR, PALADIN },
					},
					{
						["itemID"] = 18363,	-- Frost Shock and You
						["questID"] = 7505,	-- Frost Shock and You
						["classes"] = { SHAMAN },
					},
					{
						["itemID"] = 18356,	-- Garona: A Study on Stealth and Treachery
						["questID"] = 7498,	-- Garona: A Study on Stealth and Treachery
						["classes"] = { ROGUE },
					},
					{
						["itemID"] = 18362,	-- Holy Bologna: What the Light Won't Tell You
						["questID"] = 7504,	-- Holy Bologna: What the Light Won't Tell You
						["classes"] = { PRIEST },
					},
					{
						["itemID"] = 18358,	-- The Arcanist's Cookbook
						["questID"] = 7500,	-- The Arcanist's Cookbook
						["classes"] = { MAGE },
					},
					{
						["itemID"] = 18364,	-- The Emerald Dream
						["questID"] = 7506,	-- The Emerald Dream...
						["classes"] = { DRUID },
					},
					{
						["itemID"] = 18361,	-- The Greatest Race of Hunters
						["questID"] = 7503,	-- The Greatest Race of Hunters
						["classes"] = { HUNTER },
					},
					{
						["itemID"] = 18359,	-- The Light and How to Swing It
						["questID"] = 7501,	-- The Light and How to Swing It
						["classes"] = { PALADIN },
					},
				},
			}),
			n(-12, {	-- Warpwood Quarter [East - Demon]
				["description"] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
				["groups"] = {
					n(ZONEDROPS, {
						i(18296, {	-- Marksman Bands
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
						i(18295, {	-- Phasing Boots
							["crs"] = {
								13196,	-- Phase Lasher
							},
						}),
						i(18603, {	-- Satyr Blood
							["questID"] = 7581,	-- The Prison's Bindings
							["classes"] = { WARLOCK },
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
								11453,	-- Wildspawn Trickster
							},
						}),
						i(18298, {	-- Unbridled Leggings
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
					}),
					n(14354, {	-- Pusillin
						["description"] = "Talk to him and then chase him. Eventually he will go up a ramp and become killable.",
						["groups"] = {
							{
								["itemID"] = 18249,	-- Crescent Key
								["description"] = "Used to unlock the doors to Dire Maul North and West.",
							},
							{
								["itemID"] = 18261,	-- Book of Incantations
								["questID"] = 7441,	-- Pusillin and the Elder Azj'Tordin
							},
							i(18267),	-- Recipe: Runn Tum Tuber Surprise
						},
					}),
					n(14349, {	-- Pimgib
						i(18354, {	-- Pimgib's Collar
							["classes"] = { WARLOCK },
						}),
					}),
					n(14327, {	-- Lethtendris
						{
							["itemID"] = 18426,	-- Lethtendris's Web
							["allianceQuestID"] = 7488,	-- Lethtendris's Web
							["hordeQuestID"] = 7489,	-- Lethtendris's Web
						},
						i(18311),	-- Quel'dorei Channeling Rod
						i(18301),	-- Lethtendris' Wand
						i(18325),	-- Felhide Cap
						i(18302),	-- Band of Vigor
					}),
					n(13280, {	-- Hydrospawn
						{
							["itemID"] = 18299,	-- Hydrospawn Essence
							["questID"] = 7463,	-- Arcane Refreshment
							["classes"] = { MAGE },
						},
						i(18324),	-- Waveslicer
						i(18317),	-- Tempest Talisman
						i(18305),	-- Breakwater Legguards
						i(18307),	-- Riptide Shoes
						i(18322),	-- Waterspout Boots
						un(PHASE_THREE, i(19268)),	-- Ace of Elementals
					}),
					n(11490, {	-- Zevrim Thornhoof
						i(18323),	-- Satyr's Bow
						i(18308),	-- Clever Hat
						i(18319),	-- Fervent Helm
						i(18313),	-- Helm of Awareness
						i(18306),	-- Gloves of Shadowy Mist
					}),
					un(PHASE_FIVE, n(16097, {	-- Isalien Summonable
						["description"] = "This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.",
						["cost"] = {
							{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
							{ "i", 22057, 1 },	-- Brazier of Invocation
						},
						["groups"] = bubbleDown({ ["u"] = PHASE_FIVE }, {
							i(22315), 	-- Hammer of Revitalization
							i(22314), 	-- Huntsman's Harpoon
							i(22304), 	-- Ironweave Gloves
							i(22472), 	-- Boots of Ferocity
							{
								["itemID"] = 22401,	-- Libram of Hope
								["classes"] = { PALADIN },
							},
							{
								["itemID"] = 22345,	-- Totem of Rebirth
								["classes"] = { SHAMAN },
							},
						}),
					})),
					n(11491, {	-- Old Ironbark
						["description"] = "Talk to him for him to break down the door.",
					}),
					n(11492, {	-- Alzzin the Wildshaper
						{
							["itemID"] = 18501,	-- Felvine Shard
							["questID"] = 5526,	-- Shards of the Felvine
							["description"] = "Looted from the Felvine Shard object that spawns under the vines near the last boss in Dire Maul East.",
						},
						i(18321),	-- Energetic Rod
						i(18310),	-- Fiendish Machete
						i(18328),	-- Shadewood Cloak
						i(18312),	-- Energized Chestplate
						i(18309),	-- Gloves of Restoration
						i(18326),	-- Razor Gauntlets
						i(18327),	-- Whipvine Cord
						i(18318),	-- Merciful Greaves
						i(18314),	-- Ring of Demonic Guile
						i(18315),	-- Ring of Demonic Potency
					}),
				},
			}),
			n(-13, {	-- Gordok Commons [North - Ogres] [Straight]
				["description"] = "This part of the instance can be accessed after clearing West or entering from the northern-most portal.",
				["groups"] = {
					n(14326, {	-- Guard Mol'dar
						i(18498),	-- Hedgecutter
						i(18462),	-- Jagged Bone Fist
						i(18463),	-- Ogre Pocket Knife
						i(18460),	-- Unsophisticated Hand Cannon
						i(18496),	-- Heliotrope Cloak
						i(18493),	-- Bulky Iron Spaulders
						i(18494),	-- Denwatcher's Shoulders
						i(18450),	-- Robe of Combustion
						i(18451),	-- Hyena Hide Belt
						i(18459),	-- Gallant's Wristguards
						i(18458),	-- Modest Wristguards
						i(18497),	-- Sublime Wristguards
						i(18464),	-- Gordok Nose Ring
					}),
					n(14322, {	-- Stomper Kreeg
						i(18425),	-- Kreeg's Mug
					}),
					n(14321, {	-- Guard Fengus
						i(18462),	-- Jagged Bone Fist
						i(18463),	-- Ogre Pocket Knife
						i(18460),	-- Unsophisticated Hand Cannon
						i(18450),	-- Robe of Combustion
						i(18451),	-- Hyena Hide Belt
						i(18459),	-- Gallant's Wristguards
						i(18458),	-- Modest Wristguards
						i(18464),	-- Gordok Nose Ring
					}),
					o(179501, {	-- Knot Thimblejack's Cache
						["sourceQuest"] = 5525,	-- Free Knot!
						["groups"] = {
							i(18414),	-- Pattern: Belt of the Archmage
							i(18517),	-- Pattern: Chromatic Cloak
							i(18418),	-- Pattern: Cloak of Warding
							i(18415),	-- Pattern: Felcloth Gloves
							i(18514),	-- Pattern: Girdle of Insight
							i(18518),	-- Pattern: Hide of the Wild
							i(18416),	-- Pattern: Inferno Gloves
							i(18515),	-- Pattern: Mongoose Boots
							i(18417),	-- Pattern: Mooncloth Gloves
							i(18519),	-- Pattern: Shifting Cloak
							i(18516),	-- Pattern: Swift Flight Bracers
							i(18240),	-- Ogre Tannin
						},
					}),
					o(179499, {	-- Ogre Tannin Basket
						["description"] = "Beware! Looting the Ogre Tannin will cause a Gordok Bushwacker to spawn. Quote is homage to the movie The Silence of the Lambs.\n\n'NO! It puts the tannin in the basket, or it gets the mallet again!'",
						["qg"] = 14351,	-- Gordok Bushwacker
						["groups"] = {
							i(18240),	-- Ogre Tannin
						},
					}),
					n(14323, {	-- Guard Slip'kik
						i(18498),	-- Hedgecutter
						i(18462),	-- Jagged Bone Fist
						i(18463),	-- Ogre Pocket Knife
						i(18460),	-- Unsophisticated Hand Cannon
						i(18496),	-- Heliotrope Cloak
						i(18493),	-- Bulky Iron Spaulders
						i(18494),	-- Denwatcher's Shoulders
						i(18450),	-- Robe of Combustion
						i(18451),	-- Hyena Hide Belt
						i(18459),	-- Gallant's Wristguards
						i(18458),	-- Modest Wristguards
						i(18497),	-- Sublime Wristguards
						i(18464),	-- Gordok Nose Ring
					}),
					n(14325, {	-- Captain Kromcrush
						i(18502),	-- Monstrous Glaive
						i(18503),	-- Kromcrush's Chestplate
						i(18505),	-- Mugger's Belt
						i(18507),	-- Boots of the Full Moon
					}),
					n(14324, {	-- Cho'Rush the Observer
						i(18484),	-- Cho'Rush's Blade
						i(18483),	-- Mana Channeling Wand
						i(18485),	-- Observer's Shield
						i(18490),	-- Insightful Hood
					}),
					n(11501, {	-- King Gordok
						i(18780),	-- Top Half of Advanced Armorsmithing: Volume I
						i(18520),	-- Barbarous Blade
						i(18523),	-- Brightly Glowing Stone
						i(18526),	-- Crown of the Ogre King
						i(18525),	-- Bracers of Prosperity
						i(18527),	-- Harmonious Gauntlets
						i(18524),	-- Leggings of Destruction
						i(18521),	-- Grimy Metal Boots
						i(18522),	-- Band of the Ogre King
						un(PHASE_THREE, i(19258)),	-- Ace of Warlords
					}),
					n(14353, {	-- Mizzle the Crafty
						["description"] = "Speak with Mizzle after killing |cFFFFD700King Gordok|r to spawn the Tribute Chest.",
						["groups"] = {
							o(179564, {	-- Gordok Tribute Chest
								["description"] =  "A full Tribute Run (5 items) requires leaving all bosses alive except King Gordok, and also requires activating the Frost Trap & fooling Kromcrush with the Ogre Suit, granted by the Goblin near the trap.",
								["groups"] = {
									i(18655),	-- Schematic: Major Recombobulator
									i(18499),	-- Barrier Shield
									i(18479),	-- Carrion Scorpid Helm
									i(18537),	-- Counterattack Lodestone
									i(18528),	-- Cyclone Spaulders
									i(18529),	-- Elemental Plate Girdle
									i(18533),	-- Gordok Bracers of Power
									i(18478),	-- Hyena Hide Jerkin
									i(18532),	-- Mindsurge Robe
									i(18476),	-- Mud Stained Boots
									i(18475),	-- Oddly Magical Belt
									i(18530),	-- Ogre Forged Hauberk
									i(18482),	-- Ogre Toothpick Shooter
									i(18495),	-- Redoubt Cloak
									i(18534),	-- Rod of the Ogre Magi
									i(18480),	-- Scarab Plate Helm
									i(18477),	-- Shaggy Leggings
									i(18481),	-- Skullcracking Mace
									i(18500),	-- Tarnished Elven Ring
									i(18538),	-- Treant's Bane
									i(18531),	-- Unyielding Maul
								},
							}),
						},
					}),
				},
			}),
			n(-14, {	-- Capital Gardens [West - Elves] [Left Side]
				["description"] = "This part of the instance can be accessed from the western-most portal. (left side)",
				["groups"] = {
					n(VENDORS, {
						n(14371, {	-- Shen'dralar Provisioner
							i(18487),	-- Pattern: Mooncloth Robe
						}),
					}),
					n(ZONEDROPS, {
						i(18289, {	-- Barbed Thorn Necklace
							["crs"] = {
								11461,	-- Warpwood Guardian
								11462,	-- Warpwood Treant
								13021,	-- Warpwood Crusher
								11464,	-- Warpwood Tangler
								11465,	-- Warpwood Stomper
							},
						}),
						i(18339, {	-- Eidolon Cloak
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						i(18340, {	-- Eidolon Talisman
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						un(PHASE_FIVE, i(22224, {	-- Jeering Spectre's Essence
							["questID"] = 8950,	-- The Instigator's Enchantment
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11469,	-- Eldreth Seether
								11470,	-- Eldreth Sorcerer
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						})),
						i(18337, {	-- Orphic Bracers
							["crs"] = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
						i(18343, {	-- Petrified Band
							["crs"] = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18344, {	-- Stonebark Gauntlets
							["crs"] = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18338, {	-- Wand of Arcane Potency
							["crs"] = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
					}),
					n(11487, {	-- Magister Kalendris
						un(PHASE_FIVE, i(22309)),	-- Pattern: Big Bag of Enchantment
						i(18397),	-- Elder Magus Pendant
						i(18374),	-- Flamescarred Shoulders
						i(18350),	-- Amplifying Cloak
						i(18351),	-- Magically Sealed Bracers
						i(18371),	-- Mindtap Talisman
					}),
					n(11467, {	-- Tsu'zee
						["description"] = "This is a rare that is not always present.",
						["groups"] = {
							i(18387),	-- Brightspark Gloves
							i(18346),	-- Threadbane Trousers
							i(18345),	-- Murmuring Ring
						},
					}),
					n(11488, {	-- Illyanna Ravenoak
						i(18347),	-- Well Balanced Axe
						i(18383),	-- Force Imbued Gauntlets
						i(18349),	-- Gauntlets of Accuracy
						i(18386),	-- Padre's Trousers
					}),
					n(11489, {	-- Tendris Warpwood
						i(18353),	-- Stoneflower Staff
						i(18352),	-- Petrified Bark Shield
						i(18393),	-- Warpwood Bindings
						i(18390),	-- Tanglemoss Leggings
					}),
					n(11496, {	-- Immol'thar
						i(18372),	-- Blade of the New Moon
						i(18381),	-- Evil Eye Pendant
						i(18384),	-- Bile-Etched Spaulders
						i(18389),	-- Cloak of the Cosmos
						i(18385),	-- Robe of Everlasting Night
						i(18394),	-- Demon Howl Wristguards
						i(18377),	-- Quickdraw Gloves
						i(18391),	-- Eyestalk Cord
						i(18379),	-- Odious Greaves
						i(18370),	-- Vigilance Charm
					}),
					n(14506, {	-- Lord Hel'nurath
						["description"] = "|cff3399ffSTEP 1:|r Find a Warlock that is on or has completed Dreadsteed of Xoroth.\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs, Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once mobs stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
						["sourceQuest"] = 7631,	-- Dreadsteed of Xoroth
						["cost"] = {
							{ "i", 18670, 1 },	-- Xorothian Glyphs
							{ "i", 18629, 1 },	-- Black Lodestone
							{ "i", 18663, 1 },	-- J'eevee's Jar
						},
						["groups"] = {
							i(18757), 	-- Diabolic Mantle
							i(18755), 	-- Xorothian Firestick
							i(18756), 	-- Dreadguard Protector
							i(18754), 	-- Fel Hardened Bracers
						},
					}),
					n(11486, {	-- Prince Tortheldrin
						{
							["itemID"] = 18336,	-- Gauntlet of Gordok Might
							["questID"] = 7703,	-- Unfinished Gordok Business
							["description"] = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
						},
						i(18392),	-- Distracting Dagger
						i(18396),	-- Mind Carver
						i(18376),	-- Timeworn Mace
						i(18388),	-- Stoneshatter
						i(18382),	-- Fluctuating Cloak
						i(18373),	-- Chestplate of Tranquility
						i(18375),	-- Bracers of the Eclipse
						i(18380),	-- Eldritch Reinforced Legplates
						i(18378),	-- Silvermoon Leggings
						i(18395),	-- Emerald Flame Ring
					}),
				},
			}),
		},
	}),
}))};