CREATE DATABASE  IF NOT EXISTS `storeapp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `storeapp`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 7.125.102.122    Database: storeapp
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bought` tinyint(1) DEFAULT '0',
  `saved` tinyint(1) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_basket_0` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basketitem`
--

DROP TABLE IF EXISTS `basketitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basketitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `basket_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `addedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_basket_items_0` (`basket_id`),
  UNIQUE KEY `pk_basket_items_1` (`product_id`),
  CONSTRAINT `fk_basket_id2` FOREIGN KEY (`basket_id`) REFERENCES `basket` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_id2` FOREIGN KEY (`product_id`) REFERENCES `product` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basketitem`
--

LOCK TABLES `basketitem` WRITE;
/*!40000 ALTER TABLE `basketitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `basketitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `key_number` varchar(100) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `when` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_coupon_keys_0` (`coupon_id`),
  UNIQUE KEY `key_number_UNIQUE` (`key_number`),
  KEY `fk_transaction_idx` (`transaction_id`),
  CONSTRAINT `fk_key_campaigns` FOREIGN KEY (`coupon_id`) REFERENCES `couponcampaign` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_transaction` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couponcampaign`
--

DROP TABLE IF EXISTS `couponcampaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `couponcampaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `discount_quantity` int(11) DEFAULT NULL,
  `min_value` int(11) DEFAULT NULL,
  `max_value` int(11) DEFAULT NULL,
  `max_per_user` int(11) DEFAULT NULL,
  `compatible` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couponcampaign`
--

LOCK TABLES `couponcampaign` WRITE;
/*!40000 ALTER TABLE `couponcampaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `couponcampaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Value` varchar(45) NOT NULL,
  `Description` text,
  `Priority` int(11) DEFAULT NULL,
  `FilterGroupId` int(11) NOT NULL,
  `Deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`,`FilterGroupId`),
  KEY `fk_Filter_FilterGroup_idx` (`FilterGroupId`),
  CONSTRAINT `fk_Filter_FilterGroup` FOREIGN KEY (`FilterGroupId`) REFERENCES `filtergroup` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter`
--

LOCK TABLES `filter` WRITE;
/*!40000 ALTER TABLE `filter` DISABLE KEYS */;
INSERT INTO `filter` VALUES (1,'Champagne','champagne','',0,1,0),(2,'Fortified','fortified','',0,1,0),(3,'Mixed Cases','mixed','',0,1,0),(4,'Port','port','',0,1,0),(5,'Red Wine','redwine','',0,1,0),(6,'Rose Wine','rosewine','',0,1,0),(7,'Sherry','sherry','',0,1,0),(8,'Sparkling','sparkling','',0,1,0),(9,'White Wine','whitewine','',0,1,0),(10,'France','fr','',0,2,0),(11,'Australia','au','',0,2,0),(12,'Italy','it','',0,2,0),(13,'Spain','es','',0,2,0),(14,'USA','us','',0,2,0),(15,'South Africa','sa','',0,2,0),(16,'Chile','ch','',0,2,0),(17,'Argentina ','ag','',0,2,0),(18,'China ','ch','',0,2,0),(19,'England ','gb','',0,2,0),(20,'Germany ','de','',0,2,0),(21,'Greece','gr','',0,2,0),(22,'Hungary ','hu','',0,2,0),(23,'Israel ','is','',0,2,0),(24,'New Zealand ','nz','',0,2,0),(25,'Portugal ','pt','',0,2,0),(26,'Carignan','carignan','',0,3,0),(27,'Chardonnay','chardonnay','',0,3,0),(28,'Sauvignon Blanc','sauvignonblanc','',0,3,0),(29,'Shiraz','shiraz','',0,3,0),(30,'Syrah','syrah','',0,3,0),(31,'Bronze','bronze','',0,5,0),(32,'Gold','gold','',0,5,0),(33,'Silver','silver','',0,5,0),(34,'FineWines','finewine','',0,6,0),(35,'Kosher','kosher','',0,6,0),(36,'Organic','organic','',0,6,0),(37,'Vegan','vegan','',0,6,0),(38,'Vegeterian','vegetarian','',0,6,0),(39,'0.0','0.0','',0,14,0),(40,'5.5','5.5','',0,14,0),(41,'9.5','9.5','',0,14,0),(42,'10','10','',0,14,0),(43,'10.5','10.5','',0,14,0),(44,'11','11','',0,14,0),(45,'11.5','11.5','',0,14,0),(46,'12','12','',0,14,0),(47,'12.5','12.5','',0,14,0),(48,'13','13','',0,14,0),(49,'13.5','13.5','',0,14,0),(50,'14','14','',0,14,0),(51,'14.5','14.5','',0,14,0),(52,'California','californiaR','',0,8,0),(53,'Central Valley','centralvalleyR','',0,8,0),(54,'Champagne','champagneR','',0,8,0),(55,'Coastal Region','coastalR','',0,8,0),(56,'Emilia-Romagna','emiliaRomagnaR','',0,8,0),(57,'Languedoc-Roussillon','LanguedocroussillonR','',0,8,0),(58,'Marlborough','marlboroughR','',0,8,0),(59,'Mosel-Saar-Ruwer','moselsaarruwerR','',0,8,0),(60,'Rapel','rapelr','',0,8,0),(61,'Rioja','riojar','',0,8,0),(62,'South Eastern Australia','southeasternaustriar','',0,8,0),(63,'South Island','southislandr','',0,8,0),(64,'Trentino-Alto Adige','trentiloaltoadiger','',0,8,0),(65,'Veneto','venetor','',0,8,0),(66,'Vin de France','vindefrancer','',0,8,0),(67,'Western Cape','westercaper','',0,8,0),(68,'Pinot Noir','pinotnoir','',0,3,0),(69,'Merlot','merlot','',0,3,0),(70,'Grenache','grenache','',0,3,0),(71,'Blend','blend','',0,3,0),(72,'Pinot Meunier','pinotmeunier','',0,3,0),(73,'Tempranillo','tempranillo','',0,3,0),(74,'Riesling','riesling','',0,3,0),(75,'Garnacha','garnacha','',0,3,0),(76,'Zinfandel','zinfandel','',0,3,0),(77,'Colombard','colombard','',0,3,0),(78,'White Grape Blend','whitegrapeBlend','',0,3,0),(79,'Glera','glera','',0,3,0),(80,'Pinot Blanco','pinotblanco','',0,3,0),(81,'Malbec','malbec','',0,3,0),(82,'Mourvèdre','mourvedre','',0,3,0),(83,'Pignoletto','pignoletto','',0,3,0),(84,'Cabernet Sauvignon','cabernetsauvignon','',0,3,0),(85,'Pinot Grigio','pinotgrigio','',0,3,0),(86,'Sémillon','semillon','',0,3,0),(87,'Macabeo','macabeo','',0,3,0),(88,'Parellada','parellada','',0,3,0),(89,'Xarello','xarello','',0,3,0),(90,'Sauvignon Gris','sauvignongris','',0,3,0),(91,'Medium Dry','mediumdry','',0,9,0),(92,'Medium Bodied','mediumbodied','',0,9,0),(93,'Medium Sweet','mediumsweet','',0,9,0),(94,'Medium','medium','',0,9,0),(95,'Full or Robust','fullrobust','',0,9,0),(96,'Dry','dry','',0,9,0),(97,'Light and Fruity','lightandfruity','',0,9,0),(98,'Screwcap','screwcap','',0,12,0),(99,'Natural Cork','naturalcork','',0,12,0),(100,'Other','otherStopper','',0,12,0),(101,'Brancott Estate','Brancottestate','',0,10,0),(102,'First Cape','firstcape','',0,10,0),(103,'Barefoot','barefoot','',0,10,0),(104,'Castelmaure','castelmaure','',0,10,0),(105,'Jackson Estate','jacksonestate','',0,10,0),(106,'Casillero del Diablo','casillerodeldiablo','',0,10,0),(107,'Tesco','tesco','',0,10,0),(108,'Castillo de Albai','castillodealbai','',0,10,0),(109,'Lagunilla','lagunilla','',0,10,0),(110,'Gallo Family Vineyards','gallofamilyvineyards','',0,10,0),(111,'Faustino Rivero Ulecia','faustinoriveroulecia','',0,10,0),(112,'Blossom Hill','blossomhill','',0,10,0),(113,'Blue Nun','bluenun','',0,10,0),(114,'Dino','dino','',0,10,0),(115,'Bellingham','bellingham','',0,10,0),(116,'Grand Conseiller','grandconseiller','',0,10,0),(117,'Black Tower','blacktower','',0,10,0),(118,'Balfour','balfour','',0,10,0),(119,'Eisberg','Eisberg','',0,10,0),(120,'Rosewater Park','rosewaterpark','',0,10,0),(121,'Cono Sur Bicicleta','conosurbicicleta','',0,10,0),(122,'Catalonia','cataloniaR','',0,8,0),(123,'Freixenet','freixenet','',0,10,0);
/*!40000 ALTER TABLE `filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtergroup`
--

DROP TABLE IF EXISTS `filtergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtergroup` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `FilterDependencyId` int(11) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Deleted` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtergroup`
--

LOCK TABLES `filtergroup` WRITE;
/*!40000 ALTER TABLE `filtergroup` DISABLE KEYS */;
INSERT INTO `filtergroup` VALUES (1,'Drink Type',NULL,1,NULL),(2,'Country',NULL,2,NULL),(3,'Grape Variety',NULL,3,NULL),(4,'Price Per Bottle',NULL,4,NULL),(5,'Awards',NULL,5,NULL),(6,'Special Diet',NULL,6,NULL),(7,'More Options',NULL,7,NULL),(8,'Region',2,8,NULL),(9,'Style',NULL,9,NULL),(10,'Brand',NULL,10,NULL),(11,'Producer',NULL,11,NULL),(12,'Stopper',NULL,12,NULL),(13,'Vinery',NULL,13,NULL),(14,'ABV',NULL,14,NULL);
/*!40000 ALTER TABLE `filtergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethod`
--

DROP TABLE IF EXISTS `paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentmethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethod`
--

LOCK TABLES `paymentmethod` WRITE;
/*!40000 ALTER TABLE `paymentmethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Description` text NOT NULL,
  `History` text,
  `Images` varchar(300) DEFAULT NULL,
  `NumberItemsInCase` int(11) DEFAULT NULL,
  `PressComments` text,
  `ProductMinOrder` int(11) DEFAULT NULL,
  `RecommendedStorage` varchar(250) DEFAULT NULL,
  `SupplierId` int(11) DEFAULT NULL,
  `TastingNotes` text,
  `Price` int(11) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `Deleted` tinyint(1) DEFAULT NULL,
  `TPNB` int(11) DEFAULT NULL,
  `IsNewProduct` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'FREIXENET ICE CUVEE ESPECIAL 75CL','Based in Catalonia and founded in the 19th century, Freixenet remains a family business. With winery estates worldwide, Freixenet has grown to become one of the worlds leading producers of both still and sparkling wine.','1.png;other.png',6,'',6,'This wine is ideal for drinking now but can be kept for up to 1 year',58466,'Freixenet Ice has been expertly created to be enjoyed in a lovely big glass over cubes of ice',13,100,0,71218498,0),(2,'BRANCOTT ESTATE SAUVIGNON GRIS 75CL','Since planting the first Marlborough Sauvignon Blanc and Pinot Noir in 1975, Brancott Estate has continued to craft striking wines that suit every occasion, including oak-infused and age-worthy expressions of Sauvignon Blanc and Pinot Noir. In addition, they have led the revival of Sauvignon Gris, an almost extinct varietal now enjoying a global resurgence.','2.png;other.png',6,'',6,'This wine can be drunk now but will further improve if carefully stored for up to 3 years',63339,'Pale straw in colour with aromas of tropical fruit, passionfruit and nectarine.',7,100,0,76758462,0),(3,'FIRST CAPE LIMITED RELEASE CHARDONNAY 75CL','Our wines are all grown and produced by a dynamic team of neighbouring farmers, all co-owners of the FirstCape brand. We believe this is the best way to guarantee the quality of FirstCape, as they care more about the wines from the vine to the shelf.','3.png;other.png',6,'',6,'To enjoy this wine at its best, drink within 1 year of purchase.',64455,'This delicious Chardonnay shows tropical fruit and citrus aromas on the nose. Balanced wonderfully with rich pear and melon notes on the palate',5,100,0,76343175,0),(4,'BAREFOOT MERLOT 75CL','Barefoot Wine & Bubbly got started in California in the 1960s. Its founders believed that wine should be more fun and less serious; and created a wine that could be enjoyed by everyone from first-time wine drinkers to hard-core aficionados. Barefoot Wine & Bubbly is the most awarded and #1 wine brand in the US and was introduced to the UK in 2007. Staying true to its grassroots beginnings Barefoot Wine & Bubbly gives back to local non-profit groups through charitable wine donations.','4.png;other.png',6,'',6,'This wine is ideal for drinking now but can be kept for up to 1 year',64455,'From the Barefoot stable of wines, this is a winning combination of cherry, plum and chocolate flavours. Merlot is a great food wine too, matching up to roasted red meats and tomato sauce-based pasta dishes with ease.',7,100,0,53974874,0),(5,'CASTELMAURE CORBIERES 75CL','On the plateau of the Hautes Corbières, all Castelmaures 169 inhabitants are grape producers or their children. All share a common passion. Founded in 1921, the Cave dEmbres et Castelmaure reflects the dynamism that produces wines of great finesse with splendid aromatic qualities. Each of the 760 land parcels is individually supervised, the most modern techniques are used in the vinification process. The 25 year old partnership between Jeanjean and Castelmaure has created one of Corbières great names.','1.png;other.png',6,'',6,'This wine is ideal for drinking now but can be kept for up to 5 years',68481,'Eye : Beautiful red color with purple blue - Nose : Delicate wine with garrigue aromas - Palate : Open, creamy, ends long, well balanced',9,100,0,82415744,0),(6,'GREY GHOST SAUV BLANC 75CL','The Grey Ghost Gum tree which graces the label of the wine, and now stands over 140 feet tall, was planted in 1867 by Alice Jackson, great-grandmother of John Stichbury, who founded Jackson Estate in 1988. Jackson Estate is a special place, a testament to the vision and determination of the Stichbury and Jackson families who have farmed the land for more than 160 years.','2.png;other.png',6,'',6,'This wine is ideal for drinking now but can be kept for up to 2 years',60398,'Soft peachy fruit characters blend perfectly with gentle toasty oak aromas. The palate is flinty and savoury with great length.',16,100,0,57001119,0),(7,'CASILLERO DEL DIABLO SHIRAZ ROSE 75CL','\"More than 100 years ago, Don Melchor de Concha y Toro reserved for himself an exclusive batch of his best wines. To keep strangers away from his private reserve, he spread the rumor that the Devil lived in that place. Hence the name: Casillero Del Diablo, The Devils Cellar\".','3.png;other.png',6,'',6,'To enjoy this wine at its best, drink within 1 year of purchase.',60581,'A medium-bodied dry rosé packed full of blackberry and raspberry flavours with a dash of spice and a crisp, fresh finish',9,100,0,65742641,0),(8,'TESCO FINEST ROSE NV CHAMPAGNE 75CL','Rosé champagne was traditionally reserved for summer parties, preferably outside in sunshine, its popularity has soared in recent years and its delicate colour together with appealing fruit flavour makes it a favourite now for all occasions.','4.png;other.png',6,'',6,'This wine is ideal for drinking now but can be kept for up to 2 years',60156,'Made by one of Champagnes oldest Houses exclusively for Tesco, this is a delicate blend of Chardonnay, Pinot Noir and Pinot Meunier. Finely tuned, with crisp citrus and redcurrant fruit flavours. Classic pink fizz, elegantly done. Serve chilled, with smoked salmon. ',18,100,0,72350184,0),(9,'CASTILLO DE ALBAI RIOJA RESERVA 75CL','Pagos del Rey occupies a privileged setting on the right bank of the Ebro river in the foothills of Rioja Alavesa in the town of Fuenmayor, where wine-making and tradition form the very heart of the Rioja Denominacion de Origen Califcada. Work on the Pagos del Rey winery in La Rioja began in 2004, with the first vintage in 2006 and completion of the buildings in 2008. The jewel in its crown is its ageing house, with room for 20,000 American and French oak barrels.','1.png;other.png',6,'',6,'This wine is ideal for drinking now but can be kept for up to 2 years',60999,'Deep cherry red, on the nose it displays aromas of chocolate and jam, leading to oak and rich spices - The palate is packed with ripe red fruits with oak, tobacco and leather notes - Elegant and well balanced, this wine has an intense and long finish.',9,100,0,76983540,0),(10,'TESCO FINEST RIESLING 75CL','Though present in the 1800s, it is only since the 1980s that Riesling began to be planted in volume in NZ, rising to the fourth most popular white varietal planted in recent years after Sauvignon Blanc, Chardonnay and Pinot Gris.','2.png;other.png',6,'',6,'This wine can be drunk now but will further improve if carefully stored for up to 3 years',67130,'Made by NZs first carbon neutral winery, Yealands. Riesling from the Awatere Valley can produce incredible flavours, as it does here: jasmine aromas, pure lime fruit flavours and a touch of honey. Fantastic with spicy Asian dishes. ',6,100,0,74895324,0),(11,'SMOOTH SUMMER REDS MIXED CASE 6X75CL','','3.png;other.png',1,'',6,'',57808,'6 bottle case - 1 of each. Faustino Rivero Ulecia White Label Tempranillo 2015, Spain, 13.5% The family behind this wine have been making Rioja for over 100 years, and this bold, juicy Tempranillo is a shining star in their portfolio - Bright with red berry fruit and a hint of vanilla & spice thanks to two years’ careful ageing in oak barrels, this is soft, supple and extremely sippable - Gorgeous with roast lamb or mushroom risotto. Château Roc de Bignon Bordeaux 2015, France, 12.5% This smooth, velvety Bordeaux has delicious, fruity flavours of cherry, red berries and spice and a lovely, long lingering aftertaste. Winton Reserve Margaret River Shiraz 2014, Australia, 14% Soft and ripe Shiraz packed full of juicy berry flavours. Higgovale Heights Shiraz Mourvedre Viognier 2014, South Africa, 14.5% From Spier, one of Stellenbosch’s oldest wine producers - This is a Rhône-inspired blend with full on blackcurrant, a dusting of pepper and a dash of Viognier for added aromas. Poggio al Sale Chianti 2015, Italy, 12.5% From a beautiful winery nestled in the hills between Florence and Siena, this is a classic Chianti blend - Featuring Sangiovese, Canaiolo and Ciliegiolo grapes, it offers smooth, fresh black cherry flavours - Positively heavenly with hearty pasta dishes. Most Wanted Malbec 2016, Argentina, 12% Taste: Blackberries / Blueberries / Hint of Oak. ADDITIONAL PRODUCT INFORMATION FOLLOWS. Faustino Rivero Ulecia White Label Tempranillo 2015, Spain, 13.5% ORIGIN - Wine of Spain; BOTTLED BY - à HOSTALER I, SL, Ctr De Garray, KM 73, 26580 Arnedo (La Rioja); SIZE - 75cl e; ALLERGENS - Contains Sulphur Dioxide/Sulphites, Milk and Egg; STORAGE - This wine is ideal for drinking now but can be kept for up to 1 year; VINTAGE - 2015; ALCOHOL - 13.5 percent volume, 10.1 units per bottle; STOPPER - Screwcap. Château Roc de Bignon Bordeaux 2015, France, 12.5% ORIGIN - Wine of France; BOTTLED BY - Frontenac, Gironde, France; SIZE - 75cl e; ALLERGENS - Contains Sulphur Dioxide/Sulphites, Milk and Egg; STORAGE - This wine can be drunk now but will further improve if carefully stored for up to 5 years; VINTAGE - 2015; ALCOHOL - 12.5 percent volume, 9.4 units per bottle; STOPPER – Natural Cork. Winton Reserve Margaret River Shiraz 2014, Australia, 14% ORIGIN - Wine of Australia; BOTTLED BY - W1743, CH24LF; SIZE - 75cl e; ALLERGENS - Contains Sulphur Dioxide/Sulphites, Milk and Egg; STORAGE - To enjoy this wine at its best, drink within 1 year of purchase; VINTAGE - 2013; ALCOHOL - 14 percent volume, 10.5 units per bottle; STOPPER - Screwcap. Higgovale Heights Shiraz Mourvedre Viognier 2014, South Africa, 14.5% ORIGIN - Wine of South Africa; BOTTLED BY - 14 percent volume, 10.5 units per bottle; SIZE - 75cl e; ALLERGENS - Contains Sulphur Dioxide/Sulphites, Milk and Egg; STORAGE - This wine is ideal for drinking now but can be kept for up to 2 years; VINTAGE - 2014; ALCOHOL - 14.5 percent volume, 10.9 units per bottle; STOPPER - Screwcap. Poggio al Sale Chianti 2015, Italy, 12.5% ORIGIN - Wine of Italy; BOTTLED BY - CA VI PI, Castellina in C (SI), Italia; SIZE - 75cl e; ALLERGENS - Contains Sulphur Dioxide/Sulphites, Milk and Egg; STORAGE - This wine is ideal for drinking now but can be kept for up to 2 years; VINTAGE - 2015; ALCOHOL - 12.5 percent volume, 9.4 units per bottle; STOPPER – Natural Cork. Most Wanted Malbec 2016, Argentina, 12% ORIGIN - Wine of Argentina; BOTTLED BY - W1740, DH9 7XP; SIZE - 75cl e; ALLERGENS - Contains Sulphur Dioxide/Sulphites, Milk and Egg; STORAGE - This wine can be drunk now but will further improve if carefully stored for up to 1 year; VINTAGE - 2016; ALCOHOL - 12 percent volume, 9 units per bottle; STOPPER - Screwcap. ',8,100,0,83653932,0),(12,'LAGUNILLA RESERVA RIOJA 75CL','Lagunilla is one of the oldest and finest names in Rioja. Don Felipe Lagunilla San Martin founded this Bodega in 1885. The quality of the Lagunilla wines and many others owe much to his pioneering work in defeating Phylloxera which hit the region in the 1870s. It was he who recommended the use and introduction of American rootstocks to the Rioja vineyards.','4.png;other.png',6,'',6,'This wine is ideal for drinking now but can be kept for up to 2 years',58518,'A beautifully mellow Rioja, made from a classic blend of Tempranillo with a bit of Garnacha too. The result is smooth, ripe and velvet-soft. Time spent in oak barrels adds gorgeous vanilla and spice flavours too. One to take to a dinner party, or even better, have at home in front of the fire/telly. A brilliant match for meatballs. ',7,100,0,58333738,0),(13,'GALLO FAMILY VINEYARDS SUMMER ROSE 75CL','For four generations the Gallo family has been bringing consumers quality wines, innovation and value for money. Delicious tasting wines definitely something to raise a glass to.','1.png;other.png',6,'',6,'This wine can be drunk now but will further improve if carefully stored for up to 1 year',53288,'A lighter fresher style with flavours of raspberry, pomegranate, strawberries and cream.',5,100,0,76438455,0),(14,'MYSTERY DOZEN STANDARD WHITES M.CASE 12X75CL','','2.png;other.png',1,'',6,'',57808,'Our range of 6 Mystery Cases are made up of perfectly good quality Wine, Sparkling Wines and Champagnes that have been returned to our warehouse. Generally, these orders have been returned due to customers changing their minds at the point of delivery, but occasionally a single bottle might be damaged in transit, cosmetically impacting the other wine labels in that case. These wines are inspected and re-worked into new mystery cases to offer you some incredible bargains. In the \"Mystery Dozen Standard Whites Case\", youll find 12 wines retailing over £6 a bottle off promotion but at an unbelievable total case price of £60. So if you fancy incredible value for money and are willing to experiment with quality wines you may have never tried before, this mystery case is for you. ADDITIONAL PRODUCT INFORMATION FOLLOWS. Apologies, we are unable to display additional product and allergen information for this Mystery case. Please be aware that the wines in this Mystery case may contain the following allergens: sulphites, milk or egg. Please ensure you check each different bottle of wine at time of delivery for specific allergen information.',5,100,0,54413852,0),(15,'FAUSTINO RIVERO RIOJA CRIANZA YELLOW LABEL','The winery was founded more than 100 years ago by Olegario Rivero in the Riojan area of Arnedo. Today the business is run by the fourth generation of the family. The winery is now using some of the most modern equipment and is also developing new wines using a wider range of grape varieties.','3.png;other.png',6,'',6,'This wine can be drunk now but will further improve if carefully stored for up to 2 years',67728,'A gloriously good Rioja, aged for at least two years including time spent in oak barrels - It’s a medal-winner too, thanks to its velvet-soft richness, mellow black fruits and generous sprinkling of spice. Loves slow-cooked lamb or pork dishes.',8,100,0,70630789,0),(16,'BLOSSOM HILL ROSE GRENACHE ROSE 75CL','Blossom Hill was created only 20 years ago, and has become the darling of the wine drinking public, with its distinctive floral label, and easy-drinking, fruity styles.','4.png;other.png',6,'',6,'To enjoy this wine at its best, drink within 1 year of purchase.',53274,'Aromas of red berry, cherry and white pepper. Lush on the palate with lots of berries. Citrus and honeysuckle notes. This wine is a perfect partner for barbecues, smoked salmon, mushroom risotto and creamy cheeses',6,100,0,60975956,0),(17,'BLUE NUN 75CL','Blue Nun, one of the world’s oldest wine brands, was created in 1921 by H. Sichel Söhne in Germany. Today, Blue Nun represents wines from the heart of Germany and Europe. State-of-the-art cellar technology and 8 generations of winegrowing and winemaking experience are the guarantee of consistently high quality. Blue Nun has achieved real cult status over decades, and is a guarantee of successful trade partnership. In 1995 the Langguth Family took over the responsibility for this famous wine brand from Germany. A new era in the Blue Nun history began.','1.png;other.png',6,'',6,'This wine can be drunk now but will further improve if carefully stored for up to 2 years',53274,'Perfect balance, softness, and depth of fresh fruit flavours - Excellent with light stews, chicken, Asian cuisine and fish dishes.',5,100,0,52912414,0),(18,'DINO PROSECCO DOC 75CL','Prosecco as we know it today, first came to market around the 1960s when the winemakers of the region began to produce it in a dryer style.','2.png;other.png',6,'',6,'',63183,'The Prosecco region, in northeast Italy, is the source of this light, deliciously frothy fizz. Made from the Glera grape, its full of lemon fruit flavours with delicate floral aromas. Just add nibbles and a few friends! ',8,100,0,73968229,0),(19,'BELLINGHAM THE BERNARD SERIES MMM 75CL','Named in honour of our founder Bernard Podlashuk, The Bernard Series is Bellingham’s premium range of extraordinary wines.','3.png;other.png',6,'',6,'This wine can be drunk now but will further improve if carefully stored for up to 4 years',61327,'A dense and concentrated wine, with complex red and black fruit with spice supported by oak and seamless, velvety tannins. The wine has a lovely freshness on the finish.',14,100,0,72319073,0),(20,'BOUCHARD GRAND CONSEILLER CHARDONNAY 75CL','Established in Beaune at the heart of Burgundy in 1750, Bouchard Ains & Fils has a reputation for excellence. It was Paul Bouchard (1814-1898), the 5th generation of the family, who became the Grand Conseiller by founding the viticultural school in Beaune, to further develop and pass on growing techniques and wine making skills to future generations. This wine has been made as a celibration of Paul Bouchards dedication to the region, his city and of course his wines.','4.png;other.png',6,'',6,'To enjoy this wine at its best, drink within 1 year of purchase.',64547,'Appearance is brilliant gold with tint of green. The nose is floral (acacia) with citrus fruits with a delicate hint of vanilla. A well balanced pallet of brioche and butter notes giving an elegant and long finish',8,100,0,77568454,0),(21,'BLACK TOWER FRUITY WHITE 75CL','Black Tower is Germanys most widely exported brand and has been enjoyed since it was first launched in 1968. It has now become a cult brand in award-winning packaging, pleasing consumers young and old around the world.','1.png;other.png',6,'',6,'To enjoy this wine at its best, drink within 1 year of purchase.',58591,'The iconic black bottle has been around for a long time, thanks to the timeless classic inside - This fruity white is full of easy-going pineapple and mango fruit, simply sip on its own, or goes well with lightly spiced dishes. ',5,100,0,50941388,0),(22,'TESCO FINEST PIGNOLETTO 75CL','In 1950, a group of 9 wine producers from the Province of Reggio Emilia joined together to form the Cantine Cooperative Riunite. 11 years later, 4 wineries from the Province of Modena followed their lead and founded the Consorzio Interprovinciale Vini (CIV). The two organizations grew thanks to cooperation between their members. At the start of the new century, they felt that the time had come to unite in a single association in order to meet the requirements of the market in an increasingly comprehensive and efficient manner. Cantine Riunite & CIV now has 2,000 members and 3,700 hectares of vineyards. This large, internationally renowned group sets the benchmark for Italian cooperation and flies the flag for the countrys qualities all over the world','2.png;other.png',6,'',6,'',53274,'Love Prosecco? Fancy trying something similar but just a bit different? Pignoletto is the answer. Thats the name of the grape and its made in the Emilia-Romagna region, in northern Italy. Popping with peach and pear flavours, with soft, frothy bubbles to boot. Brilliant party fizz. ',7,100,0,50941388,0),(23,'TESCO FINEST FAUGERES 75CL','The soil structure and compistion of the region bring about naturally low yelds and wines with a rare elegance.','3.png;other.png',6,'',6,'This wine can be drunk now but will further improve if carefully stored for up to 5 years',68481,'Made from local grapes grown in the hills of Faugeres in the Languedoc, this bold red is full of jammy black fruit flavours with herbal and spicy notes. With powerful tannins and a long finish it demands full flavoured food such as game or grilled steak.',7,100,0,82415738,0),(24,'GHOST PINES CABERNET SAUVIGNON 75CL','Ghost Pines knows no boundaries. Inspired by the free-form nature of the indigenous gray pines that loom mysteriously throughout Northern California, Ghost Pines embodies the progressive spirit of California winemaking.','4.png;other.png',6,'',6,'This wine is ideal for drinking now but can be kept for up to 1 year',53288,'Dark fruit flavours, round tannins and an enduring finish. Sweet vanilla nuances and the occasional savory note make this Cabernet a truly unique wine.',11,100,0,79873470,0),(25,'BALFOUR 1503 ROSE NV 75CL','1503 - An auspicious year marking the foundations of Hush Heath Manor. The manor overlooks the estate in Kent, which produces some of the finest wines in England.','1.png;other.png',6,'',6,'This wine is ideal for drinking now but can be kept for up to 1 year',53178,'A delicate and inviting rose petal pink, with a finely beaded sparkle. A lively pink grapefruit character is accented with defined notes of wild strawberry and a subtle herbaceousness',18,100,0,82632452,0),(26,'TESCO FINEST PINOT GRIGIO 75CL','Pinot Grigio variety was introduced into Trentino by the Agricultural Institute of San Michele allAdige at the beginning of the 20th century, in order to increase the presence of several grape varieties on this side of the Alps. This variety has been naturalized so successfully in Trentino region, that it has become the “ambassador of Trentino” worldwide.','2.png;other.png',6,'',6,'To enjoy this wine at its best, drink within < > of purchase.',63007,'Award-winning Pinot Grigio made from top quality grapes grown in vineyards across northern Italys Trentino region. This has a real citrus lift, with an almost lemon-peel character to it; subtle pear fruit too. Match it with simple basil-topped tomato salads. ',6,100,0,57417019,0),(27,'EISBERG SAUVIGNON 75CL ALCOHOL FREE','','3.png;other.png',6,'',6,'',28099,'Our winemakers have created this fresh, aromatic Sauvignon Blanc just for you. It has classic gooseberry and tropical fruit flavours, and has had the alcohol carefully removed making it perfect for you to enjoy at any time',4,100,0,82449053,0),(28,'ROSEWATER PARK SAUVIGNON SEMILLON 75CL','This Sauvignon Blanc Semillon was produced by Kingston Estate wines, a family owned winery with an enviable reputation for consistently making quality wines.','4.png;other.png',6,'',6,'This wine is ideal for drinking now but can be kept for up to 1 year',62483,'This is a fantastic Australian take on a traditional white Bordeaux blend - Here, the fragrant, gooseberry-scented Sauvignon Blanc grape sits brilliantly with the Semillon, which adds ripe lime and lemon to the blend - Made by the brilliant Kingston Estate, this is summer in a glass.',9,100,0,73314831,0),(29,'EISBERG SPARKLING 75CL 0.05% ALCOHOL','','1.png;other.png',6,'',6,'',28099,'',4,100,0,82415387,0),(30,'CONO SUR BICICLETA SAUV BLANC 75CL','After just over a decade, Cono Surs original claim, No Family Trees, No Dusty Bottles, Just Quality Wine continues to inspire us in quality, innovation, style and creativity. Cono Sur continues to push the boundaries of winemaking in Chile','2.png;other.png',6,'',6,'',60581,'This Sauvignon Blanc is refreshingly crisp and elegant; full of citrus aromas and flavours of gooseberry and lime. Food Pairing: It is excellent as an aperitif and will also complement white meats, salads, vegetarian dishes and seafood. Serve chilled.',8,100,0,51600128,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_filter`
--

DROP TABLE IF EXISTS `product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_filter` (
  `FilterId` int(11) NOT NULL,
  `Value` text NOT NULL,
  `Product_Id` int(11) NOT NULL,
  KEY `fk_Product_Filter_Filter1_idx` (`FilterId`),
  KEY `fk_Product_Filter_Product1_idx` (`Product_Id`),
  CONSTRAINT `fk_Product_Filter_Filter1` FOREIGN KEY (`FilterId`) REFERENCES `filter` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Product_Filter_Product1` FOREIGN KEY (`Product_Id`) REFERENCES `product` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_filter`
--

LOCK TABLES `product_filter` WRITE;
/*!40000 ALTER TABLE `product_filter` DISABLE KEYS */;
INSERT INTO `product_filter` VALUES (8,'',1),(9,'',2),(13,'',1),(24,'',2),(45,'',1),(49,'',3),(51,'',2),(58,'Crafted in a style that epitomises the unique character and flavour of the growing region. Grapes are sourced from across Brancott Estates vineyards in the Marlborough region.',2),(87,'',1),(88,'',1),(89,'',1),(90,'',2),(96,'',2),(99,'',1),(101,'',2),(122,'Penedès in Catalonia, NE Spain, is the largest and most important sparkling wine region. It is split into 3 zones ranging in altitude from 250m to 800m above sea level, each with a distinct climate.',1),(123,'',1),(9,'',3),(15,'',3),(67,'Our FirstCape wines are all made from grapes grown in the Western Cape of South Africa, throughout the beautiful Breede River Valley, just an hours drive from Cape Town.',3),(27,'',3),(91,'',3),(102,'',3),(98,'',3),(49,'',4),(5,'',4),(14,'',4),(52,'Once the warm weather came in June and July, the grape canopies were managed to allow just the right amount of sunlight on the fruit. Grapes were harvested a little later between August and September.',4),(69,'',4),(97,'',4),(103,'',4),(33,'',4),(98,'',4),(50,'',5),(5,'',5),(10,'',5),(57,'Castelmaure, a very special terroir The village nestles high in the Hautes Corbières, at an altitude that encourages true southern elegance. Geologically the arid soil is based on black schist and limestone which means harvesting has to be by hand. The Castelmaure plateau is made up of : - Alluvial sediment (fruitiness, aromatic complexity) - Hard Jurassic Hettengian era limestone (power) - Black and grey schist ( finesse, mineral qualities).',5),(26,'',5),(70,'',5),(29,'',5),(30,'',5),(104,'',5),(99,'',5),(47,'',6),(9,'',6),(24,'',6),(58,'Jackson Estates vineyards are all located in the Marlborough wine region. The soil profile is linked to the underlying minerality and intense herbaceous notes that makes the wine style so unique.',6),(28,'',6),(91,'',6),(105,'',6),(98,'',6),(48,'',7),(6,'',7),(16,'',7),(60,'This is a special wine, and not a variety, but a style. Casillero del Diablo is made by vinifying red Shiraz grapes as if to make a white wine. The result is a refreshing wine with attractive strawberry, raspberry and cherry aromas with flavors of blackberries and plum. A refreshing wine that is closer to a red than a white. Enjoy Casillero del Diablo Rose with light, summer dishes such as grilled white meats or tuna, cold pasta salads, and fresh cheeses.',7),(71,'',7),(91,'',7),(106,'',7),(98,'',7),(46,'',8),(1,'',8),(10,'',8),(54,'Champagne, the wine, may come only from the Champagne region in Northern France. Limestone and clay soils, similar to those in southern England, produce the finest quality grapes for making Champagne.',8),(27,'',8),(72,'',8),(68,'',8),(91,'',8),(107,'',8),(31,'',8),(38,'',8),(99,'',8),(49,'',9),(5,'',9),(13,'',9),(61,'All over Spain wine is an important part of the culture, but in La Rioja the people live and breathe wine at every turn. It is the most famous wine producing region in Spain and produces some of its most glorious wines. The production of red wines accounts for around 95% of the total, with notable white and rose wines also being produced. The great Tempranillo grape dominates in the vineyard, producing wines that are both suitable for drinking when young, and those that are destined for prolonged ageing.',9),(73,'',9),(92,'',9),(108,'',9),(99,'',9),(44,'',10),(9,'',10),(24,'',10),(63,'90% of NZ Riesling is grown in the South Island, where the climate is ideally suited with cool, long, dry, sunny autumns, large diurnal variance and low humidity. The South Islands bright days, cool nights and long, dry autumns create the perfect climate for Riesling. Styles range from bone dry to lushly sweet. Youll find stone-fruit and spice characters from sunny Nelson; lemon, lime and spice from Marlborough; and green apples and citrus',10),(74,'',10),(91,'',10),(107,'',10),(98,'',10),(39,'',11),(3,'',11),(49,'',12),(5,'',12),(13,'',12),(61,'Known for its consistent quality and range of wines, Lagunilla is at the forefront of modern wine-making technology whilst at the same time mindful of the tradition and history that has made Rioja one of the classic wine regions of the world.',12),(75,'',12),(73,'',12),(92,'',12),(99,'',12),(109,'',12),(40,'',13),(6,'',13),(14,'',13),(52,'The grapes used in this blend were grown in an array of vineyards throughout the beautiful California Central Valley. An assortment of micro climates and soil types in the different vineyards leads to unique wine styles in the winery.',13),(76,'',13),(93,'',13),(99,'',13),(110,'',13),(39,'',14),(3,'',14),(48,'',15),(5,'',15),(13,'',15),(61,'Vineyards situated between 300 and 600 metres altitude. High percentage of small plots of less than 1 ha. Both traditional and modern technological cultivation methods are used. Average age of vines is 25 years.',15),(75,'',15),(73,'',15),(92,'',15),(99,'',15),(111,'',15),(45,'',16),(6,'',16),(14,'',16),(52,'This wine is produced in California, USA.',16),(77,'',16),(70,'',16),(94,'',16),(98,'',16),(112,'',16),(42,'',17),(9,'',17),(20,'',17),(59,'The vineyards in Germany are mainly planted in the Southwest along the River Rhine. The vineyards for the Blue Nun wine are in the foreground of Langguths quality. Their philosophy is selection according to the “terroir” principle, which emphasises soil and localised climate. The soil is a combination of weathered slate, loess and loam of the slopes next to the River Rhine.',17),(78,'',17),(91,'',17),(98,'',17),(113,'',17),(44,'',18),(8,'',18),(12,'',18),(65,'The Veneto is one of the largest wine producing regions of Italy. Being in the north of the country and lying quite close to the cooling influence of the Adriatic Sea, it is climatically suited to producing delicate, fresh and elegant wine-styles.',18),(27,'',18),(79,'',18),(80,'',18),(91,'',18),(99,'',18),(114,'',18),(31,'',18),(50,'',19),(5,'',19),(15,'',19),(55,'The fruit comes from specific sites: Merlot from the Bottelary Hills in Stellenbosch (weathered granite), the Mourvedre from Achter Paarl (dirty sandstone soils) and bush vine Malbec from Somerset West (shale and sandstone mixed soils). ',19),(81,'',19),(69,'',19),(82,'',19),(95,'',19),(99,'',19),(115,'',19),(34,'',19),(47,'',20),(9,'',20),(10,'',20),(66,'Vins de France are produced from different regions of France. We have selected the best \"terroirs\", including Burgundy to create this wine.',20),(27,'',20),(98,'',20),(116,'',20),(41,'',21),(9,'',21),(10,'',21),(78,'',21),(94,'',21),(98,'',21),(117,'',21),(45,'',22),(8,'',22),(12,'',22),(56,'',22),(83,'',22),(91,'',22),(100,'',22),(107,'',22),(38,'',22),(47,'',23),(5,'',23),(10,'',23),(57,'Warm and dry Mediterranean climate, tempered by the altitude',23),(26,'',23),(70,'',23),(29,'',23),(30,'',23),(99,'',23),(107,'',23),(38,'',23),(51,'',24),(5,'',24),(14,'',24),(52,'Bold and intensely flavored, our Ghost Pines Cabernet Sauvignon was crafted with grapes from Sonoma and Napa. The blend of these two regions creates an expansive palate that offers dark fruit flavors, round tannins and an enduring finish. Sweet vanilla nuances and the occasional savory note make this Cabernet a truly unique wine.',24),(84,'',24),(92,'',24),(99,'',24),(34,'',24),(45,'',25),(8,'',25),(19,'',25),(27,'',25),(72,'',25),(68,'',25),(99,'',25),(118,'',25),(33,'',25),(47,'',26),(9,'',26),(12,'',26),(64,'Production area: Trentino region, in specific from the Roverè della Luna alluvial fan and along the whole stretch of the Adige river, as far as the Vallagarina and Valle dei Laghi valleys.',26),(85,'',26),(91,'',26),(98,'',26),(39,'',27),(9,'',27),(119,'',27),(48,'',28),(9,'',28),(11,'',28),(62,'The grapes for this wine were grown in the warm, sunny vineyards of South Eastern Australia. Here, the climate is continental with an average summer temperature of 23 degrees and an average annual rainfall of 270mm. ',28),(28,'',28),(86,'',28),(91,'',28),(98,'',28),(120,'',28),(39,'',29),(8,'',29),(20,'',29),(119,'',29),(46,'',30),(9,'',30),(16,'',30),(53,'Abundant sunlight, hot days, cool nights and irrigation water coming directly from pure thawed Andean snow contribute to the production of the aromatically rich, pure and potential filled grapes.',30),(28,'',30),(91,'',30),(98,'',30),(121,'',30);
/*!40000 ALTER TABLE `product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` text,
  `DiscountPercentage` int(11) DEFAULT NULL,
  `DiscountQuantity` int(11) DEFAULT NULL,
  `PromotionTypeId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL COMMENT 'If affects to a product',
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `pk_promotion_0` (`ProductId`),
  CONSTRAINT `fk_product_id` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topmenuitem`
--

DROP TABLE IF EXISTS `topmenuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topmenuitem` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Deleted` tinyint(1) DEFAULT NULL,
  `FilterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topmenuitem`
--

LOCK TABLES `topmenuitem` WRITE;
/*!40000 ALTER TABLE `topmenuitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `topmenuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `basket_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finished` tinyint(1) NOT NULL,
  `adress_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_trasnaction_0` (`basket_id`),
  UNIQUE KEY `adress_id_UNIQUE` (`adress_id`),
  UNIQUE KEY `pk_trasnaction_1` (`payment_id`),
  CONSTRAINT `fk_transaction_adress` FOREIGN KEY (`adress_id`) REFERENCES `useraddress` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transation_basket` FOREIGN KEY (`basket_id`) REFERENCES `basket` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transation_payment` FOREIGN KEY (`payment_id`) REFERENCES `paymentmethod` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraddress`
--

DROP TABLE IF EXISTS `useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `street` varchar(100) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `postalcode` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `bydefault` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_users_address_0` (`id_user`),
  CONSTRAINT `fk_adress_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraddress`
--

LOCK TABLES `useraddress` WRITE;
/*!40000 ALTER TABLE `useraddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `useraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'storeapp'
--
/*!50003 DROP PROCEDURE IF EXISTS `PRODUCT_GetAllFilters` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PRODUCT_GetAllFilters`()
BEGIN

	SELECT 
	fg.id 'GroupId',
	fg.name 'GroupType', 
	fil.id,
	fil.name,
	fil.value
	FROM filtergroup AS fg
	INNER JOIN `filter` AS fil 
		ON fil.filtergroupid = fg.id
		AND fil.`Deleted` = 0
	WHERE fg.`Deleted` IS NULL
	ORDER BY fg.priority, fil.priority;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRODUCT_getPromorionWines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PRODUCT_getPromorionWines`()
BEGIN

SELECT * FROM product AS p
	INNER JOIN promotion AS promo ON promo.ProductId = p.id
	AND promo.StartDate < CURDATE()
    AND promo.EndDate > CURDATE()
LIMIT 15;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-07 18:15:30
