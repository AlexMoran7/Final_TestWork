-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: HumanFriends
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
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Commands` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AllAnimals`
--

LOCK TABLES `AllAnimals` WRITE;
/*!40000 ALTER TABLE `AllAnimals` DISABLE KEYS */;
INSERT INTO `AllAnimals` VALUES (1,'Bob','Pets','Dog','2019-01-01','sit,stay,bark,down,fetch'),(2,'Lessie','Pets','Dog','2019-02-15','sit,stay,bark,down,fetch'),(3,'Buddy','Pets','Dog','2019-03-30','sit,stay,bark,down,fetch'),(4,'Tom','Pets','Cat','2018-02-20','meow,purr,scratch'),(5,'Selim','Pets','Cat','2018-04-10','meow,purr,scratch'),(6,'Cuddles','Pets','Cat','2018-06-25','meow,purr,scratch'),(7,'Hammy','Pets','Hamster','2022-05-05','roll,spin,hide'),(8,'Peanut','Pets','Hamster','2022-07-12','roll,spin,hide'),(9,'Polly','Pets','Bird','2010-08-18','fly,sing,talk'),(10,'Kesha','Pets','Bird','2010-11-25','fly,sing,talk'),(11,'Jack','PackAnimals','Horse','2017-04-02','trot,canter,gallop,jump'),(12,'Bessy','PackAnimals','Horse','2017-06-15','trot,canter,gallop,jump'),(13,'Fury','PackAnimals','Horse','2017-09-22','trot,canter,gallop,jump'),(14,'Sahara','PackAnimals','Camel','2013-03-10','stay,walk,carry load,spit'),(15,'Sandy','PackAnimals','Camel','2013-05-20','stay,walk,carry load,spit'),(16,'Dune','PackAnimals','Camel','2013-08-01','stay,walk,carry load,spit'),(17,'Ia','PackAnimals','Donkey','2018-02-14','walk,bray,kick'),(18,'Burro','PackAnimals','Donkey','2018-04-30','walk,bray,kick');
/*!40000 ALTER TABLE `AllAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Birds`
--

DROP TABLE IF EXISTS `Birds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Birds` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PetID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PetID` (`PetID`),
  CONSTRAINT `Birds_ibfk_1` FOREIGN KEY (`PetID`) REFERENCES `Pets` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Birds`
--

LOCK TABLES `Birds` WRITE;
/*!40000 ALTER TABLE `Birds` DISABLE KEYS */;
INSERT INTO `Birds` VALUES (1,9),(2,10);
/*!40000 ALTER TABLE `Birds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Camels`
--

DROP TABLE IF EXISTS `Camels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Camels` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PackAnimalID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PackAnimalID` (`PackAnimalID`),
  CONSTRAINT `Camels_ibfk_1` FOREIGN KEY (`PackAnimalID`) REFERENCES `PackAnimals` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Camels`
--

LOCK TABLES `Camels` WRITE;
/*!40000 ALTER TABLE `Camels` DISABLE KEYS */;
INSERT INTO `Camels` VALUES (1,4),(2,5),(3,6);
/*!40000 ALTER TABLE `Camels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cats`
--

DROP TABLE IF EXISTS `Cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cats` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PetID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PetID` (`PetID`),
  CONSTRAINT `Cats_ibfk_1` FOREIGN KEY (`PetID`) REFERENCES `Pets` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cats`
--

LOCK TABLES `Cats` WRITE;
/*!40000 ALTER TABLE `Cats` DISABLE KEYS */;
INSERT INTO `Cats` VALUES (1,4),(2,5),(3,6);
/*!40000 ALTER TABLE `Cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dogs`
--

DROP TABLE IF EXISTS `Dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dogs` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PetID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PetID` (`PetID`),
  CONSTRAINT `Dogs_ibfk_1` FOREIGN KEY (`PetID`) REFERENCES `Pets` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dogs`
--

LOCK TABLES `Dogs` WRITE;
/*!40000 ALTER TABLE `Dogs` DISABLE KEYS */;
INSERT INTO `Dogs` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `Dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Donkeys`
--

DROP TABLE IF EXISTS `Donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Donkeys` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PackAnimalID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PackAnimalID` (`PackAnimalID`),
  CONSTRAINT `Donkeys_ibfk_1` FOREIGN KEY (`PackAnimalID`) REFERENCES `PackAnimals` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donkeys`
--

