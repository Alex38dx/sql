-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2024 a las 19:39:43
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nequi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nequi`
--

CREATE TABLE IF NOT EXISTS `nequi` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `num_origen` char(13) NOT NULL,
  `num_destino` char(13) NOT NULL,
  `valor` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `nequi`
--

INSERT INTO `nequi` (`id`, `fecha_sys`, `num_origen`, `num_destino`, `valor`) VALUES
(1, '2024-09-30 12:08:12', '319277879', '3202292554', 8400),
(2, '2024-09-29 10:05:34', '34564789', '340765289', 5490),
(3, '2024-08-27 09:12:24', '320648371', '390487372', 645000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE IF NOT EXISTS `personas` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `nombres` char(35) NOT NULL,
  `apellidos` char(35) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `num_documento` char(18) NOT NULL,
  `celular` char(15) NOT NULL,
  `correo` char(40) NOT NULL,
  `estrato` tinyint(1) NOT NULL,
  `dir_residencia` char(90) NOT NULL,
  `tipo_documento` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `fecha_sys`, `nombres`, `apellidos`, `fecha_nacimiento`, `num_documento`, `celular`, `correo`, `estrato`, `dir_residencia`, `tipo_documento`) VALUES
(1, '2024-09-30 12:08:12', 'alex', 'perez', '2014-05-21', '12459876', '345723416', 'jorge43@gmail.com', 2, 'carrera13-6-03', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta de almuerzos`
--

CREATE TABLE IF NOT EXISTS `venta de almuerzos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `valor` int(9) NOT NULL,
  `documento` char(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `venta de almuerzos`
--

INSERT INTO `venta de almuerzos` (`id`, `fecha_sys`, `valor`, `documento`) VALUES
(1, '2024-09-17 06:00:00', 3400, '12443755');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_churros`
--

CREATE TABLE IF NOT EXISTS `venta_churros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `cantidad` smallint(100) NOT NULL,
  `valor` smallint(5) NOT NULL,
  `sabor` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
