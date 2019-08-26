-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(ULDAMAN, { 	-- Uldaman
		["lvl"] = 35,
		["groups"] = {
			n(-17, {	-- Quests
				{
					["questID"] = 720,	-- A Sign of Hope
					-- TODO: Starts with Object Crumpled Map (2868)
					["coord"] = { 53.0, 33.9, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				},
				{
					["questID"] = 721,	-- A Sign of Hope
					["sourceQuest"] = 720,	-- A Sign of Hope
					["qg"] = 2910,	-- Prospector Ryedol <Explorers' League>
					["coord"] = { 53.4, 43.4, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				},
				{
					["questID"] = 704,	-- Agmond's Fate
					["sourceQuest"] = 739,	-- Murdaloc
					["qg"] = 1344,	-- Prospector Ironband
					["coord"] = { 65.9, 65.6, LOCH_MODAN },
					["maps"] = { LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4980),	-- Prospector Gloves
					},
				},
				{
					["questID"] = 722,	-- Amulet of Secrets
					["sourceQuest"] = 721,	-- A Sign of Hope
					["qg"] = 2909,	-- Hammertoe Grez
					["coord"] = { 37.3, 85.8, LOCH_MODAN },
					["maps"] = { LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				},
				{
					["questID"] = 2200,	-- Back to Uldaman
					["sourceQuest"] = 2199,	-- Lore for a Price
					["qg"] = 6826,	-- Talvash del Kissel
					["coord"] = { 36.4, 3.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				},
				{
					["questID"] = 2340,	-- Deliver the Gems
					["sourceQuest"] = 2339,	-- Find the Gems and Power Source
					["qg"] = 6868,	-- Jarkal Mossmeld
					["coord"] = { 81.4, 37.2, SEARING_GORGE },	-- TODO: BADLANDS, idiot
					["maps"] = { BADLANDS, SEARING_GORGE },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				},
				{
					["questID"] = 2201,	-- Find the Gems
					["sourceQuest"] = 2200,	-- Back to Uldaman
					["qg"] = 6912,	-- Remains of a Paladin
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				},
				{
					["questID"] = 2339,	-- Find the Gems and Power Source
					["sourceQuest"] = 2338,	-- Translating the Journal
					["qg"] = 6868,	-- Jarkal Mossmeld
					["coord"] = { 81.4, 37.2, SEARING_GORGE },	-- TODO: BADLANDS, idiot
					["maps"] = { BADLANDS, SEARING_GORGE },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				},
				{
					["questID"] = 2199,	-- Lore for a Price
					["sourceQuest"] = 2198,	-- The Shattered Necklace
					["qg"] = 6826,	-- Talvash del Kissel
					["coord"] = { 36.4, 3.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				},
				{
					["questID"] = 2198,	-- The Shattered Necklace
					["coord"] = { 36.4, 3.6, BADLANDS },
					["maps"] = { BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				},
				{
					["questID"] = 2283,	-- Necklace Recovery
					["qg"] = 6986,	-- Dran Droffers <Droffers and Son Salvage>
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				},
				{
					["questID"] = 2284,	-- Necklace Recovery, Take 2
					["sourceQuest"] = 2283,	-- Necklace Recovery
					["qg"] = 6986,	-- Dran Droffers <Droffers and Son Salvage>
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				},
				{
					["questID"] = 2341,	-- Necklace Recovery, Take 3
					["sourceQuest"] = 2340,	-- Deliver the Gems
					["qg"] = 6986,	-- Dran Droffers <Droffers and Son Salvage>
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						i(7888),	-- Jarkal's Enhancing Necklace
					},
				},
				{
					["questID"] = 2318,	-- Translating the Journal
					["sourceQuest"] = 2284,	-- Necklace Recovery, Take 2
					["qg"] = 6912,	-- Remains of a Paladin
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				},
				{
					["questID"] = 2338,	-- Translating the Journal
					["sourceQuest"] = 2318,	-- Translating the Journal
					["qg"] = 6868,	-- Jarkal Mossmeld
					["coord"] = { 81.4, 37.2, SEARING_GORGE },	-- TODO: BADLANDS, idiot
					["maps"] = { BADLANDS, SEARING_GORGE },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				},
				
				--[[
				{
					["questID"] = ,	-- 
					["qg"] = ,	-- 
					["races"] = ALLIANCE_ONLY,
					["lvl"] = ,
				},
				{
					["questID"] = ,	-- 
					["qg"] = ,	-- 
					["races"] = ALLIANCE_ONLY,
					["lvl"] = ,
				},
				{
					["questID"] = ,	-- 
					["qg"] = ,	-- 
					["races"] = ALLIANCE_ONLY,
					["lvl"] = ,
				},
				]]--
				
				--[[
				o(131474, {	-- The Discs of Norgannon
					q(2278),	-- The Platinum Discs
					q(2279, {	-- The Platinum Discs [Alliance]
						["sourceQuest"] = 2278,	-- The Platinum Discs
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 45,
					}),
					q(2280, {	-- The Platinum Discs [Horde]
						["sourceQuest"] = 2278,	-- The Platinum Discs
						["races"] = HORDE_ONLY,
						["lvl"] = 45,
					}),
					q(2280, {	-- The Platinum Discs
						["sourceQuest"] = 2278,	-- The Platinum Discs
						["groups"] = {
							i(65921),	-- Durdin's Hammer
							i(65947),	-- Platinum Sword
							i(65971),	-- Band of Uldaman
						},
					}),
				}),
				q(2240, {	-- The Hidden Chamber
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(9626),	-- Dwarven Charge
						i(9627),	-- Explorers' League Lodestar
					},
				}),
				]]--
			}),
			n(0, {	-- Zone Drop
				{
					["itemID"] = 8009,	-- Dentrium Power Stone
					["questID"] = 2418,	-- Power Stones
				},
				{
					["itemID"] = 5797,	-- Indurium Flake
					["questID"] = 1108,	-- Indurium
				},
				{
					["itemID"] = 8052,	-- An'Alleum Power Stone
					["questID"] = 2418,	-- Power Stones
				},
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
					["coords"] = { 46.4, 12.8, BADLANDS },
					["maps"] = { BADLANDS },
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
			n(6906, {	-- Baelog
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(7740),	-- Gni'kiv Medallion
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
			o(123329, {	-- Baelog's Chest
				i(7740),	-- Gni'kiv Medallion
			}),
			o(125477, {	-- Conspicuous Urn
				{
					["itemID"] = 7671,	-- Shattered Necklace Topaz
					["allianceQuestID"] = 2201,	-- Find the Gems
					["hordeQuestID"] = 2339,	-- Find the Gems and Power Source
				},
			}),
			n(6910, {	-- Revelosh
				i(7741),	-- The Shaft of Tsol
				i(9389),	-- Revelosh's Spaulders
				i(9388),	-- Revelosh's Armguards
				i(9390),	-- Revelosh's Gloves
				i(9387),	-- Revelosh's Boots
			}),
			n(7228, {	-- Ironaya
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
				i(8053),	-- Obsidian Power Source
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
			o(142088, {	-- Tablet of Will
				i(5824),	-- Tablet of Will
				{
					["itemID"] = 7671,	-- Shattered Necklace Topaz
					["questID"] = 1139,	-- The Lost Tablets of Will
					["races"] = ALLIANCE_ONLY,
				},
			}),
			n(4854, {	-- Grimlok
				i(7670),	-- Shattered Necklace Sapphire
				i(9416),	-- Grimlock's Charge
				i(9415),	-- Grimlock's Tribal Vestments
				i(9414),	-- Oilskin Leggings
			}),
			n(2748, {	-- Archaedas
				i(7672),	-- Shattered Necklace Power Source
				i(9418),	-- Stoneslayer
				i(9413),	-- The Rockpounder
				i(11118),	-- Archaedic Stone
			}),
		},
	}),
};