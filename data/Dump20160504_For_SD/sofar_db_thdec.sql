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
-- Table structure for table `thdec`
--

DROP TABLE IF EXISTS `thdec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thdec` (
  `id` int(11) NOT NULL,
  `equ` double DEFAULT NULL,
  `ps` double DEFAULT NULL,
  `count` double DEFAULT NULL,
  `ri` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `try` int(11) DEFAULT NULL,
  `ext` int(11) DEFAULT NULL,
  `cor` int(11) DEFAULT NULL,
  `prec` double DEFAULT NULL,
  `rec` double DEFAULT NULL,
  `fmea` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thdec`
--

LOCK TABLES `thdec` WRITE;
/*!40000 ALTER TABLE `thdec` DISABLE KEYS */;
INSERT INTO `thdec` VALUES (1,0.5,0.5,0,0,1,1731,1284,709,0.55,0.41,0.47),(2,0.5,0.5,0,0.1,0.9,1731,1169,753,0.64,0.44,0.52),(3,0.5,0.5,0,0.2,0.8,1731,1183,700,0.59,0.4,0.48),(4,0.5,0.5,0,0.3,0.7,1731,1392,685,0.49,0.4,0.44),(5,0.5,0.5,0,0.4,0.6,1731,1955,745,0.38,0.43,0.4),(6,0.5,0.5,0,0.5,0.5,1731,2428,767,0.32,0.44,0.37),(7,0.5,0.5,0,0.6,0.4,1731,2667,777,0.29,0.45,0.35),(8,0.5,0.5,0,0.7,0.3,1731,2749,785,0.29,0.45,0.35),(9,0.5,0.5,0,0.8,0.2,1731,2805,811,0.29,0.47,0.36),(10,0.5,0.5,0,0.9,0.1,1731,2864,807,0.28,0.47,0.35),(11,0.5,0.5,0,1,0,1731,2925,806,0.28,0.47,0.35),(12,0.5,0.5,0.1,0,0.9,1731,1254,766,0.61,0.44,0.51),(13,0.5,0.5,0.1,0.1,0.8,1731,1290,798,0.62,0.46,0.53),(14,0.5,0.5,0.1,0.2,0.7,1731,1926,837,0.43,0.48,0.46),(15,0.5,0.5,0.1,0.3,0.6,1731,2421,844,0.35,0.49,0.41),(16,0.5,0.5,0.1,0.4,0.5,1731,2609,911,0.35,0.53,0.42),(17,0.5,0.5,0.1,0.5,0.4,1731,2629,922,0.35,0.53,0.42),(18,0.5,0.5,0.1,0.6,0.3,1731,2795,883,0.32,0.51,0.39),(19,0.5,0.5,0.1,0.7,0.2,1731,2835,875,0.31,0.51,0.38),(20,0.5,0.5,0.1,0.8,0.1,1731,2905,884,0.3,0.51,0.38),(21,0.5,0.5,0.1,0.9,0,1731,3003,876,0.29,0.51,0.37),(22,0.5,0.5,0.2,0,0.8,1731,1823,826,0.45,0.48,0.46),(23,0.5,0.5,0.2,0.1,0.7,1731,2771,964,0.35,0.56,0.43),(24,0.5,0.5,0.2,0.2,0.6,1731,2801,958,0.34,0.55,0.42),(25,0.5,0.5,0.2,0.3,0.5,1731,2805,945,0.34,0.55,0.42),(26,0.5,0.5,0.2,0.4,0.4,1731,2815,945,0.34,0.55,0.42),(27,0.5,0.5,0.2,0.5,0.3,1731,2947,951,0.32,0.55,0.41),(28,0.5,0.5,0.2,0.6,0.2,1731,2974,954,0.32,0.55,0.41),(29,0.5,0.5,0.2,0.7,0.1,1731,3093,954,0.31,0.55,0.4),(30,0.5,0.5,0.2,0.8,0,1731,3135,946,0.3,0.55,0.39),(31,0.5,0.5,0.3,0,0.7,1731,2945,930,0.32,0.54,0.4),(32,0.5,0.5,0.3,0.1,0.6,1731,2830,971,0.34,0.56,0.43),(33,0.5,0.5,0.3,0.2,0.5,1731,2809,953,0.34,0.55,0.42),(34,0.5,0.5,0.3,0.3,0.4,1731,2829,950,0.34,0.55,0.42),(35,0.5,0.5,0.3,0.4,0.3,1731,2875,951,0.33,0.55,0.41),(36,0.5,0.5,0.3,0.5,0.2,1731,2982,953,0.32,0.55,0.4),(37,0.5,0.5,0.3,0.6,0.1,1731,3067,950,0.31,0.55,0.4),(38,0.5,0.5,0.3,0.7,0,1731,3185,950,0.3,0.55,0.39),(39,0.5,0.5,0.4,0,0.6,1731,3040,945,0.31,0.55,0.4),(40,0.5,0.5,0.4,0.1,0.5,1731,2873,976,0.34,0.56,0.42),(41,0.5,0.5,0.4,0.2,0.4,1731,2863,955,0.33,0.55,0.42),(42,0.5,0.5,0.4,0.3,0.3,1731,2885,953,0.33,0.55,0.41),(43,0.5,0.5,0.4,0.4,0.2,1731,2885,947,0.33,0.55,0.41),(44,0.5,0.5,0.4,0.5,0.1,1731,3080,945,0.31,0.55,0.39),(45,0.5,0.5,0.4,0.6,0,1731,3225,950,0.29,0.55,0.38),(46,0.5,0.5,0.5,0,0.5,1731,3040,942,0.31,0.54,0.39),(47,0.5,0.5,0.5,0.1,0.4,1731,2895,981,0.34,0.57,0.42),(48,0.5,0.5,0.5,0.2,0.3,1731,2895,949,0.33,0.55,0.41),(49,0.5,0.5,0.5,0.3,0.2,1731,2915,948,0.33,0.55,0.41),(50,0.5,0.5,0.5,0.4,0.1,1731,3133,943,0.3,0.54,0.39),(51,0.5,0.5,0.5,0.5,0,1731,3344,957,0.29,0.55,0.38),(52,0.5,0.5,0.6,0,0.4,1731,3135,941,0.3,0.54,0.39),(53,0.5,0.5,0.6,0.1,0.3,1731,3001,963,0.32,0.56,0.41),(54,0.5,0.5,0.6,0.2,0.2,1731,3038,947,0.31,0.55,0.4),(55,0.5,0.5,0.6,0.3,0.1,1731,3220,945,0.29,0.55,0.38),(56,0.5,0.5,0.6,0.4,0,1731,3654,982,0.27,0.57,0.36),(57,0.5,0.5,0.7,0,0.3,1731,3197,927,0.29,0.54,0.38),(58,0.5,0.5,0.7,0.1,0.2,1731,3083,946,0.31,0.55,0.39),(59,0.5,0.5,0.7,0.2,0.1,1731,3704,1008,0.27,0.58,0.37),(60,0.5,0.5,0.7,0.3,0,1731,3996,1044,0.26,0.6,0.36),(61,0.5,0.5,0.8,0,0.2,1731,4184,980,0.23,0.57,0.33),(62,0.5,0.5,0.8,0.1,0.1,1731,3934,1059,0.27,0.61,0.37),(63,0.5,0.5,0.8,0.2,0,1731,3937,1051,0.27,0.61,0.37),(64,0.5,0.5,0.9,0,0.1,1731,4202,979,0.23,0.57,0.33),(65,0.5,0.5,0.9,0.1,0,1731,3930,1054,0.27,0.61,0.37),(66,0.5,0.5,1,0,0,1731,4180,981,0.23,0.57,0.33),(67,0.6,0.4,0,0,1,1731,1278,711,0.56,0.41,0.47),(68,0.6,0.4,0,0.1,0.9,1731,1162,746,0.64,0.43,0.52),(69,0.6,0.4,0,0.2,0.8,1731,1166,726,0.62,0.42,0.5),(70,0.6,0.4,0,0.3,0.7,1731,1196,689,0.58,0.4,0.47),(71,0.6,0.4,0,0.4,0.6,1731,1354,670,0.49,0.39,0.43),(72,0.6,0.4,0,0.5,0.5,1731,1503,689,0.46,0.4,0.43),(73,0.6,0.4,0,0.6,0.4,1731,1954,742,0.38,0.43,0.4),(74,0.6,0.4,0,0.7,0.3,1731,2304,757,0.33,0.44,0.38),(75,0.6,0.4,0,0.8,0.2,1731,2431,767,0.32,0.44,0.37),(76,0.6,0.4,0,0.9,0.1,1731,2574,777,0.3,0.45,0.36),(77,0.6,0.4,0,1,0,1731,2732,775,0.28,0.45,0.35),(78,0.6,0.4,0.1,0,0.9,1731,1250,749,0.6,0.43,0.5),(79,0.6,0.4,0.1,0.1,0.8,1731,1196,779,0.65,0.45,0.53),(80,0.6,0.4,0.1,0.2,0.7,1731,1265,762,0.6,0.44,0.51),(81,0.6,0.4,0.1,0.3,0.6,1731,1378,761,0.55,0.44,0.49),(82,0.6,0.4,0.1,0.4,0.5,1731,1947,807,0.41,0.47,0.44),(83,0.6,0.4,0.1,0.5,0.4,1731,2225,830,0.37,0.48,0.42),(84,0.6,0.4,0.1,0.6,0.3,1731,2387,822,0.34,0.47,0.4),(85,0.6,0.4,0.1,0.7,0.2,1731,2497,825,0.33,0.48,0.39),(86,0.6,0.4,0.1,0.8,0.1,1731,2539,850,0.33,0.49,0.4),(87,0.6,0.4,0.1,0.9,0,1731,2706,869,0.32,0.5,0.39),(88,0.6,0.4,0.2,0,0.8,1731,1257,764,0.61,0.44,0.51),(89,0.6,0.4,0.2,0.1,0.7,1731,1224,795,0.65,0.46,0.54),(90,0.6,0.4,0.2,0.2,0.6,1731,1860,835,0.45,0.48,0.47),(91,0.6,0.4,0.2,0.3,0.5,1731,2264,840,0.37,0.49,0.42),(92,0.6,0.4,0.2,0.4,0.4,1731,2548,887,0.35,0.51,0.41),(93,0.6,0.4,0.2,0.5,0.3,1731,2626,922,0.35,0.53,0.42),(94,0.6,0.4,0.2,0.6,0.2,1731,2633,920,0.35,0.53,0.42),(95,0.6,0.4,0.2,0.7,0.1,1731,2672,924,0.35,0.53,0.42),(96,0.6,0.4,0.2,0.8,0,1731,2714,928,0.34,0.54,0.42),(97,0.6,0.4,0.3,0,0.7,1731,1364,757,0.55,0.44,0.49),(98,0.6,0.4,0.3,0.1,0.6,1731,2584,944,0.37,0.55,0.44),(99,0.6,0.4,0.3,0.2,0.5,1731,2773,949,0.34,0.55,0.42),(100,0.6,0.4,0.3,0.3,0.4,1731,2801,943,0.34,0.54,0.42),(101,0.6,0.4,0.3,0.4,0.3,1731,2802,944,0.34,0.55,0.42),(102,0.6,0.4,0.3,0.5,0.2,1731,2806,946,0.34,0.55,0.42),(103,0.6,0.4,0.3,0.6,0.1,1731,2819,943,0.33,0.54,0.41),(104,0.6,0.4,0.3,0.7,0,1731,2840,949,0.33,0.55,0.42),(105,0.6,0.4,0.4,0,0.6,1731,2966,941,0.32,0.54,0.4),(106,0.6,0.4,0.4,0.1,0.5,1731,2826,968,0.34,0.56,0.42),(107,0.6,0.4,0.4,0.2,0.4,1731,2812,952,0.34,0.55,0.42),(108,0.6,0.4,0.4,0.3,0.3,1731,2813,947,0.34,0.55,0.42),(109,0.6,0.4,0.4,0.4,0.2,1731,2808,947,0.34,0.55,0.42),(110,0.6,0.4,0.4,0.5,0.1,1731,2819,946,0.34,0.55,0.42),(111,0.6,0.4,0.4,0.6,0,1731,2827,947,0.33,0.55,0.42),(112,0.6,0.4,0.5,0,0.5,1731,2952,939,0.32,0.54,0.4),(113,0.6,0.4,0.5,0.1,0.4,1731,2860,976,0.34,0.56,0.43),(114,0.6,0.4,0.5,0.2,0.3,1731,2827,955,0.34,0.55,0.42),(115,0.6,0.4,0.5,0.3,0.2,1731,2834,953,0.34,0.55,0.42),(116,0.6,0.4,0.5,0.4,0.1,1731,2881,952,0.33,0.55,0.41),(117,0.6,0.4,0.5,0.5,0,1731,2878,949,0.33,0.55,0.41),(118,0.6,0.4,0.6,0,0.4,1731,3051,934,0.31,0.54,0.39),(119,0.6,0.4,0.6,0.1,0.3,1731,2918,974,0.33,0.56,0.42),(120,0.6,0.4,0.6,0.2,0.2,1731,2860,955,0.33,0.55,0.42),(121,0.6,0.4,0.6,0.3,0.1,1731,2872,953,0.33,0.55,0.41),(122,0.6,0.4,0.6,0.4,0,1731,2875,952,0.33,0.55,0.41),(123,0.6,0.4,0.7,0,0.3,1731,3057,942,0.31,0.54,0.39),(124,0.6,0.4,0.7,0.1,0.2,1731,2923,984,0.34,0.57,0.42),(125,0.6,0.4,0.7,0.2,0.1,1731,2874,954,0.33,0.55,0.41),(126,0.6,0.4,0.7,0.3,0,1731,2884,953,0.33,0.55,0.41),(127,0.6,0.4,0.8,0,0.2,1731,3049,942,0.31,0.54,0.39),(128,0.6,0.4,0.8,0.1,0.1,1731,2892,966,0.33,0.56,0.42),(129,0.6,0.4,0.8,0.2,0,1731,2887,947,0.33,0.55,0.41),(130,0.6,0.4,0.9,0,0.1,1731,3128,930,0.3,0.54,0.38),(131,0.6,0.4,0.9,0.1,0,1731,2996,952,0.32,0.55,0.4),(132,0.6,0.4,1,0,0,1731,3155,927,0.29,0.54,0.38),(133,0.7,0.3,0,0,1,1731,1279,710,0.56,0.41,0.47),(134,0.7,0.3,0,0.1,0.9,1731,1159,744,0.64,0.43,0.51),(135,0.7,0.3,0,0.2,0.8,1731,1153,731,0.63,0.42,0.51),(136,0.7,0.3,0,0.3,0.7,1731,1176,695,0.59,0.4,0.48),(137,0.7,0.3,0,0.4,0.6,1731,1193,671,0.56,0.39,0.46),(138,0.7,0.3,0,0.5,0.5,1731,1209,660,0.55,0.38,0.45),(139,0.7,0.3,0,0.6,0.4,1731,1349,667,0.49,0.39,0.43),(140,0.7,0.3,0,0.7,0.3,1731,1424,674,0.47,0.39,0.43),(141,0.7,0.3,0,0.8,0.2,1731,1525,689,0.45,0.4,0.42),(142,0.7,0.3,0,0.9,0.1,1731,1849,726,0.39,0.42,0.41),(143,0.7,0.3,0,1,0,1731,2015,743,0.37,0.43,0.4),(144,0.7,0.3,0.1,0,0.9,1731,1231,756,0.61,0.44,0.51),(145,0.7,0.3,0.1,0.1,0.8,1731,1193,777,0.65,0.45,0.53),(146,0.7,0.3,0.1,0.2,0.7,1731,1195,772,0.65,0.45,0.53),(147,0.7,0.3,0.1,0.3,0.6,1731,1199,752,0.63,0.43,0.51),(148,0.7,0.3,0.1,0.4,0.5,1731,1268,738,0.58,0.43,0.49),(149,0.7,0.3,0.1,0.5,0.4,1731,1349,735,0.54,0.42,0.48),(150,0.7,0.3,0.1,0.6,0.3,1731,1437,732,0.51,0.42,0.46),(151,0.7,0.3,0.1,0.7,0.2,1731,1764,759,0.43,0.44,0.43),(152,0.7,0.3,0.1,0.8,0.1,1731,2096,794,0.38,0.46,0.41),(153,0.7,0.3,0.1,0.9,0,1731,2261,805,0.36,0.47,0.4),(154,0.7,0.3,0.2,0,0.8,1731,1235,743,0.6,0.43,0.5),(155,0.7,0.3,0.2,0.1,0.7,1731,1188,778,0.65,0.45,0.53),(156,0.7,0.3,0.2,0.2,0.6,1731,1194,767,0.64,0.44,0.52),(157,0.7,0.3,0.2,0.3,0.5,1731,1273,750,0.59,0.43,0.5),(158,0.7,0.3,0.2,0.4,0.4,1731,1390,743,0.53,0.43,0.48),(159,0.7,0.3,0.2,0.5,0.3,1731,1713,767,0.45,0.44,0.45),(160,0.7,0.3,0.2,0.6,0.2,1731,2110,815,0.39,0.47,0.42),(161,0.7,0.3,0.2,0.7,0.1,1731,2258,827,0.37,0.48,0.41),(162,0.7,0.3,0.2,0.8,0,1731,2379,833,0.35,0.48,0.41),(163,0.7,0.3,0.3,0,0.7,1731,1221,741,0.61,0.43,0.5),(164,0.7,0.3,0.3,0.1,0.6,1731,1205,783,0.65,0.45,0.53),(165,0.7,0.3,0.3,0.2,0.5,1731,1298,779,0.6,0.45,0.51),(166,0.7,0.3,0.3,0.3,0.4,1731,1456,776,0.53,0.45,0.49),(167,0.7,0.3,0.3,0.4,0.3,1731,2111,816,0.39,0.47,0.42),(168,0.7,0.3,0.3,0.5,0.2,1731,2361,830,0.35,0.48,0.41),(169,0.7,0.3,0.3,0.6,0.1,1731,2479,855,0.34,0.49,0.41),(170,0.7,0.3,0.3,0.7,0,1731,2518,874,0.35,0.5,0.41),(171,0.7,0.3,0.4,0,0.6,1731,1273,768,0.6,0.44,0.51),(172,0.7,0.3,0.4,0.1,0.5,1731,1354,812,0.6,0.47,0.53),(173,0.7,0.3,0.4,0.2,0.4,1731,2062,864,0.42,0.5,0.46),(174,0.7,0.3,0.4,0.3,0.3,1731,2478,872,0.35,0.5,0.41),(175,0.7,0.3,0.4,0.4,0.2,1731,2605,917,0.35,0.53,0.42),(176,0.7,0.3,0.4,0.5,0.1,1731,2635,919,0.35,0.53,0.42),(177,0.7,0.3,0.4,0.6,0,1731,2675,919,0.34,0.53,0.42),(178,0.7,0.3,0.5,0,0.5,1731,2447,934,0.38,0.54,0.45),(179,0.7,0.3,0.5,0.1,0.4,1731,2804,966,0.34,0.56,0.43),(180,0.7,0.3,0.5,0.2,0.3,1731,2813,960,0.34,0.55,0.42),(181,0.7,0.3,0.5,0.3,0.2,1731,2804,949,0.34,0.55,0.42),(182,0.7,0.3,0.5,0.4,0.1,1731,2813,947,0.34,0.55,0.42),(183,0.7,0.3,0.5,0.5,0,1731,2822,947,0.34,0.55,0.42),(184,0.7,0.3,0.6,0,0.4,1731,2926,940,0.32,0.54,0.4),(185,0.7,0.3,0.6,0.1,0.3,1731,2861,972,0.34,0.56,0.42),(186,0.7,0.3,0.6,0.2,0.2,1731,2809,952,0.34,0.55,0.42),(187,0.7,0.3,0.6,0.3,0.1,1731,2822,948,0.34,0.55,0.42),(188,0.7,0.3,0.6,0.4,0,1731,2810,947,0.34,0.55,0.42),(189,0.7,0.3,0.7,0,0.3,1731,2961,929,0.31,0.54,0.4),(190,0.7,0.3,0.7,0.1,0.2,1731,2859,969,0.34,0.56,0.42),(191,0.7,0.3,0.7,0.2,0.1,1731,2812,952,0.34,0.55,0.42),(192,0.7,0.3,0.7,0.3,0,1731,2822,949,0.34,0.55,0.42),(193,0.7,0.3,0.8,0,0.2,1731,2922,936,0.32,0.54,0.4),(194,0.7,0.3,0.8,0.1,0.1,1731,2828,971,0.34,0.56,0.43),(195,0.7,0.3,0.8,0.2,0,1731,2829,955,0.34,0.55,0.42),(196,0.7,0.3,0.9,0,0.1,1731,2948,939,0.32,0.54,0.4),(197,0.7,0.3,0.9,0.1,0,1731,2884,967,0.34,0.56,0.42),(198,0.7,0.3,1,0,0,1731,3040,939,0.31,0.54,0.39),(199,0.8,0.2,0,0,1,1731,1282,709,0.55,0.41,0.47),(200,0.8,0.2,0,0.1,0.9,1731,1143,757,0.66,0.44,0.53),(201,0.8,0.2,0,0.2,0.8,1731,1147,729,0.64,0.42,0.51),(202,0.8,0.2,0,0.3,0.7,1731,1164,728,0.63,0.42,0.5),(203,0.8,0.2,0,0.4,0.6,1731,1188,698,0.59,0.4,0.48),(204,0.8,0.2,0,0.5,0.5,1731,1202,683,0.57,0.39,0.47),(205,0.8,0.2,0,0.6,0.4,1731,1196,657,0.55,0.38,0.45),(206,0.8,0.2,0,0.7,0.3,1731,1194,656,0.55,0.38,0.45),(207,0.8,0.2,0,0.8,0.2,1731,1199,657,0.55,0.38,0.45),(208,0.8,0.2,0,0.9,0.1,1731,1215,657,0.54,0.38,0.45),(209,0.8,0.2,0,1,0,1731,1316,664,0.5,0.38,0.44),(210,0.8,0.2,0.1,0,0.9,1731,1220,749,0.61,0.43,0.51),(211,0.8,0.2,0.1,0.1,0.8,1731,1196,783,0.65,0.45,0.54),(212,0.8,0.2,0.1,0.2,0.7,1731,1198,779,0.65,0.45,0.53),(213,0.8,0.2,0.1,0.3,0.6,1731,1195,769,0.64,0.44,0.53),(214,0.8,0.2,0.1,0.4,0.5,1731,1187,754,0.64,0.44,0.52),(215,0.8,0.2,0.1,0.5,0.4,1731,1189,732,0.62,0.42,0.5),(216,0.8,0.2,0.1,0.6,0.3,1731,1195,713,0.6,0.41,0.49),(217,0.8,0.2,0.1,0.7,0.2,1731,1205,700,0.58,0.4,0.48),(218,0.8,0.2,0.1,0.8,0.1,1731,1302,703,0.54,0.41,0.46),(219,0.8,0.2,0.1,0.9,0,1731,1356,710,0.52,0.41,0.46),(220,0.8,0.2,0.2,0,0.8,1731,1240,752,0.61,0.43,0.51),(221,0.8,0.2,0.2,0.1,0.7,1731,1193,776,0.65,0.45,0.53),(222,0.8,0.2,0.2,0.2,0.6,1731,1193,777,0.65,0.45,0.53),(223,0.8,0.2,0.2,0.3,0.5,1731,1191,764,0.64,0.44,0.52),(224,0.8,0.2,0.2,0.4,0.4,1731,1184,750,0.63,0.43,0.51),(225,0.8,0.2,0.2,0.5,0.3,1731,1191,734,0.62,0.42,0.5),(226,0.8,0.2,0.2,0.6,0.2,1731,1203,718,0.6,0.41,0.49),(227,0.8,0.2,0.2,0.7,0.1,1731,1285,723,0.56,0.42,0.48),(228,0.8,0.2,0.2,0.8,0,1731,1345,734,0.55,0.42,0.48),(229,0.8,0.2,0.3,0,0.7,1731,1234,745,0.6,0.43,0.5),(230,0.8,0.2,0.3,0.1,0.6,1731,1196,776,0.65,0.45,0.53),(231,0.8,0.2,0.3,0.2,0.5,1731,1188,771,0.65,0.45,0.53),(232,0.8,0.2,0.3,0.3,0.4,1731,1193,763,0.64,0.44,0.52),(233,0.8,0.2,0.3,0.4,0.3,1731,1180,748,0.63,0.43,0.51),(234,0.8,0.2,0.3,0.5,0.2,1731,1191,730,0.61,0.42,0.5),(235,0.8,0.2,0.3,0.6,0.1,1731,1284,720,0.56,0.42,0.48),(236,0.8,0.2,0.3,0.7,0,1731,1350,730,0.54,0.42,0.47),(237,0.8,0.2,0.4,0,0.6,1731,1242,744,0.6,0.43,0.5),(238,0.8,0.2,0.4,0.1,0.5,1731,1190,772,0.65,0.45,0.53),(239,0.8,0.2,0.4,0.2,0.4,1731,1191,770,0.65,0.44,0.53),(240,0.8,0.2,0.4,0.3,0.3,1731,1193,757,0.63,0.44,0.52),(241,0.8,0.2,0.4,0.4,0.2,1731,1190,746,0.63,0.43,0.51),(242,0.8,0.2,0.4,0.5,0.1,1731,1285,732,0.57,0.42,0.49),(243,0.8,0.2,0.4,0.6,0,1731,1352,727,0.54,0.42,0.47),(244,0.8,0.2,0.5,0,0.5,1731,1248,748,0.6,0.43,0.5),(245,0.8,0.2,0.5,0.1,0.4,1731,1203,791,0.66,0.46,0.54),(246,0.8,0.2,0.5,0.2,0.3,1731,1193,775,0.65,0.45,0.53),(247,0.8,0.2,0.5,0.3,0.2,1731,1195,758,0.63,0.44,0.52),(248,0.8,0.2,0.5,0.4,0.1,1731,1300,747,0.57,0.43,0.49),(249,0.8,0.2,0.5,0.5,0,1731,1412,749,0.53,0.43,0.48),(250,0.8,0.2,0.6,0,0.4,1731,1250,754,0.6,0.44,0.51),(251,0.8,0.2,0.6,0.1,0.3,1731,1197,780,0.65,0.45,0.53),(252,0.8,0.2,0.6,0.2,0.2,1731,1201,778,0.65,0.45,0.53),(253,0.8,0.2,0.6,0.3,0.1,1731,1358,766,0.56,0.44,0.5),(254,0.8,0.2,0.6,0.4,0,1731,1488,768,0.52,0.44,0.48),(255,0.8,0.2,0.7,0,0.3,1731,1260,752,0.6,0.43,0.5),(256,0.8,0.2,0.7,0.1,0.2,1731,1227,791,0.64,0.46,0.53),(257,0.8,0.2,0.7,0.2,0.1,1731,1399,792,0.57,0.46,0.51),(258,0.8,0.2,0.7,0.3,0,1731,2006,830,0.41,0.48,0.44),(259,0.8,0.2,0.8,0,0.2,1731,1374,788,0.57,0.46,0.51),(260,0.8,0.2,0.8,0.1,0.1,1731,2003,879,0.44,0.51,0.47),(261,0.8,0.2,0.8,0.2,0,1731,2399,928,0.39,0.54,0.45),(262,0.8,0.2,0.9,0,0.1,1731,2442,927,0.38,0.54,0.44),(263,0.8,0.2,0.9,0.1,0,1731,2856,978,0.34,0.56,0.43),(264,0.8,0.2,1,0,0,1731,2930,937,0.32,0.54,0.4),(265,0.9,0.1,0,0,1,1731,1285,711,0.55,0.41,0.47),(266,0.9,0.1,0,0.1,0.9,1731,1155,762,0.66,0.44,0.53),(267,0.9,0.1,0,0.2,0.8,1731,1148,775,0.68,0.45,0.54),(268,0.9,0.1,0,0.3,0.7,1731,1145,747,0.65,0.43,0.52),(269,0.9,0.1,0,0.4,0.6,1731,1149,733,0.64,0.42,0.51),(270,0.9,0.1,0,0.5,0.5,1731,1149,729,0.63,0.42,0.51),(271,0.9,0.1,0,0.6,0.4,1731,1160,726,0.63,0.42,0.5),(272,0.9,0.1,0,0.7,0.3,1731,1187,694,0.58,0.4,0.48),(273,0.9,0.1,0,0.8,0.2,1731,1178,683,0.58,0.39,0.47),(274,0.9,0.1,0,0.9,0.1,1731,1178,683,0.58,0.39,0.47),(275,0.9,0.1,0,1,0,1731,1192,666,0.56,0.38,0.46),(276,0.9,0.1,0.1,0,0.9,1731,1216,749,0.62,0.43,0.51),(277,0.9,0.1,0.1,0.1,0.8,1731,1153,809,0.7,0.47,0.56),(278,0.9,0.1,0.1,0.2,0.7,1731,1160,808,0.7,0.47,0.56),(279,0.9,0.1,0.1,0.3,0.6,1731,1160,797,0.69,0.46,0.55),(280,0.9,0.1,0.1,0.4,0.5,1731,1179,778,0.66,0.45,0.53),(281,0.9,0.1,0.1,0.5,0.4,1731,1193,772,0.65,0.45,0.53),(282,0.9,0.1,0.1,0.6,0.3,1731,1196,752,0.63,0.43,0.51),(283,0.9,0.1,0.1,0.7,0.2,1731,1202,746,0.62,0.43,0.51),(284,0.9,0.1,0.1,0.8,0.1,1731,1192,735,0.62,0.42,0.5),(285,0.9,0.1,0.1,0.9,0,1731,1191,735,0.62,0.42,0.5),(286,0.9,0.1,0.2,0,0.8,1731,1227,751,0.61,0.43,0.51),(287,0.9,0.1,0.2,0.1,0.7,1731,1159,769,0.66,0.44,0.53),(288,0.9,0.1,0.2,0.2,0.6,1731,1192,778,0.65,0.45,0.53),(289,0.9,0.1,0.2,0.3,0.5,1731,1188,772,0.65,0.45,0.53),(290,0.9,0.1,0.2,0.4,0.4,1731,1193,775,0.65,0.45,0.53),(291,0.9,0.1,0.2,0.5,0.3,1731,1199,783,0.65,0.45,0.53),(292,0.9,0.1,0.2,0.6,0.2,1731,1199,763,0.64,0.44,0.52),(293,0.9,0.1,0.2,0.7,0.1,1731,1185,751,0.63,0.43,0.52),(294,0.9,0.1,0.2,0.8,0,1731,1186,751,0.63,0.43,0.51),(295,0.9,0.1,0.3,0,0.7,1731,1238,753,0.61,0.44,0.51),(296,0.9,0.1,0.3,0.1,0.6,1731,1207,793,0.66,0.46,0.54),(297,0.9,0.1,0.3,0.2,0.5,1731,1193,781,0.65,0.45,0.53),(298,0.9,0.1,0.3,0.3,0.4,1731,1193,780,0.65,0.45,0.53),(299,0.9,0.1,0.3,0.4,0.3,1731,1190,773,0.65,0.45,0.53),(300,0.9,0.1,0.3,0.5,0.2,1731,1191,767,0.64,0.44,0.52),(301,0.9,0.1,0.3,0.6,0.1,1731,1197,757,0.63,0.44,0.52),(302,0.9,0.1,0.3,0.7,0,1731,1185,751,0.63,0.43,0.52),(303,0.9,0.1,0.4,0,0.6,1731,1252,704,0.56,0.41,0.47),(304,0.9,0.1,0.4,0.1,0.5,1731,1192,777,0.65,0.45,0.53),(305,0.9,0.1,0.4,0.2,0.4,1731,1192,772,0.65,0.45,0.53),(306,0.9,0.1,0.4,0.3,0.3,1731,1188,780,0.66,0.45,0.53),(307,0.9,0.1,0.4,0.4,0.2,1731,1187,777,0.65,0.45,0.53),(308,0.9,0.1,0.4,0.5,0.1,1731,1191,768,0.64,0.44,0.53),(309,0.9,0.1,0.4,0.6,0,1731,1190,757,0.64,0.44,0.52),(310,0.9,0.1,0.5,0,0.5,1731,1239,746,0.6,0.43,0.5),(311,0.9,0.1,0.5,0.1,0.4,1731,1167,774,0.66,0.45,0.53),(312,0.9,0.1,0.5,0.2,0.3,1731,1195,780,0.65,0.45,0.53),(313,0.9,0.1,0.5,0.3,0.2,1731,1192,780,0.65,0.45,0.53),(314,0.9,0.1,0.5,0.4,0.1,1731,1190,771,0.65,0.45,0.53),(315,0.9,0.1,0.5,0.5,0,1731,1200,766,0.64,0.44,0.52),(316,0.9,0.1,0.6,0,0.4,1731,1240,749,0.6,0.43,0.5),(317,0.9,0.1,0.6,0.1,0.3,1731,1187,780,0.66,0.45,0.53),(318,0.9,0.1,0.6,0.2,0.2,1731,1196,779,0.65,0.45,0.53),(319,0.9,0.1,0.6,0.3,0.1,1731,1193,774,0.65,0.45,0.53),(320,0.9,0.1,0.6,0.4,0,1731,1193,777,0.65,0.45,0.53),(321,0.9,0.1,0.7,0,0.3,1731,1240,752,0.61,0.43,0.51),(322,0.9,0.1,0.7,0.1,0.2,1731,1209,797,0.66,0.46,0.54),(323,0.9,0.1,0.7,0.2,0.1,1731,1193,781,0.65,0.45,0.53),(324,0.9,0.1,0.7,0.3,0,1731,1189,773,0.65,0.45,0.53),(325,0.9,0.1,0.8,0,0.2,1731,1243,751,0.6,0.43,0.51),(326,0.9,0.1,0.8,0.1,0.1,1731,1216,802,0.66,0.46,0.54),(327,0.9,0.1,0.8,0.2,0,1731,1199,783,0.65,0.45,0.53),(328,0.9,0.1,0.9,0,0.1,1731,1257,748,0.6,0.43,0.5),(329,0.9,0.1,0.9,0.1,0,1731,1170,770,0.66,0.44,0.53),(330,0.9,0.1,1,0,0,1731,1242,749,0.6,0.43,0.5),(331,1,0,0,0,1,1731,1285,702,0.55,0.41,0.47),(332,1,0,0,0.1,0.9,1731,1285,662,0.52,0.38,0.44),(333,1,0,0,0.2,0.8,1731,1285,662,0.52,0.38,0.44),(334,1,0,0,0.3,0.7,1731,1285,662,0.52,0.38,0.44),(335,1,0,0,0.4,0.6,1731,1285,662,0.52,0.38,0.44),(336,1,0,0,0.5,0.5,1731,1285,662,0.52,0.38,0.44),(337,1,0,0,0.6,0.4,1731,1285,662,0.52,0.38,0.44),(338,1,0,0,0.7,0.3,1731,1285,662,0.52,0.38,0.44),(339,1,0,0,0.8,0.2,1731,1285,662,0.52,0.38,0.44),(340,1,0,0,0.9,0.1,1731,1285,662,0.52,0.38,0.44),(341,1,0,0,1,0,1731,1285,662,0.52,0.38,0.44),(342,1,0,0.1,0,0.9,1731,1285,662,0.52,0.38,0.44),(343,1,0,0.1,0.1,0.8,1731,1285,662,0.52,0.38,0.44),(344,1,0,0.1,0.2,0.7,1731,1285,662,0.52,0.38,0.44),(345,1,0,0.1,0.3,0.6,1731,1285,662,0.52,0.38,0.44),(346,1,0,0.1,0.4,0.5,1731,1285,662,0.52,0.38,0.44),(347,1,0,0.1,0.5,0.4,1731,1285,662,0.52,0.38,0.44),(348,1,0,0.1,0.6,0.3,1731,1285,662,0.52,0.38,0.44),(349,1,0,0.1,0.7,0.2,1731,1285,662,0.52,0.38,0.44),(350,1,0,0.1,0.8,0.1,1731,1285,662,0.52,0.38,0.44),(351,1,0,0.1,0.9,0,1731,1285,662,0.52,0.38,0.44),(352,1,0,0.2,0,0.8,1731,1285,662,0.52,0.38,0.44),(353,1,0,0.2,0.1,0.7,1731,1285,662,0.52,0.38,0.44),(354,1,0,0.2,0.2,0.6,1731,1285,662,0.52,0.38,0.44),(355,1,0,0.2,0.3,0.5,1731,1285,662,0.52,0.38,0.44),(356,1,0,0.2,0.4,0.4,1731,1285,662,0.52,0.38,0.44),(357,1,0,0.2,0.5,0.3,1731,1285,662,0.52,0.38,0.44),(358,1,0,0.2,0.6,0.2,1731,1285,662,0.52,0.38,0.44),(359,1,0,0.2,0.7,0.1,1731,1285,662,0.52,0.38,0.44),(360,1,0,0.2,0.8,0,1731,1285,662,0.52,0.38,0.44),(361,1,0,0.3,0,0.7,1731,1285,662,0.52,0.38,0.44),(362,1,0,0.3,0.1,0.6,1731,1285,662,0.52,0.38,0.44),(363,1,0,0.3,0.2,0.5,1731,1285,662,0.52,0.38,0.44),(364,1,0,0.3,0.3,0.4,1731,1285,662,0.52,0.38,0.44),(365,1,0,0.3,0.4,0.3,1731,1285,662,0.52,0.38,0.44),(366,1,0,0.3,0.5,0.2,1731,1285,662,0.52,0.38,0.44),(367,1,0,0.3,0.6,0.1,1731,1285,662,0.52,0.38,0.44),(368,1,0,0.3,0.7,0,1731,1285,662,0.52,0.38,0.44),(369,1,0,0.4,0,0.6,1731,1285,662,0.52,0.38,0.44),(370,1,0,0.4,0.1,0.5,1731,1285,662,0.52,0.38,0.44),(371,1,0,0.4,0.2,0.4,1731,1285,662,0.52,0.38,0.44),(372,1,0,0.4,0.3,0.3,1731,1285,662,0.52,0.38,0.44),(373,1,0,0.4,0.4,0.2,1731,1285,662,0.52,0.38,0.44),(374,1,0,0.4,0.5,0.1,1731,1285,662,0.52,0.38,0.44),(375,1,0,0.4,0.6,0,1731,1285,662,0.52,0.38,0.44),(376,1,0,0.5,0,0.5,1731,1285,662,0.52,0.38,0.44),(377,1,0,0.5,0.1,0.4,1731,1285,662,0.52,0.38,0.44),(378,1,0,0.5,0.2,0.3,1731,1285,662,0.52,0.38,0.44),(379,1,0,0.5,0.3,0.2,1731,1285,662,0.52,0.38,0.44),(380,1,0,0.5,0.4,0.1,1731,1285,662,0.52,0.38,0.44),(381,1,0,0.5,0.5,0,1731,1285,662,0.52,0.38,0.44),(382,1,0,0.6,0,0.4,1731,1285,662,0.52,0.38,0.44),(383,1,0,0.6,0.1,0.3,1731,1285,662,0.52,0.38,0.44),(384,1,0,0.6,0.2,0.2,1731,1285,662,0.52,0.38,0.44),(385,1,0,0.6,0.3,0.1,1731,1285,662,0.52,0.38,0.44),(386,1,0,0.6,0.4,0,1731,1285,662,0.52,0.38,0.44),(387,1,0,0.7,0,0.3,1731,1285,662,0.52,0.38,0.44),(388,1,0,0.7,0.1,0.2,1731,1285,662,0.52,0.38,0.44),(389,1,0,0.7,0.2,0.1,1731,1285,662,0.52,0.38,0.44),(390,1,0,0.7,0.3,0,1731,1285,662,0.52,0.38,0.44),(391,1,0,0.8,0,0.2,1731,1285,662,0.52,0.38,0.44),(392,1,0,0.8,0.1,0.1,1731,1285,662,0.52,0.38,0.44),(393,1,0,0.8,0.2,0,1731,1285,662,0.52,0.38,0.44),(394,1,0,0.9,0,0.1,1731,1285,662,0.52,0.38,0.44),(395,1,0,0.9,0.1,0,1731,1285,662,0.52,0.38,0.44),(396,1,0,1,0,0,1731,1285,662,0.52,0.38,0.44);
/*!40000 ALTER TABLE `thdec` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-04 12:46:20