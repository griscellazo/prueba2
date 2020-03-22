-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: inventario
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `almacenaje`
--

DROP TABLE IF EXISTS `almacenaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacenaje` (
  `IDalmacenaje` int NOT NULL,
  `fechaEntrada` date DEFAULT NULL,
  `fechaSalida` date DEFAULT NULL,
  `codigoItem` int NOT NULL,
  PRIMARY KEY (`IDalmacenaje`),
  KEY `codigoItem_idx` (`codigoItem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenaje`
--

LOCK TABLES `almacenaje` WRITE;
/*!40000 ALTER TABLE `almacenaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacenaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codigoCliente` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigoCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datospedido`
--

DROP TABLE IF EXISTS `datospedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datospedido` (
  `IDdatosPedido` int NOT NULL,
  `formaPago` varchar(45) DEFAULT NULL,
  `cantidadPedido` int DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `codigoCliente` int NOT NULL,
  `codigoItem` int NOT NULL,
  `IDFactura` int NOT NULL,
  PRIMARY KEY (`IDdatosPedido`),
  KEY `codigoCliente_idx` (`codigoCliente`),
  KEY `codigoItem_idx` (`codigoItem`),
  KEY `IDFactura_idx` (`IDFactura`),
  CONSTRAINT `codigoCliente` FOREIGN KEY (`codigoCliente`) REFERENCES `cliente` (`codigoCliente`),
  CONSTRAINT `codigoItem` FOREIGN KEY (`codigoItem`) REFERENCES `item` (`codigoItem`),
  CONSTRAINT `IDFactura` FOREIGN KEY (`IDFactura`) REFERENCES `factura` (`IDfactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datospedido`
--

LOCK TABLES `datospedido` WRITE;
/*!40000 ALTER TABLE `datospedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `datospedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `IDempleado` int NOT NULL,
  `carnet` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `sueldo` int DEFAULT NULL,
  PRIMARY KEY (`IDempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1001,'223457','Camilo','Valverde','Av. 16 de Julio Esq. Loayza Nº 777',2150),(1002,'267383','Carlos','Cordero','Av. Max Paredes Esq. Adolfo Ortega Nº 23',2150),(1003,'277289','Sergio','Marnriguez','Av. del Maestro Esq. Pedro Salazar Nº 897',2150),(1004,'267889','Roberto','Aguilar','Av. Jorge Salinas  Nº 123',2150),(1005,'277378','Juan','Aramayo','Calle José María Achá N° 29',2150),(1006,'289657','Mateo','Arce',' Av. Panorámica Nº 123 ',2150),(1007,'289547','Marcos','Lopez','Av. del Maestro Esq. Salazar ',2150),(1008,'297432','Camila','Belmonte','Av. Illimani Nº 1973',2150),(1009,'272829','Joaquin','Castellon','Av. Jorge Munoz Nº 1238',2150),(1010,'262829','Leonardo','Palacios','Av. 16 de Julio Esq. Campero Nº 456',2150),(1011,'628299','Patricia','Mendoza','Calle 9 de Calacoto Esq. Campero Nº 61',2300),(1012,'346838','Enrique','Palacios','Av. 16 de Julio Esq. Colon Nº 46',2450),(1013,'392922','Cesar','Garcia','Av. Santa Cruz Calle Colon Nº 89',2450),(1014,'452627','Fernando','Rivas','Av. 16 de Julio calle Bueno Nº 63',2350),(1015,'229299','Valeria','Iriarte','Av. 20 de Octubre Nº 386',2250),(1016,'292992','Alejandra','Lujan','Av. 20 de Octubre Cap Castrillo Nº 78',2300),(1017,'299282','Jhonatan','Mendez','Av. Villazon J.J. Perez Nº 28',3500),(1018,'388493','Ernesto','Bustillos','Capitan Ravelo Nº 747',2500),(1019,'366368','Micaela','Pinell','Av. del Ejercito Esq. Zapata Nº 324',2750),(1020,'393993','Hugo','Garcia',' Calle Federico Suazo Esq. Campero Nº 1245',2850),(1021,'526377','Marcos','Gonzales','Av. del Ejercito Nº 1345',2350),(1022,'536738','Carlos','Perez','Av. Camacho Esq. Bueno Nº 675',2350),(1023,'826222','Ana','Beltran','Av. Hernando Siles Nº 345',2250),(1024,'927732','Fernando','Escobar','Av. Manco KapacEsq. Nº 885',2450),(1025,'424562','Maria','Trujillo','Av. Camacho Esq.Loayza  Nº 3445',2300),(1026,'727282','Alvaro','Duran','Av. America Esq. Pando Nº 1245',2700),(1027,'282822','Ernesto','Fenadez','Av. Tumusla Esq. Buenos Aires Nº 545',2250),(1028,'636373','Hugo','Gironda','Av. Ballivian Calle 12 Nº 345',2250),(1029,'872838','Natalia','Limachi','Av. Busch Esq. Pasoskanki Nº 265',2250),(1030,'632673','Erick','Lopez','Av. Camacho Calle Oruro Nº 7845',2350),(1031,'328832','Belen','Pozo','Av. Tumusla Esq. Eloy Salmon Nº 6745',2450),(1032,'288328','Josue','Gonzales','Av. Busch Esq. Panama Nº 945',2350),(1033,'328822','Pedro','Morales','Av. Ballivian Calle 18 Nº678',2350),(1034,'737732','Adrian','Villa',' Av. Tumusla Esq. Max Paredes Nº 645',2250),(1035,'929222','Miguel','Reyes','Av. Busch Esq. Panama Nº 395',2250),(1036,'737873','Eduardo','Trujillo',' 6 de Agosto Esq. Pedro Salazar Nº 145',2450);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `IDfactura` int NOT NULL,
  `NIT` varchar(45) DEFAULT NULL,
  `razonSocial` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`IDfactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `codigoItem` int NOT NULL,
  `tipoMadera` varchar(45) DEFAULT NULL,
  `tipoRefinado` varchar(45) DEFAULT NULL,
  `destinatario` varchar(45) DEFAULT NULL,
  `cantidadItem` int DEFAULT NULL,
  `codigoMP` int DEFAULT NULL,
  PRIMARY KEY (`codigoItem`),
  KEY `codigoMP_idx` (`codigoMP`),
  CONSTRAINT `codigoMP` FOREIGN KEY (`codigoMP`) REFERENCES `materiaprima` (`CodigoMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiaprima`
--

DROP TABLE IF EXISTS `materiaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiaprima` (
  `CodigoMP` int NOT NULL,
  `tipoMadera` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`CodigoMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiaprima`
--

LOCK TABLES `materiaprima` WRITE;
/*!40000 ALTER TABLE `materiaprima` DISABLE KEYS */;
INSERT INTO `materiaprima` VALUES (101,'Cerezo',1,710),(102,'Roble',1,800),(103,'Castaño',1,610),(104,'Caoba',1,750),(105,'Teca',1,690),(106,'Pino',1,760),(107,'Nogal',1,510),(108,'Olivo',1,610),(109,'Olmo',1,450),(110,'Haya',1,680),(111,'Ebano',1,510),(112,'Cedro',1,810),(113,'Alamo',1,650);
/*!40000 ALTER TABLE `materiaprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `IDproveedor` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDproveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 13:34:28
