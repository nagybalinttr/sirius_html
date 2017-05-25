-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2017. máj. 22. 18:36
-- Szerver verzió: 5.1.41
-- PHP verzió: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `futar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet: `futar`
--

CREATE TABLE IF NOT EXISTS `futar` (
  `fazon` int(3) NOT NULL DEFAULT '0',
  `fnev` varchar(25) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `ftel` varchar(12) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`fazon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `futar`
--

INSERT INTO `futar` (`fazon`, `fnev`, `ftel`) VALUES
(1, 'Hurrikán', '123456'),
(2, 'Gyalogkakukk', '666666'),
(3, 'Gömbvillám', '888888'),
(4, 'Szélvész', '258369'),
(5, 'Imperial', '987654');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `pizza`
--

CREATE TABLE IF NOT EXISTS `pizza` (
  `pazon` int(3) NOT NULL DEFAULT '0',
  `pnev` varchar(15) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `par` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pazon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `pizza`
--

INSERT INTO `pizza` (`pazon`, `pnev`, `par`) VALUES
(1, 'Kacagós', 900),
(2, 'Nevetős', 1100),
(3, 'Hawaii', 780),
(4, 'Vesuvio', 890),
(5, 'Sorrento', 990);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `rendeles`
--

CREATE TABLE IF NOT EXISTS `rendeles` (
  `razon` int(8) NOT NULL DEFAULT '0',
  `vazon` int(6) NOT NULL DEFAULT '0',
  `fazon` int(3) NOT NULL DEFAULT '0',
  `datum` date NOT NULL DEFAULT '0000-00-00',
  `ido` float NOT NULL DEFAULT '0',
  `pazon` varchar(2) COLLATE latin2_hungarian_ci NOT NULL,
  PRIMARY KEY (`razon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`razon`, `vazon`, `fazon`, `datum`, `ido`, `pazon`) VALUES
(1, 4, 2, '2010-10-01', 13.15, '2'),
(2, 7, 2, '2010-10-01', 14.17, '4'),
(3, 1, 1, '2010-10-02', 11.07, '1'),
(4, 5, 2, '2010-10-02', 14.55, '2'),
(5, 2, 3, '2010-10-02', 11.27, '3'),
(6, 4, 2, '2010-10-03', 15.58, '4'),
(7, 6, 2, '2010-10-04', 11.44, '5'),
(8, 7, 4, '2010-10-04', 12.11, '3'),
(9, 1, 5, '2010-10-04', 14.33, '3'),
(10, 3, 5, '2010-10-04', 10.04, '2'),
(11, 2, 1, '2010-10-05', 16.38, '2'),
(12, 5, 2, '2010-10-05', 17.02, '3'),
(13, 6, 2, '2010-10-06', 12.17, '1'),
(14, 4, 3, '2010-10-06', 13.21, '2'),
(15, 1, 4, '2010-10-06', 15.05, '1'),
(16, 2, 5, '2010-10-06', 15.59, '4'),
(17, 7, 2, '2010-10-06', 18.44, '3'),
(18, 3, 2, '2010-10-07', 12.01, '5'),
(19, 4, 5, '2010-10-07', 13.44, '4'),
(20, 1, 1, '2010-10-07', 17.25, '5'),
(21, 5, 3, '2010-10-08', 14.29, '4');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `vevo`
--

CREATE TABLE IF NOT EXISTS `vevo` (
  `vazon` int(6) NOT NULL DEFAULT '0',
  `vnev` varchar(30) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `vcim` varchar(30) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`vazon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `vevo`
--

INSERT INTO `vevo` (`vazon`, `vnev`, `vcim`) VALUES
(1, 'Derrik', 'Debrecen'),
(2, 'Piedone', 'Debrecen'),
(3, 'Columbo', 'Hajdúböszörmény'),
(4, 'Kuka', 'Debrecen-Józsa'),
(5, 'Szende', 'Debrecen-Józsa'),
(6, 'Szundi', 'Debrecen-Józsa'),
(7, 'Morgó', 'Debrecen-Józsa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
