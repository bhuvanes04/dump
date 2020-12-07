-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: nuclei_cart
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
-- Table structure for table `cart_fare_details`
--

DROP TABLE IF EXISTS `cart_fare_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_fare_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_uid` varchar(40) NOT NULL,
  `fare_type` varchar(50) DEFAULT NULL,
  `fare_amount` decimal(16,5) unsigned NOT NULL,
  `checkout_type` varchar(20) NOT NULL DEFAULT 'INTERNAL',
  `item_uid` varchar(45) DEFAULT NULL,
  `notes` varchar(512) DEFAULT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43942 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cart_info`
--

DROP TABLE IF EXISTS `cart_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cart_uid` varchar(40) NOT NULL,
  `partner_id` int(10) unsigned NOT NULL,
  `category_id` mediumint(8) unsigned NOT NULL,
  `device_id` varchar(40) NOT NULL,
  `user_uid` varchar(40) NOT NULL,
  `version` varchar(40) NOT NULL,
  `latitude` decimal(11,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `m_total_amount` decimal(16,5) unsigned DEFAULT NULL,
  `m_total_discount` decimal(16,5) DEFAULT NULL,
  `m_total_tax` decimal(16,5) unsigned DEFAULT NULL,
  `provider_id` int(10) unsigned NOT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `coupon_applied` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_wallet_applied` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `state` varchar(60) NOT NULL,
  `checkout_type` varchar(45) DEFAULT 'PAY_BEFORE',
  `status` tinyint(4) unsigned DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `c_uid_UNIQUE` (`cart_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=112527 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cart_info_activity`
--

DROP TABLE IF EXISTS `cart_info_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_info_activity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `partner_id` int(10) NOT NULL DEFAULT '-1',
  `user_uid` varchar(40) NOT NULL DEFAULT 'empty',
  `category_id` mediumint(8) NOT NULL DEFAULT '-1',
  `cart_uid` varchar(40) NOT NULL,
  `m_total_amount` decimal(16,5) NOT NULL DEFAULT '-1.00000',
  `state` varchar(60) NOT NULL,
  `checkout_type` varchar(45) DEFAULT 'PAY_BEFORE',
  `status` tinyint(4) unsigned DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `coupon_applied` tinyint(4) unsigned DEFAULT '0',
  `is_wallet_applied` tinyint(4) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89803 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` bigint(20) unsigned NOT NULL,
  `cart_uid` varchar(40) NOT NULL,
  `item_uid` varchar(45) NOT NULL,
  `m_price` decimal(16,5) unsigned DEFAULT NULL,
  `m_tax` decimal(16,5) unsigned DEFAULT NULL,
  `m_discount` decimal(16,5) unsigned DEFAULT NULL,
  `device_id` varchar(40) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `state` varchar(60) NOT NULL,
  `version` varchar(12) NOT NULL,
  `status` tinyint(4) unsigned DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_idx_idx` (`cart_id`),
  KEY `idx_cart_uid` (`cart_uid`),
  CONSTRAINT `fk_cart_idx` FOREIGN KEY (`cart_id`) REFERENCES `cart_info` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=74777 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cart_item_activity`
--

DROP TABLE IF EXISTS `cart_item_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_item_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` bigint(20) unsigned NOT NULL,
  `cart_uid` varchar(40) NOT NULL,
  `item_uid` varchar(45) NOT NULL,
  `device_id` varchar(45) NOT NULL,
  `version` varchar(40) NOT NULL,
  `m_price` decimal(16,5) unsigned DEFAULT NULL,
  `m_tax` decimal(16,5) unsigned DEFAULT NULL,
  `m_discount` decimal(16,5) unsigned DEFAULT NULL,
  `currency_code` varchar(10) NOT NULL,
  `state` varchar(60) NOT NULL DEFAULT '',
  `operation` tinyint(4) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_cart_idx` (`cart_id`),
  KEY `idx_cart_uid` (`cart_uid`),
  CONSTRAINT `fk_cart_activity` FOREIGN KEY (`cart_id`) REFERENCES `cart_info` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=155652 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cart_wallet_info`
--

DROP TABLE IF EXISTS `cart_wallet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_wallet_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_uid` varchar(45) NOT NULL,
  `rollback_amount` decimal(17,6) unsigned NOT NULL,
  `notes` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `wallet_transaction_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_wallet_info_cart_uid_IDX` (`cart_uid`,`status`,`wallet_transaction_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `legacy_transaction_count`
--

DROP TABLE IF EXISTS `legacy_transaction_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legacy_transaction_count` (
  `user_uid` varchar(40) NOT NULL,
  `category_id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unik` (`user_uid`,`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1764162 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_aggregated_info`
--

DROP TABLE IF EXISTS `user_aggregated_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_aggregated_info` (
  `user_uid` varchar(40) NOT NULL,
  `category_id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unik` (`user_uid`,`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2712 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07 13:46:02
