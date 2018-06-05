-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2018 a las 18:24:10
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
-- Estructura de tabla para la tabla `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `codRegistroCivil` int(30) NOT NULL,
  `NombreApellidos` varchar(200) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `NombreContacto` varchar(100) NOT NULL,
  `telefonoContacto` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `genero` char(1) NOT NULL,
  PRIMARY KEY (`codRegistroCivil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `paciente`
--

TRUNCATE TABLE `paciente`;
--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`codRegistroCivil`, `NombreApellidos`, `fechaNacimiento`, `NombreContacto`, `telefonoContacto`, `direccion`, `genero`) VALUES
(123, 'pepito perez', '2018-06-06', 'carlos perez', '124453', 'esmeralda', 'm');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
