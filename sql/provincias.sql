-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 07, 2017 at 10:47 AM
-- Server version: 5.6.30-cll-lve
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medialim_All`
--

-- --------------------------------------------------------

--
-- Table structure for table `provincias`
--

CREATE TABLE `provincias` (
  `id_provincia` tinyint(4) NOT NULL,
  `provincia` varchar(60) CHARACTER SET utf8 NOT NULL,
  `provincia_seo` varchar(80) CHARACTER SET utf8 NOT NULL,
  `codProvincia` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `idComunidad_Autonoma` tinyint(4) NOT NULL,
  `prefijo_provinciales` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `bandera` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `provincias`
--

INSERT INTO `provincias` (`id_provincia`, `provincia`, `provincia_seo`, `codProvincia`, `idComunidad_Autonoma`, `prefijo_provinciales`, `bandera`) VALUES
(1, 'Álava', 'alava', 'ALV', 16, '945 / 845', 'alava.svg'),
(2, 'Castellón', 'castellon', 'CAS', 10, '964 / 864', 'Castello_plana.png'),
(3, 'León', 'leon', 'LEO', 7, '987 / 887', 'Bandera_de_Leon.svg'),
(4, 'Salamanca', 'salamanca', 'SAL', 7, '923 / 823', 'Salamanca.svg'),
(5, 'Albacete', 'albacete', 'ABC', 8, '967 / 867', 'Albacete-Bandera.svg'),
(6, 'Ceuta', 'ceuta', 'CEU', 18, '956 / 856', 'Flag_Ceuta.svg'),
(7, 'Lleida', 'lleida', 'LLE', 9, '973 / 873', 'Flag_of_Lleida.svg'),
(8, 'Segovia', 'segovia', 'SGV', 7, '921 / 821', 'Segovia.svg'),
(9, 'Alicante', 'alicante', 'ALA', 10, '965 /  966 /  967 / ', 'Flag_of_Alicante.svg'),
(10, 'Ciudad Real', 'ciudad-real', 'CRE', 8, '926 / 826', 'Ciudad_Real.jpg'),
(11, 'Lugo', 'lugo', 'LUG', 12, '982 / 882', 'Lugo.png'),
(12, 'Sevilla', 'sevilla', 'SVL', 1, '954 / 955 / 854 / 85', 'Sevilla.svg'),
(13, 'Almería', 'almeria', 'ALM', 1, '950 / 850', 'Almeria.svg'),
(14, 'Córdoba', 'cordoba', 'CBA', 1, '957 / 857', 'Flag_of_Cordoba.svg'),
(15, 'Madrid', 'madrid', 'MAD', 13, '91 / 81', 'Madrid.svg'),
(16, 'Soria', 'soria', 'SOR', 7, '975 / 875', 'Bandera_de_Soria.svg'),
(17, 'Asturias', 'asturias', 'AST', 3, '984 / 985 / 884 / 88', 'Flag_of_Asturias.svg'),
(18, 'A Coruña', 'coruna', 'LCO', 12, '981 / 881', 'La_Coruna.png'),
(19, 'Málaga', 'malaga', 'MAL', 1, '951 / 952 / 851 / 85', 'Flag_of_Malaga.svg'),
(20, 'Tarragona', 'tarragona', 'TRN', 9, '977 / 877', 'Tarragona.svg'),
(21, 'Ávila', 'avila', 'AVL', 7, '920 / 820', 'Bandera_de_avila.svg'),
(22, 'Cuenca', 'cuenca', 'CNC', 8, '969 / 869', 'Flag_Cuenca.svg'),
(23, 'Melilla', 'melilla', 'MEL', 19, '952 / 852', 'Flag_of_Melilla.svg'),
(24, 'S.C. Tenerife', 'tenerife', 'SCT', 5, '922 / 822', 'Tenerife.svg'),
(25, 'Badajoz', 'badajoz', 'BDJ', 11, '924 / 824', 'Flag_of_Badajoz.svg'),
(26, 'Girona', 'girona', 'GIR', 9, '972 / 872', 'Flag_of_Girona.svg'),
(27, 'Murcia', 'murcia', 'MUR', 14, '968 / 868', 'Flag_of_Murcia.svg'),
(28, 'Teruel', 'teruel', 'TER', 2, '978 / 878', 'Teruel.svg'),
(29, 'Baleares', 'baleares', 'BAL', 4, '971 / 871', 'Baleares.svg'),
(30, 'Granada', 'granada', 'GND', 1, '958 / 858', 'Granada.svg'),
(31, 'Navarra', 'navarra', 'NVR', 15, '948 / 848', 'Navarra.svg'),
(32, 'Toledo', 'toledo', 'TOL', 8, '925 / 825', 'Toledo.svg'),
(33, 'Barcelona', 'barcelona', 'BCN', 9, '93 / 83', 'Barcelona.svg'),
(34, 'Guadalajara', 'guadalajara', 'GLJ', 8, '949 / 849', 'Guadalajara.png'),
(35, 'Ourense', 'ourense', 'OUR', 12, '988 / 888', 'Ourense.svg'),
(36, 'Valencia', 'valencia', 'VAL', 10, '960  /  961  /  962 ', 'Valencia.svg'),
(37, 'Burgos', 'burgos', 'BRG', 7, '947 / 847', 'Burgos.svg'),
(38, 'Guipúzcoa', 'guipuzcoa', 'GPZ', 16, '943 / 843', 'Guipuzcoa.svg'),
(39, 'Palencia', 'palencia', 'PAL', 7, '979 / 879', 'Palencia.svg'),
(40, 'Valladolid', 'valladolid', 'VLL', 7, '983 / 883', 'Valladolid.svg'),
(41, 'Cáceres', 'caceres', 'CAC', 11, '927 / 827', 'caceres.svg'),
(42, 'Huelva', 'huelva', 'HLV', 1, '959 / 859', 'Huelva.png'),
(43, 'Las Palmas', 'palmas', 'LPA', 5, '928 / 828', 'las_palmas.png'),
(44, 'Vizcaya', 'vizcaya', 'VZC', 16, '944 / 946 / 844 / 84', 'Vizcaya.svg'),
(45, 'Cádiz', 'cadiz', 'CDZ', 1, '956 / 856', 'Bandera_de_Cadiz.svg'),
(46, 'Huesca', 'huesca', 'HSC', 2, '974 / 874', 'Huesca.svg'),
(47, 'Pontevedra', 'pontevedra', 'PNV', 12, '986 / 886', 'Palencia.svg'),
(48, 'Zamora', 'zamora', 'ZAM', 7, '980 / 880', 'Zamora.svg'),
(49, 'Cantabria', 'cantabria', 'CTB', 6, '942 / 842', 'Cantabria.svg'),
(50, 'Jaén', 'jaen', 'JAE', 1, '953 / 853', 'Bandera_de_Jaen.svg'),
(51, 'La Rioja', 'rioja', 'LRJ', 17, '941 / 841', 'Flag_of_La_Rioja.svg'),
(52, 'Zaragoza', 'zaragoza', 'ZAR', 2, '976 / 876', 'Zaragoza.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id_provincia`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
