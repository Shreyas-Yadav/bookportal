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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `operation_type` varchar(255) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `isbn` bigint DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kibbepcitr0a3cpk3rfr7nihn` (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,_binary '','2022-08-27 22:43:59.716000','SAVE','2022-08-27 22:43:59.716000',9780007155668,'Harper Collins Publishers','The Alchemist',2002),(2,_binary '','2022-08-27 22:45:48.721000','SAVE','2022-08-27 22:45:48.721000',9789753638968,'Richard Bentley','Moby-Dick',1851),(3,_binary '','2022-08-29 02:05:52.717000','SAVE','2022-08-29 02:05:52.717000',9786051711577,'Devlet Basımevi','Nutuk',1927),(4,_binary '','2022-09-04 12:42:43.203000','SAVE','2022-09-04 12:42:43.203000',9786059441032,'Pena Yayın','Back To You',2016),(5,_binary '','2022-09-04 12:56:24.061000','SAVE','2022-09-04 12:56:24.061000',9789753638027,'Remzi Kitabevi','Kürk Mantolu Madonna',1943),(6,_binary '','2022-09-04 13:01:14.285000','SAVE','2022-09-04 13:01:14.285000',9786052993019,'K. Thienemanns Verlag','Momo',1973),(7,_binary '\0','2022-09-04 13:05:22.153000','UPDATE','2022-09-04 13:59:08.427000',9789750726439,'Can Yayınları','Simyacı',1988);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 16:23:03
