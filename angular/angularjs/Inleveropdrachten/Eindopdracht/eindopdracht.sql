-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 feb 2020 om 15:13
-- Serverversie: 10.4.8-MariaDB
-- PHP-versie: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eindopdracht`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eindopdracht`
--

CREATE TABLE `eindopdracht` (
  `Id` int(11) NOT NULL,
  `Voornaam` varchar(30) NOT NULL,
  `Achternaam` varchar(30) NOT NULL,
  `Straat` varchar(50) NOT NULL,
  `Huisnummer` varchar(5) NOT NULL,
  `Postcode` varchar(6) NOT NULL,
  `Woonplaats` varchar(30) NOT NULL,
  `Telefoonnummer` int(10) NOT NULL,
  `TijdToegevoegd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `eindopdracht`
--

INSERT INTO `eindopdracht` (`Id`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Woonplaats`, `Telefoonnummer`, `TijdToegevoegd`) VALUES
(1, 'Aaron', 'de Bruin', 'de Kring ', '1', '7891TE', 'Klazienaveen', 643431119, '2020-02-24 11:04:26'),
(2, 'Alejandro ', 'Verbraak', 'Achterstraat ', '197', '3441EH', 'Woerden', 635480386, '2020-02-24 12:17:50'),
(3, 'Rakesh ', 'Ruizendaal', 'Geleenstraat ', '4', '7417BD', 'Deventer', 651806763, '2020-02-24 12:19:04'),
(4, 'Kenley ', 'den Braber', 'Van Hamalstraat ', '15', '2678TM', 'De Lier', 638090204, '2020-02-24 12:20:48');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `eindopdracht`
--
ALTER TABLE `eindopdracht`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `eindopdracht`
--
ALTER TABLE `eindopdracht`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
