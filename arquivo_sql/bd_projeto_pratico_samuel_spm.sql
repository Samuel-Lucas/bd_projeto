CREATE DATABASE  IF NOT EXISTS `bd_projeto` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bd_projeto`;
-- MySQL dump 10.16  Distrib 10.1.39-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: bd_projeto
-- ------------------------------------------------------
-- Server version	10.1.39-MariaDB

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
-- Table structure for table `preco`
--

DROP TABLE IF EXISTS `preco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preco` (
  `idpreco` int(11) NOT NULL AUTO_INCREMENT,
  `preco` decimal(10,2) NOT NULL,
  `preco_venda` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idpreco`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preco`
--

LOCK TABLES `preco` WRITE;
/*!40000 ALTER TABLE `preco` DISABLE KEYS */;
INSERT INTO `preco` VALUES (1,4199.00,3499.00),(2,4399.00,3899.00),(3,4999.00,4499.00),(4,159.00,119.00),(5,4999.00,4499.00),(6,159.00,99.00);
/*!40000 ALTER TABLE `preco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(70) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  KEY `codigo` (`codigo`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `preco` (`idpreco`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'computadores','Pc Gamer G-Fire Htg-686 A6 7480 8Gb (Radeon R5 2Gb) SSD 240Gb monitor 18','/images/pc.jpg',1),(2,'notebooks','Notebook Gamer Lenovo Intel Core i7-9750H 8GB 1TB Placa GTX 1050 monitor 15 Windows 10 L340','/images/note.jpg',2),(3,'videogames','Console Playstation 5 SSD 1 TB 1 controle','images/ps5.jpg',3),(4,'acessorios','Teclado Mecanico Gamer Redragon Kala RGB, Switch Red, ABNT-2, K557RGB','/images/teclado_mecanico.jpg',4),(5,'videogames','Console Xbox Series X SSD 1 TB 1 controle','/images/xsx.jpg',5),(6,'acessorios','Mouse Gamer Redragon Ranger Black RGB 12400dpi M910-RGB','/images/mouse.jpg',6);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01  9:30:02
