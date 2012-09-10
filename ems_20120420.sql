-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2012 at 01:03 PM
-- Server version: 5.1.47
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ems_20120420`
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
(1, 'fy bcom', 201112, '2012-03-21', '2012-03-12', 1, 1, '2012-03-01 00:00:00'),
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `assign_company_user_table`
--

INSERT INTO `assign_company_user_table` (`id`, `assign_user_id`, `assign_role_id`, `assign_org_id`, `assign_created_by`, `assign_creation_date`) VALUES
(3, 1, 1, 1, 1, '2012-03-19 11:42:38'),
(13, 61, 2, 1, 1, '2012-04-30 18:55:29'),
(12, 58, 2, 2, 12, '2012-04-30 11:18:53'),
(10, 1, 3, 2, 12, '2012-04-28 10:07:13'),
(11, 58, 2, 1, 12, '2012-04-30 11:17:07');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `assign_subject`
--

INSERT INTO `assign_subject` (`assign_subject_id`, `subject_id`, `subject_faculty_id`, `active`, `updated_date`, `updated_user`) VALUES
(1, 2, 3, '1', '2012-05-01 13:20:39', 1),
(2, 3, 3, '1', '2012-05-01 13:20:39', 1),
(3, 2, 1, '1', '2012-05-01 15:24:23', 1),
(4, 3, 1, '1', '2012-05-01 15:24:23', 1),
(5, 2, 3, '1', '2012-05-01 15:24:40', 1),
(6, 2, 4, '1', '2012-05-01 15:24:40', 1),
(7, 3, 3, '1', '2012-05-01 15:24:40', 1),
(8, 3, 4, '1', '2012-05-01 15:24:40', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`bank_id`, `bank_full_name`, `bank_short_name`) VALUES
(1, 'STATE BANK OF INDIA', 'SBI'),
(2, 'BANK OF BARODA', 'BOB');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `batch_id` int(2) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(50) NOT NULL,
  `batch_organization_id` int(2) NOT NULL,
  `batch_created_by` int(3) NOT NULL,
  `batch_creation_date` datetime NOT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_id`, `batch_name`, `batch_organization_id`, `batch_created_by`, `batch_creation_date`) VALUES
(1, 'INFORMATION TECHNOLOGY - B1', 1, 1, '2012-02-08 16:00:20'),
(2, 'COMPUTER SCIENCE -B1', 1, 1, '2012-02-10 12:39:43'),
(5, 'Test college', 2, 1, '2012-04-06 14:13:17'),
(6, 'New College', 2, 1, '2012-04-06 16:35:02');

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
  `branch_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch_organization_id` int(2) NOT NULL,
  `branch_created_by` int(3) NOT NULL,
  `branch_creation_date` date NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_organization_id`, `branch_created_by`, `branch_creation_date`) VALUES
(2, 'ELECTRONICS & COMMUNICATION', 1, 1, '2012-02-09'),
(3, 'COMPUTER ENGINEERING', 1, 1, '2012-05-03'),
(4, 'ELECTRICAL', 1, 1, '2012-02-09'),
(5, 'MECHANICAL', 1, 1, '2012-02-09'),
(7, 'TEST for GOKUL', 2, 1, '2012-04-10'),
(8, 'CIVIL ENGINEERING', 1, 1, '2012-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(2) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `category_organization_id` int(2) NOT NULL,
  `category_created_by` int(3) NOT NULL,
  `category_created_date` datetime NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_organization_id`, `category_created_by`, `category_created_date`) VALUES
(1, 'OPEN', 1, 1, '2012-02-01 11:01:51'),
(2, 'S.C.B.C', 1, 1, '2012-02-01 11:02:00'),
(3, 'S.C', 1, 1, '2012-02-01 11:02:06'),
(4, 'S.T', 1, 1, '2012-02-01 11:02:12'),
(5, 'test category', 2, 1, '2012-04-06 17:21:03'),
(6, 'P.H.', 1, 1, '2012-05-03 13:56:35'),
(7, 'EX. SERVICEMAN', 1, 1, '2012-05-03 13:56:53');

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
  `department_name` varchar(30) NOT NULL,
  `department_organization_id` int(2) NOT NULL,
  `department_created_by` int(2) NOT NULL,
  `department_created_date` datetime NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_organization_id`, `department_created_by`, `department_created_date`) VALUES
(1, 'COMPUTER', 1, 1, '2012-02-04 16:55:48'),
(2, 'MECHANICAL', 1, 1, '2012-02-04 16:56:33'),
(3, 'Account', 2, 1, '2012-02-08 12:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE IF NOT EXISTS `division` (
  `division_id` int(2) NOT NULL AUTO_INCREMENT,
  `division_name` varchar(50) NOT NULL,
  `division_organization_id` int(2) NOT NULL,
  `division_created_by` int(3) NOT NULL,
  `division_creation_date` datetime NOT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`division_id`, `division_name`, `division_organization_id`, `division_created_by`, `division_creation_date`) VALUES
(1, 'CIVIL ENGINEERING (DIV - A)', 1, 1, '2012-02-09 19:34:30'),
(2, 'test division', 2, 1, '2012-04-06 17:21:52'),
(3, 'MECHANICAL ENGINEERING (DIV - B)', 1, 1, '2012-05-03 14:18:59'),
(4, 'ELECTRICAL ENGINEERING (DIV - C)', 1, 1, '2012-05-03 14:19:24'),
(5, 'COMPUTER ENGINEERING (DIV - D)', 1, 1, '2012-05-03 14:19:53');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eduboard`
--

