-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: one_flight
-- ------------------------------------------------------
-- Server version	5.7.39

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
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
INSERT INTO `airlines` VALUES (1,'BR',NULL),(2,'PR',NULL),(3,'CX',NULL),(4,'VN',NULL),(5,'KE',NULL),(6,'NH',NULL),(7,'OZ',NULL),(8,'ZP',NULL),(9,'2P',NULL),(10,'JX',NULL);
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_booking_fees`
--

DROP TABLE IF EXISTS `flight_booking_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_booking_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flight_booking_id` int(11) NOT NULL,
  `charge_name` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_booking_fees`
--

LOCK TABLES `flight_booking_fees` WRITE;
/*!40000 ALTER TABLE `flight_booking_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_booking_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_bookings`
--

DROP TABLE IF EXISTS `flight_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_bookings` (
  `id` int(11) NOT NULL,
  `queuing_office_id` int(11) DEFAULT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `origin_location_code` varchar(255) DEFAULT NULL,
  `round_trip_tag` tinyint(1) DEFAULT NULL,
  `no_of_passenger` int(11) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `flight_offer_id` int(11) DEFAULT NULL,
  `total_charged_amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_bookings`
--

LOCK TABLES `flight_bookings` WRITE;
/*!40000 ALTER TABLE `flight_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_itineraries`
--

DROP TABLE IF EXISTS `flight_itineraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_itineraries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flight_booking_id` int(11) DEFAULT NULL,
  `itinerary_order` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_itineraries`
--

LOCK TABLES `flight_itineraries` WRITE;
/*!40000 ALTER TABLE `flight_itineraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_itineraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_segments`
--

DROP TABLE IF EXISTS `flight_segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_segments` (
  `id` int(11) NOT NULL,
  `flight_itinerary_id` int(11) DEFAULT NULL,
  `departure_aita_code` varchar(45) DEFAULT NULL,
  `departure_date_time` datetime DEFAULT NULL,
  `departure_terminal` varchar(45) DEFAULT NULL,
  `arrival_aita_code` varchar(45) DEFAULT NULL,
  `arrival_date_time` datetime DEFAULT NULL,
  `arrival_terminal` varchar(45) DEFAULT NULL,
  `carrier_code` varchar(45) DEFAULT NULL,
  `flight_number` varchar(45) DEFAULT NULL,
  `duration_in_hours` varchar(45) DEFAULT NULL,
  `aircraft_code` varchar(45) DEFAULT NULL,
  `aircraft_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_segments`
--

LOCK TABLES `flight_segments` WRITE;
/*!40000 ALTER TABLE `flight_segments` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_segments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `birthday` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `passportDetails` tinytext,
  `userType` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'juan.fdsafdsa@gmail.com','1234','2000-12-31','Juan Dela Cruz','09123456789',NULL,'guest'),(3,'juan.delacruz@gmail.com','1234','2000-12-31','Juan Dela Cruz','09123456789',NULL,'admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03 22:40:02
