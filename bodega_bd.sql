-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2025 a las 18:30:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodega_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Nombre`, `Direccion`, `Telefono`) VALUES
(1, 'Juan Pérez', 'Av. Los Olivos 123', '987654321'),
(2, 'María López', 'Jr. Primavera 456', '912345678'),
(3, 'Carlos Sánchez', 'Calle Sol 789', '934567890'),
(4, 'Ana Torres', 'Av. Central 321', '956789012'),
(5, 'Pedro Gómez', 'Jr. Las Flores 654', '945612378'),
(6, 'Luis Fernández', 'Av. Grau 432', '987123456'),
(7, 'Laura Castillo', 'Jr. Libertad 777', '934111222'),
(8, 'Sofía Rojas', 'Av. Progreso 555', '956333444'),
(9, 'Miguel Díaz', 'Calle Lima 888', '945999000'),
(10, 'Gabriela Ruiz', 'Av. Puno 999', '923888777'),
(11, 'Hugo Morales', 'Jr. Andahuaylas 100', '987111222'),
(12, 'Verónica Silva', 'Av. América 432', '933444555'),
(13, 'Fernando Chávez', 'Calle Cusco 654', '912666777'),
(14, 'Valeria Mendoza', 'Jr. Los Incas 876', '956222111'),
(15, 'Ricardo Castro', 'Av. Colonial 111', '945333888'),
(16, 'Daniela Vega', 'Calle Trujillo 999', '934222666'),
(17, 'Manuel Ramos', 'Jr. Moquegua 432', '987555444'),
(18, 'Patricia Aguilar', 'Av. Arequipa 654', '923111999'),
(19, 'Oscar Romero', 'Calle Huancayo 333', '945888111'),
(20, 'Lucía Campos', 'Jr. Ayacucho 876', '956999333'),
(21, 'Andrés Herrera', 'Av. Amazonas 222', '987000555'),
(22, 'Claudia Paredes', 'Calle Surco 111', '934777888'),
(23, 'Roberto Salazar', 'Jr. Tacna 654', '923555000'),
(24, 'Natalia Vargas', 'Av. Lurigancho 765', '945222444'),
(25, 'Francisco Gutiérrez', 'Calle Callao 222', '956111888'),
(26, 'Camila León', 'Av. La Molina 543', '987444777'),
(27, 'Diego Ortega', 'Jr. Miraflores 111', '934999111'),
(28, 'Elena Cruz', 'Calle Rimac 876', '923888222'),
(29, 'Jorge Navarro', 'Av. Chorrillos 321', '945666999'),
(30, 'Mónica Flores', 'Jr. San Juan 456', '956555777'),
(31, 'Martín Medina', 'Av. Ate 987', '987222111'),
(32, 'Paola Castañeda', 'Calle Breña 654', '934333666'),
(33, 'Eduardo Torres', 'Jr. Pueblo Libre 111', '923444222'),
(34, 'Alejandra Ríos', 'Av. Jesús María 999', '945000888'),
(35, 'Felipe Lozano', 'Calle Surquillo 543', '956123987'),
(36, 'Rosa Carrillo', 'Jr. Magdalena 876', '987654987'),
(37, 'Tomás Guevara', 'Av. San Borja 432', '934321654'),
(38, 'Isabel Peña', 'Calle Barranco 654', '923111654'),
(39, 'Cristian Molina', 'Jr. Comas 777', '945777333'),
(40, 'Angela Delgado', 'Av. Villa María 876', '956444555'),
(41, 'Sebastián Campos', 'Calle Carabayllo 222', '987888222'),
(42, 'Estefanía Soto', 'Jr. Surquillo 123', '934555111'),
(43, 'Héctor Rivas', 'Av. San Martín 987', '923666888'),
(44, 'Carmen Palacios', 'Calle Jesús María 111', '945222999'),
(45, 'Rodrigo Valdez', 'Av. Breña 654', '956333222'),
(46, 'Natalie Acosta', 'Jr. Magdalena 999', '987777444'),
(47, 'Iván Córdova', 'Calle Pueblo Libre 543', '934111777'),
(48, 'Silvia Cornejo', 'Av. Lince 765', '923999000'),
(49, 'Mauricio Cabrera', 'Calle San Miguel 321', '945444222'),
(50, 'Andrea Hurtado', 'Jr. Rimac 987', '956555111'),
(51, 'Raúl Suárez', 'Av. La Victoria 654', '987000222'),
(52, 'Liliana Hidalgo', 'Calle El Agustino 876', '934888333'),
(53, 'Enrique Bravo', 'Jr. Independencia 765', '923111222'),
(54, 'Marisol Soto', 'Av. Villa El Salvador 987', '945333111'),
(55, 'Cristina Méndez', 'Calle San Juan 543', '956999444'),
(56, 'Álvaro Ponce', 'Jr. Ate 222', '987555000'),
(57, 'Lorena Morales', 'Av. Santa Anita 654', '934888111'),
(58, 'Gonzalo Varela', 'Calle Callao 999', '923777444'),
(59, 'Yesenia Torres', 'Jr. Lurín 876', '945999333'),
(60, 'Víctor Castillo', 'Av. Pachacamac 111', '956000111'),
(61, 'Jimena Pizarro', 'Calle Cieneguilla 654', '987111333'),
(62, 'Arturo Quispe', 'Jr. San Isidro 432', '934999444'),
(63, 'Marina Cabrera', 'Av. San Luis 987', '923444555'),
(64, 'Pablo Ramírez', 'Calle Lurigancho 222', '945555000'),
(65, 'Fabiola Calderón', 'Jr. Chaclacayo 876', '956777222'),
(66, 'Alejandro Bustamante', 'Av. Surco 654', '987888555'),
(67, 'Melanie Chávez', 'Calle Miraflores 321', '934555333'),
(68, 'Hernán Pizarro', 'Jr. Lima 987', '923888666'),
(69, 'Diana Romero', 'Av. Callao 876', '945333555'),
(70, 'Marcos Villanueva', 'Calle Cusco 222', '956222555'),
(71, 'Daniel Huamán', 'Jr. Piura 654', '987111888'),
(72, 'Juliana Lozano', 'Av. Arequipa 987', '934666555'),
(73, 'Óscar Guzmán', 'Calle Tacna 432', '923444111'),
(74, 'Fiorella Mejía', 'Jr. Puno 876', '945888222'),
(75, 'Samuel León', 'Av. Ica 765', '956111333'),
(76, 'Pamela Aguirre', 'Calle Moquegua 111', '987333222'),
(77, 'Renato Alarcón', 'Jr. Trujillo 543', '934555666'),
(78, 'Nadia Espinoza', 'Av. Lambayeque 876', '923777222'),
(79, 'Julián Cornejo', 'Calle Cajamarca 321', '945666000'),
(80, 'Brenda Carranza', 'Jr. Chiclayo 654', '956444000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `idDetalles` int(11) NOT NULL,
  `idFactura` int(11) NOT NULL,
  `idProductos` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`idDetalles`, `idFactura`, `idProductos`, `Cantidad`, `Total`) VALUES
(1, 1, 1, 2, 11.00),
(2, 2, 5, 1, 12.00),
(3, 3, 10, 3, 12.90),
(4, 4, 15, 2, 40.00),
(5, 5, 20, 1, 11.00),
(6, 6, 25, 4, 49.20),
(7, 7, 30, 2, 6.20),
(8, 8, 35, 1, 8.50),
(9, 9, 40, 5, 15.50),
(10, 10, 45, 3, 58.50),
(11, 11, 50, 2, 9.00),
(12, 12, 55, 1, 12.00),
(13, 13, 60, 2, 11.40),
(14, 14, 65, 3, 23.40),
(15, 15, 70, 1, 7.00),
(16, 16, 75, 4, 44.00),
(17, 17, 80, 2, 22.00),
(18, 18, 2, 1, 3.00),
(19, 19, 6, 2, 21.00),
(20, 20, 12, 3, 10.50),
(21, 21, 18, 1, 6.90),
(22, 22, 24, 2, 48.00),
(23, 23, 28, 4, 39.60),
(24, 24, 34, 3, 18.00),
(25, 25, 38, 2, 5.60),
(26, 26, 44, 1, 22.00),
(27, 27, 48, 2, 9.00),
(28, 28, 52, 3, 36.00),
(29, 29, 58, 2, 38.00),
(30, 30, 64, 1, 44.90),
(31, 31, 3, 2, 17.80),
(32, 32, 7, 3, 23.70),
(33, 33, 13, 1, 15.00),
(34, 34, 19, 2, 14.40),
(35, 35, 23, 3, 58.50),
(36, 36, 27, 1, 5.80),
(37, 37, 33, 2, 12.00),
(38, 38, 37, 4, 8.80),
(39, 39, 41, 2, 37.80),
(40, 40, 47, 1, 33.20),
(41, 41, 53, 3, 36.00),
(42, 42, 59, 2, 38.00),
(43, 43, 4, 1, 2.50),
(44, 44, 8, 5, 7.50),
(45, 45, 14, 3, 56.70),
(46, 46, 22, 2, 33.60),
(47, 47, 26, 1, 19.50),
(48, 48, 32, 2, 12.00),
(49, 49, 36, 4, 36.80),
(50, 50, 42, 1, 56.70),
(51, 51, 46, 3, 88.20),
(52, 52, 54, 2, 58.80),
(53, 53, 60, 1, 55.40),
(54, 54, 66, 2, 36.40),
(55, 55, 72, 3, 110.70),
(56, 56, 78, 2, 46.80),
(57, 57, 1, 1, 5.50),
(58, 58, 6, 2, 21.00),
(59, 59, 11, 3, 21.60),
(60, 60, 16, 2, 11.20),
(61, 61, 21, 1, 22.50),
(62, 62, 29, 2, 6.20),
(63, 63, 39, 3, 236.70),
(64, 64, 49, 2, 164.20),
(65, 65, 57, 1, 16.00),
(66, 66, 63, 4, 120.80),
(67, 67, 69, 3, 223.80),
(68, 68, 75, 2, 62.40),
(69, 69, 2, 1, 3.00),
(70, 70, 8, 2, 3.00),
(71, 71, 19, 3, 21.60),
(72, 72, 27, 2, 11.60),
(73, 73, 35, 1, 9.20),
(74, 74, 43, 2, 44.00),
(75, 75, 51, 3, 13.50),
(76, 76, 61, 2, 136.20),
(77, 77, 71, 4, 89.20),
(78, 78, 79, 1, 10.20),
(79, 79, 9, 3, 18.60),
(80, 80, 17, 2, 13.80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idFactura`, `idCliente`, `Fecha`, `Total`) VALUES
(1, 1, '2025-09-01', 45.50),
(2, 2, '2025-09-01', 23.40),
(3, 3, '2025-09-02', 12.00),
(4, 4, '2025-09-02', 89.90),
(5, 5, '2025-09-03', 34.20),
(6, 6, '2025-09-03', 54.30),
(7, 7, '2025-09-04', 27.80),
(8, 8, '2025-09-04', 63.50),
(9, 9, '2025-09-05', 18.20),
(10, 10, '2025-09-05', 22.50),
(11, 11, '2025-09-06', 72.40),
(12, 12, '2025-09-06', 35.00),
(13, 13, '2025-09-07', 90.10),
(14, 14, '2025-09-07', 45.30),
(15, 15, '2025-09-08', 12.50),
(16, 16, '2025-09-08', 19.90),
(17, 17, '2025-09-09', 25.70),
(18, 18, '2025-09-09', 61.40),
(19, 19, '2025-09-10', 14.60),
(20, 20, '2025-09-10', 39.90),
(21, 21, '2025-09-11', 59.20),
(22, 22, '2025-09-11', 41.00),
(23, 23, '2025-09-12', 73.50),
(24, 24, '2025-09-12', 22.70),
(25, 25, '2025-09-13', 65.30),
(26, 26, '2025-09-13', 19.40),
(27, 27, '2025-09-14', 36.90),
(28, 28, '2025-09-14', 47.20),
(29, 29, '2025-09-15', 21.30),
(30, 30, '2025-09-15', 33.80),
(31, 31, '2025-09-16', 28.90),
(32, 32, '2025-09-16', 52.40),
(33, 33, '2025-09-17', 66.10),
(34, 34, '2025-09-17', 17.20),
(35, 35, '2025-09-18', 44.60),
(36, 36, '2025-09-18', 20.10),
(37, 37, '2025-09-19', 27.50),
(38, 38, '2025-09-19', 34.80),
(39, 39, '2025-09-20', 78.90),
(40, 40, '2025-09-20', 42.60),
(41, 41, '2025-09-21', 23.50),
(42, 42, '2025-09-21', 56.70),
(43, 43, '2025-09-22', 38.20),
(44, 44, '2025-09-22', 61.90),
(45, 45, '2025-09-23', 19.80),
(46, 46, '2025-09-23', 29.40),
(47, 47, '2025-09-24', 33.20),
(48, 48, '2025-09-24', 71.50),
(49, 49, '2025-09-25', 82.10),
(50, 50, '2025-09-25', 26.30),
(51, 51, '2025-09-26', 35.80),
(52, 52, '2025-09-26', 18.70),
(53, 53, '2025-09-27', 29.50),
(54, 54, '2025-09-27', 64.40),
(55, 55, '2025-09-28', 77.20),
(56, 56, '2025-09-28', 40.30),
(57, 57, '2025-09-29', 14.50),
(58, 58, '2025-09-29', 25.90),
(59, 59, '2025-09-30', 32.70),
(60, 60, '2025-09-30', 55.40),
(61, 61, '2025-10-01', 68.10),
(62, 62, '2025-10-01', 20.60),
(63, 63, '2025-10-02', 30.20),
(64, 64, '2025-10-02', 44.90),
(65, 65, '2025-10-03', 59.30),
(66, 66, '2025-10-03', 18.20),
(67, 67, '2025-10-04', 26.70),
(68, 68, '2025-10-04', 38.50),
(69, 69, '2025-10-05', 74.60),
(70, 70, '2025-10-05', 41.20),
(71, 71, '2025-10-06', 22.30),
(72, 72, '2025-10-06', 36.90),
(73, 73, '2025-10-07', 19.40),
(74, 74, '2025-10-07', 28.60),
(75, 75, '2025-10-08', 31.20),
(76, 76, '2025-10-08', 52.70),
(77, 77, '2025-10-09', 67.90),
(78, 78, '2025-10-09', 23.40),
(79, 79, '2025-10-10', 39.10),
(80, 80, '2025-10-10', 58.20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL,
  `PrecioVenta` decimal(10,2) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `PrecioVenta`, `Nombre`) VALUES
