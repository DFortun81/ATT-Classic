-- Localization for French (France) Clients.
if GetLocale() ~= "frFR" then return; end
local app = select(2, ...);
local L = app.L;

-- TODO
L.SAVED_TO_DJ_INSTANCES["Temple noir"] = "Le Temple noir";
L.SAVED_TO_DJ_INSTANCES["Le Puits de soleil"] = "Plateau du Puits de soleil";
L.SAVED_TO_DJ_INSTANCES["Donjon de la Tempête"] = "L’Œil";
L.SAVED_TO_DJ_INSTANCES["Glissecroc : caverne du sanctuaire du Serpent"] = "Caverne du sanctuaire du Serpent";

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["Profondeurs de Brassenoire"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["Profondeurs de Blackrock"] = 242;	-- BRD
L.ZONE_TEXT_TO_MAP_ID["Mont Blackrock"] = 35;	-- BRM
L.ZONE_TEXT_TO_MAP_ID["Pic Blackrock"] = 250;	-- BRS
L.ZONE_TEXT_TO_MAP_ID["Mortemines"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["Les Mortemines"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["Hache-tripes"] = 234;	-- Dire Maul
L.ZONE_TEXT_TO_MAP_ID["Gnomeregan"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["Maraudon"] = 280;	-- Maraudon
L.ZONE_TEXT_TO_MAP_ID["Gouffre de Ragefeu"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["Souilles de Tranchebauge"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["Kraal de Tranchebauge"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["Scholomance"] = 310;	-- SCHOLO
L.ZONE_TEXT_TO_MAP_ID["Donjon d'Ombrecroc"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["Monastère écarlate"] = 435;	-- SM
L.ZONE_TEXT_TO_MAP_ID["Strathholme"] = 317;	-- STRATH
L.ZONE_TEXT_TO_MAP_ID["Le temple d'Atal'Hakkar"] = 220;	-- ST
L.ZONE_TEXT_TO_MAP_ID["Uldaman"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["Cavernes des lamentations"] = 279;	-- WC
L.ZONE_TEXT_TO_MAP_ID["Zul'Farrak"] = 219;	-- ZF

L.ZONE_TEXT_TO_MAP_ID["Auchindoun: Cryptes Auchenaï"] = 256;	-- CRYPTS
L.ZONE_TEXT_TO_MAP_ID["Auchindoun: Tombes-mana"] = 272;	-- MT
L.ZONE_TEXT_TO_MAP_ID["Auchindoun: Les salles des Sethekk"] = 258;	-- SETH
L.ZONE_TEXT_TO_MAP_ID["Auchindoun: Labyrinthe des Ombres"] = 260;	-- SLABS
L.ZONE_TEXT_TO_MAP_ID["Grottes du Temps: Le Noir marécage"] = 273;	-- BLKM
L.ZONE_TEXT_TO_MAP_ID["Grottes du Temps: Contreforts de Hautebrande d’antan"] = 274;	-- OHF
L.ZONE_TEXT_TO_MAP_ID["Coilfang Reservoir: The Slave Pens"] = 265;	-- SPENS
L.ZONE_TEXT_TO_MAP_ID["Coilfang Reservoir: The Steamvault"] = 263;	-- SVALT
L.ZONE_TEXT_TO_MAP_ID["Coilfang Reservoir: The Underbog"] = 262;	-- UNBOG
L.ZONE_TEXT_TO_MAP_ID["Hellfire Citadel: The Blood Furnace"] = 261;	-- BF
L.ZONE_TEXT_TO_MAP_ID["Hellfire Citadel: Hellfire Ramparts"] = 347;	-- RAMPS
L.ZONE_TEXT_TO_MAP_ID["Hellfire Citadel: The Shattered Halls"] = 246;	-- SHALLS
L.ZONE_TEXT_TO_MAP_ID["Tempest Keep: The Arcatraz"] = 269;	-- ARCA
L.ZONE_TEXT_TO_MAP_ID["Tempest Keep: The Botanica"] = 266;	-- BOT
L.ZONE_TEXT_TO_MAP_ID["Tempest Keep: The Mechanar"] = 267;	-- MECH
L.ZONE_TEXT_TO_MAP_ID["Magister's Terrace"] = 348;	-- MGT
L.ZONE_TEXT_TO_MAP_ID["Karazhan"] = 350;	-- KARA
L.ZONE_TEXT_TO_MAP_ID["Gruul's Lair"] = 330;	-- GRUL
L.ZONE_TEXT_TO_MAP_ID["Magtheridon's Lair"] = 331;	-- MAG
L.ZONE_TEXT_TO_MAP_ID["Serpentshrine Cavern"] = 332;	-- SSC
L.ZONE_TEXT_TO_MAP_ID["Donjon de la Tempête"] = 334;	-- TK
L.ZONE_TEXT_TO_MAP_ID["The Battle for Mount Hyjal"] = 329;	-- HYJAL
L.ZONE_TEXT_TO_MAP_ID["The Black Temple"] = 340;	-- BT
L.ZONE_TEXT_TO_MAP_ID["Sunwell Plataeu"] = 335;	-- SWP
L.ZONE_TEXT_TO_MAP_ID["Zul'Aman"] = 333;	-- ZA

L.ALT_ZONE_TEXT_TO_MAP_ID["Donjon de la Tempête"] = 334;		-- TK
L.ALT_ZONE_TEXT_TO_MAP_ID["Cryptes Auchenaï"] = 256;	-- CRYPTS
L.ALT_ZONE_TEXT_TO_MAP_ID["Tombes-mana"] = 272;	-- MT
L.ALT_ZONE_TEXT_TO_MAP_ID["Les salles des Sethekk"] = 258;	-- SETH
L.ALT_ZONE_TEXT_TO_MAP_ID["Labyrinthe des Ombres"] = 260;	-- SLABS
L.ALT_ZONE_TEXT_TO_MAP_ID["Le Noir marécage"] = 273;	-- BLKM
L.ALT_ZONE_TEXT_TO_MAP_ID["Contreforts de Hautebrande d’antan"] = 274;	-- OHF
L.ALT_ZONE_TEXT_TO_MAP_ID["The Slave Pens"] = 265;	-- SPENS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Steamvault"] = 263;	-- SVALT
L.ALT_ZONE_TEXT_TO_MAP_ID["The Underbog"] = 262;	-- UNBOG
L.ALT_ZONE_TEXT_TO_MAP_ID["The Blood Furnace"] = 261;	-- BF
L.ALT_ZONE_TEXT_TO_MAP_ID["Hellfire Ramparts"] = 347;	-- RAMPS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Shattered Halls"] = 246;	-- SHALLS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Arcatraz"] = 269;	-- ARCA
L.ALT_ZONE_TEXT_TO_MAP_ID["The Botanica"] = 266;	-- BOT
L.ALT_ZONE_TEXT_TO_MAP_ID["The Mechanar"] = 267;	-- MECH

local a = L.NPC_ID_NAMES;
for key,value in pairs({
	-- Enter translated NPCID's here
})
do a[key] = value; end

local a = L.OBJECT_ID_NAMES;
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