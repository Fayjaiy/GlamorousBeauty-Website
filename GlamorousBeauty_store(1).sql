-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2023 at 10:05 AM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GlamorousBeauty_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bills`
--

CREATE TABLE `Bills` (
  `bill_ID` int NOT NULL,
  `total_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Bills`
--

INSERT INTO `Bills` (`bill_ID`, `total_price`) VALUES
(1, 0),
(12, 2561),
(15, 831),
(16, 364),
(17, 369),
(18, 456),
(19, 641),
(20, 818),
(22, 456),
(23, 639);

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
  `cartID` int NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `price` int NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `invoice_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Cart`
--

INSERT INTO `Cart` (`cartID`, `product_name`, `price`, `user_name`, `invoice_id`) VALUES
(43, 'Estee Lauder Night Repair Serum', 456, 'hello', 1),
(44, 'Dior Addict Lip Glow Oil', 185, 'hello', 2),
(45, 'Sol De Janeiro 68 Mist', 179, 'hello', 2),
(47, 'Sol De Janeiro 68 Mist', 179, 'hello', 2),
(48, 'Sol De Janeiro 68 Mist', 179, 'hello', 3),
(49, 'Dior Backstage Rosy Glow', 190, 'hello', 3),
(50, 'Estee Lauder Night Repair Serum', 456, 'hello', 4),
(51, 'Estee Lauder Night Repair Serum', 456, 'test', 5),
(52, 'Dior Addict Lip Glow Oil', 185, 'test', 5),
(53, 'Lancome idole', 639, 'test', 6),
(54, 'Sol De Janeiro 68 Mist', 179, 'test', 6),
(55, 'Dior Addict Lip Glow Oil', 185, 'test', 7),
(56, 'Lancome idole', 639, 'test', 7),
(57, 'Estee Lauder Night Repair Serum', 456, 'test', 8),
(58, 'Lancome idole', 639, 'test', 9);

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `productID` int NOT NULL,
  `productName` varchar(250) NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`productID`, `productName`, `price`) VALUES
(1, 'Dior Addict Lip Glow Oil', 185),
(2, 'Lancome idole', 639),
(3, 'Estee Lauder Night Repair Serum', 456),
(4, 'Sol De Janeiro 68 Mist', 179),
(5, 'Dior Backstage Rosy Glow', 190),
(6, 'CH Good Girl Midnight', 650);

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE `Review` (
  `review_id` int NOT NULL,
  `c_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Review`
--

INSERT INTO `Review` (`review_id`, `c_name`, `title`, `review`) VALUES
(34, 'Anonymous', 'Lancome idole', 'lancome idole is such an excellent product'),
(35, 'Anonymous', 'Estee Lauder', 'Estee Lauder is amazing'),
(36, 'Anonymous', '', 'this is one of the best online shops');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `userID` int NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`userID`, `firstName`, `lastName`, `username`, `password`, `email`) VALUES
(14, 'h', 'l', 'hello', 'he5', 'h@hotmail.com'),
(16, 'test_first', 'test_last', 'test', '1234', 'test@gmail.com'),
(23, 's', 'z', 'secure', '1a1dc91c907325c69271ddf0c944bc72', 'secure@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bills`
--
ALTER TABLE `Bills`
  ADD PRIMARY KEY (`bill_ID`);

--
-- Indexes for table `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`cartID`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bills`
--
ALTER TABLE `Bills`
  MODIFY `bill_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `Cart`
--
ALTER TABLE `Cart`
  MODIFY `cartID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `productID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Review`
--
ALTER TABLE `Review`
  MODIFY `review_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `userID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
