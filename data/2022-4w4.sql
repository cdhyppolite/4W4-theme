-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 11 avr. 2022 à 18:21
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `2022-4w4`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-03-07 21:07:25', '2022-03-07 20:07:25', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
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
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:81/4w4', 'yes'),
(2, 'home', 'http://localhost:81/4w4', 'yes'),
(3, 'blogname', '4W4', 'yes'),
(4, 'blogdescription', 'Conception d&#039;interface et développement Web', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'e1975958@cmaisonneuve.qc.ca', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '30', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '30', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'HyppoliteC', 'yes'),
(41, 'stylesheet', 'HyppoliteC', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Toronto', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '309', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1662235641', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'fr_FR', 'yes'),
(103, 'widget_block', 'a:14:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:11;a:1:{s:7:\"content\";s:547:\"<!-- wp:social-links {\"align\":\"center\"} -->\n<ul class=\"wp-block-social-links aligncenter\"><!-- wp:social-link {\"url\":\"https://developer.wordpress.org/\",\"service\":\"wordpress\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://www.facebook.com/\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://github.com/cdhyppolite/4W4-theme/\",\"service\":\"github\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://www.twitch.tv/\",\"service\":\"twitch\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://www.google.com/\",\"service\":\"google\"} /--></ul>\n<!-- /wp:social-links -->\";}i:12;a:1:{s:7:\"content\";s:57:\"<!-- wp:heading -->\n<h2>Adresse</h2>\n<!-- /wp:heading -->\";}i:13;a:1:{s:7:\"content\";s:75:\"<!-- wp:paragraph -->\n<p>3800 rue Sherbrooke Est</p>\n<!-- /wp:paragraph -->\";}i:14;a:1:{s:7:\"content\";s:65:\"<!-- wp:paragraph -->\n<p>Montréal, Qc</p>\n<!-- /wp:paragraph -->\";}i:15;a:1:{s:7:\"content\";s:59:\"<!-- wp:paragraph -->\n<p>H1X 2A2</p>\n<!-- /wp:paragraph -->\";}i:16;a:1:{s:7:\"content\";s:66:\"<!-- wp:paragraph -->\n<p>(514) 254-7131</p>\n<!-- /wp:paragraph -->\";}i:17;a:1:{s:7:\"content\";s:25:\"<!-- wp:latest-posts /-->\";}i:18;a:1:{s:7:\"content\";s:151:\"<!-- wp:heading {\"textAlign\":\"right\"} -->\n<h2 class=\"has-text-align-right\"><strong>Voici les cours les plus récents</strong></h2>\n<!-- /wp:heading -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:10:\"nav_menu-2\";}s:8:\"entete_1\";a:1:{i:0;s:8:\"block-11\";}s:19:\"pied_page_colonne_1\";a:5:{i:0;s:8:\"block-12\";i:1;s:8:\"block-13\";i:2;s:8:\"block-14\";i:3;s:8:\"block-15\";i:4;s:8:\"block-16\";}s:19:\"pied_page_colonne_2\";a:1:{i:0;s:10:\"nav_menu-3\";}s:19:\"pied_page_colonne_3\";a:2:{i:0;s:8:\"block-18\";i:1;s:8:\"block-17\";}s:17:\"pied_page_ligne_1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1649696846;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1649707646;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1649707659;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1649707661;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1649794046;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:3:{i:2;a:2:{s:5:\"title\";s:12:\"Liens utiles\";s:8:\"nav_menu\";i:3;}i:3;a:2:{s:5:\"title\";s:12:\"Liens utiles\";s:8:\"nav_menu\";i:3;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1646683674;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(147, 'current_theme', 'EX3 - Carl-David Hyppolite', 'yes'),
(148, 'theme_mods_HyppoliteC', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;s:20:\"menu_categorie_cours\";i:13;s:12:\"menu_accueil\";i:14;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1649273451;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:10:\"nav_menu-2\";}s:8:\"entete_1\";a:1:{i:0;s:8:\"block-11\";}s:19:\"pied_page_colonne_1\";a:5:{i:0;s:8:\"block-12\";i:1;s:8:\"block-13\";i:2;s:8:\"block-14\";i:3;s:8:\"block-15\";i:4;s:8:\"block-16\";}s:19:\"pied_page_colonne_2\";a:1:{i:0;s:10:\"nav_menu-3\";}s:19:\"pied_page_colonne_3\";a:2:{i:0;s:8:\"block-18\";i:1;s:8:\"block-17\";}s:17:\"pied_page_ligne_1\";a:0:{}}}s:11:\"custom_logo\";i:308;}', 'yes'),
(149, 'theme_switched', '', 'yes'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(152, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(175, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(196, 'theme_mods_4W4-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1646781376;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(219, 'theme_mods_zEddyGr1', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:14:\"menu_principal\";i:2;s:17:\"menu_lien_externe\";i:3;s:11:\"menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647483905;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"block-11\";i:6;s:8:\"block-13\";}s:19:\"pied_page_colonne_1\";a:0:{}s:19:\"pied_page_colonne_2\";a:2:{i:0;s:8:\"block-10\";i:1;s:10:\"nav_menu-2\";}s:19:\"pied_page_colonne_3\";a:0:{}s:17:\"pied_page_ligne_1\";a:0:{}}}}', 'yes'),
(222, 'theme_mods_4W4-theme-tp1', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1646858142;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(226, 'recovery_mode_email_last_sent', '1646858386', 'yes'),
(233, 'theme_mods_z4w4-main', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1646863140;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-8\";i:6;s:7:\"block-9\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}}}}', 'yes'),
(235, 'theme_mods_x4w4-main', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1646863417;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-8\";i:6;s:7:\"block-9\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}}}}', 'yes'),
(266, 'theme_mods_4w4-gr3', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647270672;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-8\";i:6;s:7:\"block-9\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}s:16:\"footer_colonne_1\";a:0:{}s:16:\"footer_colonne_2\";a:0:{}s:16:\"footer_colonne_3\";a:0:{}s:14:\"footer_ligne_1\";a:0:{}s:14:\"footer_ligne_2\";a:0:{}}}}', 'yes'),
(269, 'theme_mods_zEx2-florence', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647450172;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-8\";i:6;s:7:\"block-9\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}}}}', 'yes'),
(271, 'theme_mods_zEddyGr2', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647272164;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-8\";i:6;s:7:\"block-9\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}}}}', 'yes'),
(274, 'theme_mods_remiTP1', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647481380;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"block-11\";i:6;s:8:\"block-13\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}s:16:\"footer_colonne_1\";a:0:{}s:16:\"footer_colonne_2\";a:0:{}s:16:\"footer_colonne_3\";a:0:{}s:14:\"footer_ligne_1\";a:0:{}}}}', 'yes'),
(277, 'theme_mods_zEddyGr3', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647272174;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-8\";i:6;s:7:\"block-9\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}s:16:\"footer_colonne_1\";a:0:{}s:16:\"footer_colonne_2\";a:0:{}s:16:\"footer_colonne_3\";a:0:{}s:14:\"footer_ligne_1\";a:0:{}s:14:\"footer_ligne_2\";a:0:{}}}}', 'yes'),
(288, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'site_logo', '308', 'yes'),
(446, 'db_upgraded', '', 'yes'),
(448, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:27:\"e1975958@cmaisonneuve.qc.ca\";s:7:\"version\";s:5:\"5.9.2\";s:9:\"timestamp\";i:1647519827;}', 'no'),
(479, 'can_compress_scripts', '1', 'no'),
(484, 'new_admin_email', 'e1975958@cmaisonneuve.qc.ca', 'yes'),
(535, 'theme_mods_HyppoliteC-Ex1', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647532041;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"block-11\";i:6;s:8:\"block-13\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}}}}', 'yes'),
(539, 'theme_mods_HyppoliteC-TEMP', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647532261;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"block-11\";i:6;s:8:\"block-13\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}}}}', 'yes'),
(768, 'theme_mods_zFlo', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647607507;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"block-11\";i:6;s:8:\"block-13\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}s:16:\"footer_colonne_1\";a:0:{}s:16:\"footer_colonne_2\";a:0:{}s:16:\"footer_colonne_3\";a:0:{}s:14:\"footer_ligne_1\";a:0:{}s:14:\"footer_ligne_2\";a:0:{}}}}', 'yes'),
(774, 'theme_mods_zGuillaume', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647613909;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"block-11\";i:6;s:8:\"block-13\";i:7;s:8:\"block-10\";i:8;s:10:\"nav_menu-2\";}s:16:\"footer_colonne_1\";a:0:{}s:16:\"footer_colonne_2\";a:0:{}s:16:\"footer_colonne_3\";a:0:{}s:14:\"footer_ligne_1\";a:0:{}}}}', 'yes'),
(932, 'theme_mods_zCholé', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647632284;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:8:\"block-11\";i:6;s:8:\"block-10\";}s:16:\"footer_colonne_1\";a:0:{}s:16:\"footer_colonne_2\";a:0:{}s:16:\"footer_colonne_3\";a:0:{}s:14:\"footer_ligne_1\";a:0:{}s:14:\"footer_ligne_2\";a:0:{}s:14:\"footer_ligne_3\";a:0:{}}}}', 'yes'),
(1244, 'category_children', 'a:0:{}', 'yes'),
(1480, '_site_transient_timeout_browser_8e5a577e33f5bc3f7099260165cd35c7', '1649694874', 'no'),
(1481, '_site_transient_browser_8e5a577e33f5bc3f7099260165cd35c7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"99.0.4844.84\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1482, '_site_transient_timeout_php_check_d564ef3bc004ad591bb7443752129422', '1649694874', 'no'),
(1483, '_site_transient_php_check_d564ef3bc004ad591bb7443752129422', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1527, 'theme_mods_4w4-gr1-exer3', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:14:\"menu_principal\";i:2;s:11:\"menu_footer\";i:4;s:12:\"menu_accueil\";i:14;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1649273532;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:10:\"nav_menu-2\";i:6;s:8:\"block-11\";}s:19:\"pied_page_colonne_1\";a:5:{i:0;s:8:\"block-12\";i:1;s:8:\"block-13\";i:2;s:8:\"block-14\";i:3;s:8:\"block-15\";i:4;s:8:\"block-16\";}s:19:\"pied_page_colonne_2\";a:1:{i:0;s:10:\"nav_menu-3\";}s:19:\"pied_page_colonne_3\";a:2:{i:0;s:8:\"block-18\";i:1;s:8:\"block-17\";}s:17:\"pied_page_ligne_1\";a:0:{}}}}', 'yes'),
(1658, 'recently_activated', 'a:0:{}', 'yes'),
(1664, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.9.3-partial-2.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:5:\"5.9.2\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1649689681;s:15:\"version_checked\";s:5:\"5.9.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1666, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1649689640;s:7:\"checked\";a:2:{s:13:\"4w4-gr1-exer3\";s:5:\"1.0.0\";s:10:\"HyppoliteC\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1667, 'acf_version', '5.12.2', 'yes'),
(1750, 'auto_updater.lock', '1649689640', 'no'),
(1751, '_site_transient_timeout_theme_roots', '1649691440', 'no'),
(1752, '_site_transient_theme_roots', 'a:3:{s:13:\"4w4-gr1-exer3\";s:7:\"/themes\";s:10:\"HyppoliteC\";s:7:\"/themes\";s:3:\"img\";s:7:\"/themes\";}', 'no'),
(1754, 'core_updater.lock', '1649689640', 'no'),
(1755, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1649689700;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";b:0;}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.57\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.57.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2693719\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2693719\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:6:\"5.2.17\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}', 'no'),
(1767, '_transient_timeout_global_styles_HyppoliteC', '1649694092', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1768, '_transient_global_styles_HyppoliteC', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(129, 165, '_menu_item_type', 'custom'),
(130, 165, '_menu_item_menu_item_parent', '0'),
(131, 165, '_menu_item_object_id', '165'),
(132, 165, '_menu_item_object', 'custom'),
(133, 165, '_menu_item_target', ''),
(134, 165, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 165, '_menu_item_xfn', ''),
(136, 165, '_menu_item_url', 'http://cmaisonneuve.qc.ca'),
(138, 166, '_menu_item_type', 'custom'),
(139, 166, '_menu_item_menu_item_parent', '0'),
(140, 166, '_menu_item_object_id', '166'),
(141, 166, '_menu_item_object', 'custom'),
(142, 166, '_menu_item_target', ''),
(143, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 166, '_menu_item_xfn', ''),
(145, 166, '_menu_item_url', 'https://gamebanana.com/'),
(147, 167, '_menu_item_type', 'custom'),
(148, 167, '_menu_item_menu_item_parent', '0'),
(149, 167, '_menu_item_object_id', '167'),
(150, 167, '_menu_item_object', 'custom'),
(151, 167, '_menu_item_target', ''),
(152, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(153, 167, '_menu_item_xfn', ''),
(154, 167, '_menu_item_url', 'https://supermario.nintendo.com/'),
(156, 168, '_menu_item_type', 'custom'),
(157, 168, '_menu_item_menu_item_parent', '0'),
(158, 168, '_menu_item_object_id', '168'),
(159, 168, '_menu_item_object', 'custom'),
(160, 168, '_menu_item_target', ''),
(161, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(162, 168, '_menu_item_xfn', ''),
(163, 168, '_menu_item_url', 'https://saaq.gouv.qc.ca/'),
(165, 169, '_menu_item_type', 'post_type'),
(166, 169, '_menu_item_menu_item_parent', '0'),
(167, 169, '_menu_item_object_id', '1'),
(168, 169, '_menu_item_object', 'post'),
(169, 169, '_menu_item_target', ''),
(170, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(171, 169, '_menu_item_xfn', ''),
(172, 169, '_menu_item_url', ''),
(174, 170, '_menu_item_type', 'custom'),
(175, 170, '_menu_item_menu_item_parent', '0'),
(176, 170, '_menu_item_object_id', '170'),
(177, 170, '_menu_item_object', 'custom'),
(178, 170, '_menu_item_target', ''),
(179, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(180, 170, '_menu_item_xfn', ''),
(181, 170, '_menu_item_url', 'https://eddym27.sg-host.com/'),
(183, 171, '_menu_item_type', 'custom'),
(184, 171, '_menu_item_menu_item_parent', '0'),
(185, 171, '_menu_item_object_id', '171'),
(186, 171, '_menu_item_object', 'custom'),
(187, 171, '_menu_item_target', ''),
(188, 171, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 171, '_menu_item_xfn', ''),
(190, 171, '_menu_item_url', 'https://github.com/cdhyppolite/4W4-theme'),
(192, 172, '_menu_item_type', 'custom'),
(193, 172, '_menu_item_menu_item_parent', '0'),
(194, 172, '_menu_item_object_id', '172'),
(195, 172, '_menu_item_object', 'custom'),
(196, 172, '_menu_item_target', ''),
(197, 172, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(198, 172, '_menu_item_xfn', ''),
(199, 172, '_menu_item_url', 'https://www.cmaisonneuve.qc.ca/programme/integration-multimedia/'),
(201, 173, '_menu_item_type', 'custom'),
(202, 173, '_menu_item_menu_item_parent', '0'),
(203, 173, '_menu_item_object_id', '173'),
(204, 173, '_menu_item_object', 'custom'),
(205, 173, '_menu_item_target', ''),
(206, 173, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(207, 173, '_menu_item_xfn', ''),
(208, 173, '_menu_item_url', 'http://localhost:81/4w4/'),
(224, 128, '_wp_old_slug', 'description-du-cours-582-1m1-creation-video'),
(232, 194, '_menu_item_type', 'taxonomy'),
(233, 194, '_menu_item_menu_item_parent', '0'),
(234, 194, '_menu_item_object_id', '5'),
(235, 194, '_menu_item_object', 'category'),
(236, 194, '_menu_item_target', ''),
(237, 194, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(238, 194, '_menu_item_xfn', ''),
(239, 194, '_menu_item_url', ''),
(241, 195, '_menu_item_type', 'post_type'),
(242, 195, '_menu_item_menu_item_parent', '0'),
(243, 195, '_menu_item_object_id', '2'),
(244, 195, '_menu_item_object', 'page'),
(245, 195, '_menu_item_target', ''),
(246, 195, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(247, 195, '_menu_item_xfn', ''),
(248, 195, '_menu_item_url', ''),
(252, 197, '_wp_attached_file', '2022/03/screenshot2.png'),
(253, 197, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:23:\"2022/03/screenshot2.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"screenshot2-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"screenshot2-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"screenshot2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"screenshot2-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 198, '_wp_attached_file', '2022/03/LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc.jpg'),
(255, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1800;s:4:\"file\";s:57:\"2022/03/LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:59:\"LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(256, 199, '_wp_attached_file', '2022/03/cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc.jpg'),
(257, 199, '_wp_attachment_context', 'site-icon'),
(258, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:65:\"2022/03/cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:65:\"cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:65:\"cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:65:\"cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:65:\"cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:63:\"cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(259, 200, '_wp_trash_meta_status', 'publish'),
(260, 200, '_wp_trash_meta_time', '1647277841'),
(263, 202, '_wp_trash_meta_status', 'publish'),
(264, 202, '_wp_trash_meta_time', '1647278913'),
(265, 203, '_wp_attached_file', '2022/03/cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-1.jpg'),
(266, 203, '_wp_attachment_context', 'custom-logo'),
(267, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:67:\"2022/03/cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 204, '_wp_trash_meta_status', 'publish'),
(269, 204, '_wp_trash_meta_time', '1647281589'),
(270, 127, '_edit_lock', '1649280464:1'),
(272, 173, '_wp_old_date', '2022-03-07'),
(273, 194, '_wp_old_date', '2022-03-07'),
(481, 230, '_menu_item_type', 'post_type'),
(482, 230, '_menu_item_menu_item_parent', '0'),
(483, 230, '_menu_item_object_id', '1'),
(484, 230, '_menu_item_object', 'post'),
(485, 230, '_menu_item_target', ''),
(486, 230, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(487, 230, '_menu_item_xfn', ''),
(488, 230, '_menu_item_url', ''),
(489, 230, '_menu_item_orphaned', '1647380941'),
(490, 149, '_edit_last', '1'),
(492, 149, '_edit_lock', '1649280510:1'),
(493, 147, '_edit_last', '1'),
(495, 147, '_edit_lock', '1649280448:1'),
(496, 148, '_edit_last', '1'),
(498, 148, '_edit_lock', '1649280635:1'),
(499, 234, '_edit_lock', '1649280395:1'),
(501, 234, '_edit_last', '1'),
(503, 237, '_edit_lock', '1649280350:1'),
(505, 237, '_edit_last', '1'),
(507, 239, '_edit_lock', '1649280346:1'),
(509, 241, '_edit_lock', '1649280390:1'),
(511, 243, '_edit_lock', '1647382488:1'),
(513, 245, '_menu_item_type', 'post_type'),
(514, 245, '_menu_item_menu_item_parent', '0'),
(515, 245, '_menu_item_object_id', '146'),
(516, 245, '_menu_item_object', 'post'),
(517, 245, '_menu_item_target', ''),
(518, 245, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(519, 245, '_menu_item_xfn', ''),
(520, 245, '_menu_item_url', ''),
(522, 246, '_menu_item_type', 'post_type'),
(523, 246, '_menu_item_menu_item_parent', '0'),
(524, 246, '_menu_item_object_id', '145'),
(525, 246, '_menu_item_object', 'post'),
(526, 246, '_menu_item_target', ''),
(527, 246, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(528, 246, '_menu_item_xfn', ''),
(529, 246, '_menu_item_url', ''),
(531, 247, '_menu_item_type', 'post_type'),
(532, 247, '_menu_item_menu_item_parent', '0'),
(533, 247, '_menu_item_object_id', '131'),
(534, 247, '_menu_item_object', 'post'),
(535, 247, '_menu_item_target', ''),
(536, 247, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(537, 247, '_menu_item_xfn', ''),
(538, 247, '_menu_item_url', ''),
(540, 248, '_menu_item_type', 'post_type'),
(541, 248, '_menu_item_menu_item_parent', '0'),
(542, 248, '_menu_item_object_id', '127'),
(543, 248, '_menu_item_object', 'post'),
(544, 248, '_menu_item_target', ''),
(545, 248, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(546, 248, '_menu_item_xfn', ''),
(547, 248, '_menu_item_url', ''),
(558, 250, '_menu_item_type', 'post_type'),
(559, 250, '_menu_item_menu_item_parent', '0'),
(560, 250, '_menu_item_object_id', '129'),
(561, 250, '_menu_item_object', 'post'),
(562, 250, '_menu_item_target', ''),
(563, 250, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(564, 250, '_menu_item_xfn', ''),
(565, 250, '_menu_item_url', ''),
(567, 251, '_menu_item_type', 'post_type'),
(568, 251, '_menu_item_menu_item_parent', '0'),
(569, 251, '_menu_item_object_id', '130'),
(570, 251, '_menu_item_object', 'post'),
(571, 251, '_menu_item_target', ''),
(572, 251, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(573, 251, '_menu_item_xfn', ''),
(574, 251, '_menu_item_url', ''),
(576, 252, '_menu_item_type', 'post_type'),
(577, 252, '_menu_item_menu_item_parent', '0'),
(578, 252, '_menu_item_object_id', '135'),
(579, 252, '_menu_item_object', 'post'),
(580, 252, '_menu_item_target', ''),
(581, 252, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(582, 252, '_menu_item_xfn', ''),
(583, 252, '_menu_item_url', ''),
(585, 253, '_menu_item_type', 'post_type'),
(586, 253, '_menu_item_menu_item_parent', '0'),
(587, 253, '_menu_item_object_id', '132'),
(588, 253, '_menu_item_object', 'post'),
(589, 253, '_menu_item_target', ''),
(590, 253, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(591, 253, '_menu_item_xfn', ''),
(592, 253, '_menu_item_url', ''),
(594, 254, '_menu_item_type', 'post_type'),
(595, 254, '_menu_item_menu_item_parent', '0'),
(596, 254, '_menu_item_object_id', '133'),
(597, 254, '_menu_item_object', 'post'),
(598, 254, '_menu_item_target', ''),
(599, 254, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(600, 254, '_menu_item_xfn', ''),
(601, 254, '_menu_item_url', ''),
(603, 255, '_menu_item_type', 'post_type'),
(604, 255, '_menu_item_menu_item_parent', '0'),
(605, 255, '_menu_item_object_id', '134'),
(606, 255, '_menu_item_object', 'post'),
(607, 255, '_menu_item_target', ''),
(608, 255, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(609, 255, '_menu_item_xfn', ''),
(610, 255, '_menu_item_url', ''),
(612, 256, '_menu_item_type', 'post_type'),
(613, 256, '_menu_item_menu_item_parent', '0'),
(614, 256, '_menu_item_object_id', '137'),
(615, 256, '_menu_item_object', 'post'),
(616, 256, '_menu_item_target', ''),
(617, 256, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(618, 256, '_menu_item_xfn', ''),
(619, 256, '_menu_item_url', ''),
(621, 257, '_menu_item_type', 'post_type'),
(622, 257, '_menu_item_menu_item_parent', '0'),
(623, 257, '_menu_item_object_id', '139'),
(624, 257, '_menu_item_object', 'post'),
(625, 257, '_menu_item_target', ''),
(626, 257, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(627, 257, '_menu_item_xfn', ''),
(628, 257, '_menu_item_url', ''),
(630, 258, '_menu_item_type', 'post_type'),
(631, 258, '_menu_item_menu_item_parent', '0'),
(632, 258, '_menu_item_object_id', '136'),
(633, 258, '_menu_item_object', 'post'),
(634, 258, '_menu_item_target', ''),
(635, 258, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(636, 258, '_menu_item_xfn', ''),
(637, 258, '_menu_item_url', ''),
(639, 259, '_menu_item_type', 'post_type'),
(640, 259, '_menu_item_menu_item_parent', '0'),
(641, 259, '_menu_item_object_id', '138'),
(642, 259, '_menu_item_object', 'post'),
(643, 259, '_menu_item_target', ''),
(644, 259, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(645, 259, '_menu_item_xfn', ''),
(646, 259, '_menu_item_url', ''),
(648, 260, '_menu_item_type', 'post_type'),
(649, 260, '_menu_item_menu_item_parent', '0'),
(650, 260, '_menu_item_object_id', '140'),
(651, 260, '_menu_item_object', 'post'),
(652, 260, '_menu_item_target', ''),
(653, 260, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(654, 260, '_menu_item_xfn', ''),
(655, 260, '_menu_item_url', ''),
(657, 261, '_menu_item_type', 'post_type'),
(658, 261, '_menu_item_menu_item_parent', '0'),
(659, 261, '_menu_item_object_id', '142'),
(660, 261, '_menu_item_object', 'post'),
(661, 261, '_menu_item_target', ''),
(662, 261, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(663, 261, '_menu_item_xfn', ''),
(664, 261, '_menu_item_url', ''),
(666, 262, '_menu_item_type', 'post_type'),
(667, 262, '_menu_item_menu_item_parent', '0'),
(668, 262, '_menu_item_object_id', '144'),
(669, 262, '_menu_item_object', 'post'),
(670, 262, '_menu_item_target', ''),
(671, 262, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(672, 262, '_menu_item_xfn', ''),
(673, 262, '_menu_item_url', ''),
(675, 263, '_menu_item_type', 'post_type'),
(676, 263, '_menu_item_menu_item_parent', '0'),
(677, 263, '_menu_item_object_id', '143'),
(678, 263, '_menu_item_object', 'post'),
(679, 263, '_menu_item_target', ''),
(680, 263, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(681, 263, '_menu_item_xfn', ''),
(682, 263, '_menu_item_url', ''),
(684, 264, '_menu_item_type', 'post_type'),
(685, 264, '_menu_item_menu_item_parent', '0'),
(686, 264, '_menu_item_object_id', '141'),
(687, 264, '_menu_item_object', 'post'),
(688, 264, '_menu_item_target', ''),
(689, 264, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(690, 264, '_menu_item_xfn', ''),
(691, 264, '_menu_item_url', ''),
(693, 265, '_menu_item_type', 'post_type'),
(694, 265, '_menu_item_menu_item_parent', '0'),
(695, 265, '_menu_item_object_id', '234'),
(696, 265, '_menu_item_object', 'post'),
(697, 265, '_menu_item_target', ''),
(698, 265, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(699, 265, '_menu_item_xfn', ''),
(700, 265, '_menu_item_url', ''),
(702, 266, '_menu_item_type', 'post_type'),
(703, 266, '_menu_item_menu_item_parent', '0'),
(704, 266, '_menu_item_object_id', '241'),
(705, 266, '_menu_item_object', 'post'),
(706, 266, '_menu_item_target', ''),
(707, 266, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(708, 266, '_menu_item_xfn', ''),
(709, 266, '_menu_item_url', ''),
(711, 267, '_menu_item_type', 'post_type'),
(712, 267, '_menu_item_menu_item_parent', '0'),
(713, 267, '_menu_item_object_id', '148'),
(714, 267, '_menu_item_object', 'post'),
(715, 267, '_menu_item_target', ''),
(716, 267, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(717, 267, '_menu_item_xfn', ''),
(718, 267, '_menu_item_url', ''),
(729, 269, '_menu_item_type', 'post_type'),
(730, 269, '_menu_item_menu_item_parent', '0'),
(731, 269, '_menu_item_object_id', '237'),
(732, 269, '_menu_item_object', 'post'),
(733, 269, '_menu_item_target', ''),
(734, 269, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(735, 269, '_menu_item_xfn', ''),
(736, 269, '_menu_item_url', ''),
(738, 270, '_menu_item_type', 'post_type'),
(739, 270, '_menu_item_menu_item_parent', '0'),
(740, 270, '_menu_item_object_id', '147'),
(741, 270, '_menu_item_object', 'post'),
(742, 270, '_menu_item_target', ''),
(743, 270, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(744, 270, '_menu_item_xfn', ''),
(745, 270, '_menu_item_url', ''),
(747, 271, '_menu_item_type', 'post_type'),
(748, 271, '_menu_item_menu_item_parent', '0'),
(749, 271, '_menu_item_object_id', '239'),
(750, 271, '_menu_item_object', 'post'),
(751, 271, '_menu_item_target', ''),
(752, 271, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(753, 271, '_menu_item_xfn', ''),
(754, 271, '_menu_item_url', ''),
(756, 272, '_menu_item_type', 'post_type'),
(757, 272, '_menu_item_menu_item_parent', '0'),
(758, 272, '_menu_item_object_id', '149'),
(759, 272, '_menu_item_object', 'post'),
(760, 272, '_menu_item_target', ''),
(761, 272, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(762, 272, '_menu_item_xfn', ''),
(763, 272, '_menu_item_url', ''),
(765, 273, '_menu_item_type', 'post_type'),
(766, 273, '_menu_item_menu_item_parent', '0'),
(767, 273, '_menu_item_object_id', '1'),
(768, 273, '_menu_item_object', 'post'),
(769, 273, '_menu_item_target', ''),
(770, 273, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(771, 273, '_menu_item_xfn', ''),
(772, 273, '_menu_item_url', ''),
(773, 273, '_menu_item_orphaned', '1647382746'),
(774, 142, '_edit_last', '1'),
(776, 142, '_edit_lock', '1649280413:1'),
(777, 243, '_wp_trash_meta_status', 'publish'),
(778, 243, '_wp_trash_meta_time', '1647383160'),
(779, 243, '_wp_desired_post_slug', '582-5mb-technologies-emergentes-et-avancees-volet-creation-60h'),
(780, 136, '_edit_lock', '1649280652:1'),
(781, 275, '_wp_attached_file', '2020/10/3D-IMAGE.jpg'),
(782, 275, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2020/10/3D-IMAGE.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"3D-IMAGE-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"3D-IMAGE-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"3D-IMAGE-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(784, 136, '_thumbnail_id', '275'),
(786, 144, '_edit_lock', '1649280663:1'),
(788, 144, '_thumbnail_id', '275'),
(789, 130, '_edit_lock', '1649280381:1'),
(790, 277, '_wp_attached_file', '2020/10/planification-creation-site-web.jpg'),
(791, 277, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:43:\"2020/10/planification-creation-site-web.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"planification-creation-site-web-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"planification-creation-site-web-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"planification-creation-site-web-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"planification-creation-site-web-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"planification-creation-site-web-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:18:\"© by Maxim Kazmin\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(793, 130, '_thumbnail_id', '277'),
(794, 134, '_edit_lock', '1649280393:1'),
(796, 134, '_thumbnail_id', '277'),
(797, 138, '_edit_lock', '1649280419:1'),
(799, 138, '_thumbnail_id', '277'),
(800, 141, '_edit_lock', '1649280280:1'),
(801, 280, '_wp_attached_file', '2020/10/wordpress.jpg'),
(802, 280, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:950;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2020/10/wordpress.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"wordpress-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"wordpress-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"wordpress-768x404.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:404;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(804, 141, '_thumbnail_id', '280'),
(805, 143, '_edit_lock', '1649280434:1'),
(806, 281, '_wp_attached_file', '2020/10/react.png'),
(807, 281, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1720;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2020/10/react.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"react-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"react-1024x536.png\";s:5:\"width\";i:1024;s:6:\"height\";i:536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"react-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"react-768x402.png\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"react-1536x804.png\";s:5:\"width\";i:1536;s:6:\"height\";i:804;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(809, 143, '_thumbnail_id', '281'),
(810, 128, '_wp_trash_meta_status', 'publish'),
(811, 128, '_wp_trash_meta_time', '1647446152'),
(812, 128, '_wp_desired_post_slug', 'description-du-cours-582-1m1-creation-video-2'),
(813, 283, '_wp_attached_file', '2020/10/premierePro.jpg'),
(814, 283, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:405;s:4:\"file\";s:23:\"2020/10/premierePro.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"premierePro-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"premierePro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(816, 127, '_thumbnail_id', '283'),
(817, 132, '_edit_lock', '1649280473:1'),
(818, 284, '_wp_attached_file', '2020/10/afterEffets.jpeg'),
(819, 284, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2020/10/afterEffets.jpeg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"afterEffets-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"afterEffets-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"afterEffets-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"afterEffets-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"afterEffets-1536x864.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(821, 132, '_thumbnail_id', '284'),
(827, 287, '_wp_attached_file', '2022/03/TIM1.png'),
(828, 287, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:16:\"2022/03/TIM1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"TIM1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(829, 288, '_wp_attached_file', '2022/03/TIM.png'),
(830, 288, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2022/03/TIM.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"TIM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(831, 289, '_wp_attached_file', '2022/03/cropped-TIM.png'),
(832, 289, '_wp_attachment_context', 'custom-logo'),
(833, 289, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:23:\"2022/03/cropped-TIM.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(834, 290, '_wp_trash_meta_status', 'publish'),
(835, 290, '_wp_trash_meta_time', '1647446530'),
(836, 129, '_edit_lock', '1649280602:1'),
(837, 291, '_wp_attached_file', '2020/10/photoshop.png'),
(838, 291, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:21:\"2020/10/photoshop.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"photoshop-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"photoshop-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"photoshop-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"photoshop-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(840, 129, '_thumbnail_id', '291'),
(841, 133, '_edit_lock', '1649280612:1'),
(842, 293, '_wp_attached_file', '2020/10/illustrator.jpeg'),
(843, 293, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:24:\"2020/10/illustrator.jpeg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"illustrator-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"illustrator-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"illustrator-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"illustrator-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(845, 133, '_thumbnail_id', '293'),
(846, 137, '_edit_lock', '1649280624:1'),
(847, 294, '_wp_attached_file', '2020/10/xd.png'),
(848, 294, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1436;s:6:\"height\";i:905;s:4:\"file\";s:14:\"2020/10/xd.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"xd-300x189.png\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"xd-1024x645.png\";s:5:\"width\";i:1024;s:6:\"height\";i:645;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"xd-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"xd-768x484.png\";s:5:\"width\";i:768;s:6:\"height\";i:484;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(850, 137, '_thumbnail_id', '294'),
(851, 140, '_edit_lock', '1649280355:1'),
(852, 296, '_wp_attached_file', '2020/10/scrum.png'),
(853, 296, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:17:\"2020/10/scrum.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"scrum-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"scrum-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(855, 140, '_thumbnail_id', '296'),
(856, 135, '_edit_lock', '1649280581:1'),
(857, 297, '_wp_attached_file', '2020/10/2d.webp'),
(858, 297, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:422;s:4:\"file\";s:15:\"2020/10/2d.webp\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2d-300x169.webp\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2d-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(860, 135, '_thumbnail_id', '297'),
(861, 139, '_edit_lock', '1649280551:1'),
(862, 298, '_wp_attached_file', '2020/10/3d.webp'),
(863, 298, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:422;s:4:\"file\";s:15:\"2020/10/3d.webp\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3d-300x169.webp\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3d-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(865, 139, '_thumbnail_id', '298'),
(866, 300, '_wp_attached_file', '2022/03/5j5.jpg'),
(867, 300, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1060;s:4:\"file\";s:15:\"2022/03/5j5.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"5j5-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"5j5-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"5j5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"5j5-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(869, 234, '_thumbnail_id', '300'),
(870, 131, '_edit_lock', '1649280570:1'),
(871, 301, '_wp_attached_file', '2020/10/1j1.jpg'),
(872, 301, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2020/10/1j1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1j1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1j1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"1j1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(874, 131, '_thumbnail_id', '301'),
(875, 302, '_wp_attached_file', '2020/10/Super-Mario-3D-World-Key-Art.jpg'),
(876, 302, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:700;s:4:\"file\";s:40:\"2020/10/Super-Mario-3D-World-Key-Art.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"Super-Mario-3D-World-Key-Art-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"Super-Mario-3D-World-Key-Art-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Super-Mario-3D-World-Key-Art-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"Super-Mario-3D-World-Key-Art-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(878, 142, '_thumbnail_id', '302'),
(881, 307, '_wp_attached_file', '2022/03/download.png'),
(882, 307, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2022/03/download.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(883, 307, '_edit_lock', '1647632649:1'),
(884, 308, '_wp_attached_file', '2022/03/cropped-download.png'),
(885, 308, '_wp_attachment_context', 'custom-logo'),
(886, 308, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:28:\"2022/03/cropped-download.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(887, 309, '_wp_attached_file', '2022/03/cropped-cropped-download.png'),
(888, 309, '_wp_attachment_context', 'site-icon'),
(889, 309, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:36:\"2022/03/cropped-cropped-download.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"cropped-cropped-download-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-cropped-download-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:36:\"cropped-cropped-download-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:36:\"cropped-cropped-download-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:36:\"cropped-cropped-download-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:34:\"cropped-cropped-download-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(890, 310, '_wp_trash_meta_status', 'publish'),
(891, 310, '_wp_trash_meta_time', '1647632845'),
(892, 173, '_wp_old_date', '2022-03-15'),
(893, 194, '_wp_old_date', '2022-03-15'),
(894, 245, '_wp_old_date', '2022-03-15'),
(895, 246, '_wp_old_date', '2022-03-15'),
(896, 247, '_wp_old_date', '2022-03-15'),
(897, 248, '_wp_old_date', '2022-03-15'),
(898, 250, '_wp_old_date', '2022-03-15'),
(899, 251, '_wp_old_date', '2022-03-15'),
(900, 252, '_wp_old_date', '2022-03-15'),
(901, 253, '_wp_old_date', '2022-03-15'),
(902, 254, '_wp_old_date', '2022-03-15'),
(903, 255, '_wp_old_date', '2022-03-15'),
(904, 256, '_wp_old_date', '2022-03-15'),
(905, 257, '_wp_old_date', '2022-03-15'),
(906, 258, '_wp_old_date', '2022-03-15'),
(907, 259, '_wp_old_date', '2022-03-15'),
(908, 260, '_wp_old_date', '2022-03-15'),
(909, 261, '_wp_old_date', '2022-03-15'),
(910, 262, '_wp_old_date', '2022-03-15'),
(911, 263, '_wp_old_date', '2022-03-15'),
(912, 264, '_wp_old_date', '2022-03-15'),
(913, 265, '_wp_old_date', '2022-03-15'),
(914, 266, '_wp_old_date', '2022-03-15'),
(915, 267, '_wp_old_date', '2022-03-15'),
(916, 269, '_wp_old_date', '2022-03-15'),
(917, 270, '_wp_old_date', '2022-03-15'),
(918, 271, '_wp_old_date', '2022-03-15'),
(919, 272, '_wp_old_date', '2022-03-15'),
(920, 312, '_menu_item_type', 'taxonomy'),
(921, 312, '_menu_item_menu_item_parent', '0'),
(922, 312, '_menu_item_object_id', '5'),
(923, 312, '_menu_item_object', 'category'),
(924, 312, '_menu_item_target', ''),
(925, 312, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(926, 312, '_menu_item_xfn', ''),
(927, 312, '_menu_item_url', ''),
(929, 313, '_menu_item_type', 'taxonomy'),
(930, 313, '_menu_item_menu_item_parent', '0'),
(931, 313, '_menu_item_object_id', '7'),
(932, 313, '_menu_item_object', 'category'),
(933, 313, '_menu_item_target', ''),
(934, 313, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(935, 313, '_menu_item_xfn', ''),
(936, 313, '_menu_item_url', ''),
(938, 314, '_menu_item_type', 'taxonomy'),
(939, 314, '_menu_item_menu_item_parent', '0'),
(940, 314, '_menu_item_object_id', '8'),
(941, 314, '_menu_item_object', 'category'),
(942, 314, '_menu_item_target', ''),
(943, 314, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(944, 314, '_menu_item_xfn', ''),
(945, 314, '_menu_item_url', ''),
(947, 315, '_menu_item_type', 'taxonomy'),
(948, 315, '_menu_item_menu_item_parent', '0'),
(949, 315, '_menu_item_object_id', '9'),
(950, 315, '_menu_item_object', 'category'),
(951, 315, '_menu_item_target', ''),
(952, 315, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(953, 315, '_menu_item_xfn', ''),
(954, 315, '_menu_item_url', ''),
(965, 317, '_menu_item_type', 'taxonomy'),
(966, 317, '_menu_item_menu_item_parent', '0'),
(967, 317, '_menu_item_object_id', '11'),
(968, 317, '_menu_item_object', 'category'),
(969, 317, '_menu_item_target', ''),
(970, 317, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(971, 317, '_menu_item_xfn', ''),
(972, 317, '_menu_item_url', ''),
(974, 318, '_menu_item_type', 'taxonomy'),
(975, 318, '_menu_item_menu_item_parent', '0'),
(976, 318, '_menu_item_object_id', '10'),
(977, 318, '_menu_item_object', 'category'),
(978, 318, '_menu_item_target', ''),
(979, 318, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(980, 318, '_menu_item_xfn', ''),
(981, 318, '_menu_item_url', ''),
(983, 319, '_menu_item_type', 'taxonomy'),
(984, 319, '_menu_item_menu_item_parent', '0'),
(985, 319, '_menu_item_object_id', '12'),
(986, 319, '_menu_item_object', 'category'),
(987, 319, '_menu_item_target', ''),
(988, 319, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(989, 319, '_menu_item_xfn', ''),
(990, 319, '_menu_item_url', ''),
(993, 130, '_edit_last', '1'),
(995, 134, '_edit_last', '1'),
(997, 138, '_edit_last', '1'),
(999, 141, '_edit_last', '1'),
(1001, 143, '_edit_last', '1'),
(1004, 241, '_edit_last', '1'),
(1007, 131, '_edit_last', '1'),
(1009, 135, '_edit_last', '1'),
(1011, 139, '_edit_last', '1'),
(1014, 136, '_edit_last', '1'),
(1016, 144, '_edit_last', '1'),
(1017, 140, '_edit_last', '1'),
(1020, 129, '_edit_last', '1'),
(1022, 133, '_edit_last', '1'),
(1023, 137, '_edit_last', '1'),
(1026, 127, '_edit_last', '1'),
(1028, 132, '_edit_last', '1'),
(1030, 147, '_thumbnail_id', '277'),
(1032, 239, '_edit_last', '1'),
(1035, 145, '_edit_last', '1'),
(1037, 146, '_edit_last', '1'),
(1041, 321, '_menu_item_type', 'taxonomy'),
(1042, 321, '_menu_item_menu_item_parent', '0'),
(1043, 321, '_menu_item_object_id', '5'),
(1044, 321, '_menu_item_object', 'category'),
(1045, 321, '_menu_item_target', ''),
(1046, 321, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1047, 321, '_menu_item_xfn', ''),
(1048, 321, '_menu_item_url', ''),
(1050, 322, '_edit_lock', '1649273209:1'),
(1051, 324, '_edit_lock', '1649277945:1'),
(1052, 326, '_edit_lock', '1649282158:1'),
(1053, 328, '_menu_item_type', 'post_type'),
(1054, 328, '_menu_item_menu_item_parent', '0'),
(1055, 328, '_menu_item_object_id', '322'),
(1056, 328, '_menu_item_object', 'page'),
(1057, 328, '_menu_item_target', ''),
(1058, 328, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1059, 328, '_menu_item_xfn', ''),
(1060, 328, '_menu_item_url', ''),
(1062, 329, '_menu_item_type', 'post_type'),
(1063, 329, '_menu_item_menu_item_parent', '0'),
(1064, 329, '_menu_item_object_id', '324'),
(1065, 329, '_menu_item_object', 'page'),
(1066, 329, '_menu_item_target', ''),
(1067, 329, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1068, 329, '_menu_item_xfn', ''),
(1069, 329, '_menu_item_url', ''),
(1071, 330, '_menu_item_type', 'post_type'),
(1072, 330, '_menu_item_menu_item_parent', '0'),
(1073, 330, '_menu_item_object_id', '326'),
(1074, 330, '_menu_item_object', 'page'),
(1075, 330, '_menu_item_target', ''),
(1076, 330, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1077, 330, '_menu_item_xfn', ''),
(1078, 330, '_menu_item_url', ''),
(1080, 3, '_edit_lock', '1649274733:1'),
(1081, 331, '_edit_last', '1'),
(1082, 331, '_edit_lock', '1649280164:1'),
(1085, 241, 'nombre_dheures', '90'),
(1086, 241, '_nombre_dheures', 'field_624e040b7d0d9'),
(1087, 334, 'nombre_dheures', '90'),
(1088, 334, '_nombre_dheures', 'field_624e040b7d0d9'),
(1091, 239, 'nombre_dheures', '120'),
(1092, 239, '_nombre_dheures', 'field_624e040b7d0d9'),
(1093, 335, 'nombre_dheures', '120'),
(1094, 335, '_nombre_dheures', 'field_624e040b7d0d9'),
(1097, 237, 'nombre_dheures', '60'),
(1098, 237, '_nombre_dheures', 'field_624e040b7d0d9'),
(1099, 336, 'nombre_dheures', '60'),
(1100, 336, '_nombre_dheures', 'field_624e040b7d0d9'),
(1103, 234, 'nombre_dheures', '90'),
(1104, 234, '_nombre_dheures', 'field_624e040b7d0d9'),
(1105, 337, 'nombre_dheures', '90'),
(1106, 337, '_nombre_dheures', 'field_624e040b7d0d9'),
(1109, 141, 'nombre_dheures', '90'),
(1110, 141, '_nombre_dheures', 'field_624e040b7d0d9'),
(1111, 338, 'nombre_dheures', '90'),
(1112, 338, '_nombre_dheures', 'field_624e040b7d0d9'),
(1115, 142, 'nombre_dheures', '105'),
(1116, 142, '_nombre_dheures', 'field_624e040b7d0d9'),
(1117, 339, 'nombre_dheures', '105'),
(1118, 339, '_nombre_dheures', 'field_624e040b7d0d9'),
(1121, 130, 'nombre_dheures', '75'),
(1122, 130, '_nombre_dheures', 'field_624e040b7d0d9'),
(1123, 340, 'nombre_dheures', '75'),
(1124, 340, '_nombre_dheures', 'field_624e040b7d0d9'),
(1127, 134, 'nombre_dheures', '75'),
(1128, 134, '_nombre_dheures', 'field_624e040b7d0d9'),
(1129, 341, 'nombre_dheures', '75'),
(1130, 341, '_nombre_dheures', 'field_624e040b7d0d9'),
(1133, 138, 'nombre_dheures', '90'),
(1134, 138, '_nombre_dheures', 'field_624e040b7d0d9'),
(1135, 342, 'nombre_dheures', '90'),
(1136, 342, '_nombre_dheures', 'field_624e040b7d0d9'),
(1139, 143, 'nombre_dheures', '75'),
(1140, 143, '_nombre_dheures', 'field_624e040b7d0d9'),
(1141, 343, 'nombre_dheures', '75'),
(1142, 343, '_nombre_dheures', 'field_624e040b7d0d9'),
(1145, 147, 'nombre_dheures', '105'),
(1146, 147, '_nombre_dheures', 'field_624e040b7d0d9'),
(1147, 344, 'nombre_dheures', '105'),
(1148, 344, '_nombre_dheures', 'field_624e040b7d0d9'),
(1151, 127, 'nombre_dheures', '75'),
(1152, 127, '_nombre_dheures', 'field_624e040b7d0d9'),
(1153, 345, 'nombre_dheures', '75'),
(1154, 345, '_nombre_dheures', 'field_624e040b7d0d9');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1157, 132, 'nombre_dheures', '60'),
(1158, 132, '_nombre_dheures', 'field_624e040b7d0d9'),
(1159, 346, 'nombre_dheures', '60'),
(1160, 346, '_nombre_dheures', 'field_624e040b7d0d9'),
(1163, 149, 'nombre_dheures', '285'),
(1164, 149, '_nombre_dheures', 'field_624e040b7d0d9'),
(1165, 347, 'nombre_dheures', '285'),
(1166, 347, '_nombre_dheures', 'field_624e040b7d0d9'),
(1169, 139, 'nombre_dheures', '75'),
(1170, 139, '_nombre_dheures', 'field_624e040b7d0d9'),
(1171, 348, 'nombre_dheures', '75'),
(1172, 348, '_nombre_dheures', 'field_624e040b7d0d9'),
(1175, 131, 'nombre_dheures', '75'),
(1176, 131, '_nombre_dheures', 'field_624e040b7d0d9'),
(1177, 349, 'nombre_dheures', '75'),
(1178, 349, '_nombre_dheures', 'field_624e040b7d0d9'),
(1181, 135, 'nombre_dheures', '60'),
(1182, 135, '_nombre_dheures', 'field_624e040b7d0d9'),
(1183, 350, 'nombre_dheures', '60'),
(1184, 350, '_nombre_dheures', 'field_624e040b7d0d9'),
(1187, 129, 'nombre_dheures', '90'),
(1188, 129, '_nombre_dheures', 'field_624e040b7d0d9'),
(1189, 351, 'nombre_dheures', '90'),
(1190, 351, '_nombre_dheures', 'field_624e040b7d0d9'),
(1193, 133, 'nombre_dheures', '90'),
(1194, 133, '_nombre_dheures', 'field_624e040b7d0d9'),
(1195, 352, 'nombre_dheures', '90'),
(1196, 352, '_nombre_dheures', 'field_624e040b7d0d9'),
(1199, 137, 'nombre_dheures', '75'),
(1200, 137, '_nombre_dheures', 'field_624e040b7d0d9'),
(1201, 353, 'nombre_dheures', '75'),
(1202, 353, '_nombre_dheures', 'field_624e040b7d0d9'),
(1205, 148, 'nombre_dheures', '60'),
(1206, 148, '_nombre_dheures', 'field_624e040b7d0d9'),
(1207, 354, 'nombre_dheures', '60'),
(1208, 354, '_nombre_dheures', 'field_624e040b7d0d9'),
(1211, 136, 'nombre_dheures', '75'),
(1212, 136, '_nombre_dheures', 'field_624e040b7d0d9'),
(1213, 355, 'nombre_dheures', '75'),
(1214, 355, '_nombre_dheures', 'field_624e040b7d0d9'),
(1216, 144, '_encloseme', '1'),
(1217, 144, 'nombre_dheures', '75'),
(1218, 144, '_nombre_dheures', 'field_624e040b7d0d9'),
(1219, 356, 'nombre_dheures', '75'),
(1220, 356, '_nombre_dheures', 'field_624e040b7d0d9');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
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
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-03-07 21:07:25', '2022-03-07 20:07:25', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2022-03-07 21:36:05', '2022-03-07 20:36:05', '', 0, 'http://localhost:81/4w4/?p=1', 0, 'post', '', 1),
(2, 1, '2022-03-07 21:07:25', '2022-03-07 20:07:25', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost:81/4w4/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2022-03-07 21:07:25', '2022-03-07 20:07:25', '', 0, 'http://localhost:81/4w4/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-03-07 21:07:25', '2022-03-07 20:07:25', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost:81/4w4.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2022-03-07 21:07:25', '2022-03-07 20:07:25', '', 0, 'http://localhost:81/4w4/?page_id=3', 0, 'page', '', 0),
(127, 1, '2020-10-07 15:41:00', '2020-10-07 15:41:00', '3-2-3 2,67 unités Aucun préalable. Ce cours initie l’étudiant au traitement des images en mouvement, au traitement du son ainsi qu\'aux bases de la scénarisation linéaire.  L’étudiant apprend à utiliser les périphériques associés au traitement du son et de la vidéo et à exploiter de façon créative les fonctions des logiciels de traitement vidéo et sonore. Les techniques de montage (structure narrative, affinage de coupe, correction de couleur, etc.) sont étudiées. L’étudiant apprend à représenter ses idées et ses concepts par le dessin et l’écrit, à l’aide de scénarimages, de synopsis et de scénarios. Les particularités de la fonction de travail liées au traitement de la vidéo, du son, ainsi qu\'à la scénarisation sont présentées de même que les compétences techniques et comportementales associées.', '582-1M1 Création vidéo (75h)', '', 'publish', 'open', 'open', '', 'description-du-cours-582-1m1-creation-video', '', '', '2022-04-06 17:27:43', '2022-04-06 21:27:43', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/description-du-cours-582-1m1-creation-video/', 0, 'post', '', 0),
(128, 1, '2020-10-07 15:41:00', '2020-10-07 15:41:00', '3-2-3 2,67 unités Aucun préalable. Ce cours initie l’étudiant au traitement des images en mouvement, au traitement du son ainsi qu\'aux bases de la scénarisation linéaire.  L’étudiant apprend à utiliser les périphériques associés au traitement du son et de la vidéo et à exploiter de façon créative les fonctions des logiciels de traitement vidéo et sonore. Les techniques de montage (structure narrative, affinage de coupe, correction de couleur, etc.) sont étudiées. L’étudiant apprend à représenter ses idées et ses concepts par le dessin et l’écrit, à l’aide de scénarimages, de synopsis et de scénarios. Les particularités de la fonction de travail liées au traitement de la vidéo, du son, ainsi qu\'à la scénarisation sont présentées de même que les compétences techniques et comportementales associées.', '582-1M1 Création vidéo (75h)', '', 'trash', 'open', 'open', '', 'description-du-cours-582-1m1-creation-video-2__trashed', '', '', '2022-03-16 16:55:52', '2022-03-16 15:55:52', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/description-du-cours-582-1m1-creation-video/', 0, 'post', '', 0),
(129, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Ce cours initie l\'étudiant aux rudiments de la conception et de la communication graphique ainsi qu\'au traitement des images fixes matricielles. On y aborde les notions de base sur le langage graphique, la couleur, le mode d’organisation picturale en lien avec le design d’une image ou d’une interface. L’apprentissage d’un processus de conception structuré et de techniques d’idéation permet à l’étudiant de faire émerger des concepts créatifs respectant des objectifs de communication précis et le public cible. L\'étudiant est amené à exploiter de façon créative et efficace les diverses fonctions d’un logiciel de traitement de l\'image numérique, à utiliser des techniques de montage et de découpage d’images et à appliquer des effets spéciaux diversifiés. Le cours aborde plus particulièrement les notions de photoréalisme ainsi que des techniques de travail permettant l’intégration harmonieuse d’images dans d’autres logiciels multimédias. De plus, les méthodes de travail pour la réalisation de maquettes graphiques d’un document multimédia sont abordées.\nLes particularités de la fonction de travail liées au design graphique et au traitement des images fixes sont présentées, de même que les compétences techniques et comportementales associées.\n3-3-3 - 3 unités - Aucun préalable.', '582-1M2 Conception graphique et imagerie matricielle (90h)', '', 'publish', 'open', 'open', '', 'description-du-cours-582-1m2-conception-graphique-et-imagerie-matricielle', '', '', '2022-04-06 17:30:01', '2022-04-06 21:30:01', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/description-du-cours-582-1m2-conception-graphique-et-imagerie-matricielle/', 0, 'post', '', 0),
(130, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Dans ce cours, l\'étudiant apprend les techniques de mise en page Web en utilisant les langages de balisage et de feuilles de styles.  L\'étudiant apprend également à analyser et schématiser l\'arborescence d\'un site Web, à reproduire des maquettes sous forme de pages Web, et à créer des pages Web en intégrant les différents types de médias.  L\'introduction à un outil de gestion de code source est également couverte dans ce cours.\nLes particularités de la fonction de travail associées au domaine du Web sont présentées, de même que les compétences techniques et comportementales associées.\n3-2-3  2,67 unités	Aucun préalable', '582-1W1 Mise en page Web (75h)', '', 'publish', 'open', 'open', '', '582-1w1-mise-en-page-web-75h', '', '', '2022-04-06 17:26:21', '2022-04-06 21:26:21', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-1w1-mise-en-page-web-75h/', 0, 'post', '', 0),
(131, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Ce cours est consacré aux concepts de base nécessaires à la création d’un jeu numérique. Le cours porte, d’une part, sur l’animation des médias : l’étudiant y apprend à importer et à intégrer des médias dans un environnement de création de jeu. De plus, il se familiarise avec les techniques de création d’animations à partir d’images simples et des feuilles de « sprites ». D’autre part, le cours couvre la gestion des interactions : l’étudiant y est initié aux concepts de base de l’interactivité dans un contexte de jeu, ainsi qu’aux techniques de conception, de codification et de vérification des algorithmes nécessaires à cette fin.\nDans ce cours, l’étudiant est également initié à l’environnement matériel et technologique dans lequel il évoluera tout au long de sa formation et de sa carrière.  Les particularités de la fonction de travail liées au domaine du jeu sont présentées, de même que les compétences techniques et comportementales associées.\n3-2-3 2,67 unités	Aucun préalable', '582-1J1 Animation et interactivité en jeu (75h)', '', 'publish', 'open', 'open', '', '582-1j1-animation-et-interactivite-en-jeu-75h', '', '', '2022-04-06 17:29:30', '2022-04-06 21:29:30', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-1j1-animation-et-interactivite-en-jeu-75h/', 0, 'post', '', 0),
(132, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Ce cours permet d\'approfondir la formation de l’étudiant en matière de traitement d’images en mouvement et de traitement sonore.  L’étudiant poursuit son apprentissage des techniques de prise de vues avec des caméras virtuelles. Il développe sa capacité à utiliser des techniques d’effets spéciaux visuels : animations graphiques, initiation à l’environnement 3D, caméras et lumières virtuelles, composition numérique et techniques d’écran vert.\nL\'étudiant est amené à appliquer adéquatement les techniques d\'optimisation des fichiers sonores et vidéo en fonction de différents modes de diffusion et d’intégration à un projet multimédia.\n2-2-3 2,33 unités Préalable relatif : Création vidéo', '582-2M3 Effets spéciaux et animation (60h)', '', 'publish', 'open', 'open', '', '582-2m3-effets-speciaux-et-animation-60h', '', '', '2022-04-06 17:27:53', '2022-04-06 21:27:53', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-2m3-effets-speciaux-et-animation-60h/', 0, 'post', '', 0),
(133, 1, '2020-10-07 15:41:00', '2020-10-07 15:41:00', 'Dans ce cours, l’étudiant poursuit l’apprentissage des notions liées à la conception, à la communication graphique et au traitement des images fixes vectorielles.\nL\'étudiant développe un concept créatif décliné en plusieurs volets. L\'étudiant apprend à utiliser la typographie selon les règles de l’art. Il a l\'opportunité d\'approfondir sa maîtrise de la communication graphique afin de produire un message adapté au public cible.\nPour ce faire, le cours aborde la conception d\'illustrations et des techniques de travail permettant l’intégration harmonieuse d’images dans d’autres logiciels multimédias. L\'étudiant apprendra à créer des agencements graphiques et typographiques comme des logos, des icônes web ainsi que des éléments de jeu en 2D.\nEnfin, l\'étudiant est amené à argumenter et justifier ses choix créatifs.\n3-3-3\n3 unités Préalable relatif : Conception graphique et imagerie matricielle', '582-2M4 Conception graphique et imagerie vectorielle (90h)', '582-2M4 Conception graphique et imagerie vectorielle (90h)', 'publish', 'open', 'open', '', '582-2m4-conception-graphique-et-imagerie-vectorielle-90h', '', '', '2022-04-06 17:30:11', '2022-04-06 21:30:11', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-2m4-conception-graphique-et-imagerie-vectorielle-90h/', 0, 'post', '', 0),
(134, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Ce cours permet à l\'étudiant d\'acquérir les compétences de base requises pour programmer l\'interactivité de l\'interface-utilisateur d\'une application multimédia en ligne. Les notions abordées dans les cours « 582-1W1 Mise en page Web » et « 582-1J1 Animation et interactivité en jeu » sont approfondies en les appliquant dans un contexte de création de sites Web interactifs, exécutables sur un poste client.\nL\'étudiant apprend à créer et afficher des éléments graphiques par programmation et à appliquer des effets de transition et d\'animation.  L\'accent est mis sur la gestion d\'événements, le développement d\'interfaces interactives et l\'adaptabilité multiplateformes. L\'étudiant apprend enfin à installer et utiliser les outils de développement adéquats pour améliorer sa productivité dans le contexte de la chaîne de production Web.\n3-2-3\n2,67 unités	Préalable relatif : Mise en page Web', '582-2W2	Animation et interactivité Web (75h)', '', 'publish', 'open', 'open', '', '582-2w2animation-et-interactivite-web-75h', '', '', '2022-04-06 17:26:32', '2022-04-06 21:26:32', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-2w2animation-et-interactivite-web-75h/', 0, 'post', '', 0),
(135, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Dans ce cours, l’étudiant approfondit la programmation graphique et s’initie aux concepts de base d\'un moteur de jeu. Le cours permet d\'approfondir la maîtrise de la structure d\'affichage ainsi que le contrôle de l\'animation et de l\'interactivité.\nPar la création d\'un prototype simple, l\'étudiant apprend les concepts de base reliés à l\'intégration d\'un jeu ou d\'une application interactive en exploitant les principales classes intégrées d’objets graphiques et médiatiques et en créant ses propres classes d’objets.\n2-2-2\n2 unités	Préalable relatif : Animation et interactivité en jeu', '582-2J2	Création de jeu 2D (60h)', '', 'publish', 'open', 'open', '', '582-2j2creation-de-jeu-2d-60h', '', '', '2022-04-06 17:29:40', '2022-04-06 21:29:40', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-2j2creation-de-jeu-2d-60h/', 0, 'post', '', 0),
(136, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Dans ce cours, l’étudiant est initié au monde de l’imagerie de synthèse. Il est amené à maîtriser les outils et les fonctionnalités de base d’un logiciel de production 3D pour la création d\'images fixes (ex : interface graphique, logo ou autres objets).\nIl apprend les techniques et méthodes de travail liées à la modélisation, à la création et à l’application de matériaux et de textures ainsi qu’aux techniques d’éclairage et de rendu en image. Enfin, des principes de scénarisation liés à l’univers de la 3D sont également abordés.\n3-2-3\n2,67 unités	Préalable relatif : Conception graphique et imagerie vectorielle', '582-3M5 Imagerie 3D (75h)', '', 'publish', 'open', 'open', '', '582-3m5imagerie-3d-75h', '', '', '2022-04-06 17:30:51', '2022-04-06 21:30:51', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-3m5imagerie-3d-75h/', 0, 'post', '', 0),
(137, 1, '2020-10-07 15:41:00', '2020-10-07 19:41:00', 'L’étudiant apprend à concevoir des expériences interactives en plaçant les besoins de l’utilisateur au cœur de sa création.\nCe cours transpose les techniques de conception et de communication graphique dans l’univers de l’interactivité. L’étudiant apprend à concevoir les éléments d’une interface multimédia, notamment en ce qui a trait au design de la navigation et de l’interactivité. Il apprend également les méthodes pour intégrer l’expérience utilisateur dans ses projets multimédias.\nCe cours développe chez l’étudiant la capacité de communiquer efficacement à l’utilisateur d’un produit multimédia en fonction de ses besoins, et ce, dans le respect des normes d’utilisabilité et d’accessibilité en vigueur dans l’industrie.\nDifférents types de produits sont mis en valeur tout au long de l’apprentissage, notamment par la création d’interfaces Web faisant appel aux langages de balisage et aux feuilles de styles. L’étudiant approfondit le développement de sa capacité d’analyse et ses compétences à présenter sa création.\n3-2-3\n2,67 unités	Préalable relatif : Conception graphique et imagerie vectorielle', '582-3C1 Design d’interactivité (75h)', '', 'publish', 'open', 'open', '', '582-3c1-design-dinteractivite-75h', '', '', '2022-04-06 17:30:23', '2022-04-06 21:30:23', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-3c1-design-dinteractivite-75h/', 0, 'post', '', 0),
(138, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Dans ce cours, les notions acquises dans les cours « 582-1W1 : Mise en page Web » et « 582-2W2 : Animation et interactivité Web » sont approfondies et complétées par des aspects plus avancés, propres à la génération dynamique de pages Web. L’étudiant est d’abord initié à la programmation HTTP de base. Utilisant un langage de programmation, il apprend à traiter les paramètres et entêtes d’une requête HTTP pour générer de façon dynamique la réponse HTTP. De plus, l’étudiant apprend à utiliser la librairie de fonctions essentielles du langage de programmation pour développer un\nsite Web.\nEnsuite, l’étudiant apprend à intégrer un site Web dynamique à l’aide d’un gestionnaire de contenu.  Pour ce faire, l’étudiant apprend à utiliser les fonctionnalités de base du gestionnaire de contenu.  Il apprend aussi à adapter et personnaliser les interfaces à partir de thèmes, le tout en appliquant les apprentissages des cours « 582-1W1 : Mise en page Web », « 582-2W2 : Animation et interactivité Web » et « 582-3C1 : Design d’interactivité » afin de produire des sites Web dont les interfaces suivent les meilleures pratiques de l’utilisabilité et de l’adaptabilité Web. Enfin, l\'étudiant poursuit son apprentissage d’un environnement de travail collaboratif.\n3-3-3\n3 unités Préalable relatif : Animation et interactivité Web', '582-3W3 Création de sites Web dynamiques (90h)', '', 'publish', 'open', 'open', '', '582-3w3-creation-de-sites-web-dynamiques-90h', '', '', '2022-04-06 17:26:58', '2022-04-06 21:26:58', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-3w3-creation-de-sites-web-dynamiques-90h/', 0, 'post', '', 0),
(139, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Ce cours permet à l\'étudiant d\'intégrer différents types de médias à l\'aide des fonctionnalités d\'un logiciel d\'intégration 3D. L\'étudiant est amené à contrôler et à animer les éléments d\'une application multimédia par programmation dans un environnement 3D.\nCe cours initie l’étudiant à l’utilisation d’un environnement d’intégration de la 3D en temps réel.  L’accent est d’abord mis sur l’apprentissage des notions de base de la\n3D-temps réel et de l’intégration 3D (systèmes de coordonnées, vecteurs, types et propriétés d’objets 3D, caméra, rendu en temps réel, etc.).\nEnsuite l’étudiant est amené à maîtriser les outils et les fonctionnalités de base d’un logiciel d’intégration 3D, afin d\'importer et prendre en charge des éléments 3D, paramétrer les comportements ainsi que programmer l’interactivité.\nEnfin, par la création d’un prototype simple, l’étudiant est à même d’apprendre les concepts et les techniques de base reliées à l’intégration d’un jeu numérique.\n3-2-3\n2,67 unités	Préalable relatif: Création de jeu 2D', '582-3J3 Création de jeu 3D (75h)', '', 'publish', 'open', 'open', '', '582-3j3-creation-de-jeu-3d-75h', '', '', '2022-04-06 17:29:10', '2022-04-06 21:29:10', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-3j3-creation-de-jeu-3d-75h/', 0, 'post', '', 0),
(140, 1, '2020-10-07 15:41:00', '2020-10-07 19:41:00', 'Ce cours initie l\'étudiant aux rudiments de la gestion d’un projet multimédia. L’étudiant apprend à analyser les besoins liés à la réalisation du projet en termes de ressources humaines, matérielles et budgétaires.  À cet effet, il est initié aux méthodes de gestion classiques, ainsi qu’aux méthodes dites « agiles », qu’il sera appelé à utiliser dans le cadre du cours « 582-5W5 : Projet Web en équipe ».\nL\'étudiant est amené à exploiter les fonctions d’un logiciel de gestion de projet en vue d’établir un échéancier de production et d’en faire le suivi. Le cours couvre également les aspects légaux relatifs à la réalisation d’un projet (droits d’auteurs, contrats, etc.). Enfin, l’étudiant développe sa capacité à écrire ou à répondre à un cahier des charges ainsi qu’à rédiger une offre de services professionnels.\n2-1-2\n1,67 unités	Aucun préalable', '582-4C2 Gestion de projets multimédias (45h)', '', 'publish', 'open', 'open', '', '582-4c2-gestion-de-projets-multimedias', '', '', '2022-03-28 12:53:08', '2022-03-28 16:53:08', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-4c2-gestion-de-projets-multimedias/', 0, 'post', '', 0),
(141, 1, '2020-10-07 15:41:00', '2020-10-07 15:41:00', 'Dans ce cours, l’étudiant poursuit son apprentissage de l’intégration de sites Web dynamiques à l’aide d’un gestionnaire de contenu. L’étudiant apprend à développer par programmation des thèmes personnalisés pour répondre aux besoins spécifiques du design d’interfaces des sites Web. L’étudiant apprend aussi les fonctionnalités avancées du gestionnaire de contenu, lui permettant entre autres à programmer des extensions servant les fonctionnalités des sites Web à développer. De plus, l’étudiant est initié à l’utilisation et à l’intégration par programmation des bases de données.\nCe cours couvre également l’intégration et l’interfaçage entre le langage utilisé du côté du serveur et les technologies utilisées du côté client. Enfin, l’étudiant poursuit son apprentissage des techniques de test pour contrôler la qualité d’un site Web et valider sa conformité en regard des normes et des standards en vigueur.\n3-3-2\n2,67 unités	Préalable absolu : Création de sites Web dynamiques', '582-4W4 Conception d’interfaces et développement Web (90h)', '', 'publish', 'open', 'open', '', '582-4w4-conception-dinterfaces-et-developpement-web', '', '', '2022-04-06 17:25:28', '2022-04-06 21:25:28', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-4w4-conception-dinterfaces-et-developpement-web/', 0, 'post', '', 0),
(142, 1, '2020-10-07 15:41:00', '2020-10-07 13:41:00', 'Dans ce cours qui s\'appuie sur une pédagogie par projets, l’étudiant réalise un projet d’envergure en équipe de travail. C’est l’occasion pour l’étudiant d’appliquer et d’intégrer l’ensemble des compétences acquises afin de réaliser un prototype de jeu numérique. Il franchit, en collaboration avec les membres de son équipe, toutes les étapes du processus de production d’une telle application, qui sont : la conception du produit, la planification de sa production, la réalisation et l’intégration des médias, la programmation de l’interactivité, la réalisation des tests pour contrôler la qualité du produit ainsi que la rédaction du guide utilisateur et la présentation du produit fini. Par le fait même, ce cours initie l’étudiant à la communication interpersonnelle et à l’intégration à une équipe de production multimédia.\n2-5-5\n4 unités Préalable relatif: Création de jeu 3D', '360-4J4 Création de jeu en équipe (105h)', '', 'publish', 'open', 'open', '', '360-4j4-creation-de-jeu-en-equipe-105h', '', '', '2022-04-06 17:25:40', '2022-04-06 21:25:40', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/360-4j4-creation-de-jeu-en-equipe-105h/', 0, 'post', '', 0),
(143, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'En session 4, l\'étudiant doit choisir entre ce cours et le cours Animation 3D.\nDans ce cours, l\'étudiant ayant un intérêt plus marqué pour la programmation a la possibilité d\'approfondir les acquis des cours de la séquence Web en s\'initiant à des technologies permettant de réaliser des applications riches du côté du client.\nIl apprendra à utiliser un cadriciel côté client pour produire un site Web dynamique dont l\'interface utilisateur réactive répond en temps réel aux modifications d\'états des données de l\'application.  L\'intégration d’effets de transition et d\'animation dans l’interface-utilisateur est également couverte.\n3-2-2\n2,33 unités	Préalable relatif : Création de sites Web dynamiques', '582-4PA Interfaces Web réactives et animées - Cours au choix (75h)', '', 'publish', 'open', 'open', '', '582-4pa-interfaces-web-reactives-et-animees-cours-au-choix-75h', '', '', '2022-04-06 17:27:13', '2022-04-06 21:27:13', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-4pa-interfaces-web-reactives-et-animees-cours-au-choix-75h/', 0, 'post', '', 0),
(144, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'En session 4, l\'étudiant doit choisir entre ce cours et le cours Interfaces Web réactives et animées.\nCe cours a pour but de permettre à l’étudiant d’approfondir les notions acquises dans le cours « 582-3M5 : Imagerie 3D » et de les appliquer dans la création de scènes élaborées. Le cours approfondit également les techniques de scénarisation couvertes dans les cours précédents.\nL’étudiant apprend notamment les outils et techniques de modélisation organique ainsi que les techniques d’organisation des hiérarchies, de montage des systèmes d’articulation et d’animation. Enfin, l’étudiant apprend à maîtriser les techniques d’optimisation et d’exportation en vue de diffuser les productions 3D pour le Web ou pour des applications 3D en temps réel.\n3-2-2\n2,33 unités	Préalable relatif : Imagerie 3D', '582-4MB Animation 3D (75h)', '', 'publish', 'open', 'open', '', '582-4mb-animation-3d-75h', '', '', '2022-04-06 17:31:02', '2022-04-06 21:31:02', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-4mb-animation-3d-75h/', 0, 'post', '', 0),
(145, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Ce cours permet à l’étudiant d\'acquérir des habiletés en recherche, en organisation et en transmission d’informations numériques. L\'étudiant est initié aux notions de base liées à la veille informationnelle et apprend les fondements de la recherche d’informations par le biais de l’emploi des nouvelles technologies et des sources spécialisées. Il est aussi amené à développer son esprit critique afin d’évaluer la qualité de l’information recueillie. \nLes apprentissages de ce cours visent à permettre à l\'étudiant de se situer quant à son orientation professionnelle et d\'identifier le sujet de son projet de fin d’études et d\'en déterminer les objectifs de recherche en lien avec son choix vocationnel.  Il prépare son intégration sur le marché du travail.\n1-2-1\n1,33 unités	Aucun préalable', '393-5E1 Méthodes de recherche et préparation au marché du travail (45h)', '', 'publish', 'open', 'open', '', '393-5e1-methodes-de-recherche-et-preparation-au-marche-du-travail-45h', '', '', '2022-03-28 13:36:16', '2022-03-28 17:36:16', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/393-5e1-methodes-de-recherche-et-preparation-au-marche-du-travail-45h/', 0, 'post', '', 0),
(146, 1, '2020-10-07 15:41:00', '2020-10-07 16:41:00', 'Ce cours permet à l’étudiant de développer ses habiletés en matière de communication interpersonnelle et de mieux interagir dans une équipe multimédia. L’étudiant est appelé à développer sa capacité́ à communiquer et à entrer en relation avec autrui sur les plans personnel et professionnel, notamment avec ses collègues de travail ou ses supérieurs immédiats. Les notions essentielles acquises dans ce cours s’appliquent à la prévention des conflits interpersonnels et à la résolution de problèmes d’équipe notamment dans le cours de Projet Web. De plus, ce cours initie l’étudiant à la présentation du produit tout en favorisant les interactions et la collaboration avec les clients.\n1-2-1\n1,33 unités	Corequis : Projet Web en équipe', '350-5N1 Communication et dynamique d’une équipe de travail (45h)', '', 'publish', 'open', 'open', '', '350-5n1-communication-et-dynamique-dune-equipe-de-travail-45h', '', '', '2022-03-28 13:36:16', '2022-03-28 17:36:16', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/350-5n1-communication-et-dynamique-dune-equipe-de-travail-45h/', 0, 'post', '', 0),
(147, 1, '2020-10-07 15:41:00', '2020-10-07 13:41:00', 'Préalable relatif : Conception d’interfaces et développement Web\nDans ce cours, qui s\'appuie sur une pédagogie par projets, l’étudiant participe à la réalisation d’un produit multimédia en ligne pour un client. C’est l’occasion pour l’étudiant d’appliquer et d’intégrer l’ensemble des compétences et des notions acquises et de s’initier à des méthodes et des techniques de travail professionnelles. Il franchit, en collaboration avec les membres de son équipe de production, toutes les étapes du processus de production d’une telle application, qui sont : la conception du produit, la planification de sa production, la réalisation et l’intégration des médias, la programmation de l’interactivité, la réalisation des tests pour contrôler la qualité du produit ainsi que la rédaction du guide utilisateur et la présentation du produit fini. Il est également amené à mettre en pratique une approche client basée sur un climat de confiance. Le cours permet également la mise en application de différents outils facilitant la réalisation de projet : communication entre équipiers, gestion de code source, gestion des bogues.  De plus, une attention particulière est portée à la relation avec le client ainsi qu’à la prévention et à la gestion des conflits entre coéquipiers.\n2-5-5\n4 unités	Corequis : Communication et dynamique d’une équipe de travail', '582-5W5	Projet Web en équipe (105h)', '', 'publish', 'open', 'open', '', '582-5w5-projet-web-en-equipe-105h', '', '', '2022-04-06 17:27:28', '2022-04-06 21:27:28', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-5w5-projet-web-en-equipe-105h/', 0, 'post', '', 0),
(148, 1, '2020-10-07 15:41:00', '2020-10-07 19:41:00', 'En session 5, l\'étudiant doit choisir entre ce cours et le cours Technologies émergentes et avancées – volet Programmation.\nDans ce cours, l’étudiant davantage intéressé par les aspects créatifs du multimédia est amené à explorer et tester des approches novatrices et émergentes en multimédia telles que : système de captation de mouvement, réalité virtuelle, réalité augmentée, environnements immersifs et habillage vidéo, vidéo 360 degrés.\n2-2-2\n2 unités	Aucun préalable', '582-5MB	Technologies émergentes et avancées – volet Création (60h)', '', 'publish', 'open', 'open', '', '582-5mbtechnologies-emergentes-et-avancees-volet-creation-60h', '', '', '2022-04-06 17:30:33', '2022-04-06 21:30:33', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-5mbtechnologies-emergentes-et-avancees-volet-creation-60h/', 0, 'post', '', 0),
(149, 1, '2020-10-07 15:41:00', '2020-10-07 19:41:00', 'Le stage en entreprise complète la formation de l’étudiant en lui permettant d\'intégrer et de mettre en application ses différents acquis dans le milieu professionnel.  L’étudiant joint une véritable équipe de travail en multimédia, ce qui lui permet également de réaliser une synthèse de ses compétences par la réalisation de mandats concrets et réels et de tâches spécifiques visant à répondre aux besoins de l’entreprise et de ses clients.\n1-18-1\n6,67 unités	Préalable absolu : Création de jeu en équipe\nPréalable absolu : Projet Web en équipe', '582-6N3 Stage (285h)', '', 'publish', 'open', 'open', '', '582-6n3-stage-285h', '', '', '2022-04-06 17:28:29', '2022-04-06 21:28:29', '', 0, 'http://localhost/2020-production/index.php/2020/10/07/582-6n3-stage-285h/', 0, 'post', '', 0),
(150, 1, '2020-10-09 00:04:16', '2020-10-08 22:04:16', 'Dans ce cours qui s\'appuie sur une pédagogie par projets, l’étudiant réalise un projet d’envergure en équipe de travail. C’est l’occasion pour l’étudiant d’appliquer et d’intégrer l’ensemble des compétences acquises afin de réaliser un prototype de jeu numérique. Il franchit, en collaboration avec les membres de son équipe, toutes les étapes du processus de production d’une telle application, qui sont : la conception du produit, la planification de sa production, la réalisation et l’intégration des médias, la programmation de l’interactivité, la réalisation des tests pour contrôler la qualité du produit ainsi que la rédaction du guide utilisateur et la présentation du produit fini. Par le fait même, ce cours initie l’étudiant à la communication interpersonnelle et à l’intégration à une équipe de production multimédia.\n2-5-5\n4 unités Préalable relatif: Création de jeu 3D', '582-4J4 Création de jeu en équipe (105h)', '', 'inherit', 'closed', 'closed', '', '1412-revision-v1', '', '', '2020-10-09 00:04:16', '2020-10-08 22:04:16', '', 1412, 'http://localhost/2020-production/index.php/2020/10/09/1412-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2022-03-07 21:16:39', '2022-03-07 20:16:39', '', 'Collège de Maisonneuve', '', 'publish', 'closed', 'closed', '', 'college-de-maisonneuve', '', '', '2022-03-07 21:16:39', '2022-03-07 20:16:39', '', 0, 'http://localhost:81/4w4/?p=165', 1, 'nav_menu_item', '', 0),
(166, 1, '2022-03-07 21:16:39', '2022-03-07 20:16:39', '', 'GameBanana', '', 'publish', 'closed', 'closed', '', 'gamebanana', '', '', '2022-03-07 21:16:39', '2022-03-07 20:16:39', '', 0, 'http://localhost:81/4w4/?p=166', 2, 'nav_menu_item', '', 0),
(167, 1, '2022-03-07 21:16:39', '2022-03-07 20:16:39', '', 'Super Mario Odyssey', '', 'publish', 'closed', 'closed', '', 'super-mario-odyssey', '', '', '2022-03-07 21:16:39', '2022-03-07 20:16:39', '', 0, 'http://localhost:81/4w4/?p=167', 3, 'nav_menu_item', '', 0),
(168, 1, '2022-03-07 21:16:40', '2022-03-07 20:16:40', '', 'SAAQ', '', 'publish', 'closed', 'closed', '', 'saaq', '', '', '2022-03-07 21:16:40', '2022-03-07 20:16:40', '', 0, 'http://localhost:81/4w4/?p=168', 4, 'nav_menu_item', '', 0),
(169, 1, '2022-03-07 21:57:05', '2022-03-07 20:18:47', ' ', '', '', 'publish', 'closed', 'closed', '', '169', '', '', '2022-03-07 21:57:05', '2022-03-07 20:57:05', '', 0, 'http://localhost:81/4w4/?p=169', 4, 'nav_menu_item', '', 0),
(170, 1, '2022-03-07 21:57:05', '2022-03-07 20:18:47', '', 'SiteGround', '', 'publish', 'closed', 'closed', '', 'siteground', '', '', '2022-03-07 21:57:05', '2022-03-07 20:57:05', '', 0, 'http://localhost:81/4w4/?p=170', 2, 'nav_menu_item', '', 0),
(171, 1, '2022-03-07 21:57:05', '2022-03-07 20:18:47', '', 'GitHub', '', 'publish', 'closed', 'closed', '', 'github', '', '', '2022-03-07 21:57:05', '2022-03-07 20:57:05', '', 0, 'http://localhost:81/4w4/?p=171', 3, 'nav_menu_item', '', 0),
(172, 1, '2022-03-07 21:57:05', '2022-03-07 20:20:49', '', 'TIM', '', 'publish', 'closed', 'closed', '', 'tim', '', '', '2022-03-07 21:57:05', '2022-03-07 20:57:05', '', 0, 'http://localhost:81/4w4/?p=172', 5, 'nav_menu_item', '', 0),
(173, 1, '2022-03-28 12:41:33', '2022-03-07 20:30:59', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2022-03-28 12:41:33', '2022-03-28 16:41:33', '', 0, 'http://localhost:81/4w4/?p=173', 1, 'nav_menu_item', '', 0),
(174, 1, '2022-03-07 21:36:05', '2022-03-07 20:36:05', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-03-07 21:36:05', '2022-03-07 20:36:05', '', 1, 'http://localhost:81/4w4/?p=174', 0, 'revision', '', 0),
(175, 1, '2022-03-07 21:36:06', '2022-03-07 20:36:06', 'Ce cours permet à l\'étudiant d\'intégrer différents types de médias à l\'aide des fonctionnalités d\'un logiciel d\'intégration 3D. L\'étudiant est amené à contrôler et à animer les éléments d\'une application multimédia par programmation dans un environnement 3D.\nCe cours initie l’étudiant à l’utilisation d’un environnement d’intégration de la 3D en temps réel.  L’accent est d’abord mis sur l’apprentissage des notions de base de la \n3D-temps réel et de l’intégration 3D (systèmes de coordonnées, vecteurs, types et propriétés d’objets 3D, caméra, rendu en temps réel, etc.). \nEnsuite l’étudiant est amené à maîtriser les outils et les fonctionnalités de base d’un logiciel d’intégration 3D, afin d\'importer et prendre en charge des éléments 3D, paramétrer les comportements ainsi que programmer l’interactivité. \nEnfin, par la création d’un prototype simple, l’étudiant est à même d’apprendre les concepts et les techniques de base reliées à l’intégration d’un jeu numérique.\n3-2-3\n2,67 unités	Préalable relatif: Création de jeu 2D', '582-3J3 Création de jeu 3D (75h)', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2022-03-07 21:36:06', '2022-03-07 20:36:06', '', 139, 'http://localhost:81/4w4/?p=175', 0, 'revision', '', 0),
(176, 1, '2022-03-07 21:36:06', '2022-03-07 20:36:06', 'Ce cours initie l\'étudiant aux rudiments de la gestion d’un projet multimédia. L’étudiant apprend à analyser les besoins liés à la réalisation du projet en termes de ressources humaines, matérielles et budgétaires.  À cet effet, il est initié aux méthodes de gestion classiques, ainsi qu’aux méthodes dites « agiles », qu’il sera appelé à utiliser dans le cadre du cours « 582-5W5 : Projet Web en équipe ».\nL\'étudiant est amené à exploiter les fonctions d’un logiciel de gestion de projet en vue d’établir un échéancier de production et d’en faire le suivi. Le cours couvre également les aspects légaux relatifs à la réalisation d’un projet (droits d’auteurs, contrats, etc.). Enfin, l’étudiant développe sa capacité à écrire ou à répondre à un cahier des charges ainsi qu’à rédiger une offre de services professionnels.\n2-1-2\n1,67 unités	Aucun préalable', '582-4C2 Gestion de projets multimédias (45h)', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2022-03-07 21:36:06', '2022-03-07 20:36:06', '', 140, 'http://localhost:81/4w4/?p=176', 0, 'revision', '', 0),
(177, 1, '2022-03-07 21:36:07', '2022-03-07 20:36:07', 'Dans ce cours, l’étudiant poursuit son apprentissage de l’intégration de sites Web dynamiques à l’aide d’un gestionnaire de contenu. L’étudiant apprend à développer par programmation des thèmes personnalisés pour répondre aux besoins spécifiques du design d’interfaces des sites Web. L’étudiant apprend aussi les fonctionnalités avancées du gestionnaire de contenu, lui permettant entre autres à programmer des extensions servant les fonctionnalités des sites Web à développer. De plus, l’étudiant est initié à l’utilisation et à l’intégration par programmation des bases de données.\nCe cours couvre également l’intégration et l’interfaçage entre le langage utilisé du côté du serveur et les technologies utilisées du côté client. Enfin, l’étudiant poursuit son apprentissage des techniques de test pour contrôler la qualité d’un site Web et valider sa conformité en regard des normes et des standards en vigueur.\n3-3-2\n2,67 unités	Préalable absolu : Création de sites Web dynamiques', '582-4W4 Conception d’interfaces et développement Web (90h)', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2022-03-07 21:36:07', '2022-03-07 20:36:07', '', 141, 'http://localhost:81/4w4/?p=177', 0, 'revision', '', 0),
(178, 1, '2022-03-07 21:36:07', '2022-03-07 20:36:07', 'Dans ce cours qui s\'appuie sur une pédagogie par projets, l’étudiant réalise un projet d’envergure en équipe de travail. C’est l’occasion pour l’étudiant d’appliquer et d’intégrer l’ensemble des compétences acquises afin de réaliser un prototype de jeu numérique. Il franchit, en collaboration avec les membres de son équipe, toutes les étapes du processus de production d’une telle application, qui sont : la conception du produit, la planification de sa production, la réalisation et l’intégration des médias, la programmation de l’interactivité, la réalisation des tests pour contrôler la qualité du produit ainsi que la rédaction du guide utilisateur et la présentation du produit fini. Par le fait même, ce cours initie l’étudiant à la communication interpersonnelle et à l’intégration à une équipe de production multimédia.\n2-5-5\n4 unités Préalable relatif: Création de jeu 3D', '582-4J4 Création de jeu en équipe (105h)', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2022-03-07 21:36:07', '2022-03-07 20:36:07', '', 142, 'http://localhost:81/4w4/?p=178', 0, 'revision', '', 0),
(179, 1, '2022-03-07 21:36:08', '2022-03-07 20:36:08', 'En session 4, l\'étudiant doit choisir entre ce cours et le cours Animation 3D.\nDans ce cours, l\'étudiant ayant un intérêt plus marqué pour la programmation a la possibilité d\'approfondir les acquis des cours de la séquence Web en s\'initiant à des technologies permettant de réaliser des applications riches du côté du client.\nIl apprendra à utiliser un cadriciel côté client pour produire un site Web dynamique dont l\'interface utilisateur réactive répond en temps réel aux modifications d\'états des données de l\'application.  L\'intégration d’effets de transition et d\'animation dans l’interface-utilisateur est également couverte.\n3-2-2\n2,33 unités	Préalable relatif : Création de sites Web dynamiques ', '582-4PA Interfaces Web réactives et animées - Cours au choix (75h)', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2022-03-07 21:36:08', '2022-03-07 20:36:08', '', 143, 'http://localhost:81/4w4/?p=179', 0, 'revision', '', 0),
(180, 1, '2022-03-07 21:36:08', '2022-03-07 20:36:08', 'En session 4, l\'étudiant doit choisir entre ce cours et le cours Interfaces Web réactives et animées.\nCe cours a pour but de permettre à l’étudiant d’approfondir les notions acquises dans le cours « 582-3M5 : Imagerie 3D » et de les appliquer dans la création de scènes élaborées. Le cours approfondit également les techniques de scénarisation couvertes dans les cours précédents.\nL’étudiant apprend notamment les outils et techniques de modélisation organique ainsi que les techniques d’organisation des hiérarchies, de montage des systèmes d’articulation et d’animation. Enfin, l’étudiant apprend à maîtriser les techniques d’optimisation et d’exportation en vue de diffuser les productions 3D pour le Web ou pour des applications 3D en temps réel.\n3-2-2\n2,33 unités	Préalable relatif : Imagerie 3D ', '582-4MB Animation 3D (75h)', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2022-03-07 21:36:08', '2022-03-07 20:36:08', '', 144, 'http://localhost:81/4w4/?p=180', 0, 'revision', '', 0),
(181, 1, '2022-03-07 21:36:09', '2022-03-07 20:36:09', 'Ce cours permet à l’étudiant d\'acquérir des habiletés en recherche, en organisation et en transmission d’informations numériques. L\'étudiant est initié aux notions de base liées à la veille informationnelle et apprend les fondements de la recherche d’informations par le biais de l’emploi des nouvelles technologies et des sources spécialisées. Il est aussi amené à développer son esprit critique afin d’évaluer la qualité de l’information recueillie. \nLes apprentissages de ce cours visent à permettre à l\'étudiant de se situer quant à son orientation professionnelle et d\'identifier le sujet de son projet de fin d’études et d\'en déterminer les objectifs de recherche en lien avec son choix vocationnel.  Il prépare son intégration sur le marché du travail.\n1-2-1\n1,33 unités	Aucun préalable', '393-5E1 Méthodes de recherche et préparation au marché du travail (45h)', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2022-03-07 21:36:09', '2022-03-07 20:36:09', '', 145, 'http://localhost:81/4w4/?p=181', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(182, 1, '2022-03-07 21:36:09', '2022-03-07 20:36:09', 'Ce cours permet à l’étudiant de développer ses habiletés en matière de communication interpersonnelle et de mieux interagir dans une équipe multimédia. L’étudiant est appelé à développer sa capacité́ à communiquer et à entrer en relation avec autrui sur les plans personnel et professionnel, notamment avec ses collègues de travail ou ses supérieurs immédiats. Les notions essentielles acquises dans ce cours s’appliquent à la prévention des conflits interpersonnels et à la résolution de problèmes d’équipe notamment dans le cours de Projet Web. De plus, ce cours initie l’étudiant à la présentation du produit tout en favorisant les interactions et la collaboration avec les clients.\n1-2-1\n1,33 unités	Corequis : Projet Web en équipe', '350-5N1 Communication et dynamique d’une équipe de travail (45h)', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2022-03-07 21:36:09', '2022-03-07 20:36:09', '', 146, 'http://localhost:81/4w4/?p=182', 0, 'revision', '', 0),
(183, 1, '2022-03-07 21:36:09', '2022-03-07 20:36:09', 'Dans ce cours, les notions acquises dans les cours « 582-1W1 : Mise en page Web » et « 582-2W2 : Animation et interactivité Web » sont approfondies et complétées par des aspects plus avancés, propres à la génération dynamique de pages Web. L’étudiant est d’abord initié à la programmation HTTP de base. Utilisant un langage de programmation, il apprend à traiter les paramètres et entêtes d’une requête HTTP pour générer de façon dynamique la réponse HTTP. De plus, l’étudiant apprend à utiliser la librairie de fonctions essentielles du langage de programmation pour développer un \nsite Web.\nEnsuite, l’étudiant apprend à intégrer un site Web dynamique à l’aide d’un gestionnaire de contenu.  Pour ce faire, l’étudiant apprend à utiliser les fonctionnalités de base du gestionnaire de contenu.  Il apprend aussi à adapter et personnaliser les interfaces à partir de thèmes, le tout en appliquant les apprentissages des cours « 582-1W1 : Mise en page Web », « 582-2W2 : Animation et interactivité Web » et « 582-3C1 : Design d’interactivité » afin de produire des sites Web dont les interfaces suivent les meilleures pratiques de l’utilisabilité et de l’adaptabilité Web. Enfin, l\'étudiant poursuit son apprentissage d’un environnement de travail collaboratif.\n3-3-3\n3 unités Préalable relatif : Animation et interactivité Web', '582-3W3 Création de sites Web dynamiques (90h)', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2022-03-07 21:36:09', '2022-03-07 20:36:09', '', 138, 'http://localhost:81/4w4/?p=183', 0, 'revision', '', 0),
(184, 1, '2022-03-07 21:36:10', '2022-03-07 20:36:10', 'L’étudiant apprend à concevoir des expériences interactives en plaçant les besoins de l’utilisateur au cœur de sa création.\nCe cours transpose les techniques de conception et de communication graphique dans l’univers de l’interactivité. L’étudiant apprend à concevoir les éléments d’une interface multimédia, notamment en ce qui a trait au design de la navigation et de l’interactivité. Il apprend également les méthodes pour intégrer l’expérience utilisateur dans ses projets multimédias. \nCe cours développe chez l’étudiant la capacité de communiquer efficacement à l’utilisateur d’un produit multimédia en fonction de ses besoins, et ce, dans le respect des normes d’utilisabilité et d’accessibilité en vigueur dans l’industrie. \nDifférents types de produits sont mis en valeur tout au long de l’apprentissage, notamment par la création d’interfaces Web faisant appel aux langages de balisage et aux feuilles de styles. L’étudiant approfondit le développement de sa capacité d’analyse et ses compétences à présenter sa création.\n3-2-3\n2,67 unités	Préalable relatif : Conception graphique et imagerie vectorielle', '582-3C1 Design d’interactivité (75h)', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2022-03-07 21:36:10', '2022-03-07 20:36:10', '', 137, 'http://localhost:81/4w4/?p=184', 0, 'revision', '', 0),
(185, 1, '2022-03-07 21:36:10', '2022-03-07 20:36:10', 'Dans ce cours, l’étudiant est initié au monde de l’imagerie de synthèse. Il est amené à maîtriser les outils et les fonctionnalités de base d’un logiciel de production 3D pour la création d\'images fixes (ex : interface graphique, logo ou autres objets). \nIl apprend les techniques et méthodes de travail liées à la modélisation, à la création et à l’application de matériaux et de textures ainsi qu’aux techniques d’éclairage et de rendu en image. Enfin, des principes de scénarisation liés à l’univers de la 3D sont également abordés.\n3-2-3\n2,67 unités	Préalable relatif : Conception graphique et imagerie vectorielle', '582-3M5	Imagerie 3D (75h)', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-03-07 21:36:10', '2022-03-07 20:36:10', '', 136, 'http://localhost:81/4w4/?p=185', 0, 'revision', '', 0),
(186, 1, '2022-03-07 21:36:10', '2022-03-07 20:36:10', '3-2-3 2,67 unités Aucun préalable. Ce cours initie l’étudiant au traitement des images en mouvement, au traitement du son ainsi qu\'aux bases de la scénarisation linéaire.  L’étudiant apprend à utiliser les périphériques associés au traitement du son et de la vidéo et à exploiter de façon créative les fonctions des logiciels de traitement vidéo et sonore. Les techniques de montage (structure narrative, affinage de coupe, correction de couleur, etc.) sont étudiées. L’étudiant apprend à représenter ses idées et ses concepts par le dessin et l’écrit, à l’aide de scénarimages, de synopsis et de scénarios. Les particularités de la fonction de travail liées au traitement de la vidéo, du son, ainsi qu\'à la scénarisation sont présentées de même que les compétences techniques et comportementales associées.', '582-1M1 Création vidéo (75h)', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2022-03-07 21:36:10', '2022-03-07 20:36:10', '', 128, 'http://localhost:81/4w4/?p=186', 0, 'revision', '', 0),
(187, 1, '2022-03-07 21:36:11', '2022-03-07 20:36:11', 'Ce cours initie l\'étudiant aux rudiments de la conception et de la communication graphique ainsi qu\'au traitement des images fixes matricielles. On y aborde les notions de base sur le langage graphique, la couleur, le mode d’organisation picturale en lien avec le design d’une image ou d’une interface. L’apprentissage d’un processus de conception structuré et de techniques d’idéation permet à l’étudiant de faire émerger des concepts créatifs respectant des objectifs de communication précis et le public cible. L\'étudiant est amené à exploiter de façon créative et efficace les diverses fonctions d’un logiciel de traitement de l\'image numérique, à utiliser des techniques de montage et de découpage d’images et à appliquer des effets spéciaux diversifiés. Le cours aborde plus particulièrement les notions de photoréalisme ainsi que des techniques de travail permettant l’intégration harmonieuse d’images dans d’autres logiciels multimédias. De plus, les méthodes de travail pour la réalisation de maquettes graphiques d’un document multimédia sont abordées. \nLes particularités de la fonction de travail liées au design graphique et au traitement des images fixes sont présentées, de même que les compétences techniques et comportementales associées.\n3-3-3 - 3 unités - Aucun préalable.', '582-1M2 Conception graphique et imagerie matricielle (90h)', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2022-03-07 21:36:11', '2022-03-07 20:36:11', '', 129, 'http://localhost:81/4w4/?p=187', 0, 'revision', '', 0),
(188, 1, '2022-03-07 21:36:11', '2022-03-07 20:36:11', 'Dans ce cours, l\'étudiant apprend les techniques de mise en page Web en utilisant les langages de balisage et de feuilles de styles.  L\'étudiant apprend également à analyser et schématiser l\'arborescence d\'un site Web, à reproduire des maquettes sous forme de pages Web, et à créer des pages Web en intégrant les différents types de médias.  L\'introduction à un outil de gestion de code source est également couverte dans ce cours.\nLes particularités de la fonction de travail associées au domaine du Web sont présentées, de même que les compétences techniques et comportementales associées.\n3-2-3  2,67 unités	Aucun préalable', '582-1W1 Mise en page Web (75h)', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2022-03-07 21:36:11', '2022-03-07 20:36:11', '', 130, 'http://localhost:81/4w4/?p=188', 0, 'revision', '', 0),
(189, 1, '2022-03-07 21:36:12', '2022-03-07 20:36:12', 'Ce cours est consacré aux concepts de base nécessaires à la création d’un jeu numérique. Le cours porte, d’une part, sur l’animation des médias : l’étudiant y apprend à importer et à intégrer des médias dans un environnement de création de jeu. De plus, il se familiarise avec les techniques de création d’animations à partir d’images simples et des feuilles de « sprites ». D’autre part, le cours couvre la gestion des interactions : l’étudiant y est initié aux concepts de base de l’interactivité dans un contexte de jeu, ainsi qu’aux techniques de conception, de codification et de vérification des algorithmes nécessaires à cette fin.\nDans ce cours, l’étudiant est également initié à l’environnement matériel et technologique dans lequel il évoluera tout au long de sa formation et de sa carrière.  Les particularités de la fonction de travail liées au domaine du jeu sont présentées, de même que les compétences techniques et comportementales associées.\n3-2-3 2,67 unités	Aucun préalable', '582-1J1 Animation et interactivité en jeu (75h)', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2022-03-07 21:36:12', '2022-03-07 20:36:12', '', 131, 'http://localhost:81/4w4/?p=189', 0, 'revision', '', 0),
(190, 1, '2022-03-07 21:36:12', '2022-03-07 20:36:12', 'Ce cours permet d\'approfondir la formation de l’étudiant en matière de traitement d’images en mouvement et de traitement sonore.  L’étudiant poursuit son apprentissage des techniques de prise de vues avec des caméras virtuelles. Il développe sa capacité à utiliser des techniques d’effets spéciaux visuels : animations graphiques, initiation à l’environnement 3D, caméras et lumières virtuelles, composition numérique et techniques d’écran vert.\nL\'étudiant est amené à appliquer adéquatement les techniques d\'optimisation des fichiers sonores et vidéo en fonction de différents modes de diffusion et d’intégration à un projet multimédia.\n2-2-3 2,33 unités Préalable relatif : Création vidéo', '582-2M3 Effets spéciaux et animation (60h)', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2022-03-07 21:36:12', '2022-03-07 20:36:12', '', 132, 'http://localhost:81/4w4/?p=190', 0, 'revision', '', 0),
(191, 1, '2022-03-07 21:36:12', '2022-03-07 20:36:12', 'Dans ce cours, l’étudiant poursuit l’apprentissage des notions liées à la conception, à la communication graphique et au traitement des images fixes vectorielles.\nL\'étudiant développe un concept créatif décliné en plusieurs volets. L\'étudiant apprend à utiliser la typographie selon les règles de l’art. Il a l\'opportunité d\'approfondir sa maîtrise de la communication graphique afin de produire un message adapté au public cible.\nPour ce faire, le cours aborde la conception d\'illustrations et des techniques de travail permettant l’intégration harmonieuse d’images dans d’autres logiciels multimédias. L\'étudiant apprendra à créer des agencements graphiques et typographiques comme des logos, des icônes web ainsi que des éléments de jeu en 2D.\nEnfin, l\'étudiant est amené à argumenter et justifier ses choix créatifs.\n3-3-3\n3 unités Préalable relatif : Conception graphique et imagerie matricielle', '582-2M4 Conception graphique et imagerie vectorielle (90h)', '582-2M4 Conception graphique et imagerie vectorielle (90h)', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2022-03-07 21:36:12', '2022-03-07 20:36:12', '', 133, 'http://localhost:81/4w4/?p=191', 0, 'revision', '', 0),
(192, 1, '2022-03-07 21:36:13', '2022-03-07 20:36:13', 'Ce cours permet à l\'étudiant d\'acquérir les compétences de base requises pour programmer l\'interactivité de l\'interface-utilisateur d\'une application multimédia en ligne. Les notions abordées dans les cours « 582-1W1 Mise en page Web » et « 582-1J1 Animation et interactivité en jeu » sont approfondies en les appliquant dans un contexte de création de sites Web interactifs, exécutables sur un poste client. \nL\'étudiant apprend à créer et afficher des éléments graphiques par programmation et à appliquer des effets de transition et d\'animation.  L\'accent est mis sur la gestion d\'événements, le développement d\'interfaces interactives et l\'adaptabilité multiplateformes. L\'étudiant apprend enfin à installer et utiliser les outils de développement adéquats pour améliorer sa productivité dans le contexte de la chaîne de production Web.\n3-2-3\n2,67 unités	Préalable relatif : Mise en page Web', '582-2W2	Animation et interactivité Web (75h)', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2022-03-07 21:36:13', '2022-03-07 20:36:13', '', 134, 'http://localhost:81/4w4/?p=192', 0, 'revision', '', 0),
(193, 1, '2022-03-07 21:36:15', '2022-03-07 20:36:15', 'Dans ce cours, l’étudiant approfondit la programmation graphique et s’initie aux concepts de base d\'un moteur de jeu. Le cours permet d\'approfondir la maîtrise de la structure d\'affichage ainsi que le contrôle de l\'animation et de l\'interactivité.\nPar la création d\'un prototype simple, l\'étudiant apprend les concepts de base reliés à l\'intégration d\'un jeu ou d\'une application interactive en exploitant les principales classes intégrées d’objets graphiques et médiatiques et en créant ses propres classes d’objets.\n2-2-2\n2 unités	Préalable relatif : Animation et interactivité en jeu', '582-2J2	Création de jeu 2D (60h)', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2022-03-07 21:36:15', '2022-03-07 20:36:15', '', 135, 'http://localhost:81/4w4/?p=193', 0, 'revision', '', 0),
(194, 1, '2022-03-28 12:41:33', '2022-03-07 20:37:03', 'Les cours du DEC en Techniques d’intégration multimédia', '', '', 'publish', 'closed', 'closed', '', '194', '', '', '2022-03-28 12:41:33', '2022-03-28 16:41:33', '', 0, 'http://localhost:81/4w4/?p=194', 2, 'nav_menu_item', '', 0),
(195, 1, '2022-03-07 21:57:05', '2022-03-07 20:57:05', ' ', '', '', 'publish', 'closed', 'closed', '', '195', '', '', '2022-03-07 21:57:05', '2022-03-07 20:57:05', '', 0, 'http://localhost:81/4w4/?p=195', 1, 'nav_menu_item', '', 0),
(197, 1, '2022-03-09 22:13:37', '2022-03-09 21:13:37', '', 'screenshot2', '', 'inherit', 'open', 'closed', '', 'screenshot2', '', '', '2022-03-09 22:13:37', '2022-03-09 21:13:37', '', 0, 'http://localhost:81/4w4/wp-content/uploads/2022/03/screenshot2.png', 0, 'attachment', 'image/png', 0),
(198, 1, '2022-03-14 18:10:08', '2022-03-14 17:10:08', '', 'LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc', '', 'inherit', 'open', 'closed', '', 'logo_vikings_shadows_6x6pouces-sur-fond-blanc', '', '', '2022-03-14 18:10:08', '2022-03-14 17:10:08', '', 0, 'http://localhost:81/4w4/wp-content/uploads/2022/03/LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2022-03-14 18:10:36', '2022-03-14 17:10:36', 'http://localhost:81/4w4/wp-content/uploads/2022/03/cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc.jpg', 'cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo_vikings_shadows_6x6pouces-sur-fond-blanc-jpg', '', '', '2022-03-14 18:10:36', '2022-03-14 17:10:36', '', 0, 'http://localhost:81/4w4/wp-content/uploads/2022/03/cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2022-03-14 18:10:41', '2022-03-14 17:10:41', '{\n    \"site_icon\": {\n        \"value\": 199,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-14 17:10:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e3982a22-2ebd-4a16-951e-4989eecace84', '', '', '2022-03-14 18:10:41', '2022-03-14 17:10:41', '', 0, 'http://localhost:81/4w4/2022/03/14/e3982a22-2ebd-4a16-951e-4989eecace84/', 0, 'customize_changeset', '', 0),
(202, 1, '2022-03-14 18:28:33', '2022-03-14 17:28:33', '{\n    \"site_icon\": {\n        \"value\": 199,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-14 17:28:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ff310b46-c7df-408d-9a2e-0d63b5bb93cf', '', '', '2022-03-14 18:28:33', '2022-03-14 17:28:33', '', 0, 'http://localhost:81/4w4/2022/03/14/ff310b46-c7df-408d-9a2e-0d63b5bb93cf/', 0, 'customize_changeset', '', 0),
(203, 1, '2022-03-14 19:13:07', '2022-03-14 18:13:07', 'http://localhost:81/4w4/wp-content/uploads/2022/03/cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-1.jpg', 'cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo_vikings_shadows_6x6pouces-sur-fond-blanc-1-jpg', '', '', '2022-03-14 19:13:07', '2022-03-14 18:13:07', '', 0, 'http://localhost:81/4w4/wp-content/uploads/2022/03/cropped-LOGO_VIKINGS_shadows_6x6pouces-Sur-fond-blanc-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2022-03-14 19:13:09', '2022-03-14 18:13:09', '{\n    \"HyppoliteC::custom_logo\": {\n        \"value\": 203,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-14 18:13:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '493c81fc-b5f1-472d-908a-e1c0d4634c59', '', '', '2022-03-14 19:13:09', '2022-03-14 18:13:09', '', 0, 'http://localhost:81/4w4/2022/03/14/493c81fc-b5f1-472d-908a-e1c0d4634c59/', 0, 'customize_changeset', '', 0),
(206, 1, '2022-03-15 22:44:18', '2022-03-15 21:44:18', '3-2-3 2,67 unités Aucun préalable. Ce cours initie l’étudiant au traitement des images en mouvement, au traitement du son ainsi qu\'aux bases de la scénarisation linéaire.  L’étudiant apprend à utiliser les périphériques associés au traitement du son et de la vidéo et à exploiter de façon créative les fonctions des logiciels de traitement vidéo et sonore. Les techniques de montage (structure narrative, affinage de coupe, correction de couleur, etc.) sont étudiées. L’étudiant apprend à représenter ses idées et ses concepts par le dessin et l’écrit, à l’aide de scénarimages, de synopsis et de scénarios. Les particularités de la fonction de travail liées au traitement de la vidéo, du son, ainsi qu\'à la scénarisation sont présentées de même que les compétences techniques et comportementales associées.', '582-1M1 Création vidéo (75h)', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2022-03-15 22:44:18', '2022-03-15 21:44:18', '', 127, 'http://localhost:81/4w4/?p=206', 0, 'revision', '', 0),
(230, 1, '2022-03-15 22:49:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 22:49:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/4w4/?p=230', 1, 'nav_menu_item', '', 0),
(231, 1, '2022-03-15 22:52:27', '2022-03-15 21:52:27', 'Le stage en entreprise complète la formation de l’étudiant en lui permettant d\'intégrer et de mettre en application ses différents acquis dans le milieu professionnel.  L’étudiant joint une véritable équipe de travail en multimédia, ce qui lui permet également de réaliser une synthèse de ses compétences par la réalisation de mandats concrets et réels et de tâches spécifiques visant à répondre aux besoins de l’entreprise et de ses clients.\n1-18-1\n6,67 unités	Préalable absolu : Création de jeu en équipe\nPréalable absolu : Projet Web en équipe', '582-6N3 Stage (285h)', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2022-03-15 22:52:27', '2022-03-15 21:52:27', '', 149, 'http://localhost:81/4w4/?p=231', 0, 'revision', '', 0),
(232, 1, '2022-03-15 22:52:55', '2022-03-15 21:52:55', 'Préalable relatif : Conception d’interfaces et développement Web\nDans ce cours, qui s\'appuie sur une pédagogie par projets, l’étudiant participe à la réalisation d’un produit multimédia en ligne pour un client. C’est l’occasion pour l’étudiant d’appliquer et d’intégrer l’ensemble des compétences et des notions acquises et de s’initier à des méthodes et des techniques de travail professionnelles. Il franchit, en collaboration avec les membres de son équipe de production, toutes les étapes du processus de production d’une telle application, qui sont : la conception du produit, la planification de sa production, la réalisation et l’intégration des médias, la programmation de l’interactivité, la réalisation des tests pour contrôler la qualité du produit ainsi que la rédaction du guide utilisateur et la présentation du produit fini. Il est également amené à mettre en pratique une approche client basée sur un climat de confiance. Le cours permet également la mise en application de différents outils facilitant la réalisation de projet : communication entre équipiers, gestion de code source, gestion des bogues.  De plus, une attention particulière est portée à la relation avec le client ainsi qu’à la prévention et à la gestion des conflits entre coéquipiers.\n2-5-5\n4 unités	Corequis : Communication et dynamique d’une équipe de travail', '582-5W5	Projet Web en équipe (105h)', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2022-03-15 22:52:55', '2022-03-15 21:52:55', '', 147, 'http://localhost:81/4w4/?p=232', 0, 'revision', '', 0),
(233, 1, '2022-03-15 22:54:56', '2022-03-15 21:54:56', 'En session 5, l\'étudiant doit choisir entre ce cours et le cours Technologies émergentes et avancées – volet Programmation.\nDans ce cours, l’étudiant davantage intéressé par les aspects créatifs du multimédia est amené à explorer et tester des approches novatrices et émergentes en multimédia telles que : système de captation de mouvement, réalité virtuelle, réalité augmentée, environnements immersifs et habillage vidéo, vidéo 360 degrés.\n2-2-2\n2 unités	Aucun préalable', '582-5MB	Technologies émergentes et avancées – volet Création (60h)', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2022-03-15 22:54:56', '2022-03-15 21:54:56', '', 148, 'http://localhost:81/4w4/?p=233', 0, 'revision', '', 0),
(234, 1, '2022-03-15 22:59:46', '2022-03-15 21:59:46', '<!-- wp:paragraph -->\n<p>Préalables: Relatif: Création de jeu en équipe (360-4J4-MA); En 5ème session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet création Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées en programmation de jeu. L\'étudiant davantage intéressé par les aspects techniques du jeu a l\'occasion d\'acquérir une spécialisation par l’apprentissage d’aspects avancés, liés à la programmation de jeux numériques parmi les suivants : jeu multijoueurs, réalité virtuelle, jeu pour appareil mobile avec gyroscope, intelligence artificielle, etc.</p>\n<!-- /wp:paragraph -->', '582-5JA Expérimentation en jeu - volet programmation (90h)', '', 'publish', 'open', 'open', '', '582-5ja-ma-experimentation-en-jeu-volet-programmation', '', '', '2022-04-06 17:24:11', '2022-04-06 21:24:11', '', 0, 'http://localhost:81/4w4/?p=234', 0, 'post', '', 0),
(235, 1, '2022-03-15 22:59:46', '2022-03-15 21:59:46', '<!-- wp:paragraph -->\n<p>Préalables: Relatif: Création de jeu en équipe (360-4J4-MA); En 5ème session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet création</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées en programmation de jeu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>L\'étudiant davantage intéressé par les aspects techniques du jeu a l\'occasion d\'acquérir une spécialisation par l’apprentissage d’aspects avancés, liés à la programmation de jeux numériques parmi les suivants : jeu multijoueurs, réalité virtuelle, jeu pour appareil mobile avec gyroscope, intelligence artificielle, etc.</p>\n<!-- /wp:paragraph -->', '582-5JA-MA - Expérimentation en jeu - volet programmation', '', 'inherit', 'closed', 'closed', '', '234-revision-v1', '', '', '2022-03-15 22:59:46', '2022-03-15 21:59:46', '', 234, 'http://localhost:81/4w4/?p=235', 0, 'revision', '', 0),
(236, 1, '2022-03-15 23:01:10', '2022-03-15 22:01:10', '<!-- wp:paragraph -->\n<p>Préalables: Relatif: Création de jeu en équipe (360-4J4-MA); En 5ème session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet création</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées en programmation de jeu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>L\'étudiant davantage intéressé par les aspects techniques du jeu a l\'occasion d\'acquérir une spécialisation par l’apprentissage d’aspects avancés, liés à la programmation de jeux numériques parmi les suivants : jeu multijoueurs, réalité virtuelle, jeu pour appareil mobile avec gyroscope, intelligence artificielle, etc.</p>\n<!-- /wp:paragraph -->', '582-5JA Expérimentation en jeu - volet programmation (90h)', '', 'inherit', 'closed', 'closed', '', '234-revision-v1', '', '', '2022-03-15 23:01:10', '2022-03-15 22:01:10', '', 234, 'http://localhost:81/4w4/?p=236', 0, 'revision', '', 0),
(237, 1, '2022-03-15 23:05:32', '2022-03-15 22:05:32', '<!-- wp:paragraph -->\n<p>Préalables: aucun; En session 5, l\'étudiant doit choisir entre ce cours et le cours Technologies émergentes et avancées – volet Création (582-5JB-MA).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dans ce cours, l’étudiant plus intéressé par les aspects techniques du multimédia est amené à explorer, tester et intégrer les nouvelles tendances en matière de programmation de produits multimédias interactifs. Ce cours est donc axé sur la démonstration et l’apprentissage des toutes dernières technologies en émergence dans le domaine.</p>\n<!-- /wp:paragraph -->', '582-5PA Technologies émergentes et avancées - volet programmation (60h)', '', 'publish', 'open', 'open', '', '582-5pa-technologies-emergentes-et-avancees-volet-programmation-60h', '', '', '2022-04-06 17:23:57', '2022-04-06 21:23:57', '', 0, 'http://localhost:81/4w4/?p=237', 0, 'post', '', 0),
(238, 1, '2022-03-15 23:05:32', '2022-03-15 22:05:32', '<!-- wp:paragraph -->\n<p>Préalables: aucun; En session 5, l\'étudiant doit choisir entre ce cours et le cours Technologies émergentes et avancées – volet Création (582-5JB-MA).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dans ce cours, l’étudiant plus intéressé par les aspects techniques du multimédia est amené à explorer, tester et intégrer les nouvelles tendances en matière de programmation de produits multimédias interactifs. Ce cours est donc axé sur la démonstration et l’apprentissage des toutes dernières technologies en émergence dans le domaine.</p>\n<!-- /wp:paragraph -->', '582-5PA Technologies émergentes et avancées - volet programmation (60h)', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2022-03-15 23:05:32', '2022-03-15 22:05:32', '', 237, 'http://localhost:81/4w4/?p=238', 0, 'revision', '', 0),
(239, 1, '2022-03-15 23:08:25', '2022-03-15 22:08:25', '<!-- wp:paragraph -->\n<p>Préalable: Relatif: Méthodes de recherche et préparation au marché du travail (393-5E1-MA); Absolu: Création de jeu en équipe (360-4J4-MA); Projet Web en équipe (582-5W5-MA).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ce cours permet à l’étudiant de se spécialiser dans un domaine de son choix par le biais d’un projet de recherche en multimédia qu\'il a identifié à la session précédente, dans le cours « 393-5E1 Méthodes de recherche et préparation au marché du travail ».<br>L\'étudiant planifie son projet de recherche, vérifie sa faisabilité sur le plan technique et le réalise. Par la suite, il doit concevoir et réaliser une production multimédia qui présente les résultats de son projet de recherche. La réalisation et la présentation de cette production multimédia constituent l\'Épreuve synthèse de programme (ÉSP). À travers l\'ÉSP, l\'étudiant doit démontrer qu\'il a atteint les compétences artistiques et techniques attendues d\'un intégrateur multimédia et qu’il a les attitudes nécessaires à son intégration sur le marché du travail.</p>\n<!-- /wp:paragraph -->', '582-6N2 Projet de fin d\'études (120h)', '', 'publish', 'open', 'open', '', '582-6n2-projet-de-fin-detudes-120h', '', '', '2022-04-06 17:23:47', '2022-04-06 21:23:47', '', 0, 'http://localhost:81/4w4/?p=239', 0, 'post', '', 0),
(240, 1, '2022-03-15 23:08:25', '2022-03-15 22:08:25', '<!-- wp:paragraph -->\n<p>Préalable: Relatif: Méthodes de recherche et préparation au marché du travail (393-5E1-MA); Absolu: Création de jeu en équipe (360-4J4-MA); Projet Web en équipe (582-5W5-MA).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ce cours permet à l’étudiant de se spécialiser dans un domaine de son choix par le biais d’un projet de recherche en multimédia qu\'il a identifié à la session précédente, dans le cours « 393-5E1 Méthodes de recherche et préparation au marché du travail ».<br>L\'étudiant planifie son projet de recherche, vérifie sa faisabilité sur le plan technique et le réalise. Par la suite, il doit concevoir et réaliser une production multimédia qui présente les résultats de son projet de recherche. La réalisation et la présentation de cette production multimédia constituent l\'Épreuve synthèse de programme (ÉSP). À travers l\'ÉSP, l\'étudiant doit démontrer qu\'il a atteint les compétences artistiques et techniques attendues d\'un intégrateur multimédia et qu’il a les attitudes nécessaires à son intégration sur le marché du travail.</p>\n<!-- /wp:paragraph -->', '582-6N2 Projet de fin d\'études (120h)', '', 'inherit', 'closed', 'closed', '', '239-revision-v1', '', '', '2022-03-15 23:08:25', '2022-03-15 22:08:25', '', 239, 'http://localhost:81/4w4/?p=240', 0, 'revision', '', 0),
(241, 1, '2022-03-15 23:12:13', '2022-03-15 22:12:13', '<!-- wp:paragraph -->\n<p>En 5<sup>e</sup>&nbsp;session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet programmation<br>Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées ou des techniques complexes de création des médias pour le jeu. L\'étudiant plus intéressé par les aspects créatifs liés au jeu a l\'occasion d\'acquérir une spécialisation en étudiant des techniques d’effets visuels avancés pour le jeu numérique tels que : effets sur des images en temps réel, ajout de particules, de réflexions, d\'aberrations chromatiques, éclairages dynamiques et statiques, effets de dessin animé, optimisation de rendus pour appareil mobile, réalité virtuelle, etc.</p>\n<!-- /wp:paragraph -->', '582-5JB Expérimentation en jeu – volet création (90h)', '', 'publish', 'open', 'open', '', '582-5jb-experimentation-en-jeu-volet-creation-90h', '', '', '2022-04-06 17:23:23', '2022-04-06 21:23:23', '', 0, 'http://localhost:81/4w4/?p=241', 0, 'post', '', 0),
(242, 1, '2022-03-15 23:12:13', '2022-03-15 22:12:13', '<!-- wp:paragraph -->\n<p>En 5<sup>e</sup>&nbsp;session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet programmation<br>Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées ou des techniques complexes de création des médias pour le jeu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>L\'étudiant plus intéressé par les aspects créatifs liés au jeu a l\'occasion d\'acquérir une spécialisation en étudiant des techniques d’effets visuels avancés pour le jeu numérique tels que : effets sur des images en temps réel, ajout de particules, de réflexions, d\'aberrations chromatiques, éclairages dynamiques et statiques, effets de dessin animé, optimisation de rendus pour appareil mobile, réalité virtuelle, etc.</p>\n<!-- /wp:paragraph -->', '582-5JB Expérimentation en jeu – volet création (90h)', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2022-03-15 23:12:13', '2022-03-15 22:12:13', '', 241, 'http://localhost:81/4w4/?p=242', 0, 'revision', '', 0),
(243, 1, '2022-03-15 23:15:29', '2022-03-15 22:15:29', '<!-- wp:paragraph -->\n<p>En session 5, l\'étudiant doit choisir entre ce cours et le cours Technologies émergentes et avancées – volet Programmation.<br>Dans ce cours, l’étudiant davantage intéressé par les aspects créatifs du multimédia est amené à explorer et tester des approches novatrices et émergentes en multimédia telles que : système de captation de mouvement, réalité virtuelle, réalité augmentée, environnements immersifs et habillage vidéo, vidéo 360 degrés.</p>\n<!-- /wp:paragraph -->', '582-5MB Technologies émergentes et avancées – volet Création (60h)', '', 'trash', 'open', 'open', '', '582-5mb-technologies-emergentes-et-avancees-volet-creation-60h__trashed', '', '', '2022-03-15 23:26:00', '2022-03-15 22:26:00', '', 0, 'http://localhost:81/4w4/?p=243', 0, 'post', '', 0),
(244, 1, '2022-03-15 23:15:29', '2022-03-15 22:15:29', '<!-- wp:paragraph -->\n<p>En session 5, l\'étudiant doit choisir entre ce cours et le cours Technologies émergentes et avancées – volet Programmation.<br>Dans ce cours, l’étudiant davantage intéressé par les aspects créatifs du multimédia est amené à explorer et tester des approches novatrices et émergentes en multimédia telles que : système de captation de mouvement, réalité virtuelle, réalité augmentée, environnements immersifs et habillage vidéo, vidéo 360 degrés.</p>\n<!-- /wp:paragraph -->', '582-5MB Technologies émergentes et avancées – volet Création (60h)', '', 'inherit', 'closed', 'closed', '', '243-revision-v1', '', '', '2022-03-15 23:15:29', '2022-03-15 22:15:29', '', 243, 'http://localhost:81/4w4/?p=244', 0, 'revision', '', 0),
(245, 1, '2022-03-28 12:41:33', '2022-03-15 22:19:23', ' ', '', '', 'publish', 'closed', 'closed', '', '245', '', '', '2022-03-28 12:41:33', '2022-03-28 16:41:33', '', 0, 'http://localhost:81/4w4/?p=245', 3, 'nav_menu_item', '', 0),
(246, 1, '2022-03-28 12:41:33', '2022-03-15 22:19:23', ' ', '', '', 'publish', 'closed', 'closed', '', '246', '', '', '2022-03-28 12:41:33', '2022-03-28 16:41:33', '', 0, 'http://localhost:81/4w4/?p=246', 4, 'nav_menu_item', '', 0),
(247, 1, '2022-03-28 12:41:33', '2022-03-15 22:19:23', ' ', '', '', 'publish', 'closed', 'closed', '', '247', '', '', '2022-03-28 12:41:33', '2022-03-28 16:41:33', '', 0, 'http://localhost:81/4w4/?p=247', 5, 'nav_menu_item', '', 0),
(248, 1, '2022-03-28 12:41:33', '2022-03-15 22:19:24', ' ', '', '', 'publish', 'closed', 'closed', '', '248', '', '', '2022-03-28 12:41:33', '2022-03-28 16:41:33', '', 0, 'http://localhost:81/4w4/?p=248', 6, 'nav_menu_item', '', 0),
(250, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:24', ' ', '', '', 'publish', 'closed', 'closed', '', '250', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=250', 7, 'nav_menu_item', '', 0),
(251, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:24', ' ', '', '', 'publish', 'closed', 'closed', '', '251', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=251', 8, 'nav_menu_item', '', 0),
(252, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:25', ' ', '', '', 'publish', 'closed', 'closed', '', '252', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=252', 9, 'nav_menu_item', '', 0),
(253, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:25', ' ', '', '', 'publish', 'closed', 'closed', '', '253', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=253', 10, 'nav_menu_item', '', 0),
(254, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:25', ' ', '', '', 'publish', 'closed', 'closed', '', '254', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=254', 11, 'nav_menu_item', '', 0),
(255, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:25', ' ', '', '', 'publish', 'closed', 'closed', '', '255', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=255', 12, 'nav_menu_item', '', 0),
(256, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:26', ' ', '', '', 'publish', 'closed', 'closed', '', '256', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=256', 13, 'nav_menu_item', '', 0),
(257, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:26', ' ', '', '', 'publish', 'closed', 'closed', '', '257', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=257', 14, 'nav_menu_item', '', 0),
(258, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:26', ' ', '', '', 'publish', 'closed', 'closed', '', '258', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=258', 15, 'nav_menu_item', '', 0),
(259, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:26', ' ', '', '', 'publish', 'closed', 'closed', '', '259', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=259', 16, 'nav_menu_item', '', 0),
(260, 1, '2022-03-28 12:41:34', '2022-03-15 22:19:27', ' ', '', '', 'publish', 'closed', 'closed', '', '260', '', '', '2022-03-28 12:41:34', '2022-03-28 16:41:34', '', 0, 'http://localhost:81/4w4/?p=260', 17, 'nav_menu_item', '', 0),
(261, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:27', ' ', '', '', 'publish', 'closed', 'closed', '', '261', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=261', 18, 'nav_menu_item', '', 0),
(262, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:27', ' ', '', '', 'publish', 'closed', 'closed', '', '262', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=262', 19, 'nav_menu_item', '', 0),
(263, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:28', '', '582-4PA Interfaces Web réactives et animées – Cours au choix (75h)', '', 'publish', 'closed', 'closed', '', '582-4pa-interfaces-web-reactives-et-animees-cours-au-choix-75h', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=263', 20, 'nav_menu_item', '', 0),
(264, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:28', ' ', '', '', 'publish', 'closed', 'closed', '', '264', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=264', 21, 'nav_menu_item', '', 0),
(265, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:28', '', '582-5JA Expérimentation en jeu – volet programmation (90h)', '', 'publish', 'closed', 'closed', '', '582-5ja-experimentation-en-jeu-volet-programmation-90h', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=265', 22, 'nav_menu_item', '', 0),
(266, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:29', ' ', '', '', 'publish', 'closed', 'closed', '', '266', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=266', 23, 'nav_menu_item', '', 0),
(267, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:29', ' ', '', '', 'publish', 'closed', 'closed', '', '267', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=267', 24, 'nav_menu_item', '', 0),
(269, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:29', '', '582-5PA Technologies émergentes et avancées – volet programmation (60h)', '', 'publish', 'closed', 'closed', '', '582-5pa-technologies-emergentes-et-avancees-volet-programmation-60h', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=269', 25, 'nav_menu_item', '', 0),
(270, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:30', ' ', '', '', 'publish', 'closed', 'closed', '', '270', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=270', 26, 'nav_menu_item', '', 0),
(271, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:30', '', '582-6N2 Projet de fin d’études (120h)', '', 'publish', 'closed', 'closed', '', '582-6n2-projet-de-fin-detudes-120h', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=271', 27, 'nav_menu_item', '', 0),
(272, 1, '2022-03-28 12:41:35', '2022-03-15 22:19:30', ' ', '', '', 'publish', 'closed', 'closed', '', '272', '', '', '2022-03-28 12:41:35', '2022-03-28 16:41:35', '', 0, 'http://localhost:81/4w4/?p=272', 28, 'nav_menu_item', '', 0),
(273, 1, '2022-03-15 23:19:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 23:19:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/4w4/?p=273', 1, 'nav_menu_item', '', 0),
(274, 1, '2022-03-15 23:19:55', '2022-03-15 22:19:55', 'Dans ce cours qui s\'appuie sur une pédagogie par projets, l’étudiant réalise un projet d’envergure en équipe de travail. C’est l’occasion pour l’étudiant d’appliquer et d’intégrer l’ensemble des compétences acquises afin de réaliser un prototype de jeu numérique. Il franchit, en collaboration avec les membres de son équipe, toutes les étapes du processus de production d’une telle application, qui sont : la conception du produit, la planification de sa production, la réalisation et l’intégration des médias, la programmation de l’interactivité, la réalisation des tests pour contrôler la qualité du produit ainsi que la rédaction du guide utilisateur et la présentation du produit fini. Par le fait même, ce cours initie l’étudiant à la communication interpersonnelle et à l’intégration à une équipe de production multimédia.\n2-5-5\n4 unités Préalable relatif: Création de jeu 3D', '360-4J4 Création de jeu en équipe (105h)', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2022-03-15 23:19:55', '2022-03-15 22:19:55', '', 142, 'http://localhost:81/4w4/?p=274', 0, 'revision', '', 0),
(275, 1, '2022-03-16 16:21:15', '2022-03-16 15:21:15', '', '3D-IMAGE', '', 'inherit', 'open', 'closed', '', '3d-image', '', '', '2022-03-16 16:21:15', '2022-03-16 15:21:15', '', 136, 'http://localhost:81/4w4/wp-content/uploads/2020/10/3D-IMAGE.jpg', 0, 'attachment', 'image/jpeg', 0),
(276, 1, '2022-03-16 16:21:22', '2022-03-16 15:21:22', 'Dans ce cours, l’étudiant est initié au monde de l’imagerie de synthèse. Il est amené à maîtriser les outils et les fonctionnalités de base d’un logiciel de production 3D pour la création d\'images fixes (ex : interface graphique, logo ou autres objets).\nIl apprend les techniques et méthodes de travail liées à la modélisation, à la création et à l’application de matériaux et de textures ainsi qu’aux techniques d’éclairage et de rendu en image. Enfin, des principes de scénarisation liés à l’univers de la 3D sont également abordés.\n3-2-3\n2,67 unités	Préalable relatif : Conception graphique et imagerie vectorielle', '582-3M5	Imagerie 3D (75h)', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-03-16 16:21:22', '2022-03-16 15:21:22', '', 136, 'http://localhost:81/4w4/?p=276', 0, 'revision', '', 0),
(277, 1, '2022-03-16 16:24:06', '2022-03-16 15:24:06', '', 'planification-creation-site-web', '', 'inherit', 'open', 'closed', '', 'planification-creation-site-web', '', '', '2022-03-16 16:24:06', '2022-03-16 15:24:06', '', 130, 'http://localhost:81/4w4/wp-content/uploads/2020/10/planification-creation-site-web.jpg', 0, 'attachment', 'image/jpeg', 0),
(278, 1, '2022-03-16 16:24:24', '2022-03-16 15:24:24', 'Ce cours permet à l\'étudiant d\'acquérir les compétences de base requises pour programmer l\'interactivité de l\'interface-utilisateur d\'une application multimédia en ligne. Les notions abordées dans les cours « 582-1W1 Mise en page Web » et « 582-1J1 Animation et interactivité en jeu » sont approfondies en les appliquant dans un contexte de création de sites Web interactifs, exécutables sur un poste client.\nL\'étudiant apprend à créer et afficher des éléments graphiques par programmation et à appliquer des effets de transition et d\'animation.  L\'accent est mis sur la gestion d\'événements, le développement d\'interfaces interactives et l\'adaptabilité multiplateformes. L\'étudiant apprend enfin à installer et utiliser les outils de développement adéquats pour améliorer sa productivité dans le contexte de la chaîne de production Web.\n3-2-3\n2,67 unités	Préalable relatif : Mise en page Web', '582-2W2	Animation et interactivité Web (75h)', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2022-03-16 16:24:24', '2022-03-16 15:24:24', '', 134, 'http://localhost:81/4w4/?p=278', 0, 'revision', '', 0),
(279, 1, '2022-03-16 16:25:29', '2022-03-16 15:25:29', 'Dans ce cours, les notions acquises dans les cours « 582-1W1 : Mise en page Web » et « 582-2W2 : Animation et interactivité Web » sont approfondies et complétées par des aspects plus avancés, propres à la génération dynamique de pages Web. L’étudiant est d’abord initié à la programmation HTTP de base. Utilisant un langage de programmation, il apprend à traiter les paramètres et entêtes d’une requête HTTP pour générer de façon dynamique la réponse HTTP. De plus, l’étudiant apprend à utiliser la librairie de fonctions essentielles du langage de programmation pour développer un\nsite Web.\nEnsuite, l’étudiant apprend à intégrer un site Web dynamique à l’aide d’un gestionnaire de contenu.  Pour ce faire, l’étudiant apprend à utiliser les fonctionnalités de base du gestionnaire de contenu.  Il apprend aussi à adapter et personnaliser les interfaces à partir de thèmes, le tout en appliquant les apprentissages des cours « 582-1W1 : Mise en page Web », « 582-2W2 : Animation et interactivité Web » et « 582-3C1 : Design d’interactivité » afin de produire des sites Web dont les interfaces suivent les meilleures pratiques de l’utilisabilité et de l’adaptabilité Web. Enfin, l\'étudiant poursuit son apprentissage d’un environnement de travail collaboratif.\n3-3-3\n3 unités Préalable relatif : Animation et interactivité Web', '582-3W3 Création de sites Web dynamiques (90h)', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2022-03-16 16:25:29', '2022-03-16 15:25:29', '', 138, 'http://localhost:81/4w4/?p=279', 0, 'revision', '', 0),
(280, 1, '2022-03-16 16:29:35', '2022-03-16 15:29:35', '', 'wordpress', '', 'inherit', 'open', 'closed', '', 'wordpress', '', '', '2022-03-16 16:29:35', '2022-03-16 15:29:35', '', 141, 'http://localhost:81/4w4/wp-content/uploads/2020/10/wordpress.jpg', 0, 'attachment', 'image/jpeg', 0),
(281, 1, '2022-03-16 16:52:55', '2022-03-16 15:52:55', '', 'react', '', 'inherit', 'open', 'closed', '', 'react', '', '', '2022-03-16 16:52:55', '2022-03-16 15:52:55', '', 143, 'http://localhost:81/4w4/wp-content/uploads/2020/10/react.png', 0, 'attachment', 'image/png', 0),
(282, 1, '2022-03-16 16:53:02', '2022-03-16 15:53:02', 'En session 4, l\'étudiant doit choisir entre ce cours et le cours Animation 3D.\nDans ce cours, l\'étudiant ayant un intérêt plus marqué pour la programmation a la possibilité d\'approfondir les acquis des cours de la séquence Web en s\'initiant à des technologies permettant de réaliser des applications riches du côté du client.\nIl apprendra à utiliser un cadriciel côté client pour produire un site Web dynamique dont l\'interface utilisateur réactive répond en temps réel aux modifications d\'états des données de l\'application.  L\'intégration d’effets de transition et d\'animation dans l’interface-utilisateur est également couverte.\n3-2-2\n2,33 unités	Préalable relatif : Création de sites Web dynamiques', '582-4PA Interfaces Web réactives et animées - Cours au choix (75h)', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2022-03-16 16:53:02', '2022-03-16 15:53:02', '', 143, 'http://localhost:81/4w4/?p=282', 0, 'revision', '', 0),
(283, 1, '2022-03-16 16:56:04', '2022-03-16 15:56:04', '', 'premierePro', '', 'inherit', 'open', 'closed', '', 'premierepro', '', '', '2022-03-16 16:56:04', '2022-03-16 15:56:04', '', 127, 'http://localhost:81/4w4/wp-content/uploads/2020/10/premierePro.jpg', 0, 'attachment', 'image/jpeg', 0),
(284, 1, '2022-03-16 16:56:31', '2022-03-16 15:56:31', '', 'afterEffets', '', 'inherit', 'open', 'closed', '', 'aftereffets', '', '', '2022-03-16 16:56:31', '2022-03-16 15:56:31', '', 132, 'http://localhost:81/4w4/wp-content/uploads/2020/10/afterEffets.jpeg', 0, 'attachment', 'image/jpeg', 0),
(287, 1, '2022-03-16 17:01:39', '2022-03-16 16:01:39', '', 'TIM1', '', 'inherit', 'open', 'closed', '', 'tim1', '', '', '2022-03-16 17:01:39', '2022-03-16 16:01:39', '', 0, 'http://localhost:81/4w4/wp-content/uploads/2022/03/TIM1.png', 0, 'attachment', 'image/png', 0),
(288, 1, '2022-03-16 17:02:01', '2022-03-16 16:02:01', '', 'TIM', '', 'inherit', 'open', 'closed', '', 'tim-2', '', '', '2022-03-16 17:02:01', '2022-03-16 16:02:01', '', 0, 'http://localhost:81/4w4/wp-content/uploads/2022/03/TIM.png', 0, 'attachment', 'image/png', 0),
(289, 1, '2022-03-16 17:02:07', '2022-03-16 16:02:07', 'http://localhost:81/4w4/wp-content/uploads/2022/03/cropped-TIM.png', 'cropped-TIM.png', '', 'inherit', 'open', 'closed', '', 'cropped-tim-png', '', '', '2022-03-16 17:02:07', '2022-03-16 16:02:07', '', 0, 'http://localhost:81/4w4/wp-content/uploads/2022/03/cropped-TIM.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(290, 1, '2022-03-16 17:02:10', '2022-03-16 16:02:10', '{\n    \"site_icon\": {\n        \"value\": 287,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-16 16:02:10\"\n    },\n    \"HyppoliteC::custom_logo\": {\n        \"value\": 289,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-16 16:02:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '99f64b44-6834-4e5e-b8ec-c108eaec3b15', '', '', '2022-03-16 17:02:10', '2022-03-16 16:02:10', '', 0, 'http://localhost:81/4w4/2022/03/16/99f64b44-6834-4e5e-b8ec-c108eaec3b15/', 0, 'customize_changeset', '', 0),
(291, 1, '2022-03-16 17:11:26', '2022-03-16 16:11:26', '', 'photoshop', '', 'inherit', 'open', 'closed', '', 'photoshop', '', '', '2022-03-16 17:11:26', '2022-03-16 16:11:26', '', 129, 'http://localhost:81/4w4/wp-content/uploads/2020/10/photoshop.png', 0, 'attachment', 'image/png', 0),
(292, 1, '2022-03-16 17:11:30', '2022-03-16 16:11:30', 'Ce cours initie l\'étudiant aux rudiments de la conception et de la communication graphique ainsi qu\'au traitement des images fixes matricielles. On y aborde les notions de base sur le langage graphique, la couleur, le mode d’organisation picturale en lien avec le design d’une image ou d’une interface. L’apprentissage d’un processus de conception structuré et de techniques d’idéation permet à l’étudiant de faire émerger des concepts créatifs respectant des objectifs de communication précis et le public cible. L\'étudiant est amené à exploiter de façon créative et efficace les diverses fonctions d’un logiciel de traitement de l\'image numérique, à utiliser des techniques de montage et de découpage d’images et à appliquer des effets spéciaux diversifiés. Le cours aborde plus particulièrement les notions de photoréalisme ainsi que des techniques de travail permettant l’intégration harmonieuse d’images dans d’autres logiciels multimédias. De plus, les méthodes de travail pour la réalisation de maquettes graphiques d’un document multimédia sont abordées.\nLes particularités de la fonction de travail liées au design graphique et au traitement des images fixes sont présentées, de même que les compétences techniques et comportementales associées.\n3-3-3 - 3 unités - Aucun préalable.', '582-1M2 Conception graphique et imagerie matricielle (90h)', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2022-03-16 17:11:30', '2022-03-16 16:11:30', '', 129, 'http://localhost:81/4w4/?p=292', 0, 'revision', '', 0),
(293, 1, '2022-03-16 17:11:42', '2022-03-16 16:11:42', '', 'illustrator', '', 'inherit', 'open', 'closed', '', 'illustrator', '', '', '2022-03-16 17:11:42', '2022-03-16 16:11:42', '', 133, 'http://localhost:81/4w4/wp-content/uploads/2020/10/illustrator.jpeg', 0, 'attachment', 'image/jpeg', 0),
(294, 1, '2022-03-16 17:21:07', '2022-03-16 16:21:07', '', 'xd', '', 'inherit', 'open', 'closed', '', 'xd', '', '', '2022-03-16 17:21:07', '2022-03-16 16:21:07', '', 137, 'http://localhost:81/4w4/wp-content/uploads/2020/10/xd.png', 0, 'attachment', 'image/png', 0),
(295, 1, '2022-03-16 17:21:10', '2022-03-16 16:21:10', 'L’étudiant apprend à concevoir des expériences interactives en plaçant les besoins de l’utilisateur au cœur de sa création.\nCe cours transpose les techniques de conception et de communication graphique dans l’univers de l’interactivité. L’étudiant apprend à concevoir les éléments d’une interface multimédia, notamment en ce qui a trait au design de la navigation et de l’interactivité. Il apprend également les méthodes pour intégrer l’expérience utilisateur dans ses projets multimédias.\nCe cours développe chez l’étudiant la capacité de communiquer efficacement à l’utilisateur d’un produit multimédia en fonction de ses besoins, et ce, dans le respect des normes d’utilisabilité et d’accessibilité en vigueur dans l’industrie.\nDifférents types de produits sont mis en valeur tout au long de l’apprentissage, notamment par la création d’interfaces Web faisant appel aux langages de balisage et aux feuilles de styles. L’étudiant approfondit le développement de sa capacité d’analyse et ses compétences à présenter sa création.\n3-2-3\n2,67 unités	Préalable relatif : Conception graphique et imagerie vectorielle', '582-3C1 Design d’interactivité (75h)', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2022-03-16 17:21:10', '2022-03-16 16:21:10', '', 137, 'http://localhost:81/4w4/?p=295', 0, 'revision', '', 0),
(296, 1, '2022-03-16 17:23:42', '2022-03-16 16:23:42', '', 'scrum', '', 'inherit', 'open', 'closed', '', 'scrum', '', '', '2022-03-16 17:23:42', '2022-03-16 16:23:42', '', 140, 'http://localhost:81/4w4/wp-content/uploads/2020/10/scrum.png', 0, 'attachment', 'image/png', 0),
(297, 1, '2022-03-16 17:27:09', '2022-03-16 16:27:09', '', '2d', '', 'inherit', 'open', 'closed', '', '2d', '', '', '2022-03-16 17:27:09', '2022-03-16 16:27:09', '', 135, 'http://localhost:81/4w4/wp-content/uploads/2020/10/2d.webp', 0, 'attachment', 'image/webp', 0),
(298, 1, '2022-03-16 17:30:53', '2022-03-16 16:30:53', '', '3d', '', 'inherit', 'open', 'closed', '', '3d', '', '', '2022-03-16 17:30:53', '2022-03-16 16:30:53', '', 139, 'http://localhost:81/4w4/wp-content/uploads/2020/10/3d.webp', 0, 'attachment', 'image/webp', 0),
(299, 1, '2022-03-16 17:30:58', '2022-03-16 16:30:58', 'Ce cours permet à l\'étudiant d\'intégrer différents types de médias à l\'aide des fonctionnalités d\'un logiciel d\'intégration 3D. L\'étudiant est amené à contrôler et à animer les éléments d\'une application multimédia par programmation dans un environnement 3D.\nCe cours initie l’étudiant à l’utilisation d’un environnement d’intégration de la 3D en temps réel.  L’accent est d’abord mis sur l’apprentissage des notions de base de la\n3D-temps réel et de l’intégration 3D (systèmes de coordonnées, vecteurs, types et propriétés d’objets 3D, caméra, rendu en temps réel, etc.).\nEnsuite l’étudiant est amené à maîtriser les outils et les fonctionnalités de base d’un logiciel d’intégration 3D, afin d\'importer et prendre en charge des éléments 3D, paramétrer les comportements ainsi que programmer l’interactivité.\nEnfin, par la création d’un prototype simple, l’étudiant est à même d’apprendre les concepts et les techniques de base reliées à l’intégration d’un jeu numérique.\n3-2-3\n2,67 unités	Préalable relatif: Création de jeu 2D', '582-3J3 Création de jeu 3D (75h)', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2022-03-16 17:30:58', '2022-03-16 16:30:58', '', 139, 'http://localhost:81/4w4/?p=299', 0, 'revision', '', 0),
(300, 1, '2022-03-16 17:34:43', '2022-03-16 16:34:43', '', '5j5', '', 'inherit', 'open', 'closed', '', '5j5', '', '', '2022-03-16 17:34:43', '2022-03-16 16:34:43', '', 234, 'http://localhost:81/4w4/wp-content/uploads/2022/03/5j5.jpg', 0, 'attachment', 'image/jpeg', 0),
(301, 1, '2022-03-16 17:35:05', '2022-03-16 16:35:05', '', '1j1', '', 'inherit', 'open', 'closed', '', '1j1', '', '', '2022-03-16 17:35:05', '2022-03-16 16:35:05', '', 131, 'http://localhost:81/4w4/wp-content/uploads/2020/10/1j1.jpg', 0, 'attachment', 'image/jpeg', 0),
(302, 1, '2022-03-16 17:37:56', '2022-03-16 16:37:56', '', 'Super-Mario-3D-World-Key-Art', '', 'inherit', 'open', 'closed', '', 'super-mario-3d-world-key-art', '', '', '2022-03-16 17:37:56', '2022-03-16 16:37:56', '', 142, 'http://localhost:81/4w4/wp-content/uploads/2020/10/Super-Mario-3D-World-Key-Art.jpg', 0, 'attachment', 'image/jpeg', 0),
(303, 1, '2022-03-17 03:32:48', '2022-03-17 02:32:48', '<!-- wp:paragraph -->\n<p>En 5<sup>e</sup> session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet programmation<br>Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées ou des techniques complexes de création des médias pour le jeu. L\'étudiant plus intéressé par les aspects créatifs liés au jeu a l\'occasion d\'acquérir une spécialisation en étudiant des techniques d’effets visuels avancés pour le jeu numérique tels que : effets sur des images en temps réel, ajout de particules, de réflexions, d\'aberrations chromatiques, éclairages dynamiques et statiques, effets de dessin animé, optimisation de rendus pour appareil mobile, réalité virtuelle, etc.</p>\n<!-- /wp:paragraph -->', '582-5JB Expérimentation en jeu – volet création (90h)', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2022-03-17 03:32:48', '2022-03-17 02:32:48', '', 241, 'http://localhost:81/4w4/?p=303', 0, 'revision', '', 0),
(304, 1, '2022-03-17 03:33:31', '2022-03-17 02:33:31', '<!-- wp:paragraph -->\n<p>Préalables: Relatif: Création de jeu en équipe (360-4J4-MA); En 5ème session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet création Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées en programmation de jeu. L\'étudiant davantage intéressé par les aspects techniques du jeu a l\'occasion d\'acquérir une spécialisation par l’apprentissage d’aspects avancés, liés à la programmation de jeux numériques parmi les suivants : jeu multijoueurs, réalité virtuelle, jeu pour appareil mobile avec gyroscope, intelligence artificielle, etc.</p>\n<!-- /wp:paragraph -->', '582-5JA Expérimentation en jeu - volet programmation (90h)', '', 'inherit', 'closed', 'closed', '', '234-revision-v1', '', '', '2022-03-17 03:33:31', '2022-03-17 02:33:31', '', 234, 'http://localhost:81/4w4/?p=304', 0, 'revision', '', 0),
(305, 1, '2022-03-18 09:07:48', '2022-03-18 13:07:48', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-hyppolitec', '', '', '2022-03-18 09:07:48', '2022-03-18 13:07:48', '', 0, 'http://localhost:81/4w4/2022/03/18/wp-global-styles-hyppolitec/', 0, 'wp_global_styles', '', 0),
(307, 1, '2022-03-18 15:46:10', '2022-03-18 19:46:10', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2022-03-18 15:46:10', '2022-03-18 19:46:10', '', 0, 'http://localhost:81/4w4/wp-content/uploads/2022/03/download.png', 0, 'attachment', 'image/png', 0),
(308, 1, '2022-03-18 15:47:00', '2022-03-18 19:47:00', 'http://localhost:81/4w4/wp-content/uploads/2022/03/cropped-download.png', 'cropped-download.png', '', 'inherit', 'open', 'closed', '', 'cropped-download-png', '', '', '2022-03-18 15:47:00', '2022-03-18 19:47:00', '', 0, 'http://localhost:81/4w4/wp-content/uploads/2022/03/cropped-download.png', 0, 'attachment', 'image/png', 0),
(309, 1, '2022-03-18 15:47:20', '2022-03-18 19:47:20', 'http://localhost:81/4w4/wp-content/uploads/2022/03/cropped-cropped-download.png', 'cropped-cropped-download.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-download-png', '', '', '2022-03-18 15:47:20', '2022-03-18 19:47:20', '', 0, 'http://localhost:81/4w4/wp-content/uploads/2022/03/cropped-cropped-download.png', 0, 'attachment', 'image/png', 0),
(310, 1, '2022-03-18 15:47:25', '2022-03-18 19:47:25', '{\n    \"site_icon\": {\n        \"value\": 309,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-18 19:47:25\"\n    },\n    \"HyppoliteC::custom_logo\": {\n        \"value\": 308,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-18 19:47:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '790677da-000d-45e3-918b-56656505ff2d', '', '', '2022-03-18 15:47:25', '2022-03-18 19:47:25', '', 0, 'http://localhost:81/4w4/2022/03/18/790677da-000d-45e3-918b-56656505ff2d/', 0, 'customize_changeset', '', 0),
(312, 1, '2022-03-28 12:52:49', '2022-03-28 16:43:26', 'Les cours du DEC en Techniques d’intégration multimédia', 'Tous les cours', '', 'publish', 'closed', 'closed', '', 'tous-les-cours', '', '', '2022-03-28 12:52:49', '2022-03-28 16:52:49', '', 0, 'http://localhost:81/4w4/?p=312', 1, 'nav_menu_item', '', 0),
(313, 1, '2022-03-28 12:52:49', '2022-03-28 16:43:26', ' ', '', '', 'publish', 'closed', 'closed', '', '313', '', '', '2022-03-28 12:52:49', '2022-03-28 16:52:49', '', 0, 'http://localhost:81/4w4/?p=313', 2, 'nav_menu_item', '', 0),
(314, 1, '2022-03-28 12:52:49', '2022-03-28 16:43:26', ' ', '', '', 'publish', 'closed', 'closed', '', '314', '', '', '2022-03-28 12:52:49', '2022-03-28 16:52:49', '', 0, 'http://localhost:81/4w4/?p=314', 3, 'nav_menu_item', '', 0),
(315, 1, '2022-03-28 12:52:49', '2022-03-28 16:43:26', ' ', '', '', 'publish', 'closed', 'closed', '', '315', '', '', '2022-03-28 12:52:49', '2022-03-28 16:52:49', '', 0, 'http://localhost:81/4w4/?p=315', 4, 'nav_menu_item', '', 0),
(317, 1, '2022-03-28 12:52:49', '2022-03-28 16:43:27', ' ', '', '', 'publish', 'closed', 'closed', '', '317', '', '', '2022-03-28 12:52:49', '2022-03-28 16:52:49', '', 0, 'http://localhost:81/4w4/?p=317', 5, 'nav_menu_item', '', 0),
(318, 1, '2022-03-28 12:52:50', '2022-03-28 16:43:27', ' ', '', '', 'publish', 'closed', 'closed', '', '318', '', '', '2022-03-28 12:52:50', '2022-03-28 16:52:50', '', 0, 'http://localhost:81/4w4/?p=318', 6, 'nav_menu_item', '', 0),
(319, 1, '2022-03-28 12:52:50', '2022-03-28 16:43:27', ' ', '', '', 'publish', 'closed', 'closed', '', '319', '', '', '2022-03-28 12:52:50', '2022-03-28 16:52:50', '', 0, 'http://localhost:81/4w4/?p=319', 7, 'nav_menu_item', '', 0),
(320, 1, '2022-04-04 12:34:35', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-04-04 12:34:35', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/4w4/?p=320', 0, 'post', '', 0),
(321, 1, '2022-04-06 15:30:13', '2022-04-06 19:28:27', 'Les cours du DEC en Techniques d’intégration multimédia', '', '', 'publish', 'closed', 'closed', '', '321', '', '', '2022-04-06 15:30:13', '2022-04-06 19:30:13', '', 0, 'http://localhost:81/4w4/?p=321', 1, 'nav_menu_item', '', 0),
(322, 1, '2022-04-06 15:29:13', '2022-04-06 19:29:13', '<!-- wp:paragraph -->\n<p>grjkogmrogmigjfrjg</p>\n<!-- /wp:paragraph -->', 'Étudiants', '', 'publish', 'closed', 'closed', '', 'etudiants', '', '', '2022-04-06 15:29:13', '2022-04-06 19:29:13', '', 0, 'http://localhost:81/4w4/?page_id=322', 0, 'page', '', 0),
(323, 1, '2022-04-06 15:29:13', '2022-04-06 19:29:13', '<!-- wp:paragraph -->\n<p>grjkogmrogmigjfrjg</p>\n<!-- /wp:paragraph -->', 'Étudiants', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2022-04-06 15:29:13', '2022-04-06 19:29:13', '', 322, 'http://localhost:81/4w4/?p=323', 0, 'revision', '', 0),
(324, 1, '2022-04-06 15:29:31', '2022-04-06 19:29:31', '<!-- wp:paragraph -->\n<p>mbgfmfimbimif</p>\n<!-- /wp:paragraph -->', 'Centre d\'aide', '', 'publish', 'closed', 'closed', '', 'centre-daide', '', '', '2022-04-06 15:29:31', '2022-04-06 19:29:31', '', 0, 'http://localhost:81/4w4/?page_id=324', 0, 'page', '', 0),
(325, 1, '2022-04-06 15:29:31', '2022-04-06 19:29:31', '<!-- wp:paragraph -->\n<p>mbgfmfimbimif</p>\n<!-- /wp:paragraph -->', 'Centre d\'aide', '', 'inherit', 'closed', 'closed', '', '324-revision-v1', '', '', '2022-04-06 15:29:31', '2022-04-06 19:29:31', '', 324, 'http://localhost:81/4w4/?p=325', 0, 'revision', '', 0),
(326, 1, '2022-04-06 15:29:44', '2022-04-06 19:29:44', '<!-- wp:paragraph -->\n<p>guirgnugnfibncvd</p>\n<!-- /wp:paragraph -->', 'Profs', '', 'publish', 'closed', 'closed', '', 'profs', '', '', '2022-04-06 15:29:44', '2022-04-06 19:29:44', '', 0, 'http://localhost:81/4w4/?page_id=326', 0, 'page', '', 0),
(327, 1, '2022-04-06 15:29:44', '2022-04-06 19:29:44', '<!-- wp:paragraph -->\n<p>guirgnugnfibncvd</p>\n<!-- /wp:paragraph -->', 'Profs', '', 'inherit', 'closed', 'closed', '', '326-revision-v1', '', '', '2022-04-06 15:29:44', '2022-04-06 19:29:44', '', 326, 'http://localhost:81/4w4/?p=327', 0, 'revision', '', 0),
(328, 1, '2022-04-06 15:30:13', '2022-04-06 19:30:13', ' ', '', '', 'publish', 'closed', 'closed', '', '328', '', '', '2022-04-06 15:30:13', '2022-04-06 19:30:13', '', 0, 'http://localhost:81/4w4/?p=328', 2, 'nav_menu_item', '', 0),
(329, 1, '2022-04-06 15:30:13', '2022-04-06 19:30:13', '', 'Centre d’aide', '', 'publish', 'closed', 'closed', '', 'centre-daide', '', '', '2022-04-06 15:30:13', '2022-04-06 19:30:13', '', 0, 'http://localhost:81/4w4/?p=329', 3, 'nav_menu_item', '', 0),
(330, 1, '2022-04-06 15:30:13', '2022-04-06 19:30:13', ' ', '', '', 'publish', 'closed', 'closed', '', '330', '', '', '2022-04-06 15:30:13', '2022-04-06 19:30:13', '', 0, 'http://localhost:81/4w4/?p=330', 4, 'nav_menu_item', '', 0),
(331, 1, '2022-04-06 17:22:43', '2022-04-06 21:22:43', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Cours', 'cours', 'publish', 'closed', 'closed', '', 'group_624e03e5f0098', '', '', '2022-04-06 17:25:03', '2022-04-06 21:25:03', '', 0, 'http://localhost:81/4w4/?post_type=acf-field-group&#038;p=331', 0, 'acf-field-group', '', 0),
(332, 1, '2022-04-06 17:22:43', '2022-04-06 21:22:43', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:38:\"Le nombre d\'heure prévu pour le cours\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:45;s:11:\"placeholder\";i:45;s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:30;s:3:\"max\";i:300;s:4:\"step\";s:0:\"\";}', 'Nombre d\'heures', 'nombre_dheures', 'publish', 'closed', 'closed', '', 'field_624e040b7d0d9', '', '', '2022-04-06 17:25:03', '2022-04-06 21:25:03', '', 331, 'http://localhost:81/4w4/?post_type=acf-field&#038;p=332', 0, 'acf-field', '', 0),
(333, 1, '2022-04-06 17:23:21', '2022-04-06 21:23:21', '<!-- wp:paragraph -->\n<p>En 5<sup>e</sup>&nbsp;session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet programmation<br>Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées ou des techniques complexes de création des médias pour le jeu. L\'étudiant plus intéressé par les aspects créatifs liés au jeu a l\'occasion d\'acquérir une spécialisation en étudiant des techniques d’effets visuels avancés pour le jeu numérique tels que : effets sur des images en temps réel, ajout de particules, de réflexions, d\'aberrations chromatiques, éclairages dynamiques et statiques, effets de dessin animé, optimisation de rendus pour appareil mobile, réalité virtuelle, etc.</p>\n<!-- /wp:paragraph -->', '582-5JB Expérimentation en jeu – volet création (90h)', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2022-04-06 17:23:21', '2022-04-06 21:23:21', '', 241, 'http://localhost:81/4w4/?p=333', 0, 'revision', '', 0),
(334, 1, '2022-04-06 17:23:23', '2022-04-06 21:23:23', '<!-- wp:paragraph -->\n<p>En 5<sup>e</sup>&nbsp;session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet programmation<br>Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées ou des techniques complexes de création des médias pour le jeu. L\'étudiant plus intéressé par les aspects créatifs liés au jeu a l\'occasion d\'acquérir une spécialisation en étudiant des techniques d’effets visuels avancés pour le jeu numérique tels que : effets sur des images en temps réel, ajout de particules, de réflexions, d\'aberrations chromatiques, éclairages dynamiques et statiques, effets de dessin animé, optimisation de rendus pour appareil mobile, réalité virtuelle, etc.</p>\n<!-- /wp:paragraph -->', '582-5JB Expérimentation en jeu – volet création (90h)', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2022-04-06 17:23:23', '2022-04-06 21:23:23', '', 241, 'http://localhost:81/4w4/?p=334', 0, 'revision', '', 0),
(335, 1, '2022-04-06 17:23:47', '2022-04-06 21:23:47', '<!-- wp:paragraph -->\n<p>Préalable: Relatif: Méthodes de recherche et préparation au marché du travail (393-5E1-MA); Absolu: Création de jeu en équipe (360-4J4-MA); Projet Web en équipe (582-5W5-MA).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ce cours permet à l’étudiant de se spécialiser dans un domaine de son choix par le biais d’un projet de recherche en multimédia qu\'il a identifié à la session précédente, dans le cours « 393-5E1 Méthodes de recherche et préparation au marché du travail ».<br>L\'étudiant planifie son projet de recherche, vérifie sa faisabilité sur le plan technique et le réalise. Par la suite, il doit concevoir et réaliser une production multimédia qui présente les résultats de son projet de recherche. La réalisation et la présentation de cette production multimédia constituent l\'Épreuve synthèse de programme (ÉSP). À travers l\'ÉSP, l\'étudiant doit démontrer qu\'il a atteint les compétences artistiques et techniques attendues d\'un intégrateur multimédia et qu’il a les attitudes nécessaires à son intégration sur le marché du travail.</p>\n<!-- /wp:paragraph -->', '582-6N2 Projet de fin d\'études (120h)', '', 'inherit', 'closed', 'closed', '', '239-revision-v1', '', '', '2022-04-06 17:23:47', '2022-04-06 21:23:47', '', 239, 'http://localhost:81/4w4/?p=335', 0, 'revision', '', 0),
(336, 1, '2022-04-06 17:23:57', '2022-04-06 21:23:57', '<!-- wp:paragraph -->\n<p>Préalables: aucun; En session 5, l\'étudiant doit choisir entre ce cours et le cours Technologies émergentes et avancées – volet Création (582-5JB-MA).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dans ce cours, l’étudiant plus intéressé par les aspects techniques du multimédia est amené à explorer, tester et intégrer les nouvelles tendances en matière de programmation de produits multimédias interactifs. Ce cours est donc axé sur la démonstration et l’apprentissage des toutes dernières technologies en émergence dans le domaine.</p>\n<!-- /wp:paragraph -->', '582-5PA Technologies émergentes et avancées - volet programmation (60h)', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2022-04-06 17:23:57', '2022-04-06 21:23:57', '', 237, 'http://localhost:81/4w4/?p=336', 0, 'revision', '', 0),
(337, 1, '2022-04-06 17:24:11', '2022-04-06 21:24:11', '<!-- wp:paragraph -->\n<p>Préalables: Relatif: Création de jeu en équipe (360-4J4-MA); En 5ème session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet création Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées en programmation de jeu. L\'étudiant davantage intéressé par les aspects techniques du jeu a l\'occasion d\'acquérir une spécialisation par l’apprentissage d’aspects avancés, liés à la programmation de jeux numériques parmi les suivants : jeu multijoueurs, réalité virtuelle, jeu pour appareil mobile avec gyroscope, intelligence artificielle, etc.</p>\n<!-- /wp:paragraph -->', '582-5JA Expérimentation en jeu - volet programmation (90h)', '', 'inherit', 'closed', 'closed', '', '234-revision-v1', '', '', '2022-04-06 17:24:11', '2022-04-06 21:24:11', '', 234, 'http://localhost:81/4w4/?p=337', 0, 'revision', '', 0),
(338, 1, '2022-04-06 17:25:28', '2022-04-06 21:25:28', 'Dans ce cours, l’étudiant poursuit son apprentissage de l’intégration de sites Web dynamiques à l’aide d’un gestionnaire de contenu. L’étudiant apprend à développer par programmation des thèmes personnalisés pour répondre aux besoins spécifiques du design d’interfaces des sites Web. L’étudiant apprend aussi les fonctionnalités avancées du gestionnaire de contenu, lui permettant entre autres à programmer des extensions servant les fonctionnalités des sites Web à développer. De plus, l’étudiant est initié à l’utilisation et à l’intégration par programmation des bases de données.\nCe cours couvre également l’intégration et l’interfaçage entre le langage utilisé du côté du serveur et les technologies utilisées du côté client. Enfin, l’étudiant poursuit son apprentissage des techniques de test pour contrôler la qualité d’un site Web et valider sa conformité en regard des normes et des standards en vigueur.\n3-3-2\n2,67 unités	Préalable absolu : Création de sites Web dynamiques', '582-4W4 Conception d’interfaces et développement Web (90h)', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2022-04-06 17:25:28', '2022-04-06 21:25:28', '', 141, 'http://localhost:81/4w4/?p=338', 0, 'revision', '', 0),
(339, 1, '2022-04-06 17:25:40', '2022-04-06 21:25:40', 'Dans ce cours qui s\'appuie sur une pédagogie par projets, l’étudiant réalise un projet d’envergure en équipe de travail. C’est l’occasion pour l’étudiant d’appliquer et d’intégrer l’ensemble des compétences acquises afin de réaliser un prototype de jeu numérique. Il franchit, en collaboration avec les membres de son équipe, toutes les étapes du processus de production d’une telle application, qui sont : la conception du produit, la planification de sa production, la réalisation et l’intégration des médias, la programmation de l’interactivité, la réalisation des tests pour contrôler la qualité du produit ainsi que la rédaction du guide utilisateur et la présentation du produit fini. Par le fait même, ce cours initie l’étudiant à la communication interpersonnelle et à l’intégration à une équipe de production multimédia.\n2-5-5\n4 unités Préalable relatif: Création de jeu 3D', '360-4J4 Création de jeu en équipe (105h)', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2022-04-06 17:25:40', '2022-04-06 21:25:40', '', 142, 'http://localhost:81/4w4/?p=339', 0, 'revision', '', 0),
(340, 1, '2022-04-06 17:26:21', '2022-04-06 21:26:21', 'Dans ce cours, l\'étudiant apprend les techniques de mise en page Web en utilisant les langages de balisage et de feuilles de styles.  L\'étudiant apprend également à analyser et schématiser l\'arborescence d\'un site Web, à reproduire des maquettes sous forme de pages Web, et à créer des pages Web en intégrant les différents types de médias.  L\'introduction à un outil de gestion de code source est également couverte dans ce cours.\nLes particularités de la fonction de travail associées au domaine du Web sont présentées, de même que les compétences techniques et comportementales associées.\n3-2-3  2,67 unités	Aucun préalable', '582-1W1 Mise en page Web (75h)', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2022-04-06 17:26:21', '2022-04-06 21:26:21', '', 130, 'http://localhost:81/4w4/?p=340', 0, 'revision', '', 0),
(341, 1, '2022-04-06 17:26:32', '2022-04-06 21:26:32', 'Ce cours permet à l\'étudiant d\'acquérir les compétences de base requises pour programmer l\'interactivité de l\'interface-utilisateur d\'une application multimédia en ligne. Les notions abordées dans les cours « 582-1W1 Mise en page Web » et « 582-1J1 Animation et interactivité en jeu » sont approfondies en les appliquant dans un contexte de création de sites Web interactifs, exécutables sur un poste client.\nL\'étudiant apprend à créer et afficher des éléments graphiques par programmation et à appliquer des effets de transition et d\'animation.  L\'accent est mis sur la gestion d\'événements, le développement d\'interfaces interactives et l\'adaptabilité multiplateformes. L\'étudiant apprend enfin à installer et utiliser les outils de développement adéquats pour améliorer sa productivité dans le contexte de la chaîne de production Web.\n3-2-3\n2,67 unités	Préalable relatif : Mise en page Web', '582-2W2	Animation et interactivité Web (75h)', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2022-04-06 17:26:32', '2022-04-06 21:26:32', '', 134, 'http://localhost:81/4w4/?p=341', 0, 'revision', '', 0),
(342, 1, '2022-04-06 17:26:58', '2022-04-06 21:26:58', 'Dans ce cours, les notions acquises dans les cours « 582-1W1 : Mise en page Web » et « 582-2W2 : Animation et interactivité Web » sont approfondies et complétées par des aspects plus avancés, propres à la génération dynamique de pages Web. L’étudiant est d’abord initié à la programmation HTTP de base. Utilisant un langage de programmation, il apprend à traiter les paramètres et entêtes d’une requête HTTP pour générer de façon dynamique la réponse HTTP. De plus, l’étudiant apprend à utiliser la librairie de fonctions essentielles du langage de programmation pour développer un\nsite Web.\nEnsuite, l’étudiant apprend à intégrer un site Web dynamique à l’aide d’un gestionnaire de contenu.  Pour ce faire, l’étudiant apprend à utiliser les fonctionnalités de base du gestionnaire de contenu.  Il apprend aussi à adapter et personnaliser les interfaces à partir de thèmes, le tout en appliquant les apprentissages des cours « 582-1W1 : Mise en page Web », « 582-2W2 : Animation et interactivité Web » et « 582-3C1 : Design d’interactivité » afin de produire des sites Web dont les interfaces suivent les meilleures pratiques de l’utilisabilité et de l’adaptabilité Web. Enfin, l\'étudiant poursuit son apprentissage d’un environnement de travail collaboratif.\n3-3-3\n3 unités Préalable relatif : Animation et interactivité Web', '582-3W3 Création de sites Web dynamiques (90h)', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2022-04-06 17:26:58', '2022-04-06 21:26:58', '', 138, 'http://localhost:81/4w4/?p=342', 0, 'revision', '', 0),
(343, 1, '2022-04-06 17:27:13', '2022-04-06 21:27:13', 'En session 4, l\'étudiant doit choisir entre ce cours et le cours Animation 3D.\nDans ce cours, l\'étudiant ayant un intérêt plus marqué pour la programmation a la possibilité d\'approfondir les acquis des cours de la séquence Web en s\'initiant à des technologies permettant de réaliser des applications riches du côté du client.\nIl apprendra à utiliser un cadriciel côté client pour produire un site Web dynamique dont l\'interface utilisateur réactive répond en temps réel aux modifications d\'états des données de l\'application.  L\'intégration d’effets de transition et d\'animation dans l’interface-utilisateur est également couverte.\n3-2-2\n2,33 unités	Préalable relatif : Création de sites Web dynamiques', '582-4PA Interfaces Web réactives et animées - Cours au choix (75h)', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2022-04-06 17:27:13', '2022-04-06 21:27:13', '', 143, 'http://localhost:81/4w4/?p=343', 0, 'revision', '', 0),
(344, 1, '2022-04-06 17:27:28', '2022-04-06 21:27:28', 'Préalable relatif : Conception d’interfaces et développement Web\nDans ce cours, qui s\'appuie sur une pédagogie par projets, l’étudiant participe à la réalisation d’un produit multimédia en ligne pour un client. C’est l’occasion pour l’étudiant d’appliquer et d’intégrer l’ensemble des compétences et des notions acquises et de s’initier à des méthodes et des techniques de travail professionnelles. Il franchit, en collaboration avec les membres de son équipe de production, toutes les étapes du processus de production d’une telle application, qui sont : la conception du produit, la planification de sa production, la réalisation et l’intégration des médias, la programmation de l’interactivité, la réalisation des tests pour contrôler la qualité du produit ainsi que la rédaction du guide utilisateur et la présentation du produit fini. Il est également amené à mettre en pratique une approche client basée sur un climat de confiance. Le cours permet également la mise en application de différents outils facilitant la réalisation de projet : communication entre équipiers, gestion de code source, gestion des bogues.  De plus, une attention particulière est portée à la relation avec le client ainsi qu’à la prévention et à la gestion des conflits entre coéquipiers.\n2-5-5\n4 unités	Corequis : Communication et dynamique d’une équipe de travail', '582-5W5	Projet Web en équipe (105h)', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2022-04-06 17:27:28', '2022-04-06 21:27:28', '', 147, 'http://localhost:81/4w4/?p=344', 0, 'revision', '', 0),
(345, 1, '2022-04-06 17:27:43', '2022-04-06 21:27:43', '3-2-3 2,67 unités Aucun préalable. Ce cours initie l’étudiant au traitement des images en mouvement, au traitement du son ainsi qu\'aux bases de la scénarisation linéaire.  L’étudiant apprend à utiliser les périphériques associés au traitement du son et de la vidéo et à exploiter de façon créative les fonctions des logiciels de traitement vidéo et sonore. Les techniques de montage (structure narrative, affinage de coupe, correction de couleur, etc.) sont étudiées. L’étudiant apprend à représenter ses idées et ses concepts par le dessin et l’écrit, à l’aide de scénarimages, de synopsis et de scénarios. Les particularités de la fonction de travail liées au traitement de la vidéo, du son, ainsi qu\'à la scénarisation sont présentées de même que les compétences techniques et comportementales associées.', '582-1M1 Création vidéo (75h)', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2022-04-06 17:27:43', '2022-04-06 21:27:43', '', 127, 'http://localhost:81/4w4/?p=345', 0, 'revision', '', 0),
(346, 1, '2022-04-06 17:27:53', '2022-04-06 21:27:53', 'Ce cours permet d\'approfondir la formation de l’étudiant en matière de traitement d’images en mouvement et de traitement sonore.  L’étudiant poursuit son apprentissage des techniques de prise de vues avec des caméras virtuelles. Il développe sa capacité à utiliser des techniques d’effets spéciaux visuels : animations graphiques, initiation à l’environnement 3D, caméras et lumières virtuelles, composition numérique et techniques d’écran vert.\nL\'étudiant est amené à appliquer adéquatement les techniques d\'optimisation des fichiers sonores et vidéo en fonction de différents modes de diffusion et d’intégration à un projet multimédia.\n2-2-3 2,33 unités Préalable relatif : Création vidéo', '582-2M3 Effets spéciaux et animation (60h)', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2022-04-06 17:27:53', '2022-04-06 21:27:53', '', 132, 'http://localhost:81/4w4/?p=346', 0, 'revision', '', 0),
(347, 1, '2022-04-06 17:28:29', '2022-04-06 21:28:29', 'Le stage en entreprise complète la formation de l’étudiant en lui permettant d\'intégrer et de mettre en application ses différents acquis dans le milieu professionnel.  L’étudiant joint une véritable équipe de travail en multimédia, ce qui lui permet également de réaliser une synthèse de ses compétences par la réalisation de mandats concrets et réels et de tâches spécifiques visant à répondre aux besoins de l’entreprise et de ses clients.\n1-18-1\n6,67 unités	Préalable absolu : Création de jeu en équipe\nPréalable absolu : Projet Web en équipe', '582-6N3 Stage (285h)', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2022-04-06 17:28:29', '2022-04-06 21:28:29', '', 149, 'http://localhost:81/4w4/?p=347', 0, 'revision', '', 0),
(348, 1, '2022-04-06 17:29:10', '2022-04-06 21:29:10', 'Ce cours permet à l\'étudiant d\'intégrer différents types de médias à l\'aide des fonctionnalités d\'un logiciel d\'intégration 3D. L\'étudiant est amené à contrôler et à animer les éléments d\'une application multimédia par programmation dans un environnement 3D.\nCe cours initie l’étudiant à l’utilisation d’un environnement d’intégration de la 3D en temps réel.  L’accent est d’abord mis sur l’apprentissage des notions de base de la\n3D-temps réel et de l’intégration 3D (systèmes de coordonnées, vecteurs, types et propriétés d’objets 3D, caméra, rendu en temps réel, etc.).\nEnsuite l’étudiant est amené à maîtriser les outils et les fonctionnalités de base d’un logiciel d’intégration 3D, afin d\'importer et prendre en charge des éléments 3D, paramétrer les comportements ainsi que programmer l’interactivité.\nEnfin, par la création d’un prototype simple, l’étudiant est à même d’apprendre les concepts et les techniques de base reliées à l’intégration d’un jeu numérique.\n3-2-3\n2,67 unités	Préalable relatif: Création de jeu 2D', '582-3J3 Création de jeu 3D (75h)', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2022-04-06 17:29:10', '2022-04-06 21:29:10', '', 139, 'http://localhost:81/4w4/?p=348', 0, 'revision', '', 0),
(349, 1, '2022-04-06 17:29:30', '2022-04-06 21:29:30', 'Ce cours est consacré aux concepts de base nécessaires à la création d’un jeu numérique. Le cours porte, d’une part, sur l’animation des médias : l’étudiant y apprend à importer et à intégrer des médias dans un environnement de création de jeu. De plus, il se familiarise avec les techniques de création d’animations à partir d’images simples et des feuilles de « sprites ». D’autre part, le cours couvre la gestion des interactions : l’étudiant y est initié aux concepts de base de l’interactivité dans un contexte de jeu, ainsi qu’aux techniques de conception, de codification et de vérification des algorithmes nécessaires à cette fin.\nDans ce cours, l’étudiant est également initié à l’environnement matériel et technologique dans lequel il évoluera tout au long de sa formation et de sa carrière.  Les particularités de la fonction de travail liées au domaine du jeu sont présentées, de même que les compétences techniques et comportementales associées.\n3-2-3 2,67 unités	Aucun préalable', '582-1J1 Animation et interactivité en jeu (75h)', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2022-04-06 17:29:30', '2022-04-06 21:29:30', '', 131, 'http://localhost:81/4w4/?p=349', 0, 'revision', '', 0),
(350, 1, '2022-04-06 17:29:40', '2022-04-06 21:29:40', 'Dans ce cours, l’étudiant approfondit la programmation graphique et s’initie aux concepts de base d\'un moteur de jeu. Le cours permet d\'approfondir la maîtrise de la structure d\'affichage ainsi que le contrôle de l\'animation et de l\'interactivité.\nPar la création d\'un prototype simple, l\'étudiant apprend les concepts de base reliés à l\'intégration d\'un jeu ou d\'une application interactive en exploitant les principales classes intégrées d’objets graphiques et médiatiques et en créant ses propres classes d’objets.\n2-2-2\n2 unités	Préalable relatif : Animation et interactivité en jeu', '582-2J2	Création de jeu 2D (60h)', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2022-04-06 17:29:40', '2022-04-06 21:29:40', '', 135, 'http://localhost:81/4w4/?p=350', 0, 'revision', '', 0),
(351, 1, '2022-04-06 17:30:01', '2022-04-06 21:30:01', 'Ce cours initie l\'étudiant aux rudiments de la conception et de la communication graphique ainsi qu\'au traitement des images fixes matricielles. On y aborde les notions de base sur le langage graphique, la couleur, le mode d’organisation picturale en lien avec le design d’une image ou d’une interface. L’apprentissage d’un processus de conception structuré et de techniques d’idéation permet à l’étudiant de faire émerger des concepts créatifs respectant des objectifs de communication précis et le public cible. L\'étudiant est amené à exploiter de façon créative et efficace les diverses fonctions d’un logiciel de traitement de l\'image numérique, à utiliser des techniques de montage et de découpage d’images et à appliquer des effets spéciaux diversifiés. Le cours aborde plus particulièrement les notions de photoréalisme ainsi que des techniques de travail permettant l’intégration harmonieuse d’images dans d’autres logiciels multimédias. De plus, les méthodes de travail pour la réalisation de maquettes graphiques d’un document multimédia sont abordées.\nLes particularités de la fonction de travail liées au design graphique et au traitement des images fixes sont présentées, de même que les compétences techniques et comportementales associées.\n3-3-3 - 3 unités - Aucun préalable.', '582-1M2 Conception graphique et imagerie matricielle (90h)', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2022-04-06 17:30:01', '2022-04-06 21:30:01', '', 129, 'http://localhost:81/4w4/?p=351', 0, 'revision', '', 0),
(352, 1, '2022-04-06 17:30:11', '2022-04-06 21:30:11', 'Dans ce cours, l’étudiant poursuit l’apprentissage des notions liées à la conception, à la communication graphique et au traitement des images fixes vectorielles.\nL\'étudiant développe un concept créatif décliné en plusieurs volets. L\'étudiant apprend à utiliser la typographie selon les règles de l’art. Il a l\'opportunité d\'approfondir sa maîtrise de la communication graphique afin de produire un message adapté au public cible.\nPour ce faire, le cours aborde la conception d\'illustrations et des techniques de travail permettant l’intégration harmonieuse d’images dans d’autres logiciels multimédias. L\'étudiant apprendra à créer des agencements graphiques et typographiques comme des logos, des icônes web ainsi que des éléments de jeu en 2D.\nEnfin, l\'étudiant est amené à argumenter et justifier ses choix créatifs.\n3-3-3\n3 unités Préalable relatif : Conception graphique et imagerie matricielle', '582-2M4 Conception graphique et imagerie vectorielle (90h)', '582-2M4 Conception graphique et imagerie vectorielle (90h)', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2022-04-06 17:30:11', '2022-04-06 21:30:11', '', 133, 'http://localhost:81/4w4/?p=352', 0, 'revision', '', 0),
(353, 1, '2022-04-06 17:30:23', '2022-04-06 21:30:23', 'L’étudiant apprend à concevoir des expériences interactives en plaçant les besoins de l’utilisateur au cœur de sa création.\nCe cours transpose les techniques de conception et de communication graphique dans l’univers de l’interactivité. L’étudiant apprend à concevoir les éléments d’une interface multimédia, notamment en ce qui a trait au design de la navigation et de l’interactivité. Il apprend également les méthodes pour intégrer l’expérience utilisateur dans ses projets multimédias.\nCe cours développe chez l’étudiant la capacité de communiquer efficacement à l’utilisateur d’un produit multimédia en fonction de ses besoins, et ce, dans le respect des normes d’utilisabilité et d’accessibilité en vigueur dans l’industrie.\nDifférents types de produits sont mis en valeur tout au long de l’apprentissage, notamment par la création d’interfaces Web faisant appel aux langages de balisage et aux feuilles de styles. L’étudiant approfondit le développement de sa capacité d’analyse et ses compétences à présenter sa création.\n3-2-3\n2,67 unités	Préalable relatif : Conception graphique et imagerie vectorielle', '582-3C1 Design d’interactivité (75h)', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2022-04-06 17:30:23', '2022-04-06 21:30:23', '', 137, 'http://localhost:81/4w4/?p=353', 0, 'revision', '', 0),
(354, 1, '2022-04-06 17:30:33', '2022-04-06 21:30:33', 'En session 5, l\'étudiant doit choisir entre ce cours et le cours Technologies émergentes et avancées – volet Programmation.\nDans ce cours, l’étudiant davantage intéressé par les aspects créatifs du multimédia est amené à explorer et tester des approches novatrices et émergentes en multimédia telles que : système de captation de mouvement, réalité virtuelle, réalité augmentée, environnements immersifs et habillage vidéo, vidéo 360 degrés.\n2-2-2\n2 unités	Aucun préalable', '582-5MB	Technologies émergentes et avancées – volet Création (60h)', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2022-04-06 17:30:33', '2022-04-06 21:30:33', '', 148, 'http://localhost:81/4w4/?p=354', 0, 'revision', '', 0),
(355, 1, '2022-04-06 17:30:51', '2022-04-06 21:30:51', 'Dans ce cours, l’étudiant est initié au monde de l’imagerie de synthèse. Il est amené à maîtriser les outils et les fonctionnalités de base d’un logiciel de production 3D pour la création d\'images fixes (ex : interface graphique, logo ou autres objets).\nIl apprend les techniques et méthodes de travail liées à la modélisation, à la création et à l’application de matériaux et de textures ainsi qu’aux techniques d’éclairage et de rendu en image. Enfin, des principes de scénarisation liés à l’univers de la 3D sont également abordés.\n3-2-3\n2,67 unités	Préalable relatif : Conception graphique et imagerie vectorielle', '582-3M5 Imagerie 3D (75h)', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-04-06 17:30:51', '2022-04-06 21:30:51', '', 136, 'http://localhost:81/4w4/?p=355', 0, 'revision', '', 0),
(356, 1, '2022-04-06 17:31:02', '2022-04-06 21:31:02', 'En session 4, l\'étudiant doit choisir entre ce cours et le cours Interfaces Web réactives et animées.\nCe cours a pour but de permettre à l’étudiant d’approfondir les notions acquises dans le cours « 582-3M5 : Imagerie 3D » et de les appliquer dans la création de scènes élaborées. Le cours approfondit également les techniques de scénarisation couvertes dans les cours précédents.\nL’étudiant apprend notamment les outils et techniques de modélisation organique ainsi que les techniques d’organisation des hiérarchies, de montage des systèmes d’articulation et d’animation. Enfin, l’étudiant apprend à maîtriser les techniques d’optimisation et d’exportation en vue de diffuser les productions 3D pour le Web ou pour des applications 3D en temps réel.\n3-2-2\n2,33 unités	Préalable relatif : Imagerie 3D', '582-4MB Animation 3D (75h)', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2022-04-06 17:31:02', '2022-04-06 21:31:02', '', 144, 'http://localhost:81/4w4/?p=356', 0, 'revision', '', 0),
(357, 1, '2022-04-06 17:54:58', '2022-04-06 21:54:58', '<!-- wp:paragraph -->\n<p>guirgnugnfibncvd</p>\n<!-- /wp:paragraph -->', 'Profs', '', 'inherit', 'closed', 'closed', '', '326-autosave-v1', '', '', '2022-04-06 17:54:58', '2022-04-06 21:54:58', '', 326, 'http://localhost:81/4w4/?p=357', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'principal', 'principal', 0),
(3, 'lien_externe', 'lien_externe', 0),
(4, 'footer', 'footer', 0),
(5, 'Cours', 'cours', 0),
(6, 'HyppoliteC', 'hyppolitec', 0),
(7, 'Création 3D', 'creation-3d', 0),
(8, 'Design', 'design', 0),
(9, 'Jeu', 'jeu', 0),
(10, 'Vidéo', 'video', 0),
(11, 'Utilitaire', 'utilitaire', 0),
(12, 'Web', 'web', 0),
(13, 'categorie_cours', 'categorie_cours', 0),
(14, 'Accueil', 'accueil', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 5, 0),
(127, 5, 0),
(127, 10, 0),
(128, 5, 0),
(129, 5, 0),
(129, 8, 0),
(130, 5, 0),
(130, 12, 0),
(131, 5, 0),
(131, 9, 0),
(132, 5, 0),
(132, 10, 0),
(133, 5, 0),
(133, 8, 0),
(134, 5, 0),
(134, 12, 0),
(135, 5, 0),
(135, 9, 0),
(136, 5, 0),
(136, 7, 0),
(137, 5, 0),
(137, 8, 0),
(138, 5, 0),
(138, 12, 0),
(139, 5, 0),
(139, 9, 0),
(140, 5, 0),
(140, 11, 0),
(141, 5, 0),
(141, 12, 0),
(142, 5, 0),
(142, 9, 0),
(143, 5, 0),
(143, 12, 0),
(144, 5, 0),
(144, 7, 0),
(145, 5, 0),
(145, 11, 0),
(146, 5, 0),
(146, 11, 0),
(147, 5, 0),
(147, 12, 0),
(148, 5, 0),
(148, 8, 0),
(149, 5, 0),
(149, 11, 0),
(165, 3, 0),
(166, 3, 0),
(167, 3, 0),
(168, 3, 0),
(169, 4, 0),
(170, 4, 0),
(171, 4, 0),
(172, 4, 0),
(173, 2, 0),
(194, 2, 0),
(195, 4, 0),
(234, 5, 0),
(234, 9, 0),
(237, 5, 0),
(237, 11, 0),
(239, 5, 0),
(239, 11, 0),
(241, 5, 0),
(241, 9, 0),
(243, 5, 0),
(245, 2, 0),
(246, 2, 0),
(247, 2, 0),
(248, 2, 0),
(250, 2, 0),
(251, 2, 0),
(252, 2, 0),
(253, 2, 0),
(254, 2, 0),
(255, 2, 0),
(256, 2, 0),
(257, 2, 0),
(258, 2, 0),
(259, 2, 0),
(260, 2, 0),
(261, 2, 0),
(262, 2, 0),
(263, 2, 0),
(264, 2, 0),
(265, 2, 0),
(266, 2, 0),
(267, 2, 0),
(269, 2, 0),
(270, 2, 0),
(271, 2, 0),
(272, 2, 0),
(305, 6, 0),
(312, 13, 0),
(313, 13, 0),
(314, 13, 0),
(315, 13, 0),
(317, 13, 0),
(318, 13, 0),
(319, 13, 0),
(321, 14, 0),
(328, 14, 0),
(329, 14, 0),
(330, 14, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
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
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 28),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'category', 'Les cours du DEC en Techniques d\'intégration multimédia', 0, 27),
(6, 6, 'wp_theme', '', 0, 1),
(7, 7, 'category', 'Lors de ces cours, l\'étudiant apprendra à utiliser le logiciels Maya pour créer des objets 3D.', 0, 2),
(8, 8, 'category', '', 0, 4),
(9, 9, 'category', 'Les jeux vidéo', 0, 6),
(10, 10, 'category', '', 0, 2),
(11, 11, 'category', '', 0, 6),
(12, 12, 'category', '', 0, 6),
(13, 13, 'nav_menu', '', 0, 7),
(14, 14, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'e1975958'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', 'fr_FR'),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"a3571536a040f2cad8a56aa94ec39dfd312676170045f055a017dd6fde7b34d5\";a:4:{s:10:\"expiration\";i:1649690262;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36\";s:5:\"login\";i:1648480662;}s:64:\"cef5a06e1f814a701f7384d4e41e4acb0f0fcf90f5c98f26b109118e9bf2d819\";a:4:{s:10:\"expiration\";i:1650072422;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.55\";s:5:\"login\";i:1648862822;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '320'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '14'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1646860425');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
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
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'e1975958', '$P$BhvY6CQxkQRB3tShIHejZHsMKDas.B0', 'e1975958', 'e1975958@cmaisonneuve.qc.ca', 'http://localhost:81/4w4', '2022-03-07 20:07:22', '', 0, 'e1975958');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1769;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1221;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
