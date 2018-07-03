-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2018 a las 14:30:09
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `callcenterregistrollamadas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ozpbxcalls`
--

CREATE TABLE `ozpbxcalls` (
  `id` int(11) NOT NULL,
  `starttime` datetime DEFAULT NULL,
  `source` varchar(150) DEFAULT NULL,
  `callerid` varchar(150) DEFAULT NULL,
  `dialed` varchar(150) DEFAULT NULL,
  `destination` varchar(150) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `callstate` varchar(150) DEFAULT NULL,
  `recordurl` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ozpbxcalls`
--

INSERT INTO `ozpbxcalls` (`id`, `starttime`, `source`, `callerid`, `dialed`, `destination`, `duration`, `callstate`, `recordurl`) VALUES
(55, '2018-05-28 23:10:06', '1002', '1002', '1001', '1001', 11, 'CallerHungUp', ''),
(56, '2018-05-28 23:14:12', '1001', '1001', '1002', '1002', 13, 'CallerHungUp', ''),
(57, '2018-06-07 17:51:46', '1002', '1002', '1001', '1001', 0, 'CallerHungUp', ''),
(58, '2018-06-07 17:52:29', '1001', '1001', '1002', '1002', 32, 'CallerHungUp', ''),
(59, '2018-06-07 18:10:41', '1000', '1000', '1002', '1002', 0, 'Cancelled', ''),
(60, '2018-06-07 19:03:15', '1002', '1002', '1001', '1001', 0, 'Cancelled', ''),
(61, '2018-06-07 19:04:47', '1002', '1002', '1001', '1001', 3, 'CallerHungUp', ''),
(62, '2018-06-07 19:05:01', '1001', '1001', '1002', '1002', 0, 'Cancelled', ''),
(63, '2018-06-07 19:13:40', '1002', '1002', '1002', '1002', 0, 'NotFound', ''),
(64, '2018-06-07 19:14:02', '1002', '1002', '1001', '1001', 12, 'CallerHungUp', ''),
(65, '2018-06-07 20:24:03', '1002', '1002', '1001', '1001', 21, 'CalleeHungUp', ''),
(66, '2018-06-07 20:24:32', '1002', '1002', '1001', '1001', 21, 'CalleeHungUp', ''),
(67, '2018-06-07 20:24:47', '1001', '1001', '1002', '1002', 0, 'Cancelled', ''),
(68, '2018-06-07 20:25:16', '1001', '1001', '1002', '1002', 0, 'Cancelled', ''),
(69, '2018-06-07 20:27:28', '1001', '1001', '1002', '1002', 0, 'Cancelled', ''),
(70, '2018-06-07 20:29:43', '1002', '1002', '1001', '1001', 6, 'CallerHungUp', ''),
(71, '2018-06-07 21:09:44', '1001', '1001', '1001', '1001', 0, 'NotFound', ''),
(72, '2018-06-07 21:10:57', '1002', '1002', '1001', '1001', 15, 'CallerHungUp', ''),
(73, '2018-06-07 21:50:03', '1002', '1002', '1001', '1001', 16, 'CallerHungUp', ''),
(74, '2018-06-07 22:14:27', '1002', '1002', '1001', '1001', 2, 'CallerHungUp', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ozpbxcalls`
--
ALTER TABLE `ozpbxcalls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ozpbxcalls`
--
ALTER TABLE `ozpbxcalls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
