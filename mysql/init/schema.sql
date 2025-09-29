-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql_bambu:3306
-- Generation Time: Sep 26, 2025 at 11:01 PM
-- Server version: 8.0.43
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bambu-stats`
--
CREATE DATABASE IF NOT EXISTS `bambu-stats` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bambu-stats`;

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
CREATE TABLE `stats` (
  `id` int NOT NULL,
  `timestamp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bed_target_temper` decimal(10,0) NOT NULL,
  `bed_temper` decimal(10,0) NOT NULL,
  `mc_percent` int NOT NULL,
  `mc_remaining_time` int NOT NULL,
  `chamber_temper` decimal(10,0) NOT NULL,
  `big_fan1_speed` int NOT NULL,
  `big_fan2_speed` int NOT NULL,
  `cooling_fan_speed` int NOT NULL,
  `nozzle_diameter` varchar(255) NOT NULL,
  `nozzle_target_temper` decimal(10,0) NOT NULL,
  `nozzle_temper` decimal(10,0) NOT NULL,
  `nozzle_type` varchar(255) NOT NULL,
  `total_layer_num` int NOT NULL,
  `layer_num` int NOT NULL,
  `ams_humidity` int NOT NULL,
  `ams_temper` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
