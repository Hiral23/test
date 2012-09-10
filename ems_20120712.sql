-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2012 at 11:00 AM
-- Server version: 5.5.24
-- PHP Version: 5.3.10-1ubuntu3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ems_20120712`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_term`
--

CREATE TABLE IF NOT EXISTS `academic_term` (
  `academic_term_id` int(2) NOT NULL AUTO_INCREMENT,
  `academic_term_name` varchar(30) NOT NULL,
  `academic_term_period_id` int(11) NOT NULL,
  `academic_term_organization_id` int(2) NOT NULL,
  PRIMARY KEY (`academic_term_id`),
  KEY `fk_period_id` (`academic_term_period_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `academic_term`
--

INSERT INTO `academic_term` (`academic_term_id`, `academic_term_name`, `academic_term_period_id`, `academic_term_organization_id`) VALUES
(1, 'Sem-1', 1, 1),
(2, 'Sem-2', 1, 1),
(3, 'Sem-3', 1, 1),
(4, 'Sem-4', 1, 1),
(5, 'Sem-5', 1, 1),
(6, 'Sem-6', 1, 1),
(7, 'Sem-7', 1, 1),
(8, 'Sem-8', 1, 1),
(9, 'Sem-1', 2, 1),
(10, 'Sem-2', 2, 1),
(11, 'Sem-3', 2, 1),
(12, 'Sem-4', 2, 1),
(13, 'Sem-5', 2, 1),
(14, 'Sem-6', 2, 1),
(15, 'Sem-7', 2, 1),
(16, 'Sem-8', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `academic_term_period`
--

CREATE TABLE IF NOT EXISTS `academic_term_period` (
  `academic_terms_period_id` int(2) NOT NULL AUTO_INCREMENT,
  `academic_terms_period_name` varchar(50) DEFAULT NULL,
  `academic_term_period` varchar(10) NOT NULL,
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
(1, NULL, '2011-2012', '2011-06-26', '2012-06-25', 1, 3, '2012-07-04 14:29:59'),
(2, NULL, '2012-2013', '2012-06-26', '2013-06-25', 1, 2, '2012-07-07 11:49:35');

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
  `assign_role_id` int(2) DEFAULT NULL,
  `assign_org_id` int(2) NOT NULL,
  `assign_created_by` int(9) NOT NULL,
  `assign_creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`assign_user_id`),
  KEY `fk_role` (`assign_role_id`),
  KEY `fk_org` (`assign_org_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=313 ;

--
-- Dumping data for table `assign_company_user_table`
--

INSERT INTO `assign_company_user_table` (`id`, `assign_user_id`, `assign_role_id`, `assign_org_id`, `assign_created_by`, `assign_creation_date`) VALUES
(1, 3, NULL, 1, 2, '0000-00-00 00:00:00'),
(2, 4, NULL, 1, 2, '0000-00-00 00:00:00'),
(3, 5, NULL, 1, 2, '0000-00-00 00:00:00'),
(4, 6, NULL, 1, 2, '0000-00-00 00:00:00'),
(5, 7, NULL, 1, 2, '0000-00-00 00:00:00'),
(6, 8, NULL, 1, 2, '0000-00-00 00:00:00'),
(7, 9, NULL, 1, 2, '0000-00-00 00:00:00'),
(8, 10, NULL, 1, 2, '0000-00-00 00:00:00'),
(9, 11, NULL, 1, 2, '0000-00-00 00:00:00'),
(10, 12, NULL, 1, 2, '0000-00-00 00:00:00'),
(11, 13, NULL, 1, 2, '0000-00-00 00:00:00'),
(12, 14, NULL, 1, 2, '0000-00-00 00:00:00'),
(13, 15, NULL, 1, 2, '0000-00-00 00:00:00'),
(14, 16, NULL, 1, 2, '0000-00-00 00:00:00'),
(15, 17, NULL, 1, 2, '0000-00-00 00:00:00'),
(16, 18, NULL, 1, 2, '0000-00-00 00:00:00'),
(17, 19, NULL, 1, 2, '0000-00-00 00:00:00'),
(18, 20, NULL, 1, 2, '0000-00-00 00:00:00'),
(19, 21, NULL, 1, 2, '0000-00-00 00:00:00'),
(20, 22, NULL, 1, 2, '0000-00-00 00:00:00'),
(21, 23, NULL, 1, 2, '0000-00-00 00:00:00'),
(22, 24, NULL, 1, 2, '0000-00-00 00:00:00'),
(23, 25, NULL, 1, 2, '0000-00-00 00:00:00'),
(24, 26, NULL, 1, 2, '0000-00-00 00:00:00'),
(25, 27, NULL, 1, 2, '0000-00-00 00:00:00'),
(26, 28, NULL, 1, 2, '0000-00-00 00:00:00'),
(27, 29, NULL, 1, 2, '0000-00-00 00:00:00'),
(28, 30, NULL, 1, 2, '0000-00-00 00:00:00'),
(29, 31, NULL, 1, 2, '0000-00-00 00:00:00'),
(30, 32, NULL, 1, 2, '0000-00-00 00:00:00'),
(31, 33, NULL, 1, 2, '0000-00-00 00:00:00'),
(32, 34, NULL, 1, 2, '0000-00-00 00:00:00'),
(33, 35, NULL, 1, 2, '0000-00-00 00:00:00'),
(34, 36, NULL, 1, 2, '0000-00-00 00:00:00'),
(35, 37, NULL, 1, 2, '0000-00-00 00:00:00'),
(36, 38, NULL, 1, 2, '0000-00-00 00:00:00'),
(37, 39, NULL, 1, 2, '0000-00-00 00:00:00'),
(38, 40, NULL, 1, 2, '0000-00-00 00:00:00'),
(39, 41, NULL, 1, 2, '0000-00-00 00:00:00'),
(40, 42, NULL, 1, 2, '0000-00-00 00:00:00'),
(41, 43, NULL, 1, 2, '0000-00-00 00:00:00'),
(42, 44, NULL, 1, 2, '0000-00-00 00:00:00'),
(43, 45, NULL, 1, 2, '0000-00-00 00:00:00'),
(44, 46, NULL, 1, 2, '0000-00-00 00:00:00'),
(45, 47, NULL, 1, 2, '0000-00-00 00:00:00'),
(46, 48, NULL, 1, 2, '0000-00-00 00:00:00'),
(47, 49, NULL, 1, 2, '0000-00-00 00:00:00'),
(48, 50, NULL, 1, 2, '0000-00-00 00:00:00'),
(49, 51, NULL, 1, 2, '0000-00-00 00:00:00'),
(50, 52, NULL, 1, 2, '0000-00-00 00:00:00'),
(51, 53, NULL, 1, 2, '0000-00-00 00:00:00'),
(52, 54, NULL, 1, 2, '0000-00-00 00:00:00'),
(53, 55, NULL, 1, 2, '0000-00-00 00:00:00'),
(54, 56, NULL, 1, 2, '0000-00-00 00:00:00'),
(55, 57, NULL, 1, 2, '0000-00-00 00:00:00'),
(56, 58, NULL, 1, 2, '0000-00-00 00:00:00'),
(57, 59, NULL, 1, 2, '0000-00-00 00:00:00'),
(58, 60, NULL, 1, 2, '0000-00-00 00:00:00'),
(59, 61, NULL, 1, 2, '0000-00-00 00:00:00'),
(60, 62, NULL, 1, 2, '0000-00-00 00:00:00'),
(61, 63, NULL, 1, 2, '0000-00-00 00:00:00'),
(62, 64, NULL, 1, 2, '0000-00-00 00:00:00'),
(63, 65, NULL, 1, 2, '0000-00-00 00:00:00'),
(64, 66, NULL, 1, 2, '0000-00-00 00:00:00'),
(65, 67, NULL, 1, 2, '0000-00-00 00:00:00'),
(66, 68, NULL, 1, 2, '0000-00-00 00:00:00'),
(67, 69, NULL, 1, 2, '0000-00-00 00:00:00'),
(68, 70, NULL, 1, 2, '0000-00-00 00:00:00'),
(69, 71, NULL, 1, 2, '0000-00-00 00:00:00'),
(70, 72, NULL, 1, 2, '0000-00-00 00:00:00'),
(71, 73, NULL, 1, 2, '0000-00-00 00:00:00'),
(72, 74, NULL, 1, 2, '0000-00-00 00:00:00'),
(73, 75, NULL, 1, 2, '0000-00-00 00:00:00'),
(74, 76, NULL, 1, 2, '0000-00-00 00:00:00'),
(75, 77, NULL, 1, 2, '0000-00-00 00:00:00'),
(76, 78, NULL, 1, 2, '0000-00-00 00:00:00'),
(77, 79, NULL, 1, 2, '0000-00-00 00:00:00'),
(78, 80, NULL, 1, 2, '0000-00-00 00:00:00'),
(79, 81, NULL, 1, 2, '0000-00-00 00:00:00'),
(80, 82, NULL, 1, 2, '0000-00-00 00:00:00'),
(81, 83, NULL, 1, 2, '0000-00-00 00:00:00'),
(82, 84, NULL, 1, 2, '0000-00-00 00:00:00'),
(83, 85, NULL, 1, 2, '0000-00-00 00:00:00'),
(84, 86, NULL, 1, 2, '0000-00-00 00:00:00'),
(85, 87, NULL, 1, 2, '0000-00-00 00:00:00'),
(86, 88, NULL, 1, 2, '0000-00-00 00:00:00'),
(87, 89, NULL, 1, 2, '0000-00-00 00:00:00'),
(88, 90, NULL, 1, 2, '0000-00-00 00:00:00'),
(89, 91, NULL, 1, 2, '0000-00-00 00:00:00'),
(90, 92, NULL, 1, 2, '0000-00-00 00:00:00'),
(91, 93, NULL, 1, 2, '0000-00-00 00:00:00'),
(92, 94, NULL, 1, 2, '0000-00-00 00:00:00'),
(93, 95, NULL, 1, 2, '0000-00-00 00:00:00'),
(94, 96, NULL, 1, 2, '0000-00-00 00:00:00'),
(95, 97, NULL, 1, 2, '0000-00-00 00:00:00'),
(96, 98, NULL, 1, 2, '0000-00-00 00:00:00'),
(97, 99, NULL, 1, 2, '0000-00-00 00:00:00'),
(98, 100, NULL, 1, 2, '0000-00-00 00:00:00'),
(99, 101, NULL, 1, 2, '0000-00-00 00:00:00'),
(100, 102, NULL, 1, 2, '0000-00-00 00:00:00'),
(101, 103, NULL, 1, 2, '0000-00-00 00:00:00'),
(102, 104, NULL, 1, 2, '0000-00-00 00:00:00'),
(103, 105, NULL, 1, 2, '0000-00-00 00:00:00'),
(104, 106, NULL, 1, 2, '0000-00-00 00:00:00'),
(105, 107, NULL, 1, 2, '0000-00-00 00:00:00'),
(106, 108, NULL, 1, 2, '0000-00-00 00:00:00'),
(107, 109, NULL, 1, 2, '0000-00-00 00:00:00'),
(108, 110, NULL, 1, 2, '0000-00-00 00:00:00'),
(109, 111, NULL, 1, 2, '0000-00-00 00:00:00'),
(110, 112, NULL, 1, 2, '0000-00-00 00:00:00'),
(111, 113, NULL, 1, 2, '0000-00-00 00:00:00'),
(112, 114, NULL, 1, 2, '0000-00-00 00:00:00'),
(113, 115, NULL, 1, 2, '0000-00-00 00:00:00'),
(114, 116, NULL, 1, 2, '0000-00-00 00:00:00'),
(115, 117, NULL, 1, 2, '0000-00-00 00:00:00'),
(116, 118, NULL, 1, 2, '0000-00-00 00:00:00'),
(117, 119, NULL, 1, 2, '0000-00-00 00:00:00'),
(118, 120, NULL, 1, 2, '0000-00-00 00:00:00'),
(119, 121, NULL, 1, 2, '0000-00-00 00:00:00'),
(120, 122, NULL, 1, 2, '0000-00-00 00:00:00'),
(121, 123, NULL, 1, 2, '0000-00-00 00:00:00'),
(122, 124, NULL, 1, 2, '0000-00-00 00:00:00'),
(123, 125, NULL, 1, 2, '0000-00-00 00:00:00'),
(124, 126, NULL, 1, 2, '0000-00-00 00:00:00'),
(125, 127, NULL, 1, 2, '0000-00-00 00:00:00'),
(126, 128, NULL, 1, 2, '0000-00-00 00:00:00'),
(127, 129, NULL, 1, 2, '0000-00-00 00:00:00'),
(128, 130, NULL, 1, 2, '0000-00-00 00:00:00'),
(129, 131, NULL, 1, 2, '0000-00-00 00:00:00'),
(130, 132, NULL, 1, 2, '0000-00-00 00:00:00'),
(131, 133, NULL, 1, 2, '0000-00-00 00:00:00'),
(132, 134, NULL, 1, 2, '0000-00-00 00:00:00'),
(133, 135, NULL, 1, 2, '0000-00-00 00:00:00'),
(134, 136, NULL, 1, 2, '0000-00-00 00:00:00'),
(135, 137, NULL, 1, 2, '0000-00-00 00:00:00'),
(136, 138, NULL, 1, 2, '0000-00-00 00:00:00'),
(137, 139, NULL, 1, 2, '0000-00-00 00:00:00'),
(138, 140, NULL, 1, 2, '0000-00-00 00:00:00'),
(139, 141, NULL, 1, 2, '0000-00-00 00:00:00'),
(140, 142, NULL, 1, 2, '0000-00-00 00:00:00'),
(141, 143, NULL, 1, 2, '0000-00-00 00:00:00'),
(142, 144, NULL, 1, 2, '0000-00-00 00:00:00'),
(143, 145, NULL, 1, 2, '0000-00-00 00:00:00'),
(144, 146, NULL, 1, 2, '0000-00-00 00:00:00'),
(145, 147, NULL, 1, 2, '0000-00-00 00:00:00'),
(146, 148, NULL, 1, 2, '0000-00-00 00:00:00'),
(147, 149, NULL, 1, 2, '0000-00-00 00:00:00'),
(148, 150, NULL, 1, 2, '0000-00-00 00:00:00'),
(149, 151, NULL, 1, 2, '0000-00-00 00:00:00'),
(150, 152, NULL, 1, 2, '0000-00-00 00:00:00'),
(151, 153, NULL, 1, 2, '0000-00-00 00:00:00'),
(152, 154, NULL, 1, 2, '0000-00-00 00:00:00'),
(153, 155, NULL, 1, 2, '0000-00-00 00:00:00'),
(154, 156, NULL, 1, 2, '0000-00-00 00:00:00'),
(155, 157, NULL, 1, 2, '0000-00-00 00:00:00'),
(156, 158, NULL, 1, 2, '0000-00-00 00:00:00'),
(157, 159, NULL, 1, 2, '0000-00-00 00:00:00'),
(158, 160, NULL, 1, 2, '0000-00-00 00:00:00'),
(159, 161, NULL, 1, 2, '0000-00-00 00:00:00'),
(160, 162, NULL, 1, 2, '0000-00-00 00:00:00'),
(161, 163, NULL, 1, 2, '0000-00-00 00:00:00'),
(162, 164, NULL, 1, 2, '0000-00-00 00:00:00'),
(163, 165, NULL, 1, 2, '0000-00-00 00:00:00'),
(164, 166, NULL, 1, 2, '0000-00-00 00:00:00'),
(165, 167, NULL, 1, 2, '0000-00-00 00:00:00'),
(166, 168, NULL, 1, 2, '0000-00-00 00:00:00'),
(167, 169, NULL, 1, 2, '0000-00-00 00:00:00'),
(168, 170, NULL, 1, 2, '0000-00-00 00:00:00'),
(169, 171, NULL, 1, 2, '0000-00-00 00:00:00'),
(170, 172, NULL, 1, 2, '0000-00-00 00:00:00'),
(171, 173, NULL, 1, 2, '0000-00-00 00:00:00'),
(172, 174, NULL, 1, 2, '0000-00-00 00:00:00'),
(173, 175, NULL, 1, 2, '0000-00-00 00:00:00'),
(174, 176, NULL, 1, 2, '0000-00-00 00:00:00'),
(175, 177, NULL, 1, 2, '0000-00-00 00:00:00'),
(176, 178, NULL, 1, 2, '0000-00-00 00:00:00'),
(177, 179, NULL, 1, 2, '0000-00-00 00:00:00'),
(178, 180, NULL, 1, 2, '0000-00-00 00:00:00'),
(179, 181, NULL, 1, 2, '0000-00-00 00:00:00'),
(180, 182, NULL, 1, 2, '0000-00-00 00:00:00'),
(181, 183, NULL, 1, 2, '0000-00-00 00:00:00'),
(182, 184, NULL, 1, 2, '0000-00-00 00:00:00'),
(183, 185, NULL, 1, 2, '0000-00-00 00:00:00'),
(184, 186, NULL, 1, 2, '0000-00-00 00:00:00'),
(185, 187, NULL, 1, 2, '0000-00-00 00:00:00'),
(186, 188, NULL, 1, 2, '0000-00-00 00:00:00'),
(187, 189, NULL, 1, 2, '0000-00-00 00:00:00'),
(188, 190, NULL, 1, 2, '0000-00-00 00:00:00'),
(189, 191, NULL, 1, 2, '0000-00-00 00:00:00'),
(190, 192, NULL, 1, 2, '0000-00-00 00:00:00'),
(191, 193, NULL, 1, 2, '0000-00-00 00:00:00'),
(192, 194, NULL, 1, 2, '0000-00-00 00:00:00'),
(193, 195, NULL, 1, 2, '0000-00-00 00:00:00'),
(194, 196, NULL, 1, 2, '0000-00-00 00:00:00'),
(195, 197, NULL, 1, 2, '0000-00-00 00:00:00'),
(196, 198, NULL, 1, 2, '0000-00-00 00:00:00'),
(197, 199, NULL, 1, 2, '0000-00-00 00:00:00'),
(198, 200, NULL, 1, 2, '0000-00-00 00:00:00'),
(199, 201, NULL, 1, 2, '0000-00-00 00:00:00'),
(200, 202, NULL, 1, 2, '0000-00-00 00:00:00'),
(201, 203, NULL, 1, 2, '0000-00-00 00:00:00'),
(202, 204, NULL, 1, 2, '0000-00-00 00:00:00'),
(203, 205, NULL, 1, 2, '0000-00-00 00:00:00'),
(204, 206, NULL, 1, 2, '0000-00-00 00:00:00'),
(205, 207, NULL, 1, 2, '0000-00-00 00:00:00'),
(206, 208, NULL, 1, 2, '0000-00-00 00:00:00'),
(207, 209, NULL, 1, 2, '0000-00-00 00:00:00'),
(208, 210, NULL, 1, 2, '0000-00-00 00:00:00'),
(209, 211, NULL, 1, 2, '0000-00-00 00:00:00'),
(210, 212, NULL, 1, 2, '0000-00-00 00:00:00'),
(211, 213, NULL, 1, 2, '0000-00-00 00:00:00'),
(212, 214, NULL, 1, 2, '0000-00-00 00:00:00'),
(213, 215, NULL, 1, 2, '0000-00-00 00:00:00'),
(214, 216, NULL, 1, 2, '0000-00-00 00:00:00'),
(215, 217, NULL, 1, 2, '0000-00-00 00:00:00'),
(216, 218, NULL, 1, 2, '0000-00-00 00:00:00'),
(217, 219, NULL, 1, 2, '0000-00-00 00:00:00'),
(218, 220, NULL, 1, 2, '0000-00-00 00:00:00'),
(219, 221, NULL, 1, 2, '0000-00-00 00:00:00'),
(220, 222, NULL, 1, 2, '0000-00-00 00:00:00'),
(221, 223, NULL, 1, 2, '0000-00-00 00:00:00'),
(222, 224, NULL, 1, 2, '0000-00-00 00:00:00'),
(223, 225, NULL, 1, 2, '0000-00-00 00:00:00'),
(224, 226, NULL, 1, 2, '0000-00-00 00:00:00'),
(225, 227, NULL, 1, 2, '0000-00-00 00:00:00'),
(226, 228, NULL, 1, 2, '0000-00-00 00:00:00'),
(227, 229, NULL, 1, 2, '0000-00-00 00:00:00'),
(228, 230, NULL, 1, 2, '0000-00-00 00:00:00'),
(229, 231, NULL, 1, 2, '0000-00-00 00:00:00'),
(230, 232, NULL, 1, 2, '0000-00-00 00:00:00'),
(231, 233, NULL, 1, 2, '0000-00-00 00:00:00'),
(232, 234, NULL, 1, 2, '0000-00-00 00:00:00'),
(233, 235, NULL, 1, 2, '0000-00-00 00:00:00'),
(234, 236, NULL, 1, 2, '0000-00-00 00:00:00'),
(235, 237, NULL, 1, 2, '0000-00-00 00:00:00'),
(236, 238, NULL, 1, 2, '0000-00-00 00:00:00'),
(237, 239, NULL, 1, 2, '0000-00-00 00:00:00'),
(238, 240, NULL, 1, 2, '0000-00-00 00:00:00'),
(239, 241, NULL, 1, 2, '0000-00-00 00:00:00'),
(240, 242, NULL, 1, 2, '0000-00-00 00:00:00'),
(241, 243, NULL, 1, 2, '0000-00-00 00:00:00'),
(242, 244, NULL, 1, 2, '0000-00-00 00:00:00'),
(243, 245, NULL, 1, 2, '0000-00-00 00:00:00'),
(244, 246, NULL, 1, 2, '0000-00-00 00:00:00'),
(245, 247, NULL, 1, 2, '0000-00-00 00:00:00'),
(246, 248, NULL, 1, 2, '0000-00-00 00:00:00'),
(247, 249, NULL, 1, 2, '0000-00-00 00:00:00'),
(248, 250, NULL, 1, 2, '0000-00-00 00:00:00'),
(249, 251, NULL, 1, 2, '0000-00-00 00:00:00'),
(250, 252, NULL, 1, 2, '0000-00-00 00:00:00'),
(251, 253, NULL, 1, 2, '0000-00-00 00:00:00'),
(252, 254, NULL, 1, 2, '0000-00-00 00:00:00'),
(253, 255, NULL, 1, 2, '0000-00-00 00:00:00'),
(254, 256, NULL, 1, 2, '0000-00-00 00:00:00'),
(255, 257, NULL, 1, 2, '0000-00-00 00:00:00'),
(256, 258, NULL, 1, 2, '0000-00-00 00:00:00'),
(257, 259, NULL, 1, 2, '0000-00-00 00:00:00'),
(258, 260, NULL, 1, 2, '0000-00-00 00:00:00'),
(259, 261, NULL, 1, 2, '0000-00-00 00:00:00'),
(260, 262, NULL, 1, 2, '0000-00-00 00:00:00'),
(261, 263, NULL, 1, 2, '0000-00-00 00:00:00'),
(262, 264, NULL, 1, 2, '0000-00-00 00:00:00'),
(263, 265, NULL, 1, 2, '0000-00-00 00:00:00'),
(264, 266, NULL, 1, 2, '0000-00-00 00:00:00'),
(265, 267, NULL, 1, 2, '0000-00-00 00:00:00'),
(266, 268, NULL, 1, 2, '0000-00-00 00:00:00'),
(267, 269, NULL, 1, 2, '0000-00-00 00:00:00'),
(268, 270, NULL, 1, 2, '0000-00-00 00:00:00'),
(269, 271, NULL, 1, 2, '0000-00-00 00:00:00'),
(270, 272, NULL, 1, 2, '0000-00-00 00:00:00'),
(271, 273, NULL, 1, 2, '0000-00-00 00:00:00'),
(272, 274, NULL, 1, 2, '0000-00-00 00:00:00'),
(273, 275, NULL, 1, 2, '0000-00-00 00:00:00'),
(274, 276, NULL, 1, 2, '0000-00-00 00:00:00'),
(275, 277, NULL, 1, 2, '0000-00-00 00:00:00'),
(276, 278, NULL, 1, 2, '0000-00-00 00:00:00'),
(277, 279, NULL, 1, 2, '0000-00-00 00:00:00'),
(278, 280, NULL, 1, 2, '0000-00-00 00:00:00'),
(279, 281, NULL, 1, 2, '0000-00-00 00:00:00'),
(280, 282, NULL, 1, 2, '0000-00-00 00:00:00'),
(281, 283, NULL, 1, 2, '0000-00-00 00:00:00'),
(282, 284, NULL, 1, 2, '0000-00-00 00:00:00'),
(283, 285, NULL, 1, 2, '0000-00-00 00:00:00'),
(284, 286, NULL, 1, 2, '0000-00-00 00:00:00'),
(285, 287, NULL, 1, 2, '0000-00-00 00:00:00'),
(286, 288, NULL, 1, 2, '0000-00-00 00:00:00'),
(287, 289, NULL, 1, 2, '0000-00-00 00:00:00'),
(288, 290, NULL, 1, 2, '0000-00-00 00:00:00'),
(289, 291, NULL, 1, 2, '0000-00-00 00:00:00'),
(290, 292, NULL, 1, 2, '0000-00-00 00:00:00'),
(291, 293, NULL, 1, 2, '0000-00-00 00:00:00'),
(292, 294, NULL, 1, 2, '0000-00-00 00:00:00'),
(293, 295, NULL, 1, 2, '0000-00-00 00:00:00'),
(294, 296, NULL, 1, 2, '0000-00-00 00:00:00'),
(295, 297, NULL, 1, 2, '0000-00-00 00:00:00'),
(296, 298, NULL, 1, 2, '0000-00-00 00:00:00'),
(297, 299, NULL, 1, 2, '0000-00-00 00:00:00'),
(298, 300, NULL, 1, 2, '0000-00-00 00:00:00'),
(299, 301, NULL, 1, 2, '0000-00-00 00:00:00'),
(300, 302, NULL, 1, 2, '0000-00-00 00:00:00'),
(301, 303, NULL, 1, 2, '0000-00-00 00:00:00'),
(302, 304, NULL, 1, 2, '0000-00-00 00:00:00'),
(303, 305, NULL, 1, 2, '2000-00-01 00:00:00'),
(304, 306, NULL, 1, 2, '0000-00-00 00:00:00'),
(305, 307, NULL, 1, 2, '0000-00-00 00:00:00'),
(306, 308, NULL, 1, 2, '0000-00-00 00:00:00'),
(307, 309, NULL, 1, 2, '0000-00-00 00:00:00'),
(308, 310, NULL, 1, 2, '0000-00-00 00:00:00'),
(309, 311, NULL, 1, 2, '0000-00-00 00:00:00'),
(310, 312, NULL, 1, 2, '0000-00-00 00:00:00'),
(311, 2, NULL, 1, 1, '2012-07-27 18:22:55'),
(312, 2, NULL, 2, 1, '2012-07-27 18:23:16');

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
  `assign_subject_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`assign_subject_id`),
  KEY `fk_sub_id` (`subject_id`),
  KEY `fk_emp_id` (`subject_faculty_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE IF NOT EXISTS `attendence` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `st_id` int(10) NOT NULL,
  `attendence` varchar(10) DEFAULT NULL,
  `shift_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `sem_name_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `div_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `timetable_id` int(11) DEFAULT NULL,
  `attendence_date` date NOT NULL,
  `attendence_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_a_shiftid` (`shift_id`),
  KEY `fk_a_bid` (`branch_id`),
  KEY `fk_a_atpid` (`sem_id`),
  KEY `fk_a_divid` (`div_id`),
  KEY `fk_a_btid` (`batch_id`),
  KEY `fk_a_subid` (`sub_id`),
  KEY `fk_a_stid` (`st_id`),
  KEY `sem_name_id` (`sem_name_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`id`, `st_id`, `attendence`, `shift_id`, `sem_id`, `sem_name_id`, `branch_id`, `div_id`, `sub_id`, `batch_id`, `timetable_id`, `attendence_date`, `attendence_organization_id`) VALUES
(1, 194, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(2, 195, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(3, 196, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(4, 197, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(5, 198, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(6, 199, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(7, 200, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(8, 201, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(9, 202, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(10, 203, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(11, 204, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(12, 205, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(13, 206, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(14, 207, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(15, 208, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(16, 209, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(17, 210, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(18, 211, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(19, 212, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(20, 213, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(21, 214, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(22, 215, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(23, 216, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(24, 217, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(25, 218, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(26, 219, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(27, 220, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(28, 221, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(29, 222, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(30, 223, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(31, 224, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(32, 225, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(33, 226, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(34, 227, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(35, 228, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(36, 229, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(37, 230, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(38, 231, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(39, 232, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(40, 233, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(41, 233, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(42, 234, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(43, 235, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(44, 236, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(45, 237, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(46, 238, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(47, 239, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(48, 240, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(49, 241, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(50, 242, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(51, 243, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(52, 244, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(53, 245, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(54, 246, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(55, 247, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(56, 248, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(57, 249, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(58, 250, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(59, 251, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(60, 252, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(61, 253, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1),
(62, 254, 'P', 1, 2, 11, 1, 1, 1, NULL, NULL, '2012-08-03', 1);

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
('Accountant', '258', NULL, 'N;'),
('Admin', '2', NULL, 'N;'),
('Admin', '3', NULL, 'N;'),
('Employee', '258', NULL, 'N;'),
('Employee', '259', NULL, 'N;'),
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
('AcademicTerm.Admin', 0, NULL, NULL, 'N;'),
('AcademicTerm.View', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.*', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.Admin', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.View', 0, NULL, NULL, 'N;'),
('Accountant', 2, 'Accountant', NULL, 'N;'),
('Admin', 2, 'Admin of the college', NULL, 'N;'),
('Assets.*', 0, NULL, NULL, 'N;'),
('Assets.Admin', 0, NULL, NULL, 'N;'),
('Assets.View', 0, NULL, NULL, 'N;'),
('AssetsDetails.*', 0, NULL, NULL, 'N;'),
('AssetsDetails.Admin', 0, NULL, NULL, 'N;'),
('AssetsDetails.View', 0, NULL, NULL, 'N;'),
('AssignCompanyUserTable.*', 0, NULL, NULL, 'N;'),
('AssignSubject.*', 0, NULL, NULL, 'N;'),
('Attendence.Admin', 0, NULL, NULL, 'N;'),
('Attendence.View', 0, NULL, NULL, 'N;'),
('Authenticated', 2, NULL, NULL, 'N;'),
('BankMaster.*', 0, NULL, NULL, 'N;'),
('BankMaster.Admin', 0, NULL, NULL, 'N;'),
('BankMaster.View', 0, NULL, NULL, 'N;'),
('Batch.*', 0, NULL, NULL, 'N;'),
('Batch.Admin', 0, NULL, NULL, 'N;'),
('Batch.View', 0, NULL, NULL, 'N;'),
('BlockUserTable.*', 0, NULL, NULL, 'N;'),
('Branch.*', 0, NULL, NULL, 'N;'),
('Branch.Admin', 0, NULL, NULL, 'N;'),
('Branch.View', 0, NULL, NULL, 'N;'),
('Category.*', 0, NULL, NULL, 'N;'),
('Category.Admin', 0, NULL, NULL, 'N;'),
('Category.View', 0, NULL, NULL, 'N;'),
('City.*', 0, NULL, NULL, 'N;'),
('City.Admin', 0, NULL, NULL, 'N;'),
('City.View', 0, NULL, NULL, 'N;'),
('Country.*', 0, NULL, NULL, 'N;'),
('Country.Admin', 0, NULL, NULL, 'N;'),
('Country.View', 0, NULL, NULL, 'N;'),
('Department.*', 0, NULL, NULL, 'N;'),
('Department.Admin', 0, NULL, NULL, 'N;'),
('Department.View', 0, NULL, NULL, 'N;'),
('Division.*', 0, NULL, NULL, 'N;'),
('Division.Admin', 0, NULL, NULL, 'N;'),
('Division.View', 0, NULL, NULL, 'N;'),
('Eduboard.Admin', 0, NULL, NULL, 'N;'),
('Eduboard.View', 0, NULL, NULL, 'N;'),
('Employee', 2, 'Employee of the college', NULL, 'N;'),
('EmployeeDesignation.*', 0, NULL, NULL, 'N;'),
('EmployeeDesignation.Admin', 0, NULL, NULL, 'N;'),
('EmployeeDesignation.View', 0, NULL, NULL, 'N;'),
('EmployeeDocs.*', 0, NULL, NULL, 'N;'),
('EmployeeDocsTrans.*', 0, NULL, NULL, 'N;'),
('EmployeeExperienceTrans.*', 0, NULL, NULL, 'N;'),
('EmployeeSmsEmailDetails.Admin', 0, NULL, NULL, 'N;'),
('EmployeeSmsEmailDetails.View', 0, NULL, NULL, 'N;'),
('EmployeeTimetable.Admin', 0, NULL, NULL, 'N;'),
('EmployeeTransaction.*', 0, NULL, NULL, 'N;'),
('EmployeeTransaction.Admin', 0, NULL, NULL, 'N;'),
('EmployeeTransaction.Final_view', 0, 'EmployeeTransaction.Final_view', NULL, 'N;'),
('Employee_attendence.Admin', 0, NULL, NULL, 'N;'),
('Employee_attendence.View', 0, NULL, NULL, 'N;'),
('FeedbackDetails.*', 0, NULL, NULL, 'N;'),
('FeedbackDetails.Admin', 0, NULL, NULL, 'N;'),
('FeedbackDetails.View', 0, NULL, NULL, 'N;'),
('FeedbackMaster.*', 0, NULL, NULL, 'N;'),
('FeedbackMaster.Admin', 0, NULL, NULL, 'N;'),
('FeedbackMaster.View', 0, NULL, NULL, 'N;'),
('FeesDetailsTable.*', 0, NULL, NULL, 'N;'),
('FeesDetailsTable.Admin', 0, NULL, NULL, 'N;'),
('FeesDetailsTable.View', 0, NULL, NULL, 'N;'),
('FeesMaster.*', 0, NULL, NULL, 'N;'),
('FeesMaster.Admin', 0, NULL, NULL, 'N;'),
('FeesMaster.Create', 0, NULL, NULL, 'N;'),
('FeesMaster.View', 0, NULL, NULL, 'N;'),
('FeesMasterTransaction.*', 0, NULL, NULL, 'N;'),
('FeesMasterTransaction.Admin', 0, NULL, NULL, 'N;'),
('FeesMasterTransaction.View', 0, NULL, NULL, 'N;'),
('FeesPaymentCash.*', 0, NULL, NULL, 'N;'),
('FeesPaymentCheque.*', 0, NULL, NULL, 'N;'),
('FeesPaymentMethod.*', 0, NULL, NULL, 'N;'),
('FeesPaymentMethod.Admin', 0, NULL, NULL, 'N;'),
('FeesPaymentMethod.View', 0, NULL, NULL, 'N;'),
('FeesPaymentTransaction.*', 0, NULL, NULL, 'N;'),
('FeesPaymentTransaction.Admin', 0, NULL, NULL, 'N;'),
('FeesPaymentTransaction.Paid', 0, NULL, NULL, 'N;'),
('FeesPaymentTransaction.Total', 0, NULL, NULL, 'N;'),
('FeesPaymentTransaction.UnPaid', 0, NULL, NULL, 'N;'),
('FeesPaymentTransaction.View', 0, NULL, NULL, 'N;'),
('FeesPaymentType.*', 0, NULL, NULL, 'N;'),
('FeesPaymentType.Admin', 0, NULL, NULL, 'N;'),
('FeesPaymentType.View', 0, NULL, NULL, 'N;'),
('FeesReceipt.*', 0, NULL, NULL, 'N;'),
('FeesReceipt.Admin', 0, NULL, NULL, 'N;'),
('FeesReceipt.View', 0, NULL, NULL, 'N;'),
('FeesTermsAndCondition.*', 0, NULL, NULL, 'N;'),
('FeesTermsAndCondition.Admin', 0, NULL, NULL, 'N;'),
('FeesTermsAndCondition.View', 0, NULL, NULL, 'N;'),
('Givefeedback.Admin', 0, NULL, NULL, 'N;'),
('Givefeedback.View', 0, NULL, NULL, 'N;'),
('Gtunotice.*', 0, NULL, NULL, 'N;'),
('Gtunotice.Admin', 0, NULL, NULL, 'N;'),
('Gtunotice.View', 0, NULL, NULL, 'N;'),
('Guest', 2, NULL, NULL, 'N;'),
('Holidays.*', 0, NULL, NULL, 'N;'),
('Holidays.Admin', 0, NULL, NULL, 'N;'),
('Holidays.View', 0, NULL, NULL, 'N;'),
('ImportantNotice.*', 0, NULL, NULL, 'N;'),
('ImportantNotice.Admin', 0, NULL, NULL, 'N;'),
('ImportantNotice.View', 0, NULL, NULL, 'N;'),
('Inward.*', 0, NULL, NULL, 'N;'),
('Inward.Admin', 0, NULL, NULL, 'N;'),
('Inward.View', 0, NULL, NULL, 'N;'),
('InwardDetails.*', 0, NULL, NULL, 'N;'),
('ItemCategory.*', 0, NULL, NULL, 'N;'),
('ItemCategory.Admin', 0, NULL, NULL, 'N;'),
('ItemCategory.View', 0, NULL, NULL, 'N;'),
('Languages.*', 0, NULL, NULL, 'N;'),
('Languages.Admin', 0, NULL, NULL, 'N;'),
('Languages.View', 0, NULL, NULL, 'N;'),
('LanguagesKnown.*', 0, NULL, NULL, 'N;'),
('LoginUser.Admin', 0, NULL, NULL, 'N;'),
('LoginUser.View', 0, NULL, NULL, 'N;'),
('MessageOfDay.*', 0, NULL, NULL, 'N;'),
('MessageOfDay.Admin', 0, NULL, NULL, 'N;'),
('MessageOfDay.View', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesMaster.*', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesMaster.Admin', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesMaster.View', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentCash.*', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentCash.Admin', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentCash.View', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentCheque.*', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentCheque.Admin', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentCheque.View', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentTransaction.*', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentTransactionC.Admin', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentTransactionC.Madmin', 0, NULL, NULL, 'N;'),
('MiscellaneousFeesPaymentTransactionC.View', 0, NULL, NULL, 'N;'),
('Nationality.*', 0, NULL, NULL, 'N;'),
('Nationality.Admin', 0, NULL, NULL, 'N;'),
('Nationality.View', 0, NULL, NULL, 'N;'),
('Organization.*', 0, NULL, NULL, 'N;'),
('Outward.*', 0, NULL, NULL, 'N;'),
('Outward.Admin', 0, NULL, NULL, 'N;'),
('Outward.View', 0, NULL, NULL, 'N;'),
('OutwardDetails.*', 0, NULL, NULL, 'N;'),
('OutwardDetails.Admin', 0, NULL, NULL, 'N;'),
('OutwardDetails.View', 0, NULL, NULL, 'N;'),
('Qualification.*', 0, NULL, NULL, 'N;'),
('Qualification.Admin', 0, NULL, NULL, 'N;'),
('Qualification.View', 0, NULL, NULL, 'N;'),
('Quota.*', 0, NULL, NULL, 'N;'),
('Quota.Admin', 0, NULL, NULL, 'N;'),
('Quota.View', 0, NULL, NULL, 'N;'),
('Religion.*', 0, NULL, NULL, 'N;'),
('Religion.Admin', 0, NULL, NULL, 'N;'),
('Religion.View', 0, NULL, NULL, 'N;'),
('RoomCategory.Admin', 0, NULL, NULL, 'N;'),
('RoomCategory.View', 0, NULL, NULL, 'N;'),
('RoomDetailsMaster.Admin', 0, NULL, NULL, 'N;'),
('RoomDetailsMaster.View', 0, NULL, NULL, 'N;'),
('Shift.*', 0, NULL, NULL, 'N;'),
('Shift.Admin', 0, NULL, NULL, 'N;'),
('Shift.View', 0, NULL, NULL, 'N;'),
('Site.*', 0, NULL, NULL, 'N;'),
('State.*', 0, NULL, NULL, 'N;'),
('State.Admin', 0, NULL, NULL, 'N;'),
('State.View', 0, NULL, NULL, 'N;'),
('Student', 2, 'Student of the college', NULL, 'N;'),
('StudentDocs.*', 0, NULL, NULL, 'N;'),
('StudentDocsTrans.*', 0, NULL, NULL, 'N;'),
('StudentSmsEmailDetails.Admin', 0, NULL, NULL, 'N;'),
('StudentSmsEmailDetails.View', 0, NULL, NULL, 'N;'),
('StudentTransaction.*', 0, NULL, NULL, 'N;'),
('StudentTransaction.Admin', 0, NULL, NULL, 'N;'),
('StudentTransaction.Final_view', 0, 'StudentTransaction.Final_view', NULL, 'N;'),
('StudentTransaction.View', 0, NULL, NULL, 'N;'),
('SubjectExaminationMark.Admin', 0, NULL, NULL, 'N;'),
('SubjectExaminationMark.View', 0, NULL, NULL, 'N;'),
('SubjectGuidelines.Admin', 0, NULL, NULL, 'N;'),
('SubjectGuidelines.View', 0, NULL, NULL, 'N;'),
('SubjectMaster.*', 0, NULL, NULL, 'N;'),
('SubjectMaster.Admin', 0, NULL, NULL, 'N;'),
('SubjectMaster.View', 0, NULL, NULL, 'N;'),
('SubjectRefbook.Admin', 0, NULL, NULL, 'N;'),
('SubjectRefbook.View', 0, NULL, NULL, 'N;'),
('SubjectSyllabus.Admin', 0, NULL, NULL, 'N;'),
('SubjectSyllabus.View', 0, NULL, NULL, 'N;'),
('SubjectTeachingSchema.Admin', 0, NULL, NULL, 'N;'),
('SubjectTeachingSchema.View', 0, NULL, NULL, 'N;'),
('SubjectTextbook.Admin', 0, NULL, NULL, 'N;'),
('SubjectTextbook.View', 0, NULL, NULL, 'N;'),
('SubjectType.*', 0, NULL, NULL, 'N;'),
('SubjectType.Admin', 0, NULL, NULL, 'N;'),
('SubjectType.View', 0, NULL, NULL, 'N;'),
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
('Employee', 'AcademicTerm.Admin'),
('Employee', 'AcademicTerm.View'),
('Admin', 'AcademicTermPeriod.*'),
('Employee', 'AcademicTermPeriod.Admin'),
('Employee', 'AcademicTermPeriod.View'),
('Admin', 'Assets.*'),
('Employee', 'Assets.Admin'),
('Employee', 'Assets.View'),
('Admin', 'AssetsDetails.*'),
('Employee', 'AssetsDetails.Admin'),
('Employee', 'AssetsDetails.View'),
('Admin', 'AssignCompanyUserTable.*'),
('Admin', 'AssignSubject.*'),
('Employee', 'Attendence.Admin'),
('Employee', 'Attendence.View'),
('Admin', 'BankMaster.*'),
('Employee', 'BankMaster.Admin'),
('Employee', 'BankMaster.View'),
('Admin', 'Batch.*'),
('Employee', 'Batch.Admin'),
('Employee', 'Batch.View'),
('Admin', 'BlockUserTable.*'),
('Admin', 'Branch.*'),
('Employee', 'Branch.Admin'),
('Employee', 'Branch.View'),
('Admin', 'Category.*'),
('Employee', 'Category.Admin'),
('Employee', 'Category.View'),
('Admin', 'City.*'),
('Employee', 'City.Admin'),
('Employee', 'City.View'),
('Admin', 'Country.*'),
('Employee', 'Country.Admin'),
('Employee', 'Country.View'),
('Admin', 'Department.*'),
('Employee', 'Department.Admin'),
('Employee', 'Department.View'),
('Admin', 'Division.*'),
('Employee', 'Division.Admin'),
('Employee', 'Division.View'),
('Employee', 'Eduboard.Admin'),
('Employee', 'Eduboard.View'),
('Admin', 'EmployeeDesignation.*'),
('Employee', 'EmployeeDesignation.Admin'),
('Employee', 'EmployeeDesignation.View'),
('Admin', 'EmployeeDocs.*'),
('Admin', 'EmployeeDocsTrans.*'),
('Admin', 'EmployeeExperienceTrans.*'),
('Employee', 'EmployeeSmsEmailDetails.Admin'),
('Employee', 'EmployeeSmsEmailDetails.View'),
('Employee', 'EmployeeTimetable.Admin'),
('Admin', 'EmployeeTransaction.*'),
('Employee', 'EmployeeTransaction.Admin'),
('Employee', 'EmployeeTransaction.Final_view'),
('Employee', 'Employee_attendence.Admin'),
('Employee', 'Employee_attendence.View'),
('Admin', 'FeedbackDetails.*'),
('Employee', 'FeedbackDetails.Admin'),
('Employee', 'FeedbackDetails.View'),
('Admin', 'FeedbackMaster.*'),
('Employee', 'FeedbackMaster.Admin'),
('Employee', 'FeedbackMaster.View'),
('Admin', 'FeesDetailsTable.*'),
('Employee', 'FeesDetailsTable.View'),
('Admin', 'FeesMaster.*'),
('Employee', 'FeesMaster.Admin'),
('Accountant', 'FeesMaster.Create'),
('Employee', 'FeesMaster.View'),
('Admin', 'FeesMasterTransaction.*'),
('Employee', 'FeesMasterTransaction.Admin'),
('Employee', 'FeesMasterTransaction.View'),
('Admin', 'FeesPaymentCash.*'),
('Admin', 'FeesPaymentCheque.*'),
('Admin', 'FeesPaymentMethod.*'),
('Employee', 'FeesPaymentMethod.Admin'),
('Employee', 'FeesPaymentMethod.View'),
('Admin', 'FeesPaymentTransaction.*'),
('Employee', 'FeesPaymentTransaction.Admin'),
('Admin', 'FeesPaymentType.*'),
('Employee', 'FeesPaymentType.Admin'),
('Employee', 'FeesPaymentType.View'),
('Admin', 'FeesReceipt.*'),
('Employee', 'FeesReceipt.Admin'),
('Employee', 'FeesReceipt.View'),
('Admin', 'FeesTermsAndCondition.*'),
('Employee', 'FeesTermsAndCondition.Admin'),
('Employee', 'FeesTermsAndCondition.View'),
('Employee', 'Givefeedback.Admin'),
('Employee', 'Givefeedback.View'),
('Admin', 'Gtunotice.*'),
('Employee', 'Gtunotice.Admin'),
('Employee', 'Gtunotice.View'),
('Admin', 'Holidays.*'),
('Employee', 'Holidays.Admin'),
('Employee', 'Holidays.View'),
('Admin', 'ImportantNotice.*'),
('Employee', 'ImportantNotice.Admin'),
('Employee', 'ImportantNotice.View'),
('Admin', 'Inward.*'),
('Employee', 'Inward.Admin'),
('Employee', 'Inward.View'),
('Admin', 'InwardDetails.*'),
('Admin', 'ItemCategory.*'),
('Employee', 'ItemCategory.Admin'),
('Employee', 'ItemCategory.View'),
('Admin', 'Languages.*'),
('Employee', 'Languages.Admin'),
('Employee', 'Languages.View'),
('Admin', 'LanguagesKnown.*'),
('Employee', 'LoginUser.Admin'),
('Admin', 'MessageOfDay.*'),
('Employee', 'MessageOfDay.Admin'),
('Employee', 'MessageOfDay.View'),
('Admin', 'MiscellaneousFeesMaster.*'),
('Employee', 'MiscellaneousFeesMaster.Admin'),
('Employee', 'MiscellaneousFeesMaster.View'),
('Admin', 'MiscellaneousFeesPaymentCash.*'),
('Employee', 'MiscellaneousFeesPaymentCash.Admin'),
('Employee', 'MiscellaneousFeesPaymentCash.View'),
('Admin', 'MiscellaneousFeesPaymentCheque.*'),
('Employee', 'MiscellaneousFeesPaymentCheque.Admin'),
('Employee', 'MiscellaneousFeesPaymentCheque.View'),
('Admin', 'MiscellaneousFeesPaymentTransaction.*'),
('Admin', 'Nationality.*'),
('Employee', 'Nationality.Admin'),
('Employee', 'Nationality.View'),
('Admin', 'Outward.*'),
('Employee', 'Outward.Admin'),
('Employee', 'Outward.View'),
('Admin', 'OutwardDetails.*'),
('Employee', 'OutwardDetails.Admin'),
('Employee', 'OutwardDetails.View'),
('Admin', 'Qualification.*'),
('Employee', 'Qualification.Admin'),
('Employee', 'Qualification.View'),
('Admin', 'Quota.*'),
('Employee', 'Quota.Admin'),
('Employee', 'Quota.View'),
('Admin', 'Religion.*'),
('Employee', 'Religion.Admin'),
('Employee', 'Religion.View'),
('Employee', 'RoomCategory.Admin'),
('Employee', 'RoomCategory.View'),
('Employee', 'RoomDetailsMaster.Admin'),
('Employee', 'RoomDetailsMaster.View'),
('Admin', 'Shift.*'),
('Employee', 'Shift.Admin'),
('Employee', 'Shift.View'),
('Admin', 'Site.*'),
('Admin', 'State.*'),
('Employee', 'State.Admin'),
('Employee', 'State.View'),
('Admin', 'StudentDocs.*'),
('Admin', 'StudentDocsTrans.*'),
('Employee', 'StudentSmsEmailDetails.Admin'),
('Employee', 'StudentSmsEmailDetails.View'),
('Admin', 'StudentTransaction.*'),
('Employee', 'StudentTransaction.Admin'),
('Employee', 'StudentTransaction.Final_view'),
('Employee', 'StudentTransaction.View'),
('Employee', 'SubjectExaminationMark.Admin'),
('Employee', 'SubjectExaminationMark.View'),
('Employee', 'SubjectGuidelines.Admin'),
('Employee', 'SubjectGuidelines.View'),
('Admin', 'SubjectMaster.*'),
('Employee', 'SubjectMaster.Admin'),
('Employee', 'SubjectMaster.View'),
('Employee', 'SubjectRefbook.Admin'),
('Employee', 'SubjectRefbook.View'),
('Employee', 'SubjectSyllabus.Admin'),
('Employee', 'SubjectSyllabus.View'),
('Employee', 'SubjectTeachingSchema.Admin'),
('Employee', 'SubjectTeachingSchema.View'),
('Employee', 'SubjectTextbook.Admin'),
('Employee', 'SubjectTextbook.View'),
('Admin', 'SubjectType.*'),
('Employee', 'SubjectType.Admin'),
('Employee', 'SubjectType.View'),
('Admin', 'User.*'),
('Admin', 'VisitorPass.*'),
('Admin', 'Year.*');

-- --------------------------------------------------------

--
-- Table structure for table `background_table`
--

CREATE TABLE IF NOT EXISTS `background_table` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `value_id` int(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE IF NOT EXISTS `bank_master` (
  `bank_id` int(3) NOT NULL AUTO_INCREMENT,
  `bank_full_name` varchar(100) NOT NULL,
  `bank_short_name` varchar(15) NOT NULL,
  `bank_organization_id` int(2) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`bank_id`, `bank_full_name`, `bank_short_name`, `bank_organization_id`) VALUES
(1, 'STATE BANK OF INDIA', 'SBI', 1),
(2, 'BANK OF BARODA', 'BOI', 1),
(3, 'Axis', 'Axis', 1);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `batch_id` int(2) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(60) NOT NULL,
  `batch_code` varchar(100) NOT NULL,
  `batch_organization_id` int(2) NOT NULL,
  `batch_created_by` int(3) NOT NULL,
  `batch_creation_date` datetime NOT NULL,
  `branch_id` int(3) NOT NULL,
  `div_id` int(3) NOT NULL,
  `subject_id` int(5) NOT NULL,
  `academic_period_id` int(3) NOT NULL,
  `academic_name_id` int(3) NOT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `fk_branch_id` (`branch_id`),
  KEY `fk_div_id` (`div_id`),
  KEY `fk_period_id` (`academic_period_id`),
  KEY `fk_acdm_name_id` (`academic_name_id`),
  KEY `fk_sub_id` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_id`, `batch_name`, `batch_code`, `batch_organization_id`, `batch_created_by`, `batch_creation_date`, `branch_id`, `div_id`, `subject_id`, `academic_period_id`, `academic_name_id`) VALUES
(1, 'A', 'A-CE-sem-1-Div-A', 1, 2, '2012-07-05 13:06:50', 1, 1, 1, 1, 1),
(2, 'B', 'B-EE-sem-1-Div-C', 1, 2, '2012-07-12 11:52:06', 3, 3, 5, 1, 1);

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
  `branch_alias` varchar(20) NOT NULL,
  `branch_code` int(5) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_organization_id`, `branch_created_by`, `branch_creation_date`, `branch_alias`, `branch_code`) VALUES
(1, 'Civil Engineering', 1, 2, '2012-05-15', 'CL', 6),
(2, 'Mechanical Engineering', 1, 2, '2012-05-15', 'ME', 19),
(3, 'Electrical Engineering', 1, 2, '2012-05-15', 'EE', 9),
(4, 'Computer Engineering', 1, 2, '2012-05-15', 'CE', 7),
(7, 'Electronics & Communication Engineering', 1, 2, '2012-05-15', 'EC', 11),
(8, 'Science & Humanities', 1, 2, '2012-05-15', 'SH', 0),
(9, 'HR Section', 1, 2, '2012-05-17', 'HR', 0),
(10, 'Stores Section', 1, 2, '2012-07-02', 'Store', 0),
(11, 'Accounts Section', 1, 2, '2012-07-25', 'ACC', 0),
(12, 'Students Section', 1, 2, '2012-07-25', 'STS', 0),
(13, 'NA', 1, 2, '2012-07-25', 'NA', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_organization_id`, `category_created_by`, `category_created_date`) VALUES
(1, 'Open', 1, 2, '2012-05-15 18:30:39'),
(2, 'S.E.B.C./O.B.C.', 1, 2, '2012-05-15 18:30:58'),
(3, 'S.C.', 1, 2, '2012-05-15 18:31:17'),
(4, 'S.T.', 1, 2, '2012-05-15 18:31:34'),
(5, 'P.H.', 1, 2, '2012-05-15 18:31:50'),
(6, 'Ex. Serviceman', 1, 2, '2012-05-15 18:32:11'),
(7, 'NA', 1, 2, '2012-07-25 00:00:00');

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
(3, 'Ahmedabad', 106, 10),
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
(168, 'NONE', 106, 10);

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
(6, 'Science & Humanities Department', 1, 2, '2012-05-15 18:34:14'),
(7, 'Admin Department', 1, 2, '2012-05-15 19:01:58'),
(8, 'NA', 1, 2, '2012-07-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE IF NOT EXISTS `division` (
  `division_id` int(2) NOT NULL AUTO_INCREMENT,
  `division_name` varchar(60) NOT NULL,
  `division_code` varchar(100) NOT NULL,
  `division_organization_id` int(2) NOT NULL,
  `division_created_by` int(3) NOT NULL,
  `division_creation_date` datetime NOT NULL,
  `branch_id` int(3) NOT NULL,
  `academic_period_id` int(3) NOT NULL,
  `academic_name_id` int(3) NOT NULL,
  PRIMARY KEY (`division_id`),
  KEY `fk_branch_id` (`branch_id`),
  KEY `fk_academic_period_id` (`academic_period_id`),
  KEY `fk_academic_name_id` (`academic_name_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`division_id`, `division_name`, `division_code`, `division_organization_id`, `division_created_by`, `division_creation_date`, `branch_id`, `academic_period_id`, `academic_name_id`) VALUES
(1, 'Div-A', 'Div-A-CL-Sem-1', 1, 2, '2012-07-04 14:30:49', 1, 1, 1),
(2, 'Div-B', 'Div-B-ME-Sem-1', 1, 2, '2012-07-04 14:31:00', 2, 1, 1),
(3, 'Div-C', 'Div-C-EE-Sem-1', 1, 2, '2012-07-04 14:31:14', 3, 1, 1),
(4, 'Div-D', 'Div-D-CE-Sem-1', 1, 2, '2012-07-04 14:31:26', 4, 1, 1),
(5, 'Div-E', 'Div-E-EC-Sem-1', 1, 2, '2012-07-04 14:31:40', 7, 1, 1);

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
  `for_whom` int(2) NOT NULL,
  PRIMARY KEY (`eduboard_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eduboard`
--

INSERT INTO `eduboard` (`eduboard_id`, `eduboard_name`, `eduboard_organization_id`, `eduboard_created_by`, `eduboard_created_date`, `for_whom`) VALUES
(1, 'G.S.E.B', 1, 2, '2012-06-06 00:53:44', 1),
(2, 'H.S.E.B', 1, 2, '2012-06-06 00:54:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_academic_record_trans`
--

CREATE TABLE IF NOT EXISTS `employee_academic_record_trans` (
  `employee_academic_record_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_academic_record_trans_user_id` int(5) NOT NULL,
  `employee_academic_record_trans_qualification_id` int(5) NOT NULL,
  `employee_academic_record_trans_eduboard_id` int(5) NOT NULL,
  `employee_academic_record_trans_year_id` int(5) NOT NULL,
  `theory_mark_obtained` int(3) NOT NULL,
  `theory_mark_max` int(3) NOT NULL,
  `theory_percentage` float NOT NULL,
  `practical_mark_obtained` int(3) NOT NULL,
  `practical_mark_max` int(3) NOT NULL,
  `practical_percentage` float NOT NULL,
  `employee_academic_record_trans_oraganization_id` int(3) NOT NULL,
  PRIMARY KEY (`employee_academic_record_trans_id`),
  KEY `fk_emp_qualification` (`employee_academic_record_trans_qualification_id`),
  KEY `fk_emp_eduboard` (`employee_academic_record_trans_eduboard_id`),
  KEY `fk_emp_year` (`employee_academic_record_trans_year_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_address`
--

CREATE TABLE IF NOT EXISTS `employee_address` (
  `employee_address_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_address_c_line1` varchar(100) NOT NULL,
  `employee_address_c_line2` varchar(100) NOT NULL,
  `employee_address_c_city` int(9) NOT NULL,
  `employee_address_c_pincode` int(6) NOT NULL,
  `employee_address_c_state` int(9) NOT NULL,
  `employee_address_c_country` int(9) NOT NULL,
  `employee_address_p_line1` varchar(100) NOT NULL,
  `employee_address_p_line2` varchar(100) NOT NULL,
  `employee_address_p_city` int(9) NOT NULL,
  `employee_address_p_pincode` int(6) NOT NULL,
  `employee_address_p_state` int(9) NOT NULL,
  `employee_address_p_country` int(9) NOT NULL,
  `employee_address_phone` bigint(15) DEFAULT NULL,
  `employee_address_mobile` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`employee_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `employee_address`
--

INSERT INTO `employee_address` (`employee_address_id`, `employee_address_c_line1`, `employee_address_c_line2`, `employee_address_c_city`, `employee_address_c_pincode`, `employee_address_c_state`, `employee_address_c_country`, `employee_address_p_line1`, `employee_address_p_line2`, `employee_address_p_city`, `employee_address_p_pincode`, `employee_address_p_state`, `employee_address_p_country`, `employee_address_phone`, `employee_address_mobile`) VALUES
(1, 'PLOT NO: 1484/2,GHANDHINAGAR', 'SECTOR -3D', 168, 382006, 10, 106, 'PLOT NO: 1484/2,GHANDHINAGAR', 'SECTOR -3D', 168, 0, 10, 106, 7922246577, 0),
(2, 'OPP.PRIMARY SCHOOL', 'TA- VISNAGAR, DIST : MEHSANA', 168, 384323, 10, 106, 'OPP.PRIMARY SCHOOL', 'TA- VISNAGAR, DIST : MEHSANA', 168, 0, 10, 106, 0, 0),
(3, '6/31 PARIMAL APP.', 'SEC.7/B, NR. RANCHODRAY TEMPLE', 8, 382007, 10, 106, '6/31 PARIMAL APP.', 'SEC.7/B, NR. RANCHODRAY TEMPLE', 8, 0, 10, 106, 0, 0),
(4, 'TA: VADNAGAR', 'DIST: MEHSANA', 8, 384355, 10, 106, 'TA: VADNAGAR', 'DIST: MEHSANA', 8, 0, 10, 106, 0, 0),
(5, 'MOTISARA, DR. AMBEDKAR CHOWK', 'PATAN', 135, 384265, 10, 106, 'MOTISARA, DR. AMBEDKAR CHOWK', 'PATAN', 135, 0, 10, 106, 0, 0),
(6, '"SNEH-KUNJ" BHADRA', 'B/H DUTT MANDIR', 135, 384265, 10, 106, '"SNEH-KUNJ" BHADRA', 'B/H DUTT MANDIR', 135, 0, 10, 106, 0, 0),
(7, 'OPP.DEASI STREET,', 'RUDRA MAHALAY ROAD', 151, 384151, 10, 106, 'OPP.DEASI STREET,', 'RUDRA MAHALAY ROAD', 151, 0, 10, 106, 0, 0),
(8, '33, NALANDA SOCIETY,', 'GOBRI ROAD', 130, 385001, 10, 106, '33, NALANDA SOCIETY,', 'GOBRI ROAD', 130, 0, 10, 106, 0, 0),
(9, '4,MAHENDRANAGAR SOCIETY - I', 'B/H RAJKAMAL PETROL PUMP', 130, 384002, 10, 106, '4,MAHENDRANAGAR SOCIETY - I', 'B/H RAJKAMAL PETROL PUMP', 130, 0, 10, 106, 0, 0),
(10, '14,BALAJI PARAK SOCIETY,', 'B/H G.E.B. SUB STATION', 135, 384265, 10, 106, '14,BALAJI PARAK SOCIETY,', 'B/H G.E.B. SUB STATION', 135, 0, 10, 106, 0, 0),
(11, '2,SHAKTIKUNJ SOCIETY,', 'NR. SAMJUBA HOSPITAL', 135, 380024, 10, 106, '2,SHAKTIKUNJ SOCIETY,', 'NR. SAMJUBA HOSPITAL', 135, 0, 10, 106, 0, 0),
(12, '12/13 HARIOM BUNGLOWS,', 'B/H DHARAM CINEMA', 135, 384002, 10, 106, '12/13 HARIOM BUNGLOWS,', 'B/H DHARAM CINEMA', 135, 0, 10, 106, 0, 0),
(13, '40,PATELNAGAR SOCIETY II', 'OPP.SAMVED RESIDENCY,', 135, 384002, 10, 106, '40,PATELNAGAR SOCIETY II', 'OPP.SAMVED RESIDENCY,', 135, 0, 10, 106, 0, 0),
(14, 'NEELKAMAL APPARTMENT', 'H.L.COLLEGE', 135, 380003, 10, 106, 'NEELKAMAL APPARTMENT', 'H.L.COLLEGE', 135, 0, 10, 106, 0, 0),
(15, 'NEAR GANPATI TAMPLE', 'AITHOR', 135, 384175, 10, 106, 'NEAR GANPATI TAMPLE', 'AITHOR', 135, 0, 10, 106, 0, 0),
(16, '13/ HAREKRISHANA', 'RADHANPUR', 139, 385340, 10, 106, '13/ HAREKRISHANA', 'RADHANPUR', 139, 0, 10, 106, 0, 0),
(17, '45/SIDDHHEMNAGAR SOCIETY', 'OPP. R.M.PETROL PUMP', 135, 384265, 10, 106, '45/SIDDHHEMNAGAR SOCIETY', 'OPP. R.M.PETROL PUMP', 135, 0, 10, 106, 0, 0),
(18, '129, CHANKYAPURI SOCIETY', 'SUKHBAGH ROAD', 130, 385001, 10, 106, '129, CHANKYAPURI SOCIETY', 'SUKHBAGH ROAD', 130, 0, 10, 106, 0, 0),
(19, 'MOTANO VAS', 'HINGLACHACHAR', 135, 384265, 10, 106, 'MOTANO VAS', 'HINGLACHACHAR', 135, 0, 10, 106, 0, 0),
(20, '19,ANKIT SOCIETY', 'B/H NEESARG HONDA SHOWROOM', 130, 385001, 10, 106, '19,ANKIT SOCIETY', 'B/H NEESARG HONDA SHOWROOM', 130, 0, 10, 106, 0, 0),
(21, 'KAMNIYAPARU,', 'NEAR GYMKHANA', 165, 384170, 10, 106, 'KAMNIYAPARU,', 'NEAR GYMKHANA', 165, 0, 10, 106, 2767, 0),
(22, 'BAHUCHAR NAGAR SOCIETY', 'DETHALI ROAD', 151, 384151, 10, 106, 'BAHUCHAR NAGAR SOCIETY', 'DETHALI ROAD', 151, 0, 10, 106, 0, 0),
(23, '133, TIRUPATI TOWNSHIP', 'PATAN', 135, 384265, 10, 106, '133, TIRUPATI TOWNSHIP', 'PATAN', 135, 0, 10, 106, 0, 0),
(24, 'BRAMNIYAPOLE,', 'DERIYAWADO', 151, 384151, 10, 106, 'BRAMNIYAPOLE,', 'DERIYAWADO', 151, 0, 10, 106, 0, 0),
(25, 'BAHUCHAR BAXIPANCH AASHRAM SALA', 'SHEDRANA', 151, 384151, 10, 106, 'BAHUCHAR BAXIPANCH AASHRAM SALA', 'SHEDRANA', 151, 0, 10, 106, 0, 0),
(26, '218, SUNNAGAR SOCIETY', 'NR. G.E.B. HIGHWAY', 151, 384151, 10, 106, '218, SUNNAGAR SOCIETY', 'NR. G.E.B. HIGHWAY', 151, 0, 10, 106, 0, 0),
(27, 'TA: VADGAM', 'DIST: BANASKANTHA', 151, 385421, 10, 106, 'TA: VADGAM', 'DIST: BANASKANTHA', 151, 0, 10, 106, 0, 0),
(28, 'NR. SWAMINARAYAN BUNGLOW', 'SIDHPUR', 151, 384151, 10, 106, 'NR. SWAMINARAYAN BUNGLOW', 'SIDHPUR', 151, 0, 10, 106, 0, 0),
(29, 'LAKSHAMIPUR', 'SIDHPUR', 151, 384151, 10, 106, 'LAKSHAMIPUR', 'SIDHPUR', 151, 0, 10, 106, 0, 0),
(30, 'BINDU SAROVAR', 'KADAMVADI', 151, 384315, 10, 106, 'BINDU SAROVAR', 'KADAMVADI', 151, 0, 10, 106, 0, 0),
(31, 'AT & POST KUVARA', 'TA: SIDHPUR', 151, 384151, 10, 106, 'AT & POST KUVARA', 'TA: SIDHPUR', 151, 0, 10, 106, 0, 0),
(32, 'SIDHPUR', 'SIDHPUR', 151, 384151, 10, 106, 'SIDHPUR', 'SIDHPUR', 151, 0, 10, 106, 0, 0),
(33, 'SIDHPUR', 'SIDHPUR', 151, 384151, 10, 106, 'SIDHPUR', 'SIDHPUR', 151, 0, 10, 106, 0, 0),
(34, 'PALANPUR', 'PALANPUR', 130, 385001, 10, 106, 'PALANPUR', 'PALANPUR', 130, 0, 10, 106, 0, 0),
(35, 'Hanumangali', 'Nr Bhramaniya pole', 151, 384151, 10, 106, 'Hanumangali', 'Nr Bhramaniya pole', 151, 0, 10, 106, 0, 0),
(36, '13, Murlidhar Society', 'Kansa', 151, 384315, 10, 106, '13, Murlidhar Society', 'Kansa', 151, 0, 10, 106, 0, 0),
(37, 'Rajput Vas', 'Lalpur', 151, 384151, 10, 106, 'Rajput Vas', 'Lalpur', 151, 0, 10, 106, 0, 0),
(38, 'Dhundhor vas', 'Jagudan', 151, 385210, 10, 106, 'Dhundhor vas', 'Jagudan', 151, 0, 10, 106, 0, 0),
(39, 'Radua, Po- Naroli', 'Tharad', 160, 385566, 10, 106, 'Radua, Po- Naroli', 'Tharad', 160, 0, 10, 106, 0, 0),
(40, 'AT POST:- AITHORE,DIST:-MEHSANA', 'UNJHA', 165, 384170, 10, 106, 'AT POST:- AITHORE,DIST:-MEHSANA', 'UNJHA', 165, 0, 10, 106, 0, 0),
(41, '102, DEVASHISH APPARTMENT, Nr.Maruti Complex, Sidhpur', '102, DEVASHISH APPARTMENT, Nr.Maruti Complex, Sidhpur', 151, 384151, 10, 106, '102, DEVASHISH APPARTMENT, Nr.Maruti Complex, Sidhpur', '102, DEVASHISH APPARTMENT, Nr.Maruti Complex, Sidhpur', 151, 0, 10, 106, 0, 0),
(42, '6,ANAND BUG.NR.TIRUPATI SOCIETY,', '6,ANAND BUG.NR.TIRUPATI SOCIETY,', 151, 384151, 10, 106, '6,ANAND BUG.NR.TIRUPATI SOCIETY,', '6,ANAND BUG.NR.TIRUPATI SOCIETY,', 151, 0, 10, 106, 0, 0),
(43, 'PRAJAPATI VAS, KAHODA', 'PRAJAPATI VAS, KAHODA', 151, 384151, 10, 106, 'PRAJAPATI VAS, KAHODA', 'PRAJAPATI VAS, KAHODA', 151, 0, 10, 106, 0, 0),
(44, 'rajput vas, at&po.sundhiya, ta.vadnagar', 'rajput vas, at&po.sundhiya, ta.vadnagar', 151, 384151, 10, 106, 'rajput vas, at&po.sundhiya, ta.vadnagar', 'rajput vas, at&po.sundhiya, ta.vadnagar', 151, 0, 10, 106, 0, 0),
(45, '56, tulshi park society, mahesana-1', '56, tulshi park society, mahesana-1', 151, 384001, 10, 106, '56, tulshi park society, mahesana-1', '56, tulshi park society, mahesana-1', 151, 0, 10, 106, 0, 0),
(46, 'SECTOR-27,333 GAYATRINAGAR SOC. GANDHINAGAR', 'SECTOR-27,333 GAYATRINAGAR SOC. GANDHINAGAR', 151, 382006, 10, 106, 'SECTOR-27,333 GAYATRINAGAR SOC. GANDHINAGAR', 'SECTOR-27,333 GAYATRINAGAR SOC. GANDHINAGAR', 151, 0, 10, 106, 0, 0),
(47, '13,suryoday park society, somnath road, mahesana-1', '13,suryoday park society, somnath road, mahesana-1', 151, 384001, 10, 106, '13,suryoday park society, somnath road, mahesana-1', '13,suryoday park society, somnath road, mahesana-1', 151, 0, 10, 106, 0, 0),
(48, 'at&po.Dabhoda,Ta.Kheralu-384325', 'at&po.Dabhoda,Ta.Kheralu-384325', 100, 384325, 10, 106, 'at&po.Dabhoda,Ta.Kheralu-384325', 'at&po.Dabhoda,Ta.Kheralu-384325', 100, 0, 10, 106, 0, 0),
(49, 'At&po&ta.Sidhpur, dist.Patan', 'At&po&ta.Sidhpur, dist.Patan', 151, 384151, 10, 106, 'At&po&ta.Sidhpur, dist.Patan', 'At&po&ta.Sidhpur, dist.Patan', 151, 0, 10, 106, 0, 0),
(50, 'shik-sak soc. P.no.161, Nharat nagar Road, opp.Maldhari, Bhavnagar', 'shik-sak soc. P.no.161, Nharat nagar Road, opp.Maldhari, Bhavnagar', 24, 0, 10, 106, 'shik-sak soc. P.no.161, Nharat nagar Road, opp.Maldhari, Bhavnagar', 'shik-sak soc. P.no.161, Nharat nagar Road, opp.Maldhari, Bhavnagar', 24, 0, 10, 106, 0, 0),
(51, '49, swati soc. Gobri road, Palanpur', '49, swati soc. Gobri road, Palanpur', 130, 385001, 10, 106, '49, swati soc. Gobri road, Palanpur', '49, swati soc. Gobri road, Palanpur', 130, 0, 10, 106, 0, 0),
(52, '10,KB Banglows, B/H.Vishvas hotel, Sidhpur', '10,KB Banglows, B/H.Vishvas hotel, Sidhpur', 151, 384151, 10, 106, '10,KB Banglows, B/H.Vishvas hotel, Sidhpur', '10,KB Banglows, B/H.Vishvas hotel, Sidhpur', 151, 0, 10, 106, 0, 0),
(53, '14/105, gujarat housing board, bindu sarovar road, sidhpur', '14/105, gujarat housing board, bindu sarovar road, sidhpur', 151, 384151, 10, 106, '14/105, gujarat housing board, bindu sarovar road, sidhpur', '14/105, gujarat housing board, bindu sarovar road, sidhpur', 151, 0, 10, 106, 0, 0),
(54, 'Mahesana', 'Mahesana', 151, 384001, 10, 106, 'Mahesana', 'Mahesana', 151, 0, 10, 106, 0, 0),
(55, 'AT&PO-BASANA', 'AT&PO-BASANA', 151, 384315, 10, 106, 'AT&PO-BASANA', 'AT&PO-BASANA', 151, 0, 10, 106, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendence`
--

CREATE TABLE IF NOT EXISTS `employee_attendence` (
  `employee_attendence_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `time1` time NOT NULL,
  `time2` time NOT NULL,
  `time3` time NOT NULL,
  `time4` time NOT NULL,
  `time5` time NOT NULL,
  `time6` time NOT NULL,
  `time7` time NOT NULL,
  `time8` time NOT NULL,
  `time9` time NOT NULL,
  `time10` time NOT NULL,
  `total_hour` time NOT NULL,
  `overtime_hour` time NOT NULL,
  `csvfile` varchar(150) NOT NULL,
  `employee_attendence_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`employee_attendence_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `employee_designation`
--

INSERT INTO `employee_designation` (`employee_designation_id`, `employee_designation_name`, `employee_designation_organization_id`, `employee_designation_created_by`, `employee_designation_created_date`) VALUES
(1, 'Director', 1, 2, '2012-05-15 18:36:49'),
(2, 'Principal', 1, 2, '2012-05-15 18:37:04'),
(3, 'Professor', 1, 2, '2012-05-15 18:37:18'),
(4, 'Asso. Prof.', 1, 2, '2012-05-15 18:37:37'),
(5, 'Asst. Prof.', 1, 2, '2012-05-15 18:37:57'),
(6, 'PTL', 1, 2, '2012-05-15 18:38:12'),
(7, 'Visiting Faculty', 1, 2, '2012-05-15 18:38:30'),
(8, 'W/S Supdt.', 1, 2, '2012-05-15 18:38:43'),
(9, 'L.A.', 1, 2, '2012-05-15 18:39:02'),
(10, 'Instructor- Carpentry', 1, 2, '2012-05-15 18:39:16'),
(11, 'Instructor-Fitting', 1, 2, '2012-05-15 18:39:31'),
(12, 'Machinist', 1, 2, '2012-05-15 18:39:46'),
(13, 'Estate Engineer', 1, 2, '2012-05-15 18:40:02'),
(14, 'Civil Supervisor', 1, 2, '2012-05-15 18:40:17'),
(15, 'Electrician', 1, 2, '2012-05-15 18:40:31'),
(16, 'Administrative Officer', 1, 2, '2012-05-15 18:40:44'),
(17, 'Office Superintendent', 1, 2, '2012-05-15 18:41:00'),
(18, 'P.S. To Principal ', 1, 2, '2012-05-15 18:41:20'),
(19, 'Librarian', 1, 2, '2012-05-15 18:41:35'),
(20, 'Asst. Lib.', 1, 2, '2012-05-15 18:41:46'),
(21, 'Lib. Asst.', 1, 2, '2012-05-15 18:41:58'),
(22, 'Peon', 1, 2, '2012-05-15 18:42:14'),
(23, 'Sweeper', 1, 2, '2012-05-15 18:42:50'),
(24, 'Gardener', 1, 2, '2012-05-15 18:43:04'),
(25, 'Security', 1, 2, '2012-05-15 18:43:17'),
(26, 'Store Officer', 1, 2, '2012-05-15 18:43:31'),
(27, 'HRD Officer', 1, 2, '2012-05-15 19:00:22'),
(28, 'Asst. Store Officer', 1, 2, '2012-06-27 00:00:00'),
(29, 'OA STS', 1, 2, '2012-06-27 00:00:00'),
(30, 'OA Store', 1, 2, '2012-06-27 00:00:00'),
(31, 'OA HR', 1, 2, '2012-06-27 00:00:00'),
(32, 'OA Acc.', 1, 2, '2012-06-27 00:00:00'),
(33, 'NA', 1, 2, '2012-07-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee_docs`
--

CREATE TABLE IF NOT EXISTS `employee_docs` (
  `employee_docs_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_docs_desc` varchar(50) DEFAULT NULL,
  `employee_docs_path` varchar(150) NOT NULL,
  PRIMARY KEY (`employee_docs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `employee_experience` varchar(50) NOT NULL,
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
  `employee_experience_trans_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`employee_experience_trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE IF NOT EXISTS `employee_info` (
  `employee_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) NOT NULL,
  `employee_no` varchar(10) NOT NULL,
  `employee_first_name` varchar(25) NOT NULL,
  `employee_middle_name` varchar(25) NOT NULL,
  `employee_last_name` varchar(25) NOT NULL,
  `employee_name_alias` varchar(25) DEFAULT NULL,
  `employee_mother_name` varchar(25) NOT NULL,
  `employee_dob` date NOT NULL,
  `employee_birthplace` varchar(25) DEFAULT NULL,
  `employee_gender` varchar(6) NOT NULL,
  `employee_bloodgroup` varchar(3) NOT NULL,
  `employee_marital_status` varchar(10) NOT NULL,
  `employee_private_email` varchar(60) NOT NULL,
  `employee_organization_mobile` bigint(15) DEFAULT NULL,
  `employee_private_mobile` bigint(15) NOT NULL,
  `employee_pancard_no` varchar(15) DEFAULT NULL,
  `employee_account_no` bigint(20) DEFAULT NULL,
  `employee_joining_date` date NOT NULL,
  `employee_probation_period` varchar(10) DEFAULT NULL,
  `employee_hobbies` text,
  `employee_technical_skills` text,
  `employee_project_details` text,
  `employee_curricular` text,
  `employee_reference` varchar(25) DEFAULT NULL,
  `employee_refer_designation` varchar(20) DEFAULT NULL,
  `employee_guardian_name` varchar(100) DEFAULT NULL,
  `employee_guardian_relation` varchar(20) DEFAULT NULL,
  `employee_guardian_home_address` varchar(100) DEFAULT NULL,
  `employee_guardian_qualification` varchar(50) DEFAULT NULL,
  `employee_guardian_occupation` varchar(50) DEFAULT NULL,
  `employee_guardian_income` varchar(15) DEFAULT NULL,
  `employee_guardian_occupation_address` varchar(100) DEFAULT NULL,
  `employee_guardian_occupation_city` int(4) DEFAULT NULL,
  `employee_guardian_city_pin` int(6) DEFAULT NULL,
  `employee_guardian_phone_no` bigint(15) DEFAULT NULL,
  `employee_guardian_mobile1` bigint(15) DEFAULT NULL,
  `employee_guardian_mobile2` bigint(15) DEFAULT NULL,
  `employee_faculty_of` varchar(50) NOT NULL,
  `employee_attendance_card_id` varchar(15) NOT NULL,
  `employee_tally_id` varchar(9) NOT NULL,
  `employee_created_by` bigint(20) DEFAULT NULL,
  `employee_creation_date` datetime DEFAULT NULL,
  `employee_type` int(3) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`employee_id`, `title`, `employee_no`, `employee_first_name`, `employee_middle_name`, `employee_last_name`, `employee_name_alias`, `employee_mother_name`, `employee_dob`, `employee_birthplace`, `employee_gender`, `employee_bloodgroup`, `employee_marital_status`, `employee_private_email`, `employee_organization_mobile`, `employee_private_mobile`, `employee_pancard_no`, `employee_account_no`, `employee_joining_date`, `employee_probation_period`, `employee_hobbies`, `employee_technical_skills`, `employee_project_details`, `employee_curricular`, `employee_reference`, `employee_refer_designation`, `employee_guardian_name`, `employee_guardian_relation`, `employee_guardian_home_address`, `employee_guardian_qualification`, `employee_guardian_occupation`, `employee_guardian_income`, `employee_guardian_occupation_address`, `employee_guardian_occupation_city`, `employee_guardian_city_pin`, `employee_guardian_phone_no`, `employee_guardian_mobile1`, `employee_guardian_mobile2`, `employee_faculty_of`, `employee_attendance_card_id`, `employee_tally_id`, `employee_created_by`, `employee_creation_date`, `employee_type`) VALUES
(1, 'Mr.', '15314', 'JAYESHKUMAR', 'NATVARLAL', 'SHAH', 'J.N.SHAH', 'KAMLABEN', '1956-05-04', 'DAHOD', 'MALE', 'B+', 'MARRIED', 'shahjayeshn@yahoo.com', 2767224855, 9825184888, 'AHWPS2343H', 3511800000231, '2011-05-18', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 168, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 1),
(2, 'Mr.', '15276', 'SAURABH', 'DINESHBHAI', 'PATEL', 'S.D.PATEL', 'SUBHDRABEN', '1985-04-15', 'NA', 'MALE', 'N+', 'MARRIED', 'saurabhcivil2006@yahoo.co.in', 2767224855, 9979214497, 'ATHPP 1316 N', 3511800000435, '2011-08-08', '2 Years', 'NA', 'NA', 'NA', 'NA', 'DR.N.H.JOSHI', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 168, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 1),
(3, 'Ms.', '15275', 'MONAL', 'KANUBHAI', 'DESAI', 'M.K.DESAI', 'VIJYALAXMI', '1985-08-18', 'NADIYAD', 'FEMALE', 'B+', 'MARRIED', 'monal18885@gmail.com', 2767224855, 9429328126, 'AWJPD  2940 H', 3511800000301, '2011-07-01', '2 Years', 'READING', 'NA', 'NA', 'NA', 'Dr.Rajendrasinh Jadeja', 'Director', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 8, 0, 0, 0, 0, 'B.E', '9', '', 2, '2012-07-27 17:35:28', 1),
(4, 'Mr.', '15288', 'PIYUSHKUMAR', 'MADHAVLAL', 'PATELK', 'P.M.PATEL', 'DAHIBEN', '1986-05-05', 'NA', 'MALE', 'B+', 'MARRIED', 'pmpatel551986@gmail.com', 2767224855, 9428879276, 'ATLPP 2042 D', 3511800000037, '2011-07-12', '2 Years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 8, 0, 0, 0, 0, 'B.E', '4', '', 2, '2012-07-27 17:35:28', 1),
(5, 'Mr.', '15312', 'MEHULKUMAR', 'KIRITBHAI', 'DETHARIYA', 'M.K.DETHARIYA', 'RAMILABEN', '1987-08-05', 'NA', 'MALE', 'B+', 'UNMARRIED', 'mehul.dethariya@yahoo.com', 2767224855, 9925957946, 'AZCPD 1955 E', 3511800000073, '2011-08-12', '2 Years', 'READING', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '6', '', 2, '2012-07-27 17:35:28', 1),
(6, 'Mr.', '15289', 'PARTH', 'VIKRAMBHAI', 'SANDESARA', 'P.V.SANDESARA', 'VASANTIBEN', '1985-08-14', 'RADHANPUR', 'MALE', 'A+', 'MARRIED', 'parth_sandesara@yahoo.co.in', 2767224855, 9925490230, 'BQKPS 8984 C', 3511800000198, '2011-07-01', '2 Years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '2', '', 2, '2012-07-27 17:35:28', 1),
(7, 'Mr.', '15283', 'SUKRUTKUMAR', 'MAHESHBHAI', 'SOMPURA', 'S.M.SOMPURA', 'GEETABEN', '1985-11-19', 'SIDHPUR', 'MALE', 'A+', 'UNMARRIED', 'sukrutbaps@yahoo.co.in', 2767224855, 9726646708, 'BRUPS 7211 K', 3511800000295, '2011-08-12', '2 Years', 'NA', 'NA', 'NA', 'NA', 'Mr. D.A.Patel', 'HOD', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '11', '', 2, '2012-07-27 17:35:28', 1),
(8, 'Mr.', '15279', 'JIGNESHKUMAR', 'KIRITBHAI', 'MODH', 'J.K.MODH', 'URMILABEN', '1988-01-20', 'NA', 'MALE', 'N+', 'UNMARRIED', 'jigar.jet2009@gmail.com', 2767224855, 9904239038, 'BHQPM 6920 D', 0, '2011-08-08', '2 Years', 'NA', 'NA', 'NA', 'NA', 'Prof.Prabhukaran', 'HOD', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 130, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 1),
(9, 'Mr.', '15286', 'ANAND', 'PURUSHOTAMBHAI', 'PATEL', 'A.P.PATEL', 'VIMLABEN', '1983-01-08', 'NA', 'MALE', 'N+', 'MARRIED', 'patel_16218@hotmail.com', 2767224855, 9898897946, 'APBPP 2035 A', 0, '2011-07-27', '2 Years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 130, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 1),
(10, 'Ms.', '15274', 'AVANI', 'JAYKRUSHANABHAI', 'RAVAL', 'A.J.RAVAL', 'ILABEN', '1986-10-18', 'AHEMADABAD', 'FEMALE', 'O+', 'MARRIED', 'raval_avani@yahoo.com', 2767224855, 9898714568, 'ASAPR 2522 C', 3511800000213, '2011-07-21', '2 Years', 'TRAVELLING', 'C,C++,JAVA', 'NA', 'NA', 'rahul Vagehla', 'AP', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '8', '', 2, '2012-07-27 17:35:28', 1),
(11, 'Mr.', '15315', 'DARSHAN', 'POONAMBHAI', 'PATEL', 'D.P.PATEL', 'JASHODABEN', '1984-05-02', 'AHEMADABAD', 'MALE', 'N+', 'MARRIED', 'darshan_meen2274@yahoo.com', 2767224855, 8758212134, 'GJ01/090515/03', 3511800000222, '2011-08-08', '2 Years', 'READING,SHOPPING', 'TECHNOLOGY,MANAGEMENT PHP', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '7', '', 2, '2012-07-27 17:35:28', 1),
(12, 'Mr.', '15285', 'HITESH', 'BALDEVBHAI', 'PRAJAPATI', 'H.B.PRAJAPATI', 'GAURIBEN', '1985-10-10', 'NA', 'MALE', 'A+', 'MARRIED', 'hitesh_uvpce@yahoo.co.in', 2767224855, 9662048156, 'AWGPP 6419 E', 0, '2011-07-13', '2 Years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '5', '', 2, '2012-07-27 17:35:28', 1),
(13, 'Mr.', '1', 'HIRENKUMAR', 'GUNVANTBHAI', 'PATEL', 'H.G.PATEL', 'RENUKABEN', '0000-00-00', 'NA', 'MALE', 'N+', 'MARRIED', 'hirenpatel333@yahoo.co.in', 2767224855, 9879224838, 'ATIPP 8478 J', 0, '1970-01-01', '2 Years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 1),
(14, 'Ms.', '15281', 'JUMISHREE', 'SARAT', 'SARMAH PATHAK', 'J.S.SARMAHPATHAK', 'MRINALINI', '1980-01-03', 'JORHAT', 'FEMALE', 'A+', 'UNMARRIED', 'jumi.sarmah@gamil.com', 2767224855, 7878248617, 'AYVPP 3599 G', 3511800000356, '2011-08-08', '2 Years', 'SINGING,WRITING', 'NA', 'NA', 'NA', 'DR. G.D.BARVA', 'PROFESSOR', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '33', '', 2, '2012-07-27 17:35:28', 1),
(15, 'Mr.', '15278', 'JITENDRA', 'NATVARLAL', 'PRAJAPTI', 'J.N.PRAJAPATI', 'SAMUBEN', '1984-01-02', 'AITHORE', 'MALE', 'B+', 'UNMARRIED', 'prajapatij58@yahoo.com', 2767224855, 9924381795, 'BJSPP 6512 L', 3511800000417, '2011-07-01', '2 Years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '3', '', 2, '2012-07-27 17:35:28', 1),
(16, 'Mr.', '15311', 'HIRAL', 'VINODCHANDRA', 'PATEL', 'H.V.PATEL', 'NARMADABEN', '1987-11-11', 'BADARPUR', 'MALE', 'B+', 'MARRIED', 'hiral_civileng@yahoo.co.in', 2767224855, 9712913001, 'GJ/24/12504/06', 3511800000505, '2011-08-08', '2 Years', 'DRIVING', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 139, 0, 0, 0, 0, 'B.E', '40', '', 2, '2012-07-27 17:35:28', 1),
(17, 'Mr.', '15277', 'PARTH', 'DINESHBHAI', 'PATEL', 'P.D.PATEL', 'HIRABEN', '0000-00-00', 'PATAN', 'MALE', 'O+', 'UNMARRIED', 'parth.patel@hansabacollege.com', 2767224855, 9099020885, 'AVIPP 9646 C', 3511800000240, '2011-08-12', '2 Years', 'READING', 'ANSYS PRO-E', 'NA', 'NA', 'Prof. N.A PATEL', 'G.E.C-PALANPUR', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '14', '', 2, '2012-07-27 17:35:28', 1),
(18, 'Mr.', '4990', 'RAHUL', 'KANAIYALAL', 'RATHOD', 'R.K.RATHOD', 'CHANDRIKABEN', '1984-03-08', 'PALANPUR', 'MALE', 'O+', 'MARRIED', 'rahulcivilengg@gmail.com', 2767224855, 9898271634, 'AMLPR 4639 M', 3511800000046, '2011-09-02', '2 Years', 'READING', 'NA', 'NA', 'NA', 'PATEL VIGNESH KIRITBHAI', 'PATAN', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 130, 0, 0, 0, 0, 'B.E', '10', '', 2, '2012-07-27 17:35:28', 1),
(19, 'Ms.', '15273', 'BHAVIKA', 'NIKHILKUMAR', 'BAROT', 'B.N.BAROT', 'KAILASHBEN', '1987-06-08', 'MEHSANA', 'FEMALE', 'B+', 'UNMARRIED', 'bhvi6887@gmail.com', 2767224855, 9726037524, 'BFUPB 9764 G', 3511800000028, '2011-09-08', '2 Years', 'READING', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '12', '', 2, '2012-07-27 17:35:28', 1),
(20, 'Mr.', '1', 'NIKUNJ', 'GOVINDBHAI', 'PATEL', 'N.G.PATEL', 'MANJULABEN', '1987-03-20', 'PALANPUR', 'MALE', 'B+', 'MARRIED', 'nik_200387@yahoo.com', 2767224855, 7874704994, 'BAYPP 4658 L', 3511800000125, '2011-09-02', '2 Years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 130, 0, 0, 0, 0, 'B.E', '13', '', 2, '2012-07-27 17:35:28', 1),
(21, 'Mr.', '1', 'SATISHKUMAR', 'AMRUTLAL', 'PATEL', 'S.A.PATEL', 'BHAGVATIBEN', '0000-00-00', 'UNJHA', 'MALE', 'O+', 'MARRIED', 'patel_satish2002@yahoo.com', 2767224855, 9998672662, 'ASVPP2394P', 3511800000727, '2012-03-20', '2 Years', 'READING', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 165, 0, 0, 0, 0, 'B.E', '42', '', 2, '2012-07-27 17:35:28', 1),
(22, 'Mr.', '1', 'JAGDISHSINH', 'JORAVARSINH', 'RANA', 'J.J.RANA', 'BABUBEN', '1974-10-22', 'SUNDHIYA', 'MALE', 'A+', 'MARRIED', 'jagdishsinh.rana@hansabacollege.com', 2767224855, 9099054801, 'AIHPR 6808 C', 3511800000082, '2011-07-01', '6 MONTH', 'LISTENING MUSIC', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '31', '', 2, '2012-07-27 17:35:28', 0),
(23, 'Ms.', '1', 'KRUPA', 'TUSHAR', 'PATEL', 'K.T.PATEL', 'SHOBHANABEN', '1985-03-11', 'KAHODA', 'FEMALE', 'N+', 'MARRIED', 'baku_tushar@yahoo.co.in', 2767224855, 9274806186, 'BFZPP 0973 C', 3511800000392, '2011-04-23', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 135, 0, 0, 0, 0, 'B.E', '15', '', 2, '2012-07-27 17:35:28', 0),
(24, 'Mr.', '1', 'GIRISHKUMAR', 'RAMESHCHANDRA', 'KHAMAR', 'G.R.KHAMAR', 'SUSHILABEN', '1979-06-25', 'SIDHPUR', 'MALE', 'AB+', 'MARRIED', 'girish.khamar@hansabacollege.com', 2767224855, 9033892435, 'ARAPK 4945 R', 3510500002066, '2011-06-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '16', '', 2, '2012-07-27 17:35:28', 0),
(25, 'Mrs', '1', 'BHARATIBEN', 'NEHALKUMAR', 'OZA', 'B.N.OZA', 'SAMUBEN', '1976-07-03', 'GORAD', 'FEMALE', 'B+', 'MARRIED', 'bharti.oza@hansabacollege.com', 2767224855, 9429956055, 'AANPO 0974 A', 3511800000143, '2011-09-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '20', '', 2, '2012-07-27 17:35:28', 0),
(26, 'Mr.', '1', 'VASANTKUMAR', 'KACCHARDAS', 'PATEL', 'V.K.PATEL', 'SITABEN', '1978-01-06', 'NA', 'MALE', 'O+', 'MARRIED', 'vasantpatel79@yahoo.com', 2767224855, 9428384687, 'AHKPP3778M', 3511800000161, '2011-07-04', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '23', '', 2, '2012-07-27 17:35:28', 0),
(27, 'Mr.', '1', 'SURESH', 'KHUMANSINH', 'VIHOL', 'S.K.VIHOL', 'ANTARBEN', '1982-08-20', 'PEPOL', 'MALE', 'N+', 'MARRIED', 'suresh_vihol@yahoo.com', 2767224855, 9737754877, 'AGMPV 3579 P', 3511800000091, '2011-07-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '22', '', 2, '2012-07-27 17:35:28', 0),
(28, 'Mr.', '1', 'RAJNIKANT', 'RAMCHANDBHAI', 'PRAJAPATI', 'R.R.PRAJAPATI', 'JAMNABEN', '1989-07-13', 'SIDHPUR', 'MALE', 'A+', 'UNMARRIED', 'prajapatirajnikant27@yahoo.co.in', 2767224855, 9913977075, 'NA', 3510500002431, '2011-07-13', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '26', '', 2, '2012-07-27 17:35:28', 0),
(29, 'Mr.', '1', 'PRATAPJI', 'CHAMNAJI', 'RAJPUT', 'P.C.RAJPUT', 'SITABEN', '1962-10-26', 'SIDHPUR', 'MALE', 'N+', 'MARRIED', 'pratapji.rajput@hansabacollege.com', 2767224855, 9979783629, 'NA', 3511800000170, '2011-06-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '27', '', 2, '2012-07-27 17:35:28', 0),
(30, 'Mr.', '1', 'VISHNU', 'HEMRAJBHAI', 'CHAUDHARY', 'V.H.CHAUDHARY', 'MENABEN', '1991-10-18', 'GUNJA', 'MALE', 'B+', 'MARRIED', 'vishnu.chaudhary@hansabacollege.com', 2767224855, 9737949527, 'NA', 3511800000329, '2011-06-13', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '17', '', 2, '2012-07-27 17:35:28', 0),
(31, 'Mr.', '1', 'CHAMNJI', 'GALABJI', 'RAJPUT', 'C.G.RAJPUT', 'CHANCHIBEN', '1961-05-07', 'SIDHPUR', 'MALE', 'B+', 'MARRIED', 'chamnji.rajput@hansabacollege.com', 2767224855, 9979633430, 'NA', 3511800000286, '2011-06-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 0),
(32, 'Mr.', '1', 'BABARBHAI', 'KHODABHAI', 'RABARI', 'B.K.RABARI', 'PURIBEN', '1962-01-06', 'PATAN', 'MALE', 'N+', 'MARRIED', 'abcd@hansabacollege.com', 2767224855, 9624836684, 'NA', 3511800000055, '2011-09-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 0),
(33, 'Mr.', '1', 'GOVINDBHAI', 'MAIJIBHAI', 'DESAI', 'G.M.DESAI', 'NA', '0000-00-00', 'NA', 'MALE', 'N+', 'MARRIED', 'govind.desai@hansabacollege.com', 2767224855, 9727300772, 'NA', 3511800000347, '2011-09-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 0),
(34, 'Mr.', '1', 'KIRITSINH', 'CHATURSINH', 'BODANA', 'K.C.BODANA', 'NA', '1983-10-07', 'NA', 'MALE', 'N+', 'MARRIED', 'kirit.bodana@hansabacollege.com', 2767224855, 9898734702, 'NA', 3511800000338, '2011-09-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 130, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 0),
(35, 'Ms.', '1', 'URVI', 'JITENDRAKUMAR', 'KHAMAR', 'U.J.KHAMAR', 'MAYABEN', '1989-11-12', 'AHEMADABAD', 'FEMALE', 'A+', 'UNMARRIED', 'urvi_khamar1989@yahoo.com', 2767224855, 9033147341, 'BPHPK1050D', 3511800000499, '2011-12-05', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '21', '', 2, '2012-07-27 17:35:28', 0),
(36, 'Mr.', '1', 'BHARAT', 'BABUBHAI', 'MISTRY', 'B.B.MISTRY', 'KAILASHBEN', '1987-07-10', 'VISNAGAR', 'MALE', 'A+', 'MARRIED', 'bharat.mistry@hansabacollege.com', 2767224855, 9974710996, 'NA', 3511800000453, '2011-12-07', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '29', '', 2, '2012-07-27 17:35:28', 2),
(37, 'Mr.', '1', 'KHODAJI', 'CHHAGUJI', 'RAJPUT', 'K.C.RAJPUT', 'SHARDABEN', '1985-05-15', 'JAGNATHPURA', 'MALE', 'N+', 'MARRIED', 'khodaji_15@yahoo.com', 2767224855, 9033548827, 'NA', 3511800000134, '2011-11-07', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '25', '', 2, '2012-07-27 17:35:28', 2),
(38, 'Mr.', '1', 'NITIN', 'JAYANTILAL', 'PATEL', 'N.J.PATEL', 'MADHUBEN', '1982-02-15', 'JAGUDAN', 'MALE', 'O+', 'MARRIED', 'nitin.patel@hansabacollege.com', 2767224855, 7698472967, 'NA', 3511800000064, '2011-07-18', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '28', '', 2, '2012-07-27 17:35:28', 2),
(39, 'Mr.', '1', 'GANGARAM', 'KESHARABHAI', 'PATEL', 'G.K.PATEL', 'Sardaben', '1983-01-06', 'RADKA', 'MALE', 'B+', 'MARRIED', 'gangaram.patel@hansabacollege.com', 2767224855, 8980047656, 'NA', 3511800000116, '2011-04-25', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 160, 0, 0, 0, 0, 'B.E', '30', '', 2, '2012-07-27 17:35:28', 2),
(40, 'Mr.', '1', 'RAJENDRA', 'GANPATLAL', 'PATEL', 'R.G.PATEL', 'Jasiben', '1984-11-21', 'AITHORE', 'MALE', 'B+', 'MARRIED', 'rajendra.patel@hansabacollege.com', 2767224855, 9979317647, 'NA', 3511800000383, '2011-07-13', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 165, 0, 0, 0, 0, 'B.E', '32', '', 2, '2012-07-27 17:35:28', 2),
(41, 'Ms.', '1', 'DIPTI', 'GAENSHBHAI', 'CHAUDHARY', 'D.G.CHAUDHARY', 'Taralikaben', '0000-00-00', 'SIDHPUR', 'FEMALE', 'N+', 'UNMARRIED', 'dipti.chaudhary@hansabacollege.com', 2767224855, 8530162993, 'NA', 0, '2011-07-13', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 2),
(42, 'Mr.', '1', 'JIGAR', 'JASHVANTBHAI', 'PATEL', 'J.J.PATEL', 'KRISHNABEN', '1985-11-18', 'NA', 'MALE', 'B+', 'MARRIED', 'jigarpatel_09@yahoo.com', 2767224855, 9099054737, 'AVGPP7573A', 3511100016737, '2007-04-10', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '38', '', 2, '2012-07-27 17:35:28', 1),
(43, 'Mr.', '1', 'SHAILESH', 'KARSANBHAI', 'PRAJAPATI', 'S.K.PRAJAPATI', 'NARMADABEN', '1982-12-21', 'KAHODA', 'MALE', 'o+', 'MARRIED', 'shailesh.prajapati@hansabacollege.com', 2767224855, 8758707097, 'NA', 3510500002707, '2011-06-19', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '37', '', 2, '2012-07-27 17:35:28', 2),
(44, 'Mr.', '1', 'KARANSINH', 'JORAJI', 'RANA', 'K.J.RANA', 'BABUBEN', '0000-00-00', 'SUNDHIYA', 'MALE', 'B+', 'MARRIED', 'karansinh.rana@hansabacollege.com', 2767224855, 9974359376, 'NA', 3511800000426, '2011-01-06', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 2),
(45, 'Mr.', '1', 'NARENDRAKUMAR', 'VASTARAM', 'MAKWANA', 'N.V.RANA', 'AMBABEN', '1964-01-09', 'BAMOSANA', 'MALE', 'N+', 'MARRIED', 'narendra.makwana@hansabacollege.com', 2767224855, 8238528499, 'NA', 0, '2011-05-08', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '19', '', 2, '2012-07-27 17:35:28', 2),
(46, 'Mr.', '1', 'AJAYSINH', 'VIKRAMSINH', 'RATHOD', 'A.V.RATHOD', 'KAILASHBEN', '1992-08-03', 'GHANDHINAGAR', 'MALE', 'N+', 'UNMARRIED', 'AJAYSINHRATHOD3@GMAIL.COM', 2767224855, 9638151562, 'NA', 3511800000019, '2011-05-13', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '24', '', 2, '2012-07-27 17:35:28', 2),
(47, 'Ms.', '1', 'SANGEETA', 'ISHWARBHAI', 'MAKWANA', 'S.I.MAKWANA', 'PARVATIBEN', '0000-00-00', 'NA', 'FEMALE', 'A+', 'UNMARRIED', 'makwana.sangeeta@gmail.com', 2767224855, 9722301445, 'NA', 3511800000693, '2012-02-02', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '41', '', 2, '2012-07-27 17:35:28', 2),
(48, 'Mr.', '1', 'SURESH', 'VELAJI', 'THAKOR', 'S.V.THAKOR', 'NA', '0000-11-30', 'DHABODA', 'MALE', 'N+', 'UNMARRIED', 'suresh.thakor@hansabacollege.com', 2767224855, 9727004620, 'NA', 0, '2011-01-06', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 100, 0, 0, 0, 0, 'B.E', '36', '', 2, '2012-07-27 17:35:28', 2),
(49, 'Mr.', '1', 'AKASH', 'GALABJI', 'THAKOR', 'A.G.THAKOR', 'RAMILABEN', '1992-01-06', 'SIDHPUR', 'MALE', 'N+', 'UNMARRIED', 'akashthakor40@yahoo.com', 2767224855, 9925307345, 'NA', 0, '2011-01-06', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '18', '', 2, '2012-07-27 17:35:28', 2),
(50, 'Mr.', '1', 'SANJAY', 'MAHENDRAKUMAR', 'JOSHI', 'S.M.JOSHI', 'NA', '0000-00-00', 'NA', 'MALE', 'B+', 'MARRIED', 'sanjay.joshi@hansabacollege.com', 2767224855, 9925266736, 'NA', 3511800000718, '2012-03-20', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 24, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 2),
(51, 'Ms.', '1', 'CHARMY', 'MAHENDRAKUMAR', 'PARMAR', 'C.M.PARMAR', 'RAXABEN', '1986-10-16', 'NA', 'FEMALE', 'N+', 'UNMARRIED', 'sweety161086@yahoo.com', 2767224855, 9925307708, 'BGHPP 0157 P', 0, '2011-06-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 130, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 2),
(52, 'Ms.', '1', 'SHEETAL', 'JAYANTILAL', 'THAKKAR', 'S.J.THAKKAR', 'BHAVNABEN', '1986-09-17', 'HARIJ', 'FEMALE', 'N+', 'MARRIED', 'sheetalthakkar86@yahoo.com', 2767224855, 8128659411, 'NA', 3511800000259, '2011-07-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 2),
(53, 'Mr.', '1', 'NILESH', 'KHEMCHANDBHAI', 'THAKKAR', 'N.K.THAKKAR', 'JAMNABEN', '1976-09-28', 'NA', 'MALE', 'N+', 'MARRIED', 'nilesh.thakkar@hansabacollege.com', 2767224855, 8238155280, 'NA', 3511800000204, '2011-06-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '39', '', 2, '2012-07-27 17:35:28', 2),
(54, 'Mr.', '1', 'ANIL', 'DAYABHAI', 'MAKWANA', 'A.D.MAKWANA', 'CHAPABEN', '0000-00-00', 'NA', 'MALE', 'N+', 'UNMARRIED', 'anil.makwana@hansabacollege.com', 2767224855, 0, 'NA', 3511800000152, '2011-08-01', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '0', '', 2, '2012-07-27 17:35:28', 2),
(55, 'Mr.', '1', 'KETAN', 'DASHRATHBHAI', 'CHAUDHARY', 'K.D.CHAUDHARY', 'SHANTABEN', '1983-04-18', 'MEHSANA', 'MALE', 'N+', 'UNMARRIED', 'ketan_184@yahoo.in', 2767224855, 9724680434, 'AJOPC2385F', 0, '2012-07-04', '6 MONTH', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'null', 'NA', 151, 0, 0, 0, 0, 'B.E', '43', '', 2, '2012-07-27 17:35:28', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `employee_photos`
--

INSERT INTO `employee_photos` (`employee_photos_id`, `employee_photos_desc`, `employee_photos_path`) VALUES
(1, NULL, 'no_image'),
(2, NULL, 'no_image'),
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
(33, NULL, 'no_image'),
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
(55, NULL, 'no_image');

-- --------------------------------------------------------

--
-- Table structure for table `employee_sms_email_details`
--

CREATE TABLE IF NOT EXISTS `employee_sms_email_details` (
  `employee_sms_email_id` int(3) NOT NULL AUTO_INCREMENT,
  `employee_sms_email_organization_id` int(3) NOT NULL,
  `department_id` int(3) NOT NULL,
  `branch_id` int(3) NOT NULL,
  `shift_id` int(3) NOT NULL,
  `message_email_text` text NOT NULL,
  `email_sms_status` int(1) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` datetime NOT NULL,
  `employee_id` int(3) NOT NULL,
  PRIMARY KEY (`employee_sms_email_id`),
  KEY `fk_emp_sms_bid` (`branch_id`),
  KEY `fk_emp_sms_did` (`department_id`),
  KEY `fk_emp_sms_sid` (`shift_id`),
  KEY `fk_emp_sms_eid` (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_timetable`
--

CREATE TABLE IF NOT EXISTS `employee_timetable` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_id` int(5) NOT NULL,
  `timetable_id` int(5) NOT NULL,
  `employee_timetable_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `employee_transaction_quota_id` int(2) DEFAULT NULL,
  `employee_transaction_religion_id` int(2) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `employee_transaction`
--

INSERT INTO `employee_transaction` (`employee_transaction_id`, `employee_transaction_user_id`, `employee_transaction_employee_id`, `employee_transaction_emp_address_id`, `employee_transaction_branch_id`, `employee_transaction_category_id`, `employee_transaction_quota_id`, `employee_transaction_religion_id`, `employee_transaction_shift_id`, `employee_transaction_designation_id`, `employee_transaction_nationality_id`, `employee_transaction_department_id`, `employee_transaction_organization_id`, `employee_transaction_languages_known_id`, `employee_transaction_emp_photos_id`) VALUES
(1, 258, 1, 1, 1, 1, NULL, 1, 1, 2, 11, 1, 1, 256, 1),
(2, 259, 2, 2, 1, 1, NULL, 1, 1, 33, 11, 1, 1, 257, 2),
(3, 260, 3, 3, 8, 7, NULL, 1, 1, 33, 11, 8, 1, 258, 3),
(4, 261, 4, 4, 8, 1, NULL, 1, 1, 33, 11, 8, 1, 259, 4),
(5, 262, 5, 5, 1, 7, NULL, 1, 1, 33, 11, 1, 1, 260, 5),
(6, 263, 6, 6, 3, 1, NULL, 1, 1, 33, 11, 3, 1, 261, 6),
(7, 264, 7, 7, 2, 1, NULL, 1, 1, 33, 11, 2, 1, 262, 7),
(8, 265, 8, 8, 2, 7, NULL, 1, 1, 33, 11, 2, 1, 263, 8),
(9, 266, 9, 9, 2, 1, NULL, 1, 1, 33, 11, 2, 1, 264, 9),
(10, 267, 10, 10, 4, 1, NULL, 1, 1, 33, 11, 4, 1, 265, 10),
(11, 268, 11, 11, 4, 1, NULL, 1, 1, 33, 11, 4, 1, 266, 11),
(12, 269, 12, 12, 2, 7, NULL, 1, 1, 33, 11, 2, 1, 267, 12),
(13, 270, 13, 13, 2, 1, NULL, 1, 1, 33, 11, 2, 1, 268, 13),
(14, 271, 14, 14, 8, 1, NULL, 1, 1, 33, 11, 8, 1, 269, 14),
(15, 272, 15, 15, 8, 7, NULL, 1, 1, 33, 11, 8, 1, 270, 15),
(16, 273, 16, 16, 1, 1, NULL, 1, 1, 33, 11, 1, 1, 271, 16),
(17, 274, 17, 17, 2, 1, NULL, 1, 1, 33, 11, 2, 1, 272, 17),
(18, 275, 18, 18, 1, 7, NULL, 1, 1, 33, 11, 1, 1, 273, 18),
(19, 276, 19, 19, 8, 7, NULL, 1, 1, 33, 11, 8, 1, 274, 19),
(20, 277, 20, 20, 3, 1, NULL, 1, 1, 33, 11, 3, 1, 275, 20),
(21, 278, 21, 21, 2, 1, NULL, 1, 1, 33, 11, 2, 1, 276, 21),
(22, 279, 22, 22, 11, 1, NULL, 1, 1, 33, 11, 7, 1, 277, 22),
(23, 280, 23, 23, 11, 1, NULL, 1, 1, 19, 11, 7, 1, 278, 23),
(24, 281, 24, 24, 11, 1, NULL, 1, 1, 33, 11, 7, 1, 279, 24),
(25, 282, 25, 25, 11, 7, NULL, 1, 1, 33, 11, 7, 1, 280, 25),
(26, 283, 26, 26, 11, 1, NULL, 1, 1, 33, 11, 7, 1, 281, 26),
(27, 284, 27, 27, 11, 1, NULL, 1, 1, 33, 11, 7, 1, 282, 27),
(28, 285, 28, 28, 10, 7, NULL, 1, 1, 33, 11, 7, 1, 283, 28),
(29, 286, 29, 29, 11, 1, NULL, 1, 1, 22, 11, 7, 1, 284, 29),
(30, 287, 30, 30, 11, 7, NULL, 1, 1, 22, 11, 7, 1, 285, 30),
(31, 288, 31, 31, 11, 7, NULL, 1, 1, 33, 11, 7, 1, 286, 31),
(32, 289, 32, 32, 11, 7, NULL, 1, 1, 33, 11, 7, 1, 287, 32),
(33, 290, 33, 33, 11, 7, NULL, 1, 1, 33, 11, 7, 1, 288, 33),
(34, 291, 34, 34, 11, 1, NULL, 1, 1, 33, 11, 7, 1, 289, 34),
(35, 292, 35, 35, 11, 1, NULL, 1, 1, 33, 11, 7, 1, 290, 35),
(36, 293, 36, 36, 2, 7, NULL, 1, 1, 33, 11, 7, 1, 291, 36),
(37, 294, 37, 37, 4, 1, NULL, 1, 1, 33, 11, 7, 1, 292, 37),
(38, 295, 38, 38, 1, 1, NULL, 1, 1, 33, 11, 7, 1, 293, 38),
(39, 296, 39, 39, 4, 7, NULL, 1, 1, 33, 11, 7, 1, 294, 39),
(40, 297, 40, 40, 3, 1, NULL, 1, 1, 33, 11, 7, 1, 295, 40),
(41, 298, 41, 41, 3, 7, NULL, 1, 1, 33, 11, 7, 1, 296, 41),
(42, 299, 42, 42, 11, 1, NULL, 1, 1, 13, 11, 7, 1, 297, 42),
(43, 300, 43, 43, 11, 7, NULL, 1, 1, 15, 11, 7, 1, 298, 43),
(44, 301, 44, 44, 11, 1, NULL, 1, 1, 33, 11, 7, 1, 299, 44),
(45, 302, 45, 45, 11, 7, NULL, 1, 1, 22, 11, 7, 1, 300, 45),
(46, 303, 46, 46, 11, 1, NULL, 1, 1, 33, 11, 7, 1, 301, 46),
(47, 304, 47, 47, 11, 7, NULL, 1, 1, 33, 11, 7, 1, 302, 47),
(48, 305, 48, 48, 11, 7, NULL, 1, 1, 33, 11, 7, 1, 303, 48),
(49, 306, 49, 49, 11, 7, NULL, 1, 1, 22, 11, 7, 1, 304, 49),
(50, 307, 50, 50, 11, 1, NULL, 1, 1, 33, 11, 7, 1, 305, 50),
(51, 308, 51, 51, 11, 7, NULL, 1, 1, 33, 11, 7, 1, 306, 51),
(52, 309, 52, 52, 12, 1, NULL, 1, 1, 33, 11, 7, 1, 307, 52),
(53, 310, 53, 53, 11, 1, NULL, 1, 1, 14, 11, 7, 1, 308, 53),
(54, 311, 54, 54, 11, 7, NULL, 1, 1, 33, 11, 7, 1, 309, 54),
(55, 312, 55, 55, 10, 7, NULL, 1, 1, 33, 11, 7, 1, 310, 55);

-- --------------------------------------------------------

--
-- Table structure for table `extralec_timetable`
--

CREATE TABLE IF NOT EXISTS `extralec_timetable` (
  `extratimetable_id` int(3) NOT NULL AUTO_INCREMENT,
  `timetable_id` int(3) NOT NULL,
  `faculty_id` int(3) NOT NULL,
  `branch_id` int(3) NOT NULL,
  `division_id` int(3) NOT NULL,
  `room_id` int(3) NOT NULL,
  `subject_id` int(3) NOT NULL,
  `day` int(3) NOT NULL,
  `lec_start_time` time NOT NULL,
  `lec_end_time` time NOT NULL,
  `day_name` varchar(20) NOT NULL,
  `acdm_period_id` int(3) NOT NULL,
  `acdm_name_id` int(3) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` datetime NOT NULL,
  `extralec_timetable_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`extratimetable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_details`
--

CREATE TABLE IF NOT EXISTS `feedback_details` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `question` varchar(50) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `feedback_id` int(3) NOT NULL,
  `feedback_details_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_feed_id` (`feedback_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE IF NOT EXISTS `feedback_master` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `feedback_start_date` date NOT NULL,
  `feedback_end_date` date NOT NULL,
  `feedback_name` varchar(30) NOT NULL,
  `feedback_emp_id` int(3) NOT NULL,
  `feedback_branch_id` int(3) NOT NULL,
  `feedback_academic_term_id` int(3) NOT NULL,
  `feedback_subject_id` int(3) NOT NULL,
  `feedback_department_id` int(3) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `feedback_master_organization_id` int(3) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_details_table`
--

INSERT INTO `fees_details_table` (`fees_details_id`, `fees_details_name`, `fees_details_amount`, `fees_details_created_by`, `fees_details_created_date`, `fees_details_tally_id`) VALUES
(1, 'Library Fees', 5000, 2, '2012-08-03 14:35:36', NULL),
(2, 'Tution Fees', 1500, 2, '2012-08-03 14:36:46', NULL);

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
  `fees_academic_term_name_id` int(11) NOT NULL,
  `fees_quota_id` int(3) NOT NULL,
  `fees_master_total` int(7) NOT NULL,
  PRIMARY KEY (`fees_master_id`),
  KEY `fk_ORG_ID` (`fees_organization_id`),
  KEY `fk_BRANCH_ID` (`fees_branch_id`),
  KEY `fk_ACDM_ID` (`fees_academic_term_id`),
  KEY `fk_QUOTA_ID` (`fees_quota_id`),
  KEY `fk_term_name` (`fees_academic_term_name_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fees_master`
--

INSERT INTO `fees_master` (`fees_master_id`, `fees_master_name`, `fees_master_created_by`, `fees_master_created_date`, `fees_master_tally_id`, `fees_organization_id`, `fees_branch_id`, `fees_academic_term_id`, `fees_academic_term_name_id`, `fees_quota_id`, `fees_master_total`) VALUES
(1, 'Mechanical sem 3', 2, '2012-08-01 11:17:29', NULL, 1, 2, 2, 11, 6, 1500);

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
(2, 1, 2);

--
-- Triggers `fees_master_transaction`
--
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

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_cash`
--

CREATE TABLE IF NOT EXISTS `fees_payment_cash` (
  `fees_payment_cash_id` int(7) NOT NULL AUTO_INCREMENT,
  `fees_payment_cash_amount` int(7) NOT NULL,
  PRIMARY KEY (`fees_payment_cash_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fees_payment_cash`
--

INSERT INTO `fees_payment_cash` (`fees_payment_cash_id`, `fees_payment_cash_amount`) VALUES
(1, 1200);

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
  `fees_payment_cheque_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`fees_payment_cheque_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `fees_payment_cheque`
--

INSERT INTO `fees_payment_cheque` (`fees_payment_cheque_id`, `fees_payment_cheque_number`, `fees_payment_cheque_date`, `fees_payment_cheque_bank`, `fees_payment_cheque_branch`, `fees_payment_cheque_amount`, `fees_payment_cheque_status`, `fees_payment_cheque_organization_id`) VALUES
(1, 3432, '2012-08-01 00:00:00', 2, 'resr', 232, 0, 0),
(2, 456, '2012-06-12 00:00:00', 3, 'test', 56, 0, 0),
(3, 789, '2012-06-03 00:00:00', 1, 'test', 45, 0, 0),
(4, 567, '2012-05-09 00:00:00', 2, 'tdt', 45, 0, 0),
(5, 123, '2012-05-04 00:00:00', 1, 'tetee', 56, 0, 0),
(6, 789, '2012-05-03 00:00:00', 2, 'test', 56, 0, 0),
(7, 123, '2012-05-04 00:00:00', 1, 'test', 56, 0, 0),
(8, 789, '2012-11-03 00:00:00', 3, 'td', 567, 0, 0),
(9, 678, '2012-12-27 00:00:00', 3, 'rr', 5, 0, 0),
(10, 89, '2012-12-28 00:00:00', 2, 'tst', 23, 0, 0);

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
  `fees_payment_transaction_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`fees_payment_transaction_id`),
  KEY `fk_fees_pay_method` (`fees_payment_method_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `fees_payment_transaction`
--

INSERT INTO `fees_payment_transaction` (`fees_payment_transaction_id`, `fees_payment_master_id`, `fees_payment_method_id`, `fees_payment_cash_cheque_id`, `fees_receipt_id`, `fees_payment`, `fees_received_user_id`, `fees_full_part_payment_id`, `fees_student_id`, `fees_payment_transaction_organization_id`) VALUES
(2, 1, 2, 1, 5, 1, 2, 1, 1, 0),
(8, 1, 2, 7, 11, 1, 2, 1, 1, 0),
(9, 1, 2, 8, 12, 1, 2, 1, 1, 0),
(10, 1, 2, 9, 13, 1, 2, 1, 1, 0),
(11, 1, 2, 10, 14, 1, 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_type`
--

CREATE TABLE IF NOT EXISTS `fees_payment_type` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `fees_type_name` varchar(25) NOT NULL,
  `fees_payment_type_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_payment_type`
--

INSERT INTO `fees_payment_type` (`id`, `fees_type_name`, `fees_payment_type_organization_id`) VALUES
(1, 'Credit', 1),
(2, 'debit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fees_receipt`
--

CREATE TABLE IF NOT EXISTS `fees_receipt` (
  `fees_receipt_id` int(7) NOT NULL AUTO_INCREMENT,
  `fees_receipt_number` int(7) DEFAULT NULL,
  PRIMARY KEY (`fees_receipt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

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
(14, NULL);

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
-- Table structure for table `give_feedback`
--

CREATE TABLE IF NOT EXISTS `give_feedback` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `question_id` int(5) NOT NULL,
  `rank` int(5) NOT NULL,
  `feedback_master_id` int(5) NOT NULL,
  `give_feedback_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gtunotice`
--

CREATE TABLE IF NOT EXISTS `gtunotice` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Description` varchar(50) NOT NULL,
  `Link` varchar(200) NOT NULL,
  `Created_By` varchar(30) NOT NULL,
  `Created_date` date NOT NULL,
  `gtunotice_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `notice_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_name`, `languages_organization_id`, `languages_created_by`, `languages_created_date`) VALUES
(1, 'English', 1, 2, '2012-05-16 09:44:00'),
(2, 'Gujarati', 1, 2, '2012-05-16 09:44:11'),
(3, 'Hindi', 1, 2, '2012-05-16 09:44:29'),
(4, 'Marathi', 1, 2, '2012-05-16 09:45:11'),
(5, 'Punjabi', 1, 2, '2012-05-16 09:45:21'),
(6, 'NA', 1, 2, '2012-07-26 09:29:25');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=311 ;

--
-- Dumping data for table `languages_known`
--

INSERT INTO `languages_known` (`languages_known_id`, `languages_known1`, `languages_known2`, `languages_known3`, `languages_known4`) VALUES
(1, 1, 6, 6, 6),
(2, 1, 6, 6, 6),
(3, 1, 6, 6, 6),
(4, 1, 6, 6, 6),
(5, 1, 6, 6, 6),
(6, 1, 6, 6, 6),
(7, 1, 6, 6, 6),
(8, 1, 6, 6, 6),
(9, 1, 6, 6, 6),
(10, 1, 6, 6, 6),
(11, 1, 6, 6, 6),
(12, 1, 6, 6, 6),
(13, 1, 6, 6, 6),
(14, 1, 6, 6, 6),
(15, 1, 6, 6, 6),
(16, 1, 6, 6, 6),
(17, 1, 6, 6, 6),
(18, 1, 6, 6, 6),
(19, 1, 6, 6, 6),
(20, 1, 6, 6, 6),
(21, 1, 6, 6, 6),
(22, 1, 6, 6, 6),
(23, 1, 6, 6, 6),
(24, 1, 6, 6, 6),
(25, 1, 6, 6, 6),
(26, 1, 6, 6, 6),
(27, 1, 6, 6, 6),
(28, 1, 6, 6, 6),
(29, 1, 6, 6, 6),
(30, 1, 6, 6, 6),
(31, 1, 6, 6, 6),
(32, 1, 6, 6, 6),
(33, 1, 6, 6, 6),
(34, 1, 6, 6, 6),
(35, 1, 6, 6, 6),
(36, 1, 6, 6, 6),
(37, 1, 6, 6, 6),
(38, 1, 6, 6, 6),
(39, 1, 6, 6, 6),
(40, 1, 6, 6, 6),
(41, 1, 6, 6, 6),
(42, 1, 6, 6, 6),
(43, 1, 6, 6, 6),
(44, 1, 6, 6, 6),
(45, 1, 6, 6, 6),
(46, 1, 6, 6, 6),
(47, 1, 6, 6, 6),
(48, 1, 6, 6, 6),
(49, 1, 6, 6, 6),
(50, 1, 6, 6, 6),
(51, 1, 6, 6, 6),
(52, 1, 6, 6, 6),
(53, 1, 6, 6, 6),
(54, 1, 6, 6, 6),
(55, 1, 6, 6, 6),
(56, 1, 6, 6, 6),
(57, 1, 6, 6, 6),
(58, 1, 6, 6, 6),
(59, 1, 6, 6, 6),
(60, 1, 6, 6, 6),
(61, 1, 6, 6, 6),
(62, 1, 6, 6, 6),
(63, 1, 6, 6, 6),
(64, 1, 6, 6, 6),
(65, 1, 6, 6, 6),
(66, 1, 6, 6, 6),
(67, 1, 6, 6, 6),
(68, 1, 6, 6, 6),
(69, 1, 6, 6, 6),
(70, 1, 6, 6, 6),
(71, 1, 6, 6, 6),
(72, 1, 6, 6, 6),
(73, 1, 6, 6, 6),
(74, 1, 6, 6, 6),
(75, 1, 6, 6, 6),
(76, 1, 6, 6, 6),
(77, 1, 6, 6, 6),
(78, 1, 6, 6, 6),
(79, 1, 6, 6, 6),
(80, 1, 6, 6, 6),
(81, 1, 6, 6, 6),
(82, 1, 6, 6, 6),
(83, 1, 6, 6, 6),
(84, 1, 6, 6, 6),
(85, 1, 6, 6, 6),
(86, 1, 6, 6, 6),
(87, 1, 6, 6, 6),
(88, 1, 6, 6, 6),
(89, 1, 6, 6, 6),
(90, 1, 6, 6, 6),
(91, 1, 6, 6, 6),
(92, 1, 6, 6, 6),
(93, 1, 6, 6, 6),
(94, 1, 6, 6, 6),
(95, 1, 6, 6, 6),
(96, 1, 6, 6, 6),
(97, 1, 6, 6, 6),
(98, 1, 6, 6, 6),
(99, 1, 6, 6, 6),
(100, 1, 6, 6, 6),
(101, 1, 6, 6, 6),
(102, 1, 6, 6, 6),
(103, 1, 6, 6, 6),
(104, 1, 6, 6, 6),
(105, 1, 6, 6, 6),
(106, 1, 6, 6, 6),
(107, 1, 6, 6, 6),
(108, 1, 6, 6, 6),
(109, 1, 6, 6, 6),
(110, 1, 6, 6, 6),
(111, 1, 6, 6, 6),
(112, 1, 6, 6, 6),
(113, 1, 6, 6, 6),
(114, 1, 6, 6, 6),
(115, 1, 6, 6, 6),
(116, 1, 6, 6, 6),
(117, 1, 6, 6, 6),
(118, 1, 6, 6, 6),
(119, 1, 6, 6, 6),
(120, 1, 6, 6, 6),
(121, 1, 6, 6, 6),
(122, 1, 6, 6, 6),
(123, 1, 6, 6, 6),
(124, 1, 6, 6, 6),
(125, 1, 6, 6, 6),
(126, 1, 6, 6, 6),
(127, 1, 6, 6, 6),
(128, 1, 6, 6, 6),
(129, 1, 6, 6, 6),
(130, 1, 6, 6, 6),
(131, 1, 6, 6, 6),
(132, 1, 6, 6, 6),
(133, 1, 6, 6, 6),
(134, 1, 6, 6, 6),
(135, 1, 6, 6, 6),
(136, 1, 6, 6, 6),
(137, 1, 6, 6, 6),
(138, 1, 6, 6, 6),
(139, 1, 6, 6, 6),
(140, 1, 6, 6, 6),
(141, 1, 6, 6, 6),
(142, 1, 6, 6, 6),
(143, 1, 6, 6, 6),
(144, 1, 6, 6, 6),
(145, 1, 6, 6, 6),
(146, 1, 6, 6, 6),
(147, 1, 6, 6, 6),
(148, 1, 6, 6, 6),
(149, 1, 6, 6, 6),
(150, 1, 6, 6, 6),
(151, 1, 6, 6, 6),
(152, 1, 6, 6, 6),
(153, 1, 6, 6, 6),
(154, 1, 6, 6, 6),
(155, 1, 6, 6, 6),
(156, 1, 6, 6, 6),
(157, 1, 6, 6, 6),
(158, 1, 6, 6, 6),
(159, 1, 6, 6, 6),
(160, 1, 6, 6, 6),
(161, 1, 6, 6, 6),
(162, 1, 6, 6, 6),
(163, 1, 6, 6, 6),
(164, 1, 6, 6, 6),
(165, 1, 6, 6, 6),
(166, 1, 6, 6, 6),
(167, 1, 6, 6, 6),
(168, 1, 6, 6, 6),
(169, 1, 6, 6, 6),
(170, 1, 6, 6, 6),
(171, 1, 6, 6, 6),
(172, 1, 6, 6, 6),
(173, 1, 6, 6, 6),
(174, 1, 6, 6, 6),
(175, 1, 6, 6, 6),
(176, 1, 6, 6, 6),
(177, 1, 6, 6, 6),
(178, 1, 6, 6, 6),
(179, 1, 6, 6, 6),
(180, 1, 6, 6, 6),
(181, 1, 6, 6, 6),
(182, 1, 6, 6, 6),
(183, 1, 6, 6, 6),
(184, 1, 6, 6, 6),
(185, 1, 6, 6, 6),
(186, 1, 6, 6, 6),
(187, 1, 6, 6, 6),
(188, 1, 6, 6, 6),
(189, 1, 6, 6, 6),
(190, 1, 6, 6, 6),
(191, 1, 6, 6, 6),
(192, 1, 6, 6, 6),
(193, 1, 6, 6, 6),
(194, 1, 6, 6, 6),
(195, 1, 6, 6, 6),
(196, 1, 6, 6, 6),
(197, 1, 6, 6, 6),
(198, 1, 6, 6, 6),
(199, 1, 6, 6, 6),
(200, 1, 6, 6, 6),
(201, 1, 6, 6, 6),
(202, 1, 6, 6, 6),
(203, 1, 6, 6, 6),
(204, 1, 6, 6, 6),
(205, 1, 6, 6, 6),
(206, 1, 6, 6, 6),
(207, 1, 6, 6, 6),
(208, 1, 6, 6, 6),
(209, 1, 6, 6, 6),
(210, 1, 6, 6, 6),
(211, 1, 6, 6, 6),
(212, 1, 6, 6, 6),
(213, 1, 6, 6, 6),
(214, 1, 6, 6, 6),
(215, 1, 6, 6, 6),
(216, 1, 6, 6, 6),
(217, 1, 6, 6, 6),
(218, 1, 6, 6, 6),
(219, 1, 6, 6, 6),
(220, 1, 6, 6, 6),
(221, 1, 6, 6, 6),
(222, 1, 6, 6, 6),
(223, 1, 6, 6, 6),
(224, 1, 6, 6, 6),
(225, 1, 6, 6, 6),
(226, 1, 6, 6, 6),
(227, 1, 6, 6, 6),
(228, 1, 6, 6, 6),
(229, 1, 6, 6, 6),
(230, 1, 6, 6, 6),
(231, 1, 6, 6, 6),
(232, 1, 6, 6, 6),
(233, 1, 6, 6, 6),
(234, 1, 6, 6, 6),
(235, 1, 6, 6, 6),
(236, 1, 6, 6, 6),
(237, 1, 6, 6, 6),
(238, 1, 6, 6, 6),
(239, 1, 6, 6, 6),
(240, 1, 6, 6, 6),
(241, 1, 6, 6, 6),
(242, 1, 6, 6, 6),
(243, 1, 6, 6, 6),
(244, 1, 6, 6, 6),
(245, 1, 6, 6, 6),
(246, 1, 6, 6, 6),
(247, 1, 6, 6, 6),
(248, 1, 6, 6, 6),
(249, 1, 6, 6, 6),
(250, 1, 6, 6, 6),
(251, 1, 6, 6, 6),
(252, 1, 6, 6, 6),
(253, 1, 6, 6, 6),
(254, 1, 6, 6, 6),
(255, 1, 6, 6, 6),
(256, 1, 3, 2, 6),
(257, 1, 3, 2, 6),
(258, 1, 3, 2, 6),
(259, 1, 3, 2, 6),
(260, 1, 3, 2, 6),
(261, 1, 3, 2, 6),
(262, 1, 3, 2, 6),
(263, 1, 3, 2, 6),
(264, 1, 3, 2, 6),
(265, 1, 3, 2, 6),
(266, 1, 3, 2, 6),
(267, 1, 3, 2, 6),
(268, 1, 3, 2, 6),
(269, 1, 3, 2, 6),
(270, 1, 3, 2, 6),
(271, 1, 3, 2, 6),
(272, 1, 3, 2, 6),
(273, 1, 3, 2, 6),
(274, 1, 3, 2, 6),
(275, 1, 3, 2, 6),
(276, 1, 3, 2, 6),
(277, 1, 3, 2, 6),
(278, 1, 3, 2, 6),
(279, 1, 3, 2, 6),
(280, 1, 3, 2, 6),
(281, 1, 3, 2, 6),
(282, 1, 3, 2, 6),
(283, 1, 3, 2, 6),
(284, 1, 3, 2, 6),
(285, 1, 3, 2, 6),
(286, 1, 3, 2, 6),
(287, 1, 3, 2, 6),
(288, 1, 3, 2, 6),
(289, 1, 3, 2, 6),
(290, 1, 3, 2, 6),
(291, 1, 3, 2, 6),
(292, 1, 3, 2, 6),
(293, 1, 3, 2, 6),
(294, 1, 3, 2, 6),
(295, 1, 3, 2, 6),
(296, 1, 3, 2, 6),
(297, 1, 3, 2, 6),
(298, 1, 3, 2, 6),
(299, 1, 3, 2, 6),
(300, 1, 3, 2, 6),
(301, 1, 3, 2, 6),
(302, 1, 3, 2, 6),
(303, 1, 3, 2, 6),
(304, 1, 3, 2, 6),
(305, 1, 3, 2, 6),
(306, 1, 3, 2, 6),
(307, 1, 3, 2, 6),
(308, 1, 3, 2, 6),
(309, 1, 3, 2, 6),
(310, 1, 3, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE IF NOT EXISTS `login_user` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `user_id` int(3) NOT NULL,
  `status` int(1) NOT NULL,
  `log_in_time` datetime NOT NULL,
  `log_out_time` datetime DEFAULT NULL,
  `user_ip_address` varchar(16) NOT NULL,
  `login_organization_id` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `user_id`, `status`, `log_in_time`, `log_out_time`, `user_ip_address`, `login_organization_id`) VALUES
(1, 2, 0, '2012-08-06 10:02:28', '2012-08-06 10:02:47', '127.0.0.1', 1),
(2, 2, 0, '2012-08-06 10:15:57', '2012-08-06 10:16:08', '127.0.0.1', 2),
(3, 2, 1, '2012-08-06 10:59:15', NULL, '127.0.0.1', 1);

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `miscellaneous_fees_master`
--

CREATE TABLE IF NOT EXISTS `miscellaneous_fees_master` (
  `miscellaneous_fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `miscellaneous_fees_name` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `miscellaneous_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`miscellaneous_fees_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `miscellaneous_fees_master`
--

INSERT INTO `miscellaneous_fees_master` (`miscellaneous_fees_id`, `miscellaneous_fees_name`, `created_by`, `creation_date`, `miscellaneous_organization_id`) VALUES
(1, 'Late fees payment', 2, '2012-08-03 14:40:10', 1);

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
  `miscellaneous_fees_payment_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`miscellaneous_fees_payment_cash_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `miscellaneous_fees_payment_cash`
--

INSERT INTO `miscellaneous_fees_payment_cash` (`miscellaneous_fees_payment_cash_id`, `miscellaneous_fees_payment_cash_master_id`, `miscellaneous_fees_payment_cash_amount`, `miscellaneous_fees_payment_cash_student_id`, `miscellaneous_fees_payment_cash_receipt_id`, `miscellaneous_fees_payment_cash_created_by`, `miscellaneous_fees_payment_cash_creation_date`, `miscellaneous_fees_payment_organization_id`) VALUES
(1, 1, 500, 1, 2, 2, '2012-08-03 14:40:47', 1),
(2, 1, 300, 1, 3, 2, '2012-08-03 14:47:09', 1),
(3, 1, 3256, 5, 4, 2, '2012-08-03 15:14:06', 1);

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
  `miscellaneous_fees_payment_cheque_draft_status` int(3) NOT NULL,
  `miscellaneous_fees_payment_cheque_student_id` int(7) NOT NULL,
  `miscellaneous_fees_payment_cheque_receipt_id` int(7) NOT NULL,
  `miscellaneous_fees_payment_cheque_created_by` int(3) NOT NULL,
  `miscellaneous_fees_payment_cheque_creation_date` datetime NOT NULL,
  `miscellaneous_fees_payment_cheque_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`miscellaneous_fees_payment_cheque_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `miscellaneous_fees_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `miscellaneous_fees_payment_transaction` (
  `miscellaneous_trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `miscellaneous_fees_id` int(11) NOT NULL,
  `student_fees_id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `miscellaneous_fees_payment_transaction_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`miscellaneous_trans_id`),
  KEY `fk_misce_id` (`miscellaneous_fees_id`),
  KEY `fk_stud_trans_id` (`student_fees_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
-- Table structure for table `no_of_break_table`
--

CREATE TABLE IF NOT EXISTS `no_of_break_table` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `timetable_id` int(5) NOT NULL,
  `day` int(5) DEFAULT NULL,
  `after_lec_break` int(5) NOT NULL,
  `duration` time NOT NULL,
  `branch_id` int(5) NOT NULL,
  `div_id` int(5) NOT NULL,
  `acdm_period_id` int(5) NOT NULL,
  `acdm_name_id` int(5) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` datetime NOT NULL,
  `no_of_break_table_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
  `organization_id` int(2) NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(50) NOT NULL,
  `organization_created_by` int(3) NOT NULL,
  `organization_creation_date` datetime NOT NULL,
  `address_line1` varchar(50) NOT NULL,
  `address_line2` varchar(50) NOT NULL,
  `city` int(3) NOT NULL,
  `state` int(3) NOT NULL,
  `country` int(3) NOT NULL,
  `pin` int(6) NOT NULL,
  `phone` int(10) NOT NULL,
  `website` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `taxno` int(6) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  PRIMARY KEY (`organization_id`),
  KEY `fk_org_city` (`city`),
  KEY `fk_org_state` (`state`),
  KEY `fk_org_country` (`country`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`organization_id`, `organization_name`, `organization_created_by`, `organization_creation_date`, `address_line1`, `address_line2`, `city`, `state`, `country`, `pin`, `phone`, `website`, `email`, `taxno`, `logo`) VALUES
(1, 'Hansaba College of Engineering & Technology', 1, '2012-05-15 12:34:36', 'At: Sujanpur Patia,Opp.I.O.C.Depot,', 'State Highway No-41,', 151, 10, 106, 384151, 0, 'http://www.hansaba.com', 'info@hansaba.com', 0, 'Hansaba College of Engineering and Technology.jpg'),
(2, 'Gokul Engineering College', 1, '2012-05-30 12:04:30', 'Gokul Engineering College', '', 1, 1, 1, 0, 0, 'www.gokul.com', 'info@hansaba.com', 0, 'Gokul Engineering College.jpg');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`qualification_id`, `qualification_name`, `qualification_organization_id`, `qualification_created_by`, `qualification_created_date`) VALUES
(1, 'Ph.D.', 1, 2, '2012-06-06 01:40:45'),
(2, 'M. Phil.', 1, 2, '2012-06-06 01:40:58'),
(3, 'M. Tech. / M.E.', 1, 2, '2012-07-25 16:03:27'),
(4, 'M.B.A.', 1, 2, '2012-07-25 16:03:41'),
(5, 'B. Tech / B.E.', 1, 2, '2012-07-25 16:03:56'),
(6, 'B.B.A.', 1, 2, '2012-07-25 16:04:06'),
(7, 'M.A. / M.Com. / M.Sc./M.Sc.IT.', 1, 2, '2012-07-25 16:04:31'),
(8, 'M. Lib.', 1, 2, '2012-07-25 16:04:44'),
(9, 'B.A. / B. Com / B.Sc.', 1, 2, '2012-07-25 16:05:02'),
(10, 'B. Lib.', 1, 2, '2012-07-25 16:05:17'),
(11, 'Diploma', 1, 2, '2012-07-25 16:05:28'),
(12, 'P.G.D.C.A.', 1, 2, '2012-07-25 16:05:40'),
(13, 'I.T.I.', 1, 2, '2012-07-25 16:05:52');

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
(7, 'NA', 1, 2, '2012-07-26 09:40:22');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`religion_id`, `religion_name`, `religion_organization_id`, `religion_created_by`, `religion_created_date`) VALUES
(1, 'Hindu', 1, 2, '2012-05-15 18:46:15'),
(2, 'Muslim', 1, 2, '2012-05-15 18:46:37'),
(3, 'Christian', 1, 2, '2012-05-15 18:46:48'),
(4, 'Jain', 1, 2, '2012-05-15 18:47:03'),
(5, 'Other', 1, 2, '2012-07-25 16:06:58');

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

--
-- Dumping data for table `Rights`
--

INSERT INTO `Rights` (`itemname`, `type`, `weight`) VALUES
('AcademicTerm.Admin', 0, 0),
('AcademicTerm.View', 0, 1),
('AcademicTermPeriod.*', 0, 2),
('AcademicTermPeriod.Admin', 0, 3),
('AcademicTermPeriod.View', 0, 4),
('Assets.*', 0, 5),
('Assets.Admin', 0, 6),
('Assets.View', 0, 7),
('AssetsDetails.*', 0, 8),
('AssetsDetails.Admin', 0, 9),
('AssetsDetails.View', 0, 10),
('AssignCompanyUserTable.*', 0, 11),
('AssignSubject.*', 0, 12),
('Attendence.Admin', 0, 13),
('Attendence.View', 0, 14),
('BankMaster.*', 0, 15),
('BankMaster.Admin', 0, 16),
('BankMaster.View', 0, 17),
('Batch.*', 0, 18),
('Batch.Admin', 0, 19),
('Batch.View', 0, 20),
('BlockUserTable.*', 0, 21),
('Branch.*', 0, 22),
('Branch.Admin', 0, 23),
('Branch.View', 0, 24),
('Category.*', 0, 25),
('Category.Admin', 0, 26),
('Category.View', 0, 27),
('City.*', 0, 28),
('City.Admin', 0, 29),
('City.View', 0, 30),
('Country.*', 0, 31),
('Country.Admin', 0, 32),
('Country.View', 0, 33),
('Department.*', 0, 34),
('Department.Admin', 0, 35),
('Department.View', 0, 36),
('Division.*', 0, 37),
('Division.Admin', 0, 38),
('Division.View', 0, 39),
('Eduboard.Admin', 0, 40),
('Eduboard.View', 0, 41),
('EmployeeDesignation.*', 0, 42),
('EmployeeDesignation.Admin', 0, 43),
('EmployeeDesignation.View', 0, 44),
('EmployeeDocs.*', 0, 45),
('EmployeeDocsTrans.*', 0, 46),
('EmployeeExperienceTrans.*', 0, 47),
('EmployeeSmsEmailDetails.Admin', 0, 48),
('EmployeeSmsEmailDetails.View', 0, 49),
('EmployeeTimetable.Admin', 0, 50),
('EmployeeTransaction.*', 0, 51),
('EmployeeTransaction.Admin', 0, 52),
('Employee_attendence.Admin', 0, 53),
('Employee_attendence.View', 0, 54),
('FeedbackDetails.*', 0, 55),
('FeedbackDetails.Admin', 0, 56),
('FeedbackDetails.View', 0, 57),
('FeedbackMaster.*', 0, 58),
('FeedbackMaster.Admin', 0, 59),
('FeedbackMaster.View', 0, 60),
('FeesDetailsTable.*', 0, 61),
('FeesDetailsTable.Admin', 0, 62),
('FeesDetailsTable.View', 0, 63),
('FeesMaster.*', 0, 64),
('FeesMaster.Admin', 0, 65),
('FeesMaster.View', 0, 66),
('FeesMasterTransaction.*', 0, 67),
('FeesMasterTransaction.Admin', 0, 68),
('FeesMasterTransaction.View', 0, 69),
('FeesPaymentCash.*', 0, 70),
('FeesPaymentCheque.*', 0, 71),
('FeesPaymentMethod.*', 0, 72),
('FeesPaymentMethod.Admin', 0, 73),
('FeesPaymentMethod.View', 0, 74),
('FeesPaymentTransaction.*', 0, 75),
('FeesPaymentTransaction.Admin', 0, 76),
('FeesPaymentTransaction.Paid', 0, 77),
('FeesPaymentTransaction.Total', 0, 78),
('FeesPaymentTransaction.UnPaid', 0, 79),
('FeesPaymentTransaction.View', 0, 80),
('FeesPaymentType.*', 0, 81),
('FeesPaymentType.Admin', 0, 82),
('FeesPaymentType.View', 0, 83),
('FeesReceipt.*', 0, 84),
('FeesReceipt.Admin', 0, 85),
('FeesReceipt.View', 0, 86),
('FeesTermsAndCondition.*', 0, 87),
('FeesTermsAndCondition.Admin', 0, 88),
('FeesTermsAndCondition.View', 0, 89),
('Givefeedback.Admin', 0, 90),
('Givefeedback.View', 0, 91),
('Gtunotice.*', 0, 92),
('Gtunotice.Admin', 0, 93),
('Gtunotice.View', 0, 94),
('Holidays.*', 0, 95),
('Holidays.Admin', 0, 96),
('Holidays.View', 0, 97),
('ImportantNotice.*', 0, 98),
('ImportantNotice.Admin', 0, 99),
('ImportantNotice.View', 0, 100),
('Inward.*', 0, 101),
('Inward.Admin', 0, 102),
('Inward.View', 0, 103),
('InwardDetails.*', 0, 104),
('ItemCategory.*', 0, 105),
('ItemCategory.Admin', 0, 106),
('ItemCategory.View', 0, 107),
('Languages.*', 0, 108),
('Languages.Admin', 0, 109),
('Languages.View', 0, 110),
('LanguagesKnown.*', 0, 111),
('LoginUser.Admin', 0, 112),
('LoginUser.View', 0, 113),
('MessageOfDay.*', 0, 114),
('MessageOfDay.Admin', 0, 115),
('MessageOfDay.View', 0, 116),
('MiscellaneousFeesMaster.*', 0, 117),
('MiscellaneousFeesMaster.Admin', 0, 118),
('MiscellaneousFeesMaster.View', 0, 119),
('MiscellaneousFeesPaymentCash.*', 0, 120),
('MiscellaneousFeesPaymentCash.Admin', 0, 121),
('MiscellaneousFeesPaymentCash.View', 0, 122),
('MiscellaneousFeesPaymentCheque.*', 0, 123),
('MiscellaneousFeesPaymentCheque.Admin', 0, 124),
('MiscellaneousFeesPaymentCheque.View', 0, 125),
('MiscellaneousFeesPaymentTransaction.*', 0, 126),
('MiscellaneousFeesPaymentTransactionC.Admin', 0, 127),
('MiscellaneousFeesPaymentTransactionC.Madmin', 0, 128),
('MiscellaneousFeesPaymentTransactionC.View', 0, 129),
('Nationality.*', 0, 130),
('Nationality.Admin', 0, 131),
('Nationality.View', 0, 132),
('Organization.*', 0, 133),
('Outward.*', 0, 134),
('Outward.Admin', 0, 135),
('Outward.View', 0, 136),
('OutwardDetails.*', 0, 137),
('OutwardDetails.Admin', 0, 138),
('OutwardDetails.View', 0, 139),
('Qualification.*', 0, 140),
('Qualification.Admin', 0, 141),
('Qualification.View', 0, 142),
('Quota.*', 0, 143),
('Quota.Admin', 0, 144),
('Quota.View', 0, 145),
('Religion.*', 0, 146),
('Religion.Admin', 0, 147),
('Religion.View', 0, 148),
('RoomCategory.Admin', 0, 149),
('RoomCategory.View', 0, 150),
('RoomDetailsMaster.Admin', 0, 151),
('RoomDetailsMaster.View', 0, 152),
('Shift.*', 0, 153),
('Shift.Admin', 0, 154),
('Shift.View', 0, 155),
('Site.*', 0, 156),
('State.*', 0, 157),
('State.Admin', 0, 158),
('State.View', 0, 159),
('StudentDocs.*', 0, 160),
('StudentDocsTrans.*', 0, 161),
('StudentSmsEmailDetails.Admin', 0, 162),
('StudentSmsEmailDetails.View', 0, 163),
('StudentTransaction.*', 0, 167),
('StudentTransaction.Admin', 0, 164),
('StudentTransaction.View', 0, 165),
('SubjectExaminationMark.Admin', 0, 166),
('SubjectExaminationMark.View', 0, 168),
('SubjectGuidelines.Admin', 0, 169),
('SubjectGuidelines.View', 0, 170),
('SubjectMaster.*', 0, 171),
('SubjectMaster.Admin', 0, 172),
('SubjectMaster.View', 0, 173),
('SubjectRefbook.Admin', 0, 174),
('SubjectRefbook.View', 0, 175),
('SubjectSyllabus.Admin', 0, 176),
('SubjectSyllabus.View', 0, 177),
('SubjectTeachingSchema.Admin', 0, 178),
('SubjectTeachingSchema.View', 0, 179),
('SubjectTextbook.Admin', 0, 180),
('SubjectTextbook.View', 0, 181),
('SubjectType.*', 0, 182),
('SubjectType.Admin', 0, 183),
('SubjectType.View', 0, 184),
('User.*', 0, 185),
('VisitorPass.*', 0, 186),
('Year.*', 0, 187);

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE IF NOT EXISTS `role_master` (
  `role_master_id` int(2) NOT NULL AUTO_INCREMENT,
  `role_master_name` varchar(15) NOT NULL,
  PRIMARY KEY (`role_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `room_category_master`
--

CREATE TABLE IF NOT EXISTS `room_category_master` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `room_category_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `room_category_master`
--

INSERT INTO `room_category_master` (`id`, `category_name`, `created_by`, `creation_time`, `room_category_organization_id`) VALUES
(2, 'Lab', '2', '2012-06-11 01:13:18', 1),
(3, 'classroom', '2', '2012-06-11 01:13:53', 1),
(4, 'Audi', '2', '2012-06-11 02:19:13', 1),
(5, 'Drawing', '2', '2012-07-24 09:22:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_details_master`
--

CREATE TABLE IF NOT EXISTS `room_details_master` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `seat_capacity` int(30) NOT NULL,
  `room_category` int(100) NOT NULL,
  `no_of_banches` int(30) NOT NULL,
  `remarks` text,
  `room_details_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_room_category` (`room_category`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `room_details_master`
--

INSERT INTO `room_details_master` (`id`, `room_name`, `location`, `seat_capacity`, `room_category`, `no_of_banches`, `remarks`, `room_details_organization_id`) VALUES
(7, 'A-100', 'First Floor', 50, 3, 25, '', 1),
(8, 'A-101', 'First Floor', 60, 3, 30, '', 1),
(9, 'A-102', 'First Floor', 80, 3, 40, '', 1),
(10, 'A-103', 'First Floor', 50, 3, 25, '', 1),
(11, 'Lab-A', 'Ground Floor', 30, 2, 15, '', 1),
(12, 'Lab-B', 'First Floor', 30, 2, 15, '', 1),
(13, 'Lab-C', 'Second Floor', 30, 2, 15, '', 1),
(14, 'Lab-D', 'third floor', 30, 2, 15, '', 1),
(15, 'abc', 'test', 48, 2, 24, '', 1);

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
  `student_academic_record_trans_stud_id` int(5) NOT NULL,
  `student_academic_record_trans_qualification_id` int(3) NOT NULL,
  `student_academic_record_trans_eduboard_id` int(3) NOT NULL,
  `student_academic_record_trans_record_trans_year_id` int(5) NOT NULL,
  `theory_mark_obtained` int(3) NOT NULL,
  `theory_mark_max` int(3) NOT NULL,
  `theory_percentage` float NOT NULL,
  `practical_mark_obtained` int(3) NOT NULL,
  `practical_mark_max` int(3) NOT NULL,
  `practical_percentage` float NOT NULL,
  PRIMARY KEY (`student_academic_record_trans_id`),
  KEY `fk_qualification` (`student_academic_record_trans_qualification_id`),
  KEY `fk_eduboard` (`student_academic_record_trans_eduboard_id`),
  KEY `fk_year` (`student_academic_record_trans_record_trans_year_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_address`
--

CREATE TABLE IF NOT EXISTS `student_address` (
  `student_address_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_address_c_line1` varchar(100) NOT NULL,
  `student_address_c_line2` varchar(100) NOT NULL,
  `student_address_c_country` int(9) NOT NULL,
  `student_address_c_city` int(9) NOT NULL,
  `student_address_c_pin` int(6) NOT NULL,
  `student_address_c_state` int(9) NOT NULL,
  `student_address_p_line1` varchar(100) NOT NULL,
  `student_address_p_line2` varchar(100) NOT NULL,
  `student_address_p_city` int(9) NOT NULL,
  `student_address_p_pin` int(6) NOT NULL,
  `student_address_p_state` int(9) NOT NULL,
  `student_address_p_country` int(9) NOT NULL,
  `student_address_phone` bigint(15) DEFAULT NULL,
  `student_address_mobile` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`student_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=255 ;

--
-- Dumping data for table `student_address`
--

INSERT INTO `student_address` (`student_address_id`, `student_address_c_line1`, `student_address_c_line2`, `student_address_c_country`, `student_address_c_city`, `student_address_c_pin`, `student_address_c_state`, `student_address_p_line1`, `student_address_p_line2`, `student_address_p_city`, `student_address_p_pin`, `student_address_p_state`, `student_address_p_country`, `student_address_phone`, `student_address_mobile`) VALUES
(1, 'Aithor, Ta. Unjha, Dt.Mehsana', 'Aithor, Ta. Unjha, Dt.Mehsana', 106, 65, 384175, 10, 'Aithor, Ta. Unjha, Dt.Mehsana', 'Aithor, Ta. Unjha, Dt.Mehsana', 65, 384175, 10, 106, 1, 9723370184),
(2, 'Po. Motovas, Biliya, Ta. Sidhpur, Dist. Patan, 384151', 'Po. Motovas, Biliya, Ta. Sidhpur, Dist. Patan, 384151', 106, 135, 384151, 10, 'Po. Motovas, Biliya, Ta. Sidhpur, Dist. Patan, 384151', 'Po. Motovas, Biliya, Ta. Sidhpur, Dist. Patan, 384151', 135, 384151, 10, 106, 1, 9898938928),
(3, '15-B Sardar Nagar Society, Near. Sun Nagar, Sidhpur-384151', '15-B Sardar Nagar Society, Near. Sun Nagar, Sidhpur-384151', 106, 151, 384151, 10, '15-B Sardar Nagar Society, Near. Sun Nagar, Sidhpur-384151', '15-B Sardar Nagar Society, Near. Sun Nagar, Sidhpur-384151', 151, 384151, 10, 106, 1, 8866025613),
(4, '23/B,108,Umiya Krupa Society,\nOpp:Nirma Factory,Modhera Road. Mehsana', '23/B,108,Umiya Krupa Society,\nOpp:Nirma Factory,Modhera Road. Mehsana', 106, 168, 384002, 10, '23/B,108,Umiya Krupa Society,\nOpp:Nirma Factory,Modhera Road. Mehsana', '23/B,108,Umiya Krupa Society,\nOpp:Nirma Factory,Modhera Road. Mehsana', 168, 384002, 10, 106, 1, 9737763943),
(5, '4-Ashirvad Bunglow, Nr.Kishan Oil Mill, \nAhmedabad Highway, Palanpur-385001', '4-Ashirvad Bunglow, Nr.Kishan Oil Mill, \nAhmedabad Highway, Palanpur-385001', 106, 130, 385001, 10, '4-Ashirvad Bunglow, Nr.Kishan Oil Mill, \nAhmedabad Highway, Palanpur-385001', '4-Ashirvad Bunglow, Nr.Kishan Oil Mill, \nAhmedabad Highway, Palanpur-385001', 130, 385001, 10, 106, 1, 8401836953),
(6, 'Ambajipura, At. Kunvara, Tal-Sidhpur, \nDist. Patan.384151', 'Ambajipura, At. Kunvara, Tal-Sidhpur, \nDist. Patan.384151', 106, 135, 384151, 10, 'Ambajipura, At. Kunvara, Tal-Sidhpur, \nDist. Patan.384151', 'Ambajipura, At. Kunvara, Tal-Sidhpur, \nDist. Patan.384151', 135, 384151, 10, 106, 1, 9601876790),
(7, 'At :Unjha,Jasakiyaparu,\nNr.Rambaug School,Unjha', 'At :Unjha,Jasakiyaparu,\nNr.Rambaug School,Unjha', 106, 165, 384170, 10, 'At :Unjha,Jasakiyaparu,\nNr.Rambaug School,Unjha', 'At :Unjha,Jasakiyaparu,\nNr.Rambaug School,Unjha', 165, 384170, 10, 106, 1, 9722187844),
(8, '8-B, Rajlaxmi Society.Nr.Sarthinagar Society,\nChanasma highyway,Patan-384266', '8-B, Rajlaxmi Society.Nr.Sarthinagar Society,\nChanasma highyway,Patan-384266', 106, 135, 8, 10, '8-B, Rajlaxmi Society.Nr.Sarthinagar Society,\nChanasma highyway,Patan-384266', '8-B, Rajlaxmi Society.Nr.Sarthinagar Society,\nChanasma highyway,Patan-384266', 135, 8, 10, 106, 9429541229, 9898330218),
(9, 'At & Po. Brahmanvada, Ta.Unjha, \nDist.Mehsana,Ganpati Paru-384215', 'At & Po. Brahmanvada, Ta.Unjha, \nDist.Mehsana,Ganpati Paru-384215', 106, 165, 384170, 10, 'At & Po. Brahmanvada, Ta.Unjha, \nDist.Mehsana,Ganpati Paru-384215', 'At & Po. Brahmanvada, Ta.Unjha, \nDist.Mehsana,Ganpati Paru-384215', 165, 384170, 10, 106, 1, 9408199783),
(10, 'Zinipol, Chachariya, patan-384265', 'Zinipol, Chachariya, patan-384265', 106, 135, 384265, 10, 'Zinipol, Chachariya, patan-384265', 'Zinipol, Chachariya, patan-384265', 135, 384265, 10, 106, 1, 8000098076),
(11, 'At & Po. Madana (Gadh), Ta. Palanpur, B.K.385519', 'At & Po. Madana (Gadh), Ta. Palanpur, B.K.385519', 106, 168, 385519, 10, 'At & Po. Madana (Gadh), Ta. Palanpur, B.K.385519', 'At & Po. Madana (Gadh), Ta. Palanpur, B.K.385519', 168, 385519, 10, 106, 1, 9722818959),
(12, 'Umiya Nagar Society,Juna Laxmipura,Palanpur,Ta:Palanpur,Di:B.K.-385001', 'Umiya Nagar Society,Juna Laxmipura,Palanpur,Ta:Palanpur,Di:B.K.-385001', 106, 130, 385001, 10, 'Umiya Nagar Society,Juna Laxmipura,Palanpur,Ta:Palanpur,Di:B.K.-385001', 'Umiya Nagar Society,Juna Laxmipura,Palanpur,Ta:Palanpur,Di:B.K.-385001', 130, 385001, 10, 106, 1, 9426739357),
(13, 'Kotharivas, Sidhpur, Ta-Sidhpur, Dist. Patan, 384151', 'Kotharivas, Sidhpur, Ta-Sidhpur, Dist. Patan, 384151', 106, 151, 384151, 10, 'Kotharivas, Sidhpur, Ta-Sidhpur, Dist. Patan, 384151', 'Kotharivas, Sidhpur, Ta-Sidhpur, Dist. Patan, 384151', 151, 384151, 10, 106, 1, 9558700084),
(14, 'At:Chaturpura,Po:Upera,Ta:Unjha,\nDi:Mehsana-384170', 'At:Chaturpura,Po:Upera,Ta:Unjha,\nDi:Mehsana-384170', 106, 168, 384170, 10, 'At:Chaturpura,Po:Upera,Ta:Unjha,\nDi:Mehsana-384170', 'At:Chaturpura,Po:Upera,Ta:Unjha,\nDi:Mehsana-384170', 168, 384170, 10, 106, 1, 9428960614),
(15, 'Gajanand society, at. Gaja, ta,dis.patan-384265', 'Gajanand society, at. Gaja, ta,dis.patan-384265', 106, 135, 384265, 10, 'Gajanand society, at. Gaja, ta,dis.patan-384265', 'Gajanand society, at. Gaja, ta,dis.patan-384265', 135, 384265, 10, 106, 1, 8733051922),
(16, '101, Saraswati Society, S.J. Road, Sidhpur, Dist.Patan 384151', '101, Saraswati Society, S.J. Road, Sidhpur, Dist.Patan 384151', 106, 151, 384151, 10, '101, Saraswati Society, S.J. Road, Sidhpur, Dist.Patan 384151', '101, Saraswati Society, S.J. Road, Sidhpur, Dist.Patan 384151', 151, 384151, 10, 106, 1, 9898073008),
(17, 'Brahmanvada, Gamivas, Ta- Unjha, Dist. Mehsana, 384215', 'Brahmanvada, Gamivas, Ta- Unjha, Dist. Mehsana, 384215', 106, 168, 384215, 10, 'Brahmanvada, Gamivas, Ta- Unjha, Dist. Mehsana, 384215', 'Brahmanvada, Gamivas, Ta- Unjha, Dist. Mehsana, 384215', 168, 384215, 10, 106, 2767228247, 8733051922),
(18, '8,Bhagwati Society,Nr,Joravar Palcae,Palanpur-385001', '8,Bhagwati Society,Nr,Joravar Palcae,Palanpur-385001', 106, 130, 385001, 10, '8,Bhagwati Society,Nr,Joravar Palcae,Palanpur-385001', '8,Bhagwati Society,Nr,Joravar Palcae,Palanpur-385001', 130, 385001, 10, 106, 2742250662, 8866206316),
(19, 'Kotharivas, Raval Ni Khadki, Sidhpur, Ta-Sidhpur, Dist. Patan, 384151', 'Kotharivas, Raval Ni Khadki, Sidhpur, Ta-Sidhpur, Dist. Patan, 384151', 106, 151, 384151, 10, 'Kotharivas, Raval Ni Khadki, Sidhpur, Ta-Sidhpur, Dist. Patan, 384151', 'Kotharivas, Raval Ni Khadki, Sidhpur, Ta-Sidhpur, Dist. Patan, 384151', 151, 384151, 10, 106, 1, 9033300385),
(20, 'A-24, Tirupati Township-1, Disa Highway, Palanpur, Pin.385001', 'A-24, Tirupati Township-1, Disa Highway, Palanpur, Pin.385001', 106, 130, 385001, 10, 'A-24, Tirupati Township-1, Disa Highway, Palanpur, Pin.385001', 'A-24, Tirupati Township-1, Disa Highway, Palanpur, Pin.385001', 130, 385001, 10, 106, 1, 9427163242),
(21, '4,New P & T Colony Nr.Head post office,Visnagar Link Rd.Mehsana-384001', '4,New P & T Colony Nr.Head post office,Visnagar Link Rd.Mehsana-384001', 106, 168, 384002, 10, '4,New P & T Colony Nr.Head post office,Visnagar Link Rd.Mehsana-384001', '4,New P & T Colony Nr.Head post office,Visnagar Link Rd.Mehsana-384001', 168, 384002, 10, 106, 2762223567, 8460884917),
(22, 'Zinipol, laldarvaja,bhadra, patan-384265', 'Zinipol, laldarvaja,bhadra, patan-384265', 106, 135, 384265, 10, 'Zinipol, laldarvaja,bhadra, patan-384265', 'Zinipol, laldarvaja,bhadra, patan-384265', 135, 384265, 10, 106, 9924074604, 9998720123),
(23, '1,Ayodhyanagar Society,Kakoshi Crosssing,\nSidhpur-384151', '1,Ayodhyanagar Society,Kakoshi Crosssing,\nSidhpur-384151', 106, 151, 384151, 10, '1,Ayodhyanagar Society,Kakoshi Crosssing,\nSidhpur-384151', '1,Ayodhyanagar Society,Kakoshi Crosssing,\nSidhpur-384151', 151, 384151, 10, 106, 1, 9998119915),
(24, '14/B,Ashirvad duplex, Chansma highway, patan-384265', '14/B,Ashirvad duplex, Chansma highway, patan-384265', 106, 135, 385550, 10, '14/B,Ashirvad duplex, Chansma highway, patan-384265', '14/B,Ashirvad duplex, Chansma highway, patan-384265', 135, 385550, 10, 106, 1, 8000123124),
(25, '18/Shrinath Society,Kheralu-384325', '18/Shrinath Society,Kheralu-384325', 106, 168, 384325, 10, '18/Shrinath Society,Kheralu-384325', '18/Shrinath Society,Kheralu-384325', 168, 384325, 10, 106, 1, 9429736750),
(26, 'Vill:Aithor,Ta:Unjh,Di:Mehsana-', 'Vill:Aithor,Ta:Unjh,Di:Mehsana-', 106, 168, 8, 10, 'Vill:Aithor,Ta:Unjh,Di:Mehsana-', 'Vill:Aithor,Ta:Unjh,Di:Mehsana-', 168, 8, 10, 106, 1, 9725147281),
(27, '4/B,Ashapuri Soceity Modhera Rd.Mehsana-2`,384002', '4/B,Ashapuri Soceity Modhera Rd.Mehsana-2`,384002', 106, 168, 384002, 10, '4/B,Ashapuri Soceity Modhera Rd.Mehsana-2`,384002', '4/B,Ashapuri Soceity Modhera Rd.Mehsana-2`,384002', 168, 384002, 10, 106, 2762254486, 8866499593),
(28, 'Maninagar At & Po:Bokarvada,Ta:Visnagar, \ndist-Mahesana384120', 'Maninagar At & Po:Bokarvada,Ta:Visnagar, \ndist-Mahesana384120', 106, 165, 384170, 10, 'Maninagar At & Po:Bokarvada,Ta:Visnagar, \ndist-Mahesana384120', 'Maninagar At & Po:Bokarvada,Ta:Visnagar, \ndist-Mahesana384120', 165, 384170, 10, 106, 1, 8140945929),
(29, '5/A,Gajanand Society,Nr.Shikhodtalavadi\n Anand Ta:Anand.Dist-Anand-388001', '5/A,Gajanand Society,Nr.Shikhodtalavadi\n Anand Ta:Anand.Dist-Anand-388001', 106, 168, 384275, 10, '5/A,Gajanand Society,Nr.Shikhodtalavadi\n Anand Ta:Anand.Dist-Anand-388001', '5/A,Gajanand Society,Nr.Shikhodtalavadi\n Anand Ta:Anand.Dist-Anand-388001', 168, 384275, 10, 106, 2692250231, 9925096248),
(30, 'At. Matpur, ta,dist.-patan-384275', 'At. Matpur, ta,dist.-patan-384275', 106, 168, 384275, 10, 'At. Matpur, ta,dist.-patan-384275', 'At. Matpur, ta,dist.-patan-384275', 168, 384275, 10, 106, 2766263497, 8238146263),
(31, '94,Rajmani Society, B/h.Shantiniketan School,\nChansama Highway,Patan-384265', '94,Rajmani Society, B/h.Shantiniketan School,\nChansama Highway,Patan-384265', 106, 135, 384265, 10, '94,Rajmani Society, B/h.Shantiniketan School,\nChansama Highway,Patan-384265', '94,Rajmani Society, B/h.Shantiniketan School,\nChansama Highway,Patan-384265', 135, 384265, 10, 106, 1, 8758791452),
(32, 'Room No.27, block no.B/3, opp-Amul parlor, Police Head quatrs, palanpur,Di.B.K-285001', 'Room No.27, block no.B/3, opp-Amul parlor, Police Head quatrs, palanpur,Di.B.K-285001', 106, 89, 384240, 10, 'Room No.27, block no.B/3, opp-Amul parlor, Police Head quatrs, palanpur,Di.B.K-285001', 'Room No.27, block no.B/3, opp-Amul parlor, Police Head quatrs, palanpur,Di.B.K-285001', 89, 384240, 10, 106, 1, 8866623415),
(33, 'Vill:Sujank,Ta:Unjha,Di:Mehsana-384170', 'Vill:Sujank,Ta:Unjha,Di:Mehsana-384170', 106, 135, 385001, 10, 'Vill:Sujank,Ta:Unjha,Di:Mehsana-384170', 'Vill:Sujank,Ta:Unjha,Di:Mehsana-384170', 135, 385001, 10, 106, 1, 8758704197),
(34, 'Sidhesavary Society-1, Block.No.11,Sidhpur-384151', 'Sidhesavary Society-1, Block.No.11,Sidhpur-384151', 106, 165, 384170, 10, 'Sidhesavary Society-1, Block.No.11,Sidhpur-384151', 'Sidhesavary Society-1, Block.No.11,Sidhpur-384151', 165, 384170, 10, 106, 1, 9722578209),
(35, '1/B,Shyamvihar Green.Sahara Township,Radhanpur Rd.Mehsana-384002', '1/B,Shyamvihar Green.Sahara Township,Radhanpur Rd.Mehsana-384002', 106, 168, 384151, 10, '1/B,Shyamvihar Green.Sahara Township,Radhanpur Rd.Mehsana-384002', '1/B,Shyamvihar Green.Sahara Township,Radhanpur Rd.Mehsana-384002', 168, 384151, 10, 106, 1, 9016901242),
(36, 'Police Head Quarters, Room No. 254 \nBlock No. 22, Palanpur', 'Police Head Quarters, Room No. 254 \nBlock No. 22, Palanpur', 106, 168, 384002, 10, 'Police Head Quarters, Room No. 254 \nBlock No. 22, Palanpur', 'Police Head Quarters, Room No. 254 \nBlock No. 22, Palanpur', 168, 384002, 10, 106, 1, 7383590729),
(37, 'At.&Po. Navisna, Ta. Vadgam, Dist. B.K-385421', 'At.&Po. Navisna, Ta. Vadgam, Dist. B.K-385421', 106, 130, 345001, 10, 'At.&Po. Navisna, Ta. Vadgam, Dist. B.K-385421', 'At.&Po. Navisna, Ta. Vadgam, Dist. B.K-385421', 130, 345001, 10, 106, 1, 9409034574),
(38, 'At.&Po. Madana(Gadh),Ta. Palanpur \ndist. Banas Kantha-385519.', 'At.&Po. Madana(Gadh),Ta. Palanpur \ndist. Banas Kantha-385519.', 106, 168, 385421, 10, 'At.&Po. Madana(Gadh),Ta. Palanpur \ndist. Banas Kantha-385519.', 'At.&Po. Madana(Gadh),Ta. Palanpur \ndist. Banas Kantha-385519.', 168, 385421, 10, 106, 2739265473, 8866896593),
(39, 'At.&Po. Madana(Gadh),Ta. Palanpur \ndist. Banas Kantha-385519.', 'At.&Po. Madana(Gadh),Ta. Palanpur \ndist. Banas Kantha-385519.', 106, 168, 8, 10, 'At.&Po. Madana(Gadh),Ta. Palanpur \ndist. Banas Kantha-385519.', 'At.&Po. Madana(Gadh),Ta. Palanpur \ndist. Banas Kantha-385519.', 168, 8, 10, 106, 1, 9725943215),
(40, '293,Sunnagar Society,Highway Rd.Ta:Sidhpur,Di:Patan-384151', '293,Sunnagar Society,Highway Rd.Ta:Sidhpur,Di:Patan-384151', 106, 168, 385410, 10, '293,Sunnagar Society,Highway Rd.Ta:Sidhpur,Di:Patan-384151', '293,Sunnagar Society,Highway Rd.Ta:Sidhpur,Di:Patan-384151', 168, 385410, 10, 106, 1, 9974568266),
(41, 'at,post.pethapur, ta. Danta, dist.banaskantha-385120', 'at,post.pethapur, ta. Danta, dist.banaskantha-385120', 106, 168, 385120, 10, 'at,post.pethapur, ta. Danta, dist.banaskantha-385120', 'at,post.pethapur, ta. Danta, dist.banaskantha-385120', 168, 385120, 10, 106, 1, 9409438690),
(42, 'Three hanuman road, Happy nursery Deesa,Ta: Deesa,Di:B.K.-', 'Three hanuman road, Happy nursery Deesa,Ta: Deesa,Di:B.K.-', 106, 130, 385120, 10, 'Three hanuman road, Happy nursery Deesa,Ta: Deesa,Di:B.K.-', 'Three hanuman road, Happy nursery Deesa,Ta: Deesa,Di:B.K.-', 130, 385120, 10, 106, 1, 9574263891),
(43, 'Modini Shery,Bukdi Chowk,\nPatan-384265', 'Modini Shery,Bukdi Chowk,\nPatan-384265', 106, 46, 8, 10, 'Modini Shery,Bukdi Chowk,\nPatan-384265', 'Modini Shery,Bukdi Chowk,\nPatan-384265', 46, 8, 10, 106, 1, 9898141737),
(44, '35,Indraparast Society,Chansama Highway,Nr.Lili Vadi-Patan-384265', '35,Indraparast Society,Chansama Highway,Nr.Lili Vadi-Patan-384265', 106, 135, 384265, 10, '35,Indraparast Society,Chansama Highway,Nr.Lili Vadi-Patan-384265', '35,Indraparast Society,Chansama Highway,Nr.Lili Vadi-Patan-384265', 135, 384265, 10, 106, 1, 9624241808),
(45, 'dhaniyana char rasta, bhagyalaxmi society,palanpur-385001', 'dhaniyana char rasta, bhagyalaxmi society,palanpur-385001', 106, 135, 384265, 10, 'dhaniyana char rasta, bhagyalaxmi society,palanpur-385001', 'dhaniyana char rasta, bhagyalaxmi society,palanpur-385001', 135, 384265, 10, 106, 1, 7600704319),
(46, '66 K.V. Sub-Station, G.E.B. Colony, \nOpp. Piramal Glass Kharach Road,Kosamba,\nTa.Mangrol,Dist. Surat', '66 K.V. Sub-Station, G.E.B. Colony, \nOpp. Piramal Glass Kharach Road,Kosamba,\nTa.Mangrol,Dist. Surat', 106, 130, 385001, 10, '66 K.V. Sub-Station, G.E.B. Colony, \nOpp. Piramal Glass Kharach Road,Kosamba,\nTa.Mangrol,Dist. Surat', '66 K.V. Sub-Station, G.E.B. Colony, \nOpp. Piramal Glass Kharach Road,Kosamba,\nTa.Mangrol,Dist. Surat', 130, 385001, 10, 106, 1, 8238151726),
(47, 'At.&Po. Kasor, Ta.&Dist. Anand', 'At.&Po. Kasor, Ta.&Dist. Anand', 106, 102, 8, 10, 'At.&Po. Kasor, Ta.&Dist. Anand', 'At.&Po. Kasor, Ta.&Dist. Anand', 102, 8, 10, 106, 1, 9033490671),
(48, '10,Bhadrankar Nagar Society, Nr.M N High school Kalka Road, Patan-384265', '10,Bhadrankar Nagar Society, Nr.M N High school Kalka Road, Patan-384265', 106, 79, 388205, 10, '10,Bhadrankar Nagar Society, Nr.M N High school Kalka Road, Patan-384265', '10,Bhadrankar Nagar Society, Nr.M N High school Kalka Road, Patan-384265', 79, 388205, 10, 106, 2692285657, 8866129431),
(49, '14,Poonam Park Society, B/H.College Nagalpur, Mehsana-2,384002', '14,Poonam Park Society, B/H.College Nagalpur, Mehsana-2,384002', 106, 135, 384265, 10, '14,Poonam Park Society, B/H.College Nagalpur, Mehsana-2,384002', '14,Poonam Park Society, B/H.College Nagalpur, Mehsana-2,384002', 135, 384265, 10, 106, 1, 9033356064),
(50, 'Ghemariya Vir, Nr.Navomadh, Bhadra, Patan-384265', 'Ghemariya Vir, Nr.Navomadh, Bhadra, Patan-384265', 106, 168, 384002, 10, 'Ghemariya Vir, Nr.Navomadh, Bhadra, Patan-384265', 'Ghemariya Vir, Nr.Navomadh, Bhadra, Patan-384265', 168, 384002, 10, 106, 1, 7698155122),
(51, '47,Swagat Bunglows, Virpur Dhaniyana Chokadi, Palanpur, Po.Lokaniketan', '47,Swagat Bunglows, Virpur Dhaniyana Chokadi, Palanpur, Po.Lokaniketan', 106, 135, 384265, 10, '47,Swagat Bunglows, Virpur Dhaniyana Chokadi, Palanpur, Po.Lokaniketan', '47,Swagat Bunglows, Virpur Dhaniyana Chokadi, Palanpur, Po.Lokaniketan', 135, 384265, 10, 106, 1, 9624831511),
(52, 'Mominvas, Vi.Chatawada, Ta.Sidhpur, Di-Patan, 384151', 'Mominvas, Vi.Chatawada, Ta.Sidhpur, Di-Patan, 384151', 106, 130, 385001, 10, 'Mominvas, Vi.Chatawada, Ta.Sidhpur, Di-Patan, 384151', 'Mominvas, Vi.Chatawada, Ta.Sidhpur, Di-Patan, 384151', 130, 385001, 10, 106, 9428369700, 9913839007),
(53, 'A+ 37,Tirupati Township-1,Deesa Highway, Palanpur-385001', 'A+ 37,Tirupati Township-1,Deesa Highway, Palanpur-385001', 106, 168, 8, 10, 'A+ 37,Tirupati Township-1,Deesa Highway, Palanpur-385001', 'A+ 37,Tirupati Township-1,Deesa Highway, Palanpur-385001', 168, 8, 10, 106, 1, 9426368722),
(54, '11,Panchavati Society, Ahmedabad Highway Palanpur-385001', '11,Panchavati Society, Ahmedabad Highway Palanpur-385001', 106, 130, 385001, 10, '11,Panchavati Society, Ahmedabad Highway Palanpur-385001', '11,Panchavati Society, Ahmedabad Highway Palanpur-385001', 130, 385001, 10, 106, 1, 9409392993),
(55, '52,Vijay Laxmi Society, Dethali Char Rasta, Sidhpur-384151', '52,Vijay Laxmi Society, Dethali Char Rasta, Sidhpur-384151', 106, 130, 385001, 10, '52,Vijay Laxmi Society, Dethali Char Rasta, Sidhpur-384151', '52,Vijay Laxmi Society, Dethali Char Rasta, Sidhpur-384151', 130, 385001, 10, 106, 1, 9429173774),
(56, '8,Janak Puri Society, Opp-New Navjivan School, Unjha-384170', '8,Janak Puri Society, Opp-New Navjivan School, Unjha-384170', 106, 165, 384170, 10, '8,Janak Puri Society, Opp-New Navjivan School, Unjha-384170', '8,Janak Puri Society, Opp-New Navjivan School, Unjha-384170', 165, 384170, 10, 106, 2767223512, 7567645108),
(57, '6,Sonal Society, Sukhbag Road, Palanpur-385001', '6,Sonal Society, Sukhbag Road, Palanpur-385001', 106, 65, 384170, 10, '6,Sonal Society, Sukhbag Road, Palanpur-385001', '6,Sonal Society, Sukhbag Road, Palanpur-385001', 65, 384170, 10, 106, 9428756716, 9537323141),
(58, 'Nano rajput Vas, At.Karli, Ta.Unjha, Di-Mehsana, 384170', 'Nano rajput Vas, At.Karli, Ta.Unjha, Di-Mehsana, 384170', 106, 130, 385001, 10, 'Nano rajput Vas, At.Karli, Ta.Unjha, Di-Mehsana, 384170', 'Nano rajput Vas, At.Karli, Ta.Unjha, Di-Mehsana, 384170', 130, 385001, 10, 106, 9825992262, 9662683827),
(59, 'At.Po-Kaleda,Ta.Vadgam,Di-B.K-385421', 'At.Po-Kaleda,Ta.Vadgam,Di-B.K-385421', 106, 168, 384170, 10, 'At.Po-Kaleda,Ta.Vadgam,Di-B.K-385421', 'At.Po-Kaleda,Ta.Vadgam,Di-B.K-385421', 168, 384170, 10, 106, 2767271364, 9925535515),
(60, 'Yaden Building, Braminvas, Delhigate, B/H.Town hall, Palanpur-385001', 'Yaden Building, Braminvas, Delhigate, B/H.Town hall, Palanpur-385001', 106, 168, 385421, 10, 'Yaden Building, Braminvas, Delhigate, B/H.Town hall, Palanpur-385001', 'Yaden Building, Braminvas, Delhigate, B/H.Town hall, Palanpur-385001', 168, 385421, 10, 106, 2739289170, 9558171877),
(61, 'Siddhpura Navo vas, At.Po-Biliya, Ta.Sidhpur, Di-Patan', 'Siddhpura Navo vas, At.Po-Biliya, Ta.Sidhpur, Di-Patan', 106, 130, 385001, 10, 'Siddhpura Navo vas, At.Po-Biliya, Ta.Sidhpur, Di-Patan', 'Siddhpura Navo vas, At.Po-Biliya, Ta.Sidhpur, Di-Patan', 130, 385001, 10, 106, 1, 9409341821),
(62, 'Nr.Dairy, At&po-Biliya, Ta.Sidhpur, Di-Patan, 384151', 'Nr.Dairy, At&po-Biliya, Ta.Sidhpur, Di-Patan, 384151', 106, 135, 384154, 10, 'Nr.Dairy, At&po-Biliya, Ta.Sidhpur, Di-Patan, 384151', 'Nr.Dairy, At&po-Biliya, Ta.Sidhpur, Di-Patan, 384151', 135, 384154, 10, 106, 2767222034, 9727444707),
(63, 'At&Po. Dhadhana Ta.Sami,Dt.Patan, \nThakor Vas -384240', 'At&Po. Dhadhana Ta.Sami,Dt.Patan, \nThakor Vas -384240', 106, 168, 8, 10, 'At&Po. Dhadhana Ta.Sami,Dt.Patan, \nThakor Vas -384240', 'At&Po. Dhadhana Ta.Sami,Dt.Patan, \nThakor Vas -384240', 168, 8, 10, 106, 1, 9428960614),
(64, 'Narsungavir ni khadki. (Pakhali vado), Loteshvar mahadev road, Chachriya, patan-384265', 'Narsungavir ni khadki. (Pakhali vado), Loteshvar mahadev road, Chachriya, patan-384265', 106, 135, 384265, 10, 'Narsungavir ni khadki. (Pakhali vado), Loteshvar mahadev road, Chachriya, patan-384265', 'Narsungavir ni khadki. (Pakhali vado), Loteshvar mahadev road, Chachriya, patan-384265', 135, 384265, 10, 106, 9979163049, 9879354173),
(65, 'C/13, Krushnanagar Society, Jagatpur Road, Chandlodia,Ahmedabad.382481', 'C/13, Krushnanagar Society, Jagatpur Road, Chandlodia,Ahmedabad.382481', 106, 3, 382481, 10, 'C/13, Krushnanagar Society, Jagatpur Road, Chandlodia,Ahmedabad.382481', 'C/13, Krushnanagar Society, Jagatpur Road, Chandlodia,Ahmedabad.382481', 3, 8, 10, 106, 9909010879, 9722842380),
(66, 'Fulpura Dethali Highway, Sidhpur, Dist.patan-384151', 'Fulpura Dethali Highway, Sidhpur, Dist.patan-384151', 106, 151, 384151, 10, 'Fulpura Dethali Highway, Sidhpur, Dist.patan-384151', 'Fulpura Dethali Highway, Sidhpur, Dist.patan-384151', 151, 384151, 10, 106, 9979417994, 9979417994),
(67, '8/B,Vanrat Society, opp. Railway Water tank, patan-384265', '8/B,Vanrat Society, opp. Railway Water tank, patan-384265', 106, 135, 384265, 10, '8/B,Vanrat Society, opp. Railway Water tank, patan-384265', '8/B,Vanrat Society, opp. Railway Water tank, patan-384265', 135, 384265, 10, 106, 9824434857, 7600566260),
(68, 'Santominagar, At.juna laxmipura, palanpur(B.K)-385001', 'Santominagar, At.juna laxmipura, palanpur(B.K)-385001', 106, 130, 385001, 10, 'Santominagar, At.juna laxmipura, palanpur(B.K)-385001', 'Santominagar, At.juna laxmipura, palanpur(B.K)-385001', 130, 385001, 10, 106, 9429420641, 9429420641),
(69, 'At.&Po. Changwada,Ta.Vadgam,, Pin:385520', 'At.&Po. Changwada,Ta.Vadgam,, Pin:385520', 106, 168, 385520, 10, 'At.&Po. Changwada,Ta.Vadgam,, Pin:385520', 'At.&Po. Changwada,Ta.Vadgam,, Pin:385520', 168, 385520, 10, 106, 9723651057, 9723651057),
(70, 'Vishwas Genral Store, Kantheriya Hanuman Road, At&po&ta.palanpur.Dist.B.K-385001', 'Vishwas Genral Store, Kantheriya Hanuman Road, At&po&ta.palanpur.Dist.B.K-385001', 106, 130, 385001, 10, 'Vishwas Genral Store, Kantheriya Hanuman Road, At&po&ta.palanpur.Dist.B.K-385001', 'Vishwas Genral Store, Kantheriya Hanuman Road, At&po&ta.palanpur.Dist.B.K-385001', 130, 385001, 10, 106, 9712636100, 9913965940),
(71, 'Anand nagar. Vav road, bhabhar-385320', 'Anand nagar. Vav road, bhabhar-385320', 106, 168, 385320, 10, 'Anand nagar. Vav road, bhabhar-385320', 'Anand nagar. Vav road, bhabhar-385320', 168, 385320, 10, 106, 9825017317, 9727240888),
(72, 'H/85, Dwarakapuri Flats, Radhanpur road, Mehsansa-384002', 'H/85, Dwarakapuri Flats, Radhanpur road, Mehsansa-384002', 106, 168, 384002, 10, 'H/85, Dwarakapuri Flats, Radhanpur road, Mehsansa-384002', 'H/85, Dwarakapuri Flats, Radhanpur road, Mehsansa-384002', 168, 384002, 10, 106, 9909752572, 7874086840),
(73, 'Patel Society, juna laxmipura, Palnpur-385001', 'Patel Society, juna laxmipura, Palnpur-385001', 106, 130, 385001, 10, 'Patel Society, juna laxmipura, Palnpur-385001', 'Patel Society, juna laxmipura, Palnpur-385001', 130, 385001, 10, 106, 9974383534, 9974383534),
(74, 'At&po.Dalwana, Ta. Vadgam, Dist. B.K-385421', 'At&po.Dalwana, Ta. Vadgam, Dist. B.K-385421', 106, 168, 385421, 10, 'At&po.Dalwana, Ta. Vadgam, Dist. B.K-385421', 'At&po.Dalwana, Ta. Vadgam, Dist. B.K-385421', 168, 385421, 10, 106, 9726746086, 9726746086),
(75, '22, P.K. Nagar Society, Highway Road, Deesa', '22, P.K. Nagar Society, Highway Road, Deesa', 106, 46, 385535, 10, '22, P.K. Nagar Society, Highway Road, Deesa', '22, P.K. Nagar Society, Highway Road, Deesa', 46, 385535, 10, 106, 9408019918, 9429224866),
(76, 'Deesa Highway Road, Near. Aroma, Behind. Sankar So Mill, Palanpur. Pin.385001', 'Deesa Highway Road, Near. Aroma, Behind. Sankar So Mill, Palanpur. Pin.385001', 106, 130, 385001, 10, 'Deesa Highway Road, Near. Aroma, Behind. Sankar So Mill, Palanpur. Pin.385001', 'Deesa Highway Road, Near. Aroma, Behind. Sankar So Mill, Palanpur. Pin.385001', 130, 385001, 10, 106, 7383773749, 9687094553),
(77, 'At&post. Vadgam, Ta-Vadgam, Dist-B.K. (N.G.), 385410', 'At&post. Vadgam, Ta-Vadgam, Dist-B.K. (N.G.), 385410', 106, 168, 385421, 10, 'At&post. Vadgam, Ta-Vadgam, Dist-B.K. (N.G.), 385410', 'At&post. Vadgam, Ta-Vadgam, Dist-B.K. (N.G.), 385410', 168, 385410, 10, 106, 9428006662, 9408946753),
(78, 'Street No. 15, Old Laxmipura, Ta. Palanpur, Dist. B.K., 385001', 'Street No. 15, Old Laxmipura, Ta. Palanpur, Dist. B.K., 385001', 106, 130, 385001, 10, 'Street No. 15, Old Laxmipura, Ta. Palanpur, Dist. B.K., 385001', 'Street No. 15, Old Laxmipura, Ta. Palanpur, Dist. B.K., 385001', 130, 385001, 10, 106, 9824539198, 9824539198),
(79, 'At.&Po. Malgadh, Jodhapuriya Dhanj, Ta. Deesa', 'At.&Po. Malgadh, Jodhapuriya Dhanj, Ta. Deesa', 106, 46, 382235, 10, 'At.&Po. Malgadh, Jodhapuriya Dhanj, Ta. Deesa', 'At.&Po. Malgadh, Jodhapuriya Dhanj, Ta. Deesa', 46, 382235, 10, 106, 9824434857, 7600566260),
(80, 'Unchaghar, Maganlal Clinic, Kotku Unjha, 384170', 'Unchaghar, Maganlal Clinic, Kotku Unjha, 384170', 106, 165, 384170, 10, 'Unchaghar, Maganlal Clinic, Kotku Unjha, 384170', 'Unchaghar, Maganlal Clinic, Kotku Unjha, 384170', 165, 384170, 10, 106, 9979786273, 9979786273),
(81, 'E-547,Part-1,Parshwnath Township, Nava Naroda,Ahmedabad-382346', 'E-547,Part-1,Parshwnath Township, Nava Naroda,Ahmedabad-382346', 106, 168, 382346, 10, 'E-547,Part-1,Parshwnath Township, Nava Naroda,Ahmedabad-382346', 'E-547,Part-1,Parshwnath Township, Nava Naroda,Ahmedabad-382346', 168, 382346, 10, 106, 9327053967, 9327053967),
(82, '12 ROYAL PALACE, Lilivadi Rasurant, Nr.Chanshama Highway,Patan-384265', '12 ROYAL PALACE, Lilivadi Rasurant, Nr.Chanshama Highway,Patan-384265', 106, 135, 384265, 10, '12 ROYAL PALACE, Lilivadi Rasurant, Nr.Chanshama Highway,Patan-384265', '12 ROYAL PALACE, Lilivadi Rasurant, Nr.Chanshama Highway,Patan-384265', 135, 384265, 10, 106, 9727285696, 9227064950),
(83, '51,Ratna Park Society, Ganeshpura Road, Palanpur-385001', '51,Ratna Park Society, Ganeshpura Road, Palanpur-385001', 106, 130, 385001, 10, '51,Ratna Park Society, Ganeshpura Road, Palanpur-385001', '51,Ratna Park Society, Ganeshpura Road, Palanpur-385001', 130, 385001, 10, 106, 9925077093, 9033740805),
(84, '8,Vitthal Park Society, Mal Godawn Road, Mehsana', '8,Vitthal Park Society, Mal Godawn Road, Mehsana', 106, 168, 384002, 10, '8,Vitthal Park Society, Mal Godawn Road, Mehsana', '8,Vitthal Park Society, Mal Godawn Road, Mehsana', 168, 384002, 10, 106, 9898803839, 9898803839),
(85, 'Ambavadi Vistar, At.Kanodar, Ta.Palanpur, Di-B.K', 'Ambavadi Vistar, At.Kanodar, Ta.Palanpur, Di-B.K', 106, 89, 385520, 10, 'Ambavadi Vistar, At.Kanodar, Ta.Palanpur, Di-B.K', 'Ambavadi Vistar, At.Kanodar, Ta.Palanpur, Di-B.K', 89, 385520, 10, 106, 9879592756, 7600306127),
(86, '79,Gujarat Housingboard, out of malangate, Ambajiroad, Palanpur-385001', '79,Gujarat Housingboard, out of malangate, Ambajiroad, Palanpur-385001', 106, 130, 385001, 10, '79,Gujarat Housingboard, out of malangate, Ambajiroad, Palanpur-385001', '79,Gujarat Housingboard, out of malangate, Ambajiroad, Palanpur-385001', 130, 385001, 10, 106, 9427253748, 8866412588),
(87, 'At&Po. Dangiya, Ta:Dantivada, Dist, B.K.', 'At&Po. Dangiya, Ta:Dantivada, Dist, B.K.', 106, 168, 385510, 10, 'At&Po. Dangiya, Ta:Dantivada, Dist, B.K.', 'At&Po. Dangiya, Ta:Dantivada, Dist, B.K.', 168, 385510, 10, 106, 9712244462, 9904424379),
(88, 'Parekhpole , Nr. Jain Derasar Unjha, 384170', 'Parekhpole , Nr. Jain Derasar Unjha, 384170', 106, 165, 384170, 10, 'Parekhpole , Nr. Jain Derasar Unjha, 384170', 'Parekhpole , Nr. Jain Derasar Unjha, 384170', 165, 384170, 10, 106, 9429317143, 9427465440),
(89, '27,rusat nagar, Visnagar Road,unjha-384170', '27,rusat nagar, Visnagar Road,unjha-384170', 106, 165, 384170, 10, '27,rusat nagar, Visnagar Road,unjha-384170', '27,rusat nagar, Visnagar Road,unjha-384170', 165, 384170, 10, 106, 2767, 7698035025),
(90, 'Husenibag, At&Po.kanodar, ta.palnpur,di.B.K-385520', 'Husenibag, At&Po.kanodar, ta.palnpur,di.B.K-385520', 106, 130, 385520, 10, 'Husenibag, At&Po.kanodar, ta.palnpur,di.B.K-385520', 'Husenibag, At&Po.kanodar, ta.palnpur,di.B.K-385520', 130, 385520, 10, 106, 1, 9689814172),
(91, '75, Ambica Towanship, ambaji road,chansma highway, patan-384265', '75, Ambica Towanship, ambaji road,chansma highway, patan-384265', 106, 135, 384265, 10, '75, Ambica Towanship, ambaji road,chansma highway, patan-384265', '75, Ambica Towanship, ambaji road,chansma highway, patan-384265', 135, 384265, 10, 106, 1, 9979003756),
(92, 'At &Po:Gaglasan,Ta:Sidhpur, Di:Patan-384151', 'At &Po:Gaglasan,Ta:Sidhpur, Di:Patan-384151', 106, 151, 384151, 10, 'At &Po:Gaglasan,Ta:Sidhpur, Di:Patan-384151', 'At &Po:Gaglasan,Ta:Sidhpur, Di:Patan-384151', 151, 384151, 10, 106, 2767, 9898432402),
(93, '"VINAYDEEP" Out Of Mira Gate, Sonabag, Palanpur', '"VINAYDEEP" Out Of Mira Gate, Sonabag, Palanpur', 106, 79, 385001, 10, '"VINAYDEEP" Out Of Mira Gate, Sonabag, Palanpur', '"VINAYDEEP" Out Of Mira Gate, Sonabag, Palanpur', 79, 385001, 10, 106, 1, 9824948368),
(94, 'Street no.2, Laxmi pan house, Laxmipura, palanpur,B.K-385001', 'Street no.2, Laxmi pan house, Laxmipura, palanpur,B.K-385001', 106, 130, 385001, 10, 'Street no.2, Laxmi pan house, Laxmipura, palanpur,B.K-385001', 'Street no.2, Laxmi pan house, Laxmipura, palanpur,B.K-385001', 130, 385001, 10, 106, 1, 9898244425),
(95, 'Ramdevnagar, Behind Ramjinagar, Opp. Patel Society, Palanpur-385001', 'Ramdevnagar, Behind Ramjinagar, Opp. Patel Society, Palanpur-385001', 106, 130, 385001, 10, 'Ramdevnagar, Behind Ramjinagar, Opp. Patel Society, Palanpur-385001', 'Ramdevnagar, Behind Ramjinagar, Opp. Patel Society, Palanpur-385001', 130, 385001, 10, 106, 1, 9574403082),
(96, '190,Sunnagar society,opp-GEB Highway, Sidhpur,Di-patan-384151', '190,Sunnagar society,opp-GEB Highway, Sidhpur,Di-patan-384151', 106, 26, 1, 10, '190,Sunnagar society,opp-GEB Highway, Sidhpur,Di-patan-384151', '190,Sunnagar society,opp-GEB Highway, Sidhpur,Di-patan-384151', 26, 8, 10, 106, 2832, 9429874756),
(97, '21, Shivam Nagar, Opp. New Gang, Dairy Road, Near ITI, Palanpur (B.K.)-385001', '21, Shivam Nagar, Opp. New Gang, Dairy Road, Near ITI, Palanpur (B.K.)-385001', 106, 130, 385001, 10, '21, Shivam Nagar, Opp. New Gang, Dairy Road, Near ITI, Palanpur (B.K.)-385001', '21, Shivam Nagar, Opp. New Gang, Dairy Road, Near ITI, Palanpur (B.K.)-385001', 130, 385001, 10, 106, 1, 9998953572),
(98, '3, Madhuvan Bunglows, Nr. Raghuvir Society, Unjha,Dis. Mehsana, Pin.384170', '3, Madhuvan Bunglows, Nr. Raghuvir Society, Unjha,Dis. Mehsana, Pin.384170', 106, 165, 384170, 10, '3, Madhuvan Bunglows, Nr. Raghuvir Society, Unjha,Dis. Mehsana, Pin.384170', '3, Madhuvan Bunglows, Nr. Raghuvir Society, Unjha,Dis. Mehsana, Pin.384170', 165, 384170, 10, 106, 1, 9726413173),
(99, '14,Vatslya Banglow, patan Road,Nr.GEB,Unjha,Di.Mehsana-384170', '14,Vatslya Banglow, patan Road,Nr.GEB,Unjha,Di.Mehsana-384170', 106, 165, 384170, 10, '14,Vatslya Banglow, patan Road,Nr.GEB,Unjha,Di.Mehsana-384170', '14,Vatslya Banglow, patan Road,Nr.GEB,Unjha,Di.Mehsana-384170', 165, 384170, 10, 106, 2767, 9824108265),
(100, 'Main Bajar kheralu, Nishar Jwellers,kheralu-384325', 'Main Bajar kheralu, Nishar Jwellers,kheralu-384325', 106, 100, 384325, 10, 'Main Bajar kheralu, Nishar Jwellers,kheralu-384325', 'Main Bajar kheralu, Nishar Jwellers,kheralu-384325', 100, 384325, 10, 106, 1, 9924690732),
(101, 'Charavas, Vill:Gaja,di.Patan', 'Charavas, Vill:Gaja,di.Patan', 106, 135, 384265, 10, 'Charavas, Vill:Gaja,di.Patan', 'Charavas, Vill:Gaja,di.Patan', 135, 384265, 10, 106, 2766, 9726216286),
(102, '38,Amarnath Banglows, Visnagar Link road, Nr. Manav Ashram, Mehsana-384001', '38,Amarnath Banglows, Visnagar Link road, Nr. Manav Ashram, Mehsana-384001', 106, 168, 384315, 10, '38,Amarnath Banglows, Visnagar Link road, Nr. Manav Ashram, Mehsana-384001', '38,Amarnath Banglows, Visnagar Link road, Nr. Manav Ashram, Mehsana-384001', 168, 384315, 10, 106, 1, 9714535785),
(103, 'At & Po- Rampura, ta-Deesa, Dist. Banaskantha', 'At & Po- Rampura, ta-Deesa, Dist. Banaskantha', 106, 168, 385535, 10, 'At & Po- Rampura, ta-Deesa, Dist. Banaskantha', 'At & Po- Rampura, ta-Deesa, Dist. Banaskantha', 168, 385535, 10, 106, 1, 0),
(104, 'Suthar vas polpati, At.Sander,Ta.Patan,Di.patan', 'Suthar vas polpati, At.Sander,Ta.Patan,Di.patan', 106, 135, 384275, 10, 'Suthar vas polpati, At.Sander,Ta.Patan,Di.patan', 'Suthar vas polpati, At.Sander,Ta.Patan,Di.patan', 135, 384275, 10, 106, 1, 9724650350),
(105, 'At- Palanpur, 20- Gurukul Society, Hanuma Tekri. Dist. B.K.', 'At- Palanpur, 20- Gurukul Society, Hanuma Tekri. Dist. B.K.', 106, 130, 385001, 10, 'At- Palanpur, 20- Gurukul Society, Hanuma Tekri. Dist. B.K.', 'At- Palanpur, 20- Gurukul Society, Hanuma Tekri. Dist. B.K.', 130, 385001, 10, 106, 1, 9427696681),
(106, 'Harinagar, Opp-High School, At&Po. Bokarvada, Ta-Visnagar, Di. Mehsana', 'Harinagar, Opp-High School, At&Po. Bokarvada, Ta-Visnagar, Di. Mehsana', 106, 168, 384120, 10, 'Harinagar, Opp-High School, At&Po. Bokarvada, Ta-Visnagar, Di. Mehsana', 'Harinagar, Opp-High School, At&Po. Bokarvada, Ta-Visnagar, Di. Mehsana', 168, 384120, 10, 106, 1, 9904390021),
(107, 'Taluka panchyat quatrs no-2, Nr.Court Compound, Sidhpur-384151', 'Taluka panchyat quatrs no-2, Nr.Court Compound, Sidhpur-384151', 106, 151, 384151, 10, 'Taluka panchyat quatrs no-2, Nr.Court Compound, Sidhpur-384151', 'Taluka panchyat quatrs no-2, Nr.Court Compound, Sidhpur-384151', 151, 384151, 10, 106, 1, 9979370246),
(108, 'Girdhirnagar Society, Aithor Road, Unjha, Pin. 384170', 'Girdhirnagar Society, Aithor Road, Unjha, Pin. 384170', 106, 165, 384170, 10, 'Girdhirnagar Society, Aithor Road, Unjha, Pin. 384170', 'Girdhirnagar Society, Aithor Road, Unjha, Pin. 384170', 165, 384170, 10, 106, 1, 9879054749),
(109, '7,Krushn nagar society, Raileay station, Nr.ranuj, Ta.patan-384275', '7,Krushn nagar society, Raileay station, Nr.ranuj, Ta.patan-384275', 106, 135, 384275, 10, '7,Krushn nagar society, Raileay station, Nr.ranuj, Ta.patan-384275', '7,Krushn nagar society, Raileay station, Nr.ranuj, Ta.patan-384275', 135, 384275, 10, 106, 1, 9825211396),
(110, 'Seri No-6, Juna Laxmipura, Palanpur-385001', 'Seri No-6, Juna Laxmipura, Palanpur-385001', 106, 130, 385001, 10, 'Seri No-6, Juna Laxmipura, Palanpur-385001', 'Seri No-6, Juna Laxmipura, Palanpur-385001', 130, 385001, 10, 106, 1, 9898690387),
(111, 'Rampura,Malan road, Po.Sardarpur, Ta.Palanpur,Di.B.K-385001', 'Rampura,Malan road, Po.Sardarpur, Ta.Palanpur,Di.B.K-385001', 106, 130, 385001, 10, 'Rampura,Malan road, Po.Sardarpur, Ta.Palanpur,Di.B.K-385001', 'Rampura,Malan road, Po.Sardarpur, Ta.Palanpur,Di.B.K-385001', 130, 385001, 10, 106, 1, 9925436451),
(112, '5,Tirupati tenament, Nr.Sun nagar,Ta.sidhpur,Di.patan-384151', '5,Tirupati tenament, Nr.Sun nagar,Ta.sidhpur,Di.patan-384151', 106, 151, 384151, 10, '5,Tirupati tenament, Nr.Sun nagar,Ta.sidhpur,Di.patan-384151', '5,Tirupati tenament, Nr.Sun nagar,Ta.sidhpur,Di.patan-384151', 151, 384151, 10, 106, 1, 9879097451),
(113, 'At&po.Mahervada, Ta.unjha,Di.Mehsana-384130', 'At&po.Mahervada, Ta.unjha,Di.Mehsana-384130', 106, 165, 384130, 10, 'At&po.Mahervada, Ta.unjha,Di.Mehsana-384130', 'At&po.Mahervada, Ta.unjha,Di.Mehsana-384130', 165, 384130, 10, 106, 1, 9574081243),
(114, 'Tribhuvan paru, Bokarvada, Ta.Visnagar, Di.mehsana-384120', 'Tribhuvan paru, Bokarvada, Ta.Visnagar, Di.mehsana-384120', 106, 165, 384120, 10, 'Tribhuvan paru, Bokarvada, Ta.Visnagar, Di.mehsana-384120', 'Tribhuvan paru, Bokarvada, Ta.Visnagar, Di.mehsana-384120', 165, 384120, 10, 106, 1, 7600735212),
(115, 'New Sahkari Vasahat, Palanpur-385001', 'New Sahkari Vasahat, Palanpur-385001', 106, 130, 385001, 10, 'New Sahkari Vasahat, Palanpur-385001', 'New Sahkari Vasahat, Palanpur-385001', 130, 385001, 10, 106, 1, 9979924049),
(116, '14,Jay Ambe Nagar, Visnagar Road, Unjha, Dist. Mehsana-384170', '14,Jay Ambe Nagar, Visnagar Road, Unjha, Dist. Mehsana-384170', 106, 165, 384170, 10, '14,Jay Ambe Nagar, Visnagar Road, Unjha, Dist. Mehsana-384170', '14,Jay Ambe Nagar, Visnagar Road, Unjha, Dist. Mehsana-384170', 165, 384170, 10, 106, 2767, 9427675194),
(117, '26, Tirthbhumi Society Unjha, Nr. Kamli Road, Pin.384170', '26, Tirthbhumi Society Unjha, Nr. Kamli Road, Pin.384170', 106, 165, 384170, 10, '26, Tirthbhumi Society Unjha, Nr. Kamli Road, Pin.384170', '26, Tirthbhumi Society Unjha, Nr. Kamli Road, Pin.384170', 165, 384170, 10, 106, 2767, 9824034247),
(118, 'Nr. Panchayat Bhavan, At&Po. Jagana, Ta-Palanpur, Dist.Banasjantha-385001', 'Nr. Panchayat Bhavan, At&Po. Jagana, Ta-Palanpur, Dist.Banasjantha-385001', 106, 130, 385001, 10, 'Nr. Panchayat Bhavan, At&Po. Jagana, Ta-Palanpur, Dist.Banasjantha-385001', 'Nr. Panchayat Bhavan, At&Po. Jagana, Ta-Palanpur, Dist.Banasjantha-385001', 130, 385001, 10, 106, 1, 9428949589),
(119, '132, K.V. Sub Station, Opp. Gardan Hotel, Chansma Highway, Patan-384265', '132, K.V. Sub Station, Opp. Gardan Hotel, Chansma Highway, Patan-384265', 106, 135, 384265, 10, '132, K.V. Sub Station, Opp. Gardan Hotel, Chansma Highway, Patan-384265', '132, K.V. Sub Station, Opp. Gardan Hotel, Chansma Highway, Patan-384265', 135, 384265, 10, 106, 1, 9978281413),
(120, 'At&po.Mumanvas, Ta.Vadgam, Di.B.K-385120', 'At&po.Mumanvas, Ta.Vadgam, Di.B.K-385120', 106, 168, 385120, 10, 'At&po.Mumanvas, Ta.Vadgam, Di.B.K-385120', 'At&po.Mumanvas, Ta.Vadgam, Di.B.K-385120', 168, 385120, 10, 106, 1, 9427065176),
(121, 'Desainagar, Nr. Ramosana Circle, Mehsana-384002', 'Desainagar, Nr. Ramosana Circle, Mehsana-384002', 106, 168, 384002, 10, 'Desainagar, Nr. Ramosana Circle, Mehsana-384002', 'Desainagar, Nr. Ramosana Circle, Mehsana-384002', 168, 384002, 10, 106, 1, 9726090620),
(122, '79, Nand Bunglow-2, Nr. Kubernagar, Ahmedabad Highway, Palanpur-385001', '79, Nand Bunglow-2, Nr. Kubernagar, Ahmedabad Highway, Palanpur-385001', 106, 130, 385001, 10, '79, Nand Bunglow-2, Nr. Kubernagar, Ahmedabad Highway, Palanpur-385001', '79, Nand Bunglow-2, Nr. Kubernagar, Ahmedabad Highway, Palanpur-385001', 130, 385001, 10, 106, 1, 9429717508),
(123, 'Laxmi Narayan Society,B/h.Old Adrash School,H.K.Gelot,dessa-385535', 'Laxmi Narayan Society,B/h.Old Adrash School,H.K.Gelot,dessa-385535', 106, 46, 385535, 10, 'Laxmi Narayan Society,B/h.Old Adrash School,H.K.Gelot,dessa-385535', 'Laxmi Narayan Society,B/h.Old Adrash School,H.K.Gelot,dessa-385535', 46, 385535, 10, 106, 1, 9428677105),
(124, 'A-57 Tirupati Township Part-2, Deesa Highway, Palanpur', 'A-57 Tirupati Township Part-2, Deesa Highway, Palanpur', 106, 168, 385001, 10, 'A-57 Tirupati Township Part-2, Deesa Highway, Palanpur', 'A-57 Tirupati Township Part-2, Deesa Highway, Palanpur', 168, 385001, 10, 106, 1, 9428675840),
(125, 'Ambali vas,At&po.Kanodar,Ta.palanpur, Di.B.K-385520', 'Ambali vas,At&po.Kanodar,Ta.palanpur, Di.B.K-385520', 106, 160, 385520, 10, 'Ambali vas,At&po.Kanodar,Ta.palanpur, Di.B.K-385520', 'Ambali vas,At&po.Kanodar,Ta.palanpur, Di.B.K-385520', 160, 385520, 10, 106, 1, 9428370087),
(126, '29, Vishwakarma society,Akesan Road, Ahmedabad highway, palanpur-384001', '29, Vishwakarma society,Akesan Road, Ahmedabad highway, palanpur-384001', 106, 130, 385001, 10, '29, Vishwakarma society,Akesan Road, Ahmedabad highway, palanpur-384001', '29, Vishwakarma society,Akesan Road, Ahmedabad highway, palanpur-384001', 130, 385001, 10, 106, 1, 9726314022),
(127, 'Laxminaryan Society, Deesa. Dist .B.K.', 'Laxminaryan Society, Deesa. Dist .B.K.', 106, 46, 385535, 10, 'Laxminaryan Society, Deesa. Dist .B.K.', 'Laxminaryan Society, Deesa. Dist .B.K.', 46, 385535, 10, 106, 1, 9427407145),
(128, 'Gujarwado, Nr.sharda cinema, patan-384265', 'Gujarwado, Nr.sharda cinema, patan-384265', 106, 135, 384265, 10, 'Gujarwado, Nr.sharda cinema, patan-384265', 'Gujarwado, Nr.sharda cinema, patan-384265', 135, 384265, 10, 106, 1, 9662544437),
(129, '4,mangaldeep Society, Nr.Ashok Cinema, At&po&Ta.Sidhpur,Di.patan-384151', '4,mangaldeep Society, Nr.Ashok Cinema, At&po&Ta.Sidhpur,Di.patan-384151', 106, 168, 384001, 10, '4,mangaldeep Society, Nr.Ashok Cinema, At&po&Ta.Sidhpur,Di.patan-384151', '4,mangaldeep Society, Nr.Ashok Cinema, At&po&Ta.Sidhpur,Di.patan-384151', 168, 384001, 10, 106, 1, 9601278732),
(130, 'Bavalchudi,Ta.vadgam, Dist-B.K-385210', 'Bavalchudi,Ta.vadgam, Dist-B.K-385210', 106, 168, 385210, 10, 'Bavalchudi,Ta.vadgam, Dist-B.K-385210', 'Bavalchudi,Ta.vadgam, Dist-B.K-385210', 168, 385210, 10, 106, 1, 9904670691),
(131, 'Police Head Quatras, Police line, Room no-C3/17,B/h Railway station, patan-384265', 'Police Head Quatras, Police line, Room no-C3/17,B/h Railway station, patan-384265', 106, 135, 384265, 10, 'Police Head Quatras, Police line, Room no-C3/17,B/h Railway station, patan-384265', 'Police Head Quatras, Police line, Room no-C3/17,B/h Railway station, patan-384265', 135, 384265, 10, 106, 1, 9909846349),
(132, '16,Satyam Banglow, opp-Church Ramosna Road, Mehsana-2-384002', '16,Satyam Banglow, opp-Church Ramosna Road, Mehsana-2-384002', 106, 168, 384002, 10, '16,Satyam Banglow, opp-Church Ramosna Road, Mehsana-2-384002', '16,Satyam Banglow, opp-Church Ramosna Road, Mehsana-2-384002', 168, 384002, 10, 106, 1, 9426601421),
(133, 'B-6, Sarkari Vashahat, Court Compound,Sidhpur-384151', 'B-6, Sarkari Vashahat, Court Compound,Sidhpur-384151', 106, 151, 384151, 10, 'B-6, Sarkari Vashahat, Court Compound,Sidhpur-384151', 'B-6, Sarkari Vashahat, Court Compound,Sidhpur-384151', 151, 384151, 10, 106, 1, 9909844830),
(134, '29,Vishwakarma Society, Nr.Akesan Fatak, Ahm. Highway, Palanpur-385001', '29,Vishwakarma Society, Nr.Akesan Fatak, Ahm. Highway, Palanpur-385001', 106, 130, 385001, 10, '29,Vishwakarma Society, Nr.Akesan Fatak, Ahm. Highway, Palanpur-385001', '29,Vishwakarma Society, Nr.Akesan Fatak, Ahm. Highway, Palanpur-385001', 130, 385001, 10, 106, 1, 9427566930),
(135, 'B-21, Tirupati Township, Jalarammandir, Deesa-385535', 'B-21, Tirupati Township, Jalarammandir, Deesa-385535', 106, 139, 385340, 10, 'B-21, Tirupati Township, Jalarammandir, Deesa-385535', 'B-21, Tirupati Township, Jalarammandir, Deesa-385535', 139, 385340, 10, 106, 1, 9909079600),
(136, 'At.Basana, Ta.Visanagar, Di.Mehasana-384001', 'At.Basana, Ta.Visanagar, Di.Mehasana-384001', 106, 168, 384001, 10, 'At.Basana, Ta.Visanagar, Di.Mehasana-384001', 'At.Basana, Ta.Visanagar, Di.Mehasana-384001', 168, 384001, 10, 106, 1, 9427287927),
(137, 'Shaktinagar Society, Bokarwada, Ta.Visnagar, Di.Mehsana', 'Shaktinagar Society, Bokarwada, Ta.Visnagar, Di.Mehsana', 106, 168, 384120, 10, 'Shaktinagar Society, Bokarwada, Ta.Visnagar, Di.Mehsana', 'Shaktinagar Society, Bokarwada, Ta.Visnagar, Di.Mehsana', 168, 384120, 10, 106, 1, 9979923740),
(138, 'Nr. Parmar Masjid, At&po-Sami, Di-Patan', 'Nr. Parmar Masjid, At&po-Sami, Di-Patan', 106, 168, 1, 10, 'Nr. Parmar Masjid, At&po-Sami, Di-Patan', 'Nr. Parmar Masjid, At&po-Sami, Di-Patan', 168, 8, 10, 106, 1, 9998861324),
(139, '47, Sarswati Park, Raileay Station Road,Deesa-385535', '47, Sarswati Park, Raileay Station Road,Deesa-385535', 106, 46, 385535, 10, '47, Sarswati Park, Raileay Station Road,Deesa-385535', '47, Sarswati Park, Raileay Station Road,Deesa-385535', 46, 385535, 10, 106, 1, 9824908561),
(140, 'Vanarshi No Madha, Maa Hospital(patan)-384265', 'Vanarshi No Madha, Maa Hospital(patan)-384265', 106, 135, 384265, 10, 'Vanarshi No Madha, Maa Hospital(patan)-384265', 'Vanarshi No Madha, Maa Hospital(patan)-384265', 135, 384265, 10, 106, 1, 9979920795),
(141, 'Ghasiyavas Radhanpur, Di-Patan,385340', 'Ghasiyavas Radhanpur, Di-Patan,385340', 106, 139, 385340, 10, 'Ghasiyavas Radhanpur, Di-Patan,385340', 'Ghasiyavas Radhanpur, Di-Patan,385340', 139, 385340, 10, 106, 1, 9727286253),
(142, 'Gurjarvado, Nr. Sarda Tokiz,Patan-384265', 'Gurjarvado, Nr. Sarda Tokiz,Patan-384265', 106, 135, 384265, 10, 'Gurjarvado, Nr. Sarda Tokiz,Patan-384265', 'Gurjarvado, Nr. Sarda Tokiz,Patan-384265', 135, 384265, 10, 106, 1, 8980684072),
(143, 'Biharibag Society, Rajpur Road, Deesa, B.K-385535', 'Biharibag Society, Rajpur Road, Deesa, B.K-385535', 106, 46, 385535, 10, 'Biharibag Society, Rajpur Road, Deesa, B.K-385535', 'Biharibag Society, Rajpur Road, Deesa, B.K-385535', 46, 385535, 10, 106, 1, 9426897776),
(144, 'Junapara ma, At&po.Kansa, Ta.Visnagar, Di.Mehsana', 'Junapara ma, At&po.Kansa, Ta.Visnagar, Di.Mehsana', 106, 168, 384315, 10, 'Junapara ma, At&po.Kansa, Ta.Visnagar, Di.Mehsana', 'Junapara ma, At&po.Kansa, Ta.Visnagar, Di.Mehsana', 168, 384315, 10, 106, 1, 9727083477),
(145, 'Part-2, Block-23, Rajvi Banglow, Juna Laxmipura, Palanpur, (B.K)', 'Part-2, Block-23, Rajvi Banglow, Juna Laxmipura, Palanpur, (B.K)', 106, 130, 385001, 10, 'Part-2, Block-23, Rajvi Banglow, Juna Laxmipura, Palanpur, (B.K)', 'Part-2, Block-23, Rajvi Banglow, Juna Laxmipura, Palanpur, (B.K)', 130, 385001, 10, 106, 1, 9904057673),
(146, 'At.Islampur, Ta.Chansma, Di. Patan-384275', 'At.Islampur, Ta.Chansma, Di. Patan-384275', 106, 168, 384275, 10, 'At.Islampur, Ta.Chansma, Di. Patan-384275', 'At.Islampur, Ta.Chansma, Di. Patan-384275', 168, 384275, 10, 106, 1, 9978460528),
(147, 'At.Lunava, Po.Jetadu Ta.Tharad, Di-B.K', 'At.Lunava, Po.Jetadu Ta.Tharad, Di-B.K', 106, 160, 385565, 10, 'At.Lunava, Po.Jetadu Ta.Tharad, Di-B.K', 'At.Lunava, Po.Jetadu Ta.Tharad, Di-B.K', 160, 385565, 10, 106, 1, 9727281894),
(148, 'Om Dipasha Colony, Opp.Shambhv Park, Unjha-384170', 'Om Dipasha Colony, Opp.Shambhv Park, Unjha-384170', 106, 165, 384170, 10, 'Om Dipasha Colony, Opp.Shambhv Park, Unjha-384170', 'Om Dipasha Colony, Opp.Shambhv Park, Unjha-384170', 165, 384170, 10, 106, 1, 9925440737),
(149, 'At. Brahmanwada, Ta. Unjha, Dist. Mehsana, 384215', 'At. Brahmanwada, Ta. Unjha, Dist. Mehsana, 384215', 106, 165, 384170, 10, 'At. Brahmanwada, Ta. Unjha, Dist. Mehsana, 384215', 'At. Brahmanwada, Ta. Unjha, Dist. Mehsana, 384215', 165, 384170, 10, 106, 9429727657, 9429727656),
(150, 'New panchal vas, kakosi(patan)-384290', 'New panchal vas, kakosi(patan)-384290', 106, 168, 384290, 10, 'New panchal vas, kakosi(patan)-384290', 'New panchal vas, kakosi(patan)-384290', 168, 384290, 10, 106, 9427379898, 9427379898),
(151, '24, Thakar Colony,B/H Ayodhyanagar society, Nr kakoshi fatak, sidhpur, dist:patan-384151', '24, Thakar Colony,B/H Ayodhyanagar society, Nr kakoshi fatak, sidhpur, dist:patan-384151', 106, 151, 384151, 10, '24, Thakar Colony,B/H Ayodhyanagar society, Nr kakoshi fatak, sidhpur, dist:patan-384151', '24, Thakar Colony,B/H Ayodhyanagar society, Nr kakoshi fatak, sidhpur, dist:patan-384151', 151, 384151, 10, 106, 9374740742, 9374740742),
(152, 'Brahmanvas,B/h Sivil hospital mansarovar road, palanpur-385001', 'Brahmanvas,B/h Sivil hospital mansarovar road, palanpur-385001', 106, 130, 385001, 10, 'Brahmanvas,B/h Sivil hospital mansarovar road, palanpur-385001', 'Brahmanvas,B/h Sivil hospital mansarovar road, palanpur-385001', 130, 385001, 10, 106, 9624878350, 8460652165),
(153, 'At.&Po. Nandotra,Ta.Vadgam, B.K', 'At.&Po. Nandotra,Ta.Vadgam, B.K', 106, 168, 385421, 10, 'At.&Po. Nandotra,Ta.Vadgam, B.K', 'At.&Po. Nandotra,Ta.Vadgam, B.K', 168, 385421, 10, 106, 9726057956, 9880181640),
(154, 'Village:Tadav, Ta. Wav-385566', 'Village:Tadav, Ta. Wav-385566', 106, 168, 385566, 10, 'Village:Tadav, Ta. Wav-385566', 'Village:Tadav, Ta. Wav-385566', 168, 385566, 10, 106, 9428675320, 9429552829),
(155, 'navo madh, Nr.grampanchayat, kamli. Dist:mehsana-384140', 'navo madh, Nr.grampanchayat, kamli. Dist:mehsana-384140', 106, 165, 384175, 10, 'navo madh, Nr.grampanchayat, kamli. Dist:mehsana-384140', 'navo madh, Nr.grampanchayat, kamli. Dist:mehsana-384140', 165, 384175, 10, 106, 9825079347, 9825079347),
(156, 'Navjivan Society, Abu Highyway Road, Palanpur-385002', 'Navjivan Society, Abu Highyway Road, Palanpur-385002', 106, 168, 1, 10, 'Navjivan Society, Abu Highyway Road, Palanpur-385002', 'Navjivan Society, Abu Highyway Road, Palanpur-385002', 168, 8, 10, 106, 9927268994, 9724191399),
(157, '26/B, Arpan park society, agola road, Nr.nandanvan society, palanpur-385001', '26/B, Arpan park society, agola road, Nr.nandanvan society, palanpur-385001', 106, 130, 385001, 10, '26/B, Arpan park society, agola road, Nr.nandanvan society, palanpur-385001', '26/B, Arpan park society, agola road, Nr.nandanvan society, palanpur-385001', 130, 385001, 10, 106, 9924777628, 9924777628),
(158, 'At&po.Timbachudi  ta.Vadgam, Dist.B.K-385210', 'At&po.Timbachudi  ta.Vadgam, Dist.B.K-385210', 106, 5, 1, 10, 'At&po.Timbachudi  ta.Vadgam, Dist.B.K-385210', 'At&po.Timbachudi  ta.Vadgam, Dist.B.K-385210', 5, 8, 10, 106, 8140282634, 8140282634),
(159, 'Railway kakoshi fatak, Nr.kotar no.58/B, ta.sidhpur, dist.patan. 384151', 'Railway kakoshi fatak, Nr.kotar no.58/B, ta.sidhpur, dist.patan. 384151', 106, 151, 384151, 10, 'Railway kakoshi fatak, Nr.kotar no.58/B, ta.sidhpur, dist.patan. 384151', 'Railway kakoshi fatak, Nr.kotar no.58/B, ta.sidhpur, dist.patan. 384151', 151, 384151, 10, 106, 9687845043, 9909290745),
(160, 'Old laxmipura, stret no.7, ta.palanpur, Dist.B.K-385002', 'Old laxmipura, stret no.7, ta.palanpur, Dist.B.K-385002', 106, 130, 385001, 10, 'Old laxmipura, stret no.7, ta.palanpur, Dist.B.K-385002', 'Old laxmipura, stret no.7, ta.palanpur, Dist.B.K-385002', 130, 385001, 10, 106, 9898365321, 9898365321),
(161, 'pasvadal ki pol, sidhpur, Ta.sidhpur, Dist.patan-384151', 'pasvadal ki pol, sidhpur, Ta.sidhpur, Dist.patan-384151', 106, 151, 384151, 10, 'pasvadal ki pol, sidhpur, Ta.sidhpur, Dist.patan-384151', 'pasvadal ki pol, sidhpur, Ta.sidhpur, Dist.patan-384151', 151, 384151, 10, 106, 9825315105, 9978596570),
(162, 'Naveriyavas, At. Maktupur Ta.Unjha, dist. Mehsana-384170', 'Naveriyavas, At. Maktupur Ta.Unjha, dist. Mehsana-384170', 106, 165, 384175, 10, 'Naveriyavas, At. Maktupur Ta.Unjha, dist. Mehsana-384170', 'Naveriyavas, At. Maktupur Ta.Unjha, dist. Mehsana-384170', 165, 384175, 10, 106, 9628837645, 9638837645),
(163, 'Jagdish nagar, Nr.Rambag, Unjha, Dist.mehsana-384170', 'Jagdish nagar, Nr.Rambag, Unjha, Dist.mehsana-384170', 106, 165, 384170, 10, 'Jagdish nagar, Nr.Rambag, Unjha, Dist.mehsana-384170', 'Jagdish nagar, Nr.Rambag, Unjha, Dist.mehsana-384170', 165, 384170, 10, 106, 9099940482, 9537528655),
(164, 'Aketa park society,Nr.motishah Darvaja, dist.patan-384265', 'Aketa park society,Nr.motishah Darvaja, dist.patan-384265', 106, 135, 384265, 10, 'Aketa park society,Nr.motishah Darvaja, dist.patan-384265', 'Aketa park society,Nr.motishah Darvaja, dist.patan-384265', 135, 384265, 10, 106, 9925623560, 9925623560);
INSERT INTO `student_address` (`student_address_id`, `student_address_c_line1`, `student_address_c_line2`, `student_address_c_country`, `student_address_c_city`, `student_address_c_pin`, `student_address_c_state`, `student_address_p_line1`, `student_address_p_line2`, `student_address_p_city`, `student_address_p_pin`, `student_address_p_state`, `student_address_p_country`, `student_address_phone`, `student_address_mobile`) VALUES
(165, 'Gurunanak society ke pass, Ta.sidhpur, Dist.patan-384151', 'Gurunanak society ke pass, Ta.sidhpur, Dist.patan-384151', 106, 135, 384151, 10, 'Gurunanak society ke pass, Ta.sidhpur, Dist.patan-384151', 'Gurunanak society ke pass, Ta.sidhpur, Dist.patan-384151', 135, 384151, 10, 106, 9825620559, 9722334155),
(166, '23, Ambika Nagar Society, Nr, G.E.B. Sidhpur, 384151', '23, Ambika Nagar Society, Nr, G.E.B. Sidhpur, 384151', 106, 151, 384151, 10, '23, Ambika Nagar Society, Nr, G.E.B. Sidhpur, 384151', '23, Ambika Nagar Society, Nr, G.E.B. Sidhpur, 384151', 151, 384151, 10, 106, 9408200977, 9429383832),
(167, 'A/23 Dharti towanship, Akesan road highway, dist.B.K,  palnpur-385001', 'A/23 Dharti towanship, Akesan road highway, dist.B.K,  palnpur-385001', 106, 168, 385506, 10, 'A/23 Dharti towanship, Akesan road highway, dist.B.K,  palnpur-385001', 'A/23 Dharti towanship, Akesan road highway, dist.B.K,  palnpur-385001', 168, 385506, 10, 106, 9825422505, 9429288964),
(168, 'Old laxmipura Ramdev nagar society, palanpur-385001', 'Old laxmipura Ramdev nagar society, palanpur-385001', 106, 3, 1, 10, 'Old laxmipura Ramdev nagar society, palanpur-385001', 'Old laxmipura Ramdev nagar society, palanpur-385001', 3, 8, 10, 106, 9426894934, 9426894934),
(169, 'At & Po. Jasleni, Ta. Palanpur, Dist. B.K. 385410', 'At & Po. Jasleni, Ta. Palanpur, Dist. B.K. 385410', 106, 130, 385410, 10, 'At & Po. Jasleni, Ta. Palanpur, Dist. B.K. 385410', 'At & Po. Jasleni, Ta. Palanpur, Dist. B.K. 385410', 130, 385410, 10, 106, 9913277480, 7567374440),
(170, '7- Patel Society, Nr. S.C.W. Highway School, Deesa-385535', '7- Patel Society, Nr. S.C.W. Highway School, Deesa-385535', 106, 46, 385535, 10, '7- Patel Society, Nr. S.C.W. Highway School, Deesa-385535', '7- Patel Society, Nr. S.C.W. Highway School, Deesa-385535', 46, 385535, 10, 106, 9879303439, 9537459436),
(171, '25 Vivekanand Society, Dhanera, Dis. Banaskantha-385310', '25 Vivekanand Society, Dhanera, Dis. Banaskantha-385310', 106, 51, 385310, 10, '25 Vivekanand Society, Dhanera, Dis. Banaskantha-385310', '25 Vivekanand Society, Dhanera, Dis. Banaskantha-385310', 51, 385310, 10, 106, 9426049675, 9426049675),
(172, 'Rabari vas, At.Maktupur, Ta.Unjha, Dist.Mehsana-384170', 'Rabari vas, At.Maktupur, Ta.Unjha, Dist.Mehsana-384170', 106, 165, 384170, 10, 'Rabari vas, At.Maktupur, Ta.Unjha, Dist.Mehsana-384170', 'Rabari vas, At.Maktupur, Ta.Unjha, Dist.Mehsana-384170', 165, 384170, 10, 106, 9913420407, 9913420407),
(173, 'AT&PO- META TA- VADGAM DI-BANASKANTHA', 'AT&PO- META TA- VADGAM DI-BANASKANTHA', 106, 168, 385525, 10, 'AT&PO- META TA- VADGAM DI-BANASKANTHA', 'AT&PO- META TA- VADGAM DI-BANASKANTHA', 168, 385525, 10, 106, 985966820, 9825966820),
(174, 'At.&Po. Madana(Gadh), Nr. Bus stand, Palanpur-385519', 'At.&Po. Madana(Gadh), Nr. Bus stand, Palanpur-385519', 106, 130, 385410, 10, 'At.&Po. Madana(Gadh), Nr. Bus stand, Palanpur-385519', 'At.&Po. Madana(Gadh), Nr. Bus stand, Palanpur-385519', 130, 385410, 10, 106, 8140126238, 7359810773),
(175, 'Hanuman Nagar, Sujanpur, Ta- Siddhpur, Di-Patan-384151', 'Hanuman Nagar, Sujanpur, Ta- Siddhpur, Di-Patan-384151', 106, 151, 384151, 10, 'Hanuman Nagar, Sujanpur, Ta- Siddhpur, Di-Patan-384151', 'Hanuman Nagar, Sujanpur, Ta- Siddhpur, Di-Patan-384151', 151, 384151, 10, 106, 9924037291, 9924037291),
(176, '106, Suyog Bunglow, Akesanfatak, Nr. Palanpur, Palanpur Ahmedabad Highway', '106, Suyog Bunglow, Akesanfatak, Nr. Palanpur, Palanpur Ahmedabad Highway', 106, 168, 1, 10, '106, Suyog Bunglow, Akesanfatak, Nr. Palanpur, Palanpur Ahmedabad Highway', '106, Suyog Bunglow, Akesanfatak, Nr. Palanpur, Palanpur Ahmedabad Highway', 168, 8, 10, 106, 9828268241, 8511237252),
(177, 'Block No.-53, Ramnagar Society, Gobari Road, Palanpur-385001', 'Block No.-53, Ramnagar Society, Gobari Road, Palanpur-385001', 106, 130, 385410, 10, 'Block No.-53, Ramnagar Society, Gobari Road, Palanpur-385001', 'Block No.-53, Ramnagar Society, Gobari Road, Palanpur-385001', 130, 385410, 10, 106, 9926342175, 9408896206),
(178, 'New Laxmipura,Opp. Karjivas, B/H Joravar Palace Ta. Palanpur-385001', 'New Laxmipura,Opp. Karjivas, B/H Joravar Palace Ta. Palanpur-385001', 106, 130, 385001, 10, 'New Laxmipura,Opp. Karjivas, B/H Joravar Palace Ta. Palanpur-385001', 'New Laxmipura,Opp. Karjivas, B/H Joravar Palace Ta. Palanpur-385001', 130, 385001, 10, 106, 9825290085, 9825290085),
(179, 'Po. Koita, Panchal Vas, Dist. Patan', 'Po. Koita, Panchal Vas, Dist. Patan', 106, 135, 384265, 10, 'Po. Koita, Panchal Vas, Dist. Patan', 'Po. Koita, Panchal Vas, Dist. Patan', 135, 384265, 10, 106, 9898019083, 9601577664),
(180, 'Gayatri Mandir Chhapi, Chhapi-385210', 'Gayatri Mandir Chhapi, Chhapi-385210', 106, 168, 385210, 10, 'Gayatri Mandir Chhapi, Chhapi-385210', 'Gayatri Mandir Chhapi, Chhapi-385210', 168, 385210, 10, 106, 9978212013, 9712845069),
(181, 'Sherpura, Ta-Vadgam, Dis. B.K.-385520', 'Sherpura, Ta-Vadgam, Dis. B.K.-385520', 106, 168, 385520, 10, 'Sherpura, Ta-Vadgam, Dis. B.K.-385520', 'Sherpura, Ta-Vadgam, Dis. B.K.-385520', 168, 385520, 10, 106, 9925410786, 9925410786),
(182, 'Nanu Kalodara, Javahar Street, Ta.Khambhat, Dist.Anand-388630', 'Nanu Kalodara, Javahar Street, Ta.Khambhat, Dist.Anand-388630', 106, 96, 388630, 10, 'Nanu Kalodara, Javahar Street, Ta.Khambhat, Dist.Anand-388630', 'Nanu Kalodara, Javahar Street, Ta.Khambhat, Dist.Anand-388630', 96, 388630, 10, 106, 9998372621, 9376736840),
(183, 'Huseniganj, Sat Sancha Nr. Dr.Rafik House, Kamalpura, Palanpur, B.K. 385001', 'Huseniganj, Sat Sancha Nr. Dr.Rafik House, Kamalpura, Palanpur, B.K. 385001', 106, 130, 385001, 10, 'Huseniganj, Sat Sancha Nr. Dr.Rafik House, Kamalpura, Palanpur, B.K. 385001', 'Huseniganj, Sat Sancha Nr. Dr.Rafik House, Kamalpura, Palanpur, B.K. 385001', 130, 385001, 10, 106, 9727815817, 9898594232),
(184, '15,shanti niketan society, op. gyatri society, at&po&ta.dhanera-385310', '15,shanti niketan society, op. gyatri society, at&po&ta.dhanera-385310', 106, 51, 385310, 10, '15,shanti niketan society, op. gyatri society, at&po&ta.dhanera-385310', '15,shanti niketan society, op. gyatri society, at&po&ta.dhanera-385310', 51, 385310, 10, 106, 9825930518, 9825930518),
(185, 'Motivaniyawas, Main Bazar, Chanasma, Dist Patan, 384220', 'Motivaniyawas, Main Bazar, Chanasma, Dist Patan, 384220', 106, 168, 1, 10, 'Motivaniyawas, Main Bazar, Chanasma, Dist Patan, 384220', 'Motivaniyawas, Main Bazar, Chanasma, Dist Patan, 384220', 168, 8, 10, 106, 8140055246, 8866883009),
(186, '80, Shivnagar Socity, Abu Highway, Angola Road, Palanpur, Dist. B.K. 385001', '80, Shivnagar Socity, Abu Highway, Angola Road, Palanpur, Dist. B.K. 385001', 106, 130, 385001, 10, '80, Shivnagar Socity, Abu Highway, Angola Road, Palanpur, Dist. B.K. 385001', '80, Shivnagar Socity, Abu Highway, Angola Road, Palanpur, Dist. B.K. 385001', 130, 385001, 10, 106, 9879132038, 9879232037),
(187, 'At.Gadalwada, Po.Hoda, Ta.Palanpur,385001', 'At.Gadalwada, Po.Hoda, Ta.Palanpur,385001', 106, 130, 385001, 10, 'At.Gadalwada, Po.Hoda, Ta.Palanpur,385001', 'At.Gadalwada, Po.Hoda, Ta.Palanpur,385001', 130, 385001, 10, 106, 9925041647, 8980372112),
(188, 'Dasaj Road, At&Po-Kamli, Ta.Unjha, Dist-Mehsana', 'Dasaj Road, At&Po-Kamli, Ta.Unjha, Dist-Mehsana', 106, 165, 384175, 10, 'Dasaj Road, At&Po-Kamli, Ta.Unjha, Dist-Mehsana', 'Dasaj Road, At&Po-Kamli, Ta.Unjha, Dist-Mehsana', 165, 384175, 10, 106, 9978165811, 8128121430),
(189, 'At&po.Jagana, Ta.Palanpur, Dist-B.K', 'At&po.Jagana, Ta.Palanpur, Dist-B.K', 106, 130, 385001, 10, 'At&po.Jagana, Ta.Palanpur, Dist-B.K', 'At&po.Jagana, Ta.Palanpur, Dist-B.K', 130, 385001, 10, 106, 9429849910, 9429849901),
(190, 'D/38, Dharati Township, Akeshnroad, Palanpur', 'D/38, Dharati Township, Akeshnroad, Palanpur', 106, 130, 385001, 10, 'D/38, Dharati Township, Akeshnroad, Palanpur', 'D/38, Dharati Township, Akeshnroad, Palanpur', 130, 385001, 10, 106, 9898331171, 8866529271),
(191, 'A/42, Bhajrav Nagar Society, Nr.Bhajrav Temple, Patan', 'A/42, Bhajrav Nagar Society, Nr.Bhajrav Temple, Patan', 106, 135, 384265, 10, 'A/42, Bhajrav Nagar Society, Nr.Bhajrav Temple, Patan', 'A/42, Bhajrav Nagar Society, Nr.Bhajrav Temple, Patan', 135, 384265, 10, 106, 7874302007, 8140289302),
(192, '4/D, Mangalmurti Duplex, Nr.Upvan Banglow, Deesa Highway, Patan-386265', '4/D, Mangalmurti Duplex, Nr.Upvan Banglow, Deesa Highway, Patan-386265', 106, 135, 384265, 10, '4/D, Mangalmurti Duplex, Nr.Upvan Banglow, Deesa Highway, Patan-386265', '4/D, Mangalmurti Duplex, Nr.Upvan Banglow, Deesa Highway, Patan-386265', 135, 384265, 10, 106, 9558826430, 8866498920),
(193, 'Salvi vado, Darji ni seri, Patan-384265', 'Salvi vado, Darji ni seri, Patan-384265', 106, 135, 384265, 10, 'Salvi vado, Darji ni seri, Patan-384265', 'Salvi vado, Darji ni seri, Patan-384265', 135, 384265, 10, 106, 9925672556, 9925672556),
(194, '38,shreeji nagar society,(mevada nagar), Sidhpur-384151', '38,shreeji nagar society,(mevada nagar), Sidhpur-384151', 106, 151, 384151, 10, '38,shreeji nagar society,(mevada nagar), Sidhpur-384151', '38,shreeji nagar society,(mevada nagar), Sidhpur-384151', 151, 384151, 10, 106, 2767226642, 9825616885),
(195, '32,Tirupati Tenament. Nr.Ambalal ni Chali, Sidhpur-384151', '32,Tirupati Tenament. Nr.Ambalal ni Chali, Sidhpur-384151', 106, 168, 8, 10, '32,Tirupati Tenament. Nr.Ambalal ni Chali, Sidhpur-384151', '32,Tirupati Tenament. Nr.Ambalal ni Chali, Sidhpur-384151', 168, 8, 10, 106, 9, 9825051515),
(196, '5, sailila, Naxtra Banglow, Angola Road, palanpur, Di.B.K', '5, sailila, Naxtra Banglow, Angola Road, palanpur, Di.B.K', 106, 168, 385001, 10, '5, sailila, Naxtra Banglow, Angola Road, palanpur, Di.B.K', '5, sailila, Naxtra Banglow, Angola Road, palanpur, Di.B.K', 168, 385001, 10, 106, 9, 9426578935),
(197, '12/A, Nandanvan Society, B/H.Adarsh School, patan-384265', '12/A, Nandanvan Society, B/H.Adarsh School, patan-384265', 106, 168, 384245, 10, '12/A, Nandanvan Society, B/H.Adarsh School, patan-384265', '12/A, Nandanvan Society, B/H.Adarsh School, patan-384265', 168, 384245, 10, 106, 9, 8238234644),
(198, 'Nani Ravi Ta-Dhanera, Dhanera', 'Nani Ravi Ta-Dhanera, Dhanera', 106, 130, 385001, 10, 'Nani Ravi Ta-Dhanera, Dhanera', 'Nani Ravi Ta-Dhanera, Dhanera', 130, 385001, 10, 106, 9, 7698385249),
(199, 'P.K nagar,B/H P.K. Party plot highway Road, Deesa-385535', 'P.K nagar,B/H P.K. Party plot highway Road, Deesa-385535', 106, 168, 385535, 10, 'P.K nagar,B/H P.K. Party plot highway Road, Deesa-385535', 'P.K nagar,B/H P.K. Party plot highway Road, Deesa-385535', 168, 385535, 10, 106, 9, 9427373118),
(200, 'Jamapura Society Patelvas, Unava', 'Jamapura Society Patelvas, Unava', 106, 130, 385001, 10, 'Jamapura Society Patelvas, Unava', 'Jamapura Society Patelvas, Unava', 130, 385001, 10, 106, 9, 9537481724),
(201, 'Balisana, Ta & Dist. Patan', 'Balisana, Ta & Dist. Patan', 106, 135, 8, 10, 'Balisana, Ta & Dist. Patan', 'Balisana, Ta & Dist. Patan', 135, 8, 10, 106, 9, 9725176921),
(202, 'Mandavii chowk, Nr. Jain Derasar, At&po.Unava, ta.Unjha,Di.mehsana-384160', 'Mandavii chowk, Nr. Jain Derasar, At&po.Unava, ta.Unjha,Di.mehsana-384160', 106, 165, 8, 10, 'Mandavii chowk, Nr. Jain Derasar, At&po.Unava, ta.Unjha,Di.mehsana-384160', 'Mandavii chowk, Nr. Jain Derasar, At&po.Unava, ta.Unjha,Di.mehsana-384160', 165, 8, 10, 106, 9, 9974319514),
(203, 'Cachariya No Mato Maholloo, Patan 384265', 'Cachariya No Mato Maholloo, Patan 384265', 106, 168, 384265, 10, 'Cachariya No Mato Maholloo, Patan 384265', 'Cachariya No Mato Maholloo, Patan 384265', 168, 384265, 10, 106, 9, 9909724105),
(204, '79,Rajkamal towanship, ambaji road, Chansma highway, patan-384265', '79,Rajkamal towanship, ambaji road, Chansma highway, patan-384265', 106, 135, 184265, 10, '79,Rajkamal towanship, ambaji road, Chansma highway, patan-384265', '79,Rajkamal towanship, ambaji road, Chansma highway, patan-384265', 135, 184265, 10, 106, 9, 8347775875),
(205, '8/ Yogeswar Park Society, Nr. Railway Gal Nala. Patan-384265', '8/ Yogeswar Park Society, Nr. Railway Gal Nala. Patan-384265', 106, 168, 384265, 10, '8/ Yogeswar Park Society, Nr. Railway Gal Nala. Patan-384265', '8/ Yogeswar Park Society, Nr. Railway Gal Nala. Patan-384265', 168, 384265, 10, 106, 9, 8980595646),
(206, 'Brhampol-junomadh, sidhpur-384151', 'Brhampol-junomadh, sidhpur-384151', 106, 168, 8, 10, 'Brhampol-junomadh, sidhpur-384151', 'Brhampol-junomadh, sidhpur-384151', 168, 8, 10, 106, 2767225888, 9825881598),
(207, 'At.Kahoda, Ta.Unjha, Di.mehsana-384130', 'At.Kahoda, Ta.Unjha, Di.mehsana-384130', 106, 168, 384130, 10, 'At.Kahoda, Ta.Unjha, Di.mehsana-384130', 'At.Kahoda, Ta.Unjha, Di.mehsana-384130', 168, 384130, 10, 106, 2767285839, 8128286132),
(208, 'Salvivado,Patola sali,Patan-384265,', 'Salvivado,Patola sali,Patan-384265,', 106, 168, 385535, 10, 'Salvivado,Patola sali,Patan-384265,', 'Salvivado,Patola sali,Patan-384265,', 168, 385535, 10, 106, 9, 9904868509),
(209, 'Juna Laxmipura, Street-5, Ta.palanpur, Di.B.K-385001', 'Juna Laxmipura, Street-5, Ta.palanpur, Di.B.K-385001', 106, 168, 385001, 10, 'Juna Laxmipura, Street-5, Ta.palanpur, Di.B.K-385001', 'Juna Laxmipura, Street-5, Ta.palanpur, Di.B.K-385001', 168, 385001, 10, 106, 9, 9904217016),
(210, '32, Chitrakut Nagar, Ganeshpura Road. Palanpur', '32, Chitrakut Nagar, Ganeshpura Road. Palanpur', 106, 130, 385001, 10, '32, Chitrakut Nagar, Ganeshpura Road. Palanpur', '32, Chitrakut Nagar, Ganeshpura Road. Palanpur', 130, 385001, 10, 106, 2742252586, 9427415582),
(211, 'Jalchowk Uncho Mahad, Patan, 384265', 'Jalchowk Uncho Mahad, Patan, 384265', 106, 168, 384265, 10, 'Jalchowk Uncho Mahad, Patan, 384265', 'Jalchowk Uncho Mahad, Patan, 384265', 168, 384265, 10, 106, 9, 9727313477),
(212, 'Madni Mahhola, Lathi Bazar, At&Po Chhapi Ta-Vadgam, Chhapi', 'Madni Mahhola, Lathi Bazar, At&Po Chhapi Ta-Vadgam, Chhapi', 106, 168, 385210, 10, 'Madni Mahhola, Lathi Bazar, At&Po Chhapi Ta-Vadgam, Chhapi', 'Madni Mahhola, Lathi Bazar, At&Po Chhapi Ta-Vadgam, Chhapi', 168, 385210, 10, 106, 9, 9428675185),
(213, 'At.Bharkawada, Ta. Vadgam, Dist.B.K.385210', 'At.Bharkawada, Ta. Vadgam, Dist.B.K.385210', 106, 168, 385210, 10, 'At.Bharkawada, Ta. Vadgam, Dist.B.K.385210', 'At.Bharkawada, Ta. Vadgam, Dist.B.K.385210', 168, 385210, 10, 106, 2739271376, 7814008875),
(214, '115/ Sarasvati Society, Sidhpur. 384151', '115/ Sarasvati Society, Sidhpur. 384151', 106, 151, 384151, 10, '115/ Sarasvati Society, Sidhpur. 384151', '115/ Sarasvati Society, Sidhpur. 384151', 151, 384151, 10, 106, 2767220366, 9428663566),
(215, 'Batawada Chitrasani amirgadh, Di.B.K-385010', 'Batawada Chitrasani amirgadh, Di.B.K-385010', 106, 168, 385010, 10, 'Batawada Chitrasani amirgadh, Di.B.K-385010', 'Batawada Chitrasani amirgadh, Di.B.K-385010', 168, 385010, 10, 106, 9, 9909264560),
(216, 'Sarvodaya paru, At&po.Kahoda, ta.unjha,Di.mehsana-384130', 'Sarvodaya paru, At&po.Kahoda, ta.unjha,Di.mehsana-384130', 106, 168, 8, 10, 'Sarvodaya paru, At&po.Kahoda, ta.unjha,Di.mehsana-384130', 'Sarvodaya paru, At&po.Kahoda, ta.unjha,Di.mehsana-384130', 168, 8, 10, 106, 9, 9429730705),
(217, '41/ Sayog Banglows Akesh Fatak, Palanpur', '41/ Sayog Banglows Akesh Fatak, Palanpur', 106, 168, 8, 10, '41/ Sayog Banglows Akesh Fatak, Palanpur', '41/ Sayog Banglows Akesh Fatak, Palanpur', 168, 8, 10, 106, 9, 9979321001),
(218, 'Agnashiya Paru, Brahmanwada,  Ta. Unjha, Dist. Mehsana', 'Agnashiya Paru, Brahmanwada,  Ta. Unjha, Dist. Mehsana', 106, 168, 384215, 10, 'Agnashiya Paru, Brahmanwada,  Ta. Unjha, Dist. Mehsana', 'Agnashiya Paru, Brahmanwada,  Ta. Unjha, Dist. Mehsana', 168, 384215, 10, 106, 9, 9909128167),
(219, '36,Deep ganga society, Nr. Panchsil society,unjha-384170', '36,Deep ganga society, Nr. Panchsil society,unjha-384170', 106, 168, 384170, 10, '36,Deep ganga society, Nr. Panchsil society,unjha-384170', '36,Deep ganga society, Nr. Panchsil society,unjha-384170', 168, 384170, 10, 106, 9, 9725572782),
(220, 'Navo Madh, Ratna Para, Nr. Unjha', 'Navo Madh, Ratna Para, Nr. Unjha', 106, 168, 384170, 10, 'Navo Madh, Ratna Para, Nr. Unjha', 'Navo Madh, Ratna Para, Nr. Unjha', 168, 384170, 10, 106, 9, 7383460660),
(221, '48, Ashirvad Banglow, Nr. Kisan Oil Mill, Palanpur', '48, Ashirvad Banglow, Nr. Kisan Oil Mill, Palanpur', 106, 168, 385506, 10, '48, Ashirvad Banglow, Nr. Kisan Oil Mill, Palanpur', '48, Ashirvad Banglow, Nr. Kisan Oil Mill, Palanpur', 168, 385506, 10, 106, 2748278414, 9408301626),
(222, 'Kamaniya paru, Umiyanagar society, Unava, At&po&Ta.Unjha, Di.mehsana-384160', 'Kamaniya paru, Umiyanagar society, Unava, At&po&Ta.Unjha, Di.mehsana-384160', 106, 168, 384160, 10, 'Kamaniya paru, Umiyanagar society, Unava, At&po&Ta.Unjha, Di.mehsana-384160', 'Kamaniya paru, Umiyanagar society, Unava, At&po&Ta.Unjha, Di.mehsana-384160', 168, 384160, 10, 106, 9, 9428663713),
(223, 'Ram sala ni pol, Chachariya Lalgate, patan-384265', 'Ram sala ni pol, Chachariya Lalgate, patan-384265', 106, 168, 384265, 10, 'Ram sala ni pol, Chachariya Lalgate, patan-384265', 'Ram sala ni pol, Chachariya Lalgate, patan-384265', 168, 384265, 10, 106, 9, 9913609148),
(224, '18,Hari darshan Society, TB Tran Rasta, patan-384265', '18,Hari darshan Society, TB Tran Rasta, patan-384265', 106, 135, 384285, 10, '18,Hari darshan Society, TB Tran Rasta, patan-384265', '18,Hari darshan Society, TB Tran Rasta, patan-384265', 135, 384285, 10, 106, 9, 9978412312),
(225, '11,Garib nawaz society, N/H Masjid nagalpur, mehsana-384002', '11,Garib nawaz society, N/H Masjid nagalpur, mehsana-384002', 106, 168, 8, 10, '11,Garib nawaz society, N/H Masjid nagalpur, mehsana-384002', '11,Garib nawaz society, N/H Masjid nagalpur, mehsana-384002', 168, 8, 10, 106, 9, 9033523034),
(226, '49,gurukrupa society, Nr.Sun Nagar Society, Sidhpur-384151', '49,gurukrupa society, Nr.Sun Nagar Society, Sidhpur-384151', 106, 168, 384151, 10, '49,gurukrupa society, Nr.Sun Nagar Society, Sidhpur-384151', '49,gurukrupa society, Nr.Sun Nagar Society, Sidhpur-384151', 168, 384151, 10, 106, 9, 9879540925),
(227, 'Shree Shakti Nagar Society, Shukh Bag Road, Palanpur', 'Shree Shakti Nagar Society, Shukh Bag Road, Palanpur', 106, 130, 385001, 10, 'Shree Shakti Nagar Society, Shukh Bag Road, Palanpur', 'Shree Shakti Nagar Society, Shukh Bag Road, Palanpur', 130, 385001, 10, 106, 9, 9909080112),
(228, 'To:Gatipur,Po:Nanivada, Ta:Kheralu,DI:Mehsana-384325,', 'To:Gatipur,Po:Nanivada, Ta:Kheralu,DI:Mehsana-384325,', 106, 100, 8, 10, 'To:Gatipur,Po:Nanivada, Ta:Kheralu,DI:Mehsana-384325,', 'To:Gatipur,Po:Nanivada, Ta:Kheralu,DI:Mehsana-384325,', 100, 8, 10, 106, 9, 9624862785),
(229, 'To:Gatipur,Po:Nanivada, Ta:Kheralu,DI:Mehsana-384325,', 'To:Gatipur,Po:Nanivada, Ta:Kheralu,DI:Mehsana-384325,', 106, 168, 8, 10, 'To:Gatipur,Po:Nanivada, Ta:Kheralu,DI:Mehsana-384325,', 'To:Gatipur,Po:Nanivada, Ta:Kheralu,DI:Mehsana-384325,', 168, 8, 10, 106, 9, 9586056087),
(230, 'Ashok Society, Mansarovar road, palanpur-385001', 'Ashok Society, Mansarovar road, palanpur-385001', 106, 122, 8, 10, 'Ashok Society, Mansarovar road, palanpur-385001', 'Ashok Society, Mansarovar road, palanpur-385001', 122, 8, 10, 106, 9, 9638638596),
(231, 'At & PoThakerasan, Dist. Patan', 'At & PoThakerasan, Dist. Patan', 106, 135, 8, 10, 'At & PoThakerasan, Dist. Patan', 'At & PoThakerasan, Dist. Patan', 135, 8, 10, 106, 9, 9925168196),
(232, 'At & Po: Kalyana, Sidhpur, Dist. Patan', 'At & Po: Kalyana, Sidhpur, Dist. Patan', 106, 168, 384265, 10, 'At & Po: Kalyana, Sidhpur, Dist. Patan', 'At & Po: Kalyana, Sidhpur, Dist. Patan', 168, 384265, 10, 106, 9, 9725158053),
(233, '13, hinglajnagar society,Nr.Vinayak school, Ninava Road, Dhanera.(B.K)385310', '13, hinglajnagar society,Nr.Vinayak school, Ninava Road, Dhanera.(B.K)385310', 106, 51, 385310, 10, '13, hinglajnagar society,Nr.Vinayak school, Ninava Road, Dhanera.(B.K)385310', '13, hinglajnagar society,Nr.Vinayak school, Ninava Road, Dhanera.(B.K)385310', 51, 385310, 10, 106, 9, 7600183091),
(234, 'At :Jagana,Ta:Palanpur,Aathmani Sarni Chaudhary Vas,Ta & Di:Palanpur-385011', 'At :Jagana,Ta:Palanpur,Aathmani Sarni Chaudhary Vas,Ta & Di:Palanpur-385011', 106, 168, 385011, 10, 'At :Jagana,Ta:Palanpur,Aathmani Sarni Chaudhary Vas,Ta & Di:Palanpur-385011', 'At :Jagana,Ta:Palanpur,Aathmani Sarni Chaudhary Vas,Ta & Di:Palanpur-385011', 168, 385011, 10, 106, 9, 9429087227),
(235, '3/Shashtri nagar Society, TB Hospital Road, Mehsana-384002', '3/Shashtri nagar Society, TB Hospital Road, Mehsana-384002', 106, 168, 384002, 10, '3/Shashtri nagar Society, TB Hospital Road, Mehsana-384002', '3/Shashtri nagar Society, TB Hospital Road, Mehsana-384002', 168, 384002, 10, 106, 9, 9925699002),
(236, 'Nava Vankarvas, Sidhpur,Ta;Sidhpur,Di:Patan-384151', 'Nava Vankarvas, Sidhpur,Ta;Sidhpur,Di:Patan-384151', 106, 168, 8, 10, 'Nava Vankarvas, Sidhpur,Ta;Sidhpur,Di:Patan-384151', 'Nava Vankarvas, Sidhpur,Ta;Sidhpur,Di:Patan-384151', 168, 8, 10, 106, 9, 9925930485),
(237, 'At&po.Khodana, Ta&Dist.Patan', 'At&po.Khodana, Ta&Dist.Patan', 106, 168, 8, 10, 'At&po.Khodana, Ta&Dist.Patan', 'At&po.Khodana, Ta&Dist.Patan', 168, 8, 10, 106, 9, 9925844000),
(238, 'Barot vas,At&po.kahoda, Ta.Unjha, Dist.Mehsana', 'Barot vas,At&po.kahoda, Ta.Unjha, Dist.Mehsana', 106, 168, 384130, 10, 'Barot vas,At&po.kahoda, Ta.Unjha, Dist.Mehsana', 'Barot vas,At&po.kahoda, Ta.Unjha, Dist.Mehsana', 168, 384130, 10, 106, 2767285331, 9913303097),
(239, 'Uplicheri, Sadacharaj ni khadki, Sidhpur, Ta.Sidhpur, Dist.Patan', 'Uplicheri, Sadacharaj ni khadki, Sidhpur, Ta.Sidhpur, Dist.Patan', 106, 165, 8, 10, 'Uplicheri, Sadacharaj ni khadki, Sidhpur, Ta.Sidhpur, Dist.Patan', 'Uplicheri, Sadacharaj ni khadki, Sidhpur, Ta.Sidhpur, Dist.Patan', 165, 8, 10, 106, 9, 9408866825),
(240, 'Maher Society, Nr.Jampura School, Palanpur, Dist.B.K', 'Maher Society, Nr.Jampura School, Palanpur, Dist.B.K', 106, 130, 385001, 10, 'Maher Society, Nr.Jampura School, Palanpur, Dist.B.K', 'Maher Society, Nr.Jampura School, Palanpur, Dist.B.K', 130, 385001, 10, 106, 9, 8690007483),
(241, 'At.Navavas, Po.Kaleda, Ta.Vadgam, Dist.B.K', 'At.Navavas, Po.Kaleda, Ta.Vadgam, Dist.B.K', 106, 168, 385421, 10, 'At.Navavas, Po.Kaleda, Ta.Vadgam, Dist.B.K', 'At.Navavas, Po.Kaleda, Ta.Vadgam, Dist.B.K', 168, 385421, 10, 106, 9, 9426895524),
(242, '14,Gurukrupa Society, B/h Pushpavati Society, Nr.Angola Road, Hanuman Tekari, Delhi National Highway', '14,Gurukrupa Society, B/h Pushpavati Society, Nr.Angola Road, Hanuman Tekari, Delhi National Highway', 106, 51, 8, 10, '14,Gurukrupa Society, B/h Pushpavati Society, Nr.Angola Road, Hanuman Tekari, Delhi National Highway', '14,Gurukrupa Society, B/h Pushpavati Society, Nr.Angola Road, Hanuman Tekari, Delhi National Highway', 51, 8, 10, 106, 9, 8690490624),
(243, '26,Krishna Park Part-1, opp-Subham party plot, Patan Highway, Deesa', '26,Krishna Park Part-1, opp-Subham party plot, Patan Highway, Deesa', 106, 135, 8, 10, '26,Krishna Park Part-1, opp-Subham party plot, Patan Highway, Deesa', '26,Krishna Park Part-1, opp-Subham party plot, Patan Highway, Deesa', 135, 8, 10, 106, 9, 9898669199),
(244, '31,Ankit Society, Kant Road, Deesa', '31,Ankit Society, Kant Road, Deesa', 106, 168, 385535, 10, '31,Ankit Society, Kant Road, Deesa', '31,Ankit Society, Kant Road, Deesa', 168, 385535, 10, 106, 9, 9737898391),
(245, 'A 98, Tirupati Township, Ranapur Road, Deesa, (B.K)', 'A 98, Tirupati Township, Ranapur Road, Deesa, (B.K)', 106, 168, 385535, 10, 'A 98, Tirupati Township, Ranapur Road, Deesa, (B.K)', 'A 98, Tirupati Township, Ranapur Road, Deesa, (B.K)', 168, 385535, 10, 106, 2744641999, 9825226620),
(246, 'Kohinur Society, Nr. Taherpura, Sidhpur, Dist.Patan', 'Kohinur Society, Nr. Taherpura, Sidhpur, Dist.Patan', 106, 151, 384151, 10, 'Kohinur Society, Nr. Taherpura, Sidhpur, Dist.Patan', 'Kohinur Society, Nr. Taherpura, Sidhpur, Dist.Patan', 151, 384151, 10, 106, 9, 9825126900),
(247, '39,Swapn Srusti Society, B/h TV Kendra, Nr.Bhagvati Banglows, Dairy Road, Palanpur', '39,Swapn Srusti Society, B/h TV Kendra, Nr.Bhagvati Banglows, Dairy Road, Palanpur', 106, 3, 380009, 10, '39,Swapn Srusti Society, B/h TV Kendra, Nr.Bhagvati Banglows, Dairy Road, Palanpur', '39,Swapn Srusti Society, B/h TV Kendra, Nr.Bhagvati Banglows, Dairy Road, Palanpur', 3, 380009, 10, 106, 9, 9586860455),
(248, 'At&po.Changwada, Ta.Vadgam, Dist.B.K', 'At&po.Changwada, Ta.Vadgam, Dist.B.K', 106, 168, 385520, 10, 'At&po.Changwada, Ta.Vadgam, Dist.B.K', 'At&po.Changwada, Ta.Vadgam, Dist.B.K', 168, 385520, 10, 106, 9, 9909815960),
(249, 'Main Market, Iqbalgadh, 385135', 'Main Market, Iqbalgadh, 385135', 106, 168, 385113, 10, 'Main Market, Iqbalgadh, 385135', 'Main Market, Iqbalgadh, 385135', 168, 385113, 10, 106, 9, 8905207231),
(250, 'Ambika Street, At.Gadh, Ta.Palanpur, Dist.B.K', 'Ambika Street, At.Gadh, Ta.Palanpur, Dist.B.K', 106, 168, 385015, 10, 'Ambika Street, At.Gadh, Ta.Palanpur, Dist.B.K', 'Ambika Street, At.Gadh, Ta.Palanpur, Dist.B.K', 168, 385015, 10, 106, 9, 9429361225),
(251, 'Kalpataru Banglow, Nr LIC Office,Sidhpur, Dist-Patan', 'Kalpataru Banglow, Nr LIC Office,Sidhpur, Dist-Patan', 106, 156, 8, 10, 'Kalpataru Banglow, Nr LIC Office,Sidhpur, Dist-Patan', 'Kalpataru Banglow, Nr LIC Office,Sidhpur, Dist-Patan', 156, 8, 10, 106, 9, 9016187250),
(252, 'A/7, Green Park Society, Ahmedabad Highway, Palanpur, (B.K)', 'A/7, Green Park Society, Ahmedabad Highway, Palanpur, (B.K)', 106, 130, 8, 10, 'A/7, Green Park Society, Ahmedabad Highway, Palanpur, (B.K)', 'A/7, Green Park Society, Ahmedabad Highway, Palanpur, (B.K)', 130, 8, 10, 106, 9, 9427260351),
(253, 'Ambikanagar, B/h. Dimple Tokiz, Deesa.', 'Ambikanagar, B/h. Dimple Tokiz, Deesa.', 106, 168, 385535, 10, 'Ambikanagar, B/h. Dimple Tokiz, Deesa.', 'Ambikanagar, B/h. Dimple Tokiz, Deesa.', 168, 385535, 10, 106, 9, 9898919909),
(254, 'Mahadeviya Umarcot, Po.Jethi, Amirgadh.', 'Mahadeviya Umarcot, Po.Jethi, Amirgadh.', 106, 168, 8, 10, 'Mahadeviya Umarcot, Po.Jethi, Amirgadh.', 'Mahadeviya Umarcot, Po.Jethi, Amirgadh.', 168, 8, 10, 106, 9, 9574886058);

-- --------------------------------------------------------

--
-- Table structure for table `student_docs`
--

CREATE TABLE IF NOT EXISTS `student_docs` (
  `student_docs_id` int(6) NOT NULL AUTO_INCREMENT,
  `student_docs_desc` varchar(50) DEFAULT NULL,
  `student_docs_path` varchar(150) NOT NULL,
  PRIMARY KEY (`student_docs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `student_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) NOT NULL,
  `student_roll_no` varchar(10) NOT NULL,
  `student_merit_no` varchar(15) NOT NULL,
  `student_enroll_no` varchar(15) NOT NULL,
  `student_gr_no` bigint(15) NOT NULL,
  `student_first_name` varchar(25) NOT NULL,
  `student_middle_name` varchar(25) NOT NULL,
  `student_last_name` varchar(25) NOT NULL,
  `student_father_name` varchar(25) DEFAULT NULL,
  `student_mother_name` varchar(25) NOT NULL,
  `student_living_status` varchar(15) NOT NULL,
  `student_adm_date` date NOT NULL,
  `student_dob` date NOT NULL,
  `student_birthplace` varchar(25) DEFAULT NULL,
  `student_gender` varchar(6) NOT NULL,
  `student_guardian_name` varchar(100) NOT NULL,
  `student_guardian_relation` varchar(20) NOT NULL,
  `student_guardian_qualification` varchar(50) DEFAULT NULL,
  `student_guardian_occupation` varchar(50) DEFAULT NULL,
  `student_guardian_income` varchar(15) NOT NULL,
  `student_guardian_occupation_address` varchar(100) DEFAULT NULL,
  `student_guardian_occupation_city` int(4) DEFAULT NULL,
  `student_guardian_city_pin` int(6) DEFAULT NULL,
  `student_guardian_home_address` varchar(100) DEFAULT NULL,
  `student_guardian_phoneno` bigint(15) DEFAULT NULL,
  `student_guardian_mobile` bigint(15) NOT NULL,
  `student_email_id_1` varchar(60) NOT NULL,
  `student_email_id_2` varchar(60) DEFAULT NULL,
  `student_bloodgroup` varchar(3) NOT NULL,
  `student_tally_id` bigint(20) NOT NULL,
  `student_created_by` int(1) DEFAULT NULL,
  `student_creation_date` datetime DEFAULT NULL,
  `student_mobile_no` bigint(15) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=255 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`student_id`, `title`, `student_roll_no`, `student_merit_no`, `student_enroll_no`, `student_gr_no`, `student_first_name`, `student_middle_name`, `student_last_name`, `student_father_name`, `student_mother_name`, `student_living_status`, `student_adm_date`, `student_dob`, `student_birthplace`, `student_gender`, `student_guardian_name`, `student_guardian_relation`, `student_guardian_qualification`, `student_guardian_occupation`, `student_guardian_income`, `student_guardian_occupation_address`, `student_guardian_occupation_city`, `student_guardian_city_pin`, `student_guardian_home_address`, `student_guardian_phoneno`, `student_guardian_mobile`, `student_email_id_1`, `student_email_id_2`, `student_bloodgroup`, `student_tally_id`, `student_created_by`, `student_creation_date`, `student_mobile_no`) VALUES
(1, 'MR.', '45', '4371', '110980119001', 11191177, 'SMITKUMAR', 'SUDHIRBHAI', 'PATEL', 'SUDHIRBHAI', 'SUBHADRABEN', 'HOME', '2003-08-11', '1994-06-20', 'AITHOR', 'MALE', 'SUDHIRBHAI', 'FATHER', 'ITT', 'FARMER', '25000', 'AITHOR', 65, 384175, 'Aithor, Ta. Unjha, Dt.Mehsana', 9, 9723370184, 'smit.patel1@hansabacollege.com', '', 'AB+', 0, 2, '2012-07-27 17:26:04', 9723370184),
(2, 'MR.', '29', '4412', '110980119002', 11191178, 'HARDIKKUMAR', 'BHARATBHAI', 'PATEL', 'BHARATBHAI', 'GEETABEN', 'HOME', '2011-08-17', '1994-01-16', 'SIDHPUR', 'MALE', 'BHARATBHAI SHAMLARLAL PATEL', 'FATHER', '7 PASS', 'NA', '22000', 'MOTOVAS,BILIYA,TA-SIDHPUR,DIST-PATAN', 135, 384151, 'Po. Motovas, Biliya, Ta. Sidhpur, Dist. Patan, 384151', 9, 9723389299, 'hardik.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9898938928),
(3, 'MR.', '42', '5334', '110980119003', 11191179, 'RONAK', 'JAYESHBHAI', 'PATEL', 'JAYESHBHAI', 'KUSHUMBEN', 'HOME', '2011-07-20', '1994-02-02', 'UNJHA', 'MALE', 'JAYESHBHAI', 'FATHER', 'MA, BD..', 'RUNSHOP', '25000.0', '15-B SARDARNAGER SOEIATY ,SIDHPUR ,PATAN', 151, 384151, '15-B Sardar Nagar Society, Near. Sun Nagar, Sidhpur-384151', 9, 8866025613, 'ronak.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8866025613),
(4, 'MR.', '33', '5950', '110980119004', 11191180, 'JIGARKUMAR', 'BHARATBHAI', 'PATEL', 'BHARATBHAI', 'KAPILABEN', 'HOME', '2011-07-13', '1994-07-05', 'MEHSANA', 'MALE', 'BHARATBHAI', 'FATHER', 'HSC', 'AUTO DRIVER', '60000', '23/B,108,Umiya Krupa Society,\nOpp:Nirma Factory,Modhera Road. Mehsana', 168, 384002, '23/B,108,Umiya Krupa Society,\nOpp:Nirma Factory,Modhera Road. Mehsana', 9, 9737763943, 'jigar.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9737763943),
(5, 'MR.', '53', '6116', '110980119005', 11191181, 'YUVANGSINH', 'BABUJI', 'RAJPUT', 'BABUJI', 'GALIBEN', 'HOME', '2003-08-11', '1993-08-25', 'AHMEDABAD', 'MALE', 'BABUJI', 'FATHER', 'MCOM BED', 'SERVICES', '300000', 'S.U.N MEHTA HIGH SCHOOL,CHHAPI TA:VADGAM B.K', 130, 385001, '4-Ashirvad Bunglow, Nr.Kishan Oil Mill, \nAhmedabad Highway, Palanpur-385001', 9, 8401836953, 'Yuvangsinh.rajput@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8401836953),
(6, 'MR.', '8', '6665', '110980119006', 11191182, 'ANKITKUMAR', 'JYANTILAL', 'GHUGHADA', 'JYANTILAL', 'SHARADABEN', 'HOME', '2003-08-11', '1993-11-27', 'KUNVARA', 'MALE', 'JAYANTILAL CHEKABHAI GHUGHADA', 'FATHER', '5 PASS', 'FARMER', '12000', 'AT-KUNVAR,TA-SIDHPUR,DI-PATAN', 135, 384151, 'Ambajipura, At. Kunvara, Tal-Sidhpur, \nDist. Patan.384151', 9, 9601876790, 'ankit.ghughada@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9601876790),
(7, 'MR.', '26', '6831', '110980119007', 11191183, 'CHARMIN', 'SURESHBHAI', 'PATEL', 'SURESHBHAI', 'SUDHABEN', 'HOME', '2011-07-20', '1994-06-30', 'UNJHA', 'MALE', 'SURESHBHAI MOHANLAL PATEL', 'FATHER', 'B.COM', 'BUSSINESS', '36000', 'VISHNAGAR ROAD,UNJHA', 165, 384170, 'At :Unjha,Jasakiyaparu,\nNr.Rambaug School,Unjha', 9, 9898120410, 'Charmin.Patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9722187844),
(8, 'MR.', '23', '7700', '110980119008', 11191184, 'ANKITKUMAR', 'TRIKAMBHAI', 'PATEL', 'TRIKAMBHAI', 'JAGRUTIBEN', 'HOME', '2002-08-11', '1994-07-14', 'VADHAVALI', 'MALE', 'TRIKAMBHAI PARASHOTAMBHAI  PATEL', 'FATHER', 'PTC', 'TEACHER', '300000', 'T0-PANCHASHAR TA- CHANSMA, DIST- PATAN', 135, 384265, '8-B, Rajlaxmi Society.Nr.Sarthinagar Society,\nChanasma highyway,Patan-384266', 9429541229, 9429541228, 'ankit.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9898330218),
(9, 'MR.', '36', '7829', '110980119009', 11191185, 'MAYURBHAI', 'PRAVINBHAI', 'PATEL', 'PRAVINBHAI', 'BABIBEN', 'HOME', '2002-08-11', '1993-06-26', 'BRAHMANWADA', 'MALE', 'PRAVINBHAI', 'FATHER', 'HSC', 'TEACHER', '360000', 'lindi primary school', 165, 384215, 'At & Po. Brahmanvada, Ta.Unjha, \nDist.Mehsana,Ganpati Paru-384215', 9, 9408199783, 'mayur.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9408199783),
(10, 'MR.', '27', '9642', '110980119010', 11191186, 'DHARAV', 'SURESHKUMAR', 'PATEL', 'SURESHKUMAR', 'JYOTSANABEN', 'HOME', '2011-08-16', '1994-06-23', 'PATAN', 'MALE', 'SURESHKUMAR  KANTIBHAI PATEL', 'FATHER', '12 PASS', 'FARMER', '40000', 'ZINIPOL, CHACHARIYA, PATAN', 135, 384265, 'Zinipol, Chachariya, patan-384265', 9, 9898721269, 'Dharva.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8000098076),
(11, 'MR.', '10', '10194', '110980119011', 11191187, 'MEETKUMAR', 'REVABHAI', 'KAPADI', 'REVABHAI', 'NEETABEN', 'HOSTEL', '2011-08-16', '1994-05-20', 'PALANPUR', 'MALE', 'REVABHAI RAMAJIBHAI KAPADI', 'FATHER', '10 PASS', 'FARMER', '100000', 'AT & PO- MADANA(GADH), TA- PALANPUR,DIST-BANASKANTHA', 168, 385519, 'At & Po. Madana (Gadh), Ta. Palanpur, B.K.385519', 9, 9427536519, 'meet.kapadi@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9722818959),
(12, 'MR.', '54', '10393', '110980119012', 11191188, 'PARTHKUMAR', 'VINODKUMAR', 'RAVAL', 'VINODKUMAR', 'USHABEN', 'HOME', '2011-07-22', '1993-09-12', 'PALANPUR', 'MALE', 'VINODKUMAR', 'FATHER', 'HSC', 'GOVERNMENT JOB', '250000', 'TAKUKA PANCHAYAT,PALANPUR', 130, 385001, 'Umiya Nagar Society,Juna Laxmipura,Palanpur,Ta:Palanpur,Di:B.K.-385001', 9, 9426739357, 'parth.raval@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9426739357),
(13, 'MR.', '48', '10582', '110980119013', 11191189, 'BHARATBHAI', 'PANAJI', 'PRAJAPATI', 'PANAJI', 'VADALIBEN', 'HOME', '2011-08-17', '1993-12-15', 'SIDHPUR', 'MALE', 'PANAJI', 'FATHER', 'HSC', 'WAJE', '12,000', 'KOTHARIVAS, SIDHPUR', 151, 384151, 'Kotharivas, Sidhpur, Ta-Sidhpur, Dist. Patan, 384151', 9, 9558700084, 'Bharat.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9558700084),
(14, 'MR.', '62', '10814', '110980119014', 11191190, 'VANRAJ', 'PARBATJI', 'THAKOR', 'PARBATJI', 'JASHIBEN', 'HOME', '2011-07-20', '1993-08-30', 'CHATURPURA', 'MALE', 'PARBATJI', 'FATHER', 'PTC', 'PRIMARY TEACHRT', '339000', 'CHATURPURA ANUPAM PRIMARY SCHOOL TA:UNJHA', 168, 384170, 'At:Chaturpura,Po:Upera,Ta:Unjha,\nDi:Mehsana-384170', 9, 9428960614, 'vanraj.thakor@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9428960614),
(15, 'MR.', '24', '11134', '110980119015', 11191191, 'ASHISHKUMAR', 'VISHNUBHAI', 'PATEL', 'VISHNUBHAI', 'GEETABEN', 'HOME', '2011-07-21', '1993-06-12', 'GAJA', 'MALE', 'VISHNUBHAI  PATEL', 'FATHER', 'B.COM', 'FARMER', '40000', 'VILLAGE-GAJA, SOCIETY-GAJANAD, PATAN', 135, 384265, 'Gajanand society, at. Gaja, ta,dis.patan-384265', 9, 9228409251, 'ashish.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8733051922),
(16, 'MR.', '58', '11243', '110980119016', 11191192, 'HARSHKUMAR', 'RAJNIKANT', 'SENOR', 'RAJNIKANT', 'BHAVANABEN', 'HOME', '2011-08-16', '1993-04-12', 'SIDHPUR', 'MALE', 'RAJNIKANT', 'FATHER', 'HSC', 'FARMER', '70000.00', 'AT: PO ANKAVI TA:SIDDHPUR DI:PATAN', 151, 384151, '101, Saraswati Society, S.J. Road, Sidhpur, Dist.Patan 384151', 9, 9898073008, 'harsh.senor@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9898073008),
(17, 'MR.', '22', '11250', '110980119017', 11191193, 'AKSHAYKUMAR', 'RAMESHBHAI', 'PATEL', 'RAMESHBHAI', 'GEETABEN', 'HOME', '2011-08-16', '1993-12-23', 'BRAHMNWADA', 'MALE', 'RAMESHBHAI MADHABHAI  PATEL', 'FATHER', 'B,PED.', 'TEACHER', '290000', 'SHREE SARSVATI VIDHAYALAY, BRAHMANWADA', 168, 384215, 'Brahmanvada, Gamivas, Ta- Unjha, Dist. Mehsana, 384215', 2767228247, 9898332239, 'akshay.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8733051922),
(18, 'MR.', '20', '11922', '110980119018', 11191194, 'RAVI', 'AJITBHAI', 'PARIKH', 'AJITBHAI', 'NEELAMBEN', 'HOME', '2011-07-21', '1994-03-02', 'AHMEDABAD', 'MALE', 'AJITKUMAR POPATLAL PARIKH', 'FATHER', 'B.SC.', 'BUSSINESS', '100000', 'G-2, PHARMA CHMBER,SHIVAJI MARKET AMIR ROAD PALANPUR', 130, 385001, '8,Bhagwati Society,Nr,Joravar Palcae,Palanpur-385001', 2742250662, 9426268694, 'ravi.parikh@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8866206316),
(19, 'MR.', '14', '12498', '110980119019', 11191195, 'DHAIRYA', 'YASHVANTBHAI', 'MAHETA', 'YASHVANTBHAI', 'DARSHNABEN', 'HOME', '2011-08-16', '1994-05-28', 'SIDHPUR', 'MALE', 'YASHVANTBHAI GAJAMANDBHAI MAHETA', 'FATHER', 'NA', 'DRIVING', '100000', 'KOTHARI VAS, SIDHPUR', 151, 384151, 'Kotharivas, Raval Ni Khadki, Sidhpur, Ta-Sidhpur, Dist. Patan, 384151', 9, 9925978891, 'dhairya.maheta@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9033300385),
(20, 'MR.', '57', '12720', '110980119020', 11191196, 'MITESHKUMAR', 'KANTIBHAI', 'SARIPADIYA', 'KANTIBHAI', 'SARADABEN', 'HOME', '2011-08-17', '1994-01-27', 'SUNTHA PALNPUR', 'MALE', 'KANTIBHAI', 'FATHER', 'BSC AEU', 'GOVERNMENT JOB', '360000', 'VETEROMARY DISPENIORY , IQBAIGADH B.K', 130, 385001, 'A-24, Tirupati Township-1, Disa Highway, Palanpur, Pin.385001', 9, 9427163242, 'mitesh.saripadiya@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9427163242),
(21, 'MR.', '17', '13528', '110980119021', 11191197, 'TAUFEEQ', 'RASULKHAN', 'MANSURI', 'RASULKHAN', 'HUSAINBANU', 'HOME', '2011-07-23', '1994-04-01', 'MEHSANA', 'MALE', 'RASULKHAN MUMEKHAM MANSURI', 'FATHER', 'DIPLOMA ENGG', 'GOV. JOB', '84000', 'BSML EXCHANGE PADMAVATI COMPLEX NEAR MODHERA CIRCLE,MEHSANA-2', 168, 384002, '4,New P & T Colony Nr.Head post office,Visnagar Link Rd.Mehsana-384001', 2762223567, 9427365935, 'Taufeeqkhan.mansuri@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8460884917),
(22, 'MR.', '43', '14031', '110980119022', 11191198, 'ROSHAN', 'DINESHKUMAR', 'PATEL', 'DINESHKUMAR', 'BHAVNABEN', 'HOME', '2011-07-22', '1994-10-01', 'PATAN', 'MALE', 'DINESHKUMAR', 'FATHER', 'SSC', 'FARMER', '48000', 'DOSIVAT BAJAR,PATAN', 135, 384265, 'Zinipol, laldarvaja,bhadra, patan-384265', 9924074604, 9998720123, 'Roshan.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9998720123),
(23, 'MR.', '60', '14146', '110980119023', 11191199, 'DIPAKKUMAR', 'DILIPKUMAR', 'SHARMA', 'DILIPKUMAR', 'SUNITABEN', 'HOME', '2011-07-21', '1992-02-19', 'SIDHPUR', 'MALE', 'DILIPKUMAR', 'FATHER', 'BA', 'BUSINESS', '100000', '1,AYODHYA NAGAR SOCIETY , SIDHPUR', 151, 384151, '1,Ayodhyanagar Society,Kakoshi Crosssing,\nSidhpur-384151', 9, 9998119915, 'dipak.sharma@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9998119915),
(24, 'MR.', '61', '14469', '110980119024', 11191200, 'BRIJESHKUMAR', 'JASHVANTBHAI', 'THAKKAR', 'JASHVANTBHAI', 'SUREKHABEN', 'HOME', '2011-07-21', '1994-08-25', 'RANER', 'MALE', 'JASHVANTBHAI', 'FATHER', 'SSC', 'MARCHANT', '5', 'RANER', 135, 385550, '14/B,Ashirvad duplex, Chansma highway, patan-384265', 9, 8000123124, 'brijesh.thakkar@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8000123124),
(25, 'MR.', '13', '14487', '110980119025', 11191201, 'HITESH', 'HARESHKUMAR', 'LUHANA', 'HARESHKUMAR', 'GOPIBEN', 'HOME', '2011-07-23', '1994-12-06', 'RAJKOT', 'MALE', 'HARESHKUMAR  MEGHRAJBHAILUHANA', 'FATHER', '9 PASS', 'BUSSINESS', '55000', 'VAMRAJ SHINA,CHANU  CENTER,STATION ROAD', 168, 384325, '18/Shrinath Society,Kheralu-384325', 9, 9426078353, 'hitesh.luhana@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9429736750),
(26, 'MR.', '30', '14661', '110980119026', 11191202, 'HARDIKKUMAR', 'GANPATBHAI', 'PATEL', 'GANPATBHAI', 'BHAGWATIBEN', 'HOME', '2011-07-21', '1994-02-04', 'UNJHA', 'MALE', 'GANPATBHAI BHAICHAND BHAI PATEL', 'FATHER', 'SSC', 'FARMER', '5', 'AITHOR, KHUNO ,TA- UNJHA,DIST-MEHSANA', 168, 384175, 'Vill:Aithor,Ta:Unjh,Di:Mehsana-', 9, 9228295357, 'hardikg.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9725147281),
(27, 'MR.', '41', '14726', '110980119027', 11191203, 'PRUTHVI', 'DINESHKUMAR', 'PATEL', 'DINESHKUMAR', 'ALKABEN', 'HOME', '2011-07-21', '1993-10-15', 'MEHSANA', 'MALE', 'DINESHKUMAR', 'FATHER', 'BCOM', 'BUSINESS', '200000', '13,VIJAYSHOPPING CENTRE ,NEAR RAJKAMAL PETROPUMP, MEHSANA', 168, 384002, '4/B,Ashapuri Soceity Modhera Rd.Mehsana-2`,384002', 9, 8866499593, 'pruthvi.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 8866499593),
(28, 'MR.', '31', '15001', '110980119028', 11191204, 'HARDIKKUMAR', 'RAMANBHAI', 'PATEL', 'RAMANBHAI', 'CHANDRIKABEN', 'HOME', '2011-07-22', '1993-12-31', 'UNJHA', 'MALE', 'RAMANBHAI', 'FATHER', 'HSC', 'FARMER', '5', 'Maninagar At & Po:Bokarvada,Ta:Visnagar, \ndist-Mahesana384120', 165, 384170, 'Maninagar At & Po:Bokarvada,Ta:Visnagar, \ndist-Mahesana384120', 9, 8140945929, 'Hardikr.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 8140945929),
(29, 'MR.', '38', '15132', '110980119029', 11191205, 'NISHITKUMAR', 'SHAILESHBHAI', 'PATEL', 'SHAILESHBHAI', 'BABEBEN', 'HOME', '2011-07-22', '1994-08-15', 'PATAN', 'MALE', 'SHAILESHBHAI', 'FATHER', 'BA,MA', 'BUSINESS', '70000', 'sar', 168, 388001, '5/A,Gajanand Society,Nr.Shikhodtalavadi\n Anand Ta:Anand.Dist-Anand-388001', 2692250231, 9925096248, 'nishit.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9925096248),
(30, 'MR.', '39', '15176', '110980119030', 11191206, 'PARTHKUMAR', 'BHARATLAL', 'PATEL', 'BHARATLAL', 'SUREKHABEN', 'HOME', '2011-07-21', '1994-11-08', 'MATPUR', 'MALE', 'SUREKHABEN', 'MOTHER', 'PTC', 'TEACHER', '50000', 'SUJANPUR TA.SIDDHPUR, DI: PATAN', 168, 384275, 'At. Matpur, ta,dist.-patan-384275', 2766263497, 8238146263, 'parth.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8238146263),
(31, 'MR.', '46', '15234', '110980119031', 11191207, 'SOORAJ', 'GHANSHYAMBHAI', 'PATEL', 'GHANSHYAMBHAI', 'VARSHABAHEN', 'HOME', '2011-07-21', '1993-09-22', 'PATAN', 'MALE', 'GHANSHYAMBHAI', 'FATHER', 'HSC', 'TEACHER', '250000', 'THARBARBAPA PRIMARY SCHOOL,PATAN', 135, 384265, '94,Rajmani Society, B/h.Shantiniketan School,\nChansama Highway,Patan-384265', 9, 8758791452, 'sooraj.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8758791452),
(32, 'MR.', '63', '15885', '110980119032', 11191208, 'VIKRAMJI', 'BHEMAJI', 'THAKOR', 'BHEMAJI', 'VASTUBEN', 'HOME', '2004-08-11', '1991-04-09', 'DHADHANA', 'MALE', 'BHEMAJI', 'FATHER', 'HSC', 'FARMER', '15000', 'AT:DHADHANA TA-SAMI DI- PATAN', 89, 384240, 'AT:DHADHANA TA-SAMI DI- PATAN', 9, 8866623415, 'vikramji.thakor@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8866623415),
(33, 'MR.', '5', '15937', '110980119033', 11191209, 'DHRUV', 'PRAVINCHANDRA', 'DEVADA', 'PRAVINCHANDRA', 'USHABEN', 'HOME', '2011-07-20', '1993-03-02', 'PASHAVADAL', 'MALE', 'PRAVINCHANDRA  ISHWARLAL DEVADA', 'FATHER', 'B.COM', 'BUSSINESS', '260650', 'D.S.P. OFFICE,PALANPUR, COMPUTER BRANCH', 135, 385001, 'Room No.27, block no.B/3, opp-Amul parlor, Police Head quatrs, palanpur,Di.B.K-285001', 9, 9909127275, 'dhruv.devada@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8758704197),
(34, 'MR.', '4', '16024', '110980119034', 11191210, 'MUKUNDBHAI', 'SEVANTILAL', 'DARJI', 'SEVANTILAL', 'URMILABEN', 'HOME', '2011-07-20', '1993-11-01', 'SUNAK', 'MALE', 'SEVANTILAL HARGOVANBHAI DARJI', 'FATHER', '7 PASS', 'BUSSINESS', '50000', 'VERAI VAD SUNAK, TA-UNJHA', 165, 384170, 'Vill:Sujank,Ta:Unjha,Di:Mehsana-384170', 9, 9978310235, 'mukund.darji@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9722578209),
(35, 'MR.', '50', '16784', '110980119035', 11191211, 'JAYMIN', 'MUKESHBHAI', 'PRAJAPATI', 'MUKESHBHAI', 'KAPILABEN', 'HOME', '2011-07-21', '1993-02-08', 'VISNAGAR', 'MALE', 'MUKESHBHAI', 'FATHER', 'BCOM', 'SERVICES', '78000', 'JAGANR ROAD PALANPUR', 168, 384151, 'Sidhesavary Society-1, Block.No.11,Sidhpur-384151', 9, 9016901242, 'jaymin.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9016901242),
(36, 'MR.', '1', '17352', '110980119036', 11191212, 'AAKASHKUMAR', 'RAMJIBHAI', 'CHAUDHARI', 'RAMJIBHAI', 'AMBABEN', 'HOME', '2011-07-21', '1994-04-18', 'MEHSANA', 'MALE', 'NAVINBHAI VAGHJIBHAI CHAUDHARI', 'FATHER', '8 PASS', 'ENGINEER', '100000', '1/B SHYAMVIHAR GREEN, SAHARA TOWNSHIP, RADHANPUR ROAD, MEHSANA', 168, 384002, '1/B,Shyamvihar Green.Sahara Township,Radhanpur Rd.Mehsana-384002', 9, 99130803887, 'aakash.chaudhari@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7383590729),
(37, 'MR.', '55', '17404', '110980119037', 11191213, 'SACHIN', 'DASHARATHBHAI', 'RAVAL', 'DASHARATHBHAI', 'JASODABEN', 'HOME', '2003-08-11', '1994-06-06', 'UNJHA', 'MALE', 'DASHARATHBHAI', 'FATHER', 'SSC', 'POLICE', '200000', 'POLICE HEAD QUARTERS PALANPUR', 130, 345001, 'Police Head Quarters, Room No. 254 \nBlock No. 22, Palanpur', 9, 9409034574, 'sachin.raval@hansabacollege.com', NULL, 'A', 0, 2, '2012-07-27 17:26:04', 9409034574),
(38, 'MR.', '2', '18681', '110980119038', 11191214, 'VIPULKUMAR', 'RAMSANGBHAI', 'CHAUDHARY', 'RAMSANGBHAI', 'GANGABEN', 'HOME', '2008-08-11', '1994-05-25', 'PALANPUR', 'MALE', 'RAMSANGBHAI JITUBHAI CHAUDHARY', 'FATHER', '12 PASS', 'FARMER', '100000', 'AT-NAVISANA, TA-VADGAM, DIST-BANASKANTHA', 168, 385421, 'At.&Po. Navisna, Ta. Vadgam, Dist. B.K-385421', 2739265473, 0, 'vipul.chaudhary@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8866896593),
(39, 'MR.', '12', '18861', '110980119039', 11191215, 'NILESHKUMAR', 'ABHERAJBHAI', 'LOH', 'ABHERAJBHAI', 'IJUBEN', 'HOME', '2003-08-11', '1994-04-02', 'MADANA', 'MALE', 'ABHERAJBHAI BHEEKHA BHAI LOH', 'FATHER', 'B.COM', 'FARMER', '11000', 'AT & PO-MADANA(GADH),TA-PALANPUR,DIST-BK', 168, 8, 'At.&Po. Madana(Gadh),Ta. Palanpur \ndist. Banas Kantha-385519.', 9, 9998543592, 'nilesh.loh@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9725943215),
(40, 'MR.', '15', '19286', '110980119040', 11191216, 'SURESHKUMAR', 'DHANJIBHAI', 'MAKWANA', 'DHANJIBHAI', 'MADHUBEN', 'HOME', '2011-07-25', '1991-09-15', 'VADGAM', 'MALE', 'MAKWANA DHANIJIBHAI KAMJIBHAI', 'FATHER', 'PLUMBER', 'PLUMBER', '15000', 'AT & PO-VADGAM, TA-VADGAM, DIST-BANASKANTHA', 168, 385410, 'AT & PO-VADGAM, TA-VADGAM, DIST-BANASKANTHA', 9, 9725471364, 'suresh.makwana@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9974568266),
(41, 'MR.', '19', '20157', '110980119041', 11191217, 'MAULIKKUMAR', 'DINESHBHAI', 'PAREKH', 'DINESHBHAI', 'BABITABAHEN', 'HOME', '2011-07-20', '1993-05-12', 'BILIYA', 'MALE', 'DINESHBHAI ISHVARLAL NAI', 'FATHER', 'BA, B.ED.', 'SERVICE', '234069', 'SATYAM VIDYALAYA, SOLSANDA,TA-DANTA,DIST-BK', 168, 385120, '293,Sunnagar Society,Highway Rd.Ta:Sidhpur,Di:Patan-384151', 9, 9879215293, 'maulik.parekh@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9409438690),
(42, 'MR.', '49', '21224', '110980119042', 11191218, 'CHETANKUMAR', 'ISHVARBHAI', 'PRAJAPATI', 'ISHVARBHAI', 'KAMALABEN', 'HOME', '2011-07-21', '1994-11-04', 'PETHAPUR', 'MALE', 'ISHVARBHAI', 'FATHER', 'PTC BA', 'PRIMARY TEACHRT', '250000', 'DANTA, BANAS KANTHA', 130, 385120, 'at,post.pethapur, ta. Danta, dist.banaskantha-385120', 9, 9574263891, 'chetan.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9574263891),
(43, 'MR.', '7', '22385', '110980119043', 11191219, 'NILESHKUMAR', 'NENURAM', 'GELOT', 'NENURAM', 'GEETABEN', 'HOME', '2011-07-21', '1992-12-21', 'DEESA', 'MALE', 'NENURAM GANESHAJI GELOT', 'FATHER', 'SSC', 'FARMER', '18000', 'DEESA', 46, 8, 'Three hanuman road, Happy nursery Deesa,Ta: Deesa,Di:B.K.-', 9, 9824916416, 'nilesh.gelot@hansabacollege.com', NULL, 'A', 0, 2, '2012-07-27 17:26:04', 9898141737),
(44, 'MR.', '18', '22587', '110980119044', 11191220, 'JAYMIN', 'RAJESHKUMAR', 'MODI', 'RAJESHKUMAR', 'ANITABEN', 'HOME', '2011-07-20', '1994-09-02', 'PATAN', 'MALE', 'RAJESHKUMAR AMBALAL MODI', 'FATHER', '7 PASS', 'SERVICE', '9000', 'MODI NI SHERI, BUKDI CHAWK, PATAN', 135, 384265, 'Modini Shery,Bukdi Chowk,\nPatan-384265', 9, 9824051834, 'jaymin.modi@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9624241808),
(45, 'MR.', '3', '26138', '110980119045', 11191221, 'KULDIP', 'DINESHKUMAR', 'CHAUHAN', 'DINESHKUMAR', 'BHIKHIBEN', 'HOME', '2011-07-21', '1994-10-01', 'MEHSHAR', 'MALE', 'DINESHKUMAR HIRABHAI CHAUHAN', 'FATHER', '12 PASS', 'DRIVING', '10000', '35, INDRAPRAST SOCIETY, CHANASMA HIGHWAY,NEAR LILIVADI,PATA', 135, 384265, '35,Indraparast Society,Chansama Highway,Nr.Lili Vadi-Patan-384265', 9, 9898997407, 'kuldip.chauhan@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7600704319),
(46, 'MR.', '21', '29287', '110980119046', 11191222, 'AKASHKUMAR', 'JAGDISHCHANDRA', 'PARMAR', 'JAGDISHCHANDRA', 'VARSHABEN', 'HOME', '2011-07-22', '1994-04-07', 'PALANPUR', 'MALE', 'JAGDISHCHANDRA BHAIKHABHAI PARMAR', 'FATHER', 'MA, BD..', 'TEACHER', '42000', 'SAMTA HIGHSCHOOL PALANPUR', 130, 385001, 'dhaniyana char rasta, bhagyalaxmi society,palanpur-385001', 9, 9978771215, 'akash.parmar@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8238151726),
(47, 'MR.', '25', '102564', '110980119047', 11191223, 'BARKAT', 'YASIN', 'PATEL', 'YASIN', 'NASIM', 'HOSTEL', '2002-08-11', '1992-06-03', 'TARSADI', 'MALE', 'YASIN PATEL', 'FATHER', '8 PASS', 'GOV. JOB', '2,33,000', '66, K.V.,GEB COLONY, OPP. PRIMAL GLASS, KHARACH ROAD,KOSAMBA', 102, 8, '66 K.V. Sub-Station, G.E.B. Colony, \nOpp. Piramal Glass Kharach Road,Kosamba,\nTa.Mangrol,Dist. Surat', 9, 9879201372, 'barkat.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9033490671),
(48, 'MR.', '56', '102676', '110980119048', 11191224, 'RAVIKUMAR', 'GHANSHYAMBHAI', 'PATEL', 'GHANSHYAMBHAI', 'GEETABEN', 'HOSTEL', '2003-08-11', '1992-10-27', 'KHEDA', 'MALE', 'GHANSHYAMBHAI', 'FATHER', 'ITI', 'FARMER', '60,000', 'AT:KASUR TA:BARWAJAMR VIA: BHALEJ', 79, 388205, 'At.&Po. Kasor, Ta.&Dist. Anand', 2692285657, 8866129431, 'ravi.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 8866129431),
(49, 'MR.', '59', '17063', '110980119049', 11191225, 'JINESHKUMAR', 'VIPULKUMAR', 'SHAH', 'VIPULKUMAR', 'JAGRUTIBEN', 'HOME', '2008-08-11', '1994-01-13', 'PATAN', 'MALE', 'VIPULKUMAR', 'FATHER', 'HSC', 'BUSINESS', '150000', 'DOSIVATE BAZAR,PATAN  DI:PATAN', 135, 384265, '10,Bhadrankar Nagar Society, Nr.M N High school Kalka Road, Patan-384265', 9, 9033356064, 'jinesh.shah@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9033356064),
(50, 'MR.', '35', 'GB 18469', '110980119050', 11191226, 'MAYANK', 'AMRUTLAL', 'PATEL', 'AMRUTLAL', 'GEETABEN', 'HOME', '2005-08-11', '1994-05-14', 'MEHSANA', 'MALE', 'AMRUTLAL', 'FATHER', 'ITT', 'GOVERNMENT JOB', '700000', 'ongc mehsana', 168, 384002, '14,Poonam Park Society, B/H.College Nagalpur, Mehsana-2,384002', 9, 7698155122, 'mayank.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 7698155122),
(51, 'MR.', '34', '21201', '110980119051', 11191227, 'KETUL', 'BHARATBHAI', 'PATEL', 'BHARATBHAI', 'RANJANBEN', 'HOME', '2009-08-11', '1994-05-15', 'PATAN', 'MALE', 'BHARATBHAI', 'FATHER', '7TH PASS', 'FARMER', '100000', 'Ghemariya Vir, Nr.Navomadh, Bhadra, Patan-384265', 135, 384265, 'Ghemariya Vir, Nr.Navomadh, Bhadra, Patan-384265', 9, 9624831511, 'ketul.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9624831511),
(52, 'MR.', '40', '23403', '110980119052', 11191228, 'PRIYANK', 'BHAGVANBHAI', 'PATEL', 'BHAGVANBHAI', 'JAYABEN', 'HOME', '2010-08-11', '1993-08-20', 'THARAD', 'MALE', 'BHAGVANBHAI', 'FATHER', 'MABED', 'PRINCIPAL', '500000', 'SHRI V.J.PATEL HIGH -SCHOOL,VADGAM.', 130, 385001, '47,Swagat Bunglows, Virpur Dhaniyana Chokadi, Palanpur, Po.Lokaniketan', 9428369700, 9913839007, 'priyank.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9913839007),
(53, 'MR.', '16', '24397', '110980119053', 11191229, 'AMMAR', 'AIYUB BHAI', 'MANASIYA', 'AIYUB BHAI', 'JARINABEN', 'HOME', '2010-08-11', '1993-03-08', 'CHATAWADA', 'MALE', 'AIYUBBHAI SULEMAN  MANASIYA', 'FATHER', '10 PASS', 'FARMER', '20000', 'Mominvas, Vi.Chatawada, Ta.Sidhpur, Di-Patan, 384151', 168, 8, 'Mominvas, Vi.Chatawada, Ta.Sidhpur, Di-Patan, 384151', 9, 9909845190, 'ammar.manasiya@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9426368722),
(54, 'MR.', '11', 'GB 25192', '110980119054', 11191230, 'VISHWAS', 'JAGDISHKUMAR', 'LIMBACHIYA', 'JAGDISHKUMAR', 'RAXABEN', 'HOME', '2005-08-11', '1994-01-19', 'PALANPUR', 'MALE', 'JAGDISHKUMAR  LIMBACHIYA', 'FATHER', 'BA,LLB', 'DIVISIONAL FOREST OFFICER', '375000', 'BK FOREST,D.L. PALANPUR', 130, 385001, 'A+ 37,Tirupati Township-1,Deesa Highway, Palanpur-385001', 9, 9978928015, 'Vishwas.limbachiya@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9409392993),
(55, 'MR.', '44', 'GB 25696', '110980119055', 11191231, 'SAUMIK', 'BHARATKUMAR', 'PATEL', 'BHARATKUMAR', 'RENUKABEN', 'HOME', '2005-08-11', '1993-09-29', 'UNJHA', 'MALE', 'BHARATKUMAR', 'FATHER', 'PTC', 'BUSINESS', '120000', 'BEHIND SARKIT HOUSE , DEESA HIGHWAY PALANPUR', 130, 385001, '11,Panchavati Society, Ahmedabad Highway Palanpur-385001', 9, 9429173774, 'saumik.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9429173774),
(56, 'MR.', '37', 'GB 26009', '110980119056', 11191232, 'MEETKUMAR', 'JAYANTILAL', 'PATEL', 'JAYANTILAL', 'RAMILABEN', 'HOME', '2005-08-11', '1994-03-01', 'SIDHPUR', 'MALE', 'JAYANTILAL', 'FATHER', 'HSC', 'GOVERNMENT JOB', '200000', 'kahoda gram panchayat', 165, 384170, '52,Vijay Laxmi Society, Dethali Char Rasta, Sidhpur-384151', 2767223512, 7567645108, 'meet.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 7567645108),
(57, 'MR.', '47', 'GB 26415', '110980119057', 11191233, 'VIRALKUMAR', 'RAMESHBHAI', 'PATEL', 'RAMESHBHAI', 'KAPILABEN', 'HOME', '2005-08-11', '1993-07-27', 'UNJHA', 'MALE', 'RAMESHBHAI', 'FATHER', 'HSC', 'GOVERNMENT JOB', '200000', 'MAHILA COLLEGE OF UNJHA', 65, 384170, '8,Janak Puri Society, Opp-New Navjivan School, Unjha-384170', 9428756716, 9537323141, 'viral.Patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9537323141),
(58, 'MR.', '51', '26555', '110980119058', 11191234, 'KRUPALKUMAR', 'JAGDISHKUMAR', 'PRAJAPATI', 'JAGDISHKUMAR', 'JAYASHRIBEN', 'HOME', '2005-08-11', '1994-05-13', 'PALANPUR', 'MALE', 'JAGDISHKUMAR', 'FATHER', 'BA BED', 'BUSINESS', '65000', '6-SONAL SOCIETY SUKHBARG ROAD,PALANPUR', 130, 385001, '6,Sonal Society, Sukhbag Road, Palanpur-385001', 9825992262, 9662683827, 'krupal.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9662683827),
(59, 'MR.', '52', '27048', '110980119059', 11191235, 'ANKITKUMAR', 'PRUTHVISINH', 'RAJPUT', 'PRUTHVISINH', 'SANGITABEN', 'HOSTEL', '2005-08-11', '1994-03-03', 'KARLI', 'MALE', 'PRUTHVISINH', 'FATHER', 'SSC', 'FARMER', '10,000', 'TO:KARLI TA: UNIHA DI;MEHESHANA', 168, 384170, 'Nano rajput Vas, At.Karli, Ta.Unjha, Di-Mehsana, 384170', 2767271364, 9925535515, 'ankit.rajput@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9925535515),
(60, 'MR.', '6', '29143', '110980119060', 11191236, 'ASRARULHAKK', 'ABDULHAMID', 'DHUKKA', 'ABDULHAMID', 'RAJIYABEN', 'HOME', '2008-08-11', '1993-01-02', 'KALEDA', 'MALE', 'ABDULHAMID DHUKKA', 'FATHER', '10 PASS', 'FARMER', '42000', 'AT-PO-KALEDA,TA-VADAGAM', 168, 385421, 'At.Po-Kaleda,Ta.Vadgam,Di-B.K-385421', 2739289170, 9408165170, 'Asrarulhakk.dhukka@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9558171877),
(61, 'MR.', '9', '35764', '110980119061', 11191237, 'HARSHILKUMAR', 'MOHANLAL', 'JOSHI', 'MOHANLAL', 'SUBHADRABEN', 'HOME', '2005-08-11', '1993-03-04', 'PALANPUR', 'MALE', 'MOHANLAL V. JOSHI', 'FATHER', '11 PASS', 'EDITOR', '100000', 'BRAMIN VAS,PALANPUR', 130, 385001, 'Yaden Building, Braminvas, Delhigate, B/H.Town hall, Palanpur-385001', 9, 9924061004, 'Harshil.joshi@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9409341821),
(62, 'MR.', '28', 'GB 35988', '110980119062', 11191238, 'DIVYANG', 'JASHVANTBHAI', 'PATEL', 'JASHVANTBHAI', 'JAYABEN', 'HOME', '2005-08-11', '1994-08-24', 'SIDHPUR', 'MALE', 'JASHVANTBHAI DHANJIBHAI PATEL', 'FATHER', 'M.COM', 'BUSSINESS MAN', '25000', 'BILIYA, TA-SIDDPUR,DIST-PATAN', 135, 384154, 'Nr.Dairy, At&po-Biliya, Ta.Sidhpur, Di-Patan, 384151', 2767222034, 9426102705, 'Divyang.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9727444707),
(63, 'MR.', '32', '36717', '110980119063', 11191239, 'JAIMIN', 'NATVARLAL', 'PATEL', 'NATVARLAL', 'LARABEN', 'HOME', '2008-08-11', '1994-08-03', 'GANDHINAGAR', 'MALE', 'NATVARLAL', 'FATHER', 'MCOM', 'GOVERNMENT JOB', '700000', '349/A street no. 6 vijayrajnagar, bhavanagar', 168, 8, 'Nr.Dairy, At&po-Biliya, Ta.Sidhpur, Di-Patan, 384151', 9, 9428960614, 'Jaimin.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9428960614),
(64, 'MR.', '2', '17350', '110980111001', 11111158, 'JAYDEEPSINH', 'PRADIPSINH', 'CHAUHAN', 'PRADIPSINH', 'BHARTIBEN', 'HOME', '2021-07-11', '1994-07-24', 'NAVASARI', 'MALE', 'PRADIPSINH', 'FATHER', 'H.S.C', 'SALESMEN', '8000', 'GANESH COMPLEX , MODHERA', 135, 384265, 'Narsungavir ni khadki. (Pakhali vado), Loteshvar mahadev road, Chachriya, patan-384265', 9979163049, 9979163049, 'jaydeepsinh.chauhan@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9879354173),
(65, 'MR.', '21', '19888', '110980111003', 11111159, 'RAHULKUMAR', 'RAJESHBAHI', 'RAVAL', 'RAJESHBAHI', 'URMILABEN', 'HOSTEL', '2021-07-11', '1994-08-13', 'AMBASAN', 'MALE', 'RAJESHBAHI', 'FATHER', 'H.S.C', 'DRIVER', '84000', 'AHMEDABAD', 3, 382481, 'C/13, Krushnanagar Society, Jagatpur Road, Chandlodia,Ahmedabad.382481', 9909010879, 9909010879, 'rahul.raval@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9722842380),
(66, 'MISS', '8', '25564', '110980111004', 11111160, 'DIVYABAHEN', 'PRAVINBHAI', 'KHANDAVI', 'PRAVINBHAI', 'MANJULABEN', 'HOME', '2021-07-11', '1993-03-24', 'BRAMANVADA', 'FEMALE', 'PRAVINBHAI', 'FATHER', 'H.S.C', 'TEACHER', '360000', 'RASULPUR', 151, 384151, 'Fulpura Dethali Highway, Sidhpur, Dist.patan-384151', 9979417994, 9979417994, 'divyaben.khandavi@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9979417994),
(67, 'MR.', '12', '28317', '110980111005', 11111161, 'SMIT', 'MAHESHKUMAR', 'PATEL', 'MAHESHKUMAR', 'ILABEN', 'HOME', '2021-07-11', '1993-09-29', 'PALANPUR', 'MALE', 'MAHESHKUMAR', 'FATHER', 'H.S.C', 'CONSTRUCTION', '5', 'NORTH GUJRAT UNIVERSITY, PATAN', 135, 384265, '8/B,Vanrat Society, opp. Railway Water tank, patan-384265', 9824434857, 9824434857, 'smit.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 7600566260),
(68, 'MISS', '7', '30778', '110980111006', 11111162, 'KIRAN', 'DINESHBHAI', 'KARNAVAT', 'DINESHBHAI', 'GEETABEN', 'HOME', '2021-07-11', '1993-07-17', 'SAGROSANA', 'FEMALE', 'DINESHBHAI', 'FATHER', 'H.S.C', 'BUSINESS', '80000', 'Santominagar, At.juna laxmipura, palanpur(B.K)-385001', 130, 385001, 'Santominagar, At.juna laxmipura, palanpur(B.K)-385001', 9429420641, 9429420641, 'kiran.karnavat@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9429420641),
(69, 'MR.', '6', '32499', '110980111007', 11111163, 'NARESHKUMAR', 'BHAGVANBHAI', 'JAGANIYA', 'BHAGVANBHAI', 'NAYANABEN', 'HOME', '2003-08-11', '1993-03-14', 'CHANGWADA', 'MALE', 'BHAGVANBHAI', 'FATHER', 'H.S.C', 'FARMER', '70000', 'At.&Po. Changwada,Ta.Vadgam,, Pin:385520', 168, 385520, 'At.&Po. Changwada,Ta.Vadgam,, Pin:385520', 9723651057, 9723651057, 'naresh.jaganiya@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9723651057),
(70, 'MR.', '18', '33340', '110980111009', 11111165, 'KUDRAT', 'KIRTIBHAI', 'RAVAL', 'KIRTIBHAI', 'GEETABEN', 'HOME', '2021-07-11', '1993-09-26', 'VADGAM', 'MALE', 'KIRTIBHAI', 'FATHER', 'H.S.C', 'SHOPKEEPER', '150000', 'Vishwas Genral Store, Kantheriya Hanuman Road, At&po&ta.palanpur.Dist.B.K-385001', 130, 385001, 'Vishwas Genral Store, Kantheriya Hanuman Road, At&po&ta.palanpur.Dist.B.K-385001', 9712636100, 9712636100, 'kudrat.raval@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9913965940),
(71, 'MR.', '4', '34140', '110980111010', 11111166, 'MAHESHKUMAR', 'DHANABHAI', 'DAVE', 'DHANABHAI', 'SITABEN', 'HOME', '2022-07-11', '1992-11-28', 'BHABHAR', 'MALE', 'DHANABHAI', 'FATHER', 'H.S.C', 'BUSINESS', '5', 'RANGOLI COMPLEX,LATI BAZAR BHABHAR', 168, 385320, 'Anand nagar. Vav road, bhabhar-385320', 9825017317, 9825017317, 'mahesh.dave@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9727240888),
(72, 'MR.', '11', '34577', '110980111011', 11111167, 'PARTHKUMAR', 'VINODBHAI', 'PATEL', 'VINODBHAI', 'USHABEN', 'HOME', '2021-07-11', '1994-05-01', 'MEHSANA', 'MALE', 'VINODBHAI', 'FATHER', 'H.S.C', 'DAIRY', '100000', '13,MAHAVIR FLAT RADHANPUR ROAD MEHSANA', 168, 384002, 'H/85, Dwarakapuri Flats, Radhanpur road, Mehsansa-384002', 9909752572, 9909752572, 'parth.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7874086840),
(73, 'MR.', '5', '34621', '110980111012', 11111168, 'MANOJKUMAR', 'RAMESHBHAI', 'GAMI', 'RAMESHBHAI', 'SHANTABEN', 'HOME', '2021-07-11', '1993-07-22', 'PALANPUR', 'MALE', 'RAMESHBHAI', 'FATHER', 'H.S.C', 'FARMER', '30000', 'Patel Society, juna laxmipura, Palnpur-385001', 130, 385001, 'Patel Society, juna laxmipura, Palnpur-385001', 9974383534, 9974383534, 'manoj.gami@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9974383534),
(74, 'MISS', '16', '34789', '110980111014', 11111170, 'BHAVANABEN', 'BHAVANJI', 'RANA', 'BHAVANJI', 'RATNABEN', 'HOME', '2020-07-11', '1994-06-24', 'DALWANA', 'FEMALE', 'BHAVANJI', 'FATHER', 'H.S.C', 'FARMER', '120000', 'At&po.Dalwana, Ta. Vadgam, Dist. B.K-385421', 168, 385421, 'At&po.Dalwana, Ta. Vadgam, Dist. B.K-385421', 9726746086, 9726746086, 'bhavana.rana@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9726746086),
(75, 'MISS', '3', '34973', '110980111015', 11111171, 'KRISHMABEN', 'KAILESHBHAI', 'DAVE', 'KAILESHBHAI', 'NAYANABEN', 'HOME', '2020-07-11', '1994-10-01', 'WAV', 'FEMALE', 'KAILESHBHAI', 'FATHER', 'H.S.C', 'TEACHER', '360000', 'M.D SOMANI HIGHSCHOOL,CHANDISAR DEESA', 46, 385535, '22, P.K. Nagar Society, Highway Road, Deesa', 9408019918, 9408019918, 'krishma.dave@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9429224866),
(76, 'MR.', '13', '37618', '110980111016', 11111172, 'URVILKUMAR', 'NAVINCHNDRA', 'PATEL', 'NAVINCHNDRA', 'GEETABEN', 'HOME', '2003-08-11', '1993-06-19', 'VISNAGAR', 'MALE', 'NAVINCHNDRA', 'FATHER', 'H.S.C', 'BUSINESS', '70000', 'SIVAM SENETARY, PALANPUR', 130, 385001, 'Deesa Highway Road, Near. Aroma, Behind. Sankar So Mill, Palanpur. Pin.385001', 7383773749, 7383773749, 'urvil.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9687094553),
(77, 'MISS', '15', '39030', '110980111018', 11111173, 'KAJALBEN', 'BHARATKUMAR', 'PRAJAPATI', 'BHARATKUMAR', 'BHAVANABEN', 'HOME', '2002-08-11', '1994-03-21', 'VADGAM', 'FEMALE', 'BHARATKUMAR', 'FATHER', 'H.S.C', 'FARMER', '48000', 'At&post. Vadgam, Ta-Vadgam, Dist-B.K. (N.G.), 385410', 168, 385410, 'At&post. Vadgam, Ta-Vadgam, Dist-B.K. (N.G.), 385410', 9428006662, 9428006662, 'kajal.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9408946753),
(78, 'MR.', '23', '42090', '110980111020', 11111174, 'TARUNBHAI', 'RAMESHBHAI', 'THUMBADIYA', 'RAMESHBHAI', 'PUSHPABEN', 'HOME', '2016-08-11', '1993-10-12', 'PALANPUR', 'MALE', 'RAMESHBHAI', 'FATHER', 'H.S.C', 'FARMER', '40000', 'Street No. 15, Old Laxmipura, Ta. Palanpur, Dist. B.K., 385001', 130, 385001, 'Street No. 15, Old Laxmipura, Ta. Palanpur, Dist. B.K., 385001', 9824539198, 9824539198, 'Tarun.thumbadiya@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9824539198),
(79, 'MR.', '9', '420820', '110980111021', 11111175, 'SURESHKUMAR', 'HARILAL', 'PADHIYAR', 'HARILAL', 'HANSABEN', 'HOME', '2016-08-11', '1993-10-25', 'MALGADH', 'MALE', 'HARILAL', 'FATHER', 'H.S.C', 'FARMER', '15000', 'At.&Po. Malgadh, Jodhapuriya Dhanj, Ta. Deesa', 46, 382235, 'At.&Po. Malgadh, Jodhapuriya Dhanj, Ta. Deesa', 9824434857, 9824434857, 'suresh.padhiyar@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7600566260),
(80, 'MR.', '19', 'TRIAL EXAM', '110980111022', 11111176, 'DHRUVKUMAR', 'VIPULKUMAR', 'RAVAL', 'VIPULKUMAR', 'DARSHNABEN', 'HOME', '2023-08-11', '1994-01-05', 'UNJHA', 'MALE', 'VIPULKUMAR', 'FATHER', 'H.S.C', 'KARMAKAND', '150000', 'Unchaghar, Maganlal Clinic, Kotku Unjha, 384170', 165, 384170, 'Unchaghar, Maganlal Clinic, Kotku Unjha, 384170', 9979786273, 9979786273, 'dhruv.raval@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9979786273),
(81, 'MR.', '17', '33263', '110980111023', 111110258, 'BHAVESH', 'ASHOKKUMAR', 'RAUT', 'ASHOKKUMAR', 'DURGABEN', 'HOSTEL', '2003-09-11', '1993-01-08', 'AHMEDABAD', 'MALE', 'ASHOKKUMAR', 'FATHER', 'H.S.C', 'SERVICE', '100000', 'BHAVANI ENGINEERING KAILASH ESTATE, ODHAV', 168, 382346, 'E-547,Part-1,Parshwnath Township, Nava Naroda,Ahmedabad-382346', 9327053967, 9327053967, 'raut.bhavesh@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9327053967),
(82, 'MISS', '24', '34216', '110980111024', 111110259, 'DIPALI', 'RAMESHBHAI', 'VANIYA', 'RAMESHBHAI', 'NIRAMLABEN', 'HOME', '2003-09-11', '1992-12-09', 'UNJHA', 'FEMALE', 'RAMESHBHAI', 'FATHER', 'H.S.C', 'TEACHER', '5', 'MESHAR PRATHMIK SCHOOL, MESHAR', 135, 384265, '12 ROYAL PALACE, Lilivadi Rasurant, Nr.Chanshama Highway,Patan-384265', 9727285696, 9727285696, 'dipali.vaniya@hansabacollege.com', NULL, 'O-', 0, 2, '2012-07-27 17:26:04', 9227064950),
(83, 'MR.', '25', '12197', '110980111025', 111110260, 'APURVKUMAR', 'DASHRATHBHAI', 'RAVAL', 'DASHRATHBHAI', 'HANSABEN', 'HOME', '2011-09-16', '1994-01-07', 'PALANPUR', 'MALE', 'DASHRATHBHAI', 'FATHER', 'H.S.C', 'TEACHER', '150000', 'RUPAL PRIMARY SCHOOL', 130, 385001, '51,Ratna Park Society, Ganeshpura Road, Palanpur-385001', 9925077093, 9925077093, 'apurv.raval@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9033740805),
(84, 'MR.', '26', 'NOT REG. ACPC', '110980111026', 111110261, 'DEVAL', 'HITENDRAKUMAR', 'RAVAL', 'HITENDRAKUMAR', 'KALPANABEN', 'HOME', '2012-09-11', '1991-01-21', 'VISNAGAR', 'MALE', 'HITENDRABHAI', 'FATHER', 'H.S.C', 'BUSINESS', '5', '52 SIVAM SALES CORPORATION , MEHSAN', 168, 384002, '8,Vitthal Park Society, Mal Godawn Road, Mehsana', 9898803839, 9898803839, 'deval.raval@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9898803839),
(85, 'MISS', '27', 'NOT REG. ACPC', '110980111027', 111110269, 'RINAJBEN', 'AHMADBHAI', 'MAREDIYA', 'AHMADBHAI', 'KULSUMBEN', 'HOME', '2003-09-11', '1990-07-10', 'KANODAR', 'FEMALE', 'AHMADBHAI', 'FATHER', 'H.S.C', 'TEACHER', '388905', 'PRIMARY SCHOOL ,2 KANODAR', 89, 385520, 'Ambavadi Vistar, At.Kanodar, Ta.Palanpur, Di-B.K', 9879592756, 9879592756, 'rinajben.marediya@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7600306127),
(86, 'MR.', '28', 'NOT REG. ACPC', '110980111028', 111110267, 'KRUNAL', 'MAHENDRABHAI', 'THAKKAR', 'MAHENDRABHAI', 'MEENABEN', 'HOME', '2011-09-16', '1992-06-05', 'AHMEDABAD', 'MALE', 'MAHENDRABHAI', 'FATHER', 'H.S.C', 'BUSINESS', '130000', 'JALARAM CATLARI STORE, DELHI GATE', 130, 385001, '79,Gujarat Housingboard, out of malangate, Ambajiroad, Palanpur-385001', 9427253748, 9427253748, 'krunal.thakkar@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8866412588),
(87, 'MR.', '32', 'NOT REG. ACPC', '110980111032', 111111997, 'MINHAZ', 'INAYATULLAKHAN', 'GHASURA', 'INAYATULLAKHAN', 'AMINABEN', 'HOSTEL', '2012-10-11', '1993-06-18', 'DANGIYA', 'MALE', 'INAYATULLAKHAN', 'FATHER', 'H.S.C', 'HOMEWORK', '4200', 'At&Po. Dangiya, Ta:Dantivada, Dist, B.K.', 168, 385510, 'At&Po. Dangiya, Ta:Dantivada, Dist, B.K.', 9712244462, 9712244462, 'minhaz.ghasura@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9904424379),
(88, 'MR.', '33', 'NOT REG. ACPC', '110980111033', 111111999, 'SAGAR', 'GIRISHBHAI', 'SUTHAR', 'GIRISHBHAI', 'NIMABEN', 'HOME', '2012-10-11', '1990-05-19', 'SANDER', 'MALE', 'GIRISHBHAI', 'FATHER', 'H.S.C', 'CARPENTER', '25000', 'Parekhpole , Nr. Jain Derasar Unjha, 384170', 165, 384170, 'Parekhpole , Nr. Jain Derasar Unjha, 384170', 9429317143, 9429317143, 'sagar.suthar@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9427465440),
(89, 'MR.', '39', '7060', '110980109001', 11091100, 'PARTHKUMAR', 'SHAILESHKUMAR', 'PATEL', 'SHAILESHKUMAR', 'RANJANBEN', 'HOME', '2011-07-19', '1993-08-12', 'HIMMATNAGAR', 'MALE', 'SHAILESHKUMAR', 'FATHER', 'B.Sc CHEMISTRY', 'SERVICE', '120000', '27,RUSATNAGAR,VISNAGAR ROAD,UNJHA', 165, 384170, '27,rusat nagar, Visnagar Road,unjha-384170', 2767, 7698035025, 'parth.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 7698035025),
(90, 'MR.', '7', '11643', '110980109002', 11091101, 'MISAMALI', 'MEHDIHUSAIN', 'GANI', 'MEHDIHUSAIN', 'BILRISBEN', 'HOME', '2011-07-19', '1994-02-15', 'RANODAR', 'MALE', 'MEHDIHUSAIN', 'FATHER', '10 pass', 'PRIVET JOB', '90000', 'OMAN PO.BOX-438 QURUM SULTANT OF OMAN', 130, 385520, 'Husenibag, At&Po.kanodar, ta.palnpur,di.B.K-385520', 9, 9689814172, 'gani.misamali@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9689814172),
(91, 'MR.', '37', '11761', '110980109003', 11091102, 'MAULIK', 'BABULAL', 'PATE', 'BABULAL', 'KAPILABEN', 'HOME', '2011-07-21', '1993-09-10', 'UNJHA', 'MALE', 'BABULAL', 'FATHER', 'HSC', 'BUSINESS', '120000', 'PATAN', 135, 384265, '75, Ambica Towanship, ambaji road,chansma highway, patan-384265', 9, 9979003756, 'Maulik.Patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9979003756),
(92, 'MR.', '33', '16388', '110980109004', 11091103, 'JANAKKUMAR', 'RASIKBHAI', 'PATEL', 'RASIKBHAI', 'CHANDRICABEN', 'HOME', '2012-07-21', '1994-09-02', 'NA', 'MALE', 'RASIKBHAI', 'FATHER', 'B.Sc', 'PRIVET JOB', '300000', 'SINGEL COMMODITIES PVT LTD , KHANVEL', 151, 384151, 'At &Po:Gaglasan,Ta:Sidhpur, Di:Patan-384151', 2767, 9898432402, 'patrasik@gmail.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9898432402),
(93, 'MR.', '53', '16558', '110980109005', 11091104, 'TUSHAR', 'VINODCHANDRA', 'SALAVI', 'VINODCHANDRA', 'MINAXIBEN', 'HOME', '2011-08-16', '1993-06-29', 'PALANPUR', 'MALE', 'VINODCHANDRA', 'FATHER', 'B.A', 'GOV.JOB', '177500', 'S.W INSPECTOR . JAMNAGAR', 79, 385001, '"VINAYDEEP" Out Of Mira Gate, Sonabag, Palanpur', 9, 9824948368, 'tushar.salavi@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9824948368),
(94, 'MR.', '34', '16859', '110980109006', 11091105, 'KETANBHAI', 'MOHANBHAI', 'PATEL', 'MOHANBHAI', 'KANTABEN', 'HOME', '2011-07-19', '1993-06-20', 'PALANPUR', 'MALE', 'MOHANBHAI', 'FATHER', '10 pass', 'FARMER', '60000', 'NA', 130, 385001, 'Street no.2, Laxmi pan house, Laxmipura, palanpur,B.K-385001', 9, 9898244425, 'ketan.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9898244425),
(95, 'MR.', '26', '16963', '110980109007', 11091106, 'DIVYESH', 'SURESHBHAI', 'PATEL', 'SURESHBHAI', 'NEETABEN', 'HOME', '2002-08-11', '1994-01-17', 'PALANPUR', 'MALE', 'SURESHBHAI', 'FATHER', 'M.COM, B.ED', 'TEACHER', '150000', 'RAMPURA, AMIRGHAD', 130, 385001, 'Ramdevnagar, Behind Ramjinagar, Opp. Patel Society, Palanpur-385001', 9, 9574403082, 'divyesh.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9574403082),
(96, 'MR.', '57', '17060', '110980109008', 11091107, 'KARAN', 'PIYUSHKUMAR', 'THAKKER', 'PIYUSHKUMAR', 'JIGNABEN', 'HOME', '2011-07-22', '1993-12-28', 'VISANAGAR', 'MALE', 'PIYUSHKUMAR', 'FATHER', 'B.COM, LLB', 'SERVICE', '450000', 'CENTRAL BANK OF INDIA BALADIYA, BHUJ; KATCH', 26, 8, '190,Sunnagar society,opp-GEB Highway, Sidhpur,Di-patan-384151', 2832, 9429874756, 'karan.thakker@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9429874756),
(97, 'MR.', '52', '18325', '110980109010', 11091108, 'SAURABHKUMAR', 'RAJESHKUMAR', 'RAVAL', 'RAJESHKUMAR', 'NAYNABEN', 'HOSTEL', '2002-08-11', '1994-08-04', 'PALANPUR', 'MALE', 'RAJESHKUMAR', 'FATHER', 'B.A', 'SERVICE', '100000', 'ST DEPOT PALANPUR', 130, 385001, '21, Shivam Nagar, Opp. New Gang, Dairy Road, Near ITI, Palanpur (B.K.)-385001', 9, 9998953572, 'saurabh.raval@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9998953572),
(98, 'MR.', '43', '18418', '110980109011', 11091109, 'SHREYASKUMAR', 'MUKESHBHAI', 'PATEL', 'MUKESHBHAI', 'SADHANABEN', 'HOME', '2011-07-20', '1994-11-03', 'RANCHHODPURA', 'MALE', 'MUKESHBHAI', 'FATHER', 'S.S.C/PTC/M.A-1', 'TEACHER', '320000', 'CHHAPI PRY. SCOOL TA. VADAGAM  DIST: B.K', 165, 364170, '3, Madhuvan Bunglows, Nr. Raghuvir Society, Unjha,Dis. Mehsana, Pin.384170', 9, 9726413173, 'shreyaskumar.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9726413173),
(99, 'MISS', '36', '19490', '110980109012', 11091110, 'MARGI', 'ARVINDBHAI', 'PATEL', 'ARVINDBHAI', 'JYOTSANABEN', 'HOME', '2011-07-21', '1994-02-26', 'UNJHA', 'FEMALE', 'ARVINDBHAI', 'FATHER', 'M.COM B.ED', 'SERVICE', '400000', 'K.L.PATEL KANYA VIDYALAY. UNJHA', 165, 384170, '14,Vatslya Banglow, patan Road,Nr.GEB,Unjha,Di.Mehsana-384170', 2767, 9824108265, 'Margi.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9824108265),
(100, 'MR.', '14', '19627', '110980109013', 11091111, 'MAHAMMADJUNER', 'MAHMMADHUSEN', 'MEMAN', 'MAHMMADHUSEN', 'FARJANABEN', 'HOME', '2011-07-22', '1993-01-04', 'KHERALU', 'MALE', 'MAHMMADHUSEN', 'FATHER', 'NA', 'BUSINESS', '5', 'NISHPR JWELLARS KHERALU', 100, 384325, 'Main Bajar kheralu, Nishar Jwellers,kheralu-384325', 9, 9924690732, 'mahammad.meman@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9924690732),
(101, 'MR.', '41', '20603', '110980109014', 11091112, 'RAJATKUMAR', 'AMRUTLAL', 'PATEL', 'AMRUTLAL', 'MANGUBEN', 'HOME', '2011-07-21', '1993-10-12', 'GAJA', 'MALE', 'AMRUTLAL', 'FATHER', 'S.S.C PASS', 'FARMER', '5', 'NA', 135, 384265, 'Charavas, Vill:Gaja,di.Patan', 2766, 9726216286, 'rajat.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9726216286),
(102, 'MR.', '51', '20617', '110980109015', 11091113, 'SANJAYSINH', 'BALDEVSINH', 'RAJPUT', 'BALDEVSINH', 'VIJYABEN', 'HOME', '2011-07-21', '1993-07-26', 'UNJHA', 'MALE', 'BALDEVSINH', 'FATHER', 'HSC', 'AGRICULTURE', '50000', 'AT&POST :JETALVASANA TA : VISNAGAR DIST MEHSANA', 168, 384315, '38,Amarnath Banglows, Visnagar Link road, Nr. Manav Ashram, Mehsana-384001', 9, 9714535785, 'sanjay.rajput@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9714535785),
(103, 'MR.', '5', '20745', '110980109016', 11091114, 'GOVINDBHAI', 'LASAJI', 'CHAUDHARY', 'LASAJI', 'JASIBEN', 'HOME', '2002-08-11', '1994-10-05', 'RAMPURA', 'MALE', 'LASAJI', 'FATHER', '7  PASS', 'FARMER', '25000', 'NA', 168, 385535, 'At & Po- Rampura, ta-Deesa, Dist. Banaskantha', 9, 0, 'govind.chaudhary@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 0),
(104, 'MR.', '25', '20819', '110980109017', 11091115, 'DIPKUMAR', 'VIPULBHAI', 'PATEL', 'VIPULBHAI', 'NAYNABEN', 'HOME', '2011-07-21', '1994-03-14', 'PATAN', 'MALE', 'VIPULBHAI', 'FATHER', 'HSC', 'FARMER', '5', 'NA', 135, 384275, 'Suthar vas polpati, At.Sander,Ta.Patan,Di.patan', 9, 9724650350, 'dip.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9724650350),
(105, 'MR.', '21', '20858', '110980109018', 11091116, 'NAYANKUMAR', 'BHOOPENDRAKUMAR', 'PANDYA', 'BHOOPENDRAKUMAR', 'RASILABEN', 'HOME', '2011-08-16', '1994-04-28', 'PALANPUR', 'MALE', 'BHOOPENDRAKUMAR', 'FATHER', 'B .AD (B.COM)', 'GOV.JOB', '5', 'AT-PALANPUR ,20 GURUKRUPA SOCIETY  HANUMAN TEKARY', 130, 385001, 'At- Palanpur, 20- Gurukul Society, Hanuma Tekri. Dist. B.K.', 9, 9427696681, 'nayan.pandya@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9427696681),
(106, 'MR.', '40', '21059', '110980109019', 11091117, 'PRADIPKUMAR', 'VISHNUBHAI', 'PATEL', 'VISHNUBHAI', 'AMBIKABEN', 'HOME', '2011-08-17', '1993-05-29', 'BOKARVADA', 'MALE', 'VISHNUBHAI', 'FATHER', 'HSC', 'FARMER', '20000', 'NA', 168, 384120, 'Harinagar, Opp-High School, At&Po. Bokarvada, Ta-Visnagar, Di. Mehsana', 9, 9904390021, 'pradip.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9904390021),
(107, 'MR.', '44', '21115', '110980109020', 11091118, 'VIPULKUMAR', 'AMRUTLAL', 'PATEL', 'AMRUTLAL', 'SAVITABEN', 'HOME', '2011-07-21', '1994-06-30', 'METHAN', 'MALE', 'AMRUTLAL', 'FATHER', 'DIPLOMA', 'VISTRAN ADHIKARI', '200000', 'PATAN TALUKA PANCHAYAT OFFICE', 151, 384151, 'Taluka panchyat quatrs no-2, Nr.Court Compound, Sidhpur-384151', 9, 9979370246, 'vipul.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9979370246),
(108, 'MR.', '35', '21270', '110980109021', 11091119, 'KULDIPKUMAR', 'MANUBHAI', 'PATEL', 'MANUBHAI', 'ASHABEN', 'HOME', '2011-08-16', '1994-04-08', 'UNJHA', 'MALE', 'MANUBHAI', 'FATHER', 'SSC', 'BUSINESS', '23500', 'CHNEAR CHHATUGOYA PRIMARY SCOOL UNJHA', 165, 384170, 'Girdhirnagar Society, Aithor Road, Unjha, Pin. 384170', 9, 9879054749, 'kuldip.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9879054749),
(109, 'MR.', '28', '21470', '110980109022', 11091120, 'HARDIKKUMAR', 'HARGOVANBHAI', 'PATEL', 'HARGOVANBHAI', 'KOKILABEN', 'HOME', '2011-07-21', '1993-03-04', 'K.P', 'MALE', 'HARGOVANBHAI', 'FATHER', 'HSC', 'BUSINESS', '200000', 'RANUJ', 135, 384275, '7,Krushn nagar society, Raileay station, Nr.ranuj, Ta.patan-384275', 9, 9825211396, 'hardik.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9825211396),
(110, 'MR.', '24', '21885', '110980109023', 11091121, 'DINESHKUMAR', 'DALPATBHAI', 'PATEL', 'DALPATBHAI', 'SANGITABEN', 'HOME', '2003-08-11', '1992-12-17', 'PALANPUR', 'MALE', 'DALPATBHAI', 'FATHER', 'HSC', 'DIMOND', '40000', 'SALVI CHAMBERS CHOSTE TAWAR PALANPUR', 130, 385001, 'Seri No-6, Juna Laxmipura, Palanpur-385001', 9, 9898690387, 'dinesh.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9898690387);
INSERT INTO `student_info` (`student_id`, `title`, `student_roll_no`, `student_merit_no`, `student_enroll_no`, `student_gr_no`, `student_first_name`, `student_middle_name`, `student_last_name`, `student_father_name`, `student_mother_name`, `student_living_status`, `student_adm_date`, `student_dob`, `student_birthplace`, `student_gender`, `student_guardian_name`, `student_guardian_relation`, `student_guardian_qualification`, `student_guardian_occupation`, `student_guardian_income`, `student_guardian_occupation_address`, `student_guardian_occupation_city`, `student_guardian_city_pin`, `student_guardian_home_address`, `student_guardian_phoneno`, `student_guardian_mobile`, `student_email_id_1`, `student_email_id_2`, `student_bloodgroup`, `student_tally_id`, `student_created_by`, `student_creation_date`, `student_mobile_no`) VALUES
(111, 'MISS', '32', '22235', '110980109024', 11091122, 'JAGRUTIBEN', 'PRAVINBHAI', 'PATEL', 'PRAVINBHAI', 'PUSPABEN', 'HOME', '2011-07-21', '1993-04-16', 'PALANPUR', 'FEMALE', 'PRAVINBHAI', 'FATHER', 'SSC', 'DIMOND', '5', 'SITAL SHOPING CENTAR PALANPUR', 130, 385001, 'Rampura,Malan road, Po.Sardarpur, Ta.Palanpur,Di.B.K-385001', 9, 9925436451, 'Jagruti.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9925436451),
(112, 'MR.', '23', '22472', '110980109025', 11091123, 'DEEPKUMAR', 'RAJENDRABHAI', 'PATEL', 'RAJENDRABHAI', 'KANTABEN', 'HOME', '2011-07-20', '1993-10-27', 'MATPUR', 'MALE', 'RAJENDRABHAI', 'FATHER', 'B.A B.ED', 'BUSINESS', '150000', 'G-22, TIRUPATI MARKET SIDHPUR,', 151, 384151, '5,Tirupati tenament, Nr.Sun nagar,Ta.sidhpur,Di.patan-384151', 9, 9879097451, 'deep.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9879097451),
(113, 'MR.', '42', '22648', '110980109026', 11091124, 'SANKETKUMAR', 'BABULAL', 'PATEL', 'BABULAL', 'GEETABEN', 'HOME', '2011-07-21', '1994-03-27', 'MAHERWADA', 'MALE', 'BABULAL', 'FATHER', '5 PASS', 'FARMER', '12000', 'NA', 165, 384130, 'At&po.Mahervada, Ta.unjha,Di.Mehsana-384130', 9, 9574081243, 'sanket.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9574081243),
(114, 'MR.', '22', '22683', '110980109027', 11091125, 'CHINTANKUMAR', 'VASUKUMAR', 'PATEL', 'VASUKUMAR', 'JYOTSANABEN', 'HOME', '2011-07-20', '1994-01-07', 'UNJHA', 'MALE', 'VASUKUMAR', 'FATHER', 'SSC', 'FARMER', '22000', 'NA', 165, 384120, 'Tribhuvan paru, Bokarvada, Ta.Visnagar, Di.mehsana-384120', 9, 7600735212, 'chintan.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7600735212),
(115, 'MR.', '59', '22706', '110980109028', 11091126, 'AJAYSINH', 'NATVARSINH', 'VAGHELA', 'NATVARSINH', 'KRISHNABEN', 'HOME', '2003-08-11', '1993-06-09', 'DANTA', 'MALE', 'NATVARSINH', 'FATHER', 'SSC', 'JOB', '216000', 'NEW SAHAKARI VASAHAT. PALANPUR', 130, 385001, 'New Sahkari Vasahat, Palanpur-385001', 9, 9979924049, 'ajaysinh.vaghela@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9979924049),
(116, 'MR.', '60', '22869', '110980109029', 11091127, 'MAYURSINH', 'DILIPSINH', 'VAGHELA', 'DILIPSINH', 'BHAGVATIBEN', 'HOME', '2011-07-21', '1994-07-13', 'KALOL', 'MALE', 'DILIPSINH', 'FATHER', 'NA', 'SERVICE', '240000', 'DEVELOPMENT OFFICER, LIC OF INDIA UNJHA', 165, 384170, '14,Jay Ambe Nagar, Visnagar Road, Unjha, Dist. Mehsana-384170', 2767, 9427675194, 'mayursinh.vaghela@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9427675194),
(117, 'MR.', '31', '22994', '110980109030', 11091128, 'HARSHKUMAR', 'PRAVINBHAI', 'PATEL', 'PRAVINBHAI', 'PARVATIBEN', 'HOME', '2002-08-11', '1994-05-18', 'MAHESANA', 'MALE', 'PRAVINBHAI', 'FATHER', 'HSC', 'BUSINESS', '100000', 'OPP. MAHILA COLLEGE SUBHAM JWELERS', 165, 384170, '26, Tirthbhumi Society Unjha, Nr. Kamli Road, Pin.384170', 2767, 9824034247, 'harsh.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9824034247),
(118, 'MR.', '2', '23318', '110980109031', 11091129, 'ATULKUMAR', 'MAHESHBHAI', 'BAROT', 'MAHESHBHAI', 'RAMILABEN', 'HOME', '2002-08-11', '1993-02-01', 'JAGANA', 'MALE', 'MAHESHBHAI', 'FATHER', '8 PASS', 'SURVICE', '137000', 'WAETER COMISSION BANS LUNI SUB DIVISION', 130, 385001, 'Nr. Panchayat Bhavan, At&Po. Jagana, Ta-Palanpur, Dist.Banasjantha-385001', 9, 9428949589, 'atul.barot@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9428949589),
(119, 'MR.', '29', '23344', '110980109032', 11091130, 'HARDIKKUMAR', 'MANUBHAI', 'PATEL', 'MANUBHAI', 'DAXABEN', 'HOME', '2002-08-11', '1994-01-01', 'HAJIPUR', 'MALE', 'MANUBHAI', 'FATHER', 'SSC', 'JOB', '219786', '132, K.V. Sub Station, Opp. Gardan Hotel, PATAN', 135, 384265, '132, K.V. Sub Station, Opp. Gardan Hotel, Chansma Highway, Patan-384265', 9, 9978281413, 'hardik.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9978281413),
(120, 'MR.', '13', '23550', '110980109033', 11091131, 'ANISHBHAI', 'ALLAUDDINBHAI', 'MANKNOJIYA', 'ALLAUDDINBHAI', 'SAKINABEN', 'HOME', '2002-08-11', '1993-10-22', 'MOMANVAS', 'MALE', 'ALLAUDDINBHAI', 'FATHER', 'SSC', 'TEACHER', '5', 'At&po.Mumanvas, Ta.Vadgam, Di.B.K-385120', 168, 385120, 'At&po.Mumanvas, Ta.Vadgam, Di.B.K-385120', 9, 9427065176, 'anish.manknojiya@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9427065176),
(121, 'MR.', '54', '24381', '110980109034', 11091132, 'USMANGANI', 'IQBALHUSSAIN', 'SHAIKH', 'IQBALHUSSAIN', 'SAYARABANU', 'HOME', '2002-08-11', '1993-07-28', 'MEHSANA', 'MALE', 'IQBALHUSSAIN', 'FATHER', 'SSC', 'DRIVING', '18000', 'NA', 168, 384002, 'Desainagar, Nr. Ramosana Circle, Mehsana-384002', 9, 9726090620, 'usmangani.shaikh@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9726090620),
(122, 'MR.', '17', '25473', '110980109035', 11091133, 'URVIK', 'PRAVINCHANDRA', 'MODI', 'PRAVINCHANDRA', 'RANJANBEN', 'HOME', '2002-08-11', '1994-03-18', 'KOTDI', 'MALE', 'PRAVINCHANDRA', 'FATHER', 'B.COM', 'SERVICE', '334677', 'SARDARKRUSHINAGAR DANTIWADA, PALANPUR', 130, 385001, '79, Nand Bunglow-2, Nr. Kubernagar, Ahmedabad Highway, Palanpur-385001', 9, 9429717508, 'urvik.modi@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9429717508),
(123, 'MR.', '8', '25962', '110980109036', 11091134, 'GULABBHAI', 'MANCHHARAM', 'GELOT', 'MANCHHARAM', 'DHUDIBEN', 'HOME', '2011-07-21', '1993-02-27', 'DEESA', 'MALE', 'MANCHHARAM', 'FATHER', 'SSC', 'FARMER', '15000', 'NA', 46, 385535, 'Laxmi Narayan Society,B/h.Old Adrash School,H.K.Gelot,dessa-385535', 9, 9428677105, 'gulab.gelot@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9428677105),
(124, 'MR.', '48', '27727', '110980109038', 11091135, 'RAHULKUMAR', 'GOVINDBHAI', 'PRAJAPATI', 'GOVINDBHAI', 'HEERABEN', 'HOME', '2011-07-21', '1994-03-30', 'DANTA', 'MALE', 'GOVINDBHAI', 'FATHER', 'SSC', 'FARMER', '25000', 'NA', 168, 385001, 'A-57 Tirupati Township Part-2, Deesa Highway, Palanpur', 9, 9428675840, 'rahul.prajapati@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9428675840),
(125, 'MR.', '18', '28375', '110980109039', 11091136, 'SAIFALI', 'HAIDARALI', 'MUSABJI', 'HAIDARALI', 'RAHENABEN', 'HOME', '2011-07-20', '1993-11-21', 'KANODAR', 'MALE', 'HAIDARALI', 'FATHER', 'HSC', 'GOV.JOB', '434386', 'V. RANGE OF THARAD FOREST COLONY,', 160, 385520, 'Ambali vas,At&po.Kanodar,Ta.palanpur, Di.B.K-385520', 9, 9428370087, 'saifali.musabji@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9428370087),
(126, 'MR.', '16', '28643', '110980109040', 11091137, 'GAURANG', 'ANILKUMAR', 'MISTRI', 'ANILKUMAR', 'RAMILABEN', 'HOME', '2011-07-20', '1993-09-01', 'PALANPUR', 'MALE', 'ANILKUMAR', 'FATHER', '8 FAIL', 'CARPENTAR', '11000', 'PALANPUR', 130, 385001, '29, Vishwakarma society,Akesan Road, Ahmedabad highway, palanpur-384001', 9, 9726314022, 'gaurang.mistri@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9726314022),
(127, 'MR.', '20', '29785', '110980109043', 11091140, 'MAHIRKUMAR', 'MUKESHBHAI', 'PANCHIWALA', 'MUKESHBHAI', 'ALKABEN', 'HOSTEL', '2011-07-22', '1993-11-19', 'DEESA', 'MALE', 'MUKESHBHAI', 'FATHER', 'SSC', 'SERVICE', '339237', 'NEAR ST XAVIERS HIGHSCOOL, DEESA', 46, 385535, 'Laxminaryan Society, Deesa. Dist .B.K.', 9, 9427407145, 'mahir.panchiwala@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9427407145),
(128, 'MR.', '46', '29814', '110980109044', 11091141, 'BHAVIK', 'VADILAL', 'PRAJAPATI', 'VADILAL', 'RITABEN', 'HOME', '2011-05-20', '1994-12-01', 'NAVSARI', 'MALE', 'VADILAL', 'FATHER', 'SSC', 'CARPENTAR', '10000', 'NA', 135, 384265, 'Gujarwado, Nr.sharda cinema, patan-384265', 9, 9662544437, 'bhavik.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9662544437),
(129, 'MR.', '49', '32175', '110980109045', 11091142, 'APURVKUMAR', 'KIRTIBHAI', 'PRIYADARSHI', 'KIRTIBHAI', 'GEETABEN', 'HOME', '2011-07-21', '1993-06-15', 'SAMODA', 'MALE', 'KIRTIBHAI', 'FATHER', 'GRATUTED', 'SERVICE', '261715', 'DEPUTY ENGINEER RUPAL SUB DIVISION, UNAVA', 168, 384001, '4,mangaldeep Society, Nr.Ashok Cinema, At&po&Ta.Sidhpur,Di.patan-384151', 9, 9601278732, 'apurv.priyadarshi@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9601278732),
(130, 'MR.', '12', '34152', '110980109046', 11091143, 'MILANKUMAR', 'PRAVINKUMAR', 'MALAVRAJ', 'PRAVINKUMAR', 'USHABEN', 'HOME', '2011-07-21', '1993-07-23', 'KALOL', 'MALE', 'PRAVINKUMAR', 'FATHER', 'SSC', 'SERVICE', '162048', 'AT&POST-BAVALCHUDI,TA-VADGAM', 168, 385210, 'Bavalchudi,Ta.vadgam, Dist-B.K-385210', 9, 9904670691, 'milan.malavraj@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9904670691),
(131, 'MR.', '11', '35857', '110980109047', 11091144, 'PRATIKKUMAR', 'ASHOKBHAI', 'MAKAVANA', 'ASHOKBHAI', 'SAKUNTALABEN', 'HOME', '2011-07-21', '1994-02-28', 'CHANDKHEDA', 'MALE', 'ASHOKBHAI', 'FATHER', 'HSC', 'POLICE', '5', 'POLICE HEAD QUATURE ROOM-C3177 B/HRAILWAY STATION PATAN', 135, 384265, 'Police Head Quatras, Police line, Room no-C3/17,B/h Railway station, patan-384265', 9, 9909846349, 'pratik.makavana@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9909846349),
(132, 'MR.', '19', '32482', '110980109048', 11091145, 'BHAVIK', 'MAHESHKUMAR', 'NAYAK', 'MAHESHKUMAR', 'NEELABEN', 'HOME', '2008-08-11', '1994-08-02', 'AHMEDABAD', 'MALE', 'MAHESHKUMAR', 'FATHER', 'DIPLOMA. MECH', 'SERVICE', '550000', 'BSNI,PALANPUR', 168, 385001, '16,Satyam Banglow, opp-Church Ramosna Road, Mehsana-2-384002', 9, 9426601421, 'bhavik.nayak@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9426601421),
(133, 'MR.', '47', '32765', '110980109049', 11091146, 'JIGAR', 'MAHENDRAKUMAR', 'PRAJAPATI', 'MAHENDRAKUMAR', 'ASHABEN', 'HOME', '2008-08-11', '1994-03-20', 'VISNAGAR', 'MALE', 'MAHENDRAKUMAR', 'FATHER', 'B.COM', 'GOV.JOB', '314000', 'C.N.C KAKOSHI', 151, 384151, 'B-6, Sarkari Vashahat, Court Compound,Sidhpur-384151', 9, 9909844830, 'jigar.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9909844830),
(134, 'MR.', '61', '35234', '110980109050', 11091147, 'JIGNESHKUMAR', 'SHAILESHKUMAR', 'VYAS', 'SHAILESHKUMAR', 'NAYNABEN', 'HOME', '2008-08-11', '1994-05-29', 'PALANPUR', 'MALE', 'SHAILESHKUMAR', 'FATHER', 'M.COM', 'BUSINESS', '50000', '6, AROMA ASKED OPP.JILLA PANCHAYAT PALANPUR', 130, 385001, '29,Vishwakarma Society, Nr.Akesan Fatak, Ahm. Highway, Palanpur-385001', 9, 9427566930, 'jignesh.vyas@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9427566930),
(135, 'MR.', '10', '1', '110980109051', 11091148, 'HARDIKKUMAR', 'JAGADISHBHAI', 'JOSHI', 'JAGADISHBHAI', 'MAYABEN', 'HOME', '2005-08-11', '1993-05-27', 'KARBATIYA', 'MALE', 'JAGADISHBHAI', 'FATHER', 'B.COM', 'BANK MANEGAR', '250000', 'DENA BANK B/H RAILWAY STATION RADHANPUR', 139, 385340, 'B-21, Tirupati Township, Jalarammandir, Deesa-385535', 9, 9909079600, 'hardik.joshi@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9909079600),
(136, 'MR.', '4', '36101', '110980109052', 11091149, 'DUSHYANTKUMAR', 'MAHENDRABHAI', 'CHAUDHARY', 'MAHENDRABHAI', 'HALIBEN', 'HOME', '2008-08-11', '1993-11-26', 'BASANA', 'MALE', 'MAHENDRABHAI', 'FATHER', 'HSC', 'FARMER', '90000', 'NA', 168, 384001, 'At.Basana, Ta.Visanagar, Di.Mehasana-384001', 9, 9427287927, 'dushyant.chaudhary@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9427287927),
(137, 'MR.', '50', '1', '110980109053', 11091150, 'KULDIPSINH', 'CHAMANJI', 'RAJPUT', 'CHAMANJI', 'RAIBEN', 'HOME', '2011-08-16', '1993-11-09', 'BOKARAADA', 'MALE', 'CHAMANJI', 'FATHER', 'NA', 'PRI.TEACHAR', '250000', 'BOKARVADA. TA:-VISNAGAR DIST: MEHSANA', 168, 384120, 'Shaktinagar Society, Bokarwada, Ta.Visnagar, Di.Mehsana', 9, 9979923740, 'kuldip.rajput@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9979923740),
(138, 'MR.', '9', '1', '110980109054', 11091151, 'AASHIF', 'IQBALBHAI', 'HEMADEE', 'IQBALBHAI', 'JETUNBEN', 'HOSTEL', '2011-08-16', '1993-07-20', 'SAMI', 'MALE', 'IQBALBHAI', 'FATHER', 'HSC', 'FARMER', '60000', 'NA', 168, 8, 'Nr. Parmar Masjid, At&po-Sami, Di-Patan', 9, 9998861324, 'aashif.hamadee@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9998861324),
(139, 'MR.', '45', '1', '110980109055', 11091152, 'AKSHAY', 'NARSINHBHAI', 'PRAJAPATI', 'NARSINHBHAI', 'GITABEN', 'HOSTEL', '2008-08-11', '1994-05-21', 'DEESA', 'MALE', 'NARSINHBHAI', 'FATHER', 'B.COM  L.L.B', 'ADVOCATE', '400000', 'NA', 46, 385535, '47, Sarswati Park, Raileay Station Road,Deesa-385535', 9, 9824908561, 'akshay.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9824908561),
(140, 'MR.', '30', '17843', '110980109056', 11091153, 'HARNISH', 'NARENDRABHAI', 'PATEL', 'NARENDRABHAI', 'BHAVANABEN', 'HOME', '2011-08-30', '1993-10-10', 'PATAN', 'MALE', 'NARENDRABHAI', 'FATHER', 'NA', 'TEACHER', '100000', 'MAA HOSPITAL. PATAN', 135, 384265, 'Vanarshi No Madha, Maa Hospital(patan)-384265', 9, 9979920795, 'hitesh.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9979920795),
(141, 'MR.', '6', '1', '110980109058', 11091155, 'ARIF', 'FAKIRMAHMMAD', 'CHAUHAN', 'FAKIRMAHMMAD', 'JARINABANU', 'HOME', '2011-08-18', '1992-06-11', 'RADHANPUR', 'MALE', 'FAKIRMAHMMAD', 'UNCLE', 'NA', 'FARMER', '15000', 'NA', 139, 385340, 'Ghasiyavas Radhanpur, Di-Patan,385340', 9, 9727286253, 'arif.chauhan@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9727286253),
(142, 'MR.', '38', '500989', '110980109059', 11091156, 'MEET', 'DINESHBHAI', 'PATEL', 'DINESHBHAI', 'BHAVANABEN', 'HOME', '2011-08-30', '1994-06-16', 'PATAN', 'MALE', 'DINESHBHAI', 'FATHER', 'NA', '4', '5', 'NA', 135, 384265, 'Gurjarvado, Nr. Sarda Tokiz,Patan-384265', 9, 8980684072, 'meet.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 8980684072),
(143, 'MR.', '15', '19627', '110980109060', 11091157, 'MOHAMMADSADIK', 'JANMOHAMMAD', 'MEMON', 'JANMOHAMMAD', 'JARINABEN', 'HOME', '2011-08-30', '1993-07-16', 'DEESA', 'MALE', 'JANMOHAMMAD', 'FATHER', 'OLD EIGHT PASS', 'MERCHANT', '60000', 'NA', 46, 385535, 'Biharibag Society, Rajpur Road, Deesa, B.K-385535', 9, 9426897776, 'mahammad.meman@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9426897776),
(144, 'MR.', '62', '35688', '110980109061', 110910283, 'DARSHANKUMAR', 'JAYANTILAL', 'PATEL', 'JAYANTILAL', 'SAVITABEN', 'HOME', '2006-09-11', '1993-11-25', 'KANSA', 'MALE', 'JAYANTILAL', 'FATHER', 'GREGUAT', 'JOB', '100000', 'BSNL OFFICE, VISNAGAR', 168, 384315, 'Junapara ma, At&po.Kansa, Ta.Visnagar, Di.Mehsana', 9, 9727083477, 'darshan.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9727083477),
(145, 'MISS', '63', '1', '110980109062', 110910285, 'RAJANIBEN', 'RAJENDRAKUMAR', 'PRAJAPATI', 'RAJENDRAKUMAR', 'RAMILABEN', 'HOME', '2006-09-11', '1993-11-13', 'PALANPUR', 'FEMALE', 'RAJENDRAKUMAR', 'FATHER', 'B.COM', 'BILDAR', '5', 'NA', 130, 385001, 'Part-2, Block-23, Rajvi Banglow, Juna Laxmipura, Palanpur, (B.K)', 9, 9904057673, 'rajni.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9904057673),
(146, 'MISS', '64', 'DIPLOMA', '110980109063', 110910276, 'POONAMBEN', 'KANTILAL', 'PATEL', 'KANTILAL', 'JYOSTNABEN', 'HOME', '2006-09-11', '1993-08-01', 'PATAN', 'FEMALE', 'KANTILAL', 'FATHER', '11 PASS', 'FARMER', '5', 'NA', 168, 384275, 'At.Islampur, Ta.Chansma, Di. Patan-384275', 9, 9978460528, 'poonam.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9978460528),
(147, 'MR.', '65', 'DIPLOMA', '110980109064', 110910280, 'PRAVINBHAI', 'PARKHAJI', 'MALI', 'PARKHAJI', 'NARMDA BEN', 'HOME', '2006-09-11', '1992-01-06', 'LUNAVA', 'MALE', 'PARKHAJI', 'FATHER', '9 PASS', 'VILLEGE PRECIDENT', '16000', 'AT: LUNAVA', 160, 385565, 'At.Lunava, Po.Jetadu Ta.Tharad, Di-B.K', 9, 9727281894, 'pravin.mali@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9727281894),
(148, 'MISS', '66', 'DIPLOMA', '110980109065', 110910282, 'SUDESHBEN', 'JAYESHKUMAR', 'PATEL', 'JAYESHKUMAR', 'JYOSTNABEN', 'HOME', '2006-09-11', '1990-10-28', 'UNJHA', 'FEMALE', 'JAYESHKUMAR', 'FATHER', '11 PASS', 'BUSINESS', '5', 'AT:UNJHA', 165, 384170, 'Om Dipasha Colony, Opp.Shambhv Park, Unjha-384170', 9, 9925440737, 'sudesh.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9925440737),
(149, 'MISS', '17', '12058', '110980107001', 11071061, 'APEXA', 'VINODBHAI', 'PATEL', 'VINODBHAI', 'MAMTABEN', 'HOME', '2016-08-11', '1993-11-27', 'MEHSANA', 'FEMALE', 'VINODBHAI', 'FATHER', 'NA', 'TEACHER', '400000', 'S.V.B SCHOOL , BRAHMANVADA', 165, 384170, 'At. Brahmanwada, Ta. Unjha, Dist. Mehsana, 384215', 9429727657, 9429727656, 'apexa.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9429727656),
(150, 'MISS', '37', '16771', '110980107002', 11071062, 'SHARDDHABEN', 'HARSHADBHAI', 'THAKKAR', 'HARSHADBHAI', 'KANCHANBEN', 'HOME', '2011-07-19', '1994-08-21', 'KAKOSHI', 'FEMALE', 'HARSHADBHAI', 'FATHER', 'NA', 'BUSINESS', '50000', 'MAIN BAZAR KAKOSHI', 168, 384290, 'New panchal vas, kakosi(patan)-384290', 9427379898, 9427379898, 'sharddha.thakkar@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9427379898),
(151, 'MISS', '27', '17281', '110980107003', 11071063, 'MAULIKA', 'BABULAL', 'PATEL', 'BABULAL', 'KESHIBEN', 'HOME', '2020-07-11', '1993-10-12', 'NANDOTARI', 'FEMALE', 'BABULAL', 'FATHER', 'NA', 'FARMER', '18000', '24, Thakar Colony,B/H Ayodhyanagar society, Nr kakoshi fatak, sidhpur, dist:patan-384151', 151, 384151, '24, Thakar Colony,B/H Ayodhyanagar society, Nr kakoshi fatak, sidhpur, dist:patan-384151', 9374740742, 9374740742, 'maulika.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9374740742),
(152, 'MR.', '9', '17807', '110980107004', 11071064, 'KRUNAL', 'KIRTIBHAI', 'JOSHI', 'KIRTIBHAI', 'PRAVINABEN', 'HOME', '2020-07-11', '1993-08-10', 'PALANPUR', 'MALE', 'KIRTIBHAI', 'FATHER', 'NA', 'LIC AGENT', '60000', 'Brahmanvas,B/h Sivil hospital mansarovar road, palanpur-385001', 130, 385001, 'Brahmanvas,B/h Sivil hospital mansarovar road, palanpur-385001', 9624878350, 8460652165, 'krunal.joshi@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8460652165),
(153, 'MISS', '1', '19996', '110980107005', 11071065, 'RINKUBEN', 'SARDARBHAI', 'CHAUDHURI', 'SARDARBHAI', 'GEETABEN', 'HOME', '2004-08-11', '1994-01-20', 'PALANPUR', 'FEMALE', 'SARDARBHAI', 'FATHER', 'NA', 'FARMER', '50000', 'At.&Po. Nandotra,Ta.Vadgam, B.K', 168, 385421, 'At.&Po. Nandotra,Ta.Vadgam, B.K', 9726057956, 9880181640, 'rinkuben.chaudhari@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9880181640),
(154, 'MR.', '2', '21939', '110980107006', 11071066, 'GIRISHBHAI', 'LAGDHIRBHAI', 'CHAUDHURI', 'LAGDHIRBHAI', 'RAGABEN', 'HOSTEL', '2002-08-11', '1994-05-31', 'TADAV', 'MALE', 'LAGDHIRBHAI', 'FATHER', 'NA', 'TEACHER', '250000', 'Village:Tadav, Ta. Wav-385566', 168, 385566, 'Village:Tadav, Ta. Wav-385566', 9428675320, 9429552829, 'girishbhai.chaudhari@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9429552829),
(155, 'MISS', '31', '22935', '110980107007', 11071067, 'TWINKAL', 'GIRISHKUMAR', 'PATEL', 'GIRISHKUMAR', 'NIRMALABEN', 'HOME', '2011-07-21', '1993-12-10', 'KAMALI', 'FEMALE', 'GIRISHKUMAR', 'FATHER', 'NA', 'FARMER', '15000', 'navo madh, Nr.grampanchayat, kamli. Dist:mehsana-384140', 165, 384175, 'navo madh, Nr.grampanchayat, kamli. Dist:mehsana-384140', 9825079347, 9825079347, 'twinkal.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9825079347),
(156, 'MISS', '23', '24916', '110980107009', 11071069, 'HEMALI', 'DEVENDRAKUMAR', 'PATEL', 'DEVENDRAKUMAR', 'BHARTIBEN', 'HOME', '2002-08-11', '1993-06-22', 'AHMEDABAD', 'FEMALE', 'DEVENDRAKUMAR', 'FATHER', 'NA', 'BUSINESS', '225000', 'Navjivan Society, Abu Highyway Road, Palanpur-385002', 168, 8, 'Navjivan Society, Abu Highyway Road, Palanpur-385002', 9927268994, 9724191399, 'hemali.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9724191399),
(157, 'MR.', '10', '26371', '110980107010', 11071070, 'RAHULKUMAR', 'ASHOKBHAI', 'JOSHI', 'ASHOKBHAI', 'PANNABEN', 'HOME', '2011-07-20', '1993-10-16', 'KHIJADIYA', 'MALE', 'ASHOKBHAI', 'FATHER', 'NA', 'TEACHER', '300000', '26/B, Arpan park society, agola road, Nr.nandanvan society, palanpur-385001', 130, 385001, '26/B, Arpan park society, agola road, Nr.nandanvan society, palanpur-385001', 9924777628, 9924777628, 'rahul.joshi@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9924777628),
(158, 'MISS', '35', '26777', '110980107011', 11071071, 'VAISHALIBEN', 'NATVARLAL', 'RAVAL', 'NATVARLAL', 'CHANDRIKABEN', 'HOME', '2011-07-21', '1993-11-30', 'PALANPUR', 'FEMALE', 'NATVARLAL', 'FATHER', 'NA', 'CUNDECTOR', '5', 'AMBAJI DEPO', 5, 8, 'At&po.Timbachudi  ta.Vadgam, Dist.B.K-385210', 8140282634, 8140282634, 'vaishali.raval@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8140282634),
(159, 'MISS', '7', '27115', '110980107012', 11071072, 'MAYURISING', 'NARESHPALSING', 'JADON', 'NARESHPALSING', 'SHESHASING', 'HOME', '2021-07-11', '1992-04-11', 'CHHAPI', 'FEMALE', 'NARESHPAL SING', 'FATHER', 'NA', 'P-MAN IN RAILWAY', '196000', 'RAILWAY STATION SIDHPUR', 151, 384151, 'Railway kakoshi fatak, Nr.kotar no.58/B, ta.sidhpur, dist.patan. 384151', 9687845043, 9909290745, 'mayurising.jadon@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9909290745),
(160, 'MISS', '28', '27535', '110980107013', 11071073, 'NIMISHABEN', 'NAVINCHANDRA', 'PATEL', 'NAVINCHANDRA', 'VALIBEN', 'HOME', '2021-07-11', '1994-04-28', 'PALANPUR', 'FEMALE', 'NAVINCHANDRA', 'FATHER', 'NA', 'BUSINESS', '90000', 'PALAPUR', 130, 385001, 'Old laxmipura, stret no.7, ta.palanpur, Dist.B.K-385002', 9898365321, 9898365321, 'nimisha.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9898365321),
(161, 'MISS', '32', '27882', '110980107014', 11071074, 'ANJALI', 'MAHENDRAKUMAR', 'PRAJAPATI', 'MAHENDRAKUMAR', 'ARUNABEN', 'HOME', '2020-07-11', '1993-12-23', 'SIDHPUR', 'FEMALE', 'MAHENDRAKUMAR', 'FATHER', 'NA', 'LABUR WORK', '15000', 'SIDHPUR', 151, 384151, 'pasvadal ki pol, sidhpur, Ta.sidhpur, Dist.patan-384151', 9825315105, 9978596570, 'anjali.prajapati@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9978596570),
(162, 'MISS', '19', '30212', '110980107015', 11071075, 'AVANIBEN', 'SHANKARLAL', 'PATEL', 'SHANKARLAL', 'JAYSHREEBEN', 'HOME', '2011-07-23', '1993-04-23', 'PATAN', 'FEMALE', 'SHANKARLAL', 'FATHER', 'NA', 'FARMER', '20000', 'Naveriyavas, At. Maktupur Ta.Unjha, dist. Mehsana-384170', 165, 384175, 'Naveriyavas, At. Maktupur Ta.Unjha, dist. Mehsana-384170', 9628837645, 9638837645, 'avani.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9638837645),
(163, 'MISS', '26', '30770', '110980107016', 11071076, 'KRUPA', 'PARESHBHAI', 'PATEL', 'PARESHBHAI', 'SMITABEN', 'HOME', '2011-07-20', '1993-08-14', 'UNJHA', 'FEMALE', 'PARESHBHAI', 'FATHER', 'NA', 'BUSINESS', '92000', 'Jagdish nagar, Nr.Rambag, Unjha, Dist.mehsana-384170', 165, 384170, 'Jagdish nagar, Nr.Rambag, Unjha, Dist.mehsana-384170', 9099940482, 9537528655, 'krupa.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9537528655),
(164, 'MR.', '36', '31680', '110980107017', 11071077, 'SAGARBHAI', 'JAGDISHBHAI', 'SOLANKI', 'JAGDISHBHAI', 'SAVITABEN', 'HOME', '2011-07-20', '1993-01-26', 'PATAN', 'MALE', 'JAGDISHBHAI', 'FATHER', 'NA', 'DRIVER', '10000', 'Aketa park society,Nr.motishah Darvaja, dist.patan-384265', 135, 384265, 'Aketa park society,Nr.motishah Darvaja, dist.patan-384265', 9925623560, 9925623560, 'sagar.solanki@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9925623560),
(165, 'MR.', '15', '32048', '110980107018', 11071078, 'AJAYKUMAR', 'RAMANBHAI', 'PATEL', 'RAMANBHAI', 'PARAVATIBEN', 'HOSTEL', '2011-07-20', '1993-11-27', 'SIDHPUR', 'MALE', 'RAMANBHAI', 'FATHER', 'NA', 'DRIVER', '12000', 'Gurunanak society ke pass, Ta.sidhpur, Dist.patan-384151', 135, 384151, 'Gurunanak society ke pass, Ta.sidhpur, Dist.patan-384151', 9825620559, 9722334155, 'ajay.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9722334155),
(166, 'MR.', '34', '32516', '110980107019', 11071079, 'JAGIR', 'PRADIPKUMAR', 'RAO', 'PRADIPKUMAR', 'HASUMATIBEN', 'HOME', '2016-08-11', '1993-09-25', 'SIDHPUR', 'MALE', 'PRADIPKUMAR', 'FATHER', 'NA', 'LAWYER', '35000', '23, Ambika Nagar Society, Nr, G.E.B. Sidhpur, 384151', 151, 384151, '23, Ambika Nagar Society, Nr, G.E.B. Sidhpur, 384151', 9408200977, 9429383832, 'jagir.rao@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9429383832),
(167, 'MISS', '29', '32611', '110980107020', 11071080, 'POOJABEN', 'BABUBHAI', 'PATEL', 'BABUBHAI', 'BHARATIBEN', 'HOME', '2011-07-20', '1994-06-24', 'SIDHPUR', 'FEMALE', 'BABUBHAI', 'FATHER', 'NA', 'GOVT, SERVICE', '500000', 'CASTOR MUSTARD RESEARCH STATION', 168, 385506, 'A/23 Dharti towanship, Akesan road highway, dist.B.K,  palnpur-385001', 9825422505, 9429288964, 'pooja.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9429288964),
(168, 'MISS', '21', '33632', '110980107021', 11071081, 'DIPIKA', 'RAMABHAI', 'PATEL', 'RAMABHAI', 'KANKUBEN', 'HOME', '2021-07-11', '1994-02-07', 'PALANPUR', 'FEMALE', 'RAMABHAI', 'FATHER', 'NA', 'BUSINESS', '80000', 'RAMDEV HOTEL,AHMEDABAD', 3, 8, 'Old laxmipura Ramdev nagar society, palanpur-385001', 9426894934, 9426894934, 'dipika.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9426894934),
(169, 'MISS', '3', '34045', '110980107022', 11071082, 'MITALBEN', 'BHIKHABHAI', 'CHAUDHARY', 'BHIKHABHAI', 'PURIBEN', 'HOME', '2016-08-11', '1994-06-24', 'PALANPUR', 'FEMALE', 'BHIKHABHAI', 'FATHER', 'NA', 'FARMER', '50000', 'At & Po. Jasleni, Ta. Palanpur, Dist. B.K. 385410', 130, 385410, 'At & Po. Jasleni, Ta. Palanpur, Dist. B.K. 385410', 9913277480, 7567374440, 'mitalben.chaudhary@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 7567374440),
(170, 'MISS', '22', '34882', '110980107023', 11071083, 'GOPI', 'RAMESHBHAI', 'PATEL', 'RAMESHBHAI', 'RAMILABEN', 'HOME', '2002-08-11', '1994-06-28', 'MEHSANA', 'FEMALE', 'RAMESHBHAI', 'FATHER', 'NA', 'BUSINESS', '100000', 'Gayatri MEDICAL MAIN ROAD , DEESA', 46, 385535, '7- Patel Society, Nr. S.C.W. Highway School, Deesa-385535', 9879303439, 9537459436, 'gopi.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9537459436),
(171, 'MISS', '38', '35993', '110980107024', 11071084, 'SIDDHIBEN', 'SURESHBHAI', 'TRIVEDI', 'SURESHBHAI', 'DAXABEN', 'HOME', '2002-08-11', '1994-09-03', 'DHANERA', 'FEMALE', 'SURESHBHAI', 'FATHER', 'NA', 'BUSINESS', '120000', 'OM TRANING, JANI SHOPPING', 51, 385310, '25 Vivekanand Society, Dhanera, Dis. Banaskantha-385310', 9426049675, 9426049675, 'siddhi.trivedi@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9426049675),
(172, 'MISS', '33', '36068', '110980107025', 11071085, 'SONALBEN', 'HALABHAI', 'RABARI', 'HALABHAI', 'CHEHARBEN', 'HOME', '2023-07-11', '1992-11-19', 'MAKTUPUR', 'FEMALE', 'HALABHAI', 'FATHER', 'NA', 'FARMER', '15000', 'Rabari vas, At.Maktupur, Ta.Unjha, Dist.Mehsana-384170', 165, 384170, 'Rabari vas, At.Maktupur, Ta.Unjha, Dist.Mehsana-384170', 9913420407, 9913420407, 'sonal.rabari@hansabacollege.com', NULL, 'O-', 0, 2, '2012-07-27 17:26:04', 9913420407),
(173, 'MR.', '12', '36198', '110980107026', 11071086, 'MAHEMUDHASAN', 'AKBARALI', 'NANDOLIYA', 'AKBARALI', 'FATEMABEN', 'HOME', '2002-08-11', '1994-08-29', 'META', 'MALE', 'AKBARALI', 'FATHER', 'NA', 'BUSINESS', '120000', 'AT&PO- META TA- VADGAM DI-BANASKANTHA', 168, 385525, 'AT&PO- META TA- VADGAM DI-BANASKANTHA', 985966820, 9825966820, 'Mahemudhasan.Nandoliya@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9825966820),
(174, 'MR.', '20', '36333', '110980107027', 11071087, 'DHAVALKUMAR', 'KANJIBHAI', 'PATEL', 'KANJIBHAI', 'MANIBEN', 'HOME', '2002-08-11', '1994-07-03', 'MUMBAI', 'MALE', 'KANJIBHAI', 'FATHER', 'NA', 'FARMER', '100000', 'At.&Po. Madana(Gadh), Nr. Bus stand, Palanpur-385519', 130, 385410, 'At.&Po. Madana(Gadh), Nr. Bus stand, Palanpur-385519', 8140126238, 7359810773, 'dhaval.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7359810773),
(175, 'MISS', '25', '36540', '110980107028', 11071088, 'KHUSHBUBEN', 'RAJESHKUMAR', 'PATEL', 'RAJESHKUMAR', 'KALPANABEN', 'HOME', '2002-08-11', '1993-07-08', 'SUJANPUR', 'FEMALE', 'RAJESHKUMAR', 'FATHER', 'NA', 'FARMER', '100000', 'Hanuman Nagar, Sujanpur, Ta- Siddhpur, Di-Patan-384151', 151, 384151, 'Hanuman Nagar, Sujanpur, Ta- Siddhpur, Di-Patan-384151', 9924037291, 9924037291, 'khushbu.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9924037291),
(176, 'MISS', '18', '36655', '110980107029', 11071089, 'ARJU', 'MUKESHKUMAR', 'PATEL', 'MUKESHKUMAR', 'MANJULABEN', 'HOME', '2002-08-11', '1993-10-30', 'UNJHA', 'FEMALE', 'MUKESHKUMAR', 'FATHER', 'NA', 'GOVT, SERVICE', '600000', 'GOVE. OFFICER MALWARA, DI- JALORE', 168, 8, '106, Suyog Bunglow, Akesanfatak, Nr. Palanpur, Palanpur Ahmedabad Highway', 9828268241, 8511237252, 'arju.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8511237252),
(177, 'MISS', '14', '37038', '110980107030', 11071090, 'BHAVNABEN', 'KESHARSINH', 'PARMAR', 'KESHARSINH', 'PARANBEN', 'HOME', '2002-08-11', '1993-07-29', 'MOTA', 'FEMALE', 'KESHARSINH', 'FATHER', 'NA', 'POLICE', '180000', 'CITY POLICE STATION , GANDHIDHAM', 130, 385410, 'Block No.-53, Ramnagar Society, Gobari Road, Palanpur-385001', 9926342175, 9408896206, 'bhavnaben.Parmar@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9408896206),
(178, 'MISS', '30', '37711', '110980107031', 11071091, 'SARIKABEN', 'PRAKASHKUMAR', 'PATEL', 'PRAKASHKUMAR', 'VASHANTIBEN', 'HOME', '2003-08-11', '1994-05-05', 'PALANPUR', 'FEMALE', 'PRAKASHKUMAR', 'FATHER', 'NA', 'BUSINESS', '80000', 'KALYAN BHAVAN, PALANPUR', 130, 385001, 'New Laxmipura,Opp. Karjivas, B/H Joravar Palace Ta. Palanpur-385001', 9825290085, 9825290085, 'sarika.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9825290085),
(179, 'MR.', '13', '38393', '110980107032', 11071092, 'RAHULBHAI', 'PRAVINBHAI', 'PANCHAL', 'PRAVINBHAI', 'BHAVNABEN', 'HOSTEL', '2016-08-11', '1993-08-23', 'NAVA', 'MALE', 'PRAVINBHAI', 'FATHER', 'NA', 'CARPENTER', '16000', 'VISHVAKARMA FURNITURE, PATAN', 135, 384265, 'Po. Koita, Panchal Vas, Dist. Patan', 9898019083, 9601577664, 'rahul.panchal@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9601577664),
(180, 'MR.', '4', '39243', '110980107033', 11071093, 'VIJAYKUMAR', 'KESARBHAI', 'CHAUDHARY', 'KESARBHAI', 'GALBIBEN', 'HOME', '2002-08-11', '1994-02-19', 'CHHAPI', 'MALE', 'KESARBHAI', 'FATHER', 'NA', 'FARMER', '38000', 'Gayatri Mandir Chhapi, Chhapi-385210', 168, 385210, 'Gayatri Mandir Chhapi, Chhapi-385210', 9978212013, 9712845069, 'vijaykumar.chaudhary@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9712845069),
(181, 'MR.', '11', '39429', '110980107034', 11071094, 'MUJAHIDBHAI', 'ABDULKADIR', 'MANASIYA', 'ABDULKADIR', 'IREANABEN', 'HOME', '2003-08-11', '1994-08-23', 'BAVAICHUDI', 'MALE', 'ABDULKADIR', 'FATHER', 'NA', 'FARMER', '25000', 'Sherpura, Ta-Vadgam, Dis. B.K.-385520', 168, 385520, 'Sherpura, Ta-Vadgam, Dis. B.K.-385520', 9925410786, 9925410786, 'Mujahidbhai.manasiya@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9925410786),
(182, 'MR.', '16', '39617', '110980107035', 11071095, 'ANKURKUMAR', 'BIPINBHAI', 'PATEL', 'BIPINBHAI', 'DAXABEN', 'HOME', '2004-08-11', '1993-05-09', 'UNDEL', 'MALE', 'BIPINBHAI', 'FATHER', 'NA', 'FARMER', '30000', 'Nanu Kalodara, Javahar Street, Ta.Khambhat, Dist.Anand-388630', 96, 388630, 'Nanu Kalodara, Javahar Street, Ta.Khambhat, Dist.Anand-388630', 9998372621, 9376736840, 'ankur.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9376736840),
(183, 'MR.', '6', '39995', '110980107036', 11071096, 'NOUMAN', 'AMIRMOHAMMAD', 'CHAUHAN', 'AMIRMOHAMMAD', 'SAMIMBEN', 'HOME', '2004-08-11', '1990-12-31', 'PALANPUR', 'MALE', 'AMIRMOHAMMAD', 'FATHER', 'NA', 'SERVICE', '150000', 'THE B.K DISTRICT CENTRAL CO. OPPERATIVE BANK,PALANPUR', 130, 385001, 'Huseniganj, Sat Sancha Nr. Dr.Rafik House, Kamalpura, Palanpur, B.K. 385001', 9727815817, 9898594232, 'nouman.chauhan@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9898594232),
(184, 'MISS', '24', '129861', '110980107037', 11071097, 'JYOTSANABEN', 'SHANKARBHAI', 'PATEL', 'SHANKARBHAI', 'AMARBEN', 'HOME', '2021-07-11', '1993-11-19', 'DHANERA', 'FEMALE', 'SHANKARBHAI', 'FATHER', 'NA', 'BUSINESS', '200000', 'MS. AJANATRENIG.CO', 51, 385001, '15,shanti niketan society, op. gyatri society, at&po&ta.dhanera-385001', 9825930518, 9825930518, 'jyotsana.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9825930518),
(185, 'MR.', '8', '40043', '110980107038', 11071098, 'JAINEXKUMAR', 'JITENDRAKUMAR', 'JAIN', 'JITENDRAKUMAR', 'AMITABEN', 'HOSTEL', '2016-08-11', '1993-11-06', 'CHANSMA', 'MALE', 'JITENDRAKUMAR', 'FATHER', 'NA', 'NA', '18000', 'NA', 168, 8, 'Motivaniyawas, Main Bazar, Chanasma, Dist Patan, 384220', 8140055246, 8866883009, 'jainex.jain@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8866883009),
(186, 'MR.', '39', '500585', '110980107039', 11071099, 'JIGARKUMAR', 'RAJESHKUMAR', 'RAVAL', 'RAJESHKUMAR', 'SHOBHANABEN', 'HOME', '2023-08-11', '1994-07-24', 'PALANPUR', 'MALE', 'RAJESHKUMAR', 'FATHER', 'NA', 'BUSINESS', '30000', 'S.T COTALARY STORE, PALANPUR', 130, 385001, '80, Shivnagar Socity, Abu Highway, Angola Road, Palanpur, Dist. B.K. 385001', 9879132038, 9879232037, 'jigar.raval@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9879232037),
(187, 'MR.', '40', 'NOT REG. ACPC', '110980107040', 110710249, 'ARVINDKUMAR', 'HIRALAL', 'CHAUDHARY', 'HIRALAL', 'SANTABEN', 'HOME', '2003-09-11', '1993-10-30', 'GADALWADA', 'MALE', 'HIRALAL', 'FATHER', 'NA', 'SER MARKET', '18000', 'At.Gadalwada, Po.Hoda, Ta.Palanpur,385001', 130, 385001, 'At.Gadalwada, Po.Hoda, Ta.Palanpur,385001', 9925041647, 8980372112, 'arvind.chaudhary@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8980372112),
(188, 'MR.', '42', 'NOT REG. ACPC', '110980107042', 110710251, 'PRAFULKUMAR', 'ASHOKKUMAR', 'PATEL', 'ASHOKKUMAR', 'SYBHDRABEN', 'HOME', '2029-08-11', '1993-07-25', 'UNJHA', 'MALE', 'ASHOKKUMAR', 'FATHER', 'NA', 'FARMER', '12000', 'Dasaj Road, At&Po-Kamli, Ta.Unjha, Dist-Mehsana', 165, 384175, 'Dasaj Road, At&Po-Kamli, Ta.Unjha, Dist-Mehsana', 9978165811, 8128121430, 'praful.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8128121430),
(189, 'MR.', '43', '41594', '110980107043', 110710252, 'ABHISHEKH', 'PRAHALDBHAI', 'PARIKH', 'PRAHALDBHAI', 'USHABEN', 'HOME', '2010-09-11', '1994-05-27', 'PALANPUR', 'MALE', 'PRAHALDBHAI', 'FATHER', 'NA', 'TRAVEL AGENT', '15000', 'At&po.Jagana, Ta.Palanpur, Dist-B.K', 130, 385001, 'At&po.Jagana, Ta.Palanpur, Dist-B.K', 9429849910, 9429849901, 'abhishek.parikh@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9429849901),
(190, 'MISS', '44', '484', '110980107044', 110710255, 'POOJABEN', 'BHARATBHAI', 'PANCHAL', 'BHARATBHAI', 'MANJULABEN', 'HOME', '2003-09-11', '1993-06-04', 'PALANPUR', 'FEMALE', 'BHARATBHAI', 'FATHER', 'NA', 'BUSINESS', '5', 'D/38, Dharati Township, Akeshnroad, Palanpur', 130, 385001, 'D/38, Dharati Township, Akeshnroad, Palanpur', 9898331171, 8866529271, 'pooja.panchal@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8866529271),
(191, 'MISS', '45', '1402', '110980107045', 110710256, 'SUHANI', 'KIRTIBHAI', 'PATEL', 'KIRTIBHAI', 'URVASHI BEN', 'HOME', '2003-09-11', '1992-05-25', 'VALAM', 'FEMALE', 'KIRTIBHAI', 'FATHER', 'NA', 'GOVT, SERVICE', '250000', 'UGVCL POWER HOYSE, BUKADI', 135, 384265, 'A/42, Bhajrav Nagar Society, Nr.Bhajrav Temple, Patan', 7874302007, 8140289302, 'suhani.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8140289302),
(192, 'MISS', '46', '1486', '110980107046', 110710257, 'DIPALI', 'UPENDRABHAI', 'TAMHANE', 'UPENDRABHAI', 'ARUNABEN', 'HOME', '2003-09-11', '1992-07-11', 'DHANERA', 'FEMALE', 'UPENDRABHAI', 'FATHER', 'NA', 'GOVT, SERVICE', '280000', 'SUB STATION KAMLIVADA', 135, 384265, '4/D, Mangalmurti Duplex, Nr.Upvan Banglow, Deesa Highway, Patan-386265', 9558826430, 8866498920, 'dipali.tamhane@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8866498920),
(193, 'MISS', '47', '356', '110980107047', 110710253, 'VINITA', 'PRAGNESHKUMAR', 'DARJI', 'PRAGNESHKUMAR', 'VARSHABEN', 'HOME', '2010-09-11', '1993-05-22', 'PATAN', 'FEMALE', 'PRAGNESHKUMAR', 'FATHER', 'NA', 'TAILOR', '15000', 'GOKULVADI SAME, CHACHARIYA ROAD,PATAN', 135, 384265, 'Salvi vado, Darji ni seri, Patan-384265', 9925672556, 9925672556, 'vinita.darji@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9925672556),
(194, 'MR.', '40', '8944', '110980106001', 11061001, 'SNEHAL KUMAR', 'RAMESHBHAI', 'PATEL', 'RAMESHBHAI', 'ANANDIBEN', 'HOME', '2011-07-21', '1993-06-08', 'MEHSANA', 'MALE', 'PATEL RAMESHBHAI AMARTLAL', 'FATHER', 'HSC', 'BUSINESS', '25000', 'TIRUPATI MARKET, SIDHPUR.', 151, 384151, '38,shreeji nagar society,(mevada nagar), Sidhpur-384151', 2767226642, 8460803831, 'snehal.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9825616885),
(195, 'MR.', '39', '9403', '110980106002', 11061002, 'RONAK KUMAR', 'KAMLESHBHAI', 'PATEL', 'KAMLESHBHAI', 'MANJUBEN', 'HOME', '2011-07-19', '1993-09-18', 'UNJHA', 'MALE', 'PATEL KAMLESHBHAI VITTHALBHAI', 'FATHER', 'HSC', 'SERVICE', '75000', 'NA', 168, 8, '32,Tirupati Tenament. Nr.Ambalal ni Chali, Sidhpur-384151', 9, 9825051515, 'ronak.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9825051515),
(196, 'MR.', '8', '12020', '110980106003', 11061003, 'PRIYRAJ', 'JAGDISHKUMAR', 'GADHVI', 'JAGDISHKUMAR', 'LILABEN', 'HOME', '2011-07-20', '1994-02-28', 'DEESA', 'MALE', 'GADHVI JAGDISHKUMAR KARNISANJI', 'FATHER', 'HSC', 'FARMER', '120000', '5, sailila, Naxtra Banglow, Angola Road, palanpur, Di.B.K', 168, 385001, '5, sailila, Naxtra Banglow, Angola Road, palanpur, Di.B.K', 9, 9825098755, 'priyraj.gadhvi@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9426578935),
(197, 'MR.', '24', '15617', '110980106004', 11061004, 'ANKUR', 'MUKESHBHAI', 'PATEL', 'MUKESHBHAI', 'GEETABEN', 'HOME', '2011-07-20', '1993-04-10', 'BRAHMANWADA', 'MALE', 'PATEL MUKESHBHAI SANKARBHAI', 'FATHER', 'DEE', 'TEACHER', '250000', 'ADRASH WB MADYAMIC SCHOOL, MOTAJORAVARPURA', 168, 384245, '12/A, Nandanvan Society, B/H.Adarsh School, patan-384265', 9, 9925478954, 'ankur.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8238234644),
(198, 'MR.', '44', '17291', '110980106005', 11061005, 'KETAN', 'RAGHUBHAI', 'PUROHIT', 'RAGHUBHAI', 'CHOTHIBEN', 'HOME', '2011-08-17', '1994-08-30', 'PALANPUR', 'MALE', 'PUROHIT RAGHUBHAI MANCHAJI', 'FATHER', '5 PASS', 'FARMER', '60000', 'PUROHIT PARK, NEAR RAILWAY TRAK, KAILASH NAGAR, PALANPUR', 130, 385001, 'Nani Ravi Ta-Dhanera, Dhanera', 9, 9824621468, 'ketan.purohit@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7698385249),
(199, 'MISS', '14', '18396', '110980106006', 11061006, 'NAYANABEN', 'OMPRAKASH', 'KHATRI', 'OMPRAKASH', 'MANJUBEN', 'HOME', '2011-07-22', '1994-06-02', 'DEESA', 'FEMALE', 'KHATRI OMPRAKASH MULCHANDBHAI', 'FATHER', 'NA', 'BUSINESS', '50000', 'DAIMOND TRAMSPORT,PVT.DESSA.', 168, 385535, 'P.K nagar,B/H P.K. Party plot highway Road, Deesa-385535', 9, 9427373118, 'nayana.khatri@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9427373118),
(200, 'MR.', '45', '19408', '110980106007', 11061007, 'PRABHU', 'TEJABHAI', 'PUROHIT', 'TEJABHAI', 'SAVITABEN', 'HOME', '2011-08-16', '1992-12-01', 'PALANPUR', 'MALE', 'PUROHIT TEJABHAI BHALARAM', 'FATHER', '8 PASS', 'FARMER', '20000', 'JAMPURA SOCIETY, PATELVAS, PALANPUR', 130, 385001, 'Jamapura Society Patelvas, Unava', 9, 9979921834, 'prabhu.purohit@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9537481724),
(201, 'MR.', '60', '19591', '110980106008', 11061008, 'KISHAN KUMAR', 'VINODBHAI', 'UPADHYAY', 'VINODBHAI', 'SAROJBEN', 'HOME', '2003-08-11', '1993-09-10', 'BALISHANA', 'MALE', 'UPADHYAY VINODBHAI JAYANTIBHAI', 'FATHER', '8 PASS', 'NA', '40000', 'NANOMALIYABADO, BALISHANA,TA-DIST- PATAN', 135, 8, 'Balisana, Ta & Dist. Patan', 9, 9898188067, 'kishan.upadhyay@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9725176921),
(202, 'MR.', '53', '19847', '110980106009', 11061009, 'JIMIT', 'ATULKUMAR', 'SHAH', 'ATULKUMAR', 'NITABEN', 'HOME', '2011-07-21', '1993-08-30', 'UNAVA', 'MALE', 'SHAH ATULKUMAR JESHINGBHAI', 'FATHER', 'S.Y. B.Sc.', 'BUSINESS', '120000', 'AZAD CHOWK, AT- & PO-UNAVA,TA-UNJHA', 165, 8, 'Mandavii chowk, Nr. Jain Derasar, At&po.Unava, ta.Unjha,Di.mehsana-384160', 9, 9925433101, 'jimit.shah@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9974319514),
(203, 'MR.', '19', '20659', '110980106010', 11061010, 'DIPESHKUMAR', 'SHARADKUMAR', 'MODI', 'SHARADKUMAR', 'ANJALIKABEN', 'HOME', '2011-08-16', '1994-01-07', 'PATAN', 'MALE', 'MODI SHARADKUMARSEVANTILAL', 'FATHER', 'SSC', 'BUSINESS', '18000', 'TEEN DARWAJA, GHEE KANTA, PATAN', 168, 384265, 'Cachariya No Mato Maholloo, Patan 384265', 9, 9825094435, 'dipesh.modi@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9909724105),
(204, 'MR.', '25', '20727', '110980106011', 11061011, 'BANSIBHAI', 'JITENDRABHAI', 'PATEL', 'JITENDRABHAI', 'PREMILABEN', 'HOME', '2011-07-21', '1994-02-19', 'MEHSANA', 'MALE', 'PATEL JITENDRABHAI', 'FATHER', 'HCE', 'TEACHER', '300000', 'KANOSAN PRIMER HIGH SCHOOL, PATAN', 135, 184265, '79,Rajkamal towanship, ambaji road, Chansma highway, patan-384265', 9, 9925490890, 'bansi.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8347775875),
(205, 'MR.', '38', '21975', '110980106013', 11061012, 'RIKIN', 'MAHENDRABHAI', 'PATEL', 'MAHENDRABHAI', 'MADHUBEN', 'HOME', '2011-08-17', '1993-07-26', 'PATAN', 'MALE', 'PATEL MAHENDRABHAI HARGOVAN BHAI', 'FATHER', 'NA', 'BUSINESS', '25000', '10, NAVA GUNJ BAJAR PATAN', 168, 384265, '8/ Yogeswar Park Society, Nr. Railway Gal Nala. Patan-384265', 9, 9825074139, 'rikin.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 8980595646),
(206, 'MISS', '54', '18448', '110980106015', 11061013, 'ANJALI', 'RAJESHKUMAR', 'SHUKLA', 'RAJESHKUMAR', 'CHANDRABHAGA', 'HOME', '2011-07-23', '1994-01-19', 'SIDHPUR', 'FEMALE', 'SHUKLA RAJESHKUMAR BHOLANATH', 'FATHER', 'B.COM', 'UGBCL CORPORAT-MSH', '300000', 'VISHNAGRA ROAD, MEHSANA', 168, 8, 'Brhampol-junomadh, sidhpur-384151', 2767225888, 9825881598, 'anjali.shukla@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9825881598),
(207, 'MR.', '28', '22621', '110980106016', 11061014, 'HARDIKKUMAR', 'DWARKABHAI', 'PATEL', 'DWARKABHAI', 'PUSPABEN', 'HOME', '2011-07-20', '1993-09-13', 'KAHODA', 'MALE', 'PATEL DWARKABHAI MANILAL', 'FATHER', 'NA', 'FARMER', '50000', 'GANESHPARU, KHODA, TA-UNJHA, DIST-MEHSANA', 168, 384130, 'At.Kahoda, Ta.Unjha, Di.mehsana-384130', 2767285839, 8128286132, 'hardik.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 8128286132),
(208, 'MR.', '13', '22724', '110980106017', 11061015, 'ARCHIT', 'SHAILESHKUMAR', 'KHAMAR', 'SHAILESHKUMAR', 'DAXABEN', 'HOME', '2011-07-23', '1994-06-06', 'PATAN', 'MALE', 'KHAMAR SHAILESHKUMAR AMBALAL', 'FATHER', 'NA', 'BUSINESS', '500000', 'DAIMOND TRAMSPORT,PVT.DESSA.', 168, 385535, 'Salvivado,Patola sali,Patan-384265,', 9, 9904868509, 'archit.khamar@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9904868509),
(209, 'MR.', '33', '23246', '110980106018', 11061016, 'LALIT KUMAR', 'UMEDBHAI', 'PATEL', 'UMEDBHAI', 'SUSILABEN', 'HOME', '2011-07-21', '1994-03-17', 'PALANPUR', 'MALE', 'PATEL UMEDBHAI BHIKHABHAI', 'FATHER', 'NA', 'FARMER', '60000', 'JUNA LAXMIPURA STREET-5,TA-PALANPUR', 168, 385001, 'Juna Laxmipura, Street-5, Ta.palanpur, Di.B.K-385001', 9, 9924571913, 'lalit.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9904217016),
(210, 'MISS', '22', '23425', '110980106019', 11061017, 'DOLIBEN', 'PRAHLADBHAI', 'PANDYA', 'PRAHLADBHAI', 'RANJANBEN', 'HOME', '2011-08-18', '1993-06-23', 'PALANPUR', 'FEMALE', 'PANDYA PRAHLADBHAI DALPATRAM', 'FATHER', 'B.SC, B.Ed, D.D.Ed.', 'SERVICE', '336371', 'MA SHRAVAN VANI  SCHOOL, FOR THE HEARING IMPAIRED, MAMTA MANDIR, PALANPUR', 130, 385001, '32, Chitrakut Nagar, Ganeshpura Road. Palanpur', 2742252586, 9427263693, 'doli.pandya@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9427415582),
(211, 'MR.', '36', '23811', '110980106020', 11061018, 'PAVAN KUMAR', 'KANTILAL', 'PATEL', 'KANTILAL', 'KANTABEN', 'HOME', '2011-07-21', '1994-01-31', 'PATAN', 'MALE', 'PATEL KANTILAL JETHALAL', 'FATHER', 'SSC', 'FARMER', '50000', 'PATAN', 168, 384265, 'Jalchowk Uncho Mahad, Patan, 384265', 9, 9727313477, 'pavan.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9727313477),
(212, 'MR.', '5', '23816', '110980106021', 11061019, 'FARUKBHAI', 'MAHMADSHABIR', 'CHHIPA', 'MAHMADSHABIR', 'NOORJAHABANU', 'HOME', '2003-08-11', '1990-01-06', 'CHHAPI', 'MALE', 'CHHIPA MAHMADSHABIR', 'FATHER', 'NA', 'BUSINESS', '40000', 'Madni Mahhola, Lathi Bazar, At&Po Chhapi Ta-Vadgam, Chhapi', 168, 385210, 'Madni Mahhola, Lathi Bazar, At&Po Chhapi Ta-Vadgam, Chhapi', 9, 9979057285, 'faruk.chhipa@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9428675185),
(213, 'MR.', '1', '12935', '110980106022', 11061020, 'AKSHAYKUMAR', 'VAGHJIBHAI', 'CHAUDHARY', 'VAGHJIBHAI', 'HIRABEN', 'HOME', '2011-07-23', '1993-08-31', 'MEHSANA', 'MALE', 'CHAUDHARY VAGHJIBHAI GANESHBHAI', 'FATHER', 'B.COM', 'NA', '40000', 'NA', 168, 385210, 'At.Bharkawada, Ta. Vadgam, Dist.B.K.385210', 2739271376, 9723415525, 'akshay.chaudhary@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7814008875),
(214, 'MR.', '41', '23892', '110980106023', 11061021, 'VIJAY', 'BHAKTIBHAI', 'PATEL', 'BHAKTIBHAI', 'SAVITABEN', 'HOME', '2002-08-11', '1992-10-15', 'SIDHPUR', 'MALE', 'PATEL BHAKTIBHAI HARGOVANDAS', 'FATHER', 'GRADUATE', 'BUSINESS', '250000', 'NEAR SIDHARTH HOTEL, G.M.S., TAVADIA CHAR RASTA, SIDHPUR', 151, 384151, '115/ Sarasvati Society, Sidhpur. 384151', 2767220366, 9427683876, 'vijay.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9428663566),
(215, 'MR.', '21', '24259', '110980106024', 11061022, 'HITESHKUMAR', 'SANTIBHAI', 'PANCHASARA', 'SANTIBHAI', 'SANTABEN', 'HOME', '2011-07-21', '1993-07-14', 'BHATAVADA', 'MALE', 'PANCHASARA SHANTIBHAI NARASHIHBHAI', 'FATHER', 'NA', 'FARMER', '60000', 'BATAVASA', 168, 385010, 'Batawada Chitrasani amirgadh, Di.B.K-385010', 9, 9925635251, 'hitesh.panchasara@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9909264560),
(216, 'MR.', '31', '24312', '110980106025', 11061023, 'KISHAN KUMAR', 'JITENDRABHAI', 'PATEL', 'JITENDRABHAI', 'RAMILABEN', 'HOME', '2011-07-20', '1994-04-08', 'KAHODA', 'MALE', 'PATEL JITENDRABHAI DHUKABHAI', 'FATHER', 'NA', 'FARMER', '35000', 'SARVODYA HIGH SCHOOL, KAHODA', 168, 8, 'Sarvodaya paru, At&po.Kahoda, ta.unjha,Di.mehsana-384130', 9, 9898208435, 'kishan.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9429730705),
(217, 'MR.', '35', '24333', '110980106026', 11061024, 'PARTH KUMAR', 'PRAKASHBHAI', 'PATEL', 'PRAKASHBHAI', 'ANNPURNABEN', 'HOME', '2003-08-11', '1994-07-15', 'KUVARA', 'MALE', 'PATEL PRAKASHBHAI BABULAL', 'FATHER', 'ITI WITH ELECTRICAL', 'SERVICE', '235077', 'MANEKPURA 66 KV 5/5 AT MANEKPURA', 168, 8, '41/ Sayog Banglows Akesh Fatak, Palanpur', 9, 9979321001, 'parth.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9979321001),
(218, 'MR.', '26', '24398', '110980106027', 11061025, 'CHIRAGBHAI', 'SHAILESHBHAI', 'PATEL', 'SHAILESHBHAI', 'TARABEN', 'HOME', '2002-08-11', '1993-05-17', 'BRAHMANWADA', 'MALE', 'PATEL SHAILESHBHAI GANGARAM', 'FATHER', '4 PASS', 'FARMER', '20000', 'BRAHMANWADA, TA-UNJHA, DIST-MEHSANA,', 168, 384215, 'Agnashiya Paru, Brahmanwada,  Ta. Unjha, Dist. Mehsana', 9, 9909128167, 'chirag.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9909128167),
(219, 'MR.', '34', '24556', '110980106028', 11061026, 'MAULIK KUMAR', 'ARVINDBHAI', 'PATEL', 'ARVINDBHAI', 'ASHABEN', 'HOME', '2011-07-20', '1993-09-16', 'UNJHA', 'MALE', 'PATEL ARVINDBHAI NARAYANDAS', 'FATHER', 'NA', 'BUSINESS', '80000', 'BALALJI ENTERPRISE,   VISHNAGAR, UNJHA', 168, 384170, '36,Deep ganga society, Nr. Panchsil society,unjha-384170', 9, 9898084084, 'maulik.patel@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9725572782),
(220, 'MR.', '29', '24778', '110980106029', 11061027, 'HARSHKUMAR', 'MAHESHBHAI', 'PATEL', 'MAHESHBHAI', 'RAMILABEN', 'HOME', '2011-07-20', '1994-11-18', 'UNJHA', 'MALE', 'PATEL MAHESHBHAI MAFTLAL', 'FATHER', 'NA', 'SERVICE', '84000', 'MAHILA COLLEGE', 168, 384170, 'Navo Madh, Ratna Para, Nr. Unjha', 9, 9426313565, 'harsh.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7383460660),
(221, 'MR.', '2', '24857', '110980106030', 11061028, 'NIKUNJKUMAR', 'MANUBHAI', 'CHAUDHARY', 'MANUBHAI', 'RATANBHAI', 'HOME', '2002-08-11', '1994-05-02', 'PALANPUR', 'MALE', 'CHAUDHARY MANUBHAI GULBABHAI', 'FATHER', 'M.Sc.(AGRI)', 'Govt.Service', '600000', 'C.P.COLLEGE OF AGRICULTURE,S.D.AGRICILTURAL UNIVERSITY,SARDARKRUSHINAGAR', 168, 385506, '48, Ashirvad Banglow, Nr. Kisan Oil Mill, Palanpur', 2748278414, 9925546627, 'nikunj.chaudhary@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9408301626);
INSERT INTO `student_info` (`student_id`, `title`, `student_roll_no`, `student_merit_no`, `student_enroll_no`, `student_gr_no`, `student_first_name`, `student_middle_name`, `student_last_name`, `student_father_name`, `student_mother_name`, `student_living_status`, `student_adm_date`, `student_dob`, `student_birthplace`, `student_gender`, `student_guardian_name`, `student_guardian_relation`, `student_guardian_qualification`, `student_guardian_occupation`, `student_guardian_income`, `student_guardian_occupation_address`, `student_guardian_occupation_city`, `student_guardian_city_pin`, `student_guardian_home_address`, `student_guardian_phoneno`, `student_guardian_mobile`, `student_email_id_1`, `student_email_id_2`, `student_bloodgroup`, `student_tally_id`, `student_created_by`, `student_creation_date`, `student_mobile_no`) VALUES
(222, 'MR.', '27', '25251', '110980106031', 11061029, 'HARDIKKUMAR', 'BABUBHAI', 'PATEL', 'BABUBHAI', 'SAVITABEN', 'HOME', '2011-07-21', '1994-01-01', 'UNJHA', 'MALE', 'PATEL BABUBHAI', 'FATHER', 'NA', 'FARMER', '20000', 'UNAVA, AT-PO-UNJHA, DIST-MEHSANA', 168, 384160, 'Kamaniya paru, Umiyanagar society, Unava, At&po&Ta.Unjha, Di.mehsana-384160', 9, 9428663713, 'hardik.patel@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9428663713),
(223, 'MR.', '30', '35283', '110980106032', 11061030, 'KAUSHAL', 'RANCHHODBHAI', 'PATEL', 'RANCHHODBHAI', 'HASUMATIBEN', 'HOME', '2011-07-22', '1994-03-22', 'PATAN', 'MALE', 'PATEL RANCHHODBHAI TULSHIBHAI', 'FATHER', 'NA', 'FARMER', '16000', 'PATAN', 168, 384265, 'Ram sala ni pol, Chachariya Lalgate, patan-384265', 9, 9624497282, 'kaushal.patel@hansabacollege.com', NULL, 'A+', 0, 2, '2012-07-27 17:26:04', 9913609148),
(224, 'MR.', '48', '25489', '110980106034', 11061032, 'SANJAYSINH', 'MANSINH', 'RAJPUT', 'MANSINH', 'ENDUBEN', 'HOME', '2011-07-22', '1993-05-08', 'BHTIYAVASNA', 'MALE', 'RAJPUT MANSINH PRATAPJI', 'FATHER', 'PTC', 'TEACHER', '300000', 'VAYAD,TA-DIST-PATAN', 135, 384285, '18,Hari darshan Society, TB Tran Rasta, patan-384265', 9, 9925479002, 'sanjaysinh.rajput@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9978412312),
(225, 'MR.', '17', '25634', '110980106035', 11061033, 'FARHAN', 'RAFIKBHAI', 'MANSURI', 'RAFIKBHAI', 'FIRDOS BANU', 'HOME', '2011-07-21', '1993-12-04', 'MUMBAI', 'MALE', 'MANSURI RAFIKBHAI V.', 'FATHER', 'ITI', 'JOB', '24000', 'NA', 168, 8, '11,Garib nawaz society, N/H Masjid nagalpur, mehsana-384002', 9, 9033523034, 'farhan.mansuri@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9033523034),
(226, 'MR.', '7', '26672', '110980106036', 11061034, 'NIRAVKUMAR', 'AMRUTBHAI', 'DESAI', 'AMRUTBHAI', 'AMATHIBEN', 'HOME', '2011-07-21', '1994-08-15', '0', 'MALE', 'DESAI AMRUTBHAI ARJANBHAI', 'FATHER', 'MA. Bed.', 'TEACHER', '475000', '49,gurukrupa society, Nr.Sun Nagar Society, Sidhpur-384151', 168, 384151, '49,gurukrupa society, Nr.Sun Nagar Society, Sidhpur-384151', 9, 9879542925, 'nirav.desai@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9879540925),
(227, 'MR.', '43', '27351', '110980106037', 11061035, 'VISHALBHAI', 'SONABHAI', 'PRAJAPATI', 'SONABHAI', 'PARUBEN', 'HOME', '2003-08-11', '1994-05-13', 'PALANPUR', 'MALE', 'PRAJAPATI SONABHAI PIRABHAI', 'FATHER', '8 PASS', 'BUSINESS', '12000', 'SHREE SHANKITNAAR SOCIETY,PALANPUR', 130, 385001, 'Shree Shakti Nagar Society, Shukh Bag Road, Palanpur', 9, 9687712872, 'vishal.prajapati@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9909080112),
(228, 'MR.', '56', '27537', '110980106038', 11061036, 'AMUMIYA', 'GULUBHAI', 'SINDHI', 'GULUBHAI', 'JUBEDABEN', 'HOME', '2011-07-23', '1992-12-27', 'MEHSANA', 'MALE', 'SINDHI GULUBHAI FAKIRMAHMAD', 'FATHER', 'NA', 'FARMER', '5', 'FAJIPU,KHERALU', 100, 8, 'To:Gatipur,Po:Nanivada, Ta:Kheralu,DI:Mehsana-384325,', 9, 9879989547, 'amumiya.sindhi@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9624862785),
(229, 'MR.', '9', '28109', '110980106039', 11061037, 'PRAKASHKUMAR', 'MAFAJI', 'GELOT', 'MAFAJI', 'DHIDIBEN', 'HOME', '2005-08-11', '1993-10-08', 'DEESA', 'MALE', 'GELOT MAFAJI DARGAJI', 'FATHER', '5 PASS', 'FARMER', '10000', 'Genaji Goliya, Ta- Deesa,BK', 168, 8, 'To:Gatipur,Po:Nanivada, Ta:Kheralu,DI:Mehsana-384325,', 9, 9723573572, 'prakash.gelot@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9586056087),
(230, 'MR.', '52', '28280', '110980106040', 11061038, 'RAVI', 'ATULKUMAR', 'SALVI', 'ATULKUMAR', 'DAHIBEN', 'HOME', '2011-07-22', '1993-10-12', 'KANODAR', 'MALE', 'SALVI ATULKUMAR NARSHINHBHAI', 'FATHER', 'MA,BA, DRAFTMAN VIVIL', 'SERVICE', '15000', 'MANDVI ROAD,MUDRA', 122, 8, 'Ashok Society, Mansarovar road, palanpur-385001', 9, 9825433960, 'ravi.salvi@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9638638596),
(231, 'MR.', '58', '28477', '110980106041', 11061039, 'METAJI', 'JAGAJI', 'THAKOR', 'JAGAJI', 'DHARUBEN', 'HOME', '2011-08-17', '1994-08-30', 'THAKARASAN', 'MALE', 'THAKOR JAGAJI NATHAJI', 'FATHER', '4 PASS', 'FARMER', '10000', 'TA-THAKARASAN, FARM HOUSE,TA-SIDHPUR,DIST-PATAN', 135, 8, 'At & PoThakerasan, Dist. Patan', 9, 9978307597, 'metaji.thakor@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9925168196),
(232, 'MR.', '4', '1', '110980106042', 11061040, 'ANAND', 'RAMJIBHAI', 'CHAUHAN', 'RAMJIBHAI', 'RAJIBEN', 'HOME', '2011-08-17', '1991-12-18', 'KALYANA', 'MALE', 'CHAUHAN RAMJIBHAI KHEMABHAI', 'FATHER', 'NA', 'FARMER', '9000', 'AT-POST-KALYANA,DIST-PATAN,TA-SIDHPUR', 168, 384265, 'At & Po: Kalyana, Sidhpur, Dist. Patan', 9, 9728823405, 'anand.chauhan@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9725158053),
(233, 'MR.', '50', '30344', '110980106043', 11061041, 'AKASHKUMAR', 'VINODBHAI', 'RATHOD', 'VINODBHAI', 'TARABEN', 'HOME', '2011-07-20', '1994-06-06', 'PALANPUR', 'MALE', 'RATHOD VINODBHAI MOHANBHAI', 'FATHER', 'SSC', 'BUSINESS', '150000', '13, HINGLAJNAAR SOCIETY, NENAVA ROAD, DHANA,BK.', 51, 385310, '13, hinglajnagar society,Nr.Vinayak school, Ninava Road, Dhanera.(B.K)385310', 9, 9998158667, 'akash.rathod@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 7600183091),
(234, 'MR.', '3', '12965', '110980106045', 11061043, 'SAVANKUMAR', 'SARDARBHAI', 'CHAUDHARY', 'SARDARBHAI', 'DIVABEN', 'HOME', '2011-07-23', '1993-09-29', 'JAGANA', 'MALE', 'CHAUDHARY  SARDARBHAI PARTHIBHAI', 'FATHER', 'NA', 'FARMER', '40000', 'JAGANA', 168, 385011, 'At :Jagana,Ta:Palanpur,Aathmani Sarni Chaudhary Vas,Ta & Di:Palanpur-385011', 9, 9925636511, 'savan.chaudhary@hansabacollege.com', NULL, 'O-', 0, 2, '2012-07-27 17:26:04', 9429087227),
(235, 'MR.', '57', '34744', '110980106046', 11061044, 'JAY', 'MUKESHKUMAR', 'SUTHAR', 'MUKESHKUMAR', 'DIPTIBEN', 'HOME', '2011-07-21', '1992-01-22', 'ANAND', 'MALE', 'SUTHAR  MUKESHKUMAR H.', 'FATHER', 'B.COM', 'BUSINESS', '5', '3 SHASHTRI NAGAR SOCIETY, T.B. HOSPITAL ROAD, MEHSANA-2', 168, 384002, '3/Shashtri nagar Society, TB Hospital Road, Mehsana-384002', 9, 9925699002, 'jay.suthar@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9925699002),
(236, 'MR.', '55', '38834', '110980106047', 11061045, 'MITESH KUMAR', 'HARSHADKUMAR', 'SIDHPURA', 'HARSHADKUMAR', 'USHABEN', 'HOME', '2011-07-23', '1994-03-24', 'SIDHPUR', 'MALE', 'SIDHPURA HARSHADBHAI  HIRALAL', 'FATHER', 'BA,LLB', 'LIC OF INDIA', '300000', 'P.P.PATEL PARK, OPP.S.T. STATION, CHANASMA', 168, 8, 'Nava Vankarvas, Sidhpur,Ta;Sidhpur,Di:Patan-384151', 9, 9925930485, 'mitesh.sidhpura@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9925930485),
(237, 'MR.', '6', '23496', '110980106048', 11061046, 'BHARATSINH', 'NAVGHANJI', 'DABHI', 'NAVGHANJI', 'KAMLABEN', 'HOME', '2011-08-24', '1992-06-16', 'KHODANA', 'MALE', 'DABHI  NAVAGHANJI MANAJI', 'FATHER', 'NA', 'NA', '5', 'At&po.Khodana, Ta&Dist.Patan', 168, 8, 'At&po.Khodana, Ta&Dist.Patan', 9, 9825504444, 'bharatsinh.dabhi@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9925844000),
(238, 'MR.', '47', 'GB26048', '110980106049', 11061047, 'JAYDIPSINH', 'DASHARATHJI', 'RAJPUT', 'DASHARATHJI', 'VIMLABEN', 'HOME', '2005-08-11', '1994-05-04', 'KAHODA', 'MALE', 'RAJPUT DASHARATHJI DASHARATHJI', 'FATHER', '7 PASS', 'FARMER', '10000', 'BAROT VAS, KAHODA, TA-UNJHA, DIST-MEHSANA', 168, 384130, 'Barot vas,At&po.kahoda, Ta.Unjha, Dist.Mehsana', 2767285331, 9913303097, 'jaydipsinh.rajput@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9913303097),
(239, 'MR.', '59', '27198', '110980106050', 11061048, 'HIMALAYA', 'MUKESHKUMAR', 'TRIVEDI', 'MUKESHKUMAR', 'SHILPABEN', 'HOME', '2008-08-11', '1993-04-12', 'SIDHPUR', 'MALE', 'TRIVEDI MUKESHBHAI TRIVEDI', 'FATHER', 'B.COM', 'FARMER', '350000', 'DENA GUJARAT, GRAMIN BANK,UNJHA', 165, 8, 'Uplicheri, Sadacharaj ni khadki, Sidhpur, Ta.Sidhpur, Dist.Patan', 9, 9326101221, 'himalaya.trivedi@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9408866825),
(240, 'MR.', '15', 'GB 27532', '110980106051', 11061049, 'SHARUKHKHAN', 'MEHEBUBKHAN', 'KUMATIYA', 'MEHEBUBKHAN', 'AFSANA BANU', 'HOME', '2005-08-11', '1994-01-24', 'SIDHPUR', 'MALE', 'KUMATIYA MAHEBUBKHAN KESHARKHAN', 'FATHER', 'SSC', 'BUSINESS', '45000', 'AKTA JEEP GAREJ, HIGHWAY ,PALANPUR', 130, 385001, 'Maher Society, Nr.Jampura School, Palanpur, Dist.B.K', 9, 8140055345, 'sharukhkhan.kumatiya@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 8690007483),
(241, 'MR.', '23', '39132', '110980106052', 11061050, 'HABBAB', 'MO.ASHARAFBHAI', 'PARBADIYA', 'MO.ASHARAFBHAI', 'MEHMUDABEN', 'HOME', '2009-08-11', '1994-01-02', 'NAVAVAS', 'MALE', 'PARBADIYA MOASHRAFBHAI', 'FATHER', '8 PASS', 'FARMER', '50000', 'AT-NAVAVAS, PO-KALEJA, TA-VADGAM, DI-BANASKANTA', 168, 385421, 'At.Navavas, Po.Kaleda, Ta.Vadgam, Dist.B.K', 9, 9426895524, 'habbab.parbadiya@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9426895524),
(242, 'MR.', '46', 'GB35821', '110980106053', 11061051, 'VARUN', 'HARESHBHAI', 'RAJGOR', 'HARESHBHAI', 'SHARDABEN', 'HOME', '2005-08-11', '1991-06-17', 'BHILDI', 'MALE', 'RAJGOR HARESHBHAI VAGHJIBHAI', 'FATHER', 'SSC', 'SERVICE', '400000', 'BANK OF BAROD, DHANERA BRANCH, NEAR BUSSTAND, DHANERA', 51, 8, '14,Gurukrupa Society, B/h Pushpavati Society, Nr.Angola Road, Hanuman Tekari, Delhi National Highway', 9, 9879303303, 'varun.rajgor@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8690490624),
(243, 'MR.', '11', 'GB 36697', '110980106054', 11061052, 'JAGDISHKUMAR', 'BHOLABHAI', 'JOSHI', 'BHOLABHAI', 'PASIBEN', 'HOME', '2011-08-16', '1993-08-20', 'DEESA', 'MALE', 'JOSHI BHOLABHAI  NATHUBHAI', 'FATHER', 'M.COM,B.COM', 'JOB', '120000', 'Marketting Office,Dist-Banaskantha And Patan', 135, 8, '26,Krishna Park Part-1, opp-Subham party plot, Patan Highway, Deesa', 9, 9825000548, 'jagdish.joshi@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9898669199),
(244, 'MR.', '37', '36941', '110980106055', 11061053, 'RAJ KUMAR', 'KIRTIKUMAR', 'PATEL', 'KIRTIKUMAR', 'PREMLATTABEN', 'HOME', '2005-08-11', '1993-09-24', 'DEESA', 'MALE', 'PATEL KIRTIBHAI KANTILAL', 'FATHER', 'SSC', 'BUSINESS', '250000', 'DEESA CHAR RASTA, DHANERA ROAD', 168, 385535, '31,Ankit Society, Kant Road, Deesa', 9, 9426279080, 'raj.patel@hansabacollege.com', NULL, 'O+', 0, 2, '2012-07-27 17:26:04', 9737898391),
(245, 'MR.', '20', 'GB38546', '110980106056', 11061054, 'ALPESHKUMAR', 'KISHORBHAI', 'PANCHAL', 'KISHORBHAI', 'GEETABEN', 'HOME', '2011-08-16', '1994-03-30', 'DEESA', 'MALE', 'PANCHAL KISHORBHAI BABALDAS', 'FATHER', 'NA', 'NA', '48000', 'PANCHAL MOTORS, PANJARAPLL SHOPPING CENTER  ,DESSA', 168, 385535, 'A 98, Tirupati Township, Ranapur Road, Deesa, (B.K)', 2744641999, 9726026200, 'alpesh.panchal@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9825226620),
(246, 'MR.', '51', 'GB 38979', '110980106057', 11061055, 'AKIB HUSEN', 'YUNUSALI', 'SAIYED', 'YUNUSALI', 'ARAFANABANU', 'HOME', '2009-08-11', '1994-04-27', 'GANVADA', 'MALE', 'SAIYED YUSUFSALI AMADUMIYA', 'FATHER', 'B.Ed.', 'PRINCIPAL', '400000', 'KOHINUR SOCIETY, NEAR TAHERPURA, SIDHPUR.', 151, 384151, 'Kohinur Society, Nr. Taherpura, Sidhpur, Dist.Patan', 9, 9825126900, 'akibhusen.saiyed@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9825126900),
(247, 'MR.', '49', 'GB39097', '110980106058', 11061056, 'SIDDHARTHKUMAR', 'MAHENDRAKUMAR', 'RAJPUT', 'MAHENDRAKUMAR', 'INDUBEN', 'HOME', '2005-08-11', '1993-09-29', 'PATAN', 'MALE', 'RAJPUT MAHENDRAKUMAR LAXMANSINH', 'FATHER', 'B.SC, B.Ed, D.D.Ed.', 'SERVICE', '300000', 'GOKUL REFOILS & SOLVENT LTD.,GOKUL HOUSE, 43 SHREEMALI SOCIETY, NAVRANGPURA,AHMEDABAD.', 3, 380009, '39,Swapn Srusti Society, B/h TV Kendra, Nr.Bhagvati Banglows, Dairy Road, Palanpur', 9, 9909160108, 'siddharth.rajput@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9586860455),
(248, 'MR.', '10', '39424', '110980106059', 11061057, 'HARDIKKUMAR', 'RAMABHAI', 'JAGANAIYA', 'RAMABHAI', 'RAMILABEN', 'HOME', '2005-08-11', '1993-08-25', 'RAMPURA', 'MALE', 'JAGANIYA RAMANBHAI UMABHAI', 'FATHER', 'SSC', 'FARMER', '20000', 'At&po.Changwada, Ta.Vadgam, Dist.B.K', 168, 385520, 'At&po.Changwada, Ta.Vadgam, Dist.B.K', 9, 8140974422, 'hardik.jaganaiya@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9909815960),
(249, 'MR.', '16', 'GB39783', '110980106060', 11061058, 'RAJKUMAR', 'GANSHYAMBHAI', 'MAHESHVARI', 'GANSHYAMBHAI', 'KAUSLYABEN', 'HOME', '2008-08-11', '1993-01-06', 'IKBALGADH', 'MALE', 'MAHESAVARI GANSHYAMBHAI TRIKAMDAS', 'FATHER', 'HSC', 'PROVISION', '200000', 'MAIN MARKET, IKBALGADH', 168, 385113, 'Main Market, Iqbalgadh, 385135', 9, 9429710153, 'raj.maheshvari@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 8905207231),
(250, 'MR.', '12', 'GB40083', '110980106061', 11061059, 'BHAVESHKUMAR', 'KESARBHAI', 'KAREN', 'KESARBHAI', 'RAMABEN', 'HOME', '2005-08-11', '1993-12-15', 'GADH', 'MALE', 'KAREN KESHARBHAI', 'FATHER', 'SSC', 'FARMER', '25000', 'Ambika Street, At.Gadh, Ta.Palanpur, Dist.B.K', 168, 385015, 'Ambika Street, At.Gadh, Ta.Palanpur, Dist.B.K', 9, 9429361225, 'bhavesh.karen@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9429361225),
(251, 'MR.', '18', '16632', '110980106062', 11061060, 'SAMBHAV', 'SUNILBHAI', 'MEHTA', 'SUNILBHAI', 'SONALBEN', 'HOME', '2011-08-30', '1993-07-13', 'SIDHPUR', 'MALE', 'MEHTA SUNILBHAI MANILAL', 'FATHER', 'B.COM', 'BUSINESS', '100000', 'LAXMI VILAS COMPLEX, GHOD ROAD, SURAT', 156, 8, 'Kalpataru Banglow, Nr LIC Office,Sidhpur, Dist-Patan', 9, 9016187250, 'sambhav.mehta@hansabacollege.com', NULL, 'B+', 0, 2, '2012-07-27 17:26:04', 9016187250),
(252, 'MR.', '61', '36356', '110980106063', 110610270, 'DINESHKUMAR', 'HIRJIBHAI', 'VALAGOT', 'HIRJIBHAI', 'PURIBEN', 'HOME', '2003-09-11', '1992-01-22', 'PATAN', 'MALE', 'VALAGOT HIRJIBHAI HEMRAJBHAI', 'FATHER', '8 PASS', 'FARMER', '18000', 'AT & POST- TAARVADA, TA-PALANPUR', 130, 8, 'A/7, Green Park Society, Ahmedabad Highway, Palanpur, (B.K)', 9, 942764205, 'dinesh.valagot@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9427260351),
(253, 'MR.', '62', '28162', '110980106064', 110610271, 'KAPILKUMAR', 'RAJESHBHAI', 'TRIVEDI', 'RAJESHBHAI', 'ALPABEN', 'HOME', '2011-09-16', '1993-08-09', 'DEESA', 'MALE', 'TRIVEDI RAJESHKUMAR SONARAM', 'FATHER', 'GRADUATE', 'BUSINESS', '130000', 'AMBIKA NAGAR,DEESA', 168, 385535, 'Ambikanagar, B/h. Dimple Tokiz, Deesa.', 9, 9429309696, 'kapil.trivedi@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9898919909),
(254, 'MR.', '63', '500231', '110980106065', 110610273, 'GANAPATBHAI', 'JIVRAMBHAI', 'GELOT', 'JIVRAMBHAI', 'SITABEN', 'HOSTEL', '2011-09-16', '1992-08-17', 'DEESA', 'MALE', 'GELOT GANAPATBHAI JIVRAMBHAI', 'FATHER', 'NA', 'NA', '5', 'MAHADEVIYA, IKABALGADH,TA- AMIRGADH', 168, 8, 'Mahadeviya Umarcot, Po.Jethi, Amirgadh.', 9, 95743551966, 'ganapat.gelot@hansabacollege.com', NULL, 'AB+', 0, 2, '2012-07-27 17:26:04', 9574886058);

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
  `student_marks_type_organization_id` int(3) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=256 ;

--
-- Dumping data for table `student_photos`
--

INSERT INTO `student_photos` (`student_photos_id`, `student_photos_desc`, `student_photos_path`) VALUES
(1, NULL, 'no_image'),
(2, NULL, 'no_image'),
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
(33, NULL, 'no_image'),
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
(74, NULL, 'no_image'),
(75, NULL, 'no_image'),
(76, NULL, 'no_image'),
(77, NULL, 'no_image'),
(78, NULL, 'no_image'),
(79, NULL, 'no_image'),
(80, NULL, 'no_image'),
(81, NULL, 'no_image'),
(82, NULL, 'no_image'),
(83, NULL, 'no_image'),
(84, NULL, 'no_image'),
(85, NULL, 'no_image'),
(86, NULL, 'no_image'),
(87, NULL, 'no_image'),
(88, NULL, 'no_image'),
(89, NULL, 'no_image'),
(90, NULL, 'no_image'),
(91, NULL, 'no_image'),
(92, NULL, 'no_image'),
(93, NULL, 'no_image'),
(94, NULL, 'no_image'),
(95, NULL, 'no_image'),
(96, NULL, 'no_image'),
(97, NULL, 'no_image'),
(98, NULL, 'no_image'),
(99, NULL, 'no_image'),
(100, NULL, 'no_image'),
(101, NULL, 'no_image'),
(102, NULL, 'no_image'),
(103, NULL, 'no_image'),
(104, NULL, 'no_image'),
(105, NULL, 'no_image'),
(106, NULL, 'no_image'),
(107, NULL, 'no_image'),
(108, NULL, 'no_image'),
(109, NULL, 'no_image'),
(110, NULL, 'no_image'),
(111, NULL, 'no_image'),
(112, NULL, 'no_image'),
(113, NULL, 'no_image'),
(114, NULL, 'no_image'),
(115, NULL, 'no_image'),
(116, NULL, 'no_image'),
(117, NULL, 'no_image'),
(118, NULL, 'no_image'),
(119, NULL, 'no_image'),
(120, NULL, 'no_image'),
(121, NULL, 'no_image'),
(122, NULL, 'no_image'),
(123, NULL, 'no_image'),
(124, NULL, 'no_image'),
(125, NULL, 'no_image'),
(126, NULL, 'no_image'),
(127, NULL, 'no_image'),
(128, NULL, 'no_image'),
(129, NULL, 'no_image'),
(130, NULL, 'no_image'),
(131, NULL, 'no_image'),
(132, NULL, 'no_image'),
(133, NULL, 'no_image'),
(134, NULL, 'no_image'),
(135, NULL, 'no_image'),
(136, NULL, 'no_image'),
(137, NULL, 'no_image'),
(138, NULL, 'no_image'),
(139, NULL, 'no_image'),
(140, NULL, 'no_image'),
(141, NULL, 'no_image'),
(142, NULL, 'no_image'),
(143, NULL, 'no_image'),
(144, NULL, 'no_image'),
(145, NULL, 'no_image'),
(146, NULL, 'no_image'),
(147, NULL, 'no_image'),
(148, NULL, 'no_image'),
(149, NULL, 'no_image'),
(150, NULL, 'no_image'),
(151, NULL, 'no_image'),
(152, NULL, 'no_image'),
(153, NULL, 'no_image'),
(154, NULL, 'no_image'),
(155, NULL, 'no_image'),
(156, NULL, 'no_image'),
(157, NULL, 'no_image'),
(158, NULL, 'no_image'),
(159, NULL, 'no_image'),
(160, NULL, 'no_image'),
(161, NULL, 'no_image'),
(162, NULL, 'no_image'),
(163, NULL, 'no_image'),
(164, NULL, 'no_image'),
(165, NULL, 'no_image'),
(166, NULL, 'no_image'),
(167, NULL, 'no_image'),
(168, NULL, 'no_image'),
(169, NULL, 'no_image'),
(170, NULL, 'no_image'),
(171, NULL, 'no_image'),
(172, NULL, 'no_image'),
(173, NULL, 'no_image'),
(174, NULL, 'no_image'),
(175, NULL, 'no_image'),
(176, NULL, 'no_image'),
(177, NULL, 'no_image'),
(178, NULL, 'no_image'),
(179, NULL, 'no_image'),
(180, NULL, 'no_image'),
(181, NULL, 'no_image'),
(182, NULL, 'no_image'),
(183, NULL, 'no_image'),
(184, NULL, 'no_image'),
(185, NULL, 'no_image'),
(186, NULL, 'no_image'),
(187, NULL, 'no_image'),
(188, NULL, 'no_image'),
(189, NULL, 'no_image'),
(190, NULL, 'no_image'),
(191, NULL, 'no_image'),
(192, NULL, 'no_image'),
(193, NULL, 'no_image'),
(194, NULL, 'no_image'),
(195, NULL, 'no_image'),
(196, NULL, 'no_image'),
(197, NULL, 'no_image'),
(198, NULL, 'no_image'),
(199, NULL, 'no_image'),
(200, NULL, 'no_image'),
(201, NULL, 'no_image'),
(202, NULL, 'no_image'),
(203, NULL, 'no_image'),
(204, NULL, 'no_image'),
(205, NULL, 'no_image'),
(206, NULL, 'no_image'),
(207, NULL, 'no_image'),
(208, NULL, 'no_image'),
(209, NULL, 'no_image'),
(210, NULL, 'no_image'),
(211, NULL, 'no_image'),
(212, NULL, 'no_image'),
(213, NULL, 'no_image'),
(214, NULL, 'no_image'),
(215, NULL, 'no_image'),
(216, NULL, 'no_image'),
(217, NULL, 'no_image'),
(218, NULL, 'no_image'),
(219, NULL, 'no_image'),
(220, NULL, 'no_image'),
(221, NULL, 'no_image'),
(222, NULL, 'no_image'),
(223, NULL, 'no_image'),
(224, NULL, 'no_image'),
(225, NULL, 'no_image'),
(226, NULL, 'no_image'),
(227, NULL, 'no_image'),
(228, NULL, 'no_image'),
(229, NULL, 'no_image'),
(230, NULL, 'no_image'),
(231, NULL, 'no_image'),
(232, NULL, 'no_image'),
(233, NULL, 'no_image'),
(234, NULL, 'no_image'),
(235, NULL, 'no_image'),
(236, NULL, 'no_image'),
(237, NULL, 'no_image'),
(238, NULL, 'no_image'),
(239, NULL, 'no_image'),
(240, NULL, 'no_image'),
(241, NULL, 'no_image'),
(242, NULL, 'no_image'),
(243, NULL, 'no_image'),
(244, NULL, 'no_image'),
(245, NULL, 'no_image'),
(246, NULL, 'no_image'),
(247, NULL, 'no_image'),
(248, NULL, 'no_image'),
(249, NULL, 'no_image'),
(250, NULL, 'no_image'),
(251, NULL, 'no_image'),
(252, NULL, 'no_image'),
(253, NULL, 'no_image'),
(254, NULL, 'no_image'),
(255, NULL, 'no_image');

-- --------------------------------------------------------

--
-- Table structure for table `student_sms_email_details`
--

CREATE TABLE IF NOT EXISTS `student_sms_email_details` (
  `student_sms_email_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(3) NOT NULL,
  `academic_period_id` int(3) NOT NULL,
  `academic_name_id` int(3) NOT NULL,
  `division_id` int(3) NOT NULL,
  `student_id` int(3) NOT NULL,
  `message_email_text` text NOT NULL,
  `email_sms_status` int(3) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` datetime NOT NULL,
  `shift_id` int(11) NOT NULL,
  `student_sms_email_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`student_sms_email_id`),
  KEY `fk_acdm_period` (`academic_period_id`),
  KEY `fk_acdm_name` (`academic_name_id`),
  KEY `fk_stu_sms_bid` (`branch_id`),
  KEY `fk_stu_sms_shiftid` (`shift_id`),
  KEY `fk_stu_sms_divid` (`division_id`),
  KEY `fk_stu_sms_stuid` (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `student_transaction_religion_id` int(2) DEFAULT NULL,
  `student_transaction_shift_id` int(2) NOT NULL,
  `student_transaction_languages_known_id` int(2) NOT NULL,
  `student_transaction_student_photos_id` int(5) NOT NULL,
  `student_transaction_division_id` int(2) DEFAULT NULL,
  `student_transaction_batch_id` int(2) DEFAULT NULL,
  `student_academic_term_period_tran_id` int(2) NOT NULL,
  `student_academic_term_name_id` int(11) NOT NULL,
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
  KEY `fk_std_photo` (`student_transaction_student_photos_id`),
  KEY `fk_std_term_period_id` (`student_academic_term_period_tran_id`),
  KEY `fk_std_term_name_id` (`student_academic_term_name_id`),
  KEY `fk_lan_id` (`student_transaction_languages_known_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=256 ;

--
-- Dumping data for table `student_transaction`
--

INSERT INTO `student_transaction` (`student_transaction_id`, `student_transaction_user_id`, `student_transaction_student_id`, `student_transaction_branch_id`, `student_transaction_category_id`, `student_transaction_organization_id`, `student_transaction_student_address_id`, `student_transaction_nationality_id`, `student_transaction_quota_id`, `student_transaction_religion_id`, `student_transaction_shift_id`, `student_transaction_languages_known_id`, `student_transaction_student_photos_id`, `student_transaction_division_id`, `student_transaction_batch_id`, `student_academic_term_period_tran_id`, `student_academic_term_name_id`) VALUES
(1, 3, 1, 2, 1, 1, 1, 11, 6, 1, 1, 1, 1, 2, NULL, 2, 11),
(2, 4, 2, 2, 1, 1, 2, 11, 1, 1, 1, 2, 2, 2, NULL, 2, 11),
(3, 5, 3, 2, 1, 1, 3, 11, 6, 1, 1, 3, 3, 2, NULL, 2, 11),
(4, 6, 4, 2, 1, 1, 4, 11, 6, 1, 1, 4, 4, 2, NULL, 2, 11),
(5, 7, 5, 2, 1, 1, 5, 11, 1, 1, 1, 5, 5, 2, NULL, 2, 11),
(6, 8, 6, 2, 1, 1, 6, 11, 1, 1, 1, 6, 6, 2, NULL, 2, 11),
(7, 9, 7, 2, 1, 1, 7, 11, 1, 1, 1, 7, 7, 2, NULL, 2, 11),
(8, 10, 8, 2, 1, 1, 8, 11, 1, 1, 1, 8, 8, 2, NULL, 2, 11),
(9, 11, 9, 2, 1, 1, 9, 11, 1, 1, 1, 9, 9, 2, NULL, 2, 11),
(10, 12, 10, 2, 1, 1, 10, 11, 1, 1, 1, 10, 10, 2, NULL, 2, 11),
(11, 13, 11, 2, 1, 1, 11, 11, 1, 1, 1, 11, 11, 2, NULL, 2, 11),
(12, 14, 12, 2, 1, 1, 12, 11, 1, 1, 1, 12, 12, 2, NULL, 2, 11),
(13, 15, 13, 2, 7, 1, 13, 11, 1, 1, 1, 13, 13, 2, NULL, 2, 11),
(14, 16, 14, 2, 7, 1, 14, 11, 1, 1, 1, 14, 14, 2, NULL, 2, 11),
(15, 17, 15, 2, 1, 1, 15, 11, 1, 1, 1, 15, 15, 2, NULL, 2, 11),
(16, 18, 16, 2, 1, 1, 16, 11, 1, 1, 1, 16, 16, 2, NULL, 2, 11),
(17, 19, 17, 2, 1, 1, 17, 11, 1, 1, 1, 17, 17, 2, NULL, 2, 11),
(18, 20, 18, 2, 1, 1, 18, 11, 1, 1, 1, 18, 18, 2, NULL, 2, 11),
(19, 21, 19, 2, 1, 1, 19, 11, 1, 1, 1, 19, 19, 2, NULL, 2, 11),
(20, 22, 20, 2, 1, 1, 20, 11, 1, 1, 1, 20, 20, 2, NULL, 2, 11),
(21, 23, 21, 2, 1, 1, 21, 11, 1, 2, 1, 21, 21, 2, NULL, 2, 11),
(22, 24, 22, 2, 1, 1, 22, 11, 1, 1, 1, 22, 22, 2, NULL, 2, 11),
(23, 25, 23, 2, 1, 1, 23, 11, 1, 1, 1, 23, 23, 2, NULL, 2, 11),
(24, 26, 24, 2, 1, 1, 24, 11, 1, 1, 1, 24, 24, 2, NULL, 2, 11),
(25, 27, 25, 2, 1, 1, 25, 11, 1, 1, 1, 25, 25, 2, NULL, 2, 11),
(26, 28, 26, 2, 1, 1, 26, 11, 1, 1, 1, 26, 26, 2, NULL, 2, 11),
(27, 29, 27, 2, 1, 1, 27, 11, 1, 1, 1, 27, 27, 2, NULL, 2, 11),
(28, 30, 28, 2, 1, 1, 28, 11, 1, 1, 1, 28, 28, 2, NULL, 2, 11),
(29, 31, 29, 2, 1, 1, 29, 11, 1, 1, 1, 29, 29, 2, NULL, 2, 11),
(30, 32, 30, 2, 1, 1, 30, 11, 1, 1, 1, 30, 30, 2, NULL, 2, 11),
(31, 33, 31, 2, 1, 1, 31, 11, 1, 1, 1, 31, 31, 2, NULL, 2, 11),
(32, 34, 32, 2, 7, 1, 32, 11, 1, 1, 1, 32, 32, 2, NULL, 2, 11),
(33, 35, 33, 2, 7, 1, 33, 11, 1, 1, 1, 33, 33, 2, NULL, 2, 11),
(34, 36, 34, 2, 7, 1, 34, 11, 1, 1, 1, 34, 34, 2, NULL, 2, 11),
(35, 37, 35, 2, 7, 1, 35, 11, 1, 1, 1, 35, 35, 2, NULL, 2, 11),
(36, 38, 36, 2, 7, 1, 36, 11, 1, 1, 1, 36, 36, 2, NULL, 2, 11),
(37, 39, 37, 2, 7, 1, 37, 11, 1, 1, 1, 37, 37, 2, NULL, 2, 11),
(38, 40, 38, 2, 7, 1, 38, 11, 1, 1, 1, 38, 38, 2, NULL, 2, 11),
(39, 41, 39, 2, 7, 1, 39, 11, 1, 1, 1, 39, 39, 2, NULL, 2, 11),
(40, 42, 40, 2, 7, 1, 40, 11, 1, 1, 1, 40, 40, 2, NULL, 2, 11),
(41, 43, 41, 2, 7, 1, 41, 11, 1, 1, 1, 41, 41, 2, NULL, 2, 11),
(42, 44, 42, 2, 7, 1, 42, 11, 1, 1, 1, 42, 42, 2, NULL, 2, 11),
(43, 45, 43, 2, 7, 1, 43, 11, 1, 1, 1, 43, 43, 2, NULL, 2, 11),
(44, 46, 44, 2, 7, 1, 44, 11, 1, 1, 1, 44, 44, 2, NULL, 2, 11),
(45, 47, 45, 2, 7, 1, 45, 11, 1, 1, 1, 45, 45, 2, NULL, 2, 11),
(46, 48, 46, 2, 7, 1, 46, 11, 1, 1, 1, 46, 46, 2, NULL, 2, 11),
(47, 49, 47, 2, 1, 1, 47, 11, 1, 2, 1, 47, 47, 2, NULL, 2, 11),
(48, 50, 48, 2, 1, 1, 48, 11, 1, 1, 1, 48, 48, 2, NULL, 2, 11),
(49, 51, 49, 2, 1, 1, 49, 11, 7, 1, 1, 49, 49, 2, NULL, 2, 11),
(50, 52, 50, 2, 1, 1, 50, 11, 7, 1, 1, 50, 50, 2, NULL, 2, 11),
(51, 53, 51, 2, 1, 1, 51, 11, 7, 1, 1, 51, 51, 2, NULL, 2, 11),
(52, 54, 52, 2, 7, 1, 52, 11, 7, 1, 1, 52, 52, 2, NULL, 2, 11),
(53, 55, 53, 2, 1, 1, 53, 11, 7, 2, 1, 53, 53, 2, NULL, 2, 11),
(54, 56, 54, 2, 7, 1, 54, 11, 7, 1, 1, 54, 54, 2, NULL, 2, 11),
(55, 57, 55, 2, 1, 1, 55, 11, 7, 1, 1, 55, 55, 2, NULL, 2, 11),
(56, 58, 56, 2, 1, 1, 56, 11, 7, 1, 1, 56, 56, 2, NULL, 2, 11),
(57, 59, 57, 2, 1, 1, 57, 11, 7, 1, 1, 57, 57, 2, NULL, 2, 11),
(58, 60, 58, 2, 7, 1, 58, 11, 7, 1, 1, 58, 58, 2, NULL, 2, 11),
(59, 61, 59, 2, 1, 1, 59, 11, 7, 1, 1, 59, 59, 2, NULL, 2, 11),
(60, 62, 60, 2, 1, 1, 60, 11, 7, 2, 1, 60, 60, 2, NULL, 2, 11),
(61, 63, 61, 2, 1, 1, 61, 11, 7, 1, 1, 61, 61, 2, NULL, 2, 11),
(62, 64, 62, 2, 1, 1, 62, 11, 7, 1, 1, 62, 62, 2, NULL, 2, 11),
(63, 65, 63, 2, 1, 1, 63, 11, 7, 1, 1, 63, 63, 2, NULL, 2, 11),
(64, 66, 64, 7, 1, 1, 64, 11, 6, 1, 1, 64, 64, 5, NULL, 2, 11),
(65, 67, 65, 7, 1, 1, 65, 11, 6, 1, 1, 65, 65, 5, NULL, 2, 11),
(66, 68, 66, 7, 1, 1, 66, 11, 1, 1, 1, 66, 66, 5, NULL, 2, 11),
(67, 69, 67, 7, 3, 1, 67, 11, 1, 1, 1, 67, 67, 5, NULL, 2, 11),
(68, 70, 68, 7, 1, 1, 68, 11, 1, 1, 1, 68, 68, 5, NULL, 2, 11),
(69, 71, 69, 7, 1, 1, 69, 11, 1, 1, 1, 69, 69, 5, NULL, 2, 11),
(70, 72, 70, 7, 1, 1, 70, 11, 1, 1, 1, 70, 70, 5, NULL, 2, 11),
(71, 73, 71, 7, 1, 1, 71, 11, 1, 1, 1, 71, 71, 5, NULL, 2, 11),
(72, 74, 72, 7, 1, 1, 72, 11, 1, 1, 1, 72, 72, 5, NULL, 2, 11),
(73, 75, 73, 7, 1, 1, 73, 11, 1, 1, 1, 73, 73, 5, NULL, 2, 11),
(74, 76, 74, 7, 1, 1, 74, 11, 1, 1, 1, 74, 74, 5, NULL, 2, 11),
(75, 77, 75, 7, 1, 1, 75, 11, 1, 1, 1, 75, 75, 5, NULL, 2, 11),
(76, 78, 76, 7, 1, 1, 76, 11, 1, 1, 1, 76, 76, 5, NULL, 2, 11),
(77, 79, 77, 7, 1, 1, 77, 11, 1, 1, 1, 77, 77, 5, NULL, 2, 11),
(78, 80, 78, 7, 1, 1, 78, 11, 1, 1, 1, 78, 78, 5, NULL, 2, 11),
(79, 81, 79, 7, 7, 1, 79, 11, 1, 1, 1, 79, 79, 5, NULL, 2, 11),
(80, 82, 80, 7, 1, 1, 80, 11, 1, 1, 1, 80, 80, 5, NULL, 2, 11),
(81, 83, 81, 7, 1, 1, 81, 11, 4, 1, 1, 81, 81, 5, NULL, 2, 11),
(82, 84, 82, 7, 7, 1, 82, 11, 4, 1, 1, 82, 82, 5, NULL, 2, 11),
(83, 85, 83, 7, 1, 1, 83, 11, 4, 1, 1, 83, 83, 5, NULL, 2, 11),
(84, 86, 84, 7, 1, 1, 84, 11, 4, 1, 1, 84, 84, 5, NULL, 2, 11),
(85, 87, 85, 7, 1, 1, 85, 11, 4, 1, 1, 85, 85, 5, NULL, 2, 11),
(86, 88, 86, 7, 1, 1, 86, 11, 4, 2, 1, 86, 86, 5, NULL, 2, 11),
(87, 89, 87, 7, 7, 1, 87, 11, 4, 1, 1, 87, 87, 5, NULL, 2, 11),
(88, 90, 88, 7, 7, 1, 88, 11, 4, 2, 1, 88, 88, 5, NULL, 2, 11),
(89, 91, 89, 3, 1, 1, 89, 11, 6, 1, 1, 89, 89, 3, NULL, 2, 11),
(90, 92, 90, 3, 7, 1, 90, 11, 6, 2, 1, 90, 90, 3, NULL, 2, 11),
(91, 93, 91, 3, 1, 1, 91, 11, 6, 1, 1, 91, 91, 3, NULL, 2, 11),
(92, 94, 92, 3, 1, 1, 92, 11, 1, 1, 1, 92, 92, 3, NULL, 2, 11),
(93, 95, 93, 3, 7, 1, 93, 11, 1, 1, 1, 93, 93, 3, NULL, 2, 11),
(94, 96, 94, 3, 1, 1, 94, 11, 1, 1, 1, 94, 94, 3, NULL, 2, 11),
(95, 97, 95, 3, 1, 1, 95, 11, 1, 1, 1, 95, 95, 3, NULL, 2, 11),
(96, 98, 96, 3, 1, 1, 96, 11, 1, 1, 1, 96, 96, 3, NULL, 2, 11),
(97, 99, 97, 3, 1, 1, 97, 11, 1, 1, 1, 97, 97, 3, NULL, 2, 11),
(98, 100, 98, 3, 1, 1, 98, 11, 1, 1, 1, 98, 98, 3, NULL, 2, 11),
(99, 101, 99, 3, 1, 1, 99, 11, 1, 1, 1, 99, 99, 3, NULL, 2, 11),
(100, 102, 100, 3, 1, 1, 100, 11, 1, 2, 1, 100, 100, 3, NULL, 2, 11),
(101, 103, 101, 3, 1, 1, 101, 11, 1, 1, 1, 101, 101, 3, NULL, 2, 11),
(102, 104, 102, 3, 1, 1, 102, 11, 1, 1, 1, 102, 102, 3, NULL, 2, 11),
(103, 105, 103, 3, 1, 1, 103, 11, 1, 1, 1, 103, 103, 3, NULL, 2, 11),
(104, 106, 104, 3, 1, 1, 104, 11, 1, 1, 1, 104, 104, 3, NULL, 2, 11),
(105, 107, 105, 3, 1, 1, 105, 11, 1, 1, 1, 105, 105, 3, NULL, 2, 11),
(106, 108, 106, 3, 1, 1, 106, 11, 1, 1, 1, 106, 106, 3, NULL, 2, 11),
(107, 109, 107, 3, 1, 1, 107, 11, 1, 1, 1, 107, 107, 3, NULL, 2, 11),
(108, 110, 108, 3, 1, 1, 108, 11, 1, 1, 1, 108, 108, 3, NULL, 2, 11),
(109, 111, 109, 3, 1, 1, 109, 11, 1, 1, 1, 109, 109, 3, NULL, 2, 11),
(110, 112, 110, 3, 1, 1, 110, 11, 1, 1, 1, 110, 110, 3, NULL, 2, 11),
(111, 113, 111, 3, 1, 1, 111, 11, 1, 1, 1, 111, 111, 3, NULL, 2, 11),
(112, 114, 112, 3, 1, 1, 112, 11, 1, 1, 1, 112, 112, 3, NULL, 2, 11),
(113, 115, 113, 3, 1, 1, 113, 11, 1, 1, 1, 113, 113, 3, NULL, 2, 11),
(114, 116, 114, 3, 1, 1, 114, 11, 1, 1, 1, 114, 114, 3, NULL, 2, 11),
(115, 117, 115, 3, 1, 1, 115, 11, 1, 1, 1, 115, 115, 3, NULL, 2, 11),
(116, 118, 116, 3, 1, 1, 116, 11, 1, 1, 1, 116, 116, 3, NULL, 2, 11),
(117, 119, 117, 3, 1, 1, 117, 11, 1, 1, 1, 117, 117, 3, NULL, 2, 11),
(118, 120, 118, 3, 7, 1, 118, 11, 1, 1, 1, 118, 118, 3, NULL, 2, 11),
(119, 121, 119, 3, 1, 1, 119, 11, 1, 1, 1, 119, 119, 3, NULL, 2, 11),
(120, 122, 120, 3, 1, 1, 120, 11, 1, 2, 1, 120, 120, 3, NULL, 2, 11),
(121, 123, 121, 3, 7, 1, 121, 11, 1, 2, 1, 121, 121, 3, NULL, 2, 11),
(122, 124, 122, 3, 7, 1, 122, 11, 1, 1, 1, 122, 122, 3, NULL, 2, 11),
(123, 125, 123, 3, 7, 1, 123, 11, 1, 1, 1, 123, 123, 3, NULL, 2, 11),
(124, 126, 124, 3, 7, 1, 124, 11, 1, 1, 1, 124, 124, 3, NULL, 2, 11),
(125, 127, 125, 3, 7, 1, 125, 11, 1, 2, 1, 125, 125, 3, NULL, 2, 11),
(126, 128, 126, 3, 7, 1, 126, 11, 1, 1, 1, 126, 126, 3, NULL, 2, 11),
(127, 129, 127, 3, 7, 1, 127, 11, 1, 1, 1, 127, 127, 3, NULL, 2, 11),
(128, 130, 128, 3, 7, 1, 128, 11, 1, 1, 1, 128, 128, 3, NULL, 2, 11),
(129, 131, 129, 3, 7, 1, 129, 11, 1, 1, 1, 129, 129, 3, NULL, 2, 11),
(130, 132, 130, 3, 3, 1, 130, 11, 1, 1, 1, 130, 130, 3, NULL, 2, 11),
(131, 133, 131, 3, 3, 1, 131, 11, 1, 1, 1, 131, 131, 3, NULL, 2, 11),
(132, 134, 132, 3, 7, 1, 132, 11, 7, 1, 1, 132, 132, 3, NULL, 2, 11),
(133, 135, 133, 3, 7, 1, 133, 11, 7, 1, 1, 133, 133, 3, NULL, 2, 11),
(134, 136, 134, 3, 1, 1, 134, 11, 7, 1, 1, 134, 134, 3, NULL, 2, 11),
(135, 137, 135, 3, 1, 1, 135, 11, 7, 1, 1, 135, 135, 3, NULL, 2, 11),
(136, 138, 136, 3, 7, 1, 136, 11, 7, 1, 1, 136, 136, 3, NULL, 2, 11),
(137, 139, 137, 3, 1, 1, 137, 11, 7, 1, 1, 137, 137, 3, NULL, 2, 11),
(138, 140, 138, 3, 1, 1, 138, 11, 7, 2, 1, 138, 138, 3, NULL, 2, 11),
(139, 141, 139, 3, 7, 1, 139, 11, 7, 1, 1, 139, 139, 3, NULL, 2, 11),
(140, 142, 140, 3, 1, 1, 140, 11, 7, 1, 1, 140, 140, 3, NULL, 2, 11),
(141, 143, 141, 3, 1, 1, 141, 11, 7, 2, 1, 141, 141, 3, NULL, 2, 11),
(142, 144, 142, 3, 1, 1, 142, 11, 7, 1, 1, 142, 142, 3, NULL, 2, 11),
(143, 145, 143, 3, 1, 1, 143, 11, 7, 2, 1, 143, 143, 3, NULL, 2, 11),
(144, 146, 144, 3, 1, 1, 144, 11, 4, 1, 1, 144, 144, 3, NULL, 2, 11),
(145, 147, 145, 3, 7, 1, 145, 11, 4, 1, 1, 145, 145, 3, NULL, 2, 11),
(146, 148, 146, 3, 1, 1, 146, 11, 4, 1, 1, 146, 146, 3, NULL, 2, 11),
(147, 149, 147, 3, 7, 1, 147, 11, 4, 1, 1, 147, 147, 3, NULL, 2, 11),
(148, 150, 148, 3, 1, 1, 148, 11, 4, 1, 1, 148, 148, 3, NULL, 2, 11),
(149, 151, 149, 4, 1, 1, 149, 11, 1, 1, 1, 149, 149, 4, NULL, 2, 11),
(150, 152, 150, 4, 1, 1, 150, 11, 1, 1, 1, 150, 150, 4, NULL, 2, 11),
(151, 153, 151, 4, 1, 1, 151, 11, 7, 1, 1, 151, 151, 4, NULL, 2, 11),
(152, 154, 152, 4, 1, 1, 152, 11, 7, 1, 1, 152, 152, 4, NULL, 2, 11),
(153, 155, 153, 4, 7, 1, 153, 11, 7, 1, 1, 153, 153, 4, NULL, 2, 11),
(154, 156, 154, 4, 7, 1, 154, 11, 1, 1, 1, 154, 154, 4, NULL, 2, 11),
(155, 157, 155, 4, 1, 1, 155, 11, 1, 1, 1, 155, 155, 4, NULL, 2, 11),
(156, 158, 156, 4, 1, 1, 156, 11, 1, 1, 1, 156, 156, 4, NULL, 2, 11),
(157, 159, 157, 4, 1, 1, 157, 11, 1, 1, 1, 157, 157, 4, NULL, 2, 11),
(158, 160, 158, 4, 1, 1, 158, 11, 1, 1, 1, 158, 158, 4, NULL, 2, 11),
(159, 161, 159, 4, 1, 1, 159, 11, 1, 1, 1, 159, 159, 4, NULL, 2, 11),
(160, 162, 160, 4, 1, 1, 160, 11, 1, 1, 1, 160, 160, 4, NULL, 2, 11),
(161, 163, 161, 4, 7, 1, 161, 11, 1, 1, 1, 161, 161, 4, NULL, 2, 11),
(162, 164, 162, 4, 1, 1, 162, 11, 1, 1, 1, 162, 162, 4, NULL, 2, 11),
(163, 165, 163, 4, 1, 1, 163, 11, 1, 1, 1, 163, 163, 4, NULL, 2, 11),
(164, 166, 164, 4, 7, 1, 164, 11, 1, 1, 1, 164, 164, 4, NULL, 2, 11),
(165, 167, 165, 4, 1, 1, 165, 11, 1, 1, 1, 165, 165, 4, NULL, 2, 11),
(166, 168, 166, 4, 7, 1, 166, 11, 1, 1, 1, 166, 166, 4, NULL, 2, 11),
(167, 169, 167, 4, 1, 1, 167, 11, 1, 1, 1, 167, 167, 4, NULL, 2, 11),
(168, 170, 168, 4, 1, 1, 168, 11, 1, 1, 1, 168, 168, 4, NULL, 2, 11),
(169, 171, 169, 4, 7, 1, 169, 11, 1, 1, 1, 169, 169, 4, NULL, 2, 11),
(170, 172, 170, 4, 1, 1, 170, 11, 1, 1, 1, 170, 170, 4, NULL, 2, 11),
(171, 173, 171, 4, 1, 1, 171, 11, 1, 1, 1, 171, 171, 4, NULL, 2, 11),
(172, 174, 172, 4, 7, 1, 172, 11, 1, 1, 1, 172, 172, 4, NULL, 2, 11),
(173, 175, 173, 4, 1, 1, 173, 11, 1, 2, 1, 173, 173, 4, NULL, 2, 11),
(174, 176, 174, 4, 1, 1, 174, 11, 1, 1, 1, 174, 174, 4, NULL, 2, 11),
(175, 177, 175, 4, 1, 1, 175, 11, 1, 1, 1, 175, 175, 4, NULL, 2, 11),
(176, 178, 176, 4, 1, 1, 176, 11, 1, 1, 1, 176, 176, 4, NULL, 2, 11),
(177, 179, 177, 4, 1, 1, 177, 11, 1, 1, 1, 177, 177, 4, NULL, 2, 11),
(178, 180, 178, 4, 1, 1, 178, 11, 1, 1, 1, 178, 178, 4, NULL, 2, 11),
(179, 181, 179, 4, 7, 1, 179, 11, 1, 1, 1, 179, 179, 4, NULL, 2, 11),
(180, 182, 180, 4, 7, 1, 180, 11, 1, 1, 1, 180, 180, 4, NULL, 2, 11),
(181, 183, 181, 4, 1, 1, 181, 11, 1, 2, 1, 181, 181, 4, NULL, 2, 11),
(182, 184, 182, 4, 1, 1, 182, 11, 1, 1, 1, 182, 182, 4, NULL, 2, 11),
(183, 185, 183, 4, 1, 1, 183, 11, 1, 2, 1, 183, 183, 4, NULL, 2, 11),
(184, 186, 184, 4, 7, 1, 184, 11, 1, 1, 1, 184, 184, 4, NULL, 2, 11),
(185, 187, 185, 4, 1, 1, 185, 11, 1, 4, 1, 185, 185, 4, NULL, 2, 11),
(186, 188, 186, 4, 1, 1, 186, 11, 1, 1, 1, 186, 186, 4, NULL, 2, 11),
(187, 189, 187, 4, 7, 1, 187, 11, 4, 1, 1, 187, 187, 4, NULL, 2, 11),
(188, 190, 188, 4, 1, 1, 188, 11, 4, 1, 1, 188, 188, 4, NULL, 2, 11),
(189, 191, 189, 4, 7, 1, 189, 11, 4, 1, 1, 189, 189, 4, NULL, 2, 11),
(190, 192, 190, 4, 7, 1, 190, 11, 4, 1, 1, 190, 190, 4, NULL, 2, 11),
(191, 193, 191, 4, 1, 1, 191, 11, 4, 1, 1, 191, 191, 4, NULL, 2, 11),
(192, 194, 192, 4, 1, 1, 192, 11, 4, 1, 1, 192, 192, 4, NULL, 2, 11),
(193, 195, 193, 4, 7, 1, 193, 11, 4, 1, 1, 193, 193, 4, NULL, 2, 11),
(194, 196, 194, 1, 1, 1, 194, 11, 6, 1, 1, 194, 194, 1, NULL, 2, 11),
(195, 197, 195, 1, 1, 1, 195, 11, 6, 1, 1, 195, 195, 1, NULL, 2, 11),
(196, 198, 196, 1, 1, 1, 196, 11, 6, 1, 1, 196, 196, 1, NULL, 2, 11),
(197, 199, 197, 1, 7, 1, 197, 11, 1, 1, 1, 197, 197, 1, NULL, 2, 11),
(198, 200, 198, 1, 1, 1, 198, 11, 1, 1, 1, 198, 198, 1, NULL, 2, 11),
(199, 201, 199, 1, 1, 1, 199, 11, 1, 1, 1, 199, 199, 1, NULL, 2, 11),
(200, 202, 200, 1, 1, 1, 200, 11, 1, 1, 1, 200, 200, 1, NULL, 2, 11),
(201, 203, 201, 1, 1, 1, 201, 11, 1, 1, 1, 201, 201, 1, NULL, 2, 11),
(202, 204, 202, 1, 1, 1, 202, 11, 1, 1, 1, 202, 202, 1, NULL, 2, 11),
(203, 205, 203, 1, 1, 1, 203, 11, 1, 1, 1, 203, 203, 1, NULL, 2, 11),
(204, 206, 204, 1, 7, 1, 204, 11, 1, 1, 1, 204, 204, 1, NULL, 2, 11),
(205, 207, 205, 1, 1, 1, 205, 11, 1, 1, 1, 205, 205, 1, NULL, 2, 11),
(206, 208, 206, 1, 1, 1, 206, 11, 1, 1, 1, 206, 206, 1, NULL, 2, 11),
(207, 209, 207, 1, 1, 1, 207, 11, 1, 1, 1, 207, 207, 1, NULL, 2, 11),
(208, 210, 208, 1, 1, 1, 208, 11, 1, 1, 1, 208, 208, 1, NULL, 2, 11),
(209, 211, 209, 1, 1, 1, 209, 11, 1, 1, 1, 209, 209, 1, NULL, 2, 11),
(210, 212, 210, 1, 1, 1, 210, 11, 1, 1, 1, 210, 210, 1, NULL, 2, 11),
(211, 213, 211, 1, 1, 1, 211, 11, 1, 1, 1, 211, 211, 1, NULL, 2, 11),
(212, 214, 212, 1, 1, 1, 212, 11, 1, 2, 1, 212, 212, 1, NULL, 2, 11),
(213, 215, 213, 1, 1, 1, 213, 11, 1, 1, 1, 213, 213, 1, NULL, 2, 11),
(214, 216, 214, 1, 7, 1, 214, 11, 1, 1, 1, 214, 214, 1, NULL, 2, 11),
(215, 217, 215, 1, 1, 1, 215, 11, 1, 1, 1, 215, 215, 1, NULL, 2, 11),
(216, 218, 216, 1, 1, 1, 216, 11, 1, 1, 1, 216, 216, 1, NULL, 2, 11),
(217, 219, 217, 1, 1, 1, 217, 11, 1, 1, 1, 217, 217, 1, NULL, 2, 11),
(218, 220, 218, 1, 1, 1, 218, 11, 1, 1, 1, 218, 218, 1, NULL, 2, 11),
(219, 221, 219, 1, 1, 1, 219, 11, 1, 1, 1, 219, 219, 1, NULL, 2, 11),
(220, 222, 220, 1, 1, 1, 220, 11, 1, 1, 1, 220, 220, 1, NULL, 2, 11),
(221, 223, 221, 1, 1, 1, 221, 11, 1, 1, 1, 221, 221, 1, NULL, 2, 11),
(222, 224, 222, 1, 7, 1, 222, 11, 1, 1, 1, 222, 222, 1, NULL, 2, 11),
(223, 225, 223, 1, 1, 1, 223, 11, 1, 1, 1, 223, 223, 1, NULL, 2, 11),
(224, 226, 224, 1, 1, 1, 224, 11, 1, 1, 1, 224, 224, 1, NULL, 2, 11),
(225, 227, 225, 1, 1, 1, 225, 11, 1, 1, 1, 225, 225, 1, NULL, 2, 11),
(226, 228, 226, 1, 7, 1, 226, 11, 1, 1, 1, 226, 226, 1, NULL, 2, 11),
(227, 229, 227, 1, 7, 1, 227, 11, 1, 1, 1, 227, 227, 1, NULL, 2, 11),
(228, 230, 228, 1, 7, 1, 228, 11, 1, 1, 1, 228, 228, 1, NULL, 2, 11),
(229, 231, 229, 1, 7, 1, 229, 11, 1, 1, 1, 229, 229, 1, NULL, 2, 11),
(230, 232, 230, 1, 7, 1, 230, 11, 1, 1, 1, 230, 230, 1, NULL, 2, 11),
(231, 233, 231, 1, 7, 1, 231, 11, 1, 1, 1, 231, 231, 1, NULL, 2, 11),
(232, 234, 232, 1, 7, 1, 232, 11, 1, 1, 1, 232, 232, 1, NULL, 2, 11),
(233, 235, 233, 1, 7, 1, 233, 11, 1, 1, 1, 233, 233, 1, NULL, 2, 11),
(234, 236, 233, 1, 7, 1, 234, 11, 1, 1, 1, 234, 234, 1, NULL, 2, 11),
(235, 237, 234, 1, 7, 1, 234, 11, 1, 1, 1, 235, 235, 1, NULL, 2, 11),
(236, 238, 235, 1, 7, 1, 235, 11, 1, 1, 1, 236, 236, 1, NULL, 2, 11),
(237, 239, 236, 1, 7, 1, 236, 11, 1, 1, 1, 237, 237, 1, NULL, 2, 11),
(238, 240, 237, 1, 7, 1, 237, 11, 7, 1, 1, 238, 238, 1, NULL, 2, 11),
(239, 241, 238, 1, 7, 1, 238, 11, 7, 1, 1, 239, 239, 1, NULL, 2, 11),
(240, 242, 239, 1, 1, 1, 239, 11, 7, 1, 1, 240, 240, 1, NULL, 2, 11),
(241, 243, 240, 1, 1, 1, 240, 11, 7, 2, 1, 241, 241, 1, NULL, 2, 11),
(242, 244, 241, 1, 7, 1, 241, 11, 7, 2, 1, 242, 242, 1, NULL, 2, 11),
(243, 245, 242, 1, 1, 1, 242, 11, 7, 1, 1, 243, 243, 1, NULL, 2, 11),
(244, 246, 243, 1, 1, 1, 243, 11, 7, 1, 1, 244, 244, 1, NULL, 2, 11),
(245, 247, 244, 1, 1, 1, 244, 11, 7, 1, 1, 245, 245, 1, NULL, 2, 11),
(246, 248, 245, 1, 1, 1, 245, 11, 7, 1, 1, 246, 246, 1, NULL, 2, 11),
(247, 249, 246, 1, 7, 1, 246, 11, 7, 1, 1, 247, 247, 1, NULL, 2, 11),
(248, 250, 247, 1, 1, 1, 247, 11, 7, 1, 1, 248, 248, 1, NULL, 2, 11),
(249, 251, 248, 1, 1, 1, 248, 11, 7, 1, 1, 249, 249, 1, NULL, 2, 11),
(250, 252, 249, 1, 1, 1, 249, 11, 7, 1, 1, 250, 250, 1, NULL, 2, 11),
(251, 253, 250, 1, 1, 1, 250, 11, 7, 1, 1, 251, 251, 1, NULL, 2, 11),
(252, 254, 251, 1, 7, 1, 251, 11, 7, 1, 1, 252, 252, 1, NULL, 2, 11),
(253, 255, 252, 1, 1, 1, 252, 11, 4, 1, 1, 253, 253, 1, NULL, 2, 11),
(254, 256, 253, 1, 7, 1, 253, 11, 4, 1, 1, 254, 254, 1, NULL, 2, 11),
(255, 257, 254, 1, 1, 1, 254, 11, 4, 1, 1, 255, 255, 1, NULL, 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `subject_examination_mark`
--

CREATE TABLE IF NOT EXISTS `subject_examination_mark` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `subject_id` int(3) NOT NULL,
  `university_mark` int(3) NOT NULL,
  `midsem_mark` int(3) NOT NULL,
  `practical_mark` int(3) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_subexam_id` (`subject_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `subject_examination_mark`
--

INSERT INTO `subject_examination_mark` (`id`, `subject_id`, `university_mark`, `midsem_mark`, `practical_mark`, `created_by`, `creation_date`) VALUES
(1, 1, 70, 30, 50, 2, '2012-07-04'),
(2, 3, 70, 30, 50, 2, '2012-07-04'),
(3, 2, 70, 30, 50, 2, '2012-07-04'),
(4, 10, 70, 30, 50, 2, '2012-07-04'),
(5, 8, 70, 30, 50, 2, '2012-07-05'),
(6, 4, 70, 30, 50, 2, '2012-07-05'),
(7, 5, 70, 30, 50, 2, '2012-07-05'),
(8, 6, 70, 30, 50, 2, '2012-07-05'),
(9, 7, 70, 30, 50, 2, '2012-07-05'),
(10, 9, 70, 30, 50, 2, '2012-07-05'),
(11, 11, 70, 30, 50, 2, '2012-07-05'),
(12, 12, 0, 0, 100, 2, '2012-07-05'),
(13, 14, 70, 30, 50, 2, '2012-07-05'),
(14, 13, 70, 30, 50, 2, '2012-07-05'),
(15, 15, 70, 30, 50, 2, '2012-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `subject_guidelines`
--

CREATE TABLE IF NOT EXISTS `subject_guidelines` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `guideline` varchar(200) NOT NULL,
  `subject_id` int(3) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sub_guidelines` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `subject_master_academic_terms_name_id` int(11) NOT NULL,
  `subject_master_active` tinyint(1) NOT NULL,
  `subject_master_updated_date` datetime NOT NULL,
  `subject_master_updated_user` int(5) NOT NULL,
  `subject_master_color_code` varchar(10) NOT NULL,
  PRIMARY KEY (`subject_master_id`),
  KEY `fk_sub_type_id` (`subject_master_type_id`),
  KEY `fk_branch_id` (`subject_master_branch_id`),
  KEY `fk_organization_id` (`subject_master_organization_id`),
  KEY `fk_aca_term_period_id` (`subject_master_academic_terms_period_id`),
  KEY `fk_term_name` (`subject_master_academic_terms_name_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`subject_master_id`, `subject_master_name`, `subject_master_code`, `subject_master_alias`, `subject_master_type_id`, `subject_master_organization_id`, `subject_master_branch_id`, `subject_master_academic_terms_period_id`, `subject_master_academic_terms_name_id`, `subject_master_active`, `subject_master_updated_date`, `subject_master_updated_user`, `subject_master_color_code`) VALUES
(1, 'Chemistry', '110001', 'che', 1, 1, 10, 1, 1, 1, '2012-07-13 16:38:53', 2, '#912a2a'),
(2, 'Communication Skills', '110002', 'CS', 1, 1, 10, 1, 1, 1, '2012-07-04 17:29:01', 2, '#98bd88'),
(3, 'Computer Programming and Utilization', '110003', 'CPU', 1, 1, 10, 1, 1, 1, '2012-07-04 17:29:53', 2, '#a17b49'),
(4, 'Elements of Civil Engineering', '110004', 'ECE', 1, 1, 10, 1, 1, 1, '2012-07-04 17:31:39', 2, '#4885a3'),
(5, 'Elements of Electrical Engineering', '110005', 'EEE', 1, 1, 10, 1, 1, 1, '2012-07-04 17:32:25', 2, '#589674'),
(6, 'Elements of Mechanical Engineering', '110006', 'EME', 1, 1, 10, 1, 1, 1, '2012-07-04 17:33:21', 2, '#665713'),
(7, 'Environmental Studies', '110007', 'ES', 1, 1, 10, 1, 1, 1, '2012-07-04 17:34:21', 2, '#416614'),
(8, 'Maths-I', '110008', 'maths-1', 1, 1, 10, 1, 1, 1, '2012-07-04 17:35:37', 2, '#8c2e8a'),
(9, 'Maths-II', '110009', 'Maths-II', 1, 1, 10, 1, 1, 1, '2012-07-04 17:36:36', 2, '#0a26a3'),
(10, 'Mechanics of Solids', '110010', 'MOS', 1, 1, 10, 1, 1, 1, '2012-07-04 17:37:29', 2, '#54e3d5'),
(11, 'Physics', '110011', 'Phy', 1, 1, 10, 1, 1, 1, '2012-07-04 17:38:15', 2, '#8c93b8'),
(12, 'Workshop', '110012', 'Workshop', 1, 1, 10, 1, 1, 1, '2012-07-04 17:38:50', 2, '#de0b0b'),
(13, 'Engineering Graphics', '110013', 'EG', 1, 1, 10, 1, 1, 1, '2012-07-04 17:39:25', 2, '#854627'),
(14, 'Calculus', '110014', 'Calculus', 1, 1, 10, 1, 1, 1, '2012-07-04 17:40:08', 2, '#f02756'),
(15, 'Vector Calculus and Linear Algebra', '110015', 'Vcls', 1, 1, 10, 1, 1, 1, '2012-07-04 17:40:59', 2, '#4d5f73'),
(16, 'Physics', '11', 'Physics', 2, 1, 1, 1, 1, 1, '2012-07-07 11:59:23', 2, '#32053d');

-- --------------------------------------------------------

--
-- Table structure for table `subject_refbook`
--

CREATE TABLE IF NOT EXISTS `subject_refbook` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sub_id` int(10) NOT NULL,
  `isbn_no` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subject_refbook_type` varchar(10) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `subject_refbook`
--

INSERT INTO `subject_refbook` (`id`, `sub_id`, `isbn_no`, `title`, `subject_refbook_type`, `photo`, `created_by`, `created_date`) VALUES
(1, 1, '0', 'Engineering Chemistry by Jain and Jain Publisher Dhanpat Rai Publishing Co.', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(2, 1, '0', 'Engineering Chemistry by Dr. O.P. Agrawal Khanna Publishers Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(3, 1, '0', 'Engineering Chemistry by N. Krishnamurthy, P. Vallinaygam and D. Madhavan Publisher – Prentice – Hal', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(4, 1, '0', 'Engineering Chemistry by R. Gopalan, D. Venkappaya and Sulochana Nagarjan', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(5, 1, '0', 'Engineering Chemistry by C. Parameswara Murthy, C.V. Agrawal and Andra Naidu, B.S. Publication, Hyde', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(6, 1, '0', 'Environmental Science by Y. Anjaneyulu B.S. Publishers, Hyderabad – A.P.', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(7, 1, '0', 'Environmental Studies and Disaster Management by S.G. Shah, S.G. Shah and Gopal N.Shah', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(8, 1, '0', 'Engineering Chemistry by B. Sivsankar The M.C. Grawhill Companies, New Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(9, 2, '0', 'Technical Communication Principles and Practice - Meenakshi Raman, Sangeeta Sharma (OUP)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(10, 2, '0', 'Personality Development, Harold Wallace and Ann Masters, Cengage Publishers.', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(11, 2, '0', 'Basic Communication Skills for Technology Andrea J. Rutherford (Pearson Education)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(12, 2, '0', 'Communication Skills for Technical Students T.M. Farhathullah (Orient Longman)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(13, 2, '0', 'A Textbook of English for Engineers and Technologists. Prepared by Humanities & Social Sciences Divi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(14, 2, '0', 'Communication Skills for Engineers - Sunita Mishra, C, Murali Krishna (Pearson Education)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(15, 2, '0', 'English for Technical Communication - K.R. Lakshminarayanan (Scitech Publications, Chennai.)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(16, 2, '0', 'Basics of Management and Communication Skills - Dr. P.C. Shejwalkar (Everest Publishing House)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(17, 2, '0', 'Business Communication Strategies - Matthukutty M. Monippally (Tata – McGraw – Hill)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(18, 2, '0', 'Body Language    -   Allan Pease  (Sheldon Press, London)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(19, 2, '0', 'A Communicative Grammar of English - Geoffrey Leech, Jan Swartvik (ELBS – with Longman)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(20, 10, '0', 'Engineering Mechanics (Statics) Beer and Johnston', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(21, 10, '0', 'Applied Mechanics S. B. Junnarkar & H. J. Shah', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(22, 10, '0', 'Mechanics of Structure Vol. I', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(23, 10, '0', 'Mechanics of Materials Beer and Johnston.', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(24, 4, '0', 'Title :Surveying Vol .I & II Author: Dr. B. C. Punamia Publisher : Laxmi Publication Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(25, 4, '0', 'Title :Surveying Vol. I and II Author : S. K. Duggal Publisher : Tata Macgraw hill Publication New D', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(26, 4, '0', 'Title: Civil Engg. Drawing Author : S. C. Rangwala Publisher: Charotar Pub. House Anand', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(27, 4, '0', 'Title : Building Construction Author : Dr. B. C. Punamia Publisher: Laxmi Pub. Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(28, 4, '0', 'Title : Engineering Material Author : Dr. S.C. Rangwala Publisher: Charotar Pub. House', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(29, 4, '0', 'Title : Building Materials Author: Dr. S. .K. Duggal Publisher : New Age International Pub.House Del', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(30, 4, '0', 'Title : Civil Engineering Material Author : Jakson and Dhir Publisher : ELBS Publishing London', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(31, 4, '0', 'Title : Civil Engineering Material Author : Jakson and Dhir Publisher : ELBS Publishing London', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(32, 4, '0', 'Title : Highway Engineering Author: Khanna S. K. and Justo C. E.G. Publisher : Nemchand and Brothers', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(33, 4, '0', 'Title : Irrigation Engineering and Hydraulic Structures Author : Santoshkumar Garg Publisher : Khann', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(34, 7, '0', 'Environmental Studies: R. Rajagopalan,Oxford University Press', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(35, 7, '0', 'Environmental Pollution: Causes, Effects & Control by K.C Agrawal', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(36, 7, '0', 'Environmental Science by Richard T Wright & Bernard J Nebel', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(37, 5, '0', 'Electrical Technology Vol.1 By B.L.Theraja', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(38, 7, '0', 'Environmental Science by Daniel B Botkin & Edward A Keller', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(39, 5, '0', 'Basic Electrical Engineering By V.N.Mittal', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(40, 7, '0', 'Environmental Engineering & Management by Suresh K Dameja', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(41, 7, '0', 'Environmental Management by Dr. Swapan C Deb', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(42, 5, '0', 'Electrical Estimating & costing by Surjitsingh ( Dhanpat Rai & Co.)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(43, 7, '0', 'Environment & Ecology by Dr Gourkrishna Dasmohapatra', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(44, 7, '0', 'Introduction To Environmental Engineering and Science by Master Gilbert M.', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(45, 6, '0', 'Elements of Mechanical Engineeringby K.P.Roy and Prof.S.K . Hajra Chaudhary , Media Promoters and Pu', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(46, 6, '0', 'Introduction to Engineering Materials by B.K. Agrawal Tata McgraHill Publication New Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(47, 6, '0', 'Thermal Science and Engineering by Dr. D.S. Kumar, S.K. Kataria & sons Publication New Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(48, 6, '0', 'Fundamental of Mechanical Engineering by G.S. Sawhney, Prentice Hall of India Publication New Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(49, 6, '0', 'Thermal Engineering by R.K. Rajput ,S.Chand Publication New Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(50, 11, '0', 'Engineering Physics K. Rajagopal Prentice-Hall of India Pvt. Ltd.,New Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(51, 11, '0', 'Engg. Physics G. Vijayakumari Vikas Publishing House Pvt. ltd', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(52, 12, '0', 'Choudhary, Hajara “ Elements of Workshop Technology”, Media Promotors & Publishers, 1997', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(53, 11, '0', 'A Text book of Engg. Physics M.N. Aavadhalula S. Chand P .G. Kshirsagar', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(54, 12, '0', 'Raghuvanshi B.S. “Workshop Technology” Vol. I & II, Dhanpat Rai & Sons 1998', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(55, 11, '0', 'Engg. Physics Abhijit Nayak S.K. Kataria & Sons.,Delhi.', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(56, 12, '0', 'Chapman W.A. J and Arnold E. “Workshop Technology” Viva low priced Student edition, 1998', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(58, 13, '0', 'Engineering Graphics – I and II By Arunoday Kumar Tech – Max Publication, Pune', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(59, 14, '0', 'Hughes – Hallett et al., Calculus – Single and Multivarible (3rd Edition), John- Wiley and Sons (200', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(60, 14, '0', 'T. M. Apostol, Calculus, Volumes 1 and 2 (2nd Edition), Wiley Eastern (1980).', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(61, 13, '0', 'Engineering Drawing & Graphics using Auto CAD 2000 By T. Jeyapoovan Vikas Publishing House Pvt. Ltd.', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(62, 13, '0', 'A text book of Engineering Drawing By R.K.Dhawan S.Chand & Company Ltd., New Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(63, 13, '0', 'A text book of Engineering Drawing By P.S.Gill S.K.Kataria & sons, Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(64, 13, '0', 'Engineering Drawing with an Introduction to AutoCAD By D.A.Jolhe Tata McGraw-Hill Publishing Co. Ltd', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(65, 13, '0', 'Computer Aided Engineering Drawing, S. Trymbaka Murthy I.K.International Publishing House Pvt. Ltd.,', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(66, 15, '0', 'Hughes – Hallett et al., Calculus – Single and Multivarible (3rd Edition), John- Wiley and Sons (200', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(67, 15, '0', ' G. Strang, Linear Algebra and its applications (4th Edition), Thomson, (2006).', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(68, 15, '0', 'S. Kumaresan, Linear Algebra – A Geometric Approach, Prentice Hall India (2006).', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32'),
(69, 15, '0', 'Maurice D. Weir, Joel Hass, Frank R. Giordano, Thomas’ Calculus, Person Education (11th edition)', 'GTU Type', 'no_image', '2', '2012-07-05 06:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `subject_syllabus`
--

CREATE TABLE IF NOT EXISTS `subject_syllabus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sub_id` int(10) NOT NULL,
  `topic_name` varchar(100) NOT NULL,
  `topic_description` text NOT NULL,
  `hours` int(10) NOT NULL,
  `subject_syllabus_type` varchar(10) NOT NULL,
  `teaching_method` int(3) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_end_date` date DEFAULT NULL,
  `actual_duration` time DEFAULT NULL,
  `actual_remarks` text,
  `deliver_topic` text NOT NULL,
  `created_by` varchar(40) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_ss_sid` (`sub_id`),
  KEY `fk_ss_tid` (`teaching_method`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=130 ;

--
-- Dumping data for table `subject_syllabus`
--

INSERT INTO `subject_syllabus` (`id`, `sub_id`, `topic_name`, `topic_description`, `hours`, `subject_syllabus_type`, `teaching_method`, `start_date`, `end_date`, `duration`, `actual_start_date`, `actual_end_date`, `actual_duration`, `actual_remarks`, `deliver_topic`, `created_by`, `created_date`) VALUES
(1, 1, 'Water Technology', 'Introduction, sources of water Impurities in water, hard and soft water, Degree of\r\nhardness, Types of hardness, Scale and sludge formation in boiler Boiler corrosion.\r\nCaustic embrittlements, Priming and Foaming, Softening of water. Potable water,\r\nBreak point of chlorination, Desalination of Brackish water etc.\r\n', 1, 'GTU Type', 1, '2012-07-07', '2012-07-07', '03:00:00', '2012-07-14', '2012-07-21', '09:00:00', '2 day late', 'water technology', '2', '2012-07-06 10:38:48'),
(2, 1, 'Metals and alloys ', 'Introduction, Physical properties of metals, cast iron, wrought iron, steel, Heat\r\ntreatment of steel. Definition of alloy, purpose of making alloys. Classification of alloys.\r\nAlloys of steel and its applications. Non-Ferrous alloys and its industrial applications.\r\n', 0, 'GTU Type', 2, '2012-07-06', '2012-07-06', '02:00:00', '2012-07-07', '2012-07-07', '02:00:00', 'ok', 'metols', '2', '2012-07-05 06:57:49'),
(3, 1, 'Corrosion and its inhibition', 'Introduction, Theories of corrosion, Types of corrosion, Protection of metals from\r\ncorrosion – organic and inorganic materials, Inhibitors, Cathodic protection.\r\n', 0, 'GTU Type', 8, '2012-07-08', '2012-07-08', '02:00:00', '2012-07-09', '2012-07-09', '02:20:00', '1 day late', '', '2', '2012-07-05 06:57:49'),
(4, 1, 'Fuels and Combustion', 'Definition, types of fuel – solids, liquids, gaseous and Nucleon fuels. Calorifio\r\n Value, Characteristics of good fuel. Solid fuels – coal, coke. Analysis of coal – ultimate\r\n    and proximate Liquid fuel – Petroleum. Refining of Petroleum by Fractional distillation.\r\n     Gaseous fuel – coal-gas, bio gas produces gas and water gas. L.P.G. & CNG.\r\n', 0, 'GTU Type', 8, '2012-07-06', '2012-07-06', '01:00:00', '2012-07-06', '2012-07-06', '09:30:00', 'test remarks', '', '2', '2012-07-05 06:57:49'),
(5, 1, 'Lubricants ', 'Definition : Types of lubrication, classification of lubricants and their properties.\r\nFunctions of lubricants.\r\n', 0, 'GTU Type', 1, '2012-07-04', '2012-07-11', '00:00:01', '2012-07-06', '2012-07-06', '09:00:00', 'ffgfgfg', '', '2', '2012-07-05 06:57:49'),
(6, 1, 'Cements', 'Introduction Manufacturing of Lime, Gypsum and Cement and their properties.\r\nManufacturing of Portland cement, chemical composition of cement chemical\r\nconstituents of Portland cement, Setting and hardening of cement.\r\n', 0, 'GTU Type', 1, '2012-07-12', '2012-07-11', '00:00:06', '2012-07-05', '2012-07-05', '03:00:00', 'test', '', '2', '2012-07-05 06:57:49'),
(7, 1, 'Polymers and Plastics', 'Introduction, Definition of Polymer. Types of Polymers, Types of Polymerization\r\nreactions and their mechanism. Plastics, Classification of plastics – Thermo plastics\r\n and Thermo setting plastics. Molding constituents of plastics Engineering properties\r\nand uses of plastics.\r\nDefinition of Rubber, Types of Rubber, Vulcanization of rubber. Application of\r\nRubber.\r\n', 0, 'GTU Type', 1, '2012-07-05', '2012-07-05', '00:00:01', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(8, 1, 'Multidisciplinary nature of Environment Study', 'Introduction, Nature of environment and its problem due to over utilization of\r\nnatural sources. Environmental degradation Green house effect, acid rain, Ozone\r\ndepletion, Photochemical smog. Environmental problems in India, Environment\r\nmanagement and laws. Public awareness.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(9, 1, 'Natural and Synthetic Fibers', 'Introduction Definition of Fiber, Types of fibers – Natural, semi synthetic,\r\n synthetic fibers. Physical properties of fibers. Essential requirement for fiber for\r\nformation. Preparation, properties and uses of Cellulose acetic, Viscose Rayon, Nylon,\r\nPolyesters acrylic, Glass fibers etc. Differentiate between wool and silk fibers. Spinning\r\nprocesses – Melt and Wet spinning.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(10, 1, 'Chemical aspect of Biotechnology', 'Definition, Benefits through biotechnology – Agriculture, Food quality, Medicines\r\n etc. Fermentation, Fermentation processes, Enzymes and its application in industries.\r\nBio fuels and Bio membrane.\r\n', 0, 'GTU Type', 3, '2012-07-07', '2012-07-07', '01:00:00', '2012-07-19', '2012-07-21', '12:00:00', 'ttest', '', '2', '2012-07-05 06:57:49'),
(11, 1, 'Protective Coatings ', 'Introduction, Types of protective coatings – metallic, chemical, organic,\r\n electroplating. Paints and varnishes – Ingredients, properties and uses, Enamels,\r\n  Lacquers etc.\r\n', 0, 'GTU Type', 7, '2012-07-06', '2012-07-07', '00:00:10', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(12, 1, 'Renewable and Non-renewable energy of sources', 'Resources of energy, Appraisal resources problems, classification of Natural and\r\nrenewable resources. Destruction and Conservation.\r\n', 0, 'GTU Type', 1, '2012-07-07', '2012-07-07', '00:00:01', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(13, 1, 'Refractories, Abrasives and Insulators', 'Definitions of refractories, Abrasives and insulators. Properties of refractories.\r\nClassification of refractories.\r\nClassification, properties and uses of abrasives. Classification, properties and\r\nuses of Insulators.\r\n', 0, 'GTU Type', 1, '2012-07-07', '2012-07-07', '06:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(14, 1, 'Analytical Techniques', 'Introduction Types of analysis – Physical, Chemical and instrumentation.\r\n Physical analysis – Specific gravity, Melting point, Boiling point, Crystallization.\r\n  Purification of compounds etc. Chemical analysis – Quantitative and Qualitative\r\n   analysis of organic and inorganic compounds.\r\n  Instrumental analysis – Spectroscopic, Chromatographic PH measurement,\r\n   Conductinity, Turbidity etc.\r\n', 0, 'GTU Type', 1, '2012-07-06', '2012-07-06', '07:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(15, 3, 'Introduction to Computer & Programming', 'Introduction, Basic block\r\nDiagram and functions of various components of computer. Concept of\r\nHardware and Software. Concept of basic types of software. Introduction to\r\nprogramming and programming languages. Flow charts and algorithms.\r\n', 0, 'GTU Type', 1, '2012-07-13', '2012-07-13', '09:00:00', '2012-07-14', '2012-07-14', '10:00:00', 'test', '1st topic', '2', '2012-07-05 06:57:49'),
(16, 3, 'Introduction to C Language', 'Fundamentals of ‘C’: Data types in ‘C’. Operators and their hierarchy,\r\n       Concept of header files, I/O functions, control structures in C, looping\r\n      structures in C, arrays and strings.\r\nFunctions and recursion: Concepts of functions with various types of\r\nparameters. Various types of parameter passing mechanisms. Recursive\r\nfunctions and implementation of these concepts in ‘C’.\r\nPointers and structures: Concepts of pointers and simple programs using\r\npointers. Introduction to simple structure and its implementations.\r\n', 0, 'GTU Type', 2, '2012-07-13', '2012-07-13', '05:00:00', '2012-07-14', '2012-07-14', '05:00:00', 'test', 'topic 2', '2', '2012-07-05 06:57:49'),
(17, 3, 'Introduction to C++ language', 'Principles of object oriented programming, Comparison with procedural\r\nlanguages, Tokens, expressions and control structures\r\nIntroduction to functions, classes, objects, constructors, destructors in C++.\r\nClasses and Objects: Declaring classes, defining member functions, Making\r\nan outside function inline, nesting of member functions, private member\r\nfunctions, Arrays with in a class, Memory allocation of objects, static data\r\nmembers, static member functions, arrays of objects, objects as function\r\narguments, friend function, returning of objects, const member function.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(18, 10, 'Introduction', 'Scalar and Vector Quantities, composition and\r\nresolution of vectors, system of units, definition of space, time,\r\nparticle, rigid body, force.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(19, 10, 'Fundamentals of Statics', 'Principles of statics, coplanar, concurrent\r\nand non-concurrent, parallel and non-parallel forces, composition and\r\nresolution of forces, moments & couples - their properties,\r\ncombination of coplanar couples and forces, equilibrant, equilibrium,\r\nfree body diagrams, analytical conditions of equilibrium for coplanar\r\nforce systems.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(20, 10, 'Truss', 'Simple determinate plane trusses and analysis for member\r\nforces using methods of joints and methods of sections.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(21, 10, 'Distributed forces, center of gravity and moment of inertia', 'Center of gravity of lines, plane areas, volumes and bodies, Pappus\r\n– Guldinus theorems, moment of inertia, polar moment of inertia &\r\nradius of gyration of areas, parallel & perpendicular axes theorems.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(22, 10, 'Friction', 'Theory of friction, static and sliding friction, laws of friction,\r\nangle and coefficient of friction, inclined plane friction, ladder friction,\r\nwedges, belt and rope friction.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(23, 10, 'Simple Machines', 'Velocity ratio, mechanical advantage, efficiency,\r\nreversibility of machines, simple machines such as levers, pulley and\r\npulley blocks, wheel and differential axle, Single purchase/double\r\npurchase crab, compound screw jacks.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(24, 10, 'Physical & Mechanical properties of structural materials:', 'Properties related to axial, bending, and torsional & shear loading,\r\nToughness, hardness, proof stress, factor of safety, working stress,\r\nload factor.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(25, 10, 'Simple stresses & strains', 'Elastic, homogeneous, isotropic\r\nmaterials; limits of elasticity and proportionality, yield limit, ultimate\r\nstrength, strain hardening, section of composite materials, prismatic\r\nand non-prismatic sections.\r\nStrains: Linear, shear, lateral, thermal and volumetric, Poisson’s ratio.\r\n Stresses: Normal stresses, axial – tensile & compressive, shear and\r\n  complementary shear, thermal and hoop,. Applications to composite\r\n material stepped & tapered bars.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(26, 10, 'Beam', '(a) Types of loads, Types of supports, Types of beams, Support\r\nreactions for statically determinate beams\r\n(b) Bending moment and Shear force , Bending moment and shear\r\nforce diagrams for statically determinate beams subjected to couples,\r\nconcentrated forces, uniformly distributed loadings, relation between\r\nbending moment, shear force and rate of loading, point of contra-\r\nflexure.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(27, 10, 'Stresses in beams', ' Theory of simple bending, bending stresses and\r\ntheir distribution, moment of\r\nresistance, modulus of sections,\r\ndistribution of shear stresses in different sections.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(28, 10, 'Principal stresses and strains', 'Compound stresses, analysis of\r\nprincipal planes and principal stresses, principal strains, angle of\r\nobliquity of resultant stress, principal stresses in beams.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(29, 2, 'Unit – 1 ', 'Communication skills\r\nProcess, types and levels of communication.\r\nTechnical Communication and General Communication. Factors to be\r\nconsidered in technical communication.\r\n', 0, 'GTU Type', 1, '2012-07-06', '2012-07-06', '01:00:00', '2012-07-06', '2012-07-06', '03:55:00', 'jkkjkjk', '', '2', '2012-07-05 06:57:49'),
(30, 2, 'Unit – 2', 'Verbal and non-verbal communication (kinesics)\r\nComponents of Non-verbal Communication (Kinesics)\r\nBarriers to effective communication. (Noise in\r\ncommunication) Communication across cultures.\r\noral\r\nand\r\nwritten\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(31, 2, 'Unit – 3', 'Listening skills - Types of Listening Active Listening V/s Passive Listening\r\nEmpathetic Listening. Traits of a good listener, barriers in effective listening,\r\nTips for effective listening.', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(32, 2, 'Unit – 4', 'Effective presentation strategies. Defining purpose, analysis of audience and\r\nlocate, organizing contents. Preparing an outline of the presentation. Visual\r\naids, nuances of delivery, Body language and effective presentation.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(33, 2, 'Unit – 5', 'Interviews\r\nIntroduction, General preparations for an interview, Types of questions\r\ngenerally asked at the interviews. Types of interviews, Importance of non-\r\nverbal aspects.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(34, 2, 'Unit – 6', 'Group Discussions\r\nIntroduction, Group discussions as a part of the selection process, guidelines\r\nfor group discussion. Role functions in group discussion.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(35, 2, 'Unit – 7', 'Paragraph Development, Introduction, Topic sentence and supporting\r\nsentences. Attributes of a good paragraph. Types of paragraphs.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(36, 2, 'Unit – 8', 'Letter - Writing\r\nBusiness Letters, Structure and types of a business letter, Letter of Inquiry,\r\nLetters of complaint, regret and adjustment.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(37, 2, 'Unit – 9', 'Technical reports\r\nIntroduction, types of reports, structure of reports, objectives and\r\ncharacteristics of reports.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(38, 2, 'Unit – 10', 'Technical Proposals\r\nDefinition, Purpose, Types, Characteristics, Structure, Style and appearance.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(39, 2, 'Unit – 11', 'Technical Descriptions\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(40, 2, 'Unit – 12', 'Effective Reading Skills\r\nPurpose of reading, skimming\r\ncomprehension skills.\r\nand\r\nscanning.\r\nTips\r\nfor\r\nimproving\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(41, 2, 'Unit – 13', 'Job application\r\nEssential parts - Cover Letter and the ‘resume’. Types of ‘resumes’\r\n       (Curriculum Vitae) Chronological ‘resume’, functional ‘resume’.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(42, 4, 'Scope of Civil Engineering', 'Introduction: Impact of Infrastructural Development on the Economy of a Country,\r\nRole of Civil Engineers, Importance of Planning, Scheduling and Construction\r\nManagement.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(43, 4, 'Surveying', 'Introduction: Surveying and levelling, Object and uses, Primary divisions,\r\nFundamental principles, Classification of surveying, Plans and maps, Scales, Units of\r\nmeasure.\r\nLinear measurements: Methods, Instruments used in chaining; Chain surveying,\r\nRanging; Obstacles; Errors in chaining, Tape corrections, Conventional symbols\r\nCompass surveying: Types and uses of compass, Bearings, Whole Circle Bearings,\r\nand Reduced Bearings, Computation of angles; Meridians; declinations and dip of\r\nneedle; Local attraction; Chain and compass surveying field work.\r\nElevation measurements: Levelling, object and uses, terms used in levelling, levelling\r\ninstruments, methods of levelling, recording and methods of reducing, errors in\r\nlevelling, contours; characteristics and applications.\r\nAreas and volumes; use of a Planimeter.\r\nModern Tools of Surveying and Mapping: Introduction to Theodolite, Electronic\r\nDistance Measurement Instruments, Total Station, Global Positioning System, Remote\r\nSensing and Geographic Information System.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(44, 4, 'Construction Materials', 'Requirement, types, uses, properties and importance of Civil Engineering materials like\r\nStone, Bricks, Lime, Cement, Ferrous and Non Ferrous Metals, Ceramic Materials,\r\nTimber, Sand, Aggregate, Mortar and Concrete, Paints and Varnishes, Glass , Plastic,\r\nConducting, Magnetic, and Miscellaneous Materials.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(45, 4, 'Elements of Building Construction', 'Planning: Elementary principles and basic requirements of a building planning, layout\r\nof residential & industrial buildings.\r\nConstruction: Classification of buildings based upon occupancy and structure, Design\r\nLoads, Common building components, their functions, and nominal dimensions.\r\nElements of building drawing. Introduction to building byelaws.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(46, 4, 'Water Resources Development', 'Elementary Hydrology, Sources of water, Watershed Development, water requirements\r\nand its conservation, Hydraulic Structures of Storage, Water Conveyance System:\r\nCanals; Water Conduits.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(47, 4, 'Transportation Engineering', 'Role of Transportation in National development, Transportation Ways, Surface\r\nTransportation and Aviation, Elements of Highway materials properties and highway\r\nconstruction, BOT Projects for Highways, Elements of Traffic Engineering and Traffic\r\nControl.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(48, 8, 'Review of limits, continuity, differentiability.', 'Review of limits, continuity, differentiability.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(49, 8, 'Mean value theorem, Taylors Theorem, Maxima and Minima.', 'Mean value theorem, Taylors Theorem, Maxima and Minima.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(50, 8, 'Riemann integrals, Fundamental theorem of Calculus, Improper inte- grals, applications to area, volu', 'Riemann integrals, Fundamental theorem of Calculus, Improper inte-\r\ngrals, applications to area, volume.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(51, 8, 'Convergence of sequences and series, power series.', 'Convergence of sequences and series, power series.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(52, 8, 'Partial Derivatives, gradient and directional derivatives, chain rule, maxima and minima, Lagrange m', 'Partial Derivatives, gradient and directional derivatives, chain rule,\r\nmaxima and minima, Lagrange multipliers.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(53, 8, 'Double and Triple integration, Jacobians and change of variables for- mula.', 'Double and Triple integration, Jacobians and change of variables for-\r\nmula.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(54, 8, 'Parametrization of curves and surfaces, vector Fields, line and surface integrals.', 'Parametrization of curves and surfaces, vector Fields, line and surface\r\nintegrals.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(55, 8, 'Divergence and curl, Theorems of Green, Gauss, and Stokes.', 'Divergence and curl, Theorems of Green, Gauss, and Stokes.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(56, 5, 'D.C. Circuits', 'Effect Of Temperature Upon Resistance, Solutions Of series,\r\nparallel in brief, star-delta combination of Resistances, KVL & KCL.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(57, 9, 'Vectors in Rn, notion of linear independence and dependence, linear span of a set of vectors, vector', 'Vectors in Rn, notion of linear independence and dependence, linear\r\nspan of a set of vectors, vector subspaces of Rn, basis of a vector\r\nsubspace.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(58, 9, 'Systems of linear equations, matrices and Gauss elimination, row space, null space, and column space', 'Systems of linear equations, matrices and Gauss elimination, row space,\r\nnull space, and column space, rank of a matrix.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(59, 9, 'Determinants and rank of a matrix in terms of determinants.', 'Determinants and rank of a matrix in terms of determinants.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(60, 5, 'Electrostatics & Capacitance', 'Definitions of Electrostatic, types of capacitors,\r\nseries, parallel combinations & related circuit calculations in brief charging &\r\ndischarging of capacitor. Energy stored in capacitor.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(61, 9, 'Abstract vector spaces, linear transformations, matrix of a linear trans- formation, change of basis', 'Abstract vector spaces, linear transformations, matrix of a linear trans-\r\nformation, change of basis and similarity, rank-nullity theorem.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(62, 9, 'Inner product spaces, Gram-Schmidt process, orthonormal bases, pro- jections and least squares appro', 'Inner product spaces, Gram-Schmidt process, orthonormal bases, pro-\r\njections and least squares approximation.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(63, 9, 'Eigenvalues and eigenvectors, characteristic polynomials, eigenvalues of special matrices ( orthogon', 'Eigenvalues and eigenvectors, characteristic polynomials, eigenvalues\r\nof special matrices ( orthogonal, unitary, hermitian, symmetric, skew-\r\nsymmetric, normal). algebraic and geometric multiplicity, diagonaliza-\r\ntion by similarity transformations, spectral theorem for real symmetric\r\nmatrices, application to quadratic forms.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(64, 5, 'Electromagnetics', 'Magnetic Circuit , Comparison Between Electric And\r\nMagnetic Circuits , Series/Parallel Magnetic Circuit Calculations , Magnetic\r\nHysteresis, Hysteresis And Eddy\r\nCurrent Loss, Magnetic Materials,\r\nElectromagnetic induction, Statically And Dynamically Induced E.M.F.S in brief,\r\nFleming''s Right hand rule-Left hand rule, Coefficients Of Self And Mutual\r\nInductances , Coefficient\r\nOf Coupling, Series/Parallel Combinations Of\r\nInductances, Rise And Decay Of Current In Inductive Circuits , Force\r\nExperienced By Current Carrying Conductor Placed In Magnetic Field.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(65, 5, 'Single Phase A.C. Circuits', 'Generation Of Alternating Voltages &\r\nCurrents, Their Equations, Definitions , R.M.S. And Average Values , Vector\r\nRepresentation Of Alternating Quantities , Addition And Subtraction Of Vectors\r\n, Complex Algebra., Phasor Relations Between Voltage And Current In Each Of\r\nResistance, Inductance And Capacitance , A.C. Series And Parallel Circuits ,\r\nPower And Power Factor , Methods Of Circuit Solution (Analytically &\r\nVectorially), Resonance In Series And Parallel Circuits.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(66, 5, 'Polyphase Circuits', 'Generation Of Polyphase Voltages , 3,Phase System ,\r\nPhase Sequence, Inter Connection Of 3 Phases , Voltage, Current And Power\r\nRelationships In Balanced Three Phase Circuits , Power Measurement In\r\nSingle Phase And 3 Phase Circuits.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(67, 7, 'Introduction to Environment, Ecology and Ecosystem', 'Definition and Inter-relationships amongst and between them\r\nComponents of Environment, Relationship between different\r\nMan-Environment relationship\r\nImpact of Technology on the environment\r\nEnvironmental Degradation:\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(68, 5, 'Batteries, Cables', 'Battery, life of batteries, charging & discharging of battery.\r\nCables, 2, 21/2, 3 and 4 core armored & unarmored cables.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(69, 7, 'Ecology & Ecosystems', 'Introduction: Ecology- Objectives and Classification\r\nConcepts of an ecosystem- structure & function of ecosystem\r\nComponents of ecosystem- Producers, Consumers, Decomposers\r\nBio-Geo- Chemical Cycles- Hydrological Cycle, carbon cycle, Oxygen Cycle,\r\nNitrogen Cycle, Sulfur Cycle\r\nEnergy Flow in Ecosystem\r\nFood Chains: Grazing, Detritus, & Food webs\r\nEcological Pyramids\r\nMajor Ecosystems: Forest Ecosystem, Grassland Ecosystem, Desert Ecosystem, Aquatic\r\nEcosystem, Estuarine Ecosystem\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(70, 5, 'Electrical Wiring', 'Connectors & switches, system of wiring, domestic wiring\r\ninstallation, sub circuits in domestic wiring, simple control circuit in domestic\r\ninstallation, industrial electrification.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(71, 7, 'Population & Natural Resources', 'Development of Habitation patterns and Environmental factors governing human settlement\r\nPopulation & Pollution , Reasons for overpopulation ,Population Growth, Demographic\r\nProjections and Population Structures ,Production of food\r\nRenewable & Nonrenewable Resources:\r\nRenewable Resources, Nonrenewable\r\nResources, Destruction versus Conservation\r\nWater Resources: Water Resources-Indian Scenario, Water Sources- Surface & Ground\r\nWater Sources, Uses & overuses of water resources, problems due to Overexploitation of\r\nWater Resources\r\nForest Resources : Forest Resources - Indian Scenario , Importance of forests- Ecologically &\r\nEconomically, Uses of forest products, Forest Types, Deforestations-Causes and effects,\r\nForest Degradation in India\r\nEnergy Resources : Energy Resources - Indian Scenario , Conventional Energy Sources & its\r\nproblems, non-conventional energy sources-Advantages & its limitations , Problems due to\r\nOverexploitation of Energy Resources\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(72, 5, 'Illumination', 'Types of lamps, fixtures & reflectors, illumination schemes for\r\ndomestic, industrial & commercial premises, Lumen requirements for different\r\ncategories.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(73, 7, 'Environmental Pollution', 'Types of Environmental Pollution\r\nWater Pollution : Introduction – Water Quality Standards , Sources of Water Pollution,\r\nClassification of water pollutants, Effects of water pollutants , Eutrophication\r\nAir Pollution : Composition of air , Structure of atmosphere, Ambient Air Quality Standards,\r\nClassification of air pollutants, Sources of common air pollutants like SPM, SO2, NOX –\r\nNatural & Anthropogenic Sources, Effects of common air pollutants\r\nLand & Noise Pollution : Introduction- Lithosphere, Land Uses, Causes of land\r\nDegradation, Sources of Noise Pollution, Effects of noise pollution\r\nCurrent Environmental Global Issues : Global Warming & Green Houses Effects, Acid Rain\r\n, Depletion of Ozone Layer\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(74, 5, 'Safety & protection', 'Safety, electric shock, first aid for electric shock other\r\nhazards of electrical laboratories & safety rules, use of multimeters, grounding,\r\nimportance of grounding, equipment of grounding for safety. Circuit protection\r\ndevices, fuses, MCB, ELCB & relays.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(75, 6, 'Introduction', ' Prime movers, Sources of energy, Types of prime movers, Force and\r\nmass, Pressure, Work, Power, Energy, Heat, Temperature, Units of heat, Specific\r\nheat capacity, Interchange of heat, Change of state, Mechanical equivalent of heat,\r\nInternal energy, Enthalpy,Entropy,Efficiency, Statements of Zeroth Law, First law\r\nand Second Law of Thermodynamics.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(76, 6, ' Prime movers, Sources of energy, Types of prime movers, Force and mass, Pressure, Work, Power, Ener', 'Introduction, Classification, Solid fuels, Liquid Fuels,\r\nGaseous fuels, LPG,CNG and biofuels ,Calorific values.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(77, 6, 'Properties of gases ', 'Gas laws, Boyle''s law, Charle''s law, Combined gas law,\r\nGas constant, Internal energy, Relation between Cp and Cv, Enthalpy, Non flow\r\nprocess, Constant volume process, Constant pressure process, Isothermal process,\r\nPoly-tropic process, Adiabatic process.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(78, 11, 'Architectural Acoustics', 'Classification of Sound : Loudness – Weber – Fechner law Decibel – Absorption\r\n     Coefficient – Reverberation – Saline’s formula – Factors affecting acoustics of\r\n            buildings and their remedies.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(79, 11, 'Ultrasonic', 'Introduction, production, properties and detection of ultrasonics. Determination of\r\nvelocity and application of ultrasonic in Engineering.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(80, 6, 'Properties of Steam ', 'Introduction, Steam formation, Types of Steam, Enthalpy,\r\nSpecific volume of steam and dryness fraction of steam , Internal energy, Steam\r\ntables, Non-flow process. Measurement of dryness fraction, Throttling\r\ncalorimeter, Separating calorimeter, Combined calorimeter.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(81, 6, 'Heat Engines', 'Thermal prime movers, Elementary heat engines, Sources of heat,\r\nWorking substances, Converting machines, Classification of heat engines, Heat\r\nengine cycles, Carnot cycle, , Rankine cycle, Ottocycle, Diesel cycle.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(82, 6, 'Steam Boilers', 'Introduction, Classification, Simple vertical boiler, Vertical multi-\r\ntubular boiler, Cochran type, Lancashire boiler, Locomotive boiler, Babcock and\r\nWilcox boiler, High pressure boilers, Boiler details, Boiler performance.\r\nFunctioning of different mountings and accessories.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(83, 6, 'Internal Combustion Engines', 'Introduction, Classification, Engine details, otto\r\nfour-stroke cycle, Diesel-four-stroke cycle, Difference between otto cycle and\r\nDiesel cycle, Two-stroke cycle, Difference between two-stroke and four-stroke\r\ncycle, indicated power (ip), Brake Power (bp),Efficiencies.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(84, 6, 'Speed Control', 'Introduction, Governors, I.C. Engine governing, Fly wheel.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(85, 6, 'Pumps', 'Introduction, Reciprocating pump, types and operation, Bucket pump, Air\r\nChamber, Centrifugal pumps, Types and Priming, Rotary pumps.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(86, 11, 'Crystal Physics', 'Introduction and classification of solids-crystal structure – The crystal systems and\r\n Bravias Lattice – Space Lattices of cubic systems – Miller Indices – Relation\r\n      between Interplanner Distance and cubic Edge and Laws Formula.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(87, 11, 'Band theory of Solids', 'Based theory of Solids – Classification of solids – Energy band structure of\r\n   conductors, insulator and semi conductions types of diodes (simple diode, Zener\r\n  diode, varactor diode, LED Solar cells, photovoltaic cell, Photo Conductivity, Hall\r\n effects.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(88, 6, 'Air Compressors', 'Introduction, Uses of Compressed air, Reciprocating\r\ncompressors, Operation of a compressor, Work for compression, Power required,\r\nReciprocating compressor efficiency, Multistage reciprocating compressors, Rotary\r\ncompressors.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(89, 11, 'LASERS ', 'Introduction and properties of Lasers, Stimulated and instantaneous emersion –\r\n Relation between Ecienstein’s ‘A’ and ‘B’ Coefficients-Population Inversion – Optical\r\n            – Pumping – Nd-Yag Laser and CO2 Laser – Application of Laser in Material\r\n                 Processing – Holography – Application of Lasers\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(90, 6, 'Refrigeration & Air Conditioning', 'Introduction, Refrigerant, Types of refrigerators,\r\nVapour compression refrigerating system, Window and split air conditioners.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(91, 11, 'Optical – Fibre Communication Introduction – Fibre – Optic System – advantages of        Fibre optic', 'Optical – Fibre Communication Introduction – Fibre – Optic System – advantages of\r\n       Fibre optics – Basic principle – Acceptance angle and Numerical Aperture – Types\r\n            of optics preparation through optical fibre\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(92, 6, 'Couplings, Clutches and Brakes', 'Introduction, Couplings, Clutches, Brakes,\r\nTypes of brakes. Difference between a brake and a clutch.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(93, 11, 'Conducting Materials', 'Introduction – conduction in Metals, Electron theory Q.M. treatment – Free electrode\r\n   theory of metals – Electrical Conductivity – Thermal Conductivity – Wildemann –\r\n          Franz law – Drawbacks of classical free electrode theory\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(94, 11, 'Super Conducting Materials', 'Introduction to super conductor – properties of super conductor Type I and Type II\r\n super conductor – Comparision between I and II – High T conductors – Application\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(95, 6, 'Transmission of Motion and Power', 'Introduction, Methods of drive, Power\r\ntransmission elements, shaft and axle, Belt-drive, Pulleys, Power transmitted by a\r\nbelt, Chain drive, Friction drive, Gear drive\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(96, 11, 'New Engineering Materials', 'Introduction – Metallic glasses, types, properties, preparation and its application –\r\n   Introduction to nano technology – method of producing, properties and its\r\n    application – shape memory alloys – types – shape Memory effect – Pseudo\r\nelasticity – properties – application – Bio-materials – General information –\r\nBiomedical compatibly of Ti-Al-Nb alloys for implant application.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(97, 6, 'Important Engineering Materials', 'Properties of materials, Ferrous & Nonferrous\r\nmaterials and other important engineering materials such as Timber, Abrasive\r\nmaterial, silica, ceramics, glass, graphite, diamond, plastic, polymer and composite\r\nmaterial\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(98, 11, 'Non-Destructive Testing', 'Introduction – The objective of NDT – Types of Defects – Methods of NDT (Liquid\r\nPenetrate – Dye Penetrate Radiographic) x X-ray Radiography – X-ray Fluoroscopy\r\n– Ultrasonic Inspection method – Pulse Echo System – Visual Display units.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(99, 12, 'Demonstration', 'Demonstration of Hand tools, Power tools, Machine tools, Processes, Materials, Marking, and\r\nMeasurement in following shops:Carpentry, Pattern making, Foundry, Fitting, Smithy, Welding,\r\nTin smithy,Plumbing, Machine shop and Electroplating.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(100, 12, 'Making Jobs', 'Making Jobs in Fitting, Carpentry, Smithy, Tin smithy and Welding shops\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(101, 12, 'Journal is to be prepared', 'Journal is to be prepared covering the topics of demonstration and Report about Process /\r\nMethodology / Inspection for making jobs.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(102, 13, 'Introduction', 'Introduction to Engineering Graphics, Drawing instruments and accessories, BIS - SP\r\n46. Use of plane scales and Representative Fraction.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(103, 13, 'Engineering Curves', 'Classification of Engineering Curves, Construction of Conics,\r\nCycloidal Curves, Involutes and Spirals.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(104, 13, 'Loci of Points', 'Path of the points moving on simple arrangements and simple\r\nmechanisms, slider crank mechanism, four bar chain mechanism etc.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(105, 13, 'Projections of Points & Lines', 'Introduction to principal planes of projections, Projections\r\nof the points located in same quadrant and different quadrants, Projections of line with\r\nits inclination to one reference plane and with two reference planes. True length of the\r\nline and its inclination with the reference planes.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(106, 13, 'Projections of Planes', 'Concept of different planes, Projections of planes with its\r\ninclination to one reference plane and with two reference planes. Concept of auxiliary\r\nplane method for projections of the plane.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(107, 13, 'Projections of Solids & Section of Solids', 'Classification of solids. Projections of solids\r\nlike Cylinder, Cone, Pyramid and Prism with its inclination to one reference plane and\r\nwith two reference planes. Section of such solids and the true shape of the section.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(108, 13, 'Development of Lateral Surfaces', 'Concept of development of the different surfaces.\r\nParallel Line Development and Radial Line Development.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(109, 13, 'Orthographic Projections', 'Principle of projection, Principal planes of projection,\r\nProjections from the pictorial view of the object on the principal planes for View from\r\nFront, View from Top and View from Side using first angle projection method and third\r\nangle projection method, Full Sectional View.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(110, 13, 'Isometric Projections and Isometric View or Drawing', 'Isometric Scale, Conversion of\r\northographic views into isometric projection, isometric view or drawing.\r\n', 0, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(111, 14, 'Convergence of Sequences and Series, Power Series and radius of convergence.', 'Convergence of Sequences and Series, Power Series and radius of\r\nconvergence.\r\n', 4, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(112, 14, 'Monotonic function, Concavity and Convexity of a curve, Points of  inflection, Curve tracing: Cartes', 'Monotonic function, Concavity and Convexity of a curve, Points of \r\ninflection, Curve tracing: Cartesian and Polar curves. \r\n', 3, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(113, 14, 'Taylor’s series, Maclaurin’s series, Convergence of Taylor’s series and        error estimation, Ind', 'Taylor’s series, Maclaurin’s series, Convergence of Taylor’s series and \r\n      error estimation, Indeterminate forms, \r\n', 5, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(114, 14, 'Fundamental theorem of calculus, Leibnitz,s Rule,  Reduction  formulae. ', 'Fundamental theorem of calculus, Leibnitz,s Rule, \r\nReduction \r\nformulae. \r\n', 6, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(115, 14, 'Improper Integrals and its convergence, Application of definite  integrals: volume by slicing, by ro', 'Improper Integrals and its convergence, Application of definite \r\nintegrals: volume by slicing, by rotation about an axis and by cylindrical \r\nshells. \r\n', 6, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(116, 14, 'Limit, Continuity of functions of several variables, Partial derivatives,  Chain rules, Euler’s theo', 'Limit, Continuity of functions of several variables, Partial derivatives, \r\nChain rules, Euler’s theorem \r\n', 4, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(117, 14, 'Application of partial derivatives: Tangent planes and normal,  Linearization and error approximatio', 'Application of partial derivatives: Tangent planes and normal, \r\nLinearization and error approximation, extreme values and saddle \r\npoints, Lagrange multipliers, partial derivatives with constrained \r\nvariables, Taylor’s expansion. \r\n', 8, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(118, 14, 'Double and Triple integrals, Change of order of integration, Change of  variables, Jacobian. Applica', 'Double and Triple integrals, Change of order of integration, Change of \r\nvariables, Jacobian. Applications: Area, Volume. \r\n', 6, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(119, 15, 'Gradients and Directional derivatives ', 'Gradients and Directional derivatives \r\n', 1, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(120, 15, 'Parametrization of curves, Arc length and surface area of parametrized curves  and surfaces. ', 'Parametrization of curves, Arc length and surface area of parametrized curves \r\nand surfaces. \r\n', 2, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(121, 15, 'Line integrals, Work, circulation, flux, path independence, conservative field,  surface integrals ', 'Line integrals, Work, circulation, flux, path independence, conservative field, \r\nsurface integrals \r\n', 3, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(122, 15, 'Divergence and curl, Green’s theorem, Stoke’s theorem and Divergence      theorem. ', 'Divergence and curl, Green’s theorem, Stoke’s theorem and Divergence \r\n    theorem. \r\n', 5, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(123, 15, 'Vectors in Rn, properties of Rn, dot product, norm and distance properties in  Rn, Pyathagorean theo', 'Vectors in Rn, properties of Rn, dot product, norm and distance properties in \r\nRn, Pyathagorean theorem in Rn, Vector Spaces, Vector Subspaces, Linear \r\nindependence and dependence, Linear span, Basis of subspaces, Extension \r\nto basis. \r\n', 7, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(124, 15, 'Methods to solve system of linear equations: Gauss elimination, Gauss  Jordan method, Elementary row', 'Methods to solve system of linear equations: Gauss elimination, Gauss \r\nJordan method, Elementary row operation, Row reduced echelon form, \r\nInverse of matrices, Row space, Column space, Null space, Rank. \r\n', 7, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(125, 15, 'Determinants and its properties, Cramer’s rule. ', 'Determinants and its properties, Cramer’s rule. \r\n', 2, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49');
INSERT INTO `subject_syllabus` (`id`, `sub_id`, `topic_name`, `topic_description`, `hours`, `subject_syllabus_type`, `teaching_method`, `start_date`, `end_date`, `duration`, `actual_start_date`, `actual_end_date`, `actual_duration`, `actual_remarks`, `deliver_topic`, `created_by`, `created_date`) VALUES
(126, 15, 'Linear transformation in Rn and basic properties, Linear transformation as  Rotation, reflection, ex', 'Linear transformation in Rn and basic properties, Linear transformation as \r\nRotation, reflection, expansion, contraction, shear, projection, Matrix of linear \r\ntransformations, Change of basis and Similarity, Rank Nullity theorem. \r\n', 5, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(127, 15, 'Inner product space and properties, Angel and orthogonality and normality of  basis, Gram Schmidt’s ', 'Inner product space and properties, Angel and orthogonality and normality of \r\nbasis, Gram Schmidt’s process, Least squares approximations (linear system) \r\n', 5, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49'),
(128, 15, 'Eigen values and eigen vectors, Caley-Hamilton theorem, Eigen values of  orthogonal, symmetric, skew', 'Eigen values and eigen vectors, Caley-Hamilton theorem, Eigen values of \r\northogonal, symmetric, skew symmetric, hermitian, skew hermitian, unitary \r\nand normal matrices, Algebraic and Geometric multiplicity, Diagonalization by \r\nsimilarity transformation, Spectral theorem for real symmetric matrices, \r\nApplication to quadratic forms. \r\n', 5, 'GTU Type', 0, '0000-00-00', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, '', '2', '2012-07-05 06:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `subject_teaching_schema`
--

CREATE TABLE IF NOT EXISTS `subject_teaching_schema` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `subject_id` int(3) NOT NULL,
  `theory_credit` int(3) NOT NULL,
  `tutorial_credit` int(3) NOT NULL,
  `practical_credit` int(3) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `subject_teaching_schema`
--

INSERT INTO `subject_teaching_schema` (`id`, `subject_id`, `theory_credit`, `tutorial_credit`, `practical_credit`, `created_by`, `creation_date`) VALUES
(1, 1, 3, 0, 2, 2, '2012-07-04'),
(2, 3, 2, 0, 4, 2, '2012-07-04'),
(3, 2, 1, 0, 2, 2, '2012-07-04'),
(4, 10, 3, 0, 2, 2, '2012-07-04'),
(5, 4, 4, 0, 2, 2, '2012-07-05'),
(6, 8, 3, 2, 0, 2, '2012-07-05'),
(7, 5, 4, 0, 2, 2, '2012-07-05'),
(8, 7, 3, 0, 0, 2, '2012-07-05'),
(9, 6, 4, 0, 2, 2, '2012-07-05'),
(10, 9, 3, 2, 0, 2, '2012-07-05'),
(11, 12, 0, 0, 4, 2, '2012-07-05'),
(12, 11, 3, 0, 2, 2, '2012-07-05'),
(13, 14, 3, 2, 0, 2, '2012-07-05'),
(14, 13, 2, 0, 4, 2, '2012-07-05'),
(15, 15, 3, 2, 0, 2, '2012-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `subject_textbook`
--

CREATE TABLE IF NOT EXISTS `subject_textbook` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sub_id` int(10) NOT NULL,
  `isbn_no` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subject_textbook_type` varchar(10) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `subject_textbook`
--

INSERT INTO `subject_textbook` (`id`, `sub_id`, `isbn_no`, `title`, `subject_textbook_type`, `photo`, `created_by`, `created_date`) VALUES
(1, 3, '0', 'Programming in ANSI C, 4th edition', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(2, 3, '0', 'Object oriented programming with C++, 3rd edition', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(3, 8, '0', ' Hughes-Hallett et al., Calculus - Single and Multivariable (3rd Edition), John-Wiley and Sons (2003', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(4, 8, '0', 'James Stewart, Calculus (5th Edition), Thomson (2003).', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(5, 8, '0', 'T. M. Apostol, Calculus, Volumes 1 and 2 (2nd Edition), Wiley Eastern 1980.', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(6, 8, '0', 'G. B. Thomas and R. L. Finney, Calculus and Analytic Geometry', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(7, 9, '0', 'H. Anton, Elementary linear algebra with applications (8th Edition), John Wiley (1995).', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(8, 9, '0', 'G. Strang, Linear algebra and its applications (4th Edition), Thom- son(2006).', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(9, 9, '0', ' S. Kumaresan, Linear algebra - A Geometric approach, Prentice Hall of India (2000).', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(10, 9, '0', 'E. Kreyszig, Advanced engineering mathematics Wiley (1999). Gujarat Technological University. B.E Se', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(11, 13, '0', 'A Text Book of Engineering Graphics By P.J.Shah S.Chand & Company Ltd., New Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(12, 13, '0', 'A Text Book of Machine Drawing By P.J.Shah S.Chand & Company Ltd., New Delhi', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(13, 13, '0', 'Elementary Engineering Drawing By N.D.Bhatt Charotar Publishing House, Anand', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(14, 13, '0', 'Geometrical and Machine Drawing By N.D.Bhatt Charotar Publishing House, Anand', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(15, 14, '0', 'Maurice D. Weir, Joel Hass, Frank R. Giordano, Thomas’ Calculus, Person Education (11th edition) Sec', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(16, 14, '0', 'James Stewart, Calculus (5th Edition), Thomson (2003).Sections: 6.1-6.3, 14.1- 14.5, 14.7-14.8, 15.1', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(17, 15, '0', 'E. Kreyszig, Advanced Engineering Mathematics (8th Edition), Wiley-India (1999) Sections: 8.9-8.11, ', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55'),
(18, 15, '0', 'H. Anton, Elementary Linear Algebra with applications (9th Edition), Wiley-India (2008).Chapters 1 t', 'GTU Type', 'no_image', '2', '2012-07-05 06:55:55');

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
  `subject_type_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`subject_type_id`),
  KEY `fk_org_id` (`subject_organization_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `subject_type`
--

INSERT INTO `subject_type` (`subject_type_id`, `subject_type_name`, `subject_organization_id`, `subject_active`, `subject_modified_date`, `subject_modified_user`, `subject_type_organization_id`) VALUES
(1, 'Theory', 1, 1, '2012-07-04 17:26:37', 2, 1),
(2, 'Practical', 1, 1, '2012-07-04 17:26:53', 2, 1);

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
-- Table structure for table `tbl_columns`
--

CREATE TABLE IF NOT EXISTS `tbl_columns` (
  `id` varchar(100) NOT NULL,
  `data` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teaching_aids`
--

CREATE TABLE IF NOT EXISTS `teaching_aids` (
  `teaching_aids_id` int(3) NOT NULL AUTO_INCREMENT,
  `teaching_aids_name` varchar(50) NOT NULL,
  `teaching_aids_alias` varchar(10) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `teaching_aids_created_by` int(5) NOT NULL,
  `teaching_aids_created_date` datetime NOT NULL,
  PRIMARY KEY (`teaching_aids_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `teaching_aids`
--

INSERT INTO `teaching_aids` (`teaching_aids_id`, `teaching_aids_name`, `teaching_aids_alias`, `remarks`, `teaching_aids_created_by`, `teaching_aids_created_date`) VALUES
(1, 'Video Fim', 'vf', 'good g', 2, '2012-07-04 14:10:35'),
(2, 'Power point presentation', 'pp', 'good', 2, '2012-07-04 14:13:39'),
(4, 'Models', 'M', 'good', 2, '2012-07-04 14:25:18'),
(5, 'Over head projector', 'OHP', 'good', 2, '2012-07-04 16:09:14'),
(6, 'Chalk Board', 'CB', 'good', 2, '2012-07-04 16:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_methods`
--

CREATE TABLE IF NOT EXISTS `teaching_methods` (
  `teaching_methods_id` int(3) NOT NULL AUTO_INCREMENT,
  `teaching_methods_name` varchar(50) NOT NULL,
  `teaching_methods_alias` varchar(10) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `teaching_methods_created_by` int(3) NOT NULL,
  `teaching_methods_created_date` datetime NOT NULL,
  PRIMARY KEY (`teaching_methods_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `teaching_methods`
--

INSERT INTO `teaching_methods` (`teaching_methods_id`, `teaching_methods_name`, `teaching_methods_alias`, `remarks`, `teaching_methods_created_by`, `teaching_methods_created_date`) VALUES
(1, 'Lecture', 'L', 'good g', 2, '2012-07-04 15:35:46'),
(2, 'Group Discussion', 'GD', 'good', 2, '2012-07-04 16:04:43'),
(3, 'Quiz', 'Q', 'good', 2, '2012-07-04 16:05:08'),
(4, 'Seminar', 'S', 'good', 2, '2012-07-04 16:05:28'),
(5, 'Team Teaching', 'TT', 'good', 2, '2012-07-04 16:06:14'),
(6, 'Laboratory Visit', 'LV', 'good', 2, '2012-07-04 16:06:51'),
(7, 'Industrial Visit', 'IV', 'good', 2, '2012-07-04 16:07:44'),
(8, 'Demonstration', 'D', 'good', 2, '2012-07-04 16:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE IF NOT EXISTS `time_table` (
  `timetable_id` int(11) NOT NULL AUTO_INCREMENT,
  `timetable_name` varchar(50) NOT NULL,
  `clg_start_time` time NOT NULL,
  `No_of_Lec` int(3) NOT NULL,
  `No_Of_Break` int(3) NOT NULL,
  `timetable_branch_id` int(3) NOT NULL,
  `timetable_acdm_term_period_id` int(3) NOT NULL,
  `timetable_acdm_term_name_id` int(3) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` datetime NOT NULL,
  `time_table_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`timetable_id`),
  KEY `fk_acdm_period _id` (`timetable_acdm_term_period_id`),
  KEY `fk_acdm_name _id` (`timetable_acdm_term_name_id`),
  KEY `fk_branch_id` (`timetable_branch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `time_table_detail`
--

CREATE TABLE IF NOT EXISTS `time_table_detail` (
  `timetable_detail_id` int(3) NOT NULL AUTO_INCREMENT,
  `timetable_id` int(3) NOT NULL,
  `subject_id` int(3) NOT NULL,
  `faculty_emp_id` int(3) NOT NULL,
  `branch_id` int(3) DEFAULT NULL,
  `acdm_period_id` int(3) DEFAULT NULL,
  `acdm_name_id` int(3) DEFAULT NULL,
  `room_id` int(3) NOT NULL,
  `division_id` int(3) NOT NULL,
  `batch_id` int(3) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `lec` int(3) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` datetime NOT NULL,
  `time_table_detail_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`timetable_detail_id`),
  KEY `fk_sub_id` (`subject_id`),
  KEY `fk_fac_emp_id` (`faculty_emp_id`),
  KEY `fk_branch_id` (`branch_id`),
  KEY `fk_room_id` (`room_id`),
  KEY `fk_div_id` (`division_id`),
  KEY `fk_batch_id` (`batch_id`),
  KEY `fk_period_id` (`acdm_period_id`),
  KEY `fk_sem_name_id` (`acdm_name_id`),
  KEY `fk_timtable_id` (`timetable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_organization_email_id` varchar(60) NOT NULL,
  `user_password` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(15) NOT NULL,
  `user_created_by` int(3) NOT NULL,
  `user_creation_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=313 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_organization_email_id`, `user_password`, `user_type`, `user_created_by`, `user_creation_date`) VALUES
(1, 'sadmin@hansaba.com', '638e1b88a075ff8ff17a10dbb36b42d5', '', 1, '2012-07-26 07:21:20'),
(2, 'admin@hansaba.com', 'f6fdffe48c908deb0f4c3bd36c032e72', '', 1, '2012-07-26 11:32:00'),
(3, 'smit.patel@hansabacollege.com', '8ab9b7b38f18473260ab3a47f7c6e7e1', 'student', 2, '0000-00-00 00:00:00'),
(4, 'hardik.patel@hansabacollege.com', '6da5bcbce43f2778c0ec9ff10bc481e8', 'student', 2, '0000-00-00 00:00:00'),
(5, 'ronak.patel@hansabacollege.com', 'caf7f0325f4a5a8e2e7b0f776489fe7c', 'student', 2, '0000-00-00 00:00:00'),
(6, 'jigar.patel@hansabacollege.com', 'b578e284f4298a460437936a93b53376', 'student', 2, '0000-00-00 00:00:00'),
(7, 'Yuvangsinh.rajput@hansabacollege.com', 'ce3d35531a72a060bbaa164da24d160a', 'student', 2, '0000-00-00 00:00:00'),
(8, 'ankit.ghughada@hansabacollege.com', '34f1dd011e24e833f3c6aefb2ff5ffe7', 'student', 2, '0000-00-00 00:00:00'),
(9, 'Charmin.Patel@hansabacollege.com', '17fc2d19d525af7b82ac36de0c1f973c', 'student', 2, '0000-00-00 00:00:00'),
(10, 'ankit.patel@hansabacollege.com', 'fe7083ebbbb17e3d3f08d0d35470c9c4', 'student', 2, '0000-00-00 00:00:00'),
(11, 'mayur.patel@hansabacollege.com', '8c5375d7259fd3dad52b7ebab6d6220a', 'student', 2, '0000-00-00 00:00:00'),
(12, 'Dharva.patel@hansabacollege.com', '6bfaa39c041e476022c3eddbc4d0432b', 'student', 2, '0000-00-00 00:00:00'),
(13, 'meet.kapadi@hansabacollege.com', '29ea58688eb5307945f528192ce94d78', 'student', 2, '0000-00-00 00:00:00'),
(14, 'parth.raval@hansabacollege.com', '74560d816a42cba9278262d3b1590435', 'student', 2, '0000-00-00 00:00:00'),
(15, 'Bharat.prajapati@hansabacollege.com', 'adac452598f8928bd27c7d49e0c43ee3', 'student', 2, '0000-00-00 00:00:00'),
(16, 'vanraj.thakor@hansabacollege.com', 'df3efc19984ec2c761018a63b9821e07', 'student', 2, '0000-00-00 00:00:00'),
(17, 'ashish.patel@hansabacollege.com', 'e76a7d836d905a4730c1d1112a577f3c', 'student', 2, '0000-00-00 00:00:00'),
(18, 'harsh.senor@hansabacollege.com', 'f5552b9d0e7036653a1a3adddbae1961', 'student', 2, '0000-00-00 00:00:00'),
(19, 'akshay.patel@hansabacollege.com', 'b87593d9cc2dd6e7539fec943924fe60', 'student', 2, '0000-00-00 00:00:00'),
(20, 'ravi.parikh@hansabacollege.com', 'f8f67321ee5234fc3395cc3c7c40fd17', 'student', 2, '0000-00-00 00:00:00'),
(21, 'dhairya.maheta@hansabacollege.com', 'c3b149e7e119879cac73ea331c0495dc', 'student', 2, '0000-00-00 00:00:00'),
(22, 'mitesh.saripadiya@hansabacollege.com', '3116f7146234f63e2afe613d05c79374', 'student', 2, '0000-00-00 00:00:00'),
(23, 'Taufeeqkhan.mansuri@hansabacollege.com', '08c4859601c71f0ba0e090a1c1753bbb', 'student', 2, '0000-00-00 00:00:00'),
(24, 'Roshan.patel@hansabacollege.com', '693922732443a3eeaebad0353931395c', 'student', 2, '0000-00-00 00:00:00'),
(25, 'dipak.sharma@hansabacollege.com', 'f963021834d7720d78ad50b5d830d8fd', 'student', 2, '0000-00-00 00:00:00'),
(26, 'brijesh.thakkar@hansabacollege.com', 'c499094cffdbd76dac3e9b420341e452', 'student', 2, '0000-00-00 00:00:00'),
(27, 'hitesh.luhana@hansabacollege.com', '7a46ea1a1df7246cf9c6b11f340f4e15', 'student', 2, '0000-00-00 00:00:00'),
(28, 'hardikg.patel@hansabacollege.com', '5539ef0370be60a6c797ccd3eb687ca6', 'student', 2, '0000-00-00 00:00:00'),
(29, 'pruthvi.patel@hansabacollege.com', '7ab14d9d7cf50c09c012c76caa4cb780', 'student', 2, '0000-00-00 00:00:00'),
(30, 'Hardikr.patel@hansabacollege.com', '68eb3de76881340ca52af9b255239466', 'student', 2, '0000-00-00 00:00:00'),
(31, 'nishit.patel@hansabacollege.com', '2a3f7f12da42ecd2389a1c06d8c35057', 'student', 2, '0000-00-00 00:00:00'),
(32, 'parth.patel@hansabacollege.com', '45c140c98cc27af2ef85c04df4923774', 'student', 2, '0000-00-00 00:00:00'),
(33, 'sooraj.patel@hansabacollege.com', '86b96a7eeb4ca717140afc0ca8989bf9', 'student', 2, '0000-00-00 00:00:00'),
(34, 'vikramji.thakor@hansabacollege.com', '36649f21711fae7c50cbd970a60b6229', 'student', 2, '0000-00-00 00:00:00'),
(35, 'dhruv.devada@hansabacollege.com', '23020ce26c12d93c8ba2f45689d2429e', 'student', 2, '0000-00-00 00:00:00'),
(36, 'mukund.darji@hansabacollege.com', '723ea79dba40fd355950ddc5fa1b69dc', 'student', 2, '0000-00-00 00:00:00'),
(37, 'jaymin.prajapati@hansabacollege.com', 'b9e8be59c271eb16c66089347864f6e8', 'student', 2, '0000-00-00 00:00:00'),
(38, 'aakash.chaudhari@hansabacollege.com', 'dec02ef052a91ac6b18b12276bed41c0', 'student', 2, '0000-00-00 00:00:00'),
(39, 'sachin.raval@hansabacollege.com', '4dc05e8997f1e28bbf9156b00b75437e', 'student', 2, '0000-00-00 00:00:00'),
(40, 'vipul.chaudhary@hansabacollege.com', '5c38f6c251c3991d59100dea67b784b7', 'student', 2, '0000-00-00 00:00:00'),
(41, 'nilesh.loh@hansabacollege.com', '4929b03abc2f370fabe0ddc6a86d76de', 'student', 2, '0000-00-00 00:00:00'),
(42, 'suresh.makwana@hansabacollege.com', '59971471967b38cdf74ff5b275c1b21d', 'student', 2, '0000-00-00 00:00:00'),
(43, 'maulik.parekh@hansabacollege.com', '4862ff3f298947d944f98c6c8f4921b2', 'student', 2, '0000-00-00 00:00:00'),
(44, 'chetan.prajapati@hansabacollege.com', '77ed2cf4dafffb218fc368328d45bad9', 'student', 2, '0000-00-00 00:00:00'),
(45, 'nilesh.gelot@hansabacollege.com', '4132b504824d81aae70525306633d81e', 'student', 2, '0000-00-00 00:00:00'),
(46, 'jaymin.modi@hansabacollege.com', '28ce2cb0019397f9b0b85d8639f9a1aa', 'student', 2, '0000-00-00 00:00:00'),
(47, 'kuldip.chauhan@hansabacollege.com', '9792bd8e7980dcf470475e081c5ce780', 'student', 2, '0000-00-00 00:00:00'),
(48, 'akash.parmar@hansabacollege.com', 'aa4f724eb90c36f263f64b9ede554bf9', 'student', 2, '0000-00-00 00:00:00'),
(49, 'barkat.patel@hansabacollege.com', '93a63472191eedab722453bf600aa113', 'student', 2, '0000-00-00 00:00:00'),
(50, 'ravi.patel@hansabacollege.com', 'b262a57efb02e996954b31099659d42f', 'student', 2, '0000-00-00 00:00:00'),
(51, 'jinesh.shah@hansabacollege.com', '861f6a43873e417541a014d59ab2dcc8', 'student', 2, '0000-00-00 00:00:00'),
(52, 'mayank.patel@hansabacollege.com', '3cb22ab6634dc7a68597586cd6de7da2', 'student', 2, '0000-00-00 00:00:00'),
(53, 'ketul.patel@hansabacollege.com', 'adc9a27d6eddb9202b1a7cd17de69dc3', 'student', 2, '0000-00-00 00:00:00'),
(54, 'priyank.patel@hansabacollege.com', '74de59cb63624b1ad6ec9630b686eb17', 'student', 2, '0000-00-00 00:00:00'),
(55, 'ammar.manasiya@hansabacollege.com', '39fc0ed91ca4321ac3f70ddddfc130e0', 'student', 2, '0000-00-00 00:00:00'),
(56, 'Vishwas.limbachiya@hansabacollege.com', 'a6e880621704ba5a22ad1376a5ab1225', 'student', 2, '0000-00-00 00:00:00'),
(57, 'saumik.patel@hansabacollege.com', '864244418b80f3fef73c5784edbba85d', 'student', 2, '0000-00-00 00:00:00'),
(58, 'meet.patel@hansabacollege.com', 'f7d65da05a64eca69c081fec6fa3e2ee', 'student', 2, '0000-00-00 00:00:00'),
(59, 'viral.Patel@hansabacollege.com', 'e22cf16c2ed4c875e333c5334a5196a0', 'student', 2, '0000-00-00 00:00:00'),
(60, 'krupal.prajapati@hansabacollege.com', 'b03dd99d358cbc0c9e3fb03a75b0fcca', 'student', 2, '0000-00-00 00:00:00'),
(61, 'ankit.rajput@hansabacollege.com', '39be9f827c8a01fa1f52e8d5780cb4e0', 'student', 2, '0000-00-00 00:00:00'),
(62, 'Asrarulhakk.dhukka@hansabacollege.com', '75498cf5f4be3e823834e74669605f11', 'student', 2, '0000-00-00 00:00:00'),
(63, 'Harshil.joshi@hansabacollege.com', '7f5a2ff9e0a45817d00b19d9cfa3b345', 'student', 2, '0000-00-00 00:00:00'),
(64, 'Divyang.patel@hansabacollege.com', '2d63723ef46e3d9bea1ea90b00335889', 'student', 2, '0000-00-00 00:00:00'),
(65, 'Jaimin.patel@hansabacollege.com', '5b825b7bd3be2a0b1919dfb56e83dae6', 'student', 2, '0000-00-00 00:00:00'),
(66, 'jaydeepsinh.chauhan@hansabacollege.com', 'a35648e128dfd42cdcac2e3953ee389e', 'student', 2, '0000-00-00 00:00:00'),
(67, 'rahul.raval@hansabacollege.com', '18ffa22f67924e5bb87b839269a613b3', 'student', 2, '0000-00-00 00:00:00'),
(68, 'divyaben.khandavi@hansabacollege.com', '67bb8da066eb4d21b3151a151c2a27e5', 'student', 2, '0000-00-00 00:00:00'),
(69, 'smit.patel@hansabacollege.com', '8ab9b7b38f18473260ab3a47f7c6e7e1', 'student', 2, '0000-00-00 00:00:00'),
(70, 'kiran.karnavat@hansabacollege.com', 'bb18283282669ba1695e4cb8178989d2', 'student', 2, '0000-00-00 00:00:00'),
(71, 'naresh.jaganiya@hansabacollege.com', '75526e4f62e03085aed5b0a407284993', 'student', 2, '0000-00-00 00:00:00'),
(72, 'kudrat.raval@hansabacollege.com', '0a53684deff944f676f0ce0a51956485', 'student', 2, '0000-00-00 00:00:00'),
(73, 'mahesh.dave@hansabacollege.com', 'c867d626bc520b7c1426a990d3fe78ef', 'student', 2, '0000-00-00 00:00:00'),
(74, 'parth.patel@hansabacollege.com', '45c140c98cc27af2ef85c04df4923774', 'student', 2, '0000-00-00 00:00:00'),
(75, 'manoj.gami@hansabacollege.com', 'dd2e55d49b5a7fd241d437335597fec7', 'student', 2, '0000-00-00 00:00:00'),
(76, 'bhavana.rana@hansabacollege.com', 'c3d8fc58dfed14b95911a38a12025620', 'student', 2, '0000-00-00 00:00:00'),
(77, 'krishma.dave@hansabacollege.com', 'f53040a1afbcabe5d47a58e20fb57a6a', 'student', 2, '0000-00-00 00:00:00'),
(78, 'urvil.patel@hansabacollege.com', '0a511784839a1c69a2537ec7f65b14eb', 'student', 2, '0000-00-00 00:00:00'),
(79, 'kajal.prajapati@hansabacollege.com', '4f6c001ad31d9359e2ec593a0314ea5a', 'student', 2, '0000-00-00 00:00:00'),
(80, 'Tarun.thumbadiya@hansabacollege.com', '009ed1a9700b0f614ee170e448992278', 'student', 2, '0000-00-00 00:00:00'),
(81, 'suresh.padhiyar@hansabacollege.com', '197b47df5cb09b6545d1e26a5bd39b9e', 'student', 2, '0000-00-00 00:00:00'),
(82, 'dhruv.raval@hansabacollege.com', '872cfcec8663704a4edcf296aefdc5bd', 'student', 2, '0000-00-00 00:00:00'),
(83, 'raut.bhavesh@hansabacollege.com', 'd8f8b6c0b447f6ba8091251cc05d1536', 'student', 2, '0000-00-00 00:00:00'),
(84, 'dipali.vaniya@hansabacollege.com', '50e19e9832add8b080824300c2c85c62', 'student', 2, '0000-00-00 00:00:00'),
(85, 'apurv.raval@hansabacollege.com', 'ba7348c4f87a35adcf94d5ce3af7f4c3', 'student', 2, '0000-00-00 00:00:00'),
(86, 'deval.raval@hansabacollege.com', 'cb98eb08b90412c71f0e05722d1e154f', 'student', 2, '0000-00-00 00:00:00'),
(87, 'rinajben.marediya@hansabacollege.com', '760ceea5844ef160963e982a37b0c5b3', 'student', 2, '0000-00-00 00:00:00'),
(88, 'krunal.thakkar@hansabacollege.com', '3e50f0b4fd007142e1f60ae81428b123', 'student', 2, '0000-00-00 00:00:00'),
(89, 'minhaz.ghasura@hansabacollege.com', '3a465d851bc5ea0f7cc0767808f79db7', 'student', 2, '0000-00-00 00:00:00'),
(90, 'sagar.suthar@hansabacollege.com', '93d277e353aba656bafca6579010b8f9', 'student', 2, '0000-00-00 00:00:00'),
(91, 'parth.patel@hansabacollege.com', '45c140c98cc27af2ef85c04df4923774', 'student', 2, '0000-00-00 00:00:00'),
(92, 'gani.misamali@hansabacollege.com', '2a42937a5b43014db3ce10501dc47413', 'student', 2, '0000-00-00 00:00:00'),
(93, 'Maulik.Patel@hansabacollege.com', '644d33faef1e9e5d570edc64156b9b91', 'student', 2, '0000-00-00 00:00:00'),
(94, 'patrasik@gmail.com', 'b1c7377592dc6898ef346a1939a45e85', 'student', 2, '0000-00-00 00:00:00'),
(95, 'tushar.salavi@hansabacollege.com', '8712ccfd946d1570475d4e6a534b2cc8', 'student', 2, '0000-00-00 00:00:00'),
(96, 'ketan.patel@hansabacollege.com', '723c916359f9663b34533192636bf839', 'student', 2, '0000-00-00 00:00:00'),
(97, 'divyesh.patel@hansabacollege.com', '9bd1c07f2c0d93b641e75da903bc3904', 'student', 2, '0000-00-00 00:00:00'),
(98, 'karan.thakker@hansabacollege.com', '78681a7e93d6de10c952f1b2b1047a2a', 'student', 2, '0000-00-00 00:00:00'),
(99, 'saurabh.raval@hansabacollege.com', '653cabfd5ac08c0e3404c6b486423d7a', 'student', 2, '0000-00-00 00:00:00'),
(100, 'shreyaskumar.patel@hansabacollege.com', '83154c8ed2ae0ef63b2006719bb4f3f5', 'student', 2, '0000-00-00 00:00:00'),
(101, 'Margi.patel@hansabacollege.com', 'eb1d2912d2fec9eee677234dbc66cdc3', 'student', 2, '0000-00-00 00:00:00'),
(102, 'mahammad.meman@hansabacollege.com', '4151a0eff98452c4820779baeaaba7fc', 'student', 2, '0000-00-00 00:00:00'),
(103, 'rajat.patel@hansabacollege.com', 'fe20fab1286afda3960e3f5ed5a87674', 'student', 2, '0000-00-00 00:00:00'),
(104, 'sanjay.rajput@hansabacollege.com', 'f97f54dbf35e9d3ec3a1c7b8ded727c6', 'student', 2, '0000-00-00 00:00:00'),
(105, 'govind.chaudhary@hansabacollege.com', '1a6a3906447f4efa79afc52f68537dbb', 'student', 2, '0000-00-00 00:00:00'),
(106, 'dip.patel@hansabacollege.com', 'bd0fa5d9cd14a78a98dfd8c81dcf5736', 'student', 2, '0000-00-00 00:00:00'),
(107, 'nayan.pandya@hansabacollege.com', '934312cace72c6d85133cd9219b65f1a', 'student', 2, '0000-00-00 00:00:00'),
(108, 'pradip.patel@hansabacollege.com', '3a67d44a97e83d8521124870b4e0a05e', 'student', 2, '0000-00-00 00:00:00'),
(109, 'vipul.patel@hansabacollege.com', 'dd16a748c0fbdd7b2a09cfde2509d7f8', 'student', 2, '0000-00-00 00:00:00'),
(110, 'kuldip.patel@hansabacollege.com', '6590b6d287d4df84d0216ac627931969', 'student', 2, '0000-00-00 00:00:00'),
(111, 'hardik.patel@hansabacollege.com', '6da5bcbce43f2778c0ec9ff10bc481e8', 'student', 2, '0000-00-00 00:00:00'),
(112, 'dinesh.patel@hansabacollege.com', '467cfd68ca6306a5a7a1d4d2280742f7', 'student', 2, '0000-00-00 00:00:00'),
(113, 'Jagruti.patel@hansabacollege.com', '9f4b1e66816a94bf916d942100edd6f9', 'student', 2, '0000-00-00 00:00:00'),
(114, 'deep.patel@hansabacollege.com', '1a6122eaf50f703b60e2ad7910808d55', 'student', 2, '0000-00-00 00:00:00'),
(115, 'sanket.patel@hansabacollege.com', 'b373214e9fc61d59df1c27201d792336', 'student', 2, '0000-00-00 00:00:00'),
(116, 'chintan.patel@hansabacollege.com', '89f690a88c2c09489da315ecb6acee75', 'student', 2, '0000-00-00 00:00:00'),
(117, 'ajaysinh.vaghela@hansabacollege.com', '339b4d667b02515212fc6adda9247ae3', 'student', 2, '0000-00-00 00:00:00'),
(118, 'mayursinh.vaghela@hansabacollege.com', 'cc1e4816173e7ed239637241c72e4e72', 'student', 2, '0000-00-00 00:00:00'),
(119, 'harsh.patel@hansabacollege.com', 'c36f56aad436c7393bda2af525be1fac', 'student', 2, '0000-00-00 00:00:00'),
(120, 'atul.barot@hansabacollege.com', 'cee71732ade8b4b54b96e963c51328d1', 'student', 2, '0000-00-00 00:00:00'),
(121, 'hardik.patel@hansabacollege.com', '6da5bcbce43f2778c0ec9ff10bc481e8', 'student', 2, '0000-00-00 00:00:00'),
(122, 'anish.manknojiya@hansabacollege.com', '826e4bb7e5d57fc3eaab802012b42fae', 'student', 2, '0000-00-00 00:00:00'),
(123, 'usmangani.shaikh@hansabacollege.com', 'e50af0668404868bf8bb60d0f1fc0707', 'student', 2, '0000-00-00 00:00:00'),
(124, 'urvik.modi@hansabacollege.com', '4fd5d9caa1826c79dcc34061a5a07bb2', 'student', 2, '0000-00-00 00:00:00'),
(125, 'gulab.gelot@hansabacollege.com', '48eadecff58a7fe5c870a02d91978663', 'student', 2, '0000-00-00 00:00:00'),
(126, 'rahul.prajapati@hansabacollege.com', '762c753ddf8bea0b7304082535e60425', 'student', 2, '0000-00-00 00:00:00'),
(127, 'saifali.musabji@hansabacollege.com', 'd0c4b5cb2a467df6d1becd02212e3a49', 'student', 2, '0000-00-00 00:00:00'),
(128, 'gaurang.mistri@hansabacollege.com', 'c1a7c1459473eed706634668a29a0ff1', 'student', 2, '0000-00-00 00:00:00'),
(129, 'mahir.panchiwala@hansabacollege.com', 'ff849077c9c374296450d0d039cc0c12', 'student', 2, '0000-00-00 00:00:00'),
(130, 'bhavik.prajapati@hansabacollege.com', '1b1e5933901f490525549603e18a1e87', 'student', 2, '0000-00-00 00:00:00'),
(131, 'apurv.priyadarshi@hansabacollege.com', '36901f899942f2b249a0314bb48a15db', 'student', 2, '0000-00-00 00:00:00'),
(132, 'milan.malavraj@hansabacollege.com', '8317a1f94cc9efba09745a78e5339a64', 'student', 2, '0000-00-00 00:00:00'),
(133, 'pratik.makavana@hansabacollege.com', 'c05d79884a3491234aa70b5c42fef7a7', 'student', 2, '0000-00-00 00:00:00'),
(134, 'bhavik.nayak@hansabacollege.com', 'ce9911f25caa46abeac22e5790443b54', 'student', 2, '0000-00-00 00:00:00'),
(135, 'jigar.prajapati@hansabacollege.com', '98de09db783cc19ad77cf3ac1c1611bb', 'student', 2, '0000-00-00 00:00:00'),
(136, 'jignesh.vyas@hansabacollege.com', 'c9cfed8e8d37415d137c1e6e49a5e7d6', 'student', 2, '0000-00-00 00:00:00'),
(137, 'hardik.joshi@hansabacollege.com', '121c1fd7e0fb707f6b443fec612dfce5', 'student', 2, '0000-00-00 00:00:00'),
(138, 'dushyant.chaudhary@hansabacollege.com', 'db10060dbbc541bd10ed948062cbd432', 'student', 2, '0000-00-00 00:00:00'),
(139, 'kuldip.rajput@hansabacollege.com', '696c916f921189d8f41a030c0c36c937', 'student', 2, '0000-00-00 00:00:00'),
(140, 'aashif.hamadee@hansabacollege.com', '165ac1e8c179d990e1ca7a15756537ff', 'student', 2, '0000-00-00 00:00:00'),
(141, 'akshay.prajapati@hansabacollege.com', 'ec81c89dae882d569d951b2a725f2506', 'student', 2, '0000-00-00 00:00:00'),
(142, 'hitesh.prajapati@hansabacollege.com', 'bdbcf913ebe152a3e3055d3cb74037f0', 'student', 2, '0000-00-00 00:00:00'),
(143, 'arif.chauhan@hansabacollege.com', '18707b58f39344a35aaa3973b7867b32', 'student', 2, '0000-00-00 00:00:00'),
(144, 'meet.patel@hansabacollege.com', 'f7d65da05a64eca69c081fec6fa3e2ee', 'student', 2, '0000-00-00 00:00:00'),
(145, 'mahammad.meman@hansabacollege.com', '4151a0eff98452c4820779baeaaba7fc', 'student', 2, '0000-00-00 00:00:00'),
(146, 'darshan.patel@hansabacollege.com', '454959f3b11f7471123711a4f9a9142c', 'student', 2, '0000-00-00 00:00:00'),
(147, 'rajni.prajapati@hansabacollege.com', '152bbb8a58a60f7048a2b2ed70932dce', 'student', 2, '0000-00-00 00:00:00'),
(148, 'poonam.patel@hansabacollege.com', '9f8beb97c727b0bdb9718ccfa2e2eb1a', 'student', 2, '0000-00-00 00:00:00'),
(149, 'pravin.mali@hansabacollege.com', 'f56291fa70810326fbea5611795359b0', 'student', 2, '0000-00-00 00:00:00'),
(150, 'sudesh.patel@hansabacollege.com', '04b434c01d3867ca1e52f5d882f81011', 'student', 2, '0000-00-00 00:00:00'),
(151, 'apexa.patel@hansabacollege.com', '189056b8afebf68a9cc035cabfc502ff', 'student', 2, '0000-00-00 00:00:00'),
(152, 'sharddha.thakkar@hansabacollege.com', '982c11b4e63a77c19be6406378f3a690', 'student', 2, '0000-00-00 00:00:00'),
(153, 'maulika.patel@hansabacollege.com', '808e395a01736beb6f5a057cd9b1969a', 'student', 2, '0000-00-00 00:00:00'),
(154, 'krunal.joshi@hansabacollege.com', '8d4d92fbc61e067af6181c3e5b67f8fb', 'student', 2, '0000-00-00 00:00:00'),
(155, 'rinkuben.chaudhari@hansabacollege.com', '1df3512e1e0d30e9e1ce47fcf1752074', 'student', 2, '0000-00-00 00:00:00'),
(156, 'girishbhai.chaudhari@hansabacollege.com', 'f153fcc974dbef8676be8bf3006d9b62', 'student', 2, '0000-00-00 00:00:00'),
(157, 'twinkal.patel@hansabacollege.com', '01846479067780e5c046b07abf6099ca', 'student', 2, '0000-00-00 00:00:00'),
(158, 'hemali.patel@hansabacollege.com', 'bb1c2a40cf547de8cc58224b06ea3b2c', 'student', 2, '0000-00-00 00:00:00'),
(159, 'rahul.joshi@hansabacollege.com', 'dc58c1756463b80d2cae9f8e2ec1aae1', 'student', 2, '0000-00-00 00:00:00'),
(160, 'vaishali.raval@hansabacollege.com', '62c59686ee4fad01d40df67031918036', 'student', 2, '0000-00-00 00:00:00'),
(161, 'mayurising.jadon@hansabacollege.com', '72e6fc9178dbf5202425875338d5be53', 'student', 2, '0000-00-00 00:00:00'),
(162, 'nimisha.patel@hansabacollege.com', '270006a63762183628050ebdbdcaa8d3', 'student', 2, '0000-00-00 00:00:00'),
(163, 'anjali.prajapati@hansabacollege.com', 'e6adcb24f05a43931c4f269135a2d08d', 'student', 2, '0000-00-00 00:00:00'),
(164, 'avani.patel@hansabacollege.com', '94d74ade437f0c95405caa3c71ff4654', 'student', 2, '0000-00-00 00:00:00'),
(165, 'krupa.patel@hansabacollege.com', '0a60f4376f412e62b9ce87eaa49d340c', 'student', 2, '0000-00-00 00:00:00'),
(166, 'sagar.solanki@hansabacollege.com', 'b6a3e5cb7bbeea07376edf121a933824', 'student', 2, '0000-00-00 00:00:00'),
(167, 'ajay.patel@hansabacollege.com', '22df18f0a3b0b50e1ba1b45235b5a3b6', 'student', 2, '0000-00-00 00:00:00'),
(168, 'jagir.rao@hansabacollege.com', '08615e0301a97f2f7068e3b941e8184f', 'student', 2, '0000-00-00 00:00:00'),
(169, 'pooja.patel@hansabacollege.com', 'c73237655f5ab72cdbd756fe69b868a2', 'student', 2, '0000-00-00 00:00:00'),
(170, 'dipika.patel@hansabacollege.com', '5a204cd04cb8336177aa480a443aadd1', 'student', 2, '0000-00-00 00:00:00'),
(171, 'mitalben.chaudhary@hansabacollege.com', '551cac8cc14973d5246c490622c43ae8', 'student', 2, '0000-00-00 00:00:00'),
(172, 'gopi.patel@hansabacollege.com', '5796f171d6ed1cff115d16d1979ba3a5', 'student', 2, '0000-00-00 00:00:00'),
(173, 'siddhi.trivedi@hansabacollege.com', 'd10fab56ca827371bb628f251997ddf1', 'student', 2, '0000-00-00 00:00:00'),
(174, 'sonal.rabari@hansabacollege.com', '5072cc2632728325c8bd0f12aa95a129', 'student', 2, '0000-00-00 00:00:00'),
(175, 'Mahemudhasan.Nandoliya@hansabacollege.com', '16cecefaad444698d4cdb2059dbf373d', 'student', 2, '0000-00-00 00:00:00'),
(176, 'dhaval.patel@hansabacollege.com', '0ea6b8cd58b1b0cd38b1d97194cf12bd', 'student', 2, '0000-00-00 00:00:00'),
(177, 'khushbu.patel@hansabacollege.com', '3482e9242822acc7f301a2711b3863ea', 'student', 2, '0000-00-00 00:00:00'),
(178, 'arju.patel@hansabacollege.com', '3bc0446b4020942ad8d55a2f926a1cfc', 'student', 2, '0000-00-00 00:00:00'),
(179, 'bhavnaben.Parmar@hansabacollege.com', '98e5161cf6a5991cbb564a4ea886d0be', 'student', 2, '0000-00-00 00:00:00'),
(180, 'sarika.patel@hansabacollege.com', '08e8efabfd083df9ee722023c42a17e2', 'student', 2, '0000-00-00 00:00:00'),
(181, 'rahul.panchal@hansabacollege.com', '744f2462f8107d33a2d58e748fed46cb', 'student', 2, '0000-00-00 00:00:00'),
(182, 'vijaykumar.chaudhary@hansabacollege.com', '7ff239fbf184df98744ebf597e283049', 'student', 2, '0000-00-00 00:00:00'),
(183, 'Mujahidbhai.manasiya@hansabacollege.com', '6eb6aa3c8d5cb66197e5fd34b58a9836', 'student', 2, '0000-00-00 00:00:00'),
(184, 'ankur.patel@hansabacollege.com', 'ed9dca6ce99e0e935f7675934002a10b', 'student', 2, '0000-00-00 00:00:00'),
(185, 'nouman.chauhan@hansabacollege.com', '78a783a4c33c84321be0c2f548fb8c85', 'student', 2, '0000-00-00 00:00:00'),
(186, 'jyotsana.patel@hansabacollege.com', '94c102c390ea211f3e9f96e40efa5ad3', 'student', 2, '0000-00-00 00:00:00'),
(187, 'jainex.jain@hansabacollege.com', 'bd3e2dcf749f10a142561f625ab9b4b4', 'student', 2, '0000-00-00 00:00:00'),
(188, 'jigar.raval@hansabacollege.com', '7a17f84bc5de34f78abedf1a485fa648', 'student', 2, '0000-00-00 00:00:00'),
(189, 'arvind.chaudhary@hansabacollege.com', '0a4a88b3bc437f39859de094c5a889ec', 'student', 2, '0000-00-00 00:00:00'),
(190, 'praful.patel@hansabacollege.com', '0d3a339c9545ea096f23004fdf956d8f', 'student', 2, '0000-00-00 00:00:00'),
(191, 'abhishek.parikh@hansabacollege.com', 'caf7159f61dd500dd4d46d3ef30939f7', 'student', 2, '0000-00-00 00:00:00'),
(192, 'pooja.panchal@hansabacollege.com', '16e9414a6af4d6084a477a583f804b5b', 'student', 2, '0000-00-00 00:00:00'),
(193, 'suhani.patel@hansabacollege.com', '2d1de1b577464d1bab9e9117ad8e317a', 'student', 2, '0000-00-00 00:00:00'),
(194, 'dipali.tamhane@hansabacollege.com', '47aac84b13640e82a0cc0590a2f74aed', 'student', 2, '0000-00-00 00:00:00'),
(195, 'vinita.darji@hansabacollege.com', 'a7daa210a352ec2de237ae58ba3157a9', 'student', 2, '0000-00-00 00:00:00'),
(196, 'snehal.patel@hansabacollege.com', '3bc6aed7d97ed964ba62683d0529f39b', 'student', 2, '0000-00-00 00:00:00'),
(197, 'ronak.patel@hansabacollege.com', 'caf7f0325f4a5a8e2e7b0f776489fe7c', 'student', 2, '0000-00-00 00:00:00'),
(198, 'priyraj.gadhvi@hansabacollege.com', 'b277e66466e347b86bb68785dd9beda1', 'student', 2, '0000-00-00 00:00:00'),
(199, 'ankur.patel@hansabacollege.com', 'ed9dca6ce99e0e935f7675934002a10b', 'student', 2, '0000-00-00 00:00:00'),
(200, 'ketan.purohit@hansabacollege.com', '44088ab83aee6c90bca4dc3a6250de91', 'student', 2, '0000-00-00 00:00:00'),
(201, 'nayana.khatri@hansabacollege.com', '4cf2086ec650802eb23f91b5b834c3f0', 'student', 2, '0000-00-00 00:00:00'),
(202, 'prabhu.purohit@hansabacollege.com', '3985f10c6f7cfb73645497dd7ae1f763', 'student', 2, '0000-00-00 00:00:00'),
(203, 'kishan.upadhyay@hansabacollege.com', '51963578bf6e59a21c0680a44a5788d4', 'student', 2, '0000-00-00 00:00:00'),
(204, 'jimit.shah@hansabacollege.com', 'c7d2861ac2213fbf349dd5e1b4def241', 'student', 2, '0000-00-00 00:00:00'),
(205, 'dipesh.modi@hansabacollege.com', '7e0d3fac277c12a37e10fe93e1e2cf6b', 'student', 2, '0000-00-00 00:00:00'),
(206, 'bansi.patel@hansabacollege.com', '58f4554c942545020abcd32839fe578b', 'student', 2, '0000-00-00 00:00:00'),
(207, 'rikin.patel@hansabacollege.com', 'c059d38ac96160a6be0def7078601077', 'student', 2, '0000-00-00 00:00:00'),
(208, 'anjali.shukla@hansabacollege.com', 'f1ccb145255ec8a8787e54411fcd73ec', 'student', 2, '0000-00-00 00:00:00'),
(209, 'hardik.patel@hansabacollege.com', '6da5bcbce43f2778c0ec9ff10bc481e8', 'student', 2, '0000-00-00 00:00:00'),
(210, 'archit.khamar@hansabacollege.com', '60bdfb164c8d3535e1d498b1942c119e', 'student', 2, '0000-00-00 00:00:00'),
(211, 'lalit.patel@hansabacollege.com', '765bf737cee82b6c93997942c4cb7549', 'student', 2, '0000-00-00 00:00:00'),
(212, 'doli.pandya@hansabacollege.com', '931a87f5caad4542dc7f61e8b31cedb9', 'student', 2, '0000-00-00 00:00:00'),
(213, 'pavan.patel@hansabacollege.com', '91b33c6cf80470297f6f5cd3bbed78ff', 'student', 2, '0000-00-00 00:00:00'),
(214, 'faruk.chhipa@hansabacollege.com', 'e759a37e2a5e31b496c57882821d2099', 'student', 2, '0000-00-00 00:00:00'),
(215, 'akshay.chaudhary@hansabacollege.com', 'a1e99de0dca27831cb93ba9055bbb9f7', 'student', 2, '0000-00-00 00:00:00'),
(216, 'vijay.patel@hansabacollege.com', '3802e74008cfa1ce4daab70f51e0152e', 'student', 2, '0000-00-00 00:00:00'),
(217, 'hitesh.panchasara@hansabacollege.com', '091dc1feffd496e74f261b7e49fd9a9e', 'student', 2, '0000-00-00 00:00:00'),
(218, 'kishan.patel@hansabacollege.com', 'a0edb31d1f3d552ec84b2383e99f68ae', 'student', 2, '0000-00-00 00:00:00'),
(219, 'parth.patel@hansabacollege.com', '45c140c98cc27af2ef85c04df4923774', 'student', 2, '0000-00-00 00:00:00'),
(220, 'chirag.patel@hansabacollege.com', 'd85e4e340acb231753e85cc808a93406', 'student', 2, '0000-00-00 00:00:00'),
(221, 'maulik.patel@hansabacollege.com', '4779dca26e5a52ac896fbe812b75f88a', 'student', 2, '0000-00-00 00:00:00'),
(222, 'harsh.patel@hansabacollege.com', 'c36f56aad436c7393bda2af525be1fac', 'student', 2, '0000-00-00 00:00:00'),
(223, 'nikunj.chaudhary@hansabacollege.com', '47688b2fe0454191aba8883458bf6194', 'student', 2, '0000-00-00 00:00:00'),
(224, 'hardik.patel@hansabacollege.com', '6da5bcbce43f2778c0ec9ff10bc481e8', 'student', 2, '0000-00-00 00:00:00'),
(225, 'kaushal.patel@hansabacollege.com', '9a34ccca5f16d41bb3b17b85c3dd6834', 'student', 2, '0000-00-00 00:00:00'),
(226, 'sanjaysinh.rajput@hansabacollege.com', '4edaf594552f38159e42dd7a3a3149b9', 'student', 2, '0000-00-00 00:00:00'),
(227, 'farhan.mansuri@hansabacollege.com', '6ede6431da5bbe9e686cb92a026367ea', 'student', 2, '0000-00-00 00:00:00'),
(228, 'nirav.desai@hansabacollege.com', '358f74db91652ce0d0934dabc107070a', 'student', 2, '0000-00-00 00:00:00'),
(229, 'vishal.prajapati@hansabacollege.com', 'feb3716253708641d264156362cb5172', 'student', 2, '0000-00-00 00:00:00'),
(230, 'amumiya.sindhi@hansabacollege.com', '4d44788dcef830401e96faa610709273', 'student', 2, '0000-00-00 00:00:00'),
(231, 'prakash.gelot@hansabacollege.com', 'c9100984bde3854d1ca02e89a6a664c0', 'student', 2, '0000-00-00 00:00:00'),
(232, 'ravi.salvi@hansabacollege.com', '5fc44e8c700838e6cd6c14abc1e75aac', 'student', 2, '0000-00-00 00:00:00'),
(233, 'metaji.thakor@hansabacollege.com', '51a1c69d0935c39cd958d8f2660a5121', 'student', 2, '0000-00-00 00:00:00'),
(234, 'anand.chauhan@hansabacollege.com', '8ae96fbb61a6bb1462cbfcb52a755a3f', 'student', 2, '0000-00-00 00:00:00'),
(235, 'akash.rathod@hansabacollege.com', 'd742ed3accb73bf89ee7dca71db1c469', 'student', 2, '0000-00-00 00:00:00'),
(236, 'parth.prajapati@hansabacollege.com', '23aa5b10076521036f86e82fdabfda46', 'student', 2, '0000-00-00 00:00:00'),
(237, 'savan.chaudhary@hansabacollege.com', 'd19360c2eeda64882220a647c56dc147', 'student', 2, '0000-00-00 00:00:00'),
(238, 'jay.suthar@hansabacollege.com', 'a959ffb65d723b931a849e9c2baa26a0', 'student', 2, '0000-00-00 00:00:00'),
(239, 'mitesh.sidhpura@hansabacollege.com', '7a470d7b0604cf264d7fc2d7e82f70f2', 'student', 2, '0000-00-00 00:00:00'),
(240, 'bharatsinh.dabhi@hansabacollege.com', 'cbc9b75aa147a596688da9b9bc7a4dd7', 'student', 2, '0000-00-00 00:00:00'),
(241, 'jaydipsinh.rajput@hansabacollege.com', '457d3a1268cd2a00adbf3b758ba12fc5', 'student', 2, '0000-00-00 00:00:00'),
(242, 'himalaya.trivedi@hansabacollege.com', '9f1086b8680a57eb12c2f694bc9a3e04', 'student', 2, '0000-00-00 00:00:00'),
(243, 'sharukhkhan.kumatiya@hansabacollege.com', '224f0f2e6ecefd32b37a02a34760072b', 'student', 2, '0000-00-00 00:00:00'),
(244, 'habbab.parbadiya@hansabacollege.com', 'c86d45081b4e87c005293381cde9b9ad', 'student', 2, '0000-00-00 00:00:00'),
(245, 'varun.rajgor@hansabacollege.com', '4056c1fd32e38b08a4620890b37343b3', 'student', 2, '0000-00-00 00:00:00'),
(246, 'jagdish.joshi@hansabacollege.com', 'f6490e71448ca38ac160726b7d9dc953', 'student', 2, '0000-00-00 00:00:00'),
(247, 'raj.patel@hansabacollege.com', '9597a646fe5d6bf27ec03d4f94db24cb', 'student', 2, '0000-00-00 00:00:00'),
(248, 'alpesh.panchal@hansabacollege.com', '66aa40fc12eb56fc64a94de513d0ed1a', 'student', 2, '0000-00-00 00:00:00'),
(249, 'akibhusen.saiyed@hansabacollege.com', '960c082d2dfff7a5bbacd31f6dfae336', 'student', 2, '0000-00-00 00:00:00'),
(250, 'siddharth.rajput@hansabacollege.com', '310c69326a6e5aa11f2422c263f700db', 'student', 2, '0000-00-00 00:00:00'),
(251, 'hardik.jaganaiya@hansabacollege.com', '1ec179ed507c74cb7b6264acd7949956', 'student', 2, '0000-00-00 00:00:00'),
(252, 'raj.maheshvari@hansabacollege.com', '5385fb4d2668719f8f87bc4504ef9316', 'student', 2, '0000-00-00 00:00:00'),
(253, 'bhavesh.karen@hansabacollege.com', 'cfc11b8f10886b345a62a516c8b6f45f', 'student', 2, '0000-00-00 00:00:00'),
(254, 'sambhav.mehta@hansabacollege.com', '8d4d8bec496d73d3792a60c9f6176ddb', 'student', 2, '0000-00-00 00:00:00'),
(255, 'dinesh.valagot@hansabacollege.com', '46654ae7dd4c0a40fa9cc88243ac23ca', 'student', 2, '0000-00-00 00:00:00'),
(256, 'kapil.trivedi@hansabacollege.com', '3d8cc4077b441acb44330f2c958db6d4', 'student', 2, '0000-00-00 00:00:00'),
(257, 'ganapat.gelot@hansabacollege.com', '97ffe1448cba754b2bd61e8ea82fc5e9', 'student', 2, '0000-00-00 00:00:00'),
(258, 'shahjayeshn@yahoo.com', '8240032de760db0a8d4ae8f4fa86f7a8', 'employee', 2, '0000-00-00 00:00:00'),
(259, 'saurabhcivil2006@yahoo.co.in', 'fb87cfd48397c7aff2eb0bc74e78aba9', 'employee', 2, '0000-00-00 00:00:00'),
(260, 'monal18885@gmail.com', '889b909110e50b202eed10252844d446', 'employee', 2, '0000-00-00 00:00:00'),
(261, 'pmpatel551986@gmail.com', '2440f0887a89f7316f204353171ee9ae', 'employee', 2, '0000-00-00 00:00:00'),
(262, 'mehul.dethariya@yahoo.com', '27a536fc0695dee518f4b55cc9d61807', 'employee', 2, '0000-00-00 00:00:00'),
(263, 'parth_sandesara@yahoo.co.in', 'b58223ab05b7980804bb106f5f801c5b', 'employee', 2, '0000-00-00 00:00:00'),
(264, 'sukrutbaps@yahoo.co.in', '71e7eb8a585ab72146aa34413c3d326f', 'employee', 2, '0000-00-00 00:00:00'),
(265, 'jigar.jet2009@gmail.com', '9dfa68805acbce5ab6bec72ec01a211a', 'employee', 2, '0000-00-00 00:00:00'),
(266, 'patel_16218@hotmail.com', '3ca2f803850ef847207ebeb3d4e1c785', 'employee', 2, '0000-00-00 00:00:00'),
(267, 'raval_avani@yahoo.com', 'd935274cb5822a4c9058a90906c35e96', 'employee', 2, '0000-00-00 00:00:00'),
(268, 'darshan_meen2274@yahoo.com', 'd9305d920245fbe31bb7be6196e04ba7', 'employee', 2, '0000-00-00 00:00:00'),
(269, 'hitesh_uvpce@yahoo.co.in', 'd9608a9243c74419ad46a30daa4afacd', 'employee', 2, '0000-00-00 00:00:00'),
(270, 'hirenpatel333@yahoo.co.in', '2d4d9a8172aabf3fd8a2b5e131215989', 'employee', 2, '0000-00-00 00:00:00'),
(271, 'jumi.sarmah@gamil.com', 'de7fef53d4b253daf0d5c67724ed64b2', 'employee', 2, '0000-00-00 00:00:00'),
(272, 'prajapatij58@yahoo.com', '1c1705d8ebdc660e17f3368819e0233d', 'employee', 2, '0000-00-00 00:00:00'),
(273, 'hiral_civileng@yahoo.co.in', '5b62ddd1375b2102963ae08829619d0e', 'employee', 2, '0000-00-00 00:00:00'),
(274, 'parth.patel@hansabacollege.com', '45c140c98cc27af2ef85c04df4923774', 'employee', 2, '0000-00-00 00:00:00'),
(275, 'rahulcivilengg@gmail.com', '9105cffeb36a370a4ba209e61d0622f4', 'employee', 2, '0000-00-00 00:00:00'),
(276, 'bhvi6887@gmail.com', '13be5704c146fb62ac0e4f010b8a3acb', 'employee', 2, '0000-00-00 00:00:00'),
(277, 'nik_200387@yahoo.com', 'fbbce18090ec6a9d3aca9bf08adbbbfe', 'employee', 2, '0000-00-00 00:00:00'),
(278, 'patel_satish2002@yahoo.com', '45179bc00a859f39dc21be0bea3ac124', 'employee', 2, '0000-00-00 00:00:00'),
(279, 'jagdishsinh.rana@hansabacollege.com', '9c2d9a8fd5eafd0b31504d3805f6d41b', 'employee', 2, '0000-00-00 00:00:00'),
(280, 'baku_tushar@yahoo.co.in', '8d3ef19eb1a08549a45dc70fba1901ad', 'employee', 2, '0000-00-00 00:00:00'),
(281, 'girish.khamar@hansabacollege.com', 'a0145bcde7a4e0239dd29d1a9ba17c24', 'employee', 2, '0000-00-00 00:00:00'),
(282, 'bharti.oza@hansabacollege.com', 'd6d32108be703997bcffefd9730583a8', 'employee', 2, '0000-00-00 00:00:00'),
(283, 'vasantpatel79@yahoo.com', '01f21c5eb1b124a2ef2b974da1ba7e2b', 'employee', 2, '0000-00-00 00:00:00'),
(284, 'suresh_vihol@yahoo.com', '91600030b1d44336782a30b414df568c', 'employee', 2, '0000-00-00 00:00:00'),
(285, 'prajapatirajnikant27@yahoo.co.in', '286185ab983611fcb271efb48bf55849', 'employee', 2, '0000-00-00 00:00:00'),
(286, 'pratapji.rajput@hansabacollege.com', '74f5769e572c653cfca886d539a12e0d', 'employee', 2, '0000-00-00 00:00:00'),
(287, 'vishnu.chaudhary@hansabacollege.com', 'a3b02c9d79c307693b5a56518cc5ced5', 'employee', 2, '0000-00-00 00:00:00'),
(288, 'chamnji.rajput@hansabacollege.com', 'f2db8b76357e80d8af13074549fb7a31', 'employee', 2, '0000-00-00 00:00:00'),
(289, 'abcd@hansabacollege.com', 'a011a6b7e182a3784358c483f08d6ec7', 'employee', 2, '0000-00-00 00:00:00'),
(290, 'govind.desai@hansabacollege.com', 'c65419e3d55c914ec749be480d29e0c1', 'employee', 2, '0000-00-00 00:00:00'),
(291, 'kirit.bodana@hansabacollege.com', 'ef3b39ae54004eace91ae94c9d13571b', 'employee', 2, '0000-00-00 00:00:00'),
(292, 'urvi_khamar1989@yahoo.com', '6f330e5a5848d9f8e51e2155672da729', 'employee', 2, '0000-00-00 00:00:00'),
(293, 'bharat.mistry@hansabacollege.com', '58c25f81de5e3f2c973be4a8b3650895', 'employee', 2, '0000-00-00 00:00:00'),
(294, 'khodaji_15@yahoo.com', 'c66409c9d889fcde12b512a35001dc59', 'employee', 2, '0000-00-00 00:00:00'),
(295, 'nitin.patel@hansabacollege.com', '360775667ba260b9978328d6c94cdd17', 'employee', 2, '0000-00-00 00:00:00'),
(296, 'gangaram.patel@hansabacollege.com', 'f3508ac1e6772657870f381d5306f46c', 'employee', 2, '0000-00-00 00:00:00'),
(297, 'rajendra.patel@hansabacollege.com', '882b061cc5a262133529ef21a70f0ae7', 'employee', 2, '0000-00-00 00:00:00'),
(298, 'dipti.chaudhary@hansabacollege.com', '9ee90e314a4cb0e1563d9e9beb4ccbf1', 'employee', 2, '0000-00-00 00:00:00'),
(299, 'jigarpatel_09@yahoo.com', '4d345b8526a9a94af70499fce8643cf9', 'employee', 2, '0000-00-00 00:00:00'),
(300, 'shailesh.prajapati@hansabacollege.com', '4833974774c4c61ab754fd138eead301', 'employee', 2, '0000-00-00 00:00:00'),
(301, 'karansinh.rana@hansabacollege.com', '41a7b74db2c5d484d6ee5da6812426a9', 'employee', 2, '0000-00-00 00:00:00'),
(302, 'narendra.makwana@hansabacollege.com', '05b18765e40d1906da9fa39d9abf0935', 'employee', 2, '0000-00-00 00:00:00'),
(303, 'AJAYSINHRATHOD3@GMAIL.COM', '98a9be46024db31585846ab52f6733e6', 'employee', 2, '0000-00-00 00:00:00'),
(304, 'makwana.sangeeta@gmail.com', '11d28e965c294d063cb0749aae285c1c', 'employee', 2, '0000-00-00 00:00:00'),
(305, 'suresh.thakor@hansabacollege.com', 'c10ee1900e4794f2e2bb18f74cbcf4fd', 'employee', 2, '2000-00-01 00:00:00'),
(306, 'akashthakor40@yahoo.com', '9fe44b51b9cab4066e81c4786d7e76f2', 'employee', 2, '0000-00-00 00:00:00'),
(307, 'sanjay.joshi@hansabacollege.com', 'ffeeff48aeb8a3204eec7181d279763a', 'employee', 2, '0000-00-00 00:00:00'),
(308, 'sweety161086@yahoo.com', '667dddf308c124e80a183e23dd604055', 'employee', 2, '0000-00-00 00:00:00'),
(309, 'sheetalthakkar86@yahoo.com', '810de0c056b9afc52f113bf0be63dc65', 'employee', 2, '0000-00-00 00:00:00'),
(310, 'nilesh.thakkar@hansabacollege.com', 'acfcc69d35affdc14d9599c71d11edee', 'employee', 2, '0000-00-00 00:00:00'),
(311, 'anil.makwana@hansabacollege.com', '078d24a59eb3e759e2155cf9413e4c76', 'employee', 2, '0000-00-00 00:00:00'),
(312, 'ketan_184@yahoo.in', 'b75033c589345530d6ee993103b9d853', 'employee', 2, '0000-00-00 00:00:00');

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
  `visitor_pass_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`pass_no`),
  KEY `fk_visit_Dep` (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE IF NOT EXISTS `year` (
  `year_id` int(2) NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL,
  PRIMARY KEY (`year_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`year_id`, `year`) VALUES
(1, 2011),
(2, 2013),
(3, 2014);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_term`
--
ALTER TABLE `academic_term`
  ADD CONSTRAINT `academic_term_ibfk_1` FOREIGN KEY (`academic_term_period_id`) REFERENCES `academic_term_period` (`academic_terms_period_id`);

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
-- Constraints for table `division`
--
ALTER TABLE `division`
  ADD CONSTRAINT `division_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`),
  ADD CONSTRAINT `division_ibfk_2` FOREIGN KEY (`academic_period_id`) REFERENCES `academic_term_period` (`academic_terms_period_id`),
  ADD CONSTRAINT `division_ibfk_3` FOREIGN KEY (`academic_name_id`) REFERENCES `academic_term` (`academic_term_id`);

--
-- Constraints for table `employee_academic_record_trans`
--
ALTER TABLE `employee_academic_record_trans`
  ADD CONSTRAINT `fk_emp_eduboard` FOREIGN KEY (`employee_academic_record_trans_eduboard_id`) REFERENCES `eduboard` (`eduboard_id`),
  ADD CONSTRAINT `fk_emp_qualification` FOREIGN KEY (`employee_academic_record_trans_qualification_id`) REFERENCES `qualification` (`qualification_id`),
  ADD CONSTRAINT `fk_emp_year` FOREIGN KEY (`employee_academic_record_trans_year_id`) REFERENCES `year` (`year_id`);

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
  ADD CONSTRAINT `fees_master_ibfk_1` FOREIGN KEY (`fees_academic_term_name_id`) REFERENCES `academic_term` (`academic_term_id`),
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
-- Constraints for table `organization`
--
ALTER TABLE `organization`
  ADD CONSTRAINT `fk_org_city` FOREIGN KEY (`city`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `fk_org_country` FOREIGN KEY (`country`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `fk_org_state` FOREIGN KEY (`state`) REFERENCES `state` (`state_id`);

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
-- Constraints for table `student_academic_record_trans`
--
ALTER TABLE `student_academic_record_trans`
  ADD CONSTRAINT `fk_eduboard` FOREIGN KEY (`student_academic_record_trans_eduboard_id`) REFERENCES `eduboard` (`eduboard_id`),
  ADD CONSTRAINT `fk_qualification` FOREIGN KEY (`student_academic_record_trans_qualification_id`) REFERENCES `qualification` (`qualification_id`),
  ADD CONSTRAINT `fk_year` FOREIGN KEY (`student_academic_record_trans_record_trans_year_id`) REFERENCES `year` (`year_id`);

--
-- Constraints for table `student_docs_trans`
--
ALTER TABLE `student_docs_trans`
  ADD CONSTRAINT `fk_student_docs_id` FOREIGN KEY (`student_docs_trans_stud_docs_id`) REFERENCES `student_docs` (`student_docs_id`);

--
-- Constraints for table `student_transaction`
--
ALTER TABLE `student_transaction`
  ADD CONSTRAINT `batch_ibfk_4` FOREIGN KEY (`student_academic_term_period_tran_id`) REFERENCES `academic_term_period` (`academic_terms_period_id`),
  ADD CONSTRAINT `batch_ibfk_5` FOREIGN KEY (`student_academic_term_name_id`) REFERENCES `academic_term` (`academic_term_id`),
  ADD CONSTRAINT `fk_lan_id` FOREIGN KEY (`student_transaction_languages_known_id`) REFERENCES `languages_known` (`languages_known_id`);

--
-- Constraints for table `visitor_pass`
--
ALTER TABLE `visitor_pass`
  ADD CONSTRAINT `fk_visit_Dep` FOREIGN KEY (`department`) REFERENCES `department` (`department_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
