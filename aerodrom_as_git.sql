-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 11:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aerodrom_as`
--
CREATE DATABASE IF NOT EXISTS `aerodrom_as` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aerodrom_as`;

-- --------------------------------------------------------

--
-- Table structure for table `fnalog`
--

CREATE TABLE `fnalog` (
  `idnalog` int(11) NOT NULL,
  `relacija` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registracija` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vozilo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trosak` decimal(10,2) DEFAULT NULL,
  `opisTroska` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `km` int(10) DEFAULT NULL,
  `slepVozilo` int(3) DEFAULT NULL,
  `prihod` decimal(10,2) DEFAULT NULL,
  `datum` datetime DEFAULT NULL,
  `idf` int(11) DEFAULT NULL,
  `kreirao` int(2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fnalog`
--

INSERT INTO `fnalog` (`idnalog`, `relacija`, `registracija`, `vozilo`, `trosak`, `opisTroska`, `km`, `slepVozilo`, `prihod`, `datum`, `idf`, `kreirao`, `status`, `del`) VALUES
(10, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Honda', '0.00', 'Gorivo + putarina', 5, 9, '3000.00', '2019-10-23 18:02:56', 4, 10, 1, 0),
(18, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Audi A4', '0.00', 'Gorivo + putarina', 74, 9, '4500.00', '2019-11-02 18:56:02', 4, 9, 1, 0),
(19, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Reno 5', '0.00', 'Gorivo + putarina', 105, 10, '6300.00', '2019-11-15 13:52:21', 4, 10, 1, 0),
(20, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Peugeot 308', '0.00', 'Gorivo + putarina', 50, 10, '4000.00', '2019-11-15 15:58:16', 4, 10, 0, 1),
(21, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Peugeot 308', '0.00', 'Gorivo + putarina', 60, 10, '4000.00', '2019-11-16 09:56:20', 4, 10, 1, 0),
(22, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Hyundai tucson', '0.00', 'Gorivo + putarina', 200, 9, '15000.00', '2019-11-24 23:30:01', 4, 10, 0, 1),
(23, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Fiat kubo', '0.00', 'Gorivo + putarina', 80, 9, '5000.00', '2019-12-01 15:39:22', 4, 9, 1, 0),
(24, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Reno Clio', '2000.00', 'Gorivo + putarina', 0, 9, '12000.00', '2019-12-04 11:26:53', 4, 9, 1, 0),
(25, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Nema ', '0.00', 'Gorivo + putarina', 0, 9, '2087.00', '2019-12-04 23:09:57', 6, 9, 1, 0),
(26, 'Dobanovci - Vozdovac', 'BG 323 ET', 'SMART', '0.00', 'Gorivo + putarina', 50, 9, '10000.00', '2019-12-05 18:36:43', 4, 10, 1, 0),
(27, 'Dobanovci - Vozdovac', 'BG 323 ET', 'BMW530', '0.00', 'Gorivo + putarina', 55, 10, '3500.00', '2019-12-09 12:17:08', 4, 10, 1, 0),
(28, 'Dobanovci - Vozdovac', 'BG 323 ET', 'BMW', '0.00', 'Gorivo + putarina', 0, 10, '6000.00', '2019-12-23 13:10:06', 8, 9, 0, 0),
(29, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Jeep Čiroki', '0.00', 'Gorivo + putarina', 0, 10, '6000.00', '2019-12-24 13:02:27', 8, 9, 0, 0),
(30, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Skoda ', '0.00', 'Gorivo + putarina', 0, 10, '3000.00', '2020-01-24 10:50:58', 9, 9, 1, 0),
(31, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Fiat grande punto', '0.00', 'Gorivo + putarina', 0, 10, '3000.00', '2020-02-02 11:18:01', 4, 9, 1, 0),
(32, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Skoda fabia', '0.00', 'Gorivo + putarina', 82, 10, '5000.00', '2020-02-03 17:48:31', 4, 10, 1, 0),
(33, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Skoda fabia', '0.00', 'Gorivo + putarina', 0, 9, '4000.00', '2020-02-05 15:31:13', 4, 10, 1, 0),
(34, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Citroen C 5', '0.00', 'Gorivo + putarina', 0, 10, '3000.00', '2020-02-19 12:20:54', 4, 9, 1, 0),
(35, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Golf 4', '0.00', 'Gorivo + putarina', 210, 11, '12500.00', '2020-02-19 15:34:54', 4, 9, 1, 0),
(36, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Mb glc', '0.00', 'Gorivo + putarina', 5, 10, '3000.00', '2020-02-23 21:04:44', 4, 10, 1, 0),
(37, 'Dobanovci - Vozdovac', 'BG 323 ET', 'FIAT BRAVO', '0.00', 'Gorivo + putarina', 10, 10, '3000.00', '2020-02-26 10:55:01', 4, 10, 1, 0),
(38, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Toyota Corola', '0.00', 'Gorivo + putarina', 86, 10, '5.00', '2020-03-03 18:02:37', 4, 9, 0, 1),
(39, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Toyota Corola', '0.00', 'Gorivo + putarina', 86, 10, '5160.00', '2020-03-03 18:05:14', 4, 9, 1, 0),
(40, 'Dobanovci - Vozdovac', 'BG 323 ET', 'A klasa 2 kom', '0.00', 'Gorivo + putarina', 0, 10, '10000.00', '2020-03-06 18:32:06', 10, 9, 1, 0),
(41, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Bmw 728', '0.00', 'Gorivo + putarina', 2, 10, '3000.00', '2020-03-10 12:13:55', 4, 10, 1, 0),
(42, 'Dobanovci - Vozdovac', 'BG 323 ET', 'MERCEDES E', '0.00', 'Gorivo + putarina', 10, 9, '8000.00', '2020-03-11 11:02:14', 4, 10, 1, 0),
(43, 'Dobanovci - Vozdovac', 'BG 323 ET', 'SPRINTER ', '3000.00', 'Gorivo + putarina', 5, 9, '6000.00', '2020-03-12 13:11:11', 4, 10, 1, 0),
(44, 'Dobanovci - Vozdovac', 'BG 323 ET', 'FIAT STILO', '0.00', 'Gorivo + putarina', 62, 10, '4000.00', '2020-03-22 17:16:16', 4, 10, 1, 0),
(45, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Skoda Fabia', '0.00', 'Gorivo + putarina', 0, 10, '3000.00', '2020-03-27 10:15:48', 9, 9, 1, 0),
(46, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Iveco 65 c 15', '0.00', 'Gorivo + putarina', 0, 9, '10000.00', '2020-03-27 10:18:09', 12, 9, 1, 0),
(47, 'Dobanovci - Vozdovac', 'BG 323 ET', 'MB S350', '0.00', 'Gorivo + putarina', 45, 10, '3500.00', '2020-04-01 12:02:41', 4, 10, 1, 0),
(48, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Iveco 65 c 15', '0.00', 'Gorivo + putarina', 0, 9, '7000.00', '2020-04-06 14:50:09', 12, 9, 1, 0),
(49, 'Dobanovci - Vozdovac', 'BG 323 ET', 'A6', '0.00', 'Gorivo + putarina', 30, 10, '3000.00', '2020-04-27 15:14:11', 4, 10, 1, 0),
(50, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Sprinter 313', '0.00', 'Gorivo + putarina', 0, 9, '6000.00', '2020-05-05 14:45:46', 4, 9, 1, 0),
(51, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Iveco 72', '0.00', 'Gorivo + putarina', 10, 9, '6000.00', '2020-05-05 17:54:22', 8, 10, 0, 0),
(52, 'Dobanovci - Vozdovac', 'BG 323 ET', 'SKODA ', '0.00', 'Gorivo + putarina', 30, 10, '5000.00', '2020-05-18 17:32:05', 9, 10, 1, 0),
(53, 'Dobanovci - Vozdovac', 'BG 323 ET', 'A180', '0.00', 'Gorivo + putarina', 3, 9, '3000.00', '2020-06-05 20:29:47', 4, 10, 1, 0),
(54, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Nisan', '0.00', 'Gorivo + putarina', 5, 9, '3000.00', '2020-06-06 14:39:50', 4, 10, 1, 0),
(55, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Mercefes c 200', '0.00', 'Gorivo + putarina', 15, 10, '4000.00', '2020-06-14 21:03:34', 4, 10, 1, 0),
(56, 'Dobanovci - Vozdovac', 'BG 323 ET', 'DOBLO', '0.00', 'Gorivo + putarina', 60, 9, '8000.00', '2020-06-16 15:41:36', 13, 10, 1, 0),
(57, 'Dobanovci - Vozdovac', 'BG 323 ET', 'DACIA', '0.00', 'Gorivo + putarina', 71, 10, '4500.00', '2020-06-25 16:31:10', 4, 10, 1, 0),
(58, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Colt', '0.00', 'Gorivo + putarina', 20, 10, '3000.00', '2020-06-28 21:02:24', 4, 10, 1, 0),
(59, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Vise komada', '0.00', 'Gorivo + putarina', 0, 10, '71500.00', '2020-07-03 16:18:53', 14, 9, 1, 0),
(60, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Tiguan i Mercedes c klasa', '0.00', 'Gorivo + putarina', 0, 15, '6000.00', '2020-07-03 19:24:19', 14, 9, 1, 0),
(61, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Q3 i Tiguan', '0.00', 'Gorivo + putarina', 0, 15, '6000.00', '2020-07-06 11:25:11', 14, 9, 1, 0),
(62, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Q3+TIGUAN', '0.00', 'Gorivo + putarina', 25, 15, '6000.00', '2020-07-06 15:26:05', 14, 10, 1, 0),
(63, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Q3 i Tiguan', '0.00', 'Gorivo + putarina', 0, 15, '6000.00', '2020-07-06 17:01:39', 14, 9, 0, 1),
(64, 'Dobanovci - Vozdovac', 'BG 323 ET', 'SCUDO', '0.00', 'Gorivo + putarina', 5, 9, '6000.00', '2020-07-06 18:08:30', 15, 10, 1, 0),
(65, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Skoda superb', '0.00', 'Gorivo + putarina', 0, 10, '3000.00', '2020-07-08 12:02:42', 14, 9, 1, 0),
(66, 'Dobanovci - Vozdovac', 'BG 323 ET', 'BMW 520', '0.00', 'Gorivo + putarina', 0, 10, '3000.00', '2020-07-08 15:17:38', 14, 9, 1, 0),
(67, 'Dobanovci - Vozdovac', 'BG 323 ET', 'HONDA ACORD', '0.00', 'Gorivo + putarina', 10, 9, '8000.00', '2020-07-09 14:21:33', 4, 10, 1, 0),
(68, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Tiguan + Q3 i citroen Picaso', '0.00', 'Gorivo + putarina', 0, 15, '8000.00', '2020-07-10 20:28:06', 14, 9, 1, 0),
(69, 'Dobanovci - Vozdovac', 'BG 323 ET', 'GOLF 5', '0.00', 'Gorivo + putarina', 150, 10, '9000.00', '2020-07-10 20:30:16', 4, 10, 1, 0),
(70, 'Dobanovci - Vozdovac', 'BG 323 ET', 'BMW 520', '0.00', 'Gorivo + putarina', 10, 10, '3000.00', '2020-07-11 21:57:52', 14, 10, 1, 0),
(71, 'Dobanovci - Vozdovac', 'BG 323 ET', 'BMW 520', '0.00', 'Gorivo + putarina', 25, 10, '3000.00', '2020-07-13 10:51:07', 14, 10, 1, 0),
(72, 'Dobanovci - Vozdovac', 'BG 323 ET', 'INSIGNIJA-VW G7-Q3-ZIGUAN', '0.00', 'Gorivo + putarina', 40, 15, '10000.00', '2020-07-14 22:44:57', 14, 10, 1, 0),
(73, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Citroen C4', '0.00', 'Gorivo + putarina', 260, 9, '26280.00', '2020-07-16 16:14:06', 4, 9, 1, 0),
(74, 'Dobanovci - Vozdovac', 'BG 323 ET', 'AUDI A6', '0.00', 'Gorivo + putarina', 200, 9, '16000.00', '2020-07-18 00:13:36', 4, 10, 1, 0),
(75, 'Dobanovci - Vozdovac', 'BG 323 ET', 'TIGUAN', '0.00', 'Gorivo + putarina', 10, 10, '3000.00', '2020-07-18 12:24:15', 14, 10, 1, 0),
(76, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Astra - Tiguan', '0.00', 'Gorivo + putarina', 0, 10, '5000.00', '2020-07-21 18:06:04', 14, 9, 1, 0),
(77, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Hunday i 30', '0.00', 'Gorivo + putarina', 0, 9, '3000.00', '2020-07-23 15:29:50', 16, 9, 0, 1),
(78, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Terazije - Milutina Milankovica', '0.00', 'Gorivo + putarina', 0, 10, '3500.00', '2020-07-23 15:30:52', 16, 9, 1, 0),
(79, 'Dobanovci - Vozdovac', 'BG 323 ET', 'AUDI A3', '0.00', 'Gorivo + putarina', 10, 10, '3000.00', '2020-07-24 18:39:59', 14, 10, 0, 1),
(80, 'Dobanovci - Vozdovac', 'BG 323 ET', 'AUDI A3', '0.00', 'Gorivo + putarina', 10, 10, '3000.00', '2020-07-24 18:39:59', 14, 10, 0, 1),
(81, 'Dobanovci - Vozdovac', 'BG 323 ET', 'AUDI A3', '0.00', 'Gorivo + putarina', 10, 10, '3000.00', '2020-07-24 18:42:56', 14, 10, 1, 0),
(82, 'Dobanovci - Vozdovac', 'BG 323 ET', 'JAGUAR+SKUTER', '0.00', 'Gorivo + putarina', 10, 10, '24000.00', '2020-07-24 21:36:15', 4, 10, 1, 0),
(83, 'Dobanovci - Vozdovac', 'BG 323 ET', 'BMW X3-AUDI A3', '0.00', 'Gorivo + putarina', 40, 10, '5000.00', '2020-07-27 19:06:34', 14, 10, 1, 0),
(84, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Tiguan i Insignija', '0.00', 'Gorivo + putarina', 0, 10, '5000.00', '2020-07-31 14:32:30', 14, 9, 1, 0),
(85, 'Dobanovci - Vozdovac', 'BG 323 ET', 'INSIGNIJA-ASTRA-X3', '0.00', 'Gorivo + putarina', 50, 10, '8000.00', '2020-08-04 16:19:34', 14, 10, 1, 0),
(86, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Insignija', '0.00', 'Gorivo + putarina', 0, 9, '3000.00', '2020-08-06 16:23:38', 14, 9, 1, 0),
(87, 'Dobanovci - Vozdovac', 'BG 323 ET', 'TIGUAN-INSIGNIJA-X3-ASTRA', '0.00', 'Gorivo + putarina', 30, 11, '12000.00', '2020-08-08 21:09:02', 14, 10, 1, 0),
(88, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Fiat stilo', '0.00', 'Gorivo + putarina', 0, 9, '3000.00', '2020-08-10 12:11:19', 4, 9, 0, 1),
(89, 'Dobanovci - Vozdovac', 'BG 323 ET', 'TIGUAN-INSIGNIJA', '0.00', 'Gorivo + putarina', 30, 15, '6000.00', '2020-08-11 17:56:16', 14, 10, 1, 0),
(90, 'Dobanovci - Vozdovac', 'BG 323 ET', 'FIESTA', '0.00', 'Gorivo + putarina', 65, 10, '3500.00', '2020-08-26 15:23:30', 4, 10, 0, 1),
(91, 'Dobanovci - Vozdovac', 'BG 323 ET', 'FIESTA', '0.00', 'Gorivo + putarina', 65, 10, '3500.00', '2020-08-26 15:25:50', 4, 10, 1, 0),
(92, 'Dobanovci - Vozdovac', 'BG 323 ET', 'MWGAN', '0.00', 'Gorivo + putarina', 5, 9, '6000.00', '2020-08-30 16:58:11', 17, 10, 1, 0),
(93, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Peugeot 206', '0.00', 'Gorivo + putarina', 75, 10, '4500.00', '2020-09-01 15:11:31', 4, 10, 1, 0),
(94, 'Dobanovci - Vozdovac', 'BG 323 ET', 'MOKA OPEL', '0.00', 'Gorivo + putarina', 20, 10, '3000.00', '2020-09-09 21:07:55', 14, 10, 0, 0),
(95, 'Dobanovci - Vozdovac', 'BG 323 ET', 'ML250-MOKA', '0.00', 'Gorivo + putarina', 40, 10, '5500.00', '2020-09-16 20:12:28', 14, 10, 0, 0),
(96, 'Dobanovci - Vozdovac', 'BG 323 ET', 'LADA NIVA', '0.00', 'Gorivo + putarina', 100, 15, '12000.00', '2020-09-18 00:54:33', 7, 10, 1, 0),
(97, 'Dobanovci - Vozdovac', 'BG 323 ET', 'Reno Trafic', '0.00', 'Gorivo + putarina', 0, 9, '6000.00', '2020-09-19 16:52:42', 18, 9, 0, 0),
(98, 'Dobanovci - Vozdovac', 'BG 323 ET', 'MOKA OPEL', '0.00', 'Gorivo + putarina', 15, 10, '3000.00', '2020-09-19 21:29:42', 4, 10, 0, 1),
(99, 'Dobanovci - Vozdovac', 'BG 323 ET', 'MOKA OPEL', '0.00', 'Gorivo + putarina', 15, 10, '3000.00', '2020-09-19 21:30:39', 14, 10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `f_ime`
--

CREATE TABLE `f_ime` (
  `idf_ime` int(11) NOT NULL,
  `fime` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f_ime`
--

INSERT INTO `f_ime` (`idf_ime`, `fime`, `status`) VALUES
(4, 'Atlantik', 1),
(5, 'Java bar', 1),
(6, 'Banka 1', 1),
(7, 'Banka 2', 1),
(8, 'Pera doo', 1),
(9, 'Forte doo', 1),
(10, 'Aerodrom parking AS011', 1),
(11, 'Milojko Transport', 1),
(12, 'KGE doo', 1),
(13, 'Soko Terme', 1),
(14, 'Car garage', 1),
(15, 'Milsped', 1),
(16, 'Aerodrom Beograd', 1),
(17, 'GreenShot', 1),
(18, 'eData', 1),
(19, 'Nika', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nalog`
--

CREATE TABLE `nalog` (
  `idnalog` int(11) NOT NULL,
  `relacija` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registracija` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vozilo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trosak` int(10) DEFAULT NULL,
  `opisTroska` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `km` int(10) DEFAULT NULL,
  `slepVozilo` int(3) DEFAULT NULL,
  `prihod` int(10) DEFAULT NULL,
  `datum` datetime DEFAULT NULL,
  `kreirao` int(2) DEFAULT NULL,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nalog`
--

INSERT INTO `nalog` (`idnalog`, `relacija`, `registracija`, `vozilo`, `trosak`, `opisTroska`, `km`, `slepVozilo`, `prihod`, `datum`, `kreirao`, `del`) VALUES
(31, 'Dobanovci - Vozdovac', 'test123', 'SKODA RAPID COOMEO', 0, 'gorivo + putarina', 30, 9, 3000, '2019-10-12 00:00:00', 10, 0),
(29, 'Dobanovci - Vozdovac', 'test123', 'Land Rover Freelender', 0, 'gorivo + putarina', 12, 10, 3000, '2019-10-10 00:00:00', 9, 0),
(30, 'Dobanovci - Vozdovac', 'test123', 'Citroen Ksara picaso', 0, 'gorivo + putarina', 0, 9, 0, '2019-10-10 00:00:00', 9, 0),
(32, 'Dobanovci - Vozdovac', 'test123', 'SKODA ', 240, 'gorivo + putarina', 95, 9, 7000, '2019-10-13 00:00:00', 10, 0),
(33, 'Dobanovci - Vozdovac', 'test123', 'Pezo 306', 0, 'gorivo + putarina', 18, 9, 3500, '2019-10-15 00:00:00', 9, 0),
(34, 'Dobanovci - Vozdovac', 'test123', 'Iveco dailly', 0, 'gorivo + putarina', 0, 9, 7000, '2019-10-15 00:00:00', 9, 0),
(35, 'Dobanovci - Vozdovac', 'test123', 'Alfa 156', 0, 'gorivo + putarina', 0, 9, 4000, '2019-10-15 00:00:00', 9, 0),
(36, 'Dobanovci - Vozdovac', 'test123', 'Reno Clio', 0, 'gorivo + putarina', 0, 9, 3500, '2019-10-16 00:00:00', 9, 0),
(37, 'Dobanovci - Vozdovac', 'test123', 'Mini moris Cantryman', 0, 'gorivo + putarina', 75, 9, 8850, '2019-10-17 00:00:00', 9, 0),
(38, 'Dobanovci - Vozdovac', 'test123', 'Lada niva', 0, 'gorivo + putarina', 25, 9, 4000, '2019-10-18 00:00:00', 10, 0),
(39, 'Dobanovci - Vozdovac', 'test123', 'Kangu', 0, 'gorivo + putarina', 30, 9, 3500, '2019-10-18 00:00:00', 10, 0),
(40, 'Dobanovci - Vozdovac', 'test123', 'Vektra', 0, 'gorivo + putarina', 30, 9, 5000, '2019-10-19 00:00:00', 10, 0),
(41, 'Dobanovci - Vozdovac', 'test123', 'PUNTO', 0, 'gorivo + putarina', 40, 9, 6000, '2019-10-19 00:00:00', 10, 0),
(42, 'Dobanovci - Vozdovac', 'test123', 'C3', 0, 'gorivo + putarina', 0, 9, 2500, '2019-10-19 00:00:00', 9, 0),
(43, 'Dobanovci - Vozdovac', 'test123', 'Mercedes E klasa', 0, 'gorivo + putarina', 0, 9, 4000, '0000-00-00 00:00:00', 9, 0),
(45, 'Dobanovci - Vozdovac', 'test123', 'Kaskai', 0, 'gorivo + putarina', 0, 9, 3000, '0000-00-00 00:00:00', 9, 0),
(49, 'Dobanovci - Vozdovac', 'test123', 'Ford fiesta', 0, 'gorivo + putarina', 0, 9, 3500, '2019-10-21 15:41:55', 9, 0),
(50, 'Dobanovci - Vozdovac', 'test123', 'Mercedes Sprinter ', 0, 'gorivo + putarina', 0, 9, 7000, '2019-10-21 20:16:41', 9, 0),
(53, 'Dobanovci - Vozdovac', 'test123', 'Skuter', 0, 'gorivo + putarina', 20, 10, 3000, '2019-10-22 10:40:40', 10, 0),
(54, 'Dobanovci - Vozdovac', 'test123', 'Kangoo', 0, 'gorivo + putarina', 0, 9, 2000, '2019-10-22 16:44:11', 9, 0),
(55, 'Dobanovci - Vozdovac', 'test123', 'C3', 0, 'gorivo + putarina', 10, 9, 2500, '2019-10-23 14:22:04', 10, 0),
(56, 'Dobanovci - Vozdovac', 'test123', 'PUNTO', 0, 'gorivo + putarina', 30, 9, 6000, '2019-10-23 17:20:35', 10, 0),
(57, 'Dobanovci - Vozdovac', 'test123', 'Jepp cerockie', 0, 'gorivo + putarina', 0, 9, 3000, '2019-10-24 13:37:57', 9, 0),
(58, 'Dobanovci - Vozdovac', 'test123', 'Mercedes E klasa 200', 2000, 'gorivo + putarina', 12, 9, 6000, '2019-10-24 14:57:55', 9, 0),
(59, 'Dobanovci - Vozdovac', 'test123', 'B klasa', 0, 'gorivo + putarina', 0, 9, 4500, '2019-10-24 15:43:06', 9, 0),
(60, 'Dobanovci - Vozdovac', 'test123', 'Pezo 306', 0, 'gorivo + putarina', 0, 9, 3500, '2019-10-25 13:08:05', 9, 0),
(61, 'Dobanovci - Vozdovac', 'test123', 'PUNTO slupan', 0, 'gorivo + putarina', 30, 9, 6000, '2019-10-26 12:09:49', 10, 0),
(64, 'Dobanovci - Vozdovac', 'test123', 'BoraVW', 0, 'gorivo + putarina', 10, 9, 3000, '2019-10-28 18:20:31', 10, 0),
(65, 'Dobanovci - Vozdovac', 'test123', 'OPEL ASTRA', 0, 'gorivo + putarina', 0, 9, 3000, '2019-10-29 11:07:38', 9, 0),
(66, 'Dobanovci - Vozdovac', 'test123', 'Dacia Logan', 0, 'gorivo + putarina', 0, 9, 3000, '2019-10-30 10:24:24', 9, 0),
(67, 'Dobanovci - Vozdovac', 'test123', 'Fiat apunto', 0, 'gorivo + putarina', 0, 9, 3000, '2019-10-30 12:36:49', 9, 0),
(68, 'Dobanovci - Vozdovac', 'test123', 'Doblo', 0, 'gorivo + putarina', 50, 9, 10000, '2019-10-31 11:02:59', 10, 0),
(69, 'Dobanovci - Vozdovac', 'test123', 'BMW X3', 0, 'gorivo + putarina', 0, 9, 4000, '2019-10-31 12:25:59', 9, 0),
(70, 'Dobanovci - Vozdovac', 'test123', 'Lanca', 0, 'gorivo + putarina', 20, 9, 3000, '2019-10-31 14:02:43', 10, 0),
(71, 'Dobanovci - Vozdovac', 'test123', 'Golf3', 0, 'gorivo + putarina', 20, 9, 3000, '2019-11-01 14:57:20', 10, 0),
(72, 'Dobanovci - Vozdovac', 'test123', 'Spark', 0, 'gorivo + putarina', 0, 9, 3500, '2019-11-02 12:07:45', 9, 0),
(73, 'Dobanovci - Vozdovac', 'test123', 'CORSA', 0, 'gorivo + putarina', 15, 9, 4000, '2019-11-03 00:26:39', 10, 0),
(74, 'Dobanovci - Vozdovac', 'test123', 'Fiat Idea', 0, 'gorivo + putarina', 0, 9, 3000, '2019-11-04 16:20:00', 9, 0),
(75, 'Dobanovci - Vozdovac', 'test123', 'L.ROVER', 0, 'gorivo + putarina', 10, 9, 3000, '2019-11-06 09:10:17', 10, 0),
(76, 'Dobanovci - Vozdovac', 'test123', 'Mar a clas', 0, 'gorivo + putarina', 20, 9, 5000, '2019-11-06 21:06:54', 10, 0),
(77, 'Dobanovci - Vozdovac', 'test123', 'BMW 7', 70830, 'gorivo + putarina', 1700, 11, 110800, '2019-11-08 12:41:16', 9, 0),
(78, 'Dobanovci - Vozdovac', 'test123', 'Doblo', 0, 'gorivo + putarina', 60, 9, 12000, '2019-11-09 13:19:13', 10, 0),
(79, 'Dobanovci - Vozdovac', 'test123', 'Laguna', 0, 'gorivo + putarina', 25, 9, 3000, '2019-11-09 15:28:27', 10, 0),
(80, 'Dobanovci - Vozdovac', 'test123', 'Pezo 308', 0, 'gorivo + putarina', 0, 9, 3000, '2019-11-09 16:48:13', 9, 0),
(81, 'Dobanovci - Vozdovac', 'test123', 'Reno Scenic', 0, 'gorivo + putarina', 0, 9, 10000, '2019-11-09 19:01:40', 9, 0),
(82, 'Dobanovci - Vozdovac', 'test123', 'Megan', 0, 'gorivo + putarina', 15, 9, 6000, '2019-11-10 06:01:20', 10, 0),
(83, 'Dobanovci - Vozdovac', 'test123', 'Passat b6', 0, 'gorivo + putarina', 0, 9, 4500, '2019-11-10 13:49:39', 9, 0),
(84, 'Dobanovci - Vozdovac', 'test123', 'Fiesta', 0, 'gorivo + putarina', 15, 9, 4000, '2019-11-10 16:58:14', 10, 0),
(85, 'Dobanovci - Vozdovac', 'test123', 'Ford Gslaksi', 0, 'gorivo + putarina', 0, 9, 11800, '2019-11-11 15:33:54', 9, 0),
(86, 'Dobanovci - Vozdovac', 'test123', 'Fiat Idea', 0, 'gorivo + putarina', 0, 9, 4000, '2019-11-13 10:02:42', 9, 0),
(87, 'Dobanovci - Vozdovac', 'test123', 'OPEL ASTRA', 0, 'gorivo + putarina', 0, 9, 3500, '2019-11-13 14:51:09', 9, 0),
(88, 'Dobanovci - Vozdovac', 'test123', 'Mar a clas', 0, 'gorivo + putarina', 15, 9, 4000, '2019-11-14 17:45:21', 10, 0),
(89, 'Dobanovci - Vozdovac', 'test123', 'Land Rover', 0, 'gorivo + putarina', 0, 9, 4700, '2019-11-17 16:31:02', 9, 0),
(90, 'Dobanovci - Vozdovac', 'test123', 'Audi a4', 0, 'gorivo + putarina', 5, 10, 2500, '2019-11-19 17:13:09', 10, 0),
(91, 'Dobanovci - Vozdovac', 'test123', 'Mercedes B klasa', 0, 'gorivo + putarina', 0, 10, 3000, '2019-11-19 17:57:24', 9, 0),
(92, 'Dobanovci - Vozdovac', 'test123', 'Epica', 0, 'gorivo + putarina', 50, 10, 6000, '2019-11-20 17:58:45', 10, 0),
(93, 'Dobanovci - Vozdovac', 'test123', 'FABIJA', 0, 'gorivo + putarina', 7, 10, 3000, '2019-11-21 12:00:14', 10, 0),
(94, 'Dobanovci - Vozdovac', 'test123', 'Kia', 0, 'gorivo + putarina', 30, 10, 4000, '2019-11-22 19:36:00', 10, 0),
(95, 'Dobanovci - Vozdovac', 'test123', 'PICASO', 0, 'gorivo + putarina', 0, 10, 3500, '2019-11-23 09:15:09', 9, 0),
(96, 'Dobanovci - Vozdovac', 'test123', 'Seat', 0, 'gorivo + putarina', 20, 9, 6000, '2019-11-27 19:39:58', 10, 0),
(97, 'Dobanovci - Vozdovac', 'test123', 'Mazda6', 0, 'gorivo + putarina', 20, 9, 5000, '2019-11-27 20:24:29', 10, 0),
(98, 'Dobanovci - Vozdovac', 'test123', 'Reno Clio', 0, 'gorivo + putarina', 0, 9, 6000, '2019-11-28 10:23:01', 9, 0),
(99, 'Dobanovci - Vozdovac', 'test123', 'ALFA COLIC', 0, 'gorivo + putarina', 10, 10, 3000, '2019-11-29 10:53:20', 10, 0),
(100, 'Dobanovci - Vozdovac', 'test123', 'BMW', 0, 'gorivo + putarina', 15, 10, 3000, '2019-11-30 09:46:03', 10, 0),
(101, 'Dobanovci - Vozdovac', 'test123', 'Mercedes A klasa izvlacenje', 0, 'gorivo + putarina', 0, 9, 11800, '2019-11-30 13:13:13', 9, 0),
(102, 'Dobanovci - Vozdovac', 'test123', 'MEGAN', 0, 'gorivo + putarina', 20, 9, 3000, '2019-11-30 13:50:10', 10, 0),
(103, 'Dobanovci - Vozdovac', 'test123', 'BMW', 0, 'gorivo + putarina', 20, 10, 5900, '2019-12-01 11:52:44', 10, 0),
(104, 'Dobanovci - Vozdovac', 'test123', 'C3', 0, 'gorivo + putarina', 5, 10, 3000, '2019-12-03 09:16:10', 10, 0),
(105, 'Dobanovci - Vozdovac', 'test123', 'Skoda fabia', 0, 'gorivo + putarina', 0, 9, 3000, '2019-12-03 20:09:09', 9, 0),
(106, 'Dobanovci - Vozdovac', 'test123', 'Multipla', 0, 'gorivo + putarina', 10, 10, 4000, '2019-12-04 10:17:22', 10, 0),
(107, 'Dobanovci - Vozdovac', 'test123', 'Fiat panda', 0, 'gorivo + putarina', 0, 9, 3000, '2019-12-04 10:42:34', 9, 0),
(108, 'Dobanovci - Vozdovac', 'test123', 'Fiat panda', 0, 'gorivo + putarina', 0, 9, 3000, '2019-12-04 10:42:34', 9, 0),
(109, 'Dobanovci - Vozdovac', 'test123', 'FOKUS', 0, 'gorivo + putarina', 10, 10, 3000, '2019-12-05 09:55:46', 10, 0),
(110, 'Dobanovci - Vozdovac', 'test123', 'Pezo 206', 0, 'gorivo + putarina', 0, 9, 3000, '2019-12-05 15:28:43', 9, 0),
(111, 'Dobanovci - Vozdovac', 'test123', 'Fiat punto', 0, 'gorivo + putarina', 0, 9, 3000, '2019-12-06 10:52:53', 9, 0),
(112, 'Dobanovci - Vozdovac', 'test123', 'Megan', 0, 'gorivo + putarina', 0, 10, 2000, '2019-12-06 12:27:38', 10, 0),
(113, 'Dobanovci - Vozdovac', 'test123', 'Megan', 0, 'gorivo + putarina', 5, 10, 3000, '2019-12-06 13:27:35', 10, 0),
(114, 'Dobanovci - Vozdovac', 'test123', 'Mercedes E klasa', 0, 'gorivo + putarina', 0, 9, 3000, '2019-12-06 20:59:08', 9, 0),
(115, 'Dobanovci - Vozdovac', 'test123', 'MEGAN', 0, 'gorivo + putarina', 2, 10, 3300, '2019-12-07 11:41:31', 10, 0),
(116, 'Dobanovci - Vozdovac', 'test123', 'C3', 2000, 'gorivo + putarina', 7, 10, 6000, '2019-12-07 15:45:44', 10, 0),
(117, 'Dobanovci - Vozdovac', 'test123', 'Mercedes', 220, 'gorivo + putarina', 0, 10, 11800, '2019-12-08 10:10:25', 10, 0),
(118, 'Dobanovci - Vozdovac', 'test123', 'Tojota yaris', 0, 'gorivo + putarina', 20, 10, 6000, '2019-12-08 15:07:26', 10, 0),
(119, 'Dobanovci - Vozdovac', 'test123', 'Boxer', 0, 'gorivo + putarina', 0, 9, 6000, '2019-12-09 11:59:36', 9, 0),
(120, 'Dobanovci - Vozdovac', 'test123', 'BMW 5', 0, 'gorivo + putarina', 0, 9, 3000, '2019-12-09 14:44:44', 9, 0),
(121, 'Dobanovci - Vozdovac', 'test123', 'Macan', 0, 'gorivo + putarina', 5, 10, 4000, '2019-12-10 12:11:11', 9, 0),
(122, 'Dobanovci - Vozdovac', 'test123', 'Alfa 147', 0, 'gorivo + putarina', 5, 10, 3500, '2019-12-10 15:03:10', 10, 0),
(123, 'Dobanovci - Vozdovac', 'test123', 'Nisan Navara', 0, 'gorivo + putarina', 0, 9, 15000, '2019-12-10 18:11:13', 9, 0),
(124, 'Dobanovci - Vozdovac', 'test123', 'Fiat idea', 0, 'gorivo + putarina', 5, 10, 3000, '2019-12-13 10:48:54', 10, 0),
(125, 'Dobanovci - Vozdovac', 'test123', 'Reno Scenic', 0, 'gorivo + putarina', 0, 10, 3000, '2019-12-14 13:03:12', 9, 0),
(126, 'Dobanovci - Vozdovac', 'test123', 'Pezo 307', 0, 'gorivo + putarina', 0, 10, 4000, '2019-12-14 13:04:14', 9, 0),
(127, 'Dobanovci - Vozdovac', 'test123', 'Pezo 307', 0, 'gorivo + putarina', 0, 10, 4000, '2019-12-14 13:04:14', 9, 1),
(128, 'Dobanovci - Vozdovac', 'test123', 'C4', 0, 'gorivo + putarina', 35, 9, 5000, '2019-12-14 13:29:48', 10, 0),
(129, 'Dobanovci - Vozdovac', 'test123', 'Audi a4', 0, 'gorivo + putarina', 10, 10, 3000, '2019-12-16 12:07:55', 10, 0),
(130, 'Dobanovci - Vozdovac', 'test123', 'Kamion', 0, 'gorivo + putarina', 0, 10, 2000, '2019-12-17 23:45:38', 9, 0),
(131, 'Dobanovci - Vozdovac', 'test123', 'Seat', 580, 'gorivo + putarina', 100, 10, 12000, '2019-12-18 10:32:05', 10, 0),
(132, 'Dobanovci - Vozdovac', 'test123', 'Fiat Ducato', 0, 'gorivo + putarina', 0, 9, 6000, '2019-12-18 17:15:19', 9, 0),
(133, 'Dobanovci - Vozdovac', 'test123', 'Ksara', 2000, 'gorivo + putarina', 5, 9, 8000, '2019-12-19 18:41:57', 10, 0),
(134, 'Dobanovci - Vozdovac', 'test123', 'Ford focus', 0, 'gorivo + putarina', 0, 10, 3000, '2019-12-20 15:21:07', 9, 0),
(135, 'Dobanovci - Vozdovac', 'test123', 'Alfa 156', 0, 'gorivo + putarina', 0, 10, 3000, '2019-12-20 16:52:49', 9, 0),
(136, 'Dobanovci - Vozdovac', 'test123', 'Fiat punto', 0, 'gorivo + putarina', 0, 9, 7000, '2019-12-22 11:41:31', 9, 0),
(137, 'Dobanovci - Vozdovac', 'test123', 'BMW 530', 0, 'gorivo + putarina', 8, 10, 3000, '2019-12-22 11:42:32', 10, 0),
(138, 'Dobanovci - Vozdovac', 'test123', 'Citroen C3', 0, 'gorivo + putarina', 0, 10, 3000, '2019-12-23 09:59:18', 9, 0),
(139, 'Dobanovci - Vozdovac', 'test123', 'Koa', 0, 'gorivo + putarina', 50, 9, 8000, '2019-12-23 15:38:29', 10, 0),
(140, 'Dobanovci - Vozdovac', 'test123', 'Opel Astra', 0, 'gorivo + putarina', 0, 10, 4500, '2019-12-23 15:50:20', 9, 0),
(141, 'Dobanovci - Vozdovac', 'test123', 'Megan', 2000, 'gorivo + putarina', 30, 9, 8000, '2019-12-23 18:52:40', 10, 0),
(142, 'Dobanovci - Vozdovac', 'test123', 'Audi 80 ', 0, 'gorivo + putarina', 0, 10, 3000, '2019-12-24 11:35:51', 9, 0),
(143, 'Dobanovci - Vozdovac', 'test123', 'Fiat stilo', 0, 'gorivo + putarina', 0, 10, 2500, '2019-12-24 14:59:40', 9, 0),
(144, 'Dobanovci - Vozdovac', 'test123', 'Đachia Sandero', 0, 'gorivo + putarina', 0, 10, 3000, '2019-12-25 10:57:43', 9, 0),
(145, 'Dobanovci - Vozdovac', 'test123', 'PUNTO', 0, 'gorivo + putarina', 10, 10, 3000, '2019-12-26 12:03:34', 10, 0),
(146, 'Dobanovci - Vozdovac', 'test123', 'Nisan', 0, 'gorivo + putarina', 5, 10, 3000, '2019-12-26 12:58:48', 10, 0),
(147, 'Dobanovci - Vozdovac', 'test123', 'Volvo', 0, 'gorivo + putarina', 18, 10, 3000, '2019-12-26 15:26:28', 10, 0),
(148, 'Dobanovci - Vozdovac', 'test123', 'Alfa 147', 2000, 'gorivo + putarina', 0, 9, 6000, '2019-12-27 16:22:41', 9, 0),
(149, 'Dobanovci - Vozdovac', 'test123', 'Reno Negan', 2000, 'gorivo + putarina', 0, 9, 6000, '2019-12-27 18:19:53', 9, 0),
(150, 'Dobanovci - Vozdovac', 'test123', 'Vw b6', 0, 'gorivo + putarina', 5, 9, 3000, '2019-12-27 19:05:06', 10, 0),
(151, 'Dobanovci - Vozdovac', 'test123', 'Mercedes E klasa', 0, 'gorivo + putarina', 0, 10, 8250, '2019-12-27 23:39:02', 9, 0),
(152, 'Dobanovci - Vozdovac', 'test123', 'Fiat punto', 0, 'gorivo + putarina', 0, 10, 3000, '2019-12-28 13:43:50', 9, 0),
(153, 'Dobanovci - Vozdovac', 'test123', 'Mercedes GLK', 2000, 'gorivo + putarina', 0, 9, 6000, '2019-12-28 17:08:12', 9, 0),
(154, 'Dobanovci - Vozdovac', 'test123', 'BMW 5', 0, 'gorivo + putarina', 0, 9, 5900, '2019-12-29 10:48:03', 9, 0),
(155, 'Dobanovci - Vozdovac', 'test123', 'Opel Astra G', 0, 'gorivo + putarina', 0, 10, 3000, '2019-12-30 13:04:49', 9, 0),
(156, 'Dobanovci - Vozdovac', 'test123', 'Ford fokus', 0, 'gorivo + putarina', 15, 10, 3000, '2019-12-30 19:36:57', 10, 0),
(157, 'Dobanovci - Vozdovac', 'test123', 'CORSA', 0, 'gorivo + putarina', 30, 9, 8000, '2019-12-31 09:39:15', 10, 0),
(158, 'Dobanovci - Vozdovac', 'test123', 'BMW 530', 0, 'gorivo + putarina', 5, 9, 10290, '2019-12-31 12:30:31', 10, 0),
(159, 'Dobanovci - Vozdovac', 'test123', 'Vw Polo', 0, 'gorivo + putarina', 0, 9, 7000, '2020-01-01 11:42:00', 9, 0),
(160, 'Dobanovci - Vozdovac', 'test123', 'Audi Q5', 0, 'gorivo + putarina', 0, 10, 8000, '2020-01-02 12:23:42', 9, 0),
(161, 'Dobanovci - Vozdovac', 'test123', 'Audi Q5', 0, 'gorivo + putarina', 0, 10, 8000, '2020-01-02 12:23:42', 9, 0),
(162, 'Dobanovci - Vozdovac', 'test123', 'Ford focus', 0, 'gorivo + putarina', 0, 10, 3000, '2020-01-03 09:15:13', 9, 0),
(163, 'Dobanovci - Vozdovac', 'test123', 'Vw Polo', 2000, 'gorivo + putarina', 0, 9, 6000, '2020-01-03 15:19:37', 9, 0),
(164, 'Dobanovci - Vozdovac', 'test123', 'F.DUKATO', 0, 'gorivo + putarina', 10, 9, 6000, '2020-01-03 21:54:55', 10, 0),
(165, 'Dobanovci - Vozdovac', 'test123', 'Lanca y', 2000, 'gorivo + putarina', 5, 9, 6000, '2020-01-04 22:42:14', 10, 0),
(166, 'Dobanovci - Vozdovac', 'test123', 'Vw golf 5', 2000, 'gorivo + putarina', 5, 9, 8000, '2020-01-05 02:46:04', 10, 0),
(167, 'Dobanovci - Vozdovac', 'test123', 'Vw golf 7', 2000, 'gorivo + putarina', 3, 9, 6000, '2020-01-05 04:25:13', 10, 0),
(168, 'Dobanovci - Vozdovac', 'test123', 'Pezo 308', 0, 'gorivo + putarina', 2, 9, 4000, '2020-01-05 16:11:05', 10, 0),
(169, 'Dobanovci - Vozdovac', 'test123', 'Fabia', 2000, 'gorivo + putarina', 10, 10, 6000, '2020-01-05 19:34:33', 10, 0),
(170, 'Dobanovci - Vozdovac', 'test123', 'Ford focus', 0, 'gorivo + putarina', 0, 10, 3000, '2020-01-06 10:17:58', 9, 0),
(171, 'Dobanovci - Vozdovac', 'test123', 'Hyundai Getz', 0, 'gorivo + putarina', 0, 10, 3000, '2020-01-06 12:22:14', 9, 0),
(172, 'Dobanovci - Vozdovac', 'test123', 'Ford focus', 0, 'gorivo + putarina', 0, 10, 3000, '2020-01-08 12:00:59', 9, 0),
(173, 'Dobanovci - Vozdovac', 'test123', 'Reno Espace', 0, 'gorivo + putarina', 0, 10, 3000, '2020-01-08 13:29:39', 9, 0),
(174, 'Dobanovci - Vozdovac', 'test123', 'Fiat punto', 0, 'gorivo + putarina', 0, 10, 4000, '2020-01-08 15:17:09', 9, 0),
(175, 'Dobanovci - Vozdovac', 'test123', 'VW Passat b6', 2000, 'gorivo + putarina', 0, 9, 6000, '2020-01-08 20:42:42', 9, 0),
(176, 'Dobanovci - Vozdovac', 'test123', 'Fiat punto', 0, 'gorivo + putarina', 0, 10, 3000, '2020-01-09 10:28:03', 9, 0),
(177, 'Dobanovci - Vozdovac', 'test123', 'SPRINTER', 0, 'gorivo + putarina', 15, 9, 10000, '2020-01-09 13:12:49', 10, 0),
(178, 'Dobanovci - Vozdovac', 'test123', 'BMW 5', 0, 'gorivo + putarina', 0, 9, 6000, '2020-01-10 10:21:32', 9, 0),
(179, 'Dobanovci - Vozdovac', 'test123', 'Dachia Logan', 2000, 'gorivo + putarina', 0, 9, 6000, '2020-01-13 17:48:17', 9, 0),
(180, 'Dobanovci - Vozdovac', 'test123', 'Pezo206', 0, 'gorivo + putarina', 2, 10, 3000, '2020-01-13 19:59:10', 10, 0),
(181, 'Dobanovci - Vozdovac', 'test123', 'Mb a', 0, 'gorivo + putarina', 10, 9, 3000, '2020-01-14 08:55:35', 10, 0),
(182, 'Dobanovci - Vozdovac', 'test123', 'Chevroler', 0, 'gorivo + putarina', 4, 10, 3000, '2020-01-14 09:41:42', 10, 0),
(183, 'Dobanovci - Vozdovac', 'test123', 'Clio', 0, 'gorivo + putarina', 15, 10, 3000, '2020-01-15 09:46:41', 10, 0),
(184, 'Dobanovci - Vozdovac', 'test123', 'Ford fokus', 0, 'gorivo + putarina', 14, 10, 3000, '2020-01-15 10:58:16', 10, 0),
(185, 'Dobanovci - Vozdovac', 'test123', 'Mercedes B klasa', 0, 'gorivo + putarina', 0, 10, 3000, '2020-01-16 13:53:08', 9, 0),
(186, 'Dobanovci - Vozdovac', 'test123', 'Lada', 0, 'gorivo + putarina', 0, 10, 3000, '2020-01-16 15:29:58', 9, 0),
(187, 'Dobanovci - Vozdovac', 'test123', 'Nisan mv200', 0, 'gorivo + putarina', 0, 9, 7000, '2020-01-17 10:18:00', 9, 0),
(188, 'Dobanovci - Vozdovac', 'test123', 'Mitsuvišni Pajero', 0, 'gorivo + putarina', 0, 9, 5000, '2020-01-17 11:53:57', 9, 0),
(189, 'Dobanovci - Vozdovac', 'test123', 'Vw kruz', 0, 'gorivo + putarina', 0, 10, 6000, '2020-01-17 13:33:55', 9, 0),
(190, 'Dobanovci - Vozdovac', 'test123', 'Polo', 0, 'gorivo + putarina', 5, 10, 3000, '2020-01-17 20:54:42', 10, 0),
(191, 'Dobanovci - Vozdovac', 'test123', 'Golf 5', 0, 'gorivo + putarina', 20, 10, 3400, '2020-01-18 14:50:25', 10, 0),
(192, 'Dobanovci - Vozdovac', 'test123', 'Smart', 0, 'gorivo + putarina', 0, 10, 3000, '2020-01-21 13:38:52', 9, 0),
(193, 'Dobanovci - Vozdovac', 'test123', 'Neon', 0, 'gorivo + putarina', 0, 10, 4000, '2020-01-21 17:35:49', 9, 0),
(194, 'Dobanovci - Vozdovac', 'test123', 'Seat Ibiza', 0, 'gorivo + putarina', 0, 10, 2000, '2020-01-24 12:38:31', 9, 0),
(195, 'Dobanovci - Vozdovac', 'test123', 'ALFA COLIC', 0, 'gorivo + putarina', 30, 10, 3500, '2020-01-26 17:56:47', 10, 0),
(196, 'Dobanovci - Vozdovac', 'test123', 'Toyota Corola', 0, 'gorivo + putarina', 0, 10, 10000, '2020-01-27 15:13:24', 9, 0),
(197, 'Dobanovci - Vozdovac', 'test123', 'Skoda oktavia', 0, 'gorivo + putarina', 5, 10, 3000, '2020-01-28 19:25:51', 10, 0),
(198, 'Dobanovci - Vozdovac', 'test123', 'MEGAN', 2000, 'gorivo + putarina', 10, 9, 6000, '2020-01-29 13:51:33', 10, 0),
(199, 'Dobanovci - Vozdovac', 'test123', 'Peugeot 107', 2000, 'gorivo + putarina', 8, 9, 5700, '2020-01-30 09:14:00', 10, 0),
(200, 'Dobanovci - Vozdovac', 'test123', 'Zastava  euro zeta ', 0, 'gorivo + putarina', 0, 9, 10000, '2020-01-31 12:18:48', 9, 0),
(201, 'Dobanovci - Vozdovac', 'test123', 'RENO 21', 2000, 'gorivo + putarina', 15, 10, 8000, '2020-02-01 12:54:15', 10, 0),
(202, 'Dobanovci - Vozdovac', 'test123', 'Audi a4', 3000, 'gorivo + putarina', 80, 10, 15000, '2020-02-01 18:52:43', 10, 0),
(203, 'Dobanovci - Vozdovac', 'test123', 'Opel Vivaro', 0, 'gorivo + putarina', 0, 9, 10000, '2020-02-01 19:02:44', 9, 1),
(204, 'Dobanovci - Vozdovac', 'test123', 'Opel Vivaro', 2000, 'gorivo + putarina', 0, 9, 10000, '2020-02-01 19:10:22', 9, 0),
(205, 'Dobanovci - Vozdovac', 'test123', 'Astra', 0, 'gorivo + putarina', 10, 10, 3000, '2020-02-02 13:59:45', 10, 0),
(206, 'Dobanovci - Vozdovac', 'test123', 'Volvo 90', 0, 'gorivo + putarina', 0, 9, 7000, '2020-02-02 17:45:21', 9, 0),
(207, 'Dobanovci - Vozdovac', 'test123', 'Ford', 0, 'gorivo + putarina', 15, 10, 3500, '2020-02-03 10:53:59', 10, 0),
(208, 'Dobanovci - Vozdovac', 'test123', 'Reno Laguna', 0, 'gorivo + putarina', 0, 9, 8000, '2020-02-03 11:24:04', 9, 0),
(209, 'Dobanovci - Vozdovac', 'test123', 'Volvo s40', 0, 'gorivo + putarina', 20, 10, 3000, '2020-02-03 12:23:42', 10, 0),
(210, 'Dobanovci - Vozdovac', 'test123', 'Peugeot 307', 0, 'gorivo + putarina', 0, 9, 2500, '2020-02-03 15:48:38', 9, 0),
(211, 'Dobanovci - Vozdovac', 'test123', 'Reno Scenic ', 2000, 'gorivo + putarina', 0, 10, 11800, '2020-02-04 14:59:01', 9, 0),
(212, 'Dobanovci - Vozdovac', 'test123', 'MB 616', 0, 'gorivo + putarina', 4, 9, 6000, '2020-02-06 08:18:39', 10, 0),
(213, 'Dobanovci - Vozdovac', 'test123', 'Pezo 307', 0, 'gorivo + putarina', 3, 10, 2500, '2020-02-06 15:13:44', 10, 0),
(214, 'Dobanovci - Vozdovac', 'test123', 'Škoda Fabia', 0, 'gorivo + putarina', 0, 10, 3000, '2020-02-08 14:01:10', 9, 0),
(215, 'Dobanovci - Vozdovac', 'test123', 'Peugeot 308', 0, 'gorivo + putarina', 10, 10, 2000, '2020-02-08 20:42:44', 10, 0),
(216, 'Dobanovci - Vozdovac', 'test123', 'Suzuki svift', 0, 'gorivo + putarina', 20, 9, 7000, '2020-02-10 12:51:28', 10, 0),
(217, 'Dobanovci - Vozdovac', 'test123', 'MB E CLASS', 0, 'gorivo + putarina', 15, 10, 3500, '2020-02-10 14:34:48', 10, 0),
(218, 'Dobanovci - Vozdovac', 'test123', 'Hyundai Santa fe', 0, 'gorivo + putarina', 0, 9, 6000, '2020-02-11 11:55:02', 9, 0),
(219, 'Dobanovci - Vozdovac', 'test123', 'Fiat doblo i Reno Scenic', 0, 'gorivo + putarina', 0, 10, 7000, '2020-02-13 12:31:44', 9, 0),
(220, 'Dobanovci - Vozdovac', 'test123', 'Ksara', 0, 'gorivo + putarina', 70, 11, 7400, '2020-02-13 21:29:43', 10, 0),
(221, 'Dobanovci - Vozdovac', 'test123', 'Fiat grande punto', 0, 'gorivo + putarina', 0, 10, 5000, '2020-02-14 00:11:17', 9, 0),
(222, 'Dobanovci - Vozdovac', 'test123', 'Passat', 0, 'gorivo + putarina', 0, 10, 3000, '2020-02-14 09:34:19', 9, 0),
(223, 'Dobanovci - Vozdovac', 'test123', 'Reno Trafic', 0, 'gorivo + putarina', 0, 9, 4000, '2020-02-14 16:35:20', 9, 0),
(224, 'Dobanovci - Vozdovac', 'test123', 'Reno Trafic', 0, 'gorivo + putarina', 0, 9, 4000, '2020-02-15 10:00:59', 9, 0),
(225, 'Dobanovci - Vozdovac', 'test123', 'Cluo', 0, 'gorivo + putarina', 10, 10, 4000, '2020-02-15 14:27:45', 10, 0),
(226, 'Dobanovci - Vozdovac', 'test123', 'Golf 7', 2000, 'gorivo + putarina', 5, 9, 7800, '2020-02-15 15:27:52', 10, 0),
(227, 'Dobanovci - Vozdovac', 'test123', 'Skoda fabia', 480, 'gorivo + putarina', 65, 10, 9450, '2020-02-17 20:42:41', 10, 0),
(228, 'Dobanovci - Vozdovac', 'test123', 'Fiat fiorino', 0, 'gorivo + putarina', 10, 10, 3000, '2020-02-19 20:21:35', 10, 0),
(229, 'Dobanovci - Vozdovac', 'test123', 'VW Polo', 0, 'gorivo + putarina', 0, 10, 2500, '2020-02-21 12:01:25', 9, 0),
(230, 'Dobanovci - Vozdovac', 'test123', 'Kia', 0, 'gorivo + putarina', 0, 10, 3000, '2020-02-21 19:33:42', 10, 0),
(231, 'Dobanovci - Vozdovac', 'test123', 'Opel Astra C', 0, 'gorivo + putarina', 0, 9, 5900, '2020-02-23 17:41:04', 9, 0),
(232, 'Dobanovci - Vozdovac', 'test123', 'Clio', 0, 'gorivo + putarina', 10, 10, 3000, '2020-02-23 19:33:18', 10, 0),
(233, 'Dobanovci - Vozdovac', 'test123', 'Honda', 0, 'gorivo + putarina', 3, 10, 3000, '2020-02-24 21:41:08', 10, 0),
(234, 'Dobanovci - Vozdovac', 'test123', 'VW BORA', 0, 'gorivo + putarina', 15, 10, 3000, '2020-02-25 11:26:14', 10, 0),
(235, 'Dobanovci - Vozdovac', 'test123', 'Peugeot 206', 0, 'gorivo + putarina', 0, 10, 3000, '2020-02-25 20:18:07', 9, 0),
(236, 'Dobanovci - Vozdovac', 'test123', 'ASKONA', 0, 'gorivo + putarina', 3, 10, 3500, '2020-02-25 21:06:42', 10, 0),
(237, 'Dobanovci - Vozdovac', 'test123', 'C4', 2000, 'gorivo + putarina', 17, 9, 8000, '2020-02-25 23:24:10', 10, 0),
(238, 'Dobanovci - Vozdovac', 'test123', 'Skoda fabia', 0, 'gorivo + putarina', 10, 10, 3500, '2020-02-26 18:02:18', 10, 0),
(239, 'Dobanovci - Vozdovac', 'test123', 'POLO', 0, 'gorivo + putarina', 15, 10, 3000, '2020-02-26 22:07:29', 10, 0),
(240, 'Dobanovci - Vozdovac', 'test123', 'Peugeot 307', 0, 'gorivo + putarina', 0, 10, 3000, '2020-02-27 11:22:22', 9, 0),
(241, 'Dobanovci - Vozdovac', 'test123', 'Fiat Croma', 0, 'gorivo + putarina', 0, 10, 4000, '2020-02-27 15:50:42', 9, 0),
(242, 'Dobanovci - Vozdovac', 'test123', 'C3', 0, 'gorivo + putarina', 0, 10, 3000, '2020-02-28 10:00:47', 9, 0),
(243, 'Dobanovci - Vozdovac', 'test123', 'Alfa 147', 0, 'gorivo + putarina', 0, 10, 3000, '2020-02-28 16:09:15', 9, 0),
(244, 'Dobanovci - Vozdovac', 'test123', 'Fiqt doblo', 0, 'gorivo + putarina', 0, 10, 3000, '2020-02-28 17:54:53', 9, 0),
(245, 'Dobanovci - Vozdovac', 'test123', 'Cls', 0, 'gorivo + putarina', 25, 10, 7000, '2020-03-02 19:52:46', 10, 0),
(246, 'Dobanovci - Vozdovac', 'test123', 'Laguna', 0, 'gorivo + putarina', 0, 10, 3500, '2020-03-05 15:21:59', 10, 0),
(247, 'Dobanovci - Vozdovac', 'test123', 'MAZDA 2', 0, 'gorivo + putarina', 0, 10, 3700, '2020-03-05 18:05:01', 10, 0),
(248, 'Dobanovci - Vozdovac', 'test123', 'CLIO', 0, 'gorivo + putarina', 8, 10, 2500, '2020-03-06 14:47:29', 10, 0),
(249, 'Dobanovci - Vozdovac', 'test123', 'Honda', 0, 'gorivo + putarina', 2, 10, 3000, '2020-03-06 17:29:57', 10, 0),
(250, 'Dobanovci - Vozdovac', 'test123', 'Reno megan', 0, 'gorivo + putarina', 0, 9, 6000, '2020-03-08 13:56:35', 9, 0),
(251, 'Dobanovci - Vozdovac', 'test123', 'A4', 0, 'gorivo + putarina', 0, 10, 3500, '2020-03-11 18:52:56', 9, 0),
(252, 'Dobanovci - Vozdovac', 'test123', 'Skuter', 0, 'gorivo + putarina', 0, 10, 3000, '2020-03-12 17:33:21', 9, 0),
(253, 'Dobanovci - Vozdovac', 'test123', 'Reno Master', 0, 'gorivo + putarina', 0, 9, 5900, '2020-03-14 14:37:49', 9, 0),
(254, 'Dobanovci - Vozdovac', 'test123', 'CROMA', 0, 'gorivo + putarina', 4, 9, 2500, '2020-03-14 14:58:57', 10, 0),
(255, 'Dobanovci - Vozdovac', 'test123', 'Peuogeot 207', 0, 'gorivo + putarina', 0, 10, 3000, '2020-03-15 15:46:43', 9, 0),
(256, 'Dobanovci - Vozdovac', 'test123', 'LANOS', 0, 'gorivo + putarina', 5, 9, 4000, '2020-03-16 11:44:58', 10, 0),
(257, 'Dobanovci - Vozdovac', 'test123', 'KSARA', 0, 'gorivo + putarina', 20, 10, 3500, '2020-03-16 20:28:08', 10, 0),
(258, 'Dobanovci - Vozdovac', 'test123', 'Peugeot 307', 0, 'gorivo + putarina', 0, 10, 3000, '2020-03-17 18:54:57', 9, 0),
(259, 'Dobanovci - Vozdovac', 'test123', 'A3', 2000, 'gorivo + putarina', 5, 9, 6000, '2020-03-22 15:51:53', 10, 0),
(260, 'Dobanovci - Vozdovac', 'test123', 'KANGU', 2000, 'gorivo + putarina', 80, 9, 18000, '2020-03-24 19:08:54', 10, 0),
(261, 'Dobanovci - Vozdovac', 'test123', 'PETO 307', 2000, 'gorivo + putarina', 5, 9, 12000, '2020-03-29 09:19:26', 10, 0),
(262, 'Dobanovci - Vozdovac', 'test123', 'MB C180', 0, 'gorivo + putarina', 10, 10, 2000, '2020-04-02 14:42:31', 10, 0),
(263, 'Dobanovci - Vozdovac', 'test123', 'TACUMA', 0, 'gorivo + putarina', 15, 10, 2000, '2020-04-02 15:19:43', 10, 0),
(264, 'Dobanovci - Vozdovac', 'test123', 'MB GLK', 0, 'gorivo + putarina', 5, 10, 3000, '2020-04-02 16:00:13', 10, 0),
(265, 'Dobanovci - Vozdovac', 'test123', 'Skutet', 0, 'gorivo + putarina', 0, 10, 3000, '2020-04-07 14:44:58', 10, 0),
(266, 'Dobanovci - Vozdovac', 'test123', 'Multipla', 320, 'gorivo + putarina', 75, 10, 9600, '2020-04-13 09:49:45', 10, 0),
(267, 'Dobanovci - Vozdovac', 'test123', 'Fiat Doblo', 0, 'gorivo + putarina', 0, 10, 3000, '2020-04-14 11:29:00', 9, 0),
(268, 'Dobanovci - Vozdovac', 'test123', 'Senic', 0, 'gorivo + putarina', 15, 10, 3000, '2020-04-21 11:40:08', 10, 0),
(269, 'Dobanovci - Vozdovac', 'test123', 'ASTRA', 0, 'gorivo + putarina', 15, 10, 3000, '2020-04-22 09:29:11', 10, 0),
(270, 'Dobanovci - Vozdovac', 'test123', 'Ford focus', 0, 'gorivo + putarina', 0, 10, 4500, '2020-04-23 14:10:07', 9, 0),
(271, 'Dobanovci - Vozdovac', 'test123', 'Daewo ', 720, 'gorivo + putarina', 0, 10, 10620, '2020-04-23 16:08:16', 9, 0),
(272, 'Dobanovci - Vozdovac', 'test123', 'Golf', 0, 'gorivo + putarina', 0, 10, 3000, '2020-04-24 10:37:12', 9, 0),
(273, 'Dobanovci - Vozdovac', 'test123', 'Skoda fabia', 0, 'gorivo + putarina', 15, 10, 3000, '2020-04-27 15:37:08', 10, 0),
(274, 'Dobanovci - Vozdovac', 'test123', 'Seat', 0, 'gorivo + putarina', 10, 10, 3000, '2020-04-27 17:03:06', 10, 0),
(275, 'Dobanovci - Vozdovac', 'test123', '508', 0, 'gorivo + putarina', 0, 10, 3500, '2020-04-30 09:30:37', 10, 0),
(276, 'Dobanovci - Vozdovac', 'test123', 'Ford focus', 0, 'gorivo + putarina', 0, 10, 3000, '2020-04-30 14:07:25', 9, 0),
(277, 'Dobanovci - Vozdovac', 'test123', 'DASTER', 0, 'gorivo + putarina', 15, 10, 3500, '2020-05-05 08:44:27', 10, 0),
(278, 'Dobanovci - Vozdovac', 'test123', 'Fiat punto', 0, 'gorivo + putarina', 0, 10, 3000, '2020-05-05 11:35:20', 9, 0),
(279, 'Dobanovci - Vozdovac', 'test123', 'Mazda 3', 0, 'gorivo + putarina', 0, 9, 3000, '2020-05-05 14:44:48', 9, 0),
(280, 'Dobanovci - Vozdovac', 'test123', 'Nisan Micra', 0, 'gorivo + putarina', 0, 10, 3000, '2020-05-08 15:44:49', 9, 0),
(281, 'Dobanovci - Vozdovac', 'test123', 'Mazda 5', 0, 'gorivo + putarina', 20, 10, 3500, '2020-05-10 15:17:10', 10, 0),
(282, 'Dobanovci - Vozdovac', 'test123', 'Multipla', 0, 'gorivo + putarina', 25, 10, 3500, '2020-05-11 08:54:33', 10, 0),
(283, 'Dobanovci - Vozdovac', 'test123', 'Alfa 159', 0, 'gorivo + putarina', 0, 10, 2500, '2020-05-11 11:21:31', 9, 0),
(284, 'Dobanovci - Vozdovac', 'test123', 'Tipo', 0, 'gorivo + putarina', 0, 10, 2500, '2020-05-11 12:07:58', 10, 0),
(285, 'Dobanovci - Vozdovac', 'test123', 'Audi a4', 0, 'gorivo + putarina', 1, 10, 2000, '2020-05-14 14:12:53', 10, 0),
(286, 'Dobanovci - Vozdovac', 'test123', 'FABIJA', 700, 'gorivo + putarina', 90, 10, 12000, '2020-05-14 22:13:43', 10, 0),
(287, 'Dobanovci - Vozdovac', 'test123', 'SUZUKI ', 2000, 'gorivo + putarina', 3, 9, 6000, '2020-05-15 13:14:07', 10, 0),
(288, 'Dobanovci - Vozdovac', 'test123', 'ASTRA', 0, 'gorivo + putarina', 10, 10, 3000, '2020-05-15 16:21:43', 10, 0),
(289, 'Dobanovci - Vozdovac', 'test123', 'Cipa', 0, 'gorivo + putarina', 0, 10, 1500, '2020-05-16 13:59:57', 10, 0),
(290, 'Dobanovci - Vozdovac', 'test123', 'Rover Discovery', 0, 'gorivo + putarina', 0, 9, 4000, '2020-05-17 12:37:46', 9, 0),
(291, 'Dobanovci - Vozdovac', 'test123', 'Astra kabrio', 0, 'gorivo + putarina', 0, 10, 3000, '2020-05-17 15:09:56', 9, 0),
(292, 'Dobanovci - Vozdovac', 'test123', 'Micubisi', 0, 'gorivo + putarina', 20, 10, 3000, '2020-05-17 23:36:08', 10, 1),
(293, 'Dobanovci - Vozdovac', 'test123', 'Micubisi', 0, 'gorivo + putarina', 20, 10, 3900, '2020-05-18 00:25:30', 10, 0),
(294, 'Dobanovci - Vozdovac', 'test123', 'Peugeot 307', 0, 'gorivo + putarina', 0, 10, 5000, '2020-05-18 08:59:33', 9, 0),
(295, 'Dobanovci - Vozdovac', 'test123', 'Vw Polo', 0, 'gorivo + putarina', 0, 10, 2500, '2020-05-18 09:55:13', 9, 0),
(296, 'Dobanovci - Vozdovac', 'test123', 'Pezo 307', 0, 'gorivo + putarina', 8, 10, 3000, '2020-05-18 18:24:57', 10, 0),
(297, 'Dobanovci - Vozdovac', 'test123', 'Mercedes ML', 0, 'gorivo + putarina', 0, 10, 4000, '2020-05-19 10:45:34', 9, 0),
(298, 'Dobanovci - Vozdovac', 'test123', 'Tempra', 0, 'gorivo + putarina', 20, 10, 3500, '2020-05-20 11:24:13', 10, 0),
(299, 'Dobanovci - Vozdovac', 'test123', 'Pezo 306', 0, 'gorivo + putarina', 15, 10, 3000, '2020-05-20 15:25:43', 10, 0),
(300, 'Dobanovci - Vozdovac', 'test123', 'Peugeot 307', 0, 'gorivo + putarina', 6, 10, 3000, '2020-05-21 19:51:37', 10, 0),
(301, 'Dobanovci - Vozdovac', 'test123', 'Pezo 206', 0, 'gorivo + putarina', 5, 10, 3500, '2020-05-23 23:26:38', 10, 0),
(302, 'Dobanovci - Vozdovac', 'test123', 'Golf 5', 3000, 'gorivo + putarina', 0, 9, 15000, '2020-05-26 16:40:54', 9, 0),
(303, 'Dobanovci - Vozdovac', 'test123', 'Mercedes C klasa', 0, 'gorivo + putarina', 0, 10, 2500, '2020-05-27 11:27:33', 9, 0),
(304, 'Dobanovci - Vozdovac', 'test123', 'Mercedes A klasa ', 0, 'gorivo + putarina', 0, 10, 2500, '2020-05-27 13:23:45', 9, 0),
(305, 'Dobanovci - Vozdovac', 'test123', 'Alfa 147', 0, 'gorivo + putarina', 0, 10, 2500, '2020-05-27 14:34:08', 9, 0),
(306, 'Dobanovci - Vozdovac', 'test123', 'Skoda fabia', 0, 'gorivo + putarina', 20, 10, 3500, '2020-05-28 10:48:54', 10, 0),
(307, 'Dobanovci - Vozdovac', 'test123', 'Golf 6', 0, 'gorivo + putarina', 0, 9, 3000, '2020-06-02 14:09:44', 9, 0),
(308, 'Dobanovci - Vozdovac', 'test123', 'Opel', 460, 'gorivo + putarina', 55, 10, 7200, '2020-06-02 14:44:47', 10, 0),
(309, 'Dobanovci - Vozdovac', 'test123', 'Honda Acord', 0, 'gorivo + putarina', 0, 9, 3000, '2020-06-02 16:19:38', 9, 0),
(310, 'Dobanovci - Vozdovac', 'test123', 'Laguna', 0, 'gorivo + putarina', 10, 10, 3000, '2020-06-02 16:46:46', 10, 0),
(311, 'Dobanovci - Vozdovac', 'test123', 'Skoda fabia', 0, 'gorivo + putarina', 0, 10, 4500, '2020-06-03 14:20:35', 9, 0),
(312, 'Dobanovci - Vozdovac', 'test123', 'FOKUS', 0, 'gorivo + putarina', 10, 10, 3500, '2020-06-03 17:08:37', 10, 0),
(313, 'Dobanovci - Vozdovac', 'test123', 'POLO', 0, 'gorivo + putarina', 3, 9, 3000, '2020-06-04 13:56:59', 10, 0),
(314, 'Dobanovci - Vozdovac', 'test123', 'Multipla', 0, 'gorivo + putarina', 10, 9, 3500, '2020-06-04 15:01:16', 10, 0),
(315, 'Dobanovci - Vozdovac', 'test123', 'Tucson', 0, 'gorivo + putarina', 10, 9, 3000, '2020-06-04 16:13:32', 10, 0),
(316, 'Dobanovci - Vozdovac', 'test123', 'Punto', 2000, 'gorivo + putarina', 2, 9, 7000, '2020-06-06 03:10:38', 10, 0),
(317, 'Dobanovci - Vozdovac', 'test123', 'E-200', 0, 'gorivo + putarina', 40, 10, 10000, '2020-06-06 18:46:11', 10, 0),
(318, 'Dobanovci - Vozdovac', 'test123', 'Golf 6', 0, 'gorivo + putarina', 0, 9, 5900, '2020-06-07 12:23:58', 9, 0),
(319, 'Dobanovci - Vozdovac', 'test123', 'Dukato', 0, 'gorivo + putarina', 2, 9, 3000, '2020-06-07 13:45:07', 10, 0),
(320, 'Dobanovci - Vozdovac', 'test123', 'Skoda fabia', 0, 'gorivo + putarina', 5, 10, 2930, '2020-06-07 17:36:05', 10, 0),
(321, 'Dobanovci - Vozdovac', 'test123', 'Citroen Picasoo', 0, 'gorivo + putarina', 0, 10, 4000, '2020-06-08 10:20:32', 9, 0),
(322, 'Dobanovci - Vozdovac', 'test123', 'BMW 520', 0, 'gorivo + putarina', 10, 10, 3000, '2020-06-08 12:39:00', 10, 0),
(323, 'Dobanovci - Vozdovac', 'test123', 'Fiat st', 0, 'gorivo + putarina', 0, 10, 3000, '2020-06-09 10:27:41', 9, 0),
(324, 'Dobanovci - Vozdovac', 'test123', 'Tojota', 0, 'gorivo + putarina', 20, 9, 3000, '2020-06-09 11:52:42', 10, 0),
(325, 'Dobanovci - Vozdovac', 'test123', 'G4', 0, 'gorivo + putarina', 6, 10, 3000, '2020-06-09 17:03:09', 10, 0),
(326, 'Dobanovci - Vozdovac', 'test123', 'MB V220', 0, 'gorivo + putarina', 30, 9, 8000, '2020-06-09 21:00:12', 10, 0),
(327, 'Dobanovci - Vozdovac', 'test123', 'CORSA', 0, 'gorivo + putarina', 15, 10, 3000, '2020-06-10 15:51:28', 10, 0),
(328, 'Dobanovci - Vozdovac', 'test123', 'Mini Cooper', 0, 'gorivo + putarina', 0, 10, 3000, '2020-06-11 10:00:05', 9, 0),
(329, 'Dobanovci - Vozdovac', 'test123', 'Vw Cady', 0, 'gorivo + putarina', 0, 10, 3500, '2020-06-11 10:52:19', 9, 0),
(330, 'Dobanovci - Vozdovac', 'test123', 'Golf 3', 0, 'gorivo + putarina', 0, 10, 6000, '2020-06-11 12:08:49', 9, 0),
(331, 'Dobanovci - Vozdovac', 'test123', 'MEGAN', 2000, 'gorivo + putarina', 15, 10, 6000, '2020-06-12 13:11:37', 10, 0),
(332, 'Dobanovci - Vozdovac', 'test123', 'MB  A', 0, 'gorivo + putarina', 15, 10, 3500, '2020-06-14 11:27:55', 10, 0),
(333, 'Dobanovci - Vozdovac', 'test123', 'Laguna', 0, 'gorivo + putarina', 10, 10, 3000, '2020-06-14 12:53:06', 10, 0),
(334, 'Dobanovci - Vozdovac', 'test123', 'PUNTO', 0, 'gorivo + putarina', 0, 10, 3000, '2020-06-14 14:39:34', 10, 0),
(335, 'Dobanovci - Vozdovac', 'test123', 'Meriva', 0, 'gorivo + putarina', 30, 10, 4000, '2020-06-14 19:38:13', 10, 0),
(336, 'Dobanovci - Vozdovac', 'test123', 'BMW 3', 0, 'gorivo + putarina', 0, 10, 3000, '2020-06-15 13:09:01', 9, 0),
(337, 'Dobanovci - Vozdovac', 'test123', 'A4', 0, 'gorivo + putarina', 20, 9, 4000, '2020-06-15 16:24:46', 10, 0),
(338, 'Dobanovci - Vozdovac', 'test123', 'Reno Espace', 0, 'gorivo + putarina', 0, 10, 5000, '2020-06-15 18:16:24', 9, 0),
(339, 'Dobanovci - Vozdovac', 'test123', 'Lexus', 0, 'gorivo + putarina', 0, 10, 3000, '2020-06-16 13:18:03', 9, 0),
(340, 'Dobanovci - Vozdovac', 'test123', 'Logan', 0, 'gorivo + putarina', 3, 10, 3000, '2020-06-17 12:26:08', 10, 0),
(341, 'Dobanovci - Vozdovac', 'test123', 'Hyundai Sonata', 0, 'gorivo + putarina', 0, 9, 6000, '2020-06-17 14:34:13', 9, 0),
(342, 'Dobanovci - Vozdovac', 'test123', 'Peugeot 406', 0, 'gorivo + putarina', 0, 10, 5000, '2020-06-18 19:14:59', 9, 0),
(343, 'Dobanovci - Vozdovac', 'test123', 'Opel Vivaro', 0, 'gorivo + putarina', 0, 9, 7000, '2020-06-19 13:21:01', 9, 0),
(344, 'Dobanovci - Vozdovac', 'test123', 'Mini Cooper', 0, 'gorivo + putarina', 0, 10, 4000, '2020-06-19 16:10:36', 9, 0),
(345, 'Dobanovci - Vozdovac', 'test123', 'Ficko', 0, 'gorivo + putarina', 0, 10, 2000, '2020-06-19 20:50:50', 9, 0),
(346, 'Dobanovci - Vozdovac', 'test123', 'Citroen C4', 0, 'gorivo + putarina', 0, 10, 3500, '2020-06-19 21:50:39', 9, 0),
(347, 'Dobanovci - Vozdovac', 'test123', 'Mercedes A klasa ', 0, 'gorivo + putarina', 0, 10, 3500, '2020-06-20 13:00:26', 9, 0),
(348, 'Dobanovci - Vozdovac', 'test123', 'VW ARTEON', 2000, 'gorivo + putarina', 7, 9, 10000, '2020-06-21 04:44:13', 10, 0),
(349, 'Dobanovci - Vozdovac', 'test123', 'Opel Vectra', 0, 'gorivo + putarina', 0, 10, 4000, '2020-06-22 19:59:41', 9, 0),
(350, 'Dobanovci - Vozdovac', 'test123', 'Bmw 520', 2000, 'gorivo + putarina', 40, 9, 12000, '2020-06-24 13:26:41', 10, 0),
(351, 'Dobanovci - Vozdovac', 'test123', 'Citroen C5', 0, 'gorivo + putarina', 0, 10, 13000, '2020-06-25 12:08:28', 9, 0),
(352, 'Dobanovci - Vozdovac', 'test123', 'Honda acord', 0, 'gorivo + putarina', 30, 10, 3500, '2020-06-26 13:12:51', 10, 0),
(353, 'Dobanovci - Vozdovac', 'test123', 'Sevrolet ', 0, 'gorivo + putarina', 0, 10, 6000, '2020-06-26 17:10:31', 9, 0),
(354, 'Dobanovci - Vozdovac', 'test123', 'Opel Corsa', 0, 'gorivo + putarina', 0, 10, 5000, '2020-06-27 17:19:13', 9, 0),
(355, 'Dobanovci - Vozdovac', 'test123', 'Mazda 6', 0, 'gorivo + putarina', 10, 9, 3000, '2020-06-27 21:51:53', 10, 0),
(356, 'Dobanovci - Vozdovac', 'test123', 'Tigra', 0, 'gorivo + putarina', 4, 10, 3000, '2020-06-27 23:05:15', 10, 0),
(357, 'Dobanovci - Vozdovac', 'test123', 'Skudo', 0, 'gorivo + putarina', 50, 9, 5000, '2020-06-28 00:25:30', 10, 0),
(358, 'Dobanovci - Vozdovac', 'test123', 'RAV 4', 2000, 'gorivo + putarina', 3, 9, 8000, '2020-06-28 02:10:14', 10, 0),
(359, 'Dobanovci - Vozdovac', 'test123', 'Citroen Picasoo', 0, 'gorivo + putarina', 0, 10, 2500, '2020-06-29 11:23:00', 9, 0),
(360, 'Dobanovci - Vozdovac', 'test123', 'Stilo', 0, 'gorivo + putarina', 30, 10, 4000, '2020-06-29 22:03:40', 10, 0),
(361, 'Dobanovci - Vozdovac', 'test123', 'Golf 5', 0, 'gorivo + putarina', 0, 10, 4000, '2020-06-30 11:49:32', 9, 0),
(362, 'Dobanovci - Vozdovac', 'test123', '128', 0, 'gorivo + putarina', 40, 10, 6000, '2020-06-30 17:17:19', 10, 0),
(363, 'Dobanovci - Vozdovac', 'test123', 'Fiqt Ducato', 0, 'gorivo + putarina', 0, 9, 8000, '2020-07-01 14:04:12', 9, 0),
(364, 'Dobanovci - Vozdovac', 'test123', 'Bokser', 0, 'gorivo + putarina', 0, 9, 10000, '2020-07-02 12:26:21', 10, 0),
(365, 'Dobanovci - Vozdovac', 'test123', 'ASTRA', 2000, 'gorivo + putarina', 5, 10, 6000, '2020-07-02 19:45:24', 10, 0),
(366, 'Dobanovci - Vozdovac', 'test123', 'Reno Twingo', 0, 'gorivo + putarina', 0, 10, 3000, '2020-07-02 20:28:56', 9, 0),
(367, 'Dobanovci - Vozdovac', 'test123', 'Opel Meriva', 0, 'gorivo + putarina', 0, 9, 6000, '2020-07-03 17:05:15', 9, 0),
(368, 'Dobanovci - Vozdovac', 'test123', 'LADAA', 2000, 'gorivo + putarina', 45, 10, 12000, '2020-07-04 20:47:47', 10, 1),
(369, 'Dobanovci - Vozdovac', 'test123', 'LADAA', 3000, 'gorivo + putarina', 50, 10, 12500, '2020-07-04 22:02:59', 10, 0),
(370, 'Dobanovci - Vozdovac', 'test123', 'Ford focus', 0, 'gorivo + putarina', 0, 10, 3000, '2020-07-06 11:22:11', 9, 0),
(371, 'Dobanovci - Vozdovac', 'test123', 'Ford fiesta', 0, 'gorivo + putarina', 0, 10, 3000, '2020-07-06 13:18:22', 9, 0),
(372, 'Dobanovci - Vozdovac', 'test123', 'Fiat stilo', 0, 'gorivo + putarina', 0, 10, 3000, '2020-07-08 12:56:17', 9, 0),
(373, 'Dobanovci - Vozdovac', 'test123', 'VOLVO V40', 0, 'gorivo + putarina', 20, 10, 3500, '2020-07-09 16:27:14', 10, 0),
(374, 'Dobanovci - Vozdovac', 'test123', 'Hunday i 20', 0, 'gorivo + putarina', 0, 10, 3000, '2020-07-10 19:02:27', 9, 0),
(375, 'Dobanovci - Vozdovac', 'test123', 'PAASSAT', 0, 'gorivo + putarina', 30, 10, 2800, '2020-07-10 20:28:30', 10, 0),
(376, 'Dobanovci - Vozdovac', 'test123', 'Vektra', 0, 'gorivo + putarina', 8, 10, 3000, '2020-07-11 11:18:12', 10, 0),
(377, 'Dobanovci - Vozdovac', 'test123', 'Audi A4', 0, 'gorivo + putarina', 0, 9, 14160, '2020-07-13 04:24:26', 9, 0),
(378, 'Dobanovci - Vozdovac', 'test123', 'MATRIX', 0, 'gorivo + putarina', 10, 10, 3000, '2020-07-13 10:12:00', 10, 0),
(379, 'Dobanovci - Vozdovac', 'test123', 'X6', 0, 'gorivo + putarina', 18, 10, 4000, '2020-07-13 13:50:27', 10, 0),
(380, 'Dobanovci - Vozdovac', 'test123', 'Yamaha t max', 0, 'gorivo + putarina', 0, 10, 3000, '2020-07-15 18:11:02', 9, 0),
(381, 'Dobanovci - Vozdovac', 'test123', 'INSIGNIJA', 0, 'gorivo + putarina', 3, 10, 3500, '2020-07-17 13:51:12', 10, 0),
(382, 'Dobanovci - Vozdovac', 'test123', 'Prelic', 0, 'gorivo + putarina', 0, 10, 5500, '2020-07-17 16:17:44', 9, 0),
(383, 'Dobanovci - Vozdovac', 'test123', 'A3', 0, 'gorivo + putarina', 15, 10, 2000, '2020-07-18 13:24:50', 10, 0),
(384, 'Dobanovci - Vozdovac', 'test123', 'Audi A6', 0, 'gorivo + putarina', 0, 10, 3000, '2020-07-18 16:50:57', 9, 0),
(385, 'Dobanovci - Vozdovac', 'test123', 'MAZDA3', 2000, 'gorivo + putarina', 2, 9, 6000, '2020-07-19 16:34:02', 10, 0),
(386, 'Dobanovci - Vozdovac', 'test123', 'Fiat stilo', 0, 'gorivo + putarina', 0, 9, 3000, '2020-07-21 13:24:17', 9, 0),
(387, 'Dobanovci - Vozdovac', 'test123', 'STILO', 0, 'gorivo + putarina', 20, 10, 4000, '2020-07-21 16:13:04', 10, 0),
(388, 'Dobanovci - Vozdovac', 'test123', 'Fiat stilo', 0, 'gorivo + putarina', 0, 9, 3000, '2020-07-22 09:12:53', 9, 0),
(389, 'Dobanovci - Vozdovac', 'test123', 'Vw Crafter', 0, 'gorivo + putarina', 0, 9, 10000, '2020-07-22 14:02:43', 9, 0),
(390, 'Dobanovci - Vozdovac', 'test123', 'Vektra', 0, 'gorivo + putarina', 3, 10, 3000, '2020-07-24 19:32:53', 10, 0),
(391, 'Dobanovci - Vozdovac', 'test123', 'Opel Astra', 2000, 'gorivo + putarina', 0, 9, 10000, '2020-07-26 18:29:08', 9, 0),
(392, 'Dobanovci - Vozdovac', 'test123', 'Kaskai', 0, 'gorivo + putarina', 15, 10, 4500, '2020-07-27 11:36:27', 9, 0),
(393, 'Dobanovci - Vozdovac', 'test123', 'Fiat Brava', 0, 'gorivo + putarina', 0, 10, 3000, '2020-07-27 12:34:43', 9, 0),
(394, 'Dobanovci - Vozdovac', 'test123', 'CLIO', 0, 'gorivo + putarina', 5, 10, 3000, '2020-07-28 07:56:30', 10, 0),
(395, 'Dobanovci - Vozdovac', 'test123', 'Songjang', 0, 'gorivo + putarina', 15, 9, 5000, '2020-07-28 13:09:00', 10, 0),
(396, 'Dobanovci - Vozdovac', 'test123', 'Pezo 206', 0, 'gorivo + putarina', 8, 10, 3000, '2020-07-29 17:41:30', 10, 0),
(397, 'Dobanovci - Vozdovac', 'test123', 'SCUDO', 0, 'gorivo + putarina', 6, 9, 3000, '2020-07-30 09:46:16', 10, 0),
(398, 'Dobanovci - Vozdovac', 'test123', 'Ford focus', 0, 'gorivo + putarina', 0, 9, 6000, '2020-07-30 11:09:01', 9, 0),
(399, 'Dobanovci - Vozdovac', 'test123', 'Mercedes A klasa ', 0, 'gorivo + putarina', 0, 10, 3000, '2020-07-31 14:26:55', 9, 0),
(400, 'Dobanovci - Vozdovac', 'test123', 'Peugeot 307', 2000, 'gorivo + putarina', 0, 9, 6000, '2020-07-31 20:27:13', 10, 0),
(401, 'Dobanovci - Vozdovac', 'test123', 'INSIGNIA', 0, 'gorivo + putarina', 5, 9, 6000, '2020-08-03 11:15:37', 10, 0),
(402, 'Dobanovci - Vozdovac', 'test123', 'Mwgan', 0, 'gorivo + putarina', 5, 10, 3000, '2020-08-03 14:52:56', 10, 0),
(403, 'Dobanovci - Vozdovac', 'test123', 'Pezo308', 0, 'gorivo + putarina', 20, 9, 6000, '2020-08-03 16:17:01', 10, 0),
(404, 'Dobanovci - Vozdovac', 'test123', 'Ford Kuga', 0, 'gorivo + putarina', 0, 10, 5000, '2020-08-03 17:34:33', 9, 0),
(405, 'Dobanovci - Vozdovac', 'test123', 'VW Tiguan', 0, 'gorivo + putarina', 0, 11, 24000, '2020-08-04 00:43:00', 9, 0),
(406, 'Dobanovci - Vozdovac', 'test123', 'BORA', 0, 'gorivo + putarina', 15, 10, 3000, '2020-08-04 12:56:36', 10, 0),
(407, 'Dobanovci - Vozdovac', 'test123', 'Arteon', 0, 'gorivo + putarina', 20, 9, 6000, '2020-08-06 14:19:54', 10, 0),
(408, 'Dobanovci - Vozdovac', 'test123', 'Fiat stilo', 0, 'gorivo + putarina', 0, 10, 3000, '2020-08-07 20:26:51', 9, 0),
(409, 'Dobanovci - Vozdovac', 'test123', 'Motor', 0, 'gorivo + putarina', 0, 11, 11800, '2020-08-09 21:29:44', 9, 0),
(410, 'Dobanovci - Vozdovac', 'test123', 'Alfa 147', 0, 'gorivo + putarina', 0, 10, 3000, '2020-08-10 10:09:44', 9, 0),
(411, 'Dobanovci - Vozdovac', 'test123', 'Polo', 0, 'gorivo + putarina', 0, 9, 3000, '2020-08-10 13:59:30', 9, 0),
(412, 'Dobanovci - Vozdovac', 'test123', 'AMAROK', 0, 'gorivo + putarina', 50, 9, 6000, '2020-08-10 20:51:07', 10, 0),
(413, 'Dobanovci - Vozdovac', 'test123', '208', 0, 'gorivo + putarina', 15, 10, 3000, '2020-08-12 09:27:53', 10, 0),
(414, 'Dobanovci - Vozdovac', 'test123', 'FORD', 0, 'gorivo + putarina', 20, 10, 4000, '2020-08-12 10:37:44', 10, 0),
(415, 'Dobanovci - Vozdovac', 'test123', 'HONDA', 2000, 'gorivo + putarina', 25, 9, 11800, '2020-08-12 21:18:56', 10, 0),
(416, 'Dobanovci - Vozdovac', 'test123', 'Citroen Ksara picaso', 0, 'gorivo + putarina', 0, 10, 3000, '2020-08-13 16:41:16', 9, 0),
(417, 'Dobanovci - Vozdovac', 'test123', 'PUNTO', 0, 'gorivo + putarina', 10, 10, 3500, '2020-08-17 11:34:24', 10, 0),
(418, 'Dobanovci - Vozdovac', 'test123', 'Ford fiesta', 0, 'gorivo + putarina', 0, 9, 6000, '2020-08-18 12:08:09', 9, 0),
(419, 'Dobanovci - Vozdovac', 'test123', 'Reno Talisman', 0, 'gorivo + putarina', 0, 10, 6000, '2020-08-19 09:55:10', 9, 0),
(420, 'Dobanovci - Vozdovac', 'test123', 'Fiat siceto', 0, 'gorivo + putarina', 0, 10, 3000, '2020-08-19 17:19:02', 9, 0),
(421, 'Dobanovci - Vozdovac', 'test123', 'HONDA', 0, 'gorivo + putarina', 20, 10, 3000, '2020-08-19 20:26:35', 10, 0),
(422, 'Dobanovci - Vozdovac', 'test123', 'JUMPER', 0, 'gorivo + putarina', 120, 9, 23600, '2020-08-20 11:55:33', 10, 0),
(423, 'Dobanovci - Vozdovac', 'test123', 'MEGAN', 2000, 'gorivo + putarina', 20, 9, 7000, '2020-08-21 20:08:10', 10, 0),
(424, 'Dobanovci - Vozdovac', 'test123', 'Skoda fabia', 0, 'gorivo + putarina', 0, 10, 3000, '2020-08-24 15:54:39', 9, 0),
(425, 'Dobanovci - Vozdovac', 'test123', 'VW Passat', 0, 'gorivo + putarina', 0, 9, 8000, '2020-08-25 11:53:23', 9, 0),
(426, 'Dobanovci - Vozdovac', 'test123', 'PASAT', 0, 'gorivo + putarina', 25, 10, 3060, '2020-08-25 14:03:27', 10, 0),
(427, 'Dobanovci - Vozdovac', 'test123', 'Vw Polo', 0, 'gorivo + putarina', 0, 10, 3000, '2020-08-27 10:43:41', 9, 0),
(428, 'Dobanovci - Vozdovac', 'test123', 'Fiat punto', 0, 'gorivo + putarina', 0, 10, 3000, '2020-08-28 13:19:07', 9, 0),
(429, 'Dobanovci - Vozdovac', 'test123', 'Daewo ', 0, 'gorivo + putarina', 0, 10, 17700, '2020-08-28 17:58:16', 9, 0),
(430, 'Dobanovci - Vozdovac', 'test123', 'Opel Corsa', 0, 'gorivo + putarina', 0, 10, 3200, '2020-08-30 15:56:36', 9, 0),
(431, 'Dobanovci - Vozdovac', 'test123', 'TEMPRA', 0, 'gorivo + putarina', 5, 10, 2500, '2020-08-31 12:28:06', 10, 0),
(432, 'Dobanovci - Vozdovac', 'test123', 'Reno megan', 0, 'gorivo + putarina', 0, 10, 3000, '2020-09-01 09:25:41', 9, 0),
(433, 'Dobanovci - Vozdovac', 'test123', 'Laguna', 0, 'gorivo + putarina', 2, 9, 3000, '2020-09-02 21:03:19', 10, 0),
(434, 'Dobanovci - Vozdovac', 'test123', 'COMBO', 0, 'gorivo + putarina', 35, 10, 6000, '2020-09-03 10:11:51', 10, 0),
(435, 'Dobanovci - Vozdovac', 'test123', 'Peugeot Boxer', 0, 'gorivo + putarina', 0, 9, 6000, '2020-09-04 15:00:46', 9, 0),
(436, 'Dobanovci - Vozdovac', 'test123', 'ZAFIRA', 0, 'gorivo + putarina', 15, 9, 6250, '2020-09-04 16:17:08', 9, 0),
(437, 'Dobanovci - Vozdovac', 'test123', 'GOLF 4', 0, 'gorivo + putarina', 3, 10, 3000, '2020-09-04 17:12:56', 10, 0),
(438, 'Dobanovci - Vozdovac', 'test123', 'Toyota avensis', 0, 'gorivo + putarina', 0, 10, 3500, '2020-09-05 11:01:12', 9, 0),
(439, 'Dobanovci - Vozdovac', 'test123', 'Fiat stilo', 0, 'gorivo + putarina', 0, 10, 3000, '2020-09-05 13:59:08', 9, 0),
(440, 'Dobanovci - Vozdovac', 'test123', 'SUZUKI ', 0, 'gorivo + putarina', 160, 11, 15800, '2020-09-07 22:34:00', 10, 0),
(441, 'Dobanovci - Vozdovac', 'test123', 'CLIO', 0, 'gorivo + putarina', 5, 10, 3000, '2020-09-08 12:46:00', 10, 0),
(442, 'Dobanovci - Vozdovac', 'test123', 'FOKUS', 0, 'gorivo + putarina', 3, 10, 2500, '2020-09-09 11:18:23', 10, 0),
(443, 'Dobanovci - Vozdovac', 'test123', 'Fiat Marea', 0, 'gorivo + putarina', 0, 11, 3500, '2020-09-09 15:41:38', 9, 0),
(444, 'Dobanovci - Vozdovac', 'test123', '500 fica', 2000, 'gorivo + putarina', 10, 9, 6000, '2020-09-10 22:19:03', 10, 0),
(445, 'Dobanovci - Vozdovac', 'test123', 'Vw up', 2000, 'gorivo + putarina', 10, 9, 6000, '2020-09-11 15:26:29', 10, 0),
(446, 'Dobanovci - Vozdovac', 'test123', 'Peugeot Expert', 0, 'gorivo + putarina', 0, 9, 6000, '2020-09-11 18:05:15', 9, 0),
(447, 'Dobanovci - Vozdovac', 'test123', 'YARIS', 2000, 'gorivo + putarina', 10, 9, 6000, '2020-09-12 15:17:29', 10, 0),
(448, 'Dobanovci - Vozdovac', 'test123', 'GOLF 6', 0, 'gorivo + putarina', 10, 9, 3000, '2020-09-13 19:29:39', 10, 0),
(449, 'Dobanovci - Vozdovac', 'test123', '508', 0, 'gorivo + putarina', 15, 10, 3000, '2020-09-14 09:40:05', 10, 0),
(450, 'Dobanovci - Vozdovac', 'test123', 'SPRINTER', 0, 'gorivo + putarina', 15, 9, 6000, '2020-09-14 11:04:36', 10, 0),
(451, 'Dobanovci - Vozdovac', 'test123', 'PUNTO', 0, 'gorivo + putarina', 5, 10, 3000, '2020-09-14 16:06:29', 10, 1),
(452, 'Dobanovci - Vozdovac', 'test123', 'Sprinter', 0, 'gorivo + putarina', 0, 9, 6000, '2020-09-14 16:27:33', 9, 0),
(453, 'Dobanovci - Vozdovac', 'test123', 'Op', 0, 'gorivo + putarina', 0, 9, 3000, '2020-09-16 14:41:56', 9, 0),
(454, 'Dobanovci - Vozdovac', 'test123', 'PUNTO', 0, 'gorivo + putarina', 5, 10, 2500, '2020-09-16 15:01:56', 10, 0),
(455, 'Dobanovci - Vozdovac', 'test123', 'Fiat punto', 0, 'gorivo + putarina', 0, 9, 3000, '2020-09-16 15:16:23', 9, 0);
INSERT INTO `nalog` (`idnalog`, `relacija`, `registracija`, `vozilo`, `trosak`, `opisTroska`, `km`, `slepVozilo`, `prihod`, `datum`, `kreirao`, `del`) VALUES
(456, 'Dobanovci - Vozdovac', 'test123', 'Reno Clio', 0, 'gorivo + putarina', 0, 9, 3000, '2020-09-17 10:08:44', 9, 0),
(457, 'Dobanovci - Vozdovac', 'test123', 'Skoda fabia', 2000, 'gorivo + putarina', 30, 9, 10000, '2020-09-18 00:47:28', 10, 0),
(458, 'Dobanovci - Vozdovac', 'test123', 'Reno Laguna', 0, 'gorivo + putarina', 0, 10, 3900, '2020-09-19 20:28:07', 9, 0),
(459, 'Dobanovci - Vozdovac', 'test123', 'C8', 0, 'gorivo + putarina', 3, 10, 3000, '2020-09-19 23:57:45', 10, 0),
(460, 'Dobanovci - Vozdovac', 'test123', 'Fiat Ducato', 2000, 'gorivo + putarina', 0, 9, 12000, '2020-09-20 11:40:20', 9, 0),
(461, 'Dobanovci - Vozdovac', 'test123', 'audi', 1500, 'gorivo + putarina', 25, 10, 3500, '2021-02-17 22:58:40', 9, 0),
(462, 'Dobanovci - Vozdovac', 'test123', 'audi', 1500, 'gorivo + putarina', 25, 10, 3500, '2021-02-17 23:02:02', 9, 0),
(463, 'Dobanovci - Vozdovac', 'test123', 'audi  tt', 1500, 'gorivo + putarina', 25, 11, 3500, '2021-02-17 23:05:45', 9, 0),
(464, 'Dobanovci - Vozdovac', 'test123', 'audi  tt', 1500, 'gorivo + putarina', 25, 11, 3500, '2021-02-17 23:05:45', 9, 0),
(465, 'Dobanovci - Vozdovac', 'test123', 'audi', 1500, 'gorivo + putarina', 25, 10, 3500, '2021-02-17 23:06:15', 9, 0),
(466, 'Dobanovci - Vozdovac', 'test123', 'audi', 1500, 'gorivo + putarina', 25, 9, 3500, '2021-02-17 23:08:11', 9, 0),
(467, 'Dobanovci - Vozdovac', 'test123', 'audi', 1500, 'gorivo + putarina', 25, 9, 3500, '2021-02-17 23:08:11', 9, 0),
(468, 'Dobanovci - Vozdovac', 'test123', 'audi', 1500, 'gorivo + putarina', 25, 11, 3500, '2021-02-17 23:10:18', 9, 0),
(469, 'Dobanovci - Vozdovac', 'test123', 'audi', 1500, 'gorivo + putarina', 25, 11, 3500, '2021-02-17 23:10:18', 9, 0),
(470, 'Dobanovci - Vozdovac', 'test123', 'audi', 1500, 'gorivo + putarina', 25, 9, 3500, '2021-02-17 23:11:15', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `out_income`
--

CREATE TABLE `out_income` (
  `idoutinc` int(11) NOT NULL,
  `opis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iznos` decimal(11,2) DEFAULT NULL,
  `datum` datetime DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  `tip` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'KES'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `out_income`
--

INSERT INTO `out_income` (`idoutinc`, `opis`, `iznos`, `datum`, `userid`, `tip`) VALUES
(2, 'Uplata', '13000.00', '2019-10-09 00:00:00', 10, 'KES'),
(9, 'Uplata', '20803.00', '2019-10-26 13:43:11', 9, 'RF'),
(10, 'Uplata', '20000.00', '2019-10-31 13:07:47', 9, 'RF'),
(11, 'Uplata', '12000.00', '2019-11-12 11:49:32', 10, 'KES'),
(12, 'Uplata', '6000.00', '2019-11-16 16:42:08', 10, 'KES'),
(13, 'Uplata', '1700.00', '2019-11-30 09:57:47', 10, 'RF'),
(14, 'Uplata', '3165.00', '2019-11-30 10:01:04', 10, 'RF'),
(15, 'Uplata', '1000.00', '2019-12-01 15:41:11', 10, 'KES'),
(16, 'Uplata', '4000.00', '2019-12-04 23:35:53', 10, 'KES'),
(17, 'Uplata', '3000.00', '2019-12-10 13:35:56', 10, 'RF'),
(18, 'Uplata', '29500.00', '2019-12-31 20:07:03', 10, 'KES'),
(19, 'Uplata', '24000.00', '2020-01-16 10:24:13', 9, 'KES'),
(20, 'Uplata', '23600.00', '2020-02-01 09:38:22', 10, 'KES'),
(21, 'Uplata', '11800.00', '2020-02-02 21:07:05', 10, 'KES'),
(22, 'Uplata', '3000.00', '2020-02-05 09:24:58', 9, 'RF'),
(23, 'Pera slep', '5700.00', '2020-02-05 09:26:56', 9, 'RF'),
(24, 'Pera slep', '5100.00', '2020-02-19 11:16:45', 9, 'RF'),
(25, 'Pera slep', '4200.00', '2020-03-09 12:16:49', 10, 'KES'),
(26, 'Pera slep', '53.43', '2020-03-09 15:11:58', 9, 'RF'),
(27, 'Pera slep', '53427.00', '2020-03-09 15:13:54', 9, 'RF'),
(28, 'Pera slep', '2400.00', '2020-03-11 20:07:54', 9, 'KES'),
(29, 'Pera slep', '2782.66', '2020-03-27 09:47:02', 10, 'RF'),
(30, 'Pera slep', '11800.00', '2020-05-17 12:58:46', 9, 'KES'),
(31, 'Pera slep', '1180.00', '2020-05-17 21:49:20', 10, 'KES'),
(32, 'Pera slep', '3000.00', '2020-06-04 08:47:11', 10, 'RF'),
(33, 'Pera slep', '600.00', '2020-06-10 15:55:10', 10, 'KES'),
(34, 'Pera slep', '37134.00', '2020-06-11 12:32:01', 9, 'KES'),
(35, 'Pera slep', '1822.00', '2020-06-11 12:33:05', 9, 'KES'),
(36, 'Pera slep', '35400.00', '2020-06-24 18:52:28', 10, 'RF'),
(37, 'Pera slep', '0.00', '2020-06-26 11:51:22', 9, 'RF'),
(38, 'Pera slep', '3858.00', '2020-06-26 11:51:52', 9, 'RF'),
(39, 'Pera slep', '800.00', '2020-06-29 20:37:23', 10, 'KES'),
(40, 'Pera slep', '720.00', '2020-07-03 19:31:23', 9, 'KES'),
(41, 'Pera slep', '30300.00', '2020-07-13 11:38:51', 9, 'RF'),
(42, 'Pera slep', '30300.00', '2020-07-13 15:52:27', 9, 'KES'),
(43, 'Pera slep', '2350.00', '2020-07-24 16:49:32', 10, 'KES'),
(44, 'Pera slep', '0.00', '2020-08-17 14:15:40', 9, 'KES'),
(45, 'Pera slep', '18000.00', '2020-08-23 17:51:13', 9, 'KES'),
(46, 'Pera slep', '0.00', '2020-08-23 17:52:04', 10, 'KES'),
(47, 'Pera slep', '5900.00', '2020-08-25 13:47:57', 9, 'KES'),
(48, 'Pera slep', '365800.00', '2020-08-27 21:22:16', 10, 'KES'),
(49, 'Pera slep', '300.00', '2020-09-03 10:17:04', 10, 'KES'),
(50, 'Pera slep', '18220.00', '2020-09-11 13:24:53', 9, 'KES');

-- --------------------------------------------------------

--
-- Table structure for table `rashod`
--

CREATE TABLE `rashod` (
  `idrashod` int(11) NOT NULL,
  `opis` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iznos` decimal(11,2) DEFAULT NULL,
  `walletid` int(11) DEFAULT NULL,
  `datum` datetime DEFAULT NULL,
  `tip` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'KES'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rashod`
--

INSERT INTO `rashod` (`idrashod`, `opis`, `iznos`, `walletid`, `datum`, `tip`) VALUES
(12, 'Gorivo Kamion', '3000.00', 1, '2019-10-10 00:00:00', 'KES'),
(13, 'Gorivo Kamion', '340.00', 1, '2019-10-10 00:00:00', 'KES'),
(14, 'Gorivo Kamion', '120.00', 1, '2019-10-10 00:00:00', 'KES'),
(15, 'Gorivo Kamion', '350.00', 1, '2019-10-11 00:00:00', 'KES'),
(16, 'Gorivo Kamion', '110.00', 1, '2019-10-11 00:00:00', 'KES'),
(17, 'Gorivo Kamion', '7300.00', 2, '2019-10-13 00:00:00', 'KES'),
(18, 'Gorivo Kamion', '500.00', 1, '2019-10-13 00:00:00', 'KES'),
(19, 'Gorivo Kamion', '500.00', 2, '2019-10-13 00:00:00', 'KES'),
(20, 'Gorivo Kamion', '240.00', 2, '2019-10-14 00:00:00', 'KES'),
(21, 'Gorivo Kamion', '380.00', 1, '2019-10-15 00:00:00', 'KES'),
(22, 'Gorivo Kamion', '450.00', 1, '2019-10-15 00:00:00', 'KES'),
(23, 'Gorivo Kamion', '5000.00', 2, '2019-10-14 00:00:00', 'KES'),
(24, 'Gorivo Kamion', '220.00', 1, '2019-10-16 00:00:00', 'KES'),
(25, 'Gorivo Kamion', '800.00', 1, '2019-10-16 00:00:00', 'KES'),
(26, 'Gorivo Kamion', '450.00', 1, '2019-10-17 00:00:00', 'KES'),
(27, 'Gorivo Kamion', '2000.00', 1, '2019-10-17 00:00:00', 'KES'),
(28, 'Gorivo Kamion', '150.00', 2, '2019-10-17 00:00:00', 'KES'),
(29, 'Gorivo Kamion', '120.00', 2, '2019-10-18 00:00:00', 'KES'),
(30, 'Gorivo Kamion', '350.00', 2, '2019-10-10 00:00:00', 'KES'),
(31, 'Gorivo Kamion', '400.00', 2, '2019-10-10 00:00:00', 'KES'),
(32, 'Gorivo Kamion', '400.00', 2, '2019-10-10 00:00:00', 'KES'),
(33, 'Gorivo Kamion', '800.00', 2, '2019-10-10 00:00:00', 'KES'),
(34, 'Gorivo Kamion', '220.00', 1, '2019-10-10 00:00:00', 'KES'),
(35, 'Gorivo Kamion', '440.00', 1, '2019-10-21 13:34:13', 'KES'),
(36, 'Gorivo Kamion', '400.00', 1, '2019-10-21 16:17:06', 'KES'),
(37, 'Gorivo Kamion', '400.00', 1, '2019-10-22 13:11:49', 'KES'),
(38, 'Gorivo Kamion', '2650.00', 1, '2019-10-22 15:21:16', 'KES'),
(39, 'Gorivo Kamion', '140.00', 1, '2019-10-22 17:21:07', 'KES'),
(40, 'Gorivo Kamion', '700.00', 2, '2019-10-22 19:41:37', 'KES'),
(41, 'Gorivo Kamion', '1200.00', 1, '2019-10-23 10:13:37', 'KES'),
(42, 'Gorivo Kamion', '150.00', 2, '2019-10-23 14:23:01', 'KES'),
(43, 'Gorivo Kamion', '360.00', 1, '2019-10-23 14:23:29', 'KES'),
(44, 'Gorivo Kamion', '415.00', 1, '2019-10-23 15:44:08', 'KES'),
(45, 'Gorivo Kamion', '140.00', 2, '2019-10-23 15:45:36', 'KES'),
(46, 'Gorivo Kamion', '400.00', 1, '2019-10-24 15:37:37', 'KES'),
(47, 'Gorivo Kamion', '220.00', 1, '2019-10-24 19:00:26', 'KES'),
(48, 'Gorivo Kamion', '1700.00', 2, '2019-10-24 21:06:12', 'KES'),
(49, 'Gorivo Kamion', '600.00', 1, '2019-10-25 11:46:23', 'KES'),
(50, 'Gorivo Kamion', '400.00', 1, '2019-10-25 15:06:20', 'KES'),
(51, 'Gorivo Kamion', '750.00', 2, '2019-10-25 16:54:25', 'KES'),
(59, 'Gorivo Kamion', '750.00', 2, '2019-10-26 16:31:06', 'KES'),
(60, 'Gorivo Kamion', '840.00', 2, '2019-10-26 17:56:29', 'KES'),
(61, 'Gorivo Kamion', '340.00', 1, '2019-10-27 11:21:49', 'KES'),
(62, 'Gorivo Kamion', '2237.00', 2, '2019-10-27 15:03:32', 'RF'),
(63, 'Gorivo Kamion', '2000.00', 2, '2019-10-27 15:04:39', 'RF'),
(70, 'Gorivo Kamion', '230.00', 2, '2019-10-28 11:18:45', 'KES'),
(71, 'Gorivo Kamion', '220.00', 1, '2019-10-29 15:59:28', 'KES'),
(72, 'Gorivo Kamion', '2000.00', 1, '2019-10-29 16:08:27', 'KES'),
(73, 'Gorivo Kamion', '1922.00', 2, '2019-10-31 08:04:41', 'RF'),
(74, 'Gorivo Kamion', '4850.00', 2, '2019-10-31 08:45:04', 'RF'),
(75, 'Gorivo Kamion', '120.00', 2, '2019-10-31 15:27:34', 'KES'),
(76, 'Gorivo Kamion', '250.00', 1, '2019-10-31 15:28:30', 'KES'),
(77, 'Gorivo Kamion', '500.00', 2, '2019-10-31 18:36:19', 'KES'),
(78, 'Gorivo Kamion', '1906.00', 2, '2019-11-01 16:25:10', 'RF'),
(79, 'Gorivo Kamion', '580.00', 1, '2019-11-02 12:59:11', 'KES'),
(80, 'Gorivo Kamion', '1906.00', 2, '2019-11-02 19:16:53', 'RF'),
(81, 'Gorivo Kamion', '500.00', 2, '2019-11-03 07:15:30', 'KES'),
(82, 'Gorivo Kamion', '400.00', 2, '2019-11-03 12:08:36', 'KES'),
(83, 'Gorivo Kamion', '4111.00', 1, '2019-11-04 17:11:10', 'RF'),
(84, 'Gorivo Kamion', '3600.00', 2, '2019-11-05 12:06:48', 'KES'),
(85, 'Gorivo Kamion', '440.00', 1, '2019-11-05 21:08:03', 'KES'),
(86, 'Gorivo Kamion', '500.00', 2, '2019-11-06 11:19:54', 'KES'),
(87, 'Gorivo Kamion', '581.00', 2, '2019-11-06 14:57:11', 'RF'),
(88, 'Gorivo Kamion', '550.00', 1, '2019-11-06 16:54:04', 'KES'),
(89, 'Gorivo Kamion', '5000.00', 2, '2019-11-06 21:26:25', 'RF'),
(90, 'Gorivo Kamion', '13671.00', 2, '2019-11-06 23:06:58', 'RF'),
(91, 'Gorivo Kamion', '1070.00', 1, '2019-11-07 00:13:49', 'RF'),
(92, 'Gorivo Kamion', '1070.00', 2, '2019-11-07 00:16:28', 'RF'),
(93, 'Gorivo Kamion', '640.00', 1, '2019-11-07 19:14:56', 'KES'),
(94, 'Gorivo Kamion', '600.00', 1, '2019-11-07 19:15:21', 'KES'),
(95, 'Gorivo Kamion', '450.00', 1, '2019-11-07 21:29:49', 'KES'),
(96, 'Gorivo Kamion', '2035.00', 1, '2019-11-07 21:31:47', 'RF'),
(97, 'Gorivo Kamion', '4700.00', 2, '2019-11-08 00:49:40', 'KES'),
(98, 'Gorivo Kamion', '1280.00', 2, '2019-11-08 00:50:27', 'KES'),
(99, 'Gorivo Kamion', '640.00', 1, '2019-11-08 12:44:43', 'KES'),
(100, 'Gorivo Automobil sa prikolicom', '4900.00', 2, '2019-11-08 13:37:58', 'KES'),
(101, 'Gorivo Automobil sa prikolicom', '1100.00', 2, '2019-11-09 14:13:29', 'KES'),
(102, 'Gorivo Automobil sa prikolicom', '120.00', 2, '2019-11-09 18:35:51', 'KES'),
(103, 'Gorivo Automobil sa prikolicom', '4670.00', 2, '2019-11-10 06:03:45', 'KES'),
(104, 'Gorivo Automobil sa prikolicom', '550.00', 1, '2019-11-10 12:45:34', 'KES'),
(105, 'Gorivo Automobil sa prikolicom', '600.00', 2, '2019-11-11 23:08:33', 'KES'),
(106, 'Gorivo Automobil sa prikolicom', '350.00', 2, '2019-11-12 16:12:42', 'KES'),
(107, 'Gorivo Automobil sa prikolicom', '15000.00', 2, '2019-11-12 16:13:05', 'KES'),
(108, 'Gorivo Automobil sa prikolicom', '1920.00', 2, '2019-11-13 08:01:03', 'KES'),
(109, 'Gorivo Automobil sa prikolicom', '3000.00', 1, '2019-11-13 09:00:17', 'KES'),
(110, 'Gorivo Automobil sa prikolicom', '500.00', 1, '2019-11-13 16:13:09', 'KES'),
(111, 'Gorivo Automobil sa prikolicom', '3700.00', 1, '2019-11-13 16:22:00', 'KES'),
(112, 'Gorivo Automobil sa prikolicom', '350.00', 2, '2019-11-14 07:07:17', 'KES'),
(113, 'Gorivo Automobil sa prikolicom', '26000.00', 1, '2019-11-14 16:17:28', 'KES'),
(114, 'Gorivo Automobil sa prikolicom', '250.00', 2, '2019-11-15 08:00:39', 'KES'),
(115, 'Gorivo Automobil sa prikolicom', '600.00', 2, '2019-11-15 10:44:42', 'KES'),
(116, 'Gorivo Automobil sa prikolicom', '5650.00', 2, '2019-11-15 12:56:27', 'KES'),
(117, 'Gorivo Automobil sa prikolicom', '500.00', 2, '2019-11-15 19:14:50', 'KES'),
(118, 'Gorivo Automobil sa prikolicom', '400.00', 2, '2019-11-16 16:43:11', 'KES'),
(119, 'Gorivo Automobil sa prikolicom', '200.00', 2, '2019-11-16 16:43:27', 'KES'),
(120, 'Gorivo Automobil sa prikolicom', '150.00', 2, '2019-11-16 16:58:36', 'KES'),
(121, 'Gorivo Automobil sa prikolicom', '2800.00', 2, '2019-11-17 15:19:42', 'KES'),
(122, 'Gorivo Automobil sa prikolicom', '150.00', 2, '2019-11-17 15:20:06', 'KES'),
(123, 'Gorivo Automobil sa prikolicom', '500.00', 1, '2019-11-17 16:47:49', 'KES'),
(124, 'Gorivo Automobil sa prikolicom', '700.00', 1, '2019-11-18 11:19:59', 'KES'),
(125, 'Gorivo Automobil sa prikolicom', '400.00', 2, '2019-11-19 08:16:02', 'KES'),
(126, 'Gorivo Automobil sa prikolicom', '2000.00', 2, '2019-11-19 08:16:30', 'KES'),
(127, 'Gorivo Automobil sa prikolicom', '250.00', 2, '2019-11-19 10:02:03', 'KES'),
(128, 'Gorivo Automobil sa prikolicom', '250.00', 2, '2019-11-19 10:02:03', 'KES'),
(129, 'Gorivo Automobil sa prikolicom', '250.00', 2, '2019-11-20 08:51:16', 'KES'),
(130, 'Gorivo Automobil sa prikolicom', '2700.00', 1, '2019-11-20 16:37:15', 'KES'),
(131, 'Gorivo Automobil sa prikolicom', '340.00', 2, '2019-11-20 20:18:47', 'KES'),
(132, 'Gorivo Automobil sa prikolicom', '600.00', 2, '2019-11-20 20:19:21', 'KES'),
(133, 'Gorivo Automobil sa prikolicom', '200.00', 2, '2019-11-20 20:19:46', 'KES'),
(134, 'Gorivo Automobil sa prikolicom', '2000.00', 2, '2019-11-21 11:19:34', 'KES'),
(135, 'Gorivo Automobil sa prikolicom', '8800.00', 2, '2019-11-21 11:19:48', 'KES'),
(136, 'Gorivo Automobil sa prikolicom', '200.00', 2, '2019-11-21 16:37:23', 'KES'),
(137, 'Gorivo Automobil sa prikolicom', '500.00', 2, '2019-11-22 12:07:00', 'KES'),
(138, 'Gorivo Automobil sa prikolicom', '2800.00', 1, '2019-11-23 13:14:07', 'KES'),
(139, 'Gorivo Automobil sa prikolicom', '2360.00', 1, '2019-11-23 13:14:29', 'KES'),
(140, 'Gorivo Automobil sa prikolicom', '350.00', 2, '2019-11-23 14:19:19', 'KES'),
(141, 'Gorivo Automobil sa prikolicom', '1500.00', 2, '2019-11-23 14:19:49', 'KES'),
(142, 'Gorivo Automobil sa prikolicom', '420.00', 2, '2019-11-23 18:04:09', 'KES'),
(143, 'Gorivo Automobil sa prikolicom', '500.00', 2, '2019-11-24 11:00:38', 'KES'),
(144, 'Gorivo Automobil sa prikolicom', '200.00', 2, '2019-11-24 15:48:38', 'KES'),
(145, 'Gorivo Automobil sa prikolicom', '350.00', 2, '2019-11-24 23:28:37', 'KES'),
(146, 'Gorivo Automobil sa prikolicom', '2687.00', 1, '2019-11-25 10:07:34', 'RF'),
(147, 'Gorivo Automobil sa prikolicom', '960.00', 1, '2019-11-25 11:09:01', 'KES'),
(148, 'Gorivo Automobil sa prikolicom', '450.00', 2, '2019-11-25 20:38:58', 'KES'),
(149, 'Gorivo Automobil sa prikolicom', '350.00', 1, '2019-11-26 12:20:36', 'KES'),
(150, 'Gorivo Automobil sa prikolicom', '300.00', 2, '2019-11-26 21:31:03', 'KES'),
(151, 'Gorivo Automobil sa prikolicom', '220.00', 2, '2019-11-26 21:31:47', 'KES'),
(152, 'Gorivo Automobil sa prikolicom', '2670.00', 1, '2019-11-27 09:09:22', 'KES'),
(153, 'Gorivo Automobil sa prikolicom', '1930.00', 2, '2019-11-27 21:37:27', 'KES'),
(154, 'Gorivo Automobil sa prikolicom', '600.00', 2, '2019-11-27 21:37:50', 'KES'),
(155, 'Gorivo Automobil sa prikolicom', '350.00', 2, '2019-11-28 11:52:03', 'KES'),
(156, 'Gorivo Automobil sa prikolicom', '500.00', 2, '2019-11-28 12:25:01', 'KES'),
(157, 'Gorivo Automobil sa prikolicom', '270.00', 2, '2019-11-28 12:25:18', 'KES'),
(158, 'Gorivo Automobil sa prikolicom', '600.00', 2, '2019-11-28 12:44:09', 'KES'),
(159, 'Gorivo Automobil sa prikolicom', '150.00', 2, '2019-11-28 12:59:01', 'KES'),
(160, 'Gorivo Automobil sa prikolicom', '450.00', 2, '2019-11-29 12:33:51', 'KES'),
(161, 'Gorivo Automobil sa prikolicom', '560.00', 2, '2019-11-29 12:34:19', 'KES'),
(162, 'Gorivo Automobil sa prikolicom', '1560.00', 2, '2019-11-29 16:38:48', 'KES'),
(163, 'Gorivo Automobil sa prikolicom', '300.00', 2, '2019-11-30 14:30:27', 'KES'),
(164, 'Gorivo Automobil sa prikolicom', '1000.00', 2, '2019-11-30 15:23:34', 'KES'),
(165, 'Gorivo Automobil sa prikolicom', '2500.00', 1, '2019-11-30 15:41:51', 'KES'),
(166, 'Gorivo Automobil sa prikolicom', '3260.00', 2, '2019-11-30 15:48:33', 'RF'),
(167, 'Gorivo Automobil sa prikolicom', '3260.00', 2, '2019-11-30 15:49:33', 'RF'),
(168, 'Gorivo Automobil sa prikolicom', '3915.00', 2, '2019-11-30 15:50:44', 'KES'),
(169, 'Gorivo Automobil sa prikolicom', '590.00', 2, '2019-12-01 08:49:52', 'KES'),
(170, 'Gorivo Automobil sa prikolicom', '500.00', 2, '2019-12-01 10:35:29', 'KES'),
(171, 'Gorivo Automobil sa prikolicom', '2000.00', 2, '2019-12-01 11:59:26', 'KES'),
(172, 'Gorivo Automobil sa prikolicom', '340.00', 2, '2019-12-01 13:28:43', 'KES'),
(173, 'Gorivo Automobil sa prikolicom', '1200.00', 2, '2019-12-01 19:00:46', 'KES'),
(174, 'Gorivo Automobil sa prikolicom', '2900.00', 2, '2019-12-01 20:19:34', 'KES'),
(175, 'Gorivo Automobil sa prikolicom', '200.00', 2, '2019-12-02 08:57:59', 'KES'),
(176, 'Gorivo Automobil sa prikolicom', '550.00', 2, '2019-12-02 10:16:24', 'KES'),
(177, 'Gorivo Automobil sa prikolicom', '250.00', 2, '2019-12-02 18:27:26', 'KES'),
(178, 'Gorivo Automobil sa prikolicom', '2000.00', 2, '2019-12-02 18:27:54', 'KES'),
(179, 'Gorivo Automobil sa prikolicom', '1920.00', 2, '2019-12-02 19:52:02', 'KES'),
(180, 'Gorivo Automobil sa prikolicom', '1900.00', 2, '2019-12-03 07:56:52', 'KES'),
(181, 'Gorivo Automobil sa prikolicom', '500.00', 2, '2019-12-03 12:34:47', 'KES'),
(182, 'Gorivo Automobil sa prikolicom', '14000.00', 2, '2019-12-03 12:35:00', 'KES'),
(183, 'Gorivo Automobil sa prikolicom', '350.00', 2, '2019-12-03 20:57:51', 'KES'),
(184, 'Gorivo Automobil sa prikolicom', '1610.00', 1, '2019-12-03 22:31:18', 'KES'),
(185, 'Gorivo Automobil sa prikolicom', '500.00', 1, '2019-12-04 11:29:50', 'RF'),
(186, 'Gorivo Automobil sa prikolicom', '17700.00', 2, '2019-12-04 11:36:37', 'KES'),
(187, 'Gorivo Automobil sa prikolicom', '220.00', 2, '2019-12-04 12:44:35', 'KES'),
(188, 'Gorivo Automobil sa prikolicom', '840.00', 2, '2019-12-04 17:22:43', 'KES'),
(189, 'Gorivo Automobil sa prikolicom', '220.00', 2, '2019-12-04 17:26:39', 'KES'),
(190, 'Gorivo Automobil sa prikolicom', '440.00', 2, '2019-12-05 11:38:15', 'KES'),
(191, 'Gorivo Automobil sa prikolicom', '4665.00', 2, '2019-12-05 12:56:24', 'RF'),
(192, 'Gorivo Automobil sa prikolicom', '500.00', 2, '2019-12-05 14:40:31', 'KES'),
(193, 'Gorivo Automobil sa prikolicom', '2000.00', 2, '2019-12-06 09:22:10', 'KES'),
(194, 'Gorivo Automobil sa prikolicom', '350.00', 2, '2019-12-06 09:22:20', 'KES'),
(195, 'Gorivo Automobil sa prikolicom', '700.00', 2, '2019-12-06 12:30:49', 'KES'),
(196, 'Gorivo Automobil sa prikolicom', '1530.00', 2, '2019-12-06 13:37:00', 'KES'),
(197, 'Gorivo Automobil sa prikolicom', '1000.00', 2, '2019-12-06 14:39:26', 'KES'),
(198, 'Gorivo Automobil sa prikolicom', '23600.00', 1, '2019-12-06 21:00:08', 'KES'),
(199, 'Gorivo Automobil sa prikolicom', '2690.00', 1, '2019-12-07 11:02:21', 'RF');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(45) NOT NULL,
  `token` varchar(11) DEFAULT NULL,
  `expire` datetime DEFAULT NULL,
  `role` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `token`, `expire`, `role`) VALUES
(1, 'ukut', 'ukuthandaa@gmail.com', '129208ad89a77005ff576d1553228c689c9feb36', '8as7efg0vm', '2021-02-18 22:38:16', 2),
(9, 'Mika', 'mika@gmail.com', '129208ad89a77005ff576d1553228c689c9feb36', NULL, NULL, NULL),
(10, 'Zika', 'zika@gmail.com', '08e52a5b40fb5e8fc759a7c4b03b287d2fccd41d', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vozila`
--

CREATE TABLE `vozila` (
  `idvozila` int(11) NOT NULL,
  `ime` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vozila`
--

INSERT INTO `vozila` (`idvozila`, `ime`, `status`) VALUES
(9, 'Iveco ', 1),
(10, 'Mercedes', 1),
(11, 'Tuareg i prikolica', 1),
(15, 'Nisan i prikolica', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `suma` decimal(11,2) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `name`, `suma`, `user_id`) VALUES
(1, 'Mika', '49923.02', 9),
(2, 'Zika', '431028.00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `w_firme`
--

CREATE TABLE `w_firme` (
  `idw_firme` int(11) NOT NULL,
  `f_suma` decimal(11,2) DEFAULT NULL,
  `pu` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `w_firme`
--

INSERT INTO `w_firme` (`idw_firme`, `f_suma`, `pu`) VALUES
(0, '4234.07', '2021-02-17 23:31:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fnalog`
--
ALTER TABLE `fnalog`
  ADD PRIMARY KEY (`idnalog`),
  ADD KEY `fk01_idx` (`idf`);

--
-- Indexes for table `f_ime`
--
ALTER TABLE `f_ime`
  ADD PRIMARY KEY (`idf_ime`);

--
-- Indexes for table `nalog`
--
ALTER TABLE `nalog`
  ADD PRIMARY KEY (`idnalog`);

--
-- Indexes for table `out_income`
--
ALTER TABLE `out_income`
  ADD PRIMARY KEY (`idoutinc`),
  ADD KEY `fk01_idx` (`userid`);

--
-- Indexes for table `rashod`
--
ALTER TABLE `rashod`
  ADD PRIMARY KEY (`idrashod`),
  ADD KEY `fk_01_idx` (`walletid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vozila`
--
ALTER TABLE `vozila`
  ADD PRIMARY KEY (`idvozila`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `w_firme`
--
ALTER TABLE `w_firme`
  ADD PRIMARY KEY (`idw_firme`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fnalog`
--
ALTER TABLE `fnalog`
  MODIFY `idnalog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `f_ime`
--
ALTER TABLE `f_ime`
  MODIFY `idf_ime` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nalog`
--
ALTER TABLE `nalog`
  MODIFY `idnalog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `out_income`
--
ALTER TABLE `out_income`
  MODIFY `idoutinc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `rashod`
--
ALTER TABLE `rashod`
  MODIFY `idrashod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1094;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vozila`
--
ALTER TABLE `vozila`
  MODIFY `idvozila` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
