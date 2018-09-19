-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 19, 2018 at 10:21 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-18 03:30:04', '2018-09-18 03:30:04', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/my-portfolio', 'yes'),
(2, 'home', 'http://localhost/my-portfolio', 'yes'),
(3, 'blogname', 'Lloyd Avila Mangin', 'yes'),
(4, 'blogdescription', 'The passion which specify my doing for life', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'imlloyd24@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:"advanced-custom-fields-pro/acf.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Portfolio', 'yes'),
(41, 'stylesheet', 'Portfolio', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
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
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'nonce_key', 'Xfc :-E|=1&C6!rAfD^3=l<Sr LJ}~XD{l&m3f[LL&/2(ikR,RMr`WAGDNM~uSdh', 'no'),
(109, 'nonce_salt', '^B7nrKfx[BN>0@G@KW?mXhk){NfhV{:t_X:(7]#cC3)_HX69v1Q7gl=Rt=[G&UC*', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'cron', 'a:5:{i:1537345805;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1537371005;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1537415524;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1537423987;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(114, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1537248695;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(118, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1537335911;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(123, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1537335919;s:7:"checked";a:4:{s:9:"Portfolio";s:3:"1.0";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(124, 'auth_key', 'u)t#!P6U#dWyE%SYf$1F6hQ>rZ1d#tv*vJN` FaYWr@Z-^kbF)FD7r06OnOWOh6,', 'no'),
(125, 'auth_salt', 'dN~;C!R}<v`SMtKlxg$NI)cM>;D!_ds7D]OCvjz,_9Dz#I:7?4?CnV]ph[*Soh C', 'no'),
(126, 'logged_in_key', 'Z7QWA1H>v&hYES_IK}-p7!uO9B+Om(eDe:&R+|}+inkzQ7D0Y9.)n)<1KnX^psf~', 'no'),
(127, 'logged_in_salt', '`U=lsV[/>}{wX,2lx35UP9R+X89QuMDY=i_k:4q`6>G*T1Mr!Tr^Aq*coa4zf`0R', 'no'),
(128, '_site_transient_timeout_browser_355797456e3e6e5be830df39aa1e4901', '1537847527', 'no'),
(129, '_site_transient_browser_355797456e3e6e5be830df39aa1e4901', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"69.0.3497.92";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(150, 'WPLANG', '', 'yes'),
(151, 'new_admin_email', 'imlloyd24@gmail.com', 'yes'),
(156, 'current_theme', 'MyPortfolio', 'yes'),
(157, 'theme_mods_Portfolio', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(162, '_transient_timeout_plugin_slugs', '1537339746', 'no'),
(163, '_transient_plugin_slugs', 'a:3:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";}', 'no'),
(164, 'recently_activated', 'a:0:{}', 'yes'),
(165, 'acf_version', '5.6.10', 'yes'),
(168, '_site_transient_timeout_theme_roots', '1537337717', 'no'),
(169, '_site_transient_theme_roots', 'a:4:{s:9:"Portfolio";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(170, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1537335921;s:7:"checked";a:3:{s:34:"advanced-custom-fields-pro/acf.php";s:6:"5.6.10";s:19:"akismet/akismet.php";s:5:"4.0.8";s:9:"hello.php";s:3:"1.7";}s:8:"response";a:1:{s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.7.6";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.9";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(173, 'options_basic_details_0_your_basic_info', 'WordPress Developer', 'no'),
(174, '_options_basic_details_0_your_basic_info', 'field_5ba1e9c157e7b', 'no'),
(175, 'options_basic_details_0_basic_details_icon', 'fa fa-briefcase', 'no'),
(176, '_options_basic_details_0_basic_details_icon', 'field_5ba1e98057e7a', 'no'),
(177, 'options_basic_details_1_your_basic_info', 'J. Panis St. Kasambagan, Banilad, Cebu City Philipines ', 'no'),
(178, '_options_basic_details_1_your_basic_info', 'field_5ba1e9c157e7b', 'no'),
(179, 'options_basic_details_1_basic_details_icon', 'fa fa-home', 'no'),
(180, '_options_basic_details_1_basic_details_icon', 'field_5ba1e98057e7a', 'no'),
(181, 'options_basic_details_2_your_basic_info', 'imlloyd30@gmail.com', 'no'),
(182, '_options_basic_details_2_your_basic_info', 'field_5ba1e9c157e7b', 'no'),
(183, 'options_basic_details_2_basic_details_icon', 'fa fa-envelope', 'no'),
(184, '_options_basic_details_2_basic_details_icon', 'field_5ba1e98057e7a', 'no'),
(185, 'options_basic_details_3_your_basic_info', '+639-05-645-8397 ', 'no'),
(186, '_options_basic_details_3_your_basic_info', 'field_5ba1e9c157e7b', 'no'),
(187, 'options_basic_details_3_basic_details_icon', 'fa fa-phone', 'no'),
(188, '_options_basic_details_3_basic_details_icon', 'field_5ba1e98057e7a', 'no'),
(189, 'options_basic_details', '4', 'no'),
(190, '_options_basic_details', 'field_5ba1e94957e79', 'no'),
(191, 'options_skill_listing', '12', 'no'),
(192, '_options_skill_listing', 'field_5ba1ed9889a47', 'no'),
(193, 'options_languages', '3', 'no'),
(194, '_options_languages', 'field_5ba1ee3587f7a', 'no'),
(195, 'options_work_experience', '1', 'no'),
(196, '_options_work_experience', 'field_5ba1f14b34a01', 'no'),
(197, 'options_educations_0_university_name', 'Cebu Institute of Technology (CIT - University)', 'no'),
(198, '_options_educations_0_university_name', 'field_5ba1f402dd758', 'no'),
(199, 'options_educations_0_edu_start', '20030304', 'no'),
(200, '_options_educations_0_edu_start', 'field_5ba1f5b9dd759', 'no'),
(201, 'options_educations_0_date_end', '20100327', 'no'),
(202, '_options_educations_0_date_end', 'field_5ba1f605dd75a', 'no'),
(203, 'options_educations_0_description', '', 'no'),
(204, '_options_educations_0_description', 'field_5ba1f648dd75b', 'no'),
(205, 'options_educations', '1', 'no'),
(206, '_options_educations', 'field_5ba1f3e9dd757', 'no'),
(208, 'options_skill_listing_0_your_skill', 'WordPress ', 'no'),
(209, '_options_skill_listing_0_your_skill', 'field_5ba1ed3d9a793', 'no'),
(210, 'options_skill_listing_0_skill_rating', '80', 'no'),
(211, '_options_skill_listing_0_skill_rating', 'field_5ba1ec699a792', 'no'),
(212, 'options_skill_listing_1_your_skill', 'PHP', 'no'),
(213, '_options_skill_listing_1_your_skill', 'field_5ba1ed3d9a793', 'no'),
(214, 'options_skill_listing_1_skill_rating', '70', 'no'),
(215, '_options_skill_listing_1_skill_rating', 'field_5ba1ec699a792', 'no'),
(216, 'options_skill_listing_2_your_skill', 'CSS , LESS/SASS , HTML', 'no'),
(217, '_options_skill_listing_2_your_skill', 'field_5ba1ed3d9a793', 'no'),
(218, 'options_skill_listing_2_skill_rating', '70', 'no'),
(219, '_options_skill_listing_2_skill_rating', 'field_5ba1ec699a792', 'no'),
(220, 'options_skill_listing_3_your_skill', 'REST API', 'no'),
(221, '_options_skill_listing_3_your_skill', 'field_5ba1ed3d9a793', 'no'),
(222, 'options_skill_listing_3_skill_rating', '60', 'no'),
(223, '_options_skill_listing_3_skill_rating', 'field_5ba1ec699a792', 'no'),
(224, 'options_skill_listing_4_your_skill', 'MYSQL, SQL', 'no'),
(225, '_options_skill_listing_4_your_skill', 'field_5ba1ed3d9a793', 'no'),
(226, 'options_skill_listing_4_skill_rating', '60', 'no'),
(227, '_options_skill_listing_4_skill_rating', 'field_5ba1ec699a792', 'no'),
(228, 'options_skill_listing_5_your_skill', 'Photoshop, Illustrator', 'no'),
(229, '_options_skill_listing_5_your_skill', 'field_5ba1ed3d9a793', 'no'),
(230, 'options_skill_listing_5_skill_rating', '50', 'no'),
(231, '_options_skill_listing_5_skill_rating', 'field_5ba1ec699a792', 'no'),
(232, 'options_skill_listing_6_your_skill', 'Woo-commerce', 'no'),
(233, '_options_skill_listing_6_your_skill', 'field_5ba1ed3d9a793', 'no'),
(234, 'options_skill_listing_6_skill_rating', '60', 'no'),
(235, '_options_skill_listing_6_skill_rating', 'field_5ba1ec699a792', 'no'),
(236, 'options_skill_listing_7_your_skill', 'Advance Custom Fields (ACF)', 'no'),
(237, '_options_skill_listing_7_your_skill', 'field_5ba1ed3d9a793', 'no'),
(238, 'options_skill_listing_7_skill_rating', '80', 'no'),
(239, '_options_skill_listing_7_skill_rating', 'field_5ba1ec699a792', 'no'),
(240, 'options_skill_listing_8_your_skill', 'Shortcodes, Taxonomy, Widgets, Sidebar ', 'no'),
(241, '_options_skill_listing_8_your_skill', 'field_5ba1ed3d9a793', 'no'),
(242, 'options_skill_listing_8_skill_rating', '80', 'no'),
(243, '_options_skill_listing_8_skill_rating', 'field_5ba1ec699a792', 'no'),
(244, 'options_skill_listing_9_your_skill', 'javascript , jQuery', 'no'),
(245, '_options_skill_listing_9_your_skill', 'field_5ba1ed3d9a793', 'no'),
(246, 'options_skill_listing_9_skill_rating', '50', 'no'),
(247, '_options_skill_listing_9_skill_rating', 'field_5ba1ec699a792', 'no'),
(248, 'options_skill_listing_10_your_skill', 'Laravel, Symfony, Cakephp, Codeigneiter', 'no'),
(249, '_options_skill_listing_10_your_skill', 'field_5ba1ed3d9a793', 'no'),
(250, 'options_skill_listing_10_skill_rating', '30', 'no'),
(251, '_options_skill_listing_10_skill_rating', 'field_5ba1ec699a792', 'no'),
(252, 'options_skill_listing_11_your_skill', 'Vuejs, Angular, React, Ember', 'no'),
(253, '_options_skill_listing_11_your_skill', 'field_5ba1ed3d9a793', 'no'),
(254, 'options_skill_listing_11_skill_rating', '20', 'no'),
(255, '_options_skill_listing_11_skill_rating', 'field_5ba1ec699a792', 'no'),
(256, 'options_languages_0_language_name', 'English', 'no'),
(257, '_options_languages_0_language_name', 'field_5ba1ee9a87f7b', 'no'),
(258, 'options_languages_0_language_rating', '70', 'no'),
(259, '_options_languages_0_language_rating', 'field_5ba1eebb87f7c', 'no'),
(260, 'options_languages_1_language_name', 'Bisaya , Kamayo', 'no'),
(261, '_options_languages_1_language_name', 'field_5ba1ee9a87f7b', 'no'),
(262, 'options_languages_1_language_rating', '100', 'no'),
(263, '_options_languages_1_language_rating', 'field_5ba1eebb87f7c', 'no'),
(264, 'options_languages_2_language_name', 'Tagalog', 'no'),
(265, '_options_languages_2_language_name', 'field_5ba1ee9a87f7b', 'no'),
(266, 'options_languages_2_language_rating', '90', 'no'),
(267, '_options_languages_2_language_rating', 'field_5ba1eebb87f7c', 'no'),
(268, 'options_work_experience_0_company_name', 'Pripress Center Cebu', 'no'),
(269, '_options_work_experience_0_company_name', 'field_5ba1f3842302b', 'no'),
(270, 'options_work_experience_0_job_position', 'WordPress Developer', 'no'),
(271, '_options_work_experience_0_job_position', 'field_5ba1f17434a02', 'no'),
(272, 'options_work_experience_0_start_date', '20170529', 'no'),
(273, '_options_work_experience_0_start_date', 'field_5ba1f18a34a03', 'no'),
(274, 'options_work_experience_0_end_date', '20180919', 'no'),
(275, '_options_work_experience_0_end_date', 'field_5ba1f23334a04', 'no'),
(276, 'options_work_experience_0_job_description', '', 'no'),
(277, '_options_work_experience_0_job_description', 'field_5ba1f29334a06', 'no'),
(278, 'options_social_networks_0_sc_name', 'Facebook', 'no'),
(279, '_options_social_networks_0_sc_name', 'field_5ba1f71f117e5', 'no'),
(280, 'options_social_networks_0_sc_icon', 'facebook', 'no'),
(281, '_options_social_networks_0_sc_icon', 'field_5ba1f72e117e6', 'no'),
(282, 'options_social_networks_0_link', '', 'no'),
(283, '_options_social_networks_0_link', 'field_5ba1f8ad117e7', 'no'),
(284, 'options_social_networks_1_sc_name', 'Instagram', 'no'),
(285, '_options_social_networks_1_sc_name', 'field_5ba1f71f117e5', 'no'),
(286, 'options_social_networks_1_sc_icon', 'instagram', 'no'),
(287, '_options_social_networks_1_sc_icon', 'field_5ba1f72e117e6', 'no'),
(288, 'options_social_networks_1_link', '', 'no'),
(289, '_options_social_networks_1_link', 'field_5ba1f8ad117e7', 'no'),
(290, 'options_social_networks_2_sc_name', 'LinkedIn', 'no'),
(291, '_options_social_networks_2_sc_name', 'field_5ba1f71f117e5', 'no'),
(292, 'options_social_networks_2_sc_icon', 'linkedin', 'no'),
(293, '_options_social_networks_2_sc_icon', 'field_5ba1f72e117e6', 'no'),
(294, 'options_social_networks_2_link', '', 'no'),
(295, '_options_social_networks_2_link', 'field_5ba1f8ad117e7', 'no'),
(296, 'options_social_networks_3_sc_name', 'Youtube', 'no'),
(297, '_options_social_networks_3_sc_name', 'field_5ba1f71f117e5', 'no'),
(298, 'options_social_networks_3_sc_icon', 'youtube', 'no'),
(299, '_options_social_networks_3_sc_icon', 'field_5ba1f72e117e6', 'no'),
(300, 'options_social_networks_3_link', '', 'no'),
(301, '_options_social_networks_3_link', 'field_5ba1f8ad117e7', 'no'),
(302, 'options_social_networks_4_sc_name', 'Google Plus', 'no'),
(303, '_options_social_networks_4_sc_name', 'field_5ba1f71f117e5', 'no'),
(304, 'options_social_networks_4_sc_icon', 'google+', 'no'),
(305, '_options_social_networks_4_sc_icon', 'field_5ba1f72e117e6', 'no'),
(306, 'options_social_networks_4_link', '', 'no'),
(307, '_options_social_networks_4_link', 'field_5ba1f8ad117e7', 'no'),
(308, 'options_social_networks_5_sc_name', 'Twitter', 'no'),
(309, '_options_social_networks_5_sc_name', 'field_5ba1f71f117e5', 'no'),
(310, 'options_social_networks_5_sc_icon', 'twitter', 'no'),
(311, '_options_social_networks_5_sc_icon', 'field_5ba1f72e117e6', 'no'),
(312, 'options_social_networks_5_link', '', 'no'),
(313, '_options_social_networks_5_link', 'field_5ba1f8ad117e7', 'no'),
(314, 'options_social_networks', '6', 'no'),
(315, '_options_social_networks', 'field_5ba1f6fa117e4', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1537342658:1'),
(5, 31, '_edit_last', '1'),
(6, 31, '_edit_lock', '1537341563:1'),
(7, 36, '_edit_last', '1'),
(8, 36, '_edit_lock', '1537343185:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-18 03:30:04', '2018-09-18 03:30:04', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-09-18 03:30:04', '2018-09-18 03:30:04', '', 0, 'http://localhost/my-portfolio/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-18 03:30:04', '2018-09-18 03:30:04', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/my-portfolio/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-09-18 03:30:04', '2018-09-18 03:30:04', '', 0, 'http://localhost/my-portfolio/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-18 03:30:04', '2018-09-18 03:30:04', '<h2>Who we are</h2><p>Our website address is: http://localhost/my-portfolio.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-18 03:30:04', '2018-09-18 03:30:04', '', 0, 'http://localhost/my-portfolio/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-09-18 03:52:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-18 03:52:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/my-portfolio/?p=4', 0, 'post', '', 0),
(5, 1, '2018-09-19 06:20:21', '2018-09-19 06:20:21', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:22:"theme-general-settings";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Information', 'information', 'publish', 'closed', 'closed', '', 'group_5ba1e8f45940a', '', '', '2018-09-19 07:37:38', '2018-09-19 07:37:38', '', 0, 'http://localhost/my-portfolio/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2018-09-19 06:20:21', '2018-09-19 06:20:21', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Basic Details', '', 'publish', 'closed', 'closed', '', 'field_5ba1e90557e78', '', '', '2018-09-19 06:45:48', '2018-09-19 06:45:48', '', 5, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=6', 0, 'acf-field', '', 0),
(7, 1, '2018-09-19 06:20:21', '2018-09-19 06:20:21', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:21:"Add Basic Information";}', '', 'basic_details', 'publish', 'closed', 'closed', '', 'field_5ba1e94957e79', '', '', '2018-09-19 06:45:48', '2018-09-19 06:45:48', '', 5, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=7', 1, 'acf-field', '', 0),
(8, 1, '2018-09-19 06:20:21', '2018-09-19 06:20:21', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:4:{s:15:"fa fa-briefcase";s:9:"Briefcase";s:10:"fa fa-home";s:4:"Home";s:14:"fa fa-envelope";s:8:"Envelope";s:11:"fa fa-phone";s:5:"Phone";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'Icon', 'basic_details_icon', 'publish', 'closed', 'closed', '', 'field_5ba1e98057e7a', '', '', '2018-09-19 06:47:21', '2018-09-19 06:47:21', '', 7, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=8', 1, 'acf-field', '', 0),
(9, 1, '2018-09-19 06:20:21', '2018-09-19 06:20:21', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:45:"Enter here your job, address, email and etc..";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Name', 'your_basic_info', 'publish', 'closed', 'closed', '', 'field_5ba1e9c157e7b', '', '', '2018-09-19 06:47:21', '2018-09-19 06:47:21', '', 7, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=9', 0, 'acf-field', '', 0),
(10, 1, '2018-09-19 06:32:43', '2018-09-19 06:32:43', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Skills', 'skills', 'publish', 'closed', 'closed', '', 'field_5ba1ec559a791', '', '', '2018-09-19 06:32:43', '2018-09-19 06:32:43', '', 5, 'http://localhost/my-portfolio/?post_type=acf-field&p=10', 2, 'acf-field', '', 0),
(11, 1, '2018-09-19 06:32:43', '2018-09-19 06:32:43', 'a:11:{s:4:"type";s:5:"range";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:3:"min";i:10;s:3:"max";s:0:"";s:4:"step";i:10;s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Rating', 'skill_rating', 'publish', 'closed', 'closed', '', 'field_5ba1ec699a792', '', '', '2018-09-19 06:44:16', '2018-09-19 06:44:16', '', 13, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=11', 1, 'acf-field', '', 0),
(12, 1, '2018-09-19 06:32:43', '2018-09-19 06:32:43', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:28:"Ex. PHP, HTML, WordPress ...";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Your skill', 'your_skill', 'publish', 'closed', 'closed', '', 'field_5ba1ed3d9a793', '', '', '2018-09-19 06:34:05', '2018-09-19 06:34:05', '', 13, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=12', 0, 'acf-field', '', 0),
(13, 1, '2018-09-19 06:34:05', '2018-09-19 06:34:05', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:10:"Add skills";}', '', 'skill_listing', 'publish', 'closed', 'closed', '', 'field_5ba1ed9889a47', '', '', '2018-09-19 06:41:21', '2018-09-19 06:41:21', '', 5, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=13', 3, 'acf-field', '', 0),
(14, 1, '2018-09-19 06:38:57', '2018-09-19 06:38:57', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Languages', '', 'publish', 'closed', 'closed', '', 'field_5ba1ee2687f79', '', '', '2018-09-19 06:38:57', '2018-09-19 06:38:57', '', 5, 'http://localhost/my-portfolio/?post_type=acf-field&p=14', 4, 'acf-field', '', 0),
(15, 1, '2018-09-19 06:38:57', '2018-09-19 06:38:57', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:12:"Add language";}', '', 'languages', 'publish', 'closed', 'closed', '', 'field_5ba1ee3587f7a', '', '', '2018-09-19 06:38:57', '2018-09-19 06:38:57', '', 5, 'http://localhost/my-portfolio/?post_type=acf-field&p=15', 5, 'acf-field', '', 0),
(16, 1, '2018-09-19 06:38:57', '2018-09-19 06:38:57', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Language Name', 'language_name', 'publish', 'closed', 'closed', '', 'field_5ba1ee9a87f7b', '', '', '2018-09-19 06:38:57', '2018-09-19 06:38:57', '', 15, 'http://localhost/my-portfolio/?post_type=acf-field&p=16', 0, 'acf-field', '', 0),
(17, 1, '2018-09-19 06:38:57', '2018-09-19 06:38:57', 'a:11:{s:4:"type";s:5:"range";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:3:"min";i:10;s:3:"max";s:0:"";s:4:"step";i:10;s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Rating', 'language_rating', 'publish', 'closed', 'closed', '', 'field_5ba1eebb87f7c', '', '', '2018-09-19 06:44:56', '2018-09-19 06:44:56', '', 15, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=17', 1, 'acf-field', '', 0),
(18, 1, '2018-09-19 06:55:12', '2018-09-19 06:55:12', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Work Experience', '', 'publish', 'closed', 'closed', '', 'field_5ba1f13634a00', '', '', '2018-09-19 07:37:38', '2018-09-19 07:37:38', '', 5, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=18', 6, 'acf-field', '', 0),
(19, 1, '2018-09-19 06:55:12', '2018-09-19 06:55:12', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:19:"field_5ba1f29334a06";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:14:"Add Experience";}', '', 'work_experience', 'publish', 'closed', 'closed', '', 'field_5ba1f14b34a01', '', '', '2018-09-19 07:37:38', '2018-09-19 07:37:38', '', 5, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=19', 7, 'acf-field', '', 0),
(20, 1, '2018-09-19 06:55:12', '2018-09-19 06:55:12', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Job Position', 'job_position', 'publish', 'closed', 'closed', '', 'field_5ba1f17434a02', '', '', '2018-09-19 06:58:52', '2018-09-19 06:58:52', '', 19, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=20', 1, 'acf-field', '', 0),
(21, 1, '2018-09-19 06:55:12', '2018-09-19 06:55:12', 'a:8:{s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:6:"F j, Y";s:13:"return_format";s:5:"m/d/Y";s:9:"first_day";i:1;}', 'Start date', 'start_date', 'publish', 'closed', 'closed', '', 'field_5ba1f18a34a03', '', '', '2018-09-19 06:58:52', '2018-09-19 06:58:52', '', 19, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=21', 2, 'acf-field', '', 0),
(22, 1, '2018-09-19 06:55:12', '2018-09-19 06:55:12', 'a:8:{s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:6:"F j, Y";s:13:"return_format";s:5:"m/d/Y";s:9:"first_day";i:1;}', 'End date', 'end_date', 'publish', 'closed', 'closed', '', 'field_5ba1f23334a04', '', '', '2018-09-19 06:58:52', '2018-09-19 06:58:52', '', 19, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=22', 3, 'acf-field', '', 0),
(23, 1, '2018-09-19 06:55:12', '2018-09-19 06:55:12', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Job description', 'job_description', 'publish', 'closed', 'closed', '', 'field_5ba1f29334a06', '', '', '2018-09-19 06:58:52', '2018-09-19 06:58:52', '', 19, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=23', 4, 'acf-field', '', 0),
(24, 1, '2018-09-19 06:58:52', '2018-09-19 06:58:52', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Company Name', 'company_name', 'publish', 'closed', 'closed', '', 'field_5ba1f3842302b', '', '', '2018-09-19 06:58:52', '2018-09-19 06:58:52', '', 19, 'http://localhost/my-portfolio/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2018-09-19 07:11:14', '2018-09-19 07:11:14', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Education', '', 'publish', 'closed', 'closed', '', 'field_5ba1f3cadd756', '', '', '2018-09-19 07:11:14', '2018-09-19 07:11:14', '', 5, 'http://localhost/my-portfolio/?post_type=acf-field&p=25', 8, 'acf-field', '', 0),
(26, 1, '2018-09-19 07:11:14', '2018-09-19 07:11:14', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:13:"Add Education";}', '', 'educations', 'publish', 'closed', 'closed', '', 'field_5ba1f3e9dd757', '', '', '2018-09-19 07:22:00', '2018-09-19 07:22:00', '', 5, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=26', 9, 'acf-field', '', 0),
(27, 1, '2018-09-19 07:11:14', '2018-09-19 07:11:14', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'University Name', 'university_name', 'publish', 'closed', 'closed', '', 'field_5ba1f402dd758', '', '', '2018-09-19 07:11:14', '2018-09-19 07:11:14', '', 26, 'http://localhost/my-portfolio/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2018-09-19 07:11:14', '2018-09-19 07:11:14', 'a:8:{s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:5:"m/d/Y";s:13:"return_format";s:5:"m/d/Y";s:9:"first_day";i:1;}', 'Date Start', 'edu_start', 'publish', 'closed', 'closed', '', 'field_5ba1f5b9dd759', '', '', '2018-09-19 07:11:14', '2018-09-19 07:11:14', '', 26, 'http://localhost/my-portfolio/?post_type=acf-field&p=28', 1, 'acf-field', '', 0),
(29, 1, '2018-09-19 07:11:14', '2018-09-19 07:11:14', 'a:8:{s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:5:"m/d/Y";s:13:"return_format";s:5:"m/d/Y";s:9:"first_day";i:1;}', 'Date End', 'date_end', 'publish', 'closed', 'closed', '', 'field_5ba1f605dd75a', '', '', '2018-09-19 07:11:14', '2018-09-19 07:11:14', '', 26, 'http://localhost/my-portfolio/?post_type=acf-field&p=29', 2, 'acf-field', '', 0),
(30, 1, '2018-09-19 07:11:14', '2018-09-19 07:11:14', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5ba1f648dd75b', '', '', '2018-09-19 07:11:14', '2018-09-19 07:11:14', '', 26, 'http://localhost/my-portfolio/?post_type=acf-field&p=30', 3, 'acf-field', '', 0),
(31, 1, '2018-09-19 07:20:39', '2018-09-19 07:20:39', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:18:"acf-options-footer";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Social Links', 'social-links', 'publish', 'closed', 'closed', '', 'group_5ba1f6e8bb38a', '', '', '2018-09-19 07:21:31', '2018-09-19 07:21:31', '', 0, 'http://localhost/my-portfolio/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2018-09-19 07:20:39', '2018-09-19 07:20:39', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:16:"Add Social Media";}', '', 'social_networks', 'publish', 'closed', 'closed', '', 'field_5ba1f6fa117e4', '', '', '2018-09-19 07:21:31', '2018-09-19 07:21:31', '', 31, 'http://localhost/my-portfolio/?post_type=acf-field&#038;p=32', 0, 'acf-field', '', 0),
(33, 1, '2018-09-19 07:20:39', '2018-09-19 07:20:39', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Name', 'sc_name', 'publish', 'closed', 'closed', '', 'field_5ba1f71f117e5', '', '', '2018-09-19 07:20:39', '2018-09-19 07:20:39', '', 32, 'http://localhost/my-portfolio/?post_type=acf-field&p=33', 0, 'acf-field', '', 0),
(34, 1, '2018-09-19 07:20:39', '2018-09-19 07:20:39', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:9:{s:8:"facebook";s:8:"Facebook";s:9:"instagram";s:9:"Instagram";s:7:"twitter";s:7:"Twitter";s:8:"linkedin";s:8:"LinkedIn";s:9:"pinterest";s:9:"Pinterest";s:7:"google+";s:7:"Google+";s:8:"whatsApp";s:8:"WhatsApp";s:6:"tumblr";s:6:"Tumblr";s:7:"youtube";s:7:"Youtube";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'Icon', 'sc_icon', 'publish', 'closed', 'closed', '', 'field_5ba1f72e117e6', '', '', '2018-09-19 07:20:39', '2018-09-19 07:20:39', '', 32, 'http://localhost/my-portfolio/?post_type=acf-field&p=34', 1, 'acf-field', '', 0),
(35, 1, '2018-09-19 07:20:39', '2018-09-19 07:20:39', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Link URL', 'link', 'publish', 'closed', 'closed', '', 'field_5ba1f8ad117e7', '', '', '2018-09-19 07:20:39', '2018-09-19 07:20:39', '', 32, 'http://localhost/my-portfolio/?post_type=acf-field&p=35', 2, 'acf-field', '', 0),
(36, 1, '2018-09-19 07:48:35', '2018-09-19 07:48:35', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:18:"acf-options-header";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'group_5ba1fdc04f117', '', '', '2018-09-19 07:48:46', '2018-09-19 07:48:46', '', 0, 'http://localhost/my-portfolio/?post_type=acf-field-group&#038;p=36', 0, 'acf-field-group', '', 0),
(37, 1, '2018-09-19 07:48:35', '2018-09-19 07:48:35', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'portfolio_logo', 'publish', 'closed', 'closed', '', 'field_5ba1fdcc5be27', '', '', '2018-09-19 07:48:35', '2018-09-19 07:48:35', '', 36, 'http://localhost/my-portfolio/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2018-09-19 07:48:35', '2018-09-19 07:48:35', 'a:6:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";}', 'Background', 'logo_background', 'publish', 'closed', 'closed', '', 'field_5ba1ff175be28', '', '', '2018-09-19 07:48:35', '2018-09-19 07:48:35', '', 36, 'http://localhost/my-portfolio/?post_type=acf-field&p=38', 1, 'acf-field', '', 0),
(39, 1, '2018-09-19 07:48:35', '2018-09-19 07:48:35', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Caption', 'caption', 'publish', 'closed', 'closed', '', 'field_5ba1ff485be29', '', '', '2018-09-19 07:48:35', '2018-09-19 07:48:35', '', 36, 'http://localhost/my-portfolio/?post_type=acf-field&p=39', 2, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"edc2395720d02bc8c2198fb1eca51e006a8160530491345c3849dd8856354c2d";a:4:{s:10:"expiration";i:1537415523;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36";s:5:"login";i:1537242723;}s:64:"fd3be5dae5393bf8c31ceacaa52fa47efba8f8894d0fb6f01b4c81084841b30a";a:4:{s:10:"expiration";i:1537510186;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1537337386;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'acf_user_settings', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BUZMHI4fYhg0sPz9M2yi9.L00huTu81', 'admin', 'imlloyd24@gmail.com', '', '2018-09-18 03:30:04', '', 0, 'admin');

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
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=316;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
