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
-- Table structure for table `jimcramer_tweets`
--

DROP TABLE IF EXISTS `jimcramer_tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jimcramer_tweets` (
  `DATES` varchar(45) NOT NULL,
  `TICKER` varchar(45) NOT NULL,
  `PRICE` float DEFAULT NULL,
  `SOURCE` varchar(45) NOT NULL,
  PRIMARY KEY (`DATES`,`TICKER`,`SOURCE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jimcramer_tweets`
--

LOCK TABLES `jimcramer_tweets` WRITE;
/*!40000 ALTER TABLE `jimcramer_tweets` DISABLE KEYS */;
INSERT INTO `jimcramer_tweets` VALUES ('2015-12-18 18:43:32','$FNMA',1.75,'jimcramer_tweets'),('2015-12-18 23:06:15','$FNMA',1.75,'jimcramer_tweets'),('2015-12-21 13:47:09','$CMCSA',56.46,'jimcramer_tweets'),('2015-12-21 15:07:17','$DRI',63.7,'jimcramer_tweets'),('2015-12-21 15:15:24','$CCL',53.94,'jimcramer_tweets'),('2015-12-21 16:18:17','$DIS',106.59,'jimcramer_tweets'),('2015-12-21 18:07:25','$DIS',106.59,'jimcramer_tweets'),('2015-12-21 19:54:45','$NTAP',27.6,'jimcramer_tweets'),('2015-12-21 19:57:47','$FE',31.07,'jimcramer_tweets'),('2015-12-21 20:42:00','$STZ',141.4,'jimcramer_tweets'),('2015-12-21 20:50:42','$HSIC',153.89,'jimcramer_tweets'),('2015-12-21 22:40:23','$STZ',141.4,'jimcramer_tweets'),('2015-12-21 22:44:49','$STZ',141.4,'jimcramer_tweets'),('2015-12-21 23:04:23','$WWAV',38.92,'jimcramer_tweets'),('2015-12-22 14:17:30','$AMZN',663.15,'jimcramer_tweets'),('2015-12-22 14:19:00','$CMG',494.61,'jimcramer_tweets'),('2015-12-22 14:21:35','$KO',43.29,'jimcramer_tweets'),('2015-12-22 15:09:40','$CAG',41.43,'jimcramer_tweets'),('2015-12-22 17:15:32','$MU',14.61,'jimcramer_tweets'),('2015-12-22 17:42:51','$SUNE',5.31,'jimcramer_tweets'),('2015-12-22 17:51:49','$BABA',84.84,'jimcramer_tweets'),('2015-12-22 19:17:09','$AAPL',107.23,'jimcramer_tweets'),('2015-12-22 19:21:19','$STZ',142.63,'jimcramer_tweets'),('2015-12-22 19:26:06','$TMUS',39.26,'jimcramer_tweets'),('2015-12-22 20:20:56','$PNRA',194.37,'jimcramer_tweets'),('2015-12-22 21:30:29','$CLF',1.59,'jimcramer_tweets'),('2015-12-22 22:55:32','$CELG',111.14,'jimcramer_tweets'),('2015-12-23 01:09:50','$SUNE',5.39,'jimcramer_tweets'),('2015-12-23 01:10:57','$CLLS',29.88,'jimcramer_tweets'),('2015-12-23 01:13:34','$CELG',122.07,'jimcramer_tweets'),('2015-12-23 10:24:04','$AXP',69.97,'jimcramer_tweets'),('2015-12-23 10:59:31','$NKE',128.71,'jimcramer_tweets'),('2015-12-23 17:08:09','$AAPL',108.61,'jimcramer_tweets'),('2015-12-23 17:11:01','$HAR',93.83,'jimcramer_tweets'),('2015-12-23 17:12:39','$AAPL',108.61,'jimcramer_tweets'),('2015-12-23 17:35:39','$AAPL',108.61,'jimcramer_tweets'),('2015-12-23 19:18:03','$SUNE',5.39,'jimcramer_tweets'),('2015-12-23 20:06:39','$LEN',48.82,'jimcramer_tweets'),('2015-12-23 22:11:12','$SD',0.24,'jimcramer_tweets'),('2015-12-24 00:40:38','$BIIB',302.29,'jimcramer_tweets'),('2015-12-24 03:28:46','$MCD',118.57,'jimcramer_tweets'),('2015-12-24 18:26:25','$MCD',118.57,'jimcramer_tweets'),('2016-01-04 14:13:00','$CMG',448.81,'jimcramer_tweets'),('2016-01-04 16:33:14','$NFLX',109.96,'jimcramer_tweets'),('2016-01-04 18:48:04','$LULU',55.86,'jimcramer_tweets'),('2016-01-04 18:52:48','$SBUX',58.26,'jimcramer_tweets'),('2016-01-05 00:02:05','$TST',1.49,'jimcramer_tweets'),('2016-01-05 00:05:03','$GE',30.74,'jimcramer_tweets'),('2016-01-05 01:25:59','$FSLR',72.03,'jimcramer_tweets'),('2016-01-05 12:39:02','$LLY',84.11,'jimcramer_tweets'),('2016-01-05 12:40:11','$TST',1.49,'jimcramer_tweets'),('2016-01-05 14:39:24','$AMZN',633.79,'jimcramer_tweets'),('2016-01-05 14:51:19','$FSLR',72.03,'jimcramer_tweets'),('2016-01-05 14:52:00','$F',13.72,'jimcramer_tweets'),('2016-01-05 18:42:39','$HOG',45.29,'jimcramer_tweets'),('2016-01-05 20:06:55','$GWPH',68.37,'jimcramer_tweets'),('2016-01-05 22:20:34','$PBR',4.18,'jimcramer_tweets'),('2016-01-06 01:03:30','$T',34.06,'jimcramer_tweets'),('2016-01-06 09:18:10','$FIT',22.9,'jimcramer_tweets'),('2016-01-06 09:19:25','$SONC',29.35,'jimcramer_tweets'),('2016-01-06 09:21:12','$MCD',118.4,'jimcramer_tweets'),('2016-01-06 12:07:13','$PNRA',187.79,'jimcramer_tweets'),('2016-01-06 16:13:16','$MNKD',0.73,'jimcramer_tweets'),('2016-01-06 18:52:08','$AAPL',100.7,'jimcramer_tweets'),('2016-01-06 19:33:28','$CMG',426.67,'jimcramer_tweets'),('2016-01-06 19:52:19','$CMG',426.67,'jimcramer_tweets'),('2016-01-06 23:36:52','$VIA',42.8,'jimcramer_tweets'),('2016-01-07 00:08:07','$CMG',416,'jimcramer_tweets'),('2016-01-07 10:28:55','$SPY',194.05,'jimcramer_tweets'),('2016-01-07 17:05:10','$NFLX',114.56,'jimcramer_tweets'),('2016-01-08 00:23:48','$AA',8.07,'jimcramer_tweets'),('2016-01-08 12:41:18','$CRM',73.23,'jimcramer_tweets'),('2016-01-08 15:08:15','$AAPL',96.96,'jimcramer_tweets'),('2016-01-08 15:38:45','$AAPL',96.96,'jimcramer_tweets'),('2016-01-08 18:01:40','$AAPL',96.96,'jimcramer_tweets'),('2016-01-08 20:08:12','$AAPL',96.96,'jimcramer_tweets'),('2016-01-08 20:18:27','$EMR',44.1,'jimcramer_tweets'),('2016-01-08 20:30:45','$IMAX',31.55,'jimcramer_tweets'),('2016-01-08 21:41:39','$HLF',50.37,'jimcramer_tweets'),('2016-01-08 23:57:51','$CELG',108.98,'jimcramer_tweets'),('2016-01-11 17:59:01','$CELG',103.03,'jimcramer_tweets'),('2016-01-11 20:00:30','$SBUX',57.82,'jimcramer_tweets'),('2016-01-11 20:05:47','$AA',8,'jimcramer_tweets'),('2016-01-11 20:11:12','$FCX',4.31,'jimcramer_tweets'),('2016-01-11 21:01:45','$FCX',4.31,'jimcramer_tweets'),('2016-01-11 21:13:36','$LULU',54.73,'jimcramer_tweets'),('2016-01-11 21:15:11','$LULU',54.73,'jimcramer_tweets'),('2016-01-11 21:54:02','$AA',8,'jimcramer_tweets'),('2016-01-11 22:43:03','$M',38.82,'jimcramer_tweets'),('2016-01-12 00:15:57','$MGM',21.13,'jimcramer_tweets'),('2016-01-12 00:16:08','$CSX',23.7,'jimcramer_tweets'),('2016-01-12 08:49:09','$UA',72.15,'jimcramer_tweets'),('2016-01-12 10:48:19','$LULU',56.82,'jimcramer_tweets'),('2016-01-12 12:36:00','$BTU',4.48,'jimcramer_tweets'),('2016-01-12 13:48:25','$TST',1.35,'jimcramer_tweets'),('2016-01-12 14:15:23','$AAPL',99.96,'jimcramer_tweets'),('2016-01-12 14:39:55','$HZNP',19.21,'jimcramer_tweets'),('2016-01-12 22:19:13','$GE',28.64,'jimcramer_tweets'),('2016-01-13 09:31:16','$AAPL',97.39,'jimcramer_tweets'),('2016-01-13 10:10:26','$AA',7.13,'jimcramer_tweets'),('2016-01-13 12:44:31','$CLF',1.32,'jimcramer_tweets'),('2016-01-13 12:47:36','$C',45.19,'jimcramer_tweets'),('2016-01-13 16:14:42','$AAPL',97.39,'jimcramer_tweets'),('2016-01-13 17:31:54','$SUNE',2.81,'jimcramer_tweets'),('2016-01-13 17:43:09','$GM',30.49,'jimcramer_tweets'),('2016-01-13 18:19:23','$SUNE',2.81,'jimcramer_tweets'),('2016-01-13 19:35:27','$DIS',98.48,'jimcramer_tweets'),('2016-01-13 19:46:04','$MCK',157.84,'jimcramer_tweets'),('2016-01-14 09:46:51','$MTCH',13.06,'jimcramer_tweets'),('2016-01-15 19:01:56','$AXP',62.91,'jimcramer_tweets'),('2016-01-15 19:08:11','$AEP',58.69,'jimcramer_tweets'),('2016-01-15 19:17:34','$AEP',58.69,'jimcramer_tweets'),('2016-01-15 19:20:39','$AXP',62.91,'jimcramer_tweets'),('2016-01-15 19:27:41','$LNG',32,'jimcramer_tweets'),('2016-01-15 20:31:15','$JWN',45.45,'jimcramer_tweets'),('2016-01-15 21:20:34','$GE',28.49,'jimcramer_tweets'),('2016-01-15 21:26:41','$GE',28.49,'jimcramer_tweets'),('2016-01-15 21:28:23','$DIS',93.9,'jimcramer_tweets'),('2016-01-15 23:16:41','$GOOGL',710.49,'jimcramer_tweets'),('2016-01-15 23:27:14','$GOOGL',710.49,'jimcramer_tweets'),('2016-01-19 03:44:23','$M',38.76,'jimcramer_tweets'),('2016-01-19 17:33:46','$AAPL',96.66,'jimcramer_tweets'),('2016-01-19 17:59:12','$CIT',32.22,'jimcramer_tweets'),('2016-01-19 19:19:12','$NFLX',107.89,'jimcramer_tweets'),('2016-01-19 19:45:10','$TIF',64.22,'jimcramer_tweets'),('2016-01-19 20:54:11','$MCD',117.5,'jimcramer_tweets'),('2016-01-19 21:41:56','$TMUS',37.65,'jimcramer_tweets'),('2016-01-20 14:44:50','$NFLX',107.74,'jimcramer_tweets'),('2016-01-20 16:23:14','$GS',153.75,'jimcramer_tweets'),('2016-01-20 18:03:43','$JNJ',95.75,'jimcramer_tweets'),('2016-01-20 22:03:29','$KMI',12.01,'jimcramer_tweets'),('2016-01-20 23:04:56','$XLNX',43.08,'jimcramer_tweets'),('2016-01-21 02:19:12','$CMG',461.2,'jimcramer_tweets'),('2016-01-21 08:44:51','$CMG',461.2,'jimcramer_tweets'),('2016-01-21 12:07:17','$VZ',45.87,'jimcramer_tweets'),('2016-01-21 14:26:37','$VZ',45.87,'jimcramer_tweets'),('2016-01-21 14:27:35','$VZ',45.87,'jimcramer_tweets'),('2016-01-21 14:38:10','$VZ',45.87,'jimcramer_tweets'),('2016-01-22 01:37:31','$CHK',3.51,'jimcramer_tweets'),('2016-01-22 14:12:26','$SBUX',59.17,'jimcramer_tweets'),('2016-01-22 20:59:47','$GE',28.24,'jimcramer_tweets'),('2016-01-22 21:51:18','$AVP',2.59,'jimcramer_tweets'),('2016-01-25 12:25:28','$SLB',63.3,'jimcramer_tweets'),('2016-01-25 14:51:15','$TMUS',37.89,'jimcramer_tweets'),('2016-01-25 14:55:13','$MCD',119.2,'jimcramer_tweets'),('2016-01-25 14:55:24','$MCD',119.2,'jimcramer_tweets'),('2016-01-26 09:17:38','$FDX',127.28,'jimcramer_tweets'),('2016-01-26 13:33:22','$TMUS',39.43,'jimcramer_tweets'),('2016-01-26 14:50:34','$AVP',2.78,'jimcramer_tweets'),('2016-01-26 17:14:38','$CHK',3.19,'jimcramer_tweets'),('2016-01-26 19:36:42','$AXP',55.09,'jimcramer_tweets'),('2016-01-26 20:37:19','$TST',1.32,'jimcramer_tweets'),('2016-01-26 20:39:09','$LMT',209.93,'jimcramer_tweets'),('2016-01-26 20:39:29','$CHK',3.19,'jimcramer_tweets'),('2016-01-26 20:39:50','$KMB',124.89,'jimcramer_tweets'),('2016-01-26 20:40:11','$AAPL',99.99,'jimcramer_tweets'),('2016-01-27 00:12:23','$AAPL',93.42,'jimcramer_tweets'),('2016-01-27 15:47:30','$FB',94.45,'jimcramer_tweets'),('2016-01-27 19:19:32','$TWTR',16.78,'jimcramer_tweets'),('2016-01-28 10:12:22','$AAPL',94.09,'jimcramer_tweets'),('2016-01-28 10:12:59','$AAPL',94.09,'jimcramer_tweets'),('2016-01-28 10:15:22','$FB',109.11,'jimcramer_tweets'),('2016-01-28 14:18:03','$UA',84.07,'jimcramer_tweets'),('2016-01-28 14:18:17','$UA',84.07,'jimcramer_tweets'),('2016-01-28 14:45:04','$UA',84.07,'jimcramer_tweets'),('2016-01-28 19:56:55','$AAPL',94.09,'jimcramer_tweets'),('2016-01-29 02:49:02','$PG',81.69,'jimcramer_tweets'),('2016-01-29 13:57:41','$PG',81.69,'jimcramer_tweets'),('2016-01-29 13:58:17','$AMZN',587,'jimcramer_tweets'),('2016-01-29 15:30:30','$HON',103.2,'jimcramer_tweets'),('2016-01-29 15:30:41','$MSFT',55.09,'jimcramer_tweets'),('2016-01-29 15:32:05','$CRM',68.06,'jimcramer_tweets'),('2016-01-29 16:32:53','$TST',1.31,'jimcramer_tweets'),('2016-01-29 17:50:45','$GILD',83,'jimcramer_tweets'),('2016-01-29 18:02:10','$SWK',94.34,'jimcramer_tweets'),('2016-01-29 18:05:14','$MSFT',55.09,'jimcramer_tweets'),('2016-01-29 21:05:12','$FB',112.21,'jimcramer_tweets'),('2016-01-29 21:46:44','$HAR',74.39,'jimcramer_tweets'),('2016-01-29 22:38:03','$CRM',68.06,'jimcramer_tweets'),('2016-01-29 22:48:13','$UA',85.43,'jimcramer_tweets'),('2016-01-29 22:48:55','$HAR',74.39,'jimcramer_tweets'),('2016-01-29 22:51:15','$PYPL',36.14,'jimcramer_tweets'),('2016-02-01 01:11:07','$AAPL',96.43,'jimcramer_tweets'),('2016-02-01 01:13:40','$UA',85.13,'jimcramer_tweets'),('2016-02-01 14:46:46','$TIF',64.73,'jimcramer_tweets'),('2016-02-01 15:06:09','$HLF',47.86,'jimcramer_tweets'),('2016-02-01 15:09:13','$AEM',30.07,'jimcramer_tweets'),('2016-02-01 15:23:06','$CMG',472.64,'jimcramer_tweets'),('2016-02-01 17:21:03','$LC',7.61,'jimcramer_tweets'),('2016-02-01 18:33:21','$HLF',47.86,'jimcramer_tweets'),('2016-02-01 19:16:09','$CMG',472.64,'jimcramer_tweets'),('2016-02-01 19:52:23','$GILD',84.05,'jimcramer_tweets'),('2016-02-01 20:29:44','$NFLX',94.09,'jimcramer_tweets'),('2016-02-01 21:21:27','$PFE',30.17,'jimcramer_tweets'),('2016-02-01 23:49:30','$SUNE',3.02,'jimcramer_tweets'),('2016-02-02 00:02:40','$GOOGL',780.91,'jimcramer_tweets'),('2016-02-02 08:19:42','$BP',29.02,'jimcramer_tweets'),('2016-02-02 08:23:53','$BP',29.02,'jimcramer_tweets'),('2016-02-02 14:48:34','$DOW',45.03,'jimcramer_tweets'),('2016-02-02 14:50:17','$FB',114.61,'jimcramer_tweets'),('2016-02-02 15:02:53','$FLEX',10.08,'jimcramer_tweets'),('2016-02-02 15:07:21','$SWN',8.17,'jimcramer_tweets'),('2016-02-02 17:28:38','$AMD',1.99,'jimcramer_tweets'),('2016-02-02 19:40:59','$AXON',13.66,'jimcramer_tweets'),('2016-02-02 19:49:30','$CIT',27.7,'jimcramer_tweets'),('2016-02-02 22:41:21','$ADBE',87.95,'jimcramer_tweets'),('2016-02-02 22:42:41','$PBR',2.98,'jimcramer_tweets'),('2016-02-03 00:14:12','$GOOG',726.95,'jimcramer_tweets'),('2016-02-03 15:04:21','$SWN',8.97,'jimcramer_tweets'),('2016-02-03 17:55:57','$FIT',16.04,'jimcramer_tweets'),('2016-02-03 17:56:28','$CSX',22.36,'jimcramer_tweets'),('2016-02-03 18:34:57','$SIRI',3.5,'jimcramer_tweets'),('2016-02-03 22:11:31','$CRM',65.34,'jimcramer_tweets'),('2016-02-04 01:44:44','$CRM',67.2,'jimcramer_tweets'),('2016-02-04 03:35:24','$CRM',67.2,'jimcramer_tweets'),('2016-02-04 10:59:41','$CLX',124.71,'jimcramer_tweets'),('2016-02-04 11:00:05','$ADBE',86.36,'jimcramer_tweets'),('2016-02-04 14:56:22','$FCX',5.72,'jimcramer_tweets'),('2016-02-04 18:40:13','$YUM',72.31,'jimcramer_tweets'),('2016-02-04 20:49:49','$TMUS',38.7,'jimcramer_tweets'),('2016-02-04 22:23:19','$CLX',124.71,'jimcramer_tweets'),('2016-02-05 11:13:54','$YUM',69.76,'jimcramer_tweets'),('2016-02-05 14:26:59','$HES',38.02,'jimcramer_tweets'),('2016-02-05 21:43:29','$F',11.45,'jimcramer_tweets'),('2016-02-08 13:52:16','$BAC',12.27,'jimcramer_tweets'),('2016-02-08 17:59:12','$CHK',2.04,'jimcramer_tweets'),('2016-02-08 22:48:19','$CVX',85.99,'jimcramer_tweets'),('2016-02-09 00:00:30','$LNKD',100.98,'jimcramer_tweets'),('2016-02-09 01:41:28','$GOOGL',701.02,'jimcramer_tweets'),('2016-02-09 01:43:20','$GOOGL',701.02,'jimcramer_tweets'),('2016-02-09 01:46:42','$FB',99.54,'jimcramer_tweets'),('2016-02-09 01:54:18','$NEM',24.3,'jimcramer_tweets'),('2016-02-09 01:56:34','$FCX',5,'jimcramer_tweets'),('2016-02-09 11:45:44','$PG',82.64,'jimcramer_tweets'),('2016-02-09 15:27:16','$DB',15.38,'jimcramer_tweets'),('2016-02-09 16:21:49','$SAVE',42.73,'jimcramer_tweets'),('2016-02-09 16:25:56','$DIS',92.32,'jimcramer_tweets'),('2016-02-09 19:02:17','$CHK',1.95,'jimcramer_tweets'),('2016-02-10 18:08:41','$BMS',48.52,'jimcramer_tweets'),('2016-02-11 00:22:33','$CRM',59.24,'jimcramer_tweets'),('2016-02-11 00:24:34','$DIS',90.31,'jimcramer_tweets'),('2016-02-11 13:16:55','$DIS',90.31,'jimcramer_tweets'),('2016-02-11 13:45:47','$WFM',28.93,'jimcramer_tweets'),('2016-02-11 13:46:28','$YHOO',26.76,'jimcramer_tweets'),('2016-02-11 13:48:36','$TLT',133.72,'jimcramer_tweets'),('2016-02-11 21:16:03','$TWTR',14.31,'jimcramer_tweets'),('2016-02-17 03:19:17','$PNRA',207.03,'jimcramer_tweets'),('2016-02-17 03:20:50','$GNW',1.93,'jimcramer_tweets'),('2016-02-17 09:14:23','$TMUS',36.85,'jimcramer_tweets'),('2016-02-17 12:42:25','$MCD',118.64,'jimcramer_tweets'),('2016-02-17 13:51:31','$TMUS',36.85,'jimcramer_tweets'),('2016-02-17 13:52:07','$BAC',12.56,'jimcramer_tweets'),('2016-02-17 14:13:07','$RGLS',7.49,'jimcramer_tweets'),('2016-02-17 17:06:01','$BAC',12.56,'jimcramer_tweets'),('2016-02-17 17:09:44','$TMUS',36.85,'jimcramer_tweets'),('2016-02-17 19:26:37','$VZ',50.32,'jimcramer_tweets'),('2016-02-18 09:48:06','$BTU',2.31,'jimcramer_tweets'),('2016-02-18 09:51:10','$BAC',12.24,'jimcramer_tweets'),('2016-02-18 23:48:16','$CHK',1.98,'jimcramer_tweets'),('2016-02-19 00:16:09','$SHLD',16.71,'jimcramer_tweets'),('2016-02-19 00:27:37','$DATA',42.39,'jimcramer_tweets'),('2016-02-19 00:49:29','$SWN',7.09,'jimcramer_tweets'),('2016-02-19 00:54:15','$IBM',133.08,'jimcramer_tweets'),('2016-02-19 01:56:38','$SUNE',1.43,'jimcramer_tweets'),('2016-02-19 09:00:33','$IBM',133.08,'jimcramer_tweets'),('2016-02-19 09:04:31','$IBM',133.08,'jimcramer_tweets'),('2016-02-19 14:00:08','$GE',29.02,'jimcramer_tweets'),('2016-02-19 14:09:48','$JNJ',104.16,'jimcramer_tweets'),('2016-02-19 14:14:08','$COLM',58.52,'jimcramer_tweets'),('2016-02-19 14:58:02','$BAC',12.13,'jimcramer_tweets'),('2016-02-19 14:58:42','$JACK',65.62,'jimcramer_tweets'),('2016-02-19 17:24:02','$T',36.57,'jimcramer_tweets'),('2016-02-19 19:22:33','$BAC',12.13,'jimcramer_tweets'),('2016-02-19 19:23:35','$LMT',213.62,'jimcramer_tweets'),('2016-02-19 20:13:41','$VZ',50.86,'jimcramer_tweets'),('2016-02-19 20:14:52','$FB',104.57,'jimcramer_tweets'),('2016-02-22 05:12:22','$AAPL',96.88,'jimcramer_tweets'),('2016-02-22 09:34:00','$BAC',12.54,'jimcramer_tweets'),('2016-02-22 13:44:43','$AGN',285.82,'jimcramer_tweets'),('2016-02-22 14:22:30','$AGN',285.82,'jimcramer_tweets'),('2016-02-23 01:06:04','$GE',29.22,'jimcramer_tweets'),('2016-02-23 13:39:32','$HON',103.64,'jimcramer_tweets'),('2016-02-23 14:11:24','$UTX',91.6,'jimcramer_tweets'),('2016-02-23 16:01:15','$VRX',79.27,'jimcramer_tweets'),('2016-02-23 18:51:14','$BHP',24.09,'jimcramer_tweets'),('2016-02-23 18:58:27','$UTX',91.6,'jimcramer_tweets'),('2016-02-23 19:18:39','$CMG',525.06,'jimcramer_tweets'),('2016-02-23 23:33:05','$ETSY',7.39,'jimcramer_tweets'),('2016-02-23 23:36:18','$HD',124.53,'jimcramer_tweets'),('2016-02-24 00:01:08','$TWTR',18,'jimcramer_tweets'),('2016-02-24 00:01:29','$HD',125.61,'jimcramer_tweets'),('2016-02-24 03:05:15','$HD',125.61,'jimcramer_tweets'),('2016-02-24 09:22:39','$XOM',81.52,'jimcramer_tweets'),('2016-02-25 00:10:22','$CRM',69.42,'jimcramer_tweets'),('2016-02-25 00:11:27','$CRM',69.42,'jimcramer_tweets'),('2016-02-25 00:56:48','$AAPL',96.76,'jimcramer_tweets'),('2016-02-25 09:38:20','$AGN',296.34,'jimcramer_tweets'),('2016-02-25 09:38:43','$CRM',69.42,'jimcramer_tweets'),('2016-02-25 09:42:35','$ETP',27.14,'jimcramer_tweets'),('2016-02-25 09:43:50','$CRM',69.42,'jimcramer_tweets'),('2016-02-25 13:13:54','$CRM',69.42,'jimcramer_tweets'),('2016-02-25 14:42:21','$LOW',68.7,'jimcramer_tweets'),('2016-02-25 14:42:47','$SHLD',17.52,'jimcramer_tweets'),('2016-02-25 14:43:51','$AAPL',96.76,'jimcramer_tweets'),('2016-02-25 18:20:02','$DPZ',132.9,'jimcramer_tweets'),('2016-02-25 18:21:15','$CRM',69.42,'jimcramer_tweets'),('2016-02-25 19:27:54','$DIN',96.96,'jimcramer_tweets'),('2016-02-25 20:25:41','$DPZ',132.9,'jimcramer_tweets'),('2016-02-25 20:56:57','$ADBE',86.68,'jimcramer_tweets'),('2016-02-25 21:26:18','$RH',38.49,'jimcramer_tweets'),('2016-02-25 22:12:11','$PANW',140.29,'jimcramer_tweets'),('2016-02-25 22:38:53','$KHC',74.96,'jimcramer_tweets'),('2016-02-26 08:54:29','$FB',107.92,'jimcramer_tweets'),('2016-02-26 13:53:44','$SUNE',2.26,'jimcramer_tweets'),('2016-02-26 22:40:40','$AAPL',96.91,'jimcramer_tweets'),('2016-02-26 22:45:10','$CRM',69.72,'jimcramer_tweets'),('2016-02-26 22:52:00','$TGT',78.43,'jimcramer_tweets'),('2016-02-26 22:56:47','$KR',39.45,'jimcramer_tweets'),('2016-02-26 23:46:07','$DPZ',134.39,'jimcramer_tweets'),('2016-02-29 11:36:46','$IBM',131.03,'jimcramer_tweets'),('2016-02-29 11:42:24','$IBM',131.03,'jimcramer_tweets'),('2016-02-29 11:45:09','$IBM',131.03,'jimcramer_tweets'),('2016-02-29 11:46:21','$IBM',131.03,'jimcramer_tweets'),('2016-02-29 11:47:01','$IOTS',5.53,'jimcramer_tweets'),('2016-02-29 11:47:56','$IBM',131.03,'jimcramer_tweets'),('2016-02-29 11:49:21','$IBM',131.03,'jimcramer_tweets'),('2016-02-29 12:20:51','$IBM',131.03,'jimcramer_tweets'),('2016-02-29 12:21:26','$IBM',131.03,'jimcramer_tweets'),('2016-02-29 14:49:45','$TASR',19.38,'jimcramer_tweets'),('2016-02-29 17:26:13','$IBM',131.03,'jimcramer_tweets'),('2016-02-29 20:29:17','$JPM',56.3,'jimcramer_tweets'),('2016-02-29 20:31:50','$FL',62.5,'jimcramer_tweets'),('2016-02-29 20:32:53','$IBM',131.03,'jimcramer_tweets'),('2016-02-29 22:01:20','$SUNE',1.98,'jimcramer_tweets'),('2016-02-29 22:07:30','$SUNE',1.98,'jimcramer_tweets'),('2016-02-29 22:43:17','$FB',106.92,'jimcramer_tweets'),('2016-02-29 23:00:37','$TWTR',18.12,'jimcramer_tweets'),('2016-03-01 03:16:39','$WDAY',71.74,'jimcramer_tweets'),('2016-03-01 13:52:05','$SUNE',1.5,'jimcramer_tweets'),('2016-03-01 13:54:16','$DNR',1.39,'jimcramer_tweets'),('2016-03-01 14:25:40','$WDAY',71.74,'jimcramer_tweets'),('2016-03-01 14:26:16','$F',13.09,'jimcramer_tweets'),('2016-03-01 17:50:24','$MRO',7.96,'jimcramer_tweets'),('2016-03-01 19:44:14','$WDAY',71.74,'jimcramer_tweets'),('2016-03-01 19:46:07','$WDAY',71.74,'jimcramer_tweets'),('2016-03-01 22:09:05','$VRX',65.45,'jimcramer_tweets'),('2016-03-02 14:46:42','$HON',106.49,'jimcramer_tweets'),('2016-03-02 14:48:05','$SBUX',59.56,'jimcramer_tweets'),('2016-03-02 14:49:37','$HON',106.49,'jimcramer_tweets'),('2016-03-03 02:59:10','$UTX',96.11,'jimcramer_tweets'),('2016-03-04 13:22:57','$CMG',529,'jimcramer_tweets'),('2016-03-04 14:04:49','$DD',63.18,'jimcramer_tweets'),('2016-03-04 18:11:11','$AAPL',103.01,'jimcramer_tweets'),('2016-03-04 20:35:01','$FUN',57.88,'jimcramer_tweets'),('2016-03-07 01:26:38','$TST',0.89,'jimcramer_tweets'),('2016-03-07 10:16:58','$DOW',49.76,'jimcramer_tweets'),('2016-03-07 14:40:29','$GIS',59.62,'jimcramer_tweets'),('2016-03-08 11:28:11','$DOW',48.83,'jimcramer_tweets'),('2016-03-08 11:33:18','$DPZ',134.24,'jimcramer_tweets'),('2016-03-08 11:33:57','$SHAK',37.23,'jimcramer_tweets'),('2016-03-08 13:45:31','$UAL',56.34,'jimcramer_tweets'),('2016-03-08 18:10:07','$MCD',118.42,'jimcramer_tweets'),('2016-03-08 20:58:05','$AXP',59.43,'jimcramer_tweets'),('2016-03-09 00:26:58','$SUNE',1.92,'jimcramer_tweets'),('2016-03-09 01:13:20','$JCP',11.51,'jimcramer_tweets'),('2016-03-09 01:16:48','$AXP',59.05,'jimcramer_tweets'),('2016-03-09 13:09:38','$F',13.19,'jimcramer_tweets'),('2016-03-09 20:47:16','$CVX',92.82,'jimcramer_tweets'),('2016-03-09 20:50:16','$PNRA',209.52,'jimcramer_tweets'),('2016-03-10 14:37:24','$TST',1.05,'jimcramer_tweets'),('2016-03-11 00:03:49','$LULU',64.42,'jimcramer_tweets'),('2016-03-11 00:04:20','$NRG',13.74,'jimcramer_tweets'),('2016-03-11 00:15:57','$UTX',96.75,'jimcramer_tweets'),('2016-03-11 11:21:47','$BMY',64.96,'jimcramer_tweets'),('2016-03-11 11:22:45','$AA',9.52,'jimcramer_tweets'),('2016-03-11 14:35:01','$GS',153.94,'jimcramer_tweets'),('2016-03-11 14:36:10','$WFT',7.24,'jimcramer_tweets'),('2016-03-11 16:12:53','$MA',88.58,'jimcramer_tweets'),('2016-03-11 18:49:30','$GE',30.34,'jimcramer_tweets'),('2016-03-11 19:42:57','$UPS',100.82,'jimcramer_tweets'),('2016-03-11 20:49:48','$SHE',60.344,'jimcramer_tweets'),('2016-03-11 20:52:00','$CSCO',27.86,'jimcramer_tweets'),('2016-03-11 23:29:05','$DPZ',131.72,'jimcramer_tweets'),('2016-03-11 23:29:18','$MCD',121.55,'jimcramer_tweets'),('2016-03-11 23:50:06','$CSCO',27.86,'jimcramer_tweets'),('2016-03-11 23:50:56','$ULTA',191.62,'jimcramer_tweets'),('2016-03-11 23:53:58','$CSCO',27.86,'jimcramer_tweets'),('2016-03-14 09:48:18','$IBM',142.78,'jimcramer_tweets'),('2016-03-14 15:25:45','$JNJ',107.66,'jimcramer_tweets'),('2016-03-14 16:04:29','$WFM',33.49,'jimcramer_tweets'),('2016-03-14 16:18:25','$GWPH',84.71,'jimcramer_tweets'),('2016-03-14 18:01:27','$AVP',4.38,'jimcramer_tweets'),('2016-03-14 19:10:43','$MCD',122.9,'jimcramer_tweets'),('2016-03-14 21:19:11','$CFG',22.09,'jimcramer_tweets'),('2016-03-14 22:08:01','$MCD',122.9,'jimcramer_tweets'),('2016-03-15 13:15:41','$VRX',33.51,'jimcramer_tweets'),('2016-03-15 13:46:56','$TWTR',16.19,'jimcramer_tweets'),('2016-03-15 13:48:51','$TWTR',16.19,'jimcramer_tweets'),('2016-03-15 13:53:06','$VRX',33.51,'jimcramer_tweets'),('2016-03-15 13:55:16','$TWTR',16.19,'jimcramer_tweets'),('2016-03-15 17:20:29','$DDD',12.63,'jimcramer_tweets'),('2016-03-16 00:27:13','$VRX',33.54,'jimcramer_tweets'),('2016-03-16 01:14:11','$ORCL',40.22,'jimcramer_tweets'),('2016-03-16 01:24:32','$AA',9.74,'jimcramer_tweets'),('2016-03-16 08:36:35','$ORCL',40.22,'jimcramer_tweets'),('2016-03-16 08:37:08','$VRX',33.54,'jimcramer_tweets'),('2016-03-16 08:38:32','$LLY',72.48,'jimcramer_tweets'),('2016-03-16 08:39:18','$ORCL',40.22,'jimcramer_tweets'),('2016-03-16 08:41:14','$PLCE',78.14,'jimcramer_tweets'),('2016-03-16 08:42:45','$TWTR',16.7,'jimcramer_tweets'),('2016-03-16 08:44:26','$VRX',33.54,'jimcramer_tweets'),('2016-03-16 17:30:32','$AGN',272.76,'jimcramer_tweets'),('2016-03-17 01:14:05','$FDX',161.34,'jimcramer_tweets'),('2016-03-17 01:22:16','$JACK',64.85,'jimcramer_tweets'),('2016-03-17 08:24:22','$FCX',10.9,'jimcramer_tweets'),('2016-03-17 09:07:21','$FCX',10.9,'jimcramer_tweets'),('2016-03-17 12:22:06','$JNJ',106.74,'jimcramer_tweets'),('2016-03-17 12:22:10','$CAT',75.9,'jimcramer_tweets'),('2016-03-17 12:25:39','$HD',130.88,'jimcramer_tweets'),('2016-03-17 20:12:34','$ADBE',89.96,'jimcramer_tweets'),('2016-03-17 20:14:25','$INTU',100.83,'jimcramer_tweets'),('2016-03-17 20:15:01','$ADBE',89.96,'jimcramer_tweets'),('2016-03-17 22:16:22','$INTU',100.83,'jimcramer_tweets'),('2016-03-17 22:17:19','$SUNE',2.08,'jimcramer_tweets'),('2016-03-18 08:01:21','$TGT',82.71,'jimcramer_tweets'),('2016-03-18 08:02:22','$AGN',269.43,'jimcramer_tweets'),('2016-03-18 11:22:44','$CMG',455.37,'jimcramer_tweets'),('2016-03-18 11:29:39','$ARO',0.26,'jimcramer_tweets'),('2016-03-18 16:55:10','$TWTR',16.85,'jimcramer_tweets'),('2016-03-18 16:56:27','$PLCE',80.44,'jimcramer_tweets'),('2016-03-18 17:05:59','$ARO',0.26,'jimcramer_tweets'),('2016-03-18 17:46:19','$AAPL',105.92,'jimcramer_tweets'),('2016-03-18 17:47:11','$SHAK',34.84,'jimcramer_tweets'),('2016-03-18 18:16:13','$UNP',84.42,'jimcramer_tweets'),('2016-03-18 18:17:16','$OXY',71.3,'jimcramer_tweets'),('2016-03-18 18:21:17','$GE',30.92,'jimcramer_tweets'),('2016-03-18 20:24:57','$VRX',26.98,'jimcramer_tweets'),('2016-03-18 20:46:03','$VRX',26.98,'jimcramer_tweets'),('2016-03-18 21:06:07','$AAPL',105.92,'jimcramer_tweets'),('2016-03-18 21:35:34','$SWKS',77.02,'jimcramer_tweets'),('2016-03-18 21:38:44','$GE',30.92,'jimcramer_tweets'),('2016-03-18 21:41:56','$FCX',10.76,'jimcramer_tweets'),('2016-03-18 21:48:58','$WWAV',41.01,'jimcramer_tweets'),('2016-03-18 21:50:22','$S',3.26,'jimcramer_tweets'),('2016-03-18 21:51:07','$BIIB',250.78,'jimcramer_tweets'),('2016-03-18 21:53:39','$NSC',84.02,'jimcramer_tweets'),('2016-03-18 21:56:17','$AAPL',105.92,'jimcramer_tweets'),('2016-03-18 22:14:49','$AA',10.03,'jimcramer_tweets'),('2016-03-18 22:20:30','$AAPL',105.92,'jimcramer_tweets'),('2016-03-21 12:07:24','$JPM',60.46,'jimcramer_tweets'),('2016-03-21 12:08:46','$TWTR',16.89,'jimcramer_tweets'),('2016-03-21 13:27:33','$AAPL',105.91,'jimcramer_tweets'),('2016-03-21 20:08:40','$MFRM',42.69,'jimcramer_tweets'),('2016-03-22 08:05:00','$VAL',104.68,'jimcramer_tweets'),('2016-03-23 13:49:09','$CMG',474.46,'jimcramer_tweets'),('2016-03-23 13:50:39','$NKE',62.44,'jimcramer_tweets'),('2016-03-23 21:40:12','$VRX',33.43,'jimcramer_tweets'),('2016-03-23 21:41:01','$PVH',87.63,'jimcramer_tweets'),('2016-03-23 21:41:50','$GE',31.07,'jimcramer_tweets'),('2016-03-24 00:07:39','$AA',9.57,'jimcramer_tweets'),('2016-03-24 11:23:37','$H',47.26,'jimcramer_tweets'),('2016-03-24 11:24:28','$UA',82.16,'jimcramer_tweets'),('2016-03-24 11:25:11','$WFC',48.9,'jimcramer_tweets'),('2016-03-24 14:56:49','$MCD',123.29,'jimcramer_tweets'),('2016-03-24 19:06:43','$TST',1.23,'jimcramer_tweets'),('2016-03-24 19:07:25','$LINE',0.47,'jimcramer_tweets'),('2016-03-24 19:49:05','$KBH',13.93,'jimcramer_tweets'),('2016-03-24 20:12:26','$DISH',47.91,'jimcramer_tweets'),('2016-03-24 20:16:02','$PVH',94.29,'jimcramer_tweets'),('2016-03-24 20:20:59','$Z',22.53,'jimcramer_tweets'),('2016-03-29 13:50:46','$SUNE',0.57,'jimcramer_tweets'),('2016-03-30 13:26:46','$FB',114.7,'jimcramer_tweets'),('2016-03-30 14:59:37','$OPK',9.9,'jimcramer_tweets'),('2016-03-30 19:19:26','$PEP',102.69,'jimcramer_tweets'),('2016-03-30 19:21:35','$YHOO',36.56,'jimcramer_tweets'),('2016-03-30 19:28:52','$FB',114.7,'jimcramer_tweets'),('2016-03-31 07:59:07','$MCD',125.68,'jimcramer_tweets'),('2016-03-31 07:59:28','$MET',43.94,'jimcramer_tweets'),('2016-03-31 08:01:03','$SUNE',0.54,'jimcramer_tweets'),('2016-03-31 13:47:22','$MCD',125.68,'jimcramer_tweets'),('2016-03-31 22:51:31','$CMG',470.97,'jimcramer_tweets'),('2016-04-01 22:11:05','$SUNE',0.43,'jimcramer_tweets'),('2016-04-04 13:10:19','$JNJ',108.59,'jimcramer_tweets'),('2016-04-04 13:44:54','$IBM',152.07,'jimcramer_tweets'),('2016-04-04 13:45:02','$GE',31.23,'jimcramer_tweets'),('2016-04-04 19:24:00','$GIS',65.36,'jimcramer_tweets'),('2016-04-05 00:09:05','$PFE',31.36,'jimcramer_tweets'),('2016-04-05 00:11:16','$AGN',236.55,'jimcramer_tweets'),('2016-04-05 00:18:48','$AGN',236.55,'jimcramer_tweets'),('2016-04-05 01:50:08','$AGN',236.55,'jimcramer_tweets'),('2016-04-05 03:12:23','$HOT',78.39,'jimcramer_tweets'),('2016-04-05 03:13:41','$CMG',463.42,'jimcramer_tweets'),('2016-04-05 13:43:17','$TSLA',255.47,'jimcramer_tweets'),('2016-04-05 13:52:01','$PFE',31.36,'jimcramer_tweets'),('2016-04-05 14:25:10','$VRX',28.73,'jimcramer_tweets'),('2016-04-05 16:50:27','$AGN',236.55,'jimcramer_tweets'),('2016-04-05 16:51:03','$AGN',236.55,'jimcramer_tweets'),('2016-04-05 17:02:14','$TSLA',255.47,'jimcramer_tweets'),('2016-04-05 19:47:27','$SBUX',60.04,'jimcramer_tweets'),('2016-04-05 22:36:09','$SONC',35.34,'jimcramer_tweets'),('2016-04-05 22:45:24','$E',28.33,'jimcramer_tweets'),('2016-04-06 09:08:52','$AGN',244.74,'jimcramer_tweets'),('2016-04-06 13:44:17','$STZ',160.34,'jimcramer_tweets'),('2016-04-06 22:39:21','$PFE',32.93,'jimcramer_tweets'),('2016-04-07 12:50:50','$BBBY',48.97,'jimcramer_tweets'),('2016-04-07 13:42:08','$TWTR',16.98,'jimcramer_tweets'),('2016-04-07 13:42:46','$WYNN',99.99,'jimcramer_tweets'),('2016-04-07 13:42:55','$WYNN',99.99,'jimcramer_tweets'),('2016-04-08 17:18:47','$AEP',66.01,'jimcramer_tweets'),('2016-04-08 19:05:41','$CVX',96.33,'jimcramer_tweets'),('2016-04-11 12:17:43','$SBUX',60.9,'jimcramer_tweets'),('2016-04-11 13:28:50','$HTZ',8.59,'jimcramer_tweets'),('2016-04-11 13:30:02','$YHOO',36.48,'jimcramer_tweets'),('2016-04-11 13:43:57','$SBUX',60.9,'jimcramer_tweets'),('2016-04-11 13:46:44','$SAN',4.21,'jimcramer_tweets'),('2016-04-11 13:47:04','$GPS',23.98,'jimcramer_tweets'),('2016-04-11 13:48:15','$SBUX',60.9,'jimcramer_tweets'),('2016-04-11 15:37:18','$AAPL',109.02,'jimcramer_tweets'),('2016-04-11 15:50:38','$AGN',228.37,'jimcramer_tweets'),('2016-04-11 15:51:01','$LULU',61.23,'jimcramer_tweets'),('2016-04-11 19:03:11','$AA',9.74,'jimcramer_tweets'),('2016-04-11 19:04:03','$AMZN',595.93,'jimcramer_tweets'),('2016-04-11 20:12:39','$AA',9.74,'jimcramer_tweets'),('2016-04-12 08:00:37','$NKE',58.55,'jimcramer_tweets'),('2016-04-12 08:01:24','$AA',9.48,'jimcramer_tweets'),('2016-04-12 08:03:41','$AA',9.48,'jimcramer_tweets'),('2016-04-12 13:28:54','$SBUX',59.5,'jimcramer_tweets'),('2016-04-12 13:29:05','$AA',9.48,'jimcramer_tweets'),('2016-04-12 13:29:14','$PYPL',37.8,'jimcramer_tweets'),('2016-04-12 13:29:20','$SBUX',59.5,'jimcramer_tweets'),('2016-04-12 13:50:55','$TGT',80.78,'jimcramer_tweets'),('2016-04-13 13:28:50','$S',3.42,'jimcramer_tweets'),('2016-04-13 13:44:11','$JPM',61.79,'jimcramer_tweets'),('2016-04-13 13:44:54','$STI',38.45,'jimcramer_tweets'),('2016-04-13 13:50:21','$AA',9.79,'jimcramer_tweets');
/*!40000 ALTER TABLE `jimcramer_tweets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-16 12:51:28
