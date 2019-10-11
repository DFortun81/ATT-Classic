profession(164, {	-- Blacksmithing
	n(-17, {	-- Quests
		q(7652, {	-- A Blue Light Bargain
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 14567,	-- Derotain Mudsipper
		}),
		q(2771, {	-- A Good Head On Your Shoulders
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuest"] = 2760,	-- The Mithril Order
			["g"] = {
				recipe(9980),	-- Ornate Mithril Helm
			},
		}),
		q(2751, {	-- Barbaric Battlements
			["lvl"] = 32,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["qg"] = 7790,	-- Orokk Omosh
			["g"] = {
				i(7979),	-- Plans: Barbaric Iron Breastplate
			},
		}),
		q(2757, {	-- Booty Bay or Bust!
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["qg"] = 7793,	-- Ox
			["sourceQuest"] = 2756,	-- The Old Ways
		}),
		q(5307, {	-- Corruption
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { WINTERSPRING, STRATHOLME },
			["qg"] = 11193,	-- Seril Scourgebane
			["g"] = {
				i(12825),	-- Plans: Blazing Rapier
			},
		}),
		q(3321, {	-- Did You Lose This?
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuests"] = {
				2771,	-- A Good Head On Your Shoulders
				2773,	-- The Mithril Kid
				2772,	-- The World At Your Feet
			},
			["g"] = {
				i(10418),	-- Glimmering Mithril Insignia
			},
		}),
		q(7649, {	-- Enchanted Thorium Platemail: Volume I
			["u"] = 3,	-- Added in later phase (Dire Maul)
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { DIRE_MAUL },
			["provider"] = { "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
			["g"] = {
				i(12727),	-- Plans: Enchanted Thorium Breastplate
			},
		}),
		q(7650, {	-- Enchanted Thorium Platemail: Volume II
			["u"] = 3,	-- Added in later phase (Dire Maul)
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { DIRE_MAUL },
			["provider"] = { "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
			["g"] = {
				i(12726),	-- Plans: Enchanted Thorium Leggings
			},
		}),
		q(7651, {	-- Enchanted Thorium Platemail: Volume III
			["u"] = 3,	-- Added in later phase (Dire Maul)
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { DIRE_MAUL },
			["provider"] = { "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
			["g"] = {
				i(12725),	-- Plans: Enchanted Thorium Helm
			},
		}),
		q(2765, {	-- Expert Blacksmith!
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { STRANGLETHORN_VALE },
			["qg"] = 7802,	-- Galvan the Ancient
			["sourceQuests"] = {
				2761,	-- Smelt On, Smelt Off
				2763,	-- The Art of the Imbue
				2762,	-- The Great Silver Deceiver
			},
			["g"] = {
				i(8703),	-- Signet of Expertise
			},
		}),
		q(2764, {	-- Galvan's Finest Pupil
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { STRANGLETHORN_VALE },
			["qg"] = 7802,	-- Galvan the Ancient
			["sourceQuests"] = {
				2761,	-- Smelt On, Smelt Off
				2763,	-- The Art of the Imbue
				2762,	-- The Great Silver Deceiver
			},
		}),
		q(1618, {	-- Gearing Redridge
			["lvl"] = 1,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["qg"] = 6031,	-- Tormus Deepforge
			["g"] = {
				i(6735),	-- Plans: Ironforge Breastplate
			},
		}),
		q(2754, {	-- Horns of Frenzy
			["lvl"] = 32,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2753,	-- Trampled Under Foot
			["g"] = {
				i(7980),	-- Plans: Barbaric Iron Helm
			},
		}),
		q(7653, {	-- Imperial Plate Belt
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["g"] = {
				i(12688),	-- Plans: Imperial Plate Belt
			},
		}),
		q(7654, {	-- Imperial Plate Boots
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["g"] = {
				i(12700),	-- Plans: Imperial Plate Boots
			},
		}),
		q(7655, {	-- Imperial Plate Bracer
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["g"] = {
				i(12690),	-- Plans: Imperial Plate Bracer
			},
		}),
		q(7656, {	-- Imperial Plate Chest
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["g"] = {
				i(12705),	-- Plans: Imperial Plate Chest
			},
		}),
		q(7657, {	-- Imperial Plate Helm
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["g"] = {
				i(12701),	-- Plans: Imperial Plate Helm
			},
		}),
		q(7658, {	-- Imperial Plate Leggings
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["g"] = {
				i(12715),	-- Plans: Imperial Plate Leggings
			},
		}),
		q(7659, {	-- Imperial Plate Shoulders
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["g"] = {
				i(12687),	-- Plans: Imperial Plate Shoulders
			},
		}),
		q(2759, {	-- In Search of Galvan
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["qg"] = 7798,	-- Hank the Hammer
			["sourceQuest"] = 2758,	-- The Origins of Smithing
		}),
		q(2755, {	-- Joys of Omosh
			["lvl"] = 32,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2754,	-- Horns of Frenzy
			["g"] = {
				i(7982),	-- Plans: Barbaric Iron Gloves
			},
		}),
		q(2752, {	-- On Iron Pauldrons
			["lvl"] = 32,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2751,	-- Barbaric Battlements
			["g"] = {
				i(7978),	-- Plans: Barbaric Iron Shoulders
			},
		}),
		q(2761, {	-- Smelt On, Smelt Off
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { STRANGLETHORN_VALE },
			["qg"] = 7802,	-- Galvan the Ancient
			["sourceQuest"] = 2760,	-- The Mithril Order
			["g"] = {
				i(7983),	-- Plans: Ornate Mithril Pants
			},
		}),
		q(5306, {	-- Snakestone of the Shadow Huntress
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { WINTERSPRING, BLACKROCK_SPIRE },
			["qg"] = 11192,	-- Kilram
			["g"] = {
				i(12821),	-- Plans: Dawn's Edge
			},
		}),
		q(1578, {	-- Supplying the Front
			["lvl"] = 1,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { IRONFORGE },
			["qg"] = 6031,	-- Tormus Deepforge
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(3609),	-- Plans: Copper Chain Vest
			},
		}),
		q(5305, {	-- Sweet Serenity
			["lvl"] = 50,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { WINTERSPRING, STRATHOLME },
			["qg"] = 11191,	-- Lilith the Lithe
			["g"] = {
				i(12824),	-- Plans: Enchanted Battlehammer
			},
		}),
		q(5283, {	-- The Art of the Armorsmith (A)
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["qg"] = 5164,	-- Grumnus Steelshaper
			["altQuests"] = { 5284 },	-- The Way of the Weaponsmith (A)
		}),
		q(5301, {	-- The Art of the Armorsmith (H)
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["qg"] = 11177,	-- Okothos Ironrager
			["altQuests"] = { 5302 },	-- The Way of the Weaponsmith (H)
		}),
		q(2763, {	-- The Art of the Imbue
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { STRANGLETHORN_VALE },
			["qg"] = 7802,	-- Galvan the Ancient
			["sourceQuest"] = 2760,	-- The Mithril Order
			["g"] = {
				i(7985),	-- Plans: Ornate Mithril Shoulder
			},
		}),
		q(2762, {	-- The Great Silver Deceiver
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { STRANGLETHORN_VALE },
			["qg"] = 7802,	-- Galvan the Ancient
			["sourceQuest"] = 2760,	-- The Mithril Order
			["g"] = {
				i(7984),	-- Plans: Ornate Mithril Gloves
			},
		}),
		q(2773, {	-- The Mithril Kid
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuest"] = 2760,	-- The Mithril Order
			["g"] = {
				recipe(9972),	-- Ornate Mithril Breastplate
			},
		}),
		q(2760, {	-- The Mithril Order
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { STRANGLETHORN_VALE },
			["qg"] = 7794,	-- McGavan
			["sourceQuests"] = {
				2757,	-- Booty Bay or Bust!
				2759,	-- In Search of Galvan
			},
		}),
		q(2756, {	-- The Old Ways
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["qg"] = 7792,	-- Aturk the Anvil
			["g"] = {
				recipe(9957),	-- Orcish War Leggings
			},
		}),
		q(2758, {	-- The Origins of Smithing
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["qg"] = 7798,	-- Hank the Hammer
			["g"] = {
				i(9367),	-- Plans: Golden Scale Gauntlets
			},
		}),
		q(5284, {	-- The Way of the Weaponsmith (A)
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { IRONFORGE },
			["qg"] = 11146,	-- Ironus Coldsteel
			["altQuests"] = { 5283 },	-- The Art of the Armorsmith (A)
		}),
		q(5302, {	-- The Way of the Weaponsmith (H)
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["qg"] = 11178,	-- Borgosh Corebender
			["altQuests"] = { 5301 },	-- The Art of the Armorsmith (H)
		}),
		q(2772, {	-- The World At Your Feet
			["lvl"] = 40,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { TANARIS },
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuest"] = 2760,	-- The Mithril Order
			["g"] = {
				recipe(9979),	-- Ornate Mithril Boots
			},
		}),
		q(2753, {	-- Trampled Under Foot
			["lvl"] = 32,
			["requireSkill"] = 164,	-- Blacksmithing
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2752,	-- On Iron Pauldrons
			["g"] = {
				i(7981),	-- Plans: Barbaric Iron Boots
			},
		}),
	}),
});