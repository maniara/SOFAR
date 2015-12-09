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
-- Table structure for table `verbcluster`
--

DROP TABLE IF EXISTS `verbcluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verbcluster` (
  `clusterID` int(11) NOT NULL AUTO_INCREMENT,
  `representives` varchar(45) NOT NULL,
  `verbs` varchar(1000) DEFAULT NULL,
  `iscustom` tinyint(1) NOT NULL,
  `subjectType` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`clusterID`)
) ENGINE=InnoDB AUTO_INCREMENT=2780 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verbcluster`
--

LOCK TABLES `verbcluster` WRITE;
/*!40000 ALTER TABLE `verbcluster` DISABLE KEYS */;
INSERT INTO `verbcluster` VALUES (2749,'initiate','initiate;start;engineer',0,'u'),(2750,'confirm','confirm;verify',0,'u'),(2751,'input','input;insert;set',0,'u'),(2752,'access','access;cancle;push;request;regist',0,'u'),(2753,'review','review',0,'u'),(2754,'change','change;modify;exit',0,'u'),(2755,'pay','pay;submit;send',0,'u'),(2756,'finish','finish;leave;prepare;provide;complete',0,'u'),(2757,'choose','choose;select',0,'u'),(2758,'enter','enter',0,'u'),(2759,'browse','browse;search',0,'u'),(2760,'add','add;calculate;process',0,'s'),(2761,'request','request;send;set',0,'s'),(2762,'log','log;record;retain;save;store',0,'s'),(2763,'display','display;give;open',0,'s'),(2764,'perform','perform;finish',0,'s'),(2765,'check','check',0,'s'),(2766,'delete','delete;remove;mark',0,'s'),(2767,'confirm','confirm;show;verify',0,'s'),(2768,'eject','eject',0,'s'),(2769,'exit','exit;modify;close',0,'s'),(2770,'print','print;return',0,'s'),(2771,'provide','provide;recommend',0,'s'),(2772,'alert','alert;ask;notify;update;report',0,'s'),(2773,'create','create;determine',0,'s'),(2774,'retrieve','retrieve;get',0,'s'),(2775,'present','present',0,'s'),(2776,'make','make;generate',0,'s'),(2777,'authorize','authorize;validate;handle',0,'s'),(2778,'prompt','prompt;read',0,'s'),(2779,'assign','assign;dispense;charge',0,'s');
/*!40000 ALTER TABLE `verbcluster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-12 16:24:46
