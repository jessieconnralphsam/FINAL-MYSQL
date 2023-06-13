-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bus_reservation
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `plate_number` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `bus_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `capacity` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `color` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fueltype` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `driver_id` int NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`plate_number`),
  KEY `drive_id` (`driver_id`),
  KEY `plate_number` (`plate_number`),
  CONSTRAINT `fk_bus_driver` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES ('XXXX-12345','Metro Shuttle A','80','Old','Ford INC.','Red','Diesel','Available',1,'2023-06-06 07:45:22'),('XXXX-12346','Maharlika','98','New','Mitsubishi','Pink','Diesel','Available',5,'2023-06-08 00:26:21'),('XXXX-12347','Maharlika','98','New','Mitsubishi','Pink','Diesel','NA',5,'2023-06-08 00:29:28'),('XXXX-12348','Nissan','48','New','Mitsubishi','Brown','Diesel','Available',5,'2023-06-08 00:29:28'),('XXXX-12349','Electric Bus','98','New','Mitsubishi','Pink','Electric','Available',5,'2023-06-08 00:33:03'),('XXXX-12351','Nissan','48','New','Mitsubishi','Brown','Diesel','Available',5,'2023-06-08 00:33:03'),('XXXX-12352','Eugene','38','New','Mitsubishi','Yellow','Diesel','Available',5,'2023-06-08 00:33:03'),('XXXX-12353','Ford','56','New','Mitsubishi','Yellow','Diesel','Available',5,'2023-06-08 00:33:03'),('XXXX-12354','Ford','56','New','Mitsubishi','Yellow','Diesel','Available',5,'2023-06-08 00:33:03'),('XXXX-12355','Ford','56','New','Mitsubishi','Yellow','Diesel','Available',5,'2023-06-08 00:33:03'),('XXXX-12356','Ford','56','New','Mitsubishi','Yellow','Diesel','Available',5,'2023-06-08 00:33:03'),('XXXX-12357','Ford','56','New','Mitsubishi','Yellow','Diesel','Available',5,'2023-06-08 00:33:03'),('XXXX-12358','Electric Bus','98','New','Mitsubishi','Pink','Electric','Available',5,'2023-06-08 00:33:03'),('XXXX-12359','Electric Bus','98','New','Mitsubishi','Pink','Electric','Available',5,'2023-06-08 00:33:03'),('XXXX-9999','Metro Shuttle A','80','Old','Ford INC.','Red','Diesel','Available',1,'2023-06-12 07:27:43');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `license_number` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `contact_number` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `experience` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `availability` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'Ford Ulbata Jr.','AAAA-12345','0936415272','ulbata@gmail.com','Fatima General Santos City','2 years','Available','2023-06-06 07:45:01'),(2,'Richard Bangoy','AAAA-12346','09664267189','bangoy@gmail.com','Lagao General Santos City','10 years','Available','2023-06-06 08:13:17'),(3,'John Doe','AAAA-11111','1234567890','johndoe@example.com','123 Main St','5 years','Available','2023-06-06 08:18:56'),(4,'Jane Smith','BBBB-22222','0987654321','janesmith@example.com','456 Elm St','3 years','Not Available','2023-06-06 08:18:56'),(5,'David Johnson','CCCC-33333','9876543210','davidjohnson@example.com','789 Oak Ave','7 years','Available','2023-06-06 08:18:56'),(6,'Emily Davis','DDDD-44444','0123456789','emilydavis@example.com','321 Maple Rd','2 years','Not Available','2023-06-06 08:18:56'),(7,'Michael Wilson','EEEE-55555','6789012345','michaelwilson@example.com','654 Pine Ln','6 years','Available','2023-06-06 08:18:56'),(8,'Sarah Anderson','FFFF-66666','5432167890','sarahanderson@example.com','987 Cedar St','4 years','Not Available','2023-06-06 08:18:56'),(9,'Matthew Thomas','GGGG-77777','8901234567','matthewthomas@example.com','876 Birch Ave','8 years','Available','2023-06-06 08:18:56'),(10,'Ford Ulbata Jr.','AAAA-12345','0936415272','ulbata@gmail.com','Fatima General Santos City','2 years','Available','2023-06-12 07:27:54');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `passenger_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `contact` int NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`passenger_id`),
  KEY `passenger_id` (`passenger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1,'Jessie Conn Ralph M. Sam',21,'Male',981821721,'sam@gmail.com','Fatima General Santos City','Filipino','2023-06-06 07:47:56'),(2,'Matthew Fang Bilaos',20,'Male',981821729,'bilaos@gmail.com','Zone 4 Block 6 General Santos City','Filipino','2023-06-06 08:48:07'),(3,'Mateo Cortez',24,'Male',981672162,'cortez@gmail.com','Fatima General Santos City','Filipino','2023-06-08 00:36:03'),(4,'Richard Bangoy Jr.',24,'Male',981672162,'bangoy@gmail.com','Fatima General Santos City','Filipino','2023-06-08 00:37:18'),(5,'Mateo Cortez',24,'Male',981672162,'cortez@gmail.com','Fatima General Santos City','Filipino','2023-06-08 00:37:18'),(6,'Jessie Conn Ralph M. Sam',21,'Male',981821721,'sam@gmail.com','Fatima General Santos City','Filipino','2023-06-12 07:28:06');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `passenger_id` int NOT NULL,
  `schedule_id` int NOT NULL,
  `seat_number` int NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reservation_id`),
  KEY `passenger_id` (`passenger_id`),
  KEY `schedule_id` (`schedule_id`) USING BTREE,
  CONSTRAINT `fk_reservation_passenger` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`passenger_id`),
  CONSTRAINT `fk_reservation_schedule` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (4,2,1,40,'2023-06-06 10:09:34'),(5,2,1,23,'2023-06-06 10:16:33'),(6,3,3,65,'2023-06-08 11:15:22'),(7,2,3,34,'2023-06-08 11:19:18');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `create_ticket` AFTER INSERT ON `reservation` FOR EACH ROW BEGIN
  INSERT INTO ticket (reservation_id, ticket_status)
  VALUES (NEW.reservation_id, 'active');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cancel_ticket` AFTER DELETE ON `reservation` FOR EACH ROW BEGIN
  INSERT INTO ticket (reservation_id, ticket_status)
  VALUES (OLD.reservation_id, 'cancelled');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `reservation_details_view`
