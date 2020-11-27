---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(AZSHARA, {
			n(QUESTS, {
				q(3382, {	-- A Crew Under Fire
					["qg"] = 8380,	-- Captain Vanessa Beltis
					["coord"] = { 53.0, 87.8, AZSHARA },
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(5536, {	-- A Land Filled with Hatred
					["qg"] = 11548,	-- Loth'atu
					["coord"] = { 11.4, 78.2, AZSHARA },
					["lvl"] = 45,
				}),
				un(REMOVED_FROM_GAME, q(3381, {	-- A Meeting with the Master
					["qg"] = 8399,	-- Nyrill <Xylem's Apprentice>
					["coord"] = { 26.4, 46.2, AZSHARA },
					["repeatable"] = true,
					["lvl"] = 45,
				})),
				q(3564, {	-- Andron's Payment to Jediga
					["qg"] = 6522,	-- Andron Gant
					["sourceQuest"] = 3542,	-- Delivery to Andron Gant
					["coord"] = { 54.6, 75.6, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10679, 1 },	-- Andron's Note
					},
					["lvl"] = 45,
				}),
				q(3602, {	-- Azsharite
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3511,	-- The Name of the Beast
					["coord"] = { 60.8, 66.4, AZSHARA },
					["cost"] = {
						{ "i", 10714, 20 },	-- Crystallized Azsharite
					},
					["lvl"] = 45,
					["g"] = {
						{
							["itemID"] = 10834,	-- Felhound Tracker Kit
							["groups"] = {
								{
									["itemID"] = 10831,	-- Fel Orb
									["questID"] = 3602,	-- Azsharite
								},
								{
									["itemID"] = 10832,	-- Fel Tracker Owner's Manual
									["questID"] = 3602,	-- Azsharite
								},
							},
						},
						i(10839),	-- Crystallized Note
						i(10840),	-- Crystallized Note
					},
				}),
				q(3504, {	-- Betrayed (1/4)
					["qg"] = 4485,	-- Belgrom Rockmaul
					["coord"] = { 75, 34.2, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10643, 1 },	-- Sealed Letter to Ag'tor
					},
					["lvl"] = 44,
				}),
				q(3505, {	-- Betrayed (2/4)
					["qg"] = 8576,	-- Ag'tor Bloodfist
					["sourceQuest"] = 3504,	-- Betrayed (1/4)
					["coord"] = { 22.2, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
				}),
				q(3506, {	-- Betrayed (3/4)
					["provider"] = { "o", 151286 },	-- Kaldorei Tome of Summoning
					["sourceQuest"] = 3505,	-- Betrayed (2/4)
					["coord"] = { 59.5, 31.3, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10597, 1 },	-- Head of Magus Rimtori
					},
					["lvl"] = 44,
					["groups"] = {
						{
							["itemID"] = 10597,	-- Head of Magus Rimtori
							["questID"] = 3506,	-- Betrayed (3/4)
							["cr"] = 8578,	-- Magus Rimtori
							["coord"] = { 59.6, 31.4, AZSHARA },
						},
					},
				}),
				q(3507, {	-- Betrayed (4/4)
					["qg"] = 8576,	-- Ag'tor Bloodfist
					["sourceQuest"] = 3506,	-- Betrayed (3/4)
					["coord"] = { 22.2, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10597, 1 },	-- Head of Magus Rimtori
					},
					["lvl"] = 44,
					["g"] = {
						i(10709),	-- Pyrestone Orb
						i(11120),	-- Belgrom's Hammer
					},
				}),
				q(3508, {	-- Breaking the Ward
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3141,	-- Loramus
					["coord"] = { 60.8, 66.4, AZSHARA },
					["lvl"] = 45,
				}),
				q(8153, {	-- Courser Antlers
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8151,	-- The Hunter's Charm
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 20017, 2 },	-- Perfect Courser Antler
					},
					["lvl"] = 50,
				}),
				q(3542, {	-- Delivery to Andron Gant
					["qg"] = 8587,	-- Jediga
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["coord"] = { 22.4, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10540, 1 },	-- Tablet of Markri
					},
					["lvl"] = 45,
				}),
				q(3561, {	-- Delivery to Archmage Xylem
					["qg"] = 8587,	-- Jediga
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["coord"] = { 22.4, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10541, 1 },	-- Tablet of Sael'hai
					},
					["lvl"] = 45,
				}),
				q(3541, {	-- Delivery to Jes'rimon
					["qg"] = 8587,	-- Jediga
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["coord"] = { 22.4, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10539, 1 },	-- Tablet of Jin'yael
					},
					["lvl"] = 45,
				}),
				q(3518, {	-- Delivery to Magatha
					["qg"] = 8587,	-- Jediga
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["coord"] = { 22.4, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10538, 1 },	-- Tablet of Beth'Amara
					},
					["lvl"] = 45,
				}),
				q(9364, {	-- Fragmented Magic
					["qg"] = 8379,		-- Archmage Xylem
					["sourceQuest"] = 9362,	-- Warlord Krellian
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { MAGE },
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 4142,	-- Tome of Polymorph: Pig
							["recipeID"] = 28272,	-- Polymorph (Pig)
							["classes"] = { MAGE },
						},
					},
				}),
				q(3563, {	-- Jes'rimon's Payment to Jediga
					["qg"] = 8659,	-- Jes'rimon
					["sourceQuest"] = 3541,	-- Delivery to Jes'rimon
					["coord"] = { 55.6, 34, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10680, 1 },	-- Jes'rimon's Note
					},
					["lvl"] = 45,
				}),
				q(3601, {	-- Kim'jael Indeed!
					["qg"] = 8420,	-- Kim'jael
					["coord"] = { 53.4, 21.8, AZSHARA },
					["cost"] = {
						{ "i", 10717, 1 },	-- Kim'Jael's Compass
						{ "i", 10715, 1 },	-- Kim'Jael's Scope
						{ "i", 10722, 1 },	-- Kim'Jael's Stuffed Chicken
						{ "i", 10718, 1 },	-- Kim'Jael's Wizzlegoober
					},
					["lvl"] = 47,
					["g"] = {
						i(10830),	-- M73 Frag Grenade
					},
				}),
				q(5534, {	-- Kim'jael's "Missing" Equipment
					["qg"] = 8420,	-- Kim'jael
					["coord"] = { 53.4, 21.8, AZSHARA },
					["cost"] = {
						{ "i", 13815, 1 },	-- Some Rune
					},
					["lvl"] = 47,
				}),
				q(3141, {	-- Loramus
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 2744,	-- The Demon Hunter
					["coord"] = { 60.8, 66.4, AZSHARA },
					["lvl"] = 45,
				}),
				q(3562, {	-- Magatha's Payment to Jediga
					["qg"] = 4046,	-- Magatha Grimtotem
					["sourceQuest"] = 3518,	-- Delivery to Magatha
					["coord"] = { 70.2, 30.8, THUNDER_BLUFF },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10678, 1 },	-- Magatha's Note
					},
					["lvl"] = 45,
				}),
				q(8250, {	-- Magecraft
					["qgs"] = {
						7312,	-- Dink <Mage Trainer> [IRONFORGE]
						7311,	-- Uthel'nay <Mage Trainer> [ORGRIMMAR]
						331,	-- Maginor Dumas <Master Mage> [STORMWIND_CITY]
						3047,	-- Archmage Shymm <Mage Trainer> [THUNDER_BLUFF]
						4567,	-- Pierce Shackleton <Mage Trainer>	[UNDERCITY]
					},
					["coords"] = {
						{ 26.8, 8.6, IRONFORGE },
						{ 39.0, 86.0, ORGRIMMAR },
						{ 38.2, 81.4, STORMWIND_CITY },
						{ 22.6, 14.8, THUNDER_BLUFF },
						{ 85.6, 14.0, UNDERCITY },
					},
					["maps"] = {
						IRONFORGE,
						ORGRIMMAR,
						STORMWIND_CITY,
						THUNDER_BLUFF,
						UNDERCITY
					},
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(8251, {	-- Magic Dust
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8250,	-- Magecraft
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 20028, 10 },	-- Glittering Dust
					},
					["lvl"] = 50,
				}),
				q(3503, {	-- Meeting with the Master
					["qg"] = 8395,	-- Sanath Lim-yo
					["coord"] = { 28.0, 50.0, AZSHARA },
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(8255, {	-- Of Coursers We Know
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8254,	-- Cenarion Aid
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { PRIEST },
					["cost"] = {
						{ "i", 20027, 4 },	-- Healthy Courser Gland
					},
					["lvl"] = 50,
				}),
				q(3421, {	-- Return Trip
					["qg"] = 8399,	-- Nyrill <Xylem's Apprentice>
					["coord"] = { 26.4, 46.2, AZSHARA },
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(5535, {	-- Spiritual Unrest
					["qg"] = 11548,	-- Loth'atu
					["coord"] = { 11.4, 78.2, AZSHARA },
					["lvl"] = 45,
				}),
				q(3517, {	-- Stealing Knowledge
					["qg"] = 8587,	-- Jediga
					["coord"] = { 22.4, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10538, 1 },	-- Tablet of Beth'Amara
						{ "i", 10539, 1 },	-- Tablet of Jin'yael
						{ "i", 10540, 1 },	-- Tablet of Markri
						{ "i", 10541, 1 },	-- Tablet of Sael'hai
					},
					["lvl"] = 45,
				}),
				q(3621, {	-- The Formation of Felbane
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3602,	-- Azsharite
					["coord"] = { 60.8, 66.4, AZSHARA },
					["cost"] = {
						{ "i", 10738, 1 },	-- Shipment to Galvan
					},
					["lvl"] = 45,
				}),
				q(8151, {	-- The Hunter's Charm
					["qgs"] = {
						4205,	-- Dorion <Hunter Trainer>
						5116,	-- Olmin Burningbeard <Hunter Trainer>
						3352,	-- Ormak Grimshot <Hunter Trainer>
						3406,	-- Xor'juul <Hunter Trainer>
						5516,	-- Ulfir Ironbeard <Hunter Trainer>
						3038,	-- Kary Thunderhorn <Hunter Trainer>
					},
					["coords"] = {
						{ 42.2, 7.6, DARNASSUS },
						{ 70.6, 83.8, IRONFORGE },
						{ 66.2, 18.6, ORGRIMMAR },
						{ 62.0, 15.0, STORMWIND_CITY },
						{ 58.4, 88.0, THUNDER_BLUFF },
					},
					["maps"] = {
						DARNASSUS,
						IRONFORGE,
						ORGRIMMAR,
						STORMWIND_CITY,
						THUNDER_BLUFF,
					},
					["classes"] = { HUNTER },
					["lvl"] = 50,
				}),
				q(8256, {	-- The Ichor of Undeath
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8255,	-- Of Coursers We Know
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { PRIEST },
					["cost"] = {
						{ "i", 7972, 1 },	-- Ichor of Undeath
					},
					["lvl"] = 50,
				}),
				q(3509, {	-- The Name of the Beast
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3508,	-- Breaking the Ward
					["coord"] = { 60.8, 66.4, AZSHARA },
					["lvl"] = 45,
				}),
				q(3510, {	-- The Name of the Beast
					["qg"] = 6134,	-- Lord Arkkoroc
					["sourceQuest"] = 3509,	-- The Name of the Beast
					["coord"] = { 77.2, 42.8, AZSHARA },
					["cost"] = {
						{ "i", 10599, 1 },	-- Hetaera's Beaten Head
						{ "i", 10598, 1 },	-- Hetaera's Bloodied Head
						{ "i", 10600, 1 },	-- Hetaera's Bruised Head
					},
					["lvl"] = 45,
					["groups"] = {
						n(6140, {	-- Hetaera
							["coords"] = {
								{ 56.6, 44.6, AZSHARA },
								{ 59.4, 40.6, AZSHARA },
							},
							["groups"] = {
								{
									["itemID"] = 10599,	-- Hetaera's Beaten Head
									["questID"] = 3510,	-- The Name of the Beast
								},
								{
									["itemID"] = 10598,	-- Hetaera's Bloodied Head
									["questID"] = 3510,	-- The Name of the Beast
								},
								{
									["itemID"] = 10600,	-- Hetaera's Bruised Head
									["questID"] = 3510,	-- The Name of the Beast
								},
							},
						}),
					},
				}),
				q(3511, {	-- The Name of the Beast
					["qg"] = 6134,	-- Lord Arkkoroc
					["sourceQuest"] = 3510,	-- The Name of the Beast
					["coord"] = { 77.2, 42.8, AZSHARA },
					["cost"] = {
						{ "i", 10610, 1 },	-- Hetaera's Blood
					},
					["lvl"] = 45,
				}),
				q(8252, {	-- The Siren's Coral
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8251,	-- Magic Dust
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 20029, 6 },	-- Enchanted Coral
					},
					["lvl"] = 50,
				}),
				q(3565, {	-- Xylem's Payment to Jediga
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 3561,	-- Delivery to Archmage Xylem
					["coord"] = { 29.2, 40.2, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10681, 1 },	-- Xylem's Note
					},
					["lvl"] = 45,
				}),
				q(9362, {	-- Warlord Krellian
					["qg"] = 8379,		-- Archmage Xylem
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 23250, 1 },	-- Prismatic Shell
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 23250,	-- Prismatic Shell
							["questID"] = 9362,	-- Warlord Krellian
							["cr"] = 8408,	-- Warlord Krellian
							["coord"] = { 41.6, 52.8, AZSHARA },
						},
					},
				}),
				q(8231, {	-- Wavethrashing
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8153,	-- Courser Antlers
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 20087, 6 },	-- Wavethrasher Scales
					},
					["lvl"] = 50,
				}),
			}),
		}),
	}),
};