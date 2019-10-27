-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2019 at 07:52 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `julia`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-10-22 14:56:14', '2019-10-22 14:56:14', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/julia', 'yes'),
(2, 'home', 'http://localhost/julia', 'yes'),
(3, 'blogname', 'Julia', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mehedi5051@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'julia', 'yes'),
(41, 'stylesheet', 'julia', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:8:\"footer-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:8:\"footer-2\";a:1:{i:0;s:10:\"nav_menu-3\";}s:8:\"footer-3\";a:1:{i:0;s:10:\"nav_menu-4\";}s:8:\"footer-4\";a:1:{i:0;s:10:\"nav_menu-5\";}s:8:\"footer-5\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1572162976;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1572188175;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572188176;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572188239;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572188241;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'nonce_key', 'YhFk)EZp84UX9at1sTP1<L1)l?:vnW4anclJ=%rnI+!0$EHyfNuN-;y_`G:1uU-N', 'no'),
(110, 'nonce_salt', '*Ta<8@)7O0W(),u0pC`3t^dd!a!a~ptw~IwZIL7oJF^S[7EpV-y6d.kA?+u0!3q=', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:5:{i:2;a:1:{s:8:\"nav_menu\";i:3;}i:3;a:2:{s:5:\"title\";s:5:\"J.Ivy\";s:8:\"nav_menu\";i:4;}i:4;a:2:{s:5:\"title\";s:7:\"BE-EDGE\";s:8:\"nav_menu\";i:5;}i:5;a:2:{s:5:\"title\";s:8:\"Services\";s:8:\"nav_menu\";i:6;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"SImghjvw7oQfCwKHhUg0Gp\";a:2:{s:10:\"hashed_key\";s:34:\"$P$Bjcpj/GxKizktE6lpnK2o.f5UkK9EP0\";s:10:\"created_at\";i:1572162517;}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1572151309;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1572162603;s:7:\"checked\";a:1:{s:5:\"julia\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, 'auth_key', '9..c=6bS2F$=~f.kVA%ACTDN)rlMgp794mq:xl@mbSO$;Cvkd|}3i++=Y<bb#UFM', 'no'),
(123, 'auth_salt', '2I[G%gI!QRR9+;Qqeh~jm%u$J/F`nO.(RT)u!~gbpFE`[3p`{*@965}N(h(qTR2n', 'no'),
(124, 'logged_in_key', 'rG~zTI<n+14l0AzYaux]DiXrvoh]K-j,wgcL` oo`QUNCvJ3,!FXk8[N`V:462x+', 'no'),
(125, 'logged_in_salt', 'f,Z5=@kY_7l&H6y& >M!EM-nansv=Gu+N,9%[KM=.uZ3H[l)8&Mcub|<#qBu;5-M', 'no'),
(126, '_site_transient_timeout_browser_5df79409a8a4b8f9cb4ab5ef474e3719', '1572361039', 'no'),
(127, '_site_transient_browser_5df79409a8a4b8f9cb4ab5ef474e3719', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"77.0.3865.90\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_b1f7d17548e7b3eac5214a006719f44e', '1572361040', 'no'),
(129, '_site_transient_php_check_b1f7d17548e7b3eac5214a006719f44e', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(144, 'theme_mods_twentynineteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1571756247;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(145, 'current_theme', '', 'yes'),
(146, 'theme_mods_julia', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:5:{s:6:\"menu-1\";i:2;s:6:\"menu-2\";i:3;s:6:\"menu-4\";i:5;s:6:\"menu-3\";i:4;s:6:\"menu-5\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(150, 'recently_activated', 'a:3:{s:30:\"advanced-custom-fields/acf.php\";i:1572162589;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:1572162487;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1571757805;}', 'yes'),
(151, 'acf_version', '5.8.3', 'yes'),
(152, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1571757801;s:7:\"version\";s:5:\"5.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(170, 'category_children', 'a:0:{}', 'yes'),
(175, 'options_banner_group_banner_image', '30', 'no'),
(176, '_options_banner_group_banner_image', 'field_5daff458d90fb', 'no'),
(177, 'options_banner_group_main_title', 'INSTRUMENT TO CRAFT EMPLOYABILITY FOR MULTIDIMENSIONAL JOB CANDIDATES', 'no'),
(178, '_options_banner_group_main_title', 'field_5daff463d90fc', 'no'),
(179, 'options_banner_group_secondary_title', 'Using the BE-EDGE Method for Consulting Cases and Capstone Projects', 'no'),
(180, '_options_banner_group_secondary_title', 'field_5daff46fd90fd', 'no'),
(181, 'options_banner_group', '', 'no'),
(182, '_options_banner_group', 'field_5daff408d90fa', 'no'),
(183, 'options_education_and_experience_group_head_text', 'Julia Ivy', 'no'),
(184, '_options_education_and_experience_group_head_text', 'field_5daff4cfd90ff', 'no'),
(185, 'options_education_and_experience_group_education_experiences', '3', 'no'),
(186, '_options_education_and_experience_group_education_experiences', 'field_5daff4f7d9100', 'no'),
(187, 'options_education_and_experience_group', '', 'no'),
(188, '_options_education_and_experience_group', 'field_5daff4a6d90fe', 'no'),
(189, 'options_services_group', '', 'no'),
(190, '_options_services_group', 'field_5daff5d5a1acd', 'no'),
(191, 'options_footer_group_copy_right_text', 'Copyright © 2019 Julia Ivy. All Rights Reserved.', 'no'),
(192, '_options_footer_group_copy_right_text', 'field_5db03221c3815', 'no'),
(193, 'options_footer_group_company_logo', '2', 'no'),
(194, '_options_footer_group_company_logo', 'field_5db0324ac3817', 'no'),
(195, 'options_footer_group', '', 'no'),
(196, '_options_footer_group', 'field_5db03212c3814', 'no'),
(197, 'options_education_and_experience_group_education_experiences_0_add_educationexperience', 'Ph.D. Psychology & Ph.D. Management (Strategy)', 'no'),
(198, '_options_education_and_experience_group_education_experiences_0_add_educationexperience', 'field_5daff58b8228e', 'no'),
(199, 'options_education_and_experience_group_education_experiences_1_add_educationexperience', 'Expert in personal strategy for multidimensional professionals', 'no'),
(200, '_options_education_and_experience_group_education_experiences_1_add_educationexperience', 'field_5daff58b8228e', 'no'),
(201, 'options_education_and_experience_group_education_experiences_2_add_educationexperience', 'Consultant for universities and businesses in crafted employment and employability', 'no'),
(202, '_options_education_and_experience_group_education_experiences_2_add_educationexperience', 'field_5daff58b8228e', 'no'),
(203, 'options_education_and_experience_group_show_more_button_link', 'a:3:{s:5:\"title\";s:9:\"Show More\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}', 'no'),
(204, '_options_education_and_experience_group_show_more_button_link', 'field_5db035874eb5e', 'no'),
(206, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(208, 'options_education_and_experience_group_show_more_button_group_show_more_button_link', '', 'no'),
(209, '_options_education_and_experience_group_show_more_button_group_show_more_button_link', 'field_5db035874eb5e', 'no'),
(210, 'options_education_and_experience_group_show_more_button_group', '', 'no'),
(211, '_options_education_and_experience_group_show_more_button_group', 'field_5db036314dfa6', 'no'),
(228, 'options_education_and_experience_group_show_more_button_group_show_more_button_text', '', 'no'),
(229, '_options_education_and_experience_group_show_more_button_group_show_more_button_text', 'field_5db13924bd18d', 'no'),
(230, 'options_services_group_section_one_title', 'How the BE-EDGE Method can help:', 'no'),
(231, '_options_services_group_section_one_title', 'field_5db141115a6f4', 'no'),
(232, 'options_services_group_download_button_text', 'Download Book Now', 'no'),
(233, '_options_services_group_download_button_text', 'field_5db1412f5a6f5', 'no'),
(234, 'options_services_group_download_button_url', 'http://localhost/julia/download', 'no'),
(235, '_options_services_group_download_button_url', 'field_5db1414d5a6f6', 'no'),
(236, 'options_services_group_section_two_title', 'PEOPLE', 'no'),
(237, '_options_services_group_section_two_title', 'field_5db141c07471d', 'no'),
(238, 'options_services_group_section_two_link', 'http://localhost/julia/two', 'no'),
(239, '_options_services_group_section_two_link', 'field_5db14442ca2ab', 'no'),
(240, 'options_services_group_section_two_list_options', '3', 'no'),
(241, '_options_services_group_section_two_list_options', 'field_5db142137471e', 'no'),
(242, 'options_services_group_section_three_title', 'UNIVERSITIES', 'no'),
(243, '_options_services_group_section_three_title', 'field_5db142af53f4b', 'no'),
(244, 'options_services_group_section_three_link', 'http://localhost/julia/three', 'no'),
(245, '_options_services_group_section_three_link', 'field_5db14485ca2ac', 'no'),
(246, 'options_services_group_section_three_list_options', '6', 'no'),
(247, '_options_services_group_section_three_list_options', 'field_5db1427c53f49', 'no'),
(248, 'options_services_group_section_four_title', 'BUSINESSES', 'no'),
(249, '_options_services_group_section_four_title', 'field_5db14362f8fae', 'no'),
(250, 'options_services_group_section_four_link', 'http://localhost/julia/four', 'no'),
(251, '_options_services_group_section_four_link', 'field_5db14492ca2ad', 'no'),
(252, 'options_services_group_section_four_list_options', '4', 'no'),
(253, '_options_services_group_section_four_list_options', 'field_5db1436df8faf', 'no'),
(254, 'options_footer_group_company_logo_0_logos', '74', 'no'),
(255, '_options_footer_group_company_logo_0_logos', 'field_5db0332701aec', 'no'),
(256, 'options_footer_group_company_logo_1_logos', '75', 'no'),
(257, '_options_footer_group_company_logo_1_logos', 'field_5db0332701aec', 'no'),
(258, 'options_banner_group_banner_button_text', 'Buy now', 'no'),
(259, '_options_banner_group_banner_button_text', 'field_5db146f239266', 'no'),
(260, 'options_banner_group_banner_button_link', 'https://www.google.com', 'no'),
(261, '_options_banner_group_banner_button_link', 'field_5db1471b39267', 'no'),
(286, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1572162478;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.5\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.4\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.2.4\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(289, 'cptui_new_install', 'false', 'yes'),
(290, 'cptui_post_types', 'a:1:{s:4:\"blog\";a:29:{s:4:\"name\";s:4:\"blog\";s:5:\"label\";s:10:\"Blog Posts\";s:14:\"singular_label\";s:9:\"Blog Post\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:6:\"editor\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(294, 'options_theme_color', '#eeee22', 'no'),
(295, '_options_theme_color', 'field_5db27dac6e71c', 'no'),
(296, 'options_services_group_section_two_list_options_0_section_two_option', 'Making the \"what\'s next?\" choice', 'no'),
(297, '_options_services_group_section_two_list_options_0_section_two_option', 'field_5db1423ec79b3', 'no'),
(298, 'options_services_group_section_two_list_options_1_section_two_option', 'Investing to YOUR own personal, social, and professional capitals', 'no'),
(299, '_options_services_group_section_two_list_options_1_section_two_option', 'field_5db1423ec79b3', 'no'),
(300, 'options_services_group_section_two_list_options_2_section_two_option', 'Make YOUR case to craft YOUR edge\" utilization of YOUR capitals', 'no'),
(301, '_options_services_group_section_two_list_options_2_section_two_option', 'field_5db1423ec79b3', 'no'),
(305, 'options_services_group_section_three_list_options_0_section_three_option', 'Capstone courses for career design', 'no'),
(306, '_options_services_group_section_three_list_options_0_section_three_option', 'field_5db1427d53f4a', 'no'),
(307, 'options_services_group_section_three_list_options_1_section_three_option', 'Consulting Case Writing Competition', 'no'),
(308, '_options_services_group_section_three_list_options_1_section_three_option', 'field_5db1427d53f4a', 'no'),
(309, 'options_services_group_section_three_list_options_2_section_three_option', 'Alumna engagement', 'no'),
(310, '_options_services_group_section_three_list_options_2_section_three_option', 'field_5db1427d53f4a', 'no'),
(311, 'options_services_group_section_three_list_options_3_section_three_option', 'Employer engagement', 'no'),
(312, '_options_services_group_section_three_list_options_3_section_three_option', 'field_5db1427d53f4a', 'no'),
(313, 'options_services_group_section_three_list_options_4_section_three_option', 'Internships with impact measures', 'no'),
(314, '_options_services_group_section_three_list_options_4_section_three_option', 'field_5db1427d53f4a', 'no'),
(315, 'options_services_group_section_three_list_options_5_section_three_option', 'Enrollment to graduate programs', 'no'),
(316, '_options_services_group_section_three_list_options_5_section_three_option', 'field_5db1427d53f4a', 'no'),
(317, 'options_services_group_section_four_list_options_0_section_four_option', 'Talent recruitmentand verification through the company fit Veteran engagement', 'no'),
(318, '_options_services_group_section_four_list_options_0_section_four_option', 'field_5db143d8f8fb0', 'no'),
(319, 'options_services_group_section_four_list_options_1_section_four_option', 'University engagement for the talent pipeline', 'no'),
(320, '_options_services_group_section_four_list_options_1_section_four_option', 'field_5db143d8f8fb0', 'no'),
(321, 'options_services_group_section_four_list_options_2_section_four_option', 'Workplace development for Milennials and Gen Z', 'no'),
(322, '_options_services_group_section_four_list_options_2_section_four_option', 'field_5db143d8f8fb0', 'no'),
(323, 'options_services_group_section_four_list_options_3_section_four_option', 'Workplace development for design thinkers', 'no'),
(324, '_options_services_group_section_four_list_options_3_section_four_option', 'field_5db143d8f8fb0', 'no'),
(330, 'options_section_title', 'IN VARIUS METUS SED', 'no'),
(331, '_options_section_title', 'field_5db2a0f5a281b', 'no'),
(332, 'options_section_description', 'Aliquam laoreet sem magna, sed ornare ligula maximus non. Praesent vehicula odio quam, nec finibus nisl elementum a. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'no'),
(333, '_options_section_description', 'field_5db2a101a281c', 'no'),
(347, 'options_footer_group_copyright_text', 'Copyright © 2019 Julia Ivy. All Rights Reserved.', 'no'),
(348, '_options_footer_group_copyright_text', 'field_5db03221c3815', 'no'),
(349, 'options_footer_group_company_logos_0_logo', '74', 'no'),
(350, '_options_footer_group_company_logos_0_logo', 'field_5db0332701aec', 'no'),
(351, 'options_footer_group_company_logos_1_logo', '75', 'no'),
(352, '_options_footer_group_company_logos_1_logo', 'field_5db0332701aec', 'no'),
(353, 'options_footer_group_company_logos', '2', 'no'),
(354, '_options_footer_group_company_logos', 'field_5db0324ac3817', 'no'),
(361, 'options__facebook_profile_link', 'https://facebook.com/mehedi5', 'no'),
(362, '_options__facebook_profile_link', 'field_5db2e2b6999a6', 'no'),
(363, 'options__twitter_profile_link', 'https://twitter.com/Mehedi___', 'no'),
(364, '_options__twitter_profile_link', 'field_5db2e2c2709a2', 'no'),
(365, 'options__instagram_profile_link', '', 'no'),
(366, '_options__instagram_profile_link', 'field_5db2e2cc709a3', 'no'),
(367, 'options__linkedin_profile_link', '', 'no'),
(368, '_options__linkedin_profile_link', 'field_5db2e2d4709a4', 'no'),
(369, 'options__show_in_top_header', '1', 'no'),
(370, '_options__show_in_top_header', 'field_5db2e3112ad4d', 'no'),
(371, 'options__show_in_footer', '1', 'no'),
(372, '_options__show_in_footer', 'field_5db2e32b2ad4e', 'no'),
(373, 'options_', '', 'no'),
(374, '_options_', 'field_5db2e1d76881f', 'no'),
(375, 'options_social_icon_settings_facebook_profile_link', 'https://facebook.com/mehedi5', 'no'),
(376, '_options_social_icon_settings_facebook_profile_link', 'field_5db2e2b6999a6', 'no'),
(377, 'options_social_icon_settings_twitter_profile_link', 'https://twitter.com/Mehedi___', 'no'),
(378, '_options_social_icon_settings_twitter_profile_link', 'field_5db2e2c2709a2', 'no'),
(379, 'options_social_icon_settings_instagram_profile_link', 'https://twitter.com/Mehedi___', 'no'),
(380, '_options_social_icon_settings_instagram_profile_link', 'field_5db2e2cc709a3', 'no'),
(381, 'options_social_icon_settings_linkedin_profile_link', 'https://twitter.com/Mehedi___', 'no'),
(382, '_options_social_icon_settings_linkedin_profile_link', 'field_5db2e2d4709a4', 'no'),
(383, 'options_social_icon_settings_show_in_top_header', '1', 'no'),
(384, '_options_social_icon_settings_show_in_top_header', 'field_5db2e3112ad4d', 'no'),
(385, 'options_social_icon_settings_show_in_footer', '1', 'no'),
(386, '_options_social_icon_settings_show_in_footer', 'field_5db2e32b2ad4e', 'no'),
(387, 'options_social_icon_settings', '', 'no'),
(388, '_options_social_icon_settings', 'field_5db2e1d76881f', 'no'),
(393, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1572194697', 'no'),
(394, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(395, 'options_site_logo', '76', 'no'),
(396, '_options_site_logo', 'field_5db520e6d3f80', 'no'),
(397, 'options_site_logo_group_site_logo', '76', 'no'),
(398, '_options_site_logo_group_site_logo', 'field_5db520e6d3f80', 'no'),
(399, 'options_site_logo_group_show_in_footer', '0', 'no'),
(400, '_options_site_logo_group_show_in_footer', 'field_5db52158e718a', 'no'),
(401, 'options_site_logo_group', '', 'no'),
(402, '_options_site_logo_group', 'field_5db52126e7188', 'no'),
(404, 'options_site_logo_group_logo_show_in_footer', '1', 'no'),
(405, '_options_site_logo_group_logo_show_in_footer', 'field_5db52158e718a', 'no'),
(406, 'options_site_logo_group_footer_logo', '34', 'no'),
(407, '_options_site_logo_group_footer_logo', 'field_5db52e5dd741c', 'no'),
(410, 'options_footer_group_company_logos_0_company_website_link', 'https://www.amazon.com/', 'no'),
(411, '_options_footer_group_company_logos_0_company_website_link', 'field_5db540265d216', 'no'),
(412, 'options_footer_group_company_logos_1_company_website_link', 'https://www.google.com', 'no'),
(413, '_options_footer_group_company_logos_1_company_website_link', 'field_5db540265d216', 'no'),
(418, '_transient_timeout_acf_plugin_updates', '1572335102', 'no'),
(419, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.2.4\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.3\";}}', 'no'),
(420, '_transient_timeout_plugin_slugs', '1572249005', 'no'),
(421, '_transient_plugin_slugs', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:9:\"hello.php\";}', 'no'),
(422, 'recovery_mode_email_last_sent', '1572162517', 'yes'),
(423, '_site_transient_timeout_theme_roots', '1572164402', 'no'),
(424, '_site_transient_theme_roots', 'a:1:{s:5:\"julia\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:22:\"Julia \"[your-subject]\"\";s:6:\"sender\";s:28:\"Julia <mehedi5051@gmail.com>\";s:4:\"body\";s:166:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Julia (http://localhost/julia)\";s:9:\"recipient\";s:20:\"mehedi5051@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"Julia \"[your-subject]\"\";s:6:\"sender\";s:28:\"Julia <mehedi5051@gmail.com>\";s:4:\"body\";s:108:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Julia (http://localhost/julia)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:30:\"Reply-To: mehedi5051@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'en_US'),
(9, 6, '_edit_last', '1'),
(10, 6, '_edit_lock', '1572160344:1'),
(11, 26, '_wp_attached_file', '2019/10/metus-2-2.png'),
(12, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:51;s:4:\"file\";s:21:\"2019/10/metus-2-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"metus-2-2-150x51.png\";s:5:\"width\";i:150;s:6:\"height\";i:51;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 27, '_wp_attached_file', '2019/10/metus-2.jpg'),
(14, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:363;s:6:\"height\";i:244;s:4:\"file\";s:19:\"2019/10/metus-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"metus-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"metus-2-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 28, '_wp_attached_file', '2019/10/metus-3-3.png'),
(16, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:51;s:4:\"file\";s:21:\"2019/10/metus-3-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"metus-3-3-150x51.png\";s:5:\"width\";i:150;s:6:\"height\";i:51;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 29, '_wp_attached_file', '2019/10/metus-3.jpg'),
(18, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:363;s:6:\"height\";i:244;s:4:\"file\";s:19:\"2019/10/metus-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"metus-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"metus-3-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 30, '_wp_attached_file', '2019/10/banner.png'),
(20, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:367;s:6:\"height\";i:581;s:4:\"file\";s:18:\"2019/10/banner.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-190x300.png\";s:5:\"width\";i:190;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 31, '_wp_attached_file', '2019/10/client-1.jpg'),
(22, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:79;s:6:\"height\";i:78;s:4:\"file\";s:20:\"2019/10/client-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 32, '_wp_attached_file', '2019/10/client-2.jpg'),
(24, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:79;s:6:\"height\";i:78;s:4:\"file\";s:20:\"2019/10/client-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 33, '_wp_attached_file', '2019/10/client-3.jpg'),
(26, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:79;s:6:\"height\";i:78;s:4:\"file\";s:20:\"2019/10/client-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 34, '_wp_attached_file', '2019/10/footer-logo.png'),
(28, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:42;s:4:\"file\";s:23:\"2019/10/footer-logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"footer-logo-150x42.png\";s:5:\"width\";i:150;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 35, '_wp_attached_file', '2019/10/mane-1.png'),
(30, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:77;s:6:\"height\";i:76;s:4:\"file\";s:18:\"2019/10/mane-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 36, '_wp_attached_file', '2019/10/metus-1-1.png'),
(32, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:107;s:6:\"height\";i:78;s:4:\"file\";s:21:\"2019/10/metus-1-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 37, '_wp_attached_file', '2019/10/metus-1.jpg'),
(34, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:363;s:6:\"height\";i:244;s:4:\"file\";s:19:\"2019/10/metus-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"metus-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"metus-1-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 40, '_menu_item_type', 'custom'),
(36, 40, '_menu_item_menu_item_parent', '0'),
(37, 40, '_menu_item_object_id', '40'),
(38, 40, '_menu_item_object', 'custom'),
(39, 40, '_menu_item_target', ''),
(40, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 40, '_menu_item_xfn', ''),
(42, 40, '_menu_item_url', 'http://localhost/julia/'),
(43, 40, '_menu_item_orphaned', '1571835054'),
(44, 41, '_menu_item_type', 'post_type'),
(45, 41, '_menu_item_menu_item_parent', '0'),
(46, 41, '_menu_item_object_id', '2'),
(47, 41, '_menu_item_object', 'page'),
(48, 41, '_menu_item_target', ''),
(49, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 41, '_menu_item_xfn', ''),
(51, 41, '_menu_item_url', ''),
(52, 41, '_menu_item_orphaned', '1571835055'),
(53, 42, '_menu_item_type', 'custom'),
(54, 42, '_menu_item_menu_item_parent', '0'),
(55, 42, '_menu_item_object_id', '42'),
(56, 42, '_menu_item_object', 'custom'),
(57, 42, '_menu_item_target', ''),
(58, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 42, '_menu_item_xfn', ''),
(60, 42, '_menu_item_url', 'http://localhost/julia/'),
(71, 44, '_menu_item_type', 'custom'),
(72, 44, '_menu_item_menu_item_parent', '0'),
(73, 44, '_menu_item_object_id', '44'),
(74, 44, '_menu_item_object', 'custom'),
(75, 44, '_menu_item_target', ''),
(76, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 44, '_menu_item_xfn', ''),
(78, 44, '_menu_item_url', 'http://#'),
(80, 45, '_menu_item_type', 'custom'),
(81, 45, '_menu_item_menu_item_parent', '0'),
(82, 45, '_menu_item_object_id', '45'),
(83, 45, '_menu_item_object', 'custom'),
(84, 45, '_menu_item_target', ''),
(85, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 45, '_menu_item_xfn', ''),
(87, 45, '_menu_item_url', 'http://#'),
(89, 46, '_menu_item_type', 'custom'),
(90, 46, '_menu_item_menu_item_parent', '0'),
(91, 46, '_menu_item_object_id', '46'),
(92, 46, '_menu_item_object', 'custom'),
(93, 46, '_menu_item_target', ''),
(94, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 46, '_menu_item_xfn', ''),
(96, 46, '_menu_item_url', 'http://#'),
(98, 47, '_menu_item_type', 'custom'),
(99, 47, '_menu_item_menu_item_parent', '0'),
(100, 47, '_menu_item_object_id', '47'),
(101, 47, '_menu_item_object', 'custom'),
(102, 47, '_menu_item_target', ''),
(103, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 47, '_menu_item_xfn', ''),
(105, 47, '_menu_item_url', 'http://#'),
(107, 48, '_menu_item_type', 'custom'),
(108, 48, '_menu_item_menu_item_parent', '0'),
(109, 48, '_menu_item_object_id', '48'),
(110, 48, '_menu_item_object', 'custom'),
(111, 48, '_menu_item_target', ''),
(112, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 48, '_menu_item_xfn', ''),
(114, 48, '_menu_item_url', 'http://#'),
(116, 49, '_menu_item_type', 'custom'),
(117, 49, '_menu_item_menu_item_parent', '44'),
(118, 49, '_menu_item_object_id', '49'),
(119, 49, '_menu_item_object', 'custom'),
(120, 49, '_menu_item_target', ''),
(121, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 49, '_menu_item_xfn', ''),
(123, 49, '_menu_item_url', 'http://#'),
(125, 50, '_menu_item_type', 'custom'),
(126, 50, '_menu_item_menu_item_parent', '44'),
(127, 50, '_menu_item_object_id', '50'),
(128, 50, '_menu_item_object', 'custom'),
(129, 50, '_menu_item_target', ''),
(130, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 50, '_menu_item_xfn', ''),
(132, 50, '_menu_item_url', 'http://#'),
(134, 51, '_menu_item_type', 'custom'),
(135, 51, '_menu_item_menu_item_parent', '44'),
(136, 51, '_menu_item_object_id', '51'),
(137, 51, '_menu_item_object', 'custom'),
(138, 51, '_menu_item_target', ''),
(139, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 51, '_menu_item_xfn', ''),
(141, 51, '_menu_item_url', 'http://#'),
(143, 52, '_menu_item_type', 'custom'),
(144, 52, '_menu_item_menu_item_parent', '44'),
(145, 52, '_menu_item_object_id', '52'),
(146, 52, '_menu_item_object', 'custom'),
(147, 52, '_menu_item_target', ''),
(148, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 52, '_menu_item_xfn', ''),
(150, 52, '_menu_item_url', 'http://#'),
(152, 30, '_wp_attachment_image_alt', 'Book'),
(153, 74, '_wp_attached_file', '2019/10/amazon.jpg'),
(154, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:55;s:4:\"file\";s:18:\"2019/10/amazon.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 75, '_wp_attached_file', '2019/10/emerald.jpg'),
(156, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:55;s:4:\"file\";s:19:\"2019/10/emerald.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 76, '_wp_attached_file', '2019/10/logo.png'),
(158, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:221;s:6:\"height\";i:36;s:4:\"file\";s:16:\"2019/10/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x36.png\";s:5:\"width\";i:150;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 81, '_edit_last', '1'),
(160, 81, '_edit_lock', '1571999452:1'),
(161, 84, '_edit_lock', '1571987874:1'),
(162, 85, '_edit_last', '1'),
(163, 85, '_edit_lock', '1571990436:1'),
(164, 87, '_edit_lock', '1571987949:1'),
(165, 88, '_edit_lock', '1571988009:1'),
(166, 89, '_edit_lock', '1571999567:1'),
(167, 89, '_edit_last', '1'),
(168, 89, 'excerpt', 'Consulting Case “Expansion Decision: HC SECURITIES AND INVESTMENT (Egypt),” Developed by Ali Choucri, Anne Dietterich, Victoria Gillern. Mentor: Julia Ivy'),
(169, 89, '_excerpt', 'field_5db2a25e3f604'),
(170, 90, '_edit_lock', '1571999691:1'),
(171, 90, '_edit_last', '1'),
(172, 90, 'excerpt', 'Consulting Case “FIREDOORS: Path for International Expansion” (Belarus) Developed by Radzion Marozau. Mentor: Julia Ivy'),
(173, 90, '_excerpt', 'field_5db2a25e3f604'),
(174, 91, '_edit_lock', '1572002790:1'),
(175, 91, '_edit_last', '1'),
(176, 91, 'excerpt', ''),
(177, 91, '_excerpt', 'field_5db2a25e3f604'),
(178, 85, '_wp_trash_meta_status', 'publish'),
(179, 85, '_wp_trash_meta_time', '1571990583'),
(180, 85, '_wp_desired_post_slug', 'group_5db2a23adb3e0'),
(181, 86, '_wp_trash_meta_status', 'publish'),
(182, 86, '_wp_trash_meta_time', '1571990583'),
(183, 86, '_wp_desired_post_slug', 'field_5db2a25e3f604'),
(184, 92, '_edit_last', '1'),
(185, 92, '_edit_lock', '1572001128:1'),
(186, 89, '_thumbnail_id', '29'),
(187, 89, 'company_logo', '28'),
(188, 89, '_company_logo', 'field_5db2ad64541f8'),
(189, 90, '_thumbnail_id', '27'),
(190, 90, 'company_logo', '26'),
(191, 90, '_company_logo', 'field_5db2ad64541f8'),
(192, 91, '_thumbnail_id', '37'),
(193, 91, 'company_logo', '36'),
(194, 91, '_company_logo', 'field_5db2ad64541f8'),
(195, 94, '_edit_last', '1'),
(196, 94, '_edit_lock', '1572005980:1'),
(197, 91, 'review_comment', 'Working on the HC consulting case gave me confidence to seek strategic partnerships in my own career od working with foreign investors and international companies with an interest in US assets.\r\n'),
(198, 91, '_review_comment', 'field_5db2c63172fa8'),
(199, 90, 'review_comment', 'Working on the HC consulting case gave me confidence to seek strategic partnerships in my own career od working with foreign investors and international companies with an interest in US assets.'),
(200, 90, '_review_comment', 'field_5db2c63172fa8'),
(201, 89, 'review_comment', 'Working on the HC consulting case gave me confidence to seek strategic partnerships in my own career od working with foreign investors and international companies with an interest in US assets.'),
(202, 89, '_review_comment', 'field_5db2c63172fa8'),
(203, 91, 'heading', 'Consulting Case “BREWERKZ: Brewing What Works Best” (Singapore) Developed by Shreshthi Mehta. Mentor: Julia Ivy'),
(204, 91, '_heading', 'field_5db2cf79615eb'),
(205, 90, 'heading', 'Consulting Case “FIREDOORS: Path for International Expansion” (Belarus) Developed by Radzion Marozau. Mentor: Julia Ivy'),
(206, 90, '_heading', 'field_5db2cf79615eb'),
(207, 89, 'heading', 'Consulting Case “Expansion Decision: HC SECURITIES AND INVESTMENT (Egypt),” Developed by Ali Choucri, Anne Dietterich, Victoria Gillern. Mentor: Julia Ivy'),
(208, 89, '_heading', 'field_5db2cf79615eb'),
(209, 97, '_edit_lock', '1572002146:1'),
(210, 99, '_edit_lock', '1572002157:1'),
(211, 101, '_edit_lock', '1572002165:1'),
(212, 103, '_edit_lock', '1572002177:1'),
(213, 105, '_menu_item_type', 'post_type'),
(214, 105, '_menu_item_menu_item_parent', '0'),
(215, 105, '_menu_item_object_id', '103'),
(216, 105, '_menu_item_object', 'page'),
(217, 105, '_menu_item_target', ''),
(218, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(219, 105, '_menu_item_xfn', ''),
(220, 105, '_menu_item_url', ''),
(222, 106, '_menu_item_type', 'post_type'),
(223, 106, '_menu_item_menu_item_parent', '0'),
(224, 106, '_menu_item_object_id', '101'),
(225, 106, '_menu_item_object', 'page'),
(226, 106, '_menu_item_target', ''),
(227, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 106, '_menu_item_xfn', ''),
(229, 106, '_menu_item_url', ''),
(231, 107, '_menu_item_type', 'post_type'),
(232, 107, '_menu_item_menu_item_parent', '0'),
(233, 107, '_menu_item_object_id', '99'),
(234, 107, '_menu_item_object', 'page'),
(235, 107, '_menu_item_target', ''),
(236, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(237, 107, '_menu_item_xfn', ''),
(238, 107, '_menu_item_url', ''),
(240, 108, '_menu_item_type', 'post_type'),
(241, 108, '_menu_item_menu_item_parent', '0'),
(242, 108, '_menu_item_object_id', '97'),
(243, 108, '_menu_item_object', 'page'),
(244, 108, '_menu_item_target', ''),
(245, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(246, 108, '_menu_item_xfn', ''),
(247, 108, '_menu_item_url', ''),
(249, 109, '_menu_item_type', 'custom'),
(250, 109, '_menu_item_menu_item_parent', '0'),
(251, 109, '_menu_item_object_id', '109'),
(252, 109, '_menu_item_object', 'custom'),
(253, 109, '_menu_item_target', ''),
(254, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(255, 109, '_menu_item_xfn', ''),
(256, 109, '_menu_item_url', 'http://#'),
(258, 110, '_menu_item_type', 'custom'),
(259, 110, '_menu_item_menu_item_parent', '0'),
(260, 110, '_menu_item_object_id', '110'),
(261, 110, '_menu_item_object', 'custom'),
(262, 110, '_menu_item_target', ''),
(263, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(264, 110, '_menu_item_xfn', ''),
(265, 110, '_menu_item_url', 'http://#'),
(267, 111, '_menu_item_type', 'custom'),
(268, 111, '_menu_item_menu_item_parent', '0'),
(269, 111, '_menu_item_object_id', '111'),
(270, 111, '_menu_item_object', 'custom'),
(271, 111, '_menu_item_target', ''),
(272, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(273, 111, '_menu_item_xfn', ''),
(274, 111, '_menu_item_url', 'http://#'),
(275, 111, '_menu_item_orphaned', '1572003262'),
(276, 112, '_menu_item_type', 'custom'),
(277, 112, '_menu_item_menu_item_parent', '0'),
(278, 112, '_menu_item_object_id', '112'),
(279, 112, '_menu_item_object', 'custom'),
(280, 112, '_menu_item_target', ''),
(281, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(282, 112, '_menu_item_xfn', ''),
(283, 112, '_menu_item_url', 'http://#'),
(285, 113, '_menu_item_type', 'custom'),
(286, 113, '_menu_item_menu_item_parent', '0'),
(287, 113, '_menu_item_object_id', '113'),
(288, 113, '_menu_item_object', 'custom'),
(289, 113, '_menu_item_target', ''),
(290, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 113, '_menu_item_xfn', ''),
(292, 113, '_menu_item_url', 'http://#'),
(294, 114, '_menu_item_type', 'custom'),
(295, 114, '_menu_item_menu_item_parent', '0'),
(296, 114, '_menu_item_object_id', '114'),
(297, 114, '_menu_item_object', 'custom'),
(298, 114, '_menu_item_target', ''),
(299, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(300, 114, '_menu_item_xfn', ''),
(301, 114, '_menu_item_url', 'http://#'),
(303, 115, '_menu_item_type', 'custom'),
(304, 115, '_menu_item_menu_item_parent', '0'),
(305, 115, '_menu_item_object_id', '115'),
(306, 115, '_menu_item_object', 'custom'),
(307, 115, '_menu_item_target', ''),
(308, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(309, 115, '_menu_item_xfn', ''),
(310, 115, '_menu_item_url', 'http://#'),
(312, 116, '_menu_item_type', 'custom'),
(313, 116, '_menu_item_menu_item_parent', '0'),
(314, 116, '_menu_item_object_id', '116'),
(315, 116, '_menu_item_object', 'custom'),
(316, 116, '_menu_item_target', ''),
(317, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(318, 116, '_menu_item_xfn', ''),
(319, 116, '_menu_item_url', 'http://#'),
(321, 117, '_menu_item_type', 'custom'),
(322, 117, '_menu_item_menu_item_parent', '0'),
(323, 117, '_menu_item_object_id', '117'),
(324, 117, '_menu_item_object', 'custom'),
(325, 117, '_menu_item_target', ''),
(326, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(327, 117, '_menu_item_xfn', ''),
(328, 117, '_menu_item_url', 'http://#'),
(330, 118, '_menu_item_type', 'custom'),
(331, 118, '_menu_item_menu_item_parent', '0'),
(332, 118, '_menu_item_object_id', '118'),
(333, 118, '_menu_item_object', 'custom'),
(334, 118, '_menu_item_target', ''),
(335, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(336, 118, '_menu_item_xfn', ''),
(337, 118, '_menu_item_url', 'http://#'),
(339, 119, '_menu_item_type', 'custom'),
(340, 119, '_menu_item_menu_item_parent', '0'),
(341, 119, '_menu_item_object_id', '119'),
(342, 119, '_menu_item_object', 'custom'),
(343, 119, '_menu_item_target', ''),
(344, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(345, 119, '_menu_item_xfn', ''),
(346, 119, '_menu_item_url', 'http://#'),
(348, 120, '_menu_item_type', 'custom'),
(349, 120, '_menu_item_menu_item_parent', '0'),
(350, 120, '_menu_item_object_id', '120'),
(351, 120, '_menu_item_object', 'custom'),
(352, 120, '_menu_item_target', ''),
(353, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(354, 120, '_menu_item_xfn', ''),
(355, 120, '_menu_item_url', 'http://#'),
(357, 121, '_menu_item_type', 'custom'),
(358, 121, '_menu_item_menu_item_parent', '0'),
(359, 121, '_menu_item_object_id', '121'),
(360, 121, '_menu_item_object', 'custom'),
(361, 121, '_menu_item_target', ''),
(362, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(363, 121, '_menu_item_xfn', ''),
(364, 121, '_menu_item_url', 'http://#');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-10-22 14:56:14', '2019-10-22 14:56:14', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-10-22 14:56:14', '2019-10-22 14:56:14', '', 0, 'http://localhost/julia/?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-22 14:56:14', '2019-10-22 14:56:14', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/julia/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-10-22 14:56:14', '2019-10-22 14:56:14', '', 0, 'http://localhost/julia/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-22 14:56:14', '2019-10-22 14:56:14', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/julia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-10-22 14:56:14', '2019-10-22 14:56:14', '', 0, 'http://localhost/julia/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-10-22 14:57:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-22 14:57:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/julia/?p=4', 0, 'post', '', 0),
(5, 1, '2019-10-22 15:23:20', '2019-10-22 15:23:20', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nJulia \"[your-subject]\"\nJulia <mehedi5051@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Julia (http://localhost/julia)\nmehedi5051@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nJulia \"[your-subject]\"\nJulia <mehedi5051@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Julia (http://localhost/julia)\n[your-email]\nReply-To: mehedi5051@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-10-22 15:23:20', '2019-10-22 15:23:20', '', 0, 'http://localhost/julia/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2019-10-22 15:28:53', '2019-10-22 15:28:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Home Page Settings', 'home-page-settings', 'publish', 'closed', 'closed', '', 'group_5daf1fee6841f', '', '', '2019-10-27 06:59:47', '2019-10-27 06:59:47', '', 0, 'http://localhost/julia/?post_type=acf-field-group&#038;p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2019-10-22 15:30:38', '2019-10-22 15:30:38', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_5daf20677d3b4', '', '', '2019-10-27 04:47:56', '2019-10-27 04:47:56', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=7', 4, 'acf-field', '', 0),
(8, 1, '2019-10-22 15:30:38', '2019-10-22 15:30:38', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Education & Experience', 'education_&_experience', 'publish', 'closed', 'closed', '', 'field_5daf20757d3b5', '', '', '2019-10-27 04:47:57', '2019-10-27 04:47:57', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=8', 6, 'acf-field', '', 0),
(9, 1, '2019-10-22 15:32:54', '2019-10-22 15:32:54', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'field_5daf20b23ae76', '', '', '2019-10-27 04:47:57', '2019-10-27 04:47:57', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=9', 8, 'acf-field', '', 0),
(12, 1, '2019-10-22 15:34:50', '2019-10-22 15:34:50', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'field_5daf219088ed5', '', '', '2019-10-27 04:47:57', '2019-10-27 04:47:57', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=12', 10, 'acf-field', '', 0),
(13, 1, '2019-10-23 06:37:59', '2019-10-23 06:37:59', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Banner Group', 'banner_group', 'publish', 'closed', 'closed', '', 'field_5daff408d90fa', '', '', '2019-10-27 04:47:57', '2019-10-27 04:47:57', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=13', 5, 'acf-field', '', 0),
(14, 1, '2019-10-23 06:37:59', '2019-10-23 06:37:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_5daff458d90fb', '', '', '2019-10-23 06:37:59', '2019-10-23 06:37:59', '', 13, 'http://localhost/julia/?post_type=acf-field&p=14', 0, 'acf-field', '', 0),
(15, 1, '2019-10-23 06:37:59', '2019-10-23 06:37:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Main Title', 'main_title', 'publish', 'closed', 'closed', '', 'field_5daff463d90fc', '', '', '2019-10-23 06:37:59', '2019-10-23 06:37:59', '', 13, 'http://localhost/julia/?post_type=acf-field&p=15', 1, 'acf-field', '', 0),
(16, 1, '2019-10-23 06:38:00', '2019-10-23 06:38:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Secondary Title', 'secondary_title', 'publish', 'closed', 'closed', '', 'field_5daff46fd90fd', '', '', '2019-10-23 06:38:00', '2019-10-23 06:38:00', '', 13, 'http://localhost/julia/?post_type=acf-field&p=16', 2, 'acf-field', '', 0),
(17, 1, '2019-10-23 06:38:00', '2019-10-23 06:38:00', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Education & Experience Group', 'education_and_experience_group', 'publish', 'closed', 'closed', '', 'field_5daff4a6d90fe', '', '', '2019-10-27 04:47:57', '2019-10-27 04:47:57', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=17', 7, 'acf-field', '', 0),
(18, 1, '2019-10-23 06:38:00', '2019-10-23 06:38:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Head Text', 'head_text', 'publish', 'closed', 'closed', '', 'field_5daff4cfd90ff', '', '', '2019-10-23 06:38:00', '2019-10-23 06:38:00', '', 17, 'http://localhost/julia/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(19, 1, '2019-10-23 06:38:00', '2019-10-23 06:38:00', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add New\";}', 'Education/Experiences', 'education_experiences', 'publish', 'closed', 'closed', '', 'field_5daff4f7d9100', '', '', '2019-10-23 11:18:17', '2019-10-23 11:18:17', '', 17, 'http://localhost/julia/?post_type=acf-field&#038;p=19', 2, 'acf-field', '', 0),
(20, 1, '2019-10-23 06:39:59', '2019-10-23 06:39:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Add Education/Experience', 'add_educationexperience', 'publish', 'closed', 'closed', '', 'field_5daff58b8228e', '', '', '2019-10-23 06:39:59', '2019-10-23 06:39:59', '', 19, 'http://localhost/julia/?post_type=acf-field&p=20', 0, 'acf-field', '', 0),
(21, 1, '2019-10-23 06:43:57', '2019-10-23 06:43:57', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Services Group', 'services_group', 'publish', 'closed', 'closed', '', 'field_5daff5d5a1acd', '', '', '2019-10-27 04:47:57', '2019-10-27 04:47:57', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=21', 9, 'acf-field', '', 0),
(22, 1, '2019-10-23 11:01:44', '2019-10-23 11:01:44', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Footer Group', 'footer_group', 'publish', 'closed', 'closed', '', 'field_5db03212c3814', '', '', '2019-10-27 04:47:57', '2019-10-27 04:47:57', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=22', 11, 'acf-field', '', 0),
(23, 1, '2019-10-23 11:01:44', '2019-10-23 11:01:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Copyright Text', 'copyright_text', 'publish', 'closed', 'closed', '', 'field_5db03221c3815', '', '', '2019-10-25 10:42:41', '2019-10-25 10:42:41', '', 22, 'http://localhost/julia/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(24, 1, '2019-10-23 11:01:45', '2019-10-23 11:01:45', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:12:\"Add New Logo\";}', 'Company Logo', 'company_logos', 'publish', 'closed', 'closed', '', 'field_5db0324ac3817', '', '', '2019-10-25 10:51:47', '2019-10-25 10:51:47', '', 22, 'http://localhost/julia/?post_type=acf-field&#038;p=24', 1, 'acf-field', '', 0),
(25, 1, '2019-10-23 11:02:11', '2019-10-23 11:02:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5db0332701aec', '', '', '2019-10-25 10:51:48', '2019-10-25 10:51:48', '', 24, 'http://localhost/julia/?post_type=acf-field&#038;p=25', 0, 'acf-field', '', 0),
(26, 1, '2019-10-23 11:10:28', '2019-10-23 11:10:28', '', 'metus-2-2', '', 'inherit', 'open', 'closed', '', 'metus-2-2', '', '', '2019-10-25 08:11:27', '2019-10-25 08:11:27', '', 90, 'http://localhost/julia/wp-content/uploads/2019/10/metus-2-2.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-10-23 11:10:28', '2019-10-23 11:10:28', '', 'metus-2', '', 'inherit', 'open', 'closed', '', 'metus-2', '', '', '2019-10-23 11:10:28', '2019-10-23 11:10:28', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/metus-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-10-23 11:10:29', '2019-10-23 11:10:29', '', 'metus-3-3', '', 'inherit', 'open', 'closed', '', 'metus-3-3', '', '', '2019-10-25 08:11:48', '2019-10-25 08:11:48', '', 89, 'http://localhost/julia/wp-content/uploads/2019/10/metus-3-3.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-10-23 11:10:29', '2019-10-23 11:10:29', '', 'metus-3', '', 'inherit', 'open', 'closed', '', 'metus-3', '', '', '2019-10-23 11:10:29', '2019-10-23 11:10:29', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/metus-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-10-23 11:10:29', '2019-10-23 11:10:29', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2019-10-23 13:09:03', '2019-10-23 13:09:03', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/banner.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2019-10-23 11:10:30', '2019-10-23 11:10:30', '', 'client-1', '', 'inherit', 'open', 'closed', '', 'client-1', '', '', '2019-10-23 11:10:30', '2019-10-23 11:10:30', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/client-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-10-23 11:10:30', '2019-10-23 11:10:30', '', 'client-2', '', 'inherit', 'open', 'closed', '', 'client-2', '', '', '2019-10-23 11:10:30', '2019-10-23 11:10:30', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/client-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-10-23 11:10:31', '2019-10-23 11:10:31', '', 'client-3', '', 'inherit', 'open', 'closed', '', 'client-3', '', '', '2019-10-23 11:10:31', '2019-10-23 11:10:31', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/client-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-10-23 11:10:31', '2019-10-23 11:10:31', '', 'footer-logo', '', 'inherit', 'open', 'closed', '', 'footer-logo', '', '', '2019-10-23 11:10:31', '2019-10-23 11:10:31', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/footer-logo.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2019-10-23 11:10:31', '2019-10-23 11:10:31', '', 'mane-1', '', 'inherit', 'open', 'closed', '', 'mane-1', '', '', '2019-10-23 11:10:31', '2019-10-23 11:10:31', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/mane-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2019-10-23 11:10:32', '2019-10-23 11:10:32', '', 'metus-1-1', '', 'inherit', 'open', 'closed', '', 'metus-1-1', '', '', '2019-10-25 08:10:12', '2019-10-25 08:10:12', '', 89, 'http://localhost/julia/wp-content/uploads/2019/10/metus-1-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2019-10-23 11:10:32', '2019-10-23 11:10:32', '', 'metus-1', '', 'inherit', 'open', 'closed', '', 'metus-1', '', '', '2019-10-23 11:10:32', '2019-10-23 11:10:32', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/metus-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-10-23 11:12:54', '2019-10-23 11:12:54', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Show More Button Link', 'show_more_button_link', 'publish', 'closed', 'closed', '', 'field_5db035874eb5e', '', '', '2019-10-24 06:08:57', '2019-10-24 06:08:57', '', 39, 'http://localhost/julia/?post_type=acf-field&#038;p=38', 1, 'acf-field', '', 0),
(39, 1, '2019-10-23 11:15:57', '2019-10-23 11:15:57', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Show More Button Group', 'show_more_button_group', 'publish', 'closed', 'closed', '', 'field_5db036314dfa6', '', '', '2019-10-23 11:18:17', '2019-10-23 11:18:17', '', 17, 'http://localhost/julia/?post_type=acf-field&#038;p=39', 1, 'acf-field', '', 0),
(40, 1, '2019-10-23 12:50:54', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-23 12:50:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/julia/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2019-10-23 12:50:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-23 12:50:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/julia/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2019-10-23 12:53:13', '2019-10-23 12:53:13', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-23 12:56:34', '2019-10-23 12:56:34', '', 0, 'http://localhost/julia/?p=42', 1, 'nav_menu_item', '', 0),
(44, 1, '2019-10-23 12:55:00', '2019-10-23 12:55:00', '', 'J.Ivy', '', 'publish', 'closed', 'closed', '', 'j-ivy', '', '', '2019-10-23 12:56:34', '2019-10-23 12:56:34', '', 0, 'http://localhost/julia/?p=44', 2, 'nav_menu_item', '', 0),
(45, 1, '2019-10-23 12:55:00', '2019-10-23 12:55:00', '', 'BE-EDGE', '', 'publish', 'closed', 'closed', '', 'be-edge', '', '', '2019-10-23 12:56:35', '2019-10-23 12:56:35', '', 0, 'http://localhost/julia/?p=45', 7, 'nav_menu_item', '', 0),
(46, 1, '2019-10-23 12:55:01', '2019-10-23 12:55:01', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-10-23 12:56:35', '2019-10-23 12:56:35', '', 0, 'http://localhost/julia/?p=46', 8, 'nav_menu_item', '', 0),
(47, 1, '2019-10-23 12:55:01', '2019-10-23 12:55:01', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2019-10-23 12:56:35', '2019-10-23 12:56:35', '', 0, 'http://localhost/julia/?p=47', 9, 'nav_menu_item', '', 0),
(48, 1, '2019-10-23 12:55:01', '2019-10-23 12:55:01', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-10-23 12:56:35', '2019-10-23 12:56:35', '', 0, 'http://localhost/julia/?p=48', 10, 'nav_menu_item', '', 0),
(49, 1, '2019-10-23 12:55:57', '2019-10-23 12:55:57', '', 'Sub menu', '', 'publish', 'closed', 'closed', '', 'sub-menu', '', '', '2019-10-23 12:56:34', '2019-10-23 12:56:34', '', 0, 'http://localhost/julia/?p=49', 3, 'nav_menu_item', '', 0),
(50, 1, '2019-10-23 12:55:57', '2019-10-23 12:55:57', '', 'Demos + themes', '', 'publish', 'closed', 'closed', '', 'demos-themes', '', '', '2019-10-23 12:56:34', '2019-10-23 12:56:34', '', 0, 'http://localhost/julia/?p=50', 4, 'nav_menu_item', '', 0),
(51, 1, '2019-10-23 12:56:34', '2019-10-23 12:56:34', '', 'The author', '', 'publish', 'closed', 'closed', '', 'the-author', '', '', '2019-10-23 12:56:34', '2019-10-23 12:56:34', '', 0, 'http://localhost/julia/?p=51', 5, 'nav_menu_item', '', 0),
(52, 1, '2019-10-23 12:56:35', '2019-10-23 12:56:35', '', 'The company', '', 'publish', 'closed', 'closed', '', 'the-company', '', '', '2019-10-23 12:56:35', '2019-10-23 12:56:35', '', 0, 'http://localhost/julia/?p=52', 6, 'nav_menu_item', '', 0),
(53, 1, '2019-10-24 06:08:57', '2019-10-24 06:08:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Show More Button Text', 'show_more_button_text', 'publish', 'closed', 'closed', '', 'field_5db13924bd18d', '', '', '2019-10-24 06:08:57', '2019-10-24 06:08:57', '', 39, 'http://localhost/julia/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2019-10-24 06:11:02', '2019-10-24 06:11:02', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Service Section One', 'service_section_one', 'publish', 'closed', 'closed', '', 'field_5db1403ec0808', '', '', '2019-10-24 06:12:52', '2019-10-24 06:12:52', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=54', 0, 'acf-field', '', 0),
(55, 1, '2019-10-24 06:11:02', '2019-10-24 06:11:02', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Service Section Two', 'service_section_two', 'publish', 'closed', 'closed', '', 'field_5db1406ec080b', '', '', '2019-10-24 06:18:23', '2019-10-24 06:18:23', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=55', 4, 'acf-field', '', 0),
(57, 1, '2019-10-24 06:11:02', '2019-10-24 06:11:02', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Service Section Four', 'service_section_four', 'publish', 'closed', 'closed', '', 'field_5db1406bc0809', '', '', '2019-10-24 06:29:06', '2019-10-24 06:29:06', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=57', 12, 'acf-field', '', 0),
(58, 1, '2019-10-24 06:15:23', '2019-10-24 06:15:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'section_one_title', 'publish', 'closed', 'closed', '', 'field_5db141115a6f4', '', '', '2019-10-24 06:15:23', '2019-10-24 06:15:23', '', 21, 'http://localhost/julia/?post_type=acf-field&p=58', 1, 'acf-field', '', 0),
(59, 1, '2019-10-24 06:15:23', '2019-10-24 06:15:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Download Button Text', 'download_button_text', 'publish', 'closed', 'closed', '', 'field_5db1412f5a6f5', '', '', '2019-10-24 06:15:23', '2019-10-24 06:15:23', '', 21, 'http://localhost/julia/?post_type=acf-field&p=59', 2, 'acf-field', '', 0),
(60, 1, '2019-10-24 06:15:23', '2019-10-24 06:15:23', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Download Button URL', 'download_button_url', 'publish', 'closed', 'closed', '', 'field_5db1414d5a6f6', '', '', '2019-10-24 06:29:41', '2019-10-24 06:29:41', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=60', 3, 'acf-field', '', 0),
(61, 1, '2019-10-24 06:18:23', '2019-10-24 06:18:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Two Title', 'section_two_title', 'publish', 'closed', 'closed', '', 'field_5db141c07471d', '', '', '2019-10-24 06:18:23', '2019-10-24 06:18:23', '', 21, 'http://localhost/julia/?post_type=acf-field&p=61', 5, 'acf-field', '', 0),
(62, 1, '2019-10-24 06:18:23', '2019-10-24 06:18:23', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:14:\"Add New Option\";}', 'List Options', 'section_two_list_options', 'publish', 'closed', 'closed', '', 'field_5db142137471e', '', '', '2019-10-24 06:29:05', '2019-10-24 06:29:05', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=62', 7, 'acf-field', '', 0),
(63, 1, '2019-10-24 06:19:14', '2019-10-24 06:19:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Option', 'section_two_option', 'publish', 'closed', 'closed', '', 'field_5db1423ec79b3', '', '', '2019-10-24 06:25:43', '2019-10-24 06:25:43', '', 62, 'http://localhost/julia/?post_type=acf-field&#038;p=63', 0, 'acf-field', '', 0),
(64, 1, '2019-10-24 06:21:28', '2019-10-24 06:21:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Three Title', 'section_three_title', 'publish', 'closed', 'closed', '', 'field_5db142af53f4b', '', '', '2019-10-24 06:29:05', '2019-10-24 06:29:05', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=64', 9, 'acf-field', '', 0),
(65, 1, '2019-10-24 06:21:28', '2019-10-24 06:21:28', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:14:\"Add New Option\";}', 'List Options', 'section_three_list_options', 'publish', 'closed', 'closed', '', 'field_5db1427c53f49', '', '', '2019-10-24 06:29:06', '2019-10-24 06:29:06', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=65', 11, 'acf-field', '', 0),
(66, 1, '2019-10-24 06:21:28', '2019-10-24 06:21:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Option', 'section_three_option', 'publish', 'closed', 'closed', '', 'field_5db1427d53f4a', '', '', '2019-10-24 06:25:43', '2019-10-24 06:25:43', '', 65, 'http://localhost/julia/?post_type=acf-field&#038;p=66', 0, 'acf-field', '', 0),
(67, 1, '2019-10-24 06:23:08', '2019-10-24 06:23:08', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Service Section Three', 'service_section_three', 'publish', 'closed', 'closed', '', 'field_5db1433409ba4', '', '', '2019-10-24 06:29:05', '2019-10-24 06:29:05', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=67', 8, 'acf-field', '', 0),
(68, 1, '2019-10-24 06:25:43', '2019-10-24 06:25:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Four Title', 'section_four_title', 'publish', 'closed', 'closed', '', 'field_5db14362f8fae', '', '', '2019-10-24 06:29:06', '2019-10-24 06:29:06', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=68', 13, 'acf-field', '', 0),
(69, 1, '2019-10-24 06:25:43', '2019-10-24 06:25:43', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'List Options', 'section_four_list_options', 'publish', 'closed', 'closed', '', 'field_5db1436df8faf', '', '', '2019-10-24 06:29:06', '2019-10-24 06:29:06', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=69', 15, 'acf-field', '', 0),
(70, 1, '2019-10-24 06:25:43', '2019-10-24 06:25:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Option', 'section_four_option', 'publish', 'closed', 'closed', '', 'field_5db143d8f8fb0', '', '', '2019-10-24 06:25:43', '2019-10-24 06:25:43', '', 69, 'http://localhost/julia/?post_type=acf-field&p=70', 0, 'acf-field', '', 0),
(71, 1, '2019-10-24 06:29:05', '2019-10-24 06:29:05', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Section Two Link', 'section_two_link', 'publish', 'closed', 'closed', '', 'field_5db14442ca2ab', '', '', '2019-10-24 06:29:05', '2019-10-24 06:29:05', '', 21, 'http://localhost/julia/?post_type=acf-field&p=71', 6, 'acf-field', '', 0),
(72, 1, '2019-10-24 06:29:05', '2019-10-24 06:29:05', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Section Three Link', 'section_three_link', 'publish', 'closed', 'closed', '', 'field_5db14485ca2ac', '', '', '2019-10-24 06:29:05', '2019-10-24 06:29:05', '', 21, 'http://localhost/julia/?post_type=acf-field&p=72', 10, 'acf-field', '', 0),
(73, 1, '2019-10-24 06:29:06', '2019-10-24 06:29:06', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Section Four Link', 'section_four_link', 'publish', 'closed', 'closed', '', 'field_5db14492ca2ad', '', '', '2019-10-24 06:29:41', '2019-10-24 06:29:41', '', 21, 'http://localhost/julia/?post_type=acf-field&#038;p=73', 14, 'acf-field', '', 0),
(74, 1, '2019-10-24 06:35:32', '2019-10-24 06:35:32', '', 'amazon', '', 'inherit', 'open', 'closed', '', 'amazon', '', '', '2019-10-24 06:35:32', '2019-10-24 06:35:32', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/amazon.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2019-10-24 06:35:33', '2019-10-24 06:35:33', '', 'emerald', '', 'inherit', 'open', 'closed', '', 'emerald', '', '', '2019-10-24 06:35:33', '2019-10-24 06:35:33', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/emerald.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-10-24 06:35:33', '2019-10-24 06:35:33', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-10-24 06:35:33', '2019-10-24 06:35:33', '', 0, 'http://localhost/julia/wp-content/uploads/2019/10/logo.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2019-10-24 06:40:05', '2019-10-24 06:40:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button Text', 'banner_button_text', 'publish', 'closed', 'closed', '', 'field_5db146f239266', '', '', '2019-10-24 06:40:05', '2019-10-24 06:40:05', '', 13, 'http://localhost/julia/?post_type=acf-field&p=77', 3, 'acf-field', '', 0),
(78, 1, '2019-10-24 06:40:05', '2019-10-24 06:40:05', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Button Link', 'banner_button_link', 'publish', 'closed', 'closed', '', 'field_5db1471b39267', '', '', '2019-10-24 06:40:05', '2019-10-24 06:40:05', '', 13, 'http://localhost/julia/?post_type=acf-field&p=78', 4, 'acf-field', '', 0),
(79, 1, '2019-10-25 04:44:09', '2019-10-25 04:44:09', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Theme Global Settings', 'theme_global_settings', 'publish', 'closed', 'closed', '', 'field_5db27d8619daf', '', '', '2019-10-25 04:44:51', '2019-10-25 04:44:51', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=79', 0, 'acf-field', '', 0),
(80, 1, '2019-10-25 04:44:51', '2019-10-25 04:44:51', 'a:6:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";}', 'Theme Color', 'theme_color', 'publish', 'closed', 'closed', '', 'field_5db27dac6e71c', '', '', '2019-10-27 04:47:56', '2019-10-27 04:47:56', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=80', 2, 'acf-field', '', 0),
(81, 1, '2019-10-25 07:12:16', '2019-10-25 07:12:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"acf-options-manage-blog-section\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Manage Blogs Section', 'manage-blogs-section', 'publish', 'closed', 'closed', '', 'group_5db2a03819dc4', '', '', '2019-10-25 09:49:04', '2019-10-25 09:49:04', '', 0, 'http://localhost/julia/?post_type=acf-field-group&#038;p=81', 0, 'acf-field-group', '', 0),
(82, 1, '2019-10-25 07:15:26', '2019-10-25 07:15:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Title', 'section_title', 'publish', 'closed', 'closed', '', 'field_5db2a0f5a281b', '', '', '2019-10-25 07:15:26', '2019-10-25 07:15:26', '', 81, 'http://localhost/julia/?post_type=acf-field&p=82', 0, 'acf-field', '', 0),
(83, 1, '2019-10-25 07:15:26', '2019-10-25 07:15:26', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Section Description', 'section_description', 'publish', 'closed', 'closed', '', 'field_5db2a101a281c', '', '', '2019-10-25 09:49:04', '2019-10-25 09:49:04', '', 81, 'http://localhost/julia/?post_type=acf-field&#038;p=83', 1, 'acf-field', '', 0),
(84, 1, '2019-10-25 07:18:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-25 07:18:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/julia/?post_type=blog&p=84', 0, 'blog', '', 0),
(85, 1, '2019-10-25 07:21:15', '2019-10-25 07:21:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"blog\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Blog Posts Custom Field', 'blog-posts-custom-field', 'trash', 'closed', 'closed', '', 'group_5db2a23adb3e0__trashed', '', '', '2019-10-25 08:03:03', '2019-10-25 08:03:03', '', 0, 'http://localhost/julia/?post_type=acf-field-group&#038;p=85', 0, 'acf-field-group', '', 0),
(86, 1, '2019-10-25 07:21:15', '2019-10-25 07:21:15', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Excerpt', 'excerpt', 'trash', 'closed', 'closed', '', 'field_5db2a25e3f604__trashed', '', '', '2019-10-25 08:03:03', '2019-10-25 08:03:03', '', 85, 'http://localhost/julia/?post_type=acf-field&#038;p=86', 0, 'acf-field', '', 0),
(87, 1, '2019-10-25 07:21:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-25 07:21:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/julia/?post_type=blog&p=87', 0, 'blog', '', 0),
(88, 1, '2019-10-25 07:21:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-25 07:21:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/julia/?post_type=blog&p=88', 0, 'blog', '', 0),
(89, 0, '2019-10-25 07:23:14', '2019-10-25 07:23:14', '<!-- wp:paragraph -->\n<p>dummy content</p>\n<!-- /wp:paragraph -->', 'Consulting Case “Expansion Decision: HC SECURITIES AND INVESTMENT (Egypt),” Developed by Ali Choucri, Anne Dietterich, Victoria Gillern. Mentor: Julia Ivy', '', 'publish', 'closed', 'closed', '', 'post-1', '', '', '2019-10-25 10:34:56', '2019-10-25 10:34:56', '', 0, 'http://localhost/julia/?post_type=blog&#038;p=89', 0, 'blog', '', 0),
(90, 0, '2019-10-25 07:23:48', '2019-10-25 07:23:48', '<!-- wp:paragraph -->\n<p>dummy content</p>\n<!-- /wp:paragraph -->', 'Consulting Case “FIREDOORS: Path for International Expansion” (Belarus) Developed by Radzion Marozau. Mentor: Julia Ivy', '', 'publish', 'closed', 'closed', '', 'post-2', '', '', '2019-10-25 10:34:51', '2019-10-25 10:34:51', '', 0, 'http://localhost/julia/?post_type=blog&#038;p=90', 0, 'blog', '', 0),
(91, 0, '2019-10-25 07:57:41', '2019-10-25 07:57:41', '<!-- wp:paragraph -->\n<p>dummy content</p>\n<!-- /wp:paragraph -->', 'Consulting Case “BREWERKZ: Brewing What Works Best” (Singapore) Developed by Shreshthi Mehta. Mentor: Julia Ivy', '', 'publish', 'closed', 'closed', '', 'consulting-case-brewerkz-brewing-what-works-best-singapore-developed-by-shreshthi-mehta-mentor-julia-ivy', '', '', '2019-10-25 10:34:41', '2019-10-25 10:34:41', '', 0, 'http://localhost/julia/?post_type=blog&#038;p=91', 0, 'blog', '', 0),
(92, 1, '2019-10-25 08:09:23', '2019-10-25 08:09:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"blog\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Company Logo', 'company-logo', 'publish', 'closed', 'closed', '', 'group_5db2ad165890c', '', '', '2019-10-25 09:53:11', '2019-10-25 09:53:11', '', 0, 'http://localhost/julia/?post_type=acf-field-group&#038;p=92', 0, 'acf-field-group', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(93, 1, '2019-10-25 08:09:23', '2019-10-25 08:09:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Company Logo', 'company_logo', 'publish', 'closed', 'closed', '', 'field_5db2ad64541f8', '', '', '2019-10-25 08:28:28', '2019-10-25 08:28:28', '', 92, 'http://localhost/julia/?post_type=acf-field&#038;p=93', 0, 'acf-field', '', 0),
(94, 1, '2019-10-25 09:54:25', '2019-10-25 09:54:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"blog\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Review/Comment', 'review-comment', 'publish', 'closed', 'closed', '', 'group_5db2c60ae762a', '', '', '2019-10-25 10:34:29', '2019-10-25 10:34:29', '', 0, 'http://localhost/julia/?post_type=acf-field-group&#038;p=94', 0, 'acf-field-group', '', 0),
(95, 1, '2019-10-25 09:54:25', '2019-10-25 09:54:25', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Review/Comment', 'review_comment', 'publish', 'closed', 'closed', '', 'field_5db2c63172fa8', '', '', '2019-10-25 10:34:29', '2019-10-25 10:34:29', '', 94, 'http://localhost/julia/?post_type=acf-field&#038;p=95', 1, 'acf-field', '', 0),
(96, 1, '2019-10-25 10:34:29', '2019-10-25 10:34:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_5db2cf79615eb', '', '', '2019-10-25 10:34:29', '2019-10-25 10:34:29', '', 94, 'http://localhost/julia/?post_type=acf-field&p=96', 0, 'acf-field', '', 0),
(97, 1, '2019-10-25 11:18:09', '2019-10-25 11:18:09', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-25 11:18:09', '2019-10-25 11:18:09', '', 0, 'http://localhost/julia/?page_id=97', 0, 'page', '', 0),
(98, 1, '2019-10-25 11:18:09', '2019-10-25 11:18:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2019-10-25 11:18:09', '2019-10-25 11:18:09', '', 97, 'http://localhost/julia/index.php/2019/10/25/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-10-25 11:18:20', '2019-10-25 11:18:20', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-10-25 11:18:20', '2019-10-25 11:18:20', '', 0, 'http://localhost/julia/?page_id=99', 0, 'page', '', 0),
(100, 1, '2019-10-25 11:18:20', '2019-10-25 11:18:20', '', 'About', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2019-10-25 11:18:20', '2019-10-25 11:18:20', '', 99, 'http://localhost/julia/index.php/2019/10/25/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-10-25 11:18:29', '2019-10-25 11:18:29', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-10-25 11:18:29', '2019-10-25 11:18:29', '', 0, 'http://localhost/julia/?page_id=101', 0, 'page', '', 0),
(102, 1, '2019-10-25 11:18:29', '2019-10-25 11:18:29', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2019-10-25 11:18:29', '2019-10-25 11:18:29', '', 101, 'http://localhost/julia/index.php/2019/10/25/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-10-25 11:18:36', '2019-10-25 11:18:36', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2019-10-25 11:18:36', '2019-10-25 11:18:36', '', 0, 'http://localhost/julia/?page_id=103', 0, 'page', '', 0),
(104, 1, '2019-10-25 11:18:36', '2019-10-25 11:18:36', '', 'Events', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-10-25 11:18:36', '2019-10-25 11:18:36', '', 103, 'http://localhost/julia/index.php/2019/10/25/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-10-25 11:19:02', '2019-10-25 11:19:02', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2019-10-25 11:19:02', '2019-10-25 11:19:02', '', 0, 'http://localhost/julia/?p=105', 4, 'nav_menu_item', '', 0),
(106, 1, '2019-10-25 11:19:01', '2019-10-25 11:19:01', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2019-10-25 11:19:01', '2019-10-25 11:19:01', '', 0, 'http://localhost/julia/?p=106', 3, 'nav_menu_item', '', 0),
(107, 1, '2019-10-25 11:19:01', '2019-10-25 11:19:01', ' ', '', '', 'publish', 'closed', 'closed', '', '107', '', '', '2019-10-25 11:19:01', '2019-10-25 11:19:01', '', 0, 'http://localhost/julia/?p=107', 2, 'nav_menu_item', '', 0),
(108, 1, '2019-10-25 11:19:01', '2019-10-25 11:19:01', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2019-10-25 11:19:01', '2019-10-25 11:19:01', '', 0, 'http://localhost/julia/?p=108', 1, 'nav_menu_item', '', 0),
(109, 1, '2019-10-25 11:35:00', '2019-10-25 11:35:00', '', 'Bio', '', 'publish', 'closed', 'closed', '', 'bio', '', '', '2019-10-25 11:38:02', '2019-10-25 11:38:02', '', 0, 'http://localhost/julia/?p=109', 1, 'nav_menu_item', '', 0),
(110, 1, '2019-10-25 11:35:00', '2019-10-25 11:35:00', '', 'Publications', '', 'publish', 'closed', 'closed', '', 'publications', '', '', '2019-10-25 11:38:02', '2019-10-25 11:38:02', '', 0, 'http://localhost/julia/?p=110', 2, 'nav_menu_item', '', 0),
(111, 1, '2019-10-25 11:34:21', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-25 11:34:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/julia/?p=111', 1, 'nav_menu_item', '', 0),
(112, 1, '2019-10-25 11:35:00', '2019-10-25 11:35:00', '', 'Video courses', '', 'publish', 'closed', 'closed', '', 'video-courses', '', '', '2019-10-25 11:38:02', '2019-10-25 11:38:02', '', 0, 'http://localhost/julia/?p=112', 3, 'nav_menu_item', '', 0),
(113, 1, '2019-10-25 11:35:00', '2019-10-25 11:35:00', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2019-10-25 11:38:02', '2019-10-25 11:38:02', '', 0, 'http://localhost/julia/?p=113', 4, 'nav_menu_item', '', 0),
(114, 1, '2019-10-25 11:35:38', '2019-10-25 11:35:38', '', 'Intro', '', 'publish', 'closed', 'closed', '', 'intro', '', '', '2019-10-25 11:37:52', '2019-10-25 11:37:52', '', 0, 'http://localhost/julia/?p=114', 1, 'nav_menu_item', '', 0),
(115, 1, '2019-10-25 11:35:39', '2019-10-25 11:35:39', '', 'University', '', 'publish', 'closed', 'closed', '', 'university', '', '', '2019-10-25 11:37:52', '2019-10-25 11:37:52', '', 0, 'http://localhost/julia/?p=115', 2, 'nav_menu_item', '', 0),
(116, 1, '2019-10-25 11:35:39', '2019-10-25 11:35:39', '', 'Business', '', 'publish', 'closed', 'closed', '', 'business', '', '', '2019-10-25 11:37:52', '2019-10-25 11:37:52', '', 0, 'http://localhost/julia/?p=116', 3, 'nav_menu_item', '', 0),
(117, 1, '2019-10-25 11:35:39', '2019-10-25 11:35:39', '', 'People', '', 'publish', 'closed', 'closed', '', 'people', '', '', '2019-10-25 11:37:52', '2019-10-25 11:37:52', '', 0, 'http://localhost/julia/?p=117', 4, 'nav_menu_item', '', 0),
(118, 1, '2019-10-25 11:35:39', '2019-10-25 11:35:39', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery-2', '', '', '2019-10-25 11:37:52', '2019-10-25 11:37:52', '', 0, 'http://localhost/julia/?p=118', 5, 'nav_menu_item', '', 0),
(119, 1, '2019-10-25 11:41:18', '2019-10-25 11:41:18', '', 'Speaking', '', 'publish', 'closed', 'closed', '', 'speaking', '', '', '2019-10-25 11:41:18', '2019-10-25 11:41:18', '', 0, 'http://localhost/julia/?p=119', 1, 'nav_menu_item', '', 0),
(120, 1, '2019-10-25 11:41:18', '2019-10-25 11:41:18', '', 'Coaching', '', 'publish', 'closed', 'closed', '', 'coaching', '', '', '2019-10-25 11:41:18', '2019-10-25 11:41:18', '', 0, 'http://localhost/julia/?p=120', 2, 'nav_menu_item', '', 0),
(121, 1, '2019-10-25 11:41:18', '2019-10-25 11:41:18', '', 'Consulting', '', 'publish', 'closed', 'closed', '', 'consulting', '', '', '2019-10-25 11:41:18', '2019-10-25 11:41:18', '', 0, 'http://localhost/julia/?p=121', 3, 'nav_menu_item', '', 0),
(122, 1, '2019-10-25 11:52:05', '2019-10-25 11:52:05', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:3:\"row\";s:10:\"sub_fields\";a:0:{}}', 'Social Icon Settings', 'social_icon_settings', 'publish', 'closed', 'closed', '', 'field_5db2e1d76881f', '', '', '2019-10-27 04:50:18', '2019-10-27 04:50:18', '', 6, 'http://localhost/julia/?post_type=acf-field&#038;p=122', 3, 'acf-field', '', 0),
(123, 1, '2019-10-25 11:55:41', '2019-10-25 11:55:41', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook Profile Link', 'facebook_profile_link', 'publish', 'closed', 'closed', '', 'field_5db2e2b6999a6', '', '', '2019-10-25 11:56:42', '2019-10-25 11:56:42', '', 122, 'http://localhost/julia/?post_type=acf-field&#038;p=123', 0, 'acf-field', '', 0),
(124, 1, '2019-10-25 11:56:29', '2019-10-25 11:56:29', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Twitter Profile Link', 'twitter_profile_link', 'publish', 'closed', 'closed', '', 'field_5db2e2c2709a2', '', '', '2019-10-25 11:56:29', '2019-10-25 11:56:29', '', 122, 'http://localhost/julia/?post_type=acf-field&p=124', 1, 'acf-field', '', 0),
(125, 1, '2019-10-25 11:56:29', '2019-10-25 11:56:29', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Instagram Profile Link', 'instagram_profile_link', 'publish', 'closed', 'closed', '', 'field_5db2e2cc709a3', '', '', '2019-10-25 11:56:29', '2019-10-25 11:56:29', '', 122, 'http://localhost/julia/?post_type=acf-field&p=125', 2, 'acf-field', '', 0),
(126, 1, '2019-10-25 11:56:29', '2019-10-25 11:56:29', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'LinkedIn Profile Link', 'linkedin_profile_link', 'publish', 'closed', 'closed', '', 'field_5db2e2d4709a4', '', '', '2019-10-25 11:56:29', '2019-10-25 11:56:29', '', 122, 'http://localhost/julia/?post_type=acf-field&p=126', 3, 'acf-field', '', 0),
(127, 1, '2019-10-25 11:57:49', '2019-10-25 11:57:49', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:4:\"Show\";s:11:\"ui_off_text\";s:4:\"Hide\";}', 'Show In Top Header', 'show_in_top_header', 'publish', 'closed', 'closed', '', 'field_5db2e3112ad4d', '', '', '2019-10-25 11:59:13', '2019-10-25 11:59:13', '', 122, 'http://localhost/julia/?post_type=acf-field&#038;p=127', 4, 'acf-field', '', 0),
(128, 1, '2019-10-25 11:57:49', '2019-10-25 11:57:49', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:4:\"Show\";s:11:\"ui_off_text\";s:4:\"Hide\";}', 'Show In Footer', 'show_in_footer', 'publish', 'closed', 'closed', '', 'field_5db2e32b2ad4e', '', '', '2019-10-25 11:59:13', '2019-10-25 11:59:13', '', 122, 'http://localhost/julia/?post_type=acf-field&#038;p=128', 5, 'acf-field', '', 0),
(129, 1, '2019-10-27 04:45:56', '2019-10-27 04:45:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Site Logo', 'site_logo', 'publish', 'closed', 'closed', '', 'field_5db520e6d3f80', '', '', '2019-10-27 04:47:56', '2019-10-27 04:47:56', '', 130, 'http://localhost/julia/?post_type=acf-field&#038;p=129', 0, 'acf-field', '', 0),
(130, 1, '2019-10-27 04:47:56', '2019-10-27 04:47:56', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Site Logo Group', 'site_logo_group', 'publish', 'closed', 'closed', '', 'field_5db52126e7188', '', '', '2019-10-27 04:47:56', '2019-10-27 04:47:56', '', 6, 'http://localhost/julia/?post_type=acf-field&p=130', 1, 'acf-field', '', 0),
(131, 1, '2019-10-27 04:47:56', '2019-10-27 04:47:56', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_5db520e6d3f80\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Show In Footer?', 'logo_show_in_footer', 'publish', 'closed', 'closed', '', 'field_5db52158e718a', '', '', '2019-10-27 05:34:03', '2019-10-27 05:34:03', '', 130, 'http://localhost/julia/?post_type=acf-field&#038;p=131', 1, 'acf-field', '', 0),
(132, 1, '2019-10-27 05:43:37', '2019-10-27 05:43:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5db52158e718a\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Footer Logo', 'footer_logo', 'publish', 'closed', 'closed', '', 'field_5db52e5dd741c', '', '', '2019-10-27 05:43:37', '2019-10-27 05:43:37', '', 130, 'http://localhost/julia/?post_type=acf-field&p=132', 2, 'acf-field', '', 0),
(133, 1, '2019-10-27 06:59:47', '2019-10-27 06:59:47', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Company Website Link', 'company_website_link', 'publish', 'closed', 'closed', '', 'field_5db540265d216', '', '', '2019-10-27 06:59:47', '2019-10-27 06:59:47', '', 24, 'http://localhost/julia/?post_type=acf-field&p=133', 1, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Footer Menu One', 'footer-menu-one', 0),
(4, 'J.Ivy', 'j-ivy', 0),
(5, 'BE-EDGE', 'be-edge', 0),
(6, 'Services', 'services', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(42, 2, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0),
(47, 2, 0),
(48, 2, 0),
(49, 2, 0),
(50, 2, 0),
(51, 2, 0),
(52, 2, 0),
(105, 3, 0),
(106, 3, 0),
(107, 3, 0),
(108, 3, 0),
(109, 4, 0),
(110, 4, 0),
(112, 4, 0),
(113, 4, 0),
(114, 5, 0),
(115, 5, 0),
(116, 5, 0),
(117, 5, 0),
(118, 5, 0),
(119, 6, 0),
(120, 6, 0),
(121, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 10),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'nav_menu', '', 0, 5),
(6, 6, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mehedi'),
(2, 1, 'first_name', 'Mehedi'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"6423d2963d3ef9b2fd8e421699614d522df85ba20c0c01448d1bf50e2bff0709\";a:4:{s:10:\"expiration\";i:1572324295;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1572151495;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_toplevel_page_theme-general-settings', 'a:1:{i:0;s:23:\"acf-group_5daf1fee6841f\";}'),
(19, 1, 'metaboxhidden_toplevel_page_theme-general-settings', 'a:0:{}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&mfold=o'),
(21, 1, 'wp_user-settings-time', '1572162591'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '6'),
(25, 1, 'closedpostboxes_blog', 'a:0:{}'),
(26, 1, 'metaboxhidden_blog', 'a:1:{i:0;s:23:\"acf-group_5db2ad165890c\";}'),
(27, 1, 'closedpostboxes_blog_page_acf-options-manage-blog-section', 'a:0:{}'),
(28, 1, 'metaboxhidden_blog_page_acf-options-manage-blog-section', 'a:0:{}'),
(29, 1, 'meta-box-order_toplevel_page_theme-general-settings', 'a:2:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:23:\"acf-group_5daf1fee6841f\";}'),
(30, 1, 'screen_layout_toplevel_page_theme-general-settings', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mehedi', '$P$BdE0FyqcCzmfol6rCshVMAc6nEsrMW/', 'mehedi', 'mehedi5051@gmail.com', '', '2019-10-22 14:56:13', '', 0, 'Mehedi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
