-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2019 at 04:43 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sysmonika`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-07-02 08:00:09', '2019-07-02 08:00:09'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-07-02 08:00:09', '2019-07-02 08:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handphone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `handphone`, `message`, `created_at`, `updated_at`) VALUES
(2, 'M. Iqbal', 'iqbal.revvin@gmail.com', '081223142314', 'admin kenapa status KTP saya tidak berubah2? Mohon penjelasannya!', '2019-07-16 11:20:50', '2019-07-16 11:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Nama', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 0, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Tgl Daftar', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Hak Akses', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Hak Akses Pengguna', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 1, 'email_verified_at', 'timestamp', 'Email Terverifikasi', 0, 1, 1, 1, 1, 1, '{}', 6),
(78, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 9, 'user_id', 'text', 'User Id', 1, 0, 0, 0, 0, 0, '{}', 2),
(80, 9, 'nama', 'text', 'Nama', 1, 1, 1, 0, 0, 0, '{}', 3),
(81, 9, 'nik', 'text', 'Nik', 1, 1, 1, 0, 0, 0, '{}', 4),
(82, 9, 'tempat_lahir', 'text', 'Tempat Lahir', 0, 0, 1, 0, 0, 0, '{}', 5),
(83, 9, 'tanggal_lahir', 'text', 'Tanggal Lahir', 0, 0, 1, 0, 0, 0, '{}', 6),
(84, 9, 'jenis_kelamin', 'text', 'Jenis Kelamin', 0, 1, 1, 0, 0, 0, '{}', 7),
(85, 9, 'alamat', 'text', 'Alamat', 0, 0, 1, 0, 0, 0, '{}', 8),
(86, 9, 'rw', 'text', 'Rw', 0, 0, 1, 0, 0, 0, '{}', 9),
(87, 9, 'desa', 'text', 'Desa', 0, 0, 1, 0, 0, 0, '{}', 10),
(88, 9, 'kabupaten', 'text', 'Kabupaten', 0, 0, 1, 0, 0, 0, '{}', 11),
(89, 9, 'provinsi', 'text', 'Provinsi', 0, 0, 1, 0, 0, 0, '{}', 12),
(90, 9, 'agama', 'text', 'Agama', 0, 0, 1, 0, 0, 0, '{}', 13),
(91, 9, 'status_perkawinan', 'text', 'Status Perkawinan', 0, 0, 1, 0, 0, 0, '{}', 14),
(92, 9, 'pekerjaan', 'text', 'Pekerjaan', 0, 0, 1, 0, 0, 0, '{}', 15),
(93, 9, 'kewarganegaraan', 'text', 'Kewarganegaraan', 0, 0, 1, 0, 0, 0, '{}', 16),
(94, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 17),
(95, 9, 'created_at', 'timestamp', 'Tgl Daftar', 0, 1, 1, 0, 0, 0, '{}', 18),
(96, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(102, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(103, 12, 'code', 'number', 'Kode Status', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\",\"min:3\",\"max:12\"]}}', 2),
(104, 12, 'name', 'text', 'Nama Status', 1, 1, 1, 1, 1, 1, '{}', 3),
(105, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(106, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(107, 9, 'responden_belongsto_status_code_relationship', 'relationship', 'Status KTP', 0, 1, 1, 1, 0, 0, '{\"model\":\"App\\\\StatusCode\",\"table\":\"status_codes\",\"type\":\"belongsTo\",\"column\":\"status_code_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 20),
(108, 9, 'status_code_id', 'text', 'Status Code Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(109, 9, 'kecamatan', 'text', 'Kecamatan', 1, 0, 1, 0, 0, 0, '{}', 12),
(110, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(111, 13, 'code', 'number', 'Kode Pekerjaan', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:10|unique:jobs\"}}', 2),
(112, 13, 'name', 'text', 'Nama Pekerjaan', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:100|unique:jobs\"}}', 3),
(113, 13, 'created_at', 'timestamp', 'Tgl Pembuatan', 0, 1, 1, 0, 0, 1, '{}', 4),
(114, 13, 'updated_at', 'timestamp', 'Tgl Diubah', 0, 0, 0, 0, 0, 0, '{}', 5),
(115, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(116, 15, 'name', 'text', 'Nama', 1, 0, 1, 0, 0, 0, '{}', 2),
(117, 15, 'email', 'text', 'Email', 1, 1, 1, 0, 0, 0, '{}', 3),
(118, 15, 'handphone', 'text', 'Handphone', 1, 1, 1, 0, 0, 0, '{}', 4),
(119, 15, 'message', 'text', 'Pesan', 1, 1, 1, 0, 0, 0, '{}', 5),
(120, 15, 'created_at', 'timestamp', 'Tanggal Pengiriman', 0, 1, 1, 1, 0, 1, '{}', 6),
(121, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(122, 1, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-07-02 07:59:53', '2019-07-31 06:58:54'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-07-02 07:59:53', '2019-07-02 07:59:53'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-07-02 07:59:53', '2019-07-02 07:59:53'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-07-02 08:00:08', '2019-07-02 08:00:08'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-07-02 08:00:10', '2019-07-02 08:00:10'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-07-02 08:00:12', '2019-07-02 08:00:12'),
(9, 'respondens', 'respondens', 'Responden', 'Respondens', 'voyager-people', 'App\\Responden', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\VoyagerRespondenController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-05 10:06:06', '2019-07-07 09:14:53'),
(12, 'status_codes', 'status-codes', 'Status Code', 'Kode Status KTP', 'voyager-bookmark', 'App\\StatusCode', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-07 08:27:54', '2019-07-08 09:29:35'),
(13, 'jobs', 'jobs', 'Job', 'List Pekerjaan', NULL, 'App\\Job', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"code\",\"order_display_column\":\"code\",\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2019-07-09 04:41:18', '2019-07-09 04:53:13'),
(15, 'contact_us', 'contact-us', 'Contact U', 'List Hubungi Kami', 'voyager-telephone', 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-16 11:15:41', '2019-07-16 11:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, '111', 'Belum / Tidak Bekerja', '2019-07-09 04:45:23', '2019-07-16 11:30:36'),
(2, '112', 'Mengurus Rumah Tangga', '2019-07-09 04:51:32', '2019-07-16 11:30:44'),
(3, '113', 'Pelajar / Mahasiswa', '2019-07-09 04:51:45', '2019-07-16 11:31:08'),
(4, '114', 'Pensiunan', '2019-07-09 04:53:50', '2019-07-16 11:31:21'),
(5, '115', 'Pegawai Negeri Sipil', '2019-07-09 04:54:31', '2019-07-16 11:31:34'),
(6, '116', 'Tentara Nasional Indonesia', '2019-07-09 04:54:41', '2019-07-16 11:31:44'),
(7, '117', 'Kepolisian RI', '2019-07-09 04:54:50', '2019-07-16 11:31:53'),
(8, '118', 'Perdagangan', '2019-07-09 04:55:02', '2019-07-16 11:32:06'),
(9, '119', 'Petani / Pekebun', '2019-07-09 04:55:11', '2019-07-16 11:32:19'),
(10, '110', 'Peternak', '2019-07-09 04:55:22', '2019-07-16 11:32:38'),
(11, '122', 'Nelayan / Perikanan', '2019-07-09 04:55:36', '2019-07-16 11:33:43'),
(12, '121', 'Industri', '2019-07-09 04:55:50', '2019-07-16 11:33:27'),
(13, '123', 'Konstruksi', '2019-07-09 04:56:00', '2019-07-16 11:33:51'),
(14, '124', 'Transportasi', '2019-07-09 04:56:09', '2019-07-16 11:33:59'),
(15, '125', 'Karyawan Swasta', '2019-07-09 04:56:17', '2019-07-16 11:34:10'),
(16, '126', 'Karyawan BUMN', '2019-07-09 04:56:46', '2019-07-16 11:34:20'),
(17, '127', 'Karyawan BUMD', '2019-07-09 04:56:55', '2019-07-16 11:34:31'),
(18, '128', 'Karyawan Honorer', '2019-07-09 04:57:04', '2019-07-16 11:34:56'),
(19, '129', 'Buruh Harian Lepas', '2019-07-09 04:57:12', '2019-07-16 11:35:07'),
(20, '130', 'Buruh Tani / Perkebunan', '2019-07-09 04:57:21', '2019-07-16 11:35:20'),
(21, '141', 'Buruh Nelayan / Perikanan', '2019-07-09 04:57:29', '2019-07-16 11:35:37'),
(22, '142', 'Buruh Peternakan', '2019-07-09 04:57:41', '2019-07-16 11:36:19'),
(23, '143', 'Pembantu Rumah Tangga', '2019-07-09 04:57:51', '2019-07-16 11:36:31'),
(24, '24', 'Tukang Cukur', '2019-07-09 04:58:00', '2019-07-09 05:28:47'),
(25, '25', 'Tukang Listrik', '2019-07-09 04:58:09', '2019-07-09 05:28:47'),
(26, '26', 'Tukang Batu', '2019-07-09 05:25:47', '2019-07-09 05:28:47'),
(27, '27', 'Tukang Kayu', '2019-07-09 05:25:55', '2019-07-09 05:28:47'),
(28, '28', 'Tukang Sol Sepatu', '2019-07-09 05:26:05', '2019-07-09 05:28:47'),
(29, '29', 'Tukang Las / Pandai Besi', '2019-07-09 05:26:14', '2019-07-09 05:28:47'),
(30, '30', 'Tukang Jahit', '2019-07-09 05:26:23', '2019-07-09 05:28:47'),
(31, '31', 'Penata Rambut', '2019-07-09 05:26:33', '2019-07-09 05:28:47'),
(32, '32', 'Penata Rias', '2019-07-09 05:27:15', '2019-07-09 05:28:47'),
(33, '33', 'Penata Busana', '2019-07-09 05:27:29', '2019-07-09 05:28:47'),
(34, '34', 'Mekanik', '2019-07-09 05:27:39', '2019-07-09 05:28:47'),
(35, '35', 'Tukang Gigi', '2019-07-09 05:27:46', '2019-07-09 05:28:47'),
(36, '36', 'Seniman', '2019-07-09 05:27:55', '2019-07-09 05:28:47'),
(37, '37', 'Tabib', '2019-07-09 05:28:03', '2019-07-09 05:28:47'),
(38, '38', 'Paraji', '2019-07-09 05:28:10', '2019-07-09 05:28:47'),
(39, '39', 'Perancang Busana', '2019-07-09 05:28:19', '2019-07-09 05:28:47'),
(40, '40', 'Penterjemah', '2019-07-09 05:28:27', '2019-07-09 05:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(2, 'MobileApp', '2019-07-06 12:04:58', '2019-07-06 12:04:58'),
(3, 'MobileHelpSupport', '2019-07-06 13:45:00', '2019-07-06 13:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-07-02 07:59:55', '2019-07-02 07:59:55', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2019-07-02 07:59:55', '2019-07-16 11:16:58', 'voyager.media.index', NULL),
(3, 1, 'Pengguna', '', '_self', 'voyager-person', '#000000', NULL, 3, '2019-07-02 07:59:55', '2019-07-04 13:54:52', 'voyager.users.index', 'null'),
(4, 1, 'Hak Akses', '', '_self', 'voyager-lock', '#000000', NULL, 2, '2019-07-02 07:59:55', '2019-07-04 13:54:44', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2019-07-02 07:59:55', '2019-07-16 11:16:58', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-07-02 07:59:55', '2019-07-04 13:55:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-07-02 07:59:55', '2019-07-04 13:55:39', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-07-02 07:59:55', '2019-07-04 13:55:39', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-07-02 07:59:55', '2019-07-04 13:55:39', 'voyager.bread.index', NULL),
(10, 1, 'Pengaturan', 'admin/settings', '_self', 'voyager-settings', '#000000', NULL, 13, '2019-07-02 07:59:55', '2019-07-16 11:16:58', NULL, ''),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2019-07-02 08:00:09', '2019-07-16 11:16:58', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 9, '2019-07-02 08:00:11', '2019-07-16 11:16:58', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2019-07-02 08:00:13', '2019-07-16 11:16:58', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-07-02 08:00:18', '2019-07-04 13:55:39', 'voyager.hooks', NULL),
(17, 1, 'Respondens', '', '_self', 'voyager-people', '#000000', NULL, 4, '2019-07-05 10:06:06', '2019-07-05 10:16:38', 'voyager.respondens.index', 'null'),
(18, 2, 'Beranda', 'home', '_self', 'Beranda', '#000000', NULL, 1, '2019-07-06 12:05:42', '2019-07-07 10:53:49', NULL, ''),
(19, 2, 'Biodata', 'biodata', '_self', 'Biodata', '#000000', NULL, 2, '2019-07-06 12:09:13', '2019-07-07 12:19:40', NULL, ''),
(21, 3, 'Status Cetak KTP', 'mailto:1406082@sttgarut.ac.id?Subject=StatusCetakKTP \"email me\"', '_self', 'Status Cetak KTP', '#000000', NULL, 11, '2019-07-06 13:49:09', '2019-07-06 13:54:02', NULL, ''),
(23, 1, 'Kode Status KTP', '', '_self', 'voyager-bookmark', '#000000', NULL, 6, '2019-07-07 08:27:56', '2019-07-16 11:16:58', 'voyager.status-codes.index', 'null'),
(24, 1, 'List Pekerjaan', '', '_self', 'voyager-receipt', '#000000', NULL, 7, '2019-07-09 04:41:19', '2019-07-16 11:16:58', 'voyager.jobs.index', 'null'),
(25, 1, 'List Hubungi Kami', '', '_self', 'voyager-telephone', '#000000', NULL, 5, '2019-07-16 11:15:41', '2019-07-16 11:17:32', 'voyager.contact-us.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2019_07_07_150403_create_status_codes_table', 3),
(28, '2019_07_09_113425_create_list_jobs_table', 4),
(29, '2019_07_09_113715_create_jobs_table', 5),
(30, '2019_07_16_172029_create_contact_us_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-07-02 08:00:14', '2019-07-02 08:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(2, 'browse_bread', NULL, '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(3, 'browse_database', NULL, '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(4, 'browse_media', NULL, '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(5, 'browse_compass', NULL, '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(6, 'browse_menus', 'menus', '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(7, 'read_menus', 'menus', '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(8, 'edit_menus', 'menus', '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(9, 'add_menus', 'menus', '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(10, 'delete_menus', 'menus', '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(11, 'browse_roles', 'roles', '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(12, 'read_roles', 'roles', '2019-07-02 07:59:55', '2019-07-02 07:59:55'),
(13, 'edit_roles', 'roles', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(14, 'add_roles', 'roles', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(15, 'delete_roles', 'roles', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(16, 'browse_users', 'users', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(17, 'read_users', 'users', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(18, 'edit_users', 'users', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(19, 'add_users', 'users', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(20, 'delete_users', 'users', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(21, 'browse_settings', 'settings', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(22, 'read_settings', 'settings', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(23, 'edit_settings', 'settings', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(24, 'add_settings', 'settings', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(25, 'delete_settings', 'settings', '2019-07-02 07:59:56', '2019-07-02 07:59:56'),
(26, 'browse_categories', 'categories', '2019-07-02 08:00:09', '2019-07-02 08:00:09'),
(27, 'read_categories', 'categories', '2019-07-02 08:00:09', '2019-07-02 08:00:09'),
(28, 'edit_categories', 'categories', '2019-07-02 08:00:09', '2019-07-02 08:00:09'),
(29, 'add_categories', 'categories', '2019-07-02 08:00:09', '2019-07-02 08:00:09'),
(30, 'delete_categories', 'categories', '2019-07-02 08:00:09', '2019-07-02 08:00:09'),
(31, 'browse_posts', 'posts', '2019-07-02 08:00:11', '2019-07-02 08:00:11'),
(32, 'read_posts', 'posts', '2019-07-02 08:00:11', '2019-07-02 08:00:11'),
(33, 'edit_posts', 'posts', '2019-07-02 08:00:11', '2019-07-02 08:00:11'),
(34, 'add_posts', 'posts', '2019-07-02 08:00:11', '2019-07-02 08:00:11'),
(35, 'delete_posts', 'posts', '2019-07-02 08:00:11', '2019-07-02 08:00:11'),
(36, 'browse_pages', 'pages', '2019-07-02 08:00:13', '2019-07-02 08:00:13'),
(37, 'read_pages', 'pages', '2019-07-02 08:00:13', '2019-07-02 08:00:13'),
(38, 'edit_pages', 'pages', '2019-07-02 08:00:14', '2019-07-02 08:00:14'),
(39, 'add_pages', 'pages', '2019-07-02 08:00:14', '2019-07-02 08:00:14'),
(40, 'delete_pages', 'pages', '2019-07-02 08:00:14', '2019-07-02 08:00:14'),
(41, 'browse_hooks', NULL, '2019-07-02 08:00:18', '2019-07-02 08:00:18'),
(52, 'browse_respondens', 'respondens', '2019-07-05 10:06:06', '2019-07-05 10:06:06'),
(53, 'read_respondens', 'respondens', '2019-07-05 10:06:06', '2019-07-05 10:06:06'),
(54, 'edit_respondens', 'respondens', '2019-07-05 10:06:06', '2019-07-05 10:06:06'),
(55, 'add_respondens', 'respondens', '2019-07-05 10:06:06', '2019-07-05 10:06:06'),
(56, 'delete_respondens', 'respondens', '2019-07-05 10:06:06', '2019-07-05 10:06:06'),
(62, 'browse_status_codes', 'status_codes', '2019-07-07 08:27:54', '2019-07-07 08:27:54'),
(63, 'read_status_codes', 'status_codes', '2019-07-07 08:27:54', '2019-07-07 08:27:54'),
(64, 'edit_status_codes', 'status_codes', '2019-07-07 08:27:54', '2019-07-07 08:27:54'),
(65, 'add_status_codes', 'status_codes', '2019-07-07 08:27:54', '2019-07-07 08:27:54'),
(66, 'delete_status_codes', 'status_codes', '2019-07-07 08:27:56', '2019-07-07 08:27:56'),
(67, 'browse_jobs', 'jobs', '2019-07-09 04:41:18', '2019-07-09 04:41:18'),
(68, 'read_jobs', 'jobs', '2019-07-09 04:41:18', '2019-07-09 04:41:18'),
(69, 'edit_jobs', 'jobs', '2019-07-09 04:41:18', '2019-07-09 04:41:18'),
(70, 'add_jobs', 'jobs', '2019-07-09 04:41:18', '2019-07-09 04:41:18'),
(71, 'delete_jobs', 'jobs', '2019-07-09 04:41:18', '2019-07-09 04:41:18'),
(72, 'browse_contact_us', 'contact_us', '2019-07-16 11:15:41', '2019-07-16 11:15:41'),
(73, 'read_contact_us', 'contact_us', '2019-07-16 11:15:41', '2019-07-16 11:15:41'),
(74, 'edit_contact_us', 'contact_us', '2019-07-16 11:15:41', '2019-07-16 11:15:41'),
(75, 'add_contact_us', 'contact_us', '2019-07-16 11:15:41', '2019-07-16 11:15:41'),
(76, 'delete_contact_us', 'contact_us', '2019-07-16 11:15:41', '2019-07-16 11:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(56, 1),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-07-02 08:00:12', '2019-07-05 04:22:05'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-07-02 08:00:12', '2019-07-02 08:00:12'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-07-02 08:00:12', '2019-07-02 08:00:12'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-07-02 08:00:12', '2019-07-02 08:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `respondens`
--

CREATE TABLE `respondens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_code_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `rt` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rw` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desa` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kabupaten` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_perkawinan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kewarganegaraan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `respondens`
--

INSERT INTO `respondens` (`id`, `user_id`, `status_code_id`, `nama`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `rt`, `rw`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `agama`, `status_perkawinan`, `pekerjaan`, `kewarganegaraan`, `deleted_at`, `created_at`, `updated_at`) VALUES
(26, 28, NULL, 'SMKIKAKARTIKA', '1234567890123453', 'Garut', '1995-01-22', 'Laki-Laki', 'Jl. H. Abdurahman No. 40', '02', '02', 'Tanggulun', 'Kadungora', 'Garut', 'Jawa Barat', 'Islam', 'Kawin', 'Buruh Tani / Perkebunan', 'WNI', NULL, '2019-07-09 08:27:04', '2019-07-10 10:16:07'),
(28, 32, NULL, 'Iqbal Revvin', '3205102201950003', 'Garut', '1995-07-22', 'Laki-Laki', NULL, '001', '002', 'Tanggulun', '44153', 'Garut', 'Jawa Barat', 'Islam', 'Belum Kawin', 'Karyawan Honorer', 'WNI', NULL, '2019-07-10 11:13:21', '2019-07-16 11:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'Developer', '2019-07-02 07:59:55', '2019-07-02 08:20:24'),
(2, 'user', 'Responden', '2019-07-02 07:59:55', '2019-07-06 03:39:42'),
(3, 'Admin', 'Admin', '2019-07-02 08:21:06', '2019-07-02 08:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'SysmonikaApp', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Sistem Monitoring E-KTP', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\July2019\\fgjQ5mQGFWpttcI4eT23.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\July2019\\BflOxw2YxsSf4A4VXr1s.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Sysmonika', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Sistem Monitoring E-KTP', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.slide-1-title', 'Slide-1-Title', 'Sysmonika App', NULL, 'text', 6, 'Site'),
(12, 'site.slide-1-description', 'Slide-1-Description', 'Sysmonika kepanjangan dari Sistem Monitoring E-KTP yang berfungsi sebagai media untuk memonitoring status KTP anda di lingkungan disdukcapil.', NULL, 'text_area', 7, 'Site'),
(13, 'site.slide-2-title', 'Slide-2-Title', 'Pendaftaran Mudah', NULL, 'text', 8, 'Site'),
(14, 'site.slide-2-description', 'Slide-2-Description', 'Gunakan akun email & No. Hp yang valid untuk melakukan pendaftaran pada aplikasi Sysmonika, kemudian login dan tunggu hingga admin memeprbarui status KTP anda.', NULL, 'text_area', 9, 'Site'),
(15, 'site.slide-3-title', 'Slide-3-Title', 'Feleksibel', NULL, 'text', 10, 'Site'),
(16, 'site.slide-3-description', 'Slide-3-Description', 'Cek kode status ktp anda kini sudah dalam genggaman dan tidak perlu lagi mendatangi kantor disdukcapil hanya untuk memantau status saja.', NULL, 'text_area', 11, 'Site'),
(17, 'site.call_center', 'Call Center', '0852-4481-6685', NULL, 'text', 12, 'Site'),
(18, 'site.embed_lokasi', 'Embed Lokasi', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.3447096889217!2d107.88339121437023!3d-7.201455172692499!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68b0f470bb86f5%3A0xd33fc6c0f54e09d4!2sDinas+Kependudukan+dan+Catatan+Sipil!5e0!3m2!1sid!2sid!4v1562243675232!5m2!1sid!2sid\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, 'text', 13, 'Site'),
(19, 'site.deskripsi_lokasi', 'Deskripsi Lokasi', 'Jl. Patriot No.12, Sukagalih,<br> \r\nKec. Tarogong Kidul,<br> \r\nKabupaten Garut,<br> \r\nJawa Barat 44151', NULL, 'text_area', 14, 'Site'),
(20, 'site.app_version', 'App Version', '0.91', NULL, 'text', 15, 'Site'),
(21, 'site.footer_content', 'Footer Content', '© Sysmonika, All rights reserved.', NULL, 'text', 16, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `status_codes`
--

CREATE TABLE `status_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_codes`
--

INSERT INTO `status_codes` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(8, '200', 'Siap Cetak', '2019-07-07 12:56:19', '2019-07-07 12:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-07-02 08:00:15', '2019-07-02 08:00:15'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-07-02 08:00:16', '2019-07-02 08:00:16'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-07-02 08:00:16', '2019-07-02 08:00:16'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-07-02 08:00:16', '2019-07-02 08:00:16'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-07-02 08:00:16', '2019-07-02 08:00:16'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-07-02 08:00:16', '2019-07-02 08:00:16'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-07-02 08:00:16', '2019-07-02 08:00:16'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-07-02 08:00:16', '2019-07-02 08:00:16'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-07-02 08:00:16', '2019-07-02 08:00:16'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-07-02 08:00:16', '2019-07-02 08:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Developer', 'appsysmonika@gmail.com', 'users\\July2019\\S8ogiag2eBnFiZQoJWFO.jpeg', NULL, '$2y$10$WLD3hOtY2IJEbEytIb5B6uY/B5z4QOuwajs3bBTsZ6UmxXzynYQti', 'do7mDyTCuU3OsnblQP2TePkFRVKMSZPkZwgRpOhOMDvEzD1LD36tQ8xfpDMN', '{\"locale\":\"id\"}', '2019-07-02 08:00:10', '2019-07-31 07:13:05', NULL),
(2, 3, 'Administrator', 'admin@admin.com', 'users\\July2019\\3efWnQBYcytMlUfkCcOs.jpeg', NULL, '$2y$10$b2xF1KQedGKs8t.JGXrIDeMCzA/i4E2E4Jo91kbCH0cRsHicb4hpW', NULL, '{\"locale\":\"id\"}', '2019-07-02 08:21:43', '2019-07-31 07:13:18', NULL),
(28, 2, 'SMKIKAKARTIKA', 'smkikakartika@gmail.com', 'users/default.png', '2019-07-09 08:27:18', '$2y$10$sPhtGj1eyiIM/bAtgRufke0usJw5uCP66kiysODHIsXnA/BKSBsOC', NULL, NULL, '2019-07-09 08:27:03', '2019-07-09 08:27:18', NULL),
(32, 2, 'M. Iqbal', 'iqbal.revvin@gmail.com', 'users/default.png', '2019-07-10 11:15:15', '$2y$10$fGauBxxSPXEE0.UowAxBhu6fmOZp.0SjxJl9yITWHQVo4VaiYbtEK', 'jCs7UrPVDEh9UI3dpwU6kbTsaAW2mxMfOPylysidQNKIPGZi1qNPXSxjE7XI', NULL, '2019-07-10 11:13:20', '2019-07-20 03:46:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `respondens`
--
ALTER TABLE `respondens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `responden_nik_unique` (`nik`),
  ADD KEY `users_id` (`user_id`),
  ADD KEY `status_code_id` (`status_code_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `status_codes`
--
ALTER TABLE `status_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `respondens`
--
ALTER TABLE `respondens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `status_codes`
--
ALTER TABLE `status_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `respondens`
--
ALTER TABLE `respondens`
  ADD CONSTRAINT `respondens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `respondens_ibfk_2` FOREIGN KEY (`status_code_id`) REFERENCES `status_codes` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
