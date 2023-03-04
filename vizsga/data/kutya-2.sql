-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 26. 18:30
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kutya2`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kutya`
--

CREATE TABLE `kutya` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `eletkor` int(11) NOT NULL,
  `fajta` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beker_datum` date NOT NULL,
  `azon` varchar(8) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kutya`
--

INSERT INTO `kutya` (`id`, `nev`, `eletkor`, `fajta`, `beker_datum`, `azon`) VALUES
(1, 'Bodri', 3, 'Tacskó', '2022-01-10', '123456A'),
(2, 'Fifi', 2, 'Mopsz', '2022-01-11', '234567B'),
(3, 'Max', 5, 'Németjuhász', '2022-01-12', '345678C'),
(4, 'Luna', 1, 'Golden Retriever', '2022-01-13', '456789D'),
(5, 'Buddy', 4, 'Labrador Retriever', '2022-01-14', '567890E'),
(6, 'Charlie', 2, 'Yorkshire Terrier', '2022-01-15', '678901F'),
(7, 'Daisy', 3, 'Ausztrál juhászkutya', '2022-01-16', '789012G'),
(8, 'Lucky', 6, 'Beagle', '2022-01-17', '890123H'),
(9, 'Molly', 4, 'Pitbull', '2022-01-18', '901234I'),
(10, 'Rocky', 3, 'Staffordshire Bull Terrier', '2022-01-19', '012345J'),
(11, 'Rex', 2, 'Vizsla', '2022-01-20', '123456K'),
(12, 'Bailey', 5, 'Shih Tzu', '2022-01-21', '234567L'),
(13, 'Duke', 1, 'Border Collie', '2022-01-22', '345678M'),
(14, 'Roxy', 4, 'Dobermann', '2022-01-23', '456789N'),
(15, 'Jack', 2, 'Boxer', '2022-01-24', '567890O'),
(16, 'Lola', 3, 'Bernáthegyi', '2022-01-25', '678901P'),
(17, 'Shadow', 6, 'Szibériai Husky', '2022-01-26', '789012Q'),
(18, 'Bear', 4, 'Akita Inu', '2022-01-27', '890123R'),
(19, 'Cooper', 1, 'Rottweiler', '2022-01-28', '901234S'),
(20, 'Lady', 5, 'Dalmata', '2022-01-29', '012345T'),
(21, 'Bentley', 2, 'Boston Terrier', '2022-01-30', '123456U'),
(22, 'Bruno', 3, 'Beauceron', '2022-01-31', '234567V'),
(23, 'Gizmo', 4, 'French Bulldog', '2022-02-01', '345678W'),
(24, 'Harley', 1, 'American Staffordshire Terrier', '2022-02-02', '456789X'),
(25, 'Maggie', 5, 'Pembroke Welsh Corgi', '2022-02-03', '567890Y'),
(26, 'Maximus', 2, 'Weimaraner', '2022-02-04', '678901Z'),
(27, 'Sophie', 4, 'Shetlandi juhászkutya', '2022-02-05', '789012A1'),
(28, 'Zeus', 6, 'Shar Pei', '2022-02-06', '890123B1'),
(29, 'Diesel', 3, 'Chow Chow', '2022-02-07', '901234C1'),
(30, 'Ginger', 5, 'Staffordshire Terrier', '2022-02-08', '012345D1'),
(31, 'Jake', 2, 'Bull Terrier', '2022-02-09', '123456E1'),
(32, 'Mia', 1, 'Máltai Selyemkutya', '2022-02-10', '234567F1'),
(33, 'Riley', 4, 'Chihuahua', '2022-02-11', '345678G1'),
(34, 'Toby', 3, 'Cavalier King Charles Spaniel', '2022-02-12', '456789H1'),
(35, '', 0, '', '0000-00-00', '');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kutya`
--
ALTER TABLE `kutya`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kutya`
--
ALTER TABLE `kutya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
