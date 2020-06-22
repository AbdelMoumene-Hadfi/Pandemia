-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: Pandemia
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.20.04.1

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
-- Table structure for table `benevolat`
--
CREATE USER '0xpwn'@'localhost' IDENTIFIED BY 'AbdoHadfi';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP ON *.* TO '0xpwn'@'localhost';

DROP TABLE IF EXISTS `benevolat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benevolat` (
  `ID_BENEVOLAT` int NOT NULL,
  `DATE` date NOT NULL,
  `Description_BENEVOLAT` text NOT NULL,
  `Addresse_BENEVOLAT` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_BENEVOLAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benevolat`
--

LOCK TABLES `benevolat` WRITE;
/*!40000 ALTER TABLE `benevolat` DISABLE KEYS */;
/*!40000 ALTER TABLE `benevolat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `ID_DONATION` int NOT NULL,
  `Description_Compte_DONATION` text NOT NULL,
  `Telephone_DONATION` varchar(100) NOT NULL,
  `Num_Compte_DONATION` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_DONATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_produit`
--

DROP TABLE IF EXISTS `image_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_produit` (
  `ID_PRODUIT` binary(16) NOT NULL,
  `Url_IMAGE` varchar(500) NOT NULL,
  `ID_IMAGE` binary(16) NOT NULL,
  PRIMARY KEY (`ID_IMAGE`),
  KEY `FKqt8wrn7g4ru82y7pup2lv4843` (`ID_PRODUIT`),
  CONSTRAINT `FKqt8wrn7g4ru82y7pup2lv4843` FOREIGN KEY (`ID_PRODUIT`) REFERENCES `produit` (`ID_PRODUIT`),
  CONSTRAINT `image_produit_ibfk_1` FOREIGN KEY (`ID_PRODUIT`) REFERENCES `produit` (`ID_PRODUIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_produit`
--

LOCK TABLES `image_produit` WRITE;
/*!40000 ALTER TABLE `image_produit` DISABLE KEYS */;
INSERT INTO `image_produit` VALUES (_binary '®NM+sMªæ2\˜R.\È\r','hp',_binary 'Hr\∆~F›ì\…Êì≠3'),(_binary '®NM+sMªæ2\˜R.\È\r','https://people.sissa.it/~delise/hugo/20190214_101425.jpg',_binary '>™xπY,Næ\'\—põ\·'),(_binary '_•D∫\›D≥Ö#«¨Æ◊á','https://people.sissa.it/~delise/hugo/20190214_101425.jpg',_binary '\ÙBƒµÅ\“O|†ãŸû!µÆh');
/*!40000 ALTER TABLE `image_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazin`
--

DROP TABLE IF EXISTS `magazin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazin` (
  `ID_MAGAZIN` binary(16) NOT NULL,
  `Label_MAGAZIN` varchar(100) NOT NULL,
  `Address_MAGAZIN` varchar(100) NOT NULL,
  `Type_MAGAZIN` binary(16) NOT NULL,
  `Debut_Travail_MAGAZIN` time NOT NULL,
  `Fin_Travail_MAGAZIN` time NOT NULL,
  `Ville_MAGAZIN` varchar(30) NOT NULL,
  `ID_USER` binary(16) NOT NULL,
  PRIMARY KEY (`ID_MAGAZIN`),
  KEY `Type_MAGAZIN` (`Type_MAGAZIN`),
  KEY `ID_USER` (`ID_USER`),
  CONSTRAINT `magazin_ibfk_1` FOREIGN KEY (`Type_MAGAZIN`) REFERENCES `type_magazin` (`ID_TYPE`),
  CONSTRAINT `magazin_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazin`
--

LOCK TABLES `magazin` WRITE;
/*!40000 ALTER TABLE `magazin` DISABLE KEYS */;
INSERT INTO `magazin` VALUES (_binary 'N\≈lb˚êGzäﬁã\ÛI\ny\Â','pharmacie elirfane','el irfane',_binary 'ü|\Ò2%{I\næ(\Õ\›¿±\Ú','09:00:00','22:00:00','rabat',_binary '\ﬂ^¡öOAç?¿\Áû_b'),(_binary 'Wà•ìªAÄôÓíùòn*ì','salon de coiffure el irfane','el irfane',_binary 'q≤\Ë3\ŒCO÷ß\ ˚\–)\À\’','11:00:00','23:00:00','Rabat',_binary '\ﬂ^¡öOAç?¿\Áû_b'),(_binary '\Gæ©O‰Öû⁄ÇùxÇ(','librairie elirfane','el irfane',_binary 'ü|\Ò2%{I\næ(\Õ\›¿±\Ú','11:00:00','00:00:00','rabat',_binary '\ﬂ^¡öOAç?¿\Áû_b');
/*!40000 ALTER TABLE `magazin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `ID_PRODUIT` binary(16) NOT NULL,
  `Label_PRODUIT` varchar(100) NOT NULL,
  `Description_PRODUIT` varchar(500) NOT NULL,
  PRIMARY KEY (`ID_PRODUIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (_binary '_•D∫\›D≥Ö#«¨Æ◊á','hp elite book','ordinateurr'),(_binary '®NM+sMªæ2\˜R.\È\r','tp-link','routeur');
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantite`
--

DROP TABLE IF EXISTS `quantite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quantite` (
  `Quantite_PRODUIT` int NOT NULL,
  `Prix_PRODUIT` float NOT NULL,
  `ID_PRODUIT` binary(16) NOT NULL,
  `ID_MAGAZIN` binary(16) NOT NULL,
  KEY `ID_PRODUIT` (`ID_PRODUIT`),
  KEY `FKfy15v4bbk3mihqc75r38dtes1` (`ID_MAGAZIN`),
  CONSTRAINT `FKfy15v4bbk3mihqc75r38dtes1` FOREIGN KEY (`ID_MAGAZIN`) REFERENCES `magazin` (`ID_MAGAZIN`),
  CONSTRAINT `quantite_ibfk_1` FOREIGN KEY (`ID_PRODUIT`) REFERENCES `produit` (`ID_PRODUIT`),
  CONSTRAINT `quantite_ibfk_2` FOREIGN KEY (`ID_MAGAZIN`) REFERENCES `magazin` (`ID_MAGAZIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantite`
--

LOCK TABLES `quantite` WRITE;
/*!40000 ALTER TABLE `quantite` DISABLE KEYS */;
INSERT INTO `quantite` VALUES (120,320,_binary '®NM+sMªæ2\˜R.\È\r',_binary 'N\≈lb˚êGzäﬁã\ÛI\ny\Â'),(20,2420,_binary '_•D∫\›D≥Ö#«¨Æ◊á',_binary 'N\≈lb˚êGzäﬁã\ÛI\ny\Â');
/*!40000 ALTER TABLE `quantite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `ID_ROLE` binary(16) NOT NULL,
  `Name_ROLE` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_ROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (_binary '%Ê∞õgsNé•ïΩçI_ç','ROLE_ADMIN'),(_binary ';Q[\r\ŸcL|Æ	KD/','ROLE_USER'),(_binary '<€ë!¿ΩBcÆ^8\ÕD>\œ\Ô','ROLE_PROP');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephone_magazin`
--

DROP TABLE IF EXISTS `telephone_magazin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telephone_magazin` (
  `ID_MAGAZIN` binary(16) NOT NULL,
  `Telephone_MAGAZIN` varchar(30) NOT NULL,
  `ID_TELEPHONE` binary(16) NOT NULL,
  PRIMARY KEY (`ID_TELEPHONE`),
  KEY `FKfr6bojpcfwje3f8bdr8tpqir5` (`ID_MAGAZIN`),
  CONSTRAINT `FKfr6bojpcfwje3f8bdr8tpqir5` FOREIGN KEY (`ID_MAGAZIN`) REFERENCES `magazin` (`ID_MAGAZIN`),
  CONSTRAINT `telephone_magazin_ibfk_1` FOREIGN KEY (`ID_MAGAZIN`) REFERENCES `magazin` (`ID_MAGAZIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephone_magazin`
--

LOCK TABLES `telephone_magazin` WRITE;
/*!40000 ALTER TABLE `telephone_magazin` DISABLE KEYS */;
INSERT INTO `telephone_magazin` VALUES (_binary 'Wà•ìªAÄôÓíùòn*ì','+2123345655',_binary '2Ìâ≠äÄ@£¶Z&So\‡\ˆ'),(_binary '\Gæ©O‰Öû⁄ÇùxÇ(','+2126856656',_binary 'EÑ\\¬OQ°eÀûûå|\‰'),(_binary '\Gæ©O‰Öû⁄ÇùxÇ(','+2126756656',_binary 'Åƒå∑!mAèπ:ñÜÜ*r'),(_binary 'N\≈lb˚êGzäﬁã\ÛI\ny\Â','+2126856656',_binary 'Ö∑Q¡uFü©ÎÉé\rà\·ì'),(_binary 'N\≈lb˚êGzäﬁã\ÛI\ny\Â','+2126556656',_binary 'ó§uez\ÁK¨ö¸\Ùœø\‚\Ó'),(_binary 'N\≈lb˚êGzäﬁã\ÛI\ny\Â','+2126756656',_binary '\Ê§\ÊbCK\πx\“=\„\◊˘');
/*!40000 ALTER TABLE `telephone_magazin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_magazin`
--

DROP TABLE IF EXISTS `type_magazin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_magazin` (
  `ID_TYPE` binary(16) NOT NULL,
  `Nom_TYPE` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_magazin`
--

LOCK TABLES `type_magazin` WRITE;
/*!40000 ALTER TABLE `type_magazin` DISABLE KEYS */;
INSERT INTO `type_magazin` VALUES (_binary 'q≤\Ë3\ŒCO÷ß\ ˚\–)\À\’','salon de coiffure'),(_binary 'ü|\Ò2%{I\næ(\Õ\›¿±\Ú','PHARMACIE');
/*!40000 ALTER TABLE `type_magazin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Email_USER` varchar(100) NOT NULL,
  `Password_USER` varchar(100) NOT NULL,
  `Adresse_USER` varchar(100) NOT NULL,
  `Telephone_USER` varchar(50) NOT NULL,
  `Name_USER` varchar(100) NOT NULL,
  `ID_USER` binary(16) NOT NULL,
  `Ville_USER` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('abdo@gmail.com','$2a$10$1OkTxo16T6jacF3TmUJCEOZb.xhX.6NUQAJ0NRl6fDXo/XDurIXby','irfane','+212600000000','abdo',_binary '\ﬂ^¡öOAç?¿\Áû_b','rabat');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `ID_USER` binary(16) DEFAULT NULL,
  `ID_ROLE` binary(16) DEFAULT NULL,
  KEY `FK2aam9nt2tv8vcfymi3jo9c314` (`ID_ROLE`),
  KEY `FKfhxaael2m459kbk8lv8smr5iv` (`ID_USER`),
  CONSTRAINT `FK2aam9nt2tv8vcfymi3jo9c314` FOREIGN KEY (`ID_ROLE`) REFERENCES `role` (`ID_ROLE`),
  CONSTRAINT `FKfhxaael2m459kbk8lv8smr5iv` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`ID_ROLE`) REFERENCES `role` (`ID_ROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (_binary '\ﬂ^¡öOAç?¿\Áû_b',_binary '%Ê∞õgsNé•ïΩçI_ç');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-22  2:30:19
