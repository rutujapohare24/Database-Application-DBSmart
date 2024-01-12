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
-- Table structure for table `item_dim`
--

DROP TABLE IF EXISTS `item_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_dim` (
  `Item_No` varchar(5) NOT NULL,
  `Item_type` varchar(255) NOT NULL,
  `Line_No` varchar(3) NOT NULL,
  PRIMARY KEY (`Item_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_dim`
--

LOCK TABLES `item_dim` WRITE;
/*!40000 ALTER TABLE `item_dim` DISABLE KEYS */;
INSERT INTO `item_dim` VALUES ('AO791','Jam - Blackberry, 20 Ml Jar','U75'),('AO920','Pate - Liver','B84'),('AR412','Jagermeister','U37'),('AW555','Island Oasis - Sweet And Sour Mix','J71'),('AY268','Urban Zen Drinks','G39'),('BD890','Soup - Campbells - Tomato','G15'),('BH681','Asparagus - White, Canned','H42'),('BJ579','Cheese - Comte','S80'),('BK596','Bacardi Breezer - Tropical','L93'),('BL599','Bread Foccacia Whole','L68'),('BM174','Beef Ground Medium','J48'),('CA803','Curry Paste - Green Masala','R18'),('CI234','Corn - Mini','U46'),('CL403','Butter - Salted, Micro','N19'),('CN516','Hold Up Tool Storage Rack','Z46'),('CR553','Beef - Rib Roast, Cap On','J98'),('CR720','Chocolate - Milk, Callets','S16'),('CY813','Veal - Brisket, Provimi, Bone - In','L86'),('DB501','Bread Crumbs - Japanese Style','E70'),('DL154','Cheese - Marble','Q01'),('DP121','Cheese - Cheddarsliced','O85'),('DU399','Tea - Lemon Green Tea','T81'),('DY365','Wine - White, Concha Y Toro','X74'),('EA784','Flower - Leather Leaf Fern','D34'),('ED547','Apricots Fresh','K23'),('EE729','Curry Paste - Madras','L22'),('EF558','Lemon Pepper','R68'),('EG310','Flour Dark Rye','Q69'),('EN548','Muffin Hinge 117n','F24'),('ER210','Soup Campbells','Z40'),('EV874','Yogurt - Raspberry, 175 Gr','F46'),('EX622','Carrots - Jumbo','L29'),('FA271','Pasta - Spaghetti, Dry','J01'),('FB524','Beer - Guiness','H78'),('FE796','Chips - Doritos','B89'),('FE984','Wine - Jafflin Bourgongone','Z71'),('FF363','Artichokes - Knobless, White','Q56'),('FM355','Soup - Cream Of Potato / Leek','N88'),('FT440','Puree - Mango','G57'),('FZ349','Soup - Campbellschix Stew','D52'),('GC237','Bread Crumbs - Japanese Style','R94'),('GO924','Yogurt - Cherry, 175 Gr','E21'),('GV965','Nut - Walnut, Pieces','O40'),('HA556','Coffee - Hazelnut Cream','H95'),('HB317','Sprite, Diet - 355ml','I17'),('HK080','Wine - Ice Wine','P93'),('HK457','Beets','H14'),('HV700','Flour - So Mix Cake White','M42'),('IG667','Scotch - Queen Anne','I13'),('II829','Iced Tea - Lemon, 340ml','A22'),('IJ972','Pasta - Orzo, Dry','C66'),('IK495','Sauce - Alfredo','Z38'),('IP172','Wine - Barolo Fontanafredda','U10'),('IZ500','Danishes - Mini Raspberry','J72'),('JI117','Carrots - Mini Red Organic','I28'),('JI847','Tofu - Soft','V62'),('JO194','Cream - 18%','C73'),('JO536','Compound - Rum','J96'),('JO713','Island Oasis - Strawberry','I89'),('JR757','Cheese - Pont Couvert','J91'),('JT041','Raisin - Golden','K16'),('JU264','Tea Leaves - Oolong','L87'),('JU906','Chips - Doritos','U00'),('JU935','Cranberries - Fresh','L05'),('JV065','Hold Up Tool Storage Rack','S65'),('JW697','Wine - Niagara Peninsula Vqa','C08'),('JY937','Lamb - Leg, Bone In','Q00'),('KA830','Coconut - Shredded, Unsweet','P88'),('KB286','Carbonated Water - White Grape','B30'),('KJ316','Ice Cream Bar - Oreo Cone','A33'),('KT876','Remy Red Berry Infusion','C41'),('KY105','Red Snapper - Fresh, Whole','D33'),('LC352','Wine - Cava Aria Estate Brut','U54'),('LD009','Lid Tray - 12in Dome','X60'),('LE079','Wine - Dubouef Macon - Villages','Y64'),('LX886','Sweet Pea Sprouts','X12'),('MB776','Pepper - Cayenne','T41'),('MG956','Beef - Cow Feet Split','W33'),('MI230','Carrots - Jumbo','F47'),('MK583','Bacardi Limon','J88'),('ML715','Plums - Red','V59'),('MM037','Berry Brulee','S90'),('MN492','Slt - Individual Portions','M81'),('MT843','Pepper - Jalapeno','O48'),('MU142','Rice - Long Grain','W84'),('NE918','Wheat - Soft Kernal Of Wheat','F51'),('NH939','Vinegar - Tarragon','H02'),('NP374','Chicken - Diced, Cooked','J89'),('NS115','Paste - Black Olive','A28'),('OB968','Apricots - Dried','P30'),('OG434','Rice Paper','M27'),('OH665','Icecream Bar - Del Monte','Q25'),('OL906','Pepper - White, Ground','M31'),('OS271','Nori Sea Weed - Gold Label','O65'),('OV106','Juice - Orange, 341 Ml','Q55'),('OV919','Olive - Spread Tapenade','I38'),('OZ001','Green Scrubbie Pad H.duty','U61'),('PG292','Apple - Royal Gala','C93'),('PS085','Shrimp - Black Tiger 16/20','Z56'),('PU660','Chicken - Wings, Tip Off','C77'),('PY803','Pork Salted Bellies','W66'),('QC185','Yogurt - French Vanilla','E48'),('QF493','Triple Sec - Mcguinness','H40'),('QI271','Juice - Apple, 1.36l','T85'),('QW179','Sauce - Soya, Light','J90'),('QY958','Ham - Black Forest','K12'),('RI326','Wine - Crozes Hermitage E.','H32'),('RI334','Pesto - Primerba, Paste','D67'),('RK165','Cake Slab','V90'),('RO569','Extract - Rum','V56'),('RQ758','Tea - Earl Grey','A19'),('RW787','Juice - Lagoon Mango','T94'),('SA732','Lamb Shoulder Boneless Nz','J81'),('SG928','Wine - Chateau Timberlay','Q88'),('SL953','Sugar - Cubes','T20'),('SM970','Quinoa','I08'),('TE801','Bread - White, Sliced','W55'),('TK053','Tea Leaves - Oolong','N32'),('TK191','Bag Stand','F94'),('TM544','Bay Leaf Fresh','N08'),('TU579','Lamb - Racks, Frenched','X07'),('TY030','Hickory Smoke, Liquid','S75'),('UA179','Wine - Vidal Icewine Magnotta','B17'),('UA281','Ostrich - Prime Cut','N55'),('UK358','Wine - Manischewitz Concord','O29'),('VC122','Bread - Hamburger Buns','Q28'),('VG964','Pork - Bacon, Sliced','U41'),('VM584','Cheese - La Sauvagine','Y77'),('VQ014','Wine - Red, Mosaic Zweigelt','B43'),('VS229','Marzipan 50/50','V09'),('WB739','Corn Meal','U55'),('WD539','Mushroom - Morels, Dry','O71'),('WF636','Wine - Casillero Del Diablo','G38'),('WG282','Pepper - Jalapeno','P94'),('WG897','Bacardi Breezer - Tropical','B16'),('WI901','Sugar - Palm','F77'),('WR690','Anchovy In Oil','G26'),('WT733','Chocolate - Liqueur Cups With Foil','O03'),('WU008','Plasticspoonblack','Z22'),('WY693','Water - San Pellegrino','Z57'),('XG924','Pasta - Cappellini, Dry','Q81'),('XJ298','Wine - Red, Metus Rose','R80'),('XN972','Arizona - Plum Green Tea','K33'),('XO639','Langers - Ruby Red Grapfruit','Z52'),('XP041','Olives - Kalamata','C78'),('YD175','Cilantro / Coriander - Fresh','M83'),('YL225','Steel Wool','J60'),('ZB192','Wine - Sicilia Igt Nero Avola','H89'),('ZK754','Banana - Leaves','R83'),('ZR180','Tea - Mint','Z66');
/*!40000 ALTER TABLE `item_dim` ENABLE KEYS */;
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
