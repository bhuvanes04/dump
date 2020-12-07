-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: nuclei_wallet
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
-- Table structure for table `external_wallet_audit`
--

DROP TABLE IF EXISTS `external_wallet_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_wallet_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `partner_uid` varchar(45) NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `user_uid` varchar(45) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `operation` varchar(45) NOT NULL,
  `operation_status` varchar(45) NOT NULL,
  `notes` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `partner_uid` varchar(45) NOT NULL,
  `balance` decimal(17,6) unsigned NOT NULL,
  `user_blocked` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(250) NOT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_wallet_user` (`user_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1180232 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wallet_audit`
--

DROP TABLE IF EXISTS `wallet_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_uid` varchar(45) NOT NULL,
  `partner_uid` varchar(45) NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `balance` decimal(17,6) unsigned NOT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `user_blocked` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1182368 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wallet_credit`
--

DROP TABLE IF EXISTS `wallet_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_credit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `partner_uid` varchar(45) NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `state` varchar(50) NOT NULL,
  `amount` decimal(17,6) unsigned NOT NULL,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `notes` varchar(250) NOT NULL,
  `hash` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_consumed` tinyint(4) NOT NULL,
  `consumed_amt` decimal(17,6) NOT NULL,
  `expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_uid_UNIQUE` (`transaction_id`),
  KEY `idx_prt_stat_exp` (`partner_uid`,`state`),
  KEY `idx_usr_st` (`user_uid`,`state`),
  KEY `idx_expr_prtid` (`expire_at`,`partner_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1181448 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wallet_credit_audit`
--

DROP TABLE IF EXISTS `wallet_credit_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_credit_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `partner_uid` varchar(45) NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `amount` decimal(17,6) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `notes` varchar(250) NOT NULL,
  `is_consumed` tinyint(4) NOT NULL,
  `consumed_amt` decimal(17,6) NOT NULL,
  `expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_expr_prtid` (`expire_at`,`partner_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1184185 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wallet_debit`
--

DROP TABLE IF EXISTS `wallet_debit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_debit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `partner_uid` varchar(45) NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `amount` decimal(17,6) unsigned NOT NULL,
  `rollback_amount` decimal(17,6) unsigned NOT NULL,
  `blocked_amount` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `notes` varchar(250) NOT NULL,
  `hash` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_uid_UNIQUE` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1068 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wallet_debit_audit`
--

DROP TABLE IF EXISTS `wallet_debit_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_debit_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(45) NOT NULL,
  `partner_uid` varchar(45) NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `amount` decimal(17,6) unsigned NOT NULL,
  `rollback_amount` decimal(17,6) unsigned NOT NULL,
  `blocked_amount` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `notes` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4213 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wallet_incentive_info`
--

DROP TABLE IF EXISTS `wallet_incentive_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_incentive_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `partner_id` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `amount` decimal(17,6) NOT NULL,
  `request_id` varchar(50) NOT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `campaign` varchar(50) DEFAULT NULL,
  `is_expired` tinyint(4) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `is_processed` tinyint(4) NOT NULL,
  `expire_at` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_request_id` (`request_id`,`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wallet_redeem_info`
--

DROP TABLE IF EXISTS `wallet_redeem_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_redeem_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(45) NOT NULL,
  `credit_ref_id` varchar(45) NOT NULL,
  `consumed_amount` decimal(17,6) DEFAULT NULL,
  `partner_uid` varchar(45) NOT NULL,
  `user_uid` varchar(45) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1127 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07 13:45:41
