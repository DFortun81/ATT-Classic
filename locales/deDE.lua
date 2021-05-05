-- Localization for German Clients.
if GetLocale() ~= "deDE" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";

-- TODO
L.SAVED_TO_DJ_INSTANCES["Violette Festung"] = "Die Violette Festung";
L.SAVED_TO_DJ_INSTANCES["Geschmolzener Kern"] = "Der Geschmolzene Kern";
L.SAVED_TO_DJ_INSTANCES["Echsenkessel: Höhle des Schlangenschreins"] = "Höhle des Schlangenschreins";
L.SAVED_TO_DJ_INSTANCES["Festung der Stürme"] = "Das Auge";
L.SAVED_TO_DJ_INSTANCES["Der Sonnenbrunnen"] = "Sonnenbrunnenplateau";
L.SAVED_TO_DJ_INSTANCES["Eiskronenzitadelle"] = "Die Eiskronenzitadelle";
L.SAVED_TO_DJ_INSTANCES["Rubinsanktum"] = "Das Rubinsanktum";
L.SAVED_TO_DJ_INSTANCES["Terrasse des Endlosen Frühlings"] = "Terrasse d. Endlosen Frühlings";
L.SAVED_TO_DJ_INSTANCES["Herz der Angst"] = "Das Herz der Angst";

local a = L.ZONE_TEXT_TO_MAP_ID;
wipe(a);
for key,value in pairs({
	-- Classic
	["Tiefschwarze Grotte"] = 221,	-- Blackfathom Deeps
	["Blackrocktiefen"] = 242,	-- Blackrock Depths
	["Pechschwingenhort"] = 287,	-- Blackwing Lair
	["Der Blackrock"] = 35,	-- Blackrock Mountain
	["Blackrockspitze"] = 250,	-- Blackrock Spire
	["Höhlen der Zeit"] = 75,	-- Caverns of Time
	["Düsterbruch"] = 234,	-- Dire Maul
	["Die Tiefenbahn"] = 499,	-- Deeprun Tram
	["Gnomeregan"] = 226,	-- Gnomeregan
	["Maraudon"] = 280,	-- Maraudon
	["Geschmolzener Kern"] = 232,	-- Molten Core
	["Naxxramas"] = 162,	-- Naxxramas
	["Onyxias Hort"] = 248,	-- Onyxia's Lair
	["Ragefireabgrund"] = 213,	-- Ragefire Chasm
	["Die Hügel von Razorfen"] = 300,	-- Razorfen Downs
	["Der Kral von Razorfen"] = 301,	-- Razorfen Kraul
	["Ruinen von Ahn'Qiraj"] = 247,	-- Ruins of Ahn'Qiraj
	["Das scharlachrote Kloster"] = 435,	-- Scarlet Monastery
	["Scholomance"] = 476,	-- Scholomance
	["Burg Schattenfang"] = 310,	-- Shadowfang Keep
	["Strathholme"] = 317,	-- Stratholme
	["Tempel von Ahn'Qiraj"] = 320,	-- Temple of Ahn'Qiraj
	["Die Todesminen"] = 291,	-- The Deadmines
	["Tempel von Atal'Hakkar"] = 220,	-- The Temple of Atal'hakkar
	["Der Tempel von Atal'Hakkar"] = 220,	-- The Temple of Atal'Hakkar
	["Das Verlies"] = 225,	-- The Stockade
	["Uldaman"] = 230,	-- Uldaman
	["Die Höhlen des Wehklagens"] = 279,	-- Wailing Caverns
	["Zul'Farrak"] = 219,	-- Zul'Farrak
	["Zul'Gurub"] = 337,	-- Zul'Gurub
	
	-- TBC
	["Auchenaikrypta"] = 256,	-- Auchenai Crypts
	["Karazhan"] = 350,	-- Karazhan
	["Gruuls Unterschlupf"] = 330,	-- Gruul's Lair
	["Höllenfeuerbollwerk"] = 347,	-- Hellfire Ramparts
	["Hyjalgipfel"] = 329,	-- Hyjal Summit
	["Terrasse der Magister"] = 348,	-- Magister's Terrace
	["Magtheridons Kammer"] = 331,	-- Magtheridon's Lair
	["Managruft"] = 272,	-- Mana Tombs
	["Vorgebirge des Alten Hügellands"] = 274,	-- Old Hillsbrad Foothills
	["Höhle des Schlangenschreins"] = 332,	-- Serpentshrine Cavern
	["Sethekkhallen"] = 258,	-- Sethekk Halls
	["Schattenlabyrinth"] = 260,	-- Shadow Labyrinth
	["Sonnenbrunnenplateau"] = 335,	-- Sunwell Plataeu
	["Festung der Stürme"] = 334,	-- Tempest Keep
	["Die Arkatraz"] = 269,	-- The Arcatraz
	["Der Schwarze Morast"] = 273,	-- The Black Morass
	["Der Blutkessel"] = 261,	-- The Blood Furnace
	["Der Schwarze Tempel"] = 340,	-- The Black Temple
	["Die Botanika"] = 266,	-- The Botanica
	["Die Mechanar"] = 267,	-- The Mechanar
	["Die Zerschmetterten Hallen"] = 246,	-- The Shattered Halls
	["Die Sklavenunterkünfte"] = 265,	-- The Slave Pens
	["Die Dampfkammer"] = 263,	-- The Steamvault
	["Der Tiefensumpf"] = 262,	-- The Underbog
	["Zul'Aman"] = 333,	-- Zul'Aman
})
do a[key] = value; end

