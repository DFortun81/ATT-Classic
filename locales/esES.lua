-- Localization for Spanish (Spain) Clients.
if GetLocale() ~= "esES" then return; end
local app = select(2, ...);
local L = app.L;

-- TODO

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["Cavernas de Brazanegra"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["Profundidades de Roca Negra"] = 242;	-- BRD
L.ZONE_TEXT_TO_MAP_ID["Montaña Roca Negra"] = 35;	-- BRM
L.ZONE_TEXT_TO_MAP_ID["Cumbre de Roca Negra"] = 250;	-- BRS
L.ZONE_TEXT_TO_MAP_ID["Minas de la Muerte"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["La Masacre"] = 234;	-- Dire Maul
L.ZONE_TEXT_TO_MAP_ID["Las Minas de la Muerte"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["Gnomeregan"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["Maraudon"] = 280;	-- Maraudon
L.ZONE_TEXT_TO_MAP_ID["Sima Ígnea"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["Zahúrda Rojocieno"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["Horado Rajacieno"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["Scholomance"] = 310;	-- SCHOLO
L.ZONE_TEXT_TO_MAP_ID["Castillo de Colmillo Oscuro"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["Monasterio Escarlata"] = 435;	-- SM
L.ZONE_TEXT_TO_MAP_ID["Strathholme"] = 317;	-- STRATH
L.ZONE_TEXT_TO_MAP_ID["El Templo de Atal'Hakkar"] = 220;	-- ST
L.ZONE_TEXT_TO_MAP_ID["Uldaman"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["Cuevas de los Lamentos"] = 279;	-- WC
L.ZONE_TEXT_TO_MAP_ID["Zul'Farrak"] = 219;	-- ZF

L.ZONE_TEXT_TO_MAP_ID["Auchindoun: Criptas Auchenai"] = 256;	-- CRYPTS
L.ZONE_TEXT_TO_MAP_ID["Auchindoun: Tumbas de Maná"] = 272;	-- MT
L.ZONE_TEXT_TO_MAP_ID["Auchindoun: Salas Sethekk"] = 258;	-- SETH
L.ZONE_TEXT_TO_MAP_ID["Auchindoun: Laberinto de las Sombras"] = 260;	-- SLABS
L.ZONE_TEXT_TO_MAP_ID["Cavernas del Tiempo: La Ciénaga Negra"] = 273;	-- BLKM
L.ZONE_TEXT_TO_MAP_ID["Cavernas del Tiempo: Antiguas Laderas de Trabalomas"] = 274;	-- OHF
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
L.ZONE_TEXT_TO_MAP_ID["El Castillo de la Tempestad"] = 334;	-- TK
L.ZONE_TEXT_TO_MAP_ID["The Battle for Mount Hyjal"] = 329;	-- HYJAL
L.ZONE_TEXT_TO_MAP_ID["The Black Temple"] = 340;	-- BT
L.ZONE_TEXT_TO_MAP_ID["Sunwell Plataeu"] = 335;	-- SWP
L.ZONE_TEXT_TO_MAP_ID["Zul'Aman"] = 333;	-- ZA

L.ALT_ZONE_TEXT_TO_MAP_ID["El Castillo de la Tempestad"] = 334;		-- TK
L.ALT_ZONE_TEXT_TO_MAP_ID["Criptas Auchenai"] = 256;	-- CRYPTS
L.ALT_ZONE_TEXT_TO_MAP_ID["Tumbas de Maná"] = 272;	-- MT
L.ALT_ZONE_TEXT_TO_MAP_ID["Salas Sethekk"] = 258;	-- SETH
L.ALT_ZONE_TEXT_TO_MAP_ID["Laberinto de las Sombras"] = 260;	-- SLABS
L.ALT_ZONE_TEXT_TO_MAP_ID["La Ciénaga Negra"] = 273;	-- BLKM
L.ALT_ZONE_TEXT_TO_MAP_ID["Antiguas Laderas de Trabalomas"] = 274;	-- OHF
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