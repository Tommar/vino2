-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2014 at 06:34 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bt_fashion30`
--

-- --------------------------------------------------------

--
-- Table structure for table `#__assets`
--

CREATE TABLE IF NOT EXISTS `#__assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `#__assets`
--

INSERT INTO `#__assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 193, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 34, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 35, 36, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 37, 38, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 39, 40, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 41, 42, 1, 'com_login', 'com_login', '{}'),
(13, 1, 43, 44, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 45, 46, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 47, 48, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 49, 50, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 51, 52, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 53, 152, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 153, 156, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 157, 158, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 159, 160, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 161, 162, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 163, 164, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 165, 168, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 169, 172, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 173, 174, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 154, 155, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 170, 171, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 166, 167, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 175, 176, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 177, 178, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 179, 180, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 181, 182, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 183, 184, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 185, 186, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 54, 55, 2, 'com_modules.module.1', 'Categoreis', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 56, 57, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 58, 59, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 60, 61, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 62, 63, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 64, 65, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 66, 67, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 68, 69, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 70, 71, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 72, 73, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 74, 75, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 76, 77, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 78, 79, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 80, 81, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 82, 83, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 84, 85, 2, 'com_modules.module.87', 'Popular Tags', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 18, 86, 87, 2, 'com_modules.module.88', 'Site Information', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 18, 88, 89, 2, 'com_modules.module.89', 'Release News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 90, 91, 2, 'com_modules.module.90', 'Latest Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 18, 92, 93, 2, 'com_modules.module.91', 'User Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 18, 94, 95, 2, 'com_modules.module.92', 'Image Module', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 18, 96, 97, 2, 'com_modules.module.93', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 27, 19, 20, 3, 'com_content.article.1', 'Getting Started', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 1, 187, 188, 1, '#__ucm_content.1', '#__ucm_content.1', '[]'),
(64, 1, 189, 190, 1, 'com_k2', 'com_k2', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(65, 18, 98, 99, 2, 'com_modules.module.94', 'K2 Comments', ''),
(66, 18, 100, 101, 2, 'com_modules.module.95', 'K2 Content', ''),
(67, 18, 102, 103, 2, 'com_modules.module.96', 'K2 Tags', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 18, 104, 105, 2, 'com_modules.module.97', 'K2 Users', ''),
(69, 18, 106, 107, 2, 'com_modules.module.98', 'K2 User', ''),
(70, 18, 108, 109, 2, 'com_modules.module.99', 'K2 Quick Icons (admin)', ''),
(71, 18, 110, 111, 2, 'com_modules.module.100', 'K2 Stats (admin)', ''),
(72, 18, 112, 113, 2, 'com_modules.module.101', 'Tag Cloud', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 18, 114, 115, 2, 'com_modules.module.102', 'Blog Archive', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 18, 116, 117, 2, 'com_modules.module.103', 'BT Facebook LikeBox', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 18, 118, 119, 2, 'com_modules.module.104', 'Jshopping Categories', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 1, 191, 192, 1, 'com_jshopping', 'jshopping', '{}'),
(78, 18, 120, 121, 2, 'com_modules.module.105', 'K2 archive', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(79, 18, 122, 123, 2, 'com_modules.module.106', 'BT Google Maps', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 18, 124, 125, 2, 'com_modules.module.107', 'BT Social Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 18, 126, 127, 2, 'com_modules.module.108', 'Social', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(82, 18, 128, 129, 2, 'com_modules.module.109', 'Logo partner here!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(83, 18, 130, 131, 2, 'com_modules.module.110', 'Customer Service', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(84, 18, 132, 133, 2, 'com_modules.module.111', 'Footer menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 18, 134, 135, 2, 'com_modules.module.112', 'Get started and download template!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(86, 18, 136, 137, 2, 'com_modules.module.113', 'Copyright', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(87, 18, 138, 139, 2, 'com_modules.module.114', 'Social (2)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 18, 140, 141, 2, 'com_modules.module.115', 'Lastest products', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 18, 142, 143, 2, 'com_modules.module.116', 'Slideshow', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(90, 18, 144, 145, 2, 'com_modules.module.117', 'Language', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(91, 18, 146, 147, 2, 'com_modules.module.118', 'BT Background SlideShow', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 8, 22, 33, 2, 'com_content.category.8', 'Fashion', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(93, 92, 23, 24, 3, 'com_content.article.2', 'It uses a dictionary', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(94, 92, 25, 26, 3, 'com_content.article.3', 'Contrary to popular', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(95, 92, 27, 28, 3, 'com_content.article.4', 'Many desktop publishingMany desktop publishing', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(96, 92, 29, 30, 3, 'com_content.article.5', 'Nunc ullamcorper rutrum ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(97, 92, 31, 32, 3, 'com_content.article.6', 'Quisque vel magna urna', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(98, 18, 148, 149, 2, 'com_modules.module.119', 'BT Smart Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 18, 150, 151, 2, 'com_modules.module.120', 'User menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `#__associations`
--

CREATE TABLE IF NOT EXISTS `#__associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__banners`
--

CREATE TABLE IF NOT EXISTS `#__banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__banner_clients`
--

CREATE TABLE IF NOT EXISTS `#__banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__banner_tracks`
--

CREATE TABLE IF NOT EXISTS `#__banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__bt_sociallogin`
--

