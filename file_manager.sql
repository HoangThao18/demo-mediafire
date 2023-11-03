-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2023 at 03:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file_manager`
--

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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `token_share` varchar(255) DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_ts` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `size`, `path`, `description`, `user_id`, `token_share`, `folder_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `updated_ts`, `deleted_at`) VALUES
(81, 'search.html', 787, 'public/uploads/users/13/search.html', NULL, 13, NULL, 5, '2023-11-02 01:57:19', '2023-11-02 02:10:35', 'update name', NULL, NULL, '2023-11-02 02:10:35'),
(84, 'bai3.html', 1220, 'public/uploads/users/13/bai3.html', NULL, 13, NULL, 45, '2023-11-02 03:28:44', '2023-11-02 03:28:44', 'update name', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_folder` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link_share` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token_share` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_Ts` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `name`, `parent_folder`, `description`, `link_share`, `user_id`, `token_share`, `created_at`, `updated_at`, `created_by`, `updated_by`, `updated_Ts`, `deleted_at`) VALUES
(5, 'Folder 5', NULL, NULL, NULL, 5, NULL, '2023-09-04 06:59:57', '2023-09-21 08:17:03', 'User 5', 'User 5', '2023-09-04 06:59:57', NULL),
(6, 'Folder 6', 5, NULL, NULL, 6, NULL, '2023-09-04 06:59:57', '2023-09-04 06:59:57', 'User 6', 'User 6', '2023-09-04 06:59:57', NULL),
(7, 'Folder 7', NULL, NULL, NULL, 7, NULL, '2023-09-04 06:59:57', '2023-09-04 06:59:57', 'User 7', 'User 7', '2023-09-04 06:59:57', NULL),
(44, 'as', NULL, NULL, NULL, 13, NULL, '2023-11-02 03:28:44', '2023-11-02 03:28:44', 'update name', NULL, NULL, NULL),
(45, 'by', 44, NULL, NULL, 13, NULL, '2023-11-02 03:28:44', '2023-11-02 03:28:44', 'update name', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
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
('4b287245925079a56ab46b58b6b01f3a4bc9dd41234492d5f5b05480ea075c4739b4ee1e1e0441fe', 3, 9, 'Personal Access Token', '[]', 0, '2023-11-01 15:35:58', '2023-11-01 15:35:59', '2024-11-01 22:35:58'),
('8bc132c987a97c0962e9c2db4c102ba9af966d1a4670f650d65e275a414491a9e72a68a254550fa8', 13, 9, 'Personal Access Token', '[]', 0, '2023-11-02 01:44:25', '2023-11-02 01:44:25', '2024-11-02 08:44:25'),
('97fb84a59c9dc093eb950455df188d53cc146e71d92a48b3ce7cb0610036b051301e8800c7638eec', 3, 9, 'Personal Access Token', '[]', 0, '2023-11-02 01:01:23', '2023-11-02 01:01:24', '2024-11-02 08:01:23'),
('c2805661db0143cc1c3c6a6621edbd3565d006d6f118b01c3cb0963a1388e029a95b5dc62f13099a', 13, 9, 'Personal Access Token', '[]', 0, '2023-11-02 01:42:15', '2023-11-02 01:42:15', '2024-11-02 08:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
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
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
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
(3, NULL, 'Laravel Personal Access Client', 'qXhacnuQQ5S4VWiMp9SZZ7asYYTZqxdRFQNzQtlq', NULL, 'http://localhost', 1, 0, 0, '2023-09-06 07:25:58', '2023-09-06 07:25:58'),
(5, NULL, 'Laravel Personal Access Client', 'DJbquBfQlshb0DclvjtwSFqQfOwQPFJziwgQK41G', NULL, 'http://localhost', 1, 0, 0, '2023-09-06 21:39:48', '2023-09-06 21:39:48'),
(6, NULL, 'Laravel Password Grant Client', 'Bd33HVF5uUcrEILJ5yvaEdhsYVC5hRU39F8PgOwN', 'users', 'http://localhost', 0, 1, 0, '2023-09-06 21:39:48', '2023-09-06 21:39:48'),
(7, NULL, 'thao', 'Bn4kW7r2kzXX0RtlvhEsdEEnfwKOjFKvU48F8Evc', NULL, 'http://localhost/auth/callback', 0, 0, 0, '2023-09-07 22:03:32', '2023-09-07 22:03:32'),
(8, NULL, 'thaoo', 'dN8dGbWr0qkAwTTrD40MUTYFRw6tOhSXF1E7xSI1', NULL, 'http://localhost/auth/callback', 0, 0, 0, '2023-11-01 15:31:19', '2023-11-01 15:31:19'),
(9, NULL, 'aa', 'B6OQvOPQjBHhAcuQyiAbB70uf3btFuPeAkB4V4ZN', NULL, 'http://localhost', 1, 0, 0, '2023-11-01 15:32:55', '2023-11-01 15:32:55');

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
(4, 9, '2023-11-01 15:32:55', '2023-11-01 15:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0020a369bf562c068ca5ca5b85dc54ebd6eabc64284cc1ef4acb5879271ba7e2f878eb79c1e39f22', 'fab8b311cdfb429a8f7398a0b49a785b9015354e367209673ad2b697304752dc2aaf80a88b94e8b9', 0, '2023-09-18 20:30:26'),
('01985f3f5845bca0c0a563ef00eda7e2f88fcff475295d0da35a36f4164baca3b14a52919a9d4c3e', 'ff5ec1d9f9f0cedd9e6fc8cfe086df0e89495581bdc11b49ee09b6485108049e270efc4900795c9f', 0, '2023-09-10 09:49:54'),
('036c0cf55a0fcdd4def43b50d6a1f1ca98521ad6cba9db61d67efd0b89bc5ecbfb944497c1e2c701', 'b0f98462177e8f05002dd12b51ab9d2208cf255c31af847522096880611ef69d1cfbe03ffe3d7495', 0, '2023-09-21 09:56:02'),
('0434c6ea6b8c575b00c21448c1ee31b29eadae8b90ea750c106a2b3b2aa999e73f265792141ce411', '81ad3c004654116767d9e5b049337331d0f68cb40148f3a01243d61af9a80b4c329d4ceec1db1c13', 0, '2023-09-17 21:10:50'),
('09505a2a76202fa9becabf68a7ea773aedff86e32a3447f76788dbe6e66075b5657fc5d385e7f0a9', '1f0f781e0bc0ad3c30a5c613d90f472a145b28227d06d26eca6c8e9ad72c7ae82180382d8e394fd2', 0, '2023-09-14 19:51:09'),
('10f323b166687f7d4b9f0f096929171588b89e30fdfc389e624bfa38a33b76fabb9eccf874e7b37e', '3e22129eebe1ba78b6e2aff7a9e3063cd6ebfe72ea62bdb9381b1ba83563ad779f08532e62f96d85', 0, '2023-09-17 10:51:49'),
('150a2541057ff07f5d2b47d517ebfaa3cd63c1aafb39bc04ba6a8df868311b6917c8d1a0e7271997', '04005456e9e83460453be0a08c4edac6e91ac57802e202edffb1c99b7c02fa803f0dac3c3fb1ed85', 0, '2023-09-13 09:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_ts` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `user_id`, `description`, `created_at`, `updated_at`, `created_by`, `updated_by`, `updated_ts`) VALUES
(4, 4, 'Support request description for User 4', '2023-09-04 07:00:21', '2023-09-04 07:00:21', 'User 4', 'User 4', '2023-09-04 07:00:21'),
(5, 5, 'Support request description for User 5', '2023-09-04 07:00:21', '2023-09-04 07:00:21', 'User 5', 'User 5', '2023-09-04 07:00:21'),
(6, 6, 'Support request description for User 6', '2023-09-04 07:00:21', '2023-09-04 07:00:21', 'User 6', 'User 6', '2023-09-04 07:00:21'),
(7, 7, 'Support request description for User 7', '2023-09-04 07:00:21', '2023-09-04 07:00:21', 'User 7', 'User 7', '2023-09-04 07:00:21'),
(8, 8, 'Support request description for User 8', '2023-09-04 07:00:21', '2023-09-04 07:00:21', 'User 8', 'User 8', '2023-09-04 07:00:21'),
(9, 9, 'Support request description for User 9', '2023-09-04 07:00:21', '2023-09-04 07:00:21', 'User 9', 'User 9', '2023-09-04 07:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `social_id` varchar(255) DEFAULT NULL,
  `package_type` varchar(10) NOT NULL DEFAULT 'basic',
  `package_register_date` date DEFAULT NULL,
  `package_expiration_date` date DEFAULT NULL,
  `max_storage` int(11) NOT NULL DEFAULT 10240,
  `last_login_date` date DEFAULT NULL,
  `remember` tinyint(1) NOT NULL DEFAULT 0,
  `role` varchar(10) NOT NULL DEFAULT 'user',
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_ts` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `social_id`, `package_type`, `package_register_date`, `package_expiration_date`, `max_storage`, `last_login_date`, `remember`, `role`, `created_by`, `updated_by`, `updated_ts`, `created_at`, `updated_at`) VALUES
(4, 'user4@gmail.com', 'User 4', '$2y$10$VepBXfRXJ1TGPP7YJGNZEeS5oZaB6yVJ1HhSJ.qLlOTiob2iiDTZO', NULL, 'Basic', NULL, '2023-10-04', 1000, NULL, 0, 'admin', NULL, NULL, NULL, '2023-09-04 06:59:35', '2023-09-04 06:59:35'),
(5, 'user5@gmail.com', 'User 5', '$2y$10$w/SnREs/5YP7JKIsPGb7EO3yPG4zXM0kYEQ45jseUiLUF4qXt0O6m', NULL, 'Basic', NULL, '2023-10-04', 1000, NULL, 0, 'user', NULL, NULL, NULL, '2023-09-04 06:59:35', '2023-09-04 06:59:35'),
(6, 'user6@gmail.com', 'User 6', '$2y$10$azBhRhQmcWYRpuG/ZsNaXeTmHLaX8gSxaY7lUCf05WqLSs/pGNYrW', NULL, 'Basic', NULL, '2023-10-04', 1000, NULL, 0, 'user', NULL, NULL, NULL, '2023-09-04 06:59:35', '2023-09-04 06:59:35'),
(7, 'user7@gmail.com', 'User 7', '$2y$10$R3WBO1soifZan0VcaCOOouzvm1elovdandDguwt3yTKeCf8QJmX9G', NULL, 'Basic', NULL, '2023-10-04', 1000, NULL, 0, 'user', NULL, NULL, NULL, '2023-09-04 06:59:35', '2023-09-04 06:59:35'),
(8, 'user8@gmail.com', 'User 8', '$2y$10$StETuSSnDGp2VxLa/rHXC.E6BmFoaqGqMjab4JO93.1ovVBIM0wtu', NULL, 'Basic', NULL, '2023-10-04', 1000, NULL, 0, 'admin', NULL, NULL, NULL, '2023-09-04 06:59:35', '2023-09-04 06:59:35'),
(9, 'user9@gmail.com', 'User 9', '$2y$10$nyWlYhCSniR.yn1JKGU4Pegbk8ahTjCis5nn3jk3zZMLSzCoL463.', NULL, 'Basic', NULL, '2023-10-04', 1000, NULL, 0, 'user', NULL, NULL, NULL, '2023-09-04 06:59:35', '2023-09-04 06:59:35'),
(11, 'new1@gmail.com', 'thao', '$2y$10$HtReqYW3xPVLu8APmqLBsOB5FQkKLTwG8etrJYVqOsLRVSeJ8Mp2a', NULL, 'basic', NULL, NULL, 10240, NULL, 0, 'user', NULL, NULL, NULL, '2023-09-05 06:14:12', '2023-09-05 06:14:12'),
(13, 'lethao012@gmail.com', 'update name', '$2y$10$iKHRBLN0dM5de3ZiH53txOYvx4XXTu9DqK6lfZjhLtqpncShwldN2', NULL, 'basic', NULL, NULL, 10240, '2023-11-02', 0, 'admin', NULL, NULL, NULL, '2023-11-02 01:41:25', '2023-11-02 01:44:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folder_id_foreign` (`folder_id`),
  ADD KEY `fk_files_user_id` (`user_id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folders_user_id_foreign` (`user_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supports_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_files_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `folders`
--
ALTER TABLE `folders`
  ADD CONSTRAINT `folders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supports`
--
ALTER TABLE `supports`
  ADD CONSTRAINT `supports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
