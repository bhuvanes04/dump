-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_user_audit`
--

LOCK TABLES `block_user_audit` WRITE;
/*!40000 ALTER TABLE `block_user_audit` DISABLE KEYS */;
INSERT INTO `block_user_audit` VALUES (1,'xhqNw7nox1k6HAwoUH4cOAavulodkmH7ZgQkiF4cmdo=','Error Occurred maximum limit exceed',0,'2020-11-23 12:31:22','2020-11-23 13:01:22'),(2,'XRSAsUWMvw+r4CXOG/REfQ==','Error Occurred maximum limit exceed',0,'2020-11-23 12:31:22','2020-11-23 13:01:22'),(3,'sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=','Error Occurred maximum login limit exceed',0,'2020-11-24 12:17:08','2020-11-24 12:47:08'),(4,'hoqEF3480NDFXAHhCMnlRg==','Error Occurred maximum login limit exceed',0,'2020-11-24 12:17:08','2020-11-24 12:47:08'),(5,'YJ/OQCLD120V/qLlCB6egQ==','Error Occurred maximum limit exceed',0,'2020-11-24 16:06:07','2020-11-24 17:06:09'),(6,'Aim8CjSAYhpd4v23hW90GQ==','Error Occurred maximum limit exceed',0,'2020-11-24 16:06:07','2020-11-24 17:06:09'),(7,'aCxZCZnkH/L/7ubgtISQCla42ocT5ZVEVB5d7vPB1rM=','Error Occurred maximum limit exceed',0,'2020-11-24 16:29:32','2020-11-24 17:29:32'),(8,'HQnJma+wGGK4NhE47kyV5g==','Error Occurred maximum limit exceed',0,'2020-11-24 16:29:32','2020-11-24 17:29:32'),(9,'sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=','Error Occurred maximum login limit exceed',0,'2020-11-25 04:22:40','2020-11-25 04:52:42'),(10,'hoqEF3480NDFXAHhCMnlRg==','Error Occurred maximum login limit exceed',0,'2020-11-25 04:22:40','2020-11-25 04:52:42');
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
INSERT INTO `cta_button` VALUES (1,1,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-09-02 03:33:22','2020-09-16 06:15:15'),(2,2,'Email',NULL,0,1,'PRIMARY',NULL,'MAILTO:CUSTOMERCARE-FALCON@RAKBANK.AE',NULL,NULL,NULL,NULL,1,'2020-09-02 03:36:02','2020-09-16 05:48:35'),(3,12,'Re Enter',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-09-16 03:43:59','2020-10-30 08:10:51'),(4,13,'Sign UP',NULL,0,1,'PRIMARY',NULL,'falcon://falcon/rakbank_Falcon_onboarding_save-card-screen',NULL,NULL,1,NULL,1,'2020-09-16 04:59:51','2020-10-30 08:14:09'),(5,4,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-09-29 09:02:44','2020-09-29 09:24:10'),(6,14,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-09-29 09:20:51','2020-09-29 09:24:09'),(7,17,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-09-29 10:20:14','2020-09-29 10:21:41'),(8,19,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-11-06 08:26:26','2020-11-06 08:28:55'),(9,20,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-11-06 08:26:26','2020-11-06 08:28:55'),(10,22,'Login Again',NULL,0,1,'PRIMARY',0,'falcon://falcon/rakbank_Falcon_onboarding_log-in-screen',NULL,NULL,NULL,NULL,1,'2020-11-12 09:35:26','2020-11-12 16:05:13'),(11,23,'Dismiss',NULL,0,1,'PRIMARY',1,NULL,NULL,NULL,NULL,NULL,1,'2020-11-12 17:04:06','2020-11-12 17:14:48'),(12,24,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-11-19 06:32:50','2020-11-19 08:57:28'),(13,25,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-11-19 08:54:10','2020-11-19 08:57:28'),(14,26,'Try Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-11-19 09:04:14','2020-11-19 09:04:14'),(15,27,'TRY Again',NULL,0,1,'PRIMARY',NULL,NULL,NULL,NULL,NULL,1,1,'2020-11-19 10:01:18','2020-11-19 10:01:18');
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
INSERT INTO `error_handling_details` VALUES (0,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-11-05 08:10:58','2020-11-05 08:10:58'),(1,'BOTTOM_OVERLAY_ERROR',NULL,'Uh-oh! That was unexpected!','Looks like we did something wrong.  If the problem persists, please reach out to customercare-falcon@rakbank.ae',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',0,NULL,1,'2020-09-02 03:30:03','2020-11-06 07:41:04'),(2,'BOTTOM_OVERLAY_ERROR',NULL,'User creation failed!','Uh-oh! Something went wrong, while setting up your account. Please reach out to customercare-falcon@rakbank.ae',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',0,NULL,1,'2020-09-02 03:34:35','2020-11-06 07:41:04'),(3,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-02 03:37:20','2020-09-02 03:37:20'),(4,'BOTTOM_OVERLAY_ERROR',NULL,'Oops! You have reached OTP limit.','Please try again after some time.',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',1,NULL,1,'2020-09-02 03:41:49','2020-09-29 09:03:10'),(5,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-02 03:41:49','2020-09-02 03:41:49'),(6,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-02 03:41:49','2020-09-02 03:41:49'),(7,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-02 03:41:49','2020-09-02 03:41:49'),(8,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-02 03:41:49','2020-09-15 11:45:22'),(11,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-15 11:45:22','2020-09-15 11:45:22'),(12,'INLINE_ERROR_LIST',NULL,'','',NULL,'',NULL,NULL,1,'2020-09-16 03:33:39','2020-09-29 09:37:29'),(13,'BOTTOM_OVERLAY_ERROR',NULL,'Email Not registered','Uh-oh! Something went wrong, while setting up your account. Please reach out to customercare-falcon@rakbank.ae',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',0,NULL,1,'2020-09-16 04:58:41','2020-11-06 07:41:04'),(14,'BOTTOM_OVERLAY_ERROR',NULL,'You are blocked for some time.','Please try again later.',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',1,NULL,1,'2020-09-29 09:19:56','2020-09-29 09:20:37'),(15,'INLINE_ERROR_LIST',NULL,'',NULL,NULL,NULL,NULL,NULL,1,'2020-09-29 09:32:47','2020-09-29 09:34:02'),(16,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-29 10:15:50','2020-09-29 10:15:57'),(17,'BOTTOM_OVERLAY_ERROR',NULL,'Invalid Biometric ','Please try to login using Email and Password.',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',1,NULL,1,'2020-09-29 10:15:53','2020-09-29 10:19:57'),(18,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-09-30 11:28:21','2020-09-30 11:28:33'),(19,'BOTTOM_OVERLAY_ERROR',NULL,'Invalid Password','Password should not contain more than 2 consecutive numbers',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',0,NULL,1,'2020-11-05 08:29:50','2020-11-06 08:13:39'),(20,'BOTTOM_OVERLAY_ERROR',NULL,'Invalid Password','Password should not contain more than 2 repetitive numbers',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',0,NULL,1,'2020-11-05 08:29:50','2020-11-06 08:13:39'),(21,'INLINE_ERROR_LIST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-11-11 04:13:57','2020-11-11 04:13:57'),(22,'BOTTOM_OVERLAY_ERROR',NULL,'You entered 3 consecutive wrong MPIN','You are logged out from the application as you entered 3 consecutive wrong MPIN',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',1,NULL,1,'2020-11-12 08:36:32','2020-11-12 10:01:11'),(23,'BOTTOM_OVERLAY_ERROR',NULL,'You have been blocked.','You have been blocked from using the Falcon app due to some reasons.',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',1,NULL,1,'2020-11-12 16:49:15','2020-11-12 16:49:15'),(24,'BOTTOM_OVERLAY_ERROR',NULL,'Oops!','There was a problem resetting your password. Please try again.',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',1,NULL,1,'2020-11-19 05:24:19','2020-11-19 06:26:58'),(25,'BOTTOM_OVERLAY_ERROR',NULL,'Sorry!','There was an error proceeding with the given details. Please check or try again.',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',1,NULL,1,'2020-11-19 08:53:26','2020-11-19 08:53:26'),(26,'BOTTOM_OVERLAY_ERROR',NULL,'Oops!','There was a problem saving your MPIN. Please try again.',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',1,NULL,1,'2020-11-19 09:56:47','2020-11-19 09:56:47'),(27,'BOTTOM_OVERLAY_ERROR',NULL,'Oops!','There was a problem saving your preferences. Please try again.',600,'https://i.imgur.com/jPTBcHB.png%5B/img%5D',1,NULL,1,'2020-11-19 10:01:51','2020-11-19 10:01:51');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` VALUES (1,'PIFJPzVzVeuA0XtMq66orA==','XSKpMJ2fyRkCuVxBIQT5kw==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 10:13:52',1,1,'2020-11-26 10:04:29','fbbc02a1-a84a-49be-a5f5-7fd404e0c4f4',621513626088504,0,'2020-11-26 10:03:52','2020-11-26 10:04:29'),(2,'YJ/OQCLD120V/qLlCB6egQ==','Aim8CjSAYhpd4v23hW90GQ==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 10:19:41',1,1,'2020-11-26 10:09:45','764809ac-c048-4c17-8f8b-ec6c056ffa6a',3923664514929696,0,'2020-11-26 10:09:41','2020-11-26 10:09:44'),(3,'lyxYFEvwXB1BFw+EfEAIj5o5ov7utCV1aOi5Hxy4t5c=','CXgYqA5uAarHLp5UYCiUOg==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 10:30:50',1,1,'2020-11-26 10:20:57','1fab0dc9-8d29-4465-9d9b-d0881236c0e3',5983579095642,0,'2020-11-26 10:20:50','2020-11-26 10:20:57'),(4,'zKosigZcoFPxu1/RiJZeDA==','8nm3uGJbKIFwnOQ0KOt1xg==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 10:31:27',2,1,'2020-11-26 10:21:34','3bc6243b-d5c8-44b5-9d8f-2adee9c9c466',5543019797470288,0,'2020-11-26 10:21:27','2020-11-26 10:21:34'),(5,'sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=','9N5S6MbHjqGMIrf7JjAw1g==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 10:31:34',1,1,'2020-11-26 10:21:47','817fa19a-e4ed-48aa-bd29-857a7486624b',62475527733180,0,'2020-11-26 10:21:33','2020-11-26 10:21:46'),(6,'aCxZCZnkH/L/7ubgtISQCla42ocT5ZVEVB5d7vPB1rM=','c1enOwvD5jjy9WM8cGle7w==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 11:11:04',1,1,'2020-11-26 11:01:08','bce95d84-6d16-4b1f-97fa-800d573889dc',584833460119469,0,'2020-11-26 11:01:04','2020-11-26 11:01:08'),(7,'XjqxeyNiLjuT9i2n+4gCuiK57VNP1cr4UC5HIDWy45E=','3d/fQXq13d+g0hK9KSIu1A==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 11:59:18',1,1,'2020-11-26 11:49:21','b72b9c71-9514-4a8f-beda-4238e7b89db2',1508478077777698,0,'2020-11-26 11:49:18','2020-11-26 11:49:21'),(8,'PXNSj9ggHyZdWLbZn72Z4Zo5ov7utCV1aOi5Hxy4t5c=','tPDQkgr4jPqNKXNtnKNeBA==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 12:46:10',1,1,'2020-11-26 12:36:13','8b0a2bb1-821e-48a9-8084-64757aa16fd1',47865018619215,0,'2020-11-26 12:36:09','2020-11-26 12:36:13'),(9,'cfUaIV2Jukov6E4FRa6GYrmkuldfURc0HEu5F8Z4Emc=','bMlgBSzzarQuwPhxjtDP5A==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 14:00:45',1,1,'2020-11-26 13:50:49','cc12067f-fccb-4979-be1c-d2eccdcded39',86722361481071,0,'2020-11-26 13:50:45','2020-11-26 13:50:48'),(10,'ZfnnsNG6ID8ycgqhGnyAl1a42ocT5ZVEVB5d7vPB1rM=','KNuSyieoTjYFpNZyFb5zWA==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 14:02:40',1,0,NULL,'a3fff95d-4f06-4d19-830e-d6d413773bb9',162515476663457,0,'2020-11-26 13:52:40','2020-11-26 13:55:33'),(11,'ZfnnsNG6ID8ycgqhGnyAl1a42ocT5ZVEVB5d7vPB1rM=','KNuSyieoTjYFpNZyFb5zWA==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 14:05:34',2,1,'2020-11-26 14:03:05','73b5a959-66e4-4b9e-8331-0984e5bd5ac6',4457830289537,0,'2020-11-26 13:55:33','2020-11-26 14:03:05'),(12,'txb7wg4FmGdfUJRhtkyc/po5ov7utCV1aOi5Hxy4t5c=','1ZD4WLPENFO4EwNhf8kmew==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 14:55:28',1,2,'2020-11-26 14:45:36','ecf52366-d1a3-4457-a938-97f84f15af37',80508950972972,0,'2020-11-26 14:45:28','2020-11-26 14:45:35'),(13,'XvM3nZAF6Fm4GVl5hlxZIFa42ocT5ZVEVB5d7vPB1rM=','uQK5pSear+pU+yd42nrQ0w==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 15:01:59',1,0,NULL,'d9f1ab2a-b5fa-4bfe-9c64-84e82f24e70e',2414147769467932,1,'2020-11-26 14:51:59','2020-11-26 14:51:59'),(14,'YJ/OQCLD120V/qLlCB6egQ==',NULL,'Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 16:03:04',1,1,'2020-11-26 15:53:06','c48f817f-ed71-412d-9be2-23608e4883bc',8638068447860,0,'2020-11-26 15:53:03','2020-11-26 15:58:36'),(15,'YJ/OQCLD120V/qLlCB6egQ==',NULL,'Gr9jPfK9fsA10yM2VqeiaA==','2020-11-26 16:08:37',1,1,'2020-11-26 15:58:38','25007476-9241-4131-8fa1-a4a656650b12',5480675864700,1,'2020-11-26 15:58:36','2020-11-26 15:58:38'),(16,'2PN/FVZan6/IRz5Swr6YjgavulodkmH7ZgQkiF4cmdo=','AyfKrN1z8CB5E8Gn+Tn8dA==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-27 07:14:14',1,1,'2020-11-27 07:04:17','8e4ca8fd-67c9-476b-aacb-6f90738269ed',815167396677695,0,'2020-11-27 07:04:13','2020-11-27 07:04:16'),(17,'gP6t6Yvpj//5i2kqMpB9vla42ocT5ZVEVB5d7vPB1rM=','NAG4Ei5HEl2XcuMbU2QZLA==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-27 09:30:28',1,1,'2020-11-27 09:20:33','6f8d7cfd-5909-4ebf-8071-8682a949ed9b',7771944850689,0,'2020-11-27 09:20:27','2020-11-27 09:20:33'),(18,'8dhh+YNqU+kc7BYBSXReXQavulodkmH7ZgQkiF4cmdo=','SdX4hWIiW97lftTGuS1qtQ==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-27 13:17:32',1,1,'2020-11-27 13:07:35','63c6b5a5-c4ac-41c4-97c3-97bbd06f14a7',1499521093347,0,'2020-11-27 13:07:31','2020-11-27 13:07:34'),(19,'alIWoQ04pT0k5HuaAA8JUQ==','6U68mdpbCSgRPL7iwpuxhA==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-27 14:02:50',1,1,'2020-11-27 13:52:51','795a0ddf-b2a5-41e7-bd74-33a64f32db37',13693274956793,0,'2020-11-27 13:52:49','2020-11-27 13:52:51'),(20,'FcURT0ODXPYr2Rzl1zbCgZo5ov7utCV1aOi5Hxy4t5c=','frY3+vJnl8PYAFyy5ycLsw==','Gr9jPfK9fsA10yM2VqeiaA==','2020-11-27 15:01:26',1,1,'2020-11-27 14:54:56','02961323-585c-4dcc-8c42-d93b3f78fb9c',67384198063403,0,'2020-11-27 14:51:25','2020-11-27 14:54:56');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_access_code`
--

LOCK TABLES `user_access_code` WRITE;
/*!40000 ALTER TABLE `user_access_code` DISABLE KEYS */;
INSERT INTO `user_access_code` VALUES (1,'oXJBSyYaWykGy3EnwWds','FAL-26d365da-c0eb-4e46-a0fe-b2e024dd1819','123456','2020-11-26 11:04:29',0,'2020-11-26 10:04:29','2020-11-26 10:04:30'),(2,'oXJBSyYaWykGy3EnwWds','FAL-6f8308e8-3686-4aba-86a1-af8c3239ee95','123456','2020-11-26 11:04:31',0,'2020-11-26 10:04:30','2020-11-26 10:06:56'),(3,'oXJBSyYaWykGy3EnwWds','FAL-bc57d279-822f-42b2-86a5-3f037a8e66c7','123456','2020-11-26 11:06:56',0,'2020-11-26 10:06:56','2020-11-26 10:23:48'),(4,'qbL5VBDJayDsPU6fF38w','FAL-ad144ca2-5dd0-4bf5-aa06-7bcf65e94626','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-26 11:09:45',0,'2020-11-26 10:09:45','2020-11-26 10:09:46'),(5,'qbL5VBDJayDsPU6fF38w','FAL-ef3b978d-e4eb-4bb2-9fc4-7b623e8cab3a','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-26 11:09:47',0,'2020-11-26 10:09:46','2020-11-26 10:11:01'),(6,'qbL5VBDJayDsPU6fF38w','FAL-ad042920-0f88-4a28-a38d-c2b13267deb2','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-26 11:11:01',0,'2020-11-26 10:11:01','2020-11-26 10:42:29'),(7,'g79OfgwqX3tbF8FujnsB','FAL-aa30dcf4-be28-4f76-a3d9-f02c21a756b7','123456','2020-11-26 11:20:58',0,'2020-11-26 10:20:57','2020-11-26 10:21:09'),(8,'g79OfgwqX3tbF8FujnsB','FAL-1e3d03ce-b963-4b28-a313-c77357a2fc22','123456','2020-11-26 11:21:10',0,'2020-11-26 10:21:09','2020-11-26 10:22:30'),(9,'YLNOgQi99wmM3VLCRs3a','FAL-90506a7b-2ef5-402e-a88f-7c8fc9e3afb1','8DC9C649-9B68-4292-B00A-81F9691E944C','2020-11-26 11:21:34',0,'2020-11-26 10:21:34','2020-11-26 10:21:41'),(10,'YLNOgQi99wmM3VLCRs3a','FAL-88aef72c-23c2-483e-85a6-21ae04e272f9','8DC9C649-9B68-4292-B00A-81F9691E944C','2020-11-26 11:21:42',0,'2020-11-26 10:21:41','2020-11-26 15:03:36'),(11,'Blc0HCswn2ecnKONeJ6n','FAL-b673b8d1-0d7e-4fa8-863d-280b071a55a8','f37253c87007dbc5','2020-11-26 11:21:47',0,'2020-11-26 10:21:46','2020-11-26 10:21:50'),(12,'Blc0HCswn2ecnKONeJ6n','FAL-5d297449-1176-4e43-8d98-07e0c6524ed5','f37253c87007dbc5','2020-11-26 11:21:51',0,'2020-11-26 10:21:50','2020-11-26 10:23:17'),(13,'g79OfgwqX3tbF8FujnsB','FAL-de911412-d037-4064-bed8-5f015fbe0800','123456','2020-11-26 11:22:30',0,'2020-11-26 10:22:30','2020-11-26 12:30:43'),(14,'Blc0HCswn2ecnKONeJ6n','FAL-d521beb2-f67d-47dd-b2c3-c07d7c3578d0','f37253c87007dbc5','2020-11-26 11:23:18',0,'2020-11-26 10:23:17','2020-11-26 10:28:37'),(15,'oXJBSyYaWykGy3EnwWds','FAL-3bec63a0-b145-460f-b3a7-c5d6d2669fa4','123456','2020-11-26 11:23:49',0,'2020-11-26 10:23:48','2020-11-26 10:38:11'),(16,'Blc0HCswn2ecnKONeJ6n','FAL-486c4397-a773-4dc9-b037-cec7c96dd807','f37253c87007dbc5','2020-11-26 11:28:37',0,'2020-11-26 10:28:37','2020-11-26 11:52:37'),(17,'oXJBSyYaWykGy3EnwWds','FAL-ceceeb28-a13a-4d9e-8a7b-eec4d7be4305','123456','2020-11-26 11:38:11',0,'2020-11-26 10:38:11','2020-11-26 14:51:23'),(18,'qbL5VBDJayDsPU6fF38w','FAL-d685bfbe-c1b5-4254-af52-b7fc9d83f34e','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-26 11:42:30',0,'2020-11-26 10:42:29','2020-11-26 11:20:26'),(19,'4D1TPV2VTVwy7yEZxHw8','FAL-d800dc40-7f9c-4aac-91d6-b288baa181ee','343593d5a2b66ca2','2020-11-26 12:01:08',0,'2020-11-26 11:01:08','2020-11-26 11:01:12'),(20,'4D1TPV2VTVwy7yEZxHw8','FAL-2d9b226c-adec-4b49-8761-ef8c326cb7ba','343593d5a2b66ca2','2020-11-26 12:01:13',0,'2020-11-26 11:01:12','2020-11-26 11:58:19'),(21,'qbL5VBDJayDsPU6fF38w','FAL-5df14c11-540f-4086-b878-b4809053800d','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-26 12:20:26',0,'2020-11-26 11:20:25','2020-11-26 14:17:03'),(22,'rXQb8F0ltDqbknJedfY1','FAL-1da79174-661a-4438-ba6e-5849ffad8a0e','2727308A-DFB3-466D-9F66-7FA26D8D561C','2020-11-26 12:49:22',0,'2020-11-26 11:49:21','2020-11-26 11:49:23'),(23,'rXQb8F0ltDqbknJedfY1','FAL-ce61f1e9-753e-425b-a728-432056706f33','2727308A-DFB3-466D-9F66-7FA26D8D561C','2020-11-26 12:49:23',0,'2020-11-26 11:49:23','2020-11-26 11:52:59'),(24,'Blc0HCswn2ecnKONeJ6n','FAL-c35ca12b-4084-40b8-8d7b-aa2933ce4c72','f37253c87007dbc5','2020-11-26 12:52:38',0,'2020-11-26 11:52:37','2020-11-26 11:52:44'),(25,'Blc0HCswn2ecnKONeJ6n','FAL-7f062138-1737-4792-88a4-f2a17b0c56d1','f37253c87007dbc5','2020-11-26 12:52:44',0,'2020-11-26 11:52:44','2020-11-26 12:11:30'),(26,'rXQb8F0ltDqbknJedfY1','FAL-624c56c1-5ed9-48a2-8e8b-de043366534d','2727308A-DFB3-466D-9F66-7FA26D8D561C','2020-11-26 12:53:00',0,'2020-11-26 11:52:59','2020-11-26 11:55:10'),(27,'rXQb8F0ltDqbknJedfY1','FAL-64e2dff1-5610-4216-9119-914f30c7eabb','2727308A-DFB3-466D-9F66-7FA26D8D561C','2020-11-26 12:55:10',0,'2020-11-26 11:55:10','2020-11-26 11:55:10'),(28,'rXQb8F0ltDqbknJedfY1','FAL-73748e4a-3530-451e-836e-cb30fa7e6354','2727308A-DFB3-466D-9F66-7FA26D8D561C','2020-11-26 12:55:10',0,'2020-11-26 11:55:10','2020-11-26 13:41:07'),(29,'4D1TPV2VTVwy7yEZxHw8','FAL-9961187b-df03-4e30-95fd-60b2cdc6707b','39482EAF-E953-449F-9A90-2A6A1FAB73EF','2020-11-26 12:58:19',0,'2020-11-26 11:58:19','2020-11-26 12:01:04'),(30,'4D1TPV2VTVwy7yEZxHw8','FAL-9edf2112-d6bf-4f6c-813b-9108b49fcc29','39482EAF-E953-449F-9A90-2A6A1FAB73EF','2020-11-26 13:01:04',1,'2020-11-26 12:01:04','2020-11-26 12:01:04'),(31,'Blc0HCswn2ecnKONeJ6n','FAL-e0654dd5-952b-4f11-a400-69c0253ac56f','f5312a03cfc04a5f','2020-11-26 13:11:31',0,'2020-11-26 12:11:30','2020-11-26 12:19:32'),(32,'Blc0HCswn2ecnKONeJ6n','FAL-d7705fbd-387d-4733-83f9-6f905f30db56','f5312a03cfc04a5f','2020-11-26 13:19:33',0,'2020-11-26 12:19:32','2020-11-27 05:56:59'),(33,'g79OfgwqX3tbF8FujnsB','FAL-626eaeef-4f93-4652-8a4b-4d9c400ce9c4','123456','2020-11-26 13:30:43',1,'2020-11-26 12:30:43','2020-11-26 12:30:43'),(34,'M94hoDVb5O3M992ZvzYC','FAL-2f0a9483-cb59-46be-a072-ad5de469de08','6d40118819c60159','2020-11-26 13:36:13',0,'2020-11-26 12:36:13','2020-11-26 12:36:14'),(35,'M94hoDVb5O3M992ZvzYC','FAL-8d50b796-19b0-4dc3-b675-9170102e138b','6d40118819c60159','2020-11-26 13:36:14',0,'2020-11-26 12:36:14','2020-11-27 06:07:13'),(36,'rXQb8F0ltDqbknJedfY1','FAL-f96dde1c-a749-4f27-ba71-ab745f6edeeb','2727308A-DFB3-466D-9F66-7FA26D8D561C','2020-11-26 14:41:08',0,'2020-11-26 13:41:07','2020-11-26 13:44:58'),(37,'rXQb8F0ltDqbknJedfY1','FAL-b7777348-a068-43e0-84e6-5246df78218d','2727308A-DFB3-466D-9F66-7FA26D8D561C','2020-11-26 14:44:59',0,'2020-11-26 13:44:58','2020-11-26 13:48:08'),(38,'rXQb8F0ltDqbknJedfY1','FAL-bc0521b4-36cc-43d3-b64e-546c9ed66fa4','2727308A-DFB3-466D-9F66-7FA26D8D561C','2020-11-26 14:48:08',0,'2020-11-26 13:48:08','2020-11-26 14:47:48'),(39,'N2w0w5R5Spb7Z2pJsz4R','FAL-ccf6344b-58f8-4202-8745-15dd8df13c21','3e2562d8792a4754','2020-11-26 14:50:49',0,'2020-11-26 13:50:48','2020-11-26 13:50:50'),(40,'N2w0w5R5Spb7Z2pJsz4R','FAL-9fc50b4b-e8d9-4074-bc44-c6a87d51fbec','3e2562d8792a4754','2020-11-26 14:50:50',0,'2020-11-26 13:50:50','2020-11-26 14:31:30'),(41,'lNkxpZWmDzqWnlVTItaP','FAL-f5df0a5d-3472-44bb-8805-c8acab53a5d3','343593d5a2b66ca2','2020-11-26 15:03:05',0,'2020-11-26 14:03:05','2020-11-26 14:03:08'),(42,'lNkxpZWmDzqWnlVTItaP','FAL-390dea06-3779-4fca-9619-d9677db4b4fc','343593d5a2b66ca2','2020-11-26 15:03:09',0,'2020-11-26 14:03:08','2020-11-26 14:09:34'),(43,'lNkxpZWmDzqWnlVTItaP','FAL-10d6fbb5-a85c-4388-b825-8868aa92fcd0','343593d5a2b66ca2','2020-11-26 15:09:35',0,'2020-11-26 14:09:34','2020-11-26 14:15:21'),(44,'lNkxpZWmDzqWnlVTItaP','FAL-f58143df-9352-4a1a-a88f-d3a1630c6c4d','343593d5a2b66ca2','2020-11-26 15:15:21',0,'2020-11-26 14:15:21','2020-11-26 14:16:16'),(45,'lNkxpZWmDzqWnlVTItaP','FAL-65060ce6-834b-4bdc-8d72-6062d7dfd7b2','343593d5a2b66ca2','2020-11-26 15:16:16',0,'2020-11-26 14:16:16','2020-11-26 14:27:14'),(46,'qbL5VBDJayDsPU6fF38w','FAL-893a631b-bf15-40b8-8597-89189fd09c34','343593d5a2b66ca2','2020-11-26 15:17:03',0,'2020-11-26 14:17:03','2020-11-26 14:18:15'),(47,'qbL5VBDJayDsPU6fF38w','FAL-94b088db-a462-45f7-944e-8330cefed0bb','343593d5a2b66ca2','2020-11-26 15:18:16',0,'2020-11-26 14:18:15','2020-11-26 14:19:05'),(48,'qbL5VBDJayDsPU6fF38w','FAL-45286f01-d630-43c7-ad5b-8ed2020c5879','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-26 15:19:05',0,'2020-11-26 14:19:05','2020-11-26 15:47:00'),(49,'lNkxpZWmDzqWnlVTItaP','FAL-93b8fb8d-c188-4676-90cd-766e03e294d0','343593d5a2b66ca2','2020-11-26 15:27:15',0,'2020-11-26 14:27:14','2020-11-26 15:16:42'),(50,'N2w0w5R5Spb7Z2pJsz4R','FAL-89ee358f-94d6-4af7-a7ef-38b09dd2b211','3e2562d8792a4754','2020-11-26 15:31:31',0,'2020-11-26 14:31:30','2020-11-26 17:19:00'),(51,'U2IJSr55BZg4aZEJOtow','FAL-cc43d13f-8a3f-4096-b42c-8d1d5684da24','5fa63079df5227e7','2020-11-26 15:45:36',0,'2020-11-26 14:45:35','2020-11-26 14:45:41'),(52,'U2IJSr55BZg4aZEJOtow','FAL-dc30c470-0e4e-42f6-b055-87524c173791','5fa63079df5227e7','2020-11-26 15:45:41',0,'2020-11-26 14:45:41','2020-11-26 14:49:01'),(53,'rXQb8F0ltDqbknJedfY1','FAL-bb20ab01-3f3b-4645-9ac2-b61479880e03','2727308A-DFB3-466D-9F66-7FA26D8D561C','2020-11-26 15:47:48',1,'2020-11-26 14:47:48','2020-11-26 14:47:48'),(54,'U2IJSr55BZg4aZEJOtow','FAL-dbef2224-b809-404a-8923-336cbaf0d5b4','5fa63079df5227e7','2020-11-26 15:49:02',0,'2020-11-26 14:49:01','2020-11-26 15:01:11'),(55,'oXJBSyYaWykGy3EnwWds','FAL-b32c9207-d704-42de-9883-8e544a72b10b','123456','2020-11-26 15:51:23',0,'2020-11-26 14:51:23','2020-11-26 14:52:03'),(56,'oXJBSyYaWykGy3EnwWds','FAL-705485e8-4eed-4dd1-ad44-c3b3d48970e1','123456','2020-11-26 15:52:04',0,'2020-11-26 14:52:03','2020-11-27 06:33:30'),(57,'U2IJSr55BZg4aZEJOtow','FAL-3a377e9f-2dfe-4049-8602-c7dcb89fac00','5fa63079df5227e7','2020-11-26 16:01:12',0,'2020-11-26 15:01:11','2020-11-26 15:06:10'),(58,'YLNOgQi99wmM3VLCRs3a','FAL-78d36c70-7cd7-4e66-b615-a8d180c03dc0','8DC9C649-9B68-4292-B00A-81F9691E944C','2020-11-26 16:03:36',0,'2020-11-26 15:03:36','2020-11-26 15:03:37'),(59,'YLNOgQi99wmM3VLCRs3a','FAL-d945e2b2-7d02-4ed3-a0aa-b6bed79fc27b','8DC9C649-9B68-4292-B00A-81F9691E944C','2020-11-26 16:03:38',1,'2020-11-26 15:03:37','2020-11-26 15:03:37'),(60,'U2IJSr55BZg4aZEJOtow','FAL-afd0a0e4-fd92-4dad-97ee-956a007f94e9','5fa63079df5227e7','2020-11-26 16:06:11',0,'2020-11-26 15:06:10','2020-11-26 15:54:23'),(61,'lNkxpZWmDzqWnlVTItaP','FAL-50765cd0-dd71-4e5a-9847-cb7e5c549ac5','343593d5a2b66ca2','2020-11-26 16:16:43',1,'2020-11-26 15:16:42','2020-11-26 15:16:42'),(62,'qbL5VBDJayDsPU6fF38w','FAL-182db2f0-f9ae-4409-a44b-5531ca768b3c','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-26 16:47:01',0,'2020-11-26 15:47:00','2020-11-26 15:48:35'),(63,'qbL5VBDJayDsPU6fF38w','FAL-68eb58bf-953d-41a2-b4e7-281137cc3c6d','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-26 16:48:35',0,'2020-11-26 15:48:35','2020-11-26 15:48:35'),(64,'qbL5VBDJayDsPU6fF38w','FAL-88773522-e102-47f7-9b6c-a9e4fd35db2a','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-26 16:48:35',0,'2020-11-26 15:48:35','2020-11-27 15:09:31'),(65,'U2IJSr55BZg4aZEJOtow','FAL-510ae8f2-152a-44f6-b870-1e817d7dc37f','5fa63079df5227e7','2020-11-26 16:54:23',1,'2020-11-26 15:54:23','2020-11-26 15:54:23'),(66,'N2w0w5R5Spb7Z2pJsz4R','FAL-4b583d64-dc6d-4bf3-846a-2f1f521dfd2d','3e2562d8792a4754','2020-11-26 18:19:01',1,'2020-11-26 17:19:00','2020-11-26 17:19:00'),(67,'Blc0HCswn2ecnKONeJ6n','FAL-08084067-a11d-49c5-8c25-6acee960de8d','f37253c87007dbc5','2020-11-27 06:56:59',0,'2020-11-27 05:56:59','2020-11-27 06:10:25'),(68,'M94hoDVb5O3M992ZvzYC','FAL-00ddd5de-4e7a-41d0-8447-c38e664bcca8','4d21657718b6886','2020-11-27 07:07:14',0,'2020-11-27 06:07:13','2020-11-27 06:11:35'),(69,'Blc0HCswn2ecnKONeJ6n','FAL-70fe9fd7-ea95-4de4-9f7a-8340dd829446','f37253c87007dbc5','2020-11-27 07:10:25',0,'2020-11-27 06:10:25','2020-11-27 08:00:53'),(70,'M94hoDVb5O3M992ZvzYC','FAL-f010143d-da7c-46d8-ab87-64169987cb0c','4d21657718b6886','2020-11-27 07:11:36',0,'2020-11-27 06:11:35','2020-11-27 06:15:22'),(71,'M94hoDVb5O3M992ZvzYC','FAL-ad7bc17b-6ac2-4986-a697-bd244fe8a866','4d21657718b6886','2020-11-27 07:15:22',0,'2020-11-27 06:15:22','2020-11-27 06:50:48'),(72,'oXJBSyYaWykGy3EnwWds','FAL-b42508ce-e34d-4979-8eec-a64af69637d1','123456','2020-11-27 07:33:31',0,'2020-11-27 06:33:30','2020-11-27 08:59:47'),(73,'M94hoDVb5O3M992ZvzYC','FAL-e1e89c8e-798e-4890-bc4a-185c0f60177b','4d21657718b6886','2020-11-27 07:50:49',0,'2020-11-27 06:50:48','2020-11-27 10:00:19'),(74,'M94hoDVb5O3M992ZvzYC','FAL-f4b8e4d2-0dd9-4e87-a527-4c183aec440e','4d21657718b6886','2020-11-27 07:50:49',1,'2020-11-27 06:50:48','2020-11-27 06:50:48'),(75,'4Ap9FocJf6EjtSSbsetK','FAL-f7c849b3-99ef-4a6c-b150-2b1ddafcf7e3','479b3987b6465737','2020-11-27 08:04:17',0,'2020-11-27 07:04:16','2020-11-27 07:04:18'),(76,'4Ap9FocJf6EjtSSbsetK','FAL-87860cf4-19f1-46e2-9c05-c8953aaee1c3','479b3987b6465737','2020-11-27 08:04:18',0,'2020-11-27 07:04:18','2020-11-27 07:11:39'),(77,'4Ap9FocJf6EjtSSbsetK','FAL-5caec4bb-fe76-4b03-a9f8-22602ba9ee08','479b3987b6465737','2020-11-27 08:11:39',0,'2020-11-27 07:11:39','2020-11-27 07:14:18'),(78,'4Ap9FocJf6EjtSSbsetK','FAL-4303dc3a-d126-4f10-8147-defd04e45c27','479b3987b6465737','2020-11-27 08:14:19',0,'2020-11-27 07:14:18','2020-11-27 07:24:27'),(79,'4Ap9FocJf6EjtSSbsetK','FAL-8157a036-96fc-4a1f-a1e6-bc1ed91f2106','479b3987b6465737','2020-11-27 08:24:27',0,'2020-11-27 07:24:27','2020-11-27 07:26:45'),(80,'4Ap9FocJf6EjtSSbsetK','FAL-7b534a66-7db7-4e06-b748-53c575c3f0f5','479b3987b6465737','2020-11-27 08:26:45',0,'2020-11-27 07:26:45','2020-11-27 07:33:31'),(81,'4Ap9FocJf6EjtSSbsetK','FAL-bc003073-b3ee-4c4e-8714-947dfd91277d','479b3987b6465737','2020-11-27 08:33:32',0,'2020-11-27 07:33:31','2020-11-27 14:08:06'),(82,'Blc0HCswn2ecnKONeJ6n','FAL-c21924da-01a2-4a36-9ae0-5a72722ae463','d6c2742f79bafbc7','2020-11-27 09:00:54',0,'2020-11-27 08:00:53','2020-11-27 09:05:11'),(83,'oXJBSyYaWykGy3EnwWds','FAL-c7d68666-4463-48ba-a4e5-8dfba2ac1b6d','123456','2020-11-27 09:59:48',0,'2020-11-27 08:59:47','2020-11-27 10:05:37'),(84,'Blc0HCswn2ecnKONeJ6n','FAL-fe4456e2-3436-4789-83b6-1648e38f74e3','d6c2742f79bafbc7','2020-11-27 10:05:11',0,'2020-11-27 09:05:11','2020-11-27 09:14:25'),(85,'Blc0HCswn2ecnKONeJ6n','FAL-80327b11-6f1e-492e-9236-761f8f65c90e','d6c2742f79bafbc7','2020-11-27 10:14:26',0,'2020-11-27 09:14:25','2020-11-27 09:15:46'),(86,'Blc0HCswn2ecnKONeJ6n','FAL-07c9260f-7e50-4c86-bc8d-44cc61f70280','d6c2742f79bafbc7','2020-11-27 10:15:46',0,'2020-11-27 09:15:46','2020-11-27 10:04:14'),(87,'vbi16wy7hpXorfke22xl','FAL-a27f9b09-b99f-4117-84e0-73462b8b0002','4d21657718b6886','2020-11-27 10:20:33',0,'2020-11-27 09:20:33','2020-11-27 09:20:44'),(88,'vbi16wy7hpXorfke22xl','FAL-2f2fa70e-4701-42cf-831d-27c54532bccd','4d21657718b6886','2020-11-27 10:20:45',0,'2020-11-27 09:20:44','2020-11-27 09:23:57'),(89,'vbi16wy7hpXorfke22xl','FAL-620b02de-7977-4516-b44c-002cde24f17c','4d21657718b6886','2020-11-27 10:23:58',0,'2020-11-27 09:23:57','2020-11-27 09:49:27'),(90,'vbi16wy7hpXorfke22xl','FAL-d9933e5e-a338-4e6f-8914-1df37b5b6e5c','4d21657718b6886','2020-11-27 10:49:28',0,'2020-11-27 09:49:27','2020-11-27 10:49:14'),(91,'Blc0HCswn2ecnKONeJ6n','FAL-888dc1c6-277c-46f9-8ba0-b5cb6408896a','d6c2742f79bafbc7','2020-11-27 11:04:14',0,'2020-11-27 10:04:14','2020-11-27 10:05:10'),(92,'Blc0HCswn2ecnKONeJ6n','FAL-afef42c8-20ac-4f30-bf60-ecd58378404c','d6c2742f79bafbc7','2020-11-27 11:05:11',0,'2020-11-27 10:05:10','2020-11-27 10:13:32'),(93,'oXJBSyYaWykGy3EnwWds','FAL-fb3a921c-4a3c-4239-b292-6ae9a5f1a0ec','123456','2020-11-27 11:05:38',0,'2020-11-27 10:05:37','2020-11-27 13:49:54'),(94,'Blc0HCswn2ecnKONeJ6n','FAL-fad5465e-3690-4fba-95f9-ef190eb88c2f','09B97A1E-11B1-4744-A13B-C7E56B06E8EF','2020-11-27 11:13:33',0,'2020-11-27 10:13:32','2020-11-27 10:25:42'),(95,'Blc0HCswn2ecnKONeJ6n','FAL-e764022b-1286-4290-a4c8-851b2a2100b0','09B97A1E-11B1-4744-A13B-C7E56B06E8EF','2020-11-27 11:25:43',0,'2020-11-27 10:25:42','2020-11-27 10:36:58'),(96,'Blc0HCswn2ecnKONeJ6n','FAL-be059105-0b13-4832-beda-c2f0bbd4faac','166F73CD-EC62-4D9F-9E80-439072647B6B','2020-11-27 11:36:59',0,'2020-11-27 10:36:58','2020-11-27 10:38:28'),(97,'Blc0HCswn2ecnKONeJ6n','FAL-498bd145-4366-4022-b9f6-e507d720c8f9','166F73CD-EC62-4D9F-9E80-439072647B6B','2020-11-27 11:38:29',0,'2020-11-27 10:38:28','2020-11-27 10:38:59'),(98,'Blc0HCswn2ecnKONeJ6n','FAL-8ee91db3-fbd5-4e5a-9d27-755aeacf8da7','166F73CD-EC62-4D9F-9E80-439072647B6B','2020-11-27 11:39:00',0,'2020-11-27 10:38:59','2020-11-27 11:22:20'),(99,'vbi16wy7hpXorfke22xl','FAL-fa713293-56e0-4a02-84a0-9f8549be777f','4d21657718b6886','2020-11-27 11:49:14',1,'2020-11-27 10:49:14','2020-11-27 10:49:14'),(100,'Blc0HCswn2ecnKONeJ6n','FAL-04039f71-086e-4c22-8771-f63e1c542471','21143E5E-CD27-4A01-9D0C-828318C675D1','2020-11-27 12:22:21',0,'2020-11-27 11:22:20','2020-11-27 11:22:21'),(101,'Blc0HCswn2ecnKONeJ6n','FAL-1bab90e2-5d66-42f8-a7ad-fed42196e296','21143E5E-CD27-4A01-9D0C-828318C675D1','2020-11-27 12:22:22',0,'2020-11-27 11:22:21','2020-11-27 11:23:37'),(102,'Blc0HCswn2ecnKONeJ6n','FAL-fd5ab97a-277c-48d2-a281-162dfa448e29','21143E5E-CD27-4A01-9D0C-828318C675D1','2020-11-27 12:23:38',0,'2020-11-27 11:23:37','2020-11-27 11:36:28'),(103,'Blc0HCswn2ecnKONeJ6n','FAL-f36a2a6c-5dce-4752-8761-c1bace9adbec','6063856f69b26dea','2020-11-27 12:36:28',0,'2020-11-27 11:36:28','2020-11-27 11:40:42'),(104,'Blc0HCswn2ecnKONeJ6n','FAL-6a32f009-852f-41cd-afdc-bf91c044b409','6063856f69b26dea','2020-11-27 12:40:43',0,'2020-11-27 11:40:42','2020-11-27 11:58:02'),(105,'Blc0HCswn2ecnKONeJ6n','FAL-449181f4-40c9-42a4-9d90-1f5f49e4fc2d','EFF62CFF-274E-4722-8558-E754B4AC3E8C','2020-11-27 12:58:03',0,'2020-11-27 11:58:02','2020-11-27 11:59:16'),(106,'Blc0HCswn2ecnKONeJ6n','FAL-f78ce098-aada-4835-ad04-3049b7421f3a','5b3c1ec9d286a176','2020-11-27 12:59:17',0,'2020-11-27 11:59:16','2020-11-27 12:12:05'),(107,'Blc0HCswn2ecnKONeJ6n','FAL-27e743e7-c22a-4799-8a14-a783710483a8','EFF62CFF-274E-4722-8558-E754B4AC3E8C','2020-11-27 13:12:06',0,'2020-11-27 12:12:05','2020-11-27 12:59:37'),(108,'Blc0HCswn2ecnKONeJ6n','FAL-54af7ec3-2141-4035-876e-1d4d4f5c18d5','3dcbfba6ee564788','2020-11-27 13:59:37',0,'2020-11-27 12:59:37','2020-11-27 13:00:41'),(109,'Blc0HCswn2ecnKONeJ6n','FAL-6c88ceac-5b3b-4318-8183-1d4d2fc73050','3dcbfba6ee564788','2020-11-27 14:00:42',0,'2020-11-27 13:00:41','2020-11-27 15:46:49'),(110,'WpfJ2XateRPCFhILGYD3','FAL-c51a9c0a-b26a-4112-8562-8626dcde0de2','6d40118819c60159','2020-11-27 14:07:35',0,'2020-11-27 13:07:34','2020-11-27 13:07:35'),(111,'WpfJ2XateRPCFhILGYD3','FAL-ba2075ad-f5a1-45d3-8a43-7937666af209','6d40118819c60159','2020-11-27 14:07:36',0,'2020-11-27 13:07:35','2020-11-27 13:09:21'),(112,'WpfJ2XateRPCFhILGYD3','FAL-3098effd-da36-4d34-aba1-003008398855','6d40118819c60159','2020-11-27 14:09:21',0,'2020-11-27 13:09:21','2020-11-27 13:10:15'),(113,'WpfJ2XateRPCFhILGYD3','FAL-8e73b7a1-c04b-431a-a1f5-2b580af927a7','6d40118819c60159','2020-11-27 14:10:15',0,'2020-11-27 13:10:15','2020-11-27 13:10:25'),(114,'WpfJ2XateRPCFhILGYD3','FAL-8dc870c5-f656-41aa-b93e-008321363e72','6d40118819c60159','2020-11-27 14:10:26',0,'2020-11-27 13:10:25','2020-11-27 13:19:46'),(115,'WpfJ2XateRPCFhILGYD3','FAL-75296637-bbe5-4e50-a380-9a8ade52e352','6d40118819c60159','2020-11-27 14:19:47',0,'2020-11-27 13:19:46','2020-11-27 13:19:59'),(116,'WpfJ2XateRPCFhILGYD3','FAL-be8b20e0-91c7-4020-b31a-bd0de92df5af','6d40118819c60159','2020-11-27 14:19:59',0,'2020-11-27 13:19:59','2020-11-27 13:20:25'),(117,'WpfJ2XateRPCFhILGYD3','FAL-84fd5eb3-86cc-421f-b4de-4b0c45fc4a63','6d40118819c60159','2020-11-27 14:20:26',0,'2020-11-27 13:20:25','2020-11-27 13:31:28'),(118,'WpfJ2XateRPCFhILGYD3','FAL-e58d628a-9e04-4e5a-a3c6-97e2c07ffb97','6d40118819c60159','2020-11-27 14:31:28',0,'2020-11-27 13:31:28','2020-11-27 14:15:35'),(119,'oXJBSyYaWykGy3EnwWds','FAL-c941f38c-ae5a-4753-9e67-f56bdd9e40dc','123456','2020-11-27 14:49:54',0,'2020-11-27 13:49:54','2020-11-27 13:50:35'),(120,'oXJBSyYaWykGy3EnwWds','FAL-69414b94-b9f0-49ac-ab64-4e41e1e5081b','123456','2020-11-27 14:50:36',0,'2020-11-27 13:50:35','2020-11-27 16:01:18'),(121,'kOPSubuP9WcoBevFHq5k','FAL-fef506cc-fcb5-4129-9049-de233c1d84b6','6d40118819c60159','2020-11-27 14:52:52',0,'2020-11-27 13:52:51','2020-11-27 13:52:52'),(122,'kOPSubuP9WcoBevFHq5k','FAL-73e4710c-58f2-456d-b1e5-a273113aca73','6d40118819c60159','2020-11-27 14:52:53',1,'2020-11-27 13:52:52','2020-11-27 13:52:52'),(123,'4Ap9FocJf6EjtSSbsetK','FAL-93c368f3-ea6a-4dc8-8fce-c3fdde8b6bab','479b3987b6465737','2020-11-27 15:08:07',1,'2020-11-27 14:08:06','2020-11-27 14:08:06'),(124,'WpfJ2XateRPCFhILGYD3','FAL-d19d5409-111c-4873-a2f0-1d0fbf29d4e2','bc215a790601c8f8','2020-11-27 15:15:36',1,'2020-11-27 14:15:35','2020-11-27 14:15:35'),(125,'WnpKnw0wdMVSzN3KrGa7','FAL-69123066-fc9d-4733-ada3-fac413c5673e','123456','2020-11-27 15:54:57',0,'2020-11-27 14:54:57','2020-11-27 14:55:02'),(126,'WnpKnw0wdMVSzN3KrGa7','FAL-09706236-0650-4464-a45a-2bfb3d6ca959','123456','2020-11-27 15:55:02',0,'2020-11-27 14:55:02','2020-11-27 15:02:18'),(127,'WnpKnw0wdMVSzN3KrGa7','FAL-a73afcd2-e675-44fb-8aaa-a28e218a4a56','0f75e71e3ed7e071','2020-11-27 16:02:18',0,'2020-11-27 15:02:18','2020-11-27 15:03:16'),(128,'WnpKnw0wdMVSzN3KrGa7','FAL-a47c6dba-da06-4658-9b4d-7fbc9dc63618','0f75e71e3ed7e071','2020-11-27 16:03:16',1,'2020-11-27 15:03:16','2020-11-27 15:03:16'),(129,'qbL5VBDJayDsPU6fF38w','FAL-7b33e212-39be-4b55-86be-e27117e3ecad','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-27 16:09:31',0,'2020-11-27 15:09:31','2020-11-27 15:09:55'),(130,'qbL5VBDJayDsPU6fF38w','FAL-1dbbc8cc-4152-4af9-9772-d420f5ba4c34','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-27 16:09:55',0,'2020-11-27 15:09:55','2020-11-27 15:10:06'),(131,'qbL5VBDJayDsPU6fF38w','FAL-c0dfa133-e6a3-4417-b314-433c36d96331','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-27 16:10:07',0,'2020-11-27 15:10:06','2020-11-27 15:10:17'),(132,'qbL5VBDJayDsPU6fF38w','FAL-6ff722d7-3b18-4037-9cd5-eb937a9b9ca5','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-27 16:10:18',0,'2020-11-27 15:10:17','2020-11-27 15:10:41'),(133,'qbL5VBDJayDsPU6fF38w','FAL-498c9d88-f9d4-456e-8a28-dbb271f16c88','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','2020-11-27 16:10:41',1,'2020-11-27 15:10:41','2020-11-27 15:10:41'),(134,'Blc0HCswn2ecnKONeJ6n','FAL-9824a24c-c34b-477a-a877-015a8b435644','EFF62CFF-274E-4722-8558-E754B4AC3E8C','2020-11-27 16:46:50',0,'2020-11-27 15:46:49','2020-11-27 15:47:13'),(135,'Blc0HCswn2ecnKONeJ6n','FAL-e65072c0-cb14-42b5-b344-1c24dea760c5','EFF62CFF-274E-4722-8558-E754B4AC3E8C','2020-11-27 16:47:14',0,'2020-11-27 15:47:13','2020-11-27 15:53:42'),(136,'Blc0HCswn2ecnKONeJ6n','FAL-c2ce2799-178c-46bd-a81a-4c0e3646fcc0','d6c2742f79bafbc7','2020-11-27 16:53:42',0,'2020-11-27 15:53:42','2020-11-27 15:54:06'),(137,'Blc0HCswn2ecnKONeJ6n','FAL-bce03ff1-ad73-4dc9-80c3-b036d51c2227','d6c2742f79bafbc7','2020-11-27 16:54:07',0,'2020-11-27 15:54:06','2020-11-27 16:02:23'),(138,'oXJBSyYaWykGy3EnwWds','FAL-d001ad25-df38-407d-9987-b123f21d1fd4','123456','2020-11-27 17:01:19',1,'2020-11-27 16:01:18','2020-11-27 16:01:18'),(139,'Blc0HCswn2ecnKONeJ6n','FAL-759489df-88fb-4a02-a12a-cee86a61bcbc','d6c2742f79bafbc7','2020-11-27 17:02:23',0,'2020-11-27 16:02:23','2020-11-27 16:07:20'),(140,'Blc0HCswn2ecnKONeJ6n','FAL-32c5260f-c753-4c04-8b97-90d3288bf8f7','d6c2742f79bafbc7','2020-11-27 17:07:20',0,'2020-11-27 16:07:20','2020-11-27 16:24:10'),(141,'Blc0HCswn2ecnKONeJ6n','FAL-4c723cc4-7862-4e5d-a2d5-d2209e13d394','84CF95DF-6346-4FC8-AFA8-F1DA45AD9C9D','2020-11-27 17:24:11',0,'2020-11-27 16:24:10','2020-11-27 16:49:42'),(142,'Blc0HCswn2ecnKONeJ6n','FAL-03e6bc60-c77e-4bf5-ab83-f5e1fc1301c9','d6c2742f79bafbc7','2020-11-27 17:49:42',0,'2020-11-27 16:49:42','2020-11-27 16:51:49'),(143,'Blc0HCswn2ecnKONeJ6n','FAL-3c5100db-4cec-4d46-ba26-3c4e998a6409','84CF95DF-6346-4FC8-AFA8-F1DA45AD9C9D','2020-11-27 17:51:50',0,'2020-11-27 16:51:49','2020-11-27 16:56:17'),(144,'Blc0HCswn2ecnKONeJ6n','FAL-dc675ddc-2766-44e2-8129-aa8646b5ff1c','84CF95DF-6346-4FC8-AFA8-F1DA45AD9C9D','2020-11-27 17:56:18',0,'2020-11-27 16:56:17','2020-11-27 16:57:51'),(145,'Blc0HCswn2ecnKONeJ6n','FAL-f4f419aa-cfdb-4b69-be2a-1d3953b2d8c0','84CF95DF-6346-4FC8-AFA8-F1DA45AD9C9D','2020-11-27 17:57:51',1,'2020-11-27 16:57:51','2020-11-27 16:57:51');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES (1,'oXJBSyYaWykGy3EnwWds','PIFJPzVzVeuA0XtMq66orA==','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','i/JZO4gdqitVHdYPTp6jTueIRL8PB+RwkBKPi3jf3PSXhLZya8WQzP2mXyMHn/5I+EeOJ7XZ4kRpAfiOJgfbtDThaWF2x6dRi6Eu0g6Gx8zga6ax1KZrSj8f9Tw7XHI9',0,1,'2020-11-26 10:04:29','2020-11-26 10:04:29'),(2,'qbL5VBDJayDsPU6fF38w','YJ/OQCLD120V/qLlCB6egQ==','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','l2Er4XfpGfvmpjcVSakmIw1zpRUGXLL633zstUzD7LKXhLZya8WQzP2mXyMHn/5I+EeOJ7XZ4kRpAfiOJgfbtN8EFyv/bNquNXvGOhcgfXp3pRZtPotjfem4Wq+S7TME',0,1,'2020-11-26 10:09:44','2020-11-26 15:53:26'),(3,'g79OfgwqX3tbF8FujnsB','lyxYFEvwXB1BFw+EfEAIj5o5ov7utCV1aOi5Hxy4t5c=','H3nUA4Mho8F+votD4EUnKE1Q/Z1v0WYKr0rlxnDy01M=','ytx7xdwa67NDZEN4yP7TbtXq0tOw1CJUOEH/cSsq5jxap65FkJN1p6sTDfu0KhkN08rpMHoECpKW06UfHiN2TK47gvuxu5lgD+OKf00Hr/zi9JW2RieyWzLsJaOahmxRFT1a8IE+hWttYBtBSv8q+Q==',0,1,'2020-11-26 10:20:57','2020-11-26 10:20:57'),(4,'YLNOgQi99wmM3VLCRs3a','zKosigZcoFPxu1/RiJZeDA==','7xHYrpxjGZ/w61T2EhnawJZhVFXeU9lZ1uuKIy9Ja0Y=','xjfzICvjfzLGjX4x41+I9Q2iyyvorX/r5hsMLP8C5eGwfzspOnB+zyhXYteBFUONP1yK/lvcmy9NH+oXP5P5RFLBRuhoolID6YUVnovywySqDWFVSUiw7yuf5bqEtH8+',0,1,'2020-11-26 10:21:34','2020-11-26 10:21:34'),(5,'Blc0HCswn2ecnKONeJ6n','sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','iPNkRUgYpM4AnqHgSh9ptAm2Ho772m2iJOyTVJyTjRf7sG47l5WaeI5vko8TgXXhJEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIXZByVgaMWLsQrSidav//grFnyz42Nx2menVALcBwo8mw==',0,1,'2020-11-26 10:21:46','2020-11-27 09:14:25'),(6,'4D1TPV2VTVwy7yEZxHw8','aCxZCZnkH/L/7ubgtISQCla42ocT5ZVEVB5d7vPB1rM=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','YRzfbGO8OR320TcMKhoXDyZluccfYUG/DmkkyCdw2GC7ev/2Acxpn0WcId/1vjZ7JEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIUrh8ZK3IFgv6dWCo4P6HKyP4V1/BKlCwajVs38qpfEgg==',0,1,'2020-11-26 11:01:08','2020-11-26 11:01:08'),(7,'rXQb8F0ltDqbknJedfY1','XjqxeyNiLjuT9i2n+4gCuiK57VNP1cr4UC5HIDWy45E=','/d6K5bt9LGnzXJj9i98EK6xzbBbCOEusku8e30+KHdU=','BlYgS13x19YM6p0M8pIspiO0c5wG8QBdrRNEvmjifQ1u3lJBrbbkDD4tQ4LhBv9W5m/NDgN2CIVi8D0dwOhESMOnR/emXPdCVJRArO61nzPWKyD3VtBfrX6FrRS4cjf7K9ty1P8krjZwMz8PfAwx4Q==',0,1,'2020-11-26 11:49:21','2020-11-26 11:49:21'),(8,'M94hoDVb5O3M992ZvzYC','PXNSj9ggHyZdWLbZn72Z4Zo5ov7utCV1aOi5Hxy4t5c=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','/tgR2gKTSH8V6Oid+IgYs2I+mQA7N9IwPxvyHrYwDY9QfYjU74RdyfUA0L1ZGPdyJEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIWKitZgJyio5agfcNR5dr1rCYq7v4R2qXXuSwlVWcjgeA==',0,1,'2020-11-26 12:36:13','2020-11-26 12:36:13'),(9,'N2w0w5R5Spb7Z2pJsz4R','cfUaIV2Jukov6E4FRa6GYrmkuldfURc0HEu5F8Z4Emc=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','0KwiALwiXcrf5EXFRH15j2EWyWJ9tEXTFaKN/dojCb/gZa9/4H0DeStjPD40IkadJEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIUj7/mPlCswDOEiLcyyTAF4i0B/1AITVT1uGHU5Lh1Mrg==',0,1,'2020-11-26 13:50:48','2020-11-26 13:50:48'),(10,'lNkxpZWmDzqWnlVTItaP','ZfnnsNG6ID8ycgqhGnyAl1a42ocT5ZVEVB5d7vPB1rM=','62cku2zAz/GKFQ6wOkipY1g114dEuO+tqQ1ZE1xf6eI=','0sxcrmZAVyZ0m3locVWNRPi8W0vNMbVbl0tQqgFLdYvKDB3HFb76skXO5baA3BsYht8kbiZegwGEeHtb/Nb6zADCpG2qFDoPKa9hTp7qGJnZOQudXBUURj5DYAsEAfZk4I0NxDMlkISz6k4/yXuYdQ==',0,1,'2020-11-26 14:03:05','2020-11-26 15:16:42'),(11,'U2IJSr55BZg4aZEJOtow','txb7wg4FmGdfUJRhtkyc/po5ov7utCV1aOi5Hxy4t5c=','7xHYrpxjGZ/w61T2EhnawJZhVFXeU9lZ1uuKIy9Ja0Y=','OZeDNjLlz23TeeFfn4+dgqSwVkSuO8MOBKI0UtFIznAMQD0DDt2nAcb0lN7jRu7SO7HY0bZoAoLRucyOfWhCjDKuOBkdrKA9mlxp9rRgCbTI5gzA9vi6bORksOWXZFmycbJyEUrIvO6EwhL3+rtB5w==',0,1,'2020-11-26 14:45:35','2020-11-26 14:45:35'),(12,'4Ap9FocJf6EjtSSbsetK','2PN/FVZan6/IRz5Swr6YjgavulodkmH7ZgQkiF4cmdo=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','WKhY5uc9+kR60uD6V36GKicvGtMBtADTJwpMNdSS/+slR4ZDEgmymH726oVrhxy0JEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIVVpk3HMJhBhLrsjy6nljNMX3YGyHBwpFsKsiEhXYRmNg==',0,1,'2020-11-27 07:04:16','2020-11-27 07:04:16'),(13,'vbi16wy7hpXorfke22xl','gP6t6Yvpj//5i2kqMpB9vla42ocT5ZVEVB5d7vPB1rM=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','FwRMiH90GnsfksI63itXfI1T01US148x9En5uLvAJm67ev/2Acxpn0WcId/1vjZ7JEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIVVhH7Oks4xNfGkADx5UvUmwbC6uv7fOb4qK+0vYQWsiw==',0,1,'2020-11-27 09:20:33','2020-11-27 09:20:33'),(14,'WpfJ2XateRPCFhILGYD3','8dhh+YNqU+kc7BYBSXReXQavulodkmH7ZgQkiF4cmdo=','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','RXjxaiFRTfo1SLT1HjKxtSzr4EcDyEriO+lwT0EBfnwlR4ZDEgmymH726oVrhxy0JEFeds/N0ID5rje5z6SmAfTY9kJsMM3pYWrzmBHFiIXnG/hmsfaYM/yEvcTipkK+4CmJKc0cIGoBYfyokPSvXA==',0,1,'2020-11-27 13:07:34','2020-11-27 13:07:34'),(15,'kOPSubuP9WcoBevFHq5k','alIWoQ04pT0k5HuaAA8JUQ==','GYV3i6Vdz44IrotZEedk/8Ie9qKjBIgCix/c5K/jMGo=','frCRDZxnOxjNefEQYrgzewGkufkOrHwOhH8DOLMlTCWXhLZya8WQzP2mXyMHn/5I+EeOJ7XZ4kRpAfiOJgfbtGJlICr0EuId4VrvXdq0AvjQtyBq5YQpe1pQLhoJ4Nzp',0,1,'2020-11-27 13:52:51','2020-11-27 13:52:51'),(16,'WnpKnw0wdMVSzN3KrGa7','FcURT0ODXPYr2Rzl1zbCgZo5ov7utCV1aOi5Hxy4t5c=','fXSxK4/XdvrqcAB3I8o0voD3U1ezeFN9D9uqNO8RR1o=','Vzmz2+YWGblKJRt2XNjxCULY40vNbym6mwQI9NudpVcTm0SX5c62P/vD7EVyZwffSBCuPq+iJc24MmiAnsgmuXpZDlZokCzf5UVbVRevQJsSbZ++x6qSiEjqapBekDRH9G5O+tBdU/oZ77rjTnqn/Q==',0,1,'2020-11-27 14:54:56','2020-11-27 14:54:56');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` VALUES (1,'oXJBSyYaWykGy3EnwWds','sEmwup8tKoDnMxQXluE5DA==',NULL,'iX5r510101ris4paglm8Wg==','PIFJPzVzVeuA0XtMq66orA==','1','sEmwup8tKoDnMxQXluE5DA==','39y/tsFLfjk2wkOC9Yr0sQ==','3',1,'2020-11-26 10:04:29','2020-11-26 10:04:41'),(2,'qbL5VBDJayDsPU6fF38w','sEmwup8tKoDnMxQXluE5DA==',NULL,'HzmbPoCAlsr5Xtqu2Mpqdg==','YJ/OQCLD120V/qLlCB6egQ==','1','sEmwup8tKoDnMxQXluE5DA==','eRqciBXdsZH0wIP/NBQggw==','3',1,'2020-11-26 10:09:44','2020-11-26 10:10:09'),(3,'g79OfgwqX3tbF8FujnsB','sEmwup8tKoDnMxQXluE5DA==',NULL,'ESo8E4hWWMi7xvO3rK4OKg==','lyxYFEvwXB1BFw+EfEAIj5o5ov7utCV1aOi5Hxy4t5c=','1','sEmwup8tKoDnMxQXluE5DA==','NleUtDHF+Lwb0mn5AoY4fg==','3',1,'2020-11-26 10:20:57','2020-11-26 10:33:03'),(4,'YLNOgQi99wmM3VLCRs3a','4c0z04lwgQs+DXILqxba0w==',NULL,'1A9iFkpKewF4O+VCqqBiSw==','zKosigZcoFPxu1/RiJZeDA==','2','4c0z04lwgQs+DXILqxba0w==','6YkDFAAEQ48+AarobSPGvg==','3',1,'2020-11-26 10:21:34','2020-11-26 15:03:52'),(5,'Blc0HCswn2ecnKONeJ6n','sEmwup8tKoDnMxQXluE5DA==',NULL,'hoqEF3480NDFXAHhCMnlRg==','sh0xVzG7JsNQNDkj/v0iKIty8UmA6j9bF3I2KJqbNhk=','1','sEmwup8tKoDnMxQXluE5DA==','kknGu9+obfuGH90cjEIIhg==','3',1,'2020-11-26 10:21:46','2020-11-27 15:54:06'),(6,'4D1TPV2VTVwy7yEZxHw8','sEmwup8tKoDnMxQXluE5DA==',NULL,'kZUjsD8VIEuFidtXbpGdxQ==','aCxZCZnkH/L/7ubgtISQCla42ocT5ZVEVB5d7vPB1rM=','1','4c0z04lwgQs+DXILqxba0w==','bf/TIOxFlKdzOqLvPMaXvw==','3',1,'2020-11-26 11:01:08','2020-11-26 11:01:53'),(7,'rXQb8F0ltDqbknJedfY1','4c0z04lwgQs+DXILqxba0w==',NULL,'PiDVeuI1e2TUUx875zKqoA==','XjqxeyNiLjuT9i2n+4gCuiK57VNP1cr4UC5HIDWy45E=','1','4c0z04lwgQs+DXILqxba0w==','IbLS/ySl9bb7p6ckZfNKrla42ocT5ZVEVB5d7vPB1rM=','3',1,'2020-11-26 11:49:21','2020-11-26 11:50:08'),(8,'M94hoDVb5O3M992ZvzYC','sEmwup8tKoDnMxQXluE5DA==',NULL,'g9ckZwGPEqE7ojqvZ1RV8A==','PXNSj9ggHyZdWLbZn72Z4Zo5ov7utCV1aOi5Hxy4t5c=','1','sEmwup8tKoDnMxQXluE5DA==','AUSerA/QepgYaZoGEBjnAQ==','3',1,'2020-11-26 12:36:13','2020-11-26 12:36:22'),(9,'N2w0w5R5Spb7Z2pJsz4R','sEmwup8tKoDnMxQXluE5DA==',NULL,'leyHikaLrhBBuzgaYZ0ZBg==','cfUaIV2Jukov6E4FRa6GYrmkuldfURc0HEu5F8Z4Emc=','2','sEmwup8tKoDnMxQXluE5DA==','39y/tsFLfjk2wkOC9Yr0sQ==','3',1,'2020-11-26 13:50:48','2020-11-26 13:51:17'),(10,'lNkxpZWmDzqWnlVTItaP','sEmwup8tKoDnMxQXluE5DA==',NULL,'NowMcSWpeg5LUx4XqCkZeA==','ZfnnsNG6ID8ycgqhGnyAl1a42ocT5ZVEVB5d7vPB1rM=','1','0Pqz9h6dQ/3kMJgKyclsvw==','P8SnfwDf8MVNVHee6vD1EQ==','3',1,'2020-11-26 14:03:05','2020-11-26 14:03:24'),(11,'U2IJSr55BZg4aZEJOtow','4c0z04lwgQs+DXILqxba0w==',NULL,'R3pQpiD2XPJJ8A8t6QYyCQ==','txb7wg4FmGdfUJRhtkyc/po5ov7utCV1aOi5Hxy4t5c=','2','4c0z04lwgQs+DXILqxba0w==','Va+cXA8QGTx19+VOwyiTgw==','3',1,'2020-11-26 14:45:35','2020-11-26 14:46:04'),(12,'4Ap9FocJf6EjtSSbsetK','sEmwup8tKoDnMxQXluE5DA==',NULL,'AvMVXPpFXKdf5xTkxI//QA==','2PN/FVZan6/IRz5Swr6YjgavulodkmH7ZgQkiF4cmdo=','1','sEmwup8tKoDnMxQXluE5DA==','DSFP5aZD2kaiWqtBnSxMrg==','3',1,'2020-11-27 07:04:16','2020-11-27 07:04:24'),(13,'vbi16wy7hpXorfke22xl','sEmwup8tKoDnMxQXluE5DA==',NULL,'ts9lKf9goL/96AP2d7oOSA==','gP6t6Yvpj//5i2kqMpB9vla42ocT5ZVEVB5d7vPB1rM=','1','sEmwup8tKoDnMxQXluE5DA==','oG2nr3lH9Bo/Q+GwjzZT0g==','3',1,'2020-11-27 09:20:33','2020-11-27 09:20:59'),(14,'WpfJ2XateRPCFhILGYD3','sEmwup8tKoDnMxQXluE5DA==',NULL,'dlOfmKA25A/lPkvY6Oj5Fw==','8dhh+YNqU+kc7BYBSXReXQavulodkmH7ZgQkiF4cmdo=','1','sEmwup8tKoDnMxQXluE5DA==','39y/tsFLfjk2wkOC9Yr0sQ==','3',1,'2020-11-27 13:07:34','2020-11-27 13:07:43'),(15,'kOPSubuP9WcoBevFHq5k','sEmwup8tKoDnMxQXluE5DA==',NULL,'wz4NYpSGKR3UYTV9Vd9iaA==','alIWoQ04pT0k5HuaAA8JUQ==','1','sEmwup8tKoDnMxQXluE5DA==','/XB2b/MGeu7abnlvoVWtmA==','3',1,'2020-11-27 13:52:51','2020-11-27 13:52:57'),(16,'WnpKnw0wdMVSzN3KrGa7','sEmwup8tKoDnMxQXluE5DA==',NULL,'6oGauo2xCogwSvw/XDCIiw==','FcURT0ODXPYr2Rzl1zbCgZo5ov7utCV1aOi5Hxy4t5c=','1','sEmwup8tKoDnMxQXluE5DA==','mYZn9xk9ld+E6yBGzukERQ==','0',1,'2020-11-27 14:54:56','2020-11-27 14:55:02');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_device_auth`
--

LOCK TABLES `user_device_auth` WRITE;
/*!40000 ALTER TABLE `user_device_auth` DISABLE KEYS */;
INSERT INTO `user_device_auth` VALUES (1,'oXJBSyYaWykGy3EnwWds','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 10:04:34','2020-11-26 14:51:23'),(2,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 10:10:01','2020-11-26 11:20:25'),(3,'Blc0HCswn2ecnKONeJ6n','f37253c87007dbc5','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 10:21:58','2020-11-27 05:56:59'),(4,'YLNOgQi99wmM3VLCRs3a','8DC9C649-9B68-4292-B00A-81F9691E944C','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-26 10:22:04','2020-11-26 10:22:04'),(5,'g79OfgwqX3tbF8FujnsB','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 10:28:07','2020-11-26 12:30:43'),(6,'4D1TPV2VTVwy7yEZxHw8','343593d5a2b66ca2','756242366f9084398175cc856ed697c0a9d2a961b3085ada97b426b73a839d74','APP_LOCK',0,1,'2020-11-26 11:01:18','2020-11-26 11:58:36'),(7,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','97f4bbb7d89a48162cf24c7237ffdfdd32db64aac2eee9fce949226a18c354d8','PHONE_LOCK',0,0,'2020-11-26 11:20:30','2020-11-26 15:47:00'),(8,'rXQb8F0ltDqbknJedfY1','2727308A-DFB3-466D-9F66-7FA26D8D561C','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 11:49:28','2020-11-26 13:48:08'),(9,'M94hoDVb5O3M992ZvzYC','6d40118819c60159','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-11-26 12:36:17','2020-11-27 06:07:18'),(10,'rXQb8F0ltDqbknJedfY1','2727308A-DFB3-466D-9F66-7FA26D8D561C','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-26 13:48:13','2020-11-26 13:48:13'),(11,'N2w0w5R5Spb7Z2pJsz4R','3e2562d8792a4754','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,0,'2020-11-26 13:50:53','2020-11-26 14:31:30'),(12,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','d59bb2805ca295994f51140080e32cf87b0deff781ec2c3b93c89891613b21b4','PHONE_LOCK',0,0,'2020-11-26 14:03:17','2020-11-26 14:16:16'),(13,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','a7106674e803aadf87a8f8b52a93b8b0f666533ef1858ef18ba8918ebaf81423','PHONE_LOCK',0,0,'2020-11-26 14:16:20','2020-11-26 14:27:14'),(14,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 14:27:18','2020-11-26 15:16:42'),(15,'N2w0w5R5Spb7Z2pJsz4R','3e2562d8792a4754','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,0,'2020-11-26 14:31:33','2020-11-26 17:19:00'),(16,'U2IJSr55BZg4aZEJOtow','5fa63079df5227e7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 14:45:53','2020-11-26 15:54:23'),(17,'oXJBSyYaWykGy3EnwWds','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-26 14:51:27','2020-11-27 06:33:30'),(18,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-26 15:16:48','2020-11-26 15:16:48'),(19,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-26 15:47:56','2020-11-26 15:47:56'),(20,'U2IJSr55BZg4aZEJOtow','5fa63079df5227e7','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-26 15:54:28','2020-11-26 15:54:28'),(21,'N2w0w5R5Spb7Z2pJsz4R','3e2562d8792a4754','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-11-26 17:19:03','2020-11-26 17:19:03'),(22,'Blc0HCswn2ecnKONeJ6n','f37253c87007dbc5','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,1,'2020-11-27 05:57:02','2020-11-27 16:24:30'),(23,'oXJBSyYaWykGy3EnwWds','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-27 06:33:34','2020-11-27 08:59:47'),(24,'4Ap9FocJf6EjtSSbsetK','479b3987b6465737','77d9c010d39a87dea2e8742a93e0db110fe3b18cf6a72617ed6e4c1e69caa5b9','PHONE_LOCK',0,0,'2020-11-27 07:04:20','2020-11-27 14:08:06'),(25,'oXJBSyYaWykGy3EnwWds','123456','5b54c5bfe694b590b7f8175086c173033edd11608ad5879dbac2a17d633b950a','APP_LOCK',0,0,'2020-11-27 08:59:51','2020-11-27 10:05:37'),(26,'vbi16wy7hpXorfke22xl','4d21657718b6886','808b171aae51961714492efac7fd12b3558f87f40b0550858c855edf636c3ebf','APP_LOCK',0,1,'2020-11-27 09:20:51','2020-11-27 09:20:51'),(27,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','81c3de79742119d98cdfc88d60a59f324af985dfc509af86d4d4fcb1351adcdd','PHONE_LOCK',0,0,'2020-11-27 13:07:38','2020-11-27 13:09:21'),(28,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','e056172462b355e3f703a952f20336ca1f37aa54affdd289fa01def6097e0324','PHONE_LOCK',0,0,'2020-11-27 13:09:25','2020-11-27 13:10:15'),(29,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','7f9a6b342b7e4ff2a4d44b811c3f88ecdecaae3545a3a587b10b146365341c85','PHONE_LOCK',0,0,'2020-11-27 13:10:17','2020-11-27 13:19:46'),(30,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','d19128ad5f33369c42664abb80e50f7296715eef053db32eb9f5a08fb2e5dd5a','PHONE_LOCK',0,0,'2020-11-27 13:19:49','2020-11-27 13:20:25'),(31,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','96c07022116b71bc4179b1482d90af4b54cca3bce3669c25c1e72784cec0d1dc','PHONE_LOCK',0,1,'2020-11-27 13:20:28','2020-11-27 14:15:39'),(32,'oXJBSyYaWykGy3EnwWds','123456','0f4c0b7cb2b894f2eb8588dde377acb322cca3e15221826230736014a802af81','PHONE_LOCK',0,0,'2020-11-27 13:49:56','2020-11-27 13:50:35'),(33,'kOPSubuP9WcoBevFHq5k','6d40118819c60159','07590f6a5d1647cd3e383289db7cf2656e8ca32f95420837540c593af9a67004','PHONE_LOCK',0,1,'2020-11-27 13:52:54','2020-11-27 13:52:54'),(34,'4Ap9FocJf6EjtSSbsetK','479b3987b6465737','f45124775bc23f07353e1e6319d5fcd24b5ea0255c53dfaae8f40152538a4292','PHONE_LOCK',0,1,'2020-11-27 14:08:10','2020-11-27 14:08:10'),(35,'WnpKnw0wdMVSzN3KrGa7','123456','da219fbc0e8ac2d1ddcc29a02db44959d39f39d49af83b80ceca8722982cd806','APP_LOCK',0,1,'2020-11-27 14:59:31','2020-11-27 14:59:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_device_mapping`
--

