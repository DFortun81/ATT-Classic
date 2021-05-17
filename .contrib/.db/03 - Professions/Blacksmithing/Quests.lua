profession(BLACKSMITHING, {
	n(QUESTS, {
		q(7652, {	-- A Blue Light Bargain
			["qg"] = 14567,	-- Derotain Mudsipper
			-- #if AFTER TBC
			["sourceQuests"] = {
				10891,	-- Imperial Plate Armor [A]
				10892,	-- Imperial Plate Armor [H]
			},
			-- #endif
			["description"] = "You need 265 Blacksmithing. Does not require a specialization.",
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["lvl"] = 50,
		}),
		q(2771, {	-- A Good Head On Your Shoulders
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuest"] = 2760,	-- The Mithril Order
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 7931, 2 },	-- Mithril Coif
				{ "i", 7928, 1 },	-- Ornate Mithril Shoulder
			},
			["lvl"] = 40,
			["g"] = {
				recipe(9980),	-- Ornate Mithril Helm
			},
		}),
		q(2751, {	-- Barbaric Battlements
			["qg"] = 7790,	-- Orokk Omosh
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 79.4, 22.4, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 2868, 2 },	-- Patterned Bronze Bracers
				{ "i", 7957, 2 },	-- Bronze Greatsword
				{ "i", 5635, 2 },	-- Sharp Claw
			},
			["lvl"] = 32,
			["g"] = {
				i(7979, {	-- Plans: Barbaric Iron Breastplate
					["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
				}),
			},
		}),
		q(2757, {	-- Booty Bay or Bust!
			["qg"] = 7793,	-- Ox
			["sourceQuest"] = 2756,	-- The Old Ways
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 80.4, 23.2, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 8663, 1 },	-- Mithril Insignia
			},
			["lvl"] = 40,
		}),
		{
			["itemID"] = 9719,	-- Broken Blade of Heroes
			["cost"] = {
				{ "i", 7068, 2 },	-- Elemental Fire
				{ "i", 3486, 2 },	-- Heavy Grinding Stone
				{ "i", 3859, 4 },	-- Steel Bar
				{ "i", 3466, 4 },	-- Strong Flux
			},
			["groups"] = {
				i(9718),	-- Reforged Blade of Heroes
			},
		},
		q(5307, {	-- Corruption
			["qg"] = 11193,	-- Seril Scourgebane
			["coord"] = { 61.2, 37.2, WINTERSPRING },
			["maps"] = { WINTERSPRING, STRATHOLME },
			["requireSkill"] = 9787,	-- Weaponsmith
			["cost"] = {
				{ "i", 13350, 1 },	-- Insignia of the Black Guard
			},
			["altQuests"] = {
				5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
				5305,	-- Sweet Serenity [Master Hammersmith]
			},
			["lvl"] = 50,
			["g"] = {
				i(12825),	-- Plans: Blazing Rapier
			},
		}),
		q(3321, {	-- Did You Lose This?
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuests"] = {
				2771,	-- A Good Head On Your Shoulders
				2773,	-- The Mithril Kid
				2772,	-- The World At Your Feet
			},
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["lvl"] = 40,
			["g"] = {
				i(10418),	-- Glimmering Mithril Insignia
			},
		}),
		un(PHASE_THREE, q(7649, {	-- Enchanted Thorium Platemail: Volume I
			["provider"] = { "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
			["requireSkill"] = 9788,	-- Armorsmith
			["maps"] = { DIRE_MAUL, BLACKROCK_SPIRE },
			["cost"] = {
				{ "i", 18779, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume I
				{ "i", 18780, 1 },	-- Top Half of Advanced Armorsmithing: Volume I
			},
			["g"] = {
				un(PHASE_THREE, i(12727)),	-- Plans: Enchanted Thorium Breastplate
			},
		})),
		un(PHASE_THREE, q(7650, {	-- Enchanted Thorium Platemail: Volume II
			["provider"] = { "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
			["requireSkill"] = 9788,	-- Armorsmith
			["maps"] = { DIRE_MAUL, STRATHOLME, SCHOLOMANCE },
			["cost"] = {
				{ "i", 18781, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume II
				{ "i", 18782, 1 },	-- Top Half of Advanced Armorsmithing: Volume II
			},
			["lvl"] = 50,
			["g"] = {
				un(PHASE_THREE, i(12726)),	-- Plans: Enchanted Thorium Leggings
			},
		})),
		un(PHASE_THREE, q(7651, {	-- Enchanted Thorium Platemail: Volume III
			["provider"] = { "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
			["requireSkill"] = 9788,	-- Armorsmith
			["maps"] = { DIRE_MAUL, BLACKROCK_SPIRE, STRATHOLME },
			["cost"] = {
				{ "i", 18783, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume III
				{ "i", 18784, 1 },	-- Top Half of Advanced Armorsmithing: Volume III
			},
			["lvl"] = 50,
			["g"] = {
				un(PHASE_THREE, i(12725)),	-- Plans: Enchanted Thorium Helm
			},
		})),
		q(2765, {	-- Expert Blacksmith!
			["qg"] = 7802,	-- Galvan the Ancient
			["sourceQuests"] = {
				2761,	-- Smelt On, Smelt Off
				2763,	-- The Art of the Imbue
				2762,	-- The Great Silver Deceiver
			},
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["lvl"] = 40,
			["g"] = {
				i(8703,	{	-- Signet of Expertise
					i(8708),	-- Hammer of Expertise
				}),
			},
		}),
		q(5124, {	-- Fiery Plate Gauntlets
			["qg"] = 10637,	-- Malyfous Darkhammer <The Thorium Brotherhood>
			["sourceQuest"] = 5103,	-- Hot Fiery Death
			["requireSkill"] = 9788,	-- Armorsmith
			["coord"] = { 61.0, 38.8, WINTERSPRING },
			["maps"] = { WINTERSPRING, BLACKROCK_SPIRE },
			["cost"] = {
				{ "i", 12812, 1 },	-- Unfired Plate Gauntlets
				{ "i", 12655, 6 },	-- Enchanted Thorium Bar
				{ "i", 7078, 2 },	-- Essence of Fire
				{ "i", 7910, 4 },	-- Star Ruby
			},
			["lvl"] = 55,
			["groups"] = {
				i(12699),	-- Plans: Fiery Plate Gauntlets
				i(12631),	-- Fiery Plate Gauntlets
			},
		}),
		q(2764, {	-- Galvan's Finest Pupil
			["qg"] = 7802,	-- Galvan the Ancient
			["sourceQuests"] = {
				2761,	-- Smelt On, Smelt Off
				2763,	-- The Art of the Imbue
				2762,	-- The Great Silver Deceiver
			},
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["lvl"] = 40,
		}),
		q(1618, {	-- Gearing Redridge
			["qg"] = 6031,	-- Tormus Deepforge
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 48.6, 43, IRONFORGE },
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 2857, 4 },	-- Runed Copper Belt
				{ "i", 6214, 4 },	-- Heavy Copper Maul
			},
			["g"] = {
				i(6735, {	-- Plans: Ironforge Breastplate
					["description"] = "This item can be sold on the Neutral Auction House to Horde Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Alliance Blacksmiths.",
				}),
			},
		}),
		q(2754, {	-- Horns of Frenzy
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2753,	-- Trampled Under Foot
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 79.4, 22.4, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 3851, 2 },	-- Solid Iron Maul
				{ "i", 3482, 2 },	-- Silvered Bronze Boots
				{ "i", 3483, 2 },	-- Silvered Bronze Gauntlets
			},
			["lvl"] = 32,
			["g"] = {
				i(7980, {	-- Plans: Barbaric Iron Helm
					["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
				}),
			},
		}),
		q(5103, {	-- Hot Fiery Death
			["provider"] = { "o", 176090 },	-- Human Remains
			["requireSkill"] = 9788,	-- Armorsmith
			["description"] = "At the bottom floor of Lower Blackrock Spire near the lava.",
			["maps"] = { BLACKROCK_SPIRE },
			["lvl"] = 55,
			["groups"] = {
				i(12812),	-- Unfired Plate Gauntlets
			},
		}),
		q(10891, {	-- Imperial Plate Armor [A]
			["qg"] = 11145,	-- Myolor Sunderfury
			["coord"] = { 52.0, 41.4, IRONFORGE },
			["maps"] = { IRONFORGE },
			["isBreadcrumb"] = true,
			["races"] = ALLIANCE_ONLY,
			["u"] = TBC_PHASE_ONE,
			["lvl"] = 50,
		}),
		q(10892, {	-- Imperial Plate Armor [H]
			["qg"] = 11176,	-- Krathok Moltenfist
			["coord"] = { 80.0, 23.3, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["isBreadcrumb"] = true,
			["races"] = HORDE_ONLY,
			["u"] = TBC_PHASE_ONE,
			["lvl"] = 50,
		}),
		q(7653, {	-- Imperial Plate Belt
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 12359, 20 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["g"] = {
				i(12688),	-- Plans: Imperial Plate Belt
			},
		}),
		q(7654, {	-- Imperial Plate Boots
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 12359, 40 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["g"] = {
				i(12700),	-- Plans: Imperial Plate Boots
			},
		}),
		q(7655, {	-- Imperial Plate Bracer
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 12359, 20 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["g"] = {
				i(12690),	-- Plans: Imperial Plate Bracer
			},
		}),
		q(7656, {	-- Imperial Plate Chest
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 12359, 60 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["g"] = {
				i(12705),	-- Plans: Imperial Plate Chest
			},
		}),
		q(7657, {	-- Imperial Plate Helm
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 12359, 50 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["g"] = {
				i(12701),	-- Plans: Imperial Plate Helm
			},
		}),
		q(7658, {	-- Imperial Plate Leggings
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 12359, 60 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["g"] = {
				i(12715),	-- Plans: Imperial Plate Leggings
			},
		}),
		q(7659, {	-- Imperial Plate Shoulders
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 12359, 20 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["g"] = {
				i(12687),	-- Plans: Imperial Plate Shoulders
			},
		}),
		q(2759, {	-- In Search of Galvan
			["qg"] = 7798,	-- Hank the Hammer
			["sourceQuest"] = 2758,	-- The Origins of Smithing
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 56, 16, STORMWIND_CITY },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 8663, 1 },	-- Mithril Insignia
			},
			["lvl"] = 40,
		}),
		q(2755, {	-- Joys of Omosh
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2754,	-- Horns of Frenzy
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 79.4, 22.4, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["lvl"] = 32,
			["g"] = {
				i(7982, {	-- Plans: Barbaric Iron Gloves
					["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
				}),
			},
		}),
		q(2752, {	-- On Iron Pauldrons
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2751,	-- Barbaric Battlements
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 79.4, 22.4, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 7958, 4 },	-- Bronze Battle Axe
				{ "i", 7956, 4 },	-- Bronze Warhammer
			},
			["lvl"] = 32,
			["g"] = {
				i(7978, {	-- Plans: Barbaric Iron Shoulders
					["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
				}),
			},
		}),
		q(2761, {	-- Smelt On, Smelt Off
			["qg"] = 7802,	-- Galvan the Ancient
			["sourceQuest"] = 2760,	-- The Mithril Order
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["cost"] = {
				{ "i", 3575, 40 },	-- Iron Bar
				{ "i", 3860, 40 },	-- Mithril Bar
			},
			["lvl"] = 40,
			["g"] = {
				i(7983),	-- Plans: Ornate Mithril Pants
			},
		}),
		q(5306, {	-- Snakestone of the Shadow Huntress
			["qg"] = 11192,	-- Kilram
			["requireSkill"] = 9787,	-- Weaponsmith
			["description"] = "Upon finishing this quest, you will become a Master Axesmith and be locked out of becoming a Master Hammersmith and Master Swordsmith.",
			["coord"] = { 61.2, 37, WINTERSPRING },
			["maps"] = { WINTERSPRING, BLACKROCK_SPIRE },
			["cost"] = {
				{ "i", 13352, 1 },	-- Vosh'gajin's Snakestone
			},
			["altQuests"] = {
				5307,	-- Corruption [Master Swordsmith]
				5305,	-- Sweet Serenity [Master Hammersmith]
			},
			["lvl"] = 50,
			["g"] = {
				i(12821),	-- Plans: Dawn's Edge
			},
		}),
		q(1578, {	-- Supplying the Front
			["qg"] = 6031,	-- Tormus Deepforge
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 48.5, 43, IRONFORGE },
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 2845, 6 },	-- Copper Axe
				{ "i", 2851, 6 },	-- Copper Chain Belt
			},
			["g"] = {
				i(3609),	-- Plans: Copper Chain Vest
			},
		}),
		q(5305, {	-- Sweet Serenity
			["qg"] = 11191,	-- Lilith the Lithe
			["requireSkill"] = 9787,	-- Weaponsmith
			["description"] = "Upon finishing this quest, you will become a Master Hammersmith and be locked out of becoming a Master Axesmith and Master Swordsmith.",
			["coord"] = { 61.2, 37.2, WINTERSPRING },
			["maps"] = { WINTERSPRING, STRATHOLME },
			["altQuests"] = {
				5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
				5307,	-- Corruption [Master Swordsmith]
				8869,	-- Sweet Serenity (Deprecated?)
			},
			["cost"] = {
				{ "i", 13351, 1 },	-- Crimson Hammersmith's Apron
			},
			["lvl"] = 50,
			["g"] = {
				i(12824),	-- Plans: Enchanted Battlehammer
			},
		}),
		q(5283, {	-- The Art of the Armorsmith (A)
			["qg"] = 5164,	-- Grumnus Steelshaper
			["requireSkill"] = BLACKSMITHING,
			["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
			["coord"] = { 50.2, 42.6, IRONFORGE },
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["altQuests"] = {
				5301,	-- The Art of the Armorsmith (H)
				5284,	-- The Way of the Weaponsmith (A)
				5302,	-- The Way of the Weaponsmith (H)
			},
			["cost"] = {
				{ "i", 7937, 4 },	-- Ornate Mithril Helm
				{ "i", 7936, 2 },	-- Ornate Mithril Boots
				{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
			},
			["lvl"] = 40,
		}),
		q(5301, {	-- The Art of the Armorsmith (H)
			["qg"] = 11177,	-- Okothos Ironrager
			["requireSkill"] = BLACKSMITHING,
			["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
			["coord"] = { 79.8, 23.8, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["altQuests"] = {
				5283,	-- The Art of the Armorsmith (A)
				5284,	-- The Way of the Weaponsmith (A)
				5302,	-- The Way of the Weaponsmith (H)
			},
			["cost"] = {
				{ "i", 7937, 4 },	-- Ornate Mithril Helm
				{ "i", 7936, 2 },	-- Ornate Mithril Boots
				{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
			},
			["lvl"] = 40,
		}),
		q(2763, {	-- The Art of the Imbue
			["qg"] = 7802,	-- Galvan the Ancient
			["sourceQuest"] = 2760,	-- The Mithril Order
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["cost"] = {
				{ "i", 3860, 40 },	-- Iron Bar
				{ "i", 3864, 4 },	-- Citrine
			},
			["lvl"] = 40,
			["g"] = {
				i(7985),	-- Plans: Ornate Mithril Shoulder
			},
		}),
		q(5127, {	-- The Demon Forge
			["qg"] = 10918,	-- Lorax
			["sourceQuest"] = 5126,	-- Lorax's Tale
			["requireSkill"] = 9788,	-- Armorsmith
			["coord"] = { 63.8, 73.8, WINTERSPRING },
			["maps"] = { WINTERSPRING, BLACKROCK_SPIRE },
			["cost"] = {
				{ "i", 12847, 1 },	-- Soul Stained Pike
				{ "i", 12806, 1 },	-- Unforged Rune Covered Breastplate
			},
			["cr"] = 10899,	-- Goraluk Anvilcrack
			["lvl"] = 55,
			["groups"] = {
				i(12696),	-- Plans: Demon Forged Breastplate
				i(9224),	-- Elixir of Demonslaying
				i(12849),	-- Demon Kissed Sack
			},
		}),
		q(2762, {	-- The Great Silver Deceiver
			["qg"] = 7802,	-- Galvan the Ancient
			["sourceQuest"] = 2760,	-- The Mithril Order
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["cost"] = {
				{ "i", 3860, 40 },	-- Iron Bar
				{ "i", 6037, 5 },	-- Truesilver Bar
			},
			["lvl"] = 40,
			["g"] = {
				i(7984),	-- Plans: Ornate Mithril Gloves
			},
		}),
		q(2773, {	-- The Mithril Kid
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuest"] = 2760,	-- The Mithril Order
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["lvl"] = 40,
			["cost"] = {
				{ "i", 7930, 2 },	-- Heavy Mithril Breastplate
				{ "i", 7927, 1 },	-- Ornate Mithril Gloves
			},
			["g"] = {
				recipe(9972),	-- Ornate Mithril Breastplate
			},
		}),
		q(2760, {	-- The Mithril Order
			["qg"] = 7794,	-- McGavan
			["sourceQuests"] = {
				2757,	-- Booty Bay or Bust!
				2759,	-- In Search of Galvan
			},
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 28.8, 75.4, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["cost"] = {
				{ "i", 8686, 1 },	-- Mithril Pendant
			},
			["lvl"] = 40,
		}),
		q(2756, {	-- The Old Ways
			["qg"] = 7792,	-- Aturk the Anvil
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 80.6, 23.2, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 7963, 4 },	-- Steel Breastplate
				{ "i", 7922, 4 },	-- Steel Plate Helm
			},
			["lvl"] = 40,
			["g"] = {
				recipe(9957),	-- Orcish War Leggings
			},
		}),
		q(2758, {	-- The Origins of Smithing
			["qg"] = 7798,	-- Hank the Hammer
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 56, 16, STORMWIND_CITY },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 6040, 6 },	-- Golden Scale Bracers
			},
			["lvl"] = 40,
			["g"] = {
				i(9367, {	-- Plans: Golden Scale Gauntlets
					["description"] = "This item can be sold on the Neutral Auction House to Horde Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Alliance Blacksmiths.",
				}),
			},
		}),
		q(5284, {	-- The Way of the Weaponsmith (A)
			["qg"] = 11146,	-- Ironus Coldsteel
			["requireSkill"] = BLACKSMITHING,
			["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
			["coord"] = { 49.8, 45, IRONFORGE },
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["altQuests"] = {
				5283,	-- The Art of the Armorsmith (A)
				5301,	-- The Art of the Armorsmith (H)
				5302,	-- The Way of the Weaponsmith (H)
			},
			["cost"] = {
				{ "i", 3853, 4 },	-- Moonsteel Broadsword
				{ "i", 3855, 4 },	-- Massive Iron Axe
				{ "i", 7941, 2 },	-- Heavy Mithril Axe
				{ "i", 7945, 2 },	-- Big Black Mace
			},
			["lvl"] = 40,
		}),
		q(5302, {	-- The Way of the Weaponsmith (H)
			["qg"] = 11178,	-- Borgosh Corebender
			["requireSkill"] = BLACKSMITHING,
			["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
			["coord"] = { 79.6, 23.6, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["altQuests"] = {
				5283,	-- The Art of the Armorsmith (A)
				5301,	-- The Art of the Armorsmith (H)
				5284,	-- The Way of the Weaponsmith (A)
			},
			["cost"] = {
				{ "i", 3853, 4 },	-- Moonsteel Broadsword
				{ "i", 3855, 4 },	-- Massive Iron Axe
				{ "i", 7941, 2 },	-- Heavy Mithril Axe
				{ "i", 7945, 2 },	-- Big Black Mace
			},
			["lvl"] = 40,
		}),
		q(2772, {	-- The World At Your Feet
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuest"] = 2760,	-- The Mithril Order
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["maps"] = { TANARIS },
			["cost"] = {
				{ "i", 7933, 2 },	-- Heavy Mithril Boots
				{ "i", 7926, 1 },	-- Ornate Mithril Pants
			},
			["lvl"] = 40,
			["g"] = {
				recipe(9979),	-- Ornate Mithril Boots
			},
		}),
		q(2753, {	-- Trampled Under Foot
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2752,	-- On Iron Pauldrons
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 79.4, 22.4, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 3836, 4 },	-- Green Iron Helm
				{ "i", 3835, 4 },	-- Green Iron Bracers
				{ "i", 3842, 2 },	-- Green Iron Leggings
			},
			["lvl"] = 32,
			["g"] = {
				i(7981, {	-- Plans: Barbaric Iron Boots
					["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
				}),
			},
		}),
	}),
});