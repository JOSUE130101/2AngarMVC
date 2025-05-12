-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2025 a las 23:18:55
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
-- Base de datos: `2proyectomvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviones`
--

CREATE TABLE `aviones` (
  `avion_id` int(11) NOT NULL,
  `avion_nombre` varchar(50) NOT NULL,
  `avion_marca` varchar(50) NOT NULL,
  `avion_placa` varchar(50) NOT NULL,
  `avion_aerolinea` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `aviones`
--

INSERT INTO `aviones` (`avion_id`, `avion_nombre`, `avion_marca`, `avion_placa`, `avion_aerolinea`, `cantidad`) VALUES
(1, 'Boeing 737-800', 'Boeing', 'N123AB', 'American Airlines', 5),
(2, 'Airbus A320-200', 'Airbus', 'F-GHJK', 'Air France', 3),
(3, 'Embraer E190', 'Embraer', 'PT-XYZ', 'Azul Linhas Aéreas', 2),
(4, 'Bombardier CRJ900', 'Bombardier', 'C-FGHI', 'Delta Connection', 4),
(5, 'ATR 72-600', 'ATR', 'EI-ABC', 'Aer Lingus Regional', 6),
(6, 'Boeing 787 Dreamliner', 'Boeing', 'JA822J', 'Japan Airlines', 8),
(7, 'Airbus A380', 'Airbus', 'A6-EAP', 'Emirates', 12),
(8, 'Cessna 172', 'Cessna', 'N345LM', 'Flight School', 15),
(9, 'Gulfstream G650', 'Gulfstream', 'N789GS', 'Private Charter', 2),
(10, 'Antonov An-225 Mriya', 'Antonov', 'UR-82060', 'Antonov Airlines', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aviones`
--
ALTER TABLE `aviones`
  ADD PRIMARY KEY (`avion_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aviones`
--
ALTER TABLE `aviones`
  MODIFY `avion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
