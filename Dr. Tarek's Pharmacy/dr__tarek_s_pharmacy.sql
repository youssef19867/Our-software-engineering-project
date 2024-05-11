-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2024 at 02:25 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

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
  `CustomerFName` varchar(50) NOT NULL,
  `CustomerMName` varchar(50) NOT NULL,
  `CustomerLName` varchar(50) NOT NULL,
  `CustomerEmail` varchar(60) NOT NULL,
  `CustomerPassword` varchar(25) NOT NULL,
  `CustomerDOB` date NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerFName`, `CustomerMName`, `CustomerLName`, `CustomerEmail`, `CustomerPassword`, `CustomerDOB`) VALUES
(1, 'ayad', 'ahmed', 'said', 'czscsz@zdfzs.com', '1234', '2323-03-12'),
(2, 'awda', 'fawfgrg', 'yfjxg', 'das@resf.com', '567', '2323-03-12'),
(3, 'awda', 'fawfgrg', 'yfjxg', 'rthergse@gtzg.ncbf', '567', '2323-03-12'),
(4, 'thcf', 'gzrxdh', 'hdgxdr', 'rgxdrgxd@trstrd.gchdf', '23e', '1223-03-31');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_ID`, `Product_Name`, `Product_Quantity`, `Product_Price`, `Product_ExpiryDate`) VALUES
(1, 'C-Retard', 30, 185, '2025-06-13'),
(3, 'Immuno-Mash', 23, 210, '2026-01-03');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `Supplier_Name`, `Supplier_Phone`, `Supplier_Email`, `Supplier_Address`, `Supplier_Pay_Terms`) VALUES
(1, 'aefaf', 1231231, 'sedtgkse@wraf.com', 'sfafefef', 'visa'),
(2, 'houokuhu', 687869, 'gxdrgcdg@ythft.com', 'vukvg', 'cash');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
