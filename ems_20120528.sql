-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 28, 2012 at 10:04 AM
-- Server version: 5.5.14
-- PHP Version: 5.3.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ems_20120524`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_term`
--

CREATE TABLE IF NOT EXISTS `academic_term` (
  `academic_term_id` int(2) NOT NULL AUTO_INCREMENT,
  `academic_term_name` varchar(30) NOT NULL,
  PRIMARY KEY (`academic_term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `academic_term_period`
--

CREATE TABLE IF NOT EXISTS `academic_term_period` (
  `academic_terms_period_id` int(2) NOT NULL AUTO_INCREMENT,
  `academic_terms_period_name` varchar(50) NOT NULL,
  `academic_term_period` int(10) NOT NULL,
  `academic_terms_period_start_date` date NOT NULL,
  `academic_terms_period_end_date` date NOT NULL,
  `academic_terms_period_organization_id` int(2) NOT NULL,
  `academic_terms_period_created_by` int(2) NOT NULL,
  `academic_terms_period_creation_date` datetime NOT NULL,
  PRIMARY KEY (`academic_terms_period_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `academic_term_period`
--

INSERT INTO `academic_term_period` (`academic_terms_period_id`, `academic_terms_period_name`, `academic_term_period`, `academic_terms_period_start_date`, `academic_terms_period_end_date`, `academic_terms_period_organization_id`, `academic_terms_period_created_by`, `academic_terms_period_creation_date`) VALUES
(2, 'SEM1', 201213, '2012-05-16', '2012-05-23', 1, 1, '2012-05-07 16:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `academic_term_trans`
--

CREATE TABLE IF NOT EXISTS `academic_term_trans` (
  `academic_term_trans_id` int(2) NOT NULL AUTO_INCREMENT,
  `academic_term_trans_terms_id` int(2) NOT NULL,
  `academic_term_trans_academicterm_period_id` int(2) NOT NULL,
  PRIMARY KEY (`academic_term_trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `assign_company_user_table`
--

CREATE TABLE IF NOT EXISTS `assign_company_user_table` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `assign_user_id` int(5) NOT NULL,
  `assign_role_id` int(2) NOT NULL,
  `assign_org_id` int(2) NOT NULL,
  `assign_created_by` int(9) NOT NULL,
  `assign_creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`assign_user_id`),
  KEY `fk_role` (`assign_role_id`),
  KEY `fk_org` (`assign_org_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `assign_company_user_table`
--

INSERT INTO `assign_company_user_table` (`id`, `assign_user_id`, `assign_role_id`, `assign_org_id`, `assign_created_by`, `assign_creation_date`) VALUES
(3, 2, 1, 1, 1, '2012-03-19 11:42:38'),
(10, 1, 3, 2, 12, '2012-04-28 10:07:13'),
(14, 63, 4, 1, 1, '2012-05-23 15:04:51'),
(15, 64, 4, 1, 1, '2012-05-23 15:18:06'),
(16, 65, 4, 1, 1, '2012-05-23 15:30:26'),
(17, 66, 4, 1, 1, '2012-05-23 15:36:01'),
(18, 67, 4, 1, 1, '2012-05-23 15:42:53'),
(19, 68, 4, 1, 1, '2012-05-23 15:47:53'),
(20, 69, 4, 1, 1, '2012-05-23 15:51:45'),
(21, 70, 4, 1, 1, '2012-05-23 15:55:45'),
(22, 71, 4, 1, 1, '2012-05-23 16:00:34'),
(23, 72, 4, 1, 1, '2012-05-23 16:04:44'),
(24, 73, 4, 1, 1, '2012-05-23 16:08:15'),
(25, 74, 4, 1, 1, '2012-05-23 16:14:43'),
(26, 75, 4, 1, 1, '2012-05-23 16:18:34'),
(27, 76, 4, 1, 1, '2012-05-23 16:23:25'),
(28, 77, 4, 1, 1, '2012-05-23 16:28:27'),
(29, 78, 4, 1, 1, '2012-05-23 16:32:20'),
(30, 79, 4, 1, 1, '2012-05-23 16:36:17'),
(31, 80, 4, 1, 1, '2012-05-23 16:42:05'),
(32, 81, 4, 1, 1, '2012-05-23 16:46:42'),
(33, 82, 4, 1, 1, '2012-05-23 17:00:20'),
(34, 83, 4, 1, 1, '2012-05-23 17:05:18'),
(35, 84, 4, 1, 1, '2012-05-23 17:08:49'),
(36, 85, 4, 1, 1, '2012-05-23 17:13:35'),
(37, 86, 4, 1, 1, '2012-05-23 17:17:24'),
(38, 87, 4, 1, 1, '2012-05-23 17:22:24'),
(39, 88, 4, 1, 1, '2012-05-23 17:27:06'),
(40, 89, 4, 1, 1, '2012-05-23 17:31:30'),
(41, 90, 4, 1, 1, '2012-05-23 17:35:33'),
(42, 91, 4, 1, 1, '2012-05-23 17:39:15'),
(43, 92, 4, 1, 1, '2012-05-23 17:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subject`
--

CREATE TABLE IF NOT EXISTS `assign_subject` (
  `assign_subject_id` int(3) NOT NULL AUTO_INCREMENT,
  `subject_id` int(3) NOT NULL,
  `subject_faculty_id` int(3) NOT NULL,
  `active` varchar(10) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(5) NOT NULL,
  PRIMARY KEY (`assign_subject_id`),
  KEY `fk_sub_id` (`subject_id`),
  KEY `fk_emp_id` (`subject_faculty_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `AuthAssignment`
--

CREATE TABLE IF NOT EXISTS `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AuthAssignment`
--

INSERT INTO `AuthAssignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('Admin', '1', NULL, 'N;'),
('Admin', '2', NULL, 'N;'),
('Employee', '58', NULL, 'N;'),
('SuperAdmin', '1', NULL, 'N;'),
('SuperAdmin', '12', NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `AuthItem`
--

CREATE TABLE IF NOT EXISTS `AuthItem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AuthItem`
--

INSERT INTO `AuthItem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('AcademicTermPeriod.*', 0, NULL, NULL, 'N;'),
('Admin', 2, 'Admin of the college', 'if(!isset($org))$org=Yii::app()->user->getState(''org_id''); return (Yii::app()->user->getState(''org_id'') == $org);', 'N;'),
('AssignCompanyUserTable.*', 0, NULL, NULL, 'N;'),
('AssignSubject.*', 0, NULL, NULL, 'N;'),
('Authenticated', 2, NULL, NULL, 'N;'),
('BankMaster.*', 0, NULL, NULL, 'N;'),
('Batch.*', 0, NULL, NULL, 'N;'),
('BlockUserTable.*', 0, NULL, NULL, 'N;'),
('Branch.*', 0, NULL, NULL, 'N;'),
('Category.*', 0, NULL, NULL, 'N;'),
('City.*', 0, NULL, NULL, 'N;'),
('Country.*', 0, NULL, NULL, 'N;'),
('Department.*', 0, NULL, NULL, 'N;'),
('Division.*', 0, NULL, NULL, 'N;'),
('Employee', 2, 'Employee of the college', NULL, 'N;'),
('EmployeeDesignation.*', 0, NULL, NULL, 'N;'),
('EmployeeTransaction.*', 0, NULL, NULL, 'N;'),
('FeedbackDetails.*', 0, NULL, NULL, 'N;'),
('FeedbackMaster.*', 0, NULL, NULL, 'N;'),
('FeesDetailsTable.*', 0, NULL, NULL, 'N;'),
('FeesMaster.*', 0, NULL, NULL, 'N;'),
('FeesMasterTransaction.*', 0, NULL, NULL, 'N;'),
('FeesPaymentTransaction.*', 0, NULL, NULL, 'N;'),
('FeesPaymentType.*', 0, NULL, NULL, 'N;'),
('FeesReceipt.*', 0, NULL, NULL, 'N;'),
('Guest', 2, NULL, NULL, 'N;'),
('Inward.*', 0, NULL, NULL, 'N;'),
('InwardDetails.*', 0, NULL, NULL, 'N;'),
('ItemCategory.*', 0, NULL, NULL, 'N;'),
('Languages.*', 0, NULL, NULL, 'N;'),
('LanguagesKnown.*', 0, NULL, NULL, 'N;'),
('Nationality.*', 0, NULL, NULL, 'N;'),
('Organization.*', 0, NULL, NULL, 'N;'),
('Outward.*', 0, NULL, NULL, 'N;'),
('OutwardDetails.*', 0, NULL, NULL, 'N;'),
('Qualification.*', 0, NULL, NULL, 'N;'),
('Quota.*', 0, NULL, NULL, 'N;'),
('Religion.*', 0, NULL, NULL, 'N;'),
('Sadmin', 2, 'Sadmin of the college', NULL, 'N;'),
('Shift.*', 0, NULL, NULL, 'N;'),
('Site.*', 0, NULL, NULL, 'N;'),
('State.*', 0, NULL, NULL, 'N;'),
('Student', 2, 'Student of the college', NULL, 'N;'),
('StudentTransaction.*', 0, NULL, NULL, 'N;'),
('SubjectMaster.*', 0, NULL, NULL, 'N;'),
('SubjectType.*', 0, NULL, NULL, 'N;'),
('SuperAdmin', 2, NULL, NULL, 'N;'),
('VisitorPass.*', 0, NULL, NULL, 'N;'),
('Year.*', 0, NULL, NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `AuthItemChild`
--

CREATE TABLE IF NOT EXISTS `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AuthItemChild`
--

INSERT INTO `AuthItemChild` (`parent`, `child`) VALUES
('Admin', 'AcademicTermPeriod.*'),
('Admin', 'AssignCompanyUserTable.*'),
('Admin', 'AssignSubject.*'),
('Admin', 'BankMaster.*'),
('Admin', 'Batch.*'),
('Admin', 'BlockUserTable.*'),
('Admin', 'Branch.*'),
('Admin', 'Category.*'),
('Admin', 'City.*'),
('Admin', 'Country.*'),
('Admin', 'Department.*'),
('Admin', 'Division.*'),
('Admin', 'EmployeeDesignation.*'),
('Admin', 'EmployeeTransaction.*'),
('Admin', 'FeedbackDetails.*'),
('Admin', 'FeedbackMaster.*'),
('Admin', 'FeesDetailsTable.*'),
('Admin', 'FeesMaster.*'),
('Admin', 'FeesMasterTransaction.*'),
('Admin', 'FeesPaymentTransaction.*'),
('Admin', 'FeesPaymentType.*'),
('Admin', 'FeesReceipt.*'),
('Admin', 'Inward.*'),
('Admin', 'InwardDetails.*'),
('Admin', 'ItemCategory.*'),
('Admin', 'Languages.*'),
('Admin', 'LanguagesKnown.*'),
('Admin', 'Nationality.*'),
('Admin', 'Organization.*'),
('Admin', 'Outward.*'),
('Admin', 'OutwardDetails.*'),
('Admin', 'Qualification.*'),
('Admin', 'Quota.*'),
('Admin', 'Religion.*'),
('Admin', 'Shift.*'),
('Admin', 'Site.*'),
('Admin', 'State.*'),
('Admin', 'StudentTransaction.*'),
('Admin', 'SubjectMaster.*'),
('Admin', 'SubjectType.*'),
('Admin', 'VisitorPass.*'),
('Admin', 'Year.*');

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE IF NOT EXISTS `bank_master` (
  `bank_id` int(3) NOT NULL AUTO_INCREMENT,
  `bank_full_name` varchar(100) NOT NULL,
  `bank_short_name` varchar(15) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `batch_id` int(2) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(60) NOT NULL,
  `batch_organization_id` int(2) NOT NULL,
  `batch_created_by` int(3) NOT NULL,
  `batch_creation_date` datetime NOT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `block_user_table`
--

CREATE TABLE IF NOT EXISTS `block_user_table` (
  `block_user_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_table_user_id` int(5) NOT NULL,
  PRIMARY KEY (`block_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branch_id` int(2) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch_organization_id` int(2) NOT NULL,
  `branch_created_by` int(3) NOT NULL,
  `branch_creation_date` date NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_organization_id`, `branch_created_by`, `branch_creation_date`) VALUES
(1, 'Civil Engineering', 1, 2, '2012-05-15'),
(2, 'Mechanical Engineering', 1, 2, '2012-05-15'),
(3, 'Electrical Engineering', 1, 2, '2012-05-15'),
(4, 'Computer Engineering', 1, 2, '2012-05-15'),
(7, 'Electronics & Communication Engineering', 1, 2, '2012-05-15'),
(8, 'Admin', 1, 2, '2012-05-15'),
(9, 'NA', 1, 2, '2012-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(2) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(60) NOT NULL,
  `category_organization_id` int(2) NOT NULL,
  `category_created_by` int(3) NOT NULL,
  `category_created_date` datetime NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_organization_id`, `category_created_by`, `category_created_date`) VALUES
(1, 'Open', 1, 2, '2012-05-15 18:30:39'),
(2, 'S.E.B.C./O.B.C.', 1, 2, '2012-05-15 18:30:58'),
(3, 'S.C.', 1, 2, '2012-05-15 18:31:17'),
(4, 'S.T.', 1, 2, '2012-05-15 18:31:34'),
(5, 'P.H.', 1, 2, '2012-05-15 18:31:50'),
(6, 'Ex. Serviceman', 1, 2, '2012-05-15 18:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(30) NOT NULL DEFAULT '0',
  `city_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(30) NOT NULL,
  `state_id` int(30) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `country_id`, `state_id`) VALUES
(1, 'Adalaj', 106, 10),
(2, 'Adityana', 106, 10),
(3, 'Ahmadabad', 106, 10),
(4, 'Alang', 106, 10),
(5, 'Ambaji', 106, 10),
(6, 'Ambaliyasan', 106, 10),
(7, 'Amreli', 106, 10),
(8, 'Anand', 106, 10),
(9, 'Andada', 106, 10),
(10, 'Anjar', 106, 10),
(11, 'Anklav', 106, 10),
(12, 'Anklesvar', 106, 10),
(13, 'Antaliya', 106, 10),
(14, 'Arambhada', 106, 10),
(15, 'Atul', 106, 10),
(16, 'Bagasara', 106, 10),
(17, 'Balasinor', 106, 10),
(18, 'Bantwa', 106, 10),
(19, 'Bardoli', 106, 10),
(20, 'Bavla', 106, 10),
(21, 'Bhachau', 106, 10),
(22, 'Bhanvad', 106, 10),
(23, 'Bharuch', 106, 10),
(24, 'Bhavnagar', 106, 10),
(25, 'Bhayavadar', 106, 10),
(26, 'Bhuj', 106, 10),
(27, 'Bilimora', 106, 10),
(28, 'Bodeli', 106, 10),
(29, 'Boriavi', 106, 10),
(30, 'Borsad', 106, 10),
(31, 'Botad', 106, 10),
(32, 'Chaklasi', 106, 10),
(33, 'Chala', 106, 10),
(34, 'Chalala', 106, 10),
(35, 'Chalthan', 106, 10),
(36, 'Chanasma', 106, 10),
(37, 'Chanod', 106, 10),
(38, 'Chhatral', 106, 10),
(39, 'Chhota Udaipur', 106, 10),
(40, 'Chikhli', 106, 10),
(41, 'Chiloda', 106, 10),
(42, 'Chorvad', 106, 10),
(43, 'Dabhoi', 106, 10),
(44, 'Dakor', 106, 10),
(45, 'Damnagar', 106, 10),
(46, 'Deesa', 106, 10),
(47, 'Dehgam', 106, 10),
(48, 'Devgadbaria', 106, 10),
(49, 'Devsar', 106, 10),
(50, 'Dhandhuka', 106, 10),
(51, 'Dhanera', 106, 10),
(52, 'Dharampur', 106, 10),
(53, 'Dhola', 106, 10),
(54, 'Dholka', 106, 10),
(55, 'Dhoraji', 106, 10),
(56, 'Dhrangadhra', 106, 10),
(57, 'Dhrol', 106, 10),
(58, 'Digvijaygram', 106, 10),
(59, 'Dohad', 106, 10),
(60, 'Dungra', 106, 10),
(61, 'Dwarka', 106, 10),
(62, 'Gadhada', 106, 10),
(63, 'Gandevi', 106, 10),
(64, 'Gandhidham', 106, 10),
(65, 'Gandhinagar', 106, 10),
(66, 'Gariadhar', 106, 10),
(67, 'Ghogha', 106, 10),
(68, 'Godhra', 106, 10),
(69, 'Gondal', 106, 10),
(70, 'Hajira', 106, 10),
(71, 'Halol', 106, 10),
(72, 'Halvad', 106, 10),
(73, 'Harij', 106, 10),
(74, 'Himatnagar', 106, 10),
(75, 'Idar', 106, 10),
(76, 'Jafrabad', 106, 10),
(77, 'Jambusar', 106, 10),
(78, 'Jamjodhpur', 106, 10),
(79, 'Jamnagar', 106, 10),
(80, 'Jasdan', 106, 10),
(81, 'Jetpur Navagadh', 106, 10),
(82, 'Jhalod', 106, 10),
(83, 'Junagadh', 106, 10),
(84, 'Kadi', 106, 10),
(85, 'Kadodara', 106, 10),
(86, 'Kalavad', 106, 10),
(87, 'Kalol', 106, 10),
(88, 'Kandla', 106, 10),
(89, 'Kanodar', 106, 10),
(90, 'Kapadvanj', 106, 10),
(91, 'Karjan', 106, 10),
(92, 'Katpar', 106, 10),
(93, 'Keshod', 106, 10),
(94, 'Kevadiya', 106, 10),
(95, 'Khambhalia', 106, 10),
(96, 'Khambhat', 106, 10),
(97, 'Kharaghoda', 106, 10),
(98, 'Kheda', 106, 10),
(99, 'Khedbrahma', 106, 10),
(100, 'Kheralu', 106, 10),
(101, 'Kodinar', 106, 10),
(102, 'Kosamba', 106, 10),
(103, 'Kutiyana', 106, 10),
(104, 'Lathi', 106, 10),
(105, 'Limbdi', 106, 10),
(106, 'Limla', 106, 10),
(107, 'Lunawada', 106, 10),
(108, 'Mahesana', 106, 10),
(109, 'Mahudha', 106, 10),
(110, 'Mahuva', 106, 10),
(111, 'Mahuvar', 106, 10),
(112, 'Malpur', 106, 10),
(113, 'Manavadar', 106, 10),
(114, 'Mandvi', 106, 10),
(115, 'Mangrol', 106, 10),
(116, 'Mansa', 106, 10),
(117, 'Meghraj', 106, 10),
(118, 'Mehmedabad', 106, 10),
(119, 'Mithapur', 106, 10),
(120, 'Modasa', 106, 10),
(121, 'Morvi', 106, 10),
(122, 'Mundra', 106, 10),
(123, 'Nadiad', 106, 10),
(124, 'Nandej', 106, 10),
(125, 'Navsari', 106, 10),
(126, 'Ode', 106, 10),
(127, 'Okha', 106, 10),
(128, 'Paddhari', 106, 10),
(129, 'Padra', 106, 10),
(130, 'Palanpur', 106, 10),
(131, 'Palej', 106, 10),
(132, 'Palitana', 106, 10),
(133, 'Pardi', 106, 10),
(134, 'Parnera', 106, 10),
(135, 'Patan', 106, 10),
(136, 'Petlad', 106, 10),
(137, 'Porbandar', 106, 10),
(138, 'Prantij', 106, 10),
(139, 'Radhanpur', 106, 10),
(140, 'Rajkot', 106, 10),
(141, 'Rajpipla', 106, 10),
(142, 'Rajula', 106, 10),
(143, 'Ranavav', 106, 10),
(144, 'Rapar', 106, 10),
(145, 'Salaya', 106, 10),
(146, 'Sanand', 106, 10),
(147, 'Santrampur', 106, 10),
(148, 'Sarigam', 106, 10),
(149, 'Savarkundla', 106, 10),
(150, 'Sayan', 106, 10),
(151, 'Sidhpur', 106, 10),
(152, 'Sihor', 106, 10),
(153, 'Sikka', 106, 10),
(154, 'Songadh', 106, 10),
(155, 'Surajkaradi', 106, 10),
(156, 'Surat', 106, 10),
(157, 'Talaja', 106, 10),
(158, 'Talod', 106, 10),
(159, 'Thangadh', 106, 10),
(160, 'Tharad', 106, 10),
(161, 'Ukai', 106, 10),
(162, 'Umbergaon', 106, 10),
(163, 'Umreth', 106, 10),
(164, 'Una', 106, 10),
(165, 'Unjha', 106, 10),
(166, 'Upleta', 106, 10),
(167, 'Vadia', 106, 10),
(168, 'Vadnagar', 106, 10);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(30) NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'AFGHANISTAN'),
(2, 'ALBANIA'),
(3, 'ALGERIA'),
(4, 'AMERICAN SAMOA'),
(5, 'ANDORRA'),
(6, 'ANGOLA'),
(7, 'ANGUILLA'),
(8, 'AFGHANISTAN'),
(9, 'ALBANIA'),
(10, 'ALGERIA'),
(11, 'AMERICAN SAMOA'),
(12, 'ANDORRA'),
(13, 'ANGOLA'),
(14, 'ANGUILLA'),
(15, 'ANTARCTICA'),
(16, 'ANTIGUA AND BARBUDA'),
(17, 'ARGENTINA'),
(18, 'ARMENIA'),
(19, 'ARUBA'),
(20, 'AUSTRALIA'),
(21, 'AUSTRIA'),
(22, 'AZERBAIJAN'),
(23, 'BAHAMAS'),
(24, 'BAHRAIN'),
(25, 'BANGLADESH'),
(26, 'BARBADOS'),
(27, 'BELARUS'),
(28, 'BELGIUM'),
(29, 'BELIZE'),
(30, 'BENIN'),
(31, 'BERMUDA'),
(32, 'BHUTAN'),
(33, 'BOLIVIA'),
(34, 'BOSNIA AND HERZEGOVINA'),
(35, 'BOTSWANA'),
(36, 'BOUVET ISLAND'),
(37, 'BRAZIL'),
(38, 'BRITISH INDIAN OCEAN TERRITORY'),
(39, 'BRUNEI DARUSSALAM'),
(40, 'BULGARIA'),
(41, 'BURKINA FASO'),
(42, 'BURUNDI'),
(43, 'CAMBODIA'),
(44, 'CAMEROON'),
(45, 'CANADA'),
(46, 'CAPE VERDE'),
(47, 'CAYMAN ISLANDS'),
(48, 'CENTRAL AFRICAN REPUBLIC'),
(49, 'CHAD'),
(50, 'CHILE'),
(51, 'CHINA'),
(52, 'CHRISTMAS ISLAND'),
(53, 'COCOS (KEELING) ISLANDS'),
(54, 'COLOMBIA'),
(55, 'COMOROS'),
(56, 'CONGO'),
(57, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE'),
(58, 'COOK ISLANDS'),
(59, 'COSTA RICA'),
(60, 'COTE D''IVOIRE'),
(61, 'CROATIA'),
(62, 'CUBA'),
(63, 'CYPRUS'),
(64, 'CZECH REPUBLIC'),
(65, 'DENMARK'),
(66, 'DJIBOUTI'),
(67, 'DOMINICA'),
(68, 'DOMINICAN REPUBLIC'),
(69, 'ECUADOR'),
(70, 'EGYPT'),
(71, 'EL SALVADOR'),
(72, 'EQUATORIAL GUINEA'),
(73, 'ERITREA'),
(74, 'ESTONIA'),
(75, 'ETHIOPIA'),
(76, 'FALKLAND ISLANDS (MALVINAS)'),
(77, 'FAROE ISLANDS'),
(78, 'FIJI'),
(79, 'FINLAND'),
(80, 'FRANCE'),
(81, 'FRENCH GUIANA'),
(82, 'FRENCH POLYNESIA'),
(83, 'FRENCH SOUTHERN TERRITORIES'),
(84, 'GABON'),
(85, 'GAMBIA'),
(86, 'GEORGIA'),
(87, 'GERMANY'),
(88, 'GHANA'),
(89, 'GIBRALTAR'),
(90, 'GREECE'),
(91, 'GREENLAND'),
(92, 'GRENADA'),
(93, 'GUADELOUPE'),
(94, 'GUAM'),
(95, 'GUATEMALA'),
(96, 'GUINEA'),
(97, 'GUINEA-BISSAU'),
(98, 'GUYANA'),
(99, 'HAITI'),
(100, 'HEARD ISLAND AND MCDONALD ISLANDS'),
(101, 'HOLY SEE (VATICAN CITY STATE)'),
(102, 'HONDURAS'),
(103, 'HONG KONG'),
(104, 'HUNGARY'),
(105, 'ICELAND'),
(106, 'INDIA'),
(108, 'IRAN, ISLAMIC REPUBLIC OF'),
(109, 'IRAQ'),
(110, 'IRELAND'),
(111, 'ISRAEL'),
(112, 'ITALY'),
(113, 'JAMAICA'),
(114, 'JAPAN'),
(115, 'JORDAN'),
(116, 'KAZAKHSTAN'),
(117, 'KENYA'),
(118, 'KIRIBATI'),
(119, 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF'),
(120, 'KOREA, REPUBLIC OF'),
(121, 'KUWAIT'),
(122, 'KYRGYZSTAN'),
(123, 'LAO PEOPLE''S DEMOCRATIC REPUBLIC'),
(124, 'LATVIA'),
(125, 'LEBANON'),
(126, 'LESOTHO'),
(127, 'LIBERIA'),
(128, 'LIBYAN ARAB JAMAHIRIYA'),
(129, 'LIECHTENSTEIN'),
(130, 'LITHUANIA'),
(131, 'LUXEMBOURG'),
(132, 'MACAO'),
(133, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF'),
(134, 'MADAGASCAR'),
(135, 'MALAWI'),
(136, 'MALAYSIA'),
(137, 'MALDIVES'),
(138, 'MALI'),
(139, 'MALTA'),
(140, 'MARSHALL ISLANDS'),
(141, 'MARTINIQUE'),
(142, 'MAURITANIA'),
(143, 'MAURITIUS'),
(144, 'MAYOTTE'),
(145, 'MEXICO'),
(146, 'MICRONESIA, FEDERATED STATES OF'),
(147, 'MOLDOVA, REPUBLIC OF'),
(148, 'MONACO'),
(149, 'MONGOLIA'),
(150, 'MONTSERRAT'),
(151, 'MOROCCO'),
(152, 'MOZAMBIQUE'),
(153, 'MYANMAR'),
(154, 'NAMIBIA'),
(155, 'NAURU'),
(156, 'NEPAL'),
(157, 'NETHERLANDS'),
(158, 'NETHERLANDS ANTILLES'),
(159, 'NEW CALEDONIA'),
(160, 'NEW ZEALAND'),
(161, 'NICARAGUA'),
(162, 'NIGER'),
(163, 'NIGERIA'),
(164, 'NIUE'),
(165, 'NORFOLK ISLAND'),
(166, 'NORTHERN MARIANA ISLANDS'),
(167, 'NORWAY'),
(168, 'OMAN'),
(169, 'PAKISTAN'),
(170, 'PALAU'),
(171, 'PALESTINIAN TERRITORY, OCCUPIED'),
(172, 'PANAMA'),
(173, 'PAPUA NEW GUINEA'),
(174, 'PARAGUAY'),
(175, 'PERU'),
(176, 'PHILIPPINES'),
(177, 'PITCAIRN'),
(178, 'POLAND'),
(179, 'PORTUGAL'),
(180, 'PUERTO RICO'),
(181, 'QATAR'),
(182, 'REUNION'),
(183, 'ROMANIA'),
(184, 'RUSSIAN FEDERATION'),
(185, 'RWANDA'),
(186, 'SAINT HELENA'),
(187, 'SAINT KITTS AND NEVIS'),
(188, 'SAINT LUCIA'),
(189, 'SAINT PIERRE AND MIQUELON'),
(190, 'SAINT VINCENT AND THE GRENADINES'),
(191, 'SAMOA'),
(192, 'SAN MARINO'),
(193, 'SAO TOME AND PRINCIPE'),
(194, 'SAUDI ARABIA'),
(195, 'SENEGAL'),
(196, 'SERBIA AND MONTENEGRO'),
(197, 'SEYCHELLES'),
(198, 'SIERRA LEONE'),
(199, 'SINGAPORE'),
(200, 'SLOVAKIA'),
(201, 'SLOVENIA'),
(202, 'SOLOMON ISLANDS'),
(203, 'SOMALIA'),
(204, 'SOUTH AFRICA'),
(205, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS'),
(206, 'SPAIN'),
(207, 'SRI LANKA'),
(208, 'SUDAN'),
(209, 'SURINAME'),
(210, 'SVALBARD AND JAN MAYEN'),
(211, 'SWAZILAND'),
(212, 'SWEDEN'),
(213, 'SWITZERLAND'),
(214, 'SYRIAN ARAB REPUBLIC'),
(215, 'TAIWAN, PROVINCE OF CHINA'),
(216, 'TAJIKISTAN'),
(217, 'TANZANIA, UNITED REPUBLIC OF'),
(218, 'THAILAND'),
(219, 'TIMOR-LESTE'),
(220, 'TOGO'),
(221, 'TOKELAU'),
(222, 'TONGA'),
(223, 'TRINIDAD AND TOBAGO'),
(224, 'TUNISIA'),
(225, 'TURKEY'),
(226, 'TURKMENISTAN'),
(227, 'TURKS AND CAICOS ISLANDS'),
(228, 'TUVALU'),
(229, 'UGANDA'),
(230, 'UKRAINE'),
(231, 'UNITED ARAB EMIRATES'),
(232, 'UNITED KINGDOM'),
(233, 'UNITED STATES'),
(234, 'UNITED STATES MINOR OUTLYING ISLANDS'),
(235, 'URUGUAY'),
(236, 'UZBEKISTAN'),
(237, 'VANUATU'),
(238, 'VENEZUELA'),
(239, 'VIET NAM'),
(240, 'VIRGIN ISLANDS, BRITISH'),
(241, 'VIRGIN ISLANDS, U.S.'),
(242, 'WALLIS AND FUTUNA'),
(243, 'WESTERN SAHARA'),
(244, 'YEMEN'),
(245, 'ZAMBIA'),
(246, 'ZIMBABWE');

-- --------------------------------------------------------

--
-- Table structure for table `currency_denomination`
--

CREATE TABLE IF NOT EXISTS `currency_denomination` (
  `currency_denomination_id` int(7) NOT NULL AUTO_INCREMENT,
  `currency_denomination_name` int(3) NOT NULL,
  PRIMARY KEY (`currency_denomination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `currency_transaction`
--

CREATE TABLE IF NOT EXISTS `currency_transaction` (
  `currency_transaction` int(7) NOT NULL AUTO_INCREMENT,
  `fees_payment_cash_id` int(7) NOT NULL,
  ` currency_transanction_currency_value_id` int(7) NOT NULL,
  `currency_denomination_id` int(7) NOT NULL,
  PRIMARY KEY (`currency_transaction`),
  KEY `fk_tracurrency` (`fees_payment_cash_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `currency_value`
--

CREATE TABLE IF NOT EXISTS `currency_value` (
  `currency_value_id` int(7) NOT NULL AUTO_INCREMENT,
  `currency_value_value` int(4) NOT NULL,
  PRIMARY KEY (`currency_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_page`
--

CREATE TABLE IF NOT EXISTS `dashboard_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `path` varchar(1000) DEFAULT NULL,
  `weight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_portlet`
--

CREATE TABLE IF NOT EXISTS `dashboard_portlet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dashboard` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dashboard_portlet`
--

INSERT INTO `dashboard_portlet` (`id`, `dashboard`, `uid`, `settings`) VALUES
(2, 0, 1, 'a:7:{s:4:"News";a:4:{s:6:"column";i:0;s:6:"weight";i:0;s:7:"portlet";s:4:"News";s:7:"visible";b:1;}s:6:"Forums";a:4:{s:6:"column";i:0;s:6:"weight";i:1;s:7:"portlet";s:6:"Forums";s:7:"visible";b:1;}s:8:"Messages";a:4:{s:6:"column";i:0;s:6:"weight";i:2;s:7:"portlet";s:8:"Messages";s:7:"visible";b:1;}s:5:"Blogs";a:4:{s:6:"column";i:0;s:6:"weight";i:3;s:7:"portlet";s:5:"Blogs";s:7:"visible";b:1;}s:8:"Calendar";a:4:{s:6:"column";i:0;s:6:"weight";i:4;s:7:"portlet";s:8:"Calendar";s:7:"visible";b:1;}s:7:"Karmraj";a:4:{s:6:"column";i:0;s:6:"weight";i:5;s:7:"portlet";s:7:"Karmraj";s:7:"visible";b:0;}s:8:"Holidays";a:4:{s:6:"column";i:0;s:6:"weight";i:6;s:7:"portlet";s:8:"Holidays";s:7:"visible";b:1;}}');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(3) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(60) NOT NULL,
  `department_organization_id` int(2) NOT NULL,
  `department_created_by` int(2) NOT NULL,
  `department_created_date` datetime NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_organization_id`, `department_created_by`, `department_created_date`) VALUES
(1, 'Civil Engineering Department', 1, 2, '2012-05-15 18:26:45'),
(2, 'Mechanical Engineering Department', 1, 2, '2012-05-15 18:33:09'),
(3, 'Electrical Engineering Department', 1, 2, '2012-05-15 18:33:25'),
(4, 'Computer Engineering Department', 1, 2, '2012-05-15 18:33:42'),
(5, 'Electronics & Communication Engineering Department', 1, 2, '2012-05-15 18:34:00'),
(6, 'General Department', 1, 2, '2012-05-15 18:34:14'),
(7, 'Account Department', 1, 2, '2012-05-15 19:01:58'),
(8, 'Library', 1, 2, '2012-05-17 12:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE IF NOT EXISTS `division` (
  `division_id` int(2) NOT NULL AUTO_INCREMENT,
  `division_name` varchar(60) NOT NULL,
  `division_organization_id` int(2) NOT NULL,
  `division_created_by` int(3) NOT NULL,
  `division_creation_date` datetime NOT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`division_id`, `division_name`, `division_organization_id`, `division_created_by`, `division_creation_date`) VALUES
(1, 'Civil Engineering(Div-A)', 1, 2, '2012-05-15 18:29:04'),
(2, 'Mechanical Engineering(Div-B)', 1, 2, '2012-05-15 18:35:17'),
(3, 'Electrical Engineering(Div-C)', 1, 2, '2012-05-15 18:35:35'),
(4, 'Computer Engineering(Div-D)', 1, 2, '2012-05-15 18:35:55'),
(5, 'Electronics & Communication Engineering(Div-E)', 1, 2, '2012-05-15 18:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `eduboard`
--

CREATE TABLE IF NOT EXISTS `eduboard` (
  `eduboard_id` int(2) NOT NULL AUTO_INCREMENT,
  `eduboard_name` varchar(30) NOT NULL,
  `eduboard_organization_id` int(2) NOT NULL,
  `eduboard_created_by` int(3) NOT NULL,
  `eduboard_created_date` datetime NOT NULL,
  PRIMARY KEY (`eduboard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_academic_record_trans`
--

CREATE TABLE IF NOT EXISTS `employee_academic_record_trans` (
  `employee_academic_record_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_academic_record_trans_user_id` int(5) NOT NULL,
  `employee_academic_record_trans_qualification_id` int(5) NOT NULL,
  `employee_academic_record_trans_eduboard_id` int(5) NOT NULL,
  `employee_academic_record_trans_emp_marks_id` int(5) NOT NULL,
  `employee_academic_record_trans_year_id` int(5) NOT NULL,
  PRIMARY KEY (`employee_academic_record_trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_address`
--

CREATE TABLE IF NOT EXISTS `employee_address` (
  `employee_address_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_address_c_line1` varchar(50) NOT NULL,
  `employee_address_c_line2` varchar(50) NOT NULL,
  `employee_address_c_city` int(9) NOT NULL,
  `employee_address_c_pincode` int(6) NOT NULL,
  `employee_address_c_state` int(9) NOT NULL,
  `employee_address_c_country` int(9) NOT NULL,
  `employee_address_p_line1` varchar(50) NOT NULL,
  `employee_address_p_line2` varchar(50) NOT NULL,
  `employee_address_p_city` int(9) NOT NULL,
  `employee_address_p_pincode` int(6) NOT NULL,
  `employee_address_p_state` int(9) NOT NULL,
  `employee_address_p_country` int(9) NOT NULL,
  `employee_address_phone` int(15) NOT NULL,
  `employee_address_mobile` int(15) NOT NULL,
  PRIMARY KEY (`employee_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `employee_address`
--

INSERT INTO `employee_address` (`employee_address_id`, `employee_address_c_line1`, `employee_address_c_line2`, `employee_address_c_city`, `employee_address_c_pincode`, `employee_address_c_state`, `employee_address_c_country`, `employee_address_p_line1`, `employee_address_p_line2`, `employee_address_p_city`, `employee_address_p_pincode`, `employee_address_p_state`, `employee_address_p_country`, `employee_address_phone`, `employee_address_mobile`) VALUES
(1, 'Bahuchar nagar society', 'Dethali road', 151, 384151, 10, 106, 'Bahuchar nagar society', 'Dethali road', 151, 384151, 10, 106, 0, 0),
(2, '4, RADHASWAMI BUNGLOWS', 'B/H BIG BAZAR', 8, 388001, 10, 106, '4, RADHASWAMI BUNGLOWS', 'B/H BIG BAZAR', 8, 388001, 10, 106, 2147483647, 1111),
(3, 'MOTISARA,', ' DR. AMBEDKAR CHOWK', 135, 384265, 10, 106, 'MOTISARA,', ' DR. AMBEDKAR CHOWK', 135, 384265, 10, 106, 1111, 1111),
(4, '"SNEH-KUNJ" BHADRA', 'B/H DUTT MANDIR', 135, 384265, 10, 106, '"SNEH-KUNJ" BHADRA', 'B/H DUTT MANDIR', 135, 384265, 10, 106, 2147483647, 1111),
(5, 'OPP.DEASI STREET,', 'RUDRA MAHALAY ROAD', 151, 384151, 10, 106, 'OPP.DEASI STREET,', 'RUDRA MAHALAY ROAD', 151, 384151, 10, 106, 1111, 1111),
(6, '14,BALAJI PARAK SOCIETY,', 'B/H G.E.B. SUB STATION', 135, 384265, 10, 106, '14,BALAJI PARAK SOCIETY,', 'B/H G.E.B. SUB STATION', 135, 384265, 10, 106, 1111, 1111),
(7, '2,SHAKTIKUNJ SOCIETY,', 'NR. SAMJUBA HOSPITAL', 3, 380024, 10, 106, '2,SHAKTIKUNJ SOCIETY,', 'NR. SAMJUBA HOSPITAL', 3, 380024, 10, 106, 2147483647, 1111),
(8, '12/13 HARIOM BUNGLOWS,', 'B/H DHARAM CINEMA', 108, 384002, 10, 106, '12/13 HARIOM BUNGLOWS,', 'B/H DHARAM CINEMA', 108, 384002, 10, 106, 1111, 1111),
(9, 'NEELKAMAL APPARTMENT', 'H.L.COLLEGE', 3, 380003, 10, 106, 'NEELKAMAL APPARTMENT', 'H.L.COLLEGE', 3, 380003, 10, 106, 1, 1),
(10, 'NEAR GANPATI TAMPLE', 'AITHOR', 151, 384175, 10, 106, 'NEAR GANPATI TAMPLE', 'AITHOR', 151, 384175, 10, 106, 1, 1),
(11, '13/ HAREKRISHANA', 'RADHANPUR', 139, 385340, 10, 106, '13/ HAREKRISHANA', 'RADHANPUR', 139, 385340, 10, 106, 2147483647, 1111),
(12, '45/SIDDHHEMNAGAR SOCIETY', 'OPP. R.M.PETROL PUMP', 135, 384265, 10, 106, '45/SIDDHHEMNAGAR SOCIETY', 'OPP. R.M.PETROL PUMP', 135, 384265, 10, 106, 1, 1),
(13, '129, CHANAKYAPURI SOCIETY', 'SUKHBAGH ROAD', 130, 385001, 10, 106, '129, CHANAKYAPURI SOCIETY', 'SUKHBAGH ROAD', 130, 385001, 10, 106, 1, 1),
(14, '19,ANKIT SOCIETY', 'B/H NEESARG HONDA SHOWROOM', 130, 385001, 10, 106, '19,ANKIT SOCIETY', 'B/H NEESARG HONDA SHOWROOM', 130, 385001, 10, 106, 1, 0),
(15, 'PLOT NO 148412,SECTOR:3-D', 'GANDHINAGAR', 65, 384265, 10, 106, 'PLOT NO 148412,SECTOR:3-D', 'GANDHINAGAR', 65, 384265, 10, 106, 0, 0),
(16, 'MOTANO VAS', 'HINGLACHACHAR', 135, 385001, 10, 106, 'MOTANO VAS', 'HINGLACHACHAR', 135, 385001, 10, 106, 0, 0),
(17, 'KAMNIYAPARU,', 'NEAR GYMKHANA', 165, 0, 10, 106, 'KAMNIYAPARU,', 'NEAR GYMKHANA', 165, 0, 10, 106, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_designation`
--

CREATE TABLE IF NOT EXISTS `employee_designation` (
  `employee_designation_id` int(2) NOT NULL AUTO_INCREMENT,
  `employee_designation_name` varchar(25) NOT NULL,
  `employee_designation_organization_id` int(2) NOT NULL,
  `employee_designation_created_by` int(3) NOT NULL,
  `employee_designation_created_date` datetime NOT NULL,
  PRIMARY KEY (`employee_designation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `employee_designation`
--

INSERT INTO `employee_designation` (`employee_designation_id`, `employee_designation_name`, `employee_designation_organization_id`, `employee_designation_created_by`, `employee_designation_created_date`) VALUES
(1, 'Director', 1, 2, '2012-05-15 18:36:49'),
(2, 'Principal', 1, 2, '2012-05-15 18:37:04'),
(3, 'Professor', 1, 2, '2012-05-15 18:37:18'),
(4, 'Associate Professor', 1, 2, '2012-05-15 18:37:37'),
(5, 'Assistant Professor', 1, 2, '2012-05-15 18:37:57'),
(6, 'Pro-Term Lecturer', 1, 2, '2012-05-15 18:38:12'),
(7, 'Visiting Faculty', 1, 2, '2012-05-15 18:38:30'),
(8, 'Workshop Superintendent', 1, 2, '2012-05-15 18:38:43'),
(9, 'Lab Assistant', 1, 2, '2012-05-15 18:39:02'),
(10, 'Instructor- Carpentry', 1, 2, '2012-05-15 18:39:16'),
(11, 'Instructor-Fitting', 1, 2, '2012-05-15 18:39:31'),
(12, 'Machinist', 1, 2, '2012-05-15 18:39:46'),
(13, 'Estate Engineer', 1, 2, '2012-05-15 18:40:02'),
(14, 'Civil Supervisor', 1, 2, '2012-05-15 18:40:17'),
(15, 'Electrician', 1, 2, '2012-05-15 18:40:31'),
(16, 'Administrative Officer', 1, 2, '2012-05-15 18:40:44'),
(17, 'Office Superintendent', 1, 2, '2012-05-15 18:41:00'),
(18, 'P.A. to Director', 1, 2, '2012-05-15 18:41:20'),
(19, 'Office Assistant', 1, 2, '2012-05-15 18:41:35'),
(20, 'Librarian', 1, 2, '2012-05-15 18:41:46'),
(21, 'Assistant Librarian', 1, 2, '2012-05-15 18:41:58'),
(22, 'Library Assistant', 1, 2, '2012-05-15 18:42:14'),
(23, 'Peon', 1, 2, '2012-05-15 18:42:50'),
(24, 'Swipper', 1, 2, '2012-05-15 18:43:04'),
(25, 'Gardener', 1, 2, '2012-05-15 18:43:17'),
(26, 'Watchman', 1, 2, '2012-05-15 18:43:31'),
(27, 'Accountant', 1, 2, '2012-05-15 19:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `employee_docs`
--

CREATE TABLE IF NOT EXISTS `employee_docs` (
  `employee_docs_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_docs_desc` varchar(50) DEFAULT NULL,
  `employee_docs_path` varchar(150) NOT NULL,
  PRIMARY KEY (`employee_docs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `employee_docs`
--

INSERT INTO `employee_docs` (`employee_docs_id`, `employee_docs_desc`, `employee_docs_path`) VALUES
(1, NULL, 'logo.png'),
(2, NULL, 'logo.png'),
(3, NULL, 's.txt'),
(4, NULL, 'IMG_7076.JPG'),
(5, NULL, 'sms_api.pdf'),
(6, 'This is test layout', 'delete1.png'),
(7, 'ererw', 'Menu.png'),
(8, 'check validation', 'Menu.png'),
(9, 'Birth certificate', 'rudraSoftech.png'),
(10, 'Mark Sheet', 'delete1.png'),
(11, 'This is tst', ''),
(12, 'This is mudgkdfjk', ''),
(13, 'thisfnsdnidnif', ''),
(14, 'drgtfvjkfdgjkq', ''),
(15, 'full and final try', 'ok1.png'),
(16, 'Birth certificate', 'Menu.png'),
(17, 'full and final try', 'Login_bg1.png'),
(18, 'Test documents', 'titlebar-active.png'),
(19, 'dgfdfd', 'menu_bg.png'),
(20, 'dgfdfd', 'menu_bg.png'),
(21, 'dsfsd', 'ok1.png'),
(22, 'dfgdgd', 'Menu1.png'),
(23, 'test', 'rudraSoftech.png'),
(24, 'Test Documents', 'rs.png');

-- --------------------------------------------------------

--
-- Table structure for table `employee_docs_trans`
--

CREATE TABLE IF NOT EXISTS `employee_docs_trans` (
  `employee_docs_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_docs_trans_user_id` int(5) NOT NULL,
  `employee_docs_trans_emp_docs_id` int(5) NOT NULL,
  PRIMARY KEY (`employee_docs_trans_id`),
  KEY `fk_emp_docs_id` (`employee_docs_trans_emp_docs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `employee_docs_trans`
--

INSERT INTO `employee_docs_trans` (`employee_docs_trans_id`, `employee_docs_trans_user_id`, `employee_docs_trans_emp_docs_id`) VALUES
(2, 1, 17),
(3, 1, 18),
(8, 1, 23),
(9, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `employee_experience`
--

CREATE TABLE IF NOT EXISTS `employee_experience` (
  `employee_experience_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_experience_organization_name` varchar(50) NOT NULL,
  `employee_experience_designation` varchar(25) NOT NULL,
  `employee_experience_from` date NOT NULL,
  `employee_experience_to` date NOT NULL,
  PRIMARY KEY (`employee_experience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_experience_trans`
--

CREATE TABLE IF NOT EXISTS `employee_experience_trans` (
  `employee_experience_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_experience_trans_user_id` int(5) NOT NULL,
  `employee_experience_trans_emp_experience_id` int(5) NOT NULL,
  PRIMARY KEY (`employee_experience_trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE IF NOT EXISTS `employee_info` (
  `employee_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_no` varchar(10) NOT NULL,
  `employee_first_name` varchar(25) NOT NULL,
  `employee_middle_name` varchar(25) NOT NULL,
  `employee_last_name` varchar(25) NOT NULL,
  `employee_name_alias` varchar(10) DEFAULT NULL,
  `employee_mother_name` varchar(25) NOT NULL,
  `employee_dob` date NOT NULL,
  `employee_birthplace` varchar(25) DEFAULT NULL,
  `employee_gender` varchar(6) NOT NULL,
  `employee_bloodgroup` varchar(3) NOT NULL,
  `employee_marital_status` varchar(10) NOT NULL,
  `employee_private_email` varchar(60) NOT NULL,
  `employee_organization_mobile` bigint(15) NOT NULL,
  `employee_private_mobile` bigint(15) NOT NULL,
  `employee_pancard_no` varchar(10) DEFAULT NULL,
  `employee_account_no` int(15) DEFAULT NULL,
  `employee_joining_date` date NOT NULL,
  `employee_probation_period` varchar(10) DEFAULT NULL,
  `employee_hobbies` text,
  `employee_technical_skills` text,
  `employee_project_details` text,
  `employee_curricular` text,
  `employee_reference` varchar(25) DEFAULT NULL,
  `employee_refer_designation` varchar(20) DEFAULT NULL,
  `employee_guardian_name` varchar(25) NOT NULL,
  `employee_guardian_relation` varchar(20) DEFAULT NULL,
  `employee_guardian_home_address` varchar(200) DEFAULT NULL,
  `employee_guardian_qualification` varchar(50) DEFAULT NULL,
  `employee_guardian_occupation` varchar(50) DEFAULT NULL,
  `employee_guardian_income` varchar(15) NOT NULL,
  `employee_guardian_occupation_address` varchar(200) NOT NULL,
  `employee_guardian_occupation_city` int(4) DEFAULT NULL,
  `employee_guardian_city_pin` int(6) DEFAULT NULL,
  `employee_guardian_phone_no` bigint(15) NOT NULL,
  `employee_guardian_mobile1` bigint(15) NOT NULL,
  `employee_guardian_mobile2` bigint(15) DEFAULT NULL,
  `employee_faculty_of` varchar(50) NOT NULL,
  `employee_attendance_card_id` varchar(15) NOT NULL,
  `employee_tally_id` varchar(9) NOT NULL,
  `employee_created_by` int(3) DEFAULT NULL,
  `employee_creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`employee_id`, `employee_no`, `employee_first_name`, `employee_middle_name`, `employee_last_name`, `employee_name_alias`, `employee_mother_name`, `employee_dob`, `employee_birthplace`, `employee_gender`, `employee_bloodgroup`, `employee_marital_status`, `employee_private_email`, `employee_organization_mobile`, `employee_private_mobile`, `employee_pancard_no`, `employee_account_no`, `employee_joining_date`, `employee_probation_period`, `employee_hobbies`, `employee_technical_skills`, `employee_project_details`, `employee_curricular`, `employee_reference`, `employee_refer_designation`, `employee_guardian_name`, `employee_guardian_relation`, `employee_guardian_home_address`, `employee_guardian_qualification`, `employee_guardian_occupation`, `employee_guardian_income`, `employee_guardian_occupation_address`, `employee_guardian_occupation_city`, `employee_guardian_city_pin`, `employee_guardian_phone_no`, `employee_guardian_mobile1`, `employee_guardian_mobile2`, `employee_faculty_of`, `employee_attendance_card_id`, `employee_tally_id`, `employee_created_by`, `employee_creation_date`) VALUES
(1, '1111', 'Jagdishsinh', 'Joravarsinh', 'Rana', '', 'Babuben', '2012-05-28', '', 'Male', 'O+', 'Married', 'jagdishsinh.rana@hansabacollege.com', 111111111, 9099054801, 'AIHPR 6808', 2147483647, '2012-05-09', '', 'NA', 'NA', 'NA', 'NA', '', '', 'Joravarsinh', 'Father', 'Sidhpur', 'B.Com', '', '15000', 'NA', 151, 384151, 11111, 11111, 11111, 'NA', '1111', '', 2, '2012-05-17 12:08:41'),
(2, '1111', 'Piyushkumar', 'Madhavlal', 'Patel', '', 'Dahiben', '1986-05-05', '', 'Male', 'O+', 'Married', 'pmpatel551986@gmail.com', 111111111, 9428879276, 'ATLPP 2042', 2147483647, '2011-12-07', '', 'NA', 'NA', 'NA', 'NA', '', '', 'Madhavlal', 'Father', 'NA', '', '', '00000', 'NA', 151, 384265, 11111, 11111, 11111, 'UG', '1111', '', 2, '2012-05-17 12:59:22'),
(3, '1111', 'Mehulkumar', 'Kiritbhai', 'Dethariya', '', 'Ramilaben', '1987-08-05', '', 'Male', 'O+', 'Married', 'mehul.dethariya@yahoo.com', 111111111, 9925957946, '', 2147483647, '2012-12-07', '', 'NA', 'NA', 'NA', 'NA', '', '', 'Kiritbhai', 'Father', 'NA', '', '', '00000', 'NA', 151, 384265, 11111, 11111, 11111, 'UG', '1111', '', 2, '2012-05-17 13:59:21'),
(4, '1111', 'Parth', 'Vikrambhai', 'Sandesara', '', 'Vasantiben', '1985-08-14', '', 'Male', 'O+', 'Married', 'parth_sandesara@yahoo.co.in', 111111111, 9925490230, 'BQKPS 8984', 2147483647, '0000-00-00', '', '', '', '', '', '', '', 'Vikrambhai', 'Father', 'NA', '', '', '0', 'NA', 151, 384151, 11111, 11111, 11111, 'NA', '1111', '', 2, '2012-05-17 14:25:20'),
(5, '1111', 'Sukrutkumar', 'Maheshkumar', 'Sompura', '', 'Geetaben', '2012-11-19', '', 'Male', 'O+', 'Married', 'sukrutbaps@yahoo.co.in', 111111111, 9726646708, '', 2147483647, '2012-08-11', '', 'NA', 'NA', 'NA', 'NA', '', '', 'Maheshkumar', 'Father', 'NA', '', '', '0', 'NA', 151, 385001, 11111, 11111, 11111, 'UG', '1111', '', 2, '2012-05-17 14:38:54'),
(6, '1111', 'Avani', 'Kiritbhai', 'Raval', '', 'Urmilaben', '1986-10-18', '', 'Female', 'O+', 'Married', 'ravalavani@yahoo.com', 111111111, 9898714568, 'ATLPP 2042', 2147483647, '0000-00-00', '', 'NA', 'NA', 'NA', 'NA', '', '', 'Kiritbhai', 'Father', 'NA', '', '', '0', 'NA', 151, 384002, 11111, 11111, 11111, 'UG', '1111', '', 2, '2012-05-17 17:10:43'),
(7, '1111', 'DARSHAN', 'POONAMBHAI', 'PATEL', '', 'VIMLABEN', '1984-02-05', '', 'Male', 'O+', 'Married', 'darshan_meen2274@yahoo.com', 111111111, 8758212134, 'AZCPD 1955', 2147483647, '2011-08-08', '', '', '', '', '', '', '', 'PURSHOTAMBHAI', 'FATHER', 'NA', 'NA', 'NA', '0', 'NA', 151, 0, 11111, 11111, 0, 'UG', '1111', '', 2, '2012-05-20 10:47:08'),
(8, '1111', 'HITESH', 'BALDEVBHAI', 'PRAJAPATI', '', 'ILABEN', '1985-10-10', '', 'Male', 'O+', 'Married', 'hitesh_uvpce@yahoo.co.in', 111111111, 9662048156, 'BQKPS 8984', 2147483647, '2011-07-13', '', '', '', '', '', '', '', 'JAYKRUSHNABHAI', 'FATHER', 'NA', 'NA', 'NA', '0', 'NA', 151, 380024, 11111, 11111, 0, 'UG', '1111', '', 2, '2012-05-20 10:59:30'),
(9, '1111', 'JUMISREE', 'LATESARAT', 'SARMAHPATHAK', '', 'JASHODABEN', '1980-03-01', '', 'Female', 'O+', 'Married', 'jumi.sarmah@gamil.com', 111111111, 7878248617, 'BRUPS 7211', 2147483647, '2011-08-08', '', '', '', '', '', '', '', 'POONAMBHAI', 'NA', 'N', '', '', '0', 'N', 151, 384002, 1, 1, 0, 'UG', '1111', '', 2, '2012-05-20 11:09:55'),
(10, '1111', 'JITENDRA', 'NATVARLAL', 'PRAJAPATI', '', 'GAURIBEN', '1984-02-01', '', 'Male', 'O+', 'Married', 'prajapatij58@yahoo.com', 1, 9924381795, 'BHQPM 6920', 2147483647, '2011-07-01', '', '', '', '', '', '', '', 'BALDEVBHAI', 'FATHER', 'N', '', '', '0', 'NA', 151, 384002, 1, 1, 0, 'UG', '1111', '', 2, '2012-05-20 11:21:46'),
(11, '1111', 'HIRAL', 'VINODCHANDRA', 'PATEL', '', 'RENUKABEN', '1987-11-11', '', 'Male', 'O+', 'Married', 'hiral_civileng@yahoo.co.in', 111111111, 9712913001, 'APBPP 2035', 2147483647, '2011-08-08', '', '', '', '', '', '', '', 'GUNVANTBHAI', 'NA', 'NA', '', '', '0', 'NA', 151, 380003, 1, 1, 0, 'UG', '1111', '', 2, '2012-05-21 11:52:59'),
(12, '1', 'PARTH', 'DINESHBHAI', 'PATEL', '', 'MRINALINI', '1987-11-30', '', 'Male', 'O+', 'Married', 'parth.patel@hansabacollege.com', 1, 9099020885, 'ASAPR 2522', 2147483647, '2011-07-12', '', '', '', '', '', '', '', 'SARATPATHAK', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 151, 384175, 0, 0, 0, 'UG', '1111', '', 2, '2012-05-21 12:02:48'),
(13, '1111', 'RAHUL', 'KANAIYALAL', 'RATHOD', '', 'SAMUBEN', '1983-08-03', '', 'Male', 'O+', 'Married', 'rahulcivilengg@gmail.com', 1, 9898271634, '', 2147483647, '2011-09-02', '', '', '', '', '', '', '', 'NATVARLAL', 'FATHER', 'NA', 'NA', 'NA', '0', 'NA', 151, 385340, 0, 0, 0, 'UG', '1111', '', 2, '2012-05-21 12:23:02'),
(14, '1', 'NIKUNJ', 'GOVINDBHAI', 'PATEL', '', 'HIRABEN', '1987-03-20', '', 'Male', 'O+', 'Married', 'nik_200387@yahoo.com', 0, 7874704994, 'ATIPP 8478', 2147483647, '2011-11-02', '', '', '', '', '', '', '', 'DINESHBHAI', 'FATHER', 'NA', 'NA', 'NA', '0', 'NA', 151, 385001, 0, 0, 0, 'UG', '1111', '', 2, '2012-05-21 12:35:13'),
(15, '1111', 'JAYESHKUMAR', 'NATVARLAL', 'SHAH', '', 'CHANDRIKABEN', '1956-04-05', '', 'Male', 'O+', 'Married', 'JAYESH.SHAH@HANSABACOLLEG.COM', 1, 9825184888, 'AYVPP 3599', 2147483647, '2011-04-17', '', '', '', '', '', '', '', 'KANAIYALAL', 'FATHER', 'NA', 'NA', 'NA', '0', 'NA', 151, 384265, 0, 0, 0, 'NA', '1111', '', 2, '2012-05-21 12:47:24'),
(16, '1111', 'BHAVIKA', 'NIKHILKUMAR', 'BAROT', '', 'KAILASHBEN', '1987-08-06', '', 'Female', 'O+', 'Unmarried', 'bhvi6887@gmail.com', 0, 0, '', 2147483647, '2011-11-08', '', '', '', '', '', '', '', 'NIKHILKUMAR', 'FATHER', 'NA', 'NA', 'NA', '0', 'NA', 151, 0, 0, 0, 0, 'UG', '1111', '', 2, '2012-05-21 12:58:03'),
(17, '1', 'SATISHKUMAR', 'AMRUTLAL', 'PATEL', '', 'BHAGVATIBEN', '1985-12-18', '', 'Male', 'O+', 'Married', 'patel_satish2002@yahoo.com', 0, 0, '', 2147483647, '2012-03-20', '', '', '', '', '', '', '', 'AMRUTLAL', 'FATHER', 'NA', 'NA', 'NA', '0', 'NA', 151, 0, 0, 0, 0, 'UG', '1111', '', 2, '2012-05-21 13:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `employee_marks`
--

CREATE TABLE IF NOT EXISTS `employee_marks` (
  `employee_marks_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_marks_obtained` int(4) NOT NULL,
  `employee_marks_out_of` int(4) NOT NULL,
  `employee_marks_percent` decimal(3,2) NOT NULL,
  `employee_marks_created_by` int(3) NOT NULL,
  `employee_marks_creation_date` datetime NOT NULL,
  PRIMARY KEY (`employee_marks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_photos`
--

CREATE TABLE IF NOT EXISTS `employee_photos` (
  `employee_photos_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_photos_desc` varchar(50) DEFAULT NULL,
  `employee_photos_path` varchar(150) NOT NULL,
  PRIMARY KEY (`employee_photos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `employee_photos`
--

INSERT INTO `employee_photos` (`employee_photos_id`, `employee_photos_desc`, `employee_photos_path`) VALUES
(1, NULL, 'no_image'),
(2, NULL, '2_Piyushkumar'),
(3, NULL, '3_Mehulkumar'),
(4, NULL, '4_Parth'),
(5, NULL, '5_Sukrutkumar'),
(6, NULL, '6_Avani'),
(7, NULL, '7_DARSHAN'),
(8, NULL, '8_HITESH'),
(9, NULL, '9_JUMISREE'),
(10, NULL, '10_JITENDRA'),
(11, NULL, '11_HIRAL'),
(12, NULL, '12_PARTH'),
(13, NULL, '13_RAHUL'),
(14, NULL, '14_NIKUNJ'),
(15, NULL, '15_JAYESHKUMAR'),
(16, NULL, '16_BHAVIKA'),
(17, NULL, 'no_image');

-- --------------------------------------------------------

--
-- Table structure for table `employee_transaction`
--

CREATE TABLE IF NOT EXISTS `employee_transaction` (
  `employee_transaction_id` int(9) NOT NULL AUTO_INCREMENT,
  `employee_transaction_user_id` int(5) NOT NULL,
  `employee_transaction_employee_id` int(5) NOT NULL,
  `employee_transaction_emp_address_id` int(5) DEFAULT NULL,
  `employee_transaction_branch_id` int(2) NOT NULL,
  `employee_transaction_category_id` int(2) NOT NULL,
  `employee_transaction_quota_id` int(2) NOT NULL,
  `employee_transaction_religion_id` int(2) NOT NULL,
  `employee_transaction_shift_id` int(5) NOT NULL,
  `employee_transaction_designation_id` int(2) NOT NULL,
  `employee_transaction_nationality_id` int(2) NOT NULL,
  `employee_transaction_department_id` int(3) NOT NULL,
  `employee_transaction_organization_id` int(2) NOT NULL,
  `employee_transaction_languages_known_id` int(2) DEFAULT NULL,
  `employee_transaction_emp_photos_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`employee_transaction_id`),
  KEY `fk_branch` (`employee_transaction_branch_id`),
  KEY `fk_category` (`employee_transaction_category_id`),
  KEY `fk_quota` (`employee_transaction_quota_id`),
  KEY `fk_religion` (`employee_transaction_religion_id`),
  KEY `fk_shift` (`employee_transaction_shift_id`),
  KEY `fk_designation` (`employee_transaction_designation_id`),
  KEY `fk_nationality` (`employee_transaction_nationality_id`),
  KEY `fk_department` (`employee_transaction_department_id`),
  KEY `fk_organization` (`employee_transaction_organization_id`),
  KEY `fk_emp_info` (`employee_transaction_employee_id`),
  KEY `fk_emp_photo` (`employee_transaction_emp_photos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `employee_transaction`
--

INSERT INTO `employee_transaction` (`employee_transaction_id`, `employee_transaction_user_id`, `employee_transaction_employee_id`, `employee_transaction_emp_address_id`, `employee_transaction_branch_id`, `employee_transaction_category_id`, `employee_transaction_quota_id`, `employee_transaction_religion_id`, `employee_transaction_shift_id`, `employee_transaction_designation_id`, `employee_transaction_nationality_id`, `employee_transaction_department_id`, `employee_transaction_organization_id`, `employee_transaction_languages_known_id`, `employee_transaction_emp_photos_id`) VALUES
(1, 3, 1, 1, 8, 1, 7, 1, 1, 27, 11, 7, 1, 1, 1),
(2, 4, 2, 2, 9, 1, 7, 1, 1, 5, 11, 6, 1, 2, 2),
(3, 5, 3, 3, 1, 3, 7, 1, 1, 5, 11, 1, 1, 3, 3),
(4, 6, 4, 4, 3, 1, 7, 1, 1, 6, 11, 3, 1, 4, 4),
(5, 7, 5, 5, 2, 1, 7, 1, 1, 5, 11, 2, 1, 5, 5),
(6, 8, 6, 6, 4, 1, 7, 1, 1, 6, 11, 4, 1, 6, 6),
(7, 9, 7, 7, 2, 1, 7, 1, 1, 6, 11, 2, 1, 7, 7),
(8, 10, 8, 8, 4, 2, 7, 1, 1, 5, 11, 4, 1, 8, 8),
(9, 11, 9, 9, 4, 1, 7, 1, 1, 5, 11, 4, 1, 9, 9),
(10, 12, 10, 10, 2, 2, 7, 1, 1, 6, 11, 2, 1, 10, 10),
(11, 13, 11, 11, 2, 1, 7, 1, 1, 5, 11, 2, 1, 11, 11),
(12, 14, 12, 12, 9, 1, 7, 1, 1, 5, 11, 6, 1, 12, 12),
(13, 15, 13, 13, 9, 2, 7, 1, 1, 5, 11, 6, 1, 13, 13),
(14, 16, 14, 14, 2, 1, 7, 1, 1, 5, 11, 2, 1, 14, 14),
(15, 17, 15, 15, 1, 1, 7, 1, 1, 5, 11, 1, 1, 15, 15),
(16, 18, 16, 16, 9, 2, 7, 1, 1, 6, 11, 6, 1, 16, 16),
(17, 19, 17, 17, 9, 1, 7, 1, 1, 6, 11, 6, 1, 17, 17);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_details`
--

CREATE TABLE IF NOT EXISTS `feedback_details` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `question` varchar(50) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `feedback_id` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_feed_id` (`feedback_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE IF NOT EXISTS `feedback_master` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `feedback_date` date NOT NULL,
  `feedback_name` varchar(30) NOT NULL,
  `feedback_emp_id` int(3) NOT NULL,
  `feedback_branch_id` int(3) NOT NULL,
  `feedback_academic_term_id` int(3) NOT NULL,
  `feedback_subject_id` int(3) NOT NULL,
  `feedback_department_id` int(3) NOT NULL,
  `remark` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_emp_id` (`feedback_emp_id`),
  KEY `fk_branch_id` (`feedback_branch_id`),
  KEY `fk_academic_term_id` (`feedback_academic_term_id`),
  KEY `fk_subject_id` (`feedback_subject_id`),
  KEY `fk_department_id` (`feedback_department_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fees_details_table`
--

CREATE TABLE IF NOT EXISTS `fees_details_table` (
  `fees_details_id` int(3) NOT NULL AUTO_INCREMENT,
  `fees_details_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fees_details_amount` int(6) NOT NULL,
  `fees_details_created_by` int(5) NOT NULL,
  `fees_details_created_date` datetime NOT NULL,
  `fees_details_tally_id` int(6) NOT NULL,
  PRIMARY KEY (`fees_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Triggers `fees_details_table`
--
DROP TRIGGER IF EXISTS `ft`;
DELIMITER //
CREATE TRIGGER `ft` AFTER INSERT ON `fees_details_table`
 FOR EACH ROW BEGIN
DECLARE total INTEGER;
DECLARE head_fees_id INTEGER;
SELECT sum(fees_details_amount) INTO total from fees_details_table WHERE fees_details_id=NEW.fees_details_id;
UPDATE fees_master SET fees_master_total = total where fees_master_id =  (select DISTINCT(fees_master_id) from fees_master_transaction where fees_desc_id = NEW.fees_details_id);

END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fees_master`
--

CREATE TABLE IF NOT EXISTS `fees_master` (
  `fees_master_id` int(9) NOT NULL AUTO_INCREMENT,
  `fees_master_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fees_master_created_by` int(5) NOT NULL,
  `fees_master_created_date` datetime NOT NULL,
  `fees_master_tally_id` int(6) NOT NULL,
  `fees_organization_id` int(3) NOT NULL,
  `fees_branch_id` int(3) NOT NULL,
  `fees_academic_term_id` int(3) NOT NULL,
  `fees_quota_id` int(3) NOT NULL,
  `fees_master_total` int(7) DEFAULT NULL,
  PRIMARY KEY (`fees_master_id`),
  KEY `fk_ORG_ID` (`fees_organization_id`),
  KEY `fk_BRANCH_ID` (`fees_branch_id`),
  KEY `fk_ACDM_ID` (`fees_academic_term_id`),
  KEY `fk_QUOTA_ID` (`fees_quota_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fees_master`
--

INSERT INTO `fees_master` (`fees_master_id`, `fees_master_name`, `fees_master_created_by`, `fees_master_created_date`, `fees_master_tally_id`, `fees_organization_id`, `fees_branch_id`, `fees_academic_term_id`, `fees_quota_id`, `fees_master_total`) VALUES
(1, 'Semster I', 2, '2012-05-25 13:45:20', 0, 1, 2, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fees_master_transaction`
--

CREATE TABLE IF NOT EXISTS `fees_master_transaction` (
  `fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `fees_master_id` int(11) NOT NULL,
  `fees_desc_id` int(11) NOT NULL,
  PRIMARY KEY (`fees_id`),
  KEY `fk_fees_details` (`fees_desc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_cash`
--

CREATE TABLE IF NOT EXISTS `fees_payment_cash` (
  `fees_payment_cash_id` int(7) NOT NULL AUTO_INCREMENT,
  `fees_payment_cash_amount` int(7) NOT NULL,
  PRIMARY KEY (`fees_payment_cash_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_payment_cash`
--

INSERT INTO `fees_payment_cash` (`fees_payment_cash_id`, `fees_payment_cash_amount`) VALUES
(1, 3000),
(2, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_cheque`
--

CREATE TABLE IF NOT EXISTS `fees_payment_cheque` (
  `fees_payment_cheque_id` int(6) NOT NULL AUTO_INCREMENT,
  `fees_payment_cheque_number` int(6) NOT NULL,
  `fees_payment_cheque_date` datetime NOT NULL,
  `fees_payment_cheque_bank` int(6) NOT NULL,
  `fees_payment_cheque_amount` int(6) NOT NULL,
  `fees_payment_cheque_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`fees_payment_cheque_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_method`
--

CREATE TABLE IF NOT EXISTS `fees_payment_method` (
  `fees_payment_method_id` int(7) NOT NULL AUTO_INCREMENT,
  `fees_payment_method_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`fees_payment_method_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_payment_method`
--

INSERT INTO `fees_payment_method` (`fees_payment_method_id`, `fees_payment_method_name`) VALUES
(1, 'Cash'),
(2, 'Cheque');

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `fees_payment_transaction` (
  `fees_payment_transaction_id` int(7) NOT NULL AUTO_INCREMENT,
  `fees_payment_master_id` int(3) NOT NULL,
  `fees_payment_method_id` int(7) NOT NULL,
  `fees_payment_cash_cheque_id` int(6) NOT NULL,
  `fees_receipt_id` int(7) NOT NULL,
  `fees_payment` int(6) NOT NULL,
  `fees_received_user_id` int(7) NOT NULL,
  `fees_full_part_payment_id` int(7) NOT NULL,
  `fees_student_id` int(9) NOT NULL,
  PRIMARY KEY (`fees_payment_transaction_id`),
  KEY `fk_fees_pay_method` (`fees_payment_method_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_payment_transaction`
--

INSERT INTO `fees_payment_transaction` (`fees_payment_transaction_id`, `fees_payment_master_id`, `fees_payment_method_id`, `fees_payment_cash_cheque_id`, `fees_receipt_id`, `fees_payment`, `fees_received_user_id`, `fees_full_part_payment_id`, `fees_student_id`) VALUES
(2, 1, 1, 2, 2, 1, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_type`
--

CREATE TABLE IF NOT EXISTS `fees_payment_type` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `fees_type_name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fees_receipt`
--

CREATE TABLE IF NOT EXISTS `fees_receipt` (
  `fees_receipt_id` int(7) NOT NULL AUTO_INCREMENT,
  `fees_receipt_number` int(7) DEFAULT NULL,
  PRIMARY KEY (`fees_receipt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_receipt`
--

INSERT INTO `fees_receipt` (`fees_receipt_id`, `fees_receipt_number`) VALUES
(1, NULL),
(2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `holiday_name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `created_by` int(7) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `holiday_name`, `date`, `created_by`, `creation_date`) VALUES
(1, 'Navratri', '2012-05-23', 1, '2012-05-02 14:59:45'),
(2, 'Diwali', '2012-05-24', 1, '2012-05-02 14:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `inward`
--

CREATE TABLE IF NOT EXISTS `inward` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `invoice_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_no_dc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `received_date` date NOT NULL,
  `sender_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `department` int(3) NOT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_desc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `org_name_id` int(2) NOT NULL,
  `no_of_packets` int(10) NOT NULL,
  `receiver_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_inward_dept` (`department`),
  KEY `FK_inward_org` (`org_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inward_details`
--

CREATE TABLE IF NOT EXISTS `inward_details` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `inward_id` int(5) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `item_category_id` int(5) NOT NULL,
  `rate` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_inwardid` (`inward_id`),
  KEY `FK_iitemid` (`item_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE IF NOT EXISTS `item_category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `languages_id` int(2) NOT NULL AUTO_INCREMENT,
  `languages_name` varchar(30) NOT NULL,
  `languages_organization_id` int(2) NOT NULL,
  `languages_created_by` int(3) NOT NULL,
  `languages_created_date` datetime NOT NULL,
  PRIMARY KEY (`languages_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_name`, `languages_organization_id`, `languages_created_by`, `languages_created_date`) VALUES
(1, 'English', 1, 2, '2012-05-16 09:44:00'),
(2, 'Gujarati', 1, 2, '2012-05-16 09:44:11'),
(3, 'Hindi', 1, 2, '2012-05-16 09:44:29'),
(4, 'Marathi', 1, 2, '2012-05-16 09:45:11'),
(5, 'Punjabi', 1, 2, '2012-05-16 09:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `languages_known`
--

CREATE TABLE IF NOT EXISTS `languages_known` (
  `languages_known_id` int(2) NOT NULL AUTO_INCREMENT,
  `languages_known1` int(2) NOT NULL,
  `languages_known2` int(2) DEFAULT NULL,
  `languages_known3` int(2) DEFAULT NULL,
  `languages_known4` int(2) DEFAULT NULL,
  PRIMARY KEY (`languages_known_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `languages_known`
--

INSERT INTO `languages_known` (`languages_known_id`, `languages_known1`, `languages_known2`, `languages_known3`, `languages_known4`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 2, 3, 4),
(3, 3, 3, 3, 5),
(4, 1, 2, 3, 6),
(5, 10, NULL, NULL, NULL),
(6, 2, 9, 10, 4),
(7, 1, 2, 10, 9),
(8, 3, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL),
(10, 1, 2, 3, 4),
(11, 2, 8, 2, 3),
(12, 1, 1, NULL, NULL),
(13, 1, 1, 1, 1),
(14, 1, 2, 1, 1),
(15, 1, NULL, NULL, NULL),
(16, 1, NULL, NULL, NULL),
(17, 1, 1, 1, 1),
(18, 1, 1, 1, 1),
(19, 1, 1, 1, 1),
(20, 1, NULL, NULL, NULL),
(21, 1, 1, 1, 1),
(22, 1, NULL, NULL, NULL),
(23, 1, NULL, NULL, NULL),
(24, 2, NULL, NULL, NULL),
(25, 2, NULL, NULL, NULL),
(26, 3, NULL, NULL, NULL),
(27, 3, NULL, NULL, NULL),
(28, 3, NULL, NULL, NULL),
(29, 3, NULL, NULL, NULL),
(30, 2, NULL, NULL, NULL),
(31, 1, NULL, NULL, NULL),
(32, 3, NULL, NULL, NULL),
(33, 3, NULL, NULL, NULL),
(34, 2, NULL, NULL, NULL),
(35, 2, NULL, NULL, NULL),
(36, 3, NULL, NULL, NULL),
(37, 1, NULL, NULL, NULL),
(38, 2, NULL, NULL, NULL),
(39, 1, NULL, NULL, NULL),
(40, 1, NULL, NULL, NULL),
(41, 3, NULL, NULL, NULL),
(42, 1, NULL, NULL, NULL),
(43, 2, NULL, NULL, NULL),
(44, 3, NULL, NULL, NULL),
(45, 2, NULL, NULL, NULL),
(46, 2, NULL, NULL, NULL),
(47, 1, NULL, NULL, NULL),
(48, 3, NULL, NULL, NULL),
(49, 2, NULL, NULL, NULL),
(50, 2, NULL, NULL, NULL),
(51, 2, NULL, NULL, NULL),
(52, 2, NULL, NULL, NULL),
(53, 1, NULL, NULL, NULL),
(54, 1, NULL, NULL, NULL),
(55, 1, NULL, NULL, NULL),
(56, 1, NULL, NULL, NULL),
(57, 1, NULL, NULL, NULL),
(58, 1, NULL, NULL, NULL),
(59, 1, NULL, NULL, NULL),
(60, 1, NULL, NULL, NULL),
(61, 1, NULL, NULL, NULL),
(62, 1, NULL, NULL, NULL),
(63, 1, NULL, NULL, NULL),
(64, 1, NULL, NULL, NULL),
(65, 1, NULL, NULL, NULL),
(66, 1, NULL, NULL, NULL),
(67, 1, NULL, NULL, NULL),
(68, 1, NULL, NULL, NULL),
(69, 1, NULL, NULL, NULL),
(70, 1, NULL, NULL, NULL),
(71, 1, NULL, NULL, NULL),
(72, 1, NULL, NULL, NULL),
(73, 1, NULL, NULL, NULL),
(74, 1, NULL, NULL, NULL),
(75, 1, NULL, NULL, NULL),
(76, 1, NULL, NULL, NULL),
(77, 1, NULL, NULL, NULL),
(78, 1, NULL, NULL, NULL),
(79, 1, NULL, NULL, NULL),
(80, 1, NULL, NULL, NULL),
(81, 1, NULL, NULL, NULL),
(82, 1, NULL, NULL, NULL),
(83, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `menu_id` int(3) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(1) NOT NULL,
  `created_date` int(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message_of_day`
--

CREATE TABLE IF NOT EXISTS `message_of_day` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `message` varchar(250) NOT NULL,
  `created_by` int(7) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `message_of_day`
--

INSERT INTO `message_of_day` (`id`, `message`, `created_by`, `creation_date`) VALUES
(1, '"In Life Failure is not The Real End, But It Can B the Real Beginning of Success" Have a nice Day.', 1, '2012-05-02 14:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE IF NOT EXISTS `nationality` (
  `nationality_id` int(2) NOT NULL AUTO_INCREMENT,
  `nationality_name` varchar(30) NOT NULL,
  `nationality_organization_id` int(2) NOT NULL,
  `nationality_created_by` int(3) NOT NULL,
  `nationality_created_date` datetime NOT NULL,
  PRIMARY KEY (`nationality_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`nationality_id`, `nationality_name`, `nationality_organization_id`, `nationality_created_by`, `nationality_created_date`) VALUES
(1, 'Australian', 1, 1, '2012-01-31 00:00:00'),
(3, 'Bhutanese', 1, 1, '2012-01-31 00:00:00'),
(4, 'Brazilian', 1, 1, '2012-01-31 00:00:00'),
(5, 'British', 1, 1, '2012-01-31 00:00:00'),
(6, 'Canadian', 1, 1, '2012-01-31 00:00:00'),
(7, 'Chinese', 1, 1, '2012-01-31 00:00:00'),
(8, 'English', 1, 1, '2012-01-31 00:00:00'),
(10, 'German', 1, 1, '2012-01-31 00:00:00'),
(11, 'Indian', 1, 1, '2012-01-31 00:00:00'),
(12, 'Iranian', 1, 1, '2012-01-31 00:00:00'),
(14, 'Italian', 1, 1, '2012-01-31 00:00:00'),
(15, 'Japanese', 1, 1, '2012-01-31 00:00:00'),
(16, 'Kenyan', 1, 1, '2012-01-31 00:00:00'),
(17, 'Burmese', 1, 1, '2012-01-31 00:00:00'),
(18, 'Nepalese', 1, 1, '2012-01-31 00:00:00'),
(19, 'Pakistani', 1, 1, '2012-01-31 00:00:00'),
(20, 'Russian', 1, 1, '2012-01-31 00:00:00'),
(21, 'Saudi Arabian', 1, 1, '2012-01-31 00:00:00'),
(22, 'South African', 1, 1, '2012-01-31 00:00:00'),
(23, 'Spanish', 1, 1, '2012-01-31 00:00:00'),
(24, 'Sri Lankan', 1, 1, '2012-01-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
  `organization_id` int(2) NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(50) NOT NULL,
  `organization_created_by` int(3) NOT NULL,
  `organization_creation_date` datetime NOT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`organization_id`, `organization_name`, `organization_created_by`, `organization_creation_date`) VALUES
(1, 'Hansaba College of Engineering and Technology', 1, '2012-05-15 12:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `outward`
--

CREATE TABLE IF NOT EXISTS `outward` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `invoice_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_no_dc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `sending_date` date NOT NULL,
  `receiver_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `department` int(3) NOT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `document` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `document_desc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `org_name_id` int(2) NOT NULL,
  `no_of_packets` int(10) NOT NULL,
  `sender_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_depart` (`department`),
  KEY `fk_org` (`org_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `outward_details`
--

CREATE TABLE IF NOT EXISTS `outward_details` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `outward_id` int(5) NOT NULL,
  `name` int(5) NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `item_category_id` int(5) NOT NULL,
  `rate` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_out` (`outward_id`),
  KEY `fk_itemcat` (`item_category_id`),
  KEY `fk_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE IF NOT EXISTS `qualification` (
  `qualification_id` int(2) NOT NULL AUTO_INCREMENT,
  `qualification_name` varchar(30) NOT NULL,
  `qualification_organization_id` int(2) NOT NULL,
  `qualification_created_by` int(3) NOT NULL,
  `qualification_created_date` datetime NOT NULL,
  PRIMARY KEY (`qualification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `quota`
--

CREATE TABLE IF NOT EXISTS `quota` (
  `quota_id` int(2) NOT NULL AUTO_INCREMENT,
  `quota_name` varchar(30) NOT NULL,
  `quota_organization_id` int(2) NOT NULL,
  `quota_created_by` int(3) NOT NULL,
  `quota_created_date` datetime NOT NULL,
  PRIMARY KEY (`quota_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `quota`
--

INSERT INTO `quota` (`quota_id`, `quota_name`, `quota_organization_id`, `quota_created_by`, `quota_created_date`) VALUES
(1, 'ACPC', 1, 2, '2012-05-15 18:44:46'),
(2, 'Management Quota', 1, 2, '2012-05-15 18:44:58'),
(3, 'NRI Quota', 1, 2, '2012-05-15 18:45:12'),
(4, 'Vacant', 1, 2, '2012-05-15 18:45:25'),
(5, 'PIO', 1, 2, '2012-05-15 18:45:39'),
(6, 'TFW', 1, 2, '2012-05-15 18:45:51'),
(7, 'NA', 1, 2, '2012-05-17 11:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE IF NOT EXISTS `religion` (
  `religion_id` int(2) NOT NULL AUTO_INCREMENT,
  `religion_name` varchar(30) NOT NULL,
  `religion_organization_id` int(2) NOT NULL,
  `religion_created_by` int(3) NOT NULL,
  `religion_created_date` datetime NOT NULL,
  PRIMARY KEY (`religion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`religion_id`, `religion_name`, `religion_organization_id`, `religion_created_by`, `religion_created_date`) VALUES
(1, 'Hindu', 1, 2, '2012-05-15 18:46:15'),
(2, 'Muslim', 1, 2, '2012-05-15 18:46:37'),
(3, 'Christian', 1, 2, '2012-05-15 18:46:48'),
(4, 'Jain', 1, 2, '2012-05-15 18:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `Rights`
--

CREATE TABLE IF NOT EXISTS `Rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE IF NOT EXISTS `role_master` (
  `role_master_id` int(2) NOT NULL AUTO_INCREMENT,
  `role_master_name` varchar(15) NOT NULL,
  PRIMARY KEY (`role_master_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`role_master_id`, `role_master_name`) VALUES
(1, 'sadmin'),
(2, 'admin'),
(3, 'employee'),
(4, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE IF NOT EXISTS `shift` (
  `shift_id` int(5) NOT NULL AUTO_INCREMENT,
  `shift_type` varchar(15) NOT NULL,
  `shift_organization_id` int(2) NOT NULL,
  `shift_start_time` time NOT NULL,
  `shift_end_time` time NOT NULL,
  `shift_created_by` int(3) NOT NULL,
  `shift_created_date` datetime NOT NULL,
  PRIMARY KEY (`shift_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift_type`, `shift_organization_id`, `shift_start_time`, `shift_end_time`, `shift_created_by`, `shift_created_date`) VALUES
(1, 'General', 1, '10:00:00', '17:00:00', 2, '2012-05-15 18:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(30) NOT NULL DEFAULT '0',
  `state_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`, `country_id`) VALUES
(1, 'Uttar Pradesh', '106'),
(2, 'Maharashtra', '106'),
(3, ' Bihar', '106'),
(4, 'West Bengal ', '106'),
(5, 'Andhra Pradesh', '106'),
(6, 'Madhya Pradesh', '106'),
(7, 'Tamil Nadu', '106'),
(8, 'Rajasthan', '106'),
(9, 'Karnataka ', '106'),
(10, 'Gujarat', '106'),
(11, 'Orissa', '106'),
(12, 'Kerala', '106'),
(13, 'Jharkhand', '106'),
(14, 'Assam', '106'),
(15, 'Punjab', '106'),
(16, 'Chhattisgarh', '106'),
(17, 'Haryana', '106'),
(18, 'Jammu and Kashmir', '106'),
(19, 'Uttarakhand', '106'),
(20, 'Himachal Pradesh', '106'),
(21, 'Tripura', '106'),
(22, 'Meghalaya', '106'),
(23, 'Manipurβ', '106'),
(24, 'Nagaland', '106'),
(25, 'Goa', '106'),
(26, 'Arunachal Pradesh', '106'),
(27, 'Mizoram', '106'),
(28, 'Sikkim', '106'),
(29, 'Pondicherry', '106'),
(30, 'Chandigarh', '106'),
(31, 'Andaman and Nicobar Islands', '106'),
(32, 'Dadra and Nagar Haveli', '106'),
(33, 'Daman and Diu ', '106'),
(34, 'Lakshadweep', '106');

-- --------------------------------------------------------

--
-- Table structure for table `student_academic_record_trans`
--

CREATE TABLE IF NOT EXISTS `student_academic_record_trans` (
  `student_academic_record_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_academic_record_trans_user_id` int(5) NOT NULL,
  `student_academic_record_trans_qualification_id` int(3) NOT NULL,
  `student_academic_record_trans_eduboard_id` int(3) NOT NULL,
  `student_academic_record_trans_marks_type_id` int(3) NOT NULL,
  `student_academic_record_trans_student_marks_id` int(5) NOT NULL,
  `student_academic_record_trans_record_trans_year_id` int(5) NOT NULL,
  PRIMARY KEY (`student_academic_record_trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_address`
--

CREATE TABLE IF NOT EXISTS `student_address` (
  `student_address_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_address_c_line1` varchar(50) NOT NULL,
  `student_address_c_line2` varchar(50) NOT NULL,
  `student_address_c_country` int(9) NOT NULL,
  `student_address_c_city` int(9) NOT NULL,
  `student_address_c_pin` int(6) NOT NULL,
  `student_address_c_state` int(9) NOT NULL,
  `student_address_p_line1` varchar(50) NOT NULL,
  `student_address_p_line2` varchar(50) NOT NULL,
  `student_address_p_city` int(9) NOT NULL,
  `student_address_p_pin` int(6) NOT NULL,
  `student_address_p_state` int(9) NOT NULL,
  `student_address_p_country` int(9) NOT NULL,
  `student_address_phone` bigint(15) NOT NULL,
  `student_address_mobile` bigint(15) NOT NULL,
  PRIMARY KEY (`student_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `student_address`
--

INSERT INTO `student_address` (`student_address_id`, `student_address_c_line1`, `student_address_c_line2`, `student_address_c_country`, `student_address_c_city`, `student_address_c_pin`, `student_address_c_state`, `student_address_p_line1`, `student_address_p_line2`, `student_address_p_city`, `student_address_p_pin`, `student_address_p_state`, `student_address_p_country`, `student_address_phone`, `student_address_mobile`) VALUES
(1, 'test', 'test', 1, 1, 382220, 1, 'c', 'teest', 1, 382220, 2, 2, 1234567890, 1234567890),
(2, 'test', 'test', 2, 2, 382220, 2, 'c', 'teest', 1, 382220, 1, 2, 1234567890, 1234567890),
(3, 'Narsungavir ni khadki. (Pakhali vado),', 'Loteshvar mahadev road,', 106, 135, 384265, 10, 'Narsungavir ni khadki. (Pakhali vado),', 'Loteshvar mahadev road,', 135, 384265, 10, 106, 0, 0),
(4, 'C/13, Krushnanagar Society, ', 'Jagatpur Road, Chandlodia,', 106, 3, 382481, 10, 'C/13, Krushnanagar Society,', ' Jagatpur Road, Chandlodia,', 3, 382481, 10, 106, 0, 0),
(5, 'Fulpura Dethali Highway,', ' Sidhpur,', 106, 135, 384151, 10, 'Fulpura Dethali Highway,', ' Sidhpur,', 135, 384151, 10, 106, 0, 0),
(6, '8/B,Vanrat Society,', ' opp. Railway Water tank,', 106, 135, 384265, 10, '8/B,Vanrat Society,', ' opp. Railway Water tank,', 135, 384265, 10, 106, 0, 0),
(7, 'Santominagar,', ' At.juna laxmipura,', 106, 130, 385001, 10, 'Santominagar,', ' At.juna laxmipura,', 130, 385001, 10, 106, 0, 0),
(8, 'At.&Po. Changwada,', 'Ta.Vadgam,', 106, 168, 385520, 10, 'At.&Po. Changwada,', 'Ta.Vadgam,', 168, 385520, 10, 106, 0, 0),
(9, 'Vishwakarma Nagar, ', ' Railway Station,', 106, 46, 385535, 10, 'Vishwakarma Nagar, ', ' Railway Station,', 46, 385535, 10, 106, 0, 0),
(10, 'Vishwas Genral Store,', ' Kantheriya Hanuman Road,', 106, 130, 385001, 10, 'Vishwas Genral Store,', ' Kantheriya Hanuman Road,', 130, 385001, 10, 106, 0, 0),
(11, 'Anand nagar. ', 'Vav road,', 106, 21, 385320, 10, 'Anand nagar. ', 'Vav road,', 21, 385320, 10, 106, 0, 0),
(12, 'H/85, Dwarakapuri Flats,', ' Radhanpur road,', 106, 108, 384002, 10, 'H/85, Dwarakapuri Flats,', ' Radhanpur road,', 108, 384002, 10, 106, 0, 0),
(13, 'Patel Society, ', 'juna laxmipura,', 106, 130, 385001, 10, 'Patel Society, ', 'juna laxmipura,', 130, 385001, 10, 106, 0, 0),
(14, 'To-Karnala, Po-Godiyal,', ' Ta-Vadgam, Dist. B.K.', 106, 168, 0, 10, 'To-Karnala, Po-Godiyal,', ' Ta-Vadgam, Dist. B.K.', 168, 0, 10, 106, 0, 0),
(15, 'At&po.Dalwana, ', 'Ta. Vadgam, Dist. B.K-', 106, 168, 385421, 10, 'At&po.Dalwana, ', 'Ta. Vadgam, Dist. B.K-', 168, 385421, 10, 106, 0, 0),
(16, '22, P.K. Nagar Society,', ' Highway Road,', 106, 46, 384265, 10, '22, P.K. Nagar Society,', ' Highway Road,', 46, 384265, 10, 106, 0, 0),
(17, 'Deesa Highway Road, Near. Aroma,', 'Behind. Sankar So Mill,', 106, 130, 385001, 10, 'Deesa Highway Road, Near. Aroma,', 'Behind. Sankar So Mill,', 130, 385001, 10, 106, 0, 0),
(18, 'At&post. Vadgam, ', 'Ta-Vadgam, Dist-B.K. (N.G.), ', 106, 168, 385410, 10, 'At&post. Vadgam, ', 'Ta-Vadgam, Dist-B.K. (N.G.), ', 168, 385410, 10, 106, 0, 0),
(19, 'Street No. 15,', ' Old Laxmipura,', 106, 130, 385001, 10, 'Street No. 15,', ' Old Laxmipura,', 130, 385001, 10, 106, 0, 0),
(20, 'At.&Po. Malgadh,', ' Jodhapuriya Dhanj,', 106, 46, 0, 10, 'At.&Po. Malgadh,', ' Jodhapuriya Dhanj,', 46, 0, 10, 106, 0, 0),
(21, 'Unchaghar, Maganlal Clinic,', ' Kotku Unjha, ', 106, 165, 384170, 10, 'Unchaghar, Maganlal Clinic,', ' Kotku Unjha, ', 165, 384170, 10, 106, 0, 0),
(22, 'E-547,Part-1,Parshwnath Township,', ' Nava Naroda,', 106, 3, 382346, 10, 'E-547,Part-1,Parshwnath Township,', ' Nava Naroda,', 3, 382346, 10, 106, 0, 0),
(23, '39,Indrapatha Society, Lilivadi Rasurant,', 'Nr.Chanshama Highway,', 106, 135, 384265, 10, '39,Indrapatha Society, Lilivadi Rasurant,', 'Nr.Chanshama Highway,', 135, 384265, 10, 106, 0, 0),
(24, '51,Ratna Park Society, ', 'Ganeshpura Road,', 106, 130, 385001, 10, '51,Ratna Park Society, ', 'Ganeshpura Road,', 130, 385001, 10, 106, 0, 0),
(25, '8,Vitthal Park Society, ', 'Mal Godawn Road,', 106, 108, 0, 10, '8,Vitthal Park Society, ', 'Mal Godawn Road,', 108, 0, 10, 106, 0, 0),
(26, 'Ambavadi Vistar, At.Kanodar,', ' Ta.Palanpur, Di-B.K', 106, 130, 0, 10, 'Ambavadi Vistar, At.Kanodar,', ' Ta.Palanpur, Di-B.K', 130, 0, 10, 106, 0, 0),
(27, '79,Gujarat Housingboard, out of malangate,', ' Ambajiroad,', 106, 130, 385001, 10, '79,Gujarat Housingboard, out of malangate,', ' Ambajiroad,', 130, 385001, 10, 106, 0, 0),
(28, 'Shivshakti Viswakarma Society,', ' Dhanera, DI-B.K', 106, 51, 0, 10, 'Shivshakti Viswakarma Society,', ' Dhanera, DI-B.K', 51, 0, 10, 106, 0, 0),
(29, 'At.Bhavishana,', ' Ta.Palanpur, Di-B.K,', 106, 130, 385001, 10, 'At.Bhavishana,', ' Ta.Palanpur, Di-B.K,', 130, 385001, 10, 106, 0, 0),
(30, 'Bhandari Road,  ', 'Givto,', 106, 135, 384265, 10, 'Bhandari Road,  ', 'Givto,', 135, 384265, 10, 106, 0, 0),
(31, 'At&Po. Dangiya, ', 'Ta:Dantivada, Dist, B.K.', 106, 45, 0, 10, 'At&Po. Dangiya, ', 'Ta:Dantivada, Dist, B.K.', 45, 0, 10, 106, 0, 0),
(32, 'Parekhpole , ', 'Nr. Jain Derasar', 106, 165, 384170, 10, 'Parekhpole , ', 'Nr. Jain Derasar', 165, 384170, 10, 106, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_docs`
--

CREATE TABLE IF NOT EXISTS `student_docs` (
  `student_docs_id` int(6) NOT NULL AUTO_INCREMENT,
  `student_docs_desc` varchar(50) DEFAULT NULL,
  `student_docs_path` varchar(150) NOT NULL,
  PRIMARY KEY (`student_docs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student_docs`
--

INSERT INTO `student_docs` (`student_docs_id`, `student_docs_desc`, `student_docs_path`) VALUES
(1, NULL, 'IMG_7076.JPG'),
(2, NULL, 'IMG_7076.JPG'),
(3, NULL, 'IMG_7076.JPG'),
(4, NULL, 'rudraSoftech.png'),
(5, NULL, 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `student_docs_trans`
--

CREATE TABLE IF NOT EXISTS `student_docs_trans` (
  `student_docs_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_docs_trans_user_id` int(7) NOT NULL,
  `student_docs_trans_stud_docs_id` int(6) NOT NULL,
  PRIMARY KEY (`student_docs_trans_id`),
  KEY `fk_student_docs_id` (`student_docs_trans_stud_docs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student_docs_trans`
--

INSERT INTO `student_docs_trans` (`student_docs_trans_id`, `student_docs_trans_user_id`, `student_docs_trans_stud_docs_id`) VALUES
(5, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `student_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_roll_no` varchar(10) NOT NULL,
  `student_merit_no` varchar(15) NOT NULL,
  `student_enroll_no` varchar(15) NOT NULL,
  `student_gr_no` int(5) NOT NULL,
  `student_first_name` varchar(25) NOT NULL,
  `student_middle_name` varchar(25) NOT NULL,
  `student_last_name` varchar(25) NOT NULL,
  `student_father_name` varchar(25) DEFAULT NULL,
  `student_mother_name` varchar(25) NOT NULL,
  `student_adm_date` date NOT NULL,
  `student_dob` date NOT NULL,
  `student_birthplace` varchar(25) DEFAULT NULL,
  `student_gender` varchar(6) NOT NULL,
  `student_guardian_name` varchar(25) NOT NULL,
  `student_guardian_relation` varchar(20) NOT NULL,
  `student_guardian_qualification` varchar(50) DEFAULT NULL,
  `student_guardian_occupation` varchar(50) DEFAULT NULL,
  `student_guardian_income` varchar(15) NOT NULL,
  `student_guardian_occupation_address` varchar(200) DEFAULT NULL,
  `student_guardian_occupation_city` int(4) DEFAULT NULL,
  `student_guardian_city_pin` int(6) DEFAULT NULL,
  `student_guardian_home_address` varchar(200) DEFAULT NULL,
  `student_guardian_phoneno` bigint(15) NOT NULL,
  `student_guardian_mobile` bigint(15) DEFAULT NULL,
  `student_email_id_1` varchar(60) NOT NULL,
  `student_email_id_2` varchar(60) DEFAULT NULL,
  `student_bloodgroup` varchar(3) NOT NULL,
  `student_tally_id` int(20) NOT NULL,
  `student_created_by` int(1) DEFAULT NULL,
  `student_creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`student_id`, `student_roll_no`, `student_merit_no`, `student_enroll_no`, `student_gr_no`, `student_first_name`, `student_middle_name`, `student_last_name`, `student_father_name`, `student_mother_name`, `student_adm_date`, `student_dob`, `student_birthplace`, `student_gender`, `student_guardian_name`, `student_guardian_relation`, `student_guardian_qualification`, `student_guardian_occupation`, `student_guardian_income`, `student_guardian_occupation_address`, `student_guardian_occupation_city`, `student_guardian_city_pin`, `student_guardian_home_address`, `student_guardian_phoneno`, `student_guardian_mobile`, `student_email_id_1`, `student_email_id_2`, `student_bloodgroup`, `student_tally_id`, `student_created_by`, `student_creation_date`) VALUES
(1, '123', '1234', '1234', 9879, 'karmrajsinh', '', 'zala', 'abca', 'testing', '2012-04-19', '2012-04-27', '', 'Male', 'Thi', 'tgus', '', '', '2442', '', 0, 0, '', 487514, 0, 'test@mailcatch.com', '', 'A+', 98795698, 1, '2012-04-16 12:09:18'),
(2, '4', '1234', '3838', 0, 'test', 'test', 'test', 'test', 'test', '2012-04-19', '2012-04-23', '', 'Male', 'Thi', 'tgus', 'sgfsui', 'doctor', '2442', 'skjdskh', 1, 154456, '', 487514, 0, 'test@mailcatch.com', 'test@mailcatch.com', 'A+', 123, 1, '2012-04-16 18:41:01'),
(3, '2', '17350', '110980111001', 11111158, 'JAYDEEPSINH', 'PRADIPSINH', 'CHAUHAN', NULL, 'NA', '2011-07-21', '1996-07-24', 'Chanchriya', 'Male', 'PRADIPSINH', 'NA', '', 'Salesman', '0', '', 18, NULL, 'Narsungavir ni khadki. (Pakhali vado), Loteshvar mahadev road, Chachriya, patan-384265', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 15:04:51'),
(4, '20', '19888', '110980111003', 11111159, ' RAHULKUMAR', 'RAJESHBHAI', 'RAVAL', NULL, 'NA', '2011-07-21', '1994-08-13', 'AHMEDABAD', 'Male', 'RAJESHBHAI', 'father', '', 'DRIVER', '0', '', 3, 382481, 'C/13, Krushnanagar Society, Jagatpur Road, Chandlodia,', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 15:18:06'),
(5, '8', '25564', '110980111004', 11111160, 'DIVYABAHEN', 'PRAVINBHAI', 'KHANDAVI', NULL, 'NA', '2011-07-22', '1993-03-24', 'SIDHPUR', 'Female', 'PRAVINBHAI', 'father', '', 'TEACHER', '0', '', 135, 384151, 'Fulpura Dethali Highway, Sidhpur,', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 15:30:25'),
(6, '12', '28317', '110980111005', 11111161, 'SMIT', 'MAHESHKUMAR', 'PATEL', NULL, 'NA', '2011-07-21', '1993-09-29', 'PATAN', 'Male', 'MAHESHKUMAR', 'father', '', 'CONSTRUCTION', '0', '', 135, 384265, '8/B,Vanrat Society, opp. Railway Water tank,\r\n', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 15:36:00'),
(7, '7', '30778', '110980111006', 11111162, 'KIRAN', 'DINESHBHAI', 'KARNAVAT', NULL, 'NA', '2011-07-21', '1993-07-17', 'JUNA LAXMIPURA', 'Male', 'DINESHBHAI', 'father', '', 'BUSINESS', '0', '', 130, 385001, 'Santominagar, At.juna laxmipura,', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 15:42:53'),
(8, '6', '32499', '110980111007', 11111163, 'NARESHKUMAR', 'BHAGVANBHAI', 'JAGANIYA', NULL, 'NA', '2011-08-03', '1993-03-14', 'VADGAM', 'Male', 'BHAGVANBHAI', 'father', '', 'FARMER', '0', '', 168, 385520, 'At.&Po. Changwada,', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 15:47:53'),
(9, '21', '32828', '110980111008', 11111164, 'ANKITKUMAR', 'VISHNUBHAI', 'SHARMA', NULL, 'NA', '2011-08-16', '1993-03-27', 'DEESA', 'Male', 'VISHNUBHAI', 'father', '', 'MARCHANT', '0', '', 46, 385535, 'Vishwakarma Nagar, Railway Station,', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 15:51:44'),
(10, '17', '33340', '110980111009', 11111165, 'KUDRAT', 'KIRITBHAI', 'RAVAL', NULL, 'NA', '2011-07-21', '1993-09-26', 'PALANPUR', 'Male', 'KIRITBHAI', 'father', '', 'SHOPKEEPER', '0', '', 130, 385001, 'Vishwas Genral Store, Kantheriya Hanuman Road,', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 15:55:45'),
(11, '4', '34140', '110980111010', 11111166, 'MAHESHKUMAR', 'DANABHAI', 'DAVE', NULL, 'NA', '2011-07-22', '1992-11-28', 'BHABHAR', 'Male', 'DANABHAI', 'father', '', 'BUSINESS', '0', '', 21, 385320, 'Anand nagar. Vav road, bhabhar-', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:00:34'),
(12, '11', '34577', '110980111011', 11111167, 'PARTHKUMAR', 'VINODKUMAR', 'PATEL', NULL, 'NA', '2011-07-21', '1994-01-05', 'MAHASANA', 'Male', 'VINODKUMAR', 'father', '', 'DAIRY', '0', '', 108, 384002, 'H/85, Dwarakapuri Flats, Radhanpur road,', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:04:43'),
(13, '5', '34621', '110980111012', 11111168, 'MANOJKUMAR', 'RAMESHBHAI', 'GAMI', NULL, 'NA', '2011-07-21', '1993-07-22', 'JUNA LAXMIPURA', 'Male', 'RAMESHBHAI', 'father', '', 'FARMER', '0', '', 130, 385001, 'Patel Society, juna laxmipura,', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:08:15'),
(14, '1', '34664', '110980111013', 11111169, 'VIJAYBHARTHI', 'GANGABHARTHI', 'BAVA', NULL, 'NA', '2011-08-16', '1994-02-20', 'GODIYAL', 'Male', 'GANGABHARTHI', 'father', '', 'FARMER', '0', '', 168, 0, 'To-Karnala, Po-Godiyal, Ta-Vadgam, Dist. B.K.', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:14:43'),
(15, '16', '34789', '110980111014', 11111170, 'BHAVNABEN', 'BHAVANJI', 'RANA', NULL, 'NA', '2011-07-20', '1994-06-24', 'DALWANA', 'Female', 'BHAVANJI', 'father', '', 'FARMER', '0', '', 168, 385421, 'At&po.Dalwana, Ta. Vadgam, Dist. B.K-', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:18:34'),
(16, '3', '34973', '110980111015', 11111171, 'KARISHMABEN', 'KAILESHBHAI', 'DAVE', NULL, 'NA', '2011-07-20', '1994-01-10', 'DEESA', 'Female', 'KAILESHBHAI', 'father', '', 'TEACHER', '0', '', 46, 0, '22, P.K. Nagar Society, Highway Road, Deesa', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:23:25'),
(17, '13', '37618', '110980111016', 11111172, 'URVILKUMAR', 'NAVINCHNDRA', 'PATEL', NULL, 'NA', '2011-08-03', '1993-06-16', 'PALANPUR', 'Male', 'NAVINCHNDRA', 'father', '', 'BUSINESS', '0', '', 130, 385001, 'Deesa Highway Road, Near. Aroma, Behind. Sankar So Mill,', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:28:27'),
(18, '15', '39030', '110980111018', 11111173, 'KAJALBEN', 'BHARATKUMAR', 'PRAJAPATI', NULL, 'NA', '2011-08-02', '1994-03-21', 'VADGAM', 'Female', 'BHARATKUMAR', 'father', '', 'FARMER', '0', '', 168, 385410, 'At&post. Vadgam, Ta-Vadgam, Dist-B.K. (N.G.), ', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:32:20'),
(19, '22', '42090', '110980111020', 11111174, 'TARUNBHAI', 'RAMESHBHAI', 'THUMBADIYA', NULL, 'NA', '2011-08-16', '1993-12-10', 'JUNA LAXMIPURA', 'Male', 'RAMESHBHAI', 'father', '', 'FARMER', '0', '', 130, 385001, 'Street No. 15, Old Laxmipura, Ta. Palanpur, Dist. B.K., ', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:36:17'),
(20, '9', '420820', '110980111021', 11111175, 'SURESHKUMAR', 'HARILAL', 'PADHIYAR', NULL, 'NA', '2011-08-16', '1993-10-25', 'MALGADH', 'Male', 'HARILAL', 'father', '', 'FARMER', '0', '', 46, 0, 'At.&Po. Malgadh, Jodhapuriya Dhanj, Ta. Deesa', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:42:05'),
(21, '19', '0', '110980111022', 11111176, 'DHRUVKUMAR', 'VIPULKUMAR', 'RAVAL', NULL, 'NA', '2011-08-23', '1994-05-01', 'UNJHA', 'Male', 'VIPULKUMAR', 'father', '', 'KARMAKAND', '0', '', 165, 384170, 'Unchaghar, Maganlal Clinic, Kotku Unjha, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 16:46:42'),
(22, '17', '33263', '110980111023', 111110258, 'BHAVESH', 'ASHOKKUMAR', 'RAUT', NULL, 'NA', '2011-09-03', '1993-08-01', 'AHMEDABAD', 'Male', 'ASHOKKUMAR', 'father', '', 'SERVICE', '0', '', 3, 382346, 'E-547,Part-1,Parshwnath Township, Nava Naroda,Ahmedabad-', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:00:19'),
(23, '24', '34216', '110980111024', 111110259, 'DIPALI', 'RAMESHBHAI', 'VANIYA', NULL, 'NA', '2011-09-03', '1992-09-12', 'PATAN', 'Male', 'RAMESHBHAI', 'father', '', 'TEACHER', '0', '', 135, 384265, '39,Indrapatha Society, Lilivadi Rasurant, Nr.Chanshama Highway,Patan-', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:05:18'),
(24, '25', '12197', '110980111025', 111110260, 'APURVKUMAR', 'DASHRATHBHAI', 'RAVAL', NULL, 'NA', '2011-09-16', '1994-07-01', 'PALANPUR', 'Male', 'DASHRATHBHAI', 'father', '', 'TEACHER', '0', '', 130, 385001, '51,Ratna Park Society, Ganeshpura Road, Palanpur-', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:08:49'),
(25, '26', '0', '110980111026', 111110261, 'DEVAL', 'HITENDRAKUMAR', 'RAVAL', NULL, 'NA', '2011-09-12', '1991-01-21', 'MEHSANA', 'Male', 'HITENDRAKUMAR', 'father', '', 'BUSINESS', '0', '', 108, 0, '8,Vitthal Park Society, Mal Godawn Road, Mehsana', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:13:35'),
(26, '27', '0', '110980111027', 111110269, 'RINAJBEN', 'AHMADBHAI', 'MAREDIYA', NULL, 'NA', '2011-09-03', '1990-10-07', 'KANODAR', 'Female', 'AHMADBHAI', 'father', '', 'TEACHER', '0', '', 130, 0, 'Ambavadi Vistar, At.Kanodar, Ta.Palanpur, Di-B.K', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:17:24'),
(27, '28', '0', '110980111028', 111110267, 'KRUNAL ', 'MAHENDRABHAI ', 'THAKKAR', NULL, 'NA', '2011-09-16', '1992-05-06', 'PALANPUR', 'Male', 'MAHENDRABHAI ', 'father', '', 'BUSINESS', '0', '', 130, 385001, '79,Gujarat Housingboard, out of malangate, Ambajiroad, Palanpur-', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:22:24'),
(28, '29', '0', '110980111029', 111110266, 'RAHULKUMAR', 'MOHANBHAI', 'RAVAT', NULL, 'NA', '0000-00-00', '1991-04-24', '', 'Male', 'MOHANBHAI', 'father', '', '', '0', '', 51, NULL, 'Shivshakti Viswakarma Society, Dhanera, DI-B.K', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:27:06'),
(29, '30', '0', '110980111030', 111110265, 'HARDIKKUMAR ', 'BABULAL', 'RATHOD', NULL, 'NA', '0000-00-00', '1992-04-09', '', 'Male', 'BABULAL', 'father', '', '', '0', '', 130, 385001, 'At.Bhavishana, Ta.Palanpur, Di-B.K,', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:31:30'),
(30, '31', '0', '110980111031', 111111995, 'YOGENDRASING', 'BAKUJI', 'CHAVADA ', NULL, 'NA', '0000-00-00', '1990-05-12', 'PATAN', 'Male', 'BAKUJI', 'father', '', 'POLICE', '0', '', 135, 384265, 'Bhandari Road, Givto, Patan, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:35:33'),
(31, '32', '0', '110980111032', 111111997, 'MINHAZKHAN', 'INAYATULLAKHAN', 'GHASURA', NULL, 'NA', '2011-10-12', '1993-06-18', 'DANGIYA', 'Male', 'INAYATULLAKHAN', 'father', '', 'HOMEWORK', '0', '', 45, 0, 'At&Po. Dangiya, Ta:Dantivada, Dist, B.K.', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:39:15'),
(32, '33', '0', '110980111033', 111111999, 'SAGAR', 'GIRISHBHAI', 'SUTHAR', NULL, 'NA', '2011-10-12', '1990-05-19', 'UNJHA', 'Male', 'GIRISHBHAI', 'father', '', 'CARPENTER', '0', '', 165, 384170, 'Parekhpole , Nr. Jain Derasar Unjha, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE IF NOT EXISTS `student_marks` (
  `student_marks_id` int(9) NOT NULL AUTO_INCREMENT,
  `student_marks_obtained` int(4) NOT NULL,
  `student_marks_out_of` int(2) NOT NULL,
  `student_marks_percent` double NOT NULL,
  `student_marks_created_by` int(3) NOT NULL,
  `student_marks_creation_date` datetime NOT NULL,
  PRIMARY KEY (`student_marks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_marks_type_master`
--

CREATE TABLE IF NOT EXISTS `student_marks_type_master` (
  `student_marks_type_master_id` int(3) NOT NULL,
  `student_marks_type_master_name` varchar(20) NOT NULL,
  PRIMARY KEY (`student_marks_type_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_photos`
--

CREATE TABLE IF NOT EXISTS `student_photos` (
  `student_photos_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_photos_desc` varchar(50) DEFAULT NULL,
  `student_photos_path` varchar(150) NOT NULL,
  PRIMARY KEY (`student_photos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `student_photos`
--

INSERT INTO `student_photos` (`student_photos_id`, `student_photos_desc`, `student_photos_path`) VALUES
(1, NULL, '1_abc'),
(2, NULL, '2_test'),
(3, NULL, 'no_image'),
(4, NULL, 'no_image'),
(5, NULL, 'no_image'),
(6, NULL, 'no_image'),
(7, NULL, 'no_image'),
(8, NULL, 'no_image'),
(9, NULL, 'no_image'),
(10, NULL, 'no_image'),
(11, NULL, 'no_image'),
(12, NULL, 'no_image'),
(13, NULL, 'no_image'),
(14, NULL, 'no_image'),
(15, NULL, 'no_image'),
(16, NULL, 'no_image'),
(17, NULL, 'no_image'),
(18, NULL, 'no_image'),
(19, NULL, 'no_image'),
(20, NULL, 'no_image'),
(21, NULL, 'no_image'),
(22, NULL, 'no_image'),
(23, NULL, 'no_image'),
(24, NULL, 'no_image'),
(25, NULL, 'no_image'),
(26, NULL, 'no_image'),
(27, NULL, 'no_image'),
(28, NULL, 'no_image'),
(29, NULL, 'no_image'),
(30, NULL, 'no_image'),
(31, NULL, 'no_image'),
(32, NULL, 'no_image');

-- --------------------------------------------------------

--
-- Table structure for table `student_transaction`
--

CREATE TABLE IF NOT EXISTS `student_transaction` (
  `student_transaction_id` int(9) NOT NULL AUTO_INCREMENT,
  `student_transaction_user_id` int(5) NOT NULL,
  `student_transaction_student_id` int(5) NOT NULL,
  `student_transaction_branch_id` int(2) NOT NULL,
  `student_transaction_category_id` int(2) NOT NULL,
  `student_transaction_organization_id` int(2) NOT NULL,
  `student_transaction_student_address_id` int(5) NOT NULL,
  `student_transaction_nationality_id` int(2) NOT NULL,
  `student_transaction_quota_id` int(2) NOT NULL,
  `student_transaction_religion_id` int(2) NOT NULL,
  `student_transaction_shift_id` int(2) NOT NULL,
  `student_transaction_languages_known_id` int(2) NOT NULL,
  `student_transaction_student_photos_id` int(5) NOT NULL,
  `student_transaction_division_id` int(2) DEFAULT NULL,
  `student_transaction_batch_id` int(2) DEFAULT NULL,
  `student_academic_term_period_tran_id` int(2) NOT NULL,
  PRIMARY KEY (`student_transaction_id`),
  KEY `FK_trans_branch` (`student_transaction_branch_id`),
  KEY `fk_category` (`student_transaction_category_id`),
  KEY `fk_organization` (`student_transaction_organization_id`),
  KEY `fk_nationality` (`student_transaction_nationality_id`),
  KEY `fk_quota` (`student_transaction_quota_id`),
  KEY `fk_religion` (`student_transaction_religion_id`),
  KEY `fk_shift` (`student_transaction_shift_id`),
  KEY `fk_division` (`student_transaction_division_id`),
  KEY `fk_batch` (`student_transaction_batch_id`),
  KEY `FK_student_id` (`student_transaction_student_id`),
  KEY `fk_std_photo` (`student_transaction_student_photos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `student_transaction`
--

INSERT INTO `student_transaction` (`student_transaction_id`, `student_transaction_user_id`, `student_transaction_student_id`, `student_transaction_branch_id`, `student_transaction_category_id`, `student_transaction_organization_id`, `student_transaction_student_address_id`, `student_transaction_nationality_id`, `student_transaction_quota_id`, `student_transaction_religion_id`, `student_transaction_shift_id`, `student_transaction_languages_known_id`, `student_transaction_student_photos_id`, `student_transaction_division_id`, `student_transaction_batch_id`, `student_academic_term_period_tran_id`) VALUES
(2, 63, 3, 2, 1, 1, 3, 11, 1, 1, 1, 54, 3, NULL, NULL, 2),
(3, 64, 4, 2, 1, 1, 4, 11, 1, 1, 1, 55, 4, NULL, NULL, 2),
(4, 65, 5, 2, 3, 1, 5, 11, 1, 1, 1, 56, 5, NULL, NULL, 2),
(5, 66, 6, 2, 1, 1, 6, 11, 1, 1, 1, 57, 6, NULL, NULL, 2),
(6, 67, 7, 2, 1, 1, 7, 11, 1, 1, 1, 58, 7, NULL, NULL, 2),
(7, 68, 8, 2, 1, 1, 8, 11, 1, 1, 1, 59, 8, NULL, NULL, 2),
(8, 69, 9, 2, 1, 1, 9, 11, 1, 1, 1, 60, 9, NULL, NULL, 2),
(9, 70, 10, 2, 1, 1, 10, 11, 1, 1, 1, 61, 10, NULL, NULL, 2),
(10, 71, 11, 2, 1, 1, 11, 11, 1, 1, 1, 62, 11, NULL, NULL, 2),
(11, 72, 12, 2, 1, 1, 12, 11, 1, 1, 1, 63, 12, NULL, NULL, 2),
(12, 73, 13, 2, 1, 1, 13, 11, 1, 1, 1, 64, 13, NULL, NULL, 2),
(13, 74, 14, 2, 2, 1, 14, 11, 1, 1, 1, 65, 14, NULL, NULL, 2),
(14, 75, 15, 2, 1, 1, 15, 11, 1, 1, 1, 66, 15, NULL, NULL, 2),
(15, 76, 16, 2, 1, 1, 16, 11, 1, 1, 1, 67, 16, NULL, NULL, 2),
(16, 77, 17, 2, 1, 1, 17, 11, 1, 1, 1, 68, 17, NULL, NULL, 2),
(17, 78, 18, 2, 1, 1, 18, 11, 1, 1, 1, 69, 18, NULL, NULL, 2),
(18, 79, 19, 2, 1, 1, 19, 11, 1, 1, 1, 70, 19, NULL, NULL, 2),
(19, 80, 20, 2, 2, 1, 20, 11, 1, 1, 1, 71, 20, NULL, NULL, 2),
(20, 81, 21, 2, 1, 1, 21, 11, 1, 1, 1, 72, 21, NULL, NULL, 2),
(21, 82, 22, 2, 1, 1, 22, 11, 4, 1, 1, 73, 22, NULL, NULL, 2),
(22, 83, 23, 2, 3, 1, 23, 11, 4, 1, 1, 74, 23, NULL, NULL, 2),
(23, 84, 24, 2, 1, 1, 24, 11, 4, 1, 1, 75, 24, NULL, NULL, 2),
(24, 85, 25, 2, 1, 1, 25, 11, 4, 1, 1, 76, 25, NULL, NULL, 2),
(25, 86, 26, 2, 2, 1, 26, 11, 4, 2, 1, 77, 26, NULL, NULL, 2),
(26, 87, 27, 2, 1, 1, 27, 11, 4, 1, 1, 78, 27, NULL, NULL, 2),
(27, 88, 28, 2, 3, 1, 28, 11, 4, 1, 1, 79, 28, NULL, NULL, 2),
(28, 89, 29, 2, 2, 1, 29, 11, 4, 1, 1, 80, 29, NULL, NULL, 2),
(29, 90, 30, 2, 2, 1, 30, 11, 4, 1, 1, 81, 30, NULL, NULL, 2),
(30, 91, 31, 2, 2, 1, 31, 11, 4, 2, 1, 82, 31, NULL, NULL, 2),
(31, 92, 32, 2, 2, 1, 32, 11, 4, 1, 1, 83, 32, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject_master`
--

CREATE TABLE IF NOT EXISTS `subject_master` (
  `subject_master_id` int(5) NOT NULL AUTO_INCREMENT,
  `subject_master_name` varchar(50) NOT NULL,
  `subject_master_code` varchar(15) NOT NULL,
  `subject_master_alias` varchar(15) NOT NULL,
  `subject_master_type_id` int(3) NOT NULL,
  `subject_master_organization_id` int(3) NOT NULL,
  `subject_master_branch_id` int(3) NOT NULL,
  `subject_master_academic_terms_period_id` int(3) NOT NULL,
  `subject_master_active` tinyint(1) NOT NULL,
  `subject_master_updated_date` datetime NOT NULL,
  `subject_master_updated_user` int(5) NOT NULL,
  PRIMARY KEY (`subject_master_id`),
  KEY `fk_sub_type_id` (`subject_master_type_id`),
  KEY `fk_branch_id` (`subject_master_branch_id`),
  KEY `fk_organization_id` (`subject_master_organization_id`),
  KEY `fk_aca_term_period_id` (`subject_master_academic_terms_period_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject_type`
--

CREATE TABLE IF NOT EXISTS `subject_type` (
  `subject_type_id` int(3) NOT NULL AUTO_INCREMENT,
  `subject_type_name` varchar(50) NOT NULL,
  `subject_organization_id` int(3) NOT NULL,
  `subject_active` tinyint(1) NOT NULL,
  `subject_modified_date` datetime NOT NULL,
  `subject_modified_user` int(5) NOT NULL,
  PRIMARY KEY (`subject_type_id`),
  KEY `fk_org_id` (`subject_organization_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `mainmenu_id` int(3) NOT NULL,
  `submenu_id` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(1) NOT NULL,
  `created_date` int(1) NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_organization_email_id` varchar(60) NOT NULL,
  `user_password` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_created_by` int(3) NOT NULL,
  `user_creation_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_organization_email_id`, `user_password`, `user_created_by`, `user_creation_date`) VALUES
(1, 'sadmin@hansaba.com', '638e1b88a075ff8ff17a10dbb36b42d5', 1, '2012-05-15 10:28:35'),
(2, 'admin@hansaba.com', 'f6fdffe48c908deb0f4c3bd36c032e72', 1, '2012-05-15 08:21:22'),
(3, 'jagdishsinh.rana@hansabacollege.com', '9c2d9a8fd5eafd0b31504d3805f6d41b', 2, '2012-05-17 12:08:41'),
(4, 'pmpatel551986@gmail.com', '2440f0887a89f7316f204353171ee9ae', 2, '2012-05-17 12:59:22'),
(5, 'mehul.dethariya@yahoo.com', '27a536fc0695dee518f4b55cc9d61807', 2, '2012-05-17 13:59:21'),
(6, 'parth_sandesara@yahoo.co.in', 'b58223ab05b7980804bb106f5f801c5b', 2, '2012-05-17 14:25:20'),
(7, 'sukrutbaps@yahoo.co.in', '71e7eb8a585ab72146aa34413c3d326f', 2, '2012-05-17 14:38:54'),
(8, 'ravalavani@yahoo.com', '9851959b68e410c3f73378130be1372a', 2, '2012-05-17 17:10:43'),
(9, 'darshan_meen2274@yahoo.com', 'd9305d920245fbe31bb7be6196e04ba7', 2, '2012-05-20 10:47:08'),
(10, 'hitesh_uvpce@yahoo.co.in', 'd9608a9243c74419ad46a30daa4afacd', 2, '2012-05-20 10:59:30'),
(11, 'jumi.sarmah@gamil.com', 'de7fef53d4b253daf0d5c67724ed64b2', 2, '2012-05-20 11:09:55'),
(12, 'prajapatij58@yahoo.com', '1c1705d8ebdc660e17f3368819e0233d', 2, '2012-05-20 11:21:47'),
(13, 'hiral_civileng@yahoo.co.in', '5b62ddd1375b2102963ae08829619d0e', 2, '2012-05-21 11:52:59'),
(14, 'parth.patel@hansabacollege.com', '45c140c98cc27af2ef85c04df4923774', 2, '2012-05-21 12:02:48'),
(15, 'rahulcivilengg@gmail.com', '9105cffeb36a370a4ba209e61d0622f4', 2, '2012-05-21 12:23:04'),
(16, 'nik_200387@yahoo.com', 'fbbce18090ec6a9d3aca9bf08adbbbfe', 2, '2012-05-21 12:35:14'),
(17, 'JAYESH.SHAH@HANSABACOLLEG.COM', 'f51b61ec4468d0ff091cf18cd635d004', 2, '2012-05-21 12:47:24'),
(18, 'bhvi6887@gmail.com', '13be5704c146fb62ac0e4f010b8a3acb', 2, '2012-05-21 12:58:04'),
(19, 'patel_satish2002@yahoo.com', '45179bc00a859f39dc21be0bea3ac124', 2, '2012-05-21 13:05:31'),
(63, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 15:04:51'),
(64, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 15:18:06'),
(65, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 15:30:25'),
(66, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 15:36:00'),
(67, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 15:42:53'),
(68, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 15:47:53'),
(69, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 15:51:45'),
(70, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 15:55:45'),
(71, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:00:34'),
(72, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:04:43'),
(73, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:08:15'),
(74, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:14:43'),
(75, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:18:34'),
(76, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:23:25'),
(77, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:28:27'),
(78, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:32:20'),
(79, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:36:17'),
(80, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:42:05'),
(81, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 16:46:42'),
(82, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:00:20'),
(83, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:05:18'),
(84, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:08:49'),
(85, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:13:35'),
(86, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:17:24'),
(87, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:22:24'),
(88, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:27:06'),
(89, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:31:30'),
(90, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:35:33'),
(91, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:39:15'),
(92, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_rights`
--

CREATE TABLE IF NOT EXISTS `user_rights` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `user_id` int(1) NOT NULL,
  `mainmenu_id` int(1) NOT NULL,
  `submenu_id` int(1) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `create` tinyint(1) NOT NULL,
  `read` tinyint(1) NOT NULL,
  `update` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_pass`
--

CREATE TABLE IF NOT EXISTS `visitor_pass` (
  `pass_no` int(9) NOT NULL AUTO_INCREMENT,
  `in_date_time` time NOT NULL,
  `visitor_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department` int(3) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `company_represented` varchar(50) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `no_of_persons` int(3) NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `out_time` time NOT NULL,
  `batch_no` int(9) NOT NULL,
  `item_carring` int(5) NOT NULL,
  PRIMARY KEY (`pass_no`),
  KEY `fk_visit_Dep` (`department`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `visitor_pass`
--

INSERT INTO `visitor_pass` (`pass_no`, `in_date_time`, `visitor_name`, `contact_person`, `purpose`, `department`, `address`, `company_represented`, `vehicle_no`, `no_of_persons`, `remark`, `photo`, `age`, `gender`, `out_time`, `batch_no`, `item_carring`) VALUES
(1, '10:35:00', 'karmraj', 'krunal', 'meeting', 1, 'ahmedabad', 'test', '1234', 1, 'test1', 'IMG_7076.JPG', 23, 'Male', '11:21:00', 123, 3);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE IF NOT EXISTS `year` (
  `year_id` int(2) NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL,
  PRIMARY KEY (`year_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AuthAssignment`
--
ALTER TABLE `AuthAssignment`
  ADD CONSTRAINT `AuthAssignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `AuthItemChild`
--
ALTER TABLE `AuthItemChild`
  ADD CONSTRAINT `AuthItemChild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AuthItemChild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `currency_transaction`
--
ALTER TABLE `currency_transaction`
  ADD CONSTRAINT `fk_tracurrency` FOREIGN KEY (`fees_payment_cash_id`) REFERENCES `fees_payment_cash` (`fees_payment_cash_id`);

--
-- Constraints for table `employee_docs_trans`
--
ALTER TABLE `employee_docs_trans`
  ADD CONSTRAINT `fk_emp_docs_id` FOREIGN KEY (`employee_docs_trans_emp_docs_id`) REFERENCES `employee_docs` (`employee_docs_id`);

--
-- Constraints for table `employee_transaction`
--
ALTER TABLE `employee_transaction`
  ADD CONSTRAINT `fk_branch` FOREIGN KEY (`employee_transaction_branch_id`) REFERENCES `branch` (`branch_id`),
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`employee_transaction_category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `fk_department` FOREIGN KEY (`employee_transaction_department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `fk_designation` FOREIGN KEY (`employee_transaction_designation_id`) REFERENCES `employee_designation` (`employee_designation_id`),
  ADD CONSTRAINT `fk_emp_info` FOREIGN KEY (`employee_transaction_employee_id`) REFERENCES `employee_info` (`employee_id`),
  ADD CONSTRAINT `fk_emp_photo` FOREIGN KEY (`employee_transaction_emp_photos_id`) REFERENCES `employee_photos` (`employee_photos_id`),
  ADD CONSTRAINT `fk_nationality` FOREIGN KEY (`employee_transaction_nationality_id`) REFERENCES `nationality` (`nationality_id`),
  ADD CONSTRAINT `fk_organization` FOREIGN KEY (`employee_transaction_organization_id`) REFERENCES `organization` (`organization_id`),
  ADD CONSTRAINT `fk_quota` FOREIGN KEY (`employee_transaction_quota_id`) REFERENCES `quota` (`quota_id`),
  ADD CONSTRAINT `fk_religion` FOREIGN KEY (`employee_transaction_religion_id`) REFERENCES `religion` (`religion_id`),
  ADD CONSTRAINT `fk_shift` FOREIGN KEY (`employee_transaction_shift_id`) REFERENCES `shift` (`shift_id`);

--
-- Constraints for table `fees_master`
--
ALTER TABLE `fees_master`
  ADD CONSTRAINT `fk_ACDM_ID` FOREIGN KEY (`fees_academic_term_id`) REFERENCES `academic_term_period` (`academic_terms_period_id`),
  ADD CONSTRAINT `fk_BRANCH_ID` FOREIGN KEY (`fees_branch_id`) REFERENCES `branch` (`branch_id`),
  ADD CONSTRAINT `fk_ORG_ID` FOREIGN KEY (`fees_organization_id`) REFERENCES `organization` (`organization_id`),
  ADD CONSTRAINT `fk_QUOTA_ID` FOREIGN KEY (`fees_quota_id`) REFERENCES `quota` (`quota_id`);

--
-- Constraints for table `fees_master_transaction`
--
ALTER TABLE `fees_master_transaction`
  ADD CONSTRAINT `fk_fees_details` FOREIGN KEY (`fees_desc_id`) REFERENCES `fees_details_table` (`fees_details_id`);

--
-- Constraints for table `fees_payment_transaction`
--
ALTER TABLE `fees_payment_transaction`
  ADD CONSTRAINT `fk_fees_pay_method` FOREIGN KEY (`fees_payment_method_id`) REFERENCES `fees_payment_method` (`fees_payment_method_id`);

--
-- Constraints for table `inward`
--
ALTER TABLE `inward`
  ADD CONSTRAINT `inward_ibfk_1` FOREIGN KEY (`department`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `inward_ibfk_2` FOREIGN KEY (`org_name_id`) REFERENCES `organization` (`organization_id`),
  ADD CONSTRAINT `inward_ibfk_3` FOREIGN KEY (`org_name_id`) REFERENCES `organization` (`organization_id`);

--
-- Constraints for table `inward_details`
--
ALTER TABLE `inward_details`
  ADD CONSTRAINT `fk_aca_termp` FOREIGN KEY (`item_category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `FK_iitemid` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`);

--
-- Constraints for table `outward`
--
ALTER TABLE `outward`
  ADD CONSTRAINT `fk_depart` FOREIGN KEY (`department`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `fk_org` FOREIGN KEY (`org_name_id`) REFERENCES `organization` (`organization_id`);

--
-- Constraints for table `outward_details`
--
ALTER TABLE `outward_details`
  ADD CONSTRAINT `fk_itemcat` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`),
  ADD CONSTRAINT `fk_name` FOREIGN KEY (`name`) REFERENCES `inward_details` (`id`),
  ADD CONSTRAINT `fk_out` FOREIGN KEY (`outward_id`) REFERENCES `outward` (`id`);

--
-- Constraints for table `Rights`
--
ALTER TABLE `Rights`
  ADD CONSTRAINT `Rights_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_docs_trans`
--
ALTER TABLE `student_docs_trans`
  ADD CONSTRAINT `fk_student_docs_id` FOREIGN KEY (`student_docs_trans_stud_docs_id`) REFERENCES `student_docs` (`student_docs_id`);

--
-- Constraints for table `visitor_pass`
--
ALTER TABLE `visitor_pass`
  ADD CONSTRAINT `fk_visit_Dep` FOREIGN KEY (`department`) REFERENCES `department` (`department_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
