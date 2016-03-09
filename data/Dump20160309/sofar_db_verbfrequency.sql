-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sofar_db
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `verbfrequency`
--

DROP TABLE IF EXISTS `verbfrequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verbfrequency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `verb` varchar(45) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `frequency` float DEFAULT NULL,
  `type` varchar(1) NOT NULL,
  `totalCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199305 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verbfrequency`
--

LOCK TABLES `verbfrequency` WRITE;
/*!40000 ALTER TABLE `verbfrequency` DISABLE KEYS */;
INSERT INTO `verbfrequency` VALUES (199270,'request',568,0.677804,'u',838),(199271,'check',17,0.019037,'s',893),(199272,'display',590,0.660694,'s',893),(199273,'enter',11,0.013126,'u',838),(199274,'publish',1,0.00112,'s',893),(199275,'eject',2,0.00224,'s',893),(199276,'perform',10,0.011198,'s',893),(199277,'print',4,0.004479,'s',893),(199278,'input',142,0.169451,'u',838),(199279,'save',75,0.083987,'s',893),(199280,'insert',1,0.001193,'u',838),(199281,'select',24,0.02864,'u',838),(199282,'update',2,0.00224,'s',893),(199283,'send',1,0.00112,'s',893),(199284,'validate',3,0.003359,'s',893),(199285,'modify',48,0.057279,'u',838),(199286,'modify',49,0.054871,'s',893),(199287,'retrieve',96,0.107503,'s',893),(199288,'assign',1,0.00112,'s',893),(199289,'retain',1,0.00112,'s',893),(199290,'make',1,0.00112,'s',893),(199291,'verify',8,0.008959,'s',893),(199292,'confirm',19,0.022673,'u',838),(199293,'delete',14,0.016706,'u',838),(199294,'delete',14,0.015677,'s',893),(199295,'remove',8,0.008959,'s',893),(199296,'show',2,0.00224,'s',893),(199297,'remove',6,0.00716,'u',838),(199298,'search',3,0.003359,'s',893),(199299,'choose',4,0.004773,'u',838),(199300,'confirm',1,0.00112,'s',893),(199301,'create',1,0.00112,'s',893),(199302,'regist',2,0.00224,'s',893),(199303,'request',1,0.00112,'s',893),(199304,'requst',1,0.001193,'u',838);
/*!40000 ALTER TABLE `verbfrequency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-09 21:44:04
