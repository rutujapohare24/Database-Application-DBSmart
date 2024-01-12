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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `Item_No` varchar(5) NOT NULL,
  `Item_type` varchar(255) NOT NULL,
  `Discount` int NOT NULL,
  `Item_price` int NOT NULL,
  PRIMARY KEY (`Item_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('AO791','Jam - Blackberry, 20 Ml Jar',11,3),('AO920','Pate - Liver',12,11),('AR412','Jagermeister',8,27),('AW555','Island Oasis - Sweet And Sour Mix',15,68),('AY268','Urban Zen Drinks',6,6),('BD890','Soup - Campbells - Tomato',10,59),('BH681','Asparagus - White, Canned',12,54),('BJ579','Cheese - Comte',9,2),('BK596','Bacardi Breezer - Tropical',14,14),('BL599','Bread Foccacia Whole',10,37),('BM174','Beef Ground Medium',13,67),('CA803','Curry Paste - Green Masala',13,44),('CI234','Corn - Mini',10,59),('CL403','Butter - Salted, Micro',11,99),('CN516','Hold Up Tool Storage Rack',12,6),('CR553','Beef - Rib Roast, Cap On',5,35),('CR720','Chocolate - Milk, Callets',14,76),('CY813','Veal - Brisket, Provimi, Bone - In',7,93),('DB501','Bread Crumbs - Japanese Style',14,94),('DL154','Cheese - Marble',15,69),('DP121','Cheese - Cheddarsliced',15,30),('DU399','Tea - Lemon Green Tea',15,24),('DY365','Wine - White, Concha Y Toro',13,22),('EA784','Flower - Leather Leaf Fern',5,42),('ED547','Apricots Fresh',15,54),('EE729','Curry Paste - Madras',9,52),('EF558','Lemon Pepper',7,89),('EG310','Flour Dark Rye',6,26),('EN548','Muffin Hinge 117n',7,98),('ER210','Soup Campbells',15,67),('EV874','Yogurt - Raspberry, 175 Gr',10,48),('EX622','Carrots - Jumbo',8,13),('FA271','Pasta - Spaghetti, Dry',12,93),('FB524','Beer - Guiness',13,99),('FE796','Chips - Doritos',13,86),('FE984','Wine - Jafflin Bourgongone',7,22),('FF363','Artichokes - Knobless, White',6,97),('FM355','Soup - Cream Of Potato / Leek',14,23),('FT440','Puree - Mango',13,47),('FZ349','Soup - Campbellschix Stew',9,64),('GC237','Bread Crumbs - Japanese Style',12,76),('GO924','Yogurt - Cherry, 175 Gr',10,24),('GV965','Nut - Walnut, Pieces',11,79),('HA556','Coffee - Hazelnut Cream',14,27),('HB317','Sprite, Diet - 355ml',14,37),('HK080','Wine - Ice Wine',6,1),('HK457','Beets',11,66),('HV700','Flour - So Mix Cake White',14,25),('IG667','Scotch - Queen Anne',5,9),('II829','Iced Tea - Lemon, 340ml',9,78),('IJ972','Pasta - Orzo, Dry',13,76),('IK495','Sauce - Alfredo',15,75),('IP172','Wine - Barolo Fontanafredda',14,34),('IZ500','Danishes - Mini Raspberry',14,50),('JI117','Carrots - Mini Red Organic',11,10),('JI847','Tofu - Soft',9,32),('JO194','Cream - 18%',10,87),('JO536','Compound - Rum',10,31),('JO713','Island Oasis - Strawberry',5,39),('JR757','Cheese - Pont Couvert',11,47),('JT041','Raisin - Golden',14,57),('JU264','Tea Leaves - Oolong',9,19),('JU906','Chips - Doritos',9,21),('JU935','Cranberries - Fresh',12,10),('JV065','Hold Up Tool Storage Rack',8,77),('JW697','Wine - Niagara Peninsula Vqa',12,93),('JY937','Lamb - Leg, Bone In',9,8),('KA830','Coconut - Shredded, Unsweet',5,71),('KB286','Carbonated Water - White Grape',11,65),('KJ316','Ice Cream Bar - Oreo Cone',15,71),('KT876','Remy Red Berry Infusion',15,84),('KY105','Red Snapper - Fresh, Whole',5,19),('LC352','Wine - Cava Aria Estate Brut',7,12),('LD009','Lid Tray - 12in Dome',8,36),('LE079','Wine - Dubouef Macon - Villages',14,93),('LX886','Sweet Pea Sprouts',15,42),('MB776','Pepper - Cayenne',6,20),('MG956','Beef - Cow Feet Split',6,12),('MI230','Carrots - Jumbo',7,69),('MK583','Bacardi Limon',7,7),('ML715','Plums - Red',7,45),('MM037','Berry Brulee',7,53),('MN492','Slt - Individual Portions',13,6),('MT843','Pepper - Jalapeno',12,5),('MU142','Rice - Long Grain',6,32),('NE918','Wheat - Soft Kernal Of Wheat',7,33),('NH939','Vinegar - Tarragon',12,84),('NP374','Chicken - Diced, Cooked',10,58),('NS115','Paste - Black Olive',9,69),('OB968','Apricots - Dried',13,99),('OG434','Rice Paper',8,46),('OH665','Icecream Bar - Del Monte',12,55),('OL906','Pepper - White, Ground',8,99),('OS271','Nori Sea Weed - Gold Label',13,68),('OV106','Juice - Orange, 341 Ml',15,44),('OV919','Olive - Spread Tapenade',7,25),('OZ001','Green Scrubbie Pad H.duty',8,30),('PG292','Apple - Royal Gala',13,93),('PS085','Shrimp - Black Tiger 16/20',5,48),('PU660','Chicken - Wings, Tip Off',12,76),('PY803','Pork Salted Bellies',12,21),('QC185','Yogurt - French Vanilla',6,45),('QF493','Triple Sec - Mcguinness',14,7),('QI271','Juice - Apple, 1.36l',7,42),('QW179','Sauce - Soya, Light',13,23),('QY958','Ham - Black Forest',10,92),('RI326','Wine - Crozes Hermitage E.',7,48),('RI334','Pesto - Primerba, Paste',9,41),('RK165','Cake Slab',15,18),('RO569','Extract - Rum',11,49),('RQ758','Tea - Earl Grey',15,77),('RW787','Juice - Lagoon Mango',12,81),('SA732','Lamb Shoulder Boneless Nz',11,36),('SG928','Wine - Chateau Timberlay',13,85),('SL953','Sugar - Cubes',11,12),('SM970','Quinoa',10,55),('TE801','Bread - White, Sliced',11,48),('TK053','Tea Leaves - Oolong',14,31),('TK191','Bag Stand',9,25),('TM544','Bay Leaf Fresh',10,5),('TU579','Lamb - Racks, Frenched',13,82),('TY030','Hickory Smoke, Liquid',9,30),('UA179','Wine - Vidal Icewine Magnotta',12,3),('UA281','Ostrich - Prime Cut',12,3),('UK358','Wine - Manischewitz Concord',8,68),('VC122','Bread - Hamburger Buns',14,96),('VG964','Pork - Bacon, Sliced',11,40),('VM584','Cheese - La Sauvagine',13,58),('VQ014','Wine - Red, Mosaic Zweigelt',15,70),('VS229','Marzipan 50/50',10,6),('WB739','Corn Meal',13,27),('WD539','Mushroom - Morels, Dry',10,96),('WF636','Wine - Casillero Del Diablo',8,57),('WG282','Pepper - Jalapeno',5,5),('WG897','Bacardi Breezer - Tropical',6,95),('WI901','Sugar - Palm',5,3),('WR690','Anchovy In Oil',10,63),('WT733','Chocolate - Liqueur Cups With Foil',15,97),('WU008','Plasticspoonblack',11,2),('WY693','Water - San Pellegrino',14,19),('XG924','Pasta - Cappellini, Dry',15,18),('XJ298','Wine - Red, Metus Rose',11,68),('XN972','Arizona - Plum Green Tea',6,38),('XO639','Langers - Ruby Red Grapfruit',8,76),('XP041','Olives - Kalamata',10,48),('YD175','Cilantro / Coriander - Fresh',10,22),('YL225','Steel Wool',6,31),('ZB192','Wine - Sicilia Igt Nero Avola',5,97),('ZK754','Banana - Leaves',5,4),('ZR180','Tea - Mint',12,19);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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
