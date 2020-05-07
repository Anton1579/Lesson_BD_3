#1. Создать структуру БД Вконтакте по скриптам, приложеным в файле примеров #examples.sql

-- user table
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  phone VARCHAR(100) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 );
  
--  profile table
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY,
  gender CHAR(1) NOT NULL,
  birthday DATE,
  city VARCHAR(130),
  country VARCHAR(130),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 );
  
 -- community table 
 CREATE TABLE massges (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   from_user_id INT UNSIGNED NOT NULL,
   to_user_id INT UNSIGNED NOT NULL,
   body TEXT NOT NULL,
   is_important BOOLEAN,
   is_delivered BOOLEAN,
   created_at DATETIME DEFAULT NOW()
 );

-- friendship table
CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL,
  friend_id INT UNSIGNED NOT NULL,
  status_id INT UNSIGNED NOT NULL,
  requested_at DATETIME DEFAULT NOW(),
  confirmed_id DATETIME,
  PRIMARY KEY (user_id, friend_id)
 );

-- friends status table
CREATE TABLE friendship_status (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE
 );

-- group table
CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE
 );
 
--  group communication table
CREATE TABLE communities_user (
  community_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (community_id, user_id)
 );
 
--  media table
CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  filename VARCHAR(255) NOT NULL,
  size INT NOT NULL,
  metadata JSON,
  media_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP
 );

-- media type table
CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
 );

