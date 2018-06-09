-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2018 a las 20:59:08
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

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
CREATE DATABASE IF NOT EXISTS `bdvacunacion` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bdvacunacion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapa`
--

DROP TABLE IF EXISTS `etapa`;
CREATE TABLE `etapa` (
  `IDETAPA` int(11) NOT NULL,
  `NOMBRE` char(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `etapa`
--

TRUNCATE TABLE `etapa`;
--
-- Volcado de datos para la tabla `etapa`
--

INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES(1, 'etapa1');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES(2, 'etapa2');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES(3, 'etapa3');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES(4, 'etapa4');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES(5, 'etapa5');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES(6, 'etapa6');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES(7, 'etapa7');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES(8, 'etapa8');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES(9, 'etapa9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapavacuna`
--

DROP TABLE IF EXISTS `etapavacuna`;
CREATE TABLE `etapavacuna` (
  `VAC_IDVACUNA` int(11) NOT NULL,
  `IDETAPA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `etapavacuna`
--

TRUNCATE TABLE `etapavacuna`;
--
-- Volcado de datos para la tabla `etapavacuna`
--

INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(1, 1);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(2, 1);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(3, 2);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(4, 2);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(5, 2);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(6, 2);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(7, 2);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(2, 2);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(3, 3);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(4, 3);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(5, 3);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(6, 3);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(7, 3);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(2, 3);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(3, 4);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(4, 4);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(5, 4);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(8, 4);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(8, 5);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(13, 6);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(10, 6);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(7, 6);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(11, 6);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(3, 7);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(5, 7);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(12, 7);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(3, 8);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(4, 8);
INSERT INTO `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`) VALUES(13, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE `paciente` (
  `IDREGISTROCIVIL` int(11) NOT NULL,
  `NOMBRESAPELLIDOS` char(200) NOT NULL,
  `FECHANACIMIENTO` date NOT NULL,
  `NOMBRECONTACTO` char(100) NOT NULL,
  `TELEFONOCONTACTO` char(30) NOT NULL,
  `DIRECCION` char(30) NOT NULL,
  `GENERO` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `paciente`
--

TRUNCATE TABLE `paciente`;
--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES(123, 'carlos realpe', '2018-06-14', 'maria lopez', '214554', 'centro', 'm');
INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES(124, 'pedro sanches', '2018-05-14', 'carmen chantre', '214dad4', 'cali', 'm');
INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES(125, 'julian topa', '2018-07-16', 'sandra topa', '214554', 'centro', 'm');
INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES(126, 'nathalia velasco', '2018-01-01', 'eujenia bravo', '2145245', 'piendamo', 'm');
INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES(127, 'maricela narvaez', '2018-09-17', 'marta narvaez', '21454354', 'bogota', 'f');
INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES(128, 'Carlos Chapid', '1992-02-04', 'Carlos', '1234567890', 'Popayan', 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacienteetapa`
--

DROP TABLE IF EXISTS `pacienteetapa`;
CREATE TABLE `pacienteetapa` (
  `IDETAPA` int(11) NOT NULL,
  `IDREGISTROCIVIL` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ESTADO` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `pacienteetapa`
--

TRUNCATE TABLE `pacienteetapa`;
--
-- Volcado de datos para la tabla `pacienteetapa`
--

INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(1, 123, '2018-06-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(2, 123, '2018-08-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(3, 123, '2018-11-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(4, 123, '2018-01-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(5, 123, '2018-04-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(6, 123, '2018-05-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(7, 123, '2018-08-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(8, 123, '2018-11-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(9, 123, '0000-00-00', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(1, 124, '2018-12-18', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(2, 124, '2018-02-18', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(3, 124, '2018-04-18', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(4, 124, '2018-07-18', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(5, 124, '2018-10-18', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(6, 124, '2018-12-18', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(7, 124, '2018-01-18', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(8, 124, '2018-03-18', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(9, 124, '2018-06-18', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(1, 125, '2018-10-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(2, 125, '2018-12-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(3, 125, '2018-02-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(4, 125, '2018-04-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(5, 125, '2018-06-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(6, 125, '2018-08-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(7, 125, '2018-09-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(8, 125, '2018-11-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(9, 125, '2018-12-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(1, 126, '2018-09-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(2, 126, '2018-11-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(3, 126, '2018-01-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(4, 126, '2018-03-13', 'aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(5, 126, '2018-05-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(6, 126, '2018-06-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(7, 126, '2018-08-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(8, 126, '2018-11-13', 'no aplicada');
INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES(9, 126, '2018-01-13', 'no aplicada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacuna`
--

DROP TABLE IF EXISTS `vacuna`;
CREATE TABLE `vacuna` (
  `IDVACUNA` int(11) NOT NULL,
  `NOMBRE` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `vacuna`
--

TRUNCATE TABLE `vacuna`;
--
-- Volcado de datos para la tabla `vacuna`
--

INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(1, 'Tuberculosis');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(2, 'HepatitisB');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(3, 'difteria tos ferina tetanos (D');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(4, 'Haemopbius influenzae tipo b (');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(5, 'polio');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(6, 'Rotabirus');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(7, 'Neumococo');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(8, 'InfluenciaEstacional');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(9, 'sarampio rubiola paperas');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(10, 'varicela');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(11, 'HepatitisA');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(12, 'FiebreAmarilla');
INSERT INTO `vacuna` (`IDVACUNA`, `NOMBRE`) VALUES(13, 'Sarampion rubeola paperas(SRP)');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `etapa`
--
ALTER TABLE `etapa`
  ADD PRIMARY KEY (`IDETAPA`);

--
-- Indices de la tabla `etapavacuna`
--
ALTER TABLE `etapavacuna`
  ADD KEY `FK_ETAPAVAC_PERTENECE_ETAPA` (`IDETAPA`),
  ADD KEY `FK_ETAPAVAC_TIENE_VACUNA` (`VAC_IDVACUNA`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`IDREGISTROCIVIL`);

--
-- Indices de la tabla `pacienteetapa`
--
ALTER TABLE `pacienteetapa`
  ADD KEY `FK_PACIENTE_RELATIONS_ETAPA` (`IDETAPA`),
  ADD KEY `FK_PACIENTE_SEVACUNA_PACIENTE` (`IDREGISTROCIVIL`);

--
-- Indices de la tabla `vacuna`
--
ALTER TABLE `vacuna`
  ADD PRIMARY KEY (`IDVACUNA`);

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
