-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2018 a las 18:10:44
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nldgobmx_beneficiariosdif`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigopostal`
--

CREATE TABLE `codigopostal` (
  `idCodigoPostal` int(11) NOT NULL,
  `CodigoPostal` varchar(8) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `codigopostal`
--

INSERT INTO `codigopostal` (`idCodigoPostal`, `CodigoPostal`) VALUES
(1, '88000'),
(2, '88009'),
(3, '88020'),
(4, '88030'),
(5, '88040'),
(6, '88060'),
(7, '88070'),
(8, '88100'),
(9, '88105'),
(10, '88110'),
(11, '88120'),
(12, '88123'),
(13, '88124'),
(14, '88125'),
(15, '88126'),
(16, '88130'),
(17, '88134'),
(18, '88135'),
(19, '88136'),
(20, '88140'),
(21, '88144'),
(22, '88145'),
(23, '88146'),
(24, '88147'),
(25, '88150'),
(26, '88160'),
(27, '88170'),
(28, '88176'),
(29, '88177'),
(30, '88179'),
(31, '88180'),
(32, '88184'),
(33, '88185'),
(34, '88186'),
(35, '88187'),
(36, '88190'),
(37, '88194'),
(38, '88195'),
(39, '88200'),
(40, '88209'),
(41, '88210'),
(42, '88220'),
(43, '88230'),
(44, '88240'),
(45, '88250'),
(46, '88260'),
(47, '88270'),
(48, '88274'),
(49, '88275'),
(50, '88276'),
(51, '88277'),
(52, '88278'),
(53, '88280'),
(54, '88283'),
(55, '88284'),
(56, '88285'),
(57, '88287'),
(58, '88289'),
(59, '88290'),
(60, '88293'),
(61, '88294'),
(62, '88295'),
(63, '88296'),
(64, '88298'),
(65, '88299'),
(66, '88350');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colonias`
--

CREATE TABLE `colonias` (
  `Idcolonia` int(11) NOT NULL,
  `IdTipoAsentamiento` int(11) NOT NULL,
  `IdCodigoPostal` int(11) NOT NULL,
  `idsector` int(11) NOT NULL,
  `Colonia` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `colonias`
--

INSERT INTO `colonias` (`Idcolonia`, `IdTipoAsentamiento`, `IdCodigoPostal`, `idsector`, `Colonia`) VALUES
(1, 2, 54, 6, '150 Aniversario'),
(2, 5, 1, 6, '1º de Enero'),
(3, 3, 54, 6, '1º de Mayo'),
(4, 3, 17, 6, '20 de Noviembre'),
(5, 5, 1, 6, '5 de Mayo'),
(6, 2, 1, 6, 'Adán de Hoyos'),
(7, 1, 2, 6, 'Aeropuerto (Quetzalcóatl)'),
(8, 5, 64, 6, 'Agrónomos'),
(9, 3, 13, 6, 'Alianza para la producción'),
(10, 5, 61, 6, 'Alijadores'),
(11, 3, 59, 6, 'Alonso Gutiérrez'),
(12, 3, 8, 6, 'AltaVista'),
(13, 5, 60, 6, 'América No. 1'),
(14, 5, 63, 6, 'América No. 2'),
(15, 5, 1, 6, 'América No. 3'),
(16, 5, 65, 6, 'América No. 4'),
(17, 5, 1, 6, 'América No. 5'),
(18, 3, 18, 6, 'Américo Villarreal Guerra'),
(19, 5, 1, 6, 'Ampliación Concordia'),
(20, 5, 1, 6, 'Ampliación el Nogal'),
(21, 3, 1, 6, 'Ampliación Granjas Treviño'),
(22, 5, 1, 6, 'Ampliación Los Encinos'),
(23, 5, 28, 6, 'Ampliación Tercer Milenio'),
(24, 2, 1, 6, 'Ampliación Voluntad y Trabajo III'),
(25, 3, 46, 6, 'Anáhuac'),
(26, 3, 37, 6, 'Anáhuac Sur'),
(27, 3, 30, 6, 'Anexo Reforma Urbana'),
(28, 3, 1, 6, 'Anexo Roma'),
(29, 2, 1, 6, 'Anexo Roma II'),
(30, 3, 1, 6, 'Antiguos Patios y Talleres de F.F.C.C.'),
(31, 3, 29, 6, 'Arturo Cortes Villada'),
(32, 5, 24, 6, 'Ayuntamiento 77'),
(33, 5, 48, 6, 'Balcones del Boulevard'),
(34, 5, 59, 6, 'Balcones del Valle'),
(35, 2, 1, 6, 'Bayito 2'),
(36, 3, 30, 6, 'Bellavista'),
(37, 2, 1, 6, 'Benigna Hernández'),
(38, 3, 30, 6, 'Bertha de Avellano'),
(39, 2, 56, 6, 'Blanca Navidad'),
(40, 5, 50, 6, 'Bonanza'),
(41, 5, 63, 6, 'Bosques del Sur'),
(42, 5, 1, 6, 'Brisas del Lago'),
(43, 3, 11, 6, 'Buenavista'),
(44, 3, 16, 6, 'Buenos Aires'),
(45, 5, 1, 6, 'Bugambilias'),
(46, 3, 53, 6, 'Burócratas'),
(47, 3, 52, 6, 'Campestre'),
(48, 5, 1, 6, 'Campo Real'),
(49, 5, 64, 6, 'Candelario Perales'),
(50, 5, 27, 6, 'Cantaros'),
(51, 5, 48, 6, 'Casa Linda'),
(52, 5, 1, 6, 'Casa Linda II'),
(53, 3, 53, 6, 'Central 2000'),
(54, 6, 1, 6, 'Centro'),
(55, 5, 49, 6, 'Centro Comercial Reforma'),
(56, 3, 23, 6, 'Claudette'),
(57, 5, 53, 6, 'Club de Leones'),
(58, 3, 8, 6, 'CNOP'),
(59, 5, 65, 6, 'Colinas de San Javier'),
(60, 5, 1, 6, 'Colinas del Arroyo Seco'),
(61, 5, 51, 6, 'Colinas del Sur'),
(62, 5, 57, 6, 'Comunidad de Viviendas Unidas'),
(63, 3, 51, 6, 'Concordia'),
(64, 3, 29, 6, 'Constitucional 1 y 2'),
(65, 5, 12, 6, 'Cumbres'),
(66, 3, 29, 6, 'Daniel Covarrubias'),
(67, 3, 10, 6, 'Del Maestro'),
(68, 5, 56, 6, 'Del Valle'),
(69, 5, 58, 6, 'Don Ramón Salcido'),
(70, 5, 1, 6, 'Echegaray'),
(71, 5, 50, 6, 'Edén Country Villas'),
(72, 4, 28, 6, 'El Bayito'),
(73, 5, 56, 6, 'El Campanario'),
(74, 3, 60, 6, 'El Caporal'),
(75, 3, 62, 6, 'El Capulín'),
(76, 5, 23, 6, 'El Caracol'),
(77, 5, 50, 6, 'El Cortijo'),
(78, 5, 50, 6, 'El Edén'),
(79, 5, 28, 6, 'El Francés y Buenos Aires'),
(80, 5, 59, 6, 'El Nogal'),
(81, 5, 60, 6, 'El Pedregal Residencial'),
(82, 4, 12, 6, 'El Progreso'),
(83, 5, 29, 6, 'El Progreso'),
(84, 3, 25, 6, 'El Remolino'),
(85, 5, 53, 6, 'El Río'),
(86, 3, 62, 6, 'El Triunfo'),
(87, 5, 57, 6, 'Electricistas'),
(88, 3, 21, 6, 'Emiliano Zapata'),
(89, 3, 55, 6, 'Emiliano Zapata II'),
(90, 3, 62, 6, 'Enrique Cárdenas González'),
(91, 3, 5, 6, 'Ferrocarril'),
(92, 3, 53, 6, 'Ferrocarrilera'),
(93, 3, 55, 6, 'Francisco Villa'),
(94, 3, 54, 6, 'Francisco Villa 2'),
(95, 3, 46, 6, 'González'),
(96, 5, 50, 6, 'Gran Boulevard'),
(97, 3, 1, 6, 'Granjas Económicas'),
(98, 3, 62, 6, 'Granjas Económicas 1'),
(99, 3, 62, 6, 'Granjas Económicas 2'),
(100, 3, 60, 6, 'Granjas Guzmán'),
(101, 3, 62, 6, 'Granjas Regina'),
(102, 3, 61, 6, 'Granjas Treviño'),
(103, 5, 1, 6, 'Guardiola'),
(104, 3, 44, 6, 'Guerrero'),
(105, 3, 12, 6, 'Guerreros del Sol'),
(106, 5, 59, 6, 'Hacienda de la Concordia'),
(107, 5, 41, 6, 'Hacienda J. Longoria'),
(108, 5, 62, 6, 'Haciendas de San Agustín'),
(109, 3, 26, 6, 'Hidalgo'),
(110, 3, 27, 6, 'Hipódromo'),
(111, 3, 3, 6, 'Independencia'),
(112, 2, 1, 6, 'Independencia Nacional'),
(113, 5, 49, 6, 'INFONAVIT Fundadores'),
(114, 2, 56, 6, 'Insurgentes'),
(115, 5, 62, 6, 'ITAVU'),
(116, 3, 46, 6, 'Jardín'),
(117, 3, 20, 6, 'Jardín Juvencia'),
(118, 5, 51, 6, 'Jardines de la Hacienda'),
(119, 5, 1, 6, 'Jardines de Oradel'),
(120, 3, 45, 6, 'Jesús García'),
(121, 3, 40, 6, 'Juárez'),
(122, 3, 43, 6, 'Junta Federal de Mejoras Materiales'),
(123, 3, 64, 6, 'La Concordia'),
(124, 4, 66, 6, 'La Cruz'),
(125, 3, 38, 6, 'La Esperanza'),
(126, 5, 35, 6, 'La Fe'),
(127, 5, 1, 6, 'La Fe II'),
(128, 3, 14, 6, 'La Joya'),
(129, 5, 29, 6, 'La Nueva Victoria'),
(130, 3, 59, 6, 'La Paz'),
(131, 3, 30, 6, 'La Sandía'),
(132, 5, 59, 6, 'Lagos'),
(133, 5, 49, 6, 'Las Alamedas'),
(134, 5, 1, 6, 'Las Alamedas II'),
(135, 3, 21, 6, 'Las Alazanas'),
(136, 5, 30, 6, 'Las Arboledas'),
(137, 5, 47, 6, 'Las Flores'),
(138, 5, 24, 6, 'Las Lomas'),
(139, 5, 62, 6, 'Las Piedritas'),
(140, 5, 25, 6, 'Las Tinajitas'),
(141, 3, 32, 6, 'Las Torres'),
(142, 5, 51, 6, 'Las Viñas'),
(143, 5, 48, 6, 'Lic. Benito Juárez'),
(144, 3, 13, 6, 'Lic. Daniel Hernández Isais'),
(145, 3, 17, 6, 'Lic. Luis Donaldo Colosio'),
(146, 3, 38, 6, 'Loma Bonita'),
(147, 5, 41, 6, 'Lomas del Poniente'),
(148, 3, 63, 6, 'Lomas del Popo'),
(149, 5, 22, 6, 'Lomas del Rey'),
(150, 5, 30, 6, 'Lomas del Rio Bravo'),
(151, 2, 56, 6, 'Lomas del Rosario'),
(152, 5, 63, 6, 'Los Agaves'),
(153, 3, 47, 6, 'Los Álamos'),
(154, 5, 56, 6, 'Los Ángeles'),
(155, 3, 12, 6, 'Los Arcos'),
(156, 2, 30, 6, 'Los Artistas'),
(157, 2, 1, 6, 'Los Artistas II'),
(158, 5, 59, 6, 'Los Aztecas'),
(159, 5, 59, 6, 'Los Encinos'),
(160, 5, 59, 6, 'Los Fresnos'),
(161, 5, 21, 6, 'Los Garza'),
(162, 5, 59, 6, 'Los Presidentes'),
(163, 5, 29, 6, 'Los Sánchez'),
(164, 5, 11, 6, 'Maclovio Herrera'),
(165, 3, 47, 6, 'Madero'),
(166, 3, 55, 6, 'Manuel Cavazos Lerma'),
(167, 5, 28, 6, 'María Luisa'),
(168, 3, 41, 6, 'Matamoros'),
(169, 5, 1, 6, 'Media Luna'),
(170, 3, 53, 6, 'México'),
(171, 3, 44, 6, 'Mier y Terán'),
(172, 4, 66, 6, 'Miguel Alemán (El Carrizo)'),
(173, 3, 58, 6, 'Militar'),
(174, 3, 20, 6, 'Militar II'),
(175, 3, 36, 6, 'Mirador'),
(176, 5, 63, 6, 'Misión de San Mauricio'),
(177, 3, 45, 6, 'Morelos'),
(178, 2, 29, 6, 'Naciones Unidas'),
(179, 3, 19, 6, 'Nueva Era'),
(180, 3, 22, 6, 'Nueva España'),
(181, 5, 5, 6, 'Ojo Caliente'),
(182, 2, 29, 6, 'Othón Chávez'),
(183, 3, 42, 6, 'Palacios'),
(184, 5, 49, 6, 'Parque Industrial FINSA'),
(185, 5, 33, 6, 'Parque Industrial Los 2 Laredo'),
(186, 5, 27, 6, 'Parque Industrial O. Longoria'),
(187, 5, 48, 6, 'Parque Industrial Rio Bravo'),
(188, 5, 34, 6, 'Parque Industrial Rio Grande'),
(189, 5, 51, 6, 'Parque Modulo Industrial Américas'),
(190, 5, 56, 6, 'Parque Oradel'),
(191, 3, 1, 6, 'Patios de F.F.C.C.'),
(192, 5, 12, 6, 'Pavorreales'),
(193, 3, 60, 6, 'Pedregal'),
(194, 3, 20, 6, 'Peña Benavides'),
(195, 3, 44, 6, 'Postal'),
(196, 2, 29, 6, 'Praderas del Mezquital'),
(197, 5, 49, 6, 'Privanzas'),
(198, 5, 1, 6, 'Proyecto Luz'),
(199, 5, 1, 6, 'Puerta de Hierro'),
(200, 3, 28, 6, 'Recinto Fiscal'),
(201, 3, 30, 6, 'Reforma Urbana'),
(202, 5, 51, 6, 'Residencial Longoria'),
(203, 3, 44, 6, 'Riberas del Bravo'),
(204, 5, 48, 6, 'Río Bravo'),
(205, 3, 25, 6, 'Roma'),
(206, 3, 1, 6, 'Roma II'),
(207, 3, 31, 6, 'Rosita'),
(208, 5, 21, 6, 'San Andrés'),
(209, 3, 43, 6, 'San José'),
(210, 3, 39, 6, 'San Rafael'),
(211, 2, 1, 6, 'San Roberto'),
(212, 5, 48, 6, 'Santa Anita'),
(213, 5, 61, 6, 'Santa Cecilia'),
(214, 5, 59, 6, 'Santa Elena'),
(215, 5, 1, 6, 'Santa Eugenia'),
(216, 5, 59, 6, 'Santa Martha'),
(217, 3, 15, 6, 'Santiago M. Beldén'),
(218, 3, 43, 6, 'Sistema de Agua y Saneamiento'),
(219, 3, 14, 6, 'Sistema Merlín'),
(220, 5, 9, 6, 'Solidaridad'),
(221, 5, 1, 6, 'Solidaridad II'),
(222, 3, 57, 6, 'SUTERM I'),
(223, 3, 47, 6, 'SUTERM II'),
(224, 3, 22, 6, 'Tamaulipas'),
(225, 5, 28, 6, 'Tercer Milenio'),
(226, 5, 1, 6, 'Tierra Cruz'),
(227, 5, 29, 6, 'Toboganes'),
(228, 5, 59, 6, 'Tulipanes'),
(229, 3, 18, 6, 'Unidad Nacional'),
(230, 3, 37, 6, 'Unión'),
(231, 3, 28, 6, 'Unión Del Recuerdo'),
(232, 5, 62, 6, 'Valle Dorado'),
(233, 5, 62, 6, 'Valle Elizondo'),
(234, 5, 50, 6, 'Valle Real'),
(235, 5, 56, 6, 'Valles de Anáhuac'),
(236, 5, 60, 6, 'Valles del Paraíso'),
(237, 5, 62, 6, 'Vamos Tamaulipas'),
(238, 3, 54, 6, 'Vamos Tamaulipas'),
(239, 3, 15, 6, 'Vicente Mendoza'),
(240, 3, 4, 6, 'Victoria'),
(241, 5, 59, 6, 'Villa del Lago'),
(242, 5, 59, 6, 'Villas de la Concordia'),
(243, 5, 18, 6, 'Villas de la Fe'),
(244, 5, 12, 6, 'Villas de San Francisco'),
(245, 5, 54, 6, 'Villas de San Miguel'),
(246, 5, 56, 6, 'Villas del Oradel'),
(247, 5, 12, 6, 'Villas del Progreso'),
(248, 5, 45, 6, 'Villas del Sol'),
(249, 3, 22, 6, 'Virreyes'),
(250, 5, 48, 6, 'Vista Hermosa'),
(251, 3, 7, 6, 'Viveros'),
(252, 3, 29, 6, 'Voluntad y Trabajo'),
(253, 3, 1, 6, 'Voluntad y Trabajo III'),
(254, 3, 1, 6, 'Voluntad y Trabajo IV'),
(255, 3, 6, 6, 'Zaragoza'),
(256, 5, 38, 6, 'Zona de Tolerancia'),
(257, 2, 3, 6, 'NA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio_socioeconomico`
--

CREATE TABLE `estudio_socioeconomico` (
  `idestudio` int(11) NOT NULL,
  `folio` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `municipio` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `localidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idtipoapoyo` int(11) NOT NULL,
  `beneficiario_nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `beneficiario_paterno` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `beneficiario_materno` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `beneficiario_fecha_n` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `beneficiario_edad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `paterno` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `materno` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `curp` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `rfc` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `ine` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_vialidad` int(11) NOT NULL,
  `idtipo_asentamiento` int(11) NOT NULL,
  `direccion` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idcolonia` int(11) NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estado` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `trabaja_actual` int(1) NOT NULL,
  `ocupacion` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `ingreso` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `estado_civil` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `leer_y_escribir` int(11) NOT NULL,
  `escolaridad_otra` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seguro_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `discapacidad` int(1) NOT NULL,
  `discapacidad_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `personas_sueldo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `personas_ingreso` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `agua` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `luz` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `comida` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `gas` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `internet` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pasajes` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `renta` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `gasto_otros` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `vivienda_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `muros_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `techo_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `piso_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `recamaras` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `mismo_cuarto` int(1) NOT NULL,
  `mismo_cuarto_cocina` int(1) NOT NULL,
  `agua_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `drenaje_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `luz_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `huerto` int(1) NOT NULL,
  `huerto_desea` int(1) NOT NULL,
  `equipamiento_otro` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `combustible_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vehiculo` int(1) NOT NULL,
  `vehiculos_cantidad` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `embarazo` int(1) NOT NULL,
  `embarazo_nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `embarazo_tiempo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `adicciones` int(1) NOT NULL,
  `adiccion_nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `adiccion_edad` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `adiccion_especifique` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salud_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cereales` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `verduras` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `frutas` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `leguminosas` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `carne` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lacteos` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `grasa` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `alimentacion_mayor_1` int(1) NOT NULL,
  `alimentacion_mayor_2` int(1) NOT NULL,
  `alimentacion_mayor_3` int(1) NOT NULL,
  `alimentacion_mayor_4` int(1) NOT NULL,
  `alimentacion_mayor_5` int(1) NOT NULL,
  `alimentacion_mayor_6` int(1) NOT NULL,
  `alimentacion_menor_1` int(1) NOT NULL,
  `alimentacion_menor_2` int(1) NOT NULL,
  `alimentacion_menor_3` int(1) NOT NULL,
  `alimentacion_menor_4` int(1) NOT NULL,
  `alimentacion_menor_5` int(1) NOT NULL,
  `alimentacion_menor_6` int(1) NOT NULL,
  `desayunar` int(1) NOT NULL,
  `desayunar_otro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `es_integrantes`
--

CREATE TABLE `es_integrantes` (
  `ides_integrante` int(100) NOT NULL,
  `nombre` int(100) NOT NULL,
  `paterno` int(100) NOT NULL,
  `materno` int(100) NOT NULL,
  `curp` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `rfc` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_n` datetime NOT NULL,
  `edad` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `estado_civil` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parentesco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ocupacion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `estudia` int(1) NOT NULL,
  `escolaridad` int(100) NOT NULL,
  `grado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `grupo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `escuela` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idturno` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `localidad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `discapacidad` int(1) NOT NULL,
  `discapacidad_tipo` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `es_respuestas`
--

CREATE TABLE `es_respuestas` (
  `ides_respuesta` int(255) NOT NULL,
  `idestudio_socioeconomico` int(255) NOT NULL,
  `idpregunta` int(25) NOT NULL,
  `idrespuesta` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `es_respuestas_integrantes`
--

CREATE TABLE `es_respuestas_integrantes` (
  `ides_respuesta_integrante` int(255) NOT NULL,
  `idestudio_socioeconomico` int(255) NOT NULL,
  `ides_integrante` int(255) NOT NULL,
  `idpregunta` int(25) NOT NULL,
  `idrespuesta` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `idpregunta` int(25) NOT NULL,
  `idseccion` int(25) NOT NULL,
  `pregunta` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idpregunta`, `idseccion`, `pregunta`) VALUES
(1, 1, 'Escolaridad (Terminada):'),
(2, 1, 'Seguro Médico:'),
(3, 1, 'Tipo de discapacidad:'),
(4, 2, 'Su vivienda es:'),
(5, 2, 'Los muros son de:'),
(6, 2, 'El techo es de:'),
(7, 2, 'Los pisos son de:'),
(8, 2, 'La vivienda cuenta con:'),
(9, 2, 'En esta vivienda el agua para beber es de:'),
(10, 2, 'Esta vivienda tiene drenaje o desagüe conectado a:'),
(11, 2, 'En esta vivienda se obtiene luz de:'),
(12, 3, 'En su vivienda cuenta con:'),
(13, 3, 'Combustible que utiliza para cocinar:'),
(14, 4, 'Grado:'),
(15, 4, 'Causa:'),
(16, 5, 'Cuando tienen problemas de salud, ¿en dónde se atienden los integrantes del hogar?'),
(17, 6, '¿Dónde?'),
(18, 6, '¿Por qué?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `idrespuesta` int(25) NOT NULL,
  `idpregunta` int(25) NOT NULL,
  `respuesta` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`idrespuesta`, `idpregunta`, `respuesta`) VALUES
(1, 1, 'Educación inicial'),
(2, 1, 'Jardín de Niños'),
(3, 1, 'Primaria'),
(4, 1, 'Secundaria'),
(5, 1, 'Medio Suiperior'),
(6, 1, 'Técnico superior'),
(7, 1, 'Profesional'),
(8, 1, 'Posgrado'),
(9, 1, 'Otro'),
(10, 2, 'IMSS'),
(11, 2, 'ISSTE'),
(12, 2, 'PEMEX'),
(13, 2, 'Clínica u Hospital Privado'),
(14, 2, 'SSA (Centro de Salud)'),
(15, 2, 'Seguro Popular'),
(16, 2, 'IPSSET'),
(17, 2, 'Ninguno'),
(18, 2, 'Otro'),
(19, 3, 'Motriz'),
(20, 3, 'Auditiva'),
(21, 3, 'Visual'),
(22, 3, 'Mental'),
(23, 3, 'Lenguaje'),
(24, 3, 'Otro'),
(25, 4, 'Propia'),
(26, 4, 'Rentada'),
(27, 4, 'Prestada'),
(28, 4, 'Otro'),
(29, 5, 'Lámina'),
(30, 5, 'Madera'),
(31, 5, 'Block'),
(32, 5, 'Adobe'),
(33, 5, 'Ladrillo'),
(34, 5, 'Cartón'),
(35, 5, 'Vara con Lodo'),
(36, 5, 'Otro'),
(37, 6, 'Lámina'),
(38, 6, 'Teja'),
(39, 6, 'Palma'),
(40, 6, 'Cemento'),
(41, 6, 'Cartón'),
(42, 6, 'Madera'),
(43, 6, 'Otro'),
(44, 7, 'Tierra'),
(45, 7, 'Cemento'),
(46, 7, 'Cartón'),
(47, 7, 'Madera'),
(48, 7, 'Otro'),
(49, 8, 'Recámaras'),
(50, 8, 'Letrina'),
(51, 8, 'Regadera'),
(52, 8, 'Comedor'),
(53, 8, 'Sanitario'),
(54, 8, 'Sala'),
(55, 8, 'Patio'),
(56, 8, 'Cocina'),
(57, 8, 'Cochera'),
(58, 9, 'Red Pública Dentro de la Vivienda'),
(59, 9, 'Una Pila'),
(60, 9, 'Pozo de Terreno'),
(61, 9, 'Río, Lago, Arroyo o Presa'),
(62, 9, 'Otro'),
(63, 10, 'Red Pública'),
(64, 10, 'Fosa Séptica'),
(65, 10, 'Una Tubería que va a dar a una Barranca'),
(66, 10, 'Una Tubería que va a dar a un Río, Lago o Mar'),
(67, 10, 'Otro'),
(68, 11, 'Energía Eléctrica'),
(69, 11, 'Celda Solar'),
(70, 11, 'Lámpara de Baterías'),
(71, 11, 'Velas o Veladoras'),
(72, 11, 'Otro'),
(73, 12, 'Lavadora'),
(74, 12, 'Refrigerador'),
(75, 12, 'Estufa'),
(76, 12, 'TV'),
(77, 12, 'Radio'),
(78, 12, 'Computadora'),
(79, 12, 'Internet'),
(80, 12, 'Boiler'),
(81, 12, 'Grabadora'),
(82, 12, 'DVD'),
(83, 12, 'Celular'),
(84, 12, 'Línea Telefónica'),
(85, 12, 'Otro'),
(86, 13, 'Leña'),
(87, 13, 'Carbón'),
(88, 13, 'Gas'),
(89, 13, 'Parrilla Eléctrica'),
(90, 13, 'Otro'),
(91, 14, 'Postrado en Cama'),
(92, 14, 'Problemas de Desplazamiento'),
(93, 14, 'Realiza casi todas las acciones'),
(94, 14, 'Sin Moverse'),
(95, 14, 'No Comprende o Razona'),
(96, 14, 'Otro'),
(97, 15, 'Nacimiento'),
(98, 15, 'Enfermedad'),
(99, 15, 'Edad Avanzada'),
(100, 15, 'Accidente'),
(101, 15, 'Otro'),
(102, 16, 'IMSS'),
(103, 16, 'ISSSTE'),
(104, 16, 'PEMEX'),
(105, 16, 'Clínica u Hospital Privado'),
(106, 16, 'SSSA (Centro de Salud)'),
(107, 16, 'Seguro Popular'),
(108, 16, 'IPSSET'),
(109, 16, 'Ninguno'),
(110, 16, 'Otro'),
(111, 17, 'En el hogar propio o con algún familiar o conocido'),
(112, 17, 'En la escuela, estancia o guardería'),
(113, 17, 'Otro lugar'),
(114, 18, 'No lo acostumbran'),
(115, 18, 'No les da hambre'),
(116, 18, 'No les alcanza el tiempo'),
(117, 18, 'No les alcanza el dinero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idrol` int(11) NOT NULL,
  `rol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `config` int(1) NOT NULL,
  `reportes` int(1) NOT NULL,
  `activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idrol`, `rol`, `config`, `reportes`, `activo`) VALUES
(1, 'ADMINISTRADOR', 1, 1, 1),
(2, 'JEFE DE AREA', 1, 1, 1),
(3, 'CAPTURISTA', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `idseccion` int(25) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`idseccion`, `nombre`) VALUES
(1, 'DATOS GENERALES DEL SOLICITANTE'),
(2, 'CARACTERÍSTICAS DE LA VIVIENDA'),
(3, 'EQUIPAMIENTO DE LA VIVIENDA'),
(4, 'INTEGRANTES DEL HOGAR'),
(5, 'SALUD FAMILIAR'),
(6, 'SALUD ALIMENTARIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_asentamiento`
--

CREATE TABLE `tipo_asentamiento` (
  `IdTipoAsentamiento` int(11) NOT NULL,
  `TipoAsentamiento` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_asentamiento`
--

INSERT INTO `tipo_asentamiento` (`IdTipoAsentamiento`, `TipoAsentamiento`) VALUES
(1, 'Aeropuerto'),
(2, 'Asentamiento Irregular'),
(3, 'Colonia'),
(4, 'Ejido'),
(5, 'Fraccionamiento'),
(6, 'Sector');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(50) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idrol` int(1) NOT NULL,
  `activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre`, `correo`, `password`, `idrol`, `activo`) VALUES
(2, 'admin', 'admin@correo.com', '21232f297a57a5a743894a0e4a801fc3', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_access`
--

CREATE TABLE `ws_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ws_access`
--

INSERT INTO `ws_access` (`id`, `key`, `all_access`, `controller`, `date_created`, `date_modified`) VALUES
(3, 'dc176c2d6fc496288e6ee81e35c8ffe3', 0, '/Beneficiarios', '2018-02-02 00:00:00', '2018-11-23 20:21:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_keys`
--

CREATE TABLE `ws_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text CHARACTER SET utf8,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ws_keys`
--

INSERT INTO `ws_keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'dc176c2d6fc496288e6ee81e35c8ffe3', 1, 0, 0, NULL, '2018-01-29 12:16:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_logs`
--

CREATE TABLE `ws_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8 NOT NULL,
  `method` varchar(6) CHARACTER SET utf8 NOT NULL,
  `params` text CHARACTER SET utf8,
  `api_key` varchar(40) CHARACTER SET utf8 NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) CHARACTER SET utf8 NOT NULL,
  `response_code` smallint(3) DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ws_logs`
--

INSERT INTO `ws_logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`, `fecha`) VALUES
(789, 'Beneficiarios/login', 'get', '{"Host":"localhost","Connection":"keep-alive","Upgrade-Insecure-Requests":"1","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","Cookie":"_ga=GA1.1.1220884428.1523629369; ciNav=no; _gauges_unique_year=1; _gauges_unique=1","X-Hola-Unblocker-Bext":"reqid 171303: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"171303"}', '', '::1', 1543003238, 0.0243351, '0', 403, '2018-11-23 20:00:38'),
(790, 'Beneficiarios/login', 'get', '{"Host":"localhost","Connection":"keep-alive","Upgrade-Insecure-Requests":"1","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","Cookie":"_ga=GA1.1.1220884428.1523629369; ciNav=no; _gauges_unique_year=1; _gauges_unique=1","X-Hola-Unblocker-Bext":"reqid 176567: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"176567"}', '', '::1', 1543004011, 0.0369101, '0', 403, '2018-11-23 20:13:31'),
(791, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 178296: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"178296","correo":"admin@correo.com","password":"admin"}', '', '::1', 1543004226, 0.035753, '0', 403, '2018-11-23 20:17:06'),
(792, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 180120: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"180120","correo":"admin@correo.com","password":"admin"}', '', '::1', 1543004491, 0.0373318, '0', 403, '2018-11-23 20:21:31'),
(793, 'Beneficiarios/login', 'get', '{"Host":"localhost","Connection":"keep-alive","Upgrade-Insecure-Requests":"1","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Accept":"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","Cookie":"_ga=GA1.1.1220884428.1523629369; ciNav=no; _gauges_unique_year=1; _gauges_unique=1","X-Hola-Unblocker-Bext":"reqid 180203: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"180203"}', '', '::1', 1543004502, 0.0369282, '0', 403, '2018-11-23 20:21:42'),
(794, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 181408: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"181408","correo":"admin@correo.com","password":"admin"}', '', '::1', 1543004687, 0.03654, '0', 403, '2018-11-23 20:24:47'),
(795, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 182539: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"182539","correo":"admin@correo.com","password":"admin"}', '', '::1', 1543004850, 0.0252099, '0', 403, '2018-11-23 20:27:30'),
(796, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 185488: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"185488","correo":"admin@correo.com","password":"admin"}', '', '::1', 1543005201, 0.037488, '0', 403, '2018-11-23 20:33:21'),
(797, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 186359: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"186359","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543005331, 0.039974, '1', 401, '2018-11-23 20:35:31'),
(798, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 186824: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"186824","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543005406, 0.036696, '1', 401, '2018-11-23 20:36:46'),
(799, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 187505: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"187505","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543005505, 0.0304768, '1', 200, '2018-11-23 20:38:25'),
(800, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 187919: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"187919","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543005566, 0.0354271, '1', 200, '2018-11-23 20:39:26'),
(801, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 197095: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"197095","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543006945, NULL, '1', 0, '2018-11-23 21:02:25'),
(802, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 197914: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"197914","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543007066, 0.027796, '1', 200, '2018-11-23 21:04:26'),
(803, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 200205: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"200205","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543007368, 0.038142, '1', 200, '2018-11-23 21:09:28'),
(804, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 200539: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"200539","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543007419, 0.0274341, '1', 200, '2018-11-23 21:10:19'),
(805, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 55015: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"55015","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543250013, 0.0363121, '1', 200, '2018-11-26 16:33:33'),
(806, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 55256: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"55256","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543250050, 0.0377579, '1', 200, '2018-11-26 16:34:10'),
(807, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 59017: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"59017","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543250580, 0.030869, '1', 200, '2018-11-26 16:43:00'),
(808, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NDMyNTA1ODAsImV4cCI6MTU0MzI3OTM4MCwiZGF0YSI6eyJpZHVzdWFyaW8iOiIyIiwibm9tYnJlIjoiYWRtaW4iLCJjb3JyZW8iOiJhZG1pbkBjb3JyZW8uY29tIiwicm9sZSI6IjEifSwibWVudSI6W3sicGF0aCI6Ilwvc3RhcnRlciIsInRpdGxlIjoiSW5pY2lvIiwiaWNvbiI6Im1kaSBtZGktaG9tZSIsImNsYXNzIjoiIiwibGFiZWwiOiIiLCJsYWJlbENsYXNzIjoiIiwiZXh0cmFsaW5rIjpmYWxzZSwic3VibWVudSI6W119LHsicGF0aCI6IlwvZXNvY2lvZWNvbm9taWNvIiwidGl0bGUiOiJFc3R1ZGlvIiwiaWNvbiI6Im1kaSBtZGktcGVuY2lsLWNpcmNsZSIsImNsYXNzIjoiIiwibGFiZWwiOiIiLCJsYWJlbENsYXNzIjoiIiwiZXh0cmFsaW5rIjpmYWxzZSwic3VibWVudSI6W119LHsicGF0aCI6IiIsInRpdGxlIjoiQ29uZmlndXJhY2lvbiIsImljb24iOiJtZGkgbWRpLXNldHRpbmdzIiwiY2xhc3MiOiJoYXMtYXJyb3ciLCJsYWJlbCI6IiIsImxhYmVsQ2xhc3MiOiIiLCJleHRyYWxpbmsiOmZhbHNlLCJzdWJtZW51IjpbeyJwYXRoIjoiXC91c3VhcmlvcyIsInRpdGxlIjoiVXN1YXJpb3MiLCJpY29uIjoibWRpIG1kaS1hY2NvdW50IiwiY2xhc3MiOiIiLCJsYWJlbCI6IiIsImxhYmVsQ2xhc3MiOiIiLCJleHRyYWxpbmsiOmZhbHNlLCJzdWJtZW51IjpbXX1dfV19.t7L6rAGXjd5GP2Pj1rHa1zBD8Vit0Lce40_LXAYrlH0","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 60096: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"60096","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543250732, 0.0403352, '1', 200, '2018-11-26 16:45:32'),
(809, 'Beneficiarios/login', 'post', '{"Host":"localhost","Connection":"keep-alive","Content-Length":"48","Pragma":"no-cache","Cache-Control":"no-cache","Accept":"application\\/json, text\\/plain, *\\/*","Origin":"http:\\/\\/localhost:4200","Authorization":"null","beneficiarios":"dc176c2d6fc496288e6ee81e35c8ffe3","User-Agent":"Mozilla\\/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36","Content-Type":"application\\/json","Referer":"http:\\/\\/localhost:4200\\/","Accept-Encoding":"gzip, deflate, br","Accept-Language":"en-US,en;q=0.9,es;q=0.8","X-Hola-Unblocker-Bext":"reqid 64992: before request, vpn is not allowed, send headers","X-Hola-Request-Id":"64992","correo":"admin@correo.com","password":"admin"}', 'dc176c2d6fc496288e6ee81e35c8ffe3', '::1', 1543251301, 0.0303898, '1', 200, '2018-11-26 16:55:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `codigopostal`
--
ALTER TABLE `codigopostal`
  ADD PRIMARY KEY (`idCodigoPostal`);

--
-- Indices de la tabla `colonias`
--
ALTER TABLE `colonias`
  ADD PRIMARY KEY (`Idcolonia`),
  ADD KEY `IdCodigoPostal` (`IdCodigoPostal`),
  ADD KEY `IdTipoAsentamiento` (`IdTipoAsentamiento`),
  ADD KEY `idsector` (`idsector`);

--
-- Indices de la tabla `estudio_socioeconomico`
--
ALTER TABLE `estudio_socioeconomico`
  ADD PRIMARY KEY (`idestudio`);

--
-- Indices de la tabla `es_integrantes`
--
ALTER TABLE `es_integrantes`
  ADD PRIMARY KEY (`ides_integrante`);

--
-- Indices de la tabla `es_respuestas`
--
ALTER TABLE `es_respuestas`
  ADD PRIMARY KEY (`ides_respuesta`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`idpregunta`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`idrespuesta`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`idseccion`);

--
-- Indices de la tabla `tipo_asentamiento`
--
ALTER TABLE `tipo_asentamiento`
  ADD PRIMARY KEY (`IdTipoAsentamiento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `ws_access`
--
ALTER TABLE `ws_access`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ws_keys`
--
ALTER TABLE `ws_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ws_logs`
--
ALTER TABLE `ws_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `codigopostal`
--
ALTER TABLE `codigopostal`
  MODIFY `idCodigoPostal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT de la tabla `colonias`
--
ALTER TABLE `colonias`
  MODIFY `Idcolonia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT de la tabla `estudio_socioeconomico`
--
ALTER TABLE `estudio_socioeconomico`
  MODIFY `idestudio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `es_integrantes`
--
ALTER TABLE `es_integrantes`
  MODIFY `ides_integrante` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `es_respuestas`
--
ALTER TABLE `es_respuestas`
  MODIFY `ides_respuesta` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `idpregunta` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `idrespuesta` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `idseccion` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tipo_asentamiento`
--
ALTER TABLE `tipo_asentamiento`
  MODIFY `IdTipoAsentamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ws_access`
--
ALTER TABLE `ws_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ws_keys`
--
ALTER TABLE `ws_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ws_logs`
--
ALTER TABLE `ws_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=810;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `colonias`
--
ALTER TABLE `colonias`
  ADD CONSTRAINT `colonias_ibfk_1` FOREIGN KEY (`IdCodigoPostal`) REFERENCES `codigopostal` (`idCodigoPostal`) ON UPDATE CASCADE,
  ADD CONSTRAINT `colonias_ibfk_2` FOREIGN KEY (`IdTipoAsentamiento`) REFERENCES `tipo_asentamiento` (`IdTipoAsentamiento`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
