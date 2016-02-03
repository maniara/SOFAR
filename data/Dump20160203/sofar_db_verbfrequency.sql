-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: sofar_db
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
INSERT INTO `verbfrequency` VALUES (1748,'insert',1,0.001783,'u',561),(1749,'read',2,0.003165,'s',632),(1750,'prompt',4,0.006329,'s',632),(1751,'enter',13,0.023173,'u',561),(1752,'check',15,0.023734,'s',632),(1753,'display',311,0.492089,'s',632),(1754,'select',105,0.187166,'u',561),(1755,'perform',5,0.007911,'s',632),(1756,'print',10,0.015823,'s',632),(1757,'eject',3,0.004747,'s',632),(1758,'authorize',1,0.001582,'s',632),(1759,'dispense',1,0.001582,'s',632),(1760,'browse',3,0.005348,'u',561),(1761,'provide',10,0.017825,'u',561),(1762,'retrieve',68,0.107595,'s',632),(1763,'create',9,0.014241,'s',632),(1764,'confirm',1,0.001582,'s',632),(1765,'prepare',2,0.003565,'u',561),(1766,'update',5,0.007911,'s',632),(1767,'charge',1,0.001582,'s',632),(1768,'send',8,0.012658,'s',632),(1769,'request',280,0.499109,'u',561),(1770,'determine',1,0.001582,'s',632),(1771,'request',21,0.033228,'s',632),(1772,'validate',3,0.004747,'s',632),(1773,'generate',2,0.003165,'s',632),(1774,'add',4,0.006329,'s',632),(1775,'provide',25,0.039557,'s',632),(1776,'change',2,0.003565,'u',561),(1777,'save',33,0.052215,'s',632),(1778,'assign',4,0.006329,'s',632),(1779,'retain',1,0.001582,'s',632),(1780,'make',3,0.004747,'s',632),(1781,'verify',8,0.012658,'s',632),(1782,'verify',2,0.003565,'u',561),(1783,'mark',1,0.001582,'s',632),(1784,'remove',10,0.015823,'s',632),(1785,'calculate',1,0.001582,'s',632),(1786,'confirm',4,0.00713,'u',561),(1787,'input',68,0.121212,'u',561),(1788,'modify',29,0.051693,'u',561),(1789,'modify',24,0.037975,'s',632),(1790,'cancle',1,0.001783,'u',561),(1791,'push',2,0.003565,'u',561),(1792,'notify',2,0.003165,'s',632),(1793,'send',1,0.001783,'u',561),(1794,'show',2,0.003165,'s',632),(1795,'finish',3,0.004747,'s',632),(1796,'delete',6,0.009494,'s',632),(1797,'finish',1,0.001783,'u',561),(1798,'regist',1,0.001783,'u',561),(1799,'start',3,0.005348,'u',561),(1800,'record',1,0.001582,'s',632),(1801,'present',11,0.017405,'s',632),(1802,'pay',1,0.001783,'u',561),(1803,'handle',1,0.001582,'s',632),(1804,'log',1,0.001582,'s',632),(1805,'leave',1,0.001783,'u',561),(1806,'access',1,0.001783,'u',561),(1807,'search',2,0.003565,'u',561),(1808,'process',1,0.001582,'s',632),(1809,'choose',8,0.01426,'u',561),(1810,'complete',2,0.003565,'u',561),(1811,'submit',3,0.005348,'u',561),(1812,'review',6,0.010695,'u',561),(1813,'engineer',1,0.001783,'u',561),(1814,'alert',1,0.001582,'s',632),(1815,'set',2,0.003165,'s',632),(1816,'set',1,0.001783,'u',561),(1817,'exit',1,0.001783,'u',561),(1818,'ask',1,0.001582,'s',632),(1819,'exit',1,0.001582,'s',632),(1820,'open',2,0.003165,'s',632),(1821,'close',1,0.001582,'s',632),(1822,'report',1,0.001582,'s',632),(1823,'initiate',1,0.001783,'u',561),(1824,'recommend',1,0.001582,'s',632),(1825,'get',1,0.001582,'s',632),(1826,'give',1,0.001582,'s',632),(1827,'return',1,0.001582,'s',632),(1828,'remove',1,0.001783,'u',561),(1829,'load',3,0.004747,'s',632),(1830,'decide',2,0.003565,'u',561),(1831,'check',1,0.001783,'u',561),(1832,'download',2,0.003165,'s',632),(1833,'deploy',1,0.001582,'s',632),(1834,'requst',1,0.001783,'u',561);
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

-- Dump completed on 2016-02-03 15:46:28
