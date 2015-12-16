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
) ENGINE=InnoDB AUTO_INCREMENT=5029 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verbfrequency`
--

LOCK TABLES `verbfrequency` WRITE;
/*!40000 ALTER TABLE `verbfrequency` DISABLE KEYS */;
INSERT INTO `verbfrequency` VALUES (4938,'insert',1,0.001546,'u',647),(4939,'read',2,0.002801,'s',714),(4940,'prompt',4,0.005602,'s',714),(4941,'enter',13,0.020093,'u',647),(4942,'check',15,0.021008,'s',714),(4943,'display',339,0.47479,'s',714),(4944,'select',145,0.224111,'u',647),(4945,'perform',6,0.008403,'s',714),(4946,'print',10,0.014006,'s',714),(4947,'eject',3,0.004202,'s',714),(4948,'authorize',1,0.001401,'s',714),(4949,'dispense',1,0.001401,'s',714),(4950,'browse',3,0.004637,'u',647),(4951,'provide',11,0.017002,'u',647),(4952,'retrieve',102,0.142857,'s',714),(4953,'create',9,0.012605,'s',714),(4954,'confirm',2,0.002801,'s',714),(4955,'prepare',2,0.003091,'u',647),(4956,'update',5,0.007003,'s',714),(4957,'charge',1,0.001401,'s',714),(4958,'send',8,0.011204,'s',714),(4959,'request',271,0.418856,'u',647),(4960,'determine',1,0.001401,'s',714),(4961,'request',21,0.029412,'s',714),(4962,'validate',3,0.004202,'s',714),(4963,'generate',2,0.002801,'s',714),(4964,'add',4,0.005602,'s',714),(4965,'provide',28,0.039216,'s',714),(4966,'change',2,0.003091,'u',647),(4967,'save',49,0.068627,'s',714),(4968,'assign',4,0.005602,'s',714),(4969,'retain',1,0.001401,'s',714),(4970,'make',4,0.005602,'s',714),(4971,'verify',8,0.011204,'s',714),(4972,'verify',2,0.003091,'u',647),(4973,'mark',1,0.001401,'s',714),(4974,'remove',10,0.014006,'s',714),(4975,'calculate',1,0.001401,'s',714),(4976,'confirm',5,0.007728,'u',647),(4977,'input',106,0.163833,'u',647),(4978,'modify',37,0.057187,'u',647),(4979,'cancle',1,0.001546,'u',647),(4980,'push',1,0.001546,'u',647),(4981,'notify',2,0.002801,'s',714),(4982,'send',1,0.001546,'u',647),(4983,'show',2,0.002801,'s',714),(4984,'finish',3,0.004202,'s',714),(4985,'modify',18,0.02521,'s',714),(4986,'delete',6,0.008403,'s',714),(4987,'finish',1,0.001546,'u',647),(4988,'regist',1,0.001546,'u',647),(4989,'start',3,0.004637,'u',647),(4990,'record',1,0.001401,'s',714),(4991,'present',11,0.015406,'s',714),(4992,'pay',1,0.001546,'u',647),(4993,'handle',1,0.001401,'s',714),(4994,'log',1,0.001401,'s',714),(4995,'leave',1,0.001546,'u',647),(4996,'access',1,0.001546,'u',647),(4997,'search',2,0.003091,'u',647),(4998,'process',1,0.001401,'s',714),(4999,'choose',12,0.018547,'u',647),(5000,'complete',2,0.003091,'u',647),(5001,'submit',3,0.004637,'u',647),(5002,'store',1,0.001401,'s',714),(5003,'review',6,0.009274,'u',647),(5004,'engineer',1,0.001546,'u',647),(5005,'alert',1,0.001401,'s',714),(5006,'set',2,0.002801,'s',714),(5007,'set',1,0.001546,'u',647),(5008,'exit',1,0.001546,'u',647),(5009,'ask',1,0.001401,'s',714),(5010,'exit',1,0.001401,'s',714),(5011,'open',2,0.002801,'s',714),(5012,'close',1,0.001401,'s',714),(5013,'report',1,0.001401,'s',714),(5014,'initiate',1,0.001546,'u',647),(5015,'recommend',1,0.001401,'s',714),(5016,'get',1,0.001401,'s',714),(5017,'give',1,0.001401,'s',714),(5018,'return',1,0.001401,'s',714),(5019,'request',1,0.001401,'U',714),(5020,'request',1,0.001401,'y',714),(5021,'remove',1,0.001546,'u',647),(5022,'load',3,0.004202,'s',714),(5023,'decide',2,0.003091,'u',647),(5024,'check',1,0.001546,'u',647),(5025,'download',2,0.002801,'s',714),(5026,'deploy',1,0.001401,'s',714),(5027,'null',5,0.007728,'u',647),(5028,'null',3,0.004202,'s',714);
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

-- Dump completed on 2015-12-16 15:23:21
