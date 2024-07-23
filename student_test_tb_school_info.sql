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
-- Table structure for table `tb_school_info`
--

DROP TABLE IF EXISTS `tb_school_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_school_info` (
  `school_id` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) NOT NULL COMMENT '학교명',
  `school_area` varchar(10) NOT NULL COMMENT '학교 지역구',
  `school_addr` varchar(200) NOT NULL COMMENT '학교 주소',
  `school_phone` varchar(12) NOT NULL COMMENT '학교 연락처',
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_school_info`
--

LOCK TABLES `tb_school_info` WRITE;
/*!40000 ALTER TABLE `tb_school_info` DISABLE KEYS */;
INSERT INTO `tb_school_info` VALUES (1,'우송고등학교','동구','대전광역시 동구 동대전로131번길 53','042-620-5200'),(2,'보문고등학교','동구','대전광역시 동구 우암로 57','042-620-6600'),(3,'대전여자고등학교','동구','대전광역시 동구 용운로1번길 28-37','042-630-5901'),(4,'명석고등학교','동구','대전광역시 동구 우암로 380','042-623-2111'),(5,'충남고등학교','서구','대전광역시 서구 문정로 171','042-488-8013'),(6,'서일여자고등학교','서구','대전광역시 서구 구봉산북로 22','042-540-7740');
/*!40000 ALTER TABLE `tb_school_info` ENABLE KEYS */;
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
