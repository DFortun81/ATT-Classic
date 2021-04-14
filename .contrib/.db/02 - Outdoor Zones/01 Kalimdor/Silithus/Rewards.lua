---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(SILITHUS, {
			n(REWARDS, {
				["description"] = "These are rewarded from multiple quests in the zone. Refer to the individual item tooltips for more information.",
				["groups"] = {
					i(20603, { 	-- Bag of Spoils
						i(20694), 	-- Glowing Black Orb
						i(20693), 	-- Weighted Cloak
						i(20692),	-- Multicolored Band
					}),
					i(20602, { 	-- Chest of Spoils
						i(20721),	-- Band of the Cultist
						i(20722), 	-- Crystal Slugthrower
						i(20720), 	-- Dark Whisper Blade
					}),
					i(21528),	-- Colossal Bag of Loot
					i(20808, {	-- Combat Assignment
						i(22648, {	-- Hive'Ashi Dossier
							i(21749),	-- Combat Task Briefing I
							i(21750),	-- Combat Task Briefing II
							i(20942),	-- Combat Task Briefing III
							i(20941),	-- Combat Task Briefing XII
						}),
						i(22649, {	-- Hive'Regal Dossier
							i(21253),	-- Combat Task Briefing IX
							i(21252),	-- Combat Task Briefing VIII
							i(21255),	-- Combat Task Briefing X
							i(21256),	-- Combat Task Briefing XI
						}),
						i(22650, {	-- Hive'Zora Dossier
							i(21248),	-- Combat Task Briefing IV
							i(21249),	-- Combat Task Briefing V
							i(21250),	-- Combat Task Briefing VI
							i(21251),	-- Combat Task Briefing VII
						}),
					}),
					i(20469, {	-- Decoded True Believer Clippings
						["description"] = "This will arrive in your mailbox approximately 12-24 hours either of the quests are turned in.\n\nWARNING: You may want to space out turn ins as you will not receive multiple mails.",
						["sourceQuests"] = {
							8324,	-- Still Believing
							8323,	-- True Believers
						},
						["cost"] = {
							{ "i", 20404, 10 },	-- Encrypted Twilight Text
						},
						["groups"] = {
							i(20547),	-- Pattern: Runed Stygian Boots
							i(20548),	-- Pattern: Runed Stygian Belt
							i(20546),	-- Pattern: Runed Stygian Leggings
							i(20554),	-- Plans: Darkrune Breastplate
							i(20553),	-- Plans: Darkrune Gauntlets
							i(20555),	-- Plans: Darkrune Helm
						},
					}),
					i(20805, {	-- Followup Logistics Assignment
						i(20807),	-- Logistics Task Briefing I
						i(20939),	-- Logistics Task Briefing II
						i(20940),	-- Logistics Task Briefing III
						i(21262),	-- Logistics Task Briefing VIII
						i(21265),	-- Logistics Task Briefing IX
						i(21514),	-- Logistics Task Briefing XI
					}),
					i(21386, {	-- Followup Logistics Assignment
						i(21378),	-- Logistics Task Briefing I
						i(21379),	-- Logistics Task Briefing II
						i(21380),	-- Logistics Task Briefing III
						i(21384),	-- Logistics Task Briefing VIII
						i(21381),	-- Logistics Task Briefing IX
						i(21514),	-- Logistics Task Briefing XI
					}),
					i(21133, {	-- Followup Tactical Assignment
						i(21245),	-- Tactical Task Briefing I
						i(20945),	-- Tactical Task Briefing II
						i(20947),	-- Tactical Task Briefing IV
						i(20948),	-- Tactical Task Briefing V
						i(21167),	-- Tactical Task Briefing VIII
						i(20943),	-- Tactical Task Briefing X
					}),
					i(21132, {	-- Logistics Assignment
						i(21257),	-- Logistics Task Briefing IV
						i(21259),	-- Logistics Task Briefing V
						i(21260),	-- Logistics Task Briefing VI
						i(21263),	-- Logistics Task Briefing VII
						i(20806),	-- Logistics Task Briefing X
					}),
					i(21266, {	-- Logistics Assignment
						i(21258),	-- Logistics Task Briefing IV
						i(21382),	-- Logistics Task Briefing V
						i(21261),	-- Logistics Task Briefing VI
						i(21264),	-- Logistics Task Briefing VII
						i(21385),	-- Logistics Task Briefing X
					}),
					i(20601, {	-- Sack of Spoils
						i(20695),	-- Abyssal War Beads
						i(20696),	-- Crystal Spiked Maul
						i(20697),	-- Crystalline Threaded Cape
						i(20698),	-- Elemental Attuned Blade
					}),
					i(20809, {	-- Tactical Assignment
						i(21245),	-- Tactical Task Briefing I
						i(21751),	-- Tactical Task Briefing III
						i(20944),	-- Tactical Task Briefing IX
						i(21165),	-- Tactical Task Briefing VI
						i(21166),	-- Tactical Task Briefing VII
					}),
				},
			}),
		}),
	}),
};