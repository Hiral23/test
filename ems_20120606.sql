-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2012 at 04:37 PM
-- Server version: 5.5.23
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ems_20120528`
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
  `academic_term_period` varchar(10) NOT NULL,
  `academic_terms_period_start_date` date NOT NULL,
  `academic_terms_period_end_date` date NOT NULL,
  `academic_terms_period_organization_id` int(2) NOT NULL,
  `academic_terms_period_created_by` int(2) NOT NULL,
  `academic_terms_period_creation_date` datetime NOT NULL,
  PRIMARY KEY (`academic_terms_period_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `academic_term_period`
--

INSERT INTO `academic_term_period` (`academic_terms_period_id`, `academic_terms_period_name`, `academic_term_period`, `academic_terms_period_start_date`, `academic_terms_period_end_date`, `academic_terms_period_organization_id`, `academic_terms_period_created_by`, `academic_terms_period_creation_date`) VALUES
(2, 'SEM1', '2012-13', '2012-05-16', '2012-05-23', 1, 1, '2012-05-07 16:24:31'),
(3, 'Test period', '2012', '2012-05-24', '2012-05-31', 1, 2, '2012-05-30 12:22:35'),
(4, 'test period with changes', '2012', '2012-05-31', '2012-05-31', 1, 2, '2012-05-30 12:23:46'),
(5, 'test period with changes in my database', '2012-13', '2012-05-28', '2012-05-26', 1, 2, '2012-05-30 12:25:24');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `assign_company_user_table`
--

INSERT INTO `assign_company_user_table` (`id`, `assign_user_id`, `assign_role_id`, `assign_org_id`, `assign_created_by`, `assign_creation_date`) VALUES
(3, 2, 1, 1, 1, '2012-03-19 11:42:38'),
(46, 95, 4, 1, 2, '2012-05-24 12:28:15'),
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
(43, 92, 4, 1, 1, '2012-05-23 17:43:09'),
(44, 93, 3, 1, 2, '2012-05-29 11:07:11'),
(45, 94, 4, 1, 2, '2012-05-29 11:57:47'),
(47, 96, 4, 1, 2, '2012-05-24 12:35:48'),
(48, 97, 4, 1, 2, '2012-05-24 13:03:29'),
(49, 98, 4, 1, 2, '2012-05-24 13:21:13'),
(50, 99, 4, 1, 2, '2012-05-24 13:54:14'),
(51, 100, 4, 1, 2, '2012-05-24 14:02:53'),
(52, 101, 4, 1, 2, '2012-05-24 14:11:46'),
(53, 102, 4, 1, 2, '2012-05-24 14:23:34'),
(54, 103, 4, 1, 2, '2012-05-24 14:30:58'),
(55, 104, 4, 1, 2, '2012-05-24 14:39:37'),
(56, 105, 4, 1, 2, '2012-05-24 14:47:15'),
(57, 106, 4, 1, 2, '2012-05-24 14:55:05'),
(58, 107, 4, 1, 2, '2012-05-24 15:03:20'),
(59, 108, 4, 1, 2, '2012-05-24 15:11:03'),
(60, 109, 4, 1, 2, '2012-05-24 15:18:05'),
(61, 110, 4, 1, 2, '2012-05-24 15:28:26'),
(62, 111, 4, 1, 2, '2012-05-24 15:33:47'),
(63, 112, 4, 1, 2, '2012-05-24 15:41:42'),
(64, 113, 4, 1, 2, '2012-05-24 15:48:44'),
(65, 114, 4, 1, 2, '2012-05-24 15:55:27'),
(66, 115, 4, 1, 2, '2012-05-24 16:00:57'),
(67, 116, 4, 1, 2, '2012-05-24 16:07:42'),
(68, 117, 4, 1, 2, '2012-05-24 16:13:26'),
(69, 118, 4, 1, 2, '2012-05-24 16:20:12'),
(70, 119, 4, 1, 2, '2012-05-24 16:27:01'),
(71, 120, 4, 1, 2, '2012-05-24 16:36:50'),
(72, 121, 4, 1, 2, '2012-05-24 16:43:29'),
(73, 122, 4, 1, 2, '2012-05-24 16:49:27'),
(74, 123, 4, 1, 2, '2012-05-24 16:59:06'),
(75, 124, 4, 1, 2, '2012-05-24 17:04:36'),
(76, 125, 4, 1, 2, '2012-05-24 17:10:28'),
(77, 126, 4, 1, 2, '2012-05-24 17:23:58'),
(78, 127, 4, 1, 2, '2012-05-24 17:28:43'),
(79, 128, 4, 1, 2, '2012-05-24 17:35:50'),
(80, 129, 4, 1, 2, '2012-05-24 17:43:31'),
(81, 130, 4, 1, 2, '2012-05-24 17:48:56'),
(82, 131, 4, 1, 2, '2012-05-24 17:54:11'),
(83, 132, 4, 1, 2, '2012-05-24 17:59:57'),
(84, 133, 4, 1, 2, '2012-05-24 18:04:15'),
(85, 134, 4, 1, 2, '2012-05-24 18:08:43');

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
('Admin', '2', NULL, 'N;'),
('BankMaster.*', '3', NULL, 'N;'),
('Employee', '4', NULL, 'N;'),
('Employee', '58', NULL, 'N;'),
('Organization.*', '1', NULL, 'N;'),
('SuperAdmin', '2', NULL, 'N;');

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
('Admin', 2, 'Admin of the college', NULL, 'N;'),
('Assets.*', 0, NULL, NULL, 'N;'),
('AssetsDetails.*', 0, NULL, NULL, 'N;'),
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
('EmployeeDocs.*', 0, NULL, NULL, 'N;'),
('EmployeeDocsTrans.*', 0, NULL, NULL, 'N;'),
('EmployeeExperienceTrans.*', 0, NULL, NULL, 'N;'),
('EmployeeTransaction.*', 0, NULL, NULL, 'N;'),
('FeedbackDetails.*', 0, NULL, NULL, 'N;'),
('FeedbackMaster.*', 0, NULL, NULL, 'N;'),
('FeesDetailsTable.*', 0, NULL, NULL, 'N;'),
('FeesMaster.*', 0, NULL, NULL, 'N;'),
('FeesMasterTransaction.*', 0, NULL, NULL, 'N;'),
('FeesPaymentCash.*', 0, NULL, NULL, 'N;'),
('FeesPaymentCheque.*', 0, NULL, NULL, 'N;'),
('FeesPaymentMethod.*', 0, NULL, NULL, 'N;'),
('FeesPaymentTransaction.*', 0, NULL, NULL, 'N;'),
('FeesPaymentType.*', 0, NULL, NULL, 'N;'),
('FeesReceipt.*', 0, NULL, NULL, 'N;'),
('FeesTermsAndCondition.*', 0, NULL, NULL, 'N;'),
('Gtunotice.*', 0, NULL, NULL, 'N;'),
('Guest', 2, NULL, NULL, 'N;'),
('Holidays.*', 0, NULL, NULL, 'N;'),
('ImportantNotice.*', 0, NULL, NULL, 'N;'),
('Inward.*', 0, NULL, NULL, 'N;'),
('InwardDetails.*', 0, NULL, NULL, 'N;'),
('ItemCategory.*', 0, NULL, NULL, 'N;'),
('Languages.*', 0, NULL, NULL, 'N;'),
('LanguagesKnown.*', 0, NULL, NULL, 'N;'),
('MessageOfDay.*', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesMaster.*', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentCash.*', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentCheque.*', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentTransaction.*', 0, NULL, NULL, 'N;'),
('Nationality.*', 0, NULL, NULL, 'N;'),
('Organization.*', 0, NULL, NULL, 'N;'),
('Outward.*', 0, NULL, NULL, 'N;'),
('OutwardDetails.*', 0, NULL, NULL, 'N;'),
('Qualification.*', 0, NULL, NULL, 'N;'),
('Quota.*', 0, NULL, NULL, 'N;'),
('Religion.*', 0, NULL, NULL, 'N;'),
('Shift.*', 0, NULL, NULL, 'N;'),
('Site.*', 0, NULL, NULL, 'N;'),
('State.*', 0, NULL, NULL, 'N;'),
('Student', 2, 'Student of the college', NULL, 'N;'),
('StudentDocs.*', 0, NULL, NULL, 'N;'),
('StudentDocsTrans.*', 0, NULL, NULL, 'N;'),
('StudentTransaction.*', 0, NULL, NULL, 'N;'),
('SubjectMaster.*', 0, NULL, NULL, 'N;'),
('SubjectType.*', 0, NULL, NULL, 'N;'),
('SuperAdmin', 2, NULL, NULL, 'N;'),
('User.*', 0, NULL, NULL, 'N;'),
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
('Admin', 'Assets.*'),
('Admin', 'AssetsDetails.*'),
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
('Admin', 'EmployeeDocs.*'),
('Admin', 'EmployeeDocsTrans.*'),
('Admin', 'EmployeeExperienceTrans.*'),
('Admin', 'EmployeeTransaction.*'),
('Admin', 'FeedbackDetails.*'),
('Admin', 'FeedbackMaster.*'),
('Admin', 'FeesDetailsTable.*'),
('Admin', 'FeesMaster.*'),
('Admin', 'FeesMasterTransaction.*'),
('Admin', 'FeesPaymentCash.*'),
('Admin', 'FeesPaymentCheque.*'),
('Admin', 'FeesPaymentMethod.*'),
('Admin', 'FeesPaymentTransaction.*'),
('Admin', 'FeesPaymentType.*'),
('Admin', 'FeesReceipt.*'),
('Admin', 'FeesTermsAndCondition.*'),
('Admin', 'Gtunotice.*'),
('Admin', 'Holidays.*'),
('Admin', 'ImportantNotice.*'),
('Admin', 'Inward.*'),
('Admin', 'InwardDetails.*'),
('Admin', 'ItemCategory.*'),
('Admin', 'Languages.*'),
('Admin', 'LanguagesKnown.*'),
('Admin', 'MessageOfDay.*'),
('Admin', 'MiscellaneousFeesMaster.*'),
('Admin', 'MiscellaneousFeesPaymentCash.*'),
('Admin', 'MiscellaneousFeesPaymentCheque.*'),
('Admin', 'MiscellaneousFeesPaymentTransaction.*'),
('Admin', 'Nationality.*'),
('Admin', 'Outward.*'),
('Admin', 'OutwardDetails.*'),
('Admin', 'Qualification.*'),
('Admin', 'Quota.*'),
('Admin', 'Religion.*'),
('Admin', 'Shift.*'),
('Admin', 'Site.*'),
('Admin', 'State.*'),
('Admin', 'StudentDocs.*'),
('Admin', 'StudentDocsTrans.*'),
('Admin', 'StudentTransaction.*'),
('Admin', 'SubjectMaster.*'),
('Admin', 'SubjectType.*'),
('Admin', 'User.*'),
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
(2, 'BANK OF BARODA', 'BOI');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

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
(17, 'KAMNIYAPARU,', 'NEAR GYMKHANA', 165, 0, 10, 106, 'KAMNIYAPARU,', 'NEAR GYMKHANA', 165, 0, 10, 106, 0, 0),
(18, 'ZUNDALA', 'PORBANDAR', 137, 360575, 10, 106, 'Zundala', 'PORBANDAR', 137, 360575, 10, 106, 2147483647, 2147483647);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

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
(24, 'Test Documents', 'rs.png'),
(25, 'jjkjj', 'all_1.png'),
(26, 'test 1', 'rudraSoftech.png'),
(27, 'desc 1', 'rudraSoftech.png'),
(28, 'doc 1', 'rudraSoftech.png'),
(29, 'test 1', 'all.png'),
(30, 'document 1', 'RaviT_Offer_Letter.pdf');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `employee_docs_trans`
--

