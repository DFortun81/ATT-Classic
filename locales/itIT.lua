-- Localization for Italian (Italy) Clients.
if GetLocale() ~= "itIT" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";

local a = L.ZONE_TEXT_TO_MAP_ID;
wipe(a);
for key,value in pairs({
	-- Classic
	["Blackfathom Deeps"] = 221,	-- Blackfathom Deeps
	["Blackrock Depths"] = 242,	-- Blackrock Depths
	["Blackwing Lair"] = 287,	-- Blackwing Lair
	["Blackrock Mountain"] = 33,	-- Blackrock Mountain
	["Blackrock Spire"] = 250,	-- Blackrock Spire
	[DUNGEON_FLOOR_TANARIS18] = 75,	-- Caverns of Time
	["Dire Maul"] = 234,	-- Dire Maul
	["Deeprun Tram"] = 499,	-- Deeprun Tram
	["Gnomeregan"] = 226,	-- Gnomeregan
	["Maraudon"] = 280,	-- Maraudon
	["Molten Core"] = 232,	-- Molten Core
	["Naxxramas"] = 162,	-- Naxxramas
	["Onyxia's Lair"] = 248,	-- Onyxia's Lair
	["Ragefire Chasm"] = 213,	-- Ragefire Chasm
	["Razorfen Downs"] = 300,	-- Razorfen Downs
	["Razorfen Kraul"] = 301,	-- Razorfen Kraul
	["Ruins of Ahn'Qiraj"] = 247,	-- Ruins of Ahn'Qiraj
	["Scarlet Monastery"] = 435,	-- Scarlet Monastery
	["Scholomance"] = 476,	-- Scholomance
	["Shadowfang Keep"] = 310,	-- Shadowfang Keep
	["Stratholme"] = 317,	-- Stratholme
	["Temple of Ahn'Qiraj"] = 320,	-- Temple of Ahn'Qiraj
	["The Deadmines"] = 291,	-- The Deadmines
	["The Temple of Atal'hakkar"] = 220,	-- The Temple of Atal'hakkar
	["The Temple of Atal'Hakkar"] = 220,	-- The Temple of Atal'Hakkar
	["The Stockade"] = 225,	-- The Stockade
	["Uldaman"] = 230,	-- Uldaman
	["Wailing Caverns"] = 279,	-- Wailing Caverns
	["Zul'Farrak"] = 219,	-- Zul'Farrak
	["Zul'Gurub"] = 337,	-- Zul'Gurub
	
	-- TBC
	["Auchenai Crypts"] = 256,	-- Auchenai Crypts
	["Karazhan"] = 350,	-- Karazhan
	["Gruul's Lair"] = 330,	-- Gruul's Lair
	["Hellfire Ramparts"] = 347,	-- Hellfire Ramparts
	["Hyjal Summit"] = 329,	-- Hyjal Summit
	["Magisters' Terrace"] = 348,	-- Magister's Terrace
	["Magtheridon's Lair"] = 331,	-- Magtheridon's Lair
	["Mana-Tombs"] = 272,	-- Mana Tombs
	["Old Hillsbrad Foothills"] = 274,	-- Old Hillsbrad Foothills
	["Serpentshrine Cavern"] = 332,	-- Serpentshrine Cavern
	["Sethekk Halls"] = 258,	-- Sethekk Halls
	["Shadow Labyrinth"] = 260,	-- Shadow Labyrinth
	["Sunwell Plateau"] = 335,	-- Sunwell Plataeu
	["Tempest Keep"] = 334,	-- Tempest Keep
	["The Arcatraz"] = 269,	-- The Arcatraz
	["The Black Morass"] = 273,	-- The Black Morass
	["The Blood Furnace"] = 261,	-- The Blood Furnace
	["Black Temple"] = 340,	-- The Black Temple
	["The Botanica"] = 266,	-- The Botanica
	["The Mechanar"] = 267,	-- The Mechanar
	["The Shattered Halls"] = 246,	-- The Shattered Halls
	["The Slave Pens"] = 265,	-- The Slave Pens
	["The Steamvault"] = 263,	-- The Steamvault
	["The Underbog"] = 262,	-- The Underbog
	["Zul'Aman"] = 333,	-- Zul'Aman
})
do a[key] = value; end

