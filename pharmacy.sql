-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2024 at 06:03 PM
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
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `first_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `middle_initial` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dob` date NOT NULL,
  `repeat_password` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`first_name`, `middle_initial`, `last_name`, `email`, `password`, `dob`, `repeat_password`) VALUES
('0', '', '0', '0', '0', '0000-00-00', 0),
('Nour', '', 'ahmed', 'trial2@msa.edu.eg', '123', '0000-00-00', 0),
('Nour', '', 'adel', 'trial2@msa.edu.eg', '123', '2000-01-23', 0),
('new', '', 'old', 'nouraldeentarek22@gmail.com', '123', '0000-00-00', 0),
('nour', 't', 'tarek', 'nour@gmail.com', '212121', '2024-05-14', 212121),
('nour', 't', 'tarek', 'nourr@msa.edu.eg', '212121', '2024-05-17', 212121),
('nour', 't', 'tarek', 'newone@gmail.com', '123', '2024-05-21', 123);

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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pinfo`
--

INSERT INTO `pinfo` (`pro_id`, `pname`, `quantity`, `price`, `expiry`) VALUES
(26, 'po', 5, 100, '2024-05-10'),
(25, 'mahmoud2', 20, 10, '0000-00-00'),
(27, 'eeee2', 420, 69, '2000-06-12');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
