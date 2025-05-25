-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 25, 2025 at 01:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `external_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verified` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `username`, `password`, `verified`, `created_at`) VALUES
(1, 'admin@gmail.com', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '2025-05-25 09:04:30'),
(2, 'mykinde@gmail.com', 'mykinde', '$2y$10$aQfhrPZ4YWY.k59ACD37W.GwpJXw.0tiiM79zlj3oU2uBfLf8LLZW', NULL, '2025-05-25 11:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` varchar(20) NOT NULL,
  `faculty_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `faculty_id`, `name`) VALUES
('ACC', 'FMS', 'Accounting'),
('BUS', 'FMS', 'Business Administration'),
('CSC', 'FST', 'Computer Science'),
('ECO', 'FMS', 'Economics'),
('ENG', 'FAS', 'English'),
('HIS', 'FAS', 'History'),
('MTH', 'FST', 'Mathematics'),
('PHY', 'FST', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`) VALUES
('FAS', 'Faculty of Arts and Social Sciences'),
('FMS', 'Faculty of Management Sciences'),
('FST', 'Faculty of Science and Technology');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `matric_number` varchar(20) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `last_name`, `first_name`, `middle_name`, `email`, `password`, `confirm_password`, `level`, `faculty`, `department`, `matric_number`, `gender`, `phone`, `name`, `created_at`) VALUES
(1, 'Doe', 'John', 'Ann1', 'johndoe@gmail.com', '$2y$10$WOR492zNIROFD/qMoHzcBOKateQmql8WRHWHvCQRZXTXw9b73Kcou', 'password1', '300', 'FAS', 'ENG', '12345678922', 'Female', '09030282880', NULL, '2025-05-25 10:26:33'),
(2, 'Emily', 'Johnson', '29873', 'ljones@gmail.com', '$2y$10$y1G4ZH89zYfMnQdFSOF.1.OBd0VH7HsmGa.i5sU/ChSwHb83pWIu6', 'password', '200', 'FMS', 'BUS', '1234567891', 'Female', '08033408580', NULL, '2025-05-25 10:29:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `matric_number` (`matric_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
