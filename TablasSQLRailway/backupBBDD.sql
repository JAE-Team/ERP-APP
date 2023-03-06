-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: containers-us-west-126.railway.app    Database: railway
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `token` varchar(255) NOT NULL,
  `userOrigin` varchar(255) DEFAULT NULL,
  `userDestiny` varchar(255) DEFAULT NULL,
  `ammount` double DEFAULT NULL,
  `accepted` enum('waitingAcceptance','acceptedByUser','rejectedByUser','insufficient balance','otherError') DEFAULT NULL,
  `timeSetup` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timeStart` timestamp NULL DEFAULT NULL,
  `timeFinish` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('P-e02977ce-88e0-447f-aaf2-aac1d9d0507f',NULL,'123',50,'waitingAcceptance','2023-03-02 15:36:33',NULL,NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `userSurname` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userBalance` double DEFAULT NULL,
  `userStatus` varchar(50) DEFAULT 'active',
  `lastStatusChange` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sessionToken` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'123','test','Pedro','si','si@si.com',100,'active','2023-03-02 15:10:34','ST-2695675b-7499-4ad3-bcc1-4904f5bc7081'),(2,'12',NULL,'Test','test','test@si.com',100,'active','2023-03-02 15:10:48',NULL),(3,'67754','test','Prueba','Prueba2','si@si.com',100,'active','2023-03-02 17:26:30',NULL),(5,'623045380','hola123','Ismael','Morillo','juan@gmail.com',100,'active','2023-03-03 16:20:34','ST-22220a99-85ad-4355-aa5d-01d66e95073d');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-03 16:27:06
