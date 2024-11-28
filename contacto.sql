-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2024 a las 17:28:37
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
-- Base de datos: `contacto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `fecha_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `nombre`, `correo`, `telefono`, `mensaje`, `fecha_envio`) VALUES
(1, 'Eduardo', 'ejosuemedinav980@gmail.com', '3315322991', 'Hola', '2024-10-11 02:29:47'),
(2, 'Eduardo', 'ejosuemedinav980@gmail.com', '3315322991', 'Hola', '2024-10-11 02:36:24'),
(3, 'Eduardo', 'ejosuemedinav23@gmail.com', '3315322991', 'Hola', '2024-10-11 02:39:53'),
(4, 'Eduardo', 'ejosuemedinav23@gmail.com', '3315322991', 'testing testing', '2024-10-11 02:41:37'),
(5, 'Eduardo Medina', 'ejosuemedinav23@gmail.com', '3315322991', 'Testing Testing', '2024-10-11 02:46:02'),
(6, 'Eduardo', 'ejosuemedinav980@gmail.com', '3315322991', 'Holaaa', '2024-10-11 02:52:33'),
(7, 'Eduardo', 'ejosuemedinav980@gmail.com', '3315322991', 'Holaaa', '2024-10-11 02:53:39'),
(8, 'Eduardo', 'ejosuemedinav23@gmail.com', '3315322991', 'Holas', '2024-10-11 02:57:25'),
(9, 'Eduardo Medina', 'ejosuemedinav23@gmail.com', '3315322991', 'Testing Testin Testing', '2024-10-11 04:10:33'),
(10, 'Eduardo Medina', 'ejosuemedinav23@gmail.com', '3315322991', 'Testing Testin Testing', '2024-10-11 04:11:56'),
(11, 'Eduardo', 'ejosuemedinav980@gmail.com', '3315322991', 'Probando probando', '2024-10-11 14:47:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
