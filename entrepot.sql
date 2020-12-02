-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: entrepot1
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `agence`
--

DROP TABLE IF EXISTS `agence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agence`
--

LOCK TABLES `agence` WRITE;
/*!40000 ALTER TABLE `agence` DISABLE KEYS */;
INSERT INTO `agence` VALUES (1,'Alpes-Maritimes'),(2,'Bas-Rhin'),(3,'Bouches-du-Rhone'),(4,'Essonne'),(5,'Finistere'),(6,'Gironde'),(7,'Haute-Garonne'),(8,'Hauts-de-Seine'),(9,'Herault'),(10,'Ille-et-Vilaine'),(11,'Isere'),(12,'Loire-Atlantique'),(13,'Maine-et-Loire'),(14,'Moselle'),(15,'Nord'),(16,'Oise'),(17,'Paris'),(18,'Pas-de-Calais'),(19,'Rhone'),(20,'Seine-et-Marne'),(21,'Seine-Maritime'),(22,'Seine-Saint-Denis'),(23,'Val-de-Marne'),(24,'Val-d\'Oise'),(25,'Var'),(26,'Yvelines'),(27,'Fournisseur');
/*!40000 ALTER TABLE `agence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  `id_categorie` int NOT NULL,
  `stock` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_article_categorie` (`id_categorie`),
  CONSTRAINT `FK_article_categorie` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Cum Sociis LLP',6,0),(2,'Tortor Nibh Sit Associates',6,0),(3,'Augue Malesuada Malesuada Incorporated',3,0),(4,'Lorem Vehicula LLP',5,0),(5,'Tortor At Inc.',6,0),(6,'Turpis Nec Industries',4,0),(7,'Nascetur Ridiculus Mus Ltd',5,0),(8,'Cras Pellentesque Corp.',1,0),(9,'Enim Company',4,0),(10,'Nam Interdum PC',5,0),(11,'Sed Orci Lobortis Institute',3,0),(12,'Donec Institute',4,0),(13,'Eget Dictum Incorporated',2,0),(14,'Ante Ipsum Primis Incorporated',5,0),(15,'Enim Etiam Gravida Company',6,0),(16,'Lorem Tristique Consulting',1,0),(17,'Est Limited',3,0),(18,'Felis Eget Varius Company',4,0),(19,'Placerat Ltd',6,0),(20,'Lacinia Inc.',4,0),(21,'Amet Institute',6,0),(22,'Inceptos Ltd',1,0),(23,'Molestie Sed Corp.',2,0),(24,'Donec Nibh Corporation',5,0),(25,'Ultrices Mauris Corporation',4,0),(26,'Pede Suspendisse Company',1,0),(27,'Quisque Corporation',1,0),(28,'A Nunc In LLC',6,0),(29,'Sed Nulla Inc.',2,0),(30,'Odio A Purus LLC',3,0),(31,'Nostra Industries',4,0),(32,'Ipsum Consulting',4,0),(33,'In PC',5,0),(34,'Tincidunt Aliquam Arcu LLP',4,0),(35,'Gravida Sit PC',3,0),(36,'Integer Ltd',4,0),(37,'Cum Sociis Corporation',3,0),(38,'Porttitor Eros Industries',1,0),(39,'Eget Tincidunt Inc.',4,0),(40,'Orci In Consequat Ltd',3,0),(41,'Arcu Vivamus Sit Corporation',1,0),(42,'Erat Limited',1,0),(43,'Eu Lacus Quisque Institute',2,0),(44,'Natoque Penatibus PC',5,0),(45,'Morbi Vehicula Pellentesque Associates',1,0),(46,'Nulla LLC',3,0),(47,'Arcu Vestibulum Associates',6,0),(48,'Sem Inc.',5,0),(49,'Egestas A Dui LLP',4,0),(50,'Dui Corporation',6,0),(51,'Ac Tellus Limited',6,0),(52,'Mauris Limited',4,0),(53,'Proin Incorporated',2,0),(54,'Arcu Morbi Sit LLC',2,0),(55,'Dui Institute',2,0),(56,'Justo LLP',1,0),(57,'Proin Corporation',4,0),(58,'Vulputate Ltd',3,0),(59,'Molestie Inc.',4,0),(60,'Sagittis Industries',5,0),(61,'Et Magnis Dis Corporation',1,0),(62,'Mi Foundation',5,0),(63,'Eu Neque Ltd',3,0),(64,'Tortor Ltd',2,0),(65,'Pharetra Associates',2,0),(66,'Iaculis Consulting',1,0),(67,'Sed Sem Consulting',3,0),(68,'Sapien Imperdiet Industries',2,0),(69,'At Pede Cras Inc.',4,0),(70,'Mattis Limited',6,0),(71,'Luctus Lobortis Class LLP',6,0),(72,'Aliquam Auctor Velit Company',4,0),(73,'Tincidunt Donec Vitae Limited',5,0),(74,'Quis Pede Praesent Corporation',4,0),(75,'Vestibulum Lorem Associates',2,0),(76,'Pede Inc.',4,0),(77,'Et Risus Associates',5,0),(78,'Maecenas Ornare Egestas Consulting',4,0),(79,'Aliquet Molestie PC',1,0),(80,'Nec Euismod Incorporated',1,0),(81,'Et Libero LLP',2,0),(82,'Lacus Mauris LLP',6,0),(83,'Fusce Feugiat Company',1,0),(84,'Dolor Fusce Feugiat Incorporated',4,0),(85,'Nunc Mauris Sapien Associates',6,0),(86,'Ultrices A Industries',3,0),(87,'Adipiscing Institute',3,0),(88,'Vel Turpis Limited',2,0),(89,'Pharetra Felis Eget LLC',1,0),(90,'Iaculis Enim Sit LLP',1,0),(91,'Non Ante Bibendum Inc.',2,0),(92,'Fringilla Mi Lacinia Institute',3,0),(93,'Lobortis Nisi Consulting',2,0),(94,'Mauris Blandit Mattis Company',2,0),(95,'Ridiculus Incorporated',6,0),(96,'Eget Dictum Placerat Industries',1,0),(97,'Sed Foundation',5,0),(98,'Netus Et Incorporated',5,0),(99,'Augue Porttitor Incorporated',6,0),(100,'Tincidunt Pede PC',4,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'001'),(2,'002'),(3,'003'),(4,'004'),(5,'005'),(6,'006');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `id_agence` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_commande_agence` (`id_agence`),
  CONSTRAINT `FK_commande_agence` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composition`
--

DROP TABLE IF EXISTS `composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composition` (
  `id_article` int NOT NULL,
  `quantite` int NOT NULL,
  `id_article_composant` int NOT NULL,
  PRIMARY KEY (`id_article`,`id_article_composant`),
  KEY `FK_composition_article_idx` (`id_article`),
  KEY `FK_composition_article_composant_idx` (`id_article_composant`),
  CONSTRAINT `FK_composition_article` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`),
  CONSTRAINT `FK_composition_article_composant` FOREIGN KEY (`id_article_composant`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composition`
--

LOCK TABLES `composition` WRITE;
/*!40000 ALTER TABLE `composition` DISABLE KEYS */;
INSERT INTO `composition` VALUES (1,8,8),(1,3,14),(1,2,20),(1,2,24),(1,7,52),(1,6,54),(1,1,71),(1,9,76),(1,7,93),(1,6,95),(2,6,46),(2,3,89),(3,6,11),(3,4,40),(3,1,69),(3,6,76),(3,1,99),(4,2,3),(4,9,35),(5,5,18),(5,4,32),(5,9,38),(5,4,41),(5,5,48),(5,6,50),(5,5,56),(5,4,58),(5,2,64),(5,5,72),(5,8,77),(6,3,11),(6,5,14),(6,8,24),(6,3,28),(6,9,36),(6,3,39),(6,1,45),(6,2,52),(6,1,54),(6,10,60),(6,10,65),(6,5,84),(6,1,86),(6,3,97),(7,1,16),(7,10,28),(7,2,34),(7,4,51),(7,6,52),(7,1,64),(7,6,74),(7,5,91),(8,9,27),(8,6,67),(9,3,18),(9,8,29),(10,7,2),(10,9,7),(10,1,9),(10,4,10),(10,1,12),(10,4,14),(10,1,22),(10,6,23),(10,5,28),(10,4,39),(10,6,42),(10,3,45),(10,4,51),(10,9,54),(10,6,58),(10,1,69),(10,8,79),(10,8,82),(10,8,90),(10,1,93),(10,10,94),(10,1,97),(10,6,98),(11,9,1),(11,2,5),(11,8,74),(11,4,82),(11,8,86),(11,7,98),(12,2,12),(12,9,14),(12,1,18),(12,7,44),(12,5,47),(12,8,58),(12,5,61),(12,8,82),(13,2,27),(13,7,45),(13,7,58),(13,7,71),(13,6,99),(14,7,4),(14,2,15),(14,3,16),(14,6,18),(14,1,28),(14,5,50),(14,3,59),(14,9,79),(14,1,100),(15,2,18),(15,5,55),(15,5,71),(15,9,85),(16,2,24),(16,1,65),(17,8,79),(17,7,95),(18,10,1),(18,2,9),(18,7,23),(18,8,27),(18,8,29),(18,3,31),(18,4,37),(18,4,41),(18,9,51),(18,9,57),(18,3,58),(18,4,59),(18,2,69),(19,9,12),(19,6,26),(19,6,31),(19,7,39),(19,2,52),(19,3,62),(19,1,73),(20,5,5),(20,2,23),(20,4,72),(20,4,85),(21,9,9),(21,2,18),(21,1,35),(21,10,40),(21,3,73),(21,1,74),(21,7,75),(21,10,93),(22,5,77),(22,8,94),(23,10,1),(23,2,3),(23,8,10),(23,3,32),(23,4,59),(23,10,64),(23,6,68),(23,8,70),(23,4,87),(23,6,90),(24,5,2),(24,8,3),(24,9,5),(24,5,6),(24,6,10),(24,10,11),(24,4,13),(24,9,18),(24,8,20),(24,2,24),(24,8,26),(24,10,27),(24,10,30),(24,2,32),(24,2,34),(24,2,37),(24,8,43),(24,9,45),(24,10,49),(24,9,52),(24,7,56),(24,4,58),(24,8,59),(24,9,62),(24,10,63),(24,4,70),(24,6,72),(24,3,79),(24,4,81),(24,10,85),(24,3,89),(24,10,91),(24,9,92),(24,1,93),(24,5,94),(24,2,96),(24,1,98),(24,8,99),(25,7,29),(25,10,84),(26,10,4),(26,8,11),(26,7,31),(26,2,44),(26,8,63),(26,6,67),(26,9,85),(27,9,3),(27,5,9),(28,5,38),(28,8,54),(28,2,88),(29,1,3),(29,8,16),(29,2,20),(29,5,28),(29,6,30),(29,3,44),(29,1,98),(30,4,3),(30,8,91);
/*!40000 ALTER TABLE `composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lignecommande`
--

DROP TABLE IF EXISTS `lignecommande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lignecommande` (
  `id_article` int NOT NULL,
  `id_commande` int NOT NULL,
  `quantite` int NOT NULL,
  PRIMARY KEY (`id_article`,`id_commande`),
  KEY `FK_ligneCommande_commande0` (`id_commande`),
  CONSTRAINT `FK_ligneCommande_article` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`),
  CONSTRAINT `FK_ligneCommande_commande0` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lignecommande`
--

LOCK TABLES `lignecommande` WRITE;
/*!40000 ALTER TABLE `lignecommande` DISABLE KEYS */;
/*!40000 ALTER TABLE `lignecommande` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 23:08:27
