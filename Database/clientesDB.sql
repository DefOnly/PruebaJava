-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: clientes
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `clientes_registrados`
--

DROP TABLE IF EXISTS `clientes_registrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_registrados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `rut` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `comuna` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_registrados`
--

LOCK TABLES `clientes_registrados` WRITE;
/*!40000 ALTER TABLE `clientes_registrados` DISABLE KEYS */;
INSERT INTO `clientes_registrados` VALUES (1,'David','Gonzalez','25.584.587-1','Av. Los Leones 1230','Providencia','david@gmail.com'),(2,'Ernesto','Briones','21.4582.789-8','Av. Brans 758','Las Condes','brion6@outloo.com'),(3,'Chris','Bell','20.458.877-k','Calle Dos Caminos, Casa 2','Colina','sacsf_2@gmail.com'),(4,'Daniela','Gonzalez','27.785.785-0','Av. Los Leones 1045','Talca','dani_45@hotmail.com'),(5,'Francisco','Sepeda','12.488.145-4','Poniente 5, Calle Loures 45','Santiago Centro','fran_54_solz@hotmail.com'),(6,'Kevin','Nava','20.639.997-0','Las industrias 2588','San Miguel','kev_nav_45@gmail.com'),(7,'Stephanhia','Videla','15.875.584-2','Calle Nataniel Cox 89','La Reina','steh_videla@outlook.com'),(8,'Cristina','Bringfeld','18.777.085.4','Los Cortijos 4745','Macul','criss_ana@gmail.com'),(9,'Dave','Segura','19.785.002-k','Las Calandrias 78, Carretera Norte','Chicureo','dave458@enterprise.cl'),(10,'Martin','Mora','14.785.964-4','Antartida 4712','Puente Alto','mart_zucj@yahoo.es'),(11,'Gilberto','Correa','22.458.000-1','Lord Chroqueanne 1285','Quinta Normal','solucionestech@gmail.com'),(12,'Samuel','Sosa','17.888.785-2','Boston 1496','Vitacura','sam_jack@virtualpc.cl'),(13,'Hugo','Herrera','28.785.456-2','Av. Sabana 7896','Quilicura','car_herre_43@gmail.com'),(14,'Fernando','Herrera','28.785.456-2','Av. Sabana 7896','Quilicura','car_herre_43@gmail.com');
/*!40000 ALTER TABLE `clientes_registrados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-28 23:16:17
