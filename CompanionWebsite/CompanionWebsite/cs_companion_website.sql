-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2018 at 01:38 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs_companion_website`
--
CREATE DATABASE cs_companion_website;
-- --------------------------------------------------------

--
-- Table structure for table `chapter_tests`
--

CREATE TABLE `chapter_tests` (
  `chapter` int(3) NOT NULL,
  `q_id` varchar(4) NOT NULL,
  `question` varchar(256) NOT NULL,
  `ans1` varchar(256) NOT NULL,
  `ans2` varchar(256) NOT NULL,
  `ans3` varchar(256) NOT NULL,
  `ans4` varchar(256) NOT NULL,
  `corr_ans` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chapter_tests`
--

INSERT INTO `chapter_tests` (`chapter`, `q_id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `corr_ans`) VALUES
(1, 'c1q1', 'Chapter 1 Question 1', 'answer 1', 'answer 2', 'answer 3', 'answer 4', 'ans4'),
(1, 'c1q2', 'Chapter 1 Question 2', 'answer 1', 'answer 2', 'answer 3', 'answer 4', 'ans3'),
(1, 'c1q3', 'Chapter 1 Question 3', 'answer 1', 'answer 2', 'answer 3', 'answer 4', 'ans1'),
(1, 'c1q4', 'Chapter 1 Question 4', 'answer 1', 'answer 2', 'answer 3', 'answer 4', 'ans2'),
(1, 'c1q5', 'Chapter 1 Question 5', 'answer 1', 'answer 2', 'answer 3', 'answer 4', 'ans4'),
(2, 'c2q1', 'Chapter 2 Question 1', 'answer 1', 'answer 2', 'answer 3', 'answer 4', 'ans4'),
(2, 'c2q2', 'Chapter 2 Question 2', 'answer 1', 'answer 2', 'answer 3', 'answer 4', 'ans4'),
(2, 'c2q3', 'Chapter 2 Question 3', 'answer 1', 'answer 2', 'answer 3', 'answer 4', 'ans1'),
(2, 'c2q4', 'Chapter 2 Question 4', 'answer 1', 'answer 2', 'answer 3', 'answer 4', 'ans2'),
(2, 'c2q5', 'Chapter 2 Question 5', 'answer 1', 'answer 2', 'answer 3', 'answer 4', 'ans3');

-- --------------------------------------------------------

--
-- Table structure for table `test_grades`
--

CREATE TABLE `test_grades` (
  `student_id` int(6) DEFAULT NULL,
  `ch1` int(3) DEFAULT NULL,
  `ch2` int(3) DEFAULT NULL,
  `ch3` int(3) DEFAULT NULL,
  `ch4` int(3) DEFAULT NULL,
  `ch5` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `section_id` int(1) NOT NULL,
  `email` varchar(56) NOT NULL,
  `pass_word` varchar(56) NOT NULL,
  `first_name` varchar(56) NOT NULL,
  `last_name` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `section_id`, `email`, `pass_word`, `first_name`, `last_name`) VALUES
(100001, 1, 'pam.besley123@school.edu', 'studentpass1', 'Pam', 'Besley'),
(100002, 1, 'dwight.schrute345@school.edu', 'studentpass2', 'Dwight', 'Schrute'),
(100003, 2, 'erin.hanna678@school.edu', 'studentpass3', 'Erin', 'Hanna'),
(100004, 2, 'jim.halpert901@school.edu', 'studentpass4', 'Jim', 'Halpert'),
(900001, 1, 'micheal.scott@school.edu', 'teacherpass1', 'Micheal', 'Scott'),
(900002, 2, 'jan.levinson@school.edu', 'teacherpass2', 'Jan', 'Levinson');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
