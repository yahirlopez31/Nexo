-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-11-2025 a las 21:56:36
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
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `catalogo` varchar(100) DEFAULT NULL,
  `imagen` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `catalogo`, `imagen`) VALUES
(1, 'Pan Casero', 'Pan casero recién horneado, con textura suave y corteza dorada', 25.50, 150, 'Comida Casera', 'pan_casero.jpg'),
(2, 'Arroz Integral', 'Arroz integral de calidad, perfecto para platillos saludables', 18.00, 200, 'Abarrotes', 'Arroz_Integral.jpg'),
(3, 'Frijoles Negros', 'Frijoles negros tradicionales, ricos en proteínas y sabor', 20.00, 180, 'Abarrotes', 'Frijoles_Negros.jpg'),
(4, 'Salsa de Tomate', 'Salsa de tomate natural, sin conservadores', 22.50, 130, 'Comida Casera', 'Salsa_de_Tomate.jpg'),
(5, 'Tamales de Elote', 'Tamales de elote dulces y suaves, receta tradicional', 30.00, 90, 'Comida Casera', 'Tamales_de_Elote.jpg'),
(6, 'Queso Fresco', 'Queso fresco artesanal, con sabor auténtico mexicano', 45.00, 75, 'Abarrotes', 'Queso_Fresco.jpg'),
(7, 'Mole Poblano', 'Mole poblano casero con ingredientes seleccionados', 55.00, 60, 'Comida Casera', 'Mole_Poblano.jpg'),
(8, 'Jitomate Saladet', 'Jitomate saladet fresco para ensaladas y salsas', 12.00, 220, 'Abarrotes', 'Jitomate_Saladet.jpg'),
(9, 'Café de Olla', 'Café de olla tradicional con canela y piloncillo', 40.00, 100, 'Comida Casera', 'Cafe_de_Olla.jpg'),
(10, 'Aceite de Oliva', 'Aceite de oliva extra virgen, de primera calidad', 70.00, 40, 'Abarrotes', 'Aceite_de_Oliva.jpg'),
(11, 'Tortillas de Maíz', 'Tortillas de maíz frescas hechas a mano', 15.00, 300, 'Comida Casera', 'Tortillas_de_Maiz.jpg'),
(12, 'Chiles Poblanos', 'Chiles poblanos frescos para guisos y rellenos', 18.50, 160, 'Abarrotes', 'Chiles_Poblanos.jpg'),
(13, 'Huevos de Rancho', 'Huevos frescos de rancho, alta calidad y sabor', 35.00, 140, 'Abarrotes', 'Huevos_de_Rancho.jpg'),
(14, 'Sopa de Fideo', 'Sopa de fideo casera con tomate y especias', 28.00, 120, 'Comida Casera', 'Sopa_de_Fideo.jpg'),
(15, 'Pan Dulce', 'Pan dulce variado, hecho con receta tradicional', 22.00, 155, 'Comida Casera', 'Pan_Dulce.jpg'),
(16, 'Jabón de Tierra', 'Jabón de tierra artesanal para limpieza', 15.00, 90, 'Abarrotes', 'Jabon_de_Tierra.jpg'),
(17, 'Leche Entera', 'Leche entera pasteurizada, fresca y natural', 25.00, 200, 'Abarrotes', 'Leche_Entera.jpg'),
(18, 'Chorizo Casero', 'Chorizo casero con especias naturales', 60.00, 75, 'Comida Casera', 'Chorizo_Casero.jpg'),
(19, 'Mermelada de Fresa', 'Mermelada de fresa natural sin conservadores', 35.50, 85, 'Comida Casera', 'Mermelada_de_Fresa.jpg'),
(20, 'Azúcar Orgánica', 'Azúcar orgánica de caña, sin químicos', 20.00, 180, 'Abarrotes', 'Azucar_Organica.jpg'),
(21, 'Pan Integral', 'Pan integral con semillas, saludable y delicioso', 28.00, 140, 'Comida Casera', ''),
(22, 'Queso Oaxaca', 'Queso Oaxaca fresco y artesanal', 48.00, 65, 'Abarrotes', ''),
(23, 'Salsa Verde', 'Salsa verde casera con tomatillo y chile', 25.00, 130, 'Comida Casera', ''),
(24, 'Cilantro Fresco', 'Cilantro fresco para aderezar tus platillos', 10.00, 210, 'Abarrotes', ''),
(25, 'Caldillo de Res', 'Caldillo de res casero, con verduras frescas', 55.00, 50, 'Comida Casera', ''),
(26, 'Tamales de Rajas', 'Tamales de rajas con queso, receta tradicional', 30.50, 95, 'Comida Casera', ''),
(27, 'Manteca de Cerdo', 'Manteca de cerdo pura para cocinar', 30.00, 70, 'Abarrotes', ''),
(28, 'Espinacas Frescas', 'Espinacas frescas y crujientes, para ensaladas y guisos', 15.00, 170, 'Abarrotes', ''),
(29, 'Bizcocho Casero', 'Bizcocho casero esponjoso y dulce', 25.00, 130, 'Comida Casera', ''),
(30, 'Chiles en Nogada', 'Chiles en nogada tradicionales con receta auténtica', 70.00, 40, 'Comida Casera', ''),
(31, 'Caldo de Pollo', 'Caldo de pollo casero con verduras frescas', 45.00, 90, 'Comida Casera', ''),
(32, 'Frutas Secas', 'Mezcla de frutas secas naturales y sin azúcar', 60.00, 60, 'Abarrotes', ''),
(33, 'Tortilla de Harina', 'Tortilla de harina casera, suave y tibia', 18.00, 180, 'Comida Casera', ''),
(34, 'Cebolla Blanca', 'Cebolla blanca fresca, para cocinar y ensaladas', 12.00, 220, 'Abarrotes', ''),
(35, 'Avena Natural', 'Avena natural sin azúcar para preparar desayuno', 20.00, 190, 'Abarrotes', ''),
(36, 'Café Orgánico', 'Café orgánico molido, aroma intenso', 75.00, 50, 'Abarrotes', ''),
(37, 'Pan de Muerto', 'Pan de muerto tradicional para festividades', 35.00, 85, 'Comida Casera', ''),
(38, 'Salsa de Chile', 'Salsa de chile roja casera, picante y sabrosa', 22.50, 140, 'Comida Casera', ''),
(39, 'Jamón de Pavo', 'Jamón de pavo natural para sándwiches', 50.00, 80, 'Abarrotes', ''),
(40, 'Lechuga Romana', 'Lechuga romana fresca para ensaladas', 18.00, 170, 'Abarrotes', ''),
(41, 'Pollo Rostizado', 'Pollo rostizado casero, jugoso y bien condimentado', 85.00, 45, 'Comida Casera', ''),
(42, 'Tomate Cherry', 'Tomate cherry dulce y fresco', 25.00, 160, 'Abarrotes', ''),
(43, 'Pan de Caja', 'Pan de caja integral y suave', 20.00, 190, 'Comida Casera', ''),
(44, 'Queso Manchego', 'Queso manchego curado con sabor fuerte', 55.00, 50, 'Abarrotes', ''),
(45, 'Frijoles Bayos', 'Frijoles bayos seleccionados, cocidos y secos', 22.00, 150, 'Abarrotes', ''),
(46, 'Calabacitas', 'Calabacitas frescas para guisos', 15.00, 200, 'Abarrotes', ''),
(47, 'Puré de Papa', 'Puré de papa casero y cremoso', 30.00, 100, 'Comida Casera', ''),
(48, 'Agua de Horchata', 'Agua de horchata natural con canela', 20.00, 110, 'Comida Casera', ''),
(49, 'Hongo Portobello', 'Hongo portobello fresco y firme', 40.00, 70, 'Abarrotes', ''),
(50, 'Chiles Jalapeños', 'Chiles jalapeños frescos y picantes', 15.00, 185, 'Abarrotes', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
