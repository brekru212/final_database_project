CREATE DATABASE  IF NOT EXISTS `JimCramerStocks` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `JimCramerStocks`;
-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: JimCramerStocks
-- ------------------------------------------------------
-- Server version	5.7.10

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
-- Table structure for table `PowerLunch_tweets`
--

DROP TABLE IF EXISTS `PowerLunch_tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PowerLunch_tweets` (
  `DATES` varchar(45) NOT NULL,
  `TICKER` varchar(45) NOT NULL,
  `PRICE` float DEFAULT NULL,
  `SOURCE` varchar(45) NOT NULL,
  PRIMARY KEY (`DATES`,`TICKER`,`SOURCE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PowerLunch_tweets`
--

LOCK TABLES `PowerLunch_tweets` WRITE;
/*!40000 ALTER TABLE `PowerLunch_tweets` DISABLE KEYS */;
INSERT INTO `PowerLunch_tweets` VALUES ('2014-09-04 17:26:40','$MSFT',45.26,'PowerLunch_tweets'),('2014-09-05 14:36:13','$TSLA',277.39,'PowerLunch_tweets'),('2014-09-05 14:42:05','$BSC',0.295,'PowerLunch_tweets'),('2014-09-05 17:10:40','$TSLA',277.39,'PowerLunch_tweets'),('2014-09-09 15:29:50','$AAPL',97.99,'PowerLunch_tweets'),('2014-09-09 17:27:01','$AAPL',97.99,'PowerLunch_tweets'),('2014-09-10 16:07:58','$AAPL',101,'PowerLunch_tweets'),('2014-09-10 16:14:46','$MSFT',46.84,'PowerLunch_tweets'),('2014-09-11 20:04:13','$AAPL',101.43,'PowerLunch_tweets'),('2014-09-17 12:23:24','$RWLK',33.7,'PowerLunch_tweets'),('2014-09-17 14:45:29','$RWLK',33.7,'PowerLunch_tweets'),('2014-09-17 17:23:37','$RWLK',33.7,'PowerLunch_tweets'),('2014-09-17 17:25:19','$RWLK',33.7,'PowerLunch_tweets'),('2014-09-19 14:45:38','$BABA',93.89,'PowerLunch_tweets'),('2014-09-19 15:28:59','$BABA',93.89,'PowerLunch_tweets'),('2014-09-26 17:02:15','$JNS',15.89,'PowerLunch_tweets'),('2014-09-26 23:35:29','$GPRO',82.1,'PowerLunch_tweets'),('2014-09-29 14:04:58','$GPRO',90.94,'PowerLunch_tweets'),('2014-09-29 14:26:58','$GPRO',90.94,'PowerLunch_tweets'),('2014-09-29 14:59:55','$GPRO',90.94,'PowerLunch_tweets'),('2014-09-29 17:02:34','$GPRO',90.94,'PowerLunch_tweets'),('2014-09-29 17:03:06','$GPRO',90.94,'PowerLunch_tweets'),('2014-09-29 17:59:33','$TLT',116.93,'PowerLunch_tweets'),('2014-09-30 17:03:26','$ORCL',38.28,'PowerLunch_tweets'),('2014-10-01 15:16:37','$WYNN',182.3,'PowerLunch_tweets'),('2014-10-02 16:41:04','$GPRO',85.46,'PowerLunch_tweets'),('2014-10-02 17:10:40','$AA',15.36,'PowerLunch_tweets'),('2014-10-07 17:06:31','$GSK',45.25,'PowerLunch_tweets'),('2014-10-10 17:06:58','$WMT',78.29,'PowerLunch_tweets'),('2014-10-10 19:08:04','$AAPL',100.73,'PowerLunch_tweets'),('2014-10-14 17:55:32','$QQQ',92.97,'PowerLunch_tweets'),('2014-10-16 14:11:51','$AAPL',96.26,'PowerLunch_tweets'),('2014-10-20 17:27:07','$MSFT',44.08,'PowerLunch_tweets'),('2014-10-21 16:55:04','$HOG',62.65,'PowerLunch_tweets'),('2014-10-23 17:03:54','$CSX',34.82,'PowerLunch_tweets'),('2014-10-28 13:35:10','$WHR',168.06,'PowerLunch_tweets'),('2014-10-28 13:40:26','$IDTI',16.63,'PowerLunch_tweets'),('2014-10-29 13:35:55','$BBRY',10.51,'PowerLunch_tweets'),('2014-10-29 13:39:32','$ORB',25.27,'PowerLunch_tweets'),('2014-10-30 16:27:28','$GM',30.78,'PowerLunch_tweets'),('2014-10-30 16:31:52','$BGCP',7.99,'PowerLunch_tweets'),('2014-10-30 18:15:59','$GM',30.78,'PowerLunch_tweets'),('2014-11-10 15:52:43','$LNKD',229.25,'PowerLunch_tweets'),('2014-11-18 18:28:34','$FB',74.34,'PowerLunch_tweets'),('2014-11-20 18:24:17','$SNY',46.57,'PowerLunch_tweets'),('2014-11-25 16:49:10','$WMT',84.95,'PowerLunch_tweets'),('2014-12-02 15:48:32','$BIIB',328.27,'PowerLunch_tweets'),('2014-12-02 17:21:52','$AAPL',114.63,'PowerLunch_tweets'),('2014-12-03 16:11:24','$MSFT',48.08,'PowerLunch_tweets'),('2014-12-03 17:47:43','$MSFT',48.08,'PowerLunch_tweets'),('2014-12-08 17:44:52','$MCD',92.61,'PowerLunch_tweets'),('2014-12-08 18:48:28','$TSLA',214.36,'PowerLunch_tweets'),('2014-12-09 18:11:53','$LMT',190.62,'PowerLunch_tweets'),('2014-12-10 16:08:12','$FB',76.18,'PowerLunch_tweets'),('2014-12-11 17:56:40','$LC',23.43,'PowerLunch_tweets'),('2014-12-11 18:19:34','$QQQ',103.8,'PowerLunch_tweets'),('2014-12-12 00:24:19','$LC',24.69,'PowerLunch_tweets'),('2014-12-16 18:07:02','$SPY',197.91,'PowerLunch_tweets'),('2014-12-16 18:22:18','$GM',30.73,'PowerLunch_tweets'),('2014-12-22 17:42:07','$SNE',20.78,'PowerLunch_tweets'),('2014-12-22 17:43:35','$SNE',20.78,'PowerLunch_tweets'),('2014-12-22 18:06:14','$MS',38.57,'PowerLunch_tweets'),('2014-12-22 18:40:50','$SNE',20.78,'PowerLunch_tweets'),('2014-12-26 18:34:51','$SNE',21.27,'PowerLunch_tweets'),('2014-12-31 14:56:20','$RDUS',38.91,'PowerLunch_tweets'),('2015-01-02 17:55:39','$AAPL',109.33,'PowerLunch_tweets'),('2015-01-02 17:55:58','$AAPL',109.33,'PowerLunch_tweets'),('2015-01-02 18:04:47','$INTC',36.36,'PowerLunch_tweets'),('2015-01-05 17:46:22','$SPY',201.72,'PowerLunch_tweets'),('2015-01-08 17:19:08','$DJIA',17907.9,'PowerLunch_tweets'),('2015-01-13 17:59:47','$ARIA',6.37,'PowerLunch_tweets'),('2015-01-13 18:10:12','$CSX',33.55,'PowerLunch_tweets'),('2015-01-14 17:24:20','$PBI',23.72,'PowerLunch_tweets'),('2015-01-14 18:01:03','$FCX',18.74,'PowerLunch_tweets'),('2015-01-20 16:50:50','$MS',34.75,'PowerLunch_tweets'),('2015-01-21 17:42:50','$JPM',55.89,'PowerLunch_tweets'),('2015-01-21 18:45:11','$DO',32.16,'PowerLunch_tweets'),('2015-01-22 18:17:36','$DAX',26.32,'PowerLunch_tweets'),('2015-01-23 17:34:20','$DAX',26.23,'PowerLunch_tweets'),('2015-01-23 17:51:47','$SPY',204.97,'PowerLunch_tweets'),('2015-01-27 17:49:36','$NFLX',454.17,'PowerLunch_tweets'),('2015-01-29 18:00:18','$F',14.85,'PowerLunch_tweets'),('2015-01-30 14:21:33','$SHAK',45.9,'PowerLunch_tweets'),('2015-01-30 16:21:01','$MCD',92.44,'PowerLunch_tweets'),('2015-01-30 18:56:34','$MCD',92.44,'PowerLunch_tweets'),('2015-01-30 19:01:16','$T',32.92,'PowerLunch_tweets'),('2015-02-03 18:36:11','$TWTR',39.79,'PowerLunch_tweets'),('2015-02-05 16:48:05','$S',4.82,'PowerLunch_tweets'),('2015-02-05 19:01:51','$SNE',26.82,'PowerLunch_tweets'),('2015-02-05 19:07:11','$DD',76,'PowerLunch_tweets'),('2015-02-05 20:02:16','$CME',90.84,'PowerLunch_tweets'),('2015-02-05 20:21:02','$DNKN',46.03,'PowerLunch_tweets'),('2015-02-06 13:20:03','$TWTR',48.01,'PowerLunch_tweets'),('2015-02-06 14:49:48','$TWTR',48.01,'PowerLunch_tweets'),('2015-02-11 20:04:01','$AAPL',124.88,'PowerLunch_tweets'),('2015-02-12 13:17:41','$TIME',24.49,'PowerLunch_tweets'),('2015-02-12 13:19:11','$TSLA',202.88,'PowerLunch_tweets'),('2015-02-12 18:38:34','$GE',24.89,'PowerLunch_tweets'),('2015-02-12 19:05:32','$TSO',81.42,'PowerLunch_tweets'),('2015-02-12 19:10:56','$INOV',27,'PowerLunch_tweets'),('2015-02-12 19:38:45','$TSLA',202.88,'PowerLunch_tweets'),('2015-02-19 18:04:18','$WMT',83.52,'PowerLunch_tweets'),('2015-02-19 18:45:33','$WMT',83.52,'PowerLunch_tweets'),('2015-02-19 19:04:45','$WMT',83.52,'PowerLunch_tweets'),('2015-02-23 18:48:58','$CYBR',58.42,'PowerLunch_tweets'),('2015-02-25 18:35:44','$TGT',77.15,'PowerLunch_tweets'),('2015-02-25 18:36:32','$TGT',77.15,'PowerLunch_tweets'),('2015-02-26 16:09:19','$IBM',160.87,'PowerLunch_tweets'),('2015-02-26 18:21:19','$IBM',160.87,'PowerLunch_tweets'),('2015-02-26 18:23:51','$IBM',160.87,'PowerLunch_tweets'),('2015-02-26 19:08:33','$IBM',160.87,'PowerLunch_tweets'),('2015-02-27 13:48:47','$FDX',176.98,'PowerLunch_tweets'),('2015-03-03 15:49:13','$TGT',78,'PowerLunch_tweets'),('2015-03-05 17:19:49','$AAPL',126.41,'PowerLunch_tweets'),('2015-03-05 19:06:08','$RWLK',18.05,'PowerLunch_tweets'),('2015-03-09 15:34:19','$AA',13.7,'PowerLunch_tweets'),('2015-03-09 17:57:21','$AAPL',127.14,'PowerLunch_tweets'),('2015-03-12 12:48:43','$BA',152.04,'PowerLunch_tweets'),('2015-03-13 16:21:28','$BABA',81.86,'PowerLunch_tweets'),('2015-03-13 20:37:24','$LL',30.55,'PowerLunch_tweets'),('2015-03-16 15:13:56','$NFLX',421.97,'PowerLunch_tweets'),('2015-03-18 12:58:56','$FXE',106.64,'PowerLunch_tweets'),('2015-03-19 16:29:57','$HD',115.16,'PowerLunch_tweets'),('2015-03-20 12:06:17','$BIIB',475.98,'PowerLunch_tweets'),('2015-04-01 18:36:36','$MACK',12.06,'PowerLunch_tweets'),('2015-04-14 16:39:57','$HUM',179.55,'PowerLunch_tweets'),('2015-04-17 17:30:01','$ETSY',27.58,'PowerLunch_tweets'),('2015-04-22 15:55:21','$CMG',641.23,'PowerLunch_tweets'),('2015-04-23 18:26:57','$AMZN',389.99,'PowerLunch_tweets'),('2015-04-23 18:27:32','$AMZN',389.99,'PowerLunch_tweets'),('2015-04-23 19:10:55','$AMZN',389.99,'PowerLunch_tweets'),('2015-04-27 10:41:25','$AAPL',132.65,'PowerLunch_tweets'),('2015-04-27 12:50:36','$AMAT',19.97,'PowerLunch_tweets'),('2015-04-29 15:11:44','$BGCP',10.24,'PowerLunch_tweets'),('2015-04-30 21:03:24','$ARE',92.38,'PowerLunch_tweets'),('2015-05-01 17:15:14','$BRK',0.005,'PowerLunch_tweets'),('2015-05-01 20:36:41','$TWTR',37.84,'PowerLunch_tweets'),('2015-05-04 10:36:34','$IBM',173.97,'PowerLunch_tweets'),('2015-05-06 12:45:39','$GOOG',524.22,'PowerLunch_tweets'),('2015-05-13 12:48:42','$DAL',46.78,'PowerLunch_tweets'),('2015-05-13 12:48:49','$AAPL',126.01,'PowerLunch_tweets'),('2015-05-13 12:48:57','$DD',69.33,'PowerLunch_tweets'),('2015-05-21 18:40:53','$PII',146.38,'PowerLunch_tweets'),('2015-05-22 19:39:47','$DE',93.35,'PowerLunch_tweets'),('2015-05-22 19:41:31','$DE',93.35,'PowerLunch_tweets'),('2015-06-02 17:02:49','$FMI',35.46,'PowerLunch_tweets'),('2015-06-02 17:02:52','$LMT',190.77,'PowerLunch_tweets'),('2015-06-03 17:35:00','$TWTR',37,'PowerLunch_tweets'),('2015-06-09 16:45:32','$JCP',8.46,'PowerLunch_tweets'),('2015-06-12 13:18:31','$TWTR',35.9,'PowerLunch_tweets'),('2015-06-18 19:25:43','$SOXX',98.33,'PowerLunch_tweets'),('2015-06-22 19:08:44','$A',39.81,'PowerLunch_tweets'),('2015-06-23 19:44:11','$GPRO',56.76,'PowerLunch_tweets'),('2015-06-24 19:08:56','$YHOO',40.94,'PowerLunch_tweets'),('2015-07-15 17:41:41','$GOOG',560.22,'PowerLunch_tweets'),('2015-07-17 17:58:50','$TSLA',274.66,'PowerLunch_tweets'),('2015-07-31 23:19:03','$TMUS',40.66,'PowerLunch_tweets'),('2015-08-06 19:47:46','$AAPL',115.13,'PowerLunch_tweets'),('2015-08-10 18:49:53','$PCP',230.92,'PowerLunch_tweets'),('2015-08-12 21:11:30','$DB',32.88,'PowerLunch_tweets'),('2015-08-20 12:35:14','$GE',25.19,'PowerLunch_tweets'),('2015-08-28 19:24:51','$AMTD',33.64,'PowerLunch_tweets'),('2015-09-03 23:31:46','$TWTR',28.3,'PowerLunch_tweets'),('2015-09-03 23:32:30','$TWTR',28.3,'PowerLunch_tweets'),('2015-09-04 16:44:48','$TGT',76.42,'PowerLunch_tweets'),('2015-09-21 20:20:27','$GS',183.35,'PowerLunch_tweets'),('2015-09-29 14:32:19','$GMC',45000,'PowerLunch_tweets'),('2015-10-02 20:30:45','$IBB',315.53,'PowerLunch_tweets'),('2015-10-07 19:01:17','$GILD',100.27,'PowerLunch_tweets'),('2015-11-09 12:56:12','$BABA',81.38,'PowerLunch_tweets'),('2015-11-10 12:52:09','$BABA',81.43,'PowerLunch_tweets'),('2015-11-11 12:46:14','$BABA',79.85,'PowerLunch_tweets'),('2015-11-11 18:29:10','$YHOO',33.38,'PowerLunch_tweets'),('2015-11-11 19:26:00','$EPSYX',18.4,'PowerLunch_tweets'),('2015-11-19 21:30:27','$PFE',32.29,'PowerLunch_tweets'),('2015-11-30 18:02:00','$WMT',58.84,'PowerLunch_tweets'),('2015-11-30 21:36:42','$FIT',28.72,'PowerLunch_tweets'),('2015-12-01 20:19:38','$TERP',9.15,'PowerLunch_tweets'),('2015-12-14 20:44:28','$AGDAX',7.94,'PowerLunch_tweets'),('2015-12-15 18:59:20','$AAPL',110.49,'PowerLunch_tweets'),('2015-12-22 15:29:00','$CMG',494.61,'PowerLunch_tweets'),('2016-02-08 21:19:03','$GPS',23.99,'PowerLunch_tweets'),('2016-02-19 02:20:23','$INSY',17.15,'PowerLunch_tweets'),('2016-02-19 02:24:43','$AAPL',96.04,'PowerLunch_tweets'),('2016-02-19 02:26:13','$AAPL',96.04,'PowerLunch_tweets'),('2016-02-19 02:28:52','$AAPL',96.04,'PowerLunch_tweets'),('2016-02-22 15:14:45','$AAPL',96.88,'PowerLunch_tweets'),('2016-03-17 18:29:38','$VRX',29.69,'PowerLunch_tweets'),('2016-03-21 15:11:40','$VRX',28.98,'PowerLunch_tweets'),('2016-03-21 15:13:36','$VRX',28.98,'PowerLunch_tweets'),('2016-03-30 12:52:55','$MSFT',55.05,'PowerLunch_tweets'),('2016-03-30 17:38:42','$MSFT',55.05,'PowerLunch_tweets'),('2016-03-31 18:15:37','$MSFT',55.23,'PowerLunch_tweets'),('2016-03-31 18:16:48','$AAPL',108.99,'PowerLunch_tweets'),('2016-04-08 20:18:37','$GE',30.79,'PowerLunch_tweets'),('2016-04-15 15:46:23','$HLF',58.19,'PowerLunch_tweets'),('2016-04-15 15:51:08','$HLF',58.19,'PowerLunch_tweets');
/*!40000 ALTER TABLE `PowerLunch_tweets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 13:09:58