-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: nuclei_orders
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
-- Table structure for table `order_details_test`
--

DROP TABLE IF EXISTS `order_details_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details_test` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_detail_uid` varchar(40) NOT NULL,
  `order_uid` varchar(40) NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `item_description` varchar(40) DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `version` varchar(45) NOT NULL,
  `price` decimal(8,2) unsigned NOT NULL,
  `tax` decimal(8,2) unsigned NOT NULL,
  `discount` decimal(8,2) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_events`
--

DROP TABLE IF EXISTS `order_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_uid` varchar(40) NOT NULL,
  `order_item_id` int(10) unsigned DEFAULT NULL,
  `provider_id` int(10) unsigned DEFAULT NULL,
  `price` decimal(18,6) unsigned DEFAULT NULL,
  `version` varchar(40) DEFAULT NULL,
  `checkout_type` varchar(45) NOT NULL DEFAULT 'PAY_BEFORE',
  `tax` decimal(18,6) unsigned DEFAULT NULL,
  `discount` decimal(18,6) unsigned DEFAULT NULL,
  `currency_code` varchar(10) NOT NULL,
  `operation` varchar(40) NOT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_events_uid` (`order_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=175375 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_uid` varchar(40) NOT NULL,
  `item_id` varchar(40) NOT NULL,
  `version` varchar(45) NOT NULL,
  `price` decimal(18,6) unsigned DEFAULT NULL,
  `tax` decimal(18,6) unsigned DEFAULT NULL,
  `discount` decimal(18,6) unsigned DEFAULT NULL,
  `currency_code` varchar(10) NOT NULL,
  `refund_amount` decimal(18,6) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_events_uid` (`order_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=44565 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_refunds`
--

DROP TABLE IF EXISTS `order_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_refunds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(40) NOT NULL,
  `order_uid` varchar(40) DEFAULT NULL,
  `order_items_id` bigint(20) DEFAULT NULL,
  `refund_status` enum('Cancel','Partial_cancel','FULFILLMENT_FAILED') DEFAULT NULL,
  `version` varchar(45) NOT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_refunds_uid` (`order_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13082 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_transactions`
--

DROP TABLE IF EXISTS `order_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_uid` varchar(40) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `transaction_amount` decimal(18,6) DEFAULT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `transactional_status` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_trans_uid` (`order_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=29545 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_uid` varchar(40) NOT NULL,
  `customer_uid` varchar(40) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `partner_id` int(10) unsigned NOT NULL,
  `provider_id` int(10) unsigned NOT NULL,
  `cart_uid` varchar(40) NOT NULL,
  `category_params` varchar(45) NOT NULL,
  `order_state` varchar(40) NOT NULL,
  `total_amount` decimal(18,6) unsigned NOT NULL,
  `total_discount` decimal(18,6) unsigned NOT NULL,
  `total_tax` decimal(18,6) unsigned NOT NULL,
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `refund_amount` decimal(8,2) DEFAULT NULL,
  `device_id` varchar(45) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `version` varchar(45) NOT NULL,
  `checkout_type` varchar(45) NOT NULL DEFAULT 'PAY_BEFORE',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_uid_UNIQUE` (`order_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=34015 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orders_test`
--

DROP TABLE IF EXISTS `orders_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_test` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_uid` varchar(40) NOT NULL,
  `customer_uid` varchar(40) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `partner_id` int(10) unsigned NOT NULL,
  `provider_id` int(10) unsigned NOT NULL,
  `cart_uid` varchar(40) NOT NULL,
  `category_params` varchar(45) NOT NULL,
  `order_state` varchar(40) NOT NULL,
  `total_amount` decimal(8,2) unsigned NOT NULL,
  `total_discount` decimal(8,2) unsigned NOT NULL,
  `total_tax` decimal(8,2) unsigned NOT NULL,
  `latitude` decimal(11,8) unsigned NOT NULL,
  `longitude` decimal(11,8) unsigned NOT NULL,
  `device_id` varchar(45) NOT NULL,
  `version` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_order_events`
--

DROP TABLE IF EXISTS `test_order_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_order_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_uid` varchar(40) NOT NULL,
  `order_item_id` int(10) unsigned DEFAULT NULL,
  `provider_id` int(10) unsigned DEFAULT NULL,
  `price` decimal(18,6) unsigned DEFAULT NULL,
  `version` varchar(40) DEFAULT NULL,
  `checkout_type` varchar(45) NOT NULL DEFAULT 'PAY_BEFORE',
  `tax` decimal(18,6) unsigned DEFAULT NULL,
  `discount` decimal(18,6) unsigned DEFAULT NULL,
  `currency_code` varchar(10) NOT NULL,
  `operation` varchar(40) NOT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_events_uid` (`order_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=169337 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07 13:46:23
