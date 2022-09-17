-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_functions
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB-2ubuntu1.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dealership`
--

DROP TABLE IF EXISTS `dealership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealership` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `location` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `date_established` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealership`
--

LOCK TABLES `dealership` WRITE;
/*!40000 ALTER TABLE `dealership` DISABLE KEYS */;
INSERT INTO `dealership` VALUES (1,'varsity chrysler','calgary','1990-05-05'),(2,'country jeep','edmonton','2000-04-06'),(3,'sherwood honda','sherwood','2010-05-09');
/*!40000 ALTER TABLE `dealership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `for_sale_cars`
--

DROP TABLE IF EXISTS `for_sale_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `for_sale_cars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `make` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `model` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `year` smallint(5) unsigned DEFAULT NULL,
  `dealership_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `for_sale_cars_FK` (`dealership_id`),
  CONSTRAINT `for_sale_cars_FK` FOREIGN KEY (`dealership_id`) REFERENCES `dealership` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `for_sale_cars`
--

LOCK TABLES `for_sale_cars` WRITE;
/*!40000 ALTER TABLE `for_sale_cars` DISABLE KEYS */;
INSERT INTO `for_sale_cars` VALUES (12,'dodge','charger',2012,1),(13,'chrysler','300',2010,2),(14,'honda','accord',2016,3),(15,'jeep','4*4',2021,1),(16,'chrysler','200',2022,2),(17,'honda','civic',2019,3),(18,'dodge','challenger',2020,1),(19,'chrysler','sebring',2017,2),(20,'honda','pilot',2022,3),(21,'honda','crv',2021,3);
/*!40000 ALTER TABLE `for_sale_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_functions'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-17 13:44:40