--

DROP TABLE IF EXISTS `reservation_details_view`;
/*!50001 DROP VIEW IF EXISTS `reservation_details_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reservation_details_view` AS SELECT 
 1 AS `name`,
 1 AS `contact`,
 1 AS `source`,
 1 AS `destination`,
 1 AS `departure`,
 1 AS `arrival_time`,
 1 AS `seat_number`,
 1 AS `created`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routes` (
  `route_id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `destination` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `distance` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `duration` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fare` int NOT NULL,
  `stops` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `departure` time NOT NULL,
  `arrival_time` time NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,'Gensan','Davao','2 km','20 Minutes',200,'Davao Terminal','04:30:00','04:50:00','2023-06-06 07:49:44'),(2,'Polomolok','Davao City','','200 km',500,'Davao City Terminal','00:00:10','00:00:12','2023-06-08 10:40:46'),(3,'Polomolok','Davao City','','200 km',500,'Davao City Terminal','00:00:10','00:00:12','2023-06-08 10:44:00'),(4,'Tagum City','Davao City','','30 km',80,'Davao City Terminal','00:00:10','00:00:12','2023-06-08 10:44:00'),(5,'Polomolok','Tagum City','','200 km',500,'Tagum City Terminal','00:00:11','00:00:12','2023-06-08 10:44:00'),(6,'Polomolok','Lagao','','100 km',80,'Lagao','00:00:10','00:00:12','2023-06-08 10:44:00'),(7,'Fatima','Lagao','','30 km',90,'Lagao','00:00:10','00:00:12','2023-06-08 10:44:00'),(8,'Fatima','Calumpang','','10 km',20,'Lagao','00:00:10','00:00:12','2023-06-08 10:44:00'),(9,'Polomolok','Gensan','20 km','30 minutes',100,'Bolaong Terminal','11:00:00','12:00:00','2023-06-08 11:17:41'),(10,'Gensan','Davao','2 km','20 Minutes',200,'Davao Terminal','04:30:00','04:50:00','2023-06-12 07:22:08');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `plate_number` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `route_id` int NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`schedule_id`),
  KEY `plate_number` (`plate_number`),
  KEY `route_id` (`route_id`) USING BTREE,
  CONSTRAINT `fk_schedule_bus` FOREIGN KEY (`plate_number`) REFERENCES `bus` (`plate_number`),
  CONSTRAINT `fk_schedule_route` FOREIGN KEY (`route_id`) REFERENCES `routes` (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'XXXX-12345',1,'2023-06-06 09:28:56'),(2,'XXXX-12346',5,'2023-06-08 11:14:16'),(3,'XXXX-12347',9,'2023-06-08 11:18:41'),(4,'XXXX-12345',1,'2023-06-12 07:23:39');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `schedule_view`
--

DROP TABLE IF EXISTS `schedule_view`;
/*!50001 DROP VIEW IF EXISTS `schedule_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schedule_view` AS SELECT 
 1 AS `plate_number`,
 1 AS `departure`,
 1 AS `arrival`,
 1 AS `source`,
 1 AS `destination`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticket_number` int NOT NULL AUTO_INCREMENT,
  `reservation_id` int NOT NULL,
  `ticket_status` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_number`),
  KEY `reservation_id` (`reservation_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,2,'active','2023-06-06 09:27:26'),(2,1,'cancelled','2023-06-06 09:27:26'),(3,3,'active','2023-06-06 09:27:26'),(4,3,'cancelled','2023-06-06 09:27:26'),(5,4,'active','2023-06-06 10:09:34'),(6,2,'cancelled','2023-06-06 10:10:38'),(7,5,'active','2023-06-06 10:16:33'),(8,6,'active','2023-06-08 11:15:22'),(9,7,'active','2023-06-08 11:19:18'),(10,8,'active','2023-06-08 19:00:06'),(11,8,'cancelled','2023-06-08 19:01:21'),(12,9,'active','2023-06-12 06:59:03'),(13,9,'cancelled','2023-06-12 06:59:25'),(14,10,'active','2023-06-12 07:02:10'),(15,11,'active','2023-06-12 07:11:15'),(16,11,'cancelled','2023-06-12 07:11:48'),(17,13,'active','2023-06-12 07:19:03'),(18,10,'cancelled','2023-06-12 07:20:06'),(19,13,'cancelled','2023-06-12 07:20:06'),(20,14,'active','2023-06-12 08:12:00'),(21,14,'cancelled','2023-06-12 08:12:35');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ticket_view`
--

DROP TABLE IF EXISTS `ticket_view`;
/*!50001 DROP VIEW IF EXISTS `ticket_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ticket_view` AS SELECT 
 1 AS `passenger_name`,
 1 AS `bus_name`,
 1 AS `source`,
 1 AS `destination`,
 1 AS `departure_time`,
 1 AS `arrival_time`,
 1 AS `fare`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `reservation_details_view`
--

/*!50001 DROP VIEW IF EXISTS `reservation_details_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reservation_details_view` AS select `p`.`name` AS `name`,`p`.`contact` AS `contact`,`rt`.`source` AS `source`,`rt`.`destination` AS `destination`,`rt`.`departure` AS `departure`,`rt`.`arrival_time` AS `arrival_time`,`r`.`seat_number` AS `seat_number`,`r`.`created` AS `created` from (((`reservation` `r` join `passenger` `p` on((`r`.`passenger_id` = `p`.`passenger_id`))) join `schedule` `s` on((`r`.`schedule_id` = `s`.`schedule_id`))) join `routes` `rt` on((`s`.`route_id` = `rt`.`route_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schedule_view`
--

/*!50001 DROP VIEW IF EXISTS `schedule_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schedule_view` AS select `schedule`.`plate_number` AS `plate_number`,`routes`.`departure` AS `departure`,`routes`.`arrival_time` AS `arrival`,`routes`.`source` AS `source`,`routes`.`destination` AS `destination` from ((`schedule` join `bus` on((`schedule`.`plate_number` = `bus`.`plate_number`))) join `routes` on((`schedule`.`route_id` = `routes`.`route_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ticket_view`
--

/*!50001 DROP VIEW IF EXISTS `ticket_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ticket_view` AS select `passenger`.`name` AS `passenger_name`,`bus`.`bus_name` AS `bus_name`,`routes`.`source` AS `source`,`routes`.`destination` AS `destination`,`routes`.`departure` AS `departure_time`,`routes`.`arrival_time` AS `arrival_time`,`routes`.`fare` AS `fare`,`ticket`.`ticket_status` AS `status` from (((((`ticket` join `reservation` on((`ticket`.`reservation_id` = `reservation`.`reservation_id`))) join `passenger` on((`reservation`.`passenger_id` = `passenger`.`passenger_id`))) join `schedule` on((`reservation`.`schedule_id` = `schedule`.`schedule_id`))) join `bus` on((`schedule`.`plate_number` = `bus`.`plate_number`))) join `routes` on((`schedule`.`route_id` = `routes`.`route_id`))) */;
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

-- Dump completed on 2023-06-13 20:16:38
