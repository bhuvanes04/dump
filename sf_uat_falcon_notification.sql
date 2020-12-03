-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: falcon_notification
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
-- Table structure for table `notification_details`
--

DROP TABLE IF EXISTS `notification_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_details` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type` text NOT NULL,
  `identifier_value` text NOT NULL,
  `partner_id` int(11) NOT NULL,
  `external_identifier` text,
  `vendor_name` text NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_details`
--

LOCK TABLES `notification_details` WRITE;
/*!40000 ALTER TABLE `notification_details` DISABLE KEYS */;
INSERT INTO `notification_details` VALUES (1,'SMS','XSKpMJ2fyRkCuVxBIQT5kw==',1,'bb1246bf-f388-5f96-b88c-1ea63fc49670','aws_sns',1,'2020-11-02 08:57:49','2020-11-02 08:57:49'),(2,'EMAIL','yeVpTpyfo54ZPlDY3EuSyAavulodkmH7ZgQkiF4cmdo=',1,'00f7d05c-a04f-4ed9-860a-169559c10991','aws_ses',1,'2020-11-03 09:54:11','2020-11-03 09:54:11'),(3,'EMAIL','yeVpTpyfo54ZPlDY3EuSyAavulodkmH7ZgQkiF4cmdo=',1,'fa035055-4045-4d78-8eb9-9c5f43dfbc52','aws_ses',1,'2020-11-03 10:10:08','2020-11-03 10:10:08'),(4,'SMS','XSKpMJ2fyRkCuVxBIQT5kw==',1,'309a4aa7-c8af-5a8c-b66e-12b8e3181b6a','aws_sns',1,'2020-11-06 10:46:15','2020-11-06 10:46:15'),(5,'SMS','XSKpMJ2fyRkCuVxBIQT5kw==',1,'24befd3e-9a16-5a4a-a1fc-a521b1db1c94','aws_sns',1,'2020-11-06 10:46:37','2020-11-06 10:46:37'),(6,'SMS','XSKpMJ2fyRkCuVxBIQT5kw==',1,'89f20cc9-993b-5145-8cc0-54d6b511f5e2','aws_sns',1,'2020-11-06 10:48:10','2020-11-06 10:48:10'),(7,'SMS','XSKpMJ2fyRkCuVxBIQT5kw==',1,'83fdc97c-908c-5866-a1a7-9163bc3bd242','aws_sns',1,'2020-11-06 10:50:31','2020-11-06 10:50:31'),(8,'EMAIL','yeVpTpyfo54ZPlDY3EuSyAavulodkmH7ZgQkiF4cmdo=',1,'6d4e2054-bcef-427b-a54c-54b1643227ee','aws_ses',1,'2020-11-06 10:52:26','2020-11-06 10:52:26'),(9,'SMS','XSKpMJ2fyRkCuVxBIQT5kw==',1,'33402813-1fbd-5dba-b577-700c32560238','aws_sns',1,'2020-11-06 10:55:39','2020-11-06 10:55:39'),(10,'SMS','XSKpMJ2fyRkCuVxBIQT5kw==',1,'52804554-3c42-5c27-be03-1d4b12108e8f','aws_sns',1,'2020-11-06 10:57:23','2020-11-06 10:57:23');
/*!40000 ALTER TABLE `notification_details` ENABLE KEYS */;
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
