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

-- Dumping data for table phalcon_app.cities: ~10 rows (approximately)
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

-- Dumping data for table phalcon_app.timezones: ~40 rows (approximately)
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
  `profile_photo` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `city` int NOT NULL DEFAULT '0',
  `timezone` int NOT NULL DEFAULT '0',
  `language` int NOT NULL DEFAULT '0',
  `os` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DefaultOS',
  `token_notification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `subscription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'paid',
  UNIQUE KEY `ID` (`id`) USING BTREE,
  UNIQUE KEY `EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phalcon_app.users: ~3 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`, `phone`, `profile_photo`, `city`, `timezone`, `language`, `os`, `token_notification`, `subscription`) VALUES
	(14, 'test@test.com', '$2y$10$aW0rOU90dkNNMjdJSlc0SevCmkGgRcSM61xRFfnQAvze72vg7Deci', '', NULL, 1, 10, 1, 'windows', '', 'paid'),
	(19, 'a@a.com', '$2y$10$ZU51c1g3M1dqVm8zYU9rRuji0rURayDVFhn1hI1NCvHLcWuPCO/ti', '', NULL, 0, 2, 0, 'mac', '', 'free'),
	(20, 'app@test.com', '$2y$10$K2ZaQW9QcFJCNEFreHd0Se1rPNunK6ewyVV7rNg54ogvQYQkZK.pW', '+9053255544433', NULL, 1, 16, 1, 'windows', '', 'paid');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table phalcon_app.user_weather_list
CREATE TABLE IF NOT EXISTS `user_weather_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `city` int NOT NULL,
  UNIQUE KEY `Index 1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phalcon_app.user_weather_list: ~1 rows (approximately)
DELETE FROM `user_weather_list`;
/*!40000 ALTER TABLE `user_weather_list` DISABLE KEYS */;
INSERT INTO `user_weather_list` (`id`, `user_id`, `city`) VALUES
	(1, 19, 2);
/*!40000 ALTER TABLE `user_weather_list` ENABLE KEYS */;

-- Dumping structure for table phalcon_app.weather_list
CREATE TABLE IF NOT EXISTS `weather_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `temperature` float NOT NULL,
  `city` int NOT NULL,
  UNIQUE KEY `Index 1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phalcon_app.weather_list: ~0 rows (approximately)
DELETE FROM `weather_list`;
/*!40000 ALTER TABLE `weather_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `weather_list` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
