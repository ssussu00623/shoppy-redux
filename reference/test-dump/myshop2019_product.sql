-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: myshop2019
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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` char(5) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `sub_category_id` char(5) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `sub_category_id` (`sub_category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`sub_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('AD001','게임용마우스','20003'),('AD002','일반마우스','20003'),('AD003','게임용키보드','20003'),('AD004','일반키보드','20003'),('AD005','블루투스스피커','20003'),('AD006','스피커','20003'),('AD007','헤드셋','20003'),('ED001','미니냉장고','10001'),('ED002','소형세탁기','10002'),('ED003','일반TV','10001'),('ED004','세탁기','10002'),('ED005','전자렌지','10002'),('ED006','미니오디오','10003'),('ED007','로봇청소기','10003'),('ED008','무선청소기','10003'),('ED009','유선청소기','10003'),('ED010','다리미','10003'),('ED011','소형냉장고','10001'),('ED012','와이드TV','10001'),('LD001','자전거','30001'),('LD002','유아자전거','30001'),('LD003','접이식자건거','30001'),('LD004','전동퀵보드','30001'),('LD005','퀵보드','30001'),('LD006','유아용퀵보드','30001'),('LD007','만년필','30001'),('LD008','고급볼펜','30001'),('LD009','일반볼펜','30001'),('LD010','연필','30001'),('LD011','고급노트','30001'),('LD012','일반노트','30001'),('LD013','고급인쇄용지(A4)','30001'),('LD014','일반인쇄용지(A4)','30001'),('PD001','데스크탑','20001'),('PD002','노트북PRO','20001'),('PD003','노트북','20001'),('PD004','태블릿','20001'),('PD005','보급형태블릿','20001'),('PD006','레이저프린터','20002'),('PD007','잉크젯프린터','20002'),('PD008','복합기','20002');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 10:46:47
