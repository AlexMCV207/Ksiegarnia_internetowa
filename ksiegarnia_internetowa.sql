-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 04, 2024 at 12:41 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ksiegarnia_internetowa`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `Id_klienta` int(11) NOT NULL,
  `Nazwisko` varchar(30) NOT NULL,
  `Imie` varchar(15) NOT NULL,
  `Kod_pocztowy` text NOT NULL,
  `Miejscowosc` varchar(20) NOT NULL,
  `Ulica` varchar(15) NOT NULL,
  `Nr_domu` text NOT NULL,
  `PESEL` int(11) NOT NULL,
  `Telefon` int(11) NOT NULL,
  `AdresEmail` text NOT NULL,
  `login` varchar(30) DEFAULT NULL,
  `haslo` varchar(30) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `klient`
--

INSERT INTO `klient` (`Id_klienta`, `Nazwisko`, `Imie`, `Kod_pocztowy`, `Miejscowosc`, `Ulica`, `Nr_domu`, `PESEL`, `Telefon`, `AdresEmail`, `login`, `haslo`, `admin`) VALUES
(1, 'Jorek', 'Ewa', '33-100', 'Tarnów', 'Kościuszki', '15/9', 0, 451421512, 'ewa@02.pl', NULL, NULL, 0),
(2, 'Kicior', 'Marek', '33-100', 'Tarnów', 'Lwowska', '12', 0, 215121215, 'marek@poczta.pl', NULL, NULL, 0),
(5, 'Nosalski', 'Egon', '25-124', 'Robaki', 'Kornika', '56', 0, 542121212, 'kornik1@nowy.com', NULL, NULL, 0),
(6, 'Żabka', 'Kacper', '78-512', 'Londonek', 'Korce', '325/12', 0, 741741741, 'Korce@dkdal.com', NULL, NULL, 0),
(31, 'Kowalski', 'Jan', '33-100', 'Tarnow', 'Szujskiego', '45', 0, 837927165, 'j.kowalski@w.pl', 'JK2024', '12345', 0),
(73, 'Nowak', 'Jan', '33-100', 'Tarnow', 'Krakowska', '80', 0, 132745952, 'j.nowak@w.pl', 'phpadmin', '54321', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id` int(11) NOT NULL,
  `tytul` varchar(50) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `data_wydania` date DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `ilosc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` (`id`, `tytul`, `autor`, `data_wydania`, `cena`, `ilosc`) VALUES
(0, 'Pan Tadeusz', 'Adam Mickiewicz', '1834-01-01', 40, 63),
(1, 'Dziady cz. III', 'Adam Mickiewicz', '1832-01-01', 25, 55),
(2, 'Kordian', 'Juliusz Slowacki', '1834-01-01', 30, 19),
(3, 'Lalka', 'Boleslaw Prus', '1890-01-01', 53, 107),
(4, 'Makbet', 'William Shakespeare', '1606-01-01', 30, 92),
(5, 'Wesele', 'Stanislaw Wyspianski', '1901-03-16', 40, 60),
(6, 'Skapiec', 'Molier', '1668-09-09', 27, 129),
(7, 'Antygona', 'Sofokles', '0000-00-00', 20, 84);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`Id_klienta`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klient`
--
ALTER TABLE `klient`
  MODIFY `Id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
