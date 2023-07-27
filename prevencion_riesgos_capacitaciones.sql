CREATE DATABASE prevencion_riesgos;
USE prevencion_riesgos;
DROP TABLE IF EXISTS `capacitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE capacitaciones (
  `identificador` int(11) NOT NULL AUTO_INCREMENT,
  `rut` int(11) DEFAULT NULL,
  `dia` varchar(100) NOT NULL,
  `hora` time DEFAULT NULL,
  `lugar` varchar(100) NOT NULL,
  `duracion` time DEFAULT NULL,
  `cantAsistentes` int(11) DEFAULT NULL,
  PRIMARY KEY (`identificador`)
) ENGINE=InnoDB AUTO_INCREMENT=1234524 DEFAULT CHARSET=latin1;


LOCK TABLES `capacitaciones` WRITE;
/*!40000 ALTER TABLE `capacitaciones` DISABLE KEYS */;
INSERT INTO `capacitaciones` VALUES (
101,1892943,'Lunes','12:00:00',' Segunda prueba','02:00:00',12),
(102,1892943,'Martes','12:00:00','En el capitolio','02:00:00',12),
(103,1892943,'Lunes','12:00:00','El cuerpo de Bomberos','02:00:00',12),
(104,103988,'Jueves','11:30:00',' Cede municipal ','01:00:00',12),
(105,103988,'Lunes','11:30:00',' 12:12','01:00:00',12),
(106,103988,'Lunes','12:30:00','Es aqui','01:00:00',7),
(107,103988,'Lunes','11:30:00','Test 1 ','01:00:00',12),
(108,103988,'Lunes','11:30:00','test 2','01:00:00',12),
(1234523,1892943,'Lunes','12:00:00','En la moneda','02:00:00',12);
UNLOCK TABLES;