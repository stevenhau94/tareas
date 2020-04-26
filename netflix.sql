-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2020 at 11:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix`
--

-- --------------------------------------------------------

--
-- Table structure for table `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL DEFAULT '0',
  `director` varchar(200) NOT NULL DEFAULT '0',
  `cast` varchar(200) NOT NULL DEFAULT '0',
  `pais` varchar(200) NOT NULL DEFAULT '0',
  `fecha_agregado` varchar(200) NOT NULL DEFAULT '0',
  `anio` varchar(200) NOT NULL DEFAULT '0',
  `rating` varchar(200) NOT NULL DEFAULT '0',
  `duracion` varchar(200) NOT NULL DEFAULT '0',
  `categoria` varchar(200) NOT NULL DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `director`, `cast`, `pais`, `fecha_agregado`, `anio`, `rating`, `duracion`, `categoria`, `descripcion`) VALUES
(70234439, 'Transformers Prime', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'),
(80058654, 'Transformers: Robots in Disguise', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'),
(80117401, 'Jandino: Whatever it Takes', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'),
(80125979, '#realityhigh', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'),
(81145628, 'Norm of the North: King Sized Adventure', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'),
(81145660, 'title', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL DEFAULT '0',
  `director` varchar(200) NOT NULL DEFAULT '0',
  `cast` varchar(200) NOT NULL DEFAULT '0',
  `pais` varchar(200) NOT NULL DEFAULT '0',
  `fecha_agregado` varchar(200) NOT NULL DEFAULT '0',
  `anio` varchar(200) NOT NULL DEFAULT '0',
  `rating` varchar(200) NOT NULL DEFAULT '0',
  `duracion` varchar(200) NOT NULL DEFAULT '0',
  `categoria` varchar(200) NOT NULL DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `titulo`, `director`, `cast`, `pais`, `fecha_agregado`, `anio`, `rating`, `duracion`, `categoria`, `descripcion`) VALUES
(70234439, 'Transformers Prime', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'),
(80058654, 'Transformers: Robots in Disguise', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'),
(80117401, 'Jandino: Whatever it Takes', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'),
(80125979, '#realityhigh', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'),
(81145628, 'Norm of the North: King Sized Adventure', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x'),
(81145629, 'title', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81145661;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81145630;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
