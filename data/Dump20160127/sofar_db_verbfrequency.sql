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
-- Dumping data for table `verbfrequency`
--

LOCK TABLES `verbfrequency` WRITE;
/*!40000 ALTER TABLE `verbfrequency` DISABLE KEYS */;
INSERT INTO `verbfrequency` VALUES (90746,'insert',1,0.001825,'u',548),(90747,'read',2,0.003284,'s',609),(90748,'prompt',4,0.006568,'s',609),(90749,'enter',13,0.023723,'u',548),(90750,'check',15,0.024631,'s',609),(90751,'display',294,0.482759,'s',609),(90752,'select',110,0.20073,'u',548),(90753,'perform',6,0.009852,'s',609),(90754,'print',10,0.01642,'s',609),(90755,'eject',3,0.004926,'s',609),(90756,'authorize',1,0.001642,'s',609),(90757,'dispense',1,0.001642,'s',609),(90758,'browse',3,0.005474,'u',548),(90759,'provide',11,0.020073,'u',548),(90760,'retrieve',68,0.111658,'s',609),(90761,'create',9,0.014778,'s',609),(90762,'confirm',1,0.001642,'s',609),(90763,'prepare',2,0.00365,'u',548),(90764,'update',5,0.00821,'s',609),(90765,'charge',1,0.001642,'s',609),(90766,'send',8,0.013136,'s',609),(90767,'request',260,0.474453,'u',548),(90768,'determine',1,0.001642,'s',609),(90769,'request',21,0.034483,'s',609),(90770,'validate',3,0.004926,'s',609),(90771,'generate',2,0.003284,'s',609),(90772,'add',4,0.006568,'s',609),(90773,'provide',28,0.045977,'s',609),(90774,'change',2,0.00365,'u',548),(90775,'save',38,0.062397,'s',609),(90776,'assign',4,0.006568,'s',609),(90777,'retain',1,0.001642,'s',609),(90778,'make',4,0.006568,'s',609),(90779,'verify',8,0.013136,'s',609),(90780,'verify',2,0.00365,'u',548),(90781,'mark',1,0.001642,'s',609),(90782,'remove',10,0.01642,'s',609),(90783,'calculate',1,0.001642,'s',609),(90784,'confirm',5,0.009124,'u',548),(90785,'input',68,0.124088,'u',548),(90786,'modify',28,0.051095,'u',548),(90787,'cancle',1,0.001825,'u',548),(90788,'push',2,0.00365,'u',548),(90789,'notify',2,0.003284,'s',609),(90790,'send',1,0.001825,'u',548),(90791,'show',2,0.003284,'s',609),(90792,'finish',3,0.004926,'s',609),(90793,'modify',7,0.011494,'s',609),(90794,'delete',6,0.009852,'s',609),(90795,'finish',1,0.001825,'u',548),(90796,'regist',1,0.001825,'u',548),(90797,'start',3,0.005474,'u',548),(90798,'record',1,0.001642,'s',609),(90799,'present',11,0.018062,'s',609),(90800,'pay',1,0.001825,'u',548),(90801,'handle',1,0.001642,'s',609),(90802,'log',1,0.001642,'s',609),(90803,'leave',1,0.001825,'u',548),(90804,'access',1,0.001825,'u',548),(90805,'search',2,0.00365,'u',548),(90806,'process',1,0.001642,'s',609),(90807,'choose',10,0.018248,'u',548),(90808,'complete',2,0.00365,'u',548),(90809,'submit',3,0.005474,'u',548),(90810,'store',1,0.001642,'s',609),(90811,'review',6,0.010949,'u',548),(90812,'engineer',1,0.001825,'u',548),(90813,'alert',1,0.001642,'s',609),(90814,'set',2,0.003284,'s',609),(90815,'set',1,0.001825,'u',548),(90816,'exit',1,0.001825,'u',548),(90817,'ask',1,0.001642,'s',609),(90818,'exit',1,0.001642,'s',609),(90819,'open',2,0.003284,'s',609),(90820,'close',1,0.001642,'s',609),(90821,'report',1,0.001642,'s',609),(90822,'initiate',1,0.001825,'u',548),(90823,'recommend',1,0.001642,'s',609),(90824,'get',1,0.001642,'s',609),(90825,'give',1,0.001642,'s',609),(90826,'return',1,0.001642,'s',609),(90827,'remove',1,0.001825,'u',548),(90828,'load',3,0.004926,'s',609),(90829,'decide',2,0.00365,'u',548),(90830,'check',1,0.001825,'u',548),(90831,'download',2,0.003284,'s',609),(90832,'deploy',1,0.001642,'s',609);
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

-- Dump completed on 2016-01-27 10:13:20
