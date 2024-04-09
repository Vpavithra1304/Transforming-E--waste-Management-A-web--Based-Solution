-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2021 at 10:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garbage`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `customerid` int(200) NOT NULL,
  `amount` int(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `servedby` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `customerid`, `amount`, `quantity`, `servedby`, `date`) VALUES
(1, 1, 25, 3, 'GB003', '2021-05-23 08:29:37'),
(2, 2, 5, 1, 'GB003', '2021-05-23 08:29:42'),
(3, 2, 1800, 18, 'GB003', '2021-05-23 08:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `customername` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `region` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `customername`, `phone`, `email`, `region`, `password`, `date`) VALUES
(1, 'Rashid Omar', '232700123546', 'rashid@gmail.com', 'FreeTown', '1234', '2021-05-22 10:37:11'),
(2, 'Nelson Havi', '232712456987', 'nelson@gmail.com', 'FreeTown', '1234', '2021-05-22 10:37:11'),
(3, 'John White', '254700000111', 'john@gmail.com', 'Moyamba', '1234', '2021-05-24 18:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `workstation` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `empno` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `addedby` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `fname`, `surname`, `phone`, `workstation`, `position`, `empno`, `password`, `addedby`, `status`, `date`) VALUES
(1, 'Nelson', 'Chinedu', '23276123450', 'Freetown', 'Admin', 'GB001', '1234', 'GB001', 'Active', '2021-05-21 21:01:23'),
(2, 'Chidima', 'Wesly', '232700711233', 'Moyamba', 'Admin', 'GB002', '1234', 'GB001', 'Active', '2021-05-22 17:24:57'),
(3, 'Mary', 'Jackson', '232705687233', 'Freetown', 'Employee', 'GB003', '1234', 'GB001', 'Active', '2021-05-23 06:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `customerid` varchar(200) NOT NULL,
  `refno` varchar(200) NOT NULL,
  `amount` int(200) NOT NULL,
  `serverby` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `customerid`, `refno`, `amount`, `serverby`, `date`) VALUES
(1, '1', 'RCT001', 5, 'Nelson', '2021-05-22 10:39:49'),
(2, '1', 'RCT002', 5, 'Nelson', '2021-05-22 10:39:49'),
(3, '2', 'RCT003', 1, 'Nelson', '2021-05-22 12:03:02'),
(6, '2', 'RCT004', 1004, 'GB001', '2021-05-24 20:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `regionid` int(11) NOT NULL,
  `regionname` varchar(200) NOT NULL,
  `addedby` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`regionid`, `regionname`, `addedby`, `status`, `date`) VALUES
(1, 'Freetown', 'GB001', 'Inctive', '2021-05-22 09:30:22'),
(2, 'Moyamba', 'GB001', 'Active', '2021-05-22 17:01:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`regionid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `regionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