LOCK TABLES `Donkeys` WRITE;
/*!40000 ALTER TABLE `Donkeys` DISABLE KEYS */;
INSERT INTO `Donkeys` VALUES (1,7),(2,8);
/*!40000 ALTER TABLE `Donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hamsters`
--

DROP TABLE IF EXISTS `Hamsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hamsters` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PetID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PetID` (`PetID`),
  CONSTRAINT `Hamsters_ibfk_1` FOREIGN KEY (`PetID`) REFERENCES `Pets` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hamsters`
--

LOCK TABLES `Hamsters` WRITE;
/*!40000 ALTER TABLE `Hamsters` DISABLE KEYS */;
INSERT INTO `Hamsters` VALUES (1,7),(2,8);
/*!40000 ALTER TABLE `Hamsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Horses`
--

DROP TABLE IF EXISTS `Horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Horses` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PackAnimalID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PackAnimalID` (`PackAnimalID`),
  CONSTRAINT `Horses_ibfk_1` FOREIGN KEY (`PackAnimalID`) REFERENCES `PackAnimals` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Horses`
--

LOCK TABLES `Horses` WRITE;
/*!40000 ALTER TABLE `Horses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PackAnimals`
--

DROP TABLE IF EXISTS `PackAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PackAnimals` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Commands` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PackAnimals`
--

LOCK TABLES `PackAnimals` WRITE;
/*!40000 ALTER TABLE `PackAnimals` DISABLE KEYS */;
INSERT INTO `PackAnimals` VALUES (1,'Jack','Horse','2017-04-02','trot,canter,gallop,jump'),(2,'Bessy','Horse','2017-06-15','trot,canter,gallop,jump'),(3,'Fury','Horse','2017-09-22','trot,canter,gallop,jump'),(4,'Sahara','Camel','2013-03-10','stay,walk,carry load,spit'),(5,'Sandy','Camel','2013-05-20','stay,walk,carry load,spit'),(6,'Dune','Camel','2013-08-01','stay,walk,carry load,spit'),(7,'Ia','Donkey','2018-02-14','walk,bray,kick'),(8,'Burro','Donkey','2018-04-30','walk,bray,kick');
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
  `Name` varchar(255) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Commands` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pets`
--

LOCK TABLES `Pets` WRITE;
/*!40000 ALTER TABLE `Pets` DISABLE KEYS */;
INSERT INTO `Pets` VALUES (1,'Bob','Dog','2019-01-01','sit,stay,bark,down,fetch'),(2,'Lessie','Dog','2019-02-15','sit,stay,bark,down,fetch'),(3,'Buddy','Dog','2019-03-30','sit,stay,bark,down,fetch'),(4,'Tom','Cat','2018-02-20','meow,purr,scratch'),(5,'Selim','Cat','2018-04-10','meow,purr,scratch'),(6,'Cuddles','Cat','2018-06-25','meow,purr,scratch'),(7,'Hammy','Hamster','2022-05-05','roll,spin,hide'),(8,'Peanut','Hamster','2022-07-12','roll,spin,hide'),(9,'Polly','Bird','2010-08-18','fly,sing,talk'),(10,'Kesha','Bird','2010-11-25','fly,sing,talk');
/*!40000 ALTER TABLE `Pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YoungAnimals`
--

DROP TABLE IF EXISTS `YoungAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YoungAnimals` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AnimalID` int DEFAULT NULL,
  `AnimalType` varchar(50) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Commands` varchar(255) DEFAULT NULL,
  `AgeDescription` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AnimalID` (`AnimalID`),
  CONSTRAINT `YoungAnimals_ibfk_1` FOREIGN KEY (`AnimalID`) REFERENCES `Pets` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YoungAnimals`
--

LOCK TABLES `YoungAnimals` WRITE;
/*!40000 ALTER TABLE `YoungAnimals` DISABLE KEYS */;
INSERT INTO `YoungAnimals` VALUES (1,7,'Pet','Hammy','2022-05-05','roll,spin,hide','1 years 7 months'),(2,8,'Pet','Peanut','2022-07-12','roll,spin,hide','1 years 5 months'),(3,1,NULL,'Jack','2017-04-02','trot,canter,gallop,jump','6 years 8 months'),(4,2,NULL,'Bessy','2017-06-15','trot,canter,gallop,jump','6 years 6 months'),(5,3,NULL,'Fury','2017-09-22','trot,canter,gallop,jump','6 years 2 months'),(6,4,NULL,'Sahara','2013-03-10','stay,walk,carry load,spit','10 years 9 months'),(7,5,NULL,'Sandy','2013-05-20','stay,walk,carry load,spit','10 years 6 months'),(8,6,NULL,'Dune','2013-08-01','stay,walk,carry load,spit','10 years 4 months'),(9,7,NULL,'Ia','2018-02-14','walk,bray,kick','5 years 10 months'),(10,8,NULL,'Burro','2018-04-30','walk,bray,kick','5 years 7 months');
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

-- Dump completed on 2023-12-17 10:07:17
