-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2020 at 04:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, 'asd', 'asd', '5f83aa85c9b0e8.97388268.jpg', '2020-10-11', NULL),
(2, 'Test #1', 'Test #1 Description', '5f83b4cf7a6f23.20656297.png', '2020-10-11', NULL),
(3, 'Germaphobe', 'The Germ Evasion Game', '5f83b4fb51bc23.75727003.png', '2020-10-11', NULL),
(4, 'asd', 'asd', '5f9632e2ab8c02.48185823.jpg', '2020-10-25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(30) NOT NULL,
  `picpath` varchar(50) NOT NULL DEFAULT 'uploads/anon.png',
  `bio` mediumtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('firstlast', 'uploads/anon.png', NULL),
('test', '../uploads/5f83a5d53ede57.09159622.jpg', 'Test\r\n'),
('asdf', '../uploads/5f83a666933003.94732761.jpg', 'TestBio');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL COMMENT 'review id',
  `item_id` int(11) NOT NULL COMMENT 'item id to be reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user who will review it',
  `title` varchar(60) NOT NULL,
  `review_text` text NOT NULL,
  `rev_date` datetime NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT 'is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `item_id`, `uname`, `title`, `review_text`, `rev_date`, `rating_num`, `status`) VALUES
(1, 0, 'test', 'asd', 'asd', '0000-00-00 00:00:00', 4, 1),
(2, 0, 'test', 'asd', 'asd', '2020-10-26 03:03:51', 3, 1),
(8, 0, 'test', 'asd', 'asd', '2020-10-26 03:49:03', 3, 1),
(9, 1, 'test', 'asd', 'asd', '2020-10-26 03:53:33', 3, 1),
(10, 3, 'test', 'te', 'reeee', '2020-10-26 03:55:37', 4, 1),
(11, 3, 'test', 'asd', 'asd', '2020-10-26 04:10:57', 5, 1),
(12, 3, 'test', 'BAD REVIEW', 'hate', '2020-10-26 04:11:08', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `lname`, `fname`, `email`, `uname`, `password`) VALUES
(5, 'test', 'test', 'test@test', 'test', '$2y$10$ft/KcQj4AnCMWKNQAcEVteJn2VinrH0jDTfpq5T7KjJ4LU6rlmPbu'),
(6, 'b', 'a', 'asdf@asdf', 'asdf', '$2y$10$8NgOmUUmCTaK.3SFS6FUz.wCENjDZ4rZJZZIKO01AFaWkZLN4rLSq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'review id', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
