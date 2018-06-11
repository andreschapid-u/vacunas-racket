-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2018 a las 22:59:09
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5
SET
    SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET
    AUTOCOMMIT = 0;START TRANSACTION;
SET
    time_zone = "+00:00";
    /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
    /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
    /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
    /*!40101 SET NAMES utf8mb4 */;--
    -- Base de datos: `bdvacunacion`
    --
    CREATE DATABASE IF NOT EXISTS `bdvacunacion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;USE `bdvacunacion`;-- --------------------------------------------------------
    --
    -- Estructura de tabla para la tabla `etapa`
    --
    DROP TABLE IF EXISTS `etapa`;CREATE TABLE `etapa` (
        `IDETAPA` int(11) NOT NULL,
        `NOMBRE` char(200) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;--
    -- Truncar tablas antes de insertar `etapa`
    --
    TRUNCATE TABLE `etapa`;--
    -- Volcado de datos para la tabla `etapa`
    --
INSERT INTO
    `etapa` (`IDETAPA`, `NOMBRE`)
VALUES
    (1, 'Etapa 1'),
    (2, 'Etapa 2'),
    (3, 'Etapa 3'),
    (4, 'Etapa 4'),
    (5, 'Etapa 5'),
    (6, 'Etapa 6'),
    (7, 'Etapa 7'),
    (8, 'Etapa 8'),
    (9, 'Etapa 9'),
    (10, 'Etapa 10'),
    (11, 'Etapa 11');-- --------------------------------------------------------
    --
    -- Estructura de tabla para la tabla `etapavacuna`
    --
    DROP TABLE IF EXISTS `etapavacuna`;CREATE TABLE `etapavacuna` (
        `VAC_IDVACUNA` int(11) NOT NULL,
        `IDETAPA` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;--
    -- Truncar tablas antes de insertar `etapavacuna`
    --
    TRUNCATE TABLE `etapavacuna`;--
    -- Volcado de datos para la tabla `etapavacuna`
    --
INSERT INTO
    `etapavacuna` (`VAC_IDVACUNA`, `IDETAPA`)
VALUES
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
    (10, 9);-- --------------------------------------------------------
    --
    -- Estructura de tabla para la tabla `paciente`
    --
    DROP TABLE IF EXISTS `paciente`;CREATE TABLE `paciente` (
        `IDREGISTROCIVIL` int(11) NOT NULL,
        `NOMBRESAPELLIDOS` char(200) NOT NULL,
        `FECHANACIMIENTO` date NOT NULL,
        `NOMBRECONTACTO` char(100) NOT NULL,
        `TELEFONOCONTACTO` char(30) NOT NULL,
        `DIRECCION` char(30) NOT NULL,
        `GENERO` char(10) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;--
    -- Truncar tablas antes de insertar `paciente`
    --
    TRUNCATE TABLE `paciente`;-- --------------------------------------------------------
    --
    -- Estructura de tabla para la tabla `pacienteetapa`
    --
    DROP TABLE IF EXISTS `pacienteetapa`;CREATE TABLE `pacienteetapa` (
        `IDETAPA` int(11) NOT NULL,
        `IDREGISTROCIVIL` int(11) NOT NULL,
        `FECHA` date NOT NULL,
        `FECHAVACUNACION` date DEFAULT NULL,
        `ESTADO` char(20) NOT NULL DEFAULT 'No aplicada',
        `discrepancia` varchar(50) NOT NULL DEFAULT 'No discrepancia'
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;--
    -- Truncar tablas antes de insertar `pacienteetapa`
    --
    TRUNCATE TABLE `pacienteetapa`;-- --------------------------------------------------------
    --
    -- Estructura de tabla para la tabla `vacuna`
    --
    DROP TABLE IF EXISTS `vacuna`;CREATE TABLE `vacuna` (
        `IDVACUNA` int(11) NOT NULL,
        `NOMBRE` char(50) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;--
    -- Truncar tablas antes de insertar `vacuna`
    --
    TRUNCATE TABLE `vacuna`;--
    -- Volcado de datos para la tabla `vacuna`
    --
INSERT INTO
    `vacuna` (`IDVACUNA`, `NOMBRE`)
VALUES
    (1, 'Tuberculosis (BCG)'),
    (2, 'Hepatitis B'),
    (3, 'Difteria - Tos ferina - Tétanos (DPT)'),
    (4, 'Haemophilus infl uenzae tipo b (Hib)'),
    (5, 'Polio'),
    (6, 'Rotavirus'),
    (7, 'Neumococo'),
    (8, 'Influenza estacional'),
    (9, 'Sarampión - Rubeola - Paperas (SRP)'),
    (10, 'Varicela'),
    (11, 'Hepatitis A'),
    (12, 'Fiebre amarilla (FA)');--
    -- Índices para tablas volcadas
    --
    --
    -- Indices de la tabla `etapa`
    --
ALTER TABLE
    `etapa`
ADD
    PRIMARY KEY (`IDETAPA`);--
    -- Indices de la tabla `etapavacuna`
    --
ALTER TABLE
    `etapavacuna`
ADD
    KEY `FK_ETAPAVAC_PERTENECE_ETAPA` (`IDETAPA`),
ADD
    KEY `FK_ETAPAVAC_TIENE_VACUNA` (`VAC_IDVACUNA`);--
    -- Indices de la tabla `paciente`
    --
ALTER TABLE
    `paciente`
ADD
    PRIMARY KEY (`IDREGISTROCIVIL`);--
    -- Indices de la tabla `pacienteetapa`
    --
ALTER TABLE
    `pacienteetapa`
ADD
    UNIQUE KEY `UNIQUE_IDREGISTROCIVIL_IDETAPA` (`IDETAPA`, `IDREGISTROCIVIL`),
ADD
    KEY `FK_PACIENTE_RELATIONS_ETAPA` (`IDETAPA`),
ADD
    KEY `FK_PACIENTE_SEVACUNA_PACIENTE` (`IDREGISTROCIVIL`);--
    -- Indices de la tabla `vacuna`
    --
ALTER TABLE
    `vacuna`
ADD
    PRIMARY KEY (`IDVACUNA`);--
    -- Restricciones para tablas volcadas
    --
    --
    -- Filtros para la tabla `etapavacuna`
    --
ALTER TABLE
    `etapavacuna`
ADD
    CONSTRAINT `FK_ETAPAVAC_PERTENECE_ETAPA` FOREIGN KEY (`IDETAPA`) REFERENCES `etapa` (`IDETAPA`),
ADD
    CONSTRAINT `FK_ETAPAVAC_TIENE_VACUNA` FOREIGN KEY (`VAC_IDVACUNA`) REFERENCES `vacuna` (`IDVACUNA`);--
    -- Filtros para la tabla `pacienteetapa`
    --
ALTER TABLE
    `pacienteetapa`
ADD
    CONSTRAINT `FK_PACIENTE_RELATIONS_ETAPA` FOREIGN KEY (`IDETAPA`) REFERENCES `etapa` (`IDETAPA`),
ADD
    CONSTRAINT `FK_PACIENTE_SEVACUNA_PACIENTE` FOREIGN KEY (`IDREGISTROCIVIL`) REFERENCES `paciente` (`IDREGISTROCIVIL`);COMMIT;
    /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
    /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
    /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;