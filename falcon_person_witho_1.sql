-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: falcon_personalisation
-- ------------------------------------------------------
-- Server version	5.7.30-log

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_title` varchar(200) DEFAULT NULL,
  `category_icon` varchar(500) DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT '0',
  `item_count` int(11) DEFAULT '1',
  `category_order` int(11) DEFAULT '0',
  `usage_count` int(11) DEFAULT '0',
  `search_count` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Rakfoodie','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',0,1438,1,0,34,1,'2020-09-06 01:10:48','2020-12-23 10:53:38'),(2,'Health','https://revamp.rakbank.ae/wps/wcm/connect/2d8ab622-1d1d-4901-93f1-9b510f315185/Health-%26-Wellness.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-2d8ab622-1d1d-4901-93f1-9b510f315185-mQvadTL',0,259,2,0,22,1,'2020-09-06 01:10:48','2020-12-18 15:04:41'),(3,'Jewellery','https://revamp.rakbank.ae/wps/wcm/connect/3613ce41-c262-4ab6-9464-0d0b7b9e0477/Jewellery-%26-watches.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-3613ce41-c262-4ab6-9464-0d0b7b9e0477-mQvaIy-',0,60,6,0,64,1,'2020-09-06 01:10:48','2020-12-22 05:52:22'),(4,'Travel','https://revamp.rakbank.ae/wps/wcm/connect/d59d64cb-2789-4a21-8dfe-e169d1ef52e8/Travel-%26-Entertainment.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-d59d64cb-2789-4a21-8dfe-e169d1ef52e8-mQvaNpO',0,141,3,0,41,1,'2020-09-06 01:10:48','2020-12-21 10:31:12'),(5,'Shopping','https://revamp.rakbank.ae/wps/wcm/connect/1daa934d-25cc-4917-b97d-8e5c4e3acbb4/Shopping.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-1daa934d-25cc-4917-b97d-8e5c4e3acbb4-mQvaS-K',0,408,4,0,30,1,'2020-09-06 01:10:48','2020-12-21 10:32:13'),(6,'Services','https://revamp.rakbank.ae/wps/wcm/connect/267f70da-7315-4b9c-8bf4-3de9529563b7/SERVICES.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-267f70da-7315-4b9c-8bf4-3de9529563b7-mQvaX..',0,223,5,0,1,1,'2020-09-06 01:10:48','2020-12-18 10:26:52'),(7,'All Card','https://revamp.rakbank.ae/wps/wcm/connect/1851844b-1210-467a-9b5d-f0944550f5b3/OFFERS2.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-1851844b-1210-467a-9b5d-f0944550f5b3-mQvb0kE',0,0,7,0,0,1,'2020-09-06 01:10:48','2020-11-10 10:43:24'),(8,'Chinese, Japanese or Thai','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,84,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 15:16:31'),(9,'Indian','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,103,0,11,11,1,'2020-09-06 01:10:48','2020-12-14 15:18:06'),(10,'Meal Subscription','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,7,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 15:16:37'),(11,'International','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,191,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 15:13:36'),(12,'Cafe','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,243,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 08:01:26'),(13,'Arabic','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,113,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 15:12:21'),(14,'Lounge','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,258,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 08:01:04'),(15,'Food Delivery','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,52,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 15:18:09'),(16,'Desserts','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,18,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 15:18:20'),(17,'Italian','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,215,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 15:17:19'),(18,'Other Cuisine','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,96,0,0,0,1,'2020-09-06 01:10:48','2020-11-10 07:27:20'),(19,'Seafood','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,29,0,0,0,1,'2020-09-06 01:10:48','2020-11-10 06:59:58'),(20,'Best Foodie Fridays','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,13,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 07:59:46'),(21,'Pakistani','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,2,0,0,0,1,'2020-09-06 01:10:48','2020-12-14 15:14:03'),(22,'European','https://revamp.rakbank.ae/wps/wcm/connect/4539427d-2433-4c80-b304-a4d62c72ff3f/RAKFOODIE+%28002%29.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-4539427d-2433-4c80-b304-a4d62c72ff3f-mQva6PY',1,2,0,0,0,1,'2020-09-06 01:10:48','2020-11-10 06:59:57'),(23,'Dentistry','https://revamp.rakbank.ae/wps/wcm/connect/2d8ab622-1d1d-4901-93f1-9b510f315185/Health-%26-Wellness.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-2d8ab622-1d1d-4901-93f1-9b510f315185-mQvadTL',2,28,0,0,0,1,'2020-09-06 01:10:49','2020-11-10 08:05:04'),(24,'Hospitals & Clinics','https://revamp.rakbank.ae/wps/wcm/connect/2d8ab622-1d1d-4901-93f1-9b510f315185/Health-%26-Wellness.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-2d8ab622-1d1d-4901-93f1-9b510f315185-mQvadTL',2,22,0,0,0,1,'2020-09-06 01:10:49','2020-11-10 10:52:13'),(25,'Rejuvenation','https://revamp.rakbank.ae/wps/wcm/connect/2d8ab622-1d1d-4901-93f1-9b510f315185/Health-%26-Wellness.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-2d8ab622-1d1d-4901-93f1-9b510f315185-mQvadTL',2,15,0,0,0,1,'2020-09-06 01:10:49','2020-11-10 06:59:58'),(26,'Fitness Club','https://revamp.rakbank.ae/wps/wcm/connect/2d8ab622-1d1d-4901-93f1-9b510f315185/Health-%26-Wellness.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-2d8ab622-1d1d-4901-93f1-9b510f315185-mQvadTL',2,141,0,0,0,1,'2020-09-06 01:10:49','2020-12-14 15:23:04'),(27,'Aesthetics','https://revamp.rakbank.ae/wps/wcm/connect/2d8ab622-1d1d-4901-93f1-9b510f315185/Health-%26-Wellness.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-2d8ab622-1d1d-4901-93f1-9b510f315185-mQvadTL',2,40,0,0,0,1,'2020-09-06 01:10:49','2020-11-11 12:09:11'),(28,'Beauty Salons','https://revamp.rakbank.ae/wps/wcm/connect/2d8ab622-1d1d-4901-93f1-9b510f315185/Health-%26-Wellness.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-2d8ab622-1d1d-4901-93f1-9b510f315185-mQvadTL',2,7,0,0,0,1,'2020-09-06 01:10:49','2020-11-10 06:59:58'),(29,'Getaways','https://revamp.rakbank.ae/wps/wcm/connect/d59d64cb-2789-4a21-8dfe-e169d1ef52e8/Travel-%26-Entertainment.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-d59d64cb-2789-4a21-8dfe-e169d1ef52e8-mQvaNpO',4,66,0,0,0,1,'2020-09-06 01:10:49','2020-12-14 15:19:56'),(49,'Jewellery','https://revamp.rakbank.ae/wps/wcm/connect/2d8ab622-1d1d-4901-93f1-9b510f315185/Health-%26-Wellness.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-2d8ab622-1d1d-4901-93f1-9b510f315185-mQvadTL',NULL,60,0,0,0,0,'2020-11-10 18:25:01','2020-11-27 17:39:57'),(58,'Activities','https://revamp.rakbank.ae/wps/wcm/connect/d59d64cb-2789-4a21-8dfe-e169d1ef52e8/Travel-%26-Entertainment.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-d59d64cb-2789-4a21-8dfe-e169d1ef52e8-mQvaNpO',4,3,0,0,0,1,'2020-12-14 08:01:54','2020-12-15 08:59:35'),(59,'Training & Education','https://revamp.rakbank.ae/wps/wcm/connect/267f70da-7315-4b9c-8bf4-3de9529563b7/SERVICES.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-267f70da-7315-4b9c-8bf4-3de9529563b7-mQvaX..',6,4,0,0,0,1,'2020-12-14 08:05:52','2020-12-15 08:59:36'),(60,'Automotives','https://revamp.rakbank.ae/wps/wcm/connect/267f70da-7315-4b9c-8bf4-3de9529563b7/SERVICES.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-267f70da-7315-4b9c-8bf4-3de9529563b7-mQvaX..',6,22,0,0,0,1,'2020-12-14 08:06:09','2020-12-15 08:59:35'),(61,'Entertainment','https://revamp.rakbank.ae/wps/wcm/connect/d59d64cb-2789-4a21-8dfe-e169d1ef52e8/Travel-%26-Entertainment.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-d59d64cb-2789-4a21-8dfe-e169d1ef52e8-mQvaNpO',4,2,0,0,0,1,'2020-12-14 15:19:27','2020-12-15 08:59:35'),(62,'Cinema','https://revamp.rakbank.ae/wps/wcm/connect/d59d64cb-2789-4a21-8dfe-e169d1ef52e8/Travel-%26-Entertainment.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-d59d64cb-2789-4a21-8dfe-e169d1ef52e8-mQvaNpO',4,1,0,0,0,1,'2020-12-14 15:19:35','2020-12-15 08:59:35'),(63,'Online Shopping','https://revamp.rakbank.ae/wps/wcm/connect/1daa934d-25cc-4917-b97d-8e5c4e3acbb4/Shopping.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-1daa934d-25cc-4917-b97d-8e5c4e3acbb4-mQvaS-K',5,6,0,0,0,1,'2020-12-14 15:24:45','2020-12-15 08:59:35'),(64,'Electronics and Mobiles','https://revamp.rakbank.ae/wps/wcm/connect/1daa934d-25cc-4917-b97d-8e5c4e3acbb4/Shopping.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-1daa934d-25cc-4917-b97d-8e5c4e3acbb4-mQvaS-K',5,1,0,0,0,1,'2020-12-14 15:26:02','2020-12-15 08:59:35'),(65,'Fashion','https://revamp.rakbank.ae/wps/wcm/connect/1daa934d-25cc-4917-b97d-8e5c4e3acbb4/Shopping.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-1daa934d-25cc-4917-b97d-8e5c4e3acbb4-mQvaS-K',5,1,0,0,0,1,'2020-12-14 15:26:10','2020-12-15 08:59:35'),(66,'Card Offers',NULL,NULL,1,NULL,NULL,NULL,1,'2020-12-22 04:45:28','2020-12-22 04:45:28'),(67,'Card Offers',NULL,NULL,1,NULL,NULL,NULL,1,'2020-12-22 04:45:28','2020-12-22 04:45:28'),(68,'Card Offers',NULL,NULL,1,NULL,NULL,NULL,1,'2020-12-22 04:45:28','2020-12-22 04:45:28'),(69,'CARD_OFFERS',NULL,NULL,6,NULL,NULL,NULL,1,'2020-12-22 07:55:15','2020-12-22 08:13:59'),(70,'CARD_OFFER_Insurance',NULL,69,2,NULL,NULL,NULL,1,'2020-12-22 07:55:15','2020-12-22 07:55:15'),(71,'CARD_OFFER_Lifestyle Benefits',NULL,69,3,NULL,NULL,NULL,1,'2020-12-22 07:55:16','2020-12-22 08:13:59'),(72,'CARD_OFFER_Skyward Miles',NULL,69,1,NULL,NULL,NULL,1,'2020-12-22 08:13:56','2020-12-22 08:13:56');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(200) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `icon_url` varchar(500) DEFAULT NULL,
  `usage_count` int(5) DEFAULT '0',
  `order` tinyint(3) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Tours',NULL,NULL,NULL,0,1,1,'2020-10-03 09:36:44','2020-10-03 09:36:44'),(2,'Events',NULL,NULL,NULL,0,2,1,'2020-10-03 09:36:44','2020-10-03 09:36:44'),(3,'Attractions',NULL,NULL,NULL,0,3,1,'2020-10-03 09:36:45','2020-10-03 09:36:45'),(4,'Arts and Culture',NULL,NULL,NULL,0,4,1,'2020-10-03 09:36:45','2020-10-03 09:36:45'),(5,'Dining and Delivery',NULL,NULL,NULL,0,5,1,'2020-10-03 09:36:45','2020-10-03 09:36:45'),(6,'Activities',NULL,NULL,NULL,0,6,1,'2020-10-03 09:36:45','2020-10-03 09:36:45'),(7,'Gateways',NULL,NULL,NULL,0,7,1,'2020-10-03 09:36:45','2020-10-03 09:36:45'),(8,'Entertainment',NULL,NULL,NULL,0,8,1,'2020-10-03 09:36:45','2020-10-03 09:36:45'),(9,'Digital Experiences',NULL,NULL,NULL,0,9,1,'2020-10-03 09:36:45','2020-10-03 09:36:45'),(10,'Shopping',NULL,NULL,NULL,0,10,1,'2020-10-03 09:36:45','2020-10-03 09:36:45'),(11,'Health and Wellness',NULL,NULL,NULL,0,11,1,'2020-10-03 09:36:45','2020-10-03 09:36:45'),(12,'Salons and Spas',NULL,NULL,NULL,0,12,1,'2020-10-03 09:36:45','2020-10-03 09:36:45'),(13,'Sports',NULL,NULL,NULL,0,13,1,'2020-10-03 09:36:46','2020-10-03 09:36:46'),(14,'Culinary Experiences',NULL,NULL,NULL,0,14,1,'2020-10-03 09:36:46','2020-10-03 09:36:46');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cta_button`
