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
-- Temporary view structure for view `order_detail_total`
--

DROP TABLE IF EXISTS `order_detail_total`;
/*!50001 DROP VIEW IF EXISTS `order_detail_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_detail_total` AS SELECT 
 1 AS `order_id`,
 1 AS `order_detail_id`,
 1 AS `product_id`,
 1 AS `order_qty`,
 1 AS `unit_price`,
 1 AS `discount`,
 1 AS `line_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_header_total`
--

DROP TABLE IF EXISTS `order_header_total`;
/*!50001 DROP VIEW IF EXISTS `order_header_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_header_total` AS SELECT 
 1 AS `order_id`,
 1 AS `customer_id`,
 1 AS `employee_id`,
 1 AS `order_date`,
 1 AS `sub_total`,
 1 AS `delivery_fee`,
 1 AS `total_due`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `order_detail_total`
--

/*!50001 DROP VIEW IF EXISTS `order_detail_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_detail_total` AS select `order_detail`.`order_id` AS `order_id`,`order_detail`.`order_detail_id` AS `order_detail_id`,`order_detail`.`product_id` AS `product_id`,`order_detail`.`order_qty` AS `order_qty`,`order_detail`.`unit_price` AS `unit_price`,`order_detail`.`discount` AS `discount`,`order_detail`.`line_total` AS `line_total` from `order_detail` union all select `order_detail2016`.`order_id` AS `order_id`,`order_detail2016`.`drder_detail_id` AS `drder_detail_id`,`order_detail2016`.`product_id` AS `product_id`,`order_detail2016`.`order_qty` AS `order_qty`,`order_detail2016`.`unit_price` AS `unit_price`,`order_detail2016`.`discount` AS `discount`,`order_detail2016`.`line_total` AS `line_total` from `order_detail2016` union all select `order_detail2017`.`order_id` AS `order_id`,`order_detail2017`.`drder_detail_id` AS `drder_detail_id`,`order_detail2017`.`product_id` AS `product_id`,`order_detail2017`.`order_qty` AS `order_qty`,`order_detail2017`.`unit_price` AS `unit_price`,`order_detail2017`.`discount` AS `discount`,`order_detail2017`.`line_total` AS `line_total` from `order_detail2017` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_header_total`
--

/*!50001 DROP VIEW IF EXISTS `order_header_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_header_total` AS select `order_header`.`order_id` AS `order_id`,`order_header`.`customer_id` AS `customer_id`,`order_header`.`employee_id` AS `employee_id`,`order_header`.`order_date` AS `order_date`,`order_header`.`sub_total` AS `sub_total`,`order_header`.`delivery_fee` AS `delivery_fee`,`order_header`.`total_due` AS `total_due` from `order_header` union all select `order_header2016`.`order_id` AS `order_id`,`order_header2016`.`customer_id` AS `customer_id`,`order_header2016`.`employee_id` AS `employee_id`,`order_header2016`.`order_date` AS `order_date`,`order_header2016`.`sub_total` AS `sub_total`,`order_header2016`.`delivery_fee` AS `delivery_fee`,`order_header2016`.`total_due` AS `total_due` from `order_header2016` union all select `order_header2017`.`order_id` AS `order_id`,`order_header2017`.`customer_id` AS `customer_id`,`order_header2017`.`employee_id` AS `employee_id`,`order_header2017`.`order_date` AS `order_date`,`order_header2017`.`sub_total` AS `sub_total`,`order_header2017`.`delivery_fee` AS `delivery_fee`,`order_header2017`.`total_due` AS `total_due` from `order_header2017` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 10:46:48
