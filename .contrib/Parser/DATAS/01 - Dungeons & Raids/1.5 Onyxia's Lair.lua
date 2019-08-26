-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(248, { 	-- Onyxia's Lair
		["description"] = "Onyxia is the daughter of the mighty dragon Deathwing, and sister of the scheming Nefarian, Lord of Blackrock Spire.\n\nIt is said that Onyxia delights in corrupting the mortal races by meddling in their political affairs. To this end it is believed that she takes on various humanoid forms and uses her charm and power to influence delicate matters between the different races. Some believe that Onyxia has even assumed an alias once used by her father - the title of the royal House Prestor. When not meddling in mortal concerns, Onyxia resides in a fiery cave below the Dragonmurk, a dismal swamp located within Dustwallow Marsh. There she is guarded by her kin, the remaining members of the insidious black dragonflight.",
		["sourceQuests"] = {
			6502,	-- Alliance Attunement Quest
			6602,	-- Horde Attunement Quest
		},
		["isRaid"] = true,
		["lvl"] = 60,
		["groups"] = {
			n(-17, {	-- Quests
				{
					["questID"] = 7635,	-- A Proper String
					["sourceQuest"] = 7633,	-- An Introduction
					["qg"] = 14525,	-- Stoma the Ancient
					-- ["coord"] = { , FELWOOD },	-- TODO: Find the MapID and location for Felwood
					["classes"] = { 3 },	-- Hunter
					["lvl"] = 60,
					["cost"] = {
						{ "i", 18705, 1 },	-- Mature Black Dragon Sinew
					},
				},{
					["questID"] = 7632,	-- The Ancient Leaf
					["qg"] = 14524,	-- Vartrus the Ancient
					["description"] = "To find Vartrus go to the Irontree Woods in Felwood, there is an island in the middle of the green sludge with a little hill on it, go up the hill and Vartrus will appear to you.",
					-- ["coord"] = { , FELWOOD },	-- TODO: Find the MapID and location for Felwood
					["classes"] = { 3 },	-- Hunter
					["lvl"] = 60,
					["cost"] = {
						{ "i", 18703, 1 },	-- Ancient Petrified Leaf
					},
					["groups"] = {
						i(18715),	-- Lok'delar, Stave of the Ancient Keepers
						i(18707, {	-- Ancient Rune Etched Stave
							i(18713),	-- Rhok'delar, Longbow of the Ancient Keepers
						}),
					},
				},
				q(7496, {	-- Celebrating Good Times
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 7495,	-- Victory for the Alliance
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
					["groups"] = {
						i(18403),	-- Dragonslayer's Signet
						i(18406),	-- Onyxia Blood Talisman
						i(18404),	-- Onyxia Tooth Pendant
					},
				}),
				q(7491, {	-- For All To See
					["qg"] = 4949,	-- Thrall
					["sourceQuest"] = 7490,	-- Victory for the Horde
					["races"] = HORDE_ONLY,
					["lvl"] = 60,
					["groups"] = {
						i(18403),	-- Dragonslayer's Signet
						i(18404),	-- Onyxia Tooth Pendant
						i(18406),	-- Onyxia Blood Talisman
					},
				}),
				{
					["questID"] = 7507,	-- Foror's Compendium
					["qg"] = 14368,	-- Lorekeeper Lydros
					["maps"] = { DIRE_MAUL },	-- TODO: Add MapID for Dire Maul.
					["description"] = "You get this quest by looting Foror's Compendium from bosses in Dire Maul.\n\nYou can also buy it on the Auction House for a hefty price!",
					["classes"] = { 1, 2 },	-- Warrior, Paladin
					["lvl"] = 60,
					["groups"] = {
						i(18513),	-- A Dull and Flat Elven Blade
					},
				},
				{
					["questID"] = 7508,	-- The Forging of Quel'Serrar
					["sourceQuest"] = 7507,	-- Foror's Compendium
					["qg"] = 14368,	-- Lorekeeper Lydros
					["maps"] = { DIRE_MAUL },	-- TODO: Add MapID for Dire Maul.
					["classes"] = { 1, 2 },	-- Warrior, Paladin
					["lvl"] = 60,
					["cost"] = {
						{ "i", 18513, 1 },	-- A Dull and Flat Elven Blade
					},
				},
				{
					["questID"] = 7509,	-- The Forging of Quel'Serrar
					["sourceQuest"] = 7508,	-- The Forging of Quel'Serrar
					["qg"] = 14368,	-- Lorekeeper Lydros
					["maps"] = { DIRE_MAUL },	-- TODO: Add MapID for Dire Maul.
					["classes"] = { 1, 2 },	-- Warrior, Paladin
					["lvl"] = 60,
					["cost"] = {
						{ "i", 18492, 1 },	-- Treated Ancient Blade
					},
					["groups"] = {
						{
							["itemID"] = 18489,	-- Unfired Ancient Blade
							["description"] = "Place this in front of Onyxia's Breath attack during The Forging of Quel'Serrar quest.\n\nYou may want to delay placing this item on the ground until the breath goes on cooldown and the phase is not about to transition in order to avoid dying.",
							["classes"] = { 1, 2 },	-- Warrior, Paladin
							["crs"] = { 10184 },	-- Onyxia
							["groups"] = {
								{
									["itemID"] = 18492,	-- Treated Ancient Blade
									["questID"] = 7509,	-- The Forging of Quel'Serrar
									["description"] = "Only drops from Onyxia when you use the Unfired Ancient Blade during The Forging of Quel'Serrar quest.",
									["classes"] = { 1, 2 },	-- Warrior, Paladin
								},
							},
						},
						i(18348),	-- Quel'Serrar
					},
				},
				q(7497, {	-- The Journey Has Just Begun
					["qg"] = 14394,	-- Major Mattingly
					["sourceQuest"] = 7496,	-- Celebrating Good Times
					["requireSkill"] = 165,	-- Leatherworking
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
					["g"] = {
						i(15769),	-- Onyxia Scale Cloak
					},
				}),
				q(7493, {	-- The Journey Has Just Begun (H)
					["qg"] = 14392,		-- Overlord Runthak
					["sourceQuest"] = 7491,	-- For All To See
					["requireSkill"] = 165,	-- Leatherworking
					["races"] = HORDE_ONLY,
					["lvl"] = 60,
					["g"] = {
						i(15769),	-- Onyxia Scale Cloak
					},
				}),
				{
					["allianceQuestID"] = 7495,	-- Victory for the Alliance
					["hordeQuestID"] = 7490,	-- Victory for the Horde
					["description"] = "This quest is started by looting the Head of Onyxia.",
				},
			}),
			n(10184, {	-- Onyxia
				{
					["itemID"] = 18423,	-- Head of Onyxia (A)
					["questID"] = 7495,	-- Victory for the Alliance
					["races"] = ALLIANCE_ONLY,
				},
				{
					["itemID"] = 18422,	-- Head of Onyxia (H)
					["questID"] = 7490,	-- Victory for the Horde
					["races"] = HORDE_ONLY,
				},
				{
					["itemID"] = 18705,	-- Mature Black Dragon Sinew
					["questID"] = 7635,	-- A Proper String
					["classes"] = { 3 },	-- Hunter
					["lvl"] = 60,
				},
				{
					["itemID"] = 21108,	-- Draconic for Dummies
					["questID"] = 8620,		-- The Only Prescription
					["description"] = "This item only drops while on the quest 'The Only Prescription'.",
					["lvl"] = 60,
				},
				i(17966),	-- Onyxia Hide Backpack (Bag)
				i(17068),	-- Deathbringer
				i(17075),	-- Vis'kag the Bloodletter
				i(17067),	-- Ancient Cornerstone Grimoire
				i(16908),	-- Bloodfang Hood
				i(16939),	-- Dragonstalker's Helm
				i(16921),	-- Halo of Transcendence
				i(16963),	-- Helm of Wrath
				i(16947),	-- Helmet of Ten Storms
				i(16955),	-- Judgment Crown
				i(16929),	-- Nemesis Skullcap
				i(16914),	-- Netherwind Crown
				i(16900),	-- Stormrage Cover
				i(18205),	-- Eskhandar's Collar
				i(17078),	-- Sapphiron Drape
				i(18813),	-- Ring of Binding
				i(17064),	-- Shard of the Scale
			}),
		},
	}),
};