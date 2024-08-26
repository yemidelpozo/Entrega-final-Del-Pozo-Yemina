CREATE DATABASE  IF NOT EXISTS `reservas_actividades_hospitality` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `reservas_actividades_hospitality`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: reservas_actividades_hospitality
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `Id_actividad` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Idioma` varchar(60) DEFAULT NULL,
  `Capacidad` int DEFAULT NULL,
  `Disponible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,'Visita Guiada','Ingles',15,1),(2,'Visita Guiada','Portuges',12,1),(3,'Visita Guiada','Castellano',25,1),(4,'Degustación Premium','Castellano',30,1),(5,'Degustación Reserva','Castellano',30,1),(6,'Desgustación Single Vineyards','Castellano',30,1),(7,'Degustación Icons','Castellano',30,1),(8,'Experiencia Hace tu vino','Ingles',10,1),(9,'Experiencia Hace tu vino','Castellano',10,1),(10,'Degustación Vinos de autor','Castellano',45,1),(11,'Degustación para críticos','Castellano',15,1),(12,'Presentación de marcas','Castellano',50,1);
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cancelacionesporcliente`
--

DROP TABLE IF EXISTS `cancelacionesporcliente`;
/*!50001 DROP VIEW IF EXISTS `cancelacionesporcliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cancelacionesporcliente` AS SELECT 
 1 AS `Id_cliente`,
 1 AS `Nombre`,
 1 AS `Telefono`,
 1 AS `Email`,
 1 AS `TotalCancelaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cancelacionesportiporeserva`
--

DROP TABLE IF EXISTS `cancelacionesportiporeserva`;
/*!50001 DROP VIEW IF EXISTS `cancelacionesportiporeserva`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cancelacionesportiporeserva` AS SELECT 
 1 AS `TIPO`,
 1 AS `TotalCancelaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `Id_cliente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT 'USUARIO_UNKNOW',
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Fecha_alta` datetime DEFAULT (now()),
  `STATUS` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Id_cliente`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'María Marta Becerra','223-706-8224','maríamartabecerra@gmail.com','2023-05-25 15:09:04',1),(2,'Lucas Lopez ','264-440-4753','lucaslopez@gmail.com','2023-03-02 21:43:40',0),(3,'Roberto Garcia ','264-711-7552','robertogarcia@gmail.com','2022-10-02 04:41:53',0),(4,'Moria Lupin ','223-799-0538','morialupin@gmail.com','2023-09-23 13:34:24',1),(5,'Mia Torres ','011-995-1413','miatorres@hotmail.com','2023-11-26 14:03:38',0),(6,'Angela Martinez ','261-931-1161','angelamartinez@gmail.com','2022-08-25 20:10:39',0),(7,'Luis Diaz ','261-801-5969','luisdiaz@gmail.com','2023-11-10 05:38:37',0),(8,'Lucas Bertona ','223-503-3369','lucasbertona@gmail.com','2024-01-19 13:12:07',0),(9,'Maximiliano Ruiz ','011-376-9717','maximilianoruiz@hotmail.com','2022-08-27 12:36:29',0),(10,'Santiago Morea ','261-532-2107','santiagomorea@gmail.com','2022-11-21 07:44:28',1),(11,'Lucas Alvarez ','011-880-1828','lucasalvarez@gmail.com','2024-01-27 03:23:11',1),(12,'Antonela Sosa ','223-178-4468','antonelasosa@hotmail.com','2023-12-04 17:46:20',1),(13,'Sabrina Rojas ','264-167-0920','sabrinarojas@gmail.com','2023-04-29 18:32:52',1),(14,'Lionel Bossi ','261-391-8779','lionelbossi@gmail.com','2022-11-28 10:42:01',1),(15,'Simon Zaldivar ','011-893-5455','simonzaldivar@hotmail.com','2023-03-05 08:30:24',1),(16,'Claudia Lopez ','261-620-3777','claudialopez@hotmail.com','2023-07-22 20:01:46',0),(17,'Luis Rossi ','264-770-6108','luisrossi@hotmail.com','2022-11-03 19:34:19',1),(18,'Franco Alberton ','261-411-5751','francoalberton@gmail.com','2023-12-13 11:24:51',0),(19,'Marcos Simeone ','011-323-1531','marcossimeone@gmail.com','2022-11-20 15:53:36',0),(20,'Michael Kul ','261-554-6064','michaelkul@hotmail.com','2022-10-03 18:54:58',0),(21,'Sabrina Saja ','223-248-3079','sabrinasaja@hotmail.com','2022-07-13 22:19:31',0),(22,'Mariano Sand ','264-266-3672','marianosand@gmail.com','2022-11-26 23:13:06',1),(23,'John Bird ','261-257-4864','johnbird@gmail.com','2023-10-02 05:26:51',0),(24,'Kate Mc Courtney','261-748-6146','katemccourtney@gmail.com','2024-03-19 03:27:48',1),(25,'Cristian Soler ','264-496-8743','cristiansoler@gmail.com','2022-11-24 16:44:02',1),(26,'Francisco Romero ','261-967-9361','franciscoromero@gmail.com','2023-03-29 12:30:42',0),(27,'Natalia Quiroga ','261-736-7732','nataliaquiroga@gmail.com','2022-11-11 05:54:10',1),(28,'Denis Rios ','011-224-7304','denisrios@hotmail.com','2023-03-20 10:14:15',0),(29,'Gustavo Alcorta ','261-218-4236','gustavoalcorta@gmail.com','2023-03-25 09:58:11',1),(30,'Laura Odoriz ','261-939-1152','lauraodoriz@gmail.com','2023-12-13 19:08:56',1),(31,'Lorena Pepa ','264-432-6945','lorenapepa@gmail.com','2023-03-04 19:51:54',1),(32,'Pablo Manchon ','264-101-2773','pablomanchon@hotmail.com','2022-09-14 20:07:28',0),(33,'Angel Brito ','261-603-7137','angelbrito@hotmail.com','2023-12-12 22:59:19',0),(34,'Patricia Barraco ','011-686-6523','patriciabarraco@hotmail.com','2024-03-08 06:36:28',1),(35,'Eduardo Quiroga ','261-481-8016','eduardoquiroga@gmail.com','2023-08-20 15:43:21',1),(36,'Cristian Font ','264-673-7657','cristianfont@gmail.com','2023-11-14 11:59:27',0),(37,'Luciana Di Pietro','261-967-4858','lucianadipietro@gmail.com','2023-05-15 17:38:45',0),(38,'Josefina Luppi ','011-773-6410','josefinaluppi@gmail.com','2023-09-08 06:48:36',1),(39,'Diego Carrascal ','264-448-0185','diegocarrascal@gmail.com','2023-08-10 10:54:18',0),(40,'Luciano Flores ','011-263-7551','lucianoflores@hotmail.com','2023-05-21 05:39:48',1),(41,'Marcos Bustos ','261-355-1893','marcosbustos@gmail.com','2022-07-21 05:28:22',1),(42,'Rocio Almada ','261-265-8345','rocioalmada@hotmail.com','2023-04-16 05:26:49',0),(43,'Carolina Cristofani ','011-938-8159','carolinacristofani@gmail.com','2023-10-05 17:44:11',1),(44,'Santiago Rabini ','264-255-6212','santiagorabini@gmail.com','2024-01-05 12:21:55',1),(45,'Ariel Montaner ','011-660-8004','arielmontaner@gmail.com','2022-08-15 21:44:40',0),(46,'Pedro Aznar ','261-230-5333','pedroaznar@hotmail.com','2022-08-28 21:56:45',0),(47,'Alejandra Migani ','261-323-7336','alejandramigani@gmail.com','2023-10-25 18:08:27',0),(48,'Daniela Antonieti ','264-535-0124','danielaantonieti@gmail.com','2023-12-24 14:45:44',1),(49,'Pablo Farias ','261-392-8009','pablofarias@gmail.com','2023-05-06 19:14:43',1),(50,'Camila Nara ','261-688-0128','camilanara@gmail.com','2023-10-01 05:27:23',1),(51,'Miguel Granados ','011-437-9061','miguelgranados@gmail.com','2024-02-18 01:23:20',0),(52,'Karen Gil ','011-646-8821','karengil@outlook.com','2022-11-19 03:17:45',1),(53,'Luciana Juarez ','011-864-0240','lucianajuarez@outlook.com','2022-09-18 06:58:36',1),(54,'Milagros Suarez ','264-164-6096','milagrossuarez@hotmail.com','2023-08-02 12:01:26',0),(55,'Susana Bolson ','261-582-9009','susanabolson@gmail.com','2024-01-02 02:50:10',1),(56,'Kathya Angelico ','261-892-6539','kathyaangelico@hotmail.com','2022-11-21 22:43:28',1),(57,'Fernanda Sirerol ','223-198-8404','fernandasirerol@gmail.com','2022-07-28 17:01:12',0),(58,'Miryam Diez ','261-631-9408','miryamdiez@gmail.com','2023-11-27 22:57:47',0),(59,'Luciana Valle ','011-510-9224','lucianavalle@gmail.com','2023-12-18 09:26:18',1),(60,'Julia Labbe ','264-821-0090','julialabbe@gmail.com','2023-10-25 04:56:05',0),(61,'Ariel Molina ','261-417-2964','arielmolina@gmail.com','2023-01-01 20:06:07',1),(62,'Carolina Molinegro ','261-774-8875','carolinamolinegro@hotmail.com','2022-11-07 10:17:21',1),(63,'Alejadro Cruz ','261-153-9267','alejadrocruz@outlook.com','2023-06-09 23:44:07',0),(64,'Lucia Bertone ','261-325-9682','luciabertone@outlook.com','2023-11-16 23:49:00',0),(65,'Patricia Lima ','223-643-9420','patricialima@gmail.com','2023-02-11 16:18:39',1),(66,'Franco Gomez ','264-921-9397','francogomez@hotmail.com','2022-12-29 05:17:01',0),(67,'Lucas Pastor ','011-864-1907','lucaspastor@gmail.com','2023-08-03 03:17:11',1),(68,'Monica Pastreti ','011-560-4693','monicapastreti@gmail.com','2023-09-14 13:56:22',1),(69,'Mariana Tiscornia ','261-206-7675','marianatiscornia@hotmail.com','2022-11-24 06:16:19',0),(70,'Hugo Lopez ','261-471-1595','hugolopez@gmail.com','2022-11-20 23:18:29',0);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_cliente_trigger` BEFORE INSERT ON `clientes` FOR EACH ROW BEGIN
    DECLARE Email_count INT;
    
    SELECT COUNT(*) INTO Email_count
        FROM CLIENTES
    WHERE Email = NEW.Email;
    
    IF Email_count > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El correo electrónico ya está en uso.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_trigger` AFTER INSERT ON `clientes` FOR EACH ROW BEGIN
    INSERT INTO LOG_CAMBIOS (Tabla_afectada, Accion, Fecha, Id_cliente, Usuario)
    VALUES ('CLIENTE', 'INSERT', NOW() , NEW.Id_cliente,USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `Id_empleado` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Id_actividad` int DEFAULT NULL,
  PRIMARY KEY (`Id_empleado`),
  KEY `FK_EMP_CLIENTE` (`Id_actividad`),
  CONSTRAINT `FK_EMP_CLIENTE` FOREIGN KEY (`Id_actividad`) REFERENCES `actividades` (`Id_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Susana Case ','261-249-0486','susanacase@bodega.com',12),(2,'Juan Cruz Perez','264-271-1850','juancruzperez@bodega.com',12),(3,'Pablo Palazzo ','261-664-5866','pablopalazzo@bodega.com',12),(4,'Exequiel Palacios ','261-715-9328','exequielpalacios@bodega.com',12),(5,'Franco Alvarez ','223-872-7734','francoalvarez@bodega.com',11),(6,'Miguel Paredes ','261-770-5455','miguelparedes@bodega.com',11),(7,'Armando Giaccobone ','261-951-2483','armandogiaccobone@bodega.com',11),(8,'María Luz Fredes','261-683-8412','maríaluzfredes@bodega.com',11),(9,'Enzo Di Maria','261-901-9806','enzodimaria@bodega.com',11),(10,'Nicolas Zangrandi ','261-816-3504','nicolaszangrandi@bodega.com',11),(11,'Julian Correa ','261-417-8234','juliancorrea@bodega.com',10),(12,'Cristian Foyth ','261-478-6448','cristianfoyth@bodega.com',10),(13,'Mariano Otamendi ','261-981-3978','marianootamendi@bodega.com',9),(14,'Carla Jurado ','223-193-2184','carlajurado@bodega.com',9),(15,'Mabel Sanchez ','261-651-2277','mabelsanchez@bodega.com',8),(16,'Irma Alonso ','261-178-3426','irmaalonso@bodega.com',8),(17,'Juan Pablo Molina','261-316-3059','juanpablomolina@bodega.com',7),(18,'Ezequiel Alonso ','261-286-4029','ezequielalonso@bodega.com',7),(19,'Maria Milagros Cruz','261-478-0706','mariamilagroscruz@bodega.com',6),(20,'Bartolome Bressia ','261-631-4058','bartolomebressia@bodega.com',6),(21,'Cristian Lapaco ','261-302-5938','cristianlapaco@bodega.com',5),(22,'Sebastian Sosa ','261-728-8981','sebastiansosa@bodega.com',5),(23,'Lucas Peretti ','261-113-4909','lucasperetti@bodega.com',4),(24,'Natalia Antolin ','261-875-0850','nataliaantolin@bodega.com',4),(25,'Alexis Salavatore ','223-778-3227','alexissalavatore@bodega.com',3),(26,'Juan Martin Belmonte','261-843-4212','juanmartinbelmonte@bodega.com',3),(27,'Alberto Diaco ','261-900-8555','albertodiaco@bodega.com',2),(28,'Roberto Lopez ','261-776-3352','robertolopez@bodega.com',2),(29,'Lucia Nuñez ','261-956-6146','lucianuñez@bodega.com',1),(30,'Marcos Solis ','223-565-3974','marcossolis@bodega.com',1);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_cambios`
--

DROP TABLE IF EXISTS `log_cambios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_cambios` (
  `Id_log` int NOT NULL AUTO_INCREMENT,
  `Tabla_afectada` varchar(50) DEFAULT NULL,
  `Accion` varchar(50) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Id_cliente` int DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_cambios`
--

LOCK TABLES `log_cambios` WRITE;
/*!40000 ALTER TABLE `log_cambios` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_cambios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `Id_reserva` int NOT NULL AUTO_INCREMENT,
  `Id_cliente` int DEFAULT NULL,
  `Id_actividad` int DEFAULT NULL,
  `Id_empleado` int DEFAULT NULL,
  `Id_tiporeserva` int DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Cancelacion` datetime DEFAULT NULL,
  `Horario_reserva` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_reserva`),
  KEY `FK_RESERVA_CLIENTE` (`Id_cliente`),
  KEY `FK_RESERVA_EMPLEADO` (`Id_empleado`),
  KEY `FK_RESERVA_TIPORESERVA` (`Id_tiporeserva`),
  KEY `FK_RESERVA_ACTIVIDAD` (`Id_actividad`),
  CONSTRAINT `FK_RESERVA_ACTIVIDAD` FOREIGN KEY (`Id_actividad`) REFERENCES `actividades` (`Id_actividad`),
  CONSTRAINT `FK_RESERVA_CLIENTE` FOREIGN KEY (`Id_cliente`) REFERENCES `clientes` (`Id_cliente`),
  CONSTRAINT `FK_RESERVA_EMPLEADO` FOREIGN KEY (`Id_empleado`) REFERENCES `empleados` (`Id_empleado`),
  CONSTRAINT `FK_RESERVA_TIPORESERVA` FOREIGN KEY (`Id_tiporeserva`) REFERENCES `tipo_reserva` (`Id_tiporeserva`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,4,10,21,2,'2023-07-05 20:08:12',NULL,'2023-11-11 23:18:12'),(2,22,6,17,1,'2023-12-14 07:40:51',NULL,'2023-12-24 01:14:45'),(3,6,8,24,6,'2024-09-06 12:47:42',NULL,'2024-10-20 22:41:46'),(4,7,5,5,6,'2022-04-02 12:57:18',NULL,'2023-08-24 09:02:54'),(5,48,11,21,3,'2024-06-07 16:51:17',NULL,'2024-12-28 13:30:28'),(6,33,3,2,6,'2023-10-28 21:50:40',NULL,'2023-11-10 03:02:38'),(7,32,1,22,7,'2024-06-23 05:41:29',NULL,'2024-08-27 01:37:39'),(8,17,12,10,6,'2024-11-02 14:10:50',NULL,'2024-12-17 05:56:21'),(9,16,6,30,1,'2024-02-14 06:05:58',NULL,'2024-12-08 01:46:09'),(10,47,4,20,4,'2023-06-04 17:54:31',NULL,'2024-01-28 17:06:03'),(11,53,12,16,5,'2022-07-28 09:57:27',NULL,'2024-07-07 12:31:48'),(12,47,2,21,7,'2024-12-06 01:11:54',NULL,'2025-10-18 02:58:02'),(13,18,12,19,5,'2024-04-24 03:03:48',NULL,'2024-07-07 09:06:41'),(14,9,1,20,4,'2022-05-12 18:44:37',NULL,'2024-11-13 11:57:36'),(15,50,2,9,2,'2022-09-12 09:56:50',NULL,'2024-05-16 07:59:38'),(16,19,1,20,4,'2024-12-09 12:02:05',NULL,'2025-07-12 16:06:11'),(17,38,9,25,6,'2022-12-02 06:31:58',NULL,'2023-12-19 03:00:24'),(18,38,5,2,7,'2024-05-10 07:53:40',NULL,'2024-11-03 01:11:53'),(19,54,8,14,4,'2023-11-07 02:26:32',NULL,'2023-11-17 20:18:17'),(20,41,9,12,4,'2023-09-05 21:34:38',NULL,'2024-07-15 21:13:31'),(21,40,3,23,6,'2023-07-08 01:53:09','2023-08-19 04:36:13','2023-08-12 07:56:12'),(22,1,7,30,7,'2022-01-06 21:00:11',NULL,'2023-07-27 21:26:53'),(23,25,10,7,7,'2024-01-07 06:54:09',NULL,'2024-06-13 07:49:00'),(24,40,5,9,1,'2023-05-06 03:56:16',NULL,'2023-06-16 21:51:01'),(25,34,10,23,4,'2024-07-28 13:57:12',NULL,'2024-08-18 01:59:42'),(26,59,4,5,4,'2024-06-17 09:03:32',NULL,'2024-10-28 23:24:35'),(27,54,7,20,6,'2024-12-04 09:59:15',NULL,'2025-05-28 10:23:04'),(28,48,11,1,3,'2023-02-19 21:38:52',NULL,'2024-08-27 16:30:55'),(29,62,12,25,5,'2003-06-14 14:52:14',NULL,'2024-09-20 23:15:59'),(30,25,10,17,1,'2024-10-08 02:59:57',NULL,'2024-11-30 14:16:56'),(31,62,10,28,1,'2024-08-25 08:04:28',NULL,'2024-09-07 17:50:00'),(32,40,10,16,2,'2023-02-16 00:19:22',NULL,'2023-08-05 06:02:51'),(33,30,4,20,2,'2024-02-04 09:44:27','2024-09-25 13:18:02','2024-04-03 21:52:19'),(34,53,12,5,5,'2024-01-08 09:42:16',NULL,'2024-09-04 14:36:14'),(35,5,2,26,6,'2024-12-01 17:36:47',NULL,'2024-12-19 07:30:34'),(36,19,5,23,4,'2023-09-16 04:26:24',NULL,'2023-10-22 04:07:52'),(37,34,5,8,2,'2023-02-12 13:06:28',NULL,'2023-05-21 10:22:53'),(38,48,11,14,3,'2023-06-27 15:59:26',NULL,'2023-08-20 01:43:23'),(39,17,12,27,7,'2024-11-04 17:49:28',NULL,'2024-11-11 03:43:31'),(40,9,1,7,7,'2023-04-22 19:57:24',NULL,'2024-01-24 07:52:08'),(41,15,5,18,6,'2023-07-21 20:42:43',NULL,'2024-05-25 10:03:13'),(42,55,1,29,4,'2023-07-23 16:46:16',NULL,'2024-09-21 03:49:37'),(43,16,1,24,6,'2003-04-21 13:01:15',NULL,'2023-02-11 19:51:53'),(44,36,10,4,4,'2022-12-24 01:44:43',NULL,'2024-01-25 22:15:28'),(45,1,12,29,5,'2024-12-16 23:09:31',NULL,'2024-12-19 01:26:21'),(46,39,7,10,4,'2024-01-04 05:29:38',NULL,'2024-03-17 06:25:28'),(47,15,5,7,4,'2024-10-09 16:09:30','2024-11-07 11:27:50','2024-12-15 17:30:00'),(48,69,12,18,5,'2023-02-14 19:57:22',NULL,'2024-08-25 13:38:09'),(49,3,9,16,6,'2024-10-03 06:52:57',NULL,'2024-12-21 02:24:41'),(50,30,7,2,1,'2024-08-21 09:01:48',NULL,'2024-09-02 11:13:35'),(51,48,11,15,3,'2023-01-22 03:02:18',NULL,'2024-07-02 09:04:28'),(52,55,7,20,7,'2024-07-05 11:50:05',NULL,'2024-09-27 12:47:44'),(53,63,5,14,6,'2024-04-19 05:56:39',NULL,'2024-06-21 18:43:57'),(54,17,12,10,2,'2023-11-17 13:29:15',NULL,'2024-10-11 18:39:38'),(55,23,8,9,4,'2024-03-25 22:54:59',NULL,'2024-12-21 22:48:09'),(56,39,8,24,2,'2023-09-27 19:20:25',NULL,'2023-10-01 14:31:09'),(57,68,12,3,5,'2024-05-16 09:57:54',NULL,'2024-06-17 19:32:23'),(58,1,7,17,1,'2023-08-31 01:50:42',NULL,'2023-10-06 07:42:23'),(59,51,4,25,7,'2023-10-03 19:43:00',NULL,'2024-11-24 14:40:05'),(60,22,9,5,4,'2023-02-22 15:32:42',NULL,'2024-01-11 20:41:35'),(61,45,6,29,4,'2023-09-06 16:05:31',NULL,'2023-10-20 18:04:27'),(62,29,3,30,2,'2022-07-21 16:32:44',NULL,'2024-06-09 15:57:28'),(63,24,11,20,3,'2023-09-09 22:28:57',NULL,'2024-05-27 18:43:40'),(64,50,4,4,2,'2023-07-04 20:32:18',NULL,'2023-08-26 03:00:54'),(65,45,5,18,1,'2024-10-03 04:47:10',NULL,'2024-12-20 17:00:34'),(66,33,12,1,5,'2024-09-14 18:14:45',NULL,'2024-10-11 20:53:50'),(67,24,11,27,3,'2024-12-11 07:04:30',NULL,'2024-12-23 10:54:12'),(68,8,8,26,4,'2024-06-06 05:45:25',NULL,'2024-11-01 05:35:11'),(69,21,9,11,1,'2023-06-26 22:07:16','2023-07-09 18:42:30','2023-11-01 15:34:11'),(70,63,3,1,4,'2023-01-06 12:31:35','2023-02-03 14:04:22','2023-12-12 16:26:27'),(71,40,3,20,2,'2024-03-08 18:38:56',NULL,'2024-11-08 18:11:02'),(72,23,3,13,6,'2022-02-11 08:13:07',NULL,'2024-12-21 09:43:40'),(73,2,9,2,7,'2023-08-30 13:10:15','2023-09-19 16:06:04','2023-09-22 11:10:15'),(74,32,5,12,7,'2023-10-05 06:13:57',NULL,'2024-02-15 10:46:12'),(75,10,9,24,1,'2023-08-27 12:17:05',NULL,'2023-09-05 04:49:03'),(76,12,9,15,4,'2003-11-19 08:24:36',NULL,'2023-03-10 09:27:37'),(77,24,11,23,3,'2024-08-24 22:02:47',NULL,'2025-01-11 14:29:26'),(78,47,2,19,7,'2024-06-22 21:33:02',NULL,'2024-12-15 20:55:06'),(79,29,10,7,7,'2023-02-03 08:24:41',NULL,'2024-07-18 15:52:53'),(80,57,2,2,4,'2023-10-16 15:17:25',NULL,'2024-01-02 10:24:14'),(81,35,4,17,4,'2024-12-19 09:23:39',NULL,'2024-12-22 19:55:30'),(82,16,5,18,2,'2023-07-24 22:10:09',NULL,'2024-06-30 10:47:57'),(83,24,11,5,3,'2023-07-20 05:18:20',NULL,'2023-11-27 06:34:18'),(84,24,11,28,3,'2023-03-07 08:51:37',NULL,'2023-12-21 05:52:43'),(85,25,12,28,5,'2024-02-18 21:10:28',NULL,'2024-07-04 04:14:08'),(86,20,4,8,6,'2023-05-29 13:47:37',NULL,'2024-12-16 13:15:41'),(87,17,12,20,5,'2024-07-31 19:00:05',NULL,'2024-08-07 09:13:13'),(88,45,12,27,5,'2024-05-21 00:57:02',NULL,'2024-06-20 09:34:01'),(89,13,3,29,4,'2023-12-26 14:04:53',NULL,'2024-10-03 14:48:14'),(90,6,2,4,1,'2022-06-19 10:16:06',NULL,'2023-03-12 21:27:47'),(91,54,3,2,4,'2023-01-28 08:07:09',NULL,'2024-05-06 19:42:00'),(92,23,1,2,4,'2023-07-27 22:00:10',NULL,'2024-12-14 03:39:51'),(93,28,7,5,6,'2023-09-19 13:53:09',NULL,'2023-10-18 17:10:16'),(94,13,7,13,7,'2024-10-30 21:50:26',NULL,'2024-10-31 06:54:43'),(95,15,7,6,6,'2023-12-25 09:25:10',NULL,'2023-12-29 14:33:37'),(96,24,5,24,1,'2023-12-06 11:53:09',NULL,'2023-12-23 18:00:22'),(97,37,12,26,5,'2023-11-23 00:27:15',NULL,'2023-11-30 08:36:00'),(98,20,4,17,1,'2023-11-15 22:36:58','2023-12-27 01:28:54','2024-01-02 13:42:57'),(99,57,8,26,7,'2023-07-15 21:33:25',NULL,'2023-10-24 19:32:20'),(100,53,4,27,2,'2023-03-13 07:35:34',NULL,'2023-05-31 19:41:45'),(101,10,8,23,7,'2024-06-09 15:11:59',NULL,'2024-10-25 05:38:24'),(102,24,11,8,3,'2024-06-03 07:16:34',NULL,'2024-01-05 18:52:53'),(103,24,11,11,3,'2023-06-24 21:35:50',NULL,'2024-12-02 22:13:08'),(104,61,12,20,5,'2024-01-13 13:24:03',NULL,'2024-11-08 08:18:44'),(105,17,12,15,2,'2023-04-29 19:38:26',NULL,'2023-07-06 09:45:58'),(106,29,12,3,5,'2023-09-05 16:23:28',NULL,'2023-12-14 13:03:05'),(107,14,5,12,6,'2024-06-03 23:45:32',NULL,'2024-06-20 06:33:56'),(108,51,9,26,6,'2024-09-14 13:14:10',NULL,'2024-10-07 17:11:11'),(109,6,8,23,4,'2023-12-21 03:51:54',NULL,'2025-04-01 18:48:56'),(110,50,11,26,3,'2024-11-29 19:31:48',NULL,'2025-02-12 19:09:02'),(111,34,4,22,7,'2024-10-01 13:53:10','2024-11-08 08:03:42','2024-11-11 16:24:28'),(112,4,12,26,5,'2023-03-01 14:54:32',NULL,'2024-08-07 15:02:02'),(113,17,12,28,5,'2023-05-06 04:39:24',NULL,'2023-12-27 14:37:49'),(114,16,9,25,6,'2024-10-06 23:45:55',NULL,'2024-10-16 09:28:57'),(115,59,3,6,6,'2023-04-14 07:16:56',NULL,'2024-10-18 19:54:34'),(116,67,4,11,1,'2024-08-17 01:50:12',NULL,'2024-11-11 07:16:22'),(117,49,8,11,2,'2024-02-11 09:31:31',NULL,'2024-03-26 00:10:03'),(118,41,7,28,4,'2023-08-25 19:45:56',NULL,'2024-03-01 11:51:06'),(119,9,5,25,2,'2024-07-04 20:32:15',NULL,'2024-11-24 13:01:57'),(120,30,8,2,7,'2023-02-01 05:07:14',NULL,'2023-11-01 20:47:42'),(121,57,8,6,2,'2024-06-16 09:28:42',NULL,'2024-07-19 12:48:48'),(122,55,2,9,7,'2024-10-23 21:25:27','2024-11-03 04:14:30','2024-11-30 21:24:13'),(123,13,12,16,5,'2024-08-10 07:42:37',NULL,'2024-11-04 11:20:41'),(124,70,7,21,7,'2023-06-05 10:55:28','2023-07-28 10:40:54','2023-08-01 22:16:58'),(125,33,12,5,5,'2023-10-01 11:10:10',NULL,'2024-06-07 14:52:54'),(126,30,9,6,1,'2023-05-24 04:46:32',NULL,'2024-10-14 01:28:49'),(127,11,12,1,5,'2023-11-23 15:19:06',NULL,'2024-07-21 21:11:43'),(128,31,3,1,1,'2024-08-26 05:29:26',NULL,'2024-11-26 10:05:43'),(129,36,12,26,5,'2023-07-28 04:23:30',NULL,'2024-10-17 07:22:03'),(130,50,11,10,3,'2003-10-19 09:20:03',NULL,'2024-11-04 23:41:05'),(131,50,11,18,3,'2024-06-08 09:10:47',NULL,'2024-10-24 06:41:53'),(132,24,12,18,5,'2023-09-26 21:01:31',NULL,'2024-09-24 13:47:19'),(133,16,4,2,6,'2023-03-04 11:06:08',NULL,'2023-08-11 00:20:38'),(134,45,10,30,2,'2024-09-03 10:32:59',NULL,'2024-09-07 17:09:41'),(135,30,12,22,5,'2024-05-13 02:20:07',NULL,'2024-11-17 15:15:34'),(136,1,12,16,5,'2024-05-08 05:40:11',NULL,'2024-06-09 02:35:34'),(137,45,6,18,4,'2024-01-02 08:16:15',NULL,'2024-06-01 16:35:05'),(138,51,8,1,6,'2023-03-11 07:13:27',NULL,'2023-09-10 19:40:48'),(139,53,6,6,7,'2023-12-11 01:23:36',NULL,'2024-12-20 20:59:59'),(140,58,7,19,4,'2023-01-13 17:31:17',NULL,'2023-11-28 02:39:00'),(141,2,2,19,4,'2024-04-25 18:51:58','2024-06-27 17:13:14','2024-09-03 04:24:26'),(142,16,12,7,5,'2023-09-23 05:24:03',NULL,'2024-08-24 13:20:46'),(143,55,12,30,5,'2024-02-19 18:15:48',NULL,'2024-06-29 23:49:40'),(144,68,7,11,4,'2023-01-29 09:26:54',NULL,'2023-01-07 09:43:23'),(145,13,9,11,4,'2023-03-17 01:55:14',NULL,'2024-11-08 11:07:12'),(146,54,1,4,2,'2024-02-19 16:04:27',NULL,'2003-10-15 18:35:57'),(147,26,2,21,2,'2023-10-18 15:28:00',NULL,'2024-07-21 15:46:11'),(148,37,9,30,6,'2023-09-01 20:34:28','2023-10-01 09:17:30','2023-10-07 13:46:45'),(149,17,12,27,7,'2024-06-17 08:21:25',NULL,'2024-11-14 18:52:29'),(150,43,10,15,1,'2024-05-19 17:54:01',NULL,'2024-04-10 01:12:06');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_reserva_trigger` BEFORE INSERT ON `reservas` FOR EACH ROW BEGIN
    DECLARE reserva_count INT;
    
    SELECT COUNT(*) INTO reserva_count
        FROM RESERVAS
    WHERE Id_cliente = NEW.Id_cliente
        AND Id_actividad = NEW.Id_actividad
        AND Fecha = NEW.Fecha
        AND Cancelacion IS NULL;
        
    IF reserva_count > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El cliente ya tiene una reserva en la misma hora y actividad.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_cancelacion_trigger` AFTER UPDATE ON `reservas` FOR EACH ROW BEGIN
    IF OLD.Cancelacion IS NULL AND NEW.Cancelacion IS NOT NULL THEN
        INSERT INTO LOG_CAMBIOS (Tabla_afectada, Accion, Fecha, Id_cliente, Usuario)
        VALUES ('RESERVAS', 'Cancelacion', NOW());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `reservasporactividad`
--

DROP TABLE IF EXISTS `reservasporactividad`;
/*!50001 DROP VIEW IF EXISTS `reservasporactividad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reservasporactividad` AS SELECT 
 1 AS `Id_actividad`,
 1 AS `Capacidad`,
 1 AS `TotalReservas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reservasporcliente`
--

DROP TABLE IF EXISTS `reservasporcliente`;
/*!50001 DROP VIEW IF EXISTS `reservasporcliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reservasporcliente` AS SELECT 
 1 AS `Id_cliente`,
 1 AS `Nombre`,
 1 AS `TotalReservas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reservasporfecha`
--

DROP TABLE IF EXISTS `reservasporfecha`;
/*!50001 DROP VIEW IF EXISTS `reservasporfecha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reservasporfecha` AS SELECT 
 1 AS `Fecha`,
 1 AS `TotalReservas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipo_reserva`
--

DROP TABLE IF EXISTS `tipo_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_reserva` (
  `Id_tiporeserva` int NOT NULL AUTO_INCREMENT,
  `TIPO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_tiporeserva`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_reserva`
--

LOCK TABLES `tipo_reserva` WRITE;
/*!40000 ALTER TABLE `tipo_reserva` DISABLE KEYS */;
INSERT INTO `tipo_reserva` VALUES (1,'Estandar'),(2,'Reserva grupal'),(3,'Recepción de críticos'),(4,'Atención a proveedores'),(5,'Presentación de vinos'),(6,'Clientes VIP'),(7,'Empleados de bodega');
/*!40000 ALTER TABLE `tipo_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'reservas_actividades_hospitality'
--

--
-- Dumping routines for database 'reservas_actividades_hospitality'
--
/*!50003 DROP FUNCTION IF EXISTS `actividad_cancelada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `actividad_cancelada`(actividad_id INT) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE cancelacion_date DATETIME;
    DECLARE is_cancelada BOOLEAN;
    
    SELECT Cancelacion INTO cancelacion_date
        FROM RESERVAS
        WHERE Id_actividad = actividad_id
        AND Cancelacion IS NOT NULL
        LIMIT 1;
	
    
    IF cancelacion_date IS NOT NULL THEN
        SET is_cancelada = TRUE;
    ELSE
        SET is_cancelada = FALSE;
    END IF;

    RETURN is_cancelada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `contar_reservas_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `contar_reservas_cliente`(cliente_id INT, fecha_inicio DATETIME, fecha_fin DATETIME) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE reservas_count INT;
    
    SELECT COUNT(*) INTO reservas_count
    FROM RESERVAS
    WHERE Id_cliente = cliente_id
    AND Fecha >= fecha_inicio
    AND Fecha <= fecha_fin;
    
    RETURN reservas_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `reservas_por_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `reservas_por_empleado`(empleado_id INT, fecha_inicio DATETIME, fecha_fin DATETIME) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE reservas_count INT;
    
    SELECT COUNT(*) INTO reservas_count
    FROM RESERVAS
    WHERE Id_empleado = empleado_id
    AND Fecha >= fecha_inicio
    AND Fecha <= fecha_fin;
    
    RETURN reservas_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_reserva_cancelada_por_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_reserva_cancelada_por_email`(
    IN p_email VARCHAR(100)
)
BEGIN
    DECLARE cliente_id INT;
    
    -- Obtener el ID del cliente usando el correo electrónico proporcionado
    SELECT Id_cliente INTO cliente_id
        FROM CLIENTES
    WHERE Email = p_email;
    
    -- Actualizar la reserva si el cliente existe y tenía una reserva cancelada
    IF cliente_id IS NOT NULL THEN
        UPDATE RESERVAS
        SET Cancelacion = NULL,
            Fecha = NOW()
        WHERE Id_cliente = cliente_id
        AND Cancelacion IS NOT NULL;
        
        SELECT 'La reserva cancelada del cliente con correo electrónico ', p_email, ' ha sido actualizada exitosamente.';
    ELSE
        SELECT 'No se encontró ningún cliente con el correo electrónico ', p_email, '.';
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_tipo_reserva_por_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_tipo_reserva_por_email`(
    IN p_email VARCHAR(100),
    IN p_nuevo_tipo VARCHAR(50)
)
BEGIN
    DECLARE cliente_id INT;
    DECLARE reserva_id INT;
    
    -- Obtener el ID del cliente usando el correo electrónico proporcionado
    SELECT Id_cliente INTO cliente_id
    FROM CLIENTES
    WHERE Correo = p_email;
    
    -- Si se encontró el cliente, obtener la última reserva hecha
    IF cliente_id IS NOT NULL THEN
        SELECT Id_reserva INTO reserva_id
        FROM RESERVAS
        WHERE Id_cliente = cliente_id
        ORDER BY Fecha DESC
        LIMIT 1;
        
        -- Si se encontró la reserva, actualizar el tipo de reserva
        IF reserva_id IS NOT NULL THEN
            UPDATE RESERVAS
            SET Id_tiporeserva = (
                SELECT Id_tiporeserva FROM TIPO_RESERVA WHERE Tipo = p_nuevo_tipo
            ) , Fecha = NOW()
            WHERE Id_reserva = reserva_id;
            
            SELECT 'Se actualizó el tipo de reserva del cliente con correo electrónico ', p_email, ' a ', p_nuevo_tipo, '.';
        ELSE
            SELECT 'El cliente con correo electrónico ', p_email, ' no tiene reservas.';
        END IF;
    ELSE
        SELECT 'No se encontró ningún cliente con el correo electrónico ', p_email, '.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_empleado`(
    IN p_nombre VARCHAR(100),
    IN p_telefono VARCHAR(20),
    IN p_Email VARCHAR(100),
    IN p_id_actividad INT
)
BEGIN
    DECLARE actividad_count INT;
    
    -- Verificar si la actividad existe
    SELECT COUNT(*) INTO actividad_count
    FROM ACTIVIDADES
    WHERE Id_actividad = p_id_actividad;
    
    -- Si la actividad existe, insertar el empleado
    IF actividad_count > 0 THEN
        INSERT INTO EMPLEADOS (Nombre, Telefono, Email, Id_actividad)
        VALUES (p_nombre, p_telefono, p_Email, p_id_actividad);
        
        SELECT 'Empleado creado exitosamente.';
    ELSE
        SELECT 'La actividad especificada no existe. No se puede crear el empleado.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cancelacionesporcliente`
--

/*!50001 DROP VIEW IF EXISTS `cancelacionesporcliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cancelacionesporcliente` AS select `reservas`.`Id_cliente` AS `Id_cliente`,`clientes`.`Nombre` AS `Nombre`,`clientes`.`Telefono` AS `Telefono`,`clientes`.`Email` AS `Email`,count(`reservas`.`Id_reserva`) AS `TotalCancelaciones` from (`reservas` join `clientes` on((`reservas`.`Id_cliente` = `clientes`.`Id_cliente`))) where (`reservas`.`Cancelacion` is not null) group by `reservas`.`Id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cancelacionesportiporeserva`
--

/*!50001 DROP VIEW IF EXISTS `cancelacionesportiporeserva`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cancelacionesportiporeserva` AS select `tipo_reserva`.`TIPO` AS `TIPO`,count(`reservas`.`Id_reserva`) AS `TotalCancelaciones` from (`tipo_reserva` left join `reservas` on((`tipo_reserva`.`Id_tiporeserva` = `reservas`.`Id_tiporeserva`))) where (`reservas`.`Cancelacion` is not null) group by `tipo_reserva`.`TIPO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reservasporactividad`
--

/*!50001 DROP VIEW IF EXISTS `reservasporactividad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reservasporactividad` AS select `actividades`.`Id_actividad` AS `Id_actividad`,`actividades`.`Capacidad` AS `Capacidad`,count(`reservas`.`Id_reserva`) AS `TotalReservas` from (`actividades` left join `reservas` on((`actividades`.`Id_actividad` = `reservas`.`Id_actividad`))) group by `actividades`.`Id_actividad`,`actividades`.`Capacidad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reservasporcliente`
--

/*!50001 DROP VIEW IF EXISTS `reservasporcliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reservasporcliente` AS select `reservas`.`Id_cliente` AS `Id_cliente`,`clientes`.`Nombre` AS `Nombre`,count(`reservas`.`Id_reserva`) AS `TotalReservas` from (`reservas` join `clientes` on((`reservas`.`Id_cliente` = `clientes`.`Id_cliente`))) where (`reservas`.`Cancelacion` is null) group by `reservas`.`Id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reservasporfecha`
--

/*!50001 DROP VIEW IF EXISTS `reservasporfecha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reservasporfecha` AS select cast(`reservas`.`Fecha` as date) AS `Fecha`,count(0) AS `TotalReservas` from `reservas` group by cast(`reservas`.`Fecha` as date) */;
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

-- Dump completed on 2024-08-25 21:37:20
