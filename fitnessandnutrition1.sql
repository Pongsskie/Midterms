-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 04:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitnessandnutrition1`
--

-- --------------------------------------------------------

--
-- Table structure for table `table1_client`
--

CREATE TABLE `table1_client` (
  `Firstname` varchar(55) NOT NULL,
  `Middlename` varchar(55) NOT NULL,
  `Lastname` varchar(55) NOT NULL,
  `Address` text NOT NULL,
  `Sex` int(11) NOT NULL,
  `Age` varchar(25) NOT NULL,
  `Fitnesslevel` varchar(55) NOT NULL,
  `Lengthofworkout` varchar(25) NOT NULL,
  `Typeofworkout` varchar(55) NOT NULL,
  `Workoutgoals` varchar(55) NOT NULL,
  `Accesstoequipment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table1_mealplan`
--

CREATE TABLE `table1_mealplan` (
  `Meal-id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Agerecommendation` int(11) NOT NULL,
  `Calories` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table2_consultant`
--

CREATE TABLE `table2_consultant` (
  `consultant_id` int(11) NOT NULL,
  `Fullname` varchar(55) NOT NULL,
  `Type` varchar(55) NOT NULL,
  `Datejoined` date NOT NULL,
  `Address` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table2_trainingplan`
--

CREATE TABLE `table2_trainingplan` (
  `trainingplan_id` int(11) NOT NULL,
  `trainingmodule` text NOT NULL,
  `hoursrecommended` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table3_consultation`
--

CREATE TABLE `table3_consultation` (
  `id` int(11) NOT NULL,
  `Consultant_id` int(25) NOT NULL,
  `Client.id` int(25) NOT NULL,
  `Type` varchar(55) NOT NULL,
  `Comment` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table3_meal`
--

CREATE TABLE `table3_meal` (
  `id` int(11) NOT NULL,
  `Food` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table1_client`
--
ALTER TABLE `table1_client`
  ADD PRIMARY KEY (`Firstname`),
  ADD UNIQUE KEY `Firstname` (`Firstname`,`Middlename`,`Lastname`);

--
-- Indexes for table `table1_mealplan`
--
ALTER TABLE `table1_mealplan`
  ADD PRIMARY KEY (`Meal-id`);

--
-- Indexes for table `table2_consultant`
--
ALTER TABLE `table2_consultant`
  ADD PRIMARY KEY (`consultant_id`);

--
-- Indexes for table `table2_trainingplan`
--
ALTER TABLE `table2_trainingplan`
  ADD PRIMARY KEY (`trainingplan_id`);

--
-- Indexes for table `table3_consultation`
--
ALTER TABLE `table3_consultation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table3_meal`
--
ALTER TABLE `table3_meal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table1_mealplan`
--
ALTER TABLE `table1_mealplan`
  MODIFY `Meal-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table2_consultant`
--
ALTER TABLE `table2_consultant`
  MODIFY `consultant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table2_trainingplan`
--
ALTER TABLE `table2_trainingplan`
  MODIFY `trainingplan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table3_consultation`
--
ALTER TABLE `table3_consultation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table3_meal`
--
ALTER TABLE `table3_meal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
