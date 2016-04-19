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
-- Table structure for table `StockPerformance`
--

DROP TABLE IF EXISTS `StockPerformance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StockPerformance` (
  `TICKER` varchar(45) NOT NULL,
  `PriceDifference` float DEFAULT NULL,
  `DAYS` float DEFAULT NULL,
  PRIMARY KEY (`TICKER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StockPerformance`
--

LOCK TABLES `StockPerformance` WRITE;
/*!40000 ALTER TABLE `StockPerformance` DISABLE KEYS */;
INSERT INTO `StockPerformance` VALUES ('$AA',0.22,3),('$AAI',0,473),('$AAL',-1.51,190),('$AAP',81.92,1250),('$AAPL',0.83,5),('$AB',2.71,1157),('$ABBV',4.88,548),('$ABT',3.51,32),('$ADBE',5.2,29),('$AEM',10.35,75),('$AEP',0.04,7),('$AET',-7.62,285),('$AF',-0.95,169),('$AGN',-11.21,5),('$AGU',-11.37,1102),('$AHL',3.52,733),('$AIG',-0.96,81),('$AIMT',-9.56,252),('$ALL',42.15,1694),('$ALTR',2.28,320),('$AMAT',4.02,935),('$AMBA',-78.6,268),('$AMD',0.71,73),('$AMGN',26.31,200),('$AMTD',-2.05,218),('$AMZN',29.96,4),('$AN',-3.64,101),('$ANTM',-15.67,282),('$APC',-12.1,157),('$APD',14.31,668),('$APX',0,1709),('$ARO',-0.035,28),('$ATHN',9.45,711),('$AVAV',8.01,210),('$AVGO',14,324),('$AVP',0.63,32),('$AXON',-1.37,73),('$AXP',3.39,36),('$AYA',-15.51,290),('$AZO',452.82,1564),('$B',-1.69,256),('$BA',22.69,65),('$BABA',1.64,100),('$BAC',1.46,54),('$BBBY',-0.93,9),('$BBRY',-2.07,114),('$BBY',-7.01,505),('$BCS',0.57,46),('$BEAM',0,824),('$BHI',-14.48,269),('$BHP',4.82,52),('$BID',-15.14,723),('$BIDU',41.16,232),('$BIIB',17.72,28),('$BK',-5.56,343),('$BKS',-6.72,744),('$BLC',0,939),('$BLK',13.2,292),('$BLUE',-48.16,194),('$BMC',0,1432),('$BMRN',5.81,29),('$BMS',3.31,65),('$BMY',3.09,36),('$BOBE',-1.13,605),('$BOJA',-5.8,343),('$BOX',-3.86,268),('$BP',1.63,74),('$BRCM',-2.49,324),('$BRK',0,383),('$BSX',4.62,423),('$BTU',-0.24,58),('$BUD',11.82,579),('$BX',5.03,87),('$BXLT',3.41,255),('$C',4.56,73),('$CAB',9.63,171),('$CAG',4.21,116),('$CAM',6.08,234),('$CAT',3.27,30),('$CBOU',0,1660),('$CBS',10.97,224),('$CCL',-2.92,117),('$CCME',0,1794),('$CELG',4.31,95),('$CF',-238.34,571),('$CFG',0.46,32),('$CG',-8.28,486),('$CHK',4.05,57),('$CHTR',9.95,382),('$CI',-24.64,289),('$CIT',4.75,73),('$CKEC',7.66,120),('$CLF',2.78,94),('$CLLS',-1.58,115),('$CLR',-7.27,505),('$CLVS',-73.16,319),('$CLWR',0,1030),('$CLX',1.7,71),('$CMA',0,0),('$CMCSA',5.51,117),('$CME',-1.12,227),('$CMG',5.87,11),('$CMRX',-27.01,556),('$COL',37.86,1673),('$COLM',2.06,57),('$COP',-21.81,1694),('$COST',-3.22,157),('$CRM',6.59,49),('$CRTO',3.37,899),('$CS',1.7,9),('$CSCO',0.04,35),('$CSX',3.57,72),('$CTB',3.42,1038),('$CTL',-7.64,627),('$CVC',2.05,114),('$CVS',7.61,141),('$CVX',0.9,7),('$CWH',0,785),('$CYBR',-22.11,268),('$CYH',-27.79,992),('$CZR',-8.14,1529),('$D',2.35,387),('$DAL',3.46,72),('$DATA',5.78,57),('$DB',-1.97,37),('$DBD',-11.37,576),('$DD',2.09,43),('$DDD',4.52,31),('$DELL',0,925),('$DG',16.93,457),('$DIA',2.49,249),('$DIN',-4.46,50),('$DIS',8.28,65),('$DISCA',1.94,200),('$DISH',-3.28,22),('$DJIA',0,231),('$DKS',5.83,52),('$DLTR',15.34,457),('$DNB',25.18,1262),('$DNKN',1.32,50),('$DNR',1.79,46),('$DOW',3.54,39),('$DPZ',6.9,35),('$DRI',0.5,117),('$DUK',11.31,1383),('$E',2.25,10),('$EA',2.2,19),('$EBAY',-3.35,271),('$EDU',7.81,169),('$EEM',-1.75,254),('$EIGI',-0.57,904),('$ELN',0,1038),('$EMC',-2.31,189),('$EMR',11.22,98),('$ENDP',-3.7,30),('$ENH',12.2,733),('$ESRX',-0.89,78),('$ETE',2.14,50),('$ETP',5.74,51),('$ETSY',1.38,52),('$EWG',-0.68,121),('$EXPR',1.22,1411),('$F',-0.25,38),('$FB',-5.06,16),('$FCAU',0.07,80),('$FCX',0.1,28),('$FDC',-2.74,184),('$FDML',-3.86,360),('$FDX',4.56,30),('$FE',4.59,116),('$FEYE',-5.3,157),('$FIT',1.16,72),('$FL',-1.1,46),('$FLEX',2.15,74),('$FLO',-0.23,518),('$FMI',-17.84,934),('$FNMA',-0.03,119),('$FOX',-2.98,310),('$FOXA',-2.89,310),('$FSLR',-2.2,52),('$FTNT',-17.19,268),('$FUEL',-53.18,939),('$FUN',0.79,42),('$FXCM',-1.59,456),('$FXE',0.08,201),('$G',5.27,404),('$GDDY',4.5,381),('$GDX',3.09,51),('$GE',-0.2,12),('$GHDX',-4.64,99),('$GILD',14.24,74),('$GIS',-2.91,11),('$GLBL',-1.55,137),('$GLD',0.81,50),('$GLPI',-3.42,404),('$GM',0.07,93),('$GMC',0,200),('$GMCR',2.78,130),('$GME',0.355,3),('$GNW',0.71,59),('$GOLD',-1.21,3),('$GOOG',32.05,73),('$GOOGL',78.98,67),('$GPRO',1.88,46),('$GPS',-0.07,5),('$GR',0,1668),('$GRPN',1.62,164),('$GRUB',-0.41,233),('$GS',4.58,36),('$GSAT',-1.01,516),('$GWPH',-2.42,33),('$H',0.83,23),('$HAR',10.44,77),('$HAS',27.43,520),('$HCA',14.87,123),('$HD',4.13,30),('$HES',19.15,71),('$HLF',5.77,43),('$HLT',-0.29,684),('$HMA',0,977),('$HOG',1.14,101),('$HON',8.14,45),('$HOO',0,367),('$HOT',2,11),('$HP',-32.41,558),('$HPE',1.96,42),('$HPQ',-0.12,143),('$HSH',0,683),('$HSIC',16.09,116),('$HTZ',0.11,5),('$HYG',4.58,91),('$HZNP',-4.43,95),('$IACI',-22.59,341),('$IBB',29.27,29),('$IBM',-0.35,12),('$ICE',108.4,1213),('$IEP',-10.82,241),('$ILMN',118.49,1543),('$IMAX',0.1,98),('$INSY',-11.11,163),('$INTC',-1.34,184),('$INTU',2,29),('$IOTS',-1.03,47),('$IP',4.24,200),('$IPG',3.43,632),('$IWM',13.33,81),('$JACK',3.61,30),('$JAH',4.19,278),('$JBLU',9.5,575),('$JCP',-1.66,38),('$JEF',0,1624),('$JNJ',1.59,12),('$JOSB',0,792),('$JPM',0.08,3),('$JWN',6.25,91),('$KBH',0.78,22),('$KELYB',4.66,1688),('$KHC',3.09,50),('$KKR',1.19,1397),('$KMB',11.58,80),('$KMI',6.15,86),('$KO',2.81,116),('$KORS',-24.1,589),('$KR',-2.54,49),('$KRE',-0.66,234),('$LAZ',-11.92,520),('$LBTYA',-27.04,1164),('$LC',-0.3,74),('$LCC',0,886),('$LEN',-0.9,114),('$LGF',1.67,71),('$LINE',-0.0734,22),('$LL',3.36,38),('$LLY',3.05,31),('$LMCA',4.73,444),('$LMT',12.19,56),('$LNG',9.57,72),('$LNKD',15.63,66),('$LOCK',4.35,269),('$LOCO',-22.21,522),('$LOW',8.61,51),('$LULU',3.57,5),('$LUV',10.23,323),('$M',1.88,88),('$MA',8.1,36),('$MAC',-7.16,386),('$MBLY',-16.56,584),('$MCD',2.1,16),('$MCHP',8.8,554),('$MCK',14.93,93),('$MDLZ',3.79,73),('$MDT',4.1,95),('$MDVN',5.19,16),('$MET',0.71,16),('$MFRM',1.18,25),('$MGM',1.66,95),('$MNK',4.49,29),('$MNKD',0.91,101),('$MNST',-21.91,161),('$MON',-1.05,235),('$MONIF',-1.136,694),('$MPEL',-1.47,186),('$MRK',0.51,9),('$MRO',5.05,45),('$MRX',0,1737),('$MS',-1.13,94),('$MSFT',3.62,43),('$MTB',-5.46,166),('$MTCH',-1.72,93),('$MTW',-10.28,184),('$MU',-3.92,115),('$MW',0,767),('$MY',-1.11,326),('$MYL',5.47,65),('$NEM',5.07,67),('$NFLX',9.93,42),('$NKE',0.95,4),('$NOC',138.98,1816),('$NRG',-0.09,36),('$NSC',-2.39,28),('$NTAP',-2.48,116),('$NXPI',1.99,101),('$NXY',0,1225),('$NYX',0,1724),('$O',10,87),('$ODP',0.44,185),('$ONCE',-17.29,194),('$OPK',0.9,17),('$ORBC',2.73,116),('$ORCL',0.8,31),('$OVTI',12.11,1695),('$OXY',0.85,28),('$P',-1.74,30),('$PANW',0.37,50),('$PBR',3.74,73),('$PBY',0,109),('$PCLN',121.21,102),('$PCS',0,1299),('$PEP',1.08,16),('$PFE',-0.43,9),('$PG',-0.34,67),('$PHM',1.07,5),('$PLCE',0.97,29),('$PM',-1.06,10),('$PNRA',0.59,37),('$PPC',-0.43,690),('$PRGO',-56.75,353),('$PSTG',-1.86,192),('$PVH',1.08,22),('$PXD',-15.44,344),('$PYPL',0.78,4),('$QCOM',-3.26,220),('$QQQ',-3.27,269),('$QVCA',0.31,155),('$RAD',-0.7,171),('$RAX',-15.37,577),('$RGLS',-0.26,59),('$RH',5.5,50),('$RIG',-1.8,100),('$RNG',-2.15,259),('$S',0.17,3),('$SAFM',14.29,247),('$SAN',0.34,5),('$SAVE',7.38,67),('$SBUX',1.01,4),('$SC',-7.53,494),('$SCTY',-22.28,115),('$SD',0,114),('$SEDG',-3.01,219),('$SEE',26.19,1781),('$SFD',0,939),('$SHAK',4.92,24),('$SHE',2.146,35),('$SHLD',-0.62,51),('$SIG',-27.56,231),('$SIRI',0.4,72),('$SKX',-60.97,358),('$SLB',12.96,82),('$SLXP',9.17,571),('$SNCR',-15.74,519),('$SNE',5.34,479),('$SNY',-9.77,266),('$SONC',-0.22,10),('$SP',0.49,70),('$SPLS',-5.58,437),('$SPWR',-3.54,247),('$SPY',14.13,74),('$SQ',2.3,37),('$STI',0.02,3),('$STZ',-3.63,10),('$SUNE',-0.06,14),('$SWK',14.45,77),('$SWKS',-1.96,28),('$SWN',3.4,57),('$SYY',5.44,246),('$T',1.91,56),('$TAN',-9.72,117),('$TASR',-0.24,47),('$TAXI',-1.87,498),('$TCK',1.66,54),('$TERP',-0.11,136),('$TEVA',-9.23,358),('$TGT',1.82,4),('$THC',4.15,123),('$TIF',6.45,75),('$TIN',0,1684),('$TLT',-1.84,65),('$TMUS',2.44,58),('$TPX',2.83,424),('$TRLA',23,1304),('$TROW',7.55,185),('$TSLA',-10.91,10),('$TST',-0.07,22),('$TWC',34.26,329),('$TWTR',0.6,9),('$TWX',9.83,57),('$UA',1.93,5),('$UAL',3.19,4),('$UDF',0,57),('$ULTA',12.44,35),('$UNP',-3.21,28),('$UPS',4.72,35),('$UTHR',-50.53,262),('$UTX',7.82,36),('$V',9.66,64),('$VAL',2.36,25),('$VIA',-7.01,72),('$VIAB',5.41,66),('$VIRT',-2.72,227),('$VIX',0,211),('$VMC',68.3,1587),('$VMED',0,1166),('$VMW',-27.42,229),('$VOD',1.03,960),('$VR',-0.055,3),('$VRTX',-44.65,108),('$VRX',-1.53,8),('$VSI',-1.82,176),('$VZ',0.49,56),('$WBMD',34.51,1549),('$WDAY',5.06,45),('$WDC',-71.82,473),('$WFC',-0.65,23),('$WFM',-2.52,33),('$WFT',0.37,36),('$WHR',1.82,241),('$WMB',-0.41,37),('$WMT',4.03,99),('$WWAV',-1.09,28),('$WY',10.01,1740),('$WYNN',-2.32,9),('$XBI',-0.56,95),('$XLE',6.9592,47),('$XLF',2.41,64),('$XLNX',2.93,86),('$XLV',3.18,28),('$XLY',0.64,266),('$XOM',3.45,52),('$XON',0.58,28),('$XRX',1.96,78),('$YELP',-4.75,246),('$YHOO',0.03,5),('$YOKU',-3.32,778),('$YUM',12.08,71),('$Z',-0.68,22),('$ZBRA',2.98,732),('$ZTS',4.96,80),('1',0,1);
/*!40000 ALTER TABLE `StockPerformance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 16:48:46
