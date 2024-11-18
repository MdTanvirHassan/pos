

CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_no` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO accounts VALUES("1","11111","Sales Account","1000","1000","this is first account","0","0","2018-12-18 14:58:02","2022-07-16 07:53:55");
INSERT INTO accounts VALUES("3","21211","Sa","0","0","","0","0","2018-12-18 14:58:56","2022-07-16 07:54:06");
INSERT INTO accounts VALUES("5","67665677","Ventas","1000","1000","","0","0","2022-07-16 07:53:28","2023-11-12 23:25:14");
INSERT INTO accounts VALUES("6","76344547","Compras","1000","1000","","","0","2022-07-16 07:54:36","2023-11-12 23:25:07");
INSERT INTO accounts VALUES("7","696577665","Gastos","1000","1000","","","0","2022-07-16 07:54:55","2023-11-12 23:24:52");
INSERT INTO accounts VALUES("8","99876543","Lutfur Rahman","200000","200000","opening","0","1","2023-11-12 23:24:11","2023-12-14 19:14:54");
INSERT INTO accounts VALUES("9","2111100033157","Md.Hahan Ali","8000000","8000000","","1","1","2023-12-14 19:13:00","2023-12-14 19:14:54");



CREATE TABLE `adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO adjustments VALUES("1","adr-20220731-101908","1","","1","1","","2022-07-31 15:19:08","2022-07-31 15:19:08");



CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) NOT NULL,
  `checkout` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `billers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) NOT NULL,
  `vat_number` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO billers VALUES("1","Bùi Đức Toàn","","AnToanHome","Toàn","hero70411@gmail.com","0904422959","58 Tố Hữu","Quận Nam Từ Liêm","Hà Nội","12015","Vietnam","0","2022-07-31 12:39:20","2023-11-21 09:29:23");
INSERT INTO billers VALUES("2","BookBill Express","","Enchanted Library","","bookbill@gmail.com","+77 464606","London","Tower of London","","","","0","2023-09-16 10:50:34","2023-11-21 09:29:15");
INSERT INTO billers VALUES("3","SHS ELECTRONICS","SHS.jpg","SHS ELECTRONICS","","shselectronics@gmail.com","01791830014.01791830015","Road-16.Block-C.House-3-4.Bunia Badh Mirpur.(Kalshi Road)","Dhaka","","1216","Bangladesh","1","2023-11-21 09:41:53","2023-11-21 09:58:48");



CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO brands VALUES("1","Apple","20220731114103.jpg","0","2022-07-31 12:14:43","2023-11-12 20:53:40");
INSERT INTO brands VALUES("2","Scholastic","","0","2023-09-16 09:46:18","2023-11-12 20:53:35");
INSERT INTO brands VALUES("3","LG","20231108063403.png","0","2023-11-08 18:34:03","2023-11-12 20:53:27");
INSERT INTO brands VALUES("4","Samsung","20231108081806.png","1","2023-11-08 20:18:06","2023-11-08 20:18:06");
INSERT INTO brands VALUES("5","Walton","20231112085424.png","1","2023-11-12 20:54:24","2023-11-12 20:54:24");
INSERT INTO brands VALUES("6","GREE","20231113055036.png","1","2023-11-13 17:50:36","2023-11-13 17:50:36");
INSERT INTO brands VALUES("7","miyako","20231114073237.png","1","2023-11-14 19:32:37","2023-11-14 19:32:37");
INSERT INTO brands VALUES("8","sharp","20231114073303.png","1","2023-11-14 19:33:03","2023-11-14 19:33:03");
INSERT INTO brands VALUES("9","midea","20231114073408.png","1","2023-11-14 19:34:08","2023-11-14 19:34:08");
INSERT INTO brands VALUES("10","haier","20231114073555.png","1","2023-11-14 19:35:55","2023-11-14 19:35:55");
INSERT INTO brands VALUES("11","hitachi","20231114074106.png","1","2023-11-14 19:41:06","2023-11-14 19:41:06");
INSERT INTO brands VALUES("12","Philps","20231127030516.jpeg","1","2023-11-27 15:05:16","2023-11-27 15:05:16");
INSERT INTO brands VALUES("13","Intex","20231127030548.png","1","2023-11-27 15:05:48","2023-11-27 15:05:48");
INSERT INTO brands VALUES("14","Maharaja","","1","2023-11-27 15:06:37","2023-11-27 15:06:37");
INSERT INTO brands VALUES("15","Galanz","20231204114541.png","1","2023-12-04 11:45:41","2023-12-04 11:45:41");
INSERT INTO brands VALUES("16","Hot Point","20231205105437.png","1","2023-12-05 10:54:37","2023-12-05 10:54:37");
INSERT INTO brands VALUES("17","TROPICA","20231219033111.jpeg","1","2023-12-19 15:31:11","2023-12-19 15:31:11");
INSERT INTO brands VALUES("18","Shameem","","1","2024-01-13 13:37:55","2024-01-13 13:37:55");
INSERT INTO brands VALUES("19","JVCO","20240119123022.jpeg","1","2024-01-19 12:30:22","2024-01-19 12:30:22");
INSERT INTO brands VALUES("20","Pure it","20240120062850.jpeg","1","2024-01-20 18:28:50","2024-01-20 18:28:50");
INSERT INTO brands VALUES("21","GAZI","20240123034101.jpeg","1","2024-01-23 15:41:01","2024-01-23 15:41:01");
INSERT INTO brands VALUES("22","SINGER","20240129105902.png","1","2024-01-29 10:59:02","2024-01-29 10:59:02");
INSERT INTO brands VALUES("23","mira","","1","2024-04-10 17:42:52","2024-04-10 17:42:52");
INSERT INTO brands VALUES("24","sunmoon","","1","2024-04-10 19:39:16","2024-04-10 19:39:16");



CREATE TABLE `cash_registers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cash_registers VALUES("1","100","1","1","1","2023-09-16 09:10:15","2023-09-16 09:10:15");
INSERT INTO cash_registers VALUES("2","8000","1","4","1","2023-11-08 20:33:39","2023-11-08 20:33:39");
INSERT INTO cash_registers VALUES("3","0","1","4","1","2023-11-13 12:42:48","2023-11-13 12:42:48");
INSERT INTO cash_registers VALUES("4","0","1","4","1","2023-11-13 12:43:03","2023-11-13 12:43:03");
INSERT INTO cash_registers VALUES("5","1","1","4","1","2023-11-13 12:43:12","2023-11-13 12:43:12");
INSERT INTO cash_registers VALUES("6","100","1","4","1","2023-11-13 12:43:29","2023-11-13 12:43:29");
INSERT INTO cash_registers VALUES("7","1000","1","4","1","2023-11-15 18:37:47","2023-11-15 18:37:47");
INSERT INTO cash_registers VALUES("8","1","1","4","1","2023-11-21 09:25:06","2023-11-21 09:25:06");
INSERT INTO cash_registers VALUES("9","10","1","4","1","2023-11-21 09:36:49","2023-11-21 09:36:49");



CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO categories VALUES("1","Mobile","20231109094608.jpeg","","0","2022-07-31 12:15:28","2023-11-12 20:35:05");
INSERT INTO categories VALUES("2","Fiction","","","0","2023-09-16 09:47:08","2023-11-09 09:45:11");
INSERT INTO categories VALUES("3","No-Fiction","","","0","2023-09-16 09:47:56","2023-11-09 09:45:38");
INSERT INTO categories VALUES("4","Historical","","","0","2023-09-16 09:48:15","2023-11-09 09:45:19");
INSERT INTO categories VALUES("5","Mystery","","","0","2023-09-16 09:48:47","2023-11-09 09:45:31");
INSERT INTO categories VALUES("6","Heater","20231109094553.jpg","","0","2023-11-08 20:25:27","2023-11-12 20:34:56");
INSERT INTO categories VALUES("7","Watch","20231109094620.jpeg","","0","2023-11-09 09:42:08","2023-11-12 20:35:15");
INSERT INTO categories VALUES("8","Walton","20231112084433.png","","0","2023-11-12 20:34:13","2023-11-13 12:37:12");
INSERT INTO categories VALUES("9","Refrigerator","20231112084517.jpg","8","0","2023-11-12 20:45:17","2023-11-13 18:01:44");
INSERT INTO categories VALUES("10","Air Conditioner","20231112084701.jpg","8","0","2023-11-12 20:47:01","2023-11-13 18:01:50");
INSERT INTO categories VALUES("11","samsung","20231114070628.png","","0","2023-11-13 17:58:18","2023-11-15 17:06:05");
INSERT INTO categories VALUES("12","samsung 55au7700","20231114070459.png","11","0","2023-11-13 17:58:58","2023-11-15 17:05:41");
INSERT INTO categories VALUES("13","tv","20231116010859.jpg","","1","2023-11-15 16:58:57","2023-11-16 13:08:59");
INSERT INTO categories VALUES("14","ac","20231116010612.png","","1","2023-11-15 16:59:24","2023-11-16 13:06:12");
INSERT INTO categories VALUES("15","refrigerator","20231116011016.jpg","","1","2023-11-15 16:59:48","2023-11-16 13:10:16");
INSERT INTO categories VALUES("16","midea","20231115050047.png","","0","2023-11-15 17:00:47","2023-11-16 13:06:41");
INSERT INTO categories VALUES("17","sharp","20231115050401.png","","0","2023-11-15 17:04:01","2023-11-16 13:10:31");
INSERT INTO categories VALUES("18","beater","20231116011656.jpg","","1","2023-11-15 17:04:42","2023-11-16 13:16:56");
INSERT INTO categories VALUES("19","washing machine","20231116011316.jpg","","1","2023-11-15 17:06:24","2023-11-16 13:13:16");
INSERT INTO categories VALUES("20","blender","20231116011855.jpeg","","1","2023-11-16 13:18:55","2023-11-16 13:18:55");
INSERT INTO categories VALUES("21","hand blender","20231116012112.jpg","","1","2023-11-16 13:21:12","2023-11-16 13:21:12");
INSERT INTO categories VALUES("22","rice cooker","20231116012232.jpg","","1","2023-11-16 13:22:32","2023-11-16 13:22:32");
INSERT INTO categories VALUES("23","electric kettle","20231116012445.jpg","","1","2023-11-16 13:24:45","2023-11-16 13:24:45");
INSERT INTO categories VALUES("24","air fryer","20231116012629.jpg","","1","2023-11-16 13:26:29","2023-11-16 13:26:29");
INSERT INTO categories VALUES("25","cooking set","20231116012741.jpeg","","1","2023-11-16 13:27:41","2023-11-16 13:27:41");
INSERT INTO categories VALUES("26","room heater","20231116012906.jpeg","","1","2023-11-16 13:29:06","2023-11-16 13:29:06");
INSERT INTO categories VALUES("27","sauce pan","20231116013033.jpeg","","1","2023-11-16 13:30:33","2023-11-16 13:30:33");
INSERT INTO categories VALUES("28","fry pan","20231116013146.jpg","","1","2023-11-16 13:31:46","2023-11-16 13:31:46");
INSERT INTO categories VALUES("29","roti tawa","20231116013304.jpg","","1","2023-11-16 13:33:04","2023-11-16 13:33:04");
INSERT INTO categories VALUES("30","pressure cooker","20231116013504.jpeg","","1","2023-11-16 13:35:04","2023-11-16 13:35:04");
INSERT INTO categories VALUES("31","electric oven","20231116013754.jpg","","1","2023-11-16 13:37:54","2023-11-16 13:37:54");
INSERT INTO categories VALUES("32","touch cooker","20231116013958.jpeg","","1","2023-11-16 13:39:58","2023-11-16 13:39:58");
INSERT INTO categories VALUES("33","hair dryer","20231116014142.jpeg","","1","2023-11-16 13:41:42","2023-11-16 13:41:42");
INSERT INTO categories VALUES("34","Dry Iron","20231127031208.jpeg","","1","2023-11-27 15:12:08","2023-11-27 15:12:08");
INSERT INTO categories VALUES("35","Trimmer","20231127031439.jpeg","","1","2023-11-27 15:14:39","2023-11-27 15:14:39");
INSERT INTO categories VALUES("36","Electric Water Heater","20231205105957.jpeg","","1","2023-12-05 10:59:57","2023-12-05 10:59:57");
INSERT INTO categories VALUES("37","Curry Cooker","20240118042503.jpeg","","1","2024-01-18 16:24:33","2024-01-18 16:25:03");
INSERT INTO categories VALUES("38","Gas Cooker","20240118061313.jpg","","1","2024-01-18 18:13:13","2024-01-18 18:13:13");
INSERT INTO categories VALUES("39","Sandwich Maker","20240118081234.jpeg","","1","2024-01-18 20:12:34","2024-01-18 20:12:34");
INSERT INTO categories VALUES("40","Bread Toaster","20240118081326.png","","1","2024-01-18 20:13:27","2024-01-18 20:13:27");
INSERT INTO categories VALUES("41","Pureit Classic","20240120063104.jpeg","","1","2024-01-20 18:31:04","2024-01-20 18:31:04");
INSERT INTO categories VALUES("42","kitchen Hood","20240123034348.jpg","","1","2024-01-23 15:43:48","2024-01-23 15:43:48");
INSERT INTO categories VALUES("43","Deep Freezer","20240329103850.jpg","","1","2024-03-29 10:38:50","2024-03-29 10:38:50");
INSERT INTO categories VALUES("44","Fan","20240410054231.jpeg","","1","2024-04-10 17:42:31","2024-04-10 17:42:31");
INSERT INTO categories VALUES("45","mosquito swatter","","","1","2024-04-10 19:40:30","2024-04-10 19:40:30");



CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO coupons VALUES("1","009","percentage","10","","10","0","2023-09-15","1","1","2023-09-10 11:13:27","2023-09-10 11:13:27");



CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currencies VALUES("1","BDT","BDT","1","2020-11-01 12:22:58","2023-11-12 23:52:27");



CREATE TABLE `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `percentage` varchar(191) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customer_groups VALUES("1","Vip","10","1","2022-07-31 12:16:54","2023-09-16 09:30:47");
INSERT INTO customer_groups VALUES("2","Normal","0","1","2023-09-16 09:27:17","2023-09-16 09:27:17");
INSERT INTO customer_groups VALUES("3","Permanent","5","1","2023-09-16 09:30:22","2023-09-16 09:30:38");



CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) NOT NULL,
  `tax_no` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customers VALUES("1","1","","Bùi Đức Toàn","AnToanHome","hero70411@gmail.com","0904422959","","58 Tố Hữu","Quận Nam Từ Liêm","Hà Nội","12015","Vietnam","107","","","0","2022-07-31 12:17:35","2023-11-12 23:16:23");
INSERT INTO customers VALUES("2","1","","Md.uzzal Molla","","janduzzal@gmail.com","01913692423","","House : 589 Road: 09","Dhaka","","","","3007","","","1","2023-11-12 22:22:53","2024-04-05 22:14:48");
INSERT INTO customers VALUES("3","2","","kawsar","","nurul4axiz@gmail.com","01997122041","","House : 589 Road: 09","Dhaka","","","","1327","","","1","2023-11-12 23:47:35","2024-05-29 19:01:38");
INSERT INTO customers VALUES("4","2","","monirul","","","01774352983","","mirpur 12","DHAKA","","","","432","","","1","2023-11-13 16:42:36","2023-12-04 13:07:49");
INSERT INTO customers VALUES("5","2","","shajahan","","","01724129625","","kalshi.","dhaka1216","","","","290","","","1","2023-11-26 12:16:01","2024-01-28 17:52:50");
INSERT INTO customers VALUES("6","1","","jahid hasan","","","01799146681","","...","DHAKA","","","","228","","","1","2023-11-29 18:41:06","2024-01-01 14:08:35");
INSERT INTO customers VALUES("7","2","","md.kalam","","","01611379148","","kalshi new road","dhaka 1612","","","","13","","","1","2023-12-02 14:45:47","2023-12-02 14:48:57");
INSERT INTO customers VALUES("8","1","","Nachir","","","01812635573","","mirpur 11","dhaka-1216","","","","150","","","1","2023-12-04 12:36:47","2024-01-16 12:14:41");
INSERT INTO customers VALUES("9","1","","Suborna Akter","","","01747578768","","mirpur-12","dhaka 1612","","","","14","","","1","2023-12-06 21:29:24","2024-01-19 12:24:42");
INSERT INTO customers VALUES("10","2","","md.nuhu","","","01617069638","","bordhon gacha .ullapara.","rajshahi","","","","5","","","1","2023-12-08 19:58:43","2023-12-08 20:02:39");
INSERT INTO customers VALUES("11","1","","Anjuman jui","","ajui578@gmail.com","01713537841","","Sariyatpur, Gosai Hat, Dhaka, Dhaka - 1216","Dhaka","","","","27","","","1","2023-12-17 18:31:38","2023-12-17 18:37:24");
INSERT INTO customers VALUES("12","1","","basar anti","","","01688525800","","kalshi","Dhaka-1216","","","","12","","","1","2023-12-19 11:24:10","2023-12-19 11:26:21");
INSERT INTO customers VALUES("13","1","","hazi","","","01678559168","","ahiz market .pallabi.dhaka","dhaka","","","","30","","","1","2023-12-19 15:38:19","2023-12-19 15:44:20");
INSERT INTO customers VALUES("14","1","","md.Roton","","","01843369953","","mirpur 11.pallabi","dhaka","","","","3","","","1","2023-12-19 22:13:42","2023-12-19 22:20:45");
INSERT INTO customers VALUES("15","1","","Hafcha. Habiba. Humaira","","","01703757775","","mirpur-11","dhaka1216","","","","245","","","1","2023-12-21 22:48:22","2023-12-21 22:50:24");
INSERT INTO customers VALUES("16","1","","Abdul Haque","","","01961451760","","Baoniya bad","dhaka-1216","","","","143","","","1","2023-12-30 13:08:19","2023-12-30 13:10:21");
INSERT INTO customers VALUES("17","1","","Mr Nilom","","Nilom2016@gmail.com","01795878608","","Mirpur 12","Dhaka","","","","66","","","1","2023-12-30 18:33:25","2023-12-30 18:36:42");
INSERT INTO customers VALUES("18","2","","MD.Ali islam","","ali islam2391@gmail.com","01628151060","","khalshi","Dhaka-1216","","","","75","","","1","2024-01-09 18:04:50","2024-01-09 18:07:29");
INSERT INTO customers VALUES("19","1","","Md.Shafayat (shebina aktar)","","","01753478851","","abashik alaka-noya gar-haspatal-road-sylhet","sylhet","","","","136","","","1","2024-01-11 18:44:07","2024-01-11 18:44:37");
INSERT INTO customers VALUES("20","1","","Md.kholil","","","0140090882","","Mirpur","Dhaka","","","","185","","","1","2024-01-12 20:11:44","2024-04-10 13:09:37");
INSERT INTO customers VALUES("21","1","","Md.khan shariful islam","","khan shariful islam12@gmail.com","01618777317","","ahamed villa-road-16 house-491.abdul nonar avenue.bashundhra.r/a","dhaka","","","","394","","","1","2024-01-12 20:16:35","2024-05-16 22:14:09");
INSERT INTO customers VALUES("22","2","","Shahida Begum","","","01761309244","","833/20, Block A, Khilgoan Chowrasta,Dhaka","Dhaka","","","","21","","","1","2024-01-13 16:46:47","2024-01-15 18:02:25");
INSERT INTO customers VALUES("23","2","","Hashi akter","","","01703254401","","mirpur 11","dhaka","","","","90","","","1","2024-01-14 12:40:43","2024-01-14 12:44:05");
INSERT INTO customers VALUES("24","2","","Halima akter","","","01989402699","","Mirpur11","dhaka","","","","171","","","1","2024-01-14 12:46:09","2024-01-31 14:01:13");
INSERT INTO customers VALUES("25","2","","Md. Imran","","","01712345445","","Mirpur","dhaka","","","","19","","","1","2024-01-14 21:46:31","2024-05-09 17:34:59");
INSERT INTO customers VALUES("26","1","","Md. Abdul Wadud","","","01701771813","","Nobortak Housing,","Dhaka","","","","","","","1","2024-01-15 19:22:38","2024-01-15 19:22:38");
INSERT INTO customers VALUES("27","2","","Mrs. Aysha","","","01983788823","","Mirpur 12","Dhaka","","","","","","","1","2024-01-15 21:17:17","2024-01-15 21:17:17");
INSERT INTO customers VALUES("28","2","","md.foysal","","","01755541253","","mirpur-11","dhaka","","","","9","","","1","2024-01-18 10:49:29","2024-01-18 10:54:07");
INSERT INTO customers VALUES("29","2","","shoriful isalm","","","0173264582","","mirpur-12","dhaka","","","","11","","","1","2024-01-19 12:21:35","2024-01-19 12:22:28");
INSERT INTO customers VALUES("30","1","","Md.Kairul alom","","","01911705874","","mirpur-11","dhaka","","","","12","","","1","2024-01-20 20:03:45","2024-01-20 20:06:11");
INSERT INTO customers VALUES("31","2","","md.nayim","","","01822585394","","mirpur-1","dhaka","","","","98","","","1","2024-01-21 13:59:04","2024-01-21 14:00:07");
INSERT INTO customers VALUES("32","2","","Md.Mijan","","","01788768033","","mirpur 12","dhaka","","","","12","","","1","2024-01-22 20:04:39","2024-01-22 20:07:33");
INSERT INTO customers VALUES("33","1","","MD.Shfikul islam","","Shfikul islam00@gamilcom","01722959343","","mirpur-12","dhaka","","","","103","","","1","2024-01-23 15:54:21","2024-01-23 15:55:27");
INSERT INTO customers VALUES("34","1","","Md.Hachid","","","01824396379","","mirpur-11","dhaka","","","","226","","","1","2024-01-24 10:42:58","2024-01-24 10:44:06");
INSERT INTO customers VALUES("35","1","","Saimun","","","01941446951","","mirpur-12","dhaka","","","","52","","","1","2024-01-26 11:31:18","2024-05-23 22:12:28");
INSERT INTO customers VALUES("36","2","","khadija","","","01761930605","","kalshi","dhaka","","","","60","","","1","2024-01-31 18:38:52","2024-01-31 18:40:12");
INSERT INTO customers VALUES("37","2","","md","","","01832153951","","kalshi","dhaka","","","","143","","","1","2024-02-13 15:41:59","2024-02-13 15:42:52");
INSERT INTO customers VALUES("38","2","","md.arif","","","01409030200","","mirpur-11","dhaka","","","","130","","","1","2024-02-17 10:52:57","2024-02-17 10:54:42");
INSERT INTO customers VALUES("39","1","","md.hachib","","","01708009310","","mirpur-11","dhaka","","","","24","","","1","2024-02-18 20:10:10","2024-02-18 20:12:53");
INSERT INTO customers VALUES("40","1","","Mr. Moniruj Jaman","","","01777211619","","12/D, 1/2, Mirpur, Dhaka 1216","Dhaka","","1216","Bangladesh","223","","","1","2024-02-29 13:47:15","2024-02-29 15:58:50");
INSERT INTO customers VALUES("41","1","","FOYSAL","","","01719167455","","House-762/A, Road-11(1st Floor), Avenue-6, Mirpur DOHS, Dhaka-1216","DHAKA","","","","150","","","1","2024-03-04 16:07:34","2024-03-04 16:10:04");
INSERT INTO customers VALUES("42","1","","MD.","","","0 1766-435511","","Baridhara j block road no -20, house no-29, Aftab setara garden  Lift #02","DHAKA","","","","730","","","1","2024-03-06 10:00:01","2024-03-06 10:04:00");
INSERT INTO customers VALUES("43","1","","md.Asraf","","","01918514053","","KALSHI.MIRPUR-12","DHAKA-1216","","","","14","","","1","2024-03-06 21:21:25","2024-03-06 21:23:29");
INSERT INTO customers VALUES("44","2","","md","","","01813246346","","mirpur-11","dhaka-1216","","","","163","","","1","2024-03-08 16:48:23","2024-03-08 16:50:26");
INSERT INTO customers VALUES("45","2","","মোঃ মোশারোফ ইসলাম","","","01911117487","","bokshi bazar .","dhaka","","","","10","","","1","2024-03-09 13:48:35","2024-03-09 13:52:30");
INSERT INTO customers VALUES("46","1","","Mr. Nirob","","","01725921447","","Mirpur","Dhaka-1216","","","","","","","1","2024-03-16 18:10:35","2024-03-16 18:10:35");
INSERT INTO customers VALUES("47","1","","c.touhidul islam","","","01943053743","","mirpur-11","dhaka-1216","","","","233","","","1","2024-03-18 15:21:05","2024-03-18 15:22:17");
INSERT INTO customers VALUES("48","2","","Mrs. Forida Parbin","","","01741039902","","House- 21/6, Road- 13, flat(a-2)2nd floor, Pallabi, Mirpur- 12.","Dhaka-1216","","","","103","","","1","2024-03-18 22:08:44","2024-03-18 22:09:22");
INSERT INTO customers VALUES("49","2","","Md.Samim","","","01515214520","","manik di.mirpur","dhaka-1216","","","","30","","","1","2024-03-22 22:34:29","2024-03-22 22:37:00");
INSERT INTO customers VALUES("50","2","","সরাফুল ইসলাম","","","01716771562","","Mirpur-1","dhaka","","","","86","","","1","2024-03-29 10:44:48","2024-03-29 10:45:59");
INSERT INTO customers VALUES("51","1","","Tanvir shah","","","01739424446","","uttara","dhaka","","","","25","","","1","2024-03-29 15:22:37","2024-03-29 15:32:02");
INSERT INTO customers VALUES("52","1","","Md.Shahin","","","01711991711","","kalshi.mirpur","dhaka","","","","332","","","1","2024-04-03 12:19:07","2024-05-09 16:45:19");
INSERT INTO customers VALUES("53","2","","Md.Maiudin","","","01678377163","","kalshi","dkaka","","","","15","","","1","2024-04-05 15:26:30","2024-04-05 15:27:45");
INSERT INTO customers VALUES("54","2","","Md.Habib","","","01739727811","","House-37/39, Road-25, Block-D, Section -12, pallabi, Mirpur, Dhaka","DHAKA-1216","","","","175","","","1","2024-04-06 20:09:35","2024-04-06 20:11:08");
INSERT INTO customers VALUES("55","1","","4axiz IT Ltd","","","01721926647","","Mirpur-12.","Dhaka-1216","","","","","","","1","2024-04-07 11:52:02","2024-04-07 11:52:02");
INSERT INTO customers VALUES("56","3","","Md Asfir Ryhan Sanny","","","01730725618","","Block :D,Road:10,House:43","dhaka-1216","","","","156","","","1","2024-04-09 21:21:40","2024-04-09 21:22:25");
INSERT INTO customers VALUES("57","3","","Md.rashed","","","01670327423","","mirpur-11","dhaka -1216","","","","88","","","1","2024-04-10 19:46:16","2024-04-10 20:04:50");
INSERT INTO customers VALUES("58","2","","md.humayan kobir","","","01954903122","","kalshi.baoniya bad.b-c.h-8","dhaka-1216","","","","153","","","1","2024-04-18 11:57:54","2024-04-18 12:01:43");
INSERT INTO customers VALUES("59","3","","Md.khalid bin olid","","","01980342093","","mirpur-11.h-43.b-D","dhaka -1216","","","","96","","","1","2024-04-18 19:14:30","2024-04-18 19:16:15");
INSERT INTO customers VALUES("60","3","","md.sohag","","","01717704743","","mirpur-1","dhaka-1216","","","","451","","","1","2024-04-22 18:55:38","2024-05-09 16:05:55");
INSERT INTO customers VALUES("61","3","","md.shuvo","","","01959171355","","mohamadpur.bochila","dhaka-1216","","","","162","","","1","2024-04-23 19:07:34","2024-04-23 19:12:23");
INSERT INTO customers VALUES("62","3","","Md.Chaidur Rohoman","","","01747857628","","H-75/10 DAYAN PARA","DHAKA -1216","","","","171","","","1","2024-04-30 22:37:04","2024-04-30 22:40:17");
INSERT INTO customers VALUES("63","3","","md.faruk","","","01925109642","","mirpur-12","dhaka-1216","","","","28","","","1","2024-05-03 19:15:35","2024-05-03 19:19:04");
INSERT INTO customers VALUES("64","3","","md.abid hasan","","","01717506421","","mirpur-11","dhaka-1216","","","","15","","","1","2024-05-05 21:05:23","2024-05-05 21:06:27");
INSERT INTO customers VALUES("65","2","","umd.uzzal","","","01791959893","","mirpur-12","dhaka-1216","","","","80","","","1","2024-05-09 15:59:45","2024-05-09 16:02:01");
INSERT INTO customers VALUES("66","2","","sumi aktar","","","01511440444","","mirur-11","dhaka-1216","","","","","","","1","2024-05-09 16:12:10","2024-05-09 16:12:10");
INSERT INTO customers VALUES("67","2","","md.alhaj","","","01713533333","","mirpur.dhaka c","dkaka-1216","","","","10","","","1","2024-05-09 17:06:37","2024-05-09 17:07:34");
INSERT INTO customers VALUES("68","2","","md.asraful islam","","","01612564828","","mirpur-12","dhaka-1216","","","","76","","","1","2024-05-09 17:11:07","2024-05-09 17:18:10");
INSERT INTO customers VALUES("69","2","","Disha jahan","","","01989444242","","mirpur-12","dhaka-1216","","","","22","","","1","2024-05-16 21:58:30","2024-05-16 21:59:55");
INSERT INTO customers VALUES("70","1","","Md.","","","017","","Dhaka","Dhaka1216","","","","","","","1","2024-05-23 21:02:12","2024-05-23 21:02:12");
INSERT INTO customers VALUES("71","2","","md.elias","","","0191400113","","mirpur-12","dhaka-1216","","","","","","","1","2024-05-29 19:00:44","2024-05-29 19:00:44");



CREATE TABLE `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `delivered_by` varchar(191) DEFAULT NULL,
  `recieved_by` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO deliveries VALUES("1","dr-20220731-115653","1","1","58 Tố Hữu Quận Nam Từ Liêm Vietnam","","","","","3","2022-07-31 16:57:00","2022-07-31 16:57:00");



CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `discount_plan_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_plan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plan_customers VALUES("1","1","1","2022-07-31 16:08:54","2022-07-31 16:08:54");



CREATE TABLE `discount_plan_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plan_discounts VALUES("1","1","1","2022-07-31 16:11:21","2022-07-31 16:11:21");