--

DROP TABLE IF EXISTS `cta_button`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cta_button` (
  `id` int(11) NOT NULL,
  `error_id` int(11) DEFAULT NULL,
  `cta_text` varchar(100) DEFAULT NULL,
  `button_order` int(11) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  `flex` int(11) DEFAULT NULL,
  `button_type` varchar(100) DEFAULT NULL,
  `action_close_overlay` tinyint(4) DEFAULT NULL,
  `action_open_deep_link` varchar(100) DEFAULT NULL,
  `action_toast` varchar(100) DEFAULT NULL,
  `action_snackbar` varchar(100) DEFAULT NULL,
  `action_auto_close_overlay` bigint(20) DEFAULT NULL,
  `retry_api_call` varchar(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cta_button`
--

LOCK TABLES `cta_button` WRITE;
/*!40000 ALTER TABLE `cta_button` DISABLE KEYS */;
/*!40000 ALTER TABLE `cta_button` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_handling_details`
--

DROP TABLE IF EXISTS `error_handling_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_handling_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `error_type` varchar(45) DEFAULT NULL,
  `toast_snack_duration` bigint(20) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `overlay_height` int(3) DEFAULT NULL,
  `overlay_image_url` varchar(200) DEFAULT NULL,
  `overlay_fixed` tinyint(4) DEFAULT NULL,
  `extra_info` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_handling_details`
--

LOCK TABLES `error_handling_details` WRITE;
/*!40000 ALTER TABLE `error_handling_details` DISABLE KEYS */;
INSERT INTO `error_handling_details` VALUES (1,'TOAST_ERROR',20,'Location Not Found','Looks like the location details are not correct',NULL,NULL,0,'2020-09-10 13:24:38',1,'2020-09-10 13:24:38','2020-09-10 13:24:38'),(2,'POP_UP_ERROR',NULL,'Something went wrong','We encountered a problem somewhere.',NULL,NULL,0,'2020-09-10 13:24:38',1,'2020-09-10 13:24:38','2020-09-10 13:24:38'),(3,'SNACK_BAR_ERROR',20,'City Not Supported','Current City is not supported',NULL,NULL,0,'2020-09-10 13:24:38',1,'2020-09-10 13:24:38','2020-09-10 13:24:38'),(4,'INLINE_ERROR_LIST',NULL,'Location Not Found','No locations found for the given location',NULL,NULL,0,'2020-09-10 13:24:38',1,'2020-09-10 13:24:38','2020-09-10 13:24:38'),(5,'BOTTOM_OVERLAY_ERROR',NULL,'Items Not Found','No items found for this location',3,'image',1,'2020-09-10 13:24:38',1,'2020-09-10 13:24:38','2020-09-10 13:25:20'),(6,'POP_UP_ERROR',NULL,'Country Not Supported','Current country is not supported',NULL,NULL,0,'2020-09-10 13:24:38',1,'2020-09-10 13:24:38','2020-09-10 13:24:38'),(7,'POP_UP_ERROR',NULL,'Favourite Items Not Found','No Favourite Items found',NULL,NULL,0,'2020-09-10 13:24:38',1,'2020-09-10 13:24:38','2020-09-10 13:25:20');
/*!40000 ALTER TABLE `error_handling_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inline_error`
--

DROP TABLE IF EXISTS `inline_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inline_error` (
  `id` int(11) NOT NULL,
  `error_id` int(11) DEFAULT NULL,
  `error_text` varchar(100) DEFAULT NULL,
  `animated` tinyint(4) DEFAULT NULL,
  `field_index` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inline_error`
--

LOCK TABLES `inline_error` WRITE;
/*!40000 ALTER TABLE `inline_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `inline_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type` enum('OFFER','HOTEL','EVENT','OFFER_SUBSTITUTE','HOTEL_SUBSTITUTE','EVENT_SUBSTITUTE') DEFAULT 'OFFER',
  `order_val` tinyint(3) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `substitute_name` varchar(100) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `icon_url` varchar(500) DEFAULT NULL,
  `deeplink` varchar(500) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'OFFER',1,'Offers',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/OFFER_BACKGROUND.svg','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/OFFER_ICON.svg','falcon://falcon/rakbank_Falcon_offers_offers-landing-screen',1,'2020-09-06 02:25:37','2020-12-17 16:23:28'),(2,'HOTEL',3,'Hotels',NULL,'https://nucleistorage.blob.core.windows.net/public-images/falcon-images/HOTEL_BACKGROUND.svg',NULL,NULL,0,'2020-09-06 02:25:37','2020-11-05 05:34:06'),(3,'EVENT',4,'Events',NULL,'https://nucleistorage.blob.core.windows.net/public-images/falcon-images/EVENTS_BACKGROUND.svg',NULL,NULL,0,'2020-09-06 02:25:37','2020-11-05 05:34:06'),(4,'OFFER_SUBSTITUTE',2,'Card Benefits','CARD_OFFERS','https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/CARD_BENEFITS_BACKGROUND.svg','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/CARD_BENEFITS_ICON.svg','falcon://falcon/rakbank_Falcon_offers_offer-listing-screen?sectionIdentifier=CARD_OFFERS&sectionType=OFFER',1,'2020-09-06 02:25:37','2020-12-24 05:40:28');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personalisation_config`
--

DROP TABLE IF EXISTS `personalisation_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personalisation_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(200) NOT NULL,
  `config_value` mediumtext NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personalisation_config`
--

LOCK TABLES `personalisation_config` WRITE;
/*!40000 ALTER TABLE `personalisation_config` DISABLE KEYS */;
INSERT INTO `personalisation_config` VALUES (1,'DEFAULT_CITY','Dubai',1,'2020-08-31 11:26:12','2020-08-31 11:26:12'),(2,'DEFAULT_COUNTRY','United Arab Emirates',1,'2020-08-31 11:26:12','2020-08-31 11:26:12');
/*!40000 ALTER TABLE `personalisation_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personalisation_metadata`
--

DROP TABLE IF EXISTS `personalisation_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personalisation_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_items` int(11) DEFAULT '0',
  `total_categories` int(11) DEFAULT NULL,
  `total_subcategories` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personalisation_metadata`
--

LOCK TABLES `personalisation_metadata` WRITE;
/*!40000 ALTER TABLE `personalisation_metadata` DISABLE KEYS */;
INSERT INTO `personalisation_metadata` VALUES (1,4441,8,23,'2020-10-23 08:08:19','2020-12-22 08:13:59');
/*!40000 ALTER TABLE `personalisation_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type` varchar(45) NOT NULL DEFAULT 'MIX',
  `section_name` varchar(50) NOT NULL,
  `display_name` varchar(200) DEFAULT NULL,
  `section_type` enum('ITEM','CITY','AREA','CATEGORY','SUB_CATEGORY','SUPPLIER') NOT NULL DEFAULT 'ITEM',
  `list_view_type` varchar(100) NOT NULL DEFAULT 'VERTICAL',
  `view_type` varchar(100) NOT NULL DEFAULT 'CARD',
  `rule` mediumtext,
  `user_based` tinyint(1) DEFAULT '0',
  `size` int(11) DEFAULT '30',
  `sort_options` varchar(10) DEFAULT NULL,
  `usage_count` int(11) DEFAULT '0',
  `show_expiry_text` tinyint(1) DEFAULT '0',
  `add_in_listing` tinyint(1) DEFAULT '0',
  `order_val` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`section_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'MIX','RECOMMENDED','Curated offers','ITEM','HORIZONTAL','CARD','{   \"basedOnLocation\": {     \"locationType\": \"CITY\"   },   \"basedOnUserPref\": true }',1,100,'3,0',0,0,1,1,1,'2020-09-02 12:10:57','2020-12-01 13:13:30'),(2,'CITTIES','CITIES','Explore by city','CITY','HORIZONTAL','CARD',NULL,0,30,NULL,0,0,1,3,1,'2020-09-02 12:11:28','2020-12-03 14:20:22'),(5,'MIX','POPULAR_OFFERS','Popular offers','ITEM','HORIZONTAL','CARD','{\n  \"popularity\": {\n    \"type\": \"POPULARITY_COUNT\"\n  },\n  \"basedOnLocation\": {\n    \"locationType\": \"CITY\"\n  }\n}',0,30,'4,0',0,0,0,2,1,'2020-11-09 07:47:40','2020-12-01 12:57:30');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supported_countries`
--

DROP TABLE IF EXISTS `supported_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supported_countries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `default_city` varchar(200) NOT NULL,
  `status` tinyint(3) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supported_countries`
--

LOCK TABLES `supported_countries` WRITE;
/*!40000 ALTER TABLE `supported_countries` DISABLE KEYS */;
INSERT INTO `supported_countries` VALUES (1,'United Arab Emirates',242,'Dubai',1,'2020-08-31 11:25:32','2020-08-31 11:25:32');
/*!40000 ALTER TABLE `supported_countries` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `vendor_category`
--

DROP TABLE IF EXISTS `vendor_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` tinyint(3) DEFAULT NULL,
  `category_name` varchar(200) NOT NULL,
  `subcategory` tinyint(4) DEFAULT '0',
  `category_mapping_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_category`
--

LOCK TABLES `vendor_category` WRITE;
/*!40000 ALTER TABLE `vendor_category` DISABLE KEYS */;
INSERT INTO `vendor_category` VALUES (1,1,'Rakfoodie',0,5,1,'2020-10-29 08:17:14','2020-10-29 08:17:14'),(2,1,'Health',0,11,1,'2020-10-29 08:17:14','2020-10-29 08:17:14'),(3,1,'Jewellery',0,10,1,'2020-10-29 08:17:14','2020-10-29 08:17:14'),(4,1,'Travel',0,6,1,'2020-10-29 08:17:15','2020-10-29 08:17:15'),(5,1,'Shopping',0,10,1,'2020-10-29 08:17:15','2020-10-29 08:17:15'),(6,1,'Services',0,10,1,'2020-10-29 08:17:15','2020-10-29 08:17:15'),(7,1,'ALL_OFFERS',0,0,1,'2020-10-29 08:17:15','2020-10-29 08:17:15'),(8,1,'Getaways',0,7,1,'2020-10-29 08:59:05','2020-10-29 08:59:05'),(9,1,'Activity',0,6,1,'2020-10-29 08:59:05','2020-10-29 08:59:05'),(10,1,'Cinema',0,8,1,'2020-10-29 08:59:05','2020-10-29 08:59:05'),(11,1,'Online Streaming',0,8,1,'2020-10-29 08:59:06','2020-10-29 08:59:06'),(12,1,'Beauty Salons',0,12,1,'2020-10-29 08:59:06','2020-10-29 08:59:06'),(13,1,'Rejuvenation',0,12,1,'2020-10-29 08:59:06','2020-10-29 08:59:06');
/*!40000 ALTER TABLE `vendor_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-24  7:13:14
