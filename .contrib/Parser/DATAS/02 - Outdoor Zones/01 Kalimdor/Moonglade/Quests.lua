---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(MOONGLADE, {	-- Moonglade
			n(-17, {	-- Quests
				{
					["questID"] = 5527,	-- A Reliquary of Purity
					["qg"] = 11801,	-- Rabine Saturna
					["coord"] = { 51.7, 45.1, MOONGLADE },
					["maps"] = { DIRE_MAUL, SILITHUS },
					["lvl"] = 56,
					["groups"] = {
						{
							["itemID"] = 22201,	-- Reliquary of Purity
							["questID"] = 5527,	-- A Reliquary of Purity
							["provider"] = { "o", 179565 },	-- Dusty Reliquary
							["coord"] = { 63.2, 55.4, SILITHUS },
						},
					},
				},
				{
					["questID"] = 5526,	-- Shards of the Felvine
					["sourceQuest"] = 5527,	-- A Reliquary of Purity
					["qg"] = 11801,	-- Rabine Saturna
					["coord"] = { 51.7, 45.1, MOONGLADE },
					["maps"] = { DIRE_MAUL },
					["lvl"] = 56,
					["groups"] = {
						{
							["itemID"] = 18539,	-- Reliquary of Purity
							["questID"] = 5526,	-- Shards of the Felvine
						},
						{
							["itemID"] = 18501,	-- Felvine Shard
							["questID"] = 5526,	-- Shards of the Felvine
							["description"] = "Looted from the Felvine Shard object that spawns under the vines near the last boss in Dire Maul East.",
						},
						{
							["itemID"] = 18540,	-- Sealed Reliquary of Purity
							["questID"] = 5526,	-- Shards of the Felvine
							["cost"] = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						},
						i(18535),	-- Milli's Shield
						i(18536),	-- Milli's Lexicon
					},
				},
				{
					["questID"] = 8741,	-- The Champion Returns
					["u"] = 3,	-- Added in later phase
					["sourceQuest"] = 8736,	-- The Nightmare Manifests
					["description"] = "This quest will become available with Phase 5.",
					["qg"] = 11832,	-- Keeper Remulos
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 36.18, 41.79, MOONGLADE },
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 21139,	-- Green Scepter Shard
							["questID"] = 8741,	-- The Champion Returns
						},
					},
				},
				{
					["questID"] = 8736,	-- The Nightmare Manifests
					["u"] = 3,	-- Added in later phase
					["sourceQuest"] = 8735,	-- The Nightmare's Corruption
					["description"] = "This quest will become available with Phase 5.\n\nNOTE: You do NOT want to kill Eranikus or allow Remulos to die.",
					["qg"] = 11832,	-- Keeper Remulos
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 36.18, 41.79, MOONGLADE },
					["lvl"] = 60,
					["groups"] = {
						i(21531),	-- Drake Tooth Necklace
						i(21532),	-- Drudge Boots
					},
				},
				{
					["questID"] = 8735,	-- The Nightmare's Corruption
					["u"] = 3,	-- Added in later phase
					["sourceQuest"] = 8734,	-- Tyrande and Remulos
					["qg"] = 11832,	-- Keeper Remulos
					["description"] = "This quest will become available with Phase 5.",
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 36.18, 41.79, MOONGLADE },
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
				},
				{
					["questID"] = 6845,	-- Uncovering Past Secrets
					["sourceQuest"] = 6844,	-- Umber, Archivist
					["qg"] = 11939,	-- Umber
					["coord"] = { 44.88, 35.6, MOONGLADE },
					["lvl"] = 54,
					["groups"] = {
						i(18400),	-- Ring of Living Stone
						i(18402),	-- Glowing Crystal Ring
					},
				},
				{
					["questID"] = 1185,	-- Under the Chitin Was...
					["sourceQuest"] = 6845,	-- Uncovering Past Secrets
					["qg"] = 11939,	-- Umber
					["coord"] = { 44.88, 35.6, MOONGLADE },
					["lvl"] = 54,
				},
				{
					["questID"] = 8447,	-- Waking Legends
					["u"] = 3,	-- Added in later phase
					["sourceQuest"] = 6845,	-- Uncovering Past Secrets
					["qg"] = 11832,	-- Keeper Remulos
					["description"] = "This quest will become available with Phase 2.",
					["minReputation"] = { 910, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["coord"] = { 36.18, 41.79, MOONGLADE },
					["lvl"] = 60,
					["groups"] = {
						i(20600),	-- Malfurion's Signet Ring
					},
				},
				{
					["questID"] = 1124,	-- Wasteland
					["sourceQuests"] = {
						1123,	-- Rabine Saturna
						6762,	-- Rabine Saturna
					},
					["qg"] = 11801,	-- Rabine Saturna
					["coord"] = { 51.7, 45.1, MOONGLADE },
					["lvl"] = 54,
					["groups"] = {
						{
							["itemID"] = 17355,	-- Rabine's Letter
							["questID"] = 1124,	-- Wasteland
						},
					},
				},
			}),
		}),
	}),
};