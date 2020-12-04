-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: falcon_onboarding
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
-- Table structure for table `block_user_audit`
--

DROP TABLE IF EXISTS `block_user_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_user_audit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(200) NOT NULL DEFAULT '',
  `reason` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_user_audit`
--

LOCK TABLES `block_user_audit` WRITE;
/*!40000 ALTER TABLE `block_user_audit` DISABLE KEYS */;
INSERT INTO `block_user_audit` VALUES (1,'xhqNw7nox1k6HAwoUH4cOAavulodkmH7ZgQkiF4cmdo=','Error Occurred maximum limit exceed',0,'2020-11-23 12:31:22','2020-11-23 13:01:22'),(2,'XRSAsUWMvw+r4CXOG/REfQ==','Error Occurred maximum limit exceed',0,'2020-11-23 12:31:22','2020-11-23 13:01:22'),(3,'sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=','Error Occurred maximum login limit exceed',0,'2020-11-24 12:17:08','2020-11-24 12:47:08'),(4,'hoqEF3480NDFXAHhCMnlRg==','Error Occurred maximum login limit exceed',0,'2020-11-24 12:17:08','2020-11-24 12:47:08'),(5,'YJ/OQCLD120V/qLlCB6egQ==','Error Occurred maximum limit exceed',0,'2020-11-24 16:06:07','2020-11-24 17:06:09'),(6,'Aim8CjSAYhpd4v23hW90GQ==','Error Occurred maximum limit exceed',0,'2020-11-24 16:06:07','2020-11-24 17:06:09'),(7,'aCxZCZnkH/L/7ubgtISQCla42ocT5ZVEVB5d7vPB1rM=','Error Occurred maximum limit exceed',0,'2020-11-24 16:29:32','2020-11-24 17:29:32'),(8,'HQnJma+wGGK4NhE47kyV5g==','Error Occurred maximum limit exceed',0,'2020-11-24 16:29:32','2020-11-24 17:29:32'),(9,'sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=','Error Occurred maximum login limit exceed',0,'2020-11-25 04:22:40','2020-11-25 04:52:42'),(10,'hoqEF3480NDFXAHhCMnlRg==','Error Occurred maximum login limit exceed',0,'2020-11-25 04:22:40','2020-11-25 04:52:42'),(11,'PIFJPzVzVeuA0XtMq66orA==','Error Occurred maximum login limit exceed',0,'2020-11-30 08:04:13','2020-11-30 08:34:14'),(12,'iX5r510101ris4paglm8Wg==','Error Occurred maximum login limit exceed',0,'2020-11-30 08:04:13','2020-11-30 08:34:14'),(13,'aFipSEWX2LTJE3/ObMIU3OTO8xMZpdUeTI7F178TXLQ=','Error Occurred maximum login limit exceed',0,'2020-11-30 12:48:54','2020-11-30 13:18:55'),(14,'OTZepSD6KGxXx6+zlR1fMw==','Error Occurred maximum login limit exceed',0,'2020-11-30 12:48:54','2020-11-30 13:18:55'),(15,'ZfnnsNG6ID8ycgqhGnyAl1a42ocT5ZVEVB5d7vPB1rM=','Error Occurred maximum login limit exceed',0,'2020-11-30 20:22:08','2020-11-30 20:52:09'),(16,'NowMcSWpeg5LUx4XqCkZeA==','Error Occurred maximum login limit exceed',0,'2020-11-30 20:22:08','2020-11-30 20:52:09'),(17,'3LjhccAl/d9WIwj7eBjmbICnqO8O+Xi1cFs/8gqReWQ=','Error Occurred maximum login limit exceed',0,'2020-12-01 13:35:44','2020-12-01 14:05:45'),(18,'MLJYxA2UewUOjaSxriwi/A==','Error Occurred maximum login limit exceed',0,'2020-12-01 13:35:44','2020-12-01 14:05:45');
/*!40000 ALTER TABLE `block_user_audit` ENABLE KEYS */;
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
  `retry_api_call` tinyint(1) DEFAULT NULL,
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
INSERT INTO `cta_button` VALUES (1,1,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-09-02 03:33:22','2020-09-16 06:15:15'),(2,2,'Email',NULL,0,1,'PRIMARY',NULL,'MAILTO:CUSTOMERCARE-FALCON@RAKBANK.AE',NULL,NULL,NULL,NULL,1,'2020-09-02 03:36:02','2020-09-16 05:48:35'),(3,12,'Re Enter',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-09-16 03:43:59','2020-10-30 08:10:51'),(4,13,'Sign UP',NULL,0,1,'PRIMARY',NULL,'falcon://falcon/rakbank_Falcon_onboarding_save-card-screen',NULL,NULL,1,NULL,1,'2020-09-16 04:59:51','2020-10-30 08:14:09'),(5,4,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-09-29 09:02:44','2020-09-29 09:24:10'),(6,14,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-09-29 09:20:51','2020-09-29 09:24:09'),(7,17,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-09-29 10:20:14','2020-09-29 10:21:41'),(8,19,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-11-06 08:26:26','2020-11-06 08:28:55'),(9,20,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-11-06 08:26:26','2020-11-06 08:28:55'),(10,22,'Login Again',NULL,0,1,'PRIMARY',0,'falcon://falcon/rakbank_Falcon_onboarding_log-in-screen',NULL,NULL,NULL,NULL,1,'2020-11-12 09:35:26','2020-11-12 16:05:13'),(11,23,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-11-12 17:04:06','2020-11-12 17:14:48'),(12,24,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-11-19 06:32:50','2020-11-19 08:57:28'),(13,25,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-11-19 08:54:10','2020-11-19 08:57:28'),(14,26,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-11-19 09:04:14','2020-11-19 09:04:14'),(15,27,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-11-19 10:01:18','2020-12-02 07:53:52'),(16,29,'Login Again',NULL,0,1,'PRIMARY',NULL,'falcon://falcon/rakbank_Falcon_onboarding_log-in-screen',NULL,NULL,NULL,NULL,1,'2020-12-02 07:53:52','2020-12-02 07:53:52');
/*!40000 ALTER TABLE `cta_button` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_screen_deeplinks`
--

DROP TABLE IF EXISTS `device_screen_deeplinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_screen_deeplinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `screen_name` varchar(45) NOT NULL,
  `deeplink` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `screen_name_UNIQUE` (`screen_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_screen_deeplinks`
--

LOCK TABLES `device_screen_deeplinks` WRITE;
/*!40000 ALTER TABLE `device_screen_deeplinks` DISABLE KEYS */;
INSERT INTO `device_screen_deeplinks` VALUES (1,'NATIONALITY','falcon://falcon/rakbank_Falcon_onboarding_nationality-selection-screen',1,'2020-09-29 08:17:22','2020-10-22 11:06:28'),(2,'SET_LOCK','',1,'2020-09-29 08:18:47','2020-09-29 12:10:29'),(3,'HOME_SCREEN','',1,'2020-11-06 16:22:20','2020-11-06 16:22:20');
/*!40000 ALTER TABLE `device_screen_deeplinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_handling_details`
--

DROP TABLE IF EXISTS `error_handling_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_handling_details` (
  `id` int(11) NOT NULL,
  `error_type` varchar(45) DEFAULT NULL,
  `toast_snack_duration` bigint(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `overlay_height` int(3) DEFAULT NULL,
  `overlay_image_url` varchar(100) DEFAULT NULL,
  `overlay_fixed` tinyint(4) DEFAULT NULL,
  `extra_info` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_handling_details`
--

LOCK TABLES `error_handling_details` WRITE;
/*!40000 ALTER TABLE `error_handling_details` DISABLE KEYS */;
INSERT INTO `error_handling_details` VALUES (0,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-11-05 08:10:58','2020-11-05 08:10:58'),(1,'BOTTOM_OVERLAY_ERROR',NULL,'Uh-oh! That was unexpected!','Looks like we did something wrong.  If the problem persists, please reach out to customercare-falcon@rakbank.ae',460,'https://i.imgur.com/99rvqPV.png',0,NULL,1,'2020-09-02 03:30:03','2020-12-02 08:18:25'),(2,'BOTTOM_OVERLAY_ERROR',NULL,'User creation failed!','Uh-oh! Something went wrong, while setting up your account. Please reach out to customercare-falcon@rakbank.ae',460,'https://i.imgur.com/99rvqPV.png',0,NULL,1,'2020-09-02 03:34:35','2020-12-02 08:18:25'),(3,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-02 03:37:20','2020-09-02 03:37:20'),(4,'BOTTOM_OVERLAY_ERROR',NULL,'Oops! You have reached OTP limit.','Please try again after some time.',460,'https://i.imgur.com/99rvqPV.png',1,NULL,1,'2020-09-02 03:41:49','2020-12-02 08:18:25'),(5,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-02 03:41:49','2020-09-02 03:41:49'),(6,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-02 03:41:49','2020-09-02 03:41:49'),(7,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-02 03:41:49','2020-09-02 03:41:49'),(8,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-02 03:41:49','2020-09-15 11:45:22'),(11,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-15 11:45:22','2020-09-15 11:45:22'),(12,'INLINE_ERROR_LIST',NULL,'','',NULL,'',NULL,NULL,1,'2020-09-16 03:33:39','2020-09-29 09:37:29'),(13,'BOTTOM_OVERLAY_ERROR',NULL,'Email Not registered','Uh-oh! Something went wrong, while setting up your account. Please reach out to customercare-falcon@rakbank.ae',460,'https://i.imgur.com/99rvqPV.png',0,NULL,1,'2020-09-16 04:58:41','2020-12-02 08:18:24'),(14,'BOTTOM_OVERLAY_ERROR',NULL,'You are blocked for some time.','Please try again later.',460,'https://i.imgur.com/99rvqPV.png',1,NULL,1,'2020-09-29 09:19:56','2020-12-02 08:18:24'),(15,'INLINE_ERROR_LIST',NULL,'',NULL,NULL,NULL,NULL,NULL,1,'2020-09-29 09:32:47','2020-09-29 09:34:02'),(16,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-29 10:15:50','2020-09-29 10:15:57'),(17,'BOTTOM_OVERLAY_ERROR',NULL,'Invalid Biometric ','Please try to login using Email and Password.',460,'https://i.imgur.com/99rvqPV.png',1,NULL,1,'2020-09-29 10:15:53','2020-12-02 08:18:24'),(18,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-30 11:28:21','2020-09-30 11:28:33'),(19,'BOTTOM_OVERLAY_ERROR',NULL,'Invalid Password','Password should not contain more than 2 consecutive numbers',460,'https://i.imgur.com/99rvqPV.png',0,NULL,1,'2020-11-05 08:29:50','2020-12-02 08:18:24'),(20,'BOTTOM_OVERLAY_ERROR',NULL,'Invalid Password','Password should not contain more than 2 repetitive numbers',460,'https://i.imgur.com/99rvqPV.png',0,NULL,1,'2020-11-05 08:29:50','2020-12-02 08:18:24'),(21,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-11-11 04:13:57','2020-11-11 04:13:57'),(22,'BOTTOM_OVERLAY_ERROR',NULL,'You entered 3 consecutive wrong MPIN','You are logged out from the application as you entered 3 consecutive wrong MPIN',460,'https://i.imgur.com/99rvqPV.png',1,NULL,1,'2020-11-12 08:36:32','2020-12-02 08:18:24'),(23,'BOTTOM_OVERLAY_ERROR',NULL,'You have been blocked.','Your Email id and mobile number are blocked as we have noticed a suspicious activity. Please try again after one hour.',460,'https://i.imgur.com/99rvqPV.png',1,NULL,1,'2020-11-12 16:49:15','2020-12-02 08:18:23'),(24,'BOTTOM_OVERLAY_ERROR',NULL,'Oops!','There was a problem resetting your password. Please try again.',460,'https://i.imgur.com/99rvqPV.png',1,NULL,1,'2020-11-19 05:24:19','2020-12-02 08:18:23'),(25,'BOTTOM_OVERLAY_ERROR',NULL,'Sorry!','There was an error proceeding with the given details. Please check or try again.',460,'https://i.imgur.com/99rvqPV.png',1,NULL,1,'2020-11-19 08:53:26','2020-12-02 08:18:23'),(26,'BOTTOM_OVERLAY_ERROR',NULL,'Oops!','There was a problem saving your MPIN. Please try again.',460,'https://i.imgur.com/99rvqPV.png',1,NULL,1,'2020-11-19 09:56:47','2020-12-02 08:18:23'),(27,'BOTTOM_OVERLAY_ERROR',NULL,'Oops!','There was a problem saving your preferences. Please try again.',460,'https://i.imgur.com/99rvqPV.png',1,NULL,1,'2020-11-19 10:01:51','2020-12-02 08:18:23'),(29,'BOTTOM_OVERLAY_ERROR',NULL,'Login Again','Lock type mismatch.',460,'https://i.imgur.com/99rvqPV.png',1,NULL,1,'2020-12-02 07:52:43','2020-12-02 07:57:34');
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
INSERT INTO `inline_error` VALUES (1,3,'User already registered with this number',1,1,1,'2020-09-02 03:40:16','2020-09-08 14:27:08'),(2,4,'Oops! You have reached OTP limit, please try again after some time.',1,0,1,'2020-09-02 03:45:24','2020-09-08 14:27:08'),(3,5,'Entered OTP is Incorrect OTP, Kindly check or try again',1,0,1,'2020-09-02 03:45:24','2020-11-12 03:57:15'),(4,6,'Uh-oh! The OTP you entered has expired, please request again.',1,0,1,'2020-09-02 03:45:24','2020-09-08 14:27:08'),(5,7,'Are you sure? This email is not registed with us!',1,0,1,'2020-09-02 03:45:24','2020-09-08 14:27:08'),(6,8,'Incorrect password. Please try again.\n\n',1,1,1,'2020-09-02 03:45:24','2020-11-12 12:57:53'),(7,11,'Your Password should have atleast 1 Capital letter, 1 Small Letter',1,2,1,'2020-09-15 11:52:06','2020-09-15 11:57:16'),(8,11,'Enter Correct Email Id',1,1,1,'2020-09-15 11:52:06','2020-09-15 11:57:16'),(9,11,'Entered Email Id is Blocked',1,1,1,'2020-09-15 11:52:06','2020-09-15 11:57:16'),(10,11,'Entered Email Id is already registered',1,1,1,'2020-09-15 11:52:06','2020-09-15 11:57:16'),(11,11,'Invalid Mobile Number. Please enter correct number',1,0,1,'2020-09-15 11:55:49','2020-09-15 11:55:49'),(12,11,'Entered Phone Number is Blocked',1,0,1,'2020-09-15 11:55:49','2020-09-15 11:55:49'),(13,11,'Entered Phone Number is already registered',1,0,1,'2020-09-15 11:55:50','2020-09-15 11:55:50'),(14,15,'Old password entered is incorrect',1,0,1,'2020-09-29 09:34:30','2020-11-02 11:46:59'),(15,12,'Invalid Password, New Password is same as old password',1,1,1,'2020-09-29 09:37:59','2020-09-29 09:37:59'),(16,16,'Invalid MPIN. Enter the correct MPIN',1,0,1,'2020-09-29 10:16:03','2020-10-21 10:17:19'),(17,18,'Invalid Password, New Password is same as old password',1,0,1,'2020-09-30 11:28:43','2020-09-30 11:28:57'),(18,11,'Password should not contain more than 2 consecutive numbers',1,2,1,'2020-11-05 08:18:19','2020-11-05 08:18:55'),(19,11,'Password should not contain more than 2 repetitive numbers',1,2,1,'2020-11-05 08:18:19','2020-11-05 08:18:56'),(20,21,'Email Id is not registered',1,0,1,'2020-11-11 04:14:51','2020-11-11 04:25:05');
/*!40000 ALTER TABLE `inline_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_id` varchar(200) NOT NULL DEFAULT '',
  `phone_number` varchar(45) DEFAULT NULL,
  `otp` varchar(45) NOT NULL,
  `expiry_date_time` datetime NOT NULL,
  `request_attemtps` int(11) NOT NULL DEFAULT '1',
  `validate_attempts` int(11) NOT NULL DEFAULT '0',
  `last_validate_time` datetime DEFAULT NULL,
  `sessionToken` varchar(45) NOT NULL,
  `nonce` bigint(17) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` VALUES (1,'Sc/Bln7s31WZiUcUrcXCbCp6UAsPz+vDdVR7kcH+xFQ=','tPDQkgr4jPqNKXNtnKNeBA==','Gr9jPfK9fsA10yM2VqeiaA==','2020-12-03 12:01:12',1,2,'2020-12-03 11:51:19','2f711739-8637-4fd8-a57e-328d73c2b02b',648677337944065,0,'2020-12-03 11:51:12','2020-12-03 11:51:19'),(2,'N6+kbidwDC3Q8b2dLU3CxVa42ocT5ZVEVB5d7vPB1rM=','XSKpMJ2fyRkCuVxBIQT5kw==','Gr9jPfK9fsA10yM2VqeiaA==','2020-12-03 12:48:43',1,1,'2020-12-03 12:38:46','bf75e7cf-a6db-40b6-8303-3cb587cd8ff0',6144734408570,0,'2020-12-03 12:38:42','2020-12-03 12:38:46'),(3,'cfUaIV2Jukov6E4FRa6GYrmkuldfURc0HEu5F8Z4Emc=','bMlgBSzzarQuwPhxjtDP5A==','Gr9jPfK9fsA10yM2VqeiaA==','2020-12-03 14:23:20',1,2,'2020-12-03 14:13:27','02c71020-a49c-46fd-a956-52bd4dbb7023',5504739569165318,0,'2020-12-03 14:13:20','2020-12-03 14:13:27'),(4,'sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=','9N5S6MbHjqGMIrf7JjAw1g==','Gr9jPfK9fsA10yM2VqeiaA==','2020-12-04 02:50:41',1,1,'2020-12-04 02:40:44','731f2c24-a8ff-474c-87ac-051262e6ca8b',522782653051462,0,'2020-12-04 02:40:41','2020-12-04 02:40:44'),(5,'sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=',NULL,'Gr9jPfK9fsA10yM2VqeiaA==','2020-12-04 05:14:16',1,1,'2020-12-04 05:04:17','254ed848-f5e5-4dc7-b508-a5623759a484',7644230010686982,1,'2020-12-04 05:04:16','2020-12-04 05:04:17'),(6,'1+Kw3KR7x07LsHWfB6yoyFa42ocT5ZVEVB5d7vPB1rM=','2CT2a9uDxmTHkNIkuzz95Q==','Gr9jPfK9fsA10yM2VqeiaA==','2020-12-04 05:17:44',1,1,'2020-12-04 05:07:47','d6b05f5c-a921-4fd5-ae97-ef220a18f789',7563772847821,0,'2020-12-04 05:07:43','2020-12-04 05:07:46'),(7,'T1wzFisAb8gDnsDvfir8OuTO8xMZpdUeTI7F178TXLQ=','7bsGHP0prKQKI2R5qscP8Q==','Gr9jPfK9fsA10yM2VqeiaA==','2020-12-04 06:54:30',1,1,'2020-12-04 06:44:33','90e1409a-c97f-458c-afcf-53213dbc5ccc',9816567127743670,0,'2020-12-04 06:44:30','2020-12-04 06:44:33');
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preference`
--

DROP TABLE IF EXISTS `preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preference` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `image_url` varchar(150) NOT NULL,
  `category` varchar(45) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preference`
--

LOCK TABLES `preference` WRITE;
/*!40000 ALTER TABLE `preference` DISABLE KEYS */;
INSERT INTO `preference` VALUES (1,'Tours','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/tours.jpg','Tours','NA',1,'2020-10-01 11:07:36','2020-10-01 11:12:17'),(2,'Events','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/events.png','Events','NA',1,'2020-10-01 11:07:36','2020-10-01 11:07:36'),(3,'Attractions','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/attractions.jpg','Attractions','NA',1,'2020-10-01 11:07:36','2020-10-01 11:07:36'),(4,'Arts and Culture','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/arts_culture.jpg','Arts and Culture','NA',1,'2020-10-01 11:07:36','2020-10-01 11:07:36'),(5,'Dining and Delivery','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/dining_delivery.jpg','Dining and Delivery','NA',0,'2020-10-01 11:07:37','2020-11-13 17:18:10'),(6,'Activities','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/activity.jpg','Activities','NA',1,'2020-10-01 11:07:37','2020-10-01 11:07:37'),(7,'Getaways','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/Gateways.jpg','Getaways','NA',1,'2020-10-01 11:07:37','2020-10-01 11:07:37'),(8,'Entertainment','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/entertainment.png','Entertainment','NA',1,'2020-10-01 11:07:37','2020-10-01 12:01:05'),(9,'Digital Experiences','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/digital_experiences.jpg','Digital Experiences','NA',0,'2020-10-01 11:07:37','2020-11-13 17:18:31'),(10,'Shopping','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/shopping.jpg','Shopping','NA',1,'2020-10-01 11:07:37','2020-10-01 11:07:37'),(11,'Health and Wellness','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/health_welness.jpg','Health and Wellness','NA',0,'2020-10-01 11:07:37','2020-11-13 17:17:17'),(12,'Salons and Spas','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/saloons_saps.jpg','Salons and Spas','NA',1,'2020-10-01 11:07:37','2020-10-01 11:07:37'),(13,'Sports','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/sports.jpg','Sports','NA',1,'2020-10-01 11:07:37','2020-10-01 11:07:37'),(14,'Culinary Experiences','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/culinary_experiences.jpg','Culinary Experiences','NA',1,'2020-10-01 11:07:37','2020-10-01 11:07:37'),(15,'Health and Wellness','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/health_welness.jpg','Health and Wellness','NA',1,'2020-11-13 17:16:52','2020-11-13 17:17:12'),(16,'Dining and Delivery','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/dining_delivery.jpg','Dining and Delivery','NA',1,'2020-11-13 17:17:54','2020-11-13 17:18:04'),(17,'Digital Experiences','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/preferences/digital_experiences.jpg','Digital Experiences','NA',1,'2020-11-13 17:18:14','2020-11-13 17:18:26');
/*!40000 ALTER TABLE `preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_access_code`
--

DROP TABLE IF EXISTS `user_access_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_access_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `access_code` varchar(45) NOT NULL,
  `device_id` varchar(45) NOT NULL,
  `expiry_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_access_code`
--

LOCK TABLES `user_access_code` WRITE;
/*!40000 ALTER TABLE `user_access_code` DISABLE KEYS */;
INSERT INTO `user_access_code` VALUES (1,'9EM1QMTEwbr2m0WRXUZ4','FAL-c19cf390-e9d0-43cd-b877-d4357a826148','4d21657718b6886','2020-12-03 12:51:19',0,'2020-12-03 11:51:19','2020-12-03 11:51:23'),(2,'9EM1QMTEwbr2m0WRXUZ4','FAL-9be8b410-b3fc-4995-808a-fd1573420a7e','4d21657718b6886','2020-12-03 12:51:23',0,'2020-12-03 11:51:23','2020-12-03 11:51:28'),(3,'9EM1QMTEwbr2m0WRXUZ4','FAL-446d6c1e-9a0a-40a9-9682-fd7fcfae4cd4','4d21657718b6886','2020-12-03 12:51:28',0,'2020-12-03 11:51:28','2020-12-03 11:54:26'),(4,'9EM1QMTEwbr2m0WRXUZ4','FAL-bf5342eb-0d3c-4c03-81eb-84045cf99165','4d21657718b6886','2020-12-03 12:54:27',0,'2020-12-03 11:54:26','2020-12-03 11:54:27'),(5,'9EM1QMTEwbr2m0WRXUZ4','FAL-7716abe1-c929-4968-b903-1bdaf83a5a9b','4d21657718b6886','2020-12-03 12:54:27',0,'2020-12-03 11:54:27','2020-12-03 11:55:55'),(6,'9EM1QMTEwbr2m0WRXUZ4','FAL-d059e2c8-3a0b-4ee3-b17f-95339379df31','4d21657718b6886','2020-12-03 12:55:55',0,'2020-12-03 11:55:55','2020-12-03 11:58:43'),(7,'9EM1QMTEwbr2m0WRXUZ4','FAL-09d0124c-7e81-4b95-976f-1ae626350a4c','4d21657718b6886','2020-12-03 12:58:43',0,'2020-12-03 11:58:43','2020-12-03 11:59:48'),(8,'9EM1QMTEwbr2m0WRXUZ4','FAL-89cb05b2-34b5-4f5d-8c76-938a78372c73','4d21657718b6886','2020-12-03 12:59:49',0,'2020-12-03 11:59:48','2020-12-03 17:36:05'),(9,'FyLHCzs2zMVUXI6wujdE','FAL-a4e624f1-25d7-45d7-ab79-3eada062be70','492c87dbe2b46777','2020-12-03 13:38:46',0,'2020-12-03 12:38:46','2020-12-03 12:38:48'),(10,'FyLHCzs2zMVUXI6wujdE','FAL-db3c4574-3b7f-433a-8929-e5f97e2049b7','492c87dbe2b46777','2020-12-03 13:38:49',0,'2020-12-03 12:38:48','2020-12-03 12:54:00'),(11,'FyLHCzs2zMVUXI6wujdE','FAL-c4de45b9-a044-405b-9673-7eb95e7b76c8','492c87dbe2b46777','2020-12-03 13:54:00',0,'2020-12-03 12:54:00','2020-12-03 14:10:02'),(12,'FyLHCzs2zMVUXI6wujdE','FAL-cedc6197-b002-4127-9907-9d4aa2985404','492c87dbe2b46777','2020-12-03 15:10:02',0,'2020-12-03 14:10:02','2020-12-04 04:25:36'),(13,'7TE1pLAnMSdFOCRUFwQY','FAL-e3421fec-fad6-49d9-a1c1-a60386758f4a','2df4d211e8f5f210','2020-12-03 15:13:27',0,'2020-12-03 14:13:27','2020-12-03 14:14:06'),(14,'7TE1pLAnMSdFOCRUFwQY','FAL-decc69f8-b90e-4f7c-922f-fda98a74e823','2df4d211e8f5f210','2020-12-03 15:14:07',0,'2020-12-03 14:14:06','2020-12-04 06:23:02'),(15,'9EM1QMTEwbr2m0WRXUZ4','FAL-d09a54d7-ca43-46f8-9f1e-a5845b117a3e','4d21657718b6886','2020-12-03 18:36:06',0,'2020-12-03 17:36:05','2020-12-03 17:46:58'),(16,'9EM1QMTEwbr2m0WRXUZ4','FAL-1c397517-2edf-4ac8-95dc-e606266898f8','4d21657718b6886','2020-12-03 18:46:58',0,'2020-12-03 17:46:58','2020-12-03 17:49:11'),(17,'9EM1QMTEwbr2m0WRXUZ4','FAL-453dfbf5-5684-4564-a680-c66884183b2a','4d21657718b6886','2020-12-03 18:49:12',0,'2020-12-03 17:49:11','2020-12-03 17:53:24'),(18,'9EM1QMTEwbr2m0WRXUZ4','FAL-104fe99b-4d8d-45db-8d72-3eca05c23048','4d21657718b6886','2020-12-03 18:53:25',0,'2020-12-03 17:53:24','2020-12-03 18:00:38'),(19,'9EM1QMTEwbr2m0WRXUZ4','FAL-43f8803e-b3ec-4257-833a-91f254fa34cc','4d21657718b6886','2020-12-03 19:00:39',0,'2020-12-03 18:00:38','2020-12-04 04:51:28'),(20,'wFMrXI4pTgSWMAWqXab5','FAL-c18b678a-a411-4ca5-afef-818580494287','d6c2742f79bafbc7','2020-12-04 03:40:44',0,'2020-12-04 02:40:44','2020-12-04 02:40:46'),(21,'wFMrXI4pTgSWMAWqXab5','FAL-28e83758-0c7a-4773-ba10-eb866e3c351f','d6c2742f79bafbc7','2020-12-04 03:40:46',0,'2020-12-04 02:40:46','2020-12-04 02:51:03'),(22,'wFMrXI4pTgSWMAWqXab5','FAL-8446c21a-fc66-487d-9616-4159b087299d','d6c2742f79bafbc7','2020-12-04 03:51:04',0,'2020-12-04 02:51:03','2020-12-04 03:36:46'),(23,'wFMrXI4pTgSWMAWqXab5','FAL-6a32afe2-0133-42e6-b3d4-b442a776cb72','d6c2742f79bafbc7','2020-12-04 04:36:47',0,'2020-12-04 03:36:46','2020-12-04 03:44:24'),(24,'wFMrXI4pTgSWMAWqXab5','FAL-37ab533d-f91e-4451-b474-eb8304b796cd','AB51CEA7-9D69-4246-B221-B3A5FFF8A57B','2020-12-04 04:44:25',0,'2020-12-04 03:44:24','2020-12-04 03:47:02'),(25,'wFMrXI4pTgSWMAWqXab5','FAL-ce2a4f75-f0c1-4144-97c3-5cdfc463d194','d6c2742f79bafbc7','2020-12-04 04:47:03',0,'2020-12-04 03:47:02','2020-12-04 03:51:03'),(26,'wFMrXI4pTgSWMAWqXab5','FAL-c8abe9f8-c59c-4182-84df-2fde77b05df6','6379FC81-E8C8-4962-A9F1-BD91D35E0556','2020-12-04 04:51:04',0,'2020-12-04 03:51:03','2020-12-04 03:52:40'),(27,'wFMrXI4pTgSWMAWqXab5','FAL-b24a3637-5cff-4676-a6c4-b2e72314b3cf','6379FC81-E8C8-4962-A9F1-BD91D35E0556','2020-12-04 04:52:40',0,'2020-12-04 03:52:40','2020-12-04 03:53:15'),(28,'wFMrXI4pTgSWMAWqXab5','FAL-1e0679ff-46fc-404c-998e-501c127d24f5','6379FC81-E8C8-4962-A9F1-BD91D35E0556','2020-12-04 04:53:15',0,'2020-12-04 03:53:15','2020-12-04 03:56:00'),(29,'wFMrXI4pTgSWMAWqXab5','FAL-2881ade1-64ca-40b8-9142-531c6fa338bc','6379FC81-E8C8-4962-A9F1-BD91D35E0556','2020-12-04 04:56:00',0,'2020-12-04 03:56:00','2020-12-04 03:59:26'),(30,'wFMrXI4pTgSWMAWqXab5','FAL-c81a4f18-35de-4119-83ea-e7699e210c18','6379FC81-E8C8-4962-A9F1-BD91D35E0556','2020-12-04 04:59:27',0,'2020-12-04 03:59:26','2020-12-04 04:16:45'),(31,'wFMrXI4pTgSWMAWqXab5','FAL-66d5b24e-77cf-4df9-9ec8-a2db8f18bc0f','7683F2AA-EEE1-4AC8-9833-745F5C84C587','2020-12-04 05:16:45',0,'2020-12-04 04:16:45','2020-12-04 04:17:11'),(32,'wFMrXI4pTgSWMAWqXab5','FAL-c3193f15-85ec-4051-9552-a0670c9df30d','7683F2AA-EEE1-4AC8-9833-745F5C84C587','2020-12-04 05:17:11',0,'2020-12-04 04:17:11','2020-12-04 04:44:28'),(33,'FyLHCzs2zMVUXI6wujdE','FAL-39b3b910-d3e4-4a28-81be-49dde06d73dd','492c87dbe2b46777','2020-12-04 05:25:37',0,'2020-12-04 04:25:36','2020-12-04 05:29:02'),(34,'wFMrXI4pTgSWMAWqXab5','FAL-ab25fdb9-2e5d-4bdd-82b7-a75ac4bda584','BEE425CC-7578-49C1-BEBE-EB50979888FC','2020-12-04 05:44:28',0,'2020-12-04 04:44:28','2020-12-04 04:44:44'),(35,'wFMrXI4pTgSWMAWqXab5','FAL-bfec59c6-76ea-4996-9887-3fa09caef691','BEE425CC-7578-49C1-BEBE-EB50979888FC','2020-12-04 05:44:44',0,'2020-12-04 04:44:44','2020-12-04 04:55:42'),(36,'9EM1QMTEwbr2m0WRXUZ4','FAL-3eb4a912-730d-4f24-91c6-91b8ed3651cc','4d21657718b6886','2020-12-04 05:51:29',0,'2020-12-04 04:51:28','2020-12-04 04:59:35'),(37,'wFMrXI4pTgSWMAWqXab5','FAL-8cd842b8-f559-4478-ae70-d0141ca4f099','d6c2742f79bafbc7','2020-12-04 05:55:42',0,'2020-12-04 04:55:42','2020-12-04 04:56:51'),(38,'wFMrXI4pTgSWMAWqXab5','FAL-58dbbfdf-09bc-4634-abd2-df0c2793ecdf','d6c2742f79bafbc7','2020-12-04 05:56:51',0,'2020-12-04 04:56:51','2020-12-04 05:09:55'),(39,'9EM1QMTEwbr2m0WRXUZ4','FAL-027fb734-d6fa-471b-9e73-ab5f333fab00','6d40118819c60159','2020-12-04 05:59:36',0,'2020-12-04 04:59:35','2020-12-04 05:05:53'),(40,'9EM1QMTEwbr2m0WRXUZ4','FAL-cb5e5c26-44bd-45a7-918e-03730b32e231','6d40118819c60159','2020-12-04 06:05:54',0,'2020-12-04 05:05:53','2020-12-04 05:07:56'),(41,'ujQZqb6d6kLfdWjPAwoA','FAL-d5029514-5e0a-4637-b731-e5be57a602e1','BEE425CC-7578-49C1-BEBE-EB50979888FC','2020-12-04 06:07:47',0,'2020-12-04 05:07:46','2020-12-04 05:07:54'),(42,'ujQZqb6d6kLfdWjPAwoA','FAL-fec1ae01-548f-4d01-9976-480627d12dba','BEE425CC-7578-49C1-BEBE-EB50979888FC','2020-12-04 06:07:54',0,'2020-12-04 05:07:54','2020-12-04 05:35:15'),(43,'9EM1QMTEwbr2m0WRXUZ4','FAL-34e4b9f4-9c9d-42ec-ad68-d1c6493d57ff','6d40118819c60159','2020-12-04 06:07:57',0,'2020-12-04 05:07:56','2020-12-04 06:06:21'),(44,'wFMrXI4pTgSWMAWqXab5','FAL-8a662ec2-4d9f-462b-b26d-f03deaee8bf9','d6c2742f79bafbc7','2020-12-04 06:09:56',0,'2020-12-04 05:09:55','2020-12-04 05:20:35'),(45,'wFMrXI4pTgSWMAWqXab5','FAL-30fca463-1f81-4995-921a-5f158f9d0d2f','d6c2742f79bafbc7','2020-12-04 06:20:35',0,'2020-12-04 05:20:35','2020-12-04 05:25:46'),(46,'wFMrXI4pTgSWMAWqXab5','FAL-22dc1481-071d-4b51-adf2-bf7cf25ca695','d6c2742f79bafbc7','2020-12-04 06:25:46',0,'2020-12-04 05:25:46','2020-12-04 05:29:39'),(47,'FyLHCzs2zMVUXI6wujdE','FAL-58990f4d-ad22-4ee4-be9a-0783729612db','492c87dbe2b46777','2020-12-04 06:29:02',1,'2020-12-04 05:29:02','2020-12-04 05:29:02'),(48,'wFMrXI4pTgSWMAWqXab5','FAL-c520c32b-1e2b-470f-bd9a-b3b3a26a63a3','d6c2742f79bafbc7','2020-12-04 06:29:40',0,'2020-12-04 05:29:39','2020-12-04 05:46:18'),(49,'ujQZqb6d6kLfdWjPAwoA','FAL-c7641560-0acb-4630-8120-35c5d99c8fc4','BEE425CC-7578-49C1-BEBE-EB50979888FC','2020-12-04 06:35:16',1,'2020-12-04 05:35:15','2020-12-04 05:35:15'),(50,'wFMrXI4pTgSWMAWqXab5','FAL-9ed238c0-6e4a-42ae-932e-4ee18d40b927','BEE425CC-7578-49C1-BEBE-EB50979888FC','2020-12-04 06:46:19',0,'2020-12-04 05:46:18','2020-12-04 05:46:37'),(51,'wFMrXI4pTgSWMAWqXab5','FAL-99d5eb3e-0ee1-428c-ae41-1c1d07026560','BEE425CC-7578-49C1-BEBE-EB50979888FC','2020-12-04 06:46:37',0,'2020-12-04 05:46:37','2020-12-04 05:52:45'),(52,'wFMrXI4pTgSWMAWqXab5','FAL-aec3af18-8521-4605-a6b4-23101032aa6c','BEE425CC-7578-49C1-BEBE-EB50979888FC','2020-12-04 06:52:45',0,'2020-12-04 05:52:45','2020-12-04 05:54:11'),(53,'wFMrXI4pTgSWMAWqXab5','FAL-b7ae7369-237a-42ca-b2bf-051b87021c58','BEE425CC-7578-49C1-BEBE-EB50979888FC','2020-12-04 06:54:12',0,'2020-12-04 05:54:11','2020-12-04 05:58:36'),(54,'wFMrXI4pTgSWMAWqXab5','FAL-853aff1d-e087-4e09-bbec-76413b7050a2','BEE425CC-7578-49C1-BEBE-EB50979888FC','2020-12-04 06:58:36',0,'2020-12-04 05:58:36','2020-12-04 06:05:13'),(55,'wFMrXI4pTgSWMAWqXab5','FAL-49d1a588-847a-41d6-ba9f-b4ddadc1a54c','d6c2742f79bafbc7','2020-12-04 07:05:14',0,'2020-12-04 06:05:13','2020-12-04 06:07:08'),(56,'9EM1QMTEwbr2m0WRXUZ4','FAL-8689398d-9195-4ded-a275-70a3eeba0d4b','4d21657718b6886','2020-12-04 07:06:22',0,'2020-12-04 06:06:21','2020-12-04 06:25:54'),(57,'wFMrXI4pTgSWMAWqXab5','FAL-f2e1a10e-2641-4e3c-839b-9fe24c175e4d','d6c2742f79bafbc7','2020-12-04 07:07:08',0,'2020-12-04 06:07:08','2020-12-04 06:07:59'),(58,'wFMrXI4pTgSWMAWqXab5','FAL-acc6515b-a0b4-4b41-9daa-59c8db613e64','d6c2742f79bafbc7','2020-12-04 07:07:59',0,'2020-12-04 06:07:59','2020-12-04 06:08:34'),(59,'wFMrXI4pTgSWMAWqXab5','FAL-e10b7e5b-8325-4439-accb-bb208e09630e','d6c2742f79bafbc7','2020-12-04 07:08:34',0,'2020-12-04 06:08:34','2020-12-04 06:09:40'),(60,'wFMrXI4pTgSWMAWqXab5','FAL-46d4ab90-a091-41cf-ac51-757be029d365','d6c2742f79bafbc7','2020-12-04 07:09:40',0,'2020-12-04 06:09:40','2020-12-04 06:23:07'),(61,'7TE1pLAnMSdFOCRUFwQY','FAL-513fa162-aef9-4ebf-bfc5-8beaa227a5d6','2df4d211e8f5f210','2020-12-04 07:23:02',1,'2020-12-04 06:23:02','2020-12-04 06:23:02'),(62,'wFMrXI4pTgSWMAWqXab5','FAL-e66e88e1-b903-4da1-b05d-96a2f16ed833','d6c2742f79bafbc7','2020-12-04 07:23:08',0,'2020-12-04 06:23:07','2020-12-04 06:23:29'),(63,'wFMrXI4pTgSWMAWqXab5','FAL-c3c29819-763c-43e4-84f0-4f45042ed50e','d6c2742f79bafbc7','2020-12-04 07:23:29',0,'2020-12-04 06:23:29','2020-12-04 06:24:26'),(64,'wFMrXI4pTgSWMAWqXab5','FAL-6d71b94e-5d5f-4589-aea6-cdc877cf19b5','d6c2742f79bafbc7','2020-12-04 07:24:26',0,'2020-12-04 06:24:26','2020-12-04 06:25:54'),(65,'9EM1QMTEwbr2m0WRXUZ4','FAL-78218006-13dd-4d47-a632-125d972bbbc1','9E5B0680-886A-4210-82F0-DB6D22C0744F','2020-12-04 07:25:54',0,'2020-12-04 06:25:54','2020-12-04 06:46:06'),(66,'wFMrXI4pTgSWMAWqXab5','FAL-320c14bd-433b-4cc2-a6f6-6ce8677f39ad','d6c2742f79bafbc7','2020-12-04 07:25:54',1,'2020-12-04 06:25:54','2020-12-04 06:25:54'),(67,'jE3z21FjZeaLveMiZDzA','FAL-c3901f18-b94f-4bd1-a06c-f2af749dc5cb','eebde9865fdc7f89','2020-12-04 07:44:33',0,'2020-12-04 06:44:33','2020-12-04 06:44:34'),(68,'jE3z21FjZeaLveMiZDzA','FAL-7836f75c-0655-4eba-84cf-39ea8fc67472','eebde9865fdc7f89','2020-12-04 07:44:34',1,'2020-12-04 06:44:34','2020-12-04 06:44:34'),(69,'9EM1QMTEwbr2m0WRXUZ4','FAL-fb4b32e6-e68f-4205-a569-89950c424a81','4d21657718b6886','2020-12-04 07:46:07',1,'2020-12-04 06:46:06','2020-12-04 06:46:06');
/*!40000 ALTER TABLE `user_access_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `email_id` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  `hashed_user_auth_detail` mediumtext NOT NULL,
  `login_attempts` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES (1,'9EM1QMTEwbr2m0WRXUZ4','Sc/Bln7s31WZiUcUrcXCbCp6UAsPz+vDdVR7kcH+xFQ=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','GADadjow2Dm8TmnVV5xCiOtbzACyBeihM+cPP1TrmZMVhuCWMXsgyEWK4HYoWOSaJEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIW1FPyc29rp+LLBJlw6D+eUdNF41bqQFKvaH+YztBT7yw==',0,1,'2020-12-03 11:51:19','2020-12-04 04:59:35'),(2,'FyLHCzs2zMVUXI6wujdE','N6+kbidwDC3Q8b2dLU3CxVa42ocT5ZVEVB5d7vPB1rM=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','41PjYJUFrkqc6CqkcRRDFNETIgBpDb8IC3wClPkbqkK7ev/2Acxpn0WcId/1vjZ7JEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIWtDY85T5O05dMHD01DLzqpvla+8xZHRac5s5Bho/p7fA==',0,1,'2020-12-03 12:38:46','2020-12-03 12:38:46'),(3,'7TE1pLAnMSdFOCRUFwQY','cfUaIV2Jukov6E4FRa6GYrmkuldfURc0HEu5F8Z4Emc=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','0KwiALwiXcrf5EXFRH15j2EWyWJ9tEXTFaKN/dojCb/gZa9/4H0DeStjPD40IkadJEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIUrWaHvvjZwOPBehJQ8Wf/CHfjMdbIw5SDJzXfld2JrMQ==',0,1,'2020-12-03 14:13:27','2020-12-03 14:13:27'),(4,'wFMrXI4pTgSWMAWqXab5','sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','iPNkRUgYpM4AnqHgSh9ptAm2Ho772m2iJOyTVJyTjRf7sG47l5WaeI5vko8TgXXhJEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIWvWnzy2Wdehie6Lg1XxyEaM0LCRj3aVaC7fLfG1VeRQw==',0,1,'2020-12-04 02:40:44','2020-12-04 03:56:00'),(5,'ujQZqb6d6kLfdWjPAwoA','1+Kw3KR7x07LsHWfB6yoyFa42ocT5ZVEVB5d7vPB1rM=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','t4J4yACoPsVU8q4yzFWcMyPGgHWxfrS9dDePgXsMdkO7ev/2Acxpn0WcId/1vjZ7JEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIUIXCLr3kplW09TYGo16QBQOHiwpdp/NpGluPtLqI74hw==',0,1,'2020-12-04 05:07:46','2020-12-04 05:07:46'),(6,'jE3z21FjZeaLveMiZDzA','T1wzFisAb8gDnsDvfir8OuTO8xMZpdUeTI7F178TXLQ=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','V29qrne4rJgnQ1IwbTBdIYcCGhoQXoVfT7DrRP9uCm1jWuHQtcU+AHbRDqEUimKoJEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIXqcqLbLjLM6agDhFGR1zvGB5W1RU2X42D4NcAUE0GZeg==',0,1,'2020-12-04 06:44:33','2020-12-04 06:44:33');
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `phone_code` varchar(45) NOT NULL,
  `profile_pic_url` varchar(200) DEFAULT NULL,
  `phone_number` varchar(45) NOT NULL,
  `email_id` varchar(200) NOT NULL DEFAULT '',
  `gender` varchar(45) NOT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `onboarding_status` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_user_uid` (`user_uid`),
  UNIQUE KEY `email_id_UNIQUE` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` VALUES (1,'9EM1QMTEwbr2m0WRXUZ4','sEmwup8tKoDnMxQXluE5DA==',NULL,'g9ckZwGPEqE7ojqvZ1RV8A==','Sc/Bln7s31WZiUcUrcXCbCp6UAsPz+vDdVR7kcH+xFQ=','1','sEmwup8tKoDnMxQXluE5DA==','oG2nr3lH9Bo/Q+GwjzZT0g==','2',1,'2020-12-03 11:51:19','2020-12-04 04:59:40'),(2,'FyLHCzs2zMVUXI6wujdE','sEmwup8tKoDnMxQXluE5DA==',NULL,'iX5r510101ris4paglm8Wg==','N6+kbidwDC3Q8b2dLU3CxVa42ocT5ZVEVB5d7vPB1rM=','1','sEmwup8tKoDnMxQXluE5DA==','39y/tsFLfjk2wkOC9Yr0sQ==','3',1,'2020-12-03 12:38:46','2020-12-03 12:39:19'),(3,'7TE1pLAnMSdFOCRUFwQY','sEmwup8tKoDnMxQXluE5DA==',NULL,'leyHikaLrhBBuzgaYZ0ZBg==','cfUaIV2Jukov6E4FRa6GYrmkuldfURc0HEu5F8Z4Emc=','2','sEmwup8tKoDnMxQXluE5DA==','39y/tsFLfjk2wkOC9Yr0sQ==','2',1,'2020-12-03 14:13:27','2020-12-04 06:23:07'),(4,'wFMrXI4pTgSWMAWqXab5','sEmwup8tKoDnMxQXluE5DA==','https://falcon-images.s3.amazonaws.com/users/wFMrXI4pTgSWMAWqXab5/wFMrXI4pTgSWMAWqXab5_profile_pic.jpg','hoqEF3480NDFXAHhCMnlRg==','sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=','1','sEmwup8tKoDnMxQXluE5DA==','kknGu9+obfuGH90cjEIIhg==','2',1,'2020-12-04 02:40:44','2020-12-04 06:23:29'),(5,'ujQZqb6d6kLfdWjPAwoA','sEmwup8tKoDnMxQXluE5DA==',NULL,'jx+vGGah6Aqdd0RzBL/lXw==','1+Kw3KR7x07LsHWfB6yoyFa42ocT5ZVEVB5d7vPB1rM=','1','sEmwup8tKoDnMxQXluE5DA==','10qc70zRGvFxpt7SwRNiwA==','3',1,'2020-12-04 05:07:46','2020-12-04 05:08:07'),(6,'jE3z21FjZeaLveMiZDzA','sEmwup8tKoDnMxQXluE5DA==',NULL,'+1F4qY8M+HTHI0Sa30jB8Q==','T1wzFisAb8gDnsDvfir8OuTO8xMZpdUeTI7F178TXLQ=','1','sEmwup8tKoDnMxQXluE5DA==','h/voTbaOJay+lNmceCnE6Q==','3',1,'2020-12-04 06:44:33','2020-12-04 06:44:45');
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_device_audit`
--

DROP TABLE IF EXISTS `user_device_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_device_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(40) NOT NULL,
  `device_id` varchar(45) NOT NULL,
  `mobile_version` varchar(450) NOT NULL,
  `device_identifier` varchar(36) DEFAULT NULL,
  `app_version` varchar(45) DEFAULT NULL,
  `app_version_code` varchar(45) DEFAULT NULL,
  `os_version` varchar(45) DEFAULT NULL,
  `device_type` varchar(45) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `fcm_token` varchar(100) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_device_audit`
--

LOCK TABLES `user_device_audit` WRITE;
/*!40000 ALTER TABLE `user_device_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_device_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_device_auth`
--

DROP TABLE IF EXISTS `user_device_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_device_auth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `device_id` varchar(45) NOT NULL,
  `pin` varchar(70) NOT NULL,
  `lock_type` varchar(45) NOT NULL,
  `login_attempts` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_device_auth`
--

LOCK TABLES `user_device_auth` WRITE;
/*!40000 ALTER TABLE `user_device_auth` DISABLE KEYS */;
INSERT INTO `user_device_auth` VALUES (1,'oXJBSyYaWykGy3EnwWds','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 10:04:34','2020-11-26 14:51:23'),(2,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 10:10:01','2020-11-26 11:20:25'),(3,'Blc0HCswn2ecnKONeJ6n','f37253c87007dbc5','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 10:21:58','2020-11-27 05:56:59'),(4,'YLNOgQi99wmM3VLCRs3a','8DC9C649-9B68-4292-B00A-81F9691E944C','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-26 10:22:04','2020-11-26 10:22:04'),(5,'g79OfgwqX3tbF8FujnsB','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 10:28:07','2020-11-26 12:30:43'),(6,'4D1TPV2VTVwy7yEZxHw8','343593d5a2b66ca2','6a9f101bc62bbdf65fe21d418d17c4996cd9c4ee9ad43fcd756aab1dc6f2dd08','PHONE_LOCK',0,0,'2020-11-26 11:01:18','2020-12-01 07:27:28'),(7,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','97f4bbb7d89a48162cf24c7237ffdfdd32db64aac2eee9fce949226a18c354d8','PHONE_LOCK',0,0,'2020-11-26 11:20:30','2020-11-26 15:47:00'),(8,'rXQb8F0ltDqbknJedfY1','2727308A-DFB3-466D-9F66-7FA26D8D561C','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 11:49:28','2020-11-26 13:48:08'),(9,'M94hoDVb5O3M992ZvzYC','6d40118819c60159','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-11-26 12:36:17','2020-11-27 06:07:18'),(10,'rXQb8F0ltDqbknJedfY1','2727308A-DFB3-466D-9F66-7FA26D8D561C','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-26 13:48:13','2020-11-26 13:48:13'),(11,'N2w0w5R5Spb7Z2pJsz4R','3e2562d8792a4754','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,0,'2020-11-26 13:50:53','2020-11-26 14:31:30'),(12,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','d59bb2805ca295994f51140080e32cf87b0deff781ec2c3b93c89891613b21b4','PHONE_LOCK',0,0,'2020-11-26 14:03:17','2020-11-26 14:16:16'),(13,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','a7106674e803aadf87a8f8b52a93b8b0f666533ef1858ef18ba8918ebaf81423','PHONE_LOCK',0,0,'2020-11-26 14:16:20','2020-11-26 14:27:14'),(14,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 14:27:18','2020-11-26 15:16:42'),(15,'N2w0w5R5Spb7Z2pJsz4R','3e2562d8792a4754','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,0,'2020-11-26 14:31:33','2020-11-26 17:19:00'),(16,'U2IJSr55BZg4aZEJOtow','5fa63079df5227e7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 14:45:53','2020-11-26 15:54:23'),(17,'oXJBSyYaWykGy3EnwWds','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 14:51:27','2020-11-27 06:33:30'),(18,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-26 15:16:48','2020-11-26 15:16:48'),(19,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 15:47:56','2020-11-29 17:44:45'),(20,'U2IJSr55BZg4aZEJOtow','5fa63079df5227e7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 15:54:28','2020-11-30 09:03:36'),(21,'N2w0w5R5Spb7Z2pJsz4R','3e2562d8792a4754','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,0,'2020-11-26 17:19:03','2020-11-30 14:54:14'),(22,'Blc0HCswn2ecnKONeJ6n','f37253c87007dbc5','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-27 05:57:02','2020-12-01 06:46:36'),(23,'oXJBSyYaWykGy3EnwWds','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-27 06:33:34','2020-11-27 08:59:47'),(24,'4Ap9FocJf6EjtSSbsetK','479b3987b6465737','77d9c010d39a87dea2e8742a93e0db110fe3b18cf6a72617ed6e4c1e69caa5b9','PHONE_LOCK',0,0,'2020-11-27 07:04:20','2020-11-27 14:08:06'),(25,'oXJBSyYaWykGy3EnwWds','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-27 08:59:51','2020-11-27 10:05:37'),(26,'vbi16wy7hpXorfke22xl','4d21657718b6886','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-11-27 09:20:51','2020-11-27 09:20:51'),(27,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','81c3de79742119d98cdfc88d60a59f324af985dfc509af86d4d4fcb1351adcdd','PHONE_LOCK',0,0,'2020-11-27 13:07:38','2020-11-27 13:09:21'),(28,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','e056172462b355e3f703a952f20336ca1f37aa54affdd289fa01def6097e0324','PHONE_LOCK',0,0,'2020-11-27 13:09:25','2020-11-27 13:10:15'),(29,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','7f9a6b342b7e4ff2a4d44b811c3f88ecdecaae3545a3a587b10b146365341c85','PHONE_LOCK',0,0,'2020-11-27 13:10:17','2020-11-27 13:19:46'),(30,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','d19128ad5f33369c42664abb80e50f7296715eef053db32eb9f5a08fb2e5dd5a','PHONE_LOCK',0,0,'2020-11-27 13:19:49','2020-11-27 13:20:25'),(31,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','96c07022116b71bc4179b1482d90af4b54cca3bce3669c25c1e72784cec0d1dc','PHONE_LOCK',0,0,'2020-11-27 13:20:28','2020-11-29 09:35:10'),(32,'oXJBSyYaWykGy3EnwWds','123456','0f4c0b7cb2b894f2eb8588dde377acb322cca3e15221826230736014a802af81','PHONE_LOCK',0,0,'2020-11-27 13:49:56','2020-11-27 13:50:35'),(33,'kOPSubuP9WcoBevFHq5k','6d40118819c60159','07590f6a5d1647cd3e383289db7cf2656e8ca32f95420837540c593af9a67004','PHONE_LOCK',0,1,'2020-11-27 13:52:54','2020-11-27 13:52:54'),(34,'4Ap9FocJf6EjtSSbsetK','479b3987b6465737','f45124775bc23f07353e1e6319d5fcd24b5ea0255c53dfaae8f40152538a4292','PHONE_LOCK',0,0,'2020-11-27 14:08:10','2020-11-30 07:31:46'),(35,'WnpKnw0wdMVSzN3KrGa7','123456','b0eea94ab2926d7b3bc420f230ff8a6083c998ce24615b2da8d3995a61217fdd','PHONE_LOCK',0,0,'2020-11-27 14:59:31','2020-11-30 12:08:09'),(36,'AnygeS9QqNrZtOTTpQVS','b450584b782aa39b','89c6876614078001abe143284ee509c7bc73efc921ce26289a3822a2249a2a34','PHONE_LOCK',0,1,'2020-11-27 17:10:02','2020-11-27 17:10:02'),(37,'NQJFwHBBY6oXQsJ2m6xg','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-29 07:04:48','2020-11-30 06:52:41'),(38,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','6dc3e3d69304f1a1e9f3f3590acdc3592138713df8d49cae57f4dbc1f4ed729a','PHONE_LOCK',0,0,'2020-11-29 09:35:13','2020-11-30 09:19:49'),(39,'FBgGjwBe3Yx6lWmWNVbs','864D0C61-E4CE-4CB5-A769-21B46E71FBE4','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-29 09:38:14','2020-11-29 09:42:03'),(40,'FBgGjwBe3Yx6lWmWNVbs','864D0C61-E4CE-4CB5-A769-21B46E71FBE4','b0b0b4ec1dcc2b6be51a678fa662c7f4ecb792b35536f05983a7b32405a56c82','PHONE_LOCK',0,0,'2020-11-29 09:45:01','2020-11-29 09:49:00'),(41,'FBgGjwBe3Yx6lWmWNVbs','864D0C61-E4CE-4CB5-A769-21B46E71FBE4','f1a2c1cb410fef438d58898f2935503f53717cb3012018eec37242b3f21c1e5c','PHONE_LOCK',2,0,'2020-11-29 09:50:02','2020-11-29 10:17:18'),(42,'FBgGjwBe3Yx6lWmWNVbs','864D0C61-E4CE-4CB5-A769-21B46E71FBE4','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-29 10:17:22','2020-11-30 11:57:14'),(43,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-29 17:44:51','2020-11-30 11:47:42'),(44,'oXJBSyYaWykGy3EnwWds','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-30 04:27:50','2020-12-01 07:22:46'),(45,'vPKsjI5OFkVyh51QgFOB','C59C7BE0-2872-41B8-8A11-6E5B1A8B8132','8994950afecd0203c7928306e7f210bba1ac66ae6195d0b6438587b46b2c9d77','PHONE_LOCK',0,1,'2020-11-30 04:57:39','2020-11-30 04:57:39'),(46,'NQJFwHBBY6oXQsJ2m6xg','123456','084e15a8eddacef47e49b911934ded743a3129b5a5d52605ba8ebdf655bf8f19','PHONE_LOCK',0,0,'2020-11-30 06:52:45','2020-11-30 08:00:53'),(47,'fFli7O9upn3ErBNjcqi9','123456','91c819973ddda59cda5f6a7c7b62cb152e71b72f13f6d8f85f8bbd417a76a850','PHONE_LOCK',0,0,'2020-11-30 07:22:41','2020-11-30 11:09:34'),(48,'4Ap9FocJf6EjtSSbsetK','479b3987b6465737','ac50547f5ba3ed9935cebc4e54611f3f76f0a0bdc25bdd6a26cc1e77111b9eef','PHONE_LOCK',0,0,'2020-11-30 07:31:48','2020-12-01 11:54:30'),(49,'NQJFwHBBY6oXQsJ2m6xg','123456','4721a50d1ee23712e28b163e1a9820fdf36f6054d25b5df297c0ff5129aa2610','APP_LOCK',0,1,'2020-11-30 08:00:59','2020-11-30 08:25:06'),(50,'U2IJSr55BZg4aZEJOtow','5fa63079df5227e7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-30 09:04:07','2020-11-30 09:12:54'),(51,'U2IJSr55BZg4aZEJOtow','5fa63079df5227e7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-30 09:13:02','2020-11-30 11:04:35'),(52,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,0,'2020-11-30 09:19:51','2020-12-01 10:32:58'),(53,'U2IJSr55BZg4aZEJOtow','5fa63079df5227e7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-30 11:04:39','2020-11-30 13:11:05'),(54,'fFli7O9upn3ErBNjcqi9','123456','7dbc20d0a2740240ae144d0b3c7335e9a7888e7141dad9680f1eb450db10911b','PHONE_LOCK',0,0,'2020-11-30 11:09:36','2020-11-30 13:55:23'),(55,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-30 11:47:48','2020-11-30 17:37:28'),(56,'WnpKnw0wdMVSzN3KrGa7','123456','8fbcd034f410f4dd886b26a2b8d7c1542599c78b0d25435d84690fc5aa228161','PHONE_LOCK',0,0,'2020-11-30 12:08:49','2020-11-30 13:25:52'),(57,'U2IJSr55BZg4aZEJOtow','5fa63079df5227e7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-30 13:11:09','2020-11-30 13:11:09'),(58,'WnpKnw0wdMVSzN3KrGa7','123456','cf02381aa6aaee98b410022f2102ef2f7261989e07fa3ed8bed5e4433a6fd804','PHONE_LOCK',0,0,'2020-11-30 13:26:10','2020-12-01 11:09:57'),(59,'fFli7O9upn3ErBNjcqi9','123456','c712522c5bb46ff5062149079b70cb6866fb672a3e86797053ee7a01e479f12b','PHONE_LOCK',0,1,'2020-11-30 13:55:25','2020-11-30 13:55:25'),(60,'N2w0w5R5Spb7Z2pJsz4R','3e2562d8792a4754','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,0,'2020-11-30 14:54:16','2020-12-01 07:01:45'),(61,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','745fa08cc3935fc87a1459d2df3ba3c77af200ad3dd80a69198735ff2c7c9091','PHONE_LOCK',0,0,'2020-11-30 17:37:56','2020-11-30 17:58:37'),(62,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-30 17:58:44','2020-12-01 10:03:33'),(63,'cAF65zJsp52X1l4LAJZ1','343593d5a2b66ca2','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-30 20:05:17','2020-12-01 07:28:41'),(64,'4tBGwHb4W9PD8R1qaZty','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-30 20:14:28','2020-11-30 20:14:28'),(65,'N2w0w5R5Spb7Z2pJsz4R','3e2562d8792a4754','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,0,'2020-12-01 07:01:48','2020-12-01 08:35:02'),(66,'oXJBSyYaWykGy3EnwWds','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-12-01 07:22:49','2020-12-01 07:22:49'),(67,'4D1TPV2VTVwy7yEZxHw8','343593d5a2b66ca2','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-01 07:27:32','2020-12-01 13:47:47'),(68,'cAF65zJsp52X1l4LAJZ1','343593d5a2b66ca2','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-12-01 07:28:45','2020-12-01 07:28:45'),(69,'jD0R1JZtJlMwKkpOpUvo','343593d5a2b66ca2','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-12-01 07:31:02','2020-12-01 07:31:02'),(70,'N2w0w5R5Spb7Z2pJsz4R','3e2562d8792a4754','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-12-01 08:35:05','2020-12-01 13:19:13'),(71,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-12-01 10:33:01','2020-12-01 11:04:27'),(72,'WnpKnw0wdMVSzN3KrGa7','123456','50b9ce0d3a0bbc0f5e6be19abfcfc51169d8e5fa7920c81c5db8933d0021de5f','PHONE_LOCK',0,0,'2020-12-01 11:10:32','2020-12-02 12:41:27'),(73,'5lZT4DjmDc9IfRU61hSr','6d40118819c60159','a2ba20c6aedcae42d57a199b08e70e3667a9117369b45a6d97e0d289cb7dce5c','PHONE_LOCK',0,0,'2020-12-01 11:18:30','2020-12-01 13:31:48'),(74,'DjZWcZDDJInoEgz4g32b','eebde9865fdc7f89','3aa8a76276b24211c8245027e01146324f8802293fe86b28b6d30ffd3210d268','PHONE_LOCK',0,1,'2020-12-01 11:25:18','2020-12-01 11:25:18'),(75,'4Ap9FocJf6EjtSSbsetK','479b3987b6465737','c7e4abbb6f642ec2c8097d99b5f41bdced3dc29b684e993fdcfc33614a11e280','PHONE_LOCK',0,1,'2020-12-01 11:54:32','2020-12-01 11:54:32'),(76,'46y3SLEK7vapjnyjcRhB','eebde9865fdc7f89','17b8a4cf10c3e7aac4d34415b42b6633227eba24ba3d6d3e3b16854f970ce92c','PHONE_LOCK',0,1,'2020-12-01 12:24:57','2020-12-01 12:24:57'),(77,'4SSPRz4q5SeI2doStd7i','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-12-01 12:29:14','2020-12-01 12:29:14'),(78,'5lZT4DjmDc9IfRU61hSr','6d40118819c60159','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',2,0,'2020-12-01 13:31:53','2020-12-01 13:35:37'),(79,'SJ50ENeeQpmQXhYp3kKD','6d40118819c60159','4793a10f142157f2e287aad35cf930651c39415abc4eb55176227fc8c8d132a1','PHONE_LOCK',0,0,'2020-12-01 14:10:41','2020-12-01 14:11:16'),(80,'SJ50ENeeQpmQXhYp3kKD','6d40118819c60159','47fbb3cf58553a1463496ba07c13c00a41135d72e3f7bf72f50375ceffaea24c','PHONE_LOCK',0,0,'2020-12-01 14:11:18','2020-12-01 14:21:06'),(81,'SJ50ENeeQpmQXhYp3kKD','6d40118819c60159','db67bb10f2f89818c8f25b0543155ce314eb497c4bec57894659afa2d075f038','PHONE_LOCK',0,1,'2020-12-01 14:21:09','2020-12-01 14:21:09'),(82,'ZUtvFnEIu94nGPCruhhe','6d40118819c60159','ef39c5013529f57c43efef1135592e88f9f7d0201258c5b66cc59299834e2016','PHONE_LOCK',0,0,'2020-12-01 14:25:30','2020-12-01 14:27:20'),(83,'ZUtvFnEIu94nGPCruhhe','6d40118819c60159','d9522cdf27588320c9a816c9c5cde3a4dc21d4a8640db95f5a31a19d185d5747','PHONE_LOCK',0,0,'2020-12-01 14:27:23','2020-12-01 14:29:08'),(84,'ZUtvFnEIu94nGPCruhhe','6d40118819c60159','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-12-01 14:29:47','2020-12-02 08:17:08'),(85,'usRVdoqFt8Ic7xIJWDmQ','6d40118819c60159','3aa97fac3f1e6bdbebb3e5fcdf3be90f083eea9a8d1ed2058ba4ba520c4b94ff','PHONE_LOCK',0,1,'2020-12-01 14:35:04','2020-12-01 14:35:04'),(86,'Y5qL7193CBA5QiBC2Xht','2BA0567F-82B9-4B5E-A059-4AAEFAE496FE','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-12-02 08:27:00','2020-12-02 08:27:00'),(87,'MiedkiD195tyG4A8uPcg','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-12-02 08:29:59','2020-12-02 08:29:59'),(88,'4D1TPV2VTVwy7yEZxHw8','39482EAF-E953-449F-9A90-2A6A1FAB73EF','ef87ef2c703e289a8ba4389fe48221fab870db8c0fab6471ed9432bf424f6d9f','PHONE_LOCK',0,1,'2020-12-02 09:09:04','2020-12-02 09:09:04'),(89,'ePRwED4TcZD3u8w6Vems','4d21657718b6886','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-12-02 10:56:38','2020-12-02 10:56:38'),(90,'WnpKnw0wdMVSzN3KrGa7','123456','0a6559c2f6de98b4b216c45f8c43bb469482c2817582d493f892fd6ad75767e4','PHONE_LOCK',0,1,'2020-12-02 12:41:46','2020-12-02 15:16:28'),(91,'9EM1QMTEwbr2m0WRXUZ4','4d21657718b6886','b696f1707cb0d189a3d51f87e5ed94d10553f52ff5a9949fe4849abe5dad2d95','PHONE_LOCK',0,0,'2020-12-03 11:51:33','2020-12-04 06:06:21'),(92,'FyLHCzs2zMVUXI6wujdE','492c87dbe2b46777','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-12-03 12:38:55','2020-12-03 12:38:55'),(93,'7TE1pLAnMSdFOCRUFwQY','2df4d211e8f5f210','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,0,'2020-12-03 14:14:21','2020-12-04 06:23:02'),(94,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 02:40:49','2020-12-04 02:51:03'),(95,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 02:51:06','2020-12-04 03:36:46'),(96,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','7c24f362a93a8fd1b962b1482c9fd7193b55ef75c2fccf111142ba7210e94a97','PHONE_LOCK',0,0,'2020-12-04 03:36:50','2020-12-04 03:47:02'),(97,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 03:47:05','2020-12-04 04:55:42'),(98,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 04:55:44','2020-12-04 05:09:55'),(99,'ujQZqb6d6kLfdWjPAwoA','BEE425CC-7578-49C1-BEBE-EB50979888FC','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-12-04 05:07:58','2020-12-04 05:07:58'),(100,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 05:10:04','2020-12-04 05:20:35'),(101,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 05:20:37','2020-12-04 05:25:46'),(102,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 05:25:50','2020-12-04 05:29:39'),(103,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 05:29:42','2020-12-04 06:05:13'),(104,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 06:05:15','2020-12-04 06:07:08'),(105,'9EM1QMTEwbr2m0WRXUZ4','4d21657718b6886','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-12-04 06:06:27','2020-12-04 06:06:27'),(106,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 06:07:10','2020-12-04 06:07:59'),(107,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-12-04 06:08:01','2020-12-04 06:08:34'),(108,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-12-04 06:08:36','2020-12-04 06:08:36'),(109,'7TE1pLAnMSdFOCRUFwQY','2df4d211e8f5f210','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-12-04 06:23:05','2020-12-04 06:23:05'),(110,'jE3z21FjZeaLveMiZDzA','eebde9865fdc7f89','76928291e8a5be3de7d82d381da86262e3614e25d1d6ec76b7861276901ca218','PHONE_LOCK',0,1,'2020-12-04 06:44:36','2020-12-04 06:44:36');
/*!40000 ALTER TABLE `user_device_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_device_mapping`
--

DROP TABLE IF EXISTS `user_device_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_device_mapping` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `device_id` varchar(45) NOT NULL,
  `mobile_version` varchar(45) NOT NULL,
  `device_identifier` varchar(45) NOT NULL,
  `app_version` varchar(45) NOT NULL,
  `app_version_code` varchar(45) NOT NULL,
  `os_version` varchar(45) NOT NULL,
  `device_type` varchar(45) NOT NULL,
  `language_id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `fcm_token` varchar(250) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_device_mapping`
--

LOCK TABLES `user_device_mapping` WRITE;
/*!40000 ALTER TABLE `user_device_mapping` DISABLE KEYS */;
INSERT INTO `user_device_mapping` VALUES (1,'9EM1QMTEwbr2m0WRXUZ4','4d21657718b6886','generic_x86','4d21657718b6886','1.0.7','1','generic_x86','android',1,'10.0.2.15','fuzVXZFORqWQybJOI1XKab:APA91bHp-XZFW8OhsYbATderDlXYLu6rPfrnnybdYeKR2tPPh5D4yGvIhlWQCrWLvUTfMvHiMBrA3z8zp1hYFEUhNsY1jIjXSGcI-66QNhImpdp1DqrOVKpr8eAfqI91bMsg5oQQclXi',0,'2020-12-03 11:51:19','2020-12-04 04:59:35'),(2,'FyLHCzs2zMVUXI6wujdE','492c87dbe2b46777','1806','492c87dbe2b46777','1.0.7','1','1806','android',1,'192.168.8.110','dPEOzLwbQNeGyE3i9p8dYq:APA91bGF8yZrDojD3N1rakXMWC2B7M75WGS7Nya6k8m8HARHxZq0cTXyct96IkWXpzu-tBDPUVOE07PJKfVJ2k0mwst5OhZU6BqwKcJV7QW7u87X7Ua_ishU99W27zrSdr4Y4DI2SQZT',1,'2020-12-03 12:38:46','2020-12-03 12:38:46'),(3,'7TE1pLAnMSdFOCRUFwQY','2df4d211e8f5f210','Nord','2df4d211e8f5f210','1.0.7','1','Nord','android',1,'192.168.0.133','d7HHz2acRouI8ELeFbxlZn:APA91bGwZRYgYRPTBC8tMDWSiRjXkhLy5pbYdEZVBNZTQXfjHdPdDX4bHLx2v26U7ah2tO-7MzU1zIkfrUB6URocVzJ9jPnKsc8L3EUnVdY9MerSiqrl89oakL1aixFqUASF1NuZSX18',1,'2020-12-03 14:13:27','2020-12-03 14:13:27'),(4,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','OnePlus5T','d6c2742f79bafbc7','1.0.7','1','OnePlus5T','android',1,'192.168.0.101','fWeDgX8CQ6CY8_PghOb9Pe:APA91bFTfRXz6VHRz_Koh7zfDi_ffoTUdmE7FztmcrV4mCirH6-LRwXptXNyw2zdljjGEVsgO1ukW7QQWr8CLhdicrq7GTLdgzfnht9zQuKMJsuqgfD1yS_QOSJDXa77oRtBe5a1a2ZE',0,'2020-12-04 02:40:44','2020-12-04 03:44:24'),(5,'wFMrXI4pTgSWMAWqXab5','AB51CEA7-9D69-4246-B221-B3A5FFF8A57B','iPhone','AB51CEA7-9D69-4246-B221-B3A5FFF8A57B','1.0.7','2','iPhone','ios',1,'192.168.0.106','fSYJig7KjUVqsK7LuFiNUG:APA91bEA-v_3hZ5Y5ccTWDcVrWxPHxX2456b0_cpvWqnt8r1Nrc0vU_racVOHkHTZAu8H-rNTaswmaiZ1Sm2Jrh38sOvaDdLTI2taT18z8NCegUWJpykjJOAV9wEe6UVY_N5lp9_iG4d',0,'2020-12-04 03:44:24','2020-12-04 03:47:02'),(6,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','OnePlus5T','d6c2742f79bafbc7','1.0.7','1','OnePlus5T','android',1,'192.168.0.101','fWeDgX8CQ6CY8_PghOb9Pe:APA91bFTfRXz6VHRz_Koh7zfDi_ffoTUdmE7FztmcrV4mCirH6-LRwXptXNyw2zdljjGEVsgO1ukW7QQWr8CLhdicrq7GTLdgzfnht9zQuKMJsuqgfD1yS_QOSJDXa77oRtBe5a1a2ZE',0,'2020-12-04 03:47:02','2020-12-04 03:51:03'),(7,'wFMrXI4pTgSWMAWqXab5','6379FC81-E8C8-4962-A9F1-BD91D35E0556','iPhone','6379FC81-E8C8-4962-A9F1-BD91D35E0556','1.0.7','2','iPhone','ios',1,'192.168.0.103','f-RWbayc-Ej3lWSM2no6tK:APA91bEercYHpe3-xlGVIkqsyhyJj9lO0JHGv2VN_0xKgIZMi20BZ98HLuxD7bJ1Dd1vvQ_EHaV_XlXhpEl9wdlal7liEJIRNtycf4XsIDS5LXQWohtlHTszU09_n9WyrgKAgJFMNbNw',0,'2020-12-04 03:51:03','2020-12-04 04:16:45'),(8,'wFMrXI4pTgSWMAWqXab5','7683F2AA-EEE1-4AC8-9833-745F5C84C587','iPhone','7683F2AA-EEE1-4AC8-9833-745F5C84C587','1.0.7','2','iPhone','ios',1,'192.168.0.103','dhzZ8D-GX0DlhvXkchpOKp:APA91bEJo1J0sVJuoM6p6Nw2Czu_QP7WWEkWubf-iPwBVgI-iFrhteqD2TozUHj-E9DHNnSEJC7amCjEF7gN-DO8HTojpCzIRpXOiPzQsNSf0PXesxczS4LkfXj0SJb8_a_RPv6yt6av',0,'2020-12-04 04:16:45','2020-12-04 04:44:28'),(9,'wFMrXI4pTgSWMAWqXab5','BEE425CC-7578-49C1-BEBE-EB50979888FC','iPhone','BEE425CC-7578-49C1-BEBE-EB50979888FC','1.0.7','2','iPhone','ios',1,'192.168.0.103','euOUaZ6wpUHkvJMTFnySE8:APA91bHNlJnGYIA6OsBYUM6xmdhe6eZ_q-VE_SRCEuNOeL36n4qYYsEkThMBpxLoedUe3jzvXHEu9sfSctT-S78BrLqu5jT0YY1tK6zXj8SkgdXAr9N0e3FLlg_qhiPkeKiChq2qdMnV',0,'2020-12-04 04:44:28','2020-12-04 04:55:42'),(10,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','OnePlus5T','d6c2742f79bafbc7','1.0.7','1','OnePlus5T','android',1,'192.168.0.101','dwCFXyhVSt2rqXtWsfgUGi:APA91bHQ_AzuREBcD2PtzZ5QYBJaSgckWJw51GVsy6XV22-yddH34PBJKL2DW_hXUfdd06N5uKfaBnJYebaIeKe4dC_r2Kg94XJlzMODb2YADf3naMBlhgza4g_abMmR6zR2BCxvaR9p',0,'2020-12-04 04:55:42','2020-12-04 05:46:18'),(11,'9EM1QMTEwbr2m0WRXUZ4','6d40118819c60159','OnePlus8T','6d40118819c60159','1.0.7','1','OnePlus8T','android',1,'192.168.1.17','cyjDoYeyQ02m2BHfsHMs9O:APA91bEJJj8J05rNS1oodSFOeJakA9V-1C6NjwxbPljkAVNmXv54GZ6JRzYyKlYkCnu61lKwrPmd6tSkp2ABMBC2YVQXNq4BLkh-vOUgmDfa_EWytTY_NJFXqBNm8XDzoNMmEmmAIQGn',0,'2020-12-04 04:59:35','2020-12-04 06:06:21'),(12,'ujQZqb6d6kLfdWjPAwoA','BEE425CC-7578-49C1-BEBE-EB50979888FC','iPhone','BEE425CC-7578-49C1-BEBE-EB50979888FC','1.0.7','2','iPhone','ios',1,'192.168.0.103','euOUaZ6wpUHkvJMTFnySE8:APA91bHNlJnGYIA6OsBYUM6xmdhe6eZ_q-VE_SRCEuNOeL36n4qYYsEkThMBpxLoedUe3jzvXHEu9sfSctT-S78BrLqu5jT0YY1tK6zXj8SkgdXAr9N0e3FLlg_qhiPkeKiChq2qdMnV',1,'2020-12-04 05:07:46','2020-12-04 05:07:46'),(13,'wFMrXI4pTgSWMAWqXab5','BEE425CC-7578-49C1-BEBE-EB50979888FC','iPhone','BEE425CC-7578-49C1-BEBE-EB50979888FC','1.0.7','2','iPhone','ios',1,'192.168.0.103','euOUaZ6wpUHkvJMTFnySE8:APA91bHNlJnGYIA6OsBYUM6xmdhe6eZ_q-VE_SRCEuNOeL36n4qYYsEkThMBpxLoedUe3jzvXHEu9sfSctT-S78BrLqu5jT0YY1tK6zXj8SkgdXAr9N0e3FLlg_qhiPkeKiChq2qdMnV',0,'2020-12-04 05:46:18','2020-12-04 06:05:13'),(14,'wFMrXI4pTgSWMAWqXab5','d6c2742f79bafbc7','OnePlus5T','d6c2742f79bafbc7','1.0.7','1','OnePlus5T','android',1,'192.168.0.101','dwCFXyhVSt2rqXtWsfgUGi:APA91bHQ_AzuREBcD2PtzZ5QYBJaSgckWJw51GVsy6XV22-yddH34PBJKL2DW_hXUfdd06N5uKfaBnJYebaIeKe4dC_r2Kg94XJlzMODb2YADf3naMBlhgza4g_abMmR6zR2BCxvaR9p',1,'2020-12-04 06:05:13','2020-12-04 06:05:13'),(15,'9EM1QMTEwbr2m0WRXUZ4','4d21657718b6886','generic_x86','4d21657718b6886','1.0.7','1','generic_x86','android',1,'10.0.2.15','fuzVXZFORqWQybJOI1XKab:APA91bHp-XZFW8OhsYbATderDlXYLu6rPfrnnybdYeKR2tPPh5D4yGvIhlWQCrWLvUTfMvHiMBrA3z8zp1hYFEUhNsY1jIjXSGcI-66QNhImpdp1DqrOVKpr8eAfqI91bMsg5oQQclXi',0,'2020-12-04 06:06:21','2020-12-04 06:25:54'),(16,'9EM1QMTEwbr2m0WRXUZ4','9E5B0680-886A-4210-82F0-DB6D22C0744F','iPhone','9E5B0680-886A-4210-82F0-DB6D22C0744F','1.0.6','1','iPhone','ios',1,'192.168.1.12','e0ysfmBGW0xogfbX1ed4Hu:APA91bGbhtx8J7jOMKnLYaozbGs6wNE6tqAY9zu1XNFw3cNMHkrfRpxnosPDULc10wIztfhIpoYY5-LvJuc2ip7r3pcdgMeP-F0yRkxuyYdQPM0JxsRnDh3EmKYdgKhM4gTnSLxqOHuR',0,'2020-12-04 06:25:54','2020-12-04 06:46:06'),(17,'jE3z21FjZeaLveMiZDzA','eebde9865fdc7f89','crosshatch','eebde9865fdc7f89','1.0.7','1','crosshatch','android',1,'192.168.1.209','eFzOPvlrRwS4RaD9-sr-68:APA91bHFwd9xoRNPBrviAo9de6a1-Cwi055MojnWU3pGhndqQiV_ehGTpzWr5iE7_fdZXU4O5L5H9IK5-n4LQZaUH0Ob6qd8YNc4P-JAkToVyMwVuU7TlklqR4xmhDKJwkrtndKWtV3G',1,'2020-12-04 06:44:33','2020-12-04 06:44:33'),(18,'9EM1QMTEwbr2m0WRXUZ4','4d21657718b6886','generic_x86','4d21657718b6886','1.0.7','1','generic_x86','android',1,'10.0.2.15','fuzVXZFORqWQybJOI1XKab:APA91bHp-XZFW8OhsYbATderDlXYLu6rPfrnnybdYeKR2tPPh5D4yGvIhlWQCrWLvUTfMvHiMBrA3z8zp1hYFEUhNsY1jIjXSGcI-66QNhImpdp1DqrOVKpr8eAfqI91bMsg5oQQclXi',1,'2020-12-04 06:46:06','2020-12-04 06:46:06');
/*!40000 ALTER TABLE `user_device_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `preference_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,'9EM1QMTEwbr2m0WRXUZ4',1,1,'2020-12-03 11:51:42','2020-12-03 11:51:42'),(2,'9EM1QMTEwbr2m0WRXUZ4',2,1,'2020-12-03 11:51:42','2020-12-03 11:51:42'),(3,'9EM1QMTEwbr2m0WRXUZ4',3,1,'2020-12-03 11:51:42','2020-12-03 11:51:42'),(4,'FyLHCzs2zMVUXI6wujdE',1,1,'2020-12-03 12:39:19','2020-12-03 12:39:19'),(5,'FyLHCzs2zMVUXI6wujdE',10,1,'2020-12-03 12:41:35','2020-12-03 12:41:35'),(6,'7TE1pLAnMSdFOCRUFwQY',4,1,'2020-12-03 14:18:35','2020-12-03 14:18:35'),(7,'7TE1pLAnMSdFOCRUFwQY',6,1,'2020-12-03 14:18:35','2020-12-03 14:18:35'),(8,'wFMrXI4pTgSWMAWqXab5',1,1,'2020-12-04 02:40:58','2020-12-04 02:40:58'),(9,'wFMrXI4pTgSWMAWqXab5',3,1,'2020-12-04 02:40:58','2020-12-04 02:40:58'),(10,'wFMrXI4pTgSWMAWqXab5',4,1,'2020-12-04 02:40:58','2020-12-04 02:40:58'),(11,'ujQZqb6d6kLfdWjPAwoA',6,1,'2020-12-04 05:08:07','2020-12-04 05:08:07'),(12,'ujQZqb6d6kLfdWjPAwoA',7,1,'2020-12-04 05:08:07','2020-12-04 05:08:07'),(13,'jE3z21FjZeaLveMiZDzA',1,1,'2020-12-04 06:44:44','2020-12-04 06:44:44'),(14,'7TE1pLAnMSdFOCRUFwQY',7,1,'2020-12-04 07:06:47','2020-12-04 07:06:47'),(15,'7TE1pLAnMSdFOCRUFwQY',8,1,'2020-12-04 07:06:47','2020-12-04 07:06:47'),(16,'7TE1pLAnMSdFOCRUFwQY',10,1,'2020-12-04 07:06:47','2020-12-04 07:06:47'),(17,'7TE1pLAnMSdFOCRUFwQY',12,1,'2020-12-04 07:06:47','2020-12-04 07:06:47');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04  7:09:16
