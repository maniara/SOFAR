-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: raffer2
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
) ENGINE=InnoDB AUTO_INCREMENT=3285 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verbfrequency`
--

LOCK TABLES `verbfrequency` WRITE;
/*!40000 ALTER TABLE `verbfrequency` DISABLE KEYS */;
INSERT INTO `verbfrequency` VALUES (3204,'insert',1,0.004167,'u',240),(3205,'read',2,0.006873,'s',291),(3206,'prompt',4,0.013746,'s',291),(3207,'enter',13,0.054167,'u',240),(3208,'check',6,0.020619,'s',291),(3209,'display',97,0.333333,'s',291),(3210,'select',95,0.395833,'u',240),(3211,'perform',3,0.010309,'s',291),(3212,'print',10,0.034364,'s',291),(3213,'eject',3,0.010309,'s',291),(3214,'authorize',1,0.003436,'s',291),(3215,'dispense',1,0.003436,'s',291),(3216,'browse',3,0.0125,'u',240),(3217,'provide',11,0.045833,'u',240),(3218,'retrieve',11,0.037801,'s',291),(3219,'create',4,0.013746,'s',291),(3220,'confirm',1,0.003436,'s',291),(3221,'prepare',2,0.008333,'u',240),(3222,'update',5,0.017182,'s',291),(3223,'charge',1,0.003436,'s',291),(3224,'send',5,0.017182,'s',291),(3225,'request',45,0.1875,'u',240),(3226,'determine',1,0.003436,'s',291),(3227,'request',20,0.068729,'s',291),(3228,'validate',3,0.010309,'s',291),(3229,'generate',2,0.006873,'s',291),(3230,'add',4,0.013746,'s',291),(3231,'provide',28,0.09622,'s',291),(3232,'change',2,0.008333,'u',240),(3233,'save',14,0.04811,'s',291),(3234,'assign',4,0.013746,'s',291),(3235,'retain',1,0.003436,'s',291),(3236,'make',4,0.013746,'s',291),(3237,'verify',6,0.020619,'s',291),(3238,'verify',2,0.008333,'u',240),(3239,'mark',1,0.003436,'s',291),(3240,'remove',1,0.003436,'s',291),(3241,'calculate',1,0.003436,'s',291),(3242,'confirm',5,0.020833,'u',240),(3243,'input',17,0.070833,'u',240),(3244,'modify',7,0.029167,'u',240),(3245,'cancle',1,0.004167,'u',240),(3246,'push',1,0.004167,'u',240),(3247,'notify',2,0.006873,'s',291),(3248,'send',1,0.004167,'u',240),(3249,'show',2,0.006873,'s',291),(3250,'finish',3,0.010309,'s',291),(3251,'modify',5,0.017182,'s',291),(3252,'delete',6,0.020619,'s',291),(3253,'finish',1,0.004167,'u',240),(3254,'regist',1,0.004167,'u',240),(3255,'start',3,0.0125,'u',240),(3256,'record',1,0.003436,'s',291),(3257,'present',11,0.037801,'s',291),(3258,'pay',1,0.004167,'u',240),(3259,'handle',1,0.003436,'s',291),(3260,'log',1,0.003436,'s',291),(3261,'leave',1,0.004167,'u',240),(3262,'access',1,0.004167,'u',240),(3263,'search',1,0.004167,'u',240),(3264,'process',1,0.003436,'s',291),(3265,'choose',10,0.041667,'u',240),(3266,'complete',2,0.008333,'u',240),(3267,'submit',3,0.0125,'u',240),(3268,'store',1,0.003436,'s',291),(3269,'review',6,0.025,'u',240),(3270,'set',2,0.006873,'s',291),(3271,'set',1,0.004167,'u',240),(3272,'exit',1,0.004167,'u',240),(3273,'ask',1,0.003436,'s',291),(3274,'exit',1,0.003436,'s',291),(3275,'open',2,0.006873,'s',291),(3276,'close',1,0.003436,'s',291),(3277,'report',1,0.003436,'s',291),(3278,'initiate',1,0.004167,'u',240),(3279,'recommend',1,0.003436,'s',291),(3280,'get',1,0.003436,'s',291),(3281,'give',1,0.003436,'s',291),(3282,'return',1,0.003436,'s',291),(3283,'engineer',1,0.004167,'u',240),(3284,'alert',1,0.003436,'s',291);
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

-- Dump completed on 2015-08-27 21:26:24
