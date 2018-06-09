# Host: 127.0.0.1  (Version 5.5.5-10.1.32-MariaDB)
# Date: 2018-06-08 13:31:22
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "etapa"
#

DROP TABLE IF EXISTS `etapa`;
CREATE TABLE `etapa` (
  `IDETAPA` int(11) NOT NULL,
  `NOMBRE` char(200) NOT NULL,
  PRIMARY KEY (`IDETAPA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "etapa"
#

INSERT INTO `etapa` VALUES (1,'etapa1'),(2,'etapa2'),(3,'etapa3'),(4,'etapa4'),(5,'etapa5'),(6,'etapa6'),(7,'etapa7'),(8,'etapa8'),(9,'etapa9');

#
# Structure for table "paciente"
#

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE `paciente` (
  `IDREGISTROCIVIL` int(11) NOT NULL,
  `NOMBRESAPELLIDOS` char(200) NOT NULL,
  `FECHANACIMIENTO` date NOT NULL,
  `NOMBRECONTACTO` char(100) NOT NULL,
  `TELEFONOCONTACTO` char(30) NOT NULL,
  `DIRECCION` char(30) NOT NULL,
  `GENERO` char(5) NOT NULL,
  PRIMARY KEY (`IDREGISTROCIVIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "paciente"
#

INSERT INTO `paciente` VALUES (123,'carlos realpe','2018-06-14','maria lopez','214554','centro','m'),(124,'pedro sanches','2018-05-14','carmen chantre','214dad4','cali','m'),(125,'julian topa','2018-07-16','sandra topa','214554','centro','m'),(126,'nathalia velasco','2018-01-01','eujenia bravo','2145245','piendamo','m'),(127,'maricela narvaez','2018-09-17','marta narvaez','21454354','bogota','f');

#
# Structure for table "pacienteetapa"
#

DROP TABLE IF EXISTS `pacienteetapa`;
CREATE TABLE `pacienteetapa` (
  `IDETAPA` int(11) NOT NULL,
  `IDREGISTROCIVIL` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ESTADO` char(20) NOT NULL,
  KEY `FK_PACIENTE_RELATIONS_ETAPA` (`IDETAPA`),
  KEY `FK_PACIENTE_SEVACUNA_PACIENTE` (`IDREGISTROCIVIL`),
  CONSTRAINT `FK_PACIENTE_RELATIONS_ETAPA` FOREIGN KEY (`IDETAPA`) REFERENCES `etapa` (`IDETAPA`),
  CONSTRAINT `FK_PACIENTE_SEVACUNA_PACIENTE` FOREIGN KEY (`IDREGISTROCIVIL`) REFERENCES `paciente` (`IDREGISTROCIVIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "pacienteetapa"
#

INSERT INTO `pacienteetapa` VALUES (1,123,'2018-06-13','aplicada'),(2,123,'2018-08-13','aplicada'),(3,123,'2018-11-13','aplicada'),(4,123,'2018-01-13','no aplicada'),(5,123,'2018-04-13','no aplicada'),(6,123,'2018-05-13','no aplicada'),(7,123,'2018-08-13','no aplicada'),(8,123,'2018-11-13','no aplicada'),(9,123,'0000-00-00','no aplicada'),(1,124,'2018-12-18','aplicada'),(2,124,'2018-02-18','no aplicada'),(3,124,'2018-04-18','no aplicada'),(4,124,'2018-07-18','no aplicada'),(5,124,'2018-10-18','no aplicada'),(6,124,'2018-12-18','no aplicada'),(7,124,'2018-01-18','no aplicada'),(8,124,'2018-03-18','no aplicada'),(9,124,'2018-06-18','no aplicada'),(1,125,'2018-10-13','aplicada'),(2,125,'2018-12-13','aplicada'),(3,125,'2018-02-13','aplicada'),(4,125,'2018-04-13','aplicada'),(5,125,'2018-06-13','no aplicada'),(6,125,'2018-08-13','no aplicada'),(7,125,'2018-09-13','no aplicada'),(8,125,'2018-11-13','no aplicada'),(9,125,'2018-12-13','no aplicada'),(1,126,'2018-09-13','aplicada'),(2,126,'2018-11-13','aplicada'),(3,126,'2018-01-13','aplicada'),(4,126,'2018-03-13','aplicada'),(5,126,'2018-05-13','no aplicada'),(6,126,'2018-06-13','no aplicada'),(7,126,'2018-08-13','no aplicada'),(8,126,'2018-11-13','no aplicada'),(9,126,'2018-01-13','no aplicada');

#
# Structure for table "vacuna"
#

DROP TABLE IF EXISTS `vacuna`;
CREATE TABLE `vacuna` (
  `IDVACUNA` int(11) NOT NULL,
  `NOMBRE` char(30) NOT NULL,
  PRIMARY KEY (`IDVACUNA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "vacuna"
#

INSERT INTO `vacuna` VALUES (1,'Tuberculosis'),(2,'HepatitisB'),(3,'difteria tos ferina tetanos (D'),(4,'Haemopbius influenzae tipo b ('),(5,'polio'),(6,'Rotabirus'),(7,'Neumococo'),(8,'InfluenciaEstacional'),(9,'sarampio rubiola paperas'),(10,'varicela'),(11,'HepatitisA'),(12,'FiebreAmarilla'),(13,'Sarampion rubeola paperas(SRP)');

#
# Structure for table "etapavacuna"
#

DROP TABLE IF EXISTS `etapavacuna`;
CREATE TABLE `etapavacuna` (
  `VAC_IDVACUNA` int(11) NOT NULL,
  `IDETAPA` int(11) NOT NULL,
  KEY `FK_ETAPAVAC_PERTENECE_ETAPA` (`IDETAPA`),
  KEY `FK_ETAPAVAC_TIENE_VACUNA` (`VAC_IDVACUNA`),
  CONSTRAINT `FK_ETAPAVAC_PERTENECE_ETAPA` FOREIGN KEY (`IDETAPA`) REFERENCES `etapa` (`IDETAPA`),
  CONSTRAINT `FK_ETAPAVAC_TIENE_VACUNA` FOREIGN KEY (`VAC_IDVACUNA`) REFERENCES `vacuna` (`IDVACUNA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "etapavacuna"
#

INSERT INTO `etapavacuna` VALUES (1,1),(2,1),(3,2),(4,2),(5,2),(6,2),(7,2),(2,2),(3,3),(4,3),(5,3),(6,3),(7,3),(2,3),(3,4),(4,4),(5,4),(8,4),(8,5),(13,6),(10,6),(7,6),(11,6),(3,7),(5,7),(12,7),(3,8),(4,8),(13,8);
