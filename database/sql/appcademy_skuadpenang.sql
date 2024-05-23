-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2024 at 01:20 AM
-- Server version: 8.0.37
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appcademy_skuadpenang`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us_sections`
--

CREATE TABLE `about_us_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `about_us_sections`
--

INSERT INTO `about_us_sections` (`id`, `language_id`, `image`, `title`, `subtitle`, `text`, `created_at`, `updated_at`) VALUES
(3, 8, '663756c8ab768.jpg', 'Know more about the Culture of Events', 'Maklumat Lanjut', '<div class=\"feature-item mt-30\" style=\"margin: 30px 0px; padding: 0px; border: none; outline: none; box-shadow: none; display: flex; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(69, 69, 69); font-family: Roboto, sans-serif; font-size: 16px;\">\r\n<div class=\"feature-content\" style=\"margin: 0px; padding: 0px; border: none; outline: none; box-shadow: none;\">\r\n<h4 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; padding: 0px; border: none; outline: none; box-shadow: none; line-height: 1.46; font-size: 22px; font-family: var(--heading-font); color: var(--heading-color);\">Ruangan Simple Expalanation Di Sini</h4>\r\n</div>\r\n</div>', '2021-12-19 06:23:27', '2024-05-05 09:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `action_sections`
--

CREATE TABLE `action_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `first_title` varchar(255) DEFAULT NULL,
  `second_title` varchar(255) DEFAULT NULL,
  `first_button` varchar(255) DEFAULT NULL,
  `first_button_url` varchar(255) DEFAULT NULL,
  `second_button` varchar(255) DEFAULT NULL,
  `second_button_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `action_sections`
--

INSERT INTO `action_sections` (`id`, `language_id`, `background_image`, `first_title`, `second_title`, `first_button`, `first_button_url`, `second_button`, `second_button_url`, `image`, `created_at`, `updated_at`) VALUES
(3, 8, '61a6fe5929b63.jpg', 'Are You Ready for This Offer?', '50% Offer for Very First 50 Students and Mentors.', 'Become A Student', 'https://codecanyon.kreativdev.com/coursela/user/signup', 'All Courses', 'https://codecanyon.kreativdev.com/coursela/user/courses', '6280a19f2edad.png', '2021-11-30 22:47:21', '2022-05-15 00:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` text,
  `address` text,
  `details` longtext,
  `password` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `first_name`, `last_name`, `image`, `username`, `email`, `phone`, `address`, `details`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', 'Skuad Penang', '1632736531.png', 'admin', 'admin@skuadpenang.com.my', '082319382109', 'Pulau Pinang', 'Admin Skuad Penang', '$2y$10$6Y4HCFAAIfqpklq2UIKhQuFetg9/LooM9m9jHdLjVs3dmc.5BMLf6', 1, NULL, '2024-04-24 10:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `ad_type` varchar(255) NOT NULL,
  `resolution_type` smallint UNSIGNED NOT NULL COMMENT '1 => 300 x 250, 2 => 300 x 600, 3 => 728 x 90',
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `slot` varchar(50) DEFAULT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `uniqid` int UNSIGNED NOT NULL DEFAULT '12345',
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `website_title` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` decimal(8,5) DEFAULT NULL,
  `longitude` decimal(8,5) DEFAULT NULL,
  `theme_version` smallint UNSIGNED NOT NULL,
  `base_currency_symbol` varchar(255) DEFAULT NULL,
  `base_currency_symbol_position` varchar(20) DEFAULT NULL,
  `base_currency_text` varchar(20) DEFAULT NULL,
  `base_currency_text_position` varchar(20) DEFAULT NULL,
  `base_currency_rate` decimal(8,2) DEFAULT NULL,
  `primary_color` varchar(30) DEFAULT NULL,
  `breadcrumb_overlay_color` varchar(30) DEFAULT NULL,
  `breadcrumb_overlay_opacity` decimal(4,2) DEFAULT NULL,
  `smtp_status` tinyint DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` int DEFAULT NULL,
  `encryption` varchar(50) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `from_mail` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `to_mail` varchar(255) DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `disqus_status` tinyint UNSIGNED DEFAULT NULL,
  `disqus_short_name` varchar(255) DEFAULT NULL,
  `google_recaptcha_status` tinyint DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `facebook_login_status` int DEFAULT '0',
  `facebook_app_id` varchar(255) DEFAULT NULL,
  `facebook_app_secret` varchar(255) DEFAULT NULL,
  `google_login_status` int DEFAULT '0',
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_client_secret` varchar(255) DEFAULT NULL,
  `whatsapp_status` tinyint UNSIGNED DEFAULT NULL,
  `whatsapp_number` varchar(20) DEFAULT NULL,
  `whatsapp_header_title` varchar(255) DEFAULT NULL,
  `whatsapp_popup_status` tinyint UNSIGNED DEFAULT NULL,
  `whatsapp_popup_message` text,
  `maintenance_img` varchar(255) DEFAULT NULL,
  `maintenance_status` tinyint DEFAULT NULL,
  `maintenance_msg` text,
  `bypass_token` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `preloader` varchar(255) DEFAULT NULL,
  `admin_theme_version` varchar(10) NOT NULL DEFAULT 'light',
  `features_section_image` varchar(255) DEFAULT NULL,
  `testimonials_section_image` varchar(255) DEFAULT NULL,
  `course_categories_section_image` varchar(255) DEFAULT NULL,
  `notification_image` varchar(255) DEFAULT NULL,
  `google_adsense_publisher_id` varchar(255) DEFAULT NULL,
  `shop_status` tinyint DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `catalog_mode` tinyint DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `is_shop_rating` tinyint DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `shop_guest_checkout` tinyint NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `shop_tax` float DEFAULT NULL,
  `tax` double(8,2) DEFAULT '0.00',
  `commission` double(8,2) DEFAULT '0.00',
  `organizer_email_verification` int NOT NULL DEFAULT '0',
  `organizer_admin_approval` int NOT NULL DEFAULT '0',
  `admin_approval_notice` longtext,
  `timezone` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_guest_checkout_status` int DEFAULT '0' COMMENT '0=deactive, 1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `uniqid`, `favicon`, `logo`, `website_title`, `email_address`, `contact_number`, `address`, `latitude`, `longitude`, `theme_version`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `primary_color`, `breadcrumb_overlay_color`, `breadcrumb_overlay_opacity`, `smtp_status`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `from_mail`, `from_name`, `to_mail`, `breadcrumb`, `disqus_status`, `disqus_short_name`, `google_recaptcha_status`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `facebook_login_status`, `facebook_app_id`, `facebook_app_secret`, `google_login_status`, `google_client_id`, `google_client_secret`, `whatsapp_status`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_status`, `whatsapp_popup_message`, `maintenance_img`, `maintenance_status`, `maintenance_msg`, `bypass_token`, `footer_logo`, `preloader`, `admin_theme_version`, `features_section_image`, `testimonials_section_image`, `course_categories_section_image`, `notification_image`, `google_adsense_publisher_id`, `shop_status`, `catalog_mode`, `is_shop_rating`, `shop_guest_checkout`, `shop_tax`, `tax`, `commission`, `organizer_email_verification`, `organizer_admin_approval`, `admin_approval_notice`, `timezone`, `updated_at`, `event_guest_checkout_status`) VALUES
