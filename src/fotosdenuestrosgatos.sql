-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2022 at 12:39 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fotosdenuestrosgatos`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220124092126', '2022-02-03 10:40:18', 3076),
('DoctrineMigrations\\Version20220124122450', '2022-01-24 13:25:04', 39);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`) VALUES
(1, 'marc', 'marc@marc.com', 'marc'),
(7, 'Marc', 'poneremail@correct.com', 'hola mati');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photo`
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
(35, 'cat4-61f45eda260e1.jpg', 'ghjghj'),
(38, 'cat2-6203752a4d02f.jpg', 'Probando mensaje flash de subir foto'),
(39, 'cat2-62037608de217.jpg', 'Probando mensaje flash de subir foto'),
(42, 'cat3-620f844c9a731.jpg', 'prueba con mati'),
(43, 'cat2-6215fef9c60ec.jpg', 'pongo una descripcion');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