CREATE TABLE IF NOT EXISTS `#__bt_sociallogin` (
  `user_id` int(11) NOT NULL,
  `social_id` varchar(255) DEFAULT NULL,
  `social_type` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__categories`
--

CREATE TABLE IF NOT EXISTS `#__categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `#__categories`
--

INSERT INTO `#__categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 194, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 194, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 194, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 194, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 194, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 194, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 194, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 92, 1, 13, 14, 1, 'fashion', 'com_content', 'Fashion', 'fashion', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 194, '2014-04-03 17:02:06', 194, '2014-04-03 17:04:16', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__contact_details`
--

CREATE TABLE IF NOT EXISTS `#__contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__contact_details`
--

INSERT INTO `#__contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Contact', 'contact', '', '', '', '', '', '', '', '', '', '', 'abc@abc.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 194, 4, 1, '', '', '', '', '', '*', '2014-03-27 07:06:30', 194, '', '2014-03-27 07:33:48', 194, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 23);

-- --------------------------------------------------------

--
-- Table structure for table `#__content`
--

CREATE TABLE IF NOT EXISTS `#__content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__content`
--

INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, 'Getting Started', 'getting-started', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "Submit Article" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Template, site settings, and modules</h3>\r\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the "Template Settings" in the user menu. </p>\r\n<p>The boxes around the main content of the site are called modules.  You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p>\r\n<p>You can change some site settings such as the site name and description by clicking on the "Site Settings" link.</p>\r\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "User Menu" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org" target="_blank">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org" target="_blank"> Joomla! forums</a>.</p>', '', -2, 2, '2013-11-16 00:00:00', 194, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-16 00:00:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 93, 'It uses a dictionary', 'it-uses-a-dictionary', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. <span style="line-height: 1.3em;">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style="line-height: 1.3em;"> </span></p>\r\n', '\r\n<p>It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 1, 8, '2014-04-03 17:15:54', 194, '', '2014-04-03 17:23:38', 194, 0, '0000-00-00 00:00:00', '2014-04-03 17:15:54', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/2e1ax_bowthemes_frontpage_blog_1.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 4, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(3, 94, 'Contrary to popular', 'contrary-to-popular', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. <span style="line-height: 1.3em;">Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source</span></p>\r\n', '\r\n<p> </p>\r\n<p>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>', 1, 8, '2014-04-03 17:29:38', 194, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-04-03 17:29:38', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/2e1ax_bowthemes_featured_blog_3.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(4, 95, 'Many desktop publishingMany desktop publishing', 'many-desktop-publishingmany-desktop-publishing', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. <span style="line-height: 1.3em;">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style="line-height: 1.3em;"> </span></p>\r\n', '\r\n<p> </p>\r\n<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 1, 8, '2014-04-03 17:31:32', 194, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-04-03 17:31:32', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/2e1ax_bowthemes_frontpage_blog_2.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 96, 'Nunc ullamcorper rutrum ', 'nunc-ullamcorper-rutrum', '<p>Donec at lobortis erat. Aenean in vestibulum nibh. Donec bibendum enim et justo aliquet adipiscing. Duis at vulputate justo. Vivamus bibendum iaculis dolor, quis blandit dui. Morbi et nibh metus. <span style="line-height: 1.3em;">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style="line-height: 1.3em;"> </span></p>\r\n', '\r\n<p>Vivamus vel nisi cursus, vestibulum odio in, tincidunt sapien. Duis eu varius risus. Nulla vel dui vel mauris molestie pharetra eget quis risus. Aliquam congue sollicitudin lectus, nec ullamcorper eros faucibus id. Maecenas varius id est et tristique. Donec egestas, nunc at laoreet convallis, enim purus venenatis magna, et sollicitudin mi augue sit amet diam.</p>\r\n<p>Morbi a porta elit. Suspendisse pharetra ullamcorper lorem, eu convallis odio ultricies vitae. Nunc ullamcorper rutrum volutpat. Praesent ac mollis mi. Aenean odio dolor, hendrerit eu mi nec, consequat pretium lectus. Pellentesque ultrices velit ac nulla viverra, a rhoncus sapien fermentum. Aliquam id lobortis elit, eu gravida massa. Sed et metus non justo sodales convallis quis at felis. Donec ante dolor, tristique bibendum suscipit ac, condimentum ut felis. Integer ac sapien ac nisl ornare laoreet.</p>', 1, 8, '2014-04-03 17:32:38', 194, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-04-03 17:32:38', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/2e1ax_bowthemes_frontpage_blog_4.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(6, 97, 'Quisque vel magna urna', 'quisque-vel-magna-urna', '<p>In quis felis quis dui luctus hendrerit sed vulputate nibh. Suspendisse potenti. Vestibulum sem massa, volutpat quis molestie in, semper eu sem. <span style="line-height: 1.3em;">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style="line-height: 1.3em;"> </span></p>\r\n', '\r\n<p>Quisque scelerisque felis ut lacus luctus varius. Sed faucibus augue nibh, vel ultrices velit porta eu. Praesent et dictum nunc. Phasellus blandit justo lectus, eu rutrum tortor lobortis at. Quisque dictum, elit sed pulvinar tristique, augue nibh hendrerit lorem, ac dignissim tellus urna sit amet justo. Quisque vel magna urna. Vestibulum luctus risus mi. Nulla et euismod dolor. Sed et tempus diam, non laoreet arcu. Maecenas venenatis ante nibh. Proin imperdiet odio quis ligula condimentum tincidunt. Donec gravida, elit nec accumsan faucibus, nisi massa semper odio, vitae varius libero magna at quam.</p>', 1, 8, '2014-04-03 17:33:28', 194, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-04-03 17:33:28', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/2e1ax_bowthemes_frontpage_blog_5.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `#__contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

--
-- Dumping data for table `#__contentitem_tag_map`
--

INSERT INTO `#__contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 1, 2, '2013-11-16 21:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__content_frontpage`
--

CREATE TABLE IF NOT EXISTS `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__content_frontpage`
--

INSERT INTO `#__content_frontpage` (`content_id`, `ordering`) VALUES
(2, 4),
(3, 3),
(5, 2),
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__content_rating`
--

CREATE TABLE IF NOT EXISTS `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__content_types`
--

CREATE TABLE IF NOT EXISTS `#__content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `#__content_types`
--

INSERT INTO `#__content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `#__core_log_searches`
--

CREATE TABLE IF NOT EXISTS `#__core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_acl`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_acl' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_acl' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_acl_filters`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_acl_filters' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_acl_filters' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_acl_group`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_acl_group' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_acl_group' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_adsense`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_adsense' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_adsense' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_autoarticle_map`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_autoarticle_map' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_autoarticle_map' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_blogger_subscription`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_blogger_subscription' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_blogger_subscription' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_captcha`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_captcha' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_captcha' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_category`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_category' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_category' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_category_acl`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_category_acl' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_category_acl' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_category_acl_item`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_category_acl_item' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_category_acl_item' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_category_subscription`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_category_subscription' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_category_subscription' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_comment`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_comment' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_comment' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_configs`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_configs' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_configs' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_drafts`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_drafts' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_drafts' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_external`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_external' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_external' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_external_groups`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_external_groups' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_external_groups' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_featured`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_featured' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_featured' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_feedburner`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_feedburner' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_feedburner' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_feeds`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_feeds' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_feeds' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_feeds_history`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_feeds_history' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_feeds_history' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_hashkeys`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_hashkeys' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_hashkeys' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_likes`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_likes' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_likes' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_mailq`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_mailq' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_mailq' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_mediamanager`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_mediamanager' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_mediamanager' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_meta`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_meta' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_meta' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_migrate_content`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_migrate_content' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_migrate_content' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_oauth`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_oauth' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_oauth' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_oauth_posts`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_oauth_posts' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_oauth_posts' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_post`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_post' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_post' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_post_rejected`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_post_rejected' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_post_rejected' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_post_subscription`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_post_subscription' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_post_subscription' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_post_tag`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_post_tag' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_post_tag' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_ratings`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_ratings' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_ratings' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_reports`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_reports' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_reports' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_site_subscription`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_site_subscription' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_site_subscription' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_stream`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_stream' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_stream' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_tag`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_tag' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_tag' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_team`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_team' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_team' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_team_groups`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_team_groups' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_team_groups' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_team_post`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_team_post' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_team_post' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_team_request`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_team_request' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_team_request' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_team_subscription`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_team_subscription' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_team_subscription' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_team_users`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_team_users' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_team_users' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_trackback`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_trackback' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_trackback' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_trackback_sent`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_trackback_sent' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_trackback_sent' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_twitter_microblog`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_twitter_microblog' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_twitter_microblog' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_users`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_users' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_users' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__easyblog_xml_wpdata`
--
-- in use(#1146 - Table 'bt_fashion30.#__easyblog_xml_wpdata' doesn't exist)
-- Error reading data: (#1146 - Table 'bt_fashion30.#__easyblog_xml_wpdata' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `#__extensions`
--

CREATE TABLE IF NOT EXISTS `#__extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10035 ;

--
-- Dumping data for table `#__extensions`
--

INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"1","presentation_style":"plain","show_name":"0","show_position":"0","show_email":"0","show_street_address":"0","show_suburb":"0","show_state":"0","show_postcode":"0","show_country":"0","show_telephone":"0","show_mobile":"0","show_fax":"0","show_webpage":"0","show_misc":"0","show_image":"0","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_tags":"0","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"none","float_fulltext":"none","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"3","num_columns":"1","num_links":"0","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"3dea1893953d43fc7a6c55399c57c834"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2013-12-14","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2013 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.1.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.0.18","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 1, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 1, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"March 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.3","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'com_k2', 'component', 'com_k2', '', 1, 1, 0, 0, '{"name":"COM_K2","type":"component","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla!","group":""}', '{"enable_css":"1","jQueryHandling":"1.8remote","backendJQueryHandling":"remote","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeedLink":"1","userFeedIcon":"1","userItemCount":"3","userItemTitle":"1","userItemTitleLinked":"1","userItemDateCreated":"1","userItemImage":"1","userItemIntroText":"1","userItemCategory":"1","userItemTags":"1","userItemCommentsAnchor":"1","userItemReadMore":"1","userItemK2Plugins":"1","tagItemCount":"3","tagItemTitle":"1","tagItemTitleLinked":"1","tagItemDateCreated":"1","tagItemImage":"1","tagItemIntroText":"1","tagItemCategory":"1","tagItemReadMore":"1","tagItemExtraFields":"0","tagOrdering":"","tagFeedLink":"1","tagFeedIcon":"1","genericItemCount":"3","genericItemTitle":"1","genericItemTitleLinked":"1","genericItemDateCreated":"1","genericItemImage":"1","genericItemIntroText":"1","genericItemCategory":"1","genericItemReadMore":"1","genericItemExtraFields":"0","genericFeedLink":"1","genericFeedIcon":"1","feedLimit":"10","feedItemImage":"1","feedImgSize":"S","feedItemIntroText":"1","feedTextWordLimit":"","feedItemFullText":"1","feedItemTags":"0","feedItemVideo":"0","feedItemGallery":"0","feedItemAttachments":"0","feedBogusEmail":"","introTextCleanup":"0","introTextCleanupExcludeTags":"","introTextCleanupTagAttr":"","fullTextCleanup":"0","fullTextCleanupExcludeTags":"","fullTextCleanupTagAttr":"","xssFiltering":"0","linkPopupWidth":"900","linkPopupHeight":"600","imagesQuality":"100","itemImageXS":"100","itemImageS":"200","itemImageM":"400","itemImageL":"1026","itemImageXL":"1026","itemImageGeneric":"1026","catImageWidth":"100","catImageDefault":"1","userImageWidth":"100","userImageDefault":"1","commenterImgWidth":"48","onlineImageEditor":"splashup","imageTimestamp":"0","imageMemoryLimit":"","socialButtonCode":"","twitterUsername":"","facebookImage":"Medium","comments":"1","commentsOrdering":"DESC","commentsLimit":"10","commentsFormPosition":"below","commentsPublishing":"1","commentsReporting":"2","commentsReportRecipient":"","inlineCommentsModeration":"0","gravatar":"1","antispam":"0","recaptchaForRegistered":"1","akismetForRegistered":"1","commentsFormNotes":"1","commentsFormNotesText":"","frontendEditing":"1","showImageTab":"1","showImageGalleryTab":"1","showVideoTab":"1","showExtraFieldsTab":"1","showAttachmentsTab":"1","showK2Plugins":"1","sideBarDisplayFrontend":"0","mergeEditors":"1","sideBarDisplay":"1","attachmentsFolder":"","hideImportButton":"0","googleSearch":"0","googleSearchContainer":"k2GoogleSearchContainer","K2UserProfile":"1","K2UserGroup":"1","redirect":"156","adminSearch":"simple","cookieDomain":"","taggingSystem":"1","lockTags":"0","showTagFilter":"0","k2TagNorm":"0","k2TagNormCase":"lower","k2TagNormAdditionalReplacements":"","recaptcha_public_key":"","recaptcha_private_key":"","recaptcha_theme":"clean","recaptchaOnRegistration":"0","akismetApiKey":"","stopForumSpam":"0","stopForumSpamApiKey":"","showItemsCounterAdmin":"1","showChildCatItems":"1","disableCompactOrdering":"0","metaDescLimit":"150","enforceSEFReplacements":"0","SEFReplacements":"\\u00c0|A, \\u00c1|A, \\u00c2|A, \\u00c3|A, \\u00c4|A, \\u00c5|A, \\u00e0|a, \\u00e1|a, \\u00e2|a, \\u00e3|a, \\u00e4|a, \\u00e5|a, \\u0100|A, \\u0101|a, \\u0102|A, \\u0103|a, \\u0104|A, \\u0105|a, \\u00c7|C, \\u00e7|c, \\u0106|C, \\u0107|c, \\u0108|C, \\u0109|c, \\u010a|C, \\u010b|c, \\u010c|C, \\u010d|c, \\u00d0|D, \\u00f0|d, \\u010e|D, \\u010f|d, \\u0110|D, \\u0111|d, \\u00c8|E, \\u00c9|E, \\u00ca|E, \\u00cb|E, \\u00e8|e, \\u00e9|e, \\u00ea|e, \\u00eb|e, \\u0112|E, \\u0113|e, \\u0114|E, \\u0115|e, \\u0116|E, \\u0117|e, \\u0118|E, \\u0119|e, \\u011a|E, \\u011b|e, \\u011c|G, \\u011d|g, \\u011e|G, \\u011f|g, \\u0120|G, \\u0121|g, \\u0122|G, \\u0123|g, \\u0124|H, \\u0125|h, \\u0126|H, \\u0127|h, \\u00cc|I, \\u00cd|I, \\u00ce|I, \\u00cf|I, \\u00ec|i, \\u00ed|i, \\u00ee|i, \\u00ef|i, \\u0128|I, \\u0129|i, \\u012a|I, \\u012b|i, \\u012c|I, \\u012d|i, \\u012e|I, \\u012f|i, \\u0130|I, \\u0131|i, \\u0134|J, \\u0135|j, \\u0136|K, \\u0137|k, \\u0138|k, \\u0139|L, \\u013a|l, \\u013b|L, \\u013c|l, \\u013d|L, \\u013e|l, \\u013f|L, \\u0140|l, \\u0141|L, \\u0142|l, \\u00d1|N, \\u00f1|n, \\u0143|N, \\u0144|n, \\u0145|N, \\u0146|n, \\u0147|N, \\u0148|n, \\u0149|n, \\u014a|N, \\u014b|n, \\u00d2|O, \\u00d3|O, \\u00d4|O, \\u00d5|O, \\u00d6|O, \\u00d8|O, \\u00f2|o, \\u00f3|o, \\u00f4|o, \\u00f5|o, \\u00f6|o, \\u00f8|o, \\u014c|O, \\u014d|o, \\u014e|O, \\u014f|o, \\u0150|O, \\u0151|o, \\u0154|R, \\u0155|r, \\u0156|R, \\u0157|r, \\u0158|R, \\u0159|r, \\u015a|S, \\u015b|s, \\u015c|S, \\u015d|s, \\u015e|S, \\u015f|s, \\u0160|S, \\u0161|s, \\u017f|s, \\u0162|T, \\u0163|t, \\u0164|T, \\u0165|t, \\u0166|T, \\u0167|t, \\u00d9|U, \\u00da|U, \\u00db|U, \\u00dc|U, \\u00f9|u, \\u00fa|u, \\u00fb|u, \\u00fc|u, \\u0168|U, \\u0169|u, \\u016a|U, \\u016b|u, \\u016c|U, \\u016d|u, \\u016e|U, \\u016f|u, \\u0170|U, \\u0171|u, \\u0172|U, \\u0173|u, \\u0174|W, \\u0175|w, \\u00dd|Y, \\u00fd|y, \\u00ff|y, \\u0176|Y, \\u0177|y, \\u0178|Y, \\u0179|Z, \\u017a|z, \\u017b|Z, \\u017c|z, \\u017d|Z, \\u017e|z, \\u03b1|a, \\u03b2|b, \\u03b3|g, \\u03b4|d, \\u03b5|e, \\u03b6|z, \\u03b7|h, \\u03b8|th, \\u03b9|i, \\u03ba|k, \\u03bb|l, \\u03bc|m, \\u03bd|n, \\u03be|x, \\u03bf|o, \\u03c0|p, \\u03c1|r, \\u03c3|s, \\u03c4|t, \\u03c5|y, \\u03c6|f, \\u03c7|ch, \\u03c8|ps, \\u03c9|w, \\u0391|A, \\u0392|B, \\u0393|G, \\u0394|D, \\u0395|E, \\u0396|Z, \\u0397|H, \\u0398|Th, \\u0399|I, \\u039a|K, \\u039b|L, \\u039c|M, \\u039e|X, \\u039f|O, \\u03a0|P, \\u03a1|R, \\u03a3|S, \\u03a4|T, \\u03a5|Y, \\u03a6|F, \\u03a7|Ch, \\u03a8|Ps, \\u03a9|W, \\u03ac|a, \\u03ad|e, \\u03ae|h, \\u03af|i, \\u03cc|o, \\u03cd|y, \\u03ce|w, \\u0386|A, \\u0388|E, \\u0389|H, \\u038a|I, \\u038c|O, \\u038e|Y, \\u038f|W, \\u03ca|i, \\u0390|i, \\u03cb|y, \\u03c2|s, \\u0410|A, \\u04d0|A, \\u04d2|A, \\u04d8|E, \\u04da|E, \\u04d4|E, \\u0411|B, \\u0412|V, \\u0413|G, \\u0490|G, \\u0403|G, \\u0492|G, \\u04f6|G, y|Y, \\u0414|D, \\u0415|E, \\u0400|E, \\u0401|YO, \\u04d6|E, \\u04bc|E, \\u04be|E, \\u0404|YE, \\u0416|ZH, \\u04c1|DZH, \\u0496|ZH, \\u04dc|DZH, \\u0417|Z, \\u0498|Z, \\u04de|DZ, \\u04e0|DZ, \\u0405|DZ, \\u0418|I, \\u040d|I, \\u04e4|I, \\u04e2|I, \\u0406|I, \\u0407|JI, \\u04c0|I, \\u0419|Y, \\u048a|Y, \\u0408|J, \\u041a|K, \\u049a|Q, \\u049e|Q, \\u04a0|K, \\u04c3|Q, \\u049c|K, \\u041b|L, \\u04c5|L, \\u0409|L, \\u041c|M, \\u04cd|M, \\u041d|N, \\u04c9|N, \\u04a2|N, \\u04c7|N, \\u04a4|N, \\u040a|N, \\u041e|O, \\u04e6|O, \\u04e8|O, \\u04ea|O, \\u04a8|O, \\u041f|P, \\u04a6|PF, \\u0420|P, \\u048e|P, \\u0421|S, \\u04aa|S, \\u0422|T, \\u04ac|TH, \\u040b|T, \\u040c|K, \\u0423|U, \\u040e|U, \\u04f2|U, \\u04f0|U, \\u04ee|U, \\u04ae|U, \\u04b0|U, \\u0424|F, \\u0425|H, \\u04b2|H, \\u04ba|H, \\u0426|TS, \\u04b4|TS, \\u0427|CH, \\u04f4|CH, \\u04b6|CH, \\u04cb|CH, \\u04b8|CH, \\u040f|DZ, \\u0428|SH, \\u0429|SHT, \\u042a|A, \\u042b|Y, \\u04f8|Y, \\u042c|Y, \\u048c|Y, \\u042d|E, \\u04ec|E, \\u042e|YU, \\u042f|YA, \\u0430|a, \\u04d1|a, \\u04d3|a, \\u04d9|e, \\u04db|e, \\u04d5|e, \\u0431|b, \\u0432|v, \\u0433|g, \\u0491|g, \\u0453|g, \\u0493|g, \\u04f7|g, y|y, \\u0434|d, \\u0435|e, \\u0450|e, \\u0451|yo, \\u04d7|e, \\u04bd|e, \\u04bf|e, \\u0454|ye, \\u0436|zh, \\u04c2|dzh, \\u0497|zh, \\u04dd|dzh, \\u0437|z, \\u0499|z, \\u04df|dz, \\u04e1|dz, \\u0455|dz, \\u0438|i, \\u045d|i, \\u04e5|i, \\u04e3|i, \\u0456|i, \\u0457|ji, \\u04c0|i, \\u0439|y, \\u048b|y, \\u0458|j, \\u043a|k, \\u049b|q, \\u049f|q, \\u04a1|k, \\u04c4|q, \\u049d|k, \\u043b|l, \\u04c6|l, \\u0459|l, \\u043c|m, \\u04ce|m, \\u043d|n, \\u04ca|n, \\u04a3|n, \\u04c8|n, \\u04a5|n, \\u045a|n, \\u043e|o, \\u04e7|o, \\u04e9|o, \\u04eb|o, \\u04a9|o, \\u043f|p, \\u04a7|pf, \\u0440|p, \\u048f|p, \\u0441|s, \\u04ab|s, \\u0442|t, \\u04ad|th, \\u045b|t, \\u045c|k, \\u0443|u, \\u045e|u, \\u04f3|u, \\u04f1|u, \\u04ef|u, \\u04af|u, \\u04b1|u, \\u0444|f, \\u0445|h, \\u04b3|h, \\u04bb|h, \\u0446|ts, \\u04b5|ts, \\u0447|ch, \\u04f5|ch, \\u04b7|ch, \\u04cc|ch, \\u04b9|ch, \\u045f|dz, \\u0448|sh, \\u0449|sht, \\u044a|a, \\u044b|y, \\u04f9|y, \\u044c|y, \\u048d|y, \\u044d|e, \\u04ed|e, \\u044e|yu, \\u044f|ya","k2Sef":"0","k2SefLabelCat":"content","k2SefLabelTag":"tag","k2SefLabelUser":"author","k2SefLabelSearch":"search","k2SefLabelDate":"date","k2SefLabelItem":"0","k2SefLabelItemCustomPrefix":"","k2SefInsertItemId":"1","k2SefItemIdTitleAliasSep":"dash","k2SefUseItemTitleAlias":"1","k2SefInsertCatId":"1","k2SefCatIdTitleAliasSep":"dash","k2SefUseCatTitleAlias":"1","sh404SefLabelCat":"","sh404SefLabelUser":"blog","sh404SefLabelItem":"2","sh404SefTitleAlias":"alias","sh404SefModK2ContentFeedAlias":"feed","sh404SefInsertItemId":"0","sh404SefInsertUniqueItemId":"0","cbIntegration":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'plg_finder_k2', 'plugin', 'k2', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_k2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"PLG_FINDER_K2_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Search - K2', 'plugin', 'k2', 'search', 0, 1, 1, 0, '{"name":"Search - K2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT","group":""}', '{"search_limit":"50","search_tags":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{"name":"System - K2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{"name":"User - K2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Josetta - K2 Categories', 'plugin', 'k2category', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Categories","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Josetta - K2 Items', 'plugin', 'k2item', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Items","type":"plugin","creationDate":"June 7th, 2012","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 1, 0, 0, '{"name":"K2 Comments","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"MOD_K2_COMMENTS_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","module_usage":"","":"K2_TOP_COMMENTERS","catfilter":"0","category_id":"","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"1","feed":"1","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'K2 Content', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{"name":"K2 Content","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_MOD_K2_CONTENT_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","":"K2_OTHER_OPTIONS","catfilter":"0","category_id":"","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"","items":"","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'K2 Tools', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{"name":"K2 Tools","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_TOOLS","group":""}', '{"moduleclass_sfx":"","module_usage":"0","":"K2_CUSTOM_CODE_SETTINGS","archiveItemsCounter":"1","archiveCategory":"","authors_module_category":"","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"","home":"","seperator":"","root_id":"","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"","catfilter":"0","category_id":"","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":"0","cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'K2 Users', 'module', 'mod_k2_users', '', 0, 1, 0, 0, '{"name":"K2 Users","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_MOD_K2_USERS_DESCRTIPTION","group":""}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"0","":"K2_DISPLAY_OPTIONS","filter":"1","K2UserGroup":"","ordering":"1","limit":"4","userIDs":"","userName":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","userDescription":"1","userDescriptionWordLimit":"","userURL":"1","userEmail":"0","userFeed":"1","userItemCount":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'K2 User', 'module', 'mod_k2_user', '', 0, 1, 0, 0, '{"name":"K2 User","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_MOD_K2_USER_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 1, 2, 0, '{"name":"K2 Quick Icons (admin)","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE","group":""}', '{"modCSSStyling":"1","modLogo":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 1, 2, 0, '{"name":"K2 Stats (admin)","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE","group":""}', '{"latestItems":"1","popularItems":"1","mostCommentedItems":"1","latestComments":"1","statistics":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"17 Feb 2014","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.1.2","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2013 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'BT Facebook LikeBox', 'module', 'mod_bt_facebooklikebox', '', 0, 1, 0, 0, '{"name":"BT Facebook LikeBox","type":"module","creationDate":"Oct 2011","author":"Bowthemes","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"www.bowthemes.com","version":"1.5","description":"\\n\\t\\n\\t\\t\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Facebook LikeBox Module Version 1.5<\\/h3>\\t\\t\\t\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_facebooklikebox\\/admin\\/images\\/facebook-fan.png\\"><\\/a>\\n\\t\\t\\t<p>BT Facebook like box, a Joomla 2.5 & Joomla 3.x native module provides Facebook Page owners to attract and gain Likes from their own website content, it uses the <a href=\\"http:\\/\\/developers.facebook.com\\/docs\\/reference\\/plugins\\/like-box\\" target=\\"_blank\\">FaceBook LikeBox API<\\/a>. \\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Show how many users already like your page, and which of their friends like it too<\\/li>\\n\\t\\t\\t\\t<li>Read recent posts from the page<\\/li>\\n\\t\\t\\t\\t<li>Like the page with one click, without needing to visit the page<\\/li>\\t\\t\\n\\t\\t\\t\\t<li>Support both Fanbox & Likebox type<\\/li>\\t\\t\\n\\t\\t\\t\\t<li>Customize the Facebook Fan Box Layout with CSS<\\/li>\\t\\t\\t\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is 1.5. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-facebook-like-box.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>Userful links<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-facebook-like-box.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/11-bt-facebook-like\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/11-bt-facebook-like\\/\\">Forum support<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 10px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tpadding: 5px 5px 5px 30px;\\t\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t}\\n\\t\\t\\t\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_facebooklikebox\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\t\\n\\t","group":""}', '{"type":"likebox","profile":"https:\\/\\/www.facebook.com\\/zuck","href":"http:\\/\\/www.facebook.com\\/bowthemes","width":"","height":"","height_follow":"","layout":"standard","font":"","show_faces":"true","connections":"10","colorscheme":"light","show_stream":"true","show_header":"true","force_wall":"false","show_border":"true","render":"iframe","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'Jshopping Categories', 'module', 'mod_jshopping_categories', '', 0, 1, 0, 0, '{"name":"Jshopping Categories","type":"module","creationDate":"17.12.2012","author":"MAXXmarketing GmbH","copyright":"","authorEmail":"marketing@maxx-marketing.net","authorUrl":"http:\\/\\/www.webdesigner-profi.de","version":"3.0.2","description":"Displays a categories in shop.","group":""}', '{"show_image":"0","sort":"id","ordering":"asc"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'jshopping', 'component', 'com_jshopping', '', 1, 1, 0, 0, '{"name":"jshopping","type":"component","creationDate":"10.02.2014","author":"MAXXmarketing GmbH","copyright":"","authorEmail":"marketing@maxx-marketing.net","authorUrl":"http:\\/\\/www.webdesigner-profi.de","version":"4.4.1","description":"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'BT_Fashion', 'template', 'bt_fashion', '', 0, 1, 1, 0, '{"name":"BT_Fashion","type":"template","creationDate":"24 Mar 2014","author":"Bowthemes.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"templates@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0","description":"\\n\\t\\tBT Fashion template - Design by Bowthemes.com\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10024, 'BT Google Maps', 'module', 'mod_bt_googlemaps', '', 0, 1, 0, 0, '{"name":"BT Google Maps","type":"module","creationDate":"Jun 2012","author":"BowThemes","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"2.0.5","description":"\\n\\t\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 5px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t\\tpadding: 5px 5px 5px 20px;\\t\\t\\t\\t\\n\\t\\t\\t}\\n\\t\\t\\t\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_googlemaps\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Google Maps Module Version 2.0.5<\\/h3>\\t\\t\\t\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_googlemaps\\/admin\\/images\\/mod_bt_googlemaps.png\\"><\\/a>\\n\\t\\t\\t<p>Bring google maps to your website by the simplest & easiest way. Using Google Maps version 3 services, BT Google Maps support you input both Address and Coordinate, create your custom marker with title, images, description...\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Google Maps Version 3 (Latest)<\\/li>\\n\\t\\t\\t\\t<li>Support both input types: Address and Coordinate <\\/li>\\n\\t\\t\\t\\t<li>Retrieving lat\\/long of location using Geocoder<\\/li>\\n\\t\\t\\t\\t<li>Auto-Detect Language<\\/li>\\n\\t\\t\\t\\t<li>Streetview, MapOverview, ZoomControl, PanControl, ScaleControl, MapTypeControl<\\/li>\\n\\t\\t\\t\\t<li>Support Multiple Marker( Easy customize title, icon, shadow, description popup)<\\/li>\\n\\t\\t\\t\\t<li>Weather & cloud layers<\\/li>\\n\\t\\t\\t\\t<li>Support custom map style<\\/li>\\n\\t\\t\\t\\t<li>Support custom inforwindow style<\\/li>\\n\\t\\t\\t\\t<li>Multiple module instances<\\/li>\\t\\n\\t\\t\\t\\t<li>The configuration is very easy and simple<\\/li>\\t\\t\\t\\t\\n\\t\\t\\t\\t<li>Compatibility with Joomla 1.6, 1.7, 2.5 & Joomla 3.0<\\/li>\\n\\t\\t\\t\\t<li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is 2.0.5. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>Userful links<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/27-bt-google-map-module\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/27-bt-google-map-module\\/\\">Forum support<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":""}', '{"mapType":"roadmap","mapCenterType":"address","mapCenterAddress":"New York, United States","mapCenterCoordinate":"40.7143528, -74.0059731","width":"auto","height":"350","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","weather":"0","temperatureUnit":"f","cloud":"1","enable-style":"0","style-title":"BT Map","createNewOrApplyDefaultStyle":"createNew","enable-custom-infobox":"0","boxcss":"background :#ffffff,\\r\\nopacity : 0.85,\\r\\nwidth : 280px,\\r\\nheight :100px,\\r\\nborder : 1px solid grey,\\r\\nborderRadius:3px,\\r\\npadding : 10px,\\r\\nboxShadow:30px 10px 10px 1px grey","pixelOffset":"-150,-155","closeBoxMargin":"-9px","closeBoxURL":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'BT Social Login', 'module', 'mod_bt_sociallogin', '', 0, 1, 0, 0, '{"name":"BT Social Login","type":"module","creationDate":"April 2012","author":"BowThemes","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.1.5","description":"\\n\\t\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align:left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 5px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t\\tpadding: 5px 5px 5px 20px;\\t\\t\\t\\t\\n\\t\\t\\t}\\n\\t\\t\\t\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_sociallogin\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Social Login Module Version 1.1.5<\\/h3>\\t\\t\\t\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_sociallogin\\/admin\\/images\\/icon.png\\"><\\/a>\\n\\t\\t\\t<p>BT Social Login is the module allows registration from social network Facebook, Twitter and Google by the easiest way. BT Social Login uses ajax login\\/registration and support K2, Jomsocial, CB & custom component\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Ability to run the same time with login module of Joomla<\\/li>\\n\\t\\t\\t\\t<li>Ajax login & Ajax registration<\\/li>\\n\\t\\t\\t\\t<li>Social login: Facebook, twitter, google<\\/li>\\n\\t\\t\\t\\t<li>Profile user plugin support<\\/li>\\n\\t\\t\\t\\t<li>Captcha support<\\/li>\\n\\t\\t\\t\\t<li>Call login & registration popup form by custom<\\/li>\\n\\t\\t\\t\\t<li>K2, Jomsocial, CB & custom component support<\\/li>\\n\\t\\t\\t\\t<li>Two style dispay options : Modal box and Drop down<\\/li>\\t\\t\\t\\t\\n\\t\\t\\t\\t<li>Compatibility with Joomla 2.5 and Joomla 3.0<\\/li>\\n\\t\\t\\t\\t<li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is 1.1.5. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-sociallogin-module.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>Userful links<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-sociallogin-module.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-sociallogin\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-sociallogin\\/\\">Forum support<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":""}', '{"align_option":"right","display_type":"0","mouse_event":"click","login":"","logout":"","name":"1","logout_button":"1","enabled_registration_tab":"1","tag_login_modal":"","tag_register_modal":"","module_id":"19","module_position":"0","integrated_component":"","module_option":"0","link_option":"","bg_button_color":"#6d850a","text_button_color":"#ffffff","loginbox_size":"360,400","registrationbox_size":"450,500","enable_fb":"0","appfb_id":"","appfb_secret":"","edit_info_fb":"0","edit_email_facebook":"0","PROFILE_FIELDS":"PROFILE_FIELDS","fb-profiles":"","enable_gg":"0","appgg_id":"","appgg_secret":"","edit_info_gg":"0","edit_email_google":"0","gg-profiles":"","enable_twitter":"0","apptwitter_id":"","apptwitter_secret":"","edit_info_twitter":"1","edit_email_twitter":"1","tt-profiles":"","enable_profile":"1","captcha":"","loadJquery":"auto","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'BT Product Slider', 'module', 'mod_bt_productslider', '', 0, 1, 0, 0, '{"name":"BT Product Slider","type":"module","creationDate":"October 2012","author":"www.bowthemes.com","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.2.3","description":"\\n\\t\\n<div class=\\"bt_description\\">\\n\\t<h3>BT Product Slider Module Version 1.2.3<\\/h3>\\n\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img\\n\\t\\tsrc=\\"..\\/modules\\/mod_bt_productslider\\/admin\\/images\\/bt-slider.png\\">\\n\\t<\\/a>\\n\\t<p>BT Product Slider is a smart choice for E-commerce Website. It helps display your featured products in beautiful Flipbook Slide or Accordion effects. Especially, BT Product Slider is powered by Responsive solution, what makes it truly useful for your business on Mobile and Computer <\\/p>\\n\\t<br clear=\\"both\\" \\/>\\n\\t<h3>Features<\\/h3>\\n\\t<ul class=\\"list-style\\">\\n\\t\\t<li>Compatibility with Joomla 2.5 and Joomla 3.x<\\/li>\\n\\t\\t<li>Virtuemart & Joomshopping integration<\\/li>\\n\\t\\t<li>Allow to show the latest products, best-selling, hit products or showing random products <\\/li>\\n\\t\\t<li>Scalable size of the module<\\/li>\\n\\t\\t<li>Horizontal and vertical product presentation (columns and rows configuration).<\\/li>\\n\\t\\t<li>Control slide with next, back and navigation button<\\/li>\\n\\t\\t<li>Virtuemart & Joomshopping integration<\\/li>\\n\\t\\t<li>Image Cropping<\\/li>\\n\\t\\t<li>Powerful with many layouts: Slide, Arcodion, Flipbook, Responsive<\\/li>\\n\\t\\t<li>Easy and friendly back-end administration.<\\/li>\\n\\t\\t<li>Fully compatible: Firefox, IE7+, Opera 9.5, Safari, Netscape, Google Chrome, Camino, Flock 0.7+.<\\/li>\\n        <li>Support responsive website with layout Responsive<\\/li>\\n\\t<\\/ul>\\n\\t<h3>UPgrade versions<\\/h3>\\n\\t<p>\\n\\t\\tYour current versions is 1.2.3. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/joomla-extensions\\/bt-product-slider.html\\">Find our latest versions now<\\/a>\\n\\t<\\/p>\\n\\t<h3>Userful links<\\/h3>\\n\\t<ul>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/joomla-extensions\\/bt-product-slider.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/35-bt-product-slider\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/35-bt-product-slider\\/\\">Forum support<\\/a><\\/li>\\n\\t<\\/ul>\\n\\t<h3>About bow themes & copyright<\\/h3>\\n\\t<p>Bow Themes is Professional Joomla template provider. We are\\n\\t\\tfocused on creating unique, attractive and clean templates without\\n\\t\\tloosing flexibility and simplicity of customization<\\/p>\\n\\tCopyright (C) 2012 BowThemes\\n<\\/div>\\n<style>\\n.bt_description{\\n\\ttext-align: left;\\n}\\t\\n.bt_description h3 {\\n\\ttext-transform: uppercase;\\n\\tmargin: 20px 0px 10px 0px;\\n}\\n\\n.bt_description img {\\n\\tfloat: left;\\n\\tmargin: 5px 10px 5px 0px;\\n}\\n\\n.bt_description p,.bt_description li {\\n\\tpadding: 5px 5px 5px 30px;\\n\\tlist-style: none outside none;\\n}\\n\\n.bt_description ul.list-style li {\\n\\tbackground: url(..\\/modules\\/mod_bt_productslider\\/admin\\/images\\/tick.png)\\n\\t\\t0px 6px no-repeat;\\n\\tpadding-left: 30px;\\n\\tline-height: 15px;\\n}\\n<\\/style>\\n\\n    ","group":""}', '{"moduleclass_sfx":"","content_title":"","content_title_link":"","layout":"default","rtl":"0","GRID_SETTING":"GRID_SETTING","items_per_cols":"1","items_per_rows":"3","items_per_page":"5","module_width":"auto","item_height":"auto","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"200","NAVIGATION_SETTING":"NAVIGATION_SETTING","next_back_position":"flanks","navigation_type":"bullet","navigation_position":"top","flipbook_pagenumber":"0","flipbook_nextback":"1","source":"category","vm_ids":"","js_categories":"","js_ids":"","limit_items":"12","limit_items_for_each":"0","group":"","ordering":"created_on-asc","title_option":"TITLE_OPTION","show_title":"1","intro_text_option":"INTRO_TEXT_OPTION","show_intro":"1","limit_description_by":"char","description_max_chars":"100","category_name_option":"CATEGORY_NAME_OPTION","show_category_name":"1","show_category_name_as_link":"1","image_option":"IMAGE_OPTION","show_image":"1","check_image_exist":"1","image_align":"center","image_thumb":"1","thumbnail_width":"180","thumbnail_height":"120","default_thumb":"1","orther_option":"ORTHER_OPTION","show_manufacturer":"0","show_rating":"1","show_review_count":"1","show_label":"1","show_view_details":"1","show_add_to_cart":"1","hovereffect":"1","slide_effect":"scroll","slide_direction":"horizontal","slide_item_per_time":"1","pause_hover":"1","duration":"500","auto_start":"1","interval":"3","auto_strip_tags":"1","allow_tags":"","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-03-19","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.2.3.1","description":"Russian language pack (site) for Joomla! 3.2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-03-19","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.2.3.1","description":"Russian language pack (administrator) for Joomla! 3.2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'ru-RU', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"3.2.3.1","description":"Joomla 3.2 Russian Language Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'BT Background SlideShow', 'module', 'mod_bt_backgroundslideshow', '', 0, 1, 0, 0, '{"name":"BT Background SlideShow","type":"module","creationDate":"Apr 2012","author":"BowThemes","copyright":"Copyright \\u00a9 2012 Bow Themes","authorEmail":"bowthemes.com","authorUrl":"http:\\/\\/bowthemes.com","version":"2.4.7","description":"\\n        \\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>Module BT Background SlideShow Version 2.4.7<\\/h3>\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_backgroundslideshow\\/admin\\/images\\/btslideshow.png\\"><\\/a>\\n\\t\\t\\t<p align=\\"justify\\">\\n                  BT Background SlideShow is a perfect slideshow module for Joomla.\\n                  It allows you to easily display images with many flash type animations done in Javascript.\\n                  You can upload, import images, preview, order images from parameter module and fully configure with a lot of options.\\n                  BT Background SlideShow is compatible with Joomla 1.7, 2.5 and Joomla 3.x\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Extension features:<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n                            <li>Import images from different sources to gallery (Flickr album, Picasa Album, Joomla Folder, Phoca Gallery Component, JoomGallery component)<\\/li>\\n                            <li>Ability to upload, preview and order by drag and drop images from parameter<\\/li>\\n                            <li>Link image to  article or K2 component''s item\\n                            <li>Auto crop images and thumbnails<\\/li>\\n                            <li>Unlimited Image Slideshow<\\/li>\\n                            <li>Smooth fullscreen background slideshow<\\/li>\\n                            <li>Youtube video background<\\/li>\\n                            <li>Easiness to insert images links, captions and descriptions<\\/li>\\n                            <li>Be compatible with Joomla 1.7, 2.5 and Joomla 3.x<\\/li>\\n                            <li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\n                            <li>Video tutorial and forum support provided\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is BT Background SlideShow 2.4.7. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/showcase\\/joomla-extensions.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 10px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tpadding: 5px 5px 5px 30px;\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t}\\n\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_backgroundslideshow\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\n\\t","group":""}', '{"source":"upload","remote_image":"0","get_limit":"20","gallery":"","slideshowSize":"window","slideshowWidth":"","slideshowHeight":"","resizeImage":"auto","hAlign":"c","vAlign":"m","slideshowSpeed":"8000","effecttype":"fade","slidedirection":"left","effectTime":"2000","caption":"0","bgo-pattern":"","bgo-opacity":"0.5","nav-type":"nav-btn","nex-back-button":"1","playpause-button":"1","thumb_number":"3","thumb_width":"80","thumb_height":"50","nav-align":"center","nav-position":"fixed","progress-bar":"1","autoplay":"1","stopAuto":"1","shvideo":"1","controltype":"0","keepcontrolvideo":"2","videoquanlity":"highres","videoautoplay":"1","videovolume":"100","wrapper_element":"body","title_font":"","title_color":"#ffffff","title_size":"18","desc_font":"","desc_color":"#ffffff","desc_size":"12","nav_bg":"#222222","progress_bg":"#A2080C","crop_image":"0","jpeg_compression":"100","crop_width":"1600","crop_height":"1000","load_jquery":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-03-19","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.2.3.1","description":"Russian language pack (site) for Joomla! 3.2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-03-19","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.2.3.1","description":"Russian language pack (administrator) for Joomla! 3.2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'BT Smart Search', 'module', 'mod_bt_smartsearch', '', 0, 1, 0, 0, '{"name":"BT Smart Search","type":"module","creationDate":"December 2012","author":"BowThemes","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.2","description":"\\n\\t\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Smart Search Module Version 1.0.2<\\/h3>\\t\\t\\t\\t\\n\\t\\t\\t<p><img src=\\"..\\/modules\\/mod_bt_smartsearch\\/admin\\/images\\/smartsearch.jpg\\" width=\\"50\\" height=\\"50\\"><br\\/>BT Smart Search Module<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li> Support for Smart Search component<\\/li>\\n\\t\\t\\t\\t<li> One Click to enable all Finder Plugin and Indexing Data right on the module''s backend\\n\\t\\t\\t\\t<li> Advanced Search with search filter (author ,category,country,language,region,type...)<\\/li>\\n\\t\\t\\t\\t<li> Easy to change search button''s position<\\/li>\\n\\t\\t\\t\\t<li> Support responsive website<\\/li>\\n\\t\\t\\t\\t<li> Compatibility with Joomla 2.5 and 3.x <\\/li>\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is 1.0.2 <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-smartseach.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>Userful links<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-smartseach.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-smartseach\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-smartseach\\/\\">Forum support<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align:left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 10px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tpadding: 5px 5px 5px 30px;\\t\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t}\\n\\t\\t\\t\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_smartsearch\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\t\\n\\t","group":""}', '{"searchfilter":"","show_autosuggest":"1","show_advanced":"1","moduleclass_sfx":"","show_button":"1","button_pos":"right","opensearch":"1","opensearch_title":"Smart search..."}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'plg_finder_jshopping', 'plugin', 'jshopping', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_jshopping","type":"plugin","creationDate":"Aug 2013","author":"BowThemes","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.2","description":"PLG_FINDER_JSHOPPING_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_filters`
--

CREATE TABLE IF NOT EXISTS `#__finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links`
--

CREATE TABLE IF NOT EXISTS `#__finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `#__finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__finder_taxonomy`
--

INSERT INTO `#__finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `#__finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms`
--

CREATE TABLE IF NOT EXISTS `#__finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `#__finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_terms_common`
--

INSERT INTO `#__finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens`
--

CREATE TABLE IF NOT EXISTS `#__finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `#__finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_types`
--

CREATE TABLE IF NOT EXISTS `#__finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__finder_types`
--

INSERT INTO `#__finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', ''),
(6, 'Web Link', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_addons`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `usekey` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `uninstall` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_attr`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_attr` (
  `attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_ordering` int(11) NOT NULL,
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `allcats` tinyint(1) NOT NULL DEFAULT '1',
  `cats` text NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`attr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__jshopping_attr`
--

INSERT INTO `#__jshopping_attr` (`attr_id`, `attr_ordering`, `attr_type`, `independent`, `allcats`, `cats`, `name_en-GB`, `description_en-GB`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, 1, 1, 0, 1, 'a:0:{}', 'Color', '', 'Color', ''),
(2, 2, 1, 0, 1, 'a:0:{}', 'Size', '', 'Size', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_attr_values`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_attr_values` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `#__jshopping_attr_values`
--

INSERT INTO `#__jshopping_attr_values` (`value_id`, `attr_id`, `value_ordering`, `image`, `name_en-GB`, `name_ru-RU`) VALUES
(1, 1, 1, 'yellow.png', 'Yellow', 'Yellow'),
(2, 2, 1, '', 'X', 'X'),
(3, 2, 2, '', 'M', 'M'),
(4, 2, 3, '', 'XL', 'XL'),
(5, 1, 2, 'red.png', 'Red', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_cart_temp`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_cart_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_categories`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_image` varchar(255) DEFAULT NULL,
  `category_parent_id` int(11) NOT NULL,
  `category_publish` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_ordertype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_template` varchar(64) DEFAULT NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime DEFAULT NULL,
  `products_page` int(8) NOT NULL DEFAULT '12',
  `products_row` int(3) NOT NULL DEFAULT '3',
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `sort_add_date` (`category_add_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__jshopping_categories`
--

INSERT INTO `#__jshopping_categories` (`category_id`, `category_image`, `category_parent_id`, `category_publish`, `category_ordertype`, `category_template`, `ordering`, `category_add_date`, `products_page`, `products_row`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`) VALUES
(1, 'category01.png', 0, 1, 1, NULL, 2, '2014-03-28 16:18:56', 16, 4, 1, 'Menly', '', '', '', '', '', '', 'Menly', '', '', '', '', '', ''),
(2, 'category02.png', 0, 1, 1, NULL, 3, '2014-03-28 16:19:57', 16, 4, 1, 'Women', '', '', '', '', '', '', 'Women', '', '', '', '', '', ''),
(3, 'category03.png', 0, 1, 1, NULL, 5, '2014-03-28 16:20:20', 4, 2, 1, 'Couple', '', '', '', '', '', '', 'Couple', '', '', '', '', '', ''),
(4, 'category04.png', 0, 1, 1, NULL, 7, '2014-03-28 16:20:50', 4, 2, 1, 'Kid', '', '', '', '', '', '', 'Kid', '', '', '', '', '', ''),
(5, 'category05.png', 0, 1, 1, NULL, 8, '2014-03-28 16:21:13', 16, 4, 1, 'Shoes', '', '', '', '', '', '', 'Shoes', '', '', '', '', '', ''),
(6, 'category06.png', 0, 1, 1, NULL, 9, '2014-03-28 16:21:46', 16, 4, 1, 'Sale', '', '', '', '', '', '', 'Sale', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_config`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_config` (
  `id` tinyint(1) NOT NULL,
  `count_products_to_page` int(4) NOT NULL,
  `count_products_to_row` int(2) NOT NULL,
  `count_category_to_row` int(2) NOT NULL,
  `image_category_width` int(4) NOT NULL,
  `image_category_height` int(4) NOT NULL,
  `image_product_width` int(4) NOT NULL,
  `image_product_height` int(4) NOT NULL,
  `image_product_full_width` int(4) NOT NULL,
  `image_product_full_height` int(4) NOT NULL,
  `image_product_original_width` int(4) NOT NULL,
  `image_product_original_height` int(4) NOT NULL,
  `video_product_width` int(4) NOT NULL,
  `video_product_height` int(4) NOT NULL,
  `adminLanguage` varchar(8) NOT NULL,
  `defaultLanguage` varchar(8) NOT NULL,
  `mainCurrency` int(4) NOT NULL,
  `decimal_count` tinyint(1) NOT NULL,
  `decimal_symbol` varchar(5) NOT NULL,
  `thousand_separator` varchar(5) NOT NULL,
  `currency_format` tinyint(1) NOT NULL,
  `use_rabatt_code` tinyint(1) NOT NULL,
  `enable_wishlist` tinyint(1) NOT NULL,
  `default_status_order` tinyint(1) NOT NULL,
  `store_address_format` varchar(32) NOT NULL,
  `store_date_format` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `allow_reviews_prod` tinyint(1) NOT NULL,
  `allow_reviews_only_registered` tinyint(1) NOT NULL,
  `allow_reviews_manuf` tinyint(1) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `summ_null_shipping` decimal(12,2) NOT NULL,
  `without_shipping` tinyint(1) NOT NULL,
  `without_payment` tinyint(1) NOT NULL,
  `pdf_parameters` varchar(32) NOT NULL,
  `next_order_number` int(11) NOT NULL DEFAULT '1',
  `shop_user_guest` tinyint(1) NOT NULL,
  `hide_product_not_avaible_stock` tinyint(1) NOT NULL,
  `show_buy_in_category` tinyint(1) NOT NULL,
  `user_as_catalog` tinyint(1) NOT NULL,
  `show_tax_in_product` tinyint(1) NOT NULL,
  `show_tax_product_in_cart` tinyint(1) NOT NULL,
  `show_plus_shipping_in_product` tinyint(1) NOT NULL,
  `hide_buy_not_avaible_stock` tinyint(1) NOT NULL,
  `show_sort_product` tinyint(1) NOT NULL,
  `show_count_select_products` tinyint(1) NOT NULL,
  `order_send_pdf_client` tinyint(1) NOT NULL,
  `order_send_pdf_admin` tinyint(1) NOT NULL,
  `show_delivery_time` tinyint(1) NOT NULL,
  `securitykey` varchar(128) NOT NULL,
  `demo_type` tinyint(1) NOT NULL,
  `product_show_manufacturer_logo` tinyint(1) NOT NULL,
  `product_show_manufacturer` tinyint(1) NOT NULL,
  `product_show_weight` tinyint(1) NOT NULL,
  `max_count_order_one_product` int(11) NOT NULL,
  `min_count_order_one_product` int(11) NOT NULL,
  `min_price_order` int(11) NOT NULL,
  `max_price_order` int(11) NOT NULL,
  `hide_tax` tinyint(1) NOT NULL,
  `licensekod` text NOT NULL,
  `product_attribut_first_value_empty` tinyint(1) NOT NULL,
  `show_hits` tinyint(1) NOT NULL,
  `show_registerform_in_logintemplate` tinyint(1) NOT NULL,
  `admin_show_product_basic_price` tinyint(1) NOT NULL,
  `admin_show_attributes` tinyint(1) NOT NULL,
  `admin_show_delivery_time` tinyint(1) NOT NULL,
  `admin_show_languages` tinyint(1) NOT NULL,
  `use_different_templates_cat_prod` tinyint(1) NOT NULL,
  `admin_show_product_video` tinyint(1) NOT NULL,
  `admin_show_product_related` tinyint(1) NOT NULL,
  `admin_show_product_files` tinyint(1) NOT NULL,
  `admin_show_product_bay_price` tinyint(1) NOT NULL,
  `admin_show_product_labels` tinyint(1) NOT NULL,
  `sorting_country_in_alphabet` tinyint(1) NOT NULL,
  `hide_text_product_not_available` tinyint(1) NOT NULL,
  `show_weight_order` tinyint(1) NOT NULL,
  `discount_use_full_sum` tinyint(1) NOT NULL,
  `show_cart_all_step_checkout` tinyint(1) NOT NULL,
  `use_plugin_content` tinyint(1) NOT NULL,
  `display_price_admin` tinyint(1) NOT NULL,
  `display_price_front` tinyint(1) NOT NULL,
  `product_list_show_weight` tinyint(1) NOT NULL,
  `product_list_show_manufacturer` tinyint(1) NOT NULL,
  `use_extend_tax_rule` tinyint(4) NOT NULL,
  `use_extend_display_price_rule` tinyint(4) NOT NULL,
  `fields_register` text NOT NULL,
  `template` varchar(128) NOT NULL,
  `show_product_code` tinyint(1) NOT NULL,
  `show_product_code_in_cart` tinyint(1) NOT NULL,
  `savelog` tinyint(1) NOT NULL,
  `savelogpaymentdata` tinyint(1) NOT NULL,
  `product_list_show_min_price` tinyint(1) NOT NULL,
  `product_count_related_in_row` tinyint(4) NOT NULL,
  `category_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting_direction` tinyint(1) NOT NULL,
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
  `cart_display_extra_fields` text NOT NULL,
  `default_country` int(11) NOT NULL,
  `show_return_policy_in_email_order` tinyint(1) NOT NULL,
  `client_allow_cancel_order` tinyint(1) NOT NULL,
  `admin_show_vendors` tinyint(1) NOT NULL,
  `vendor_order_message_type` tinyint(1) NOT NULL,
  `admin_not_send_email_order_vendor_order` tinyint(1) NOT NULL,
  `not_redirect_in_cart_after_buy` tinyint(1) NOT NULL,
  `product_show_vendor` tinyint(1) NOT NULL,
  `product_show_vendor_detail` tinyint(1) NOT NULL,
  `product_list_show_vendor` tinyint(1) NOT NULL,
  `admin_show_freeattributes` tinyint(1) NOT NULL,
  `product_show_button_back` tinyint(1) NOT NULL,
  `calcule_tax_after_discount` tinyint(1) NOT NULL,
  `product_list_show_product_code` tinyint(1) NOT NULL,
  `radio_attr_value_vertical` tinyint(1) NOT NULL,
  `attr_display_addprice` tinyint(1) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL,
  `product_list_show_price_description` tinyint(1) NOT NULL,
  `display_button_print` tinyint(1) NOT NULL,
  `hide_shipping_step` tinyint(1) NOT NULL,
  `hide_payment_step` tinyint(1) NOT NULL,
  `image_resize_type` tinyint(1) NOT NULL,
  `use_extend_attribute_data` tinyint(1) NOT NULL,
  `product_list_show_price_default` tinyint(1) NOT NULL,
  `product_list_show_qty_stock` tinyint(1) NOT NULL,
  `product_show_qty_stock` tinyint(1) NOT NULL,
  `displayprice` tinyint(1) NOT NULL,
  `use_decimal_qty` tinyint(1) NOT NULL,
  `ext_tax_rule_for` tinyint(1) NOT NULL,
  `display_reviews_without_confirm` tinyint(1) NOT NULL,
  `manufacturer_sorting` tinyint(1) NOT NULL,
  `admin_show_units` tinyint(1) NOT NULL,
  `main_unit_weight` tinyint(3) NOT NULL,
  `create_alias_product_category_auto` tinyint(1) NOT NULL,
  `delivery_order_depends_delivery_product` tinyint(1) NOT NULL,
  `show_delivery_time_step5` tinyint(1) NOT NULL,
  `other_config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__jshopping_config`
--

INSERT INTO `#__jshopping_config` (`id`, `count_products_to_page`, `count_products_to_row`, `count_category_to_row`, `image_category_width`, `image_category_height`, `image_product_width`, `image_product_height`, `image_product_full_width`, `image_product_full_height`, `image_product_original_width`, `image_product_original_height`, `video_product_width`, `video_product_height`, `adminLanguage`, `defaultLanguage`, `mainCurrency`, `decimal_count`, `decimal_symbol`, `thousand_separator`, `currency_format`, `use_rabatt_code`, `enable_wishlist`, `default_status_order`, `store_address_format`, `store_date_format`, `contact_email`, `allow_reviews_prod`, `allow_reviews_only_registered`, `allow_reviews_manuf`, `max_mark`, `summ_null_shipping`, `without_shipping`, `without_payment`, `pdf_parameters`, `next_order_number`, `shop_user_guest`, `hide_product_not_avaible_stock`, `show_buy_in_category`, `user_as_catalog`, `show_tax_in_product`, `show_tax_product_in_cart`, `show_plus_shipping_in_product`, `hide_buy_not_avaible_stock`, `show_sort_product`, `show_count_select_products`, `order_send_pdf_client`, `order_send_pdf_admin`, `show_delivery_time`, `securitykey`, `demo_type`, `product_show_manufacturer_logo`, `product_show_manufacturer`, `product_show_weight`, `max_count_order_one_product`, `min_count_order_one_product`, `min_price_order`, `max_price_order`, `hide_tax`, `licensekod`, `product_attribut_first_value_empty`, `show_hits`, `show_registerform_in_logintemplate`, `admin_show_product_basic_price`, `admin_show_attributes`, `admin_show_delivery_time`, `admin_show_languages`, `use_different_templates_cat_prod`, `admin_show_product_video`, `admin_show_product_related`, `admin_show_product_files`, `admin_show_product_bay_price`, `admin_show_product_labels`, `sorting_country_in_alphabet`, `hide_text_product_not_available`, `show_weight_order`, `discount_use_full_sum`, `show_cart_all_step_checkout`, `use_plugin_content`, `display_price_admin`, `display_price_front`, `product_list_show_weight`, `product_list_show_manufacturer`, `use_extend_tax_rule`, `use_extend_display_price_rule`, `fields_register`, `template`, `show_product_code`, `show_product_code_in_cart`, `savelog`, `savelogpaymentdata`, `product_list_show_min_price`, `product_count_related_in_row`, `category_sorting`, `product_sorting`, `product_sorting_direction`, `show_product_list_filters`, `admin_show_product_extra_field`, `product_list_display_extra_fields`, `filter_display_extra_fields`, `product_hide_extra_fields`, `cart_display_extra_fields`, `default_country`, `show_return_policy_in_email_order`, `client_allow_cancel_order`, `admin_show_vendors`, `vendor_order_message_type`, `admin_not_send_email_order_vendor_order`, `not_redirect_in_cart_after_buy`, `product_show_vendor`, `product_show_vendor_detail`, `product_list_show_vendor`, `admin_show_freeattributes`, `product_show_button_back`, `calcule_tax_after_discount`, `product_list_show_product_code`, `radio_attr_value_vertical`, `attr_display_addprice`, `use_ssl`, `product_list_show_price_description`, `display_button_print`, `hide_shipping_step`, `hide_payment_step`, `image_resize_type`, `use_extend_attribute_data`, `product_list_show_price_default`, `product_list_show_qty_stock`, `product_show_qty_stock`, `displayprice`, `use_decimal_qty`, `ext_tax_rule_for`, `display_reviews_without_confirm`, `manufacturer_sorting`, `admin_show_units`, `main_unit_weight`, `create_alias_product_category_auto`, `delivery_order_depends_delivery_product`, `show_delivery_time_step5`, `other_config`) VALUES
(1, 12, 3, 1, 422, 563, 200, 308, 400, 400, 0, 0, 320, 240, 'en-GB', 'en-GB', 2, 2, '.', '', 2, 1, 1, 1, '%storename %address %city %zip', '%d.%m.%Y', 'abc@abc.com', 1, 1, 0, 10, '-1.00', 0, 0, '208:65:208:30', 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 'c6170ed9b1ed4b25b9fb4965c3a01943', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:3:{s:8:"register";a:15:{s:5:"title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:10:"firma_name";a:1:{s:7:"display";s:1:"1";}s:6:"street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:4:"city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"state";a:1:{s:7:"display";s:1:"1";}s:7:"country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"fax";a:1:{s:7:"display";s:1:"1";}s:6:"f_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:5:"email";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:6:"u_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:8:"password";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:10:"password_2";a:2:{s:7:"require";i:1;s:7:"display";i:1;}}s:7:"address";a:22:{s:5:"title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:10:"firma_name";a:1:{s:7:"display";s:1:"1";}s:6:"street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:4:"city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"state";a:1:{s:7:"display";s:1:"1";}s:7:"country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"fax";a:1:{s:7:"display";s:1:"1";}s:7:"d_title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_f_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:12:"d_firma_name";a:1:{s:7:"display";s:1:"1";}s:8:"d_street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"d_zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"d_city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_state";a:1:{s:7:"display";s:1:"1";}s:9:"d_country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"f_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:5:"email";a:2:{s:7:"require";i:1;s:7:"display";i:1;}}s:11:"editaccount";a:22:{s:5:"title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:10:"firma_name";a:1:{s:7:"display";s:1:"1";}s:6:"street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:4:"city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"state";a:1:{s:7:"display";s:1:"1";}s:7:"country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"fax";a:1:{s:7:"display";s:1:"1";}s:7:"d_title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_f_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:12:"d_firma_name";a:1:{s:7:"display";s:1:"1";}s:8:"d_street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"d_zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"d_city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_state";a:1:{s:7:"display";s:1:"1";}s:9:"d_country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"f_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:5:"email";a:2:{s:7:"require";i:1;s:7:"display";i:1;}}}', '', 1, 0, 0, 0, 0, 3, 1, 1, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_config_display_prices`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_config_display_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_config_seo`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_config_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `title_ru-RU` varchar(255) NOT NULL,
  `keyword_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `#__jshopping_config_seo`
--

INSERT INTO `#__jshopping_config_seo` (`id`, `alias`, `ordering`, `title_en-GB`, `keyword_en-GB`, `description_en-GB`, `title_ru-RU`, `keyword_ru-RU`, `description_ru-RU`) VALUES
(1, 'category', 10, '', '', '', '', '', ''),
(2, 'manufacturers', 20, '', '', '', '', '', ''),
(3, 'cart', 30, '', '', '', '', '', ''),
(4, 'wishlist', 40, '', '', '', '', '', ''),
(5, 'login', 50, '', '', '', '', '', ''),
(6, 'register', 60, '', '', '', '', '', ''),
(7, 'editaccount', 70, '', '', '', '', '', ''),
(8, 'myorders', 80, '', '', '', '', '', ''),
(9, 'myaccount', 90, '', '', '', '', '', ''),
(10, 'search', 100, '', '', '', '', '', ''),
(11, 'search-result', 110, '', '', '', '', '', ''),
(12, 'myorder-detail', 120, '', '', '', '', '', ''),
(13, 'vendors', 130, '', '', '', '', '', ''),
(14, 'content-agb', 140, '', '', '', '', '', ''),
(15, 'content-return_policy', 150, '', '', '', '', '', ''),
(16, 'content-shipping', 160, '', '', '', '', '', ''),
(17, 'content-privacy_statement', 161, '', '', '', '', '', ''),
(18, 'checkout-address', 170, '', '', '', '', '', ''),
(19, 'checkout-payment', 180, '', '', '', '', '', ''),
(20, 'checkout-shipping', 190, '', '', '', '', '', ''),
(21, 'checkout-preview', 200, '', '', '', '', '', ''),
(22, 'lastproducts', 210, '', '', '', '', '', ''),
(23, 'randomproducts', 220, '', '', '', '', '', ''),
(24, 'bestsellerproducts', 230, '', '', '', '', '', ''),
(25, 'labelproducts', 240, '', '', '', '', '', ''),
(26, 'topratingproducts', 250, '', '', '', '', '', ''),
(27, 'tophitsproducts', 260, '', '', '', '', '', ''),
(28, 'all-products', 270, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_config_statictext`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_config_statictext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `text_en-GB` text NOT NULL,
  `text_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `#__jshopping_config_statictext`
--

INSERT INTO `#__jshopping_config_statictext` (`id`, `alias`, `text_en-GB`, `text_ru-RU`) VALUES
(1, 'home', '', ''),
(2, 'manufacturer', '', ''),
(3, 'agb', '', ''),
(4, 'return_policy', '', ''),
(5, 'order_email_descr', '', ''),
(6, 'order_email_descr_end', '', ''),
(7, 'order_finish_descr', '', ''),
(8, 'shipping', '', ''),
(9, 'privacy_statement', '', ''),
(10, 'cart', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_countries`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=240 ;

--
-- Dumping data for table `#__jshopping_countries`
--

INSERT INTO `#__jshopping_countries` (`country_id`, `country_publish`, `ordering`, `country_code`, `country_code_2`, `name_en-GB`, `name_de-DE`, `name_ru-RU`) VALUES
(1, 1, 1, 'AFG', 'AF', 'Afghanistan', 'Afghanistan', 'Afghanistan'),
(2, 1, 2, 'ALB', 'AL', 'Albania', 'Albanien', 'Albania'),
(3, 1, 3, 'DZA', 'DZ', 'Algeria', 'Algerien', 'Algeria'),
(4, 1, 4, 'ASM', 'AS', 'American Samoa', 'Amerikanisch-Samoa', 'American Samoa'),
(5, 1, 5, 'AND', 'AD', 'Andorra', 'Andorra', 'Andorra'),
(6, 1, 6, 'AGO', 'AO', 'Angola', 'Angola', 'Angola'),
(7, 1, 7, 'AIA', 'AI', 'Anguilla', 'Anguilla', 'Anguilla'),
(8, 1, 8, 'ATA', 'AQ', 'Antarctica', 'Antarktis', 'Antarctica'),
(9, 1, 9, 'ATG', 'AG', 'Antigua and Barbuda', 'Antigua und Barbuda', 'Antigua and Barbuda'),
(10, 1, 10, 'ARG', 'AR', 'Argentina', 'Argentinien', 'Argentina'),
(11, 1, 11, 'ARM', 'AM', 'Armenia', 'Armenien', 'Armenia'),
(12, 1, 12, 'ABW', 'AW', 'Aruba', 'Aruba', 'Aruba'),
(13, 1, 13, 'AUS', 'AU', 'Australia', 'Australien', 'Australia'),
(14, 1, 14, 'AUT', 'AT', 'Austria', 'Österreich', 'Austria'),
(15, 1, 15, 'AZE', 'AZ', 'Azerbaijan', 'Aserbaidschan', 'Azerbaijan'),
(16, 1, 16, 'BHS', 'BS', 'Bahamas', 'Bahamas', 'Bahamas'),
(17, 1, 17, 'BHR', 'BH', 'Bahrain', 'Bahrain', 'Bahrain'),
(18, 1, 18, 'BGD', 'BD', 'Bangladesh', 'Bangladesch', 'Bangladesh'),
(19, 1, 19, 'BRB', 'BB', 'Barbados', 'Barbados', 'Barbados'),
(20, 1, 20, 'BLR', 'BY', 'Belarus', 'Weissrussland', 'Belarus'),
(21, 1, 21, 'BEL', 'BE', 'Belgium', 'Belgien', 'Belgium'),
(22, 1, 22, 'BLZ', 'BZ', 'Belize', 'Belize', 'Belize'),
(23, 1, 23, 'BEN', 'BJ', 'Benin', 'Benin', 'Benin'),
(24, 1, 24, 'BMU', 'BM', 'Bermuda', 'Bermuda', 'Bermuda'),
(25, 1, 25, 'BTN', 'BT', 'Bhutan', 'Bhutan', 'Bhutan'),
(26, 1, 26, 'BOL', 'BO', 'Bolivia', 'Bolivien', 'Bolivia'),
(27, 1, 27, 'BIH', 'BA', 'Bosnia and Herzegowina', 'Bosnien und Herzegowina', 'Bosnia and Herzegowina'),
(28, 1, 28, 'BWA', 'BW', 'Botswana', 'Botsuana', 'Botswana'),
(29, 1, 29, 'BVT', 'BV', 'Bouvet Island', 'Bouvetinsel', 'Bouvet Island'),
(30, 1, 30, 'BRA', 'BR', 'Brazil', 'Brasilien', 'Brazil'),
(31, 1, 31, 'IOT', 'IO', 'British Indian Ocean Territory', 'Britisches Territorium im Indischen Ozean', 'British Indian Ocean Territory'),
(32, 1, 32, 'BRN', 'BN', 'Brunei Darussalam', 'Brunei', 'Brunei Darussalam'),
(33, 1, 33, 'BGR', 'BG', 'Bulgaria', 'Bulgarien', 'Bulgaria'),
(34, 1, 34, 'BFA', 'BF', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso'),
(35, 1, 35, 'BDI', 'BI', 'Burundi', 'Burundi', 'Burundi'),
(36, 1, 36, 'KHM', 'KH', 'Cambodia', 'Kambodscha', 'Cambodia'),
(37, 1, 37, 'CMR', 'CM', 'Cameroon', 'Kamerun', 'Cameroon'),
(38, 1, 38, 'CAN', 'CA', 'Canada', 'Kanada', 'Canada'),
(39, 1, 39, 'CPV', 'CV', 'Cape Verde', 'Kap Verde', 'Cape Verde'),
(40, 1, 40, 'CYM', 'KY', 'Cayman Islands', 'Cayman-Inseln', 'Cayman Islands'),
(41, 1, 41, 'CAF', 'CF', 'Central African Republic', 'Zentralafrikanische Republik', 'Central African Republic'),
(42, 1, 42, 'TCD', 'TD', 'Chad', 'Tschad', 'Chad'),
(43, 1, 43, 'CHL', 'CL', 'Chile', 'Chile', 'Chile'),
(44, 1, 44, 'CHN', 'CN', 'China', 'China', 'China'),
(45, 1, 45, 'CXR', 'CX', 'Christmas Island', 'Christmas Island', 'Christmas Island'),
(46, 1, 46, 'CCK', 'CC', 'Cocos (Keeling) Islands', 'Kokosinseln (Keeling)', 'Cocos (Keeling) Islands'),
(47, 1, 47, 'COL', 'CO', 'Colombia', 'Kolumbien', 'Colombia'),
(48, 1, 48, 'COM', 'KM', 'Comoros', 'Komoren', 'Comoros'),
(49, 1, 49, 'COG', 'CG', 'Congo', 'Kongo, Republik', 'Congo'),
(50, 1, 50, 'COK', 'CK', 'Cook Islands', 'Cookinseln', 'Cook Islands'),
(51, 1, 51, 'CRI', 'CR', 'Costa Rica', 'Costa Rica', 'Costa Rica'),
(52, 1, 52, 'CIV', 'CI', 'Cote D''Ivoire', 'Elfenbeinküste', 'Cote D''Ivoire'),
(53, 1, 53, 'HRV', 'HR', 'Croatia', 'Kroatien', 'Croatia'),
(54, 1, 54, 'CUB', 'CU', 'Cuba', 'Kuba', 'Cuba'),
(55, 1, 55, 'CYP', 'CY', 'Cyprus', 'Zypern', 'Cyprus'),
(56, 1, 56, 'CZE', 'CZ', 'Czech Republic', 'Tschechien', 'Czech Republic'),
(57, 1, 57, 'DNK', 'DK', 'Denmark', 'Dänemark', 'Denmark'),
(58, 1, 58, 'DJI', 'DJ', 'Djibouti', 'Dschibuti', 'Djibouti'),
(59, 1, 59, 'DMA', 'DM', 'Dominica', 'Dominica', 'Dominica'),
(60, 1, 60, 'DOM', 'DO', 'Dominican Republic', 'Dominikanische Republik', 'Dominican Republic'),
(61, 1, 61, 'TMP', 'TL', 'East Timor', 'Osttimor', 'East Timor'),
(62, 1, 62, 'ECU', 'EC', 'Ecuador', 'Ecuador', 'Ecuador'),
(63, 1, 63, 'EGY', 'EG', 'Egypt', 'Ägypten', 'Egypt'),
(64, 1, 64, 'SLV', 'SV', 'El Salvador', 'El Salvador', 'El Salvador'),
(65, 1, 65, 'GNQ', 'GQ', 'Equatorial Guinea', 'Äquatorial-Guinea', 'Equatorial Guinea'),
(66, 1, 66, 'ERI', 'ER', 'Eritrea', 'Eritrea', 'Eritrea'),
(67, 1, 67, 'EST', 'EE', 'Estonia', 'Estland', 'Estonia'),
(68, 1, 68, 'ETH', 'ET', 'Ethiopia', 'Äthiopien', 'Ethiopia'),
(69, 1, 69, 'FLK', 'FK', 'Falkland Islands (Malvinas)', 'Falklandinseln', 'Falkland Islands (Malvinas)'),
(70, 1, 70, 'FRO', 'FO', 'Faroe Islands', 'Färöer', 'Faroe Islands'),
(71, 1, 71, 'FJI', 'FJ', 'Fiji', 'Fidschi', 'Fiji'),
(72, 1, 72, 'FIN', 'FI', 'Finland', 'Finnland', 'Finland'),
(73, 1, 73, 'FRA', 'FR', 'France', 'Frankreich', 'France'),
(74, 1, 74, 'FXX', 'FX', 'France Metropolitan', 'Frankreich, Metropolitan', 'France Metropolitan'),
(75, 1, 75, 'GUF', 'GF', 'French Guiana', 'Französisch-Guyana', 'French Guiana'),
(76, 1, 76, 'PYF', 'PF', 'French Polynesia', 'Franz. Polynesien', 'French Polynesia'),
(77, 1, 77, 'ATF', 'TF', 'French Southern Territories', 'Französiche Süd- und Antarktisgebiete', 'French Southern Territories'),
(78, 1, 78, 'GAB', 'GA', 'Gabon', 'Gabun', 'Gabon'),
(79, 1, 79, 'GMB', 'GM', 'Gambia', 'Gambia', 'Gambia'),
(80, 1, 80, 'GEO', 'GE', 'Georgia', 'Georgien', 'Georgia'),
(81, 1, 81, 'DEU', 'DE', 'Germany', 'Deutschland', 'Germany'),
(82, 1, 82, 'GHA', 'GH', 'Ghana', 'Ghana', 'Ghana'),
(83, 1, 83, 'GIB', 'GI', 'Gibraltar', 'Gibraltar', 'Gibraltar'),
(84, 1, 84, 'GRC', 'GR', 'Greece', 'Griechenland', 'Greece'),
(85, 1, 85, 'GRL', 'GL', 'Greenland', 'Grönland', 'Greenland'),
(86, 1, 86, 'GRD', 'GD', 'Grenada', 'Grenada', 'Grenada'),
(87, 1, 87, 'GLP', 'GP', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe'),
(88, 1, 88, 'GUM', 'GU', 'Guam', 'Guam', 'Guam'),
(89, 1, 89, 'GTM', 'GT', 'Guatemala', 'Guatemala', 'Guatemala'),
(90, 1, 90, 'GIN', 'GN', 'Guinea', 'Guinea', 'Guinea'),
(91, 1, 91, 'GNB', 'GW', 'Guinea-bissau', 'Guinea-Bissau', 'Guinea-bissau'),
(92, 1, 92, 'GUY', 'GY', 'Guyana', 'Guyana', 'Guyana'),
(93, 1, 93, 'HTI', 'HT', 'Haiti', 'Haiti', 'Haiti'),
(94, 1, 94, 'HMD', 'HM', 'Heard and Mc Donald Islands', 'Heard und McDonaldinseln', 'Heard and Mc Donald Islands'),
(95, 1, 95, 'HND', 'HN', 'Honduras', 'Honduras', 'Honduras'),
(96, 1, 96, 'HKG', 'HK', 'Hong Kong', 'Hong Kong', 'Hong Kong'),
(97, 1, 97, 'HUN', 'HU', 'Hungary', 'Ungarn', 'Hungary'),
(98, 1, 98, 'ISL', 'IS', 'Iceland', 'Island', 'Iceland'),
(99, 1, 99, 'IND', 'IN', 'India', 'Indien', 'India'),
(100, 1, 100, 'IDN', 'ID', 'Indonesia', 'Indonesien', 'Indonesia'),
(101, 1, 101, 'IRN', 'IR', 'Iran (Islamic Republic of)', 'Iran', 'Iran (Islamic Republic of)'),
(102, 1, 102, 'IRQ', 'IQ', 'Iraq', 'Irak', 'Iraq'),
(103, 1, 103, 'IRL', 'IE', 'Ireland', 'Irland', 'Ireland'),
(104, 1, 104, 'ISR', 'IL', 'Israel', 'Israel', 'Israel'),
(105, 1, 105, 'ITA', 'IT', 'Italy', 'Italien', 'Italy'),
(106, 1, 106, 'JAM', 'JM', 'Jamaica', 'Jamaika', 'Jamaica'),
(107, 1, 107, 'JPN', 'JP', 'Japan', 'Japan', 'Japan'),
(108, 1, 108, 'JOR', 'JO', 'Jordan', 'Jordanien', 'Jordan'),
(109, 1, 109, 'KAZ', 'KZ', 'Kazakhstan', 'Kasachstan', 'Kazakhstan'),
(110, 1, 110, 'KEN', 'KE', 'Kenya', 'Kenia', 'Kenya'),
(111, 1, 111, 'KIR', 'KI', 'Kiribati', 'Kiribati', 'Kiribati'),
(112, 1, 112, 'PRK', 'KP', 'Korea Democratic People''s Republic of', 'Korea Demokratische Volksrepublik', 'Korea Democratic People''s Republic of'),
(113, 1, 113, 'KOR', 'KR', 'Korea Republic of', 'Korea', 'Korea Republic of'),
(114, 1, 114, 'KWT', 'KW', 'Kuwait', 'Kuwait', 'Kuwait'),
(115, 1, 115, 'KGZ', 'KG', 'Kyrgyzstan', 'Kirgistan', 'Kyrgyzstan'),
(116, 1, 116, 'LAO', 'LA', 'Lao People''s Democratic Republic', 'Laos', 'Lao People''s Democratic Republic'),
(117, 1, 117, 'LVA', 'LV', 'Latvia', 'Lettland', 'Latvia'),
(118, 1, 118, 'LBN', 'LB', 'Lebanon', 'Libanon', 'Lebanon'),
(119, 1, 119, 'LSO', 'LS', 'Lesotho', 'Lesotho', 'Lesotho'),
(120, 1, 120, 'LBR', 'LR', 'Liberia', 'Liberia', 'Liberia'),
(121, 1, 121, 'LBY', 'LY', 'Libyan Arab Jamahiriya', 'Libyen', 'Libyan Arab Jamahiriya'),
(122, 1, 122, 'LIE', 'LI', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein'),
(123, 1, 123, 'LTU', 'LT', 'Lithuania', 'Litauen', 'Lithuania'),
(124, 1, 124, 'LUX', 'LU', 'Luxembourg', 'Luxemburg', 'Luxembourg'),
(125, 1, 125, 'MAC', 'MO', 'Macau', 'Makao', 'Macau'),
(126, 1, 126, 'MKD', 'MK', 'Macedonia The Former Yugoslav Republic of', 'Mazedonien', 'Macedonia The Former Yugoslav Republic of'),
(127, 1, 127, 'MDG', 'MG', 'Madagascar', 'Madagaskar', 'Madagascar'),
(128, 1, 128, 'MWI', 'MW', 'Malawi', 'Malawi', 'Malawi'),
(129, 1, 129, 'MYS', 'MY', 'Malaysia', 'Malaysia', 'Malaysia'),
(130, 1, 130, 'MDV', 'MV', 'Maldives', 'Malediven', 'Maldives'),
(131, 1, 131, 'MLI', 'ML', 'Mali', 'Mali', 'Mali'),
(132, 1, 132, 'MLT', 'MT', 'Malta', 'Malta', 'Malta'),
(133, 1, 133, 'MHL', 'MH', 'Marshall Islands', 'Marshallinseln', 'Marshall Islands'),
(134, 1, 134, 'MTQ', 'MQ', 'Martinique', 'Martinique', 'Martinique'),
(135, 1, 135, 'MRT', 'MR', 'Mauritania', 'Mauretanien', 'Mauritania'),
(136, 1, 136, 'MUS', 'MU', 'Mauritius', 'Mauritius', 'Mauritius'),
(137, 1, 137, 'MYT', 'YT', 'Mayotte', 'Mayott', 'Mayotte'),
(138, 1, 138, 'MEX', 'MX', 'Mexico', 'Mexiko', 'Mexico'),
(139, 1, 139, 'FSM', 'FM', 'Micronesia Federated States of', 'Mikronesien', 'Micronesia Federated States of'),
(140, 1, 140, 'MDA', 'MD', 'Moldova Republic of', 'Moldawien', 'Moldova Republic of'),
(141, 1, 141, 'MCO', 'MC', 'Monaco', 'Monaco', 'Monaco'),
(142, 1, 142, 'MNG', 'MN', 'Mongolia', 'Mongolei', 'Mongolia'),
(143, 1, 143, 'MSR', 'MS', 'Montserrat', 'Montserrat', 'Montserrat'),
(144, 1, 144, 'MAR', 'MA', 'Morocco', 'Marokko', 'Morocco'),
(145, 1, 145, 'MOZ', 'MZ', 'Mozambique', 'Mosambik', 'Mozambique'),
(146, 1, 146, 'MMR', 'MM', 'Myanmar', 'Myanmar', 'Myanmar'),
(147, 1, 147, 'NAM', 'NA', 'Namibia', 'Namibia', 'Namibia'),
(148, 1, 148, 'NRU', 'NR', 'Nauru', 'Nauru', 'Nauru'),
(149, 1, 149, 'NPL', 'NP', 'Nepal', 'Nepal', 'Nepal'),
(150, 1, 150, 'NLD', 'NL', 'Netherlands', 'Niederlande', 'Netherlands'),
(151, 1, 151, 'ANT', 'AN', 'Netherlands Antilles', 'Niederländisch-Antillen', 'Netherlands Antilles'),
(152, 1, 152, 'NCL', 'NC', 'New Caledonia', 'Neukaledonien', 'New Caledonia'),
(153, 1, 153, 'NZL', 'NZ', 'New Zealand', 'Neuseeland', 'New Zealand'),
(154, 1, 154, 'NIC', 'NI', 'Nicaragua', 'Nicaragua', 'Nicaragua'),
(155, 1, 155, 'NER', 'NE', 'Niger', 'Niger', 'Niger'),
(156, 1, 156, 'NGA', 'NG', 'Nigeria', 'Nigeria', 'Nigeria'),
(157, 1, 157, 'NIU', 'NU', 'Niue', 'Niue', 'Niue'),
(158, 1, 158, 'NFK', 'NF', 'Norfolk Island', 'Norfolkinsel', 'Norfolk Island'),
(159, 1, 159, 'MNP', 'MP', 'Northern Mariana Islands', 'Nördliche Marianen', 'Northern Mariana Islands'),
(160, 1, 160, 'NOR', 'NO', 'Norway', 'Norwegen', 'Norway'),
(161, 1, 161, 'OMN', 'OM', 'Oman', 'Oman', 'Oman'),
(162, 1, 162, 'PAK', 'PK', 'Pakistan', 'Pakistan', 'Pakistan'),
(163, 1, 163, 'PLW', 'PW', 'Palau', 'Palau', 'Palau'),
(164, 1, 164, 'PAN', 'PA', 'Panama', 'Panama', 'Panama'),
(165, 1, 165, 'PNG', 'PG', 'Papua New Guinea', 'Papua-Neuguinea', 'Papua New Guinea'),
(166, 1, 166, 'PRY', 'PY', 'Paraguay', 'Paraguay', 'Paraguay'),
(167, 1, 167, 'PER', 'PE', 'Peru', 'Peru', 'Peru'),
(168, 1, 168, 'PHL', 'PH', 'Philippines', 'Philippinen', 'Philippines'),
(169, 1, 169, 'PCN', 'PN', 'Pitcairn', 'Pitcairn', 'Pitcairn'),
(170, 1, 170, 'POL', 'PL', 'Poland', 'Polen', 'Poland'),
(171, 1, 171, 'PRT', 'PT', 'Portugal', 'Portugal', 'Portugal'),
(172, 1, 172, 'PRI', 'PR', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico'),
(173, 1, 173, 'QAT', 'QA', 'Qatar', 'Katar', 'Qatar'),
(174, 1, 174, 'REU', 'RE', 'Reunion', 'Reunion', 'Reunion'),
(175, 1, 175, 'ROM', 'RO', 'Romania', 'Rumänien', 'Romania'),
(176, 1, 176, 'RUS', 'RU', 'Russian Federation', 'Russische Föderation', 'Russian Federation'),
(177, 1, 177, 'RWA', 'RW', 'Rwanda', 'Ruanda', 'Rwanda'),
(178, 1, 178, 'KNA', 'KN', 'Saint Kitts and Nevis', 'St. Kitts und Nevis', 'Saint Kitts and Nevis'),
(179, 1, 179, 'LCA', 'LC', 'Saint Lucia', 'St. Lucia', 'Saint Lucia'),
(180, 1, 180, 'VCT', 'VC', 'Saint Vincent and the Grenadines', 'St. Vincent und die Grenadinen', 'Saint Vincent and the Grenadines'),
(181, 1, 181, 'WSM', 'WS', 'Samoa', 'Samoa', 'Samoa'),
(182, 1, 182, 'SMR', 'SM', 'San Marino', 'San Marino', 'San Marino'),
(183, 1, 183, 'STP', 'ST', 'Sao Tome and Principe', 'Sao Tomé und Príncipe', 'Sao Tome and Principe'),
(184, 1, 184, 'SAU', 'SA', 'Saudi Arabia', 'Saudi-Arabien', 'Saudi Arabia'),
(185, 1, 185, 'SEN', 'SN', 'Senegal', 'Senegal', 'Senegal'),
(186, 1, 186, 'SYC', 'SC', 'Seychelles', 'Seychellen', 'Seychelles'),
(187, 1, 187, 'SLE', 'SL', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone'),
(188, 1, 188, 'SGP', 'SG', 'Singapore', 'Singapur', 'Singapore'),
(189, 1, 189, 'SVK', 'SK', 'Slovakia (Slovak Republic)', 'Slowakei', 'Slovakia (Slovak Republic)'),
(190, 1, 190, 'SVN', 'SI', 'Slovenia', 'Slowenien', 'Slovenia'),
(191, 1, 191, 'SLB', 'SB', 'Solomon Islands', 'Salomonen', 'Solomon Islands'),
(192, 1, 192, 'SOM', 'SO', 'Somalia', 'Somalia', 'Somalia'),
(193, 1, 193, 'ZAF', 'ZA', 'South Africa', 'Republik Südafrika', 'South Africa'),
(194, 1, 194, 'SGS', 'GS', 'South Georgia and the South Sandwich Islands', 'Südgeorgien und die Südlichen Sandwichinseln', 'South Georgia and the South Sandwich Islands'),
(195, 1, 195, 'ESP', 'ES', 'Spain', 'Spanien', 'Spain'),
(196, 1, 196, 'LKA', 'LK', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka'),
(197, 1, 197, 'SHN', 'SH', 'St. Helena', 'St. Helena', 'St. Helena'),
(198, 1, 198, 'SPM', 'PM', 'St. Pierre and Miquelon', 'St. Pierre und Miquelon', 'St. Pierre and Miquelon'),
(199, 1, 199, 'SDN', 'SD', 'Sudan', 'Sudan', 'Sudan'),
(200, 1, 200, 'SUR', 'SR', 'Suriname', 'Suriname', 'Suriname'),
(201, 1, 201, 'SJM', 'SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard und Jan Mayen', 'Svalbard and Jan Mayen Islands'),
(202, 1, 202, 'SWZ', 'SZ', 'Swaziland', 'Swasiland', 'Swaziland'),
(203, 1, 203, 'SWE', 'SE', 'Sweden', 'Schweden', 'Sweden'),
(204, 1, 204, 'CHE', 'CH', 'Switzerland', 'Schweiz', 'Switzerland'),
(205, 1, 205, 'SYR', 'SY', 'Syrian Arab Republic', 'Syrien', 'Syrian Arab Republic'),
(206, 1, 206, 'TWN', 'TW', 'Taiwan', 'Taiwan', 'Taiwan'),
(207, 1, 207, 'TJK', 'TJ', 'Tajikistan', 'Tadschikistan', 'Tajikistan'),
(208, 1, 208, 'TZA', 'TZ', 'Tanzania United Republic of', 'Tansania', 'Tanzania United Republic of'),
(209, 1, 209, 'THA', 'TH', 'Thailand', 'Thailand', 'Thailand'),
(210, 1, 210, 'TGO', 'TG', 'Togo', 'Togo', 'Togo'),
(211, 1, 211, 'TKL', 'TK', 'Tokelau', 'Tokelau', 'Tokelau'),
(212, 1, 212, 'TON', 'TO', 'Tonga', 'Tonga', 'Tonga'),
(213, 1, 213, 'TTO', 'TT', 'Trinidad and Tobago', 'Trinidad und Tobago', 'Trinidad and Tobago'),
(214, 1, 214, 'TUN', 'TN', 'Tunisia', 'Tunesien', 'Tunisia'),
(215, 1, 215, 'TUR', 'TR', 'Turkey', 'Türkei', 'Turkey'),
(216, 1, 216, 'TKM', 'TM', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan'),
(217, 1, 217, 'TCA', 'TC', 'Turks and Caicos Islands', 'Turks- und Caicosinseln', 'Turks and Caicos Islands'),
(218, 1, 218, 'TUV', 'TV', 'Tuvalu', 'Tuvalu', 'Tuvalu'),
(219, 1, 219, 'UGA', 'UG', 'Uganda', 'Uganda', 'Uganda'),
(220, 1, 220, 'UKR', 'UA', 'Ukraine', 'Ukraine', 'Ukraine'),
(221, 1, 221, 'ARE', 'AE', 'United Arab Emirates', 'Vereinigte Arabische Emirate', 'United Arab Emirates'),
(222, 1, 222, 'GBR', 'GB', 'United Kingdom', 'Vereinigtes Königreich', 'United Kingdom'),
(223, 1, 223, 'USA', 'US', 'United States', 'USA', 'United States'),
(224, 1, 224, 'UMI', 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands'),
(225, 1, 225, 'URY', 'UY', 'Uruguay', 'Uruguay', 'Uruguay'),
(226, 1, 226, 'UZB', 'UZ', 'Uzbekistan', 'Usbekistan', 'Uzbekistan'),
(227, 1, 227, 'VUT', 'VU', 'Vanuatu', 'Vanuatu', 'Vanuatu'),
(228, 1, 228, 'VAT', 'VA', 'Vatican City State (Holy See)', 'Vatikanstadt', 'Vatican City State (Holy See)'),
(229, 1, 229, 'VEN', 'VE', 'Venezuela', 'Venezuela', 'Venezuela'),
(230, 1, 230, 'VNM', 'VN', 'Viet Nam', 'Vietnam', 'Viet Nam'),
(231, 1, 231, 'VGB', 'VG', 'Virgin Islands (British)', 'Britische Jungferninseln', 'Virgin Islands (British)'),
(232, 1, 232, 'VIR', 'VI', 'Virgin Islands (U.S.)', 'Vereinigte Staaten von Amerika', 'Virgin Islands (U.S.)'),
(233, 1, 233, 'WLF', 'WF', 'Wallis and Futuna Islands', 'Wallis und Futuna', 'Wallis and Futuna Islands'),
(234, 1, 234, 'ESH', 'EH', 'Western Sahara', 'Westsahara', 'Western Sahara'),
(235, 1, 235, 'YEM', 'YE', 'Yemen', 'Jemen', 'Yemen'),
(236, 1, 236, 'YUG', 'YU', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia'),
(237, 1, 237, 'ZAR', 'ZR', 'Zaire', 'Zaire', 'Zaire'),
(238, 1, 238, 'ZMB', 'ZM', 'Zambia', 'Sambia', 'Zambia'),
(239, 1, 239, 'ZWE', 'ZW', 'Zimbabwe', 'Simbabwe', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_coupons`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_coupons` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_type` tinyint(4) NOT NULL COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL,
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL DEFAULT '0000-00-00',
  `coupon_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_currencies`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_currencies` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(64) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_code_num` varchar(3) NOT NULL,
  `currency_ordering` int(11) NOT NULL,
  `currency_value` decimal(14,6) NOT NULL,
  `currency_publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__jshopping_currencies`
--

INSERT INTO `#__jshopping_currencies` (`currency_id`, `currency_name`, `currency_code`, `currency_code_iso`, `currency_code_num`, `currency_ordering`, `currency_value`, `currency_publish`) VALUES
(1, 'Euro', 'EUR', 'EUR', '978', 2, '1.000000', 1),
(2, 'Dolar', '$', '$', '', 1, '1.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_delivery_times`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_delivery_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` decimal(8,2) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_free_attr`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_import_export`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_import_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__jshopping_import_export`
--

INSERT INTO `#__jshopping_import_export` (`id`, `name`, `alias`, `description`, `params`, `endstart`, `steptime`) VALUES
(1, 'Simple Export', 'simpleexport', 'Simple Export in CSV iso-8859-1', 'filename=export', 0, 1),
(2, 'Simple Import', 'simpleimport', 'Simple Import in CSV iso-8859-1', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_languages`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__jshopping_languages`
--

INSERT INTO `#__jshopping_languages` (`id`, `language`, `name`, `publish`, `ordering`) VALUES
(1, 'en-GB', 'English', 1, 0),
(2, 'ru-RU', 'Russian', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_manufacturers`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_url` varchar(255) NOT NULL,
  `manufacturer_logo` varchar(255) NOT NULL,
  `manufacturer_publish` tinyint(1) NOT NULL,
  `products_page` int(11) NOT NULL,
  `products_row` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_orders`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_total` decimal(14,4) NOT NULL,
  `order_subtotal` decimal(14,4) NOT NULL,
  `order_tax` decimal(14,4) NOT NULL,
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(14,4) NOT NULL,
  `order_payment` decimal(14,4) NOT NULL,
  `order_discount` decimal(14,4) NOT NULL,
  `shipping_tax` decimal(12,4) NOT NULL,
  `shipping_tax_ext` text NOT NULL,
  `payment_tax` decimal(12,4) NOT NULL,
  `payment_tax_ext` text NOT NULL,
  `order_package` decimal(12,2) NOT NULL,
  `package_tax_ext` text NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_exchange` decimal(14,6) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `invoice_date` datetime NOT NULL,
  `order_m_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(255) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(100) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(255) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(30) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL,
  `file_hash` varchar(64) NOT NULL,
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_order_history`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` tinyint(1) NOT NULL,
  `status_date_added` datetime NOT NULL,
  `customer_notify` int(1) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`order_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_order_item`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_ean` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `product_item_price` decimal(14,4) NOT NULL,
  `product_tax` decimal(14,4) NOT NULL,
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `extra_fields` text NOT NULL,
  `files` text NOT NULL,
  `weight` decimal(14,4) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `basicprice` decimal(12,2) NOT NULL,
  `basicpriceunit` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_order_status`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_order_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` char(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `#__jshopping_order_status`
--

INSERT INTO `#__jshopping_order_status` (`status_id`, `status_code`, `name_en-GB`, `name_de-DE`, `name_ru-RU`) VALUES
(1, 'P', 'Pending', 'Offen', 'Pending'),
(2, 'C', 'Confirmed', 'Bestätigt', 'Confirmed'),
(3, 'X', 'Cancelled', 'Abgebrochen', 'Cancelled'),
(4, 'R', 'Refunded', 'Gutschrift', 'Refunded'),
(5, 'S', 'Shipped', 'Gesendet', 'Shipped'),
(6, 'O', 'Paid', 'Bezahlt', 'Paid'),
(7, 'F', 'Complete', 'Abgeschlossen', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_payment_method`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_payment_method` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(32) NOT NULL,
  `payment_class` varchar(100) NOT NULL,
  `payment_publish` tinyint(1) NOT NULL,
  `payment_ordering` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` tinyint(1) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_descr_in_email` tinyint(1) NOT NULL,
  `show_bank_in_order` tinyint(1) NOT NULL DEFAULT '1',
  `order_description` text NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `#__jshopping_payment_method`
--

INSERT INTO `#__jshopping_payment_method` (`payment_id`, `payment_code`, `payment_class`, `payment_publish`, `payment_ordering`, `payment_params`, `payment_type`, `price`, `price_type`, `tax_id`, `image`, `show_descr_in_email`, `show_bank_in_order`, `order_description`, `name_en-GB`, `description_en-GB`, `name_de-DE`, `description_de-DE`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, 'bank', 'pm_bank', 1, 1, '', 1, '4.00', 0, 1, '', 0, 1, '', 'Cash on delivery', '', 'Nachnahme', '', 'Cash on delivery', ''),
(2, 'PO', 'pm_purchase_order', 1, 2, '', 1, '0.00', 0, 1, '', 1, 1, '', 'Advance payment', '', 'Vorauskasse', '', 'Advance payment', ''),
(3, 'paypal', 'pm_paypal', 1, 3, 'testmode=1\n email_received=test@testing.com\n transaction_end_status=6\n transaction_pending_status=1\n transaction_failed_status=3\n checkdatareturn=0', 2, '0.00', 0, 1, '', 0, 1, '', 'Paypal', '', 'Paypal', '', 'Paypal', ''),
(4, 'debit', 'pm_debit', 1, 4, '', 1, '0.00', 0, 1, '', 0, 1, '', 'Debit', 'Please insert your bankdata.', 'Lastschrift', 'Bitte tragen Sie hier Ihre Bankdaten für den Abbuchungsauftrag ein.', 'Debit', 'Please insert your bankdata.'),
(5, 'ST', 'pm_sofortueberweisung', 0, 5, 'user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n', 2, '0.00', 0, 1, '', 0, 1, '', 'Sofortueberweisung', '', 'Sofortueberweisung', '', 'Sofortueberweisung', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(1) NOT NULL,
  `product_date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL,
  `product_tax_id` tinyint(3) NOT NULL,
  `currency_id` int(4) NOT NULL,
  `product_template` varchar(64) NOT NULL DEFAULT 'default',
  `product_url` varchar(255) NOT NULL,
  `product_old_price` decimal(14,4) NOT NULL,
  `product_buy_price` decimal(14,4) NOT NULL,
  `product_price` decimal(18,6) NOT NULL,
  `min_price` decimal(12,2) NOT NULL,
  `different_prices` tinyint(1) NOT NULL,
  `product_weight` decimal(14,4) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL,
  `product_is_add_price` tinyint(1) NOT NULL,
  `add_price_unit_id` int(3) NOT NULL,
  `average_rating` float(4,2) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `hits` int(11) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `basic_price_unit_id` int(3) NOT NULL,
  `label_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `product_manufacturer_id` (`product_manufacturer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `#__jshopping_products`
--

INSERT INTO `#__jshopping_products` (`product_id`, `parent_id`, `product_ean`, `product_quantity`, `unlimited`, `product_availability`, `product_date_added`, `date_modify`, `product_publish`, `product_tax_id`, `currency_id`, `product_template`, `product_url`, `product_old_price`, `product_buy_price`, `product_price`, `min_price`, `different_prices`, `product_weight`, `image`, `product_manufacturer_id`, `product_is_add_price`, `add_price_unit_id`, `average_rating`, `reviews_count`, `delivery_times_id`, `hits`, `weight_volume_units`, `basic_price_unit_id`, `label_id`, `vendor_id`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`) VALUES
(1, 0, '01', '1.00', 1, '', '2014-03-28 16:26:24', '2014-04-04 17:58:49', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '50.60', 0, '856.0000', 'full_1439496660_1368259432.jpg', 0, 0, 3, 0.00, 0, 0, 8, '0.0000', 0, 2, 0, 1, 'Prety Girl winter', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Prety Girl winter', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(2, 0, '01', '1.00', 1, '', '2014-03-28 18:32:20', '2014-04-04 17:58:59', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_man_pd_1.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Maecenas sit amet laoreet velit, et auctor sem', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Maecenas sit amet laoreet velit, et auctor sem', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(3, 0, '01', '1.00', 1, '', '2014-03-28 18:32:50', '2014-04-04 16:46:09', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', '2011-New-Arrival-Fashion-Women-Parka-Coat-Winderbreak-Jacket-Free-Shipping-Wholesale-KM2009.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Phasellus quis enim elit', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Phasellus quis enim elit', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(4, 0, '01', '1.00', 1, '', '2014-03-28 18:33:16', '2014-04-04 17:59:20', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_FREE-SHIPPING-WHOLESALE-LADIES-FASHION-ONE-SHOULDER-EVENING-DRESS-WOMEN-SATIN-FORMAL-DRESSES-COCKTAIL-DRESS-DK151.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Aliquam sit amet tellus at quam', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Aliquam sit amet tellus at quam', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(5, 0, '01', '1.00', 1, '', '2014-03-28 18:33:16', '2014-04-04 16:47:14', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_Long_Sleeves_Pink_Designer_New_Fashion_Women_Clothing_Jacket__1__14509013092120405_690X500.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Aliquam egestas ornare neque', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Aliquam egestas ornare neque', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(6, 0, '01', '1.00', 1, '', '2014-03-28 18:33:25', '2014-04-04 16:47:48', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_thumb_women-011.png', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Mauris auctor, justo vitae imperdiet', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Mauris auctor, justo vitae imperdiet', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(7, 0, '01', '1.00', 1, '', '2014-03-28 18:33:25', '2014-04-04 18:00:12', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_2013-New-Europe-Women-s-Fashion-Three-Quarter-Sleeve-Mini-Chiffon-Dress-Crewneck-Lace-Top-Pleated.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Vestibulum in arcu at magna porta tempor', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Vestibulum in arcu at magna porta tempor', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(8, 0, '01', '1.00', 1, '', '2014-03-28 18:33:25', '2014-04-04 16:48:35', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_black-apricot-new-fashion-medium-long-women.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Praesent metus augue', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Praesent metus augue', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(9, 0, '01', '1.00', 1, '', '2014-03-28 18:33:25', '2014-04-04 16:49:02', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_Fashion-Women2.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Aliquam eu interdum arcu', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Aliquam eu interdum arcu', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(10, 0, '01', '1.00', 1, '', '2014-03-28 18:33:32', '2014-04-04 16:49:58', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_Women-Fashion-Christmas-Gift-Ideas-921x1024.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Proin vitae tempus neque', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Proin vitae tempus neque', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(11, 0, '01', '1.00', 1, '', '2014-03-28 18:33:32', '2014-04-04 16:50:14', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_Free-Shipping-2011-New-Arrival-Fashion-Women-Trench-Coat-Winderbreak-Jacket-Military-Style-Coats-Wholesale-KM1278.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Pr In elementum erat in leo', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Pr In elementum erat in leo', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(12, 0, '01', '1.00', 1, '', '2014-03-28 18:33:32', '2014-04-03 21:12:33', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_Women-s-Wool-blend-Coat-2012-Winter-lace-bottom-outerwear-organza-skirt-double-breasted-trench-coat1.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Aliquam eu interdum arcu', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Prety Girl winter', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(13, 0, '01', '1.00', 1, '', '2014-03-28 18:33:32', '2014-04-03 21:13:35', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_black-apricot-new-fashion-medium-long-women1.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Maecenas non nibh a dolor', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Prety Girl winter', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(14, 0, '01', '1.00', 1, '', '2014-03-28 18:33:32', '2014-04-03 21:14:16', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_Eastern-trend-summer-dresses-clletion-2012-2013-by-Pakistani-Breakout-e1333571290584.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Nunc blandit nisi vitae ipsum', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Prety Girl winter', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(15, 0, '01', '1.00', 1, '', '2014-03-28 18:33:32', '2014-04-03 21:14:52', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_Women-s-formal-clothing-ol-work-wear-set-professional-set-women-s-fashion-skirt-one-piece.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Vestibulum vehicula lectus nec', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Prety Girl winter', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(16, 0, '01', '1.00', 1, '', '2014-03-28 18:33:32', '2014-04-03 21:15:52', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_Women-Fashion-Christmas-Gift-Ideas-921x10241.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Etiam eget vulputate arcu, in convallis', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Prety Girl winter', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(17, 0, '01', '1.00', 1, '', '2014-03-28 18:33:32', '2014-04-03 21:16:53', 1, 1, 1, 'default', '', '0.0000', '0.0000', '47.600000', '47.60', 0, '856.0000', 'full_Women-s-Wool-blend-Coat-2012-Winter-lace-bottom-outerwear-organza-skirt-double-breasted-trench-coat11.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Nulla vehicula nibh ut libero', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', 'Prety Girl winter', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', ''),
(18, 0, '', '1.00', 0, '', '2014-04-03 21:19:32', '2014-04-04 16:51:03', 1, 1, 1, 'default', '', '0.0000', '0.0000', '29.000000', '29.00', 0, '0.0000', 'full_bt_fashion_pd_3.jpg', 0, 0, 3, 0.00, 0, 0, 2, '0.0000', 0, 0, 0, 1, 'Morbi ac arcu facilisis sem imperdiet', '', 'Morbi fermentum lacus in neque pulvinar ornare. Aenean auctor mattis nisi et elementum. Vivamus ut lacus nec neque sagittis dapibus ut eget tellus.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis libero accumsan metus interdum blandit. Cras sed urna commodo risus iaculis feugiat sed non urna. Aliquam vitae vestibulum arcu, nec accumsan turpis. Praesent nec bibendum lectus, sit amet posuere eros. Aliquam erat volutpat. Fusce eu quam eu tortor congue tincidunt. Nullam convallis molestie suscipit. Morbi bibendum lacus eu elit pellentesque, et bibendum tortor fermentum. Pellentesque feugiat pulvinar porttitor. In accumsan sed erat sed fermentum. Vestibulum vehicula lectus nec ullamcorper tincidunt. Donec nunc eros, venenatis vel lorem ut, molestie pulvinar massa. Etiam accumsan quis sapien ut dictum. In vitae erat velit.</p>\r\n<p>In sodales ut sem vitae interdum. Maecenas vel justo mollis, gravida magna eget, mollis lectus. Fusce ut varius felis, ut fringilla mauris. Maecenas volutpat turpis tristique rutrum sagittis. Nullam ullamcorper vulputate lectus sed molestie. Aliquam erat volutpat. Cras nec ultrices orci. Vivamus elementum magna est, ut cursus lacus dignissim ut. In at scelerisque turpis. Praesent ligula velit, ultrices vel malesuada non, molestie quis diam. Ut sit amet faucibus enim, quis lobortis diam. Maecenas non volutpat libero.</p>', '', '', '', 'Morbi ac arcu facilisis sem imperdiet', '', 'Morbi fermentum lacus in neque pulvinar ornare. Aenean auctor mattis nisi et elementum. Vivamus ut lacus nec neque sagittis dapibus ut eget tellus.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis libero accumsan metus interdum blandit. Cras sed urna commodo risus iaculis feugiat sed non urna. Aliquam vitae vestibulum arcu, nec accumsan turpis. Praesent nec bibendum lectus, sit amet posuere eros. Aliquam erat volutpat. Fusce eu quam eu tortor congue tincidunt. Nullam convallis molestie suscipit. Morbi bibendum lacus eu elit pellentesque, et bibendum tortor fermentum. Pellentesque feugiat pulvinar porttitor. In accumsan sed erat sed fermentum. Vestibulum vehicula lectus nec ullamcorper tincidunt. Donec nunc eros, venenatis vel lorem ut, molestie pulvinar massa. Etiam accumsan quis sapien ut dictum. In vitae erat velit.</p>\r\n<p>In sodales ut sem vitae interdum. Maecenas vel justo mollis, gravida magna eget, mollis lectus. Fusce ut varius felis, ut fringilla mauris. Maecenas volutpat turpis tristique rutrum sagittis. Nullam ullamcorper vulputate lectus sed molestie. Aliquam erat volutpat. Cras nec ultrices orci. Vivamus elementum magna est, ut cursus lacus dignissim ut. In at scelerisque turpis. Praesent ligula velit, ultrices vel malesuada non, molestie quis diam. Ut sit amet faucibus enim, quis lobortis diam. Maecenas non volutpat libero.</p>', '', '', ''),
(19, 0, '', '1.00', 0, '', '2014-04-03 21:28:05', '2014-04-04 16:51:24', 1, 1, 2, 'default', '', '0.0000', '0.0000', '18.000000', '18.00', 0, '0.0000', 'full_bt_fashion_pd_4.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Donec elementum velit purus,', '', 'Sit amet rhoncus erat egestas a. Etiam eget vulputate arcu, in convallis nunc. Morbi ac arcu facilisis sem imperdiet iaculis nec eu purus.', '<p>Sorbi fermentum lacus in neque pulvinar ornare. Aenean auctor mattis nisi et elementum. Vivamus ut lacus nec neque sagittis dapibus ut eget tellus. Donec ut auctor ipsum, quis scelerisque nibh. Aliquam molestie tempor mauris, et accumsan neque egestas vel. Integer sed ante eros. Aenean lectus nibh, volutpat quis lorem id, consequat varius augue. Pellentesque in augue sem. Morbi faucibus nulla non ornare tristique. Vivamus congue porta malesuada. Suspendisse viverra eget tortor vel adipiscing. Suspendisse ullamcorper purus nec dolor congue molestie. Integer nec lorem rutrum, commodo lectus nec, auctor ipsum. Sed euismod, sapien venenatis aliquam varius, nunc massa dictum nunc, nec dapibus felis lacus semper est.</p>\r\n<p>In hac habitasse platea dictumst. Donec auctor vel ligula eleifend auctor. Nam non elementum est, vitae ultrices dui. Nullam viverra dui a augue ornare fringilla. Aenean felis nisl, ultricies vel arcu et, vestibulum tempus neque. Donec sit amet erat sapien. Maecenas congue pulvinar enim, ut luctus nibh hendrerit tempus. Nullam pellentesque lorem blandit elit interdum hendrerit. Praesent sit amet sagittis justo.SS</p>', '', '', '', 'Donec elementum velit purus,', '', 'Sit amet rhoncus erat egestas a. Etiam eget vulputate arcu, in convallis nunc. Morbi ac arcu facilisis sem imperdiet iaculis nec eu purus.', '<p>Sorbi fermentum lacus in neque pulvinar ornare. Aenean auctor mattis nisi et elementum. Vivamus ut lacus nec neque sagittis dapibus ut eget tellus. Donec ut auctor ipsum, quis scelerisque nibh. Aliquam molestie tempor mauris, et accumsan neque egestas vel. Integer sed ante eros. Aenean lectus nibh, volutpat quis lorem id, consequat varius augue. Pellentesque in augue sem. Morbi faucibus nulla non ornare tristique. Vivamus congue porta malesuada. Suspendisse viverra eget tortor vel adipiscing. Suspendisse ullamcorper purus nec dolor congue molestie. Integer nec lorem rutrum, commodo lectus nec, auctor ipsum. Sed euismod, sapien venenatis aliquam varius, nunc massa dictum nunc, nec dapibus felis lacus semper est.</p>\r\n<p>In hac habitasse platea dictumst. Donec auctor vel ligula eleifend auctor. Nam non elementum est, vitae ultrices dui. Nullam viverra dui a augue ornare fringilla. Aenean felis nisl, ultricies vel arcu et, vestibulum tempus neque. Donec sit amet erat sapien. Maecenas congue pulvinar enim, ut luctus nibh hendrerit tempus. Nullam pellentesque lorem blandit elit interdum hendrerit. Praesent sit amet sagittis justo.SS</p>', '', '', ''),
(20, 0, '', '1.00', 0, '', '2014-04-03 21:36:51', '2014-04-04 16:51:44', 1, 1, 2, 'default', '', '0.0000', '0.0000', '23.000000', '23.00', 0, '0.0000', 'full_hmprod_2.jpg', 0, 0, 3, 0.00, 0, 0, 2, '0.0000', 0, 0, 0, 1, 'Lorem ipsum dolor sit amet', '', 'In bibendum pretium viverra. Aenean at tempor lacus. Sed sodales cursus molestie. Curabitur sed lacinia tellus, in gravida felis. Quisque vitae condimentum metus, at mollis urna.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tristique sit amet dolor sed placerat. Nunc eget ante blandit, vestibulum elit a, bibendum mi. Maecenas nec interdum massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse at malesuada enim. Suspendisse potenti. Vestibulum metus dui, malesuada vitae ultrices in, facilisis sed lectus. Donec et mattis quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec suscipit velit urna, et tincidunt eros feugiat at. Etiam nec neque ac nulla condimentum convallis. Vivamus non accumsan leo. Nulla adipiscing mollis purus. Nam accumsan, tellus vel lobortis faucibus, massa justo molestie nibh, sit amet laoreet ipsum massa nec diam. Nunc posuere rhoncus malesuada.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent sed pulvinar metus. Nunc dictum nisl sit amet mollis consectetur. Vivamus feugiat malesuada orci, a facilisis diam vehicula ac. Maecenas placerat malesuada felis, non semper felis iaculis eu. Maecenas ut justo sodales, ultricies justo at, molestie mauris. In bibendum pretium viverra. Aenean at tempor lacus. Sed sodales cursus molestie. Curabitur sed lacinia tellus, in gravida felis. Quisque vitae condimentum metus, at mollis urna. Cras magna felis, sagittis sed lectus pulvinar, facilisis aliquet magna. Duis ac lacus tincidunt, mollis orci ac, congue magna. Aenean accumsan, ipsum varius pulvinar interdum, quam enim accumsan velit, non aliquam ligula quam eu ipsum.</p>', '', '', '', 'Lorem ipsum dolor sit amet', '', 'In bibendum pretium viverra. Aenean at tempor lacus. Sed sodales cursus molestie. Curabitur sed lacinia tellus, in gravida felis. Quisque vitae condimentum metus, at mollis urna.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tristique sit amet dolor sed placerat. Nunc eget ante blandit, vestibulum elit a, bibendum mi. Maecenas nec interdum massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse at malesuada enim. Suspendisse potenti. Vestibulum metus dui, malesuada vitae ultrices in, facilisis sed lectus. Donec et mattis quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec suscipit velit urna, et tincidunt eros feugiat at. Etiam nec neque ac nulla condimentum convallis. Vivamus non accumsan leo. Nulla adipiscing mollis purus. Nam accumsan, tellus vel lobortis faucibus, massa justo molestie nibh, sit amet laoreet ipsum massa nec diam. Nunc posuere rhoncus malesuada.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent sed pulvinar metus. Nunc dictum nisl sit amet mollis consectetur. Vivamus feugiat malesuada orci, a facilisis diam vehicula ac. Maecenas placerat malesuada felis, non semper felis iaculis eu. Maecenas ut justo sodales, ultricies justo at, molestie mauris. In bibendum pretium viverra. Aenean at tempor lacus. Sed sodales cursus molestie. Curabitur sed lacinia tellus, in gravida felis. Quisque vitae condimentum metus, at mollis urna. Cras magna felis, sagittis sed lectus pulvinar, facilisis aliquet magna. Duis ac lacus tincidunt, mollis orci ac, congue magna. Aenean accumsan, ipsum varius pulvinar interdum, quam enim accumsan velit, non aliquam ligula quam eu ipsum.</p>', '', '', '');
INSERT INTO `#__jshopping_products` (`product_id`, `parent_id`, `product_ean`, `product_quantity`, `unlimited`, `product_availability`, `product_date_added`, `date_modify`, `product_publish`, `product_tax_id`, `currency_id`, `product_template`, `product_url`, `product_old_price`, `product_buy_price`, `product_price`, `min_price`, `different_prices`, `product_weight`, `image`, `product_manufacturer_id`, `product_is_add_price`, `add_price_unit_id`, `average_rating`, `reviews_count`, `delivery_times_id`, `hits`, `weight_volume_units`, `basic_price_unit_id`, `label_id`, `vendor_id`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`) VALUES
(21, 0, '', '2.00', 0, '', '2014-04-03 21:44:09', '2014-04-04 16:52:03', 1, 1, 2, 'default', '', '0.0000', '0.0000', '25.000000', '25.00', 0, '0.0000', 'full_hmprod.jpg', 0, 0, 3, 0.00, 0, 0, 2, '0.0000', 0, 0, 0, 1, 'Aliquam tellus sem, consequat', '', 'Aliquam tellus sem, consequat gravida eleifend faucibus, fringilla in quam. Aliquam ut odio a enim scelerisque aliquet. Etiam fringilla suscipit neque ut pretium. Sed dapibus velit nec est dictum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tristique sit amet dolor sed placerat. Nunc eget ante blandit, vestibulum elit a, bibendum mi. Maecenas nec interdum massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse at malesuada enim. Suspendisse potenti. Vestibulum metus dui, malesuada vitae ultrices in, facilisis sed lectus. Donec et mattis quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec suscipit velit urna, et tincidunt eros feugiat at. Etiam nec neque ac nulla condimentum convallis. Vivamus non accumsan leo. Nulla adipiscing mollis purus. Nam accumsan, tellus vel lobortis faucibus, massa justo molestie nibh, sit amet laoreet ipsum massa nec diam. Nunc posuere rhoncus malesuada.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent sed pulvinar metus. Nunc dictum nisl sit amet mollis consectetur. Vivamus feugiat malesuada orci, a facilisis diam vehicula ac. Maecenas placerat malesuada felis, non semper felis iaculis eu. Maecenas ut justo sodales, ultricies justo at, molestie mauris. In bibendum pretium viverra. Aenean at tempor lacus. Sed sodales cursus molestie. Curabitur sed lacinia tellus, in gravida felis. Quisque vitae condimentum metus, at mollis urna. Cras magna felis, sagittis sed lectus pulvinar, facilisis aliquet magna. Duis ac lacus tincidunt, mollis orci ac, congue magna. Aenean accumsan, ipsum varius pulvinar interdum, quam enim accumsan velit, non aliquam ligula quam eu ipsum.</p>', '', '', '', 'Aliquam tellus sem, consequat', '', 'Aliquam tellus sem, consequat gravida eleifend faucibus, fringilla in quam. Aliquam ut odio a enim scelerisque aliquet. Etiam fringilla suscipit neque ut pretium. Sed dapibus velit nec est dictum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tristique sit amet dolor sed placerat. Nunc eget ante blandit, vestibulum elit a, bibendum mi. Maecenas nec interdum massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse at malesuada enim. Suspendisse potenti. Vestibulum metus dui, malesuada vitae ultrices in, facilisis sed lectus. Donec et mattis quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec suscipit velit urna, et tincidunt eros feugiat at. Etiam nec neque ac nulla condimentum convallis. Vivamus non accumsan leo. Nulla adipiscing mollis purus. Nam accumsan, tellus vel lobortis faucibus, massa justo molestie nibh, sit amet laoreet ipsum massa nec diam. Nunc posuere rhoncus malesuada.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent sed pulvinar metus. Nunc dictum nisl sit amet mollis consectetur. Vivamus feugiat malesuada orci, a facilisis diam vehicula ac. Maecenas placerat malesuada felis, non semper felis iaculis eu. Maecenas ut justo sodales, ultricies justo at, molestie mauris. In bibendum pretium viverra. Aenean at tempor lacus. Sed sodales cursus molestie. Curabitur sed lacinia tellus, in gravida felis. Quisque vitae condimentum metus, at mollis urna. Cras magna felis, sagittis sed lectus pulvinar, facilisis aliquet magna. Duis ac lacus tincidunt, mollis orci ac, congue magna. Aenean accumsan, ipsum varius pulvinar interdum, quam enim accumsan velit, non aliquam ligula quam eu ipsum.</p>', '', '', ''),
(22, 0, '', '1.00', 0, '', '2014-04-03 21:47:57', '2014-04-04 17:59:37', 1, 1, 2, 'default', '', '0.0000', '0.0000', '29.000000', '29.00', 0, '0.0000', 'full_man_pd_31.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Nam sem eros cursus nec dolor', '', 'Suspendisse eget urna non felis rhoncus varius. Suspendisse tincidunt purus ut quam imperdiet, tempor interdum nisl suscipit', '<p>Vivamus vitae urna elit. Nulla egestas aliquam felis, sodales suscipit odio tempus at. Fusce pellentesque malesuada turpis eu tempor. Aenean eros velit, ornare eu felis eget, varius hendrerit dolor. Donec vel turpis et orci dapibus sodales in vitae nibh. Curabitur tristique ipsum eget lacus consequat vehicula. Nunc dapibus vitae enim eget fringilla. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum placerat non est ut egestas. Suspendisse bibendum a nibh eget tristique. Nam ac tincidunt justo, at sodales leo. Donec facilisis vitae velit quis rhoncus. In gravida metus vitae eleifend faucibus. In dignissim neque sit amet semper blandit. Nam sem eros, cursus nec dolor quis, volutpat malesuada dolor. Etiam ac sapien in turpis elementum tempus eu quis ipsum.</p>\r\n<p>Phasellus accumsan est nunc, in convallis ipsum aliquam sed. Praesent sodales id odio id tristique. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse eget urna non felis rhoncus varius. Suspendisse tincidunt purus ut quam imperdiet, tempor interdum nisl suscipit. Praesent vel pellentesque tellus, ac aliquet nunc. Morbi in neque vel quam porta iaculis sed in mauris.</p>', '', '', '', '', '', '', '', '', '', ''),
(23, 0, '', '6.00', 0, '', '2014-04-03 21:55:26', '2014-04-03 21:55:26', 1, 1, 2, 'default', '', '0.0000', '0.0000', '25.000000', '25.00', 0, '0.0000', 'full_man_pd_2.jpg', 0, 0, 3, 0.00, 0, 0, 2, '0.0000', 0, 0, 0, 1, 'In nisl felis, luctus eget ultricies id', '', 'Aliquam sed dui varius, egestas sem eu, luctus ante. Aliquam et erat sapien. Ut varius, magna eu lacinia viverra, arcu quam dapibus urna, sed convallis metus ligula id sapien.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec fermentum arcu. Vestibulum posuere tempor velit, vitae rhoncus dui convallis eu. Fusce vulputate ut augue eget euismod. Phasellus ut lorem consectetur, adipiscing massa in, rhoncus purus. Maecenas commodo, lectus non congue sodales, turpis sem sagittis nisl, et posuere est diam et odio. Curabitur ut massa eget magna hendrerit convallis viverra in dolor. Cras sit amet mattis urna. Vivamus ornare magna tortor, nec mattis sapien faucibus ac. Aliquam sit amet nibh tempus, pretium leo nec, posuere orci. Morbi fermentum arcu ligula, quis molestie lorem viverra in. Proin consectetur molestie interdum. Nullam eget ornare nisl. Curabitur egestas, nisl at congue rhoncus, turpis leo convallis metus, sed porttitor mauris odio eget erat. Aliquam sed dui varius, egestas sem eu, luctus ante. Aliquam et erat sapien. Ut varius, magna eu lacinia viverra, arcu quam dapibus urna, sed convallis metus ligula id sapien.</p>\r\n<p>Maecenas bibendum arcu vitae est pellentesque bibendum. Nunc consequat tempus augue, et sollicitudin elit hendrerit sit amet. Proin feugiat convallis mauris, eu eleifend nulla dapibus ac. Fusce vehicula, tortor id adipiscing ultricies, dui nisi ornare arcu, vitae tempor nisl lectus ac mauris. Proin et euismod odio. Ut tincidunt eleifend dolor, vitae dignissim nulla mollis tristique. In nisl felis, luctus eget ultricies id, pulvinar at justo. Sed facilisis leo nec mi rutrum, nec lobortis libero interdum. Etiam id adipiscing magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum tortor vitae metus cursus ultricies. Aliquam volutpat elit quis fermentum volutpat. Vestibulum sit amet justo id arcu auctor dictum ut eget sapien. Nullam pretium tristique velit in aliquam. Cras tincidunt eleifend posuere.</p>', '', '', '', '', '', '', '', '', '', ''),
(24, 0, '', '1.00', 0, '', '2014-04-03 22:00:52', '2014-04-03 22:00:52', 1, 1, 2, 'default', '', '0.0000', '0.0000', '25.000000', '25.00', 0, '0.0000', 'full_man_pd_32.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Aliquam sed dui varius', '', 'Maecenas bibendum arcu vitae est pellentesque bibendum. Nunc consequat tempus augue, et sollicitudin elit hendrerit sit amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec fermentum arcu. Vestibulum posuere tempor velit, vitae rhoncus dui convallis eu. Fusce vulputate ut augue eget euismod. Phasellus ut lorem consectetur, adipiscing massa in, rhoncus purus. Maecenas commodo, lectus non congue sodales, turpis sem sagittis nisl, et posuere est diam et odio. Curabitur ut massa eget magna hendrerit convallis viverra in dolor. Cras sit amet mattis urna. Vivamus ornare magna tortor, nec mattis sapien faucibus ac. Aliquam sit amet nibh tempus, pretium leo nec, posuere orci. Morbi fermentum arcu ligula, quis molestie lorem viverra in. Proin consectetur molestie interdum. Nullam eget ornare nisl. Curabitur egestas, nisl at congue rhoncus, turpis leo convallis metus, sed porttitor mauris odio eget erat. Aliquam sed dui varius, egestas sem eu, luctus ante. Aliquam et erat sapien. Ut varius, magna eu lacinia viverra, arcu quam dapibus urna, sed convallis metus ligula id sapien.</p>\r\n<p>Maecenas bibendum arcu vitae est pellentesque bibendum. Nunc consequat tempus augue, et sollicitudin elit hendrerit sit amet. Proin feugiat convallis mauris, eu eleifend nulla dapibus ac. Fusce vehicula, tortor id adipiscing ultricies, dui nisi ornare arcu, vitae tempor nisl lectus ac mauris. Proin et euismod odio. Ut tincidunt eleifend dolor, vitae dignissim nulla mollis tristique. In nisl felis, luctus eget ultricies id, pulvinar at justo. Sed facilisis leo nec mi rutrum, nec lobortis libero interdum. Etiam id adipiscing magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum tortor vitae metus cursus ultricies. Aliquam volutpat elit quis fermentum volutpat. Vestibulum sit amet justo id arcu auctor dictum ut eget sapien. Nullam pretium tristique velit in aliquam. Cras tincidunt eleifend posuere.</p>', '', '', '', '', '', '', '', '', '', ''),
(25, 0, '', '1.00', 0, '', '2014-04-03 22:02:02', '2014-04-04 17:59:56', 1, 1, 2, 'default', '', '0.0000', '0.0000', '19.000000', '19.00', 0, '0.0000', 'full_man_pd_4.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Vestibulum sit amet justo', '', 'Vestibulum sit amet justo id arcu auctor dictum ut eget sapien. Nullam pretium tristique velit in aliquam. Cras tincidunt eleifend posuere.', '<p>Maecenas bibendum arcu vitae est pellentesque bibendum. Nunc consequat tempus augue, et sollicitudin elit hendrerit sit amet. Proin feugiat convallis mauris, eu eleifend nulla dapibus ac. Fusce vehicula, tortor id adipiscing ultricies, dui nisi ornare arcu, vitae tempor nisl lectus ac mauris. Proin et euismod odio. Ut tincidunt eleifend dolor, vitae dignissim nulla mollis tristique. In nisl felis, luctus eget ultricies id, pulvinar at justo. Sed facilisis leo nec mi rutrum, nec lobortis libero interdum. Etiam id adipiscing magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum tortor vitae metus cursus ultricies. Aliquam volutpat elit quis fermentum volutpat. Vestibulum sit amet justo id arcu auctor dictum ut eget sapien. Nullam pretium tristique velit in aliquam. Cras tincidunt eleifend posuere.</p>\r\n<p>Vivamus vitae urna elit. Nulla egestas aliquam felis, sodales suscipit odio tempus at. Fusce pellentesque malesuada turpis eu tempor. Aenean eros velit, ornare eu felis eget, varius hendrerit dolor. Donec vel turpis et orci dapibus sodales in vitae nibh. Curabitur tristique ipsum eget lacus consequat vehicula. Nunc dapibus vitae enim eget fringilla. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>', '', '', '', '', '', '', '', '', '', ''),
(26, 0, '', '1.00', 0, '', '2014-04-03 22:03:29', '2014-04-03 22:03:29', 1, 1, 2, 'default', '', '0.0000', '0.0000', '47.900000', '47.90', 0, '0.0000', 'full_shoes_01.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 1, 0, 1, 'Nulla vehicula nibh ut libero', '', '0% combed ringspun cotton. A classic style reinvented with a comfortable set-in V-neck. Super soft baby jersey knit. Sideseamed. Set-in sleeves.\r\nWeight: 0.2 Kg', '<p>100% cotton (preshrunk), Ash is 99%/1% cotton/poly. This shirt has seamless double needle collar with double-needle sleeves and hem with a taped neck and shoulders.<br /><br />The design is printed with new age printing technology, direct-to-garment. It is printed with a water-soluble and eco-friendly ink.<br />It is cured with a heat treatment process to ensure the color-fastness and lasting durability of the design.<br /><br />Designed and printed in the United States.<br />This is not an unauthorized replica or counterfeit item. This is an original inspired design and does not infringe on any rights holders rights. The words used in the title and/or search terms are not intended to imply they are licensed by any rights holders.</p>', '', '', '', '', '', '', '', '', '', ''),
(27, 0, '', '1.00', 0, '', '2014-04-03 22:04:38', '2014-04-03 22:04:38', 1, 1, 2, 'default', '', '0.0000', '0.0000', '29.000000', '29.00', 0, '0.0000', 'full_shoes_02.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Morbi ac arcu facilisis sem imperdiet', '', 'Morbi fermentum lacus in neque pulvinar ornare. Aenean auctor mattis nisi et elementum. Vivamus ut lacus nec neque sagittis dapibus ut eget tellus.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis libero accumsan metus interdum blandit. Cras sed urna commodo risus iaculis feugiat sed non urna. Aliquam vitae vestibulum arcu, nec accumsan turpis. Praesent nec bibendum lectus, sit amet posuere eros. Aliquam erat volutpat. Fusce eu quam eu tortor congue tincidunt. Nullam convallis molestie suscipit. Morbi bibendum lacus eu elit pellentesque, et bibendum tortor fermentum. Pellentesque feugiat pulvinar porttitor. In accumsan sed erat sed fermentum. Vestibulum vehicula lectus nec ullamcorper tincidunt. Donec nunc eros, venenatis vel lorem ut, molestie pulvinar massa. Etiam accumsan quis sapien ut dictum. In vitae erat velit.</p>\r\n<p>In sodales ut sem vitae interdum. Maecenas vel justo mollis, gravida magna eget, mollis lectus. Fusce ut varius felis, ut fringilla mauris. Maecenas volutpat turpis tristique rutrum sagittis. Nullam ullamcorper vulputate lectus sed molestie. Aliquam erat volutpat. Cras nec ultrices orci. Vivamus elementum magna est, ut cursus lacus dignissim ut. In at scelerisque turpis. Praesent ligula velit, ultrices vel malesuada non, molestie quis diam. Ut sit amet faucibus enim, quis lobortis diam. Maecenas non volutpat libero.</p>', '', '', '', '', '', '', '', '', '', ''),
(28, 0, '', '1.00', 0, '', '2014-04-03 22:05:31', '2014-04-03 22:05:31', 1, 1, 2, 'default', '', '0.0000', '0.0000', '18.000000', '18.00', 0, '0.0000', 'full_shoes_03.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Donec elementum velit purus,', '', 'Sit amet rhoncus erat egestas a. Etiam eget vulputate arcu, in convallis nunc. Morbi ac arcu facilisis sem imperdiet iaculis nec eu purus.', '<p>Sorbi fermentum lacus in neque pulvinar ornare. Aenean auctor mattis nisi et elementum. Vivamus ut lacus nec neque sagittis dapibus ut eget tellus. Donec ut auctor ipsum, quis scelerisque nibh. Aliquam molestie tempor mauris, et accumsan neque egestas vel. Integer sed ante eros. Aenean lectus nibh, volutpat quis lorem id, consequat varius augue. Pellentesque in augue sem. Morbi faucibus nulla non ornare tristique. Vivamus congue porta malesuada. Suspendisse viverra eget tortor vel adipiscing. Suspendisse ullamcorper purus nec dolor congue molestie. Integer nec lorem rutrum, commodo lectus nec, auctor ipsum. Sed euismod, sapien venenatis aliquam varius, nunc massa dictum nunc, nec dapibus felis lacus semper est.</p>\r\n<p>In hac habitasse platea dictumst. Donec auctor vel ligula eleifend auctor. Nam non elementum est, vitae ultrices dui. Nullam viverra dui a augue ornare fringilla. Aenean felis nisl, ultricies vel arcu et, vestibulum tempus neque. Donec sit amet erat sapien. Maecenas congue pulvinar enim, ut luctus nibh hendrerit tempus. Nullam pellentesque lorem blandit elit interdum hendrerit. Praesent sit amet sagittis justo.SS</p>', '', '', '', '', '', '', '', '', '', ''),
(29, 0, '', '1.00', 0, '', '2014-04-03 22:06:34', '2014-04-03 22:06:57', 1, 1, 2, 'default', '', '0.0000', '0.0000', '18.000000', '18.00', 0, '0.0000', 'full_shoes_04.jpg', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, 'Donec elementum velit purus,', '', 'Sit amet rhoncus erat egestas a. Etiam eget vulputate arcu, in convallis nunc. Morbi ac arcu facilisis sem imperdiet iaculis nec eu purus.', '<p>Sorbi fermentum lacus in neque pulvinar ornare. Aenean auctor mattis nisi et elementum. Vivamus ut lacus nec neque sagittis dapibus ut eget tellus. Donec ut auctor ipsum, quis scelerisque nibh. Aliquam molestie tempor mauris, et accumsan neque egestas vel. Integer sed ante eros. Aenean lectus nibh, volutpat quis lorem id, consequat varius augue. Pellentesque in augue sem. Morbi faucibus nulla non ornare tristique. Vivamus congue porta malesuada. Suspendisse viverra eget tortor vel adipiscing. Suspendisse ullamcorper purus nec dolor congue molestie. Integer nec lorem rutrum, commodo lectus nec, auctor ipsum. Sed euismod, sapien venenatis aliquam varius, nunc massa dictum nunc, nec dapibus felis lacus semper est.</p>\r\n<p>In hac habitasse platea dictumst. Donec auctor vel ligula eleifend auctor. Nam non elementum est, vitae ultrices dui. Nullam viverra dui a augue ornare fringilla. Aenean felis nisl, ultricies vel arcu et, vestibulum tempus neque. Donec sit amet erat sapien. Maecenas congue pulvinar enim, ut luctus nibh hendrerit tempus. Nullam pellentesque lorem blandit elit interdum hendrerit. Praesent sit amet sagittis justo.SS</p>', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_attr`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(14,4) NOT NULL,
  `old_price` decimal(14,4) NOT NULL,
  `count` decimal(14,4) NOT NULL,
  `ean` varchar(100) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL,
  `attr_1` int(11) NOT NULL,
  `attr_2` int(11) NOT NULL,
  PRIMARY KEY (`product_attr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `#__jshopping_products_attr`
--

INSERT INTO `#__jshopping_products_attr` (`product_attr_id`, `product_id`, `buy_price`, `price`, `old_price`, `count`, `ean`, `weight`, `weight_volume_units`, `ext_attribute_product_id`, `attr_1`, `attr_2`) VALUES
(1, 1, '0.00', '50.6000', '0.0000', '1.0000', '01', '856.0000', '0.0000', 0, 1, 3),
(3, 21, '0.00', '25.0000', '0.0000', '1.0000', '', '0.0000', '0.0000', 0, 1, 0),
(4, 21, '0.00', '25.0000', '0.0000', '1.0000', '', '0.0000', '0.0000', 0, 5, 0),
(5, 23, '0.00', '25.0000', '0.0000', '1.0000', '', '0.0000', '0.0000', 0, 1, 2),
(6, 23, '0.00', '25.0000', '0.0000', '1.0000', '', '0.0000', '0.0000', 0, 5, 2),
(7, 23, '0.00', '25.0000', '0.0000', '1.0000', '', '0.0000', '0.0000', 0, 1, 3),
(8, 23, '0.00', '25.0000', '0.0000', '1.0000', '', '0.0000', '0.0000', 0, 5, 3),
(9, 23, '0.00', '25.0000', '0.0000', '1.0000', '', '0.0000', '0.0000', 0, 1, 4),
(10, 23, '0.00', '25.0000', '0.0000', '1.0000', '', '0.0000', '0.0000', 0, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_attr2`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_attr2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(14,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_extra_fields`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `multilist` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_extra_field_groups`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_extra_field_values`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_files`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_free_attr`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_images`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ordering` tinyint(4) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `#__jshopping_products_images`
--

INSERT INTO `#__jshopping_products_images` (`image_id`, `product_id`, `image_name`, `name`, `ordering`) VALUES
(3, 3, '2011-New-Arrival-Fashion-Women-Parka-Coat-Winderbreak-Jacket-Free-Shipping-Wholesale-KM2009.jpg', '', 1),
(18, 1, 'full_1439496660_1368259432.jpg', '', 1),
(19, 2, 'full_man_pd_1.jpg', '', 1),
(20, 2, 'full_man_pd_3.jpg', '', 2),
(21, 4, 'full_FREE-SHIPPING-WHOLESALE-LADIES-FASHION-ONE-SHOULDER-EVENING-DRESS-WOMEN-SATIN-FORMAL-DRESSES-COCKTAIL-DRESS-DK151.jpg', '', 1),
(22, 5, 'full_Long_Sleeves_Pink_Designer_New_Fashion_Women_Clothing_Jacket__1__14509013092120405_690X500.jpg', '', 1),
(23, 6, 'full_thumb_women-011.png', '', 1),
(24, 7, 'full_2013-New-Europe-Women-s-Fashion-Three-Quarter-Sleeve-Mini-Chiffon-Dress-Crewneck-Lace-Top-Pleated.jpg', '', 1),
(25, 8, 'full_black-apricot-new-fashion-medium-long-women.jpg', '', 1),
(26, 9, 'full_Fashion-Women2.jpg', '', 1),
(27, 10, 'full_Women-Fashion-Christmas-Gift-Ideas-921x1024.jpg', '', 1),
(28, 11, 'full_Free-Shipping-2011-New-Arrival-Fashion-Women-Trench-Coat-Winderbreak-Jacket-Military-Style-Coats-Wholesale-KM1278.jpg', '', 1),
(29, 12, 'full_Women-s-Wool-blend-Coat-2012-Winter-lace-bottom-outerwear-organza-skirt-double-breasted-trench-coat1.jpg', '', 1),
(30, 13, 'full_black-apricot-new-fashion-medium-long-women1.jpg', '', 1),
(31, 14, 'full_Eastern-trend-summer-dresses-clletion-2012-2013-by-Pakistani-Breakout-e1333571290584.jpg', '', 1),
(32, 15, 'full_Women-s-formal-clothing-ol-work-wear-set-professional-set-women-s-fashion-skirt-one-piece.jpg', '', 1),
(33, 16, 'full_Women-Fashion-Christmas-Gift-Ideas-921x10241.jpg', '', 1),
(34, 17, 'full_Women-s-Wool-blend-Coat-2012-Winter-lace-bottom-outerwear-organza-skirt-double-breasted-trench-coat11.jpg', '', 1),
(35, 18, 'full_bt_fashion_pd_3.jpg', '', 1),
(36, 19, 'full_bt_fashion_pd_4.jpg', '', 1),
(37, 20, 'full_hmprod_2.jpg', '', 1),
(38, 21, 'full_hmprod.jpg', '', 1),
(39, 22, 'full_man_pd_31.jpg', '', 1),
(40, 23, 'full_man_pd_2.jpg', '', 1),
(41, 24, 'full_man_pd_32.jpg', '', 1),
(42, 25, 'full_man_pd_4.jpg', '', 1),
(43, 26, 'full_shoes_01.jpg', '', 1),
(44, 27, 'full_shoes_02.jpg', '', 1),
(45, 28, 'full_shoes_03.jpg', '', 1),
(47, 29, 'full_shoes_04.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_prices`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_prices` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_relations`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_relations` (
  `product_id` int(11) NOT NULL,
  `product_related_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_reviews`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_to_categories`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_ordering` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__jshopping_products_to_categories`
--

INSERT INTO `#__jshopping_products_to_categories` (`product_id`, `category_id`, `product_ordering`) VALUES
(1, 2, 1),
(1, 3, 1),
(2, 1, 5),
(2, 3, 2),
(3, 2, 3),
(4, 2, 4),
(4, 3, 3),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(7, 3, 6),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 4, 1),
(18, 6, 1),
(19, 4, 2),
(20, 4, 3),
(21, 4, 4),
(22, 1, 1),
(22, 3, 4),
(23, 1, 2),
(24, 1, 3),
(25, 1, 4),
(25, 3, 5),
(26, 5, 1),
(27, 5, 2),
(28, 5, 3),
(29, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_products_videos`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_products_videos` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_code` text NOT NULL,
  `video_preview` varchar(255) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_product_labels`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_product_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__jshopping_product_labels`
--

INSERT INTO `#__jshopping_product_labels` (`id`, `name`, `name_en-GB`, `name_de-DE`, `image`, `name_ru-RU`) VALUES
(1, 'New', 'New', 'New', 'new.png', 'New'),
(2, 'Sale', 'Sale', 'Sale', 'sale.png', 'Sale');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_shipping_ext_calc`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__jshopping_shipping_ext_calc`
--

INSERT INTO `#__jshopping_shipping_ext_calc` (`id`, `name`, `alias`, `description`, `params`, `shipping_method`, `published`, `ordering`) VALUES
(1, 'StandartWeight', 'sm_standart_weight', 'StandartWeight', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_shipping_method`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `payments` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__jshopping_shipping_method`
--

INSERT INTO `#__jshopping_shipping_method` (`shipping_id`, `name_en-GB`, `description_en-GB`, `name_de-DE`, `description_de-DE`, `published`, `payments`, `image`, `ordering`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, 'Standard', '', 'Standardversand', '', 1, '', '', 1, 'Standard', ''),
(2, 'Express', '', 'Express', '', 1, '', '', 2, 'Express', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_shipping_method_price`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL,
  `shipping_stand_price` decimal(14,4) NOT NULL,
  `package_tax_id` int(11) NOT NULL,
  `package_stand_price` decimal(14,4) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`sh_pr_method_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__jshopping_shipping_method_price`
--

INSERT INTO `#__jshopping_shipping_method_price` (`sh_pr_method_id`, `shipping_method_id`, `shipping_tax_id`, `shipping_stand_price`, `package_tax_id`, `package_stand_price`, `delivery_times_id`, `params`) VALUES
(1, 1, 1, '10.0000', 1, '0.0000', 0, ''),
(2, 2, 1, '25.0000', 1, '0.0000', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_shipping_method_price_countries`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  PRIMARY KEY (`sh_method_country_id`),
  KEY `country_id` (`country_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=479 ;

--
-- Dumping data for table `#__jshopping_shipping_method_price_countries`
--

INSERT INTO `#__jshopping_shipping_method_price_countries` (`sh_method_country_id`, `country_id`, `sh_pr_method_id`) VALUES
(1, 239, 1),
(2, 238, 1),
(3, 237, 1),
(4, 236, 1),
(5, 235, 1),
(6, 234, 1),
(7, 233, 1),
(8, 232, 1),
(9, 231, 1),
(10, 230, 1),
(11, 229, 1),
(12, 228, 1),
(13, 227, 1),
(14, 226, 1),
(15, 225, 1),
(16, 224, 1),
(17, 223, 1),
(18, 222, 1),
(19, 221, 1),
(20, 220, 1),
(21, 219, 1),
(22, 218, 1),
(23, 217, 1),
(24, 216, 1),
(25, 215, 1),
(26, 214, 1),
(27, 213, 1),
(28, 212, 1),
(29, 211, 1),
(30, 210, 1),
(31, 209, 1),
(32, 208, 1),
(33, 207, 1),
(34, 206, 1),
(35, 205, 1),
(36, 204, 1),
(37, 203, 1),
(38, 202, 1),
(39, 201, 1),
(40, 200, 1),
(41, 199, 1),
(42, 198, 1),
(43, 197, 1),
(44, 196, 1),
(45, 195, 1),
(46, 194, 1),
(47, 193, 1),
(48, 192, 1),
(49, 191, 1),
(50, 190, 1),
(51, 189, 1),
(52, 188, 1),
(53, 187, 1),
(54, 186, 1),
(55, 185, 1),
(56, 184, 1),
(57, 183, 1),
(58, 182, 1),
(59, 181, 1),
(60, 180, 1),
(61, 179, 1),
(62, 178, 1),
(63, 177, 1),
(64, 176, 1),
(65, 175, 1),
(66, 174, 1),
(67, 173, 1),
(68, 172, 1),
(69, 171, 1),
(70, 170, 1),
(71, 169, 1),
(72, 168, 1),
(73, 167, 1),
(74, 166, 1),
(75, 165, 1),
(76, 164, 1),
(77, 163, 1),
(78, 162, 1),
(79, 161, 1),
(80, 160, 1),
(81, 159, 1),
(82, 158, 1),
(83, 157, 1),
(84, 156, 1),
(85, 155, 1),
(86, 154, 1),
(87, 153, 1),
(88, 152, 1),
(89, 151, 1),
(90, 150, 1),
(91, 149, 1),
(92, 148, 1),
(93, 147, 1),
(94, 146, 1),
(95, 145, 1),
(96, 144, 1),
(97, 143, 1),
(98, 142, 1),
(99, 141, 1),
(100, 140, 1),
(101, 139, 1),
(102, 138, 1),
(103, 137, 1),
(104, 136, 1),
(105, 135, 1),
(106, 134, 1),
(107, 133, 1),
(108, 132, 1),
(109, 131, 1),
(110, 130, 1),
(111, 129, 1),
(112, 128, 1),
(113, 127, 1),
(114, 126, 1),
(115, 125, 1),
(116, 124, 1),
(117, 123, 1),
(118, 122, 1),
(119, 121, 1),
(120, 120, 1),
(121, 119, 1),
(122, 118, 1),
(123, 117, 1),
(124, 116, 1),
(125, 115, 1),
(126, 114, 1),
(127, 113, 1),
(128, 112, 1),
(129, 111, 1),
(130, 110, 1),
(131, 109, 1),
(132, 108, 1),
(133, 107, 1),
(134, 106, 1),
(135, 105, 1),
(136, 104, 1),
(137, 103, 1),
(138, 102, 1),
(139, 101, 1),
(140, 100, 1),
(141, 99, 1),
(142, 98, 1),
(143, 97, 1),
(144, 96, 1),
(145, 95, 1),
(146, 94, 1),
(147, 93, 1),
(148, 92, 1),
(149, 91, 1),
(150, 90, 1),
(151, 89, 1),
(152, 88, 1),
(153, 87, 1),
(154, 86, 1),
(155, 85, 1),
(156, 84, 1),
(157, 83, 1),
(158, 82, 1),
(159, 81, 1),
(160, 80, 1),
(161, 79, 1),
(162, 78, 1),
(163, 77, 1),
(164, 76, 1),
(165, 75, 1),
(166, 74, 1),
(167, 73, 1),
(168, 72, 1),
(169, 71, 1),
(170, 70, 1),
(171, 69, 1),
(172, 68, 1),
(173, 67, 1),
(174, 66, 1),
(175, 65, 1),
(176, 64, 1),
(177, 63, 1),
(178, 62, 1),
(179, 61, 1),
(180, 60, 1),
(181, 59, 1),
(182, 58, 1),
(183, 57, 1),
(184, 56, 1),
(185, 55, 1),
(186, 54, 1),
(187, 53, 1),
(188, 52, 1),
(189, 51, 1),
(190, 50, 1),
(191, 49, 1),
(192, 48, 1),
(193, 47, 1),
(194, 46, 1),
(195, 45, 1),
(196, 44, 1),
(197, 43, 1),
(198, 42, 1),
(199, 41, 1),
(200, 40, 1),
(201, 39, 1),
(202, 38, 1),
(203, 37, 1),
(204, 36, 1),
(205, 35, 1),
(206, 34, 1),
(207, 33, 1),
(208, 32, 1),
(209, 31, 1),
(210, 30, 1),
(211, 29, 1),
(212, 28, 1),
(213, 27, 1),
(214, 26, 1),
(215, 25, 1),
(216, 24, 1),
(217, 23, 1),
(218, 22, 1),
(219, 21, 1),
(220, 20, 1),
(221, 19, 1),
(222, 18, 1),
(223, 17, 1),
(224, 16, 1),
(225, 15, 1),
(226, 14, 1),
(227, 13, 1),
(228, 12, 1),
(229, 11, 1),
(230, 10, 1),
(231, 9, 1),
(232, 8, 1),
(233, 7, 1),
(234, 6, 1),
(235, 5, 1),
(236, 4, 1),
(237, 3, 1),
(238, 2, 1),
(239, 1, 1),
(240, 239, 2),
(241, 238, 2),
(242, 237, 2),
(243, 236, 2),
(244, 235, 2),
(245, 234, 2),
(246, 233, 2),
(247, 232, 2),
(248, 231, 2),
(249, 230, 2),
(250, 229, 2),
(251, 228, 2),
(252, 227, 2),
(253, 226, 2),
(254, 225, 2),
(255, 224, 2),
(256, 223, 2),
(257, 222, 2),
(258, 221, 2),
(259, 220, 2),
(260, 219, 2),
(261, 218, 2),
(262, 217, 2),
(263, 216, 2),
(264, 215, 2),
(265, 214, 2),
(266, 213, 2),
(267, 212, 2),
(268, 211, 2),
(269, 210, 2),
(270, 209, 2),
(271, 208, 2),
(272, 207, 2),
(273, 206, 2),
(274, 205, 2),
(275, 204, 2),
(276, 203, 2),
(277, 202, 2),
(278, 201, 2),
(279, 200, 2),
(280, 199, 2),
(281, 198, 2),
(282, 197, 2),
(283, 196, 2),
(284, 195, 2),
(285, 194, 2),
(286, 193, 2),
(287, 192, 2),
(288, 191, 2),
(289, 190, 2),
(290, 189, 2),
(291, 188, 2),
(292, 187, 2),
(293, 186, 2),
(294, 185, 2),
(295, 184, 2),
(296, 183, 2),
(297, 182, 2),
(298, 181, 2),
(299, 180, 2),
(300, 179, 2),
(301, 178, 2),
(302, 177, 2),
(303, 176, 2),
(304, 175, 2),
(305, 174, 2),
(306, 173, 2),
(307, 172, 2),
(308, 171, 2),
(309, 170, 2),
(310, 169, 2),
(311, 168, 2),
(312, 167, 2),
(313, 166, 2),
(314, 165, 2),
(315, 164, 2),
(316, 163, 2),
(317, 162, 2),
(318, 161, 2),
(319, 160, 2),
(320, 159, 2),
(321, 158, 2),
(322, 157, 2),
(323, 156, 2),
(324, 155, 2),
(325, 154, 2),
(326, 153, 2),
(327, 152, 2),
(328, 151, 2),
(329, 150, 2),
(330, 149, 2),
(331, 148, 2),
(332, 147, 2),
(333, 146, 2),
(334, 145, 2),
(335, 144, 2),
(336, 143, 2),
(337, 142, 2),
(338, 141, 2),
(339, 140, 2),
(340, 139, 2),
(341, 138, 2),
(342, 137, 2),
(343, 136, 2),
(344, 135, 2),
(345, 134, 2),
(346, 133, 2),
(347, 132, 2),
(348, 131, 2),
(349, 130, 2),
(350, 129, 2),
(351, 128, 2),
(352, 127, 2),
(353, 126, 2),
(354, 125, 2),
(355, 124, 2),
(356, 123, 2),
(357, 122, 2),
(358, 121, 2),
(359, 120, 2),
(360, 119, 2),
(361, 118, 2),
(362, 117, 2),
(363, 116, 2),
(364, 115, 2),
(365, 114, 2),
(366, 113, 2),
(367, 112, 2),
(368, 111, 2),
(369, 110, 2),
(370, 109, 2),
(371, 108, 2),
(372, 107, 2),
(373, 106, 2),
(374, 105, 2),
(375, 104, 2),
(376, 103, 2),
(377, 102, 2),
(378, 101, 2),
(379, 100, 2),
(380, 99, 2),
(381, 98, 2),
(382, 97, 2),
(383, 96, 2),
(384, 95, 2),
(385, 94, 2),
(386, 93, 2),
(387, 92, 2),
(388, 91, 2),
(389, 90, 2),
(390, 89, 2),
(391, 88, 2),
(392, 87, 2),
(393, 86, 2),
(394, 85, 2),
(395, 84, 2),
(396, 83, 2),
(397, 82, 2),
(398, 81, 2),
(399, 80, 2),
(400, 79, 2),
(401, 78, 2),
(402, 77, 2),
(403, 76, 2),
(404, 75, 2),
(405, 74, 2),
(406, 73, 2),
(407, 72, 2),
(408, 71, 2),
(409, 70, 2),
(410, 69, 2),
(411, 68, 2),
(412, 67, 2),
(413, 66, 2),
(414, 65, 2),
(415, 64, 2),
(416, 63, 2),
(417, 62, 2),
(418, 61, 2),
(419, 60, 2),
(420, 59, 2),
(421, 58, 2),
(422, 57, 2),
(423, 56, 2),
(424, 55, 2),
(425, 54, 2),
(426, 53, 2),
(427, 52, 2),
(428, 51, 2),
(429, 50, 2),
(430, 49, 2),
(431, 48, 2),
(432, 47, 2),
(433, 46, 2),
(434, 45, 2),
(435, 44, 2),
(436, 43, 2),
(437, 42, 2),
(438, 41, 2),
(439, 40, 2),
(440, 39, 2),
(441, 38, 2),
(442, 37, 2),
(443, 36, 2),
(444, 35, 2),
(445, 34, 2),
(446, 33, 2),
(447, 32, 2),
(448, 31, 2),
(449, 30, 2),
(450, 29, 2),
(451, 28, 2),
(452, 27, 2),
(453, 26, 2),
(454, 25, 2),
(455, 24, 2),
(456, 23, 2),
(457, 22, 2),
(458, 21, 2),
(459, 20, 2),
(460, 19, 2),
(461, 18, 2),
(462, 17, 2),
(463, 16, 2),
(464, 15, 2),
(465, 14, 2),
(466, 13, 2),
(467, 12, 2),
(468, 11, 2),
(469, 10, 2),
(470, 9, 2),
(471, 8, 2),
(472, 7, 2),
(473, 6, 2),
(474, 5, 2),
(475, 4, 2),
(476, 3, 2),
(477, 2, 2),
(478, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_shipping_method_price_weight`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL AUTO_INCREMENT,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(14,4) NOT NULL,
  PRIMARY KEY (`sh_pr_weight_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_taxes`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_taxes` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(50) NOT NULL,
  `tax_value` decimal(12,2) NOT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__jshopping_taxes`
--

INSERT INTO `#__jshopping_taxes` (`tax_id`, `tax_name`, `tax_value`) VALUES
(1, 'Normal', '19.00');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_taxes_ext`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_taxes_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_unit`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qty` int(11) NOT NULL DEFAULT '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__jshopping_unit`
--

INSERT INTO `#__jshopping_unit` (`id`, `qty`, `name_de-DE`, `name_en-GB`, `name_ru-RU`) VALUES
(1, 1, 'Kg', 'Kg', 'Kg'),
(2, 1, 'Liter', 'Liter', 'Liter'),
(3, 1, 'St.', 'pcs.', 'pcs.');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_usergroups`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`usergroup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__jshopping_usergroups`
--

INSERT INTO `#__jshopping_usergroups` (`usergroup_id`, `usergroup_name`, `usergroup_discount`, `usergroup_description`, `usergroup_is_default`) VALUES
(1, 'Default', '0.00', 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_users`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `number` varchar(32) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(255) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `delivery_adress` tinyint(1) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(255) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  KEY `u_name` (`u_name`),
  KEY `usergroup_id` (`usergroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__jshopping_users`
--

INSERT INTO `#__jshopping_users` (`user_id`, `usergroup_id`, `payment_id`, `shipping_id`, `u_name`, `number`, `title`, `f_name`, `l_name`, `m_name`, `firma_name`, `client_type`, `firma_code`, `tax_number`, `email`, `birthday`, `street`, `home`, `apartment`, `zip`, `city`, `state`, `country`, `phone`, `mobil_phone`, `fax`, `ext_field_1`, `ext_field_2`, `ext_field_3`, `delivery_adress`, `d_title`, `d_f_name`, `d_l_name`, `d_m_name`, `d_firma_name`, `d_email`, `d_birthday`, `d_street`, `d_home`, `d_apartment`, `d_zip`, `d_city`, `d_state`, `d_country`, `d_phone`, `d_mobil_phone`, `d_fax`, `d_ext_field_1`, `d_ext_field_2`, `d_ext_field_3`) VALUES
(194, 1, 0, 0, 'admin', '194', 0, '', '', '', '', 0, '', '', 'abc@abc.com', '0000-00-00', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 0, 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', 0, '', '', '', '', '', ''),
(195, 1, 0, 0, 'tampt', '195', 0, '', '', '', '', 0, '', '', 'tampt@vsmarttech.com', '0000-00-00', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 0, 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__jshopping_vendors`
--

CREATE TABLE IF NOT EXISTS `#__jshopping_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `benef_bank_info` varchar(64) NOT NULL,
  `benef_bic` varchar(64) NOT NULL,
  `benef_conto` varchar(64) NOT NULL,
  `benef_payee` varchar(64) NOT NULL,
  `benef_iban` varchar(64) NOT NULL,
  `benef_bic_bic` varchar(64) NOT NULL,
  `benef_swift` varchar(64) NOT NULL,
  `interm_name` varchar(64) NOT NULL,
  `interm_swift` varchar(64) NOT NULL,
  `identification_number` varchar(64) NOT NULL,
  `tax_number` varchar(64) NOT NULL,
  `additional_information` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__jshopping_vendors`
--

INSERT INTO `#__jshopping_vendors` (`id`, `shop_name`, `company_name`, `url`, `logo`, `adress`, `city`, `zip`, `state`, `country`, `f_name`, `l_name`, `middlename`, `phone`, `fax`, `email`, `benef_bank_info`, `benef_bic`, `benef_conto`, `benef_payee`, `benef_iban`, `benef_bic_bic`, `benef_swift`, `interm_name`, `interm_swift`, `identification_number`, `tax_number`, `additional_information`, `user_id`, `main`, `publish`) VALUES
(1, 'Shop name', 'Company', '', '', 'Address', 'City', 'Postal Code ', 'State', 81, 'First name ', 'Last name', '', '00000000', '00000000', 'email@email.com', 'test', 'test', 'test', 'test', 'test', '', 'test', 'test', 'test', '', '', 'Additional information', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_attachments`
--

CREATE TABLE IF NOT EXISTS `#__k2_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_categories`
--

CREATE TABLE IF NOT EXISTS `#__k2_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`published`,`access`,`trash`),
  KEY `parent` (`parent`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `access` (`access`),
  KEY `trash` (`trash`),
  KEY `language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__k2_categories`
--

INSERT INTO `#__k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(1, 'Fashion', 'fashion', '<div class="author-about">\r\n<p>Nulla ac fringilla mauris, eu pulvinar quam. Quisque dignissim, risus sed volutpat gravida, eros sapien suscipit nunc, eget iaculis dui lorem non nunc.</p>\r\n</div>', 0, 0, 1, 1, 1, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"2","num_primary_columns":"1","primaryImgSize":"Large","num_secondary_items":"0","num_secondary_columns":"0","secondaryImgSize":"Large","num_links":"0","num_links_columns":"0","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"0","catFeedIcon":"0","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"1","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"0","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"1","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(2, 'showcase', 'showcase', '', 0, 0, 1, 1, 2, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_comments`
--

CREATE TABLE IF NOT EXISTS `#__k2_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`),
  KEY `userID` (`userID`),
  KEY `published` (`published`),
  KEY `latestComments` (`published`,`commentDate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_extra_fields`
--

CREATE TABLE IF NOT EXISTS `#__k2_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_extra_fields_groups`
--

CREATE TABLE IF NOT EXISTS `#__k2_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_items`
--

CREATE TABLE IF NOT EXISTS `#__k2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `ordering` (`ordering`),
  KEY `featured` (`featured`),
  KEY `featured_ordering` (`featured_ordering`),
  KEY `hits` (`hits`),
  KEY `created` (`created`),
  KEY `language` (`language`),
  FULLTEXT KEY `search` (`title`,`introtext`,`fulltext`,`extra_fields_search`,`image_caption`,`image_credits`,`video_caption`,`video_credits`,`metadesc`,`metakey`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `#__k2_items`
--

INSERT INTO `#__k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(1, 'Vivamus ultrices', 'vivamus-ultrices', 1, 1, '<p><span style="line-height: 1.3em;">Vivamus ultrices, odio nec porttitor congue, quam eros cursus odio, euismod sodales mauris erat ut augue. Sed eu interdum ante, eget imperdiet odio. Sed cursus elit a luctus fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></p>\r\n', '\r\n<p><span style="line-height: 1.3em;"> Aenean ut massa vitae erat consectetur lacinia sed sed urna. Maecenas imperdiet metus nisl, sed gravida eros feugiat id. Vestibulum arcu metus, tempus sed pretium placerat, pharetra quis enim. Nam molestie lectus enim, a aliquet nibh blandit vitae. Sed a risus ut nisl vulputate cursus. Fusce malesuada augue vel urna laoreet viverra. Fusce arcu magna, faucibus nec eleifend eu, scelerisque non nibh. Aenean quis luctus eros. Donec blandit pulvinar mauris.</span></p>', NULL, NULL, '[]', '', '2014-03-03 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-03-27 03:08:14', 194, '2014-03-03 00:00:00', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 2, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(2, 'Pellentesque lorem leo', 'pellentesque-lorem-leo', 1, 1, '<p>Pellentesque lorem leo, aliquet sed diam id, sodales tristique sapien. Aliquam vel porttitor leo. Proin at augue at orci varius scelerisque. Proin vitae viverra neque, ut convallis elit. Nulla convallis purus id faucibus aliquet.</p>\r\n', '\r\n<p> </p>\r\n<p>Phasellus vitae tellus pretium, tempus erat sit amet, congue nulla. Suspendisse ac suscipit arcu. Sed placerat ornare magna, id feugiat urna auctor lacinia. Aliquam erat volutpat. Etiam quis porttitor nibh. Nullam blandit, ligula ac mollis ultricies, velit velit vulputate eros, quis mollis turpis dolor in arcu. Sed leo mi, rhoncus id massa lobortis, lobortis vulputate odio.</p>', NULL, NULL, '[]', '', '2014-03-03 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-04-03 17:53:16', 194, '2014-03-03 00:00:00', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(3, 'If you are going to use a passage', 'if-you-are-going-to-use-a-passage', 1, 1, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.</p>\r\n', '\r\n<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, NULL, '[]', '', '2014-03-03 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-04-03 17:52:41', 194, '2014-03-03 00:00:00', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(4, 'Contrary to popular belief', 'contrary-to-popular-belief', 1, 1, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur.</p>\r\n', '\r\n<p>From a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>', NULL, NULL, '[]', '', '2014-03-03 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-04-03 17:52:07', 194, '2014-03-03 00:00:00', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(5, 'Duis nulla sapien', 'duis-nulla-sapien', 1, 1, '<p>Nullam adipiscing metus ipsum, at ultricies libero tempus ut. Maecenas porta congue lectus, non malesuada nibh. Maecenas consectetur vel quam a viverra. Donec laoreet, lectus a mattis aliquam, urna est eleifend eros, sed pulvinar urna velit et leo. Cras non fermentum dolor. Donec non quam dapibus, vestibulum elit quis, tempus arcu. Nullam porta elit sit amet nulla blandit, vel blandit felis pharetra.</p>\r\n', '\r\n<p> </p>\r\n<p>Phasellus sagittis aliquam diam, eget commodo odio semper eget. Ut posuere luctus nulla, sit amet iaculis lorem consectetur at. In egestas risus urna, ac dignissim diam porta vitae. Aliquam erat volutpat. Duis vitae sodales lectus, in rutrum magna. Cras ligula leo, molestie et ultricies id, dapibus vitae velit. Maecenas sagittis tellus vitae turpis tincidunt vestibulum. Aliquam in iaculis nunc. Duis nulla sapien, convallis sit amet rhoncus nec, vehicula quis erat. Morbi scelerisque lorem eu orci pharetra, in semper purus lobortis. Praesent aliquam dictum erat vestibulum ornare. Curabitur a magna viverra, malesuada lectus et, faucibus diam. Proin rutrum augue eros, sit amet adipiscing massa suscipit at. Quisque mauris arcu, malesuada vel malesuada vitae, varius in mauris. Donec vitae laoreet dolor. Curabitur ut quam magna.</p>', NULL, NULL, '[]', '', '2014-03-03 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-04-03 17:49:22', 194, '2014-03-03 00:00:00', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(6, 'Cum sociis natoque penatibus', 'cum-sociis-natoque-penatibus', 1, 1, '<p>Nulla tempus lectus ligula, ac tincidunt sapien faucibus sed. Etiam ligula felis, iaculis vel commodo a, varius a lorem. Suspendisse et nulla bibendum, congue nisl eu, tincidunt eros. Donec tempus ultricies sollicitudin. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n', '\r\n<p>Pellentesque venenatis elementum molestie. Nam cursus, nisi sit amet volutpat rhoncus, metus urna commodo justo, at auctor nulla nibh ac tortor. In semper lobortis est, ac consequat nisi feugiat at. Praesent pharetra pulvinar porttitor. In tincidunt nec turpis ut venenatis. Proin id lectus eu lectus tempus aliquet sed a dolor. Nulla aliquet ac lacus ut scelerisque. Suspendisse tellus nunc, consectetur quis dignissim ac, convallis ut sapien. Aenean nisl mi, malesuada vel ipsum eget, faucibus hendrerit ligula. Morbi pellentesque lacinia accumsan.</p>', NULL, NULL, '[]', '', '2014-03-03 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-04-03 17:47:32', 194, '2014-03-03 00:00:00', '0000-00-00 00:00:00', 0, 1, 6, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(7, 'Aliquam eleifend turpis est', 'aliquam-eleifend-turpis-est', 1, 1, '<p>Pellentesque sit amet semper ipsum. Nulla sit amet dapibus nibh. Donec vehicula quis enim sit amet scelerisque. Morbi bibendum vulputate nisl, vitae tempor justo pharetra a. Ut blandit vitae lectus eu molestie. In eget egestas sem, a blandit urna.</p>\r\n', '\r\n<p>Nunc nisl odio, feugiat et volutpat sit amet, vestibulum a dui. Aenean gravida at erat vel commodo. In malesuada consectetur risus, eu rutrum quam congue vitae. Phasellus vitae lacinia lorem, quis venenatis lorem. Etiam volutpat condimentum porta. Phasellus ut ullamcorper ligula. Fusce pulvinar adipiscing eros, non aliquet tortor. Sed sit amet ligula sem.</p>\r\n<p>Suspendisse potenti. Donec fringilla dapibus aliquet. Aliquam eleifend turpis est, in sodales elit auctor vitae. Mauris ut nunc ultricies velit convallis congue ut vitae ante. Phasellus sapien nisi, pharetra vel condimentum vel, vehicula quis turpis. Curabitur posuere turpis sem, at pharetra lectus volutpat non. Nullam quam lorem, sagittis vel augue ac, feugiat euismod enim. Integer lacus augue, adipiscing at justo sit amet, ullamcorper ornare tortor.</p>', NULL, NULL, '[]', '', '2014-03-03 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-04-03 17:46:44', 194, '2014-03-03 00:00:00', '0000-00-00 00:00:00', 0, 1, 7, 0, 0, '', '', '', '', 8, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(8, 'Donec adipiscing mi vel leo', 'donec-adipiscing-mi-vel-leo', 1, 1, '<p>Sed tincidunt feugiat tristique. Pellentesque blandit eros ligula, sed venenatis tortor pretium ut. Aenean eu purus mollis, consequat purus eget, porta nisl. Cras ornare nisl eros, dignissim consectetur orci fringilla sit amet. Integer sem arcu, adipiscing et massa vel, aliquet elementum arcu.</p>\r\n', '\r\n<p>Integer sit amet tortor eget arcu ultricies placerat eu et lacus. Cras vel sem id neque ornare placerat. Nunc lacus neque, fringilla nec interdum id, tempor ut risus. Nullam pulvinar sagittis orci nec condimentum.</p>\r\n<p>Nunc nec velit nec arcu sollicitudin interdum. Vivamus tempor mauris eu dolor egestas commodo. Aliquam in mauris in velit commodo eleifend. Sed elit ante, lobortis at euismod id, auctor in lacus. Sed sed velit sem. Donec adipiscing mi vel leo sodales lobortis. Vestibulum sollicitudin felis congue posuere malesuada. Praesent fringilla quis sem eu laoreet. Integer iaculis sagittis pharetra. Curabitur interdum leo leo, eget scelerisque neque congue ornare. Donec tristique venenatis est a faucibus. Maecenas tempus, justo quis volutpat sagittis, quam turpis consectetur urna, quis pretium nisi nisi at ante. Quisque lacinia tristique nibh a aliquam. Maecenas erat lacus, auctor vel mollis ac, laoreet a sapien.</p>', NULL, NULL, '[]', '', '2014-03-03 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-04-03 17:46:10', 194, '2014-03-03 00:00:00', '0000-00-00 00:00:00', 0, 1, 8, 0, 0, '', '', '', '', 9, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(9, 'Proin fringilla elementum tortor', 'proin-fringilla-elementum-tortor', 1, 1, '<p>Vestibulum fermentum luctus imperdiet. Praesent ante ante, posuere a sapien vel, consectetur tempor elit. Sed libero lorem, ultricies cursus viverra pellentesque, pulvinar et mauris. Ut eu sapien in ante pulvinar sagittis et at diam.</p>\r\n', '\r\n<p>Quisque vel facilisis sem. Sed ac nibh orci. Nulla at lacinia tellus, a ullamcorper risus. Phasellus sodales metus vel urna auctor dapibus. Integer eu urna rutrum, rutrum turpis non, tempor mi. Mauris convallis accumsan tincidunt. Vivamus volutpat convallis tellus, et malesuada purus lobortis eu. Duis tincidunt iaculis velit eu tristique. Proin fringilla elementum tortor sit amet facilisis. Quisque vitae dui quam.</p>\r\n<p>Suspendisse malesuada tincidunt velit quis ultrices. Donec facilisis, quam lobortis aliquet blandit, erat est cursus lectus, a aliquam erat urna id ante. Ut interdum, eros quis convallis facilisis, lectus augue ornare diam, non pellentesque tellus arcu nec nulla. Curabitur vitae tellus accumsan, aliquam sem at, fringilla ante. Ut tempor malesuada diam ut lobortis. Morbi molestie, risus sit amet scelerisque pulvinar, nisl leo venenatis mauris, adipiscing consectetur lorem enim et nibh. Suspendisse rhoncus tristique neque pharetra venenatis. Duis sed pretium turpis. Donec semper mollis dictum. Sed a egestas turpis, nec condimentum purus. Nam dictum bibendum justo sit amet hendrerit. Proin euismod vehicula eros, a lacinia ligula scelerisque eget.</p>', NULL, NULL, '[]', '', '2014-03-03 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-04-03 17:45:23', 194, '2014-03-03 00:00:00', '0000-00-00 00:00:00', 0, 1, 9, 0, 0, '', '', '', '', 166, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(10, '24/7 customer service supported by professionals', '24-7-customer-service-supported-by-professionals', 2, 1, '<p>Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.<br /><br />Having problems? We’re here to help.</p>\r\n', '\r\n<p>Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.</p>\r\n<p>Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.</p>', NULL, NULL, '[]', '', '2014-03-11 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-03-27 03:05:05', 194, '2014-03-11 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 0, 0, '', '', '', '', 2, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(11, '21/7 customer service supported by professionals', '21-7-customer-service-supported-by-professionals', 2, 1, '<p>Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.<br /><br />Having problems? We’re here to help.</p>\r\n', '\r\n<p>Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.</p>\r\n<p>Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.</p>', NULL, NULL, '[]', '', '2014-03-11 00:00:00', 194, '', 0, '0000-00-00 00:00:00', '2014-03-27 03:04:47', 194, '2014-03-11 00:00:00', '0000-00-00 00:00:00', 1, 1, 2, 0, 0, '', '', '', '', 2, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(12, 'Copy of Vivamus ultrices', 'vivamus-ultrices', 1, 1, '<p><span style="line-height: 1.3em;">Vivamus ultrices, odio nec porttitor congue, quam eros cursus odio, euismod sodales mauris erat ut augue. Sed eu interdum ante, eget imperdiet odio. Sed cursus elit a luctus fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></p>\r\n', '\r\n<p><span style="line-height: 1.3em;"> Aenean ut massa vitae erat consectetur lacinia sed sed urna. Maecenas imperdiet metus nisl, sed gravida eros feugiat id. Vestibulum arcu metus, tempus sed pretium placerat, pharetra quis enim. Nam molestie lectus enim, a aliquet nibh blandit vitae. Sed a risus ut nisl vulputate cursus. Fusce malesuada augue vel urna laoreet viverra. Fusce arcu magna, faucibus nec eleifend eu, scelerisque non nibh. Aenean quis luctus eros. Donec blandit pulvinar mauris.</span></p>', NULL, NULL, '[]', '', '2014-04-04 18:05:05', 194, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 194, '2014-03-03 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_rating`
--

CREATE TABLE IF NOT EXISTS `#__k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__k2_rating`
--

INSERT INTO `#__k2_rating` (`itemID`, `rating_sum`, `rating_count`, `lastip`) VALUES
(9, 4, 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_tags`
--

CREATE TABLE IF NOT EXISTS `#__k2_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__k2_tags`
--

INSERT INTO `#__k2_tags` (`id`, `name`, `published`) VALUES
(1, 'Fashion', 1),
(2, 'service', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_tags_xref`
--

CREATE TABLE IF NOT EXISTS `#__k2_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `#__k2_tags_xref`
--

INSERT INTO `#__k2_tags_xref` (`id`, `tagID`, `itemID`) VALUES
(33, 1, 1),
(51, 1, 2),
(49, 1, 3),
(47, 1, 4),
(45, 1, 5),
(43, 1, 6),
(41, 1, 7),
(39, 1, 8),
(36, 1, 9),
(24, 2, 10),
(23, 2, 11),
(52, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_users`
--

CREATE TABLE IF NOT EXISTS `#__k2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `group` (`group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__k2_users`
--

INSERT INTO `#__k2_users` (`id`, `userID`, `userName`, `gender`, `description`, `image`, `url`, `group`, `plugins`, `ip`, `hostname`, `notes`) VALUES
(1, 224, 'Super User', 'm', '<div class="userItemIntroText">\r\n<p>Vestibulum fermentum luctus imperdiet. Praesent ante ante, posuere a sapien vel, consectetur tempor elit. Sed libero lorem, ultricies cursus viverra pellentesque, pulvinar et mauris. Ut eu sapien in ante pulvinar sagittis et at diam.</p>\r\n</div>', '1.jpg', 'http://bowthemes.com', 1, '', '::1', 'KIEN-DESKTOP-PC', ''),
(2, 227, 'Tam Pham', 'm', '', NULL, NULL, 1, '', '127.0.0.1', 'TAM-PC', ''),
(3, 194, 'Daniel Trinh', 'm', '<p>Vestibulum fermentum luctus imperdiet. Praesent ante ante, posuere a sapien vel, consectetur tempor elit. Sed libero lorem, ultricies cursus viverra pellentesque, pulvinar et mauris. Ut eu sapien in ante pulvinar sagittis et at diam.</p>', '3.jpg', 'http://bowthemes.com', 1, '', '10.0.0.198', 'KIEN-DESKTOP-PC', ''),
(4, 195, 'Tam Pham', 'm', '', NULL, NULL, 1, '', '10.0.0.71', 'MrTam-VST', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_user_groups`
--

CREATE TABLE IF NOT EXISTS `#__k2_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__k2_user_groups`
--

INSERT INTO `#__k2_user_groups` (`id`, `name`, `permissions`) VALUES
(1, 'Registered', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","inheritance":0,"categories":"all"}'),
(2, 'Site Owner', '{"comment":"1","frontEdit":"1","add":"1","editOwn":"1","editAll":"1","publish":"1","inheritance":1,"categories":"all"}');

-- --------------------------------------------------------

--
-- Table structure for table `#__languages`
--

CREATE TABLE IF NOT EXISTS `#__languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__languages`
--

INSERT INTO `#__languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'ru-RU', 'Russian (RU)', 'Russian (RU)', 'ru', 'ru', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu`
--

CREATE TABLE IF NOT EXISTS `#__menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=181 ;

--
-- Dumping data for table `#__menu`
--

INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 151, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 43, 48, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 44, 45, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 46, 47, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 49, 54, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 50, 51, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 52, 53, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 55, 60, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 56, 57, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 58, 59, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 61, 62, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 63, 64, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 65, 70, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 66, 67, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 68, 69, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 71, 72, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 73, 74, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 75, 76, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 77, 78, 0, '*', 1),
(101, 'mainmenu-en', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["2"],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 1, 'en-GB', 0),
(102, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
(103, 'usermenu', 'Site Administrator', '2013-11-16-23-26-41', '', '2013-11-16-23-26-41', 'administrator', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 37, 38, 0, '*', 0),
(104, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 33, 34, 0, '*', 0),
(105, 'usermenu', 'Submit a Weblink', 'submit-a-weblink', '', 'submit-a-weblink', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
(106, 'usermenu', 'Template Settings', 'template-settings', '', 'template-settings', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', -2, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 0, '*', 0),
(107, 'usermenu', 'Site Settings', 'site-settings', '', 'site-settings', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', -2, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 0, '*', 0),
(124, 'main', 'COM_K2', 'com-k2', '', 'com-k2', 'index.php?option=com_k2', 'component', 0, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/system/k2_16x16.png', 0, '', 79, 100, 0, '', 1),
(125, 'main', 'K2_ITEMS', 'k2-items', '', 'com-k2/k2-items', 'index.php?option=com_k2&view=items', 'component', 0, 124, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 80, 81, 0, '', 1),
(126, 'main', 'K2_CATEGORIES', 'k2-categories', '', 'com-k2/k2-categories', 'index.php?option=com_k2&view=categories', 'component', 0, 124, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 82, 83, 0, '', 1),
(127, 'main', 'K2_TAGS', 'k2-tags', '', 'com-k2/k2-tags', 'index.php?option=com_k2&view=tags', 'component', 0, 124, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 84, 85, 0, '', 1),
(128, 'main', 'K2_COMMENTS', 'k2-comments', '', 'com-k2/k2-comments', 'index.php?option=com_k2&view=comments', 'component', 0, 124, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 86, 87, 0, '', 1),
(129, 'main', 'K2_USERS', 'k2-users', '', 'com-k2/k2-users', 'index.php?option=com_k2&view=users', 'component', 0, 124, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 88, 89, 0, '', 1),
(130, 'main', 'K2_USER_GROUPS', 'k2-user-groups', '', 'com-k2/k2-user-groups', 'index.php?option=com_k2&view=usergroups', 'component', 0, 124, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 90, 91, 0, '', 1),
(131, 'main', 'K2_EXTRA_FIELDS', 'k2-extra-fields', '', 'com-k2/k2-extra-fields', 'index.php?option=com_k2&view=extrafields', 'component', 0, 124, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 92, 93, 0, '', 1),
(132, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2-extra-field-groups', '', 'com-k2/k2-extra-field-groups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 0, 124, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 94, 95, 0, '', 1),
(133, 'main', 'K2_MEDIA_MANAGER', 'k2-media-manager', '', 'com-k2/k2-media-manager', 'index.php?option=com_k2&view=media', 'component', 0, 124, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 96, 97, 0, '', 1),
(134, 'main', 'K2_INFORMATION', 'k2-information', '', 'com-k2/k2-information', 'index.php?option=com_k2&view=info', 'component', 0, 124, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 98, 99, 0, '', 1),
(144, 'main', 'JoomShopping', 'joomshopping', '', 'joomshopping', 'index.php?option=com_jshopping', 'component', 0, 1, 1, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_logo_s.png', 0, '', 101, 118, 0, '', 1),
(145, 'main', 'categories', 'categories', '', 'joomshopping/categories', 'index.php?option=com_jshopping&controller=categories&catid=0', 'component', 0, 144, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_categories_s.png', 0, '', 102, 103, 0, '', 1),
(146, 'main', 'products', 'products', '', 'joomshopping/products', 'index.php?option=com_jshopping&controller=products&category_id=0', 'component', 0, 144, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_products_s.png', 0, '', 104, 105, 0, '', 1),
(147, 'main', 'orders', 'orders', '', 'joomshopping/orders', 'index.php?option=com_jshopping&controller=orders', 'component', 0, 144, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_orders_s.png', 0, '', 106, 107, 0, '', 1),
(148, 'main', 'clients', 'clients', '', 'joomshopping/clients', 'index.php?option=com_jshopping&controller=users', 'component', 0, 144, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_users_s.png', 0, '', 108, 109, 0, '', 1),
(149, 'main', 'options', 'options', '', 'joomshopping/options', 'index.php?option=com_jshopping&controller=other', 'component', 0, 144, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_options_s.png', 0, '', 110, 111, 0, '', 1),
(150, 'main', 'configuration', 'configuration', '', 'joomshopping/configuration', 'index.php?option=com_jshopping&controller=config', 'component', 0, 144, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_configuration_s.png', 0, '', 112, 113, 0, '', 1),
(151, 'main', 'install-and-update', 'install-and-update', '', 'joomshopping/install-and-update', 'index.php?option=com_jshopping&controller=update', 'component', 0, 144, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_update_s.png', 0, '', 114, 115, 0, '', 1),
(152, 'main', 'about-as', 'about-as', '', 'joomshopping/about-as', 'index.php?option=com_jshopping&controller=info', 'component', 0, 144, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_info_s.png', 0, '', 116, 117, 0, '', 1),
(156, 'category-menu', 'Business blog', '2014-03-27-04-03-01', '', '2014-03-27-04-03-01', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 119, 120, 0, '*', 0),
(157, 'category-menu', 'Advertise', '2014-03-27-04-03-38', '', '2014-03-27-04-03-38', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 121, 122, 0, '*', 0),
(158, 'category-menu', 'Joomla extensions', '2014-03-27-04-04-27', '', '2014-03-27-04-04-27', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 123, 124, 0, '*', 0),
(159, 'category-menu', 'Joomla templates', '2014-03-27-04-04-54', '', '2014-03-27-04-04-54', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 125, 126, 0, '*', 0),
(160, 'mainmenu-en', 'K2 category', 'k2-category', '', 'k2-category', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["1"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 22, 0, 'en-GB', 0),
(161, 'mainmenu-en', 'K2 user', 'k2-user', '', 'k2-category/k2-user', 'index.php?option=com_k2&view=itemlist&layout=user&id=194&task=user', 'component', 1, 160, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","userOrdering":"","userFeedLink":"0","userFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 16, 17, 0, 'en-GB', 0),
(162, 'mainmenu-en', 'K2 Tags', 'k2-tags', '', 'k2-category/k2-tags', 'index.php?option=com_k2&view=itemlist&layout=tag&tag=Fashion&task=tag', 'component', 1, 160, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","tagOrdering":"","tagFeedLink":"0","tagFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 20, 21, 0, 'en-GB', 0),
(163, 'mainmenu-en', 'K2 lastest', 'k2-lastest', '', 'k2-category/k2-lastest', 'index.php?option=com_k2&view=latest&layout=latest', 'component', 1, 160, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","source":"1","latestItemsCols":"1","latestItemsLimit":"3","latestItemsDisplayEffect":"all","userIDs":["194"],"userName":"0","userImage":"0","userDescription":"0","userURL":"0","userEmail":"0","userFeed":"0","categoryIDs":["1"],"categoryTitle":"0","categoryDescription":"0","categoryImage":"0","categoryFeed":"0","latestItemTitle":"1","latestItemTitleLinked":"1","latestItemDateCreated":"1","latestItemImage":"1","latestItemImageSize":"Large","latestItemVideo":"1","latestItemVideoWidth":"","latestItemVideoHeight":"","latestItemAudioWidth":"","latestItemAudioHeight":"","latestItemVideoAutoPlay":"0","latestItemIntroText":"1","latestItemCategory":"1","latestItemTags":"1","latestItemReadMore":"1","latestItemCommentsAnchor":"0","feedLink":"0","latestItemK2Plugins":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 18, 19, 0, 'en-GB', 0),
(164, 'mainmenu-en', 'Contact', 'contact', '', 'contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, 'en-GB', 0),
(165, 'category-menu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"0","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 127, 128, 0, 'en-GB', 0),
(166, 'mainmenu-ru', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["2"],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"0","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 129, 130, 1, 'ru-RU', 0),
(167, 'mainmenu-en', 'J!Page', 'j-page', '', 'j-page', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 28, 0, 'en-GB', 0),
(168, 'mainmenu-en', 'J! feature', 'j-feature', '', 'j-page/j-feature', 'index.php?option=com_content&view=featured', 'component', 1, 167, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 24, 25, 0, 'en-GB', 0),
(169, 'mainmenu-en', 'J!article', 'j-article', '', 'j-page/j-article', 'index.php?option=com_content&view=article&id=2', 'component', 1, 167, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 26, 27, 0, 'en-GB', 0),
(170, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["2"],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 133, 134, 1, '*', 0),
(171, 'mainmenu-ru', 'K2 Category', '2-category', '', '2-category', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["1"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 135, 142, 0, 'ru-RU', 0),
(172, 'mainmenu-ru', 'K2 User', 'k2-user', '', '2-category/k2-user', 'index.php?option=com_k2&view=itemlist&layout=user&id=194&task=user', 'component', 1, 171, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","userOrdering":"","userFeedLink":"0","userFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 136, 137, 0, 'ru-RU', 0),
(173, 'mainmenu-ru', 'K2 Latest', 'k2-latest', '', '2-category/k2-latest', 'index.php?option=com_k2&view=latest&layout=latest', 'component', 1, 171, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","source":"0","latestItemsCols":"1","latestItemsLimit":"3","latestItemsDisplayEffect":"all","userIDs":["194"],"userName":"0","userImage":"0","userDescription":"0","userURL":"0","userEmail":"0","userFeed":"0","categoryTitle":"0","categoryDescription":"0","categoryImage":"0","categoryFeed":"0","latestItemTitle":"1","latestItemTitleLinked":"1","latestItemDateCreated":"1","latestItemImage":"1","latestItemImageSize":"Large","latestItemVideo":"1","latestItemVideoWidth":"","latestItemVideoHeight":"","latestItemAudioWidth":"","latestItemAudioHeight":"","latestItemVideoAutoPlay":"0","latestItemIntroText":"1","latestItemCategory":"1","latestItemTags":"1","latestItemReadMore":"1","latestItemCommentsAnchor":"0","feedLink":"1","latestItemK2Plugins":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 138, 139, 0, 'ru-RU', 0),
(174, 'mainmenu-ru', 'K2 Tag', 'k2-tag', '', '2-category/k2-tag', 'index.php?option=com_k2&view=itemlist&layout=tag&tag=Fashion&task=tag', 'component', 1, 171, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","tagOrdering":"","tagFeedLink":"0","tagFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 140, 141, 0, 'ru-RU', 0),
(175, 'mainmenu-ru', 'J! Page', 'j-page', '', 'j-page', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 143, 148, 0, 'ru-RU', 0),
(176, 'mainmenu-ru', 'J! feature', 'j-feature', '', 'j-page/j-feature', 'index.php?option=com_content&view=featured', 'component', 1, 175, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 144, 145, 0, 'ru-RU', 0),
(177, 'mainmenu-en', 'Shopping', 'shopping', '', 'shopping', 'index.php?option=com_jshopping&controller=category', 'component', 1, 1, 1, 10022, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, 'en-GB', 0),
(178, 'mainmenu-ru', 'J! article', 'j-article', '', 'j-page/j-article', 'index.php?option=com_content&view=article&id=2', 'component', 1, 175, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 146, 147, 0, 'ru-RU', 0),
(179, 'mainmenu-ru', 'Shopping', 'shopping', '', 'shopping', 'index.php?option=com_jshopping&controller=category', 'component', 1, 1, 1, 10022, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 131, 132, 0, 'ru-RU', 0),
(180, 'mainmenu-ru', 'Contact', 'contact', '', 'contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 149, 150, 0, 'ru-RU', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu_types`
--

CREATE TABLE IF NOT EXISTS `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__menu_types`
--

INSERT INTO `#__menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu-en', 'Main Menu - En', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged-in Users'),
(3, 'category-menu', 'Category menu', ''),
(5, 'mainmenu-ru', 'Mainmenu RU', ''),
(6, 'mainmenu', 'Mainmenu', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__messages`
--

CREATE TABLE IF NOT EXISTS `#__messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__messages_cfg`
--

CREATE TABLE IF NOT EXISTS `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__modules`
--

CREATE TABLE IF NOT EXISTS `#__modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=121 ;

--
-- Dumping data for table `#__modules`
--

INSERT INTO `#__modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Categoreis', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"category-menu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'pathway', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"0","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Popular Tags', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_tags_popular', 1, 1, '{"maximum":"10","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":0,"no_results_text":"0","minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Site Information', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 3, 1, '{"serverinfo":"1","siteinfo":"1","counter":"0","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(89, 56, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(90, 57, 'Latest Articles', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":[""],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 58, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 59, 'Image Module', '', '<p><img src="images/headers/blue-flower.jpg" alt="Blue Flower" /></p>', 0, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 60, 'Search', '', '', 3, 'head-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 65, 'K2 Comments', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_comments', 1, 1, '', 0, '*'),
(95, 66, 'K2 Content', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_content', 1, 1, '', 0, '*'),
(96, 67, 'K2 Tags', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_tools', 1, 1, '{"moduleclass_sfx":" style_2","module_usage":"7","archiveItemsCounter":"0","archiveCategory":"0","authors_module_category":"0","authorItemsCounter":"0","authorAvatar":"0","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"0","calendarCategory":"0","home":"","seperator":"","root_id":"0","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"0","root_id2":"0","catfilter":"0","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":["0"],"cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 68, 'K2 Users', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_users', 1, 1, '', 0, '*'),
(98, 69, 'K2 User', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_user', 1, 1, '', 0, '*'),
(99, 70, 'K2 Quick Icons (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 1, 1, '', 1, '*'),
(100, 71, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 1, 1, '', 1, '*'),
(103, 74, 'BT Facebook LikeBox', '', '', 3, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_facebooklikebox', 1, 1, '{"type":"likebox","profile":"https:\\/\\/www.facebook.com\\/zuck","href":"http:\\/\\/www.facebook.com\\/bowthemes","width":"","height":"400","height_follow":"","layout":"standard","font":"","show_faces":"false","connections":"20","colorscheme":"light","show_stream":"false","show_header":"false","force_wall":"false","show_border":"false","render":"iframe","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 76, 'Jshopping Categories', '', '', 3, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jshopping_categories', 1, 0, '{"show_image":"1","sort":"id","ordering":"asc","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 78, 'K2 archive', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_tools', 1, 1, '{"moduleclass_sfx":" style_3","module_usage":"0","archiveItemsCounter":"1","archiveCategory":"0","authors_module_category":"0","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"0","home":"","seperator":"","root_id":"0","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"0","catfilter":"0","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":["0"],"cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 79, 'BT Google Maps', '', '', 1, 'map_contact_page', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_googlemaps', 1, 0, '{"mapType":"roadmap","mapCenterType":"address","mapCenterAddress":"New York, United States","mapCenterCoordinate":"40.7143528, -74.0059731","width":"auto","height":"500","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","markes":"W10=","weather":"0","temperatureUnit":"f","cloud":"1","enable-style":"0","style-title":"BT Map","createNewOrApplyDefaultStyle":"createNew","styles":"W10=","enable-custom-infobox":"0","boxcss":"background :#ffffff,\\r\\nopacity : 0.85,\\r\\nwidth : 280px,\\r\\nheight :100px,\\r\\nborder : 1px solid grey,\\r\\nborderRadius:3px,\\r\\npadding : 10px,\\r\\nboxShadow:30px 10px 10px 1px grey","pixelOffset":"-150,-155","closeBoxMargin":"-9px","closeBoxURL":"","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 80, 'BT Social Login', '', '', 1, 'head-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_sociallogin', 1, 0, '{"align_option":"right","display_type":"0","mouse_event":"click","login":"","logout":"","name":"1","logout_button":"1","enabled_registration_tab":"1","tag_login_modal":"","tag_register_modal":"","module_id":["120"],"integrated_component":"","link_option":"","bg_button_color":"#6d850a","text_button_color":"#ffffff","loginbox_size":"auto, auto","registrationbox_size":"auto, auto","enable_fb":"1","appfb_id":"","appfb_secret":"","edit_info_fb":"0","edit_email_facebook":"0","fb-profiles":"eyJuYW1lIjoibmFtZSIsInVzZXJuYW1lIjoidXNlcm5hbWUiLCJlbWFpbCI6ImVtYWlsIn0=","enable_gg":"1","appgg_id":"","appgg_secret":"","edit_info_gg":"0","edit_email_google":"0","gg-profiles":"eyJuYW1lIjoibmFtZSIsInVzZXJuYW1lIjoiZW1haWwiLCJlbWFpbCI6ImVtYWlsIn0=","enable_twitter":"1","apptwitter_id":"","apptwitter_secret":"","edit_info_twitter":"1","edit_email_twitter":"1","tt-profiles":"eyJuYW1lIjoibmFtZSIsInVzZXJuYW1lIjoidXNlcm5hbWUiLCJlbWFpbCI6bnVsbH0=","enable_profile":"1","captcha":"","loadJquery":"auto","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 81, 'Social', '', '<p><a class="fb-icon" title="fb" href="#">fb</a><a class="tt-icon" title="tt" href="#">tt</a><a class="social-icon" title="social" href="#">sc</a><a class="yt-icon" title="yt" href="#">yt</a></p>', 3, 'head-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_social","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 82, 'Logo partner here!', '', '<h3>Logo partner here!</h3>\r\n<p><a href="#"><img src="images/logo-company.png" alt="" border="0" /></a> <a href="#"><img src="images/logo-company1.png" alt="" border="0" /></a> <a href="#"><img src="images/logo-company2.png" alt="" border="0" /></a> <a href="#"><img src="images/logo-company3.png" alt="" border="0" /></a></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>', 2, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_company","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 83, 'Customer Service', '', '<div><img style="border: 0; float: left;" src="images/sampledata/e31ace2a15a7c70645ad83df9ecd43b0.jpg" alt="" border="0" />\r\n<h3 class="bt-title" title="customer service">customer service supported by professionals</h3>\r\n<div class="bt-introtext">Our team stands ready to assist you at all times. With multiple ways to get in touch, including forums, ticket system, live chat and telephone, you will always find what you need.Having problems? We’re here to help</div>\r\n<p class="readmore"><a title="readmore" href="#">Read more</a></p>\r\n</div>', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" customer_service","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 84, 'Footer menu', '', '', 1, 'footer-menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"category-menu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 85, 'Get started and download template!', '', '<h3>Get started and download template!</h3>\r\n<p>Nulla vulputate massa at justo tincidunt consequat. Suspendisse potenti. Etiam quis enim augue, ut ultricies nisi. Aliquam sagittis quam at elit cursus faucibus. Maecenas laoreet eleifend urna ac adipiscing. Aenean eu tellus urna.</p>\r\n<p><a class="button1">Get started</a><a class="button2">Download Theme!</a></p>', 2, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_about","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 86, 'Copyright', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 87, 'Social (2)', '', '<p><a class="fb-icon" title="fb" href="#">fb</a><a class="tt-icon" title="tt" href="#">tt</a><a class="social-icon" title="social" href="#">sc</a><a class="yt-icon" title="yt" href="#">yt</a></p>', 1, 'footer-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_social","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 88, 'Lastest products', '', '', 1, 'content-mass-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_productslider', 1, 1, '{"moduleclass_sfx":"","content_title":"","content_title_link":"","layout":"default","rtl":"0","items_per_cols":"2","items_per_rows":"4","items_per_page":"5","module_width":"auto","item_height":"auto","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"200","next_back_position":"0","navigation_type":"bullet","navigation_position":"0","flipbook_pagenumber":"0","flipbook_nextback":"1","source":"js_categories","vm_categories":[""],"vm_ids":"","js_categories":["2"],"js_ids":"","limit_items":"8","limit_items_for_each":"0","group":"","ordering":"id-asc","show_title":"1","limit_title_by":"char","title_max_chars":"25","show_intro":"0","limit_description_by":"char","description_max_chars":"100","show_category_name":"0","show_category_name_as_link":"0","show_image":"1","check_image_exist":"1","image_align":"center","image_thumb":"1","thumbnail_width":"200","thumbnail_height":"308","default_thumb":"1","show_price":"1","show_manufacturer":"0","show_rating":"1","show_review_count":"1","show_label":"1","show_view_details":"1","show_add_to_cart":"1","hovereffect":"1","slide_effect":"scroll","slide_direction":"horizontal","slide_item_per_time":"1","pause_hover":"1","duration":"500","auto_start":"1","interval":"3","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(116, 89, 'Slideshow', '', '<p><img src="images/slidershow.png" alt="" border="0" /></p>', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(117, 90, 'Language', '', '', 1, 'head-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(118, 91, 'BT Background SlideShow', '', '', 1, 'background_slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_backgroundslideshow', 1, 1, '{"source":"upload","jfolder_path":"images","flickr_userid":"","flickr_api":"","picasa_userid":"","yt_link":"","remote_image":"0","get_limit":"20","gallery":"W3siZmlsZSI6IjVmZGIxYTlmOWQyOTYwMzhiNGNhYWM4ZDc4ZGExNjI4LmpwZyIsInRpdGxlIjoiPHNwYW4+V2ludGVyPC9zcGFuPiBjb2xsZWN0aW9uIiwibGluayI6IiIsInRhcmdldCI6IiIsInlvdWlkIjoiIiwicXVhbGl0eSI6Imdsb2JhbCIsImF1dG9wbGF5IjoiLTEiLCJ2b2x1bWUiOiIgR2xvYmFsIiwiZGVzYyI6IlBlbmRpc3NlIGJsYW5kaXQgbGlndWxhIHR1cnBpcywgYWMgY29udmFsbGlzIHJpc3VzIGZlcm1lbnR1bSBub25cbjxkaXYgY2xhc3M9XCJzbGlkZV9idXR0b25cIj5cbjxhIGNsYXNzPXNsaWRlc2hvd19idXR0b24gaHJlZj1cIiNcIj5TaG9wIG5vdzwvYT5cbjwvZGl2PiJ9LHsiZmlsZSI6IjJiNjAwMTQwYmIzMjM1OTgyMTk3OGVhMzkyMzdmY2Q1LmpwZyIsInRpdGxlIjoiPHNwYW4+V2ludGVyPC9zcGFuPiBjb2xsZWN0aW9uIiwibGluayI6Imh0dHA6Ly9ib3d0aGVtZXMuY29tIiwidGFyZ2V0IjoiIiwieW91aWQiOiIiLCJxdWFsaXR5IjoiZ2xvYmFsIiwiYXV0b3BsYXkiOiItMSIsInZvbHVtZSI6IiBHbG9iYWwiLCJkZXNjIjoiUGVuZGlzc2UgYmxhbmRpdCBsaWd1bGEgdHVycGlzLCBhYyBjb252YWxsaXMgcmlzdXMgZmVybWVudHVtIG5vblxuPGRpdiBjbGFzcz1cInNsaWRlX2J1dHRvblwiPlxuPGEgY2xhc3M9c2xpZGVzaG93X2J1dHRvbiBocmVmPVwiI1wiPlNob3Agbm93PC9hPlxuPC9kaXY+In1d","slideshowSize":"wrapper","slideshowWidth":"","slideshowHeight":"","resizeImage":"auto","hAlign":"c","vAlign":"m","slideshowSpeed":"8000","effecttype":"fade","slidedirection":"left","effectTime":"2000","caption":"5","display_order":"ordering","bgo-pattern":"","bgo-opacity":"0.5","nav-type":"nav-btn","nex-back-button":"1","playpause-button":"0","thumb_number":"3","thumb_width":"80","thumb_height":"50","nav-align":"justify","nav-position":"absolute","progress-bar":"0","autoplay":"0","stopAuto":"1","shvideo":"0","controltype":"0","keepcontrolvideo":"2","videoquanlity":"highres","videoautoplay":"0","videovolume":"100","wrapper_element":".background_slidieshow_inner","title_font":"","title_color":"#ffffff","title_size":"18","desc_font":"","desc_color":"#ffffff","desc_size":"12","nav_bg":"#222222","progress_bg":"#A2080C","stylesheet":"","crop_image":"0","jpeg_compression":"100","crop_width":"1600","crop_height":"1000","load_jquery":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(119, 98, 'BT Smart Search', '', '', 5, 'head-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_smartsearch', 1, 1, '{"searchfilter":"0","show_autosuggest":"1","show_advanced":"0","moduleclass_sfx":"","layout":"_:default","show_button":"1","button_pos":"right","opensearch":"1","opensearch_title":"Search...","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(120, 99, 'User menu', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__modules_menu`
--

CREATE TABLE IF NOT EXISTS `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__modules_menu`
--

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES
(1, 123),
(1, 153),
(1, 154),
(1, 155),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(96, 160),
(96, 161),
(96, 162),
(96, 163),
(99, 0),
(100, 0),
(103, 102),
(103, 103),
(103, 104),
(103, 105),
(103, 106),
(103, 107),
(103, 123),
(103, 153),
(103, 154),
(103, 155),
(103, 156),
(103, 157),
(103, 158),
(103, 159),
(103, 160),
(103, 161),
(103, 162),
(103, 163),
(103, 165),
(103, 167),
(103, 168),
(103, 169),
(103, 171),
(103, 172),
(103, 173),
(103, 174),
(103, 175),
(103, 176),
(103, 178),
(104, 101),
(104, 166),
(104, 170),
(105, 160),
(105, 161),
(105, 162),
(105, 163),
(106, 0),
(107, 0),
(108, 0),
(109, 101),
(109, 166),
(109, 170),
(110, 101),
(110, 166),
(110, 170),
(111, 0),
(112, 101),
(112, 166),
(112, 170),
(113, 0),
(114, 0),
(115, 101),
(115, 166),
(115, 170),
(116, 101),
(117, 0),
(118, 101),
(118, 166),
(119, 0),
(120, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__newsfeeds`
--

CREATE TABLE IF NOT EXISTS `#__newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__overrider`
--

CREATE TABLE IF NOT EXISTS `#__overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `#__postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__postinstall_messages`
--

INSERT INTO `#__postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__redirect_links`
--

CREATE TABLE IF NOT EXISTS `#__redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__schemas`
--

CREATE TABLE IF NOT EXISTS `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__schemas`
--
-- --------------------------------------------------------

--
-- Table structure for table `#__session`
--

CREATE TABLE IF NOT EXISTS `#__session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__session`
--

INSERT INTO `#__session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('5t2609nio8rhu5ek5vmbetpui1', 1, 0, '1396635664', '__default|a:8:{s:15:"session.counter";i:76;s:19:"session.timer.start";i:1396633340;s:18:"session.timer.last";i:1396635659;s:17:"session.timer.now";i:1396635663;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:14:"com_k2comments";O:8:"stdClass":1:{s:10:"limitstart";i:0;}s:9:"com_menus";O:8:"stdClass":2:{s:5:"items";O:8:"stdClass":3:{s:8:"menutype";s:8:"mainmenu";s:10:"limitstart";i:0;s:4:"list";a:4:{s:9:"direction";s:3:"asc";s:5:"limit";s:2:"20";s:8:"ordering";s:5:"a.lft";s:5:"start";d:0;}}s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:2:"id";a:0:{}s:4:"data";N;s:4:"type";N;s:4:"link";N;}}}s:11:"com_modules";O:8:"stdClass":3:{s:7:"modules";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":8:{s:18:"client_id_previous";i:0;s:6:"search";s:0:"";s:6:"access";i:0;s:5:"state";s:0:"";s:8:"position";s:0:"";s:6:"module";s:0:"";s:9:"client_id";i:0;s:8:"language";s:0:"";}s:8:"ordercol";s:8:"position";s:9:"orderdirn";s:3:"asc";s:10:"limitstart";s:1:"0";}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:0:{}}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:0;}}}}s:4:"user";O:5:"JUser":27:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"194";s:4:"name";s:12:"Daniel Trinh";s:8:"username";s:9:"bowthemes";s:5:"email";s:11:"abc@abc.com";s:8:"password";s:34:"$P$DbXsnsoDlrVVjji4Dq2qJBiFkyOeV70";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-03-24 08:40:49";s:13:"lastvisitDate";s:19:"2014-04-04 17:41:48";s:10:"activation";s:1:"0";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";s:3:"gid";i:1000;}s:13:"session.token";s:32:"e2933a89f1d9f3a025600e9f72c2e37c";}', 194, 'bowthemes'),
('6ko1rh6d3pnvsmd444um7r75h0', 0, 1, '1396635736', '__default|a:11:{s:15:"session.counter";i:10;s:19:"session.timer.start";i:1396632333;s:18:"session.timer.last";i:1396635736;s:17:"session.timer.now";i:1396635736;s:22:"session.client.browser";s:65:"Mozilla/5.0 (Windows NT 6.1; rv:28.0) Gecko/20100101 Firefox/28.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"48eafb72893d3fca015e2dfadf5b281b";s:5:"btl-s";O:8:"stdClass":3:{s:8:"facebook";s:2:"fb";s:6:"google";s:2:"gg";s:7:"twitter";s:2:"tt";}s:19:"js_id_currency_orig";s:1:"2";s:14:"js_id_currency";s:1:"2";}', 0, ''),
('8he6b3rp1kki6803moqc0bgr90', 0, 1, '1396636233', '__default|a:11:{s:15:"session.counter";i:9;s:19:"session.timer.start";i:1396635326;s:18:"session.timer.last";i:1396636232;s:17:"session.timer.now";i:1396636232;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:3:"gid";i:1;}s:5:"btl-s";O:8:"stdClass":3:{s:8:"facebook";s:2:"fb";s:6:"google";s:2:"gg";s:7:"twitter";s:2:"tt";}s:13:"session.token";s:32:"1d7e39c6ac0ffacc42348a405a1b584f";s:19:"js_id_currency_orig";s:1:"2";s:14:"js_id_currency";s:1:"2";}', 0, ''),
('8r8v4g6lc162knblbejv2geqm1', 0, 1, '1396636222', '__default|a:19:{s:15:"session.counter";i:46;s:19:"session.timer.start";i:1396629707;s:18:"session.timer.last";i:1396636221;s:17:"session.timer.now";i:1396636221;s:22:"session.client.browser";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":28:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:3:"gid";i:1;s:6:"avatar";s:87:"http://10.0.0.72/bt_fashion30/components/com_easyblog/assets/images/default_blogger.png";s:11:"displayName";s:5:"Guest";s:3:"url";s:7:"http://";}s:19:"js_id_currency_orig";s:1:"2";s:14:"js_id_currency";s:1:"2";s:5:"btl-s";O:8:"stdClass":3:{s:8:"facebook";s:2:"fb";s:6:"google";s:2:"gg";s:7:"twitter";s:2:"tt";}s:13:"session.token";s:32:"0811ac81dfd4d532032092f4587d84c8";s:19:"js_history_sel_lang";s:5:"ru-RU";s:15:"js_prev_user_id";i:0;s:22:"jshop_checked_language";a:2:{i:0;s:5:"en-GB";i:1;s:5:"ru-RU";}s:26:"jshop_end_page_buy_product";s:107:"/bt_fashion30/index.php?option=com_jshopping&controller=category&task=view&category_id=4&Itemid=179&lang=ru";s:27:"jshop_end_page_list_product";s:107:"/bt_fashion30/index.php?option=com_jshopping&controller=category&task=view&category_id=4&Itemid=179&lang=ru";s:16:"com_mailto.links";a:3:{s:40:"d77b27063930b32e88fc4111004e75a2ec1a16fd";O:8:"stdClass":2:{s:4:"link";s:120:"http://10.0.0.72/bt_fashion30/index.php?option=com_k2&view=item&id=9:proin-fringilla-elementum-tortor&Itemid=160&lang=en";s:6:"expiry";i:1396633369;}s:40:"8148427f0f175b85ea5a8b468ff53e12ac5a5521";O:8:"stdClass":2:{s:4:"link";s:115:"http://10.0.0.72/bt_fashion30/index.php?option=com_k2&view=item&id=8:donec-adipiscing-mi-vel-leo&Itemid=160&lang=en";s:6:"expiry";i:1396633347;}s:40:"00a9452a0b5cf98f6d42c10838f8ebd45a96b7ac";O:8:"stdClass":2:{s:4:"link";s:104:"http://10.0.0.72/bt_fashion30/index.php?option=com_k2&view=item&id=1:vivamus-ultrices&Itemid=160&lang=en";s:6:"expiry";i:1396633359;}}s:32:"b4392351b32a0ace703f89fe08d6baf8";i:1;s:32:"387aac6d6394684eb256016b81ba076d";i:1;}', 0, ''),
('jenh8n6i61ino1pohf9174gj65', 1, 0, '1396636353', '__default|a:12:{s:15:"session.counter";i:55;s:19:"session.timer.start";i:1396634302;s:18:"session.timer.last";i:1396636065;s:17:"session.timer.now";i:1396636352;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":7:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:8:"jshoping";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"admin";O:8:"stdClass":9:{s:18:"productcategory_id";i:0;s:22:"productmanufacturer_id";i:0;s:15:"productlabel_id";i:0;s:14:"productpublish";i:0;s:18:"producttext_search";s:0:"";s:12:"productlimit";i:20;s:17:"productlimitstart";i:0;s:19:"productfilter_order";s:10:"product_id";s:23:"productfilter_order_Dir";s:3:"asc";}}}s:11:"com_k2items";O:8:"stdClass":1:{s:10:"limitstart";i:0;}s:11:"com_k2users";O:8:"stdClass":1:{s:10:"limitstart";i:0;}s:13:"com_installer";O:8:"stdClass":3:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:6:"manage";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":5:{s:6:"search";s:4:"easy";s:9:"client_id";s:0:"";s:6:"status";s:0:"";s:4:"type";s:0:"";s:5:"group";s:0:"";}s:8:"ordercol";s:4:"name";s:9:"orderdirn";s:3:"asc";s:10:"limitstart";i:0;}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:20;}}s:9:"com_menus";O:8:"stdClass":1:{s:5:"items";O:8:"stdClass":4:{s:8:"menutype";s:11:"mainmenu-ru";s:10:"limitstart";i:0;s:4:"list";a:2:{s:12:"fullordering";s:9:"a.lft ASC";s:5:"limit";s:2:"20";}s:6:"filter";a:5:{s:6:"search";s:0:"";s:9:"published";s:2:"-2";s:5:"level";s:0:"";s:6:"access";s:0:"";s:8:"language";s:0:"";}}}}}s:4:"user";O:5:"JUser":27:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"194";s:4:"name";s:12:"Daniel Trinh";s:8:"username";s:9:"bowthemes";s:5:"email";s:11:"abc@abc.com";s:8:"password";s:34:"$P$DbXsnsoDlrVVjji4Dq2qJBiFkyOeV70";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-03-24 08:40:49";s:13:"lastvisitDate";s:19:"2014-04-04 17:57:24";s:10:"activation";s:1:"0";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";s:3:"gid";i:1000;}s:13:"session.token";s:32:"47121b3ffb0fc7531d7551c4fc316f2f";s:19:"js_id_currency_orig";s:1:"2";s:14:"js_id_currency";s:1:"2";s:22:"jshop_checked_language";a:2:{i:0;s:5:"en-GB";i:1;s:5:"ru-RU";}s:19:"js_get_mysqlversion";s:6:"5.5.31";}', 194, 'bowthemes'),
('jf92dl8drqsbusrqjirbulki75', 0, 1, '1396636315', '__default|a:17:{s:15:"session.counter";i:30;s:19:"session.timer.start";i:1396634595;s:18:"session.timer.last";i:1396636314;s:17:"session.timer.now";i:1396636314;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:3:"gid";i:1;}s:19:"js_id_currency_orig";s:1:"2";s:14:"js_id_currency";s:1:"2";s:19:"js_history_sel_lang";s:5:"ru-RU";s:15:"js_prev_user_id";i:0;s:22:"jshop_checked_language";a:2:{i:0;s:5:"en-GB";i:1;s:5:"ru-RU";}s:26:"jshop_end_page_buy_product";s:107:"/bt_fashion30/index.php?option=com_jshopping&controller=category&task=view&category_id=4&Itemid=179&lang=ru";s:27:"jshop_end_page_list_product";s:107:"/bt_fashion30/index.php?option=com_jshopping&controller=category&task=view&category_id=4&Itemid=179&lang=ru";s:5:"btl-s";O:8:"stdClass":3:{s:8:"facebook";s:2:"fb";s:6:"google";s:2:"gg";s:7:"twitter";s:2:"tt";}s:13:"session.token";s:32:"825633ca62724ea9e31fb24de51f00a7";s:16:"com_mailto.links";a:5:{s:40:"425c7b7bbc3fcc63c7632e03f0333efc945d5c86";O:8:"stdClass":2:{s:4:"link";s:126:"http://10.0.0.72/bt_fashion30/index.php?option=com_content&view=article&id=6:quisque-vel-magna-urna&catid=8&Itemid=167&lang=en";s:6:"expiry";i:1396635337;}s:40:"69f04a6644cd5e518c533a7f40427e12db759b9c";O:8:"stdClass":2:{s:4:"link";s:127:"http://10.0.0.72/bt_fashion30/index.php?option=com_content&view=article&id=5:nunc-ullamcorper-rutrum&catid=8&Itemid=167&lang=en";s:6:"expiry";i:1396635338;}s:40:"3b4a521147e9844b04e69c9499d841306be1fc64";O:8:"stdClass":2:{s:4:"link";s:150:"http://10.0.0.72/bt_fashion30/index.php?option=com_content&view=article&id=4:many-desktop-publishingmany-desktop-publishing&catid=8&Itemid=167&lang=en";s:6:"expiry";i:1396635331;}s:40:"208470dbb47a1e84895601ab041b6ad89bf6e9bd";O:8:"stdClass":2:{s:4:"link";s:123:"http://10.0.0.72/bt_fashion30/index.php?option=com_content&view=article&id=3:contrary-to-popular&catid=8&Itemid=167&lang=en";s:6:"expiry";i:1396635338;}s:40:"ceb7a15178866d398e61ae47b11d5248c0450e92";O:8:"stdClass":2:{s:4:"link";s:124:"http://10.0.0.72/bt_fashion30/index.php?option=com_content&view=article&id=2:it-uses-a-dictionary&catid=8&Itemid=169&lang=en";s:6:"expiry";i:1396635344;}}}', 0, ''),
('ladrgq05i7mqqkehg68s7r33h0', 0, 1, '1396636083', '__default|a:11:{s:15:"session.counter";i:4;s:19:"session.timer.start";i:1396635224;s:18:"session.timer.last";i:1396636082;s:17:"session.timer.now";i:1396636082;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:3:"gid";i:1;}s:5:"btl-s";O:8:"stdClass":3:{s:8:"facebook";s:2:"fb";s:6:"google";s:2:"gg";s:7:"twitter";s:2:"tt";}s:13:"session.token";s:32:"95293641008a437df1728252b8857cee";s:19:"js_id_currency_orig";s:1:"2";s:14:"js_id_currency";s:1:"2";}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__tags`
--

CREATE TABLE IF NOT EXISTS `#__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__tags`
--

INSERT INTO `#__tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 194, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 194, '2013-11-16 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `#__template_styles`
--

CREATE TABLE IF NOT EXISTS `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `#__template_styles`
--

INSERT INTO `#__template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'bt_fashion', 0, '1', 'BT_Fashion - Default', '{"t3_template":"1","devmode":"0","themermode":"1","responsive":"1","build_rtl":"1","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"","theme":"","logotype":"image","sitename":"","slogan":"","logoimage":"","mainlayout":"default","navigation_trigger":"hover","navigation_collapse_offcanvas":"1","navigation_collapse_showsub":"1","navigation_type":"megamenu","navigation_animation":"","navigation_animation_duration":"400","mm_type":"mainmenu","mm_config":"{\\"mainmenu-ru\\":[],\\"mainmenu-en\\":{\\"item-123\\":{\\"sub\\":{\\"rows\\":[]}},\\"item-160\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":161,\\"width\\":12}]]}},\\"item-167\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":168,\\"width\\":12}]]}}}}","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0","mm_config_needupdate":""}'),
(10, 'bt_fashion', 0, 'ru-RU', 'BT_Fashion - Ru', '{"t3_template":"1","devmode":"0","themermode":"1","responsive":"1","build_rtl":"1","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"","theme":"","logotype":"image","sitename":"","slogan":"","logoimage":"","mainlayout":"default","navigation_trigger":"hover","navigation_collapse_offcanvas":"1","navigation_collapse_showsub":"1","navigation_type":"megamenu","navigation_animation":"","navigation_animation_duration":"400","mm_type":"mainmenu","mm_config":"{\\"mainmenu-ru\\":[],\\"mainmenu-en\\":{\\"item-123\\":{\\"sub\\":{\\"rows\\":[]}},\\"item-160\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":161,\\"width\\":12}]]}},\\"item-167\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":168,\\"width\\":12}]]}}}}","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0","mm_config_needupdate":""}');

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_base`
--

CREATE TABLE IF NOT EXISTS `#__ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__ucm_base`
--

INSERT INTO `#__ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_content`
--

CREATE TABLE IF NOT EXISTS `#__ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__ucm_content`
--

INSERT INTO `#__ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Getting Started', 'getting-started', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "Submit Article" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Template, site settings, and modules</h3>\r\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the "Template Settings" in the user menu. </p>\r\n<p>The boxes around the main content of the site are called modules.  You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p>\r\n<p>You can change some site settings such as the site name and description by clicking on the "Site Settings" link.</p>\r\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "User Menu" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org" target="_blank">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org" target="_blank"> Joomla! forums</a>.</p>', -2, '', 0, 1, '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 0, '{"robots":"","author":"","rights":"","xreference":""}', 194, '', '2013-11-16 00:00:00', 0, '0000-00-00 00:00:00', '*', '2013-11-16 00:00:00', '0000-00-00 00:00:00', 1, 62, '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', 0, 1, 0, '', '', 2, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_history`
--

CREATE TABLE IF NOT EXISTS `#__ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `#__ucm_history`
--

INSERT INTO `#__ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 10, 'Initial content', '2013-11-16 00:00:00', 194, 558, 'be28228b479aa67bad3dc1db2975232a033d5f0f', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":"joomla","title":"Joomla","alias":"joomla","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":1,"params":null,"metadesc":null,"metakey":null,"metadata":null,"created_user_id":"849","created_time":"2013-11-16 00:00:00","created_by_alias":"","modified_user_id":"0","modified_time":"0000-00-00 00:00:00","images":null,"urls":null,"hits":"0","language":"*","version":"1","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00"}', 0),
(2, 1, 1, 'Initial content', '2013-11-16 00:00:00', 194, 4539, '4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f', '{"id":1,"asset_id":54,"title":"Getting Started","alias":"getting-started","introtext":"<p>It''s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\"Submit Article\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\"Template Settings\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\"Site Settings\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\"Site Administrator\\" link on the \\"User Menu\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\\"http:\\/\\/docs.joomla.org\\" target=\\"_blank\\">Joomla! documentation site<\\/a> and on the<a href=\\"http:\\/\\/forum.joomla.org\\" target=\\"_blank\\"> Joomla! forums<\\/a>.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"849","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 1, 3, '', '2014-03-27 07:06:30', 194, 1594, '599084a51fff6f0396c8d088a6df762472b5fd08', '{"id":1,"name":"Contact","alias":"contact","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"","default_con":0,"published":"1","checked_out":null,"checked_out_time":null,"ordering":1,"params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"0\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"0","catid":"4","access":"1","mobile":"","webpage":"","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-03-27 07:06:30","created_by":"194","created_by_alias":"","modified":"","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":1,"hits":null}', 0),
(4, 1, 3, '', '2014-03-27 07:21:09', 194, 1646, 'a659481b4ac1e97116dfb1c085232e5abda48c75', '{"id":1,"name":"Contact","alias":"contact","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"abc@abc.com","default_con":0,"published":"1","checked_out":"194","checked_out_time":"2014-03-27 07:20:49","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"0\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"194","catid":"4","access":"1","mobile":"","webpage":"","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-03-27 07:06:30","created_by":"194","created_by_alias":"","modified":"2014-03-27 07:21:09","modified_by":"194","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":2,"hits":"4"}', 0),
(5, 8, 6, '', '2014-04-03 17:02:06', 194, 515, '2ee59b600b26687ccdd349d63d47a9ba05e3b0d9', '{"id":8,"asset_id":92,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Fashion","alias":"fashion","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"194","created_time":"2014-04-03 17:02:06","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(6, 2, 1, '', '2014-04-03 17:15:54', 194, 2611, '43154c164c8975f16095c91893075b9306536f03', '{"id":2,"asset_id":93,"title":"It uses a dictionary","alias":"it-uses-a-dictionary","introtext":"<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.\\u00a0<span style=\\"line-height: 1.3em;\\">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.<\\/span><span style=\\"line-height: 1.3em;\\">\\u00a0<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/p>","state":1,"catid":"8","created":"2014-04-03 17:15:54","created_by":"194","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-04-03 17:15:54","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/sampledata\\\\\\/2e1ax_bowthemes_frontpage_blog_1.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 2, 1, '', '2014-04-03 17:23:38', 194, 2631, 'f962e9a34d0410f636f5a320305784fb5d2bfd72', '{"id":2,"asset_id":"93","title":"It uses a dictionary","alias":"it-uses-a-dictionary","introtext":"<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.\\u00a0<span style=\\"line-height: 1.3em;\\">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.<\\/span><span style=\\"line-height: 1.3em;\\">\\u00a0<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/p>","state":1,"catid":"8","created":"2014-04-03 17:15:54","created_by":"194","created_by_alias":"","modified":"2014-04-03 17:23:38","modified_by":"194","checked_out":"194","checked_out_time":"2014-04-03 17:22:26","publish_up":"2014-04-03 17:15:54","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/sampledata\\\\\\/2e1ax_bowthemes_frontpage_blog_1.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(8, 3, 1, '', '2014-04-03 17:29:38', 194, 2574, '9ff313dcc5cfc5047db89a6916feabb35d64a3bc', '{"id":3,"asset_id":94,"title":"Contrary to popular","alias":"contrary-to-popular","introtext":"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.\\u00a0<span style=\\"line-height: 1.3em;\\">Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\"de Finibus Bonorum et Malorum\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\"Lorem ipsum dolor sit amet..\\", comes from a line in section 1.10.32.<\\/p>","state":1,"catid":"8","created":"2014-04-03 17:29:38","created_by":"194","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-04-03 17:29:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/sampledata\\\\\\/2e1ax_bowthemes_featured_blog_3.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(9, 4, 1, '', '2014-04-03 17:31:32', 194, 2808, 'e78d57bbde3d80940b9854862ed88bb21e360164', '{"id":4,"asset_id":95,"title":"Many desktop publishingMany desktop publishing","alias":"many-desktop-publishingmany-desktop-publishing","introtext":"<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\\u00a0<span style=\\"line-height: 1.3em;\\">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.<\\/span><span style=\\"line-height: 1.3em;\\">\\u00a0<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>","state":1,"catid":"8","created":"2014-04-03 17:31:32","created_by":"194","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-04-03 17:31:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/sampledata\\\\\\/2e1ax_bowthemes_frontpage_blog_2.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 5, 1, '', '2014-04-03 17:32:38', 194, 3206, '81bbab92e8e4d40a0fb3d10529dae5b3e31d4998', '{"id":5,"asset_id":96,"title":"Nunc ullamcorper rutrum ","alias":"nunc-ullamcorper-rutrum","introtext":"<p>Donec at lobortis erat. Aenean in vestibulum nibh. Donec bibendum enim et justo aliquet adipiscing. Duis at vulputate justo. Vivamus bibendum iaculis dolor, quis blandit dui. Morbi et nibh metus.\\u00a0<span style=\\"line-height: 1.3em;\\">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.<\\/span><span style=\\"line-height: 1.3em;\\">\\u00a0<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>Vivamus vel nisi cursus, vestibulum odio in, tincidunt sapien. Duis eu varius risus. Nulla vel dui vel mauris molestie pharetra eget quis risus. Aliquam congue sollicitudin lectus, nec ullamcorper eros faucibus id. Maecenas varius id est et tristique. Donec egestas, nunc at laoreet convallis, enim purus venenatis magna, et sollicitudin mi augue sit amet diam.<\\/p>\\r\\n<p>Morbi a porta elit. Suspendisse pharetra ullamcorper lorem, eu convallis odio ultricies vitae. Nunc ullamcorper rutrum volutpat. Praesent ac mollis mi. Aenean odio dolor, hendrerit eu mi nec, consequat pretium lectus. Pellentesque ultrices velit ac nulla viverra, a rhoncus sapien fermentum. Aliquam id lobortis elit, eu gravida massa. Sed et metus non justo sodales convallis quis at felis. Donec ante dolor, tristique bibendum suscipit ac, condimentum ut felis. Integer ac sapien ac nisl ornare laoreet.<\\/p>","state":1,"catid":"8","created":"2014-04-03 17:32:38","created_by":"194","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-04-03 17:32:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/sampledata\\\\\\/2e1ax_bowthemes_frontpage_blog_4.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(11, 6, 1, '', '2014-04-03 17:33:28', 194, 2880, '7616bc82c9aac45fc0a96f524ab2e643e7eea19f', '{"id":6,"asset_id":97,"title":"Quisque vel magna urna","alias":"quisque-vel-magna-urna","introtext":"<p>In quis felis quis dui luctus hendrerit sed vulputate nibh. Suspendisse potenti. Vestibulum sem massa, volutpat quis molestie in, semper eu sem.\\u00a0<span style=\\"line-height: 1.3em;\\">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.<\\/span><span style=\\"line-height: 1.3em;\\">\\u00a0<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>Quisque scelerisque felis ut lacus luctus varius. Sed faucibus augue nibh, vel ultrices velit porta eu. Praesent et dictum nunc. Phasellus blandit justo lectus, eu rutrum tortor lobortis at. Quisque dictum, elit sed pulvinar tristique, augue nibh hendrerit lorem, ac dignissim tellus urna sit amet justo. Quisque vel magna urna. Vestibulum luctus risus mi. Nulla et euismod dolor. Sed et tempus diam, non laoreet arcu. Maecenas venenatis ante nibh. Proin imperdiet odio quis ligula condimentum tincidunt. Donec gravida, elit nec accumsan faucibus, nisi massa semper odio, vitae varius libero magna at quam.<\\/p>","state":1,"catid":"8","created":"2014-04-03 17:33:28","created_by":"194","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-04-03 17:33:28","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/sampledata\\\\\\/2e1ax_bowthemes_frontpage_blog_5.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__updates`
--

CREATE TABLE IF NOT EXISTS `#__updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=440 ;

--
-- Dumping data for table `#__updates`
--

INSERT INTO `#__updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(2, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(3, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(4, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(5, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(6, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(7, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(8, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(9, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(10, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.2.0.6', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(11, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(12, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(13, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(14, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(15, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(16, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.2.3.3', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(17, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(18, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(19, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(20, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(21, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(22, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.2.3.2', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(23, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(24, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(25, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(26, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(27, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(28, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(29, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(30, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(31, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(32, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(33, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(34, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(35, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(36, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(37, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(38, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(39, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(40, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(41, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(42, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.2.3.3', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(43, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(44, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(45, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(46, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(47, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(48, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.2.3.2', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(49, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(50, 5, 0, 'JA Amazon S3 for joomla 16', '', 'com_com_jaamazons3', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml', '', ''),
(51, 5, 0, 'JA Extenstion Manager Component j16', '', 'com_com_jaextmanager', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', '', ''),
(52, 5, 0, 'JA Amazon S3 for joomla 2.5 & 3.1', '', 'com_jaamazons3', 'component', '', 1, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', '', ''),
(53, 5, 0, 'JA Comment Package for Joomla 2.5 & 3.0', '', 'com_jacomment', 'component', '', 1, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/com_jacomment.xml', '', ''),
(54, 5, 0, 'JA Extenstion Manager Component for J25 & J32', '', 'com_jaextmanager', 'component', '', 1, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/com_jaextmanager.xml', '', ''),
(55, 5, 0, 'JA Google Storage Package for J2.5 & J3.0', '', 'com_jagooglestorage', 'component', '', 1, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml', '', ''),
(56, 5, 0, 'JA Job Board Package For J25', '', 'com_jajobboard', 'component', '', 1, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml', '', ''),
(57, 5, 0, 'JA K2 Filter Package for J25 & J3.2', '', 'com_jak2filter', 'component', '', 1, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', '', ''),
(58, 5, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2fiter', 'component', '', 1, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml', '', ''),
(59, 5, 0, 'JA Showcase component for Joomla 1.7', '', 'com_jashowcase', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml', '', ''),
(60, 5, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', '', ''),
(61, 5, 0, 'JA Appolio Theme for EasyBlog', '', 'easyblog_theme_appolio', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_appolio.xml', '', ''),
(62, 5, 0, 'JA Biz Theme for EasyBlog', '', 'easyblog_theme_biz', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_biz.xml', '', ''),
(63, 5, 0, 'JA Bookshop Theme for EasyBlog', '', 'easyblog_theme_bookshop', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_bookshop.xml', '', ''),
(64, 5, 0, 'JA Decor Theme for EasyBlog', '', 'easyblog_theme_decor', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_decor.xml', '', ''),
(65, 5, 0, 'Theme Fixel for Easyblog J25 & J32', '', 'easyblog_theme_fixel', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_fixel.xml', '', ''),
(66, 5, 0, 'Theme Magz for Easyblog J25 & J32', '', 'easyblog_theme_magz', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_magz.xml', '', ''),
(67, 5, 0, 'JA Muzic Theme for EasyBlog', '', 'easyblog_theme_muzic', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml', '', ''),
(68, 5, 0, 'JA Muzic Theme for EasyBlog', '', 'easyblog_theme_muzic', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml', '', ''),
(69, 5, 0, 'JA Obelisk Theme for EasyBlog', '', 'easyblog_theme_obelisk', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_obelisk.xml', '', ''),
(70, 5, 0, 'JA Obelisk Theme for EasyBlog', '', 'easyblog_theme_obelisk', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_obelisk.xml', '', ''),
(71, 5, 0, 'JA Anion template for Joomla 2.5', '', 'ja_anion', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_anion.xml', '', ''),
(72, 5, 0, 'JA Anion template for Joomla 2.5', '', 'ja_anion', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_anion.xml', '', ''),
(73, 5, 0, 'JA Appolio Template', '', 'ja_appolio', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_appolio.xml', '', ''),
(74, 5, 0, 'JA Appolio Template', '', 'ja_appolio', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_appolio.xml', '', ''),
(75, 5, 0, 'JA Argo Template for J25 & J32', '', 'ja_argo', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_argo.xml', '', ''),
(76, 5, 0, 'JA Argo Template for J25 & J32', '', 'ja_argo', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_argo.xml', '', ''),
(77, 5, 0, 'JA Beranis Template', '', 'ja_beranis', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_beranis.xml', '', ''),
(78, 5, 0, 'JA Beranis Template', '', 'ja_beranis', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_beranis.xml', '', ''),
(79, 5, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', '', ''),
(80, 5, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', '', ''),
(81, 5, 0, 'JA Blazes Template for J25 & J31', '', 'ja_blazes', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_blazes.xml', '', ''),
(82, 5, 0, 'JA Blazes Template for J25 & J31', '', 'ja_blazes', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_blazes.xml', '', ''),
(83, 5, 0, 'JA Bookshop Template', '', 'ja_bookshop', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_bookshop.xml', '', ''),
(84, 5, 0, 'JA Bookshop Template', '', 'ja_bookshop', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_bookshop.xml', '', ''),
(85, 5, 0, 'JA Brisk Template for J25 & J32', '', 'ja_brisk', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_brisk.xml', '', ''),
(86, 5, 0, 'JA Brisk Template for J25 & J32', '', 'ja_brisk', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_brisk.xml', '', ''),
(87, 5, 0, 'JA Business Template for Joomla 2.5', '', 'ja_business', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_business.xml', '', ''),
(88, 5, 0, 'JA Business Template for Joomla 2.5', '', 'ja_business', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_business.xml', '', ''),
(89, 5, 0, 'JA Cloris Template for Joomla 2.5.x', '', 'ja_cloris', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_cloris.xml', '', ''),
(90, 5, 0, 'JA Cloris Template for Joomla 2.5.x', '', 'ja_cloris', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_cloris.xml', '', ''),
(91, 5, 0, 'JA Community PLus Template for Joomla 2.5', '', 'ja_community_plus', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml', '', ''),
(92, 5, 0, 'JA Community PLus Template for Joomla 2.5', '', 'ja_community_plus', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml', '', ''),
(93, 5, 0, 'JA Decor Template', '', 'ja_decor', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_decor.xml', '', ''),
(94, 5, 0, 'JA Droid Template for Joomla 2.5', '', 'ja_droid', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_droid.xml', '', ''),
(95, 5, 0, 'JA Droid Template for Joomla 2.5', '', 'ja_droid', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_droid.xml', '', ''),
(96, 5, 0, 'JA Edenite Template for J25 & J30', '', 'ja_edenite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_edenite.xml', '', ''),
(97, 5, 0, 'JA Edenite Template for J25 & J30', '', 'ja_edenite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_edenite.xml', '', ''),
(98, 5, 0, 'JA Elastica Template for J25 & J32', '', 'ja_elastica', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_elastica.xml', '', ''),
(99, 5, 0, 'JA Elastica Template for J25 & J32', '', 'ja_elastica', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_elastica.xml', '', ''),
(100, 5, 0, 'JA Erio Template for Joomla 2.5 & 3.1', '', 'ja_erio', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_erio.xml', '', ''),
(101, 5, 0, 'JA Erio Template for Joomla 2.5 & 3.1', '', 'ja_erio', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_erio.xml', '', ''),
(102, 5, 0, 'Ja Events Template for Joomla 2.5', '', 'ja_events', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_events.xml', '', ''),
(103, 5, 0, 'Ja Events Template for Joomla 2.5', '', 'ja_events', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_events.xml', '', ''),
(104, 5, 0, 'JA Fubix Template for J25 & J32', '', 'ja_fubix', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_fubix.xml', '', ''),
(105, 5, 0, 'JA Fubix Template for J25 & J32', '', 'ja_fubix', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_fubix.xml', '', ''),
(106, 5, 0, 'JA Graphite Template for Joomla 2.5', '', 'ja_graphite', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_graphite.xml', '', ''),
(107, 5, 0, 'JA Graphite Template for Joomla 2.5', '', 'ja_graphite', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_graphite.xml', '', ''),
(108, 5, 0, 'JA Hawkstore Template', '', 'ja_hawkstore', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml', '', ''),
(109, 5, 0, 'JA Hawkstore Template', '', 'ja_hawkstore', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml', '', ''),
(110, 5, 0, 'JA Ironis Template for Joomla 2.5 & 3.1', '', 'ja_ironis', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_ironis.xml', '', ''),
(111, 5, 0, 'JA Ironis Template for Joomla 2.5 & 3.1', '', 'ja_ironis', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_ironis.xml', '', ''),
(112, 5, 0, 'JA Kranos Template for J25 & J30', '', 'ja_kranos', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_kranos.xml', '', ''),
(113, 5, 0, 'JA Kranos Template for J25 & J30', '', 'ja_kranos', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_kranos.xml', '', ''),
(114, 5, 0, 'JA Lens Template for Joomla 2.5 & 3.1', '', 'ja_lens', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_lens.xml', '', ''),
(115, 5, 0, 'JA Lens Template for Joomla 2.5 & 3.1', '', 'ja_lens', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_lens.xml', '', ''),
(116, 5, 0, 'Ja Lime Template for Joomla 2.5 & J31', '', 'ja_lime', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_lime.xml', '', ''),
(117, 5, 0, 'Ja Lime Template for Joomla 2.5 & J31', '', 'ja_lime', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_lime.xml', '', ''),
(118, 5, 0, 'JA Magz Template for J25 & J32', '', 'ja_magz', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_magz.xml', '', ''),
(119, 5, 0, 'JA Magz Template for J25 & J32', '', 'ja_magz', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_magz.xml', '', ''),
(120, 5, 0, 'JA Mendozite Template for J25 & J32', '', 'ja_mendozite', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml', '', ''),
(121, 5, 0, 'JA Mendozite Template for J25 & J32', '', 'ja_mendozite', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml', '', ''),
(122, 5, 0, 'JA Mero Template for J25 & J32', '', 'ja_mero', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mero.xml', '', ''),
(123, 5, 0, 'JA Mero Template for J25 & J32', '', 'ja_mero', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mero.xml', '', ''),
(124, 5, 0, 'JA Mers Template for J25 & J32', '', 'ja_mers', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_mers.xml', '', ''),
(125, 5, 0, 'JA Mers Template for J25 & J32', '', 'ja_mers', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_mers.xml', '', ''),
(126, 5, 0, 'JA Methys Template for Joomla 2.5', '', 'ja_methys', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_methys.xml', '', ''),
(127, 5, 0, 'JA Methys Template for Joomla 2.5', '', 'ja_methys', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_methys.xml', '', ''),
(128, 5, 0, 'Ja Minisite Template for Joomla 2.5', '', 'ja_minisite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_minisite.xml', '', ''),
(129, 5, 0, 'Ja Minisite Template for Joomla 2.5', '', 'ja_minisite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_minisite.xml', '', ''),
(130, 5, 0, 'JA Mitius Template', '', 'ja_mitius', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mitius.xml', '', ''),
(131, 5, 0, 'JA Mitius Template', '', 'ja_mitius', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mitius.xml', '', ''),
(132, 5, 0, 'JA Mixmaz Template', '', 'ja_mixmaz', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml', '', ''),
(133, 5, 0, 'JA Mixmaz Template', '', 'ja_mixmaz', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml', '', ''),
(134, 5, 0, 'JA Nex Template for J25 & J30', '', 'ja_nex', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex.xml', '', ''),
(135, 5, 0, 'JA Nex Template for J25 & J30', '', 'ja_nex', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex.xml', '', ''),
(136, 5, 0, 'JA Nex T3 Template', '', 'ja_nex_t3', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml', '', ''),
(137, 5, 0, 'JA Nex T3 Template', '', 'ja_nex_t3', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml', '', ''),
(138, 5, 0, 'JA Norite Template for J2.5 & J31', '', 'ja_norite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_norite.xml', '', ''),
(139, 5, 0, 'JA Norite Template for J2.5 & J31', '', 'ja_norite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_norite.xml', '', ''),
(140, 5, 0, 'JA Obelisk Template', '', 'ja_obelisk', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_obelisk.xml', '', ''),
(141, 5, 0, 'JA Obelisk Template', '', 'ja_obelisk', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_obelisk.xml', '', ''),
(142, 5, 0, 'JA Onepage Template', '', 'ja_onepage', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_onepage.xml', '', ''),
(143, 5, 0, 'JA Onepage Template', '', 'ja_onepage', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_onepage.xml', '', ''),
(144, 5, 0, 'JA ores template for Joomla 2.5 & 3.1', '', 'ja_ores', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_ores.xml', '', ''),
(145, 5, 0, 'JA ores template for Joomla 2.5 & 3.1', '', 'ja_ores', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_ores.xml', '', ''),
(146, 5, 0, 'JA Orisite Template  for J25 & J32', '', 'ja_orisite', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_orisite.xml', '', ''),
(147, 5, 0, 'JA Orisite Template  for J25 & J32', '', 'ja_orisite', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_orisite.xml', '', ''),
(148, 5, 0, 'JA Portfolio Real Estate template for Joomla 1.6.x', '', 'ja_portfolio', 'file', '', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml', '', ''),
(149, 5, 0, 'JA Portfolio Real Estate template for Joomla 1.6.x', '', 'ja_portfolio', 'file', '', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml', '', ''),
(150, 5, 0, 'JA Portfolio Template for Joomla 2.5', '', 'ja_portfolio_real_estate', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', '', ''),
(151, 5, 0, 'JA Portfolio Template for Joomla 2.5', '', 'ja_portfolio_real_estate', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', '', ''),
(152, 5, 0, 'JA Puresite Template for J25 & J31', '', 'ja_puresite', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', '', ''),
(153, 5, 0, 'JA Puresite Template for J25 & J31', '', 'ja_puresite', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', '', ''),
(154, 5, 0, 'JA Purity II template for Joomla 2.5 & 3.2', '', 'ja_purity_ii', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml', '', ''),
(155, 5, 0, 'JA Purity II template for Joomla 2.5 & 3.2', '', 'ja_purity_ii', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml', '', ''),
(156, 5, 0, 'JA Pyro Template for Joomla 2.5', '', 'ja_pyro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_pyro.xml', '', ''),
(157, 5, 0, 'JA Pyro Template for Joomla 2.5', '', 'ja_pyro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_pyro.xml', '', ''),
(158, 5, 0, 'JA Rasite Template for J2.5 & J31', '', 'ja_rasite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_rasite.xml', '', ''),
(159, 5, 0, 'JA Rasite Template for J2.5 & J31', '', 'ja_rasite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_rasite.xml', '', ''),
(160, 5, 0, 'JA Rave Template for Joomla 2.5', '', 'ja_rave', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_rave.xml', '', ''),
(161, 5, 0, 'JA Rave Template for Joomla 2.5', '', 'ja_rave', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_rave.xml', '', ''),
(162, 5, 0, 'JA Smashboard Template', '', 'ja_smashboard', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml', '', ''),
(163, 5, 0, 'JA Smashboard Template', '', 'ja_smashboard', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml', '', ''),
(164, 5, 0, 'JA Social Template for Joomla 2.5', '', 'ja_social', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_social.xml', '', ''),
(165, 5, 0, 'JA Social Template for Joomla 2.5', '', 'ja_social', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_social.xml', '', ''),
(166, 5, 0, 'JA Social T3 Template for J25 & J32', '', 'ja_social_ii', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_social_ii.xml', '', ''),
(167, 5, 0, 'JA Social T3 Template for J25 & J32', '', 'ja_social_ii', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_social_ii.xml', '', ''),
(168, 5, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', '', ''),
(169, 5, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', '', ''),
(170, 5, 0, 'JA T3V2 Blank Template', '', 'ja_t3_blank', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml', '', ''),
(171, 5, 0, 'JA T3V2 Blank Template', '', 'ja_t3_blank', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml', '', ''),
(172, 5, 0, 'JA T3 Blank template for joomla 1.6', '', 'ja_t3_blank_j16', 'template', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml', '', ''),
(173, 5, 0, 'JA T3 Blank template for joomla 1.6', '', 'ja_t3_blank_j16', 'template', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml', '', ''),
(174, 5, 0, 'JA Blank Template for T3v3', '', 'ja_t3v3_blank', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml', '', ''),
(175, 5, 0, 'JA Blank Template for T3v3', '', 'ja_t3v3_blank', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml', '', ''),
(176, 5, 0, 'JA Teline III  Template for Joomla 1.6', '', 'ja_teline_iii', 'file', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml', '', ''),
(177, 5, 0, 'JA Teline III  Template for Joomla 1.6', '', 'ja_teline_iii', 'file', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml', '', ''),
(178, 5, 0, 'JA Teline IV Template for J2.5 and J3.2', '', 'ja_teline_iv', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', '', ''),
(179, 5, 0, 'JA Teline IV Template for J2.5 and J3.2', '', 'ja_teline_iv', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', '', ''),
(180, 5, 0, 'JA Teline IV T3 Template', '', 'ja_teline_iv_t3', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv_t3.xml', '', ''),
(181, 5, 0, 'JA Teline IV T3 Template', '', 'ja_teline_iv_t3', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv_t3.xml', '', ''),
(182, 5, 0, 'JA Tiris Template for J25 & J30', '', 'ja_tiris', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_tiris.xml', '', ''),
(183, 5, 0, 'JA Tiris Template for J25 & J30', '', 'ja_tiris', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_tiris.xml', '', ''),
(184, 5, 0, 'JA Travel Template for Joomla 2.5 & 3.0', '', 'ja_travel', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_travel.xml', '', ''),
(185, 5, 0, 'JA Travel Template for Joomla 2.5 & 3.0', '', 'ja_travel', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_travel.xml', '', ''),
(186, 5, 0, 'JA University Template for J25 & J32', '', 'ja_university', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_university.xml', '', ''),
(187, 5, 0, 'JA University Template for J25 & J32', '', 'ja_university', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_university.xml', '', ''),
(188, 5, 0, 'JA Vintas Template for J25 & J31', '', 'ja_vintas', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_vintas.xml', '', ''),
(189, 5, 0, 'JA Vintas Template for J25 & J31', '', 'ja_vintas', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_vintas.xml', '', ''),
(190, 5, 0, 'JA Wall Template for J25 & J32', '', 'ja_wall', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', '', ''),
(191, 5, 0, 'JA Wall Template for J25 & J32', '', 'ja_wall', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', '', ''),
(192, 5, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', '', ''),
(193, 5, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', '', ''),
(194, 5, 0, 'JA Bookmark plugin for Joomla 1.6.x', '', 'jabookmark', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jabookmark.xml', '', ''),
(195, 5, 0, 'JA Bookmark plugin for Joomla 1.6.x', '', 'jabookmark', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jabookmark.xml', '', ''),
(196, 5, 0, 'JA Comment plugin for Joomla 1.6.x', '', 'jacomment', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacomment.xml', '', ''),
(197, 5, 0, 'JA Comment plugin for Joomla 1.6.x', '', 'jacomment', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacomment.xml', '', ''),
(198, 5, 0, 'JA Comment Off Plugin for Joomla 1.6', '', 'jacommentoff', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommentoff.xml', '', ''),
(199, 5, 0, 'JA Comment Off Plugin for Joomla 1.6', '', 'jacommentoff', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommentoff.xml', '', ''),
(200, 5, 0, 'JA Comment On Plugin for Joomla 1.6', '', 'jacommenton', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommenton.xml', '', ''),
(201, 5, 0, 'JA Content Extra Fields for Joomla 1.6', '', 'jacontentextrafields', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml', '', ''),
(202, 5, 0, 'JA Content Extra Fields for Joomla 1.6', '', 'jacontentextrafields', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml', '', ''),
(203, 5, 0, 'JA Disqus Debate Echo plugin for Joomla 1.6.x', '', 'jadisqus_debate_echo', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml', '', ''),
(204, 5, 0, 'JA Disqus Debate Echo plugin for Joomla 1.6.x', '', 'jadisqus_debate_echo', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml', '', ''),
(205, 5, 0, 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', '', ''),
(206, 5, 0, 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', '', ''),
(207, 5, 0, 'JA Google Translate plugin for Joomla 1.6.x', '', 'jagoogletranslate', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml', '', ''),
(208, 5, 0, 'JA Google Translate plugin for Joomla 1.6.x', '', 'jagoogletranslate', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml', '', ''),
(209, 5, 0, 'JA Highslide plugin for Joomla 1.6.x', '', 'jahighslide', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jahighslide.xml', '', ''),
(210, 5, 0, 'JA Highslide plugin for Joomla 1.6.x', '', 'jahighslide', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jahighslide.xml', '', ''),
(211, 5, 0, 'JA K2 Search Plugin for Joomla 2.5', '', 'jak2_filter', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_filter.xml', '', ''),
(212, 5, 0, 'JA K2 Search Plugin for Joomla 2.5', '', 'jak2_filter', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_filter.xml', '', ''),
(213, 5, 0, 'JA K2 Extra Fields Plugin for Joomla 2.5', '', 'jak2_indexing', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml', '', ''),
(214, 5, 0, 'JA K2 Extra Fields Plugin for Joomla 2.5', '', 'jak2_indexing', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml', '', ''),
(215, 5, 0, 'JA Load module Plugin for Joomla 2.5', '', 'jaloadmodule', 'plugin', 'jaloadmodule', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml', '', ''),
(216, 5, 0, 'JA Load module Plugin for Joomla 2.5', '', 'jaloadmodule', 'plugin', 'jaloadmodule', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml', '', ''),
(217, 5, 0, 'JA System Nrain plugin for Joomla 1.6.x', '', 'janrain', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/janrain.xml', '', ''),
(218, 5, 0, 'JA System Nrain plugin for Joomla 1.6.x', '', 'janrain', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/janrain.xml', '', ''),
(219, 5, 0, 'JA Popup plugin for Joomla 1.6', '', 'japopup', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/japopup.xml', '', ''),
(220, 5, 0, 'JA Popup plugin for Joomla 1.6', '', 'japopup', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/japopup.xml', '', ''),
(221, 5, 0, 'JA System Social plugin for Joomla 1.7', '', 'jasocial', 'file', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/jasocial.xml', '', ''),
(222, 5, 0, 'JA System Social plugin for Joomla 1.7', '', 'jasocial', 'file', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/jasocial.xml', '', ''),
(223, 5, 0, 'JA T3 System plugin for Joomla 1.6', '', 'jat3', 'plugin', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/jat3.xml', '', ''),
(224, 5, 0, 'JA T3 System plugin for Joomla 1.6', '', 'jat3', 'plugin', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/jat3.xml', '', ''),
(225, 5, 0, 'JA Tabs plugin for Joomla 1.6.x', '', 'jatabs', 'plugin', 'jatabs', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/jatabs.xml', '', ''),
(226, 5, 0, 'JA Tabs plugin for Joomla 1.6.x', '', 'jatabs', 'plugin', 'jatabs', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/jatabs.xml', '', ''),
(227, 5, 0, 'JA Typo plugin For Joomla 1.6', '', 'jatypo', 'plugin', 'jatypo', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jatypo.xml', '', ''),
(228, 5, 0, 'JA Typo plugin For Joomla 1.6', '', 'jatypo', 'plugin', 'jatypo', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jatypo.xml', '', ''),
(229, 5, 0, 'Jomsocial Theme 3.x for JA Social', '', 'jomsocial_theme_social', 'custom', '', 0, '3.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml', '', ''),
(230, 5, 0, 'Jomsocial Theme 3.x for JA Social', '', 'jomsocial_theme_social', 'custom', '', 0, '3.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml', '', ''),
(231, 5, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16', 'file', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml', '', ''),
(232, 5, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16', 'file', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml', '', ''),
(233, 5, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16_26', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml', '', ''),
(234, 5, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16_26', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml', '', ''),
(235, 5, 0, 'JShopping Template for Ja Orisite', '', 'jshopping_theme_orisite', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml', '', ''),
(236, 5, 0, 'JShopping Template for Ja Orisite', '', 'jshopping_theme_orisite', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml', '', ''),
(237, 5, 0, 'JA Tiris Jshopping theme for J25 & J30', '', 'jshopping_theme_tiris', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml', '', ''),
(238, 5, 0, 'JA Tiris Jshopping theme for J25 & J30', '', 'jshopping_theme_tiris', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml', '', ''),
(239, 5, 0, 'Theme for Jshopping j17', '', 'jshopping_theme_tiris_j17', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml', '', ''),
(240, 5, 0, 'Theme for Jshopping j17', '', 'jshopping_theme_tiris_j17', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml', '', ''),
(241, 5, 0, 'JA Kranos kunena theme for Joomla 2.5', '', 'kunena_theme_kranos_j17', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml', '', ''),
(242, 5, 0, 'JA Kranos kunena theme for Joomla 2.5', '', 'kunena_theme_kranos_j17', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml', '', ''),
(243, 5, 0, 'Kunena Template for JA Mendozite', '', 'kunena_theme_mendozite', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml', '', ''),
(244, 5, 0, 'Kunena Template for JA Mendozite', '', 'kunena_theme_mendozite', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml', '', ''),
(245, 5, 0, 'JA Mitius Kunena Theme for Joomla 25 ', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml', '', ''),
(246, 5, 0, 'JA Mitius Kunena Theme for Joomla 25 ', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml', '', ''),
(247, 5, 0, 'Kunena theme for JA Nex J2.5', '', 'kunena_theme_nex_j17', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml', '', ''),
(248, 5, 0, 'Kunena theme for JA Nex J2.5', '', 'kunena_theme_nex_j17', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml', '', ''),
(249, 5, 0, 'Kunena theme for JA Nex T3', '', 'kunena_theme_nex_t3', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml', '', ''),
(250, 5, 0, 'Kunena theme for JA Nex T3', '', 'kunena_theme_nex_t3', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml', '', ''),
(251, 5, 0, 'Kunena Template for Ja Orisite', '', 'kunena_theme_orisite', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml', '', ''),
(252, 5, 0, 'Kunena Template for Ja Orisite', '', 'kunena_theme_orisite', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml', '', ''),
(253, 5, 0, 'Kunena theme for JA Social T3', '', 'kunena_theme_social', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social.xml', '', ''),
(254, 5, 0, 'Kunena theme for JA Social T3', '', 'kunena_theme_social', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social.xml', '', ''),
(255, 5, 0, 'Kunena theme for Joomla 2.5', '', 'kunena_theme_social_j16', 'custom', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml', '', ''),
(256, 5, 0, 'Kunena theme for Joomla 2.5', '', 'kunena_theme_social_j16', 'custom', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml', '', ''),
(257, 5, 0, 'JA Tiris kunena theme for Joomla 2.5', '', 'kunena_theme_tiris_j16', 'custom', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml', '', ''),
(258, 5, 0, 'JA Tiris kunena theme for Joomla 2.5', '', 'kunena_theme_tiris_j16', 'custom', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml', '', ''),
(259, 5, 0, 'JA Bookshop Theme for Mijoshop', '', 'mijoshop_theme_bookshop', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_bookshop.xml', '', ''),
(260, 5, 0, 'JA Bookshop Theme for Mijoshop', '', 'mijoshop_theme_bookshop', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_bookshop.xml', '', ''),
(261, 5, 0, 'JA Decor Theme for Mijoshop', '', 'mijoshop_theme_decor', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor.xml', '', ''),
(262, 5, 0, 'JA Decor Theme for Mijoshop', '', 'mijoshop_theme_decor', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor.xml', '', ''),
(263, 5, 0, 'JA Jobs Tags module for Joomla 2.5', '', 'mod_ja_jobs_tags', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml', '', ''),
(264, 5, 0, 'JA Jobs Tags module for Joomla 2.5', '', 'mod_ja_jobs_tags', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml', '', ''),
(265, 5, 0, 'JA Accordion Module for J25 & J31', '', 'mod_jaaccordion', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml', '', ''),
(266, 5, 0, 'JA Accordion Module for J25 & J31', '', 'mod_jaaccordion', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml', '', ''),
(267, 5, 0, 'JA Animation module for Joomla 2.5 & 3.0', '', 'mod_jaanimation', 'module', '', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml', '', ''),
(268, 5, 0, 'JA Animation module for Joomla 2.5 & 3.0', '', 'mod_jaanimation', 'module', '', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml', '', ''),
(269, 5, 0, 'JA Bulletin Module for J25 & J32', '', 'mod_jabulletin', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml', '', ''),
(270, 5, 0, 'JA Bulletin Module for J25 & J32', '', 'mod_jabulletin', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml', '', ''),
(271, 5, 0, 'JA Latest Comment Module for Joomla 2.5 & 3.0', '', 'mod_jaclatest_comments', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml', '', ''),
(272, 5, 0, 'JA Latest Comment Module for Joomla 2.5 & 3.0', '', 'mod_jaclatest_comments', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml', '', ''),
(273, 5, 0, 'JA Content Popup Module for J25 & J32', '', 'mod_jacontentpopup', 'module', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml', '', ''),
(274, 5, 0, 'JA Content Popup Module for J25 & J32', '', 'mod_jacontentpopup', 'module', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml', '', ''),
(275, 5, 0, 'JA Content Scroll module for Joomla 1.6', '', 'mod_jacontentscroll', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml', '', ''),
(276, 5, 0, 'JA Content Scroll module for Joomla 1.6', '', 'mod_jacontentscroll', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml', '', ''),
(277, 5, 0, 'JA Contenslider module for Joomla 1.6', '', 'mod_jacontentslide', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml', '', ''),
(278, 5, 0, 'JA Contenslider module for Joomla 1.6', '', 'mod_jacontentslide', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml', '', ''),
(279, 5, 0, 'JA Content Slider Module for J25 & J32', '', 'mod_jacontentslider', 'module', '', 0, '2.6.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml', '', ''),
(280, 5, 0, 'JA Content Slider Module for J25 & J32', '', 'mod_jacontentslider', 'module', '', 0, '2.6.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml', '', ''),
(281, 5, 0, 'JA CountDown Module for J25 & J32', '', 'mod_jacountdown', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml', '', ''),
(282, 5, 0, 'JA CountDown Module for J25 & J32', '', 'mod_jacountdown', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml', '', ''),
(283, 5, 0, 'JA Facebook Activity Module for J25 & J30', '', 'mod_jafacebookactivity', 'module', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml', '', ''),
(284, 5, 0, 'JA Facebook Like Box Module for J25 & J30', '', 'mod_jafacebooklikebox', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml', '', ''),
(285, 5, 0, 'JA Facebook Like Box Module for J25 & J30', '', 'mod_jafacebooklikebox', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml', '', ''),
(286, 5, 0, 'JA Featured Employer module for Joomla 2.5', '', 'mod_jafeatured_employer', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml', '', ''),
(287, 5, 0, 'JA Featured Employer module for Joomla 2.5', '', 'mod_jafeatured_employer', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml', '', ''),
(288, 5, 0, 'JA Filter Jobs module for Joomla 2.5', '', 'mod_jafilter_jobs', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml', '', ''),
(289, 5, 0, 'JA Filter Jobs module for Joomla 2.5', '', 'mod_jafilter_jobs', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml', '', '');
INSERT INTO `#__updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(290, 5, 0, 'JA flowlist module for Joomla 2.5 & 3.0', '', 'mod_jaflowlist', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml', '', ''),
(291, 5, 0, 'JA flowlist module for Joomla 2.5 & 3.0', '', 'mod_jaflowlist', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml', '', ''),
(292, 5, 0, 'JAEC Halloween Module for Joomla 2.5 & 3.0', '', 'mod_jahalloween', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml', '', ''),
(293, 5, 0, 'JAEC Halloween Module for Joomla 2.5 & 3.0', '', 'mod_jahalloween', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml', '', ''),
(294, 5, 0, 'JA Image Hotspot Module for Joomla 2.5 & 3.2', '', 'mod_jaimagehotspot', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml', '', ''),
(295, 5, 0, 'JA Image Hotspot Module for Joomla 2.5 & 3.2', '', 'mod_jaimagehotspot', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml', '', ''),
(296, 5, 0, 'JA static module for Joomla 2.5', '', 'mod_jajb_statistic', 'module', '', 0, '1.0.0 stable', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml', '', ''),
(297, 5, 0, 'JA static module for Joomla 2.5', '', 'mod_jajb_statistic', 'module', '', 0, '1.0.0 stable', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml', '', ''),
(298, 5, 0, 'JA Jobboard Menu module for Joomla 2.5', '', 'mod_jajobboard_menu', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml', '', ''),
(299, 5, 0, 'JA Jobboard Menu module for Joomla 2.5', '', 'mod_jajobboard_menu', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml', '', ''),
(300, 5, 0, 'JA Jobs Counter module for Joomla 2.5', '', 'mod_jajobs_counter', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml', '', ''),
(301, 5, 0, 'JA Jobs Counter module for Joomla 2.5', '', 'mod_jajobs_counter', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml', '', ''),
(302, 5, 0, 'JA Jobs Map module for Joomla 2.5', '', 'mod_jajobs_map', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml', '', ''),
(303, 5, 0, 'JA Jobs Map module for Joomla 2.5', '', 'mod_jajobs_map', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml', '', ''),
(304, 5, 0, 'JA K2 Fillter Module for Joomla 2.5', '', 'mod_jak2_filter', 'module', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml', '', ''),
(305, 5, 0, 'JA K2 Fillter Module for Joomla 2.5', '', 'mod_jak2_filter', 'module', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml', '', ''),
(306, 5, 0, 'JA K2 Filter Module for J25 & J3.2', '', 'mod_jak2filter', 'module', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', '', ''),
(307, 5, 0, 'JA K2 Filter Module for J25 & J3.2', '', 'mod_jak2filter', 'module', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', '', ''),
(308, 5, 0, 'JA K2 Timeline', '', 'mod_jak2timeline', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml', '', ''),
(309, 5, 0, 'JA K2 Timeline', '', 'mod_jak2timeline', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml', '', ''),
(310, 5, 0, 'JA Latest Resumes module for Joomla 2.5', '', 'mod_jalatest_resumes', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml', '', ''),
(311, 5, 0, 'JA Latest Resumes module for Joomla 2.5', '', 'mod_jalatest_resumes', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml', '', ''),
(312, 5, 0, 'JA List Employer module for Joomla 2.5', '', 'mod_jalist_employers', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml', '', ''),
(313, 5, 0, 'JA List Employer module for Joomla 2.5', '', 'mod_jalist_employers', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml', '', ''),
(314, 5, 0, 'JA List Jobs module for Joomla 2.5', '', 'mod_jalist_jobs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml', '', ''),
(315, 5, 0, 'JA List Jobs module for Joomla 2.5', '', 'mod_jalist_jobs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml', '', ''),
(316, 5, 0, 'JA List Resumes module for Joomla 2.5', '', 'mod_jalist_resumes', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml', '', ''),
(317, 5, 0, 'JA List Resumes module for Joomla 2.5', '', 'mod_jalist_resumes', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml', '', ''),
(318, 5, 0, 'JA Login module for J25 & J32', '', 'mod_jalogin', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml', '', ''),
(319, 5, 0, 'JA Login module for J25 & J32', '', 'mod_jalogin', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml', '', ''),
(320, 5, 0, 'JA Masshead Module for J25 & J31', '', 'mod_jamasshead', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml', '', ''),
(321, 5, 0, 'JA Masshead Module for J25 & J31', '', 'mod_jamasshead', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml', '', ''),
(322, 5, 0, 'JA News Featured Module for J25 & J32', '', 'mod_janews_featured', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml', '', ''),
(323, 5, 0, 'JA News Featured Module for J25 & J32', '', 'mod_janews_featured', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml', '', ''),
(324, 5, 0, 'JA Newsflash module for Joomla 1.6.x', '', 'mod_janewsflash', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml', '', ''),
(325, 5, 0, 'JA Newsflash module for Joomla 1.6.x', '', 'mod_janewsflash', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml', '', ''),
(326, 5, 0, 'JA Newsmoo module for Joomla 1.6.x', '', 'mod_janewsmoo', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml', '', ''),
(327, 5, 0, 'JA Newsmoo module for Joomla 1.6.x', '', 'mod_janewsmoo', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml', '', ''),
(328, 5, 0, 'JA News Pro Module for J25 & J32', '', 'mod_janewspro', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', '', ''),
(329, 5, 0, 'JA News Pro Module for J25 & J32', '', 'mod_janewspro', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', '', ''),
(330, 5, 0, 'JA Newsticker Module for J25 & J32', '', 'mod_janewsticker', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml', '', ''),
(331, 5, 0, 'JA Newsticker Module for J25 & J32', '', 'mod_janewsticker', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml', '', ''),
(332, 5, 0, 'JA Quick Contact Module for J25 & J32', '', 'mod_jaquickcontact', 'module', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml', '', ''),
(333, 5, 0, 'JA Quick Contact Module for J25 & J32', '', 'mod_jaquickcontact', 'module', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml', '', ''),
(334, 5, 0, 'JA Recent Viewed Jobs module for Joomla 2.5', '', 'mod_jarecent_viewed_jobs', 'module', '', 0, '1.0.0 stable', '', 'http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml', '', ''),
(335, 5, 0, 'JA Recent Viewed Jobs module for Joomla 2.5', '', 'mod_jarecent_viewed_jobs', 'module', '', 0, '1.0.0 stable', '', 'http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml', '', ''),
(336, 5, 0, 'JA SideNews Module for J25 & J32', '', 'mod_jasidenews', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml', '', ''),
(337, 5, 0, 'JA SideNews Module for J25 & J32', '', 'mod_jasidenews', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml', '', ''),
(338, 5, 0, 'JA Slideshow Module for J25 & J32', '', 'mod_jaslideshow', 'module', '', 0, '2.7.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml', '', ''),
(339, 5, 0, 'JA Slideshow Module for J25 & J32', '', 'mod_jaslideshow', 'module', '', 0, '2.7.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml', '', ''),
(340, 5, 0, 'JA Slideshow Lite Module for J25 & J3.2', '', 'mod_jaslideshowlite', 'module', '', 0, '1.2.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml', '', ''),
(341, 5, 0, 'JA Slideshow Lite Module for J25 & J3.2', '', 'mod_jaslideshowlite', 'module', '', 0, '1.2.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml', '', ''),
(342, 5, 0, 'JA Soccerway Module for J25 & J32', '', 'mod_jasoccerway', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml', '', ''),
(343, 5, 0, 'JA Soccerway Module for J25 & J32', '', 'mod_jasoccerway', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml', '', ''),
(344, 5, 0, 'JA Social Locker module', '', 'mod_jasocial_locker', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasocial_locker.xml', '', ''),
(345, 5, 0, 'JA Social Locker module', '', 'mod_jasocial_locker', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasocial_locker.xml', '', ''),
(346, 5, 0, 'JA Tab module for Joomla 2.5', '', 'mod_jatabs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml', '', ''),
(347, 5, 0, 'JA Tab module for Joomla 2.5', '', 'mod_jatabs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml', '', ''),
(348, 5, 0, 'JA Toppanel Module for Joomla 2.5 & Joomla 3.2', '', 'mod_jatoppanel', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml', '', ''),
(349, 5, 0, 'JA Toppanel Module for Joomla 2.5 & Joomla 3.2', '', 'mod_jatoppanel', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml', '', ''),
(350, 5, 0, 'JA Twitter Module for J25 & J3.2', '', 'mod_jatwitter', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml', '', ''),
(351, 5, 0, 'JA Twitter Module for J25 & J3.2', '', 'mod_jatwitter', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml', '', ''),
(352, 5, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', '', ''),
(353, 5, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', '', ''),
(354, 5, 0, 'JA VMProducts Module', '', 'mod_javmproducts', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml', '', ''),
(355, 5, 0, 'JA VMProducts Module', '', 'mod_javmproducts', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml', '', ''),
(356, 5, 0, 'JA Voice  Work Flow Module for J2.5 & J3.x', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', '', ''),
(357, 5, 0, 'JA Voice  Work Flow Module for J2.5 & J3.x', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', '', ''),
(358, 5, 0, 'JA Amazon S3 Button Plugin for joomla 2.5 & 3.1', '', 'jaamazons3', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml', '', ''),
(359, 5, 0, 'JA Amazon S3 Button Plugin for joomla 2.5 & 3.1', '', 'jaamazons3', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml', '', ''),
(360, 5, 0, 'JA AVTracklist Button plugin for J2.5 & J3.1', '', 'jaavtracklist', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml', '', ''),
(361, 5, 0, 'JA AVTracklist Button plugin for J2.5 & J3.1', '', 'jaavtracklist', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml', '', ''),
(362, 5, 0, 'JA Comment Off Plugin for Joomla 2.5 & 3.0', '', 'jacommentoff', 'plugin', 'button', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml', '', ''),
(363, 5, 0, 'JA Comment Off Plugin for Joomla 2.5 & 3.0', '', 'jacommentoff', 'plugin', 'button', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml', '', ''),
(364, 5, 0, 'JA Comment On Plugin for Joomla 2.5 & 3.0', '', 'jacommenton', 'plugin', 'button', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml', '', ''),
(365, 5, 0, 'JA Comment On Plugin for Joomla 2.5 & 3.0', '', 'jacommenton', 'plugin', 'button', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml', '', ''),
(366, 5, 0, 'JA Amazon S3 System plugin for joomla 2.5 & 3.1', '', 'plg_jaamazons3', 'plugin', 'plg_jaamazons3', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml', '', ''),
(367, 5, 0, 'JA Amazon S3 System plugin for joomla 2.5 & 3.1', '', 'plg_jaamazons3', 'plugin', 'plg_jaamazons3', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml', '', ''),
(368, 5, 0, 'JA AVTracklist plugin for J2.5 & J3.1', '', 'plg_jaavtracklist', 'plugin', 'plg_jaavtracklist', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml', '', ''),
(369, 5, 0, 'JA AVTracklist plugin for J2.5 & J3.1', '', 'plg_jaavtracklist', 'plugin', 'plg_jaavtracklist', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml', '', ''),
(370, 5, 0, 'JA Bookmark plugin for J2.5 & J3.2', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', '', ''),
(371, 5, 0, 'JA Bookmark plugin for J2.5 & J3.2', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', '', ''),
(372, 5, 0, 'JA Comment Plugin for Joomla 2.5 & 3.0', '', 'plg_jacomment', 'plugin', 'plg_jacomment', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml', '', ''),
(373, 5, 0, 'JA Comment Plugin for Joomla 2.5 & 3.0', '', 'plg_jacomment', 'plugin', 'plg_jacomment', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml', '', ''),
(374, 5, 0, 'JA Disqus Debate Echo plugin for J2.5 & J3.2', '', 'debate_echo', 'plugin', 'jadisqus', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml', '', ''),
(375, 5, 0, 'JA Disqus Debate Echo plugin for J2.5 & J3.2', '', 'debate_echo', 'plugin', 'jadisqus', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml', '', ''),
(376, 5, 0, 'JA Google Storage Plugin for j25 & j30', '', 'plg_jagooglestorage', 'plugin', 'plg_jagooglestorage', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml', '', ''),
(377, 5, 0, 'JA Google Storage Plugin for j25 & j30', '', 'plg_jagooglestorage', 'plugin', 'plg_jagooglestorage', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml', '', ''),
(378, 5, 0, 'JA Translate plugin for Joomla 1.6.x', '', 'plg_jagoogletranslate', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml', '', ''),
(379, 5, 0, 'JA Translate plugin for Joomla 1.6.x', '', 'plg_jagoogletranslate', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml', '', ''),
(380, 5, 0, 'JA Thumbnail Plugin for J25 & J3', '', 'plg_jathumbnail', 'plugin', 'plg_jathumbnail', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml', '', ''),
(381, 5, 0, 'JA Thumbnail Plugin for J25 & J3', '', 'plg_jathumbnail', 'plugin', 'plg_jathumbnail', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml', '', ''),
(382, 5, 0, 'JA Tooltips plugin for Joomla 1.6.x', '', 'plg_jatooltips', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml', '', ''),
(383, 5, 0, 'JA Tooltips plugin for Joomla 1.6.x', '', 'plg_jatooltips', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml', '', ''),
(384, 5, 0, 'JA Typo Button Plugin for J25 & J32', '', 'plg_jatypobutton', 'plugin', 'plg_jatypobutton', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml', '', ''),
(385, 5, 0, 'JA Typo Button Plugin for J25 & J32', '', 'plg_jatypobutton', 'plugin', 'plg_jatypobutton', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml', '', ''),
(386, 5, 0, 'JA K2 Filter Plg for J25 & J3.2', '', 'jak2filter', 'plugin', 'k2', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', '', ''),
(387, 5, 0, 'JA K2 Filter Plg for J25 & J3.2', '', 'jak2filter', 'plugin', 'k2', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', '', ''),
(388, 5, 0, 'JA K2 Timeline Plugin', '', 'jak2timeline', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml', '', ''),
(389, 5, 0, 'JA K2 Timeline Plugin', '', 'jak2timeline', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml', '', ''),
(390, 5, 0, 'Multi Capcha Engine Plugin for J25 & J32', '', 'captcha_engine', 'plugin', 'multiple', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml', '', ''),
(391, 5, 0, 'Multi Capcha Engine Plugin for J25 & J32', '', 'captcha_engine', 'plugin', 'multiple', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml', '', ''),
(392, 5, 0, 'JA JobBoard Payment Plugin Authorize for Joomla 2.5', '', 'plg_payment_jajb_authorize_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml', '', ''),
(393, 5, 0, 'JA JobBoard Payment Plugin Authorize for Joomla 2.5', '', 'plg_payment_jajb_authorize_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml', '', ''),
(394, 5, 0, 'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5', '', 'plg_payment_jajb_moneybooker_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml', '', ''),
(395, 5, 0, 'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5', '', 'plg_payment_jajb_moneybooker_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml', '', ''),
(396, 5, 0, 'JA JobBoard Payment Plugin Paypal for Joomla 2.5', '', 'plg_payment_jajb_paypal_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml', '', ''),
(397, 5, 0, 'JA JobBoard Payment Plugin Paypal for Joomla 2.5', '', 'plg_payment_jajb_paypal_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml', '', ''),
(398, 5, 0, 'JA JobBoard Payment Plugin BankWire for Joomla 2.5', '', 'plg_payment_jajb_wirebank_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml', '', ''),
(399, 5, 0, 'JA JobBoard Payment Plugin BankWire for Joomla 2.5', '', 'plg_payment_jajb_wirebank_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml', '', ''),
(400, 5, 0, 'JA Search Comment Plugin for Joomla J2.5 & 3.0', '', 'jacomment', 'plugin', 'search', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml', '', ''),
(401, 5, 0, 'JA Search Comment Plugin for Joomla J2.5 & 3.0', '', 'jacomment', 'plugin', 'search', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml', '', ''),
(402, 5, 0, 'JA Search Jobs plugin for Joomla 2.5', '', 'jajob', 'plugin', 'search', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml', '', ''),
(403, 5, 0, 'JA Search Jobs plugin for Joomla 2.5', '', 'jajob', 'plugin', 'search', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml', '', ''),
(404, 5, 0, 'JA System Comment Plugin for Joomla 2.5 & 3.0', '', 'jacomment', 'plugin', 'system', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml', '', ''),
(405, 5, 0, 'JA System Comment Plugin for Joomla 2.5 & 3.0', '', 'jacomment', 'plugin', 'system', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml', '', ''),
(406, 5, 0, 'JA Content Extra Fields for Joomla 2.5', '', 'jacontentextrafields', 'plugin', 'system', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml', '', ''),
(407, 5, 0, 'JA Content Extra Fields for Joomla 2.5', '', 'jacontentextrafields', 'plugin', 'system', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml', '', ''),
(408, 5, 0, 'JA System Google Map plugin for J2.5 & J3.2', '', 'jagooglemap', 'plugin', 'system', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml', '', ''),
(409, 5, 0, 'JA System Google Map plugin for J2.5 & J3.2', '', 'jagooglemap', 'plugin', 'system', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml', '', ''),
(410, 5, 0, 'JAEC PLG System Jobboad Jomsocial Synchonization', '', 'jajb_jomsocial', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml', '', ''),
(411, 5, 0, 'JAEC PLG System Jobboad Jomsocial Synchonization', '', 'jajb_jomsocial', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml', '', ''),
(412, 5, 0, 'JA System Lazyload Plugin for J25 & J32', '', 'jalazyload', 'plugin', 'system', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml', '', ''),
(413, 5, 0, 'JA System Lazyload Plugin for J25 & J32', '', 'jalazyload', 'plugin', 'system', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml', '', ''),
(414, 5, 0, 'JA System Nrain Plugin for Joomla 2.5 & 3.0', '', 'janrain', 'plugin', 'system', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml', '', ''),
(415, 5, 0, 'JA System Nrain Plugin for Joomla 2.5 & 3.0', '', 'janrain', 'plugin', 'system', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml', '', ''),
(416, 5, 0, 'JA Popup Plugin for J25 & J32', '', 'japopup', 'plugin', 'system', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml', '', ''),
(417, 5, 0, 'JA Popup Plugin for J25 & J32', '', 'japopup', 'plugin', 'system', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml', '', ''),
(418, 5, 0, 'JA System Social Plugin for Joomla 2.5 & 3.0', '', 'jasocial', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml', '', ''),
(419, 5, 0, 'JA System Social Plugin for Joomla 2.5 & 3.0', '', 'jasocial', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml', '', ''),
(420, 5, 0, 'JA System Social Feed Plugin for J25 & J3.2', '', 'jasocial_feed', 'plugin', 'system', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml', '', ''),
(421, 5, 0, 'JA System Social Feed Plugin for J25 & J3.2', '', 'jasocial_feed', 'plugin', 'system', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml', '', ''),
(422, 5, 0, 'JA T3v2 System Plugin for J25 & J32', '', 'jat3', 'plugin', 'system', 0, '2.7.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml', '', ''),
(423, 5, 0, 'JA T3v2 System Plugin for J25 & J32', '', 'jat3', 'plugin', 'system', 0, '2.7.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml', '', ''),
(424, 5, 0, 'JA T3v3 System Plugin', '', 'jat3v3', 'plugin', 'system', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml', '', ''),
(425, 5, 0, 'JA T3v3 System Plugin', '', 'jat3v3', 'plugin', 'system', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml', '', ''),
(426, 5, 0, 'JA Tabs Plugin for J25 & J3.2', '', 'jatabs', 'plugin', 'system', 0, '2.6.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml', '', ''),
(427, 5, 0, 'JA Tabs Plugin for J25 & J3.2', '', 'jatabs', 'plugin', 'system', 0, '2.6.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml', '', ''),
(428, 5, 0, 'JA Typo Plugin for J25 & J32', '', 'jatypo', 'plugin', 'system', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml', '', ''),
(429, 5, 0, 'JA Typo Plugin for J25 & J32', '', 'jatypo', 'plugin', 'system', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml', '', ''),
(430, 5, 10016, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '2.1.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', '', ''),
(431, 5, 10016, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '2.1.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', '', ''),
(432, 5, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '2.1.3', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', '', ''),
(433, 5, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '2.1.3', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', '', ''),
(434, 5, 0, 'T3 B3 Blank Template', '', 't3_bs3_blank', 'template', '', 0, '2.1.3', '', 'http://update.joomlart.com/service/tracking/j16/t3_bs3_blank.xml', '', ''),
(435, 5, 0, 'T3 B3 Blank Template', '', 't3_bs3_blank', 'template', '', 0, '2.1.3', '', 'http://update.joomlart.com/service/tracking/j16/t3_bs3_blank.xml', '', ''),
(436, 5, 0, 'JA Teline III Template for Joomla 2.5', '', 'teline_iii', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/teline_iii.xml', '', ''),
(437, 5, 0, 'JA Teline III Template for Joomla 2.5', '', 'teline_iii', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/teline_iii.xml', '', ''),
(438, 5, 0, 'Thirdparty Extensions Compatibility Bundle', '', 'thirdparty_exts_compatibility', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml', '', ''),
(439, 5, 0, 'Thirdparty Extensions Compatibility Bundle', '', 'thirdparty_exts_compatibility', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites`
--

CREATE TABLE IF NOT EXISTS `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `#__update_sites`
--

INSERT INTO `#__update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1396635927, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1396635927, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1396635927, ''),
(4, 'K2 Updates', 'extension', 'http://getk2.org/update.xml', 1, 1396635927, ''),
(5, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 1, 1396635925, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `#__update_sites_extensions`
--

INSERT INTO `#__update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10029),
(4, 10002),
(5, 10016),
(5, 10023);

-- --------------------------------------------------------

--
-- Table structure for table `#__usergroups`
--

CREATE TABLE IF NOT EXISTS `#__usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `#__usergroups`
--

INSERT INTO `#__usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `#__users`
--

CREATE TABLE IF NOT EXISTS `#__users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `#__users`
--

INSERT INTO `#__users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`) VALUES
(194, 'Daniel Trinh', 'bowthemes', 'abc@abc.com', '$P$DbXsnsoDlrVVjji4Dq2qJBiFkyOeV70', 0, 1, '2014-03-24 08:40:49', '2014-04-04 18:15:26', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', ''),
(195, 'Tam Pham', 'tampt', 'tampt@vsmarttech.com', '$P$DmGNHZf.3IpeVd5Bd3UQrxbR1ql5dK1', 0, 0, '2014-04-03 17:06:11', '2014-04-04 16:41:47', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__user_keys`
--

CREATE TABLE IF NOT EXISTS `#__user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__user_notes`
--

CREATE TABLE IF NOT EXISTS `#__user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__user_profiles`
--

CREATE TABLE IF NOT EXISTS `#__user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `#__user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `#__user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__user_usergroup_map`
--

INSERT INTO `#__user_usergroup_map` (`user_id`, `group_id`) VALUES
(194, 8),
(195, 2);

-- --------------------------------------------------------

--
-- Table structure for table `#__viewlevels`
--

CREATE TABLE IF NOT EXISTS `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__viewlevels`
--

INSERT INTO `#__viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `#__weblinks`
--

CREATE TABLE IF NOT EXISTS `#__weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