CREATE TABLE `discount_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plans VALUES("1","FlashSale","1","2022-07-31 16:08:54","2022-07-31 16:08:54");



CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `applicable_for` varchar(191) NOT NULL,
  `product_list` longtext DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(191) NOT NULL,
  `value` double NOT NULL,
  `minimum_qty` double NOT NULL,
  `maximum_qty` double NOT NULL,
  `days` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discounts VALUES("1","FlashSale1","All","","2022-08-01","2022-08-03","percentage","1","1","10","Mon,Tue,Wed,Thu,Fri,Sat,Sun","1","2022-07-31 16:11:21","2022-07-31 16:11:21");



CREATE TABLE `dso_alerts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_info` longtext NOT NULL,
  `number_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expense_categories VALUES("1","23020428","Lắp đặt","1","2022-07-31 12:50:34","2022-07-31 12:50:34");
INSERT INTO expense_categories VALUES("2","01374921","supplayer Payment","1","2023-11-12 23:27:00","2023-11-12 23:27:00");



CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expenses VALUES("1","er-20220731-075050","1","1","5","1","","100","","2022-07-31 12:50:50","2022-07-31 12:50:50");
INSERT INTO expenses VALUES("2","er-20231112-112804","2","4","8","1","2","100000","supplier payment korim","2023-11-12 00:00:00","2023-11-12 23:28:04");



CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) NOT NULL,
  `site_logo` varchar(191) DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `staff_access` varchar(191) NOT NULL,
  `date_format` varchar(191) NOT NULL,
  `developed_by` varchar(191) DEFAULT NULL,
  `invoice_format` varchar(191) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO general_settings VALUES("1","POS ERP","20231221105214.png","0","1","all","d-m-Y","4axiz.com","standard","1","default.css","2018-07-06 18:13:11","2023-12-21 10:52:14","prefix");



CREATE TABLE `gift_card_recharges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `gift_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO gift_cards VALUES("1","0721283464761931","1000","0","1","","2022-09-10","1","1","2022-07-31 16:45:13","2022-07-31 16:45:13");
INSERT INTO gift_cards VALUES("2","98988888888880","2000","0","1","","2023-09-15","1","1","2023-09-10 11:14:28","2023-09-10 11:14:28");



CREATE TABLE `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `hrm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkin` varchar(191) NOT NULL,
  `checkout` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO hrm_settings VALUES("1","9:00am","6:00pm","2019-01-02 14:20:08","2022-07-16 07:13:14");



CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO languages VALUES("1","en","2018-07-08 10:59:17","2019-12-25 05:34:20");



CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("1","2014_10_12_000000_create_users_table","1");
INSERT INTO migrations VALUES("2","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("3","2018_02_17_060412_create_categories_table","1");
INSERT INTO migrations VALUES("4","2018_02_20_035727_create_brands_table","1");
INSERT INTO migrations VALUES("5","2018_02_25_100635_create_suppliers_table","1");
INSERT INTO migrations VALUES("6","2018_02_27_101619_create_warehouse_table","1");
INSERT INTO migrations VALUES("7","2018_03_03_040448_create_units_table","1");
INSERT INTO migrations VALUES("8","2018_03_04_041317_create_taxes_table","1");
INSERT INTO migrations VALUES("9","2018_03_10_061915_create_customer_groups_table","1");
INSERT INTO migrations VALUES("10","2018_03_10_090534_create_customers_table","1");
INSERT INTO migrations VALUES("11","2018_03_11_095547_create_billers_table","1");
INSERT INTO migrations VALUES("12","2018_04_05_054401_create_products_table","1");
INSERT INTO migrations VALUES("13","2018_04_06_133606_create_purchases_table","1");
INSERT INTO migrations VALUES("14","2018_04_06_154600_create_product_purchases_table","1");
INSERT INTO migrations VALUES("15","2018_04_06_154915_create_product_warhouse_table","1");
INSERT INTO migrations VALUES("16","2018_04_10_085927_create_sales_table","1");
INSERT INTO migrations VALUES("17","2018_04_10_090133_create_product_sales_table","1");
INSERT INTO migrations VALUES("18","2018_04_10_090254_create_payments_table","1");
INSERT INTO migrations VALUES("19","2018_04_10_090341_create_payment_with_cheque_table","1");
INSERT INTO migrations VALUES("20","2018_04_10_090509_create_payment_with_credit_card_table","1");
INSERT INTO migrations VALUES("21","2018_04_13_121436_create_quotation_table","1");
INSERT INTO migrations VALUES("22","2018_04_13_122324_create_product_quotation_table","1");
INSERT INTO migrations VALUES("23","2018_04_14_121802_create_transfers_table","1");
INSERT INTO migrations VALUES("24","2018_04_14_121913_create_product_transfer_table","1");
INSERT INTO migrations VALUES("25","2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table","2");
INSERT INTO migrations VALUES("26","2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table","3");
INSERT INTO migrations VALUES("27","2018_05_20_054532_create_adjustments_table","4");
INSERT INTO migrations VALUES("28","2018_05_20_054859_create_product_adjustments_table","4");
INSERT INTO migrations VALUES("29","2018_05_21_163419_create_returns_table","5");
INSERT INTO migrations VALUES("30","2018_05_21_163443_create_product_returns_table","5");
INSERT INTO migrations VALUES("31","2018_06_02_050905_create_roles_table","6");
INSERT INTO migrations VALUES("32","2018_06_02_073430_add_columns_to_users_table","7");
INSERT INTO migrations VALUES("33","2018_06_03_053738_create_permission_tables","8");
INSERT INTO migrations VALUES("36","2018_06_21_063736_create_pos_setting_table","9");
INSERT INTO migrations VALUES("37","2018_06_21_094155_add_user_id_to_sales_table","10");
INSERT INTO migrations VALUES("38","2018_06_21_101529_add_user_id_to_purchases_table","11");
INSERT INTO migrations VALUES("39","2018_06_21_103512_add_user_id_to_transfers_table","12");
INSERT INTO migrations VALUES("40","2018_06_23_061058_add_user_id_to_quotations_table","13");
INSERT INTO migrations VALUES("41","2018_06_23_082427_add_is_deleted_to_users_table","14");
INSERT INTO migrations VALUES("42","2018_06_25_043308_change_email_to_users_table","15");
INSERT INTO migrations VALUES("43","2018_07_06_115449_create_general_settings_table","16");
INSERT INTO migrations VALUES("44","2018_07_08_043944_create_languages_table","17");
INSERT INTO migrations VALUES("45","2018_07_11_102144_add_user_id_to_returns_table","18");
INSERT INTO migrations VALUES("46","2018_07_11_102334_add_user_id_to_payments_table","18");
INSERT INTO migrations VALUES("47","2018_07_22_130541_add_digital_to_products_table","19");
INSERT INTO migrations VALUES("49","2018_07_24_154250_create_deliveries_table","20");
INSERT INTO migrations VALUES("50","2018_08_16_053336_create_expense_categories_table","21");
INSERT INTO migrations VALUES("51","2018_08_17_115415_create_expenses_table","22");
INSERT INTO migrations VALUES("55","2018_08_18_050418_create_gift_cards_table","23");
INSERT INTO migrations VALUES("56","2018_08_19_063119_create_payment_with_gift_card_table","24");
INSERT INTO migrations VALUES("57","2018_08_25_042333_create_gift_card_recharges_table","25");
INSERT INTO migrations VALUES("58","2018_08_25_101354_add_deposit_expense_to_customers_table","26");
INSERT INTO migrations VALUES("59","2018_08_26_043801_create_deposits_table","27");
INSERT INTO migrations VALUES("60","2018_09_02_044042_add_keybord_active_to_pos_setting_table","28");
INSERT INTO migrations VALUES("61","2018_09_09_092713_create_payment_with_paypal_table","29");
INSERT INTO migrations VALUES("62","2018_09_10_051254_add_currency_to_general_settings_table","30");
INSERT INTO migrations VALUES("63","2018_10_22_084118_add_biller_and_store_id_to_users_table","31");
INSERT INTO migrations VALUES("65","2018_10_26_034927_create_coupons_table","32");
INSERT INTO migrations VALUES("66","2018_10_27_090857_add_coupon_to_sales_table","33");
INSERT INTO migrations VALUES("67","2018_11_07_070155_add_currency_position_to_general_settings_table","34");
INSERT INTO migrations VALUES("68","2018_11_19_094650_add_combo_to_products_table","35");
INSERT INTO migrations VALUES("69","2018_12_09_043712_create_accounts_table","36");
INSERT INTO migrations VALUES("70","2018_12_17_112253_add_is_default_to_accounts_table","37");
INSERT INTO migrations VALUES("71","2018_12_19_103941_add_account_id_to_payments_table","38");
INSERT INTO migrations VALUES("72","2018_12_20_065900_add_account_id_to_expenses_table","39");
INSERT INTO migrations VALUES("73","2018_12_20_082753_add_account_id_to_returns_table","40");
INSERT INTO migrations VALUES("74","2018_12_26_064330_create_return_purchases_table","41");
INSERT INTO migrations VALUES("75","2018_12_26_144210_create_purchase_product_return_table","42");
INSERT INTO migrations VALUES("76","2018_12_26_144708_create_purchase_product_return_table","43");
INSERT INTO migrations VALUES("77","2018_12_27_110018_create_departments_table","44");
INSERT INTO migrations VALUES("78","2018_12_30_054844_create_employees_table","45");
INSERT INTO migrations VALUES("79","2018_12_31_125210_create_payrolls_table","46");
INSERT INTO migrations VALUES("80","2018_12_31_150446_add_department_id_to_employees_table","47");
INSERT INTO migrations VALUES("81","2019_01_01_062708_add_user_id_to_expenses_table","48");
INSERT INTO migrations VALUES("82","2019_01_02_075644_create_hrm_settings_table","49");
INSERT INTO migrations VALUES("83","2019_01_02_090334_create_attendances_table","50");
INSERT INTO migrations VALUES("84","2019_01_27_160956_add_three_columns_to_general_settings_table","51");
INSERT INTO migrations VALUES("85","2019_02_15_183303_create_stock_counts_table","52");
INSERT INTO migrations VALUES("86","2019_02_17_101604_add_is_adjusted_to_stock_counts_table","53");
INSERT INTO migrations VALUES("87","2019_04_13_101707_add_tax_no_to_customers_table","54");
INSERT INTO migrations VALUES("89","2019_10_14_111455_create_holidays_table","55");
INSERT INTO migrations VALUES("90","2019_11_13_145619_add_is_variant_to_products_table","56");
INSERT INTO migrations VALUES("91","2019_11_13_150206_create_product_variants_table","57");
INSERT INTO migrations VALUES("92","2019_11_13_153828_create_variants_table","57");
INSERT INTO migrations VALUES("93","2019_11_25_134041_add_qty_to_product_variants_table","58");
INSERT INTO migrations VALUES("94","2019_11_25_134922_add_variant_id_to_product_purchases_table","58");
INSERT INTO migrations VALUES("95","2019_11_25_145341_add_variant_id_to_product_warehouse_table","58");
INSERT INTO migrations VALUES("96","2019_11_29_182201_add_variant_id_to_product_sales_table","59");
INSERT INTO migrations VALUES("97","2019_12_04_121311_add_variant_id_to_product_quotation_table","60");
INSERT INTO migrations VALUES("98","2019_12_05_123802_add_variant_id_to_product_transfer_table","61");
INSERT INTO migrations VALUES("100","2019_12_08_114954_add_variant_id_to_product_returns_table","62");
INSERT INTO migrations VALUES("101","2019_12_08_203146_add_variant_id_to_purchase_product_return_table","63");
INSERT INTO migrations VALUES("102","2020_02_28_103340_create_money_transfers_table","64");
INSERT INTO migrations VALUES("103","2020_07_01_193151_add_image_to_categories_table","65");
INSERT INTO migrations VALUES("105","2020_09_26_130426_add_user_id_to_deliveries_table","66");
INSERT INTO migrations VALUES("107","2020_10_11_125457_create_cash_registers_table","67");
INSERT INTO migrations VALUES("108","2020_10_13_155019_add_cash_register_id_to_sales_table","68");
INSERT INTO migrations VALUES("109","2020_10_13_172624_add_cash_register_id_to_returns_table","69");
INSERT INTO migrations VALUES("110","2020_10_17_212338_add_cash_register_id_to_payments_table","70");
INSERT INTO migrations VALUES("111","2020_10_18_124200_add_cash_register_id_to_expenses_table","71");
INSERT INTO migrations VALUES("112","2020_10_21_121632_add_developed_by_to_general_settings_table","72");
INSERT INTO migrations VALUES("113","2019_08_19_000000_create_failed_jobs_table","73");
INSERT INTO migrations VALUES("114","2020_10_30_135557_create_notifications_table","73");
INSERT INTO migrations VALUES("115","2020_11_01_044954_create_currencies_table","74");
INSERT INTO migrations VALUES("116","2020_11_01_140736_add_price_to_product_warehouse_table","75");
INSERT INTO migrations VALUES("117","2020_11_02_050633_add_is_diff_price_to_products_table","76");
INSERT INTO migrations VALUES("118","2020_11_09_055222_add_user_id_to_customers_table","77");
INSERT INTO migrations VALUES("119","2020_11_17_054806_add_invoice_format_to_general_settings_table","78");
INSERT INTO migrations VALUES("120","2021_02_10_074859_add_variant_id_to_product_adjustments_table","79");
INSERT INTO migrations VALUES("121","2021_03_07_093606_create_product_batches_table","80");
INSERT INTO migrations VALUES("122","2021_03_07_093759_add_product_batch_id_to_product_warehouse_table","80");
INSERT INTO migrations VALUES("123","2021_03_07_093900_add_product_batch_id_to_product_purchases_table","80");
INSERT INTO migrations VALUES("124","2021_03_11_132603_add_product_batch_id_to_product_sales_table","81");
INSERT INTO migrations VALUES("127","2021_03_25_125421_add_is_batch_to_products_table","82");
INSERT INTO migrations VALUES("128","2021_05_19_120127_add_product_batch_id_to_product_returns_table","82");
INSERT INTO migrations VALUES("130","2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table","83");
INSERT INTO migrations VALUES("131","2021_05_23_124848_add_product_batch_id_to_product_transfer_table","84");
INSERT INTO migrations VALUES("132","2021_05_26_153106_add_product_batch_id_to_product_quotation_table","85");
INSERT INTO migrations VALUES("133","2021_06_08_213007_create_reward_point_settings_table","86");
INSERT INTO migrations VALUES("134","2021_06_16_104155_add_points_to_customers_table","87");
INSERT INTO migrations VALUES("135","2021_06_17_101057_add_used_points_to_payments_table","88");
INSERT INTO migrations VALUES("136","2021_07_06_132716_add_variant_list_to_products_table","89");
INSERT INTO migrations VALUES("137","2021_09_27_161141_add_is_imei_to_products_table","90");
INSERT INTO migrations VALUES("138","2021_09_28_170052_add_imei_number_to_product_warehouse_table","91");
INSERT INTO migrations VALUES("139","2021_09_28_170126_add_imei_number_to_product_purchases_table","91");
INSERT INTO migrations VALUES("140","2021_10_03_170652_add_imei_number_to_product_sales_table","92");
INSERT INTO migrations VALUES("141","2021_10_10_145214_add_imei_number_to_product_returns_table","93");
INSERT INTO migrations VALUES("142","2021_10_11_104504_add_imei_number_to_product_transfer_table","94");
INSERT INTO migrations VALUES("143","2021_10_12_160107_add_imei_number_to_purchase_product_return_table","95");
INSERT INTO migrations VALUES("144","2021_10_12_205146_add_is_rtl_to_general_settings_table","96");
INSERT INTO migrations VALUES("145","2021_10_23_142451_add_is_approve_to_payments_table","97");
INSERT INTO migrations VALUES("146","2022_01_13_191242_create_discount_plans_table","97");
INSERT INTO migrations VALUES("147","2022_01_14_174318_create_discount_plan_customers_table","97");
INSERT INTO migrations VALUES("148","2022_01_14_202439_create_discounts_table","98");
INSERT INTO migrations VALUES("149","2022_01_16_153506_create_discount_plan_discounts_table","98");
INSERT INTO migrations VALUES("150","2022_02_05_174210_add_order_discount_type_and_value_to_sales_table","99");
INSERT INTO migrations VALUES("154","2022_05_26_195506_add_daily_sale_objective_to_products_table","100");
INSERT INTO migrations VALUES("155","2022_05_28_104209_create_dso_alerts_table","101");
INSERT INTO migrations VALUES("156","2022_06_01_112100_add_is_embeded_to_products_table","102");



CREATE TABLE `money_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_cheque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_credit_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) DEFAULT NULL,
  `charge_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_gift_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_paypal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_reference` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) NOT NULL,
  `payment_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payments VALUES("1","ppr-20220731-073645","1","1","","","5","8300","","0","Cash","","2022-07-31 12:36:45","2022-07-31 12:36:45");
INSERT INTO payments VALUES("2","spr-20220731-074532","1","","1","","5","1773","","1000","Cash","","2022-07-31 12:45:32","2022-07-31 15:21:29");
INSERT INTO payments VALUES("3","spr-20220731-103409","1","","2","","5","1800","","0","Gift Card","","2022-07-31 15:34:09","2022-07-31 15:34:09");
INSERT INTO payments VALUES("4","spr-20220731-103413","1","","3","","5","1800","","0","Gift Card","","2022-07-31 15:34:13","2022-07-31 15:34:13");
INSERT INTO payments VALUES("14","spr-20231121-092746","1","","16","2","8","149578","","0","Cash","","2023-11-21 09:27:46","2023-11-21 09:27:46");
INSERT INTO payments VALUES("15","spr-20231121-093738","1","","17","2","8","64240","","0","Cash","","2023-11-21 09:37:38","2023-11-21 09:37:38");
INSERT INTO payments VALUES("16","spr-20231121-114708","1","","18","2","8","64240","","0","Cash","","2023-11-21 11:47:08","2023-11-21 11:47:08");
INSERT INTO payments VALUES("17","spr-20231121-121150","1","","19","2","8","245179","","0","Cash","","2023-11-21 12:11:50","2023-11-21 12:11:50");
INSERT INTO payments VALUES("18","spr-20231126-121821","1","","20","2","8","8002.5","","0.5","Cash","","2023-11-26 12:18:21","2023-11-26 12:18:21");
INSERT INTO payments VALUES("19","spr-20231126-122348","1","","21","2","8","36531.3","","0","Cash","","2023-11-26 12:23:48","2023-11-26 12:23:48");
INSERT INTO payments VALUES("20","spr-20231128-031024","1","","22","2","8","2250","","750","Cash","","2023-11-28 15:10:24","2023-11-28 15:10:24");
INSERT INTO payments VALUES("21","spr-20231129-064953","1","","23","2","8","1058.75","","0","Cash","","2023-11-29 18:49:53","2023-11-29 18:49:53");
INSERT INTO payments VALUES("22","spr-20231130-033031","1","","24","2","8","2250","","0","Cash","","2023-11-30 15:30:31","2023-11-30 15:30:31");
INSERT INTO payments VALUES("23","spr-20231202-024857","1","","25","2","8","3917.55","","0","Cash","","2023-12-02 14:48:57","2023-12-02 14:48:57");
INSERT INTO payments VALUES("24","spr-20231203-104859","1","","26","2","8","22527.9","","0","Cash","","2023-12-03 10:48:59","2023-12-03 10:48:59");
INSERT INTO payments VALUES("25","spr-20231204-010622","1","","27","2","8","25500","","0","Cash","","2023-12-04 13:06:22","2023-12-04 13:06:22");
INSERT INTO payments VALUES("27","spr-20231204-025644","1","","29","2","8","22500","","0","Cash","","2023-12-04 14:56:44","2023-12-04 14:56:44");
INSERT INTO payments VALUES("28","spr-20231205-010148","1","","30","2","8","19500","","0","Cash","","2023-12-05 13:01:48","2023-12-05 13:01:48");
INSERT INTO payments VALUES("29","spr-20231206-093118","1","","31","2","8","1050","","0","Cash","","2023-12-06 21:31:18","2023-12-06 21:31:18");
INSERT INTO payments VALUES("32","spr-20231208-080239","1","","34","2","8","1600","","0","Cash","","2023-12-08 20:02:39","2023-12-08 20:02:39");
INSERT INTO payments VALUES("34","spr-20231217-063724","1","","36","2","9","8350","","0","Cash","","2023-12-17 18:37:24","2023-12-17 18:37:24");
INSERT INTO payments VALUES("35","spr-20231219-112621","1","","37","2","9","3600","","0","Cash","","2023-12-19 11:26:21","2023-12-19 11:26:21");
INSERT INTO payments VALUES("36","spr-20231219-034420","1","","38","2","9","9000","","0","Cash","","2023-12-19 15:44:20","2023-12-19 15:44:20");
INSERT INTO payments VALUES("37","spr-20231219-102045","1","","39","2","9","1000","","0","Cash","","2023-12-19 22:20:45","2023-12-19 22:20:45");
INSERT INTO payments VALUES("38","spr-20231221-105024","1","","40","2","9","73500","","0","Cash","","2023-12-21 22:50:24","2023-12-21 22:50:24");
INSERT INTO payments VALUES("39","spr-20231230-011021","1","","41","2","9","43000","","0","Cash","","2023-12-30 13:10:21","2023-12-30 13:10:21");
INSERT INTO payments VALUES("40","spr-20231230-063642","1","","42","2","9","20000","","0","Cash","","2023-12-30 18:36:42","2023-12-30 18:36:42");
INSERT INTO payments VALUES("42","spr-20240101-020835","1","","44","2","9","22500","","0","Cash","","2024-01-01 14:08:35","2024-01-01 14:08:35");
INSERT INTO payments VALUES("43","spr-20240102-091325","1","","45","2","9","1200","","0","Cash","","2024-01-02 21:13:25","2024-01-02 21:13:25");
INSERT INTO payments VALUES("44","spr-20240109-060729","1","","46","2","9","22500","","0","Cash","","2024-01-09 18:07:29","2024-01-09 18:07:29");
INSERT INTO payments VALUES("45","spr-20240109-084411","1","","47","2","9","22000","","0","Cash","","2024-01-09 20:44:11","2024-01-09 20:44:11");
INSERT INTO payments VALUES("46","spr-20240111-064437","1","","48","2","9","41000","","0","Cash","","2024-01-11 18:44:37","2024-01-11 18:44:37");
INSERT INTO payments VALUES("47","spr-20240112-081242","1","","49","2","9","9000","","0","Cash","","2024-01-12 20:12:42","2024-01-12 20:12:42");
INSERT INTO payments VALUES("49","spr-20240112-082706","1","","51","2","9","44000","","0","Cash","","2024-01-12 20:27:06","2024-01-12 20:27:06");
INSERT INTO payments VALUES("50","spr-20240112-084555","1","","52","2","9","1755","","0","Cash","","2024-01-12 20:45:55","2024-01-12 20:45:55");
INSERT INTO payments VALUES("51","spr-20240113-044917","1","","53","2","9","2890","","0","Cash","Cash on Delivery","2024-01-13 16:49:17","2024-01-13 16:49:17");
INSERT INTO payments VALUES("52","spr-20240114-122647","1","","54","2","9","9000","","0","Cash","","2024-01-14 12:26:47","2024-01-14 12:26:47");
INSERT INTO payments VALUES("53","spr-20240114-124405","1","","55","2","9","27000","","0","Cash","","2024-01-14 12:44:05","2024-01-14 12:44:05");
INSERT INTO payments VALUES("54","spr-20240114-124724","1","","56","2","9","24000","","0","Cash","","2024-01-14 12:47:24","2024-01-14 12:47:24");
INSERT INTO payments VALUES("55","spr-20240114-035025","1","","57","2","9","7429","","1","Cash","","2024-01-14 15:50:25","2024-01-14 15:50:25");
INSERT INTO payments VALUES("56","spr-20240114-094849","1","","58","2","9","3700","","0","Cash","","2024-01-14 21:48:49","2024-01-14 21:48:49");
INSERT INTO payments VALUES("57","spr-20240115-060225","1","","59","2","9","3800","","0","Cash","","2024-01-15 18:02:25","2024-01-15 18:02:25");
INSERT INTO payments VALUES("58","spr-20240115-073052","1","","60","2","9","3400","","0","Cash","","2024-01-15 19:30:52","2024-01-15 19:30:52");
INSERT INTO payments VALUES("59","spr-20240116-120140","1","","61","2","9","3501","","4","Cash","","2024-01-16 12:01:40","2024-01-16 12:01:40");
INSERT INTO payments VALUES("60","spr-20240116-120822","1","","62","2","9","3300","","200","Cash","","2024-01-16 12:08:22","2024-01-16 12:08:22");
INSERT INTO payments VALUES("61","spr-20240116-121441","1","","63","2","9","25500","","0","Cash","","2024-01-16 12:14:41","2024-01-16 12:14:41");
INSERT INTO payments VALUES("62","spr-20240118-105407","1","","64","2","9","2800","","0","Cash","","2024-01-18 10:54:07","2024-01-18 10:54:07");
INSERT INTO payments VALUES("63","spr-20240119-122228","1","","65","2","9","3500","","0","Cash","","2024-01-19 12:22:28","2024-01-19 12:22:28");
INSERT INTO payments VALUES("64","spr-20240119-122442","1","","66","2","9","1000","","0","Cash","","2024-01-19 12:24:42","2024-01-19 12:24:42");
INSERT INTO payments VALUES("65","spr-20240120-080611","1","","67","2","9","3867.5","","132.5","Cash","","2024-01-20 20:06:11","2024-01-20 20:06:11");
INSERT INTO payments VALUES("66","spr-20240121-020007","1","","68","2","9","29500","","0","Cash","","2024-01-21 14:00:07","2024-01-21 14:00:07");
INSERT INTO payments VALUES("67","spr-20240121-034001","1","","69","2","9","4700","","0","Cash","","2024-01-21 15:40:01","2024-01-21 15:40:01");
INSERT INTO payments VALUES("68","spr-20240122-080733","1","","70","2","9","3700","","0","Cash","","2024-01-22 20:07:33","2024-01-22 20:07:33");
INSERT INTO payments VALUES("69","spr-20240123-035527","1","","71","2","9","30900","","0","Cash","","2024-01-23 15:55:27","2024-01-23 15:55:27");
INSERT INTO payments VALUES("70","spr-20240124-104406","1","","72","2","9","67900","","0","Cash","","2024-01-24 10:44:06","2024-01-24 10:44:06");
INSERT INTO payments VALUES("71","spr-20240124-093503","1","","73","2","9","8000","","0","Cash","","2024-01-24 21:35:03","2024-01-24 21:35:03");
INSERT INTO payments VALUES("72","spr-20240126-113505","1","","74","2","9","1000","","0","Cash","","2024-01-26 11:35:05","2024-01-26 11:35:05");
INSERT INTO payments VALUES("73","spr-20240128-055251","1","","75","2","9","43000","","0","Cash","","2024-01-28 17:52:51","2024-01-28 17:52:51");
INSERT INTO payments VALUES("74","spr-20240131-020113","1","","76","2","9","27500","","0","Cash","","2024-01-31 14:01:13","2024-01-31 14:01:13");
INSERT INTO payments VALUES("75","spr-20240131-064012","1","","77","2","9","18000","","0","Cash","","2024-01-31 18:40:12","2024-01-31 18:40:12");
INSERT INTO payments VALUES("76","spr-20240202-024357","1","","78","2","9","9000","","0","Credit Card","","2024-02-02 14:43:57","2024-02-02 14:43:57");
INSERT INTO payments VALUES("77","spr-20240202-024438","1","","79","2","9","9000","","0","Cash","","2024-02-02 14:44:38","2024-02-02 14:44:38");
INSERT INTO payments VALUES("78","spr-20240202-040607","1","","80","2","9","34000","","0","Cash","EMI -DATE-20-02-23 TAKA NIBO","2024-02-02 16:06:07","2024-02-02 16:06:07");
INSERT INTO payments VALUES("79","spr-20240213-034252","1","","81","2","9","43000","","0","Cash","","2024-02-13 15:42:52","2024-02-13 15:42:52");
INSERT INTO payments VALUES("80","spr-20240217-105442","1","","82","2","9","39200","","0","Cash","","2024-02-17 10:54:42","2024-02-17 10:54:42");
INSERT INTO payments VALUES("81","spr-20240218-081253","1","","83","2","9","7400","","0","Cash","","2024-02-18 20:12:53","2024-02-18 20:12:53");
INSERT INTO payments VALUES("82","spr-20240229-014844","1","","84","2","9","67000","","0","Cash","","2024-02-29 13:48:44","2024-02-29 13:48:44");
INSERT INTO payments VALUES("83","spr-20240304-041004","1","","85","2","9","45000","","0","Cash","","2024-03-04 16:10:04","2024-03-04 16:10:04");
INSERT INTO payments VALUES("84","spr-20240306-100400","1","","86","2","9","219000","","0","Cash","","2024-03-06 10:04:00","2024-03-06 10:04:00");
INSERT INTO payments VALUES("85","spr-20240306-092329","1","","87","2","9","4300","","0","Cash","","2024-03-06 21:23:29","2024-03-06 21:23:29");
INSERT INTO payments VALUES("86","spr-20240308-045026","1","","88","2","9","49000","","0","Cash","","2024-03-08 16:50:26","2024-03-08 16:50:26");
INSERT INTO payments VALUES("87","spr-20240309-015230","1","","89","2","9","3000","","0","Cash","","2024-03-09 13:52:30","2024-03-09 13:52:30");
INSERT INTO payments VALUES("88","spr-20240315-105026","1","","90","2","9","69000","","0","Cash","","2024-03-15 10:50:26","2024-03-15 10:50:26");
INSERT INTO payments VALUES("89","spr-20240318-032217","1","","91","2","9","70000","","0","Cash","","2024-03-18 15:22:17","2024-03-18 15:22:17");
INSERT INTO payments VALUES("90","spr-20240318-100922","1","","92","2","9","31000","","0","Cash","","2024-03-18 22:09:22","2024-03-18 22:09:22");
INSERT INTO payments VALUES("91","spr-20240322-103538","1","","93","2","9","4500","","0","Credit Card","","2024-03-22 22:35:38","2024-03-22 22:35:38");
INSERT INTO payments VALUES("92","spr-20240322-103700","1","","94","2","9","4500","","0","Cash","","2024-03-22 22:37:00","2024-03-22 22:37:00");
INSERT INTO payments VALUES("93","spr-20240329-104559","1","","95","2","9","26000","","0","Cash","","2024-03-29 10:45:59","2024-03-29 10:45:59");
INSERT INTO payments VALUES("94","spr-20240329-033202","1","","96","2","9","7700","","0","Cash","","2024-03-29 15:32:02","2024-03-29 15:32:02");
INSERT INTO payments VALUES("95","spr-20240403-122022","1","","97","2","9","20000","","0","Cash","","2024-04-03 12:20:22","2024-04-03 12:20:22");
INSERT INTO payments VALUES("96","spr-20240405-032745","1","","98","2","9","4500","","0","Cash","","2024-04-05 15:27:45","2024-04-05 15:27:45");
INSERT INTO payments VALUES("97","spr-20240405-101448","1","","99","2","9","79500","","0","Cash","","2024-04-05 22:14:48","2024-04-05 22:14:48");
INSERT INTO payments VALUES("98","spr-20240406-081108","1","","100","2","9","52500","","0","Cash","","2024-04-06 20:11:08","2024-04-06 20:11:08");
INSERT INTO payments VALUES("99","spr-20240409-092225","1","","101","2","9","47000","","0","Cash","","2024-04-09 21:22:25","2024-04-09 21:22:25");
INSERT INTO payments VALUES("100","spr-20240410-010937","1","","102","2","9","8000","","0","Cash","","2024-04-10 13:09:37","2024-04-10 13:09:37");
INSERT INTO payments VALUES("102","spr-20240410-080422","1","","104","2","9","13050","","0","Cash","","2024-04-10 20:04:22","2024-04-10 20:04:22");
INSERT INTO payments VALUES("103","spr-20240410-080450","1","","105","2","9","13050","","0","Cash","","2024-04-10 20:04:50","2024-04-10 20:04:50");
INSERT INTO payments VALUES("104","spr-20240418-120143","1","","106","2","9","46000","","0","Cash","","2024-04-18 12:01:43","2024-04-18 12:01:43");
INSERT INTO payments VALUES("105","spr-20240418-071615","1","","107","2","9","28891.5","","108.5","Cash","","2024-04-18 19:16:15","2024-04-18 19:16:15");
INSERT INTO payments VALUES("106","spr-20240422-065712","1","","108","2","9","70500","","0","Cash","","2024-04-22 18:57:12","2024-04-22 18:57:12");
INSERT INTO payments VALUES("107","spr-20240423-071223","1","","109","2","9","48650","","0","Cash","","2024-04-23 19:12:23","2024-04-23 19:12:23");
INSERT INTO payments VALUES("108","spr-20240430-104017","1","","110","2","9","51500","","0","Cash","","2024-04-30 22:40:17","2024-04-30 22:40:17");
INSERT INTO payments VALUES("109","spr-20240503-071904","1","","111","2","9","8500","","0","Cash","","2024-05-03 19:19:04","2024-05-03 19:19:04");
INSERT INTO payments VALUES("110","spr-20240505-090627","1","","112","2","9","4770","","0","Cash","","2024-05-05 21:06:27","2024-05-05 21:06:27");
INSERT INTO payments VALUES("111","spr-20240509-040201","1","","113","2","9","24000","","0","Cash","bikash-5000.dbbl-6500.cash-3500","2024-05-09 16:02:01","2024-05-09 16:02:01");
INSERT INTO payments VALUES("112","spr-20240509-040555","1","","114","2","9","65000","","0","Cash","","2024-05-09 16:05:55","2024-05-09 16:05:55");
INSERT INTO payments VALUES("113","spr-20240509-044519","1","","115","2","9","80000","","0","Cash","29-04-24... Adv-20000/-
08-05-24... Adv-20000/-","2024-05-09 16:45:19","2024-05-09 16:45:19");
INSERT INTO payments VALUES("114","spr-20240509-050734","1","","116","2","9","3000","","0","Cash","","2024-05-09 17:07:34","2024-05-09 17:07:34");
INSERT INTO payments VALUES("115","spr-20240509-051810","1","","117","2","9","23000","","0","Cash","","2024-05-09 17:18:10","2024-05-09 17:18:10");
INSERT INTO payments VALUES("116","spr-20240509-053459","1","","118","2","9","2300","","0","Cash","","2024-05-09 17:34:59","2024-05-09 17:34:59");
INSERT INTO payments VALUES("118","spr-20240516-095955","1","","120","2","9","6800","","0","Cash","","2024-05-16 21:59:55","2024-05-16 21:59:55");
INSERT INTO payments VALUES("119","spr-20240516-101409","1","","121","2","9","4150","","0","Cash","","2024-05-16 22:14:09","2024-05-16 22:14:09");
INSERT INTO payments VALUES("120","spr-20240523-101228","1","","122","2","9","12200","","0","Cash","","2024-05-23 22:12:28","2024-05-23 22:12:28");
INSERT INTO payments VALUES("121","spr-20240529-070139","1","","123","2","9","2500","","0","Cash","","2024-05-29 19:01:39","2024-05-29 19:01:39");



CREATE TABLE `payrolls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissions VALUES("4","products-edit","web","2018-06-03 13:00:09","2018-06-03 13:00:09");
INSERT INTO permissions VALUES("5","products-delete","web","2018-06-04 10:54:22","2018-06-04 10:54:22");
INSERT INTO permissions VALUES("6","products-add","web","2018-06-04 12:34:14","2018-06-04 12:34:14");
INSERT INTO permissions VALUES("7","products-index","web","2018-06-04 15:34:27","2018-06-04 15:34:27");
INSERT INTO permissions VALUES("8","purchases-index","web","2018-06-04 20:03:19","2018-06-04 20:03:19");
INSERT INTO permissions VALUES("9","purchases-add","web","2018-06-04 20:12:25","2018-06-04 20:12:25");
INSERT INTO permissions VALUES("10","purchases-edit","web","2018-06-04 21:47:36","2018-06-04 21:47:36");
INSERT INTO permissions VALUES("11","purchases-delete","web","2018-06-04 21:47:36","2018-06-04 21:47:36");
INSERT INTO permissions VALUES("12","sales-index","web","2018-06-04 22:49:08","2018-06-04 22:49:08");
INSERT INTO permissions VALUES("13","sales-add","web","2018-06-04 22:49:52","2018-06-04 22:49:52");
INSERT INTO permissions VALUES("14","sales-edit","web","2018-06-04 22:49:52","2018-06-04 22:49:52");
INSERT INTO permissions VALUES("15","sales-delete","web","2018-06-04 22:49:53","2018-06-04 22:49:53");
INSERT INTO permissions VALUES("16","quotes-index","web","2018-06-05 10:05:10","2018-06-05 10:05:10");
INSERT INTO permissions VALUES("17","quotes-add","web","2018-06-05 10:05:10","2018-06-05 10:05:10");
INSERT INTO permissions VALUES("18","quotes-edit","web","2018-06-05 10:05:10","2018-06-05 10:05:10");
INSERT INTO permissions VALUES("19","quotes-delete","web","2018-06-05 10:05:10","2018-06-05 10:05:10");
INSERT INTO permissions VALUES("20","transfers-index","web","2018-06-05 10:30:03","2018-06-05 10:30:03");
INSERT INTO permissions VALUES("21","transfers-add","web","2018-06-05 10:30:03","2018-06-05 10:30:03");
INSERT INTO permissions VALUES("22","transfers-edit","web","2018-06-05 10:30:03","2018-06-05 10:30:03");
INSERT INTO permissions VALUES("23","transfers-delete","web","2018-06-05 10:30:03","2018-06-05 10:30:03");
INSERT INTO permissions VALUES("24","returns-index","web","2018-06-05 10:50:24","2018-06-05 10:50:24");
INSERT INTO permissions VALUES("25","returns-add","web","2018-06-05 10:50:24","2018-06-05 10:50:24");
INSERT INTO permissions VALUES("26","returns-edit","web","2018-06-05 10:50:25","2018-06-05 10:50:25");
INSERT INTO permissions VALUES("27","returns-delete","web","2018-06-05 10:50:25","2018-06-05 10:50:25");
INSERT INTO permissions VALUES("28","customers-index","web","2018-06-05 11:15:54","2018-06-05 11:15:54");
INSERT INTO permissions VALUES("29","customers-add","web","2018-06-05 11:15:55","2018-06-05 11:15:55");
INSERT INTO permissions VALUES("30","customers-edit","web","2018-06-05 11:15:55","2018-06-05 11:15:55");
INSERT INTO permissions VALUES("31","customers-delete","web","2018-06-05 11:15:55","2018-06-05 11:15:55");
INSERT INTO permissions VALUES("32","suppliers-index","web","2018-06-05 11:40:12","2018-06-05 11:40:12");
INSERT INTO permissions VALUES("33","suppliers-add","web","2018-06-05 11:40:12","2018-06-05 11:40:12");
INSERT INTO permissions VALUES("34","suppliers-edit","web","2018-06-05 11:40:12","2018-06-05 11:40:12");
INSERT INTO permissions VALUES("35","suppliers-delete","web","2018-06-05 11:40:12","2018-06-05 11:40:12");
INSERT INTO permissions VALUES("36","product-report","web","2018-06-25 11:05:33","2018-06-25 11:05:33");
INSERT INTO permissions VALUES("37","purchase-report","web","2018-06-25 11:24:56","2018-06-25 11:24:56");
INSERT INTO permissions VALUES("38","sale-report","web","2018-06-25 11:33:13","2018-06-25 11:33:13");
INSERT INTO permissions VALUES("39","customer-report","web","2018-06-25 11:36:51","2018-06-25 11:36:51");
INSERT INTO permissions VALUES("40","due-report","web","2018-06-25 11:39:52","2018-06-25 11:39:52");
INSERT INTO permissions VALUES("41","users-index","web","2018-06-25 12:00:10","2018-06-25 12:00:10");
INSERT INTO permissions VALUES("42","users-add","web","2018-06-25 12:00:10","2018-06-25 12:00:10");
INSERT INTO permissions VALUES("43","users-edit","web","2018-06-25 12:01:30","2018-06-25 12:01:30");
INSERT INTO permissions VALUES("44","users-delete","web","2018-06-25 12:01:30","2018-06-25 12:01:30");
INSERT INTO permissions VALUES("45","profit-loss","web","2018-07-15 09:50:05","2018-07-15 09:50:05");
INSERT INTO permissions VALUES("46","best-seller","web","2018-07-15 10:01:38","2018-07-15 10:01:38");
INSERT INTO permissions VALUES("47","daily-sale","web","2018-07-15 10:24:21","2018-07-15 10:24:21");
INSERT INTO permissions VALUES("48","monthly-sale","web","2018-07-15 10:30:41","2018-07-15 10:30:41");
INSERT INTO permissions VALUES("49","daily-purchase","web","2018-07-15 10:36:46","2018-07-15 10:36:46");
INSERT INTO permissions VALUES("50","monthly-purchase","web","2018-07-15 10:48:17","2018-07-15 10:48:17");
INSERT INTO permissions VALUES("51","payment-report","web","2018-07-15 11:10:41","2018-07-15 11:10:41");
INSERT INTO permissions VALUES("52","warehouse-stock-report","web","2018-07-15 11:16:55","2018-07-15 11:16:55");
INSERT INTO permissions VALUES("53","product-qty-alert","web","2018-07-15 11:33:21","2018-07-15 11:33:21");
INSERT INTO permissions VALUES("54","supplier-report","web","2018-07-30 15:00:01","2018-07-30 15:00:01");
INSERT INTO permissions VALUES("55","expenses-index","web","2018-09-05 13:07:10","2018-09-05 13:07:10");
INSERT INTO permissions VALUES("56","expenses-add","web","2018-09-05 13:07:10","2018-09-05 13:07:10");
INSERT INTO permissions VALUES("57","expenses-edit","web","2018-09-05 13:07:10","2018-09-05 13:07:10");
INSERT INTO permissions VALUES("58","expenses-delete","web","2018-09-05 13:07:11","2018-09-05 13:07:11");
INSERT INTO permissions VALUES("59","general_setting","web","2018-10-20 11:10:04","2018-10-20 11:10:04");
INSERT INTO permissions VALUES("60","mail_setting","web","2018-10-20 11:10:04","2018-10-20 11:10:04");
INSERT INTO permissions VALUES("61","pos_setting","web","2018-10-20 11:10:04","2018-10-20 11:10:04");
INSERT INTO permissions VALUES("62","hrm_setting","web","2019-01-02 22:30:23","2019-01-02 22:30:23");
INSERT INTO permissions VALUES("63","purchase-return-index","web","2019-01-03 09:45:14","2019-01-03 09:45:14");
INSERT INTO permissions VALUES("64","purchase-return-add","web","2019-01-03 09:45:14","2019-01-03 09:45:14");
INSERT INTO permissions VALUES("65","purchase-return-edit","web","2019-01-03 09:45:14","2019-01-03 09:45:14");
INSERT INTO permissions VALUES("66","purchase-return-delete","web","2019-01-03 09:45:14","2019-01-03 09:45:14");
INSERT INTO permissions VALUES("67","account-index","web","2019-01-03 10:06:13","2019-01-03 10:06:13");
INSERT INTO permissions VALUES("68","balance-sheet","web","2019-01-03 10:06:14","2019-01-03 10:06:14");
INSERT INTO permissions VALUES("69","account-statement","web","2019-01-03 10:06:14","2019-01-03 10:06:14");
INSERT INTO permissions VALUES("70","department","web","2019-01-03 10:30:01","2019-01-03 10:30:01");
INSERT INTO permissions VALUES("71","attendance","web","2019-01-03 10:30:01","2019-01-03 10:30:01");
INSERT INTO permissions VALUES("72","payroll","web","2019-01-03 10:30:01","2019-01-03 10:30:01");
INSERT INTO permissions VALUES("73","employees-index","web","2019-01-03 10:52:19","2019-01-03 10:52:19");
INSERT INTO permissions VALUES("74","employees-add","web","2019-01-03 10:52:19","2019-01-03 10:52:19");
INSERT INTO permissions VALUES("75","employees-edit","web","2019-01-03 10:52:19","2019-01-03 10:52:19");
INSERT INTO permissions VALUES("76","employees-delete","web","2019-01-03 10:52:19","2019-01-03 10:52:19");
INSERT INTO permissions VALUES("77","user-report","web","2019-01-16 18:48:18","2019-01-16 18:48:18");
INSERT INTO permissions VALUES("78","stock_count","web","2019-02-17 22:32:01","2019-02-17 22:32:01");
INSERT INTO permissions VALUES("79","adjustment","web","2019-02-17 22:32:02","2019-02-17 22:32:02");
INSERT INTO permissions VALUES("80","sms_setting","web","2019-02-22 17:18:03","2019-02-22 17:18:03");
INSERT INTO permissions VALUES("81","create_sms","web","2019-02-22 17:18:03","2019-02-22 17:18:03");
INSERT INTO permissions VALUES("82","print_barcode","web","2019-03-07 17:02:19","2019-03-07 17:02:19");
INSERT INTO permissions VALUES("83","empty_database","web","2019-03-07 17:02:19","2019-03-07 17:02:19");
INSERT INTO permissions VALUES("84","customer_group","web","2019-03-07 17:37:15","2019-03-07 17:37:15");
INSERT INTO permissions VALUES("85","unit","web","2019-03-07 17:37:15","2019-03-07 17:37:15");
INSERT INTO permissions VALUES("86","tax","web","2019-03-07 17:37:15","2019-03-07 17:37:15");
INSERT INTO permissions VALUES("87","gift_card","web","2019-03-07 18:29:38","2019-03-07 18:29:38");
INSERT INTO permissions VALUES("88","coupon","web","2019-03-07 18:29:38","2019-03-07 18:29:38");
INSERT INTO permissions VALUES("89","holiday","web","2019-10-19 20:57:15","2019-10-19 20:57:15");
INSERT INTO permissions VALUES("90","warehouse-report","web","2019-10-22 18:00:23","2019-10-22 18:00:23");
INSERT INTO permissions VALUES("91","warehouse","web","2020-02-26 18:47:32","2020-02-26 18:47:32");
INSERT INTO permissions VALUES("92","brand","web","2020-02-26 18:59:59","2020-02-26 18:59:59");
INSERT INTO permissions VALUES("93","billers-index","web","2020-02-26 19:11:15","2020-02-26 19:11:15");
INSERT INTO permissions VALUES("94","billers-add","web","2020-02-26 19:11:15","2020-02-26 19:11:15");
INSERT INTO permissions VALUES("95","billers-edit","web","2020-02-26 19:11:15","2020-02-26 19:11:15");
INSERT INTO permissions VALUES("96","billers-delete","web","2020-02-26 19:11:15","2020-02-26 19:11:15");
INSERT INTO permissions VALUES("97","money-transfer","web","2020-03-02 17:41:48","2020-03-02 17:41:48");
INSERT INTO permissions VALUES("98","category","web","2020-07-14 00:13:16","2020-07-14 00:13:16");
INSERT INTO permissions VALUES("99","delivery","web","2020-07-14 00:13:16","2020-07-14 00:13:16");
INSERT INTO permissions VALUES("100","send_notification","web","2020-10-31 18:21:31","2020-10-31 18:21:31");
INSERT INTO permissions VALUES("101","today_sale","web","2020-10-31 18:57:04","2020-10-31 18:57:04");
INSERT INTO permissions VALUES("102","today_profit","web","2020-10-31 18:57:04","2020-10-31 18:57:04");
INSERT INTO permissions VALUES("103","currency","web","2020-11-09 12:23:11","2020-11-09 12:23:11");
INSERT INTO permissions VALUES("104","backup_database","web","2020-11-15 12:16:55","2020-11-15 12:16:55");
INSERT INTO permissions VALUES("105","reward_point_setting","web","2021-06-27 16:34:42","2021-06-27 16:34:42");
INSERT INTO permissions VALUES("106","revenue_profit_summary","web","2022-02-09 01:57:21","2022-02-09 01:57:21");
INSERT INTO permissions VALUES("107","cash_flow","web","2022-02-09 01:57:22","2022-02-09 01:57:22");
INSERT INTO permissions VALUES("108","monthly_summary","web","2022-02-09 01:57:22","2022-02-09 01:57:22");
INSERT INTO permissions VALUES("109","yearly_report","web","2022-02-09 01:57:22","2022-02-09 01:57:22");
INSERT INTO permissions VALUES("110","discount_plan","web","2022-02-16 21:12:26","2022-02-16 21:12:26");
INSERT INTO permissions VALUES("111","discount","web","2022-02-16 21:12:38","2022-02-16 21:12:38");
INSERT INTO permissions VALUES("112","product-expiry-report","web","2022-03-30 17:39:20","2022-03-30 17:39:20");
INSERT INTO permissions VALUES("113","purchase-payment-index","web","2022-06-06 02:12:27","2022-06-06 02:12:27");
INSERT INTO permissions VALUES("114","purchase-payment-add","web","2022-06-06 02:12:28","2022-06-06 02:12:28");
INSERT INTO permissions VALUES("115","purchase-payment-edit","web","2022-06-06 02:12:28","2022-06-06 02:12:28");
INSERT INTO permissions VALUES("116","purchase-payment-delete","web","2022-06-06 02:12:28","2022-06-06 02:12:28");
INSERT INTO permissions VALUES("117","sale-payment-index","web","2022-06-06 02:12:28","2022-06-06 02:12:28");
INSERT INTO permissions VALUES("118","sale-payment-add","web","2022-06-06 02:12:28","2022-06-06 02:12:28");
INSERT INTO permissions VALUES("119","sale-payment-edit","web","2022-06-06 02:12:28","2022-06-06 02:12:28");
INSERT INTO permissions VALUES("120","sale-payment-delete","web","2022-06-06 02:12:28","2022-06-06 02:12:28");
INSERT INTO permissions VALUES("121","all_notification","web","2022-06-06 02:12:29","2022-06-06 02:12:29");
INSERT INTO permissions VALUES("122","sale-report-chart","web","2022-06-06 02:12:29","2022-06-06 02:12:29");
INSERT INTO permissions VALUES("123","dso-report","web","2022-06-06 02:12:29","2022-06-06 02:12:29");



CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) DEFAULT NULL,
  `stripe_secret_key` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `pos_setting_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO pos_setting VALUES("1","3","4","3","4","0","pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB","sk_test_TtQQaawhEYRwa3mU9CzttrEy","2018-09-02 15:17:04","2023-12-04 12:55:12");



CREATE TABLE `product_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_adjustments VALUES("1","1","1","","1","+","2022-07-31 15:19:08","2022-07-31 15:19:08");



CREATE TABLE `product_batches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_purchases VALUES("1","1","1","","","","10","10","1","800","0","0","0","8000","2022-07-31 12:21:45","2022-07-31 12:21:45");
INSERT INTO product_purchases VALUES("12","7","21","","","","1","1","2","51000","0","0","0","51000","2023-11-16 19:03:58","2023-11-16 19:03:58");
INSERT INTO product_purchases VALUES("13","7","22","","","","1","1","2","58000","0","0","0","58000","2023-11-16 19:04:28","2023-11-16 19:04:28");
INSERT INTO product_purchases VALUES("14","7","23","","","","1","1","2","43000","0","0","0","43000","2023-11-16 19:05:16","2023-11-16 19:05:16");
INSERT INTO product_purchases VALUES("15","7","24","","","","1","1","2","57000","0","0","0","57000","2023-11-16 19:05:46","2023-11-16 19:05:46");
INSERT INTO product_purchases VALUES("16","7","18","","","","1","1","2","119500","0","0","0","119500","2023-11-16 19:07:14","2023-11-16 19:07:14");
INSERT INTO product_purchases VALUES("17","7","20","","","","1","1","2","30900","0","0","0","30900","2023-11-16 19:07:14","2023-11-16 19:07:14");
INSERT INTO product_purchases VALUES("18","7","19","","","","1","1","2","25500","0","0","0","25500","2023-11-16 19:07:14","2023-11-16 19:07:14");
INSERT INTO product_purchases VALUES("19","7","23","","","","1","1","2","43000","0","0","0","43000","2023-11-16 19:07:14","2023-11-16 19:07:14");
INSERT INTO product_purchases VALUES("20","7","25","","","","1","1","2","42300","0","0","0","42300","2023-11-16 19:08:19","2023-11-16 19:08:19");
INSERT INTO product_purchases VALUES("21","7","17","","","","2","2","2","3500","0","0","0","7000","2023-11-16 19:10:36","2023-11-16 19:10:36");
INSERT INTO product_purchases VALUES("22","7","15","","","","2","2","2","1750","0","0","0","3500","2023-11-16 19:10:36","2023-11-16 19:10:36");
INSERT INTO product_purchases VALUES("23","7","62","","","","2","2","2","22612","0","0","0","45224","2023-11-20 19:06:21","2023-11-20 19:06:21");
INSERT INTO product_purchases VALUES("24","7","61","","","","2","2","2","21052","0","0","0","42104","2023-11-20 19:06:21","2023-11-20 19:06:21");
INSERT INTO product_purchases VALUES("25","7","69","","","","1","1","2","27292","0","0","0","27292","2023-11-20 19:23:36","2023-11-20 19:23:36");
INSERT INTO product_purchases VALUES("26","7","68","","","","1","1","2","25342","0","0","0","25342","2023-11-20 19:23:36","2023-11-20 19:23:36");
INSERT INTO product_purchases VALUES("27","7","67","","","","1","1","2","25818","0","0","0","25818","2023-11-20 19:23:36","2023-11-20 19:23:36");
INSERT INTO product_purchases VALUES("28","7","66","","","","1","1","2","31036","0","0","0","31036","2023-11-20 19:23:36","2023-11-20 19:23:36");
INSERT INTO product_purchases VALUES("29","7","65","","","","1","1","2","37822","0","0","0","37822","2023-11-20 19:23:36","2023-11-20 19:23:36");
INSERT INTO product_purchases VALUES("30","7","64","","","","1","1","2","31972","0","0","0","31972","2023-11-20 19:23:36","2023-11-20 19:23:36");
INSERT INTO product_purchases VALUES("31","7","63","","","","1","1","2","32752","0","0","0","32752","2023-11-20 19:23:36","2023-11-20 19:23:36");
INSERT INTO product_purchases VALUES("32","7","73","","","","1","1","2","3861","0","0","0","3861","2023-11-20 21:56:22","2023-11-20 21:56:22");
INSERT INTO product_purchases VALUES("33","7","72","","","","1","1","2","4017","0","0","0","4017","2023-11-20 21:56:22","2023-11-20 21:56:22");
INSERT INTO product_purchases VALUES("34","7","71","","","","1","1","2","38922","0","0","0","38922","2023-11-20 21:56:22","2023-11-20 21:56:22");
INSERT INTO product_purchases VALUES("35","7","70","","","","1","1","2","54990","0","0","0","54990","2023-11-20 21:56:22","2023-11-20 21:56:22");
INSERT INTO product_purchases VALUES("36","7","78","","","","1","1","2","35092","0","0","0","35092","2023-11-20 21:56:22","2023-11-20 21:56:22");
INSERT INTO product_purchases VALUES("37","7","33","","","","2","2","2","1650","0","0","0","3300","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_purchases VALUES("38","7","32","","","","2","2","2","1400","0","0","0","2800","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_purchases VALUES("39","7","31","","","","2","2","2","1550","0","0","0","3100","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_purchases VALUES("40","7","30","","","","2","2","2","6500","0","0","0","13000","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_purchases VALUES("41","7","29","","","","2","2","2","4850","0","0","0","9700","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_purchases VALUES("42","7","28","","","","2","2","2","5300","0","0","0","10600","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_purchases VALUES("43","7","27","","","","2","2","2","3700","0","0","0","7400","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_purchases VALUES("44","7","26","","","","2","2","2","3500","0","0","0","7000","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_purchases VALUES("45","7","48","","","","2","2","2","850","0","0","0","1700","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("46","7","60","","","","2","2","2","1025","0","0","0","2050","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("47","7","59","","","","2","2","2","1025","0","0","0","2050","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("48","7","58","","","","2","2","2","3350","0","0","0","6700","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("49","7","57","","","","2","2","2","3700","0","0","0","7400","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("50","7","56","","","","4","4","2","3150","0","0","0","12600","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("51","7","55","","","","1","1","2","3650","0","0","0","3650","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("52","7","54","","","","1","1","2","6800","0","0","0","6800","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("53","7","53","","","","1","1","2","7800","0","0","0","7800","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("54","7","52","","","","2","2","2","1500","0","0","0","3000","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("55","7","51","","","","2","2","2","1625","0","0","0","3250","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("56","7","50","","","","2","2","2","1350","0","0","0","2700","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("57","7","49","","","","2","2","2","950","0","0","0","1900","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("58","7","47","","","","2","2","2","1050","0","0","0","2100","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("59","7","46","","","","2","2","2","1350","0","0","0","2700","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("60","7","45","","","","2","2","2","2450","0","0","0","4900","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("61","7","44","","","","2","2","2","3100","0","0","0","6200","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("62","7","43","","","","2","2","2","2900","0","0","0","5800","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("63","7","42","","","","2","2","2","2050","0","0","0","4100","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("64","7","41","","","","2","2","2","2350","0","0","0","4700","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("65","7","40","","","","2","2","2","2100","0","0","0","4200","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("66","7","39","","","","1","1","2","3500","0","0","0","3500","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("67","7","38","","","","1","1","2","6500","0","0","0","6500","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("68","7","37","","","","1","1","2","4000","0","0","0","4000","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_purchases VALUES("69","7","77","","","","1","1","2","19000","0","0","0","19000","2023-11-22 18:42:26","2023-11-22 18:42:26");
INSERT INTO product_purchases VALUES("70","7","76","","","","1","1","2","19500","0","0","0","19500","2023-11-22 18:42:26","2023-11-22 18:42:26");
INSERT INTO product_purchases VALUES("71","7","74","","","","1","1","2","40500","0","0","0","40500","2023-11-22 18:42:26","2023-11-22 18:42:26");
INSERT INTO product_purchases VALUES("72","7","75","","","","1","1","2","58500","0","0","0","58500","2023-11-22 18:42:26","2023-11-22 18:42:26");
INSERT INTO product_purchases VALUES("73","7","20","","","","1","1","2","30900","0","0","0","30900","2023-11-23 21:57:32","2023-11-23 21:57:32");
INSERT INTO product_purchases VALUES("74","7","19","","","","1","1","2","25500","0","0","0","25500","2023-11-23 21:57:32","2023-11-23 21:57:32");
INSERT INTO product_purchases VALUES("75","7","18","","","","1","1","2","119500","0","0","0","119500","2023-11-23 21:57:32","2023-11-23 21:57:32");
INSERT INTO product_purchases VALUES("76","7","23","","","","1","1","2","43000","0","0","0","43000","2023-11-23 22:05:30","2023-11-23 22:05:30");
INSERT INTO product_purchases VALUES("77","7","64","","","","1","1","2","31972","0","0","0","31972","2023-11-23 22:11:22","2023-11-23 22:11:22");
INSERT INTO product_purchases VALUES("78","7","24","","","","1","1","2","57000","0","0","0","57000","2023-11-23 22:11:22","2023-11-23 22:11:22");
INSERT INTO product_purchases VALUES("79","7","34","","","","2","2","2","2100","0","0","0","4200","2023-11-23 22:20:06","2023-11-23 22:20:06");
INSERT INTO product_purchases VALUES("80","7","35","","","","2","2","2","2100","0","0","0","4200","2023-11-23 22:20:32","2023-11-23 22:20:32");
INSERT INTO product_purchases VALUES("81","7","36","","","","8","8","2","875","0","0","0","7000","2023-11-24 11:19:57","2023-11-24 11:19:57");
INSERT INTO product_purchases VALUES("82","29","84","","","","1","1","2","5565","0","0","0","5565","2023-11-27 18:05:16","2023-11-27 18:05:16");
INSERT INTO product_purchases VALUES("83","29","83","","","","1","1","2","4777","0","0","0","4777","2023-11-27 18:05:16","2023-11-27 18:05:16");
INSERT INTO product_purchases VALUES("84","29","82","","","","1","1","2","4410","0","0","0","4410","2023-11-27 18:05:16","2023-11-27 18:05:16");
INSERT INTO product_purchases VALUES("85","29","81","","","","1","1","2","4500","0","0","0","4500","2023-11-27 18:05:16","2023-11-27 18:05:16");
INSERT INTO product_purchases VALUES("86","29","80","","","","1","1","2","5700","0","0","0","5700","2023-11-27 18:05:16","2023-11-27 18:05:16");
INSERT INTO product_purchases VALUES("87","29","79","","","","1","1","2","5700","0","0","0","5700","2023-11-27 18:05:16","2023-11-27 18:05:16");
INSERT INTO product_purchases VALUES("88","29","86","","","","2","2","2","1650","0","0","0","3300","2023-12-02 15:51:07","2023-12-02 15:51:07");
INSERT INTO product_purchases VALUES("89","29","85","","","","2","2","2","1400","0","0","0","2800","2023-12-02 15:51:07","2023-12-02 15:51:07");
INSERT INTO product_purchases VALUES("97","34","87","","","","1","1","2","20500","0","0","0","20500","2023-12-05 11:18:33","2023-12-05 11:18:33");
INSERT INTO product_purchases VALUES("98","32","93","","","","2","2","2","14300","0","0","0","28600","2023-12-05 12:57:17","2023-12-05 12:57:17");
INSERT INTO product_purchases VALUES("99","32","89","","","","2","2","2","13200","0","0","0","26400","2023-12-05 12:57:17","2023-12-05 12:57:17");
INSERT INTO product_purchases VALUES("100","32","88","","","","2","2","2","8400","0","0","0","16800","2023-12-05 12:57:17","2023-12-05 12:57:17");
INSERT INTO product_purchases VALUES("101","32","91","","","","1","1","2","28000","0","0","0","28000","2023-12-05 12:57:17","2023-12-05 12:57:17");
INSERT INTO product_purchases VALUES("102","34","95","","","","1","1","2","6600","0","0","0","6600","2023-12-07 12:24:27","2023-12-07 12:24:27");
INSERT INTO product_purchases VALUES("103","34","94","","","","2","2","2","6000","0","0","0","12000","2023-12-07 12:24:27","2023-12-07 12:24:27");
INSERT INTO product_purchases VALUES("104","37","96","","","","1","1","2","6000","0","0","0","6000","2023-12-19 15:41:42","2023-12-19 15:41:42");
INSERT INTO product_purchases VALUES("105","38","97","","","","1","1","2","40000","0","0","0","40000","2023-12-27 12:08:54","2023-12-27 12:08:54");
INSERT INTO product_purchases VALUES("106","39","98","","","","1","1","2","39500","0","0","0","39500","2023-12-30 13:05:35","2023-12-30 13:05:35");
INSERT INTO product_purchases VALUES("107","31","87","","","","1","1","2","20500","0","0","0","20500","2024-01-01 14:00:00","2024-01-01 14:00:00");
INSERT INTO product_purchases VALUES("108","39","87","","","","1","1","2","20500","0","0","0","20500","2024-01-01 14:02:46","2024-01-01 14:02:46");
INSERT INTO product_purchases VALUES("109","39","79","","","","2","2","2","5700","0","0","0","11400","2024-01-03 15:09:27","2024-01-03 15:09:27");
INSERT INTO product_purchases VALUES("110","42","99","","","","10","10","2","1000","0","0","0","10000","2024-01-04 21:25:56","2024-01-04 21:25:56");
INSERT INTO product_purchases VALUES("111","43","61","","","","1","1","2","21052","0","0","0","21052","2024-01-09 20:51:17","2024-01-09 20:51:17");
INSERT INTO product_purchases VALUES("112","44","100","","","","3","3","2","7200","0","0","0","21600","2024-01-14 12:23:09","2024-01-14 12:23:09");
INSERT INTO product_purchases VALUES("113","45","102","","","","2","2","2","2000","0","0","0","4000","2024-01-14 15:44:10","2024-01-14 15:44:10");
INSERT INTO product_purchases VALUES("114","45","101","","","","2","2","2","2500","0","0","0","5000","2024-01-14 15:44:10","2024-01-14 15:44:10");
INSERT INTO product_purchases VALUES("115","45","61","","","","1","1","2","21052","0","0","0","21052","2024-01-14 21:44:00","2024-01-14 21:44:00");
INSERT INTO product_purchases VALUES("116","45","65","","","","1","1","2","37822","0","0","0","37822","2024-01-14 21:44:00","2024-01-14 21:44:00");
INSERT INTO product_purchases VALUES("117","45","67","","","","1","1","2","25818","0","0","0","25818","2024-01-14 21:44:00","2024-01-14 21:44:00");
INSERT INTO product_purchases VALUES("118","45","62","","","","1","1","2","22612","0","0","0","22612","2024-01-14 21:44:00","2024-01-14 21:44:00");
INSERT INTO product_purchases VALUES("119","47","115","","","","6","6","2","3150","0","0","0","18900","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("120","47","114","","","","4","4","2","2050","0","0","0","8200","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("121","47","113","","","","4","4","2","1200","0","0","0","4800","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("122","47","112","","","","4","4","2","1350","0","0","0","5400","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("123","47","50","","","","4","4","2","1350","0","0","0","5400","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("124","47","111","","","","4","4","2","825","0","0","0","3300","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("125","47","110","","","","4","4","2","900","0","0","0","3600","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("126","47","109","","","","5","5","2","3050","0","0","0","15250","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("127","47","108","","","","6","6","2","3150","0","0","0","18900","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("128","47","107","","","","4","4","2","2150","0","0","0","8600","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("129","47","106","","","","4","4","2","2550","0","0","0","10200","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("130","47","105","","","","4","4","2","2675","0","0","0","10700","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("131","47","104","","","","2","2","2","4500","0","0","0","9000","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("132","47","36","","","","12","12","2","875","0","0","0","10500","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("133","47","103","","","","2","2","2","2300","0","0","0","4600","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_purchases VALUES("134","48","116","","","","1","1","2","4500","0","0","0","4500","2024-01-21 15:36:40","2024-01-21 15:36:40");
INSERT INTO product_purchases VALUES("135","49","96","","","","1","1","2","6000","0","0","0","6000","2024-01-23 15:49:07","2024-01-23 15:49:07");
INSERT INTO product_purchases VALUES("136","49","117","","","","1","1","2","18000","0","0","0","18000","2024-01-23 15:49:07","2024-01-23 15:49:07");
INSERT INTO product_purchases VALUES("137","49","118","","","","1","1","2","60000","0","0","0","60000","2024-01-23 16:39:14","2024-01-23 16:39:14");
INSERT INTO product_purchases VALUES("138","49","120","","","","2","2","2","19500","0","0","0","39000","2024-01-29 13:33:14","2024-01-29 13:33:14");
INSERT INTO product_purchases VALUES("139","49","119","","","","2","2","2","14500","0","0","0","29000","2024-01-29 13:33:14","2024-01-29 13:33:14");
INSERT INTO product_purchases VALUES("140","49","122","","","","1","1","2","38000","0","0","0","38000","2024-01-29 13:40:32","2024-01-29 13:40:32");
INSERT INTO product_purchases VALUES("141","53","131","","","","4","4","2","4860.87","0","0","0","19443.48","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_purchases VALUES("142","53","130","","","","4","4","2","2947.83","0","0","0","11791.32","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_purchases VALUES("143","53","129","","","","12","12","2","3382.61","0","0","0","40591.32","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_purchases VALUES("144","53","128","","","","7","7","2","2947.83","0","0","0","20634.81","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_purchases VALUES("145","53","127","","","","4","4","2","22165.22","0","0","0","88660.88","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_purchases VALUES("146","53","126","","","","4","4","2","4339.13","0","0","0","17356.52","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_purchases VALUES("147","53","125","","","","5","5","2","4947.83","0","0","0","24739.15","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_purchases VALUES("148","53","124","","","","12","12","2","2165.22","0","0","0","25982.64","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_purchases VALUES("149","53","123","","","","10","10","2","1208.7","0","0","0","12087","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_purchases VALUES("150","54","68","","","","1","1","2","25342","0","0","0","25342","2024-01-31 13:58:25","2024-01-31 13:58:25");
INSERT INTO product_purchases VALUES("151","54","69","","","","1","1","2","27292","0","0","0","27292","2024-01-31 13:58:25","2024-01-31 13:58:25");
INSERT INTO product_purchases VALUES("152","54","132","","","","1","1","2","26512","0","0","0","26512","2024-01-31 13:58:25","2024-01-31 13:58:25");
INSERT INTO product_purchases VALUES("153","54","65","","","","1","1","2","37822","0","0","0","37822","2024-01-31 13:58:25","2024-01-31 13:58:25");
INSERT INTO product_purchases VALUES("154","55","94","","","","1","1","2","6000","0","0","0","6000","2024-02-02 14:42:30","2024-02-02 14:42:30");
INSERT INTO product_purchases VALUES("155","56","134","","","","1","1","2","27682","0","0","0","27682","2024-02-04 18:54:49","2024-02-04 18:54:49");
INSERT INTO product_purchases VALUES("156","56","133","","","","1","1","2","30100","0","0","0","30100","2024-02-04 18:54:49","2024-02-04 18:54:49");
INSERT INTO product_purchases VALUES("157","56","68","","","","1","1","2","25342","0","0","0","25342","2024-02-04 18:54:49","2024-02-04 18:54:49");
INSERT INTO product_purchases VALUES("158","57","135","","","","1","1","2","41000","0","0","0","41000","2024-03-04 13:27:46","2024-03-04 13:27:46");
INSERT INTO product_purchases VALUES("159","58","137","","","","2","2","2","40000","0","0","0","80000","2024-03-06 09:52:59","2024-03-06 09:52:59");
INSERT INTO product_purchases VALUES("160","58","136","","","","2","2","2","54000","0","0","0","108000","2024-03-06 09:52:59","2024-03-06 09:52:59");
INSERT INTO product_purchases VALUES("161","59","22","","","","1","1","2","58000","0","0","0","58000","2024-03-15 10:43:03","2024-03-15 10:43:03");
INSERT INTO product_purchases VALUES("162","60","22","","","","1","1","2","58000","0","0","0","58000","2024-03-18 15:19:05","2024-03-18 15:19:05");
INSERT INTO product_purchases VALUES("163","61","138","","","","1","1","2","23938","0","0","0","23938","2024-03-29 10:42:40","2024-03-29 10:42:40");
INSERT INTO product_purchases VALUES("164","62","139","","","","1","1","2","16000","0","0","0","16000","2024-04-03 12:16:44","2024-04-03 12:16:44");
INSERT INTO product_purchases VALUES("165","63","140","","","","1","1","2","73500","0","0","0","73500","2024-04-05 22:13:43","2024-04-05 22:13:43");
INSERT INTO product_purchases VALUES("166","64","141","","","","1","1","2","43000","0","0","0","43000","2024-04-09 21:20:11","2024-04-09 21:20:11");
INSERT INTO product_purchases VALUES("167","65","142","","","","2","2","2","3350","0","0","0","6700","2024-04-10 13:06:46","2024-04-10 13:06:46");
INSERT INTO product_purchases VALUES("168","65","143","","","","2","2","2","5500","0","0","0","11000","2024-04-10 19:48:40","2024-04-10 19:48:40");
INSERT INTO product_purchases VALUES("169","65","144","","","","2","2","2","500","0","0","0","1000","2024-04-10 19:48:40","2024-04-10 19:48:40");
INSERT INTO product_purchases VALUES("170","67","22","","","","1","1","2","58000","0","0","0","58000","2024-04-22 18:54:43","2024-04-22 18:54:43");
INSERT INTO product_purchases VALUES("175","68","137","","","","1","1","2","40000","0","0","0","40000","2024-05-06 15:06:20","2024-05-06 15:06:20");
INSERT INTO product_purchases VALUES("176","68","119","","","","2","2","2","14500","0","0","0","29000","2024-05-06 15:06:20","2024-05-06 15:06:20");
INSERT INTO product_purchases VALUES("177","68","94","","","","1","1","2","6000","0","0","0","6000","2024-05-06 15:06:20","2024-05-06 15:06:20");
INSERT INTO product_purchases VALUES("182","71","145","","","","1","1","2","75652","0","0","0","75652","2024-05-09 15:54:48","2024-05-09 15:54:48");
INSERT INTO product_purchases VALUES("183","71","65","","","","1","1","2","38992","0","0","0","38992","2024-05-09 15:54:48","2024-05-09 15:54:48");
INSERT INTO product_purchases VALUES("184","73","142","","","","1","1","2","3350","0","0","0","3350","2024-05-16 22:09:40","2024-05-16 22:09:40");



CREATE TABLE `product_quotation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_quotation VALUES("1","1","1","","","1","1","900","0","0","0","900","2023-09-10 11:21:20","2023-09-10 11:21:20");



