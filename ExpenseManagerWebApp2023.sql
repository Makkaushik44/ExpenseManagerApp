CREATE DATABASE  IF NOT EXISTS `expensemanagerapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `expensemanagerapp`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: expensemanagerapp
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounttype`
--

DROP TABLE IF EXISTS `accounttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounttype` (
  `accountTypeId` int NOT NULL AUTO_INCREMENT,
  `accountTypeName` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`accountTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounttype`
--

LOCK TABLES `accounttype` WRITE;
/*!40000 ALTER TABLE `accounttype` DISABLE KEYS */;
INSERT INTO `accounttype` VALUES (1,'cash'),(2,'cash'),(3,'cash'),(4,'online');
/*!40000 ALTER TABLE `accounttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Automobile',0),(2,'Food',0),(3,'mobile',1),(4,'electronics',1),(5,'mobile',1),(6,'Stationary',0),(7,'Food',1),(8,'electronics',1),(9,'electronics',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `expenseId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `subCategoryId` int DEFAULT NULL,
  `vendorId` int DEFAULT NULL,
  `accountTypeId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`expenseId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (1,'Eat something',NULL,NULL,NULL,NULL,NULL,250,NULL,NULL,NULL),(2,'Eat something',NULL,NULL,NULL,NULL,NULL,250,'2023-01-17',NULL,NULL),(3,'Eat something',NULL,NULL,NULL,NULL,NULL,40000,'2023-01-17',NULL,NULL),(4,'add fuel',1,NULL,NULL,2,2,50000,'2023-01-17',NULL,NULL),(5,'eat something',2,NULL,NULL,4,2,250,'2023-02-14',NULL,NULL),(6,'eat something',2,NULL,NULL,4,2,250,'2023-02-15',NULL,NULL),(7,'hy',1,NULL,NULL,4,3,123,'2023-02-17',NULL,NULL),(8,'hy',1,NULL,NULL,1,1,500,'2023-03-09',NULL,NULL),(9,'hy',1,NULL,NULL,1,1,500,'2023-03-09',NULL,NULL),(10,'hey',1,NULL,NULL,4,2,5000,'2023-03-09',NULL,NULL),(11,'hey',1,NULL,NULL,4,2,5000,'2023-03-09',NULL,NULL),(12,'hello',2,2,14,4,2,500,'2023-03-10',NULL,NULL),(13,'wufwbh ',1,1,1,1,1,4544,'2023-03-03','efgeyuiofweihuvhbj',NULL),(14,'wufwbh ',1,1,1,1,1,4544,'2023-03-03','efgeyuiofweihuvhbj',NULL),(15,'78624',1,1,1,1,1,757,'2023-03-09','jkhufn',NULL),(16,'78624',1,1,1,1,1,757,'2023-03-09','jkhufn',NULL),(17,'jkgefhd',1,1,1,1,1,3456,'2023-03-09','kfbdshj',NULL),(18,'jygdyue',1,1,1,1,1,65347,'2023-03-09','uhfgyufhd',NULL),(19,'jhegrhwejf',1,1,1,1,1,756764,'2023-02-17','kjfbdhjkjl',5),(20,'hey',1,1,1,1,1,763467,'2023-03-09','iugfuehjoi',5),(21,'jdrgfuyh',1,1,1,1,1,873467,'2023-03-09','kefjh',1),(22,'eiwufyghij',1,1,1,1,1,234,'2023-03-09','kjhfgsdhj',1),(23,'heyy',1,1,1,1,1,120000,'2023-03-12','hello today is sunday',1),(24,'eatsoethin',1,2,1,1,1,1333,'2023-03-12','jhdhb',1),(25,'eatsoethin',1,2,1,1,1,1333,'2023-03-12','jhdhb',1),(26,'eatsoethin',1,2,1,1,1,1333,'2023-03-12','jhdhb',1),(27,'eatsoethin',1,2,1,1,1,1333,'2023-03-12','jhdhb',1),(28,'eatsoethin',1,2,1,1,1,1333,'2023-03-12','jhdhb',1),(29,'ndjnd',1,1,1,1,1,2332,'2023-03-12','mnd nd',1),(30,'Eat FastFood',2,16,15,4,2,300,'2023-03-03','Today is Friday!',1),(31,'hey',1,1,1,4,3,3000,'2023-03-23','hey/',2),(32,'food',2,16,15,4,2,2000,'2023-03-26','this is special day',32),(33,'food',2,16,15,4,2,2000,'2023-03-26','this is special day',32),(34,'dinner',2,17,15,4,2,400,'2023-03-26','hey!!!',31),(35,'moday',1,1,14,1,2,400,'2023-04-03','hey???',31),(36,'hello!!',1,1,14,1,2,5000,'2023-04-05','hey',31),(37,'HELLO',4,15,1,1,2,10000,'2023-04-05','redmin 4',31),(39,'heyy',1,1,1,4,2,5000,'2023-04-07','hello',31);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `incomeId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `accountTypeId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`incomeId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,'hey','2023-03-10',NULL,1,1,NULL,''),(2,'hey','2023-03-10',NULL,1,1,NULL,''),(3,'hello','2023-04-21',NULL,1,2,400,'jhfuhsgfhu\r\n'),(4,'hello','2023-04-21',NULL,1,2,400,'jhfuhsgfhu\r\n'),(5,'hello','2023-04-21',NULL,1,2,400,'jhfuhsgfhu\r\n'),(6,'hyjhfgsdjh','2021-04-12',NULL,1,2,30000,'wjhefhwyghu'),(7,'heyhello','2023-03-12',1,1,2,20000,'hey today date is 1 of january'),(8,'heyhello','2023-03-12',1,1,2,20000,'hey today date is 1 of january'),(9,'heyhello','2023-03-12',1,1,2,20000,'hey today date is 1 of january'),(10,'heyhello','2023-03-12',1,1,2,20000,'hey today date is 1 of january'),(11,'hjbi','2023-03-12',1,1,1,764567,'jhbgh'),(12,'uyguy','2023-03-12',1,1,1,8767,'hgyuiuoh'),(13,'uyguy','2023-03-12',1,1,1,8767,'hgyuiuoh'),(14,'uyguy','2023-03-12',1,1,1,8767,'hgyuiuoh'),(15,'nekjw','2023-03-12',1,1,1,89337,'jbhjnknjh'),(16,'nekjw','2023-03-12',1,1,1,89337,'jbhjnknjh'),(17,'2oj','2023-03-12',1,1,1,398878,'iudhej'),(18,'2oj','2023-03-12',1,1,1,398878,'iudhej'),(19,'2oj','2023-03-12',1,1,1,398878,'iudhej'),(20,'hey','2023-03-12',1,1,2,37823,'ejhdhbjhbd'),(21,'Pocket Money','2023-03-01',2,4,2,7000,'this only for 1 month pocket money'),(22,'Wenseday','2023-03-15',2,1,3,5000,'hey!!'),(23,'hey','2023-03-17',5,1,3,4500,'this is pocket money'),(24,'hello','2023-03-23',2,1,2,2000,'jhr'),(25,'Mondys_expense','2023-03-27',32,1,2,200,'today\'s food expense'),(26,'monday','2023-04-03',31,1,3,5000,'heyy!!!');
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `statusId` int NOT NULL AUTO_INCREMENT,
  `statusName` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'unpaid'),(2,'paid'),(3,'paid'),(4,'partialypaid'),(5,'SemiPay'),(6,'SemiPay'),(7,'unpaid');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `subCategoryId` int NOT NULL AUTO_INCREMENT,
  `subCategoryName` varchar(30) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`subCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,'oil',1,0),(2,'oil',1,1),(3,'oil',1,1),(4,'oil',1,1),(5,'diesel',1,1),(6,'diesel',1,1),(7,'diesel',1,1),(8,'diesel',1,1),(9,'pizaa',2,1),(10,'vivo',3,1),(11,'oil',1,1),(12,'bulb',4,1),(13,'wire',4,1),(14,'wired',4,1),(15,'mobile',4,0),(16,'pizza',2,0),(17,'Dhosa',2,1),(18,'gold',-1,0);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `createdAt` varchar(20) DEFAULT NULL,
  `imageUrl` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'admin','admin','admin@gmail.com','admin',1,'ATgi1R',NULL,NULL,'01-03-2023','assets/profile/2/IMG_20220426_213856.jpg'),(30,'kaushik','mak','kaushik@gmail.com','1234',2,NULL,'2023-03-22','Male','30-03-2023',NULL),(31,'kaushik','hjbfs','mak@gmail.com','123',2,NULL,'2023-03-24','Male','30-03-2023','assets/profile/31/imagesuser.png'),(32,'kaushik','makwana','kaushik44@gmail.com','makwana123',2,NULL,'2023-03-24','Male','30-03-2023',NULL),(36,'rohit','sharma','rohit@gmial.com','1234567890',2,NULL,'1984-12-03','Male','3-04-2023',NULL),(37,'dummy','dumy','dumy@gmail.com','123456789',2,NULL,'2023-04-08','Male','8-04-2023',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendorId` int NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Flipkart',0),(8,'D-Mart',1),(9,'D-Mart',1),(10,'Flipkart',1),(11,'alpha',1),(12,'alpha',1),(13,'Flipkart',1),(14,'D-Mart',0),(15,'Lapinoz',0),(16,'Domino\'s',0),(17,'Amazon',0),(18,'boat',0),(19,'Realme ',0),(20,'Xiaomi',0),(21,'',1),(22,'OnePlus',0),(23,'Street Food',0),(24,'Reliance',0),(25,'Bharat Petrolium',0),(26,'Nayara Energy',0),(27,'Indian Oil',0),(28,'GSRTC',0);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-12 12:15:56