#2. Используя сервис http://filldb.info или другой по вашему желанию, #сгенерировать тестовые данные для всех таблиц, учитывая логику связей. Для #всех таблиц, где это имеет смысл, создать не менее 100 строк. Загрузить #тестовые данные. Приложить к отчёту полученный дамп с данными.
#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (94, 'a');
INSERT INTO `communities` (`id`, `name`) VALUES (97, 'ab');
INSERT INTO `communities` (`id`, `name`) VALUES (47, 'accusamus');
INSERT INTO `communities` (`id`, `name`) VALUES (35, 'adipisci');
INSERT INTO `communities` (`id`, `name`) VALUES (64, 'alias');
INSERT INTO `communities` (`id`, `name`) VALUES (29, 'aliquam');
INSERT INTO `communities` (`id`, `name`) VALUES (23, 'aperiam');
INSERT INTO `communities` (`id`, `name`) VALUES (20, 'architecto');
INSERT INTO `communities` (`id`, `name`) VALUES (27, 'at');
INSERT INTO `communities` (`id`, `name`) VALUES (74, 'blanditiis');
INSERT INTO `communities` (`id`, `name`) VALUES (71, 'commodi');
INSERT INTO `communities` (`id`, `name`) VALUES (33, 'consectetur');
INSERT INTO `communities` (`id`, `name`) VALUES (11, 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES (81, 'consequuntur');
INSERT INTO `communities` (`id`, `name`) VALUES (43, 'corporis');
INSERT INTO `communities` (`id`, `name`) VALUES (79, 'cum');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'cumque');
INSERT INTO `communities` (`id`, `name`) VALUES (12, 'cupiditate');
INSERT INTO `communities` (`id`, `name`) VALUES (85, 'debitis');
INSERT INTO `communities` (`id`, `name`) VALUES (69, 'delectus');
INSERT INTO `communities` (`id`, `name`) VALUES (77, 'deleniti');
INSERT INTO `communities` (`id`, `name`) VALUES (46, 'deserunt');
INSERT INTO `communities` (`id`, `name`) VALUES (51, 'distinctio');
INSERT INTO `communities` (`id`, `name`) VALUES (49, 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES (61, 'dolore');
INSERT INTO `communities` (`id`, `name`) VALUES (78, 'dolorem');
INSERT INTO `communities` (`id`, `name`) VALUES (62, 'dolores');
INSERT INTO `communities` (`id`, `name`) VALUES (58, 'dolorum');
INSERT INTO `communities` (`id`, `name`) VALUES (68, 'ducimus');
INSERT INTO `communities` (`id`, `name`) VALUES (26, 'eaque');
INSERT INTO `communities` (`id`, `name`) VALUES (53, 'error');
INSERT INTO `communities` (`id`, `name`) VALUES (36, 'est');
INSERT INTO `communities` (`id`, `name`) VALUES (55, 'et');
INSERT INTO `communities` (`id`, `name`) VALUES (84, 'eum');
INSERT INTO `communities` (`id`, `name`) VALUES (15, 'ex');
INSERT INTO `communities` (`id`, `name`) VALUES (22, 'exercitationem');
INSERT INTO `communities` (`id`, `name`) VALUES (80, 'expedita');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'facilis');
INSERT INTO `communities` (`id`, `name`) VALUES (67, 'fuga');
INSERT INTO `communities` (`id`, `name`) VALUES (59, 'hic');
INSERT INTO `communities` (`id`, `name`) VALUES (65, 'id');
INSERT INTO `communities` (`id`, `name`) VALUES (10, 'illo');
INSERT INTO `communities` (`id`, `name`) VALUES (57, 'in');
INSERT INTO `communities` (`id`, `name`) VALUES (28, 'ipsam');
INSERT INTO `communities` (`id`, `name`) VALUES (92, 'ipsum');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'iste');
INSERT INTO `communities` (`id`, `name`) VALUES (30, 'itaque');
INSERT INTO `communities` (`id`, `name`) VALUES (32, 'iure');
INSERT INTO `communities` (`id`, `name`) VALUES (82, 'iusto');
INSERT INTO `communities` (`id`, `name`) VALUES (45, 'laborum');
INSERT INTO `communities` (`id`, `name`) VALUES (34, 'libero');
INSERT INTO `communities` (`id`, `name`) VALUES (90, 'magnam');
INSERT INTO `communities` (`id`, `name`) VALUES (99, 'maiores');
INSERT INTO `communities` (`id`, `name`) VALUES (52, 'maxime');
INSERT INTO `communities` (`id`, `name`) VALUES (87, 'modi');
INSERT INTO `communities` (`id`, `name`) VALUES (76, 'molestiae');
INSERT INTO `communities` (`id`, `name`) VALUES (86, 'molestias');
INSERT INTO `communities` (`id`, `name`) VALUES (38, 'mollitia');
INSERT INTO `communities` (`id`, `name`) VALUES (72, 'natus');
INSERT INTO `communities` (`id`, `name`) VALUES (7, 'necessitatibus');
INSERT INTO `communities` (`id`, `name`) VALUES (88, 'nihil');
INSERT INTO `communities` (`id`, `name`) VALUES (44, 'nisi');
INSERT INTO `communities` (`id`, `name`) VALUES (48, 'non');
INSERT INTO `communities` (`id`, `name`) VALUES (37, 'nostrum');
INSERT INTO `communities` (`id`, `name`) VALUES (75, 'odio');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'officiis');
INSERT INTO `communities` (`id`, `name`) VALUES (13, 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES (98, 'perferendis');
INSERT INTO `communities` (`id`, `name`) VALUES (73, 'placeat');
INSERT INTO `communities` (`id`, `name`) VALUES (95, 'porro');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'possimus');
INSERT INTO `communities` (`id`, `name`) VALUES (25, 'praesentium');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'provident');
INSERT INTO `communities` (`id`, `name`) VALUES (91, 'quam');
INSERT INTO `communities` (`id`, `name`) VALUES (21, 'quas');
INSERT INTO `communities` (`id`, `name`) VALUES (39, 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES (16, 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES (17, 'quibusdam');
INSERT INTO `communities` (`id`, `name`) VALUES (14, 'quidem');
INSERT INTO `communities` (`id`, `name`) VALUES (31, 'quis');
INSERT INTO `communities` (`id`, `name`) VALUES (54, 'quo');
INSERT INTO `communities` (`id`, `name`) VALUES (60, 'ratione');
INSERT INTO `communities` (`id`, `name`) VALUES (63, 'recusandae');
INSERT INTO `communities` (`id`, `name`) VALUES (50, 'repellat');
INSERT INTO `communities` (`id`, `name`) VALUES (70, 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES (24, 'sapiente');
INSERT INTO `communities` (`id`, `name`) VALUES (56, 'sed');
INSERT INTO `communities` (`id`, `name`) VALUES (96, 'sint');
INSERT INTO `communities` (`id`, `name`) VALUES (41, 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'sunt');
INSERT INTO `communities` (`id`, `name`) VALUES (100, 'tempore');
INSERT INTO `communities` (`id`, `name`) VALUES (40, 'unde');
INSERT INTO `communities` (`id`, `name`) VALUES (18, 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES (89, 'velit');
INSERT INTO `communities` (`id`, `name`) VALUES (93, 'vero');
INSERT INTO `communities` (`id`, `name`) VALUES (83, 'vitae');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES (42, 'voluptatem');
INSERT INTO `communities` (`id`, `name`) VALUES (19, 'voluptatibus');
INSERT INTO `communities` (`id`, `name`) VALUES (66, 'voluptatum');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 54);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 74);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 22);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 62);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 87);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 97);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 94);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (22, 31);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (22, 38);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23, 46);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 100);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (25, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (25, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 23);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 76);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 77);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (27, 29);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (30, 57);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (32, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (32, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (32, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (33, 25);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (35, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (37, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (38, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (39, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (41, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (42, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (42, 75);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (42, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (42, 96);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (43, 65);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (44, 55);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (45, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (46, 43);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (47, 33);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (51, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (54, 12);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (55, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (57, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (57, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (58, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (59, 67);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (60, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (63, 48);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (63, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (64, 82);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (65, 83);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (65, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (67, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (67, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (67, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (68, 53);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (68, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (69, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (70, 36);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (71, 24);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (71, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (72, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (73, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (74, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (76, 51);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (77, 14);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (77, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (78, 98);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (80, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (82, 58);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (83, 39);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (84, 28);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (84, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (85, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (87, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (87, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (89, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (89, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (90, 89);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (92, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (92, 66);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (92, 80);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (94, 90);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (95, 73);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (95, 88);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (98, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (99, 93);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 6, 61, '2015-08-24 00:23:32', '1979-03-15 10:42:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 27, 59, '1972-04-08 18:05:06', '1972-08-28 17:05:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 29, 18, '1977-06-17 11:52:54', '1976-05-20 14:15:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 65, 47, '1976-10-16 09:44:49', '2001-06-25 14:56:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 50, 33, '2018-10-08 01:12:50', '1993-09-04 08:05:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 79, 37, '2007-06-29 20:48:36', '2000-08-03 23:09:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (5, 52, 8, '2002-03-04 06:31:04', '2010-09-12 19:31:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (5, 98, 17, '2005-01-18 10:01:55', '1995-06-30 23:10:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 53, 15, '1981-04-30 21:55:39', '1996-09-24 14:57:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 23, 98, '1979-05-04 23:43:48', '1989-11-10 00:49:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 34, 18, '1974-02-02 22:06:04', '1975-06-14 06:08:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 34, 72, '1977-11-18 20:27:23', '2009-01-29 18:25:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 44, 92, '1983-08-27 22:10:03', '1975-07-23 06:16:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 47, 24, '1987-02-14 15:54:27', '1981-04-25 03:33:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (11, 23, 53, '1990-10-18 13:15:23', '2003-07-02 05:16:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 56, 32, '2008-06-04 13:15:23', '2016-11-15 22:27:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 70, 23, '1970-06-24 05:11:15', '1988-07-05 21:26:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 94, 30, '2008-10-18 14:50:47', '1989-09-10 03:12:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 19, 17, '1988-07-30 13:50:09', '2019-10-06 08:32:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 65, 100, '2004-09-25 13:14:06', '2007-03-18 05:33:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (18, 93, 88, '2012-05-16 08:19:35', '1998-12-01 06:57:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 11, 14, '1994-01-18 03:56:50', '1979-11-21 08:06:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 14, 22, '1977-12-05 04:33:51', '1996-05-03 02:39:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 2, 70, '2010-05-25 14:50:10', '1995-09-22 15:18:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 31, 15, '1996-08-28 02:56:44', '2016-02-21 06:03:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 87, 5, '1998-05-13 15:24:32', '2007-03-05 07:50:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 100, 47, '1975-05-23 23:23:50', '2003-07-18 14:58:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 2, 68, '1990-11-17 06:39:43', '1976-11-07 17:52:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 4, 54, '2006-07-20 09:47:50', '2003-04-07 08:40:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 43, 15, '2011-10-19 00:35:33', '1992-03-25 04:25:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 56, 85, '2013-01-07 22:52:37', '2020-01-27 17:06:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (32, 96, 95, '1983-07-05 05:28:47', '2005-04-26 23:15:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 79, 10, '2017-06-27 05:30:48', '1975-12-31 06:13:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 20, 54, '1996-02-17 10:32:25', '1971-10-23 02:08:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 40, 87, '1999-11-20 00:46:25', '1975-06-05 08:55:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 52, 50, '2006-05-08 11:47:18', '2010-06-25 23:10:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (35, 98, 97, '2008-03-08 09:17:06', '1972-06-04 18:50:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (37, 40, 22, '2018-09-03 07:34:42', '1989-11-14 08:37:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (38, 11, 31, '1979-06-21 10:18:53', '1989-01-07 18:33:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (39, 18, 92, '1977-12-16 15:03:55', '1989-09-30 05:49:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 86, 78, '1970-02-06 18:19:47', '2017-03-25 03:24:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 93, 35, '2016-05-07 00:55:26', '1975-03-04 09:24:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 30, 72, '2012-03-25 17:09:48', '1997-10-15 07:40:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (43, 22, 84, '1991-06-13 14:21:55', '1970-08-13 15:24:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 19, 48, '2007-03-23 12:10:36', '1971-10-03 23:21:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (45, 32, 82, '1982-02-06 23:30:41', '1977-03-20 02:36:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (46, 93, 72, '2000-09-02 00:58:24', '1992-02-22 17:23:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 73, 10, '2000-02-16 10:16:59', '1999-12-25 02:22:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (51, 48, 41, '1993-06-23 23:58:03', '1978-05-16 12:41:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (52, 2, 53, '2006-02-14 08:01:28', '1970-05-02 05:56:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (52, 34, 56, '1989-04-18 16:35:46', '1992-12-30 20:00:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (53, 29, 2, '1973-01-17 00:14:31', '1980-09-11 19:52:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (53, 93, 55, '2007-01-14 10:49:38', '1984-07-09 02:44:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (54, 90, 6, '1999-07-03 13:42:46', '1991-01-05 20:36:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (55, 8, 4, '2005-03-20 16:38:59', '1977-02-24 20:33:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (55, 39, 62, '2002-03-17 00:18:00', '2010-09-09 10:01:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (56, 68, 58, '1978-07-26 23:48:31', '1996-03-24 16:33:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 18, 74, '2005-05-01 16:59:39', '1986-03-07 00:50:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 53, 21, '2003-05-06 22:22:57', '1972-03-03 10:54:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (60, 9, 68, '1991-12-26 06:25:34', '2012-02-12 04:39:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (60, 70, 50, '2014-12-12 02:05:23', '2013-04-23 23:12:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (62, 60, 62, '2003-11-11 16:35:13', '1992-09-22 15:11:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (63, 22, 82, '2001-12-05 23:27:04', '1985-11-22 10:33:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 77, 34, '1980-01-19 21:57:45', '1994-09-05 22:33:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 98, 23, '2015-09-07 02:21:18', '1976-05-13 05:26:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 80, 36, '1996-12-12 11:57:09', '1995-02-13 06:53:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (66, 25, 77, '2018-02-27 14:14:28', '2010-10-21 06:22:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 86, 30, '1974-01-12 23:30:04', '1989-07-28 22:30:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 58, 27, '2014-01-26 14:41:42', '1988-01-12 01:14:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 13, 35, '2012-11-01 09:55:10', '2006-12-15 14:58:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (72, 71, 25, '2017-07-15 19:19:32', '1978-08-04 06:09:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 29, 64, '1978-01-20 08:09:54', '2018-08-27 04:06:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 49, 10, '2003-01-16 00:29:17', '1974-10-22 13:38:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 66, 93, '2001-02-26 22:05:03', '2003-05-14 05:11:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 87, 80, '2011-09-02 10:27:33', '2005-09-11 12:15:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 42, 8, '2006-01-27 12:05:20', '1973-07-25 02:59:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 89, 9, '1971-09-30 00:30:03', '1983-04-10 15:54:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 67, 60, '2016-11-06 13:29:35', '1994-05-20 01:02:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 23, 75, '2014-12-20 01:45:47', '1988-11-29 08:39:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 94, 95, '1986-02-20 14:42:15', '1988-10-26 20:04:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 60, 33, '2000-07-25 02:19:55', '1996-03-25 01:49:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 85, 65, '2014-10-29 04:39:15', '2013-04-04 14:21:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 99, 71, '2014-01-01 01:44:16', '2016-02-20 18:15:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (85, 95, 73, '2013-12-25 00:27:47', '1993-06-19 03:31:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 8, 40, '1992-01-03 13:00:07', '1984-01-28 17:02:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 76, 11, '2013-10-01 20:03:20', '1977-10-20 15:48:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 38, 63, '2006-03-22 07:35:12', '1982-10-02 13:49:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 84, 30, '2016-11-09 11:44:05', '2019-11-25 12:20:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 20, 80, '1996-03-11 10:04:18', '2009-05-01 07:48:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 65, 60, '2011-05-07 15:15:45', '2016-05-09 04:46:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 75, 34, '1988-02-03 02:35:56', '2004-01-31 04:31:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 86, 78, '2001-10-26 04:26:36', '1976-11-06 21:48:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 8, 52, '2013-03-06 21:22:29', '1984-06-16 15:27:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 16, 32, '1977-04-06 20:49:42', '2003-08-15 23:36:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 19, 24, '2010-03-30 10:02:35', '2016-01-05 21:31:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 49, 31, '2014-08-07 05:38:34', '1986-02-12 23:21:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 7, 75, '1984-01-02 09:14:48', '1993-05-24 05:54:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (98, 18, 22, '2003-12-03 02:12:08', '1997-01-29 03:56:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 77, 43, '2001-11-25 22:16:11', '2016-09-18 07:19:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 98, 46, '1975-12-09 16:26:58', '2009-04-21 18:09:54');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (79, 'a');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (92, 'ad');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (36, 'alias');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (83, 'aliquam');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (56, 'aliquid');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (65, 'amet');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (62, 'assumenda');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (81, 'at');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (85, 'atque');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (35, 'aut');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (98, 'autem');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (77, 'beatae');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (22, 'commodi');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (19, 'consectetur');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (87, 'consequatur');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (90, 'consequuntur');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (28, 'corrupti');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (80, 'cumque');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (86, 'debitis');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (46, 'deleniti');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (93, 'deserunt');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (74, 'dignissimos');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (94, 'distinctio');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (64, 'dolor');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (8, 'dolore');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (48, 'dolorem');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (59, 'dolores');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (24, 'doloribus');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (73, 'ducimus');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (89, 'ea');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (88, 'eaque');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (100, 'earum');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (39, 'eos');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (50, 'est');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (13, 'et');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (43, 'eum');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (18, 'eveniet');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (53, 'expedita');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (40, 'explicabo');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (7, 'facere');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (47, 'fugiat');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (75, 'fugit');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (55, 'hic');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (58, 'in');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (99, 'ipsam');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (27, 'laudantium');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (26, 'magnam');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (96, 'maiores');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (6, 'maxime');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (17, 'molestiae');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (41, 'nihil');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (31, 'nisi');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (60, 'nobis');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (37, 'non');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (25, 'nostrum');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (91, 'nulla');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (72, 'odit');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (38, 'officiis');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (95, 'omnis');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (68, 'pariatur');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (11, 'perferendis');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (4, 'perspiciatis');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (71, 'placeat');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (42, 'praesentium');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (49, 'provident');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (32, 'quae');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (20, 'quaerat');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (21, 'quasi');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (54, 'qui');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (10, 'quia');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (45, 'quibusdam');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (63, 'quidem');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (29, 'quis');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (33, 'quo');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (84, 'quod');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (51, 'reiciendis');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (70, 'rem');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (78, 'repellat');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (23, 'repellendus');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (5, 'reprehenderit');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (2, 'rerum');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (76, 'saepe');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (14, 'sed');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (97, 'sequi');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (67, 'similique');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (3, 'sint');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (34, 'sit');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (61, 'soluta');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (1, 'sunt');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (16, 'suscipit');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (66, 'tempore');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (82, 'temporibus');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (44, 'totam');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (12, 'ut');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (15, 'vel');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (9, 'velit');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (69, 'veritatis');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (52, 'vitae');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (57, 'voluptas');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (30, 'voluptatem');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `media_type_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'tempore', 5297576, NULL, 1, '1975-11-12 06:53:39', '1996-01-08 02:40:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'qui', 74933, NULL, 2, '2012-11-29 19:58:03', '1987-07-30 11:00:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'quis', 630893, NULL, 3, '1970-08-06 03:06:58', '2012-09-02 04:09:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'possimus', 9252, NULL, 4, '1989-03-23 10:33:27', '2006-07-19 23:11:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'et', 95274035, NULL, 5, '2010-12-20 08:29:21', '1978-07-18 14:29:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'est', 82, NULL, 6, '1970-12-19 23:35:18', '1970-08-28 22:37:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'nihil', 144075552, NULL, 7, '2000-12-13 11:24:35', '1982-04-15 14:41:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'quis', 56, NULL, 8, '1981-01-09 12:07:17', '2020-03-30 20:41:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'aut', 3616165, NULL, 9, '1998-05-26 10:47:28', '2000-06-27 11:47:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'consequatur', 70, NULL, 10, '1991-05-18 07:35:32', '1984-06-14 00:13:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'reiciendis', 260197071, NULL, 11, '1977-02-14 23:22:16', '2008-02-10 07:05:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'similique', 33017760, NULL, 12, '2019-01-13 14:48:10', '2017-09-11 10:33:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'voluptatem', 43, NULL, 13, '1988-10-20 13:53:41', '1988-06-25 18:26:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'minus', 12, NULL, 14, '1971-02-15 08:36:58', '2002-10-13 03:22:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'est', 58172973, NULL, 15, '1975-05-06 06:32:07', '2012-07-03 17:11:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'qui', 12, NULL, 16, '2019-02-27 14:48:25', '2011-05-30 20:15:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'voluptas', 2, NULL, 17, '2019-12-29 03:53:46', '1988-10-24 05:19:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'quos', 537221, NULL, 18, '2014-06-16 04:18:28', '1990-02-04 21:58:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'a', 5412, NULL, 19, '1970-03-18 16:22:45', '1983-12-05 20:14:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'modi', 46, NULL, 20, '1976-04-20 19:48:31', '1975-05-26 22:21:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'at', 956353, NULL, 21, '2010-11-21 05:18:20', '1986-10-18 02:56:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'neque', 4886, NULL, 22, '1985-12-16 08:56:37', '1988-12-01 21:59:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'nobis', 853, NULL, 23, '1988-05-26 13:00:44', '1989-04-05 16:55:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'accusantium', 16226895, NULL, 24, '1988-06-18 00:42:44', '1979-08-15 17:12:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'et', 0, NULL, 25, '1990-08-30 17:40:39', '1982-08-08 09:44:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'sequi', 992, NULL, 26, '1971-01-18 21:31:33', '1987-07-29 16:17:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'qui', 0, NULL, 27, '2001-06-23 20:14:25', '2000-04-03 09:09:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'ullam', 418, NULL, 28, '2009-06-18 03:52:11', '2006-05-14 23:05:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'voluptate', 655645, NULL, 29, '1976-01-16 23:06:15', '1993-08-01 06:44:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'rerum', 314, NULL, 30, '1976-02-06 10:30:10', '2002-11-23 18:48:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'ut', 569095, NULL, 31, '2012-06-21 11:58:39', '1973-08-11 12:45:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'aperiam', 284, NULL, 32, '2019-03-02 09:05:31', '2009-06-27 01:17:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'blanditiis', 3250618, NULL, 33, '2019-10-21 07:06:30', '2011-11-29 11:09:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'a', 8, NULL, 34, '1999-10-30 08:56:08', '1974-10-11 22:41:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'nisi', 266, NULL, 35, '2008-01-25 22:20:30', '1978-05-01 18:54:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'et', 574371, NULL, 36, '1992-04-11 21:51:49', '2010-02-18 09:29:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'eum', 7, NULL, 37, '1990-06-15 01:57:48', '2019-09-29 15:06:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'earum', 8563489, NULL, 38, '1991-02-09 20:29:25', '1997-03-28 00:56:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'ex', 97205, NULL, 39, '2009-11-30 06:23:26', '1989-05-01 12:43:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'iure', 75, NULL, 40, '2003-04-19 11:02:02', '1977-11-07 19:51:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'aut', 48, NULL, 41, '1987-06-04 16:48:42', '2003-01-29 10:51:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'suscipit', 7200920, NULL, 42, '1982-07-10 23:13:49', '2001-02-18 07:24:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'eum', 7414369, NULL, 43, '2016-05-09 03:16:20', '1977-12-10 23:20:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'est', 59589685, NULL, 44, '2019-04-25 23:38:35', '1998-03-30 02:45:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'voluptas', 7017236, NULL, 45, '2015-05-06 18:09:36', '2012-10-26 09:27:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'vitae', 502713404, NULL, 46, '1988-05-13 01:37:46', '1974-08-07 11:20:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'eum', 23, NULL, 47, '1987-03-13 17:45:41', '2018-11-08 23:59:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'suscipit', 663846, NULL, 48, '1974-12-12 07:41:21', '2019-05-27 11:41:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'ea', 0, NULL, 49, '2010-12-05 12:57:49', '2001-07-24 13:24:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'reprehenderit', 517, NULL, 50, '2005-12-07 01:35:46', '1994-11-09 10:43:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'et', 12623, NULL, 51, '2016-02-16 05:35:32', '2019-04-14 02:35:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'rerum', 929862, NULL, 52, '1989-07-23 16:06:37', '2006-03-22 15:28:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'amet', 10, NULL, 53, '1977-09-04 19:41:06', '1984-09-05 21:29:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'dolorum', 458, NULL, 54, '1976-11-21 14:31:14', '2015-11-26 11:28:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'quaerat', 52094842, NULL, 55, '1995-07-07 07:34:54', '1996-09-17 11:51:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'eius', 41288, NULL, 56, '1994-04-19 03:22:22', '1990-03-19 14:44:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'ab', 51050371, NULL, 57, '1980-10-20 00:15:09', '1970-11-02 21:16:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'sit', 29056360, NULL, 58, '1982-06-30 07:32:10', '2000-07-11 19:14:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'harum', 9898305, NULL, 59, '1991-10-02 08:46:34', '2014-07-20 10:41:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'ad', 691, NULL, 60, '1974-08-11 07:23:35', '2008-08-26 06:24:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'nobis', 32, NULL, 61, '2018-12-04 15:04:30', '1998-01-22 02:14:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'nulla', 748, NULL, 62, '1982-06-03 01:26:50', '1987-01-14 08:41:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'et', 47, NULL, 63, '2014-10-25 10:02:28', '2000-03-27 00:46:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'sunt', 2125, NULL, 64, '1985-05-19 07:54:19', '2011-06-15 09:41:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'dolore', 697, NULL, 65, '2015-01-11 09:44:16', '1977-06-18 21:36:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'eum', 312665941, NULL, 66, '1981-01-01 21:24:07', '1970-10-09 20:52:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'sit', 2, NULL, 67, '1988-02-23 21:32:31', '1978-05-22 21:54:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'mollitia', 693858780, NULL, 68, '1994-04-26 10:23:15', '1976-01-27 01:40:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'voluptatem', 6, NULL, 69, '1986-03-19 03:54:54', '1987-12-15 22:12:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'est', 2, NULL, 70, '2009-10-27 06:40:50', '2019-06-28 10:49:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'excepturi', 210, NULL, 71, '1976-02-14 20:08:40', '2016-11-27 23:54:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'tempore', 909551864, NULL, 72, '1979-06-22 04:58:07', '2015-01-12 09:36:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'et', 599922332, NULL, 73, '1977-09-03 05:31:25', '1980-02-23 07:58:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'quae', 0, NULL, 74, '2000-08-06 19:15:45', '2003-10-19 03:42:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'mollitia', 0, NULL, 75, '1997-06-24 03:12:41', '1982-11-23 19:52:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'ipsum', 540007, NULL, 76, '1972-08-02 21:55:05', '2005-06-10 22:27:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'dignissimos', 36, NULL, 77, '1984-12-10 10:39:40', '2011-12-18 05:25:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'dolor', 14, NULL, 78, '2003-03-28 05:21:30', '1984-06-22 11:38:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'vitae', 2, NULL, 79, '2011-06-03 00:02:12', '1983-12-16 01:40:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'molestiae', 9363922, NULL, 80, '1990-04-14 09:23:51', '1990-05-18 16:18:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'magnam', 822, NULL, 81, '2011-01-05 04:11:15', '1981-12-01 12:02:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'nostrum', 871440, NULL, 82, '2015-10-22 14:25:16', '2003-05-17 05:39:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'sequi', 347741, NULL, 83, '1991-04-04 17:01:24', '1975-05-20 17:59:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'corporis', 256223603, NULL, 84, '1988-08-29 18:56:09', '1975-04-26 15:25:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'et', 77552, NULL, 85, '2019-02-20 00:38:59', '2012-04-04 04:25:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'sit', 217, NULL, 86, '1970-04-24 02:55:53', '1999-01-04 19:59:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'necessitatibus', 276182767, NULL, 87, '1974-05-12 19:38:24', '2003-01-24 03:41:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'vel', 3728761, NULL, 88, '2002-09-06 19:34:34', '2011-07-31 13:44:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'aut', 160664, NULL, 89, '1996-02-10 06:48:52', '2001-10-20 18:25:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'asperiores', 946812801, NULL, 90, '1976-10-15 22:07:27', '2014-08-01 22:20:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'dolor', 749323, NULL, 91, '2014-10-05 20:40:47', '2005-02-17 23:55:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'dicta', 13685, NULL, 92, '2004-06-29 17:19:53', '1982-07-17 15:03:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'numquam', 4912280, NULL, 93, '2005-05-18 16:32:26', '1971-12-09 07:11:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'at', 5, NULL, 94, '2013-01-30 02:36:17', '2009-09-24 01:48:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'velit', 216134, NULL, 95, '1989-09-02 21:29:50', '1997-01-27 15:19:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'ut', 3772710, NULL, 96, '2017-07-20 12:57:25', '1993-06-11 14:09:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'fugit', 78231, NULL, 97, '1970-08-09 05:37:45', '2005-11-24 01:15:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'quam', 982, NULL, 98, '1999-11-01 03:31:15', '2003-02-18 23:57:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'dolor', 9109842, NULL, 99, '1981-04-22 00:16:52', '1979-06-01 12:57:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'sit', 53, NULL, 100, '1996-09-19 15:06:52', '1971-06-05 09:27:08');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (19, 'a');
INSERT INTO `media_types` (`id`, `name`) VALUES (86, 'accusantium');
INSERT INTO `media_types` (`id`, `name`) VALUES (23, 'ad');
INSERT INTO `media_types` (`id`, `name`) VALUES (10, 'alias');
INSERT INTO `media_types` (`id`, `name`) VALUES (87, 'architecto');
INSERT INTO `media_types` (`id`, `name`) VALUES (50, 'aspernatur');
INSERT INTO `media_types` (`id`, `name`) VALUES (47, 'assumenda');
INSERT INTO `media_types` (`id`, `name`) VALUES (7, 'at');
INSERT INTO `media_types` (`id`, `name`) VALUES (33, 'atque');
INSERT INTO `media_types` (`id`, `name`) VALUES (20, 'aut');
INSERT INTO `media_types` (`id`, `name`) VALUES (38, 'blanditiis');
INSERT INTO `media_types` (`id`, `name`) VALUES (48, 'consequatur');
INSERT INTO `media_types` (`id`, `name`) VALUES (78, 'consequuntur');
INSERT INTO `media_types` (`id`, `name`) VALUES (24, 'corrupti');
INSERT INTO `media_types` (`id`, `name`) VALUES (60, 'culpa');
INSERT INTO `media_types` (`id`, `name`) VALUES (74, 'cumque');
INSERT INTO `media_types` (`id`, `name`) VALUES (93, 'debitis');
INSERT INTO `media_types` (`id`, `name`) VALUES (29, 'deleniti');
INSERT INTO `media_types` (`id`, `name`) VALUES (99, 'deserunt');
INSERT INTO `media_types` (`id`, `name`) VALUES (49, 'dicta');
INSERT INTO `media_types` (`id`, `name`) VALUES (65, 'distinctio');
INSERT INTO `media_types` (`id`, `name`) VALUES (27, 'dolor');
INSERT INTO `media_types` (`id`, `name`) VALUES (31, 'dolorem');
INSERT INTO `media_types` (`id`, `name`) VALUES (42, 'dolores');
INSERT INTO `media_types` (`id`, `name`) VALUES (92, 'dolorum');
INSERT INTO `media_types` (`id`, `name`) VALUES (61, 'ducimus');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'ea');
INSERT INTO `media_types` (`id`, `name`) VALUES (17, 'eius');
INSERT INTO `media_types` (`id`, `name`) VALUES (85, 'eligendi');
INSERT INTO `media_types` (`id`, `name`) VALUES (70, 'enim');
INSERT INTO `media_types` (`id`, `name`) VALUES (89, 'eos');
INSERT INTO `media_types` (`id`, `name`) VALUES (5, 'est');
INSERT INTO `media_types` (`id`, `name`) VALUES (14, 'et');
INSERT INTO `media_types` (`id`, `name`) VALUES (35, 'eveniet');
INSERT INTO `media_types` (`id`, `name`) VALUES (68, 'ex');
INSERT INTO `media_types` (`id`, `name`) VALUES (45, 'excepturi');
INSERT INTO `media_types` (`id`, `name`) VALUES (64, 'expedita');
INSERT INTO `media_types` (`id`, `name`) VALUES (16, 'facilis');
INSERT INTO `media_types` (`id`, `name`) VALUES (77, 'fugit');
INSERT INTO `media_types` (`id`, `name`) VALUES (83, 'harum');
INSERT INTO `media_types` (`id`, `name`) VALUES (67, 'id');
INSERT INTO `media_types` (`id`, `name`) VALUES (72, 'impedit');
INSERT INTO `media_types` (`id`, `name`) VALUES (36, 'in');
INSERT INTO `media_types` (`id`, `name`) VALUES (21, 'incidunt');
INSERT INTO `media_types` (`id`, `name`) VALUES (41, 'inventore');
INSERT INTO `media_types` (`id`, `name`) VALUES (39, 'ipsa');
INSERT INTO `media_types` (`id`, `name`) VALUES (91, 'ipsum');
INSERT INTO `media_types` (`id`, `name`) VALUES (13, 'iste');
INSERT INTO `media_types` (`id`, `name`) VALUES (95, 'labore');
INSERT INTO `media_types` (`id`, `name`) VALUES (9, 'laudantium');
INSERT INTO `media_types` (`id`, `name`) VALUES (81, 'libero');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'magnam');
INSERT INTO `media_types` (`id`, `name`) VALUES (18, 'maiores');
INSERT INTO `media_types` (`id`, `name`) VALUES (46, 'minima');
INSERT INTO `media_types` (`id`, `name`) VALUES (66, 'molestiae');
INSERT INTO `media_types` (`id`, `name`) VALUES (56, 'mollitia');
INSERT INTO `media_types` (`id`, `name`) VALUES (52, 'natus');
INSERT INTO `media_types` (`id`, `name`) VALUES (22, 'nemo');
INSERT INTO `media_types` (`id`, `name`) VALUES (40, 'neque');
INSERT INTO `media_types` (`id`, `name`) VALUES (75, 'nesciunt');
INSERT INTO `media_types` (`id`, `name`) VALUES (26, 'nisi');
INSERT INTO `media_types` (`id`, `name`) VALUES (53, 'nobis');
INSERT INTO `media_types` (`id`, `name`) VALUES (79, 'numquam');
INSERT INTO `media_types` (`id`, `name`) VALUES (90, 'occaecati');
INSERT INTO `media_types` (`id`, `name`) VALUES (44, 'officia');
INSERT INTO `media_types` (`id`, `name`) VALUES (82, 'officiis');
INSERT INTO `media_types` (`id`, `name`) VALUES (51, 'omnis');
INSERT INTO `media_types` (`id`, `name`) VALUES (96, 'optio');
INSERT INTO `media_types` (`id`, `name`) VALUES (69, 'perferendis');
INSERT INTO `media_types` (`id`, `name`) VALUES (12, 'praesentium');
INSERT INTO `media_types` (`id`, `name`) VALUES (88, 'provident');
INSERT INTO `media_types` (`id`, `name`) VALUES (37, 'quas');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'quasi');
INSERT INTO `media_types` (`id`, `name`) VALUES (54, 'qui');
INSERT INTO `media_types` (`id`, `name`) VALUES (98, 'quibusdam');
INSERT INTO `media_types` (`id`, `name`) VALUES (76, 'quis');
INSERT INTO `media_types` (`id`, `name`) VALUES (71, 'ratione');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'recusandae');
INSERT INTO `media_types` (`id`, `name`) VALUES (34, 'repellendus');
INSERT INTO `media_types` (`id`, `name`) VALUES (94, 'reprehenderit');
INSERT INTO `media_types` (`id`, `name`) VALUES (15, 'rerum');
INSERT INTO `media_types` (`id`, `name`) VALUES (25, 'sed');
INSERT INTO `media_types` (`id`, `name`) VALUES (73, 'sequi');
INSERT INTO `media_types` (`id`, `name`) VALUES (63, 'similique');
INSERT INTO `media_types` (`id`, `name`) VALUES (80, 'sint');
INSERT INTO `media_types` (`id`, `name`) VALUES (11, 'sit');
INSERT INTO `media_types` (`id`, `name`) VALUES (84, 'suscipit');
INSERT INTO `media_types` (`id`, `name`) VALUES (43, 'tempora');
INSERT INTO `media_types` (`id`, `name`) VALUES (30, 'temporibus');
INSERT INTO `media_types` (`id`, `name`) VALUES (32, 'tenetur');
INSERT INTO `media_types` (`id`, `name`) VALUES (57, 'totam');
INSERT INTO `media_types` (`id`, `name`) VALUES (8, 'ullam');
INSERT INTO `media_types` (`id`, `name`) VALUES (28, 'ut');
INSERT INTO `media_types` (`id`, `name`) VALUES (62, 'vel');
INSERT INTO `media_types` (`id`, `name`) VALUES (100, 'veritatis');
INSERT INTO `media_types` (`id`, `name`) VALUES (58, 'vitae');
INSERT INTO `media_types` (`id`, `name`) VALUES (55, 'voluptas');
INSERT INTO `media_types` (`id`, `name`) VALUES (97, 'voluptatem');
INSERT INTO `media_types` (`id`, `name`) VALUES (59, 'voluptates');
INSERT INTO `media_types` (`id`, `name`) VALUES (6, 'voluptatibus');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, '', '2005-09-04', 'South Mackshire', '24', '2002-06-07 11:06:25', '1972-09-22 05:07:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, '', '1979-04-29', 'Port Cydneyfurt', '684', '1984-11-28 08:11:39', '1983-06-18 02:51:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, '', '1970-01-17', 'New Hobartland', '756156661', '2009-06-03 23:41:17', '1993-05-11 00:52:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, '', '2012-05-28', 'Emardstad', '583945', '1998-01-08 23:22:10', '1974-05-16 04:54:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, '', '2002-05-30', 'Paulmouth', '7494655', '1981-02-17 08:34:38', '2000-04-11 05:23:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, '', '1989-02-28', 'Reichelville', '476', '2008-06-20 18:18:57', '2011-06-27 03:09:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, '', '1978-04-03', 'New Amosfurt', '40', '2008-04-10 18:14:40', '1988-01-13 23:29:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, '', '2010-04-12', 'Wisokyburgh', '', '1993-12-06 13:17:24', '1990-02-15 21:42:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, '', '1977-04-25', 'Port Janae', '4', '2006-01-10 23:34:03', '1994-04-19 02:29:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, '', '2008-12-08', 'North Ianland', '8', '1992-05-20 05:30:58', '2000-09-06 15:03:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, '', '1989-01-28', 'Kadeview', '232203', '1981-04-21 22:06:02', '1996-07-04 00:04:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, '', '1978-11-03', 'Stantonfurt', '1924', '2017-02-15 12:04:39', '2003-07-10 00:09:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, '', '1980-09-28', 'Port Lurline', '', '1991-06-20 13:43:52', '1982-10-06 15:57:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, '', '1980-11-01', 'South Abagail', '8429289', '2012-04-25 13:29:47', '1985-09-15 05:17:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, '', '1981-04-12', 'Tellychester', '27825', '2001-10-10 15:10:13', '2015-09-10 06:14:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, '', '1978-08-01', 'Lake Virgiebury', '7000490', '1979-05-23 01:41:07', '1987-04-16 09:14:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, '', '2019-10-17', 'New Arvidborough', '57346921', '1991-03-29 11:26:35', '2011-06-02 02:19:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, '', '2003-09-25', 'West Leonardo', '983', '1976-08-31 17:44:27', '2010-12-31 07:48:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, '', '1977-03-22', 'Watersshire', '', '2008-12-05 11:52:24', '2005-06-14 08:09:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, '', '1997-04-11', 'North Mara', '49', '2000-10-05 14:13:14', '2015-12-13 07:30:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, '', '2004-08-05', 'Port Osbaldo', '48', '2008-07-15 17:11:40', '1977-01-14 06:59:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, '', '1994-06-18', 'Port Jeffry', '540004', '1976-11-18 11:58:45', '1981-12-26 13:07:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, '', '1999-05-30', 'Lake Libby', '', '1970-07-13 20:13:23', '1983-05-07 09:32:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, '', '1993-10-11', 'Boehmstad', '328', '1982-08-26 20:06:43', '1972-07-11 04:12:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, '', '2013-07-18', 'Mollyborough', '4', '1979-03-19 08:21:16', '1996-11-04 20:40:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, '', '1996-05-04', 'Laurettamouth', '713830487', '1986-12-21 16:36:48', '2007-01-08 05:48:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, '', '2005-05-06', 'Rosenbaumberg', '8606085', '2018-02-08 18:06:16', '1977-06-05 11:49:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, '', '1983-06-21', 'Crystaltown', '312585', '1996-11-01 16:54:34', '1995-10-17 19:48:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, '', '2010-11-22', 'Fernestad', '', '1973-01-01 12:56:58', '2005-09-26 22:36:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, '', '1993-12-23', 'Goodwinville', '9025', '1977-12-03 01:31:14', '1980-03-07 14:24:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, '', '1979-04-03', 'Osinskiside', '', '1977-11-20 08:57:17', '1990-03-03 15:22:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, '', '2020-03-08', 'Lake Clifford', '33133', '2001-10-27 02:49:22', '2010-03-10 11:32:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, '', '1977-09-05', 'East Bulahbury', '4376248', '2006-07-28 05:57:41', '1990-04-11 16:43:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, '', '2001-04-30', 'Montymouth', '', '1972-11-28 21:26:16', '1979-06-30 02:45:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, '', '1970-04-02', 'North Grover', '46140891', '1984-06-22 23:09:24', '1979-03-03 05:58:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, '', '1975-04-13', 'Lefflerland', '187490', '1993-07-08 08:12:12', '2016-03-22 13:40:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, '', '1982-02-19', 'Noestad', '1', '2011-07-05 16:44:27', '2003-10-23 07:39:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, '', '2018-06-01', 'New Joannyburgh', '556442518', '1997-04-16 23:20:38', '1982-10-30 22:47:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, '', '2015-06-29', 'Port Itzelfort', '3896843', '2003-11-09 19:04:10', '2001-09-17 01:59:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, '', '1998-10-28', 'East Martine', '15076', '1979-04-23 19:15:26', '1995-01-02 10:25:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, '', '1996-03-15', 'Welchside', '975851', '2013-11-09 01:48:12', '2016-10-01 12:29:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, '', '2013-08-16', 'Lake Wava', '', '1996-11-24 11:01:31', '2014-04-30 20:20:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, '', '1970-03-12', 'Stephanieville', '51', '1996-04-19 20:44:04', '2014-03-27 20:28:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, '', '1991-09-26', 'Lynchport', '308', '2010-08-14 05:29:51', '2004-02-21 14:52:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, '', '1978-04-28', 'Letaport', '85440563', '2014-02-14 08:34:33', '2012-02-02 17:13:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, '', '2007-12-18', 'Nicolasbury', '431', '2012-11-26 09:31:47', '2008-03-18 00:42:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, '', '1970-08-04', 'East Albertaborough', '43681125', '2018-06-27 01:30:53', '1978-02-21 12:17:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, '', '1977-03-13', 'Beauview', '38918712', '1999-09-10 10:55:33', '1970-06-24 08:26:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, '', '1979-09-22', 'McCulloughmouth', '15155', '2000-05-26 19:53:22', '2010-10-05 17:09:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, '', '1993-02-01', 'Framitown', '77007725', '1978-11-23 12:08:28', '2006-05-28 10:40:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, '', '2000-02-05', 'Carrieview', '99620', '1979-04-15 12:06:18', '2014-10-19 02:03:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, '', '1992-09-04', 'East Adrienneberg', '99138', '1989-09-22 02:48:53', '1982-06-01 21:43:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, '', '2000-05-08', 'Lilianeview', '55', '2003-01-10 09:04:23', '2006-05-26 19:01:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, '', '2004-02-15', 'Paigeport', '865', '2006-07-30 22:10:49', '2011-01-20 13:59:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, '', '1980-06-01', 'South Lamont', '81409252', '2013-01-28 00:19:49', '2006-01-30 18:56:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, '', '1988-10-29', 'Port Luther', '86232947', '1972-04-11 11:56:17', '1986-04-07 15:34:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, '', '1982-06-15', 'North Estelleborough', '3', '1983-05-01 02:25:27', '2000-07-19 18:44:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, '', '2012-05-04', 'Wizaville', '19864', '1974-08-15 23:39:56', '2013-07-26 15:34:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, '', '1983-05-25', 'Aprilhaven', '', '2014-04-08 23:39:59', '1981-07-02 17:10:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, '', '2003-03-08', 'Gerholdton', '', '1975-07-26 18:33:11', '1999-10-12 23:00:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, '', '1973-01-29', 'Jeffereymouth', '14', '1981-06-21 07:18:20', '1984-03-24 19:56:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, '', '1979-03-28', 'Evemouth', '557948', '1993-07-17 04:40:02', '1995-10-24 06:21:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, '', '1999-05-23', 'Brennaland', '5733723', '2018-02-07 11:25:10', '1972-04-20 21:39:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, '', '2000-02-04', 'Dallinside', '992144325', '1980-03-28 05:32:36', '2011-06-05 17:37:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, '', '2015-01-31', 'Jesseberg', '8201', '1976-10-11 03:49:55', '1983-04-16 22:13:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, '', '2014-11-01', 'Port Wilberland', '20181', '2000-06-27 21:49:10', '1995-04-14 22:22:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, '', '2016-05-03', 'Hillltown', '89965865', '1997-07-12 14:09:17', '1993-05-13 02:10:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, '', '2004-10-26', 'New Loy', '821', '1992-02-20 16:24:37', '1973-09-28 16:02:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, '', '2003-08-17', 'Lake Lexi', '96434804', '2012-01-02 12:05:02', '1990-07-01 19:23:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, '', '2019-08-20', 'Stehrburgh', '64275960', '2010-12-25 23:48:51', '1989-03-29 00:50:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, '', '1985-05-04', 'Port Donniefort', '69124', '1986-04-29 04:57:50', '1988-09-22 19:52:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, '', '2018-12-15', 'West Lourdes', '4', '2003-05-10 07:32:53', '1980-03-26 17:29:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, '', '2000-09-21', 'Rueckerburgh', '751867', '1987-12-10 19:54:20', '2010-11-11 19:56:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, '', '2014-05-25', 'Lewismouth', '586', '1993-01-29 02:45:27', '2020-02-03 04:53:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, '', '1998-03-19', 'East Geraldineborough', '3141', '2019-10-14 11:25:20', '1988-07-04 16:13:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, '', '2006-12-28', 'Lakinville', '992636', '1994-08-23 12:34:41', '1987-08-18 05:26:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, '', '1974-07-08', 'Gutkowskistad', '39', '2006-10-10 00:15:53', '1996-02-12 21:42:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, '', '1979-10-08', 'Raphaellebury', '523', '1985-08-29 03:31:36', '1999-05-06 05:57:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, '', '1995-12-10', 'North Sarah', '950', '2006-02-21 01:45:30', '1985-03-29 07:18:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, '', '1978-11-29', 'East Cassandre', '3', '1975-06-04 11:58:58', '2018-11-03 09:46:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, '', '2003-07-28', 'Schmelerville', '647439', '2018-08-29 10:34:43', '1981-04-27 03:37:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, '', '1997-09-12', 'New Dudley', '544720055', '1992-01-14 10:20:05', '1972-05-28 09:28:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, '', '1998-11-29', 'Gerlachside', '302964', '1996-11-26 06:24:08', '1991-02-03 06:11:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, '', '2007-10-16', 'East Alvahmouth', '8', '1974-05-03 16:01:41', '2003-04-29 12:40:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, '', '2008-09-06', 'North Tyshawnport', '', '1996-09-13 01:18:11', '1971-04-15 20:49:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, '', '1990-07-02', 'Arturofurt', '4', '1981-01-15 02:04:13', '1996-05-14 06:33:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, '', '1993-01-20', 'Lake Sigmund', '', '1985-02-25 13:36:49', '1994-12-16 15:40:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, '', '2008-02-12', 'North Cecilemouth', '26634', '1985-02-22 04:52:25', '1998-06-28 11:31:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, '', '1985-04-16', 'New Francescomouth', '501094', '1981-05-30 02:29:58', '1984-07-30 12:13:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, '', '2019-01-11', 'Alexannefurt', '311214', '2000-12-16 01:05:14', '1976-05-02 02:44:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, '', '1992-10-02', 'Titobury', '431963155', '2018-08-01 20:10:37', '1982-12-27 06:31:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, '', '1999-03-08', 'West Waldotown', '94459142', '2013-10-19 23:33:23', '2007-10-13 08:55:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, '', '1994-09-17', 'South Pierreport', '6', '2007-10-06 12:56:58', '2003-08-02 04:25:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, '', '1988-09-03', 'North Hazleborough', '', '1972-04-05 20:42:36', '1982-10-18 17:24:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, '', '2015-11-24', 'New Thea', '98469', '1995-12-13 03:50:48', '2002-01-07 12:32:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, '', '2007-08-02', 'South Wilber', '817', '1987-08-11 02:54:00', '1978-03-31 08:45:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, '', '2019-07-08', 'Wilkinsonstad', '56358069', '2013-01-10 09:17:14', '1974-04-02 23:49:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, '', '1975-08-04', 'New Dereck', '', '2009-04-26 09:54:22', '2011-12-02 15:03:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, '', '1992-09-24', 'New Carolinashire', '1', '2009-02-22 18:56:20', '2008-07-20 08:51:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, '', '2018-01-03', 'Eichmannburgh', '749733', '1990-10-10 06:43:18', '1973-09-13 12:59:21');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Major', 'Murazik', 'charlene.romaguera@example.org', '643-573-1884', '1974-09-17 17:31:15', '2003-02-25 00:15:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Mitchel', 'Smitham', 'jbins@example.com', '08338925069', '1991-01-27 05:51:02', '1997-01-13 06:11:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Haleigh', 'Kiehn', 'daniel.palma@example.com', '864.637.7833x61652', '2016-01-06 06:31:49', '1987-11-09 10:58:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Katrine', 'Cremin', 'fmarquardt@example.com', '1-981-287-5009', '1980-11-09 08:23:01', '2004-04-20 17:00:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Rahsaan', 'Schowalter', 'kfunk@example.org', '829-178-5541x8404', '1987-11-22 11:56:34', '2004-05-14 12:21:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Rachel', 'Rice', 'fwolff@example.net', '709-030-5331x87525', '2003-08-09 16:41:09', '1997-05-23 06:02:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Loren', 'Schumm', 'mrogahn@example.org', '(138)448-2202', '2015-03-08 22:44:48', '1986-02-17 20:28:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Jameson', 'Skiles', 'mervin90@example.org', '170.584.3078', '2014-02-27 14:52:11', '2007-07-17 13:12:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Raina', 'Bauch', 'fdooley@example.org', '(363)504-2127', '1990-02-14 17:10:11', '1992-06-10 03:45:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Alek', 'Mann', 'ho\'hara@example.org', '(789)290-9122', '1974-06-21 15:34:43', '1983-11-14 18:20:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Laurine', 'Leuschke', 'barney40@example.org', '155-001-6869', '1977-02-25 10:32:29', '1982-12-29 08:56:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Casey', 'Pouros', 'braulio.yundt@example.net', '00147021949', '1996-11-25 14:08:06', '1981-03-03 20:44:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Annetta', 'Kohler', 'muriel.schoen@example.org', '069-676-3369x7831', '1973-03-22 18:50:53', '1994-12-28 21:07:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Jace', 'Gibson', 'chauncey.zboncak@example.org', '09077705985', '2007-01-24 02:08:48', '2007-07-07 02:28:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Tate', 'Pfeffer', 'qschmidt@example.org', '1-121-832-6978', '2014-09-09 15:22:05', '2020-02-06 02:39:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Kian', 'Sanford', 'shanon67@example.org', '(680)962-3447x3013', '2000-09-24 19:38:47', '2010-11-06 06:12:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Gloria', 'Jenkins', 'pat76@example.net', '1-164-372-2417x711', '1989-07-03 07:07:17', '2012-08-11 19:48:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Gertrude', 'Abbott', 'martin.little@example.org', '(996)940-9965', '2008-03-09 06:16:05', '1995-08-05 08:15:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Price', 'Schinner', 'haley.rosalia@example.net', '1-232-414-9896x024', '2010-04-15 09:53:46', '2010-02-02 03:54:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Darion', 'Pagac', 'ttremblay@example.com', '1-440-193-7508', '2004-07-05 23:15:36', '2019-06-23 09:51:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Amy', 'Hackett', 'breanne97@example.com', '433.663.8882x14553', '2008-07-23 09:45:10', '2004-07-15 07:15:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Aracely', 'Herzog', 'dortha.jacobi@example.com', '1-023-603-5447', '1982-01-12 08:13:48', '1978-06-02 15:13:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Emmanuelle', 'Sanford', 'ward.tanya@example.net', '1-363-966-2729x175', '1973-12-29 23:06:45', '2015-01-05 13:47:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Everett', 'Stracke', 'jbartell@example.net', '1-240-784-8652x1364', '1970-02-21 17:37:11', '1996-08-24 11:10:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Asa', 'Franecki', 'xnolan@example.org', '04272772124', '1992-11-30 17:39:35', '1973-02-27 04:56:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Viola', 'Vandervort', 'andreanne08@example.com', '468.651.6397x2309', '1986-11-15 15:48:13', '1973-02-22 18:27:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Lilla', 'McDermott', 'murray.westley@example.net', '(987)505-5976', '2004-09-30 09:34:32', '2011-03-21 03:18:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Darlene', 'Aufderhar', 'delbert.emmerich@example.net', '1-308-724-5145', '2001-05-28 08:41:16', '1971-09-12 18:15:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Carolyn', 'Nolan', 'roel92@example.com', '08236044370', '2013-10-14 09:07:04', '2003-03-08 08:30:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Adella', 'Wiza', 'rebeca.murphy@example.org', '(786)781-7316x27176', '2002-05-10 03:34:19', '1983-08-08 01:53:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Ward', 'Lowe', 'armand.davis@example.com', '02492912424', '1982-04-15 21:04:18', '1979-06-20 15:51:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Myra', 'Parker', 'akoelpin@example.net', '320.177.6602', '2011-08-07 19:59:42', '1978-03-16 10:51:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Heber', 'Abernathy', 'connie.raynor@example.net', '717-681-1850x282', '1971-02-19 17:04:54', '1995-06-10 10:18:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Effie', 'Lubowitz', 'vhoeger@example.com', '1-459-818-3666x7596', '1988-04-17 15:07:41', '2011-08-24 23:59:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Mckenzie', 'Adams', 'qshanahan@example.net', '1-788-818-6568x61332', '1975-01-14 13:19:35', '1990-09-18 19:32:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Aimee', 'Greenfelder', 'angelita65@example.org', '598-679-2142x07065', '1980-10-09 23:12:39', '1972-08-07 00:54:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Zella', 'Witting', 'vanessa.hackett@example.com', '519.445.3892', '1971-08-23 15:55:11', '1971-11-26 22:00:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Kirstin', 'Marks', 'marielle19@example.net', '(588)150-3164', '1996-08-17 04:44:31', '2020-01-23 02:11:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Chandler', 'Labadie', 'pemard@example.com', '1-474-309-3842x5481', '1990-05-20 09:47:41', '1971-06-14 09:09:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Eladio', 'Strosin', 'tcummerata@example.net', '+39(7)7236179933', '2019-01-05 15:47:14', '2003-06-06 03:41:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Kim', 'Rau', 'dillan.stokes@example.net', '904-576-8853', '2003-12-19 09:18:59', '1977-06-05 22:20:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Eldred', 'Vandervort', 'brando.stracke@example.net', '(175)865-8525', '1984-06-03 20:15:41', '2005-09-01 17:22:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Renee', 'Rath', 'johnathan.nikolaus@example.com', '(929)491-4463', '1977-12-15 05:38:13', '1971-09-19 16:57:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Ladarius', 'West', 'parker.dulce@example.com', '(865)341-0992', '1980-09-04 21:43:27', '2005-07-01 06:36:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Tressie', 'Abernathy', 'nienow.winifred@example.org', '(565)983-7219', '1995-01-14 06:06:25', '2001-04-12 16:23:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Lamont', 'Wisoky', 'jcummings@example.org', '(002)616-8872x42497', '2000-08-15 02:48:13', '1986-11-24 09:18:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Josie', 'Pollich', 'paolo88@example.org', '322-642-2692', '1972-04-17 01:58:11', '2000-05-05 22:35:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Asa', 'Moore', 'boyd.mertz@example.org', '829.397.1789x25263', '1978-09-23 11:44:13', '2012-03-28 14:13:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Dedric', 'Boyle', 'dashawn43@example.net', '04968466296', '2001-09-11 10:19:15', '2014-01-11 21:04:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Eldora', 'Boehm', 'amalia.vandervort@example.org', '1-544-624-7926x0308', '2003-04-10 09:01:09', '1991-02-06 05:23:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Mohammad', 'Tromp', 'murray.jaunita@example.com', '901.894.9217', '1992-12-04 13:11:13', '1990-11-22 12:02:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Marcia', 'Powlowski', 'jhodkiewicz@example.com', '817-359-8062x9961', '1998-03-14 20:44:13', '1974-07-31 21:54:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Bulah', 'Emmerich', 'roy.eichmann@example.net', '(412)465-3867', '2016-07-29 14:38:58', '1998-09-24 18:44:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Lacy', 'Lowe', 'bberge@example.net', '478.179.6270x798', '1989-06-04 01:39:20', '1981-06-04 06:30:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Neva', 'Brekke', 'delmer.boyle@example.com', '03272371001', '1990-09-28 01:09:57', '1973-08-03 23:38:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Kade', 'Weissnat', 'spencer.arvel@example.org', '+62(8)4209373955', '1992-05-15 07:08:51', '1994-09-18 15:59:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Kareem', 'Altenwerth', 'xeffertz@example.org', '06276542066', '2010-06-20 01:17:50', '1993-07-08 11:08:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Billie', 'Schowalter', 'igutkowski@example.com', '070-858-0135x908', '1975-01-07 12:37:38', '2007-10-10 10:27:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Angela', 'Marks', 'lilyan.schoen@example.com', '047.497.9042', '2016-08-07 02:36:26', '2018-10-03 10:37:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Ava', 'Kub', 'baby.buckridge@example.com', '(164)757-2689x11243', '1988-08-16 05:09:50', '1994-12-28 01:01:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Kaley', 'Kris', 'effertz.krystal@example.org', '613-686-5011', '2013-08-18 08:58:48', '2004-01-12 03:26:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Haleigh', 'Schmitt', 'ostroman@example.org', '000-224-1015x971', '1987-03-30 11:17:12', '2013-05-22 03:20:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Leonard', 'Stiedemann', 'sborer@example.net', '+03(6)0507343836', '1975-03-01 16:34:48', '1987-06-04 16:57:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Chanel', 'Hackett', 'kulas.preston@example.com', '1-780-230-4788x390', '2012-06-19 01:13:23', '2010-05-11 08:06:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Tianna', 'Harvey', 'aglae00@example.com', '(796)233-2941x0032', '1974-01-11 21:11:25', '1978-07-03 10:52:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Filomena', 'Koelpin', 'drempel@example.net', '(764)060-0484x274', '1970-08-05 22:38:54', '2001-12-24 21:37:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Nia', 'Reichert', 'anne.von@example.com', '640-704-2471', '1984-04-17 09:57:12', '1979-12-25 19:00:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Khalil', 'Streich', 'mlubowitz@example.org', '677-318-2886x855', '1987-10-13 05:26:21', '2012-11-02 21:08:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Robin', 'Schmitt', 'patrick.hermann@example.net', '08935605558', '1984-10-09 05:43:11', '2014-08-24 07:29:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Hertha', 'McDermott', 'marcelle.waelchi@example.com', '(660)283-7723x2398', '1995-01-05 09:30:51', '1976-09-13 15:30:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Herminia', 'VonRueden', 'roderick.welch@example.org', '1-344-986-1146x089', '1995-06-01 06:20:43', '2015-03-13 17:07:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Golden', 'Steuber', 'dorris.cronin@example.com', '662.466.0798x3736', '1986-12-31 03:30:59', '1973-12-06 21:49:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Agustina', 'Okuneva', 'yhansen@example.com', '+69(1)6867211496', '1991-03-02 01:17:19', '2007-05-23 21:19:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Corbin', 'Schowalter', 'rdooley@example.org', '+36(6)4155585304', '1990-07-29 17:41:09', '1984-09-09 10:36:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Harmony', 'Champlin', 'keeling.brendan@example.net', '608.698.2424', '2013-01-31 03:50:56', '1987-08-31 03:55:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Matilde', 'VonRueden', 'bradtke.shanel@example.net', '228-480-8047x92383', '2000-10-19 03:16:53', '1997-04-01 15:47:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Murphy', 'Corkery', 'rhianna.donnelly@example.com', '1-190-620-2374x6993', '1973-08-31 09:45:38', '1978-07-29 06:54:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Rupert', 'Terry', 'marquardt.patsy@example.org', '484-245-9238', '2005-02-03 01:38:12', '1981-07-26 20:31:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Marcella', 'Murray', 'cweber@example.net', '(801)852-1264', '2004-08-16 22:41:48', '1999-03-13 09:10:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Ray', 'Rolfson', 'towne.josefa@example.net', '1-378-781-5694', '2007-05-25 20:06:39', '1985-12-23 07:10:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Wyman', 'Schimmel', 'kcronin@example.org', '1-753-519-0593x7539', '1982-06-07 07:10:59', '2006-12-02 06:55:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Genevieve', 'Huels', 'lloyd.schmeler@example.org', '(832)681-2943x18122', '1983-02-05 05:30:35', '2010-12-16 10:11:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'America', 'Breitenberg', 'marisol.ruecker@example.com', '(810)664-7452x64199', '1981-02-07 00:06:54', '1999-10-17 04:29:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Joanny', 'Dooley', 'ocie31@example.com', '1-964-509-1277', '1993-08-30 19:59:27', '1970-09-18 00:30:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Zora', 'Mraz', 'liana.crona@example.net', '905-227-5733', '1990-01-27 12:05:23', '1978-08-31 05:04:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Josefa', 'Effertz', 'reinger.joy@example.com', '762-389-4445x43230', '1991-02-05 07:04:06', '2002-06-04 11:29:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Myriam', 'Hyatt', 'hemmerich@example.org', '347-258-3319x191', '2002-07-08 01:10:20', '2007-02-25 01:58:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Michaela', 'Daugherty', 'strosin.adrain@example.org', '260.840.2933x63141', '2005-10-13 08:30:38', '1977-04-01 21:19:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Favian', 'Reilly', 'mclaughlin.jean@example.net', '08364698737', '1977-03-16 03:44:50', '1995-07-14 20:35:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Else', 'Bailey', 'jast.nikolas@example.org', '426.532.9471x717', '2011-07-21 21:08:26', '1971-08-20 06:08:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Ara', 'Emard', 'hoeger.elise@example.org', '648-708-5469x069', '2003-12-28 16:35:33', '2005-08-18 11:20:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Name', 'Rutherford', 'timmy44@example.com', '254.955.6312x8378', '2013-01-01 09:50:24', '2011-02-19 00:42:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Jayson', 'Wehner', 'wilderman.ernie@example.com', '+56(2)8048322911', '1986-10-08 14:16:21', '1982-01-30 08:57:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Blake', 'Deckow', 'mossie97@example.com', '1-874-622-8347x70508', '1989-10-20 22:51:30', '1991-08-16 16:32:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Aimee', 'O\'Kon', 'jbatz@example.net', '489-812-5682x777', '2017-07-27 08:50:06', '2007-02-25 11:44:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Yesenia', 'Hahn', 'johnson82@example.org', '1-363-690-4377', '1998-04-28 14:02:49', '2014-01-17 21:58:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Cydney', 'Hamill', 'schneider.russel@example.org', '220.433.8893x4112', '1992-04-29 10:25:19', '1970-02-12 05:21:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Callie', 'Klocko', 'wolf.isaiah@example.com', '1-273-361-1705x151', '1980-03-26 09:05:54', '2008-01-10 14:06:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Ruben', 'Torp', 'claudia00@example.org', '365-673-3127', '1982-06-09 19:06:18', '2008-03-23 12:30:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Liliane', 'Feeney', 'mitchel.ernser@example.com', '1-772-025-9418x296', '1990-10-01 19:07:13', '1976-09-08 21:58:54');


