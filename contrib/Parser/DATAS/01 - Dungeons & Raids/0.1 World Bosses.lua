-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	n(-7, {	-- World Bosses
		["isRaid"] = true,
		["lvl"] = 60,
		["groups"] = {
			n(6109, {	-- Azuregos
				["isRaid"] = true,
				--["maps"] = { },	-- Azshara
				["groups"] = {
					i(18704, {	-- Mature Blue Dragon Sinew
						{
							["questID"] = 7634,	-- Ancient Sinew Wrapped Lamina
							["qg"] = 14526,	-- Hastat the Ancient
							["groups"] = {
								i(18714),	-- Ancient Sinew Wrapped Lamina
							},
						},
					}),
					i(19130),	-- Cold Snap
					i(18202),	-- Eskhandar's Left Claw
					i(17070),	-- Fang of the Mystics
					i(18542),	-- Typhoon
					i(19132),	-- Crystal Adorned Crown
					i(18208),	-- Drape of Benediction
					i(18541),	-- Puissant Cape
					i(18545),	-- Leggings of Arcane Supremacy
					i(19131),	-- Snowblind Shoes
					i(18547),	-- Unmelting Ice Girdle
				},
			}),
			n(18338, {	-- Highlord Kruul
				["isRaid"] = true,
				--["maps"] = { },	-- Blasted Lands
				["modelScale"] = 6.0,
				["groups"] = {
					i(18665, {	-- The Eye of Shadow
						["classes"] = { 5 },
						["groups"] = {
							i(18609),	-- Anathema
							i(18608),	-- Benediction
						},
					}),
					i(17113),	-- Amberseal Keeper
					i(17112),	-- Empyrean Demolisher
					i(18546),	-- Infernal Headcage
					i(17111),	-- Blazefury Medallion
					i(18204),	-- Eskhandar's Pelt
					i(19135),	-- Blacklight Bracer
					i(18544),	-- Doomhide Gauntlets
					i(19134),	-- Flayed Doomguard Belt
					i(19133),	-- Fel Infused Leggings
					i(18543),	-- Ring of Entropy
				},
			}),
			n(12397, {	-- Lord Kazzak
				["isRaid"] = true,
				--["maps"] = {  },	-- Blasted Lands
				["groups"] = {
					i(18665, {	-- The Eye of Shadow
						["classes"] = { 5 },
						["groups"] = {
							i(18609),	-- Anathema
							i(18608),	-- Benediction
						},
					}),
					i(17113),	-- Amberseal Keeper
					i(17112),	-- Empyrean Demolisher
					i(18546),	-- Infernal Headcage
					i(17111),	-- Blazefury Medallion
					i(18204),	-- Eskhandar's Pelt
					i(19135),	-- Blacklight Bracer
					i(18544),	-- Doomhide Gauntlets
					i(19134),	-- Flayed Doomguard Belt
					i(19133),	-- Fel Infused Leggings
					i(18543),	-- Ring of Entropy
				},
			}),
			n(14889, {	-- Emeriss
				["isRaid"] = true,
				--["maps"] = {  },	-- Ashenvale / Feralas / Duskwood / The Hinterlands
				["groups"] = {
					{
						["itemID"] = 20644,	-- Nightmare Engulfed Object
						["questID"] = 8446,	-- Quest: Shrouded in Nightmare
					},
					i(20580),	-- Hammer of Bestial Fury
					i(20599),	-- Polished Ironwood Crossbow
					i(20581),	-- Staff of Rampant Growth
					i(20582),	-- Trance Stone
					i(20623),	-- Circlet of Restless Dreams
					i(20622),	-- Dragonheart Necklace
					i(20579),	-- Green Dragonskin Cloak
					i(20615),	-- Dragonspur Wraps
					i(20616),	-- Dragonbone Wristguards
					i(20618),	-- Gloves of Delusional Power
					i(20617),	-- Ancient Corroded Leggings
					i(20619),	-- Acid Inscribed Greaves
					i(20621),	-- Boots of the Endless Moor
					i(20624),	-- Ring of the Unliving
				},
			}),
			n(14888, {	-- Lethon
				["isRaid"] = true,
				--["maps"] = {  },	-- Ashenvale / Feralas / Duskwood / The Hinterlands
				["groups"] = {
					{
						["itemID"] = 20644,	-- Nightmare Engulfed Object
						["questID"] = 8446,	-- Quest: Shrouded in Nightmare
					},
					i(20580),	-- Hammer of Bestial Fury
					i(20581),	-- Staff of Rampant Growth
					i(20582),	-- Trance Stone
					i(20628),	-- Deviate Growth Cap
					i(20579),	-- Green Dragonskin Cloak
					i(20626),	-- Black Bark Wristbands
					i(20616),	-- Dragonbone Wristguards
					i(20615),	-- Dragonspur Wraps
					i(20630),	-- Gauntlets of the Shining Light
					i(20618),	-- Gloves of Delusional Power
					i(20625),	-- Belt of the Dark Bog
					i(20617),	-- Ancient Corroded Leggings
					i(20627),	-- Dark Heart Pants
					i(20619),	-- Acid Inscribed Greaves
					i(20629),	-- Malignant Footguards
				},
			}),
			n(14890, {	-- Taerar
				["isRaid"] = true,
				--["maps"] = {  },	-- Ashenvale / Feralas / Duskwood / The Hinterlands
				["groups"] = {
					{
						["itemID"] = 20644,	-- Nightmare Engulfed Object
						["questID"] = 8446,	-- Quest: Shrouded in Nightmare
					},
					i(20580),	-- Hammer of Bestial Fury
					i(20577),	-- Nightmare Blade
					i(20581),	-- Staff of Rampant Growth
					i(20582),	-- Trance Stone
					i(20579),	-- Green Dragonskin Cloak
					i(20633),	-- Unnatural Leather Spaulders
					i(20616),	-- Dragonbone Wristguards
					i(20615),	-- Dragonspur Wraps
					i(20618),	-- Gloves of Delusional Power
					i(20617),	-- Ancient Corroded Leggings
					i(20619),	-- Acid Inscribed Greaves
					i(20634),	-- Boots of Fright
					i(20631),	-- Mendicant's Slippers
					i(20632),	-- Mindtear Band
				},
			}),
			n(14887, {	-- Ysondre
				["isRaid"] = true,
				--["maps"] = {  },	-- Ashenvale / Feralas / Duskwood / The Hinterlands
				["groups"] = {
					{
						["itemID"] = 20644,	-- Nightmare Engulfed Object
						["questID"] = 8446,	-- Quest: Shrouded in Nightmare
					},
					i(20578),	-- Emerald Dragonfang
					i(20580),	-- Hammer of Bestial Fury
					i(20581),	-- Staff of Rampant Growth
					i(20582),	-- Trance Stone
					i(20579),	-- Green Dragonskin Cloak
					i(20637),	-- Acid Inscribed Pauldrons
					i(20635),	-- Jade Inlaid Vestments
					i(20616),	-- Dragonbone Wristguards
					i(20615),	-- Dragonspur Wraps
					i(20618),	-- Gloves of Delusional Power
					i(20617),	-- Ancient Corroded Leggings
					i(20638),	-- Leggings of the Demented Mind
					i(20639),	-- Strangley Glyphed Legplates
					i(20619),	-- Acid Inscribed Greaves
					i(20636),	-- Hibernation Crystal
				},
			}),
		},
	}),
};