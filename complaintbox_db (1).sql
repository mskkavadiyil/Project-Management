-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 06:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complaintbox_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add teammemberregister', 7, 'add_teammemberregister'),
(26, 'Can change teammemberregister', 7, 'change_teammemberregister'),
(27, 'Can delete teammemberregister', 7, 'delete_teammemberregister'),
(28, 'Can view teammemberregister', 7, 'view_teammemberregister'),
(29, 'Can add teamleadregister', 8, 'add_teamleadregister'),
(30, 'Can change teamleadregister', 8, 'change_teamleadregister'),
(31, 'Can delete teamleadregister', 8, 'delete_teamleadregister'),
(32, 'Can view teamleadregister', 8, 'view_teamleadregister'),
(33, 'Can add facack', 9, 'add_facack'),
(34, 'Can change facack', 9, 'change_facack'),
(35, 'Can delete facack', 9, 'delete_facack'),
(36, 'Can view facack', 9, 'view_facack'),
(37, 'Can add project', 10, 'add_project'),
(38, 'Can change project', 10, 'change_project'),
(39, 'Can delete project', 10, 'delete_project'),
(40, 'Can view project', 10, 'view_project'),
(41, 'Can add acknowledgement', 11, 'add_acknowledgement'),
(42, 'Can change acknowledgement', 11, 'change_acknowledgement'),
(43, 'Can delete acknowledgement', 11, 'delete_acknowledgement'),
(44, 'Can view acknowledgement', 11, 'view_acknowledgement');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaintbox_acknowledgement`
--

CREATE TABLE `complaintbox_acknowledgement` (
  `id` int(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(500) NOT NULL,
  `fromemail` varchar(200) NOT NULL,
  `ackmesg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaintbox_acknowledgement`
--

INSERT INTO `complaintbox_acknowledgement` (`id`, `name`, `date`, `email`, `fromemail`, `ackmesg`) VALUES
(8, 'lead1', '2024-07-14', 'lead1@gmail.com', 'lead1@gmail.com', 'THE DEVELOPMENT IS ON PROGRESSS');

-- --------------------------------------------------------

--
-- Table structure for table `complaintbox_complaint`
--

CREATE TABLE `complaintbox_complaint` (
  `id` int(200) NOT NULL,
  `userid` varchar(500) NOT NULL,
  `complaintto` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `complaintmesg` varchar(5000) NOT NULL,
  `status` varchar(500) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaintbox_complaint`
--

INSERT INTO `complaintbox_complaint` (`id`, `userid`, `complaintto`, `date`, `name`, `email`, `complaintmesg`, `status`, `user_id`) VALUES
(15, '5048972', 'project management application', '2024-07-14', 'test1', 'test1@gmail.com', 'to be done asap', 'to-do', 20),
(16, 'SNT18ME032', 'develepor@gmail.com', '2024-07-14', 'lead1', 'lead1@gmail.com', 'project management applicationdescription: to be done asap', 'in progress', 21);

-- --------------------------------------------------------

--
-- Table structure for table `complaintbox_facack`
--

