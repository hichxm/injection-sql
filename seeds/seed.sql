-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Dec 30, 2021 at 12:42 AM
-- Server version: 10.5.8-MariaDB-1:10.5.8+maria~focal-log
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digityourdream_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 104);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user.viewAny', 'web', '2021-12-15 23:47:57', '2021-12-15 23:47:57'),
(2, 'user.view', 'web', '2021-12-15 23:47:57', '2021-12-15 23:47:57'),
(3, 'user.update', 'web', '2021-12-15 23:47:58', '2021-12-15 23:47:58'),
(4, 'user.create', 'web', '2021-12-15 23:47:58', '2021-12-15 23:47:58'),
(5, 'user.delete', 'web', '2021-12-15 23:47:58', '2021-12-15 23:47:58'),
(6, 'role.viewAny', 'web', '2021-12-18 10:22:46', '2021-12-18 10:22:46'),
(7, 'role.view', 'web', '2021-12-18 10:22:47', '2021-12-18 10:22:47'),
(8, 'role.update', 'web', '2021-12-18 10:22:47', '2021-12-18 10:22:47'),
(9, 'role.create', 'web', '2021-12-18 10:22:47', '2021-12-18 10:22:47'),
(10, 'role.delete', 'web', '2021-12-18 10:22:47', '2021-12-18 10:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2021-12-15 23:47:57', '2021-12-15 23:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hichxm', 'hicham.slimani@digityourdream.fr', '2021-12-15 23:47:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2021-12-07 04:46:46', '2021-12-18 00:07:42'),
(2, 'Super Admin', 'super-admin@example.com', '2021-12-15 23:47:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k1Bunj9tZB', '2021-12-15 23:47:57', '2021-12-15 23:47:57'),
(5, 'Raven Runolfsson', 'moore.gerda@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nTu1yUXnaY', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(6, 'Mr. Olaf Heller MD', 'emerald83@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Za1PrTdrW2', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(7, 'Pietro Crona DVM', 'houston.greenholt@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q1MShMreX7', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(8, 'Ivory Nader', 'hyatt.rodger@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PDgv3A5XEK', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(9, 'Gillian Reichel I', 'rath.kody@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Yc3ygO2166', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(11, 'Crawford Hahn', 'shania.yundt@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R3FPEZlP0S', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(12, 'Ms. Romaine Schuppe MD', 'gottlieb.isaias@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QBxfCUr1xK', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(13, 'Yvonne Welch', 'thessel@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C3Q5hTUDIJ', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(14, 'Dr. Friedrich Veum', 'jordyn44@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LvNwW9mfrp', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(15, 'Randal Veum', 'weber.bo@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yRQDbe8QqC', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(16, 'Rhianna Pollich', 'heidenreich.sylvia@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wvD4qL44gh', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(17, 'Mr. Maverick Lueilwitz I', 'meta66@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JF0IO0Ou0B', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(18, 'Emmitt Ebert', 'remington14@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZumZhQewrT', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(19, 'Constantin Weimann', 'ihowe@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yhKuGfCxOM', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(20, 'Genoveva Quigley', 'orin.hudson@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7PcnZFerbS', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(21, 'Prof. Brice Willms Sr.', 'ewindler@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'miUUCdPqKa', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(22, 'Donald Tromp', 'virgil93@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kKGGaoIpex', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(23, 'Ardella Bailey', 'ledner.chasity@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PHFhXl17cb', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(24, 'Moises Gaylord MD', 'gturner@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0PMA8JLWGg', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(25, 'Arno Boehm', 'herman64@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zySJfRRy4U', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(26, 'Kirsten Feeney', 'ujenkins@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '13YoSUJtXc', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(27, 'Prof. Shayne Kris II', 'isadore.beahan@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pAAjIOiOwa', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(28, 'Laurine Fisher Sr.', 'dooley.malinda@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RoKVJmATeU', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(29, 'Prof. Laila Turcotte Sr.', 'fstroman@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bcUeCTthco', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(30, 'Kathlyn Harber', 'deborah.shanahan@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qez9Ee7bRI', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(31, 'Miss Syble Hyatt PhD', 'rice.guiseppe@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ekHCUt8vj5', '2021-12-16 00:18:53', '2021-12-16 00:18:53'),
(32, 'Maggie Wisoky', 'gkulas@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TMSpKBVZ3F', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(33, 'Liliane Lakin', 'stoltenberg.laisha@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cLDwG8YZii', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(34, 'Rhiannon Nolan', 'atremblay@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zEMqOmE6cs', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(35, 'Ernest Jast', 'wstrosin@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W890FY8TzX', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(36, 'Reynold Raynor', 'rath.sarina@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oq7zP0pu9e', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(37, 'Allie Gerlach', 'xdietrich@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pyCO7uZmCS', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(38, 'Jonas Jakubowski PhD', 'taryn.trantow@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jpMYwYuJTF', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(39, 'Prof. Camille McKenzie', 'areichert@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dE30romswQ', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(40, 'Eino O\'Conner', 'werdman@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BzEF6aVOzt', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(41, 'Jamar Blick I', 'lilliana.wilderman@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CmRKmQHL9T', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(42, 'Orrin Grimes I', 'obernhard@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T4U9fDmajR', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(43, 'Mr. Horacio Goldner V', 'ladarius22@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KSNW9HUdQX', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(44, 'Lea Harber', 'rdickens@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1C9KLFeSlF', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(45, 'Demario Flatley', 'theodora.blick@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RQvnN910kR', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(46, 'Timothy Hane', 'kathlyn69@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U3vShKFi8s', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(47, 'Demarco Deckow', 'alayna16@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WeS1pz3t4c', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(48, 'Chanelle Dietrich', 'ggreenfelder@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WVzOHinYla', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(49, 'Bernadette Torphy', 'cummerata.serena@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ughdk93p3D', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(50, 'Brooks Hammes', 'jberge@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IcJhnGZPnZ', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(51, 'Dr. Myrtis Blick', 'micah04@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GIs3hbDto4', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(52, 'Terrance Abernathy', 'cameron07@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HapAq1Sg1O', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(53, 'Miller Barton DVM', 'bart.oconner@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dQ6xuf9Czn', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(54, 'Prof. Marshall Sipes', 'stiedemann.arch@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bRAia25JXO', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(55, 'Jerrold Mayer', 'kutch.jacques@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hyuyymheTU', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(56, 'Clarissa Nolan', 'jamal.gulgowski@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PpcH3chsFK', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(57, 'Mrs. Kiarra DuBuque', 'elangworth@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oxUzvPhExP', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(58, 'Marcus Brekke', 'eledner@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rWpTA52u5B', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(59, 'Rossie Gulgowski', 'zulauf.roslyn@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'arnoAxWCez', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(60, 'Precious Howe', 'gene.bednar@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0sKhMId3t6', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(61, 'Prof. Leda Littel DVM', 'gleason.adolph@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vocJ8s0tHx', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(62, 'Ms. Leatha Lind', 'brown.vivian@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd6yU9j198s', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(63, 'Claude Orn', 'bechtelar.helen@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uTFVWicgBM', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(64, 'Simone Pouros', 'lisa81@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yoJ1YPt4rC', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(65, 'Nils Stark DDS', 'streich.maritza@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZQOSPPeF4C', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(66, 'Jorge Hills', 'frances.medhurst@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lEHeY66fbp', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(67, 'Gertrude Kuhn', 'rmarquardt@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ek8SRhjZeL', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(68, 'Mr. Santino Franecki MD', 'shemar02@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '85SZha94eC', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(69, 'Baby Beer', 'frederick.dare@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O6dBQk7nf2', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(70, 'Prof. Forrest Lehner', 'iweimann@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sefwocdXSB', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(71, 'Prof. Caesar Auer I', 'wolff.isabella@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lr21BGihEM', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(72, 'Mrs. Jodie Veum PhD', 'dare.mazie@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CSjeMTHH6U', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(73, 'Jakayla Adams', 'maxie77@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rHWZvM4bnK', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(74, 'Dr. Celia Auer', 'yoshiko05@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zCLmkifQ83', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(75, 'Amara Morar', 'hdach@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P1Q4vw5Bdl', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(76, 'Doris Bechtelar', 'kaya.parker@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2BhX1khoiO', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(77, 'Ariel Luettgen', 'wisoky.keshaun@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yAjfEykRlu', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(78, 'Dr. Brandt Denesik', 'dewitt15@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tor9dhjURZ', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(79, 'Ms. Frida Ankunding DVM', 'sienna.grant@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iXhaXCoGQ2', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(80, 'Lue Gerhold', 'zkessler@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LdEnomQft6', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(81, 'Dr. Arturo Blanda', 'ehauck@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c3asZXZchW', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(82, 'Carroll Fritsch', 'austin.christiansen@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dB1aaFwHB9', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(83, 'Eveline Schulist', 'dickinson.santino@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6PUG2nJoeY', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(84, 'Margot Nicolas', 'ledner.sierra@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aUpAHniCcB', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(85, 'Rosanna Casper', 'davonte63@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ReWwqEPWXK', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(86, 'Keshaun Kshlerin', 'ehomenick@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'feEDeFp2CX', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(87, 'Melyna Konopelski', 'tod.powlowski@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nBfi4MI1Jx', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(88, 'Mrs. Era Leannon V', 'hailee29@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ANtH5hAM02', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(89, 'Madge Hickle', 'kkub@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J6XUbo4MzY', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(90, 'Willis Bernhard', 'jaunita57@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pMr8hBPNKq', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(91, 'Noelia Schaden', 'florence.kautzer@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7yNStA6HSa', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(92, 'Michele Jenkins V', 'chasity28@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aaBC8aw7QW', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(93, 'Mr. Lonny Greenholt', 'jocelyn.huel@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cqNUaq6Gte', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(94, 'Casandra Rodriguez', 'felicity.medhurst@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P0iqap4bke', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(95, 'Harold O\'Keefe', 'mya84@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7Tr4bM2CFy', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(96, 'Everett Bins', 'merle52@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XzUzI6353o', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(97, 'Alva Roob', 'reichert.herman@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ESBuh2hf5o', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(98, 'Fabiola Kunze', 'lesly.greenfelder@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0CjxOCHVVt', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(99, 'Prof. Scotty Thiel III', 'gusikowski.gregg@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nPNeQmwB4B', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(100, 'Kris Shanahan', 'considine.wilbert@example.org', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nN4S8Cd4s8', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(101, 'Stephon Wehner MD', 'hadley.bahringer@example.net', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MdFe7HN8wL', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(102, 'Kristopher Hane MD', 'gfeest@example.com', '2021-12-16 00:18:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gsTqNm6DNN', '2021-12-16 00:18:54', '2021-12-16 00:18:54'),
(103, 'qddsqd', 'qdqsd@qsdsqd.fr', NULL, '$2y$10$9lHPDyZyvIbFEj3DkMRa1.HNRR0WAoFIJrc2cpuBjaOEP0y3wfMe.', NULL, '2021-12-17 12:52:58', '2021-12-17 12:52:58'),
(104, 'Hichxm', 'test@mail.fr', NULL, '$2y$10$.UfC92W1PAx0HTlt6K8u3OnUJ54dtlMlg7lGB6BevNVAG14AMHkMS', NULL, '2021-12-17 12:55:00', '2021-12-17 12:55:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;