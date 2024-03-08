-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-03-2024 a las 23:40:19
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
-- Base de datos: `facebook`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `nombre`, `password`, `fecha_nacimiento`) VALUES
(2, 'david@example.com', 'David Smith', '25d55ad283aa400af464c76d713c07ad', '1986-11-25'),
(3, 'linda@example.com', 'Linda Brown', '25d55ad283aa400af464c76d713c07ad', '1979-02-03'),
(4, 'michael@example.com', 'Michael Miller', '25d55ad283aa400af464c76d713c07ad', '1996-04-21'),
(5, 'susan@example.com', 'Susan Davis', '25d55ad283aa400af464c76d713c07ad', '1983-01-12'),
(6, 'john@example.com', 'John Wilson', '25d55ad283aa400af464c76d713c07ad', '1974-06-29'),
(7, 'amy@example.com', 'Amy Taylor', '25d55ad283aa400af464c76d713c07ad', '1999-10-07'),
(9, 'patricia@example.com', 'Patricia Martinez', '25d55ad283aa400af464c76d713c07ad', '1977-07-26'),
(10, 'chris@example.com', 'Christopher White', '25d55ad283aa400af464c76d713c07ad', '1991-03-04'),
(11, 'alex@example.com', 'Alex Johnson', '25d55ad283aa400af464c76d713c07ad', '1984-09-02'),
(12, 'karen@example.com', 'Jennifer Smith', '25d55ad283aa400af464c76d713c07ad', '1975-05-20'),
(13, 'paul@example.com', 'Paul Brown', '25d55ad283aa400af464c76d713c07ad', '1992-08-08'),
(14, 'amanda@example.com', 'Amanda Miller', '25d55ad283aa400af464c76d713c07ad', '1978-11-16'),
(15, 'robert@example.com', 'Robert Davis', '25d55ad283aa400af464c76d713c07ad', '1995-06-27'),
(16, 'michelle@example.com', 'Michelle Wilson', '25d55ad283aa400af464c76d713c07ad', '1980-04-05'),
(17, 'william@example.com', 'William Taylor', '25d55ad283aa400af464c76d713c07ad', '1997-02-13'),
(20, 'mary@example.com', 'Mary White', '25d55ad283aa400af464c76d713c07ad', '1993-01-07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
