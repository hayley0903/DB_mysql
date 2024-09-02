CREATE DATABASE  IF NOT EXISTS `jdbc_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jdbc_test`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: jdbc_test
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
-- Table structure for table `tb_book_info`
--

DROP TABLE IF EXISTS `tb_book_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_book_info` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_title` varchar(1000) NOT NULL,
  `book_price` int NOT NULL DEFAULT '0',
  `book_author` varchar(100) NOT NULL,
  `book_publisher` varchar(100) NOT NULL,
  `book_pubYear` varchar(20) NOT NULL,
  `book_isbn` varchar(20) NOT NULL,
  `book_page` int NOT NULL DEFAULT '0',
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_book_info`
--

LOCK TABLES `tb_book_info` WRITE;
/*!40000 ALTER TABLE `tb_book_info` DISABLE KEYS */;
INSERT INTO `tb_book_info` VALUES (16,'456',123,'123','123','123','123',123,'2024-07-30 02:52:07.788247','2024-07-30 02:52:07.788247'),(17,'123',123,'123','123','123','123',123,'2024-07-30 03:20:18.644757','2024-07-30 03:20:18.644757'),(18,'234',234,'234','566','235','5767',675678,'2024-07-31 01:44:42.893968','2024-07-31 01:44:42.893968');
/*!40000 ALTER TABLE `tb_book_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_member_info`
--

DROP TABLE IF EXISTS `tb_member_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_member_info` (
  `member_idx` int NOT NULL AUTO_INCREMENT,
  `member_id` varchar(45) NOT NULL,
  `member_pw` varchar(45) NOT NULL,
  `member_name` varchar(45) NOT NULL,
  `member_birth` varchar(8) DEFAULT NULL,
  `member_phone` varchar(15) DEFAULT NULL,
  `member_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`member_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_member_info`
--

LOCK TABLES `tb_member_info` WRITE;
/*!40000 ALTER TABLE `tb_member_info` DISABLE KEYS */;
INSERT INTO `tb_member_info` VALUES (4,'123','123','123','123','123','123'),(5,'234','234','234','234','234','234'),(6,'345','345','456','345','345','345'),(7,'345','345','678','345','345','345');
/*!40000 ALTER TABLE `tb_member_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_parking_history`
--

DROP TABLE IF EXISTS `tb_parking_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_parking_history` (
  `parking_history_idx` int NOT NULL AUTO_INCREMENT,
  `parking_checkinout` varchar(20) NOT NULL,
  `parking_number` int NOT NULL,
  `car_number` varchar(10) NOT NULL,
  `parking_time` timestamp(6) NOT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`parking_history_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_parking_history`
--

LOCK TABLES `tb_parking_history` WRITE;
/*!40000 ALTER TABLE `tb_parking_history` DISABLE KEYS */;
INSERT INTO `tb_parking_history` VALUES (1,'주차',1,'45너1234','2024-08-06 03:40:27.000000'),(2,'주차',7,'68두6236','2024-08-06 03:52:41.000000'),(3,'출차',7,'68두6236','2024-08-06 03:52:49.000000');
/*!40000 ALTER TABLE `tb_parking_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_parking_info`
--

DROP TABLE IF EXISTS `tb_parking_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_parking_info` (
  `parking_idx` int NOT NULL AUTO_INCREMENT,
  `parking_number` int NOT NULL DEFAULT '1',
  `parking_location_x` int NOT NULL DEFAULT '0',
  `parking_location_y` int NOT NULL DEFAULT '0',
  `parking_yn` char(1) NOT NULL DEFAULT 'N',
  `parking_car_number` varchar(8) DEFAULT NULL,
  `parking_date` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`parking_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_parking_info`
--

LOCK TABLES `tb_parking_info` WRITE;
/*!40000 ALTER TABLE `tb_parking_info` DISABLE KEYS */;
INSERT INTO `tb_parking_info` VALUES (1,1,1,1,'Y','45너1234','2024-08-06 03:40:27.000000'),(2,2,1,2,'Y','32러7890','2024-08-06 03:38:57.000000'),(3,3,1,3,'N',NULL,'2024-08-05 07:29:13.016669'),(4,4,1,4,'N',NULL,'2024-08-05 07:29:13.017345'),(5,5,1,5,'N',NULL,'2024-08-05 07:29:13.017974'),(6,6,2,1,'Y','10가1234','2024-08-06 02:12:10.000000'),(7,7,2,2,'N',NULL,'2024-08-06 03:52:49.000000'),(8,8,2,3,'N',NULL,'2024-08-05 07:29:13.020240'),(9,9,2,4,'N',NULL,'2024-08-05 07:29:13.020770'),(10,10,2,5,'N',NULL,'2024-08-05 07:29:13.021385'),(11,11,3,1,'N',NULL,'2024-08-05 07:29:13.021901'),(12,12,3,2,'N',NULL,'2024-08-05 07:29:13.022389'),(13,13,3,3,'N',NULL,'2024-08-05 07:29:13.022855'),(14,14,3,4,'N',NULL,'2024-08-05 07:29:13.023343'),(15,15,3,5,'N',NULL,'2024-08-05 07:29:13.023821'),(16,16,4,1,'N',NULL,'2024-08-05 07:29:13.024295'),(17,17,4,2,'N',NULL,'2024-08-05 07:29:13.024752'),(18,18,4,3,'N',NULL,'2024-08-05 07:29:13.025319'),(19,19,4,4,'N',NULL,'2024-08-05 07:29:13.025924'),(20,20,4,5,'N',NULL,'2024-08-05 07:29:13.026457');
/*!40000 ALTER TABLE `tb_parking_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_info`
--

DROP TABLE IF EXISTS `tb_student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student_info` (
  `student_idx` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) NOT NULL,
  `student_grade` int NOT NULL DEFAULT '1',
  `student_school` varchar(45) NOT NULL,
  `student_addr` varchar(200) DEFAULT NULL,
  `student_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_info`
--

LOCK TABLES `tb_student_info` WRITE;
/*!40000 ALTER TABLE `tb_student_info` DISABLE KEYS */;
INSERT INTO `tb_student_info` VALUES (5,'이혜정',1,'대전고','대전시 유성','1234'),(8,'홍길동',1,'관평고','대전시 동구','4647');
/*!40000 ALTER TABLE `tb_student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_score`
--

DROP TABLE IF EXISTS `tb_student_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student_score` (
  `score_idx` int NOT NULL AUTO_INCREMENT,
  `score_season` varchar(4) NOT NULL DEFAULT '2024',
  `score_semester` int NOT NULL DEFAULT '1',
  `score_exam_type` char(1) NOT NULL DEFAULT 'M',
  `score_subject` varchar(45) NOT NULL,
  `score_point` int NOT NULL DEFAULT '0',
  `student_idx` int NOT NULL,
  PRIMARY KEY (`score_idx`),
  KEY `fk_student_score_idx` (`student_idx`),
  CONSTRAINT `fk_student_score` FOREIGN KEY (`student_idx`) REFERENCES `tb_student_info` (`student_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_score`
--

LOCK TABLES `tb_student_score` WRITE;
/*!40000 ALTER TABLE `tb_student_score` DISABLE KEYS */;
INSERT INTO `tb_student_score` VALUES (7,'2024',1,'M','영어',100,5);
/*!40000 ALTER TABLE `tb_student_score` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 10:02:41
