-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-01-2022 a las 01:51:53
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fotosdenuestrosgatos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220124122450', '2022-01-24 13:25:04', 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `photo`
--

INSERT INTO `photo` (`id`, `file_name`, `description`) VALUES
(6, 'cat2-61eea1457d92f.jpg', 'Subida de Prueba'),
(7, 'cat3-61eea17d66473.jpg', 'Subida de Prueba'),
(8, 'cat4-61eea1ad4feac.jpg', 'Subida de prueba'),
(9, 'cat-61eea1eb5d8fa.jpg', 'Subida de prueba'),
(10, 'cat2-61eea24294573.jpg', 'Subida de prueba'),
(11, 'cat3-61eea246b2bb5.jpg', 'Subida de prueba'),
(12, 'cat4-61eea249c8aba.jpg', 'Subida de prueba'),
(13, 'cat-61eea24c25f07.jpg', 'Subida de prueba'),
(14, 'cat2-61eea24ee7ecf.jpg', 'Subida de prueba'),
(15, 'cat3-61eea251cce7e.jpg', 'Subida de prueba'),
(16, 'cat4-61eea254c10b7.jpg', 'Subida de prueba'),
(17, 'cat-61eea2591500e.jpg', 'Subida de prueba'),
(18, 'cat2-61eea341113c8.jpg', 'Subida de prueba'),
(19, 'cat3-61eea35783cfe.jpg', 'Subida de prueba'),
(20, 'cat4-61eea389d577b.jpg', 'Subida de prueba'),
(21, 'cat-61eea47658511.jpg', 'Subida de prueba'),
(22, 'cat2-61ef21fb57dfb.jpg', 'subida de prueba'),
(32, 'cat-61ef5696b71b0.jpg', 'resize prueba'),
(33, 'cat2-61ef56ff42da1.jpg', 'resize prueba'),
(34, 'cat-61f45dde25beb.jpg', 'sin resize'),
(35, 'cat4-61f45eda260e1.jpg', 'ghjghj');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