CREATE TABLE `product_returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_returns VALUES("1","1","1","","","","1","1","900","0","0","0","900","2022-07-31 12:48:30","2022-07-31 12:48:30");



CREATE TABLE `product_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_sales VALUES("1","1","1","","","","3","1","900","0","0","0","2700","2022-07-31 12:43:39","2022-07-31 12:43:39");
INSERT INTO product_sales VALUES("16","16","24","","","","1","2","79739","0","0","0","79739","2023-11-21 09:27:46","2023-11-21 09:27:46");
INSERT INTO product_sales VALUES("17","16","19","","","","1","2","34100","0","0","0","34100","2023-11-21 09:27:46","2023-11-21 09:27:46");
INSERT INTO product_sales VALUES("18","16","68","","","","1","2","35739","0","0","0","35739","2023-11-21 09:27:46","2023-11-21 09:27:46");
INSERT INTO product_sales VALUES("19","17","23","","","","1","2","64240","0","0","0","64240","2023-11-21 09:37:38","2023-11-21 09:37:38");
INSERT INTO product_sales VALUES("20","18","23","","","","1","2","64240","0","0","0","64240","2023-11-21 11:47:08","2023-11-21 11:47:08");
INSERT INTO product_sales VALUES("21","19","64","","","","1","2","45089","0","0","0","45089","2023-11-21 12:11:50","2023-11-21 12:11:50");
INSERT INTO product_sales VALUES("22","19","18","","","","1","2","159390","0","0","0","159390","2023-11-21 12:11:50","2023-11-21 12:11:50");
INSERT INTO product_sales VALUES("23","19","20","","","","1","2","40700","0","0","0","40700","2023-11-21 12:11:50","2023-11-21 12:11:50");
INSERT INTO product_sales VALUES("24","20","58","","","","2","2","4850","0","0","0","9700","2023-11-26 12:18:21","2023-11-26 12:18:21");
INSERT INTO product_sales VALUES("25","21","63","","","","1","2","41990","0","0","0","41990","2023-11-26 12:23:48","2023-11-26 12:23:48");
INSERT INTO product_sales VALUES("26","22","31","","","","1","2","2250","0","0","0","2250","2023-11-28 15:10:23","2023-11-28 15:10:23");
INSERT INTO product_sales VALUES("27","23","36","","","","1","2","1375","0","0","0","1375","2023-11-29 18:49:53","2023-11-29 18:49:53");
INSERT INTO product_sales VALUES("28","24","31","","","","1","2","2250","0","0","0","2250","2023-11-30 15:30:30","2023-11-30 15:30:30");
INSERT INTO product_sales VALUES("29","25","56","","","","1","2","4550","0","0","0","4550","2023-12-02 14:48:57","2023-12-02 14:48:57");
INSERT INTO product_sales VALUES("30","26","87","","","","1","2","28919","0","0","0","28919","2023-12-03 10:48:59","2023-12-03 10:48:59");
INSERT INTO product_sales VALUES("31","27","90","","","","1","2","25500","0","0","0","25500","2023-12-04 13:06:22","2023-12-04 13:06:22");
INSERT INTO product_sales VALUES("33","29","87","","","","1","2","28919","0","0","0","28919","2023-12-04 14:56:44","2023-12-04 14:56:44");
INSERT INTO product_sales VALUES("34","30","93","","","","1","2","25500","0","0","0","25500","2023-12-05 13:01:48","2023-12-05 13:01:48");
INSERT INTO product_sales VALUES("35","31","36","","","","1","2","1375","0","0","0","1375","2023-12-06 21:31:18","2023-12-06 21:31:18");
INSERT INTO product_sales VALUES("39","34","50","","","","1","2","1950","0","0","0","1950","2023-12-08 20:02:39","2023-12-08 20:02:39");
INSERT INTO product_sales VALUES("42","36","79","","","","1","2","11550","0","0","0","11550","2023-12-17 18:37:24","2023-12-17 18:37:24");
INSERT INTO product_sales VALUES("43","36","36","","","","1","2","1375","0","0","0","1375","2023-12-17 18:37:24","2023-12-17 18:37:24");
INSERT INTO product_sales VALUES("44","37","46","","","","1","2","1900","0","0","0","1900","2023-12-19 11:26:21","2023-12-19 11:26:21");
INSERT INTO product_sales VALUES("45","37","51","","","","1","2","2350","0","0","0","2350","2023-12-19 11:26:21","2023-12-19 11:26:21");
INSERT INTO product_sales VALUES("46","38","96","","","","1","2","9900","0","0","0","9900","2023-12-19 15:44:20","2023-12-19 15:44:20");
INSERT INTO product_sales VALUES("47","39","36","","","","1","2","1375","0","0","0","1375","2023-12-19 22:20:45","2023-12-19 22:20:45");
INSERT INTO product_sales VALUES("48","40","75","","","","1","2","98890","0","0","0","98890","2023-12-21 22:50:24","2023-12-21 22:50:24");
INSERT INTO product_sales VALUES("49","41","98","","","","1","2","49500","0","0","0","49500","2023-12-30 13:10:21","2023-12-30 13:10:21");
INSERT INTO product_sales VALUES("50","42","93","","","","1","2","25500","0","0","0","25500","2023-12-30 18:36:42","2023-12-30 18:36:42");
INSERT INTO product_sales VALUES("52","44","87","","","","1","2","28919","0","0","0","28919","2024-01-01 14:08:35","2024-01-01 14:08:35");
INSERT INTO product_sales VALUES("53","45","60","","","","1","2","1595","0","0","0","1595","2024-01-02 21:13:25","2024-01-02 21:13:25");
INSERT INTO product_sales VALUES("54","46","61","","","","1","2","26990","0","0","0","26990","2024-01-09 18:07:29","2024-01-09 18:07:29");
INSERT INTO product_sales VALUES("55","47","61","","","","1","2","26990","0","0","0","26990","2024-01-09 20:44:11","2024-01-09 20:44:11");
INSERT INTO product_sales VALUES("56","48","65","","","","1","2","48490","0","0","0","48490","2024-01-11 18:44:37","2024-01-11 18:44:37");
INSERT INTO product_sales VALUES("57","49","94","","","","1","2","9000","0","0","0","9000","2024-01-12 20:12:42","2024-01-12 20:12:42");
INSERT INTO product_sales VALUES("60","51","20","","","","1","2","40700","0","0","0","40700","2024-01-12 20:27:05","2024-01-12 20:27:05");
INSERT INTO product_sales VALUES("61","51","94","","","","1","2","9900","0","0","0","9900","2024-01-12 20:27:05","2024-01-12 20:27:05");
INSERT INTO product_sales VALUES("62","52","50","","","","1","2","1950","0","0","0","1950","2024-01-12 20:45:55","2024-01-12 20:45:55");
INSERT INTO product_sales VALUES("63","53","41","","","","1","2","3400","0","0","0","3400","2024-01-13 16:49:17","2024-01-13 16:49:17");
INSERT INTO product_sales VALUES("64","54","100","","","","1","2","9000","0","0","0","9000","2024-01-14 12:26:47","2024-01-14 12:26:47");
INSERT INTO product_sales VALUES("65","55","67","","","","1","2","33090","0","0","0","33090","2024-01-14 12:44:05","2024-01-14 12:44:05");
INSERT INTO product_sales VALUES("66","56","62","","","","1","2","28990","0","0","0","28990","2024-01-14 12:47:24","2024-01-14 12:47:24");
INSERT INTO product_sales VALUES("67","57","101","","","","1","2","4190","0","0","0","4190","2024-01-14 15:50:25","2024-01-14 15:50:25");
INSERT INTO product_sales VALUES("68","57","56","","","","1","2","4550","0","0","0","4550","2024-01-14 15:50:25","2024-01-14 15:50:25");
INSERT INTO product_sales VALUES("69","58","44","","","","1","2","4450","0","0","0","4450","2024-01-14 21:48:49","2024-01-14 21:48:49");
INSERT INTO product_sales VALUES("70","59","44","","","","1","2","4450","0","0","0","4450","2024-01-15 18:02:25","2024-01-15 18:02:25");
INSERT INTO product_sales VALUES("71","60","36","","","","1","2","1250","0","0","0","1250","2024-01-15 19:30:52","2024-01-16 11:37:00");
INSERT INTO product_sales VALUES("72","60","86","","","","1","2","3300","0","0","0","3300","2024-01-15 19:30:52","2024-01-16 11:37:00");
INSERT INTO product_sales VALUES("73","61","102","","","","1","2","3890","0","0","0","3890","2024-01-16 12:01:40","2024-01-16 12:02:36");
INSERT INTO product_sales VALUES("74","62","43","","","","1","2","4200","0","0","0","4200","2024-01-16 12:08:22","2024-01-16 12:09:21");
INSERT INTO product_sales VALUES("75","63","76","","","","1","2","31500","0","0","0","31500","2024-01-16 12:14:41","2024-01-16 12:14:41");
INSERT INTO product_sales VALUES("76","64","41","","","","1","2","3400","0","0","0","3400","2024-01-18 10:54:07","2024-01-18 10:54:07");
INSERT INTO product_sales VALUES("77","65","109","","","","1","2","4490","0","0","0","4490","2024-01-19 12:22:28","2024-01-19 12:22:28");
INSERT INTO product_sales VALUES("78","66","111","","","","1","2","1390","0","0","0","1390","2024-01-19 12:24:42","2024-01-19 12:24:42");
INSERT INTO product_sales VALUES("79","67","56","","","","1","2","4550","0","0","0","4550","2024-01-20 20:06:11","2024-01-20 20:06:11");
INSERT INTO product_sales VALUES("80","68","69","","","","1","2","34990","0","0","0","34990","2024-01-21 14:00:07","2024-01-21 14:00:07");
INSERT INTO product_sales VALUES("81","69","116","","","","1","2","5500","0","0","0","5500","2024-01-21 15:40:01","2024-01-21 15:40:01");
INSERT INTO product_sales VALUES("82","70","43","","","","1","2","4200","0","0","0","4200","2024-01-22 20:07:33","2024-01-22 20:07:33");
INSERT INTO product_sales VALUES("83","71","117","","","","1","2","20900","0","0","0","20900","2024-01-23 15:55:27","2024-01-23 15:55:27");
INSERT INTO product_sales VALUES("84","71","96","","","","1","2","10000","0","0","0","10000","2024-01-23 15:55:27","2024-01-23 15:55:27");
INSERT INTO product_sales VALUES("85","72","118","","","","1","2","79990","0","0","0","79990","2024-01-24 10:44:06","2024-01-24 10:44:06");
INSERT INTO product_sales VALUES("86","73","79","","","","1","2","10500","0","0","0","10500","2024-01-24 21:35:02","2024-01-24 21:35:02");
INSERT INTO product_sales VALUES("87","74","110","","","","1","2","1450","0","0","0","1450","2024-01-26 11:35:05","2024-01-26 11:35:05");
INSERT INTO product_sales VALUES("88","75","65","","","","1","2","48490","0","0","0","48490","2024-01-28 17:52:50","2024-01-28 17:52:50");
INSERT INTO product_sales VALUES("89","76","68","","","","1","2","32490","0","0","0","32490","2024-01-31 14:01:13","2024-01-31 14:01:13");
INSERT INTO product_sales VALUES("90","77","119","","","","1","2","21900","0","0","0","21900","2024-01-31 18:40:12","2024-01-31 18:40:12");
INSERT INTO product_sales VALUES("91","78","94","","","","1","2","9000","0","0","0","9000","2024-02-02 14:43:57","2024-02-02 14:43:57");
INSERT INTO product_sales VALUES("92","79","94","","","","1","2","9000","0","0","0","9000","2024-02-02 14:44:38","2024-02-02 14:44:38");
INSERT INTO product_sales VALUES("93","80","66","","","","1","2","39790","0","0","0","39790","2024-02-02 16:06:06","2024-02-02 16:06:06");
INSERT INTO product_sales VALUES("94","81","97","","","","1","2","45000","0","0","0","45000","2024-02-13 15:42:52","2024-02-13 15:42:52");
INSERT INTO product_sales VALUES("95","82","78","","","","1","2","44990","0","0","0","44990","2024-02-17 10:54:42","2024-02-17 11:05:32");
INSERT INTO product_sales VALUES("96","83","57","","","","1","2","5350","0","0","0","5350","2024-02-18 20:12:53","2024-02-18 20:12:53");
INSERT INTO product_sales VALUES("97","83","46","","","","1","2","1900","0","0","0","1900","2024-02-18 20:12:53","2024-02-18 20:12:53");
INSERT INTO product_sales VALUES("98","83","113","","","","1","2","1790","0","0","0","1790","2024-02-18 20:12:53","2024-02-18 20:12:53");
INSERT INTO product_sales VALUES("99","84","22","","","","1","2","79890","0","0","0","79890","2024-02-29 13:48:44","2024-02-29 13:48:44");
INSERT INTO product_sales VALUES("100","85","135","","","","1","2","51000","0","0","0","51000","2024-03-04 16:10:04","2024-03-04 16:10:04");
INSERT INTO product_sales VALUES("101","86","136","","","","2","2","73490","0","0","0","146980","2024-03-06 10:04:00","2024-03-06 10:04:00");
INSERT INTO product_sales VALUES("102","86","137","","","","2","2","55990","0","0","0","111980","2024-03-06 10:04:00","2024-03-06 10:04:00");
INSERT INTO product_sales VALUES("103","87","17","","","","1","2","5100","0","0","0","5100","2024-03-06 21:23:29","2024-03-06 21:23:29");
INSERT INTO product_sales VALUES("104","88","122","","","","1","2","62900","0","0","0","62900","2024-03-08 16:50:26","2024-03-08 18:27:30");
INSERT INTO product_sales VALUES("105","89","107","","","","1","2","3400","0","0","0","3400","2024-03-09 13:52:30","2024-03-09 13:52:30");
INSERT INTO product_sales VALUES("106","90","22","","","","1","2","79890","0","0","0","79890","2024-03-15 10:50:26","2024-03-15 10:50:26");
INSERT INTO product_sales VALUES("107","91","22","","","","1","2","79890","0","0","0","79890","2024-03-18 15:22:17","2024-03-18 15:22:17");
INSERT INTO product_sales VALUES("108","92","120","","","","1","2","37900","0","0","0","37900","2024-03-18 22:09:22","2024-03-18 22:09:22");
INSERT INTO product_sales VALUES("109","93","26","","","","1","2","5100","0","0","0","5100","2024-03-22 22:35:38","2024-03-22 22:35:38");
INSERT INTO product_sales VALUES("110","94","26","","","","1","2","5100","0","0","0","5100","2024-03-22 22:37:00","2024-03-22 22:37:00");
INSERT INTO product_sales VALUES("111","95","138","","","","1","2","30690","0","0","0","30690","2024-03-29 10:45:59","2024-03-29 10:45:59");
INSERT INTO product_sales VALUES("112","96","54","","","","1","2","9800","0","0","0","9800","2024-03-29 15:32:02","2024-03-29 15:32:02");
INSERT INTO product_sales VALUES("113","97","139","","","","1","2","25500","0","0","0","25500","2024-04-03 12:20:22","2024-04-03 12:20:22");
INSERT INTO product_sales VALUES("114","98","57","","","","1","2","5350","0","0","0","5350","2024-04-05 15:27:45","2024-04-05 15:27:45");
INSERT INTO product_sales VALUES("115","99","140","","","","1","2","79500","0","0","0","79500","2024-04-05 22:14:48","2024-04-07 11:52:36");
INSERT INTO product_sales VALUES("116","100","23","","","","1","2","58400","0","0","0","58400","2024-04-06 20:11:08","2024-04-06 20:11:08");
INSERT INTO product_sales VALUES("117","101","141","","","","1","2","47000","0","0","0","47000","2024-04-09 21:22:25","2024-04-09 21:22:25");
INSERT INTO product_sales VALUES("118","102","142","","","","2","2","4400","0","0","0","8800","2024-04-10 13:09:37","2024-04-10 13:09:37");
INSERT INTO product_sales VALUES("121","104","143","","","","2","2","6500","0","0","0","13000","2024-04-10 20:04:22","2024-04-10 20:04:22");
INSERT INTO product_sales VALUES("122","104","144","","","","1","2","650","0","0","0","650","2024-04-10 20:04:22","2024-04-10 20:04:22");
INSERT INTO product_sales VALUES("123","105","143","","","","2","2","6500","0","0","0","13000","2024-04-10 20:04:50","2024-04-10 20:04:50");
INSERT INTO product_sales VALUES("124","105","144","","","","1","2","650","0","0","0","650","2024-04-10 20:04:50","2024-04-10 20:04:50");
INSERT INTO product_sales VALUES("125","106","71","","","","1","2","51900","0","0","0","51900","2024-04-18 12:01:43","2024-04-18 12:01:43");
INSERT INTO product_sales VALUES("126","107","132","","","","1","2","33990","0","0","0","33990","2024-04-18 19:16:15","2024-04-18 19:16:15");
INSERT INTO product_sales VALUES("127","108","22","","","","1","2","79890","0","0","0","79890","2024-04-22 18:57:12","2024-04-22 18:57:12");
INSERT INTO product_sales VALUES("128","109","17","","","","1","2","5100","0","0","0","5100","2024-04-23 19:12:23","2024-04-23 19:12:23");
INSERT INTO product_sales VALUES("129","109","103","","","","1","2","3390","0","0","0","3390","2024-04-23 19:12:23","2024-04-23 19:12:23");
INSERT INTO product_sales VALUES("130","109","65","","","","1","2","48490","0","0","0","48490","2024-04-23 19:12:23","2024-04-23 19:12:23");
INSERT INTO product_sales VALUES("131","110","137","","","","1","2","55990","0","0","0","55990","2024-04-30 22:40:17","2024-04-30 22:40:17");
INSERT INTO product_sales VALUES("132","111","80","","","","1","2","10500","0","0","0","10500","2024-05-03 19:19:04","2024-05-03 19:30:10");
INSERT INTO product_sales VALUES("133","112","27","","","","1","2","5300","0","0","0","5300","2024-05-05 21:06:27","2024-05-05 21:06:27");
INSERT INTO product_sales VALUES("134","113","61","","","","1","2","26990","0","0","0","26990","2024-05-09 16:02:01","2024-05-09 16:02:01");
INSERT INTO product_sales VALUES("135","114","70","","","","1","2","72500","0","0","0","72500","2024-05-09 16:05:55","2024-05-09 16:05:55");
INSERT INTO product_sales VALUES("136","115","145","","","","1","2","96990","0","0","0","96990","2024-05-09 16:45:19","2024-05-09 16:45:19");
INSERT INTO product_sales VALUES("137","116","45","","","","1","2","3550","0","0","0","3550","2024-05-09 17:07:34","2024-05-09 17:07:34");
INSERT INTO product_sales VALUES("138","117","127","","","","1","2","25490","0","0","0","25490","2024-05-09 17:18:10","2024-05-09 17:18:10");
INSERT INTO product_sales VALUES("139","118","124","","","","1","2","2490","0","0","0","2490","2024-05-09 17:34:59","2024-05-09 17:34:59");
INSERT INTO product_sales VALUES("141","120","55","","","","1","2","5200","0","0","0","5200","2024-05-16 21:59:55","2024-05-16 21:59:55");
INSERT INTO product_sales VALUES("142","120","114","","","","1","2","2990","0","0","0","2990","2024-05-16 21:59:55","2024-05-16 21:59:55");
INSERT INTO product_sales VALUES("143","121","142","","","","1","2","4150","0","0","0","4150","2024-05-16 22:14:09","2024-05-16 22:14:09");
INSERT INTO product_sales VALUES("144","122","79","","","","1","2","10500","0","0","0","10500","2024-05-23 22:12:28","2024-05-23 22:12:28");
INSERT INTO product_sales VALUES("145","122","102","","","","1","2","3890","0","0","0","3890","2024-05-23 22:12:28","2024-05-23 22:12:28");
INSERT INTO product_sales VALUES("146","123","40","","","","1","2","3050","0","0","0","3050","2024-05-29 19:01:38","2024-05-29 19:01:38");



