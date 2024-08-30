-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 12:51 PM
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
-- Database: `trade_union_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `trade_union`
--

CREATE TABLE `trade_union` (
  `trade_union_key` int(11) NOT NULL,
  `trade_union_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `establishment_date` date NOT NULL,
  `president_name` varchar(255) NOT NULL,
  `president_nic` varchar(20) NOT NULL,
  `president_contact` varchar(20) NOT NULL,
  `president_whatsapp` varchar(20) DEFAULT NULL,
  `president_email` varchar(255) DEFAULT NULL,
  `secretary_name` varchar(255) NOT NULL,
  `secretary_nic` varchar(20) NOT NULL,
  `secretary_contact` varchar(20) NOT NULL,
  `secretary_whatsapp` varchar(20) DEFAULT NULL,
  `secretary_email` varchar(255) DEFAULT NULL,
  `b_form_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trade_union`
--

INSERT INTO `trade_union` (`trade_union_key`, `trade_union_name`, `address`, `establishment_date`, `president_name`, `president_nic`, `president_contact`, `president_whatsapp`, `president_email`, `secretary_name`, `secretary_nic`, `secretary_contact`, `secretary_whatsapp`, `secretary_email`, `b_form_path`) VALUES
(1, 'sc union', '1067 Felipe II Stret, Binondo', '2024-08-14', 'sadaw', '1234567890', '0988134245', '0988134245', 'sadaw@gmail.com', 'sfea', '0987654321', '0793394824', '0793394824', 'sfea@gmail.com', 'Uploads/Background-36.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trade_union`
--
ALTER TABLE `trade_union`
  ADD PRIMARY KEY (`trade_union_key`),
  ADD UNIQUE KEY `trade_union_name` (`trade_union_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trade_union`
--
ALTER TABLE `trade_union`
  MODIFY `trade_union_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
