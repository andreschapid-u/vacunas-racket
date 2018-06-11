-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2018 a las 20:05:27
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
CREATE DATABASE IF NOT EXISTS `bdvacunacion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdvacunacion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapa`
--

DROP TABLE IF EXISTS `etapa`;
CREATE TABLE `etapa` (
  `IDETAPA` int(11) NOT NULL,
  `NOMBRE` char(200) NOT NULL
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
(9, 'etapa9'),
(10, 'Etapa 10'),
(11, 'Etapa 11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapavacuna`
--

DROP TABLE IF EXISTS `etapavacuna`;
CREATE TABLE `etapavacuna` (
  `VAC_IDVACUNA` int(11) NOT NULL,
  `IDETAPA` int(11) NOT NULL
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
(9, 8),
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
(9, 6),
(10, 6),
(7, 6),
(11, 6),
(3, 7),
(5, 7),
(12, 7),
(1, 9),
(5, 9),
(5, 10),
(5, 11),
(3, 9),
(3, 10),
(2, 9),
(2, 10),
(9, 9),
(12, 9),
(11, 9),
(7, 9),
(7, 10),
(10, 9);

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
(130, 'Carlos Chapid', '2018-05-20', 'Carlos', '123456789', 'qwertyuio', 'Mascu'),
(200, 'Juana', '2017-06-01', 'wertyu', '123456789', 'asdfghjk', 'Femenino'),
(201, 'juan', '2018-06-10', '12345', '123456', '12345678', 'Masculino'),
(202, 'Prueba', '2016-01-01', '1234567', '1234567', '234567', 'Masculino'),
(1111, 'rene jalvinr', '0001-12-17', 'marino', '345654', 'playa', 'Mascu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacienteetapa`
--

DROP TABLE IF EXISTS `pacienteetapa`;
CREATE TABLE `pacienteetapa` (
  `IDETAPA` int(11) NOT NULL,
  `IDREGISTROCIVIL` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `FECHAVACUNACION` date DEFAULT NULL,
  `ESTADO` char(20) NOT NULL DEFAULT 'No aplicada',
  `discrepancia` varchar(50) NOT NULL DEFAULT 'No discrepancia'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `pacienteetapa`
--

TRUNCATE TABLE `pacienteetapa`;
--
-- Volcado de datos para la tabla `pacienteetapa`
--

INSERT INTO `pacienteetapa` (`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `FECHAVACUNACION`, `ESTADO`, `discrepancia`) VALUES
(1, 130, '2018-06-11', '2018-06-12', 'No aplicada', 'Discrepancia'),
(1, 201, '2018-06-11', '2018-06-11', 'No aplicada', 'No discrepancia'),
(2, 130, '2018-08-11', '2018-08-11', 'No aplicada', 'No discrepancia'),
(2, 201, '2018-08-11', '2018-08-11', 'No aplicada', 'No discrepancia'),
(3, 130, '2018-10-11', '2018-10-11', 'No aplicada', 'No discrepancia'),
(3, 201, '2018-10-11', '2018-10-11', 'No aplicada', 'No discrepancia'),
(4, 130, '2018-12-11', '2018-12-11', 'No aplicada', 'No discrepancia'),
(4, 201, '2018-12-11', '2018-12-11', 'No aplicada', 'No discrepancia'),
(5, 130, '2019-01-11', '2019-01-11', 'No aplicada', 'No discrepancia'),
(5, 201, '2019-01-11', '2019-01-11', 'No aplicada', 'No discrepancia'),
(6, 130, '2019-06-11', '2019-06-11', 'No aplicada', 'No discrepancia'),
(6, 201, '2019-06-11', '2019-06-11', 'No aplicada', 'No discrepancia'),
(7, 130, '2019-12-11', '2019-12-11', 'No aplicada', 'No discrepancia'),
(7, 201, '2019-12-11', '2019-12-11', 'No aplicada', 'No discrepancia'),
(8, 130, '2023-06-11', '2023-06-11', 'No aplicada', 'No discrepancia'),
(8, 201, '2023-06-11', '2023-06-11', 'No aplicada', 'No discrepancia'),
(9, 126, '2018-06-11', '2018-06-11', 'No aplicada', 'No discrepancia'),
(9, 200, '2018-06-11', '2018-06-11', 'No aplicada', 'No discrepancia'),
(9, 202, '2018-06-11', '2018-06-11', 'No aplicada', 'No discrepancia'),
(10, 126, '2018-07-11', '2018-07-11', 'No aplicada', 'No discrepancia'),
(10, 200, '2018-07-11', '2018-07-11', 'No aplicada', 'No discrepancia'),
(10, 202, '2018-07-11', '2018-07-11', 'No aplicada', 'No discrepancia'),
(11, 126, '2018-08-11', '2018-08-11', 'No aplicada', 'No discrepancia'),
(11, 200, '2018-08-11', '2018-08-11', 'No aplicada', 'No discrepancia'),
(11, 202, '2018-08-11', '2018-08-11', 'No aplicada', 'No discrepancia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacuna`
--

DROP TABLE IF EXISTS `vacuna`;
CREATE TABLE `vacuna` (
  `IDVACUNA` int(11) NOT NULL,
  `NOMBRE` char(50) NOT NULL
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
(9, 'Sarampion rubeola paperas(SRP)'),
(10, 'varicela'),
(11, 'HepatitisA'),
(12, 'FiebreAmarilla');

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
  ADD UNIQUE KEY `UNIQUE_IDREGISTROCIVIL_IDETAPA` (`IDETAPA`,`IDREGISTROCIVIL`),
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
