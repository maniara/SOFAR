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
-- Table structure for table `flow`
--

DROP TABLE IF EXISTS `flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flow` (
  `flowNum` int(11) NOT NULL AUTO_INCREMENT,
  `isAlternative` char(1) DEFAULT NULL,
  `startOrder` varchar(45) DEFAULT NULL,
  `usecaseID` varchar(45) DEFAULT NULL,
  `flowID` varchar(45) DEFAULT NULL,
  `startCondition` varchar(1000) DEFAULT NULL,
  `projectID` varchar(45) DEFAULT NULL,
  `flowType` char(1) DEFAULT NULL,
  PRIMARY KEY (`flowNum`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flow`
--

LOCK TABLES `flow` WRITE;
/*!40000 ALTER TABLE `flow` DISABLE KEYS */;
INSERT INTO `flow` VALUES (28,'N','1','atm01','atm01-1','null','ATM','u'),(29,'Y','2a','atm01','atm01-2a','If the system does not recognize the card','ATM','u'),(30,'Y','5a','atm01','atm01-5a','If the system determines that the card date has expired','ATM','u'),(31,'Y','5b','atm01','atm01-5b','If the system determines that the card has been reported lost or stolen','ATM','u'),(32,'Y','7a','atm01','atm01-7a','If the customer-entered PIN does not match the PIN number for','ATM','u'),(33,'Y','7b','atm01','atm01-7b','If the customer enters the incorrect PIN three times','ATM','u'),(52,'N','1','atm04','atm04-1','null','ATM','u'),(53,'Y','3a','atm04','atm04-3a','If the system determines that the from account number is invalid','ATM','u'),(54,'Y','3b','atm04','atm04-3b','If the system determines that the to account number is invalid','ATM','u'),(55,'Y','3c','atm04','atm04-3c','If the system determines that there are insufficient funds in the customer’s from account','ATM','u'),(56,'N','1','atm02','atm02-1','null','ATM','u'),(57,'Y','3a','atm02','atm02-3a','If the system determines that the account number is invalid','ATM','u'),(58,'Y','3b','atm02','atm02-3b','If the system determines that there are insufficient funds in the customer’s account','ATM','u'),(59,'Y','5a','atm02','atm02-5a','If the ATM is out of funds, the system displays an apology','ATM','u'),(60,'Y','3c','atm02','atm02-3c','If the system determines that the maximum allowable daily withdrawal amount has been exceeded','ATM','u'),(61,'N','1','atm03','atm03-1','null','ATM','u'),(62,'Y','3a','atm03','atm03-3a','If the system determines that the account number is invalid','ATM','u'),(63,'N','1','oss01','oss01-1','null','OSS','u'),(64,'Y','3a','oss01','oss01-3a','If customer does not select item and exits.','OSS','u'),(65,'N','1','oss01','oss01-1','null','OSS','u'),(66,'Y','3a','oss01','oss01-3a','If customer does not select item and exits.','OSS','u'),(67,'N','1','oss02','oss02-1','null','OSS','u'),(68,'Y','2a','oss02','oss02-2a','If customer does not have an account','OSS','u'),(69,'Y','3a','oss02','oss02-3a','If authorization of the customer’s credit card is denied (e.g., invalid credit card or insufficient funds in the customer’s credit card account)','OSS','u'),(74,'N','1','oss04','oss04-1','null','OSS','u'),(75,'N','1','oss03','oss03-1','null','OSS','u'),(76,'Y','4a','oss03','oss03-4a','If item is out of stock','OSS','u'),(77,'N','1','prs01','prs01-1','null','PRS','u'),(78,'Y','4a','prs01','prs01-4a','Invalid name/password','PRS','u'),(79,'N','1','prs02','prs02-1','null','PRS','u'),(81,'N','1','prs03','prs03-1','null','PRS','u'),(82,'N','1','prs04','prs04-1','null','PRS','u'),(83,'Y','5a','prs04','prs04-5a','Employee Not Found','PRS','u'),(86,'N','1','prs06','prs06-1','null','PRS','u'),(87,'Y','2a','prs06','prs06-2a','If a timecard does not exist','PRS','u'),(88,'Y','4a','prs06','prs06-4a','Invalid number of hour','PRS','u'),(91,'N','1','prs08','prs08-1','null','PRS','u'),(92,'Y','4a','prs08','prs08-4a','Requested Information Unavailable','PRS','u'),(93,'Y','6a','prs08','prs08-6a','Requested Information Unavailable','PRS','u'),(94,'N','1','prs09','prs09-1','null','PRS','u'),(95,'Y','6a','prs09','prs09-6a','Requested Information Unavailable','PRS','u'),(96,'Y','10a','prs09','prs09-10a','Requested Information Unavailable','PRS','u'),(97,'N','1','prs07','prs07-1','null','PRS','u'),(98,'Y','3a','prs07','prs07-3a','Timecard Already Submitted','PRS','u'),(99,'N','1','prs10','prs10-1','null','PRS','u'),(100,'N','1','prs11','prs11-1','null','PRS','u'),(101,'Y','7a','prs11','prs11-7a','Purchase Order Not Found','PRS','u'),(102,'Y','7b','prs11','prs11-7b','Invalid Access to a Purchase Order','PRS','u'),(103,'Y','7c','prs11','prs11-7c','Purchase Order is Closed','PRS','u'),(104,'N','1','prs05','prs05-1','null','PRS','u'),(105,'Y','5a','prs05','prs05-5a','Employee Not Found','PRS','u'),(106,'Y','7a','prs05','prs05-7a','Delete Cancelled','PRS','u'),(107,'N','1','prs12','prs12-1','null','PRS','u'),(108,'Y','7a','prs12','prs12-7a','Purchase Order Not Found','PRS','u'),(109,'Y','7b','prs12','prs12-7b','Invalid Access to a Purchase Order','PRS','u'),(110,'Y','7c','prs12','prs12-7c','Purchase Order is Closed','PRS','u'),(111,'Y','10a','prs12','prs12-10a','Delete Cancelled','PRS','u'),(112,'N','1','prs12','prs12-1','null','PRS','u'),(113,'Y','4a','prs12','prs12-4a','Bank System Unavailable','PRS','u'),(114,'Y','7a','prs12','prs12-7a','Manager deny the comfirm','PRS','u'),(116,'N','1','cos01','cos01-1','null','cos','u'),(117,'Y','6a','cos01','cos01-6a','사원이 확정한 메뉴가 등록한 건강 정보와 비교하여 적합하지 않을 경우','cos','u'),(118,'N','1','cos02','cos02-1','null','cos','u'),(119,'Y','6a','cos02','cos02-6a','사원이 예약정보를 취소할 경우','cos','u'),(125,'N','1','cos03','con03-1','null','cos','u'),(126,'Y','2a','cos03','con03-2a','예약정보가 없는경우','cos','u'),(129,'N','1','cos04','con04-1','null','cos','u'),(130,'Y','2a','cos04','con04-2a','사원은 예약정보를 확정하거나 취소할 경우','cos','u'),(131,'N','1','cos05','cos05-1','null','cos','u'),(132,'N','1','cos06','cos06-1','null','cos','u'),(133,'N','1','cos07','cos07-1','null','cos','u'),(134,'Y','3a','cos07','cos07-3a','주문 취소가 불가능한 경우','cos','u'),(135,'N','1','cos08','cos08-1','null','cos','u'),(136,'N','1','cos09','cos09-1','null','cos','u'),(137,'N','1','cos10','cos10-1','null','cos','u'),(138,'N','1','cos11','cos11-1','null','cos','u'),(139,'Y','4a','cos11','cos11-4a','현재 배달요원의 위치가 수신되지 않을 경우','cos','u'),(140,'N','1','cos12','cos12-1','null','cos','u'),(141,'Y','2a','cos12','cos12-2a','사용자가 등록되어 있지 않을 경우 ','cos','u'),(142,'Y','3a','cos12','cos12-3a','요청 받은 배달 내용이 없는경우','cos','u'),(143,'N','1','cos13','cos13-1','null','cos','u'),(144,'Y','6a','cos13','cos13-6a','조회된 내용이 없을 경우 ','cos','u'),(145,'N','1','cos14','cos14-1','null','cos','u'),(146,'Y','1a','cos14','cos14-1a','조회된 내용이 없을 경우 ','cos','u'),(149,'N','1','cos16','cos16-1','null','cos','u'),(150,'N','1','cos17','cos17-1','null','cos','u'),(151,'N','1','cos18','cos18-1','null','cos','u'),(152,'N','1','cos19','cos19-1','null','cos','u'),(153,'N','1','cos20','cos20-1','null','cos','u'),(154,'Y','5a','cos20','cos20-5a','메뉴가격등록이 실패인 경우','cos','u'),(155,'N','1','cos21','cos21-1','null','cos','u'),(156,'N','1','cos22','cos22-1','null','cos','u'),(157,'N','1','cos23','cos23-1','null','cos','u'),(158,'N','1','cos24','cos24-1','null','cos','u'),(159,'Y','3a','cos24','cos24-3a','통계자료조회 실패인 경우','cos','u'),(160,'N','1','cos25','cos25-1','null','cos','u'),(161,'N','1','cos26','cos26-1','null','cos','u'),(162,'Y','3a','cos26','cos26-3a','재고 물량이 충분한 경우','cos','u'),(163,'N','1','cos15','cos15-1','null','cos','u'),(164,'Y','4a','cos15','cos15-4a','메뉴등록 실패인 경우','cos','u'),(165,'N','1','POS01','POS01-1','null','POS','u'),(166,'N','1','UIS01','UIS01-1','null','UIS','u'),(167,'Y','5a','UIS01','UIS01-5a','유효하지 않은 아이디 또는 암호인경우','UIS','u'),(168,'Y','5a','UIS01','UIS01-5a','부정확한 아이디와 암호인 경우','UIS','u'),(169,'N','1','UIS02','UIS02-1','null','UIS','u'),(170,'N','1','UIS03','UIS03-1','null','UIS','u'),(171,'N','1','UIS04','UIS04-1','null','UIS','u'),(173,'N','1','UIS05','UIS05-1','null','UIS','u'),(174,'N','1','UIS06','UIS06-1','null','UIS','u'),(175,'N','1','UIS07','UIS07-1','null','UIS','u'),(176,'N','1','UIS08','UIS08-1','null','UIS','u'),(177,'N','1','UIS09','UIS09-1','null','UIS','u'),(178,'N','1','UIS10','UIS10-1','null','UIS','u'),(179,'N','1','UIS','UIS-1','null','UIS','u'),(181,'N','1','UIS12','UIS12-1','null','UIS','u'),(182,'N','1','UIS13','UIS13-1','null','UIS','u'),(183,'Y','7a','UIS13','UIS13-7a','중복된 강의정보인 경우','UIS','u'),(184,'N','1','UIS14','UIS14-1','null','UIS','u'),(185,'N','1','UIS15','UIS15-1','null','UIS','u'),(186,'N','1','UIS16','UIS16-1','null','UIS','u'),(187,'N','1','UIS17','UIS17-1','null','UIS','u'),(188,'N','1','UIS18','UIS18-1','null','UIS','u'),(189,'N','1','UIS19','UIS19-1','null','UIS','u'),(190,'N','1','TMS01','TMS01-1','null','TMS','u'),(192,'N','1','TMS02','TMS02-1','null','TMS','u'),(194,'N','1','TMS03','TMS03-1','null','TMS','u'),(195,'N','1','TMS04','TMS04-1','null','TMS','u'),(196,'N','1','TMS05','TMS05-1','null','TMS','u'),(201,'N','1','EFF02','EFF02-1','null','EFF','u'),(202,'N','1','EFF03','EFF03-1','null','EFF','u'),(203,'Y','6a','EFF03','EFF03-6a','If user want to save','EFF','u'),(204,'N','1','EFF04','EFF04-1','null','EFF','u'),(205,'N','1','EFF05','EFF05-1','null','EFF','u'),(206,'N','1','EFF06','EFF06-1','null','EFF','u'),(207,'Y','4a','EFF06','EFF06-4a','If the report name exist','EFF','u'),(208,'N','1','EFF07','EFF07-1','null','EFF','u'),(209,'N','1','EFF08','EFF08-1','null','EFF','u'),(210,'N','1','OPS01','OPS01-1','null','OPS','u'),(211,'N','1','OPS02','OPS02-1','null','OPS','u'),(212,'N','1','OPS03','OPS03-1','null','OPS','u'),(213,'N','1','OPS04','OPS04-1','null','OPS','u'),(214,'N','1','OPS04','OPS04-1','null','OPS','u'),(216,'N','1','TMS06','TMS06-1','null','TMS','u'),(217,'N','1','BABY01','BABY01-1','null','BABY','u'),(218,'N','1','BABY02','BABY02-1','null','BABY','u'),(219,'N','1','BABY03','BABY03-1','null','BABY','u'),(220,'N','1','BABY04','BABY04-1','null','BABY','u'),(222,'N','1','WEBS02','WEBS02-1','null','WEBS','u'),(226,'N','1','WEBS','WEBS-1','null','WEBS','u'),(227,'N','1','SKP01','SKP01-1','null','SKP','u'),(228,'N','1','SKP02','SKP02-1','null','SKP','u'),(229,'N','1','SKP03','SKP03-1','null','SKP','u'),(230,'N','1','','-1','null','SKP','u'),(231,'N','1','SKP05','SKP05-1','null','SKP','u'),(232,'N','1','SKP06','SKP06-1','null','SKP','u'),(233,'N','1','SKP07','SKP07-1','null','SKP','u'),(234,'N','1','SKP08','SKP08-1','null','SKP','u'),(235,'N','1','SKP09','SKP09-1','null','SKP','u'),(236,'N','1','SKP10','SKP10-1','null','SKP','u'),(237,'N','1','SKP11','SKP11-1','null','SKP','u'),(238,'N','1','SKP12','SKP12-1','null','SKP','u'),(239,'N','1','SKP13','SKP13-1','null','SKP','u'),(240,'N','1','SKP14','SKP14-1','null','SKP','u'),(241,'N','1','SKP15','SKP15-1','null','SKP','u'),(242,'N','1','SKP16','SKP16-1','null','SKP','u'),(243,'N','1','SKP17','SKP17-1','null','SKP','u'),(244,'N','1','SKP18','SKP18-1','null','SKP','u'),(246,'N','1','SKP19','SKP19-1','null','SKP','u'),(247,'N','1','SKP20','SKP20-1','null','SKP','u'),(248,'N','1','SKP21','SKP21-1','null','SKP','u'),(249,'N','1','SKP22','SKP22-1','null','SKP','u'),(250,'N','1','SKP23','SKP23-1','null','SKP','u'),(251,'N','1','SKP24','SKP24-1','null','SKP','u'),(253,'N','1','SKP26','SKP26-1','null','SKP','u'),(254,'N','1','SKP27','SKP27-1','null','SKP','u'),(255,'N','1','SKP28','SKP28-1','null','SKP','u'),(256,'N','1','SKP29','SKP29-1','null','SKP','u'),(257,'N','1','SKP30','SKP30-1','null','SKP','u'),(258,'N','1','SKP31','SKP31-1','null','SKP','u'),(259,'N','1','SKP32','SKP32-1','null','SKP','u'),(261,'N','1','SKP33','SKP33-1','null','SKP','u'),(262,'N','1','SKP34','SKP34-1','null','SKP','u'),(263,'N','1','SKP35','SKP35-1','null','SKP','u'),(264,'N','1','SKP36','SKP36-1','null','SKP','u'),(265,'N','1','SKP37','SKP37-1','null','SKP','u'),(266,'N','1','SKP38','SKP38-1','null','SKP','u'),(267,'N','1','SKP39','SKP39-1','null','SKP','u'),(268,'N','1','SKP40','SKP40-1','null','SKP','u'),(269,'N','1','SKP41','SKP41-1','null','SKP','u'),(270,'N','1','SKP42','SKP42-1','null','SKP','u'),(271,'N','1','SKP43','SKP43-1','null','SKP','u'),(272,'N','1','SKP44','SKP44-1','null','SKP','u'),(273,'N','1','SKP25','SKP25-1','null','SKP','u'),(274,'N','1','SKP45','SKP45-1','null','SKP','u'),(275,'N','1','SKP47','SKP47-1','null','SKP','u'),(276,'N','1','SKP48','SKP48-1','null','SKP','u'),(277,'N','1','META01','-1','null','META','u'),(279,'N','1','META02','담당자 조회-1','null','META','u'),(280,'N','1','META03','META03-1','null','META','u'),(281,'N','1','META04','META04-1','null','META','u'),(282,'N','1','META05','META05-1','null','META','u'),(283,'N','1','META06','META06-1','null','META','u'),(284,'N','1','META07','META07-1','null','META','u'),(285,'N','1','META08','META08-1','null','META','u'),(286,'N','1','META09','META09-1','null','META','u'),(287,'N','1','META10','META10-1','null','META','u'),(288,'N','1','META11','META11-1','null','META','u'),(289,'N','1','META12','META12-1','null','META','u'),(290,'N','1','META13','META13-1','null','META','u'),(291,'N','1','META14','META14-1','null','META','u'),(292,'N','1','META15','META15-1','null','META','u'),(293,'N','1','META16','META16-1','null','META','u'),(294,'N','1','META17','META17-1','null','META','u'),(295,'N','1','META18','META18-1','null','META','u'),(296,'N','1','META19','META19-1','null','META','u'),(297,'N','1','META20','META20-1','null','META','u'),(298,'N','1','META21','META21-1','null','META','u'),(299,'N','1','META22','META22-1','null','META','u'),(300,'N','1','META23','META23-1','null','META','u'),(301,'N','1','META24','META24-1','null','META','u'),(302,'N','1','META25','META25-1','null','META','u'),(303,'N','1','META26','META26-1','null','META','u'),(304,'N','1','META27','META27-1','null','META','u'),(305,'N','1','META28','META28-1','null','META','u'),(306,'N','1','META29','META29-1','null','META','u'),(307,'N','1','META30','META30-1','null','META','u'),(308,'N','1','META31','META31-1','null','META','u'),(309,'N','1','META32','META32-1','null','META','u'),(310,'N','1','META33','META33-1','null','META','u'),(311,'N','1','META34','META34-1','null','META','u'),(312,'N','1','META35','META35-1','null','META','u'),(313,'N','1','META36','META36-1','null','META','u');
/*!40000 ALTER TABLE `flow` ENABLE KEYS */;
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
