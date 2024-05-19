-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2024 at 09:39 PM
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
-- Database: `dr. tarek's pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Contact` int NOT NULL,
  `ProductName` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `Note` text COLLATE utf8mb4_general_ci,
  `ExpectedDate` date DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FullName`, `Address`, `Contact`, `ProductName`, `Total`, `Note`, `ExpectedDate`) VALUES
(7, 'hamada', 'adafaadf69', 2322, '', '0.00', '', '0000-00-00'),
(8, 'Mahmoud Adel Mahmoud Ahmed Salem', 'adafaadf420', 2324, '', '0.00', '', '2024-05-30'),
(11, 'Mahmoud Adel', '16dsjkhkdshhszdkhk', 0, '', '0.00', '', '0000-00-00'),
(13, 'omran', 'adafaadf', 2147483647, '', '43.00', '', '0000-00-00'),
(15, 'omran', 'adafaadf', 2147483647, '', '43.00', '', '0000-00-00'),
(18, 'Mahmoud Adel', 'Haram', 1016286486, '', '0.00', '', '0000-00-00'),
(19, 'Mahmoud Adel Mahmoud Ahmed Salem', 'adafaadf', 2147483647, '', '43.00', '', '0000-00-00'),
(20, 'omran', 'Haram', 0, '', '0.00', '', '0000-00-00'),
(21, 'omran', 'Haram', 0, '', '0.00', '', '0000-00-00'),
(22, 'omran', 'Haram', 0, '', '0.00', '', '0000-00-00'),
(23, 'omran', 'Haram', 0, '', '0.00', '', '0000-00-00'),
(24, '7oda', 'asdfas', 234523456, '', '0.00', '', '0000-00-00'),
(25, '7oda', 'asdfas', 0, '', '0.00', '', '0000-00-00'),
(26, 'Mahmoud Adel', 'Haram', 0, '', '0.00', '', '2024-05-31'),
(27, 'omran', 'a4garrr', 2147483647, '', '0.00', '', '0000-00-00'),
(28, 'ahmed', 'banhaa', 161161844, '', '0.00', '', '0000-00-00'),
(30, 'kotaaaa69', 'hell', 116, '', '0.00', '', '0000-00-00'),
(31, 'youssef ehab abdulmoneim', 'wuhc', 0, '', '0.00', '', '2024-05-31'),
(32, 'mosszabry', 'oqwnx0', 0, 'oixwns', '0.00', 'iosan', '2024-05-25');

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
('nour', 't', 'tarek', 'newone@gmail.com', '123', '2024-05-21', 123),
('youssef', 'E', 'abdulmoneim', 'xboxen@gmail.com', '$2y$10$k2l5Gf4Ey9AVrivBkESvn.f', '4444-04-04', 0),
('', '', '', '', '$2y$10$XMc9lS2Bp3tH0tCSP2R.keu', '0000-00-00', 0),
('youssef', 'E', 'abdulmoneim', 'zobrameetman@gmail.com', '$2y$10$Mije1l4eNTzpicMQnccpA.U', '4444-04-04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

DROP TABLE IF EXISTS `pharmacist`;
CREATE TABLE IF NOT EXISTS `pharmacist` (
  `PharmacistID` int NOT NULL AUTO_INCREMENT,
  `Pharmacist_FName` varchar(50) NOT NULL,
  `Pharmacist_MName` varchar(50) NOT NULL,
  `Pharmacist_LName` varchar(50) NOT NULL,
  `Pharmacist_Email` varchar(60) NOT NULL,
  `Pharmacist_Password` varchar(25) NOT NULL,
  `Pharmacist_DOB` date NOT NULL,
  PRIMARY KEY (`PharmacistID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`PharmacistID`, `Pharmacist_FName`, `Pharmacist_MName`, `Pharmacist_LName`, `Pharmacist_Email`, `Pharmacist_Password`, `Pharmacist_DOB`) VALUES
(1, 'ayad', 'ahmed', 'said', 'xdgxdrg@trdgfg', '1234', '0414-02-12'),
(2, 'yjyjy', 'tryhfty', 'xrtyhht', 'wsef@grg.fhgr', 'pl,', '2024-05-31'),
(3, 'yjyjy', 'tryhfty', 'xrtyhht', 'efdgxdrg@grg.fhgr', 'pl,', '2024-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Product_Name` varchar(50) NOT NULL,
  `Product_Quantity` int NOT NULL,
  `Product_Price` int NOT NULL,
  `Product_ExpiryDate` date NOT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_ID`, `Product_Name`, `Product_Quantity`, `Product_Price`, `Product_ExpiryDate`) VALUES
(1, 'C-Retard', 30, 185, '2025-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE IF NOT EXISTS `sales_order` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` int NOT NULL,
  `gen_name` varchar(150) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` int NOT NULL,
  `date` varchar(500) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(4, '', '4', '12', '12', 12, 'hamda69', 'e', '12', 0, ''),
(5, '', '4', '444', '12', 0, 'hamda', 'e', '44', 0, ''),
(6, '', '4', '5', '12', 1111111, 'hamda79', 'hamda3274838728', '4200', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `Supplier_Name` varchar(50) NOT NULL,
  `Supplier_Phone` int NOT NULL,
  `Supplier_Email` varchar(30) NOT NULL,
  `Supplier_Address` varchar(60) NOT NULL,
  `Supplier_Pay_Terms` varchar(40) NOT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `Supplier_Name`, `Supplier_Phone`, `Supplier_Email`, `Supplier_Address`, `Supplier_Pay_Terms`) VALUES
(7, 'ayad', 0, 'xbo@dijw.com', 'w', 'visa'),
(5, 'hamada', 865563663, 'e', 'wuhc', 'visa'),
(6, 'hamada', 865563663, '@e', 'wuhc', 'visa'),
(8, 'hamada12', 0, 'xbo@dijw.com', 'w', 'visa'),
(9, 'hamada12', 0, 'xbo@dijw.com', 'w', 'visa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
