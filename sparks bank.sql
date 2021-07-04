-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 02:03 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Smruthi', 'Riya', 500, '2021-07-01 18:58:27'),
(2, 'Smruthi', 'Anushka', 3000, '2021-07-01 19:00:31'),
(3, 'Aniketh', 'Shradha', 5000, '2021-07-02 19:01:32'),
(4, 'Zoya', 'Arnav', 900, '2021-07-02 19:06:15'),
(5, 'Siya', 'Suprit', 7000, '2021-07-02 19:28:24'),
(6, 'Pranav', 'Siya', 200, '2021-07-02 19:30:31'),
(7, 'Shradha', 'Smruthi', 3500, '2021-07-03 19:31:22'),
(8, 'Arnav', 'Aniketh', 250, '2021-07-03 07:39:58'),
(9, 'Arnav', 'Riya', 8000, '2021-07-04 09:37:08'),
(10, 'Riya', 'Anushka', 300, '2021-07-04 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1145, 'Anushka', 'anu@gmail.com', 57600),
(2276, 'Arnav', 'arnav@gmail.com', 46500),
(3356, 'Smruthi', 'smruthi@gmail.com', 66000),
(4423, 'Riya', 'riyaraj@gmail.com', 38700),
(5573, 'Siya', 'siyasavkar@gmail.com', 53200),
(5976, 'Suprit', 'suprit21@gmail.com', 25700),
(6648, 'Pranav', 'pranav@gmail.com', 39500),
(7723, 'Zoya', 'zoya@gmail.com', 51200),
(8851, 'Aniketh', 'aniketh@gmail.com', 43600),
(9964, 'Shradha', 'shradha@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
