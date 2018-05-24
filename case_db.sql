-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2018 at 03:15 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `case_db`
--
CREATE DATABASE IF NOT EXISTS `case_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `case_db`;

-- --------------------------------------------------------

--
-- Table structure for table `court_cases`
--

CREATE TABLE `court_cases` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plaintiff` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `case_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defendant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `court_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved` smallint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `court_cases`
--

INSERT INTO `court_cases` (`id`, `user_id`, `plaintiff`, `case_number`, `defendant`, `caption`, `court_date`, `approved`, `created_at`, `updated_at`) VALUES
(3, 1, 'Dele Adegbite', NULL, 'Adegoke Akinroba', 'Over a piece of land', NULL, 2, '2018-05-21 06:11:06', '2018-05-21 08:04:00'),
(4, 1, 'Adegoke arewa', 'CFN/ADB/001', 'Bolanle Koposi', 'Agreement breach', '2018/05/21 13:00', 1, '2018-05-21 06:30:11', '2018-05-21 09:01:26'),
(6, 1, 'Adegoke arewa', NULL, 'KoKo ase', 'Food fight', NULL, 0, '2018-05-21 06:31:33', '2018-05-21 07:24:01'),
(7, 3, 'Micheal Opa', 'CFN/ADB/005', 'Ola Adekule', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2018/05/25 15:00', 1, '2018-05-21 09:14:13', '2018-05-21 09:15:06'),
(8, 3, 'Oklahoma Victor', NULL, 'Aderibigbe Felix', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', NULL, 0, '2018-05-21 10:36:18', '2018-05-21 10:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2018_05_20_230957_create_court_cases_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone_number`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'micheal Prime', 'test@test.com', '$2y$10$37n66Y.IOVRGoiRPgA74NuXyzTsGskn/tp1WN1IyXcxkWfQE0y4TO', '19, Olorunkemi street, Bariga Lagos', '7038102474', 2, 'ewAeg4KmKKVfnnvfO0SYN1NxvR8XfMKw3k5DCqCqMZmoTgNsiVR7G7NznEnL', '2018-05-20 21:02:38', '2018-05-20 21:02:38'),
(2, 'prime prime', 'prime@prime.com', '$2y$10$GRUM1GlwOHHrkNtXMIJeiOKZ26DLv/k6dOmH0tY.bKaStbYFmGMrS', 'prime estate', '7038102474', 1, '1A1eGUu2ZFgwGpJ8vhudnVm6YWuaghj24NHBsb4Vf6JCJ2SANHC0bdlEVxBQ', '2018-05-21 06:37:12', '2018-05-21 06:37:12'),
(3, 'test test 2', 'test2@test.com', '$2y$10$zoFjP/XxIxj6xc/i9FgUaOngPqsb.bh1n7Q2x4O8Ae2ZfsSDMzhIa', 'test estate', '09876543211', 2, 'OipwBZvFhXzupFn3DiLN8Bty7Ztu4JxN4ay7uBsqJo7Z9I74TurY7PIUZVmf', '2018-05-21 09:07:12', '2018-05-21 09:07:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `court_cases`
--
ALTER TABLE `court_cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `court_cases`
--
ALTER TABLE `court_cases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