INSERT INTO `employee_docs_trans` (`employee_docs_trans_id`, `employee_docs_trans_user_id`, `employee_docs_trans_emp_docs_id`) VALUES
(2, 1, 17),
(3, 1, 18),
(8, 1, 23),
(9, 1, 24),
(10, 1, 25),
(11, 1, 26),
(12, 1, 27),
(13, 1, 28),
(15, 18, 30);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`employee_id`, `employee_no`, `employee_first_name`, `employee_middle_name`, `employee_last_name`, `employee_name_alias`, `employee_mother_name`, `employee_dob`, `employee_birthplace`, `employee_gender`, `employee_bloodgroup`, `employee_marital_status`, `employee_private_email`, `employee_organization_mobile`, `employee_private_mobile`, `employee_pancard_no`, `employee_account_no`, `employee_joining_date`, `employee_probation_period`, `employee_hobbies`, `employee_technical_skills`, `employee_project_details`, `employee_curricular`, `employee_reference`, `employee_refer_designation`, `employee_guardian_name`, `employee_guardian_relation`, `employee_guardian_home_address`, `employee_guardian_qualification`, `employee_guardian_occupation`, `employee_guardian_income`, `employee_guardian_occupation_address`, `employee_guardian_occupation_city`, `employee_guardian_city_pin`, `employee_guardian_phone_no`, `employee_guardian_mobile1`, `employee_guardian_mobile2`, `employee_faculty_of`, `employee_attendance_card_id`, `employee_tally_id`, `employee_created_by`, `employee_creation_date`) VALUES
(1, 'jkkj', 'Jagdishsinh', 'Joravarsinh', 'Rana', '', 'Babuben', '2012-05-28', '', 'Male', 'O+', 'Married', 'jagdishsinh.rana@hansabacollege.com', 111111111, 9099054801, 'AIHPR 6808', 2147483647, '2012-05-09', '', 'NA', 'NA', 'NA', 'NA', '', '', 'Joravarsinh', 'Father', 'Sidhpur', 'B.Com', '', '15000', 'NA', 151, 384151, 11111, 11111, 11111, 'NA', '1111', '', 2, '2012-05-17 12:08:41'),
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
(17, '1', 'SATISHKUMAR', 'AMRUTLAL', 'PATEL', '', 'BHAGVATIBEN', '1985-12-18', '', 'Male', 'O+', 'Married', 'patel_satish2002@yahoo.com', 0, 0, '', 2147483647, '2012-03-20', '', '', '', '', '', '', '', 'AMRUTLAL', 'FATHER', 'NA', 'NA', 'NA', '0', 'NA', 151, 0, 0, 0, 0, 'UG', '1111', '', 2, '2012-05-21 13:05:31'),
(18, '123', 'Ravi', 'Prafullbhai', 'Thanki', 'test', 'NA', '2012-05-22', 'Porbandar', 'Male', 'A+', 'Unmarried', 'ravithanki15@rediffmail.com', 454545, 4545454, 'kjkkj 1234', 12345678, '2012-05-15', '1month', 'CRICKET', 'php YII', 'photo gallery', 'kjkkj, lklk kjkkj', 'VaibhaGandhi', 'JKKJKJ', 'jkjkjj', 'father', 'Zundala, Porbandar', 'M.COM', 'Business', '10000', 'Zundala, Porbandar', 137, NULL, 2862210065, 8905345422, 9428950839, 'BCA', 'TTT 123', '', 2, '2012-05-29 11:07:11');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

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
(17, NULL, 'no_image'),
(18, NULL, '18_Ravi');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

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
(17, 19, 17, 17, 9, 1, 7, 1, 1, 6, 11, 6, 1, 17, 17),
(18, 93, 18, 18, 4, 1, 1, 1, 1, 3, 11, 4, 1, 84, 18);

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
  `fees_details_tally_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`fees_details_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `fees_details_table`
--

INSERT INTO `fees_details_table` (`fees_details_id`, `fees_details_name`, `fees_details_amount`, `fees_details_created_by`, `fees_details_created_date`, `fees_details_tally_id`) VALUES
(1, 'thi is bbb', 457, 2, '2012-05-30 11:06:32', 0),
(2, 'Tution Fees', 3000, 2, '2012-05-30 11:30:44', NULL),
(3, 'Liabrary fees', 200, 2, '2012-05-30 11:31:30', NULL),
(4, '1extra', 200, 2, '2012-05-30 11:32:42', NULL),
(5, 'Test fees', 4000, 2, '2012-05-31 16:13:26', NULL),
(6, 'Another Test', 2000, 2, '2012-05-31 16:14:23', NULL),
(7, 'Tution fees final', 6000, 2, '2012-05-31 19:17:09', NULL),
(8, 'final liabarary fees', 2000, 2, '2012-05-31 19:17:51', NULL),
(9, 'Trest', 23, 2, '2012-06-04 11:20:04', NULL),
(10, 'ttt', 456, 2, '2012-06-04 11:20:14', NULL);

--
-- Triggers `fees_details_table`
--
DROP TRIGGER IF EXISTS `update_totalfeesamt`;
DELIMITER //
CREATE TRIGGER `update_totalfeesamt` AFTER UPDATE ON `fees_details_table`
 FOR EACH ROW BEGIN

DECLARE feesmasterid INTEGER;
DECLARE feesdetailid INTEGER;

DECLARE feesamount INTEGER;
DECLARE amt INTEGER;
DECLARE feetotal INTEGER;

SET feesdetailid = OLD.fees_details_id;

SELECT fees_master_id into feesmasterid from fees_master_transaction where fees_desc_id=feesdetailid;

select sum(fees_details_amount) into amt from fees_details_table where fees_details_id IN (select fees_desc_id from fees_master_transaction where fees_master_id=feesmasterid);

