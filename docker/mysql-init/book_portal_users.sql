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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `operation_type` varchar(255) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','2022-08-27 22:51:07.000000','UPDATE','2022-08-29 02:11:31.316000','Uğurcan Erdoğan','$2a$10$LQH7UlxPpxzUSgjPz.vhUOrerozgzyjAgi6Ps1aG7As/bz2hEs0bi','uqi@gmail.com'),(2,_binary '\0','2022-08-28 01:26:04.044000','UPDATE','2022-09-04 12:43:42.914000','Melike Erdoğan','$2a$10$Hm4h4zkzlw0.y3LtdW68iempDoaVLWYV97CbMDuWCIreX0jpMyy5.','melike@gmail.com'),(3,_binary '\0','2022-08-27 23:20:01.631000','UPDATE','2022-10-27 18:56:33.813000','Xelo Mıso','$2a$10$NajqHYJM62JJWPGr2URzaOtNUwvg7wQtxjLDCxFbUrVkDLK3wgLKa','berkaytrhn242@gmail.com'),(4,_binary '','2022-08-31 16:16:31.133000','SAVE','2022-08-31 16:16:31.133000','Ozoz','$2a$10$QuniYvA9zdmkYH1HJ0bxZufu1idAXzBncpGKAYZnWvOWFcUSm5MDe','ozan_oztas@live.fr'),(5,_binary '\0','2022-08-31 18:39:49.071000','UPDATE','2022-10-27 18:56:40.579000','zibzib zibziboğlu','$2a$10$9iell14H6q95rKjifkmnF.w6xENy9GetLVxKec3eoe78FKLBK71WS','zibzib@gmail.com'),(6,_binary '','2022-08-31 18:42:09.225000','SAVE','2022-08-31 18:42:09.225000','Dexter Morgan','$2a$10$kro2i3vHE/HCOhdADi5f1OwFlp8M63.n8PSB6R2tn9S3o0ATXfpRC','sicso_webex@gmail.com'),(7,_binary '\0','2022-08-31 21:47:57.244000','UPDATE','2022-09-05 00:05:21.638000','Hasan Sanabasan','$2a$10$hm/JxiKVzHDh6hw7WWmMv.2sF52pfxNCqmWX2lfTHZEHccoutvhbO','hasanfurkangunay@gmail.com'),(8,_binary '','2022-09-02 17:52:35.958000','SAVE','2022-09-02 17:52:35.958000','Burak Dağlar','$2a$10$/cvIN3loqD6wA8QHXBaApOfzOI77pl/ezQECoW5XhZwcPk9HwHkSS','dagburak123@gmail.com'),(9,_binary '\0','2022-09-04 12:27:41.821000','UPDATE','2022-09-04 12:44:07.518000','Melike Erdoğan','$2a$10$jNLNB1kg2.NkMhxc5dGqnuh9OwdmuYReq6hECFsNa5rojJre5o4tO','meluqi@gmail.com'),(10,_binary '','2022-09-04 12:50:59.382000','SAVE','2022-09-04 12:50:59.382000','Melike Nur Dulkadir','$2a$10$yxye0kRpAxbJ7cBPy4keGeF6A9opN52DiOURucQeumYorIvHHWFg2','m.nurr13@gmail.com'),(11,_binary '\0','2022-09-09 12:55:22.418000','UPDATE','2022-09-09 12:59:26.279000','Seloş','$2a$10$CbkOYBtwycSTdeZ4uva.luOuo.h16LVwzDC/e0W4qW81tzAIqpf4.','sselins33@gmail.com'),(12,_binary '','2022-09-09 12:59:08.666000','SAVE','2022-09-09 12:59:08.666000','Selos','$2a$10$2765BJ8PMeI9jlca6IZPsujL4us6wWgpFBKwmaduJC.QkiZAeubbe','Selin@gmail.com');
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

-- Dump completed on 2023-01-29 16:23:01