(1, 5.50, 'Coca Cola 500ml'),
(2, 3.00, 'Agua Mineral 600ml'),
(3, 8.90, 'Panetón Donofrio 1kg'),
(4, 2.50, 'Galletas Oreo 6u'),
(5, 12.00, 'Arroz Costeño 5kg'),
(6, 10.50, 'Azúcar Rubia 5kg'),
(7, 7.90, 'Aceite Primor 1L'),
(8, 1.50, 'Caramelo Sublime'),
(9, 6.20, 'Fideos Don Vittorio 1kg'),
(10, 4.30, 'Leche Gloria 400ml'),
(11, 2.80, 'Cerveza Pilsen 355ml'),
(12, 3.50, 'Cerveza Cusqueña 330ml'),
(13, 15.00, 'Caja de Té 100u'),
(14, 18.90, 'Café Altomayo 250g'),
(15, 20.00, 'Café Nescafé 200g'),
(16, 5.60, 'Pan Molde Bimbo'),
(17, 6.90, 'Mantequilla Laive 200g'),
(18, 9.50, 'Queso Fresco 500g'),
(19, 7.20, 'Jamón de Pavo 250g'),
(20, 11.00, 'Salchicha Hotdog 500g'),
(21, 22.50, 'Pollo Entero 1.5kg'),
(22, 16.80, 'Carne Molida 1kg'),
(23, 19.50, 'Bistec de Res 1kg'),
(24, 24.00, 'Pescado Bonito 1kg'),
(25, 12.30, 'Atún Florida 170g'),
(26, 4.20, 'Mermelada Fresa 200g'),
(27, 5.80, 'Mermelada Durazno 200g'),
(28, 9.90, 'Miel de Abeja 250g'),
(29, 3.10, 'Ketchup Heinz 200g'),
(30, 4.00, 'Mostaza Alacena 200g'),
(31, 2.70, 'Mayonesa Alacena 200g'),
(32, 6.00, 'Yogurt Gloria Fresa 1L'),
(33, 6.00, 'Yogurt Gloria Durazno 1L'),
(34, 6.00, 'Yogurt Gloria Natural 1L'),
(35, 8.50, 'Helado D’Onofrio 1L'),
(36, 9.20, 'Helado Morochas 1L'),
(37, 2.40, 'Chicle Trident 12u'),
(38, 2.20, 'Chocolate Sublime 30g'),
(39, 2.80, 'Chocolate Princesa 30g'),
(40, 3.10, 'Chocolate Triángulo 30g'),
(41, 2.60, 'Cereal Zucaritas 30g'),
(42, 18.90, 'Cereal Zucaritas 500g'),
(43, 20.50, 'Cereal Corn Flakes 500g'),
(44, 22.00, 'Cereal Angel 500g'),
(45, 19.50, 'Cereal Quaker Avena 1kg'),
(46, 6.50, 'Harina Blanca Flor 1kg'),
(47, 6.80, 'Harina Pan 1kg'),
(48, 7.20, 'Maicena Universal 400g'),
(49, 8.10, 'Sémola Don Vittorio 500g'),
(50, 9.50, 'Pizza Familiar Donofrio'),
(51, 5.90, 'Sal Rosada 1kg'),
(52, 2.30, 'Sal Yodada 1kg'),
(53, 4.50, 'Vinagre Blanco 500ml'),
(54, 3.70, 'Vinagre Tinto 500ml'),
(55, 12.00, 'Salsa de Soya 1L'),
(56, 10.50, 'Salsa de Ostión 500ml'),
(57, 14.30, 'Salsa de Ostra 500ml'),
(58, 16.00, 'Salsa de Tamarindo 500ml'),
(59, 18.50, 'Aceitunas Verdes 500g'),
(60, 19.00, 'Aceitunas Negras 500g'),
(61, 11.50, 'Champiñones 250g'),
(62, 8.90, 'Pimientos 250g'),
(63, 6.40, 'Cebolla Roja 1kg'),
(64, 5.70, 'Papas Blancas 1kg'),
(65, 7.80, 'Camote Amarillo 1kg'),
(66, 9.20, 'Zanahoria 1kg'),
(67, 3.40, 'Tomate 1kg'),
(68, 4.10, 'Pepino 1kg'),
(69, 6.30, 'Lechuga 1kg'),
(70, 7.10, 'Espinaca 1kg'),
(71, 6.90, 'Apio 1kg'),
(72, 3.90, 'Rabanito 500g'),
(73, 4.70, 'Brócoli 500g'),
(74, 5.60, 'Coliflor 500g'),
(75, 7.80, 'Zapallo Macre 1kg'),
(76, 8.50, 'Calabacín 1kg'),
(77, 6.20, 'Berenjena 1kg'),
(78, 5.50, 'Sandía 1kg'),
(79, 7.00, 'Melón 1kg'),
(80, 6.90, 'Mandarina 1kg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`idDetalles`),
  ADD KEY `idFactura` (`idFactura`),
  ADD KEY `idProductos` (`idProductos`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `idDetalles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idFactura`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`idProductos`) REFERENCES `productos` (`idProductos`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
