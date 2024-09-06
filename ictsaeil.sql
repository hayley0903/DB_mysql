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
-- Table structure for table `tb_board`
--

DROP TABLE IF EXISTS `tb_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_board` (
  `board_idx` int NOT NULL AUTO_INCREMENT,
  `board_title` varchar(45) NOT NULL,
  `board_content` varchar(400) DEFAULT NULL,
  `file_group_idx` int DEFAULT NULL,
  `create_id` varchar(45) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(45) NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `use_yn` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`board_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board`
--

LOCK TABLES `tb_board` WRITE;
/*!40000 ALTER TABLE `tb_board` DISABLE KEYS */;
INSERT INTO `tb_board` VALUES (1,'1','1234',NULL,'hyejeong','2024-09-05 03:13:22.000000','hyejeong','2024-09-05 03:13:22.000000','Y'),(2,'2','1234',NULL,'hyejeong','2024-09-05 03:13:42.000000','hyejeong','2024-09-05 03:13:42.000000','Y'),(3,'3','1234',NULL,'hyejeong','2024-09-05 03:13:46.000000','hyejeong','2024-09-05 03:13:46.000000','Y'),(4,'4','1234',NULL,'hyejeong','2024-09-05 03:13:52.000000','hyejeong','2024-09-05 03:13:52.000000','Y'),(5,'5','1234',NULL,'hyejeong','2024-09-05 03:13:59.000000','hyejeong','2024-09-05 03:13:59.000000','Y'),(6,'6','1234',NULL,'hyejeong','2024-09-05 03:14:05.000000','hyejeong','2024-09-05 03:14:05.000000','Y'),(7,'7','1234',NULL,'hyejeong','2024-09-05 03:14:10.000000','hyejeong','2024-09-05 03:14:10.000000','Y'),(8,'8','1234',NULL,'hyejeong','2024-09-05 03:14:15.000000','hyejeong','2024-09-05 03:14:15.000000','Y'),(9,'9','1234',NULL,'hyejeong','2024-09-05 03:14:21.000000','hyejeong','2024-09-05 03:14:21.000000','Y'),(10,'10','1234',NULL,'hyejeong','2024-09-05 03:14:27.000000','hyejeong','2024-09-05 03:14:27.000000','Y'),(11,'11','1234',NULL,'hyejeong','2024-09-05 03:14:38.000000','hyejeong','2024-09-05 03:14:38.000000','Y'),(12,'12','1234',NULL,'hyejeong','2024-09-05 03:14:45.000000','hyejeong','2024-09-05 03:14:45.000000','Y'),(13,'13','1234',NULL,'hyejeong','2024-09-05 03:14:52.000000','hyejeong','2024-09-05 03:14:52.000000','Y'),(14,'14','1234',NULL,'hyejeong','2024-09-05 03:14:56.000000','hyejeong','2024-09-05 03:14:56.000000','Y'),(15,'15','1234',NULL,'hyejeong','2024-09-05 03:15:09.000000','hyejeong','2024-09-05 03:15:09.000000','Y'),(16,'A','게시글',NULL,'gildong','2024-09-05 03:21:31.000000','gildong','2024-09-05 03:21:31.000000','Y'),(17,'B','게시글',NULL,'gildong','2024-09-05 03:21:36.000000','gildong','2024-09-05 03:21:36.000000','Y'),(18,'C','게시글',NULL,'gildong','2024-09-05 03:21:41.000000','gildong','2024-09-05 03:21:41.000000','Y'),(19,'D','게시글',NULL,'gildong','2024-09-05 03:21:47.000000','gildong','2024-09-05 03:21:47.000000','Y'),(20,'E','게시글',NULL,'gildong','2024-09-05 03:21:52.000000','gildong','2024-09-05 03:21:52.000000','Y'),(21,'F','게시글',NULL,'gildong','2024-09-05 03:21:57.000000','gildong','2024-09-05 03:21:57.000000','Y'),(22,'G','게시글',NULL,'gildong','2024-09-05 03:22:04.000000','gildong','2024-09-05 03:22:04.000000','Y'),(23,'H','게시글',NULL,'gildong','2024-09-05 03:22:26.000000','gildong','2024-09-05 03:22:26.000000','Y'),(24,'J','게시글',NULL,'gildong','2024-09-05 03:22:42.000000','gildong','2024-09-05 03:22:42.000000','Y'),(25,'K','게시글',NULL,'gildong','2024-09-05 03:22:49.000000','gildong','2024-09-05 03:22:49.000000','Y'),(26,'안녕하세요','안녕하세요 1234',NULL,'hyejeong','2024-09-06 02:29:07.000000','hyejeong','2024-09-06 02:29:07.000000','Y');
/*!40000 ALTER TABLE `tb_board` ENABLE KEYS */;
UNLOCK TABLES;

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
  `member_use_yn` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`member_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='회원테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_member`
--

LOCK TABLES `tb_member` WRITE;
/*!40000 ALTER TABLE `tb_member` DISABLE KEYS */;
INSERT INTO `tb_member` VALUES (1,'test','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','abcd','2024-07-30','test@naver.com','test','2024-09-02 00:24:08.168475','test','2024-09-04 00:36:39.000000','N'),(2,'test2','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','efgt','2024-01-01','efg@naver.com','test2','2024-09-04 01:03:17.662597','test2','2024-09-04 01:11:10.000000','Y'),(3,'test3','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','abcde','2024-09-03','abce1234@naver.com','test3','2024-09-04 01:12:05.804379','test3','2024-09-04 01:19:49.000000','Y'),(4,'hyejeong','38083c7ee9121e17401883566a148aa5c2e2d55dc53bc4a94a026517dbff3c6b','이혜정','2024-09-01','hyejeong@naver.com','hyejeong','2024-09-04 02:18:31.916589','hyejeong','2024-09-04 04:04:34.000000','Y'),(5,'gildong','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','홍길동','2024-01-01','gildong@naver.com','gildong','2024-09-05 03:20:50.033129','gildong','2024-09-05 03:20:50.033129','Y');
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

-- Dump completed on 2024-09-06 12:29:48