local a = L.ALT_ZONE_TEXT_TO_MAP_ID;
wipe(a);
for key,value in pairs({
	-- Classic
	["Ahn'Qiraj"] = 320,	-- Ahn'Qiraj
	["Todesminen"] = 291,	-- Deadmines
	["Tore von Ahn'Qiraj"] = 1451,	-- Gates of Ahn'Qiraj
	["Festung der Stürme"] = 334,	-- The Eye
})
do a[key] = value; end


local a = L.ALT_PROFESSION_TEXT_TO_ID;
for key,value in pairs({
	["Ingenieurskunst"] = 4036,	-- Engineering
	["Erste Hilfe"] = 3273,	-- First Aid
	["Lederverarbeitung"] = 2108,	-- Leatherworking
})
do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1] = "Gemeinsame Bossbeute",										-- Common Boss Drop
})
do a[key] = value; end

local a = L.OBJECT_ID_NAMES;
for key,value in pairs({
	-- Enter translated OBJECTID's here
	[31] = "Alte Löwenstatue",
	[34] = "Alter Henkelkrug",
	[55] = "Ein halb aufgefressener Körper",
	[56] = "Rolfs Leichnam",
	[61] = "Ein verwittertes Grab",
	[256] = "GESUCHT",
	[259] = "Halb vergrabenes Fass",
	[270] = "Unbewachtes Fass mit Donnerbräu Lager",
	[2059] = "Eine Zwergenleiche",
	[2076] = "Blubbernder Kessel",
	[2083] = "Blutsegelkorrespondenz",
	[2701] = "Regenbogenfarbene Splitter",
	[2702] = "Stein der Inneren Bindung",
	[2713] = "Steckbriefbrett",
	[2908] = "Versiegelte Vorratskiste",
	[3972] = "GESUCHT",
	[4141] = "Steuerkonsole",
	[6751] = "Sonderbare fruchtbeladene Pflanze",
	[6752] = "Sonderbare wedelbestückte Pflanze",
	[7510] = "Sprießender Wedel",
	[19023] = "Seite 2351",
	[20985] = "Lockere Erde",
	[20992] = "Schwarzer Schild",
	[21042] = "Abzeichen der Wache von Theramore",
	[35251] = "Karnitols Truhe",
	[112948] = "Verschlossene Geldkassette der 'Kühnheit'",
--	[113768] = GetSpellInfo(61820),
	[113768] = "Bunt gefärbtes Ei",
	[123329] = "Baelogs Truhe",
	[131474] = "Die Scheiben von Norgannon",
	[131979] = "Große Dunkelholztruhe",
	[138492] = "Splitter von Myzrael",
	[141979] = "Antiker Schatz",
	[142195] = "Schlachtplan der Waldpfoten",
	[142343] = "Podest von Uldum",
	[142487] = "Der Funkelmat 5200",
	[144063] = "Monolith von Equinex",
	[148502] = "Seite 9",
	[148504] = "Ein verdächtiger Grabstein",
	[156561] = "Steckbrief",
	[160836] = "Reliktkasten",
	[160845] = "Dunkler Kasten",
	[161495] = "Geheimsafe",
	[161504] = "Ein kleines Pack",
	[161505] = "Ein havariertes Floß",
	[161521] = "Forscherausrüstung",
	[161526] = "Kiste mit Lebensmitteln",
	[164820] = "Namensschild des Dunkelbewahrers",
	[164885] = "Verderbter Nachtdrache",
	[164886] = "Verderbte Liedblume",
	[164887] = "Verderbte Windblüte",
	[164888] = "Verderbte Peitscherwurzel",
	[164955] = "Nördlicher Kristallpylon",
	[164956] = "Westlicher Kristallpylon",
	[164957] = "Östlicher Kristallpylon",
	[169243] = "Truhe der Sieben",
	[173232] = "Schmiedekunstpläne",
	[174682] = "Vorsicht, Pterrordax!",
	[175320] = "GESUCHT: Gurgelbacke!",
	[175524] = "Geheimnisvoller roter Kristall",
	[175756] = "Die Geißel von Lordaeron",
	[176090] = "Menschliche Überreste",
	[176091] = "Kessel der Totenwaldfelle",
	[176115] = "Steckbrief: Arnak Grimmtotem",
	[176392] = "Geißelkessel",
	[177787] = "Rackmores Logbuch",
	[177904] = "Steckbrief: Besseleth",
	[177964] = "Tiefenstein",
	[179485] = "Beschädigte Falle",
	[179501] = "Knot Zwingschraubs Behälter",
	[179832] = "Verziertes Kissen von Kissenquetscher",
	[179564] = "Tribut der Gordok",
	[179697] = "Arenaschatztruhe",
	[180448] = "Steckbrief: Totenstachel",
	[180503] = "Sandiges Kochbuch",
	[180690] = "Großer Skarabäuskasten",
	[180691] = "Skarabäuskasten",
	[180794] = "Tagebuch von Jandice Barov",
	[180918] = "GESUCHT: Thaelis der Manadurstige",
	[181011] = "Magister Nachtschimmers Tagebuch",
	[181074] = "Arenabeute",
--	[181083] = "Sothos and Jarien's Heirlooms",				-- No Translation
	[181147] = "Steckbrief",
	[181150] = "Staubiges Tagebuch",
	[181153] = "Gesucht: Kel'gash der Boshafte",
	[181333] = "Flamme von Eisenschmiede",
	[181334] = "Flamme von Darnassus",
	[181335] = "Flamme von Unterstadt",
	[181336] = "Flamme von Orgrimmar",
	[181337] = "Flamme von Donnerfels",
	[181748] = "Blutkristall",
	[181756] = "Zerfleddertes altes Buch",
	[181889] = "Steckbrief",
	[182032] = "Galaens Tagebuch",
	[182115] = "Steckbrief",
	[182165] = "Steckbrief",
	[182549] = "Höllenorcpläne",
	[182587] = "Steckbrief",
	[182588] = "Steckbrief",
	[182392] = "Aushang von Garadar",
	[182393] = "Aushang von Telaar",
	[182947] = "Kodex des Blutes",
	[182952] = "Treibgut der Dampfpumpe",
	[183284] = "Steckbrief",
	[183770] = "Steuerkonsole von B'naar",
	[183811] = "Steckbrief",
	[184300] = "Nekromantischer Fokus",
	[184465] = "Behälter der Legion",
	[184660] = "Steckbrief",
	[184825] = "Foliant der Lashh'an",
	[184945] = "Steckbrief",
	[184946] = "Steckbrief",
	[185035] = "Steckbrief",
	[185126] = "Kristallgefängnis",
	[185165] = "Legionskommunikator",
	[185168] = "Verstärkte Teufelseisentruhe",
	[185927] = "Teufelskristallprisma",
	[186426] = "Steckbrief",
	[186648] = "Hazleks Koffer",
	[186667] = "Norkanis Päckchen",
	[186672] = "Kashas Tasche",
	[186881] = "[Dark Iron Sabotage Plans]",
	[186887] = "Große Kürbislaterne",
	[187021] = "Bakkalzus Ranzen",
	[187273] = "Verdächtiger Hufabdruck",
	[187559] = "Freudenfeuer der Horde",
	[187564] = "Freudenfeuer der Allianz",
	[187565] = "Ältester Atkanok",
	[187674] = "Ith'rix' gehärteter Knochenpanzer",
	[187851] = "Kultistenschrein",
	[187905] = "Schweres leuchtendes Ei",
	[187916] = "Freudenfeuer der Allianz",
	[187917] = "Freudenfeuer der Allianz",
	[187921] = "Freudenfeuer der Allianz",
	[187923] = "Freudenfeuer der Allianz",
	[187924] = "Freudenfeuer der Allianz",
	[187927] = "Freudenfeuer der Allianz",
	[187947] = "Freudenfeuer der Horde",
	[187948] = "Freudenfeuer der Horde",
	[187957] = "Freudenfeuer der Horde",
	[187958] = "Freudenfeuer der Horde",
	[187959] = "Freudenfeuer der Horde",
	[188085] = "Verseuchtes Korn",
	[188128] = "Flamme der Exodar",
	[188129] = "Flamme von Silbermond",
	[188261] = "Zerfleddertes Tagebuch",
	[188364] = "Defekte Krabbenfalle",
	[188365] = "Herz der Uralten",
	[188419] = "Ältester Mana'loa",
	[188667] = "Bernsteinsamen",
	[189311] = "Fleischgebundener Foliant",
	[189989] = "Zerstörte Maulwurfmaschine der Dunkeleisenzwerge",
	[189990] = "Zerstörte Maulwurfmaschine der Dunkeleisenzwerge",
})
do a[key] = value; end
