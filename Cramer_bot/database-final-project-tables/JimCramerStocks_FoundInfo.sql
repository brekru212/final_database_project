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
-- Table structure for table `FoundInfo`
--

DROP TABLE IF EXISTS `FoundInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FoundInfo` (
  `TICKER` varchar(45) NOT NULL,
  `LastPrice` float DEFAULT NULL,
  `SOURCE` varchar(45) DEFAULT NULL,
  `DateAdded` datetime DEFAULT NULL,
  `DateModified` datetime NOT NULL,
  PRIMARY KEY (`TICKER`),
  UNIQUE KEY `TICKER_UNIQUE` (`TICKER`),
  UNIQUE KEY `LastUpdate_UNIQUE` (`LastUpdate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FoundInfo`
--

LOCK TABLES `FoundInfo` WRITE;
/*!40000 ALTER TABLE `FoundInfo` DISABLE KEYS */;
INSERT INTO `FoundInfo` VALUES ('$AA','2016-04-13 13:50:21',9.79,'jimcramer_tweets','2011-07-01 13:55:10'),('$AAI','2014-12-29 19:32:07',0.5,'kaylatausche_tweets','2014-12-29 19:32:07'),('$AAL','2015-10-09 16:28:31',42.42,'MelissaLeeCNBC_tweets','2015-10-09 16:28:31'),('$AAP','2012-11-13 14:56:44',79.27,'davidfaber_tweets','2012-11-01 18:56:55'),('$AAPL','2016-04-11 15:37:18',109.02,'jimcramer_tweets','2011-04-21 13:36:27'),('$AB','2013-02-14 14:29:40',20.97,'davidfaber_tweets','2013-02-14 14:29:40'),('$ABBV','2014-10-15 19:01:59',54.63,'davidfaber_tweets','2014-10-15 19:01:59'),('$ABT','2016-03-15 14:41:01',39.9,'MelissaLeeCNBC_tweets','2016-03-15 14:41:01'),('$ADBE','2016-03-17 20:15:01',89.96,'jimcramer_tweets','2016-02-02 22:41:21'),('$AEM','2016-02-01 15:09:13',30.07,'jimcramer_tweets','2016-02-01 15:09:13'),('$AEP','2016-04-08 17:18:47',66.01,'jimcramer_tweets','2016-01-15 19:08:11'),('$AET','2015-07-06 15:37:32',117.43,'davidfaber_tweets','2015-07-06 15:37:32'),('$AF','2015-10-29 21:38:52',16.53,'kaylatausche_tweets','2015-10-29 21:38:52'),('$AGN','2016-04-11 15:50:38',228.37,'jimcramer_tweets','2014-04-21 20:58:35'),('$AGU','2013-04-09 19:02:39',95.04,'davidfaber_tweets','2012-08-14 14:32:13'),('$AHL','2014-04-14 14:57:47',43.77,'davidfaber_tweets','2014-04-14 14:57:47'),('$AIG','2016-01-26 16:42:25',55.91,'davidfaber_tweets','2011-05-23 17:36:27'),('$AIMT','2015-08-07 19:19:43',23,'MelissaLeeCNBC_tweets','2015-08-07 19:19:43'),('$ALL','2011-08-26 20:29:30',24.45,'davidfaber_tweets','2011-08-26 20:29:30'),('$ALTR','2015-06-01 15:07:03',51.68,'kaylatausche_tweets','2015-06-01 15:07:03'),('$AMAT','2013-09-24 14:20:27',17.45,'davidfaber_tweets','2013-09-24 14:20:27'),('$AMBA','2015-07-23 15:13:39',122.99,'MelissaLeeCNBC_tweets','2015-07-23 15:13:39'),('$AMD','2016-02-02 17:28:38',1.99,'jimcramer_tweets','2016-02-02 17:28:38'),('$AMGN','2015-09-29 16:52:41',133.82,'MelissaLeeCNBC_tweets','2013-08-26 14:04:20'),('$AMTD','2015-09-10 19:08:34',33.75,'MelissaLeeCNBC_tweets','2015-09-10 19:08:34'),('$AMZN','2016-04-11 19:04:03',595.93,'jimcramer_tweets','2011-04-27 12:27:38'),('$AN','2016-01-06 16:35:11',50.76,'MelissaLeeCNBC_tweets','2016-01-06 16:35:11'),('$ANTM','2015-07-09 15:09:01',158.58,'davidfaber_tweets','2015-07-06 13:38:46'),('$APC','2015-11-11 13:46:01',61.01,'davidfaber_tweets','2015-11-11 13:46:01'),('$APD','2014-06-18 12:59:40',130.72,'ScottWapnerCNBC_tweets','2013-07-31 14:06:57'),('$APX','2011-08-11 18:27:58',4.29,'davidfaber_tweets','2011-08-11 18:27:58'),('$ARO','2016-03-18 17:05:59',0.26,'jimcramer_tweets','2016-03-18 11:29:39'),('$ATHN','2014-05-05 21:11:47',126.78,'ScottWapnerCNBC_tweets','2014-05-05 21:11:47'),('$AVAV','2015-09-18 17:50:46',20.17,'MelissaLeeCNBC_tweets','2015-09-18 17:50:46'),('$AVGO','2015-05-27 19:49:09',141.49,'kaylatausche_tweets','2013-12-16 13:46:08'),('$AVP','2016-03-14 18:01:27',4.38,'jimcramer_tweets','2012-04-02 13:01:06'),('$AXON','2016-02-02 19:40:59',13.66,'jimcramer_tweets','2015-10-06 17:41:59'),('$AXP','2016-03-10 21:50:04',58.75,'kaylatausche_tweets','2015-01-21 21:32:50'),('$AYA','2015-07-01 16:22:40',28.03,'ScottWapnerCNBC_tweets','2015-07-01 16:22:40'),('$AZO','2012-01-04 16:08:56',326.96,'davidfaber_tweets','2012-01-04 15:40:13'),('$B','2015-08-03 20:32:31',38.83,'ScottWapnerCNBC_tweets','2015-08-03 14:18:27'),('$BA','2016-02-11 15:46:26',108.44,'ScottWapnerCNBC_tweets','2011-04-27 12:25:41'),('$BABA','2016-01-06 18:48:48',77.33,'kaylatausche_tweets','2014-09-19 09:33:27'),('$BAC','2016-02-22 09:34:00',12.54,'jimcramer_tweets','2011-06-09 19:36:44'),('$BBBY','2016-04-07 12:50:50',48.97,'jimcramer_tweets','2016-04-07 12:50:50'),('$BBRY','2015-12-23 19:39:17',9.13,'kaylatausche_tweets','2013-09-23 18:15:02'),('$BBY','2014-11-28 15:58:40',39.41,'kaylatausche_tweets','2012-08-06 12:41:12'),('$BCS','2016-03-01 14:35:32',8.89,'kaylatausche_tweets','2016-03-01 14:35:32'),('$BEAM','2014-01-13 13:05:26',83.42,'davidfaber_tweets','2014-01-13 13:05:26'),('$BHI','2015-07-22 16:23:56',58.28,'MelissaLeeCNBC_tweets','2015-07-22 16:23:56'),('$BHP','2016-02-23 18:51:14',24.09,'jimcramer_tweets','2016-02-23 18:51:14'),('$BID','2014-04-24 11:52:32',42.74,'davidfaber_tweets','2014-04-04 02:17:27'),('$BIDU','2015-08-27 17:19:15',152.06,'MelissaLeeCNBC_tweets','2015-08-27 17:19:15'),('$BIIB','2016-03-18 21:51:07',250.78,'jimcramer_tweets','2015-03-24 16:14:19'),('$BK','2015-05-08 23:00:47',43.41,'ScottWapnerCNBC_tweets','2015-03-10 19:18:18'),('$BKS','2014-04-03 14:18:05',19.12,'davidfaber_tweets','2011-05-20 14:16:21'),('$BLC','2013-09-20 13:57:16',13.87,'davidfaber_tweets','2013-09-10 19:24:15'),('$BLK','2015-06-29 15:41:32',344.54,'kaylatausche_tweets','2011-09-12 18:14:54'),('$BLUE','2015-10-05 14:53:54',98.54,'MelissaLeeCNBC_tweets','2015-10-05 14:53:54'),('$BMC','2012-05-15 12:48:22',44.51,'davidfaber_tweets','2012-05-14 13:39:43'),('$BMRN','2016-03-18 03:19:27',80.94,'MelissaLeeCNBC_tweets','2016-03-18 03:19:27'),('$BMS','2016-02-10 18:08:41',48.52,'jimcramer_tweets','2016-02-10 18:08:41'),('$BMY','2016-03-11 11:21:47',64.96,'jimcramer_tweets','2015-06-17 16:18:54'),('$BOBE','2014-08-20 13:23:04',48.49,'davidfaber_tweets','2014-08-20 13:23:04'),('$BOJA','2015-05-08 21:17:49',23.75,'kaylatausche_tweets','2015-05-08 21:17:49'),('$BOX','2015-07-23 13:56:51',16.38,'kaylatausche_tweets','2015-01-23 14:56:12'),('$BP','2016-02-02 08:23:53',29.02,'jimcramer_tweets','2014-09-04 14:51:11'),('$BRCM','2015-05-27 23:01:15',57.16,'davidfaber_tweets','2015-05-27 19:55:59'),('$BRK','2015-03-30 14:24:35',0.005,'davidfaber_tweets','2013-01-28 14:47:41'),('$BSX','2015-02-17 21:23:33',14.84,'kaylatausche_tweets','2015-02-17 21:23:33'),('$BTU','2016-02-18 09:48:06',2.31,'jimcramer_tweets','2015-06-29 14:46:10'),('$BUD','2014-09-15 13:01:07',114.45,'davidfaber_tweets','2013-02-14 14:49:29'),('$BX','2016-01-20 02:16:00',23.75,'kaylatausche_tweets','2013-04-19 13:37:39'),('$BXLT','2015-08-04 19:51:02',37.1,'davidfaber_tweets','2015-08-04 19:51:02'),('$C','2016-02-03 15:05:17',40.36,'MelissaLeeCNBC_tweets','2011-05-19 13:31:43'),('$CAB','2015-10-28 12:31:18',39.26,'davidfaber_tweets','2015-10-28 12:31:18'),('$CAG','2015-12-22 15:09:40',41.43,'jimcramer_tweets','2015-12-22 15:09:40'),('$CAM','2015-08-26 13:19:15',59.93,'kaylatausche_tweets','2015-08-26 13:19:15'),('$CAT','2016-03-17 12:22:10',75.9,'jimcramer_tweets','2015-09-24 16:40:41'),('$CBOU','2011-09-29 17:49:55',12.2,'davidfaber_tweets','2011-09-29 17:49:55'),('$CBS','2015-09-04 18:45:07',42.92,'kaylatausche_tweets','2012-05-02 13:22:09'),('$CCL','2015-12-21 15:15:24',53.94,'jimcramer_tweets','2015-12-21 15:15:24'),('$CCME','2011-05-19 14:39:31',2.16,'davidfaber_tweets','2011-05-19 14:39:31'),('$CELG','2016-01-11 17:59:01',103.03,'jimcramer_tweets','2014-12-08 14:43:18'),('$CF','2014-09-23 12:00:29',269.37,'davidfaber_tweets','2013-07-29 19:08:37'),('$CFG','2016-03-14 21:19:11',22.09,'jimcramer_tweets','2016-03-14 21:19:11'),('$CG','2014-12-16 17:49:04',25.54,'kaylatausche_tweets','2014-12-16 17:49:04'),('$CHK','2016-02-18 23:48:16',1.98,'jimcramer_tweets','2012-05-01 15:05:33'),('$CHTR','2015-03-31 12:09:23',193.11,'davidfaber_tweets','2013-06-27 14:50:54'),('$CI','2015-07-02 13:45:14',161.29,'davidfaber_tweets','2015-07-02 13:45:14'),('$CIT','2016-02-02 19:49:30',27.7,'jimcramer_tweets','2015-07-21 19:19:12'),('$CKEC','2015-12-17 23:14:24',22.4,'MelissaLeeCNBC_tweets','2015-12-17 23:14:24'),('$CLF','2016-01-13 12:44:31',1.32,'jimcramer_tweets','2014-02-12 13:32:11'),('$CLLS','2015-12-23 01:10:57',29.88,'jimcramer_tweets','2015-12-23 01:10:57'),('$CLR','2014-11-28 15:44:02',40.98,'davidfaber_tweets','2014-11-28 15:44:02'),('$CLVS','2015-06-01 19:18:14',87,'kaylatausche_tweets','2015-06-01 19:18:14'),('$CLWR','2013-06-20 18:43:28',5.045,'davidfaber_tweets','2012-10-11 16:45:56'),('$CLX','2016-02-04 22:23:19',124.71,'jimcramer_tweets','2011-07-15 14:58:07'),('$CMA','2011-04-19 13:28:12',36.64,'davidfaber_tweets','2011-04-19 13:28:12'),('$CMCSA','2015-12-21 13:47:09',56.46,'jimcramer_tweets','2012-05-02 13:27:22'),('$CME','2015-09-02 16:49:21',92.56,'MelissaLeeCNBC_tweets','2015-09-02 16:49:21'),('$CMG','2016-04-05 03:13:41',463.42,'jimcramer_tweets','2015-07-22 02:28:12'),('$CMRX','2014-10-08 15:25:04',32.91,'ScottWapnerCNBC_tweets','2014-10-08 15:25:04'),('$COL','2011-09-16 17:09:14',56.21,'davidfaber_tweets','2011-09-16 17:09:14'),('$COLM','2016-02-19 14:14:08',58.52,'jimcramer_tweets','2016-02-19 14:14:08'),('$COP','2011-08-26 21:26:57',65.51,'davidfaber_tweets','2011-07-25 17:36:47'),('$COST','2015-11-11 03:33:56',156.39,'ScottWapnerCNBC_tweets','2014-09-15 19:34:47'),('$CRM','2016-02-26 22:45:10',69.72,'jimcramer_tweets','2015-11-04 19:57:15'),('$CRTO','2013-10-30 13:54:57',35.39,'davidfaber_tweets','2013-10-30 13:54:57'),('$CS','2016-04-07 15:24:40',13.19,'kaylatausche_tweets','2011-07-05 12:43:36'),('$CSCO','2016-03-11 23:53:58',27.86,'jimcramer_tweets','2014-11-13 15:00:42'),('$CSX','2016-02-03 17:56:28',22.36,'jimcramer_tweets','2016-01-12 00:16:08'),('$CTB','2013-06-13 14:35:16',33.82,'davidfaber_tweets','2013-06-13 14:35:16'),('$CTL','2014-07-29 13:20:17',39.9,'davidfaber_tweets','2014-07-29 13:20:17'),('$CVC','2015-12-23 18:11:05',31.54,'MelissaLeeCNBC_tweets','2011-10-28 14:49:16'),('$CVS','2015-11-27 14:58:16',94.63,'kaylatausche_tweets','2014-11-04 16:34:07'),('$CVX','2016-04-08 19:05:41',96.33,'jimcramer_tweets','2014-03-04 15:42:26'),('$CWH','2014-02-21 15:54:30',1.255,'davidfaber_tweets','2013-02-26 13:03:28'),('$CYBR','2015-07-23 15:41:22',61.72,'MelissaLeeCNBC_tweets','2015-06-09 14:44:32'),('$CYH','2013-07-29 13:52:25',47.23,'davidfaber_tweets','2013-07-29 13:52:25'),('$CZR','2012-02-08 16:34:25',15.39,'davidfaber_tweets','2012-02-08 16:34:25'),('$D','2015-03-25 20:16:43',70.7,'davidfaber_tweets','2013-06-11 01:11:42'),('$DAL','2016-02-04 13:51:20',44.04,'kaylatausche_tweets','2016-02-04 13:51:20'),('$DATA','2016-02-19 00:27:37',42.39,'jimcramer_tweets','2016-02-12 18:53:01'),('$DB','2016-03-10 15:40:43',19.27,'MelissaLeeCNBC_tweets','2015-09-24 15:16:16'),('$DBD','2014-09-18 15:47:18',38.29,'ScottWapnerCNBC_tweets','2014-09-18 15:47:18'),('$DD','2016-03-04 14:04:49',63.18,'jimcramer_tweets','2014-09-17 14:53:39'),('$DDD','2016-03-15 17:20:29',12.63,'jimcramer_tweets','2016-03-15 17:20:29'),('$DELL','2013-10-04 12:32:44',13.84,'davidfaber_tweets','2013-01-14 21:25:03'),('$DG','2015-01-15 13:06:18',65.87,'davidfaber_tweets','2014-08-18 12:06:57'),('$DIA','2015-08-10 17:49:15',176.19,'MelissaLeeCNBC_tweets','2015-08-10 17:49:15'),('$DIN','2016-02-25 19:27:54',96.96,'jimcramer_tweets','2016-02-25 19:27:54'),('$DIS','2016-02-11 13:16:55',90.31,'jimcramer_tweets','2012-11-06 15:23:59'),('$DISCA','2015-09-29 12:42:03',26.4,'ScottWapnerCNBC_tweets','2011-09-21 12:15:42'),('$DISH','2016-03-24 20:12:26',47.91,'jimcramer_tweets','2013-01-09 01:38:12'),('$DJIA','2015-08-28 20:07:15',16643,'MelissaLeeCNBC_tweets','2014-07-03 14:45:21'),('$DKS','2016-02-23 17:08:02',40.43,'MelissaLeeCNBC_tweets','2016-02-23 17:08:02'),('$DLTR','2015-01-15 13:27:10',66.41,'davidfaber_tweets','2014-07-28 12:30:29'),('$DNB','2012-11-01 16:36:01',81.16,'davidfaber_tweets','2012-11-01 16:36:01'),('$DNKN','2016-02-26 12:11:13',46.66,'kaylatausche_tweets','2011-09-30 19:02:39'),('$DNR','2016-03-01 13:54:16',1.39,'jimcramer_tweets','2016-03-01 13:54:16'),('$DOW','2016-03-08 11:28:11',48.83,'jimcramer_tweets','2011-07-27 15:02:22'),('$DPZ','2016-03-11 23:29:05',131.72,'jimcramer_tweets','2014-10-14 16:56:32'),('$DRI','2015-12-21 15:07:17',63.7,'jimcramer_tweets','2014-05-16 14:33:36'),('$DUK','2012-07-03 12:35:47',68.69,'davidfaber_tweets','2012-07-03 12:35:47'),('$E','2016-04-05 22:45:24',28.33,'jimcramer_tweets','2016-04-05 22:45:24'),('$EA','2016-03-28 15:39:42',64.64,'kaylatausche_tweets','2012-08-16 15:49:38'),('$EBAY','2015-07-20 15:12:59',28.57,'kaylatausche_tweets','2014-01-22 21:24:16'),('$EDU','2015-10-29 18:10:58',27.73,'MelissaLeeCNBC_tweets','2015-10-29 18:10:58'),('$EEM','2015-08-06 15:55:19',36.32,'MelissaLeeCNBC_tweets','2015-08-06 15:55:19'),('$EIGI','2013-10-25 16:11:39',11.25,'davidfaber_tweets','2013-10-25 16:11:39'),('$ELN','2013-06-13 12:44:54',0.025,'davidfaber_tweets','2013-06-13 12:44:54'),('$EMC','2015-10-09 17:58:48',27.86,'davidfaber_tweets','2014-10-08 14:35:40'),('$EMR','2016-01-08 20:18:27',44.1,'jimcramer_tweets','2016-01-08 20:18:27'),('$ENDP','2016-03-17 16:02:30',30.03,'davidfaber_tweets','2013-11-05 14:51:48'),('$ENH','2014-04-14 12:45:24',52.32,'davidfaber_tweets','2014-04-14 12:45:24'),('$ESRX','2016-01-29 15:47:29',71.87,'davidfaber_tweets','2011-07-21 12:57:55'),('$ETE','2016-02-26 15:55:05',6.81,'davidfaber_tweets','2015-06-23 15:03:42'),('$ETP','2016-02-25 09:42:35',27.14,'jimcramer_tweets','2016-02-25 09:42:35'),('$ETSY','2016-02-23 23:33:05',7.39,'jimcramer_tweets','2015-05-20 14:13:31'),('$EWG','2015-12-16 19:49:05',26.48,'MelissaLeeCNBC_tweets','2015-12-16 19:49:05'),('$EXPR','2012-06-05 13:25:55',18.32,'davidfaber_tweets','2012-06-05 13:25:55'),('$F','2016-03-09 13:09:38',13.19,'jimcramer_tweets','2011-07-26 15:09:04'),('$FB','2016-03-30 19:28:52',114.7,'jimcramer_tweets','2012-05-18 16:23:41'),('$FCAU','2016-01-27 15:58:29',7.45,'MelissaLeeCNBC_tweets','2016-01-27 15:58:29'),('$FCX','2016-03-18 21:41:56',10.76,'jimcramer_tweets','2013-05-07 12:28:13'),('$FDC','2015-10-15 14:02:42',15.75,'kaylatausche_tweets','2015-10-15 13:22:24'),('$FDML','2015-04-22 03:55:55',13.1,'ScottWapnerCNBC_tweets','2015-04-22 03:20:22'),('$FDX','2016-03-17 01:14:05',161.34,'jimcramer_tweets','2016-01-26 09:17:38'),('$FE','2015-12-21 19:57:47',31.07,'jimcramer_tweets','2015-12-21 19:57:47'),('$FEYE','2015-11-10 18:30:24',23.24,'MelissaLeeCNBC_tweets','2013-09-20 13:13:54'),('$FIT','2016-02-03 17:55:57',16.04,'jimcramer_tweets','2015-07-01 15:11:42'),('$FL','2016-02-29 20:31:50',62.5,'jimcramer_tweets','2016-02-29 20:31:50'),('$FLEX','2016-02-02 15:02:53',10.08,'jimcramer_tweets','2016-02-02 15:02:53'),('$FLO','2014-11-14 19:55:35',18.67,'kaylatausche_tweets','2014-11-14 19:55:35'),('$FMI','2013-09-25 13:23:26',35.35,'davidfaber_tweets','2013-09-25 13:23:26'),('$FNMA','2015-12-18 23:06:15',1.75,'jimcramer_tweets','2014-03-31 14:27:49'),('$FOX','2015-06-11 14:01:40',32.82,'davidfaber_tweets','2014-07-22 20:02:07'),('$FOXA','2015-06-11 13:52:00',32.9,'kaylatausche_tweets','2015-06-11 13:52:00'),('$FSLR','2016-02-23 20:15:26',61.79,'MelissaLeeCNBC_tweets','2016-01-05 01:25:59'),('$FTNT','2015-07-23 15:39:12',46.83,'MelissaLeeCNBC_tweets','2015-07-23 15:39:12'),('$FUEL','2013-09-20 13:15:21',56.1,'davidfaber_tweets','2013-09-20 12:51:10'),('$FUN','2016-03-04 20:35:01',57.88,'jimcramer_tweets','2016-03-04 20:35:01'),('$FXCM','2015-01-16 16:21:29',12.63,'davidfaber_tweets','2015-01-16 16:21:29'),('$FXE','2015-09-28 14:55:41',110.13,'MelissaLeeCNBC_tweets','2015-09-28 14:55:41'),('$G','2015-03-09 14:50:55',22.77,'ScottWapnerCNBC_tweets','2011-06-07 12:38:28'),('$GDDY','2015-04-01 14:20:59',26.15,'kaylatausche_tweets','2015-04-01 14:20:59'),('$GDX','2016-02-24 16:58:17',19.11,'MelissaLeeCNBC_tweets','2015-07-20 16:21:26'),('$GE','2016-04-04 13:45:02',31.23,'jimcramer_tweets','2014-12-17 14:56:29'),('$GHDX','2016-01-08 01:46:38',31.66,'MelissaLeeCNBC_tweets','2016-01-08 01:46:38'),('$GILD','2016-02-01 19:52:23',84.05,'jimcramer_tweets','2015-10-22 19:14:32'),('$GIS','2016-04-04 19:24:00',65.36,'jimcramer_tweets','2016-03-07 14:40:29'),('$GLBL','2015-11-30 21:03:00',4.03,'MelissaLeeCNBC_tweets','2015-11-30 20:56:47'),('$GLD','2016-02-26 16:10:58',117.11,'MelissaLeeCNBC_tweets','2016-02-26 16:10:58'),('$GLPI','2015-03-09 12:01:09',36.43,'davidfaber_tweets','2015-03-09 12:01:09'),('$GM','2016-01-13 17:43:09',30.49,'jimcramer_tweets','2012-12-19 14:25:45'),('$GMC','2015-09-29 14:36:19',45000,'MelissaLeeCNBC_tweets','2015-09-29 14:36:19'),('$GMCR','2015-12-07 18:20:24',88.89,'MelissaLeeCNBC_tweets','2015-12-07 18:20:24'),('$GNW','2016-02-17 03:20:50',1.93,'jimcramer_tweets','2016-02-17 03:20:50'),('$GOOG','2016-02-03 00:14:12',726.95,'jimcramer_tweets','2011-07-12 14:57:36'),('$GOOGL','2016-02-09 01:43:20',701.02,'jimcramer_tweets','2015-07-16 21:53:16'),('$GPRO','2016-03-01 16:25:46',11.89,'ScottWapnerCNBC_tweets','2014-10-02 14:39:04'),('$GPS','2016-04-11 13:47:04',23.98,'jimcramer_tweets','2016-04-11 13:47:04'),('$GR','2011-09-22 14:13:47',0.13,'davidfaber_tweets','2011-09-16 22:21:55'),('$GRPN','2015-11-04 15:17:11',2.97,'davidfaber_tweets','2015-11-04 15:15:36'),('$GRUB','2015-08-26 17:13:08',25.92,'kaylatausche_tweets','2015-01-26 21:03:16'),('$GS','2016-03-11 14:35:01',153.94,'jimcramer_tweets','2011-06-17 01:41:52'),('$GSAT','2014-11-17 16:02:19',2.8,'ScottWapnerCNBC_tweets','2014-11-17 16:02:19'),('$GWPH','2016-03-14 16:18:25',84.71,'jimcramer_tweets','2016-01-05 20:06:55'),('$H','2016-03-24 11:23:37',47.26,'jimcramer_tweets','2015-10-28 13:15:12'),('$HAR','2016-01-29 22:48:55',74.39,'jimcramer_tweets','2015-12-23 17:11:01'),('$HAS','2014-11-13 16:14:32',54.98,'kaylatausche_tweets','2014-11-13 16:14:32'),('$HCA','2015-12-14 18:11:25',65.46,'MelissaLeeCNBC_tweets','2015-12-14 18:11:25'),('$HD','2016-03-17 12:25:39',130.88,'jimcramer_tweets','2014-09-30 17:16:42'),('$HES','2016-02-05 14:26:59',38.02,'jimcramer_tweets','2013-01-30 19:38:35'),('$HLF','2016-03-03 17:33:44',52.42,'ScottWapnerCNBC_tweets','2013-01-09 15:19:20'),('$HLT','2014-06-02 14:18:07',22.78,'davidfaber_tweets','2014-06-02 14:18:07'),('$HMA','2013-08-12 20:13:04',13.24,'davidfaber_tweets','2013-06-25 11:03:43'),('$HOG','2016-01-05 18:42:39',45.29,'jimcramer_tweets','2016-01-05 18:42:39'),('$HON','2016-03-02 14:49:37',106.49,'jimcramer_tweets','2015-06-02 15:20:45'),('$HOO','2015-04-14 20:34:38',40.241,'davidfaber_tweets','2015-04-14 20:34:38'),('$HOT','2016-04-05 03:12:23',78.39,'jimcramer_tweets','2015-10-28 13:47:36'),('$HP','2014-10-06 10:45:52',90.57,'davidfaber_tweets','2014-08-20 21:46:58'),('$HPE','2016-03-04 17:34:56',15.44,'davidfaber_tweets','2015-11-25 15:32:09'),('$HPQ','2015-11-25 14:19:30',12.64,'ScottWapnerCNBC_tweets','2011-08-19 19:50:52'),('$HSH','2014-06-03 12:22:17',58.65,'davidfaber_tweets','2014-05-27 14:21:30'),('$HSIC','2015-12-21 20:50:42',153.89,'jimcramer_tweets','2015-12-21 20:50:42'),('$HTZ','2016-04-11 13:28:50',8.59,'jimcramer_tweets','2013-12-31 14:51:56'),('$HYG','2016-01-15 20:31:35',77.91,'MelissaLeeCNBC_tweets','2015-09-30 16:04:57'),('$HZNP','2016-01-12 14:39:55',19.21,'jimcramer_tweets','2015-05-08 00:12:36'),('$IACI','2015-05-11 15:57:16',73.27,'kaylatausche_tweets','2012-05-02 13:50:40'),('$IBB','2016-03-18 03:19:35',251.34,'MelissaLeeCNBC_tweets','2015-07-29 12:57:40'),('$IBM','2016-04-04 13:44:54',152.07,'jimcramer_tweets','2014-10-21 15:20:57'),('$ICE','2012-12-20 00:50:51',130.1,'davidfaber_tweets','2012-12-20 00:45:26'),('$IEP','2015-08-19 16:34:11',72.14,'MelissaLeeCNBC_tweets','2015-08-19 16:34:11'),('$ILMN','2012-01-25 14:39:03',55.15,'davidfaber_tweets','2012-01-25 14:39:03'),('$IMAX','2016-01-08 20:30:45',31.55,'jimcramer_tweets','2016-01-08 20:30:45'),('$INSY','2015-11-05 12:57:43',25.43,'kaylatausche_tweets','2015-11-05 12:57:43'),('$INTC','2015-10-14 17:05:23',32.8,'MelissaLeeCNBC_tweets','2011-05-19 12:58:24'),('$INTU','2016-03-17 22:16:22',100.83,'jimcramer_tweets','2016-03-17 20:14:25'),('$IOTS','2016-02-29 11:47:01',5.53,'jimcramer_tweets','2016-02-29 11:47:01'),('$IP','2015-09-28 20:56:10',37.48,'kaylatausche_tweets','2015-09-28 20:56:10'),('$IPG','2014-07-24 13:02:18',20.15,'davidfaber_tweets','2014-07-24 13:02:18'),('$IWM','2016-01-25 20:45:20',99.12,'MelissaLeeCNBC_tweets','2015-08-06 15:52:20'),('$JACK','2016-03-17 01:22:16',64.85,'jimcramer_tweets','2016-02-19 14:58:42'),('$JAH','2015-07-13 14:48:00',54.78,'ScottWapnerCNBC_tweets','2015-07-13 14:48:00'),('$JBLU','2014-09-18 20:31:23',11.33,'kaylatausche_tweets','2014-09-18 20:31:23'),('$JCP','2016-03-09 01:13:20',11.51,'jimcramer_tweets','2013-02-27 21:32:26'),('$JEF','2011-11-04 17:39:31',12.07,'davidfaber_tweets','2011-11-03 14:07:51'),('$JNJ','2016-04-04 13:10:19',108.59,'jimcramer_tweets','2015-01-27 16:06:58'),('$JOSB','2014-02-14 13:34:42',55.12,'davidfaber_tweets','2014-02-14 13:34:42'),('$JPM','2016-04-13 13:44:11',61.79,'jimcramer_tweets','2011-07-28 16:58:43'),('$JWN','2016-01-15 20:31:15',45.45,'jimcramer_tweets','2015-02-20 15:29:01'),('$KBH','2016-03-24 19:49:05',13.93,'jimcramer_tweets','2016-03-24 19:49:05'),('$KELYB','2011-09-02 15:57:50',13.9,'davidfaber_tweets','2011-09-02 15:57:50'),('$KHC','2016-02-25 22:38:53',74.96,'jimcramer_tweets','2016-02-25 22:38:53'),('$KKR','2012-06-19 12:44:19',12.48,'davidfaber_tweets','2012-06-19 12:44:19'),('$KMB','2016-01-26 20:39:50',124.89,'jimcramer_tweets','2016-01-26 20:39:50'),('$KMI','2016-01-20 22:03:29',12.01,'jimcramer_tweets','2015-12-08 21:48:40'),('$KO','2015-12-22 14:21:35',43.29,'jimcramer_tweets','2014-05-02 20:08:46'),('$KORS','2014-09-05 14:34:23',76.39,'ScottWapnerCNBC_tweets','2014-09-05 14:34:23'),('$KR','2016-02-26 22:56:47',39.45,'jimcramer_tweets','2015-11-11 16:21:32'),('$KRE','2015-08-26 15:38:02',39.86,'MelissaLeeCNBC_tweets','2015-08-26 15:38:02'),('$LAZ','2014-11-12 22:46:41',49.82,'kaylatausche_tweets','2012-06-18 18:20:47'),('$LBTYA','2013-02-06 19:57:21',66.06,'davidfaber_tweets','2013-02-06 19:57:21'),('$LC','2016-02-01 17:21:03',7.61,'jimcramer_tweets','2014-12-11 15:14:45'),('$LCC','2013-11-12 16:34:37',23.52,'davidfaber_tweets','2013-11-12 16:11:01'),('$LEN','2015-12-23 20:06:39',48.82,'jimcramer_tweets','2015-12-23 20:06:39'),('$LGF','2016-02-05 16:35:06',18.53,'MelissaLeeCNBC_tweets','2016-02-05 16:35:06'),('$LINE','2016-03-24 19:07:25',0.47,'jimcramer_tweets','2016-03-24 19:07:25'),('$LL','2016-03-08 19:26:16',11.77,'MelissaLeeCNBC_tweets','2015-03-02 13:21:13'),('$LLY','2016-03-16 08:38:32',72.48,'jimcramer_tweets','2015-10-12 16:35:18'),('$LMCA','2015-01-28 14:00:17',34.33,'kaylatausche_tweets','2014-03-28 12:32:20'),('$LMT','2016-02-19 19:23:35',213.62,'jimcramer_tweets','2015-07-20 11:37:02'),('$LNG','2016-02-04 11:31:53',27.56,'ScottWapnerCNBC_tweets','2014-12-12 16:39:31'),('$LNKD','2016-02-09 21:28:43',100.98,'kaylatausche_tweets','2011-08-22 14:39:45'),('$LOCK','2015-07-21 18:45:54',8.15,'MelissaLeeCNBC_tweets','2015-07-21 18:45:54'),('$LOCO','2014-11-10 21:53:42',36.59,'kaylatausche_tweets','2014-11-10 21:53:42'),('$LOW','2016-02-25 14:42:21',68.7,'jimcramer_tweets','2016-02-25 14:42:21'),('$LULU','2016-04-11 15:51:01',61.23,'jimcramer_tweets','2016-01-04 18:48:04'),('$LUV','2015-05-28 20:59:01',36.81,'ScottWapnerCNBC_tweets','2014-10-23 14:21:57'),('$M','2016-01-19 03:44:23',38.76,'jimcramer_tweets','2015-06-29 15:21:05'),('$MA','2016-03-11 16:12:53',88.58,'jimcramer_tweets','2016-03-11 16:12:53'),('$MAC','2015-03-27 14:51:34',86.15,'davidfaber_tweets','2015-03-27 14:51:34'),('$MBLY','2014-09-09 17:15:21',56.6,'ScottWapnerCNBC_tweets','2014-09-09 17:15:21'),('$MCD','2016-03-31 13:47:22',125.68,'jimcramer_tweets','2014-12-29 16:24:58'),('$MCHP','2014-10-10 15:04:45',39.96,'ScottWapnerCNBC_tweets','2014-10-10 15:04:45'),('$MCK','2016-01-13 19:46:04',157.84,'jimcramer_tweets','2016-01-13 19:46:04'),('$MDLZ','2016-02-03 16:33:08',39.23,'ScottWapnerCNBC_tweets','2014-05-07 14:52:01'),('$MDT','2016-01-11 17:25:23',73,'MelissaLeeCNBC_tweets','2014-09-23 12:37:56'),('$MDVN','2016-03-31 00:41:49',45.98,'MelissaLeeCNBC_tweets','2016-03-28 20:35:24'),('$MET','2016-03-31 07:59:28',43.94,'jimcramer_tweets','2014-12-18 21:09:37'),('$MFRM','2016-03-21 20:08:40',42.69,'jimcramer_tweets','2016-03-21 20:08:40'),('$MGM','2016-01-12 00:15:57',21.13,'jimcramer_tweets','2013-03-14 14:32:40'),('$MNK','2016-03-18 15:20:13',54.62,'MelissaLeeCNBC_tweets','2015-11-09 19:22:26'),('$MNKD','2016-01-06 16:13:16',0.73,'jimcramer_tweets','2016-01-06 16:13:16'),('$MNST','2015-11-06 23:32:14',150.24,'MelissaLeeCNBC_tweets','2015-11-06 23:32:14'),('$MON','2015-08-25 14:50:36',89.42,'davidfaber_tweets','2014-06-25 12:46:21'),('$MONIF','2014-05-23 10:35:50',1.18,'ScottWapnerCNBC_tweets','2014-05-23 10:35:50'),('$MPEL','2015-10-13 15:09:31',18.07,'MelissaLeeCNBC_tweets','2015-10-13 15:09:31'),('$MRK','2016-04-06 20:44:43',55.63,'kaylatausche_tweets','2013-10-28 12:04:08'),('$MRO','2016-03-01 17:50:24',7.96,'jimcramer_tweets','2016-03-01 17:50:24'),('$MRX','2011-07-15 13:42:26',39.05,'davidfaber_tweets','2011-07-15 13:42:26'),('$MS','2016-01-13 16:44:44',26.89,'kaylatausche_tweets','2011-07-21 19:46:56'),('$MSFT','2016-03-04 16:48:23',52.03,'kaylatausche_tweets','2013-08-23 14:20:20'),('$MTB','2015-11-02 13:24:59',120.27,'kaylatausche_tweets','2015-11-02 13:24:59'),('$MTCH','2016-01-14 09:46:51',13.06,'jimcramer_tweets','2016-01-14 09:46:51'),('$MTW','2015-10-15 15:38:29',15.07,'MelissaLeeCNBC_tweets','2015-02-09 14:14:16'),('$MU','2015-12-22 17:15:32',14.61,'jimcramer_tweets','2014-10-17 14:22:47'),('$MW','2014-03-11 16:11:21',57.14,'davidfaber_tweets','2013-11-07 15:14:22'),('$MY','2015-05-26 16:43:51',3.5,'ScottWapnerCNBC_tweets','2015-05-26 16:43:51'),('$MYL','2016-02-11 12:31:02',41.42,'kaylatausche_tweets','2014-07-14 14:42:37'),('$NEM','2016-02-09 01:54:18',24.3,'jimcramer_tweets','2016-02-09 01:54:18'),('$NFLX','2016-03-04 17:00:19',101.58,'kaylatausche_tweets','2011-04-25 20:34:26'),('$NKE','2016-04-12 08:00:37',58.55,'jimcramer_tweets','2014-12-31 14:36:54'),('$NOC','2011-04-27 12:24:49',62.9,'davidfaber_tweets','2011-04-27 12:24:49'),('$NRG','2016-03-11 00:04:20',13.74,'jimcramer_tweets','2016-03-11 00:04:20'),('$NSC','2016-03-18 21:53:39',84.02,'jimcramer_tweets','2016-03-18 21:53:39'),('$NTAP','2015-12-21 19:54:45',27.6,'jimcramer_tweets','2013-05-16 15:42:37'),('$NXPI','2016-01-05 17:52:25',82.39,'MelissaLeeCNBC_tweets','2015-03-02 14:53:08'),('$NXY','2012-12-07 20:29:48',23.52,'davidfaber_tweets','2012-12-07 20:29:48'),('$NYX','2011-07-27 19:51:12',34.24,'davidfaber_tweets','2011-04-01 13:21:52'),('$O','2016-01-19 21:44:02',53.01,'MelissaLeeCNBC_tweets','2015-10-26 13:41:15'),('$ODP','2015-10-14 15:55:42',7,'kaylatausche_tweets','2013-02-20 14:57:14'),('$ONCE','2015-10-05 15:42:12',53.02,'kaylatausche_tweets','2015-10-05 15:42:12'),('$OPK','2016-03-30 14:59:37',9.9,'jimcramer_tweets','2016-03-30 14:59:37'),('$ORBC','2015-12-22 14:24:06',7.42,'kaylatausche_tweets','2015-12-22 14:24:06'),('$ORCL','2016-03-16 08:39:18',40.22,'jimcramer_tweets','2014-09-18 20:07:00'),('$OVTI','2011-08-26 15:33:50',17.27,'davidfaber_tweets','2011-08-26 15:33:50'),('$OXY','2016-03-18 18:17:16',71.3,'jimcramer_tweets','2016-03-18 18:17:16'),('$P','2016-03-17 15:44:39',10.36,'kaylatausche_tweets','2011-09-16 18:13:07'),('$PANW','2016-02-25 22:12:11',140.29,'jimcramer_tweets','2016-02-25 22:12:11'),('$PBR','2016-02-02 22:42:41',2.98,'jimcramer_tweets','2016-01-05 22:20:34'),('$PBY','2015-12-28 21:51:57',17.41,'kaylatausche_tweets','2015-12-28 21:51:57'),('$PCLN','2016-01-05 14:22:53',1210.69,'kaylatausche_tweets','2011-05-18 18:21:35'),('$PCS','2012-09-25 16:09:20',5,'davidfaber_tweets','2012-09-25 14:40:41'),('$PEP','2016-03-30 19:19:26',102.69,'jimcramer_tweets','2011-11-17 15:02:19'),('$PFE','2016-04-06 22:39:21',32.93,'jimcramer_tweets','2014-11-17 17:43:15'),('$PG','2016-02-09 11:45:44',82.64,'jimcramer_tweets','2011-09-02 15:20:54'),('$PHM','2016-04-11 16:50:52',17.58,'ScottWapnerCNBC_tweets','2016-04-04 12:54:01'),('$PLCE','2016-03-18 16:56:27',80.44,'jimcramer_tweets','2016-03-16 08:41:14'),('$PM','2016-04-06 13:42:19',101.17,'MelissaLeeCNBC_tweets','2011-09-30 18:29:39'),('$PNRA','2016-03-09 20:50:16',209.52,'jimcramer_tweets','2015-05-11 21:07:37'),('$PPC','2014-05-27 12:15:28',25.52,'davidfaber_tweets','2014-05-27 12:15:28'),('$PRGO','2015-04-29 14:34:01',184.74,'davidfaber_tweets','2015-04-24 13:51:02'),('$PSTG','2015-10-07 14:19:27',16.01,'kaylatausche_tweets','2015-10-07 13:37:17'),('$PVH','2016-03-24 20:16:02',94.29,'jimcramer_tweets','2016-03-23 21:41:01'),('$PXD','2015-05-07 17:10:02',159.57,'ScottWapnerCNBC_tweets','2015-05-07 17:10:02'),('$PYPL','2016-04-12 13:29:14',37.8,'jimcramer_tweets','2015-10-26 13:45:51'),('$QCOM','2015-09-09 16:25:18',54.32,'MelissaLeeCNBC_tweets','2015-02-09 21:19:28'),('$QQQ','2015-07-21 21:27:03',113.91,'kaylatausche_tweets','2014-09-25 14:43:59'),('$QVCA','2015-11-13 15:53:01',25.73,'kaylatausche_tweets','2015-11-13 15:53:01'),('$RAD','2015-10-27 21:23:58',8.67,'kaylatausche_tweets','2015-10-27 16:49:31'),('$RAX','2014-09-16 20:18:51',39.34,'davidfaber_tweets','2014-09-16 20:18:51'),('$RGLS','2016-02-17 14:13:07',7.49,'jimcramer_tweets','2016-02-17 14:13:07'),('$RH','2016-02-25 21:26:18',38.49,'jimcramer_tweets','2015-08-13 15:29:46'),('$RIG','2016-01-06 17:20:54',11.52,'MelissaLeeCNBC_tweets','2016-01-06 17:20:54'),('$RNG','2015-07-31 19:02:44',19.7,'MelissaLeeCNBC_tweets','2015-07-31 19:02:44'),('$S','2016-04-13 13:28:50',3.42,'jimcramer_tweets','2011-07-28 12:49:30'),('$SAFM','2015-08-12 17:15:45',75.21,'MelissaLeeCNBC_tweets','2015-08-12 17:15:45'),('$SAN','2016-04-11 13:46:44',4.21,'jimcramer_tweets','2016-04-11 13:46:44'),('$SAVE','2016-02-09 16:21:49',42.73,'jimcramer_tweets','2016-02-09 16:21:49'),('$SBUX','2016-04-12 13:29:20',59.5,'jimcramer_tweets','2012-12-05 13:21:15'),('$SC','2014-12-09 16:14:49',18.61,'kaylatausche_tweets','2014-12-09 16:14:49'),('$SCTY','2015-12-22 20:14:42',51.32,'MelissaLeeCNBC_tweets','2015-08-18 14:41:38'),('$SD','2015-12-23 22:11:12',0.24,'jimcramer_tweets','2015-12-23 22:11:12'),('$SEDG','2015-09-10 14:06:16',27.95,'MelissaLeeCNBC_tweets','2015-09-10 14:06:16'),('$SEE','2011-06-01 15:38:58',23.84,'davidfaber_tweets','2011-06-01 15:38:58'),('$SFD','2013-09-20 13:21:26',1.6,'davidfaber_tweets','2013-05-29 14:39:06'),('$SHAK','2016-03-23 01:42:33',32.81,'ScottWapnerCNBC_tweets','2015-01-30 13:37:32'),('$SHE','2016-03-11 20:49:48',60.344,'jimcramer_tweets','2016-03-11 20:49:48'),('$SHLD','2016-02-25 14:42:47',17.52,'jimcramer_tweets','2011-10-04 15:52:56'),('$SIG','2015-08-28 18:10:57',139.66,'kaylatausche_tweets','2015-08-28 18:10:57'),('$SIRI','2016-02-03 18:34:57',3.5,'jimcramer_tweets','2011-09-14 12:20:24'),('$SKX','2015-04-24 15:26:29',89.66,'ScottWapnerCNBC_tweets','2015-04-24 15:26:29'),('$SLB','2016-01-25 12:25:28',63.3,'jimcramer_tweets','2016-01-25 12:25:28'),('$SLXP','2014-09-22 22:11:13',159.83,'davidfaber_tweets','2014-09-22 22:11:13'),('$SNCR','2014-11-14 16:22:25',48.38,'kaylatausche_tweets','2014-11-14 16:22:25'),('$SNE','2014-12-24 16:34:59',21.32,'kaylatausche_tweets','2014-12-19 16:31:41'),('$SNY','2015-07-24 18:33:09',53.54,'MelissaLeeCNBC_tweets','2015-07-24 18:33:09'),('$SONC','2016-04-05 22:36:09',35.34,'jimcramer_tweets','2016-01-06 09:19:25'),('$SP','2016-02-05 17:31:13',21.81,'MelissaLeeCNBC_tweets','2016-02-05 17:31:13'),('$SPLS','2015-02-04 15:18:01',16.73,'kaylatausche_tweets','2015-02-04 15:18:01'),('$SPWR','2015-08-13 14:00:06',24.5,'MelissaLeeCNBC_tweets','2015-08-13 14:00:06'),('$SPY','2016-02-01 20:29:55',193.65,'MelissaLeeCNBC_tweets','2014-09-02 15:47:03'),('$SQ','2016-03-09 21:12:20',12.03,'kaylatausche_tweets','2015-11-19 13:01:37'),('$STI','2016-04-13 13:44:54',38.45,'jimcramer_tweets','2014-12-09 16:46:53'),('$STZ','2016-04-06 13:44:17',160.34,'jimcramer_tweets','2015-12-21 20:42:00'),('$SUNE','2016-04-01 22:11:05',0.43,'jimcramer_tweets','2014-10-20 15:37:09'),('$SWK','2016-01-29 18:02:10',94.34,'jimcramer_tweets','2016-01-29 18:02:10'),('$SWKS','2016-03-18 21:35:34',77.02,'jimcramer_tweets','2016-03-18 21:35:34'),('$SWN','2016-02-19 00:49:29',7.09,'jimcramer_tweets','2016-02-02 15:07:21'),('$SYY','2015-08-14 16:38:57',41.38,'ScottWapnerCNBC_tweets','2015-08-14 16:38:47'),('$T','2016-02-19 17:24:02',36.57,'jimcramer_tweets','2011-08-31 16:10:24'),('$TAN','2015-12-21 16:22:58',32.91,'MelissaLeeCNBC_tweets','2015-12-18 17:20:38'),('$TASR','2016-02-29 14:49:45',19.38,'jimcramer_tweets','2016-02-29 14:49:45'),('$TAXI','2014-12-05 16:41:22',10.23,'kaylatausche_tweets','2014-12-05 16:41:22'),('$TCK','2016-02-22 15:58:47',6.84,'MelissaLeeCNBC_tweets','2016-02-22 15:58:47'),('$TERP','2015-12-02 14:44:51',9.11,'ScottWapnerCNBC_tweets','2015-12-02 14:39:05'),('$TEVA','2015-04-24 14:12:22',64.41,'davidfaber_tweets','2015-04-24 14:12:22'),('$TGT','2016-04-12 13:50:55',80.78,'jimcramer_tweets','2014-09-10 15:39:31'),('$THC','2015-12-15 16:31:56',27.45,'MelissaLeeCNBC_tweets','2015-12-15 16:31:56'),('$TIF','2016-02-01 14:46:46',64.73,'jimcramer_tweets','2016-01-19 19:45:10'),('$TIN','2011-09-06 14:50:09',0.51,'davidfaber_tweets','2011-09-06 14:50:09'),('$TLT','2016-02-11 13:48:36',133.72,'jimcramer_tweets','2015-09-01 17:03:48'),('$TMUS','2016-02-17 17:09:44',36.85,'jimcramer_tweets','2014-07-31 19:38:55'),('$TPX','2015-02-17 16:17:23',56.47,'ScottWapnerCNBC_tweets','2015-02-17 16:15:40'),('$TRLA','2012-09-20 14:44:17',24,'davidfaber_tweets','2012-09-20 14:44:17'),('$TROW','2015-10-14 12:20:16',68.98,'kaylatausche_tweets','2015-10-14 12:20:16'),('$TSLA','2016-04-06 13:15:24',265.42,'MelissaLeeCNBC_tweets','2013-05-14 14:08:11'),('$TST','2016-03-24 19:06:43',1.23,'jimcramer_tweets','2016-01-05 00:02:05'),('$TWC','2015-05-22 22:29:50',171.18,'davidfaber_tweets','2013-06-14 17:58:34'),('$TWTR','2016-04-07 13:42:08',16.98,'jimcramer_tweets','2013-11-07 13:46:12'),('$TWX','2016-02-19 15:34:11',64.67,'davidfaber_tweets','2012-05-02 13:28:15'),('$UA','2016-04-11 14:12:20',41.15,'ScottWapnerCNBC_tweets','2014-11-07 01:05:24'),('$UAL','2016-04-11 22:01:01',53.71,'ScottWapnerCNBC_tweets','2016-03-08 13:45:31'),('$UDF','2016-02-18 20:17:39',3.2,'davidfaber_tweets','2016-02-18 20:17:39'),('$ULTA','2016-03-11 23:50:56',191.62,'jimcramer_tweets','2016-03-11 23:50:56'),('$UNP','2016-03-18 18:16:13',84.42,'jimcramer_tweets','2015-05-13 16:44:25'),('$UPS','2016-03-11 19:42:57',100.82,'jimcramer_tweets','2016-03-11 19:42:57'),('$UTHR','2015-07-28 18:42:31',165.96,'MelissaLeeCNBC_tweets','2015-07-28 18:42:31'),('$UTX','2016-03-11 00:15:57',96.75,'jimcramer_tweets','2011-09-22 12:51:21'),('$V','2016-02-12 16:40:53',70.42,'kaylatausche_tweets','2015-10-05 20:10:59'),('$VAL','2016-03-22 08:05:00',104.68,'jimcramer_tweets','2016-03-22 08:05:00'),('$VIA','2016-02-04 16:49:03',48.68,'kaylatausche_tweets','2012-02-02 13:35:22'),('$VIAB','2016-02-09 20:43:56',32.86,'davidfaber_tweets','2015-05-07 19:28:51'),('$VIRT','2015-09-01 17:17:06',23.69,'MelissaLeeCNBC_tweets','2015-08-28 17:47:19'),('$VIX','2015-09-17 18:58:37',7545.45,'MelissaLeeCNBC_tweets','2015-07-20 19:03:38'),('$VMC','2011-12-12 15:50:15',38.7,'davidfaber_tweets','2011-12-12 15:50:15'),('$VMED','2013-02-05 13:46:38',45.61,'davidfaber_tweets','2013-02-05 13:46:38'),('$VMW','2015-08-31 16:03:10',79.15,'kaylatausche_tweets','2015-08-31 16:03:10'),('$VOD','2013-08-29 19:42:53',31.8,'davidfaber_tweets','2013-05-03 14:30:45'),('$VRTX','2015-12-30 00:30:35',126.4,'MelissaLeeCNBC_tweets','2015-12-30 00:30:35'),('$VRX','2016-04-08 01:59:35',33.67,'ScottWapnerCNBC_tweets','2014-04-21 20:35:10'),('$VSI','2015-10-22 18:32:17',31.57,'MelissaLeeCNBC_tweets','2015-10-22 18:32:17'),('$VZ','2016-02-19 20:13:41',50.86,'jimcramer_tweets','2011-07-22 14:10:51'),('$WBMD','2012-01-19 13:43:23',26.76,'davidfaber_tweets','2012-01-19 13:43:23'),('$WDAY','2016-03-01 19:46:07',71.74,'jimcramer_tweets','2016-03-01 03:16:39'),('$WDC','2014-12-30 16:16:59',112.31,'kaylatausche_tweets','2014-12-30 16:16:59'),('$WFC','2016-03-24 11:25:11',48.9,'jimcramer_tweets','2014-11-03 19:27:15'),('$WFM','2016-03-14 16:04:29',33.49,'jimcramer_tweets','2015-05-07 20:48:25'),('$WFT','2016-03-11 14:36:10',7.24,'jimcramer_tweets','2016-03-11 14:36:10'),('$WHR','2015-08-19 16:30:09',184.58,'MelissaLeeCNBC_tweets','2015-08-19 16:30:09'),('$WMB','2016-03-09 22:51:08',17.96,'davidfaber_tweets','2011-06-24 14:21:05'),('$WMT','2016-01-07 17:15:27',65.03,'MelissaLeeCNBC_tweets','2011-09-08 20:21:44'),('$WWAV','2016-03-18 21:48:58',41.01,'jimcramer_tweets','2015-12-21 23:04:23'),('$WY','2011-07-11 18:51:53',21.72,'davidfaber_tweets','2011-07-11 18:51:53'),('$WYNN','2016-04-07 13:42:55',99.99,'jimcramer_tweets','2016-04-07 13:42:46'),('$XBI','2016-01-11 19:38:54',57.14,'MelissaLeeCNBC_tweets','2016-01-11 18:49:45'),('$XLE','2016-02-29 16:41:20',56.58,'MelissaLeeCNBC_tweets','2015-08-25 20:07:11'),('$XLF','2016-02-12 16:33:37',20.49,'MelissaLeeCNBC_tweets','2015-09-17 18:43:07'),('$XLNX','2016-01-20 23:04:56',43.08,'jimcramer_tweets','2016-01-20 23:04:56'),('$XLV','2016-03-18 17:35:46',66.84,'MelissaLeeCNBC_tweets','2016-03-18 17:35:46'),('$XLY','2015-07-24 19:54:22',78.85,'MelissaLeeCNBC_tweets','2015-07-24 19:54:22'),('$XOM','2016-02-24 09:22:39',81.52,'jimcramer_tweets','2011-04-28 12:24:33'),('$XON','2016-03-18 19:28:18',37.38,'MelissaLeeCNBC_tweets','2016-03-18 19:28:18'),('$XRX','2016-01-28 21:12:31',9.23,'ScottWapnerCNBC_tweets','2015-10-26 14:34:55'),('$YELP','2015-08-14 16:07:14',25.77,'MelissaLeeCNBC_tweets','2015-05-07 17:02:55'),('$YHOO','2016-04-11 13:30:02',36.48,'jimcramer_tweets','2011-09-14 14:00:34'),('$YOKU','2014-02-27 20:09:52',30.86,'ScottWapnerCNBC_tweets','2011-06-23 15:11:57'),('$YUM','2016-02-05 11:13:54',69.76,'jimcramer_tweets','2015-05-01 15:31:07'),('$Z','2016-03-24 20:20:59',22.53,'jimcramer_tweets','2016-01-25 14:08:24'),('$ZBRA','2014-04-15 12:38:00',61.39,'davidfaber_tweets','2014-04-15 12:38:00'),('$ZTS','2016-01-27 14:56:48',43.15,'ScottWapnerCNBC_tweets','2014-11-12 14:34:52');
/*!40000 ALTER TABLE `FoundInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-16 18:25:21
