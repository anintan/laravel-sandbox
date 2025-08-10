-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2025 at 11:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-sandbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_04_062039_create_person_table', 1),
(5, '2025_08_04_064326_create_personal_access_tokens_table', 1),
(6, '2025_08_05_044118_create_oauth_auth_codes_table', 1),
(7, '2025_08_05_044119_create_oauth_access_tokens_table', 1),
(8, '2025_08_05_044120_create_oauth_refresh_tokens_table', 1),
(9, '2025_08_05_044121_create_oauth_clients_table', 1),
(10, '2025_08_05_044122_create_oauth_device_codes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` char(80) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0e10ec084a2cab1e56a1d95a47f5cea13ab2da2a6adbca838ff1b718d1acdafc1b1ff29bc8d806ef', 13, '01987939-7c87-7225-abd4-ca5a5caa1349', 'MyAppToken', '[]', 0, '2025-08-05 23:45:48', '2025-08-05 23:45:48', '2026-08-06 06:45:48'),
('1ab5b3e956b4838b35e9a4a9f3b90514aee95d51dac23b64b1051f149086d19ee2d20361e02bf8a3', 11, '01987939-7c87-7225-abd4-ca5a5caa1349', 'MyAppToken', '[]', 0, '2025-08-05 21:22:50', '2025-08-05 21:22:50', '2026-08-06 04:22:50'),
('3d84411c10e60b1bb5d7c7ea6fcfd851eacd36659cbe023ffccd0b6b1c8f672ded08b549f463adbe', 12, '01987939-7c87-7225-abd4-ca5a5caa1349', 'MyAppToken', '[]', 0, '2025-08-05 21:28:38', '2025-08-05 21:28:38', '2026-08-06 04:28:38'),
('6e687872e38fef1db3fa87cfdfa21a1d2127d1e12216652413aec0a66c76cfc3805f70a9ee8e9930', 13, '01987939-7c87-7225-abd4-ca5a5caa1349', 'MyAppToken', '[]', 0, '2025-08-05 23:46:30', '2025-08-05 23:46:30', '2026-08-06 06:46:30'),
('74462150f60ec85f11b4b5e1f9876c408d94f045029ab0e250e7237755c8ac70f546a5505638dd8b', 12, '01987939-7c87-7225-abd4-ca5a5caa1349', 'MyAppToken', '[]', 0, '2025-08-05 21:29:04', '2025-08-05 21:29:04', '2026-08-06 04:29:04'),
('882713a13dca8912e7c4386fd7bda82b31b7c10b797b317f6ce5c4da8b1670031d068cf0dfefa658', 9, '01987939-7c87-7225-abd4-ca5a5caa1349', 'MyAppToken', '[]', 0, '2025-08-05 20:51:17', '2025-08-05 20:51:17', '2026-08-06 03:51:17'),
('978904ba30f3c3b83d9a3adb273b05ab37115b23c9671d631bfa8925da7adc3af18eef071eb5f2b5', 10, '01987939-7c87-7225-abd4-ca5a5caa1349', 'MyAppToken', '[]', 0, '2025-08-05 20:51:44', '2025-08-05 20:51:44', '2026-08-06 03:51:44'),
('e30871d420f8877d5d5cb54e69229bb206f9b008abb1ff03d77a82ce0e127e0d9e08176ab8b5c8bb', 1, '01987939-7c87-7225-abd4-ca5a5caa1349', 'MyAppToken', '[]', 0, '2025-08-05 21:10:09', '2025-08-05 21:10:09', '2026-08-06 04:10:09'),
('f7b8240d4352769b54cf23242eb2c70564f2bcc5dff82a2addeb70e038adcdfcea8ca49e0b83e272', 8, '01987939-7c87-7225-abd4-ca5a5caa1349', 'MyAppToken', '[]', 0, '2025-08-05 20:46:33', '2025-08-05 20:46:33', '2026-08-06 03:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` char(80) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) NOT NULL,
  `owner_type` varchar(255) DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect_uris` text NOT NULL,
  `grant_types` text NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `owner_type`, `owner_id`, `name`, `secret`, `provider`, `redirect_uris`, `grant_types`, `revoked`, `created_at`, `updated_at`) VALUES
('0198790d-74f0-72a8-bc62-dff26374b9f4', NULL, NULL, 'Laravel', '$2y$12$lLb7xtEH4mfhKUNAi4GiUuf/mqzi2ZJ01ecDT6ECQvVeJo86C5CfS', 'users', '[]', '[\"personal_access\"]', 0, '2025-08-05 00:06:21', '2025-08-05 00:06:21'),
('01987939-7c87-7225-abd4-ca5a5caa1349', NULL, NULL, 'Laravel', '$2y$12$fHijvHwWosy8Zmlps/pqF.920pogcyGYZF.STAnjBZJ4oXSmrrzhe', 'users', '[]', '[\"personal_access\"]', 0, '2025-08-05 00:54:27', '2025-08-05 00:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_device_codes`
--

CREATE TABLE `oauth_device_codes` (
  `id` char(80) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `user_code` char(8) NOT NULL,
  `scopes` text NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `user_approved_at` datetime DEFAULT NULL,
  `last_polled_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` char(80) NOT NULL,
  `access_token_id` char(80) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Joshua', 'joshua@example.com', '2025-08-05 00:19:14', '2025-08-05 00:19:14'),
(2, 'Elsa', 'elsaaa@example.com', '2025-08-05 00:25:41', '2025-08-05 00:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'my-api', 'ab2ca541c69c9e5574d69b12870e8d21933083c3929729dcad03947ffabc1802', '[\"*\"]', NULL, NULL, '2025-08-05 00:07:17', '2025-08-05 00:07:17'),
(2, 'App\\Models\\User', 2, 'PassportToken', '760a60a29071234255886f134ff39f9518660a8a24be234583f5283b9d4a7df2', '[\"*\"]', NULL, NULL, '2025-08-05 00:38:46', '2025-08-05 00:38:46'),
(3, 'App\\Models\\User', 3, 'PassportToken', '0e7fe51f6377341f319cde9f9f4b8f808cdc84ac3c5ca748620e3031a0aacb84', '[\"*\"]', NULL, NULL, '2025-08-05 00:51:17', '2025-08-05 00:51:17'),
(4, 'App\\Models\\User', 4, 'PassportToken', '4bf96bbc47ec08c5a9ed49e1be8508d7009d3a186f8488c4ff48b0d837e48619', '[\"*\"]', NULL, NULL, '2025-08-05 18:34:33', '2025-08-05 18:34:33'),
(5, 'App\\Models\\User', 5, 'PassportToken', '11fc273f3fb745fa7ddd7e2e49c20f2282f94544b291ee63ade9c3d9ecc0d460', '[\"*\"]', NULL, NULL, '2025-08-05 19:48:12', '2025-08-05 19:48:12'),
(6, 'App\\Models\\User', 6, 'MyAppToken', '1ac17bfe937337225818bf39e3498425f2a39e09d6179924cacf15d0cdbe5cba', '[\"*\"]', NULL, NULL, '2025-08-05 20:31:05', '2025-08-05 20:31:05'),
(7, 'App\\Models\\User', 7, 'MyAppToken', 'f491f46c9c9121d4824dd68246638d9a995803c341e7a12703bab92b742c0eec', '[\"*\"]', NULL, NULL, '2025-08-05 20:34:45', '2025-08-05 20:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5V95j2NPOdSliRYY2i9eygjV78Bked9IPKY2vK16', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1hBQU1MenJxb21tYUZoTXE0TWVGU2FRRXNFSDJtaHluNXdXY3dyeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1754463013),
('POtpWx38lZ2Ptf0XiwZyewmEMdtubxrFM7MhqYgT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDBSS1d4YmhrRWE2OTZEUGZaNkdza3VlaVNUd3RQU1N1MExvMGxzSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1754381322);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'string', 'user@example.com', NULL, '$2y$12$wO30oze5nYttReOxDBLOPOSOC19NmNEK0g8kADHuGIg5S9G2VlQxC', NULL, '2025-08-05 00:07:17', '2025-08-05 18:34:51'),
(2, 'ahmad', 'ahmadd@example.com', NULL, '$2y$12$pWyMn8jJwMS/HIPo3zfIU.hwM06QLErPH4prxgyJVcLFMvjbxY/lq', NULL, '2025-08-05 00:38:46', '2025-08-05 23:48:26'),
(4, 'doja cat', 'dojacat@example.com', NULL, '$2y$12$nHNvMBU/jkRupsxpAPFZJOWgZPgDOeMPAQ564w9T0kC0zunyb9qtC', NULL, '2025-08-05 18:34:33', '2025-08-05 18:34:33'),
(5, 'elsa kardashian', 'elsaanggiwulandari@example.com', NULL, '$2y$12$4gdH3oe68aaKzHEuIFtJJuNCYk5Nzyd1Jveb9QsNDNJ8JexkSNMrO', NULL, '2025-08-05 19:48:12', '2025-08-05 19:48:12'),
(6, 'cahyanto', 'vahyo@example.com', NULL, '$2y$12$NMF0YnLf3mGTUQDjVKVfHO3DS/HQMjcKaAcZ8QwWVDCMAV2CyLf5q', NULL, '2025-08-05 20:31:05', '2025-08-05 20:31:05'),
(7, 'eli', 'eli@example.com', NULL, '$2y$12$qV6toZPCUU2wd5CcryUeu.K4lttARDd/MzZ2PZ0O0AyTpEqoPm8ee', NULL, '2025-08-05 20:34:45', '2025-08-05 20:34:45'),
(8, 'Joshua', 'joshua@example.com', NULL, '$2y$12$jgO7PxQmXYCW2qr.v8FMzOSqMNblRoW.zTQBz30P8.Gu7Hc1/iXZK', NULL, '2025-08-05 20:46:30', '2025-08-05 20:46:30'),
(9, 'Joshuakanjud', 'joshuakanjud@example.com', NULL, '$2y$12$axpk/TFDq1LYVY7z/txu7.YVErb8SMruOpZzS/Gb3S.YlnFWErepy', NULL, '2025-08-05 20:51:17', '2025-08-05 20:51:17'),
(10, 'handikakanjud', 'joashduhaef@example.com', NULL, '$2y$12$GPnWUL81LfiZ3aj686a4QOWwuKNyA434Jt3zhCeYKEAIRBmKnmhxW', NULL, '2025-08-05 20:51:44', '2025-08-05 20:51:44'),
(11, 'selena gomez', 'selen@example.com', NULL, '$2y$12$irdP7gfFlhYkzKlkucepj.KbxcPKXJKhdbPMMvQkNqiBxG0/PNCli', NULL, '2025-08-05 21:22:50', '2025-08-05 21:22:50'),
(12, 'rifa', 'rifa@example.com', NULL, '$2y$12$hzotWz8fYaA6WR8bhBxHiu6eu0bpSr2YW0G0Dk6RB0aXIWIe1BLYW', NULL, '2025-08-05 21:28:38', '2025-08-05 21:28:38'),
(13, 'bibi', 'bibi@example.com', NULL, '$2y$12$pF2EVG7gTPqCFE6pam229eK/V5xjoXZ81Oc0CI0Lx/FnUxDJWPzaO', NULL, '2025-08-05 23:45:48', '2025-08-05 23:45:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD KEY `oauth_clients_owner_type_owner_id_index` (`owner_type`,`owner_id`);

--
-- Indexes for table `oauth_device_codes`
--
ALTER TABLE `oauth_device_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth_device_codes_user_code_unique` (`user_code`),
  ADD KEY `oauth_device_codes_user_id_index` (`user_id`),
  ADD KEY `oauth_device_codes_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
