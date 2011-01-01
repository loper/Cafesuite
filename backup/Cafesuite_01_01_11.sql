-- MySQL dump 10.13  Distrib 5.1.53, for pc-linux-gnu (i686)
--
-- Host: localhost    Database: Cafesuite
-- ------------------------------------------------------
-- Server version	5.1.53-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `2010grudzien`
--

DROP TABLE IF EXISTS `2010grudzien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2010grudzien` (
  `data` int(2) NOT NULL AUTO_INCREMENT,
  `czas` int(4) NOT NULL,
  `id_cena` int(2) NOT NULL DEFAULT '3',
  PRIMARY KEY (`data`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2010grudzien`
--

LOCK TABLES `2010grudzien` WRITE;
/*!40000 ALTER TABLE `2010grudzien` DISABLE KEYS */;
INSERT INTO `2010grudzien` VALUES (1,81,2),(2,167,2),(3,508,2),(4,23,2),(5,109,2),(6,440,2),(7,152,2),(8,427,2),(9,313,2),(10,197,2),(11,95,2),(12,347,2),(13,248,2),(14,601,2),(15,257,2),(16,431,2),(17,252,2),(18,133,2),(19,295,2),(20,362,2),(21,512,2),(22,150,2),(23,243,2),(24,545,2),(25,653,2),(26,343,2),(27,546,2),(28,753,2),(29,704,2),(30,596,2),(31,205,2);
/*!40000 ALTER TABLE `2010grudzien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2010listopad`
--

DROP TABLE IF EXISTS `2010listopad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2010listopad` (
  `data` int(2) NOT NULL,
  `czas` int(4) NOT NULL,
  `id_cena` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2010listopad`
--

LOCK TABLES `2010listopad` WRITE;
/*!40000 ALTER TABLE `2010listopad` DISABLE KEYS */;
INSERT INTO `2010listopad` VALUES (5,289,1),(4,337,1),(3,565,1),(2,39,1),(1,257,1),(6,238,1),(7,218,1),(8,152,1),(9,266,1),(10,476,1),(11,488,1),(12,349,1),(13,437,1),(14,758,1),(15,330,1),(16,396,1),(17,88,1),(24,4,1),(25,137,1),(26,358,1),(27,421,1),(28,222,1),(29,286,1),(30,160,1);
/*!40000 ALTER TABLE `2010listopad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cena_min`
--

DROP TABLE IF EXISTS `cena_min`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cena_min` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `cena_za_min` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cena_min`
--

LOCK TABLES `cena_min` WRITE;
/*!40000 ALTER TABLE `cena_min` DISABLE KEYS */;
INSERT INTO `cena_min` VALUES (1,0.07),(2,0.09),(3,0.08);
/*!40000 ALTER TABLE `cena_min` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `czasy`
--

DROP TABLE IF EXISTS `czasy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `czasy` (
  `data` int(2) NOT NULL AUTO_INCREMENT,
  `czas` int(4) NOT NULL,
  `id_cena` int(2) NOT NULL DEFAULT '3',
  PRIMARY KEY (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czasy`
--

LOCK TABLES `czasy` WRITE;
/*!40000 ALTER TABLE `czasy` DISABLE KEYS */;
/*!40000 ALTER TABLE `czasy` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger sumator after insert on czasy for each row 
begin 
declare t_suma double; 
declare t_cena_za_min double; 
declare t_wyplacone double;

select sum(czas) into t_suma from czasy; 
select cena_za_min into t_cena_za_min from cena_min where id=NEW.id_cena;
select sum(kwota) into t_wyplacone from wyplacone; 

update suma set suma=t_suma*t_cena_za_min-t_wyplacone; 
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `suma`
--

DROP TABLE IF EXISTS `suma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suma` (
  `id` int(1) NOT NULL,
  `suma` double(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suma`
--

LOCK TABLES `suma` WRITE;
/*!40000 ALTER TABLE `suma` DISABLE KEYS */;
INSERT INTO `suma` VALUES (1,0.00);
/*!40000 ALTER TABLE `suma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wyplacone`
--

DROP TABLE IF EXISTS `wyplacone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wyplacone` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `kwota` double NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wyplacone`
--

LOCK TABLES `wyplacone` WRITE;
/*!40000 ALTER TABLE `wyplacone` DISABLE KEYS */;
INSERT INTO `wyplacone` VALUES (10,487.2,'2010-12-24 20:28:30'),(6,200,'2010-12-06 14:05:45'),(1,-116.35,'2010-12-06 14:00:00'),(11,290,'2010-12-29 21:51:50'),(12,100,'2011-01-01 20:12:03'),(13,-1.07,'2011-01-01 20:12:18');
/*!40000 ALTER TABLE `wyplacone` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger wyplater after insert on wyplacone for each row 
begin 
declare t_suma double; 
declare t_cena_za_min double; 
declare t_wyplacone double;

select sum(czas) into t_suma from czasy; 
select cena_za_min into t_cena_za_min from cena_min where id=(select id_cena from czasy order by data desc limit 1);
select sum(kwota) into t_wyplacone from wyplacone; 

update suma set suma=t_suma*t_cena_za_min-t_wyplacone; 
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'Cafesuite'
--

--
-- Dumping routines for database 'Cafesuite'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-01-01 21:58:41
