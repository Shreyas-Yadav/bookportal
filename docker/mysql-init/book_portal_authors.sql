-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: uqi123.mysql.database.azure.com    Database: book_portal
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `operation_type` varchar(255) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jmhavkj33euq43uhnucw7l5he` (`email`),
  UNIQUE KEY `UK_9mhkwvnfaarcalo4noabrin5j` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,_binary '','2022-08-27 22:43:59.850000','SAVE','2022-08-27 22:43:59.850000','coelho@gmail.com','M','Paulo Coelho'),(2,_binary '','2022-08-27 22:45:48.774000','SAVE','2022-08-27 22:45:48.774000','bentley@gmail.com','M','Herman Melville'),(3,_binary '','2022-08-29 02:05:53.059000','SAVE','2022-08-29 02:05:53.059000','ata@gmail.com','M','Atatürk'),(4,_binary '','2022-09-04 12:42:43.277000','SAVE','2022-09-04 12:42:43.277000','sarah@gmail.com','F','Sarah Jio'),(5,_binary '','2022-09-04 12:56:24.122000','SAVE','2022-09-04 12:56:24.122000','sahabali@gmail.com','M','Sabahattin Ali'),(6,_binary '','2022-09-04 13:01:14.342000','SAVE','2022-09-04 13:01:14.342000','michaelend@hotmail.com','M','Michael Ende');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 16:23:05
