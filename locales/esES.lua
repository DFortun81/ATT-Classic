-- Localization for Spanish (Spain) and Spanish (Mexico) Clients.
if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";

local a = L.ZONE_TEXT_TO_MAP_ID;
wipe(a);
for key,value in pairs({
	-- Classic
	["Cavernas de Brazanegra"] = 221,	-- Blackfathom Deeps
	["Profundidades de Roca Negra"] = 242,	-- Blackrock Depths
	["Guarida Alanegra"] = 287,	-- Blackwing Lair
	["Montaña Roca Negra"] = 33,	-- Blackrock Mountain
	["Cumbre de Roca Negra"] = 250,	-- Blackrock Spire
	[DUNGEON_FLOOR_TANARIS18] = 75,	-- Caverns of Time
	["La Masacre"] = 234,	-- Dire Maul
	["Tranvía Subterráneo"] = 499,	-- Deeprun Tram
	["Gnomeregan"] = 226,	-- Gnomeregan
	["Maraudon"] = 280,	-- Maraudon
	["Núcleo de Magma"] = 232,	-- Molten Core
	["Naxxramas"] = 162,	-- Naxxramas
	["Guarida de Onyxia"] = 248,	-- Onyxia's Lair
	["Sima Ígnea"] = 213,	-- Ragefire Chasm
	["Zahúrda Rojocieno"] = 300,	-- Razorfen Downs
	["Horado Rajacieno"] = 301,	-- Razorfen Kraul
	["Ruinas de Ahn'Qiraj"] = 247,	-- Ruins of Ahn'Qiraj
	["Monasterio Escarlata"] = 435,	-- Scarlet Monastery
	["Scholomance"] = 476,	-- Scholomance
	["Castillo de Colmillo Oscuro"] = 310,	-- Shadowfang Keep
	["Stratholme"] = 317,	-- Stratholme
	["Templo de Ahn'Qiraj"] = 320,	-- Temple of Ahn'Qiraj
	["Las Minas de la Muerte"] = 291,	-- The Deadmines
	["El Templo de Atal'Hakkar"] = 220,	-- The Temple of Atal'hakkar
	["Las Mazmorras"] = 225,	-- The Stockade
	["Uldaman"] = 230,	-- Uldaman
	["Cuevas de los Lamentos"] = 279,	-- Wailing Caverns
	["Zul'Farrak"] = 219,	-- Zul'Farrak
	["Zul'Gurub"] = 337,	-- Zul'Gurub
	
	-- TBC
	["Criptas Auchenai"] = 256,	-- Auchenai Crypts
	["Karazhan"] = 350,	-- Karazhan
	["Guarida de Gruul"] = 330,	-- Gruul's Lair
	["Murallas del Fuego Infernal"] = 347,	-- Hellfire Ramparts
	["La Cima Hyjal"] = 329,	-- Hyjal Summit
	["Bancal del Magister"] = 348,	-- Magister's Terrace
	["Guarida de Magtheridon"] = 331,	-- Magtheridon's Lair
	["Tumbas de Maná"] = 272,	-- Mana Tombs
	["Antiguas Laderas de Trabalomas"] = 274,	-- Old Hillsbrad Foothills
	["Caverna Santuario Serpiente"] = 332,	-- Serpentshrine Cavern
	["Salas Sethekk"] = 258,	-- Sethekk Halls
	["Laberinto de las Sombras"] = 260,	-- Shadow Labyrinth
	["Meseta de La Fuente del Sol"] = 335,	-- Sunwell Plataeu
	["El Castillo de la Tempestad"] = 334,	-- Tempest Keep
	["El Arcatraz"] = 269,	-- The Arcatraz
	["La Ciénaga Negra"] = 273,	-- The Black Morass
	["El Horno de Sangre"] = 261,	-- The Blood Furnace
	["Templo Oscuro"] = 340,	-- The Black Temple
	["El Invernáculo"] = 266,	-- The Botanica
	["El Mechanar"] = 267,	-- The Mechanar
	["Las Salas Arrasadas"] = 246,	-- The Shattered Halls
	["Recinto de los Esclavos"] = 265,	-- The Slave Pens
	["La Cámara de Vapor"] = 263,	-- The Steamvault
	["La Sotiénaga"] = 262,	-- The Underbog
	["Zul'Aman"] = 333,	-- Zul'Aman
})
do a[key] = value; end

