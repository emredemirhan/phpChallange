-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               8.0.22 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for phalcon_app
CREATE DATABASE IF NOT EXISTS `phalcon_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `phalcon_app`;

-- Dumping structure for table phalcon_app.cities
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  UNIQUE KEY `Index 1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table phalcon_app.cities: ~9 rows (approximately)
DELETE FROM `cities`;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` (`id`, `city`) VALUES
	(1, 'Hong Kong'),
	(2, 'London'),
	(3, 'Paris'),
	(4, 'Dubai'),
	(5, 'New York'),
	(6, 'Istanbul'),
	(7, 'Tokyo'),
	(8, 'Rome'),
	(9, 'Mumbai'),
	(10, 'Amsterdam');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;

-- Dumping structure for table phalcon_app.gift_codes
CREATE TABLE IF NOT EXISTS `gift_codes` (
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `Index 1` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phalcon_app.gift_codes: ~100 rows (approximately)
DELETE FROM `gift_codes`;
/*!40000 ALTER TABLE `gift_codes` DISABLE KEYS */;
INSERT INTO `gift_codes` (`code`, `used`) VALUES
	('1vt21SH2jV', 1),
	('2yTCXevJF5', 1),
	('3PYzRdO8TQ', 0),
	('3vtp5mpY8X', 0),
	('4O0pqSexh3', 0),
	('4UUvtYoRJx', 1),
	('5HT0xUSdDY', 0),
	('60VH0G8JCI', 0),
	('6MsXp2c8T4', 0),
	('6rriA2SzqD', 0),
	('7p9qS2zngu', 0),
	('7q5vWHWHsF', 0),
	('7TYUqFWYiv', 0),
	('7YQ5mUD7wZ', 0),
	('9BgPppxtFq', 0),
	('9sIFDtSJz5', 0),
	('A2PBz7PQsC', 0),
	('AFI77k0zsl', 0),
	('AiuWekTXR8', 0),
	('AOpctqct4z', 0),
	('BRFtfOyDNH', 0),
	('bRJUnTjCzh', 0),
	('BtkqOPNEXG', 0),
	('Btkt8Gfof3', 0),
	('BWZTEGcckW', 0),
	('Cb5bcIOgNj', 0),
	('CGRWE1iywS', 0),
	('dacXDcpqUr', 0),
	('dCKHb1WNAm', 0),
	('DFEx0OP8bR', 0),
	('dFPKdq6Yk2', 0),
	('dhKTE2WikO', 0),
	('e9SpKU2OFL', 0),
	('EMCtDBeq1B', 0),
	('ENvvPnIrnb', 0),
	('f3MXrBkHOr', 0),
	('F8cFtFHk8C', 0),
	('fANs7W9B1T', 0),
	('FfP38gZPmN', 0),
	('Fpo56gAoTO', 0),
	('h3aiWrWGdg', 0),
	('H6XMTSOi4H', 0),
	('hBJB5u4UTn', 0),
	('hCSaf9j94H', 0),
	('hhN6bWhVjf', 0),
	('HhOxK20jA8', 0),
	('hsR14ZHEiq', 0),
	('i2eaXPvkAD', 0),
	('ICzoXexo5J', 0),
	('IM6X6TSwCW', 0),
	('IMkE2VnWca', 0),
	('iObMNgXwCX', 0),
	('JHyLAyZMv1', 0),
	('jlewely6ju', 0),
	('JtEnIdVN9R', 0),
	('k2txEW4sjI', 0),
	('KcM1pA4cBs', 0),
	('Lc0OMrk3Ot', 0),
	('LCMkDbosKQ', 0),
	('LjTVdDXkiu', 0),
	('Lkwx5kf1MS', 0),
	('N8XPjdrLsx', 0),
	('N9OewkmeVN', 0),
	('ne1u72FWRT', 0),
	('nhxO5Ga0M8', 0),
	('nSOcLJs1cP', 0),
	('Ouj6sNn7kg', 0),
	('py8ZsKaCcs', 0),
	('qJSdc6clxq', 0),
	('qkrs059CEC', 0),
	('qSXZ1vcDIQ', 0),
	('qvUWnszwoR', 0),
	('RfsELE5mKo', 0),
	('RKUiZCRoS6', 0),
	('rwy5hWePvp', 0),
	('SdaZq0kfTh', 0),
	('ShcC74wgjW', 0),
	('TL1Osj1Cj0', 0),
	('tm3HvciXIH', 0),
	('tT6obVyRuw', 0),
	('tTMoCh4o10', 0),
	('TYjhir3LCm', 0),
	('ughsz9tvyB', 0),
	('UH9OwrRbF8', 0),
	('uHT7KN4zr2', 0),
	('v1OEeEFSSh', 0),
	('vkA7YNjpZp', 0),
	('VL9C41r25O', 0),
	('voFK28YMDm', 0),
	('w9seGu1h8R', 0),
	('wdIpsPpeeN', 0),
	('wdqquiEMqZ', 0),
	('wgeu6IFE4P', 0),
	('WgSVE2Nw5J', 0),
	('Wz3FyVI8lA', 0),
	('XkdFVO1HD7', 0),
	('XUDVnfOeTH', 0),
	('yuHrVAshpz', 0),
	('zuUZmQSHLI', 0),
	('zxzjjvCeNJ', 0);
/*!40000 ALTER TABLE `gift_codes` ENABLE KEYS */;

-- Dumping structure for table phalcon_app.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  UNIQUE KEY `Index 1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phalcon_app.languages: ~2 rows (approximately)
DELETE FROM `languages`;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` (`id`, `language`) VALUES
	(1, 'English'),
	(2, 'Turkish');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;

-- Dumping structure for table phalcon_app.timezones
CREATE TABLE IF NOT EXISTS `timezones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `timezone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  UNIQUE KEY `Index 1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phalcon_app.timezones: ~0 rows (approximately)
DELETE FROM `timezones`;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
INSERT INTO `timezones` (`id`, `value`, `timezone`) VALUES
	(1, '-12:00', '(GMT -12:00) Eniwetok, Kwajalein'),
	(2, '-11:00', '(GMT -11:00) Midway Island, Samoa'),
	(3, '-10:00', '(GMT -10:00) Hawaii'),
	(4, '-09:50', '(GMT -9:30) Taiohae'),
	(5, '-09:00', '(GMT -9:00) Alaska'),
	(6, '-08:00', '(GMT -8:00) Pacific Time (US &amp; Canada)'),
	(7, '-07:00', '(GMT -7:00) Mountain Time (US &amp; Canada)'),
	(8, '-06:00', '(GMT -6:00) Central Time (US &amp; Canada), Mexico City'),
	(9, '-05:00', '(GMT -5:00) Eastern Time (US &amp; Canada), Bogota, Lima'),
	(10, '-04:30', '(GMT -4:30) Caracas'),
	(11, '-04:00', '(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz'),
	(12, '-03:50', '(GMT -3:30) Newfoundland'),
	(13, '-03:00', '(GMT -3:00) Brazil, Buenos Aires, Georgetown'),
	(14, '-02:00', '(GMT -2:00) Mid-Atlantic'),
	(15, '-01:00', '(GMT -1:00) Azores, Cape Verde Islands'),
	(16, '+00:00', '(GMT) Western Europe Time, London, Lisbon, Casablanca'),
	(17, '+01:00', '(GMT +1:00) Brussels, Copenhagen, Madrid, Paris'),
	(18, '+02:00', '(GMT +2:00) Kaliningrad, South Africa'),
	(19, '+03:00', '(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg'),
	(20, '+03:50', '(GMT +3:30) Tehran'),
	(21, '+04:00', '(GMT +4:00) Abu Dhabi, Muscat, Baku, Tbilisi'),
	(22, '+04:50', '(GMT +4:30) Kabul'),
	(23, '+05:00', '(GMT +5:00) Ekaterinburg, Islamabad, Karachi, Tashkent'),
	(24, '+05:50', '(GMT +5:30) Bombay, Calcutta, Madras, New Delhi'),
	(25, '+05:75', '(GMT +5:45) Kathmandu, Pokhar'),
	(26, '+06:00', '(GMT +6:00) Almaty, Dhaka, Colombo'),
	(27, '+06:50', '(GMT +6:30) Yangon, Mandalay'),
	(28, '+07:00', '(GMT +7:00) Bangkok, Hanoi, Jakarta'),
	(29, '+08:00', '(GMT +8:00) Beijing, Perth, Singapore, Hong Kong'),
	(30, '+08:75', '(GMT +8:45) Eucla'),
	(31, '+09:00', '(GMT +9:00) Tokyo, Seoul, Osaka, Sapporo, Yakutsk'),
	(32, '+09:50', '(GMT +9:30) Adelaide, Darwin'),
	(33, '+10:00', '(GMT +10:00) Eastern Australia, Guam, Vladivostok'),
	(34, '+10:50', '(GMT +10:30) Lord Howe Island'),
	(35, '+11:00', '(GMT +11:00) Magadan, Solomon Islands, New Caledonia'),
	(36, '+11:50', '(GMT +11:30) Norfolk Island'),
	(37, '+12:00', '(GMT +12:00) Auckland, Wellington, Fiji, Kamchatka'),
	(38, '+12:75', '(GMT +12:45) Chatham Islands'),
	(39, '+13:00', '(GMT +13:00) Apia, Nukualofa'),
	(40, '+14:00', '(GMT +14:00) Line Islands, Tokelau');
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;

