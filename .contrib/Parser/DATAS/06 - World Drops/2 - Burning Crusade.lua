-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
_.WorldDrops = { un(TBC_PHASE_ONE, tier(2, {	-- Burning Crusade
	category(23, {	-- Helms
		i(31145),	-- Headdress of the Sleeper
		i(31222),	-- Headdress of Inner Rage
		i(31272),	-- Crown of Endless Knowledge
		i(31281),	-- Mask of Veiled Death
		i(31330),	-- Lightning Crown
		i(31333),	-- The Night Watchman
	}),
	filter(51,   {	-- Neck
		i(25064),	-- Amethyst Pendant
		i(31196),	-- Amulet of Sanctification
		i(31178),	-- Amulet of Unstable Power
		i(25058),	-- Anglesite Choker
		i(31338),	-- Charlotte's Ivy
		i(31321),	-- Choker of Repentance
		i(25070),	-- Coral Beads
		i(25067),	-- Diopside Beads
		i(25069),	-- Epidote Stone Necklace
		i(25059),	-- Fire Opal Collar
		i(25061),	-- Hiddenite Necklace
		i(25068),	-- Kunzite Necklace
		i(25063),	-- Multi-Colored Beads
		i(31275),	-- Necklace of Trophies
		i(31147),	-- Pendant of Cunning
		i(25066),	-- Pink Sapphire Necklace
		i(25060),	-- Sunstone Necklace
		i(25071),	-- Tanzanite Pendant
		i(25065),	-- Turquoise Brooch
		i(25062),	-- Zircon Amulet
	}),
	category(24, {	-- Shoulders
		i(24820),	-- Felstone Spaulders
		i(31148),	-- Demon Hide Spaulders
		i(31190),	-- The Dreamer's Shoulderpads
		i(31294),	-- Pauldrons of Surging Mana
	}),
	category(27, {	-- Bracers
		i(24901),	-- Tortured Bracer
		i(31175),	-- Blade Dancer's Wristguards
		i(31284),	-- Bracers of Recklessness
	}),
	category(26, {	-- Gauntlets
		i(31137),	-- Gauntlets of Purification
		i(31126),	-- Gloves of Ferocity
		i(31149),	-- Gloves of Pandemonium
		i(31150),	-- Gloves of Piety
		i(31180),	-- Gauntlets of the Skullsplitter
		i(31280),	-- Thundercaller's Gauntlets
	}),
	category(25, {	-- Chest
		i(24808),	-- Unyielding Chain Vest
		i(31127),	-- Hauberk of Totemic Rage
		i(31136),	-- Breastplate of Blade Turning
		i(31152),	-- Chestguard of Illumination
		i(31282),	-- Shroud of Spiritual Purity
		i(31285),	-- Chestguard of the Talon
		i(31286),	-- Breastplate of Rapid Striking
		i(31295),	-- Chestguard of the Dark Stalker
		i(31297),	-- Robe of the Crimson Order
		i(31320),	-- Chestguard of Exile
		i(31340),	-- Will of Edward the Odd
	}),
	category(28, {	-- Belts
		i(31131),	-- Sash of Silent Blades
		i(31138),	-- Storm Lord's Girdle
		i(31151),	-- Girdle of Siege
		i(31202),	-- Girdle of Divine Blessing
		i(31283),	-- Sash of Sealed Fate
		i(31293),	-- Girdle of Gale Force
		i(24886),	-- Skettis Belt
	}),
	category(29, {	-- Legs
		i(31133),	-- Leggings of Concentrated Darkness
		i(31226),	-- Leggings of the Sly
		i(31237),	-- Elekk Hide Leggings
		i(31240),	-- Scales of the Beast
		i(31298),	-- Legguards of the Shattered Hand
		i(31306),	-- Leggings of the Sacred Crest
		i(31328),	-- Leggings of Beast Mastery
		i(31335),	-- Kilt of Living Growth
		i(31343),	-- Kamaei's Cerulean Skirt
	}),
	category(67, {	-- Boots
		i(31125),	-- Boots of the Decimator
		i(31173),	-- Boots of Savagery
		i(31187),	-- Boots of the Pathfinder
		i(31230),	-- Abyss Walker's Boots
		i(31276),	-- Boots of Zealotry
		i(31288),	-- The Master's Treads
	}),
	category(68, {	-- Cloaks
		i(25030),	-- Silky Velvet Cloak
		i(25031),	-- Silvermoon Royal Cloak
		i(25032),	-- Hellfire Cloak
		i(25033),	-- Scavenger's Cloak
		i(25034),	-- Elementalist Cloak
		i(25035),	-- Silver-Lined Cloak
		i(25036),	-- Boulderfist Cloak
		i(25037),	-- Patched Cape
		i(25038),	-- Forest Shroud
		i(25039),	-- Farseer Cloak
		i(25040),	-- Murkblood Cape
		i(25041),	-- Ambusher's Cloak
		i(25042),	-- Nether Cloak
		i(25043),	-- Amber Cape
		i(31140),	-- Cloak of Entropy
		i(31143),	-- Shroud of Frenzy
		i(31255),	-- Cloak of the Craft
		i(31329),	-- Lifegiving Cloak
	}),
	filter(52,   {	-- Finger
		i(25055),	-- Alexandrite Ring
		i(25056),	-- Almandine Ring
		i(25057),	-- Amber Band
		i(25045),	-- Azurite Ring
		i(31290),	-- Band of Dominion
		i(31319),	-- Band of Impenetrable Defenses
		i(31258),	-- Band of Sorrow
		i(25051),	-- Blue Topaz Band
		i(25052),	-- Hauyne Ring
		i(25053),	-- Lazuli Ring
		i(31339),	-- Lola's Eve
		i(25050),	-- Moldavite Ring
		i(31277),	-- Pathfinder's Band
		i(25044),	-- Rubellite Ring
		i(25049),	-- Scheelite Ring
		i(25048),	-- Smoky Quartz Ring
		i(25054),	-- Sodalite Band
		i(25046),	-- Spined Ring
		i(25047),	-- Tourmaline Loop
		i(31326),	-- Truestrike Ring
	}),
	category(47, {	-- Armor Kits
		["description"] = "Not armor kits as in item enhancement, but rather sets of random armor pieces that complete a set.",
		["groups"] = {
			i(24575),	-- Outlander's Girdle
			i(24582),	-- Outlander's Boots
			i(24583),	-- Outlander's Tunic
			i(24584),	-- Outlander's Gloves
			i(24585),	-- Outlander's Facewrap
			i(24586),	-- Outlander's Leggings
			i(24587),	-- Outlander's Pauldrons
			i(24588),	-- Outlander's Bracers
			i(24589),	-- Fireheart Girdle
			i(24590),	-- Fireheart Boots
			i(24591),	-- Fireheart Chestpiece
			i(24592),	-- Fireheart Gloves
			i(24593),	-- Fireheart Skullcap
			i(24594),	-- Fireheart Leggings
			i(24595),	-- Fireheart Shoulderpads
			i(24596),	-- Fireheart Bracers
			i(24597),	-- Starfire Sash
			i(24598),	-- Starfire Sandals
			i(24599),	-- Starfire Vest
			i(24600),	-- Starfire Gloves
			i(24601),	-- Starfire Circlet
			i(24602),	-- Starfire Trousers
			i(24603),	-- Starfire Mantle
			i(24604),	-- Starfire Wristwraps
			i(24605),	-- Laughing Skull Waistguard
			i(24606),	-- Laughing Skull Boots
			i(24607),	-- Laughing Skull Tunic
			i(24608),	-- Laughing Skull Gloves
			i(24609),	-- Laughing Skull Cap
			i(24610),	-- Laughing Skull Pants
			i(24611),	-- Laughing Skull Shoulderpads
			i(24612),	-- Laughing Skull Bracelets
			i(24613),	-- Vindicator Belt
			i(24614),	-- Vindicator Boots
			i(24615),	-- Vindicator Tunic
			i(24616),	-- Vindicator Gloves
			i(24617),	-- Vindicator Cap
			i(24618),	-- Vindicator Pants
			i(24619),	-- Vindicator Shoulderpads
			i(24620),	-- Vindicator Bracers
			i(24621),	-- Slavehandler Belt
			i(24622),	-- Slavehandler Footpads
			i(24623),	-- Slavehandler Jerkin
			i(24624),	-- Slavehandler Handwraps
			i(24625),	-- Slavehandler Cap
			i(24626),	-- Slavehandler Pants
			i(24627),	-- Slavehandler Amice
			i(24628),	-- Slavehandler Wristguards
			i(24629),	-- Feralfen Sash
			i(24630),	-- Feralfen Sandals
			i(24631),	-- Feralfen Jerkin
			i(24632),	-- Feralfen Hand
			i(24633),	-- Feralfen Hood
			i(24634),	-- Feralfen Pants
			i(24635),	-- Feralfen Amice
			i(24636),	-- Feralfen Cuffs
			i(24637),	-- Mistyreed Belt
			i(24638),	-- Mistyreed Boots
			i(24639),	-- Mistyreed Tunic
			i(24640),	-- Mistyreed Gloves
			i(24641),	-- Mistyreed Hood
			i(24642),	-- Mistyreed Pants
			i(24643),	-- Mistyreed Shoulderpads
			i(24644),	-- Mistyreed Bracers
			i(24645),	-- Astralaan Belt
			i(24646),	-- Astralaan Boots
			i(24647),	-- Astralaan Robe
			i(24648),	-- Astralaan Gloves
			i(24649),	-- Astralaan Headdress
			i(24650),	-- Astralaan Pants
			i(24651),	-- Astralaan Shoulderpads
			i(24652),	-- Astralaan Bracer
			i(24653),	-- Consortium Sash
			i(24654),	-- Consortium Boot
			i(24655),	-- Consortium Robe
			i(24656),	-- Consortium Gloves
			i(24657),	-- Consortium Hood
			i(24658),	-- Consortium Pants
			i(24659),	-- Consortium Mantle
			i(24660),	-- Consortium Bracer
			i(24661),	-- Shadow Council Chain
			i(24662),	-- Shadow Council Boots
			i(24663),	-- Shadow Council Tunic
			i(24664),	-- Shadow Council Gloves
			i(24665),	-- Shadow Council Cowl
			i(24666),	-- Shadow Council Pants
			i(24667),	-- Shadow Council Mantle
			i(24668),	-- Shadow Council Bracer
			i(24669),	-- Eldr'naan Belt
			i(24670),	-- Eldr'naan Boots
			i(24671),	-- Eldr'naan Jerkin
			i(24672),	-- Eldr'naan Gloves
			i(24673),	-- Eldr'naan Hood
			i(24674),	-- Eldr'naan Pants
			i(24675),	-- Eldr'naan Shoulderpads
			i(24676),	-- Eldr'naan Bracelets
			i(24677),	-- Archmage Belt
			i(24678),	-- Archmage Slippers
			i(24679),	-- Archmage Robe
			i(24680),	-- Archmage Gloves
			i(24681),	-- Archmage Headpiece
			i(24682),	-- Archmage Pants
			i(24683),	-- Archmage Mantle
			i(24684),	-- Archmage Bracelets
			i(24685),	-- Elementalist Belt
			i(24686),	-- Elementalist Boots
			i(24687),	-- Elementalist Tunic
			i(24688),	-- Elementalist Gloves
			i(24689),	-- Elementalist Skullcap
			i(24690),	-- Elementalist Leggings
			i(24691),	-- Elementalist Mantle
			i(24692),	-- Elementalist Bracelets
			i(24693),	-- Bonechewer Pelt-Girdle
			i(24694),	-- Bonechewer Shredboots
			i(24695),	-- Bonechewer Chestpiece
			i(24696),	-- Bonechewer Spikegloves
			i(24697),	-- Bonechewer Skincloak
			i(24698),	-- Bonechewer Ripleggings
			i(24699),	-- Bonechewer Shoulderguards
			i(24700),	-- Bonechewer Bands
			i(24701),	-- Haal'eshi Cord
			i(24702),	-- Haal'eshi Boots
			i(24703),	-- Haal'eshi Jerkin
			i(24704),	-- Haal'eshi Gloves
			i(24705),	-- Haal'eshi Hat
			i(24706),	-- Haal'eshi Leggings
			i(24707),	-- Haal'eshi Pauldrons
			i(24708),	-- Haal'eshi Bindings
			i(24709),	-- Vengeance Belt
			i(24710),	-- Vengeance Boots
			i(24711),	-- Vengeance Chestpiece
			i(24712),	-- Vengeance Gloves
			i(24713),	-- Vengeance Helm
			i(24714),	-- Vengeance Legguards
			i(24715),	-- Vengeance Pauldrons
			i(24716),	-- Vengeance Bands
			i(24717),	-- Dreghood Belt
			i(24718),	-- Dreghood Boots
			i(24719),	-- Dreghood Chestpiece
			i(24720),	-- Dreghood Gloves
			i(24721),	-- Dreghood Cowl
			i(24722),	-- Dreghood Trousers
			i(24723),	-- Dreghood Pauldrons
			i(24724),	-- Dreghood Bands
			i(24725),	-- Dementia Cord
			i(24726),	-- Dementia Boots
			i(24727),	-- Dementia Vest
			i(24728),	-- Dementia Gloves
			i(24729),	-- Dementia Hood
			i(24730),	-- Dementia Trousers
			i(24731),	-- Dementia Shoulderguards
			i(24732),	-- Dementia Armguards
			i(24733),	-- Sunroc Waistband
			i(24734),	-- Sunroc Boots
			i(24735),	-- Sunroc Chestpiece
			i(24736),	-- Sunroc Gloves
			i(24737),	-- Sunroc Mask
			i(24738),	-- Sunroc Pants
			i(24739),	-- Sunroc Shoulderguards
			i(24740),	-- Sunroc Armguards
			i(24741),	-- Ranger Belt
			i(24742),	-- Ranger Boots
			i(24743),	-- Ranger Jerkin
			i(24744),	-- Ranger Gloves
			i(24745),	-- Ranger Hat
			i(24746),	-- Ranger Pants
			i(24747),	-- Ranger Pauldrons
			i(24748),	-- Ranger Armguards
			i(24749),	-- Daggerfen Belt
			i(24750),	-- Daggerfen Boots
			i(24751),	-- Daggerfen Battlevest
			i(24752),	-- Daggerfen Gloves
			i(24753),	-- Daggerfen Cowl
			i(24754),	-- Daggerfen Stitchpants
			i(24755),	-- Daggerfen Pauldrons
			i(24756),	-- Daggerfen Bindings
			i(24757),	-- Umbrafen Waistband
			i(24758),	-- Umbrafen Boots
			i(24759),	-- Umbrafen Tunic
			i(24760),	-- Umbrafen Gloves
			i(24761),	-- Umbrafen Cap
			i(24762),	-- Umbrafen Britches
			i(24763),	-- Umbrafen Shoulderguards
			i(24764),	-- Umbrafen Bindings
			i(24765),	-- Clefthoof Belt
			i(24766),	-- Clefthoof Wanderboots
			i(24767),	-- Clefthoof Hidemantle
			i(24768),	-- Clefthoof Gloves
			i(24769),	-- Clefthoof Cover
			i(24770),	-- Clefthoof Britches
			i(24771),	-- Clefthoof Shoulderguards
			i(24772),	-- Clefthoof Bracers
			i(24773),	-- Boneshredder Belt
			i(24774),	-- Boneshredder Boots
			i(24775),	-- Boneshredder Jerkin
			i(24776),	-- Boneshredder Gloves
			i(24777),	-- Boneshredder Skullcap
			i(24778),	-- Boneshredder Britches
			i(24779),	-- Boneshredder Shoulderguards
			i(24780),	-- Boneshredder Wristguards
			i(24781),	-- Murkblood Belt
			i(24783),	-- Murkblood Boots
			i(24784),	-- Murkblood Chestpiece
			i(24785),	-- Murkblood Gloves
			i(24786),	-- Murkblood Cover
			i(24787),	-- Murkblood Pants
			i(24788),	-- Murkblood Shoulderguards
			i(24789),	-- Murkblood Bracers
			i(24790),	-- Expedition Girdle
			i(24791),	-- Expedition Boots
			i(24792),	-- Expedition Tunic
			i(24793),	-- Expedition Gloves
			i(24794),	-- Expedition Hood
			i(24795),	-- Expedition Pants
			i(24796),	-- Expedition Shoulderguards
			i(24797),	-- Expedition Bracers
			i(24798),	-- Dragonhawk Belt
			i(24799),	-- Dragonhawk Boots
			i(24800),	-- Dragonhawk Tunic
			i(24801),	-- Dragonhawk Gloves
			i(24802),	-- Dragonhawk Hat
			i(24803),	-- Dragonhawk Pants
			i(24804),	-- Dragonhawk Shoulderguards
			i(24805),	-- Dragonhawk Bands
			i(24806),	-- Unyielding Waistband
			i(24807),	-- Unyielding Footwraps
			i(24809),	-- Unyielding Fists
			i(24810),	-- Unyielding Helm
			i(24811),	-- Unyielding Leggings
			i(24812),	-- Unyielding Spaulders
			i(24813),	-- Unyielding Bindings
			i(24814),	-- Felstone Waistband
			i(24815),	-- Felstone Greaves
			i(24816),	-- Felstone Chain Vest
			i(24817),	-- Felstone Gauntlets
			i(24818),	-- Felstone Helm
			i(24819),	-- Felstone Leggings
			i(24821),	-- Felstone Bindings
			i(24822),	-- Netherstalker Belt
			i(24823),	-- Netherstalker Greaves
			i(24824),	-- Netherstalker Armor
			i(24825),	-- Netherstalker Gloves
			i(24826),	-- Netherstalker Helmet
			i(24827),	-- Netherstalker Legguards
			i(24828),	-- Netherstalker Mantle
			i(24829),	-- Netherstalker Bracer
			i(24830),	-- Nexus-Strider Belt
			i(24831),	-- Nexus-Strider Greaves
			i(24832),	-- Nexus-Strider Breastplate
			i(24833),	-- Nexus-Strider Gloves
			i(24834),	-- Nexus-Strider Helmet
			i(24835),	-- Nexus-Strider Legwraps
			i(24836),	-- Nexus-Strider Mantle
			i(24837),	-- Nexus-Strider Bracer
			i(24838),	-- Wrathfin Waistband
			i(24839),	-- Wrathfin Greaves
			i(24840),	-- Wrathfin Armor
			i(24841),	-- Wrathfin Gloves
			i(24842),	-- Wrathfin Helmet
			i(24843),	-- Wrathfin Legguards
			i(24844),	-- Wrathfin Mantle
			i(24845),	-- Wrathfin Bindings
			i(24846),	-- Fenclaw Waistband
			i(24847),	-- Fenclaw Footwraps
			i(24848),	-- Fenclaw Armor
			i(24849),	-- Fenclaw Fists
			i(24850),	-- Fenclaw Helm
			i(24851),	-- Fenclaw Legguards
			i(24852),	-- Fenclaw Mantle
			i(24853),	-- Fenclaw Bindings
			i(24854),	-- Marshcreeper Belt
			i(24855),	-- Marshcreeper Sludgeboots
			i(24856),	-- Marshcreeper Fen-Vest
			i(24857),	-- Marshcreeper Gloves
			i(24858),	-- Marshcreeper Helm
			i(24859),	-- Marshcreeper Leggings
			i(24860),	-- Marshcreeper Mantle
			i(24861),	-- Marshcreeper Bracelets
			i(24862),	-- Blood Knight Girdle
			i(24863),	-- Blood Knight Boots
			i(24864),	-- Blood Knight Breastplate
			i(24865),	-- Blood Knight Gauntlets
			i(24866),	-- Blood Knight Helm
			i(24867),	-- Blood Knight Greaves
			i(24868),	-- Blood Knight Pauldrons
			i(24869),	-- Blood Knight Bracers
			i(24870),	-- Ironspine Belt
			i(24871),	-- Ironspine Greaves
			i(24872),	-- Ironspine Chain Vest
			i(24873),	-- Ironspine Gloves
			i(24874),	-- Ironspine Helm
			i(24875),	-- Ironspine Legguards
			i(24876),	-- Ironspine Shoulderguards
			i(24877),	-- Ironspine Bracelets
			i(24878),	-- Der'izu Belt
			i(24879),	-- Der'izu Greaves
			i(24880),	-- Der'izu Chestpiece
			i(24881),	-- Der'izu Fists
			i(24882),	-- Der'izu Helm
			i(24883),	-- Der'izu Legguards
			i(24884),	-- Der'izu Spaulders
			i(24885),	-- Der'izu Bracer
			i(24887),	-- Skettis Footwraps
			i(24888),	-- Skettis Chestpiece
			i(24889),	-- Skettis Gauntlets
			i(24890),	-- Skettis Helmet
			i(24891),	-- Skettis Legguards
			i(24892),	-- Skettis Spaulders
			i(24893),	-- Skettis Bracer
			i(24894),	-- Sundered Waistband
			i(24895),	-- Sundered Footwraps
			i(24896),	-- Sundered Chestpiece
			i(24897),	-- Sundered Gauntlets
			i(24898),	-- Sundered Helmet
			i(24899),	-- Sundered Legguards
			i(24900),	-- Sundered Spaulders
			i(24902),	-- Talhide Stitched-Belt
			i(24903),	-- Talhide Lined-Boots
			i(24904),	-- Talhide Chestpiece
			i(24905),	-- Talhide Lined-Gloves
			i(24906),	-- Talhide Helmet
			i(24907),	-- Talhide Lined-Leggings
			i(24908),	-- Talhide Shoulderguards
			i(24909),	-- Talhide Lined-Bracers
			i(24910),	-- Netherstorm Belt
			i(24911),	-- Netherstorm Greaves
			i(24912),	-- Netherstorm Chestpiece
			i(24913),	-- Netherstorm Gauntlets
			i(24914),	-- Netherstorm Helm
			i(24915),	-- Netherstorm Legguards
			i(24916),	-- Netherstorm Shoulderguards
			i(24917),	-- Netherstorm Bracer
			i(24918),	-- Grimscale Belt
			i(24919),	-- Grimscale Sabatons
			i(24920),	-- Grimscale Armor
			i(24921),	-- Grimscale Gauntlets
			i(24922),	-- Grimscale Helm
			i(24923),	-- Grimscale Legguards
			i(24924),	-- Grimscale Pauldrons
			i(24925),	-- Grimscale Vambraces
			i(24926),	-- Ango'rosh Belt
			i(24927),	-- Ango'rosh Sabatons
			i(24928),	-- Ango'rosh Breastplate
			i(24929),	-- Ango'rosh Gauntlets
			i(24930),	-- Ango'rosh Helm
			i(24931),	-- Ango'rosh Legguards
			i(24932),	-- Ango'rosh Pauldrons
			i(24933),	-- Ango'rosh Vambraces
			i(24934),	-- Darkcrest Belt
			i(24935),	-- Darkcrest Sabatons
			i(24936),	-- Darkcrest Breastplate
			i(24937),	-- Darkcrest Gauntlets
			i(24938),	-- Darkcrest Helm
			i(24939),	-- Darkcrest Legguards
			i(24940),	-- Darkcrest Pauldrons
			i(24941),	-- Darkcrest Bracers
			i(24942),	-- Bloodscale Belt
			i(24943),	-- Bloodscale Sabatons
			i(24944),	-- Bloodscale Breastplate
			i(24945),	-- Bloodscale Gauntlets
			i(24946),	-- Bloodscale Helm
			i(24947),	-- Bloodscale Legguards
			i(24948),	-- Bloodscale Pauldrons
			i(24949),	-- Bloodscale Bracers
			i(24950),	-- Bogslayer Belt
			i(24951),	-- Bogslayer Sabatons
			i(24952),	-- Bogslayer Breastplate
			i(24953),	-- Bogslayer Gauntlets
			i(24954),	-- Bogslayer Helm
			i(24955),	-- Bogslayer Legplates
			i(24956),	-- Bogslayer Pauldrons
			i(24957),	-- Bogslayer Bracers
			i(24958),	-- Khan'aish Girdle
			i(24959),	-- Khan'aish Greaves
			i(24960),	-- Khan'aish Breastplate
			i(24961),	-- Khan'aish Gloves
			i(24962),	-- Khan'aish Helmet
			i(24963),	-- Khan'aish Legplates
			i(24964),	-- Khan'aish Epaulets
			i(24965),	-- Khan'aish Bracers
			i(24966),	-- Talonguard Girdle
			i(24967),	-- Talonguard Greaves
			i(24968),	-- Talonguard Armor
			i(24969),	-- Talonguard Gloves
			i(24970),	-- Talonguard Helmet
			i(24971),	-- Talonguard Legplates
			i(24972),	-- Talonguard Epaulets
			i(24973),	-- Talonguard Bracers
			i(24974),	-- Reaver Girdle
			i(24975),	-- Reaver Greaves
			i(24976),	-- Reaver Armor
			i(24977),	-- Reaver Gloves
			i(24978),	-- Reaver Helmet
			i(24979),	-- Reaver Legplates
			i(24980),	-- Reaver Epaulets
			i(24981),	-- Reaver Bracers
			i(24982),	-- Boulderfist Belt
			i(24983),	-- Boulderfist Greaves
			i(24984),	-- Boulderfist Armor
			i(24985),	-- Boulderfist Gloves
			i(24986),	-- Boulderfist Helm
			i(24987),	-- Boulderfist Legplates
			i(24988),	-- Boulderfist Epaulets
			i(24989),	-- Boulderfist Bracers
			i(24990),	-- Warmaul Belt
			i(24991),	-- Warmaul Greaves
			i(24992),	-- Warmaul Breastplate
			i(24993),	-- Warmaul Gloves
			i(24994),	-- Warmaul Helmet
			i(24995),	-- Warmaul Legplates
			i(24996),	-- Warmaul Epaulets
			i(24997),	-- Warmaul Vambraces
			i(24998),	-- Bloodfist Girdle
			i(24999),	-- Bloodfist Greaves
			i(25000),	-- Bloodfist Breastplate
			i(25001),	-- Bloodfist Gloves
			i(25002),	-- Bloodfist Helmet
			i(25003),	-- Bloodfist Legplates
			i(25004),	-- Bloodfist Epaulets
			i(25005),	-- Bloodfist Vambraces
			i(25006),	-- Conqueror's Girdle
			i(25007),	-- Conqueror's Greaves
			i(25008),	-- Conqueror's Breastplate
			i(25009),	-- Conqueror's Gauntlets
			i(25010),	-- Conqueror's Helmet
			i(25011),	-- Conqueror's Legplates
			i(25012),	-- Conqueror's Epaulets
			i(25013),	-- Conqueror's Vambraces
			i(25014),	-- Shattered Hand Belt
			i(25015),	-- Shattered Hand Sabatons
			i(25016),	-- Shattered Hand Breastplate
			i(25017),	-- Shattered Hand Gauntlets
			i(25018),	-- Shattered Hand Helmet
			i(25019),	-- Shattered Hand Legplates
			i(25020),	-- Shattered Hand Epaulets
			i(25021),	-- Shattered Hand Vambraces
			i(25022),	-- Warlord's Iron-Girdle
			i(25023),	-- Warlord's Sabatons
			i(25024),	-- Warlord's Iron-Breastplate
			i(25025),	-- Warlord's Iron-Gauntlets
			i(25026),	-- Warlord's Iron-Helm
			i(25027),	-- Warlord's Iron-Legplates
			i(25028),	-- Warlord's Iron-Epaulets
			i(25029),	-- Warlord's Iron-Vambraces
		},
	}),
	n(-319, {	-- Weapons
		filter(21, {	-- 1H Axes
			i(25198),	-- Karaborian Battle Axe
			i(25199),	-- Knight's War Axe
			i(25200),	-- Jagged Broadaxe
			i(25201),	-- Reaver's Sickle
			i(25202),	-- Kingly Axe
			i(25203),	-- Chipped Woodchopper
			i(25204),	-- Colossal War Axe
			i(25205),	-- Silvermoon Crescent Axe
			i(25206),	-- Berserker Axe
			i(25207),	-- Shadowmoon Cleaver
			i(25208),	-- Bladespire Broadaxe
			i(25209),	-- Amani Tomahawk
			i(25210),	-- Double-Bladed Axe
			i(25211),	-- Rockbiter Cutter
			i(31153),	-- Axe of the Legion
		}),
		filter(22, {	-- 2H Axes
			i(25212),	-- Lucky Strike Axe
			i(25213),	-- Fel-Touched Axe
			i(25214),	-- Mok'Nathal Battleaxe
			i(25215),	-- Spiked Battle Axe
			i(25216),	-- Ogre Splitting Axe
			i(25217),	-- Sundering Axe
			i(25218),	-- Silver-Edged Axe
			i(25219),	-- Rending Claw
			i(25220),	-- Glorious War-Axe
			i(25221),	-- Ghostly Battle Axe
			i(25222),	-- Ceremonial Slayer's Axe
			i(25223),	-- Windcaller Hatchet
			i(25224),	-- Slavemaster Axe
			i(25225),	-- Deepforge Broadaxe
			i(31291),	-- Crystalforged War Axe
			i(31318),	-- Singing Crystal Axe
		}),
		filter(23, {	-- 1H Maces
			i(25114),	-- Doomsayer's Mace
			i(25115),	-- Riversong Mace
			i(25116),	-- Pneumatic War Hammer
			i(25117),	-- Flanged Battle Mace
			i(25118),	-- Battle Star
			i(25119),	-- Silvermoon War-Mace
			i(25120),	-- Rockshard Club
			i(25121),	-- Dreaded Mace
			i(25122),	-- Khorium Plated Bludgeon
			i(25123),	-- Boneshredder Mace
			i(25124),	-- Footman Mace
			i(25125),	-- Retro-Spike Club
			i(25126),	-- Anvilmar Hammer
			i(25127),	-- Knight's War Hammer
			i(25310),	-- Naaru Lightmace
			i(25311),	-- Revitalizing Hammer
			i(25312),	-- Glorious Scepter
			i(25313),	-- Cold-Iron Scepter
			i(25314),	-- Ceremonial Hammer
			i(25315),	-- Restorative Mace
			i(25316),	-- Spirit-Clad Mace
			i(25317),	-- Lesser Sledgemace
			i(25318),	-- Ancestral Hammer
			i(25319),	-- Tranquility Mace
			i(25320),	-- Queen's Insignia
			i(25321),	-- Divine Hammer
			i(25322),	-- Lordly Scepter
			i(25323),	-- Ascendant's Scepter
			i(31139),	-- Fist of Reckoning
			i(31304),	-- The Essence Focuser
			i(31342),	-- The Ancient Scepter of Sue-Min
		}),
		filter(24, {	-- 2H Maces
			i(25128),	-- Shining Mace
			i(25129),	-- Giant's Leg Bone
			i(25130),	-- Gronn-Bone Club
			i(25131),	-- Hateful Bludgeon
			i(25132),	-- Thrallmar War Hammer
			i(25133),	-- Stormwind Maul
			i(25134),	-- Highmountain Hammer
			i(25135),	-- Clefthoof Mace
			i(25136),	-- Blood Stained Hammer
			i(25137),	-- Draenethyst Mallet
			i(25138),	-- Blood Knight Maul
			i(25139),	-- Algaz Battle Hammer
			i(25140),	-- Commanding Mallet
			i(25141),	-- Halaani Hammer
			i(31299),	-- The Oathkeeper
			i(31322),	-- The Hammer of Destiny
		}),
		filter(25, {	-- 1H Swords
			i(25142),	-- Telaari Longblade
			i(25143),	-- Silver Hand Blade
			i(25144),	-- Skettis Curved Blade
			un(REMOVED_FROM_GAME, i(25145, {	-- Wisdom Blade
				["description"] = "Dropped from Big Crate of Salvage during Warlords of Draenor.",
			})),
			i(25146),	-- Light-Etched Longsword
			i(25147),	-- Skystrider Katana
			i(25148),	-- Bone Collector Sword
			i(25149),	-- Baron's Broadsword
			i(25150),	-- Honor Hold Saber
			i(25151),	-- Assassins' Short Blade
			i(25152),	-- Howling Sword
			i(25153),	-- Gladiator Greatblade
			i(25154),	-- Blood Groove Blade
			i(25155),	-- Iron Skull Sword
			i(31234),	-- Crystalblade of the Draenei
			i(31332),	-- Blinkstrike
			i(31336),	-- Blade of Wizardry
		}),
		filter(26, {	-- 2H Swords
			i(25156),	-- Royal Crusader Sword
			i(25157),	-- Serpentlord Claymore
			i(25158),	-- Skeletal Broadsword
			un(REMOVED_FROM_GAME, i(25159)),	-- Thunderstrike Falchion [Removed from Game - Crates Only!]
			i(25160),	-- Vengeance Blade
			i(25161),	-- Dragon Wing Blade
			i(25162),	-- Darkened Broadsword
			i(25163),	-- Elexorien Blade
			i(25164),	-- Crude Umbrafen Blade
			i(25165),	-- Boulderfist Claymore
			i(25166),	-- Mok'Nathal Warblade
			i(25167),	-- Nethersteel Claymore
			i(25168),	-- Sha'tari Longsword
			i(25169),	-- Fel Orc Brute Sword
			i(31134),	-- Blade of Misfortune
		}),
		filter(32, {	-- Bows
			i(25240),	-- Azerothian Longbow
			i(25241),	-- Ashenvale Longbow
			i(25242),	-- Telaari Longbow
			i(25243),	-- Windtalker Bow
			i(25244),	-- Viper Bow
			i(25245),	-- Razorsong Bow
			i(25246),	-- Thalassian Compound Bow
			i(25247),	-- Expert's Bow
			i(25248),	-- Talbuk Hunting Bow
			i(25249),	-- Ranger's Recurved Bow
			i(25250),	-- Rocslayer Longbow
			i(25251),	-- Orc Flatbow
			i(25252),	-- Dream Catcher Bow
			i(25253),	-- Windspear Longbow
			i(31303),	-- Valanos' Longbow
		}),
		filter(33, {	-- Crossbows
			i(25254),	-- Tower Crossbow
			i(25255),	-- Ram's Head Crossbow
			i(25256),	-- Stronghold Crossbow
			i(25257),	-- Citadel Crossbow
			i(25258),	-- Repeater Crossbow
			i(25259),	-- Collapsible Crossbow
			i(25260),	-- Archer's Crossbow
			i(25261),	-- Mighty Crossbow
			i(25262),	-- Battle Damaged Crossbow
			i(25263),	-- Assassins' Silent Crossbow
			i(25264),	-- Pocket Ballista
			i(25265),	-- Barreled Crossbow
			i(25266),	-- Well-Balanced Crossbow
			i(25267),	-- Rampant Crossbow
		}),
		filter(20, {	-- Daggers
			i(25100),	-- Liege Blade
			i(25101),	-- Cross Pommel Dagger
			i(25102),	-- Jaedenis Dagger
			i(25103),	-- Nightstalker Dagger
			i(25104),	-- Anzac Dagger
			i(25105),	-- Arachnid Dagger
			i(25106),	-- Cobra Shortblade
			i(25107),	-- Draconic Dagger
			i(25108),	-- Grave Keeper Knife
			i(25109),	-- Moon Blade
			i(25110),	-- Sharp Bowie Knife
			i(25111),	-- Lionhead Dagger
			i(25112),	-- Fel Ripper
			i(25113),	-- Phantom Dagger
			i(25296),	-- Absorption Dagger
			i(25297),	-- Tuning Knife
			i(25298),	-- Combustion Dagger
			i(25299),	-- Siphoning Dagger
			i(25300),	-- Lightning Dagger
			i(25301),	-- Shattering Dagger
			i(25302),	-- Soul-Drain Dagger
			i(25303),	-- Amplifying Blade
			i(25304),	-- Destructo-Blade
			i(25305),	-- Elemental Dagger
			i(25306),	-- Permafrost Dagger
			i(25307),	-- Shadow Dagger
			i(25308),	-- Thunder Spike
			i(25309),	-- Warpdagger
			i(31142),	-- Blade of Trapped Knowledge
			i(31193),	-- Blade of Unquenched Thirst
			i(31305),	-- Ced's Carver
			i(31331),	-- The Night Blade
		}),
		filter(34, {	-- Fist Weapons
			i(25184),	-- Ravager Claws
			i(25185),	-- Thrasher Blades
			i(25186),	-- Vampiric Handscythes
			i(25187),	-- Shekketh Talons
			i(25188),	-- Spleenripper Claws
			i(25189),	-- Ironspine Point
			i(25190),	-- Wight's Claws
			i(25191),	-- Dread Fangs
			i(25192),	-- Gutrippers
			i(25193),	-- Deathclaw Talons
			i(25194),	-- Serpent's Fangs
			i(25195),	-- Diamond Tipped Claws
			i(25196),	-- Boneshredder Claws
			i(25197),	-- Razor Scythes
			i(30755),	-- Mag'hari Fighting Claw
		}),
		filter(31, {	-- Guns
			i(25268),	-- Lead-Slug Shotgun
			i(25269),	-- Longbeard Rifle
			i(25270),	-- Gnomish Assault Rifle
			i(25271),	-- Croc-Hunter's Rifle
			i(25272),	-- PC-54 Shotgun
			i(25273),	-- Sawed-Off Shotgun
			i(25274),	-- Cliffjumper Shotgun
			i(25275),	-- Dragonbreath Musket
			i(25276),	-- Tauren Runed Musket
			i(25277),	-- Sporting Rifle
			i(25278),	-- Nesingwary Longrifle
			i(25279),	-- Sen'jin Longrifle
			i(25280),	-- Game Hunter Musket
			i(25281),	-- Big-Boar Battle Rifle
			i(31204),	-- The Gunblade
			i(31323),	-- Don Santos' Famous Hunting Rifle
		}),
		filter(29, {	-- Polearms
			i(25226),	-- War Scythe
			i(25227),	-- Sha'tari Longspear
			i(25228),	-- Halberd Polearm
			i(25229),	-- Partisan Polearm
			i(25230),	-- Voulge Blade
			i(25231),	-- Fel-Wrought Halberd
			i(25232),	-- War Glaive
			i(25233),	-- Battle Scythe
			i(25234),	-- Telaari Polearm
			i(25235),	-- Ethereal-Etched Glaive
			i(25236),	-- Grim Scythe
			i(25237),	-- Nether Trident
			i(25238),	-- Hellfire War Spear
			i(25239),	-- Legend's Glaive
		}),
		filter(28, {	-- Staves
			i(25170),	-- Rattan Bo Staff
			i(25171),	-- Straight Hardwood Staff
			i(25172),	-- Jinbali Warp-Staff
			i(25174),	-- Hanbo Staff
			i(25175),	-- Demoniac Longstaff
			i(25176),	-- Taiji Quarterstaff
			i(25177),	-- Tanjo Staff
			i(25178),	-- Bata Staff
			i(25179),	-- Nguni Stick
			i(25180),	-- Calenda Fighting Stick
			i(25181),	-- Tapered Staff
			i(25182),	-- Crystal-Etched Warstaff
			i(25183),	-- Voodoo Hex-Staff
			i(25324),	-- Angerstaff
			i(25325),	-- Brutal Scar-Limb
			i(25326),	-- Primal Lore-Staff
			i(25327),	-- Frenzied Staff
			i(25328),	-- Faerie-Kind Staff
			i(25329),	-- Tranquility Staff
			i(25330),	-- Starshine Staff
			i(25331),	-- Vengeance Staff
			i(25332),	-- Reflective Staff
			i(25333),	-- Purification Staff
			i(25334),	-- Intimidating Greatstaff
			i(25335),	-- Feral Warp-Staff
			i(25336),	-- Splintering Greatstaff
			i(25337),	-- Swarming Sting-Staff
			i(31186),	-- Braxxis' Staff of Slumber
			i(31289),	-- Staff of Divine Infusion
			i(31308),	-- The Bringer of Death
			i(31334),	-- Staff of Natural Fury
		}),
		filter(27, {	-- Wands
			i(25282),	-- Mahogany Wand
			i(25283),	-- Crystallized Ebony Wand
			i(25284),	-- Purpleheart Wand
			i(25286),	-- Yew Wand
			i(25287),	-- Magician's Wand
			i(25288),	-- Conjurer's Wand
			i(25289),	-- Majestic Wand
			i(25290),	-- Solitaire Wand
			i(25291),	-- Nobility Torch
			i(25292),	-- Mechano-Wand
			i(25293),	-- Draenethyst Wand
			i(25294),	-- Dragonscale Wand
			i(25295),	-- Flawless Wand
		}),
	}),
	filter(8, {	-- Shields
		i(25072),	-- Northman's Shield
		i(25073),	-- Emperor Shield
		i(25074),	-- Telaari Shield
		i(25076),	-- Screaming Shield
		i(25077),	-- Modani War-Shield
		i(25078),	-- Zangari Shield
		i(25079),	-- Outland Shield
		i(25080),	-- Spell-Breaker Shield
		i(25081),	-- Bayeaux Shield
		i(25082),	-- Fel-Iron Shield
		i(25083),	-- Smouldering Shield
		i(25084),	-- Zeth'Gor Shield
		i(25085),	-- Dragonscale Shield
		i(31200),	-- Shield of the Wayward Footman
		i(31287),	-- Draenei Honor Guard Shield
		i(31292),	-- Crystal Pulse Shield
		i(25075),	-- Hardened Steel Shield
	}),
	filter(1, {	-- Held in Off-hand
		i(25086),	-- Dreamseeker Dandelion
		i(25087),	-- Bleeding Eye
		i(25088),	-- Laughing Skull Orb
		i(25089),	-- Supplicant's Rod
		i(25090),	-- Slavehandler Rod
		i(25091),	-- Mistyreed Torch
		i(25092),	-- Consortium Crystal
		i(25093),	-- Shadow Council Orb
		i(25094),	-- Eldr'naan Scepter
		i(25095),	-- Archmage Orb
		i(25096),	-- Elementalist Star
		i(25097),	-- Astralaan Orb
		i(25098),	-- Tuurik Torch
		i(25099),	-- Draenei Crystal Rod
	}),
	n(QUESTS, {
		i(29739),	-- Arcane Tome
		i(29740),	-- Fel Armament
		-- Blessings Deck
		i(31882),	-- Ace of Blessings
		i(31889),	-- Two of Blessings
		i(31888),	-- Three of Blessings
		i(31885),	-- Four of Blessings
		i(31884),	-- Five of Blessings
		i(31887),	-- Six of Blessings
		i(31886),	-- Seven of Blessings
		i(31883),	-- Eight of Blessings
		-- Furies Deck
		i(31901),	-- Ace of Furies
		i(31909),	-- Two of Furies
		i(31908),	-- Three of Furies
		i(31904),	-- Four of Furies
		i(31903),	-- Five of Furies
		i(31906),	-- Six of Furies
		i(31905),	-- Seven of Furies
		i(31902),	-- Eight of Furies
		-- Lunacy Deck
		i(31910),	-- Ace of Lunacy
		i(31918),	-- Two of Lunacy
		i(31917),	-- Three of Lunacy
		i(31913),	-- Four of Lunacy
		i(31912),	-- Five of Lunacy
		i(31916),	-- Six of Lunacy
		i(31915),	-- Seven of Lunacy
		i(31911),	-- Eight of Lunacy
		-- Storms Deck
		i(31892),	-- Ace of Storms
		i(31900),	-- Two of Storms
		i(31899),	-- Three of Storms
		i(31895),	-- Four of Storms
		i(31894),	-- Five of Storms
		i(31898),	-- Six of Storms
		i(31896),	-- Seven of Storms
		i(31893),	-- Eight of Storms
	}),
	filter(200, {	-- Recipes
		prof(ALCHEMY, {
			i(22914),	-- Recipe: Destruction Potion
			i(22926),	-- Recipe: Elixir of Empowerment (BoE version)
			i(22919),	-- Recipe: Elixir of Major Mageblood
			i(22904),	-- Recipe: Elixir of the Searching Eye
			i(22913),	-- Recipe: Haste Potion (BoE version)
			i(22912),	-- Recipe: Heroic Potion
			i(22903),	-- Recipe: Insane Strength Potion
		}),
		prof(BLACKSMITHING, {
			i(33186),	-- Plans: Adamantite Weapon Chain (BoE version)
			i(23626),	-- Plans: Black Felsteel Bracers
			i(23628),	-- Plans: Blessed Bracers
			i(23627),	-- Plans: Bracers of the Green Fortress
			i(23636),	-- Plans: Dirge
			i(23635),	-- Plans: Eternium Runed Blade
			i(23631),	-- Plans: Fel Edged Battleaxe
			i(23634),	-- Plans: Fel Hardened Maul
			i(23620),	-- Plans: Felfury Gauntlets
			i(23629),	-- Plans: Felsteel Longblade
			i(23632),	-- Plans: Felsteel Reaper
			i(23621),	-- Plans: Gauntlets of the Iron Tower
			i(33954),	-- Plans: Hammer of Righteous Might
			i(23637),	-- Plans: Hand of Eternity
			i(23624),	-- Plans: Helm of the Stalwart Defender
			i(23630),	-- Plans: Khorium Champion
			i(23625),	-- Plans: Oathkeeper's Helm
			i(23633),	-- Plans: Runic Hammer
			i(23622),	-- Plans: Steelgrip Gauntlets
			i(23623),	-- Plans: Storm Helm
		}),
		prof(ENCHANTING, {
			i(28280),	-- Formula: Enchant Boots - Boar's Speed (BoE version)
			i(28279),	-- Formula: Enchant Boots - Cat's Swiftness (BoE version)
			i(22542),	-- Formula: Enchant Boots - Vitality
			i(22532),	-- Formula: Enchant Bracer - Versatility Prime
			i(16253),	-- Formula: Enchant Chest - Greater Stats
			i(28270),	-- Formula: Enchant Chest - Major Resilience
			i(22540),	-- Formula: Enchant Shield - Parry
			i(22557),	-- Formula: Enchant Weapon - Battlemaster
			i(22553),	-- Formula: Enchant Weapon - Potency
			i(22558),	-- Formula: Enchant Weapon - Spellsurge
		}),
		prof(ENGINEERING, {
			i(23802),	-- Schematic: Ornate Khorium Rifle
			i(23804),	-- Schematic: Power Amplification Goggles
			i(23810),	-- Schematic: Crashin' Thrashin' Robot
			i(23883),	-- Schematic: Healing Potion Injector (BoE version)
			i(23884),	-- Schematic: Mana Potion Injector (BoE version)
			i(25887),	-- Schematic: Purple Smoke Flare
		}),
		prof(JEWELCRAFTING, {
			i(24193),	-- Design: Bold Living Ruby
			i(24168),	-- Design: Braided Eternium Chain
			i(24196),	-- Design: Brilliant Living Ruby
			i(24203, {	-- Design: Brilliant Living Ruby
				["spellID"] = 0,	-- This is now available via 24196, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(25906),	-- Design: Brutal Earthstorm Diamond
			i(24171),	-- Design: Chain of the Twilight Owl
			i(31879),	-- Design: Deadly Noble Topaz
			i(24164),	-- Design: Delicate Eternium Ring
			i(24194),	-- Design: Delicate Living Ruby
			i(24192, {	-- Design: Delicate Living Ruby
				["spellID"] = 0,	-- This is now available via 24194, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(35306, {	-- Design: Delicate Living Ruby
				["spellID"] = 0,	-- This is now available via 24194, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(25907),	-- Design: Destructive Skyfire Diamond
			i(24170),	-- Design: Embrace of the Dawn
			i(24165),	-- Design: Blazing Eternium Band
			i(24169),	-- Design: Eye of the Night
			i(24198),	-- Design: Flashing Living Ruby
			i(24216),	-- Design: Glinting Nightseye
			i(31877, {	-- Design: Glinting Nightseye
				["spellID"] = 0,	-- This is now available via 24216, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24163),	-- Design: Heavy Felsteel Ring
			i(24213),	-- Design: Inscribed Noble Topaz
			i(24220),	-- Design: Jagged Talasite
			i(24167),	-- Design: Living Ruby Pendant
			i(25909),	-- Design: Mystical Skyfire Diamond
			i(24214),	-- Design: Potent Noble Topaz
			i(24219),	-- Design: Purified Nightseye
			i(24212, {	-- Design: Purified Nightseye
				["spellID"] = 0,	-- This is now available via 24219, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24218),	-- Design: Radiant Talasite
			i(24215),	-- Design: Reckless Noble Topaz
			i(24217),	-- Design: Regal Talasite
			i(24205),	-- Design: Rigid Star of Elune (BoE version)
			i(31875, {	-- Design: Rigid Star of Elune
				["spellID"] = 0,	-- This is now available via 24205, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24210),	-- Design: Shifting Nightseye
			i(31876, {	-- Design: Shifting Nightseye
				["spellID"] = 0,	-- This is now available via 24210, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24204),	-- Design: Smooth Dawnstone
			i(24206, {	-- Design: Smooth Dawnstone
				["spellID"] = 0,	-- This is now available via 24204, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24199),	-- Design: Solid Star of Elune (BoE version)
			i(24209),	-- Design: Sovereign Nightseye
			i(24200),	-- Design: Sparkling Star of Elune
			i(24201, {	-- Design: Sparkling Star of Elune
				["spellID"] = 0,	-- This is now available via 24200, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24202),	-- Design: Stormy Star of Elune
			i(23154),	-- Design: Stormy Azure Moonstone
			i(24197),	-- Design: Subtle Dawnstone
			i(24207, {	-- Design: Subtle Dawnstone
				["spellID"] = 0,	-- This is now available via 24197, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(25905),	-- Design: Tenacious Earthstorm Diamond
			i(24166),	-- Design: Thick Felsteel Necklace
			i(32411),	-- Design: Thundering Skyfire Diamond
			i(24211),	-- Design: Timeless Nightseye
			i(31878),	-- Design: Veiled Nightseye
		}),
		prof(LEATHERWORKING, {
			i(29724),	-- Pattern: Cobrascale Gloves (BoE version)
			i(29723),	-- Pattern: Cobrascale Hood
			un(REMOVED_FROM_GAME, i(29714)),	-- Pattern: Drums of Restoration (BoE version was removed from game)
			un(REMOVED_FROM_GAME, i(29718)),	-- Pattern: Drums of Speed (BoE version was removed from game)
			i(29730),	-- Pattern: Earthen Netherscale Boots
			i(29727),	-- Pattern: Gloves of the Living Touch (BoE version)
			i(29726),	-- Pattern: Hood of Primal Life
			i(29729),	-- Pattern: Living Dragonscale Helm
			i(29733),	-- Pattern: Netherdrake Gloves (BoE version)
			i(29732),	-- Pattern: Netherdrake Helm
			i(29734),	-- Pattern: Thick Netherscale Breastplate
			i(29725),	-- Pattern: Windscale Hood
			i(29728),	-- Pattern: Windslayer Wraps
			i(29731),	-- Pattern: Windstrike Gloves (BoE version)
		}),
		prof(TAILORING, {
			i(24298),	-- Pattern: Blackstrike Bracers
			i(24304),	-- Pattern: Black Belt of Knowledge
			i(24297),	-- Pattern: Bracers of Havok
			i(24300),	-- Pattern: Cloak of Eternity
			i(24299),	-- Pattern: Cloak of the Black Void
			i(24303),	-- Pattern: Girdle of Ruination
			i(24307),	-- Pattern: Manaweave Cloak
			i(24305),	-- Pattern: Resolute Cape
			i(24296),	-- Pattern: Unyielding Bracers
			i(24302),	-- Pattern: Unyielding Girdle
			i(24306),	-- Pattern: Vengeance Wrap
			i(24301),	-- Pattern: White Remedy Cape
		}),
	}),
}))};