local a = L.ALT_ZONE_TEXT_TO_MAP_ID;
wipe(a);
for key,value in pairs({
	-- Classic
	["Ahn'Qiraj"] = 320,	-- Ahn'Qiraj
	["Deadmines"] = 291,	-- Deadmines
	["Cancelli di Ahn'Qiraj"] = 1451,	-- Gates of Ahn'Qiraj
	["The Battle for Mount Hyjal"] = 329,	-- The Battle for Mount Hyjal
	["The Black Temple"] = 329,	-- The Black Temple
	["L'occhio"] = 334,	-- The Eye
})
do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Enter translated NPCID's here
})
do a[key] = value; end

local a = L.OBJECT_ID_NAMES;
for key,value in pairs({
	-- Enter translated OBJECTID's here
	[31] = "Vecchia Statua di Leone",
	[34] = "Vecchio Fiasco",
	[55] = "Corpo Smangiucchiato",
	[56] = "Cadavere di Rolf",
	[61] = "Tomba Rovinata",
	[256] = "Ricercato!",
	[259] = "Barile Mezzo Sepolto",
--	[270] = "Unguarded Thunder Ale Barrel",						-- No translation
	[2059] = "Cadavere di un Nano",
	[2076] = "Calderone Ribollente",
	[2083] = "Corrispondenza dei Velerosse",
	[2701] = "Frammento Iridescente",
	[2702] = "Pietra del Vincolo Interno",
	[2713] = "Bacheca dei Ricercati",
	[2908] = "Cassa di Rifornimenti Sigillata",
	[3972] = "RICERCATO",
	[4141] = "Console di Comando",
	[6751] = "Strana Pianta da Frutto",
	[6752] = "Strana Pianta Frondosa",
	[7510] = "Pianta Rigogliosa",
	[19023] = "Pagina 2.351",
	[20985] = "Terra Smossa",
	[20992] = "Scudo Nero",
	[21042] = "Distintivo della Guardia di Theramore",
	[35251] = "Cassa di Karnitol",
	[112948] = "Forziere Chiuso dell'Intrepida",
--	[113768] = GetSpellInfo(61820),
	[113768] = "Uovo Decorato",
	[123329] = "Cassa di Baelog",
	[131474] = "Dischi di Norgannon",
	[131979] = "Grossa Cassa di Legnoscuro",
	[138492] = "Frammento di Myzrael",
	[141979] = "Tesoro Antico",
	[142195] = "Piani di Battaglia degli Gnoll",
	[142343] = "Piedistallo di Uldum",
	[142487] = "Lavatutto 5200",
	[144063] = "Monolito Equinex",
	[148502] = "Pagina 9",
	[148504] = "Lapide Notevole",
	[156561] = "Manifesto dei Ricercati",
	[160836] = "Reliquiario",
	[160845] = "Forziere Oscuro",
	[161495] = "Cassaforte Segreta",
--	[161504] = "A Small Pack",								-- No translation
	[161505] = "Zattera Distrutta",
	[161521] = "Equipaggiamento Scientifico",
	[161526] = "Cassa di Cibo",
	[164820] = "Targa del Guardiano Oscuro",
--	[164885] = "Corrupted Night Dragon",					-- No translation
--	[164886] = "Corrupted Songflower",						-- No translation
--	[164887] = "Corrupted Windblossom",						-- No translation
--	[164888] = "Corrupted Whipper Root",					-- No translation
	[164955] = "Pilastro di Cristallo Settentrionale",
	[164956] = "Pilastro di Cristallo Occidentale",
	[164957] = "Pilastro di Cristallo Orientale",
	[169243] = "Cassa dei Sette",
	[173232] = "Progetti di Forgiatura",
	[174682] = "Attenzione ai Pterrordattili",
--	[175320] = "WANTED: Murkdeep!",							-- No translation
--	[175524] = "Mysterious Red Crystal",					-- No translation
	[175756] = "Il Flagello di Lordaeron",
	[176090] = "Resti di Umanoide",
	[176091] = "Calderone dei Legnomorto",
--	[176115] = "Wanted Poster - Arnak Grimtotem",			-- No translation
	[176392] = "Calderone del Flagello",
	[177787] = "Diario di Rackmore",
--	[177904] = "Wanted Poster: Besseleth",					-- No translation
	[177964] = "Pietra Profonda",
	[179485] = "Trappola Rotta",
--	[179501] = "Knot Thimblejack's Cache",					-- No translation
	[179832] = "Cuscino Decorato di Pillaclencher",
	[179564] = "Tributo dei Gordok",
	[179697] = "Cassa del Tesoro dell'Arena",
	[180448] = "Manifesto dei Ricercati: Chelafunesta",
	[180503] = "Libro di Ricette Insabbiato",
	[180690] = "Grande Forziere dello Scarabeo",
	[180691] = "Forziere dello Scarabeo",
--	[180794] = "Journal of Jandice Barov",					-- No translation
	[180918] = "Ricercato: Thaelis il Famelico",
	[181011] = "Diario del Magistro Lungovespro",
--	[181074] = "Arena Spoils",								-- No translation
--	[181083] = "Sothos and Jarien's Heirlooms",				-- No Translation
	[181147] = "Manifesto dei Ricercati",
	[181150] = "Diario Impolverato",
	[181153] = "Manifesto dei Ricercati: Kel'gash il Perfido",
	[181333] = "Falò di Forgiardente",
	[181334] = "Falò di Darnassus",
	[181335] = "Falò di Sepulcra",
	[181336] = "Falò di Orgrimmar",
	[181337] = "Falò di Picco del Tuono",
	[181748] = "Cristallo di Sangue",
	[181756] = "Antico Libro Rovinato",
	[181889] = "Manifesto dei Ricercati",
	[182032] = "Diario di Galaen",
	[182115] = "Manifesto dei Ricercati",
	[182165] = "Manifesto dei Ricercati",
	[182549] = "Piani dei Vilorchi",
	[182587] = "Manifesto dei Ricercati",
	[182588] = "Manifesto dei Ricercati",
	[182392] = "Bacheca di Garadar",
	[182393] = "Bacheca di Telaar",
	[182947] = "Il Codice del Sangue",
	[182952] = "Rottami di Pompa del Vapore",
	[183284] = "Manifesto dei Ricercati",
	[183770] = "Console di Comando B'naar",
	[183811] = "Manifesto dei Ricercati",
	[184300] = "Focalizzatore Negromantico",
	[184465] = "Cassa della Legione",
	[184660] = "Manifesto dei Ricercati",
	[184825] = "Tomo Lashh'an",
	[184945] = "Manifesto dei Ricercati",
	[184946] = "Manifesto dei Ricercati",
	[185035] = "Manifesto dei Ricercati",
	[185126] = "Prigione di Cristallo",
	[185165] = "Comunicatore della Legione",
	[185168] = "Cassa Rinforzata di Vilferro",
	[185927] = "Vilprisma di Cristallo",
	[186426] = "Manifesto dei Ricercati",
	[186648] = "Baule di Hazlek",
	[186667] = "Pacchetto di Norkani",
	[186672] = "Sacca di Kasha",
	[186887] = "Grande Jack Lanterna",
	[187021] = "Zaino di Bakkalzu",
	[187273] = "Impronta di Zoccolo Sospetta",
	[187559] = "Falò dell'Orda",
	[187564] = "Falò dell'Alleanza",
	[187565] = "Anziano Atkanok",
	[187674] = "Carapace Rinforzato di Ith'rix",
	[187851] = "Santuario dei Cultisti",
	[187905] = "Uovo Rilucente Enorme",
	[187916] = "Falò dell'Alleanza",
	[187917] = "Falò dell'Alleanza",
	[187921] = "Falò dell'Alleanza",
	[187923] = "Falò dell'Alleanza",
	[187924] = "Falò dell'Alleanza",
	[187927] = "Falò dell'Alleanza",
	[187947] = "Falò dell'Orda",
	[187948] = "Falò dell'Orda",
	[187957] = "Falò dell'Orda",
	[187958] = "Falò dell'Orda",
	[187959] = "Falò dell'Orda",
	[188085] = "Grano Infetto",
	[188128] = "Falò di Exodar",
	[188129] = "Falò di Lunargenta",
	[188261] = "Diario Rovinato",
	[188364] = "Trappola per Granchi Distrutta",
	[188365] = "Cuore degli Antichi",
	[188419] = "Anziano Mana'loa",
	[188667] = "Frutto d'Ibisco",
	[189311] = "Tomo Rilegato con la Carne",
	[189989] = "Relitto della Trivella dei Ferroscuro",
	[189990] = "Relitto della Trivella dei Ferroscuro",
})
do a[key] = value; end
