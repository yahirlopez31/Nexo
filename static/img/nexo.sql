-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-09-2025 a las 23:38:43
-- Versión del servidor: 8.0.43
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nexo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `perfil` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `correo`, `clave`, `telefono`, `direccion`, `perfil`) VALUES
(1, 'YAHIR LOPEZ', 'cristofer.lopez2226@alumnos.udg.com', 'scrypt:32768:8:1$jsjUFzbIqrt80oa9$56c383c6052d8b18a49f9b5912f57cf85eb78cf838ae48f3d99ab94e84b9374cf7ac0152037580f5a2012a9bf73528391cf6d3c552ed7c8e7fc3496758f9b97e', '3330044033', 'lolxd1', 'A'),
(3, 'EDWIN PADILLA', 'edwinpadilla@gmail.com', 'scrypt:32768:8:1$CAy5hY6qLhlVudkC$684e7d524d1cef46192b914ba297ff5e003e88f8464728f17f79b8d5caa587a4245964a853f501aacc2094f07c7e737331db0837aa3559233f2278f9dab25d40', '000000', 'xdlol', 'U');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
