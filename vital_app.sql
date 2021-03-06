-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2017 a las 03:41:30
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vital_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicion`
--

CREATE TABLE `condicion` (
  `id` int(11) NOT NULL,
  `tipo_condicion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `enfermedad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `medicamentos` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `condicion`
--

INSERT INTO `condicion` (`id`, `tipo_condicion`, `enfermedad`, `medicamentos`) VALUES
(3, 'll', 'dd', 'ddd'),
(4, 'aaa', 'aaa', 'aaa'),
(5, 'adulto', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependiente`
--

CREATE TABLE `dependiente` (
  `identificacion` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `eps` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `condicion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `enfermedad` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `medicamentos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dependiente`
--

INSERT INTO `dependiente` (`identificacion`, `nombre`, `fecha`, `tipo`, `eps`, `correo`, `direccion`, `telefono`, `condicion`, `enfermedad`, `medicamentos`) VALUES
('123456789', 'mmmm', '2017-07-10', 'A ', 'Cafesalud', 'mmm', 'mmm', 'mmm', '', '', ''),
('41957964', 'july', '2017-05-06', 'ab ', 'cafesalud', 'mail', '7894', '456', 'noaplica', 'noaplica', 'noaplica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesional`
--

CREATE TABLE `profesional` (
  `registro` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `especialidad` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `profesional`
--

INSERT INTO `profesional` (`registro`, `especialidad`) VALUES
('123', 'Auxiliar'),
('246', 'enfermera'),
('333', 'neurologo pediatra'),
('5', 't'),
('999', 'EndocrinologÃ­a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `identificacion` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `eps` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `contacto` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tel_contacto` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `user` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `condicion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `enfermedad` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `medicamentos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`identificacion`, `nombre`, `fecha`, `tipo`, `eps`, `correo`, `telefono`, `direccion`, `contacto`, `tel_contacto`, `user`, `pass`, `condicion`, `enfermedad`, `medicamentos`) VALUES
('111', 'carmen', '1968-07-16', 'O ', 'SaludVida', '', '', '', '', '', '', '', '', '', ''),
('122', 'juana', '2002-05-17', '', 's', 'h', '999', 'op9', 'h', '', 'lolo', 'lolo', NULL, NULL, NULL),
('123456789', 'hector', '2017-07-10', 'O-', 'SaludVida', '', '', '', '', '', 'hector', '2468', '', '', ''),
('222', 'juliana', '1990-07-09', 'B ', 'SaludVida', '', '', '', '', '', '', '', '', '', ''),
('4', 'mm', '2017-07-06', 'A ', 'Cafesalud', 'mmm', 'mmmm', 'mm', 'mmm', 'mm', 'mmm', 'mm', 'mmm', 'mmm', 'mmmm'),
('400', 'pepe', '2017-03-05', 'A-', 'coomeva', 'pepe@gmail.com', '301500200', 'Calarca', 'maria', '301254633', 'pepe', '123', '', 'diabetes', ''),
('41', 'ana', '2017-06-08', 'A+', 'sanitas', 'ana@gmail.com', '555-555', 'calle 10#9-8', 'juan', '555-566', 'ana', '123', NULL, NULL, NULL),
('41957964', 'july', '2017-05-06', 'ab ', 'cafesalud', 'mail', '456', '7894', 'juan', '456', 'july', '222', 'noaplica', 'noaplica', 'noaplica'),
('444', 'pepita', '1980-07-31', 'A ', 'Cafesalud', 'pepita@gmail.com', '301254698', 'Pereira', 'Pepe', '36952365', 'pepita', '123', 'alergica', '', ''),
('48', 'lulu', '2017-06-21', 'A+', 'sanitas', 'lulu@gmail.com', '555', 'armenia', 'jose', '555', 'lulu', '123', NULL, 'cardiaca', NULL),
('5', '5', '2017-02-05', '5', '5', '5', '5', '5', '5', '5', '5', '5', NULL, NULL, NULL),
('555', 'july', '2017-05-06', 'ab ', 'cafesalud', 'mail', '456', '7894', 'juan', '456', 'july', '222', 'noaplica', 'noaplica', 'noaplica'),
('78', 'diego', '2017-07-09', 'A ', 'Cafesalud', 'diego', '1111', 'armenia', 'diego', '1111', 'diego', '1111', '', '', ''),
('888', 'lopez', '2017-07-09', 'B ', 'Sanitas', '', '', '', '', '', '', '', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `condicion`
--
ALTER TABLE `condicion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dependiente`
--
ALTER TABLE `dependiente`
  ADD PRIMARY KEY (`identificacion`);

--
-- Indices de la tabla `profesional`
--
ALTER TABLE `profesional`
  ADD PRIMARY KEY (`registro`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`identificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `condicion`
--
ALTER TABLE `condicion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