-- Dumping structure for table phalcon_app.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `profile_photo` longblob,
  `city` int NOT NULL DEFAULT '0',
  `timezone` int NOT NULL DEFAULT '0',
  `language` int NOT NULL DEFAULT '0',
  `os` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DefaultOS',
  `tokennot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `subscription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'paid',
  UNIQUE KEY `ID` (`id`) USING BTREE,
  UNIQUE KEY `EMAIL` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phalcon_app.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table phalcon_app.user_weather_list
CREATE TABLE IF NOT EXISTS `user_weather_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `city` int NOT NULL,
  UNIQUE KEY `Index 1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phalcon_app.user_weather_list: ~0 rows (approximately)
DELETE FROM `user_weather_list`;
/*!40000 ALTER TABLE `user_weather_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_weather_list` ENABLE KEYS */;

-- Dumping structure for table phalcon_app.weather_list
CREATE TABLE IF NOT EXISTS `weather_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `temperature` float NOT NULL,
  `city` int NOT NULL,
  UNIQUE KEY `Index 1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phalcon_app.weather_list: ~0 rows (approximately)
DELETE FROM `weather_list`;
/*!40000 ALTER TABLE `weather_list` DISABLE KEYS */;
INSERT INTO `weather_list` (`id`, `date`, `temperature`, `city`) VALUES
	(1, '2020-11-10', 10.1, 1),
	(2, '2020-11-10', 27.3, 2),
	(3, '2020-11-10', 24.2, 3),
	(4, '2020-11-10', 22.3, 4),
	(5, '2020-11-10', 20.5, 5),
	(6, '2020-11-10', 10.6, 6),
	(7, '2020-11-10', 13.1, 7),
	(8, '2020-11-10', 15.4, 8),
	(9, '2020-11-10', 27.2, 9),
	(10, '2020-11-11', 15.9, 10),
	(11, '2020-11-11', 22.6, 1),
	(12, '2020-11-11', 25.2, 2),
	(13, '2020-11-11', 20.6, 3),
	(14, '2020-11-11', 27.4, 4),
	(15, '2020-11-11', 20.4, 5),
	(16, '2020-11-11', 11.3, 6),
	(17, '2020-11-11', 16.7, 7),
	(18, '2020-11-11', 28.4, 8),
	(19, '2020-11-11', 17.2, 9),
	(20, '2020-11-12', 15.6, 10),
	(21, '2020-11-12', 26.8, 1),
	(22, '2020-11-12', 17.1, 2),
	(23, '2020-11-12', 18.6, 3),
	(24, '2020-11-12', 25.8, 4),
	(25, '2020-11-12', 25.7, 5),
	(26, '2020-11-12', 17.2, 6),
	(27, '2020-11-12', 19, 7),
	(28, '2020-11-12', 21.6, 8),
	(29, '2020-11-12', 14.1, 9),
	(30, '2020-11-13', 30, 10),
	(31, '2020-11-13', 29.7, 1),
	(32, '2020-11-13', 17.1, 2),
	(33, '2020-11-13', 11.6, 3),
	(34, '2020-11-13', 14.9, 4),
	(35, '2020-11-13', 12.5, 5),
	(36, '2020-11-13', 27, 6),
	(37, '2020-11-13', 10.9, 7),
	(38, '2020-11-13', 10.5, 8),
	(39, '2020-11-13', 15.5, 9),
	(40, '2020-11-14', 19.4, 10),
	(41, '2020-11-14', 21.6, 1),
	(42, '2020-11-14', 27.6, 2),
	(43, '2020-11-14', 13.5, 3),
	(44, '2020-11-14', 12.9, 4),
	(45, '2020-11-14', 26.8, 5),
	(46, '2020-11-14', 23.7, 6),
	(47, '2020-11-14', 29.4, 7),
	(48, '2020-11-14', 13.3, 8),
	(49, '2020-11-14', 18.4, 9),
	(50, '2020-11-15', 16.8, 10),
	(51, '2020-11-15', 18.5, 1),
	(52, '2020-11-15', 29.9, 2),
	(53, '2020-11-15', 21.7, 3),
	(54, '2020-11-15', 12.7, 4),
	(55, '2020-11-15', 18, 5),
	(56, '2020-11-15', 23, 6),
	(57, '2020-11-15', 27.1, 7),
	(58, '2020-11-15', 23.1, 8),
	(59, '2020-11-15', 21, 9),
	(60, '2020-11-16', 23.3, 10),
	(61, '2020-11-16', 14.3, 1),
	(62, '2020-11-16', 20.9, 2),
	(63, '2020-11-16', 21.8, 3),
	(64, '2020-11-16', 15.7, 4),
	(65, '2020-11-16', 23.7, 5),
	(66, '2020-11-16', 24.4, 6),
	(67, '2020-11-16', 17.5, 7),
	(68, '2020-11-16', 19, 8),
	(69, '2020-11-16', 27.1, 9),
	(70, '2020-11-17', 14, 10),
	(71, '2020-11-17', 26.7, 1),
	(72, '2020-11-17', 19.2, 2),
	(73, '2020-11-17', 15.3, 3),
	(74, '2020-11-17', 18.4, 4),
	(75, '2020-11-17', 27.2, 5),
	(76, '2020-11-17', 15.5, 6),
	(77, '2020-11-17', 24.8, 7),
	(78, '2020-11-17', 21.9, 8),
	(79, '2020-11-17', 18.3, 9),
	(80, '2020-11-18', 25.9, 10),
	(81, '2020-11-18', 17.8, 1),
	(82, '2020-11-18', 25.7, 2),
	(83, '2020-11-18', 26.4, 3),
	(84, '2020-11-18', 25.8, 4),
	(85, '2020-11-18', 19, 5),
	(86, '2020-11-18', 28.3, 6),
	(87, '2020-11-18', 23.6, 7),
	(88, '2020-11-18', 12.8, 8),
	(89, '2020-11-18', 18.4, 9),
	(90, '2020-11-19', 15.7, 10),
	(91, '2020-11-19', 26.4, 1),
	(92, '2020-11-19', 10, 2),
	(93, '2020-11-19', 20.2, 3),
	(94, '2020-11-19', 21.1, 4),
	(95, '2020-11-19', 12.1, 5),
	(96, '2020-11-19', 24.5, 6),
	(97, '2020-11-19', 14.4, 7),
	(98, '2020-11-19', 15.5, 8),
	(99, '2020-11-19', 10.8, 9),
	(100, '2020-11-20', 29.4, 10),
	(101, '2020-11-20', 24.3, 1),
	(102, '2020-11-20', 25, 2),
	(103, '2020-11-20', 26.7, 3),
	(104, '2020-11-20', 25.3, 4),
	(105, '2020-11-20', 21.9, 5),
	(106, '2020-11-20', 11.5, 6),
	(107, '2020-11-20', 24, 7),
	(108, '2020-11-20', 11, 8),
	(109, '2020-11-20', 14.5, 9),
	(110, '2020-11-21', 12.2, 10),
	(111, '2020-11-21', 28.5, 1),
	(112, '2020-11-21', 22.6, 2),
	(113, '2020-11-21', 19.3, 3),
	(114, '2020-11-21', 21.8, 4),
	(115, '2020-11-21', 27.7, 5),
	(116, '2020-11-21', 29.5, 6),
	(117, '2020-11-21', 27.8, 7),
	(118, '2020-11-21', 14.9, 8),
	(119, '2020-11-21', 14.5, 9),
	(120, '2020-11-22', 28, 10),
	(121, '2020-11-22', 15.1, 1),
	(122, '2020-11-22', 16.9, 2),
	(123, '2020-11-22', 27.2, 3),
	(124, '2020-11-22', 24.5, 4),
	(125, '2020-11-22', 24, 5),
	(126, '2020-11-22', 18.7, 6),
	(127, '2020-11-22', 25.4, 7),
	(128, '2020-11-22', 28, 8),
	(129, '2020-11-22', 22.9, 9),
	(130, '2020-11-23', 29.8, 10),
	(131, '2020-11-23', 28.3, 1),
	(132, '2020-11-23', 25.2, 2),
	(133, '2020-11-23', 23.6, 3),
	(134, '2020-11-23', 20.5, 4),
	(135, '2020-11-23', 18, 5),
	(136, '2020-11-23', 20.7, 6),
	(137, '2020-11-23', 28.7, 7),
	(138, '2020-11-23', 15, 8),
	(139, '2020-11-23', 17.4, 9),
	(140, '2020-11-24', 20.9, 10),
	(141, '2020-11-24', 11.1, 1),
	(142, '2020-11-24', 11.9, 2),
	(143, '2020-11-24', 17.9, 3),
	(144, '2020-11-24', 19.9, 4),
	(145, '2020-11-24', 17.7, 5),
	(146, '2020-11-24', 15.8, 6),
	(147, '2020-11-24', 20.3, 7),
	(148, '2020-11-24', 15.8, 8),
	(149, '2020-11-24', 14.4, 9),
	(150, '2020-11-25', 19, 10),
	(151, '2020-11-25', 22.5, 1),
	(152, '2020-11-25', 25.7, 2),
	(153, '2020-11-25', 14.8, 3),
	(154, '2020-11-25', 15.2, 4),
	(155, '2020-11-25', 25.7, 5),
	(156, '2020-11-25', 16.5, 6),
	(157, '2020-11-25', 27.4, 7),
	(158, '2020-11-25', 27.3, 8),
	(159, '2020-11-25', 23.2, 9),
	(160, '2020-11-26', 28.8, 10),
	(161, '2020-11-26', 11.6, 1),
	(162, '2020-11-26', 14, 2),
	(163, '2020-11-26', 24.3, 3),
	(164, '2020-11-26', 29.2, 4),
	(165, '2020-11-26', 17.2, 5),
	(166, '2020-11-26', 27.2, 6),
	(167, '2020-11-26', 29.7, 7),
	(168, '2020-11-26', 18.1, 8),
	(169, '2020-11-26', 24.9, 9),
	(170, '2020-11-27', 16.7, 10),
	(171, '2020-11-27', 25.6, 1),
	(172, '2020-11-27', 15.4, 2),
	(173, '2020-11-27', 17.1, 3),
	(174, '2020-11-27', 22.3, 4),
	(175, '2020-11-27', 26.6, 5),
	(176, '2020-11-27', 25.4, 6),
	(177, '2020-11-27', 21.7, 7),
	(178, '2020-11-27', 21, 8),
	(179, '2020-11-27', 22.5, 9),
	(180, '2020-11-28', 20.8, 10),
	(181, '2020-11-28', 29.2, 1),
	(182, '2020-11-28', 21.3, 2),
	(183, '2020-11-28', 15.2, 3),
	(184, '2020-11-28', 27, 4),
	(185, '2020-11-28', 13.7, 5),
	(186, '2020-11-28', 18.2, 6),
	(187, '2020-11-28', 17.3, 7),
	(188, '2020-11-28', 22.8, 8),
	(189, '2020-11-28', 28.8, 9),
	(190, '2020-11-29', 12.5, 10),
	(191, '2020-11-29', 14.7, 1),
	(192, '2020-11-29', 10.1, 2),
	(193, '2020-11-29', 23.8, 3),
	(194, '2020-11-29', 29.6, 4),
	(195, '2020-11-29', 14.7, 5),
	(196, '2020-11-29', 10.5, 6),
	(197, '2020-11-29', 24.8, 7),
	(198, '2020-11-29', 18.8, 8),
	(199, '2020-11-29', 16.2, 9),
	(200, '2020-11-30', 24.4, 10);
/*!40000 ALTER TABLE `weather_list` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
