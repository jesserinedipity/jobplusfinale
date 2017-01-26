-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jobplusfinale
-- ------------------------------------------------------
-- Server version	5.6.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_calendars`
--

DROP TABLE IF EXISTS `app_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_calendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_calendars`
--

LOCK TABLES `app_calendars` WRITE;
/*!40000 ALTER TABLE `app_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_notifications`
--

DROP TABLE IF EXISTS `app_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_notifications`
--

LOCK TABLES `app_notifications` WRITE;
/*!40000 ALTER TABLE `app_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attainment`
--

DROP TABLE IF EXISTS `attainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attainment` (
  `attainment_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`attainment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attainment`
--

LOCK TABLES `attainment` WRITE;
/*!40000 ALTER TABLE `attainment` DISABLE KEYS */;
INSERT INTO `attainment` VALUES (1,'Highschool'),(2,'College');
/*!40000 ALTER TABLE `attainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Household'),(2,'Construction'),(3,'Personel'),(4,'Maintenance');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degrees`
--

DROP TABLE IF EXISTS `degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degrees` (
  `degree_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`degree_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degrees`
--

LOCK TABLES `degrees` WRITE;
/*!40000 ALTER TABLE `degrees` DISABLE KEYS */;
INSERT INTO `degrees` VALUES (1,'Bachelor of Applied Science'),(2,'Bachelor of Architecture'),(3,'Bachelor of Arts'),(4,'Bachelor of Business Administration'),(5,'Bachelor of Commerce'),(6,'Bachelor of Science');
/*!40000 ALTER TABLE `degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_field`
--

DROP TABLE IF EXISTS `edu_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_field` (
  `edu_field_id` int(11) NOT NULL,
  `degree_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`edu_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_field`
--

LOCK TABLES `edu_field` WRITE;
/*!40000 ALTER TABLE `edu_field` DISABLE KEYS */;
INSERT INTO `edu_field` VALUES (1,6,'Information Technology'),(2,6,'Computer Science');
/*!40000 ALTER TABLE `edu_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `education_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attainment` int(1) NOT NULL,
  `school` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` int(4) NOT NULL,
  `end` int(4) NOT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `field_study` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (24,2,'University of San Jose-Recoletos',2013,2017,6,'1'),(26,2,'University of San Jose-Recoletos',2013,2016,6,'1'),(28,2,'University of San Carlos',2016,2025,6,'1'),(30,2,'University of San Carlos',2016,2025,6,'1'),(31,2,'University of San Carlos',2016,2025,6,'2'),(33,2,'University of San Carlos',2016,2025,6,'2'),(34,2,'San',2016,2025,6,'1'),(35,2,'San',2016,2024,6,'1'),(36,2,'San',2016,2024,6,'2'),(37,2,'San',2016,2024,0,NULL),(41,2,'hehe',2016,2025,6,'1'),(43,2,'hehe',2016,2025,6,'2'),(44,2,'awww',2016,2025,6,'2'),(46,2,'awwws',2016,2025,6,'1'),(47,2,'asdasd',2016,2025,6,'1'),(48,2,'asdasd',2016,2025,6,'1'),(51,1,'USJR',2016,2025,NULL,NULL);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_calendars`
--

DROP TABLE IF EXISTS `emp_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_calendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_calendars`
--

LOCK TABLES `emp_calendars` WRITE;
/*!40000 ALTER TABLE `emp_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_notifications`
--

DROP TABLE IF EXISTS `emp_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_notifications`
--

LOCK TABLES `emp_notifications` WRITE;
/*!40000 ALTER TABLE `emp_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiences` (
  `experience_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `employer` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`experience_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` VALUES (7,'Dish','Creative',2016),(8,'Dish','Creative',2016),(9,'asdasd','asdasdasd',2016),(12,'','',0),(13,'','',0),(14,'Programmer','Glocorp',2013),(15,'','',0);
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_address`
--

DROP TABLE IF EXISTS `job_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_address` (
  `id` int(10) unsigned NOT NULL,
  `jobid` int(10) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `locality` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_address`
--

LOCK TABLES `job_address` WRITE;
/*!40000 ALTER TABLE `job_address` DISABLE KEYS */;
INSERT INTO `job_address` VALUES (1,1,14.5512,121.023,'Makati'),(2,2,14.5542,121.024,'Makati'),(3,3,10.3441,123.939,'Mandaue City'),(4,4,10.3169,123.893,'Mandaue City'),(5,5,10.3333,123.937,'Mandaue City'),(7,7,10.3169,123.893,'Cebu City'),(8,8,10.308,123.89,'Cebu City'),(9,9,10.3169,123.893,'Cebu City'),(10,10,10.3113,123.9,'Cebu City'),(11,11,11.024,124.6,'Ormoc'),(12,12,11.024,124.6,'Ormoc'),(13,13,11.0225,124.599,'Ormoc'),(14,14,11.0258,124.595,'Ormoc'),(15,15,11.0206,124.6,'Ormoc'),(16,16,11.0186,124.603,'Ormoc');
/*!40000 ALTER TABLE `job_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_skills`
--

DROP TABLE IF EXISTS `job_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_skills` (
  `id` int(10) NOT NULL,
  `job_id` int(10) NOT NULL,
  `skill_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_skills`
--

LOCK TABLES `job_skills` WRITE;
/*!40000 ALTER TABLE `job_skills` DISABLE KEYS */;
INSERT INTO `job_skills` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,3),(6,3,6),(7,3,7),(8,4,8),(9,5,12),(10,5,13),(11,7,5),(12,7,7),(13,7,9),(14,8,22),(15,8,19),(16,9,17),(17,9,18),(18,10,5),(19,10,6),(20,11,12),(21,12,7),(22,12,8),(23,13,20),(24,13,21),(25,14,14),(26,15,16),(27,15,18),(28,16,1),(29,16,2),(30,16,3);
/*!40000 ALTER TABLE `job_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `paytype` int(11) NOT NULL,
  `salary` double(8,2) NOT NULL,
  `is_all_day` tinyint(1) NOT NULL,
  `slot` int(11) NOT NULL,
  `date_posted` date NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,2,'1','Hiring: Kasambahay/Dishwasher','Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in ipsum id orci porta dapibus. Sed porttitor lectus nibh.','2016-10-17 10:00:00','2016-10-17 11:00:00',1,1000.00,0,1,'2016-11-25'),(2,2,'1','Hiring: Yaya/Housekeeper','Vivamus suscipit tortor eget felis porttitor volutpat. Cras ultricies ligula sed magna dictum porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat.','2016-10-17 11:00:00','2016-10-17 01:00:00',2,1500.00,0,1,'2016-11-24'),(3,2,'2','Hiring:Painter','Nulla porttitor accumsan tincidunt. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.','2016-10-17 11:00:00','2016-10-17 12:00:00',3,500.00,0,1,'2016-11-23'),(4,2,'2','Hiring: Cutter','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec rutrum congue leo eget malesuada.','2016-10-17 11:00:00','2016-10-17 05:00:00',2,750.00,0,1,'2016-11-22'),(5,2,'3','Looking for: Tindera/Retailer','Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vel','2016-10-17 10:30:00','2016-10-17 12:30:00',1,1500.00,0,1,'2016-11-21'),(7,2,'2','looking for a good construction worker','Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur ','2016-10-27 11:00:00','2016-10-28 10:00:00',1,1500.00,0,1,'2016-11-20'),(8,2,'4','We need a Plumber ','Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla porttitor accumsan','2016-10-27 11:00:00','2016-10-28 10:00:00',2,1500.00,0,1,'2016-11-19'),(9,2,'3','Need Driver ASAP','Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. Vivamus suscipit tortor eget felis porttitor volutpat.','2016-10-27 11:00:00','2016-10-28 10:00:00',1,1500.00,0,1,'2016-11-18'),(10,2,'2','Need Carpenter','Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Sed porttitor lectus nibh. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus suscipit tortor eget felis p','2016-10-27 11:00:00','2016-10-28 10:00:00',1,1500.00,0,1,'2016-11-17'),(11,2,'3','looking for a Promo Dicer','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.','2016-10-27 11:00:00','2016-10-28 10:00:00',2,1500.00,0,1,'2016-11-16'),(12,2,'2','looking for a good construction worker','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Curabit','2016-10-27 11:00:00','2016-10-28 10:00:00',3,1500.00,0,1,'2016-11-15'),(13,2,'4','looking for Technician','Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Sed porttitor lectus nibh. Vivamus suscipit tortor eget felis porttitor ','2016-10-27 11:00:00','2016-10-28 10:00:00',2,1500.00,0,1,'2016-11-14'),(14,2,'3','looking for a waiter','Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada.','2016-10-27 11:00:00','2016-10-28 10:00:00',2,800.00,0,1,'2016-11-13'),(15,2,'3','looking for a good cook','Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. Vivamus suscipit tortor eget felis porttitor volutpat.','2016-10-27 11:00:00','2016-10-28 10:00:00',1,300.00,0,1,'2016-11-12'),(16,2,'1','looking for a good Yaya','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Curabit','2016-10-27 11:00:00','2016-10-28 10:00:00',1,400.00,0,1,'2016-11-11');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_09_12_031805_create_jobs_table',1),('2016_09_12_035543_create_categories_table',1),('2016_09_12_041852_create_works_table',1),('2016_09_13_095422_create_skills_table',1),('2016_09_13_095439_create_schedules_table',1),('2016_09_13_095517_create_paytypes_table',1),('2016_09_13_095558_create_experiences_table',1),('2016_09_13_095638_create_degrees_table',1),('2016_09_13_095652_create_education_table',1),('2016_09_13_095734_create_profiles_table',1),('2016_09_13_095755_create_reviews_table',1),('2016_09_13_100131_create_emp__notifications_table',1),('2016_09_13_100145_create_app__notifications_table',1),('2016_09_14_090116_create_prof_educations_table',1),('2016_09_14_125745_create_prof_experiences_table',1),('2016_09_14_125756_create_prof_skills_table',1),('2016_09_16_083427_create_app__calendars_table',1),('2016_09_16_083428_create_emp__calendars_table',1),('2016_10_02_222038_create_statuses_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytypes`
--

DROP TABLE IF EXISTS `paytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paytypes` (
  `paytype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`paytype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytypes`
--

LOCK TABLES `paytypes` WRITE;
/*!40000 ALTER TABLE `paytypes` DISABLE KEYS */;
INSERT INTO `paytypes` VALUES (1,'Hourly'),(2,'Daily'),(3,'Per Project');
/*!40000 ALTER TABLE `paytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_educations`
--

DROP TABLE IF EXISTS `prof_educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof_educations` (
  `profedu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) NOT NULL,
  `education_id` int(11) NOT NULL,
  PRIMARY KEY (`profedu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_educations`
--

LOCK TABLES `prof_educations` WRITE;
/*!40000 ALTER TABLE `prof_educations` DISABLE KEYS */;
INSERT INTO `prof_educations` VALUES (25,1,51);
/*!40000 ALTER TABLE `prof_educations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_experiences`
--

DROP TABLE IF EXISTS `prof_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof_experiences` (
  `profexp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `experience_id` int(11) NOT NULL,
  PRIMARY KEY (`profexp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_experiences`
--

LOCK TABLES `prof_experiences` WRITE;
/*!40000 ALTER TABLE `prof_experiences` DISABLE KEYS */;
/*!40000 ALTER TABLE `prof_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_mobile`
--

DROP TABLE IF EXISTS `prof_mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof_mobile` (
  `promob_id` int(10) NOT NULL,
  `code` varchar(45) NOT NULL,
  `is_verified` varchar(45) NOT NULL,
  `profile_id` int(10) NOT NULL,
  PRIMARY KEY (`promob_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_mobile`
--

LOCK TABLES `prof_mobile` WRITE;
/*!40000 ALTER TABLE `prof_mobile` DISABLE KEYS */;
INSERT INTO `prof_mobile` VALUES (0,'f1d2','1',1);
/*!40000 ALTER TABLE `prof_mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_skills`
--

DROP TABLE IF EXISTS `prof_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof_skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_skills`
--

LOCK TABLES `prof_skills` WRITE;
/*!40000 ALTER TABLE `prof_skills` DISABLE KEYS */;
INSERT INTO `prof_skills` VALUES (222,1,1),(223,1,2),(224,1,3),(225,1,13),(226,1,19),(227,1,20),(228,1,21);
/*!40000 ALTER TABLE `prof_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `profile_id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `biography` longtext COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'baguion','kent','','Cebu City, Central Visayas, Philippines','A good review','/avatar/1484104578-builder.png'),(84,2,'Baguion','Kim Vincent','09329520016','Cebu City','this is a good description about myself.','/avatar/kim.jpg');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `review_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `reviewed_id` int(11) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'Nice review',5,2,1,1),(2,'asdasd',5,2,1,2);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,1,'2017-01-06 14:00:00','2017-01-06 15:00:00'),(4,2,'2017-01-06 15:00:00','2017-01-06 16:00:00'),(5,3,'2017-01-06 14:00:00','2017-01-06 15:00:00'),(6,4,'2017-01-06 16:00:00','2017-01-06 17:00:00'),(7,5,'2017-01-06 17:00:00','2017-01-06 18:00:00'),(8,7,'2017-01-06 19:00:00','2017-01-06 19:00:00'),(9,8,'2017-01-06 18:00:00','2017-01-06 19:00:00'),(10,9,'2017-01-06 19:00:00','2017-01-06 20:00:00'),(11,10,'2017-01-06 19:00:00','2017-01-06 20:00:00'),(12,11,'2017-01-06 20:00:00','2017-01-06 21:00:00'),(13,12,'2017-01-06 20:00:00','2017-01-06 21:00:00'),(14,13,'2017-01-06 21:00:00','2017-01-06 22:00:00'),(15,14,'2017-01-06 21:00:00','2017-01-06 22:00:00'),(16,15,'2017-01-06 22:00:00','2017-01-06 23:00:00'),(17,16,'2017-01-06 22:00:00','2017-01-06 23:00:00');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Dishwasher',1),(2,'Housekeeper',1),(3,'Child Care Worker',1),(4,'Laundry and Dry Cleaning',1),(5,'Carpenter',2),(6,'Painter',2),(7,'Masonry',2),(8,'Cutter',2),(9,'Tile and Marble Setter',2),(10,'Molding and Casting',2),(11,'Upholsterer',2),(12,'Sales Clerk',3),(13,'Promo Dicer',3),(14,'Waiter/Waitress',3),(16,'Retailer',3),(17,'Driver',3),(18,'Cook',3),(19,'Plumber',4),(20,'Automotive Technician',4),(21,'Appliance Technician',4),(22,'Electrician',4);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Active'),(2,'Upcoming'),(3,'Ongoing'),(4,'Ended'),(5,'Pending');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'applicant','moch@gmail.com','$2y$10$u7hcDAzeFgPFbYXWNxVdweyGU9XtLWeqHxdScyuW.aZsTaz4d27uu','C8q1WbEFL4ycd2EI7QIFSpvw3cvigE7fQAXfe3F0SEv43sBN9PR6O3e03PxZ'),(2,'employer','itnel13@gmail.com','$2y$10$E2PIeMbL68qZwELK3USQgO275CPJNjwJfAvoPHUVrLSa1kAryyws6','ACSz39a7Y7fk8uGG8OD4EhTkCrnPGbkCtCYJEzpp5lnVmGqJf4Z1hH2a9jEr');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_logs`
--

DROP TABLE IF EXISTS `work_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `date_ended` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_logs`
--

LOCK TABLES `work_logs` WRITE;
/*!40000 ALTER TABLE `work_logs` DISABLE KEYS */;
INSERT INTO `work_logs` VALUES (1,6,3,'2017-01-06 18:01:17'),(2,7,2,'2017-01-06 18:01:17');
/*!40000 ALTER TABLE `work_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `work_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sched_id` int(10) NOT NULL,
  `applicant_id` int(10) NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `is_start` tinyint(1) NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (3,8,1,1,'2017-01-06 15:31:04',0),(4,9,1,2,'2017-01-06 15:31:04',0),(5,6,1,2,'2017-01-06 15:31:04',0),(6,5,1,4,'2017-01-06 15:31:04',0),(7,4,1,4,'2017-01-06 15:31:04',0);
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-27  4:17:12
