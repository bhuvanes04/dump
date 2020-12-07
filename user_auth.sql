-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: nuclei_user_auth
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
-- Table structure for table `login_identifier`
--

DROP TABLE IF EXISTS `login_identifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_identifier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_uid` varchar(45) NOT NULL,
  `country_code` int(5) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `cif` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `otp_request`
--

DROP TABLE IF EXISTS `otp_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `partner_id` varchar(45) NOT NULL,
  `device_id` varchar(45) NOT NULL,
  `otp` varchar(8) NOT NULL,
  `session_token` varchar(45) NOT NULL,
  `nonce` bigint(20) NOT NULL,
  `send_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `validate_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `expired_at` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_token_UNIQUE` (`session_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2922 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seamless_login_tokens`
--

DROP TABLE IF EXISTS `seamless_login_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seamless_login_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(45) DEFAULT NULL,
  `cif` varchar(45) DEFAULT NULL,
  `partner_id` mediumint(8) unsigned NOT NULL,
  `request_token` varchar(255) NOT NULL,
  `request_time` datetime NOT NULL,
  `response_token` varchar(255) DEFAULT NULL,
  `device_identifier` varchar(45) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `status` tinyint(4) unsigned NOT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37794 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_auth`
--

DROP TABLE IF EXISTS `temp_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_auth` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(45) NOT NULL,
  `country_code` int(5) NOT NULL,
  `partner_id` mediumint(8) unsigned NOT NULL,
  `device_id` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `temp_token` varchar(400) DEFAULT NULL,
  `otp` varchar(80) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `expired_at` datetime NOT NULL,
  `auth_count` tinyint(4) DEFAULT NULL,
  `last_auth` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `resend_count` tinyint(3) NOT NULL,
  `auth_status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_cc_mob_devid_pid` (`mobile`,`partner_id`,`device_id`,`country_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1858 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(40) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `cif` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `partner_id` mediumint(8) unsigned NOT NULL,
  `country_code` int(5) unsigned NOT NULL,
  `legacy_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `last_auth` datetime DEFAULT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`user_uid`),
  UNIQUE KEY `idx_cc_mob_partner_cif` (`mobile`,`partner_id`,`country_code`,`cif`),
  KEY `idx_prt_st_cif` (`partner_id`,`status`,`cif`),
  KEY `idx_prt_st_mob` (`partner_id`,`status`,`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=20304425 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_access_codes`
--

DROP TABLE IF EXISTS `user_access_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_access_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_uid` varchar(40) NOT NULL,
  `access_code` varchar(300) NOT NULL,
  `partner_id` mediumint(8) unsigned NOT NULL,
  `device_id` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_access_codes_ibfk_1` (`user_id`),
  CONSTRAINT `user_access_codes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15063 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_device_mapping`
--

DROP TABLE IF EXISTS `user_device_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_device_mapping` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_uid` varchar(40) NOT NULL,
  `device_id` varchar(45) NOT NULL,
  `mobile_version` varchar(100) NOT NULL,
  `device_identifier` varchar(36) DEFAULT NULL,
  `app_version` varchar(45) DEFAULT NULL,
  `app_version_code` int(11) unsigned DEFAULT NULL,
  `os_version` varchar(45) DEFAULT NULL,
  `device_type` tinyint(4) unsigned NOT NULL,
  `partner_id` mediumint(8) unsigned NOT NULL,
  `language_id` mediumint(8) unsigned DEFAULT '1',
  `fcm_token` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `partner_app_version` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_udm` (`user_uid`,`device_id`,`partner_id`),
  KEY `udm_fk_user_id_idx` (`user_id`),
  CONSTRAINT `udm_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3856 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_device_mapping_audit`
--

DROP TABLE IF EXISTS `user_device_mapping_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_device_mapping_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_uid` varchar(40) NOT NULL,
  `device_id` varchar(45) NOT NULL,
  `mobile_version` varchar(100) NOT NULL,
  `device_identifier` varchar(36) DEFAULT NULL,
  `app_version` varchar(45) DEFAULT NULL,
  `app_version_code` int(11) unsigned DEFAULT NULL,
  `os_version` varchar(45) DEFAULT NULL,
  `device_type` tinyint(4) unsigned NOT NULL,
  `partner_id` mediumint(8) unsigned NOT NULL,
  `language_id` mediumint(8) unsigned DEFAULT '1',
  `fcm_token` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `partner_app_version` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6920 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_ip_audit`
--

DROP TABLE IF EXISTS `user_ip_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_ip_audit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_uid` varchar(40) NOT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5445 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_uid` varchar(40) NOT NULL,
  `partner_id` mediumint(8) unsigned NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mobile_payment_type` tinyint(1) unsigned DEFAULT '0',
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` tinyint(4) unsigned DEFAULT NULL,
  `age_group` tinyint(4) unsigned DEFAULT NULL,
  `is_active_install` tinyint(4) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_part_devid` (`user_id`,`partner_id`),
  UNIQUE KEY `uuid` (`user_uid`),
  CONSTRAINT `user_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1672 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07 13:47:17
