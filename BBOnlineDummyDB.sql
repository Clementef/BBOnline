-- MySQL dump 10.13  Distrib 5.7.21, for Win32 (AMD64)
--
-- Host: localhost    Database: BBOnline
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `bucktransfers`
--

DROP TABLE IF EXISTS `bucktransfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bucktransfers` (
  `giverID` int(11) DEFAULT NULL,
  `getterID` int(11) DEFAULT NULL,
  KEY `giverID` (`giverID`),
  KEY `getterID` (`getterID`),
  CONSTRAINT `bucktransfers_ibfk_1` FOREIGN KEY (`giverID`) REFERENCES `users` (`id`),
  CONSTRAINT `bucktransfers_ibfk_2` FOREIGN KEY (`getterID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bucktransfers`
--

LOCK TABLES `bucktransfers` WRITE;
/*!40000 ALTER TABLE `bucktransfers` DISABLE KEYS */;
INSERT INTO `bucktransfers` VALUES (1,2),(1,2),(1,2),(1,2),(1,2),(2,1);
/*!40000 ALTER TABLE `bucktransfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `bucks` int(3) DEFAULT '0',
  `bucksToGive` int(2) DEFAULT '10',
  `admin` tinyint(1) DEFAULT '0',
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Clemente Ferrer','clementef2000@gmail.com','ClementeFerrer','$5$rounds=535000$ZVyW8vfneV3M0Eps$R9rEkjMZpZDxvkUg.b7DSrHMdY9hcHKdSEgIB78a976',16,5,0,'2018-05-02 20:42:03'),(2,'Caroline Faucette','caroline@gmail.com','CarolineFaucette','$5$rounds=535000$KkrQo8OHWi0Ga/Vc$G0edx/7N0pPxrht57T/Vtl/GwNZgO6fsVo3cM/ThIY4',7,4,0,'2018-05-02 20:42:38'),(3,'Jackton','jackton.levy@ousd.us','BRIGGS','$5$rounds=535000$gDmpC2ZSuRYNVIbC$r.JS.5UbZQOLU1tjESaDj5kncY1NgFZhls3DonjtB2D',13,0,0,'2018-05-02 20:58:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-22 15:31:18
