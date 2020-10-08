-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2020 at 09:10 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bedrijf`
--

-- --------------------------------------------------------

--
-- Table structure for table `bedrijf`
--

CREATE TABLE `bedrijf` (
  `bedrijfsnaam` varchar(20) NOT NULL,
  `adres` varchar(20) NOT NULL,
  `woonplaats` varchar(20) NOT NULL,
  `Telnr` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bedrijf`
--

INSERT INTO `bedrijf` (`bedrijfsnaam`, `adres`, `woonplaats`, `Telnr`) VALUES
('Altera', 'Mistweg', 'Emmen', 591569872),
('Mixed media', 'Europaweg 345', 'Coevorden', 524536987),
('Malware protection', 'Julianalaan 4 ', 'Emmen', 524536987),
('X-mysterie', 'Megaweg 7 ', 'Coevorden', 524896325);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
