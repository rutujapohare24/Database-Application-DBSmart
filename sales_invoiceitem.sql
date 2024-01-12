-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: sales
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
-- Table structure for table `invoiceitem`
--

DROP TABLE IF EXISTS `invoiceitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoiceitem` (
  `Line_no` varchar(3) NOT NULL,
  `Quantity` int NOT NULL,
  `Item_No` varchar(5) NOT NULL,
  PRIMARY KEY (`Line_no`),
  KEY `Item_No` (`Item_No`),
  CONSTRAINT `invoiceitem_ibfk_1` FOREIGN KEY (`Item_No`) REFERENCES `item` (`Item_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoiceitem`
--

LOCK TABLES `invoiceitem` WRITE;
/*!40000 ALTER TABLE `invoiceitem` DISABLE KEYS */;
INSERT INTO `invoiceitem` VALUES ('A19',9,'RQ758'),('A22',4,'II829'),('A28',3,'NS115'),('A33',4,'KJ316'),('B16',10,'WG897'),('B17',10,'UA179'),('B30',7,'KB286'),('B43',9,'VQ014'),('B84',3,'AO920'),('B89',2,'FE796'),('C08',8,'JW697'),('C41',8,'KT876'),('C66',10,'IJ972'),('C73',3,'JO194'),('C77',5,'PU660'),('C78',9,'XP041'),('C93',3,'PG292'),('D33',4,'KY105'),('D34',9,'EA784'),('D52',5,'FZ349'),('D67',5,'RI334'),('E21',3,'GO924'),('E48',7,'QC185'),('E70',7,'DB501'),('F24',10,'EN548'),('F46',7,'EV874'),('F47',8,'MI230'),('F51',4,'NE918'),('F77',1,'WI901'),('F94',9,'TK191'),('G15',3,'BD890'),('G26',6,'WR690'),('G38',5,'WF636'),('G39',3,'AY268'),('G57',2,'FT440'),('H02',10,'NH939'),('H14',5,'HK457'),('H32',7,'RI326'),('H40',4,'QF493'),('H42',1,'BH681'),('H78',6,'FB524'),('H89',3,'ZB192'),('H95',5,'HA556'),('I08',1,'SM970'),('I13',7,'IG667'),('I17',5,'HB317'),('I28',5,'JI117'),('I38',5,'OV919'),('I89',5,'JO713'),('J01',8,'FA271'),('J48',10,'BM174'),('J60',9,'YL225'),('J71',3,'AW555'),('J72',7,'IZ500'),('J81',7,'SA732'),('J88',2,'MK583'),('J89',7,'NP374'),('J90',10,'QW179'),('J91',1,'JR757'),('J96',10,'JO536'),('J98',3,'CR553'),('K12',1,'QY958'),('K16',7,'JT041'),('K23',7,'ED547'),('K33',6,'XN972'),('L05',5,'JU935'),('L22',10,'EE729'),('L29',1,'EX622'),('L68',3,'BL599'),('L86',1,'CY813'),('L87',7,'JU264'),('L93',2,'BK596'),('M27',1,'OG434'),('M31',10,'OL906'),('M42',8,'HV700'),('M81',6,'MN492'),('M83',10,'YD175'),('N08',1,'TM544'),('N19',1,'CL403'),('N32',4,'TK053'),('N55',8,'UA281'),('N88',5,'FM355'),('O03',9,'WT733'),('O29',7,'UK358'),('O40',3,'GV965'),('O48',10,'MT843'),('O65',6,'OS271'),('O71',7,'WD539'),('O85',2,'DP121'),('P30',1,'OB968'),('P88',3,'KA830'),('P93',5,'HK080'),('P94',1,'WG282'),('Q00',8,'JY937'),('Q01',8,'DL154'),('Q25',9,'OH665'),('Q28',7,'VC122'),('Q55',8,'OV106'),('Q56',9,'FF363'),('Q69',1,'EG310'),('Q81',2,'XG924'),('Q88',3,'SG928'),('R18',7,'CA803'),('R68',2,'EF558'),('R80',5,'XJ298'),('R83',7,'ZK754'),('R94',7,'GC237'),('S16',3,'CR720'),('S65',3,'JV065'),('S75',10,'TY030'),('S80',8,'BJ579'),('S90',8,'MM037'),('T20',6,'SL953'),('T41',8,'MB776'),('T81',4,'DU399'),('T85',4,'QI271'),('T94',2,'RW787'),('U00',6,'JU906'),('U10',2,'IP172'),('U37',5,'AR412'),('U41',2,'VG964'),('U46',10,'CI234'),('U54',4,'LC352'),('U55',2,'WB739'),('U61',3,'OZ001'),('U75',5,'AO791'),('V09',6,'VS229'),('V56',9,'RO569'),('V59',1,'ML715'),('V62',4,'JI847'),('V90',6,'RK165'),('W33',5,'MG956'),('W55',1,'TE801'),('W66',3,'PY803'),('W84',7,'MU142'),('X07',10,'TU579'),('X12',7,'LX886'),('X60',3,'LD009'),('X74',9,'DY365'),('Y64',8,'LE079'),('Y77',3,'VM584'),('Z22',10,'WU008'),('Z38',10,'IK495'),('Z40',1,'ER210'),('Z46',8,'CN516'),('Z52',9,'XO639'),('Z56',8,'PS085'),('Z57',1,'WY693'),('Z66',8,'ZR180'),('Z71',2,'FE984');
/*!40000 ALTER TABLE `invoiceitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 16:04:17
