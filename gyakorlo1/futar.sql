-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Hoszt: localhost
-- Létrehozás ideje: 2012. Márc 20. 10:46
-- Szerver verzió: 5.0.45
-- PHP Verzió: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Adatbázis: `futar`
-- 

-- --------------------------------------------------------

-- 
-- Tábla szerkezet: `futar`
-- 



CREATE TABLE `futar` (
  `fazon` int(3) NOT NULL default '0',
  `fnev` varchar(25) collate latin2_hungarian_ci NOT NULL default '',
  `ftel` varchar(12) collate latin2_hungarian_ci NOT NULL default '',
  PRIMARY KEY  (`fazon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

-- 
-- Tábla adatok: `futar`
-- 

INSERT INTO `futar` VALUES (1, 'Hurrikán', '123456');
INSERT INTO `futar` VALUES (2, 'Gyalogkakukk', '666666');
INSERT INTO `futar` VALUES (3, 'Gömbvillám', '888888');
INSERT INTO `futar` VALUES (4, 'Szélvész', '258369');
INSERT INTO `futar` VALUES (5, 'Imperial', '987654');

-- --------------------------------------------------------

-- 
-- Tábla szerkezet: `pizza`
-- 

CREATE TABLE `pizza` (
  `pazon` int(3) NOT NULL default '0',
  `pnev` varchar(15) collate latin2_hungarian_ci NOT NULL default '',
  `par` int(4) NOT NULL default '0',
  PRIMARY KEY  (`pazon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

-- 
-- Tábla adatok: `pizza`
-- 

INSERT INTO `pizza` VALUES (1, 'Kacagós', 900);
INSERT INTO `pizza` VALUES (2, 'Nevetős', 1100);
INSERT INTO `pizza` VALUES (3, 'Hawaii', 780);
INSERT INTO `pizza` VALUES (4, 'Vesuvio', 890);
INSERT INTO `pizza` VALUES (5, 'Sorrento', 990);

-- --------------------------------------------------------

-- 
-- Tábla szerkezet: `rendeles`
-- 

CREATE TABLE `rendeles` (
  `razon` int(8) NOT NULL default '0',
  `vazon` int(6) NOT NULL default '0',
  `fazon` int(3) NOT NULL default '0',
  `datum` date NOT NULL default '0000-00-00',
  `ido` float NOT NULL default '0',
  `pazon` varchar(2) collate latin2_hungarian_ci NOT NULL,
  PRIMARY KEY  (`razon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

-- 
-- Tábla adatok: `rendeles`
-- 

INSERT INTO `rendeles` VALUES (1, 4, 2, '2010-10-01', 13.15, '2');
INSERT INTO `rendeles` VALUES (2, 7, 2, '2010-10-01', 14.17, '4');
INSERT INTO `rendeles` VALUES (3, 1, 1, '2010-10-02', 11.07, '1');
INSERT INTO `rendeles` VALUES (4, 5, 2, '2010-10-02', 14.55, '2');
INSERT INTO `rendeles` VALUES (5, 2, 3, '2010-10-02', 11.27, '3');
INSERT INTO `rendeles` VALUES (6, 4, 2, '2010-10-03', 15.58, '4');
INSERT INTO `rendeles` VALUES (7, 6, 2, '2010-10-04', 11.44, '5');
INSERT INTO `rendeles` VALUES (8, 7, 4, '2010-10-04', 12.11, '3');
INSERT INTO `rendeles` VALUES (9, 1, 5, '2010-10-04', 14.33, '3');
INSERT INTO `rendeles` VALUES (10, 3, 5, '2010-10-04', 10.04, '2');
INSERT INTO `rendeles` VALUES (11, 2, 1, '2010-10-05', 16.38, '2');
INSERT INTO `rendeles` VALUES (12, 5, 2, '2010-10-05', 17.02, '3');
INSERT INTO `rendeles` VALUES (13, 6, 2, '2010-10-06', 12.17, '1');
INSERT INTO `rendeles` VALUES (14, 4, 3, '2010-10-06', 13.21, '2');
INSERT INTO `rendeles` VALUES (15, 1, 4, '2010-10-06', 15.05, '1');
INSERT INTO `rendeles` VALUES (16, 2, 5, '2010-10-06', 15.59, '4');
INSERT INTO `rendeles` VALUES (17, 7, 2, '2010-10-06', 18.44, '3');
INSERT INTO `rendeles` VALUES (18, 3, 2, '2010-10-07', 12.01, '5');
INSERT INTO `rendeles` VALUES (19, 4, 5, '2010-10-07', 13.44, '4');
INSERT INTO `rendeles` VALUES (20, 1, 1, '2010-10-07', 17.25, '5');
INSERT INTO `rendeles` VALUES (21, 5, 3, '2010-10-08', 14.29, '4');

-- --------------------------------------------------------

-- 
-- Tábla szerkezet: `vevo`
-- 

CREATE TABLE `vevo` (
  `vazon` int(6) NOT NULL default '0',
  `vnev` varchar(30) collate latin2_hungarian_ci NOT NULL default '',
  `vcim` varchar(30) collate latin2_hungarian_ci NOT NULL default '',
  PRIMARY KEY  (`vazon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

-- 
-- Tábla adatok: `vevo`
-- 

INSERT INTO `vevo` VALUES (1, 'Derrik', '');
INSERT INTO `vevo` VALUES (2, 'Piedone', '');
INSERT INTO `vevo` VALUES (3, 'Columbo', '');
INSERT INTO `vevo` VALUES (4, 'Kuka', '');
INSERT INTO `vevo` VALUES (5, 'Szende', '');
INSERT INTO `vevo` VALUES (6, 'Szundi', '');
INSERT INTO `vevo` VALUES (7, 'Morgó', '');
