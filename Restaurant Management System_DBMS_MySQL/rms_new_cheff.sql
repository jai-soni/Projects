CREATE DATABASE  IF NOT EXISTS `rms_new` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `rms_new`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: rms_new
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `cheff`
--

DROP TABLE IF EXISTS `cheff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheff` (
  `CheffID` int(11) NOT NULL,
  `CheffFirstName` varchar(45) NOT NULL,
  `CheffLastName` varchar(45) NOT NULL,
  `ContactNbr` varchar(45) NOT NULL,
  `RestaurantName` varchar(60) NOT NULL,
  PRIMARY KEY (`CheffID`),
  UNIQUE KEY `ContactNbr_UNIQUE` (`ContactNbr`),
  KEY `fk_Cheff_Restaurants1_idx` (`RestaurantName`),
  CONSTRAINT `fk_Cheff_Restaurants1` FOREIGN KEY (`RestaurantName`) REFERENCES `restaurants` (`RestaurantName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheff`
--

LOCK TABLES `cheff` WRITE;
/*!40000 ALTER TABLE `cheff` DISABLE KEYS */;
INSERT INTO `cheff` (`CheffID`, `CheffFirstName`, `CheffLastName`, `ContactNbr`, `RestaurantName`) VALUES (1,'Pearl','Vasser','588-939-3494','University House Of Pizza'),(2,'Sherilyn','Kibel','555-350-3595','University House Of Pizza'),(3,'Ginny','MacFadden','654-923-6077','University House Of Pizza'),(4,'Antoni','Woolmore','801-218-3404','University House Of Pizza'),(5,'Mattie','Huffey','552-272-7394','University House Of Pizza');
/*!40000 ALTER TABLE `cheff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerFirstName` varchar(45) NOT NULL,
  `CustomerLastName` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `ContactNbr` varchar(15) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `ContactNbr_UNIQUE` (`ContactNbr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `Address`, `ContactNbr`) VALUES (1,'Allegra','Ruslin','79 Scott Avenue','540-669-9588'),(2,'Mathew','Malek','59510 Namekagon Crossing','230-218-3547'),(3,'Fairlie','Tuck','47403 Kedzie Alley','800-744-6632'),(4,'Oliver','Tolefree','17504 Dahle Trail','321-981-5152'),(5,'Cletus','Tynewell','332 Talisman Place','368-434-8498'),(6,'Elsie','Purdie','2848 Manley Plaza','493-858-4471'),(7,'Flory','Prisk','0624 Crest Line Court','307-585-1935'),(8,'Sherman','Ledbetter','5454 Portage Road','683-213-0641'),(9,'Ingeberg','Smidmore','45 Maryland Pass','942-662-2840'),(10,'Yurik','Juris','50 Vidon Road','807-554-3108'),(11,'Brenna','Biers','27 Crowley Parkway','483-234-9195'),(12,'Gordy','Pattemore','28431 Pawling Road','426-913-7787'),(13,'Daren','Templeman','85 Roth Terrace','866-678-4645'),(14,'Delano','Leggis','139 Village Terrace','649-955-9444'),(15,'Prue','Vanyashin','31 Vernon Court','398-172-5349'),(16,'Read','Dannatt','86058 Moose Avenue','779-283-9705'),(17,'Trever','Illingsworth','36 Dovetail Park','254-467-9132'),(18,'Alister','Delacourt','875 Miller Crossing','271-605-2797'),(19,'Devon','Kyles','36917 Fisk Parkway','698-940-7590'),(20,'Joelynn','Paddefield','37491 Laurel Pass','582-172-9460');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managers` (
  `ManagerID` int(11) NOT NULL,
  `ManagerFirstName` varchar(45) NOT NULL,
  `ManagerLastName` varchar(45) NOT NULL,
  `ContactNbr` varchar(45) NOT NULL,
  `RestaurantsName` varchar(60) NOT NULL,
  PRIMARY KEY (`ManagerID`),
  KEY `fk_Managers_Restaurants1_idx` (`RestaurantsName`),
  CONSTRAINT `fk_Managers_Restaurants1` FOREIGN KEY (`RestaurantsName`) REFERENCES `restaurants` (`RestaurantName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` (`ManagerID`, `ManagerFirstName`, `ManagerLastName`, `ContactNbr`, `RestaurantsName`) VALUES (1,'Herta','Treend','192-705-0982','University House Of Pizza'),(2,'Marys','Cullingford','156-242-4524','University House Of Pizza'),(3,'Saraann','Lupton','459-948-1995','University House Of Pizza'),(4,'Verena','Nerger','140-748-9421','University House Of Pizza'),(5,'Charlotta','Menary','192-508-1351','University House Of Pizza');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `ItemID` int(11) NOT NULL,
  `ItemName` varchar(60) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `ItemPrice` float(6,2) NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`ItemID`, `ItemName`, `Description`, `ItemPrice`) VALUES (1,'Onion Rings','Homemade',4.85),(2,'American Burger','Quarter-pound burger, American cheese, applewood smoked bacon, lettuce, tomatoes, onions, pickles, mayo and ketchup on a lightly toasted bun',5.60),(3,'Daddy\'s Double Burger','Triple cheeseburger, applewood smoked bacon, lettuce, tomatoes, onions, pickles, mayo and ketchup on a lightly toasted bun',8.25),(4,'Chicken Parmesan Calzone','Homemade dough stuffed and baked into a half moon shape',15.99),(5,'Buffalo Chicken Calzone','With bleu cheese and marinara sauce. Homemade dough stuffed and baked into a half moon shape.',12.99),(6,'Buffalo Chicken Sub','Hot sauce, bleu cheese and lettuce',6.99),(7,'UHOP Soda','Soda',2.25);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_br_items`
--

DROP TABLE IF EXISTS `order_br_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_br_items` (
  `OrderID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `ItemQty` int(11) NOT NULL,
  PRIMARY KEY (`OrderID`,`ItemID`),
  KEY `fk_Order_br_Items_Orders1_idx` (`OrderID`),
  KEY `fk_order_br_items_menu1_idx` (`ItemID`),
  CONSTRAINT `fk_Order_br_Items_Orders1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_br_items_menu1` FOREIGN KEY (`ItemID`) REFERENCES `menu` (`ItemID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_br_items`
--

LOCK TABLES `order_br_items` WRITE;
/*!40000 ALTER TABLE `order_br_items` DISABLE KEYS */;
INSERT INTO `order_br_items` (`OrderID`, `ItemID`, `ItemQty`) VALUES (1,2,3),(1,7,5),(2,6,2),(3,3,2),(3,6,1),(4,2,1),(4,4,1),(4,6,1),(5,2,1),(5,7,3),(6,6,3),(6,7,1),(7,4,5),(7,5,2),(8,2,7),(8,3,6),(9,1,2),(9,2,2),(10,3,3),(10,4,5),(11,5,8),(11,6,7),(12,6,2),(12,7,1),(13,4,2),(13,5,5),(14,2,6),(14,3,4),(15,1,7),(15,2,9),(16,3,5),(17,2,1),(18,6,4),(19,2,6),(19,3,5),(19,5,2),(19,6,4),(19,7,5),(20,3,5),(21,3,5),(21,5,2),(22,4,8),(23,4,3);
/*!40000 ALTER TABLE `order_br_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rms_new`.`tr_OrderQty_Price_AFTER_INSERT` AFTER INSERT ON `order_br_items` FOR EACH ROW
BEGIN
update orders
set TotalQty= (select sum(ItemQty)from order_br_items where OrderID=new.OrderID)

where OrderID=new.OrderID;
call sp_TotalPrice(new.OrderID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rms_new`.`tr_OrderQty_Price_AFTER_UPDATE` AFTER UPDATE ON `order_br_items` FOR EACH ROW
BEGIN
update orders
set TotalQty= (select sum(ItemQty)from order_br_items where OrderID=new.OrderID)
where OrderID=new.OrderID;
call sp_TotalPrice(new.OrderID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rms_new`.`tr_OrderQty_Price_AFTER_DELETE` AFTER DELETE ON `order_br_items` FOR EACH ROW
BEGIN
update orders
set TotalQty= (select sum(ItemQty)from order_br_items where OrderID=old.OrderID)
where OrderID=old.OrderID;
call sp_TotalPrice(old.OrderID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `TotalQty` int(11) NOT NULL DEFAULT '0',
  `CustomerID` int(11) NOT NULL,
  `ManagerID` int(11) NOT NULL DEFAULT '1',
  `CheffID` int(11) NOT NULL DEFAULT '1',
  `WaiterID` int(11) NOT NULL DEFAULT '1',
  `OrderTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TotalPrice` float(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`OrderID`),
  UNIQUE KEY `OrderID_UNIQUE` (`OrderID`),
  KEY `fk_Orders_Customers_idx` (`CustomerID`),
  KEY `fk_Orders_Managers1_idx` (`ManagerID`),
  KEY `fk_Orders_Cheff1_idx` (`CheffID`),
  KEY `fk_Orders_Waiter1_idx` (`WaiterID`),
  CONSTRAINT `fk_Orders_Cheff` FOREIGN KEY (`CheffID`) REFERENCES `cheff` (`CheffID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Orders_Customers` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Orders_Managers` FOREIGN KEY (`ManagerID`) REFERENCES `managers` (`ManagerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Orders_Waiter` FOREIGN KEY (`WaiterID`) REFERENCES `waiter` (`WaiterID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`OrderID`, `TotalQty`, `CustomerID`, `ManagerID`, `CheffID`, `WaiterID`, `OrderTime`, `TotalPrice`) VALUES (1,8,12,4,4,4,'2017-01-10 11:39:42',28.05),(2,2,15,3,5,1,'2017-01-29 18:41:18',13.98),(3,3,18,1,1,1,'2017-02-22 14:59:37',23.49),(4,3,9,1,5,3,'2017-03-12 08:02:41',28.58),(5,4,1,5,2,1,'2017-03-13 09:45:53',12.35),(6,4,11,3,2,1,'2017-04-24 16:18:10',23.22),(7,7,6,4,5,1,'2017-05-11 10:04:15',105.93),(8,13,6,1,3,2,'2017-06-19 06:53:47',88.70),(9,4,7,2,2,4,'2017-06-24 08:49:06',20.90),(10,8,13,4,1,2,'2017-06-30 02:31:08',104.70),(11,15,13,4,5,3,'2017-07-08 08:47:35',152.85),(12,3,8,4,1,2,'2017-08-22 14:59:37',16.23),(13,7,3,4,2,3,'2017-09-04 13:31:14',96.93),(14,10,16,5,2,4,'2017-09-15 21:32:40',66.60),(15,16,15,3,2,5,'2017-09-22 14:59:37',84.35),(16,5,3,1,5,1,'2017-10-11 11:12:05',41.25),(17,1,16,1,4,1,'2017-11-22 14:59:37',5.60),(18,4,19,1,5,1,'2017-12-03 17:54:05',27.96),(19,22,13,5,5,5,'2017-12-11 17:52:19',140.04),(20,5,13,3,4,5,'2017-12-11 17:58:08',41.25),(21,7,16,4,1,1,'2017-12-13 04:14:52',67.23),(22,8,14,3,4,5,'2017-12-13 05:06:58',127.92),(23,3,12,5,3,3,'2017-12-13 16:32:41',47.97);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurants` (
  `RestaurantName` varchar(60) NOT NULL,
  `CusineType` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `ContactNbr` varchar(45) NOT NULL,
  PRIMARY KEY (`RestaurantName`),
  UNIQUE KEY `Name_UNIQUE` (`RestaurantName`),
  UNIQUE KEY `ContactNbr_UNIQUE` (`ContactNbr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` (`RestaurantName`, `CusineType`, `Address`, `ContactNbr`) VALUES ('University House Of Pizza','Italian','400, Huntington Avenue','123456789');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_cheff_analysis`
--

DROP TABLE IF EXISTS `vw_cheff_analysis`;
/*!50001 DROP VIEW IF EXISTS `vw_cheff_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_cheff_analysis` AS SELECT 
 1 AS `CheffID`,
 1 AS `CheffName`,
 1 AS `NbrOfOrdersPrepared`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_item_analysis`
--

DROP TABLE IF EXISTS `vw_item_analysis`;
/*!50001 DROP VIEW IF EXISTS `vw_item_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_item_analysis` AS SELECT 
 1 AS `ItemID`,
 1 AS `ItemName`,
 1 AS `NbrOfTimesOrdered`,
 1 AS `TotalQtySold`,
 1 AS `RevenueEarnedByItem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_manager_analysis`
--

DROP TABLE IF EXISTS `vw_manager_analysis`;
/*!50001 DROP VIEW IF EXISTS `vw_manager_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_manager_analysis` AS SELECT 
 1 AS `ManagerID`,
 1 AS `ManagerName`,
 1 AS `NbrOfOrdersTaken`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_order_price`
--

DROP TABLE IF EXISTS `vw_order_price`;
/*!50001 DROP VIEW IF EXISTS `vw_order_price`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_order_price` AS SELECT 
 1 AS `OrderID`,
 1 AS `OrderPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_preq_customer_analysis`
--

DROP TABLE IF EXISTS `vw_preq_customer_analysis`;
/*!50001 DROP VIEW IF EXISTS `vw_preq_customer_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_preq_customer_analysis` AS SELECT 
 1 AS `customerID`,
 1 AS `CustomerName`,
 1 AS `orderID`,
 1 AS `ItemID`,
 1 AS `ItemQty`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_restaurantrevenue_analysis`
--

DROP TABLE IF EXISTS `vw_restaurantrevenue_analysis`;
/*!50001 DROP VIEW IF EXISTS `vw_restaurantrevenue_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_restaurantrevenue_analysis` AS SELECT 
 1 AS `Month`,
 1 AS `Year`,
 1 AS `OrdersPerMonth`,
 1 AS `RevenuePerMonth`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_total_revenue`
--

DROP TABLE IF EXISTS `vw_total_revenue`;
/*!50001 DROP VIEW IF EXISTS `vw_total_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_total_revenue` AS SELECT 
 1 AS `TotalRevenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_waiter_analysis`
--

DROP TABLE IF EXISTS `vw_waiter_analysis`;
/*!50001 DROP VIEW IF EXISTS `vw_waiter_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_waiter_analysis` AS SELECT 
 1 AS `WaiterID`,
 1 AS `WaiterName`,
 1 AS `NbrOfOrdersDelivered`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `waiter`
--

DROP TABLE IF EXISTS `waiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waiter` (
  `WaiterID` int(11) NOT NULL,
  `WaiterFirstName` varchar(45) NOT NULL,
  `WaiterLastName` varchar(45) NOT NULL,
  `ContactNbr` varchar(45) NOT NULL,
  `RestaurantName` varchar(60) NOT NULL,
  PRIMARY KEY (`WaiterID`),
  KEY `fk_Waiter_Restaurants1_idx` (`RestaurantName`),
  CONSTRAINT `fk_Waiter_Restaurants1` FOREIGN KEY (`RestaurantName`) REFERENCES `restaurants` (`RestaurantName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiter`
--

LOCK TABLES `waiter` WRITE;
/*!40000 ALTER TABLE `waiter` DISABLE KEYS */;
INSERT INTO `waiter` (`WaiterID`, `WaiterFirstName`, `WaiterLastName`, `ContactNbr`, `RestaurantName`) VALUES (1,'Philipa','Wrack','792-906-3227','University House Of Pizza'),(2,'Irwin','Roscamp','205-750-4863','University House Of Pizza'),(3,'Ford','Edyson','599-287-6528','University House Of Pizza'),(4,'Donall','Grayley','833-754-8584','University House Of Pizza'),(5,'Claudina','Tancock','313-315-2060','University House Of Pizza');
/*!40000 ALTER TABLE `waiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'rms_new'
--

--
-- Dumping routines for database 'rms_new'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_order_items` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_order_items`(IN itmID int,IN itmQty int)
BEGIN
declare oID int ;
set oID=(Select Max(OrderID) from orders);
INSERT INTO `rms_new`.`order_br_items` (`OrderID`, `ItemID`, `ItemQty`) VALUES (oID, itmID, itmQty);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Customer_OrderHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Customer_OrderHistory`(IN MyCustomerID int)
BEGIN
select orders.OrderID, order_br_items.ItemID,menu.ItemName,order_br_items.ItemQty,menu.ItemPrice*order_br_items.ItemQty as TotalItemPrice,orders.TotalPrice, orders.OrderTime 
from orders inner join customers on 
orders.CustomerID=Customers.customerID 
left join order_br_items on 
order_br_items.OrderID=orders.OrderID 
left join menu on 
menu.ItemID=order_br_items.ItemID
where orders.CustomerID=MyCustomerID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_data_orderstbl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_data_orderstbl`(IN CustomerID int/*, IN TotalItems int*/)
BEGIN
declare c int default 1;
declare m int default 1;
declare w int default 1;
#DECLARE x INT;
declare oID int;
set m=(select FLOOR(1 + rand() * (select count(*) from managers)));
set c=(select FLOOR(1 + rand() * (select count(*) from cheff)));
set w=(select FLOOR(1 + rand() * (select count(*) from waiter)));
set oID= (Select Max(OrderID)+1 from orders);
#Adding Order in Orders Table
INSERT INTO `rms_new`.`orders` (`OrderID`, `CustomerID`, `ManagerID`, `CheffID`, `WaiterID`) VALUES (oID, CustomerID, m, c, w);

#Running a loop to add Items in order_br_items
#SET x = 0;
#loop_label: LOOP
call sp_add_order_items(3,6);
#SET x = x + 1;
#IF x >= num 
#THEN
#LEAVE loop_label;
#END IF;
#END LOOP;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_FavItems_Customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_FavItems_Customer`(IN MyCustomerID int)
BEGIN
SELECT  vw_preq_customer_analysis.ItemID,menu.ItemName as ItemName, count(vw_preq_customer_analysis.ItemID) as NbrOfTimesOrderd
FROM rms_new.vw_preq_customer_analysis inner join 
menu on vw_preq_customer_analysis.ItemID=menu.ItemID
where customerID=MyCustomerID
group by customerID, vw_preq_customer_analysis.ItemID
order by NbrOfTimesOrderd desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_place_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_place_order`(IN CustomerID int)
BEGIN
declare c int default 1;
declare m int default 1;
declare w int default 1;
declare oID int;
set m=(select FLOOR(1 + rand() * (select count(*) from managers)));
set c=(select FLOOR(1 + rand() * (select count(*) from cheff)));
set w=(select FLOOR(1 + rand() * (select count(*) from waiter)));
set oID= (Select Max(OrderID)+1 from orders);

INSERT INTO `rms_new`.`orders` (`OrderID`, `CustomerID`, `ManagerID`, `CheffID`, `WaiterID`) VALUES (oID, CustomerID, m, c, w);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_TotalPrice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_TotalPrice`(IN OrderID int)
BEGIN
update orders
set TotalPrice= (select OrderPrice from vw_order_price where vw_order_price.OrderID=OrderID)
where orders.OrderID=OrderID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_cheff_analysis`
--

/*!50001 DROP VIEW IF EXISTS `vw_cheff_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cheff_analysis` AS select `orders`.`CheffID` AS `CheffID`,concat_ws(' ',`cheff`.`CheffFirstName`,`cheff`.`CheffLastName`) AS `CheffName`,count(`orders`.`CheffID`) AS `NbrOfOrdersPrepared` from (`orders` left join `cheff` on((`orders`.`CheffID` = `cheff`.`CheffID`))) group by `orders`.`CheffID` order by `NbrOfOrdersPrepared` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_item_analysis`
--

/*!50001 DROP VIEW IF EXISTS `vw_item_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_item_analysis` AS select `order_br_items`.`ItemID` AS `ItemID`,`menu`.`ItemName` AS `ItemName`,count(`order_br_items`.`ItemID`) AS `NbrOfTimesOrdered`,sum(`order_br_items`.`ItemQty`) AS `TotalQtySold`,(sum(`order_br_items`.`ItemQty`) * `menu`.`ItemPrice`) AS `RevenueEarnedByItem` from (`order_br_items` left join `menu` on((`order_br_items`.`ItemID` = `menu`.`ItemID`))) group by `order_br_items`.`ItemID` order by `NbrOfTimesOrdered` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_manager_analysis`
--

/*!50001 DROP VIEW IF EXISTS `vw_manager_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_manager_analysis` AS select `orders`.`ManagerID` AS `ManagerID`,concat_ws(' ',`managers`.`ManagerFirstName`,`managers`.`ManagerLastName`) AS `ManagerName`,count(`orders`.`ManagerID`) AS `NbrOfOrdersTaken` from (`orders` left join `managers` on((`orders`.`ManagerID` = `managers`.`ManagerID`))) group by `orders`.`ManagerID` order by `NbrOfOrdersTaken` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_order_price`
--

/*!50001 DROP VIEW IF EXISTS `vw_order_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_order_price` AS select `order_br_items`.`OrderID` AS `OrderID`,sum((`order_br_items`.`ItemQty` * `menu`.`ItemPrice`)) AS `OrderPrice` from (`order_br_items` join `menu` on((`order_br_items`.`ItemID` = `menu`.`ItemID`))) group by `order_br_items`.`OrderID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_preq_customer_analysis`
--

/*!50001 DROP VIEW IF EXISTS `vw_preq_customer_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_preq_customer_analysis` AS select `customers`.`CustomerID` AS `customerID`,concat_ws(' ',`customers`.`CustomerFirstName`,`customers`.`CustomerLastName`) AS `CustomerName`,`orders`.`OrderID` AS `orderID`,`order_br_items`.`ItemID` AS `ItemID`,`order_br_items`.`ItemQty` AS `ItemQty` from ((`customers` join `orders` on((`customers`.`CustomerID` = `orders`.`CustomerID`))) left join `order_br_items` on((`orders`.`OrderID` = `order_br_items`.`OrderID`))) group by `customers`.`CustomerID`,`orders`.`OrderID`,`order_br_items`.`ItemID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_restaurantrevenue_analysis`
--

/*!50001 DROP VIEW IF EXISTS `vw_restaurantrevenue_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_restaurantrevenue_analysis` AS select month(`orders`.`OrderTime`) AS `Month`,year(`orders`.`OrderTime`) AS `Year`,count(`orders`.`OrderID`) AS `OrdersPerMonth`,sum(`orders`.`TotalPrice`) AS `RevenuePerMonth` from `orders` group by `Month`,`Year` order by `Year`,`Month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_total_revenue`
--

/*!50001 DROP VIEW IF EXISTS `vw_total_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_total_revenue` AS select sum(`orders`.`TotalPrice`) AS `TotalRevenue` from `orders` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_waiter_analysis`
--

/*!50001 DROP VIEW IF EXISTS `vw_waiter_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_waiter_analysis` AS select `orders`.`WaiterID` AS `WaiterID`,concat_ws(' ',`waiter`.`WaiterFirstName`,`waiter`.`WaiterLastName`) AS `WaiterName`,count(`orders`.`WaiterID`) AS `NbrOfOrdersDelivered` from (`orders` left join `waiter` on((`orders`.`WaiterID` = `waiter`.`WaiterID`))) group by `orders`.`WaiterID` order by `NbrOfOrdersDelivered` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 22:25:01
