CREATE DATABASE  IF NOT EXISTS `student_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `student_test`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: student_test
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
-- Table structure for table `tb_student_info`
--

DROP TABLE IF EXISTS `tb_student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student_info` (
  `student_id` int NOT NULL AUTO_INCREMENT COMMENT '학생_id',
  `student_name` varchar(20) DEFAULT NULL COMMENT '학생이름',
  `student_graduate_yn` char(1) NOT NULL DEFAULT 'N' COMMENT '졸업여부',
  `school_id` int NOT NULL COMMENT '학교_id',
  PRIMARY KEY (`student_id`),
  KEY `fk_student_school_idx` (`school_id`),
  CONSTRAINT `fk_student_school` FOREIGN KEY (`school_id`) REFERENCES `tb_school_info` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_info`
--

LOCK TABLES `tb_student_info` WRITE;
/*!40000 ALTER TABLE `tb_student_info` DISABLE KEYS */;
INSERT INTO `tb_student_info` VALUES (1,'홍기훈','Y',1),(2,'심신','Y',1),(3,'김수아','N',1),(4,'박건하','N',1),(5,'설동호','Y',2),(6,'황인호','Y',2),(7,'정문호','N',2),(8,'김보문','N',2),(9,'김문고','N',2),(10,'김영희','Y',3),(11,'김소녀','Y',3),(12,'한소희','Y',3),(13,'신혜영','N',3),(14,'김지연','N',3),(15,'김소영','N',3),(16,'강훈식','Y',4),(17,'김명섭','Y',4),(18,'박성준','Y',4),(19,'백봉기','N',4),(20,'조성호','N',4),(21,'김동현','N',5),(22,'김종필','Y',5),(23,'김혁','N',5),(24,'이상민','Y',5);
/*!40000 ALTER TABLE `tb_student_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-23 12:16:15
