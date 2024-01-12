-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: sales_an
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sales_fact`
--

DROP TABLE IF EXISTS `sales_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_fact` (
  `Item_Price` float NOT NULL,
  `Quantity` int NOT NULL,
  `Discount` int NOT NULL,
  `Item_No` varchar(5) NOT NULL,
  `Cust_ID` varchar(4) NOT NULL,
  `Invoice_No` varchar(9) NOT NULL,
  PRIMARY KEY (`Item_No`),
  KEY `Cust_ID` (`Cust_ID`),
  KEY `Invoice_No` (`Invoice_No`),
  CONSTRAINT `sales_fact_ibfk_1` FOREIGN KEY (`Item_No`) REFERENCES `item_dim` (`Item_No`),
  CONSTRAINT `sales_fact_ibfk_2` FOREIGN KEY (`Cust_ID`) REFERENCES `customer_dim` (`Cust_ID`),
  CONSTRAINT `sales_fact_ibfk_3` FOREIGN KEY (`Invoice_No`) REFERENCES `calendar_dim` (`Invoice_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_fact`
--

LOCK TABLES `sales_fact` WRITE;
/*!40000 ALTER TABLE `sales_fact` DISABLE KEYS */;
INSERT INTO `sales_fact` VALUES (3,5,11,'AO791','L412','WRCQ287ZR'),(11,3,12,'AO920','Z404','GOTS294TG'),(27,5,8,'AR412','I244','ACWT842HC'),(68,3,15,'AW555','L495','TVPC770BD'),(6,3,6,'AY268','W615','QCDU766WU'),(59,3,10,'BD890','D097','PDHA066QF'),(54,1,12,'BH681','F537','GGJV974WO'),(2,8,9,'BJ579','L953','PPPB750XF'),(14,2,14,'BK596','D494','FYZP386BJ'),(37,3,10,'BL599','O311','VHJR093HS'),(67,10,13,'BM174','E305','ODMZ493XT'),(44,7,13,'CA803','K421','DPGY716CZ'),(59,10,10,'CI234','L192','ARDF946BY'),(99,1,11,'CL403','A040','AAFF878PY'),(6,8,12,'CN516','C465','RMTS932JX'),(35,3,5,'CR553','C602','WEQS596HL'),(76,3,14,'CR720','Z171','OYXD196CD'),(93,1,7,'CY813','F295','HRTP088OB'),(94,7,14,'DB501','Z262','HIOS107KG'),(69,8,15,'DL154','E606','XZKP260IQ'),(30,2,15,'DP121','F285','NZMS293HX'),(24,4,15,'DU399','J951','QBCW142WG'),(22,9,13,'DY365','S718','KZQJ046WW'),(42,9,5,'EA784','S811','CAVT473SP'),(54,7,15,'ED547','V032','NGPX672JG'),(52,10,9,'EE729','S390','JGSO759QG'),(89,2,7,'EF558','R825','GRBD716FE'),(26,1,6,'EG310','C245','SHDI741HM'),(98,10,7,'EN548','R406','XTES432MI'),(67,1,15,'ER210','N479','CWNE949DG'),(48,7,10,'EV874','F699','FZQF431LA'),(13,1,8,'EX622','N854','VPLT986VP'),(93,8,12,'FA271','J883','MQBW148KK'),(99,6,13,'FB524','Q393','WNDI455VQ'),(86,2,13,'FE796','Y252','GNMQ070WN'),(22,2,7,'FE984','X128','YBDQ108MR'),(97,9,6,'FF363','K337','BDNH098NU'),(23,5,14,'FM355','O400','JTYY669UQ'),(47,2,13,'FT440','M749','EUJD611BW'),(64,5,9,'FZ349','X674','ZDTR827NO'),(76,7,12,'GC237','V396','HYNN798PX'),(24,3,10,'GO924','R332','VJKN282KE'),(79,3,11,'GV965','B231','IHDR948LV'),(27,5,14,'HA556','W867','RIBM169YX'),(37,5,14,'HB317','G545','MUOT745KC'),(1,5,6,'HK080','W398','POAS501ZK'),(66,5,11,'HK457','H060','BOPT352MD'),(25,8,14,'HV700','K320','LKUK333XS'),(9,7,5,'IG667','T702','SCMG823DF'),(78,4,9,'II829','F866','ROSX015RO'),(76,10,13,'IJ972','O033','XQCY652KS'),(75,10,15,'IK495','G023','CSHA543NN'),(34,2,14,'IP172','J534','GFYM292XS'),(50,7,14,'IZ500','M561','SJCL235RS'),(10,5,11,'JI117','C041','CCTZ924JT'),(32,4,9,'JI847','T808','PFJT204XH'),(87,3,10,'JO194','Z509','TOHF713EE'),(31,10,10,'JO536','D069','XMRG378KJ'),(39,5,5,'JO713','V733','MMVA961NC'),(47,1,11,'JR757','F205','GEXZ320QM'),(57,7,14,'JT041','O812','MTBX311EF'),(19,7,9,'JU264','Z460','LVHI200OU'),(21,6,9,'JU906','C155','ALTP092SU'),(10,5,12,'JU935','W766','EGYW638JT'),(77,3,8,'JV065','I160','RWMN932RC'),(93,8,12,'JW697','E738','BFHM145TT'),(8,8,9,'JY937','M699','JGWV617WS'),(71,3,5,'KA830','K898','YNYV106YN'),(65,7,11,'KB286','S519','ZOTZ783UV'),(71,4,15,'KJ316','Z835','OWZQ340NY'),(84,8,15,'KT876','K741','BSKZ970ED'),(19,4,5,'KY105','Z149','LZZO433HY'),(12,4,7,'LC352','O564','KVBO093RE'),(36,3,8,'LD009','X097','BDPH664JY'),(93,8,14,'LE079','D986','ISPA926XP'),(42,7,15,'LX886','J471','IREU576PQ'),(20,8,6,'MB776','V400','ZJUE524VQ'),(12,5,6,'MG956','R172','ONHG184TV'),(69,8,7,'MI230','F902','UXZQ490WI'),(7,2,7,'MK583','Y296','FCQZ939LJ'),(45,1,7,'ML715','C850','ZVJW165ZL'),(53,8,7,'MM037','M051','UEDI407AX'),(6,6,13,'MN492','A876','OETL269GF'),(5,10,12,'MT843','L485','HVYJ032IC'),(32,7,6,'MU142','U516','WNHX586GG'),(33,4,7,'NE918','S705','JKLP239FP'),(84,10,12,'NH939','E881','QGPK147BG'),(58,7,10,'NP374','Y892','YAQB507OJ'),(69,3,9,'NS115','G787','FNUD086VI'),(99,1,13,'OB968','P172','PPKF300WB'),(46,1,8,'OG434','L337','GYSH241BI'),(55,9,12,'OH665','E383','FWNC285MD'),(99,10,8,'OL906','A731','HJRZ858TU'),(68,6,13,'OS271','F773','RCJL898WW'),(44,8,15,'OV106','G439','DWAT473HU'),(25,5,7,'OV919','R526','GLTZ640RZ'),(30,3,8,'OZ001','E470','ERDW616HD'),(93,3,13,'PG292','R031','GWUJ402UF'),(48,8,5,'PS085','N882','WJTI708IG'),(76,5,12,'PU660','U470','CJPR407ZE'),(21,3,12,'PY803','M236','MYSK777VK'),(45,7,6,'QC185','L602','LRFK622BP'),(7,4,14,'QF493','B605','RCTF429OB'),(42,4,7,'QI271','S289','IFOF739FL'),(23,10,13,'QW179','V999','EHOL182WG'),(92,1,10,'QY958','G719','PWDK741RO'),(48,7,7,'RI326','J002','RERW849JP'),(41,5,9,'RI334','H204','QTMQ907GK'),(18,6,15,'RK165','D817','BOMP685GG'),(49,9,11,'RO569','F109','PLYE668LO'),(77,9,15,'RQ758','R903','ZGBQ807GX'),(81,2,12,'RW787','Z288','XWQN651EC'),(36,7,11,'SA732','E976','LUYY780NE'),(85,3,13,'SG928','V377','GPBX085AO'),(12,6,11,'SL953','K312','QNTJ211OU'),(55,1,10,'SM970','P153','NKWV551LJ'),(48,1,11,'TE801','J046','LHZP979IV'),(31,4,14,'TK053','D343','JQOG797IZ'),(25,9,9,'TK191','X550','ZOOG243NG'),(5,1,10,'TM544','C608','HFBE239RR'),(82,10,13,'TU579','Z996','ZIWI684DC'),(30,10,9,'TY030','Y303','YRAH827BR'),(3,10,12,'UA179','I942','LORX189KQ'),(3,8,12,'UA281','F996','VBJE594BS'),(68,7,8,'UK358','O490','TWLR676VW'),(96,7,14,'VC122','H161','PKED124SG'),(40,2,11,'VG964','Q725','PUYB508XL'),(58,3,13,'VM584','D617','KTQT851CZ'),(70,9,15,'VQ014','U798','UUHI151XU'),(6,6,10,'VS229','B696','SUJN264MF'),(27,2,13,'WB739','P485','CTID214UV'),(96,7,10,'WD539','F891','NZRM473FH'),(57,5,8,'WF636','S331','LUKO848TI'),(5,1,5,'WG282','Q043','KBFD475IW'),(95,10,6,'WG897','D570','BMXG722YG'),(3,1,5,'WI901','J204','SXNN718CR'),(63,6,10,'WR690','E459','PKZF763CM'),(97,9,15,'WT733','N125','LXDY821WV'),(2,10,11,'WU008','J845','XXRV404DZ'),(19,1,14,'WY693','O012','KHTC494MN'),(18,2,15,'XG924','I287','KWBD455AY'),(68,5,11,'XJ298','R190','RGLE065UW'),(38,6,6,'XN972','B667','HNAU396KS'),(76,9,8,'XO639','G733','WFXG942WF'),(48,9,10,'XP041','I192','LTTD730YC'),(22,10,10,'YD175','V228','PBYO238HN'),(31,9,6,'YL225','Z246','OTJD276SA'),(97,3,5,'ZB192','V583','DIKW954QU'),(4,7,5,'ZK754','G551','MUJY983WS'),(19,8,12,'ZR180','H555','NJQR660KZ');
/*!40000 ALTER TABLE `sales_fact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 15:38:53