-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: falcon_commonservice
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
-- Table structure for table `cta_button`
--

DROP TABLE IF EXISTS `cta_button`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cta_button` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `retry_api_call` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cta_button`
--

LOCK TABLES `cta_button` WRITE;
/*!40000 ALTER TABLE `cta_button` DISABLE KEYS */;
INSERT INTO `cta_button` VALUES (1,1,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-09-02 03:33:22','2020-09-16 06:15:30'),(2,2,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-09-08 15:03:16','2020-09-16 06:15:31'),(3,3,'Re-Enter card details',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-09-08 15:05:11','2020-11-11 07:23:36'),(4,4,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-09-08 15:05:31','2020-09-16 06:15:32'),(5,5,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-09-24 13:44:28','2020-09-24 13:44:28');
/*!40000 ALTER TABLE `cta_button` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_handling_details`
--

DROP TABLE IF EXISTS `error_handling_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_handling_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `error_type` varchar(45) DEFAULT NULL,
  `toast_snack_duration` bigint(20) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `overlay_height` int(3) DEFAULT NULL,
  `overlay_image_url` varchar(100) DEFAULT NULL,
  `overlay_fixed` tinyint(4) DEFAULT NULL,
  `extra_info` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_handling_details`
--

LOCK TABLES `error_handling_details` WRITE;
/*!40000 ALTER TABLE `error_handling_details` DISABLE KEYS */;
INSERT INTO `error_handling_details` VALUES (0,'',0,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1,'BOTTOM_OVERLAY_ERROR',5,'Uh-oh! That was unexpected!','Looks like we did something wrong. \nIf the problem persists, Please reach out to customercare-falcon@rakbank.ae',460,'https://i.imgur.com/99rvqPV.png',0,NULL,1,'2020-09-02 03:30:03','2020-12-02 08:20:09'),(2,'BOTTOM_OVERLAY_ERROR',5,'Uh-oh! That was unexpected!','Looks like we are unable to validate the payment. Please reach out to customercare-falcon@rakbank.ae',460,'https://i.imgur.com/99rvqPV.png',0,NULL,1,'2020-09-08 15:08:41','2020-12-02 08:20:09'),(3,'BOTTOM_OVERLAY_ERROR',5,'Card already registered.','The entered credit card details has been registered already. Please check the details.',460,'https://i.imgur.com/99rvqPV.png',0,NULL,1,'2020-09-08 15:08:41','2020-11-27 13:03:31'),(4,'BOTTOM_OVERLAY_ERROR',5,'Uh-oh! That was unexpected!','Looks like we are unable to find the location. If the problem persists, please reach out to customercare-falcon@rakbank.ae',460,'https://i.imgur.com/99rvqPV.png',0,NULL,1,'2020-09-08 15:08:42','2020-12-02 08:20:09'),(5,'BOTTOM_OVERLAY_ERROR',5,'Uh-oh! That was unexpected!','Recheck Card Details',460,'https://i.imgur.com/99rvqPV.png',0,NULL,1,'2020-09-16 04:55:31','2020-12-02 08:20:09');
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
INSERT INTO `inline_error` VALUES (1,4,'first inline text',1,1,1,'2020-08-24 20:46:13','2020-08-24 20:46:13'),(2,4,'second text',1,2,1,'2020-08-24 20:46:30','2020-09-09 06:35:57');
/*!40000 ALTER TABLE `inline_error` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04  6:58:16
