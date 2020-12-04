-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_detail`
--

LOCK TABLES `card_detail` WRITE;
/*!40000 ALTER TABLE `card_detail` DISABLE KEYS */;
INSERT INTO `card_detail` VALUES (1,'74f6d2e5-fed4-4fe1-88eb-1f47f9742f1f','9EM1QMTEwbr2m0WRXUZ4','oG2nr3lH9Bo/Q+GwjzZT0g==','ptikhDBJ82Q3qsf0hgee6la42ocT5ZVEVB5d7vPB1rM=','HO1GEx1CqSMzYViyMxMCdtnRqHrmnv+rm5R8iOs0F5w=','531465xxxxxx7857','2X9ZLFY6SQ90nOIFOeJdH1vc7U+BrBdFv0AnCjbr0JE=','2f711739-8637-4fd8-a57e-328d73c2b02b','VERIFIED','FALCONAPPGEN','AED',71134202876955030,'qUARUGe0NfwZPcOGAG09bxeOP3DbQHh0/sABbBfFLOY=',1,'2020-12-03 11:50:40','2020-12-04 04:59:41'),(2,'674c56fc-9b50-42da-8496-3cbadce26c76','FyLHCzs2zMVUXI6wujdE','39y/tsFLfjk2wkOC9Yr0sQ==','++M5RK9o8W14JMYvzWUQ1la42ocT5ZVEVB5d7vPB1rM=','Umbc3Wf0O8Lg700ml3CmN77lN1hQYYtld1J2RUStN5k=','531465xxxxxx7899','vzYNJSYTn2986ywsL8I+OeThY8UIHSFmrDjMCt34sIE=','bf75e7cf-a6db-40b6-8303-3cb587cd8ff0','REGISTERED','FALCONAPPGEN','AED',47897501769075094,'nVMAeT5yew/upjx2dkFloqEfCCeMAXfJi7G9aWjqmPU=',1,'2020-12-03 12:36:47','2020-12-03 12:38:46'),(3,'38f5d816-d2fc-457d-b3ae-fb5c6f830ad7','7TE1pLAnMSdFOCRUFwQY','39y/tsFLfjk2wkOC9Yr0sQ==','Z0KzcwWNbc60IDLzPWe7OFa42ocT5ZVEVB5d7vPB1rM=','8eQG6keF/VNMJ+I12TL3M1ZRJZpwlJ1Z8Ojdzqgvh7c=','531465xxxxxx7873','wsPBySs9Mn7+lNV9TKLiMlPnvlbhTWnC/N5W9nzBuFg=','02c71020-a49c-46fd-a956-52bd4dbb7023','VERIFIED','FALCONAPPGEN','AED',24189722037615931,'K9/BE7V4jBelYFNzfNp7LP/0zttzdxIoq1azD/LMaG4=',1,'2020-12-03 14:12:05','2020-12-04 06:23:07'),(4,'3cab352f-9e0c-428e-9b1b-366fc0e549d8','wFMrXI4pTgSWMAWqXab5','kknGu9+obfuGH90cjEIIhg==','dhGt0nAURXbPE7/sXoi041a42ocT5ZVEVB5d7vPB1rM=','wuFDzwUnr1xsVIOGz5HhXmiXV1kadI0qJSVhAcKjQpk=','531465xxxxxx6023','LtYnBZJk1sOTQ2fruy0MhY+ngV3yQvm+/xt52UhkIKk=','731f2c24-a8ff-474c-87ac-051262e6ca8b','VERIFIED','FALCONAPPGEN','AED',69827704564290388,'rdhFR/nrMJh4KwneLWy0rlLqN+/nV+DcgV4E74LTHX4=',0,'2020-12-04 02:40:24','2020-12-04 03:38:10'),(5,'22fd0602-7267-4ebd-b5ea-370048b5148a','wFMrXI4pTgSWMAWqXab5','kknGu9+obfuGH90cjEIIhg==','UnqXIEjkP25phk8jaZbas1a42ocT5ZVEVB5d7vPB1rM=','rw8KSxJISPkgfYTt7GkE70vR8T/ZrFNHPXCn3TSWm20=','533012xxxxxx5005','DHV8sILRNuYfZ7f7m/HILEIyAd0M/xBa0T/VEmLpKR8=','S-1T85SXL-CHE4J6A-YGGC651','VERIFIED','FALCONAPPGEN','AED',30043493954630566,'tbV/vz8wDkLmsiwbS67T5+gTTQwUxRtOmUfGVBXManY=',1,'2020-12-04 03:38:10','2020-12-04 03:38:10'),(6,'f64bbac7-8e6a-4953-be07-5ce85a60812a','ujQZqb6d6kLfdWjPAwoA','10qc70zRGvFxpt7SwRNiwA==','1hWnNQMyuEop55IY0Hu8PVa42ocT5ZVEVB5d7vPB1rM=','eh01+K2FjjX4sDEdbb7990QkfMr66hx+5I4gwOXasQI=','531465xxxxxx3638','WfneL5pXLpmmtry6pUH4eIQ5SHEcFICRyhLYJF7beKw=','d6b05f5c-a921-4fd5-ae97-ef220a18f789','REGISTERED','FALCONAPPGEN','AED',8136096727445018,'kfxJbHEErkqQOjjHIlB0jKpFYK9lIvLJ13MHjFv79zg=',1,'2020-12-04 05:07:05','2020-12-04 05:07:47'),(7,'5dbdb290-ee92-4c20-a73a-d68461744041','jE3z21FjZeaLveMiZDzA','h/voTbaOJay+lNmceCnE6Q==','EG1JOG/jOSIg/wPGLWp1RFa42ocT5ZVEVB5d7vPB1rM=','BRJ/ZeIFcSHdfQ5TPc0HGEcCj6GUYlAQa+rPPuHNSo4=','531465xxxxxx0306','s190GyjgWcLEtRXUONke+MpLquM2f3+bRt6746TXpwc=','90e1409a-c97f-458c-afcf-53213dbc5ccc','REGISTERED','FALCONAPPGEN','AED',81719469698416616,'Z42tYk6jAJF56Xal6G3EYsgn3dtY6BMUWZ/hRwMfXPg=',1,'2020-12-04 06:44:03','2020-12-04 06:44:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'3cab352f-9e0c-428e-9b1b-366fc0e549d8','O-4Y6DEN6-I5EVTQW-ZZR9391','P-4BGMFJO-L1UM6G2-NA1HKL1','PENNY_DROP_PAYMENT',1.000000,'AED','FALCONAPPGEN','INTERNET','033902302791','030812','iLCavj599nSS4uF7e6KsJkD9WfDPWbOwAU2FgmCvByw=',1,'2020-12-04 02:51:08','2020-12-04 02:51:08'),(2,'22fd0602-7267-4ebd-b5ea-370048b5148a','O-3NOBPKP-09LW7LH-H2H3L4Z','P-3PUU84F-JHRPZSJ-STK2JVY','PENNY_DROP_PAYMENT',1.000000,'AED','FALCONAPPGEN','INTERNET','033903304831','032610','MZeRWzdOnkwmXsuxNFCjdZLLXDGpCtZS2aN0LI3UWf8=',1,'2020-12-04 03:38:10','2020-12-04 03:38:10'),(3,'74f6d2e5-fed4-4fe1-88eb-1f47f9742f1f','O-04YR3M3-XU69JX4-JFWEY74','P-62UDCAE-GO8TSPR-ERLZF1J','PENNY_DROP_PAYMENT',1.000000,'AED','FALCONAPPGEN','INTERNET','033904306871','024747','F+hBDhi7dVn3qWvmD9rE2oDKmWoH8YfPgK55kkd8Dvo=',1,'2020-12-04 04:59:40','2020-12-04 04:59:40'),(4,'38f5d816-d2fc-457d-b3ae-fb5c6f830ad7','O-6K8X8QJ-QFFS35S-QHHFS98','P-J7FHVA9-ET7SEI5-7CP8Z18','PENNY_DROP_PAYMENT',1.000000,'AED','FALCONAPPGEN','INTERNET','033906298572','036239','ayiYsvZ8VFNrLzcOvN8TWHsJRUmANpyICqyo1wIApUU=',1,'2020-12-04 06:23:07','2020-12-04 06:23:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund`
--

