-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 05:18 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorymgcsharp`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `details` varchar(5000) NOT NULL,
  `price` varchar(50) NOT NULL,
  `paid` varchar(30) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user`, `details`, `price`, `paid`) VALUES
(4, 'roose', 'Model 2 Head Light manufactured 511*2', '511', 'yes'),
(5, 'roose', 'Model 1 Battery imported 224*1', '224', 'cancelled'),
(6, 'roose', 'Model 5 Steering Wheel imported 339*1', '339', 'cancelled'),
(7, 'demoaccount', 'DemoModel Demo Parts imported 255*3\r\n', '765', 'yes'),
(8, 'christine', 'Model 2 Seat Belt imported 88*1\r\n', '88', 'yes'),
(9, 'estela', 'Model 1 Spoiler imported 190*2\r\n', '380', 'yes'),
(10, 'robert', 'Model 1 Decklid imported 499*1\r\n', '499', 'yes'),
(11, 'jimmy', 'Model 3 Muffler manufactured 830*1\r\n', '830', 'yes'),
(12, 'cath', 'Model 4 Battery imported 201*1\r\n', '201', 'cancelled'),
(13, 'warren', 'Model 2 Seat Belt imported 88*2\r\n', '176', 'no'),
(14, 'sacco', 'Model 2 Gear Lever imported 401*1\r\n', '401', 'no'),
(15, 'demoaccount', 'Model 7 Indicator Lights imported 149*2\r\n', '298', 'yes'),
(16, 'demoaccount', 'Model 6 Dashcam imported 266*1\r\n', '266', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `spareparts`
--

CREATE TABLE `spareparts` (
  `id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `part` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `instock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spareparts`
--

INSERT INTO `spareparts` (`id`, `model`, `part`, `type`, `price`, `instock`) VALUES
(3, 'Model 1', 'Speedometer', 'imported', '216', 6),
(4, 'Model 2', 'Head Light', 'manufactured', '511', 4),
(5, 'Model 3', 'Head Light', 'imported', '339', 3),
(7, 'Model 2', 'Gear Lever', 'imported', '401', 33),
(8, 'Model 2', 'Seat Belt', 'imported', '88', 20),
(9, 'Model 4', 'Battery', 'imported', '201', 33),
(11, 'Model 1', 'Battery', 'imported', '244', 12),
(12, 'Model 3', 'Muffler', 'manufactured', '830', 22),
(14, 'Model 5', 'Steering Wheel', 'imported', '339', 2),
(15, 'DemoModel', 'Demo Parts', 'imported', '255', 82),
(16, 'Model 6', 'Dashcam', 'imported', '266', 34),
(17, 'Model 2', 'Airbag Sensors', 'imported', '560', 16),
(18, 'Model 1', 'Spoiler', 'imported', '190', 50),
(19, 'Model 1', 'Decklid', 'imported', '499', 10),
(20, 'Model 3', 'Speedometer', 'imported', '159', 28),
(21, 'Model 5', 'Bonnet/hood', 'imported', '579', 15),
(22, 'Model 7', 'Indicator Lights', 'imported', '149', 61);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(20) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first`, `last`, `username`, `phone`, `password`, `usertype`) VALUES
(1, 'Roosevelt', 'Mitchell', 'roose', '1450214580', 'ee11cbb19052e40b07aac0ca060c23ee', 'member'),
(2, 'Thom', 'Rodriquez', 'manager', '7854541250', '0795151defba7a4b5dfa89170de46277', 'manager'),
(3, 'Demo', 'Account', 'demoaccount', '7000000020', '5f4dcc3b5aa765d61d8327deb882cf99', 'member'),
(4, 'Christine', 'Moore', 'christine', '8521111101', '5f4dcc3b5aa765d61d8327deb882cf99', 'member'),
(5, 'Liam', 'Moore', 'admin', '1470001011', '482c811da5d5b4bc6d497ffa98491e38', 'admin'),
(6, 'Estela', 'Choate', 'estela', '1254785555', '5f4dcc3b5aa765d61d8327deb882cf99', 'member'),
(7, 'Robert', 'Grote', 'robert', '8520002014', '5f4dcc3b5aa765d61d8327deb882cf99', 'member'),
(8, 'Jimmy', 'Lucas', 'jimmy', '1478569800', '1a1dc91c907325c69271ddf0c944bc72', 'member'),
(9, 'Catherine', 'Lawrence', 'cath', '8522222220', '1a1dc91c907325c69271ddf0c944bc72', 'member'),
(10, 'Joseph', 'Warren', 'warren', '6545214500', '202cb962ac59075b964b07152d234b70', 'member'),
(11, 'Marian', 'Sacco', 'sacco', '1478545874', 'c6f057b86584942e415435ffb1fa93d4', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spareparts`
--
ALTER TABLE `spareparts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `spareparts`
--
ALTER TABLE `spareparts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
