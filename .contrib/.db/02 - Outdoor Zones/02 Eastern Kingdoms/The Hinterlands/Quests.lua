---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(THE_HINTERLANDS, {
			n(QUESTS, {
				q(9470, {	-- A Gesture of Goodwill
					["qg"] = 17223,	-- Ambassador Rualeth
					["coord"] = { 15.1, 47.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 41,
				}),
				q(77, {	-- A Sticky Situation
					["qg"] = 7801,	-- Gilveradin Sunchaser
					["sourceQuest"] = 650,	-- Ripple Recovery
					["coord"] = { 26.6, 48.4, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8684, 12 },	-- Hinterlands Honey Ripple
					},
					["lvl"] = 42,
					["groups"] = {
						{
							["itemID"] = 8684,	-- Hinterlands Honey Ripple
							["questID"] = 77,	-- A Sticky Situation
							["coords"] = {
								{ 47.1, 40.3, THE_HINTERLANDS },
								{ 57.3, 41.2, THE_HINTERLANDS },
							},
						},
					},
				}),
				q(7842, {	-- Another Message to the Wildhammer
					["qg"] = 14738,	-- Otho Moji'ko <Cooking Supplier>
					["sourceQuest"] = 7841, 	-- Message to the Wildhammer
					["coord"] = { 79.2, 79.0, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4589, 10 },	-- Long Elegant Feather
					},
					["lvl"] = 44,
				}),
				q(7830, {	-- Avenging the Fallen
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 19025, 1 },	-- Skylord Plume
					},
					["lvl"] = 44,
				}),
				q(4298, {	-- Becoming a Parent
					["qg"] = 9660,	-- Agnar Beastamer
					["sourceQuest"] = 4297,	-- Food for Baby
					["coord"] = { 14.1, 43.6, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
					["g"] = {
						i(11474),	-- Sprite Darter Egg
					},
				}),
				q(7844, {	-- Cannibalistic Cousins
					["qg"] = 14739,	-- Mystic Yayo'jin <Reagent Vendor>
					["coord"] = { 78.8, 78.4, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
				}),
				q(2935, {	-- Consult Master Gadrin
					["qg"] = 2216,	-- Apothecary Lydon <Royal Apothecary Society>
					["sourceQuest"] = 2934,	-- Undamaged Venom Sac
					["coord"] = { 61.4, 19.2, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7850, {	-- Dark Vessels
					["qg"] = 14736,	-- Primal Torntusk
					["coord"] = { 78.2, 81.2, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 19071, 10 },	-- Vessel of Tainted Blood
					},
					["lvl"] = 46,
					["g"] = {
						{
							["itemID"] = 19071,	-- Vessel of Tainted Blood
							["questID"] = 7850,	-- Dark Vessels
							["description"] = "Can be found all over Jintha'alor.",
							["coord"] = { 65.2, 71.9, THE_HINTERLANDS },
						},
						i(19118),	-- Nature's Breath
					},
				}),
				q(9469, {	-- Featherbeard's Endorsement
					["qg"] = 17223,	-- Ambassador Rualeth
					["coord"] = { 15.1, 47.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 42,
				}),
				q(485, {	-- Find OOX-09/HL!
					["provider"] = { "i", 8704 },	-- OOX-09/HL Distress Beacon
					["lvl"] = 43,
					["groups"] = {
						i(9645),	-- Gnomish Inventor Boots
						i(9646),	-- Gnomish Water Winking Device
					},
				}),
				q(4297, {	-- Food for Baby
					["qg"] = 9660,	-- Agnar Beastamer
					["sourceQuest"] = 3843,	-- The Newest Member of the Family
					["coord"] = { 14.1, 43.6, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11472, 5 },	-- Silvermane Stalker Flank
					},
					["lvl"] = 38,
				}),
				q(7816, {	-- Gammerita, Mon!
					["qg"] = 14740,	-- Katoom the Angler
					["sourceQuest"] = 7815,	-- Snapjaws, Mon!
					["coord"] = { 80.2, 81.4, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 19023, 1 },	-- Katoom's Best Lure
					},
					["lvl"] = 44,
					["groups"] = {
						{
							["itemID"] = 19023,	-- Katoom's Best Lure
							["questID"] = 7816,	-- Gammerita, Mon!
							["cr"] = 7977,	-- Gammerita
							["coords"] = {
								{ 81.4, 47.2, THE_HINTERLANDS },
								{ 80.6, 59.6, THE_HINTERLANDS },
								{ 76.0, 67.6, THE_HINTERLANDS },
								{ 77.8, 76.8, THE_HINTERLANDS },
							},
						},
					},
				}),
				q(1450, {	-- Gryphon Master Talonaxe
					["qg"] = 5635,	-- Falstad Wildhammer <High Thane>
					["sourceQuest"] = 1449,	-- To The Hinterlands
					["coord"] = { 11.8, 46.8, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(7829, {	-- Hunt the Savages
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
				}),
				q(9476, {	-- In Pursuit of Featherbeard
					["provider"] = { "o", 181649 },	-- Featherbeard's Journal
					["sourceQuest"] = 9469,	-- Featherbeard's Endorsement
					["coord"] = { 13.4, 55.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 42,
				}),
				q(7862, {	-- Job Opening: Guard Captain of Revantusk Village
					["provider"] = { "o", 179913 },	-- Call to Arms!
					["coord"] = { 79.0, 79.0, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["g"] = {
						i(19120),	-- Rune of the Guard Captain
					},
				}),
				q(7845, {	-- Kidnapped Elder Torntusk!
					["qg"] = 14736,	-- Primal Torntusk
					["coord"] = { 78.2, 81.2, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
				}),
				q(7840, {	-- Lard Lost His Lunch
					["qg"] = 14731,	-- Lard <Innkeeper>
					["coord"] = { 78.2, 81.2, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 19034, 1 },	-- Lard's Lunch
					},
					["lvl"] = 44,
					["g"] = {
						{
							["itemID"] = 19034,	-- Lard's Lunch
							["questID"] = 7840,	-- Lard Lost His Lunch
							["cr"] = 14748,	-- Vilebranch Kidnapper
							["coord"] = { 84.6, 41.2, THE_HINTERLANDS },
						},
						i(19035),	-- Lard's Special Picnic Basket
					},
				}),
				q(7841, {	-- Message to the Wildhammer
					["qg"] = 14738,	-- Otho Moji'ko <Cooking Supplier>
					["coord"] = { 79.2, 79.0, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
				}),
				q(9471, {	-- Preying on the Predators
					["qg"] = 17223,	-- Ambassador Rualeth
					["coord"] = { 15.1, 47.2, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 39,
				}),
				q(9475, {	-- Reclaiming the Eggs
					["provider"] = { "o", 181643 },	-- Featherbeard's Remains
					["sourceQuest"] = 9476,	-- In Pursuit of Featherbeard
					["coord"] = { 37.1, 71.5, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["cost"] = {
						{ "i", 23695, 1 },	-- Featherbeard's Map
						{ "i", 23694, 5 },	-- Gryphon Egg
					},
					["lvl"] = 42,
					["groups"] = {
						{
							["itemID"] = 23694,	-- Gryphon Egg
							["questID"] = 9475,	-- Reclaiming the Eggs
							["coords"] = {
								{ 39.9, 66.0, THE_HINTERLANDS },
								{ 36.7, 71.2, THE_HINTERLANDS },
								{ 35.9, 72.7, THE_HINTERLANDS },
								{ 34.2, 72.8, THE_HINTERLANDS },
								{ 33.7, 75.0, THE_HINTERLANDS },
							},
						},
					},
				}),
				q(7846, {	-- Recover the Key!
					["qg"] = 14757,	-- Elder Torntusk
					["sourceQuest"] = 7845,	-- Kidnapped Elder Torntusk!
					["coord"] = { 59.6, 77.8, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 19064, 1 },	-- Shackle Key
					},
					["lvl"] = 46,
					["groups"] = {
						{
							["itemID"] = 19064,	-- Shackle Key
							["questID"] = 7846,	-- Recover the Key!
							["cr"] = 10802,	-- Hitah'ya the Keeper
							["coord"] = { 57.6, 86.6, THE_HINTERLANDS },
						},
					},
				}),
				q(836, { 	-- Rescue OOX-09/HL!
					["qg"] = 7806,	-- Homing Robot OOX-09/HL
					["sourceQuest"] = 485,	-- Find OOX-09/HL!
					["coord"] = { 49.4, 37.6, THE_HINTERLANDS },
					["lvl"] = 43,
				}),
				q(7847, {	-- Return to Primal Torntusk
					["qg"] = 14757,	-- Elder Torntusk
					["sourceQuest"] = 7846,	-- Recover the Key!
					["coord"] = { 59.6, 77.8, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["g"] = {
						i(19114),	-- Highland Bow
						i(19115),	-- Flask of Forest Mojo
					},
				}),
				q(1451, {	-- Rhapsody Shindigger
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["sourceQuest"] = 1450,	-- Gryphon Master Talonaxe
					["coord"] = { 9.8, 44.5, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(1452, {	-- Rhapsody's Kalimdor Kocktail
					["qg"] = 5634,	-- Rhapsody Shindigger
					["sourceQuest"] = 1451,	-- Rhapsody Shindigger
					["coord"] = { 26.8, 48.4, THE_HINTERLANDS },
					["maps"] = { FERALAS, TANARIS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6259, 3 },	-- Groddoc Liver
						{ "i", 6258, 3 },	-- Ironfur Liver
						{ "i", 6257, 3 },	-- Roc Gizzard
					},
					["lvl"] = 38,
				}),
				q(1469, {	-- Rhapsody's Tale
					["qg"] = 5634,	-- Rhapsody Shindigger
					["sourceQuest"] = 1452,	-- Rhapsody's Kalimdor Kocktail
					["coord"] = { 26.8, 48.4, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6287, 1 },	-- Atal'ai Tablet Fragment
					},
					["lvl"] = 38,
				}),
				q(2742, {	-- Rin'ji is Trapped!
					["qg"] = 7780,	-- Rin'ji <Witherbark Troll>
					["coord"] = { 30.6, 47, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(2782, {	-- Rin'ji's Secret
					["provider"] = { "i", 8724 },	-- Rin'ji's Secret
					["sourceQuest"] = 2742,	-- Rin'ji is Trapped!
					["coord"] = { 86.3, 59.1, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(81, {		-- Ripple Delivery
					["qg"] = 7801,	-- Gilveradin Sunchaser
					["sourceQuest"] = 77,	-- A Sticky Situation
					["coord"] = { 26.6, 48.4, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8685, 1 },	-- Dran's Ripple Delivery
					},
					["lvl"] = 42,
				}),
				q(2994, {	-- Saving Sharpbeak
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["sourceQuest"] = 2993,	-- Return to the Hinterlands
					["coord"] = { 9.8, 44.5, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9472, 1 },	-- Hexx's Key
					},
					["lvl"] = 40,
					["g"] = {
						{
							["itemID"] = 9472,	-- Hexx's Key
							["questID"] = 2994,	-- Saving Sharpbeak
							["cr"] = 7995,	-- Vile Priestess Hexx
							["coord"] = { 59.6, 77.6, THE_HINTERLANDS },
						},
						i(9651),	-- Gryphon Rider's Stormhammer
						i(9652),	-- Gryphon Rider's Leggings
					},
				}),
				q(7849, {	-- Separation Anxiety
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 19069, 1 },	-- Huntsman Malkhor's Skull
						{ "i", 19070, 1 },	-- Huntsman Malkhor's Bones
					},
					["lvl"] = 46,
					["g"] = {
						{
							["itemID"] = 19069,	-- Huntsman Malkhor's Skull
							["questID"] = 7849,	-- Separation Anxiety
							["coord"] = { 58.6, 64.9, THE_HINTERLANDS },
						},
						{
							["itemID"] = 19070,	-- Huntsman Malkhor's Bones
							["questID"] = 7849,	-- Separation Anxiety
							["coord"] = { 62.2, 75.5, THE_HINTERLANDS },
						},
						i(19117),	-- Laquered Wooden Plate Legplates
						i(19116),	-- Greenleaf Handwraps
					},
				}),
				q(2877, {	-- Skulk Rock Clean-up
					["qg"] = 7884,	-- Fraggar Thundermantle
					["coord"] = { 14.8, 44.6, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7815, {	-- Snapjaws, Mon!
					["qg"] = 14740,	-- Katoom the Angler
					["coord"] = { 80.2, 81.4, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["g"] = {
						i(19022),	-- Nat Pagle's Extreme Angler FC-5000
					},
				}),
				q(7828, {	-- Stalking the Stalkers
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
				}),
				q(2937, {	-- Summoning Shadra
					["qg"] = 3188,	-- Master Gadrin
					["sourceQuest"] = 2936,	-- The Spider God
					["coord"] = { 56.0, 74.6, DUROTAR },
					["maps"] = { DUROTAR, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9324, 1 },	-- Shadra's Venom
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 9323,	-- Gadrin's Parchment
							["coord"] = { 34.0, 73.0, THE_HINTERLANDS },
							["cr"] = 2707,	-- Shadra <The Venom Queen>
							["groups"] = {
								{
									["itemID"] = 9324,	-- Shadra's Venom
									["questID"] = 2937,	-- Summoning Shadra
								},
							},
						},
					},
				}),
				q(2990, {	-- Thadius Grimshade
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["sourceQuest"] = 2989,	-- The Altar of Zul
					["coord"] = { 9.8, 44.5, THE_HINTERLANDS },
					["cost"] = {
						{ "i", 9468, 1 },	-- Sharpbeak's Feather
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2989, { 	-- The Altar of Zul
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["sourceQuest"] = 2988,	-- Witherbark Cages
					["coord"] = { 9.8, 44.5, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7843, {	-- The Final Message to the Wildhammer
					["qg"] = 14738,	-- Otho Moji'ko <Cooking Supplier>
					["sourceQuest"] = 7843,	-- The Final Message to the Wildhammer
					["coord"] = { 79.2, 79.0, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 19036, 1 },	-- Final Message to the Wildhammer
					},
					["lvl"] = 44,
					["g"] = {
						i(19119),	-- Owlbeast Hide Gloves
					},
				}),
				q(2880, {	-- Troll Necklace Bounty
					["qg"] = 7884,	-- Fraggar Thundermantle
					["coord"] = { 14.8, 44.6, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9259, 5 },	-- Troll Tribal Necklace
					},
					["lvl"] = 40,
				}),
				q(2881, {	-- Troll Necklace Bounty
					["qg"] = 7884,	-- Fraggar Thundermantle
					["sourceQuest"] = 2880,	-- Troll Necklace Bounty
					["coord"] = { 14.8, 44.6, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 9259, 5 },	-- Troll Tribal Necklace
					},
					["lvl"] = 40,
				}),
				q(2933, {	-- Venom Bottles
					["provider"] = { "o", 142702 },	-- Venom Bottle
					["coord"] = { 23.6, 58.7, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9321, 1 },	-- Venom Bottle
					},
					["lvl"] = 40,
				}),
				q(7839, {	-- Vilebranch Hooligans
					["qg"] = 14737,	-- Smith Slagtree <Blacksmithing Supplies>
					["coord"] = { 77.6, 80.2, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 19033, 1 },	-- Slagtree's Lost Tools
					},
					["lvl"] = 44,
					["groups"] = {
						{
							["itemID"] = 19033,	-- Slagtree's Lost Tools
							["questID"] = 7839,	-- Vilebranch Hooligans
							["coords"] = {
								{ 53.3, 38.8, THE_HINTERLANDS },
								{ 57.5, 42.6, THE_HINTERLANDS },
								{ 66.4, 44.8, THE_HINTERLANDS },
								{ 71.0, 48.6, THE_HINTERLANDS },
								{ 72.6, 53.0, THE_HINTERLANDS },
							},
						},
					},
				}),
				q(7861, {	-- Wanted: Vile Priestess Hexx and Her Minions
					["provider"] = { "o", 179913 },	-- Call to Arms!
					["coord"] = { 79.0, 79.0, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["g"] = {
						i(19159),	-- Woven Ivy Necklace
						i(19121),	-- Deep Woodlands Cloak
					},
				}),
				q(2988, {	-- Witherbark Cages
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["coord"] = { 9.8, 44.5, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
			}),
		}),
	}),
};