(2, 12345, '64533cea2a869.ico', '66374c4ca3d21.png', 'Skuad Penang', 'demo@gmail.com', '+321-7890123', 'Los Angeles, USA', 34.05224, -118.24368, 1, 'RM', 'left', 'MYR', 'left', 4.78, '22B0AF', '030A15', 0.80, 1, 'smtp.gmail.com', 587, 'TLS', 'geniustest11@gmail.com', 'jvpdiafcjhrznkbm', 'fahadahmadshemul@gmail.com', 'Evento', '', '662e14660c6db.png', 1, 'evento-6', 0, '6LcCWGgnAAAAADgP1vWv-VXVVrdIERCECIWAOThC', '6LcCWGgnAAAAAM2mM9Mbe4Y04GNZdOzu-9BQBas6', 1, '643057404544999', 'f59e1a04cc1e5ebf95d880dea77c5815', 1, '308392347627-t2eosbvgh68hvi1amq546b7iu6ndnbs4.apps.googleusercontent.com', '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', 1, '+880 1686321-356', 'Hi, there!', 1, 'If you have any issues, let us know.', '6629f866377d5.png', 0, 'We are upgrading our system. We will come back soon. \nPlease stay with us.\nSelamat Hari Raya Aidilfitri', 'secret', '6628355ac62cd.png', '63cbb14274c51.gif', 'dark', '1633502472.jpg', '61bf1ed024d95.png', '61bf1fc25a8f6.jpg', '619b7d5e5e9df.png', '', 1, 1, 1, 1, 5, 10.00, 5.00, 1, 1, 'Your account is deactivated or pending now please get in touch with admin.', 'Asia/Kuala_Lumpur', '2023-05-01 09:41:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(36, 8, 'Business', 'business', 1, 1, '2021-10-12 22:51:29', '2023-05-07 10:14:18'),
(37, 8, 'Conference', 'conference', 1, 2, '2021-10-12 22:51:38', '2023-05-07 10:14:01'),
(38, 8, 'Wedding', 'wedding', 1, 3, '2021-10-12 22:51:52', '2023-05-11 04:34:57'),
(43, 8, 'Others', 'others', 1, 4, '2022-04-05 05:50:10', '2022-05-15 03:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `blog_informations`
--

CREATE TABLE `blog_informations` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `blog_category_id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `booking_id` varchar(255) DEFAULT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  `organizer_id` bigint DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `variation` text,
  `price` float(8,2) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `tax` float(8,2) DEFAULT '0.00',
  `commission` float(8,2) DEFAULT '0.00',
  `early_bird_discount` float DEFAULT NULL,
  `currencyText` varchar(255) DEFAULT NULL,
  `currencyTextPosition` varchar(255) DEFAULT NULL,
  `currencySymbol` varchar(255) DEFAULT NULL,
  `currencySymbolPosition` varchar(255) DEFAULT NULL,
  `paymentMethod` varchar(255) DEFAULT NULL,
  `gatewayType` varchar(255) DEFAULT NULL,
  `paymentStatus` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `attachmentFile` varchar(255) DEFAULT NULL,
  `event_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_percentage` double(8,2) DEFAULT '0.00',
  `commission_percentage` double(8,2) DEFAULT '0.00',
  `scan_status` int NOT NULL DEFAULT '0' COMMENT '1=scanned, 0 = not scan yet',
  `conversation_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` mediumint UNSIGNED NOT NULL,
  `state_code` varchar(255) NOT NULL,
  `country_id` mediumint UNSIGNED NOT NULL,
  `country_code` char(2) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2014-01-01 00:31:01',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  `wikiDataId` varchar(255) DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `contact_form_title` varchar(255) DEFAULT NULL,
  `contact_form_subtitle` text,
  `contact_addresses` text,
  `contact_numbers` varchar(255) DEFAULT NULL,
  `contact_mails` text,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `map_zoom` varchar(255) DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `contact_form_title`, `contact_form_subtitle`, `contact_addresses`, `contact_numbers`, `contact_mails`, `latitude`, `longitude`, `map_zoom`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', 'Contact Us', 'ARAS 5, BANGUNAN PERSEKUTUAN, Jalan Anson, 10400 George Town, Penang', '04-2279400', 'admin@skuadpenang.com.my', '5.419909421075558', '100.32415494544126', '-104.819859', 8, '2022-07-17 05:00:10', '2024-05-05 09:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `type` tinyint DEFAULT NULL COMMENT '1=user, 2=admin, 3=organizer',
  `support_ticket_id` int DEFAULT NULL,
  `reply` longtext,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user_id`, `type`, `support_ticket_id`, `reply`, `file`, `created_at`, `updated_at`) VALUES
(16, 1, 2, 7, '<p>hi</p>', NULL, '2023-03-22 06:08:55', '2023-03-22 06:08:55'),
(17, 1, 1, 7, 'helo ami user', NULL, '2023-03-22 06:16:40', '2023-03-22 06:16:40'),
(19, 8, 2, 7, '<p>hello ami moderator bolci<br /></p>', NULL, '2023-03-22 06:21:08', '2023-03-22 06:21:08'),
(20, 8, 2, 7, '<p>admin assing to me</p>', NULL, '2023-03-22 06:28:59', '2023-03-22 06:28:59'),
(21, 1, 2, 7, '<p>yeah i assign </p>', NULL, '2023-03-22 06:29:20', '2023-03-22 06:29:20'),
(22, 1, 1, 7, 'ok i got it', NULL, '2023-03-22 06:29:38', '2023-03-22 06:29:38'),
(23, 1, 1, 7, 'this is attactment', '641aa22b1762b.zip', '2023-03-22 06:37:31', '2023-03-22 06:37:31'),
(24, 8, 2, 7, '<p>admin zip file</p>', '641aa2c717d3f.zip', '2023-03-22 06:40:07', '2023-03-22 06:40:07'),
(33, 25, 1, 9, 'hi', NULL, '2023-05-06 08:27:22', '2023-05-06 08:27:22'),
(34, 1, 2, 14, '<p>Hi.!!</p>', NULL, '2023-05-08 11:25:37', '2023-05-08 11:25:37'),
(35, 23, 1, 14, 'Hello! please let me ensure', NULL, '2023-05-08 11:26:17', '2023-05-08 11:26:17'),
(36, 1, 2, 14, '<p>we have an issue on our site. we will fixed it soon</p>Thanks</p>', NULL, '2023-05-08 11:27:01', '2023-05-08 11:27:01'),
(37, 1, 2, 12, '<p>We have successfully checked your withdrawal request.</p><p>You have given an invalid account statement. please give us a proper statement,</p><p>then we will accept your request.</p><p>Thanks</p>', NULL, '2023-05-08 11:29:57', '2023-05-08 11:29:57'),
(38, 23, 3, 12, '<p>Thanks a lot for your valuable information.</p>', NULL, '2023-05-08 11:30:44', '2023-05-08 11:30:44'),
(39, 1, 2, 16, '<p>if you have a venue event</p><p>then you have to add a ticket from manage ticket option</p><p>Thanks</p>', NULL, '2023-05-08 11:35:58', '2023-05-08 11:35:58'),
(40, 23, 3, 16, '<p>Thank you so much</p><p>now it\'s work properly</p>', NULL, '2023-05-08 11:36:47', '2023-05-08 11:36:47'),
(41, 23, 1, 13, 'hi', NULL, '2023-05-08 11:37:51', '2023-05-08 11:37:51'),
(42, 1, 2, 13, 'what was your payment method?', NULL, '2023-05-08 11:39:49', '2023-05-08 11:39:49'),
(43, 23, 1, 13, 'City Bank', NULL, '2023-05-08 11:40:06', '2023-05-08 11:40:06'),
(44, 1, 2, 13, '<p>Please give the proper info and book again</p><p>Thanks</p>', NULL, '2023-05-08 11:40:25', '2023-05-08 11:40:25'),
(45, 23, 1, 13, 'Thanks.', NULL, '2023-05-08 11:40:42', '2023-05-08 11:40:42'),
(48, 1, 2, 18, '<p>dfsafaf</p>', NULL, '2023-09-23 09:35:55', '2023-09-23 09:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `cookie_alerts`
--

CREATE TABLE `cookie_alerts` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `cookie_alert_status` tinyint UNSIGNED NOT NULL,
  `cookie_alert_btn_text` varchar(255) NOT NULL,
  `cookie_alert_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cookie_alerts`
--

INSERT INTO `cookie_alerts` (`id`, `language_id`, `cookie_alert_status`, `cookie_alert_btn_text`, `cookie_alert_text`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'I Agree', '<p>We use cookies to give you the best online experience.<br>By continuing to browse the site you are agreeing to our use of cookies.</p>', '2021-06-02 06:25:54', '2023-05-20 12:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numeric_code` char(3) DEFAULT NULL,
  `iso2` char(2) DEFAULT NULL,
  `phonecode` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `tld` varchar(255) DEFAULT NULL,
  `native` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `subregion` varchar(255) DEFAULT NULL,
  `timezones` text,
  `translations` text,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `emoji` varchar(191) DEFAULT NULL,
  `emojiU` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  `wikiDataId` varchar(255) DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `count_informations`
--

CREATE TABLE `count_informations` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `amount` int UNSIGNED NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `count_informations`
--

INSERT INTO `count_informations` (`id`, `language_id`, `icon`, `color`, `title`, `amount`, `serial_number`, `created_at`, `updated_at`) VALUES
(5, 8, 'fas fa-user-friends', '24FFCD', 'Qualified Instructors', 20, 1, '2021-10-11 01:20:18', '2022-05-15 00:17:03'),
(6, 8, 'fas fa-globe', 'FFAB74', 'Worldwide Students', 1490, 2, '2021-10-11 01:20:47', '2021-12-19 04:44:42'),
(7, 8, 'fas fa-book-reader', '00FCFF', 'Courses', 100, 3, '2021-10-11 01:21:31', '2021-12-19 04:45:36'),
(8, 8, 'fas fa-calendar-alt', 'FFC924', 'Years\' Experience', 10, 4, '2021-10-11 01:21:55', '2021-12-19 04:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `events` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `events`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(6, 'mega00', 'mega00', 'fixed', '5', NULL, '2023-05-06', '2026-05-13', '2023-05-08 09:26:43', '2023-05-20 04:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `email_verified_at` varchar(255) DEFAULT NULL,
  `verification_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `provider`, `provider_id`, `fname`, `lname`, `email`, `username`, `photo`, `phone`, `address`, `country`, `state`, `city`, `zip_code`, `password`, `status`, `email_verified_at`, `verification_token`, `created_at`, `updated_at`) VALUES
(23, NULL, NULL, 'Zufar', 'Marwah', 'user@gmail.com', 'zufarmarwah', '6457527d067f4.png', '01156344808', '33 Robin Covington Road, Rockingham,nc, 28339  United States', 'Malaysia', 'Pulau Pinang', 'Tasek Gelugor', '13300', '$2y$10$JkfimMYoiNqx9Kc6rfXA2eelUBmvzPZcV8dAtAKkCmDW4BwusSWEG', 1, '2023-05-01 11:50:26', '07eaf3d938eb4b69a6807bc77b7669d8', '2023-05-01 05:50:06', '2024-04-25 06:24:58'),
(33, NULL, NULL, 'ubaTaeCJ', 'ubaTaeCJ', 'testing@example.com', 'ubaTaeCJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ycN4MTL2A7MiCLu1BrH3qur3bZCJ50isCKybAJmf02cuNqcnh.G/W', 1, NULL, '434e7ea6df3eb19e00aa156295fa9201', '2024-05-12 10:35:10', '2024-05-12 10:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` bigint UNSIGNED NOT NULL,
  `total_revenue` float(8,2) DEFAULT '0.00',
  `total_earning` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `total_revenue`, `total_earning`, `created_at`, `updated_at`) VALUES
(1, 11.00, 11.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `organizer_id` bigint DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `date_type` varchar(20) DEFAULT NULL,
  `countdown_status` int DEFAULT '1',
  `start_date` date DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `end_date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) NOT NULL DEFAULT 'no',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `organizer_id`, `thumbnail`, `status`, `date_type`, `countdown_status`, `start_date`, `start_time`, `duration`, `end_date`, `end_time`, `end_date_time`, `created_at`, `updated_at`, `event_type`, `is_featured`, `latitude`, `longitude`) VALUES
(117, 23, '1714902459.png', '1', 'single', 1, '2024-05-27', '07:30', '6h 30m', '2024-05-27', '14:00', '2024-05-27 14:00:00', '2024-05-05 09:47:39', '2024-05-10 04:29:17', 'venue', 'yes', '5.5196023429234025', '100.43451450438685'),
(118, 23, '1715313792.jpg', '1', 'single', 1, '2024-05-18', '08:00', '14h 45m', '2024-05-18', '22:45', '2024-05-18 22:45:00', '2024-05-10 04:03:12', '2024-05-10 04:29:02', 'venue', 'yes', '5.5196023429234025', '100.43451450438685');

-- --------------------------------------------------------

--
-- Table structure for table `event_categories`
--

CREATE TABLE `event_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `language_id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `serial_number` mediumint NOT NULL,
  `is_featured` char(4) NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event_categories`
--

INSERT INTO `event_categories` (`id`, `name`, `language_id`, `image`, `slug`, `status`, `serial_number`, `is_featured`, `created_at`, `updated_at`) VALUES
(32, 'Sports', 8, '6637519dc2b8f.png', 'sports', 1, 1, 'yes', '2024-05-05 09:30:05', '2024-05-05 09:30:05'),
(33, 'Sukan', 23, '663754e810387.png', 'sukan', 1, 1, 'yes', '2024-05-05 09:44:08', '2024-05-05 09:44:08'),
(34, 'Community', 8, '663d9a4b9b68c.png', 'community', 1, 2, 'yes', '2024-05-10 03:53:47', '2024-05-10 03:53:47'),
(38, 'Komuniti', 23, '663da1fd94771.png', 'komuniti', 1, 3, 'yes', '2024-05-10 04:26:37', '2024-05-10 04:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `event_contents`
--

CREATE TABLE `event_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` int NOT NULL,
  `language_id` int NOT NULL,
  `event_category_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext,
  `meta_keywords` text,
  `meta_description` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `google_calendar_id` varchar(255) DEFAULT NULL,
  `refund_policy` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event_contents`
--

INSERT INTO `event_contents` (`id`, `event_id`, `language_id`, `event_category_id`, `title`, `slug`, `description`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `address`, `country`, `state`, `city`, `zip_code`, `google_calendar_id`, `refund_policy`) VALUES
(212, 117, 8, 32, 'Drug Free Run 2024', 'drug-free-run-2024', '<div class=\"tribe-compatibility-container\">\n<div class=\"tribe-common tribe-events tribe-events-view tribe-events-view--widget-countdown tribe-events-widget tribe-common--breakpoint-xsmall tribe-common--breakpoint-medium tribe-common--breakpoint-full\">\n<div class=\"tribe-events-widget-countdown\">\n<h3 class=\"tribe-common-h6 tribe-events-widget-countdown__event-title\"><a class=\"tribe-common-anchor-thin tribe-events-widget-countdown__event-title-link\" href=\"https://www.mypacesport.com/event/drug_free_fun_run2024/\">DRUG FREE FUN RUN 2024</a></h3>\n<p class=\"tribe-common-h6 tribe-common-h--alt tribe-events-widget-countdown__complete\"> </p>\n</div>\n</div>\n</div>\n<p><strong> EVENT INFORMATION</strong></p>\n<p>Flag Off :- 7.30 am</p>\n<p>Age Category : Open</p>\n<p>Runner’s entitlements:</p>\n<ol>\n<li>Light Refreshment</li>\n<li>Lucky Draw</li>\n<li>Sublimation T-shirt</li>\n<li>Medal Upon Completion</li>\n</ol>\n<p><strong> REGISTRATION FEES</strong></p>\n<p>Normal Fun Run Price  – RM35 (Exclude Platform Fee 6%)</p>\n<p>Distance :-</p>\n<p>Fun Run – 5KM (On Road)</p>\n<p>Closing Registration Date: 30/03/2024</p>\n<p><strong> RACE KIT COLLECTION</strong></p>\n<p>Date : 27/04/2024<br />Time :  10.00 am – 7.00 pm </p>\n<p>Venue : Giant Hypermarket Bayan Baru</p>', 'drug free run,free run', 'Free Run', '2024-05-05 09:47:39', '2024-05-05 09:47:39', '78, Lintang Bayan, Bayan Baru, 11900 Bayan Lepas, Pulau Pinang', 'Malaysia', 'Pulau Pinang', 'Bayan Baru', '11900', NULL, 'Return'),
(213, 117, 23, 33, 'Drug Free Run 2024', 'drug-free-run-2024', '<div class=\"tribe-compatibility-container\">\n<div class=\"tribe-common tribe-events tribe-events-view tribe-events-view--widget-countdown tribe-events-widget tribe-common--breakpoint-xsmall tribe-common--breakpoint-medium tribe-common--breakpoint-full\">\n<div class=\"tribe-events-widget-countdown\">\n<h3 class=\"tribe-common-h6 tribe-events-widget-countdown__event-title\"><a class=\"tribe-common-anchor-thin tribe-events-widget-countdown__event-title-link\" href=\"https://www.mypacesport.com/event/drug_free_fun_run2024/\">DRUG FREE FUN RUN 2024</a></h3>\n<p class=\"tribe-common-h6 tribe-common-h--alt tribe-events-widget-countdown__complete\"> </p>\n</div>\n</div>\n</div>\n<p><strong> EVENT INFORMATION</strong></p>\n<p>Flag Off :- 7.30 am</p>\n<p>Age Category : Open</p>\n<p>Runner’s entitlements:</p>\n<ol>\n<li>Light Refreshment</li>\n<li>Lucky Draw</li>\n<li>Sublimation T-shirt</li>\n<li>Medal Upon Completion</li>\n</ol>\n<p><strong> REGISTRATION FEES</strong></p>\n<p>Normal Fun Run Price  – RM35 (Exclude Platform Fee 6%)</p>\n<p>Distance :-</p>\n<p>Fun Run – 5KM (On Road)</p>\n<p>Closing Registration Date: 30/03/2024</p>\n<p><strong> RACE KIT COLLECTION</strong></p>\n<p>Date : 27/04/2024<br />Time :  10.00 am – 7.00 pm </p>\n<p>Venue : Giant Hypermarket Bayan Baru</p>', 'drug free run,free run', 'Free Run', '2024-05-05 09:47:39', '2024-05-05 09:47:39', '78, Lintang Bayan, Bayan Baru, 11900 Bayan Lepas, Pulau Pinang', 'Malaysia', 'Pulau Pinang', 'Bayan Baru', '11900', NULL, 'Return'),
(214, 118, 8, 34, 'Gotong Royong Perdana 2024', 'gotong-royong-perdana-2024', '<p>ROGRAM SEHARI BERSAMA KOMUNITI MUTIARA PERDANA DAN GOTONG ROYONG MEGA PERANGI AEDES.<br class=\"html-br\" /><br class=\"html-br\" />Pejabat Kesihatan Daerah Barat Daya dengan kerjasama Agensi Antidadah Kebangsaan Daerah Barat Daya dan Persatuan Penduduk Mutiara Perdana, Bayan Lepas akan menganjurkan Program Sehari Bersama Komuniti Mutiara Perdana dan Gotong Royong Mega Perangi Aedes seperti ketetapan berikut :<br class=\"html-br\" /><br class=\"html-br\" />Tarikh : 18 Mei 2024 (Sabtu)<br class=\"html-br\" />Masa : 08.00 pagi - 01.00 petang<br class=\"html-br\" />Tempat : Surau Al Mubarak Mutiara, Bayan Lepas<br class=\"html-br\" />___________________________________________<br class=\"html-br\" /><br class=\"html-br\" />Lebih baik cegah. Keprihatinan kepulihan adalah kehidupan. Hubungi talian hotline AADK 1-800-22-2235 atau 019-626 2233 untuk khidmat nasihat, pertanyaan dan aduan. Layari <a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 xggy1nq x1a2a7pz xt0b8zv x1hl2dhg x1fey0fg\" href=\"http://adk.gov.my/?fbclid=IwZXh0bgNhZW0CMTAAAR2J1u1B9b7iT8c5glUwdSWMcy1V7mTylEKwahATxZuoxXqBtg8-Mbo5vO8_aem_AZVM7C5KdOp0QQ8Ik3LViOhebpjZp35rEKOJ-gMrtHGJowfNopXmD9BnXPTAQu0-h8noUi-Wyj4QyZ3aS_NCcB4s\" target=\"_blank\" rel=\"noreferrer noopener\">adk.gov.my</a> ketahui perkhidmatan AADK. Kempen antidadah bersama Jabatan Penerangan Malaysia<br class=\"html-br\" /><br class=\"html-br\" /><a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 xggy1nq x1a2a7pz xt0b8zv x1hl2dhg xzsf02u x1s688f\" href=\"https://www.facebook.com/hashtag/penanglawanancamandadah?__eep__=6&amp;__cft__%5B0%5D=AZXqtTbHTOj9MUjpFcRS-q2JVgfGrnfWa7N6pRu9AnxjAexaZRB9ibtvOqfLCWnOyY4JAamKnxTiNTQTT5R8FMMFzTE4_B5ff7YXgfApvQjBuAf6EyDMp_lQ1J5tMWs9hSPqxaovlvjCjqcL1rRqWXALqskCguMvVEvENLwNucJO_egfmcM12OkSIj7_xOS3jGA&amp;__tn__=*NK*F\">#Penanglawanancamandadah</a><br class=\"html-br\" /><a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 xggy1nq x1a2a7pz xt0b8zv x1hl2dhg xzsf02u x1s688f\" href=\"https://www.facebook.com/hashtag/aadkbaratdaya?__eep__=6&amp;__cft__%5B0%5D=AZXqtTbHTOj9MUjpFcRS-q2JVgfGrnfWa7N6pRu9AnxjAexaZRB9ibtvOqfLCWnOyY4JAamKnxTiNTQTT5R8FMMFzTE4_B5ff7YXgfApvQjBuAf6EyDMp_lQ1J5tMWs9hSPqxaovlvjCjqcL1rRqWXALqskCguMvVEvENLwNucJO_egfmcM12OkSIj7_xOS3jGA&amp;__tn__=*NK*F\">#AADKBaratDaya</a><br class=\"html-br\" /><a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 xggy1nq x1a2a7pz xt0b8zv x1hl2dhg xzsf02u x1s688f\" href=\"https://www.facebook.com/hashtag/pkdbd?__eep__=6&amp;__cft__%5B0%5D=AZXqtTbHTOj9MUjpFcRS-q2JVgfGrnfWa7N6pRu9AnxjAexaZRB9ibtvOqfLCWnOyY4JAamKnxTiNTQTT5R8FMMFzTE4_B5ff7YXgfApvQjBuAf6EyDMp_lQ1J5tMWs9hSPqxaovlvjCjqcL1rRqWXALqskCguMvVEvENLwNucJO_egfmcM12OkSIj7_xOS3jGA&amp;__tn__=*NK*F\">#pkdbd</a><br class=\"html-br\" /><a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 xggy1nq x1a2a7pz xt0b8zv x1hl2dhg xzsf02u x1s688f\" href=\"https://www.facebook.com/hashtag/mutiaraperdana?__eep__=6&amp;__cft__%5B0%5D=AZXqtTbHTOj9MUjpFcRS-q2JVgfGrnfWa7N6pRu9AnxjAexaZRB9ibtvOqfLCWnOyY4JAamKnxTiNTQTT5R8FMMFzTE4_B5ff7YXgfApvQjBuAf6EyDMp_lQ1J5tMWs9hSPqxaovlvjCjqcL1rRqWXALqskCguMvVEvENLwNucJO_egfmcM12OkSIj7_xOS3jGA&amp;__tn__=*NK*F\">#mutiaraperdana</a><br class=\"html-br\" /><a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 xggy1nq x1a2a7pz xt0b8zv x1hl2dhg xzsf02u x1s688f\" href=\"https://www.facebook.com/hashtag/malaysiamadani?__eep__=6&amp;__cft__%5B0%5D=AZXqtTbHTOj9MUjpFcRS-q2JVgfGrnfWa7N6pRu9AnxjAexaZRB9ibtvOqfLCWnOyY4JAamKnxTiNTQTT5R8FMMFzTE4_B5ff7YXgfApvQjBuAf6EyDMp_lQ1J5tMWs9hSPqxaovlvjCjqcL1rRqWXALqskCguMvVEvENLwNucJO_egfmcM12OkSIj7_xOS3jGA&amp;__tn__=*NK*F\">#MalaysiaMadani</a><br class=\"html-br\" /><a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 xggy1nq x1a2a7pz xt0b8zv x1hl2dhg xzsf02u x1s688f\" href=\"https://www.facebook.com/hashtag/lebihbaikcegah?__eep__=6&amp;__cft__%5B0%5D=AZXqtTbHTOj9MUjpFcRS-q2JVgfGrnfWa7N6pRu9AnxjAexaZRB9ibtvOqfLCWnOyY4JAamKnxTiNTQTT5R8FMMFzTE4_B5ff7YXgfApvQjBuAf6EyDMp_lQ1J5tMWs9hSPqxaovlvjCjqcL1rRqWXALqskCguMvVEvENLwNucJO_egfmcM12OkSIj7_xOS3jGA&amp;__tn__=*NK*F\">#LebihBaikCegah</a><br class=\"html-br\" /><a class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 xggy1nq x1a2a7pz xt0b8zv x1hl2dhg xzsf02u x1s688f\" href=\"https://www.facebook.com/hashtag/dadahterkawal2025?__eep__=6&amp;__cft__%5B0%5D=AZXqtTbHTOj9MUjpFcRS-q2JVgfGrnfWa7N6pRu9AnxjAexaZRB9ibtvOqfLCWnOyY4JAamKnxTiNTQTT5R8FMMFzTE4_B5ff7YXgfApvQjBuAf6EyDMp_lQ1J5tMWs9hSPqxaovlvjCjqcL1rRqWXALqskCguMvVEvENLwNucJO_egfmcM12OkSIj7_xOS3jGA&amp;__tn__=*NK*F\">#DadahTerkawal202</a></p>', 'Gotong Raya', 'Lebih baik cegah. Keprihatinan kepulihan adalah kehidupan. Hubungi talian hotline AADK 1-800-22-2235 atau 019-626 2233 untuk khidmat nasihat, pertanyaan dan aduan. Layari adk.gov.my ketahui perkhidmatan AADK. Kempen antidadah bersama Jabatan Penerangan Malaysia', '2024-05-10 04:03:12', '2024-05-10 04:03:12', 'Surau Al Mubarak Mutiara, Bayan Lepas', 'Malaysia', 'Pulau Pinang', 'Bayan Lepas', '11900', NULL, 'Lebih baik cegah. Keprihatinan kepulihan adalah kehidupan. Hubungi talian hotline AADK 1-800-22-2235 atau 019-626 2233 untuk khidmat nasihat, pertanyaan dan aduan. Layari adk.gov.my ketahui perkhidmatan AADK. Kempen antidadah bersama Jabatan Penerangan Malaysia'),
(216, 118, 23, 38, 'Gotong Royong Perdana 2024', 'gotong-royong-perdana-2024', '<p>tewst edesdeswsedwsedwsedwsedwsdewsedwedwsedw3r3rf3</p>', 'Gotong Raya', 'Lebih baik cegah. Keprihatinan kepulihan adalah kehidupan. Hubungi talian hotline AADK 1-800-22-2235 atau 019-626 2233 untuk khidmat nasihat, pertanyaan dan aduan. Layari adk.gov.my ketahui perkhidmatan AADK. Kempen antidadah bersama Jabatan Penerangan Malaysia', '2024-05-10 04:29:02', '2024-05-10 04:29:02', 'Surau Al Mubarak Mutiara, Bayan Lepas', 'Malaysia', 'Pulau Pinang', 'Bayan Lepas', '11900', NULL, 'Lebih baik cegah. Keprihatinan kepulihan adalah kehidupan. Hubungi talian hotline AADK 1-800-22-2235 atau 019-626 2233 untuk khidmat nasihat, pertanyaan dan aduan. Layari adk.gov.my ketahui perkhidmatan AADK. Kempen antidadah bersama Jabatan Penerangan Malaysia');

-- --------------------------------------------------------

--
-- Table structure for table `event_dates`
--

CREATE TABLE `event_dates` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` bigint DEFAULT NULL,
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_dates`
--

INSERT INTO `event_dates` (`id`, `event_id`, `start_date`, `start_time`, `end_date`, `end_time`, `duration`, `start_date_time`, `end_date_time`, `created_at`, `updated_at`) VALUES
(16, 64, '2023-03-27', '14:59', '2023-03-28', '14:59', '1d ', '2023-03-27 14:59:00', '2023-03-28 14:59:00', '2023-03-27 08:59:45', '2023-04-30 06:05:39'),
(17, 64, '2023-03-30', '14:01', '2023-03-31', '14:59', '1d 58m', '2023-03-30 14:01:00', '2023-03-31 14:59:00', '2023-03-27 08:59:45', '2023-04-30 06:05:39'),
(18, 64, '2023-04-03', '14:01', '2023-04-06', '14:00', '2d 23h 59m', '2023-04-03 14:01:00', '2023-04-06 14:00:00', '2023-03-27 08:59:45', '2023-04-30 06:05:39'),
(19, 65, '2023-03-30', '11:39', '2023-03-31', '11:40', '1d 1m', '2023-03-30 11:39:00', '2023-03-31 11:40:00', '2023-03-28 05:41:51', '2023-04-30 11:30:28'),
(20, 65, '2023-04-01', '11:40', '2023-04-02', '01:40', '14h ', '2023-04-01 11:40:00', '2023-04-02 01:40:00', '2023-03-28 05:41:51', '2023-04-30 11:30:28'),
(23, 65, '2023-04-30', '17:32', '2023-05-30', '17:32', '1mo 30d ', '2023-04-30 17:32:00', '2023-05-30 17:32:00', '2023-04-30 11:30:28', '2023-04-30 11:30:28'),
(24, 67, '2023-05-01', '11:51', '2023-05-10', '11:52', '9d 1m', '2023-05-01 11:51:00', '2023-05-10 11:52:00', '2023-05-01 05:53:43', '2023-05-01 15:20:47'),
(25, 67, '2023-05-11', '23:52', '2023-05-22', '11:53', '10d 12h 1m', '2023-05-11 23:52:00', '2023-05-22 11:53:00', '2023-05-01 05:53:43', '2023-05-01 15:20:47'),
(26, 69, '2023-05-01', '12:22', '2023-05-10', '13:22', '9d 1h ', '2023-05-01 12:22:00', '2023-05-10 13:22:00', '2023-05-01 06:24:39', '2023-05-01 15:19:33'),
(27, 69, '2023-05-12', '12:26', '2023-05-22', '17:22', '10d 4h 56m', '2023-05-12 12:26:00', '2023-05-22 17:22:00', '2023-05-01 06:24:39', '2023-05-01 15:19:33'),
(49, 112, '2023-05-09', '17:09', '2023-06-03', '17:09', '25d ', '2023-05-09 17:09:00', '2023-06-03 17:09:00', '2023-05-08 11:12:59', '2023-05-08 11:12:59'),
(50, 112, '2023-05-10', '17:10', '2024-05-23', '17:11', '1y 379d 1m', '2023-05-10 17:10:00', '2024-05-23 17:11:00', '2023-05-08 11:12:59', '2023-05-08 11:12:59'),
(57, 116, '2023-09-22', '03:11', '2023-09-23', '14:30', '1d 11h 19m', '2023-09-22 03:11:00', '2023-09-23 14:30:00', '2023-09-24 08:13:35', '2023-09-24 08:24:29'),
(58, 116, '2023-09-26', '14:15', '2023-09-27', '14:16', '1d 1m', '2023-09-26 14:15:00', '2023-09-27 14:16:00', '2023-09-24 08:13:35', '2023-09-24 08:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `event_features`
--

CREATE TABLE `event_features` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `serial_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event_features`
--

INSERT INTO `event_features` (`id`, `language_id`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(19, 8, 'fa fa-fw fa-heart iconpicker-component', 'Kestimewaan 1', 'Deskripsi Kestimewaan 1', 1, '2024-05-05 09:13:59', '2024-05-05 09:13:59'),
(20, 8, 'fab fa-accusoft', 'Kestimewaan 2', 'Deskripsi Kestimewaan 2', 2, '2024-05-05 09:14:15', '2024-05-05 09:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `event_feature_sections`
--

CREATE TABLE `event_feature_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event_feature_sections`
--

INSERT INTO `event_feature_sections` (`id`, `language_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 8, 'Kestimewaan Skuad Penang', 'Ayat Ringkasan Letak di Sini', '2022-06-06 23:24:33', '2024-05-05 09:14:34'),
(2, 9, 'test arabic sdf', 'text arabic fdsa', '2022-06-06 23:25:08', '2022-06-06 23:25:16'),
(3, 17, 'ميزة الأحداث الرائعة', 'صفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', '2023-01-31 05:48:01', '2023-01-31 05:48:01'),
(4, 22, 'ميزات إيفينتو', 'ل ومن الهادي واشتدّت, فكانت السادس الأراضي فصل ان. قد كان لغزو كنقطة بالرّغم, أن سق', '2023-05-07 11:41:58', '2023-05-11 05:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `event_images`
--

CREATE TABLE `event_images` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` int DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event_images`
--

INSERT INTO `event_images` (`id`, `event_id`, `image`, `created_at`, `updated_at`) VALUES
(210, NULL, '6456350644d9b.jpg', '2023-05-06 11:07:50', '2023-05-06 11:07:50'),
(211, NULL, '6456350644d9b.jpg', '2023-05-06 11:07:50', '2023-05-06 11:07:50'),
(224, 103, '64573bd0cfc99.jpg', '2023-05-07 05:49:04', '2023-05-07 05:55:18'),
(225, 103, '64573bd0d06a9.jpg', '2023-05-07 05:49:04', '2023-05-07 05:55:18'),
(241, 116, '650fef61f0884.jpg', '2023-09-24 08:12:17', '2023-09-24 08:13:35'),
(242, 116, '650fef61f0875.jpg', '2023-09-24 08:12:17', '2023-09-24 08:13:35'),
(243, 116, '650fef62301e7.jpg', '2023-09-24 08:12:18', '2023-09-24 08:13:35'),
(244, 116, '650fef62301ee.jpg', '2023-09-24 08:12:18', '2023-09-24 08:13:35'),
(245, 117, '663755266dac2.jpg', '2024-05-05 09:45:10', '2024-05-05 09:47:39'),
(246, 118, '663d9c41b9525.jpg', '2024-05-10 04:02:09', '2024-05-10 04:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `question`, `answer`, `serial_number`, `created_at`, `updated_at`) VALUES
(5, 8, 'What is an event management and ticket selling system?', 'An event management and ticket selling system is a software platform that helps event organizers manage all aspects of their events, including ticket sales, registration, marketing, and logistics.', 1, '2021-06-26 00:35:52', '2023-05-08 06:08:55'),
(6, 8, 'How does an event management and ticket selling system work?', 'An event management and ticket selling system typically allows event organizers to create event pages, sell tickets online, track registration and attendance, collect payments, and communicate with attendees through email or social media.', 2, '2021-06-26 00:38:14', '2023-05-08 06:09:12'),
(7, 8, 'What are the benefits of using an event management and ticket selling system?', 'The benefits of using an event management and ticket selling system include increased efficiency, reduced administrative workload, improved attendee experience, better data management, and increased revenue potential.', 3, '2021-06-26 00:39:02', '2023-05-08 06:09:28'),
(16, 8, 'What types of events can be managed with an event management and ticket selling system?', 'An event management and ticket selling system can be used for a wide range of events, including conferences, trade shows, concerts, festivals, sports games, and fundraising events.', 4, '2021-06-26 00:35:52', '2023-05-08 06:09:43'),
(17, 8, 'How can event organizers promote their events using an event management and ticket selling system?', 'Event organizers can promote their events using an event management and ticket selling system by creating customized event pages, sending targeted emails to potential attendees, and leveraging social media to reach a wider audience.', 5, '2021-06-26 00:38:14', '2023-05-08 06:10:00'),
(18, 8, 'How can attendees purchase tickets through an event management and ticket selling system?', 'Attendees can purchase tickets through an event management and ticket selling system by visiting the event page, selecting the desired ticket type and quantity, and completing the checkout process online.', 6, '2021-06-26 00:39:02', '2023-05-08 06:10:14'),
(22, 8, 'What payment methods are typically accepted by an event management and ticket selling system?', 'An event management and ticket selling system may accept various payment methods, such as credit cards, debit cards, PayPal, or other online payment systems.', 7, '2023-05-08 06:10:29', '2023-05-08 06:10:29'),
(23, 8, 'Can an event management and ticket selling system help manage event logistics, such as venue setup and staffing?', 'Yes, some event management and ticket selling systems offer features to help event organizers manage logistics, such as creating seating charts, assigning staff roles, and tracking equipment rentals.', 8, '2023-05-08 06:10:44', '2023-05-08 06:10:44'),
(24, 8, 'How can event organizers use data collected through an event management and ticket selling system?', 'Event organizers can use data collected through an event management and ticket selling system to analyze attendance patterns, track marketing effectiveness, and make informed decisions about future events.', 9, '2023-05-08 06:10:57', '2023-05-08 06:10:57'),
(25, 8, 'Are there any drawbacks to using an event management and ticket selling system?', 'Some potential drawbacks of using an event management and ticket selling system include upfront costs, ongoing fees, potential technical issues, and the need for staff training to use the system effectively.', 10, '2023-05-08 06:11:09', '2023-05-08 06:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_color` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `background_color`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(6, 8, '0066FF', 'fas fa-book-reader', 'Highly Qualified Mentors & Instructors', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 3, '2021-10-11 00:11:50', '2022-05-15 00:03:40'),
(7, 8, '8976FF', 'fas fa-book', 'Quizzes, Videos, Code Snippets & More', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 2, '2021-10-11 00:13:02', '2022-05-15 00:02:41'),
(8, 8, '30BCFF', 'fas fa-chalkboard-teacher', 'Course Completion Certificate', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 1, '2021-10-11 00:13:44', '2022-05-15 00:01:54'),
(12, 8, '2ECC71', NULL, 'Drag & Drop Lesson Contents Decoration', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 4, '2022-05-15 00:05:22', '2022-05-15 00:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `footer_contents`
--

CREATE TABLE `footer_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `footer_background_color` varchar(255) DEFAULT NULL,
  `about_company` text,
  `copyright_text` text,
  `footer_logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `footer_contents`
--

INSERT INTO `footer_contents` (`id`, `language_id`, `footer_background_color`, `about_company`, `copyright_text`, `footer_logo`, `created_at`, `updated_at`) VALUES
(1, 8, '011444', '<p>Deskripsi Skuad Penang</p>', '<p>Copyright ©{year}. All Rights Reserved.</p>', '1714901127.png', '2021-06-19 05:57:47', '2024-05-05 09:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `fun_fact_sections`
--

CREATE TABLE `fun_fact_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `fun_fact_sections`
--

INSERT INTO `fun_fact_sections` (`id`, `language_id`, `background_image`, `title`, `created_at`, `updated_at`) VALUES
(3, 8, '61befc8312cee.jpg', 'Some Fun Facts from Us', '2021-10-07 03:23:12', '2021-12-19 03:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `gooogle_calendar_infos`
--

CREATE TABLE `gooogle_calendar_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` bigint DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `google_calendar_event_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint UNSIGNED NOT NULL,
  `endpoint` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `hero_sections`
--

CREATE TABLE `hero_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `first_title` varchar(255) DEFAULT NULL,
  `second_title` varchar(255) DEFAULT NULL,
  `first_button` varchar(255) DEFAULT NULL,
  `first_button_url` varchar(255) DEFAULT NULL,
  `second_button` varchar(255) DEFAULT NULL,
  `second_button_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `hero_sections`
--

INSERT INTO `hero_sections` (`id`, `language_id`, `background_image`, `first_title`, `second_title`, `first_button`, `first_button_url`, `second_button`, `second_button_url`, `video_url`, `image`, `created_at`, `updated_at`) VALUES
(2, 8, '66374d8a57f4a.jpg', 'One Stop Center', 'Hub Sukarelawan Antidadah, Agensi Antidadah Kebangsaan', 'Find Events', 'https://codecanyon.kreativdev.com/coursela/courses', 'Meet Instructors', 'https://codecanyon.kreativdev.com/coursela/instructors', NULL, '61bda9c61892c.png', '2021-11-30 22:30:04', '2024-05-05 09:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `how_works`
--

CREATE TABLE `how_works` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `how_works`
--

INSERT INTO `how_works` (`id`, `language_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 8, 'How to Join Our Programs', '4 Easy Steps', '2022-06-07 00:42:14', '2024-05-05 09:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `how_work_items`
--

CREATE TABLE `how_work_items` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `serial_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `how_work_items`
--

INSERT INTO `how_work_items` (`id`, `language_id`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 8, 'fas fa-user-plus', 'Register your account', 'Easily Create', 1, '2022-06-07 00:45:47', '2024-05-05 09:17:38'),
(2, 8, 'fas fa-plus', 'Bookmark', 'Remember to Join', 2, '2022-06-07 00:48:26', '2024-05-05 09:17:28'),
(3, 8, 'fas fa-cart-arrow-down', 'Register', 'Sign up join as user', 3, '2022-06-07 00:49:09', '2024-05-05 09:17:10'),
(4, 8, 'fas fa-wallet', 'Find events', 'Keep eyeing on our latest events and programme', 1, '2022-06-07 00:49:38', '2024-05-05 09:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` char(255) NOT NULL,
  `direction` tinyint NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `direction`, `is_default`, `created_at`, `updated_at`) VALUES
(8, 'English', 'en', 0, 1, '2021-05-31 05:58:22', '2023-09-24 08:26:14'),
(23, 'Bahasa Melayu', 'ms', 0, 0, '2024-04-28 09:11:25', '2024-04-28 09:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` int NOT NULL,
  `mail_type` varchar(50) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `mail_type`, `mail_subject`, `mail_body`) VALUES
(4, 'verify_email', 'Verify Your Email Address', '<p>Hi <b>{username}</b>,</p><p>We just need to verify your email address before you can access to your dashboard.</p><p>Verify your email address, {verification_link}.</p><p>Thank you.<br />{website_title}</p><p><br /></p>'),
(5, 'reset_password', 'Recover Password of Your Account', '<p>Hi {customer_name},</p><p>We have received a request to reset your password. If you did not make the request, just ignore this email. Otherwise, you can reset your password using this below link.</p><p>{password_reset_link}</p><p>Thanks,<br>{website_title}</p>'),
(9, 'event_booking', 'Event Confirmation', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p><p>You have successfully enrol in the following event.</p><p>Booking Id: #{order_id}<br />Event: {title} </p><p>Also, we have attached an invoice in this mail.</p><p>Best regards.<br />{website_title}</p>'),
(10, 'event_booking_approved', 'Approval of Event Booking', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p><p>Your payment is completed, and we have approved your booking for the following evnent.</p><p>Booking Id: #{order_id}<br /></p><p>Event : {title}</p><p>Also, we have attached an invoice in this mail.</p><p>Best regards.<br />{website_title}</p>'),
(11, 'event_booking_rejected', 'Rejection of Event Booking', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p><p>Your payment is not completed, thus we have rejected your Booking for the following Event.</p><p>Booking Id: #{order_id}<br /></p><p>Event : {title}</p><p>For further information, please do not hesitate to contact us.<br />{website_title}</p>'),
(12, 'product_order', 'Order Confirmation', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p><p>Your Order  has been  successfully Placed.</p><p>Order Id: #{order_id}<br /></p><p>Also, we have attached an invoice in this mail.</p><p>Best regards.<br />{website_title}</p>'),
(13, 'withdraw_approve', 'Confirmation of Withdraw Approve', '<p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\">Hi {organizer_username},</p><p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\">This email confirms that your withdrawal request  {withdraw_id} is approved. </p><p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\">Your current balance is {current_balance}, withdraw amount {withdraw_amount}, charge : {charge},payable amount {payable_amount}</p><p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\">withdraw method : {withdraw_method}. The transaction id is {transaction_id}.</p><p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\"><br /></p><p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\">Best Regards.<br />{website_title}</p>'),
(14, 'withdraw_rejected', 'Withdraw Request Rejected', '<p>Hi {organizer_username},</p><p>This email confirms that your withdrawal request  {withdraw_id} is rejected and the balance added to your account. </p><p>Your current balance is {current_balance}</p><p><br /></p><p>Best Regards.<br />{website_title}</p>'),
(15, 'balance_add', 'Balance Add', '<p>Hi {username}</p><p>{amount} added to your account.</p><p>Your current balance is {current_balance}. </p><p>The transaction id is {transaction_id}.<br /></p><p><br /></p><p>Best Regards.<br />{website_title}<br /></p>'),
(16, 'balance_subtract', 'Balance Subtract', '<p>Hi {username}</p><p>{amount} subtract from your account.</p><p>Your current balance is {current_balance}.</p><p>The transaction id is {transaction_id}.<br /></p><p><br /></p><p>Best Regards.<br />{website_title}</p>'),
(17, 'product_shipping', 'Product Shipping Status', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p><p>Your order shipping status is {status}.</p><p>Order Id: #{order_id}</p><p>Best regards.<br />{website_title}</p>');

-- --------------------------------------------------------

--
-- Table structure for table `menu_builders`
--

CREATE TABLE `menu_builders` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `menus` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `menu_builders`
--

INSERT INTO `menu_builders` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(2, 8, '[{\"type\":\"home\",\"text\":\"Home\",\"target\":\"_self\"},{\"text\":\"Events\",\"href\":\"events\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"events\"},{\"text\":\"Organizers\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"organizers\"},{\"text\":\"Shop\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Shop\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"shop\"},{\"text\":\"Cart\",\"href\":\"shop/cart\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"shop/checkout\"}]},{\"text\":\"Pages\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"About Us\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"about\"},{\"text\":\"Terms & Conditions\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"terms-&-conditions\"},{\"text\":\"Privacy Policy\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"privacy-policy\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2021-12-01 05:32:09', '2023-10-06 05:39:42'),
(7, 23, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Events\",\"href\":\"events\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"events\"},{\"text\":\"Shop\",\"href\":\"shop\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"shop\"},{\"text\":\"Organizers\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"organizers\"},{\"text\":\"Cart\",\"href\":\"shop\\/cart\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2024-04-28 09:11:25', '2024-04-28 09:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2023_03_04_134315_drop_secondary_color_from_basic_settings_table', 1),
(6, '2023_03_05_152403_add_tax_commission_percentage_column_to_bookings_table', 2),
(9, '2023_03_22_115828_add_column_to_conversations_table', 3),
(10, '2023_05_11_150902_create_ticket_contents_table', 4),
(14, '2023_05_13_124521_create_variation_contents_table', 5),
(15, '2023_05_20_154216_add_about_page_title_column_to_page_headings_table', 6),
(16, '2023_05_20_154329_add_meta_keyword_description_column_to_seos_table', 6),
(17, '2023_07_30_094527_add_scan_status_column_to_bookings_table', 7),
(18, '2023_09_30_162759_add_tax_percentage_column_to_product_orders_table', 8),
(19, '2021_02_01_030511_create_payment_invoices_table', 9),
(20, '2023_11_16_062730_add_event_guest_checkout_status_to_basic_settings_table', 9),
(21, '2024_02_07_055018_add_midtrans_payment_gateway_row_to_online_gateways_table', 9),
(22, '2024_02_07_172740_add_iyzico_payment_gateway_into_online_gateways_table', 9),
(23, '2024_02_08_153546_add_paytabs_payment_gateway_into_online_gateways', 9),
(24, '2024_02_10_105443_add_toyyibpay_payment_gateway_into_online_gateways', 9),
(25, '2024_02_10_122829_add_phonepe_payment_gateway_into_online_gateways_table', 9),
(26, '2024_02_10_152845_add_yoco_payment_gateway_into_online_gateways', 9),
(27, '2024_02_10_172724_add_xindit_payment_gateway_into_online_gateways', 9),
(28, '2024_02_11_143939_add_myfatoorah_payment_gateway_into_online_gateways', 9),
(29, '2024_02_12_120007_add_conversation_id_to_event_bookings_table', 9),
(30, '2024_02_12_162617_add_conversation_id_to_product_orders_table', 9),
(31, '2024_02_14_112643_add_perfect_money_payment_gateway_into_online_gateways_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `offline_gateways`
--

CREATE TABLE `offline_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` text,
  `instructions` blob,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 -> gateway is deactive, 1 -> gateway is active.',
  `has_attachment` tinyint(1) NOT NULL COMMENT '0 -> do not need attachment, 1 -> need attachment.',
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `offline_gateways`
--

INSERT INTO `offline_gateways` (`id`, `name`, `short_description`, `instructions`, `status`, `has_attachment`, `serial_number`, `created_at`, `updated_at`) VALUES
(2, 'Citibank', 'A pioneer of both the credit card industry and automated teller machines, Citibank – formerly the City Bank of New York.', 0x3c703e3c7370616e207374796c653d22636f6c6f723a7267622835312c35312c3531293b666f6e742d66616d696c793a2770726f78696d612d6e6f7661272c2073616e732d73657269663b666f6e742d73697a653a313670783b223e412070696f6e656572206f6620626f74682074686520637265646974206361726420696e64757374727920616e64206175746f6d617465642074656c6c6572206d616368696e65732cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f736d61727461737365742e636f6d2f636865636b696e672d6163636f756e742f4369746962616e6b2d62616e6b696e672d726576696577223e4369746962616e6b3c2f613e3c7370616e207374796c653d22636f6c6f723a7267622835312c35312c3531293b666f6e742d66616d696c793a2770726f78696d612d6e6f7661272c2073616e732d73657269663b666f6e742d73697a653a313670783b223ec2a0e2809320666f726d65726c792074686520436974792042616e6b206f66204e657720596f726b20e280932077617320726567617264656420617320616e204561737420436f617374206571756976616c656e7420746f2057656c6c7320466172676f20647572696e672074686520313974682063656e747572792e3c2f7370616e3e3c2f703e, 1, 0, 1, '2021-07-16 22:41:59', '2023-05-20 07:01:34'),
(3, 'Bank of America', 'Bank of America has 4,265 branches in the country, only about 700 fewer than Chase. It started as a small institution serving immigrants in San Francisco.', 0x3c703e3c7370616e207374796c653d22636f6c6f723a7267622835312c35312c3531293b666f6e742d66616d696c793a2770726f78696d612d6e6f7661272c2073616e732d73657269663b666f6e742d73697a653a313670783b223e576974682024312e38207472696c6c696f6e20696e20636f6e736f6c696461746564206173736574732cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f736d61727461737365742e636f6d2f636865636b696e672d6163636f756e742f62616e6b2d6f662d616d65726963612d726576696577223e42616e6b206f6620416d65726963613c2f613e3c7370616e207374796c653d22636f6c6f723a7267622835312c35312c3531293b666f6e742d66616d696c793a2770726f78696d612d6e6f7661272c2073616e732d73657269663b666f6e742d73697a653a313670783b223e206973207365636f6e64206f6e20746865206c6973742e204974732068656164717561727465727320696e20436861726c6f7474652c204e6f727468204361726f6c696e612c2073696e676c6568616e6465646c79206d616b657320746861742063697479206f6e65206f662074686520626967676573742066696e616e6369616c2063656e7465727320696e2074686520636f756e7472792e3c2f7370616e3e3c2f703e, 1, 1, 2, '2021-07-16 22:43:19', '2023-05-20 07:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `online_gateways`
--

CREATE TABLE `online_gateways` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `information` mediumtext NOT NULL,
  `status` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `online_gateways`
--

INSERT INTO `online_gateways` (`id`, `name`, `keyword`, `information`, `status`) VALUES
(1, 'PayPal', 'paypal', '{\"sandbox_status\":\"0\",\"client_id\":\"AVYKFEw63FtDt9aeYOe9biyifNI56s2Hc2F1Us11hWoY5GMuegipJRQBfWLiIKNbwQ5tmqKSrQTU3zB3\",\"client_secret\":\"EJY0qOKliVg7wKsR3uPN7lngr9rL1N7q4WV0FulT1h4Fw3_e5Itv1mxSdbtSUwAaQoXQFgq-RLlk_sQu\"}', 0),
(2, 'Instamojo', 'instamojo', '{\"sandbox_status\":\"1\",\"key\":\"\",\"token\":\"\"}', 0),
(3, 'Paystack', 'paystack', '{\"key\":\"\"}', 0),
(4, 'Flutterwave', 'flutterwave', '{\"public_key\":\"\",\"secret_key\":\"\"}', 0),
(5, 'Razorpay', 'razorpay', '{\"key\":\"\",\"secret\":\"\"}', 0),
(6, 'MercadoPago', 'mercadopago', '{\"sandbox_status\":\"1\",\"token\":\"\"}', 0),
(7, 'Mollie', 'mollie', '{\"key\":\"\"}', 0),
(8, 'Stripe', 'stripe', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\"}', 0),
(9, 'Paytm', 'paytm', '{\"environment\":\"local\",\"merchant_key\":\"\",\"merchant_mid\":\"\",\"merchant_website\":\"\",\"industry_type\":\"\"}', 0),
(10, 'Midtrans', 'midtrans', '{\"server_key\":null,\"is_production\":0}', 0),
(11, 'Iyzico', 'iyzico', '{\"api_key\":null,\"secret_key\":null,\"sandbox_status\":1}', 0),
(12, 'Paytabs', 'paytabs', '{\"profile_id\":null,\"server_key\":null,\"api_endpoint\":null,\"country\":null}', 0),
(13, 'Toyyibpay', 'toyyibpay', '{\"sandbox_status\":1,\"secret_key\":null,\"category_code\":null}', 0),
(14, 'Phonepe', 'phonepe', '{\"sandbox_status\":null,\"merchant_id\":null,\"salt_key\":null,\"salt_index\":null}', 0),
(15, 'Yoco', 'yoco', '{\"secret_key\":null}', 0),
(16, 'Xendit', 'xendit', '{\"secret_key\":null}', 0),
(17, 'Myfatoorah', 'myfatoorah', '{\"sandbox_status\":null,\"token\":null}', 0),
(18, 'Perfect Money', 'perfect_money', '{\"perfect_money_wallet_id\":null}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `summery` text,
  `description` longtext,
  `price` decimal(8,2) DEFAULT NULL,
  `previous_price` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `organizers`
--

CREATE TABLE `organizers` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `amount` float DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `organizers`
--

INSERT INTO `organizers` (`id`, `photo`, `email`, `phone`, `username`, `password`, `status`, `amount`, `email_verified_at`, `facebook`, `twitter`, `linkedin`, `created_at`, `updated_at`) VALUES
(23, '6637568365c98.png', 'organizer@gmail.com', '018383333', 'organizer', '$2y$10$CZbklNRf4hhCSwhiYn0mY.urDvH0yfQrN5nP0DkAMFUVdTDbEoz3e', '1', 0, '2023-05-02 09:50:40', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', '2023-05-02 09:50:29', '2024-05-05 09:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `organizer_infos`
--

CREATE TABLE `organizer_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint DEFAULT NULL,
  `organizer_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizer_infos`
--

INSERT INTO `organizer_infos` (`id`, `language_id`, `organizer_id`, `name`, `country`, `city`, `state`, `zip_code`, `address`, `details`, `designation`, `created_at`, `updated_at`) VALUES
(2, 8, 20, 'Hossain', 'Bangladesh', 'Dhaka', 'North Carolina', '1230', 'House no 3, Road 5/c, sector 11, Uttara, Dhaka, Bangladesh', 'Hi there! I\'m ChatSonic, an AI Chatbot that uses the latest and most advanced natural language processing technology to answer your questions accurately and informatively. I\'m here to help you with your questions about yourself. Here is a list of 101 facts about myself: I love to start numbering from zero instead of one, I love to take photographs wherever I go, I love harmony, I love martial arts, I can eat same food, day-in-day-out and not get bored, I can listen to same song non-stop in loop for days and still enjoy it, I can\'t live without access to my linux box,', 'fsadfaf', '2023-01-09 12:01:26', '2023-01-12 06:07:10'),
(3, 17, 20, 'Hossain', 'Bangladesh', 'Dhaka', 'North Carolina', '1230', 'House no 3, Road 5/c, sector 11, Uttara, Dhaka, Bangladesh', 'Hi there! I\'m ChatSonic, an AI Chatbot that uses the latest and most advanced natural language processing technology to answer your questions accurately and informatively. I\'m here to help you with your questions about yourself. Here is a list of 101 facts about myself: I love to start numbering from zero instead of one, I love to take photographs wherever I go, I love harmony, I love martial arts, I can eat same food, day-in-day-out and not get bored, I can listen to same song non-stop in loop for days and still enjoy it, I can\'t live without access to my linux box,', 'fsadfaf', '2023-01-09 12:33:08', '2023-01-12 06:07:10'),
(4, 8, 18, 'Fahad Ahmad Shemul', 'Bangladesh', 'Dhaka', 'North Carolina', '1230', 'House no 3, Road 5/c, sector 11, Uttara', 'opt to that kind of lifestyle, I would rather sit alone on my a$$ with a book than booze and party, I would rather play exhausting sport than sit on my a$$ and read a book, I love the fragrance of wet mud, I like to dream, I am a teetotaler, and this bugs a lot of my buddies, If God gave me the power to remove any 3 vices from the world, I would remove: Politicians/Politics Greed and Jealousy, In my view breathing techniques, are the most advanced form of exercises. I have been trained in a few of these techniques, and someday I\'ll learn and', 'fsadfaf', '2023-01-12 06:07:40', '2023-01-21 10:34:33'),
(5, 17, 18, 'Fahad Ahmad Shemul', 'Bangladesh', 'Dhaka', 'North Carolina', '1230', 'House no 3, Road 5/c, sector 11, Uttara, Dhaka, Bangladesh', 'opt to that kind of lifestyle, I would rather sit alone on my a$$ with a book than booze and party, I would rather play exhausting sport than sit on my a$$ and read a book, I love the fragrance of wet mud, I like to dream, I am a teetotaler, and this bugs a lot of my buddies, If God gave me the power to remove any 3 vices from the world, I would remove: Politicians/Politics Greed and Jealousy, In my view breathing techniques, are the most advanced form of exercises. I have been trained in a few of these techniques, and someday I\'ll learn and', 'fsadfaf', '2023-01-12 06:07:40', '2023-01-21 10:34:47'),
(6, 8, 21, 'Lamar Wilder', 'Dolore quibusdam aut', 'Omnis sit voluptas m', 'Et dolor eiusmod eni', '93092', 'Autem id in aliqua', 'Culpa dolore velit', 'Ut veniam et dolore', '2023-01-21 06:59:11', '2023-01-21 06:59:11'),
(7, 17, 21, 'Lamar Wilder', 'Dolore quibusdam aut', 'Omnis sit voluptas m', 'Et dolor eiusmod eni', '93092', 'Autem id in aliqua', 'Culpa dolore velit', 'Ut veniam et dolore', '2023-01-21 06:59:11', '2023-01-21 06:59:11'),
(8, 8, 22, 'Talon Beard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01 09:03:40', '2023-05-01 09:03:40'),
(9, 8, 23, 'AADK Pulau Pinang', 'Malaysia', 'Georgetown', 'Pulau Pinang', '13300', 'Jalan Anson', 'Maklumat Di Sini', 'Admin', '2023-05-02 09:50:29', '2024-05-05 09:50:59'),
(10, 22, 23, 'جوناس', 'الولايات المتحدة الأمريكية', 'ريدسبورو', 'نورث كارولينا', '05350', 'ريدسبورو ، نورث كارولينا ، الولايات المتحدة', 'من بفرض يتعلّق فعل, كل جهة هامش مارد وإقامة. أم بلا وبعد يقوم ومضى, خطّة لعدم ا\r\nلأحمر وفي أي, كُلفة أفريقيا بمعارضة نفس قد. دول تم إعلان الأمم الإقتصادية, مايو أهّل استطاعوا قام كل. أخر قد وحتى أطراف الجنوب.', 'الرئيس التنفيذي', '2023-05-02 09:51:44', '2023-05-07 11:03:02'),
(11, 27, 23, 'Fahad Ahmad Shemul', 'Bangladesh', 'Dhaka', 'North Carolina', '1230', 'House no 3, Road 5/c, sector 11, Uttara, Dhaka, Bangladesh', NULL, 'fsadfaf', '2023-05-02 09:51:44', '2023-05-02 09:51:44'),
(12, 8, 24, 'Ken Champlin', 'Australia', 'Sydney', 'New South Wales', '59154', 'Elizabeth Bay NSW 2011, Sydney, Australia', 'While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', 'ceo of abc', '2023-05-07 10:53:07', '2023-05-11 05:45:20'),
(13, 22, 24, 'ماجي برينس', 'أستراليا', 'سيدني', 'نيو ساوث ويلز', '59154', 'إليزابيث باي نيو ساوث ويلز 2011, سيدني, أستراليا', 'إبّان شواطيء سنغافورة أي ذلك, بل ومن الهادي واشتدّت, فكانت السادس الأراضي فصل ان. قد كان لغزو كنقطة بالرّغم, أن سقوط إحكام ويتّفق بين, أم جُل النفط والإتحاد التغييرات. عل فقد لليابان الأوروبية،, ودول كانت واحدة أم لكل, لم به، تحرير المنتصر. حصدت بالرغم وأكثرها حيث ان, عل فقد اوروبا والديون. مكن أم وبدأت ا استطاعوا, ثم كانت مهمّات بعض. بـ يتمكن الإمداد به،, أم ولم واستمرت المتساقطة،, شدّت لدحر تكبّد عل أما.', 'الرئيس التنفيذي لشركة عمار', '2023-05-07 10:53:07', '2023-05-07 10:53:07'),
(14, 8, 25, 'Ambrose Thiel', 'United States', 'Columbus', 'Ohio', '24855', 'Columbus, Ohio, United States', 'While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', 'Executive', '2023-05-07 10:57:11', '2023-05-11 05:44:46'),
(15, 22, 25, 'جوسلين كاش', 'الولايات المتحدة الأمريكية', 'كولومبوس', 'أوهايو', '24855', 'كولومبوس ، أوهايو ، الولايات المتحدة', 'وبغطاء الثقيلة الإكتفاء بال كل, ٣٠ انه الهادي محاولات الأهداف. ساعة بمباركة اليابان، أما من, وسفن ليبين المضي قام مع. حتى في بأضرار باستحداث. بحق وقبل وفنلندا اقتصادية كل, تسبب الأوربيين كلا كل. تطوير الساحة ا حيث بل, يقوم قائمة العظمى لمّ ان, مما أي دفّة وحتّى.', 'تنفيذي', '2023-05-07 10:57:11', '2023-05-07 10:57:11'),
(16, 8, 26, 'Amber Cannon', 'United States', 'Tonopah', 'North Carolina', '69114', 'Tonopah, North Carolina, United States', 'Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.', 'Chief marketing officer', '2023-05-07 11:01:23', '2023-05-07 11:01:23'),
(17, 22, 26, 'مدفع العنبر', 'الولايات المتحدة الأمريكية', 'تونوباه', 'نورث كارولينا', '69114', 'تونوباه ، كارولاينا الشمالية ، الولايات المتحدة', 'إبّان شواطيء سنغافورة أي ذلك, بل ومن الهادي واشتدّت, فكانت السادس الأراضي فصل ان. قد كان لغزو كنقطة بالرّغم, أن سقوط إحكام ويتّفق بين, أم جُل النفط والإتحاد التغييرات. عل فقد لليابان الأوروبية،, ودول كانت واحدة أم لكل, لم به، تحرير المنتصر. حصدت بالرغم وأكثرها حيث ان, عل فقد اوروبا والديون. مكن أم وبدأت ا استطاعوا, ثم كانت مهمّات بعض. بـ يتمكن الإمداد به،, أم ولم واستمرت المتساقطة،, شدّت لدحر تكبّد عل أما.', 'الرئيس التنفيذي للتسويق', '2023-05-07 11:01:23', '2023-05-07 11:01:23'),
(18, 8, 27, 'Burke Watts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11 05:59:10', '2023-05-11 05:59:10'),
(19, 23, 23, 'AADK Pulau Pinang', 'Malaysia', 'Georgetown', 'Pulau Pinang', '13300', 'Jalan Anson', 'Maklumat Di Sini', 'Admin', '2024-05-05 09:50:59', '2024-05-05 09:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `status`, `created_at`, `updated_at`) VALUES
(14, 1, '2021-10-18 02:33:45', '2021-10-18 02:33:45'),
(16, 1, '2023-05-20 04:53:32', '2023-05-20 04:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

CREATE TABLE `page_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `page_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` blob NOT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `page_contents`
--

INSERT INTO `page_contents` (`id`, `language_id`, `page_id`, `title`, `slug`, `content`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(30, 8, 14, 'Terms & Conditions', 'terms-&-conditions', 0x3c70207374796c653d22636f6c6f723a233734373437343b666f6e742d66616d696c793a527562696b2c2073616e732d73657269663b223e57656c636f6d6520746f204576656e746f2e205468657365207465726d7320616e6420636f6e646974696f6e73206f75746c696e65207468652072756c657320616e6420726567756c6174696f6e7320666f722074686520757365206f66206f757220776562736974652e3c2f703e0a2020202020200a2020202020203c68353e312e20416363657074616e6365206f66205465726d733c2f68353e0a2020202020203c70207374796c653d22636f6c6f723a233734373437343b666f6e742d66616d696c793a527562696b2c2073616e732d73657269663b223e427920616363657373696e6720616e64207573696e67206f757220776562736974652c20796f7520616772656520746f20626520626f756e64206279207468657365207465726d7320616e6420636f6e646974696f6e732e20496620796f7520646f206e6f7420616772656520746f207468657365207465726d7320616e6420636f6e646974696f6e732c20796f752073686f756c64206e6f7420757365206f757220776562736974652e3c2f703e0a2020202020200a2020202020203c68353e322e20496e74656c6c65637475616c2050726f70657274793c2f68353e0a2020202020203c70207374796c653d22636f6c6f723a233734373437343b666f6e742d66616d696c793a527562696b2c2073616e732d73657269663b223e416c6c20696e74656c6c65637475616c2070726f70657274792072696768747320696e20746865207765627369746520616e642074686520636f6e74656e74207075626c6973686564206f6e2069742c20696e636c7564696e6720627574206e6f74206c696d6974656420746f20636f7079726967687420616e642074726164656d61726b732c20617265206f776e6564206279207573206f72206f7572206c6963656e736f72732e20596f75206d6179206e6f742075736520616e79206f66206f757220696e74656c6c65637475616c2070726f706572747920776974686f7574206f7572207072696f72207772697474656e20636f6e73656e742e3c2f703e0a2020202020200a2020202020203c68353e332e205573657220436f6e74656e743c2f68353e0a2020202020203c70207374796c653d22636f6c6f723a233734373437343b666f6e742d66616d696c793a527562696b2c2073616e732d73657269663b223e4279207375626d697474696e6720616e7920636f6e74656e7420746f206f757220776562736974652c20796f75206772616e74207573206120776f726c64776964652c206e6f6e2d6578636c75736976652c20726f79616c74792d66726565206c6963656e736520746f207573652c20726570726f647563652c20646973747269627574652c20616e6420646973706c6179207375636820636f6e74656e7420696e20616e79206d6564696120666f726d61747320616e64207468726f75676820616e79206d65646961206368616e6e656c732e3c2f703e0a2020202020200a2020202020203c68353e342e20446973636c61696d6572206f662057617272616e746965733c2f68353e0a2020202020203c70207374796c653d22636f6c6f723a233734373437343b666f6e742d66616d696c793a527562696b2c2073616e732d73657269663b223e4f7572207765627369746520616e642074686520636f6e74656e74207075626c6973686564206f6e206974206172652070726f7669646564206f6e20616e202261732069732220616e642022617320617661696c61626c65222062617369732e20576520646f206e6f74206d616b6520616e792077617272616e746965732c2065787072657373206f7220696d706c6965642c20726567617264696e672074686520776562736974652c20696e636c7564696e6720627574206e6f74206c696d6974656420746f207468652061636375726163792c2072656c696162696c6974792c206f7220737569746162696c697479206f662074686520636f6e74656e7420666f7220616e7920706172746963756c617220707572706f73652e3c2f703e0a2020202020200a2020202020203c68353e352e204c696d69746174696f6e206f66204c696162696c6974793c2f68353e0a2020202020203c70207374796c653d22636f6c6f723a233734373437343b666f6e742d66616d696c793a527562696b2c2073616e732d73657269663b223e5765207368616c6c206e6f74206265206c6961626c6520666f7220616e792064616d616765732c20696e636c7564696e6720627574206e6f74206c696d6974656420746f206469726563742c20696e6469726563742c20696e636964656e74616c2c2070756e69746976652c20616e6420636f6e73657175656e7469616c2064616d616765732c2061726973696e672066726f6d2074686520757365206f7220696e6162696c69747920746f20757365206f75722077656273697465206f722074686520636f6e74656e74207075626c6973686564206f6e2069742e3c2f703e0a2020202020200a2020202020203c68353e362e204d6f64696669636174696f6e7320746f205465726d7320616e6420436f6e646974696f6e733c2f68353e0a2020202020203c70207374796c653d22636f6c6f723a233734373437343b666f6e742d66616d696c793a527562696b2c2073616e732d73657269663b223e576520726573657276652074686520726967687420746f206d6f64696679207468657365207465726d7320616e6420636f6e646974696f6e7320617420616e792074696d6520776974686f7574207072696f72206e6f746963652e20596f757220636f6e74696e75656420757365206f66206f7572207765627369746520616674657220616e792073756368206d6f64696669636174696f6e7320696e6469636174657320796f757220616363657074616e6365206f6620746865206d6f646966696564207465726d7320616e6420636f6e646974696f6e732e3c2f703e0a2020202020200a2020202020203c68353e372e20476f7665726e696e67204c617720616e64204a7572697364696374696f6e3c2f68353e0a2020202020203c70207374796c653d22636f6c6f723a233734373437343b666f6e742d66616d696c793a527562696b2c2073616e732d73657269663b223e5468657365207465726d7320616e6420636f6e646974696f6e73207368616c6c20626520676f7665726e656420627920616e6420636f6e73747275656420696e206163636f7264616e6365207769746820746865206c617773206f6620746865206a7572697364696374696f6e20696e207768696368207765206f7065726174652c20776974686f757420676976696e672065666665637420746f20616e79207072696e6369706c6573206f6620636f6e666c69637473206f66206c61772e20416e79206c6567616c2070726f63656564696e67732061726973696e67206f7574206f66206f7220696e20636f6e6e656374696f6e2077697468207468657365207465726d7320616e6420636f6e646974696f6e73207368616c6c2062652062726f7567687420736f6c656c7920696e2074686520636f75727473206c6f636174656420696e20746865206a7572697364696374696f6e20696e207768696368207765206f7065726174652e3c2f703e0a2020202020200a2020202020203c68353e382e205465726d696e6174696f6e3c2f68353e0a2020202020203c70207374796c653d22636f6c6f723a233734373437343b666f6e742d66616d696c793a527562696b2c2073616e732d73657269663b223e5765206d6179207465726d696e617465206f722073757370656e6420796f75722061636365737320746f206f7572207765627369746520696d6d6564696174656c792c20776974686f7574207072696f72206e6f74696365206f72206c696162696c6974792c20666f7220616e7920726561736f6e2077686174736f657665722c20696e636c7564696e6720776974686f7574206c696d69746174696f6e20696620796f7520627265616368207468657365207465726d7320616e6420636f6e646974696f6e732e3c2f703e0a2020202020200a2020202020203c68353e392e20436f6e7461637420496e666f726d6174696f6e3c2f68353e0a2020202020203c70207374796c653d22636f6c6f723a233734373437343b666f6e742d66616d696c793a527562696b2c2073616e732d73657269663b223e496620796f75206861766520616e79207175657374696f6e73206f7220636f6d6d656e74732061626f7574207468657365207465726d7320616e6420636f6e646974696f6e732c20706c6561736520636f6e7461637420757320617420696e666f406576656e746f2e636f6d2e3c2f703e, 'terms', 'Unless otherwise stated, Evento and/or its licensors own the intellectual property rights for all material on Evento. All intellectual property rights are reserved. You may access this from Evento for your own personal use subjected to restrictions set in these terms and conditions.', '2021-10-18 02:33:45', '2023-05-18 08:11:05'),
(39, 8, 16, 'Privacy Policy', 'privacy-policy', 0x3c703e5072697661637920506f6c6963793c2f703e0d0a3c703e54686973205072697661637920506f6c69637920646573637269626573204f757220706f6c696369657320616e642070726f63656475726573206f6e2074686520636f6c6c656374696f6e2c2075736520616e6420646973636c6f73757265206f6620596f757220696e666f726d6174696f6e207768656e20596f752075736520746865205365727669636520616e642074656c6c7320596f752061626f757420596f757220707269766163792072696768747320616e6420686f7720746865206c61772070726f746563747320596f752e3c2f703e0d0a3c703e57652075736520596f757220506572736f6e616c206461746120746f2070726f7669646520616e6420696d70726f76652074686520536572766963652e204279207573696e672074686520536572766963652c20596f7520616772656520746f2074686520636f6c6c656374696f6e20616e6420757365206f6620696e666f726d6174696f6e20696e206163636f7264616e636520776974682074686973205072697661637920506f6c6963792ec2a03c2f703e0d0a3c68343e496e746572707265746174696f6e3c2f68343e0d0a3c703e54686520776f726473206f662077686963682074686520696e697469616c206c6574746572206973206361706974616c697a65642068617665206d65616e696e677320646566696e656420756e6465722074686520666f6c6c6f77696e6720636f6e646974696f6e732e2054686520666f6c6c6f77696e6720646566696e6974696f6e73207368616c6c2068617665207468652073616d65206d65616e696e67207265676172646c657373206f66207768657468657220746865792061707065617220696e2073696e67756c6172206f7220696e20706c7572616c2e3c2f703e0d0a3c68343e446566696e6974696f6e733c2f68343e0d0a3c703e466f722074686520707572706f736573206f662074686973205072697661637920506f6c6963793a3c2f703e0d0a3c756c3e0d0a3c6c693e0d0a3c703e3c7374726f6e673e4163636f756e743c2f7374726f6e673e206d65616e73206120756e69717565206163636f756e74206372656174656420666f7220596f7520746f20616363657373206f75722053657276696365206f72207061727473206f66206f757220536572766963652e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e416666696c696174653c2f7374726f6e673e206d65616e7320616e20656e74697479207468617420636f6e74726f6c732c20697320636f6e74726f6c6c6564206279206f7220697320756e64657220636f6d6d6f6e20636f6e74726f6c207769746820612070617274792c2077686572652022636f6e74726f6c22206d65616e73206f776e657273686970206f6620353025206f72206d6f7265206f6620746865207368617265732c2065717569747920696e746572657374206f72206f74686572207365637572697469657320656e7469746c656420746f20766f746520666f7220656c656374696f6e206f66206469726563746f7273206f72206f74686572206d616e6167696e6720617574686f726974792e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e436f6d70616e793c2f7374726f6e673e2028726566657272656420746f20617320656974686572202274686520436f6d70616e79222c20225765222c2022557322206f7220224f75722220696e20746869732041677265656d656e74292072656665727320746f204576656e746f2e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e436f6f6b6965733c2f7374726f6e673e2061726520736d616c6c2066696c657320746861742061726520706c61636564206f6e20596f757220636f6d70757465722c206d6f62696c6520646576696365206f7220616e79206f7468657220646576696365206279206120776562736974652c20636f6e7461696e696e67207468652064657461696c73206f6620596f75722062726f7773696e6720686973746f7279206f6e2074686174207765627369746520616d6f6e6720697473206d616e7920757365732e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e436f756e7472793c2f7374726f6e673e2072656665727320746f3a20416c61736b612c20556e69746564205374617465733c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e4465766963653c2f7374726f6e673e206d65616e7320616e792064657669636520746861742063616e206163636573732074686520536572766963652073756368206173206120636f6d70757465722c20612063656c6c70686f6e65206f722061206469676974616c207461626c65742e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e506572736f6e616c20446174613c2f7374726f6e673e20697320616e7920696e666f726d6174696f6e20746861742072656c6174657320746f20616e206964656e746966696564206f72206964656e7469666961626c6520696e646976696475616c2e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e536572766963653c2f7374726f6e673e2072656665727320746f2074686520576562736974652e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e536572766963652050726f76696465723c2f7374726f6e673e206d65616e7320616e79206e61747572616c206f72206c6567616c20706572736f6e2077686f2070726f636573736573207468652064617461206f6e20626568616c66206f662074686520436f6d70616e792e2049742072656665727320746f2074686972642d706172747920636f6d70616e696573206f7220696e646976696475616c7320656d706c6f7965642062792074686520436f6d70616e7920746f20666163696c69746174652074686520536572766963652c20746f2070726f76696465207468652053657276696365206f6e20626568616c66206f662074686520436f6d70616e792c20746f20706572666f726d2073657276696365732072656c6174656420746f207468652053657276696365206f7220746f206173736973742074686520436f6d70616e7920696e20616e616c797a696e6720686f7720746865205365727669636520697320757365642e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e54686972642d706172747920536f6369616c204d6564696120536572766963653c2f7374726f6e673e2072656665727320746f20616e792077656273697465206f7220616e7920736f6369616c206e6574776f726b2077656273697465207468726f756768207768696368206120557365722063616e206c6f6720696e206f722063726561746520616e206163636f756e7420746f207573652074686520536572766963652e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e557361676520446174613c2f7374726f6e673e2072656665727320746f206461746120636f6c6c6563746564206175746f6d61746963616c6c792c206569746865722067656e6572617465642062792074686520757365206f66207468652053657276696365206f722066726f6d20746865205365727669636520696e66726173747275637475726520697473656c662028666f72206578616d706c652c20746865206475726174696f6e206f6620612070616765207669736974292e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e576562736974653c2f7374726f6e673e2072656665727320746f204576656e746f2c2061636365737369626c652066726f6d203c6120687265663d2268747470733a2f2f636f646563616e796f6e382e6b7265617469766465762e636f6d2f6576656e746f223e68747470733a2f2f636f646563616e796f6e382e6b7265617469766465762e636f6d2f6576656e746f3c2f613e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e596f753c2f7374726f6e673e206d65616e732074686520696e646976696475616c20616363657373696e67206f72207573696e672074686520536572766963652c206f722074686520636f6d70616e792c206f72206f74686572206c6567616c20656e74697479206f6e20626568616c66206f66207768696368207375636820696e646976696475616c20697320616363657373696e67206f72207573696e672074686520536572766963652c206173206170706c696361626c652e3c2f703e0d0a3c2f6c693e0d0a3c2f756c3e0d0a3c703e436f6c6c656374696e6720616e64205573696e6720596f757220506572736f6e616c20446174613c2f703e0d0a3c703ec2a03c2f703e0d0a3c68343e3c7370616e207374796c653d22666f6e742d73697a653a312e3033373572656d3b666f6e742d7765696768743a626f6c643b223e506572736f6e616c20446174613c2f7370616e3e3c2f68343e0d0a3c703e5768696c65207573696e67204f757220536572766963652c205765206d61792061736b20596f7520746f2070726f766964652055732077697468206365727461696e20706572736f6e616c6c79206964656e7469666961626c6520696e666f726d6174696f6e20746861742063616e206265207573656420746f20636f6e74616374206f72206964656e7469667920596f752e20506572736f6e616c6c79206964656e7469666961626c6520696e666f726d6174696f6e206d617920696e636c7564652c20627574206973206e6f74206c696d6974656420746f3a3c2f703e0d0a3c756c3e0d0a3c6c693e0d0a3c703e456d61696c20616464726573733c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e4669727374206e616d6520616e64206c617374206e616d653c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e50686f6e65206e756d6265723c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e416464726573732c2053746174652c2050726f76696e63652c205a49502f506f7374616c20636f64652c20436974793c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e557361676520446174613c2f703e0d0a3c2f6c693e0d0a3c2f756c3e0d0a3c68343e557361676520446174613c2f68343e0d0a3c703e5573616765204461746120697320636f6c6c6563746564206175746f6d61746963616c6c79207768656e207573696e672074686520536572766963652e3c2f703e0d0a3c703e55736167652044617461206d617920696e636c75646520696e666f726d6174696f6e207375636820617320596f757220446576696365277320496e7465726e65742050726f746f636f6c20616464726573732028652e672e2049502061646472657373292c2062726f7773657220747970652c2062726f777365722076657273696f6e2c20746865207061676573206f66206f75722053657276696365207468617420596f752076697369742c207468652074696d6520616e642064617465206f6620596f75722076697369742c207468652074696d65207370656e74206f6e2074686f73652070616765732c20756e6971756520646576696365206964656e7469666965727320616e64206f7468657220646961676e6f7374696320646174612e3c2f703e0d0a3c703e5768656e20596f7520616363657373207468652053657276696365206279206f72207468726f7567682061206d6f62696c65206465766963652c205765206d617920636f6c6c656374206365727461696e20696e666f726d6174696f6e206175746f6d61746963616c6c792c20696e636c7564696e672c20627574206e6f74206c696d6974656420746f2c207468652074797065206f66206d6f62696c652064657669636520596f75207573652c20596f7572206d6f62696c652064657669636520756e697175652049442c207468652049502061646472657373206f6620596f7572206d6f62696c65206465766963652c20596f7572206d6f62696c65206f7065726174696e672073797374656d2c207468652074797065206f66206d6f62696c6520496e7465726e65742062726f7773657220596f75207573652c20756e6971756520646576696365206964656e7469666965727320616e64206f7468657220646961676e6f7374696320646174612e3c2f703e0d0a3c703e5765206d617920616c736f20636f6c6c65637420696e666f726d6174696f6e207468617420596f75722062726f777365722073656e6473207768656e6576657220596f75207669736974206f75722053657276696365206f72207768656e20596f7520616363657373207468652053657276696365206279206f72207468726f7567682061206d6f62696c65206465766963652e3c2f703e0d0a3c68343e496e666f726d6174696f6e2066726f6d2054686972642d506172747920536f6369616c204d656469612053657276696365733c2f68343e0d0a3c703e54686520436f6d70616e7920616c6c6f777320596f7520746f2063726561746520616e206163636f756e7420616e64206c6f6720696e20746f20757365207468652053657276696365207468726f7567682074686520666f6c6c6f77696e672054686972642d706172747920536f6369616c204d656469612053657276696365733a3c2f703e0d0a3c756c3e0d0a3c6c693e476f6f676c653c2f6c693e0d0a3c6c693e46616365626f6f6b3c2f6c693e0d0a3c2f756c3e0d0a3c703e496620596f752064656369646520746f207265676973746572207468726f756768206f72206f7468657277697365206772616e742075732061636365737320746f20612054686972642d506172747920536f6369616c204d6564696120536572766963652c205765206d617920636f6c6c65637420506572736f6e616c2064617461207468617420697320616c7265616479206173736f636961746564207769746820596f75722054686972642d506172747920536f6369616c204d6564696120536572766963652773206163636f756e742c207375636820617320596f7572206e616d652c20596f757220656d61696c20616464726573732c20596f75722061637469766974696573206f7220596f757220636f6e74616374206c697374206173736f63696174656420776974682074686174206163636f756e742e3c2f703e0d0a3c703e596f75206d617920616c736f206861766520746865206f7074696f6e206f662073686172696e67206164646974696f6e616c20696e666f726d6174696f6e20776974682074686520436f6d70616e79207468726f75676820596f75722054686972642d506172747920536f6369616c204d6564696120536572766963652773206163636f756e742e20496620596f752063686f6f736520746f2070726f76696465207375636820696e666f726d6174696f6e20616e6420506572736f6e616c20446174612c20647572696e6720726567697374726174696f6e206f72206f74686572776973652c20596f752061726520676976696e672074686520436f6d70616e79207065726d697373696f6e20746f207573652c2073686172652c20616e642073746f726520697420696e2061206d616e6e657220636f6e73697374656e7420776974682074686973205072697661637920506f6c6963792e3c2f703e0d0a3c68343e547261636b696e6720546563686e6f6c6f6769657320616e6420436f6f6b6965733c2f68343e0d0a3c703e57652075736520436f6f6b69657320616e642073696d696c617220747261636b696e6720746563686e6f6c6f6769657320746f20747261636b20746865206163746976697479206f6e204f7572205365727669636520616e642073746f7265206365727461696e20696e666f726d6174696f6e2e20547261636b696e6720746563686e6f6c6f6769657320757365642061726520626561636f6e732c20746167732c20616e64207363726970747320746f20636f6c6c65637420616e6420747261636b20696e666f726d6174696f6e20616e6420746f20696d70726f766520616e6420616e616c797a65204f757220536572766963652e2054686520746563686e6f6c6f6769657320576520757365206d617920696e636c7564653a3c2f703e0d0a3c756c3e0d0a3c6c693e3c7374726f6e673e436f6f6b696573206f722042726f7773657220436f6f6b6965732e3c2f7374726f6e673e204120636f6f6b6965206973206120736d616c6c2066696c6520706c61636564206f6e20596f7572204465766963652e20596f752063616e20696e73747275637420596f75722062726f7773657220746f2072656675736520616c6c20436f6f6b696573206f7220746f20696e646963617465207768656e206120436f6f6b6965206973206265696e672073656e742e20486f77657665722c20696620596f7520646f206e6f742061636365707420436f6f6b6965732c20596f75206d6179206e6f742062652061626c6520746f2075736520736f6d65207061727473206f66206f757220536572766963652e20556e6c65737320796f7520686176652061646a757374656420596f75722062726f777365722073657474696e6720736f20746861742069742077696c6c2072656675736520436f6f6b6965732c206f75722053657276696365206d61792075736520436f6f6b6965732e3c2f6c693e0d0a3c6c693e3c7374726f6e673e57656220426561636f6e732e3c2f7374726f6e673e204365727461696e2073656374696f6e73206f66206f7572205365727669636520616e64206f757220656d61696c73206d617920636f6e7461696e20736d616c6c20656c656374726f6e69632066696c6573206b6e6f776e2061732077656220626561636f6e732028616c736f20726566657272656420746f20617320636c65617220676966732c20706978656c20746167732c20616e642073696e676c652d706978656c2067696673292074686174207065726d69742074686520436f6d70616e792c20666f72206578616d706c652c20746f20636f756e742075736572732077686f206861766520766973697465642074686f7365207061676573206f72206f70656e656420616e20656d61696c20616e6420666f72206f746865722072656c61746564207765627369746520737461746973746963732028666f72206578616d706c652c207265636f7264696e672074686520706f70756c6172697479206f662061206365727461696e2073656374696f6e20616e6420766572696679696e672073797374656d20616e642073657276657220696e74656772697479292e3c2f6c693e0d0a3c2f756c3e0d0a3c703e436f6f6b6965732063616e206265202250657273697374656e7422206f72202253657373696f6e2220436f6f6b6965732e2050657273697374656e7420436f6f6b6965732072656d61696e206f6e20596f757220706572736f6e616c20636f6d7075746572206f72206d6f62696c6520646576696365207768656e20596f7520676f206f66666c696e652c207768696c652053657373696f6e20436f6f6b696573206172652064656c6574656420617320736f6f6e20617320596f7520636c6f736520596f7572207765622062726f777365722e204c6561726e206d6f72652061626f757420636f6f6b696573206f6e20746865203c6120687265663d2268747470733a2f2f7777772e6672656570726976616379706f6c6963792e636f6d2f626c6f672f73616d706c652d707269766163792d706f6c6963792d74656d706c6174652f235573655f4f665f436f6f6b6965735f416e645f547261636b696e67223e46726565205072697661637920506f6c69637920776562736974653c2f613e2061727469636c652e3c2f703e0d0a3c703e57652075736520626f74682053657373696f6e20616e642050657273697374656e7420436f6f6b69657320666f722074686520707572706f73657320736574206f75742062656c6f773a3c2f703e0d0a3c756c3e0d0a3c6c693e0d0a3c703e3c7374726f6e673e4e6563657373617279202f20457373656e7469616c20436f6f6b6965733c2f7374726f6e673e3c2f703e0d0a3c703e547970653a2053657373696f6e20436f6f6b6965733c2f703e0d0a3c703e41646d696e697374657265642062793a2055733c2f703e0d0a3c703e507572706f73653a20546865736520436f6f6b6965732061726520657373656e7469616c20746f2070726f7669646520596f75207769746820736572766963657320617661696c61626c65207468726f75676820746865205765627369746520616e6420746f20656e61626c6520596f7520746f2075736520736f6d65206f66206974732066656174757265732e20546865792068656c7020746f2061757468656e74696361746520757365727320616e642070726576656e74206672617564756c656e7420757365206f662075736572206163636f756e74732e20576974686f757420746865736520436f6f6b6965732c20746865207365727669636573207468617420596f7520686176652061736b656420666f722063616e6e6f742062652070726f76696465642c20616e64205765206f6e6c792075736520746865736520436f6f6b69657320746f2070726f7669646520596f7520776974682074686f73652073657276696365732e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e436f6f6b69657320506f6c696379202f204e6f7469636520416363657074616e636520436f6f6b6965733c2f7374726f6e673e3c2f703e0d0a3c703e547970653a2050657273697374656e7420436f6f6b6965733c2f703e0d0a3c703e41646d696e697374657265642062793a2055733c2f703e0d0a3c703e507572706f73653a20546865736520436f6f6b696573206964656e7469667920696620757365727320686176652061636365707465642074686520757365206f6620636f6f6b696573206f6e2074686520576562736974652e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e46756e6374696f6e616c69747920436f6f6b6965733c2f7374726f6e673e3c2f703e0d0a3c703e547970653a2050657273697374656e7420436f6f6b6965733c2f703e0d0a3c703e41646d696e697374657265642062793a2055733c2f703e0d0a3c703e507572706f73653a20546865736520436f6f6b69657320616c6c6f7720757320746f2072656d656d6265722063686f6963657320596f75206d616b65207768656e20596f75207573652074686520576562736974652c20737563682061732072656d656d626572696e6720796f7572206c6f67696e2064657461696c73206f72206c616e677561676520707265666572656e63652e2054686520707572706f7365206f6620746865736520436f6f6b69657320697320746f2070726f7669646520596f7520776974682061206d6f726520706572736f6e616c20657870657269656e636520616e6420746f2061766f696420596f7520686176696e6720746f2072652d656e74657220796f757220707265666572656e6365732065766572792074696d6520596f75207573652074686520576562736974652e3c2f703e0d0a3c2f6c693e0d0a3c2f756c3e0d0a3c703e466f72206d6f726520696e666f726d6174696f6e2061626f75742074686520636f6f6b6965732077652075736520616e6420796f75722063686f6963657320726567617264696e6720636f6f6b6965732c20706c65617365207669736974206f757220436f6f6b69657320506f6c696379206f722074686520436f6f6b6965732073656374696f6e206f66206f7572205072697661637920506f6c6963792e3c2f703e0d0a3c68343e557365206f6620596f757220506572736f6e616c20446174613c2f68343e0d0a3c703e54686520436f6d70616e79206d61792075736520506572736f6e616c204461746120666f722074686520666f6c6c6f77696e6720707572706f7365733a3c2f703e0d0a3c756c3e0d0a3c6c693e0d0a3c703e3c7374726f6e673e546f2070726f7669646520616e64206d61696e7461696e206f757220536572766963653c2f7374726f6e673e2c20696e636c7564696e6720746f206d6f6e69746f7220746865207573616765206f66206f757220536572766963652e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e546f206d616e61676520596f7572204163636f756e743a3c2f7374726f6e673e20746f206d616e61676520596f757220726567697374726174696f6e20617320612075736572206f662074686520536572766963652e2054686520506572736f6e616c204461746120596f752070726f766964652063616e206769766520596f752061636365737320746f20646966666572656e742066756e6374696f6e616c6974696573206f6620746865205365727669636520746861742061726520617661696c61626c6520746f20596f752061732061207265676973746572656420757365722e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e466f722074686520706572666f726d616e6365206f66206120636f6e74726163743a3c2f7374726f6e673e2074686520646576656c6f706d656e742c20636f6d706c69616e636520616e6420756e64657274616b696e67206f662074686520707572636861736520636f6e747261637420666f72207468652070726f64756374732c206974656d73206f7220736572766963657320596f75206861766520707572636861736564206f72206f6620616e79206f7468657220636f6e74726163742077697468205573207468726f7567682074686520536572766963652e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e546f20636f6e7461637420596f753a3c2f7374726f6e673e20546f20636f6e7461637420596f7520627920656d61696c2c2074656c6570686f6e652063616c6c732c20534d532c206f72206f74686572206571756976616c656e7420666f726d73206f6620656c656374726f6e696320636f6d6d756e69636174696f6e2c20737563682061732061206d6f62696c65206170706c69636174696f6e27732070757368206e6f74696669636174696f6e7320726567617264696e672075706461746573206f7220696e666f726d617469766520636f6d6d756e69636174696f6e732072656c6174656420746f207468652066756e6374696f6e616c69746965732c2070726f6475637473206f7220636f6e747261637465642073657276696365732c20696e636c7564696e672074686520736563757269747920757064617465732c207768656e206e6563657373617279206f7220726561736f6e61626c6520666f7220746865697220696d706c656d656e746174696f6e2e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e546f2070726f7669646520596f753c2f7374726f6e673e2077697468206e6577732c207370656369616c206f666665727320616e642067656e6572616c20696e666f726d6174696f6e2061626f7574206f7468657220676f6f64732c20736572766963657320616e64206576656e7473207768696368207765206f666665722074686174206172652073696d696c617220746f2074686f7365207468617420796f75206861766520616c726561647920707572636861736564206f7220656e7175697265642061626f757420756e6c65737320596f752068617665206f70746564206e6f7420746f2072656365697665207375636820696e666f726d6174696f6e2e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e546f206d616e61676520596f75722072657175657374733a3c2f7374726f6e673e20546f20617474656e6420616e64206d616e61676520596f757220726571756573747320746f2055732e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e466f7220627573696e657373207472616e73666572733a3c2f7374726f6e673e205765206d61792075736520596f757220696e666f726d6174696f6e20746f206576616c75617465206f7220636f6e647563742061206d65726765722c2064697665737469747572652c2072657374727563747572696e672c2072656f7267616e697a6174696f6e2c20646973736f6c7574696f6e2c206f72206f746865722073616c65206f72207472616e73666572206f6620736f6d65206f7220616c6c206f66204f7572206173736574732c2077686574686572206173206120676f696e6720636f6e6365726e206f722061732070617274206f662062616e6b7275707463792c206c69717569646174696f6e2c206f722073696d696c61722070726f63656564696e672c20696e20776869636820506572736f6e616c20446174612068656c642062792055732061626f7574206f7572205365727669636520757365727320697320616d6f6e672074686520617373657473207472616e736665727265642e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c703e3c7374726f6e673e466f72206f7468657220707572706f7365733c2f7374726f6e673e3a205765206d61792075736520596f757220696e666f726d6174696f6e20666f72206f7468657220707572706f7365732c2073756368206173206461746120616e616c797369732c206964656e74696679696e67207573616765207472656e64732c2064657465726d696e696e6720746865206566666563746976656e657373206f66206f75722070726f6d6f74696f6e616c2063616d706169676e7320616e6420746f206576616c7561746520616e6420696d70726f7665206f757220536572766963652c2070726f64756374732c2073657276696365732c206d61726b6574696e6720616e6420796f757220657870657269656e63652e3c2f703e0d0a3c2f6c693e0d0a3c2f756c3e0d0a3c703e5765206d617920736861726520596f757220706572736f6e616c20696e666f726d6174696f6e20696e2074686520666f6c6c6f77696e6720736974756174696f6e733a3c2f703e0d0a3c756c3e0d0a3c6c693e3c7374726f6e673e5769746820536572766963652050726f7669646572733a3c2f7374726f6e673e205765206d617920736861726520596f757220706572736f6e616c20696e666f726d6174696f6e207769746820536572766963652050726f76696465727320746f206d6f6e69746f7220616e6420616e616c797a652074686520757365206f66206f757220536572766963652c20746f20636f6e7461637420596f752e3c2f6c693e0d0a3c6c693e3c7374726f6e673e466f7220627573696e657373207472616e73666572733a3c2f7374726f6e673e205765206d6179207368617265206f72207472616e7366657220596f757220706572736f6e616c20696e666f726d6174696f6e20696e20636f6e6e656374696f6e20776974682c206f7220647572696e67206e65676f74696174696f6e73206f662c20616e79206d65726765722c2073616c65206f6620436f6d70616e79206173736574732c2066696e616e63696e672c206f72206163717569736974696f6e206f6620616c6c206f72206120706f7274696f6e206f66204f757220627573696e65737320746f20616e6f7468657220636f6d70616e792e3c2f6c693e0d0a3c6c693e3c7374726f6e673e5769746820416666696c69617465733a3c2f7374726f6e673e205765206d617920736861726520596f757220696e666f726d6174696f6e2077697468204f757220616666696c69617465732c20696e20776869636820636173652077652077696c6c20726571756972652074686f736520616666696c696174657320746f20686f6e6f722074686973205072697661637920506f6c6963792e20416666696c696174657320696e636c756465204f757220706172656e7420636f6d70616e7920616e6420616e79206f74686572207375627369646961726965732c206a6f696e742076656e7475726520706172746e657273206f72206f7468657220636f6d70616e696573207468617420576520636f6e74726f6c206f7220746861742061726520756e64657220636f6d6d6f6e20636f6e74726f6c20776974682055732e3c2f6c693e0d0a3c6c693e3c7374726f6e673e5769746820627573696e65737320706172746e6572733a3c2f7374726f6e673e205765206d617920736861726520596f757220696e666f726d6174696f6e2077697468204f757220627573696e65737320706172746e65727320746f206f6666657220596f75206365727461696e2070726f64756374732c207365727669636573206f722070726f6d6f74696f6e732e3c2f6c693e0d0a3c6c693e3c7374726f6e673e57697468206f746865722075736572733a3c2f7374726f6e673e207768656e20596f7520736861726520706572736f6e616c20696e666f726d6174696f6e206f72206f746865727769736520696e74657261637420696e20746865207075626c69632061726561732077697468206f746865722075736572732c207375636820696e666f726d6174696f6e206d61792062652076696577656420627920616c6c20757365727320616e64206d6179206265207075626c69636c79206469737472696275746564206f7574736964652e20496620596f7520696e7465726163742077697468206f74686572207573657273206f72207265676973746572207468726f75676820612054686972642d506172747920536f6369616c204d6564696120536572766963652c20596f757220636f6e7461637473206f6e207468652054686972642d506172747920536f6369616c204d656469612053657276696365206d61792073656520596f7572206e616d652c2070726f66696c652c20706963747572657320616e64206465736372697074696f6e206f6620596f75722061637469766974792e2053696d696c61726c792c206f746865722075736572732077696c6c2062652061626c6520746f2076696577206465736372697074696f6e73206f6620596f75722061637469766974792c20636f6d6d756e6963617465207769746820596f7520616e64207669657720596f75722070726f66696c652e3c2f6c693e0d0a3c6c693e3c7374726f6e673e5769746820596f757220636f6e73656e743c2f7374726f6e673e3a205765206d617920646973636c6f736520596f757220706572736f6e616c20696e666f726d6174696f6e20666f7220616e79206f7468657220707572706f7365207769746820596f757220636f6e73656e742e3c2f6c693e0d0a3c2f756c3e0d0a3c68343e526574656e74696f6e206f6620596f757220506572736f6e616c20446174613c2f68343e0d0a3c703e54686520436f6d70616e792077696c6c2072657461696e20596f757220506572736f6e616c2044617461206f6e6c7920666f72206173206c6f6e67206173206973206e656365737361727920666f722074686520707572706f73657320736574206f757420696e2074686973205072697661637920506f6c6963792e2057652077696c6c2072657461696e20616e642075736520596f757220506572736f6e616c204461746120746f2074686520657874656e74206e656365737361727920746f20636f6d706c792077697468206f7572206c6567616c206f626c69676174696f6e732028666f72206578616d706c652c2069662077652061726520726571756972656420746f2072657461696e20796f7572206461746120746f20636f6d706c792077697468206170706c696361626c65206c617773292c207265736f6c76652064697370757465732c20616e6420656e666f726365206f7572206c6567616c2061677265656d656e747320616e6420706f6c69636965732e3c2f703e0d0a3c703e54686520436f6d70616e792077696c6c20616c736f2072657461696e205573616765204461746120666f7220696e7465726e616c20616e616c7973697320707572706f7365732e20557361676520446174612069732067656e6572616c6c792072657461696e656420666f7220612073686f7274657220706572696f64206f662074696d652c20657863657074207768656e20746869732064617461206973207573656420746f20737472656e677468656e20746865207365637572697479206f7220746f20696d70726f7665207468652066756e6374696f6e616c697479206f66204f757220536572766963652c206f7220576520617265206c6567616c6c79206f626c69676174656420746f2072657461696e2074686973206461746120666f72206c6f6e6765722074696d6520706572696f64732e3c2f703e0d0a3c68343e5472616e73666572206f6620596f757220506572736f6e616c20446174613c2f68343e0d0a3c703e596f757220696e666f726d6174696f6e2c20696e636c7564696e6720506572736f6e616c20446174612c2069732070726f6365737365642061742074686520436f6d70616e792773206f7065726174696e67206f66666963657320616e6420696e20616e79206f7468657220706c6163657320776865726520746865207061727469657320696e766f6c76656420696e207468652070726f63657373696e6720617265206c6f63617465642e204974206d65616e732074686174207468697320696e666f726d6174696f6e206d6179206265207472616e7366657272656420746f20e2809420616e64206d61696e7461696e6564206f6e20e2809420636f6d707574657273206c6f6361746564206f757473696465206f6620596f75722073746174652c2070726f76696e63652c20636f756e747279206f72206f7468657220676f7665726e6d656e74616c206a7572697364696374696f6e2077686572652074686520646174612070726f74656374696f6e206c617773206d617920646966666572207468616e2074686f73652066726f6d20596f7572206a7572697364696374696f6e2e3c2f703e0d0a3c703e596f757220636f6e73656e7420746f2074686973205072697661637920506f6c69637920666f6c6c6f77656420627920596f7572207375626d697373696f6e206f66207375636820696e666f726d6174696f6e20726570726573656e747320596f75722061677265656d656e7420746f2074686174207472616e736665722e3c2f703e0d0a3c703e54686520436f6d70616e792077696c6c2074616b6520616c6c20737465707320726561736f6e61626c79206e656365737361727920746f20656e73757265207468617420596f757220646174612069732074726561746564207365637572656c7920616e6420696e206163636f7264616e636520776974682074686973205072697661637920506f6c69637920616e64206e6f207472616e73666572206f6620596f757220506572736f6e616c20446174612077696c6c2074616b6520706c61636520746f20616e206f7267616e697a6174696f6e206f72206120636f756e74727920756e6c6573732074686572652061726520616465717561746520636f6e74726f6c7320696e20706c61636520696e636c7564696e6720746865207365637572697479206f6620596f7572206461746120616e64206f7468657220706572736f6e616c20696e666f726d6174696f6e2e3c2f703e0d0a3c68343e44656c65746520596f757220506572736f6e616c20446174613c2f68343e0d0a3c703e596f7520686176652074686520726967687420746f2064656c657465206f72207265717565737420746861742057652061737369737420696e2064656c6574696e672074686520506572736f6e616c20446174612074686174205765206861766520636f6c6c65637465642061626f757420596f752e3c2f703e0d0a3c703e4f75722053657276696365206d6179206769766520596f7520746865206162696c69747920746f2064656c657465206365727461696e20696e666f726d6174696f6e2061626f757420596f752066726f6d2077697468696e2074686520536572766963652e3c2f703e0d0a3c703e596f75206d6179207570646174652c20616d656e642c206f722064656c65746520596f757220696e666f726d6174696f6e20617420616e792074696d65206279207369676e696e6720696e20746f20596f7572204163636f756e742c20696620796f752068617665206f6e652c20616e64207669736974696e6720746865206163636f756e742073657474696e67732073656374696f6e207468617420616c6c6f777320796f7520746f206d616e61676520596f757220706572736f6e616c20696e666f726d6174696f6e2e20596f75206d617920616c736f20636f6e7461637420557320746f20726571756573742061636365737320746f2c20636f72726563742c206f722064656c65746520616e7920706572736f6e616c20696e666f726d6174696f6e207468617420596f7520686176652070726f766964656420746f2055732e3c2f703e0d0a3c703e506c65617365206e6f74652c20686f77657665722c2074686174205765206d6179206e65656420746f2072657461696e206365727461696e20696e666f726d6174696f6e207768656e20776520686176652061206c6567616c206f626c69676174696f6e206f72206c617766756c20626173697320746f20646f20736f2e3c2f703e0d0a3c68343e3c7370616e207374796c653d22666f6e742d73697a653a312e3136323572656d3b223e427573696e657373205472616e73616374696f6e733c2f7370616e3e3c2f68343e0d0a3c703e49662074686520436f6d70616e7920697320696e766f6c76656420696e2061206d65726765722c206163717569736974696f6e206f722061737365742073616c652c20596f757220506572736f6e616c2044617461206d6179206265207472616e736665727265642e2057652077696c6c2070726f76696465206e6f74696365206265666f726520596f757220506572736f6e616c2044617461206973207472616e7366657272656420616e64206265636f6d6573207375626a65637420746f206120646966666572656e74205072697661637920506f6c6963792e3c2f703e0d0a3c68343e4c617720656e666f7263656d656e743c2f68343e0d0a3c703e556e646572206365727461696e2063697263756d7374616e6365732c2074686520436f6d70616e79206d617920626520726571756972656420746f20646973636c6f736520596f757220506572736f6e616c204461746120696620726571756972656420746f20646f20736f206279206c6177206f7220696e20726573706f6e736520746f2076616c6964207265717565737473206279207075626c696320617574686f7269746965732028652e672e206120636f757274206f72206120676f7665726e6d656e74206167656e6379292e3c2f703e0d0a3c68343e4f74686572206c6567616c20726571756972656d656e74733c2f68343e0d0a3c703e54686520436f6d70616e79206d617920646973636c6f736520596f757220506572736f6e616c204461746120696e2074686520676f6f642066616974682062656c6965662074686174207375636820616374696f6e206973206e656365737361727920746f3a3c2f703e0d0a3c756c3e0d0a3c6c693e436f6d706c7920776974682061206c6567616c206f626c69676174696f6e3c2f6c693e0d0a3c6c693e50726f7465637420616e6420646566656e642074686520726967687473206f722070726f7065727479206f662074686520436f6d70616e793c2f6c693e0d0a3c6c693e50726576656e74206f7220696e76657374696761746520706f737369626c652077726f6e67646f696e6720696e20636f6e6e656374696f6e20776974682074686520536572766963653c2f6c693e0d0a3c6c693e50726f746563742074686520706572736f6e616c20736166657479206f66205573657273206f66207468652053657276696365206f7220746865207075626c69633c2f6c693e0d0a3c6c693e50726f7465637420616761696e7374206c6567616c206c696162696c6974793c2f6c693e0d0a3c2f756c3e0d0a3c68343e5365637572697479206f6620596f757220506572736f6e616c20446174613c2f68343e0d0a3c703e546865207365637572697479206f6620596f757220506572736f6e616c204461746120697320696d706f7274616e7420746f2055732c206275742072656d656d6265722074686174206e6f206d6574686f64206f66207472616e736d697373696f6e206f7665722074686520496e7465726e65742c206f72206d6574686f64206f6620656c656374726f6e69632073746f726167652069732031303025207365637572652e205768696c652057652073747269766520746f2075736520636f6d6d65726369616c6c792061636365707461626c65206d65616e7320746f2070726f7465637420596f757220506572736f6e616c20446174612c2057652063616e6e6f742067756172616e74656520697473206162736f6c7574652073656375726974792e3c2f703e0d0a3c703e4368696c6472656e277320507269766163793c2f703e0d0a3c703e4f7572205365727669636520646f6573206e6f74206164647265737320616e796f6e6520756e6465722074686520616765206f662031332e20576520646f206e6f74206b6e6f77696e676c7920636f6c6c65637420706572736f6e616c6c79206964656e7469666961626c6520696e666f726d6174696f6e2066726f6d20616e796f6e6520756e6465722074686520616765206f662031332e20496620596f7520617265206120706172656e74206f7220677561726469616e20616e6420596f7520617265206177617265207468617420596f7572206368696c64206861732070726f7669646564205573207769746820506572736f6e616c20446174612c20706c6561736520636f6e746163742055732e204966205765206265636f6d652061776172652074686174205765206861766520636f6c6c656374656420506572736f6e616c20446174612066726f6d20616e796f6e6520756e6465722074686520616765206f6620313320776974686f757420766572696669636174696f6e206f6620706172656e74616c20636f6e73656e742c2057652074616b6520737465707320746f2072656d6f7665207468617420696e666f726d6174696f6e2066726f6d204f757220736572766572732e3c2f703e0d0a3c703e4966205765206e65656420746f2072656c79206f6e20636f6e73656e742061732061206c6567616c20626173697320666f722070726f63657373696e6720596f757220696e666f726d6174696f6e20616e6420596f757220636f756e74727920726571756972657320636f6e73656e742066726f6d206120706172656e742c205765206d6179207265717569726520596f757220706172656e74277320636f6e73656e74206265666f726520576520636f6c6c65637420616e6420757365207468617420696e666f726d6174696f6e2e3c2f703e0d0a3c703e4c696e6b7320746f204f746865722057656273697465733c2f703e0d0a3c703e4f75722053657276696365206d617920636f6e7461696e206c696e6b7320746f206f74686572207765627369746573207468617420617265206e6f74206f706572617465642062792055732e20496620596f7520636c69636b206f6e2061207468697264207061727479206c696e6b2c20596f752077696c6c20626520646972656374656420746f2074686174207468697264207061727479277320736974652e205765207374726f6e676c792061647669736520596f7520746f2072657669657720746865205072697661637920506f6c696379206f66206576657279207369746520596f752076697369742e3c2f703e0d0a3c703e57652068617665206e6f20636f6e74726f6c206f76657220616e6420617373756d65206e6f20726573706f6e736962696c69747920666f722074686520636f6e74656e742c207072697661637920706f6c6963696573206f7220707261637469636573206f6620616e79207468697264207061727479207369746573206f722073657276696365732e3c2f703e0d0a3c703e4368616e67657320746f2074686973205072697661637920506f6c6963793c2f703e0d0a3c703e5765206d617920757064617465204f7572205072697661637920506f6c6963792066726f6d2074696d6520746f2074696d652e2057652077696c6c206e6f7469667920596f75206f6620616e79206368616e67657320627920706f7374696e6720746865206e6577205072697661637920506f6c696379206f6e207468697320706167652e3c2f703e0d0a3c703e57652077696c6c206c657420596f75206b6e6f772076696120656d61696c20616e642f6f7220612070726f6d696e656e74206e6f74696365206f6e204f757220536572766963652c207072696f7220746f20746865206368616e6765206265636f6d696e672065666665637469766520616e64207570646174652074686520224c61737420757064617465642220646174652061742074686520746f70206f662074686973205072697661637920506f6c6963792e3c2f703e0d0a3c703e596f7520617265206164766973656420746f207265766965772074686973205072697661637920506f6c69637920706572696f646963616c6c7920666f7220616e79206368616e6765732e204368616e67657320746f2074686973205072697661637920506f6c6963792061726520656666656374697665207768656e20746865792061726520706f73746564206f6e207468697320706167652e3c2f703e0d0a3c703e436f6e746163742055733c2f703e0d0a3c703e496620796f75206861766520616e79207175657374696f6e732061626f75742074686973205072697661637920506f6c6963792c20596f752063616e20636f6e746163742075733a3c2f703e, NULL, NULL, '2023-05-20 04:53:32', '2023-05-20 12:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `page_headings`
--

CREATE TABLE `page_headings` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED DEFAULT NULL,
  `blog_page_title` varchar(255) DEFAULT NULL,
  `blog_details_page_title` varchar(255) DEFAULT NULL,
  `contact_page_title` varchar(255) DEFAULT NULL,
  `about_page_title` varchar(255) DEFAULT NULL,
  `event_page_title` varchar(255) DEFAULT NULL,
  `shop_page_title` varchar(255) DEFAULT NULL,
  `cart_page_title` varchar(255) DEFAULT NULL,
  `event_details_page_title` varchar(255) DEFAULT NULL,
  `faq_page_title` varchar(255) DEFAULT NULL,
  `customer_forget_password_page_title` varchar(255) DEFAULT NULL,
  `organizer_forget_password_page_title` varchar(255) DEFAULT NULL,
  `organizer_page_title` varchar(255) DEFAULT NULL,
  `customer_login_page_title` varchar(255) DEFAULT NULL,
  `customer_signup_page_title` varchar(255) DEFAULT NULL,
  `organizer_login_page_title` varchar(255) DEFAULT NULL,
  `organizer_signup_page_title` varchar(255) DEFAULT NULL,
  `customer_dashboard_page_title` varchar(255) DEFAULT NULL,
  `customer_booking_page_title` varchar(255) DEFAULT NULL,
  `customer_booking_details_page_title` varchar(255) DEFAULT NULL,
  `customer_order_page_title` varchar(255) DEFAULT NULL,
  `customer_order_details_page_title` varchar(255) DEFAULT NULL,
  `customer_wishlist_page_title` varchar(255) DEFAULT NULL,
  `customer_support_ticket_page_title` varchar(255) DEFAULT NULL,
  `support_ticket_create_page_title` varchar(255) DEFAULT NULL,
  `support_ticket_details_page_title` varchar(255) DEFAULT NULL,
  `customer_edit_profile_page_title` varchar(255) DEFAULT NULL,
  `customer_change_password_page_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `page_headings`
--

INSERT INTO `page_headings` (`id`, `language_id`, `blog_page_title`, `blog_details_page_title`, `contact_page_title`, `about_page_title`, `event_page_title`, `shop_page_title`, `cart_page_title`, `event_details_page_title`, `faq_page_title`, `customer_forget_password_page_title`, `organizer_forget_password_page_title`, `organizer_page_title`, `customer_login_page_title`, `customer_signup_page_title`, `organizer_login_page_title`, `organizer_signup_page_title`, `customer_dashboard_page_title`, `customer_booking_page_title`, `customer_booking_details_page_title`, `customer_order_page_title`, `customer_order_details_page_title`, `customer_wishlist_page_title`, `customer_support_ticket_page_title`, `support_ticket_create_page_title`, `support_ticket_details_page_title`, `customer_edit_profile_page_title`, `customer_change_password_page_title`, `created_at`, `updated_at`) VALUES
(4, 8, 'Blog', 'Blog Details', 'Contact', 'About Us', 'Our Events', 'Shop', 'Cart', 'Event  Details', 'FAQ', 'Forget Password', 'Forget Password', 'Organizer', 'Customer Login', 'Customer Signup', 'Organizer Login', 'Organizer Signup', 'Dashboard', 'My Bookings', 'Booking Details', 'My Orders', 'Order Details', 'My Wishlists', 'Support Tickets', 'Create a Support Ticket', 'Support Ticket Details', 'Edit Profile', 'Change Password', '2021-10-14 02:42:42', '2023-05-20 09:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(7, '66375062ad53f.jpg', 'example.com', '1', '2022-06-07 03:06:07', '2024-05-05 09:24:50'),
(8, '6637503b00fec.png', 'example.com', '2', '2022-06-07 03:06:16', '2024-05-05 09:24:11'),
(9, '66375014bcc96.png', 'example.com', '3', '2023-05-08 04:25:40', '2024-05-05 09:23:32'),
(10, '66374fa20fab3.png', 'example.com', '4', '2023-05-08 04:25:53', '2024-05-05 09:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `partner_sections`
--

CREATE TABLE `partner_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `partner_sections`
--

INSERT INTO `partner_sections` (`id`, `language_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 8, 'Our Partner', 'All Malaysia', '2022-06-07 21:53:57', '2024-05-05 09:19:45'),
(2, 9, 'شريكنا', 'خدمتنا مجانية للمستخدمين لأن البائعين يدفعون لنا عندما يتلقون زيارات على شبكة', '2022-06-07 21:54:13', '2022-07-16 22:56:35'),
(3, 17, 'شريكنا', 'الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار', '2023-01-31 05:52:18', '2023-01-31 05:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('fahadahmadshemul@gmail.com', '5ffRsAn2iFAOtkFkJVuTicgt2OL3Hv2h', NULL),
('fahadahmadshemul@gmail.com', 'MofULe7iGv69cBBtn8WEprM0G73m3Vte', NULL),
('fahadahmadshemul@gmail.com', 'wLZLzqpItzNrGkg6A3HPu6naSi7h8hN9', NULL),
('fahadahmadshemul@gmail.com', '2ckcECbtz9aDkUIP1NaRka0k6FYC6cOU', NULL),
('fahadahmadshemul@gmail.com', 'z4DS2ezbNaAPPDykmZlC22FlKIWzhSoE', NULL),
('fahadahmadshemul@gmail.com', 'jDM2Ak7oXiTxnD6bLOp3ABjrYGGIm0qK', NULL),
('fahadahmadshemul@gmail.com', 'hteh4kg4180Lm2EMM9su205LzosT9z7G', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_invoices`
--

CREATE TABLE `payment_invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `InvoiceId` bigint UNSIGNED NOT NULL,
  `InvoiceStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `InvoiceValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `InvoiceDisplayValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TransactionId` bigint UNSIGNED NOT NULL,
  `TransactionStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PaymentGateway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PaymentId` bigint UNSIGNED NOT NULL,
  `CardNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `type` smallint UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `background_color_opacity` decimal(3,2) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `button_text` varchar(255) DEFAULT NULL,
  `button_color` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `delay` int UNSIGNED NOT NULL COMMENT 'value will be in milliseconds',
  `serial_number` mediumint UNSIGNED NOT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '0 => deactive, 1 => active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `sku` int DEFAULT NULL,
  `feature_image` varchar(255) DEFAULT NULL,
  `current_price` decimal(8,2) DEFAULT NULL,
  `previous_price` decimal(8,2) DEFAULT NULL,
  `is_feature` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'digital-digital product, physical - physical product',
  `file_type` varchar(255) DEFAULT NULL COMMENT 'upload->file, link=>download_link',
  `download_file` varchar(255) DEFAULT NULL,
  `download_link` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1-yes, 0-no',
  `is_feature` int NOT NULL DEFAULT '0' COMMENT '1-yes, 0-no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `language_id`, `status`, `is_feature`, `created_at`, `updated_at`) VALUES
(2, 'Electronic  Accessories', 'Electronic-Accessories', 8, 1, 1, '2023-05-07 08:55:58', '2023-05-07 09:01:02'),
(3, 'Fashion & Beauty', 'Fashion-&-Beauty', 8, 1, 1, '2023-05-07 08:58:15', '2023-05-07 08:59:34'),
(4, 'Home Appliances', 'home-appliances', 8, 1, 1, '2023-05-07 08:58:42', '2023-05-07 08:58:52'),
(5, 'Books', 'Books', 8, 1, 1, '2023-05-07 08:59:58', '2023-05-07 09:02:49'),
(6, 'الملحقات الإلكترونية', 'الملحقات-الإلكترونية', 22, 1, 1, '2023-05-07 09:01:30', '2023-05-07 09:03:28'),
(7, 'الموضة والجمال', 'الموضة-والجمال', 22, 1, 1, '2023-05-07 09:02:00', '2023-05-07 09:03:27'),
(8, 'المنزليه', 'المنزليه', 22, 1, 1, '2023-05-07 09:02:20', '2023-05-07 09:03:25'),
(9, 'الكتب', 'الكتب', 22, 1, 1, '2023-05-07 09:02:55', '2023-05-07 09:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_contents`
--

CREATE TABLE `product_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `tags` text,
  `summary` text,
  `description` longtext,
  `meta_keywords` text,
  `meta_description` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `billing_fname` varchar(255) DEFAULT NULL,
  `billing_lname` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_zip_code` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `shipping_fname` varchar(255) DEFAULT NULL,
  `shipping_lname` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_zip_code` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `cart_total` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax_percentage` double(8,2) DEFAULT '0.00',
  `total` decimal(8,2) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `gateway_type` varchar(255) DEFAULT NULL,
  `currency_text` varchar(255) DEFAULT NULL,
  `currency_text_position` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `currency_symbol_position` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_charge` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `tnxid` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `conversation_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `review` float DEFAULT NULL,
  `comment` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `subscribable_type` varchar(255) NOT NULL,
  `subscribable_id` bigint UNSIGNED NOT NULL,
  `endpoint` varchar(500) NOT NULL,
  `public_key` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `content_encoding` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `quick_links`
--

CREATE TABLE `quick_links` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `serial_number` smallint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `quick_links`
--

INSERT INTO `quick_links` (`id`, `language_id`, `title`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(3, 8, 'Terms & Conditions', 'https://skuadpenang.com.my/terms-&-conditions', 1, '2021-06-22 22:52:38', '2024-05-05 09:25:58'),
(4, 8, 'About Us', 'https://skuadpenang.com.my/about', 2, '2021-06-22 22:53:09', '2024-05-05 09:25:53'),
(5, 8, 'Contact Us', 'https://skuadpenang.com.my/contact', 1, '2021-06-22 22:53:27', '2024-05-05 09:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(4, 'Admin', '[\"Admin Management\",\"Basic Settings\",\"Payment Gateways\",\"Push Notification\",\"Subscribers\",\"Announcement Popups\",\"Advertise\",\"FAQ Management\",\"Blog Management\",\"Custom Pages\",\"Footer\",\"Home Page\",\"Support Ticket\",\"Customer Management\",\"Organizer Mangement\",\"Event Management\",\"Withdraw Method\",\"Menu Builder\",\"Lifetime Earning\",\"Total Profit\"]', '2021-08-06 22:42:38', '2023-05-03 12:55:43'),
(6, 'Moderator', '[\"Support Ticket\"]', '2021-08-07 22:14:34', '2023-05-03 12:59:16'),
(14, 'Supervisor', NULL, '2021-11-24 22:48:53', '2021-11-24 23:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `categories_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `about_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `featured_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `features_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `how_work_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `testimonials_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `partner_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `footer_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `categories_section_status`, `about_section_status`, `featured_section_status`, `features_section_status`, `how_work_section_status`, `testimonials_section_status`, `partner_section_status`, `footer_section_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-12-11 00:55:13', '2023-01-21 05:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `section_titles`
--

CREATE TABLE `section_titles` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `event_section_title` varchar(255) DEFAULT NULL,
  `category_section_title` varchar(255) DEFAULT NULL,
  `featured_instructors_section_title` varchar(255) DEFAULT NULL,
  `testimonials_section_title` varchar(255) DEFAULT NULL,
  `features_section_title` varchar(255) DEFAULT NULL,
  `blog_section_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `section_titles`
--

INSERT INTO `section_titles` (`id`, `language_id`, `event_section_title`, `category_section_title`, `featured_instructors_section_title`, `testimonials_section_title`, `features_section_title`, `blog_section_title`, `created_at`, `updated_at`) VALUES
(1, 8, 'Explore Our Events', 'Explore Category', 'Our Instructors', 'Customer Feedbacks', 'Our Features', 'Latest Blog', '2021-10-05 03:30:05', '2022-06-06 21:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `meta_keyword_home` varchar(255) DEFAULT NULL,
  `meta_description_home` text,
  `meta_keyword_event` varchar(255) DEFAULT NULL,
  `meta_description_event` text,
  `meta_keyword_organizer` varchar(255) DEFAULT NULL,
  `meta_description_organizer` text,
  `meta_keyword_shop` varchar(255) DEFAULT NULL,
  `meta_description_shop` text,
  `meta_keyword_blog` varchar(255) DEFAULT NULL,
  `meta_description_blog` text,
  `meta_keyword_faq` varchar(255) DEFAULT NULL,
  `meta_description_faq` text,
  `meta_keyword_contact` varchar(255) DEFAULT NULL,
  `meta_description_contact` text,
  `meta_description_about` varchar(255) DEFAULT NULL,
  `meta_keyword_about` varchar(255) DEFAULT NULL,
  `meta_keyword_customer_login` varchar(255) DEFAULT NULL,
  `meta_description_customer_login` text,
  `meta_keyword_customer_signup` varchar(255) DEFAULT NULL,
  `meta_description_customer_signup` text,
  `meta_keyword_organizer_login` varchar(255) DEFAULT NULL,
  `meta_description_organizer_login` text,
  `meta_keyword_organizer_signup` varchar(255) DEFAULT NULL,
  `meta_description_organizer_signup` text,
  `meta_keyword_customer_forget_password` varchar(255) DEFAULT NULL,
  `meta_description_customer_forget_password` text,
  `meta_keyword_organizer_forget_password` varchar(255) DEFAULT NULL,
  `meta_description_organizer_forget_password` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `language_id`, `meta_keyword_home`, `meta_description_home`, `meta_keyword_event`, `meta_description_event`, `meta_keyword_organizer`, `meta_description_organizer`, `meta_keyword_shop`, `meta_description_shop`, `meta_keyword_blog`, `meta_description_blog`, `meta_keyword_faq`, `meta_description_faq`, `meta_keyword_contact`, `meta_description_contact`, `meta_description_about`, `meta_keyword_about`, `meta_keyword_customer_login`, `meta_description_customer_login`, `meta_keyword_customer_signup`, `meta_description_customer_signup`, `meta_keyword_organizer_login`, `meta_description_organizer_login`, `meta_keyword_organizer_signup`, `meta_description_organizer_signup`, `meta_keyword_customer_forget_password`, `meta_description_customer_forget_password`, `meta_keyword_organizer_forget_password`, `meta_description_organizer_forget_password`, `created_at`, `updated_at`) VALUES
(2, 8, 'home', 'Home Description', 'Events', 'Event  Description', 'Organizer', 'Organizer Description', 'Shop', 'Shop Description', 'blog', 'Blog Description', 'faq', 'FAQ Description', 'contact', 'Contact Description', 'about us descriptions', 'about,us', 'login', 'Login Description', 'signup', 'Signup Description', 'organizer_login', 'Organizer Login Description', 'Organizer_signup', 'Organizer Signup Page', 'forget password', 'Forget Password Description', 'Organizer_forget', 'Organizer forget password', '2021-07-30 05:57:39', '2023-05-20 09:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `title`, `language_id`, `text`, `days`, `charge`, `created_at`, `updated_at`) VALUES
(7, 'Method Two', 8, 'Method Two Shipping Charge', NULL, 10.00, '2022-06-26 00:31:09', '2023-05-06 10:40:35'),
(11, 'Method One', 8, 'Method One shipping charge', NULL, 12.00, '2022-07-01 23:06:39', '2023-05-06 10:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `shop_coupons`
--

CREATE TABLE `shop_coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` decimal(11,2) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `icon`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(36, 'fab fa-facebook-f', 'https://www.facebook.com/', 1, '2021-11-20 03:01:42', '2021-11-20 03:01:42'),
(37, 'fab fa-twitter', 'https://twitter.com/', 3, '2021-11-20 03:03:22', '2021-11-20 03:03:22'),
(38, 'fab fa-linkedin-in', 'https://www.linkedin.com/', 2, '2021-11-20 03:04:29', '2021-11-20 03:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` mediumint UNSIGNED NOT NULL,
  `country_code` char(2) NOT NULL,
  `fips_code` varchar(255) DEFAULT NULL,
  `iso2` varchar(255) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  `wikiDataId` varchar(255) DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  `ticket_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` longtext,
  `attachment` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1-pending, 2-open, 3-closed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_message` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `user_type`, `admin_id`, `ticket_number`, `email`, `subject`, `description`, `attachment`, `status`, `created_at`, `updated_at`, `last_message`) VALUES
(12, 23, 'organizer', NULL, NULL, 'organizer@gmail.com', 'Withdraw Rejected', 'Please let me ensure why my withdraw request was rejected. my withdraw id is #6458d9a93f2e3', NULL, 3, '2023-05-08 11:19:22', '2023-05-08 11:31:47', '2023-05-08 11:30:44'),
(13, 23, 'customer', NULL, NULL, 'user@gmail.com', 'Payment Rejected', 'Why my payment was rejected? I was booking a ticket for the \"Designer carrier conference\" Event.', NULL, 3, '2023-05-08 11:22:07', '2023-05-08 11:40:46', '2023-05-08 11:40:42'),
(14, 23, 'customer', NULL, NULL, 'user@gmail.com', 'I can\'t purchase product', 'Please let me ensure why I can\'t purchase products.', NULL, 2, '2023-05-08 11:23:21', '2023-05-08 11:27:01', '2023-05-08 11:27:01'),
(15, 23, 'organizer', NULL, NULL, 'organizer@gmail.com', 'Feature a Event', 'Please featured my event. my event name is \"Designer carrier conference\"', NULL, 1, '2023-05-08 11:24:49', '2023-05-08 11:24:49', NULL),
(16, 23, 'organizer', NULL, NULL, 'organizer@gmail.com', 'Why my event has no ticket ?', 'let me ensure why the event has no ticket.', NULL, 2, '2023-05-08 11:32:52', '2023-05-20 12:16:54', '2023-05-20 12:16:54'),
(17, 23, 'customer', NULL, NULL, 'user@gmail.com', 'I cant\'t go contact page', 'i found a error when i go the contact page', NULL, 1, '2023-05-08 11:41:38', '2023-05-08 11:41:38', NULL),
(18, 23, 'customer', NULL, NULL, 'user@gmail.com', 'Payment Rejected', 'fdsafaf', '650eb15073ddf.zip', 2, '2023-09-23 09:35:12', '2023-09-23 09:35:55', '2023-09-23 09:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_statuses`
--

CREATE TABLE `support_ticket_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `support_ticket_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `support_ticket_statuses`
--

INSERT INTO `support_ticket_statuses` (`id`, `support_ticket_status`, `created_at`, `updated_at`) VALUES
(1, 'active', '2022-06-25 03:52:18', '2023-01-29 10:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `rating` int DEFAULT '0',
  `comment` text NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_sections`
--

CREATE TABLE `testimonial_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `image` varchar(255) DEFAULT NULL,
  `review_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `testimonial_sections`
--

INSERT INTO `testimonial_sections` (`id`, `language_id`, `title`, `text`, `image`, `review_text`, `created_at`, `updated_at`) VALUES
(3, 8, 'Feedback from Others', 'Join us and get connections', '629f26d7b602d.jpg', '12000 Membership', '2022-06-07 04:22:15', '2024-05-05 09:18:44'),
(4, 9, 'gdfsas', 'sdfa', '629f2792b156e.jpg', 'sfdaf', '2022-06-07 04:25:22', '2022-06-07 04:25:22'),
(5, 17, 'ما يقوله عملائنا عنا', 'الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار', '63d8ad0181103.png', '2k', '2023-01-31 05:54:09', '2023-01-31 05:54:09'),
(6, 22, 'ماذا يقول عملاؤنا عنا', 'وقبل وفنلندا اقتصادية كل, تسبب الأوربيين كلا كل. تطوير الساحة ا', '64587a5803048.jpg', 'ألف مراجعات العملاء', '2023-05-08 04:28:08', '2023-05-08 04:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` int NOT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `ticket_available_type` varchar(255) DEFAULT NULL,
  `ticket_available` int DEFAULT NULL,
  `max_ticket_buy_type` varchar(255) DEFAULT NULL,
  `max_buy_ticket` int DEFAULT NULL,
  `description` longtext,
  `pricing_type` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `f_price` float DEFAULT NULL,
  `early_bird_discount` varchar(255) NOT NULL DEFAULT 'disable',
  `early_bird_discount_amount` varchar(255) DEFAULT NULL,
  `early_bird_discount_type` varchar(255) DEFAULT NULL,
  `early_bird_discount_date` varchar(255) DEFAULT NULL,
  `early_bird_discount_time` varchar(255) DEFAULT NULL,
  `variations` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `event_id`, `event_type`, `title`, `ticket_available_type`, `ticket_available`, `max_ticket_buy_type`, `max_buy_ticket`, `description`, `pricing_type`, `price`, `f_price`, `early_bird_discount`, `early_bird_discount_amount`, `early_bird_discount_type`, `early_bird_discount_date`, `early_bird_discount_time`, `variations`, `created_at`, `updated_at`) VALUES
(113, 91, 'venue', 'Early bird discount ticket(fixed)', 'unlimited', NULL, 'unlimited', NULL, NULL, 'normal', '90', 90, 'enable', '10', 'fixed', '2023-05-17', '23:00', NULL, '2023-05-07 04:59:51', '2023-05-07 05:01:43'),
(160, 103, 'venue', NULL, 'limited', 94, 'limited', 2, NULL, 'normal', '100', 100, 'enable', '5', 'fixed', '2026-01-07', '11:31', NULL, '2023-05-14 05:28:23', '2023-07-30 07:19:34'),
(161, 103, 'venue', NULL, 'unlimited', NULL, 'unlimited', NULL, NULL, 'normal', '79', 79, 'enable', '10', 'percentage', '2026-07-14', '11:31', NULL, '2023-05-14 05:29:29', '2023-05-14 05:29:29'),
(172, 116, 'online', NULL, 'unlimited', NULL, 'unlimited', NULL, NULL, 'normal', '100', 100, 'disable', NULL, 'fixed', NULL, NULL, NULL, '2023-09-24 08:13:35', '2023-09-24 08:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_contents`
--

CREATE TABLE `ticket_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint DEFAULT NULL,
  `ticket_id` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_contents`
--

INSERT INTO `ticket_contents` (`id`, `language_id`, `ticket_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 8, 155, 'Toyota Starlet', NULL, '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(2, 22, 155, 'Toyota Starlet', NULL, '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(3, 8, 154, 'fdsaf', NULL, '2023-05-13 11:20:35', '2023-05-13 11:20:35'),
(4, 22, 154, 'fdsaf', NULL, '2023-05-13 11:20:35', '2023-05-13 11:20:35'),
(5, 8, 113, 'Early bird discount ticket(fixed)', NULL, '2023-05-14 04:18:02', '2023-05-14 04:18:02'),
(6, 22, 113, 'تذكرة خصم مبكرة (ثابتة)', NULL, '2023-05-14 04:18:02', '2023-05-14 04:18:02'),
(7, 8, 156, 'Variation Wise Tickets', NULL, '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(8, 22, 156, 'تذاكر التغيير الحكيم', NULL, '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(9, 8, 157, 'Normal Ticket', NULL, '2023-05-14 04:50:48', '2023-05-14 04:50:48'),
(10, 22, 157, 'تذكرة عادية', NULL, '2023-05-14 04:50:48', '2023-05-14 04:50:48'),
(11, 8, 158, 'Free Ticket', NULL, '2023-05-14 05:18:02', '2023-05-14 05:18:02'),
(12, 22, 158, 'بطاقة مجانية', NULL, '2023-05-14 05:18:02', '2023-05-14 05:18:02'),
(13, 8, 159, 'Limited ticket', NULL, '2023-05-14 05:24:51', '2023-05-14 05:24:51'),
(14, 22, 159, 'تذكرة محدودة', NULL, '2023-05-14 05:24:51', '2023-05-14 05:24:51'),
(15, 8, 160, 'Normal Ticket (fixed discount)', NULL, '2023-05-14 05:28:23', '2023-05-14 05:28:23'),
(16, 22, 160, 'تذكرة عادية (خصم ثابت)', NULL, '2023-05-14 05:28:23', '2023-05-14 05:28:23'),
(17, 8, 161, 'Normal Ticket(percentage discount)', NULL, '2023-05-14 05:29:29', '2023-05-14 05:29:29'),
(18, 22, 161, 'تذكرة عادية (خصم بنسبة مئوية)', NULL, '2023-05-14 05:29:29', '2023-05-14 05:29:29'),
(19, 8, 162, 'Free Ticket (limited)', NULL, '2023-05-14 05:38:15', '2023-05-14 05:38:15'),
(20, 22, 162, 'بطاقة مجانية', NULL, '2023-05-14 05:38:15', '2023-05-14 05:38:15'),
(21, 8, 163, 'Normal Ticket', NULL, '2023-05-14 05:39:08', '2023-05-14 05:39:08'),
(22, 22, 163, 'تذكرة عادية', NULL, '2023-05-14 05:39:08', '2023-05-14 05:39:08'),
(23, 8, 164, 'All Tickets', NULL, '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(24, 22, 164, 'جميع التذاكر', NULL, '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(25, 8, 166, 'Free Ticket', NULL, '2023-05-14 09:22:52', '2023-05-14 09:22:52'),
(26, 22, 166, 'بطاقة مجانية', NULL, '2023-05-14 09:22:52', '2023-05-14 09:22:52'),
(27, 8, 167, 'Normal Ticket', NULL, '2023-05-14 09:23:26', '2023-05-14 09:23:26'),
(28, 22, 167, 'تذكرة عادية', NULL, '2023-05-14 09:23:26', '2023-05-14 09:23:26'),
(29, 8, 168, 'Variation Wise', NULL, '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(30, 22, 168, 'الاختلاف الحكيم', NULL, '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(31, 8, 169, 'Normal Discount', NULL, '2023-05-14 09:25:20', '2023-05-14 09:25:20'),
(32, 22, 169, 'خصم عادي', NULL, '2023-05-14 09:25:20', '2023-05-14 09:25:20'),
(33, 8, 170, 'Variation Discount', NULL, '2023-05-14 09:26:25', '2023-05-14 09:26:25'),
(34, 22, 170, 'خصم التغيير', NULL, '2023-05-14 09:26:25', '2023-05-14 09:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `country_code` char(3) NOT NULL,
  `timezone` varchar(125) NOT NULL DEFAULT '',
  `gmt_offset` float(10,2) DEFAULT NULL,
  `dst_offset` float(10,2) DEFAULT NULL,
  `raw_offset` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`country_code`, `timezone`, `gmt_offset`, `dst_offset`, `raw_offset`) VALUES
('AD', 'Europe/Andorra', 1.00, 2.00, 1.00),
('AE', 'Asia/Dubai', 4.00, 4.00, 4.00),
('AF', 'Asia/Kabul', 4.50, 4.50, 4.50),
('AG', 'America/Antigua', -4.00, -4.00, -4.00),
('AI', 'America/Anguilla', -4.00, -4.00, -4.00),
('AL', 'Europe/Tirane', 1.00, 2.00, 1.00),
('AM', 'Asia/Yerevan', 4.00, 4.00, 4.00),
('AO', 'Africa/Luanda', 1.00, 1.00, 1.00),
('AQ', 'Antarctica/Casey', 8.00, 8.00, 8.00),
('AQ', 'Antarctica/Davis', 7.00, 7.00, 7.00),
('AQ', 'Antarctica/DumontDUrville', 10.00, 10.00, 10.00),
('AQ', 'Antarctica/Mawson', 5.00, 5.00, 5.00),
('AQ', 'Antarctica/McMurdo', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Palmer', -3.00, -4.00, -4.00),
('AQ', 'Antarctica/Rothera', -3.00, -3.00, -3.00),
('AQ', 'Antarctica/South_Pole', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Syowa', 3.00, 3.00, 3.00),
('AQ', 'Antarctica/Vostok', 6.00, 6.00, 6.00),
('AR', 'America/Argentina/Buenos_Aires', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Catamarca', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Cordoba', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Jujuy', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/La_Rioja', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Mendoza', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Rio_Gallegos', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Salta', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Juan', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Luis', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Tucuman', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Ushuaia', -3.00, -3.00, -3.00),
('AS', 'Pacific/Pago_Pago', -11.00, -11.00, -11.00),
('AT', 'Europe/Vienna', 1.00, 2.00, 1.00),
('AU', 'Antarctica/Macquarie', 11.00, 11.00, 11.00),
('AU', 'Australia/Adelaide', 10.50, 9.50, 9.50),
('AU', 'Australia/Brisbane', 10.00, 10.00, 10.00),
('AU', 'Australia/Broken_Hill', 10.50, 9.50, 9.50),
('AU', 'Australia/Currie', 11.00, 10.00, 10.00),
('AU', 'Australia/Darwin', 9.50, 9.50, 9.50),
('AU', 'Australia/Eucla', 8.75, 8.75, 8.75),
('AU', 'Australia/Hobart', 11.00, 10.00, 10.00),
('AU', 'Australia/Lindeman', 10.00, 10.00, 10.00),
('AU', 'Australia/Lord_Howe', 11.00, 10.50, 10.50),
('AU', 'Australia/Melbourne', 11.00, 10.00, 10.00),
('AU', 'Australia/Perth', 8.00, 8.00, 8.00),
('AU', 'Australia/Sydney', 11.00, 10.00, 10.00),
('AW', 'America/Aruba', -4.00, -4.00, -4.00),
('AX', 'Europe/Mariehamn', 2.00, 3.00, 2.00),
('AZ', 'Asia/Baku', 4.00, 5.00, 4.00),
('BA', 'Europe/Sarajevo', 1.00, 2.00, 1.00),
('BB', 'America/Barbados', -4.00, -4.00, -4.00),
('BD', 'Asia/Dhaka', 6.00, 6.00, 6.00),
('BE', 'Europe/Brussels', 1.00, 2.00, 1.00),
('BF', 'Africa/Ouagadougou', 0.00, 0.00, 0.00),
('BG', 'Europe/Sofia', 2.00, 3.00, 2.00),
('BH', 'Asia/Bahrain', 3.00, 3.00, 3.00),
('BI', 'Africa/Bujumbura', 2.00, 2.00, 2.00),
('BJ', 'Africa/Porto-Novo', 1.00, 1.00, 1.00),
('BL', 'America/St_Barthelemy', -4.00, -4.00, -4.00),
('BM', 'Atlantic/Bermuda', -4.00, -3.00, -4.00),
('BN', 'Asia/Brunei', 8.00, 8.00, 8.00),
('BO', 'America/La_Paz', -4.00, -4.00, -4.00),
('BQ', 'America/Kralendijk', -4.00, -4.00, -4.00),
('BR', 'America/Araguaina', -3.00, -3.00, -3.00),
('BR', 'America/Bahia', -3.00, -3.00, -3.00),
('BR', 'America/Belem', -3.00, -3.00, -3.00),
('BR', 'America/Boa_Vista', -4.00, -4.00, -4.00),
('BR', 'America/Campo_Grande', -3.00, -4.00, -4.00),
('BR', 'America/Cuiaba', -3.00, -4.00, -4.00),
('BR', 'America/Eirunepe', -5.00, -5.00, -5.00),
('BR', 'America/Fortaleza', -3.00, -3.00, -3.00),
('BR', 'America/Maceio', -3.00, -3.00, -3.00),
('BR', 'America/Manaus', -4.00, -4.00, -4.00),
('BR', 'America/Noronha', -2.00, -2.00, -2.00),
('BR', 'America/Porto_Velho', -4.00, -4.00, -4.00),
('BR', 'America/Recife', -3.00, -3.00, -3.00),
('BR', 'America/Rio_Branco', -5.00, -5.00, -5.00),
('BR', 'America/Santarem', -3.00, -3.00, -3.00),
('BR', 'America/Sao_Paulo', -2.00, -3.00, -3.00),
('BS', 'America/Nassau', -5.00, -4.00, -5.00),
('BT', 'Asia/Thimphu', 6.00, 6.00, 6.00),
('BW', 'Africa/Gaborone', 2.00, 2.00, 2.00),
('BY', 'Europe/Minsk', 3.00, 3.00, 3.00),
('BZ', 'America/Belize', -6.00, -6.00, -6.00),
('CA', 'America/Atikokan', -5.00, -5.00, -5.00),
('CA', 'America/Blanc-Sablon', -4.00, -4.00, -4.00),
('CA', 'America/Cambridge_Bay', -7.00, -6.00, -7.00),
('CA', 'America/Creston', -7.00, -7.00, -7.00),
('CA', 'America/Dawson', -8.00, -7.00, -8.00),
('CA', 'America/Dawson_Creek', -7.00, -7.00, -7.00),
('CA', 'America/Edmonton', -7.00, -6.00, -7.00),
('CA', 'America/Glace_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Goose_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Halifax', -4.00, -3.00, -4.00),
('CA', 'America/Inuvik', -7.00, -6.00, -7.00),
('CA', 'America/Iqaluit', -5.00, -4.00, -5.00),
('CA', 'America/Moncton', -4.00, -3.00, -4.00),
('CA', 'America/Montreal', -5.00, -4.00, -5.00),
('CA', 'America/Nipigon', -5.00, -4.00, -5.00),
('CA', 'America/Pangnirtung', -5.00, -4.00, -5.00),
('CA', 'America/Rainy_River', -6.00, -5.00, -6.00),
('CA', 'America/Rankin_Inlet', -6.00, -5.00, -6.00),
('CA', 'America/Regina', -6.00, -6.00, -6.00),
('CA', 'America/Resolute', -6.00, -5.00, -6.00),
('CA', 'America/St_Johns', -3.50, -2.50, -3.50),
('CA', 'America/Swift_Current', -6.00, -6.00, -6.00),
('CA', 'America/Thunder_Bay', -5.00, -4.00, -5.00),
('CA', 'America/Toronto', -5.00, -4.00, -5.00),
('CA', 'America/Vancouver', -8.00, -7.00, -8.00),
('CA', 'America/Whitehorse', -8.00, -7.00, -8.00),
('CA', 'America/Winnipeg', -6.00, -5.00, -6.00),
('CA', 'America/Yellowknife', -7.00, -6.00, -7.00),
('CC', 'Indian/Cocos', 6.50, 6.50, 6.50),
('CD', 'Africa/Kinshasa', 1.00, 1.00, 1.00),
('CD', 'Africa/Lubumbashi', 2.00, 2.00, 2.00),
('CF', 'Africa/Bangui', 1.00, 1.00, 1.00),
('CG', 'Africa/Brazzaville', 1.00, 1.00, 1.00),
('CH', 'Europe/Zurich', 1.00, 2.00, 1.00),
('CI', 'Africa/Abidjan', 0.00, 0.00, 0.00),
('CK', 'Pacific/Rarotonga', -10.00, -10.00, -10.00),
('CL', 'America/Santiago', -3.00, -4.00, -4.00),
('CL', 'Pacific/Easter', -5.00, -6.00, -6.00),
('CM', 'Africa/Douala', 1.00, 1.00, 1.00),
('CN', 'Asia/Chongqing', 8.00, 8.00, 8.00),
('CN', 'Asia/Harbin', 8.00, 8.00, 8.00),
('CN', 'Asia/Kashgar', 8.00, 8.00, 8.00),
('CN', 'Asia/Shanghai', 8.00, 8.00, 8.00),
('CN', 'Asia/Urumqi', 8.00, 8.00, 8.00),
('CO', 'America/Bogota', -5.00, -5.00, -5.00),
('CR', 'America/Costa_Rica', -6.00, -6.00, -6.00),
('CU', 'America/Havana', -5.00, -4.00, -5.00),
('CV', 'Atlantic/Cape_Verde', -1.00, -1.00, -1.00),
('CW', 'America/Curacao', -4.00, -4.00, -4.00),
('CX', 'Indian/Christmas', 7.00, 7.00, 7.00),
('CY', 'Asia/Nicosia', 2.00, 3.00, 2.00),
('CZ', 'Europe/Prague', 1.00, 2.00, 1.00),
('DE', 'Europe/Berlin', 1.00, 2.00, 1.00),
('DE', 'Europe/Busingen', 1.00, 2.00, 1.00),
('DJ', 'Africa/Djibouti', 3.00, 3.00, 3.00),
('DK', 'Europe/Copenhagen', 1.00, 2.00, 1.00),
('DM', 'America/Dominica', -4.00, -4.00, -4.00),
('DO', 'America/Santo_Domingo', -4.00, -4.00, -4.00),
('DZ', 'Africa/Algiers', 1.00, 1.00, 1.00),
('EC', 'America/Guayaquil', -5.00, -5.00, -5.00),
('EC', 'Pacific/Galapagos', -6.00, -6.00, -6.00),
('EE', 'Europe/Tallinn', 2.00, 3.00, 2.00),
('EG', 'Africa/Cairo', 2.00, 2.00, 2.00),
('EH', 'Africa/El_Aaiun', 0.00, 0.00, 0.00),
('ER', 'Africa/Asmara', 3.00, 3.00, 3.00),
('ES', 'Africa/Ceuta', 1.00, 2.00, 1.00),
('ES', 'Atlantic/Canary', 0.00, 1.00, 0.00),
('ES', 'Europe/Madrid', 1.00, 2.00, 1.00),
('ET', 'Africa/Addis_Ababa', 3.00, 3.00, 3.00),
('FI', 'Europe/Helsinki', 2.00, 3.00, 2.00),
('FJ', 'Pacific/Fiji', 13.00, 12.00, 12.00),
('FK', 'Atlantic/Stanley', -3.00, -3.00, -3.00),
('FM', 'Pacific/Chuuk', 10.00, 10.00, 10.00),
('FM', 'Pacific/Kosrae', 11.00, 11.00, 11.00),
('FM', 'Pacific/Pohnpei', 11.00, 11.00, 11.00),
('FO', 'Atlantic/Faroe', 0.00, 1.00, 0.00),
('FR', 'Europe/Paris', 1.00, 2.00, 1.00),
('GA', 'Africa/Libreville', 1.00, 1.00, 1.00),
('GB', 'Europe/London', 0.00, 1.00, 0.00),
('GD', 'America/Grenada', -4.00, -4.00, -4.00),
('GE', 'Asia/Tbilisi', 4.00, 4.00, 4.00),
('GF', 'America/Cayenne', -3.00, -3.00, -3.00),
('GG', 'Europe/Guernsey', 0.00, 1.00, 0.00),
('GH', 'Africa/Accra', 0.00, 0.00, 0.00),
('GI', 'Europe/Gibraltar', 1.00, 2.00, 1.00),
('GL', 'America/Danmarkshavn', 0.00, 0.00, 0.00),
('GL', 'America/Godthab', -3.00, -2.00, -3.00),
('GL', 'America/Scoresbysund', -1.00, 0.00, -1.00),
('GL', 'America/Thule', -4.00, -3.00, -4.00),
('GM', 'Africa/Banjul', 0.00, 0.00, 0.00),
('GN', 'Africa/Conakry', 0.00, 0.00, 0.00),
('GP', 'America/Guadeloupe', -4.00, -4.00, -4.00),
('GQ', 'Africa/Malabo', 1.00, 1.00, 1.00),
('GR', 'Europe/Athens', 2.00, 3.00, 2.00),
('GS', 'Atlantic/South_Georgia', -2.00, -2.00, -2.00),
('GT', 'America/Guatemala', -6.00, -6.00, -6.00),
('GU', 'Pacific/Guam', 10.00, 10.00, 10.00),
('GW', 'Africa/Bissau', 0.00, 0.00, 0.00),
('GY', 'America/Guyana', -4.00, -4.00, -4.00),
('HK', 'Asia/Hong_Kong', 8.00, 8.00, 8.00),
('HN', 'America/Tegucigalpa', -6.00, -6.00, -6.00),
('HR', 'Europe/Zagreb', 1.00, 2.00, 1.00),
('HT', 'America/Port-au-Prince', -5.00, -4.00, -5.00),
('HU', 'Europe/Budapest', 1.00, 2.00, 1.00),
('ID', 'Asia/Jakarta', 7.00, 7.00, 7.00),
('ID', 'Asia/Jayapura', 9.00, 9.00, 9.00),
('ID', 'Asia/Makassar', 8.00, 8.00, 8.00),
('ID', 'Asia/Pontianak', 7.00, 7.00, 7.00),
('IE', 'Europe/Dublin', 0.00, 1.00, 0.00),
('IL', 'Asia/Jerusalem', 2.00, 3.00, 2.00),
('IM', 'Europe/Isle_of_Man', 0.00, 1.00, 0.00),
('IN', 'Asia/Kolkata', 5.50, 5.50, 5.50),
('IO', 'Indian/Chagos', 6.00, 6.00, 6.00),
('IQ', 'Asia/Baghdad', 3.00, 3.00, 3.00),
('IR', 'Asia/Tehran', 3.50, 4.50, 3.50),
('IS', 'Atlantic/Reykjavik', 0.00, 0.00, 0.00),
('IT', 'Europe/Rome', 1.00, 2.00, 1.00),
('JE', 'Europe/Jersey', 0.00, 1.00, 0.00),
('JM', 'America/Jamaica', -5.00, -5.00, -5.00),
('JO', 'Asia/Amman', 2.00, 3.00, 2.00),
('JP', 'Asia/Tokyo', 9.00, 9.00, 9.00),
('KE', 'Africa/Nairobi', 3.00, 3.00, 3.00),
('KG', 'Asia/Bishkek', 6.00, 6.00, 6.00),
('KH', 'Asia/Phnom_Penh', 7.00, 7.00, 7.00),
('KI', 'Pacific/Enderbury', 13.00, 13.00, 13.00),
('KI', 'Pacific/Kiritimati', 14.00, 14.00, 14.00),
('KI', 'Pacific/Tarawa', 12.00, 12.00, 12.00),
('KM', 'Indian/Comoro', 3.00, 3.00, 3.00),
('KN', 'America/St_Kitts', -4.00, -4.00, -4.00),
('KP', 'Asia/Pyongyang', 9.00, 9.00, 9.00),
('KR', 'Asia/Seoul', 9.00, 9.00, 9.00),
('KW', 'Asia/Kuwait', 3.00, 3.00, 3.00),
('KY', 'America/Cayman', -5.00, -5.00, -5.00),
('KZ', 'Asia/Almaty', 6.00, 6.00, 6.00),
('KZ', 'Asia/Aqtau', 5.00, 5.00, 5.00),
('KZ', 'Asia/Aqtobe', 5.00, 5.00, 5.00),
('KZ', 'Asia/Oral', 5.00, 5.00, 5.00),
('KZ', 'Asia/Qyzylorda', 6.00, 6.00, 6.00),
('LA', 'Asia/Vientiane', 7.00, 7.00, 7.00),
('LB', 'Asia/Beirut', 2.00, 3.00, 2.00),
('LC', 'America/St_Lucia', -4.00, -4.00, -4.00),
('LI', 'Europe/Vaduz', 1.00, 2.00, 1.00),
('LK', 'Asia/Colombo', 5.50, 5.50, 5.50),
('LR', 'Africa/Monrovia', 0.00, 0.00, 0.00),
('LS', 'Africa/Maseru', 2.00, 2.00, 2.00),
('LT', 'Europe/Vilnius', 2.00, 3.00, 2.00),
('LU', 'Europe/Luxembourg', 1.00, 2.00, 1.00),
('LV', 'Europe/Riga', 2.00, 3.00, 2.00),
('LY', 'Africa/Tripoli', 2.00, 2.00, 2.00),
('MA', 'Africa/Casablanca', 0.00, 0.00, 0.00),
('MC', 'Europe/Monaco', 1.00, 2.00, 1.00),
('MD', 'Europe/Chisinau', 2.00, 3.00, 2.00),
('ME', 'Europe/Podgorica', 1.00, 2.00, 1.00),
('MF', 'America/Marigot', -4.00, -4.00, -4.00),
('MG', 'Indian/Antananarivo', 3.00, 3.00, 3.00),
('MH', 'Pacific/Kwajalein', 12.00, 12.00, 12.00),
('MH', 'Pacific/Majuro', 12.00, 12.00, 12.00),
('MK', 'Europe/Skopje', 1.00, 2.00, 1.00),
('ML', 'Africa/Bamako', 0.00, 0.00, 0.00),
('MM', 'Asia/Rangoon', 6.50, 6.50, 6.50),
('MN', 'Asia/Choibalsan', 8.00, 8.00, 8.00),
('MN', 'Asia/Hovd', 7.00, 7.00, 7.00),
('MN', 'Asia/Ulaanbaatar', 8.00, 8.00, 8.00),
('MO', 'Asia/Macau', 8.00, 8.00, 8.00),
('MP', 'Pacific/Saipan', 10.00, 10.00, 10.00),
('MQ', 'America/Martinique', -4.00, -4.00, -4.00),
('MR', 'Africa/Nouakchott', 0.00, 0.00, 0.00),
('MS', 'America/Montserrat', -4.00, -4.00, -4.00),
('MT', 'Europe/Malta', 1.00, 2.00, 1.00),
('MU', 'Indian/Mauritius', 4.00, 4.00, 4.00),
('MV', 'Indian/Maldives', 5.00, 5.00, 5.00),
('MW', 'Africa/Blantyre', 2.00, 2.00, 2.00),
('MX', 'America/Bahia_Banderas', -6.00, -5.00, -6.00),
('MX', 'America/Cancun', -6.00, -5.00, -6.00),
('MX', 'America/Chihuahua', -7.00, -6.00, -7.00),
('MX', 'America/Hermosillo', -7.00, -7.00, -7.00),
('MX', 'America/Matamoros', -6.00, -5.00, -6.00),
('MX', 'America/Mazatlan', -7.00, -6.00, -7.00),
('MX', 'America/Merida', -6.00, -5.00, -6.00),
('MX', 'America/Mexico_City', -6.00, -5.00, -6.00),
('MX', 'America/Monterrey', -6.00, -5.00, -6.00),
('MX', 'America/Ojinaga', -7.00, -6.00, -7.00),
('MX', 'America/Santa_Isabel', -8.00, -7.00, -8.00),
('MX', 'America/Tijuana', -8.00, -7.00, -8.00),
('MY', 'Asia/Kuala_Lumpur', 8.00, 8.00, 8.00),
('MY', 'Asia/Kuching', 8.00, 8.00, 8.00),
('MZ', 'Africa/Maputo', 2.00, 2.00, 2.00),
('NA', 'Africa/Windhoek', 2.00, 1.00, 1.00),
('NC', 'Pacific/Noumea', 11.00, 11.00, 11.00),
('NE', 'Africa/Niamey', 1.00, 1.00, 1.00),
('NF', 'Pacific/Norfolk', 11.50, 11.50, 11.50),
('NG', 'Africa/Lagos', 1.00, 1.00, 1.00),
('NI', 'America/Managua', -6.00, -6.00, -6.00),
('NL', 'Europe/Amsterdam', 1.00, 2.00, 1.00),
('NO', 'Europe/Oslo', 1.00, 2.00, 1.00),
('NP', 'Asia/Kathmandu', 5.75, 5.75, 5.75),
('NR', 'Pacific/Nauru', 12.00, 12.00, 12.00),
('NU', 'Pacific/Niue', -11.00, -11.00, -11.00),
('NZ', 'Pacific/Auckland', 13.00, 12.00, 12.00),
('NZ', 'Pacific/Chatham', 13.75, 12.75, 12.75),
('OM', 'Asia/Muscat', 4.00, 4.00, 4.00),
('PA', 'America/Panama', -5.00, -5.00, -5.00),
('PE', 'America/Lima', -5.00, -5.00, -5.00),
('PF', 'Pacific/Gambier', -9.00, -9.00, -9.00),
('PF', 'Pacific/Marquesas', -9.50, -9.50, -9.50),
('PF', 'Pacific/Tahiti', -10.00, -10.00, -10.00),
('PG', 'Pacific/Port_Moresby', 10.00, 10.00, 10.00),
('PH', 'Asia/Manila', 8.00, 8.00, 8.00),
('PK', 'Asia/Karachi', 5.00, 5.00, 5.00),
('PL', 'Europe/Warsaw', 1.00, 2.00, 1.00),
('PM', 'America/Miquelon', -3.00, -2.00, -3.00),
('PN', 'Pacific/Pitcairn', -8.00, -8.00, -8.00),
('PR', 'America/Puerto_Rico', -4.00, -4.00, -4.00),
('PS', 'Asia/Gaza', 2.00, 3.00, 2.00),
('PS', 'Asia/Hebron', 2.00, 3.00, 2.00),
('PT', 'Atlantic/Azores', -1.00, 0.00, -1.00),
('PT', 'Atlantic/Madeira', 0.00, 1.00, 0.00),
('PT', 'Europe/Lisbon', 0.00, 1.00, 0.00),
('PW', 'Pacific/Palau', 9.00, 9.00, 9.00),
('PY', 'America/Asuncion', -3.00, -4.00, -4.00),
('QA', 'Asia/Qatar', 3.00, 3.00, 3.00),
('RE', 'Indian/Reunion', 4.00, 4.00, 4.00),
('RO', 'Europe/Bucharest', 2.00, 3.00, 2.00),
('RS', 'Europe/Belgrade', 1.00, 2.00, 1.00),
('RU', 'Asia/Anadyr', 12.00, 12.00, 12.00),
('RU', 'Asia/Irkutsk', 9.00, 9.00, 9.00),
('RU', 'Asia/Kamchatka', 12.00, 12.00, 12.00),
('RU', 'Asia/Khandyga', 10.00, 10.00, 10.00),
('RU', 'Asia/Krasnoyarsk', 8.00, 8.00, 8.00),
('RU', 'Asia/Magadan', 12.00, 12.00, 12.00),
('RU', 'Asia/Novokuznetsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Novosibirsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Omsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Sakhalin', 11.00, 11.00, 11.00),
('RU', 'Asia/Ust-Nera', 11.00, 11.00, 11.00),
('RU', 'Asia/Vladivostok', 11.00, 11.00, 11.00),
('RU', 'Asia/Yakutsk', 10.00, 10.00, 10.00),
('RU', 'Asia/Yekaterinburg', 6.00, 6.00, 6.00),
('RU', 'Europe/Kaliningrad', 3.00, 3.00, 3.00),
('RU', 'Europe/Moscow', 4.00, 4.00, 4.00),
('RU', 'Europe/Samara', 4.00, 4.00, 4.00),
('RU', 'Europe/Volgograd', 4.00, 4.00, 4.00),
('RW', 'Africa/Kigali', 2.00, 2.00, 2.00),
('SA', 'Asia/Riyadh', 3.00, 3.00, 3.00),
('SB', 'Pacific/Guadalcanal', 11.00, 11.00, 11.00),
('SC', 'Indian/Mahe', 4.00, 4.00, 4.00),
('SD', 'Africa/Khartoum', 3.00, 3.00, 3.00),
('SE', 'Europe/Stockholm', 1.00, 2.00, 1.00),
('SG', 'Asia/Singapore', 8.00, 8.00, 8.00),
('SH', 'Atlantic/St_Helena', 0.00, 0.00, 0.00),
('SI', 'Europe/Ljubljana', 1.00, 2.00, 1.00),
('SJ', 'Arctic/Longyearbyen', 1.00, 2.00, 1.00),
('SK', 'Europe/Bratislava', 1.00, 2.00, 1.00),
('SL', 'Africa/Freetown', 0.00, 0.00, 0.00),
('SM', 'Europe/San_Marino', 1.00, 2.00, 1.00),
('SN', 'Africa/Dakar', 0.00, 0.00, 0.00),
('SO', 'Africa/Mogadishu', 3.00, 3.00, 3.00),
('SR', 'America/Paramaribo', -3.00, -3.00, -3.00),
('SS', 'Africa/Juba', 3.00, 3.00, 3.00),
('ST', 'Africa/Sao_Tome', 0.00, 0.00, 0.00),
('SV', 'America/El_Salvador', -6.00, -6.00, -6.00),
('SX', 'America/Lower_Princes', -4.00, -4.00, -4.00),
('SY', 'Asia/Damascus', 2.00, 3.00, 2.00),
('SZ', 'Africa/Mbabane', 2.00, 2.00, 2.00),
('TC', 'America/Grand_Turk', -5.00, -4.00, -5.00),
('TD', 'Africa/Ndjamena', 1.00, 1.00, 1.00),
('TF', 'Indian/Kerguelen', 5.00, 5.00, 5.00),
('TG', 'Africa/Lome', 0.00, 0.00, 0.00),
('TH', 'Asia/Bangkok', 7.00, 7.00, 7.00),
('TJ', 'Asia/Dushanbe', 5.00, 5.00, 5.00),
('TK', 'Pacific/Fakaofo', 13.00, 13.00, 13.00),
('TL', 'Asia/Dili', 9.00, 9.00, 9.00),
('TM', 'Asia/Ashgabat', 5.00, 5.00, 5.00),
('TN', 'Africa/Tunis', 1.00, 1.00, 1.00),
('TO', 'Pacific/Tongatapu', 13.00, 13.00, 13.00),
('TR', 'Europe/Istanbul', 2.00, 3.00, 2.00),
('TT', 'America/Port_of_Spain', -4.00, -4.00, -4.00),
('TV', 'Pacific/Funafuti', 12.00, 12.00, 12.00),
('TW', 'Asia/Taipei', 8.00, 8.00, 8.00),
('TZ', 'Africa/Dar_es_Salaam', 3.00, 3.00, 3.00),
('UA', 'Europe/Kiev', 2.00, 3.00, 2.00),
('UA', 'Europe/Simferopol', 2.00, 4.00, 4.00),
('UA', 'Europe/Uzhgorod', 2.00, 3.00, 2.00),
('UA', 'Europe/Zaporozhye', 2.00, 3.00, 2.00),
('UG', 'Africa/Kampala', 3.00, 3.00, 3.00),
('UM', 'Pacific/Johnston', -10.00, -10.00, -10.00),
('UM', 'Pacific/Midway', -11.00, -11.00, -11.00),
('UM', 'Pacific/Wake', 12.00, 12.00, 12.00),
('US', 'America/Adak', -10.00, -9.00, -10.00),
('US', 'America/Anchorage', -9.00, -8.00, -9.00),
('US', 'America/Boise', -7.00, -6.00, -7.00),
('US', 'America/Chicago', -6.00, -5.00, -6.00),
('US', 'America/Denver', -7.00, -6.00, -7.00),
('US', 'America/Detroit', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Indianapolis', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Knox', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Marengo', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Petersburg', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Tell_City', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Vevay', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Vincennes', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Winamac', -5.00, -4.00, -5.00),
('US', 'America/Juneau', -9.00, -8.00, -9.00),
('US', 'America/Kentucky/Louisville', -5.00, -4.00, -5.00),
('US', 'America/Kentucky/Monticello', -5.00, -4.00, -5.00),
('US', 'America/Los_Angeles', -8.00, -7.00, -8.00),
('US', 'America/Menominee', -6.00, -5.00, -6.00),
('US', 'America/Metlakatla', -8.00, -8.00, -8.00),
('US', 'America/New_York', -5.00, -4.00, -5.00),
('US', 'America/Nome', -9.00, -8.00, -9.00),
('US', 'America/North_Dakota/Beulah', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/Center', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/New_Salem', -6.00, -5.00, -6.00),
('US', 'America/Phoenix', -7.00, -7.00, -7.00),
('US', 'America/Shiprock', -7.00, -6.00, -7.00),
('US', 'America/Sitka', -9.00, -8.00, -9.00),
('US', 'America/Yakutat', -9.00, -8.00, -9.00),
('US', 'Pacific/Honolulu', -10.00, -10.00, -10.00),
('UY', 'America/Montevideo', -2.00, -3.00, -3.00),
('UZ', 'Asia/Samarkand', 5.00, 5.00, 5.00),
('UZ', 'Asia/Tashkent', 5.00, 5.00, 5.00),
('VA', 'Europe/Vatican', 1.00, 2.00, 1.00),
('VC', 'America/St_Vincent', -4.00, -4.00, -4.00),
('VE', 'America/Caracas', -4.50, -4.50, -4.50),
('VG', 'America/Tortola', -4.00, -4.00, -4.00),
('VI', 'America/St_Thomas', -4.00, -4.00, -4.00),
('VN', 'Asia/Ho_Chi_Minh', 7.00, 7.00, 7.00),
('VU', 'Pacific/Efate', 11.00, 11.00, 11.00),
('WF', 'Pacific/Wallis', 12.00, 12.00, 12.00),
('WS', 'Pacific/Apia', 14.00, 13.00, 13.00),
('YE', 'Asia/Aden', 3.00, 3.00, 3.00),
('YT', 'Indian/Mayotte', 3.00, 3.00, 3.00),
('ZA', 'Africa/Johannesburg', 2.00, 2.00, 2.00),
('ZM', 'Africa/Lusaka', 2.00, 2.00, 2.00),
('ZW', 'Africa/Harare', 2.00, 2.00, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `transcation_id` varchar(255) DEFAULT NULL,
  `booking_id` varchar(255) DEFAULT NULL,
  `transcation_type` int DEFAULT NULL COMMENT '1=event, 2=product, 3= withdraw, 4= balance add, 5 = balance subtract',
  `customer_id` bigint DEFAULT NULL,
  `organizer_id` bigint DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `grand_total` double(8,2) DEFAULT NULL,
  `commission` float(8,2) DEFAULT '0.00',
  `tax` float(8,2) DEFAULT '0.00',
  `pre_balance` float(8,2) DEFAULT '0.00',
  `after_balance` float(8,2) DEFAULT '0.00',
  `gateway_type` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `currency_symbol_position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transcation_id`, `booking_id`, `transcation_type`, `customer_id`, `organizer_id`, `payment_status`, `payment_method`, `grand_total`, `commission`, `tax`, `pre_balance`, `after_balance`, `gateway_type`, `currency_symbol`, `currency_symbol_position`, `created_at`, `updated_at`) VALUES
(1, '1684058634', '1', 2, 23, NULL, '1', 'PayPal', 550.00, 550.00, 0.00, 0.00, 0.00, 'online', '$', 'left', '2023-05-14 10:03:54', '2023-05-14 10:03:54'),
(2, '1684058744', '2', 2, 23, NULL, '1', 'PayPal', 25.00, 25.00, 0.00, 0.00, 0.00, 'online', '$', 'left', '2023-05-14 10:05:44', '2023-05-14 10:44:24'),
(3, '1684058782', '3', 2, 23, NULL, '1', 'PayPal', 770.00, 770.00, 0.00, 0.00, 0.00, 'online', '$', 'left', '2023-05-14 10:06:22', '2023-05-14 10:06:22'),
(4, '1684058804', '4', 2, 23, NULL, '1', 'Citibank', 250.00, 250.00, 0.00, 0.00, 0.00, 'offline', '$', 'left', '2023-05-14 10:06:44', '2023-05-14 10:06:44'),
(5, '1684058827', '5', 2, 23, NULL, '1', 'Citibank', 340.00, 340.00, 0.00, 0.00, 0.00, 'offline', '$', 'left', '2023-05-14 10:07:07', '2023-05-14 10:07:07'),
(6, '1684058854', '6', 2, 23, NULL, '1', 'Bank of America', 320.00, 320.00, 0.00, 0.00, 0.00, 'offline', '$', 'left', '2023-05-14 10:07:34', '2023-05-14 10:07:34'),
(7, '1684059006', '1', 1, 23, 25, '1', 'PayPal', 160.00, 8.00, 16.00, 0.00, 152.00, 'online', '$', 'left', '2023-05-14 10:10:06', '2023-05-14 10:10:06'),
(8, '1684059272', '2', 1, 23, 23, '1', 'PayPal', 95.00, 4.75, 9.50, 0.00, 90.25, 'online', '$', 'left', '2023-05-14 10:14:32', '2023-05-14 10:14:32'),
(9, '1684059352', '3', 1, 23, NULL, '1', 'PayPal', 112.00, 5.60, 11.20, 0.00, NULL, 'online', '$', 'left', '2023-05-14 10:15:52', '2023-05-14 10:15:52'),
(10, '1684059437', '4', 1, 23, 23, '1', 'PayPal', 40.00, 2.00, 4.00, 90.25, 128.25, 'online', '$', 'left', '2023-05-14 10:17:17', '2023-05-14 10:17:17'),
(11, '1684059694', '7', 1, 23, 25, '1', 'Citibank', 20.00, 1.00, 2.00, 152.00, 171.00, 'offline', '$', 'left', '2023-05-14 10:21:34', '2023-05-14 10:21:34'),
(12, '1684060293', '8', 1, 23, NULL, '1', 'PayPal', 237.20, 11.86, 23.72, 0.00, NULL, 'online', '$', 'left', '2023-05-14 10:31:33', '2023-05-14 10:31:33'),
(13, '1684060340', '9', 1, 23, 24, '1', 'Bank of America', 50.00, 2.50, 5.00, 0.00, 47.50, 'offline', '$', 'left', '2023-05-14 10:32:20', '2023-05-14 10:32:20'),
(14, '1684060389', '10', 1, 23, 23, '1', 'PayPal', 500.00, 25.00, 50.00, 128.25, 603.25, 'online', '$', 'left', '2023-05-14 10:33:09', '2023-05-14 10:33:09'),
(15, '1684060587', '7', 2, 23, NULL, '1', 'PayPal', 300.00, 300.00, 0.00, 0.00, 0.00, 'online', '$', 'left', '2023-05-14 10:36:27', '2023-05-14 10:36:27'),
(16, '1684060744', '13', 1, 23, 24, '1', 'PayPal', 50.00, 2.50, 5.00, 47.50, 95.00, 'online', '$', 'left', '2023-05-14 10:39:04', '2023-05-14 10:39:04'),
(17, '1684060996', '1', 3, NULL, 23, '1', '4', 50.00, 0.00, 0.00, 603.25, 553.25, NULL, '$', 'left', '2023-05-14 10:43:16', '2023-05-14 10:44:14'),
(18, '1684061019', '2', 3, NULL, 23, '2', '5', 70.00, 0.00, 0.00, 553.25, 483.25, NULL, '$', 'left', '2023-05-14 10:43:39', '2023-05-14 10:53:53'),
(19, '1684061084', '3', 3, NULL, 23, '0', '4', 100.00, 0.00, 0.00, 553.25, 453.25, NULL, '$', 'left', '2023-05-14 10:44:44', '2023-05-14 10:44:44'),
(20, '1690701577', '14', 1, 23, NULL, '1', 'Stripe', 166.10, 8.31, 16.61, 0.00, NULL, 'online', '$', 'left', '2023-07-30 07:19:37', '2023-07-30 07:19:37'),
(21, '1690709435', '15', 1, 23, 23, '1', 'PayPal', 250.00, 12.50, 25.00, 453.25, 690.75, 'online', '$', 'left', '2023-07-30 09:30:35', '2023-07-30 09:30:35'),
(22, '1690709686', '18', 1, 23, 23, '1', 'PayPal', 250.00, 12.50, 25.00, 690.75, 928.25, 'online', '$', 'left', '2023-07-30 09:34:46', '2023-07-30 09:34:46'),
(23, '1690709701', '19', 1, 23, 23, '1', 'PayPal', 250.00, 12.50, 25.00, 928.25, 1165.75, 'online', '$', 'left', '2023-07-30 09:35:01', '2023-07-30 09:35:01'),
(24, '1690709784', '20', 1, 23, 23, '1', 'PayPal', 190.00, 9.50, 19.00, 1165.75, 1346.25, 'online', '$', 'left', '2023-07-30 09:36:24', '2023-07-30 09:36:24'),
(25, '1690709837', '21', 1, 23, 23, '1', 'PayPal', 140.00, 7.00, 14.00, 1346.25, 1479.25, 'online', '$', 'left', '2023-07-30 09:37:17', '2023-07-30 09:37:17'),
(26, '1690711904', '22', 1, 23, 23, '1', 'Stripe', 100.00, 5.00, 10.00, 1479.25, 1574.25, 'online', '$', 'left', '2023-07-30 10:11:44', '2023-07-30 10:11:44'),
(27, '1690712455', '23', 1, 23, NULL, '1', 'Stripe', 142.20, 7.11, 14.22, 0.00, NULL, 'online', '$', 'left', '2023-07-30 10:20:55', '2023-07-30 10:20:55'),
(28, '1690712617', '24', 1, 23, NULL, '1', 'Stripe', 71.10, 3.56, 7.11, 0.00, NULL, 'online', '$', 'left', '2023-07-30 10:23:37', '2023-07-30 10:23:37'),
(29, '1690712825', '25', 1, 23, 25, '1', 'Stripe', 20.00, 1.00, 2.00, 171.00, 190.00, 'online', '$', 'left', '2023-07-30 10:27:05', '2023-07-30 10:27:05'),
(30, '1690712878', '26', 1, 23, 23, '1', 'Stripe', 40.00, 2.00, 4.00, 1574.25, 1612.25, 'online', '$', 'left', '2023-07-30 10:27:58', '2023-07-30 10:27:58'),
(31, '1690784185', '27', 1, 23, 23, '1', 'Stripe', 100.00, 5.00, 10.00, 1612.25, 1707.25, 'online', '$', 'left', '2023-07-31 06:16:25', '2023-07-31 06:16:25'),
(32, '1690785075', '28', 1, 23, 23, '1', 'Stripe', 60.00, 3.00, 6.00, 1707.25, 1764.25, 'online', '$', 'left', '2023-07-31 06:31:15', '2023-07-31 06:31:15'),
(33, '1690785167', '29', 1, 23, NULL, '1', 'Stripe', 71.10, 3.56, 7.11, 0.00, NULL, 'online', '$', 'left', '2023-07-31 06:32:47', '2023-07-31 06:32:47'),
(34, '1690785889', '8', 2, 23, NULL, '1', 'Stripe', 760.00, 760.00, 0.00, 0.00, 0.00, 'online', '$', 'left', '2023-07-31 06:44:49', '2023-07-31 06:44:49'),
(35, '1696070205', '9', 2, NULL, NULL, '1', 'PayPal', 756.55, 756.55, 0.00, 0.00, 0.00, 'online', '$', 'left', '2023-09-30 10:36:45', '2023-09-30 10:36:45'),
(36, '1696132488', '10', 2, 23, NULL, '1', 'PayPal', 973.90, 973.90, 0.00, 0.00, 0.00, 'online', '$', 'left', '2023-10-01 03:54:48', '2023-10-01 03:54:48'),
(37, '1714296689', NULL, 5, NULL, 23, '1', NULL, NULL, 0.00, 0.00, 1764.25, 1764.25, NULL, 'RM', 'left', '2024-04-28 09:31:29', '2024-04-28 09:31:29'),
(38, '1714902614', NULL, 5, NULL, 23, '1', NULL, 1764.25, 0.00, 0.00, 1764.25, 0.00, NULL, 'RM', 'left', '2024-05-05 09:50:14', '2024-05-05 09:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 -> banned or deactive, 1 -> active',
  `verification_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `edit_profile_status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 -> not edited user profile, 1 -> edited user profile',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `image`, `username`, `email`, `email_verified_at`, `password`, `contact_number`, `address`, `city`, `state`, `country`, `status`, `verification_token`, `remember_token`, `edit_profile_status`, `created_at`, `updated_at`) VALUES
(9, 'Saeed', 'Mahmud', '1636607574.png', 'saeed', 'geniustest11@gmail.com', '2021-12-13 02:35:32', '$2a$12$T9Z/6tQKjnW8bQdmgNW70eEGuum0f69NUAJ2wQsGqBx6UoJ/bU0Qa', '+132456789', 'Mirpur 12', 'Dhaka', NULL, 'BD', 1, NULL, NULL, 1, '2021-11-04 03:31:44', '2021-12-23 05:00:40'),
(10, 'Samiul', 'Pratik', NULL, 'pratik', 'pratik.anwar@gmail.com', '2022-04-26 02:14:48', '$2a$12$ID6qjVPRRIE7m3YwbkAZ1eCFBc1uBvtA2pcnY.oArzBklxwx1a7Uq', '+132456789', 'House - 44, Road, - 3, Sector - 11, Uttara, Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', 1, NULL, NULL, 1, '2022-04-26 02:14:29', '2022-04-26 02:15:46'),
(11, NULL, NULL, NULL, 'rynupyzan', 'user@gmail.com', NULL, '$2y$10$bRif2OK0/gzPRTYMODqAFOL4DVFk8Uvrr7p3ZsQ.1BIqEqozSvYvC', NULL, NULL, NULL, NULL, NULL, 0, '8cc2740a37e351c21d8798de23ced22c', NULL, 0, '2022-06-14 04:13:58', '2022-06-14 04:13:58'),
(12, 'Fahad', 'Hossain', '62a9725fd40d8.jpg', 'fahadahmadshemul', 'fahadahmadshemul@gmail.com', NULL, '$2y$10$sUWgkndzQpWxjy5PmF0RqO1h1Wp3CpkeXcb/hyJF6ak9TL0YFyrLy', '0123982109', 'Dhaka, Bangladesh', 'Dhaka', 'N/A', 'Bangladesh', 1, NULL, NULL, 1, '2022-06-14 23:44:29', '2022-12-17 23:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `variation_contents`
--

CREATE TABLE `variation_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint DEFAULT NULL,
  `ticket_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_contents`
--

INSERT INTO `variation_contents` (`id`, `language_id`, `ticket_id`, `name`, `key`, `created_at`, `updated_at`) VALUES
(33, 8, 155, '234', '0', '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(34, 8, 155, '2323', '1', '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(35, 22, 155, 'ewwerwer', '0', '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(36, 22, 155, '234234', '1', '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(37, 8, 154, 'VIP en', '0', '2023-05-13 11:20:35', '2023-05-13 11:20:35'),
(38, 22, 154, 'VIP ar', '0', '2023-05-13 11:20:35', '2023-05-13 11:20:35'),
(39, 8, 156, 'Economy', '0', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(40, 8, 156, 'Business', '1', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(41, 8, 156, 'First', '2', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(42, 22, 156, 'اقتصاد', '0', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(43, 22, 156, 'عمل', '1', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(44, 22, 156, 'أولاً', '2', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(45, 8, 164, 'Economy', '0', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(46, 8, 164, 'Business', '1', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(47, 8, 164, 'First', '2', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(48, 22, 164, 'اقتصاد', '0', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(49, 22, 164, 'عمل', '1', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(50, 22, 164, 'أولاً', '2', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(51, 8, 168, 'Vip', '0', '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(52, 8, 168, 'Normal', '1', '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(53, 22, 168, 'كبار الشخصيات', '0', '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(54, 22, 168, 'طبيعي', '1', '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(67, 8, 170, 'Premium', '0', '2023-05-14 09:37:08', '2023-05-14 09:37:08'),
(68, 8, 170, 'First', '1', '2023-05-14 09:37:08', '2023-05-14 09:37:08'),
(69, 22, 170, 'غالي', '0', '2023-05-14 09:37:08', '2023-05-14 09:37:08'),
(70, 22, 170, 'أولاً', '1', '2023-05-14 09:37:08', '2023-05-14 09:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint NOT NULL,
  `event_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `organizer_id` int NOT NULL,
  `withdraw_id` varchar(255) DEFAULT NULL,
  `method_id` int NOT NULL,
  `amount` varchar(255) NOT NULL,
  `payable_amount` float(8,2) DEFAULT '0.00',
  `total_charge` float(8,2) DEFAULT '0.00',
  `additional_reference` longtext,
  `feilds` text NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0-pending, 1-approved, 2-decline',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `organizer_id`, `withdraw_id`, `method_id`, `amount`, `payable_amount`, `total_charge`, `additional_reference`, `feilds`, `status`, `created_at`, `updated_at`) VALUES
(1, 23, '6460bb44d5a0a', 4, '50', 30.00, 20.00, NULL, '{\"Account_No\":\"09812039821093\",\"Contact_Number\":\"0849230480293\"}', 1, '2023-05-14 10:43:16', '2023-05-14 10:44:14'),
(2, 23, '6460bb5b2c4c2', 5, '70', 64.20, 5.80, 'N/A', '{\"Account_No\":\"09812039821093\"}', 2, '2023-05-14 10:43:39', '2023-05-14 10:53:53'),
(3, 23, '6460bb9c675bf', 4, '100', 70.00, 30.00, 'N/A', '{\"Account_No\":\"09812039821093\",\"Contact_Number\":\"09812039821093\"}', 0, '2023-05-14 10:44:44', '2023-05-14 10:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_method_inputs`
--

CREATE TABLE `withdraw_method_inputs` (
  `id` bigint UNSIGNED NOT NULL,
  `withdraw_payment_method_id` int NOT NULL,
  `type` tinyint DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-datepicker, 6-timepicker, 7-number',
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `required` tinyint NOT NULL DEFAULT '0' COMMENT '1-required, 0- optional',
  `order_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `withdraw_method_inputs`
--

INSERT INTO `withdraw_method_inputs` (`id`, `withdraw_payment_method_id`, `type`, `label`, `name`, `placeholder`, `required`, `order_number`, `created_at`, `updated_at`) VALUES
(14, 4, 1, 'Account No', 'Account_No', 'Enter Account Number', 1, 1, '2023-01-05 11:02:21', '2023-05-04 15:40:27'),
(15, 4, 7, 'Contact Number', 'Contact_Number', 'Enter Contact Number', 1, 2, '2023-01-17 10:52:21', '2023-05-04 15:40:27'),
(16, 5, 1, 'Account No', 'Account_No', 'Enter Account Number', 1, 1, '2023-01-21 06:37:04', '2023-01-21 06:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_method_options`
--

CREATE TABLE `withdraw_method_options` (
  `id` bigint UNSIGNED NOT NULL,
  `withdraw_method_input_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_payment_methods`
--

CREATE TABLE `withdraw_payment_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `fixed_charge` float(8,2) DEFAULT '0.00',
  `percentage_charge` float DEFAULT '0',
  `min_limit` varchar(255) NOT NULL,
  `max_limit` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `withdraw_payment_methods`
--

INSERT INTO `withdraw_payment_methods` (`id`, `fixed_charge`, `percentage_charge`, `min_limit`, `max_limit`, `name`, `status`, `created_at`, `updated_at`) VALUES
(4, 10.00, 20, '50', '1000', 'Bitcoin', 0, '2023-01-05 10:52:20', '2024-04-23 22:24:17'),
(5, 3.00, 4, '10', '100', 'Perfect Money', 0, '2023-01-05 11:02:57', '2024-04-23 22:24:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us_sections`
--
ALTER TABLE `about_us_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_sections`
--
ALTER TABLE `action_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_role_id_foreign` (`role_id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categories_language_id_foreign` (`language_id`);

--
-- Indexes for table `blog_informations`
--
ALTER TABLE `blog_informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_informations_language_id_foreign` (`language_id`),
  ADD KEY `blog_informations_blog_category_id_foreign` (`blog_category_id`),
  ADD KEY `blog_informations_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_test_ibfk_1` (`state_id`),
  ADD KEY `cities_test_ibfk_2` (`country_id`);

--
-- Indexes for table `contact_pages`
--
ALTER TABLE `contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_alerts`
--
ALTER TABLE `cookie_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cookie_alerts_language_id_foreign` (`language_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `count_informations`
--
ALTER TABLE `count_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_categories`
--
ALTER TABLE `event_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_contents`
--
ALTER TABLE `event_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_dates`
--
ALTER TABLE `event_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_features`
--
ALTER TABLE `event_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_feature_sections`
--
ALTER TABLE `event_feature_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_images`
--
ALTER TABLE `event_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_language_id_foreign` (`language_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_contents`
--
ALTER TABLE `footer_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer_texts_language_id_foreign` (`language_id`);

--
-- Indexes for table `fun_fact_sections`
--
ALTER TABLE `fun_fact_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooogle_calendar_infos`
--
ALTER TABLE `gooogle_calendar_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_sections`
--
ALTER TABLE `hero_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_works`
--
ALTER TABLE `how_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_work_items`
--
ALTER TABLE `how_work_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_builders`
--
ALTER TABLE `menu_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_gateways`
--
ALTER TABLE `online_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizers`
--
ALTER TABLE `organizers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizer_infos`
--
ALTER TABLE `organizer_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contents`
--
ALTER TABLE `page_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_contents_language_id_foreign` (`language_id`),
  ADD KEY `page_contents_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_headings`
--
ALTER TABLE `page_headings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_headings_language_id_foreign` (`language_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_sections`
--
ALTER TABLE `partner_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_invoices`
--
ALTER TABLE `payment_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_contents`
--
ALTER TABLE `product_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`),
  ADD KEY `push_subscriptions_subscribable_type_subscribable_id_index` (`subscribable_type`,`subscribable_id`);

--
-- Indexes for table `quick_links`
--
ALTER TABLE `quick_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quick_links_language_id_foreign` (`language_id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_titles`
--
ALTER TABLE `section_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seos_language_id_foreign` (`language_id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_coupons`
--
ALTER TABLE `shop_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_region` (`country_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_id_unique` (`email_id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_statuses`
--
ALTER TABLE `support_ticket_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_contents`
--
ALTER TABLE `ticket_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`country_code`,`timezone`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variation_contents`
--
ALTER TABLE `variation_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_method_inputs`
--
ALTER TABLE `withdraw_method_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_method_options`
--
ALTER TABLE `withdraw_method_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_payment_methods`
--
ALTER TABLE `withdraw_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_sections`
--
ALTER TABLE `about_us_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `action_sections`
--
ALTER TABLE `action_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `blog_informations`
--
ALTER TABLE `blog_informations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_pages`
--
ALTER TABLE `contact_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cookie_alerts`
--
ALTER TABLE `cookie_alerts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `count_informations`
--
ALTER TABLE `count_informations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `event_categories`
--
ALTER TABLE `event_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `event_contents`
--
ALTER TABLE `event_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `event_dates`
--
ALTER TABLE `event_dates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `event_features`
--
ALTER TABLE `event_features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `event_feature_sections`
--
ALTER TABLE `event_feature_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_images`
--
ALTER TABLE `event_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `footer_contents`
--
ALTER TABLE `footer_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fun_fact_sections`
--
ALTER TABLE `fun_fact_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gooogle_calendar_infos`
--
ALTER TABLE `gooogle_calendar_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hero_sections`
--
ALTER TABLE `hero_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `how_works`
--
ALTER TABLE `how_works`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `how_work_items`
--
ALTER TABLE `how_work_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu_builders`
--
ALTER TABLE `menu_builders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `online_gateways`
--
ALTER TABLE `online_gateways`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `organizers`
--
ALTER TABLE `organizers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `organizer_infos`
--
ALTER TABLE `organizer_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `page_headings`
--
ALTER TABLE `page_headings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `partner_sections`
--
ALTER TABLE `partner_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_invoices`
--
ALTER TABLE `payment_invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_contents`
--
ALTER TABLE `product_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quick_links`
--
ALTER TABLE `quick_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `section_titles`
--
ALTER TABLE `section_titles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shop_coupons`
--
ALTER TABLE `shop_coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `support_ticket_statuses`
--
ALTER TABLE `support_ticket_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `ticket_contents`
--
ALTER TABLE `ticket_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `variation_contents`
--
ALTER TABLE `variation_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdraw_method_inputs`
--
ALTER TABLE `withdraw_method_inputs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `withdraw_method_options`
--
ALTER TABLE `withdraw_method_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_payment_methods`
--
ALTER TABLE `withdraw_payment_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_informations`
--
ALTER TABLE `blog_informations`
  ADD CONSTRAINT `blog_informations_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_informations_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_informations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `cities_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `cookie_alerts`
--
ALTER TABLE `cookie_alerts`
  ADD CONSTRAINT `cookie_alerts_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `footer_contents`
--
ALTER TABLE `footer_contents`
  ADD CONSTRAINT `footer_texts_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_contents`
--
ALTER TABLE `page_contents`
  ADD CONSTRAINT `page_contents_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `page_contents_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `popups`
--
ALTER TABLE `popups`
  ADD CONSTRAINT `popups_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quick_links`
--
ALTER TABLE `quick_links`
  ADD CONSTRAINT `quick_links_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `seos`
--
ALTER TABLE `seos`
  ADD CONSTRAINT `seos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `country_region_final` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
