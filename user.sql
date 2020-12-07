-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: nuclei_user
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
-- Table structure for table `connected_accounts`
--

DROP TABLE IF EXISTS `connected_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connected_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `user_uid` varchar(45) NOT NULL,
  `oauth_provider_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauth_provider`
--

DROP TABLE IF EXISTS `oauth_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `vendor_id` varchar(45) NOT NULL,
  `config` mediumtext NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauthprovider_id` int(10) unsigned NOT NULL,
  `oauth_token` varchar(800) NOT NULL,
  `secondary_token` varchar(45) DEFAULT NULL,
  `refresh_token` varchar(200) DEFAULT NULL,
  `connected_people` int(11) NOT NULL,
  `connected_type` int(10) unsigned DEFAULT NULL,
  `raw_data` varchar(45) NOT NULL,
  `is_sso_login` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `expire_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `partner_id` mediumint(9) NOT NULL,
  `category_id` mediumint(9) DEFAULT NULL,
  `user_uid` varchar(45) NOT NULL,
  `vendor_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `full_address` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geohash` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plus_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(12,7) DEFAULT NULL,
  `longitude` decimal(12,7) DEFAULT NULL,
  `status` tinyint(4) unsigned NOT NULL,
  `is_primary` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `appearance_order` tinyint(3) unsigned DEFAULT '0',
  `record_status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mobile_number` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_customer_id` (`partner_id`,`user_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=142946 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_traveller_identity`
--

DROP TABLE IF EXISTS `user_traveller_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_traveller_identity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `traveller_id` int(10) unsigned NOT NULL,
  `identity_type` varchar(45) NOT NULL,
  `identity_value` varchar(50) NOT NULL,
  `additional_details` mediumtext,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expiry_at` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12939 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_traveller_profile`
--

DROP TABLE IF EXISTS `user_traveller_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_traveller_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `salutation` enum('Mr','Ms','Mrs','Master') NOT NULL,
  `nationality` varchar(25) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_user_uid` (`user_uid`(26))
) ENGINE=InnoDB AUTO_INCREMENT=545783 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07 13:46:49
