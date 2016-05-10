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
) ENGINE=InnoDB AUTO_INCREMENT=2031 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extractedpattern`
--

LOCK TABLES `extractedpattern` WRITE;
/*!40000 ALTER TABLE `extractedpattern` DISABLE KEYS */;
INSERT INTO `extractedpattern` VALUES (1848,'s:check-s:save-s:display',0.162),(1849,'s:display-u:insert-u:request-s:search-s:display-u:request-s:display-u:modify-u:request-s:modify-s:display',0.813),(1850,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:insert-u:request-s:display',0.797),(1851,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:insert-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.849),(1852,'s:display-u:choose-u:request-s:search-s:display-u:request',0.189),(1853,'s:ScenarioStart-u:request-s:display-u:request-s:display-u:insert-u:request',0.375),(1854,'s:search-s:display-u:insert-u:request-s:check',0.114),(1855,'s:ScenarioStart-u:request-s:display-u:request-s:display-u:modify-u:request-s:modify-s:display',0.7),(1856,'u:request-s:search-s:display-u:request-s:display-u:insert-u:request',0.373),(1857,'u:request-s:search-s:display-u:choose-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.818),(1858,'s:display-u:request-s:search-s:display',0.163),(1859,'s:display-u:delete-u:request-s:check',0.042),(1860,'u:request-s:search-s:display-u:request-s:search-s:display-u:request',0.425),(1861,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:display-u:modify-u:request-s:modify-s:display',0.778),(1862,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:insert-u:request-s:display-u:modify-u:request-s:display-u:confirm-s:modify-s:display',0.839),(1863,'u:request-s:search-s:display-u:modify',0.065),(1864,'s:ScenarioStart-u:request-s:display-u:request-s:display-u:insert-u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.843),(1865,'s:display-u:insert-u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.838),(1866,'s:ScenarioStart-u:request-s:display-u:choose-u:request',0.099),(1867,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:delete-u:request-s:check',0.785),(1868,'u:request-s:search-s:display-u:request-s:search-s:display-u:request-s:display',0.562),(1869,'u:request-s:search-s:display-u:request-s:search-s:display',0.304),(1870,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:request-s:display',0.716),(1871,'s:ScenarioStart-u:request-s:display',0.16),(1872,'s:ScenarioStart-u:request-s:search-s:display-u:request',0.21),(1873,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:choose-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.842),(1874,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:display-u:insert-u:request',0.57),(1875,'u:request-s:display-u:insert',0.163),(1876,'s:display-u:confirm-s:delete-s:display',0.036),(1877,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display-u:choose-u:request-s:display-u:choose-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.836),(1878,'s:display-u:modify-u:request-s:modify-s:display',0.187),(1879,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display-u:request-s:search-s:display-u:request-s:search-s:display',0.836),(1880,'s:display-u:insert-u:request-s:search',0.178),(1881,'s:ScenarioStart-u:request-s:search-s:display',0.176),(1882,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:search-s:display-u:delete-u:request-s:delete-s:display',0.833),(1883,'s:display-u:request-s:display-u:insert-u:request-s:search',0.207),(1884,'s:display-u:insert-u:request-s:display-u:confirm',0.109),(1885,'u:request-s:display-u:request-s:display',0.061),(1886,'u:request-s:display-u:modify-u:request',0.155),(1887,'u:request-s:search-s:display-u:choose-u:request-s:search-s:display',0.363),(1888,'u:request-s:search-s:display-u:insert-u:request',0.119),(1889,'s:display-u:insert-u:request-s:display-u:insert-u:request',0.216),(1890,'u:request-s:search-s:display',0.155),(1891,'s:display-u:choose-u:request-s:search-s:display-u:request-s:display-u:insert-u:request',0.705),(1892,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display',0.464),(1893,'s:display-u:request-s:display-u:modify-u:request',0.094),(1894,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:modify',0.571),(1895,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:insert-u:request-s:check-s:save-s:display',0.841),(1896,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:display',0.215),(1897,'s:display-u:choose-u:request-s:display-u:insert',0.1),(1898,'u:request-s:display-u:request-s:display-u:insert-u:request',0.207),(1899,'u:request-s:search-s:display-u:insert-u:request-s:check',0.209),(1900,'u:request-s:search-s:display-u:request-s:display',0.205),(1901,'s:ScenarioStart-u:request-s:search',0.161),(1902,'s:display-u:insert-u:request',0.164),(1903,'u:request-s:display-u:insert-u:request-s:search-s:display-u:request-s:display',0.568),(1904,'s:ScenarioStart-u:request-s:display-u:delete-u:request-s:delete-s:display',0.355),(1905,'s:ScenarioStart-u:request-s:display-u:choose-u:request-s:search-s:display-u:request',0.557),(1906,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:request-s:search-s:display',0.792),(1907,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:choose-u:request',0.71),(1908,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:display-u:confirm-s:save-s:display',0.708),(1909,'u:request-s:search-s:display-u:request-s:display-u:modify-u:request-s:modify-s:display',0.698),(1910,'u:request-s:display-u:delete-u:request-s:delete-s:display',0.239),(1911,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.674),(1912,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display-u:choose-u:request-s:display',0.782),(1913,'s:ScenarioStart-u:request-s:display-u:request-s:display-u:modify-u:request',0.363),(1914,'u:request-s:display-u:insert-u:request-s:search',0.218),(1915,'s:ScenarioStart-u:request-s:display-u:request-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.834),(1916,'s:ScenarioStart-u:request-s:display-u:modify-u:request',0.204),(1917,'s:ScenarioStart-u:request-s:display-u:choose-u:request-s:search-s:display-u:modify-u:request-s:modify-s:display',0.807),(1918,'u:request-s:display-u:delete-u:request',0.139),(1919,'s:display-u:request-s:display-u:delete-u:request',0.089),(1920,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:modify-u:request-s:display-u:confirm-s:modify-s:display',0.832),(1921,'s:ScenarioStart-u:request-s:display-u:choose-u:request-s:search-s:display-u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.838),(1922,'s:ScenarioStart-u:request-s:display-u:insert',0.181),(1923,'s:ScenarioStart-u:request-s:display-u:request-s:display',0.109),(1924,'s:save-s:display-u:insert-u:request',0.071),(1925,'s:ScenarioStart-u:request-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.791),(1926,'u:request-s:search-s:display-u:modify-u:request',0.102),(1927,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display-u:request-s:display-u:modify-u:request-s:modify-s:display',0.829),(1928,'s:display-u:request-s:display',0.14),(1929,'s:display-u:modify-u:request',0.13),(1930,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display-u:request-s:display',0.71),(1931,'u:request-s:display-u:insert-u:request-s:check-s:save',0.316),(1932,'s:display-u:confirm-s:modify-s:display',0.044),(1933,'u:request-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.713),(1934,'u:request-s:search-s:display-u:insert-u:request-s:check-s:save-s:display',0.572),(1935,'u:request-s:display-u:choose-u:request',0.047),(1936,'s:ScenarioStart-u:request-s:search-s:display-u:insert-u:request',0.216),(1937,'u:request-s:search-s:display-u:insert-u:request-s:search-s:display',0.378),(1938,'s:display-u:confirm-s:save',0.021),(1939,'s:display-u:choose-u:request',0.026),(1940,'u:request-s:search-s:display-u:request',0.163),(1941,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:display',0.206),(1942,'u:request-s:display-u:insert-u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.841),(1943,'u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:search-s:display',0.714),(1944,'s:ScenarioStart-u:request-s:display-u:modify-u:request-s:modify-s:display',0.458),(1945,'u:request-s:delete-s:display',0.116),(1946,'s:display-u:request-s:display-u:insert-u:request-s:search-s:display',0.373),(1947,'s:save-s:display-u:choose',0.028),(1948,'s:search-s:display-u:insert-u:request-s:search-s:display',0.213),(1949,'u:request-s:search-s:display-u:choose-u:request',0.096),(1950,'s:ScenarioStart-u:request-s:display-u:modify-u:request-s:check',0.198),(1951,'s:display-u:choose-u:request-s:display',0.047),(1952,'u:request-s:check-s:save',0.162),(1953,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:request',0.57),(1954,'s:ScenarioStart-u:request-s:display-u:choose-u:request-s:search-s:display-u:choose-u:request-s:search-s:display-u:insert-u:request-s:display-u:confirm',0.834),(1955,'s:display-u:insert-u:request-s:check-s:save',0.223),(1956,'u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.79),(1957,'s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.568),(1958,'u:request-s:search-s:display-u:request-s:search-s:display-u:request-s:search-s:display',0.709),(1959,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display-u:choose-u:request-s:display-u:insert',0.817),(1960,'s:display-u:delete-u:request',0.119),(1961,'u:request-s:display-u:insert-u:request-s:search-s:display-u:delete-u:request',0.562),(1962,'s:display-u:request-s:display-u:insert-u:request',0.118),(1963,'u:request-s:search-s:display-u:choose-u:request-s:display-u:insert',0.366),(1964,'s:display-u:request-s:display-u:modify-u:request-s:modify-s:display',0.352),(1965,'u:request-s:display-u:confirm',0.036),(1966,'s:display-u:insert-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.72),(1967,'s:ScenarioStart-u:request-s:display-u:choose-u:request-s:search-s:display',0.365),(1968,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.824),(1969,'u:request-s:display-u:insert-u:request-s:check',0.213),(1970,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display-u:request-s:display-u:delete-u:request-s:delete-s:display',0.825),(1971,'s:display-u:choose-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.708),(1972,'s:ScenarioStart-u:request-s:check',0.051),(1973,'u:request-s:search-s:display-u:choose-u:request-s:display',0.194),(1974,'s:search-s:display-u:insert-u:request-s:check-s:save-s:display',0.377),(1975,'u:request-s:search-s:display-u:modify-u:request-s:modify-s:display',0.357),(1976,'s:save-s:display-u:choose-u:request-s:check-s:save-s:display',0.359),(1977,'s:display-u:modify-u:request-s:display-u:confirm-s:modify-s:display',0.352),(1978,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:check-s:save',0.482),(1979,'s:ScenarioStart-u:request-s:search-s:display-u:insert-u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.846),(1980,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.845),(1981,'s:display-u:insert-u:request-s:check-s:save-s:display',0.312),(1982,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:modify-u:request-s:modify-s:display',0.817),(1983,'s:ScenarioStart-u:request-s:search-s:display-u:choose-u:request-s:search-s:display-u:request-s:display-u:insert-u:request',0.831),(1984,'s:ScenarioStart-u:request-s:display-u:insert-u:request',0.221),(1985,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:insert-u:request-s:check',0.795),(1986,'s:ScenarioStart-u:request-s:display-u:request-s:display-u:modify-u:request-s:check',0.558),(1987,'u:request-s:display-u:choose',0.037),(1988,'s:ScenarioStart-u:request-s:search-s:display-u:insert-u:request-s:check-s:save-s:display',0.719),(1989,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.829),(1990,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display-u:request',0.564),(1991,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:modify-u:request',0.713),(1992,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display',0.48),(1993,'u:request-s:display-u:insert-u:request-s:search-s:display',0.313),(1994,'s:display-u:insert-u:request-s:search-s:display-u:request-s:display',0.373),(1995,'s:ScenarioStart-u:request-s:display-u:choose-u:request-s:display-u:modify-u:request-s:modify-s:display',0.772),(1996,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display-u:choose-u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.839),(1997,'u:request-s:search-s:display-u:insert-u:request-s:display',0.213),(1998,'s:display-u:choose-u:request-s:check-s:save-s:display',0.194),(1999,'s:search-s:display-u:insert-u:request',0.078),(2000,'u:request-s:display-u:insert-u:request-s:check-s:save-s:display',0.477),(2001,'s:ScenarioStart-u:request-s:search-s:display-u:request-s:search-s:display-u:request-s:search-s:display',0.787),(2002,'s:ScenarioStart-u:request-s:display-u:choose',0.064),(2003,'s:display-u:insert-u:request-s:search-s:display',0.219),(2004,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:check',0.311),(2005,'s:display-u:insert-u:request-s:check',0.172),(2006,'u:request-s:display-u:modify-u:request-s:check',0.096),(2007,'u:request-s:display-u:insert-u:request-s:search-s:display-u:request',0.373),(2008,'s:ScenarioStart-u:request-s:display-u:request-s:search-s:display',0.206),(2009,'s:ScenarioStart-u:request-s:display-u:request-s:display-u:delete-u:request-s:check',0.554),(2010,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:choose-u:request-s:check-s:save-s:display-u:choose',0.835),(2011,'u:request-s:display-u:modify-u:request-s:modify-s:display',0.287),(2012,'s:display-u:insert-u:request-s:search-s:display-u:request',0.21),(2013,'u:request-s:display-u:insert-u:request',0.177),(2014,'s:display-u:confirm-s:save-s:display',0.043),(2015,'u:request-s:display-u:request',0.04),(2016,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:check-s:save-s:display-u:confirm-s:save',0.787),(2017,'s:display-u:insert-u:request-s:display',0.077),(2018,'s:ScenarioStart-u:request-s:display-u:request',0.066),(2019,'s:display-u:delete-u:request-s:delete-s:display',0.169),(2020,'u:request-s:check-s:save-s:display',0.17),(2021,'s:ScenarioStart-u:request-s:display-u:modify-u:request-s:delete-s:display',0.356),(2022,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:request-s:display-u:modify-u:request-s:modify-s:display',0.832),(2023,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:insert-u:request',0.722),(2024,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:insert-u:request-s:search-s:display',0.829),(2025,'s:ScenarioStart-u:request-s:display-u:choose-u:request-s:search-s:display-u:request-s:display-u:insert-u:request-s:search-s:display',0.835),(2026,'s:display-u:choose-u:request-s:search-s:display',0.096),(2027,'s:ScenarioStart-u:request-s:display-u:request-s:display-u:insert-u:request-s:search',0.57),(2028,'s:display-u:insert-u:request-s:display-u:insert-u:request-s:search-s:display',0.575),(2029,'u:request-s:display-u:choose-u:request-s:display',0.095),(2030,'s:ScenarioStart-u:request-s:display-u:insert-u:request-s:search-s:display-u:request-s:search-s:display-u:request',0.822);
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

-- Dump completed on 2016-05-10 17:38:27
