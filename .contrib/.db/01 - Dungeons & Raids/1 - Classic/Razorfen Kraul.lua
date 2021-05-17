-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(RAZORFEN_KRAUL, {
		["description"] = "Ten thousand years ago - during the War of the Ancients, the mighty demigod, Agamaggan, came forth to battle the Burning Legion. Though the colossal boar fell in combat, his actions helped save Azeroth from ruin. Yet over time, in the areas where his blood fell, massive thorn-ridden vines sprouted from the earth. \n\nThe quillboar - believed to be the mortal offspring of the mighty god, came to occupy these regions and hold them sacred. The heart of these thorn-colonies was known as the Razorfen. The great mass of Razorfen Kraul was conquered by the old crone, Charlga Razorflank. Under her rule, the shamanistic quillboar stage attacks on rival tribes as well as Horde villages. Some speculate that Charlga has even been negotiating with agents of the Scourge - aligning her unsuspecting tribe with the ranks of the Undead for some insidious purpose.",
		["coord"] = { 40.94, 94.55, THE_BARRENS },
		["lvl"] = 17,
		["groups"] = {
			n(QUESTS, {
				q(1102, {	-- A Vengeful Fate
					["qg"] = 4451,	-- Auld Stonespire
					["coord"] = { 37.1, 29.0, MULGORE },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5793, 1 },	-- Razorflank's Heart
					},
					["lvl"] = 29,
					["groups"] = {
						i(6725),	-- Marbled Buckler
						i(4197),	-- Berylline Pads
						i(6742),	-- Stonefist Girdle
					},
				}),
				q(6522, {	-- An Unholy Alliance
					["provider"] = { "i", 17008 },	-- Small Scroll
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
				}),
				q(1221, {	-- Blueleaf Tubers
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coord"] = { 62.4, 37.6, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["cost"] = {
						{ "i", 5880, 1 },	-- Crate With Holes
						{ "i", 5897, 1 },	-- Snufflenose Owner's Manual
						{ "i", 6684, 1 },	-- Snufflenose Command Stick
						{ "i", 5876, 6 },	-- Blueleaf Tuber
					},
					["lvl"] = 20,
					["groups"] = {
						i(6755, {	-- A Small Container of Gems
							i(6756),	-- Jewelry Box
						}),
					},
				}),
				q(1109, {	-- Going, Going, Guano!
					["qg"] = 2055,	-- Master Apothecary Faranell <Royal Apothecary Society>
					["coord"] = { 49.0, 69.8, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5801, 1 },	-- Kraul Guano
					},
					["lvl"] = 30,
				}),
				q(1142, {	-- Mortality Wanes
					["qg"] = 4510,	-- Heralath Fallowbrook
					["coord"] = { 69.4, 67.6, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5825, 1 },	-- Treshala's Pendant
					},
					["lvl"] = 25,
					["groups"] = {
						i(6751),	-- Mourning Shawl
						i(6752),	-- Lancer Boots
					},
				}),
				q(1101, {	-- The Crone of the Kraul
					["qg"] = 4048,	-- Falfindel Waywarder
					["sourceQuest"] = 1100,	-- Lonebrow's Journal
					["coord"] = { 89.6, 46.6, FERALAS },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						i(6725),	-- Marbled Buckler
						i(4197),	-- Berylline Pads
						i(6742),	-- Stonefist Girdle
						i(3041),	-- "Mage-Eye" Blunderbuss
					},
				}),
				q(1144, {	-- Willix the Importer
					["qg"] = 4508,	-- Willix the Importer
					["lvl"] = 22,
					["groups"] = {
						i(6748),	-- Monkey Ring
						i(6750),	-- Snake Hoop
						i(6749),	-- Tiger Band
					},
				}),
			}),
			n(ZONEDROPS, {
				i(5880, {	-- Crate With Holes
					["cr"] = 4781,	-- Snufflenose Gopher
					["cost"] = {
						{ "i", 6684, 1 },	-- Snufflenose Command Stick
					},
					["groups"] = {
						{
							["itemID"] = 5876,	-- Blueleaf Tuber
							["questID"] = 1221,	-- Blueleaf Tubers
						},
					},
				}),
				{
					["itemID"] = 5801,	-- Kraul Guano
					["questID"] = 1109,	-- Going, Going, Guano!
					["races"] = HORDE_ONLY,
					["crs"] = {
						4539,	-- Greater Kraul Bat
						4538,	-- Kraul Bat
					},
				},
				{
					["itemID"] = 5825,	-- Treshala's Pendant
					["questID"] = 1142,	-- Mortality Wanes
					["description"] = "Drops from any mob in the Kraul.",
					["races"] = ALLIANCE_ONLY,
				},
				i(1488),	-- Avenger's Armor
				i(2264),	-- Mantle of Thieves
				i(2039),	-- Plains Ring
				i(4438),	-- Pugilist Bracers
				i(1975),	-- Pysan's Old Greatsword
				i(1976),	-- Slaghammer
				i(2549),	-- Staff of the Shade
				i(1727),	-- Sword of Decay
				i(776),		-- Vendetta
				i(1978),	-- Wolfclaw Gloves
				i(3569, {	-- Vicar's Robe
					["cr"] = 4517,	-- Death's Head Priest
				}),
			}),
			n(6168, {	-- Roogug
				["description"] = "Warriors will need to kill this boss for their Fire Hardened Mail class quest. If you are the leader of the group, don't be surprised if they ask to kill this boss first.",
				["groups"] = {
					{
						["itemID"] = 6841,	-- Vial of Phlogiston
						["questID"] = 1701,	-- Fire Hardened Mail
						["races"] = ALLIANCE_ONLY,
						["classes"] = { WARRIOR },
					},
				},
			}),
			n(4424, {	-- Aggem Thorncurse <Death's Head Prophet>
				i(6681),	-- Thornspike
			}),
			n(4428, {	-- Death Speaker Jargba <Death's Head Captain>
				i(2816),	-- Death Speaker Scepter
				i(6685),	-- Death Speaker Mantle
				i(6682),	-- Death Speaker Robes
			}),
			n(4438, {	-- Razorfen Spearhide
				i(6679),	-- Armor Piercer
			}),
			n(4420, {	-- Overlord Ramtusk
				i(6687),	-- Corpsemaker
				i(6686),	-- Tusken Helm
			}),
			n(4842, {	-- Earthcaller Halmgar
				["description"] = "After you kill Overlord Ramtusk, go west over a bridge to a plateau.\n\nThis is a rare spawn that is not always present.",
				["groups"] = {
					i(6689),	-- Wind Spirit Staff
					i(6688),	-- Whisperwind Headdress
				},
			}),
			n(4425, {	-- Blind Hunter
				["description"] = "This is a rare spawn that is not always present.",
				["groups"] = {
					i(6696),	-- Nightstalker Bow
					i(6697),	-- Batwing Mantle
					i(6695),	-- Stygian Bone Amulet
				},
			}),
			n(4422, {	-- Agathelos the Raging
				i(6691),	-- Swinetusk Shank
				i(6690),	-- Ferine Leggings
			}),
			n(4421, {
				{
					["itemID"] = 5793,	-- Razorflank's Heart
					["questID"] = 1102,	-- A Vengeful Fate
					["races"] = HORDE_ONLY,
				},
				{
					["itemID"] = 5792,	-- Razorflank's Medallion
					["questID"] = 1101,	-- The Crone of the Kraul
					["races"] = ALLIANCE_ONLY,
				},
				{
					["itemID"] = 17008,	-- Small Scroll
					["questID"] = 6522,	-- An Unholy Alliance
					["races"] = HORDE_ONLY,
				},
				i(6692),	-- Pronged Reaver
				i(6694),	-- Heart of Agamaggan
				i(6693),	-- Agamaggan's Clutch
			}),
		},
	}),
})};