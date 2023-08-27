-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 12:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternative_role_levels`
--

CREATE TABLE `alternative_role_levels` (
  `alter_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alternative_role_levels`
--

INSERT INTO `alternative_role_levels` (`alter_id`, `role_id`, `rank`, `role_name`) VALUES
(1, 1, 1, 'ICT CELL'),
(2, 11, 2, 'Ministry Deparment'),
(5, 12, 3, 'All Regulatory'),
(6, 13, 4, 'All Organization Head'),
(7, 14, 5, 'Organization User'),
(8, 15, 6, 'Branch User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_entry_table`
--

CREATE TABLE `auth_entry_table` (
  `id` int(11) NOT NULL,
  `ae_form_id` int(11) DEFAULT NULL,
  `ae_sender_id` int(11) DEFAULT NULL,
  `ae_receiver_id` int(11) DEFAULT NULL,
  `ae_process` varchar(11) DEFAULT NULL,
  `ae_deadline` timestamp NULL DEFAULT current_timestamp(),
  `ae_status` float NOT NULL DEFAULT 0,
  `ae_approval` float DEFAULT 0,
  `ae_comment` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_entry_table`
--

INSERT INTO `auth_entry_table` (`id`, `ae_form_id`, `ae_sender_id`, `ae_receiver_id`, `ae_process`, `ae_deadline`, `ae_status`, `ae_approval`, `ae_comment`, `created_at`) VALUES
(2, 273, 248, 249, 'forward', '2022-08-16 18:00:00', 0, 0, '', '2022-08-16 05:08:58'),
(3, 279, 248, 249, 'forward', '2022-08-17 18:00:00', 0, 0, '', '2022-08-17 15:05:28'),
(4, 279, 249, 248, 'forward', NULL, 0, 0, '', '2022-08-17 15:05:54'),
(5, 279, 250, 251, 'forward', '2022-08-17 18:00:00', 0, 0, '', '2022-08-17 15:07:16'),
(6, 279, 251, 250, 'forward', NULL, 0, 0, '', '2022-08-17 15:07:39'),
(7, 280, 248, 249, 'forward', '2022-08-18 18:00:00', 0, 0, '', '2022-08-18 04:33:58'),
(8, 280, 250, 251, 'forward', '2022-08-18 18:00:00', 0, 0, '', '2022-08-18 06:10:29'),
(9, 280, 253, 255, 'forward', '2022-08-17 18:00:00', 0, 0, '', '2022-08-18 06:16:28'),
(10, 281, 248, 249, 'forward', '2022-08-20 18:00:00', 1, 0, '', '2022-08-20 16:44:34'),
(11, 281, 249, 248, 'forward', NULL, 0, 0, '', '2022-08-20 17:01:29'),
(12, 282, 248, 249, 'forward', '2022-08-20 18:00:00', 1, 0, NULL, '2022-08-20 17:17:15'),
(13, 282, 249, 248, 'forward', NULL, 0, 0, '', '2022-08-20 17:17:47'),
(14, 283, 248, 249, 'forward', '2022-08-21 18:00:00', 1, 1, 'ha ha ha ha', '2022-08-20 18:09:13'),
(15, 283, 249, 248, 'forward', NULL, 0, 0, '', '2022-08-20 18:13:15'),
(16, 284, 248, 249, 'forward', '2022-08-21 18:00:00', 1, 1, 'hoy ni abar pathan', '2022-08-21 02:56:58'),
(17, 284, 249, 248, 'forward', NULL, 0, 0, '', '2022-08-21 02:58:21'),
(18, 285, 248, 249, 'forward', '2022-08-21 18:00:00', 1, 0, '', '2022-08-21 03:19:21'),
(19, 285, 249, 248, 'forward', NULL, 0, 0, '', '2022-08-21 03:21:06'),
(20, 285, 250, 251, 'forward', '2022-08-21 18:00:00', 1, 0, '', '2022-08-21 03:22:15'),
(21, 285, 251, 250, 'forward', NULL, 0, 0, '', '2022-08-21 03:22:55'),
(22, 285, 253, 255, 'forward', '2022-08-21 18:00:00', 1, 0, '', '2022-08-21 03:24:14'),
(23, 285, 255, 253, 'forward', NULL, 0, 0, '', '2022-08-21 03:25:48'),
(24, 287, 254, 256, 'forward', '2022-08-25 18:00:00', 1, 0, '', '2022-08-24 06:36:48'),
(25, 287, 256, 254, 'forward', NULL, 0, 0, '', '2022-08-24 06:37:36'),
(26, 288, 254, 256, 'forward', '2022-09-02 18:00:00', 1, 0, '', '2022-08-24 10:28:40'),
(27, 288, 256, 254, 'forward', NULL, 0, 0, '', '2022-08-24 10:29:07'),
(28, 294, 257, 258, 'forward', '2022-08-25 18:00:00', 1, 0, '', '2022-08-25 09:20:19'),
(29, 294, 258, 257, 'forward', NULL, 0, 0, '', '2022-08-25 09:20:52'),
(30, 295, 257, 258, 'forward', '2022-08-31 18:00:00', 1, 0, '', '2022-08-25 09:33:39'),
(31, 295, 258, 257, 'forward', NULL, 0, 0, '', '2022-08-25 09:34:02'),
(32, 296, 257, 258, 'forward', '2022-08-26 18:00:00', 1, 0, '', '2022-08-25 10:41:44'),
(33, 296, 258, 257, 'forward', NULL, 0, 0, '', '2022-08-25 10:42:13'),
(34, 297, 253, 255, 'forward', NULL, 1, 0, '', '2022-08-25 10:46:06'),
(35, 297, 255, 253, 'forward', NULL, 0, 0, '', '2022-08-25 10:46:35'),
(36, 298, 248, 249, 'forward', '2022-08-30 18:00:00', 1, 0, '', '2022-08-28 03:43:42'),
(37, 298, 249, 248, 'forward', NULL, 0, 0, '', '2022-08-28 03:44:26'),
(38, 298, 250, 251, 'forward', '2022-08-28 18:00:00', 1, 0, '', '2022-08-28 04:30:00'),
(39, 298, 251, 250, 'forward', NULL, 0, 0, '', '2022-08-28 04:30:33'),
(40, 298, 253, 255, 'forward', '2022-08-29 18:00:00', 1, 0, '', '2022-08-28 05:15:49'),
(41, 298, 254, 256, 'forward', '2022-08-28 18:00:00', 1, 0, '', '2022-08-28 05:32:04'),
(42, 298, 256, 254, 'forward', NULL, 0, 0, '', '2022-08-28 05:32:56'),
(43, 298, 257, 258, 'forward', '2022-08-28 18:00:00', 1, 0, '', '2022-08-28 05:34:20'),
(44, 298, 258, 257, 'forward', NULL, 0, 0, '', '2022-08-28 05:34:59'),
(45, 300, 248, 249, 'forward', '2022-08-29 18:00:00', 0, 0, '', '2022-08-29 02:59:44'),
(46, 304, 248, 249, 'forward', '2022-08-29 18:00:00', 0, 0, '', '2022-08-29 04:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `auth_to_auth_table`
--

CREATE TABLE `auth_to_auth_table` (
  `id` int(11) NOT NULL,
  `aa_form_id` int(11) DEFAULT NULL,
  `aa_sender_id` int(11) DEFAULT NULL,
  `aa_receiver_id` int(11) DEFAULT NULL,
  `aa_process` varchar(50) DEFAULT NULL,
  `aa_deadline` timestamp NOT NULL DEFAULT current_timestamp(),
  `aa_status` float NOT NULL,
  `aa_approval` float NOT NULL DEFAULT 0,
  `aa_comment` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_to_auth_table`
--

INSERT INTO `auth_to_auth_table` (`id`, `aa_form_id`, `aa_sender_id`, `aa_receiver_id`, `aa_process`, `aa_deadline`, `aa_status`, `aa_approval`, `aa_comment`, `created_at`) VALUES
(1, 273, 248, 250, 'down', '2022-08-16 18:00:00', 1, 0, '', '2022-08-16 05:08:21'),
(2, 272, 250, 253, 'down', '2022-08-16 18:00:00', 0, 0, '', '2022-08-16 08:27:54'),
(3, 274, 126, 248, 'down', '2022-08-16 18:00:00', 0, 0, '', '2022-08-16 11:35:19'),
(4, 274, 248, 250, 'down', '2022-08-16 18:00:00', 0, 0, '', '2022-08-16 11:35:45'),
(5, 274, 250, 253, 'down', '2022-08-16 18:00:00', 0, 0, '', '2022-08-16 11:37:18'),
(6, 279, 126, 248, 'down', '2022-08-17 18:00:00', 0, 0, '', '2022-08-17 15:05:09'),
(7, 279, 248, 250, 'down', '2022-08-16 18:00:00', 0, 0, '', '2022-08-17 15:06:23'),
(8, 280, 248, 250, NULL, '2022-08-18 04:43:59', 0, 0, '', '2022-08-18 04:43:59'),
(9, 280, 250, 253, 'down', '2022-08-18 18:00:00', 0, 0, '', '2022-08-18 05:57:45'),
(10, 280, 253, 254, 'down', '2022-08-18 18:00:00', 0, 0, '', '2022-08-18 06:18:04'),
(11, 284, 248, 250, 'down', '2022-08-21 18:00:00', 0, 0, '', '2022-08-21 03:00:30'),
(12, 285, 248, 250, 'down', '2022-08-23 18:00:00', 0, 0, '', '2022-08-21 03:21:31'),
(13, 285, 250, 253, 'down', '2022-08-21 18:00:00', 0, 0, '', '2022-08-21 03:23:22'),
(14, 285, 248, 254, 'individual', '2022-08-24 18:00:00', 0, 0, '', '2022-08-24 03:53:16'),
(15, 287, 248, 250, 'individual', '2022-08-24 18:00:00', 0, 0, '', '2022-08-24 03:59:32'),
(16, 287, 248, 254, 'individual', '2022-09-08 18:00:00', 0, 0, '', '2022-08-24 04:00:56'),
(17, 287, 248, 255, 'individual', '2022-08-24 18:00:00', 0, 0, '', '2022-08-24 05:44:02'),
(18, 288, 248, 254, 'individual', '2022-09-21 18:00:00', 0, 0, '', '2022-08-24 08:15:14'),
(19, 288, 254, 253, 'up', '2022-08-24 10:29:30', 0, 0, '', '2022-08-24 10:29:30'),
(20, 289, 126, 253, 'individual', '2022-08-25 18:00:00', 0, 0, '', '2022-08-25 02:43:44'),
(21, 290, 126, 248, 'down', '2022-08-25 18:00:00', 0, 0, '', '2022-08-25 02:50:08'),
(22, 293, 250, 254, 'individual', '2022-08-26 18:00:00', 0, 0, '', '2022-08-25 06:20:00'),
(23, 293, 254, 250, 'indiv_up', '2022-08-25 09:12:06', 0, 0, '', '2022-08-25 09:12:06'),
(24, 294, 250, 257, 'individual', '2022-09-16 18:00:00', 0, 0, '', '2022-08-25 09:16:39'),
(25, 295, 250, 257, 'individual', '2022-09-09 18:00:00', 0, 0, '', '2022-08-25 09:29:03'),
(26, 295, 257, 250, 'indiv_up', '2022-08-25 09:33:24', 0, 0, '', '2022-08-25 09:33:24'),
(27, 296, 250, 257, 'individual', '2022-08-25 18:00:00', 0, 0, '', '2022-08-25 10:40:43'),
(28, 296, 257, 250, 'indiv_up', '2022-08-25 10:43:04', 0, 0, '', '2022-08-25 10:43:04'),
(29, 297, 250, 253, 'down', '2022-08-25 18:00:00', 0, 0, '', '2022-08-25 10:45:11'),
(30, 297, 253, 250, 'up', '2022-08-25 10:46:51', 0, 0, '', '2022-08-25 10:46:51'),
(31, 297, 253, 254, 'down', '2022-08-25 10:50:52', 0, 0, '', '2022-08-25 10:50:52'),
(32, 298, 248, 250, 'down', '2022-08-29 18:00:00', 0, 0, '', '2022-08-28 04:28:28'),
(33, 298, 250, 253, 'down', '2022-08-28 18:00:00', 0, 0, '', '2022-08-28 05:12:09'),
(34, 298, 253, 254, 'down', '2022-08-28 18:00:00', 0, 0, '', '2022-08-28 05:31:23'),
(35, 298, 254, 257, 'down', '2022-08-28 18:00:00', 0, 0, '', '2022-08-28 05:33:40'),
(36, 300, 248, 253, 'individual', '2022-08-29 18:00:00', 0, 0, '', '2022-08-29 03:25:53'),
(37, 302, 248, 253, 'individual', '2022-08-30 18:00:00', 0, 0, '', '2022-08-29 03:27:21'),
(38, 303, 248, 253, 'individual', '2022-08-30 18:00:00', 0, 0, '', '2022-08-29 03:28:35'),
(39, 304, 248, 250, 'down', '2022-08-29 18:00:00', 0, 0, '', '2022-08-29 04:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `college_division`
--

CREATE TABLE `college_division` (
  `college_div_id` int(11) NOT NULL,
  `college_division` varchar(50) DEFAULT NULL,
  `status` float NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `college_division`
--

INSERT INTO `college_division` (`college_div_id`, `college_division`, `status`) VALUES
(1, 'science', 1),
(2, 'commerce', 1),
(3, 'arts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `college_subject`
--

CREATE TABLE `college_subject` (
  `college_sub_id` int(11) NOT NULL,
  `college_subject_name` varchar(55) DEFAULT NULL,
  `college_subject_div` int(11) DEFAULT NULL,
  `college_subject_desc` longtext DEFAULT NULL,
  `college_subject_code` int(11) DEFAULT NULL,
  `status` float NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `college_subject`
--

INSERT INTO `college_subject` (`college_sub_id`, `college_subject_name`, `college_subject_div`, `college_subject_desc`, `college_subject_code`, `status`) VALUES
(1, 'hishab boggin', 2, 'this is a simple subject', 145685, 1),
(2, 'itihash', 3, 'this is itihash', 95845, 1),
(3, 'Physics 1st Paper', 1, 'this is a physics second paper', 456505, 1);

-- --------------------------------------------------------

--
-- Table structure for table `default_forms`
--

CREATE TABLE `default_forms` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `form_name` varchar(250) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `default_forms`
--

INSERT INTO `default_forms` (`id`, `form_id`, `form_name`, `table_name`, `status`, `created_at`) VALUES
(2, NULL, 'APA Report Form', NULL, 1, '2021-12-22 07:11:51'),
(3, NULL, 'বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক ', NULL, 1, '2021-12-22 09:05:24'),
(4, 0, 'বাজেট শাখা সংশ্লিষ্ট বাজেট ও এপিএ প্রতিবেদনের ফরমেট', NULL, 1, '2021-12-22 09:14:21'),
(5, 0, 'Annual Performance Evaluation', NULL, 1, '2021-12-22 10:59:23'),
(9, 5, 'Created Forms', NULL, 1, '2022-06-07 05:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `default_sub_forms`
--

CREATE TABLE `default_sub_forms` (
  `id` int(11) NOT NULL,
  `default_form_id` int(11) NOT NULL,
  `sub_form_name` varchar(250) NOT NULL,
  `table_name` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `default_sub_forms`
--

INSERT INTO `default_sub_forms` (`id`, `default_form_id`, `sub_form_name`, `table_name`, `status`) VALUES
(1, 2, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক ', 'annual_performance_agreement_quarterly', 0),
(3, 2, '২.২.১ মন্ত্রণালয়/বিভাগ/রাষ্ট্রীয় প্রতিষ্ঠানের জাতীয় শুদ্ধাচার কৌশল কর্মপরিকল্পনা', 'national_integrity_trategy_action_plan', 0),
(4, 2, '২.২.২ ই-গভর্ন্যান্স ও উদ্ভাবন কর্মপরিকল্পনা ', 'egovernance_innovation_action_plan', 0),
(5, 2, '২.২.৩ অভিযোগ প্রতিকার ব্যবস্থা সংক্রান্ত কর্মপরিকল্পনা', 'complaint_redressal_action_plan', 0),
(6, 2, '২.২.৪ সেবা প্রদান প্রতিশ্রুতি বাস্তবায়ন কর্মপরিকল্পনা', 'implement_service_delivery_commitments', 0),
(7, 2, '২.২.৫ তথ্য অধিকার বিষয়ে কর্মপরিকল্পনা', 'financial_year_right_information', 0),
(8, 3, '১.১.১. সচিবালয়', 'fiscal_year_budget_implementation_progress', 0),
(9, 3, '১.১.২. স্বায়ত্তশাসিত ও অন্যান্য প্রতিষ্ঠান', 'autonomous_and_other_institutions,autonomous_and_other_institutions_sub_rows', 0),
(10, 3, '১.২.১  উন্নয়ন প্রকল্প ', 'excluding_annual_development_programs', 0),
(11, 3, '১.২.২  উন্নয়ন প্রকল্প', 'development_project_annual_program', 0),
(12, 3, '১.৩.  মোট পরিচালন ও উন্নয়ন ব্যয়', 'total_management_development_costs', 0),
(13, 4, 'বাজেট', 'budget_branch_relevant_apareportformat', 0),
(14, 4, 'বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ)', 'annual_performance_agreenment_apa', 0),
(16, 4, 'বাজেট', 'relevant_budget_apa_report_format', 0),
(17, 4, 'বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ)', 'annual_performance_agreenment_table', 0),
(18, 4, 'পরিশিষ্ট-১', 'appendix_one_mis,appendix_one_table_ka,appendix_one_table_kha', 0),
(19, 4, 'পরিশিষ্ট-২', 'appendix_two_mis,appendix_two_table_ka,appendix_two_table_kha', 0),
(20, 4, 'পরিশিষ্ট-৩', 'appendix_three_mis,appendix_three_table', 0),
(21, 4, 'পরিশিষ্ট-৪', 'appendix_four_mis,appendix_four_table', 0),
(22, 4, 'পরিশিষ্ট-৫', 'appendix_five_table,appendix_five_mis', 0),
(23, 4, 'পরিশিষ্ট-৬', 'appendix_six_claims,appendix_six_claims_table', 0),
(24, 4, 'পরিশিষ্ট-৭', 'appendix_seven_table_1,appendix_seven_table_2,appendix_seven_table_2_sub,appendix_seven_table_3,appendix_seven_table_4,appendix_seven_table_5,appendix_seven_table_6,appendix_seven_table_7,appendix_seven_table_8,appendix_seven_table_9,appendix_seven_table_10,appendix_seven_table_11,appendix_seven_table_12,appendix_seven_table_13,appendix_seven_table_14,appendix_seven_table_14_sub,appendix_seven_table_15,appendix_seven_table_16,appendix_seven_table_17,appendix_seven_table_18,appendix_seven_table_19,appendix_seven_table_20,appendix_seven_table_20_sub,appendix_seven_table_21', 0),
(31, 4, 'পরিশিষ্ট-৮', 'section_three_first_part_appeight,section_three_second_part_appeight,section_two_outcome_eight,appendix_eight_mis', 0),
(32, 4, 'পরিশিষ্ট-৯', '        section_two_outcome,appendix_nine_mis,section_three_first_part,section_three_first_part_sub,section_three_first_part_sub_2,section_three_second_part,section_three_second_part_sub,section_three_second_part_sub_2', 0),
(33, 5, 'Menu>1.1. Annual Performance Evaluation', NULL, 0),
(34, 5, 'সেকশন-২: মন্ত্রণালয়/বিভাগের বিভিন্ন কার্যক্রমের চূড়ান্ত ফলাফল/প্রভাব', NULL, 0),
(35, 5, 'সেকশন-৩: কৌশলগত উদ্দেশ্য, অগ্রাধিকার, কার্যক্রম, কর্মসম্পাদন সূচক এবং লক্ষ্যমাত্রাসমূহ', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(10, NULL, NULL, 'Regulatory', NULL, NULL, NULL, '2021-12-12 04:58:18', '2021-12-12 04:58:18'),
(12, NULL, NULL, 'Bangladesh Bank', NULL, NULL, NULL, '2021-12-12 04:59:21', '2021-12-12 04:59:21'),
(13, NULL, 1, 'Accounts', NULL, NULL, NULL, '2021-12-14 10:29:15', '2021-12-14 10:30:49'),
(14, '13', 1, 'Sub Accounts', NULL, NULL, NULL, '2021-12-14 10:29:33', '2021-12-14 10:30:58'),
(15, NULL, 4, 'Nrbc Gulshan Accounts', NULL, NULL, NULL, '2022-02-03 05:37:47', '2022-02-03 05:37:47'),
(16, NULL, 1, 'Test Department Arnx 1', NULL, NULL, NULL, '2022-06-28 06:00:32', '2022-06-28 06:00:32'),
(51, '1', NULL, 'লিটিগেশন', NULL, NULL, NULL, '2022-07-12 11:37:24', '2022-07-12 11:37:24'),
(52, '1', NULL, 'ইনোভেশন', NULL, NULL, NULL, '2022-07-12 11:37:56', '2022-07-12 11:37:56'),
(53, '1', NULL, 'আই সি টি', NULL, NULL, NULL, '2022-07-12 11:38:32', '2022-07-12 11:38:32'),
(54, '2', NULL, 'লিটিগেশন', NULL, NULL, NULL, '2022-07-12 11:39:25', '2022-07-12 11:39:25'),
(55, '2', NULL, 'ইনোভেশন', NULL, NULL, NULL, '2022-07-12 11:39:31', '2022-07-12 11:39:31'),
(56, '2', NULL, 'আই সি টি', NULL, NULL, NULL, '2022-07-12 11:39:39', '2022-07-12 11:39:39'),
(57, '3', NULL, 'প্রশাসন', NULL, NULL, NULL, '2022-07-12 11:41:18', '2022-07-12 11:41:18'),
(58, '3', NULL, 'শুদ্ধাচার', NULL, NULL, NULL, '2022-07-12 11:41:31', '2022-07-12 11:41:31'),
(59, '3', NULL, 'ব্যবসা সহজীকরণ', NULL, NULL, NULL, '2022-07-12 11:41:43', '2022-07-12 11:41:43'),
(60, '4', NULL, 'আই সি টি', NULL, NULL, NULL, '2022-07-12 11:43:40', '2022-07-12 11:43:40'),
(61, '4', NULL, 'প্রশাসন', NULL, NULL, NULL, '2022-07-12 11:43:51', '2022-07-12 11:43:51'),
(62, '5', NULL, 'আই সি টি', NULL, NULL, NULL, '2022-07-12 11:44:41', '2022-07-12 11:44:41'),
(63, '5', NULL, 'প্রশাসন', NULL, NULL, NULL, '2022-07-12 11:44:49', '2022-07-12 11:44:49'),
(64, '6', NULL, 'আই সি টি', NULL, NULL, NULL, '2022-07-12 11:45:40', '2022-07-12 11:45:40'),
(65, '6', NULL, 'প্রশাসন', NULL, NULL, NULL, '2022-07-12 11:45:48', '2022-07-12 11:45:48'),
(66, '1', NULL, 'isgngnsgj', NULL, NULL, NULL, '2022-07-17 05:33:23', '2022-07-17 05:33:23'),
(67, '4', NULL, 'new department 1111', NULL, NULL, NULL, '2022-07-17 09:53:30', '2022-07-17 09:53:30'),
(68, '3', NULL, 'neabhaf', NULL, NULL, NULL, '2022-07-17 10:31:14', '2022-07-17 10:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(35, NULL, NULL, 'Head of banking', NULL, NULL, NULL, '2021-12-12 04:59:56', '2021-12-12 04:59:56'),
(36, '35', NULL, 'Employee', NULL, NULL, NULL, '2021-12-12 05:00:10', '2021-12-12 05:00:10'),
(37, NULL, 1, 'Designation Bangladesh Bank', NULL, NULL, NULL, '2021-12-14 10:44:17', '2021-12-14 10:44:17'),
(38, '37', 1, 'Sub de Bangladesh Bank', NULL, NULL, NULL, '2021-12-14 10:44:41', '2021-12-14 10:44:41'),
(39, NULL, 4, 'Lamba', NULL, NULL, NULL, '2022-02-03 05:40:01', '2022-02-03 05:40:01'),
(40, NULL, 1, 'Test Designation Arnx 1', NULL, NULL, NULL, '2022-06-28 06:00:16', '2022-06-28 06:00:16'),
(69, '5', NULL, 'ডেপুটি জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:01:10', '2022-07-12 11:01:10'),
(70, '5', NULL, 'জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:01:21', '2022-07-12 11:01:21'),
(71, '5', NULL, 'ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:01:37', '2022-07-12 11:01:37'),
(72, '4', NULL, 'ডেপুটি জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:06:07', '2022-07-12 11:06:07'),
(73, '4', NULL, 'জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:06:13', '2022-07-12 11:06:13'),
(74, '4', NULL, 'ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:06:21', '2022-07-12 11:06:21'),
(75, '6', NULL, 'ডেপুটি জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:07:22', '2022-07-12 11:07:22'),
(76, '6', NULL, 'জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:07:30', '2022-07-12 11:07:30'),
(77, '6', NULL, 'ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:07:45', '2022-07-12 11:07:45'),
(83, '2', NULL, 'অফিসার', NULL, NULL, NULL, '2022-07-12 11:24:58', '2022-07-12 11:24:58'),
(84, '2', NULL, 'ডেপুটি সেক্রেটারি', NULL, NULL, NULL, '2022-07-12 11:25:28', '2022-07-12 11:25:28'),
(85, '2', NULL, 'আইটি অফিসার', NULL, NULL, NULL, '2022-07-12 11:25:49', '2022-07-12 11:25:49'),
(87, '3', NULL, 'সহকারী পরিচালক', NULL, NULL, NULL, '2022-07-12 11:30:13', '2022-07-12 11:30:13'),
(88, '3', NULL, 'পরিচালক', NULL, NULL, NULL, '2022-07-12 11:30:26', '2022-07-12 11:30:26'),
(89, '3', NULL, 'উপ পরিচালক', NULL, NULL, NULL, '2022-07-12 11:30:35', '2022-07-12 11:30:35'),
(90, '1', NULL, 'সচিব', NULL, NULL, NULL, '2022-07-12 11:33:12', '2022-07-12 11:33:12'),
(91, '1', NULL, 'সহকারী সচিব', NULL, NULL, NULL, '2022-07-12 11:33:58', '2022-07-12 11:33:58'),
(92, '1', NULL, 'যুগ্ম সচিব', NULL, NULL, NULL, '2022-07-12 11:34:36', '2022-07-12 11:34:36'),
(93, '4', NULL, 'test designation', NULL, NULL, NULL, '2022-07-17 09:53:45', '2022-07-17 09:53:45'),
(94, '3', NULL, 'teacher', NULL, NULL, NULL, '2022-07-17 10:31:33', '2022-07-17 10:31:33'),
(95, '1', NULL, 'Assistant General Manager', NULL, NULL, NULL, '2022-07-19 10:30:01', '2022-07-19 10:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(64, NULL, 12, 'ICT Cell', NULL, 1, NULL, '2022-07-18 06:26:42', '2022-07-19 09:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(11) NOT NULL,
  `form_id` varchar(250) NOT NULL,
  `form_name` varchar(250) NOT NULL,
  `html_form` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_creator` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `form_id`, `form_name`, `html_form`, `status`, `form_creator`, `message`, `created_at`, `updated_at`) VALUES
(253, 'Form-4026089', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', NULL, 1, 248, NULL, '2022-08-08 11:48:04', '2022-08-08 11:48:04'),
(254, 'Form-2513816', 'fqbfqbfhbqj', '<p>fqfq4f</p>', 1, 248, NULL, '2022-08-08 13:17:23', '2022-08-08 13:17:23'),
(255, 'Form-813117', 'qfqffq5f45', '<p>f545af5</p>', 1, 248, NULL, '2022-08-08 13:18:27', '2022-08-08 13:18:27'),
(256, 'Form-9557424', 'heavy', '<p>htuath</p>', 1, 248, NULL, '2022-08-08 13:32:45', '2022-08-08 13:32:45'),
(257, 'Form-9669712', 'this is a plain form', '<p>hlw plain form</p>', 1, 248, NULL, '2022-08-08 13:37:42', '2022-08-08 13:37:42'),
(258, 'Form-1798467', 'kkafkm', '<p>kfmfmdkf</p>', 1, 248, NULL, '2022-08-11 11:24:32', '2022-08-11 11:24:32'),
(259, 'Form-8963342', 'gfebyhfnjfnj', '<p>jnnjfnff</p>', 1, 248, NULL, '2022-08-11 11:45:45', '2022-08-11 11:45:45'),
(260, 'Form-4227150', 'test form 814', '<p>this is a test form</p>', 1, 126, NULL, '2022-08-14 03:12:10', '2022-08-14 03:12:10'),
(261, 'Form-4508495', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', '<p>this is not fair</p>', 1, 248, NULL, '2022-08-14 04:34:44', '2022-08-14 04:34:44'),
(262, 'Form-2227982', 'femkffefe,l', '<p>kafmkfmak</p>', 1, 248, NULL, '2022-08-14 04:36:54', '2022-08-14 04:36:54'),
(263, 'Form-402189', 'দেশের জাতীয় পরি', '<p>hello bro</p>', 1, 248, NULL, '2022-08-14 04:48:23', '2022-08-14 04:48:23'),
(264, 'Form-6918947', 'new form testing', '<p>this is a new form testing</p>', 1, 248, NULL, '2022-08-14 05:07:51', '2022-08-14 05:07:51'),
(265, 'Form-2127335', 'this is a normal form', '<p>another normal form</p>', 1, 248, NULL, '2022-08-14 05:48:06', '2022-08-14 05:48:06'),
(266, 'Form-2305978', 'new data form to auth', '<p>this is a new data form</p>', 1, 248, NULL, '2022-08-14 06:12:30', '2022-08-14 06:12:30'),
(267, 'Form-8448308', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ 2023', NULL, 1, 248, NULL, '2022-08-14 06:42:08', '2022-08-14 06:42:08'),
(268, 'Form-412207', 'ejf8ejife', '<p>mgnkg</p>', 1, 248, NULL, '2022-08-14 07:06:56', '2022-08-14 07:06:56'),
(269, 'Form-326772', 'f5efe24fe5', '<p>a54f5af4f5a</p>', 1, 250, NULL, '2022-08-15 16:40:57', '2022-08-15 16:40:57'),
(270, 'Form-5929955', 'new form 724', '<p>fqefeef</p>', 1, 250, NULL, '2022-08-15 17:05:45', '2022-08-15 17:05:45'),
(271, 'Form-3016612', 'qfefeef', '<p>fqqffq</p>', 1, 250, NULL, '2022-08-15 17:08:10', '2022-08-15 17:08:10'),
(272, 'Form-4005456', 'data form by shadman', '<p>thofifaif</p>', 1, 250, NULL, '2022-08-15 17:27:33', '2022-08-15 17:27:33'),
(273, 'Form-2035646', 'enfnfeef', '<p>fnfjnfj</p>', 1, 248, NULL, '2022-08-16 04:05:37', '2022-08-16 04:05:37'),
(274, 'Form-7353134', 'this is a new subjective form', '<p>this is a form</p>', 1, 126, NULL, '2022-08-16 11:34:26', '2022-08-16 11:34:26'),
(275, 'Form-8416637', 'New Form 9999', '<p>this is another new form 9999</p>', 1, 248, NULL, '2022-08-17 04:06:48', '2022-08-17 04:06:48'),
(276, 'Form-8869709', 'A howard', '<p>fbfabffhab</p>', 1, 248, NULL, '2022-08-17 06:11:01', '2022-08-17 06:11:01'),
(277, 'Form-5374813', 'feeeffe', NULL, 1, 248, NULL, '2022-08-17 08:59:16', '2022-08-17 08:59:16'),
(278, 'Form-4607500', 'fe57feefe', '<p>f1eef1ef</p>', 1, 250, NULL, '2022-08-17 09:57:15', '2022-08-17 09:57:15'),
(279, 'Form-4145584', 'new form with very difficulties', '<p>abyfafhb</p>', 1, 126, NULL, '2022-08-17 15:04:33', '2022-08-17 15:04:33'),
(280, 'Form-7876985', 'Form Hand', '<p>this is form hand</p>', 1, 248, NULL, '2022-08-18 04:32:31', '2022-08-18 04:32:31'),
(281, 'Form-2235538', 'this is text form 820', '<p>this is a text form</p>', 1, 248, NULL, '2022-08-20 16:43:38', '2022-08-20 16:43:38'),
(282, 'Form-9047947', 'armaan form 8202022', '<p>armaan form 8202022</p>', 1, 248, NULL, '2022-08-20 17:16:34', '2022-08-20 17:16:34'),
(283, 'Form-5660176', 'fefe21f12fe1', '<p>af2af12fa2</p>', 1, 248, NULL, '2022-08-20 18:08:50', '2022-08-20 18:08:50'),
(284, 'Form-3850900', 'Form morning', '<p>this is&nbsp; a morning form</p>', 1, 248, NULL, '2022-08-21 02:56:11', '2022-08-21 02:56:11'),
(285, 'Form-6993389', 'qfe51efq41f', NULL, 1, 248, NULL, '2022-08-21 03:18:48', '2022-08-21 03:18:48'),
(286, 'Form-2999469', 'create form only for bank', '<p>this is a bank form</p>', 1, 248, NULL, '2022-08-24 03:57:48', '2022-08-24 03:57:48'),
(287, 'Form-396356', 'this is a form for bank only', '<p>this is a bank form</p>', 1, 248, NULL, '2022-08-24 03:58:36', '2022-08-24 03:58:36'),
(288, 'Form-9898494', 'new indi calculation', '<p>this is a calculation form</p>', 1, 248, NULL, '2022-08-24 08:13:10', '2022-08-24 08:13:10'),
(289, 'Form-3605269', 'feefe45fq5fe4', '<p>5f454f5a4f</p>', 1, 126, NULL, '2022-08-25 02:43:15', '2022-08-25 02:43:15'),
(290, 'Form-9756994', 'subform', '<p>this is a sub form</p>', 1, 126, NULL, '2022-08-25 02:49:27', '2022-08-25 02:49:27'),
(291, 'Form-9012695', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', '<p>দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ</p>', 1, 248, NULL, '2022-08-25 03:03:52', '2022-08-25 03:03:52'),
(292, 'Form-1430416', 'this is my new check', '<p>this is a description form</p>', 1, 250, NULL, '2022-08-25 05:19:48', '2022-08-25 05:19:48'),
(293, 'Form-4749991', 'new form check', '<p>plotul</p>', 1, 250, NULL, '2022-08-25 05:30:48', '2022-08-25 05:30:48'),
(294, 'Form-9360741', 'Black Form', '<p>New Black Form</p>', 1, 250, NULL, '2022-08-25 09:13:13', '2022-08-25 09:13:13'),
(295, 'Form-9629422', 'fbafabbfahhf', '<p>habhafbbh</p>', 1, 250, NULL, '2022-08-25 09:28:39', '2022-08-25 09:28:39'),
(296, 'Form-6904801', 'this is a new form energy', '<p>yhjfsosfnsjsnj</p>', 1, 250, NULL, '2022-08-25 10:39:28', '2022-08-25 10:39:28'),
(297, 'Form-4433387', 'this is regulatory', '<p>this is reg</p>', 1, 250, NULL, '2022-08-25 10:44:33', '2022-08-25 10:44:33'),
(298, 'Form-3829504', 'tukur', '<p>this is a new tk form</p>', 1, 248, NULL, '2022-08-28 03:43:07', '2022-08-28 03:43:07'),
(299, 'Form-977392', 'ffeeffe', '<p>fqfeef</p>', 1, 248, NULL, '2022-08-28 06:38:26', '2022-08-28 06:38:26'),
(300, 'Form-6540891', 'another text form', '<p>this is text form</p>', 1, 248, NULL, '2022-08-29 02:58:30', '2022-08-29 02:58:30'),
(301, 'Form-5128057', 'this is new text form damn', '<p>this is a text form pro</p>', 1, 248, NULL, '2022-08-29 03:01:23', '2022-08-29 03:01:23'),
(302, 'Form-9376236', 'fuibabfbh', '<p>hcabhacbachb</p>', 1, 248, NULL, '2022-08-29 03:26:50', '2022-08-29 03:26:50'),
(303, 'Form-3829948', 'eqfefqfeqf', '<p>qffqqffq</p>', 1, 248, NULL, '2022-08-29 03:28:17', '2022-08-29 03:28:17'),
(304, 'Form-9489535', 'f4f5ef4ef54', '<p>4554afaf54</p>', 1, 248, NULL, '2022-08-29 04:54:08', '2022-08-29 04:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `forms_info_all`
--

CREATE TABLE `forms_info_all` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `sender_category` int(11) DEFAULT NULL,
  `receiver_category` int(11) DEFAULT NULL,
  `form_created_by` int(11) DEFAULT NULL,
  `creator_category` int(11) DEFAULT NULL,
  `send_process` varchar(50) DEFAULT NULL,
  `report_status` varchar(50) DEFAULT NULL,
  `final_status` float DEFAULT NULL,
  `feedback_msg` text DEFAULT NULL,
  `deadline` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forms_info_all`
--

INSERT INTO `forms_info_all` (`id`, `form_id`, `sender_id`, `receiver_id`, `sender_category`, `receiver_category`, `form_created_by`, `creator_category`, `send_process`, `report_status`, `final_status`, `feedback_msg`, `deadline`, `comment`, `created_at`, `updated_by`) VALUES
(370, 259, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-11 18:00:00', NULL, '2022-08-11 11:48:25', '2022-08-11 11:48:25'),
(379, 258, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-11 18:00:00', NULL, '2022-08-11 11:56:06', '2022-08-11 11:56:06'),
(405, 258, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:17:45', '2022-08-11 12:17:45'),
(406, 259, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:17:57', '2022-08-11 12:17:57'),
(407, 258, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:23:59', '2022-08-11 12:23:59'),
(408, 259, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:24:11', '2022-08-11 12:24:11'),
(409, 258, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:24:18', '2022-08-11 12:24:18'),
(410, 258, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:26:08', '2022-08-11 12:26:08'),
(411, 258, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:28:23', '2022-08-11 12:28:23'),
(412, 258, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:31:39', '2022-08-11 12:31:39'),
(413, 258, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:32:21', '2022-08-11 12:32:21'),
(414, 258, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:34:35', '2022-08-11 12:34:35'),
(415, 258, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:39:21', '2022-08-11 12:39:21'),
(416, 258, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-11 12:40:16', '2022-08-11 12:40:16'),
(417, 260, NULL, NULL, NULL, NULL, 126, 1, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-14 03:12:10', '2022-08-14 03:12:10'),
(418, 260, 126, 248, 1, 2, 126, 1, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 03:38:11', '2022-08-14 03:38:11'),
(419, 260, 248, NULL, 2, 2, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 04:29:26', '2022-08-14 04:29:26'),
(420, 260, 248, NULL, 2, 2, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 04:30:22', '2022-08-14 04:30:22'),
(421, 260, 248, NULL, 2, 2, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 04:30:35', '2022-08-14 04:30:35'),
(422, 260, 248, NULL, 2, 2, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 04:33:26', '2022-08-14 04:33:26'),
(423, 261, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 0, NULL, NULL, NULL, '2022-08-14 04:34:44', '2022-08-14 04:34:44'),
(424, 262, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-14 04:36:54', '2022-08-14 04:36:54'),
(425, 263, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-14 04:48:23', '2022-08-14 04:48:23'),
(426, 264, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-14 05:07:51', '2022-08-14 05:07:51'),
(427, 264, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-14 18:00:00', NULL, '2022-08-14 05:09:16', '2022-08-14 05:09:16'),
(428, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:11:09', '2022-08-14 05:11:09'),
(429, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:11:57', '2022-08-14 05:11:57'),
(430, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:13:05', '2022-08-14 05:13:05'),
(431, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:15:58', '2022-08-14 05:15:58'),
(432, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:16:11', '2022-08-14 05:16:11'),
(433, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:26:29', '2022-08-14 05:26:29'),
(434, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:26:48', '2022-08-14 05:26:48'),
(435, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:27:42', '2022-08-14 05:27:42'),
(436, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:27:56', '2022-08-14 05:27:56'),
(437, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:30:46', '2022-08-14 05:30:46'),
(438, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:31:04', '2022-08-14 05:31:04'),
(439, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:31:43', '2022-08-14 05:31:43'),
(440, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:32:15', '2022-08-14 05:32:15'),
(441, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:32:38', '2022-08-14 05:32:38'),
(442, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:34:36', '2022-08-14 05:34:36'),
(443, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:38:00', '2022-08-14 05:38:00'),
(444, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:38:39', '2022-08-14 05:38:39'),
(445, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:40:59', '2022-08-14 05:40:59'),
(446, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:42:29', '2022-08-14 05:42:29'),
(447, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:42:45', '2022-08-14 05:42:45'),
(448, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:43:02', '2022-08-14 05:43:02'),
(449, 264, 249, 248, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:43:19', '2022-08-14 05:43:19'),
(450, 264, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:43:23', '2022-08-14 05:43:23'),
(451, 264, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:47:08', '2022-08-14 05:47:08'),
(452, 264, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:47:18', '2022-08-14 05:47:18'),
(453, 265, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-14 05:48:06', '2022-08-14 05:48:06'),
(454, 265, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, 'hoy nai form ta', '2022-08-14 18:00:00', NULL, '2022-08-14 05:53:38', '2022-08-14 05:53:38'),
(455, 265, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:53:48', '2022-08-14 05:53:48'),
(456, 265, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:54:06', '2022-08-14 05:54:06'),
(457, 265, 249, 248, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:54:15', '2022-08-14 05:54:15'),
(458, 265, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, 'hoy nai form ta', NULL, NULL, '2022-08-14 05:54:18', '2022-08-14 05:54:18'),
(459, 265, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:54:30', '2022-08-14 05:54:30'),
(460, 265, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 05:54:35', '2022-08-14 05:54:35'),
(461, 265, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:11:41', '2022-08-14 06:11:41'),
(462, 265, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:11:47', '2022-08-14 06:11:47'),
(463, 266, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-14 06:12:30', '2022-08-14 06:12:30'),
(464, 266, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:20:44', '2022-08-14 06:20:44'),
(465, 266, 250, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:20:48', '2022-08-14 06:20:48'),
(466, 266, 250, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:27:31', '2022-08-14 06:27:31'),
(467, 266, 250, 251, 3, 3, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-14 18:00:00', NULL, '2022-08-14 06:28:36', '2022-08-14 06:28:36'),
(468, 266, 251, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:28:39', '2022-08-14 06:28:39'),
(469, 267, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-14 06:42:08', '2022-08-14 06:42:08'),
(470, 267, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-16 18:00:00', NULL, '2022-08-14 06:48:58', '2022-08-14 06:48:58'),
(471, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:49:04', '2022-08-14 06:49:04'),
(472, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:49:38', '2022-08-14 06:49:38'),
(473, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:49:59', '2022-08-14 06:49:59'),
(474, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:50:09', '2022-08-14 06:50:09'),
(475, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:50:23', '2022-08-14 06:50:23'),
(476, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:50:43', '2022-08-14 06:50:43'),
(477, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 06:51:02', '2022-08-14 06:51:02'),
(478, 268, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-14 07:06:56', '2022-08-14 07:06:56'),
(479, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 07:51:10', '2022-08-14 07:51:10'),
(480, 265, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 07:51:19', '2022-08-14 07:51:19'),
(481, 265, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 07:51:29', '2022-08-14 07:51:29'),
(482, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 07:51:40', '2022-08-14 07:51:40'),
(483, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 07:51:53', '2022-08-14 07:51:53'),
(484, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 07:55:43', '2022-08-14 07:55:43'),
(485, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 07:57:51', '2022-08-14 07:57:51'),
(486, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 07:59:50', '2022-08-14 07:59:50'),
(487, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:02:57', '2022-08-14 08:02:57'),
(488, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:10:30', '2022-08-14 08:10:30'),
(489, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:11:17', '2022-08-14 08:11:17'),
(490, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:11:36', '2022-08-14 08:11:36'),
(491, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:12:06', '2022-08-14 08:12:06'),
(492, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:12:27', '2022-08-14 08:12:27'),
(493, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:12:58', '2022-08-14 08:12:58'),
(494, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:13:15', '2022-08-14 08:13:15'),
(495, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:13:53', '2022-08-14 08:13:53'),
(496, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:40:17', '2022-08-14 08:40:17'),
(497, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:42:04', '2022-08-14 08:42:04'),
(498, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:42:20', '2022-08-14 08:42:20'),
(499, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:43:06', '2022-08-14 08:43:06'),
(500, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:43:10', '2022-08-14 08:43:10'),
(501, 266, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:43:37', '2022-08-14 08:43:37'),
(502, 267, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 08:44:11', '2022-08-14 08:44:11'),
(503, 268, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-14 18:00:00', NULL, '2022-08-14 10:30:01', '2022-08-14 10:30:01'),
(504, 268, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-14 18:00:00', NULL, '2022-08-14 10:31:08', '2022-08-14 10:31:08'),
(505, 268, 248, 249, 2, 2, 248, 2, NULL, 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-14 10:31:27', '2022-08-14 10:31:27'),
(506, 269, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-15 16:40:57', '2022-08-15 16:40:57'),
(507, 270, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 0, NULL, NULL, NULL, '2022-08-15 17:05:45', '2022-08-15 17:05:45'),
(508, 271, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-15 17:08:10', '2022-08-15 17:08:10'),
(509, 272, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-15 17:27:33', '2022-08-15 17:27:33'),
(510, 260, 126, NULL, 1, 1, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 03:57:09', '2022-08-16 03:57:09'),
(511, 273, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-16 04:05:37', '2022-08-16 04:05:37'),
(512, 273, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 04:42:47', '2022-08-16 04:42:47'),
(513, 273, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 05:08:21', '2022-08-16 05:08:21'),
(514, 273, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-16 18:00:00', NULL, '2022-08-16 05:08:58', '2022-08-16 05:08:58'),
(515, 273, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 06:15:32', '2022-08-16 06:15:32'),
(516, 273, 126, NULL, 1, 1, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 06:18:25', '2022-08-16 06:18:25'),
(517, 272, 250, 253, 3, 4, 250, 3, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 08:27:54', '2022-08-16 08:27:54'),
(518, 273, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 08:31:53', '2022-08-16 08:31:53'),
(519, 274, NULL, NULL, NULL, NULL, 126, 1, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-16 11:34:26', '2022-08-16 11:34:26'),
(520, 274, 126, 248, 1, 2, 126, 1, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 11:35:19', '2022-08-16 11:35:19'),
(521, 274, 248, NULL, 2, 2, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 11:35:28', '2022-08-16 11:35:28'),
(522, 274, 248, 250, 2, 3, 126, 1, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 11:35:45', '2022-08-16 11:35:45'),
(523, 274, 250, NULL, 3, 3, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 11:36:51', '2022-08-16 11:36:51'),
(524, 274, 250, 253, 3, 4, 126, 1, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 11:37:18', '2022-08-16 11:37:18'),
(525, 274, 253, NULL, 4, 4, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-16 11:39:32', '2022-08-16 11:39:32'),
(526, 275, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 0, NULL, NULL, NULL, '2022-08-17 04:06:48', '2022-08-17 04:06:48'),
(527, 276, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 0, NULL, NULL, NULL, '2022-08-17 06:11:01', '2022-08-17 06:11:01'),
(528, 277, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-17 08:59:16', '2022-08-17 08:59:16'),
(529, 278, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-17 09:57:15', '2022-08-17 09:57:15'),
(530, 259, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 14:58:45', '2022-08-17 14:58:45'),
(531, 274, 248, NULL, 2, 2, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:03:03', '2022-08-17 15:03:03'),
(532, 279, NULL, NULL, NULL, NULL, 126, 1, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-17 15:04:33', '2022-08-17 15:04:33'),
(533, 279, 126, 248, 1, 2, 126, 1, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:05:09', '2022-08-17 15:05:09'),
(534, 279, 248, NULL, 2, 2, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:05:15', '2022-08-17 15:05:15'),
(535, 279, 248, 249, 2, 2, 126, 1, 'forward', 'RECIEVED', 0, NULL, '2022-08-17 18:00:00', NULL, '2022-08-17 15:05:28', '2022-08-17 15:05:28'),
(536, 279, 249, NULL, 2, 2, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:05:32', '2022-08-17 15:05:32'),
(537, 279, 249, NULL, 2, 2, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:05:45', '2022-08-17 15:05:45'),
(538, 279, 249, 248, 2, 2, 126, 1, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:05:54', '2022-08-17 15:05:54'),
(539, 279, 248, NULL, 2, 2, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:05:57', '2022-08-17 15:05:57'),
(540, 279, 248, 250, 2, 3, 126, 1, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:06:23', '2022-08-17 15:06:23'),
(541, 279, 250, NULL, 3, 3, 126, 1, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-17 15:06:27', '2022-08-17 15:06:27'),
(542, 279, 250, 251, 3, 3, 126, 1, 'forward', 'RECIEVED', 1, NULL, '2022-08-17 18:00:00', NULL, '2022-08-17 15:07:16', '2022-08-17 15:07:16'),
(543, 279, 251, NULL, 3, 3, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:07:19', '2022-08-17 15:07:19'),
(544, 279, 251, NULL, 3, 3, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:07:31', '2022-08-17 15:07:31'),
(545, 279, 251, 250, 3, 3, 126, 1, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:07:39', '2022-08-17 15:07:39'),
(546, 279, 250, NULL, 3, 3, 126, 1, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-17 15:07:44', '2022-08-17 15:07:44'),
(547, 279, 250, NULL, 3, 3, 126, 1, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-17 15:08:56', '2022-08-17 15:08:56'),
(548, 280, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-18 04:32:31', '2022-08-18 04:32:31'),
(549, 280, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-18 18:00:00', NULL, '2022-08-18 04:33:58', '2022-08-18 04:33:58'),
(550, 280, 248, 250, 2, 3, 248, 2, NULL, 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 04:43:59', '2022-08-18 04:43:59'),
(551, 280, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 04:45:36', '2022-08-18 04:45:36'),
(552, 280, 248, 250, 2, 3, 248, 2, NULL, 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 04:46:04', '2022-08-18 04:46:04'),
(553, 280, 248, 250, 2, 3, 248, 2, NULL, 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 04:46:40', '2022-08-18 04:46:40'),
(554, 280, 248, 250, 2, 3, 248, 2, NULL, 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 04:47:03', '2022-08-18 04:47:03'),
(555, 280, 248, 250, 2, 3, 248, 2, NULL, 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 04:47:29', '2022-08-18 04:47:29'),
(556, 280, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 04:47:49', '2022-08-18 04:47:49'),
(557, 280, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 04:49:16', '2022-08-18 04:49:16'),
(558, 280, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 04:51:55', '2022-08-18 04:51:55'),
(559, 280, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 04:53:31', '2022-08-18 04:53:31'),
(560, 280, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 05:56:24', '2022-08-18 05:56:24'),
(561, 280, 250, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 05:57:04', '2022-08-18 05:57:04'),
(562, 280, 250, 253, 3, 4, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 05:57:45', '2022-08-18 05:57:45'),
(563, 280, 253, NULL, 4, 4, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 05:58:13', '2022-08-18 05:58:13'),
(564, 280, 253, NULL, 4, 4, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 05:58:38', '2022-08-18 05:58:38'),
(565, 280, 250, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 06:09:57', '2022-08-18 06:09:57'),
(566, 280, 250, 251, 3, 3, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-18 18:00:00', NULL, '2022-08-18 06:10:29', '2022-08-18 06:10:29'),
(567, 280, 253, NULL, 4, 4, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 06:13:05', '2022-08-18 06:13:05'),
(568, 280, 253, 255, 4, 4, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-17 18:00:00', NULL, '2022-08-18 06:16:28', '2022-08-18 06:16:28'),
(569, 280, 253, 254, 4, 5, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 06:18:04', '2022-08-18 06:18:04'),
(570, 280, 254, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 06:18:10', '2022-08-18 06:18:10'),
(571, 280, 254, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 06:22:37', '2022-08-18 06:22:37'),
(572, 280, 254, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 06:24:51', '2022-08-18 06:24:51'),
(573, 280, 254, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 06:25:22', '2022-08-18 06:25:22'),
(574, 280, 254, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 06:25:29', '2022-08-18 06:25:29'),
(575, 280, 254, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 06:26:03', '2022-08-18 06:26:03'),
(576, 280, 255, NULL, 4, 4, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 06:26:36', '2022-08-18 06:26:36'),
(577, 280, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 08:48:42', '2022-08-18 08:48:42'),
(578, 280, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-18 08:48:53', '2022-08-18 08:48:53'),
(579, 282, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 0, NULL, NULL, NULL, '2022-08-20 17:16:34', '2022-08-20 17:16:34'),
(580, 282, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 1, NULL, '2022-08-20 18:00:00', NULL, '2022-08-20 17:17:15', '2022-08-20 17:17:15'),
(581, 282, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:17:18', '2022-08-20 17:17:18'),
(582, 282, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:17:40', '2022-08-20 17:17:40'),
(583, 282, 249, 248, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:17:47', '2022-08-20 17:17:47'),
(584, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-20 17:18:00', '2022-08-20 17:18:00'),
(585, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-20 17:18:24', '2022-08-20 17:18:24'),
(586, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-20 17:19:17', '2022-08-20 17:19:17'),
(587, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-20 17:19:32', '2022-08-20 17:19:32'),
(588, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:19:45', '2022-08-20 17:19:45'),
(589, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:24:38', '2022-08-20 17:24:38'),
(590, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:26:47', '2022-08-20 17:26:47'),
(591, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:27:46', '2022-08-20 17:27:46'),
(592, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:28:30', '2022-08-20 17:28:30'),
(593, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:29:21', '2022-08-20 17:29:21'),
(594, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:34:08', '2022-08-20 17:34:08'),
(595, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:34:30', '2022-08-20 17:34:30'),
(596, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:34:49', '2022-08-20 17:34:49'),
(597, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:35:22', '2022-08-20 17:35:22'),
(598, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:35:56', '2022-08-20 17:35:56'),
(599, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:36:13', '2022-08-20 17:36:13'),
(600, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:36:20', '2022-08-20 17:36:20'),
(601, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:40:06', '2022-08-20 17:40:06'),
(602, 282, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:53:40', '2022-08-20 17:53:40'),
(603, 282, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:53:54', '2022-08-20 17:53:54'),
(604, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:54:58', '2022-08-20 17:54:58'),
(605, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:55:19', '2022-08-20 17:55:19'),
(606, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 17:56:43', '2022-08-20 17:56:43'),
(607, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:00:37', '2022-08-20 18:00:37'),
(608, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:01:12', '2022-08-20 18:01:12'),
(609, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:08:05', '2022-08-20 18:08:05'),
(610, 282, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:08:24', '2022-08-20 18:08:24'),
(611, 283, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-20 18:08:50', '2022-08-20 18:08:50'),
(612, 283, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-21 18:00:00', NULL, '2022-08-20 18:09:13', '2022-08-20 18:09:13'),
(613, 283, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:10:52', '2022-08-20 18:10:52'),
(614, 283, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:12:58', '2022-08-20 18:12:58'),
(615, 283, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:13:07', '2022-08-20 18:13:07'),
(616, 283, 249, 248, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:13:15', '2022-08-20 18:13:15'),
(617, 283, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:13:22', '2022-08-20 18:13:22'),
(618, 283, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:13:33', '2022-08-20 18:13:33'),
(619, 283, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:13:38', '2022-08-20 18:13:38'),
(620, 283, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:13:55', '2022-08-20 18:13:55'),
(621, 283, 249, 248, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:14:08', '2022-08-20 18:14:08'),
(622, 283, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:14:15', '2022-08-20 18:14:15'),
(623, 283, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:14:22', '2022-08-20 18:14:22'),
(624, 283, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:17:46', '2022-08-20 18:17:46'),
(625, 283, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-20 18:17:54', '2022-08-20 18:17:54'),
(626, 284, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-21 02:56:11', '2022-08-21 02:56:11'),
(627, 284, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-21 18:00:00', NULL, '2022-08-21 02:56:58', '2022-08-21 02:56:58'),
(628, 284, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:57:37', '2022-08-21 02:57:37'),
(629, 284, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:58:13', '2022-08-21 02:58:13'),
(630, 284, 249, 248, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:58:21', '2022-08-21 02:58:21'),
(631, 284, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:58:24', '2022-08-21 02:58:24'),
(632, 284, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:58:36', '2022-08-21 02:58:36'),
(633, 284, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:58:39', '2022-08-21 02:58:39'),
(634, 284, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:58:48', '2022-08-21 02:58:48'),
(635, 284, 249, 248, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:58:54', '2022-08-21 02:58:54'),
(636, 284, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:58:56', '2022-08-21 02:58:56'),
(637, 284, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:59:01', '2022-08-21 02:59:01'),
(638, 284, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 02:59:04', '2022-08-21 02:59:04'),
(639, 284, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:00:30', '2022-08-21 03:00:30'),
(640, 284, 250, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:00:33', '2022-08-21 03:00:33'),
(641, 285, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-21 03:18:48', '2022-08-21 03:18:48'),
(642, 285, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 1, NULL, '2022-08-21 18:00:00', NULL, '2022-08-21 03:19:21', '2022-08-21 03:19:21'),
(643, 285, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:19:44', '2022-08-21 03:19:44'),
(644, 285, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:20:24', '2022-08-21 03:20:24'),
(645, 285, 249, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:20:40', '2022-08-21 03:20:40'),
(646, 285, 249, 248, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:21:06', '2022-08-21 03:21:06'),
(647, 285, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-21 03:21:14', '2022-08-21 03:21:14'),
(648, 285, 248, NULL, 2, 2, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:21:17', '2022-08-21 03:21:17'),
(649, 285, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:21:31', '2022-08-21 03:21:31'),
(650, 285, 250, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-21 03:21:51', '2022-08-21 03:21:51'),
(651, 285, 250, 251, 3, 3, 248, 2, 'forward', 'RECIEVED', 1, NULL, '2022-08-21 18:00:00', NULL, '2022-08-21 03:22:15', '2022-08-21 03:22:15'),
(652, 285, 251, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:22:34', '2022-08-21 03:22:34'),
(653, 285, 251, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:22:49', '2022-08-21 03:22:49'),
(654, 285, 251, 250, 3, 3, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:22:55', '2022-08-21 03:22:55'),
(655, 285, 251, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:22:59', '2022-08-21 03:22:59'),
(656, 285, 250, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-21 03:23:08', '2022-08-21 03:23:08'),
(657, 285, 250, NULL, 3, 3, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:23:12', '2022-08-21 03:23:12'),
(658, 285, 250, 253, 3, 4, 248, 2, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:23:22', '2022-08-21 03:23:22'),
(659, 285, 253, NULL, 4, 4, 248, 2, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-21 03:23:41', '2022-08-21 03:23:41'),
(660, 285, 253, 255, 4, 4, 248, 2, 'forward', 'RECIEVED', 1, NULL, '2022-08-21 18:00:00', NULL, '2022-08-21 03:24:14', '2022-08-21 03:24:14'),
(661, 285, 255, NULL, 4, 4, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:25:25', '2022-08-21 03:25:25'),
(662, 285, 255, NULL, 4, 4, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:25:43', '2022-08-21 03:25:43'),
(663, 285, 255, 253, 4, 4, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:25:48', '2022-08-21 03:25:48'),
(664, 285, 253, NULL, 4, 4, 248, 2, 'back', 'RECIEVED', 1, NULL, NULL, NULL, '2022-08-21 03:25:54', '2022-08-21 03:25:54'),
(665, 285, 253, NULL, 4, 4, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-21 03:25:58', '2022-08-21 03:25:58'),
(666, 285, 248, 254, 2, 5, 248, 2, 'individual', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 03:53:16', '2022-08-24 03:53:16'),
(668, 286, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 0, NULL, NULL, NULL, '2022-08-24 03:57:48', '2022-08-24 03:57:48'),
(669, 287, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-24 03:58:36', '2022-08-24 03:58:36'),
(670, 287, 248, 250, 2, 3, 248, 2, 'individual', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 03:59:32', '2022-08-24 03:59:32'),
(671, 285, 248, 254, 2, 5, 248, 2, 'individual', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 04:00:26', '2022-08-24 04:00:26'),
(672, 287, 248, 254, 2, 5, 248, 2, 'individual', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 04:00:56', '2022-08-24 04:00:56'),
(673, 287, 248, 255, 2, 4, 248, 2, 'individual', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 05:44:02', '2022-08-24 05:44:02'),
(674, 287, 255, NULL, 4, 4, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 05:45:05', '2022-08-24 05:45:05'),
(684, 287, 248, 254, 2, 5, 248, 2, 'individual', 'RECIEVED', 0, NULL, '2022-08-24 18:00:00', NULL, '2022-08-24 06:31:44', '2022-08-24 06:31:44'),
(685, 287, 254, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 06:32:04', '2022-08-24 06:32:04'),
(686, 287, 254, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 06:33:31', '2022-08-24 06:33:31'),
(687, 287, 254, 256, 5, 5, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-25 18:00:00', NULL, '2022-08-24 06:36:48', '2022-08-24 06:36:48'),
(688, 287, 256, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 06:36:57', '2022-08-24 06:36:57'),
(689, 287, 256, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 06:37:24', '2022-08-24 06:37:24'),
(690, 287, 256, 254, 5, 5, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 06:37:36', '2022-08-24 06:37:36'),
(691, 287, 254, NULL, 5, 5, 248, 2, 'back', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 06:37:43', '2022-08-24 06:37:43'),
(709, 288, 248, 254, 2, 5, 248, 2, 'individual', 'RECIEVED', 0, NULL, '2022-08-25 18:00:00', NULL, '2022-08-24 09:12:40', '2022-08-24 09:12:40'),
(734, 288, 254, 256, 5, 5, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-09-02 18:00:00', NULL, '2022-08-24 10:28:40', '2022-08-24 10:28:40'),
(737, 288, 256, 254, 5, 5, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 10:29:07', '2022-08-24 10:29:07'),
(739, 288, 254, 253, 5, 4, 248, 2, 'up', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-24 10:29:30', '2022-08-24 10:29:30'),
(747, 289, NULL, NULL, NULL, NULL, 126, 1, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-25 02:43:15', '2022-08-25 02:43:15'),
(748, 289, 126, 253, 1, 4, 126, 1, 'individual', 'RECIEVED', 0, NULL, '2022-08-25 18:00:00', NULL, '2022-08-25 02:43:44', '2022-08-25 02:43:44'),
(749, 290, NULL, NULL, NULL, NULL, 126, 1, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-25 02:49:27', '2022-08-25 02:49:27'),
(750, 290, 126, 248, 1, 2, 126, 1, 'down', 'RECIEVED', 0, NULL, '2022-08-25 18:00:00', NULL, '2022-08-25 02:50:08', '2022-08-25 02:50:08'),
(751, 291, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-25 03:03:52', '2022-08-25 03:03:52'),
(752, 292, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-25 05:19:48', '2022-08-25 05:19:48'),
(753, 293, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-25 05:30:48', '2022-08-25 05:30:48'),
(754, 293, 250, 254, 3, 5, 250, 3, 'individual', 'RECIEVED', 0, NULL, '2022-08-26 18:00:00', NULL, '2022-08-25 06:20:00', '2022-08-25 06:20:00'),
(755, 293, 254, 250, 5, 3, 250, 3, 'indiv_up', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 09:12:06', '2022-08-25 09:12:06'),
(756, 294, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-25 09:13:13', '2022-08-25 09:13:13'),
(757, 294, 250, 257, 3, 6, 250, 3, 'individual', 'RECIEVED', 0, NULL, '2022-09-16 18:00:00', NULL, '2022-08-25 09:16:39', '2022-08-25 09:16:39'),
(758, 294, 257, 258, 6, 6, 250, 3, 'forward', 'RECIEVED', 0, NULL, '2022-08-25 18:00:00', NULL, '2022-08-25 09:20:19', '2022-08-25 09:20:19'),
(759, 294, 258, 257, 6, 6, 250, 3, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 09:20:52', '2022-08-25 09:20:52'),
(760, 295, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-25 09:28:39', '2022-08-25 09:28:39'),
(761, 295, 257, 250, 6, 3, 250, 3, 'indiv_up', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 09:33:24', '2022-08-25 09:33:24'),
(762, 295, 257, 258, 6, 6, 250, 3, 'forward', 'RECIEVED', 1, NULL, '2022-08-31 18:00:00', NULL, '2022-08-25 09:33:39', '2022-08-25 09:33:39'),
(763, 295, 258, 257, 6, 6, 250, 3, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 09:34:02', '2022-08-25 09:34:02'),
(764, 296, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-25 10:39:28', '2022-08-25 10:39:28'),
(765, 296, 257, 258, 6, 6, 250, 3, 'forward', 'RECIEVED', 1, NULL, '2022-08-26 18:00:00', NULL, '2022-08-25 10:41:44', '2022-08-25 10:41:44'),
(766, 296, 258, 257, 6, 6, 250, 3, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 10:42:13', '2022-08-25 10:42:13'),
(767, 296, 257, 250, 6, 3, 250, 3, 'indiv_up', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 10:43:04', '2022-08-25 10:43:04'),
(768, 297, NULL, NULL, NULL, NULL, 250, 3, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-25 10:44:33', '2022-08-25 10:44:33'),
(769, 297, 250, 253, 3, 4, 250, 3, 'down', 'RECIEVED', 0, NULL, '2022-08-25 18:00:00', NULL, '2022-08-25 10:45:11', '2022-08-25 10:45:11'),
(770, 297, 253, 255, 4, 4, 250, 3, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 10:46:06', '2022-08-25 10:46:06'),
(771, 297, 255, 253, 4, 4, 250, 3, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 10:46:35', '2022-08-25 10:46:35'),
(772, 297, 253, 250, 4, 3, 250, 3, 'up', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 10:46:51', '2022-08-25 10:46:51'),
(773, 297, 253, 250, 4, 3, 250, 3, NULL, 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 10:50:47', '2022-08-25 10:50:47'),
(774, 297, 253, 254, 4, 5, 250, 3, 'down', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-25 10:50:52', '2022-08-25 10:50:52'),
(775, 298, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-28 03:43:07', '2022-08-28 03:43:07'),
(776, 298, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 1, NULL, '2022-08-30 18:00:00', NULL, '2022-08-28 03:43:42', '2022-08-28 03:43:42'),
(777, 298, 249, 248, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-28 03:44:26', '2022-08-28 03:44:26'),
(778, 298, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, '2022-08-29 18:00:00', NULL, '2022-08-28 04:28:28', '2022-08-28 04:28:28'),
(779, 298, 250, 251, 3, 3, 248, 2, 'forward', 'RECIEVED', 1, NULL, '2022-08-28 18:00:00', NULL, '2022-08-28 04:30:00', '2022-08-28 04:30:00'),
(780, 298, 251, 250, 3, 3, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-28 04:30:33', '2022-08-28 04:30:33'),
(781, 298, 250, 253, 3, 4, 248, 2, 'down', 'RECIEVED', 0, NULL, '2022-08-28 18:00:00', NULL, '2022-08-28 05:12:09', '2022-08-28 05:12:09'),
(782, 298, 253, 255, 4, 4, 248, 2, 'forward', 'RECIEVED', 1, NULL, '2022-08-29 18:00:00', NULL, '2022-08-28 05:15:49', '2022-08-28 05:15:49'),
(783, 298, 253, 254, 4, 5, 248, 2, 'down', 'RECIEVED', 0, NULL, '2022-08-28 18:00:00', NULL, '2022-08-28 05:31:23', '2022-08-28 05:31:23'),
(784, 298, 254, 256, 5, 5, 248, 2, 'forward', 'RECIEVED', 1, NULL, '2022-08-28 18:00:00', NULL, '2022-08-28 05:32:04', '2022-08-28 05:32:04'),
(785, 298, 256, 254, 5, 5, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-28 05:32:56', '2022-08-28 05:32:56'),
(786, 298, 256, 254, 5, 5, 248, 2, NULL, 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-28 05:33:14', '2022-08-28 05:33:14'),
(787, 298, 254, 257, 5, 6, 248, 2, 'down', 'RECIEVED', 0, NULL, '2022-08-28 18:00:00', NULL, '2022-08-28 05:33:40', '2022-08-28 05:33:40'),
(788, 298, 257, 258, 6, 6, 248, 2, 'forward', 'RECIEVED', 1, NULL, '2022-08-28 18:00:00', NULL, '2022-08-28 05:34:20', '2022-08-28 05:34:20'),
(789, 298, 258, 257, 6, 6, 248, 2, 'forward', 'RECIEVED', 0, NULL, NULL, NULL, '2022-08-28 05:34:59', '2022-08-28 05:34:59'),
(790, 299, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 0, NULL, NULL, NULL, '2022-08-28 06:38:26', '2022-08-28 06:38:26'),
(791, 300, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-29 02:58:30', '2022-08-29 02:58:30'),
(792, 300, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-29 18:00:00', NULL, '2022-08-29 02:59:44', '2022-08-29 02:59:44'),
(793, 301, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 0, NULL, NULL, NULL, '2022-08-29 03:01:23', '2022-08-29 03:01:23'),
(794, 300, 248, 253, 2, 4, 248, 2, 'individual', 'RECIEVED', 0, NULL, '2022-08-29 18:00:00', NULL, '2022-08-29 03:25:53', '2022-08-29 03:25:53'),
(795, 302, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-29 03:26:50', '2022-08-29 03:26:50'),
(796, 303, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-29 03:28:17', '2022-08-29 03:28:17'),
(797, 304, NULL, NULL, NULL, NULL, 248, 2, NULL, 'CREATED', 1, NULL, NULL, NULL, '2022-08-29 04:54:08', '2022-08-29 04:54:08'),
(798, 304, 248, 250, 2, 3, 248, 2, 'down', 'RECIEVED', 0, NULL, '2022-08-29 18:00:00', NULL, '2022-08-29 04:56:11', '2022-08-29 04:56:11'),
(799, 304, 248, 249, 2, 2, 248, 2, 'forward', 'RECIEVED', 0, NULL, '2022-08-29 18:00:00', NULL, '2022-08-29 04:56:39', '2022-08-29 04:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `form_table`
--

CREATE TABLE `form_table` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `Col_1` varchar(250) NOT NULL,
  `Col_2` varchar(250) NOT NULL,
  `Col_3` varchar(250) NOT NULL,
  `Col_4` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_table`
--

INSERT INTO `form_table` (`id`, `table_name`, `Col_1`, `Col_2`, `Col_3`, `Col_4`, `created_at`) VALUES
(1, 'Form_Table', 'Item-1', 'Item-2', 'Item-3', 'Item-4', '2022-05-19 08:51:57'),
(2, 'Form_Table', 'Item-1', 'Item-2', 'Item-3', 'Item-4', '2022-05-19 08:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `form_tables`
--

CREATE TABLE `form_tables` (
  `form_id` int(11) NOT NULL,
  `table_name` varchar(250) NOT NULL,
  `table_headline` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_tables`
--

INSERT INTO `form_tables` (`form_id`, `table_name`, `table_headline`, `created_by`) VALUES
(1, 'form_1_table', NULL, NULL),
(2, 'form_2_tbl', NULL, NULL),
(3, 'annual_performance_agreement', NULL, NULL),
(4, 'tablefdsgg', NULL, NULL),
(5, 'dufuidfidfi', NULL, NULL),
(6, 'ewyweyewqy', NULL, NULL),
(7, 'yweywey', NULL, NULL),
(8, 'sgasegtas', NULL, NULL),
(9, 'yu7weuyhsaeyte', NULL, NULL),
(10, 'tewyweywey', NULL, NULL),
(11, 'etweywey', NULL, NULL),
(20, 'Demo Table', NULL, NULL),
(22, 'table_one', NULL, NULL),
(23, 'form_form', NULL, NULL),
(24, 'gdgfdf', NULL, NULL),
(25, 'sample_form', NULL, NULL),
(26, 'shadman', NULL, NULL),
(27, 'new_table', NULL, NULL),
(28, 'newtable250', NULL, NULL),
(29, 'new_table_fid_1233243', NULL, NULL),
(30, 'ত্রৈমাসিকনাম', NULL, NULL),
(31, 'কফেরগভফজ', NULL, NULL),
(32, 'ফগ্নব্যত্ন্য', NULL, NULL),
(33, 'নিষ্পত্তিকৃত_নথিতে', NULL, NULL),
(52, 'fid-test-form', NULL, NULL),
(53, 'fid_form', NULL, NULL),
(54, 'এইরগজিওএঝ', NULL, NULL),
(55, 'new_table_fid_25_april', NULL, NULL),
(56, 'শাদমান_আরনাব', NULL, NULL),
(57, '', NULL, NULL),
(58, '', NULL, NULL),
(59, 'pi9ouu98y6', NULL, NULL),
(60, 'pi9ouu98y6', NULL, NULL),
(61, 'pi9ouu98y6', NULL, NULL),
(62, 'mkckd', NULL, NULL),
(63, 'njcdjdcn', NULL, NULL),
(64, 'shadmaan', NULL, NULL),
(65, '২৩২৪এফ', NULL, NULL),
(66, '্বরথব্বত্র', NULL, NULL),
(67, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন_২০২২)_অগ্রগতি_প্রতিবেদন:', NULL, NULL),
(68, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক', NULL, NULL),
(69, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন_২০২২)_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(70, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন_২০২২)_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(71, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_এপ্রিল_জুন_২০২২_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(72, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_এপ্রিল_জুন_২০২২_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(73, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_এপ্রিল_জুন_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(74, 'নথি_বাস্তবায়ন_বিষয়ক', NULL, NULL),
(75, '', NULL, NULL),
(76, 'নথি_বাস্তবায়ন', NULL, NULL),
(77, 'Form_Table', NULL, NULL),
(78, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(79, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(80, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(81, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(82, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(83, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(84, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(85, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(86, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(87, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(88, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(89, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(90, 'টেবিল_১', NULL, NULL),
(91, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্মপরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(92, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্মপরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(93, 'জাতীয়_তথ্য', NULL, NULL),
(94, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্মপরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(95, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(96, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(97, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(98, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(99, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(100, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(101, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক', NULL, NULL),
(102, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক', NULL, NULL),
(103, 'টেবিল_১২', NULL, NULL),
(104, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্মপরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদন_২২২২২', NULL, NULL),
(105, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা', NULL, NULL),
(106, 'হিসাবায়ন', NULL, NULL),
(107, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন,_২০২২)_অগ্রগতি_প্রতিবেদন_by_ICT_Cell', NULL, NULL),
(108, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন,_২০২২)_অগ্রগতি_প্রতিবেদন_by_ICT_Cell', NULL, NULL),
(109, 'Test_2', NULL, NULL),
(110, 'xxffgbf', NULL, NULL),
(111, 'হার্ড_নথির_প্রতিবেদন_(জানুয়ারি_মার্চ_২০২২)', NULL, NULL),
(112, 'হার্ড_নথির_প্রতিবেদন_(জানুয়ারি_মার্চ_২০২২)', NULL, NULL),
(116, 'table_4082188', 'hbncdjhdcnbjdcjnc', NULL),
(117, 'table_1083210', 'dhbfhfbhfahbh', NULL),
(118, 'table_7115464', 'b', NULL),
(119, 'table_5982022', 'jncsjcndjc', NULL),
(120, 'table_7534784', 'kmcdkmdcmc', NULL),
(121, 'table_1324392', 'বাংলা ফর্ম', NULL),
(122, 'table_4302662', 'jadfjdfh', NULL),
(123, 'table_9024346', 'nanfna', NULL),
(124, 'table_6870805', 'uuhhu', NULL),
(125, 'table_6870805', 'uuhhu', NULL),
(126, 'table_7967981', 'fafafafa', NULL),
(127, 'table_2806902', 'afafafaf', NULL),
(128, 'table_2799467', 'হার্ডনথি  ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন, ২০২২) অগ্রগতি প্রতিবেদন ২০-০৬-২০২২', NULL),
(129, 'table_8162286', 'test table 69', 111),
(130, 'table_7504978', 'helloform', 111),
(131, 'table_1805111', 'বিষয়ঃ জেট শাখা সংশ্লিষ্ট বাজেট ও এপিএ প্রতিবেদনের ফরমেট 23', 111),
(132, 'table_2822830', 'drfgveaerg', 111),
(133, 'table_7752558', 'this is form61222', 111),
(134, 'table_2300063', 'রথ্বহ্রথসদফত্রগফদ', 111),
(135, 'table_9452695', 'adfvrf', 111),
(136, 'table_7506460', 'hbffahbbhfabhfa', 111),
(137, 'table_8245', 'দেশের য় খ্যান সংস্থা হিসাবে কাজ', 111),
(138, 'table_281640', 'bghjvbc ghg', 111),
(139, 'table_2279013', 'l,alf', 111),
(140, 'table_3794480', 'জাতীয় আইসিটি নীতিমালা ২০১৮ এর কর্ম-পরিকল্পনার করণীয় বিষয়সমূহের বাস্তবায়ন কার্যক্রমের ত্রৈমাসিক (এপ্রিল-জুন, ২০২২) অগ্রগতি প্রতিবেদন', 102),
(141, 'table_2884511', 'ইয়থজেত্যজদত্যজন্যতজন্যতজেয়তজ্য ইয়হেয়থেয়', 114),
(142, 'table_4004346', 'test form 613', 115),
(143, 'table_2652689', 'xcvb,', 115),
(144, 'table_3913302', 'ergeger', 111),
(145, 'table_1673371', '‘জাতীয়তথ্যওযোগাযোগপ্রযুক্তিনীতিমালা২০১৮’ এর কর্ম-পরিকল্পনার করণীয় বিষয় ভিত্তিক বাস্তবায়ন কার্যক্রমের ত্রৈমাসিক (জানুয়ারি-মার্চ, ২০২২) অগ্রগতির প্রতিবেদনছক:', 102),
(146, 'table_9896359', 'taryuiorpr', 130),
(147, 'table_6635675', 'নিষ্পত্তিকৃত_নথিতেনি নথিতেনিষ্পত্তিকৃত_নথিতেনিষ্পত্তিকৃত_নথিতে', 130),
(148, 'table_6954026', 'new form headline', 129),
(149, 'table_4989862', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 130),
(150, 'table_3716619', 'this is a organization user form', 130),
(151, 'table_3244373', 'this is a regulatory form', 128),
(165, 'table_7216900', '54fa5fa54f45fa45', 130),
(170, 'table_5511014', 'newform448(org-user)', 130),
(171, 'table_816106', 'this is a ministry form', 126),
(172, 'table_9488859', '4f45fa45', 128),
(173, 'table_8247267', 'fanfajaf', 126),
(174, 'table_3926996', 'ministry form 7', 126),
(175, 'table_3677541', 'Oragnization Form', 130),
(176, 'table_6185442', 'বিষয়ঃ জেট শাখা সংশ্লিষ্ট বাজেট ও এপিএ প্রতিবেদনের ফরমেটsdasdasf', 172),
(177, 'table_4781902', 'afkmfakmfa', 128),
(178, 'table_4781902', 'afkmfakmfa', 128),
(179, 'table_8164227', 'form717', 128),
(180, 'table_3368740', 'দেশের জাতীয় পরিসং', 128),
(181, 'table_4908983', 'fa4f5a4a54', 128),
(182, 'table_8044872', 'new test form', 181),
(183, 'table_6453252', 'armaan table', 181),
(184, 'table_6525817', 'newform 724', 223),
(185, 'table_7861982', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 126),
(186, 'table_4837263', 'hvbvdhbdvh', 207),
(187, 'table_6901854', 'Admin Form', 207),
(188, 'table_8011941', 'fafafafafa', 207),
(189, 'table_2572295', 'form725', 126),
(190, 'table_1652396', 'feeffefe', 126),
(191, 'table_5282148', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 233),
(192, 'table_1216210', 'বিষয়ঃ জেট শাখা সংশ্লিষ্ট বাজেট ও এপিএ প্রতিবেদনের ফরমেট', 235),
(193, 'table_266730', 'ICT Form', 126),
(194, 'table_1140467', 'Neew Form By Sub Admin Regulatory', 237),
(195, 'table_596282', 'নথি বাস্তবায়ন বিষয়ক ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন ২০২২) sdfঅগ্রগতি প্রতিবেদনaswa', 126),
(196, 'table_4310303', '54fa455f4a', 237),
(197, 'table_3815937', 'new form headline', 237),
(198, 'table_9281856', 'New Form Creation 726', 126),
(199, 'table_5393616', 'asdfghjkl;\'', 235),
(200, 'table_3740534', 'new form headline', 126),
(201, 'table_8797885', 'This is a new Form', 126),
(202, 'table_949693', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 241),
(203, 'table_9710688', 'This is a new form 727', 241),
(204, 'table_9876566', 'feaeffe', 241),
(205, 'table_3342566', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 126),
(206, 'table_401742', 'LAW FORM', 241),
(207, 'table_223805', 'nfajfanjfan', 241),
(208, 'table_9731973', 'f54a5f45', 241),
(209, 'table_9822288', 'bhfhfbbfh', 241),
(210, 'table_8728852', 'this is a new form', 241),
(211, 'table_6654268', NULL, 241),
(212, 'table_6654268', NULL, 241),
(213, 'table_6654268', NULL, 241),
(214, 'table_2903776', 'fhqf', 241),
(215, 'table_9288700', 'ব্যাংকের জন্য  ফর্ম', 126),
(216, 'table_8413197', 'this is a new form', 241),
(217, 'table_2682632', 'bfnjejfe', 241),
(218, 'table_2682632', 'armaan', 241),
(219, 'table_5052888', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 241),
(220, 'table_8358253', 'this is a calculation form', 126),
(221, 'table_7140555', 'nfhfnfj', 126),
(222, 'table_2746207', 'ব্যাঙ্ক কর্তৃক পূরণকরন', 241),
(223, 'table_9434248', 'form headline', 241),
(224, 'table_9429637', 'hi this is a new blank form', 241),
(225, 'table_5927685', 'this is happerning', 241),
(226, 'table_5783020', 'this is a new happy form', 241),
(227, 'table_7886127', 'this is a  sad form', 241),
(228, 'table_882282', 'this is a new form hello world', 241),
(229, 'table_6145585', 'this is a whatheform', 241),
(230, 'table_6224702', 'fdsfdsfds', 126),
(231, 'table_9938139', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 241),
(232, 'table_4788847', 'Math Form', 241),
(233, 'table_9557671', 'New Headline', 126),
(234, 'table_8687312', 'headline সকল ব্যাঙ্ক এর জন্য', 126),
(235, 'table_4806587', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 126),
(236, 'table_9352285', 'this is the headline', 241),
(237, 'table_8962075', 'fa584faaf', 241),
(238, 'table_7382562', 'fajnjnfaj', 241),
(239, 'table_7382562', 'fajnjnfaj', 241),
(240, 'table_7382562', 'fajnjnfaj', 241),
(241, 'table_2232011', '4f5fa545a5', 241),
(242, 'table_2232011', '4f5fa545a5', 241),
(243, 'table_162599', 'faafaf', 241),
(244, 'table_2453461', '5fa4a5f454', 241),
(245, 'table_7163900', 'fmkmfkfa', 241),
(246, 'table_6212138', '5f4af45a45', 241),
(247, 'table_5003058', '54affa54fa45', 241),
(248, 'table_2027263', 'pippip', 241),
(249, 'table_7955437', 'hyyg', 241),
(250, 'table_3913350', 'fafahfjhaf', 241),
(251, 'table_7595271', 'f54af45fa4', 241),
(252, 'table_804528', 'this is a calculation form', 241),
(253, 'table_5063945', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 248),
(254, 'table_8861936', 'athbtahab', 248),
(255, 'table_3395314', '5fa4f54', 248),
(256, 'table_2309509', 'this is a heavy form', 248),
(257, 'table_39698', 'this is a plain form', 248),
(258, 'table_2737235', NULL, 248),
(259, 'table_609763', NULL, 248),
(260, 'table_5486442', NULL, 126),
(261, 'table_2723344', NULL, 248),
(262, 'table_2430057', NULL, 248),
(263, 'table_1944796', NULL, 248),
(264, 'table_3147639', NULL, 248),
(265, 'table_1800209', NULL, 248),
(266, 'table_8838559', NULL, 248),
(267, 'table_6230147', NULL, 248),
(268, 'table_9277306', NULL, 248),
(269, 'table_5549740', NULL, 250),
(270, 'table_7981003', NULL, 250),
(271, 'table_6380043', NULL, 250),
(272, 'table_6202256', NULL, 250),
(273, 'table_675032', NULL, 248),
(274, 'table_5474813', NULL, 126),
(275, 'table_6961751', NULL, 248),
(276, 'table_2859903', NULL, 248),
(277, 'table_6402644', NULL, 248),
(278, 'table_6622457', NULL, 250),
(279, 'table_4840576', NULL, 126),
(280, 'table_256097', NULL, 248),
(281, 'table_8284766', NULL, 248),
(282, 'table_1843842', NULL, 248),
(283, 'table_8163208', NULL, 248),
(284, 'table_9321783', NULL, 248),
(285, 'table_8142441', NULL, 248),
(286, 'table_7509727', NULL, 248),
(287, 'table_6432749', NULL, 248),
(288, 'table_8069085', NULL, 248),
(289, 'table_728329', NULL, 126),
(290, 'table_3599948', NULL, 126),
(291, 'table_7826036', NULL, 248),
(292, 'table_7461715', NULL, 250),
(293, 'table_8400121', NULL, 250),
(294, 'table_6836824', NULL, 250),
(295, 'table_8546976', NULL, 250),
(296, 'table_3071502', NULL, 250),
(297, 'table_9072943', NULL, 250),
(298, 'table_9057792', NULL, 248),
(299, 'table_3319707', NULL, 248),
(300, 'table_7548106', NULL, 248),
(301, 'table_6887811', NULL, 248),
(302, 'table_8209212', NULL, 248),
(303, 'table_3417610', NULL, 248),
(304, 'table_2149289', NULL, 248);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `institution_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_status` varchar(250) NOT NULL DEFAULT 'NO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `name`, `institution_id`, `status`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Group', 1, 1, 'YES', '2022-01-10 06:17:47', '2022-01-10 12:17:47'),
(2, 'Group', 1, 1, 'YES', '2022-01-10 06:18:31', '2022-01-10 12:18:31'),
(3, 'Group', 1, 1, 'YES', '2022-01-10 06:19:59', '2022-01-10 12:19:59'),
(4, 'Group', 1, 1, 'YES', '2022-01-10 06:21:09', '2022-01-10 12:21:09'),
(5, 'Group', 1, 1, 'YES', '2022-01-10 06:23:23', NULL),
(6, 'Group', 1, 1, 'YES', '2022-01-10 06:23:53', NULL),
(7, 'group 1', 1, 1, 'NO', '2022-01-10 07:01:32', NULL),
(8, 'group 2', 1, 1, 'NO', '2022-01-10 08:12:52', NULL),
(9, 'Ebl Group', 1, 1, 'NO', '2022-01-10 08:41:36', NULL),
(10, 'Institution Group', 1, 1, 'NO', '2022-01-11 07:09:02', NULL),
(11, 'User Group', 3, 1, 'NO', '2022-01-11 07:09:27', NULL),
(12, 'User Group', 3, 1, 'NO', '2022-01-11 07:09:47', NULL),
(13, 'Bangladesh Bank User Group', 1, 1, 'NO', '2022-01-16 04:53:38', NULL),
(14, 'hyuuihi', 1, 1, 'NO', '2022-01-24 12:06:51', NULL),
(15, 'My Demo Group 232022', 1, 1, 'NO', '2022-02-03 05:02:12', NULL),
(16, 'My Bank Demo', 1, 1, 'NO', '2022-02-03 05:03:55', NULL),
(17, 'Armaan Ministry', 3, 1, 'NO', '2022-02-03 05:13:25', NULL),
(18, 'My Demo Group 23202244', 4, 1, 'NO', '2022-02-03 05:46:22', NULL),
(19, 'urir report', 5, 1, 'NO', '2022-02-03 06:11:23', NULL),
(20, 'divisionwise', 5, 1, 'NO', '2022-02-15 04:34:54', NULL),
(21, 'abrar', 5, 1, 'NO', '2022-02-15 05:08:50', NULL),
(22, 'My Division Group', 5, 1, 'NO', '2022-02-15 05:24:44', NULL),
(23, 'GroupToday1306', 4, 1, 'NO', '2022-06-13 09:00:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE `group_user` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_user`
--

INSERT INTO `group_user` (`id`, `group_id`, `institution_id`, `user_id`) VALUES
(4, 7, 1, NULL),
(5, 7, 3, NULL),
(6, 7, 4, NULL),
(22, 8, 1, NULL),
(23, 8, 4, NULL),
(29, 6, 1, NULL),
(30, 6, 4, NULL),
(36, 10, 1, NULL),
(37, 10, 3, NULL),
(38, 10, 4, NULL),
(41, 9, 3, NULL),
(42, 13, NULL, 60),
(43, 13, NULL, 61),
(44, 13, NULL, 62),
(45, 13, NULL, 63),
(46, 13, NULL, 64),
(47, 14, 1, NULL),
(48, 14, 3, NULL),
(49, 14, 4, NULL),
(50, 15, 1, NULL),
(51, 15, 3, NULL),
(52, 15, 4, NULL),
(53, 16, 1, NULL),
(54, 16, 3, NULL),
(55, 16, 4, NULL),
(56, 17, NULL, 65),
(57, 17, NULL, 66),
(58, 17, NULL, 67),
(59, 18, NULL, 70),
(60, 19, NULL, 71),
(61, 19, NULL, 72),
(62, 19, NULL, 73),
(63, 20, NULL, 74),
(64, 20, NULL, 75),
(65, 21, NULL, 71),
(66, 21, NULL, 72),
(67, 21, NULL, 73),
(68, 21, NULL, 74),
(69, 21, NULL, 75),
(72, 21, NULL, 75),
(73, 22, NULL, 74),
(74, 22, NULL, 75);

-- --------------------------------------------------------

--
-- Table structure for table `individual_table`
--

CREATE TABLE `individual_table` (
  `indiv_id` int(11) NOT NULL,
  `indiv_form_id` int(11) DEFAULT NULL,
  `indiv_creator` int(11) DEFAULT NULL,
  `indiv_receiver` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `individual_table`
--

INSERT INTO `individual_table` (`indiv_id`, `indiv_form_id`, `indiv_creator`, `indiv_receiver`) VALUES
(3, 293, 250, 254),
(4, 294, 250, 257),
(5, 295, 250, 257),
(6, 296, 250, 257),
(7, 300, 248, 253),
(8, 300, 248, 253),
(9, 302, 248, 253),
(10, 303, 248, 253);

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(250) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2021_10_13_060710_create_permissions_table', 1),
(15, '2021_10_13_060829_create_roles_table', 1),
(16, '2021_10_13_060914_create_users_permissions_table', 1),
(17, '2021_10_13_060958_create_users_roles_table', 1),
(18, '2021_10_13_061040_create_roles_permissions_table', 1),
(19, '2021_10_17_083937_create_departments_table', 1),
(20, '2021_10_17_090426_add_additional_columns_to_permissions_table', 1),
(21, '2021_10_17_083937_create_designations_table', 2),
(22, '2021_10_18_061232_create_user_leave_permission', 3),
(23, '2021_10_18_101245_add_additional_columns_to_users_table', 4),
(24, '2021_10_21_042823_add_additional_some_columns_to_users_table', 5),
(25, '2021_10_21_063936_crate_leave_application_table', 6),
(26, '2021_10_21_065007_crate_leave_application_permissions_table', 7),
(27, '2021_10_25_055332_add_type_columns_to_leave_application_table', 8),
(28, '2021_10_26_081440_add_remark_column_to_leave_application_table', 9),
(29, '2016_06_01_000001_create_oauth_auth_codes_table', 10),
(30, '2016_06_01_000002_create_oauth_access_tokens_table', 10),
(31, '2016_06_01_000003_create_oauth_refresh_tokens_table', 10),
(32, '2016_06_01_000004_create_oauth_clients_table', 10),
(33, '2016_06_01_000005_create_oauth_personal_access_clients_table', 10),
(34, '2021_11_02_085309_add_more_colmns_to_users_table', 11),
(35, '2021_11_08_091349_create_notification_table', 12),
(36, '2021_11_08_091734_add_additional_column_to_notification_table', 13),
(37, '2021_11_08_102534_add_additional_show_date_column_to_notification_table', 14),
(38, '2021_11_09_160625_create_departments_table', 15),
(39, '2021_11_09_165727_create_user_departments_table', 16),
(40, '2021_11_09_170334_create_alternate_users_table', 16),
(41, '2021_11_14_142729_add_additional_columns_to_leave_application_table', 17),
(42, '2021_11_17_125027_create_messages_table', 18),
(43, '2021_11_17_145719_create_chats_table', 19),
(44, '2021_11_23_104914_create_leave_routines_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `ministries`
--

CREATE TABLE `ministries` (
  `id` int(11) NOT NULL,
  `parent_id` varchar(55) DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `code` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ministries`
--

INSERT INTO `ministries` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(14, NULL, 1, 'বাজেট শাখা', NULL, 1, NULL, '2022-07-18 09:12:42', '2022-07-18 09:12:42'),
(15, NULL, NULL, 'test dept', NULL, 1, NULL, '2022-07-19 10:06:21', '2022-07-19 10:06:21'),
(16, NULL, NULL, 'আইন শাখা', NULL, 1, NULL, '2022-07-19 10:06:36', '2022-07-19 10:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `new_default_form`
--

CREATE TABLE `new_default_form` (
  `default_id` int(11) NOT NULL,
  `default_form_id` int(11) DEFAULT NULL,
  `default_table_name` varchar(50) DEFAULT NULL,
  `default_created_by` int(11) DEFAULT NULL,
  `default_form_status` float NOT NULL DEFAULT 0,
  `default_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_default_form`
--

INSERT INTO `new_default_form` (`default_id`, `default_form_id`, `default_table_name`, `default_created_by`, `default_form_status`, `default_created_at`) VALUES
(7, 277, 'table_6402644', 248, 1, '2022-08-17 09:43:29'),
(8, 278, 'table_6622457', 250, 1, '2022-08-17 09:59:35'),
(9, 279, 'table_4840576', 126, 1, '2022-08-17 15:04:52'),
(10, 280, 'table_256097', 248, 1, '2022-08-18 06:27:37'),
(11, 284, 'table_9321783', 248, 1, '2022-08-21 02:56:39'),
(12, 285, 'table_8142441', 248, 1, '2022-08-21 03:19:10'),
(13, 287, 'table_6432749', 248, 1, '2022-08-24 03:59:13'),
(14, 288, 'table_8069085', 248, 1, '2022-08-24 08:13:50'),
(15, 289, 'table_728329', 126, 1, '2022-08-25 02:43:26'),
(16, 290, 'table_3599948', 126, 1, '2022-08-25 02:49:54'),
(17, 291, 'table_7826036', 248, 1, '2022-08-25 03:05:14'),
(18, 292, 'table_7461715', 250, 1, '2022-08-25 05:28:27'),
(19, 294, 'table_6836824', 250, 1, '2022-08-25 09:13:53'),
(20, 295, 'table_8546976', 250, 1, '2022-08-25 09:28:47'),
(21, 296, 'table_3071502', 250, 1, '2022-08-25 10:39:52'),
(22, 298, 'table_9057792', 248, 1, '2022-08-28 03:43:31'),
(23, 300, 'table_7548106', 248, 1, '2022-08-29 02:58:48'),
(24, 302, 'table_8209212', 248, 1, '2022-08-29 03:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=seen, 0=unseen',
  `show_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `for_user_id`, `message`, `link`, `status`, `show_date`, `created_at`, `updated_at`) VALUES
(686, 126, 241, 'FID send you a report request', 'http://localhost/report_management/created-submit-form/235', 0, 'Thu, Aug 2022 05:58:37am', NULL, NULL),
(687, 241, 241, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/235', 0, 'Thu, Aug 2022 07:11:00am', NULL, NULL),
(688, 241, 241, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/235', 0, 'Thu, Aug 2022 07:11:07am', NULL, NULL),
(689, 241, 242, 'armaan send you a report request', 'http://localhost/report_management/created-submit-form/235', 0, 'Thu, Aug 2022 07:14:10am', NULL, NULL),
(690, 242, 241, 'shahed send you a report request', 'http://localhost/report_management/created-submit-form/235', 0, 'Thu, Aug 2022 07:15:16am', NULL, NULL),
(691, 241, 241, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/235', 0, 'Thu, Aug 2022 07:15:28am', NULL, NULL),
(692, 241, 243, 'armaan send you a report request', 'http://localhost/report_management/created-submit-form/235', 0, 'Thu, Aug 2022 07:16:08am', NULL, NULL),
(693, 241, 243, 'armaan send you a report request', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 09:43:09am', NULL, NULL),
(694, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 10:50:37am', NULL, NULL),
(695, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 10:53:21am', NULL, NULL),
(696, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 10:57:27am', NULL, NULL),
(697, 243, 241, 'shadman send you a report request', 'http://localhost/report_management/form/236', 0, 'Sun, Aug 2022 10:57:55am', NULL, NULL),
(698, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 10:57:56am', NULL, NULL),
(699, 241, 242, 'armaan send you a report request', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 10:59:15am', NULL, NULL),
(700, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 10:59:49am', NULL, NULL),
(701, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:00:09am', NULL, NULL),
(702, 242, 241, 'shahed send you a report request', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:00:20am', NULL, NULL),
(703, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:00:31am', NULL, NULL),
(704, 241, 243, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:01:07am', NULL, NULL),
(705, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:01:07am', NULL, NULL),
(706, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:01:22am', NULL, NULL),
(707, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:05:08am', NULL, NULL),
(708, 243, 241, 'shadman send you a report request', 'http://localhost/report_management/form/236', 0, 'Sun, Aug 2022 11:05:22am', NULL, NULL),
(709, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:05:23am', NULL, NULL),
(710, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:06:17am', NULL, NULL),
(711, 241, 242, 'armaan send you a report request', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:06:35am', NULL, NULL),
(712, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:07:02am', NULL, NULL),
(713, 243, 244, 'shadman send you a report request', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:07:23am', NULL, NULL),
(714, 244, 241, 'bidyut has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:07:28am', NULL, NULL),
(715, 244, 241, 'bidyut has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:07:49am', NULL, NULL),
(716, 244, 243, 'bidyut send you a report request', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:07:59am', NULL, NULL),
(717, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:08:01am', NULL, NULL),
(718, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:08:15am', NULL, NULL),
(719, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:16:09am', NULL, NULL),
(720, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:16:49am', NULL, NULL),
(721, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:17:45am', NULL, NULL),
(722, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:18:12am', NULL, NULL),
(723, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:18:18am', NULL, NULL),
(724, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:23:44am', NULL, NULL),
(725, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:26:53am', NULL, NULL),
(726, 243, 243, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:27:01am', NULL, NULL),
(727, 243, 241, 'shadman has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:27:02am', NULL, NULL),
(728, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:27:51am', NULL, NULL),
(729, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:40:06am', NULL, NULL),
(730, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:43:45am', NULL, NULL),
(731, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:45:52am', NULL, NULL),
(732, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 11:47:43am', NULL, NULL),
(733, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 12:56:01pm', NULL, NULL),
(734, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 12:57:59pm', NULL, NULL),
(735, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 01:42:13am', NULL, NULL),
(736, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 01:43:04am', NULL, NULL),
(737, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 01:43:20am', NULL, NULL),
(738, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 01:44:33am', NULL, NULL),
(739, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 01:48:11am', NULL, NULL),
(740, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 01:51:39am', NULL, NULL),
(741, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 01:52:27am', NULL, NULL),
(742, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 01:54:18am', NULL, NULL),
(743, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 01:54:24am', NULL, NULL),
(744, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 01:56:13am', NULL, NULL),
(745, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 02:03:23am', NULL, NULL),
(746, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 02:03:57am', NULL, NULL),
(747, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 02:20:00am', NULL, NULL),
(748, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 02:22:20am', NULL, NULL),
(749, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 02:39:36am', NULL, NULL),
(750, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 03:57:30am', NULL, NULL),
(751, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 03:57:40am', NULL, NULL),
(752, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Sun, Aug 2022 05:53:54am', NULL, NULL),
(753, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Mon, Aug 2022 02:06:47am', NULL, NULL),
(754, 241, 242, 'armaan send you a report request', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:07:44am', NULL, NULL),
(755, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:07:45am', NULL, NULL),
(756, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:14:30am', NULL, NULL),
(757, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:14:37am', NULL, NULL),
(758, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:17:14am', NULL, NULL),
(759, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:20:27am', NULL, NULL),
(760, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:20:51am', NULL, NULL),
(761, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:21:01am', NULL, NULL),
(762, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:21:40am', NULL, NULL),
(763, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:22:17am', NULL, NULL),
(764, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:22:26am', NULL, NULL),
(765, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:23:46am', NULL, NULL),
(766, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Mon, Aug 2022 02:23:51am', NULL, NULL),
(767, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Mon, Aug 2022 02:24:18am', NULL, NULL),
(768, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Mon, Aug 2022 02:24:27am', NULL, NULL),
(769, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Mon, Aug 2022 02:25:02am', NULL, NULL),
(770, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Mon, Aug 2022 02:25:48am', NULL, NULL),
(771, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/236', 0, 'Mon, Aug 2022 02:26:06am', NULL, NULL),
(772, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:31:10am', NULL, NULL),
(773, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:31:50am', NULL, NULL),
(774, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:34:12am', NULL, NULL),
(775, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:34:48am', NULL, NULL),
(776, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:35:13am', NULL, NULL),
(777, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:35:28am', NULL, NULL),
(778, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:35:33am', NULL, NULL),
(779, 241, 242, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:38:49am', NULL, NULL),
(780, 241, 126, 'armaan has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:38:50am', NULL, NULL),
(781, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:38:54am', NULL, NULL),
(782, 242, 126, 'shahed has backed the form', 'http://localhost/report_management/created-submit-form/252', 0, 'Mon, Aug 2022 02:49:15am', NULL, NULL),
(783, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/253', 0, 'Mon, Aug 2022 05:51:33am', NULL, NULL),
(784, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/256', 0, 'Mon, Aug 2022 07:33:39am', NULL, NULL),
(785, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/256', 0, 'Mon, Aug 2022 07:35:29am', NULL, NULL),
(786, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/256', 0, 'Mon, Aug 2022 07:35:47am', NULL, NULL),
(787, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/256', 0, 'Mon, Aug 2022 07:35:53am', NULL, NULL),
(788, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/256', 0, 'Mon, Aug 2022 07:35:57am', NULL, NULL),
(789, 248, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/256', 0, 'Mon, Aug 2022 07:36:05am', NULL, NULL),
(790, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/256', 0, 'Mon, Aug 2022 07:36:06am', NULL, NULL),
(791, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/256', 0, 'Mon, Aug 2022 07:36:12am', NULL, NULL),
(792, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/257', 0, 'Mon, Aug 2022 07:38:07am', NULL, NULL),
(793, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/257', 0, 'Mon, Aug 2022 07:38:11am', NULL, NULL),
(794, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/257', 0, 'Mon, Aug 2022 07:38:20am', NULL, NULL),
(795, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/257', 0, 'Mon, Aug 2022 07:38:25am', NULL, NULL),
(796, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/257', 0, 'Mon, Aug 2022 07:38:29am', NULL, NULL),
(797, 248, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/257', 0, 'Mon, Aug 2022 07:38:32am', NULL, NULL),
(798, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/257', 0, 'Mon, Aug 2022 07:38:33am', NULL, NULL),
(799, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 05:48:25am', NULL, NULL),
(800, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 05:48:30am', NULL, NULL),
(801, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 05:50:25am', NULL, NULL),
(802, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 05:51:51am', NULL, NULL),
(803, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 05:53:23am', NULL, NULL),
(804, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 05:53:46am', NULL, NULL),
(805, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 05:54:24am', NULL, NULL),
(806, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 05:54:34am', NULL, NULL),
(807, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 05:55:50am', NULL, NULL),
(808, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 05:56:06am', NULL, NULL),
(809, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 05:56:13am', NULL, NULL),
(810, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 05:56:19am', NULL, NULL),
(811, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 05:56:25am', NULL, NULL),
(812, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 05:58:35am', NULL, NULL),
(813, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 05:58:38am', NULL, NULL),
(814, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 05:59:16am', NULL, NULL),
(815, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:00:13am', NULL, NULL),
(816, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:00:47am', NULL, NULL),
(817, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:01:06am', NULL, NULL),
(818, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:01:22am', NULL, NULL),
(819, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:01:25am', NULL, NULL),
(820, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:01:37am', NULL, NULL),
(821, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:02:19am', NULL, NULL),
(822, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:03:32am', NULL, NULL),
(823, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:03:37am', NULL, NULL),
(824, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:03:41am', NULL, NULL),
(825, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:03:44am', NULL, NULL),
(826, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:03:48am', NULL, NULL),
(827, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:04:20am', NULL, NULL),
(828, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:04:41am', NULL, NULL),
(829, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:05:21am', NULL, NULL),
(830, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:07:06am', NULL, NULL),
(831, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:07:18am', NULL, NULL),
(832, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:10:25am', NULL, NULL),
(833, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:15:51am', NULL, NULL),
(834, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:17:45am', NULL, NULL),
(835, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:17:57am', NULL, NULL),
(836, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:23:59am', NULL, NULL),
(837, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Thu, Aug 2022 06:24:11am', NULL, NULL),
(838, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:24:18am', NULL, NULL),
(839, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:26:08am', NULL, NULL),
(840, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:28:23am', NULL, NULL),
(841, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:31:39am', NULL, NULL),
(842, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:32:21am', NULL, NULL),
(843, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:34:35am', NULL, NULL),
(844, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:39:21am', NULL, NULL),
(845, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/258', 0, 'Thu, Aug 2022 06:40:16am', NULL, NULL),
(846, 126, 248, 'FID send you a report request', 'http://localhost/report_management/created-submit-form/260', 0, 'Sun, Aug 2022 09:38:09am', NULL, NULL),
(847, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/260', 0, 'Sun, Aug 2022 10:29:26am', NULL, NULL),
(848, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/260', 0, 'Sun, Aug 2022 10:30:22am', NULL, NULL),
(849, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/260', 0, 'Sun, Aug 2022 10:30:35am', NULL, NULL),
(850, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/260', 0, 'Sun, Aug 2022 10:33:26am', NULL, NULL),
(851, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:09:16am', NULL, NULL),
(852, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:11:09am', NULL, NULL),
(853, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:11:57am', NULL, NULL),
(854, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:13:05am', NULL, NULL),
(855, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:15:58am', NULL, NULL),
(856, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:16:11am', NULL, NULL),
(857, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:26:29am', NULL, NULL),
(858, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:26:48am', NULL, NULL),
(859, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:27:42am', NULL, NULL),
(860, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:27:56am', NULL, NULL),
(861, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:30:46am', NULL, NULL),
(862, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:31:04am', NULL, NULL),
(863, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:31:43am', NULL, NULL),
(864, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:32:15am', NULL, NULL),
(865, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:32:38am', NULL, NULL),
(866, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:34:36am', NULL, NULL),
(867, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:38:00am', NULL, NULL),
(868, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:38:39am', NULL, NULL),
(869, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:40:59am', NULL, NULL),
(870, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:42:29am', NULL, NULL),
(871, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:42:45am', NULL, NULL),
(872, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:43:02am', NULL, NULL),
(873, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:43:19am', NULL, NULL),
(874, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:43:23am', NULL, NULL),
(875, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:47:08am', NULL, NULL),
(876, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/264', 0, 'Sun, Aug 2022 11:47:18am', NULL, NULL),
(877, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 11:53:38am', NULL, NULL),
(878, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 11:53:48am', NULL, NULL),
(879, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 11:54:06am', NULL, NULL),
(880, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 11:54:15am', NULL, NULL),
(881, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 11:54:18am', NULL, NULL),
(882, 248, 249, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 11:54:30am', NULL, NULL),
(883, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 11:54:30am', NULL, NULL),
(884, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 11:54:35am', NULL, NULL),
(885, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 12:11:41pm', NULL, NULL),
(886, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 12:11:47pm', NULL, NULL),
(887, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 12:20:44pm', NULL, NULL),
(888, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 12:20:48pm', NULL, NULL),
(889, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 12:27:31pm', NULL, NULL),
(890, 250, 251, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 12:28:36pm', NULL, NULL),
(891, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 12:28:39pm', NULL, NULL),
(892, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 12:48:58pm', NULL, NULL),
(893, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 12:49:04pm', NULL, NULL),
(894, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 12:49:38pm', NULL, NULL),
(895, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 12:49:59pm', NULL, NULL),
(896, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 12:50:09pm', NULL, NULL),
(897, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 12:50:23pm', NULL, NULL),
(898, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 12:50:43pm', NULL, NULL),
(899, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 12:51:02pm', NULL, NULL),
(900, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 01:51:10am', NULL, NULL),
(901, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 01:51:19am', NULL, NULL),
(902, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/265', 0, 'Sun, Aug 2022 01:51:29am', NULL, NULL),
(903, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 01:51:40am', NULL, NULL),
(904, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 01:51:53am', NULL, NULL),
(905, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 01:55:43am', NULL, NULL),
(906, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 01:57:51am', NULL, NULL),
(907, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 01:59:50am', NULL, NULL),
(908, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 02:02:57am', NULL, NULL),
(909, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 02:10:30am', NULL, NULL),
(910, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 02:11:17am', NULL, NULL),
(911, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 02:11:36am', NULL, NULL),
(912, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 02:12:06am', NULL, NULL),
(913, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 02:12:27am', NULL, NULL),
(914, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 02:12:58am', NULL, NULL),
(915, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 02:13:15am', NULL, NULL),
(916, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 02:13:53am', NULL, NULL),
(917, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 02:40:17am', NULL, NULL),
(918, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 02:42:04am', NULL, NULL),
(919, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 02:42:20am', NULL, NULL),
(920, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 02:43:06am', NULL, NULL),
(921, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 02:43:10am', NULL, NULL),
(922, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/266', 0, 'Sun, Aug 2022 02:43:37am', NULL, NULL),
(923, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/267', 0, 'Sun, Aug 2022 02:44:11am', NULL, NULL),
(924, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/268', 0, 'Sun, Aug 2022 04:31:08am', NULL, NULL),
(925, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/268', 0, 'Sun, Aug 2022 04:31:27am', NULL, NULL),
(926, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 10:42:47am', NULL, NULL),
(927, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 11:03:20am', NULL, NULL),
(928, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 11:06:01am', NULL, NULL),
(929, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 11:06:10am', NULL, NULL),
(930, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 11:07:17am', NULL, NULL),
(931, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 11:07:55am', NULL, NULL),
(932, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 11:08:20am', NULL, NULL),
(933, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 11:08:58am', NULL, NULL),
(934, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 12:15:32pm', NULL, NULL),
(935, 250, 253, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/272', 0, 'Tue, Aug 2022 02:27:54am', NULL, NULL),
(936, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 02:30:34am', NULL, NULL),
(937, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/273', 0, 'Tue, Aug 2022 02:31:52am', NULL, NULL),
(938, 126, 248, 'FID send you a report request', 'http://localhost/report_management/created-submit-form/274', 0, 'Tue, Aug 2022 05:35:19am', NULL, NULL),
(939, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/274', 0, 'Tue, Aug 2022 05:35:28am', NULL, NULL),
(940, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/274', 0, 'Tue, Aug 2022 05:35:44am', NULL, NULL),
(941, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/274', 0, 'Tue, Aug 2022 05:36:51am', NULL, NULL),
(942, 250, 253, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/274', 0, 'Tue, Aug 2022 05:37:18am', NULL, NULL),
(943, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/274', 0, 'Tue, Aug 2022 05:39:32am', NULL, NULL),
(944, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/259', 0, 'Wed, Aug 2022 08:58:45am', NULL, NULL),
(945, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/274', 0, 'Wed, Aug 2022 09:03:03am', NULL, NULL),
(946, 126, 248, 'FID send you a report request', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:05:09am', NULL, NULL),
(947, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:05:15am', NULL, NULL),
(948, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:05:28am', NULL, NULL),
(949, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:05:32am', NULL, NULL),
(950, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:05:45am', NULL, NULL),
(951, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:05:54am', NULL, NULL),
(952, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:05:57am', NULL, NULL),
(953, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:06:23am', NULL, NULL),
(954, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:06:27am', NULL, NULL),
(955, 250, 251, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:07:16am', NULL, NULL),
(956, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:07:19am', NULL, NULL),
(957, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:07:31am', NULL, NULL),
(958, 251, 250, 'shafiq send you a report request', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:07:39am', NULL, NULL),
(959, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:07:44am', NULL, NULL),
(960, 250, 248, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:08:56am', NULL, NULL),
(961, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/279', 0, 'Wed, Aug 2022 09:08:57am', NULL, NULL),
(962, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:33:58am', NULL, NULL),
(963, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:43:59am', NULL, NULL),
(964, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:45:36am', NULL, NULL),
(965, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:46:04am', NULL, NULL),
(966, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:46:40am', NULL, NULL),
(967, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:47:03am', NULL, NULL),
(968, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:47:28am', NULL, NULL),
(969, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:47:49am', NULL, NULL),
(970, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:49:15am', NULL, NULL),
(971, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:51:55am', NULL, NULL),
(972, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 10:53:31am', NULL, NULL),
(973, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 11:56:24am', NULL, NULL),
(974, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 11:57:04am', NULL, NULL),
(975, 250, 253, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 11:57:44am', NULL, NULL),
(976, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 11:58:13am', NULL, NULL),
(977, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 11:58:38am', NULL, NULL),
(978, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:09:57pm', NULL, NULL),
(979, 250, 251, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:10:29pm', NULL, NULL),
(980, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:13:05pm', NULL, NULL),
(981, 253, 255, 'joy send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:16:28pm', NULL, NULL),
(982, 253, 254, 'joy send you a report request', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:18:04pm', NULL, NULL),
(983, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:18:10pm', NULL, NULL),
(984, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:22:37pm', NULL, NULL),
(985, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:24:51pm', NULL, NULL),
(986, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:25:22pm', NULL, NULL),
(987, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:25:29pm', NULL, NULL),
(988, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:26:03pm', NULL, NULL),
(989, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 12:26:36pm', NULL, NULL),
(990, 253, 255, 'joyPlease Submitform', 'http://localhost/report_management/form/280', 0, 'Thu, Aug 2022 02:03:05am', NULL, NULL),
(991, 253, 255, 'joyPlease Submitform', 'http://localhost/report_management/form/280', 0, 'Thu, Aug 2022 02:03:07am', NULL, NULL),
(992, 253, 255, 'joyPlease Submitform', 'http://localhost/report_management/form/280', 0, 'Thu, Aug 2022 02:03:08am', NULL, NULL),
(993, 253, 255, 'joyPlease Submitform', 'http://localhost/report_management/form/280', 0, 'Thu, Aug 2022 02:03:08am', NULL, NULL),
(994, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 02:48:42am', NULL, NULL),
(995, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/280', 0, 'Thu, Aug 2022 02:48:53am', NULL, NULL),
(996, 250, 251, 'shadmaanPlease Submitform', 'http://localhost/report_management/form/280', 0, 'Thu, Aug 2022 02:50:08am', NULL, NULL),
(997, 250, 251, 'shadmaanPlease Submitform', 'http://localhost/report_management/form/280', 0, 'Fri, Aug 2022 04:21:10am', NULL, NULL),
(998, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 10:44:34am', NULL, NULL),
(999, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 10:44:58am', NULL, NULL),
(1000, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 10:51:26am', NULL, NULL),
(1001, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 10:52:02am', NULL, NULL),
(1002, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 10:52:06am', NULL, NULL),
(1003, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 10:55:43am', NULL, NULL),
(1004, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 10:58:35am', NULL, NULL),
(1005, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 11:01:29am', NULL, NULL),
(1006, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 11:02:24am', NULL, NULL),
(1007, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 11:11:42am', NULL, NULL),
(1008, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/281', 0, 'Sat, Aug 2022 11:12:48am', NULL, NULL),
(1009, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:17:15am', NULL, NULL),
(1010, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:17:18am', NULL, NULL),
(1011, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:17:40am', NULL, NULL),
(1012, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:17:47am', NULL, NULL),
(1013, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:18:00am', NULL, NULL),
(1014, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:18:24am', NULL, NULL),
(1015, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:19:17am', NULL, NULL);
INSERT INTO `notification` (`id`, `user_id`, `for_user_id`, `message`, `link`, `status`, `show_date`, `created_at`, `updated_at`) VALUES
(1016, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:19:32am', NULL, NULL),
(1017, 248, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:19:43am', NULL, NULL),
(1018, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:19:45am', NULL, NULL),
(1019, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:24:38am', NULL, NULL),
(1020, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:26:47am', NULL, NULL),
(1021, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:27:46am', NULL, NULL),
(1022, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:28:30am', NULL, NULL),
(1023, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:29:21am', NULL, NULL),
(1024, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:34:08am', NULL, NULL),
(1025, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:34:30am', NULL, NULL),
(1026, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:34:49am', NULL, NULL),
(1027, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:35:22am', NULL, NULL),
(1028, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:35:56am', NULL, NULL),
(1029, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:36:13am', NULL, NULL),
(1030, 248, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:36:19am', NULL, NULL),
(1031, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:36:20am', NULL, NULL),
(1032, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:40:06am', NULL, NULL),
(1033, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:53:40am', NULL, NULL),
(1034, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:53:54am', NULL, NULL),
(1035, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:54:58am', NULL, NULL),
(1036, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:55:19am', NULL, NULL),
(1037, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sat, Aug 2022 11:56:43am', NULL, NULL),
(1038, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sun, Aug 2022 12:00:37pm', NULL, NULL),
(1039, 248, 249, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/282', 0, 'Sun, Aug 2022 12:01:11pm', NULL, NULL),
(1040, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sun, Aug 2022 12:01:12pm', NULL, NULL),
(1041, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sun, Aug 2022 12:08:05pm', NULL, NULL),
(1042, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/282', 0, 'Sun, Aug 2022 12:08:24pm', NULL, NULL),
(1043, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:09:13pm', NULL, NULL),
(1044, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:10:53pm', NULL, NULL),
(1045, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:12:58pm', NULL, NULL),
(1046, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:13:07pm', NULL, NULL),
(1047, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:13:15pm', NULL, NULL),
(1048, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:13:22pm', NULL, NULL),
(1049, 248, 249, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:13:32pm', NULL, NULL),
(1050, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:13:33pm', NULL, NULL),
(1051, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:13:38pm', NULL, NULL),
(1052, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:13:55pm', NULL, NULL),
(1053, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:14:08pm', NULL, NULL),
(1054, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:14:15pm', NULL, NULL),
(1055, 248, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:14:21pm', NULL, NULL),
(1056, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:14:22pm', NULL, NULL),
(1057, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:17:46pm', NULL, NULL),
(1058, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/283', 0, 'Sun, Aug 2022 12:17:54pm', NULL, NULL),
(1059, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:56:58am', NULL, NULL),
(1060, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:57:37am', NULL, NULL),
(1061, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:58:13am', NULL, NULL),
(1062, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:58:21am', NULL, NULL),
(1063, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:58:24am', NULL, NULL),
(1064, 248, 249, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:58:36am', NULL, NULL),
(1065, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:58:36am', NULL, NULL),
(1066, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:58:39am', NULL, NULL),
(1067, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:58:48am', NULL, NULL),
(1068, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:58:54am', NULL, NULL),
(1069, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:58:56am', NULL, NULL),
(1070, 248, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:59:00am', NULL, NULL),
(1071, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:59:01am', NULL, NULL),
(1072, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 08:59:04am', NULL, NULL),
(1073, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 09:00:30am', NULL, NULL),
(1074, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/284', 0, 'Sun, Aug 2022 09:00:33am', NULL, NULL),
(1075, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:19:21am', NULL, NULL),
(1076, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:19:44am', NULL, NULL),
(1077, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:20:24am', NULL, NULL),
(1078, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:20:40am', NULL, NULL),
(1079, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:21:06am', NULL, NULL),
(1080, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:21:14am', NULL, NULL),
(1081, 248, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:21:17am', NULL, NULL),
(1082, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:21:17am', NULL, NULL),
(1083, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:21:30am', NULL, NULL),
(1084, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:21:51am', NULL, NULL),
(1085, 250, 251, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:22:15am', NULL, NULL),
(1086, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:22:34am', NULL, NULL),
(1087, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:22:49am', NULL, NULL),
(1088, 251, 250, 'shafiq send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:22:55am', NULL, NULL),
(1089, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:22:59am', NULL, NULL),
(1090, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:23:08am', NULL, NULL),
(1091, 250, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:23:11am', NULL, NULL),
(1092, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:23:12am', NULL, NULL),
(1093, 250, 253, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:23:22am', NULL, NULL),
(1094, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:23:41am', NULL, NULL),
(1095, 253, 255, 'joy send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:24:14am', NULL, NULL),
(1096, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:25:25am', NULL, NULL),
(1097, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:25:43am', NULL, NULL),
(1098, 255, 253, 'rakib send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:25:48am', NULL, NULL),
(1099, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:25:54am', NULL, NULL),
(1100, 253, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:25:57am', NULL, NULL),
(1101, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/285', 0, 'Sun, Aug 2022 09:25:58am', NULL, NULL),
(1102, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Wed, Aug 2022 09:53:14am', NULL, NULL),
(1103, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Wed, Aug 2022 09:54:52am', NULL, NULL),
(1104, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 09:59:32am', NULL, NULL),
(1105, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/285', 0, 'Wed, Aug 2022 10:00:25am', NULL, NULL),
(1106, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 10:00:56am', NULL, NULL),
(1107, 248, 255, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 11:44:02am', NULL, NULL),
(1108, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 11:45:05am', NULL, NULL),
(1109, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:01:26pm', NULL, NULL),
(1110, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:01:38pm', NULL, NULL),
(1111, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:12:59pm', NULL, NULL),
(1112, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:20:45pm', NULL, NULL),
(1113, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:21:19pm', NULL, NULL),
(1114, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:21:28pm', NULL, NULL),
(1115, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:23:41pm', NULL, NULL),
(1116, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:24:04pm', NULL, NULL),
(1117, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:24:10pm', NULL, NULL),
(1118, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:31:44pm', NULL, NULL),
(1119, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:31:44pm', NULL, NULL),
(1120, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:32:04pm', NULL, NULL),
(1121, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:33:31pm', NULL, NULL),
(1122, 254, 256, 'nazmul send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:36:48pm', NULL, NULL),
(1123, 256, 253, 'toushik has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:36:57pm', NULL, NULL),
(1124, 256, 253, 'toushik has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:37:24pm', NULL, NULL),
(1125, 256, 254, 'toushik send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:37:36pm', NULL, NULL),
(1126, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:37:43pm', NULL, NULL),
(1127, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:52:01pm', NULL, NULL),
(1128, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:52:01pm', NULL, NULL),
(1129, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:52:35pm', NULL, NULL),
(1130, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:52:35pm', NULL, NULL),
(1131, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:53:00pm', NULL, NULL),
(1132, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 12:53:00pm', NULL, NULL),
(1133, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:15:14am', NULL, NULL),
(1134, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:15:14am', NULL, NULL),
(1135, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:16:21am', NULL, NULL),
(1136, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:16:21am', NULL, NULL),
(1137, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:16:43am', NULL, NULL),
(1138, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:16:44am', NULL, NULL),
(1139, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:29:07am', NULL, NULL),
(1140, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:29:07am', NULL, NULL),
(1141, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:30:07am', NULL, NULL),
(1142, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:30:07am', NULL, NULL),
(1143, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:32:24am', NULL, NULL),
(1144, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:32:24am', NULL, NULL),
(1145, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:32:30am', NULL, NULL),
(1146, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:32:43am', NULL, NULL),
(1147, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:36:35am', NULL, NULL),
(1148, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:36:40am', NULL, NULL),
(1149, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:38:15am', NULL, NULL),
(1150, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:44:18am', NULL, NULL),
(1151, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:44:23am', NULL, NULL),
(1152, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 02:49:07am', NULL, NULL),
(1153, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:01:09am', NULL, NULL),
(1154, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:09:30am', NULL, NULL),
(1155, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:09:36am', NULL, NULL),
(1156, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:12:39am', NULL, NULL),
(1157, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:12:40am', NULL, NULL),
(1158, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:12:42am', NULL, NULL),
(1159, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:12:46am', NULL, NULL),
(1160, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:17:40am', NULL, NULL),
(1161, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:19:51am', NULL, NULL),
(1162, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:20:28am', NULL, NULL),
(1163, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:22:53am', NULL, NULL),
(1164, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:23:36am', NULL, NULL),
(1165, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:23:39am', NULL, NULL),
(1166, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:23:44am', NULL, NULL),
(1167, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:23:51am', NULL, NULL),
(1168, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:27:40am', NULL, NULL),
(1169, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:33:36am', NULL, NULL),
(1170, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:33:44am', NULL, NULL),
(1171, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:34:08am', NULL, NULL),
(1172, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:35:19am', NULL, NULL),
(1173, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:35:23am', NULL, NULL),
(1174, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:36:46am', NULL, NULL),
(1175, 248, 254, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:36:47am', NULL, NULL),
(1176, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:36:53am', NULL, NULL),
(1177, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:36:58am', NULL, NULL),
(1178, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:38:27am', NULL, NULL),
(1179, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:39:31am', NULL, NULL),
(1180, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:54:47am', NULL, NULL),
(1181, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:55:27am', NULL, NULL),
(1182, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:55:29am', NULL, NULL),
(1183, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/287', 0, 'Wed, Aug 2022 03:57:12am', NULL, NULL),
(1184, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:57:16am', NULL, NULL),
(1185, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:58:20am', NULL, NULL),
(1186, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 03:58:49am', NULL, NULL),
(1187, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:12:40am', NULL, NULL),
(1188, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:13:08am', NULL, NULL),
(1189, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:13:11am', NULL, NULL),
(1190, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:13:41am', NULL, NULL),
(1191, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:14:08am', NULL, NULL),
(1192, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:14:15am', NULL, NULL),
(1193, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:14:56am', NULL, NULL),
(1194, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:15:08am', NULL, NULL),
(1195, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:15:13am', NULL, NULL),
(1196, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:16:27am', NULL, NULL),
(1197, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:16:30am', NULL, NULL),
(1198, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:16:36am', NULL, NULL),
(1199, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:17:05am', NULL, NULL),
(1200, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:17:07am', NULL, NULL),
(1201, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:18:21am', NULL, NULL),
(1202, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:18:23am', NULL, NULL),
(1203, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:18:29am', NULL, NULL),
(1204, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:18:32am', NULL, NULL),
(1205, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:18:34am', NULL, NULL),
(1206, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:18:54am', NULL, NULL),
(1207, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:19:51am', NULL, NULL),
(1208, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:23:11am', NULL, NULL),
(1209, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:23:27am', NULL, NULL),
(1210, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:26:27am', NULL, NULL),
(1211, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:26:32am', NULL, NULL),
(1212, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:27:40am', NULL, NULL),
(1213, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:27:44am', NULL, NULL),
(1214, 254, 256, 'nazmul send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:28:40am', NULL, NULL),
(1215, 256, 253, 'toushik has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:28:47am', NULL, NULL),
(1216, 256, 253, 'toushik has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:29:01am', NULL, NULL),
(1217, 256, 254, 'toushik send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:29:07am', NULL, NULL),
(1218, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:29:16am', NULL, NULL),
(1219, 254, 253, 'nazmul send you a report request', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:29:30am', NULL, NULL),
(1220, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:30:09am', NULL, NULL),
(1221, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:32:39am', NULL, NULL),
(1222, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:32:41am', NULL, NULL),
(1223, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:32:44am', NULL, NULL),
(1224, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:32:52am', NULL, NULL),
(1225, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:34:38am', NULL, NULL),
(1226, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:40:35am', NULL, NULL),
(1227, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:44:32am', NULL, NULL),
(1228, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:44:43am', NULL, NULL),
(1229, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:45:02am', NULL, NULL),
(1230, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:45:07am', NULL, NULL),
(1231, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:45:09am', NULL, NULL),
(1232, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:45:10am', NULL, NULL),
(1233, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:45:11am', NULL, NULL),
(1234, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:45:12am', NULL, NULL),
(1235, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:47:41am', NULL, NULL),
(1236, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:48:45am', NULL, NULL),
(1237, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:49:07am', NULL, NULL),
(1238, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:49:10am', NULL, NULL),
(1239, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:50:11am', NULL, NULL),
(1240, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:50:14am', NULL, NULL),
(1241, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:50:16am', NULL, NULL),
(1242, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:50:22am', NULL, NULL),
(1243, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:50:25am', NULL, NULL),
(1244, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:50:27am', NULL, NULL),
(1245, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:50:47am', NULL, NULL),
(1246, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Wed, Aug 2022 04:51:41am', NULL, NULL),
(1247, 126, 253, 'FID send you a report request', 'http://localhost/report_management/created-submit-form/289', 0, 'Thu, Aug 2022 08:43:43am', NULL, NULL),
(1248, 126, 253, 'FID send you a report request', 'http://localhost/report_management/created-submit-form/289', 0, 'Thu, Aug 2022 08:43:44am', NULL, NULL),
(1249, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/289', 0, 'Thu, Aug 2022 08:44:10am', NULL, NULL),
(1250, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/289', 0, 'Thu, Aug 2022 08:48:37am', NULL, NULL),
(1251, 126, 248, 'FID send you a report request', 'http://localhost/report_management/created-submit-form/290', 0, 'Thu, Aug 2022 08:50:07am', NULL, NULL),
(1252, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/290', 0, 'Thu, Aug 2022 08:50:25am', NULL, NULL),
(1253, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/290', 0, 'Thu, Aug 2022 09:29:25am', NULL, NULL),
(1254, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/290', 0, 'Thu, Aug 2022 10:39:03am', NULL, NULL),
(1255, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/290', 0, 'Thu, Aug 2022 10:40:42am', NULL, NULL),
(1256, 250, 254, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 12:19:59pm', NULL, NULL),
(1257, 250, 254, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 12:20:00pm', NULL, NULL),
(1258, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 12:20:56pm', NULL, NULL),
(1259, 250, 254, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 12:27:21pm', NULL, NULL),
(1260, 250, 254, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 12:27:21pm', NULL, NULL),
(1261, 250, 254, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 12:28:10pm', NULL, NULL),
(1262, 250, 254, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 12:28:10pm', NULL, NULL),
(1263, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 12:28:36pm', NULL, NULL),
(1264, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 02:23:03am', NULL, NULL),
(1265, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/288', 0, 'Thu, Aug 2022 02:23:40am', NULL, NULL),
(1266, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 02:27:31am', NULL, NULL),
(1267, 254, 250, 'nazmul send you a report request', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 03:12:06am', NULL, NULL),
(1268, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/293', 0, 'Thu, Aug 2022 03:12:16am', NULL, NULL),
(1269, 250, 257, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:16:38am', NULL, NULL),
(1270, 250, 257, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:16:39am', NULL, NULL),
(1271, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:16:48am', NULL, NULL),
(1272, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:16:52am', NULL, NULL),
(1273, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:20:08am', NULL, NULL),
(1274, 257, 258, 'Mamun send you a report request', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:20:19am', NULL, NULL),
(1275, 258, 254, 'Bidyut Magumdar has backed the form', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:20:26am', NULL, NULL),
(1276, 258, 254, 'Bidyut Magumdar has backed the form', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:20:44am', NULL, NULL),
(1277, 258, 257, 'Bidyut Magumdar send you a report request', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:20:52am', NULL, NULL),
(1278, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:21:04am', NULL, NULL),
(1279, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:21:28am', NULL, NULL),
(1280, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:22:20am', NULL, NULL),
(1281, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:23:00am', NULL, NULL),
(1282, 250, 257, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:29:03am', NULL, NULL),
(1283, 250, 257, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:29:03am', NULL, NULL),
(1284, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:29:08am', NULL, NULL),
(1285, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:29:13am', NULL, NULL),
(1286, 257, 250, 'Mamun send you a report request', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:33:24am', NULL, NULL),
(1287, 257, 258, 'Mamun send you a report request', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:33:39am', NULL, NULL),
(1288, 258, 254, 'Bidyut Magumdar has backed the form', 'http://localhost/report_management/created-submit-form/294', 0, 'Thu, Aug 2022 03:33:47am', NULL, NULL),
(1289, 258, 254, 'Bidyut Magumdar has backed the form', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:33:51am', NULL, NULL),
(1290, 258, 254, 'Bidyut Magumdar has backed the form', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:33:56am', NULL, NULL),
(1291, 258, 257, 'Bidyut Magumdar send you a report request', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:34:02am', NULL, NULL),
(1292, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:34:59am', NULL, NULL),
(1293, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:35:14am', NULL, NULL),
(1294, 250, 257, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:35:21am', NULL, NULL),
(1295, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:35:22am', NULL, NULL),
(1296, 257, 257, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:37:44am', NULL, NULL),
(1297, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/295', 0, 'Thu, Aug 2022 03:37:45am', NULL, NULL),
(1298, 250, 257, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:40:42am', NULL, NULL),
(1299, 250, 257, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:40:43am', NULL, NULL),
(1300, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:41:28am', NULL, NULL),
(1301, 257, 258, 'Mamun send you a report request', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:41:44am', NULL, NULL),
(1302, 258, 254, 'Bidyut Magumdar has backed the form', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:41:55am', NULL, NULL),
(1303, 258, 254, 'Bidyut Magumdar has backed the form', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:42:05am', NULL, NULL),
(1304, 258, 257, 'Bidyut Magumdar send you a report request', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:42:13am', NULL, NULL),
(1305, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:42:25am', NULL, NULL),
(1306, 257, 257, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:42:32am', NULL, NULL),
(1307, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:42:32am', NULL, NULL),
(1308, 257, 250, 'Mamun send you a report request', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:43:04am', NULL, NULL),
(1309, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/296', 0, 'Thu, Aug 2022 04:43:08am', NULL, NULL),
(1310, 250, 253, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:45:11am', NULL, NULL),
(1311, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:45:17am', NULL, NULL),
(1312, 253, 255, 'joy send you a report request', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:46:06am', NULL, NULL),
(1313, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:46:14am', NULL, NULL),
(1314, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:46:28am', NULL, NULL),
(1315, 255, 253, 'rakib send you a report request', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:46:35am', NULL, NULL),
(1316, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:46:42am', NULL, NULL),
(1317, 253, 250, 'joy send you a report request', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:46:50am', NULL, NULL),
(1318, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:46:57am', NULL, NULL),
(1319, 253, 250, 'joy send you a report request', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:50:46am', NULL, NULL),
(1320, 253, 254, 'joy send you a report request', 'http://localhost/report_management/created-submit-form/297', 0, 'Thu, Aug 2022 04:50:52am', NULL, NULL),
(1321, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 09:43:42am', NULL, NULL),
(1322, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 09:43:49am', NULL, NULL),
(1323, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 09:44:09am', NULL, NULL),
(1324, 249, 248, 'Shahed send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 09:44:26am', NULL, NULL),
(1325, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 09:44:31am', NULL, NULL),
(1326, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 09:55:06am', NULL, NULL),
(1327, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 09:55:30am', NULL, NULL),
(1328, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 09:57:01am', NULL, NULL),
(1329, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 09:57:07am', NULL, NULL),
(1330, 248, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:00:47am', NULL, NULL),
(1331, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:00:57am', NULL, NULL),
(1332, 248, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:01:00am', NULL, NULL),
(1333, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:01:01am', NULL, NULL),
(1334, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:06:09am', NULL, NULL),
(1335, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:06:23am', NULL, NULL),
(1336, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:13:57am', NULL, NULL),
(1337, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:23:24am', NULL, NULL),
(1338, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:23:49am', NULL, NULL),
(1339, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:24:05am', NULL, NULL),
(1340, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:24:39am', NULL, NULL),
(1341, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:25:05am', NULL, NULL);
INSERT INTO `notification` (`id`, `user_id`, `for_user_id`, `message`, `link`, `status`, `show_date`, `created_at`, `updated_at`) VALUES
(1342, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:25:13am', NULL, NULL),
(1343, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:25:58am', NULL, NULL),
(1344, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:26:07am', NULL, NULL),
(1345, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:27:59am', NULL, NULL),
(1346, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:28:03am', NULL, NULL),
(1347, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:28:28am', NULL, NULL),
(1348, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/297', 0, 'Sun, Aug 2022 10:28:38am', NULL, NULL),
(1349, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:28:41am', NULL, NULL),
(1350, 250, 251, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:30:00am', NULL, NULL),
(1351, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:30:06am', NULL, NULL),
(1352, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:30:25am', NULL, NULL),
(1353, 251, 250, 'shafiq send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:30:33am', NULL, NULL),
(1354, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:30:40am', NULL, NULL),
(1355, 250, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:30:44am', NULL, NULL),
(1356, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 10:30:44am', NULL, NULL),
(1357, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:10:25am', NULL, NULL),
(1358, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:10:59am', NULL, NULL),
(1359, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:11:04am', NULL, NULL),
(1360, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:11:13am', NULL, NULL),
(1361, 250, 248, 'shadmaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:11:52am', NULL, NULL),
(1362, 251, 248, 'shafiq has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:11:57am', NULL, NULL),
(1363, 250, 253, 'shadmaan send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:12:09am', NULL, NULL),
(1364, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:12:37am', NULL, NULL),
(1365, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:13:06am', NULL, NULL),
(1366, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:13:31am', NULL, NULL),
(1367, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:14:30am', NULL, NULL),
(1368, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:14:52am', NULL, NULL),
(1369, 253, 255, 'joy send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:15:49am', NULL, NULL),
(1370, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:15:55am', NULL, NULL),
(1371, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:16:36am', NULL, NULL),
(1372, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:21:30am', NULL, NULL),
(1373, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:21:36am', NULL, NULL),
(1374, 253, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:21:43am', NULL, NULL),
(1375, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:21:44am', NULL, NULL),
(1376, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:21:50am', NULL, NULL),
(1377, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:22:50am', NULL, NULL),
(1378, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:22:59am', NULL, NULL),
(1379, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:23:00am', NULL, NULL),
(1380, 253, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:23:04am', NULL, NULL),
(1381, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:23:04am', NULL, NULL),
(1382, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:23:05am', NULL, NULL),
(1383, 255, 250, 'rakib has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:23:09am', NULL, NULL),
(1384, 253, 254, 'joy send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:31:23am', NULL, NULL),
(1385, 254, 253, 'nazmulYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:31:52am', NULL, NULL),
(1386, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:31:52am', NULL, NULL),
(1387, 254, 256, 'nazmul send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:32:04am', NULL, NULL),
(1388, 256, 253, 'toushik has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:32:33am', NULL, NULL),
(1389, 256, 253, 'toushik has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:32:48am', NULL, NULL),
(1390, 256, 254, 'toushik send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:32:56am', NULL, NULL),
(1391, 254, 253, 'nazmulYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:33:04am', NULL, NULL),
(1392, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:33:04am', NULL, NULL),
(1393, 254, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:33:08am', NULL, NULL),
(1394, 254, 253, 'nazmulYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:33:09am', NULL, NULL),
(1395, 254, 253, 'nazmul has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:33:09am', NULL, NULL),
(1396, 256, 254, 'toushik send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:33:14am', NULL, NULL),
(1397, 256, 253, 'toushik has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:33:17am', NULL, NULL),
(1398, 254, 257, 'nazmul send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:33:40am', NULL, NULL),
(1399, 257, 254, 'MamunYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:34:01am', NULL, NULL),
(1400, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:34:01am', NULL, NULL),
(1401, 257, 258, 'Mamun send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:34:20am', NULL, NULL),
(1402, 258, 254, 'Bidyut Magumdar has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:34:43am', NULL, NULL),
(1403, 258, 254, 'Bidyut Magumdar has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:34:54am', NULL, NULL),
(1404, 258, 257, 'Bidyut Magumdar send you a report request', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:34:59am', NULL, NULL),
(1405, 257, 254, 'MamunYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:35:07am', NULL, NULL),
(1406, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:35:07am', NULL, NULL),
(1407, 257, 249, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:35:10am', NULL, NULL),
(1408, 257, 254, 'MamunYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:35:11am', NULL, NULL),
(1409, 257, 254, 'Mamun has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:35:11am', NULL, NULL),
(1410, 248, 126, 'ArmaanYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:35:27am', NULL, NULL),
(1411, 248, 126, 'Armaan has backed the form', 'http://localhost/report_management/created-submit-form/298', 0, 'Sun, Aug 2022 11:35:27am', NULL, NULL),
(1412, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/300', 0, 'Mon, Aug 2022 08:59:44am', NULL, NULL),
(1413, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/300', 0, 'Mon, Aug 2022 08:59:51am', NULL, NULL),
(1414, 248, 253, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/300', 0, 'Mon, Aug 2022 09:25:52am', NULL, NULL),
(1415, 248, 253, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/300', 0, 'Mon, Aug 2022 09:25:53am', NULL, NULL),
(1416, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/300', 0, 'Mon, Aug 2022 09:25:57am', NULL, NULL),
(1417, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/300', 0, 'Mon, Aug 2022 09:25:57am', NULL, NULL),
(1418, 248, 253, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/300', 0, 'Mon, Aug 2022 09:26:14am', NULL, NULL),
(1419, 248, 253, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/300', 0, 'Mon, Aug 2022 09:26:14am', NULL, NULL),
(1420, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/300', 0, 'Mon, Aug 2022 09:26:21am', NULL, NULL),
(1421, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/300', 0, 'Mon, Aug 2022 09:26:21am', NULL, NULL),
(1422, 248, 253, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/302', 0, 'Mon, Aug 2022 09:27:21am', NULL, NULL),
(1423, 248, 253, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/302', 0, 'Mon, Aug 2022 09:27:21am', NULL, NULL),
(1424, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/302', 0, 'Mon, Aug 2022 09:27:26am', NULL, NULL),
(1425, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/302', 0, 'Mon, Aug 2022 09:27:26am', NULL, NULL),
(1426, 248, 253, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:28:35am', NULL, NULL),
(1427, 248, 253, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:28:35am', NULL, NULL),
(1428, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:28:40am', NULL, NULL),
(1429, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:28:40am', NULL, NULL),
(1430, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:32:50am', NULL, NULL),
(1431, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:32:50am', NULL, NULL),
(1432, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:33:19am', NULL, NULL),
(1433, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:33:19am', NULL, NULL),
(1434, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:33:55am', NULL, NULL),
(1435, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:33:56am', NULL, NULL),
(1436, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:33:59am', NULL, NULL),
(1437, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:33:59am', NULL, NULL),
(1438, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:35:55am', NULL, NULL),
(1439, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:35:56am', NULL, NULL),
(1440, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:36:27am', NULL, NULL),
(1441, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:36:27am', NULL, NULL),
(1442, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:38:31am', NULL, NULL),
(1443, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:38:32am', NULL, NULL),
(1444, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:39:24am', NULL, NULL),
(1445, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:39:24am', NULL, NULL),
(1446, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:39:39am', NULL, NULL),
(1447, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:39:39am', NULL, NULL),
(1448, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:39:59am', NULL, NULL),
(1449, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:40:00am', NULL, NULL),
(1450, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:40:48am', NULL, NULL),
(1451, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:40:59am', NULL, NULL),
(1452, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:41:41am', NULL, NULL),
(1453, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:41:41am', NULL, NULL),
(1454, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/302', 0, 'Mon, Aug 2022 09:42:03am', NULL, NULL),
(1455, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/302', 0, 'Mon, Aug 2022 09:42:03am', NULL, NULL),
(1456, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:42:08am', NULL, NULL),
(1457, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/303', 0, 'Mon, Aug 2022 09:42:08am', NULL, NULL),
(1458, 253, 250, 'joyYour Form Has Been Approved', 'http://localhost/report_management/created-submit-form/302', 0, 'Mon, Aug 2022 09:42:12am', NULL, NULL),
(1459, 253, 250, 'joy has backed the form', 'http://localhost/report_management/created-submit-form/302', 0, 'Mon, Aug 2022 09:42:12am', NULL, NULL),
(1460, 248, 250, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/304', 0, 'Mon, Aug 2022 10:56:11am', NULL, NULL),
(1461, 248, 249, 'Armaan send you a report request', 'http://localhost/report_management/created-submit-form/304', 0, 'Mon, Aug 2022 10:56:39am', NULL, NULL),
(1462, 249, 126, 'Shahed has backed the form', 'http://localhost/report_management/created-submit-form/304', 0, 'Mon, Aug 2022 10:56:54am', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Leave-Management Personal Access Client', '2fkomNCZhv0bllQ9xo5reSMqr0FdS2UOLwUxXfiJ', NULL, 'http://localhost', 1, 0, 0, '2021-11-02 01:02:51', '2021-11-02 01:02:51'),
(2, NULL, 'Leave-Management Password Grant Client', 'JRRmIAjox3Tjnd03VIkvzwrRsHfTw4O2R9GqLShe', 'users', 'http://localhost', 0, 1, 0, '2021-11-02 01:02:51', '2021-11-02 01:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-11-02 01:02:51', '2021-11-02 01:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `parent_id` text DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(10, NULL, 12, 'অর্গনাইজেশন শাখা', NULL, NULL, NULL, '2022-07-18 10:03:09', '2022-07-18 10:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE `parameter` (
  `id` int(11) NOT NULL,
  `year` text DEFAULT NULL,
  `quarter` text DEFAULT NULL,
  `ministry` text DEFAULT NULL,
  `department` text DEFAULT NULL,
  `office` text DEFAULT NULL,
  `unit_office` text DEFAULT NULL,
  `form_unique_id` text DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `form_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `year`, `quarter`, `ministry`, `department`, `office`, `unit_office`, `form_unique_id`, `form_id`, `form_name`, `created_at`, `updated_at`) VALUES
(58, '২০২৩-২৪', 'প্রথম কোয়ার্টার  (জানুয়ারি-মার্চ)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-8454504740', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-02-15 04:20:12', '2022-02-15 04:20:12'),
(59, '২০২২-২৩', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-8379616785', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-02-15 04:53:35', '2022-02-15 04:53:35'),
(60, '২০২২-২৩', 'তৃতীয় কোয়ার্টার (জুলাই-সেপ্টেম্বর)', '12', 'Bangladesh Bank', 'Select From List', 'Select From List', 'Form-3070491323', 8, '১.১.১. সচিবালয়', '2022-03-22 09:16:53', '2022-03-22 09:16:53'),
(61, '২০২২-২৩', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-2745615158', 8, '১.১.১. সচিবালয়', '2022-03-22 09:18:39', '2022-03-22 09:18:39'),
(62, '২০২২-২৩', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-5360069547', 8, '১.১.১. সচিবালয়', '2022-03-22 09:25:08', '2022-03-22 09:25:08'),
(63, '২০২২-২৩', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-4050699617', 8, '১.১.১. সচিবালয়', '2022-03-22 09:27:11', '2022-03-22 09:27:11'),
(64, '২০২২-২৩', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-3909503103', 33, 'Menu>1.1. Annual Performance Evaluation', '2022-03-22 09:37:54', '2022-03-22 09:37:54'),
(65, '২০২৩-২৪', 'তৃতীয় কোয়ার্টার (জুলাই-সেপ্টেম্বর)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-313079392', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-03-22 09:38:07', '2022-03-22 09:38:07'),
(66, '২০২৩-২৪', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-3254113771', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-03-22 09:46:19', '2022-03-22 09:46:19'),
(67, '২০২৩-২৪', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-7646486150', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-03-22 09:50:07', '2022-03-22 09:50:07'),
(68, '২০২৩-২৪', 'তৃতীয় কোয়ার্টার (জুলাই-সেপ্টেম্বর)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-6487228303', 33, 'Menu>1.1. Annual Performance Evaluation', '2022-03-22 11:10:18', '2022-03-22 11:10:18'),
(69, '২০২২-২৩', 'চতুর্থ কোয়ার্টার  (অক্টোবর-ডিসেম্বর)', '8', 'Select From List', 'Select From List', 'Select From List', 'Form-813523038', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-04-12 06:24:13', '2022-04-12 06:24:13'),
(70, '২০২৪-২৫', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-3977494385', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-07-13 10:55:16', '2022-07-13 10:55:16'),
(71, '২০২৩-২৪', 'চতুর্থ কোয়ার্টার  (অক্টোবর-ডিসেম্বর)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-2332257980', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-07-28 05:41:04', '2022-07-28 05:41:04'),
(72, '২০২৪-২৫', 'তৃতীয় কোয়ার্টার (জুলাই-সেপ্টেম্বর)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-4482338285', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-07-31 03:49:15', '2022-07-31 03:49:15'),
(73, '২০২৩-২৪', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-466723767', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-08-03 10:50:18', '2022-08-03 10:50:18'),
(74, '২০২৩-২৪', 'চতুর্থ কোয়ার্টার  (অক্টোবর-ডিসেম্বর)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-1896572975', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-08-08 10:12:52', '2022-08-08 10:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shahedshanjid@gmail.com', '$2y$10$MdFtxxhVs8nqLMXXmEkk3.iavY.puZc9DBEZyhg54br15OFjGMc2O', '2021-11-01 00:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `section_name`, `name`, `institution_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'User', 'Add User', NULL, 'add-user', '2021-10-17 03:38:31', '2021-11-01 22:33:16'),
(2, 'User', 'Edit User', NULL, 'edit-user', '2021-10-17 03:38:31', '2021-10-17 03:38:31'),
(3, 'User', 'View User', NULL, 'view-user', '2021-10-17 03:38:31', '2021-10-17 03:38:31'),
(4, 'User', 'Delete User', NULL, 'delete-user', '2021-10-17 03:38:31', '2021-10-17 03:38:31'),
(9, 'Permission', 'Add Permission', NULL, 'add-permission', '2021-10-19 03:11:20', '2021-10-19 03:11:20'),
(10, 'Permission', 'View Permission', NULL, 'view-permission', '2021-10-19 03:11:20', '2021-10-19 03:11:20'),
(11, 'Permission', 'Edit Permission', NULL, 'edit-permission', '2021-10-19 03:11:20', '2021-10-19 03:11:20'),
(12, 'Permission', 'Delete Permission', NULL, 'delete-permission', '2021-10-19 03:11:20', '2021-10-19 03:11:20'),
(13, 'Role', 'Add Role', NULL, 'add-role', '2021-10-19 03:11:55', '2021-10-19 03:11:55'),
(14, 'Role', 'Edit Role', NULL, 'edit-role', '2021-10-19 03:11:55', '2021-10-19 03:11:55'),
(15, 'Role', 'Delete Role', NULL, 'delete-role', '2021-10-19 03:11:55', '2021-10-19 03:11:55'),
(16, 'Role', 'View Role', NULL, 'view-role', '2021-10-19 03:11:56', '2021-10-19 03:11:56'),
(21, 'Designations', 'View Designations', NULL, 'view-designations', '2021-11-01 22:12:50', '2021-11-01 22:12:50'),
(22, 'Designations', 'Add Designations', NULL, 'add-designations', '2021-11-01 22:12:51', '2021-11-01 22:12:51'),
(23, 'Designations', 'Edit Designations', NULL, 'edit-designations', '2021-11-01 22:12:51', '2021-11-01 22:12:51'),
(24, 'Designations', 'Delete Designations', NULL, 'delete-designations', '2021-11-01 22:12:51', '2021-11-01 22:12:51'),
(25, 'Report', 'View today leaves', NULL, 'view-today-leaves', '2021-11-10 04:26:30', '2021-11-10 04:29:37'),
(26, 'Govt Leave', 'View Govt Leave', NULL, 'view-govt-leave', '2021-11-23 05:18:58', '2021-11-23 05:18:58'),
(27, 'User', 'N o User', 1, 'n-o-user', '2021-12-14 10:13:59', '2021-12-14 10:13:59'),
(28, 'User', 'Add  User', 1, 'add--user', '2021-12-14 11:31:47', '2021-12-14 11:31:47'),
(29, 'User', 'Edit User', 1, 'edit-user', '2021-12-14 11:31:47', '2021-12-14 11:31:47'),
(30, 'User', 'Delete User', 1, 'delete-user', '2021-12-14 11:31:47', '2021-12-14 11:31:47'),
(31, 'User', 'View User', 1, 'view-user', '2021-12-14 11:31:47', '2021-12-14 11:31:47'),
(32, 'Test', 'View Test', NULL, 'view-test', '2021-12-19 09:33:55', '2021-12-19 09:33:55'),
(33, 'Department', 'Add Department', 4, 'add-department', '2022-06-29 09:11:35', '2022-06-29 09:11:35'),
(34, 'Department', 'Edit Department', 4, 'edit-department', '2022-06-29 09:11:35', '2022-06-29 09:11:35'),
(35, 'Department', 'View Department', 4, 'view-department', '2022-06-29 09:11:35', '2022-06-29 09:11:35'),
(36, 'Department', 'Delete Department', 4, 'delete-department', '2022-06-29 09:11:35', '2022-06-29 09:11:35'),
(37, 'User', 'Add User', 4, 'add-user', '2022-06-29 09:26:41', '2022-06-29 09:26:41'),
(38, 'User', 'View User', 4, 'view-user', '2022-06-29 09:26:41', '2022-06-29 09:26:41'),
(39, 'User', 'Edit User', 4, 'edit-user', '2022-06-29 09:26:41', '2022-06-29 09:26:41'),
(40, 'User', 'Delete User', 4, 'delete-user', '2022-06-29 09:26:41', '2022-06-29 09:26:41'),
(41, 'Role', 'Add Role', 4, 'add-role', '2022-06-29 09:27:28', '2022-06-29 09:27:28'),
(42, 'Role', 'View Role', 4, 'view-role', '2022-06-29 09:27:28', '2022-06-29 09:27:28'),
(43, 'Role', 'Edit Role', 4, 'edit-role', '2022-06-29 09:27:28', '2022-06-29 09:27:28'),
(44, 'Role', 'Delete Role', 4, 'delete-role', '2022-06-29 09:27:28', '2022-06-29 09:27:28'),
(45, 'Form', 'Add Form', 4, 'add-form', '2022-06-29 09:28:06', '2022-06-29 09:28:06'),
(46, 'Form', 'View Form', 4, 'view-form', '2022-06-29 09:28:06', '2022-06-29 09:28:06'),
(47, 'Form', 'Edit Form', 4, 'edit-form', '2022-06-29 09:28:06', '2022-06-29 09:28:06'),
(48, 'Form', 'Delete Form', 4, 'delete-form', '2022-06-29 09:28:06', '2022-06-29 09:28:06'),
(49, 'Report', 'Add Report', 4, 'add-report', '2022-06-29 09:28:47', '2022-06-29 09:28:47'),
(50, 'Report', 'View Report', 4, 'view-report', '2022-06-29 09:28:47', '2022-06-29 09:28:47'),
(51, 'Report', 'Edit Report', 4, 'edit-report', '2022-06-29 09:28:47', '2022-06-29 09:28:47'),
(52, 'Report', 'Delete Report', 4, 'delete-report', '2022-06-29 09:28:47', '2022-06-29 09:28:47'),
(53, 'Report Requests', 'Add Report Requests', 4, 'add-report-requests', '2022-06-29 09:30:04', '2022-06-29 09:30:04'),
(54, 'Report Requests', 'View Report Requests', 4, 'view-report-requests', '2022-06-29 09:30:04', '2022-06-29 09:30:04'),
(55, 'Report Requests', 'Edit Report Requests', 4, 'edit-report-requests', '2022-06-29 09:30:04', '2022-06-29 09:30:04'),
(56, 'Report Requests', 'Delete Report Requests', 4, 'delete-report-requests', '2022-06-29 09:30:04', '2022-06-29 09:30:04'),
(57, 'Default Stored Forms', 'Add Default Stored Forms', 4, 'add-default-stored-forms', '2022-06-29 09:31:01', '2022-06-29 09:31:01'),
(58, 'Default Stored Forms', 'View Default Stored Forms', 4, 'view-default-stored-forms', '2022-06-29 09:31:01', '2022-06-29 09:31:01'),
(59, 'Default Stored Forms', 'Edit Default Stored Forms', 4, 'edit-default-stored-forms', '2022-06-29 09:31:01', '2022-06-29 09:31:01'),
(60, 'Default Stored Forms', 'Delete Default Stored Forms', 4, 'delete-default-stored-forms', '2022-06-29 09:31:01', '2022-06-29 09:31:01'),
(61, 'Send Form', 'Add Send Form', 4, 'add-send-form', '2022-06-29 09:31:43', '2022-06-29 09:31:43'),
(62, 'Send Form', 'View Send Form', 4, 'view-send-form', '2022-06-29 09:31:43', '2022-06-29 09:31:43'),
(63, 'Send Form', 'Edit Send Form', 4, 'edit-send-form', '2022-06-29 09:31:43', '2022-06-29 09:31:43'),
(64, 'Send Form', 'Delete Send Form', 4, 'delete-send-form', '2022-06-29 09:31:43', '2022-06-29 09:31:43'),
(65, 'Group', 'Add Group', 4, 'add-group', '2022-06-29 09:32:20', '2022-06-29 09:32:20'),
(66, 'Group', 'View Group', 4, 'view-group', '2022-06-29 09:32:20', '2022-06-29 09:32:20'),
(67, 'Group', 'Edit Group', 4, 'edit-group', '2022-06-29 09:32:20', '2022-06-29 09:32:20'),
(68, 'Group', 'Delete Group', 4, 'delete-group', '2022-06-29 09:32:20', '2022-06-29 09:32:20'),
(69, 'Ministry Department', 'Add Ministry Department', 4, 'add-ministry-department', '2022-06-29 09:33:02', '2022-06-29 09:33:02'),
(70, 'Ministry Department', 'View Ministry Department', 4, 'view-ministry-department', '2022-06-29 09:33:02', '2022-06-29 09:33:02'),
(71, 'Ministry Department', 'Edit Ministry Department', 4, 'edit-ministry-department', '2022-06-29 09:33:02', '2022-06-29 09:33:02'),
(72, 'Ministry Department', 'Delete Ministry Department', 4, 'delete-ministry-department', '2022-06-29 09:33:02', '2022-06-29 09:33:02'),
(73, 'Regularity Authority', 'Add Regularity Authority', 4, 'add-regularity-authority', '2022-06-29 09:33:41', '2022-06-29 09:33:41'),
(74, 'Regularity Authority', 'View Regularity Authority', 4, 'view-regularity-authority', '2022-06-29 09:33:41', '2022-06-29 09:33:41'),
(75, 'Regularity Authority', 'Edit Regularity Authority', 4, 'edit-regularity-authority', '2022-06-29 09:33:41', '2022-06-29 09:33:41'),
(76, 'Regularity Authority', 'Delete Regularity Authority', 4, 'delete-regularity-authority', '2022-06-29 09:33:41', '2022-06-29 09:33:41'),
(77, 'Institutions', 'Add Institutions', 4, 'add-institutions', '2022-06-29 09:34:23', '2022-06-29 09:34:23'),
(78, 'Institutions', 'View Institutions', 4, 'view-institutions', '2022-06-29 09:34:23', '2022-06-29 09:34:23'),
(79, 'Institutions', 'Edit Institutions', 4, 'edit-institutions', '2022-06-29 09:34:23', '2022-06-29 09:34:23'),
(80, 'Institutions', 'Delete Institutions', 4, 'delete-institutions', '2022-06-29 09:34:23', '2022-06-29 09:34:23'),
(81, 'Organization User', 'Add Organization User', 4, 'add-organization-user', '2022-06-29 09:34:59', '2022-06-29 09:34:59'),
(82, 'Organization User', 'View Organization User', 4, 'view-organization-user', '2022-06-29 09:34:59', '2022-06-29 09:34:59'),
(83, 'Organization User', 'Edit Organization User', 4, 'edit-organization-user', '2022-06-29 09:34:59', '2022-06-29 09:34:59'),
(84, 'Organization User', 'Delete Organization User', 4, 'delete-organization-user', '2022-06-29 09:34:59', '2022-06-29 09:34:59'),
(85, 'Division', 'Add Division', 4, 'add-division', '2022-06-29 09:35:35', '2022-06-29 09:35:35'),
(86, 'Division', 'View Division', 4, 'view-division', '2022-06-29 09:35:35', '2022-06-29 09:35:35'),
(87, 'Division', 'Edit Division', 4, 'edit-division', '2022-06-29 09:35:35', '2022-06-29 09:35:35'),
(88, 'Division', 'Delete Division', 4, 'delete-division', '2022-06-29 09:35:35', '2022-06-29 09:35:35'),
(89, 'Branch', 'Add Branch', 4, 'add-branch', '2022-06-29 09:36:53', '2022-06-29 09:36:53'),
(90, 'Branch', 'View Branch', 4, 'view-branch', '2022-06-29 09:36:53', '2022-06-29 09:36:53'),
(91, 'Branch', 'Edit Branch', 4, 'edit-branch', '2022-06-29 09:36:53', '2022-06-29 09:36:53'),
(92, 'Branch', 'Delete Branch', 4, 'delete-branch', '2022-06-29 09:36:53', '2022-06-29 09:36:53'),
(93, 'Designation', 'Add Designation', 4, 'add-designation', '2022-06-29 09:37:28', '2022-06-29 09:37:28'),
(94, 'Designation', 'View Designation', 4, 'view-designation', '2022-06-29 09:37:28', '2022-06-29 09:37:28'),
(95, 'Designation', 'Edit Designation', 4, 'edit-designation', '2022-06-29 09:37:28', '2022-06-29 09:37:28'),
(96, 'Designation', 'Delete Designation', 4, 'delete-designation', '2022-06-29 09:37:28', '2022-06-29 09:37:28'),
(97, 'Department', 'Add Department', 4, 'add-department', '2022-06-29 09:38:03', '2022-06-29 09:38:03'),
(98, 'Department', 'View Department', 4, 'view-department', '2022-06-29 09:38:03', '2022-06-29 09:38:03'),
(99, 'Department', 'Edit Department', 4, 'edit-department', '2022-06-29 09:38:03', '2022-06-29 09:38:03'),
(100, 'Department', 'Delete Department', 4, 'delete-department', '2022-06-29 09:38:03', '2022-06-29 09:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_ans`
--

CREATE TABLE `quiz_ans` (
  `new_id` int(11) NOT NULL,
  `ans_1` text DEFAULT NULL,
  `ans_2` text DEFAULT NULL,
  `ans_3` text DEFAULT NULL,
  `ans_4` text DEFAULT NULL,
  `ans_5` text DEFAULT NULL,
  `ans_6` text DEFAULT NULL,
  `ans_7` text DEFAULT NULL,
  `ans_8` text DEFAULT NULL,
  `ans_9` text DEFAULT NULL,
  `ans_10` text DEFAULT NULL,
  `new_user_id` int(11) DEFAULT NULL,
  `right_ans` int(11) DEFAULT NULL,
  `wrong_ans` int(11) DEFAULT NULL,
  `skipped_ans` int(11) DEFAULT NULL,
  `total_marks` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_ans`
--

INSERT INTO `quiz_ans` (`new_id`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `ans_5`, `ans_6`, `ans_7`, `ans_8`, `ans_9`, `ans_10`, `new_user_id`, `right_ans`, `wrong_ans`, `skipped_ans`, `total_marks`) VALUES
(92, '30', 'এই ক্রিকেটারের কোনো বিকল্প আসেনি।', 'সে ব্যাখ্যাটাও দিয়েছেন তিনি', '30', '90', 'গুজরাটি', 'প্রিস্কিয়ান', 'গ্রিস', '৩০ কোটি', '১৭৫০ সালে', 260, 2, 8, NULL, 2),
(93, '30', '40', '50', '4', '80', 'আরবি', 'ভাররো', 'রোম', '৪০ কোটি', '১৭৪৩ সালে', 261, 8, 2, NULL, 8),
(94, 'সরকারি পরিসংখ্যান অনুসারে মশাবাহিত', 'এই ক্রিকেটারের কোনো বিকল্প আসেনি।', 'পরিসংখ্যান দেখার পর টস জেতা দলের অধিনায়ক ব্যাটিংয়ের সিদ্ধান্ত নেবেন', '30', '90', 'ফরাসি', 'ভাররো', 'বাংলাদেশ', '৪০ কোটি', '১৭৫০ সালে', 259, 1, 9, NULL, 1),
(95, '30', '40', '50', '4', '80', 'আরবি', 'ভাররো', 'গ্রিস', '২৫ কোটি', '১৭৩৪ সালে', 262, 9, 1, NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_ques`
--

CREATE TABLE `quiz_ques` (
  `id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `option_1` text DEFAULT NULL,
  `option_2` text DEFAULT NULL,
  `option_3` text DEFAULT NULL,
  `option_4` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_ques`
--

INSERT INTO `quiz_ques` (`id`, `question`, `option_1`, `option_2`, `option_3`, `option_4`, `answer`, `remarks`) VALUES
(1, 'ডেঙ্গু আক্রান্তের নতুন রেকর্ড, আরও একজনের মৃত্যু?', '30', 'এ পর্যন্ত মোট ৫ হাজার ৩৭৬ জন রোগী হাসপাতাল থেকে ছাড়া পেয়েছেন।', ' সরকারি পরিসংখ্যান অনুসারে মশাবাহিত', 'ডেঙ্গু ভাইরাসের ব্যাপক প্রাদুর্ভাবের', '30', NULL),
(2, 'ভারতীয় দলে অপরিহার্য নয় কোহলি', 'ভারতের জার্সিতে বিরাট কোহলি কতটা গুরুত্বপূর্ণ', '40', 'কোহলি আর অপরিহার্য কেউ নন', 'এই ক্রিকেটারের কোনো বিকল্প আসেনি।', '40', NULL),
(3, 'বাংলাদেশের ভুল ধরিয়ে দিলেন মোহাম্মদ নবি?', 'শারজাহ ক্রিকেট স্টেডিয়ামে', 'পরিসংখ্যান দেখার পর টস জেতা দলের অধিনায়ক ব্যাটিংয়ের সিদ্ধান্ত নেবেন', '50', 'সে ব্যাখ্যাটাও দিয়েছেন তিনি', '50', NULL),
(4, 'what is 2  + 2 ?', '20', '30', '40', '4', '4', NULL),
(5, 'what is 20 + 60  ?', '80', '45', '90', '65', '80', NULL),
(6, '‘দুনিয়া‘ শব্দটি কোন ভাষা থেকে এসেছে ?', 'ফারসি', 'ফরাসি', 'আরবি', 'গুজরাটি', 'আরবি', NULL),
(7, '‘De Lingua Latina’ গ্রন্থের রচয়িতা –', 'থ্রাকস', 'প্লেটো', 'ভাররো', 'প্রিস্কিয়ান', 'ভাররো', NULL),
(8, 'ব্যাকরণ চর্চার আদিভূমি কোনটি ?', 'রোম', 'গ্রিস', 'ভারত', 'বাংলাদেশ', 'গ্রিস', NULL),
(9, 'পৃথিবীতে কত লোক বাংলা ভাষায় কথা বলে ?', '২৫ কোটি', '৩০ কোটি', '৩৫ কোটি', '৪০ কোটি', '২৫ কোটি', NULL),
(10, 'বাংলা ভাষার ব্যাকরণ প্রথম কখন প্রকাশিত হয় ?', '১৭৩৪ সালে', '১৭৪২ সালে', '১৭৪৩ সালে', '১৭৫০ সালে', '১৭৪৩ সালে', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regularityauthorities`
--

CREATE TABLE `regularityauthorities` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `code` varchar(55) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regularityauthorities`
--

INSERT INTO `regularityauthorities` (`id`, `parent_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(7, NULL, 'বাংলাদেশ এনার্জি রেগুলেটরি কমিশন', NULL, 1, NULL, '2022-07-18 09:44:49', '2022-07-18 09:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `institution_id`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', NULL, '2021-10-17 03:37:59', '2021-10-17 03:37:59'),
(11, 'Admin', 'admin', NULL, '2022-06-28 05:19:21', '2022-06-28 05:19:21'),
(12, 'Sub Admin(All Regulatory)', 'sub-admin(all-regulatory)', NULL, '2022-06-28 05:20:02', '2022-06-28 05:20:02'),
(13, 'Sub Admin(All Organization Head)', 'sub-admin(all-organization-head)', NULL, '2022-06-28 05:21:11', '2022-06-28 05:21:11'),
(14, 'Organization User', 'organization-user', NULL, '2022-06-28 05:22:02', '2022-06-28 05:22:02'),
(15, 'Branch User', 'branch-user', NULL, '2022-06-28 05:22:39', '2022-06-28 05:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 13),
(11, 14),
(11, 15),
(11, 16),
(11, 21),
(11, 22),
(11, 23),
(11, 24),
(11, 25),
(11, 26),
(11, 27),
(11, 28),
(11, 29),
(11, 30),
(11, 31),
(11, 32),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 9),
(12, 10),
(12, 11),
(12, 12),
(12, 13),
(12, 14),
(12, 15),
(12, 16),
(12, 21),
(12, 22),
(12, 23),
(12, 24),
(12, 25),
(12, 26),
(12, 27),
(12, 28),
(12, 29),
(12, 30),
(12, 31),
(12, 32),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(13, 15),
(13, 16),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(13, 25),
(13, 26),
(13, 27),
(13, 28),
(13, 29),
(13, 30),
(13, 31),
(13, 32),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 9),
(14, 10),
(14, 11),
(14, 12),
(14, 13),
(14, 14),
(14, 15),
(14, 16),
(14, 21),
(14, 22),
(14, 23),
(14, 24),
(14, 25),
(14, 26),
(14, 27),
(14, 28),
(14, 29),
(14, 30),
(14, 31),
(14, 32),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 9),
(15, 10),
(15, 11),
(15, 12),
(15, 13),
(15, 14),
(15, 15),
(15, 16),
(15, 21),
(15, 22),
(15, 23),
(15, 24),
(15, 25),
(15, 26),
(15, 27),
(15, 28),
(15, 29),
(15, 30),
(15, 31),
(15, 32);

-- --------------------------------------------------------

--
-- Table structure for table `saved_format`
--

CREATE TABLE `saved_format` (
  `saved_id` int(11) NOT NULL,
  `saved_form_id` int(11) DEFAULT NULL,
  `saved_table_name` varchar(50) DEFAULT NULL,
  `saved_form_creator` int(11) DEFAULT NULL,
  `saved_form_type` varchar(50) DEFAULT NULL,
  `saved_format` int(11) DEFAULT NULL,
  `saved_column` varchar(50) DEFAULT NULL,
  `status` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saved_format`
--

INSERT INTO `saved_format` (`saved_id`, `saved_form_id`, `saved_table_name`, `saved_form_creator`, `saved_form_type`, `saved_format`, `saved_column`, `status`, `created_at`) VALUES
(28, NULL, 'table_5063945', 248, 'calculation', 4, 'section', 0, '2022-08-08 11:51:18'),
(29, NULL, 'table_2309509', 248, 'calculation', 3, 'section', 0, '2022-08-08 13:33:23'),
(30, NULL, 'table_39698', 248, 'calculation', 3, 'section', 0, '2022-08-08 13:37:58'),
(34, NULL, 'table_2737235', 248, 'data_form', 3, 'section', 0, '2022-08-11 11:42:08'),
(36, NULL, 'table_609763', 248, 'plain_form', 2, 'section', 0, '2022-08-11 11:48:06'),
(37, NULL, 'table_5486442', 126, 'data_form', 3, 'fixed', 0, '2022-08-14 03:32:17'),
(39, NULL, 'table_1944796', 248, 'data_form', 4, 'section', 0, '2022-08-14 05:04:23'),
(40, NULL, 'table_3147639', 248, 'data_form', 2, 'name', 0, '2022-08-14 05:08:08'),
(41, NULL, 'table_1800209', 248, 'plain_form', 3, 'name', 0, '2022-08-14 05:52:52'),
(42, NULL, 'table_8838559', 248, 'data_form', 4, 'fixed_name', 0, '2022-08-14 06:13:30'),
(43, NULL, 'table_6230147', 248, 'data_form', 3, 'fixed_column', 0, '2022-08-14 06:43:37'),
(44, NULL, 'table_9277306', 248, 'plain_form', 1, 'fq_jfq', 0, '2022-08-14 09:55:26'),
(45, NULL, 'table_5549740', 250, 'data_form', 2, 'ffqqf', 0, '2022-08-15 16:41:33'),
(46, 271, 'table_6380043', 250, 'plain_form', 1, 'fqfqfq', 0, '2022-08-15 17:12:38'),
(47, 272, 'table_6202256', 250, 'data_form', 2, 'fkqfqfqnjnf', 0, '2022-08-15 17:27:46'),
(48, 273, 'table_675032', 248, 'data_form', 1, 'fqqffqsss', 0, '2022-08-16 04:05:48'),
(49, 274, 'table_5474813', 126, 'plain_form', 4, 'name', 0, '2022-08-16 11:35:05'),
(50, 277, 'table_6402644', 248, 'data_form', 3, 'feewss', 0, '2022-08-17 09:26:49'),
(51, 278, 'table_6622457', 250, 'plain_form', 2, 'fe4q4ef', 0, '2022-08-17 10:01:22'),
(52, 279, 'table_4840576', 126, 'data_form', 2, 'name', 0, '2022-08-17 15:04:48'),
(53, 280, 'table_256097', 248, 'data_form', 3, 'name', 0, '2022-08-18 04:32:55'),
(54, 281, 'table_8284766', 248, 'plain_form', 3, 'name', 0, '2022-08-20 16:44:06'),
(55, 282, 'table_1843842', 248, 'data_form', 3, 'name', 0, '2022-08-20 17:17:02'),
(56, 283, 'table_8163208', 248, 'plain_form', 2, 'feqfefq', 0, '2022-08-20 18:09:01'),
(57, 284, 'table_9321783', 248, 'data_form', 4, 'name', 0, '2022-08-21 02:56:45'),
(58, 285, 'table_8142441', 248, 'data_form', 3, 'qf7fq4f', 0, '2022-08-21 03:19:12'),
(59, 287, 'table_6432749', 248, 'data_form', 3, 'name', 0, '2022-08-24 03:59:05'),
(60, 288, 'table_8069085', 248, 'data_form', 2, 'name', 0, '2022-08-24 08:13:46'),
(61, 289, 'table_728329', 126, 'data_form', 3, 'name', 0, '2022-08-25 02:43:28'),
(62, 290, 'table_3599948', 126, 'data_form', 4, 'name', 0, '2022-08-25 02:49:50'),
(63, 291, 'table_7826036', 248, 'data_form', 6, 'name', 0, '2022-08-25 03:05:11'),
(64, 292, 'table_7461715', 250, 'data_form', 2, 'name', 0, '2022-08-25 05:28:25'),
(65, 293, 'table_8400121', 250, 'data_form', 4, 'ffas', 0, '2022-08-25 05:59:05'),
(66, 294, 'table_6836824', 250, 'data_form', 3, 'name', 0, '2022-08-25 09:13:48'),
(67, 295, 'table_8546976', 250, 'data_form', 1, 'baabfab', 0, '2022-08-25 09:28:45'),
(68, 296, 'table_3071502', 250, 'data_form', 3, 'name', 0, '2022-08-25 10:39:46'),
(69, 297, 'table_9072943', 250, 'plain_form', 3, 'name', 0, '2022-08-25 10:44:58'),
(70, 298, 'table_9057792', 248, 'data_form', 3, 'name', 0, '2022-08-28 03:43:29'),
(71, 300, 'table_7548106', 248, 'plain_form', 3, 'name', 0, '2022-08-29 02:58:44'),
(72, 302, 'table_8209212', 248, 'plain_form', 3, 'name', 0, '2022-08-29 03:27:04'),
(73, 303, 'table_3417610', 248, 'data_form', 2, 'qfeeffefeq', 0, '2022-08-29 03:28:23'),
(74, 304, 'table_2149289', 248, 'data_form', 2, 'name', 0, '2022-08-29 04:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `table_39698`
--

CREATE TABLE `table_39698` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_39698`
--

INSERT INTO `table_39698` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `roll`, `section`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_39698', '', '', '', '2022-08-07 18:00:00'),
(2, 248, 0, 0, 0, 'table_39698', '', '', '', '2022-08-07 18:00:00'),
(3, 248, 0, 0, 0, 'table_39698', '', '', '', '2022-08-07 18:00:00'),
(4, 248, 249, 248, 0, 'table_39698', 'fa54f5a4f5', '54ffa45', '4545f44af5', '2022-08-07 18:00:00'),
(5, 248, 249, 248, 0, 'table_39698', NULL, '45fa54fa45', '54f4f5a', '2022-08-07 18:00:00'),
(6, 248, 249, 248, 0, 'table_39698', NULL, 'f54fa5445', '54f54fa54fa', '2022-08-07 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_256097`
--

CREATE TABLE `table_256097` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `profile` text DEFAULT NULL,
  `created` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_256097`
--

INSERT INTO `table_256097` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `section`, `roll`, `profile`, `created`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_256097', 'first', NULL, NULL, NULL, NULL, 0, '2022-08-17 18:00:00'),
(2, 248, 0, 0, 0, 'table_256097', 'second', NULL, NULL, NULL, NULL, 0, '2022-08-17 18:00:00'),
(3, 248, 0, 0, 0, 'table_256097', 'third', NULL, NULL, NULL, NULL, 0, '2022-08-17 18:00:00'),
(4, 248, 249, 248, 0, 'table_256097', 'first', '2500', NULL, NULL, NULL, 2500, '2022-08-17 18:00:00'),
(5, 248, 249, 248, 0, 'table_256097', 'second', '4000', NULL, NULL, NULL, 4000, '2022-08-17 18:00:00'),
(6, 248, 249, 248, 0, 'table_256097', 'third', '5000', NULL, NULL, NULL, 5000, '2022-08-17 18:00:00'),
(7, 248, 251, 250, 0, 'table_256097', 'first', NULL, NULL, NULL, NULL, 0, '2022-08-18 06:10:29'),
(8, 248, 251, 250, 0, 'table_256097', 'second', NULL, NULL, NULL, NULL, 0, '2022-08-18 06:10:29'),
(9, 248, 251, 250, 0, 'table_256097', 'third', NULL, NULL, NULL, NULL, 0, '2022-08-18 06:10:29'),
(10, 248, 255, 253, 0, 'table_256097', 'first', NULL, NULL, NULL, NULL, 0, '2022-08-18 06:16:28'),
(11, 248, 255, 253, 0, 'table_256097', 'second', NULL, NULL, NULL, NULL, 0, '2022-08-18 06:16:28'),
(12, 248, 255, 253, 0, 'table_256097', 'third', NULL, NULL, NULL, NULL, 0, '2022-08-18 06:16:28'),
(13, 248, 0, 254, 0, 'table_256097', 'first', NULL, NULL, NULL, NULL, 0, '2022-08-17 18:00:00'),
(14, 248, 0, 254, 0, 'table_256097', 'second', NULL, NULL, NULL, NULL, 0, '2022-08-17 18:00:00'),
(15, 248, 0, 254, 0, 'table_256097', 'third', NULL, NULL, NULL, NULL, 0, '2022-08-17 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_609763`
--

CREATE TABLE `table_609763` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `efqfefe` text DEFAULT NULL,
  `fqfqf` text DEFAULT NULL,
  `fqfqqf` text DEFAULT NULL,
  `fqqffq` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_609763`
--

INSERT INTO `table_609763` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `efqfefe`, `fqfqf`, `fqfqqf`, `fqqffq`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_609763', 'f4a45f', NULL, NULL, NULL, '2022-08-10 18:00:00'),
(2, 248, 0, 0, 0, 'table_609763', 'fefe4f4ee54', NULL, NULL, NULL, '2022-08-10 18:00:00'),
(3, 248, 249, 248, 0, 'table_609763', 'f4a45f', NULL, NULL, NULL, '2022-08-10 18:00:00'),
(4, 248, 249, 248, 0, 'table_609763', 'fefe4f4ee54', NULL, NULL, NULL, '2022-08-10 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_675032`
--

CREATE TABLE `table_675032` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fqqffqsss` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_675032`
--

INSERT INTO `table_675032` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fqqffqsss`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(2, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(3, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(4, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(5, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(6, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(7, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(8, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(9, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(10, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(11, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(12, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(13, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(14, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(15, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(16, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(17, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(18, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(19, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(20, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(21, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(22, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(23, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(24, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(25, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(26, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(27, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(28, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(29, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(30, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(31, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(32, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(33, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(34, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(35, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(36, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(37, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(38, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(39, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(40, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(41, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(42, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(43, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(44, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(45, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(46, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(47, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(48, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(49, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(50, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(51, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(52, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(53, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(54, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(55, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(56, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(57, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(58, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(59, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(60, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(61, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(62, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(63, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(64, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(65, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(66, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(67, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(68, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(69, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(70, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(71, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(72, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(73, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(74, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(75, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(76, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(77, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(78, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(79, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(80, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(81, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(82, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(83, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(84, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(85, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(86, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(87, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(88, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(89, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(90, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(91, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(92, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(93, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(94, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(95, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(96, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(97, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(98, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(99, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(100, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(101, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(102, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(103, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(104, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(105, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(106, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(107, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(108, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(109, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(110, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(111, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(112, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(113, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(114, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(115, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(116, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(117, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(118, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(119, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(120, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(121, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(122, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(123, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(124, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(125, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(126, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(127, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(128, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(129, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(130, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(131, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(132, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(133, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(134, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(135, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(136, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(137, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(138, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(139, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(140, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(141, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(142, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(143, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(144, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(145, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(146, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(147, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(148, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(149, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(150, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(151, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(152, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(153, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(154, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(155, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(156, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(157, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(158, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(159, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(160, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(161, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(162, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(163, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(164, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(165, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(166, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(167, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(168, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(169, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(170, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(171, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(172, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(173, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(174, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(175, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(176, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(177, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(178, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(179, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(180, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(181, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(182, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(183, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(184, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(185, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(186, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(187, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(188, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(189, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(190, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(191, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(192, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(193, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(194, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(195, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(196, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(197, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(198, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(199, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(200, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(201, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(202, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(203, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(204, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(205, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(206, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(207, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(208, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(209, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(210, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(211, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(212, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(213, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(214, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(215, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(216, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(217, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(218, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(219, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(220, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(221, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(222, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(223, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(224, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(225, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(226, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(227, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(228, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(229, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(230, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(231, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(232, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(233, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(234, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(235, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(236, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(237, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(238, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(239, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(240, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(241, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(242, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(243, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(244, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(245, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(246, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(247, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(248, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(249, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(250, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(251, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(252, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(253, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(254, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(255, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(256, 248, 249, 248, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(257, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(258, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(259, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(260, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(261, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(262, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(263, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(264, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(265, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(266, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(267, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(268, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(269, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(270, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(271, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(272, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(273, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(274, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(275, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(276, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(277, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(278, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(279, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(280, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(281, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(282, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(283, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(284, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(285, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(286, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(287, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(288, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(289, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(290, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(291, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(292, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(293, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(294, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(295, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(296, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(297, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(298, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(299, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(300, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(301, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(302, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(303, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(304, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(305, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(306, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(307, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(308, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(309, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(310, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(311, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(312, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(313, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(314, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(315, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(316, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(317, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(318, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(319, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(320, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(321, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(322, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(323, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(324, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(325, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(326, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(327, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(328, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(329, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(330, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(331, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(332, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(333, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(334, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(335, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(336, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(337, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(338, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(339, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(340, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(341, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(342, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(343, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(344, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(345, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(346, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(347, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(348, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(349, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(350, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(351, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(352, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(353, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(354, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(355, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(356, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(357, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(358, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(359, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(360, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(361, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(362, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(363, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(364, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(365, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(366, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(367, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(368, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(369, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(370, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(371, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(372, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(373, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(374, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(375, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(376, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(377, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(378, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(379, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(380, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(381, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(382, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(383, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(384, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(385, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(386, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(387, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(388, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(389, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(390, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(391, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(392, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(393, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(394, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(395, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(396, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(397, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(398, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(399, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(400, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(401, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(402, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(403, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(404, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(405, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(406, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(407, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(408, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(409, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(410, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(411, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(412, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(413, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(414, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(415, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(416, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(417, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(418, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(419, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(420, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(421, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(422, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(423, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(424, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(425, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(426, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(427, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(428, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(429, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(430, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(431, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(432, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(433, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(434, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(435, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(436, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(437, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(438, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(439, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(440, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(441, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(442, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(443, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(444, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(445, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(446, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(447, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(448, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(449, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(450, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(451, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(452, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(453, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(454, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(455, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(456, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(457, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(458, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(459, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(460, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(461, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(462, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(463, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(464, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(465, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(466, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(467, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(468, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(469, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(470, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(471, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(472, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(473, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(474, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(475, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(476, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(477, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(478, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(479, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(480, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(481, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(482, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(483, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(484, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(485, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(486, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(487, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(488, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(489, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(490, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(491, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(492, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(493, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(494, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(495, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(496, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(497, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(498, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(499, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(500, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(501, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(502, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(503, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(504, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(505, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(506, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(507, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(508, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(509, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(510, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(511, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(512, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(513, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(514, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(515, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(516, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(517, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(518, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(519, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(520, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(521, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(522, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(523, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(524, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(525, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(526, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(527, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(528, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(529, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(530, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(531, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(532, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(533, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(534, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(535, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(536, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(537, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(538, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(539, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(540, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(541, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(542, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(543, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(544, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(545, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(546, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(547, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(548, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(549, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(550, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(551, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(552, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(553, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(554, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(555, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(556, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(557, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(558, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(559, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(560, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(561, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(562, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(563, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(564, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(565, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(566, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(567, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(568, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(569, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(570, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(571, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(572, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(573, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(574, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(575, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(576, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(577, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(578, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(579, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(580, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(581, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(582, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(583, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(584, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(585, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(586, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(587, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(588, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(589, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(590, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(591, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(592, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(593, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(594, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(595, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(596, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(597, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(598, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(599, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(600, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(601, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(602, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(603, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(604, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(605, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(606, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(607, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(608, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(609, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(610, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(611, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(612, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(613, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(614, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(615, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(616, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(617, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(618, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(619, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(620, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(621, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(622, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(623, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(624, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(625, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(626, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(627, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(628, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(629, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(630, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(631, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(632, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(633, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(634, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(635, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(636, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(637, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(638, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(639, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(640, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(641, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(642, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(643, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(644, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(645, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(646, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(647, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(648, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(649, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(650, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(651, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(652, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(653, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(654, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(655, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(656, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(657, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(658, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(659, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(660, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(661, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(662, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(663, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(664, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(665, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(666, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(667, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(668, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(669, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(670, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(671, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(672, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(673, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(674, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(675, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(676, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(677, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(678, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(679, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(680, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(681, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(682, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(683, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(684, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(685, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(686, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(687, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(688, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(689, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(690, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(691, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(692, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(693, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(694, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(695, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(696, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(697, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(698, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(699, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(700, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(701, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(702, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(703, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(704, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(705, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(706, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(707, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(708, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(709, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(710, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(711, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(712, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(713, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(714, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(715, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(716, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(717, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(718, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(719, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(720, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00');
INSERT INTO `table_675032` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fqqffqsss`, `total`, `created_at`) VALUES
(721, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(722, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(723, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(724, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(725, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(726, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(727, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(728, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(729, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(730, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(731, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(732, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(733, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(734, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(735, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(736, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(737, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(738, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(739, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(740, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(741, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(742, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(743, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(744, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(745, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(746, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(747, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(748, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(749, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(750, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(751, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(752, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(753, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(754, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(755, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(756, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(757, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(758, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(759, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(760, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(761, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(762, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(763, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(764, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(765, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(766, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(767, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(768, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(769, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(770, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(771, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(772, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(773, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(774, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(775, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(776, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(777, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(778, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(779, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(780, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(781, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(782, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(783, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(784, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(785, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(786, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(787, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(788, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(789, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(790, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(791, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(792, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(793, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(794, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(795, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(796, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(797, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(798, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(799, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(800, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(801, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(802, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(803, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(804, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(805, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(806, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(807, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(808, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(809, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(810, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(811, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(812, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(813, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(814, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(815, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(816, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(817, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(818, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(819, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(820, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(821, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(822, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(823, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(824, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(825, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(826, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(827, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(828, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(829, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(830, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(831, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(832, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(833, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(834, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(835, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(836, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(837, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(838, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(839, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(840, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(841, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(842, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(843, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(844, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(845, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(846, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(847, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(848, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(849, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(850, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(851, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(852, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(853, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(854, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(855, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(856, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(857, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(858, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(859, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(860, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(861, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(862, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(863, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(864, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(865, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(866, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(867, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(868, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(869, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(870, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(871, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(872, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(873, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(874, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(875, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(876, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(877, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(878, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(879, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(880, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(881, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(882, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(883, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(884, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(885, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(886, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(887, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(888, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(889, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(890, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(891, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(892, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(893, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(894, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(895, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(896, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(897, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(898, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(899, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(900, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(901, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(902, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(903, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(904, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(905, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(906, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(907, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(908, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(909, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(910, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(911, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(912, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(913, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(914, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(915, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(916, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(917, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(918, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(919, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(920, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(921, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(922, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(923, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(924, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(925, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(926, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(927, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(928, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(929, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(930, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(931, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(932, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(933, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(934, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(935, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(936, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(937, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(938, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(939, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(940, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(941, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(942, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(943, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(944, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(945, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(946, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(947, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(948, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(949, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(950, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(951, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(952, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(953, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(954, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(955, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(956, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(957, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(958, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(959, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(960, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(961, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(962, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(963, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(964, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(965, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(966, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(967, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(968, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(969, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(970, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(971, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(972, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(973, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(974, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(975, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(976, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(977, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(978, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(979, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(980, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(981, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(982, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(983, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(984, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(985, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(986, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(987, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(988, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(989, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(990, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(991, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(992, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(993, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(994, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(995, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(996, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(997, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(998, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(999, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1000, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1001, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1002, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1003, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1004, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1005, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1006, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1007, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1008, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1009, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1010, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1011, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1012, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1013, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1014, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1015, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1016, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1017, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1018, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1019, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1020, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1021, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1022, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1023, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00'),
(1024, 248, 0, 250, 0, 'table_675032', NULL, 0, '2022-08-15 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_728329`
--

CREATE TABLE `table_728329` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_728329`
--

INSERT INTO `table_728329` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `roll`, `section`, `total`, `created_at`) VALUES
(1, 126, 0, 0, 0, 'table_728329', '', '', '', 0, '2022-08-24 18:00:00'),
(2, 126, 0, 0, 0, 'table_728329', '', '', '', 0, '2022-08-24 18:00:00'),
(3, 126, 0, 0, 0, 'table_728329', '', '', '', 0, '2022-08-24 18:00:00'),
(4, 126, 0, 253, 0, 'table_728329', '', '', '', 0, '2022-08-24 18:00:00'),
(5, 126, 0, 253, 0, 'table_728329', '', '', '', 0, '2022-08-24 18:00:00'),
(6, 126, 0, 253, 0, 'table_728329', '', '', '', 0, '2022-08-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_1800209`
--

CREATE TABLE `table_1800209` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_1800209`
--

INSERT INTO `table_1800209` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_1800209', 'third', NULL, NULL, '2022-08-13 18:00:00'),
(2, 248, 0, 0, 0, 'table_1800209', 'fourth', NULL, NULL, '2022-08-13 18:00:00'),
(3, 248, 0, 0, 0, 'table_1800209', 'fifth', NULL, NULL, '2022-08-13 18:00:00'),
(4, 248, 249, 248, 0, 'table_1800209', 'third', 'fajfn', 'fafnf', '2022-08-13 18:00:00'),
(5, 248, 249, 248, 0, 'table_1800209', 'fourth', 'ef4fe5fe', '4f55af4', '2022-08-13 18:00:00'),
(6, 248, 249, 248, 0, 'table_1800209', 'fifth', '5f4afa45', 'fafa45fa', '2022-08-13 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_1843842`
--

CREATE TABLE `table_1843842` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_1843842`
--

INSERT INTO `table_1843842` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `roll`, `section`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_1843842', 'fourth', NULL, NULL, 0, '2022-08-19 18:00:00'),
(2, 248, 0, 0, 0, 'table_1843842', 'fifth', NULL, NULL, 0, '2022-08-19 18:00:00'),
(3, 248, 0, 0, 0, 'table_1843842', 'sixth', NULL, NULL, 0, '2022-08-19 18:00:00'),
(4, 248, 249, 248, 0, 'table_1843842', 'fourth', '2000', '5000', 7000, '2022-08-19 18:00:00'),
(5, 248, 249, 248, 0, 'table_1843842', 'fifth', '3000', '6000', 9000, '2022-08-19 18:00:00'),
(6, 248, 249, 248, 0, 'table_1843842', 'sixth', '40000', '70000', 110000, '2022-08-19 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_1944796`
--

CREATE TABLE `table_1944796` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_1944796`
--

INSERT INTO `table_1944796` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(2, 248, 0, 0, 0, 'table_1944796', 'first', NULL, NULL, 0, '2022-08-13 18:00:00'),
(3, 248, 0, 0, 0, 'table_1944796', 'second', NULL, NULL, 0, '2022-08-13 18:00:00'),
(4, 248, 0, 0, 0, 'table_1944796', 'third', NULL, NULL, 0, '2022-08-13 18:00:00'),
(5, 248, 0, 0, 0, 'table_1944796', 'fourth', NULL, NULL, 0, '2022-08-13 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_2149289`
--

CREATE TABLE `table_2149289` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2149289`
--

INSERT INTO `table_2149289` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_2149289', '', '', '', 0, '2022-08-28 18:00:00'),
(2, 248, 0, 250, 0, 'table_2149289', '', '', '', 0, '2022-08-28 18:00:00'),
(3, 248, 249, 248, 0, 'table_2149289', '', '', '', 0, '2022-08-28 18:00:00'),
(4, 248, 249, 248, 0, 'table_2149289', '', '', '', 0, '2022-08-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_2309509`
--

CREATE TABLE `table_2309509` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2309509`
--

INSERT INTO `table_2309509` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_2309509', NULL, NULL, NULL, 0, '2022-08-07 18:00:00'),
(2, 248, 0, 0, 0, 'table_2309509', NULL, NULL, NULL, 0, '2022-08-07 18:00:00'),
(3, 248, 0, 0, 0, 'table_2309509', NULL, NULL, NULL, 0, '2022-08-07 18:00:00'),
(4, 248, 249, 248, 0, 'table_2309509', '500', '600', '700', 1800, '2022-08-07 18:00:00'),
(5, 248, 249, 248, 0, 'table_2309509', '900', '5000', '45555', 51455, '2022-08-07 18:00:00'),
(6, 248, 249, 248, 0, 'table_2309509', '54545', '555', '6666', 61766, '2022-08-07 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_2430057`
--

CREATE TABLE `table_2430057` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `kfmaafk` text DEFAULT NULL,
  `fqfqfqqf` text DEFAULT NULL,
  `fqfqfq` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2430057`
--

INSERT INTO `table_2430057` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `kfmaafk`, `fqfqfqqf`, `fqfqfq`, `total`, `created_at`) VALUES
(3, 248, 0, 0, 0, 'table_2430057', 'first', NULL, NULL, 0, '2022-08-13 18:00:00'),
(4, 248, 0, 0, 0, 'table_2430057', 'second', NULL, NULL, 0, '2022-08-13 18:00:00'),
(5, 248, 0, 0, 0, 'table_2430057', 'third', NULL, NULL, 0, '2022-08-13 18:00:00'),
(6, 248, 0, 0, 0, 'table_2430057', 'fourth', NULL, NULL, 0, '2022-08-13 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_2723344`
--

CREATE TABLE `table_2723344` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fixed_by_creator` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_2737235`
--

CREATE TABLE `table_2737235` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fmnjfnd` text DEFAULT NULL,
  `eeefewwd` text DEFAULT NULL,
  `wersf` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2737235`
--

INSERT INTO `table_2737235` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fmnjfnd`, `eeefewwd`, `wersf`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_2737235', NULL, 'a1f21f', NULL, 0, '2022-08-10 18:00:00'),
(2, 248, 0, 0, 0, 'table_2737235', NULL, 'e4ded', NULL, 0, '2022-08-10 18:00:00'),
(3, 248, 0, 0, 0, 'table_2737235', NULL, '4wd4dd', NULL, 0, '2022-08-10 18:00:00'),
(4, 248, 249, 248, 0, 'table_2737235', '2500', 'a1f21f', '6500', 9000, '2022-08-10 18:00:00'),
(5, 248, 249, 248, 0, 'table_2737235', '455', 'e4ded', '4500', 4955, '2022-08-10 18:00:00'),
(6, 248, 249, 248, 0, 'table_2737235', '500', '4wd4dd', '95800', 96300, '2022-08-10 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_2859903`
--

CREATE TABLE `table_2859903` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `team` text DEFAULT NULL,
  `leader` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2859903`
--

INSERT INTO `table_2859903` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `team`, `leader`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_2859903', '', '', '', '', '', 0, '2022-08-16 18:00:00'),
(2, 248, 0, 0, 0, 'table_2859903', '', '', '', '', '', 0, '2022-08-16 18:00:00'),
(3, 248, 0, 0, 0, 'table_2859903', '', '', '', '', '', 0, '2022-08-16 18:00:00'),
(4, 248, 0, 0, 0, 'table_2859903', '', '', '', '', '', 0, '2022-08-16 18:00:00'),
(5, 248, 0, 0, 0, 'table_2859903', '', '', '', '', '', 0, '2022-08-16 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3071502`
--

CREATE TABLE `table_3071502` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_3071502`
--

INSERT INTO `table_3071502` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_3071502', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(2, 250, 0, 0, 0, 'table_3071502', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(3, 250, 0, 0, 0, 'table_3071502', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(4, 250, 258, 257, 0, 'table_3071502', 'first', '5555', '21224', 26779, '2022-08-25 10:41:44'),
(5, 250, 258, 257, 0, 'table_3071502', 'second', '444', '555', 999, '2022-08-25 10:41:44'),
(6, 250, 258, 257, 0, 'table_3071502', 'third', '1211', '4555', 5766, '2022-08-25 10:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `table_3147639`
--

CREATE TABLE `table_3147639` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_3147639`
--

INSERT INTO `table_3147639` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_3147639', 'first', NULL, NULL, 0, '2022-08-13 18:00:00'),
(2, 248, 0, 0, 0, 'table_3147639', 'second', NULL, NULL, 0, '2022-08-13 18:00:00'),
(3, 248, 249, 248, 0, 'table_3147639', 'first', '50', '20', 70, '2022-08-13 18:00:00'),
(4, 248, 249, 248, 0, 'table_3147639', 'second', '70', '30', 100, '2022-08-13 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3319707`
--

CREATE TABLE `table_3319707` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fqfq` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_3395314`
--

CREATE TABLE `table_3395314` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `nfjnfa` text DEFAULT NULL,
  `fqffq` text DEFAULT NULL,
  `wefeef` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_3395314`
--

INSERT INTO `table_3395314` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `nfjnfa`, `fqffq`, `wefeef`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_3395314', NULL, NULL, NULL, 0, '2022-08-07 18:00:00'),
(2, 248, 0, 0, 0, 'table_3395314', NULL, NULL, NULL, 0, '2022-08-07 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3417610`
--

CREATE TABLE `table_3417610` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `qfeeffefeq` text DEFAULT NULL,
  `qffqfq` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_3417610`
--

INSERT INTO `table_3417610` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `qfeeffefeq`, `qffqfq`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_3417610', '', '', 0, '2022-08-28 18:00:00'),
(2, 248, 0, 0, 0, 'table_3417610', '', '', 0, '2022-08-28 18:00:00'),
(3, 248, 0, 253, 0, 'table_3417610', '', '', 0, '2022-08-28 18:00:00'),
(4, 248, 0, 253, 0, 'table_3417610', '', '', 0, '2022-08-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3599948`
--

CREATE TABLE `table_3599948` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_3599948`
--

INSERT INTO `table_3599948` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 126, 0, 0, 0, 'table_3599948', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(2, 126, 0, 0, 0, 'table_3599948', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(3, 126, 0, 0, 0, 'table_3599948', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(4, 126, 0, 0, 0, 'table_3599948', 'fourth', NULL, NULL, 0, '2022-08-24 18:00:00'),
(5, 126, 0, 248, 0, 'table_3599948', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(6, 126, 0, 248, 0, 'table_3599948', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(7, 126, 0, 248, 0, 'table_3599948', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(8, 126, 0, 248, 0, 'table_3599948', 'fourth', NULL, NULL, 0, '2022-08-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_4840576`
--

CREATE TABLE `table_4840576` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_4840576`
--

INSERT INTO `table_4840576` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 126, 0, 0, 0, 'table_4840576', 'armaan', NULL, NULL, 0, '2022-08-16 18:00:00'),
(2, 126, 0, 0, 0, 'table_4840576', 'mahmud', NULL, NULL, 0, '2022-08-16 18:00:00'),
(3, 126, 249, 248, 0, 'table_4840576', 'armaan', '25', '50', 75, '2022-08-17 15:05:28'),
(4, 126, 249, 248, 0, 'table_4840576', 'mahmud', '60', '70', 130, '2022-08-17 15:05:28'),
(5, 126, 251, 250, 0, 'table_4840576', 'armaan', '60', '70', 130, '2022-08-17 15:07:16'),
(6, 126, 251, 250, 0, 'table_4840576', 'mahmud', '80', '90', 170, '2022-08-17 15:07:16'),
(7, 126, 251, 250, 0, 'table_4840576', 'armaan', '25', '50', 75, '2022-08-17 15:07:16'),
(8, 126, 251, 250, 0, 'table_4840576', 'mahmud', '60', '70', 130, '2022-08-17 15:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `table_5063945`
--

CREATE TABLE `table_5063945` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `আমানত` text DEFAULT NULL,
  `ঋণ` text DEFAULT NULL,
  `অনুমোদন` text DEFAULT NULL,
  `কাজ` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_5063945`
--

INSERT INTO `table_5063945` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `আমানত`, `ঋণ`, `অনুমোদন`, `কাজ`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_5063945', NULL, NULL, NULL, NULL, 0, '2022-08-07 18:00:00'),
(2, 248, 0, 0, 0, 'table_5063945', NULL, NULL, NULL, NULL, 0, '2022-08-07 18:00:00'),
(3, 248, 0, 0, 0, 'table_5063945', NULL, NULL, NULL, NULL, 0, '2022-08-07 18:00:00'),
(4, 248, 0, 0, 0, 'table_5063945', NULL, NULL, NULL, NULL, 0, '2022-08-07 18:00:00'),
(5, 248, 249, 248, 0, 'table_5063945', '', '', '', '', 0, '2022-08-07 18:00:00'),
(6, 248, 249, 248, 0, 'table_5063945', '', '', '', '', 0, '2022-08-07 18:00:00'),
(7, 248, 249, 248, 0, 'table_5063945', '', '', '', '', 0, '2022-08-07 18:00:00'),
(8, 248, 249, 248, 0, 'table_5063945', '', '', '', '', 0, '2022-08-07 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_5474813`
--

CREATE TABLE `table_5474813` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `meeting` text DEFAULT NULL,
  `holiday` text DEFAULT NULL,
  `action` text DEFAULT NULL,
  `drive` text DEFAULT NULL,
  `division` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_5474813`
--

INSERT INTO `table_5474813` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `meeting`, `holiday`, `action`, `drive`, `division`, `created_at`) VALUES
(1, 126, 0, 0, 0, 'table_5474813', 'first', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(2, 126, 0, 0, 0, 'table_5474813', 'second', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(3, 126, 0, 0, 0, 'table_5474813', 'third', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(4, 126, 0, 0, 0, 'table_5474813', 'fourth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(5, 126, 0, 248, 0, 'table_5474813', 'first', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(6, 126, 0, 248, 0, 'table_5474813', 'second', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(7, 126, 0, 248, 0, 'table_5474813', 'third', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(8, 126, 0, 248, 0, 'table_5474813', 'fourth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(9, 126, 0, 250, 0, 'table_5474813', 'first', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(10, 126, 0, 250, 0, 'table_5474813', 'second', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(11, 126, 0, 250, 0, 'table_5474813', 'third', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(12, 126, 0, 250, 0, 'table_5474813', 'fourth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(13, 126, 0, 250, 0, 'table_5474813', 'first', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(14, 126, 0, 250, 0, 'table_5474813', 'second', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(15, 126, 0, 250, 0, 'table_5474813', 'third', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(16, 126, 0, 250, 0, 'table_5474813', 'fourth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(17, 126, 0, 253, 0, 'table_5474813', 'first', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(18, 126, 0, 253, 0, 'table_5474813', 'second', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(19, 126, 0, 253, 0, 'table_5474813', 'third', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(20, 126, 0, 253, 0, 'table_5474813', 'fourth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(21, 126, 0, 253, 0, 'table_5474813', 'first', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(22, 126, 0, 253, 0, 'table_5474813', 'second', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(23, 126, 0, 253, 0, 'table_5474813', 'third', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(24, 126, 0, 253, 0, 'table_5474813', 'fourth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(25, 126, 0, 253, 0, 'table_5474813', 'first', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(26, 126, 0, 253, 0, 'table_5474813', 'second', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(27, 126, 0, 253, 0, 'table_5474813', 'third', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(28, 126, 0, 253, 0, 'table_5474813', 'fourth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(29, 126, 0, 253, 0, 'table_5474813', 'first', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(30, 126, 0, 253, 0, 'table_5474813', 'second', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(31, 126, 0, 253, 0, 'table_5474813', 'third', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00'),
(32, 126, 0, 253, 0, 'table_5474813', 'fourth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_5486442`
--

CREATE TABLE `table_5486442` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fixed` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_5486442`
--

INSERT INTO `table_5486442` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fixed`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(3, 126, 0, 0, 0, 'table_5486442', '2021(shal)', NULL, NULL, NULL, 0, '2022-08-13 18:00:00'),
(4, 126, 0, 0, 0, 'table_5486442', '2022(shal)', NULL, NULL, NULL, 0, '2022-08-13 18:00:00'),
(5, 126, 0, 0, 0, 'table_5486442', '2023(shal)', NULL, NULL, NULL, 0, '2022-08-13 18:00:00'),
(6, 126, 0, 248, 0, 'table_5486442', '', '', '', '', 0, '2022-08-13 18:00:00'),
(7, 126, 0, 248, 0, 'table_5486442', '', '', '', '', 0, '2022-08-13 18:00:00'),
(8, 126, 0, 248, 0, 'table_5486442', '', '', '', '', 0, '2022-08-13 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_5549740`
--

CREATE TABLE `table_5549740` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `ffqqf` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_5549740`
--

INSERT INTO `table_5549740` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `ffqqf`, `total`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_5549740', NULL, 0, '2022-08-14 18:00:00'),
(2, 250, 0, 0, 0, 'table_5549740', NULL, 0, '2022-08-14 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6202256`
--

CREATE TABLE `table_6202256` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fkqfqfqnjnf` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_6202256`
--

INSERT INTO `table_6202256` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fkqfqfqnjnf`, `total`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_6202256', NULL, 0, '2022-08-14 18:00:00'),
(2, 250, 0, 0, 0, 'table_6202256', NULL, 0, '2022-08-14 18:00:00'),
(3, 250, 0, 253, 0, 'table_6202256', NULL, 0, '2022-08-14 18:00:00'),
(4, 250, 0, 253, 0, 'table_6202256', NULL, 0, '2022-08-14 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6230147`
--

CREATE TABLE `table_6230147` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fixed_column` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6230147`
--

INSERT INTO `table_6230147` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fixed_column`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_6230147', 'first', NULL, NULL, NULL, 0, '2022-08-13 18:00:00'),
(2, 248, 0, 0, 0, 'table_6230147', 'second', NULL, NULL, NULL, 0, '2022-08-13 18:00:00'),
(4, 248, 0, 0, 0, 'table_6230147', 'third', NULL, NULL, NULL, 0, '2022-08-13 18:00:00'),
(5, 248, 249, 248, 0, 'table_6230147', 'first', '5000', '6500', '4500', 16000, '2022-08-13 18:00:00'),
(6, 248, 249, 248, 0, 'table_6230147', 'second', '2500', '800', '6500', 9800, '2022-08-13 18:00:00'),
(7, 248, 249, 248, 0, 'table_6230147', 'third', '45000', '600', '500', 46100, '2022-08-13 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6380043`
--

CREATE TABLE `table_6380043` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fqfqfq` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_6380043`
--

INSERT INTO `table_6380043` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fqfqfq`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_6380043', '', '2022-08-14 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6402644`
--

CREATE TABLE `table_6402644` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `feewss` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6402644`
--

INSERT INTO `table_6402644` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `feewss`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_6402644', '', 0, '2022-08-16 18:00:00'),
(2, 248, 0, 0, 0, 'table_6402644', '', 0, '2022-08-16 18:00:00'),
(3, 248, 0, 0, 0, 'table_6402644', '', 0, '2022-08-16 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6432749`
--

CREATE TABLE `table_6432749` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6432749`
--

INSERT INTO `table_6432749` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_6432749', 'first', NULL, NULL, 0, '2022-08-23 18:00:00'),
(2, 248, 0, 0, 0, 'table_6432749', 'fifth', NULL, NULL, 0, '2022-08-23 18:00:00'),
(3, 248, 0, 0, 0, 'table_6432749', 'sixth', NULL, NULL, 0, '2022-08-23 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6622457`
--

CREATE TABLE `table_6622457` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fe4q4ef` text DEFAULT NULL,
  `efefefqfe` text DEFAULT NULL,
  `sfefeefqf` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6622457`
--

INSERT INTO `table_6622457` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fe4q4ef`, `efefefqfe`, `sfefeefqf`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_6622457', NULL, NULL, NULL, '2022-08-16 18:00:00'),
(2, 250, 0, 0, 0, 'table_6622457', NULL, NULL, NULL, '2022-08-16 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6836824`
--

CREATE TABLE `table_6836824` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6836824`
--

INSERT INTO `table_6836824` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_6836824', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(2, 250, 0, 0, 0, 'table_6836824', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(3, 250, 0, 0, 0, 'table_6836824', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(4, 250, 258, 257, 0, 'table_6836824', 'first', '25000', '45000', 70000, '2022-08-25 09:20:19'),
(5, 250, 258, 257, 0, 'table_6836824', 'second', '7000', '450659', 457659, '2022-08-25 09:20:19'),
(6, 250, 258, 257, 0, 'table_6836824', 'third', '2500', '65000', 67500, '2022-08-25 09:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `table_6887811`
--

CREATE TABLE `table_6887811` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_6961751`
--

CREATE TABLE `table_6961751` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `lone` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6961751`
--

INSERT INTO `table_6961751` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `lone`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_6961751', '', '', '', '', 0, '2022-08-16 18:00:00'),
(2, 248, 0, 0, 0, 'table_6961751', '', '', '', '', 0, '2022-08-16 18:00:00'),
(3, 248, 0, 0, 0, 'table_6961751', '', '', '', '', 0, '2022-08-16 18:00:00'),
(4, 248, 0, 0, 0, 'table_6961751', '', '', '', '', 0, '2022-08-16 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7461715`
--

CREATE TABLE `table_7461715` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7461715`
--

INSERT INTO `table_7461715` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_7461715', 'jack', NULL, NULL, 0, '2022-08-24 18:00:00'),
(2, 250, 0, 0, 0, 'table_7461715', 'queen', NULL, NULL, 0, '2022-08-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7509727`
--

CREATE TABLE `table_7509727` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7509727`
--

INSERT INTO `table_7509727` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `roll`, `section`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_7509727', '', '', '', '2022-08-23 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7548106`
--

CREATE TABLE `table_7548106` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7548106`
--

INSERT INTO `table_7548106` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `roll`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_7548106', NULL, NULL, '2022-08-28 18:00:00'),
(2, 248, 0, 0, 0, 'table_7548106', NULL, NULL, '2022-08-28 18:00:00'),
(3, 248, 0, 0, 0, 'table_7548106', NULL, NULL, '2022-08-28 18:00:00'),
(4, 248, 249, 248, 0, 'table_7548106', NULL, NULL, '2022-08-28 18:00:00'),
(5, 248, 249, 248, 0, 'table_7548106', NULL, NULL, '2022-08-28 18:00:00'),
(6, 248, 249, 248, 0, 'table_7548106', NULL, NULL, '2022-08-28 18:00:00'),
(7, 248, 0, 253, 0, 'table_7548106', NULL, NULL, '2022-08-28 18:00:00'),
(8, 248, 0, 253, 0, 'table_7548106', NULL, NULL, '2022-08-28 18:00:00'),
(9, 248, 0, 253, 0, 'table_7548106', NULL, NULL, '2022-08-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7826036`
--

CREATE TABLE `table_7826036` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `hole` text DEFAULT NULL,
  `sell` text DEFAULT NULL,
  `buy` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7826036`
--

INSERT INTO `table_7826036` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `hole`, `sell`, `buy`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_7826036', 'first', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-24 18:00:00'),
(2, 248, 0, 0, 0, 'table_7826036', 'second', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-24 18:00:00'),
(3, 248, 0, 0, 0, 'table_7826036', 'third', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-24 18:00:00'),
(4, 248, 0, 0, 0, 'table_7826036', 'pro', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-24 18:00:00'),
(5, 248, 0, 0, 0, 'table_7826036', 'section', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-24 18:00:00'),
(6, 248, 0, 0, 0, 'table_7826036', 'rubs', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7981003`
--

CREATE TABLE `table_7981003` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fqf` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_7981003`
--

INSERT INTO `table_7981003` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fqf`, `total`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_7981003', '', 0, '2022-08-14 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_8069085`
--

CREATE TABLE `table_8069085` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8069085`
--

INSERT INTO `table_8069085` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_8069085', 'pro', NULL, NULL, 0, '2022-08-23 18:00:00'),
(2, 248, 0, 0, 0, 'table_8069085', 'lite', NULL, NULL, 0, '2022-08-23 18:00:00'),
(11, 248, 256, 254, 0, 'table_8069085', 'pro', '500', '4000', 4500, '2022-08-24 10:28:40'),
(12, 248, 256, 254, 0, 'table_8069085', 'lite', '6000', '80000', 86000, '2022-08-24 10:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `table_8142441`
--

CREATE TABLE `table_8142441` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `qf7fq4f` text DEFAULT NULL,
  `eqffeef` text DEFAULT NULL,
  `qfeqefqfe` text DEFAULT NULL,
  `qffqeqfe` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8142441`
--

INSERT INTO `table_8142441` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `qf7fq4f`, `eqffeef`, `qfeqefqfe`, `qffqeqfe`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_8142441', 'first', NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(2, 248, 0, 0, 0, 'table_8142441', 'second', NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(3, 248, 0, 0, 0, 'table_8142441', 'third', NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(4, 248, 249, 248, 0, 'table_8142441', 'first', '5000', '5001', NULL, 10001, '2022-08-20 18:00:00'),
(5, 248, 249, 248, 0, 'table_8142441', 'second', '51', '551', '665', 1267, '2022-08-20 18:00:00'),
(6, 248, 249, 248, 0, 'table_8142441', 'third', '485', '5454', '55545', 61484, '2022-08-20 18:00:00'),
(7, 248, 251, 250, 0, 'table_8142441', 'first', '455100', NULL, NULL, 455100, '2022-08-21 03:22:15'),
(8, 248, 251, 250, 0, 'table_8142441', 'second', '8565', '65000', NULL, 73565, '2022-08-21 03:22:15'),
(9, 248, 251, 250, 0, 'table_8142441', 'third', '475000', '6500', '45000', 526500, '2022-08-21 03:22:15'),
(10, 248, 255, 253, 0, 'table_8142441', 'first', '25000', '489', '95874', 121363, '2022-08-21 03:24:14'),
(11, 248, 255, 253, 0, 'table_8142441', 'second', '14511', '5555', '5566', 25632, '2022-08-21 03:24:14'),
(12, 248, 255, 253, 0, 'table_8142441', 'third', '5000', '665020', '54545445', 55215500, '2022-08-21 03:24:14'),
(13, 248, 0, 254, 0, 'table_8142441', 'first', NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(14, 248, 0, 254, 0, 'table_8142441', 'second', NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(15, 248, 0, 254, 0, 'table_8142441', 'third', NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(16, 248, 0, 254, 0, 'table_8142441', 'first', NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(17, 248, 0, 254, 0, 'table_8142441', 'second', NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(18, 248, 0, 254, 0, 'table_8142441', 'third', NULL, NULL, NULL, 0, '2022-08-20 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_8163208`
--

CREATE TABLE `table_8163208` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `feqfefq` text DEFAULT NULL,
  `qfeqwww` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_8163208`
--

INSERT INTO `table_8163208` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `feqfefq`, `qfeqwww`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_8163208', '', '', '2022-08-20 18:00:00'),
(2, 248, 0, 0, 0, 'table_8163208', '', '', '2022-08-20 18:00:00'),
(3, 248, 249, 248, 0, 'table_8163208', NULL, '454', '2022-08-20 18:00:00'),
(4, 248, 249, 248, 0, 'table_8163208', NULL, '54554', '2022-08-20 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_8209212`
--

CREATE TABLE `table_8209212` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8209212`
--

INSERT INTO `table_8209212` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `roll`, `section`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_8209212', NULL, NULL, NULL, '2022-08-28 18:00:00'),
(2, 248, 0, 0, 0, 'table_8209212', NULL, NULL, NULL, '2022-08-28 18:00:00'),
(3, 248, 0, 0, 0, 'table_8209212', NULL, NULL, NULL, '2022-08-28 18:00:00'),
(4, 248, 0, 253, 0, 'table_8209212', NULL, NULL, NULL, '2022-08-28 18:00:00'),
(5, 248, 0, 253, 0, 'table_8209212', NULL, NULL, NULL, '2022-08-28 18:00:00'),
(6, 248, 0, 253, 0, 'table_8209212', NULL, NULL, NULL, '2022-08-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_8284766`
--

CREATE TABLE `table_8284766` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_8284766`
--

INSERT INTO `table_8284766` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `roll`, `section`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_8284766', 'armaan', NULL, NULL, '2022-08-19 18:00:00'),
(2, 248, 0, 0, 0, 'table_8284766', 'raihan', NULL, NULL, '2022-08-19 18:00:00'),
(3, 248, 0, 0, 0, 'table_8284766', 'shukhon', NULL, NULL, '2022-08-19 18:00:00'),
(4, 248, 249, 248, 0, 'table_8284766', 'armaan', NULL, NULL, '2022-08-19 18:00:00'),
(5, 248, 249, 248, 0, 'table_8284766', 'raihan', NULL, NULL, '2022-08-19 18:00:00'),
(6, 248, 249, 248, 0, 'table_8284766', 'shukhon', NULL, NULL, '2022-08-19 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_8400121`
--

CREATE TABLE `table_8400121` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `ffas` text DEFAULT NULL,
  `fefefe` text DEFAULT NULL,
  `wfqfeq` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8400121`
--

INSERT INTO `table_8400121` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `ffas`, `fefefe`, `wfqfeq`, `total`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_8400121', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(2, 250, 0, 0, 0, 'table_8400121', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(3, 250, 0, 0, 0, 'table_8400121', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(4, 250, 0, 0, 0, 'table_8400121', 'fourth', NULL, NULL, 0, '2022-08-24 18:00:00'),
(5, 250, 0, 254, 0, 'table_8400121', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(6, 250, 0, 254, 0, 'table_8400121', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(7, 250, 0, 254, 0, 'table_8400121', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(8, 250, 0, 254, 0, 'table_8400121', 'fourth', NULL, NULL, 0, '2022-08-24 18:00:00'),
(9, 250, 0, 254, 0, 'table_8400121', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(10, 250, 0, 254, 0, 'table_8400121', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(11, 250, 0, 254, 0, 'table_8400121', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(12, 250, 0, 254, 0, 'table_8400121', 'fourth', NULL, NULL, 0, '2022-08-24 18:00:00'),
(13, 250, 0, 254, 0, 'table_8400121', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(14, 250, 0, 254, 0, 'table_8400121', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(15, 250, 0, 254, 0, 'table_8400121', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(16, 250, 0, 254, 0, 'table_8400121', 'fourth', NULL, NULL, 0, '2022-08-24 18:00:00'),
(17, 250, 0, 254, 0, 'table_8400121', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(18, 250, 0, 254, 0, 'table_8400121', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(19, 250, 0, 254, 0, 'table_8400121', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(20, 250, 0, 254, 0, 'table_8400121', 'fourth', NULL, NULL, 0, '2022-08-24 18:00:00'),
(21, 250, 0, 254, 0, 'table_8400121', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(22, 250, 0, 254, 0, 'table_8400121', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(23, 250, 0, 254, 0, 'table_8400121', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(24, 250, 0, 254, 0, 'table_8400121', 'fourth', NULL, NULL, 0, '2022-08-24 18:00:00'),
(25, 250, 0, 254, 0, 'table_8400121', 'first', NULL, NULL, 0, '2022-08-24 18:00:00'),
(26, 250, 0, 254, 0, 'table_8400121', 'second', NULL, NULL, 0, '2022-08-24 18:00:00'),
(27, 250, 0, 254, 0, 'table_8400121', 'third', NULL, NULL, 0, '2022-08-24 18:00:00'),
(28, 250, 0, 254, 0, 'table_8400121', 'fourth', NULL, NULL, 0, '2022-08-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_8546976`
--

CREATE TABLE `table_8546976` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `baabfab` text DEFAULT NULL,
  `qfqffq` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8546976`
--

INSERT INTO `table_8546976` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `baabfab`, `qfqffq`, `total`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_8546976', NULL, NULL, 0, '2022-08-24 18:00:00'),
(2, 250, 258, 257, 0, 'table_8546976', NULL, '5', 5, '2022-08-25 09:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `table_8838559`
--

CREATE TABLE `table_8838559` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fixed_name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8838559`
--

INSERT INTO `table_8838559` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fixed_name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_8838559', 'armaan', NULL, NULL, 0, '2022-08-13 18:00:00'),
(2, 248, 0, 0, 0, 'table_8838559', 'shahed', NULL, NULL, 0, '2022-08-13 18:00:00'),
(3, 248, 0, 0, 0, 'table_8838559', 'shadmaan', NULL, NULL, 0, '2022-08-13 18:00:00'),
(4, 248, 0, 0, 0, 'table_8838559', 'shafiq', NULL, NULL, 0, '2022-08-13 18:00:00'),
(5, 248, 251, 250, 0, 'table_8838559', 'armaan', NULL, NULL, 0, '2022-08-14 06:28:36'),
(6, 248, 251, 250, 0, 'table_8838559', 'shahed', NULL, NULL, 0, '2022-08-14 06:28:36'),
(7, 248, 251, 250, 0, 'table_8838559', 'shadmaan', NULL, NULL, 0, '2022-08-14 06:28:36'),
(8, 248, 251, 250, 0, 'table_8838559', 'shafiq', NULL, NULL, 0, '2022-08-14 06:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `table_8861936`
--

CREATE TABLE `table_8861936` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `faaff` text DEFAULT NULL,
  `fqfqfq` text DEFAULT NULL,
  `fqfqqfeww` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_9057792`
--

CREATE TABLE `table_9057792` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_9057792`
--

INSERT INTO `table_9057792` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_9057792', 'first', NULL, NULL, 0, '2022-08-27 18:00:00'),
(2, 248, 0, 0, 0, 'table_9057792', 'second', NULL, NULL, 0, '2022-08-27 18:00:00'),
(3, 248, 0, 0, 0, 'table_9057792', 'third', NULL, NULL, 0, '2022-08-27 18:00:00'),
(4, 248, 249, 248, 0, 'table_9057792', 'first', '250', '6500', 6750, '2022-08-27 18:00:00'),
(5, 248, 249, 248, 0, 'table_9057792', 'second', '450', '500', 950, '2022-08-27 18:00:00'),
(6, 248, 249, 248, 0, 'table_9057792', 'third', '740', '650', 1390, '2022-08-27 18:00:00'),
(7, 248, 251, 250, 0, 'table_9057792', 'first', '250', '580', 830, '2022-08-28 04:29:59'),
(8, 248, 251, 250, 0, 'table_9057792', 'second', '450', '00', 450, '2022-08-28 04:29:59'),
(9, 248, 251, 250, 0, 'table_9057792', 'third', '750', '2650', 3400, '2022-08-28 04:29:59'),
(10, 248, 255, 253, 0, 'table_9057792', 'first', '250', '650', 900, '2022-08-28 05:15:49'),
(11, 248, 255, 253, 0, 'table_9057792', 'second', '450', '780', 1230, '2022-08-28 05:15:49'),
(12, 248, 255, 253, 0, 'table_9057792', 'third', '888', '5000', 5888, '2022-08-28 05:15:49'),
(13, 248, 256, 254, 0, 'table_9057792', 'first', '58548', '141', 58689, '2022-08-28 05:32:04'),
(14, 248, 256, 254, 0, 'table_9057792', 'second', '20', '30', 50, '2022-08-28 05:32:04'),
(15, 248, 256, 254, 0, 'table_9057792', 'third', '40', '50', 90, '2022-08-28 05:32:04'),
(16, 248, 258, 257, 0, 'table_9057792', 'first', '5200', NULL, 5200, '2022-08-28 05:34:20'),
(17, 248, 258, 257, 0, 'table_9057792', 'second', '5141', '2514', 7655, '2022-08-28 05:34:20'),
(18, 248, 258, 257, 0, 'table_9057792', 'third', '450', '750', 1200, '2022-08-28 05:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `table_9072943`
--

CREATE TABLE `table_9072943` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_9072943`
--

INSERT INTO `table_9072943` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `roll`, `section`, `created_at`) VALUES
(1, 250, 0, 0, 0, 'table_9072943', 'king', NULL, NULL, '2022-08-24 18:00:00'),
(2, 250, 0, 0, 0, 'table_9072943', 'queen', NULL, NULL, '2022-08-24 18:00:00'),
(3, 250, 0, 0, 0, 'table_9072943', 'tekka', NULL, NULL, '2022-08-24 18:00:00'),
(4, 250, 255, 253, 0, 'table_9072943', 'king', '55012f1f15', '54f1a551', '2022-08-25 10:46:06'),
(5, 250, 255, 253, 0, 'table_9072943', 'queen', '51f51fa15fa', '5151f5af151', '2022-08-25 10:46:06'),
(6, 250, 255, 253, 0, 'table_9072943', 'tekka', '`545afaf5', '55af4af', '2022-08-25 10:46:06'),
(7, 250, 0, 254, 0, 'table_9072943', 'king', NULL, NULL, '2022-08-24 18:00:00'),
(8, 250, 0, 254, 0, 'table_9072943', 'queen', NULL, NULL, '2022-08-24 18:00:00'),
(9, 250, 0, 254, 0, 'table_9072943', 'tekka', NULL, NULL, '2022-08-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_9277306`
--

CREATE TABLE `table_9277306` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fq_jfq` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_9277306`
--

INSERT INTO `table_9277306` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `fq_jfq`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_9277306', '', 0, '2022-08-13 18:00:00'),
(2, 248, 249, 248, 0, 'table_9277306', '', 0, '2022-08-13 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_9321783`
--

CREATE TABLE `table_9321783` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filled_by` int(11) DEFAULT NULL,
  `authorize_user` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `department` text DEFAULT NULL,
  `new` text DEFAULT NULL,
  `joinne` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_9321783`
--

INSERT INTO `table_9321783` (`id`, `created_by`, `filled_by`, `authorize_user`, `status`, `table_name`, `name`, `role`, `section`, `department`, `new`, `joinne`, `total`, `created_at`) VALUES
(1, 248, 0, 0, 0, 'table_9321783', 'armaan', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(2, 248, 0, 0, 0, 'table_9321783', 'shahed', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(3, 248, 0, 0, 0, 'table_9321783', 'rakib', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(4, 248, 0, 0, 0, 'table_9321783', 'joy', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(5, 248, 249, 248, 0, 'table_9321783', 'armaan', '500', '600', '7100', '26000', '710000', 744200, '2022-08-20 18:00:00'),
(6, 248, 249, 248, 0, 'table_9321783', 'shahed', '2500', '2600', '7000', '45000', '6000', 63100, '2022-08-20 18:00:00'),
(7, 248, 249, 248, 0, 'table_9321783', 'rakib', '554848', '48848', '8484856', '6559', NULL, 9095110, '2022-08-20 18:00:00'),
(8, 248, 249, 248, 0, 'table_9321783', 'joy', '584', '48484', '48484', '8484', '85999', 192035, '2022-08-20 18:00:00'),
(9, 248, 0, 250, 0, 'table_9321783', 'armaan', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(10, 248, 0, 250, 0, 'table_9321783', 'shahed', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(11, 248, 0, 250, 0, 'table_9321783', 'rakib', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-20 18:00:00'),
(12, 248, 0, 250, 0, 'table_9321783', 'joy', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-20 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `unit_offices`
--

CREATE TABLE `unit_offices` (
  `id` int(11) NOT NULL,
  `parent_id` text DEFAULT NULL,
  `institution_id` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit_offices`
--

INSERT INTO `unit_offices` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(5, NULL, NULL, 'মতিঝিল শাখা', NULL, 1, 'মতিঝিল শাখা', '2022-07-18 10:12:17', '2022-07-18 10:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_creator` int(11) DEFAULT NULL,
  `ministry_department` int(255) DEFAULT NULL,
  `organization_user` int(255) DEFAULT NULL,
  `regulatory_authority` int(255) DEFAULT NULL,
  `branch_user` int(255) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_category` int(11) DEFAULT NULL,
  `signature` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `status` tinyint(7) NOT NULL DEFAULT 0 COMMENT '1 active 0 inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `email`, `designation`, `description`, `slug`, `image`, `institution_id`, `email_verified_at`, `password`, `role`, `user_creator`, `ministry_department`, `organization_user`, `regulatory_authority`, `branch_user`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `user_type`, `user_category`, `signature`, `division`, `status`) VALUES
(126, 'fid', 'FID', 'ministry@gmail.com', '35', NULL, 'Ministry', '1658564300.png', NULL, NULL, '$2y$10$x0d8lBapSmUgaOoN3ctxXOAZYpckx3MUFf6nYGQwFz.y8xGp.0ecC', '1', 111, NULL, NULL, NULL, NULL, NULL, '2022-06-28 04:19:02', '2022-07-23 08:26:32', '01401033445', 'dhaka', 'AUTHORIZE_USER', 1, '1658564183.png', 64, 1),
(248, 'Armaan', 'Armaan', 'armaan@gmail.com', '92', 'this is my description', 'Armaan', '1659956091.jpg', NULL, NULL, '$2y$10$ho/JphczRT.SAY7VW1OhYuPlzRpn5jBU1VP5UM/o9ayAQfZVzeeza', '11', 126, 16, NULL, NULL, NULL, NULL, '2022-08-08 10:41:42', '2022-08-08 10:54:51', '01521326073', 'this is my address', 'AUTHORIZE_USER', 2, '1659956091.png', NULL, 1),
(249, 'Shahed715305', 'Shahed', 'shahed@gmail.com', '70', 'this is shahed\'s Description', 'Shahed', '1659959067.jpg', NULL, NULL, '$2y$10$sSk6VtTDs9GXZP886JHaDeC8hnfLbtHN304DDnI.UxAh.ma70iu9q', '11', 248, 16, NULL, NULL, NULL, NULL, '2022-08-08 11:42:40', '2022-08-08 11:44:27', '01521326079', 'this is shahed\'s address', 'ENTRY_USER', 2, '1659959054.jpg', NULL, 1),
(250, 'shadmaan767916', 'shadmaan', 'shadman@gmail.com', '85', NULL, 'shadmaan', '1660457933.png', NULL, NULL, '$2y$10$Dlp8wwUTwCNa1tyD7sEA3u1vGKUf0cjwM6O0TqgYZmo70pny19sne', '12', 248, NULL, NULL, 7, NULL, NULL, '2022-08-14 06:14:54', '2022-08-14 06:18:53', '01523126072', NULL, 'AUTHORIZE_USER', 3, '1660457924.png', NULL, 1),
(251, 'shafiq754878', 'shafiq', 'shafiq@gmail.com', '76', NULL, 'shafiq', '1660458415.png', NULL, NULL, '$2y$10$kcXdDixsngCJHU8B4nrMUOg7cFI3oLDPXZOeAsAf9W83DNzXjbUPK', '12', 250, NULL, NULL, 7, NULL, NULL, '2022-08-14 06:23:04', '2022-08-14 06:26:55', '01521326082', NULL, 'ENTRY_USER', 3, '1660458415.jpg', NULL, 1),
(253, 'joy601392', 'joy', 'joy@gmail.com', '90', NULL, 'joy', '1660638378.webp', 12, NULL, '$2y$10$aBd.j8OlmI12h7PzHIg2cuP0Gru2KbNYp9gnCYlBjrERj/V2Xz1nK', '13', 250, NULL, NULL, NULL, NULL, NULL, '2022-08-16 08:25:19', '2022-08-16 08:26:18', '01521326072', NULL, 'AUTHORIZE_USER', 4, '1660638378.jpg', NULL, 1),
(254, 'nazmul-834658', 'nazmul', 'naz@gmail.com', '91', NULL, 'nazmul', '1660803165.jpg', NULL, NULL, '$2y$10$Qw1ZetRdJqlUNQxhJlz7uekfxmhmaeHDORD/s9v2ud/ihpkt1RkKS', '14', 253, NULL, 10, NULL, NULL, NULL, '2022-08-18 06:11:31', '2022-08-18 06:12:45', '01521326092', NULL, 'AUTHORIZE_USER', 5, '1660803165.png', NULL, 1),
(255, 'rakib745303', 'rakib', 'jam@gmail.com', '89', NULL, 'rakib', '1660803353.jpg', 12, NULL, '$2y$10$Wk250JbvQ2hmBWd9sLiw1.A9xAXEhd1DU.wihvNzhX6dXuTzv.11G', '13', 253, NULL, NULL, NULL, NULL, NULL, '2022-08-18 06:14:25', '2022-08-18 06:15:53', '01720947567', NULL, 'ENTRY_USER', 4, '1660803340.png', NULL, 1),
(256, 'toushik192961', 'toushik', 'toushik@gmail.com', '76', NULL, 'toushik', '1661322969.png', NULL, NULL, '$2y$10$KnS/X3tyb.QtKA9FlIX4QOjezfb2J9PU9YJN10rfx5a2MY6nHySgK', '14', 254, NULL, 10, NULL, NULL, NULL, '2022-08-24 06:35:16', '2022-08-24 06:36:09', '01401033445', NULL, 'ENTRY_USER', 5, '1661322958.png', NULL, 1),
(257, 'Mamun-973901', 'Mamun', 'mamun@gmail.com', '40', NULL, 'Mamun', '1661418957.jpg', NULL, NULL, '$2y$10$wrgnfZMkkS7fwIKsfjjSs.InTa9zdvNh7MLFMcuaMd6wTyiCEh5su', '15', 254, NULL, NULL, NULL, 5, NULL, '2022-08-25 09:15:11', '2022-08-25 09:15:58', '01720947567', NULL, 'AUTHORIZE_USER', 6, '1661418958.png', NULL, 1),
(258, 'Bidyut-Magumdar5744', 'Bidyut Magumdar', 'heni@gmail.com', '90', NULL, 'Bidyut-Magumdar', '1661419176.jpg', NULL, NULL, '$2y$10$kB4YAod6RcRoQ1jN3DSP2.RXKNNcz7HrLuMjSqsnV.9SoD9hs2URi', '15', 257, NULL, NULL, NULL, 5, NULL, '2022-08-25 09:18:03', '2022-08-25 09:19:36', '01521326072', NULL, 'ENTRY_USER', 6, '1661419166.jpg', NULL, 1),
(259, NULL, 'navar', 'mavar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$A4LNXUEra.I/RliBA5AcOuXiqZVUMQAS8CS7BcIDvuUFE3Z7pGg7S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 03:43:41', '2022-09-14 03:43:41', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(260, NULL, 'jim', 'jim@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Lk2d2h6hPp5NUDGlnkUbLOSe5LoUSwK.xfcGlhVK5NMRN/b8bDwwG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:02:58', '2022-09-14 05:02:58', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(261, NULL, 'ankan', 'ankan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0Fv8X9IzcqPKSARjwxB0w.Cv/Ocuow0jiv5tTA5kj2Svl.unGl5b6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:26:28', '2022-09-14 05:26:28', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(262, NULL, 'jitni', 'tu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Yg25UzGAZDS.Ha6Yu5OQgO91.AAQolKlZV766pw2aiFNE3wBXKq3W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 02:55:41', '2022-09-15 02:55:41', NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_permissions`
--

INSERT INTO `users_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(126, 1, NULL, NULL),
(126, 2, NULL, NULL),
(126, 3, NULL, NULL),
(126, 4, NULL, NULL),
(126, 9, NULL, NULL),
(126, 10, NULL, NULL),
(126, 11, NULL, NULL),
(126, 12, NULL, NULL),
(126, 13, NULL, NULL),
(126, 14, NULL, NULL),
(126, 15, NULL, NULL),
(126, 16, NULL, NULL),
(126, 21, NULL, NULL),
(126, 22, NULL, NULL),
(126, 23, NULL, NULL),
(126, 24, NULL, NULL),
(126, 25, NULL, NULL),
(126, 26, NULL, NULL),
(248, 1, NULL, NULL),
(248, 2, NULL, NULL),
(248, 3, NULL, NULL),
(248, 4, NULL, NULL),
(248, 9, NULL, NULL),
(248, 10, NULL, NULL),
(248, 11, NULL, NULL),
(248, 12, NULL, NULL),
(248, 13, NULL, NULL),
(248, 14, NULL, NULL),
(248, 15, NULL, NULL),
(248, 16, NULL, NULL),
(248, 21, NULL, NULL),
(248, 22, NULL, NULL),
(248, 23, NULL, NULL),
(248, 24, NULL, NULL),
(248, 25, NULL, NULL),
(248, 26, NULL, NULL),
(248, 27, NULL, NULL),
(248, 28, NULL, NULL),
(248, 29, NULL, NULL),
(248, 30, NULL, NULL),
(248, 31, NULL, NULL),
(248, 32, NULL, NULL),
(249, 1, NULL, NULL),
(249, 2, NULL, NULL),
(249, 3, NULL, NULL),
(249, 4, NULL, NULL),
(249, 9, NULL, NULL),
(249, 10, NULL, NULL),
(249, 11, NULL, NULL),
(249, 12, NULL, NULL),
(249, 13, NULL, NULL),
(249, 14, NULL, NULL),
(249, 15, NULL, NULL),
(249, 16, NULL, NULL),
(249, 21, NULL, NULL),
(249, 22, NULL, NULL),
(249, 23, NULL, NULL),
(249, 24, NULL, NULL),
(249, 25, NULL, NULL),
(249, 26, NULL, NULL),
(249, 27, NULL, NULL),
(249, 28, NULL, NULL),
(249, 29, NULL, NULL),
(249, 30, NULL, NULL),
(249, 31, NULL, NULL),
(249, 32, NULL, NULL),
(250, 1, NULL, NULL),
(250, 2, NULL, NULL),
(250, 3, NULL, NULL),
(250, 4, NULL, NULL),
(250, 9, NULL, NULL),
(250, 10, NULL, NULL),
(250, 11, NULL, NULL),
(250, 12, NULL, NULL),
(250, 13, NULL, NULL),
(250, 14, NULL, NULL),
(250, 15, NULL, NULL),
(250, 16, NULL, NULL),
(250, 21, NULL, NULL),
(250, 22, NULL, NULL),
(250, 23, NULL, NULL),
(250, 24, NULL, NULL),
(250, 25, NULL, NULL),
(250, 26, NULL, NULL),
(250, 27, NULL, NULL),
(250, 28, NULL, NULL),
(250, 29, NULL, NULL),
(250, 30, NULL, NULL),
(250, 31, NULL, NULL),
(250, 32, NULL, NULL),
(251, 1, NULL, NULL),
(251, 2, NULL, NULL),
(251, 3, NULL, NULL),
(251, 4, NULL, NULL),
(251, 9, NULL, NULL),
(251, 10, NULL, NULL),
(251, 11, NULL, NULL),
(251, 12, NULL, NULL),
(251, 13, NULL, NULL),
(251, 14, NULL, NULL),
(251, 15, NULL, NULL),
(251, 16, NULL, NULL),
(251, 21, NULL, NULL),
(251, 22, NULL, NULL),
(251, 23, NULL, NULL),
(251, 24, NULL, NULL),
(251, 25, NULL, NULL),
(251, 26, NULL, NULL),
(251, 27, NULL, NULL),
(251, 28, NULL, NULL),
(251, 29, NULL, NULL),
(251, 30, NULL, NULL),
(251, 31, NULL, NULL),
(251, 32, NULL, NULL),
(253, 1, NULL, NULL),
(253, 2, NULL, NULL),
(253, 3, NULL, NULL),
(253, 4, NULL, NULL),
(253, 9, NULL, NULL),
(253, 10, NULL, NULL),
(253, 11, NULL, NULL),
(253, 12, NULL, NULL),
(253, 13, NULL, NULL),
(253, 14, NULL, NULL),
(253, 15, NULL, NULL),
(253, 16, NULL, NULL),
(253, 21, NULL, NULL),
(253, 22, NULL, NULL),
(253, 23, NULL, NULL),
(253, 24, NULL, NULL),
(253, 25, NULL, NULL),
(253, 26, NULL, NULL),
(253, 27, NULL, NULL),
(253, 28, NULL, NULL),
(253, 29, NULL, NULL),
(253, 30, NULL, NULL),
(253, 31, NULL, NULL),
(253, 32, NULL, NULL),
(254, 1, NULL, NULL),
(254, 2, NULL, NULL),
(254, 3, NULL, NULL),
(254, 4, NULL, NULL),
(254, 9, NULL, NULL),
(254, 10, NULL, NULL),
(254, 11, NULL, NULL),
(254, 12, NULL, NULL),
(254, 13, NULL, NULL),
(254, 14, NULL, NULL),
(254, 15, NULL, NULL),
(254, 16, NULL, NULL),
(254, 21, NULL, NULL),
(254, 22, NULL, NULL),
(254, 23, NULL, NULL),
(254, 24, NULL, NULL),
(254, 25, NULL, NULL),
(254, 26, NULL, NULL),
(254, 27, NULL, NULL),
(254, 28, NULL, NULL),
(254, 29, NULL, NULL),
(254, 30, NULL, NULL),
(254, 31, NULL, NULL),
(254, 32, NULL, NULL),
(255, 1, NULL, NULL),
(255, 2, NULL, NULL),
(255, 3, NULL, NULL),
(255, 4, NULL, NULL),
(255, 9, NULL, NULL),
(255, 10, NULL, NULL),
(255, 11, NULL, NULL),
(255, 12, NULL, NULL),
(255, 13, NULL, NULL),
(255, 14, NULL, NULL),
(255, 15, NULL, NULL),
(255, 16, NULL, NULL),
(255, 21, NULL, NULL),
(255, 22, NULL, NULL),
(255, 23, NULL, NULL),
(255, 24, NULL, NULL),
(255, 25, NULL, NULL),
(255, 26, NULL, NULL),
(255, 27, NULL, NULL),
(255, 28, NULL, NULL),
(255, 29, NULL, NULL),
(255, 30, NULL, NULL),
(255, 31, NULL, NULL),
(255, 32, NULL, NULL),
(256, 1, NULL, NULL),
(256, 2, NULL, NULL),
(256, 3, NULL, NULL),
(256, 4, NULL, NULL),
(256, 9, NULL, NULL),
(256, 10, NULL, NULL),
(256, 11, NULL, NULL),
(256, 12, NULL, NULL),
(256, 13, NULL, NULL),
(256, 14, NULL, NULL),
(256, 15, NULL, NULL),
(256, 16, NULL, NULL),
(256, 21, NULL, NULL),
(256, 22, NULL, NULL),
(256, 23, NULL, NULL),
(256, 24, NULL, NULL),
(256, 25, NULL, NULL),
(256, 26, NULL, NULL),
(256, 27, NULL, NULL),
(256, 28, NULL, NULL),
(256, 29, NULL, NULL),
(256, 30, NULL, NULL),
(256, 31, NULL, NULL),
(256, 32, NULL, NULL),
(257, 1, NULL, NULL),
(257, 2, NULL, NULL),
(257, 3, NULL, NULL),
(257, 4, NULL, NULL),
(257, 9, NULL, NULL),
(257, 10, NULL, NULL),
(257, 11, NULL, NULL),
(257, 12, NULL, NULL),
(257, 13, NULL, NULL),
(257, 14, NULL, NULL),
(257, 15, NULL, NULL),
(257, 16, NULL, NULL),
(257, 21, NULL, NULL),
(257, 22, NULL, NULL),
(257, 23, NULL, NULL),
(257, 24, NULL, NULL),
(257, 25, NULL, NULL),
(257, 26, NULL, NULL),
(257, 27, NULL, NULL),
(257, 28, NULL, NULL),
(257, 29, NULL, NULL),
(257, 30, NULL, NULL),
(257, 31, NULL, NULL),
(257, 32, NULL, NULL),
(258, 1, NULL, NULL),
(258, 2, NULL, NULL),
(258, 3, NULL, NULL),
(258, 4, NULL, NULL),
(258, 9, NULL, NULL),
(258, 10, NULL, NULL),
(258, 11, NULL, NULL),
(258, 12, NULL, NULL),
(258, 13, NULL, NULL),
(258, 14, NULL, NULL),
(258, 15, NULL, NULL),
(258, 16, NULL, NULL),
(258, 21, NULL, NULL),
(258, 22, NULL, NULL),
(258, 23, NULL, NULL),
(258, 24, NULL, NULL),
(258, 25, NULL, NULL),
(258, 26, NULL, NULL),
(258, 27, NULL, NULL),
(258, 28, NULL, NULL),
(258, 29, NULL, NULL),
(258, 30, NULL, NULL),
(258, 31, NULL, NULL),
(258, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(126, 1),
(248, 11),
(249, 11),
(250, 12),
(251, 12),
(253, 13),
(254, 14),
(255, 13),
(256, 14),
(257, 15),
(258, 15);

-- --------------------------------------------------------

--
-- Table structure for table `user_departments`
--

CREATE TABLE `user_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_departments`
--

INSERT INTO `user_departments` (`id`, `user_id`, `department_id`, `created_at`, `updated_at`) VALUES
(152, 180, 55, '2022-07-17 17:24:20', '2022-07-17 17:24:20'),
(153, 180, 56, '2022-07-17 17:24:20', '2022-07-17 17:24:20'),
(154, 181, 58, '2022-07-17 17:26:17', '2022-07-17 17:26:17'),
(155, 181, 59, '2022-07-17 17:26:17', '2022-07-17 17:26:17'),
(156, 182, 58, '2022-07-17 17:35:00', '2022-07-17 17:35:00'),
(157, 183, 59, '2022-07-17 17:36:48', '2022-07-17 17:36:48'),
(158, 184, 54, '2022-07-18 05:09:00', '2022-07-18 05:09:00'),
(159, 184, 55, '2022-07-18 05:09:00', '2022-07-18 05:09:00'),
(160, 185, 57, '2022-07-18 05:26:31', '2022-07-18 05:26:31'),
(161, 186, 58, '2022-07-18 05:33:43', '2022-07-18 05:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_forms`
--

CREATE TABLE `user_forms` (
  `id` int(11) NOT NULL,
  `sender_user_id` int(11) NOT NULL,
  `reciever_user_id` int(11) DEFAULT NULL,
  `sender_institution_id` int(11) DEFAULT NULL,
  `reciever_institution_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `form_id` tinyint(7) NOT NULL DEFAULT 1,
  `sub_form_id` int(11) DEFAULT NULL,
  `sub_form_id_unique_id` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `duration` varchar(50) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `send_date` varchar(50) NOT NULL DEFAULT '2022-02-02',
  `method` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_forms`
--

INSERT INTO `user_forms` (`id`, `sender_user_id`, `reciever_user_id`, `sender_institution_id`, `reciever_institution_id`, `group_id`, `form_id`, `sub_form_id`, `sub_form_id_unique_id`, `status`, `duration`, `type`, `send_date`, `method`, `created_at`, `updated_at`) VALUES
(440, 126, 241, NULL, NULL, NULL, 9, 235, NULL, 1, '2022-08-31', NULL, '2022-02-02', 'user', '2022-08-04 11:58:37', NULL),
(441, 241, 242, NULL, NULL, NULL, 9, 235, NULL, 1, '2022-08-12', NULL, '2022-02-02', NULL, '2022-08-04 13:14:10', NULL),
(442, 242, 241, NULL, NULL, NULL, 9, 235, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-04 13:15:16', NULL),
(443, 241, 243, NULL, NULL, NULL, 9, 235, NULL, 1, '2022-09-03', NULL, '2022-02-02', 'user', '2022-08-04 13:16:08', NULL),
(444, 241, 243, NULL, NULL, NULL, 9, 236, NULL, 1, '2022-08-09', NULL, '2022-02-02', 'user', '2022-08-07 03:43:09', NULL),
(445, 241, 242, NULL, NULL, NULL, 9, 236, NULL, 1, '2022-08-09', NULL, '2022-02-02', NULL, '2022-08-07 04:59:15', NULL),
(446, 242, 241, NULL, NULL, NULL, 9, 236, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-07 05:00:20', NULL),
(447, 241, 242, NULL, NULL, NULL, 9, 236, NULL, 1, '2022-08-10', NULL, '2022-02-02', NULL, '2022-08-07 05:06:35', NULL),
(448, 243, 244, NULL, NULL, NULL, 9, 236, NULL, 1, '2022-08-08', NULL, '2022-02-02', NULL, '2022-08-07 05:07:23', NULL),
(449, 244, 243, NULL, NULL, NULL, 9, 236, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-07 05:07:59', NULL),
(450, 241, 242, NULL, NULL, NULL, 9, 252, NULL, 1, '2022-08-09', NULL, '2022-02-02', NULL, '2022-08-08 08:07:44', NULL),
(451, 248, 249, NULL, NULL, NULL, 9, 253, NULL, 1, '2022-08-09', NULL, '2022-02-02', NULL, '2022-08-08 11:51:33', NULL),
(452, 248, 249, NULL, NULL, NULL, 9, 256, NULL, 1, '2022-08-25', NULL, '2022-02-02', NULL, '2022-08-08 13:33:39', NULL),
(453, 249, 248, NULL, NULL, NULL, 9, 256, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-08 13:35:53', NULL),
(454, 248, 249, NULL, NULL, NULL, 9, 257, NULL, 1, '2022-08-20', NULL, '2022-02-02', NULL, '2022-08-08 13:38:07', NULL),
(455, 249, 248, NULL, NULL, NULL, 9, 257, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-08 13:38:25', NULL),
(456, 248, 249, NULL, NULL, NULL, 9, 259, NULL, 1, '2022-08-12', NULL, '2022-02-02', NULL, '2022-08-11 11:48:25', NULL),
(457, 248, 249, NULL, NULL, NULL, 9, 258, NULL, 1, '2022-08-12', NULL, '2022-02-02', NULL, '2022-08-11 11:56:06', NULL),
(458, 126, 248, NULL, NULL, NULL, 9, 260, NULL, 1, '2022-08-15', NULL, '2022-02-02', 'user', '2022-08-14 03:38:09', NULL),
(459, 248, 249, NULL, NULL, NULL, 9, 264, NULL, 1, '2022-08-15', NULL, '2022-02-02', NULL, '2022-08-14 05:09:16', NULL),
(460, 249, 248, NULL, NULL, NULL, 9, 264, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-14 05:43:19', NULL),
(461, 248, 249, NULL, NULL, NULL, 9, 265, NULL, 1, '2022-08-15', NULL, '2022-02-02', NULL, '2022-08-14 05:53:38', NULL),
(462, 249, 248, NULL, NULL, NULL, 9, 265, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-14 05:54:15', NULL),
(463, 248, 250, NULL, NULL, NULL, 9, 266, NULL, 1, '2022-08-15', NULL, '2022-02-02', 'user', '2022-08-14 06:20:44', NULL),
(464, 250, 251, NULL, NULL, NULL, 9, 266, NULL, 1, '2022-08-15', NULL, '2022-02-02', NULL, '2022-08-14 06:28:36', NULL),
(465, 248, 249, NULL, NULL, NULL, 9, 267, NULL, 1, '2022-08-17', NULL, '2022-02-02', NULL, '2022-08-14 06:48:58', NULL),
(466, 248, 249, NULL, NULL, NULL, 9, 268, NULL, 1, '2022-08-15', NULL, '2022-02-02', NULL, '2022-08-14 10:31:08', NULL),
(467, 248, 249, NULL, NULL, NULL, 9, 268, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-14 10:31:27', NULL),
(468, 248, 250, NULL, NULL, NULL, 9, 273, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 04:42:47', NULL),
(469, 248, 250, NULL, NULL, NULL, 9, 273, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 05:03:20', NULL),
(470, 248, 250, NULL, NULL, NULL, 9, 273, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 05:06:01', NULL),
(471, 248, 250, NULL, NULL, NULL, 9, 273, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 05:06:10', NULL),
(472, 248, 250, NULL, NULL, NULL, 9, 273, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 05:07:17', NULL),
(473, 248, 250, NULL, NULL, NULL, 9, 273, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 05:07:55', NULL),
(474, 248, 250, NULL, NULL, NULL, 9, 273, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 05:08:20', NULL),
(475, 248, 249, NULL, NULL, NULL, 9, 273, NULL, 1, '2022-08-17', NULL, '2022-02-02', NULL, '2022-08-16 05:08:58', NULL),
(476, 250, 253, NULL, 12, NULL, 9, 272, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 08:27:54', NULL),
(477, 248, 250, NULL, NULL, NULL, 9, 273, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 08:30:34', NULL),
(478, 248, 250, NULL, NULL, NULL, 9, 273, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 08:31:52', NULL),
(479, 126, 248, NULL, NULL, NULL, 9, 274, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 11:35:19', NULL),
(480, 248, 250, NULL, NULL, NULL, 9, 274, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 11:35:44', NULL),
(481, 250, 253, NULL, 12, NULL, 9, 274, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-16 11:37:18', NULL),
(482, 126, 248, NULL, NULL, NULL, 9, 279, NULL, 1, '2022-08-18', NULL, '2022-02-02', 'user', '2022-08-17 15:05:09', NULL),
(483, 248, 249, NULL, NULL, NULL, 9, 279, NULL, 1, '2022-08-18', NULL, '2022-02-02', NULL, '2022-08-17 15:05:28', NULL),
(484, 249, 248, NULL, NULL, NULL, 9, 279, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-17 15:05:54', NULL),
(485, 248, 250, NULL, NULL, NULL, 9, 279, NULL, 1, '2022-08-17', NULL, '2022-02-02', 'user', '2022-08-17 15:06:23', NULL),
(486, 250, 251, NULL, NULL, NULL, 9, 279, NULL, 1, '2022-08-18', NULL, '2022-02-02', NULL, '2022-08-17 15:07:16', NULL),
(487, 251, 250, NULL, NULL, NULL, 9, 279, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-17 15:07:39', NULL),
(488, 248, 249, NULL, NULL, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', NULL, '2022-08-18 04:33:58', NULL),
(489, 248, 250, NULL, NULL, NULL, 9, 280, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-18 04:43:59', NULL),
(490, 248, 250, NULL, NULL, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', 'user', '2022-08-18 04:45:36', NULL),
(491, 248, 250, NULL, NULL, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', 'user', '2022-08-18 04:46:04', NULL),
(492, 248, 250, NULL, NULL, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', 'user', '2022-08-18 04:46:40', NULL),
(493, 248, 250, NULL, NULL, NULL, 9, 280, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-18 04:47:03', NULL),
(494, 248, 250, NULL, NULL, NULL, 9, 280, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-18 04:47:28', NULL),
(495, 248, 250, NULL, NULL, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', 'user', '2022-08-18 04:47:49', NULL),
(496, 248, 250, NULL, NULL, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', 'user', '2022-08-18 04:49:15', NULL),
(497, 248, 250, NULL, NULL, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', 'user', '2022-08-18 04:51:55', NULL),
(498, 248, 250, NULL, NULL, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', 'user', '2022-08-18 04:53:31', NULL),
(499, 250, 253, NULL, 12, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', 'user', '2022-08-18 05:57:44', NULL),
(500, 250, 251, NULL, NULL, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', NULL, '2022-08-18 06:10:29', NULL),
(501, 253, 255, 12, 12, NULL, 9, 280, NULL, 1, '2022-08-18', NULL, '2022-02-02', NULL, '2022-08-18 06:16:28', NULL),
(502, 253, 254, 12, NULL, NULL, 9, 280, NULL, 1, '2022-08-19', NULL, '2022-02-02', 'user', '2022-08-18 06:18:04', NULL),
(503, 248, 249, NULL, NULL, NULL, 9, 281, NULL, 1, '2022-08-21', NULL, '2022-02-02', NULL, '2022-08-20 16:44:34', NULL),
(504, 249, 248, NULL, NULL, NULL, 9, 281, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-20 17:01:29', NULL),
(505, 248, 249, NULL, NULL, NULL, 9, 282, NULL, 1, '2022-08-21', NULL, '2022-02-02', NULL, '2022-08-20 17:17:15', NULL),
(506, 249, 248, NULL, NULL, NULL, 9, 282, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-20 17:17:47', NULL),
(507, 248, 249, NULL, NULL, NULL, 9, 283, NULL, 1, '2022-08-22', NULL, '2022-02-02', NULL, '2022-08-20 18:09:13', NULL),
(508, 249, 248, NULL, NULL, NULL, 9, 283, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-20 18:13:15', NULL),
(509, 249, 248, NULL, NULL, NULL, 9, 283, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-20 18:14:08', NULL),
(510, 248, 249, NULL, NULL, NULL, 9, 284, NULL, 1, '2022-08-22', NULL, '2022-02-02', NULL, '2022-08-21 02:56:58', NULL),
(511, 249, 248, NULL, NULL, NULL, 9, 284, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-21 02:58:21', NULL),
(512, 249, 248, NULL, NULL, NULL, 9, 284, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-21 02:58:54', NULL),
(513, 248, 250, NULL, NULL, NULL, 9, 284, NULL, 1, '2022-08-22', NULL, '2022-02-02', 'user', '2022-08-21 03:00:30', NULL),
(514, 248, 249, NULL, NULL, NULL, 9, 285, NULL, 1, '2022-08-22', NULL, '2022-02-02', NULL, '2022-08-21 03:19:21', NULL),
(515, 249, 248, NULL, NULL, NULL, 9, 285, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-21 03:21:06', NULL),
(516, 248, 250, NULL, NULL, NULL, 9, 285, NULL, 1, '2022-08-24', NULL, '2022-02-02', 'user', '2022-08-21 03:21:30', NULL),
(517, 250, 251, NULL, NULL, NULL, 9, 285, NULL, 1, '2022-08-22', NULL, '2022-02-02', NULL, '2022-08-21 03:22:15', NULL),
(518, 251, 250, NULL, NULL, NULL, 9, 285, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-21 03:22:55', NULL),
(519, 250, 253, NULL, 12, NULL, 9, 285, NULL, 1, '2022-08-22', NULL, '2022-02-02', 'user', '2022-08-21 03:23:22', NULL),
(520, 253, 255, 12, 12, NULL, 9, 285, NULL, 1, '2022-08-22', NULL, '2022-02-02', NULL, '2022-08-21 03:24:14', NULL),
(521, 255, 253, 12, 12, NULL, 9, 285, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-21 03:25:48', NULL),
(522, 248, 254, NULL, NULL, NULL, 9, 285, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 03:53:14', NULL),
(523, 248, 254, NULL, NULL, NULL, 9, 285, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-24 03:54:52', NULL),
(524, 248, 250, NULL, NULL, NULL, 9, 287, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 03:59:32', NULL),
(525, 248, 254, NULL, NULL, NULL, 9, 285, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 04:00:25', NULL),
(526, 248, 254, NULL, NULL, NULL, 9, 287, NULL, 1, '2022-09-09', NULL, '2022-02-02', 'user', '2022-08-24 04:00:56', NULL),
(527, 248, 255, NULL, 12, NULL, 9, 287, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 05:44:02', NULL),
(528, 248, 254, NULL, NULL, NULL, 9, 287, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 06:01:26', NULL),
(529, 248, 254, NULL, NULL, NULL, 9, 287, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 06:12:59', NULL),
(530, 248, 254, NULL, NULL, NULL, 9, 287, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 06:20:45', NULL),
(531, 248, 254, NULL, NULL, NULL, 9, 287, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 06:31:44', NULL),
(532, 254, 256, NULL, NULL, NULL, 9, 287, NULL, 1, '2022-08-26', NULL, '2022-02-02', NULL, '2022-08-24 06:36:48', NULL),
(533, 256, 254, NULL, NULL, NULL, 9, 287, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-24 06:37:36', NULL),
(534, 248, 254, NULL, NULL, NULL, 9, 287, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 06:52:01', NULL),
(535, 248, 254, NULL, NULL, NULL, 9, 287, NULL, 1, '2022-08-26', NULL, '2022-02-02', 'user', '2022-08-24 06:52:35', NULL),
(536, 248, 254, NULL, NULL, NULL, 9, 287, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 06:53:00', NULL),
(537, 248, 254, NULL, NULL, NULL, 9, 288, NULL, 1, '2022-09-22', NULL, '2022-02-02', 'user', '2022-08-24 08:15:14', NULL),
(538, 248, 254, NULL, NULL, NULL, 9, 288, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 08:16:21', NULL),
(539, 248, 254, NULL, NULL, NULL, 9, 288, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 08:16:43', NULL),
(540, 248, 254, NULL, NULL, NULL, 9, 288, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 08:29:07', NULL),
(541, 248, 254, NULL, NULL, NULL, 9, 288, NULL, 1, '2022-08-25', NULL, '2022-02-02', 'user', '2022-08-24 08:30:07', NULL),
(542, 248, 254, NULL, NULL, NULL, 9, 288, NULL, 1, '2022-09-16', NULL, '2022-02-02', 'user', '2022-08-24 08:32:24', NULL),
(543, 248, 254, NULL, NULL, NULL, 9, 288, NULL, 1, '2022-08-26', NULL, '2022-02-02', 'user', '2022-08-24 09:12:39', NULL),
(544, 248, 254, NULL, NULL, NULL, 9, 288, NULL, 1, '2022-09-09', NULL, '2022-02-02', 'user', '2022-08-24 09:36:46', NULL),
(545, 254, 256, NULL, NULL, NULL, 9, 288, NULL, 1, '2022-09-03', NULL, '2022-02-02', NULL, '2022-08-24 10:28:40', NULL),
(546, 256, 254, NULL, NULL, NULL, 9, 288, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-24 10:29:07', NULL),
(547, 254, 253, NULL, 12, NULL, 9, 288, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-24 10:29:30', NULL),
(548, 126, 253, NULL, 12, NULL, 9, 289, NULL, 1, '2022-08-26', NULL, '2022-02-02', 'user', '2022-08-25 02:43:43', NULL),
(549, 126, 248, NULL, NULL, NULL, 9, 290, NULL, 1, '2022-08-26', NULL, '2022-02-02', 'user', '2022-08-25 02:50:07', NULL),
(550, 250, 254, NULL, NULL, NULL, 9, 293, NULL, 1, '2022-08-27', NULL, '2022-02-02', 'user', '2022-08-25 06:19:59', NULL),
(551, 250, 254, NULL, NULL, NULL, 9, 293, NULL, 1, '2022-08-26', NULL, '2022-02-02', 'user', '2022-08-25 06:24:09', NULL),
(552, 250, 254, NULL, NULL, NULL, 9, 293, NULL, 1, '2022-08-26', NULL, '2022-02-02', 'user', '2022-08-25 06:24:18', NULL),
(553, 250, 254, NULL, NULL, NULL, 9, 293, NULL, 1, '2022-08-27', NULL, '2022-02-02', 'user', '2022-08-25 06:25:54', NULL),
(554, 250, 254, NULL, NULL, NULL, 9, 293, NULL, 1, '2022-08-27', NULL, '2022-02-02', 'user', '2022-08-25 06:27:21', NULL),
(555, 250, 254, NULL, NULL, NULL, 9, 293, NULL, 1, '2022-08-26', NULL, '2022-02-02', 'user', '2022-08-25 06:28:10', NULL),
(556, 254, 250, NULL, NULL, NULL, 9, 293, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-25 09:12:06', NULL),
(557, 250, 257, NULL, NULL, NULL, 9, 294, NULL, 1, '2022-09-17', NULL, '2022-02-02', 'user', '2022-08-25 09:16:38', NULL),
(558, 257, 258, NULL, NULL, NULL, 9, 294, NULL, 1, '2022-08-26', NULL, '2022-02-02', NULL, '2022-08-25 09:20:19', NULL),
(559, 258, 257, NULL, NULL, NULL, 9, 294, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-25 09:20:52', NULL),
(560, 250, 257, NULL, NULL, NULL, 9, 295, NULL, 1, '2022-09-10', NULL, '2022-02-02', 'user', '2022-08-25 09:29:03', NULL),
(561, 257, 250, NULL, NULL, NULL, 9, 295, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-25 09:33:24', NULL),
(562, 257, 258, NULL, NULL, NULL, 9, 295, NULL, 1, '2022-09-01', NULL, '2022-02-02', NULL, '2022-08-25 09:33:39', NULL),
(563, 258, 257, NULL, NULL, NULL, 9, 295, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-25 09:34:02', NULL),
(564, 250, 257, NULL, NULL, NULL, 9, 296, NULL, 1, '2022-08-26', NULL, '2022-02-02', 'user', '2022-08-25 10:40:42', NULL),
(565, 257, 258, NULL, NULL, NULL, 9, 296, NULL, 1, '2022-08-27', NULL, '2022-02-02', NULL, '2022-08-25 10:41:44', NULL),
(566, 258, 257, NULL, NULL, NULL, 9, 296, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-25 10:42:13', NULL),
(567, 257, 250, NULL, NULL, NULL, 9, 296, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-25 10:43:04', NULL),
(568, 250, 253, NULL, 12, NULL, 9, 297, NULL, 1, '2022-08-26', NULL, '2022-02-02', 'user', '2022-08-25 10:45:11', NULL),
(569, 253, 255, 12, 12, NULL, 9, 297, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-25 10:46:06', NULL),
(570, 255, 253, 12, 12, NULL, 9, 297, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-25 10:46:35', NULL),
(571, 253, 250, 12, NULL, NULL, 9, 297, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-25 10:46:50', NULL),
(572, 253, 250, 12, NULL, NULL, 9, 297, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-25 10:50:46', NULL),
(573, 253, 254, 12, NULL, NULL, 9, 297, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-08-25 10:50:52', NULL),
(574, 248, 249, NULL, NULL, NULL, 9, 298, NULL, 1, '2022-08-31', NULL, '2022-02-02', NULL, '2022-08-28 03:43:42', NULL),
(575, 249, 248, NULL, NULL, NULL, 9, 298, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-28 03:44:26', NULL),
(576, 248, 250, NULL, NULL, NULL, 9, 298, NULL, 1, '2022-08-30', NULL, '2022-02-02', 'user', '2022-08-28 04:28:28', NULL),
(577, 250, 251, NULL, NULL, NULL, 9, 298, NULL, 1, '2022-08-29', NULL, '2022-02-02', NULL, '2022-08-28 04:30:00', NULL),
(578, 251, 250, NULL, NULL, NULL, 9, 298, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-28 04:30:33', NULL),
(579, 250, 253, NULL, 12, NULL, 9, 298, NULL, 1, '2022-08-29', NULL, '2022-02-02', 'user', '2022-08-28 05:12:09', NULL),
(580, 253, 255, 12, 12, NULL, 9, 298, NULL, 1, '2022-08-30', NULL, '2022-02-02', NULL, '2022-08-28 05:15:49', NULL),
(581, 253, 254, 12, NULL, NULL, 9, 298, NULL, 1, '2022-08-29', NULL, '2022-02-02', 'user', '2022-08-28 05:31:23', NULL),
(582, 254, 256, NULL, NULL, NULL, 9, 298, NULL, 1, '2022-08-29', NULL, '2022-02-02', NULL, '2022-08-28 05:32:04', NULL),
(583, 256, 254, NULL, NULL, NULL, 9, 298, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-28 05:32:56', NULL),
(584, 256, 254, NULL, NULL, NULL, 9, 298, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-28 05:33:14', NULL),
(585, 254, 257, NULL, NULL, NULL, 9, 298, NULL, 1, '2022-08-29', NULL, '2022-02-02', 'user', '2022-08-28 05:33:40', NULL),
(586, 257, 258, NULL, NULL, NULL, 9, 298, NULL, 1, '2022-08-29', NULL, '2022-02-02', NULL, '2022-08-28 05:34:20', NULL),
(587, 258, 257, NULL, NULL, NULL, 9, 298, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-08-28 05:34:59', NULL),
(588, 248, 249, NULL, NULL, NULL, 9, 300, NULL, 1, '2022-08-30', NULL, '2022-02-02', NULL, '2022-08-29 02:59:44', NULL),
(589, 248, 253, NULL, 12, NULL, 9, 300, NULL, 1, '2022-08-30', NULL, '2022-02-02', 'user', '2022-08-29 03:25:52', NULL),
(590, 248, 253, NULL, 12, NULL, 9, 300, NULL, 1, '2022-08-30', NULL, '2022-02-02', 'user', '2022-08-29 03:26:14', NULL),
(591, 248, 253, NULL, 12, NULL, 9, 302, NULL, 1, '2022-08-31', NULL, '2022-02-02', 'user', '2022-08-29 03:27:21', NULL),
(592, 248, 253, NULL, 12, NULL, 9, 303, NULL, 1, '2022-08-31', NULL, '2022-02-02', 'user', '2022-08-29 03:28:35', NULL),
(593, 248, 250, NULL, NULL, NULL, 9, 304, NULL, 1, '2022-08-30', NULL, '2022-02-02', 'user', '2022-08-29 04:56:11', NULL),
(594, 248, 249, NULL, NULL, NULL, 9, 304, NULL, 1, '2022-08-30', NULL, '2022-02-02', NULL, '2022-08-29 04:56:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_leave_permission`
--

CREATE TABLE `user_leave_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `permision_holder_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_leave_permission`
--

INSERT INTO `user_leave_permission` (`id`, `user_id`, `permision_holder_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 6, 4, 1, '1', NULL, NULL, NULL),
(2, 6, 4, 1, '1', NULL, '2021-10-18 06:54:15', '2021-10-18 06:54:15'),
(3, 6, 4, 1, '1', NULL, '2021-10-18 06:54:15', '2021-10-18 06:54:15'),
(4, 6, 4, 1, '1', NULL, '2021-10-18 06:54:15', '2021-10-18 06:54:15'),
(5, 6, 4, 1, '1', NULL, '2021-10-18 06:54:15', '2021-10-18 06:54:15'),
(6, 6, 4, 1, '1', NULL, '2021-10-18 06:54:15', '2021-10-18 06:54:15'),
(7, 6, 4, 1, '1', NULL, '2021-10-18 06:54:35', '2021-10-18 06:54:35'),
(8, 6, 4, 1, '1', NULL, '2021-10-18 08:26:14', '2021-10-18 08:26:14'),
(9, 5, 1, 1, '1', NULL, '2021-10-18 08:52:40', '2021-10-18 08:52:40'),
(10, 5, 2, 1, '1', NULL, '2021-10-18 08:53:11', '2021-10-18 08:53:11'),
(11, 5, 4, 1, '1', NULL, '2021-10-18 08:53:11', '2021-10-18 08:53:11'),
(12, 4, 1, 1, '1', NULL, '2021-10-18 08:55:09', '2021-10-18 08:55:09'),
(36, 7, 1, 1, '7', NULL, '2021-10-18 11:29:45', '2021-10-18 11:29:45'),
(37, 7, 2, 1, '7', NULL, '2021-10-18 11:29:45', '2021-10-18 11:29:45'),
(38, 7, 4, 1, '7', NULL, '2021-10-18 11:29:45', '2021-10-18 11:29:45'),
(39, 8, 1, 1, '7', NULL, '2021-10-18 11:45:07', '2021-10-18 11:45:07'),
(44, 10, 1, 1, '10', NULL, '2021-10-24 11:10:27', '2021-10-24 11:10:27'),
(45, 10, 9, 1, '10', NULL, '2021-10-24 11:10:27', '2021-10-24 11:10:27'),
(46, 10, 10, 1, '10', NULL, '2021-10-24 11:10:27', '2021-10-24 11:10:27'),
(47, 1, 1, 1, '1', NULL, '2021-10-26 10:05:20', '2021-10-26 10:05:20'),
(48, 1, 10, 1, '1', NULL, '2021-10-26 10:05:20', '2021-10-26 10:05:20'),
(49, 9, 1, 1, '1', NULL, '2021-11-02 04:15:18', '2021-11-02 04:15:18'),
(50, 11, 10, 1, '1', NULL, '2021-11-02 04:28:27', '2021-11-02 04:28:27'),
(51, 12, 1, 1, '10', NULL, '2021-11-02 09:10:45', '2021-11-02 09:10:45'),
(52, 13, 9, 1, '10', NULL, '2021-11-02 09:11:58', '2021-11-02 09:11:58'),
(53, 13, 10, 1, '10', NULL, '2021-11-02 09:11:58', '2021-11-02 09:11:58'),
(54, 13, 11, 1, '10', NULL, '2021-11-02 09:11:58', '2021-11-02 09:11:58'),
(55, 14, 1, 1, '10', NULL, '2021-11-02 09:14:11', '2021-11-02 09:14:11'),
(56, 14, 10, 1, '10', NULL, '2021-11-02 09:14:11', '2021-11-02 09:14:11'),
(57, 15, 1, 1, '1', NULL, '2021-11-02 10:03:02', '2021-11-02 10:03:02'),
(58, 15, 10, 1, '1', NULL, '2021-11-02 10:03:02', '2021-11-02 10:03:02'),
(59, 16, 1, 1, '1', NULL, '2021-11-02 10:29:40', '2021-11-02 10:29:40'),
(61, 18, 16, 1, '16', NULL, '2021-11-02 10:46:14', '2021-11-02 10:46:14'),
(67, 17, 16, 1, '16', NULL, '2021-11-04 04:40:41', '2021-11-04 04:40:41'),
(68, 17, 18, 1, '16', NULL, '2021-11-04 04:40:41', '2021-11-04 04:40:41'),
(69, 21, 19, 1, '17', NULL, '2021-11-04 04:50:42', '2021-11-04 04:50:42'),
(70, 20, 16, 1, '18', NULL, '2021-11-04 05:24:33', '2021-11-04 05:24:33'),
(71, 22, 16, 1, '20', NULL, '2021-11-04 06:01:36', '2021-11-04 06:01:36'),
(73, 24, 16, 1, '20', NULL, '2021-11-04 06:05:14', '2021-11-04 06:05:14'),
(77, 25, 16, 1, '16', NULL, '2021-11-04 08:56:07', '2021-11-04 08:56:07'),
(80, 27, 17, 1, '17', NULL, '2021-11-07 04:52:10', '2021-11-07 04:52:10'),
(81, 28, 17, 1, '17', NULL, '2021-11-07 04:55:21', '2021-11-07 04:55:21'),
(82, 29, 17, 1, '17', NULL, '2021-11-07 05:00:50', '2021-11-07 05:00:50'),
(83, 26, 1, 1, '1', NULL, '2021-11-07 05:37:52', '2021-11-07 05:37:52'),
(84, 30, 1, 1, '1', NULL, '2021-11-07 06:17:04', '2021-11-07 06:17:04'),
(85, 30, 19, 1, '1', NULL, '2021-11-07 06:17:04', '2021-11-07 06:17:04'),
(86, 31, 1, 1, '1', NULL, '2021-11-07 06:23:45', '2021-11-07 06:23:45'),
(87, 31, 19, 1, '1', NULL, '2021-11-07 06:23:45', '2021-11-07 06:23:45'),
(92, 32, 1, 1, '1', NULL, '2021-11-07 07:10:01', '2021-11-07 07:10:01'),
(93, 32, 19, 1, '1', NULL, '2021-11-07 07:10:01', '2021-11-07 07:10:01'),
(94, 33, 1, 1, '19', NULL, '2021-11-09 11:15:13', '2021-11-09 11:15:13'),
(95, 33, 19, 1, '19', NULL, '2021-11-09 11:15:13', '2021-11-09 11:15:13'),
(96, 34, 1, 1, '19', NULL, '2021-11-09 11:15:59', '2021-11-09 11:15:59'),
(97, 34, 19, 1, '19', NULL, '2021-11-09 11:15:59', '2021-11-09 11:15:59'),
(104, 35, 1, 1, '19', NULL, '2021-11-10 06:02:11', '2021-11-10 06:02:11'),
(105, 35, 19, 1, '19', NULL, '2021-11-10 06:02:11', '2021-11-10 06:02:11'),
(106, 36, 1, 1, '19', NULL, '2021-11-10 06:02:35', '2021-11-10 06:02:35'),
(107, 36, 19, 1, '19', NULL, '2021-11-10 06:02:35', '2021-11-10 06:02:35'),
(115, 38, 1, 1, '19', NULL, '2021-11-14 07:25:32', '2021-11-14 07:25:32'),
(116, 39, 1, 1, '19', NULL, '2021-11-14 07:25:46', '2021-11-14 07:25:46'),
(117, 40, 1, 1, '19', NULL, '2021-11-14 07:27:34', '2021-11-14 07:27:34'),
(118, 41, 16, 1, '19', NULL, '2021-11-14 07:28:20', '2021-11-14 07:28:20'),
(119, 42, 16, 1, '19', NULL, '2021-11-14 07:29:07', '2021-11-14 07:29:07'),
(120, 43, 16, 1, '19', NULL, '2021-11-14 07:29:32', '2021-11-14 07:29:32'),
(121, 44, 16, 1, '19', NULL, '2021-11-14 07:29:55', '2021-11-14 07:29:55'),
(122, 45, 16, 1, '19', NULL, '2021-11-14 07:30:27', '2021-11-14 07:30:27'),
(123, 46, 16, 1, '19', NULL, '2021-11-14 08:04:37', '2021-11-14 08:04:37'),
(124, 47, 16, 1, '19', NULL, '2021-11-14 08:04:53', '2021-11-14 08:04:53'),
(125, 48, 16, 1, '19', NULL, '2021-11-14 08:05:19', '2021-11-14 08:05:19'),
(126, 49, 16, 1, '19', NULL, '2021-11-14 08:05:58', '2021-11-14 08:05:58'),
(127, 50, 16, 1, '19', NULL, '2021-11-14 08:06:54', '2021-11-14 08:06:54'),
(128, 51, 1, 1, '19', NULL, '2021-11-14 08:10:00', '2021-11-14 08:10:00'),
(129, 52, 1, 1, '19', NULL, '2021-11-14 08:10:23', '2021-11-14 08:10:23'),
(130, 53, 1, 1, '19', NULL, '2021-11-14 08:10:56', '2021-11-14 08:10:56'),
(131, 54, 1, 1, '19', NULL, '2021-11-14 08:12:43', '2021-11-14 08:12:43'),
(132, 55, 1, 1, '19', NULL, '2021-11-14 08:13:06', '2021-11-14 08:13:06'),
(133, 56, 1, 1, '19', NULL, '2021-11-14 08:14:35', '2021-11-14 08:14:35'),
(134, 57, 1, 1, '19', NULL, '2021-11-14 08:19:07', '2021-11-14 08:19:07'),
(135, 58, 1, 1, '19', NULL, '2021-11-14 08:21:57', '2021-11-14 08:21:57'),
(136, 59, 1, 1, '19', NULL, '2021-11-14 08:23:18', '2021-11-14 08:23:18'),
(149, 37, 1, 1, '37', NULL, '2021-11-15 04:36:43', '2021-11-15 04:36:43'),
(150, 37, 16, 1, '37', NULL, '2021-11-15 04:36:43', '2021-11-15 04:36:43'),
(151, 37, 60, 1, '37', NULL, '2021-11-15 04:36:43', '2021-11-15 04:36:43'),
(152, 19, 1, 1, '19', NULL, '2021-11-28 06:03:14', '2021-11-28 06:03:14'),
(153, 19, 16, 1, '19', NULL, '2021-11-28 06:03:14', '2021-11-28 06:03:14'),
(154, 19, 37, 1, '19', NULL, '2021-11-28 06:03:14', '2021-11-28 06:03:14'),
(155, 23, 16, 1, '60', NULL, '2021-11-29 06:02:00', '2021-11-29 06:02:00'),
(164, 61, 16, 1, '61', NULL, '2021-12-14 10:00:43', '2021-12-14 10:00:43'),
(166, 62, 61, 1, '62', NULL, '2021-12-14 11:02:26', '2021-12-14 11:02:26'),
(168, 63, 62, 1, '60', NULL, '2021-12-14 11:40:24', '2021-12-14 11:40:24'),
(169, 60, 16, 1, '60', NULL, '2022-01-13 05:43:19', '2022-01-13 05:43:19'),
(170, 64, 61, 1, '60', NULL, '2022-01-16 04:52:21', '2022-01-16 04:52:21'),
(171, 65, 61, 1, '60', NULL, '2022-01-24 06:57:41', '2022-01-24 06:57:41'),
(172, 66, 61, 1, '60', NULL, '2022-01-24 06:58:32', '2022-01-24 06:58:32'),
(173, 67, 61, 1, '60', NULL, '2022-01-24 06:59:04', '2022-01-24 06:59:04'),
(174, 68, 60, 1, '60', NULL, '2022-02-01 05:47:27', '2022-02-01 05:47:27'),
(175, 68, 61, 1, '60', NULL, '2022-02-01 05:47:27', '2022-02-01 05:47:27'),
(176, 68, 63, 1, '60', NULL, '2022-02-01 05:47:27', '2022-02-01 05:47:27'),
(177, 68, 64, 1, '60', NULL, '2022-02-01 05:47:27', '2022-02-01 05:47:27'),
(178, 69, 60, 1, '60', NULL, '2022-02-02 06:50:43', '2022-02-02 06:50:43'),
(182, 71, 62, 1, '60', NULL, '2022-02-03 05:58:36', '2022-02-03 05:58:36'),
(183, 71, 70, 1, '60', NULL, '2022-02-03 05:58:36', '2022-02-03 05:58:36'),
(184, 70, 69, 1, '60', NULL, '2022-02-03 06:03:00', '2022-02-03 06:03:00'),
(185, 70, 70, 1, '60', NULL, '2022-02-03 06:03:00', '2022-02-03 06:03:00'),
(186, 72, 61, 1, '60', NULL, '2022-02-03 06:07:31', '2022-02-03 06:07:31'),
(187, 72, 69, 1, '60', NULL, '2022-02-03 06:07:31', '2022-02-03 06:07:31'),
(188, 73, 60, 1, '60', NULL, '2022-02-03 06:09:29', '2022-02-03 06:09:29'),
(189, 74, 69, 1, '60', NULL, '2022-02-07 11:29:49', '2022-02-07 11:29:49'),
(190, 75, 60, 1, '60', NULL, '2022-02-08 04:20:01', '2022-02-08 04:20:01'),
(191, 76, 73, 1, '60', NULL, '2022-02-08 04:43:28', '2022-02-08 04:43:28'),
(192, 77, 59, 1, '60', NULL, '2022-02-10 08:34:13', '2022-02-10 08:34:13'),
(193, 78, 16, 1, '60', NULL, '2022-03-22 11:05:55', '2022-03-22 11:05:55'),
(194, 79, 16, 1, '78', NULL, '2022-04-24 04:36:13', '2022-04-24 04:36:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternative_role_levels`
--
ALTER TABLE `alternative_role_levels`
  ADD PRIMARY KEY (`alter_id`);

--
-- Indexes for table `auth_entry_table`
--
ALTER TABLE `auth_entry_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_to_auth_table`
--
ALTER TABLE `auth_to_auth_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college_division`
--
ALTER TABLE `college_division`
  ADD PRIMARY KEY (`college_div_id`);

--
-- Indexes for table `college_subject`
--
ALTER TABLE `college_subject`
  ADD PRIMARY KEY (`college_sub_id`);

--
-- Indexes for table `default_forms`
--
ALTER TABLE `default_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_sub_forms`
--
ALTER TABLE `default_sub_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_info_all`
--
ALTER TABLE `forms_info_all`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_table`
--
ALTER TABLE `form_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_table`
--
ALTER TABLE `individual_table`
  ADD PRIMARY KEY (`indiv_id`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ministries`
--
ALTER TABLE `ministries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_default_form`
--
ALTER TABLE `new_default_form`
  ADD PRIMARY KEY (`default_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_ans`
--
ALTER TABLE `quiz_ans`
  ADD PRIMARY KEY (`new_id`);

--
-- Indexes for table `quiz_ques`
--
ALTER TABLE `quiz_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regularityauthorities`
--
ALTER TABLE `regularityauthorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `roles_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `saved_format`
--
ALTER TABLE `saved_format`
  ADD PRIMARY KEY (`saved_id`);

--
-- Indexes for table `table_39698`
--
ALTER TABLE `table_39698`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_256097`
--
ALTER TABLE `table_256097`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_609763`
--
ALTER TABLE `table_609763`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_675032`
--
ALTER TABLE `table_675032`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_728329`
--
ALTER TABLE `table_728329`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1800209`
--
ALTER TABLE `table_1800209`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1843842`
--
ALTER TABLE `table_1843842`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1944796`
--
ALTER TABLE `table_1944796`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2149289`
--
ALTER TABLE `table_2149289`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2309509`
--
ALTER TABLE `table_2309509`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2430057`
--
ALTER TABLE `table_2430057`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2723344`
--
ALTER TABLE `table_2723344`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2737235`
--
ALTER TABLE `table_2737235`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2859903`
--
ALTER TABLE `table_2859903`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3071502`
--
ALTER TABLE `table_3071502`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3147639`
--
ALTER TABLE `table_3147639`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3319707`
--
ALTER TABLE `table_3319707`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3395314`
--
ALTER TABLE `table_3395314`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3417610`
--
ALTER TABLE `table_3417610`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3599948`
--
ALTER TABLE `table_3599948`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_4840576`
--
ALTER TABLE `table_4840576`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_5063945`
--
ALTER TABLE `table_5063945`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_5474813`
--
ALTER TABLE `table_5474813`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_5486442`
--
ALTER TABLE `table_5486442`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_5549740`
--
ALTER TABLE `table_5549740`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6202256`
--
ALTER TABLE `table_6202256`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6230147`
--
ALTER TABLE `table_6230147`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6380043`
--
ALTER TABLE `table_6380043`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6402644`
--
ALTER TABLE `table_6402644`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6432749`
--
ALTER TABLE `table_6432749`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6622457`
--
ALTER TABLE `table_6622457`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6836824`
--
ALTER TABLE `table_6836824`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6887811`
--
ALTER TABLE `table_6887811`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6961751`
--
ALTER TABLE `table_6961751`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7461715`
--
ALTER TABLE `table_7461715`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7509727`
--
ALTER TABLE `table_7509727`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7548106`
--
ALTER TABLE `table_7548106`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7826036`
--
ALTER TABLE `table_7826036`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7981003`
--
ALTER TABLE `table_7981003`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8069085`
--
ALTER TABLE `table_8069085`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8142441`
--
ALTER TABLE `table_8142441`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8163208`
--
ALTER TABLE `table_8163208`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8209212`
--
ALTER TABLE `table_8209212`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8284766`
--
ALTER TABLE `table_8284766`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8400121`
--
ALTER TABLE `table_8400121`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8546976`
--
ALTER TABLE `table_8546976`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8838559`
--
ALTER TABLE `table_8838559`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8861936`
--
ALTER TABLE `table_8861936`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_9057792`
--
ALTER TABLE `table_9057792`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_9072943`
--
ALTER TABLE `table_9072943`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_9277306`
--
ALTER TABLE `table_9277306`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_9321783`
--
ALTER TABLE `table_9321783`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_offices`
--
ALTER TABLE `unit_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `users_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `users_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_departments`
--
ALTER TABLE `user_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_forms`
--
ALTER TABLE `user_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_leave_permission`
--
ALTER TABLE `user_leave_permission`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternative_role_levels`
--
ALTER TABLE `alternative_role_levels`
  MODIFY `alter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_entry_table`
--
ALTER TABLE `auth_entry_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `auth_to_auth_table`
--
ALTER TABLE `auth_to_auth_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `college_division`
--
ALTER TABLE `college_division`
  MODIFY `college_div_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `college_subject`
--
ALTER TABLE `college_subject`
  MODIFY `college_sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `default_forms`
--
ALTER TABLE `default_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `default_sub_forms`
--
ALTER TABLE `default_sub_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `forms_info_all`
--
ALTER TABLE `forms_info_all`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT for table `form_table`
--
ALTER TABLE `form_table`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `group_user`
--
ALTER TABLE `group_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `individual_table`
--
ALTER TABLE `individual_table`
  MODIFY `indiv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ministries`
--
ALTER TABLE `ministries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `new_default_form`
--
ALTER TABLE `new_default_form`
  MODIFY `default_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1463;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `quiz_ans`
--
ALTER TABLE `quiz_ans`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `quiz_ques`
--
ALTER TABLE `quiz_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `regularityauthorities`
--
ALTER TABLE `regularityauthorities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `saved_format`
--
ALTER TABLE `saved_format`
  MODIFY `saved_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `table_39698`
--
ALTER TABLE `table_39698`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_256097`
--
ALTER TABLE `table_256097`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `table_609763`
--
ALTER TABLE `table_609763`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_675032`
--
ALTER TABLE `table_675032`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1025;

--
-- AUTO_INCREMENT for table `table_728329`
--
ALTER TABLE `table_728329`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_1800209`
--
ALTER TABLE `table_1800209`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_1843842`
--
ALTER TABLE `table_1843842`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_1944796`
--
ALTER TABLE `table_1944796`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_2149289`
--
ALTER TABLE `table_2149289`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_2309509`
--
ALTER TABLE `table_2309509`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_2430057`
--
ALTER TABLE `table_2430057`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_2723344`
--
ALTER TABLE `table_2723344`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_2737235`
--
ALTER TABLE `table_2737235`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_2859903`
--
ALTER TABLE `table_2859903`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_3071502`
--
ALTER TABLE `table_3071502`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_3147639`
--
ALTER TABLE `table_3147639`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_3319707`
--
ALTER TABLE `table_3319707`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_3395314`
--
ALTER TABLE `table_3395314`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_3417610`
--
ALTER TABLE `table_3417610`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_3599948`
--
ALTER TABLE `table_3599948`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_4840576`
--
ALTER TABLE `table_4840576`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_5063945`
--
ALTER TABLE `table_5063945`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_5474813`
--
ALTER TABLE `table_5474813`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `table_5486442`
--
ALTER TABLE `table_5486442`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_5549740`
--
ALTER TABLE `table_5549740`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_6202256`
--
ALTER TABLE `table_6202256`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_6230147`
--
ALTER TABLE `table_6230147`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `table_6380043`
--
ALTER TABLE `table_6380043`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_6402644`
--
ALTER TABLE `table_6402644`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_6432749`
--
ALTER TABLE `table_6432749`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `table_6622457`
--
ALTER TABLE `table_6622457`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_6836824`
--
ALTER TABLE `table_6836824`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_6887811`
--
ALTER TABLE `table_6887811`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_6961751`
--
ALTER TABLE `table_6961751`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_7461715`
--
ALTER TABLE `table_7461715`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_7509727`
--
ALTER TABLE `table_7509727`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_7548106`
--
ALTER TABLE `table_7548106`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table_7826036`
--
ALTER TABLE `table_7826036`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_7981003`
--
ALTER TABLE `table_7981003`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_8069085`
--
ALTER TABLE `table_8069085`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `table_8142441`
--
ALTER TABLE `table_8142441`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `table_8163208`
--
ALTER TABLE `table_8163208`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_8209212`
--
ALTER TABLE `table_8209212`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_8284766`
--
ALTER TABLE `table_8284766`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_8400121`
--
ALTER TABLE `table_8400121`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `table_8546976`
--
ALTER TABLE `table_8546976`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_8838559`
--
ALTER TABLE `table_8838559`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_8861936`
--
ALTER TABLE `table_8861936`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_9057792`
--
ALTER TABLE `table_9057792`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `table_9072943`
--
ALTER TABLE `table_9072943`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table_9277306`
--
ALTER TABLE `table_9277306`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_9321783`
--
ALTER TABLE `table_9321783`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `unit_offices`
--
ALTER TABLE `unit_offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `user_departments`
--
ALTER TABLE `user_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `user_forms`
--
ALTER TABLE `user_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;

--
-- AUTO_INCREMENT for table `user_leave_permission`
--
ALTER TABLE `user_leave_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD CONSTRAINT `users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
