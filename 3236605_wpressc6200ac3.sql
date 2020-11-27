-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb17.runhosting.com
-- Generation Time: Dec 09, 2019 at 07:04 PM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3236605_wpressc6200ac3`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-25 11:45:19', '2019-11-25 11:45:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://vilasofia.myartsonline.com', 'yes'),
(2, 'home', 'http://vilasofia.myartsonline.com', 'yes'),
(3, 'blogname', 'Casa Sofia', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sacriversium@yahoo.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=9&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";i:1;s:33:"classic-editor/classic-editor.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:23:"ml-slider/ml-slider.php";i:4;s:27:"wp-super-cache/wp-cache.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'vilasofia', 'yes'),
(41, 'stylesheet', 'vilasofia', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '1', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(69, 'close_comments_for_old_posts', '1', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:33:"classic-editor/classic-editor.php";a:2:{i:0;s:14:"Classic_Editor";i:1;s:9:"uninstall";}s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '11', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1590234319', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1575909921;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1575935121;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1575978320;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1575978323;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1575978324;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1575978503;a:1:{s:21:"ai1wm_storage_cleanup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1574682330;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.3.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.3";s:7:"version";s:3:"5.3";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1575897329;s:15:"version_checked";s:3:"5.3";s:12:"translations";a:0:{}}', 'no'),
(308, '_site_transient_timeout_theme_roots', '1575899129', 'no'),
(309, '_site_transient_theme_roots', 'a:4:{s:15:"travel-aureolin";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:9:"vilasofia";s:7:"/themes";}', 'no'),
(130, 'current_theme', 'vilasofia', 'yes'),
(161, 'theme_mods_vilasofia', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1574683120;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}}}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(131, 'theme_mods_travel-aureolin', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1574682953;s:4:"data";a:12:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:18:"header-widget-area";a:0:{}s:21:"first-nav-widget-area";a:0:{}s:22:"second-nav-widget-area";a:0:{}s:21:"first-top-widget-area";a:0:{}s:22:"second-top-widget-area";a:0:{}s:24:"first-bottom-widget-area";a:0:{}s:25:"second-bottom-widget-area";a:0:{}s:20:"footer-1-widget-area";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:20:"footer-2-widget-area";a:0:{}s:20:"footer-3-widget-area";a:0:{}}}}', 'yes'),
(132, 'theme_switched', '', 'yes'),
(133, 'widget_vmenuwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(134, 'widget_loginwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(164, 'category_children', 'a:0:{}', 'yes'),
(207, '_site_transient_timeout_browser_6a622d47fb08177c1441b37c7ddd7498', '1576074959', 'no'),
(208, '_site_transient_browser_6a622d47fb08177c1441b37c7ddd7498', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"78.0.3904.108";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(136, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1575890510;s:7:"checked";a:4:{s:15:"travel-aureolin";s:3:"1.0";s:14:"twentynineteen";s:3:"1.4";s:15:"twentyseventeen";s:3:"2.2";s:9:"vilasofia";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(139, 'ai1wm_secret_key', 'd3t70LZTksoe', 'yes'),
(142, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.1.5";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1574682353;s:7:"version";s:5:"5.1.5";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(209, '_site_transient_timeout_php_check_84762f83841bd7717ae6e078c4ccdd1d', '1576074960', 'no'),
(210, '_site_transient_php_check_84762f83841bd7717ae6e078c4ccdd1d', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(227, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'can_compress_scripts', '1', 'no'),
(264, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(162, 'recovery_mode_email_last_sent', '1574682953', 'yes'),
(175, 'ai1wm_updater', 'a:0:{}', 'yes'),
(228, 'widget_metaslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(231, 'ms_hide_all_ads_until', '1576679971', 'yes'),
(232, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'no'),
(235, 'ml-slider_children', 'a:0:{}', 'yes'),
(234, 'metaslider_tour_cancelled_on', 'add-slide', 'yes'),
(310, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1575897330;s:7:"checked";a:7:{s:19:"akismet/akismet.php";s:5:"4.1.3";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:4:"7.10";s:33:"classic-editor/classic-editor.php";s:3:"1.5";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.1.5";s:9:"hello.php";s:5:"1.7.2";s:23:"ml-slider/ml-slider.php";s:6:"3.15.3";s:27:"wp-super-cache/wp-cache.php";s:5:"1.7.0";}s:8:"response";a:2:{s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";O:8:"stdClass":12:{s:2:"id";s:37:"w.org/plugins/all-in-one-wp-migration";s:4:"slug";s:23:"all-in-one-wp-migration";s:6:"plugin";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:11:"new_version";s:4:"7.12";s:3:"url";s:54:"https://wordpress.org/plugins/all-in-one-wp-migration/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.12.zip";s:5:"icons";a:2:{s:2:"2x";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2202552";s:2:"1x";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2202552";}s:7:"banners";a:2:{s:2:"2x";s:79:"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2202552";s:2:"1x";s:78:"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2202552";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.3";s:12:"requires_php";s:6:"5.2.17";s:13:"compatibility";O:8:"stdClass":0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.1.6";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.3";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:33:"classic-editor/classic-editor.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/classic-editor";s:4:"slug";s:14:"classic-editor";s:6:"plugin";s:33:"classic-editor/classic-editor.php";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/plugins/classic-editor/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671";s:2:"1x";s:67:"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671";s:2:"1x";s:69:"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":9:{s:2:"id";s:23:"w.org/plugins/ml-slider";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:6:"3.15.3";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/ml-slider.3.15.3.zip";s:5:"icons";a:3:{s:2:"2x";s:62:"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669";s:2:"1x";s:54:"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669";s:3:"svg";s:54:"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669";}s:7:"banners";a:2:{s:2:"2x";s:65:"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669";s:2:"1x";s:64:"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669";}s:11:"banners_rtl";a:0:{}}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-super-cache";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.7.0";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.7.0.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422";s:2:"1x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414";s:2:"1x";s:69:"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(4, 5, '_mail', 'a:8:{s:7:"subject";s:27:"Casa Sofia "[your-subject]"";s:6:"sender";s:49:"Casa Sofia <wordpress@vilasofia.myartsonline.com>";s:4:"body";s:182:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Casa Sofia (http://vilasofia.myartsonline.com)";s:9:"recipient";s:22:"sacriversium@yahoo.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:27:"Casa Sofia "[your-subject]"";s:6:"sender";s:49:"Casa Sofia <wordpress@vilasofia.myartsonline.com>";s:4:"body";s:124:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Casa Sofia (http://vilasofia.myartsonline.com)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:32:"Reply-To: sacriversium@yahoo.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(6, 5, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'en_US'),
(9, 2, '_theme_show_in_menu', '1'),
(10, 2, '_theme_title_in_menu', ''),
(11, 2, '_theme_show_as_separator', '0'),
(12, 1, '_wp_trash_meta_status', 'publish'),
(13, 1, '_wp_trash_meta_time', '1574682864'),
(14, 1, '_wp_desired_post_slug', 'hello-world'),
(15, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(16, 2, '_wp_trash_meta_status', 'publish'),
(17, 2, '_wp_trash_meta_time', '1574683498'),
(18, 2, '_wp_desired_post_slug', 'sample-page'),
(19, 3, '_wp_trash_meta_status', 'draft'),
(20, 3, '_wp_trash_meta_time', '1574683504'),
(21, 3, '_wp_desired_post_slug', 'privacy-policy'),
(22, 9, '_edit_last', '1'),
(23, 9, '_edit_lock', '1575562996:1'),
(24, 11, '_edit_last', '1'),
(25, 11, '_edit_lock', '1574683568:1'),
(26, 13, '_edit_last', '1'),
(27, 13, '_edit_lock', '1575571933:1'),
(28, 15, '_edit_last', '1'),
(29, 15, '_edit_lock', '1575470673:1'),
(30, 18, '_edit_last', '1'),
(31, 18, '_edit_lock', '1575470190:1'),
(32, 18, 'nume', NULL),
(33, 18, 'prenume', NULL),
(34, 18, 'telefon', NULL),
(35, 18, 'email', NULL),
(36, 20, 'ml-slider_settings', 'a:37:{s:4:"type";s:4:"flex";s:6:"random";b:0;s:8:"cssClass";s:0:"";s:8:"printCss";b:1;s:7:"printJs";b:1;s:5:"width";i:700;s:6:"height";i:300;s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";i:3000;s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:6:"random";s:10:"navigation";b:1;s:5:"links";b:1;s:10:"hoverPause";b:1;s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";b:0;s:14:"animationSpeed";i:600;s:8:"prevText";s:8:"Previous";s:8:"nextText";s:4:"Next";s:6:"slices";i:15;s:6:"center";b:0;s:9:"smartCrop";b:1;s:12:"carouselMode";b:0;s:14:"carouselMargin";i:5;s:16:"firstSlideFadeIn";b:0;s:6:"easing";s:6:"linear";s:8:"autoPlay";b:1;s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:17:"responsive_thumbs";b:1;s:15:"thumb_min_width";i:100;s:9:"fullWidth";b:1;s:10:"noConflict";b:1;}'),
(37, 20, 'metaslider_slideshow_theme', ''),
(38, 21, 'ml-slider_settings', 'a:38:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"700";s:6:"height";s:3:"400";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"3000";s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:4:"true";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:8:"Previous";s:8:"nextText";s:4:"Next";s:6:"slices";i:15;s:6:"center";s:4:"true";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:16:"firstSlideFadeIn";s:5:"false";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:17:"responsive_thumbs";s:5:"false";s:15:"thumb_min_width";i:100;s:9:"fullWidth";s:5:"false";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(39, 21, 'metaslider_slideshow_theme', ''),
(40, 22, '_wp_attached_file', '2019/12/frontal2.jpg'),
(41, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:350;s:4:"file";s:20:"2019/12/frontal2.jpg";s:5:"sizes";a:7:{s:6:"medium";a:4:{s:4:"file";s:20:"frontal2-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"frontal2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x171";a:4:{s:4:"file";s:20:"frontal2-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x182";a:4:{s:4:"file";s:20:"frontal2-400x182.jpg";s:5:"width";i:400;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x320";a:4:{s:4:"file";s:20:"frontal2-400x320.jpg";s:5:"width";i:400;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x256";a:4:{s:4:"file";s:20:"frontal2-400x256.jpg";s:5:"width";i:400;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x228";a:4:{s:4:"file";s:20:"frontal2-400x228.jpg";s:5:"width";i:400;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(42, 23, '_wp_attached_file', '2019/12/Curte-bancuta.jpg'),
(43, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:25:"2019/12/Curte-bancuta.jpg";s:5:"sizes";a:7:{s:6:"medium";a:4:{s:4:"file";s:25:"Curte-bancuta-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:25:"Curte-bancuta-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x171";a:4:{s:4:"file";s:25:"Curte-bancuta-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x182";a:4:{s:4:"file";s:25:"Curte-bancuta-400x182.jpg";s:5:"width";i:400;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-375x300";a:4:{s:4:"file";s:25:"Curte-bancuta-375x300.jpg";s:5:"width";i:375;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x256";a:4:{s:4:"file";s:25:"Curte-bancuta-400x256.jpg";s:5:"width";i:400;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x228";a:4:{s:4:"file";s:25:"Curte-bancuta-400x228.jpg";s:5:"width";i:400;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.2";s:6:"credit";s:0:"";s:6:"camera";s:7:"FIG-LX1";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1561884551";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.21";s:3:"iso";s:2:"50";s:13:"shutter_speed";s:8:"0.001623";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(44, 24, '_wp_attached_file', '2019/12/frontal-zapada.jpg'),
(45, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:26:"2019/12/frontal-zapada.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"frontal-zapada-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-300x128";a:4:{s:4:"file";s:26:"frontal-zapada-300x128.jpg";s:5:"width";i:300;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-300x137";a:4:{s:4:"file";s:26:"frontal-zapada-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-300x240";a:4:{s:4:"file";s:26:"frontal-zapada-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-300x192";a:4:{s:4:"file";s:26:"frontal-zapada-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-300x171";a:4:{s:4:"file";s:26:"frontal-zapada-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(46, 25, '_wp_attached_file', '2019/12/capite-iarna.jpg'),
(47, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:720;s:4:"file";s:24:"2019/12/capite-iarna.jpg";s:5:"sizes";a:14:{s:6:"medium";a:4:{s:4:"file";s:24:"capite-iarna-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"capite-iarna-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"capite-iarna-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-700x300";a:4:{s:4:"file";s:24:"capite-iarna-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x266";a:4:{s:4:"file";s:24:"capite-iarna-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x171";a:4:{s:4:"file";s:24:"capite-iarna-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-700x320";a:4:{s:4:"file";s:24:"capite-iarna-700x320.jpg";s:5:"width";i:700;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x283";a:4:{s:4:"file";s:24:"capite-iarna-620x283.jpg";s:5:"width";i:620;s:6:"height";i:283;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x183";a:4:{s:4:"file";s:24:"capite-iarna-400x183.jpg";s:5:"width";i:400;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x320";a:4:{s:4:"file";s:24:"capite-iarna-400x320.jpg";s:5:"width";i:400;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-500x320";a:4:{s:4:"file";s:24:"capite-iarna-500x320.jpg";s:5:"width";i:500;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-700x400";a:4:{s:4:"file";s:24:"capite-iarna-700x400.jpg";s:5:"width";i:700;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x354";a:4:{s:4:"file";s:24:"capite-iarna-620x354.jpg";s:5:"width";i:620;s:6:"height";i:354;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x229";a:4:{s:4:"file";s:24:"capite-iarna-400x229.jpg";s:5:"width";i:400;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(48, 26, '_wp_attached_file', '2019/12/ousoru-2.jpg'),
(49, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:20:"2019/12/ousoru-2.jpg";s:5:"sizes";a:7:{s:6:"medium";a:4:{s:4:"file";s:20:"ousoru-2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"ousoru-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x171";a:4:{s:4:"file";s:20:"ousoru-2-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x182";a:4:{s:4:"file";s:20:"ousoru-2-400x182.jpg";s:5:"width";i:400;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-375x300";a:4:{s:4:"file";s:20:"ousoru-2-375x300.jpg";s:5:"width";i:375;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x256";a:4:{s:4:"file";s:20:"ousoru-2-400x256.jpg";s:5:"width";i:400;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x228";a:4:{s:4:"file";s:20:"ousoru-2-400x228.jpg";s:5:"width";i:400;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(50, 27, '_wp_attached_file', '2019/12/brad.jpg'),
(51, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:238;s:4:"file";s:16:"2019/12/brad.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"brad-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-300x128";a:4:{s:4:"file";s:16:"brad-300x128.jpg";s:5:"width";i:300;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-300x137";a:4:{s:4:"file";s:16:"brad-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-297x238";a:4:{s:4:"file";s:16:"brad-297x238.jpg";s:5:"width";i:297;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-300x192";a:4:{s:4:"file";s:16:"brad-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-300x171";a:4:{s:4:"file";s:16:"brad-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(52, 28, '_thumbnail_id', '22'),
(53, 28, 'ml-slider_type', 'image'),
(54, 28, 'ml-slider_inherit_image_title', '1'),
(55, 28, 'ml-slider_inherit_image_alt', '1'),
(56, 29, '_thumbnail_id', '23'),
(57, 29, 'ml-slider_type', 'image'),
(58, 29, 'ml-slider_inherit_image_title', '1'),
(59, 29, 'ml-slider_inherit_image_alt', '1'),
(60, 30, '_thumbnail_id', '24'),
(61, 30, 'ml-slider_type', 'image'),
(62, 30, 'ml-slider_inherit_image_title', '1'),
(63, 30, 'ml-slider_inherit_image_alt', '1'),
(64, 31, '_thumbnail_id', '25'),
(65, 31, 'ml-slider_type', 'image'),
(66, 31, 'ml-slider_inherit_image_title', '1'),
(67, 31, 'ml-slider_inherit_image_alt', '1'),
(68, 32, '_thumbnail_id', '26'),
(69, 32, 'ml-slider_type', 'image'),
(70, 32, 'ml-slider_inherit_image_title', '1'),
(71, 32, 'ml-slider_inherit_image_alt', '1'),
(72, 33, '_thumbnail_id', '27'),
(73, 33, 'ml-slider_type', 'image'),
(74, 33, 'ml-slider_inherit_image_title', '1'),
(75, 33, 'ml-slider_inherit_image_alt', '1'),
(76, 28, 'ml-slider_crop_position', 'center-center'),
(77, 28, 'ml-slider_caption_source', 'image-caption'),
(78, 28, '_wp_attachment_image_alt', ''),
(79, 29, 'ml-slider_crop_position', 'center-center'),
(80, 29, 'ml-slider_caption_source', 'image-caption'),
(81, 29, '_wp_attachment_image_alt', ''),
(82, 30, 'ml-slider_crop_position', 'center-center'),
(83, 30, 'ml-slider_caption_source', 'image-caption'),
(84, 30, '_wp_attachment_image_alt', ''),
(85, 31, 'ml-slider_crop_position', 'center-center'),
(86, 31, 'ml-slider_caption_source', 'image-caption'),
(87, 31, '_wp_attachment_image_alt', ''),
(88, 32, 'ml-slider_crop_position', 'center-center'),
(89, 32, 'ml-slider_caption_source', 'image-caption'),
(90, 32, '_wp_attachment_image_alt', ''),
(91, 33, 'ml-slider_crop_position', 'center-center'),
(92, 33, 'ml-slider_caption_source', 'image-caption'),
(93, 33, '_wp_attachment_image_alt', ''),
(94, 22, '_wp_attachment_backup_sizes', 'a:5:{s:15:"resized-400x171";a:5:{s:4:"path";s:98:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal2-400x171.jpg";s:4:"file";s:20:"frontal2-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x182";a:5:{s:4:"path";s:98:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal2-400x182.jpg";s:4:"file";s:20:"frontal2-400x182.jpg";s:5:"width";i:400;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x320";a:5:{s:4:"path";s:98:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal2-400x320.jpg";s:4:"file";s:20:"frontal2-400x320.jpg";s:5:"width";i:400;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x256";a:5:{s:4:"path";s:98:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal2-400x256.jpg";s:4:"file";s:20:"frontal2-400x256.jpg";s:5:"width";i:400;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x228";a:5:{s:4:"path";s:98:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal2-400x228.jpg";s:4:"file";s:20:"frontal2-400x228.jpg";s:5:"width";i:400;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}}'),
(95, 23, '_wp_attachment_backup_sizes', 'a:5:{s:15:"resized-400x171";a:5:{s:4:"path";s:103:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/Curte-bancuta-400x171.jpg";s:4:"file";s:25:"Curte-bancuta-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x182";a:5:{s:4:"path";s:103:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/Curte-bancuta-400x182.jpg";s:4:"file";s:25:"Curte-bancuta-400x182.jpg";s:5:"width";i:400;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-375x300";a:5:{s:4:"path";s:103:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/Curte-bancuta-375x300.jpg";s:4:"file";s:25:"Curte-bancuta-375x300.jpg";s:5:"width";i:375;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x256";a:5:{s:4:"path";s:103:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/Curte-bancuta-400x256.jpg";s:4:"file";s:25:"Curte-bancuta-400x256.jpg";s:5:"width";i:400;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x228";a:5:{s:4:"path";s:103:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/Curte-bancuta-400x228.jpg";s:4:"file";s:25:"Curte-bancuta-400x228.jpg";s:5:"width";i:400;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}}'),
(96, 24, '_wp_attachment_backup_sizes', 'a:5:{s:15:"resized-300x128";a:5:{s:4:"path";s:104:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal-zapada-300x128.jpg";s:4:"file";s:26:"frontal-zapada-300x128.jpg";s:5:"width";i:300;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-300x137";a:5:{s:4:"path";s:104:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal-zapada-300x137.jpg";s:4:"file";s:26:"frontal-zapada-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-300x240";a:5:{s:4:"path";s:104:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal-zapada-300x240.jpg";s:4:"file";s:26:"frontal-zapada-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-300x192";a:5:{s:4:"path";s:104:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal-zapada-300x192.jpg";s:4:"file";s:26:"frontal-zapada-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-300x171";a:5:{s:4:"path";s:104:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal-zapada-300x171.jpg";s:4:"file";s:26:"frontal-zapada-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}'),
(97, 25, '_wp_attachment_backup_sizes', 'a:11:{s:15:"resized-700x300";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-700x300.jpg";s:4:"file";s:24:"capite-iarna-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x266";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-620x266.jpg";s:4:"file";s:24:"capite-iarna-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x171";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-400x171.jpg";s:4:"file";s:24:"capite-iarna-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-700x320";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-700x320.jpg";s:4:"file";s:24:"capite-iarna-700x320.jpg";s:5:"width";i:700;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x283";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-620x283.jpg";s:4:"file";s:24:"capite-iarna-620x283.jpg";s:5:"width";i:620;s:6:"height";i:283;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x183";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-400x183.jpg";s:4:"file";s:24:"capite-iarna-400x183.jpg";s:5:"width";i:400;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x320";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-400x320.jpg";s:4:"file";s:24:"capite-iarna-400x320.jpg";s:5:"width";i:400;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-500x320";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-500x320.jpg";s:4:"file";s:24:"capite-iarna-500x320.jpg";s:5:"width";i:500;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-700x400";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-700x400.jpg";s:4:"file";s:24:"capite-iarna-700x400.jpg";s:5:"width";i:700;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x354";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-620x354.jpg";s:4:"file";s:24:"capite-iarna-620x354.jpg";s:5:"width";i:620;s:6:"height";i:354;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x229";a:5:{s:4:"path";s:102:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna-400x229.jpg";s:4:"file";s:24:"capite-iarna-400x229.jpg";s:5:"width";i:400;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}}'),
(98, 26, '_wp_attachment_backup_sizes', 'a:5:{s:15:"resized-400x171";a:5:{s:4:"path";s:98:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/ousoru-2-400x171.jpg";s:4:"file";s:20:"ousoru-2-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x182";a:5:{s:4:"path";s:98:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/ousoru-2-400x182.jpg";s:4:"file";s:20:"ousoru-2-400x182.jpg";s:5:"width";i:400;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-375x300";a:5:{s:4:"path";s:98:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/ousoru-2-375x300.jpg";s:4:"file";s:20:"ousoru-2-375x300.jpg";s:5:"width";i:375;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x256";a:5:{s:4:"path";s:98:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/ousoru-2-400x256.jpg";s:4:"file";s:20:"ousoru-2-400x256.jpg";s:5:"width";i:400;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x228";a:5:{s:4:"path";s:98:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/ousoru-2-400x228.jpg";s:4:"file";s:20:"ousoru-2-400x228.jpg";s:5:"width";i:400;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}}'),
(99, 27, '_wp_attachment_backup_sizes', 'a:5:{s:15:"resized-300x128";a:5:{s:4:"path";s:94:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/brad-300x128.jpg";s:4:"file";s:16:"brad-300x128.jpg";s:5:"width";i:300;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-300x137";a:5:{s:4:"path";s:94:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/brad-300x137.jpg";s:4:"file";s:16:"brad-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-297x238";a:5:{s:4:"path";s:94:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/brad-297x238.jpg";s:4:"file";s:16:"brad-297x238.jpg";s:5:"width";i:297;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-300x192";a:5:{s:4:"path";s:94:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/brad-300x192.jpg";s:4:"file";s:16:"brad-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-300x171";a:5:{s:4:"path";s:94:"/srv/disk15/3236605/www/vilasofia.myartsonline.com/wp-content/uploads/2019/12/brad-300x171.jpg";s:4:"file";s:16:"brad-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}'),
(100, 34, '_edit_last', '1'),
(101, 34, '_edit_lock', '1575470798:1'),
(102, 36, 'nume', 'Randau'),
(103, 36, 'prenume', 'Giroc'),
(104, 36, 'telefon', '0468961007'),
(105, 36, 'coment', ' '),
(106, 36, 'email', NULL),
(107, 37, '_menu_item_type', 'post_type'),
(108, 37, '_menu_item_menu_item_parent', '0'),
(109, 37, '_menu_item_object_id', '9'),
(110, 37, '_menu_item_object', 'page'),
(111, 37, '_menu_item_target', ''),
(112, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 37, '_menu_item_xfn', ''),
(114, 37, '_menu_item_url', ''),
(115, 37, '_menu_item_orphaned', '1575558367'),
(116, 38, '_menu_item_type', 'post_type'),
(117, 38, '_menu_item_menu_item_parent', '0'),
(118, 38, '_menu_item_object_id', '11'),
(119, 38, '_menu_item_object', 'page'),
(120, 38, '_menu_item_target', ''),
(121, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 38, '_menu_item_xfn', ''),
(123, 38, '_menu_item_url', ''),
(124, 38, '_menu_item_orphaned', '1575558367'),
(125, 39, '_menu_item_type', 'post_type'),
(126, 39, '_menu_item_menu_item_parent', '0'),
(127, 39, '_menu_item_object_id', '34'),
(128, 39, '_menu_item_object', 'page'),
(129, 39, '_menu_item_target', ''),
(130, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(131, 39, '_menu_item_xfn', ''),
(132, 39, '_menu_item_url', ''),
(133, 39, '_menu_item_orphaned', '1575558367'),
(134, 40, '_menu_item_type', 'post_type'),
(135, 40, '_menu_item_menu_item_parent', '0'),
(136, 40, '_menu_item_object_id', '13'),
(137, 40, '_menu_item_object', 'page'),
(138, 40, '_menu_item_target', ''),
(139, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 40, '_menu_item_xfn', ''),
(141, 40, '_menu_item_url', ''),
(142, 40, '_menu_item_orphaned', '1575558367'),
(143, 41, '_menu_item_type', 'post_type'),
(144, 41, '_menu_item_menu_item_parent', '0'),
(145, 41, '_menu_item_object_id', '15'),
(146, 41, '_menu_item_object', 'page'),
(147, 41, '_menu_item_target', ''),
(148, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 41, '_menu_item_xfn', ''),
(150, 41, '_menu_item_url', ''),
(151, 41, '_menu_item_orphaned', '1575558367'),
(152, 42, '_menu_item_type', 'post_type'),
(153, 42, '_menu_item_menu_item_parent', '0'),
(154, 42, '_menu_item_object_id', '18'),
(155, 42, '_menu_item_object', 'page'),
(156, 42, '_menu_item_target', ''),
(157, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 42, '_menu_item_xfn', ''),
(159, 42, '_menu_item_url', ''),
(160, 42, '_menu_item_orphaned', '1575558367'),
(231, 54, 'email', NULL),
(230, 54, 'coment', ' '),
(229, 54, 'cam1sf', '1576281600'),
(228, 54, 'cam1st', '1575676800'),
(227, 54, 'telefon', '0730812073'),
(226, 54, 'prenume', 'burlan'),
(224, 53, 'email', NULL),
(225, 54, 'nume', 'Rivanol'),
(170, 44, '_menu_item_type', 'post_type'),
(171, 44, '_menu_item_menu_item_parent', '0'),
(172, 44, '_menu_item_object_id', '11'),
(173, 44, '_menu_item_object', 'page'),
(174, 44, '_menu_item_target', ''),
(175, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(176, 44, '_menu_item_xfn', ''),
(177, 44, '_menu_item_url', ''),
(179, 45, '_menu_item_type', 'post_type'),
(180, 45, '_menu_item_menu_item_parent', '0'),
(181, 45, '_menu_item_object_id', '34'),
(182, 45, '_menu_item_object', 'page'),
(183, 45, '_menu_item_target', ''),
(184, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(185, 45, '_menu_item_xfn', ''),
(186, 45, '_menu_item_url', ''),
(188, 46, '_menu_item_type', 'post_type'),
(189, 46, '_menu_item_menu_item_parent', '0'),
(190, 46, '_menu_item_object_id', '13'),
(191, 46, '_menu_item_object', 'page'),
(192, 46, '_menu_item_target', ''),
(193, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(194, 46, '_menu_item_xfn', ''),
(195, 46, '_menu_item_url', ''),
(197, 47, '_menu_item_type', 'post_type'),
(198, 47, '_menu_item_menu_item_parent', '0'),
(199, 47, '_menu_item_object_id', '15'),
(200, 47, '_menu_item_object', 'page'),
(201, 47, '_menu_item_target', ''),
(202, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(203, 47, '_menu_item_xfn', ''),
(204, 47, '_menu_item_url', ''),
(223, 53, 'coment', ' Va rog sa....'),
(222, 53, 'cam1sf', '1573084800'),
(221, 53, 'cam1st', '1572912000'),
(220, 53, 'telefon', ''),
(219, 53, 'prenume', 'soseta'),
(218, 53, 'nume', 'Randau'),
(217, 18, 'coment', ' '),
(215, 50, '_edit_last', '1'),
(216, 50, '_edit_lock', '1575569352:1'),
(232, 55, 'nume', 'Mircea'),
(233, 55, 'prenume', 'Sandu'),
(234, 55, 'telefon', '099033'),
(235, 55, 'cam1st', '1575936000'),
(236, 55, 'cam1sf', '1576108800'),
(237, 55, 'cam2st', '1572566400'),
(238, 55, 'cam2sf', '1575244800'),
(239, 55, 'cam3st', '1573084800'),
(240, 55, 'cam3sf', '1575590400'),
(241, 55, 'coment', ' yuyuy'),
(242, 55, 'email', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-11-25 11:45:19', '2019-11-25 11:45:19', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-11-25 11:54:24', '2019-11-25 11:54:24', '', 0, 'http://vilasofia.myartsonline.com/?p=1', 0, 'post', '', 1),
(2, 1, '2019-11-25 11:45:19', '2019-11-25 11:45:19', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://vilasofia.myartsonline.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2019-11-25 12:04:58', '2019-11-25 12:04:58', '', 0, 'http://vilasofia.myartsonline.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-25 11:45:19', '2019-11-25 11:45:19', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://vilasofia.myartsonline.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-11-25 12:05:04', '2019-11-25 12:05:04', '', 0, 'http://vilasofia.myartsonline.com/?page_id=3', 0, 'page', '', 0),
(17, 1, '2019-12-04 14:36:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-04 14:36:00', '0000-00-00 00:00:00', '', 0, 'http://vilasofia.myartsonline.com/?p=17', 0, 'post', '', 0),
(5, 0, '2019-11-25 11:45:53', '2019-11-25 11:45:53', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nCasa Sofia "[your-subject]"\nCasa Sofia \nFrom: [your-name] \nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Casa Sofia (http://vilasofia.myartsonline.com)\nsacriversium@yahoo.com\nReply-To: [your-email]\n\n0\n0\n\nCasa Sofia "[your-subject]"\nCasa Sofia \nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Casa Sofia (http://vilasofia.myartsonline.com)\n[your-email]\nReply-To: sacriversium@yahoo.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-11-25 11:45:53', '2019-11-25 11:45:53', '', 0, 'http://vilasofia.myartsonline.com/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2019-11-25 11:54:24', '2019-11-25 11:54:24', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-25 11:54:24', '2019-11-25 11:54:24', '', 1, 'http://vilasofia.myartsonline.com/2019/11/25/1-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-11-25 12:04:58', '2019-11-25 12:04:58', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://vilasofia.myartsonline.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-11-25 12:04:58', '2019-11-25 12:04:58', '', 2, 'http://vilasofia.myartsonline.com/2019/11/25/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-11-25 12:05:04', '2019-11-25 12:05:04', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://vilasofia.myartsonline.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-11-25 12:05:04', '2019-11-25 12:05:04', '', 3, 'http://vilasofia.myartsonline.com/2019/11/25/3-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-11-25 12:06:23', '2019-11-25 12:06:23', 'In Dorna Candrenilor', 'Casa Sofia', '', 'publish', 'closed', 'closed', '', 'casa-sofia', '', '', '2019-12-05 16:24:48', '2019-12-05 16:24:48', '', 0, 'http://vilasofia.myartsonline.com/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-11-25 12:06:23', '2019-11-25 12:06:23', 'In Dorna Candrenilor', 'CASA SOFIA', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-11-25 12:06:23', '2019-11-25 12:06:23', '', 9, 'http://vilasofia.myartsonline.com/2019/11/25/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-11-25 12:08:17', '2019-11-25 12:08:17', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-11-25 12:08:31', '2019-11-25 12:08:31', '', 0, 'http://vilasofia.myartsonline.com/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-11-25 12:08:17', '2019-11-25 12:08:17', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-11-25 12:08:17', '2019-11-25 12:08:17', '', 11, 'http://vilasofia.myartsonline.com/2019/11/25/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-11-25 12:08:41', '2019-11-25 12:08:41', '[contact-form-7 id="5" title="Contact form 1"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-12-05 18:16:49', '2019-12-05 18:16:49', '', 0, 'http://vilasofia.myartsonline.com/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-11-25 12:08:41', '2019-11-25 12:08:41', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-11-25 12:08:41', '2019-11-25 12:08:41', '', 13, 'http://vilasofia.myartsonline.com/2019/11/25/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-11-25 12:08:53', '2019-11-25 12:08:53', '', 'Galerie', '', 'publish', 'closed', 'closed', '', 'galerie', '', '', '2019-11-25 12:08:53', '2019-11-25 12:08:53', '', 0, 'http://vilasofia.myartsonline.com/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-11-25 12:08:53', '2019-11-25 12:08:53', '', 'Galerie', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-11-25 12:08:53', '2019-11-25 12:08:53', '', 15, 'http://vilasofia.myartsonline.com/2019/11/25/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-12-04 14:36:42', '2019-12-04 14:36:42', '', 'Rezervari', '', 'publish', 'closed', 'closed', '', 'rezervari', '', '', '2019-12-04 14:36:42', '2019-12-04 14:36:42', '', 0, 'http://vilasofia.myartsonline.com/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-12-04 14:36:42', '2019-12-04 14:36:42', '', 'Rezervari', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-04 14:36:42', '2019-12-04 14:36:42', '', 18, 'http://vilasofia.myartsonline.com/2019/12/04/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-12-04 14:39:39', '2019-12-04 14:39:39', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2019-12-04 14:39:39', '2019-12-04 14:39:39', '', 0, 'http://vilasofia.myartsonline.com/?post_type=ml-slider&p=20', 0, 'ml-slider', '', 0),
(21, 1, '2019-12-04 14:39:47', '2019-12-04 14:39:47', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow-2', '', '', '2019-12-08 17:06:07', '2019-12-08 17:06:07', '', 0, 'http://vilasofia.myartsonline.com/?post_type=ml-slider&#038;p=21', 0, 'ml-slider', '', 0),
(22, 1, '2019-12-04 14:41:02', '2019-12-04 14:41:02', '', 'frontal2', '', 'inherit', 'open', 'closed', '', 'frontal2', '', '', '2019-12-04 14:41:02', '2019-12-04 14:41:02', '', 0, 'http://vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal2.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-12-04 14:41:22', '2019-12-04 14:41:22', '', 'Curte-bancuta', '', 'inherit', 'open', 'closed', '', 'curte-bancuta', '', '', '2019-12-04 14:41:22', '2019-12-04 14:41:22', '', 0, 'http://vilasofia.myartsonline.com/wp-content/uploads/2019/12/Curte-bancuta.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-12-04 14:41:37', '2019-12-04 14:41:37', '', 'frontal zapada', '', 'inherit', 'open', 'closed', '', 'frontal-zapada', '', '', '2019-12-04 14:41:37', '2019-12-04 14:41:37', '', 0, 'http://vilasofia.myartsonline.com/wp-content/uploads/2019/12/frontal-zapada.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-12-04 14:42:17', '2019-12-04 14:42:17', '', 'capite-iarna', '', 'inherit', 'open', 'closed', '', 'capite-iarna', '', '', '2019-12-04 14:42:17', '2019-12-04 14:42:17', '', 0, 'http://vilasofia.myartsonline.com/wp-content/uploads/2019/12/capite-iarna.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2019-12-04 14:42:27', '2019-12-04 14:42:27', '', 'ousoru 2', '', 'inherit', 'open', 'closed', '', 'ousoru-2', '', '', '2019-12-04 14:42:27', '2019-12-04 14:42:27', '', 0, 'http://vilasofia.myartsonline.com/wp-content/uploads/2019/12/ousoru-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-12-04 14:43:06', '2019-12-04 14:43:06', '', 'brad', '', 'inherit', 'open', 'closed', '', 'brad', '', '', '2019-12-04 14:43:06', '2019-12-04 14:43:06', '', 0, 'http://vilasofia.myartsonline.com/wp-content/uploads/2019/12/brad.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-12-04 14:43:13', '2019-12-04 14:43:13', '', 'Slider 21 - image', '', 'publish', 'closed', 'closed', '', 'slider-21-image', '', '', '2019-12-08 17:06:07', '2019-12-08 17:06:07', '', 0, 'http://vilasofia.myartsonline.com/?post_type=ml-slide&#038;p=28', 0, 'ml-slide', '', 0),
(29, 1, '2019-12-04 14:43:13', '2019-12-04 14:43:13', '', 'Slider 21 - image', '', 'publish', 'closed', 'closed', '', 'slider-21-image-2', '', '', '2019-12-08 17:06:07', '2019-12-08 17:06:07', '', 0, 'http://vilasofia.myartsonline.com/?post_type=ml-slide&#038;p=29', 1, 'ml-slide', '', 0),
(30, 1, '2019-12-04 14:43:13', '2019-12-04 14:43:13', '', 'Slider 21 - image', '', 'publish', 'closed', 'closed', '', 'slider-21-image-3', '', '', '2019-12-08 17:06:07', '2019-12-08 17:06:07', '', 0, 'http://vilasofia.myartsonline.com/?post_type=ml-slide&#038;p=30', 2, 'ml-slide', '', 0),
(31, 1, '2019-12-04 14:43:13', '2019-12-04 14:43:13', '', 'Slider 21 - image', '', 'publish', 'closed', 'closed', '', 'slider-21-image-4', '', '', '2019-12-08 17:06:07', '2019-12-08 17:06:07', '', 0, 'http://vilasofia.myartsonline.com/?post_type=ml-slide&#038;p=31', 3, 'ml-slide', '', 0),
(32, 1, '2019-12-04 14:43:14', '2019-12-04 14:43:14', '', 'Slider 21 - image', '', 'publish', 'closed', 'closed', '', 'slider-21-image-5', '', '', '2019-12-08 17:06:07', '2019-12-08 17:06:07', '', 0, 'http://vilasofia.myartsonline.com/?post_type=ml-slide&#038;p=32', 4, 'ml-slide', '', 0),
(33, 1, '2019-12-04 14:43:14', '2019-12-04 14:43:14', '', 'Slider 21 - image', '', 'publish', 'closed', 'closed', '', 'slider-21-image-6', '', '', '2019-12-08 17:06:07', '2019-12-08 17:06:07', '', 0, 'http://vilasofia.myartsonline.com/?post_type=ml-slide&#038;p=33', 5, 'ml-slide', '', 0),
(34, 1, '2019-12-04 14:47:41', '2019-12-04 14:47:41', '', 'Camere', '', 'publish', 'closed', 'closed', '', 'camere', '', '', '2019-12-04 14:47:41', '2019-12-04 14:47:41', '', 0, 'http://vilasofia.myartsonline.com/?page_id=34', 0, 'page', '', 0),
(35, 1, '2019-12-04 14:47:41', '2019-12-04 14:47:41', '', 'Camere', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-12-04 14:47:41', '2019-12-04 14:47:41', '', 34, 'http://vilasofia.myartsonline.com/2019/12/04/34-revision-v1/', 0, 'revision', '', 0),
(36, 0, '2019-12-05 09:48:29', '2019-12-05 09:48:29', '<br /> <strong> Telefon: 0468961007</strong>', 'Randau Giroc', '', 'publish', 'closed', 'closed', '', 'randau-giroc', '', '', '2019-12-05 09:48:29', '2019-12-05 09:48:29', '', 0, 'http://vilasofia.myartsonline.com/rezervare/randau-giroc/', 0, 'rezervare', '', 0),
(37, 1, '2019-12-05 15:06:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-05 15:06:07', '0000-00-00 00:00:00', '', 0, 'http://vilasofia.myartsonline.com/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2019-12-05 15:06:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-05 15:06:07', '0000-00-00 00:00:00', '', 0, 'http://vilasofia.myartsonline.com/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2019-12-05 15:06:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-05 15:06:07', '0000-00-00 00:00:00', '', 0, 'http://vilasofia.myartsonline.com/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2019-12-05 15:06:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-05 15:06:07', '0000-00-00 00:00:00', '', 0, 'http://vilasofia.myartsonline.com/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2019-12-05 15:06:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-05 15:06:07', '0000-00-00 00:00:00', '', 0, 'http://vilasofia.myartsonline.com/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2019-12-05 15:06:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-05 15:06:07', '0000-00-00 00:00:00', '', 0, 'http://vilasofia.myartsonline.com/?p=42', 1, 'nav_menu_item', '', 0),
(51, 1, '2019-12-05 18:10:27', '2019-12-05 18:10:27', '', 'Indicatii', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-12-05 18:10:27', '2019-12-05 18:10:27', '', 50, 'http://vilasofia.myartsonline.com/2019/12/05/50-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-12-05 15:08:09', '2019-12-05 15:08:09', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2019-12-05 16:26:55', '2019-12-05 16:26:55', '', 0, 'http://vilasofia.myartsonline.com/?p=44', 3, 'nav_menu_item', '', 0),
(45, 1, '2019-12-05 15:08:09', '2019-12-05 15:08:09', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2019-12-05 16:26:55', '2019-12-05 16:26:55', '', 0, 'http://vilasofia.myartsonline.com/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2019-12-05 15:08:09', '2019-12-05 15:08:09', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2019-12-05 16:26:55', '2019-12-05 16:26:55', '', 0, 'http://vilasofia.myartsonline.com/?p=46', 4, 'nav_menu_item', '', 0),
(47, 1, '2019-12-05 15:08:09', '2019-12-05 15:08:09', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2019-12-05 16:26:55', '2019-12-05 16:26:55', '', 0, 'http://vilasofia.myartsonline.com/?p=47', 2, 'nav_menu_item', '', 0),
(50, 1, '2019-12-05 18:10:27', '2019-12-05 18:10:27', '', 'Indicatii', '', 'publish', 'closed', 'closed', '', 'indicatii', '', '', '2019-12-05 18:10:27', '2019-12-05 18:10:27', '', 0, 'http://vilasofia.myartsonline.com/?page_id=50', 0, 'page', '', 0),
(49, 1, '2019-12-05 16:24:48', '2019-12-05 16:24:48', 'In Dorna Candrenilor', 'Casa Sofia', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-12-05 16:24:48', '2019-12-05 16:24:48', '', 9, 'http://vilasofia.myartsonline.com/2019/12/05/9-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-12-05 18:16:49', '2019-12-05 18:16:49', '[contact-form-7 id="5" title="Contact form 1"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-05 18:16:49', '2019-12-05 18:16:49', '', 13, 'http://vilasofia.myartsonline.com/2019/12/05/13-revision-v1/', 0, 'revision', '', 0),
(53, 0, '2019-12-06 09:33:20', '2019-12-06 09:33:20', '<p> Camera 1: 05 Nov 2019 - 07 Nov 2019</p>Comentariu: Va rog sa....<br /> <strong> Telefon: </strong>', 'Randau soseta', '', 'publish', 'closed', 'closed', '', 'randau-soseta', '', '', '2019-12-06 09:33:20', '2019-12-06 09:33:20', '', 0, 'http://vilasofia.myartsonline.com/rezervare/randau-soseta/', 0, 'rezervare', '', 0),
(54, 0, '2019-12-06 19:26:28', '2019-12-06 19:26:28', '<p> Camera 1: 07 Dec 2019 - 14 Dec 2019</p><br /> <strong> Telefon: 0730812073</strong>', 'Rivanol burlan', '', 'publish', 'closed', 'closed', '', 'rivanol-burlan', '', '', '2019-12-06 19:26:28', '2019-12-06 19:26:28', '', 0, 'http://vilasofia.myartsonline.com/rezervare/rivanol-burlan/', 0, 'rezervare', '', 0),
(55, 0, '2019-12-09 11:34:14', '2019-12-09 11:34:14', '<p> Camera 1: 10 Dec 2019 - 12 Dec 2019</p><p> Camera 2: 01 Nov 2019 - 02 Dec 2019</p><p> Camera 3: 07 Nov 2019 - 06 Dec 2019</p>Comentariu: yuyuy<br /> <strong> Telefon: 099033</strong>', 'Mircea Sandu', '', 'publish', 'closed', 'closed', '', 'mircea-sandu', '', '', '2019-12-09 11:34:14', '2019-12-09 11:34:14', '', 0, 'http://vilasofia.myartsonline.com/rezervare/mircea-sandu/', 0, 'rezervare', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, '20', '20', 0),
(3, '21', '21', 0),
(4, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(31, 3, 0),
(32, 3, 0),
(33, 3, 0),
(44, 4, 0),
(45, 4, 0),
(46, 4, 0),
(47, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'ml-slider', '', 0, 0),
(3, 3, 'ml-slider', '', 0, 6),
(4, 4, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Raul'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"38131404b7764a2cf0362becd831cad4dd323b10585b958d8034136f2f395a83";a:4:{s:10:"expiration";i:1575997310;s:2:"ip";s:12:"95.77.178.18";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36";s:5:"login";i:1575824510;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '17'),
(19, 1, 'wp_metaslider_user_saw_callout_toolbar', '1'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:11:"95.77.178.0";}'),
(21, 1, 'wp_user-settings-time', '1575470645'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:23:"add-post-type-rezervare";i:1;s:12:"add-post_tag";}'),
(24, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Raul', '$P$BAZpKRaXWKnXUbxhJOX71yl7VNcM9c0', 'raul', 'sacriversium@yahoo.com', '', '2019-11-25 11:45:19', '', 0, 'Raul');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
