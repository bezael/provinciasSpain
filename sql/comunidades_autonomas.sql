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
-- Table structure for table `comunidades_autonomas`
--

CREATE TABLE `comunidades_autonomas` (
  `id_comunidad` tinyint(4) NOT NULL,
  `nombre` varchar(60) CHARACTER SET utf8 NOT NULL,
  `nombre_seo` tinytext COLLATE utf8_spanish2_ci NOT NULL,
  `capital` varchar(60) CHARACTER SET utf8 NOT NULL,
  `bandera` varchar(80) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `comunidades_autonomas`
--

INSERT INTO `comunidades_autonomas` (`id_comunidad`, `nombre`, `nombre_seo`, `capital`, `bandera`) VALUES
(1, 'Andalucía', 'andalucia', 'Sevilla', 'Bandera_de_Andalucia.png'),
(2, 'Aragón', 'aragon', 'Zaragoza', 'Bandera_de_Aragon.png'),
(3, 'Asturias, Principado de', 'asturias', 'Oviedo', 'Bandera_de_Asturias.png'),
(4, ' Illes Balears', 'illes-balears', 'Palma de Mallorca', 'Bandera_de_Baleares.png'),
(5, 'Canarias', 'canarias', 'Las Palmas de Gran Canaria,Santa Cruz de Tenerife', 'Bandera_de_Canarias.png'),
(6, 'Cantabria', 'cantabria', 'Santander', 'Bandera_de_Cantabria.png'),
(7, 'Castilla y León', 'castilla-y-leon', 'No declarada', 'Bandera_de_Castilla_Leon.png'),
(8, 'Castilla La Mancha', 'castilla-la-mancha', 'Toledo', 'Bandera_de_Castilla_Mancha.png'),
(9, 'Catalunya', 'catalunya', 'Barcelona', 'Bandera_de_Catalunya.png'),
(10, 'Comunitat Valenciana', 'comunitat-valenciana', 'Valencia', 'Bandera_de_Valenciana.png'),
(11, 'Extremadura', 'extremadura', 'Mérida', 'Bandera_de_Extremadura.png'),
(12, 'Galicia', 'galicia', 'Santiago de Compostela', 'Bandera_de_Galicia.png'),
(13, 'Comunidad de Madrid', 'comunidad-de-madrid', 'Madrid', 'Bandera_de_Madrid.png'),
(14, 'Murcia, Región de', 'region-de-murcia', 'Murcia', 'Bandera_de_Murcia.png'),
(15, 'Comunidad Foral de Navarra', 'comunidad-foral-de-navarra', 'Pamplona', 'Bandera_de_Navarra.png'),
(16, 'País Vasco', 'pais-vasco', 'No declarada', 'Bandera_de_Pais_Vasco.png'),
(17, 'La Rioja', 'la-rioja', 'Logroño', 'Bandera_de_Rioja.png'),
(18, 'Ceuta', 'ceuta', 'No declarada', 'Bandera_de_Ceuta.png'),
(19, 'Melilla', 'mellilla', 'No declarada', 'Bandera_de_Melilla.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comunidades_autonomas`
--
ALTER TABLE `comunidades_autonomas`
  ADD PRIMARY KEY (`id_comunidad`),
  ADD UNIQUE KEY `id_comunidad` (`id_comunidad`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comunidades_autonomas`
--
ALTER TABLE `comunidades_autonomas`
  MODIFY `id_comunidad` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