CREATE TABLE `product_transfer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_transfer VALUES("1","1","1","","","","1","1","800","0","0","800","2023-09-10 11:26:02","2023-09-10 11:26:02");



CREATE TABLE `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_warehouse VALUES("1","1","","","","1","8","","2022-07-31 12:21:45","2023-11-12 22:50:24");
INSERT INTO product_warehouse VALUES("2","2","","","","1","0","","2023-09-10 09:49:43","2023-11-12 22:49:53");
INSERT INTO product_warehouse VALUES("3","2","","","","4","0","","2023-11-08 20:32:45","2023-11-12 20:49:12");
INSERT INTO product_warehouse VALUES("4","1","","","","4","0","","2023-11-08 20:32:45","2023-11-12 20:49:12");
INSERT INTO product_warehouse VALUES("5","8","","","","4","0","","2023-11-12 23:21:34","2023-11-17 16:44:03");
INSERT INTO product_warehouse VALUES("6","14","","","","4","0","","2023-11-16 12:24:06","2023-11-17 16:43:32");
INSERT INTO product_warehouse VALUES("7","15","","","","4","2","","2023-11-16 16:44:20","2023-11-16 19:10:36");
INSERT INTO product_warehouse VALUES("8","17","","","","4","0","","2023-11-16 17:50:27","2024-04-23 19:12:23");
INSERT INTO product_warehouse VALUES("9","21","","","","4","1","","2023-11-16 19:03:58","2023-11-16 19:03:58");
INSERT INTO product_warehouse VALUES("10","22","","","","4","0","","2023-11-16 19:04:28","2024-04-22 18:57:12");
INSERT INTO product_warehouse VALUES("11","23","","","","4","0","","2023-11-16 19:05:16","2024-04-06 20:11:08");
INSERT INTO product_warehouse VALUES("12","24","","","","4","1","","2023-11-16 19:05:46","2023-12-07 16:06:58");
INSERT INTO product_warehouse VALUES("13","18","","","","4","1","","2023-11-16 19:07:14","2023-12-19 18:47:44");
INSERT INTO product_warehouse VALUES("14","20","","","","4","0","","2023-11-16 19:07:14","2024-01-12 20:27:05");
INSERT INTO product_warehouse VALUES("15","19","","","","4","1","","2023-11-16 19:07:14","2023-12-19 18:47:44");
INSERT INTO product_warehouse VALUES("16","25","","","","4","1","","2023-11-16 19:08:19","2023-11-16 19:08:19");
INSERT INTO product_warehouse VALUES("17","62","","","","4","2","","2023-11-20 19:06:21","2024-01-14 21:44:00");
INSERT INTO product_warehouse VALUES("18","61","","","","4","1","","2023-11-20 19:06:21","2024-05-09 16:02:01");
INSERT INTO product_warehouse VALUES("19","69","","","","4","1","","2023-11-20 19:23:36","2024-01-31 13:58:25");
INSERT INTO product_warehouse VALUES("20","68","","","","4","1","","2023-11-20 19:23:36","2024-02-04 18:54:49");
INSERT INTO product_warehouse VALUES("21","67","","","","4","1","","2023-11-20 19:23:36","2024-01-14 21:44:00");
INSERT INTO product_warehouse VALUES("22","66","","","","4","0","","2023-11-20 19:23:36","2024-02-02 16:06:06");
INSERT INTO product_warehouse VALUES("23","65","","","","4","1","","2023-11-20 19:23:36","2024-05-09 15:54:48");
INSERT INTO product_warehouse VALUES("24","64","","","","4","1","","2023-11-20 19:23:36","2023-11-23 22:11:22");
INSERT INTO product_warehouse VALUES("25","63","","","","4","0","","2023-11-20 19:23:36","2023-11-26 12:23:48");
INSERT INTO product_warehouse VALUES("26","73","","","","4","1","","2023-11-20 21:56:22","2023-11-20 21:56:22");
INSERT INTO product_warehouse VALUES("27","72","","","","4","1","","2023-11-20 21:56:22","2023-11-20 21:56:22");
INSERT INTO product_warehouse VALUES("28","71","","","","4","0","","2023-11-20 21:56:22","2024-04-18 12:01:43");
INSERT INTO product_warehouse VALUES("29","70","","","","4","0","","2023-11-20 21:56:22","2024-05-09 16:05:55");
INSERT INTO product_warehouse VALUES("30","78","","","","4","0","","2023-11-20 21:56:22","2024-02-17 11:05:32");
INSERT INTO product_warehouse VALUES("31","33","","","","4","2","","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_warehouse VALUES("32","32","","","","4","2","","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_warehouse VALUES("33","31","","","","4","0","","2023-11-22 16:05:36","2023-11-30 15:30:30");
INSERT INTO product_warehouse VALUES("34","30","","","","4","2","","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_warehouse VALUES("35","29","","","","4","2","","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_warehouse VALUES("36","28","","","","4","2","","2023-11-22 16:05:36","2023-11-22 16:05:36");
INSERT INTO product_warehouse VALUES("37","27","","","","4","1","","2023-11-22 16:05:36","2024-05-05 21:06:27");
INSERT INTO product_warehouse VALUES("38","26","","","","4","0","","2023-11-22 16:05:36","2024-03-22 22:37:00");
INSERT INTO product_warehouse VALUES("39","48","","","","4","2","","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_warehouse VALUES("40","60","","","","4","1","","2023-11-22 16:19:48","2024-01-02 21:13:25");
INSERT INTO product_warehouse VALUES("41","59","","","","4","2","","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_warehouse VALUES("42","58","","","","4","0","","2023-11-22 16:19:48","2023-11-26 12:18:21");
INSERT INTO product_warehouse VALUES("43","57","","","","4","0","","2023-11-22 16:19:48","2024-04-05 15:27:45");
INSERT INTO product_warehouse VALUES("44","56","","","","4","1","","2023-11-22 16:19:48","2024-01-20 20:06:11");
INSERT INTO product_warehouse VALUES("45","55","","","","4","0","","2023-11-22 16:19:48","2024-05-16 21:59:55");
INSERT INTO product_warehouse VALUES("46","54","","","","4","0","","2023-11-22 16:19:48","2024-03-29 15:32:02");
INSERT INTO product_warehouse VALUES("47","53","","","","4","1","","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_warehouse VALUES("48","52","","","","4","2","","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_warehouse VALUES("49","51","","","","4","1","","2023-11-22 16:19:48","2023-12-19 11:26:21");
INSERT INTO product_warehouse VALUES("50","50","","","","4","4","","2023-11-22 16:19:48","2024-01-19 12:16:47");
INSERT INTO product_warehouse VALUES("51","49","","","","4","2","","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_warehouse VALUES("52","47","","","","4","2","","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_warehouse VALUES("53","46","","","","4","0","","2023-11-22 16:19:48","2024-02-18 20:12:53");
INSERT INTO product_warehouse VALUES("54","45","","","","4","1","","2023-11-22 16:19:48","2024-05-09 17:07:34");
INSERT INTO product_warehouse VALUES("55","44","","","","4","0","","2023-11-22 16:19:48","2024-01-15 18:02:25");
INSERT INTO product_warehouse VALUES("56","43","","","","4","0","","2023-11-22 16:19:48","2024-01-22 20:07:33");
INSERT INTO product_warehouse VALUES("57","42","","","","4","2","","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_warehouse VALUES("58","41","","","","4","0","","2023-11-22 16:19:48","2024-01-18 10:54:07");
INSERT INTO product_warehouse VALUES("59","40","","","","4","1","","2023-11-22 16:19:48","2024-05-29 19:01:38");
INSERT INTO product_warehouse VALUES("60","39","","","","4","1","","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_warehouse VALUES("61","38","","","","4","1","","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_warehouse VALUES("62","37","","","","4","1","","2023-11-22 16:19:48","2023-11-22 16:19:48");
INSERT INTO product_warehouse VALUES("63","77","","","","4","1","","2023-11-22 18:42:26","2023-11-22 18:42:26");
INSERT INTO product_warehouse VALUES("64","76","","","","4","0","","2023-11-22 18:42:26","2024-01-16 12:14:41");
INSERT INTO product_warehouse VALUES("65","74","","","","4","1","","2023-11-22 18:42:26","2023-11-22 18:42:26");
INSERT INTO product_warehouse VALUES("66","75","","","","4","0","","2023-11-22 18:42:26","2023-12-21 22:50:24");
INSERT INTO product_warehouse VALUES("67","34","","","","4","2","","2023-11-23 22:20:06","2024-05-23 22:09:47");
INSERT INTO product_warehouse VALUES("68","35","","","","4","2","","2023-11-23 22:20:32","2023-11-23 22:20:32");
INSERT INTO product_warehouse VALUES("69","36","","","","4","15","","2023-11-24 11:19:57","2024-01-19 12:16:47");
INSERT INTO product_warehouse VALUES("70","84","","","","4","1","","2023-11-27 18:05:16","2023-11-27 18:05:16");
INSERT INTO product_warehouse VALUES("71","83","","","","4","1","","2023-11-27 18:05:16","2023-11-27 18:05:16");
INSERT INTO product_warehouse VALUES("72","82","","","","4","1","","2023-11-27 18:05:16","2023-11-27 18:05:16");
INSERT INTO product_warehouse VALUES("73","81","","","","4","1","","2023-11-27 18:05:16","2023-11-27 18:05:16");
INSERT INTO product_warehouse VALUES("74","80","","","","4","0","","2023-11-27 18:05:16","2024-05-03 19:30:10");
INSERT INTO product_warehouse VALUES("75","79","","","","4","0","","2023-11-27 18:05:16","2024-05-23 22:12:28");
INSERT INTO product_warehouse VALUES("76","86","","","","4","1","","2023-12-02 15:51:07","2024-01-16 11:37:00");
INSERT INTO product_warehouse VALUES("77","85","","","","4","2","","2023-12-02 15:51:07","2023-12-02 15:51:07");
INSERT INTO product_warehouse VALUES("78","87","","","","4","0","","2023-12-03 10:32:54","2024-01-01 14:08:35");
INSERT INTO product_warehouse VALUES("79","90","","","","4","-1","","2023-12-04 12:24:25","2023-12-07 16:07:47");
INSERT INTO product_warehouse VALUES("80","89","","","","4","2","","2023-12-04 12:24:25","2023-12-05 12:57:17");
INSERT INTO product_warehouse VALUES("81","88","","","","4","2","","2023-12-04 12:24:25","2023-12-05 12:57:17");
INSERT INTO product_warehouse VALUES("82","91","","","","4","1","","2023-12-04 12:25:16","2023-12-07 16:06:58");
INSERT INTO product_warehouse VALUES("83","93","","","","4","0","","2023-12-05 12:57:17","2023-12-30 18:36:42");
INSERT INTO product_warehouse VALUES("84","95","","","","4","1","","2023-12-07 12:24:27","2024-05-06 15:06:20");
INSERT INTO product_warehouse VALUES("85","94","","","","4","0","","2023-12-07 12:24:27","2024-05-06 15:06:20");
INSERT INTO product_warehouse VALUES("86","96","","","","4","0","","2023-12-19 15:41:42","2024-01-23 15:55:27");
INSERT INTO product_warehouse VALUES("87","97","","","","4","0","","2023-12-27 12:08:54","2024-02-13 15:42:52");
INSERT INTO product_warehouse VALUES("88","98","","","","4","0","","2023-12-30 13:05:35","2023-12-30 13:10:21");
INSERT INTO product_warehouse VALUES("89","99","","","","4","10","","2024-01-04 21:25:56","2024-01-04 21:25:56");
INSERT INTO product_warehouse VALUES("90","100","","","","4","2","","2024-01-14 12:23:09","2024-01-14 12:26:47");
INSERT INTO product_warehouse VALUES("91","102","","","","4","0","","2024-01-14 15:44:10","2024-05-23 22:12:28");
INSERT INTO product_warehouse VALUES("92","101","","","","4","1","","2024-01-14 15:44:10","2024-01-14 15:50:25");
INSERT INTO product_warehouse VALUES("93","115","","","","4","6","","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_warehouse VALUES("94","114","","","","4","3","","2024-01-19 12:16:47","2024-05-16 21:59:55");
INSERT INTO product_warehouse VALUES("95","113","","","","4","3","","2024-01-19 12:16:47","2024-02-18 20:12:53");
INSERT INTO product_warehouse VALUES("96","112","","","","4","4","","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_warehouse VALUES("97","111","","","","4","3","","2024-01-19 12:16:47","2024-01-19 12:24:42");
INSERT INTO product_warehouse VALUES("98","110","","","","4","3","","2024-01-19 12:16:47","2024-01-26 11:35:05");
INSERT INTO product_warehouse VALUES("99","109","","","","4","4","","2024-01-19 12:16:47","2024-01-19 12:22:28");
INSERT INTO product_warehouse VALUES("100","108","","","","4","6","","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_warehouse VALUES("101","107","","","","4","3","","2024-01-19 12:16:47","2024-03-09 13:52:30");
INSERT INTO product_warehouse VALUES("102","106","","","","4","4","","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_warehouse VALUES("103","105","","","","4","4","","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_warehouse VALUES("104","104","","","","4","2","","2024-01-19 12:16:47","2024-01-19 12:16:47");
INSERT INTO product_warehouse VALUES("105","103","","","","4","1","","2024-01-19 12:16:47","2024-04-23 19:12:23");
INSERT INTO product_warehouse VALUES("106","116","","","","4","0","","2024-01-21 15:36:40","2024-01-21 15:40:01");
INSERT INTO product_warehouse VALUES("107","117","","","","4","0","","2024-01-23 15:49:07","2024-01-23 15:55:27");
INSERT INTO product_warehouse VALUES("108","118","","","","4","0","","2024-01-23 16:39:14","2024-01-24 10:44:06");
INSERT INTO product_warehouse VALUES("109","120","","","","4","1","","2024-01-29 13:33:14","2024-03-18 22:09:22");
INSERT INTO product_warehouse VALUES("110","119","","","","4","3","","2024-01-29 13:33:14","2024-05-06 15:06:20");
INSERT INTO product_warehouse VALUES("111","122","","","","4","0","","2024-01-29 13:40:32","2024-03-08 18:27:30");
INSERT INTO product_warehouse VALUES("112","131","","","","4","4","","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_warehouse VALUES("113","130","","","","4","4","","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_warehouse VALUES("114","129","","","","4","12","","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_warehouse VALUES("115","128","","","","4","7","","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_warehouse VALUES("116","127","","","","4","3","","2024-01-29 14:46:36","2024-05-09 17:18:10");
INSERT INTO product_warehouse VALUES("117","126","","","","4","4","","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_warehouse VALUES("118","125","","","","4","5","","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_warehouse VALUES("119","124","","","","4","11","","2024-01-29 14:46:36","2024-05-09 17:34:59");
INSERT INTO product_warehouse VALUES("120","123","","","","4","10","","2024-01-29 14:46:36","2024-01-29 14:46:36");
INSERT INTO product_warehouse VALUES("121","132","","","","4","0","","2024-01-31 13:58:25","2024-04-18 19:16:15");
INSERT INTO product_warehouse VALUES("122","134","","","","4","1","","2024-02-04 18:54:49","2024-02-04 18:54:49");
INSERT INTO product_warehouse VALUES("123","133","","","","4","1","","2024-02-04 18:54:49","2024-02-04 18:54:49");
INSERT INTO product_warehouse VALUES("124","135","","","","4","0","","2024-03-04 13:27:46","2024-03-04 16:10:04");
INSERT INTO product_warehouse VALUES("125","137","","","","4","0","","2024-03-06 09:52:59","2024-05-06 15:06:20");
INSERT INTO product_warehouse VALUES("126","136","","","","4","0","","2024-03-06 09:52:59","2024-03-06 10:04:00");
INSERT INTO product_warehouse VALUES("127","138","","","","4","0","","2024-03-29 10:42:40","2024-03-29 10:45:59");
INSERT INTO product_warehouse VALUES("128","139","","","","4","0","","2024-04-03 12:16:44","2024-04-03 12:20:22");
INSERT INTO product_warehouse VALUES("129","140","","","","4","0","","2024-04-05 22:13:43","2024-04-07 11:52:36");
INSERT INTO product_warehouse VALUES("130","141","","","","4","0","","2024-04-09 21:20:11","2024-04-09 21:22:25");
INSERT INTO product_warehouse VALUES("131","142","","","","4","0","","2024-04-10 13:06:46","2024-05-16 22:14:09");
INSERT INTO product_warehouse VALUES("132","143","","","","4","-2","","2024-04-10 19:48:40","2024-04-10 20:04:50");
INSERT INTO product_warehouse VALUES("133","144","","","","4","0","","2024-04-10 19:48:40","2024-04-10 20:04:50");
INSERT INTO product_warehouse VALUES("134","145","","","","4","0","","2024-05-09 15:52:59","2024-05-09 16:45:19");



CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `barcode_symbology` varchar(191) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `daily_sale_objective` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) DEFAULT NULL,
  `starting_date` varchar(200) DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `is_embeded` tinyint(1) DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) DEFAULT NULL,
  `variant_list` varchar(191) DEFAULT NULL,
  `qty_list` varchar(191) DEFAULT NULL,
  `price_list` varchar(191) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `variant_option` text DEFAULT NULL,
  `variant_value` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products VALUES("1","iPhoneX","99265514","standard","C128","1","1","1","1","1","800","1000","9","","","","","","","","2","202311090943532.jpeg","","0","","","0","","1","","","","","","","","0","2022-07-31 12:18:28","2023-11-12 22:50:24");
INSERT INTO products VALUES("2","iPhone11","05928605","standard","C128","1","1","1","1","1","400","600","0","","","","","","","","1","202311090944112.jpeg","","","","","0","","0","","","","","","","","0","2022-07-31 16:38:57","2023-11-12 22:49:53");
INSERT INTO products VALUES("3","English Book","BK01","standard","C128","2","2","2","2","2","200","300","0","","","","","","","","1","zummXD2dvAtI.png","","0","","","0","","0","","","","","","","","0","2023-09-16 10:00:49","2023-11-09 09:45:11");
INSERT INTO products VALUES("4","Historical Book","HS01","standard","C128","2","4","2","2","2","250","300","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","0","2023-09-16 10:07:36","2023-11-09 09:45:19");
INSERT INTO products VALUES("5","ComboBooks","CM01","combo","C128","2","5","0","0","0","0","600","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","4,3",",","1,1","300,300","","","","0","2023-09-16 10:10:12","2023-11-09 09:45:31");
INSERT INTO products VALUES("6","Electric Heater","88","service","UPCA","3","6","0","0","0","0","20000","0","","","","","","","","1","202311090944422.jpg","","","","","0","","0","","","","","","","","0","2023-11-08 20:26:48","2023-11-12 20:34:56");
INSERT INTO products VALUES("7","Smart Watch","33","digital","UPCA","4","7","0","0","0","0","6000","0","","","","","","","","1","1699501386328haylou-rt2-ls10-05-500x500-1.jpeg","","","","","","","","","","","","","","","0","2023-11-09 09:43:08","2023-11-12 20:35:15");
INSERT INTO products VALUES("8","frezz","42018732","standard","C128","5","9","3","3","3","20000","25000","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","1","","","","","","","","0","2023-11-12 23:19:29","2023-11-17 16:44:03");
INSERT INTO products VALUES("9","SHARP 4 DOOR 589","589","standard","C128","4","11","3","3","3","119500","134900","0","2","","","","2023-11-13","","","1","16998772008370vXQ85H8mL6wnPt6JJcAZaqPB2qGryKtag4PGaxT.png","","","","","0","","1","","","","","","","","0","2023-11-13 18:08:18","2023-11-15 17:06:05");
INSERT INTO products VALUES("10","samsung 43cu7500","7500","standard","C128","4","11","3","3","3","1","89900","0","3","","","","","","","1","1699967808234samsung.png","","","","","0","","1","","","","","","","","0","2023-11-14 19:16:52","2023-11-15 17:06:05");
INSERT INTO products VALUES("11","samsung 55au7700","7700","standard","C128","4","12","3","3","3","7700","56900","0","1","","","","","","","1","1699968004621samsung.png","","","","","","","1","","","","","","","","0","2023-11-14 19:20:08","2023-11-15 17:05:41");
INSERT INTO products VALUES("12","sharp","589","standard","C128","8","17","3","3","3","1","1","0","1","","","","","","","1","1700046710322sharp.png","","","","","","","1","","","","","","","","0","2023-11-15 17:11:56","2023-11-16 13:10:31");
INSERT INTO products VALUES("13","Walton","wfd-2b6","standard","C128","5","15","3","3","3","26900","26900","0","6","","","","","","","1","1700047299368SuTdhwlpzUaadfSAFXsAChOP47wtmZHC031RBwWQ.png","","","","","0","","1","","","","","","","","0","2023-11-15 17:21:43","2023-11-16 19:08:59");
INSERT INTO products VALUES("14","Walton boak 12 c","05047321","standard","C128","5","15","3","3","3","25000","29000","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","1","","","","","","","","0","2023-11-16 12:10:29","2023-11-17 16:43:32");
INSERT INTO products VALUES("15","egg beater","hm-620","standard","C128","7","18","3","3","3","1750","2550","2","2","","","","","","","1","1700130925008download.jpeg","","","","","","","","","","","","","","","1","2023-11-16 16:36:04","2023-11-16 19:10:36");
INSERT INTO products VALUES("16","pink","pink panther(750w)","standard","C128","7","20","3","3","3","3500","5100","0","2","","","","","","","1","1700131960432download (1).jpeg","","","","","0","","1","","","","","","","","0","2023-11-16 16:52:47","2023-11-16 17:54:35");
INSERT INTO products VALUES("17","blue bird 750w","blue bird 750w","standard","C128","7","20","3","3","3","3500","5100","0","2","","","","","","","1","202311160555502.jpeg","","","","","0","","1","","","","","","","","1","2023-11-16 17:46:34","2024-04-23 19:12:23");
INSERT INTO products VALUES("18","4 door","589","standard","C128","8","15","3","3","3","119500","144900","1","1","","","","","","","1","1700136244456download (2).jpeg","","","","","","","1","","","","","","","","1","2023-11-16 18:04:17","2023-12-19 18:47:44");
INSERT INTO products VALUES("19","wm cool","858","standard","C128","8","19","3","3","3","25500","31000","1","0","","","","","","","1","1700136464395download (3).jpeg","","","","","","","1","","","","","","","","1","2023-11-16 18:07:48","2023-12-19 18:47:44");
INSERT INTO products VALUES("20","wm silve","es-w90ew","standard","C128","8","19","3","3","3","30900","37000","0","","","","","","","","1","1700136615272download (4).jpeg","","","","","0","","1","","","","","","","","1","2023-11-16 18:10:18","2024-01-12 20:27:05");
INSERT INTO products VALUES("21","1.5 ton","inv","standard","C128","9","14","3","3","3","51000","68500","1","","","","","","","","1","1700138266655download (5).jpeg","","","","","0","","1","","","","","","","","1","2023-11-16 18:37:55","2024-05-24 22:15:37");
INSERT INTO products VALUES("22","1.5 ton inv","18xlmv","standard","C128","6","14","3","3","3","58000","79890","0","","","","","","","","1","202311160641202.jpeg","","","","","0","","1","","","","","","","","1","2023-11-16 18:41:04","2024-04-22 18:57:12");
INSERT INTO products VALUES("23","1.0 inv","12xpuv","standard","C128","6","14","3","3","3","43000","58400","0","","","","","","","","1","1700138701816download (6).jpeg","","","","","","","1","","","","","","","","1","2023-11-16 18:45:06","2024-04-06 20:11:08");
INSERT INTO products VALUES("24","1.5 ton inv 3d","18cc","standard","C128","10","14","3","3","3","57000","72490","1","","","","","","","","1","202311160651332.jpeg","","","","","0","","1","","","","","","","","0","2023-11-16 18:51:11","2024-05-09 16:17:43");
INSERT INTO products VALUES("25","hsu -12 cc 3d","td0045432","standard","C128","10","14","3","3","3","42300","55990","1","","","","","","","","1","1700139243419download (7).jpeg","","","","","","","1","","","","","","","","0","2023-11-16 18:54:07","2024-05-24 22:23:08");
INSERT INTO products VALUES("26","blender pink","panther 750w","standard","C128","7","20","3","3","3","3500","5100","0","","","","","","","","1","1700210474908download (8).jpeg","","","","","","","1","","","","","","","","1","2023-11-17 14:41:20","2024-03-22 22:37:00");
INSERT INTO products VALUES("27","blender green","hornet 850 w","standard","C128","7","20","3","3","3","3700","5300","1","","","","","","","","1","1700210811689download (9).jpeg","","","","","","","1","","","","","","","","1","2023-11-17 14:46:55","2024-05-05 21:06:27");
INSERT INTO products VALUES("28","blender mixi","4 in 1","standard","C128","7","20","3","3","3","5300","7600","2","","","","","","","","1","1700211015495download (10).jpeg","","","","","","","1","","","","","","","","1","2023-11-17 14:50:19","2023-11-22 16:05:36");
INSERT INTO products VALUES("29","blender red","sparrow 850watt","standard","C128","7","20","3","3","3","4850","6900","2","","","","","","","","1","1700211220424download (11).jpeg","","","","","","","1","","","","","","","","1","2023-11-17 14:53:59","2023-11-22 16:05:36");
INSERT INTO products VALUES("30","kitchen master","1600w","standard","C128","7","20","3","3","3","6500","9400","2","","","","","","","","1","1700214474401download (12).jpeg","","","","","","","1","","","","","","","","1","2023-11-17 15:47:58","2023-11-22 16:05:36");
INSERT INTO products VALUES("31","hb-7710","850w","standard","C128","7","21","3","3","3","1550","2250","0","","","","","","","","1","1700214660520images.jpeg","","","","","","","1","","","","","","","","1","2023-11-17 15:51:04","2023-11-30 15:30:30");
INSERT INTO products VALUES("32","hb-7705","750w","standard","C128","7","21","3","3","3","1400","2050","2","","","","","","","","1","1700214778465download (13).jpeg","","","","","","","1","","","","","","","","1","2023-11-17 15:53:01","2023-11-22 16:05:36");
INSERT INTO products VALUES("33","1000w","hb-7701","standard","C128","7","21","3","3","3","1650","2390","2","","","","","","","","1","1700214919239download (14).jpeg","","","","","","","1","","","","","","","","1","2023-11-17 15:55:25","2023-11-22 16:05:36");
INSERT INTO products VALUES("34","asl-1180","red 1.8l tr","standard","C128","7","22","3","3","3","2100","3050","2","","","","","","","","1","1700215577089download (15).jpeg","","","","","0","","1","","","","","","","","1","2023-11-17 16:06:20","2024-05-23 22:09:47");
INSERT INTO products VALUES("35","asl-1180-kn-d","ss 1.8l tr","standard","C128","7","22","3","3","3","2100","3050","2","","","","","","","","1","1700215947733download (16).jpeg","","","","","0","","1","","","","","","","","1","2023-11-17 16:12:31","2023-11-23 22:20:32");
INSERT INTO products VALUES("36","kettle black","mk-10 1.0l elender","standard","C128","7","23","3","3","3","875","1250","15","","","","","","","","1","1700306221813Screenshot 2023-11-18 171445.png","","","","","0","","1","","","","","","","","1","2023-11-18 17:17:14","2024-01-19 12:16:47");
INSERT INTO products VALUES("37","af-620","3l tr","standard","C128","7","24","3","3","3","4000","5800","1","","","","","","","","1","1700306774973af-620-12.9.23..jpg","","","","","","","1","","","","","","","","1","2023-11-18 17:26:17","2023-11-22 16:19:48");
INSERT INTO products VALUES("38","af-301","4.4l","standard","C128","7","24","3","3","3","6500","9400","1","","","","","","","","1","1700306927904download.jpeg","","","","","","","1","","","","","","","","1","2023-11-18 17:28:51","2023-11-22 16:19:48");
INSERT INTO products VALUES("39","coooking set","mk-7 pcs new","standard","C128","7","25","3","3","3","3500","5050","1","","","","","","","","1","1700307464276download (1).jpeg","","","","","","","1","","","","","","","","1","2023-11-18 17:37:51","2023-11-22 16:19:48");
INSERT INTO products VALUES("40","blender  green","bl-152 pf ap b","standard","C128","7","20","3","3","3","2100","3050","1","","","","","","","","1","1700308043188download (2).jpeg","","","","","","","1","","","","","","","","1","2023-11-18 17:47:25","2024-05-29 19:01:38");
INSERT INTO products VALUES("41","room heater red","ptc-10 red","standard","C128","7","26","3","3","3","2350","3400","0","","","","","","","","1","1700308261131download (3).jpeg","","","","","","","1","","","","","","","","1","2023-11-18 17:51:03","2024-01-18 10:54:07");
INSERT INTO products VALUES("42","room heater cool","ptc-a3","standard","C128","7","26","3","3","3","2050","2950","2","","","","","","","","1","1700308354774download (4).jpeg","","","","","","","1","","","","","","","","1","2023-11-18 17:52:37","2023-11-22 16:19:48");
INSERT INTO products VALUES("43","ptc-2068","ptc-2068","standard","C128","7","26","3","3","3","2900","4200","0","","","","","","","","1","1700308469543download (5).jpeg","","","","","","","1","","","","","","","","1","2023-11-18 17:54:31","2024-01-22 20:07:33");
INSERT INTO products VALUES("44","ptc-159 b","ptc-159 b","standard","C128","7","26","3","3","3","3100","4450","0","","","","","","","","1","1700459783510download (6).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 11:56:25","2024-01-15 18:02:25");
INSERT INTO products VALUES("45","ns-32 cs 32cm","ns-32 cs 32cm","standard","C128","7","27","3","3","3","2450","3550","1","","","","","","","","1","1700460087362download (8).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 12:10:17","2024-05-09 17:07:34");
INSERT INTO products VALUES("46","ns-24 cs 24 cm","ns-24 cs 24 cm","standard","C128","7","27","3","3","3","1350","1900","0","","","","","","","","1","1700460840772download (9).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 12:14:50","2024-02-18 20:12:53");
INSERT INTO products VALUES("47","ns-24 fp 24 cm new","ns-24 fp 24 cm new","standard","C128","7","28","3","3","3","1050","1500","2","","","","","","","","1","1700461142658f8be5aec29110599a53af9bec16b452f.png","","","","","","","1","","","","","","","","1","2023-11-20 12:19:09","2023-11-22 16:19:48");
INSERT INTO products VALUES("48","mns 26rt 26cm new","mns 26rt 26cm new","standard","C128","7","29","3","3","3","850","1250","2","","","","","","","","1","17004613114847f31024f063cf1384f1665f532537bb7.jpg","","","","","","","1","","","","","","","","1","2023-11-20 12:21:55","2023-11-22 16:19:48");
INSERT INTO products VALUES("49","mns-28rt 28cm new","mns-28rt 28cm new","standard","C128","7","29","3","3","3","950","1350","2","","","","","","","","1","202311201225502.jpeg","","","","","0","","1","","","","","","","","1","2023-11-20 12:24:25","2023-11-22 16:19:48");
INSERT INTO products VALUES("50","apc-35 3.5l-apple","apc-35 3.5l-apple","standard","C128","7","30","3","3","3","1350","1950","4","","","","","","","","1","1700461765935Prestige_Aluminium_Pressure_Cooker_35_Li-Prestige-f9cd8-298408.jpg","","","","","","","1","","","","","","","","1","2023-11-20 12:29:28","2024-01-19 12:16:47");
INSERT INTO products VALUES("51","apc-55 5.5l-apple","apc-55 5.5l-apple","standard","C128","7","30","3","3","3","1625","2350","1","","","","","","","","1","1700461862774_Pressure_Cooker_APC_55_55_Liter-Miyako-00bd8-323585.png","","","","","","","1","","","","","","","","1","2023-11-20 12:31:05","2023-12-19 11:26:21");
INSERT INTO products VALUES("52","apc-45 4.5l","apc-45 4.5l","standard","C128","7","30","3","3","3","1500","2150","2","","","","","","","","1","1700461974601download (1).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 12:32:56","2023-11-22 16:19:48");
INSERT INTO products VALUES("53","mt-52 rcl 52l","mt-52 rcl 52l","standard","C128","7","31","3","3","3","7800","11300","1","","","","","","","","1","17004621380219541e423d7e0c79b236c7980a0ae5158.jpg","","","","","","","1","","","","","","","","1","2023-11-20 12:35:40","2023-11-22 16:19:48");
INSERT INTO products VALUES("54","mt-836 rc fish grill","mt-836 rc fish grill","standard","C128","7","31","3","3","3","6800","9800","0","","","","","","","","1","1700462386215Electric-Oven-MT-836-RC-36-Ltr-1.jpg","","","","","","","1","","","","","","","","1","2023-11-20 12:39:49","2024-03-29 15:32:02");
INSERT INTO products VALUES("55","mt-22 rc","mt-22 rc","standard","C128","7","31","3","3","3","3650","5200","0","","","","","","","","1","170046246358429.jpg","","","","","","","1","","","","","","","","1","2023-11-20 12:41:06","2024-05-16 21:59:55");
INSERT INTO products VALUES("56","dp-999","dp-999","standard","C128","7","32","3","3","3","3150","4550","1","","","","","","","","1","17004626487385dbb4e173821621c1821d9d59680a2ad.jpg","","","","","","","1","","","","","","","","1","2023-11-20 12:44:16","2024-01-20 20:06:11");
INSERT INTO products VALUES("57","mdb-88","mdb-88","standard","C128","7","32","3","3","3","3700","5350","0","","","","","","","","1","1700462831203download (2).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 12:47:13","2024-04-05 15:27:45");
INSERT INTO products VALUES("58","atc-20e3","atc-20e3","standard","C128","7","32","3","3","3","3350","4850","0","","","","","","","","1","17004629638395dbb4e173821621c1821d9d59680a2ad.jpg","","","","","","","1","","","","","","","","1","2023-11-20 12:49:30","2023-11-26 12:18:21");
INSERT INTO products VALUES("59","rcy-d12","rcy-d12","standard","C128","7","33","3","3","3","1025","1450","2","","","","","","","","1","1700463166280download (3).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 12:52:48","2023-11-22 16:19:48");
INSERT INTO products VALUES("60","rcy-f7","rcy-f7","standard","C128","7","33","3","3","3","1025","1450","1","","","","","","","","1","1700463244887download (4).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 12:54:06","2024-01-02 21:13:25");
INSERT INTO products VALUES("61","1b6-gdel-xx","1b6-gdel-xx","standard","C128","5","15","3","3","3","21052","26990","1","","","","","","","","1","202311200127102.jpeg","","","","","0","","1","","","","","","","","1","2023-11-20 13:23:06","2024-05-09 16:02:01");
INSERT INTO products VALUES("62","1d4-gdel-xx","1d4-gdel-xx","standard","C128","5","15","3","3","3","22612","28990","2","","","","","","","","1","1700465324514download (5).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 13:28:46","2024-01-14 21:44:00");
INSERT INTO products VALUES("63","2h2-gden-xx","2h2-gden-xx","standard","C128","5","15","3","3","3","32752","41990","0","","","","","","","","1","1700465985509WFE_2H2_GDEN_DD_P_Inverter-Walton-6f3c3-353797.jpg","","","","","","","1","","","","","","","","1","2023-11-20 13:39:50","2023-11-26 12:23:48");
INSERT INTO products VALUES("64","2e0-gdel-xx","2e0-gdel-xx","standard","C128","5","15","3","3","3","31972","40990","1","","","","","","","","1","202311200335432.jpg","","","","","0","","1","","","","","","","","1","2023-11-20 15:25:18","2023-11-23 22:11:22");
INSERT INTO products VALUES("65","walton 3b0-gden-dd","3b0-gden-dd","standard","C128","5","15","3","3","3","38992","49990","1","","","","","","","","1","1700472479589download (7).jpeg","","","","","0","","1","","","","","","","","1","2023-11-20 15:28:03","2024-05-09 15:54:48");
INSERT INTO products VALUES("66","Walton 2d4-gdeh-xx","2d4-gdeh-xx","standard","C128","5","15","3","3","3","32500","39790","0","","","","","","","","1","1700473053917wfb-2e0-gjxb-sx-p.jpg","","","","","0","","1","","","","","","","","1","2023-11-20 15:37:42","2024-02-02 16:06:06");
INSERT INTO products VALUES("67","Walton 1f3-gdeh-xx","1f3-gdeh-xx","standard","C128","5","15","3","3","3","25818","33090","1","","","","","","","","1","1700473332445wfd-1d4-gdeh-xx-id-1.jpg","","","","","","","1","","","","","","","","1","2023-11-20 15:42:14","2024-01-14 21:44:00");
INSERT INTO products VALUES("68","Walton 1f3-gdel-xx","1f3-gdel-xx","standard","C128","5","15","3","3","3","25342","32490","1","","","","","","","","1","1700473476216download (8).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 15:44:38","2024-02-04 18:54:49");
INSERT INTO products VALUES("69","Walton 2a3-gdel-xx","2a3-gdel-xx","standard","C128","5","15","3","3","3","27292","34990","1","","","","","","","","1","1700473705998download (5).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 15:48:31","2024-01-31 13:58:25");
INSERT INTO products VALUES("70","WSI-KRYSTALINE-18F [PLASMA]","KRYSTALINE-18F [PLASMA]","standard","C128","5","14","3","3","3","54990","72500","0","","","","","","","","1","1700476642101wsi-krystaline-18c-plasma-font-image.jpg","","","","","0","","1","","","","","","","","1","2023-11-20 16:37:25","2024-05-09 16:05:55");
INSERT INTO products VALUES("71","WSI-KRYSTALINE-12F [PLASMA]","KRYSTALINE-12F [PLASMA]","standard","C128","5","14","3","3","3","38922","51900","0","","","","","","","","1","1700481031143wsi-krystaline-18c-plasma-font-image.jpg","","","","","0","","1","","","","","","","","1","2023-11-20 17:50:33","2024-04-18 12:01:43");
INSERT INTO products VALUES("72","WBL-15GM85S","15GM85S","standard","C128","5","20","3","3","3","4017","5150","1","","","","","","","","1","1700481195833download (10).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 17:53:19","2023-11-20 21:56:22");
INSERT INTO products VALUES("73","WBL-15GM75S","15GM75S","standard","C128","5","20","3","3","3","3861","4950","1","","","","","","","","1","1700481262573download (11).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 17:54:25","2023-11-20 21:56:22");
INSERT INTO products VALUES("74","samsung 43cu7500","orjc38ew800152","standard","C128","4","13","3","3","3","40500","56900","1","","","","","","","","1","1700481803627download (12).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 18:03:26","2023-11-22 18:42:26");
INSERT INTO products VALUES("75","samsung 55au77","ofplb8erco1454","standard","C128","4","13","3","3","3","58500","89900","0","","","","","","","","1","1700481996872download (12).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 18:06:39","2023-12-21 22:50:24");
INSERT INTO products VALUES("76","samsung t4400","ob5j38etb10841","standard","C128","4","13","3","3","3","19500","31500","0","","","","","","","","1","1700482105683download (13).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 18:08:28","2024-01-16 12:14:41");
INSERT INTO products VALUES("77","haier32&quot; h32k66gh","20008fap3168","standard","C128","10","13","3","3","3","19000","31500","1","","","","","","","","1","1700482233213download (14).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 18:10:38","2023-11-22 18:42:26");
INSERT INTO products VALUES("78","Walton 2n5-gdxx-xx-inv","2n5-gdxx-xx-inv","standard","C128","5","15","3","3","3","35092","44990","0","","","","","","","","1","1700486476978download (7).jpeg","","","","","","","1","","","","","","","","1","2023-11-20 19:21:21","2024-02-17 11:05:32");
INSERT INTO products VALUES("79","Philips mixer grinder hl7757","HL7757","standard","C128","12","20","3","3","3","5700","10500","0","","","","","","","","1","17010771270067757.jpeg","","","","","","","1","","","","","","","","1","2023-11-27 15:25:34","2024-05-23 22:12:28");
INSERT INTO products VALUES("80","Philps mixer grinder hl7756/00","hl7756/00","standard","C128","12","20","3","3","3","5700","10500","0","","","","","","","","1","17010774113247756.jpeg","","","","","","","1","","","","","","","","1","2023-11-27 15:30:15","2024-05-03 19:30:10");
INSERT INTO products VALUES("81","Philips mixer grinder hl7505/00","hl7505/00","standard","C128","12","20","3","3","3","4500","7500","1","","","","","","","","1","17010776387317505.jpeg","","","","","","","1","","","","","","","","1","2023-11-27 15:34:02","2023-11-27 18:05:16");
INSERT INTO products VALUES("82","Intex mixer grinder750","Intex 750W","standard","C128","13","20","3","3","3","4410","6000","1","","","","","","","","1","zummXD2dvAtI.png","","","","","","","1","","","","","","","","1","2023-11-27 15:48:49","2023-11-27 18:05:16");
INSERT INTO products VALUES("83","Intex mixer grinder800","Intex 800w","standard","C128","13","20","3","3","3","4777","7000","1","","","","","","","","1","1701078648386800 w.jpeg","","","","","","","1","","","","","","","","1","2023-11-27 15:50:51","2023-11-27 18:05:16");
INSERT INTO products VALUES("84","Intex mixer grinder 900","Intex 900w","standard","C128","13","20","3","3","3","5565","7500","1","","","","","","","","1","1701078734831900.jpeg","","","","","","","1","","","","","","","","1","2023-11-27 15:52:17","2023-11-27 18:05:16");
INSERT INTO products VALUES("85","trimmer","BT1230","standard","C128","12","35","3","3","3","1400","2500","2","","","","","","","","1","1701510522418download (3).jpeg","","","","","","","1","","","","","","","","1","2023-12-02 15:49:03","2023-12-02 15:51:07");
INSERT INTO products VALUES("86","Trimmer BT1235","BT1235","standard","C128","12","35","3","3","3","1650","3000","1","","","","","","","","1","1701510618102download (3).jpeg","","","","","","","1","","","","","","","","1","2023-12-02 15:50:20","2024-01-16 11:37:00");
INSERT INTO products VALUES("87","Walton 1N3-GDXX-XX","WFA-1N3-GDXX-XX","standard","C128","5","15","3","3","3","20500","26290","0","","","","","","","","1","1701577891304wfa-1n3-gdxx-xx.jpg","","","","","0","","1","","","","","","","","1","2023-12-03 10:31:42","2024-01-01 14:08:35");
INSERT INTO products VALUES("88","Galanz p90d23aph6","p90d23aph6","standard","C128","15","31","3","3","3","8400","13800","2","","","","","","","","1","1701669264774a635096c-eeb0-4819-a619-15d6fc75368d.png","","","","","","","1","","","","","","","","1","2023-12-04 11:54:37","2023-12-05 12:57:17");
INSERT INTO products VALUES("89","Galanz CED159WDB","CED159WDB","standard","C128","15","31","3","3","3","13200","23500","2","","","","","","","","1","1701669453286a635096c-eeb0-4819-a619-15d6fc75368d.png","","","","","","","1","","","","","","","","1","2023-12-04 11:57:35","2023-12-05 12:57:17");
INSERT INTO products VALUES("90","Galanz CBD209H2H","CBD209H2H","standard","C128","15","31","3","3","3","14300","25500","1","","","","","","","","1","1701669523949a635096c-eeb0-4819-a619-15d6fc75368d.png","","","","","0","","1","","","","","","","","0","2023-12-04 11:58:45","2023-12-07 16:07:47");
INSERT INTO products VALUES("91","samsung 0BVD77SW700169","0BVD77SW700169","standard","C128","4","31","3","3","3","28000","35900","1","","","","","","","","1","202312041209412.jpeg","","","","","0","","1","","","","","","","","1","2023-12-04 12:06:17","2023-12-07 16:06:58");
INSERT INTO products VALUES("92","samsung 0BVD77SW700169","0BVD77SW700169","standard","C128","4","31","3","3","3","28000","35900","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","1","","","","","","","","0","2023-12-04 12:06:17","2023-12-04 12:07:02");
INSERT INTO products VALUES("93","Galanz CBD209H2H","CBD209H2H","standard","C128","15","31","3","3","3","14300","25500","0","","","","","","","","1","1701759360624download (1).jpeg","","","","","","","1","","","","","","","","1","2023-12-05 12:56:03","2023-12-30 18:36:42");
INSERT INTO products VALUES("94","Hot Point 45Ltr 1200 w","45Ltr 1200 w","standard","C128","16","36","3","3","3","6000","9000","0","","","","","","","","1","1701930117395download (5).jpeg","","","","","","","1","","","","","","","","1","2023-12-07 12:22:00","2024-05-06 15:06:20");
INSERT INTO products VALUES("95","Hot Point 65Ltr 1500 w","65Ltr 1500 w","standard","C128","16","36","3","3","3","6600","11000","1","","","","","","","","1","1701930199352download (5).jpeg","","","","","","","1","","","","","","","","1","2023-12-07 12:23:21","2024-05-06 15:06:20");
INSERT INTO products VALUES("96","TROPICA","TROPICA SIZE-18","standard","C128","17","36","3","3","3","6000","10000","0","","","","","","","","1","1702978512454images.jpeg","","","","","0","","1","","","","","","","","1","2023-12-19 15:35:16","2024-01-23 15:55:27");
INSERT INTO products VALUES("97","Washing Machine ES-F120G","ES-F120G | 12 KG","standard","C128","8","19","3","3","3","40000","45000","0","","","","","","","","1","170365725791014-kg-washing-machine-by-esquire-24711-7432.jpg","","","","","","","1","","","","","","","","1","2023-12-27 12:07:53","2024-02-13 15:42:52");
INSERT INTO products VALUES("98","sharp esfm 120 g","esfm 120 g","standard","C128","8","19","3","3","3","39500","45000","0","","","","","","","","1","170391989954214-kg-washing-machine-by-esquire-electronics-14363-7433.jpg","","","","","","","1","","","","","","","","1","2023-12-30 13:05:03","2023-12-30 13:10:21");
INSERT INTO products VALUES("99","Maharaja electric kettle","viva elite 1500w","standard","C128","14","23","3","3","3","1000","1890","10","","","","","","","","1","1704381912457517dDufcSkL._SX679_.jpg","","","","","","","1","","","","","","","","1","2024-01-04 21:25:15","2024-01-04 21:25:56");
INSERT INTO products VALUES("100","shameem geyesr","45Ltr","standard","C128","18","36","3","3","3","7200","9000","2","","","","","","","","1","1705213313177download (2).jpeg","","","","","","","","","","","","","","","1","2024-01-14 12:21:56","2024-01-14 12:26:47");
INSERT INTO products VALUES("101","Miyako rice cooker","3.0 ltr","standard","C128","7","22","3","3","3","2500","4190","1","","","","","","","","1","1705225209658fe5ece973dc9f28ccbceaf369645860d.jpg","","","","","","","1","","","","","","","","1","2024-01-14 15:40:13","2024-01-14 15:50:25");
INSERT INTO products VALUES("102","miyako rice cooker 1","2.8 ltr","standard","C128","7","22","3","3","3","2000","3890","0","","","","","","","","1","170522537874322f233cf98f1b304d3431cd6bc7d0277.jpg","","","","","0","","1","","","","","","","","1","2024-01-14 15:43:02","2024-05-24 18:07:04");
INSERT INTO products VALUES("103","Curry Cooker","mc-500d red","standard","C128","7","37","3","3","3","2300","3390","1","","","","","","","","1","17055758017385b87bcbd-bae0-440e-b518-9ac093733f37-969-8.jpeg","","","","","","","1","","","","","","","","1","2024-01-18 17:03:29","2024-04-23 19:12:23");
INSERT INTO products VALUES("104","Gas Cooker","Mg-132 dg galaxy","standard","C128","7","38","3","3","3","4500","6550","2","","","","","","","","1","1705587367919mgs-132-dg-classic-622-3.jpg","","","","","","","1","","","","","","","","1","2024-01-18 20:16:09","2024-01-19 12:16:47");
INSERT INTO products VALUES("105","rice cooker","asl-1280-kn-d ss 2.8ltr","standard","C128","7","22","3","3","3","2675","3890","4","","","","","","","","1","1705587519030Miyako-Rice-Cooker-ASL-1280-HC-D-Double-Pot-Rice-Cooker-2.8-Litter.jpg","","","","","","","1","","","","","","","","1","2024-01-18 20:18:41","2024-01-19 12:16:47");
INSERT INTO products VALUES("106","Rice Cooker asl-1280-kn-d prt 2.8ltr","asl-1280-kn-d prt 2.8ltr","standard","C128","7","22","3","3","3","2550","3750","4","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2024-01-18 20:21:19","2024-01-19 12:16:47");
INSERT INTO products VALUES("107","Curry Cooker mc-350d orange","mc-350d orange","standard","C128","7","37","3","3","3","2150","3400","3","","","","","","","","1","1705643585439download.jpeg","","","","","0","","0","","","","","","","","1","2024-01-19 11:53:07","2024-03-09 13:52:30");
INSERT INTO products VALUES("108","Touch Cooker atc-22ss","atc-22ss","standard","C128","7","32","3","3","3","3150","4590","6","","","","","","","","1","17056437080736f72a68bea2cd2a21283ad51317f3670.jpg","","","","","","","","","","","","","","","1","2024-01-19 11:55:14","2024-01-19 12:16:47");
INSERT INTO products VALUES("109","Infrared touch cooker-atc-20t6","atc-20t6","standard","C128","7","32","3","3","3","3050","4490","4","","","","","","","","1","170564387712030f6b68e67771ad21e342aac8b51aca5.jpg","","","","","","","","","","","","","","","1","2024-01-19 11:57:59","2024-01-19 12:22:28");
INSERT INTO products VALUES("110","Bread Toaster","rsbt-338","standard","C128","7","40","3","3","3","900","1450","3","","","","","","","","1","1705644030674cdf60b184ae04c1c92927386b6fe45ba.jpg","","","","","","","","","","","","","","","1","2024-01-19 12:00:32","2024-01-26 11:35:05");
INSERT INTO products VALUES("111","Sandwich Maker","sw-5001","standard","C128","7","39","3","3","3","825","1390","3","","","","","","","","1","1705644133326images.jpeg","","","","","","","","","","","","","","","1","2024-01-19 12:02:15","2024-01-19 12:24:42");
INSERT INTO products VALUES("112","Electric Kettle mjk-18 t 1.8L","mjk-18 t 1.8L","standard","C128","7","23","3","3","3","1350","1990","4","","","","","","","","1","1705644339250350ee73c662dae524834d33c4759ee13.jpg","","","","","","","","","","","","","","","1","2024-01-19 12:05:41","2024-01-19 12:16:47");
INSERT INTO products VALUES("113","Electric Kettle-MK-23 2.0L","MK-23 2.0L","standard","C128","7","23","3","3","3","1200","1790","3","","","","","","","","1","1705644426157Miyako-Electric-kettle-mk-23-1-1200x900.jpg","","","","","","","","","","","","","","","1","2024-01-19 12:07:08","2024-02-18 20:12:53");
INSERT INTO products VALUES("114","Rice Cooker-MRC-512-YLD 1.2L","MRC-512-YLD 1.2L","standard","C128","7","22","3","3","3","2050","2990","3","","","","","","","","1","1705644600958images.jpeg","","","","","","","","","","","","","","","1","2024-01-19 12:10:06","2024-05-16 21:59:55");
INSERT INTO products VALUES("115","Touch Cooker-ATC-23SS","ATC-23SS","standard","C128","7","32","3","3","3","3150","4590","6","","","","","","","","1","170564469188321ss-1.png","","","","","","","","","","","","","","","1","2024-01-19 12:11:33","2024-01-19 12:16:47");
INSERT INTO products VALUES("116","pure it","Pureit Classic 23L","standard","C128","20","41","3","3","3","4500","5500","0","","","","","","","","1","1705753964685classic-1.jpg","","","","","0","","0","","","","","","","","1","2024-01-20 18:32:46","2024-01-21 15:40:01");
INSERT INTO products VALUES("117","kitchen Hood","EH-F752","standard","C128","21","42","3","3","3","18000","20900","0","","","","","","","","1","17060031892441619428497_kitchenhoodrepairservices.jpg","","","","","","","1","","","","","","","","1","2024-01-23 15:46:49","2024-01-23 15:55:27");
INSERT INTO products VALUES("118","gree GS-18XFV32","GS-18XFV32","standard","C128","6","14","3","3","3","60000","79990","0","","","","","","","","1","1706006322586giant_182995.jpg","","","","","","","","","","","","","","","1","2024-01-23 16:38:45","2024-01-24 10:44:06");
INSERT INTO products VALUES("119","JVCO 32&quot; DF1'S","DF1'S","standard","C128","19","13","3","3","3","14500","21900","3","","","","","","","","1","1706512894315giant_246863.jpg","","","","","","","1","","","","","","","","1","2024-01-29 13:21:44","2024-05-06 15:06:20");
INSERT INTO products VALUES("120","JVCO 43&quot;DF1CS","DF1CS","standard","C128","19","13","3","3","3","19500","37900","1","","","","","","","","1","1706512988407giant_246863.jpg","","","","","0","","1","","","","","","","","1","2024-01-29 13:23:10","2024-03-18 22:09:22");
INSERT INTO products VALUES("121","JVCO","55"DF1","standard","C128","19","13","3","3","3","38000","62900","0","","","","","","","","1","1706513053603giant_246863.jpg","","","","","0","","1","","","","","","","","0","2024-01-29 13:24:18","2024-01-29 13:37:17");
INSERT INTO products VALUES("122","JVCO 55","DF1","standard","C128","19","13","3","3","3","38000","62900","0","","","","","","","","1","1706513948825giant_188894.jpg","","","","","0","","0","","","","","","","","1","2024-01-29 13:39:12","2024-03-08 18:27:30");
INSERT INTO products VALUES("123","N.S.S DRY IRON","ED2386A-OR","standard","C128","22","34","3","3","3","1208.7","1390","10","","","","","","","","1","1706514299769sid-ed2386a-ye.jpg","","","","","","","1","","","","","","","","1","2024-01-29 13:45:08","2024-01-29 14:46:36");
INSERT INTO products VALUES("124","DRY IRON BLACK","SIDH251BL","standard","C128","22","34","3","3","3","2165.22","2490","11","","","","","","","","1","1706514447279sidh251bl.jpg","","","","","","","1","","","","","","","","1","2024-01-29 13:47:35","2024-05-09 17:34:59");
INSERT INTO products VALUES("125","SINGER OPTIMA BLACK","MIXER GRINDER 650W","standard","C128","22","20","3","3","3","4947.83","5690","5","","","","","","","","1","202401290155312.jpg","","","","","0","","1","","","","","","","","1","2024-01-29 13:54:50","2024-01-29 14:46:36");
INSERT INTO products VALUES("126","SINGER OPTIMA LITE-M","MIXER GRINDER 550W","standard","C128","22","20","3","3","3","4339.13","4990","4","","","","","","","","1","1706515326565singer_optima_lite.jpg","","","","","","","1","","","","","","","","1","2024-01-29 14:02:08","2024-01-29 14:46:36");
INSERT INTO products VALUES("127","SINGER 32&quot; FRAME LESS ANDROID TV","SLE32D6100GOTV","standard","C128","22","13","3","3","3","22165.22","25490","3","","","","","","","","1","1706515492580sle32e3agotv_1.jpg","","","","","","","","","","","","","","","1","2024-01-29 14:05:23","2024-05-09 17:18:10");
INSERT INTO products VALUES("128","Double BTI singer Rice Cooker 1.8 L","SRCDB1800EXPRESS-PRO","standard","C128","22","22","3","3","3","2947.83","3390","7","","","","","","","","1","202401290213112.jpg","","","","","0","","0","","","","","","","","1","2024-01-29 14:12:15","2024-01-29 14:46:36");
INSERT INTO products VALUES("129","Double Bati Singer Rice Cooker 2.8L","SRCD2800AMMO-PRO","standard","C128","22","22","3","3","3","3382.61","3890","12","","","","","","","","1","1706516210179b888champ.jpg","","","","","","","1","","","","","","","","1","2024-01-29 14:16:54","2024-01-29 14:46:36");
INSERT INTO products VALUES("130","Cooker Double Bati 1.8 L","SRCDB9918PRIME","standard","C128","22","22","3","3","3","2947.83","3390","4","","","","","","","","1","1706516416719singer_-_ss_n.s_2_navy.jpg","","","","","","","1","","","","","","","","1","2024-01-29 14:20:41","2024-01-29 14:46:36");
INSERT INTO products VALUES("131","SINGER OPTIMA -PRP","OPTIMA MIXER GRINDER 650W","standard","C128","22","20","3","3","3","4860.87","5590","4","","","","","","","","1","1706516788278download.jpeg","","","","","","","1","","","","","","","","1","2024-01-29 14:26:31","2024-01-29 14:46:36");
INSERT INTO products VALUES("132","WALTON 2A3-GDXX-XX","2A3-GDXX-XX","standard","C128","5","15","3","3","3","26512","33990","0","","","","","","","","1","1706687471828wfa-2a3-gdxx-xx.jpg","","","","","","","","","","","","","","","1","2024-01-31 13:51:25","2024-04-18 19:16:15");
INSERT INTO products VALUES("133","2B3-GDSH-XX","2B3","standard","C128","5","15","3","3","3","30100","38590","1","","","","","","","","1","1707051093733wfb-2b3-gdsh-xx.jpg","","","","","","","1","","","","","","","","1","2024-02-04 18:51:39","2024-02-04 18:54:49");
INSERT INTO products VALUES("134","2B0-GDXX-XX","2B0","standard","C128","5","15","3","3","3","27682","35490","1","","","","","","","","1","1707051230014wfa-2b0-gdxx-xx.jpg","","","","","","","1","","","","","","","","1","2024-02-04 18:53:53","2024-02-04 18:54:49");
INSERT INTO products VALUES("135","Midea  non ivt","MSA-18 CRN","standard","C128","9","14","3","3","3","41000","51000","0","","","","","","","","1","1709537167261giant_58530.png","","","","","","","1","","","","","","","","1","2024-03-04 13:26:09","2024-03-04 16:10:04");
INSERT INTO products VALUES("136","Haier-HSU-18 Cleancool","HSU-18 Cleancool","standard","C128","10","14","3","3","3","54000","73490","0","","","","","","","","1","1709654234833hsu-24cleancool-320x320.jpg","","","","","","","","","","","","","","","1","2024-03-05 21:57:20","2024-03-06 10:04:00");
INSERT INTO products VALUES("137","Haier HSU-12CleanCool 1.0 ton","HSU-12CleanCool","standard","C128","10","14","3","3","3","40000","55990","0","","","","","","","","1","1709697011691hsu-24cleancool-320x320.jpg","","","","","0","","0","","","","","","","","1","2024-03-06 09:50:16","2024-05-06 15:06:20");
INSERT INTO products VALUES("138","Walton Deep freezer wcf-1d5","WCF-1D5","standard","C128","5","43","3","3","3","23938","30690","0","","","","","","","","1","1711687286399sjc138-bk-without-pop4054-8134.jpg","","","","","","","","","","","","","","","1","2024-03-29 10:41:30","2024-03-29 10:45:59");
INSERT INTO products VALUES("139","gazi -EH-F751G","EH-F751G","standard","C128","21","42","3","3","3","16000","25500","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","1","","","","","","","","1","2024-04-03 12:16:08","2024-04-03 12:20:22");
INSERT INTO products VALUES("140","Gree 2 Ton Inverter","gs-24XLMV32","standard","C128","6","14","3","3","3","73500","79500","0","","","","","","","","1","zummXD2dvAtI.png","","","","","0","","0","","","","","","","","1","2024-04-05 22:08:55","2024-04-07 11:52:36");
INSERT INTO products VALUES("141","Midea 1.5 Ton Non Inverter AC","Midea 1.5 Ton Non Inverter AC","standard","C128","9","14","3","3","3","43000","47000","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2024-04-09 21:19:34","2024-04-09 21:22:25");
INSERT INTO products VALUES("142","conion 56&amp;quot;4 blades","4 blades","standard","C128","7","28","3","3","3","3350","4150","0","","","","","","","","1","zummXD2dvAtI.png","","","","","0","","0","","","","","","","","1","2024-04-10 13:06:17","2024-05-16 22:14:09");
INSERT INTO products VALUES("143","Mira fan","Mira fan-1","standard","C128","23","44","3","3","3","5500","6500","-2","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2024-04-10 17:43:44","2024-04-10 20:04:50");
INSERT INTO products VALUES("144","electronic mosquito swatter","sm-3821","standard","C128","24","45","3","3","3","500","650","0","","","","","","","","1","zummXD2dvAtI.png","","","","","0","","0","","","","","","","","1","2024-04-10 19:41:35","2024-04-10 20:04:50");
INSERT INTO products VALUES("145","walton 5f3","5f3-gdel-dd","standard","C128","5","15","3","3","3","75652","96990","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2024-05-09 15:50:36","2024-05-09 16:45:19");



CREATE TABLE `purchase_product_return` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchases VALUES("1","pr-20220731-072145","1","1","1","1","10","0","0","8000","0","0","200","500","8300","8300","1","2","","","2022-07-31 12:21:45","2022-07-31 12:36:45");
INSERT INTO purchases VALUES("7","pr-20231116-122406","1","4","5","1","1","0","0","25000","0","0","","","25000","0","1","1","","","2023-11-13 00:00:00","2023-11-16 12:24:06");
INSERT INTO purchases VALUES("8","pr-20231116-044420","1","4","6","1","2","0","0","3500","0","0","","","3500","0","1","1","","","2023-11-13 00:00:00","2023-11-16 16:44:20");
INSERT INTO purchases VALUES("9","pr-20231116-055027","1","4","6","1","2","0","0","7000","0","0","","","7000","0","1","1","","","2023-11-13 00:00:00","2023-11-16 17:50:27");
INSERT INTO purchases VALUES("10","pr-20231116-070358","1","4","7","1","1","0","0","51000","0","0","","","51000","0","1","1","","","2023-11-13 00:00:00","2023-11-16 19:03:58");
INSERT INTO purchases VALUES("11","pr-20231116-070428","1","4","7","1","1","0","0","58000","0","0","","","58000","0","1","1","","","2023-11-13 00:00:00","2023-11-16 19:04:28");
INSERT INTO purchases VALUES("13","pr-20231116-070546","1","4","7","1","1","0","0","57000","0","0","","","57000","0","1","1","","","2023-11-13 00:00:00","2023-11-16 19:05:46");
INSERT INTO purchases VALUES("14","pr-20231116-070714","1","4","7","4","4","0","0","218900","0","0","","","218900","0","1","1","","","2023-11-13 00:00:00","2023-11-16 19:07:14");
INSERT INTO purchases VALUES("15","pr-20231116-070819","1","4","7","1","1","0","0","42300","0","0","","","42300","0","1","1","","","2023-11-13 00:00:00","2023-11-16 19:08:19");
INSERT INTO purchases VALUES("16","pr-20231116-071036","1","4","6","2","4","0","0","10500","0","0","","","10500","0","1","1","","","2023-11-13 00:00:00","2023-11-16 19:10:36");
INSERT INTO purchases VALUES("17","pr-20231120-070621","1","4","8","2","4","0","0","87328","0","0","","","87328","0","1","1","","","2023-11-05 00:00:00","2023-11-20 19:06:21");
INSERT INTO purchases VALUES("18","pr-20231120-072336","1","4","8","7","7","0","0","212034","0","0","","","212034","0","1","1","","","2023-11-12 00:00:00","2023-11-20 19:23:36");
INSERT INTO purchases VALUES("19","pr-20231120-095622","1","4","8","5","5","0","0","136882","0","0","","","136882","0","1","1","","","2023-11-12 00:00:00","2023-11-20 21:56:22");
INSERT INTO purchases VALUES("20","pr-20231122-040536","1","4","6","8","16","0","0","56900","0","0","","","56900","0","1","1","","","2023-11-13 00:00:00","2023-11-22 16:05:36");
INSERT INTO purchases VALUES("21","pr-20231122-041948","1","4","6","24","44","0","0","110300","0","0","","","110300","0","1","1","","","2023-11-13 00:00:00","2023-11-22 16:19:48");
INSERT INTO purchases VALUES("22","pr-20231122-064226","1","4","9","4","4","0","0","137500","0","0","","","137500","0","1","1","","","2023-11-12 00:00:00","2023-11-22 18:42:26");
INSERT INTO purchases VALUES("23","pr-20231123-095731","1","4","7","3","3","0","0","175900","0","0","","","175900","0","1","1","","","2023-11-13 00:00:00","2023-11-23 21:57:31");
INSERT INTO purchases VALUES("24","pr-20231123-100530","1","4","6","1","1","0","0","43000","0","0","","","43000","0","1","1","","","2023-11-13 00:00:00","2023-11-23 22:05:30");
INSERT INTO purchases VALUES("25","pr-20231123-101122","1","4","7","2","2","0","0","88972","0","0","","","88972","0","1","1","","","2023-11-13 00:00:00","2023-11-23 22:11:22");
INSERT INTO purchases VALUES("26","pr-20231123-102006","1","4","6","1","2","0","0","4200","0","0","","","4200","0","1","1","","","2023-11-13 00:00:00","2023-11-23 22:20:06");
INSERT INTO purchases VALUES("27","pr-20231123-102032","1","4","6","1","2","0","0","4200","0","0","","","4200","0","1","1","","","2023-11-13 00:00:00","2023-11-23 22:20:32");
INSERT INTO purchases VALUES("28","pr-20231124-111957","1","4","6","1","8","0","0","7000","0","0","","","7000","0","1","1","","","2023-11-13 00:00:00","2023-11-24 11:19:57");
INSERT INTO purchases VALUES("29","pr-20231127-060516","1","4","10","6","6","0","0","30652","0","0","","","30652","0","1","1","","","2023-11-27 00:00:00","2023-11-27 18:05:16");
INSERT INTO purchases VALUES("30","pr-20231202-035107","1","4","10","2","4","0","0","6100","0","0","","","6100","0","1","1","","","2023-11-27 00:00:00","2023-12-02 15:51:07");
INSERT INTO purchases VALUES("31","pr-20231203-103254","1","4","8","1","1","0","0","20500","0","0","0","0","20500","0","1","1","","","2023-12-02 00:00:00","2024-01-01 14:00:00");
INSERT INTO purchases VALUES("32","pr-20231204-122425","1","4","11","4","7","0","0","99800","0","0","0","0","99800","0","1","1","","","2023-12-03 00:00:00","2023-12-05 12:57:17");
INSERT INTO purchases VALUES("33","pr-20231204-122516","1","4","9","1","1","0","0","28000","0","0","","","28000","0","1","1","","","2023-12-03 00:00:00","2023-12-04 12:25:16");
INSERT INTO purchases VALUES("34","pr-20231204-014648","1","4","6","1","1","0","0","20500","0","0","0","0","20500","0","1","1","","","2023-12-04 00:00:00","2023-12-05 11:18:33");
INSERT INTO purchases VALUES("35","pr-20231204-025234","1","4","8","1","1","0","0","20500","0","0","","","20500","0","1","1","","","2023-12-04 00:00:00","2023-12-04 14:52:34");
INSERT INTO purchases VALUES("36","pr-20231207-122427","1","4","7","2","3","0","0","18600","0","0","","","18600","0","1","1","","","2023-11-13 00:00:00","2023-12-07 12:24:27");
INSERT INTO purchases VALUES("37","pr-20231219-034142","1","4","8","1","1","0","0","6000","0","0","","","6000","0","1","1","","","2023-12-19 00:00:00","2023-12-19 15:41:42");
INSERT INTO purchases VALUES("38","pr-20231227-120854","1","4","7","1","1","0","0","40000","0","0","","","40000","0","1","1","","","2023-12-27 00:00:00","2023-12-27 12:08:54");
INSERT INTO purchases VALUES("39","pr-20231230-010535","1","4","7","1","1","0","0","39500","0","0","","","39500","0","1","1","","","2023-12-30 00:00:00","2023-12-30 13:05:35");
INSERT INTO purchases VALUES("40","pr-20240101-020246","1","4","8","1","1","0","0","20500","0","0","","","20500","0","1","1","","","2023-12-02 00:00:00","2024-01-01 14:02:46");
INSERT INTO purchases VALUES("41","pr-20240103-030927","1","4","10","1","2","0","0","11400","0","0","","","11400","0","1","1","","","2023-12-30 00:00:00","2024-01-03 15:09:27");
INSERT INTO purchases VALUES("42","pr-20240104-092556","1","4","10","1","10","0","0","10000","0","0","","","10000","0","1","1","","","2024-01-04 00:00:00","2024-01-04 21:25:56");
INSERT INTO purchases VALUES("43","pr-20240109-085117","1","4","8","1","1","0","0","21052","0","0","","","21052","0","1","1","","","2024-01-09 00:00:00","2024-01-09 20:51:17");
INSERT INTO purchases VALUES("44","pr-20240114-122309","1","4","5","1","3","0","0","21600","0","0","","","21600","0","1","1","","","2024-01-13 00:00:00","2024-01-14 12:23:09");
INSERT INTO purchases VALUES("45","pr-20240114-034410","1","4","5","2","4","0","0","9000","0","0","","","9000","0","1","1","","","2024-01-14 00:00:00","2024-01-14 15:44:10");
INSERT INTO purchases VALUES("46","pr-20240114-094400","1","4","8","4","4","0","0","107304","0","0","","","107304","0","1","1","","","2024-01-14 00:00:00","2024-01-14 21:44:00");
INSERT INTO purchases VALUES("47","pr-20240119-121647","1","4","6","15","69","0","0","137350","0","0","","","137350","0","1","1","","","2024-01-17 00:00:00","2024-01-19 12:16:47");
INSERT INTO purchases VALUES("48","pr-20240121-033640","1","4","5","1","1","0","0","4500","0","0","","","4500","0","1","1","","","2024-01-20 00:00:00","2024-01-21 15:36:40");
INSERT INTO purchases VALUES("49","pr-20240123-034907","1","4","5","2","2","0","0","24000","0","0","","","24000","0","1","1","","","2024-01-23 00:00:00","2024-01-23 15:49:07");
INSERT INTO purchases VALUES("50","pr-20240123-043914","1","4","5","1","1","0","0","60000","0","0","","","60000","0","1","1","","","2024-01-23 00:00:00","2024-01-23 16:39:14");
INSERT INTO purchases VALUES("51","pr-20240129-013314","1","4","12","2","4","0","0","68000","0","0","","","68000","0","1","1","","","2024-01-17 00:00:00","2024-01-29 13:33:14");
INSERT INTO purchases VALUES("52","pr-20240129-014032","1","4","12","1","1","0","0","38000","0","0","","","38000","0","1","1","","","2024-01-17 00:00:00","2024-01-29 13:40:32");
INSERT INTO purchases VALUES("53","pr-20240129-024636","1","4","13","9","62","0","0","261287.12","0","0","","","261287.12","0","1","1","","","2024-01-28 00:00:00","2024-01-29 14:46:36");
INSERT INTO purchases VALUES("54","pr-20240131-015825","1","4","8","4","4","0","0","116968","0","0","","","116968","0","1","1","","","2024-01-30 00:00:00","2024-01-31 13:58:25");
INSERT INTO purchases VALUES("55","pr-20240202-024230","1","4","5","1","1","0","0","6000","0","0","","","6000","0","1","1","","","2024-02-02 00:00:00","2024-02-02 14:42:30");
INSERT INTO purchases VALUES("56","pr-20240204-065449","1","4","8","3","3","0","0","83124","0","0","","","83124","0","1","1","","","2024-02-03 00:00:00","2024-02-04 18:54:49");
INSERT INTO purchases VALUES("57","pr-20240304-012746","1","4","5","1","1","0","0","41000","0","0","","","41000","0","1","1","","","2024-03-04 00:00:00","2024-03-04 13:27:46");
INSERT INTO purchases VALUES("58","pr-20240306-095259","1","4","7","2","4","0","0","188000","0","0","","","188000","0","1","1","","","2024-03-05 00:00:00","2024-03-06 09:52:59");
INSERT INTO purchases VALUES("59","pr-20240315-104303","1","4","7","1","1","0","0","58000","0","0","","","58000","0","1","1","","","2024-03-15 00:00:00","2024-03-15 10:43:03");
INSERT INTO purchases VALUES("60","pr-20240318-031905","1","4","7","1","1","0","0","58000","0","0","","","58000","0","1","1","","","2024-03-16 00:00:00","2024-03-18 15:19:05");
INSERT INTO purchases VALUES("61","pr-20240329-104240","1","4","8","1","1","0","0","23938","0","0","","","23938","0","1","1","","","2024-03-28 00:00:00","2024-03-29 10:42:40");
INSERT INTO purchases VALUES("62","pr-20240403-121644","1","4","5","1","1","0","0","16000","0","0","","","16000","0","1","1","","","2024-04-03 00:00:00","2024-04-03 12:16:44");
INSERT INTO purchases VALUES("63","pr-20240405-101343","1","4","7","1","1","0","0","73500","0","0","","","73500","0","1","1","","","2024-04-05 00:00:00","2024-04-05 22:13:43");
INSERT INTO purchases VALUES("64","pr-20240409-092011","1","4","7","1","1","0","0","43000","0","0","","","43000","0","1","1","","","2024-04-09 00:00:00","2024-04-09 21:20:11");
INSERT INTO purchases VALUES("65","pr-20240410-010646","1","4","5","1","2","0","0","6700","0","0","","","6700","0","1","1","","","2024-04-10 00:00:00","2024-04-10 13:06:46");
INSERT INTO purchases VALUES("66","pr-20240410-074840","1","4","14","2","4","0","0","12000","0","0","","","12000","0","1","1","","","2024-04-10 00:00:00","2024-04-10 19:48:40");
INSERT INTO purchases VALUES("67","pr-20240422-065443","1","4","7","1","1","0","0","58000","0","0","","","58000","0","1","1","","","2024-04-21 00:00:00","2024-04-22 18:54:43");
INSERT INTO purchases VALUES("68","pr-20240430-103919","1","4","7","3","4","0","0","75000","0","0","0","0","75000","0","1","1","","","2024-04-30 00:00:00","2024-05-06 15:06:20");
INSERT INTO purchases VALUES("69","pr-20240506-024808","1","4","12","1","2","0","0","29000","0","0","","","29000","0","1","1","","","2024-03-10 00:00:00","2024-05-06 14:48:08");
INSERT INTO purchases VALUES("70","pr-20240506-024946","1","4","7","2","2","0","0","12600","0","0","","","12600","0","1","1","","","2023-12-20 00:00:00","2024-05-06 14:49:46");
INSERT INTO purchases VALUES("71","pr-20240509-035259","1","4","8","2","2","0","0","114644","0","0","0","0","114644","0","1","1","","","2024-05-09 00:00:00","2024-05-09 15:54:48");
INSERT INTO purchases VALUES("72","pr-20240509-035306","1","4","8","2","2","0","0","114644","0","0","","","114644","0","1","1","","","2024-05-09 00:00:00","2024-05-09 15:53:06");
INSERT INTO purchases VALUES("73","pr-20240516-100940","1","4","14","1","1","0","0","3350","0","0","","","3350","0","1","1","","","2024-05-16 00:00:00","2024-05-16 22:09:40");



CREATE TABLE `quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO quotations VALUES("1","qr-20230910-112120","1","1","1","1","1","1","1","0","0","900","0","0","","","900","2","","","2023-09-10 11:21:20","2023-09-10 11:21:20");



CREATE TABLE `return_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO returns VALUES("1","rr-20220731-074830","1","1","","1","1","1","5","1","1","0","0","900","0","0","900","","","","2022-07-31 12:48:30","2022-07-31 12:48:30");



CREATE TABLE `reward_point_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO reward_point_settings VALUES("1","300","1000","1","Year","1","2021-06-09 03:40:15","2022-07-31 11:29:38");



CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO role_has_permissions VALUES("4","1");
INSERT INTO role_has_permissions VALUES("4","2");
INSERT INTO role_has_permissions VALUES("4","4");
INSERT INTO role_has_permissions VALUES("5","1");
INSERT INTO role_has_permissions VALUES("5","2");
INSERT INTO role_has_permissions VALUES("6","1");
INSERT INTO role_has_permissions VALUES("6","2");
INSERT INTO role_has_permissions VALUES("6","4");
INSERT INTO role_has_permissions VALUES("7","1");
INSERT INTO role_has_permissions VALUES("7","2");
INSERT INTO role_has_permissions VALUES("7","4");
INSERT INTO role_has_permissions VALUES("8","1");
INSERT INTO role_has_permissions VALUES("8","2");
INSERT INTO role_has_permissions VALUES("8","4");
INSERT INTO role_has_permissions VALUES("9","1");
INSERT INTO role_has_permissions VALUES("9","2");
INSERT INTO role_has_permissions VALUES("9","4");
INSERT INTO role_has_permissions VALUES("10","1");
INSERT INTO role_has_permissions VALUES("10","2");
INSERT INTO role_has_permissions VALUES("11","1");
INSERT INTO role_has_permissions VALUES("11","2");
INSERT INTO role_has_permissions VALUES("12","1");
INSERT INTO role_has_permissions VALUES("12","2");
INSERT INTO role_has_permissions VALUES("12","4");
INSERT INTO role_has_permissions VALUES("13","1");
INSERT INTO role_has_permissions VALUES("13","2");
INSERT INTO role_has_permissions VALUES("13","4");
INSERT INTO role_has_permissions VALUES("14","1");
INSERT INTO role_has_permissions VALUES("14","2");
INSERT INTO role_has_permissions VALUES("15","1");
INSERT INTO role_has_permissions VALUES("15","2");
INSERT INTO role_has_permissions VALUES("16","1");
INSERT INTO role_has_permissions VALUES("16","2");
INSERT INTO role_has_permissions VALUES("17","1");
INSERT INTO role_has_permissions VALUES("17","2");
INSERT INTO role_has_permissions VALUES("18","1");
INSERT INTO role_has_permissions VALUES("18","2");
INSERT INTO role_has_permissions VALUES("19","1");
INSERT INTO role_has_permissions VALUES("19","2");
INSERT INTO role_has_permissions VALUES("20","1");
INSERT INTO role_has_permissions VALUES("20","2");
INSERT INTO role_has_permissions VALUES("20","4");
INSERT INTO role_has_permissions VALUES("21","1");
INSERT INTO role_has_permissions VALUES("21","2");
INSERT INTO role_has_permissions VALUES("21","4");
INSERT INTO role_has_permissions VALUES("22","1");
INSERT INTO role_has_permissions VALUES("22","2");
INSERT INTO role_has_permissions VALUES("22","4");
INSERT INTO role_has_permissions VALUES("23","1");
INSERT INTO role_has_permissions VALUES("23","2");
INSERT INTO role_has_permissions VALUES("24","1");
INSERT INTO role_has_permissions VALUES("24","2");
INSERT INTO role_has_permissions VALUES("24","4");
INSERT INTO role_has_permissions VALUES("25","1");
INSERT INTO role_has_permissions VALUES("25","2");
INSERT INTO role_has_permissions VALUES("25","4");
INSERT INTO role_has_permissions VALUES("26","1");
INSERT INTO role_has_permissions VALUES("26","2");
INSERT INTO role_has_permissions VALUES("27","1");
INSERT INTO role_has_permissions VALUES("27","2");
INSERT INTO role_has_permissions VALUES("28","1");
INSERT INTO role_has_permissions VALUES("28","2");
INSERT INTO role_has_permissions VALUES("28","4");
INSERT INTO role_has_permissions VALUES("29","1");
INSERT INTO role_has_permissions VALUES("29","2");
INSERT INTO role_has_permissions VALUES("29","4");
INSERT INTO role_has_permissions VALUES("30","1");
INSERT INTO role_has_permissions VALUES("30","2");
INSERT INTO role_has_permissions VALUES("31","1");
INSERT INTO role_has_permissions VALUES("31","2");
INSERT INTO role_has_permissions VALUES("32","1");
INSERT INTO role_has_permissions VALUES("32","2");
INSERT INTO role_has_permissions VALUES("33","1");
INSERT INTO role_has_permissions VALUES("33","2");
INSERT INTO role_has_permissions VALUES("34","1");
INSERT INTO role_has_permissions VALUES("34","2");
INSERT INTO role_has_permissions VALUES("35","1");
INSERT INTO role_has_permissions VALUES("35","2");
INSERT INTO role_has_permissions VALUES("36","1");
INSERT INTO role_has_permissions VALUES("36","2");
INSERT INTO role_has_permissions VALUES("37","1");
INSERT INTO role_has_permissions VALUES("37","2");
INSERT INTO role_has_permissions VALUES("38","1");
INSERT INTO role_has_permissions VALUES("38","2");
INSERT INTO role_has_permissions VALUES("39","1");
INSERT INTO role_has_permissions VALUES("39","2");
INSERT INTO role_has_permissions VALUES("40","1");
INSERT INTO role_has_permissions VALUES("40","2");
INSERT INTO role_has_permissions VALUES("41","1");
INSERT INTO role_has_permissions VALUES("41","2");
INSERT INTO role_has_permissions VALUES("42","1");
INSERT INTO role_has_permissions VALUES("42","2");
INSERT INTO role_has_permissions VALUES("43","1");
INSERT INTO role_has_permissions VALUES("43","2");
INSERT INTO role_has_permissions VALUES("44","1");
INSERT INTO role_has_permissions VALUES("44","2");
INSERT INTO role_has_permissions VALUES("45","1");
INSERT INTO role_has_permissions VALUES("45","2");
INSERT INTO role_has_permissions VALUES("46","1");
INSERT INTO role_has_permissions VALUES("46","2");
INSERT INTO role_has_permissions VALUES("47","1");
INSERT INTO role_has_permissions VALUES("47","2");
INSERT INTO role_has_permissions VALUES("48","1");
INSERT INTO role_has_permissions VALUES("48","2");
INSERT INTO role_has_permissions VALUES("49","1");
INSERT INTO role_has_permissions VALUES("49","2");
INSERT INTO role_has_permissions VALUES("50","1");
INSERT INTO role_has_permissions VALUES("50","2");
INSERT INTO role_has_permissions VALUES("51","1");
INSERT INTO role_has_permissions VALUES("51","2");
INSERT INTO role_has_permissions VALUES("52","1");
INSERT INTO role_has_permissions VALUES("52","2");
INSERT INTO role_has_permissions VALUES("53","1");
INSERT INTO role_has_permissions VALUES("53","2");
INSERT INTO role_has_permissions VALUES("54","1");
INSERT INTO role_has_permissions VALUES("54","2");
INSERT INTO role_has_permissions VALUES("55","1");
INSERT INTO role_has_permissions VALUES("55","2");
INSERT INTO role_has_permissions VALUES("55","4");
INSERT INTO role_has_permissions VALUES("56","1");
INSERT INTO role_has_permissions VALUES("56","2");
INSERT INTO role_has_permissions VALUES("56","4");
INSERT INTO role_has_permissions VALUES("57","1");
INSERT INTO role_has_permissions VALUES("57","2");
INSERT INTO role_has_permissions VALUES("57","4");
INSERT INTO role_has_permissions VALUES("58","1");
INSERT INTO role_has_permissions VALUES("58","2");
INSERT INTO role_has_permissions VALUES("59","1");
INSERT INTO role_has_permissions VALUES("59","2");
INSERT INTO role_has_permissions VALUES("60","1");
INSERT INTO role_has_permissions VALUES("60","2");
INSERT INTO role_has_permissions VALUES("61","1");
INSERT INTO role_has_permissions VALUES("61","2");
INSERT INTO role_has_permissions VALUES("62","1");
INSERT INTO role_has_permissions VALUES("62","2");
INSERT INTO role_has_permissions VALUES("63","1");
INSERT INTO role_has_permissions VALUES("63","2");
INSERT INTO role_has_permissions VALUES("63","4");
INSERT INTO role_has_permissions VALUES("64","1");
INSERT INTO role_has_permissions VALUES("64","2");
INSERT INTO role_has_permissions VALUES("64","4");
INSERT INTO role_has_permissions VALUES("65","1");
INSERT INTO role_has_permissions VALUES("65","2");
INSERT INTO role_has_permissions VALUES("66","1");
INSERT INTO role_has_permissions VALUES("66","2");
INSERT INTO role_has_permissions VALUES("67","1");
INSERT INTO role_has_permissions VALUES("67","2");
INSERT INTO role_has_permissions VALUES("68","1");
INSERT INTO role_has_permissions VALUES("68","2");
INSERT INTO role_has_permissions VALUES("69","1");
INSERT INTO role_has_permissions VALUES("69","2");
INSERT INTO role_has_permissions VALUES("70","1");
INSERT INTO role_has_permissions VALUES("70","2");
INSERT INTO role_has_permissions VALUES("71","1");
INSERT INTO role_has_permissions VALUES("71","2");
INSERT INTO role_has_permissions VALUES("72","1");
INSERT INTO role_has_permissions VALUES("72","2");
INSERT INTO role_has_permissions VALUES("73","1");
INSERT INTO role_has_permissions VALUES("73","2");
INSERT INTO role_has_permissions VALUES("74","1");
INSERT INTO role_has_permissions VALUES("74","2");
INSERT INTO role_has_permissions VALUES("75","1");
INSERT INTO role_has_permissions VALUES("75","2");
INSERT INTO role_has_permissions VALUES("76","1");
INSERT INTO role_has_permissions VALUES("76","2");
INSERT INTO role_has_permissions VALUES("77","1");
INSERT INTO role_has_permissions VALUES("77","2");
INSERT INTO role_has_permissions VALUES("78","1");
INSERT INTO role_has_permissions VALUES("78","2");
INSERT INTO role_has_permissions VALUES("79","1");
INSERT INTO role_has_permissions VALUES("79","2");
INSERT INTO role_has_permissions VALUES("80","1");
INSERT INTO role_has_permissions VALUES("80","2");
INSERT INTO role_has_permissions VALUES("81","1");
INSERT INTO role_has_permissions VALUES("81","2");
INSERT INTO role_has_permissions VALUES("82","1");
INSERT INTO role_has_permissions VALUES("82","2");
INSERT INTO role_has_permissions VALUES("83","1");
INSERT INTO role_has_permissions VALUES("83","2");
INSERT INTO role_has_permissions VALUES("84","1");
INSERT INTO role_has_permissions VALUES("84","2");
INSERT INTO role_has_permissions VALUES("85","1");
INSERT INTO role_has_permissions VALUES("85","2");
INSERT INTO role_has_permissions VALUES("86","1");
INSERT INTO role_has_permissions VALUES("86","2");
INSERT INTO role_has_permissions VALUES("87","1");
INSERT INTO role_has_permissions VALUES("87","2");
INSERT INTO role_has_permissions VALUES("88","1");
INSERT INTO role_has_permissions VALUES("88","2");
INSERT INTO role_has_permissions VALUES("89","1");
INSERT INTO role_has_permissions VALUES("89","2");
INSERT INTO role_has_permissions VALUES("90","1");
INSERT INTO role_has_permissions VALUES("90","2");
INSERT INTO role_has_permissions VALUES("91","1");
INSERT INTO role_has_permissions VALUES("91","2");
INSERT INTO role_has_permissions VALUES("92","1");
INSERT INTO role_has_permissions VALUES("92","2");
INSERT INTO role_has_permissions VALUES("93","1");
INSERT INTO role_has_permissions VALUES("93","2");
INSERT INTO role_has_permissions VALUES("94","1");
INSERT INTO role_has_permissions VALUES("94","2");
INSERT INTO role_has_permissions VALUES("95","1");
INSERT INTO role_has_permissions VALUES("95","2");
INSERT INTO role_has_permissions VALUES("96","1");
INSERT INTO role_has_permissions VALUES("96","2");
INSERT INTO role_has_permissions VALUES("97","1");
INSERT INTO role_has_permissions VALUES("97","2");
INSERT INTO role_has_permissions VALUES("98","1");
INSERT INTO role_has_permissions VALUES("98","2");
INSERT INTO role_has_permissions VALUES("99","1");
INSERT INTO role_has_permissions VALUES("99","2");
INSERT INTO role_has_permissions VALUES("100","1");
INSERT INTO role_has_permissions VALUES("100","2");
INSERT INTO role_has_permissions VALUES("101","1");
INSERT INTO role_has_permissions VALUES("101","2");
INSERT INTO role_has_permissions VALUES("102","1");
INSERT INTO role_has_permissions VALUES("102","2");
INSERT INTO role_has_permissions VALUES("103","1");
INSERT INTO role_has_permissions VALUES("103","2");
INSERT INTO role_has_permissions VALUES("104","1");
INSERT INTO role_has_permissions VALUES("104","2");
INSERT INTO role_has_permissions VALUES("105","1");
INSERT INTO role_has_permissions VALUES("105","2");
INSERT INTO role_has_permissions VALUES("106","1");
INSERT INTO role_has_permissions VALUES("107","1");
INSERT INTO role_has_permissions VALUES("108","1");
INSERT INTO role_has_permissions VALUES("109","1");
INSERT INTO role_has_permissions VALUES("110","1");
INSERT INTO role_has_permissions VALUES("111","1");
INSERT INTO role_has_permissions VALUES("112","1");
INSERT INTO role_has_permissions VALUES("113","1");
INSERT INTO role_has_permissions VALUES("114","1");
INSERT INTO role_has_permissions VALUES("115","1");
INSERT INTO role_has_permissions VALUES("116","1");
INSERT INTO role_has_permissions VALUES("117","1");
INSERT INTO role_has_permissions VALUES("118","1");
INSERT INTO role_has_permissions VALUES("119","1");
INSERT INTO role_has_permissions VALUES("120","1");
INSERT INTO role_has_permissions VALUES("121","1");
INSERT INTO role_has_permissions VALUES("122","1");
INSERT INTO role_has_permissions VALUES("123","1");



CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `guard_name` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO roles VALUES("1","Admin","admin can access all data...","web","1","2018-06-02 11:46:44","2022-07-31 09:19:24");
INSERT INTO roles VALUES("2","Owner","Staff of shop","web","1","2018-10-22 14:38:13","2022-07-31 09:19:37");
INSERT INTO roles VALUES("4","staff","staff has specific acess...","web","1","2018-06-02 12:05:27","2022-07-31 09:20:13");
INSERT INTO roles VALUES("5","Customer","","web","1","2020-11-05 18:43:16","2022-07-31 09:20:01");



CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(191) DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO sales VALUES("29","invoice-20231204-025644","1","2","6","4","3","1","1","0","0","28919","22500","0","0","Flat","6419","6419","","","","1","4","","22500","","","2023-12-04 00:00:00","2023-12-04 14:56:44");
INSERT INTO sales VALUES("30","invoice-20231205-010148","1","2","8","4","3","1","1","0","0","25500","19500","0","0","Flat","6000","6000","","","","1","4","","19500","","","2023-12-03 00:00:00","2023-12-05 13:01:48");
INSERT INTO sales VALUES("31","invoice-20231206-093118","1","2","9","4","3","1","1","0","0","1375","1050","0","0","Flat","325","325","","","","1","4","","1050","","","2023-12-06 00:00:00","2023-12-06 21:31:18");
INSERT INTO sales VALUES("34","invoice-20231208-080239","1","2","10","4","3","1","1","0","0","1950","1600","0","0","Flat","350","350","","","","1","4","","1600","","","2023-12-08 20:02:39","2023-12-08 20:02:39");
INSERT INTO sales VALUES("36","invoice-20231217-063724","1","2","11","4","3","2","2","0","0","12925","8350","0","0","Flat","4575","4575","","","","1","4","","8350","bikash 8350  phn 01721448996","","2023-12-15 00:00:00","2023-12-17 18:37:24");
INSERT INTO sales VALUES("37","invoice-20231219-112621","1","2","12","4","3","2","2","0","0","4250","3600","0","0","Flat","650","650","","","","1","4","","3600","","","2023-12-19 00:00:00","2023-12-19 11:26:21");
INSERT INTO sales VALUES("38","invoice-20231219-034420","1","2","13","4","3","1","1","0","0","9900","9000","0","0","Flat","900","900","","","","1","4","","9000","","","2023-12-19 00:00:00","2023-12-19 15:44:20");
INSERT INTO sales VALUES("39","invoice-20231219-102045","1","2","14","4","3","1","1","0","0","1375","1000","0","0","Flat","375","375","","","","1","4","","1000","","","2023-12-19 00:00:00","2023-12-19 22:20:45");
INSERT INTO sales VALUES("40","invoice-20231221-105024","1","2","15","4","3","1","1","0","0","98890","73500","0","0","Flat","25390","25390","","","","1","4","","73500","","","2023-12-21 00:00:00","2023-12-21 22:50:24");
INSERT INTO sales VALUES("41","invoice-20231230-011021","1","2","16","4","3","1","1","0","0","49500","43000","0","0","Flat","6500","6500","","","","1","4","","43000","","","2023-12-30 00:00:00","2023-12-30 13:10:21");
INSERT INTO sales VALUES("42","invoice-20231230-063642","1","2","17","4","3","1","1","0","0","25500","20000","0","0","Flat","5500","5500","","","","1","4","","20000","","","2023-12-30 00:00:00","2023-12-30 18:36:42");
INSERT INTO sales VALUES("44","invoice-20240101-020835","1","2","6","4","3","1","1","0","0","28919","22500","0","0","Flat","6419","6419","","","","1","4","","22500","","","2023-12-03 00:00:00","2024-01-01 14:08:35");
INSERT INTO sales VALUES("45","invoice-20240102-091325","1","2","9","4","3","1","1","0","0","1595","1200","0","0","Flat","395","395","","","","1","4","","1200","","","2023-12-31 00:00:00","2024-01-02 21:13:25");
INSERT INTO sales VALUES("46","invoice-20240109-060729","1","2","18","4","3","1","1","0","0","26990","22500","0","0","Flat","4490","4490","","","","1","4","","22500","","","2024-01-09 00:00:00","2024-01-09 18:07:29");
INSERT INTO sales VALUES("47","invoice-20240109-084411","1","2","3","4","3","1","1","0","0","26990","22000","0","0","Flat","4990","4990","","","","1","4","","22000","","","2024-01-09 20:44:11","2024-01-09 20:44:11");
INSERT INTO sales VALUES("48","invoice-20240111-064437","1","2","19","4","3","1","1","0","0","48490","41000","0","0","Flat","7490","7490","","","","1","4","","41000","","","2024-01-11 00:00:00","2024-01-11 18:44:37");
INSERT INTO sales VALUES("49","invoice-20240112-081242","1","2","20","4","3","1","1","0","0","9000","9000","0","0","Flat","","0","","","","1","4","","9000","","","2024-01-12 00:00:00","2024-01-12 20:12:42");
INSERT INTO sales VALUES("51","invoice-20240112-082705","1","2","21","4","3","2","2","0","0","50600","44000","0","0","Flat","6600","6600","","","","1","4","","44000","","","2024-01-12 00:00:00","2024-01-12 20:27:05");
INSERT INTO sales VALUES("52","invoice-20240112-084555","1","2","21","4","3","1","1","0","0","1950","1755","0","0","Percentage","10","195","","","","1","4","","1755","","","2024-01-12 00:00:00","2024-01-12 20:45:55");
INSERT INTO sales VALUES("53","invoice-20240113-044917","1","2","22","4","3","1","1","0","0","3400","2890","0","0","Percentage","15","510","","","","1","4","","2890","","","2024-01-13 00:00:00","2024-01-13 16:49:17");
INSERT INTO sales VALUES("54","invoice-20240114-122647","1","2","20","4","3","1","1","0","0","9000","9000","0","0","Flat","","0","","","","1","4","","9000","","","2024-01-13 00:00:00","2024-01-14 12:26:47");
INSERT INTO sales VALUES("55","invoice-20240114-124405","1","2","23","4","3","1","1","0","0","33090","27000","0","0","Flat","6090","6090","","","","1","4","","27000","","","2024-01-13 00:00:00","2024-01-14 12:44:05");
INSERT INTO sales VALUES("56","invoice-20240114-124724","1","2","24","4","3","1","1","0","0","28990","24000","0","0","Flat","4990","4990","","","","1","4","","24000","","","2024-01-13 00:00:00","2024-01-14 12:47:24");
INSERT INTO sales VALUES("57","invoice-20240114-035025","1","2","20","4","3","2","2","0","0","8740","7429","0","0","Percentage","15","1311","","","","1","4","","7429","","","2024-01-14 00:00:00","2024-01-14 15:50:25");
INSERT INTO sales VALUES("58","invoice-20240114-094849","1","2","25","4","3","1","1","0","0","4450","3700","0","0","Flat","750","750","","","","1","4","","3700","","","2024-01-14 00:00:00","2024-01-14 21:48:49");
INSERT INTO sales VALUES("59","invoice-20240115-060225","1","2","22","4","3","1","1","0","0","4450","3800","0","0","Flat","650","650","","","","1","4","","3800","","","2024-01-15 00:00:00","2024-01-15 18:02:25");
INSERT INTO sales VALUES("60","invoice-20240115-073052","1","2","26","4","3","2","2","0","0","4550","3400","0","0","Flat","1150","1150","","","0","1","4","","3400","Saimon's Sir","","2024-01-15 00:00:00","2024-01-16 11:37:00");
INSERT INTO sales VALUES("61","invoice-20240116-120140","1","2","27","4","3","1","1","0","0","3890","3501","0","0","Percentage","10","389","","","0","1","4","","3501","","","2024-01-15 00:00:00","2024-01-16 12:02:36");
INSERT INTO sales VALUES("62","invoice-20240116-120822","1","2","8","4","3","1","1","0","0","4200","3300","0","0","Flat","900","900","","","0","1","4","","3300","","","2024-01-15 00:00:00","2024-01-16 12:09:21");
INSERT INTO sales VALUES("63","invoice-20240116-121441","1","2","8","4","3","1","1","0","0","31500","25500","0","0","Flat","6000","6000","","","","1","4","","25500","","","2024-01-15 00:00:00","2024-01-16 12:14:41");
INSERT INTO sales VALUES("64","invoice-20240118-105407","1","2","28","4","3","1","1","0","0","3400","2800","0","0","Flat","600","600","","","","1","4","","2800","","","2024-01-17 00:00:00","2024-01-18 10:54:07");
INSERT INTO sales VALUES("65","invoice-20240119-122228","1","2","29","4","3","1","1","0","0","4490","3500","0","0","Flat","990","990","","","","1","4","","3500","","","2024-01-18 00:00:00","2024-01-19 12:22:28");
INSERT INTO sales VALUES("66","invoice-20240119-122442","1","2","9","4","3","1","1","0","0","1390","1000","0","0","Flat","390","390","","","","1","4","","1000","","","2024-01-18 00:00:00","2024-01-19 12:24:42");
INSERT INTO sales VALUES("67","invoice-20240120-080611","1","2","30","4","3","1","1","0","0","4550","3867.5","0","0","Percentage","15","682.5","","","","1","4","","3867.5","","","2024-01-20 00:00:00","2024-01-20 20:06:11");
INSERT INTO sales VALUES("68","invoice-20240121-020007","1","2","31","4","3","1","1","0","0","34990","29500","0","0","Flat","5490","5490","","","","1","4","","29500","","","2024-01-21 00:00:00","2024-01-21 14:00:07");
INSERT INTO sales VALUES("69","invoice-20240121-034001","1","2","20","4","3","1","1","0","0","5500","4700","0","0","Flat","800","800","","","","1","4","","4700","","","2024-01-21 00:00:00","2024-01-21 15:40:01");
INSERT INTO sales VALUES("70","invoice-20240122-080733","1","2","32","4","3","1","1","0","0","4200","3700","0","0","Flat","500","500","","","","1","4","","3700","","","2024-01-22 00:00:00","2024-01-22 20:07:33");
INSERT INTO sales VALUES("71","invoice-20240123-035527","1","2","33","4","3","2","2","0","0","30900","30900","0","0","Flat","","0","","","","1","4","","30900","","","2024-01-23 00:00:00","2024-01-23 15:55:27");
INSERT INTO sales VALUES("72","invoice-20240124-104406","1","2","34","4","3","1","1","0","0","79990","67900","0","0","Flat","12090","12090","","","","1","4","","67900","","","2024-01-24 00:00:00","2024-01-24 10:44:06");
INSERT INTO sales VALUES("73","invoice-20240124-093502","1","2","2","4","3","1","1","0","0","10500","8000","0","0","Flat","2500","2500","","","","1","4","","8000","","","2024-01-24 00:00:00","2024-01-24 21:35:02");
INSERT INTO sales VALUES("74","invoice-20240126-113505","1","2","35","4","3","1","1","0","0","1450","1000","0","0","Flat","450","450","","","","1","4","","1000","","","2024-01-25 00:00:00","2024-01-26 11:35:05");
INSERT INTO sales VALUES("75","invoice-20240128-055250","1","2","5","4","3","1","1","0","0","48490","43000","0","0","Flat","5490","5490","","","","1","4","","43000","","","2024-01-28 00:00:00","2024-01-28 17:52:50");
INSERT INTO sales VALUES("76","invoice-20240131-020113","1","2","24","4","3","1","1","0","0","32490","27500","0","0","Flat","4990","4990","","","","1","4","","27500","","","2024-01-31 00:00:00","2024-01-31 14:01:13");
INSERT INTO sales VALUES("77","invoice-20240131-064012","1","2","36","4","3","1","1","0","0","21900","18000","0","0","Flat","3900","3900","","","","1","4","","18000","","","2024-01-29 00:00:00","2024-01-31 18:40:12");
INSERT INTO sales VALUES("78","invoice-20240202-024357","1","2","20","4","3","1","1","0","0","9000","9000","0","0","Flat","","0","","","","1","4","","9000","","","2024-02-02 14:43:57","2024-02-02 14:43:57");
INSERT INTO sales VALUES("79","invoice-20240202-024438","1","2","20","4","3","1","1","0","0","9000","9000","0","0","Flat","","0","","","","1","4","","9000","","","2024-02-02 00:00:00","2024-02-02 14:44:38");
INSERT INTO sales VALUES("80","invoice-20240202-040606","1","2","2","4","3","1","1","0","0","39790","34000","0","0","Flat","5790","5790","","","","1","4","","34000","","","2024-02-02 00:00:00","2024-02-02 16:06:06");
INSERT INTO sales VALUES("81","invoice-20240213-034252","1","2","37","4","3","1","1","0","0","45000","43000","0","0","Flat","2000","2000","","","","1","4","","43000","","","2024-02-13 00:00:00","2024-02-13 15:42:52");
INSERT INTO sales VALUES("82","invoice-20240217-105442","1","2","38","4","3","1","1","0","0","44990","39000","0","0","Flat","5990","5990","","","0","1","2","","39200","","","2024-02-15 00:00:00","2024-02-17 11:05:32");
INSERT INTO sales VALUES("83","invoice-20240218-081253","1","2","39","4","3","3","3","0","0","9040","7400","0","0","Flat","1640","1640","","","","1","4","","7400","","","2024-02-18 00:00:00","2024-02-18 20:12:53");
INSERT INTO sales VALUES("84","invoice-20240229-014844","1","2","40","4","3","1","1","0","0","79890","67000","0","0","Flat","12890","12890","","","","1","4","","67000","","","2024-02-29 00:00:00","2024-02-29 13:48:44");
INSERT INTO sales VALUES("85","invoice-20240304-041004","1","2","41","4","3","1","1","0","0","51000","45000","0","0","Flat","6000","6000","","","","1","4","","45000","","","2024-03-04 00:00:00","2024-03-04 16:10:04");
INSERT INTO sales VALUES("86","invoice-20240306-100400","1","2","42","4","3","2","4","0","0","258960","219000","0","0","Flat","39960","39960","","","","1","4","","219000","","","2024-03-06 10:04:00","2024-03-06 10:04:00");
INSERT INTO sales VALUES("87","invoice-20240306-092329","1","2","43","4","3","1","1","0","0","5100","4300","0","0","Flat","800","800","","","","1","4","","4300","","","2024-03-06 00:00:00","2024-03-06 21:23:29");
INSERT INTO sales VALUES("88","invoice-20240308-045026","1","2","44","4","3","1","1","0","0","62900","48000","0","0","Flat","14900","14900","","","0","1","2","","49000","","","2024-03-08 00:00:00","2024-03-08 18:27:30");
INSERT INTO sales VALUES("89","invoice-20240309-015230","1","2","45","4","3","1","1","0","0","3400","3000","0","0","Flat","400","400","","","","1","4","","3000","","","2024-03-09 00:00:00","2024-03-09 13:52:30");
INSERT INTO sales VALUES("90","invoice-20240315-105026","1","2","21","4","3","1","1","0","0","79890","69000","0","0","Flat","10890","10890","","","","1","4","","69000","","","2024-03-15 00:00:00","2024-03-15 10:50:26");
INSERT INTO sales VALUES("91","invoice-20240318-032217","1","2","47","4","3","1","1","0","0","79890","70000","0","0","Flat","9890","9890","","","","1","4","","70000","","","2024-03-16 00:00:00","2024-03-18 15:22:17");
INSERT INTO sales VALUES("92","invoice-20240318-100922","1","2","48","4","3","1","1","0","0","37900","31000","0","0","Flat","6900","6900","","","","1","4","","31000","","","2024-03-19 00:00:00","2024-03-18 22:09:22");
INSERT INTO sales VALUES("93","invoice-20240322-103538","1","2","49","4","3","1","1","0","0","5100","4500","0","0","Flat","600","600","","","","1","4","","4500","","","2024-03-22 22:35:38","2024-03-22 22:35:38");
INSERT INTO sales VALUES("94","invoice-20240322-103700","1","2","49","4","3","1","1","0","0","5100","4500","0","0","Flat","600","600","","","","1","4","","4500","","","2024-03-22 00:00:00","2024-03-22 22:37:00");
INSERT INTO sales VALUES("95","invoice-20240329-104559","1","2","50","4","3","1","1","0","0","30690","26000","0","0","Flat","4690","4690","","","","1","4","","26000","","","2024-03-29 00:00:00","2024-03-29 10:45:59");
INSERT INTO sales VALUES("96","invoice-20240329-033202","1","2","51","4","3","1","1","0","0","9800","7700","0","0","Flat","2100","2100","","","","1","4","","7700","","","2024-03-29 00:00:00","2024-03-29 15:32:02");
INSERT INTO sales VALUES("97","invoice-20240403-122022","1","2","52","4","3","1","1","0","0","25500","20000","0","0","Flat","5500","5500","","","","1","4","","20000","","","2024-04-03 00:00:00","2024-04-03 12:20:22");
INSERT INTO sales VALUES("98","invoice-20240405-032745","1","2","53","4","3","1","1","0","0","5350","4500","0","0","Flat","850","850","","","","1","4","","4500","","","2024-04-05 00:00:00","2024-04-05 15:27:45");
INSERT INTO sales VALUES("99","invoice-20240405-101448","1","2","55","4","3","1","1","0","0","79500","79500","0","0","Flat","0","0","","","0","1","4","","79500","","","2024-04-05 00:00:00","2024-04-07 11:52:36");
INSERT INTO sales VALUES("100","invoice-20240406-081108","1","2","54","4","3","1","1","0","0","58400","52500","0","0","Flat","5900","5900","","","","1","4","","52500","","","2024-04-07 00:00:00","2024-04-06 20:11:08");
INSERT INTO sales VALUES("101","invoice-20240409-092225","1","2","56","4","3","1","1","0","0","47000","47000","0","0","Flat","","0","","","","1","4","","47000","","","2024-04-10 00:00:00","2024-04-09 21:22:25");
INSERT INTO sales VALUES("102","invoice-20240410-010937","1","2","20","4","3","1","2","0","0","8800","8000","0","0","Flat","800","800","","","","1","4","","8000","","","2024-04-10 00:00:00","2024-04-10 13:09:37");
INSERT INTO sales VALUES("104","invoice-20240410-080422","1","2","3","4","3","2","3","0","0","13650","13050","0","0","Flat","600","600","","","","1","4","","13050","","","2024-04-10 20:04:22","2024-04-10 20:04:22");
INSERT INTO sales VALUES("105","invoice-20240410-080450","1","2","57","4","3","2","3","0","0","13650","13050","0","0","Flat","600","600","","","","1","4","","13050","","","2024-04-10 00:00:00","2024-04-10 20:04:50");
INSERT INTO sales VALUES("106","invoice-20240418-120143","1","2","58","4","3","1","1","0","0","51900","46000","0","0","Flat","5900","5900","","","","1","4","","46000","","","2024-04-18 00:00:00","2024-04-18 12:01:43");
INSERT INTO sales VALUES("107","invoice-20240418-071615","1","2","59","4","3","1","1","0","0","33990","28891.5","0","0","Percentage","15","5098.5","","","","1","4","","28891.5","","","2024-04-18 00:00:00","2024-04-18 19:16:15");
INSERT INTO sales VALUES("108","invoice-20240422-065712","1","2","60","4","3","1","1","0","0","79890","70500","0","0","Flat","9390","9390","","","","1","4","","70500","","","2024-04-21 00:00:00","2024-04-22 18:57:12");
INSERT INTO sales VALUES("109","invoice-20240423-071223","1","2","61","4","3","3","3","0","0","56980","48650","0","0","Flat","8330","8330","","","","1","4","","48650","","","2024-04-23 00:00:00","2024-04-23 19:12:23");
INSERT INTO sales VALUES("110","invoice-20240430-104017","1","2","62","4","3","1","1","0","0","55990","51500","0","0","Flat","4490","4490","","","","1","4","","51500","","","2024-04-30 00:00:00","2024-04-30 22:40:17");
INSERT INTO sales VALUES("111","invoice-20240503-071904","1","2","63","4","3","1","1","0","0","10500","8000","0","0","Flat","2500","2500","","","0","1","2","","8500","","","2024-05-03 00:00:00","2024-05-03 19:30:10");
INSERT INTO sales VALUES("112","invoice-20240505-090627","1","2","64","4","3","1","1","0","0","5300","4770","0","0","Percentage","10","530","","","","1","4","","4770","","","2024-05-05 00:00:00","2024-05-05 21:06:27");
INSERT INTO sales VALUES("113","invoice-20240509-040201","1","2","65","4","3","1","1","0","0","26990","24000","0","0","Flat","2990","2990","","","","1","4","","24000","","","2024-05-05 00:00:00","2024-05-09 16:02:01");
INSERT INTO sales VALUES("114","invoice-20240509-040555","1","2","60","4","3","1","1","0","0","72500","65000","0","0","Flat","7500","7500","","","","1","4","","65000","","","2024-05-05 00:00:00","2024-05-09 16:05:55");
INSERT INTO sales VALUES("115","invoice-20240509-044519","1","2","52","4","3","1","1","0","0","96990","80000","0","0","Flat","16990","16990","","","","1","4","","80000","","","2024-05-09 00:00:00","2024-05-09 16:45:19");
INSERT INTO sales VALUES("116","invoice-20240509-050734","1","2","67","4","3","1","1","0","0","3550","3000","0","0","Flat","550","550","","","","1","4","","3000","","","2024-04-20 00:00:00","2024-05-09 17:07:34");
INSERT INTO sales VALUES("117","invoice-20240509-051810","1","2","68","4","3","1","1","0","0","25490","23000","0","0","Flat","2490","2490","","","","1","4","","23000","","","2024-03-25 00:00:00","2024-05-09 17:18:10");
INSERT INTO sales VALUES("118","invoice-20240509-053459","1","2","25","4","3","1","1","0","0","2490","2300","0","0","Flat","190","190","","","","1","4","","2300","","","2024-03-28 00:00:00","2024-05-09 17:34:59");
INSERT INTO sales VALUES("120","invoice-20240516-095955","1","2","69","4","3","2","2","0","0","8190","6800","0","0","Flat","1390","1390","","","","1","4","","6800","","","2024-05-16 00:00:00","2024-05-16 21:59:55");
INSERT INTO sales VALUES("121","invoice-20240516-101409","1","2","21","4","3","1","1","0","0","4150","4150","0","0","Flat","","0","","","","1","4","","4150","","","2024-05-17 00:00:00","2024-05-16 22:14:09");
INSERT INTO sales VALUES("122","invoice-20240523-101228","1","2","35","4","3","2","2","0","0","14390","12200","0","0","Flat","2190","2190","","","","1","4","","12200","","","2024-05-23 00:00:00","2024-05-23 22:12:28");
INSERT INTO sales VALUES("123","invoice-20240529-070138","1","2","3","4","3","1","1","0","0","3050","2500","0","0","Flat","550","550","","","","1","4","","2500","","","2024-03-11 00:00:00","2024-05-29 19:01:38");



CREATE TABLE `stock_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `brand_id` varchar(191) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `initial_file` varchar(191) DEFAULT NULL,
  `final_file` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO stock_counts VALUES("1","scr-20230910-110552","1","","","1","full","20230910-110552.csv","","","0","2023-09-10 11:05:52","2023-09-10 11:05:52");



CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) NOT NULL,
  `vat_number` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO suppliers VALUES("1","Bùi Đức Toàn","","AnToanHome","","hero70411@gmail.com","0904422959","58 Tố Hữu","Quận Nam Từ Liêm","Hà Nội","12015","Vietnam","0","2022-07-31 12:17:34","2023-11-12 23:02:58");
INSERT INTO suppliers VALUES("2","ProBook Source","","Enchanted Library","","probook@gmail.com","+77 343400","London","Tower of London","","","","0","2023-09-16 10:46:09","2023-11-12 23:02:58");
INSERT INTO suppliers VALUES("3","Bookss","","4axiz","","afrinbintaamzad@gmail.com","999999999","London","Tower of London","","","","0","2023-09-16 10:57:04","2023-11-12 23:02:58");
INSERT INTO suppliers VALUES("4","Lutfur Rahman","","sony","","janduzzal@gmail.com","01913692423","House : 589 Road: 09","Dhaka","","1216","Bangladesh","0","2023-11-12 23:02:33","2023-11-16 12:18:36");
INSERT INTO suppliers VALUES("5","sohag","","akas electronics","","askaehajsd12@gmail.com","01774352983","mirpur 12","dhaka 1612","","","","1","2023-11-16 12:18:12","2023-11-16 12:18:12");
INSERT INTO suppliers VALUES("6","miyako","","miyako appliance","","miyako00@gmai.com","01976649256","super market","dhaka-1000","","","","1","2023-11-16 16:42:37","2023-11-16 16:42:37");
INSERT INTO suppliers VALUES("7","green air","","green air","","greenair.official@gmail.com","0194120894","mirpur-10 dhaka-1216","DHAKA","","","","1","2023-11-16 19:01:59","2023-11-16 19:01:59");
INSERT INTO suppliers VALUES("8","Walton","","rokon eiectronics","","rokoneiectronics20@gmail.com","01714345145","kachukhet.bazar road.dhaka cantonment.dhaka-1206","DHAKA-1206","","","","1","2023-11-20 18:44:14","2023-11-20 18:44:14");
INSERT INTO suppliers VALUES("9","samsung","","wholesale electronics","","samsung21@gmail.com","01329701317","matikata bazar .dhaka cantonment.dhaka-1206","dhaka-1206","","","","1","2023-11-22 18:40:37","2023-11-22 18:40:37");
INSERT INTO suppliers VALUES("10","sheba tm","","sheba tm","","admin@shebatm.com","01999911779","elephant road.dhaka-1205","DHAKA-1205","","","","1","2023-11-27 18:03:14","2023-11-27 18:03:14");
INSERT INTO suppliers VALUES("11","tricon","","Tricon Marketinog Limited","","info@triconbd.com","01934441666","853/54 moshair.azompur.dhakkhin khan uttara.dhaka-1230","dhaka-1230","","","","1","2023-12-04 12:23:03","2023-12-04 12:23:03");
INSERT INTO suppliers VALUES("12","M/S. HIRA","","M/S. HIRA INDUSTRIES LTD","","monirul2391@gmail.com","01676206215","35.BONGOBONDHU NATIONAL STADIUM DHAKA-1000","DHAKA","","","","1","2024-01-29 13:31:09","2024-01-29 13:31:09");
INSERT INTO suppliers VALUES("13","Sajibul isalm","","SINGER Bangladesh ltd","","sigerinfo@singerbd.com","01911335677","joinabari waerehouse . saver .dhaka","dhaka","","","","1","2024-01-29 14:30:33","2024-01-29 14:30:33");
INSERT INTO suppliers VALUES("14","alif electronics","","alif electronics","","alifelectronics12@gmail.com","01747778258","mirpur-11","dhaka-1216","","","","1","2024-04-10 19:44:18","2024-04-10 19:44:18");



CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO transfers VALUES("1","tr-20230910-112602","1","3","1","2","1","1","0","800","200","1000","","","2023-09-10 00:00:00","2023-09-10 11:26:02");



CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(191) NOT NULL,
  `unit_name` varchar(191) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO units VALUES("1","Pcs","Cái","","*","1","0","2022-07-31 12:15:05","2023-11-12 22:42:52");
INSERT INTO units VALUES("2","BK01","PCS","","*","1","0","2023-09-16 09:50:19","2023-11-12 22:52:49");
INSERT INTO units VALUES("3","6566","pcs","","*","1","1","2023-11-12 23:18:08","2023-11-12 23:18:08");



CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("1","admin","nurul4axiz@gmail.com","$2a$06$fsjWwW97UAa5G8KRZomyy.dCNYtqi.UIa4KlwxaEySw9ec72fBg3m","kAAiJBp9u0W9fuZbpHDr59p2OAo2MtQDZ5BJLLDZTqhy6LP8lnpnq0YcinQw","5364377","4axiz","1","","","1","0","2018-06-02 15:24:15","2022-07-16 08:38:25");
INSERT INTO users VALUES("3","dhiman da","dhiman@gmail.com","$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.","5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt","212","lioncoders","1","0","0","0","1","2018-06-14 10:00:31","2020-11-05 19:06:51");
INSERT INTO users VALUES("6","test","test@gmail.com","$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS","KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm","1234","212312","4","0","0","0","1","2018-06-23 15:05:33","2018-06-23 15:13:45");
INSERT INTO users VALUES("8","test","test@yahoo.com","$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC","","31231","","4","0","0","0","1","2018-06-25 10:35:49","2018-07-02 13:07:39");
INSERT INTO users VALUES("9","staff","anda@gmail.com","$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm","HUYdFDsg2g1SEUNKVp70hF9RhpiPGEcglq3uk02sjG92M04QacNeV2oWneEZ","3123","","4","5","1","0","1","2018-07-02 13:08:08","2022-07-16 08:37:08");
INSERT INTO users VALUES("10","abul","abul@alpha.com","$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq","x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0","1234","anda","1","0","0","0","1","2018-09-08 11:44:48","2022-07-16 08:35:32");
INSERT INTO users VALUES("11","teststaff","a@a.com","$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li","DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp","111","aa","4","5","1","0","1","2018-10-22 14:47:56","2018-10-23 14:10:56");
INSERT INTO users VALUES("12","john","john@gmail.com","$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe","O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg","10001","","4","2","2","0","1","2018-12-30 12:48:37","2019-03-06 16:59:49");
INSERT INTO users VALUES("13","jjj","test@test.com","$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG","","1213","","1","0","0","0","1","2019-01-03 12:08:31","2019-03-03 16:02:29");
INSERT INTO users VALUES("19","shakalaka","shakalaka@gmail.com","$2y$10$ketLWT0Ib/JXpo00eJlxoeSw.7leS8V1CUGInfbyOWT4F5.Xuo7S2","","1212","Digital image","5","0","0","0","1","2020-11-09 12:07:16","2022-07-16 08:35:32");
INSERT INTO users VALUES("21","modon","modon@gmail.com","$2y$10$7VpoeGMkP8QCvL5zLwFW..6MYJ5MRumDLDoX.TTQtClS561rpFHY.","","2222","modon company","5","0","0","0","1","2020-11-13 19:12:08","2022-07-16 08:35:32");
INSERT INTO users VALUES("22","dhiman","dhiman@gmail.com","$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq","","+8801111111101","lioncoders","5","0","0","0","1","2020-11-15 18:14:58","2022-07-16 08:35:32");
INSERT INTO users VALUES("31","mbs","mbs@gmail.com","$2y$10$6Ldm1rWEVSrlTmpjIXkeQO9KwWJz/j0FB4U.fY1oCFeax47rvttEK","","2121","","4","1","2","0","1","2021-12-29 18:40:22","2022-07-16 08:35:32");
INSERT INTO users VALUES("36","Manuel S","msolis@mango.com.gt","$2y$10$YfM/LdEtAN08hoVXiaRRZO.0Wf.fBn0wRnaCSczc50s3bR.7xFliu","","53664377","","1","","","1","0","2022-07-16 07:48:37","2022-07-16 07:48:37");
INSERT INTO users VALUES("37","Kuttus","kuttus@gmail.com","$2y$10$v1CAjIkijxNVHdFYM8y7AuHrXoa/G2ewfz8yjJJyqB64sX7KPdnNO","","01711123444","The Sailor","1","","","0","0","2023-09-17 11:14:47","2023-09-17 11:14:47");



CREATE TABLE `variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` text NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO warehouses VALUES("1","Kho Ecolife","0904422959","hero70411@gmail.com","58 Tố Hữu","0","2022-07-31 12:14:05","2023-11-12 23:06:18");
INSERT INTO warehouses VALUES("2","Moho Ecolife","07988888888","mohoecolife@gmail.com","Denmark","0","2023-09-10 11:25:21","2023-11-12 23:06:18");
INSERT INTO warehouses VALUES("3","Enchanted Pages Library","+77 404088","library@gmail.com","London SW1A 1AA, United Kingdom","0","2023-09-16 09:19:11","2023-11-12 23:06:18");
INSERT INTO warehouses VALUES("4","SHS ELECTRONICS","01791830014.01791830015","shselectronics@gmail.com","Road-16.Block-C.House-3-4.Bunia Badh Mirpur.(Kalshi Road).Dhaka-1216","1","2023-11-08 20:20:49","2023-11-15 18:33:40");

