-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: falcon_payments
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
-- Table structure for table `card_detail`
--

DROP TABLE IF EXISTS `card_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_uid` varchar(45) NOT NULL,
  `user_uid` varchar(45) DEFAULT NULL,
  `card_holder_name` varchar(100) DEFAULT NULL,
  `card_token` varchar(45) NOT NULL,
  `card_number` varchar(100) DEFAULT NULL,
  `masked_card_no` varchar(45) NOT NULL,
  `hashed_card_details` varchar(100) NOT NULL,
  `session_token` varchar(45) NOT NULL,
  `card_status` varchar(45) NOT NULL DEFAULT 'NULL',
  `merchant_name` varchar(45) NOT NULL,
  `currency` varchar(45) NOT NULL,
  `nonce` bigint(20) NOT NULL,
  `hash` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_detail`
--

LOCK TABLES `card_detail` WRITE;
/*!40000 ALTER TABLE `card_detail` DISABLE KEYS */;
INSERT INTO `card_detail` VALUES (1,'3d23631e-bf63-4797-b5f9-320482167232',NULL,'39y/tsFLfjk2wkOC9Yr0sQ==','qbXGR+4juV311QWuru3ybVa42ocT5ZVEVB5d7vPB1rM=','Umbc3Wf0O8Lg700ml3CmN77lN1hQYYtld1J2RUStN5k=','531465xxxxxx7899','vzYNJSYTn2986ywsL8I+OeThY8UIHSFmrDjMCt34sIE=','2e37172e-11cc-44de-bf83-ab6a9e74e987','TOKENIZED','FALCONAPPGEN','AED',52145276096300825,'j6apnidHzmn8CAi3Y3JOMVn+NK9DsLb+DTX2m8JrROg=',1,'2020-11-27 16:56:19','2020-11-27 16:56:19');
/*!40000 ALTER TABLE `card_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_uid` varchar(45) NOT NULL,
  `order_uid` varchar(45) NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `transaction_type` varchar(45) NOT NULL,
  `amount` decimal(18,6) NOT NULL,
  `currency` varchar(45) NOT NULL,
  `merchant_name` varchar(45) NOT NULL,
  `source` varchar(45) NOT NULL,
  `receipt` varchar(45) NOT NULL,
  `authorization_code` varchar(45) NOT NULL,
  `hash` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund`
--

DROP TABLE IF EXISTS `refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_uid` varchar(45) NOT NULL,
  `order_uid` varchar(45) NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `transaction_type` varchar(45) NOT NULL,
  `amount` decimal(18,6) NOT NULL,
  `currency` varchar(45) NOT NULL,
  `merchant_name` varchar(45) NOT NULL,
  `source` varchar(45) NOT NULL,
  `receipt` varchar(45) NOT NULL,
  `hash` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `created_at_UNIQUE` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund`
--

LOCK TABLES `refund` WRITE;
/*!40000 ALTER TABLE `refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(45) NOT NULL,
  `card_uid` varchar(45) NOT NULL,
  `merchant_name` varchar(45) NOT NULL,
  `aes_key` varchar(100) NOT NULL,
  `authentication_limit` int(11) NOT NULL,
  `version` varchar(45) NOT NULL,
  `operation` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_uid` varchar(45) DEFAULT NULL,
  `transaction_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `card_uid_idx` (`card_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,'SESSION0002302273555L3441202K96','3d23631e-bf63-4797-b5f9-320482167232','FALCONAPPGEN','vReZhPRXYbfBUwKNeZyR7unQmX/myRKH+EjYFsNh5j8=',5,'d8ed5be801','TOKENIZATION',1,'2020-11-27 16:56:19','2020-11-27 16:56:19',NULL,NULL);
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-27 17:01:27