local a = L.ALT_ZONE_TEXT_TO_MAP_ID;
wipe(a);
for key,value in pairs({
	-- Classic
	["Ahn'Qiraj"] = 320,	-- Ahn'Qiraj
	["Minas de la Muerte"] = 291,	-- Deadmines
	["Puertas de Ahn'Qiraj"] = 1451,	-- Gates of Ahn'Qiraj
	["El Ojo"] = 334,	-- The Eye
})
do a[key] = value; end

local a = L.ALT_PROFESSION_TEXT_TO_ID;
for key,value in pairs({
	["Ingeniería"] = 4036,	-- Engineering
	["Primeros auxilios"] = 3273,	-- First Aid
	["Marroquinería"] = 2108,	-- Leatherworking
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
	[31] = "Estatua de león antigua",
	[34] = "Vieja jarra",
	[55] = "Un cadáver medio comido",
	[56] = "Cadáver de Rolf",
	[61] = "Una tumba erosionada",
	[256] = "¡Se busca!",
	[259] = "Barrica semienterrada",
	[270] = "Barrica de Cerveza del Trueno sin vigilar",
	[2059] = "Un cadáver de enano",
	[2076] = "Caldera burbujeante",
	[2083] = "Correspondencia de los Velasangre",
	[2701] = "Fragmentos iridiscentes",
	[2702] = "Piedra de Vínculo Interior",
	[2713] = "Tablón de Se busca",
	[2908] = "Cajón de suministros sellado",
	[3972] = "SE BUSCA",
	[4141] = "Consola de control",
	[6751] = "Planta con extraños frutos",
	[6752] = "Planta con extrañas hojas",
	[7510] = "Fronda crecida",
	[19023] = "Página 2351",
	[20985] = "Tierra esparcida",
	[20992] = "Escudo negro",
	[21042] = "Identificación de guardia de Theramore",
	[35251] = "Cofre de Karnitol",
	[112948] = "Caja fuerte de El Intrépido cerrada",
--	[113768] = GetSpellInfo(61820),
	[113768] = "Huevo de colores vivos",
	[123329] = "Cofre de Baelog",
	[131474] = "Los Discos de Norgannon",
	[131979] = "Cofre grande de Leñoscuro",
	[138492] = "Fragmentos de Myzrael",
	[141979] = "Tesoro antiguo",
	[142195] = "Mapa de batalla de los Zarpaleña",
	[142343] = "Pedestal de Uldum",
	[142487] = "El Destellamatic 5200",
	[144063] = "Monolito de Equinex",
	[148502] = "Página 9",
	[148504] = "Una lápida llamativa",
	[156561] = "Cartel de Se busca",
	[160836] = "Arca de reliquias",
	[160845] = "Arca oscura",
	[161495] = "Caja fuerte secreta",
	[161504] = "Un paquetito",
	[161505] = "Una balsa estropeada",
	[161521] = "Equipo de investigación",
	[161526] = "Cajón de comestibles",
	[164820] = "Placa de Guarda oscuro",
	[164885] = "Dragón nocturno corrupto",
	[164886] = "Melodía corrupta",
	[164887] = "Flor del viento corrupta",
	[164888] = "Blancoria corrupta",
	[164955] = "Torre de cristal del Norte",
	[164956] = "Torre de cristal del Oeste",
	[164957] = "Torre de cristal del Este",
	[169243] = "Cofre de los Siete",
	[173232] = "Diseños de herrería",
	[174682] = "Cuidado con los pterrordáctilos",
	[175320] = "SE BUSCA: ¡Viscoso!",
	[175524] = "Cristal rojo misterioso",
	[175756] = "La Plaga de Lordaeron",
	[176090] = "Restos humanos",
	[176091] = "Caldera de Muertobosque",
	[176115] = "Cartel de Se busca: Arnak Tótem Siniestro",
	[176392] = "Caldera de la Plaga",
	[177787] = "Cuaderno de bitácora de Masatormento",
	[177904] = "Cartel de Se busca: Besseleth",
	[177964] = "Piedra de las profundidades",
	[179485] = "Trampa rota",
	[179501] = "Alijo de Knot Thimblejack",
	[179832] = "Almohada ornamentada de Pilaprieta",
	[179564] = "Tributo a Gordok",
	[179697] = "Arqueta de la arena",
	[180448] = "Cartel de Se busca: Pinzamorten",
	[180503] = "Libro de cocina de Sandy",
	[180690] = "Arca del escarabajo grande",
	[180691] = "Arca del escarabajo",
	[180794] = "Diario de Jandice Barov",
	[180918] = "Se busca: Thaelis el Hambriento",
	[181011] = "Diario del magister Ocaso Marchito",
--	[181074] = "Arena Spoils",								-- No translation
--	[181083] = "Sothos and Jarien's Heirlooms",				-- No Translation
	[181147] = "Cartel de Se busca",
	[181150] = "Diario polvoriento",
	[181153] = "Cartel de Se busca: Kel'gash el Malvado",
	[181333] = "Llama de Forjaz",
	[181334] = "Llama de Darnassus",
	[181335] = "Llama de Entrañas",
	[181336] = "Llama de Orgrimmar",
	[181337] = "Llama de Cima del Trueno",
	[181748] = "Cristal de sangre",
	[181756] = "Libro antiguo maltrecho",
	[181889] = "Cartel de Se busca",
	[182032] = "Diario de Galaen",
	[182115] = "Cartel de Se busca",
	[182165] = "Cartel de Se busca",
	[182549] = "Planos de orcos viles",
	[182587] = "Cartel de Se busca",
	[182588] = "Cartel de Se busca",
	[182392] = "Tablón de anuncios de Garadar",
	[182393] = "Tablón de anuncios de Telaar",
	[182947] = "El Códice de Sangre",
	[182952] = "Restos flotantes de bomba de vapor",
	[183284] = "Cartel de Se busca",
	[183770] = "Consola de control B'naar",
	[183811] = "Cartel de Se busca",
	[184300] = "Foco nigromántico",
	[184465] = "Alijo de la Legión",
	[184660] = "Cartel de Se busca",
	[184825] = "Escrito Lashh'an",
	[184945] = "Cartel de Se busca",
	[184946] = "Cartel de Se busca",
	[185035] = "Cartel de Se busca",
	[185126] = "Prisión de cristal",
	[185165] = "Comunicador de la Legión",
	[185168] = "Cofre de hierro vil reforzado",
	[185927] = "Prisma cristalino vil",
	[186426] = "Cartel de Se busca",
	[186648] = "Baúl de Hazlek",
	[186667] = "Paquete de Norkani",
	[186672] = "Bolsa de Kasha",
	[186887] = "Calabaza iluminada",
	[187021] = "Cartera de Bakkalzu",
	[187273] = "Huella de casco sospechosa",
	[187559] = "Fogata de la Horda",
	[187564] = "Fogata de la Alianza",
	[187565] = "Ancestro Atkanok",
	[187674] = "Caparazón endurecido de Ith'rix",
	[187851] = "Santuario de cultor",
	[187905] = "Huevo gigante resplandeciente",
	[187916] = "Fogata de la Alianza",
	[187917] = "Fogata de la Alianza",
	[187921] = "Fogata de la Alianza",
	[187923] = "Fogata de la Alianza",
	[187924] = "Fogata de la Alianza",
	[187927] = "Fogata de la Alianza",
	[187947] = "Fogata de la Horda",
	[187948] = "Fogata de la Horda",
	[187957] = "Fogata de la Horda",
	[187958] = "Fogata de la Horda",
	[187959] = "Fogata de la Horda",
	[188085] = "Grano apestado",
	[188128] = "Llama de El Exodar",
	[188129] = "Llama de Lunargenta",
	[188261] = "Diario maltrecho",
	[188364] = "Trampa para cangrejos destrozada",
	[188365] = "Corazón de los ancestros",
	[188419] = "Ancestro Mana'loa",
	[188667] = "Grano ámbar",
	[189311] = "Escrito encuadernado en carne",
	[189989] = "Restos de la máquina topo Hierro Negro",
	[189990] = "Restos de la máquina topo Hierro Negro",
})
do a[key] = value; end