-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 08:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_03_07_144140_create_roles_table', 1),
(5, '2023_03_08_000000_create_users_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(7, '2023_03_08_142108_create_projects_table', 3),
(10, '2023_03_09_055146_create_user_projects_table', 4),
(11, '2023_03_09_060950_create_tasks_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', '32477adb-bc40-44a2-8a95-2f58c14d06d2', 'auth_token', 'a7aa9e1a1eaec7b87a079a5771333eae2e04df98965d6b00b2034c84c76f75a0', '[\"*\"]', '2023-03-09 23:49:30', '2023-03-08 07:06:39', '2023-03-09 23:49:30'),
(2, 'App\\Models\\User', 'f34b047b-1830-4f9c-9447-1e66d8c5afe3', 'auth_token', '32882d41c82f0d998875839077d938844b27b058a16690725b47365a352fe272', '[\"*\"]', '2023-03-09 11:31:20', '2023-03-08 10:56:43', '2023-03-09 11:31:20'),
(3, 'App\\Models\\User', 'cce8c66e-ccd1-4af4-afa6-238cc5f2464c', 'auth_token', '5fc64ab25384e57bc0de3d90a6bd2597cb1f3905d7244717e3ebda41beb8843c', '[\"*\"]', '2023-03-09 05:34:18', '2023-03-09 04:37:30', '2023-03-09 05:34:18'),
(4, 'App\\Models\\User', '757bf008-d295-4ccf-932e-14ada807ee82', 'auth_token', '7d9e7f1136093e97ef5683736d8c0bf40e2571077b437c4e269cc96c5cbdf300', '[\"*\"]', '2023-03-10 00:26:08', '2023-03-09 22:28:30', '2023-03-10 00:26:08'),
(5, 'App\\Models\\User', '38a4c790-c16d-457a-ba67-5a053e280ef2', 'auth_token', 'c9fe286d51c6f41a06caa8142ee1206c4c1855bc70b9c3535349bb33a70d27c3', '[\"*\"]', '2023-03-10 01:15:40', '2023-03-09 23:52:29', '2023-03-10 01:15:40'),
(6, 'App\\Models\\User', 'e622a5c8-0a8e-48d9-b1de-025eae22c8e4', 'auth_token', '5815eb5ad3677c5135ea9184f40f30fa46ed95d9f97e9b6bb8cce30748745599', '[\"*\"]', '2023-03-10 01:24:14', '2023-03-10 01:13:07', '2023-03-10 01:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `created_at`, `updated_at`) VALUES
('037f009f-783f-42ae-8626-4a80737f055e', 'Project Four', '2023-03-10 00:00:19', '2023-03-10 00:00:19'),
('1a211b2d-0caa-4728-af53-b4e7cd22cd5d', '842018182', '2023-03-09 08:59:40', '2023-03-09 08:59:40'),
('2741f6b7-29cd-4cae-99f0-3f982553ea68', '371082491', '2023-03-09 08:58:22', '2023-03-09 08:58:22'),
('341a64e0-9946-4bb5-a55f-933e0e7bf5be', 'Coffe Beans', '2023-03-08 10:47:39', '2023-03-08 10:47:39'),
('3eade41c-a43f-4f16-90fe-12d24cb829d8', '115839009', '2023-03-09 08:17:52', '2023-03-09 08:17:52'),
('583c2775-9f34-41ab-b6d6-8205179ebc06', 'Press Live', '2023-03-09 08:59:10', '2023-03-10 00:19:05'),
('74133e00-ff4a-4576-9265-b48c16e9c160', 'Project Two', '2023-03-09 01:59:33', '2023-03-09 01:59:33'),
('7be23663-3622-4f93-b8af-c7edc84b1eb5', '522803106', '2023-03-09 08:59:40', '2023-03-09 08:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
('1379cf73-7b7d-4ac7-a39d-13e5af17aef4', 'PRODUCT_OWNER', NULL, NULL),
('25e162e8-0450-44be-8ab8-b88abc007ca7', 'ADMIN', NULL, NULL),
('71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', 'TEAM_MEMBER', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `project_id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `status`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
('343448df-96bd-45bd-8984-ffc6bb206acb', 'Register Form', 'Create login form to register the user', 'NOT_STARTED', '74133e00-ff4a-4576-9265-b48c16e9c160', 'cce8c66e-ccd1-4af4-afa6-238cc5f2464c', '2023-03-09 04:49:52', '2023-03-09 04:49:52'),
('801cc286-5b7b-475f-8cd7-4ff24ced7002', 'Login Form Edit', 'Create login form to register the user edited', 'IN_PROGRESS', '74133e00-ff4a-4576-9265-b48c16e9c160', 'cce8c66e-ccd1-4af4-afa6-238cc5f2464c', '2023-03-09 04:45:05', '2023-03-09 05:03:25'),
('ac6e186a-93bc-4409-b611-815a66cf0b6e', 'SET UP Edit', 'This is edit text', 'COMPLETED', '037f009f-783f-42ae-8626-4a80737f055e', 'e622a5c8-0a8e-48d9-b1de-025eae22c8e4', '2023-03-10 00:32:10', '2023-03-10 01:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` char(36) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
('06de8a4b-ad44-48a6-8ea7-19aa26803849', '984530698', '$2y$04$mP5NleihF9tgLDCa1V9M8.uNVzVjVRJw1i0JregWD3RRNnon/HaCy', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 07:48:44', '2023-03-09 07:48:44'),
('138d5f80-38ad-41c4-ae71-8fdb14c847ab', '338675961', '$2y$04$2wWkiHoCvs83UVmwb3ngsu73FPCU0GFrULKdfSvT97c6HhQnYfVb2', '1379cf73-7b7d-4ac7-a39d-13e5af17aef4', NULL, '2023-03-09 08:59:40', '2023-03-09 08:59:40'),
('16f7a8db-0a30-43c5-ac75-43b595e816d0', 'Abigail Durgan', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '25e162e8-0450-44be-8ab8-b88abc007ca7', 'fuUy3mWTw6', '2023-03-09 07:41:18', '2023-03-09 07:41:18'),
('1f6a730c-3fde-4d83-bc98-fb106ab3c522', '1458081633', '$2y$04$kb.XOj2xD.L8YBnAXfTKOuMyCa1mz9u6Lwizc7O54keAI9QsW0IGy', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 08:17:52', '2023-03-09 08:17:52'),
('226bb477-415e-49e7-b968-b76114a7b844', 'Testing More Ttssddssssdd', '$2y$10$lJIy/IOHMSLaSI4PYUAZLu6oNekoV57TN4wp7Ua24s62w04MGr8ay', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-08 05:52:51', '2023-03-08 05:52:51'),
('2cf1a0da-4e3a-49aa-8674-333b75b90616', '270196965', '$2y$04$dKlTEmNqq764hAqfEVv9wegwIuO2yflQqW5QPKVhLPk9J75T4yvUi', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-09 08:58:22', '2023-03-09 08:58:22'),
('32477adb-bc40-44a2-8a95-2f58c14d06d2', 'Test Normal', '$2y$10$o37G/d.CS8qgyEgLv36sZ.OKvbXuBZreCxoidm/VmXRhI.wFU/TqW', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-08 07:06:39', '2023-03-08 07:06:39'),
('3881aadc-188c-498e-872b-171166730507', '669518656', '$2y$04$PzgNvHOeykf9dyNYKoP52.EHFZ8vAkOp2Q/bc5Iw4xY6U/rJ1cOCK', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-09 08:16:06', '2023-03-09 08:16:06'),
('38a4c790-c16d-457a-ba67-5a053e280ef2', 'george_product_owner', '$2y$10$XpJKqZKXuAdU1qh3tn.BwegfiMan7Mg10XQLHivH.ILUJ74/Ftwiu', '1379cf73-7b7d-4ac7-a39d-13e5af17aef4', NULL, '2023-03-09 23:41:41', '2023-03-09 23:47:36'),
('3b20299c-41c8-452d-87d1-2d9f8da9ac0b', '1669065836', '$2y$04$8JAIcEbTVmOifrA6vA4wUOe7SSDmeVQ0n9JlKzwuNM.lYcqsGgZC6', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 08:59:10', '2023-03-09 08:59:10'),
('4047ed5d-9974-47db-b014-3ceaf29d2d11', 'Lambert Harvey', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', 'mQ1wXysnji', '2023-03-09 07:39:30', '2023-03-09 07:39:30'),
('454a6515-04ea-4bc6-bf5e-22f9bd3c2277', '2085946606', '$2y$04$n7tD63YugNHhdfpeGmqLA.0ebf3XMoJ7I.vD4tXVOQRNVInFPV8AS', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 08:59:40', '2023-03-09 08:59:40'),
('47d30fb4-307e-4bdd-8da1-d9e80d3e60d8', 'Testing More Ttssddss', '$2y$10$UNWCN8gAQTXJrAwXTgjwBedQPOZJ29vVLtHP83TevXrzKn3gT2e3K', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-08 05:43:11', '2023-03-08 05:43:11'),
('482995e9-044b-42be-98d5-7f668f9faa8a', 'Elijah Stehr', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '25e162e8-0450-44be-8ab8-b88abc007ca7', '4WlNKkXOnI', '2023-03-09 07:41:18', '2023-03-09 07:41:18'),
('49e32554-3574-4cfb-be40-58e9a078c6ae', '1997267955', '$2y$04$lKRkhcmNNOIy5B9spRbWuuglW69F/KySQVEXOast6hy3XuKZZ5tFu', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-09 08:59:10', '2023-03-09 08:59:10'),
('56c6e5b6-18e3-47d2-8d0a-03423c2d2f9a', '296822998', '$2y$04$qmgxQ/kRCKU0x8DU.uGNmuStlUtI4l0d1yiMrHBFditb4s5wp3Y32', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-09 08:16:06', '2023-03-09 08:16:06'),
('5785969c-5322-4e0d-916b-f4cd9cc810d9', '1875973931', '$2y$04$LeTlBheQsn6exvniWfd1/O2tn1WJijuglmswzxhZoJRqVwseM2aTO', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-09 08:17:52', '2023-03-09 08:17:52'),
('5ef37901-387c-4cf2-8cc5-045ce6d65df6', '913280134', '$2y$04$tXGZe0uc0uSXTffuQiVg..WShG.vD0PzNDzULyFAVGS1JaMPc5KC.', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 07:59:12', '2023-03-09 07:59:12'),
('5f88fbae-e735-4ee6-b9b8-531db0f330cf', '2042952136', '$2y$04$.A1FTKCas6U.saKA6gnQhuhYTAS87qWq3zlmjvIJ2VrPXxwWvuNVG', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-09 08:06:36', '2023-03-09 08:06:36'),
('680a3365-9739-4e7f-877a-c240c29abf34', '34451426', '$2y$04$z.qHVFdSGcI5bRx5jayqpeoPHNRvULzXLT3cmzpb4EVkGEaC6WfiS', '1379cf73-7b7d-4ac7-a39d-13e5af17aef4', NULL, '2023-03-09 08:17:52', '2023-03-09 08:17:52'),
('6c52ce3d-d186-4c7e-9e8c-921371b1e869', '1641423380', '$2y$04$X4aKGqGXrieTnzQruuqgb.JAtIII8GBuY21xpNcNpVnsR0raF.bY6', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 08:16:06', '2023-03-09 08:16:06'),
('6d819281-cb59-4b7e-8d8c-43f2cde2eb3c', '992028901', '$2y$04$llD9F9O5VmEbWXzR81ajQegtdlXBdcXlI58M5fnm/bSm9UbtoQLh.', '1379cf73-7b7d-4ac7-a39d-13e5af17aef4', NULL, '2023-03-09 08:58:22', '2023-03-09 08:58:22'),
('6eeeaae6-f976-4569-9e40-02701ba6ebd9', 'Dorris Howell', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', 'DLlmYBtZ6A', '2023-03-09 07:38:37', '2023-03-09 07:38:37'),
('71adecc3-ff85-4e2b-8752-6dc3835bac2c', '1813368879', '$2y$04$wa/VXiMsiz7UPOog9O/f4uoIjdonDfrA0IDC3rLH5N1jEfS.aCC.G', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 08:59:10', '2023-03-09 08:59:10'),
('755983fa-b335-4597-90ac-45c3974d7878', '863093282', '$2y$04$4KRA3mtHgLcZEyFjeF5CNujfArUFPmgzErFqCF7OiT1MX..YfSM46', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 08:06:36', '2023-03-09 08:06:36'),
('757bf008-d295-4ccf-932e-14ada807ee82', 'project_admin', '$2y$10$15O3uo6QIrhF3.cIeCxerOXxCCKFAjs1x3MUZ4qFxqjHzaU7S8FW6', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-09 22:28:30', '2023-03-09 22:28:30'),
('7d085948-4742-4a01-a8e5-cb4baf8d0b6e', 'derek_mark_two', '$2y$10$xUYkBL8tYgSCP.ChPyPfSuUc67Jc/X.zWgmO5aCqFNe.B3iQKNtqe', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-08 08:29:12', '2023-03-08 08:29:12'),
('7f42351a-032b-410e-896b-4d5a95554703', 'Dr. Lora Watsica', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', 'bwHjsf51Lb', '2023-03-09 07:43:01', '2023-03-09 07:43:01'),
('8050c57f-3708-4c7e-9091-d929e4d87081', 'Testing More Ttssdd', '$2y$10$6zMByw4watwpixQWavJfxurJXVlkOWSXt2Iaj5UF.V6CQ5PLMNRSO', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-08 05:41:55', '2023-03-08 05:41:55'),
('838f0528-b02f-42c6-90b0-7db9f2d3ffd0', '1423081932', '$2y$04$dlOc3kjwNESihkC0jyvNo.CC1FPIXkCr6ZGXhJNXFN1yNRm4MHFBG', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 08:58:22', '2023-03-09 08:58:22'),
('85c87c8e-8ed6-426c-9541-64ec94487b30', '804145567', '$2y$04$xnkRRMnZnvMAtrU5lJKiL.uEk3AfmEseeoD50XYOaDJ4vbJ2p85T.', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-09 08:59:40', '2023-03-09 08:59:40'),
('8b9742e6-73c4-4ca6-bfb9-b9aa052c7468', '943462449', '$2y$04$tfufW5yuFCLt5LD3Skghb.MYrTeYNb0bRYVIif9/BdOvYp/lzb6ei', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 08:59:40', '2023-03-09 08:59:40'),
('9120fa37-d839-40ff-a7d3-7c94fc1bbb0a', 'derek_mark', '$2y$10$th2lQTdfDsAR51pSeq5vLu0Lwy19H7ubGXN0I8gWX59yzEZHh3Py2', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-08 06:33:59', '2023-03-08 06:33:59'),
('93a56192-fc33-431e-8dd2-2804dc852235', 'Testing More Tt', '$2y$10$gD2McpM2EPNdb4mZ6oeWcusghAScIOv4wcW7bPcnKHMlQmJqcCAxe', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-08 05:37:18', '2023-03-08 05:37:18'),
('97ec71d0-74ce-4ff6-aafc-b72c3c568df9', 'Prof. Alaina Feeney', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '25e162e8-0450-44be-8ab8-b88abc007ca7', 'l0qe5ujVO6', '2023-03-09 07:42:45', '2023-03-09 07:42:45'),
('ad77ee08-eeac-456d-a144-e6de500c2066', 'Oda Eichmann', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', 'OKgfUUgx76', '2023-03-09 07:32:50', '2023-03-09 07:32:50'),
('ae25e2ef-7231-41e0-81c5-8cf9c7dbf6b7', 'Willie Pagac', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', 'fByxBOgwSY', '2023-03-09 07:43:01', '2023-03-09 07:43:01'),
('c48b8f7c-8116-4d7e-9f21-9c0707521b6d', 'Testing More Ttss', '$2y$10$NUgQXyq5STfphTQ04bei5u19vmiRIS7Yr.IVF/tR12seARdnxsfTi', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-08 05:41:18', '2023-03-08 05:41:18'),
('c6efa769-d181-40d4-8888-ce4e40a17825', 'Dr. Peggie Feil DVM', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', 'P04lFuwg0f', '2023-03-09 07:38:37', '2023-03-09 07:38:37'),
('cce8c66e-ccd1-4af4-afa6-238cc5f2464c', 'Vue JS', '$2y$10$NUgQXyq5STfphTQ04bei5u19vmiRIS7Yr.IVF/tR12seARdnxsfTi', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-08 04:56:40', '2023-03-08 04:56:40'),
('ce6195ff-2f45-491d-b686-2bb6f7aeb3b5', '1078303607', '$2y$04$bGokV6cm32JQvZEJ9gwbh.0G1I6NRLJ7kj6txR5J9jdarPipJDRSm', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 06:52:34', '2023-03-09 06:52:34'),
('d1bc5853-0028-4110-81d1-fde31cd57e8d', 'Gene Johns MD', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '25e162e8-0450-44be-8ab8-b88abc007ca7', 'TPANPikRvO', '2023-03-09 07:42:45', '2023-03-09 07:42:45'),
('d562c5bf-a272-4696-a0d4-50ca7652f58c', 'Tamara Schroeder', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', 'b7fax7lFdW', '2023-03-09 07:39:30', '2023-03-09 07:39:30'),
('d9c4cfd4-9ef2-45ae-b509-a8fb328aebcb', '301770386', '$2y$04$UFc0AF1pMhbCMNGjxeLx9e1wMKgNdTXhWdDv1tcNM33K8CwA6lHyS', '1379cf73-7b7d-4ac7-a39d-13e5af17aef4', NULL, '2023-03-09 08:59:10', '2023-03-09 08:59:10'),
('e33835df-8f2b-40e6-927b-3eaab429b48b', 'Testing More Ttssddssss', '$2y$10$quT9vNkiS6TIZVA/ehk5l.PxJmMSHBjEjT75uf9KdDmIhYMdjBBtm', '25e162e8-0450-44be-8ab8-b88abc007ca7', NULL, '2023-03-08 05:50:01', '2023-03-08 05:50:01'),
('e4e794ee-e84e-44e9-99da-baa8b0123954', '732847597', '$2y$04$H0/Q3Ur5q6EJcJiNWwFXnumCl1XpFAZkiBNonZWaTaJofCzu8BfcK', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 06:51:31', '2023-03-09 06:51:31'),
('e622a5c8-0a8e-48d9-b1de-025eae22c8e4', 'team_member', '$2y$10$Wh6EJ9QiBvUwBuRSzfqXgONgGkT1YuG1VMH4WWReXFO2HHULH/lQi', '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc', NULL, '2023-03-09 23:44:04', '2023-03-09 23:44:04'),
('f34b047b-1830-4f9c-9447-1e66d8c5afe3', 'desmond_joe', '$2y$10$0EDyhsSVcEfFNCiSDujGf.mLhuq0ErBHgksyoZjjFj1ysMtEhnSuW', '1379cf73-7b7d-4ac7-a39d-13e5af17aef4', NULL, '2023-03-08 10:56:11', '2023-03-08 10:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_projects`
--

CREATE TABLE `user_projects` (
  `project_id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_projects`
--

INSERT INTO `user_projects` (`project_id`, `user_id`, `created_at`, `updated_at`) VALUES
('74133e00-ff4a-4576-9265-b48c16e9c160', 'cce8c66e-ccd1-4af4-afa6-238cc5f2464c', NULL, NULL),
('3eade41c-a43f-4f16-90fe-12d24cb829d8', 'e4e794ee-e84e-44e9-99da-baa8b0123954', NULL, NULL),
('3eade41c-a43f-4f16-90fe-12d24cb829d8', 'd562c5bf-a272-4696-a0d4-50ca7652f58c', NULL, NULL),
('2741f6b7-29cd-4cae-99f0-3f982553ea68', 'e4e794ee-e84e-44e9-99da-baa8b0123954', NULL, NULL),
('2741f6b7-29cd-4cae-99f0-3f982553ea68', 'd562c5bf-a272-4696-a0d4-50ca7652f58c', NULL, NULL),
('583c2775-9f34-41ab-b6d6-8205179ebc06', 'e4e794ee-e84e-44e9-99da-baa8b0123954', NULL, NULL),
('583c2775-9f34-41ab-b6d6-8205179ebc06', 'd562c5bf-a272-4696-a0d4-50ca7652f58c', NULL, NULL),
('1a211b2d-0caa-4728-af53-b4e7cd22cd5d', 'e4e794ee-e84e-44e9-99da-baa8b0123954', NULL, NULL),
('1a211b2d-0caa-4728-af53-b4e7cd22cd5d', 'd562c5bf-a272-4696-a0d4-50ca7652f58c', NULL, NULL),
('037f009f-783f-42ae-8626-4a80737f055e', 'e622a5c8-0a8e-48d9-b1de-025eae22c8e4', NULL, NULL),
('037f009f-783f-42ae-8626-4a80737f055e', '4047ed5d-9974-47db-b014-3ceaf29d2d11', NULL, NULL);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_projects`
--
ALTER TABLE `user_projects`
  ADD KEY `user_projects_project_id_foreign` (`project_id`),
  ADD KEY `user_projects_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_projects`
--
ALTER TABLE `user_projects`
  ADD CONSTRAINT `user_projects_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `user_projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