INSERT INTO `eduboard` (`eduboard_id`, `eduboard_name`, `eduboard_organization_id`, `eduboard_created_by`, `eduboard_created_date`) VALUES
(1, 'GTU', 1, 1, '2012-01-31 00:00:00'),
(2, 'GSEB', 1, 1, '2012-01-31 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `employee_address`
--

INSERT INTO `employee_address` (`employee_address_id`, `employee_address_c_line1`, `employee_address_c_line2`, `employee_address_c_city`, `employee_address_c_pincode`, `employee_address_c_state`, `employee_address_c_country`, `employee_address_p_line1`, `employee_address_p_line2`, `employee_address_p_city`, `employee_address_p_pincode`, `employee_address_p_state`, `employee_address_p_country`, `employee_address_phone`, `employee_address_mobile`) VALUES
(1, 'tes', 'test', 18, 45684561, 18, 17, 'test', 'test', 19, 382220, 19, 19, 54545121, 1234567890),
(2, 'test', 'test', 157, 382220, 2, 2, 'test', 'd', 2, 382220, 1, 1, 1234567890, 1234567890),
(3, 'BAHUCHAR NAGAR SOCIETY', 'DETHALI ROAD', 151, 384151, 10, 106, 'N/A', 'N/A', 151, 384151, 10, 106, 2147483647, 2147483647),
(4, '133, TIRUPATI TOWNSHIP', 'PATAN', 135, 384265, 10, 106, 'NA', 'NA', 135, 384265, 10, 106, 0, 2147483647),
(5, 'BRAMNIYAPOLE,', 'DERIYAWADO', 151, 384151, 10, 106, 'NA', 'NA', 151, 384151, 10, 106, 2147483647, 2147483647),
(6, 'BAHUCHAR BAXIPANCH AASHRAM SALA', 'SHEDRANA', 151, 384151, 10, 106, 'NA', 'NA', 151, 384151, 10, 106, 2147483647, 2147483647),
(7, '218, SANNAGAR SOCIETY', 'NR. G.E.B. HIGHWAY', 151, 384151, 10, 106, 'NA', 'NA', 151, 384151, 10, 106, 0, 2147483647),
(8, 'TA: VADGAM', 'DIST: BANASKANTHA', 133, 385421, 10, 106, 'NA', 'NA', 1, 385421, 10, 106, 2147483647, 2147483647),
(9, 'NR. SWAMINARAYAN BUNGLOW', 'SIDHPUR', 151, 384151, 10, 106, 'NA', 'NA', 151, 384151, 10, 106, 0, 2147483647),
(10, 'LAKSHAMIPUR ', 'SIDHPUR', 151, 384151, 10, 106, 'NA', 'NA', 151, 384151, 10, 106, 0, 2147483647),
(11, 'AT & POST GUNJA', 'TA : VISNAGAR', 68, 384315, 6, 106, 'NA', 'NA', 62, 384151, 6, 106, 0, 2147483647),
(12, 'BINDU SAROVAR', 'KADAMVADI', 151, 384151, 10, 106, 'NA', 'NA', 151, 384151, 10, 106, 0, 2147483647),
(13, 'AT & POST KUVARA', 'TA: SIDHPUR', 151, 384151, 10, 106, 'NA', 'NA', 151, 384151, 10, 106, 0, 2147483647),
(14, 'NA', 'SIDHPUR', 151, 384151, 10, 106, 'NA', 'NA', 151, 384151, 10, 106, 0, 0),
(15, 'NA', 'PALANPUR', 130, 385001, 10, 106, 'NA', 'NA', 130, 385001, 10, 106, 0, 0),
(16, '6,ANAND BAUNGLOWS', 'NR. TIRUPATI SOCEITY', 151, 384151, 10, 106, 'NA', 'NA', 2, 384151, 1, 2, 0, 2147483647),
(17, 'Hanumangali', 'Nr Bhramaniya pole', 151, 384151, 10, 106, 'NA', 'NA', 146, 388001, 10, 106, 0, 2147483647),
(18, '4, RADHASWAMI BUNGLOWS', 'B/H BIG BAZAR', 8, 388001, 10, 106, 'NA', 'NA', 3, 384265, 10, 106, 247733, 0),
(19, 'TA: VADNAGAR', 'DIST: MEHSANA', 112, 384355, 10, 106, 'NA', 'NA', 3, 384151, 10, 106, 223934, 0),
(20, 'MOTISARA, DR. AMBEDKAR CHOWK', 'PATAN', 135, 384265, 10, 106, 'NA', 'NA', 135, 384265, 10, 106, 0, 0),
(21, '"SNEH-KUNJ" BHADRA', 'B/H DUTT MANDIR', 135, 384265, 10, 106, 'NA', 'NA', 135, 384265, 10, 106, 231051, 0),
(22, 'OPP.DEASI STREET,', ' RUDRA MAHALAY ROAD', 151, 384151, 10, 106, 'NA', 'NA', 151, 384151, 10, 106, 0, 0),
(23, '14,BALAJI PARAK SOCIETY,', 'B/H G.E.B. SUB STATION', 135, 384265, 10, 106, 'NA', 'NA', 135, 384265, 10, 106, 0, 0),
(24, '2,SHAKTIKUNJ SOCIETY,', 'NR. SAMJUBA HOSPITAL', 3, 380024, 10, 106, 'NA', 'NA', 3, 380024, 10, 106, 22743954, 0),
(25, '12/13 HARIOM BUNGLOWS,', 'B/H DHARAM CINEMA', 119, 384002, 10, 106, 'NA', 'NA', 62, 384151, 10, 106, 0, 0),
(26, 'NEELKAMAL APPARTMENT', 'H.L.COLLEGE', 3, 380003, 10, 106, 'NA', 'NA', 3, 380003, 10, 106, 0, 0),
(27, 'NEAR GANPATI TAMPLE', 'AITHOR', 10, 384175, 10, 106, 'NA', 'NA', 2, 384265, 10, 106, 259904, 0),
(28, '13/ HAREKRISHANA', 'RADHANPUR', 143, 385340, 10, 106, 'NA', 'NA', 4, 388001, 10, 106, 0, 0),
(29, '45/SIDDHHEMNAGAR SOCIETY', 'OPP. R.M.PETROL PUMP', 135, 384265, 10, 106, 'NA', 'NA', 1, 384151, 10, 106, 0, 0),
(30, '129, CHANAKYAPURI SOCIETY', 'SUKHBAGH ROAD', 130, 385001, 10, 106, 'NA', 'NA', 3, 384151, 10, 106, 0, 0),
(31, 'MOTANO VAS', 'HINGLACHACHAR', 135, 384265, 10, 106, 'NA', 'NA', 5, 388001, 10, 106, 0, 0),
(32, '19,ANKIT SOCIETY', 'B/H NEESARG HONDA SHOWROOM', 130, 384265, 10, 106, 'NA', 'NA', 1, 384265, 10, 106, 0, 0),
(33, 'PLOT NO 148412,SECTOR:3-D', 'GANDHINAGAR', 65, 385001, 10, 106, 'NA', 'NA', 1, 384151, 10, 106, 0, 0),
(34, 'a', 'test', 2, 382220, 2, 2, 'test', 'd', 2, 382220, 2, 2, 1234567890, 1234567890);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `employee_designation`
--

INSERT INTO `employee_designation` (`employee_designation_id`, `employee_designation_name`, `employee_designation_organization_id`, `employee_designation_created_by`, `employee_designation_created_date`) VALUES
(1, 'HEAD CLERK', 1, 1, '2012-04-20 14:40:39'),
(2, 'Lecturer', 2, 1, '2012-04-25 13:25:26'),
(3, 'LIBRARIAN', 1, 1, '2012-04-18 16:35:37'),
(4, 'ASST. LIBRARIAN', 1, 1, '2012-04-18 16:35:52'),
(5, 'DESPETCH SECTION', 1, 1, '2012-04-18 16:36:03'),
(6, 'OFFICE SUPRITENDENT', 1, 1, '2012-04-18 16:36:18'),
(7, 'P.S. TO PRINCIPAL', 1, 1, '2012-04-18 16:36:27'),
(8, 'STORE & PURCHASE', 1, 1, '2012-04-18 16:36:42'),
(9, 'PEON', 1, 1, '2012-04-18 16:36:54'),
(10, 'SECURITY SUPERVISOR', 1, 1, '2012-04-18 16:37:07'),
(11, 'SECURITY GARD', 1, 1, '2012-04-18 16:37:18'),
(12, 'H.R EXECUTIVE', 1, 1, '2012-04-18 16:37:28'),
(13, 'DIRECTOR', 1, 1, '2012-05-03 14:26:00'),
(14, 'PRINCIPAL', 1, 1, '2012-05-03 14:27:11'),
(15, 'PROFESSOR', 1, 1, '2012-05-03 14:27:51'),
(16, 'ASSOCIATE PROFESSOR', 1, 1, '2012-05-03 14:28:51'),
(17, 'ASSISTANT PROFESSOR', 1, 1, '2012-05-03 14:29:36'),
(18, 'PRO-TERM LECTURER', 1, 1, '2012-05-03 14:31:33'),
(19, 'VISITING FACULTY', 1, 1, '2012-05-03 14:32:52'),
(20, 'WORKSHOP SUPERINTENDENT', 1, 1, '2012-05-03 14:34:40'),
(21, 'LAB ASSISTANT', 1, 1, '2012-05-03 14:35:15'),
(22, 'INSTRUCTOR - CARPENTRY', 1, 1, '2012-05-03 14:36:17'),
(23, 'INSTRUCTOR - FITTING', 1, 1, '2012-05-03 14:37:25'),
(24, 'MACHINIST', 1, 1, '2012-05-03 14:39:01'),
(25, 'ESTATE ENGINEER', 1, 1, '2012-05-03 14:39:52'),
(26, 'CIVIL SUPERVISOR', 1, 1, '2012-05-03 14:40:39'),
(27, 'ELECTRICIAN', 1, 1, '2012-05-03 14:41:28'),
(28, 'ADMINISTRATIVE OFFICER', 1, 1, '2012-05-03 14:47:49'),
(29, 'OFFICE ASSISTANT', 1, 1, '2012-05-03 14:50:50'),
(30, 'GARDENER', 1, 1, '2012-05-03 14:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `employee_docs`
--

CREATE TABLE IF NOT EXISTS `employee_docs` (
  `employee_docs_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_docs_desc` varchar(50) DEFAULT NULL,
  `employee_docs_path` varchar(150) NOT NULL,
  PRIMARY KEY (`employee_docs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `employee_docs`
--

INSERT INTO `employee_docs` (`employee_docs_id`, `employee_docs_desc`, `employee_docs_path`) VALUES
(1, NULL, 'logo.png'),
(2, NULL, 'User1.png'),
(3, NULL, 'batch.png');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employee_docs_trans`
--

INSERT INTO `employee_docs_trans` (`employee_docs_trans_id`, `employee_docs_trans_user_id`, `employee_docs_trans_emp_docs_id`) VALUES
(1, 1, 1),
(2, 1, 3);

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
  `employee_dob` date NOT NULL,
  `employee_birthplace` varchar(25) DEFAULT NULL,
  `employee_gender` varchar(6) NOT NULL,
  `employee_bloodgroup` varchar(3) NOT NULL,
  `employee_marital_status` varchar(10) NOT NULL,
  `employee_private_email` varchar(30) NOT NULL,
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
  `employee_guardian_occupation_city` int(4) NOT NULL,
  `employee_guardian_city_pin` int(6) NOT NULL,
  `employee_guardian_phone_no` bigint(15) NOT NULL,
  `employee_guardian_mobile1` bigint(15) NOT NULL,
  `employee_guardian_mobile2` bigint(15) DEFAULT NULL,
  `employee_faculty_of` varchar(50) NOT NULL,
  `employee_attendance_card_id` varchar(15) NOT NULL,
  `employee_tally_id` varchar(9) NOT NULL,
  `employee_created_by` int(3) DEFAULT NULL,
  `employee_creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`employee_id`, `employee_no`, `employee_first_name`, `employee_middle_name`, `employee_last_name`, `employee_name_alias`, `employee_dob`, `employee_birthplace`, `employee_gender`, `employee_bloodgroup`, `employee_marital_status`, `employee_private_email`, `employee_organization_mobile`, `employee_private_mobile`, `employee_pancard_no`, `employee_account_no`, `employee_joining_date`, `employee_probation_period`, `employee_hobbies`, `employee_technical_skills`, `employee_project_details`, `employee_curricular`, `employee_reference`, `employee_refer_designation`, `employee_guardian_name`, `employee_guardian_relation`, `employee_guardian_home_address`, `employee_guardian_qualification`, `employee_guardian_occupation`, `employee_guardian_income`, `employee_guardian_occupation_address`, `employee_guardian_occupation_city`, `employee_guardian_city_pin`, `employee_guardian_phone_no`, `employee_guardian_mobile1`, `employee_guardian_mobile2`, `employee_faculty_of`, `employee_attendance_card_id`, `employee_tally_id`, `employee_created_by`, `employee_creation_date`) VALUES
(1, '1234', 'karmraj', 'G', 'Zala', 'lucky', '2012-04-25', 'Ahmedabad', 'Male', 'A+', 'Married', 'qq@mailcatch.com', 123455666, 1234567891, '344343qaq7', 2147483647, '2012-04-26', '3 month', '', '', 'hjvghjgf1`', 'vhf', '', '', 'test', 'test', 'test', 'B.TECH', 'test', '10000', 'test', 19, 1545451, 91687127852, 9879569838, 9198795698, 'Gujarat University', '12345hj', '4545', 1, '2012-04-13 16:01:02'),
(2, '1234', 'karmraj', 'G', 'Zala', 'lucky', '2012-04-28', '', 'Male', 'A+', 'Married', 'qq@mailcatch.com', 123455666, 123456789, '344343', 3434, '2012-04-19', '3 month', '', '', '', '', '', '', 'test', 'test', 'test', 'test', 'test', '10000', 'avc', 2, 380016, 9879569838, 9879569838, 9879569838, 'Gujarat University', '12345', '4545', 1, '2012-04-16 12:22:53'),
(3, '0', 'JAGDISHSINH', 'JORAVARSINH', 'RANA', 'NA', '1974-10-22', 'NA', 'Male', 'A+', 'Married', 'jagdishsinh.rana@hansaba.com', 0, 0, 'AIHPR 6808', NULL, '2011-06-01', 'N/A', '', '', '', '', '', '', 'JORAVARSINH', 'NA', 'N/A', '', '', '0', 'N/A', 1, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-18 16:57:16'),
(4, '1', 'KRUPA', 'TUSHAR', 'PATEL', 'Na', '1985-03-11', 'NA', 'Female', 'A-', 'Married', 'baku_tushar@yahoo.co.in', 0, 0, 'BFZPP 0973', NULL, '2011-04-23', '', '', '', '', '', '', '', 'TUSHAR', 'NA', 'NA', '', '', '0', 'NA', 1, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-18 17:08:00'),
(5, '2', 'GIRISH', 'RAMESHCHANDRA', 'KHAMAR', 'NA', '1979-06-25', 'NA', 'Male', 'B+', 'Married', 'a@g.c', 0, 0, 'ARAPK 4945', NULL, '2011-06-01', 'NA', '', '', '', '', '', '', 'RAMESHCHANDRA', 'Father', 'NA', '', '', '0', 'NA', 2, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-18 17:15:19'),
(6, '3', 'BHARATIBEN', 'NEHALKUMAR', 'OZA', 'NA', '1976-03-07', '', 'Female', 'B+', 'Married', 'a@b.c', 0, 0, 'AANPO 0974', NULL, '2011-09-01', '', '', '', '', '', '', '', 'NEHALKUMAR', 'Husband', 'NA', '', '', '0', 'NA', 2, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-18 17:27:15'),
(7, '5', 'VASANTKUMAR', 'KACHARDAS', 'PATEL', '', '1978-06-01', '', 'Male', 'A+', 'Married', 'vasantpatel@yahoo.com', 0, 0, '', NULL, '2011-07-04', '', '', '', '', '', '', '', 'KACHARDAS', 'Father', 'NA', '', '', '0', 'NA', 1, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-18 17:37:35'),
(8, '6', 'SURESHSINH', 'KHUMANSINH', 'VIHOL', '', '2982-08-30', '', 'Male', 'A+', 'Married', 'suresh_vihol@yahoo.com', 0, 0, 'AGMPV 3579', NULL, '2011-07-01', '', '', '', '', '', '', '', 'KHUMANSINH', 'father', 'NA', '', '', '0', 'NA', 1, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-18 17:46:33'),
(9, '7', 'RAJNIKANT', 'RAMCHANDBHAI', 'PRAJAPATI', '', '1989-07-13', '', 'Male', 'AB+', 'Unmarried', 'prajapatirajnikant27@yahoo.co', 0, 0, '', NULL, '2011-07-13', '', '', '', '', '', '', '', 'RAMCHANDBHAI', 'father', 'NA', '', '', '0', 'NA', 1, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-18 17:53:46'),
(10, '8', 'PRATAPJI', 'CHAMNAJI', 'RAJPUT', '', '1962-10-26', '', 'Male', 'A+', 'Married', 'k@k.con', 0, 0, '', NULL, '2011-06-01', '', '', '', '', '', '', '', 'CHAMNAJI', 'father', 'NA', '', '', '0', 'NA', 1, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-18 17:57:48'),
(11, '10', 'VISHNUKUMAR', 'HEMRAJBHAI', 'CHAUDHARY', '', '1991-10-18', '', 'Male', 'A-', 'Unmarried', 'a@b.c', 0, 0, '', NULL, '2011-06-13', '', '', '', '', '', '', '', 'HEMRAJBHAI', 'father', 'NA', '', '', '0', 'NA', 123, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-18 18:02:56'),
(12, '11', 'CHAMANJI', 'GALABJI', 'RAJPUT', '', '1961-07-05', '', 'Male', 'AB-', 'Unmarried', 'a@b.c', 0, 0, '', NULL, '2011-06-01', '', '', '', '', '', '', '', 'GALABJI', 'father', 'NA', '', '', '0', 'NA', 124, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-18 18:07:28'),
(13, '12', 'BABARBHAI', 'KHODABHAI', 'RABARI', '', '1962-06-01', '', 'Male', 'A+', 'Married', 'a@b.c', 0, 0, '', NULL, '2011-09-01', '', '', '', '', '', '', '', 'KHODABHAI', 'father', 'NA', '', '', '0', 'NA', 1, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-19 10:07:37'),
(14, '13', 'GOVINDBHAI', 'MALJIBHAI', 'DESAI', '', '0000-00-00', '', 'Male', 'A+', 'Married', 'a@b.c', 0, 0, '', NULL, '2011-09-01', '', '', '', '', '', '', '', 'MALJIBHAI', 'Father', 'NA', '', '', '0', 'NA', 1, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-19 10:11:59'),
(15, '14', 'KIRITSINH', 'CHATURSINH', 'BODANA', '', '0000-00-00', '', 'Male', 'A-', 'Unmarried', '1avc@1.1', 0, 0, '', NULL, '2011-09-01', '', '', '', '', '', '', '', 'CHATURSINH', 'Father', 'NA', '', '', '0', 'NA', 3, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-19 10:19:46'),
(16, '15', 'JIGAR', 'JASHAVANTBHAI', 'PATEL', '', '1985-11-18', '', 'Male', 'B+', 'Unmarried', 'jigarpatel_09@yahoo.com', 0, 0, '', NULL, '0000-00-00', '', '', '', '', '', '', '', 'JASHWATBHAI', 'Father', 'NA', '', '', '0', 'NA', 3, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-19 10:23:16'),
(17, '16', 'Urvi', 'Jitendrakumar', 'Khamar', '', '1989-12-11', '', 'Female', 'B+', 'Married', 'urvi_khamar1989@yahoo.com', 0, 0, '', NULL, '2011-12-05', '', '', '', '', '', '', '', 'Jitendrakumar', 'Husband', 'NA', '', '', '0', 'NA', 3, 0, 0, 0, 0, '0', '0', '0', 1, '2012-04-19 10:27:09'),
(18, '1', 'MONAL', 'KANUBHAI', 'DESAI', '', '1985-08-18', '', 'Female', 'A+', 'Married', 'monal18885@gmail.com', 0, 9429328126, 'AWJPD  294', NULL, '2011-07-01', '', '', '', '', '', '', '', 'KANUBHAI', 'Father', 'NA', '', '', '0', 'NA', 1, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 10:39:02'),
(19, '2', 'PIYUSHKUMAR', 'MADHAVLAL', 'PATEL', '', '1986-08-08', '', 'Male', 'A-', 'Unmarried', 'pmpatel551986@gmail.com', 0, 9428879276, 'ATLPP 2042', NULL, '2011-12-08', '', '', '', '', '', '', '', 'MADHAVLAL', 'Father', 'NA', '', '', '0', 'NA', 3, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 10:44:14'),
(20, '3', 'MEHULKUMAR', 'KIRITBHAI', 'DETHARIYA', '', '1987-12-08', '', 'Male', 'A+', 'Married', 'mehul.dethariya@yahoo.com', 0, 9925957946, '', NULL, '2011-12-07', '', '', '', '', '', '', '', 'KIRITBHAI', 'Father', 'NA', '', '', '0', 'NA', 3, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 10:50:58'),
(21, '4', 'PARTH', 'VIKRAMBHAI', 'SANDESARA', '', '1985-08-14', '', 'Male', 'A+', 'Unmarried', 'parth_sandesara@yahoo.co.in', 0, 9925490230, 'BQKPS 8984', NULL, '0000-00-00', '', '', '', '', '', '', '', 'VIKRAMBHAI', 'Father', 'NA', '', '', '0', 'NA', 3, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 10:55:08'),
(22, '5', 'SUKRUTKUMAR', 'MAHESHKUMAR', 'SOMPURA', '', '1985-11-19', '', 'Male', 'A-', 'Married', 'sukrutbaps@yahoo.co.in', 0, 9726646708, '', NULL, '2011-08-11', '', '', '', '', '', '', '', 'MAHESHKUMAR', 'Father', 'NA', '', '', '0', 'NA', 2, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:00:50'),
(23, '6', 'AVANI', 'JAYKRUSHNABHAI', 'RAVAL', '', '0000-00-00', '', 'Female', 'A+', 'Unmarried', 'ravalavani@yahoo.com', 0, 9898714568, 'ASAPR 2522', NULL, '0000-00-00', '', '', '', '', '', '', '', 'JAYKRUSHNABHAI', 'Father', 'NA', '', '', '0', 'NA', 3, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:03:58'),
(24, '7', 'DARSHAN', 'POONAMBHAI', 'PATEL', '', '1984-05-02', '', 'Male', 'A+', 'Unmarried', 'darshan_meen2274@yahoo.com', 0, 8758212134, '', NULL, '2011-08-08', '', '', '', '', '', '', '', 'POONAMBHAI', 'Father', 'NA', '', '', '0', 'NA', 3, 387001, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:07:54'),
(25, '8', 'HITESH', 'BALDEVBHAI', 'PRAJAPATI', '', '1985-10-10', '', 'Male', 'A+', 'Married', 'hitesh_uvpce@yahoo.co.in', 0, 9662048156, '', NULL, '2011-07-13', '', '', '', '', '', '', '', 'BALDEVBHAI', 'Father', 'NA', '', '', '0', 'NA', 3, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:14:12'),
(26, '9', 'JUMISREE', 'LATESARAT', 'SARMAHPATHAK', '', '1980-03-01', '', 'Female', 'A+', 'Married', 'jumi.sarmah@gamil.com', 0, 7878248617, 'AYVPP 3599', NULL, '2011-08-08', '', '', '', '', '', '', '', 'LATESARAT', 'Husband', 'NA', '', '', '0', 'NA', 3, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:18:58'),
(27, '10', 'JITENDRA', 'NATVARLAL', 'PRAJAPATI', '', '1984-02-01', '', 'Male', 'A+', 'Married', 'prajapatij58@yahoo.com', 0, 9924381795, 'BJSPP 6512', NULL, '2011-07-01', '', '', '', '', '', '', '', 'NATVARLAL', 'Father', 'NA', '', '', '0', 'NA', 2, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:22:16'),
(28, '11', 'HIRAL', 'VINODCHANDRA', 'PATEL', '', '1987-11-11', '', 'Female', 'A+', 'Married', 'hiral_civileng@yahoo.co.in', 0, 9712913001, '', NULL, '2011-08-08', '', '', '', '', '', '', '', 'VINODCHANDRA', 'Father', 'NA', '', '', '0', 'NA', 2, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:25:07'),
(29, '12', 'PARTH', 'DINESHBHAI', 'PATEL', '', '1987-11-30', '', 'Male', 'A+', 'Married', 'parth.patel@hansabacollege.com', 0, 9099020885, '', NULL, '2011-07-12', '', '', '', '', '', '', '', 'DINESHBHAI', 'Father', 'NA', '', '', '0', 'NA', 1, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:28:43'),
(30, '13', 'RAHUL', 'KANAIYALAL', 'RATHOD', '', '1984-08-03', '', 'Male', 'A+', 'Married', 'rahulcivilengg@gmail.com', 0, 9898271634, 'AMLPR 4639', NULL, '2011-02-09', '', '', '', '', '', '', '', 'KANAIYALAL', 'Father', 'NA', '', '', '0', 'NA', 2, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:31:57'),
(31, '14', 'BHAVIKA', 'NIKHILKUMAR', 'BAROT', '', '1987-08-06', '', 'Female', 'A+', 'Married', 'bhvi6887@gmail.com', 0, 9726037524, 'BFUPB 9764', NULL, '2011-09-08', '', '', '', '', '', '', '', 'NIKHILKUMAR', 'Father', 'NA', '', '', '0', 'NA', 5, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:35:07'),
(32, '15', 'NIKUNJ', 'GOVINDBHAI', 'PATEL', '', '1987-03-20', '', 'Male', 'A+', 'Unmarried', 'nik_200387@yahoo.com', 0, 7874704994, 'BAYPP 4658', NULL, '2011-09-02', '', '', '', '', '', '', '', 'GOVINDBHAI', 'Father', 'NA', '', '', '0', 'NA', 7, 566534, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:38:10'),
(33, '16', 'JAYESHKUMAR', 'NATVARLAL', 'Shah', '', '2056-04-05', '', 'Male', 'A-', 'Married', 'JAYESH.SHAH@HANSABACOLLEG.COM', 0, 9825184888, 'AHWPS2343H', NULL, '2011-04-17', '', '', '', '', '', '', '', 'NATVARLAL', 'Father', 'NA', '', '', '0', 'NA', 12, 0, 0, 0, 0, 'UG', '0', '0', 1, '2012-04-19 11:42:01'),
(34, '111', 'karmraj', 'r', 'patel', 'krun', '2012-04-24', 'Ahmedabad', 'Male', 'A-', 'Unmarried', 'tb@tb.com', 123455666, 123456789, '344343qaq7', 3434, '2012-03-07', '3 month', '', '', '', '', 'test', '', 'test', 'test', 'abc', 'test', 'engi', '10000', 'test', 2, 380016, 9879569838, 4545454, 9879569838, 'Gujarat University', '12345', '4545', 1, '2012-05-07 15:47:24');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `employee_photos`
--

INSERT INTO `employee_photos` (`employee_photos_id`, `employee_photos_desc`, `employee_photos_path`) VALUES
(1, NULL, '1_karmraj'),
(2, NULL, '2_karmraj'),
(3, NULL, '3_JAGDISHSINH'),
(4, NULL, '4_KRUPA'),
(5, NULL, '5_GIRISH'),
(6, NULL, '6_BHARATIBEN'),
(7, NULL, '7_VASANTKUMAR'),
(8, NULL, '8_SURESHSINH'),
(9, NULL, '9_RAJNIKANT'),
(10, NULL, '10_PRATAPJI'),
(11, NULL, '11_VISHNUKUMAR'),
(12, NULL, '12_CHAMANJI'),
(13, NULL, '13_BABARBHAI'),
(14, NULL, '14_GOVINDBHAI'),
(15, NULL, '15_KIRITSINH'),
(16, NULL, '16_JIGAR'),
(17, NULL, '17_Urvi'),
(18, NULL, '18_MONAL'),
(19, NULL, '19_PIYUSHKUMAR'),
(20, NULL, '20_MEHULKUMAR'),
(21, NULL, '21_PARTH'),
(22, NULL, '22_SUKRUTKUMAR'),
(23, NULL, '23_AVANI'),
(24, NULL, '24_DARSHAN'),
(25, NULL, '25_HITESH'),
(26, NULL, '26_JUMISREE'),
(27, NULL, '27_JITENDRA'),
(28, NULL, '28_HIRAL'),
(29, NULL, '29_PARTH'),
(30, NULL, '30_RAHUL'),
(31, NULL, '31_BHAVIKA'),
(32, NULL, '32_NIKUNJ'),
(33, NULL, '33_JAYESHKUMAR'),
(34, NULL, 'no_image');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `employee_transaction`
--

INSERT INTO `employee_transaction` (`employee_transaction_id`, `employee_transaction_user_id`, `employee_transaction_employee_id`, `employee_transaction_emp_address_id`, `employee_transaction_branch_id`, `employee_transaction_category_id`, `employee_transaction_quota_id`, `employee_transaction_religion_id`, `employee_transaction_shift_id`, `employee_transaction_designation_id`, `employee_transaction_nationality_id`, `employee_transaction_department_id`, `employee_transaction_organization_id`, `employee_transaction_languages_known_id`, `employee_transaction_emp_photos_id`) VALUES
(1, 21, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 16, 1),
(2, 25, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 2, 20, 2),
(3, 27, 3, 3, 2, 3, 1, 1, 1, 1, 11, 1, 1, 22, 3),
(4, 28, 4, 4, 2, 1, 1, 1, 2, 3, 1, 1, 1, 23, 4),
(5, 29, 5, 5, 4, 2, 2, 2, 1, 4, 3, 2, 1, 24, 5),
(6, 30, 6, 6, 5, 1, 1, 1, 1, 5, 11, 3, 1, 25, 6),
(7, 31, 7, 7, 2, 1, 1, 1, 1, 6, 12, 1, 1, 26, 7),
(8, 32, 8, 8, 2, 1, 1, 1, 1, 7, 3, 1, 1, 27, 8),
(9, 33, 9, 9, 7, 2, 2, 1, 1, 8, 11, 3, 1, 28, 9),
(10, 34, 10, 10, 4, 1, 1, 1, 1, 9, 12, 2, 1, 29, 10),
(11, 35, 11, 11, 4, 2, 2, 3, 2, 9, 11, 2, 1, 30, 11),
(12, 36, 12, 12, 5, 2, 2, 1, 2, 10, 11, 3, 1, 31, 12),
(13, 37, 13, 13, 5, 3, 4, 1, 1, 11, 11, 2, 1, 32, 13),
(14, 38, 14, 14, 2, 4, 4, 1, 1, 11, 3, 1, 1, 33, 14),
(15, 39, 15, 15, 5, 2, 2, 3, 2, 11, 12, 2, 1, 34, 15),
(16, 40, 16, 16, 4, 1, 1, 1, 2, 1, 5, 2, 1, 35, 16),
(17, 41, 17, 17, 2, 1, 2, 1, 1, 12, 11, 1, 1, 36, 17),
(18, 42, 18, 18, 2, 2, 2, 1, 1, 2, 11, 1, 1, 37, 18),
(19, 43, 19, 19, 4, 1, 3, 1, 1, 2, 11, 2, 1, 38, 19),
(20, 44, 20, 20, 5, 3, 2, 1, 2, 2, 11, 2, 1, 39, 20),
(21, 45, 21, 21, 5, 1, 3, 1, 1, 2, 11, 3, 1, 40, 21),
(22, 46, 22, 22, 4, 1, 2, 1, 2, 2, 11, 1, 1, 41, 22),
(23, 47, 23, 23, 2, 1, 1, 1, 1, 2, 11, 1, 1, 42, 23),
(24, 48, 24, 24, 2, 1, 1, 1, 1, 2, 11, 1, 1, 43, 24),
(25, 49, 25, 25, 2, 3, 1, 1, 1, 2, 11, 1, 1, 44, 25),
(26, 50, 26, 26, 2, 1, 1, 1, 1, 2, 11, 1, 1, 45, 26),
(27, 51, 27, 27, 2, 3, 2, 1, 1, 2, 3, 1, 1, 46, 27),
(28, 52, 28, 28, 2, 1, 1, 1, 1, 2, 11, 1, 1, 47, 28),
(29, 53, 29, 29, 2, 1, 1, 1, 1, 2, 1, 2, 1, 48, 29),
(30, 54, 30, 30, 2, 3, 1, 1, 1, 2, 11, 1, 1, 49, 30),
(31, 55, 31, 31, 2, 3, 1, 1, 1, 2, 11, 1, 1, 50, 31),
(32, 56, 32, 32, 2, 1, 2, 1, 1, 2, 11, 1, 1, 51, 32),
(33, 57, 33, 33, 2, 1, 2, 1, 1, 2, 11, 1, 1, 52, 33),
(34, 62, 34, 34, 2, 2, 2, 2, 1, 1, 3, 1, 1, 53, 34);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `feedback_details`
--

INSERT INTO `feedback_details` (`id`, `question`, `remark`, `feedback_id`) VALUES
(1, 'This is test feedback questions?', '', 2),
(2, 'my test', '', 2),
(3, 'This is test feedback questions?', '', 2),
(4, 'sdfdsf', 'sfsdf', 2);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedback_master`
--

INSERT INTO `feedback_master` (`id`, `feedback_date`, `feedback_name`, `feedback_emp_id`, `feedback_branch_id`, `feedback_academic_term_id`, `feedback_subject_id`, `feedback_department_id`, `remark`) VALUES
(2, '2012-04-05', 'test', 1, 3, 2, 2, 1, 'test');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_details_table`
--

INSERT INTO `fees_details_table` (`fees_details_id`, `fees_details_name`, `fees_details_amount`, `fees_details_created_by`, `fees_details_created_date`, `fees_details_tally_id`) VALUES
(1, 'First Trigger Fees', 23000, 1, '2012-04-05 16:48:42', 789),
(2, 'Second Trigger Fees', 235, 1, '2012-04-05 16:50:17', 45);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_master`
--

INSERT INTO `fees_master` (`fees_master_id`, `fees_master_name`, `fees_master_created_by`, `fees_master_created_date`, `fees_master_tally_id`, `fees_organization_id`, `fees_branch_id`, `fees_academic_term_id`, `fees_quota_id`, `fees_master_total`) VALUES
(1, 'Trigger Fees Master', 1, '2012-04-05 16:48:28', 896, 1, 2, 1, 1, 20000),
(2, 'tesr', 19, '2012-04-13 15:05:46', 1234, 3, 2, 1, 1, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_master_transaction`
--

INSERT INTO `fees_master_transaction` (`fees_id`, `fees_master_id`, `fees_desc_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_cash`
--

CREATE TABLE IF NOT EXISTS `fees_payment_cash` (
  `fees_payment_cash_id` int(7) NOT NULL AUTO_INCREMENT,
  `fees_payment_cash_amount` int(7) NOT NULL,
  PRIMARY KEY (`fees_payment_cash_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `fees_payment_cash`
--

INSERT INTO `fees_payment_cash` (`fees_payment_cash_id`, `fees_payment_cash_amount`) VALUES
(1, 4000),
(2, 4800),
(3, 2005),
(4, 200),
(5, 100),
(6, 120),
(7, 120),
(8, 300);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_payment_cheque`
--

INSERT INTO `fees_payment_cheque` (`fees_payment_cheque_id`, `fees_payment_cheque_number`, `fees_payment_cheque_date`, `fees_payment_cheque_bank`, `fees_payment_cheque_amount`, `fees_payment_cheque_status`) VALUES
(1, 123, '2012-04-21 00:00:00', 2, 3000, 1),
(2, 789, '2012-04-24 00:00:00', 1, 300, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `fees_payment_transaction`
--

INSERT INTO `fees_payment_transaction` (`fees_payment_transaction_id`, `fees_payment_master_id`, `fees_payment_method_id`, `fees_payment_cash_cheque_id`, `fees_receipt_id`, `fees_payment`, `fees_received_user_id`, `fees_full_part_payment_id`, `fees_student_id`) VALUES
(1, 1, 1, 1, 18, 1, 1, 1, 1),
(2, 1, 2, 1, 19, 1, 1, 1, 1),
(3, 1, 1, 2, 20, 1, 1, 1, 1),
(4, 1, 2, 2, 21, 1, 1, 1, 1),
(5, 1, 1, 3, 22, 1, 1, 1, 1),
(6, 1, 1, 4, 23, 1, 1, 1, 2),
(7, 1, 1, 5, 24, 1, 1, 1, 1),
(8, 1, 1, 6, 25, 1, 1, 1, 1),
(9, 1, 1, 7, 26, 1, 1, 1, 1),
(10, 1, 1, 8, 27, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_type`
--

CREATE TABLE IF NOT EXISTS `fees_payment_type` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `fees_type_name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fees_payment_type`
--

INSERT INTO `fees_payment_type` (`id`, `fees_type_name`) VALUES
(1, 'Credit');

-- --------------------------------------------------------

--
-- Table structure for table `fees_receipt`
--

CREATE TABLE IF NOT EXISTS `fees_receipt` (
  `fees_receipt_id` int(7) NOT NULL AUTO_INCREMENT,
  `fees_receipt_number` int(7) DEFAULT NULL,
  PRIMARY KEY (`fees_receipt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `fees_receipt`
--

INSERT INTO `fees_receipt` (`fees_receipt_id`, `fees_receipt_number`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(12, NULL),
(13, NULL),
(14, NULL),
(15, NULL),
(16, NULL),
(17, NULL),
(18, NULL),
(19, NULL),
(20, NULL),
(21, NULL),
(22, NULL),
(23, NULL),
(24, NULL),
(25, NULL),
(26, NULL),
(27, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `inward`
--

INSERT INTO `inward` (`id`, `invoice_description`, `company_name`, `invoice_no_dc`, `invoice_date`, `received_date`, `sender_name`, `department`, `photo`, `document`, `document_desc`, `org_name_id`, `no_of_packets`, `receiver_name`) VALUES
(1, 'Redhat Books', 'Redhat India Pvt Ltd.', '1212', '2012-04-02', '2012-04-06', 'Mr. Sachin Naik', 1, 'nileshtopy.jpg', 'feedbackdesign.pdf', '', 1, 3, 'Mr. Nilesh Vaghela'),
(4, 'biscuits', 'britannia', '456WFE', '2012-04-06', '2012-04-06', 'Reva bhai', 2, '1f.jpg', 's5.txt', '', 1, 9, 'Kanti bhai'),
(5, 'asdfgh', 'rudra', '123', '2012-04-06', '2012-04-06', '123456', 1, '', '', '', 1, 1, 'dev'),
(10, 'test', 'test', 'test', '2012-05-03', '2012-05-03', 'test', 1, 'logo.png', NULL, '', 1, 3, 'eres');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `inward_details`
--

INSERT INTO `inward_details` (`id`, `inward_id`, `name`, `description`, `quantity`, `item_category_id`, `rate`, `amount`) VALUES
(1, 7, 'test', 'test', 1, 1, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE IF NOT EXISTS `item_category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`id`, `cat_name`) VALUES
(1, 'Computer'),
(2, 'dgfg');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_name`, `languages_organization_id`, `languages_created_by`, `languages_created_date`) VALUES
(1, 'ENGLISH', 1, 0, '0000-00-00 00:00:00'),
(2, 'HINDI', 1, 0, '0000-00-00 00:00:00'),
(3, 'GUJARATI', 1, 0, '0000-00-00 00:00:00'),
(4, 'MARATHI', 1, 0, '0000-00-00 00:00:00'),
(5, 'TAMIL', 1, 0, '0000-00-00 00:00:00'),
(6, 'TELUGU', 1, 0, '0000-00-00 00:00:00'),
(7, 'SANSKRIT', 1, 0, '0000-00-00 00:00:00'),
(8, 'URDU', 1, 0, '0000-00-00 00:00:00'),
(9, 'ORIYA', 1, 0, '0000-00-00 00:00:00'),
(10, 'NEPALI', 1, 0, '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `languages_known`
--

INSERT INTO `languages_known` (`languages_known_id`, `languages_known1`, `languages_known2`, `languages_known3`, `languages_known4`) VALUES
(1, 1, 1, 1, 1),
(2, 8, 2, 3, 4),
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
(53, 1, NULL, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`menu_id`, `menu_name`, `link`, `image`, `status`, `created_by`, `created_date`) VALUES
(1, 'Add Item', 'index', '/var/www', '1', 1, 20120210),
(2, 'Fees Management', 'test', 'tst', '1', 1, 20120210);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`organization_id`, `organization_name`, `organization_created_by`, `organization_creation_date`) VALUES
(1, 'HANSABA COLLEGE OF ENGINEERING AND TECHNOLOGY', 1, '2012-01-31 00:00:00'),
(2, 'Gokul Engineering College', 6, '2012-03-19 11:49:23'),
(3, 'Rudra softech', 18, '2012-04-13 14:52:02');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `outward`
--

INSERT INTO `outward` (`id`, `invoice_description`, `company_name`, `invoice_no_dc`, `invoice_date`, `sending_date`, `receiver_name`, `department`, `photo`, `document`, `document_desc`, `org_name_id`, `no_of_packets`, `sender_name`) VALUES
(1, 'aaaa', 'aaaa', 'aaaa', '2012-04-26', '2012-04-26', 'aaaaa', 1, 'f1.jpg', 's.txt', 'aaaaaa', 2, 1, 'aaaaaa'),
(2, 'aa', 'aa', '12', '2012-05-02', '2012-05-02', 'aa', 2, 'logo.png', 's.txt', '', 1, 1, 'aa'),
(3, 'this', 'this', '49834', '2012-05-03', '2012-05-03', 'djshfkjs', 2, '', 's.txt', '', 1, 3, 'thus');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `outward_details`
--

INSERT INTO `outward_details` (`id`, `outward_id`, `name`, `description`, `quantity`, `item_category_id`, `rate`, `amount`) VALUES
(13, 1, 1, 'aa', 1, 1, 0, 0),
(14, 2, 1, '', 323, 1, 0, 0),
(15, 2, 1, '', 90, 1, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`qualification_id`, `qualification_name`, `qualification_organization_id`, `qualification_created_by`, `qualification_created_date`) VALUES
(1, 'B.Sc', 1, 1, '2012-01-31 17:56:43');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `quota`
--

INSERT INTO `quota` (`quota_id`, `quota_name`, `quota_organization_id`, `quota_created_by`, `quota_created_date`) VALUES
(1, 'A.C.P.C', 1, 1, '2012-01-31 17:56:10'),
(2, 'MANAGEMENT QUOTA', 1, 1, '2012-02-01 11:04:03'),
(3, 'N.R.I QUOTA', 1, 1, '2012-02-01 11:04:16'),
(4, 'VACANT', 1, 1, '2012-02-01 11:04:25'),
(5, 'P.I.O.', 1, 1, '2012-05-03 14:54:49'),
(6, 'T.F.W.', 1, 1, '2012-05-03 14:55:04');

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
(1, 'HINDU', 1, 1, '2012-02-01 11:04:57'),
(2, 'MUSLIM', 1, 1, '2012-02-01 11:05:12'),
(3, 'SIKH', 1, 1, '2012-02-01 11:05:20'),
(4, 'CHRISTAIN', 1, 1, '2012-02-01 11:05:33');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift_type`, `shift_organization_id`, `shift_start_time`, `shift_end_time`, `shift_created_by`, `shift_created_date`) VALUES
(1, 'MORNING', 1, '08:00:00', '02:00:00', 1, '2012-02-01 11:09:14'),
(2, 'AFTERNOON', 1, '02:00:00', '06:00:00', 1, '2012-02-01 11:09:45');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student_address`
--

INSERT INTO `student_address` (`student_address_id`, `student_address_c_line1`, `student_address_c_line2`, `student_address_c_country`, `student_address_c_city`, `student_address_c_pin`, `student_address_c_state`, `student_address_p_line1`, `student_address_p_line2`, `student_address_p_city`, `student_address_p_pin`, `student_address_p_state`, `student_address_p_country`, `student_address_phone`, `student_address_mobile`) VALUES
(1, 'test', 'test', 1, 1, 382220, 1, 'c', 'teest', 1, 382220, 2, 2, 1234567890, 1234567890),
(2, 'test', 'test', 2, 2, 382220, 2, 'c', 'teest', 1, 382220, 1, 2, 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `student_docs`
--

CREATE TABLE IF NOT EXISTS `student_docs` (
  `student_docs_id` int(6) NOT NULL AUTO_INCREMENT,
  `student_docs_desc` varchar(50) DEFAULT NULL,
  `student_docs_path` varchar(150) NOT NULL,
  PRIMARY KEY (`student_docs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `student_docs`
--

INSERT INTO `student_docs` (`student_docs_id`, `student_docs_desc`, `student_docs_path`) VALUES
(1, NULL, 'User1.png'),
(2, NULL, 'user.jpeg'),
(3, NULL, 'logo.png'),
(4, NULL, 's.txt');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `student_docs_trans`
--

INSERT INTO `student_docs_trans` (`student_docs_trans_id`, `student_docs_trans_user_id`, `student_docs_trans_stud_docs_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `student_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_roll_no` varchar(10) NOT NULL,
  `student_merit_no` varchar(15) NOT NULL,
  `student_enroll_no` varchar(15) NOT NULL,
  `student_college_id` int(5) DEFAULT NULL,
  `student_first_name` varchar(25) NOT NULL,
  `student_middle_name` varchar(25) NOT NULL,
  `student_last_name` varchar(25) NOT NULL,
  `student_father_name` varchar(25) NOT NULL,
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
  `student_guardian_occupation_city` int(4) NOT NULL,
  `student_guardian_city_pin` int(6) NOT NULL,
  `student_guardian_home_address` varchar(200) DEFAULT NULL,
  `student_guardian_phoneno` bigint(15) NOT NULL,
  `student_guardian_mobile` bigint(15) DEFAULT NULL,
  `student_email_id_1` varchar(30) NOT NULL,
  `student_email_id_2` varchar(30) DEFAULT NULL,
  `student_bloodgroup` varchar(3) NOT NULL,
  `student_tally_id` int(20) NOT NULL,
  `student_created_by` int(1) DEFAULT NULL,
  `student_creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`student_id`, `student_roll_no`, `student_merit_no`, `student_enroll_no`, `student_college_id`, `student_first_name`, `student_middle_name`, `student_last_name`, `student_father_name`, `student_mother_name`, `student_adm_date`, `student_dob`, `student_birthplace`, `student_gender`, `student_guardian_name`, `student_guardian_relation`, `student_guardian_qualification`, `student_guardian_occupation`, `student_guardian_income`, `student_guardian_occupation_address`, `student_guardian_occupation_city`, `student_guardian_city_pin`, `student_guardian_home_address`, `student_guardian_phoneno`, `student_guardian_mobile`, `student_email_id_1`, `student_email_id_2`, `student_bloodgroup`, `student_tally_id`, `student_created_by`, `student_creation_date`) VALUES
(1, '123', '1234', '1234', NULL, 'abc', '', 'test', 'abca', 'abc', '2012-04-19', '2012-04-27', '', 'Male', 'Thi', 'tgus', '', '', '2442', '', 1, 154456, '', 487514, 0, 'test@mailcatch.com', '', 'A+', 123, 1, '2012-04-16 12:09:18'),
(2, '4', '1234', '3838', NULL, 'test', 'test', 'test', 'test', 'test', '2012-04-19', '2012-04-23', '', 'Male', 'Thi', 'tgus', 'sgfsui', 'doctor', '2442', 'skjdskh', 1, 154456, '', 487514, 0, 'test@mailcatch.com', 'test@mailcatch.com', 'A+', 123, 1, '2012-04-16 18:41:01');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student_photos`
--

INSERT INTO `student_photos` (`student_photos_id`, `student_photos_desc`, `student_photos_path`) VALUES
(1, NULL, '1_abc'),
(2, NULL, '2_test');

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
  `student_transaction_division_id` int(2) NOT NULL,
  `student_transaction_batch_id` int(2) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student_transaction`
--

INSERT INTO `student_transaction` (`student_transaction_id`, `student_transaction_user_id`, `student_transaction_student_id`, `student_transaction_branch_id`, `student_transaction_category_id`, `student_transaction_organization_id`, `student_transaction_student_address_id`, `student_transaction_nationality_id`, `student_transaction_quota_id`, `student_transaction_religion_id`, `student_transaction_shift_id`, `student_transaction_languages_known_id`, `student_transaction_student_photos_id`, `student_transaction_division_id`, `student_transaction_batch_id`, `student_academic_term_period_tran_id`) VALUES
(1, 24, 1, 2, 1, 1, 1, 1, 1, 1, 1, 19, 1, 1, 1, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`subject_master_id`, `subject_master_name`, `subject_master_code`, `subject_master_alias`, `subject_master_type_id`, `subject_master_organization_id`, `subject_master_branch_id`, `subject_master_academic_terms_period_id`, `subject_master_active`, `subject_master_updated_date`, `subject_master_updated_user`) VALUES
(1, 'Operating System', '001', 'os', 1, 1, 3, 2, 1, '2012-04-03 12:17:24', 1),
(2, 'Java', '002', 'java', 1, 1, 3, 2, 1, '2012-04-03 12:19:00', 1),
(3, 'PHP', '003', 'php', 2, 1, 3, 2, 1, '2012-04-04 17:55:28', 1),
(4, 'test', '4591', 'test', 1, 2, 2, 1, 0, '2012-04-06 16:54:26', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `subject_type`
--

INSERT INTO `subject_type` (`subject_type_id`, `subject_type_name`, `subject_organization_id`, `subject_active`, `subject_modified_date`, `subject_modified_user`) VALUES
(1, 'Practical', 1, 1, '2012-04-03 10:36:31', 1),
(2, 'Theory', 1, 1, '2012-04-04 10:26:25', 1),
(3, 'ttt', 2, 0, '2012-04-06 17:06:56', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`mainmenu_id`, `submenu_id`, `title`, `link`, `status`, `created_by`, `created_date`) VALUES
(1, 1, 'Add Employee', 'http://localhost/yii/mytest_ajax_dropdown/index.php?r=branch/index', 'null', 1, 20120210),
(2, 2, 'Add Fess', 'http://localhost/yii/mytest_ajax_dropdown/index.php?r=branch/index', 'null', 1, 20120210);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_organization_email_id` varchar(30) NOT NULL,
  `user_password` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_created_by` int(3) NOT NULL,
  `user_creation_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_organization_email_id`, `user_password`, `user_created_by`, `user_creation_date`) VALUES
(1, 'karmraj@rudrasoftech.com', '2bb27d57c83276b1bacf760983c0dfd6', 15, '2012-03-26 14:57:22'),
(12, 'sadmin@rudrasoftech.com', '638e1b88a075ff8ff17a10dbb36b42d5', 1, '2012-04-06 10:12:44'),
(27, 'jagdishsinh.rana@hansaba.com', '0dfbd7b4ba3b9bb8c95d4054a2deed0f', 1, '2012-04-18 16:57:16'),
(28, 'baku_tushar@yahoo.co.in', '8d3ef19eb1a08549a45dc70fba1901ad', 1, '2012-04-18 17:08:00'),
(29, 'a@g.c', '0ba1e7e7501bea31dc7059227fe865ee', 1, '2012-04-18 17:15:19'),
(30, 'a@b.c', '6f4d51c00101b00600d88fe77edab088', 1, '2012-04-18 17:27:16'),
(31, 'vasantpatel@yahoo.com', 'a5904dac4017307eb2f73ff8e721ac2a', 1, '2012-04-18 17:37:35'),
(32, 'suresh_vihol@yahoo.com', '91600030b1d44336782a30b414df568c', 1, '2012-04-18 17:46:34'),
(33, 'prajapatirajnikant27@yahoo.co', 'aaf3aa7da90f6c00711e127d1b1e5aef', 1, '2012-04-18 17:53:46'),
(34, 'k@k.con', 'd6ae51ddc97c6ff723d544c5eee4450c', 1, '2012-04-18 17:57:48'),
(35, 'a@b.c', '6f4d51c00101b00600d88fe77edab088', 1, '2012-04-18 18:02:56'),
(36, 'a@b.c', '6f4d51c00101b00600d88fe77edab088', 1, '2012-04-18 18:07:28'),
(37, 'a@b.c', '6f4d51c00101b00600d88fe77edab088', 1, '2012-04-19 10:07:37'),
(38, 'a@b.c', '6f4d51c00101b00600d88fe77edab088', 1, '2012-04-19 10:11:59'),
(39, '1avc@1.1', '299da7505fefdf059cfcfc6308449414', 1, '2012-04-19 10:19:46'),
(40, 'jigarpatel_09@yahoo.com', '4d345b8526a9a94af70499fce8643cf9', 1, '2012-04-19 10:23:16'),
(41, 'urvi_khamar1989@yahoo.com', '6f330e5a5848d9f8e51e2155672da729', 1, '2012-04-19 10:27:09'),
(42, 'monal18885@gmail.com', '889b909110e50b202eed10252844d446', 1, '2012-04-19 10:39:02'),
(43, 'pmpatel551986@gmail.com', '2440f0887a89f7316f204353171ee9ae', 1, '2012-04-19 10:44:14'),
(44, 'mehul.dethariya@yahoo.com', '27a536fc0695dee518f4b55cc9d61807', 1, '2012-04-19 10:50:58'),
(45, 'parth_sandesara@yahoo.co.in', 'b58223ab05b7980804bb106f5f801c5b', 1, '2012-04-19 10:55:08'),
(46, 'sukrutbaps@yahoo.co.in', '71e7eb8a585ab72146aa34413c3d326f', 1, '2012-04-19 11:00:50'),
(47, 'ravalavani@yahoo.com', '9851959b68e410c3f73378130be1372a', 1, '2012-04-19 11:03:58'),
(48, 'darshan_meen2274@yahoo.com', 'd9305d920245fbe31bb7be6196e04ba7', 1, '2012-04-19 11:07:54'),
(49, 'hitesh_uvpce@yahoo.co.in', 'd9608a9243c74419ad46a30daa4afacd', 1, '2012-04-19 11:14:12'),
(50, 'jumi.sarmah@gamil.com', 'de7fef53d4b253daf0d5c67724ed64b2', 1, '2012-04-19 11:18:58'),
(51, 'prajapatij58@yahoo.com', '1c1705d8ebdc660e17f3368819e0233d', 1, '2012-04-19 11:22:16'),
(52, 'hiral_civileng@yahoo.co.in', '5b62ddd1375b2102963ae08829619d0e', 1, '2012-04-19 11:25:07'),
(53, 'parth.patel@hansabacollege.com', '45c140c98cc27af2ef85c04df4923774', 1, '2012-04-19 11:28:43'),
(54, 'rahulcivilengg@gmail.com', '9105cffeb36a370a4ba209e61d0622f4', 1, '2012-04-19 11:31:57'),
(55, 'bhvi6887@gmail.com', '13be5704c146fb62ac0e4f010b8a3acb', 1, '2012-04-19 11:35:08'),
(56, 'nik_200387@yahoo.com', 'fbbce18090ec6a9d3aca9bf08adbbbfe', 1, '2012-04-19 11:38:10'),
(57, 'JAYESH.SHAH@HANSABACOLLEG.COM', 'f51b61ec4468d0ff091cf18cd635d004', 1, '2012-04-19 11:42:01'),
(58, 'superuser@rudrasoftech.com', '3cdcf38304a4779f5f610b294f38fc2e', 0, '2012-04-27 09:36:47'),
(61, 'test456@mailcatch.com', '2718bcb915a5d6d064c2465ec6691ad4', 1, '2012-04-30 18:55:29'),
(62, 'tb@tb.com', 'cc45d240a7d5e79f756d9be01491e65e', 1, '2012-05-07 15:47:24');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_rights`
--

INSERT INTO `user_rights` (`id`, `user_id`, `mainmenu_id`, `submenu_id`, `from_date`, `to_date`, `create`, `read`, `update`, `delete`) VALUES
(1, 1, 1, 1, '2012-02-10 00:00:00', '2012-02-10 00:00:00', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_pass`
--

CREATE TABLE IF NOT EXISTS `visitor_pass` (
  `pass_no` int(9) NOT NULL AUTO_INCREMENT,
  `in_date_time` datetime NOT NULL,
  `visitor_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `company_represented` varchar(50) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `no_of_persons` int(3) NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `out_time` datetime NOT NULL,
  `batch_no` int(9) NOT NULL,
  `item_carring` int(5) NOT NULL,
  PRIMARY KEY (`pass_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `visitor_pass`
--

INSERT INTO `visitor_pass` (`pass_no`, `in_date_time`, `visitor_name`, `contact_person`, `purpose`, `department`, `address`, `company_represented`, `vehicle_no`, `no_of_persons`, `remark`, `photo`, `age`, `gender`, `out_time`, `batch_no`, `item_carring`) VALUES
(1, '2012-03-30 00:00:00', 'teste', 'test', 'test', '1', 'test', 'test', 'test', 1, 'test', 'calendar.png', 22, 'Male', '2012-03-31 00:00:00', 4545, 4);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE IF NOT EXISTS `year` (
  `year_id` int(2) NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL,
  PRIMARY KEY (`year_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`year_id`, `year`) VALUES
(1, 1985),
(2, 1986),
(3, 1987),
(4, 1988),
(5, 1989),
(6, 1990),
(7, 1991),
(8, 1992),
(9, 1993),
(10, 1994),
(11, 1995),
(12, 1996),
(13, 1997),
(14, 1998),
(15, 1999),
(16, 2000),
(17, 2001),
(18, 2002),
(19, 2003),
(20, 2004),
(21, 2005),
(22, 2006),
(23, 2006),
(24, 2007),
(25, 2008),
(26, 2009),
(27, 2010),
(28, 2011),
(29, 2012),
(30, 2013),
(31, 2014),
(32, 2015),
(33, 2016),
(34, 2017),
(35, 2018),
(36, 2019),
(37, 2020),
(38, 2021),
(39, 2022),
(40, 2023),
(41, 2024),
(42, 2025),
(43, 2026),
(44, 2027),
(45, 2028),
(46, 2029),
(47, 2030);

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
-- Constraints for table `student_transaction`
--
ALTER TABLE `student_transaction`
  ADD CONSTRAINT `fk_std_photo` FOREIGN KEY (`student_transaction_student_photos_id`) REFERENCES `student_photos` (`student_photos_id`),
  ADD CONSTRAINT `FK_trans_branch` FOREIGN KEY (`student_transaction_branch_id`) REFERENCES `branch` (`branch_id`),
  ADD CONSTRAINT `student_transaction_ibfk_1` FOREIGN KEY (`student_transaction_category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `student_transaction_ibfk_2` FOREIGN KEY (`student_transaction_organization_id`) REFERENCES `organization` (`organization_id`),
  ADD CONSTRAINT `student_transaction_ibfk_3` FOREIGN KEY (`student_transaction_nationality_id`) REFERENCES `nationality` (`nationality_id`),
  ADD CONSTRAINT `student_transaction_ibfk_4` FOREIGN KEY (`student_transaction_quota_id`) REFERENCES `quota` (`quota_id`),
  ADD CONSTRAINT `student_transaction_ibfk_5` FOREIGN KEY (`student_transaction_religion_id`) REFERENCES `religion` (`religion_id`),
  ADD CONSTRAINT `student_transaction_ibfk_6` FOREIGN KEY (`student_transaction_shift_id`) REFERENCES `shift` (`shift_id`),
  ADD CONSTRAINT `student_transaction_ibfk_7` FOREIGN KEY (`student_transaction_division_id`) REFERENCES `division` (`division_id`),
  ADD CONSTRAINT `student_transaction_ibfk_8` FOREIGN KEY (`student_transaction_batch_id`) REFERENCES `batch` (`batch_id`),
  ADD CONSTRAINT `student_transaction_ibfk_9` FOREIGN KEY (`student_transaction_student_id`) REFERENCES `student_info` (`student_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
