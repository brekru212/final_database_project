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
-- Table structure for table `StockInformation`
--

DROP TABLE IF EXISTS `StockInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StockInformation` (
  `TICKER` varchar(45) DEFAULT NULL,
  `LastPrice` float DEFAULT NULL,
  `TimesMentioned` bigint(21) DEFAULT NULL,
  `LastUpdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StockInformation`
--

LOCK TABLES `StockInformation` WRITE;
/*!40000 ALTER TABLE `StockInformation` DISABLE KEYS */;
INSERT INTO `StockInformation` VALUES ('$AA',9.79,15,'2016-04-13 13:50:21'),('$AAI',0.5,1,'2014-12-29 19:32:07'),('$AAL',42.42,1,'2015-10-09 16:28:31'),('$AAP',79.27,2,'2012-11-13 14:56:44'),('$AAPL',109.02,137,'2016-04-11 15:37:18'),('$AB',20.97,1,'2013-02-14 14:29:40'),('$ABBV',54.63,1,'2014-10-15 19:01:59'),('$ABT',39.9,1,'2016-03-15 14:41:01'),('$ADBE',89.96,5,'2016-03-17 20:15:01'),('$AEM',30.07,1,'2016-02-01 15:09:13'),('$AEP',66.01,3,'2016-04-08 17:18:47'),('$AET',117.43,1,'2015-07-06 15:37:32'),('$AF',16.53,1,'2015-10-29 21:38:52'),('$AGN',228.37,44,'2016-04-11 15:50:38'),('$AGU',95.04,2,'2013-04-09 19:02:39'),('$AHL',43.77,1,'2014-04-14 14:57:47'),('$AIG',55.91,8,'2016-01-26 16:42:25'),('$AIMT',23,1,'2015-08-07 19:19:43'),('$ALL',24.45,1,'2011-08-26 20:29:30'),('$ALTR',51.68,1,'2015-06-01 15:07:03'),('$AMAT',17.45,1,'2013-09-24 14:20:27'),('$AMBA',122.99,1,'2015-07-23 15:13:39'),('$AMD',1.99,1,'2016-02-02 17:28:38'),('$AMGN',133.82,4,'2015-09-29 16:52:41'),('$AMTD',33.75,1,'2015-09-10 19:08:34'),('$AMZN',595.93,36,'2016-04-11 19:04:03'),('$AN',50.76,1,'2016-01-06 16:35:11'),('$ANTM',158.58,2,'2015-07-09 15:09:01'),('$APC',61.01,1,'2015-11-11 13:46:01'),('$APD',130.72,6,'2014-06-18 12:59:40'),('$APX',4.29,1,'2011-08-11 18:27:58'),('$ARO',0.26,2,'2016-03-18 17:05:59'),('$ATHN',126.78,1,'2014-05-05 21:11:47'),('$AVAV',20.17,1,'2015-09-18 17:50:46'),('$AVGO',141.49,2,'2015-05-27 19:49:09'),('$AVP',4.38,8,'2016-03-14 18:01:27'),('$AXON',13.66,2,'2016-02-02 19:40:59'),('$AXP',58.75,13,'2016-03-10 21:50:04'),('$AYA',28.03,1,'2015-07-01 16:22:40'),('$AZO',326.96,2,'2012-01-04 16:08:56'),('$B',38.83,3,'2015-08-03 20:32:31'),('$BA',108.44,5,'2016-02-11 15:46:26'),('$BABA',77.33,66,'2016-01-06 18:48:48'),('$BAC',12.54,55,'2016-02-22 09:34:00'),('$BBBY',48.97,1,'2016-04-07 12:50:50'),('$BBRY',9.13,6,'2015-12-23 19:39:17'),('$BBY',39.41,5,'2014-11-28 15:58:40'),('$BCS',8.89,1,'2016-03-01 14:35:32'),('$BEAM',83.42,1,'2014-01-13 13:05:26'),('$BHI',58.28,1,'2015-07-22 16:23:56'),('$BHP',24.09,1,'2016-02-23 18:51:14'),('$BID',42.74,9,'2014-04-24 11:52:32'),('$BIDU',152.06,1,'2015-08-27 17:19:15'),('$BIIB',250.78,5,'2016-03-18 21:51:07'),('$BK',43.41,3,'2015-05-08 23:00:47'),('$BKS',19.12,4,'2014-04-03 14:18:05'),('$BLC',13.87,2,'2013-09-20 13:57:16'),('$BLK',344.54,3,'2015-06-29 15:41:32'),('$BLUE',98.54,1,'2015-10-05 14:53:54'),('$BMC',44.51,2,'2012-05-15 12:48:22'),('$BMRN',80.94,1,'2016-03-18 03:19:27'),('$BMS',48.52,1,'2016-02-10 18:08:41'),('$BMY',64.96,3,'2016-03-11 11:21:47'),('$BOBE',48.49,1,'2014-08-20 13:23:04'),('$BOJA',23.75,1,'2015-05-08 21:17:49'),('$BOX',16.38,4,'2015-07-23 13:56:51'),('$BP',29.02,4,'2016-02-02 08:23:53'),('$BRCM',57.16,2,'2015-05-27 23:01:15'),('$BRK',0.005,2,'2015-03-30 14:24:35'),('$BSX',14.84,1,'2015-02-17 21:23:33'),('$BTU',2.31,3,'2016-02-18 09:48:06'),('$BUD',114.45,2,'2014-09-15 13:01:07'),('$BX',23.75,4,'2016-01-20 02:16:00'),('$BXLT',37.1,1,'2015-08-04 19:51:02'),('$C',40.36,22,'2016-02-03 15:05:17'),('$CAB',39.26,1,'2015-10-28 12:31:18'),('$CAG',41.43,1,'2015-12-22 15:09:40'),('$CAM',59.93,1,'2015-08-26 13:19:15'),('$CAT',75.9,3,'2016-03-17 12:22:10'),('$CBOU',12.2,1,'2011-09-29 17:49:55'),('$CBS',42.92,6,'2015-09-04 18:45:07'),('$CCL',53.94,1,'2015-12-21 15:15:24'),('$CCME',2.16,1,'2011-05-19 14:39:31'),('$CELG',103.03,5,'2016-01-11 17:59:01'),('$CF',269.37,2,'2014-09-23 12:00:29'),('$CFG',22.09,1,'2016-03-14 21:19:11'),('$CG',25.54,1,'2014-12-16 17:49:04'),('$CHK',1.98,18,'2016-02-18 23:48:16'),('$CHTR',193.11,8,'2015-03-31 12:09:23'),('$CI',161.29,1,'2015-07-02 13:45:14'),('$CIT',27.7,3,'2016-02-02 19:49:30'),('$CKEC',22.4,1,'2015-12-17 23:14:24'),('$CLF',1.32,3,'2016-01-13 12:44:31'),('$CLLS',29.88,1,'2015-12-23 01:10:57'),('$CLR',40.98,1,'2014-11-28 15:44:02'),('$CLVS',87,1,'2015-06-01 19:18:14'),('$CLWR',5.045,4,'2013-06-20 18:43:28'),('$CLX',124.71,5,'2016-02-04 22:23:19'),('$CMA',36.64,1,'2011-04-19 13:28:12'),('$CMCSA',56.46,7,'2015-12-21 13:47:09'),('$CME',92.56,1,'2015-09-02 16:49:21'),('$CMG',463.42,20,'2016-04-05 03:13:41'),('$CMRX',32.91,1,'2014-10-08 15:25:04'),('$COL',56.21,1,'2011-09-16 17:09:14'),('$COLM',58.52,1,'2016-02-19 14:14:08'),('$COP',65.51,2,'2011-08-26 21:26:57'),('$COST',156.39,2,'2015-11-11 03:33:56'),('$CRM',69.72,16,'2016-02-26 22:45:10'),('$CRTO',35.39,1,'2013-10-30 13:54:57'),('$CS',13.19,3,'2016-04-07 15:24:40'),('$CSCO',27.86,7,'2016-03-11 23:53:58'),('$CSX',22.36,2,'2016-02-03 17:56:28'),('$CTB',33.82,1,'2013-06-13 14:35:16'),('$CTL',39.9,1,'2014-07-29 13:20:17'),('$CVC',31.54,13,'2015-12-23 18:11:05'),('$CVS',94.63,2,'2015-11-27 14:58:16'),('$CVX',96.33,5,'2016-04-08 19:05:41'),('$CWH',1.255,5,'2014-02-21 15:54:30'),('$CYBR',61.72,2,'2015-07-23 15:41:22'),('$CYH',47.23,1,'2013-07-29 13:52:25'),('$CZR',15.39,1,'2012-02-08 16:34:25'),('$D',70.7,5,'2015-03-25 20:16:43'),('$DAL',44.04,1,'2016-02-04 13:51:20'),('$DATA',42.39,2,'2016-02-19 00:27:37'),('$DB',19.27,7,'2016-03-10 15:40:43'),('$DBD',38.29,1,'2014-09-18 15:47:18'),('$DD',63.18,15,'2016-03-04 14:04:49'),('$DDD',12.63,1,'2016-03-15 17:20:29'),('$DELL',13.84,25,'2013-10-04 12:32:44'),('$DG',65.87,7,'2015-01-15 13:06:18'),('$DIA',176.19,1,'2015-08-10 17:49:15'),('$DIN',96.96,1,'2016-02-25 19:27:54'),('$DIS',90.31,19,'2016-02-11 13:16:55'),('$DISCA',26.4,3,'2015-09-29 12:42:03'),('$DISH',47.91,12,'2016-03-24 20:12:26'),('$DJIA',16643,3,'2015-08-28 20:07:15'),('$DKS',40.43,1,'2016-02-23 17:08:02'),('$DLTR',66.41,4,'2015-01-15 13:27:10'),('$DNB',81.16,1,'2012-11-01 16:36:01'),('$DNKN',46.66,2,'2016-02-26 12:11:13'),('$DNR',1.39,1,'2016-03-01 13:54:16'),('$DOW',48.83,6,'2016-03-08 11:28:11'),('$DPZ',131.72,7,'2016-03-11 23:29:05'),('$DRI',63.7,5,'2015-12-21 15:07:17'),('$DUK',68.69,1,'2012-07-03 12:35:47'),('$E',28.33,1,'2016-04-05 22:45:24'),('$EA',64.64,2,'2016-03-28 15:39:42'),('$EBAY',28.57,19,'2015-07-20 15:12:59'),('$EDU',27.73,1,'2015-10-29 18:10:58'),('$EEM',36.32,1,'2015-08-06 15:55:19'),('$EIGI',11.25,1,'2013-10-25 16:11:39'),('$ELN',0.025,1,'2013-06-13 12:44:54'),('$EMC',27.86,7,'2015-10-09 17:58:48'),('$EMR',44.1,1,'2016-01-08 20:18:27'),('$ENDP',30.03,3,'2016-03-17 16:02:30'),('$ENH',52.32,1,'2014-04-14 12:45:24'),('$ESRX',71.87,4,'2016-01-29 15:47:29'),('$ETE',6.81,4,'2016-02-26 15:55:05'),('$ETP',27.14,1,'2016-02-25 09:42:35'),('$ETSY',7.39,5,'2016-02-23 23:33:05'),('$EWG',26.48,1,'2015-12-16 19:49:05'),('$EXPR',18.32,1,'2012-06-05 13:25:55'),('$F',13.19,7,'2016-03-09 13:09:38'),('$FB',114.7,45,'2016-03-30 19:28:52'),('$FCAU',7.45,1,'2016-01-27 15:58:29'),('$FCX',10.76,16,'2016-03-18 21:41:56'),('$FDC',15.75,3,'2015-10-15 14:02:42'),('$FDML',13.1,5,'2015-04-22 03:55:55'),('$FDX',161.34,2,'2016-03-17 01:14:05'),('$FE',31.07,1,'2015-12-21 19:57:47'),('$FEYE',23.24,3,'2015-11-10 18:30:24'),('$FIT',16.04,6,'2016-02-03 17:55:57'),('$FL',62.5,1,'2016-02-29 20:31:50'),('$FLEX',10.08,1,'2016-02-02 15:02:53'),('$FLO',18.67,1,'2014-11-14 19:55:35'),('$FMI',35.35,1,'2013-09-25 13:23:26'),('$FNMA',1.75,3,'2015-12-18 23:06:15'),('$FOX',32.82,5,'2015-06-11 14:01:40'),('$FOXA',32.9,1,'2015-06-11 13:52:00'),('$FSLR',61.79,3,'2016-02-23 20:15:26'),('$FTNT',46.83,1,'2015-07-23 15:39:12'),('$FUEL',56.1,2,'2013-09-20 13:15:21'),('$FUN',57.88,1,'2016-03-04 20:35:01'),('$FXCM',12.63,1,'2015-01-16 16:21:29'),('$FXE',110.13,1,'2015-09-28 14:55:41'),('$G',22.77,3,'2015-03-09 14:50:55'),('$GDDY',26.15,1,'2015-04-01 14:20:59'),('$GDX',19.11,2,'2016-02-24 16:58:17'),('$GE',31.23,16,'2016-04-04 13:45:02'),('$GHDX',31.66,1,'2016-01-08 01:46:38'),('$GILD',84.05,4,'2016-02-01 19:52:23'),('$GIS',65.36,2,'2016-04-04 19:24:00'),('$GLBL',4.03,2,'2015-11-30 21:03:00'),('$GLD',117.11,1,'2016-02-26 16:10:58'),('$GLPI',36.43,1,'2015-03-09 12:01:09'),('$GM',30.49,14,'2016-01-13 17:43:09'),('$GMC',45000,1,'2015-09-29 14:36:19'),('$GMCR',88.89,1,'2015-12-07 18:20:24'),('$GNW',1.93,1,'2016-02-17 03:20:50'),('$GOOG',726.95,22,'2016-02-03 00:14:12'),('$GOOGL',701.02,10,'2016-02-09 01:43:20'),('$GPRO',11.89,26,'2016-03-01 16:25:46'),('$GPS',23.98,1,'2016-04-11 13:47:04'),('$GR',0.13,2,'2011-09-22 14:13:47'),('$GRPN',2.97,2,'2015-11-04 15:17:11'),('$GRUB',25.92,5,'2015-08-26 17:13:08'),('$GS',153.94,31,'2016-03-11 14:35:01'),('$GSAT',2.8,1,'2014-11-17 16:02:19'),('$GWPH',84.71,3,'2016-03-14 16:18:25'),('$H',47.26,2,'2016-03-24 11:23:37'),('$HAR',74.39,3,'2016-01-29 22:48:55'),('$HAS',54.98,1,'2014-11-13 16:14:32'),('$HCA',65.46,1,'2015-12-14 18:11:25'),('$HD',130.88,5,'2016-03-17 12:25:39'),('$HES',38.02,3,'2016-02-05 14:26:59'),('$HLF',52.42,50,'2016-03-03 17:33:44'),('$HLT',22.78,1,'2014-06-02 14:18:07'),('$HMA',13.24,5,'2013-08-12 20:13:04'),('$HOG',45.29,1,'2016-01-05 18:42:39'),('$HON',106.49,10,'2016-03-02 14:49:37'),('$HOO',40.241,1,'2015-04-14 20:34:38'),('$HOT',78.39,2,'2016-04-05 03:12:23'),('$HP',90.57,3,'2014-10-06 10:45:52'),('$HPE',15.44,3,'2016-03-04 17:34:56'),('$HPQ',12.64,20,'2015-11-25 14:19:30'),('$HSH',58.65,3,'2014-06-03 12:22:17'),('$HSIC',153.89,1,'2015-12-21 20:50:42'),('$HTZ',8.59,8,'2016-04-11 13:28:50'),('$HYG',77.91,4,'2016-01-15 20:31:35'),('$HZNP',19.21,4,'2016-01-12 14:39:55'),('$IACI',73.27,6,'2015-05-11 15:57:16'),('$IBB',251.34,6,'2016-03-18 03:19:35'),('$IBM',152.07,29,'2016-04-04 13:44:54'),('$ICE',130.1,2,'2012-12-20 00:50:51'),('$IEP',72.14,1,'2015-08-19 16:34:11'),('$ILMN',55.15,1,'2012-01-25 14:39:03'),('$IMAX',31.55,1,'2016-01-08 20:30:45'),('$INSY',25.43,1,'2015-11-05 12:57:43'),('$INTC',32.8,10,'2015-10-14 17:05:23'),('$INTU',100.83,2,'2016-03-17 22:16:22'),('$IOTS',5.53,1,'2016-02-29 11:47:01'),('$IP',37.48,1,'2015-09-28 20:56:10'),('$IPG',20.15,1,'2014-07-24 13:02:18'),('$IWM',99.12,2,'2016-01-25 20:45:20'),('$JACK',64.85,2,'2016-03-17 01:22:16'),('$JAH',54.78,1,'2015-07-13 14:48:00'),('$JBLU',11.33,1,'2014-09-18 20:31:23'),('$JCP',11.51,10,'2016-03-09 01:13:20'),('$JEF',12.07,3,'2011-11-04 17:39:31'),('$JNJ',108.59,6,'2016-04-04 13:10:19'),('$JOSB',55.12,1,'2014-02-14 13:34:42'),('$JPM',61.79,89,'2016-04-13 13:44:11'),('$JWN',45.45,3,'2016-01-15 20:31:15'),('$KBH',13.93,1,'2016-03-24 19:49:05'),('$KELYB',13.9,1,'2011-09-02 15:57:50'),('$KHC',74.96,1,'2016-02-25 22:38:53'),('$KKR',12.48,1,'2012-06-19 12:44:19'),('$KMB',124.89,1,'2016-01-26 20:39:50'),('$KMI',12.01,2,'2016-01-20 22:03:29'),('$KO',43.29,5,'2015-12-22 14:21:35'),('$KORS',76.39,1,'2014-09-05 14:34:23'),('$KR',39.45,3,'2016-02-26 22:56:47'),('$KRE',39.86,1,'2015-08-26 15:38:02'),('$LAZ',49.82,3,'2014-11-12 22:46:41'),('$LBTYA',66.06,1,'2013-02-06 19:57:21'),('$LC',7.61,5,'2016-02-01 17:21:03'),('$LCC',23.52,2,'2013-11-12 16:34:37'),('$LEN',48.82,1,'2015-12-23 20:06:39'),('$LGF',18.53,1,'2016-02-05 16:35:06'),('$LINE',0.47,1,'2016-03-24 19:07:25'),('$LL',11.77,29,'2016-03-08 19:26:16'),('$LLY',72.48,3,'2016-03-16 08:38:32'),('$LMCA',34.33,2,'2015-01-28 14:00:17'),('$LMT',213.62,3,'2016-02-19 19:23:35'),('$LNG',27.56,5,'2016-02-04 11:31:53'),('$LNKD',100.98,5,'2016-02-09 21:28:43'),('$LOCK',8.15,1,'2015-07-21 18:45:54'),('$LOCO',36.59,1,'2014-11-10 21:53:42'),('$LOW',68.7,1,'2016-02-25 14:42:21'),('$LULU',61.23,6,'2016-04-11 15:51:01'),('$LUV',36.81,3,'2015-05-28 20:59:01'),('$M',38.76,4,'2016-01-19 03:44:23'),('$MA',88.58,1,'2016-03-11 16:12:53'),('$MAC',86.15,1,'2015-03-27 14:51:34'),('$MBLY',56.6,1,'2014-09-09 17:15:21'),('$MCD',125.68,31,'2016-03-31 13:47:22'),('$MCHP',39.96,1,'2014-10-10 15:04:45'),('$MCK',157.84,1,'2016-01-13 19:46:04'),('$MDLZ',39.23,3,'2016-02-03 16:33:08'),('$MDT',73,3,'2016-01-11 17:25:23'),('$MDVN',45.98,4,'2016-03-31 00:41:49'),('$MET',43.94,2,'2016-03-31 07:59:28'),('$MFRM',42.69,1,'2016-03-21 20:08:40'),('$MGM',21.13,4,'2016-01-12 00:15:57'),('$MNK',54.62,7,'2016-03-18 15:20:13'),('$MNKD',0.73,1,'2016-01-06 16:13:16'),('$MNST',150.24,1,'2015-11-06 23:32:14'),('$MON',89.42,2,'2015-08-25 14:50:36'),('$MONIF',1.18,1,'2014-05-23 10:35:50'),('$MPEL',18.07,1,'2015-10-13 15:09:31'),('$MRK',55.63,6,'2016-04-06 20:44:43'),('$MRO',7.96,1,'2016-03-01 17:50:24'),('$MRX',39.05,1,'2011-07-15 13:42:26'),('$MS',26.89,20,'2016-01-13 16:44:44'),('$MSFT',52.03,25,'2016-03-04 16:48:23'),('$MTB',120.27,1,'2015-11-02 13:24:59'),('$MTCH',13.06,1,'2016-01-14 09:46:51'),('$MTW',15.07,3,'2015-10-15 15:38:29'),('$MU',14.61,5,'2015-12-22 17:15:32'),('$MW',57.14,5,'2014-03-11 16:11:21'),('$MY',3.5,1,'2015-05-26 16:43:51'),('$MYL',41.42,5,'2016-02-11 12:31:02'),('$NEM',24.3,1,'2016-02-09 01:54:18'),('$NFLX',101.58,48,'2016-03-04 17:00:19'),('$NKE',58.55,6,'2016-04-12 08:00:37'),('$NOC',62.9,1,'2011-04-27 12:24:49'),('$NRG',13.74,1,'2016-03-11 00:04:20'),('$NSC',84.02,1,'2016-03-18 21:53:39'),('$NTAP',27.6,2,'2015-12-21 19:54:45'),('$NXPI',82.39,3,'2016-01-05 17:52:25'),('$NXY',23.52,1,'2012-12-07 20:29:48'),('$NYX',34.24,2,'2011-07-27 19:51:12'),('$O',53.01,2,'2016-01-19 21:44:02'),('$ODP',7,2,'2015-10-14 15:55:42'),('$ONCE',53.02,1,'2015-10-05 15:42:12'),('$OPK',9.9,1,'2016-03-30 14:59:37'),('$ORBC',7.42,1,'2015-12-22 14:24:06'),('$ORCL',40.22,11,'2016-03-16 08:39:18'),('$OVTI',17.27,1,'2011-08-26 15:33:50'),('$OXY',71.3,1,'2016-03-18 18:17:16'),('$P',10.36,2,'2016-03-17 15:44:39'),('$PANW',140.29,1,'2016-02-25 22:12:11'),('$PBR',2.98,2,'2016-02-02 22:42:41'),('$PBY',17.41,1,'2015-12-28 21:51:57'),('$PCLN',1210.69,6,'2016-01-05 14:22:53'),('$PCS',5,4,'2012-09-25 16:09:20'),('$PEP',102.69,4,'2016-03-30 19:19:26'),('$PFE',32.93,11,'2016-04-06 22:39:21'),('$PG',82.64,6,'2016-02-09 11:45:44'),('$PHM',17.58,7,'2016-04-11 16:50:52'),('$PLCE',80.44,2,'2016-03-18 16:56:27'),('$PM',101.17,2,'2016-04-06 13:42:19'),('$PNRA',209.52,5,'2016-03-09 20:50:16'),('$PPC',25.52,1,'2014-05-27 12:15:28'),('$PRGO',184.74,3,'2015-04-29 14:34:01'),('$PSTG',16.01,3,'2015-10-07 14:19:27'),('$PVH',94.29,2,'2016-03-24 20:16:02'),('$PXD',159.57,1,'2015-05-07 17:10:02'),('$PYPL',37.8,5,'2016-04-12 13:29:14'),('$QCOM',54.32,3,'2015-09-09 16:25:18'),('$QQQ',113.91,2,'2015-07-21 21:27:03'),('$QVCA',25.73,1,'2015-11-13 15:53:01'),('$RAD',8.67,2,'2015-10-27 21:23:58'),('$RAX',39.34,1,'2014-09-16 20:18:51'),('$RGLS',7.49,1,'2016-02-17 14:13:07'),('$RH',38.49,2,'2016-02-25 21:26:18'),('$RIG',11.52,1,'2016-01-06 17:20:54'),('$RNG',19.7,1,'2015-07-31 19:02:44'),('$S',3.42,18,'2016-04-13 13:28:50'),('$SAFM',75.21,1,'2015-08-12 17:15:45'),('$SAN',4.21,1,'2016-04-11 13:46:44'),('$SAVE',42.73,1,'2016-02-09 16:21:49'),('$SBUX',59.5,15,'2016-04-12 13:29:20'),('$SC',18.61,1,'2014-12-09 16:14:49'),('$SCTY',51.32,16,'2015-12-22 20:14:42'),('$SD',0.24,1,'2015-12-23 22:11:12'),('$SEDG',27.95,1,'2015-09-10 14:06:16'),('$SEE',23.84,1,'2011-06-01 15:38:58'),('$SFD',1.6,2,'2013-09-20 13:21:26'),('$SHAK',32.81,16,'2016-03-23 01:42:33'),('$SHE',60.344,1,'2016-03-11 20:49:48'),('$SHLD',17.52,8,'2016-02-25 14:42:47'),('$SIG',139.66,1,'2015-08-28 18:10:57'),('$SIRI',3.5,3,'2016-02-03 18:34:57'),('$SKX',89.66,1,'2015-04-24 15:26:29'),('$SLB',63.3,1,'2016-01-25 12:25:28'),('$SLXP',159.83,1,'2014-09-22 22:11:13'),('$SNCR',48.38,1,'2014-11-14 16:22:25'),('$SNE',21.32,4,'2014-12-24 16:34:59'),('$SNY',53.54,1,'2015-07-24 18:33:09'),('$SONC',35.34,2,'2016-04-05 22:36:09'),('$SP',21.81,1,'2016-02-05 17:31:13'),('$SPLS',16.73,1,'2015-02-04 15:18:01'),('$SPWR',24.5,1,'2015-08-13 14:00:06'),('$SPY',193.65,8,'2016-02-01 20:29:55'),('$SQ',12.03,7,'2016-03-09 21:12:20'),('$STI',38.45,2,'2016-04-13 13:44:54'),('$STZ',160.34,5,'2016-04-06 13:44:17'),('$SUNE',0.43,38,'2016-04-01 22:11:05'),('$SWK',94.34,1,'2016-01-29 18:02:10'),('$SWKS',77.02,1,'2016-03-18 21:35:34'),('$SWN',7.09,3,'2016-02-19 00:49:29'),('$SYY',41.38,3,'2015-08-14 16:38:57'),('$T',36.57,16,'2016-02-19 17:24:02'),('$TAN',32.91,2,'2015-12-21 16:22:58'),('$TASR',19.38,1,'2016-02-29 14:49:45'),('$TAXI',10.23,1,'2014-12-05 16:41:22'),('$TCK',6.84,1,'2016-02-22 15:58:47'),('$TERP',9.11,3,'2015-12-02 14:44:51'),('$TEVA',64.41,1,'2015-04-24 14:12:22'),('$TGT',80.78,7,'2016-04-12 13:50:55'),('$THC',27.45,1,'2015-12-15 16:31:56'),('$TIF',64.73,2,'2016-02-01 14:46:46'),('$TIN',0.51,1,'2011-09-06 14:50:09'),('$TLT',133.72,3,'2016-02-11 13:48:36'),('$TMUS',36.85,12,'2016-02-17 17:09:44'),('$TPX',56.47,3,'2015-02-17 16:17:23'),('$TRLA',24,1,'2012-09-20 14:44:17'),('$TROW',68.98,1,'2015-10-14 12:20:16'),('$TSLA',265.42,42,'2016-04-06 13:15:24'),('$TST',1.23,8,'2016-03-24 19:06:43'),('$TWC',171.18,9,'2015-05-22 22:29:50'),('$TWTR',16.98,121,'2016-04-07 13:42:08'),('$TWX',64.67,16,'2016-02-19 15:34:11'),('$UA',41.15,21,'2016-04-11 14:12:20'),('$UAL',53.71,6,'2016-04-11 22:01:01'),('$UDF',3.2,1,'2016-02-18 20:17:39'),('$ULTA',191.62,1,'2016-03-11 23:50:56'),('$UNP',84.42,2,'2016-03-18 18:16:13'),('$UPS',100.82,1,'2016-03-11 19:42:57'),('$UTHR',165.96,1,'2015-07-28 18:42:31'),('$UTX',96.75,11,'2016-03-11 00:15:57'),('$V',70.42,5,'2016-02-12 16:40:53'),('$VAL',104.68,1,'2016-03-22 08:05:00'),('$VIA',48.68,9,'2016-02-04 16:49:03'),('$VIAB',32.86,4,'2016-02-09 20:43:56'),('$VIRT',23.69,2,'2015-09-01 17:17:06'),('$VIX',7545.45,3,'2015-09-17 18:58:37'),('$VMC',38.7,1,'2011-12-12 15:50:15'),('$VMED',45.61,1,'2013-02-05 13:46:38'),('$VMW',79.15,1,'2015-08-31 16:03:10'),('$VOD',31.8,2,'2013-08-29 19:42:53'),('$VRTX',126.4,1,'2015-12-30 00:30:35'),('$VRX',33.67,87,'2016-04-08 01:59:35'),('$VSI',31.57,1,'2015-10-22 18:32:17'),('$VZ',50.86,13,'2016-02-19 20:13:41'),('$WBMD',26.76,1,'2012-01-19 13:43:23'),('$WDAY',71.74,4,'2016-03-01 19:46:07'),('$WDC',112.31,1,'2014-12-30 16:16:59'),('$WFC',48.9,18,'2016-03-24 11:25:11'),('$WFM',33.49,5,'2016-03-14 16:04:29'),('$WFT',7.24,1,'2016-03-11 14:36:10'),('$WHR',184.58,1,'2015-08-19 16:30:09'),('$WMB',17.96,4,'2016-03-09 22:51:08'),('$WMT',65.03,17,'2016-01-07 17:15:27'),('$WWAV',41.01,2,'2016-03-18 21:48:58'),('$WY',21.72,1,'2011-07-11 18:51:53'),('$WYNN',99.99,2,'2016-04-07 13:42:55'),('$XBI',57.14,2,'2016-01-11 19:38:54'),('$XLE',56.58,2,'2016-02-29 16:41:20'),('$XLF',20.49,2,'2016-02-12 16:33:37'),('$XLNX',43.08,1,'2016-01-20 23:04:56'),('$XLV',66.84,1,'2016-03-18 17:35:46'),('$XLY',78.85,1,'2015-07-24 19:54:22'),('$XOM',81.52,2,'2016-02-24 09:22:39'),('$XON',37.38,1,'2016-03-18 19:28:18'),('$XRX',9.23,2,'2016-01-28 21:12:31'),('$YELP',25.77,5,'2015-08-14 16:07:14'),('$YHOO',36.48,50,'2016-04-11 13:30:02'),('$YOKU',30.86,2,'2014-02-27 20:09:52'),('$YUM',69.76,7,'2016-02-05 11:13:54'),('$Z',22.53,2,'2016-03-24 20:20:59'),('$ZBRA',61.39,1,'2014-04-15 12:38:00'),('$ZTS',43.15,2,'2016-01-27 14:56:48');
/*!40000 ALTER TABLE `StockInformation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-16 15:25:00
