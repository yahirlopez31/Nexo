-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-12-2025 a las 01:50:46
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
(2, 'LUIS GONZALEZ', 'luis@gmail.com', 'scrypt:32768:8:1$JwuGb7eu8owNthk8$64649dbced9cc9b54ad2f986866263a6905b25bde5e5797256f430330ee2594fd7aa8f7324dcac9a471ae1e9b5b6b3eb42c0dcf87432535faa7ca63b2caa7d7d', '00000', '0000', 'U'),
(8, 'ADAN', 'adan@gmail.com', 'scrypt:32768:8:1$PeW6Sp0otmhCFbdT$2c369e4b70c1ecbcd3980e81ea45d0aef2efaa1f35e564814366560746a80cba2fb79586fd432e3b02baa3eedbd4d041011f84ea460f5fdb419d7dc2940a36c0', '0000', 'escuela', 'U'),
(9, 'YAHIR', 'yahir@gmail.com', 'scrypt:32768:8:1$4rESklMw1zJQPaTx$3ac9b29ae6855fb2ce1202b3a2fd015f3c9d93dd0cc0a097f5995e5896047fb2cdf6097b1afbe7795b267c1ceb514d32038235fb2849f8a322d4bc2f2dde7c66', '0000', 'lolxd', 'U');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
