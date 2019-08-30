CREATE DATABASE  IF NOT EXISTS `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `modules` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ModuleCode` varchar(45) DEFAULT NULL,
  `ModuleName` varchar(45) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(45) DEFAULT NULL,
  `LastModifiedTime` datetime DEFAULT NULL,
  `TimeStatus` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RowStatus` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Promo','PromoCard','SYSTEM','2019-08-29 19:36:33',NULL,NULL,'2019-08-29 12:36:33',0),(2,'Category','CategoryCard','SYSTEM','2019-08-29 19:36:33',NULL,NULL,'2019-08-29 12:36:33',0),(3,'FlashSale','FlashSaleCard','SYSTEM','2019-08-29 19:36:33',NULL,NULL,'2019-08-29 12:36:33',0),(4,'History','HistoryCard','SYSTEM','2019-08-29 19:36:33',NULL,NULL,'2019-08-29 12:36:33',0),(5,'News','NewsCard','SYSTEM','2019-08-29 19:36:33',NULL,NULL,'2019-08-29 12:36:33',0);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moduleusers`
--

DROP TABLE IF EXISTS `moduleusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `moduleusers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UsersID` int(11) DEFAULT NULL,
  `ModuleID` int(11) DEFAULT NULL,
  `ModuleOrder` int(11) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(45) DEFAULT NULL,
  `LastModifiedTime` datetime DEFAULT NULL,
  `TimeStatus` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RowStatus` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `moduleuser_users_idx` (`UsersID`),
  KEY `moduleuser_module_idx` (`ModuleID`),
  CONSTRAINT `moduleuser_module` FOREIGN KEY (`ModuleID`) REFERENCES `modules` (`ID`),
  CONSTRAINT `moduleuser_users` FOREIGN KEY (`UsersID`) REFERENCES `users` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moduleusers`
--

LOCK TABLES `moduleusers` WRITE;
/*!40000 ALTER TABLE `moduleusers` DISABLE KEYS */;
INSERT INTO `moduleusers` VALUES (1,1,1,1,'SYSTEM','2019-08-29 20:15:59',NULL,NULL,'2019-08-29 13:15:59',0),(2,1,2,2,'SYSTEM','2019-08-29 20:15:59',NULL,NULL,'2019-08-29 13:15:59',0),(3,1,3,3,'SYSTEM','2019-08-29 20:15:59',NULL,NULL,'2019-08-29 13:15:59',0),(4,1,4,4,'SYSTEM','2019-08-29 20:15:59',NULL,NULL,'2019-08-29 13:15:59',0),(5,1,5,5,'SYSTEM','2019-08-29 20:15:59',NULL,NULL,'2019-08-29 13:15:59',0),(6,2,1,1,'SYSTEM','2019-08-29 20:31:41',NULL,NULL,'2019-08-29 13:31:41',0),(7,2,2,4,'SYSTEM','2019-08-29 20:31:41',NULL,NULL,'2019-08-29 13:31:41',0),(8,2,3,3,'SYSTEM','2019-08-29 20:31:41',NULL,NULL,'2019-08-29 13:31:41',0),(9,2,4,5,'SYSTEM','2019-08-29 20:31:41',NULL,NULL,'2019-08-29 13:31:41',0),(10,2,5,2,'SYSTEM','2019-08-29 20:31:41',NULL,NULL,'2019-08-29 13:31:41',0),(11,3,1,1,'SYSTEM','2019-08-29 20:33:12',NULL,NULL,'2019-08-29 13:33:12',0),(12,3,2,3,'SYSTEM','2019-08-29 20:33:12',NULL,NULL,'2019-08-29 13:33:12',0),(13,3,3,2,'SYSTEM','2019-08-29 20:33:12',NULL,NULL,'2019-08-29 13:33:12',0),(14,3,4,5,'SYSTEM','2019-08-29 20:33:12',NULL,NULL,'2019-08-29 13:33:12',0),(15,3,5,4,'SYSTEM','2019-08-29 20:33:12',NULL,NULL,'2019-08-29 13:33:12',0);
/*!40000 ALTER TABLE `moduleusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(45) DEFAULT NULL,
  `LastModifiedTime` datetime DEFAULT NULL,
  `TimeStatus` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RowStatus` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'UserA','Jln.Sunter','UserA@gmail.com','SYSTEM','2019-08-29 19:50:31',NULL,NULL,'2019-08-29 12:50:31',0),(2,'UserB','Jln.Kelapa Gading','UserB@gmail.com','SYSTEM','2019-08-29 19:50:31',NULL,NULL,'2019-08-29 12:50:31',0),(3,'UserC','Jln.Gunung Sahari','UserC@gmail.com','SYSTEM','2019-08-29 19:50:31',NULL,NULL,'2019-08-29 12:50:31',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ecommerce'
--

--
-- Dumping routines for database 'ecommerce'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-30 11:58:13
