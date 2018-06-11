-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2018 a las 06:12:54
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdvacunacion`
--
CREATE DATABASE IF NOT EXISTS `bdvacunacion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdvacunacion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapa`
--

DROP TABLE IF EXISTS `etapa`;
CREATE TABLE IF NOT EXISTS `etapa` (
  `IDETAPA` int(11) NOT NULL,
  `NOMBRE` char(200) NOT NULL,
  PRIMARY KEY (`IDETAPA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `etapa`
--

TRUNCATE TABLE `etapa`;
--
-- Volcado de datos para la tabla `etapa`
--

INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES
(1, 'etapa1'),
(2, 'etapa2'),
(3, 'etapa3'),
(4, 'etapa4'),
(5, 'etapa5'),
(6, 'etapa6'),
(7, 'etapa7'),
(8, 'etapa8'),
(9, 'etapa9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapavacuna`
--

DROP TABLE IF EXISTS `etapavacuna`;
CREATE TABLE IF NOT EXISTS `etapavacuna` (
  `VAC_IDVACUNA` int(11) NOT NULL,
  `IDETAPA` int(11) NOT NULL,
  KEY `FK_ETAPAVAC_PERTENECE_ETAPA` (`IDETAPA`),
  KEY `FK_ETAPAVAC_TIENE_VACUNA` (`VAC_IDVACUNA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `etapavacuna`
--

TRUNCATE TABLE `etapavacuna`;
--
-- Volcado de datos para la tabla `etapavacuna`
--

INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES
(8, 3),
(8, 5),
(3, 8),
(5, 8),
(13, 8),
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(2, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(2, 3),
(3, 4),
(4, 4),
(5, 4),
(8, 4),
(8, 5),
(13, 6),
(10, 6),
(7, 6),
(11, 6),
(3, 7),
(5, 7),
(12, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `IDREGISTROCIVIL` int(11) NOT NULL,
  `NOMBRESAPELLIDOS` char(200) NOT NULL,
  `FECHANACIMIENTO` date NOT NULL,
  `NOMBRECONTACTO` char(100) NOT NULL,
  `TELEFONOCONTACTO` char(30) NOT NULL,
  `DIRECCION` char(30) NOT NULL,
  `GENERO` char(5) NOT NULL,
  PRIMARY KEY (`IDREGISTROCIVIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `paciente`
--

TRUNCATE TABLE `paciente`;
--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES
(123, 'carlos realpe', '2018-06-14', 'maria lopez', '214554', 'centro', 'm'),
(124, 'pedro sanches', '2018-05-14', 'carmen chantre', '214dad4', 'cali', 'm'),
(125, 'julian topa', '2018-07-16', 'sandra topa', '214554', 'centro', 'm'),
(126, 'nathalia velasco', '2018-01-01', 'eujenia bravo', '2145245', 'piendamo', 'm'),
(127, 'maricela narvaez', '2018-09-17', 'marta narvaez', '21454354', 'bogota', 'f'),
(1111, 'rene jalvinr', '0001-12-17', 'marino', '345654', 'playa', 'Mascu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacienteetapa`
--

DROP TABLE IF EXISTS `pacienteetapa`;
CREATE TABLE IF NOT EXISTS `pacienteetapa` (
  `IDETAPA` int(11) NOT NULL,
  `IDREGISTROCIVIL` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `FECHAVACUNACION` date DEFAULT NULL,
  `ESTADO` char(20) NOT NULL,
  KEY `FK_PACIENTE_RELATIONS_ETAPA` (`IDETAPA`),
  KEY `FK_PACIENTE_SEVACUNA_PACIENTE` (`IDREGISTROCIVIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `pacienteetapa`
--

TRUNCATE TABLE `pacienteetapa`;
--
-- Volcado de datos para la tabla `pacienteetapa`
--

INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `FECHAVACUNACION`, `ESTADO`) VALUES
(1, 123, '2018-06-13', '2018-06-13', 'aplicada'),
(2, 123, '2018-08-13', '2018-08-13', 'aplicada'),
(3, 123, '2018-11-13', '2018-11-13', 'aplicada'),
(4, 123, '2018-01-13', '2018-01-13', 'no aplicada'),
(5, 123, '2018-04-13', '2018-04-13', 'no aplicada'),
(6, 123, '2018-05-13', '2018-05-13', 'no aplicada'),
(7, 123, '2018-08-13', '2018-08-13', 'no aplicada'),
(8, 123, '2018-11-13', '2018-11-13', 'no aplicada'),
(9, 123, '0000-00-00', '0000-00-00', 'no aplicada'),
(1, 124, '2018-12-18', '2018-12-18', 'aplicada'),
(2, 124, '2018-02-18', '2018-02-18', 'no aplicada'),
(3, 124, '2018-04-18', '2018-04-18', 'no aplicada'),
(4, 124, '2018-07-18', '2018-07-18', 'no aplicada'),
(5, 124, '2018-10-18', '2018-10-18', 'no aplicada'),
(6, 124, '2018-12-18', '2018-12-18', 'no aplicada'),
(7, 124, '2018-01-18', '2018-01-18', 'no aplicada'),
(8, 124, '2018-03-18', '2018-03-18', 'no aplicada'),
(9, 124, '2018-06-18', '2018-06-18', 'no aplicada'),
(1, 125, '2018-10-13', '2018-10-13', 'aplicada'),
(2, 125, '2018-12-13', '2018-12-13', 'aplicada'),
(3, 125, '2018-02-13', '2018-02-13', 'aplicada'),
(4, 125, '2018-04-13', '2018-04-13', 'aplicada'),
(5, 125, '2018-06-13', '2018-06-13', 'no aplicada'),
(6, 125, '2018-08-13', '2018-08-13', 'no aplicada'),
(7, 125, '2018-09-13', '2018-09-13', 'no aplicada'),
(8, 125, '2018-11-13', '2018-11-13', 'no aplicada'),
(9, 125, '2018-12-13', '2018-12-13', 'no aplicada'),
(1, 126, '2018-09-13', '2018-09-13', 'aplicada'),
(2, 126, '2018-11-13', '2018-11-13', 'aplicada'),
(3, 126, '2018-01-13', '2018-01-13', 'aplicada'),
(4, 126, '2018-03-13', '2018-03-13', 'aplicada'),
(5, 126, '2018-05-13', '2018-05-13', 'no aplicada'),
(6, 126, '2018-06-13', '2018-06-13', 'no aplicada'),
(7, 126, '2018-08-13', '2018-08-13', 'no aplicada'),
(8, 126, '2018-11-13', '2018-11-13', 'no aplicada'),
(9, 126, '2018-01-13', '2018-01-13', 'no aplicada'),
(3, 123, '2019-06-13', NULL, 'aplicada'),
(3, 123, '2019-08-13', NULL, 'aplicada'),
(4, 123, '2019-11-13', NULL, 'aplicada'),
(4, 123, '2019-01-13', NULL, 'no aplicada'),
(4, 123, '2019-04-13', NULL, 'no aplicada'),
(4, 123, '2019-05-13', NULL, 'no aplicada'),
(4, 123, '2019-08-13', NULL, 'no aplicada'),
(5, 123, '2019-11-13', NULL, 'no aplicada'),
(6, 123, '0000-00-00', NULL, 'no aplicada'),
(6, 123, '2020-06-13', NULL, 'aplicada'),
(6, 123, '2020-08-13', NULL, 'aplicada'),
(6, 123, '2020-11-13', NULL, 'aplicada'),
(6, 123, '2020-01-13', NULL, 'no aplicada'),
(7, 123, '2020-04-13', NULL, 'no aplicada'),
(7, 123, '2020-05-13', NULL, 'no aplicada'),
(8, 123, '2020-08-13', NULL, 'no aplicada'),
(8, 123, '2020-11-13', NULL, 'no aplicada'),
(8, 123, '2020-12-13', NULL, 'no aplicada'),
(9, 123, '2021-01-13', NULL, 'no aplicada'),
(9, 123, '2020-02-13', NULL, 'no aplicada'),
(9, 123, '2020-03-13', NULL, 'no aplicada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacuna`
--

DROP TABLE IF EXISTS `vacuna`;
CREATE TABLE IF NOT EXISTS `vacuna` (
  `IDVACUNA` int(11) NOT NULL,
  `NOMBRE` char(50) NOT NULL,
  PRIMARY KEY (`IDVACUNA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `vacuna`
--

TRUNCATE TABLE `vacuna`;
--
-- Volcado de datos para la tabla `vacuna`
--

INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES
(1, 'Tuberculosis'),
(2, 'HepatitisB'),
(3, 'difteria tos ferina tetanos (D'),
(4, 'Haemopbius influenzae tipo b ('),
(5, 'polio'),
(6, 'Rotabirus'),
(7, 'Neumococo'),
(8, 'InfluenciaEstacional'),
(9, 'sarampio rubiola paperas'),
(10, 'varicela'),
(11, 'HepatitisA'),
(12, 'FiebreAmarilla'),
(13, 'Sarampion rubeola paperas(SRP)');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `etapavacuna`
--
ALTER TABLE `etapavacuna`
  ADD CONSTRAINT `FK_ETAPAVAC_PERTENECE_ETAPA` FOREIGN KEY (`IDETAPA`) REFERENCES `etapa` (`IDETAPA`),
  ADD CONSTRAINT `FK_ETAPAVAC_TIENE_VACUNA` FOREIGN KEY (`VAC_IDVACUNA`) REFERENCES `vacuna` (`IDVACUNA`);

--
-- Filtros para la tabla `pacienteetapa`
--
ALTER TABLE `pacienteetapa`
  ADD CONSTRAINT `FK_PACIENTE_RELATIONS_ETAPA` FOREIGN KEY (`IDETAPA`) REFERENCES `etapa` (`IDETAPA`),
  ADD CONSTRAINT `FK_PACIENTE_SEVACUNA_PACIENTE` FOREIGN KEY (`IDREGISTROCIVIL`) REFERENCES `paciente` (`IDREGISTROCIVIL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
