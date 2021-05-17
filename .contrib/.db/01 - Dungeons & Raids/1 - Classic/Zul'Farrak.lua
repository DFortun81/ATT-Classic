-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(ZULFARRAK, {
		["description"] = "Troll legends tell of a powerful sword called Sul'thraze the Lasher, a weapon capable of instilling fear and weakness in even the most formidable of foes. Long ago, the weapon was split in half. However, rumors have circulated that the two halves may be found somewhere within Zul'Farrak's walls. Reports have also suggested that a band of mercenaries fleeing Gadgetzan wandered into the city and became trapped. Their fate remains unknown. But perhaps most disturbing of all are the hushed whispers of an ancient creature sleeping within a sacred pool at the city's heart - a mighty demigod who will wreak untold destruction upon any adventurer foolish enough to awaken him.",
		["coord"] = { 39.0, 19.0, TANARIS },
		["lvl"] = 39,
		["groups"] = {
			n(QUESTS, {
				q(2768, {	-- Divino-matic Rod
					["provider"] = { "n", 7407 },	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
					["coord"] = { 52.5, 28.5, TANARIS },
					["maps"] = { TANARIS },
					["lvl"] = 40,
					["groups"] = {
						i(9534),	-- Engineer's Guild Headpiece
						i(9533),	-- Masons Fraternity Ring
					},
				}),
				q(2770, {	-- Gahz'rilla
					["sourceQuest"] = 2769,			-- The Brassbolts Brothers
					["provider"] = { "n", 4453 },	-- Wizzle Brassbolts
					["coord"] = { 78.0, 77.0, THOUSAND_NEEDLES },
					["maps"] = { THOUSAND_NEEDLES },
					["cost"] = {
						{ "i", 8707, 1 },	-- Gahz'rilla's Electrified Scale
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 11122,	-- Carrot on a Stick
							["description"] = "Do NOT vendor this item. Keep it with you always. It is best-in-slot when you are traveling long distances on your mount. (which you do a lot in Classic!)",
						},
						un(NEVER_IMPLEMENTED, i(9653)),	-- Speedy Racer Goggles
					},
				}),
				q(2991, {	-- Nekrum's Medallion
					["sourceQuest"] = 2990,			-- Thadius Grimshade
					["provider"] = { "n", 8022 },	-- Thadius Grimshade
					["coord"] = { 67.0, 19.4, BLASTED_LANDS },
					["maps"] = { BLASTED_LANDS, THE_HINTERLANDS },
					["cost"] = {
						{ "i", 9471, 1 },	-- Nekrum's Medallion
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2865, {	-- Scarab Shells
					["sourceQuest"] = 2864,	-- Tran'rek
					["provider"] = { "n", 7876 },	-- Tran'rek
					["coord"] = { 51.6, 26.8, TANARIS },
					["maps"] = { TANARIS },
					["lvl"] = 40,
				}),
				q(3520, {	-- Screecher Spirits
					["provider"] = { "n", 8579 },	-- Yeh'kinya
					["coord"] = { 67.0, 22.4, TANARIS },
					["maps"] = { FERALAS, TANARIS },
					["lvl"] = 40,
				}),
				q(2861, {	-- Tabetha's Task
					["qgs"] = {
						4568,	-- Anastasia Hartwell
						5144,	-- Bink
						5497,	-- Jennea Cannon
						5885,	-- Deino
					},
					["qgs"] = {
						5885,	-- Deino <Mage Trainer>
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
						4568,	-- Anastasia Hartwell <Mage Trainer>
					},
					["coords"] = {
						{ 38.4, 86, ORGRIMMAR },
						{ 27, 8.2, IRONFORGE },
						{ 38.6, 79.4, STORMWIND_CITY },
						{ 85, 10.2, UNDERCITY },
					},
					["maps"] = { ORGRIMMAR, IRONFORGE, STORMWIND_CITY, UNDERCITY },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(3527, {	-- The Prophecy of Mosh'aru
					["qg"] = 8579,	-- Yeh'kinya
					["sourceQuest"] = 3520,	-- Screecher Spirits
					["coord"] = { 67.0, 22.4, TANARIS },
					["maps"] = { TANARIS },
					["lvl"] = 40,
				}),
				q(2936, {	-- The Spider God
					["qg"] = 3188,	-- Master Gadrin
					["sourceQuest"] = 2935,	-- Consult Master Gadrin
					["coord"] = { 56.0, 74.6, DUROTAR },
					["maps"] = { DUROTAR, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(2846, {	-- Tiara of the Deep
					["provider"] = { "n", 6546 },	-- Tabetha
					["sourceQuest"] = 2861,	-- Tabetha's Task
					["coord"] = { 46.0, 57.0, DUSTWALLOW_MARSH },
					["maps"] = { DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 9234, 1 },	-- Tiara of the Deep
					},
					["lvl"] = 40,
					["groups"] = {
						i(9527),	-- Spellshifter Rod
						i(9531),	-- Gemshale Pauldrons
					},
				}),
				q(2864, {	-- Tran'rek
					["provider"] = { "n", 773 },	-- Krazek
					["coord"] = { 51.6, 26.8, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(3042, {	-- Troll Temper
					["provider"] = { "n", 7804 },	-- Trenton Lighthammer <The Mithril Order>
					["coord"] = { 51.4, 28.8, TANARIS },
					["maps"] = { TANARIS },
					["lvl"] = 40,
				}),
			}),
			n(-77, {	-- Special
				{
					["itemID"] = 9240,	-- Mallet of Zul'Farrak
					["description"] = "The Sacred Mallet drops from Qiaga the Keeper on top of the Altar of Zul in Hinterlands. You then bring it to the top of Jintha'alor and use it near the altar to turn into the Mallet of Zul'Farrak so you can summon Gahz'rilla in Zul'Farrak.",
					["coords"] = {
						{ 49.2, 68.6, THE_HINTERLANDS },
						{ 59.0, 79.6, THE_HINTERLANDS },
					},
					["maps"] = { THE_HINTERLANDS },
					["cost"] = {
						{ "i", 9241, 1 },	-- Sacred Mallet
					},
					["crs"] = {
						7996,	-- Qiaga the Keeper
						7995,	-- Vile Priestess Hexx
					},
				},
				{
					["itemID"] = 9372, 	-- Sul'thraze the Lasher
					["description"] = "You must take both of the swords and combine them to form this weapon.\n\nDPS: Be mindful that both of these appear to be tanking weapons, so you should probably let the tank know that you intend to Need Roll on them to get Sul'thraze later on. The best thing to do in this situation is to be the Tank, collect both of the tanking weapons, and then switch to DPS once you get this monster to avoid unnecessary drama.",
					["cost"] = {
						{ "i", 11086, 1 },	-- Jan'thraze the Protector
						{ "i", 9379, 1 },	-- Sang'thraze the Deflector
					},
					["crs"] = {
						8127,	-- Antu'sul
						7267,	-- Chief Ukorz Sandscalp
					},
				},
			}),
			n(ZONEDROPS, {
				i(9243),	-- Shriveled Troll Heart
				{
					["itemID"] = 9523,	-- Troll Temper
					["questID"] = 3042,	-- Troll Temper
				},
				{
					["itemID"] = 9238,	-- Uncracked Scarab Shell
					["questID"] = 2865,	-- Scarab Shells
					["crs"] = {
						7269,	-- Scarab
					},
				},
			}),
			n(10080, {	-- Sandarr Dunereaver
				["description"] = "This is a rare that is not always present.",
				["groups"] = {
					i(9512), 	-- Blackmetal Cape
					i(9511), 	-- Bloodletter Scalpel
					i(6440),	-- Brainlash
					i(9480), 	-- Eyegouger
					i(9483), 	-- Flaming Incinerator
					i(5616), 	-- Gutwrencher
					i(862),		-- Runed Ring
					i(9484), 	-- Spellshock Leggings
					i(9481), 	-- The Minotaur
					i(2040), 	-- Troll Protector
					i(9482), 	-- Witch Doctor's Cane
				},
			}),
			n(10082, {	-- Zerillis
				["description"] = "This is a rare that is not always present.",
				["groups"] = {
					i(12470),	-- Sandstalker Ankleguards
				},
			}),
			n(7272, {	-- Theka the Martyr
				{
					["itemID"] = 10660,	-- First Mosh'aru Tablet
					["questID"] = 3527,	-- The Prophecy of Mosh'aru
				},
			}),
			n(8127, {	-- Antu'sul
				i(9379),	-- Sang'thraze the Deflector
				i(9639), 	-- The Hand of Antu'sul
				i(9641),	-- Lifeblood Amulet
				i(9640), 	-- Vice Grips
			}),
			n(7271, { 	-- Witch Doctor Zum'rah
				i(18082),	-- Zum'rah's Vexing Cane
				i(18083),	-- Jumanza Grips
			}),
			n(10081, {	-- Dustwraith
				["description"] = "This is a rare that is not always present.",
				["groups"] = {
					un(PHASE_FIVE, i(12471)),	-- Desertwalker Cane
				},
			}),
			n(7796, {	-- Nekrum Gutchewer
				["description"] = "He's linked to Shadowpriest Sezz'ziz. Both will aggro once the 100 troll assault on the pyramid is complete.",
				["groups"] = {
					{
						["itemID"] = 9471,	-- Nekrum's Medallion
						["questID"] = 2991,	-- Nekrum's Medallion
						["races"] = ALLIANCE_ONLY,
					},
					i(15162),	-- Imposing Boots
				}
			}),
			n(7275, {	-- Shadowpriest Sezz'ziz
				i(9475), 	-- Diabolic Skiver
				i(9470), 	-- Bad Mojo Mask
				i(9473), 	-- Jinxed Hoodoo Skin
				i(9474), 	-- Jinxed Hoodoo Kilt
			}),
			n(7607, {	-- Weegli Blastfuse
				["description"] = "You must talk to this mob in order to enter the room with the last boss! If you are not fast enough, their whole party hearthstones out of the instance.",
			}),
			n(7604, {	-- Sergeant Bly
				["description"] = "These adventurers initially help you clear the gauntlet leading up to the previous boss, but then they turn on you. You don't have to fight them if no one in your party needs the quest item.",
				["qgs"] = {
					7608,	-- Murta Grimgut
					7606,	-- Oro Eyegouge
					7605,	-- Raven
				},
				["groups"] = {
					{
						["itemID"] = 8548,	-- Divino-matic Rod
						["questID"] = 2768,	-- Divino-matic Rod
					},
				},
			}),
			n(7797, {	-- Ruuzlu
				["description"] = "He's linked to Chief Ukorz Sandscalp, and both are immune to CC. It's generally preferred to kill Ruuzlu first, however.",
			}),
			n(7267, { 	-- Chief Ukorz Sandscalp
				i(11086),	-- Jan'thraze the Protector
				i(9478), 	-- Ripsaw
				i(9477), 	-- The Chief's Enforcer
				i(9479), 	-- Embrace of the Lycan
				i(9476), 	-- Big Bad Pauldrons
			}),
			n(7795, {	-- Hydromancer Velratha
				{
					["itemID"] = 9234,	-- Tiara of the Deep
					["questID"] = 2846,	-- Tiara of the Deep
				},
				{
					["itemID"] = 10661,	-- Second Mosh'aru Tablet
					["questID"] = 3527,	-- The Prophecy of Mosh'aru
				},
			}),
			n(7273, { 	-- Gahz'rilla
				["description"] = "Someone in your party must have the Mallet of Zul'Farrak to summon this boss!\n\nIf you have it, simply bang the Gong of Zul'Farrak. (after first confirming with your party...)",
				["provider"] = { "o", 141832 },	-- Gong of Zul'Farrak
				["cost"] = {
					{ "i", 9240, 1 },	-- Mallet of Zul'Farrak
				},
				["groups"] = {
					{
						["itemID"] = 8707,	-- Gahz'rilla's Electrified Scale
						["questID"] = 2770,	-- Gahz'rilla
					},
					i(9467), 	-- Gahz'rilla Fang
					i(9469), 	-- Gahz'rilla Scale Armor
				},
			}),
		},
	}),
})};