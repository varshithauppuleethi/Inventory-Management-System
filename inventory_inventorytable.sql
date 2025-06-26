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
-- Table structure for table `inventorytable`
--

DROP TABLE IF EXISTS `inventorytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventorytable` (
  `InventoryNumber` varchar(100) NOT NULL,
  `item_desc` varchar(500) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `manufactore_date` date DEFAULT NULL,
  `disposal_date` date DEFAULT NULL,
  `issued_to` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `disposal_mechanism` varchar(200) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `divisioncode` varchar(50) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`InventoryNumber`),
  KEY `fk_inventory_division` (`divisioncode`),
  KEY `fk_inventory_user` (`user_id`),
  CONSTRAINT `fk_inventory_division` FOREIGN KEY (`divisioncode`) REFERENCES `divisiontable` (`divisioncode`),
  CONSTRAINT `fk_inventory_user` FOREIGN KEY (`user_id`) REFERENCES `usertable` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventorytable`
--

LOCK TABLES `inventorytable` WRITE;
/*!40000 ALTER TABLE `inventorytable` DISABLE KEYS */;
INSERT INTO `inventorytable` VALUES ('120','yde','2025-10-03','2021-10-12','2021-12-15','wbfuy',10,'bfurj','uyurey','div1','101'),('201','jfnk','2021-12-30','2021-12-15','2025-10-20','fue',22,'wbf','abcd','div1','101');
/*!40000 ALTER TABLE `inventorytable` ENABLE KEYS */;
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
