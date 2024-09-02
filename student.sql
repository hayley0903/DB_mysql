CREATE DATABASE  IF NOT EXISTS `student` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `student`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: student
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
  `school_idx` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(20) DEFAULT NULL,
  `school_area` varchar(10) DEFAULT NULL,
  `school_addr` varchar(100) DEFAULT NULL,
  `school_phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`school_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='학교정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_school_info`
--

LOCK TABLES `tb_school_info` WRITE;
/*!40000 ALTER TABLE `tb_school_info` DISABLE KEYS */;
INSERT INTO `tb_school_info` VALUES (1,'대전고등학교','중구','대전 중구 대흥동','042-000-0000'),(2,'대전여자고등학교','중구','대전 중구 은행동','042-111-1111'),(3,'관평고등학교','유성구','대전 유성구 관평동','042-222-2222'),(4,'관평여자고등학교','유성구','대전 유성구 송강동','042-333-3333');
/*!40000 ALTER TABLE `tb_school_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_score`
--

DROP TABLE IF EXISTS `tb_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_score` (
  `score_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `score_season` varchar(6) DEFAULT NULL,
  `score_subject` varchar(20) DEFAULT NULL,
  `score_point` int DEFAULT NULL,
  PRIMARY KEY (`score_id`),
  KEY `fk_student_idx` (`student_id`),
  CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `tb_student_info` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_score`
--

LOCK TABLES `tb_score` WRITE;
/*!40000 ALTER TABLE `tb_score` DISABLE KEYS */;
INSERT INTO `tb_score` VALUES (1,1,'202401','국어',90),(2,1,'202401','영어',90),(3,1,'202401','수학',100),(4,2,'202401','국어',70),(5,2,'202401','수학',70),(6,2,'202401','영어',70),(7,3,'202401','국어',90),(8,3,'202401','수학',90),(9,3,'202401','영어',90),(10,4,'202401','국어',85),(11,4,'202401','수학',100),(12,4,'202401','영어',90),(13,5,'202401','국어',90),(14,5,'202401','수학',70),(15,5,'202401','영어',100),(16,6,'202401','국어',90),(17,6,'202401','수학',90),(18,6,'202401','영어',90),(19,7,'202401','국어',100),(20,7,'202401','수학',100),(21,7,'202401','영어',100),(22,8,'202401','국어',85),(23,8,'202401','수학',85),(24,8,'202401','영어',85),(25,9,'202401','국어',100),(26,9,'202401','수학',100),(27,9,'202401','영어',100),(28,10,'202401','국어',95),(29,10,'202401','수학',95),(30,10,'202401','영어',95),(31,11,'202401','국어',75),(32,11,'202401','수학',75),(33,11,'202401','영어',100),(34,12,'202401','국어',90),(35,12,'202401','수학',90),(36,12,'202401','영어',100);
/*!40000 ALTER TABLE `tb_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_info`
--

DROP TABLE IF EXISTS `tb_student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student_info` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(20) DEFAULT NULL,
  `student_grade` int DEFAULT '1',
  `student_school_area` varchar(10) DEFAULT NULL,
  `student_school` varchar(40) NOT NULL,
  `student_zipcode` int DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_info`
--

LOCK TABLES `tb_student_info` WRITE;
/*!40000 ALTER TABLE `tb_student_info` DISABLE KEYS */;
INSERT INTO `tb_student_info` VALUES (1,'홍길동',1,'중구','대전고등학교',11111,'대전광역시 중구'),(2,'홍길순',1,'중구','대전여자고등학교',22222,'대전광역시 중구'),(3,'김대전',2,'중구','대전고등학교',222222,'대전 중구'),(4,'황인범',3,'중구','대전고등학교',333333,'대전 중구'),(5,'박세리',2,'중구','대전여자고등학교',444444,'대전 중구'),(6,'김희애',3,'중구','대전여자고등학교',555555,'대전 중구'),(7,'김관평',1,'서구','관평고등학교',666666,'대전 서구'),(8,'장동건',2,'서구','관평고등학교',777777,'대전 서구'),(9,'정우성',3,'서구','관평고등학교',888888,'대전 서구'),(10,'조보아',1,'서구','관평여자고등학교',999999,'대전 서구'),(11,'김영희',2,'서구','관평여자고등학교',101010,'대전 서구'),(12,'김희선',3,'서구','관평여자고등학교',111111,'대전 서구');
/*!40000 ALTER TABLE `tb_student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_info_test`
--

DROP TABLE IF EXISTS `tb_student_info_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student_info_test` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(20) DEFAULT NULL,
  `student_grade` int DEFAULT '1',
  `school_idx` int NOT NULL,
  `student_zipcode` int DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_student_school_idx` (`school_idx`),
  CONSTRAINT `fk_student_school` FOREIGN KEY (`school_idx`) REFERENCES `tb_school_info` (`school_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_info_test`
--

LOCK TABLES `tb_student_info_test` WRITE;
/*!40000 ALTER TABLE `tb_student_info_test` DISABLE KEYS */;
INSERT INTO `tb_student_info_test` VALUES (1,'홍길동',1,1,11111,'대전광역시 중구'),(2,'홍길순',1,2,22222,'대전광역시 중구'),(3,'김대전',2,1,222222,'대전 중구'),(4,'황인범',3,1,333333,'대전 중구'),(5,'박세리',2,2,444444,'대전 중구'),(6,'김희애',3,2,555555,'대전 중구'),(7,'김관평',1,3,666666,'대전 서구'),(8,'장동건',2,3,777777,'대전 서구'),(9,'정우성',3,3,888888,'대전 서구'),(10,'조보아',1,4,999999,'대전 서구'),(11,'김영희',2,4,101010,'대전 서구'),(12,'김희선',3,4,111111,'대전 서구'),(16,'홍길동',1,1,11111,'대전광역시 중구'),(17,'홍길순',1,2,22222,'대전광역시 중구'),(18,'김대전',2,1,222222,'대전 중구'),(19,'황인범',3,1,333333,'대전 중구'),(20,'박세리',2,2,444444,'대전 중구'),(21,'김희애',3,2,555555,'대전 중구'),(22,'김관평',1,3,666666,'대전 서구'),(23,'장동건',2,3,777777,'대전 서구'),(24,'정우성',3,3,888888,'대전 서구'),(25,'조보아',1,4,999999,'대전 서구'),(26,'김영희',2,4,101010,'대전 서구'),(27,'김희선',3,4,111111,'대전 서구');
/*!40000 ALTER TABLE `tb_student_info_test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 10:02:00