LOCK TABLES `refund` WRITE;
/*!40000 ALTER TABLE `refund` DISABLE KEYS */;
INSERT INTO `refund` VALUES (1,'3cab352f-9e0c-428e-9b1b-366fc0e549d8','O-4Y6DEN6-I5EVTQW-ZZR9391','R-NTH5WTC-PQ5BZ2S-ERPSAEQ','PENNY_DROP_REFUND',1.000000,'AED','FALCONAPPGEN','INTERNET','033902303801','qd29/R/FkxsXGRFhhaDzP+nZfg0wpjrNrVTFZgSlaWM=',1,'2020-12-04 02:51:08','2020-12-04 02:51:08'),(2,'22fd0602-7267-4ebd-b5ea-370048b5148a','O-3NOBPKP-09LW7LH-H2H3L4Z','R-EVJU8QC-4RHOFUS-UYMCJT4','PENNY_DROP_REFUND',1.000000,'AED','FALCONAPPGEN','INTERNET','033903305861','/D3kJzP4o9ag3sUcmLIAjG5cqPnxPjY/MfN51xRhUac=',1,'2020-12-04 03:38:10','2020-12-04 03:38:10'),(3,'74f6d2e5-fed4-4fe1-88eb-1f47f9742f1f','O-04YR3M3-XU69JX4-JFWEY74','R-ZSM3WF3-7VUXK18-63ZGZ4L','PENNY_DROP_REFUND',1.000000,'AED','FALCONAPPGEN','INTERNET','033904307901','f21QIU85Y7ap4v8VOMEOGGCNPJhsl9b5ZpsOuhYlMDw=',1,'2020-12-04 04:59:40','2020-12-04 04:59:40'),(4,'38f5d816-d2fc-457d-b3ae-fb5c6f830ad7','O-6K8X8QJ-QFFS35S-QHHFS98','R-DAIVG27-YNOMQYK-XPVX6NU','PENNY_DROP_REFUND',1.000000,'AED','FALCONAPPGEN','INTERNET','033906299592','fpMZpYJ5rmO3jptQqHEfgHROi1XcCxGQ8LYtpKZjE9o=',1,'2020-12-04 06:23:07','2020-12-04 06:23:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,'SESSION0002755288409K55360003F5','74f6d2e5-fed4-4fe1-88eb-1f47f9742f1f','FALCONAPPGEN','Ur1MdqqxDkY5rGxwBPSaUUr143hJtQ4yt/HrVqcP2CY=',5,'d22005b801','TOKENIZATION',1,'2020-12-03 11:50:40','2020-12-03 11:50:40',NULL,NULL),(2,'SESSION0002739529361G46763929N7','674c56fc-9b50-42da-8496-3cbadce26c76','FALCONAPPGEN','iBJBXI7AdooluzuWJm+5NPRhhOGu5w04j/ZG+ugwHfc=',5,'43e4080401','TOKENIZATION',1,'2020-12-03 12:36:46','2020-12-03 12:36:46',NULL,NULL),(3,'SESSION0002366747905E26525826J0','38f5d816-d2fc-457d-b3ae-fb5c6f830ad7','FALCONAPPGEN','jtJCYBqRU9kdQmyWwl0ueBWdctMcSGM7pLYstPGHTiY=',5,'4eaca7e101','TOKENIZATION',1,'2020-12-03 14:12:05','2020-12-03 14:12:05',NULL,NULL),(4,'SESSION0002211452411K30480351I8','3cab352f-9e0c-428e-9b1b-366fc0e549d8','FALCONAPPGEN','p8RVFs3hIjTa66xobi4IbtvUR69ZvWoOnPnKlSsqREg=',5,'015a6fe101','TOKENIZATION',0,'2020-12-04 02:40:23','2020-12-04 03:38:10',NULL,NULL),(5,'SESSION0002437065124M84102140K9','3cab352f-9e0c-428e-9b1b-366fc0e549d8','FALCONAPPGEN','wZsKvaP58mA6BSOx5H/GL5rs2hx1qe7+6vKWNb0pBDk=',5,'088a53ff01','PENNY_DROP_PAYMENT',0,'2020-12-04 02:51:08','2020-12-04 03:38:10','O-4Y6DEN6-I5EVTQW-ZZR9391','P-4BGMFJO-L1UM6G2-NA1HKL1'),(6,'SESSION0002764135045N27689859M2','22fd0602-7267-4ebd-b5ea-370048b5148a','FALCONAPPGEN','ASBqkYsBL4HGj3bfva4fLpanohv8KzUO3dv7KpIXda4=',5,'9835926301','TOKENIZATION',1,'2020-12-04 03:38:10','2020-12-04 03:38:10',NULL,NULL),(7,'SESSION0002653163895L96477705I6','22fd0602-7267-4ebd-b5ea-370048b5148a','FALCONAPPGEN','Bg1+fE8kTDWXRwUQYGehdRKpeLNaFeBvoflhP+pntjE=',5,'41b348ac01','PENNY_DROP_PAYMENT',1,'2020-12-04 03:38:10','2020-12-04 03:38:10','O-3NOBPKP-09LW7LH-H2H3L4Z','P-3PUU84F-JHRPZSJ-STK2JVY'),(8,'SESSION0002379792096H23524778L5','74f6d2e5-fed4-4fe1-88eb-1f47f9742f1f','FALCONAPPGEN','oeHYESN7OVIaTQMLTTgpFUYq9aUyNz7kS5b+80Gr5Z4=',5,'1e6e5bb301','PENNY_DROP_PAYMENT',1,'2020-12-04 04:59:40','2020-12-04 04:59:40','O-04YR3M3-XU69JX4-JFWEY74','P-62UDCAE-GO8TSPR-ERLZF1J'),(9,'SESSION0002352282408H37896068L2','f64bbac7-8e6a-4953-be07-5ce85a60812a','FALCONAPPGEN','SddvYF0apsGMAA/c48oMjfngQvZpfGQ3SW023eS4K+A=',5,'589741aa01','TOKENIZATION',1,'2020-12-04 05:07:05','2020-12-04 05:07:05',NULL,NULL),(10,'SESSION0002447766781L11304866J6','38f5d816-d2fc-457d-b3ae-fb5c6f830ad7','FALCONAPPGEN','VNEzEG51LHkfFvDoVTZtaK77WshPW7vNhSaDbPtBvBI=',5,'6b1c2c8101','PENNY_DROP_PAYMENT',1,'2020-12-04 06:23:06','2020-12-04 06:23:06','O-6K8X8QJ-QFFS35S-QHHFS98','P-J7FHVA9-ET7SEI5-7CP8Z18'),(11,'SESSION0002698038009L83185298K3','5dbdb290-ee92-4c20-a73a-d68461744041','FALCONAPPGEN','SuszoqfbzwPAKSe9YVi41ZDo7d0GWSYCSgEDXXZD/kI=',5,'da082b2001','TOKENIZATION',1,'2020-12-04 06:44:03','2020-12-04 06:44:03',NULL,NULL);
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

-- Dump completed on 2020-12-04  7:10:05
