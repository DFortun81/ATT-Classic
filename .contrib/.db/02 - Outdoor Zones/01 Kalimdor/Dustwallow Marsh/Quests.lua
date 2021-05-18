---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DUSTWALLOW_MARSH, {
			n(QUESTS, {
				q(1258, {	-- ... and Bugs
					["qg"] = 4794,	-- Morgan Stern
					["sourceQuest"] = 1204,	-- Mudrock Soup and Bugs
					["coord"] = { 66.4, 45.5, DUSTWALLOW_MARSH },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5938, 12 },	-- Pristine Crawler Leg
					},
					["lvl"] = 33,
					["groups"] = {
						i(6801),	-- Baroque Apron
					},
				}),
				q(11136, {	-- A Disturbing Development
					["qg"] = 23951,	-- Lieutenant Aden
					["sourceQuest"] = 11134,	-- The End of the Deserters
					["coord"] = { 65.1, 47.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 32,
				}),
				q(1168, {	-- Army of the Black Dragon
					["qg"] = 4502,	-- Tharg
					["coord"] = { 37.2, 31.4, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(9706),	-- Tharg's Disk
						i(9705),	-- Tharg's Shoelace
					},
				}),
				q(1220, {	-- Captain Vimes
					["qg"] = 4947,	-- Theramore Lieutenant
					["sourceQuest"] = 1219,	-- The Orc Report
					["coords"] = {
						{ 68.1, 48.2, DUSTWALLOW_MARSH },
						{ 67.2, 51.0, DUSTWALLOW_MARSH },
						{ 65.1, 47.1, DUSTWALLOW_MARSH },
					},
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5917, 1 },	-- Spy's Report
					},
					["lvl"] = 30,
				}),
				q(1958, {	-- Celestial Power
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1957,	-- Mana Surges
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 35,
					["groups"] = {
						i(7515),	-- Celestial Orb
						i(9517),	-- Celestial Stave
					},
				}),
				q(1173, {	-- Challenge Overlord Mok'Morokk
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["sourceQuest"] = 1172,	-- The Brood of Onyxia (3/3)
					["coord"] = { 36.2, 31.4, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(10703),	-- Fiendish Skiv
						i(10704),	-- Chillnail Splinter
					},
				}),
				q(4961, {	-- Cleansing of the Orb of Orahil
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1799,	-- Fragments of the Orb of Orahil
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { WARLOCK },
					["cr"] = 6549,	-- Demon of the Orb
					["cost"] = {
						{ "i", 12642, 1 },	-- Cleansed Infernal Orb
					},
					["lvl"] = 40,
				}),
				q(1285, {	-- Daelin's Men
					["qg"] = 4948,	-- Adjutant Tesoran
					["sourceQuest"] = 1259,	-- Lieutenant Paval Reethe (2/2)
					["coord"] = { 68.0, 48.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(11193, {	-- Dastardly Denizens of the Deep
					["qg"] = 23892,	-- Babs Fizzletorque
					["sourceQuest"] = 11192,	-- Thresher Oil
					["coord"] = { 72.1, 47.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33127, 1 },	-- Dastardly Denizens of the Deep
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 30,
				}),
				q(1205, {	-- Deadmire
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.52, 80.88, THUNDER_BLUFF },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5945, 1 },	-- Deadmire's Tooth
					},
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 5945,	-- Deadmire's Tooth
							["questID"] = 1205,	-- Deadmire
							["cr"] = 4841,	-- Deadmire
							["coord"] = { 47.6, 56.6, DUSTWALLOW_MARSH },
						},
					},
				}),
				q(11137, {	-- Defias in Dustwallow?
					["qg"] = 5086,	-- Captain Wymor
					["sourceQuest"] = 11136,	-- A Disturbing Development
					["coord"] = { 59.7, 41.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33037, 1 },	-- Defias Orders
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 32,
					["groups"] = {
						i(23679, {	-- Defias Orders
							["cr"] = 23679,	-- Garn Mathers
							["coord"] = { 64.9, 27.3, DUSTWALLOW_MARSH },
							["u"] = TBC_PHASE_ONE,
						}),
					},
				}),
				q(11133, {	-- Discrediting the Deserters
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["sourceQuest"] = 11128,	-- Propaganda War
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33015, 1 },	-- Altered Leaflets
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 32,
				}),
				q(1271, {	-- Feast at the Blue Recluse
					["qg"] = 1141,	-- Angus Stern
					["sourceQuests"] = {
						1258,	-- ... and Bugs
						1222,	-- Stinky's Escape
					},
					["description"] = "Don't forget to loot all the food and drinks off the tables.",
					["coord"] = { 41.4, 89.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(5951),	-- Moist Towelette
					},
				}),
				q(1949, {	-- Hidden Secrets
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1947,	-- Journey to the Marsh
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 30,
				}),
				q(1135, {	-- Highperch Venom
					["qg"] = 4456,	-- Fiora Longears
					["coord"] = { 66.5, 45.2, DUSTWALLOW_MARSH },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5809, 10 },	-- Highperch Venom Sac
					},
					["lvl"] = 25,
					["groups"] = {
						i(6719),	-- Windborne Belt
					},
				}),
				q(1177, {	-- Hungry!
					["qg"] = 4503,	-- Mudcrush Durtfeet
					["coord"] = { 35.2, 38.3, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 5847, 12 },	-- Mirefin Head
					},
					["lvl"] = 32,
					["groups"] = {
						i(9518),	-- Mud's Crushers
						i(9519),	-- Durtfeet Stompers
					},
				}),
				q(1169, {	-- Identifying the Brood
					["qg"] = 4501,	-- Draz'Zilb
					["coord"] = { 37, 33, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5840, 15 },	-- Searing Tongue
						{ "i", 5841, 15 },	-- Searing Heart
					},
					["lvl"] = 38,
					["groups"] = {
						i(9703),	-- Scorched Cape
						i(9704),	-- Rustler Gloves
					},
				}),
				q(1169, {	-- Items of Power
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1951,	-- Rituals of Power
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["maps"] = { ARATHI_HIGHLANDS, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7516, 1 },	-- Tabetha's Instructions
						{ "i", 7272, 1 },	-- Bolt Charged Bramble
						{ "i", 1529, 1 },	-- Jade
					},
					["lvl"] = 30,
					["groups"] = {
						i(7273, {	-- Witherbark Totem Stick
							["classes"] = { MAGE },
							["cost"] = {
								{ "i", 7273, 10 },	-- Witherbark Totem Stick
							},
							["crs"] = {
								2554,	-- Witherbark Axe Thrower
								2558,	-- Witherbark Berserker
								2556,	-- Witherbark Headhunter
								2557,	-- Witherbark Shadow Hunter
								2553,	-- Witherbark Shadowcaster
								2552,	-- Witherbark Troll
								2555,	-- Witherbark Witch Doctor
								2605,	-- Zalas Witherbark <Warband Leader>
							},
							["groups"] = {
								{
									["itemID"] = 7272,	-- Bolt Charged Bramble
									["questID"] = 1948,	-- Items of Power
									["coord"] = { 52, 51, ARATHI_HIGHLANDS },
								},
							},
						}),
					},
				}),
				q(11194, {	-- Is it Real?
					["qg"] = 23896,	-- "Dirty" Michael Crowe <Fish Merchant>
					["sourceQuest"] = 11193,	-- Dastardly Denizens of the Deep
					["coord"] = { 69.2, 51.9, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 30,
				}),
				q(11141, {	-- Jaina Must Know
					["qg"] = 23569,	-- Renn McGill <SI:7 Salvage Diver>
					["sourceQuest"] = 11140,	-- Recover the Cargo!
					["coord"] = { 63.7, 17.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 33,
				}),
				q(1203, {	-- Jarl Needs a Blade
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuest"] = 1206,	-- Jarl Needs Eyes
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 3853, 1 },	-- Moonsteel Broadsword
					},
					["lvl"] = 30,
					["groups"] = {
						i(9622),	-- Reedknot Ring
						i(5016),	-- Artisan's Trousers
					},
				}),
				q(1206, {	-- Jarl Needs Eyes
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuest"] = 1218,	-- Soothing Spices
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 5884, 40 },	-- Unpopped Darkmist Eye
					},
					["lvl"] = 30,
				}),
				q(1133, {	-- Journey to Astranaar
					["qg"] = 4456,	-- Fiora Longears
					["sourceQuest"] = 1132,	-- Fiora Longears
					["coord"] = { 66.4, 45.2, DUSTWALLOW_MARSH },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1947, {	-- Journey to the Marsh
					["qgs"] = {
						5885,	-- Deino <Mage Trainer>
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
						3048,	-- Ursyn Ghull <Mage Trainer>
						4568,	-- Anastasia Hartwell <Mage Trainer>
					},
					["coords"] = {
						{ 38.4, 86, ORGRIMMAR },
						{ 27, 8.2, IRONFORGE },
						{ 38.6, 79.4, STORMWIND_CITY },
						{ 25.8, 14.4, THUNDER_BLUFF },
						{ 85, 10.2, UNDERCITY },
					},
					["maps"] = { ORGRIMMAR, IRONFORGE, STORMWIND_CITY, THUNDER_BLUFF, UNDERCITY },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1269, {	-- Lieutenant Paval Reethe
					["provider"] = { "o", 21042 },	-- Theramore Guard Badge
					["coord"] = { 29.8, 48.2, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5950, 1 },	-- Reethe's Badge
					},
					["lvl"] = 30,
				}),
				q(1252, {	-- Lieutenant Paval Reethe (1/2)
					["provider"] = { "o", 21042 },	-- Theramore Guard Badge
					["coord"] = { 29.8, 48.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5950, 1 },	-- Reethe's Badge
					},
					["lvl"] = 30,
				}),
				q(1259, {	-- Lieutenant Paval Reethe (2/2)
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1252,	-- Lieutenant Paval Reethe (1/2)
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1952, {	-- Mage's Wand
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1169,	-- Items of Power
					["coord"] = { 46.0, 57.0, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 30,
					["groups"] = {
						i(7514),	-- Icefury Wand
						i(11263),	-- Nether Force Wand
						i(7513),	-- Ragefire Wand
					},
				}),
				q(1957, {	-- Mana Surges
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1956,	-- Power in Uldaman
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["cr"] = 6550,	-- Mana Surge
					["lvl"] = 35,
				}),
				q(1261, {	-- Marg Speaks
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["sourceQuest"] = 1240,	-- The Troll Witchdoctor
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5942, 1 },	-- Jeweled Pendant
					},
					["lvl"] = 30,
				}),
				q(11214, {	-- Mission to Mudsprocket
					["qg"] = 23951,	-- Lieutenant Aden
					["coord"] = { 65.1, 47.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 39,
				}),
				q(1260, {	-- Morgan Stern
					["qg"] = 1141,	-- Angus Stern
					["coord"] = { 41.4, 89.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 33,
				}),
				q(1204, {	-- Mudrock Soup and Bugs
					["qg"] = 4794,	-- Morgan Stern
					["sourceQuest"] = 1260,	-- Morgan Stern
					["coord"] = { 66.4, 45.5, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5883, 8 },	-- Forked Mudrock Tongue
					},
					["lvl"] = 33,
				}),
				q(11209, {	-- Nat's Bargain
					["qg"] = 12919,	-- Nat Pagle
					["sourceQuest"] = 11194,	-- Is it Real?
					["coord"] = { 58.8, 60.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33166, 1 },	-- Pagle's Fish Paste, Extra Strength
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 30,
					["groups"] = {
						i(19221),	-- Darkmoon Special Reserve
					},
				}),
				q(11210, {	-- Oh, It's Real
					["qg"] = 12919,	-- Nat Pagle
					["sourceQuest"] = 11209,	-- Nat's Bargain
					["coord"] = { 58.8, 60.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 30,
				}),
				q(1166, {	-- Overlord Mok'Morokk's Concern
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["coord"] = { 36.2, 31.4, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5835, 1 },	-- Mok'Morokk's Grog
						{ "i", 5834, 1 },	-- Mok'Morokk's Snuff
						{ "i", 5836, 1 },	-- Mok'Morokk's Strongbox
					},
					["lvl"] = 38,
					["groups"] = {
						{
							["itemID"] = 5835,	-- Mok'Morokk's Grog
							["questID"] = 1166,	-- Overlord Mok'Morokk's Concern
							["coord"] = { 38.6, 65.4, DUSTWALLOW_MARSH },
						},
						{
							["itemID"] = 5834,	-- Mok'Morokk's Snuff
							["questID"] = 1166,	-- Overlord Mok'Morokk's Concern
							["coord"] = { 44.4, 66, DUSTWALLOW_MARSH },
						},
						{
							["itemID"] = 5836,	-- Mok'Morokk's Strongbox
							["questID"] = 1166,	-- Overlord Mok'Morokk's Concern
							["coord"] = { 36.6, 69.4, DUSTWALLOW_MARSH },
						},
						i(10702),	-- Enormous Ogre Boots
					},
				}),
				q(11128, {	-- Propaganda War
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["sourceQuest"] = 11126,	-- Traitors Among Us
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33008, 1 },	-- Deserter Propaganda
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 32,
					["groups"] = {
						i(33008, {	-- Deserter Propaganda
							["coord"] = { 67.9, 58.7, DUSTWALLOW_MARSH },
							["u"] = TBC_PHASE_ONE,
						}),
					},
				}),
				q(1273, {	-- Questioning Reethe
					["qg"] = 4983,	-- Ogron
					["sourceQuest"] = 1269,	-- Lieutenant Paval Reethe
					["coord"] = { 40.8, 36.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(6797),	-- Eyepoker
						i(6798),	-- Blasting Hackbut
					},
				}),
				q(11140, applyclassicphase(TBC_PHASE_ONE, {	-- Recover the Cargo!
					["qg"] = 23569,	-- Renn McGill <SI:7 Salvage Diver>
					["sourceQuest"] = 11139,	-- Secondhand Diving Gear
					["coord"] = { 63.7, 17.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33041, 6 },	-- Salvaged Strongbox
					},
					["lvl"] = 32,
					["groups"] = {
						i(33045, {	-- Renn's Supplies
							i(33040),	-- Repaired Diving Gear
							i(33044, {	-- Salvage Kit
								i(33041),	-- Salvaged Strongbox
							}),
						}),
						i(33267),	-- Fleshripper
						i(33270),	-- Mariner's Sword
						i(33259),	-- Crimson Barbut
					},
				})),
				q(11138, {	-- Renn McGill
					["qg"] = 5086,	-- Captain Wymor
					["sourceQuest"] = 11137,	-- Defias in Dustwallow?
					["coord"] = { 59.7, 41.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33037, 1 },	-- Defias Orders
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 32,
				}),
				q(1262, {	-- Report to Zor
					["qg"] = 4791,	-- Nazeer Bloodpike
					["sourceQuest"] = 1261,	-- Marg Speaks
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5942, 1 },	-- Jeweled Pendant
					},
					["lvl"] = 30,
				}),
				q(11223, applyclassicphase(TBC_PHASE_ONE, {	-- Return to Jaina
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 11222,	-- Warn Bolvar!
					["coord"] = { 78.2, 18.1, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						i(33269),	-- Bejeweled Dagger
						i(33252),	-- Gleaming Scale Breastplate
						i(33250),	-- Archer's Wristguard
					},
				})),
				q(1953, {	-- Return to the Marsh
					["qgs"] = {
						5885,	-- Deino <Mage Trainer>
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
						3048,	-- Ursyn Ghull <Mage Trainer>
						4568,	-- Anastasia Hartwell <Mage Trainer>
					},
					["coords"] = {
						{ 38.4, 86, ORGRIMMAR },
						{ 27, 8.2, IRONFORGE },
						{ 38.6, 79.4, STORMWIND_CITY },
						{ 25.8, 14.4, THUNDER_BLUFF },
						{ 85, 10.2, UNDERCITY },
					},
					["maps"] = { ORGRIMMAR, IRONFORGE, STORMWIND_CITY, THUNDER_BLUFF, UNDERCITY },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(4976, {	-- Returning the Cleansed Orb
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 4961,	-- Cleansing of the Orb of Orahil
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 12642, 1 },	-- Cleansed Infernal Orb
					},
					["lvl"] = 40,
				}),
				q(11139, {	-- Secondhand Diving Gear
					["qg"] = 23569,	-- Renn McGill <SI:7 Salvage Diver>
					["sourceQuest"] = 11138,	-- Renn McGill
					["coord"] = { 63.7, 17.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33038, 1 },	-- Damaged Diving Gear
						{ "i", 33039, 1 },	-- Tool Kit
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 32,
					["groups"] = {
						i(33038, {	-- Damaged Diving Gear
							["coord"] = { 62.6, 18.2, DUSTWALLOW_MARSH },
							["u"] = TBC_PHASE_ONE,
						}),
					},
				}),
				q(7541, {	-- Service to the Horde
					["qg"] = 4047,	-- Zor Lonetree
					["sourceQuest"] = 1262,	-- Report to Zor
					["coord"] = { 39, 38, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(18585),	-- Band of Allegiance
						i(18586),	-- Lonetree's Circle
					},
				}),
				q(1218, {	-- Soothing Spices
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 3713, 3 },	-- Soothing Spices
					},
					["lvl"] = 30,
					["groups"] = {
						i(6807),	-- Frog Leg Stew
					},
				}),
				q(1270, {	-- Stinky's Escape
					["qg"] = 4880,	-- "Stinky" Ignatz
					["coord"] = { 46.9, 17.5, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(3825),	-- Elixir of Fortitude
					},
				}),
				q(1222, {	-- Stinky's Escape
					["qg"] = 4880,	-- "Stinky" Ignatz
					["coord"] = { 46.9, 17.5, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(3825),	-- Elixir of Fortitude
					},
				}),
				q(11142, {	-- Survey Alcaz Island
					["qg"] = 4968,	-- Lady Jaina Proudmoore <Ruler of Theramore>
					["sourceQuest"] = 11141,	-- Jaina Must Know
					["coord"] = { 66.3, 49.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 33,
				}),
				q(1268, {	-- Suspicious Hoofprints
					["providers"] = {
						{ "o", 21015 },	-- Hoofprints
						{ "o", 21016 },	-- Hoofprints
					},
					["coord"] = { 29.7, 47.7, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1284, {	-- Suspicious Hoofprints
					["providers"] = {
						{ "o", 21015 },	-- Hoofprints
						{ "o", 21016 },	-- Hoofprints
					},
					["coord"] = { 29.7, 47.7, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(11212, {	-- Tabetha's Farm
					["qg"] = 4921,	-- Guard Byron
					["coord"] = { 66.2, 46.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 37,
				}),
				q(11198, {	-- Take Down Tethyr!
					["qg"] = 23905,	-- Major Mills
					["sourceQuest"] = 11210,	-- Oh, It's Real
					["coord"] = { 69.7, 51.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 30,
					["groups"] = {
						i(33228, {	-- Crimson Tunic
							["u"] = TBC_PHASE_ONE,
						}),
						i(33253, {	-- Golden Helm
							["u"] = TBC_PHASE_ONE,
						}),
						i(33247, {	-- Swift Wind Spaulders
							["u"] = TBC_PHASE_ONE,
						}),
					},
				}),
				q(1253, {	-- The Black Shield (1/3)
					["provider"] = { "o", 20992 },	-- Black Shield
					["coord"] = { 29.6, 48.5, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["lvl"] = 30,
				}),
				q(1319, {	-- The Black Shield (2/3)
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1253,	-- The Black Shield (1/3)
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["lvl"] = 30,
				}),
				q(1320, {	-- The Black Shield (3/3)
					["qg"] = 4941,	-- Caz Twosprocket
					["sourceQuest"] = 1319,	-- The Black Shield (2/3)
					["coord"] = { 64.6, 50.4, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1251, {	-- The Black Shield (1/5)
					["provider"] = { "o", 20992 },	-- Black Shield
					["coord"] = { 29.6, 48.5, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["lvl"] = 30,
				}),
				q(1321, {	-- The Black Shield (2/5)
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 1251,	-- The Black Shield (1/5)
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["lvl"] = 30,
				}),
				q(1322, {	-- The Black Shield (3/5)
					["qg"] = 5087,	-- Do'gol
					["sourceQuest"] = 1321,	-- The Black Shield (2/5)
					["coord"] = { 36.4, 30.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5959, 6 },	-- Acidic Venom Sac
					},
					["lvl"] = 30,
				}),
				q(1323, {	-- The Black Shield (4/5)
					["qg"] = 5087,	-- Do'gol
					["sourceQuest"] = 1322,	-- The Black Shield (3/5)
					["coord"] = { 36.4, 30.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1276, {	-- The Black Shield (5/5)
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 1323,	-- The Black Shield (4/5)
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["lvl"] = 30,
				}),
				q(1170, {	-- The Brood of Onyxia (1/3)
					["qg"] = 4501,	-- Draz'Zilb
					["sourceQuest"] = 1169,	-- Identifying the Brood
					["coord"] = { 37, 33, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1171, {	-- The Brood of Onyxia (2/3)
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["sourceQuest"] = 1170,	-- The Brood of Onyxia (1/3)
					["coord"] = { 36.2, 31.4, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1172, {	-- The Brood of Onyxia (3/3)
					["qg"] = 4501,	-- Draz'Zilb
					["sourceQuest"] = 1171,	-- The Brood of Onyxia (2/3)
					["coord"] = { 37, 33, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(10700),	-- Encarmine Boots
						i(10701),	-- Boots of Zua'tec
					},
				}),
				q(1286, {	-- The Deserters (1/2)
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1285,	-- Daelin's Men
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1287, {	-- The Deserters (2/2)
					["qg"] = 5089,	-- Balos Jacken
					["sourceQuest"] = 1286,	-- The Deserters (1/2)
					["coord"] = { 36, 54.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(11134, {	-- The End of the Deserters
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["sourceQuest"] = 11133,	-- Discrediting the Deserters
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 32,
					["groups"] = {
						i(33232, {	-- Journeyman's Cowl
							["u"] = TBC_PHASE_ONE,
						}),
						i(33249, {	-- Boots of the Skirmisher
							["u"] = TBC_PHASE_ONE,
						}),
						i(33274, {	-- Mercenary's Crossbow
							["u"] = TBC_PHASE_ONE,
						}),
					},
				}),
				q(1955, {	-- The Exorcism
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1954,	-- The Infernal Orb
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["cr"] = 6549,	-- Demon of the Orb
					["lvl"] = 35,
				}),
				q(11177, {	-- The Hermit of Swamplight Manor
					["qg"] = 23835,	-- Sergeant Amelyn
					["sourceQuest"] = 11134,	-- The End of the Deserters
					["coord"] = { 68.3, 51.8, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 30,
				}),
				q(1954, {	-- The Infernal Orb
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1953,	-- Return to the Marsh
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["maps"] = { DESOLACE },
					["classes"] = { MAGE },
					["cr"] = 4668,	-- Burning Blade Summoner
					["cost"] = {
						{ "i", 7291, 1 },	-- 	Infernal Orb
					},
					["lvl"] = 35,
				}),
				q(1238, {	-- The Lost Report
					["provider"] = { "o", 20985 },	-- Loose Dirt
					["coord"] = { 55.4, 26, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5917, 1 },	-- Spy's Report
					},
					["lvl"] = 30,
				}),
				q(1265, {	-- The Missing Diplomat (14/17)
					["qg"] = 4964,	-- Commander Samaul
					["sourceQuest"] = 1264,	-- The Missing Diplomat (13/17)
					["coord"] = { 68.0, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1266, {	-- The Missing Diplomat (15/17)
					["qg"] = 4967,	-- Archmage Tervosh
					["sourceQuest"] = 1265,	-- The Missing Diplomat (14/17)
					["coord"] = { 66.4, 49.3, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1324, {	-- The Missing Diplomat (16/17)
					["qg"] = 4966,	-- Private Hendel
					["sourceQuest"] = 1266,	-- The Missing Diplomat (15/17)
					["coord"] = { 45.2, 24.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1267, {	-- The Missing Diplomat (17/17)
					["qg"] = 4968,	-- Lady Jaina Proudmoore
					["sourceQuest"] = 1324,	-- The Missing Diplomat (16/17)
					["coord"] = { 45.2, 24.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(6757),	-- Jaina's Signet Ring
					},
				}),
				q(1219, {	-- The Orc Report
					["provider"] = { "o", 20985 },	-- Loose Dirt
					["coord"] = { 55.4, 26, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5917, 1 },	-- Spy's Report
					},
					["lvl"] = 30,
				}),
				q(1239, {	-- The Severed Head
					["provider"] = { "o", 20985 },	-- Loose Dirt
					["sourceQuest"] = 1238,	-- The Lost Report
					["coord"] = { 55.4, 26, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5918, 1 },	-- Defiant Orc Head
					},
					["lvl"] = 30,
				}),
				q(1202, {	-- The Theramore Docks
					["qg"] = 4791,	-- Nazeer Bloodpike
					["sourceQuest"] = 1201,	-- Theramore Spies
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5882, 1 },	-- Captain's Documents
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 5882,	-- Captain's Documents
							["questID"] = 1202,	-- The Theramore Docks
							["coord"] = { 71.5, 51.1, DUSTWALLOW_MARSH },
						},
					},
				}),
				q(1240, {	-- The Troll Witchdoctor
					["qg"] = 4791,	-- Nazeer Bloodpike
					["sourceQuest"] = 1239,	-- The Severed Head
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5918, 1 },	-- Defiant Orc Head
					},
					["lvl"] = 30,
				}),
				q(1201, {	-- Theramore Spies
					["qg"] = 4791,	-- Nazeer Bloodpike
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1282, {	-- They Call Him Smiling Jim
					["qg"] = 4921,	-- Guard Byron
					["altQuests"] = { 1302 },	-- James Hyal
					["coord"] = { 66, 46, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(11191, {	-- This Old Lighthouse
					["qg"] = 23835,	-- Sergeant Amelyn
					["coord"] = { 68.3, 51.8, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 30,
				}),
				q(11126, {	-- Traitors Among Us
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 32,
				}),
				q(11192, {	-- Thresher Oil
					["qg"] = 23892,	-- Babs Fizzletorque
					["sourceQuest"] = 11191,	-- This Old Lighthouse
					["coord"] = { 72.1, 47.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33126, 4 },	-- Thresher Oil
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 30,
				}),
				q(11222, {	-- Warn Bolvar!
					["qg"] = 4968,	-- Lady Jaina Proudmoore <Ruler of Theramore>
					["sourceQuest"] = 11142,	-- Survey Alcaz Island
					["coord"] = { 66.3, 49.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 33,
				}),
			}),
		}),
	}),
};