CREATE TABLE `complaintbox_facack` (
  `id` int(200) NOT NULL,
  `date` varchar(500) NOT NULL,
  `designation` varchar(250) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `ackmesg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaintbox_facultyregister`
--

CREATE TABLE `complaintbox_facultyregister` (
  `id` int(200) NOT NULL,
  `designation` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaintbox_facultyregister`
--

INSERT INTO `complaintbox_facultyregister` (`id`, `designation`, `name`, `email`, `password`) VALUES
(13, 'develepor/5048972', 'develepor1', 'develepor@gmail.com', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `complaintbox_studentregister`
--

CREATE TABLE `complaintbox_studentregister` (
  `id` int(200) NOT NULL,
  `userphoto` varchar(500) NOT NULL,
  `useremail` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL,
  `userphone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaintbox_studentregister`
--

INSERT INTO `complaintbox_studentregister` (`id`, `userphoto`, `useremail`, `username`, `userphone`, `password`) VALUES
(20, 'IMG_20181224_131218_781.jpg', 'test1@gmail.com', 'test1', '5432109876', '1234567890'),
(21, 'PicsArt_03-04-11.32.03.jpg', 'lead1@gmail.com', 'lead1', '95726549172', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'project_management_application', 'acknowledgement'),
(9, 'project_management_application', 'facack'),
(10, 'project_management_application', 'project'),
(8, 'project_management_application', 'teamleadregister'),
(7, 'project_management_application', 'teammemberregister'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-14 15:25:42.736642'),
(2, 'auth', '0001_initial', '2023-05-14 15:25:54.595046'),
(3, 'admin', '0001_initial', '2023-05-14 15:25:57.125054'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-14 15:25:57.185305'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-14 15:25:57.265382'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-14 15:25:58.305540'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-14 15:25:59.985370'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-14 15:26:00.520204'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-14 15:26:00.630300'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-14 15:26:01.365560'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-14 15:26:01.455214'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-14 15:26:01.525015'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-14 15:26:01.685031'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-14 15:26:01.835391'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-14 15:26:02.100155'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-14 15:26:02.150840'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-14 15:26:02.345015'),
(18, 'sessions', '0001_initial', '2023-05-14 15:26:03.275058');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3bhyme6xvk2a92fvyrmth0air3odozuj', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3MMzQydkjPBQroJefnKulABGGSSrUA9XMSEQ:1q9ecj:ZSTitX4DVDU1SdywHl9TGnlff76nhZUtu9BKLy4lrlU', '2023-06-29 04:30:17.241831'),
('92qhpzlf85hp3s335tdjbnpk2z845298', 'e30:1qBVXD:Uhv2J-0NATycxYcsKxVxnyZ6z7FkqYkkc7IyFI85Y7M', '2023-07-04 07:12:15.607474'),
('cbl915spralu9mc9zpjhyvrufo88sqts', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3MMzQydkjPBQroJefnKulABGGSSrUA9XMSEQ:1sSqol:ng5uY5r9qxR9LUzNrPRnjedt7tRWd04oHUYAyOC1oX8', '2024-07-28 04:26:35.203777'),
('gimjtuo2chjyxd6ito3mxmgz68ts6yz2', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3MMzQydkjPBQroJefnKulABGGSSrUA9XMSEQ:1q789W:3eYllmVx_Tj6MaW31P2minYGqbCkJpeyBo38JHle_1o', '2023-06-22 05:25:42.917542'),
('lb87yaxslxv2yzv5x5pr3ahipiclqp4d', 'eyJ2aWQiOjEsInVuYW1lIjoiU0FDSElOIENIQU5EUkFOIiwiZW1haWwiOiJzYWNoaW5jaGFuZHJhbjI4MkBnbWFpbC5jb20iLCJ1c2VyIjoidXNlciJ9:1q4dUd:Pb6fm41fJwp-B3bz1-BQ7Y7MUTgzLAlxVs6zRQPcYA4', '2023-06-15 08:17:11.430549'),
('qqj850pscjp7ctw6hi6pxfby5kbfc0if', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3MMzQydkjPBQroJefnKulABGGSSrUA9XMSEQ:1q4ehH:Q7drgQr4DwSuDJVBm2CAHdAAIunZR9sUd0oPsT5FyKc', '2023-06-15 09:34:19.935450');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `complaintbox_acknowledgement`
--
ALTER TABLE `complaintbox_acknowledgement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintbox_complaint`
--
ALTER TABLE `complaintbox_complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintbox_facack`
--
ALTER TABLE `complaintbox_facack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintbox_facultyregister`
--
ALTER TABLE `complaintbox_facultyregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintbox_studentregister`
--
ALTER TABLE `complaintbox_studentregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaintbox_acknowledgement`
--
ALTER TABLE `complaintbox_acknowledgement`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaintbox_complaint`
--
ALTER TABLE `complaintbox_complaint`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `complaintbox_facack`
--
ALTER TABLE `complaintbox_facack`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `complaintbox_facultyregister`
--
ALTER TABLE `complaintbox_facultyregister`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `complaintbox_studentregister`
--
ALTER TABLE `complaintbox_studentregister`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
