-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `EmployeDetails`
--

DROP TABLE IF EXISTS `EmployeDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmployeDetails` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(80) DEFAULT NULL,
  `LastName` varchar(80) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `DOJ` date DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `MobileNo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeDetails`
--

LOCK TABLES `EmployeDetails` WRITE;
/*!40000 ALTER TABLE `EmployeDetails` DISABLE KEYS */;
INSERT INTO `EmployeDetails` VALUES (3,'John Amala','Fortunate','1998-10-14','2020-12-20','male','Web Apps Developer','john@ngpwebsmart.com','1234567890'),(4,'John Amala','Fortunate','1998-10-14','2020-12-20','male','Web Apps Developer','john@ngpwebsmart.com','1234567890'),(5,'John Amala','Fortunate','1998-10-14','2020-12-20','male','Web Apps Developer','john@ngpwebsmart.com','1234567890'),(6,'John Amala','Fortunate','1984-10-19','2020-12-22','male','Web Apps Developer','john@ngpwebsmart.com','1234567890');
/*!40000 ALTER TABLE `EmployeDetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-08 12:43:42