update fees_master SET fees_master_total = amt where fees_master_id=feesmasterid;

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
  `fees_master_tally_id` int(6) DEFAULT NULL,
  `fees_organization_id` int(3) NOT NULL,
  `fees_branch_id` int(3) NOT NULL,
  `fees_academic_term_id` int(3) NOT NULL,
  `fees_quota_id` int(3) NOT NULL,
  `fees_master_total` int(7) NOT NULL,
  PRIMARY KEY (`fees_master_id`),
  KEY `fk_ORG_ID` (`fees_organization_id`),
  KEY `fk_BRANCH_ID` (`fees_branch_id`),
  KEY `fk_ACDM_ID` (`fees_academic_term_id`),
  KEY `fk_QUOTA_ID` (`fees_quota_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fees_master`
--

INSERT INTO `fees_master` (`fees_master_id`, `fees_master_name`, `fees_master_created_by`, `fees_master_created_date`, `fees_master_tally_id`, `fees_organization_id`, `fees_branch_id`, `fees_academic_term_id`, `fees_quota_id`, `fees_master_total`) VALUES
(1, 'Semster I', 2, '2012-05-25 13:45:20', 0, 1, 2, 2, 1, 5000),
(2, 'test', 2, '2012-05-30 11:06:00', 0, 1, 1, 2, 1, 0),
(3, 'F.Y. Bcom', 2, '2012-05-30 11:30:14', NULL, 1, 1, 2, 1, 3400),
(4, 'New fees', 2, '2012-05-31 16:12:45', NULL, 1, 1, 2, 1, 4000),
(5, 'Final Fees', 2, '2012-05-31 19:16:11', NULL, 1, 1, 2, 1, 23);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `fees_master_transaction`
--

INSERT INTO `fees_master_transaction` (`fees_id`, `fees_master_id`, `fees_desc_id`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 3, 3),
(5, 4, 5),
(6, 5, 9);

--
-- Triggers `fees_master_transaction`
--
DROP TRIGGER IF EXISTS `del_totalfeesamt`;
DELIMITER //
CREATE TRIGGER `del_totalfeesamt` AFTER DELETE ON `fees_master_transaction`
 FOR EACH ROW BEGIN

DECLARE feesmasterid INTEGER;
DECLARE feesdetailid INTEGER;

DECLARE feesamount INTEGER;
DECLARE amt INTEGER;
DECLARE feetotal INTEGER;
SET feesmasterid = OLD.fees_master_id;
SET feesdetailid = OLD.fees_desc_id;

SELECT fees_master_total into feetotal from fees_master where fees_master_id=feesmasterid;

select sum(fees_details_amount) into amt from fees_details_table where fees_details_id IN (select fees_desc_id from fees_master_transaction where fees_master_id=feesmasterid);

update fees_master SET fees_master_total = amt where fees_master_id=feesmasterid;

END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `int_totalfeesamt`;
DELIMITER //
CREATE TRIGGER `int_totalfeesamt` AFTER INSERT ON `fees_master_transaction`
 FOR EACH ROW BEGIN

DECLARE feesmasterid INTEGER;
DECLARE feesdetailid INTEGER;

DECLARE feesamount INTEGER;
DECLARE amt INTEGER;
DECLARE feetotal INTEGER;
SET feesmasterid = NEW.fees_master_id;
SET feesdetailid = NEW.fees_desc_id;

SELECT fees_master_total into feetotal from fees_master where fees_master_id=feesmasterid;

select sum(fees_details_amount) into amt from fees_details_table where fees_details_id IN (select fees_desc_id from fees_master_transaction where fees_master_id=feesmasterid);

update fees_master SET fees_master_total = amt where fees_master_id=feesmasterid;

END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_cash`
--

CREATE TABLE IF NOT EXISTS `fees_payment_cash` (
  `fees_payment_cash_id` int(7) NOT NULL AUTO_INCREMENT,
  `fees_payment_cash_amount` int(7) NOT NULL,
  PRIMARY KEY (`fees_payment_cash_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fees_payment_cash`
--

INSERT INTO `fees_payment_cash` (`fees_payment_cash_id`, `fees_payment_cash_amount`) VALUES
(1, 3000),
(2, 3000),
(3, 3120),
(4, 231);

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_cheque`
--

CREATE TABLE IF NOT EXISTS `fees_payment_cheque` (
  `fees_payment_cheque_id` int(6) NOT NULL AUTO_INCREMENT,
  `fees_payment_cheque_number` int(6) NOT NULL,
  `fees_payment_cheque_date` datetime NOT NULL,
  `fees_payment_cheque_bank` int(6) NOT NULL,
  `fees_payment_cheque_branch` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fees_payment_cheque_amount` int(6) NOT NULL,
  `fees_payment_cheque_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`fees_payment_cheque_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `fees_payment_cheque`
--

INSERT INTO `fees_payment_cheque` (`fees_payment_cheque_id`, `fees_payment_cheque_number`, `fees_payment_cheque_date`, `fees_payment_cheque_bank`, `fees_payment_cheque_branch`, `fees_payment_cheque_amount`, `fees_payment_cheque_status`) VALUES
(1, 424, '2012-05-23 00:00:00', 1, '', 2345, 0),
(2, 89890, '2012-05-11 00:00:00', 1, '', 321, 0),
(3, 3059, '2012-05-18 00:00:00', 1, '', 26000, 0),
(4, 123, '2012-06-12 00:00:00', 2, '', 6000, 0),
(5, 456, '2012-06-20 00:00:00', 1, 'satelliteeee', 890, 0),
(6, 9090, '2012-05-18 00:00:00', 1, 'Navarangpura', 34566, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `fees_payment_transaction`
--

INSERT INTO `fees_payment_transaction` (`fees_payment_transaction_id`, `fees_payment_master_id`, `fees_payment_method_id`, `fees_payment_cash_cheque_id`, `fees_receipt_id`, `fees_payment`, `fees_received_user_id`, `fees_full_part_payment_id`, `fees_student_id`) VALUES
(3, 1, 1, 3, 3, 1, 2, 1, 2),
(5, 1, 2, 1, 5, 1, 2, 1, 2),
(6, 1, 2, 6, 8, 1, 2, 1, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

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
(19, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fees_terms_and_condition`
--

CREATE TABLE IF NOT EXISTS `fees_terms_and_condition` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `term` varchar(200) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `fees_terms_and_condition`
--

INSERT INTO `fees_terms_and_condition` (`id`, `term`, `created_by`, `creation_date`) VALUES
(3, 'Subject to change by Govt / AICTE / University / Management /Fee Technical committee', 2, '2012-06-01'),
(4, 'Subject to verification of all original documents', 2, '2012-06-01'),
(5, 'Subject to approval from Management', 2, '2012-06-01'),
(6, 'Subject to necessary approval & Formalities as per rules & regulation of the institute', 2, '2012-06-01'),
(7, 'Subject to realization of Cheque/DD', 2, '2012-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `gtunotice`
--

CREATE TABLE IF NOT EXISTS `gtunotice` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Description` varchar(50) NOT NULL,
  `Link` varchar(50) NOT NULL,
  `Created_By` varchar(30) NOT NULL,
  `Created_date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gtunotice`
--

INSERT INTO `gtunotice` (`ID`, `Description`, `Link`, `Created_By`, `Created_date`) VALUES
(1, 'Practical Exam schedule', 'www.gtu.ac.in/exam.php', '2', '2012-06-02'),
(2, 'Google', 'http://www.google.com', '2', '2012-06-02');

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
-- Table structure for table `important_notice`
--

CREATE TABLE IF NOT EXISTS `important_notice` (
  `notice_id` int(3) NOT NULL AUTO_INCREMENT,
  `notice` varchar(200) NOT NULL,
  `created_by` int(2) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `important_notice`
--

INSERT INTO `important_notice` (`notice_id`, `notice`, `created_by`, `creation_date`) VALUES
(1, 'hello how r u..?', 2, '2012-06-02 15:07:47'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley.', 2, '2012-06-02 15:09:31');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `inward`
--

INSERT INTO `inward` (`id`, `invoice_description`, `company_name`, `invoice_no_dc`, `invoice_date`, `received_date`, `sender_name`, `department`, `photo`, `document`, `document_desc`, `org_name_id`, `no_of_packets`, `receiver_name`) VALUES
(1, 'Purchase Inward', 'Rudra Softech', '1', '2012-05-29', '2012-05-29', 'Ravi Thanki', 4, 'rudraSoftech.png', 'RaviT_Offer_Letter.pdf', 'Simple File', 1, 1, 'Ajay Thanki'),
(2, 'Purchase Inward', 'Rudra Softech', '1', '2012-05-29', '2012-05-29', 'ABC', 4, 'Menu.png', 'RaviT_Offer_Letter.pdf', 'Simple Letter', 1, 1, 'XYZ');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `inward_details`
--

INSERT INTO `inward_details` (`id`, `inward_id`, `name`, `description`, `quantity`, `item_category_id`, `rate`, `amount`) VALUES
(1, 2, 'Karmraj', 'Karmraj Zala', 343, 1, 45, 66),
(2, 2, 'krunal task', 'This is test task from rudrasoftech', 23, 2, 22, 96),
(3, 2, 'Test for tejasbhai', 'tejasbhai', 234, 1, 78, 98);

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
(2, 'Laptops');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

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
(83, 1, NULL, NULL, NULL),
(84, 1, 3, 2, 4),
(85, 1, 1, 1, 1),
(86, 1, NULL, NULL, NULL),
(87, 1, NULL, NULL, NULL),
(88, 1, NULL, NULL, NULL),
(89, 1, NULL, NULL, NULL),
(90, 1, NULL, NULL, NULL),
(91, 1, NULL, NULL, NULL),
(92, 1, NULL, NULL, NULL),
(93, 1, NULL, NULL, NULL),
(94, 1, NULL, NULL, NULL),
(95, 1, NULL, NULL, NULL),
(96, 1, NULL, NULL, NULL),
(97, 1, NULL, NULL, NULL),
(98, 1, NULL, NULL, NULL),
(99, 1, NULL, NULL, NULL),
(100, 1, NULL, NULL, NULL),
(101, 1, NULL, NULL, NULL),
(102, 1, NULL, NULL, NULL),
(103, 1, NULL, NULL, NULL),
(104, 1, NULL, NULL, NULL),
(105, 1, NULL, NULL, NULL),
(106, 1, 1, 1, NULL),
(107, 1, NULL, NULL, NULL),
(108, 1, NULL, NULL, NULL),
(109, 1, NULL, NULL, NULL),
(110, 1, NULL, 1, NULL),
(111, 1, NULL, NULL, NULL),
(112, 1, NULL, NULL, NULL),
(113, 1, NULL, NULL, NULL),
(114, 1, NULL, NULL, NULL),
(115, 1, NULL, NULL, NULL),
(116, 1, NULL, NULL, NULL),
(117, 1, NULL, NULL, NULL),
(118, 1, NULL, NULL, NULL),
(119, 1, NULL, NULL, NULL),
(120, 1, NULL, NULL, NULL),
(121, 1, NULL, NULL, NULL),
(122, 1, NULL, NULL, NULL),
(123, 1, NULL, NULL, NULL),
(124, 1, NULL, NULL, NULL),
(125, 1, NULL, NULL, NULL);

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
-- Table structure for table `miscellaneous_fees_master`
--

CREATE TABLE IF NOT EXISTS `miscellaneous_fees_master` (
  `miscellaneous_fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `miscellaneous_fees_name` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`miscellaneous_fees_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `miscellaneous_fees_master`
--

INSERT INTO `miscellaneous_fees_master` (`miscellaneous_fees_id`, `miscellaneous_fees_name`, `created_by`, `creation_date`) VALUES
(1, 'tornado fees', 2, '2012-06-02 12:03:12'),
(2, 'jym fees1', 2, '2012-06-02 12:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `miscellaneous_fees_payment_cash`
--

CREATE TABLE IF NOT EXISTS `miscellaneous_fees_payment_cash` (
  `miscellaneous_fees_payment_cash_id` int(7) NOT NULL AUTO_INCREMENT,
  `miscellaneous_fees_payment_cash_master_id` int(3) NOT NULL,
  `miscellaneous_fees_payment_cash_amount` int(7) NOT NULL,
  `miscellaneous_fees_payment_cash_student_id` int(7) NOT NULL,
  `miscellaneous_fees_payment_cash_receipt_id` int(7) NOT NULL,
  `miscellaneous_fees_payment_cash_created_by` int(3) NOT NULL,
  `miscellaneous_fees_payment_cash_creation_date` datetime NOT NULL,
  PRIMARY KEY (`miscellaneous_fees_payment_cash_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `miscellaneous_fees_payment_cash`
--

INSERT INTO `miscellaneous_fees_payment_cash` (`miscellaneous_fees_payment_cash_id`, `miscellaneous_fees_payment_cash_master_id`, `miscellaneous_fees_payment_cash_amount`, `miscellaneous_fees_payment_cash_student_id`, `miscellaneous_fees_payment_cash_receipt_id`, `miscellaneous_fees_payment_cash_created_by`, `miscellaneous_fees_payment_cash_creation_date`) VALUES
(1, 2, 52, 2, 10, 0, '0000-00-00 00:00:00'),
(2, 1, 892, 2, 11, 2, '2012-06-04 14:17:36'),
(4, 2, 2345, 5, 16, 2, '2012-06-04 15:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `miscellaneous_fees_payment_cheque`
--

CREATE TABLE IF NOT EXISTS `miscellaneous_fees_payment_cheque` (
  `miscellaneous_fees_payment_cheque_id` int(6) NOT NULL AUTO_INCREMENT,
  `miscellaneous_fees_payment_cheque_master_id` int(3) NOT NULL,
  `miscellaneous_fees_payment_cheque_number` int(6) NOT NULL,
  `miscellaneous_fees_payment_cheque_date` datetime NOT NULL,
  `miscellaneous_fees_payment_cheque_bank` int(6) NOT NULL,
  `miscellaneous_fees_payment_cheque_branch` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `miscellaneous_fees_payment_cheque_amount` int(6) NOT NULL,
  `miscellaneous_fees_payment_cheque_status` tinyint(1) NOT NULL,
  `miscellaneous_fees_payment_cheque_student_id` int(7) NOT NULL,
  `miscellaneous_fees_payment_cheque_receipt_id` int(7) NOT NULL,
  `miscellaneous_fees_payment_cheque_created_by` int(3) NOT NULL,
  `miscellaneous_fees_payment_cheque_creation_date` datetime NOT NULL,
  PRIMARY KEY (`miscellaneous_fees_payment_cheque_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `miscellaneous_fees_payment_cheque`
--

INSERT INTO `miscellaneous_fees_payment_cheque` (`miscellaneous_fees_payment_cheque_id`, `miscellaneous_fees_payment_cheque_master_id`, `miscellaneous_fees_payment_cheque_number`, `miscellaneous_fees_payment_cheque_date`, `miscellaneous_fees_payment_cheque_bank`, `miscellaneous_fees_payment_cheque_branch`, `miscellaneous_fees_payment_cheque_amount`, `miscellaneous_fees_payment_cheque_status`, `miscellaneous_fees_payment_cheque_student_id`, `miscellaneous_fees_payment_cheque_receipt_id`, `miscellaneous_fees_payment_cheque_created_by`, `miscellaneous_fees_payment_cheque_creation_date`) VALUES
(1, 2, 3456, '2012-06-04 00:00:00', 1, 'test', 456, 0, 2, 15, 2, '2012-06-04 14:48:54'),
(2, 2, 12345, '2012-06-04 00:00:00', 1, 'test', 789, 0, 2, 17, 2, '2012-06-04 15:29:01'),
(3, 1, 678, '2012-06-29 00:00:00', 2, 'Navrangpura', 300, 0, 4, 18, 2, '2012-06-04 15:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `miscellaneous_fees_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `miscellaneous_fees_payment_transaction` (
  `miscellaneous_trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `miscellaneous_fees_id` int(11) NOT NULL,
  `student_fees_id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`miscellaneous_trans_id`),
  KEY `fk_misce_id` (`miscellaneous_fees_id`),
  KEY `fk_stud_trans_id` (`student_fees_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `miscellaneous_fees_payment_transaction`
--

INSERT INTO `miscellaneous_fees_payment_transaction` (`miscellaneous_trans_id`, `miscellaneous_fees_id`, `student_fees_id`, `Amount`) VALUES
(1, 1, 2, 150),
(2, 2, 2, 620);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`organization_id`, `organization_name`, `organization_created_by`, `organization_creation_date`) VALUES
(1, 'Hansaba College of Engineering and Technology', 1, '2012-05-15 12:34:36'),
(2, 'Gokul Engineering College', 1, '2012-05-30 12:04:30');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `outward`
--

INSERT INTO `outward` (`id`, `invoice_description`, `company_name`, `invoice_no_dc`, `invoice_date`, `sending_date`, `receiver_name`, `department`, `photo`, `document`, `document_desc`, `org_name_id`, `no_of_packets`, `sender_name`) VALUES
(1, 'test 1', 'rudara softech', '1', '2012-05-29', '2012-05-29', 'ravi thanki', 4, 'rudraSoftech.png', 'RaviT_Offer_Letter.pdf', 'simple file', 1, 1, 'jkjkj');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `outward_details`
--

INSERT INTO `outward_details` (`id`, `outward_id`, `name`, `description`, `quantity`, `item_category_id`, `rate`, `amount`) VALUES
(1, 1, 1, 'TTTT', 22, 1, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

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
(32, 'Parekhpole , ', 'Nr. Jain Derasar', 106, 165, 384170, 10, 'Parekhpole , ', 'Nr. Jain Derasar', 165, 384170, 10, 106, 0, 0),
(33, 'Sherpura, Ta-Vadgam,', 'Dis. B.K.', 1, 137, 360575, 1, 'Sherpura, Ta-Vadgam,', 'Dis. B.K.', 137, 384151, 2, 2, 0, 0),
(34, 'New panchal vas, ', 'kakosi(patan)', 106, 135, 384290, 10, 'New panchal vas, ', 'kakosi(patan)', 135, 384290, 10, 106, 0, 0),
(35, '24, Thakar Colony,', 'B/H Ayodhyanagar society, Nr kakoshi ', 106, 151, 384151, 10, '24, Thakar Colony,', 'B/H Ayodhyanagar society, Nr kakoshi ', 151, 384151, 10, 106, 0, 0),
(36, 'Brahmanvas, ', 'B/h Sivil hospital mansarovar road,', 106, 130, 385001, 10, 'Brahmanvas, ', 'B/h Sivil hospital mansarovar road,', 130, 385001, 10, 106, 0, 0),
(37, 'At.&Po. Nandotra,', 'Ta.Vadgam, B.K', 106, 3, 0, 10, 'At.&Po. Nandotra,', 'Ta.Vadgam, B.K', 3, 0, 10, 106, 0, 0),
(38, 'Village:Tadav, ', 'Ta. Wav-', 106, 3, 385566, 10, 'Village:Tadav, ', 'Ta. Wav-', 3, 385566, 10, 106, 0, 0),
(39, 'navo madh, ', 'Nr.grampanchayat, kamli.', 106, 108, 384140, 10, 'navo madh, ', 'Nr.grampanchayat, kamli.', 108, 384140, 10, 106, 0, 0),
(40, 'Near Police Station,', ' taherpura,', 106, 151, 384151, 10, 'Near Police Station,', ' taherpura,', 151, 384151, 10, 106, 0, 0),
(41, 'Navjivan Society, ', 'Abu Highyway Road,', 106, 130, 385002, 10, 'Navjivan Society, ', 'Abu Highyway Road,', 130, 385002, 10, 106, 0, 0),
(42, '26/B, Arpan park society,', 'agola road, Nr.nandanvan society,', 106, 130, 385001, 10, '26/B, Arpan park society,', 'agola road, Nr.nandanvan society,', 130, 385001, 10, 106, 0, 0),
(43, 'At&po.Timbachudi ', ' ta.Vadgam, Dist.B.K', 106, 3, 385210, 10, 'At&po.Timbachudi ', ' ta.Vadgam, Dist.B.K', 3, 385210, 10, 106, 0, 0),
(44, 'Railway kakoshi fatak, ', 'Nr.kotar no.58/B, ta.sidhpur', 106, 135, 384151, 10, 'Railway kakoshi fatak, ', 'Nr.kotar no.58/B, ta.sidhpur', 135, 384151, 10, 106, 0, 0),
(45, 'Old laxmipura, stret no.7, ', 'ta.palanpur, Dist.B.K', 106, 130, 385002, 10, 'Old laxmipura, stret no.7, ', 'ta.palanpur, Dist.B.K', 130, 385002, 10, 106, 0, 0),
(46, 'pasvadal ki pol, sidhpur, ', 'Ta.sidhpur,', 106, 135, 384151, 10, 'pasvadal ki pol, sidhpur, ', 'Ta.sidhpur,', 135, 384151, 10, 106, 0, 0),
(47, 'Naveriyavas,', ' At. Maktupur Ta.Unjha', 106, 108, 384170, 10, 'Naveriyavas,', ' At. Maktupur Ta.Unjha', 108, 384170, 10, 106, 0, 0),
(48, 'Jagdish nagar, ', 'Nr.Rambag, Unjha, ', 106, 108, 384170, 10, 'Jagdish nagar, ', 'Nr.Rambag, Unjha, ', 108, 384170, 10, 106, 0, 0),
(49, 'Aketa park society,', 'Nr.motishah Darvaja, ', 106, 135, 384265, 10, 'Aketa park society,', 'Nr.motishah Darvaja, ', 135, 384265, 10, 106, 0, 0),
(50, 'Gurunanak society ke pass, ', 'Ta.sidhpur, ', 106, 135, 384151, 10, 'Gurunanak society ke pass, ', 'Ta.sidhpur, ', 135, 384151, 10, 106, 0, 0),
(51, '23, Ambika Nagar Society, ', 'Nr, G.E.B. ', 106, 151, 384151, 10, '23, Ambika Nagar Society, ', 'Nr, G.E.B. ', 151, 384151, 10, 106, 0, 0),
(52, 'A/23 Dharti towanship,  ', 'Akesan road highway, dist.B.K, ', 106, 130, 385001, 10, 'A/23 Dharti towanship, ', 'Akesan road highway, dist.B.K, ', 130, 385001, 10, 106, 0, 0),
(53, 'Old laxmipura ', 'Ramdev nagar society, ', 106, 130, 385001, 10, 'Old laxmipura ', 'Ramdev nagar society, ', 130, 385001, 10, 106, 0, 0),
(54, 'At & Po. Jasleni, ', 'Ta. Palanpur', 106, 130, 385410, 10, 'At & Po. Jasleni, ', 'Ta. Palanpur', 130, 385410, 10, 106, 0, 0),
(55, '7- Patel Society, ', 'Nr. S.C.W. Highway School', 106, 46, 385535, 10, '7- Patel Society, ', 'Nr. S.C.W. Highway School', 46, 385535, 10, 106, 0, 0),
(56, '25 Vivekanand ', 'Society, Dhanera, Dis. Banaskantha', 106, 3, 385310, 10, '25 Vivekanand ', 'Society, Dhanera, Dis. Banaskantha', 3, 385310, 10, 106, 0, 0),
(57, 'Rabari vas, ', 'At.Maktupur, Ta.Unjha, ', 106, 108, 384170, 10, 'Rabari vas, ', 'At.Maktupur, Ta.Unjha, ', 108, 384170, 10, 106, 0, 0),
(58, 'At.&Po. Meta, ', 'Ta.vadgam,Dist. B.K', 106, 3, 384151, 10, 'At.&Po. Meta, ', 'Ta.vadgam,Dist. B.K', 3, 384151, 10, 106, 0, 0),
(59, 'At.&Po. Madana(Gadh),', ' Nr. Bus stand,', 106, 130, 385519, 10, 'At.&Po. Madana(Gadh),', ' Nr. Bus stand,', 130, 385519, 10, 106, 0, 0),
(60, 'Hanuman Nagar, Sujanpur,', ' Ta- Siddhpur', 106, 135, 384151, 10, 'Hanuman Nagar, Sujanpur,', ' Ta- Siddhpur', 135, 384151, 10, 106, 0, 0),
(61, '106, Suyog Bunglow, Akesanfatak', ' Nr. Palanpur, Palanpur Ahmedabad Highway', 106, 130, 384151, 10, '106, Suyog Bunglow, Akesanfatak', ' Nr. Palanpur, Palanpur Ahmedabad Highway', 130, 384151, 10, 106, 0, 0),
(62, 'Block No.-53, Ramnagar Society, ', 'Gobari Road, ', 106, 130, 385001, 10, 'Block No.-53, Ramnagar Society, ', 'Gobari Road, ', 130, 385001, 10, 106, 0, 0),
(63, 'New Laxmipura,', 'Opp. Karjivas, B/H Joravar Palace Ta. ', 106, 130, 385001, 10, 'New Laxmipura,', 'Opp. Karjivas, B/H Joravar Palace Ta.', 130, 385001, 10, 106, 0, 0),
(64, 'Po. Koita, Panchal Vas, ', 'Dist. Patan', 106, 135, 385001, 10, 'Po. Koita, Panchal Vas, ', 'Dist. Patan', 135, 385001, 10, 106, 0, 0),
(65, 'Gayatri Mandir Chhapi,', ' Chhapi', 106, 3, 385210, 10, 'Gayatri Mandir Chhapi,', ' Chhapi', 3, 385210, 10, 106, 0, 0),
(66, 'Sherpura, Ta-Vadgam, ', 'Dis. B.K.', 106, 3, 384151, 10, 'Sherpura, Ta-Vadgam, ', 'Dis. B.K.', 3, 384151, 10, 106, 0, 0),
(67, 'Nanu Kalodara, Javahar Street, ', 'Ta.Khambhat,', 106, 8, 388630, 10, 'Nanu Kalodara, Javahar Street, ', 'Ta.Khambhat,', 8, 388630, 10, 106, 0, 0),
(68, 'Huseniganj, Sat Sancha ', 'Nr. Dr.Rafik House, Kamalpura,Palanpur, B.K. ', 106, 3, 385001, 10, 'Huseniganj, Sat Sancha ', 'Nr. Dr.Rafik House, Kamalpura,Palanpur, B.K. ', 3, 385001, 10, 106, 0, 0),
(69, '15,shanti niketan society,', ' op. gyatri society, at&po&ta', 106, 3, 384151, 10, '15,shanti niketan society,', ' op. gyatri society, at&po&ta', 3, 384151, 10, 106, 0, 0),
(70, 'Motivaniyawas,', ' Main Bazar, Chanasma,', 106, 135, 384220, 10, 'Motivaniyawas,', ' Main Bazar, Chanasma,', 135, 384220, 10, 106, 0, 0),
(71, '80, Shivnagar Socity, Abu Highway, ', 'Angola Road, Palanpu', 106, 130, 385001, 10, '80, Shivnagar Socity, Abu Highway, ', 'Angola Road, Palanpu', 130, 385001, 10, 106, 0, 0),
(72, 'At.Gadalwada, ', 'Po.Hoda, ', 106, 130, 385001, 10, 'At.Gadalwada, ', 'Po.Hoda, ', 130, 385001, 10, 106, 0, 0),
(73, 'Block-S15, Sarakari Vashahat, ', 'B/h. Lal banglow, Palanpu', 106, 3, 384151, 10, 'Block-S15, Sarakari Vashahat, ', 'B/h. Lal banglow, Palanpu', 3, 384151, 10, 106, 0, 0),
(74, 'Dasaj Road, ', 'At&Po-Kamli, Ta.Unjha, ', 106, 3, 384151, 10, 'Dasaj Road, ', 'At&Po-Kamli, Ta.Unjha, ', 3, 384151, 10, 106, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_docs`
--

CREATE TABLE IF NOT EXISTS `student_docs` (
  `student_docs_id` int(6) NOT NULL AUTO_INCREMENT,
  `student_docs_desc` varchar(50) DEFAULT NULL,
  `student_docs_path` varchar(150) NOT NULL,
  PRIMARY KEY (`student_docs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `student_docs`
--

INSERT INTO `student_docs` (`student_docs_id`, `student_docs_desc`, `student_docs_path`) VALUES
(1, NULL, 'IMG_7076.JPG'),
(2, NULL, 'IMG_7076.JPG'),
(3, NULL, 'IMG_7076.JPG'),
(4, NULL, 'rudraSoftech.png'),
(5, NULL, 'logo.png'),
(6, 'doc 1', 'rudraSoftech.png'),
(7, 'test', 'Menu.png'),
(8, 'Image', 'oneimg.png'),
(9, 'offer latter', 'RaviT_Offer_Letter.pdf');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `student_docs_trans`
--

INSERT INTO `student_docs_trans` (`student_docs_trans_id`, `student_docs_trans_user_id`, `student_docs_trans_stud_docs_id`) VALUES
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 32, 9);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

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
(32, '33', '0', '110980111033', 111111999, 'SAGAR', 'GIRISHBHAI', 'SUTHAR', NULL, 'NA', '2011-10-12', '1990-05-19', 'UNJHA', 'Male', 'GIRISHBHAI', 'father', '', 'CARPENTER', '0', '', 165, 384170, 'Parekhpole , Nr. Jain Derasar Unjha, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 1, '2012-05-23 17:43:09'),
(33, '123', '19996', '110980107005', 1234, 'KRUNAL', 'BHARATBHAI', 'PATEL', NULL, 'NA', '2012-05-15', '2012-05-29', 'NA', 'Male', 'BHARATBHAI', 'FATHER', '', 'FARMER', '0', 'Zundala, Porbandar', 137, 360575, 'Aithor, Ta. Unjha,', 0, 0, 'ravithanki15@gmail.com', '', 'A+', 0, 2, '2012-05-29 11:57:46'),
(34, '37', '16771', '110980107002', 11071062, 'SHRADDHABEN ', 'HARSH', 'THAKKAR', NULL, 'NA', '2011-07-19', '2011-07-20', 'NA', 'Female', 'HARSH', 'FATHER', '', 'BUSINESS', '0', 'NA', 135, 384290, 'New panchal vas,', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 12:18:29'),
(35, '27', '17281', '110980107003', 11071063, 'MAULIKA ', 'BABULAL', 'PATEL', NULL, 'NA', '2011-07-20', '2011-07-20', 'NA', 'Female', 'BABULAL', 'FATHER', '', 'FARMER', '0', 'NA', 151, 384151, '24, Thakar Colony,B/H Ayodhyanagar society, Nr kakoshi fatak', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 12:28:15'),
(36, '9', '17807', '110980107004', 11071064, 'KRUNAL ', 'KIRTIBHAI', 'JOSHI', NULL, 'NA', '2011-07-20', '2011-07-20', 'NA', 'Male', 'KIRTIBHAI', 'FATHER', '', 'LIC AGENT', '0', 'NA', 130, 385001, 'Brahmanvas,B/h Sivil hospital mansarovar road ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 12:35:48'),
(37, '1', '19996', '110980107005', 11071065, 'RINKUBEN', 'SARDAR', 'CHAUDHARI', NULL, 'NA', '2011-08-04', '2011-08-20', 'NA', 'Female', 'SARDAR', 'FATHER', '', 'FARMER', '0', 'NA', 3, NULL, 'At.&Po. Nandotra,Ta.Vadgam, B.K', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 13:03:29'),
(38, '2', '21939    ', '110980107006', 11071066, 'GIRISHBHAI', 'LAGADHIRBHAI', 'CHAUDHARI', NULL, 'NA', '2011-08-02', '2011-08-04', 'NA', 'Male', 'LAGADHIRBHAI', 'FATHER', '', 'TEACHER', '0', 'NA', NULL, 385566, 'Village:Tadav, Ta. Wav-385566', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 13:21:13'),
(39, '31', '22935    ', '110980107007', 11071067, 'TWINKAL ', 'GIRISHKUMAR', 'PATEL', NULL, 'NA', '2011-07-21', '2011-07-21', 'NA', 'Female', 'GIRISHKUMAR', 'FATHER', '', 'FARMER', '0', '', 108, 384140, 'navo madh, Nr.grampanchayat, kamli.', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 13:54:13'),
(40, '5', '23339    ', '110980107008', 11071068, 'JARINABANU ', 'USMANKHAN', 'CHAUHAN', NULL, 'NA', '2011-08-17', '2011-08-17', 'NA', 'Female', 'USMANKHAN', 'FATHER', '', 'RETIRED', '0', 'NA', 151, 384151, 'Near Police Station, taherpura,', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 14:02:53'),
(41, '23', '24916    ', '110980107009', 11071069, 'HEMALI ', 'DEVENDRAKUMAR', 'PATEL ', NULL, 'NA', '2011-08-02', '2011-08-04', 'NA', 'Female', 'DEVENDRAKUMAR', 'FATHER', '', 'BUSINESS', '0', '', 130, 385002, 'Navjivan Society, Abu Highyway Road, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 14:11:46'),
(42, '10', '26371    ', '110980107010', 11071070, 'RAHULKUMAR ', 'ASHOKBHAI', 'JOSHI', NULL, 'NA', '2011-07-20', '2011-07-20', 'NA', 'Male', 'ASHOKBHAI', 'FATHER', '', 'TEACHER', '0', 'NA', 130, 385001, '26/B, Arpan park society, agola road, Nr.nandanvan society,', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 14:23:33'),
(43, '35', '26777    ', '110980107011', 11071071, 'VAISHALIBEN ', 'NATAVARLAL', 'RAVAL ', NULL, 'NA', '2011-07-20', '2011-07-22', 'NA', 'Female', 'NATAVARLAL', 'FATHER', '', 'CUNDECTOR', '0', '', 157, 385210, 'At&po.Timbachudi  ta.Vadgam, Dist.B.K', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 14:30:57'),
(44, '7', '27115    ', '110980107012', 11071072, 'MAYURISING ', 'NARESHPALSING', 'JADON ', NULL, 'NA', '2011-07-21', '2011-07-21', 'NA', 'Female', 'NARESHPALSING', 'FATHER', '', 'P MAN IN RAILWAY', '0', 'NA', 135, 384151, 'Railway kakoshi fatak, Nr.kotar no.58/B, ta.sidhpur', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 14:39:37'),
(45, '28', '27535    ', '110980107013', 11071073, 'NIMISHABEN ', 'NAVINCHANDRA', 'PATEL ', NULL, 'NA', '2011-07-21', '2011-07-21', 'NA', 'Female', 'NAVINCHANDRA', 'FATHER', '', 'BUSINESS', '0', '', NULL, 385002, 'Old laxmipura, stret no.7, ta.palanpur, Dist.B.K', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 14:47:14'),
(46, '32', '27882    ', '110980107014', 11071074, 'ANJALI ', 'MAHENDRAKUMAR', 'PRAJAPATI ', NULL, 'NA', '2011-07-20', '2011-07-20', 'NA', 'Female', 'MAHENDRAKUMAR', 'FATHER', '', 'LABUR WORK', '0', '', 135, 384151, 'pasvadal ki pol, sidhpur, Ta.sidhpur,', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 14:55:05'),
(47, '19', '30212    ', '110980107015', 11071075, 'AVANIBEN ', 'SHANKARLAL', 'PATEL', NULL, 'NA', '2011-07-23', '2011-07-23', 'NA', 'Female', 'SHANKARLAL', 'FATHER', '', 'FARMER', '0', 'NA', 108, 384170, 'Naveriyavas, At. Maktupur Ta.Unjha', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 15:03:20'),
(48, '26', '30770    ', '110980107016', 11071076, 'KRUPA ', 'PARESHBHAI', 'PATEL ', NULL, 'NA', '2011-07-20', '2011-07-20', 'NA', 'Female', 'PARESHBHAI', 'FATHER', '', 'BUSINESS', '0', 'NA', 108, 384170, 'Jagdish nagar, Nr.Rambag, Unjha, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 15:11:03'),
(49, '36', '31680    ', '110980107017', 11071077, 'SAGARBHAI ', 'JAGDISHBHAI', 'SOLANKI', NULL, 'NA', '2011-07-20', '2011-07-21', 'NA', 'Male', 'JAGDISHBHAI', 'FATHER', '', 'DRIVER', '0', 'NA', 135, 384265, 'Aketa park society,Nr.motishah Darvaja, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 15:18:04'),
(50, '15', '32048    ', '110980107018', 11071078, 'AJAYKUMAR ', 'RAMANBHAI', 'PATEL ', NULL, 'NA', '2011-07-20', '2011-07-20', 'NA', 'Male', 'RAMANBHAI', 'FATHER', '', 'DRIVER', '0', 'NA', 135, 384151, 'Gurunanak society ke pass, Ta.sidhpur, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 15:28:25'),
(51, '34', '32516    ', '110980107019', 11071079, 'JAGIR ', 'PRADIPKUMAR', 'RAO', NULL, 'NA', '2011-08-16', '2011-08-16', 'NA', 'Male', 'PRADIPKUMAR', 'FATHER', '', 'LAWYER', '0', 'NA', 151, 384151, '23, Ambika Nagar Society, Nr, G.E.B. ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 15:33:47'),
(52, '29', '32611    ', '110980107020', 11071080, 'POOJABEN ', 'BABUBHAI', 'PATEL', NULL, 'NA', '2011-07-20', '2011-07-23', 'NA', 'Female', 'BABUBHAI', 'FATHER', '', 'GOVT SERVICE', '0', 'NA', 130, 385001, 'A/23 Dharti towanship, Akesan road highway, dist.B.K,  ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 15:41:42'),
(53, '21', '33632    ', '110980107021', 11071081, 'DIPIKABEN ', 'RAMABHAI', 'PATEL ', NULL, 'NA', '2001-07-21', '2011-07-21', 'NA', 'Female', 'RAMABHAI', 'FATHER', '', 'BUSINESS', '0', 'NA', 130, 385001, 'Old laxmipura Ramdev nagar society, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 15:48:44'),
(54, '3', '34043    ', '110980107022', 11071082, 'MITALBEN ', 'BHIKHABHAI', 'CHAUDHARY', NULL, 'NA', '2011-08-16', '2011-08-18', 'NA', 'Female', 'BHIKHABHAI', 'FATHER', '', 'FARMER', '0', 'NA', NULL, 385410, 'At & Po. Jasleni, Ta. Palanpur', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 15:55:27'),
(55, '22', '34882    ', '110980107023', 11071083, 'GOPI ', 'RAMESHBHAI', 'PATEL ', NULL, 'NA', '2011-08-02', '2011-08-02', 'NA', 'Female', 'RAMESHBHAI', 'FATHER', '', 'BUSINESS', '0', 'NA', 46, 385535, '7- Patel Society, Nr. S.C.W. Highway School', 0, 0, 'NA@Y.C', 'thankiravi15@yahoo.com', 'A+', 0, 2, '2012-05-24 16:00:56'),
(56, '38', '35993    ', '110980107024', 11071084, 'SIDDHIBEN ', 'SURESHBHAI', 'TRIVEDI ', NULL, 'NA', '2011-08-02', '2011-08-03', 'NA', 'Female', 'SURESHBHAI', 'FATHER', '', 'BUSINESS', '0', 'NA', NULL, 385310, '25 Vivekanand Society, Dhanera, Dis. Banaskantha', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 16:07:42'),
(57, '33', '36068    ', '110980107025', 11071085, 'SONALBEN ', 'HALABHAI ', 'RABARI', NULL, 'NA', '2011-07-23', '2011-07-23', 'NA', 'Female', 'HALABHAI ', 'FATHER', '', 'FARMER', '0', 'NA', 108, 384170, 'Rabari vas, At.Maktupur, Ta.Unjha, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 16:13:26'),
(58, '12', '36198    ', '110980107026', 11071086, 'MAHEMUDHASAN ', 'AKBARALI', 'NANDOLIYA', NULL, 'NA', '2011-08-02', '2011-08-03', 'NA', 'Male', 'AKBARALI', 'FATHER', '', 'BUSINESS', '0', 'NA', NULL, NULL, 'At.&Po. Meta, Ta.vadgam,Dist. B.K', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 16:20:11'),
(59, '20', '36333    ', '110980107027', 11071087, 'DHAVALKUMAR ', 'KANJIBHAI', 'PATEL ', NULL, 'NA', '2011-08-02', '2011-08-02', 'NA', 'Male', 'KANJIBHAI', 'FATHER', '', 'FARMER', '0', 'NA', 130, 385519, 'At.&Po. Madana(Gadh), Nr. Bus stand,', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 16:27:00'),
(60, '25', '36540    ', '110980107028', 11071088, 'KHUSHBUBEN ', 'RAJESHKUMAR', 'PATEL ', NULL, 'NA', '2011-08-02', '2011-08-02', 'NA', 'Female', 'RAJESHKUMAR', 'FATHER', '', 'FARMER', '0', 'NA', 135, 384151, 'Hanuman Nagar, Sujanpur, Ta- Siddhpur', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 16:36:49'),
(61, '18', '36655    ', '110980107029', 11071089, 'ARJU ', 'MUKESHKUMAR', 'PATEL ', NULL, 'NA', '2011-08-02', '2011-08-02', 'NA', 'Female', 'MUKESHKUMAR', 'FATHER', '', 'GOVT SERVICE', '0', 'NA', 130, NULL, '106, Suyog Bunglow, Akesanfatak, Nr. Palanpur, Palanpur Ahmedabad Highway', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 16:43:28'),
(62, '14', '37038    ', '110980107030', 11071090, 'BHAVANABEN ', 'KESHARSINH', 'PARMAR ', NULL, 'NA', '2011-08-02', '2011-08-03', 'NA', 'Female', 'KESHARSINH', 'FATHER', '', 'POLICE', '0', 'NA', 130, 385001, 'Block No.-53, Ramnagar Society, Gobari Road, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 16:49:27'),
(63, '30', '37711    ', '110980107031', 11071091, 'SARIKABEN ', 'PRAKASHKUMAR', 'PATEL ', NULL, 'NA', '2011-08-03', '2011-08-03', 'NA', 'Female', 'PRAKASHKUMAR', 'FATHER', '', 'BUSINESS', '0', 'NA', 130, 385001, 'New Laxmipura,Opp. Karjivas, B/H Joravar Palace Ta. ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 16:59:05'),
(64, '13', '38393    ', '110980107032', 11071092, 'RAHULBHAI ', 'PRAVINBHAI', 'PANCHAL ', NULL, 'NA', '2011-08-16', '2011-08-17', 'NA', 'Male', 'PRAVINBHAI', 'FATHER', '', 'CARPENTER', '0', 'NA', NULL, NULL, 'Po. Koita, Panchal Vas, Dist. Patan', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 17:04:36'),
(65, '4', '39243', '110980107033', 11071093, 'VIJAYKUMAR ', 'KESARBHAI', 'CHAUDHARY', NULL, 'NA', '2011-08-02', '2011-08-03', 'NA', 'Male', 'KESARBHAI', 'FATHER', '', 'FARMER', '0', 'NA', NULL, 385210, 'Gayatri Mandir Chhapi, Chhapi', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 17:10:27'),
(66, '11', '39429', '110980107034', 11071094, 'MUJAHIDBHAI ', 'ABDULKADIR', 'MANASIYA', NULL, 'NA', '2011-08-03', '2011-08-03', 'NA', 'Male', 'ABDULKADIR', 'FATHER', '', 'FARMER', '0', 'NA', NULL, 385520, 'Sherpura, Ta-Vadgam, Dis. B.K.', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 17:23:58'),
(67, '16', '39617', '110980107035', 11071095, 'ANKURKUMAR ', 'BIPINBHAI', 'PATEL', NULL, 'NA', '2011-08-04', '2011-08-05', 'NA', 'Male', 'BIPINBHAI', 'FATHER', '', 'FARMER', '0', 'NA', 8, 388630, 'Nanu Kalodara, Javahar Street, Ta.Khambhat,', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 17:28:43'),
(68, '6', '39995', '110980107036', 11071096, 'NOUMAN ', 'AMIRMOHAMMAD', 'CHAUHAN ', NULL, 'NA', '2011-08-04', '2011-08-24', 'NA', 'Male', 'AMIRMOHAMMAD', 'FATHER', '', 'SERVICE', '0', 'NA', NULL, 385001, 'Huseniganj, Sat Sancha Nr. Dr.Rafik House, Kamalpura, Palanpur, B.K. ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 17:35:50'),
(69, '24', '129861', '110980107037', 11071097, 'JYOTSANABEN ', 'SHANKARBHAI', 'PATEL ', NULL, 'NA', '2011-07-21', '2011-07-23', 'NA', 'Female', 'SHANKARBHAI', 'FATHER', '', 'BUSINESS', '0', 'NA', NULL, 385310, '15,shanti niketan society, op. gyatri society, at&po&ta', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 17:43:31'),
(70, '8', '40043', '110980107038', 11071098, 'JAINEXKUMAR ', 'JEETENDRAKUMAR', 'JAIN ', NULL, 'NA', '2011-08-16', '2011-08-25', 'NA', 'Male', 'JEETENDRAKUMAR', 'FATHER', '', '', '0', 'NA', 135, 384220, 'Motivaniyawas, Main Bazar, Chanasma, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 17:48:56'),
(71, '39', '500585', '110980107039', 11071099, 'JIGARKUMAR ', 'RAJESHKUMAR', 'RAVAL', NULL, 'NA', '2011-08-23', '2011-08-26', 'NA', 'Male', 'RAJESHKUMAR', 'FATHER', '', 'BUSINESS', '0', 'NA', 130, 385001, '80, Shivnagar Socity, Abu Highway, Angola Road, Palanpur, Dist. B.K. ', 0, 0, 'NA@Y.C', '', 'A-', 0, 2, '2012-05-24 17:54:11'),
(72, '40', '0', '110980107040', 110710249, 'ARVINDKUMAR ', 'HIRALAL', 'CHAUDHARY', NULL, 'NA', '2011-09-03', '2011-09-03', 'NA', 'Male', 'HIRALAL', 'FATHER', '', 'SER MARKET', '0', 'NA', 130, 385001, 'At.Gadalwada, Po.Hoda, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 17:59:57'),
(73, '41', '501111', '110980107041', 110710250, 'MEHULKUMAR ', 'DHANJIBHAI', 'PANDYA', NULL, 'NA', '2011-09-03', '2011-09-03', 'NA', 'Male', 'DHANJIBHAI', 'FATHER', '', 'OFFICER', '0', 'NA', NULL, NULL, 'Block-S15, Sarakari Vashahat, B/h. Lal banglow, Palanpur,Dist-B.K', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 18:04:15'),
(74, '42', '0', '110980107042', 110710251, 'PRAFULKUMAR ', 'ASHOKBHAI', 'PATEL', NULL, 'NA', '2011-08-23', '2011-09-06', 'NA', 'Male', 'ASHOKBHAI', 'FATHER', '', 'FARMER', '0', 'NA', 108, NULL, 'Dasaj Road, At&Po-Kamli, Ta.Unjha, ', 0, 0, 'NA@Y.C', '', 'A+', 0, 2, '2012-05-24 18:08:42');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

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
(32, NULL, 'no_image'),
(33, NULL, '33_KRUNAL'),
(34, NULL, 'no_image'),
(35, NULL, 'no_image'),
(36, NULL, 'no_image'),
(37, NULL, 'no_image'),
(38, NULL, 'no_image'),
(39, NULL, 'no_image'),
(40, NULL, 'no_image'),
(41, NULL, 'no_image'),
(42, NULL, 'no_image'),
(43, NULL, 'no_image'),
(44, NULL, 'no_image'),
(45, NULL, 'no_image'),
(46, NULL, 'no_image'),
(47, NULL, 'no_image'),
(48, NULL, 'no_image'),
(49, NULL, 'no_image'),
(50, NULL, 'no_image'),
(51, NULL, 'no_image'),
(52, NULL, 'no_image'),
(53, NULL, 'no_image'),
(54, NULL, 'no_image'),
(55, NULL, 'no_image'),
(56, NULL, 'no_image'),
(57, NULL, 'no_image'),
(58, NULL, 'no_image'),
(59, NULL, 'no_image'),
(60, NULL, 'no_image'),
(61, NULL, 'no_image'),
(62, NULL, 'no_image'),
(63, NULL, 'no_image'),
(64, NULL, 'no_image'),
(65, NULL, 'no_image'),
(66, NULL, 'no_image'),
(67, NULL, 'no_image'),
(68, NULL, 'no_image'),
(69, NULL, 'no_image'),
(70, NULL, 'no_image'),
(71, NULL, 'no_image'),
(72, NULL, 'no_image'),
(73, NULL, 'no_image'),
(74, NULL, 'no_image');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

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
(31, 92, 32, 2, 2, 1, 32, 11, 4, 1, 1, 83, 32, NULL, NULL, 2),
(32, 93, 33, 4, 1, 1, 33, 11, 1, 1, 1, 85, 33, 1, NULL, 2),
(33, 94, 34, 4, 1, 1, 34, 11, 1, 1, 1, 85, 34, NULL, NULL, 2),
(34, 95, 35, 4, 1, 1, 35, 11, 1, 1, 1, 86, 35, NULL, NULL, 2),
(35, 96, 36, 4, 1, 1, 36, 11, 1, 1, 1, 87, 36, NULL, NULL, 2),
(36, 97, 37, 4, 2, 1, 37, 11, 1, 1, 1, 88, 37, NULL, NULL, 2),
(37, 98, 38, 4, 2, 1, 38, 11, 1, 1, 1, 89, 38, NULL, NULL, 2),
(38, 99, 39, 4, 1, 1, 39, 11, 1, 1, 1, 90, 39, NULL, NULL, 2),
(39, 100, 40, 4, 2, 1, 40, 11, 1, 2, 1, 91, 40, NULL, NULL, 2),
(40, 101, 41, 4, 1, 1, 41, 11, 1, 1, 1, 92, 41, NULL, NULL, 2),
(41, 102, 42, 4, 1, 1, 42, 11, 1, 1, 1, 93, 42, NULL, NULL, 2),
(42, 103, 43, 4, 1, 1, 43, 11, 1, 1, 1, 94, 43, NULL, NULL, 2),
(43, 104, 44, 4, 1, 1, 44, 11, 1, 1, 1, 95, 44, NULL, NULL, 2),
(44, 105, 45, 4, 1, 1, 45, 11, 1, 1, 1, 96, 45, NULL, NULL, 2),
(45, 106, 46, 4, 2, 1, 46, 11, 1, 1, 1, 97, 46, NULL, NULL, 2),
(46, 107, 47, 4, 1, 1, 47, 11, 1, 1, 1, 98, 47, NULL, NULL, 2),
(47, 108, 48, 4, 1, 1, 48, 11, 1, 1, 1, 99, 48, NULL, NULL, 2),
(48, 109, 49, 4, 3, 1, 49, 11, 1, 1, 1, 100, 49, NULL, NULL, 2),
(49, 110, 50, 4, 1, 1, 50, 11, 1, 1, 1, 101, 50, NULL, NULL, 2),
(50, 111, 51, 4, 2, 1, 51, 11, 1, 1, 1, 102, 51, NULL, NULL, 2),
(51, 112, 52, 4, 1, 1, 52, 11, 1, 1, 1, 103, 52, NULL, NULL, 2),
(52, 113, 53, 4, 1, 1, 53, 11, 1, 1, 1, 104, 53, NULL, NULL, 2),
(53, 114, 54, 4, 2, 1, 54, 11, 1, 1, 1, 105, 54, NULL, NULL, 2),
(54, 115, 55, 4, 1, 1, 55, 11, 1, 1, 1, 106, 55, NULL, NULL, 2),
(55, 116, 56, 4, 1, 1, 56, 11, 1, 1, 1, 107, 56, NULL, NULL, 2),
(56, 117, 57, 4, 2, 1, 57, 11, 1, 1, 1, 108, 57, NULL, NULL, 2),
(57, 118, 58, 4, 1, 1, 58, 11, 1, 2, 1, 109, 58, NULL, NULL, 2),
(58, 119, 59, 4, 1, 1, 59, 11, 1, 1, 1, 110, 59, NULL, NULL, 2),
(59, 120, 60, 4, 1, 1, 60, 11, 1, 1, 1, 111, 60, NULL, NULL, 2),
(60, 121, 61, 4, 1, 1, 61, 11, 1, 1, 1, 112, 61, NULL, NULL, 2),
(61, 122, 62, 4, 1, 1, 62, 11, 1, 1, 1, 113, 62, NULL, NULL, 2),
(62, 123, 63, 4, 1, 1, 63, 11, 1, 1, 1, 114, 63, NULL, NULL, 2),
(63, 124, 64, 4, 2, 1, 64, 11, 1, 1, 1, 115, 64, NULL, NULL, 2),
(64, 125, 65, 4, 2, 1, 65, 11, 1, 1, 1, 116, 65, NULL, NULL, 2),
(65, 126, 66, 4, 1, 1, 66, 11, 1, 2, 1, 117, 66, NULL, NULL, 2),
(66, 127, 67, 4, 1, 1, 67, 11, 1, 1, 1, 118, 67, NULL, NULL, 2),
(67, 128, 68, 4, 1, 1, 68, 11, 1, 2, 1, 119, 68, NULL, NULL, 2),
(68, 129, 69, 4, 1, 1, 69, 11, 1, 1, 1, 120, 69, NULL, NULL, 2),
(69, 130, 70, 4, 2, 1, 70, 11, 1, 4, 1, 121, 70, NULL, NULL, 2),
(70, 131, 71, 4, 1, 1, 71, 11, 1, 1, 1, 122, 71, NULL, NULL, 2),
(71, 132, 72, 4, 3, 1, 72, 11, 4, 1, 1, 123, 72, NULL, NULL, 2),
(72, 133, 73, 4, 3, 1, 73, 11, 4, 1, 1, 124, 73, NULL, NULL, 2),
(73, 134, 74, 4, 1, 1, 74, 11, 4, 1, 1, 125, 74, NULL, NULL, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

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
(92, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 1, '2012-05-23 17:43:09'),
(93, 'ravithanki15@rediffmail.com', '3e24f84c8727f5fd261d61770d84c9de', 2, '2012-05-29 11:07:11'),
(94, 'ravithanki15@gmail.com', '4f1e2f2f662d817cfa45755c822070a4', 2, '2012-05-29 11:57:46'),
(95, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 12:28:15'),
(96, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 12:35:48'),
(97, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 13:03:29'),
(98, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 13:21:13'),
(99, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 13:54:13'),
(100, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 14:02:53'),
(101, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 14:11:46'),
(102, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 14:23:34'),
(103, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 14:30:57'),
(104, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 14:39:37'),
(105, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 14:47:15'),
(106, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 14:55:05'),
(107, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 15:03:20'),
(108, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 15:11:03'),
(109, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 15:18:05'),
(110, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 15:28:25'),
(111, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 15:33:47'),
(112, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 15:41:42'),
(113, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 15:48:44'),
(114, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 15:55:27'),
(115, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 16:00:56'),
(116, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 16:07:42'),
(117, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 16:13:26'),
(118, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 16:20:12'),
(119, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 16:27:00'),
(120, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 16:36:49'),
(121, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 16:43:28'),
(122, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 16:49:27'),
(123, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 16:59:06'),
(124, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 17:04:36'),
(125, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 17:10:28'),
(126, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 17:23:58'),
(127, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 17:28:43'),
(128, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 17:35:50'),
(129, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 17:43:31'),
(130, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 17:48:56'),
(131, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 17:54:11'),
(132, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 17:59:57'),
(133, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 18:04:15'),
(134, 'NA@Y.C', '0a9b2974edde1dc61cbd0db4becbe555', 2, '2012-05-24 18:08:42');

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
  `out_time` int(2) NOT NULL,
  `batch_no` int(9) DEFAULT NULL,
  `item_carring` int(5) DEFAULT NULL,
  `In_Out_Status` tinyint(1) NOT NULL,
  `Actual_Out_Time` datetime DEFAULT NULL,
  PRIMARY KEY (`pass_no`),
  KEY `fk_visit_Dep` (`department`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `visitor_pass`
--

INSERT INTO `visitor_pass` (`pass_no`, `in_date_time`, `visitor_name`, `contact_person`, `purpose`, `department`, `address`, `company_represented`, `vehicle_no`, `no_of_persons`, `remark`, `photo`, `age`, `gender`, `out_time`, `batch_no`, `item_carring`, `In_Out_Status`, `Actual_Out_Time`) VALUES
(1, '10:35:00', 'karmraj', 'krunal', 'meeting', 1, 'ahmedabad', 'test', '1234', 1, 'test1', 'IMG_7076.JPG', 23, 'Male', 11, 123, 3, 0, '2012-05-28 17:45:17'),
(2, '15:47:03', 'Ravi Thanki', 'Krunal', 'Visiting', 4, 'Satelite', 'test1', '2417', 1, 'jkj', 'rudraSoftech.png', 21, 'Male', 3, 1, 1, 0, '2012-05-28 17:46:47'),
(3, '17:54:31', 'test', 'test 1', 'kllkl', 4, 'jkkjk', 'jkj', '3417', 1, 'hjhj', 'rudraSoftech.png', 23, 'Male', 6, 1, 1, 0, '2012-05-28 17:56:36'),
(4, '18:00:36', 'kjkjk', 'jkjk', 'jkj', 2, 'jhj', 'jjh', '1', 1, 'kjkj', '', 23, 'Male', 6, 1, 1, 0, '2012-05-29 10:26:18'),
(5, '10:25:52', 'Ravi Thanki', 'Girish Sir', 'interview', 4, 'Ambavadi', 'Rudra Softech', '4911', 1, 'inteview', 'rudraSoftech.png', 23, 'Male', 1, 1, 1, 0, '2012-05-29 11:30:48'),
(6, '10:34:08', 'this is test visitor', 'karmraj', 'test', 1, 'test', '', '', 2, '', '', 23, 'Male', 14, NULL, NULL, 0, '2012-05-30 10:53:31'),
(7, '10:53:12', 'another test', 'this is test', 'tetst', 1, 'test', '', '', 22, 'e', '', 232, 'Male', 15, NULL, NULL, 0, '2012-05-31 14:38:26'),
(8, '11:43:22', 'Jaydeep', 'karmraj', 'Test', 1, 'Test', '', '', 1, '', '', 25, 'Male', 11, NULL, NULL, 0, '2012-06-02 12:32:37'),
(9, '14:32:40', 'Test User', 'Test Person', 'Test Perpose', 1, 'Test Address', '', '', 2, '', '', 23, 'Male', 2, NULL, NULL, 1, NULL);

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
