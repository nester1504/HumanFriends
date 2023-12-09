-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: human_friends
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AllAnimals`
--

DROP TABLE IF EXISTS `AllAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AllAnimals` (
  `ID` int NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Commands` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AllAnimals`
--

LOCK TABLES `AllAnimals` WRITE;
/*!40000 ALTER TABLE `AllAnimals` DISABLE KEYS */;
INSERT INTO `AllAnimals` VALUES (1,'Fido','Dog','2020-01-01','Sit, Stay, Fetch'),(2,'Whiskers','Cat','2019-05-15','Sit, Pounce'),(3,'Hammy','Hamster','2021-03-10','Roll, Hide'),(4,'Buddy','Dog','2018-12-10','Sit, Paw, Bark'),(5,'Smudge','Cat','2020-02-20','Sit, Pounce, Scratch'),(6,'Peanut','Hamster','2021-08-01','Roll, Spin'),(7,'Bella','Dog','2019-11-11','Sit, Stay, Roll'),(8,'Oliver','Cat','2020-06-30','Meow, Scratch, Jump'),(1,'Thunder','Horse','2015-07-21','Trot, Canter, Gallop'),(2,'Sandy','Camel','2016-11-03','Walk, Carry Load'),(3,'Eeyore','Donkey','2017-09-18','Walk, Carry Load, Bray'),(4,'Storm','Horse','2014-05-05','Trot, Canter'),(5,'Dune','Camel','2018-12-12','Walk, Sit'),(6,'Burro','Donkey','2019-01-23','Walk, Bray, Kick'),(7,'Blaze','Horse','2016-02-29','Trot, Jump, Gallop'),(8,'Sahara','Camel','2015-08-14','Walk, Run');
/*!40000 ALTER TABLE `AllAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PackAnimals`
--

DROP TABLE IF EXISTS `PackAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PackAnimals` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Commands` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PackAnimals`
--

LOCK TABLES `PackAnimals` WRITE;
/*!40000 ALTER TABLE `PackAnimals` DISABLE KEYS */;
INSERT INTO `PackAnimals` VALUES (1,'Thunder','Horse','2015-07-21','Trot, Canter, Gallop'),(2,'Sandy','Camel','2016-11-03','Walk, Carry Load'),(3,'Eeyore','Donkey','2017-09-18','Walk, Carry Load, Bray'),(4,'Storm','Horse','2014-05-05','Trot, Canter'),(5,'Dune','Camel','2018-12-12','Walk, Sit'),(6,'Burro','Donkey','2019-01-23','Walk, Bray, Kick'),(7,'Blaze','Horse','2016-02-29','Trot, Jump, Gallop'),(8,'Sahara','Camel','2015-08-14','Walk, Run');
/*!40000 ALTER TABLE `PackAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pets`
--

DROP TABLE IF EXISTS `Pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pets` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Commands` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pets`
--

LOCK TABLES `Pets` WRITE;
/*!40000 ALTER TABLE `Pets` DISABLE KEYS */;
INSERT INTO `Pets` VALUES (1,'Fido','Dog','2020-01-01','Sit, Stay, Fetch'),(2,'Whiskers','Cat','2019-05-15','Sit, Pounce'),(3,'Hammy','Hamster','2021-03-10','Roll, Hide'),(4,'Buddy','Dog','2018-12-10','Sit, Paw, Bark'),(5,'Smudge','Cat','2020-02-20','Sit, Pounce, Scratch'),(6,'Peanut','Hamster','2021-08-01','Roll, Spin'),(7,'Bella','Dog','2019-11-11','Sit, Stay, Roll'),(8,'Oliver','Cat','2020-06-30','Meow, Scratch, Jump');
/*!40000 ALTER TABLE `Pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YoungAnimals`
--

DROP TABLE IF EXISTS `YoungAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YoungAnimals` (
  `ID` int NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Commands` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YoungAnimals`
--

LOCK TABLES `YoungAnimals` WRITE;
/*!40000 ALTER TABLE `YoungAnimals` DISABLE KEYS */;
INSERT INTO `YoungAnimals` VALUES (1,'Fido','Dog','2020-01-01','Sit, Stay, Fetch'),(3,'Hammy','Hamster','2021-03-10','Roll, Hide'),(5,'Smudge','Cat','2020-02-20','Sit, Pounce, Scratch'),(6,'Peanut','Hamster','2021-08-01','Roll, Spin'),(8,'Oliver','Cat','2020-06-30','Meow, Scratch, Jump');
/*!40000 ALTER TABLE `YoungAnimals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04  0:55:27
