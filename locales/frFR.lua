-- Localization for French (France) Clients.
if GetLocale() ~= "frFR" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";

-- TODO
L.SAVED_TO_DJ_INSTANCES["Temple noir"] = "Le Temple noir";
L.SAVED_TO_DJ_INSTANCES["Le Puits de soleil"] = "Plateau du Puits de soleil";
L.SAVED_TO_DJ_INSTANCES["Donjon de la Tempête"] = "L’Œil";
L.SAVED_TO_DJ_INSTANCES["Glissecroc : caverne du sanctuaire du Serpent"] = "Caverne du sanctuaire du Serpent";

local a = L.ZONE_TEXT_TO_MAP_ID;
wipe(a);
for key,value in pairs({
	-- Classic
	["Profondeurs de Brassenoire"] = 221,	-- Blackfathom Deeps
	["Profondeurs de Blackrock"] = 242,	-- Blackrock Depths
	["Repaire de l'Aile noire"] = 287,	-- Blackwing Lair
	["Mont Blackrock"] = 33,	-- Blackrock Mountain
	["Pic Blackrock"] = 250,	-- Blackrock Spire
	[DUNGEON_FLOOR_TANARIS18] = 75,	-- Caverns of Time
	["Hache-tripes"] = 234,	-- Dire Maul
	["Les Mortemines"] = 291,	-- The Deadmines
	["Tram des profondeurs"] = 499,	-- Deeprun Tram
	["Gnomeregan"] = 226,	-- Gnomeregan
	["Maraudon"] = 280,	-- Maraudon
	["Cœur du Magma"] = 232,	-- Molten Core
	["Naxxramas"] = 162,	-- Naxxramas
	["Repaire d'Onyxia"] = 248,	-- Onyxia's Lair
	["Gouffre de Ragefeu"] = 213,	-- Ragefire Chasm
	["Souilles de Tranchebauge"] = 300,	-- Razorfen Downs
	["Kraal de Tranchebauge"] = 301,	-- Razorfen Kraul
	["Ruines d'Ahn'Qiraj"] = 247,	-- Ruins of Ahn'Qiraj
	["Monastère écarlate"] = 435,	-- Scarlet Monastery
	["Scholomance"] = 476,	-- Scholomance
	["Donjon d'Ombrecroc"] = 310,	-- Shadowfang Keep
	["Strathholme"] = 317,	-- Stratholme
	["Temple d'Ahn'Qiraj"] = 320,	-- Temple of Ahn'Qiraj
	["Le temple d'Atal'Hakkar"] = 220,	-- The Temple of Atal'hakkar
	["La Prison"] = 225,	-- The Stockade
	["Uldaman"] = 230,	-- Uldaman
	["Cavernes des lamentations"] = 279,	-- Wailing Caverns
	["Zul'Farrak"] = 219,	-- Zul'Farrak
	["Zul'Gurub"] = 337,	-- Zul'Gurub
	
	-- TBC
	["Cryptes Auchenaï"] = 256,	-- Auchenai Crypts
	["Karazhan"] = 350,	-- Karazhan
	["Repaire de Gruul"] = 330,	-- Gruul's Lair
	["Remparts des Flammes infernales"] = 347,	-- Hellfire Ramparts
	["Sommet d'Hyjal"] = 329,	-- Hyjal Summit
	["Terrasse des Magistères"] = 348,	-- Magister's Terrace
	["Le repaire de Magtheridon"] = 331,	-- Magtheridon's Lair
	["Tombes-mana"] = 272,	-- Mana Tombs
	["Contreforts de Hautebrande d’antan"] = 274,	-- Old Hillsbrad Foothills
	["Caverne du sanctuaire du Serpent"] = 332,	-- Serpentshrine Cavern
	["Les salles des Sethekk"] = 258,	-- Sethekk Halls
	["Labyrinthe des ombres"] = 260,	-- Shadow Labyrinth
	["Plateau du Puits de soleil"] = 335,	-- Sunwell Plataeu
	["Donjon de la Tempête"] = 334,	-- Tempest Keep
	["L'Arcatraz"] = 269,	-- The Arcatraz
	["Le Noir marécage"] = 273,	-- The Black Morass
	["La Fournaise du sang"] = 261,	-- The Blood Furnace
	["Temple noir"] = 340,	-- The Black Temple
	["La Botanica"] = 266,	-- The Botanica
	["Le Méchanar"] = 267,	-- The Mechanar
	["Les Salles brisées"] = 246,	-- The Shattered Halls
	["Les enclos aux esclaves"] = 265,	-- The Slave Pens
	["Le Caveau de la vapeur"] = 263,	-- The Steamvault
	["La Basse-tourbière"] = 262,	-- The Underbog
	["Zul'Aman"] = 333,	-- Zul'Aman
})
do a[key] = value; end

