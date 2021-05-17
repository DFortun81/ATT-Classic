-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(MARAUDON, {
		["description"] = "Protected by the fierce Maraudine centaur, Maraudon is one of the most sacred sites within Desolace. The great temple/cavern is the burial place of Zaetar, one of two immortal sons born to the demigod, Cenarius. Legend holds that Zaetar and the earth elemental princess, Theradras, sired the misbegotten centaur race. It is said that upon their emergence, the barbaric centaur turned on their father and killed him. Some believe that Theradras, in her grief, trapped Zaetar's spirit within the winding cavern - used its energies for some malign purpose. The subterranean tunnels are populated by the vicious, long-dead ghosts of the Centaur Khans, as well as Theradras' own raging, elemental minions.",
		["lvl"] = 41,
		["groups"] = {
			n(QUESTS, {
				{	-- Corruption of Earth and Seed
					["allianceQuestID"] = 7065,	-- Corruption of Earth and Seed
					["hordeQuestID"] = 7064,	-- Corruption of Earth and Seed
					["qgs"] = {
						13698,	-- Keeper Marandis
						13699,	-- Selendra
					},
					["coords"] = {
						{ 63.8, 10.6, DESOLACE },
						{ 26.9, 77.7, DESOLACE },
					},
					["cr"] = 12201,	-- Princess Theradras
					["lvl"] = 45,
					["groups"] = {
						i(17705), 	-- Thrash Blade
						i(17743),	-- Resurgence Rod
						i(17753),	-- Verdant Keeper's Aim
					},
				},
				q(7044, {	-- Legends of Maraudon
					["qg"] = 13697,	-- Cavindra
					["coord"] = { 32.1, 64.0, DESOLACE },
					["maps"] = { DESOLACE },
					["cost"] = {
						{ "i", 17703, 1 },	-- Celebrian Diamond
						{ "i", 17702, 1 },	-- Celebrian Rod
					},
					["lvl"] = 41,
				}),
				q(7066, {	-- Seed of Life
					["qg"] = 12238,	-- Zaetar's Spirit
					["description"] = "This quest becomes available after you defeat Princess Theradras",
					["cost"] = {
						{ "i", 17760, 1 },	-- Seed of Life
					},
					["lvl"] = 39,
				}),
				{	-- Shadowshard Fragments
					["allianceQuestID"] = 7070,	-- Shadowshard Fragments
					["hordeQuestID"] = 7068,	-- Shadowshard Fragments
					["qgs"] = {
						4967,	-- Archmage Tervosh
						7311,	-- Uthel'nay <Mage Trainer>
					},
					["cost"] = {
						{ "i", 17756, 10 },	-- Shadowshard Fragment
					},
					["coords"] = {
						{ 66.4, 49.3, DUSTWALLOW_MARSH },
						{ 39.2, 86.3, ORGRIMMAR },
					},
					["maps"] = { DUSTWALLOW_MARSH, ORGRIMMAR },
					["crs"] = {
						11777,	-- Shadowshard Rumbler
						11778,	-- Shadowshard Smasher
					},
					["lvl"] = 39,
					["groups"] = {
						i(17773),	-- Prodigious Shadowshard Pendant
						i(17772),	-- Zealous Shadowshard Pendant
					},
				},
				q(7067, {	-- The Pariah's Instructions
					["qg"] = 13717,	-- Centaur Pariah
					["coord"] = { 50.5, 86.7, DESOLACE },
					["cost"] = {
						{ "i", 17758, 1 },	-- Amulet of Union
					},
					["lvl"] = 39,
					["groups"] = {
						{
							["itemID"] = 17781,	-- The Pariah's Instructions
							["questID"] = 7067,	-- The Pariah's Instructions
							["description"] = "You can safely delete this item. It is not needed for the quest.",
						},
						{
							["itemID"] = 17757,	-- Amulet of Spirits
							["questID"] = 7067,	-- The Pariah's Instructions
							["qg"] = 13718,	-- The Nameless Prophet
							["coord"] = { 28.1, 62.4, DESOLACE },
						},
						{
							["itemID"] = 17761,	-- Gem of the First Khan
							["questID"] = 7067,	-- The Pariah's Instructions
							["description"] = "Kolk is standing by the little room where you create the portal for Inner Maraudon, in the middle part.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
							["qgs"] = {
								12240,	-- Spirit of Kolk <The First Kahn>
								13742,	-- Kolk <The First Kahn>
							},
							["coord"] = { 29.7, 60.5, DESOLACE },
						},
						{
							["itemID"] = 17762,	-- Gem of the Second Kahn
							["questID"] = 7067,	-- The Pariah's Instructions
							["description"] = "Gelk is located outside the portal of the purple path, hanging with snakes and rock elementals. He is almost just below the portal (use the stairs to get to him).\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
							["qgs"] = {
								12239,	-- Spirit of Gelk <The Second Kahn>
								13741,	-- Gelk <The Second Kahn>
							},
							["coord"] = { 29.4, 56.9, DESOLACE },
						},
						{
							["itemID"] = 17763,	-- Gem of the Third Kahn
							["questID"] = 7067,	-- The Pariah's Instructions
							["description"] = "Magra is located outside the portal of the orange path. He is in the stairs area.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
							["qgs"] = {
								12241,	-- Spirit of Magra <The Third Kahn>
								13740,	-- Magra <The Third Kahn>
							},
							["coord"] = { 35.8, 60.4, DESOLACE },
						},
						{
							["itemID"] = 17764,	-- Gem of the Fourth Kahn
							["questID"] = 7067,	-- The Pariah's Instructions
							["description"] = "Maraudos is located inside the purple path of Maraudon, wandering not too far away from the entrance.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
							["qgs"] = {
								12242,	-- Spirit of Maraudos <The Fourth Kahn>
								13739,	-- Maraudos <The Fourth Kahn>
							},
						},
						{
							["itemID"] = 17765,	-- Gem of the Fifth Kahn
							["questID"] = 7067,	-- The Pariah's Instructions
							["description"] = "Veng is located inside the orange path of Maraudon, wandering by the end of the path.\n\nTo attack him, use the Amulet of Spirits that you got from The Nameless Prophet.",
							["qgs"] = {
								12243,	-- Spirit of Veng <The Fifth Kahn>
								13738,	-- Veng <The Fifth Kahn>
							},
						},
						{
							["itemID"] = 17758,	-- Amulet of Union
							["questID"] = 7067,	-- The Pariah's Instructions
							["cost"] = {
								{ "i", 17757, 1 },	-- Amulet of Spirits
								{ "i", 17761, 1 },	-- Gem of the First Khan
								{ "i", 17762, 1 },	-- Gem of the Second Kahn
								{ "i", 17763, 1 },	-- Gem of the Third Kahn
								{ "i", 17764, 1 },	-- Gem of the Fourth Kahn
								{ "i", 17765, 1 },	-- Gem of the Fifth Kahn
							},
						},
						i(17774),	-- Mark of the Chosen
					},
				}),
				q(7046, {	-- The Scepter of Celebras
					["qg"] = 13716,	-- Celebras the Redeemed
					["sourceQuest"] = 7044,	-- Legends of Maraudon
					["lvl"] = 41,
					["groups"] = {
						{
							["itemID"] = 17191,	-- Scepter of Celebras
							["description"] = "This item is used to open the portal to the Inner Falls just after Celebras the Cursed in Maraudon.",
						},
					},
				}),
				q(7028, {	-- Twisted Evils
					["qg"] = 13656,	-- Willow <Twilight's Hammer>
					["coord"] = { 62.2, 39.63, DESOLACE },
					["maps"] = { DESOLACE },
					["cost"] = {
						{ "i", 17684, 15 },	-- Theradric Crystal Carving
					},
					["lvl"] = 41,
					["groups"] = {
						i(17776),	-- Sprightring Helm
						i(17779),	-- Hulkstone Pauldrons
						i(17775),	-- Acumen Robes
						i(17777),	-- Relentless Chain
					},
				}),
				{	-- Vyletongue Corruption
					["allianceQuestID"] = 7041,	-- Vyletongue Corruption
					["hordeQuestID"] = 7029,	-- Vyletongue Corruption
					["qgs"] = {
						11715,	-- Talendria
						11823,	-- Vark Battlescar
					},
					["coords"] = {
						{ 68.4, 8.8, DESOLACE },
						{ 23.2, 70.3, DESOLACE },
					},
					["crs"] = {
						13696,	-- Noxxious Scion
					},
					["lvl"] = 41,
					["groups"] = {
						{
							["itemID"] = 17693,	-- Coated Cerulean Vial
							["allianceQuestID"] = 7041,	-- Vyletongue Corruption
							["hordeQuestID"] = 7029,	-- Vyletongue Corruption
							["description"] = "Stand in the Orange Pool of water just outside the Orange Path of Maraudon and use this item to create the filled vial.",
							["coord"] = { 38, 58, DESOLACE },
						},
						{
							["itemID"] = 17696,	-- Filled Cerulean Vial
							["allianceQuestID"] = 7041,	-- Vyletongue Corruption
							["hordeQuestID"] = 7029,	-- Vyletongue Corruption
							["description"] = "Use this on the vines and then kill the Scions that are spawned.",
							["cost"] = {
								{ "i", 17693, 1 },	-- Coated Cerulean Vial
							},
						},
						i(17770), 	-- Branchclaw Gauntlets
						i(17778),	-- Sagebrush Girdle
						i(17768),	-- Woodseed Hoop
					},
				},
			}),
			n(ZONEDROPS, {
				{
					["itemID"] = 17684,	-- Theradric Crystal Carving
					["questID"] = 7028,	-- Twisted Evils
				},
			}),
			n(-71, {	-- The Wicked Grotto [Purple]
				--["coord"] = { 51.68, 24.73, DESOLACE },	-- Maraudon [Purple], Foulspore Cavern [Desolace]
				["groups"] = {
					n(12236, {	-- Lord Vyletongue
						{
							["itemID"] = 17703,	-- Celebrian Diamond
							["questID"] = 7044,	-- Legends of Maraudon
						},
						i(17752),	-- Satyr's Lash
						i(17755),	-- Satyrmane Sash
						i(17754),	-- Infernal Trickster Leggings
					}),
					n(12237, {		-- Meshlok the Harvester
						["description"] = "This is a rare that is not always present.",
						["groups"] = {
							i(17741),	-- Nature's Embrace
							i(17742),	-- Fungus Shroud Armor
							i(17767),	-- Bloomsprout Headpiece
						},
					}),
				},
			}),
			n(-70, {	-- Foulspore Cavern [Orange]
				--["coord"] = { 78.01, 55.68, DESOLACE },	-- Maraudon [Orange], The Wicked Grotto [Desolace]
				["groups"] = {
					n(13282, {	-- Noxxion
						{
							["itemID"] = 17702,	-- Celebrian Rod
							["questID"] = 7044,	-- Legends of Maraudon
						},
						i(17745),	-- Noxious Shooter
						i(17746),	-- Noxxion's Shackles
						i(17744),	-- Heart of Noxxion
					}),
					n(12258, {	-- Razorlash
						i(17749),	-- Phytoskin Spaulders
						i(17750),	-- Chloromesh Girdle
						i(17751),	-- Brusslehide Leggings
						i(17748),	-- Vinerot Sandals
					}),
					n(12225, {	-- Celebras the Cursed
						i(17738),	-- Claw of Celebras
						i(17740),	-- Soothsayer's Headdress
						i(17739),	-- Grovekeeper's Drape
					}),
				},
			}),
			n(-69, {	-- Maraudon Portal
				["sourceQuest"] = 7046,	-- The Scepter of Celebras
				--["coord"] = { 44.49, 77.14, DESOLACE },	-- Maraudon [Falls], Foulspore Cavern [Desolace]
				["cost"] = {
					{ "i", 17191, 1 },	-- Scepter of Celebras
				},
				["groups"] = {
					n(12203, {	-- Landslide
						un(NEVER_IMPLEMENTED, i(17733)), 	-- Fist of Stone
						i(17943),	-- Fist of Stone
						i(17737),	-- Cloud Stone
						i(17734),	-- Helm of the Mountain
						i(17736),	-- Rockgrip Gauntlets
					}),
					n(13601, {	-- Tinkerer Gizlock
						i(17719),	-- Inventor's Focal Sword
						i(17717),	-- Megashot Rifle
						i(17718),	-- Gizlock's Hypertech Buckler
					}),
					n(13596, {	-- Rotgrip
						["modelScale"] = 1.5,
						["groups"] = {
							i(17730),	-- Gatorbite Axe
							i(17732),	-- Rotgrip Mantle
							i(17728),	-- Albino Crocscale Boots
						},
					}),
					n(12201, {	-- Princess Theradras
						["modelScale"] = 2,
						["groups"] = {
							i(17780),	-- Blade of Eternal Darkness
							i(17766),	-- Princess Theradras' Scepter
							i(17710),	-- Charstone Dirk
							i(17715),	-- Eye of Theradras
							i(17707),	-- Gemshard Heart
							i(17714),	-- Bracers of the Stone Princess
							i(17711),	-- Elemental Rockridge Leggings
							i(17713),	-- Blackstone Ring
						},
					}),
				},
			}),
		},
	}),
})};