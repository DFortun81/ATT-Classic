-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(NAXXRAMAS, {
		["u"] = 3,	-- Added in later phase
		["description"] = "An ancient Nerubian ziggurat, Naxxramas was torn free from the ground by agents of the Lich King to serve as Kel'Thuzad's base of operations as he spreads the plague throughout Lordaeron.\n\nDue to Kel'Thuzad fighting a war against the Scarlet Crusade, the Argent Dawn, the Forsaken and the humans of the Alliance, as well as constant incursions of adventurers from every race and nation into the Scourge-controlled Plaguelands on a daily basis, his forces have been severely taxed to maintain the security of his necropolis. But now that the gates of Naxxramas are open, Kel'Thuzad's new forces are rapidly sweeping away all opposition to the Scourge.",
		["sourceQuest"] = 9121,	-- The Dread Citadel - Naxxramas [Honored]
		["isRaid"] = true,
		["lvl"] = 60,
		["groups"] = {
			n(-10066, {	-- Legendary Questline
				["classes"] = { 5, 8, 9, 11 },    -- Priest, Mage, Warlock, Druid
				["title"] = "Atiesh, Greatstaff of the Guardian",
				["icon"] = "Interface\\Icons\\INV_Staff_Medivh",
				["isRaid"] = true,
				["groups"] = {
					{
						["itemID"] = 22726,	-- Splinter of Atiesh
						["description"] = "This item used to drop from all of the bosses in Naxxramas.",
						["groups"] = {
							{
								["itemID"] = 22727,	-- Frame of Atiesh
								["questID"] = 9250,	-- Frame of Atiesh [Quest]
							},
						},
					},
					{
						["questID"] = 9251,	-- Atiesh, the Befouled Greatstaff
						["sourceQuest"] = 9250,	-- Frame of Atiesh
						["qg"] = 15192,	-- Anachronos
					},
					{
						["questID"] = 9257,	-- Atiesh, Greatstaff of the Guardian [Priest]
						["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
						["classes"] = { 5 },	-- Priest
						["qg"] = 15192,	-- Anachronos
						["groups"] = {
							i(22631),	-- Atiesh, Greatstaff of the Guardian (Priest)
						},
					},
					{
						["questID"] = 9270,	-- Atiesh, Greatstaff of the Guardian [Mage]
						["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
						["classes"] = { MAGE },
						["qg"] = 15192,	-- Anachronos
						["groups"] = {
							i(22589),	-- Atiesh, Greatstaff of the Guardian (Mage)
						},
					},
					{
						["questID"] = 9271,	-- Atiesh, Greatstaff of the Guardian [Warlock]
						["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
						["classes"] = { 9 },	-- Warlock
						["qg"] = 15192,	-- Anachronos
						["groups"] = {
							i(22630),	-- Atiesh, Greatstaff of the Guardian (Warlock)
						},
					},
					{
						["questID"] = 9269,	-- Atiesh, Greatstaff of the Guardian [Druid]
						["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
						["classes"] = { DRUID },
						["qg"] = 15192,	-- Anachronos
						["groups"] = {
							i(22632),	-- Atiesh, Greatstaff of the Guardian (Druid)
						},
					},
				},
			}),
			n(QUESTS, {
				{	-- Echoes of War
					["questID"] = 9033,	-- Echoes of War
					["sourceQuests"] = {
						9121,	-- The Dread Citadel - Naxxramas
						9122,	-- The Dread Citadel - Naxxramas
						9123,	-- The Dread Citadel - Naxxramas
					},
					["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
				},
				{	-- Glacial Cloak
					["questID"] = 9237,	-- Glacial Cloak
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22658),	-- Glacial Cloak
					},
				},
				{	-- Glacial Gloves
					["questID"] = 9239,	-- Glacial Gloves
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22654),	-- Glacial Gloves
					},
				},
				{	-- Glacial Vest
					["questID"] = 9240,	-- Glacial Vest
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22652),	-- Glacial Vest
					},
				},
				{	-- Glacial Wrists
					["questID"] = 9238,	-- Glacial Wrists
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22655),	-- Glacial Wrists
					},
				},
				{	-- Icebane Bracers
					["questID"] = 9235,	-- Icebane Bracers
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(28244),	-- Plans: Icebane Bracers
					},
				},
				{	-- Icebane Breastplate
					["questID"] = 9236,	-- Icebane Breastplate
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(28242),	-- Plans: Icebane Breastplate
					},
				},
				{	-- Icebane Gauntlets
					["questID"] = 9234,	-- Icebane Gauntlets
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(28243),	-- Plans: Icebane Gauntlets
					},
				},
				{	-- Icy Scale Bracers
					["questID"] = 9244,	-- Icy Scale Bracers
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22665),	-- Icy Scale Bracers
					},
				},
				{	-- Icy Scale Breastplate
					["questID"] = 9246,	-- Icy Scale Breastplate
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22664),	-- Icy Scale Breastplate
					},
				},
				{	-- Icy Scale Gauntlets
					["questID"] = 9245,	-- Icy Scale Gauntlets
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22666),	-- Icy Scale Gauntlets
					},
				},
				{	-- Polar Bracers
					["questID"] = 9241,	-- Polar Bracers
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22663),	-- Polar Bracers
					},
				},
				{	-- Polar Gloves
					["questID"] = 9242,	-- Polar Gloves
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22662),	-- Polar Gloves
					},
				},
				{	-- Polar Tunic
					["questID"] = 9243,	-- Polar Tunic
					["sourceQuest"] = 9233,	-- Omarion's Handbook
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22661),	-- Polar Tunic
					},
				},
				{	-- Ramaladni's Icy Grasp
					["questID"] = 9230,	-- Ramaladni's Icy Grasp
					["sourceQuest"] = 9229,	-- The Fate of Ramaldni
					["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
					["groups"] = {
						i(22707),	-- Ramaladni's Icy Grasp
					},
				},
				{	-- The Dread Citadel - Naxxramas [Honored]
					["questID"] = 9121,	-- The Dread Citadel - Naxxramas [Honored]
					["u"] = 3,	-- Added in later phase
					["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
					["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, HONORED },	-- Argent Dawn, Honored.
					["altQuests"] = {
						9122,	-- The Dread Citadel - Naxxramas [Revered]
						9123,	-- The Dread Citadel - Naxxramas [Exalted]
					},
					["cost"] = {
						{ "i", 12363, 6 },	-- Arcane Crystal
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 20725, 2 },	-- Nexus Crystal
						{ "i", 12811, 1 },	-- Righteous Orb
						{ "g", 600000 },	-- 60g
					},
				},
				{	-- The Dread Citadel - Naxxramas [Revered]
					["questID"] = 9122,	-- The Dread Citadel - Naxxramas [Revered]
					["u"] = 3,	-- Added in later phase
					["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
					["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, REVERED },	-- Argent Dawn, Revered.
					["altQuests"] = {
						9121,	-- The Dread Citadel - Naxxramas [Honored]
						9123,	-- The Dread Citadel - Naxxramas [Exalted]
					},
					["cost"] = {
						{ "i", 12363, 2 },	-- Arcane Crystal
						{ "i", 20725, 1 },	-- Nexus Crystal
						{ "g", 300000 },	-- 30g
					},
				},
				{	-- The Dread Citadel - Naxxramas [Exalted]
					["questID"] = 9123,	-- The Dread Citadel - Naxxramas [Exalted]
					["u"] = 3,	-- Added in later phase
					["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
					["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn, Exalted.
					["altQuests"] = {
						9121,	-- The Dread Citadel - Naxxramas [Honored]
						9122,	-- The Dread Citadel - Naxxramas [Revered]
					},
				},
				{	-- The Fate of Ramaldni
					["questID"] = 9229,	-- The Fate of Ramaldni
					["sourceQuest"] = 9033,	-- Echoes of War
					["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
				},
				{	-- The Only Song I Know...
					["questID"] = 9232,	-- The Only Song I Know...
					["sourceQuest"] = 9033,	-- Echoes of War
					["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
					["groups"] = {
						i(22700),	-- Glacial Leggings
						i(22699),	-- Icebane Leggings
						i(22702),	-- Icy Scale Leggings
						i(22701),	-- Polar Leggings
					},
				},
				cl(1, {	-- Warrior
					{
						["questID"] = 9037,	-- Dreadnaught Helmet
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
						["groups"] = {
							i(22418),	-- Dreadnaught Helmet
						},
					},
					{
						["questID"] = 9038,	-- Dreadnaught Pauldrons
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
						["groups"] = {
							i(22419),	-- Dreadnaught Pauldrons
						},
					},
					{
						["questID"] = 9034,	-- Dreadnaught Breastplate
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
						["groups"] = {
							i(22416),	-- Dreadnaught Breastplate
						},
					},
					{
						["questID"] = 9042,	-- Dreadnaught Bracers
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
						["groups"] = {
							i(22423),	-- Dreadnaught Bracers
						},
					},
					{
						["questID"] = 9040,	-- Dreadnaught Gauntlets
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
						["groups"] = {
							i(22421),	-- Dreadnaught Gauntlets
						},
					},
					{
						["questID"] = 9041,	-- Dreadnaught Waistguard
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
						["groups"] = {
							i(22422),	-- Dreadnaught Waistguard
						},
					},
					{
						["questID"] = 9036,	-- Dreadnaught Legplates
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
						["groups"] = {
							i(22417),	-- Dreadnaught Legplates
						},
					},
					{
						["questID"] = 9039,	-- Dreadnaught Sabatons
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
						["groups"] = {
							i(22420),	-- Dreadnaught Sabatons
						},
					},
				}),
				cl(2, {	-- Paladin
					{
						["questID"] = 9045,	-- Redemption Headpiece
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
						["groups"] = {
							i(22428),	-- Redemption Headpiece
						},
					},
					{
						["questID"] = 9046,	-- Redemption Spaulders
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
						["groups"] = {
							i(22429),	-- Redemption Spaulders
						},
					},
					{
						["questID"] = 9050,	-- Redemption Wristguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
						["groups"] = {
							i(22424),	-- Redemption Wristguards
						},
					},
					{
						["questID"] = 9048,	-- Redemption Handguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
						["groups"] = {
							i(22426),	-- Redemption Handguards
						},
					},
					{
						["questID"] = 9043,	-- Redemption Tunic
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
						["groups"] = {
							i(22425),	-- Redemption Tunic
						},
					},
					{
						["questID"] = 9049,	-- Redemption Girdle
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
						["groups"] = {
							i(22431),	-- Redemption Girdle
						},
					},
					{
						["questID"] = 9044,	-- Redemption Legguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
						["groups"] = {
							i(22427),	-- Redemption Legguards
						},
					},
					{
						["questID"] = 9047,	-- Redemption Boots
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
						["groups"] = {
							i(22430),	-- Redemption Boots
						},
					},
				}),
				cl(3, {	-- Hunter
					{
						["questID"] = 9056,	-- Cryptstalker Headpiece
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
						["groups"] = {
							i(22438),	-- Cryptstalker Headpiece
						},
					},
					{
						["questID"] = 9057,	-- Cryptstalker Spaulders
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
						["groups"] = {
							i(22439),	-- Cryptstalker Spaulders
						},
					},
					{
						["questID"] = 9054,	-- Cryptstalker Tunic
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
						["groups"] = {
							i(22436),	-- Cryptstalker Tunic
						},
					},
					{
						["questID"] = 9061,	-- Cryptstalker Wristguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
						["groups"] = {
							i(22443),	-- Cryptstalker Wristguards
						},
					},
					{
						["questID"] = 9059,	-- Cryptstalker Handguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
						["groups"] = {
							i(22441),	-- Cryptstalker Handguards
						},
					},
					{
						["questID"] = 9060,	-- Cryptstalker Girdle
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
						["groups"] = {
							i(22442),	-- Cryptstalker Girdle
						},
					},
					{
						["questID"] = 9055,	-- Cryptstalker Legguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
						["groups"] = {
							i(22437),	-- Cryptstalker Legguards
						},
					},
					{
						["questID"] = 9058,	-- Cryptstalker Boots
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
						["groups"] = {
							i(22440),	-- Cryptstalker Boots
						},
					},
				}),
				cl(4, {	-- Rogue
					{
						["questID"] = 9079,	-- Bonescythe Helmet
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
						["groups"] = {
							i(22478),	-- Bonescythe Helmet
						},
					},
					{
						["questID"] = 9080,	-- Bonescythe Pauldrons
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
						["groups"] = {
							i(22479),	-- Bonescythe Pauldrons
						},
					},
					{
						["questID"] = 9077,	-- Bonescythe Breastplate
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
						["groups"] = {
							i(22476),	-- Bonescythe Breastplate
						},
					},
					{
						["questID"] = 9084,	-- Bonescythe Bracers
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
						["groups"] = {
							i(22483),	-- Bonescythe Bracers
						},
					},
					{
						["questID"] = 9082,	-- Bonescythe Gauntlets
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
						["groups"] = {
							i(22481),	-- Bonescythe Gauntlets
						},
					},
					{
						["questID"] = 9083,	-- Bonescythe Waistguard
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
						["groups"] = {
							i(22482),	-- Bonescythe Waistguard
						},
					},
					{
						["questID"] = 9078,	-- Bonescythe Legplates
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
						["groups"] = {
							i(22477),	-- Bonescythe Legplates
						},
					},
					{
						["questID"] = 9081,	-- Bonescythe Sabatons
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
						["groups"] = {
							i(22480),	-- Bonescythe Sabatons
						},
					},
				}),
				cl(5, {	-- Priest
					{
						["questID"] = 9113,	-- Circlet of Faith
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
						["groups"] = {
							i(22514),	-- Circlet of Faith
						},
					},
					{
						["questID"] = 9114,	-- Shoulderpads of Faith
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
						["groups"] = {
							i(22515),	-- Shoulderpads of Faith
						},
					},
					{
						["questID"] = 9111,	-- Robe of Faith
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
						["groups"] = {
							i(22512),	-- Robe of Faith
						},
					},
					{
						["questID"] = 9118,	-- Bindings of Faith
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
						["groups"] = {
							i(22519),	-- Bindings of Faith
						},
					},
					{
						["questID"] = 9116,	-- Gloves of Faith
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
						["groups"] = {
							i(22517),	-- Gloves of Faith
						},
					},
					{
						["questID"] = 9117,	-- Belt of Faith
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
						["groups"] = {
							i(22518),	-- Belt of Faith
						},
					},
					{
						["questID"] = 9112,	-- Leggings of Faith
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
						["groups"] = {
							i(22513),	-- Leggings of Faith
						},
					},
					{
						["questID"] = 9115,	-- Sandals of Faith
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
						["groups"] = {
							i(22516),	-- Sandals of Faith
						},
					},
				}),
				cl(7, {	-- Shaman
					{
						["questID"] = 9070,	-- Earthshatter Headpiece
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
						["groups"] = {
							i(22466),	-- Earthshatter Headpiece
						},
					},
					{
						["questID"] = 9071,	-- Earthshatter Spaulders
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
						["groups"] = {
							i(22467),	-- Earthshatter Spaulders
						},
					},
					{
						["questID"] = 9068,	-- Earthshatter Tunic
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
						["groups"] = {
							i(22464),	-- Earthshatter Tunic
						},
					},
					{
						["questID"] = 9075,	-- Earthshatter Wristguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
						["groups"] = {
							i(22471),	-- Earthshatter Wristguards
						},
					},
					{
						["questID"] = 9073,	-- Earthshatter Handguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
						["groups"] = {
							i(22469),	-- Earthshatter Handguards
						},
					},
					{
						["questID"] = 9074,	-- Earthshatter Girdle
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
						["groups"] = {
							i(22470),	-- Earthshatter Girdle
						},
					},
					{
						["questID"] = 9069,	-- Earthshatter Legguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
						["groups"] = {
							i(22465),	-- Earthshatter Legguards
						},
					},
					{
						["questID"] = 9072,	-- Earthshatter Boots
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
						["groups"] = {
							i(22468),	-- Earthshatter Boots
						},
					},
				}),
				cl(8, {	-- Mage
					{
						["questID"] = 9097,	-- Frostfire Circlet
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
						["groups"] = {
							i(22498),	-- Frostfire Circlet
						},
					},
					{
						["questID"] = 9098,	-- Frostfire Shoulderpads
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
						["groups"] = {
							i(22499),	-- Frostfire Shoulderpads
						},
					},
					{
						["questID"] = 9095,	-- Frostfire Robe
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
						["groups"] = {
							i(22496),	-- Frostfire Robe
						},
					},
					{
						["questID"] = 9102,	-- Frostfire Bindings
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
						["groups"] = {
							i(22503),	-- Frostfire Bindings
						},
					},
					{
						["questID"] = 9100,	-- Frostfire Gloves
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
						["groups"] = {
							i(22501),	-- Frostfire Gloves
						},
					},
					{
						["questID"] = 9101,	-- Frostfire Belt
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
						["groups"] = {
							i(22502),	-- Frostfire Belt
						},
					},
					{
						["questID"] = 9096,	-- Frostfire Leggings
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
						["groups"] = {
							i(22497),	-- Frostfire Leggings
						},
					},
					{
						["questID"] = 9099,	-- Frostfire Sandals
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
						["groups"] = {
							i(22500),	-- Frostfire Sandals
						},
					},
				}),
				cl(9, {	-- Warlock
					{
						["questID"] = 9105,	-- Plagueheart Circlet
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
						["groups"] = {
							i(22506),	-- Plagueheart Circlet
						},
					},
					{
						["questID"] = 9106,	-- Plagueheart Shoulderpads
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
						["groups"] = {
							i(22507),	-- Plagueheart Shoulderpads
						},
					},
					{
						["questID"] = 9103,	-- Plagueheart Robe
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
						["groups"] = {
							i(22504),	-- Plagueheart Robe
						},
					},
					{
						["questID"] = 9110,	-- Plagueheart Bindings
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
						["groups"] = {
							i(22511),	-- Plagueheart Bindings
						},
					},
					{
						["questID"] = 9108,	-- Plagueheart Gloves
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
						["groups"] = {
							i(22509),	-- Plagueheart Gloves
						},
					},
					{
						["questID"] = 9109,	-- Plagueheart Belt
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
						["groups"] = {
							i(22510),	-- Plagueheart Belt
						},
					},
					{
						["questID"] = 9104,	-- Plagueheart Leggings
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
						["groups"] = {
							i(22505),	-- Plagueheart Leggings
						},
					},
					{
						["questID"] = 9107,	-- Plagueheart Sandals
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
						["groups"] = {
							i(22508),	-- Plagueheart Sandals
						},
					},
				}),
				cl(11, {	-- Druid
					{
						["questID"] = 9088,	-- Dreamwalker Headpiece
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16135,	-- Rayne <Cenarion Circle>
						["groups"] = {
							i(22490),	-- Dreamwalker Headpiece
						},
					},
					{
						["questID"] = 9089,	-- Dreamwalker Spaulders
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16135,	-- Rayne <Cenarion Circle>
						["groups"] = {
							i(22491),	-- Dreamwalker Spaulders
						},
					},
					{
						["questID"] = 9086,	-- Dreamwalker Tunic
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16135,	-- Rayne <Cenarion Circle>
						["groups"] = {
							i(22488),	-- Dreamwalker Tunic
						},
					},
					{
						["questID"] = 9093,	-- Dreamwalker Wristguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16135,	-- Rayne <Cenarion Circle>
						["groups"] = {
							i(22495),	-- Dreamwalker Wristguards
						},
					},
					{
						["questID"] = 9091,	-- Dreamwalker Handguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16135,	-- Rayne <Cenarion Circle>
						["groups"] = {
							i(22493),	-- Dreamwalker Handguards
						},
					},
					{
						["questID"] = 9092,	-- Dreamwalker Girdle
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16135,	-- Rayne <Cenarion Circle>
						["groups"] = {
							i(22494),	-- Dreamwalker Girdle
						},
					},
					{
						["questID"] = 9087,	-- Dreamwalker Legguards
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16135,	-- Rayne <Cenarion Circle>
						["groups"] = {
							i(22489),	-- Dreamwalker Legguards
						},
					},
					{
						["questID"] = 9090,	-- Dreamwalker Boots
						["sourceQuest"] = 9033,	-- Echoes of War
						["repeatable"] = true,
						["qg"] = 16135,	-- Rayne <Cenarion Circle>
						["groups"] = {
							i(22492),	-- Dreamwalker Boots
						},
					},
				}),
			}),
			n(ZONEDROPS, {
				i(23221),	-- Misplaced Servo Arm
				i(23044),	-- Harbinger of Doom
				i(23238),	-- Stygian Buckler
				i(23664),	-- Pauldrons of Elemental Fury
				i(23667),	-- Spaulders of the Grand Crusader
				i(23226),	-- Ghoul Skin Tunic
				i(23069),	-- Necro-Knight's Garb
				i(23666),	-- Belt of the Grand Crusader
				i(23663),	-- Girdle of Elemental Fury
				i(23665),	-- Leggings of Elemental Fury
				i(23668),	-- Leggings of the Grand Crusader
				i(23237),	-- Ring of the Eternal Flame
			}),
			n(-368, { 	-- The Arachnid Quarter
				["icon"] = "Interface\\Icons\\inv_trinket_naxxramas04",
				["groups"] = {
					n(15956, {	-- Anub'Rekhan
						i(22937),	-- Gem of Nerubis
						i(22935),	-- Touch of Frost
						i(22938),	-- Cryptfiend Silk Cloak
						i(22936),	-- Wristguards of Vengeance
						i(22939),	-- Band of Unanswered Prayers
					}),
					n(15953, {	-- Grand Widow Faerlina
						i(22942),	-- The Widow's Embrace
						i(22806),	-- Widow's Remorse
						i(22943),	-- Malice Stone Pendant
						i(22940),	-- Icebane Pauldrons
						i(22941),	-- Polar Shoulder Pads
					}),
					n(15952, {	-- Maexxna
						i(22804),	-- Maexxna's Fang
						i(22807),	-- Wraith Blade
						i(22947),	-- Pendant of Forgotten Names
						i(23220),	-- Crystal Webbed Robe
						i(22954),	-- Kiss of the Spider
					}),
				},
			}),
			n(-370, { 	-- The Plague Quarter
				["icon"] = "Interface\\Icons\\Spell_Shadow_PlagueCloud",
				["groups"] = {
					n(15954, {	-- Noth the Plaguebringer
						i(22816),	-- Hatchet of Sundered Bone
						i(23029),	-- Noth's Frigid Heart
						i(23030),	-- Cloak of the Scourge
						i(23028),	-- Hailstone Band
						i(23031),	-- Band of the Inevitable
					}),
					n(15936, {	-- Heigan the Unclean
						i(23019),	-- Icebane Helmet
						i(23033),	-- Icy Scale Coif
						i(23035),	-- Preceptor's Hat
						i(23036),	-- Necklace of Necropsy
						i(23068),	-- Legplates of Carnage
					}),
					n(16011, {	-- Loatheb
						i(22800),	-- Brimstone Staff
						i(23039),	-- The Eye of Nerub
						i(23038),	-- Band of Unnatural Forces
						i(23037),	-- Ring of Spiritual Fervor
						i(23042),	-- Loatheb's Reflection
					}),
				},
			}),
			n(-369, { 	-- The Military Quarter
				["icon"] = "Interface\\Icons\\Spell_Shadow_UnholyStrength",
				["groups"] = {
					n(16365, {	-- Master Craftsman Omarion <Brotherhood of the Light>
						["description"] = "Omarion is an artisan blacksmithing, leatherworking, and tailoring craftsman. Unfortunately he was gravely injured inside Naxxramas and doesn't have much time left. He is willing to teach other master crafters his knowledge so it doesn't die with him.\n\nOmarion can teach the following plans and patterns to master craftsmen who have the required reputation with the Argent Dawn.",
						["groups"] = {
							i(22685),	-- Pattern: Glacial Cloak
							i(22684),	-- Pattern: Glacial Gloves
							i(22686),	-- Pattern: Glacial Vest
							i(22687), 	-- Pattern: Glacial Wrists
							i(22705),	-- Pattern: Icebane Bracers
							i(22703),	-- Pattern: Icebane Breastplate
							i(22704),	-- Pattern: Icebane Gauntlets
							i(22698),	-- Pattern: Icy Scale Bracers
							i(22696),	-- Pattern: Icy Scale Breastplate
							i(22697),	-- Pattern: Icy Scale Gauntlets
							i(22695),	-- Pattern: Polar Bracers
							i(22694),	-- Pattern: Polar Gloves
							i(22692),	-- Pattern: Polar Tunic
							i(22719, {	-- Omarion's Handbook
								["description"] = "Non-crafters can take his handbook to Craftsman Wilhelm at Light's Hope Chapel who can make all the items as well, as long as the players provide the materials and pay a hefty fee.",
								["questID"] = 9233,	-- Omarion's Handbook [Quest]
							}),
						},
					}),
					n(16061, {	-- Instructor Razuvious
						i(23014),	-- Iblis, Blade of the Fallen Seraph
						i(23009),	-- Wand of the Whispering Dead
						i(23017),	-- Veil of Eclipse
						i(23219),	-- Girdle of the Mentor
						i(23018),	-- Signet of the Fallen Defender
					}),
					n(16060, {	-- Gothik the Harvester
						i(23032),	-- Glacial Headdress
						i(23020),	-- Polar Helmet
						i(23023),	-- Sadist's Collar
						i(23021),	-- The Soul Harvester's Bindings
						i(23073),	-- Boots of Displacement
					}),
					n(16062, {	-- Highlord Mograine <The Ashbringer>
						{
							["itemID"] = 13262,	-- Ashbringer
							["u"] = 1,	-- Never Implemented
							["description"] = "This is here so that you can quickly compare the Corrupted Ashbringer with the original Ashbringer model. It was never available to players.\n\nThis weapon was eventually turned into an Artifact weapon with an updated model for the Legion expansion for Retribution Paladins.",
							["collectible"] = false,
						},
						i(22691),	-- Corrupted Ashbringer
						i(22809),	-- Maul of the Redeemed Crusader
						i(22811),	-- Soulstring
						i(23071),	-- Leggings of Apocalypse
						i(23025),	-- Seal of the Damned
						i(23027),	-- Warmth of Forgiveness
					}),
				},
			}),
			n(-367, { 	-- The Construct Quarter
				["icon"] = "Interface\\Icons\\Spell_Shadow_AbominationExplosion",
				["groups"] = {
					n(16028, {	-- Patchwerk
						i(22815),	-- Severance
						i(22818),	-- The Plague Bearer
						i(22820),	-- Wand of Fates
						i(22960),	-- Cloak of Suturing
						i(22961),	-- Band of Reanimation
					}),
					n(15931, {	-- Grobbulus
						i(22803),	-- Midnight Haze
						i(22988),	-- The End of Dreams
						i(22810),	-- Toxin Injector
						i(22968),	-- Glacial Mantle
						i(22967),	-- Icy Scale Spaulders
					}),
					n(15932, {	-- Gluth
						i(22813),	-- Claymore of Unholy Might
						i(23075),	-- Death's Bargain
						i(22994),	-- Digested Hand of Power
						i(22981),	-- Gluth's Missing Collar
						i(22983),	-- Rime Covered Mantle
					}),
					n(15928, {	-- Thaddius
						i(22801),	-- Spire of Twilight
						i(22808),	-- The Castigator
						i(23000),	-- Plated Abomination Ribcage
						i(23070),	-- Leggings of Polarity
						i(23001),	-- Eye of Diminution
					}),
				},
			}),
			n(-371, { 	-- The Upper Necropolis
				["icon"] = "Interface\\Icons\\inv_misc_head_dragon_blue",
				["groups"] = {
					n(15989, {	-- Sapphiron
						i(23242),	-- Claw of the Frost Wyrm
						i(23043),	-- The Face of Death
						i(23049),	-- Sapphiron's Left Eye
						i(23048),	-- Sapphiron's Right Eye
						i(23050),	-- Cloak of the Necropolis
						i(23045),	-- Shroud of Dominion
						i(23072),	-- Fists of the Unrelenting
						i(23047),	-- Eye of the Dead
						i(23040),	-- Glyph of Deflection
						i(23041),	-- Slayer's Crest
						i(23046),	-- The Restrained Essence of Sapphiron
						i(23549),	-- Fortitude of the Scourge
						i(23548),	-- Might of the Scourge
						i(23545),	-- Power of the Scourge
						i(23547),	-- Resilience of the Scourge
					}),
					n(15990, {	-- Kel'Thuzad
						{
							["itemID"] = 22520,	-- The Phylactery of Kel'Thuzad
							["questID"] = 9120,	-- The Fall of Kel'Thuzad
							["groups"] = {
								i(23206),	-- Mark of the Champion
								i(23207),	-- Mark of the Champion
							},
						},
						i(22821),	-- Doomfinger
						i(23057),	-- Gem of Trapped Innocents
						i(23054),	-- Gressil, Dawn of Ruin
						i(23056),	-- Hammer of the Twisting Nether
						i(22802),	-- Kingsfall
						i(22798),	-- Might of Menethil
						i(22812),	-- Nerubian Slavemaker
						i(22799),	-- Soulseeker
						i(23577),	-- The Hungering Cold
						i(22819),	-- Shield of Condemnation
						i(23053),	-- Stormrage's Talisman of Seething
						i(23060),	-- Bonescythe Ring
						i(23062),	-- Frostfire Ring
						i(23063),	-- Plagueheart Ring
						i(23061),	-- Ring of Faith
						i(23066),	-- Ring of Redemption
						i(23067),	-- Ring of the Cryptstalker
						i(23059),	-- Ring of the Dreadnaught
						i(23064),	-- Ring of the Dreamwalker
						i(23065),	-- Ring of the Earthshatterer
					}),
				},
			}),
		},
	}),
};