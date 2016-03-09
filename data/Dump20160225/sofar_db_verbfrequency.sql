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
) ENGINE=InnoDB AUTO_INCREMENT=140246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verbfrequency`
--

LOCK TABLES `verbfrequency` WRITE;
/*!40000 ALTER TABLE `verbfrequency` DISABLE KEYS */;
INSERT INTO `verbfrequency` VALUES (140210,'request',550,0.675676,'u',814),(140211,'check',17,0.019473,'s',873),(140212,'display',573,0.656357,'s',873),(140213,'enter',6,0.007371,'u',814),(140214,'publish',1,0.001145,'s',873),(140215,'eject',3,0.003436,'s',873),(140216,'select',25,0.030713,'u',814),(140217,'authorize',1,0.001145,'s',873),(140218,'dispense',1,0.001145,'s',873),(140219,'print',4,0.004582,'s',873),(140220,'input',141,0.173219,'u',814),(140221,'save',72,0.082474,'s',873),(140222,'update',2,0.002291,'s',873),(140223,'send',1,0.001145,'s',873),(140224,'validate',3,0.003436,'s',873),(140225,'modify',48,0.058968,'u',814),(140226,'modify',49,0.056128,'s',873),(140227,'retrieve',96,0.109966,'s',873),(140228,'assign',1,0.001145,'s',873),(140229,'retain',1,0.001145,'s',873),(140230,'make',1,0.001145,'s',873),(140231,'verify',6,0.006873,'s',873),(140232,'confirm',19,0.023342,'u',814),(140233,'delete',14,0.017199,'u',814),(140234,'delete',14,0.016037,'s',873),(140235,'remove',8,0.009164,'s',873),(140236,'perform',9,0.010309,'s',873),(140237,'show',2,0.002291,'s',873),(140238,'remove',6,0.007371,'u',814),(140239,'search',3,0.003436,'s',873),(140240,'choose',4,0.004914,'u',814),(140241,'confirm',1,0.001145,'s',873),(140242,'create',1,0.001145,'s',873),(140243,'regist',2,0.002291,'s',873),(140244,'request',1,0.001145,'s',873),(140245,'requst',1,0.001229,'u',814);
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

-- Dump completed on 2016-02-25 16:30:01