local a = L.ALT_ZONE_TEXT_TO_MAP_ID;
wipe(a);
for key,value in pairs({
	-- Classic
	["Ahn'Qiraj"] = 320,	-- Ahn'Qiraj
	["Mortemines"] = 291,	-- Deadmines
	["Portes d'Ahn'Qiraj"] = 1451,	-- Gates of Ahn'Qiraj
	["L'oeil"] = 334,	-- The Eye
})
do a[key] = value; end

local a = L.ALT_PROFESSION_TEXT_TO_ID;
for key,value in pairs({
	["Ingénierie"] = 4036,	-- Engineering
	["Secourisme"] = 3273,	-- First Aid
	["Travail du cuir"] = 2108,	-- Leatherworking
})
do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Enter translated NPCID's here
})
do a[key] = value; end

local a = app.ObjectNames;
for key,value in pairs({
	-- Enter translated OBJECTID's here
	[31] = "Statue du vieux lion",
	[34] = "Vieille cruche",
	[55] = "Un corps à moitié dévoré",
	[56] = "Cadavre de Rolf",
	[61] = "Un tombeau dégradé par les intempéries",
	[256] = "Avis de recherche !",
	[259] = "Tonneau à moitié enseveli",
	[270] = "Tonneau de Tonneblonde non gardé",
	[2059] = "Un cadavre de Nain",
	[2076] = "Chaudron bouillonnant",
	[2083] = "Correspondance de la Voile sanglante",
	[2701] = "Fragments iridescents",
	[2702] = "Pierre de Lien intérieure",
	[2713] = "Tableau des recherches",
	[2908] = "Caisse de ravitaillements scellée",
	[3972] = "AVIS DE RECHERCHE",
	[4141] = "Console de contrôle",
	[6751] = "Plante aux fruits étranges",
	[6752] = "Plantes aux feuilles étranges",
	[7510] = "Racine éclose",
	[19023] = "Page 2351",
	[20985] = "Poussière flottante",
	[20992] = "Bouclier noir",
	[21042] = "Ecusson de la garde de Theramore",
	[35251] = "Coffre de Karnitol",
	[112948] = "Coffre verrouillé de l'Intrépide",
--	[113768] = GetSpellInfo(61820),
	[113768] = "Œuf vivement coloré",
	[123329] = "Coffre de Baelog",
	[131474] = "Les disques de Norgannon",
	[131979] = "Grand coffre de sombrebois",
	[138492] = "Fragments de Myzrael",
	[141979] = "Trésor ancien",
	[142195] = "Plan de bataille des Griffebois",
	[142343] = "Piédestal d'Uldum",
	[142487] = "Le Brille-o-Matic 5200",
	[144063] = "Monolithe d'Equinex",
	[148502] = "Page 9",
	[148504] = "Une tombe ostentatoire",
	[156561] = "Avis de recherche",
	[160836] = "Coffre aux reliques",
	[160845] = "Coffre sombre",
	[161495] = "Coffre secret",
	[161504] = "Un petit paquet",
	[161505] = "Une épave de radeau",
	[161521] = "Equipement de recherche",
	[161526] = "Caisse de nourriture",
	[164820] = "Nom du Gardien noir",
	[164885] = "Dragon nocturne corrompu",
	[164886] = "Fleur-de-chant corrompue",
	[164887] = "Fleur-de-vent corrompue",
	[164888] = "Navetille corrompue",
	[164955] = "Pylône de cristal nord",
	[164956] = "Pylône de cristal ouest",
	[164957] = "Pylône de cristal est",
	[169243] = "Coffre des sept",
	[173232] = "Plans de forgeron",
	[174682] = "Attention aux pterreurdactyles",
	[175320] = "AVIS DE RECHERCHE : Fondeboue !",
	[175524] = "Mystérieux cristal rouge",
	[175756] = "Le Fléau de Lordaeron",
	[176090] = "Cadavres humains",
	[176091] = "Chaudron des Mort-bois",
	[176115] = "Avis de recherche : Arnak Totem-sinistre",
	[176392] = "Chaudron du Fléau",
	[177787] = "Journal de Rackmore",
	[177904] = "Avis de recherche : Besseleth",
	[177964] = "Pierre de la Brasse",
	[179485] = "Piège cassé",
	[179501] = "Réserve de Noué Dédodevie",
	[179832] = "Oreiller brodé de Pincetaie",
	[179564] = "Tribut des Gordok",
	[179697] = "Coffre au trésor de l'arène",
	[180448] = "Avis de recherche : Poigne-de-mort",
	[180503] = "Livre de cuisine sableux",
	[180690] = "Grand coffre de scarabées",
	[180691] = "Coffre de scarabées",
	[180794] = "Journal de Jandice Barov",
	[180918] = "Avis de recherche : Thaelis l'Affameur",
	[181011] = "Journal du magistère Ternesoir",
	[181074] = "Butin de l'arène",
--	[181083] = "Sothos and Jarien's Heirlooms",				-- No Translation
	[181147] = "Avis de recherche",
	[181150] = "Journal poussiéreux",
	[181153] = "Avis de recherche : Kel'gash le Malfaisant",
	[181333] = "Flamme de Forgefer",
	[181334] = "Flamme de Darnassus",
	[181335] = "Flamme de Fossoyeuse",
	[181336] = "Flamme d'Orgrimmar",
	[181337] = "Flamme des Pitons-du-Tonnerre",
	[181748] = "Cristal de sang",
	[181756] = "Livre ancien endommagé",
	[181889] = "Avis de recherche",
	[182032] = "Journal de Galaen",
	[182115] = "Avis de recherche",
	[182165] = "Avis de recherche",
	[182549] = "Plans des Gangr'orcs",
	[182587] = "Avis de recherche",
	[182588] = "Avis de recherche",
	[182392] = "Panneau d'affichage de Garadar",
	[182393] = "Panneau d'affichage de Telaar",
	[182947] = "Le Codex de sang",
	[182952] = "Détritus de la pompe à vapeur",
	[183284] = "Avis de recherche",
	[183770] = "Console de contrôle de B'naar",
	[183811] = "Avis de recherche",
	[184300] = "Focalisation nécromantique",
	[184465] = "Cache de la Légion",
	[184660] = "Avis de recherche",
	[184825] = "Tome lashh'an",
	[184945] = "Avis de recherche",
	[184946] = "Avis de recherche",
	[185035] = "Avis de recherche",
	[185126] = "Prison de cristal",
	[185165] = "Communicateur de la Légion",
	[185168] = "Coffre en gangrefer renforcé",
	[185927] = "Prisme en gangrecristal",
	[186426] = "Avis de recherche",
	[186648] = "Malle d'Hazlek",
	[186667] = "Paquet de Norkani",
	[186672] = "Sac de Kasha",
	[186887] = "Grosse citrouille de la Sanssaint",
	[187021] = "Sacoche de Bakkalzu",
	[187273] = "Empreinte de sabot suspecte",
	[187559] = "Feu de joie de la Horde",
	[187564] = "Feu de joie de l'Alliance",
	[187565] = "Ancien Atkanok",
	[187674] = "Carapace durcie d'Ith'rix",
	[187851] = "Sanctuaire du sectateur",
	[187905] = "Œuf massif luminescent",
	[187916] = "Feu de joie de l'Alliance",
	[187917] = "Feu de joie de l'Alliance",
	[187921] = "Feu de joie de l'Alliance",
	[187923] = "Feu de joie de l'Alliance",
	[187924] = "Feu de joie de l'Alliance",
	[187927] = "Feu de joie de l'Alliance",
	[187947] = "Feu de joie de la Horde",
	[187948] = "Feu de joie de la Horde",
	[187957] = "Feu de joie de la Horde",
	[187958] = "Feu de joie de la Horde",
	[187959] = "Feu de joie de la Horde",
	[188085] = "Céréales pestiférées",
	[188128] = "Flamme de l'Exodar",
	[188129] = "Flamme de Lune-d’Argent",
	[188261] = "Journal endommagé",
	[188364] = "Piège à crabes détruit",
	[188365] = "Cœur des anciens",
	[188419] = "Ancien Mana'loa",
	[188667] = "Ambregraine",
	[189311] = "Tome relié de chair",
	[189989] = "Débris de la taupe mécanique sombrefer",
	[189990] = "Débris de la taupe mécanique sombrefer",
})
do a[key] = value; end