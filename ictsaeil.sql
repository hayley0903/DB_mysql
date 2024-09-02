CREATE DATABASE  IF NOT EXISTS `ictsaeil` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ictsaeil`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ictsaeil
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
-- Table structure for table `tb_member`
--

DROP TABLE IF EXISTS `tb_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_member` (
  `member_idx` int NOT NULL AUTO_INCREMENT,
  `member_id` varchar(45) NOT NULL,
  `member_pw` varchar(100) NOT NULL,
  `member_name` varchar(45) NOT NULL,
  `member_birth` varchar(10) NOT NULL,
  `member_email` varchar(200) NOT NULL,
  `create_id` varchar(45) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(45) NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`member_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='회원테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_member`
--

LOCK TABLES `tb_member` WRITE;
/*!40000 ALTER TABLE `tb_member` DISABLE KEYS */;
INSERT INTO `tb_member` VALUES (1,'test','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','abc','2024-07-30','test@naver.com','test','2024-09-02 00:24:08.168475','test','2024-09-02 00:24:08.168475');
/*!40000 ALTER TABLE `tb_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 10:02:57
