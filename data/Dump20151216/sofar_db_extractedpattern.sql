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
-- Table structure for table `extractedpattern`
--

DROP TABLE IF EXISTS `extractedpattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extractedpattern` (
  `patternID` int(11) NOT NULL AUTO_INCREMENT,
  `patternString` varchar(500) DEFAULT NULL,
  `patternScore` double DEFAULT NULL,
  PRIMARY KEY (`patternID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extractedpattern`
--

LOCK TABLES `extractedpattern` WRITE;
/*!40000 ALTER TABLE `extractedpattern` DISABLE KEYS */;
INSERT INTO `extractedpattern` VALUES (1,'u:access-s:provide-u:access-s:display-u:choose-s:perform',0.273),(2,'u:access-s:display-u:access-s:print',0.166),(3,'s:display-u:choose-u:choose-s:display-s:display',0.599),(4,'u:access-s:request-u:choose',0.395),(5,'u:access-s:display-u:access-s:display',0.171),(6,'u:access-s:request-u:choose-s:request-u:enter',0.228),(7,'s:request-u:finish-s:provide-u:access',0.271),(8,'s:display-s:display-u:choose-u:choose-s:display-s:display',0.327),(9,'s:display-s:display-u:choose',0.496),(10,'u:access-s:request-u:choose-s:request',0.246),(11,'s:display-u:choose-u:choose-s:display',0.596),(12,'s:display-u:choose-s:perform',0.213),(13,'u:access-s:provide-u:choose-u:choose-s:delete',0.224),(14,'s:provide-u:choose-s:provide',0.287),(15,'u:choose-s:present-u:review',0.353),(16,'u:access-s:request-u:finish',0.245),(17,'s:request-u:choose-s:request-u:finish',0.43),(18,'u:access-s:provide-u:choose-s:provide-u:access-s:display',0.27),(19,'u:choose-s:display-u:choose-s:display',0.645),(20,'u:choose-s:display-u:input-u:choose-s:display-u:choose-s:display',0.41),(21,'u:access-s:provide-u:choose-s:provide',0.262),(22,'s:request-u:finish-s:provide-u:access-s:request-u:finish',0.29),(23,'u:access-s:display-u:access',0.486),(24,'u:access-s:request-u:choose-s:request-u:finish',0.237),(25,'s:request-s:display-u:choose',0.138),(26,'u:choose-s:provide-u:choose-u:choose-s:provide-u:choose-s:log',0.262),(27,'s:provide-u:choose-s:provide-u:choose',0.215),(28,'s:display-u:access-s:request',0.217),(29,'u:choose-s:display-u:input-u:choose-s:exit',0.257),(30,'u:choose-s:provide-u:choose',0.385),(31,'s:provide-u:choose-u:choose',0.201),(32,'u:input-u:choose-s:display',0.544),(33,'s:request-u:choose-s:request',0.5),(34,'u:choose-s:display-u:choose-s:display-u:input-u:choose-s:log',0.568),(35,'u:access-s:display-u:choose-s:display-u:access-s:request',0.292),(36,'u:choose-s:display-u:input',0.597),(37,'s:request-u:choose-s:request-u:enter',0.418),(38,'u:choose-s:display-u:input-u:choose-s:display',0.538),(39,'u:access-s:provide-u:choose-s:provide-u:choose-s:provide-u:choose-s:perform',0.289),(40,'u:access-s:display-u:access-s:request',0.186),(41,'u:access-s:request-u:enter',0.158),(42,'s:display-u:choose-s:display-u:input',0.608),(43,'u:choose-s:display-u:choose-s:delete-s:display',0.241),(44,'u:access-s:provide-u:choose',0.56),(45,'u:choose-s:display-u:access',0.425),(46,'u:choose-s:display-u:choose-s:provide',0.216),(47,'u:access-s:provide-u:choose-s:exit',0.194),(48,'u:finish-s:provide-u:choose',0.225),(49,'u:choose-s:display-u:choose',0.595),(50,'s:display-u:choose-s:display',0.595),(51,'u:access-s:provide-u:access',0.233),(52,'u:access-s:display-u:input-u:choose',0.199),(53,'u:confirm-s:display-u:choose-s:perform',0.171),(54,'s:provide-u:access-s:display',0.209),(55,'u:choose-s:delete-s:display',0.339),(56,'s:provide-u:choose-s:add',0.132),(57,'s:display-u:choose-s:add',0.14),(58,'u:access-s:request-u:finish-s:provide-u:access-s:provide',0.288),(59,'u:access-s:display-u:choose',0.227),(60,'u:choose-s:display-u:input-u:choose',0.618),(61,'s:display-u:input-u:choose',0.555),(62,'u:access-s:display-u:input',0.229),(63,'u:choose-s:display-u:choose-u:choose-s:display',0.275),(64,'u:choose-s:display-u:choose-s:request-s:display',0.244),(65,'u:enter-s:display-u:choose-u:choose-s:display-s:display-u:choose',0.355);
/*!40000 ALTER TABLE `extractedpattern` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-16 15:23:23
