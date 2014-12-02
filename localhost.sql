-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2014 at 02:55 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `startup`
--
CREATE DATABASE `startup` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `startup`;

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE IF NOT EXISTS `attendence` (
  `attendence_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `in_time` varchar(100) DEFAULT NULL,
  `out_time` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`attendence_id`),
  UNIQUE KEY `attendence_id` (`attendence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`attendence_id`, `person_id`, `date`, `in_time`, `out_time`, `ip`) VALUES
(1, 1, '2014-12-02', '13:27', '13:27', NULL),
(2, 2, '2014-12-02', '10:00', '10:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE IF NOT EXISTS `authentication` (
  `authentication_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`authentication_id`, `person_id`, `email`, `type`, `password`) VALUES
(1, 1, 'emon0407@gmail.com', 'Admin', 'admin'),
(2, 2, 'bit0402@iit.du.ac.bd', 'Employee', 'abc123'),
(3, 3, 'bit0410@iit.du.ac.bd', 'Employee', 'iit123'),
(4, 4, 'bit0425@iit.du.ac.bd', 'Employee', 'iit123'),
(5, 5, 'leonika@gmail.com', 'Employee', 'iit123'),
(6, 6, 'ewkjenj@dfd', 'Employee', 'iit123');

-- --------------------------------------------------------

--
-- Table structure for table `bank_information`
--

CREATE TABLE IF NOT EXISTS `bank_information` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `branch_code` varchar(100) DEFAULT NULL,
  `tin_number` varchar(100) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bank_information`
--

INSERT INTO `bank_information` (`bank_id`, `person_id`, `bank_name`, `branch_code`, `tin_number`, `account_number`) VALUES
(1, 1, 'Butch Bangla Bank', 'dt-001', 'd001', 'dtb-475'),
(2, 2, 'Brack Bank Ltd.', 'bb-001', 'b002', 'bt934'),
(3, 3, 'City Bank', 'cb-002', 'cb2030', 'cdk93439'),
(4, 4, 'AB Bank', 'ab001', '', ''),
(5, 5, 'Dutch Bangla Bank', 'dt001', '', ''),
(6, 6, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(110) DEFAULT NULL,
  `company_title` varchar(1000) DEFAULT NULL,
  `company_address` varchar(1000) DEFAULT NULL,
  `company_email` varchar(100) DEFAULT NULL,
  `company_mobile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_title`, `company_address`, `company_email`, `company_mobile`) VALUES
(1, 'Startup', 'The Leader in Small Space and Rocket Systems', 'Dhanmondi, Dhaka, Bangladesh', 'sample@example.com', '0000000');

-- --------------------------------------------------------

--
-- Table structure for table `education_information`
--

CREATE TABLE IF NOT EXISTS `education_information` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `ssc_institute` varchar(100) DEFAULT NULL,
  `hsc_institute` varchar(100) DEFAULT NULL,
  `bachelor_institute` varchar(100) DEFAULT NULL,
  `masters_institute` varchar(1000) DEFAULT NULL,
  `ssc_year` varchar(100) DEFAULT NULL,
  `hsc_year` varchar(1000) DEFAULT NULL,
  `bachelor_year` varchar(1000) DEFAULT NULL,
  `masters_year` varchar(1000) DEFAULT NULL,
  `ssc_grade` varchar(1000) DEFAULT NULL,
  `hsc_grade` varchar(1000) DEFAULT NULL,
  `bachelor_grade` varchar(1000) DEFAULT NULL,
  `masters_grade` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `education_information`
--

INSERT INTO `education_information` (`education_id`, `person_id`, `ssc_institute`, `hsc_institute`, `bachelor_institute`, `masters_institute`, `ssc_year`, `hsc_year`, `bachelor_year`, `masters_year`, `ssc_grade`, `hsc_grade`, `bachelor_grade`, `masters_grade`) VALUES
(1, 1, 'Nasirabad', 'CPSC, Mymensingh', 'IIT, University of Dhaka', '', '2008', '2010', '2014', '', '5.0', '5.0', '3.5', ''),
(2, 2, 'KV School', 'KV College', 'University of Dhaka', '', '2008', '2010', '2015', '', '5.0', '5.0', '5.0', ''),
(3, 3, 'Savar School', 'Savar College', 'Jahangir Nagar University', 'Jahangir Nagar University', '2006', '2008', '2013', '2014', '5.0', '4.9', '3.7', '3.75'),
(4, 4, 'Navi School', 'Navi College', 'University of Dhaka', '', '2008', '2010', '2015', '', '5.0', '5.0', '3.9', ''),
(5, 5, 'Holly Crose School', 'Holly Crose College', 'University of Dhaka', 'University of Dhaka', '2002', '2004', '2009', '2012', '5.0', '5.0', '3.7', '3.7'),
(6, 6, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_information`
--

CREATE TABLE IF NOT EXISTS `employee_information` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `company_id` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `gross_salary` double DEFAULT NULL,
  `house_rent` double DEFAULT NULL,
  `medical_expense` double DEFAULT NULL,
  `transport_expense` double DEFAULT NULL,
  `entertainment_expense` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `net_salary` double DEFAULT NULL,
  `joining_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `employee_information`
--

INSERT INTO `employee_information` (`employee_id`, `person_id`, `company_id`, `designation`, `department`, `gross_salary`, `house_rent`, `medical_expense`, `transport_expense`, `entertainment_expense`, `tax`, `net_salary`, `joining_date`) VALUES
(1, 1, 'SE-001', 'Junior Software Engineer', 'Engineering', 100000, 20000, 10000, 5000, 10000, 4250, 95750, '10-01-2014'),
(2, 2, 'SE-002', 'Software Engineer', 'Engineering', 150000, 26000, 10000, 7000, 10000, 11566.666666667, 138433.33333333, '01-10-2013'),
(3, 3, 'HS-001', 'Business Executive', 'Business', 100000, 22000, 12000, 5000, 10000, 3650, 96350, '23-11-2012'),
(4, 4, 'SE-003', 'Software Engineer', 'Engineering', 110000, 20000, 10000, 7000, 8000, 5750, 104250, '02-02-2014'),
(5, 5, 'BS-002', 'Business Executive', 'Business', 130000, 25000, 10000, 4000, 6000, 8666.6666666667, 121333.33333333, '03-03-2013'),
(6, 6, 'ewrewr', '', '', 0, 0, 0, 0, 0, 0, 0, 'joining_date');

-- --------------------------------------------------------

--
-- Table structure for table `employment_history`
--

CREATE TABLE IF NOT EXISTS `employment_history` (
  `employment_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `previous_company` varchar(100) DEFAULT NULL,
  `department_previous` varchar(100) DEFAULT NULL,
  `designation_previous` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `employment_history`
--

INSERT INTO `employment_history` (`employment_id`, `person_id`, `previous_company`, `department_previous`, `designation_previous`, `start_time`, `end_time`) VALUES
(1, 1, '', '', '', '', ''),
(2, 2, 'IIT', 'Engineering', 'Softwaer Engineer', '04/01/2013', '05/01/2014'),
(3, 3, 'City Bank', 'Business', 'Junior Executive', '04/01/2011', '01/01/2014'),
(4, 4, '', '', '', '', ''),
(5, 5, 'Brack Bank', '', '', '04/01/2010', '04/01/2012'),
(6, 6, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `leave_table`
--

CREATE TABLE IF NOT EXISTS `leave_table` (
  `leave_table_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `annual_leave_taken` int(11) DEFAULT NULL,
  `casual_leave_taken` int(11) DEFAULT NULL,
  `medical_leave_taken` int(11) DEFAULT NULL,
  `others_leave_taken` int(11) DEFAULT NULL,
  `year` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`leave_table_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `leave_table`
--

INSERT INTO `leave_table` (`leave_table_id`, `person_id`, `annual_leave_taken`, `casual_leave_taken`, `medical_leave_taken`, `others_leave_taken`, `year`) VALUES
(1, 1, 4, 2, 3, 0, NULL),
(2, 2, 2, 3, 1, 4, NULL),
(3, 3, 6, 5, 7, 1, NULL),
(4, 4, 10, 9, 2, 9, NULL),
(5, 5, 1, 1, 9, 2, NULL),
(6, 6, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE IF NOT EXISTS `leave_type` (
  `leave_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `annual_leave` int(11) DEFAULT NULL,
  `casual_leave` int(11) DEFAULT NULL,
  `medical_leave` int(11) DEFAULT NULL,
  `others_leave` int(11) DEFAULT NULL,
  PRIMARY KEY (`leave_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`leave_type_id`, `annual_leave`, `casual_leave`, `medical_leave`, `others_leave`) VALUES
(1, 15, 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE IF NOT EXISTS `performance` (
  `performance_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `allocated_task` int(11) DEFAULT NULL,
  `completed_task` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`performance_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`performance_id`, `person_id`, `allocated_task`, `completed_task`, `Rating`, `comment`) VALUES
(1, 1, 10, 7, NULL, 'Good'),
(2, 2, 10, 9, NULL, 'Very Good'),
(3, 3, 12, 7, NULL, 'Work Hard'),
(4, 4, 10, 10, NULL, 'Excellent'),
(5, 5, 10, 8, NULL, 'Good'),
(6, 6, 0, 0, NULL, 'no task');

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE IF NOT EXISTS `personal_information` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) NOT NULL DEFAULT 'male',
  `mobile_number` varchar(100) DEFAULT NULL,
  `emergency_number` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(10000) DEFAULT NULL,
  `date_of_birth` varchar(100) DEFAULT NULL,
  `maritial_status` varchar(100) DEFAULT NULL,
  `allocated_resource` varchar(1000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`person_id`, `full_name`, `gender`, `mobile_number`, `emergency_number`, `email`, `address`, `date_of_birth`, `maritial_status`, `allocated_resource`, `image`) VALUES
(1, 'Nadim Emon', 'Male', '000000', '111111', 'emon0407@gmail.com', 'Dhanmondi, Dhaka', '11/19/1991', 'Single', 'Car, Laptop', 'employee_pics/14-04-12_06-17-39Desert - Copy.jpg'),
(2, 'Sabbir Ahmed', 'Male', '11111111', '0101010', 'bit0402@iit.du.ac.bd', 'Malibug, Dhaka, Bangladesh', '04/01/1992', 'Single', 'Car', 'employee_pics/14-04-12_06-24-05Koala - Copy.jpg'),
(3, 'Arafat  Zaman', 'Male', '11111111', '01001010', 'bit0410@iit.du.ac.bd', 'Savar, Dhaka, Bangladesh', '05/01/1990', 'Married', 'Car, Laptop', 'employee_pics/14-04-12_06-28-23Penguins - Copy.jpg'),
(4, 'Rashed Amir', 'Male', '010100', '120120', 'bit0425@iit.du.ac.bd', 'Katabon, Dhaka', '04/01/1994', 'Single', 'Laptop', 'employee_pics/14-04-12_06-31-36Lighthouse - Copy.jpg'),
(5, 'Leonika Hannan', 'Female', '00110', '010010', 'leonika@gmail.com', 'Bonani, Dhaka', '04/01/1989', 'Married', 'Car, laptop', 'employee_pics/14-04-12_06-35-25Tulips - Copy.jpg'),
(6, 'erewr', 'Male', 'eewrew', '', 'ewkjenj@dfd', '', '', 'Single', '', 'employee_pics/14-12-02_01-34-33');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE IF NOT EXISTS `tax` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_type` varchar(100) DEFAULT NULL,
  `percentage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tax`
--

