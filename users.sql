-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2021 at 04:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dt` date NOT NULL DEFAULT current_timestamp(),
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `password`, `dt`, `user_type`) VALUES
(1, 'aditya', '$2y$10$H6yJIa0tkz/aEQW06tn1juVIsxrZDQUrF/DxKXqNwb0gP3g.rvIx6', '2021-02-26', 'user'),
(2, 'abhinav', '$2y$10$eOYeZFgFJiAEbfzjJ1XbjOLxnZsKQxsQ7lLaTApEYbLtta/Wf5X42', '2021-02-26', 'user'),
(4, 'admin', '$2y$10$SxidjHZ.pHN87bUhwCxQGuWnxYjcjkukhqm7uulZvVabZmED2NUIm', '2021-02-26', 'user'),
(6, 'kilwish', '$2y$10$UKTESoMDfdO/rDdozLzRH.Q9Fki7vd8PfPIN3bnZQ1IUMmzQpY5/O', '2021-03-01', 'user'),
(7, 'shubham', '$2y$10$U2G0r65YYayho7h2zqzVB.ey4zGECzp6y.dv.d1Bm7EjpP.hBm8ve', '2021-03-10', 'user'),
(8, 'anusha', '$2y$10$NPLYtE31Lqno3.UuuB6PTeIPgGffBXro/tMueACp4.9rhfJaO98JW', '2021-03-10', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
