-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(ULDAMAN, {
		["description"] = "Uldaman is an ancient Titan vault buried deep within the Khaz Mountains, accessible from the Badlands. Partially excavated, it has since fallen into the hands of the Dark Iron dwarves who seek to corrupt its riches for their master, Ragnaros.",
		["lvl"] = 35,
		["groups"] = {
			n(QUESTS, {
				q(2200, {	-- Back to Uldaman
					["sourceQuest"] = 2199,	-- Lore for a Price
					["qg"] = 6826,	-- Talvash del Kissel
					["coord"] = { 36.4, 3.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						i(7667),	-- Talvash's Phial of Scrying
					},
				}),
				q(2340, {	-- Deliver the Gems
					["sourceQuest"] = 2339,	-- Find the Gems and Power Source
					["qg"] = 6868,	-- Jarkal Mossmeld
					["cost"] = {
						{ "i", 7887, 1 },	-- Necklace and Gem Salvage
					},
					["coord"] = { 2.6, 46, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(2201, {	-- Find the Gems
					["sourceQuest"] = 2200,	-- Back to Uldaman
					["qg"] = 6912,	-- Remains of a Paladin
					["cost"] = {
						{ "i", 7669, 1 },	-- Shattered Necklace Ruby
						{ "i", 7670, 1 },	-- Shattered Necklace Sapphire
						{ "i", 7671, 1 },	-- Shattered Necklace Topaz
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				}),
				q(2339, {	-- Find the Gems and Power Source
					["sourceQuest"] = 2338,	-- Translating the Journal
					["qg"] = 6868,	-- Jarkal Mossmeld
					["cost"] = {
						{ "i", 7669, 1 },	-- Shattered Necklace Ruby
						{ "i", 7670, 1 },	-- Shattered Necklace Sapphire
						{ "i", 7671, 1 },	-- Shattered Necklace Topaz
						{ "i", 7672, 1 },	-- Shattered Necklace Power Source
					},
					["coord"] = { 2.6, 46, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(2199, {	-- Lore for a Price
					["sourceQuest"] = 2198,	-- The Shattered Necklace
					["qg"] = 6826,	-- Talvash del Kissel
					["cost"] = {
						{ "i", 2842, 5 },	-- Silver Bar (x5)
					},
					["coord"] = { 36.4, 3.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				}),
				q(2283, {	-- Necklace Recovery
					["providers"] = {
						{ "i", 7666 },	-- Shattered Necklace
						{ "n", 6986 },	-- Dran Droffers <Droffers and Son Salvage>
					},
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(2284, {	-- Necklace Recovery, Take 2
					["sourceQuest"] = 2283,	-- Necklace Recovery
					["qg"] = 6986,	-- Dran Droffers <Droffers and Son Salvage>
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(2341, {	-- Necklace Recovery, Take 3
					["sourceQuest"] = 2340,	-- Deliver the Gems
					["qg"] = 6986,	-- Dran Droffers <Droffers and Son Salvage>
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						i(7888),	-- Jarkal's Enhancing Necklace
					},
				}),
				q(1956, {	-- Power in Uldaman
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1955,	-- The Exorcism
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["maps"] = { DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 8053, 1 },	-- Obsidian Power Source
					},
					["lvl"] = 35,
				}),
				q(3375, {	-- Replacement Phial
					["sourceQuest"] = 2199,	-- Lore for a Price
					["qg"] = 6826,	-- Talvash del Kissel
					["cost"] = {
						{ "i", 3827, 1 },	-- Mana Potion
						{ "i", 3857, 1 },	-- Coal
						{ "i", 1708, 1 },	-- Sweet Nectar
					},
					["coord"] = { 36.4, 3.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 37,
					["groups"] = {
						i(7667),	-- Talvash's Phial of Scrying
					},
				}),
				q(2204, {	-- Restoring the Necklace
					["sourceQuest"] = 2201,	-- Find the Gems
					["qg"] = 6912,	-- Remains of a Paladin
					["cost"] = {
						{ "i", 7672, 1 },	-- Shattered Necklace Power Source
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				}),
				q(2361, {	-- Restoring the Necklace
					["sourceQuest"] = 2204,	-- Restoring the Necklace
					["qg"] = 6826,	-- Talvash del Kissel
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						i(7673),	-- Talvash's Enhancing Necklace
						{
							["itemID"] = 7667,	-- Talvash's Phial of Scrying
							["questID"] = 2361,	-- Restoring the Necklace
							["description"] = "Use this item in Uldaman after gathering each of the required materials for Find the Gems & Restoring the Necklace.\n\nNOTE: You can safely delete this item if it is marked Collected after completing Restoring the Necklace.",
						},
					},
				}),
				q(2240, {	-- The Hidden Chamber
					["sourceQuest"] = 2398,	-- The Lost Dwarves
					["qg"] = 6906,	-- Baelog
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						i(9626),	-- Dwarven Charge
						i(9627),	-- Explorers' League Lodestar
					},
				}),
				q(2398, {	-- The Lost Dwarves
					["qg"] = 1356,	-- Prospector Stormpike
					["coord"] = { 74.64, 11.74, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(1139, {	-- The Lost Tablets of Will
					["sourceQuest"] = 762,	-- An Ambassador of Evil
					["qg"] = 2918,	-- Advisor Belgrum
					["cost"] = {
						{ "i", 5824, 1 },	-- Tablet of Will
					},
					["coord"] = { 77.3, 9.7, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						i(6723),	-- Medal of Courage
					},
				}),
				q(2278, {	-- The Platinum Discs
					["provider"] = { "o", 131474 },	-- The Discs of Norgannon
					["description"] = "Right click on The Discs of Norgannon after defeating Archaedas to start this quest.",
					["lvl"] = 40,
				}),
				{
					["allianceQuestID"] = 2279,	-- The Platinum Discs [Alliance]
					["hordeQuestID"] = 2280,	-- The Platinum Discs [Horde]
					["sourceQuest"] = 2278,	-- The Platinum Discs
					["provider"] = { "o", 131474 },	-- The Discs of Norgannon
					["description"] = "Talk to the Lore Keeper until he has finished talking and then pick up this quest from The Discs of Norgannon again.",
					["cost"] = {
						{ "i", 6064, 1 },	-- Miniature Platinum Discs
					},
					["lvl"] = 40,
				},
				q(2439, {	-- The Platinum Discs [Alliance - Part 3]
					["qg"] = 5387,	-- High Explorer Magellas <Explorers' League>
					["sourceQuest"] = 2279,	-- The Platinum Discs [Alliance]
					["coord"] = { 69.9, 18.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 8070, 1 },	-- Reward Voucher
					},
					["lvl"] = 40,
					["groups"] = {
						i(9587),	-- Thawpelt Sack
						i(3928),	-- Superior Healing Potion
						i(6149),	-- Greater Mana Potion
					},
				}),
				q(2440, {	-- The Platinum Discs [Horde - Part 3]
					["qg"] = 3978,	-- Sage Truthseeker
					["sourceQuest"] = 2280,	-- The Platinum Discs [Horde]
					["coord"] = { 34.6, 47.2, THUNDER_BLUFF },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8070, 1 },	-- Reward Voucher
					},
					["lvl"] = 40,
					["groups"] = {
						i(9587),	-- Thawpelt Sack
						i(3928),	-- Superior Healing Potion
						i(6149),	-- Greater Mana Potion
					},
				}),
				q(2198, {	-- The Shattered Necklace
					["provider"] = { "i", 7666 },	-- Shattered Necklace
					["coord"] = { 36.4, 3.6, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				}),
				q(2318, {	-- Translating the Journal
					["sourceQuest"] = 2284,	-- Necklace Recovery, Take 2
					["qg"] = 6912,	-- Remains of a Paladin
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(2338, {	-- Translating the Journal
					["sourceQuest"] = 2318,	-- Translating the Journal
					["qg"] = 6868,	-- Jarkal Mossmeld
					["coord"] = { 2.6, 46, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
			}),
			n(ZONEDROPS, {
				{
					["itemID"] = 7733,	-- Staff of Prehistoria
					["cost"] = {
						{ "i", 7740, 1 },	-- Gni'kiv Medallion
						{ "i", 7741, 1 },	-- The Shaft of Tsol
					},
				},
				{
					["itemID"] = 7666,	-- Shattered Necklace
					["allianceQuestID"] = 2198,	-- The Shattered Necklace
					["hordeQuestID"] = 2283,	-- Necklace Recovery
				},
				i(9420),	-- Adventurer's Pith Helmet
				i(9392),	-- Annealed Blade
				i(9393),	-- Beacon of Hope
				i(9465),	-- Digmaster 5000
				i(9381),	-- Earthen Rod
				i(9397),	-- Energy Cloak
				i(9386),	-- Excavator's Brand
				i(9424),	-- Ginn-Su Sword
				i(9396),	-- Legguards of the Vault
				i(9429),	-- Miner's Hat of the Deep
				i(9426),	-- Monolithic Bow
				i(9383),	-- Obsidian Cleaver
				i(9431),	-- Papal Fez
				i(9425),	-- Pendulum of Doom
				i(9422),	-- Shadowforge Bushmaster
				i(9432),	-- Skullplate Bracers
				i(9430),	-- Spaulders of a Lost Age
				i(9406),	-- Spirewind Fetter
				i(9427),	-- Stonevault Bonebreaker
				i(9384),	-- Stonevault Shiv
				i(9423),	-- The Jackhammer
				i(9391),	-- The Shoveler
				i(9428),	-- Unearthed Bands
			}),
			n(RARES, {
				n(7057, {	-- Digmaster Shovelphlange
					["description"] = "This guy spawns outside of the instance in the cave leading to the instance.",
					["groups"] = {
						i(9378),	-- Shovelphlange's Mining Axe
						i(9375),	-- Expert Goldminer's Helmet
						i(9382),	-- Tromping Miner's Boots
					},
				}),
			}),
			o(125477, {	-- Conspicuous Urn
				["description"] = "In the room with the Lost Dwarves next to the sealed door opposite to the dwarves on top fo the stairs. You will need to kill some stealthed Troggs to get there.",
				["groups"] = {
					{
						["itemID"] = 7671,	-- Shattered Necklace Topaz
						["allianceQuestID"] = 2201,	-- Find the Gems
						["hordeQuestID"] = 2339,	-- Find the Gems and Power Source
					},
				},
			}),
			o(123329, {	-- Baelog's Chest
				["description"] = "Alliance must loot the Medallion from this chest as Baelog is friendly to you.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					{
						["itemID"] = 7740,	-- Gni'kiv Medallion
						["description"] = "Use this item along with the Shaft of Tsol to create the Staff of Prehistoria required to open the door to Ironaya.\n\nYou should ask whoever loots the Shaft of Tsol from Revelosh to trade it to you.",
					},
				},
			}),
			n(6906, {	-- Baelog
				["description"] = "This dwarf is named after the French Archiologist, René Belloq, from the Raiders of the Lost Ark.",
				["races"] = HORDE_ONLY,
				["groups"] = {
					{
						["itemID"] = 7740,	-- Gni'kiv Medallion
						["description"] = "Use this item along with the Shaft of Tsol to create the Staff of Prehistoria required to open the door to Ironaya.\n\nYou should ask whoever loots the Shaft of Tsol from Revelosh to trade it to you.",
					},
					i(9399),	-- Precision Arrow
					i(9401),	-- Nordic Longshank
					i(9400),	-- Baelog's Shortbow
				},
			}),
			n(6907, {	-- Eric "The Swift"
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(9394),	-- Horned Viking Helmet
					i(9398),	-- Worn Running Boots
					i(2459),	-- Swiftness Potion
				},
			}),
			n(6908, {	-- Olaf
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(9404),	-- Olaf's All Purpose Shield
					i(9403),	-- Battered Viking Shield
					i(1177),	-- Oil of Olaf
				},
			}),
			n(6912, {	-- Remains of a Paladin
				["races"] = HORDE_ONLY,
				["groups"] = {
					{
						["itemID"] = 7886,	-- Untranslated Journal
						["questID"] = 2318,	-- Translating the Journal
					},
				},
			}),
			n(6910, {	-- Revelosh
				{
					["itemID"] = 7741,	-- The Shaft of Tsol
					["description"] = "Use this item along with the Gni'kiv Medallion to create the Staff of Prehistoria required to open the door to Ironaya.\n\nYou should trade this to the person that looted the Gni'kiv Medallion from Baelog (Horde) or from Baelog's Chest (Alliance).",
				},
				i(9389),	-- Revelosh's Spaulders
				i(9388),	-- Revelosh's Armguards
				i(9390),	-- Revelosh's Gloves
				i(9387),	-- Revelosh's Boots
			}),
			n(7228, {	-- Ironaya
				["description"] = "Use the Staff of Prehistoria on the keyhole looking gizmo in the digsite that has the miniature city.\n\nThis is a reference to the Raiders of the Lost Ark.",
				["cost"] = {
					{ "i", 7733, 1 },	-- Staff of Prehistoria
				},
				["groups"] = {
					i(9408),	-- Ironshod Bludgeon
					i(9409),	-- Ironaya's Bracers
					i(9407),	-- Stoneweaver Leggings
				},
			}),
			n(7023, {	-- Obsidian Sentinel
				{
					["itemID"] = 8053,	-- Obsidian Power Source
					["questID"] = 1956,	-- Power in Uldaman
					["classes"] = { MAGE },
				},
			}),
			n(7206, {	-- Ancient Stone Keeper
				i(9411),	-- Rockshard Pauldrons
				i(9410),	-- Cragfists
			}),
			n(7291, {	-- Galgann Firehammer
				i(9419),	-- Galgann's Firehammer
				i(9412),	-- Galgann's Fireblaster
				i(11310),	-- Flameseer Mantle
				i(11311),	-- Emberscale Cape
			}),
			o(113757, {	-- Shadowforge Cache
				["description"] = "WARNING: Defeat the Galgann Firehammer first as looting this chest will spawn two dwarven Ambushers.\n\nNOTE: This trigger only occurs once per instance lockout.",
				["groups"] = {
					{
						["itemID"] = 7671,	-- Shattered Necklace Topaz
						["allianceQuestID"] = 2201,	-- Find the Gems
						["hordeQuestID"] = 2339,	-- Find the Gems and Power Source
					},
				},
			}),
			o(142088, {	-- Tablet of Will
				["description"] = "Located in the same room as Galgann Firehammer.",
				["groups"] = {
					{
						["itemID"] = 5824,	-- Tablet of Will
						["questID"] = 1139,	-- The Lost Tablets of Will
						["races"] = ALLIANCE_ONLY,
					},
				},
			}),
			n(4854, {	-- Grimlok
				{
					["itemID"] = 7670,	-- Shattered Necklace Sapphire
					["allianceQuestID"] = 2201,	-- Find the Gems
					["hordeQuestID"] = 2339,	-- Find the Gems and Power Source
				},
				i(9416),	-- Grimlock's Charge
				i(9415),	-- Grimlock's Tribal Vestments
				i(9414),	-- Oilskin Leggings
			}),
			n(2748, {	-- Archaedas
				i(7672),	-- Shattered Necklace Power Source
				{
					["itemID"] = 7672,	-- Shattered Necklace Power Source
					["allianceQuestID"] = 2204,	-- Restoring the Necklace
					["hordeQuestID"] = 2339,	-- Find the Gems and Power Source
				},
				i(9418),	-- Stoneslayer
				i(9413),	-- The Rockpounder
				i(11118),	-- Archaedic Stone
			}),
		},
	}),
})};