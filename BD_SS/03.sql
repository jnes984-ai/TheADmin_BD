-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2025 a las 07:25:39
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `03`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia_funionamiento`
--

CREATE TABLE `licencia_funionamiento` (
  `NRO_LICENCIA` char(6) NOT NULL,
  `FECHA_EMISION` datetime DEFAULT NULL,
  `FECHA_VENCIMIENTO` datetime DEFAULT NULL,
  `NRO_DECRETO_ALCALDIA` char(6) DEFAULT NULL,
  `ACTIVIDAD` varchar(30) DEFAULT NULL,
  `REPRESENTANTE_LEGAL` varchar(30) DEFAULT NULL,
  `NRO_NEGOCIO` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocio`
--

CREATE TABLE `negocio` (
  `NRO_NEGOCIO` char(6) NOT NULL,
  `RAZON_SOCIAL` varchar(30) DEFAULT NULL,
  `DIRECCION` varchar(30) DEFAULT NULL,
  `FECHA_REGISTRO` datetime DEFAULT NULL,
  `CAPACIDAD` int(11) DEFAULT NULL,
  `TIPO_ACCESO` varchar(30) DEFAULT NULL,
  `NRO_LOTE` int(11) DEFAULT NULL,
  `COD_TIPO_NEG` char(6) NOT NULL,
  `COD_PLANO` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocio_x_propietario`
--

CREATE TABLE `negocio_x_propietario` (
  `NOMBRE_PROP` varchar(30) DEFAULT NULL,
  `APELLIDOS_PROP` varchar(30) DEFAULT NULL,
  `RAZON_SOCIAL` varchar(30) DEFAULT NULL,
  `COD_PROPIETARIO` char(6) NOT NULL,
  `NRO_NEGOCIO` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_impuestos`
--

CREATE TABLE `pago_impuestos` (
  `NRO_PAGO` char(6) NOT NULL,
  `FECHA_PAGO` datetime DEFAULT NULL,
  `CONCEPTO` varchar(30) DEFAULT NULL,
  `MONTO_PAGO` decimal(19,4) DEFAULT NULL,
  `PERDIODO_PREDIAL` varchar(30) DEFAULT NULL,
  `MULTA` decimal(19,4) DEFAULT NULL,
  `DESCUENTO` decimal(19,4) DEFAULT NULL,
  `TOTAL_PAGO` char(18) DEFAULT NULL,
  `COD_PROPIETARIO` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plano_ciudad`
--

CREATE TABLE `plano_ciudad` (
  `COD_PLANO` char(6) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `ZONIFICACION` varchar(30) DEFAULT NULL,
  `LONGITUD` int(11) DEFAULT NULL,
  `NRO_CUADRAS` int(11) DEFAULT NULL,
  `COD_TIPO_PLANO` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predios`
--

CREATE TABLE `predios` (
  `NRO_PREDIO` char(6) NOT NULL,
  `TIPO_PREDIO` varchar(30) DEFAULT NULL,
  `CATEGORIZACION` varchar(30) DEFAULT NULL,
  `PISOS` int(11) DEFAULT NULL,
  `FECHA_CONSTRUCCION` datetime DEFAULT NULL,
  `FECHA_REGISTRO` datetime DEFAULT NULL,
  `DIRECCION` varchar(30) DEFAULT NULL,
  `EXTENSION` char(18) DEFAULT NULL,
  `MATERIAL` char(18) DEFAULT NULL,
  `NRO_REGISTRO` char(6) DEFAULT NULL,
  `NUM_PREDIO` char(6) DEFAULT NULL,
  `COD_PLANO` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predios_x_propietarios`
--

CREATE TABLE `predios_x_propietarios` (
  `NOMBRE_PROP` varchar(30) DEFAULT NULL,
  `APELLIDOS_PROP` varchar(30) DEFAULT NULL,
  `PORC_TITULARIDAD` int(11) DEFAULT NULL,
  `NRO_PREDIO` char(6) NOT NULL,
  `COD_PROPIETARIO` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE `propietarios` (
  `COD_PROPIETARIO` char(6) NOT NULL,
  `NOMBRE_PROP` varchar(30) DEFAULT NULL,
  `APELLIDOS_PROP` varchar(30) DEFAULT NULL,
  `DNI_PROP` char(8) DEFAULT NULL,
  `TELEF_REF` varchar(12) DEFAULT NULL,
  `RUC_PROP` char(11) DEFAULT NULL,
  `EDAD_PROP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_morosos`
--

CREATE TABLE `registro_morosos` (
  `NRO_REG_MOROSOS` char(6) NOT NULL,
  `FECHA_REGISTRO` datetime DEFAULT NULL,
  `MOTIVO_MOROSIDAD` varchar(30) DEFAULT NULL,
  `MONTO_DEUDA` decimal(19,4) DEFAULT NULL,
  `SITUACION` char(18) DEFAULT NULL,
  `PERIODO_ADEUDADO` char(18) DEFAULT NULL,
  `COD_PROPIETARIO` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_negocio`
--

CREATE TABLE `tipo_negocio` (
  `COD_TIPO_NEG` char(6) NOT NULL,
  `DENOMINACION` varchar(30) DEFAULT NULL,
  `RUBRO_GENERAL` varchar(30) DEFAULT NULL,
  `PORC_IMPUESTO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_planos`
--

CREATE TABLE `tipo_planos` (
  `COD_TIPO_PLANO` char(6) NOT NULL,
  `DENOMINACION_PLANO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `licencia_funionamiento`
--
ALTER TABLE `licencia_funionamiento`
  ADD PRIMARY KEY (`NRO_LICENCIA`),
  ADD KEY `R_8` (`NRO_NEGOCIO`);

--
-- Indices de la tabla `negocio`
--
ALTER TABLE `negocio`
  ADD PRIMARY KEY (`NRO_NEGOCIO`),
  ADD KEY `R_7` (`COD_TIPO_NEG`),
  ADD KEY `R_10` (`COD_PLANO`);

--
-- Indices de la tabla `negocio_x_propietario`
--
ALTER TABLE `negocio_x_propietario`
  ADD PRIMARY KEY (`COD_PROPIETARIO`,`NRO_NEGOCIO`),
  ADD KEY `R_6` (`NRO_NEGOCIO`);

--
-- Indices de la tabla `pago_impuestos`
--
ALTER TABLE `pago_impuestos`
  ADD PRIMARY KEY (`NRO_PAGO`),
  ADD KEY `R_5` (`COD_PROPIETARIO`);

--
-- Indices de la tabla `plano_ciudad`
--
ALTER TABLE `plano_ciudad`
  ADD PRIMARY KEY (`COD_PLANO`),
  ADD KEY `R_11` (`COD_TIPO_PLANO`);

--
-- Indices de la tabla `predios`
--
ALTER TABLE `predios`
  ADD PRIMARY KEY (`NRO_PREDIO`),
  ADD KEY `R_9` (`COD_PLANO`);

--
-- Indices de la tabla `predios_x_propietarios`
--
ALTER TABLE `predios_x_propietarios`
  ADD PRIMARY KEY (`NRO_PREDIO`,`COD_PROPIETARIO`),
  ADD KEY `R_2` (`COD_PROPIETARIO`);

--
-- Indices de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`COD_PROPIETARIO`);

--
-- Indices de la tabla `registro_morosos`
--
ALTER TABLE `registro_morosos`
  ADD PRIMARY KEY (`NRO_REG_MOROSOS`),
  ADD KEY `R_4` (`COD_PROPIETARIO`);

--
-- Indices de la tabla `tipo_negocio`
--
ALTER TABLE `tipo_negocio`
  ADD PRIMARY KEY (`COD_TIPO_NEG`);

--
-- Indices de la tabla `tipo_planos`
--
ALTER TABLE `tipo_planos`
  ADD PRIMARY KEY (`COD_TIPO_PLANO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `licencia_funionamiento`
--
ALTER TABLE `licencia_funionamiento`
  ADD CONSTRAINT `R_8` FOREIGN KEY (`NRO_NEGOCIO`) REFERENCES `negocio` (`NRO_NEGOCIO`);

--
-- Filtros para la tabla `negocio`
--
ALTER TABLE `negocio`
  ADD CONSTRAINT `R_10` FOREIGN KEY (`COD_PLANO`) REFERENCES `plano_ciudad` (`COD_PLANO`),
  ADD CONSTRAINT `R_7` FOREIGN KEY (`COD_TIPO_NEG`) REFERENCES `tipo_negocio` (`COD_TIPO_NEG`);

--
-- Filtros para la tabla `negocio_x_propietario`
--
ALTER TABLE `negocio_x_propietario`
  ADD CONSTRAINT `R_3` FOREIGN KEY (`COD_PROPIETARIO`) REFERENCES `propietarios` (`COD_PROPIETARIO`),
  ADD CONSTRAINT `R_6` FOREIGN KEY (`NRO_NEGOCIO`) REFERENCES `negocio` (`NRO_NEGOCIO`);

--
-- Filtros para la tabla `pago_impuestos`
--
ALTER TABLE `pago_impuestos`
  ADD CONSTRAINT `R_5` FOREIGN KEY (`COD_PROPIETARIO`) REFERENCES `propietarios` (`COD_PROPIETARIO`);

--
-- Filtros para la tabla `plano_ciudad`
--
ALTER TABLE `plano_ciudad`
  ADD CONSTRAINT `R_11` FOREIGN KEY (`COD_TIPO_PLANO`) REFERENCES `tipo_planos` (`COD_TIPO_PLANO`);

--
-- Filtros para la tabla `predios`
--
ALTER TABLE `predios`
  ADD CONSTRAINT `R_9` FOREIGN KEY (`COD_PLANO`) REFERENCES `plano_ciudad` (`COD_PLANO`);

--
-- Filtros para la tabla `predios_x_propietarios`
--
ALTER TABLE `predios_x_propietarios`
  ADD CONSTRAINT `R_1` FOREIGN KEY (`NRO_PREDIO`) REFERENCES `predios` (`NRO_PREDIO`),
  ADD CONSTRAINT `R_2` FOREIGN KEY (`COD_PROPIETARIO`) REFERENCES `propietarios` (`COD_PROPIETARIO`);

--
-- Filtros para la tabla `registro_morosos`
--
ALTER TABLE `registro_morosos`
  ADD CONSTRAINT `R_4` FOREIGN KEY (`COD_PROPIETARIO`) REFERENCES `propietarios` (`COD_PROPIETARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
