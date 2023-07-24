-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 07:11 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcuov`
--

-- --------------------------------------------------------

--
-- Table structure for table `dental`
--

CREATE TABLE `dental` (
  `RegNum` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` varchar(5) NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Date` text NOT NULL,
  `Issues` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dental`
--

INSERT INTO `dental` (`RegNum`, `Name`, `Age`, `Sex`, `Department`, `Faculty`, `Date`, `Issues`) VALUES
('2018ICTS41', 'Shazan', '23', 'Male', 'ICTS', 'FoT', '2023-04-23', 'Tooth pain'),
('2018ICTS06', 'Kahan', '23', 'male', 'ICTS', 'Fot', '2023-04-23', 'Tooth Pain'),
('2018ICTS41', 'Shazan', '23', 'Male', 'ICTS', 'FoT', '2023-04-23', 'Tooth pain'),
('2018ICTS15', 'Mrx', '24', 'Male', 'IT', 'FOT', '2023-04-23', 'Headache');

-- --------------------------------------------------------

--
-- Table structure for table `medical_certificate`
--

CREATE TABLE `medical_certificate` (
  `RegNum` varchar(20) NOT NULL,
  `Subject_Name` varchar(50) NOT NULL,
  `Course_Code` varchar(10) NOT NULL,
  `Lecturer_Incharge` varchar(50) NOT NULL,
  `Medical_Issue` varchar(200) NOT NULL,
  `Remarks` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_certificate`
--

INSERT INTO `medical_certificate` (`RegNum`, `Subject_Name`, `Course_Code`, `Lecturer_Incharge`, `Medical_Issue`, `Remarks`) VALUES
('2018ICTS15', 'Software Engineering', 'TICT3123', 'Ms. P. Premisha', 'Leg Pain\r\nHeadache \r\nDepression', 'Not Approved'),
('', '', '', '', '', 'Medical Cannot be Acceptable'),
('', '', '', '', '', '3123'),
('', '', '', '', '', 'NotApproved'),
('2018ICTS06', 'Essentials of IT', 'TICT1114', 'Niroshi', 'Loose Motion', 'Medical Reason Not Acceptable. \r\nMedical Certificate could not be issued'),
('2018ICTS15', 'ICT', '1234', 'MR. x', 'Leg pain', ''),
('2018ICTS15', '', '', '', '', ''),
('2018BS62', 'HRM', '1235', 'Madhi', 'Piles', '');

-- --------------------------------------------------------

--
-- Table structure for table `stdreg`
--

CREATE TABLE `stdreg` (
  `regNum` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(5) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `designation` varchar(10) NOT NULL,
  `allergic` varchar(50) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `resAddress` varchar(50) NOT NULL,
  `perAddress` varchar(50) NOT NULL,
  `allergicHx` varchar(50) NOT NULL,
  `pastMedHis` varchar(100) NOT NULL,
  `pastSurgery` varchar(100) NOT NULL,
  `vaccination` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stdreg`
--

INSERT INTO `stdreg` (`regNum`, `name`, `sex`, `age`, `bloodgroup`, `designation`, `allergic`, `dept`, `faculty`, `resAddress`, `perAddress`, `allergicHx`, `pastMedHis`, `pastSurgery`, `vaccination`) VALUES
('2018BS62', 'Akeel', 'MAle', '25', 'o+', 'student', 'no', 'BS', 'FOBS', 'Vanni', 'KAndy', 'no', 'Corona', 'Piles', 'no'),
('2018ICTS06', 'Kahan', 'Male', '23', 'o+', 'Student', 'Yes', 'ICTS', 'FOT', 'Colombo', 'Muthur', 'Food Allergy', 'Hyper Tension', 'Dog Bite', 'Sinopharm'),
('2018ICTS10', 'Mrx', 'Male', '25', 'O+', 'Leve1', 'Null', 'ICTS', 'FOT', 'Vavuniya', 'Colombo', 'Pneumonia', 'Covid', '', 'Sinopharm'),
('2018ICTS15', 'Safkaan', 'male', '23', 'o+', 'student', 'yes', 'IT', 'FoT', 'Vavuniya', 'SGK', 'Steel body', 'No', 'Leg broken', 'Covid 19'),
('2018ICTS41', 'Shazan', 'Male', '23', 'O+', 'Student', 'Yes', 'ICTS', 'FoT', 'Pampamadu Vavuniya', 'Balangoda', 'Yes', 'Appendise', 'No', 'Sinopharm (Covid 19)');

-- --------------------------------------------------------

--
-- Table structure for table `std_prescription`
--

CREATE TABLE `std_prescription` (
  `regNum` varchar(20) NOT NULL,
  `date` text NOT NULL,
  `findings` varchar(200) NOT NULL,
  `medicine` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_prescription`
--

INSERT INTO `std_prescription` (`regNum`, `date`, `findings`, `medicine`) VALUES
('2018ICTS15', '0000-00-00', 'Piles\r\nLose motion', 'Panadol\r\nVendalin'),
('2018ICTS41', '0000-00-00', 'Headache', 'Penadol'),
('2018ICTS15', '2023-04-13', 'Leg pain', 'Siddalepa'),
('123456', '2023-04-12', 'fgfyfuy', '57789'),
('2018ICTS41', '2023-04-21', 'Head Pain\r\nLeg Pain', 'Panadol'),
('Abc@123', '2023-04-28', 'Blood Cancer', 'Death'),
('2018ICTS06', '2023-04-11', 'Vomiting\r\nStomach Pain', 'Panadol\r\nVentalin'),
('2018ICTS06', '2023-04-20', 'Back Pain', 'Tiger Balm'),
('2018ICTS06', '2023-04-28', 'Hand ache', 'Move'),
('2018ICTS15', '2023-04-14', 'Rashes', 'My Coral'),
('2018BS62', '2023-06-15', 'Leg pain', 'balm');

-- --------------------------------------------------------

--
-- Table structure for table `stfreg`
--

CREATE TABLE `stfreg` (
  `stfId` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(5) NOT NULL,
  `bloodgroup` varchar(5) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `allergic` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `resAddress` varchar(50) NOT NULL,
  `perAddress` varchar(50) NOT NULL,
  `allergicHx` varchar(20) NOT NULL,
  `pastMedHis` varchar(100) NOT NULL,
  `pastSurgery` varchar(100) NOT NULL,
  `vaccination` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stfreg`
--

INSERT INTO `stfreg` (`stfId`, `name`, `sex`, `age`, `bloodgroup`, `designation`, `allergic`, `dept`, `faculty`, `resAddress`, `perAddress`, `allergicHx`, `pastMedHis`, `pastSurgery`, `vaccination`) VALUES
('Abc@123', 'Jack ma', 'Male', '56', 'AB+', 'Professor', 'No', 'Chemistry', 'FoA', 'Chicago', 'New York', 'Tomato Allergy', 'migrain', 'Dialysis', 'Ploeo, Sinopharm');

-- --------------------------------------------------------

--
-- Table structure for table `stf_prescription`
--

CREATE TABLE `stf_prescription` (
  `stfId` varchar(20) NOT NULL,
  `date` text NOT NULL,
  `findings` varchar(200) NOT NULL,
  `medicine` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stf_prescription`
--

INSERT INTO `stf_prescription` (`stfId`, `date`, `findings`, `medicine`) VALUES
('Abc@123', '2023-04-28', 'Blood Cancer', 'Death'),
('2018ICTS06', '2023-04-11', 'Vomiting\r\nStomach Pain', 'Panadol\r\nVentalin'),
('2018ICTS06', '2023-04-20', 'Back Pain', 'Tiger Balm'),
('2018ICTS06', '2023-04-28', 'Hand ache', 'Move');

-- --------------------------------------------------------

--
-- Table structure for table `vision`
--

CREATE TABLE `vision` (
  `RegNum` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` varchar(5) NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Date` text NOT NULL,
  `Issues` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dental`
--
ALTER TABLE `dental`
  ADD KEY `RegNum` (`RegNum`);

--
-- Indexes for table `stdreg`
--
ALTER TABLE `stdreg`
  ADD PRIMARY KEY (`regNum`);

--
-- Indexes for table `stfreg`
--
ALTER TABLE `stfreg`
  ADD PRIMARY KEY (`stfId`);

--
-- Indexes for table `vision`
--
ALTER TABLE `vision`
  ADD PRIMARY KEY (`RegNum`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dental`
--
ALTER TABLE `dental`
  ADD CONSTRAINT `dental_ibfk_1` FOREIGN KEY (`RegNum`) REFERENCES `stdreg` (`regNum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
