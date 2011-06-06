CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Cafesuite` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `Cafesuite`;

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
-- Table structure for table `2011luty`
--

DROP TABLE IF EXISTS `2011luty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2011luty` (
  `data` int(2) NOT NULL AUTO_INCREMENT,
  `czas` int(4) NOT NULL,
  `id_cena` int(2) NOT NULL DEFAULT '3',
  PRIMARY KEY (`data`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2011luty`
--

LOCK TABLES `2011luty` WRITE;
/*!40000 ALTER TABLE `2011luty` DISABLE KEYS */;
INSERT INTO `2011luty` VALUES (1,295,3),(2,683,3),(3,469,3),(4,418,3),(5,666,3),(6,409,3),(7,755,3),(8,685,3),(9,64,3),(10,396,3),(11,664,3),(12,434,3),(13,830,3),(14,205,3),(15,252,3),(16,506,3),(17,643,3),(18,622,3),(19,428,3),(20,138,3),(21,205,3),(22,105,3),(23,410,3);
/*!40000 ALTER TABLE `2011luty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2011styczen`
--

DROP TABLE IF EXISTS `2011styczen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2011styczen` (
  `data` int(2) NOT NULL AUTO_INCREMENT,
  `czas` int(4) NOT NULL,
  `id_cena` int(2) NOT NULL DEFAULT '3',
  PRIMARY KEY (`data`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2011styczen`
--

LOCK TABLES `2011styczen` WRITE;
/*!40000 ALTER TABLE `2011styczen` DISABLE KEYS */;
INSERT INTO `2011styczen` VALUES (1,201,3),(2,97,3),(3,631,3),(4,473,3),(5,302,3),(6,457,3),(7,241,3),(8,547,3),(9,514,3),(10,379,3),(12,241,3),(11,0,3),(13,381,3),(14,133,3),(15,370,3),(16,143,3),(17,63,3),(18,528,3),(19,164,3),(20,252,3),(21,273,3),(22,312,3),(23,412,3),(24,289,3),(25,463,3),(26,1382,3);
/*!40000 ALTER TABLE `2011styczen` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cena_min`
--

LOCK TABLES `cena_min` WRITE;
/*!40000 ALTER TABLE `cena_min` DISABLE KEYS */;
INSERT INTO `cena_min` VALUES (1,0.07),(2,0.09),(3,0.08),(4,0.1);
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czasy`
--

LOCK TABLES `czasy` WRITE;
ALTER TABLE `czasy` DISABLE KEYS ;
INSERT INTO `czasy` VALUES (1,295,3),(2,683,3),(3,469,3),(4,418,3),(5,666,3),(6,409,3),(7,755,3),(8,685,3),(9,64,3),(10,396,3),(11,664,3),(12,434,3),(13,830,3),(14,205,3),(15,252,3),(16,506,3),(17,643,3),(18,622,3),(19,428,3),(20,138,3),(21,205,3),(22,105,3),(23,410,3);
 ALTER TABLE `czasy` ENABLE KEYS ;
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
CREATE trigger sumator after insert on czasy for each row 
begin 
declare t_suma double; 
declare t_cena_za_min double; 
declare t_wyplacone double;

select sum(czas) into t_suma from czasy; 
select cena_za_min into t_cena_za_min from cena_min where id=NEW.id_cena;
select sum(kwota) into t_wyplacone from wyplacone; 
IF t_wyplacone=NULL THEN set t_wyplacone=0;
END IF;

update suma set suma=t_suma*t_cena_za_min-t_wyplacone; 
end ;;
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
INSERT INTO `suma` VALUES (1,273.44);
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
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wyplacone`
--

LOCK TABLES `wyplacone` WRITE;
/*!40000 ALTER TABLE `wyplacone` DISABLE KEYS */;
INSERT INTO `wyplacone` VALUES (1,-0.88,'2011-02-02 20:43:33'),(2,200,'2011-02-05 23:00:00'),(3,350,'2011-02-14 23:00:00');
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
CREATE trigger wyplater after insert on wyplacone for each row 
begin 
declare t_suma double; 
declare t_cena_za_min double; 
declare t_wyplacone double;

select sum(czas) into t_suma from czasy; 
select cena_za_min into t_cena_za_min from cena_min where id=(select id_cena from czasy order by data desc limit 1);
select sum(kwota) into t_wyplacone from wyplacone; 

update suma set suma=t_suma*t_cena_za_min-t_wyplacone; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'Cafesuite'
--