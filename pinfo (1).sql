-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2024 at 05:42 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `pinfo`
--

DROP TABLE IF EXISTS `pinfo`;
CREATE TABLE IF NOT EXISTS `pinfo` (
  `pro_id` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `expiry` date NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pinfo`
--

INSERT INTO `pinfo` (`pro_id`, `pname`, `quantity`, `price`, `expiry`) VALUES
(26, 'po', 5, 100, '2024-05-10'),
(25, 'mahmoud2', 20, 10, '0000-00-00'),
(18, 'iehiw', 4, 2, '4444-04-04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
