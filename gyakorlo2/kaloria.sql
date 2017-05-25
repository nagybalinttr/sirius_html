-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2017. máj. 25. 16:40
-- Szerver verzió: 5.1.41
-- PHP verzió: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `kaloria`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet: `kaloria`
--

CREATE TABLE IF NOT EXISTS `kaloria` (
  `etelnev` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `kaloria` varchar(255) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `feherje` varchar(255) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `zsir` varchar(255) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `szenhidrat` varchar(255) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `kaloria`
--

INSERT INTO `kaloria` (`etelnev`, `kaloria`, `feherje`, `zsir`, `szenhidrat`) VALUES
('Árpagyöngy (gersli)', '349 (1460)', '9', '1,4', '75'),
('Búza, hántolt (buris)', '343 (1435)', '12,5', '1', '71,1'),
('Búzadara', '340 (1423)', '9,4', '1', '73,4'),
('Búzaliszt (teljes)', '342 (1431)', '14', '1,8', '67,4'),
('Búzaliszt (főző 4,60Ft/kg)', '345 (1443)', '13,5', '1', '70,4'),
('Búzaliszt (BL 55)', '345 (1443)', '12,1', '0,8', '72,4'),
('Kukoricaliszt', '347 (1452)', '9,6', '3,1', '70,2'),
('Rizs (csiszolt)', '345 (1443)', '8', '0,3', '77,5'),
('Rozsliszt', '344 (1439)', '10', '1,1', '73,6'),
('Száraztészta (fehéráru)', '376 (1573)', '13,1', '1,8', '76,8'),
('Száraztészta (2 tojásos)', '380 (1590)', '14', '2,6', '75,1'),
('Száraztészta (4 tojásos)', '382 (1598)', '15', '3,4', '72,9'),
('Zabpehely', '376 (1573)', '14,4', '6,8', '64,3'),
('Zsemlemorzsa', '342 (1431)', '10,2', '0,9', '73,3'),
('Büfékenyér', '264 (1105)', '10,1', '1', '53,7'),
('Fehér kenyér (finom feh. kenyér)', '261 (1092)', '10', '0,8', '53,5'),
('Félbarna kenyér (fehér kenyér)', '257 (1075)', '9,8', '1', '52,3'),
('Félbarna kenyér (burgonyás)', '229 (958)', '8', '0,8', '47,5'),
('Graham-kenyér', '265 (1109)', '10,1', '1', '54'),
('Levegőkenyér 1db 50g', '195 (818)', '22,6', '10,8', '14,2'),
('Levegőkenyér ', '391 (1636)', '45,2', '21,6', '28,3'),
('Rozskenyér', '255 (1067)', '8,1', '0,9', '53,6'),
('Sószegény kenyér 1db 250g', '770 (3223)', '22', '1,5', '136'),
('Sószegény kenyér ', '308 (1289)', '9,1', '0,6', '54,4'),
('Szegedi vágott 1db 220g', '643 (2690)', '21,7', '5', '127,7'),
('Szegedi vágott ', '292 (1222)', '9,9', '2,3', '58'),
('Uzsonnakenyér 1db 250g', '758 (3171)', '23,9', '10,2', '142,6'),
('Uzsonnakenyér ', '303 (1268)', '9,6', '4', '57'),
('Zsemlevekni 1db 250g', '679 (2841)', '23,7', '1,6', '142,5'),
('Zsemlevekni ', '271 (1134)', '9,5', '0,6', '57'),
('Császárzsemle 1db 44g', '132 (552)', '4,5', '1,1', '25,9'),
('Császárzsemle ', '299 (1251)', '10,2', '2,5', '58,9');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
