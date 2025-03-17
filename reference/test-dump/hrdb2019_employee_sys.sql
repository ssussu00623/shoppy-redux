-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: hrdb2019
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `employee_sys`
--

DROP TABLE IF EXISTS `employee_sys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_sys` (
  `emp_id` char(5) NOT NULL,
  `emp_name` varchar(4) NOT NULL,
  `eng_name` varchar(20) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `hire_date` date NOT NULL,
  `retire_date` date DEFAULT NULL,
  `dept_id` char(3) NOT NULL,
  `phone` char(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `salary` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_sys`
--

LOCK TABLES `employee_sys` WRITE;
/*!40000 ALTER TABLE `employee_sys` DISABLE KEYS */;
INSERT INTO `employee_sys` VALUES ('S0001','홍길동','hong','M','2013-01-01',NULL,'SYS','010-1234-1234','hong@d-friends.co.kr',8500),('S0003','강우동',NULL,'M','2014-04-01',NULL,'SYS','010-1222-2221','woodong@d-friends.co.kr',6500),('S0009','최사모','samoya','F','2015-10-01',NULL,'SYS','011-899-9988','samo@d-friends.co.kr',5800),('S0011','오감자','fivegamja','M','2016-02-01',NULL,'SYS','010-6655-7788','gamja@d-friends.co.kr',4700),('S0013','한국인','korea','M','2016-04-01',NULL,'SYS','010-6611-1266','hankook@d-friends.co.kr',4500),('S0019','정주고',NULL,'M','2018-01-01',NULL,'SYS','010-7777-2277','give@d-friends.co.kr',6000);
/*!40000 ALTER TABLE `employee_sys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 10:46:43
