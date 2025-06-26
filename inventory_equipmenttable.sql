-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `equipmenttable`
--

DROP TABLE IF EXISTS `equipmenttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipmenttable` (
  `equipmentid` varchar(200) NOT NULL,
  `name_equipment` varchar(200) DEFAULT NULL,
  `make` varchar(200) DEFAULT NULL,
  `id_no` varchar(200) DEFAULT NULL,
  `ra_nge` varchar(200) DEFAULT NULL,
  `acceptance_criteria` varchar(200) DEFAULT NULL,
  `frequency_calibration` varchar(200) DEFAULT NULL,
  `calibration_agency` varchar(200) DEFAULT NULL,
  `date_of_calibration` date DEFAULT NULL,
  `calibration_due_date` date DEFAULT NULL,
  `recall_date` date DEFAULT NULL,
  `divisioncode` varchar(50) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`equipmentid`),
  KEY `fk_equipment_division` (`divisioncode`),
  KEY `fk_equipment_user` (`user_id`),
  CONSTRAINT `fk_equipment_division` FOREIGN KEY (`divisioncode`) REFERENCES `divisiontable` (`divisioncode`),
  CONSTRAINT `fk_equipment_user` FOREIGN KEY (`user_id`) REFERENCES `usertable` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmenttable`
--

LOCK TABLES `equipmenttable` WRITE;
/*!40000 ALTER TABLE `equipmenttable` DISABLE KEYS */;
INSERT INTO `equipmenttable` VALUES ('201','wind tunnel','abc','123','13','xyz','10','mnop','2024-01-10','2024-10-10','2024-05-10','div1','101');
/*!40000 ALTER TABLE `equipmenttable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-26 13:34:12