LOCK TABLES `user_device_mapping` WRITE;
/*!40000 ALTER TABLE `user_device_mapping` DISABLE KEYS */;
INSERT INTO `user_device_mapping` VALUES (1,'oXJBSyYaWykGy3EnwWds','123456','10.0','123456','1.0.5','1','10.0','vivo',1,'dummy:10.0.0.0','',0,'2020-11-26 10:04:29','2020-11-27 10:05:37'),(2,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','iPhone','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','1.0.6','1','iPhone','ios',1,'2401:4900:1f26:1341:9051:4ff:6975:af9','f4HaIlhbAEfQquvnvYfNDI:APA91bGUgLThaEedMuSWQtFUQ-Rr5R9-3YcTY0Pe6p0Jm8Saim5gzMGZBHvy-oYIrAoE2__G-KPdzhsv_k6Mnky9MGD_0z_1dONYnc34dtmJ5_1_XijRMCZzr_MEk8VoUa7RsRnDCrFA',0,'2020-11-26 10:09:45','2020-11-26 14:17:03'),(3,'g79OfgwqX3tbF8FujnsB','123456','10.0','123456','1.0.5','1','10.0','vivo',1,'dummy:10.0.0.0','',1,'2020-11-26 10:20:57','2020-11-26 10:20:57'),(4,'YLNOgQi99wmM3VLCRs3a','8DC9C649-9B68-4292-B00A-81F9691E944C','iPhone','8DC9C649-9B68-4292-B00A-81F9691E944C','1.0.6','1','iPhone','ios',1,'2001:8f8:1325:f32a:84bd:dc5f:95d8:d02d','dc1Wrkl5PkcplrNdyvKo-9:APA91bHERIzR8lU1B_LymzbXeHX9MoWbnT_K1b-nj1161ZMj-F87_tBJz4A7zBunPYc5xl2Mn1qktj6ixV6kOgg6dMyCJ8JS5QIJt0YWs3DKmkOdcD9SPMV0mnR1wAIePIb_pvMYI_5e',1,'2020-11-26 10:21:34','2020-11-26 10:21:34'),(5,'Blc0HCswn2ecnKONeJ6n','f37253c87007dbc5','OnePlus5T','f37253c87007dbc5','1.0.6','1','OnePlus5T','android',1,'100.78.125.140','c6Qx_Qq4TguZPsK5QGCo42:APA91bFDEHXCvlw2ImmarZNk23QDPMTk1RqmXxQ7S5Ehsb24e83xr8BLck1PxWsRMsVji_Z7CzF74BCMrgfBpPBay0m_cd9c0P6pgqRgjKbq2RI_hkNa86nTNM8aQ17gsWB7UhTsMPZ7',0,'2020-11-26 10:21:46','2020-11-26 12:11:30'),(6,'4D1TPV2VTVwy7yEZxHw8','343593d5a2b66ca2','begoniain','343593d5a2b66ca2','1.0.6','1','begoniain','android',1,'192.168.1.5','f-OUGgn7QQqTocp5bzU2Tx:APA91bGK-Zn0bNCjB7uL-lj4LxE8Zw7cYHfmySfq-_IyH2QQo5IFET-Vggal7ImRXKHzGxY4MhoEf16KxPXwO4iiHnKsKiZGYafZs6TUS-eR2rSQegw6WArUGUEs5H2MEXrAOQ0_GG3L',0,'2020-11-26 11:01:08','2020-11-26 11:58:19'),(7,'rXQb8F0ltDqbknJedfY1','2727308A-DFB3-466D-9F66-7FA26D8D561C','iPhone','2727308A-DFB3-466D-9F66-7FA26D8D561C','1.0.6','1','iPhone','ios',1,'192.168.1.23','fT-6tmlmrUXhrYZxac65ar:APA91bFFc3oD8gB9kpODWQwVrVWAaGUMWjQRUZ1eTtHHWotWY1sSgYhQOD_kOiePmxV4dY_9QeSJOvqqQ1Zt9Y8SjCUgA9sEOOQlct_lfQb1tC7_iX7P02peMhXxWyVcz-M-GrtIdkA6',0,'2020-11-26 11:49:21','2020-11-26 13:41:07'),(8,'4D1TPV2VTVwy7yEZxHw8','39482EAF-E953-449F-9A90-2A6A1FAB73EF','iPhone','39482EAF-E953-449F-9A90-2A6A1FAB73EF','1.0.6','1','iPhone','ios',1,'192.168.1.43','dvibfyKm3U1mp-Cim8MBkH:APA91bGHEX1azx0tTLJSOo9TXSgzxWy44Q3ph47Cd-L9J5pkfI-ltH9sVH84pYYJn6_W5X0rx1Iscvbzr_fOHat4239tjdPP6ZeLXfcvlgPWeza2ZLPRAsdM7_u-vP9XkwaIBwi82o8e',1,'2020-11-26 11:58:19','2020-11-26 11:58:19'),(9,'Blc0HCswn2ecnKONeJ6n','f5312a03cfc04a5f','generic_x86_arm','f5312a03cfc04a5f','1.0.6','1','generic_x86_arm','android',1,'10.0.2.16','diKQMV43R4KPksRzGMju0i:APA91bEHTGT5K6DAL4aqQpt8EJD7nz8xGTp51TjncRkaW_YiOuibIeIWsg_hffrc8SiGGfnlt3oflMwRdyjRhSTQbdf1pNbwE_1RW9eBDS_9U48rD4-8eKDNJRFo5pwmx4KkY0LvqmlA',0,'2020-11-26 12:11:30','2020-11-27 05:56:59'),(10,'M94hoDVb5O3M992ZvzYC','6d40118819c60159','OnePlus8T','6d40118819c60159','1.0.6','1','OnePlus8T','android',1,'192.168.1.17','eduzu1NnRsamaNRpIOp3eW:APA91bFgNLoIOHQdVWW5_CD2wVngcSun9dkU75P54zoSRbmGRgszX0Dto7QGcAGYpOBle3V2IWb8w7wcYxDe43m_PdgAj2KHG4oD_goKMoRWdw5RCFoUKzN507IwD2HYZJhEG3cZdH33',0,'2020-11-26 12:36:13','2020-11-27 06:07:13'),(11,'rXQb8F0ltDqbknJedfY1','2727308A-DFB3-466D-9F66-7FA26D8D561C','iPhone','2727308A-DFB3-466D-9F66-7FA26D8D561C','1.0.6','1','iPhone','ios',1,'192.168.1.237','fT-6tmlmrUXhrYZxac65ar:APA91bFFc3oD8gB9kpODWQwVrVWAaGUMWjQRUZ1eTtHHWotWY1sSgYhQOD_kOiePmxV4dY_9QeSJOvqqQ1Zt9Y8SjCUgA9sEOOQlct_lfQb1tC7_iX7P02peMhXxWyVcz-M-GrtIdkA6',1,'2020-11-26 13:41:07','2020-11-26 13:41:07'),(12,'N2w0w5R5Spb7Z2pJsz4R','3e2562d8792a4754','Nord','3e2562d8792a4754','1.0.5','1','Nord','android',1,'192.168.0.133','cspF3hwqQBm5epeJLktKXP:APA91bG0RBdY-ZMTP9We72SD56Q75vpgh7jVgA6FIIrAXd4yF1JFFNTG5IUShuMruwIYIHa6SETl2tiGWr1eBxMbOcplBohBNj7UimObotEoTVmJXhmyWpdaTLpHKQX_jKCngTZNsc2G',1,'2020-11-26 13:50:48','2020-11-26 13:50:48'),(13,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','begoniain','343593d5a2b66ca2','1.0.6','1','begoniain','android',1,'10.8.0.78','clRIWn2BRBKaf869etRC6l:APA91bE_0-ASx2sW8ADUoVOeC-O72QnXlvn5BQ0KIMmW-om3xscSMUR6KKIQVtYM_YaOnufokqpA_DXnO-Kk_0XsOKtW1oCy7hxJaNEnk_mq0l6AUQxVDuULLQ1MYdDyaov2Qz7i9Rwh',0,'2020-11-26 14:03:05','2020-11-26 14:09:34'),(14,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','begoniain','343593d5a2b66ca2','1.0.6','1','begoniain','android',1,'192.168.1.5','clRIWn2BRBKaf869etRC6l:APA91bE_0-ASx2sW8ADUoVOeC-O72QnXlvn5BQ0KIMmW-om3xscSMUR6KKIQVtYM_YaOnufokqpA_DXnO-Kk_0XsOKtW1oCy7hxJaNEnk_mq0l6AUQxVDuULLQ1MYdDyaov2Qz7i9Rwh',0,'2020-11-26 14:09:34','2020-11-26 15:16:42'),(15,'qbL5VBDJayDsPU6fF38w','343593d5a2b66ca2','begoniain','343593d5a2b66ca2','1.0.6','1','begoniain','android',1,'192.168.1.5','eOKfik5wTD--bKr-Ej2jrN:APA91bHPShOioWDS40uG8o_QyOf9s68budTj7Bfbfx4lx4t-MDFGd3IiRlM9p4PbyL2juWy_VZvcuWdljs8A3y4KFwWZjTQxeaec0F2mfLKFyf7C349890vZ7Nu29ONiruxdsFePUs72',0,'2020-11-26 14:17:03','2020-11-26 14:19:05'),(16,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','iPhone','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','1.0.6','1','iPhone','ios',1,'2401:4900:1f26:1341:9051:4ff:6975:af9','f4HaIlhbAEfQquvnvYfNDI:APA91bGUgLThaEedMuSWQtFUQ-Rr5R9-3YcTY0Pe6p0Jm8Saim5gzMGZBHvy-oYIrAoE2__G-KPdzhsv_k6Mnky9MGD_0z_1dONYnc34dtmJ5_1_XijRMCZzr_MEk8VoUa7RsRnDCrFA',0,'2020-11-26 14:19:05','2020-11-27 15:09:31'),(17,'U2IJSr55BZg4aZEJOtow','5fa63079df5227e7','HWSTK-HF','5fa63079df5227e7','1.0.6','1','HWSTK-HF','android',1,'192.168.0.148','d1yc-zorSeqj2pZuRTgytR:APA91bEozFFK7irD2dEYSwnFlO7rUvqqM3tRUQjv090KlzYKsVJPfDfagsi57_rHG2H8Mduq_vGID_ENjE7NqDJkjn6eQSqFG6wWcmXW8ZIJobI2n5I40ht_tlS66pjov5yCNagvdkLa',1,'2020-11-26 14:45:35','2020-11-26 14:45:35'),(18,'lNkxpZWmDzqWnlVTItaP','343593d5a2b66ca2','begoniain','343593d5a2b66ca2','1.0.6','1','begoniain','android',1,'10.8.0.78','e03Go2l_RDKN_AtLROLAbi:APA91bEp8UQdnMeH1H9ZUN065y49vcqi3ca7hNRGp7B2N4lB5e5IMDA1Lbl5r1C2EIqp-JBJW2VMsGsbLVXWYUIDdDDmw0DYD29Z_aJuzzhGBUf8jy4XksiV4mOgwLlir2ubDl4fdoKb',1,'2020-11-26 15:16:42','2020-11-26 15:16:42'),(19,'Blc0HCswn2ecnKONeJ6n','f37253c87007dbc5','OnePlus5T','f37253c87007dbc5','1.0.6','1','OnePlus5T','android',1,'192.168.0.101','dKkrTyAsQGOn78Z-gfauMX:APA91bE8DBoBDRt0WAJqJEL-7YXV9ho2Bd-Djo-BNEIIoaONfRMTiO5WWWRsyu7zm6gc2cFaJPmzun-uo027cXBEC5EUIfWrJyTEoJf3hfySWan6w5U3x3pC4rQjPdit63hAknwwQz51',0,'2020-11-27 05:56:59','2020-11-27 08:00:53'),(20,'M94hoDVb5O3M992ZvzYC','4d21657718b6886','generic_x86','4d21657718b6886','1.0.6','1','generic_x86','android',1,'10.0.2.15','fuzVXZFORqWQybJOI1XKab:APA91bHp-XZFW8OhsYbATderDlXYLu6rPfrnnybdYeKR2tPPh5D4yGvIhlWQCrWLvUTfMvHiMBrA3z8zp1hYFEUhNsY1jIjXSGcI-66QNhImpdp1DqrOVKpr8eAfqI91bMsg5oQQclXi',1,'2020-11-27 06:07:13','2020-11-27 06:07:13'),(21,'4Ap9FocJf6EjtSSbsetK','479b3987b6465737','OnePlus7','479b3987b6465737','1.0.6','1','OnePlus7','android',1,'192.168.0.107','eN6ZDaM2TBi6vTrr3NGNgT:APA91bHKQc3TLEI7lbgYlccscTBVZUON0x1FDCu3zhj-He1odl1RF93ETGVWb5EtBQ4PNI1o5GH1MUfbbmYWTiaGhhJphlIr4i0nn7maKR2UiSDy7xztMWNYrCSObpERGfi1lpnWzPRu',0,'2020-11-27 07:04:16','2020-11-27 14:08:06'),(22,'Blc0HCswn2ecnKONeJ6n','d6c2742f79bafbc7','OnePlus5T','d6c2742f79bafbc7','1.0.6','1','OnePlus5T','android',1,'192.168.0.101','fyuFXNjTT4qKQYntEUOFoj:APA91bFH5kCcRC-Q6OVvWQGvRxAIGChpU3vcJma4mlpGF9gikgztbX9bcomqsxQICaHFKnJEAurmLiMcQLpCPPcro1YYFX-43PNrfv3DsaS-qIwJVZOHtRV83dBwhOD8V4M_WePOyXlp',0,'2020-11-27 08:00:53','2020-11-27 10:13:32'),(23,'vbi16wy7hpXorfke22xl','4d21657718b6886','generic_x86','4d21657718b6886','1.0.6','1','generic_x86','android',1,'10.0.2.15','fuzVXZFORqWQybJOI1XKab:APA91bHp-XZFW8OhsYbATderDlXYLu6rPfrnnybdYeKR2tPPh5D4yGvIhlWQCrWLvUTfMvHiMBrA3z8zp1hYFEUhNsY1jIjXSGcI-66QNhImpdp1DqrOVKpr8eAfqI91bMsg5oQQclXi',1,'2020-11-27 09:20:33','2020-11-27 09:20:33'),(24,'oXJBSyYaWykGy3EnwWds','123456','10.0','123456','1.0.0','10','10.0','vivo',1,'dummy:10.0.0.0','123',0,'2020-11-27 10:05:37','2020-11-27 13:49:54'),(25,'Blc0HCswn2ecnKONeJ6n','09B97A1E-11B1-4744-A13B-C7E56B06E8EF','iPhone','09B97A1E-11B1-4744-A13B-C7E56B06E8EF','1.0.6','1','iPhone','ios',1,'192.168.0.102','cJsOqYWSKkTas-zn06Udx9:APA91bGcAWDTm134my2Ri1ANY7qt4KtVhBdEWobItvbP9HMwKQZ-CpxGUJhiKWw91bfexE1rFEgJVrmX-ntF4dF3SKiphCPy00yGjo5fb9ekhUj_X3-liiXvacRkDDw48VB7etaucul1',0,'2020-11-27 10:13:32','2020-11-27 10:36:58'),(26,'Blc0HCswn2ecnKONeJ6n','166F73CD-EC62-4D9F-9E80-439072647B6B','iPhone','166F73CD-EC62-4D9F-9E80-439072647B6B','1.0.6','1','iPhone','ios',1,'192.168.0.102','cJuxLteW6kd7k09E-QMn8U:APA91bH8qNF9karTwla8WQWnan5a-OPH6ml1gUg1x_ua2mDd1nyrGvXbOaQkuZoDhm6VPKy2Ghnf02C7gQcGNA0zBtI9NVoQR3rTxRRPUsxv5tusrI4S2aP2U0XQ2GWVZlukpsTMyWC2',0,'2020-11-27 10:36:58','2020-11-27 11:22:20'),(27,'Blc0HCswn2ecnKONeJ6n','21143E5E-CD27-4A01-9D0C-828318C675D1','iPhone','21143E5E-CD27-4A01-9D0C-828318C675D1','1.0.6','1','iPhone','ios',1,'192.168.0.102','dPRLZjoxGELcp7R2qSm0m8:APA91bEyKDjx9awvAXHhz1khz_Adf2sJelHK2ujWgCydn3K6SGiso6rwrNRozjlf2YpyB5I4NS3BkLswDlW3Iufu2yKRz3tbYwcv14xNy0sDNA1aUAGVkuRHuqrIXgpFNzE_lBNcsHok',0,'2020-11-27 11:22:20','2020-11-27 11:36:28'),(28,'Blc0HCswn2ecnKONeJ6n','6063856f69b26dea','generic_x86','6063856f69b26dea','1.0.6','1','generic_x86','android',1,'10.0.2.16','ceq-BMBsR0GK9bvKDIlrR3:APA91bF8i3OOEvphUjnrNBIThCL-959yhc5ylRJdntVQWnqt4wUQfAHdzxbQS3mvUMpD5dMvDzOe9rH-lFMnfQJdTY3_UTcvFqmwSZJo6vdn7PSCZCUlj8VpbE8yzXqW5MsPFwxP83gB',0,'2020-11-27 11:36:28','2020-11-27 11:58:02'),(29,'Blc0HCswn2ecnKONeJ6n','EFF62CFF-274E-4722-8558-E754B4AC3E8C','iPhone','EFF62CFF-274E-4722-8558-E754B4AC3E8C','1.0.6','1','iPhone','ios',1,'192.168.0.102','dhnlMiZkikt3tnC97q1OeG:APA91bHAsSAUnX0biAcp7t5lbv-h58Sh787YZA1kZchn_QgmlWDdkrymPcgCFdTJJwvPcaZ2SsZM_Ohe42KhyNCp81vui-DbnARiovIRe-2RF6izvnjTuslWXoGsubbPDhnzrZikkoHS',0,'2020-11-27 11:58:02','2020-11-27 11:59:16'),(30,'Blc0HCswn2ecnKONeJ6n','5b3c1ec9d286a176','generic_x86_arm','5b3c1ec9d286a176','1.0.6','1','generic_x86_arm','android',1,'10.0.2.16','c87qmhdGQb2z_8tcpeceOi:APA91bFeNBccX8GwpljVTUtO2Xg619eApLWAULHiiCjYxCoxlKp3L2IIeAy4G65WgUXIVXd_RNyU5ZfPggSoFRZGvZor9xGpVrHqiLE3GAt7mpnBMyST-GFFyt9m5ucfFVCTULHQ6uqy',0,'2020-11-27 11:59:16','2020-11-27 12:12:05'),(31,'Blc0HCswn2ecnKONeJ6n','EFF62CFF-274E-4722-8558-E754B4AC3E8C','iPhone','EFF62CFF-274E-4722-8558-E754B4AC3E8C','1.0.6','1','iPhone','ios',1,'192.168.0.102','dhnlMiZkikt3tnC97q1OeG:APA91bHAsSAUnX0biAcp7t5lbv-h58Sh787YZA1kZchn_QgmlWDdkrymPcgCFdTJJwvPcaZ2SsZM_Ohe42KhyNCp81vui-DbnARiovIRe-2RF6izvnjTuslWXoGsubbPDhnzrZikkoHS',0,'2020-11-27 12:12:05','2020-11-27 12:59:37'),(32,'Blc0HCswn2ecnKONeJ6n','3dcbfba6ee564788','OnePlus5T','3dcbfba6ee564788','1.0.7','1','OnePlus5T','android',1,'192.168.0.101','edyNChuzQ4-yHak6Lyimqf:APA91bF-TifXPrb2KEdcFabSA0jybTMw1sXjKgbAZHtzaTj-SDCMJ0ZNqztZzjg9obdIVUtQIgn4PKccCo0vvOyP1Au4-kd-Od7okeHva4VF0QIg2iKvo8dYMPwI1MKl1YHGEzanVoA6',0,'2020-11-27 12:59:37','2020-11-27 15:46:49'),(33,'WpfJ2XateRPCFhILGYD3','6d40118819c60159','OnePlus8T','6d40118819c60159','1.0.7','1','OnePlus8T','android',1,'192.168.1.17','fnu5iAxDRyWuD8tIMecPea:APA91bEURkftSRz4C2oRv3pYgmciF1QmXkVz4TA6RVlL5gRCAb25Q_lwnZsiNRUrxa8gI1UwCKnc06E2ogVZ-jzZxZSBkpC_vYqwO1sIb9J92ND9WCR6dp4kkgA5YF4N4s23jZOueLj1',0,'2020-11-27 13:07:34','2020-11-27 14:15:35'),(34,'oXJBSyYaWykGy3EnwWds','123456','10.0','123456','1.0.5','1','10.0','vivo',1,'dummy:10.0.0.0','',0,'2020-11-27 13:49:54','2020-11-27 13:50:35'),(35,'oXJBSyYaWykGy3EnwWds','123456','10.0','123456','1.0.0','10','10.0','vivo',1,'dummy:10.0.0.0','123',1,'2020-11-27 13:50:35','2020-11-27 13:50:35'),(36,'kOPSubuP9WcoBevFHq5k','6d40118819c60159','OnePlus8T','6d40118819c60159','1.0.7','1','OnePlus8T','android',1,'192.168.1.17','cdm4kT7WQpanthjUDDQP6h:APA91bH8jvr659Cwy_WlAOf9G6pgZ1f9QyfaNhVctVfhu3bSNoZCorUTgJKaJ28oFISDzR50qyHrBSWkFM418VVgMDu8McBiuJsU8iDztpyfvELR2-Y0wNjP0rja7ojBCH0LuN69X40r',1,'2020-11-27 13:52:51','2020-11-27 13:52:51'),(37,'4Ap9FocJf6EjtSSbsetK','479b3987b6465737','OnePlus7','479b3987b6465737','1.0.7','1','OnePlus7','android',1,'192.168.0.107','fGV3qLRaTAO3fFTiNU4a9j:APA91bFhFJRkdjckCaToiuisozUHvSHgI-YVFvsgJS_2epEl2zrNVNfa_tKo4PXAlma7IMeR848CbCMk4gXOcELvkc0bpCnQmsH-xKco4LsZrxL4y1GqCm62heT-aIYSjxmQJ-JbZ9Ka',1,'2020-11-27 14:08:06','2020-11-27 14:08:06'),(38,'WpfJ2XateRPCFhILGYD3','bc215a790601c8f8','OnePlus8T','bc215a790601c8f8','1.0.7','1','OnePlus8T','android',1,'192.168.1.17','fsMi9HnJQ5mzjnWl6n4lkl:APA91bHx2zgHJPj1pU8dC3Yz1UbIgd7jfhw9blzyn7_dXUcDxvf6kY-w4bM0PkK3zOH5BDKUtacZQeG0fkKb7QTnY4BQBecGZJCMAFCuNTH1zeTzZjE6Fy3LDSR3Vje5pG42MZkq4zER',1,'2020-11-27 14:15:35','2020-11-27 14:15:35'),(39,'WnpKnw0wdMVSzN3KrGa7','123456','10.0','123456','1.0.5','1','10.0','vivo',1,'dummy:10.0.0.0','',0,'2020-11-27 14:54:57','2020-11-27 15:02:18'),(40,'WnpKnw0wdMVSzN3KrGa7','0f75e71e3ed7e071','violet','0f75e71e3ed7e071','1.0.6','1','violet','android',1,'192.168.43.1','egESbj8ASLqUlT_jCqI248:APA91bE-2T6HeymQPXzZomLeVsXI6O3qAevstEmhtZBusnfrR1rQnkaowev0hK9Zk3_a65GJzXd48grOhdJ-okZKQBGUp7-7wjOvYDj9ymFSkdATGIaIDaEgbOCGGoQKZ6qimATJxCCh',1,'2020-11-27 15:02:18','2020-11-27 15:02:18'),(41,'qbL5VBDJayDsPU6fF38w','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','iPhone','4EB66EFB-C4F7-4BAE-BC0F-3A9A64E20CD8','1.0.6','1','iPhone','ios',1,'192.168.1.4','f4HaIlhbAEfQquvnvYfNDI:APA91bGUgLThaEedMuSWQtFUQ-Rr5R9-3YcTY0Pe6p0Jm8Saim5gzMGZBHvy-oYIrAoE2__G-KPdzhsv_k6Mnky9MGD_0z_1dONYnc34dtmJ5_1_XijRMCZzr_MEk8VoUa7RsRnDCrFA',1,'2020-11-27 15:09:31','2020-11-27 15:09:31'),(42,'Blc0HCswn2ecnKONeJ6n','EFF62CFF-274E-4722-8558-E754B4AC3E8C','iPhone','EFF62CFF-274E-4722-8558-E754B4AC3E8C','1.0.6','1','iPhone','ios',1,'192.168.0.102','dhnlMiZkikt3tnC97q1OeG:APA91bHAsSAUnX0biAcp7t5lbv-h58Sh787YZA1kZchn_QgmlWDdkrymPcgCFdTJJwvPcaZ2SsZM_Ohe42KhyNCp81vui-DbnARiovIRe-2RF6izvnjTuslWXoGsubbPDhnzrZikkoHS',0,'2020-11-27 15:46:49','2020-11-27 15:53:42'),(43,'Blc0HCswn2ecnKONeJ6n','d6c2742f79bafbc7','OnePlus5T','d6c2742f79bafbc7','1.0.7','1','OnePlus5T','android',1,'192.168.0.101','dPtqrSVyS2GhgEyW12nTAA:APA91bGRTcd_hRCwLZ2xFGM7qHd5dpvQjrY_adTDj_tH_ZFgVjzC91Ein4RsM1k-PLFp7-afkgLqDPINS5FAzqEiwNMiq_xujsrwk-x6MPeC5I2MQ7hrhcIUyT_J4znu1yVsnxYzJdcO',0,'2020-11-27 15:53:42','2020-11-27 16:24:10'),(44,'Blc0HCswn2ecnKONeJ6n','84CF95DF-6346-4FC8-AFA8-F1DA45AD9C9D','iPhone','84CF95DF-6346-4FC8-AFA8-F1DA45AD9C9D','1.0.7','1','iPhone','ios',1,'192.168.0.102','eAycyKSG4UYFpMOeG6OVyL:APA91bGSh6nZd2xIbOJ9_8Pkk9-eLTcY-UPrnWU9VetgNOcVLUQDH74x8RrROFn2pOAZSpDtRMALcEbsjArblkJiCUGDV9Ash9aTZZnxgg1EsaFo2ANvfM-zDSvINGqmTiiGjlf7MQ9Q',0,'2020-11-27 16:24:10','2020-11-27 16:49:42'),(45,'Blc0HCswn2ecnKONeJ6n','d6c2742f79bafbc7','OnePlus5T','d6c2742f79bafbc7','1.0.7','1','OnePlus5T','android',1,'192.168.0.101','dPtqrSVyS2GhgEyW12nTAA:APA91bGRTcd_hRCwLZ2xFGM7qHd5dpvQjrY_adTDj_tH_ZFgVjzC91Ein4RsM1k-PLFp7-afkgLqDPINS5FAzqEiwNMiq_xujsrwk-x6MPeC5I2MQ7hrhcIUyT_J4znu1yVsnxYzJdcO',0,'2020-11-27 16:49:42','2020-11-27 16:51:49'),(46,'Blc0HCswn2ecnKONeJ6n','84CF95DF-6346-4FC8-AFA8-F1DA45AD9C9D','iPhone','84CF95DF-6346-4FC8-AFA8-F1DA45AD9C9D','1.0.7','1','iPhone','ios',1,'192.168.0.102','eAycyKSG4UYFpMOeG6OVyL:APA91bGSh6nZd2xIbOJ9_8Pkk9-eLTcY-UPrnWU9VetgNOcVLUQDH74x8RrROFn2pOAZSpDtRMALcEbsjArblkJiCUGDV9Ash9aTZZnxgg1EsaFo2ANvfM-zDSvINGqmTiiGjlf7MQ9Q',1,'2020-11-27 16:51:49','2020-11-27 16:51:49');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,'oXJBSyYaWykGy3EnwWds',3,1,'2020-11-26 10:04:41','2020-11-26 10:04:41'),(2,'oXJBSyYaWykGy3EnwWds',4,1,'2020-11-26 10:04:41','2020-11-26 10:04:41'),(3,'qbL5VBDJayDsPU6fF38w',2,1,'2020-11-26 10:10:08','2020-11-26 10:10:08'),(4,'Blc0HCswn2ecnKONeJ6n',1,1,'2020-11-26 10:22:37','2020-11-26 10:22:37'),(5,'Blc0HCswn2ecnKONeJ6n',2,1,'2020-11-26 10:22:37','2020-11-26 10:22:37'),(6,'Blc0HCswn2ecnKONeJ6n',4,1,'2020-11-26 10:22:37','2020-11-26 10:22:37'),(7,'Blc0HCswn2ecnKONeJ6n',8,1,'2020-11-26 10:22:37','2020-11-26 10:22:37'),(8,'Blc0HCswn2ecnKONeJ6n',10,1,'2020-11-26 10:22:37','2020-11-26 10:22:37'),(9,'Blc0HCswn2ecnKONeJ6n',13,1,'2020-11-26 10:22:37','2020-11-26 10:22:37'),(10,'g79OfgwqX3tbF8FujnsB',2,1,'2020-11-26 10:33:03','2020-11-26 10:33:03'),(11,'4D1TPV2VTVwy7yEZxHw8',2,1,'2020-11-26 11:01:53','2020-11-26 11:01:53'),(12,'rXQb8F0ltDqbknJedfY1',16,1,'2020-11-26 11:50:08','2020-11-26 11:50:08'),(13,'rXQb8F0ltDqbknJedfY1',4,1,'2020-11-26 11:50:08','2020-11-26 11:50:08'),(14,'rXQb8F0ltDqbknJedfY1',6,1,'2020-11-26 11:50:08','2020-11-26 11:50:08'),(15,'rXQb8F0ltDqbknJedfY1',7,1,'2020-11-26 11:50:08','2020-11-26 11:50:08'),(16,'M94hoDVb5O3M992ZvzYC',1,1,'2020-11-26 12:36:22','2020-11-26 12:36:22'),(17,'M94hoDVb5O3M992ZvzYC',2,1,'2020-11-26 12:36:22','2020-11-26 12:36:22'),(18,'M94hoDVb5O3M992ZvzYC',3,1,'2020-11-26 12:36:22','2020-11-26 12:36:22'),(19,'M94hoDVb5O3M992ZvzYC',4,1,'2020-11-26 12:36:22','2020-11-26 12:36:22'),(20,'N2w0w5R5Spb7Z2pJsz4R',4,1,'2020-11-26 13:51:17','2020-11-26 13:51:17'),(21,'N2w0w5R5Spb7Z2pJsz4R',10,1,'2020-11-26 13:51:17','2020-11-26 13:51:17'),(22,'N2w0w5R5Spb7Z2pJsz4R',12,1,'2020-11-26 13:51:17','2020-11-26 13:51:17'),(23,'lNkxpZWmDzqWnlVTItaP',2,1,'2020-11-26 14:03:23','2020-11-26 14:03:23'),(24,'lNkxpZWmDzqWnlVTItaP',4,1,'2020-11-26 14:03:23','2020-11-26 14:03:23'),(25,'U2IJSr55BZg4aZEJOtow',1,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(26,'U2IJSr55BZg4aZEJOtow',2,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(27,'U2IJSr55BZg4aZEJOtow',3,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(28,'U2IJSr55BZg4aZEJOtow',4,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(29,'U2IJSr55BZg4aZEJOtow',6,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(30,'U2IJSr55BZg4aZEJOtow',7,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(31,'U2IJSr55BZg4aZEJOtow',8,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(32,'U2IJSr55BZg4aZEJOtow',10,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(33,'U2IJSr55BZg4aZEJOtow',12,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(34,'U2IJSr55BZg4aZEJOtow',13,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(35,'U2IJSr55BZg4aZEJOtow',14,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(36,'U2IJSr55BZg4aZEJOtow',15,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(37,'U2IJSr55BZg4aZEJOtow',16,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(38,'U2IJSr55BZg4aZEJOtow',17,1,'2020-11-26 14:46:03','2020-11-26 14:46:03'),(39,'YLNOgQi99wmM3VLCRs3a',1,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(40,'YLNOgQi99wmM3VLCRs3a',2,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(41,'YLNOgQi99wmM3VLCRs3a',3,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(42,'YLNOgQi99wmM3VLCRs3a',4,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(43,'YLNOgQi99wmM3VLCRs3a',6,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(44,'YLNOgQi99wmM3VLCRs3a',7,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(45,'YLNOgQi99wmM3VLCRs3a',8,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(46,'YLNOgQi99wmM3VLCRs3a',10,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(47,'YLNOgQi99wmM3VLCRs3a',12,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(48,'YLNOgQi99wmM3VLCRs3a',13,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(49,'YLNOgQi99wmM3VLCRs3a',14,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(50,'YLNOgQi99wmM3VLCRs3a',15,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(51,'YLNOgQi99wmM3VLCRs3a',16,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(52,'YLNOgQi99wmM3VLCRs3a',17,1,'2020-11-26 15:03:51','2020-11-26 15:03:51'),(53,'4Ap9FocJf6EjtSSbsetK',1,1,'2020-11-27 07:04:23','2020-11-27 07:04:23'),(54,'4Ap9FocJf6EjtSSbsetK',3,1,'2020-11-27 07:04:23','2020-11-27 07:04:23'),(55,'vbi16wy7hpXorfke22xl',1,1,'2020-11-27 09:20:58','2020-11-27 09:20:58'),(56,'vbi16wy7hpXorfke22xl',3,1,'2020-11-27 09:20:58','2020-11-27 09:20:58'),(57,'WpfJ2XateRPCFhILGYD3',1,1,'2020-11-27 13:07:43','2020-11-27 13:07:43'),(58,'WpfJ2XateRPCFhILGYD3',2,1,'2020-11-27 13:07:43','2020-11-27 13:07:43'),(59,'WpfJ2XateRPCFhILGYD3',3,1,'2020-11-27 13:07:43','2020-11-27 13:07:43'),(60,'WpfJ2XateRPCFhILGYD3',4,1,'2020-11-27 13:07:43','2020-11-27 13:07:43'),(61,'kOPSubuP9WcoBevFHq5k',1,1,'2020-11-27 13:52:57','2020-11-27 13:52:57'),(62,'kOPSubuP9WcoBevFHq5k',3,1,'2020-11-27 13:52:57','2020-11-27 13:52:57');
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

-- Dump completed on 2020-11-27 17:01:25
