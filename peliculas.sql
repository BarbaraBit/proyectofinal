-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 11:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies_cac`
--

-- --------------------------------------------------------

--
-- Table structure for table `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `duracion` varchar(50) NOT NULL,
  `director` varchar(50) NOT NULL,
  `reparto` varchar(50) NOT NULL,
  `sinopsis` varchar(100) NOT NULL,
  `imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `genero`, `fecha_lanzamiento`, `duracion`, `director`, `reparto`, `sinopsis`, `imagen`) VALUES
(1, 'The Beekeper', 'Accion-Suspenso', '2024-01-12', '1h 45m', 'David Ayer', 'Jason Statham', 'Mayores de 18 años', ''),
(2, 'Badland Hunters', 'Accion-Ciencia ficcion', '2024-01-26', '1h 47m', ' Heo Myeong-haeng', 'ma dong seok', 'Best sellers', ''),
(3, 'The Marvels', 'Infantil', '2023-11-10', '1h 45m', 'Nia Dacosta', 'Brie Larson', 'grandes y chicos', ''),
(4, 'Wonka', 'Infantil-Musical', '2024-06-20', '1h 40m', 'Paul King', 'Timothee Chamet', 'adaptacion de Charlie y la fábrica de chocolate', ''),
(5, 'Aquaman', 'Accion-Fantasia', '2023-12-22', '1h 55m', 'James Wan', 'Amber Heard', 'apto todo publico', ''),
(6, 'Migration', 'Aventura-Comedia', '2023-12-06', '1h 22m', 'Guylo Homsy', 'Awkwafina', 'Aclamada por el publico', ''),
(7, 'Wish', 'Infantil-Fantasia', '2023-11-22', '1H 42m', 'Chris Buck', 'Ariana Debose', 'Para chicos y grandes', ''),
(8, 'Mi Villano Favorito', 'Infantil-Fantasia', '2023-11-22', '1H 42m', 'Chris Buck', 'Ariana Debose', 'Para chicos y grandes', ''),
(9, '60 minutos', 'Infantil', '2024-01-19', '1H 40m', 'Oliver Kienle', 'Emilio Sakraya', 'Para chicos y grandes', ''),
(13, 'Los tres chanchitos', 'fabula', '2024-01-12', '1h 25m', 'David Hooker', 'Juan Perez', 'Entretenida', ''),
(14, 'Super Mario', 'infantil', '2023-04-05', '1h 25m', 'Michael Jelenic', 'Brad Pitt', 'Entretenida', ''),
(15, 'Dos policias en accion', 'Accion', '2024-01-12', '1h 48m', 'David Pall', 'Jason Statham', 'Mayores de 18', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
