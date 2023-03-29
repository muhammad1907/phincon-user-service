# Host: localhost  (Version 5.5.5-10.4.24-MariaDB)
# Date: 2023-03-30 05:41:49
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "sequelizemeta"
#

DROP TABLE IF EXISTS `sequelizemeta`;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','users') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_USER_EMAIL` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Structure for table "refresh_tokens"
#

DROP TABLE IF EXISTS `refresh_tokens`;
CREATE TABLE `refresh_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `REFRESH_TOKENS__USER_ID` (`user_id`),
  CONSTRAINT `REFRESH_TOKENS__USER_ID` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
