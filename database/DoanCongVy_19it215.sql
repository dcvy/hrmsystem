-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 22, 2020 lúc 09:02 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hrm-main`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `assets`
--

INSERT INTO `assets` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Car', 'Car', '2020-12-22 06:27:43', '2020-12-22 06:27:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `assign_assets`
--

CREATE TABLE `assign_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL,
  `authority_id` int(10) UNSIGNED NOT NULL,
  `date_of_assignment` date NOT NULL,
  `date_of_release` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `assign_assets`
--

INSERT INTO `assign_assets` (`id`, `user_id`, `asset_id`, `authority_id`, `date_of_assignment`, `date_of_release`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 6, '2020-12-06', '2020-12-31', '2020-12-22 06:28:08', '2020-12-22 06:28:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `assign_projects`
--

CREATE TABLE `assign_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `authority_id` int(10) UNSIGNED NOT NULL,
  `date_of_assignment` date NOT NULL,
  `date_of_release` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `assign_projects`
--

INSERT INTO `assign_projects` (`id`, `user_id`, `project_id`, `authority_id`, `date_of_assignment`, `date_of_release`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 4, '2020-12-21', '2020-12-31', '2020-12-22 06:27:17', '2020-12-22 06:27:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `clients`
--

INSERT INTO `clients` (`id`, `name`, `address`, `company`, `code`, `created_at`, `updated_at`) VALUES
(1, 'nguyen van dat', '69 Trung Nu Vuong', 'Xuan Lanh', '1000', '2020-12-22 06:05:38', '2020-12-22 06:05:38'),
(2, 'phung thi ngoc trinh', '20 Huyen Tran Cong Chua', 'Marble Mountain', '1001', '2020-12-22 06:06:52', '2020-12-22 06:06:52'),
(3, 'kenny sang', '77  Bach Dang', 'theanh69', '1002', '2020-12-22 06:08:12', '2020-12-22 06:08:12'),
(4, 'do van phuoc', '66 Tran Phu', 'academy', '1003', '2020-12-22 06:09:56', '2020-12-22 06:09:56'),
(5, 'chi pheo', 'Vu Dai', 'Brick', '1004', '2020-12-22 06:11:01', '2020-12-22 06:11:01'),
(6, 'kent', '66 abc', 'Xuan Lanh', '1005', '2020-12-22 06:12:58', '2020-12-22 06:12:58'),
(7, 'wind', '55 abc', 'Xuan Lanh', '1006', '2020-12-22 06:13:34', '2020-12-22 06:13:34'),
(8, 'tfblade', '77 abc', 'Xuan Lanh', '1007', '2020-12-22 06:13:57', '2020-12-22 06:15:14'),
(9, 'tran quang huy', '66 Pasteur', 'Xuan Lanh', '1008', '2020-12-22 06:14:50', '2020-12-22 06:15:25'),
(10, 'new', '1 abc', 'Xuan Lanh', '1008', '2020-12-22 06:15:46', '2020-12-22 06:15:46'),
(11, 'nauyen a', '12 ac', 'Xuan Lanh', '1009', '2020-12-22 06:16:18', '2020-12-22 06:16:18'),
(12, 'lyly', '1234abc', 'Xuan Lanh', '1010', '2020-12-22 06:16:39', '2020-12-22 06:16:39'),
(13, 'tf', '1 bc', 'theanh69', '1011', '2020-12-22 06:17:26', '2020-12-22 06:17:26'),
(14, 'abcdef', '123bd', 'academy', '1012', '2020-12-22 06:17:41', '2020-12-22 06:17:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joining` date NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emergency_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pan_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formalities` tinyint(4) NOT NULL,
  `offer_acceptance` tinyint(4) NOT NULL,
  `probation_period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_confirmation` date NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ifsc_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pf_account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `un_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pf_status` tinyint(4) NOT NULL,
  `date_of_resignation` date NOT NULL,
  `notice_period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_working_day` date NOT NULL,
  `full_final` tinyint(4) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id`, `photo`, `code`, `name`, `status`, `gender`, `date_of_birth`, `date_of_joining`, `number`, `qualification`, `emergency_number`, `pan_number`, `father_name`, `current_address`, `permanent_address`, `formalities`, `offer_acceptance`, `probation_period`, `date_of_confirmation`, `department`, `salary`, `account_number`, `bank_name`, `ifsc_code`, `pf_account_number`, `un_number`, `pf_status`, `date_of_resignation`, `notice_period`, `last_working_day`, `full_final`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '', 'HR0001', 'HR Manager', 1, 1, '0000-00-00', '0000-00-00', '9999999999', '', '', '', '', '', '', 0, 0, '', '0000-00-00', '', '100000', '', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', 0, 1, NULL, '2020-12-22 06:30:59'),
(2, '', 'HR0002', 'newuser', 1, 1, '0000-00-00', '0000-00-00', '9999', '', '', '', '', '', '', 0, 0, '', '0000-00-00', '', '', '', '', '', '', '', 0, '0000-00-00', '0', '0000-00-00', 0, 3, '2020-12-21 07:52:16', '2020-12-21 07:52:16'),
(3, 'C:\\xampp\\htdocs\\hrm-main\\public\\photos/a.png', '0002', 'nguyen van nguyen', 1, 0, '2020-12-21', '2020-12-21', '123456789', 'MBA', '1234', '1234', 'tu', '40 ham nghi', '40 ham nghi', 1, 1, '180', '2020-12-02', 'IT', '12000', '6789', 'Dong A Bank', '1234', '1234', '1234', 1, '2020-12-02', '2', '2020-12-22', 1, 4, '2020-12-21 11:19:59', '2020-12-21 11:19:59'),
(4, 'C:\\xampp\\htdocs\\hrm-main\\public\\photos/a.png', '0003', 'le van luyen', 1, 0, '2020-12-21', '2020-12-21', '0123456789', 'B.Com', '1234', '1234', 'b', '193 nguyen luong bang', '193 nguen luong bang', 1, 1, '90', '2020-12-02', 'Marketplace', '10000', '0003', 'BIDV', '12345', '12345', '12345', 1, '2020-12-01', '1', '2020-12-01', 1, 5, '2020-12-21 11:32:47', '2020-12-22 06:28:46'),
(5, '', 'HR0002', 'doan cong vy', 1, 1, '0000-00-00', '2020-12-01', '9999', 'Engineering(B.Tech+M.Tech)', '0905710126', '1234', 'dung', '70 hoang cong chat', '70 hoang cong chat', 1, 1, '180', '2020-12-29', 'IT', '100000', '0004', '12345', '123456', '123456', '123456', 1, '2020-12-09', '2', '2020-12-24', 1, 6, '2020-12-21 11:36:56', '2020-12-21 11:45:46'),
(6, 'C:\\xampp\\htdocs\\hrm-main\\public\\photos/a.png', '0004', 'luong xuan tien', 1, 0, '2020-12-22', '2020-12-22', '1234567890', 'Engineering(B.Tech)', '1234', '1234', 'ta', '68 Bach Dang', '68 Bach dang', 1, 1, '90', '2020-12-01', 'Social Media', '8000', '0005', 'argibank', '1234', '1234', '1225', 1, '2020-12-01', '1', '2020-12-31', 1, 7, '2020-12-22 06:24:03', '2020-12-22 06:24:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_purchase` date NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `expenses`
--

INSERT INTO `expenses` (`id`, `user_id`, `item`, `purchase_from`, `date_of_purchase`, `amount`, `created_at`, `updated_at`) VALUES
(1, 6, 'car', 'ferrari', '2020-12-31', 25, '2020-12-22 06:29:09', '2020-12-22 06:29:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2020_12_05_111437_create_users_table', 1),
('2020_12_05_120223_create_password_resets_table', 1),
('2020_12_05_144604_create_roles_table', 1),
('2020_12_05_210832_create_user_roles_table', 1),
('2020_12_06_104008_create_profiles_table', 1),
('2020_12_06_111416_create_assets_table', 1),
('2020_12_06_123731_create_assign_assets_table', 1),
('2020_12_06_161800_create_training_programs_table', 1),
('2020_12_06_210112_create_expenses_table', 1),
('2020_12_07_115938_create_employees_table', 1),
('2020_12_07_162939_create_promotions_table', 1),
('2020_12_07_170605_create_training_invites_table', 1),
('2020_12_08_123435_create_clients_table', 1),
('2020_12_08_131835_create_projects_table', 1),
('2020_12_08_144352_create_posts_table', 1),
('2020_12_08_144545_create_post_replies_table', 1),
('2020_12_08_223652_create_assign_projects_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `code`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 'Online Trading Website', 'web lazada', 'WEB01', 2, '2020-12-22 06:26:40', '2020-12-22 06:26:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `old_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `old_salary` int(11) NOT NULL,
  `new_salary` int(11) NOT NULL,
  `date_of_promotion` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `promotions`
--

INSERT INTO `promotions` (`id`, `emp_id`, `old_designation`, `new_designation`, `old_salary`, `new_salary`, `date_of_promotion`, `created_at`, `updated_at`) VALUES
(1, 4, 'Software Developer', 'Manager', 7000, 10000, '2020-12-31', '2020-12-22 06:28:46', '2020-12-22 06:28:46'),
(2, 1, 'Admin', 'Admin', 0, 100000, '2020-12-31', '2020-12-22 06:30:59', '2020-12-22 06:30:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(2, 'Director', 'Company Director', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(3, 'Research Analyst', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(4, 'Senior Research Analyst', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(5, 'Team Lead', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(6, 'IT Executive', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(7, 'HR Manager', 'Human Resource Manager', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(8, 'Associate-Enforcement', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(9, 'Enforcement Head', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(10, 'Finance Controller', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(11, 'Consultant', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(12, 'Front Desk Executive', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(13, 'Software Developer', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(14, 'Senior Software Developer', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(15, 'Accounts Executive', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(16, 'Manager', 'Has all the rights', '2020-12-21 07:13:49', '2020-12-21 07:13:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `training_invites`
--

CREATE TABLE `training_invites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `training_invites`
--

INSERT INTO `training_invites` (`id`, `user_id`, `program_id`, `description`, `date_from`, `date_to`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'part-time work', '2020-12-02', '2020-12-26', '2020-12-22 06:30:10', '2020-12-22 06:30:10'),
(2, 1, 1, 'part-time work', '2020-12-01', '2020-12-31', '2020-12-22 06:30:31', '2020-12-22 06:30:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `training_programs`
--

CREATE TABLE `training_programs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `training_programs`
--

INSERT INTO `training_programs` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Junior Dev', 'junior developer', '2020-12-22 06:29:50', '2020-12-22 06:29:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'HR Manager', 'email@gmail.com', '$2y$10$rXfyN/K/kbHJluQ3P/vnPuYwe2zKfG5pdkmggLOXzsozyUl292tV.', '4muanwMYYIcVxcp8UqhDjQpgRP1oBa0DeHzASn7a6qqDFToh2xTzcBX0u7Lq', NULL, '2020-12-21 11:24:51'),
(3, 'newuser', 'newuser@gmail.com', '$2y$10$jD3/5tzG.2fEH1SXbv6C0OvzNxGN8zA80s1uOIZ5eVsSMX.nexGPy', 'ARwx6RKLAmfY66ZMY16SiYeUNBsldWzRmNtu2ZuSmz5R6JfYsedtC9DzCTgt', '2020-12-21 07:52:16', '2020-12-22 06:31:07'),
(4, 'nguyen van nguyen', 'nguyen_van_nguyen@gmail.com', '$2y$10$03.ciN1cm8HOQy3s6G4wJewDOBmcfKYmDe/IK1pz.Tsd87ZSls7OK', 'DKHVv8ZZ11z3DY3q6QNJPlvPsHz3RqxLiIJ31lYCOfoWgmO42E922smD8eDu', '2020-12-21 11:19:59', '2020-12-21 11:28:14'),
(5, 'le van luyen', 'le_van_luyen@gmail.com', '$2y$10$mEJ6Iv9srXkl3ZQMQBEkWOwoScukJmjc9f.d3bHin1ijDEMBoSC/q', '7aKWoKNHT1WRkSQTzjvfNiBLUOwr7OMpQcGUZQzvt9wVmfOzlydOaFLAvhw2', '2020-12-21 11:32:47', '2020-12-21 11:36:29'),
(6, 'doan cong vy', 'vydoanzucced31032001@gmail.com', '$2y$10$tvEzjms1I1HcCnu9wmh1HOKth0wbQVK5e0PtF2K5jFv5scd/kLI2G', 'YEALLQvPDVlquh2yldVs7caJLbxmUNQ2OzJZqjRF5kYC9GWHT3Q9IWWvHIVd', '2020-12-21 11:36:56', '2020-12-21 11:59:33'),
(7, 'luong xuan tien', 'luong_xuan_tien@gmail.com', '$2y$10$JcI5j/uj9rvMJ5DigiuE3uZL.2Podxz0V7oPrqsvCvhRFVbmVoGsC', NULL, '2020-12-22 06:24:03', '2020-12-22 06:24:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-12-21 07:13:49', '2020-12-21 07:13:49'),
(2, 1, 3, '2020-12-21 07:52:16', '2020-12-21 07:52:16'),
(3, 13, 4, '2020-12-21 11:19:59', '2020-12-21 11:19:59'),
(4, 16, 5, '2020-12-21 11:32:47', '2020-12-21 11:32:47'),
(5, 1, 6, '2020-12-21 11:36:56', '2020-12-21 11:36:56'),
(6, 10, 7, '2020-12-22 06:24:03', '2020-12-22 06:24:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `assign_assets`
--
ALTER TABLE `assign_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_assets_user_id_foreign` (`user_id`),
  ADD KEY `assign_assets_asset_id_foreign` (`asset_id`),
  ADD KEY `assign_assets_authority_id_foreign` (`authority_id`);

--
-- Chỉ mục cho bảng `assign_projects`
--
ALTER TABLE `assign_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_projects_user_id_foreign` (`user_id`),
  ADD KEY `assign_projects_project_id_foreign` (`project_id`),
  ADD KEY `assign_projects_authority_id_foreign` (`authority_id`);

--
-- Chỉ mục cho bảng `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_client_id_foreign` (`client_id`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_emp_id_foreign` (`emp_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `training_invites`
--
ALTER TABLE `training_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `training_invites_program_id_foreign` (`program_id`),
  ADD KEY `training_invites_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `training_programs`
--
ALTER TABLE `training_programs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `assign_assets`
--
ALTER TABLE `assign_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `assign_projects`
--
ALTER TABLE `assign_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `training_invites`
--
ALTER TABLE `training_invites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `training_programs`
--
ALTER TABLE `training_programs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `assign_assets`
--
ALTER TABLE `assign_assets`
  ADD CONSTRAINT `assign_assets_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assign_assets_authority_id_foreign` FOREIGN KEY (`authority_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assign_assets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `assign_projects`
--
ALTER TABLE `assign_projects`
  ADD CONSTRAINT `assign_projects_authority_id_foreign` FOREIGN KEY (`authority_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assign_projects_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assign_projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_emp_id_foreign` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `training_invites`
--
ALTER TABLE `training_invites`
  ADD CONSTRAINT `training_invites_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `training_programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `training_invites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
