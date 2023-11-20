-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2023 at 01:37 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'unpaid',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `status`, `file_path`) VALUES
(86, 11, 1, 2, 'Waiting', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `description` text,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `product_name`, `image_url`, `description`, `price`) VALUES
(1, 'simple cupboard', 'upload/lemari6.png', 'This is an example product description.', '100'),
(3, 'aesthetic wardrobe', 'upload/lemari2.jpg', 'This is an example product description.', '100'),
(4, 'cupboard', 'upload/lemari7.jpg', 'This is an example product description.', '100.000'),
(5, 'simple table', 'upload/meja1.jpg', 'This is an example product description.', '100.000'),
(6, 'Workbench', 'upload/meja2.jpg\r\n', 'This is an example product description.', '100.000'),
(7, 'nice sofa', 'upload/sofa2.jpg', 'This is an example product description.', '100.000'),
(8, 'sofa', 'upload/sofa1.jpg', 'This is an example product description.', '100.000'),
(9, 'simple sofa', 'upload/sofa 3.jpg', 'This is an example product description.', '100.000'),
(10, 'study desk', 'upload/meja4.jpg', 'This is an example product description.', '100');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `address`) VALUES
(1, 'azzam', NULL, '$2y$10$IIbPtr4W8k5bYCrh8WtFpeSp/7JQtTK3UuskR7lzHmbHjnK8MkyJG', 'bpn'),
(3, 'admin', 'daft@daft.coms', '$2y$10$J8GvbmQr5yxG5YnUtCo18.F.No0lvJchjMZeiHklhnKq0vPYxLLU2', 'TENJOLAYAAA'),
(4, 'alex', NULL, '$2y$10$frfFVlV7VtYDgGp0aAP9Our4bJ5JuqQ0/Dnbu7x6tEG0sfgOQf3Zq', 'ygy'),
(5, 'fathur', NULL, '$2y$10$b3JtqxgbQN4ZKJrmUruPZe53c3QIkn4zOMmk.pNyCAn.VAeQewLaC', 'jakarta'),
(7, 'fidi', NULL, '$2y$10$u9nJr.qa3/tEXv5vOvjA3e9sJvrx3.HxdUpoEapUsAbSumDxDzrvO', 'TENJOLAYA'),
(9, 'wefe', 'jagocysrwder@proton.me', '$2y$10$2IbThE3lQn.VJ7k/U7.Z4O9K1LqTDEkUdocRa5ks2zlmA/rCUa8J2', 'qqq'),
(11, 'sopp', NULL, '$2y$10$10YvSi4UMelNICInX40LhOH6l.wDbLRUbbOfX2hcU1DgkiG93zgiW', 'dpl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_ibfk_1` (`user_id`),
  ADD KEY `cart_ibfk_2` (`product_id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
