-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 02:03 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `std_roll_no` int(11) NOT NULL,
  `student_name` varchar(32) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `Session` varchar(40) DEFAULT NULL,
  `Program` varchar(40) DEFAULT NULL,
  `Semester` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`std_roll_no`, `student_name`, `dob`, `gender`, `email`, `phone`, `address`, `Session`, `Program`, `Semester`) VALUES
(1, 'nayan', '1994-03-11', 'male', 'jkjkjk@hjkmn.com', '8989898989', 'gjnjhuhgyuji', '', 'B.TECH', '5th'),
(2, 'manas', '1995-02-23', 'male', 'samarfg@gmail.com', '23344655', 'fdgdhdjb hh hjhjty hty', '', 'B.TECH', '5th'),
(3, 'rishab', '1992-11-12', 'male', 'idjnfsincin@jfi.com', '7643278624', 'fdjdbdbslfn fhjdbuf bhfhfbdhufbdsmcbsdhbf', NULL, 'B.TECH', '3rd'),
(4, 'kaustubh', '1994-07-11', 'male', 'jkjkk@hjkn.com', '89898990089', 'gjnjhuh,jluji', '', 'B.TECH', '6th'),
(5, 'nikhil', '2002-12-20', 'male', 'hytyhtyjt.bgtht@g.vom', '7878778787', 'tghrhrhh', '', 'B.TECH', '4th'),
(6, 'prateek', '2000-11-26', 'male', 'jsa@h.com', '78163786386', 'c sjbcjbsu xsajausaxjsaxg ', '', 'B.TECH', '4th'),
(7, 'hunjki', '1999-11-25', 'male', 'ashuihsu@j.com', '786786267', 'jhasbhjsab asjhbdhjsab ajhdjbahs ', '', 'B.TECH', '5th'),
(8, 'hsjahd', '1998-11-22', 'female', 'bahsbah@j.com', '767786768', 'fvdsvdsv vds ds sddss sdsd s ', '', 'B.TECH', '5th'),
(9, 'prerna', '1997-09-27', 'female', 'pp@ppkapyaar.com', '473974892', 'dfudhjds dhufgdu ndssbfyds dhvy', '', 'B.TECH', '7th');

-- --------------------------------------------------------

--
-- Table structure for table `subject_table`
--

CREATE TABLE `subject_table` (
  `subject_no` int(11) NOT NULL,
  `subject_name` varchar(32) NOT NULL,
  `teacher_name` varchar(64) NOT NULL,
  `field` varchar(8) NOT NULL,
  `semester` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_table`
--

INSERT INTO `subject_table` (`subject_no`, `subject_name`, `teacher_name`, `field`, `semester`) VALUES
(1, 'Java', 'Geetha', 'B.TECH', '5th'),
(2, 'Java', 'Krishna Prasad', 'B.TECH', '5th'),
(3, 'Java', 'Others', 'B.TECH', '4th'),
(4, 'C++', 'Dr.Bala', 'B.TECH', '2nd'),
(5, 'DBMS', 'Geetha', 'B.TECH', '2nd'),
(6, 'MACHINES', 'Asha Ashok', 'BioTech', '5th'),
(7, 'DBMS', 'Prathibamole', 'B.TECH', '5th');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attID` int(11) NOT NULL,
  `studentRollNumber` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `attendance` varchar(11) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attID`, `studentRollNumber`, `subjectId`, `attendance`, `Date`) VALUES
(1, 1, 1, 'P', '2019-11-26 00:00:00'),
(2, 6, 5, 'P', '2019-11-26 00:00:00'),
(3, 4, 1, 'A', '2019-11-26 21:30:01'),
(4, 5, 4, 'P', '2019-11-26 23:04:22'),
(5, 7, 4, 'P', '2019-11-26 23:30:14'),
(6, 5, 6, 'A', '2019-11-26 23:30:18'),
(7, 6, 2, 'P', '2019-11-26 23:30:23'),
(8, 6, 4, 'P', '2019-11-26 23:30:27'),
(9, 5, 6, 'P', '2019-11-26 23:30:40'),
(10, 4, 1, 'P', '2019-11-27 09:04:15'),
(11, 5, 3, 'P', '2019-11-27 11:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_table`
--

CREATE TABLE `teacher_table` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `degree` varchar(32) NOT NULL,
  `salary` varchar(64) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_table`
--

INSERT INTO `teacher_table` (`teacher_id`, `first_name`, `last_name`, `dob`, `gender`, `email`, `phone`, `degree`, `salary`, `address`) VALUES
(2, 'jyoti', 'thakur', '1980-11-23', 'female', 'jyoti@er.com', '45637898', 'P.HD', '100000', 'Bangalore'),
(3, 'Roopa', 'Hirani', '1974-05-29', 'female', 'roop@jk.com', '2873672', 'Master', '55000', 'meghalaya'),
(4, 'Mercy', 'sri', '1989-11-03', 'female', 'mercy@hg.com', '2364767899', 'M.phil', '66000', 'coorg'),
(5, 'pranav', 'pp', '1991-08-27', 'male', 'pp@pp.com', '762372867', 'Master', '70000', 'imphal'),
(6, 'jayasheela', 'cs', '1990-09-19', 'female', 'jaya@she.com', '2786762789', 'P.HD', '100000', 'Bangalore'),
(7, 'Vedashree', 'S.', '1990-10-26', 'female', 'veda@vvh.com', '727529878126', 'Master', '56000', 'sxbjsbxs njxnvfsx sxgys xnsvyx ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`std_roll_no`);

--
-- Indexes for table `subject_table`
--
ALTER TABLE `subject_table`
  ADD PRIMARY KEY (`subject_no`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attID`);

--
-- Indexes for table `teacher_table`
--
ALTER TABLE `teacher_table`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_table`
--
ALTER TABLE `student_table`
  MODIFY `std_roll_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subject_table`
--
ALTER TABLE `subject_table`
  MODIFY `subject_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teacher_table`
--
ALTER TABLE `teacher_table`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
