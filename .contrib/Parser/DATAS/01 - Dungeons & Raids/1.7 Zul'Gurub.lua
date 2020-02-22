-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(ZULGURUB, {
		["u"] = 3,	-- Added in later phase
		["description"] = "Over a thousand years ago the powerful Gurubashi Empire was torn apart by a massive civil war. An influential group of troll priests, known as the Atal'ai, called forth the avatar of an ancient and terrible blood god named Hakkar the Soulflayer. Though the priests were defeated and ultimately exiled, the great troll empire collapsed upon itself. The exiled priests fled far to the north, into the Swamp of Sorrows, where they erected a great temple to Hakkar in order to prepare for his arrival into the physical world.",
		["isRaid"] = true,
		["lvl"] = 60,
		["groups"] = {
			n(QUESTS, {
				{
					["itemID"] = 18330,	-- Arcanum of Focus
					["groups"] = {
						{
							["questID"] = 9210,	-- The Savage Guard - Arcanum of Focus
							["qg"] = 15042,		-- Quest Giver: Zanza the Restless
							["groups"] = {
								i(22635),	-- Savage Guard
							},
						},
					},
				},
				{
					["itemID"] = 18331,	-- Arcanum of Protection
					["groups"] = {
						{
							["questID"] = 9208,	-- The Savage Guard - Arcanum of Protection
							["qg"] = 15042,		-- Quest Giver: Zanza the Restless
							["groups"] = {
								i(22635),	-- Savage Guard
							},
						},
					},
				},
				{
					["itemID"] = 18329,	-- Arcanum of Rapidity
					["groups"] = {
						{
							["questID"] = 9209,	-- The Savage Guard - Arcanum of Rapidity
							["qg"] = 15042,		-- Quest Giver: Zanza the Restless
							["groups"] = {
								i(22635),	-- Savage Guard
							},
						},
					},
				},
				{
					["itemID"] = 19724,	-- Primal Hakkari Aegis
					["groups"] = {
						{
							["questID"] = 8071,	-- Paragon's of Power: The Confessor's Mantle
							["qg"] = 14903,		-- Quest Giver: Al'tabim the All-Seeing
							["classes"] = {5},	-- Priest
							["groups"] = {
								i(19841),	-- Zandalar Confessor's Mantle
							},
						},
						{
							["questID"] = 8073,	-- Paragon's of Power: The Madcap's Tunic
							["qg"] = 14905,		-- Quest Giver: Falthir the Sightless
							["classes"] = {4},	-- Rogue
							["groups"] = {
								i(19834),	-- Zandalar Madcap's Tunic
							},
						},
						{
							["questID"] = 8067,	-- Paragon's of Power: The Predator's Mantle
							["qg"] = 14905,		-- Quest Giver: Falthir the Sightless
							["classes"] = {3},	-- Hunter
							["groups"] = {
								i(19831),	-- Zandalar Predator's Mantle
							},
						},
					},
				},
				{
					["itemID"] = 19717,	-- Primal Hakkari Armsplint
					["groups"] = {
						{
							["questID"] = 8056,	-- Paragons of Power: The Augur's Bracers
							["qg"] = 14904,		-- Quest Giver: Maywiki of Zuldazar
							["classes"] = {7},	-- Shaman
							["groups"] = {
								i(19830),	-- Zandalar Augur's Bracers
							},
						},
						{
							["questID"] = 8063,	-- Paragon's of Power: The Madcap's Bracers
							["qg"] = 14905,		-- Quest Giver: Falthir the Sightless
							["classes"] = {4},	-- Rogue
							["groups"] = {
								i(19836),	-- Zandalar Madcap's Bracers
							},
						},
						{
							["questID"] = 8058,	-- Paragon's of Power: The Vindicator's Armguards
							["qg"] = 14902,		-- Quest Giver: Jin'rokh the Breaker
							["classes"] = {1},	-- Warrior
							["groups"] = {
								i(19824),	-- Zandalar Vindicator's Armguards
							},
						},
					},
				},
				{
					["itemID"] = 19716,	-- Primal Hakkari Bindings
					["groups"] = {
						{
							["questID"] = 8053,	-- Paragon's of Power: The Freethinker's Armguards
							["qg"] = 14902,		-- Quest Giver: Jin'rokh the Breaker
							["classes"] = {2},	-- Paladin
							["groups"] = {
								i(19827),	-- Zandalar Freethinker's Armguards
							},
						},
						{
							["questID"] = 8060,	-- Paragon's of Power: The Illusionist's Wraps
							["qg"] = 14903,		-- Quest Giver: Al'tabim the All-Seeing
							["classes"] = {8},	-- Mage
							["groups"] = {
								i(19846),	-- Zandalar Illusionist's Wraps
							},
						},
						{
							["questID"] = 8062,	-- Paragon's of Power: The Predator's Bracers
							["qg"] = 14905,		-- Quest Giver: Falthir the Sightless
							["classes"] = {3},	-- Hunter
							["groups"] = {
								i(19833),	-- Zandalar Predator's Bracers
							},
						},
					},
				},
				{
					["itemID"] = 19719,	-- Primal Hakkari Girdle
					["groups"] = {
						{
							["questID"] = 8074,	-- Paragons of Power: The Augur's Belt
							["qg"] = 14904,		-- Quest Giver: Maywiki of Zuldazar
							["classes"] = {7},	-- Shaman
							["groups"] = {
								i(19829),	-- Zandalar Augur's Belt
							},
						},
						{
							["questID"] = 8072,	-- Paragon's of Power: The Madcap's Mantle
							["qg"] = 14905,		-- Quest Giver: Falthir the Sightless
							["classes"] = {4},	-- Rogue
							["groups"] = {
								i(19835),	-- Zandalar Madcap's Mantle
							},
						},
						{
							["questID"] = 8078,	-- Paragon's of Power: The Vindicator's Belt
							["qg"] = 14902,		-- Quest Giver: Jin'rokh the Breaker
							["classes"] = {1},	-- Warrior
							["groups"] = {
								i(19823),	-- Zandalar Vindicator's Belt
							},
						},
					},
				},
				{
					["itemID"] = 19723,	-- Primal Hakkari Kossack
					["groups"] = {
						{
							["questID"] = 8077,	-- Paragons of Power: The Demoniac's Robes
							["qg"] = 14903,		-- Quest Giver: Al'tabim the All-Seeing
							["classes"] = {9},	-- Warlock
							["groups"] = {
								i(20033),	-- Zandalar Demoniac's Robe
							},
						},
						{
							["questID"] = 8069,	-- Paragon's of Power: The Illusionist's Robes
							["qg"] = 14903,		-- Quest Giver: Al'tabim the All-Seeing
							["classes"] = {8},	-- Mage
							["groups"] = {
								i(20034),	-- Zandalar Illusionist's Robe
							},
						},
						{
							["questID"] = 8079,	-- Paragon's of Power: The Vindicator's Breastplate
							["qg"] = 14902,		-- Quest Giver: Jin'rokh the Breaker
							["classes"] = {1},	-- Warrior
							["groups"] = {
								i(19822),	-- Zandalar Vindicator's Breastplate
							},
						},
					},
				},
				{
					["itemID"] = 19720,	-- Primal Hakkari Sash
					["groups"] = {
						{
							["questID"] = 8070,	-- Paragon's of Power: The Confessor's Bindings
							["qg"] = 14903,		-- Quest Giver: Al'tabim the All-Seeing
							["classes"] = {5},	-- Priest
							["groups"] = {
								i(19842),	-- Zandalar Confessor's Bindings
							},
						},
						{
							["questID"] = 8076,	-- Paragons of Power: The Demoniac's Mantle
							["qg"] = 14903,		-- Quest Giver: Al'tabim the All-Seeing
							["classes"] = {9},	-- Warlock
							["groups"] = {
								i(19849),	-- Zandalar Demoniac's Mantle
							},
						},
						{
							["questID"] = 8064,	-- Paragons of Power: The Haruspex's Belt
							["qg"] = 14904,		-- Quest Giver: Maywiki of Zuldazar
							["classes"] = {9},	-- Warlock
							["groups"] = {
								i(19839),	-- Zandalar Haruspex's Belt
							},
						},
					},
				},
				{
					["itemID"] = 19721,	-- Primal Hakkari Shawl
					["groups"] = {
						{
							["questID"] = 8054,	-- Paragon's of Power: The Freethinker's Belt
							["qg"] = 14902,		-- Quest Giver: Jin'rokh the Breaker
							["classes"] = {2},	-- Paladin
							["groups"] = {
								i(19826),	-- Zandalar Freethinker's Belt
							},
						},
						{
							["questID"] = 8068,	-- Paragon's of Power: The Illusionist's Mantle
							["qg"] = 14903,		-- Quest Giver: Al'tabim the All-Seeing
							["classes"] = {8},	-- Mage
							["groups"] = {
								i(19845),	-- Zandalar Illusionist's Mantle
							},
						},
						{
							["questID"] = 8066,	-- Paragon's of Power: The Predator's Belt
							["qg"] = 14905,		-- Quest Giver: Falthir the Sightless
							["classes"] = {3},	-- Hunter
							["groups"] = {
								i(19832),	-- Zandalar Predator's Belt
							},
						},
					},
				},
				{
					["itemID"] = 19718,	-- Primal Hakkari Stanchion
					["groups"] = {
						{
							["questID"] = 8061,	-- Paragon's of Power: The Confessor's Wraps
							["qg"] = 14903,		-- Quest Giver: Al'tabim the All-Seeing
							["classes"] = {5},	-- Priest
							["groups"] = {
								i(19843),	-- Zandalar Confessor's Wraps
							},
						},
						{
							["questID"] = 8059,	-- Paragons of Power: The Demoniac's Wraps
							["qg"] = 14903,		-- Quest Giver: Al'tabim the All-Seeing
							["classes"] = {9},	-- Warlock
							["groups"] = {
								i(19848),	-- Zandalar Demoniac's Wraps
							},
						},
						{
							["questID"] = 8057,	-- Paragons of Power: The Haruspex's Bracers
							["qg"] = 14904,		-- Quest Giver: Maywiki of Zuldazar
							["classes"] = {9},	-- Warlock
							["groups"] = {
								i(19840),	-- Zandalar Haruspex's Bracers
							},
						},
					},
				},
				{
					["itemID"] = 19722,	-- Primal Hakkari Tabard
					["groups"] = {
						{
							["questID"] = 8075,	-- Paragons of Power: The Augur's Hauberk
							["qg"] = 14904,		-- Quest Giver: Maywiki of Zuldazar
							["classes"] = {7},	-- Shaman
							["groups"] = {
								i(19828),	-- Zandalar Augur's Hauberk
							},
						},
						{
							["questID"] = 8055,	-- Paragon's of Power: The Freethinker's Breastplate
							["qg"] = 14902,		-- Quest Giver: Jin'rokh the Breaker
							["classes"] = {2},	-- Paladin
							["groups"] = {
								i(19825),	-- Zandalar Freethinker's Breastplate
							},
						},
						{
							["questID"] = 8065,	-- Paragons of Power: The Haruspex's Tunic
							["qg"] = 14904,		-- Quest Giver: Maywiki of Zuldazar
							["classes"] = {9},	-- Warlock
							["groups"] = {
								i(19838),	-- Zandalar Haruspex's Tunic
							},
						},
					},
				},
				{
					["itemID"] = 22637,	-- Primal Hakkari Idol
					["groups"] = {
						{
							["itemID"] = 19821,	-- Punctured Voodoo Doll [Druid]
							["groups"] = {
								{
									["questID"] = 19790,	-- Animist's Caress [Druid]
									["qg"] = 15042,		-- Quest Giver: Zanza the Restless
									["groups"] = {
										i(19790),	-- Animist's Caress [Druid]
									},
								},
							},
						},
						{
							["itemID"] = 19814,	-- Punctured Voodoo Doll [Rogue]
							["groups"] = {
								{
									["questID"] = 8186,	-- Death's Embrace [Rogue]
									["qg"] = 15042,		-- Quest Giver: Zanza the Restless
									["groups"] = {
										i(19784),	-- Death's Embrace [Rogue]
									},
								},
							},
						},
						{
							["itemID"] = 19816,	-- Punctured Voodoo Doll [Hunter]
							["groups"] = {
								{
									["questID"] = 8187,	-- Falcon's Call [Hunter]
									["qg"] = 15042,		-- Quest Giver: Zanza the Restless
									["groups"] = {
										i(19785),	-- Falcon's Call [Hunter]
									},
								},
							},
						},
						{
							["itemID"] = 19819,	-- Punctured Voodoo Doll [Warlock]
							["groups"] = {
								{
									["questID"] = 8190,	-- Hoodoo Hex [Warlock]
									["qg"] = 15042,		-- Quest Giver: Zanza the Restless
									["groups"] = {
										i(19788),	-- Hoodoo Hex [Warlock]
									},
								},
							},
						},
						{
							["itemID"] = 19813,	-- Punctured Voodoo Doll [Warrior]
							["groups"] = {
								{
									["questID"] = 8184,	-- Presence of Might [Warrior]
									["qg"] = 15042,		-- Quest Giver: Zanza the Restless
									["groups"] = {
										i(19782),	-- Presence of Might [Warrior]
									},
								},
							},
						},
						{
							["itemID"] = 19818,	-- Punctured Voodoo Doll [Mage]
							["groups"] = {
								{
									["questID"] = 8189,	-- Presence of Sight [Mage]
									["qg"] = 15042,		-- Quest Giver: Zanza the Restless
									["groups"] = {
										i(19787),	-- Presence of Sight [Mage]
									},
								},
							},
						},
						{
							["itemID"] = 19820,	-- Punctured Voodoo Doll [Priest]
							["groups"] = {
								{
									["questID"] = 8191,	-- Prophetic Aura [Priest]
									["qg"] = 15042,		-- Quest Giver: Zanza the Restless
									["groups"] = {
										i(19789),	-- Prophetic Aura [Priest]
									},
								},
							},
						},
						{
							["itemID"] = 19815,	-- Punctured Voodoo Doll [Paladin]
							["groups"] = {
								{
									["questID"] = 8185,	-- Syncretist's Sigil [Paladin]
									["qg"] = 15042,		-- Quest Giver: Zanza the Restless
									["groups"] = {
										i(19783),	-- Syncretist's Sigil [Paladin]
									},
								},
							},
						},
						{
							["itemID"] = 19817,	-- Punctured Voodoo Doll [Shaman]
							["groups"] = {
								{
									["questID"] = 8188,	-- Vodouisant's Vigilant Embrace []
									["qg"] = 15042,		-- Quest Giver: Zanza the Restless
									["groups"] = {
										i(19786),	-- Vodouisant's Vigilant Embrace []
									},
								},
							},
						},
					},
				},
			}),
			n(ZONEDROPS, {
				i(19727),	-- Blood Scythe
				i(19708),	-- Blue Hakkari Bijou
				i(19713),	-- Bronze Hakkari Bijou
				i(19715),	-- Gold Hakkari Bijou
				i(19711),	-- Green Hakkari Bijou
				i(19710),	-- Orange Hakkari Bijou
				i(19712),	-- Purple Hakkari Bijou
				i(19707),	-- Red Hakkari Bijou
				i(19714),	-- Silver Hakkari Bijou
				i(19709),	-- Yellow Hakkari Bijou
				i(19706),	-- Bloodscalp Coin
				i(19701),	-- Gurubashi Coin
				i(19700),	-- Hakkari Coin
				i(19699),	-- Razzashi Coin
				i(19704),	-- Sandfury Coin
				i(19705),	-- Skullsplitter Coin
				i(19702),	-- Vilebranch Coin
				i(19703),	-- Witherbark Coin
				i(19698),	-- Zulian Coin
				i(19908),	-- Sceptre of Smiting
				i(20258),	-- Zulian Ceremonial Staff
				i(20259),	-- Shadow Panther Hide Gloves
				i(19921),	-- Zulian Hacker
				i(20261),	-- Shadow Panther Hide Belt
				i(20263),	-- Gurubashi Helm
				i(19821),	-- Punctured Voodoo Doll [Druid]
				i(19814),	-- Punctured Voodoo Doll [Rogue]
				i(19816),	-- Punctured Voodoo Doll [Hunter]
				i(19819),	-- Punctured Voodoo Doll [Warlock]
				i(19813),	-- Punctured Voodoo Doll [Warrior]
				i(19818),	-- Punctured Voodoo Doll [Mage]
				i(19820),	-- Punctured Voodoo Doll [Priest]
				i(19815),	-- Punctured Voodoo Doll [Paladin]
				i(19817),	-- Punctured Voodoo Doll [Shaman]
			}),
			n(14517, {	-- High Priestess Jeklik
				i(19918),	-- Jeklik's Crusher
				i(19915),	-- Zulian Defender
				i(22713),	-- Zulian Scepter of Rites
				i(22718),	-- Blooddrenched Mask
				i(22720),	-- Zulian Headdress
				i(19923),	-- Jeklik's Opaline Talisman
				i(19928),	-- Animist's Spaulders
				i(22711),	-- Cloak of the Hakkari Worshipers
				i(22712),	-- Might of the Tribe
				i(22715),	-- Gloves of the Tormented
				i(22714),	-- Sacrificial Gauntlets
				i(22716),	-- Belt of Untapped Power
				i(20265),	-- Peacekeeper Boots
				i(20262),	-- Seafury Boots
				i(22721),	-- Band of Servitude
				i(19920),	-- Primalist's Band
				i(22722),	-- Seal of the Gurubashi Berserker
			}),
			n(14510, {	-- High Priestess Mar'li
				i(19927),	-- Mar'li's Touch
				i(22713),	-- Zulian Scepter of Rites
				i(22718),	-- Blooddrenched Mask
				i(22720),	-- Zulian Headdress
				i(22711),	-- Cloak of the Hakkari Worshipers
				i(22712),	-- Might of the Tribe
				i(20032),	-- Flowing Ritual Robes
				i(22715),	-- Gloves of the Tormented
				i(22714),	-- Sacrificial Gauntlets
				i(22716),	-- Belt of Untapped Power
				i(19919),	-- Bloodstained Greaves
				i(19925),	-- Band of Jin
				i(22721),	-- Band of Servitude
				i(22722),	-- Seal of the Gurubashi Berserker
				i(19930),	-- Mar'li's Eye
				i(19871),	-- Talisman of Protection
			}),
			n(14507, {	-- High Priest Venoxis
				i(19903),	-- Fang of Venoxis
				i(22713),	-- Zulian Scepter of Rites
				i(19900),	-- Zulian Stone Axe
				i(22718),	-- Blooddrenched Mask
				i(22720),	-- Zulian Headdress
				i(22711),	-- Cloak of the Hakkari Worshipers
				i(22712),	-- Might of the Tribe
				i(19907),	-- Zulian Tigerhide Cloak
				i(19904),	-- Runed Bloodstained Hauberk
				i(22715),	-- Gloves of the Tormented
				i(22714),	-- Sacrificial Gauntlets
				i(22716),	-- Belt of Untapped Power
				i(19906),	-- Blooddrenched Footpads
				i(22721),	-- Band of Servitude
				i(22722),	-- Seal of the Gurubashi Berserker
				i(19905),	-- Zanzil's Band
			}),
			n(11382, {	-- Bloodlord Mandokir
				i(19872),	-- Swift Razzashi Raptor
				i(19867),	-- Bloodlord's Defender
				i(19874),	-- Halberd of Smithing
				i(20038),	-- Mandokir's Sting
				i(19865),	-- Warblade of the Hakkari
				i(19870),	-- Hakkari Loa Cloak
				i(19878),	-- Bloodsoaked Pauldrons
				i(19869),	-- Blooddrenched Grips
				i(19877),	-- Animist's Leggings
				i(19895),	-- Bloodtinged Kilt
				i(19873),	-- Overlord's Crimson Band
				i(19863),	-- Primalist's Seal
				i(19893),	-- Zanzil's Seal
				i(22637),	-- Primal Hakkari Idol
			}),
			i(19931, {	-- Gurubashi Mojo Madness
				recipe(24266),	-- Gurubashi Mojo Madness
				n(15082, {	-- Gri'lek
					i(19939),	-- Gri'lek's Blood
					i(19961),	-- Gri'lek's Grinder
					i(19962),	-- Gri'lek Carver
				}),
				n(15083, {	-- Hazza'rah
					i(19942),	-- Hazza'rah's Dream Thread
					i(19967),	-- Thoughtblighter
					i(19968),	-- Fiery Retributer
				}),
				n(15084, {	-- Renataki
					i(19940),	-- Renataki's Tooth
					i(19963),	-- Pitchfork of Madness
					i(19964),	-- Renataki's Soul Conduit
				}),
				n(15085, {	-- Wushoolay
					i(19941),	-- Wushoolay's Mane
					i(19965),	-- Wushoolay's Poker
					i(19993),	-- Hoodoo Hunting Bow
				}),
				{
					["itemID"] = 19821,	-- Punctured Voodoo Doll [Druid]
					["groups"] = {
						i(19955),	-- Wushoolay's Charm of Nature [Druid]
					},
				},
				{
					["itemID"] = 19814,	-- Punctured Voodoo Doll [Rogue]
					["groups"] = {
						i(19954),	-- Renataki's Charm of Trickery [Rogue]
					},
				},
				{
					["itemID"] = 19816,	-- Punctured Voodoo Doll [Hunter]
					["groups"] = {
						i(19953),	-- Renataki's Charm of Beasts [Hunter]
					},
				},
				{
					["itemID"] = 19819,	-- Punctured Voodoo Doll [Warlock]
					["groups"] = {
						i(19957),	-- Hazza'rah's Charm of Destruction [Warlock]
					},
				},
				{
					["itemID"] = 19813,	-- Punctured Voodoo Doll [Warrior]
					["groups"] = {
						i(19951),	-- Gri'lek's Charm of Might [Warrior]
					},
				},
				{
					["itemID"] = 19818,	-- Punctured Voodoo Doll [Mage]
					["groups"] = {
						i(19959),	-- Hazza'rah's Charm of Magic [Mage]
					},
				},
				{
					["itemID"] = 19820,	-- Punctured Voodoo Doll [Priest]
					["groups"] = {
						i(19958),	-- Hazza'rah's Charm of Healing [Priest]
					},
				},
				{
					["itemID"] = 19815,	-- Punctured Voodoo Doll [Paladin]
					["groups"] = {
						i(19952),	-- Gri'lek's Charm of Valor [Paladin]
					},
				},
				{
					["itemID"] = 19817,	-- Punctured Voodoo Doll [Shaman]
					["groups"] = {
						i(19956),	-- Wushoolay's Charm of Spirits [Shaman]
					},
				},
			}),
			n(14509, {	-- High Priest Thekal
				i(19902),	-- Swift Zulian Tiger
				i(19896),	-- Thekal's Grasp
				i(22713),	-- Zulian Scepter of Rites
				i(19901),	-- Zulian Slicer
				i(22718),	-- Blooddrenched Mask
				i(22720),	-- Zulian Headdress
				i(22711),	-- Cloak of the Hakkari Worshipers
				i(22712),	-- Might of the Tribe
				i(22715),	-- Gloves of the Tormented
				i(22714),	-- Sacrificial Gauntlets
				i(22716),	-- Belt of Untapped Power
				i(20266),	-- Peacekeeper Leggings
				i(19899),	-- Ritualistic Legguards
				i(20260),	-- Seafury Leggings
				i(19897),	-- Betrayer's Boots
				i(22721),	-- Band of Servitude
				i(19898),	-- Seal of Jin
				i(22722),	-- Seal of the Gurubashi Berserker
			}),
			n(15114, {	-- Gahz'ranka
				i(19944),	-- Nat Pagle's Fish Terminator
				i(19946),	-- Tigule's Harpoon
				i(19945),	-- Foror's Eyepatch
				i(19947),	-- Nat Pagle's Broken Reel
				i(22739),	-- Tome of Polymorph: Turtle
			}),
			n(14515, {	-- High Priestess Arlokk
				i(19914),	-- Panther Hide Sack
				i(19910),	-- Arlokk's Grasp
				i(19922),	-- Arlokk's Hoodoo Stick
				i(19909),	-- Will of Arlokk
				i(22713),	-- Zulian Scepter of Rites
				i(22718),	-- Blooddrenched Mask
				i(22720),	-- Zulian Headdress
				i(22711),	-- Cloak of the Hakkari Worshipers
				i(22712),	-- Might of the Tribe
				i(22715),	-- Gloves of the Tormented
				i(22714),	-- Sacrificial Gauntlets
				i(22716),	-- Belt of Untapped Power
				i(19913),	-- Bloodsoaked Greaves
				i(22721),	-- Band of Servitude
				i(19912),	-- Overlord's Onyx Band
				i(22722),	-- Seal of the Gurubashi Berserker
			}),
			n(11380, {	-- Jin'do the Hexxer
				i(19891),	-- Jin'do's Bag of Whammies
				i(19890),	-- Jin'do's Hexxer
				i(19884),	-- Jin'do's Judgement
				i(19886),	-- The Hexxer's Cover
				i(19885),	-- Jin'do's Evil Eye
				i(19888),	-- Overlord's Embrace
				i(19889),	-- Blooddrenched Leggings
				i(19875),	-- Bloodstained Coif
				i(19894),	-- Bloodsoaked Gauntlets
				i(19929),	-- Bloodtinged Gloves
				i(19887),	-- Bloodstained Legplates
				i(19892),	-- Animist's Boots
				i(22637),	-- Primal Hakkari Idol
			}),
			n(14834, {	-- Hakkar the Soulflayer
				i(19802, {	-- Heart of Hakkar
					["questID"] = 8183,	-- The Heart of Hakkar
					["groups"] = {
						i(19948),	-- Zandalarian Hero Badge
						i(19950),	-- Zandalarian Hero Charm
						i(19949),	-- Zandalarian Hero Medallion
					},
				}),
				i(19862),	-- Aegis of the Blood God
				i(19852),	-- Ancient Hakkari Manslayer
				i(19864),	-- Bloodcaller
				i(19859),	-- Fang of the Faceless
				i(19853),	-- Gurubashi Dwarf Destroyer
				i(19861),	-- Touch of Chaos
				i(19865),	-- Warblade of the Hakkari
				i(19866),	-- Warblade of the Hakkari
				i(19854),	-- Zin'rokh, Destroyer of Worlds
				i(19876),	-- Soul Corrupter's Necklace
				i(19856),	-- The Eye of Hakkar
				i(19857),	-- Cloak of Consumption
				i(20264),	-- Peacekeeper Gauntlets
				i(20257),	-- Seafury Gauntlets
				i(19855),	-- Bloodsoaked Legplates
			}),
		},
	}),
};