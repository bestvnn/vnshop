-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th1 17, 2026 lúc 06:41 PM
-- Phiên bản máy phục vụ: 8.0.17
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vnshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_ads`
--

CREATE TABLE `core_ads` (
  `id` int(10) NOT NULL,
  `ads` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `core_ads`
--

INSERT INTO `core_ads` (`id`, `ads`) VALUES
(3, 'Facebook Ads'),
(4, 'AKP Ads'),
(5, 'Mgid Ads');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_backlists`
--

CREATE TABLE `core_backlists` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `note` text,
  `user_add` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `core_backlists`
--

INSERT INTO `core_backlists` (`id`, `phone_number`, `note`, `user_add`) VALUES
(2, '0705140138 ', 'đặt nhiều lần gọi k nghe', '0'),
(3, '0928038641', 'đặt nhiều lần cứ nói đến vòng là tắt máy', '0'),
(4, '	0902427168', 'đăt nhiều lần nhưng gọi đến bảo k mua j', '0'),
(5, '0933221722', 'k đặt có ng phá', '0'),
(6, '0379200315', 'để số đt nhiều lần nhưng nói k đặt', '0'),
(7, '0777960014', 'để lại sđt nhưng lần nào cũng nói k đặt', '0'),
(8, '	0941245915', 'đặt nhiều lần nhưng từ chối nghe', '0'),
(9, '0357129939', 'đăt 2 lần đều kêu nhầm số k đặt j', '0'),
(10, '0795225133', 'đặt nhiều lần nhưng k ll đc', '0'),
(11, '0941245915', 'đặt nhiều lần k nghe.lúc chốt đc thì k nhận', '0'),
(12, '0562811294', 'đặt r nhưng hoàn,đặt lại nhiều đơn k ll đc', '0'),
(13, '0357139939', 'đặt nhiều lần nhưng bảo sai tên sai địa chỉ', '0'),
(14, '0966190222', 'đặt nhiều lần nhưng xác nhận k đặt', '0'),
(15, '0962544486', 'đặt nhiều lần nhưng bảo k phải', '0'),
(16, '0375653089', 'Đặt nhiều lần nhưng gọi k nghe', '0'),
(17, '0854014096', 'đặt nhiều lần gọi k nghe', '0'),
(18, '0917989737', 'CHUYÊN ĐẶT LUNG TUNG', '0'),
(19, '0912345678', 'r', '0'),
(20, '0886175755', 'rac', '0'),
(21, '1234567890', 'rác', '0'),
(22, '0372789955', 'RÁC', '0'),
(23, '0987654321', 'rác', '0'),
(24, '0000000000', 'rác', '0'),
(25, '0984308308', 'rác', '0'),
(26, '0372789955', 'rác', '0'),
(27, '0906308308', 'rác', '0'),
(28, '0965141587', 'rác', '0'),
(29, '0909090909', 'rác', '0'),
(30, '0354040498', 'CHUYÊN GIA ĐẶT XONG HỦY', '0'),
(31, '0913561451', 'RÁC', '0'),
(32, '0989852228', 'đặt nhiều lần gọi k nghe', '0'),
(33, '0919566558', 'rác', '0'),
(34, '0914671699', 'rác đặt nhiều lần', '0'),
(35, '0947481485', 'đặt nhiều lần gọi k nghe', '0'),
(36, '0947481485', 'đặt rác', NULL),
(37, '0916016114', 'ghi tên láo', NULL),
(38, '0353396599', 'láo', NULL),
(39, '0916016114', 'láo', NULL),
(40, '0914671699', ' ', NULL),
(41, '0354621698', ' ', NULL),
(42, '0396919550', ' ', NULL),
(43, '0914671699', ' ', NULL),
(44, '0909099899', ' ', NULL),
(45, '0900000009', ' ', NULL),
(46, '0348396600', ' ', NULL),
(47, '0983900930', ' ', NULL),
(48, '0947481485', ' ', NULL),
(49, '0396919550', ' ', NULL),
(50, '0935552885', ' ', NULL),
(51, '0900000000', ' ', NULL),
(52, '0903222134', ' ', NULL),
(53, '0999999999', ' ', NULL),
(54, '0935552885', ' ', NULL),
(55, '0348396600', ' ', NULL),
(56, '0764442632', ' ', NULL),
(57, '0354621698', ' ', NULL),
(58, '0938977739', ' ', NULL),
(59, '0900000000', ' ', NULL),
(60, '0937734556', ' ', NULL),
(61, '0312659874', ' ', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_comments`
--

CREATE TABLE `core_comments` (
  `id` int(10) NOT NULL,
  `comment_category_id` int(10) NOT NULL,
  `comment_category_id1` int(10) NOT NULL,
  `comment_category_id2` int(10) NOT NULL,
  `comment_landing_id` int(10) NOT NULL,
  `avatar` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `total_like` int(10) DEFAULT NULL,
  `bad` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_comment_bads`
--

CREATE TABLE `core_comment_bads` (
  `id` int(10) NOT NULL,
  `comment_id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `content` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bad_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_comment_categories1`
--

CREATE TABLE `core_comment_categories1` (
  `id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `category_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_comment_categories2`
--

CREATE TABLE `core_comment_categories2` (
  `id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `category_id1` int(11) NOT NULL,
  `category_name2` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_comment_landings`
--

CREATE TABLE `core_comment_landings` (
  `id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `category_id1` int(10) NOT NULL,
  `category_id2` int(10) NOT NULL,
  `landing` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_comment_replys`
--

CREATE TABLE `core_comment_replys` (
  `id` int(10) NOT NULL,
  `comment_id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `content` text,
  `total_like` int(10) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_districts`
--

CREATE TABLE `core_districts` (
  `districtid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinceid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_email_marketings`
--

CREATE TABLE `core_email_marketings` (
  `id` int(11) NOT NULL,
  `email_setting_id` int(10) NOT NULL,
  `email_category_id1` int(10) NOT NULL,
  `email_category_id2` int(10) NOT NULL,
  `email_landing_id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `email_date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_groups`
--

CREATE TABLE `core_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `leader` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `offers` varchar(200) DEFAULT NULL,
  `payout` int(11) DEFAULT '0',
  `payout_type` varchar(20) DEFAULT 'fixed',
  `deduct` int(11) DEFAULT '0',
  `note` text,
  `revenue_pending` int(11) DEFAULT '0',
  `revenue_approve` int(11) DEFAULT '0',
  `revenue_deduct` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `core_groups`
--

INSERT INTO `core_groups` (`id`, `name`, `leader`, `type`, `offers`, `payout`, `payout_type`, `deduct`, `note`, `revenue_pending`, `revenue_approve`, `revenue_deduct`) VALUES
(1, 'Manager', '1', 'all', '|1,', 0, 'fixed', 0, '', 0, 0, 0),
(2, 'Call Group', '2', 'call', '|1,', 0, '', 0, NULL, 0, 0, 0),
(3, 'Shipper', NULL, 'shipping', '|1,', 0, '', 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_landing_stats`
--

CREATE TABLE `core_landing_stats` (
  `id` int(11) NOT NULL,
  `offer` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `landing` varchar(200) NOT NULL,
  `viewPage` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `ukey` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `core_landing_stats`
--

INSERT INTO `core_landing_stats` (`id`, `offer`, `date`, `landing`, `viewPage`, `order`, `ukey`) VALUES
(0, 1, '17-01-2026', 'localhost/MyWeb/vnshop/shop', 1, 1, ''),
(1, 1, '16-01-2026', 'vnshop.live/lucky-horus/shop/shop1?AKP', 192, 1, ''),
(3, 1, '16-01-2026', 'vnshop.live/lucky-horus/shop/shop2?AKP', 74, 0, ''),
(4, 1, '16-01-2026', 'vnshop.live/lucky-horus/shop/shop3?AKP', 68, 0, ''),
(5, 1, '16-01-2026', 'vnshop.live/lucky-horus/fb/shop/shop1?Fb', 2, 0, ''),
(6, 1, '16-01-2026', 'vnshop.live/lucky-horus/fb/shop/shop2?Fb', 1, 0, ''),
(7, 1, '16-01-2026', 'vnshop.live/lucky-horus/fb/shop/shop3?Fb', 1, 0, ''),
(8, 1, '17-01-2026', 'vnshop.live/lucky-horus/fb/shop/shop1?Fb', 60, 6, ''),
(9, 1, '17-01-2026', 'vnshop.live/lucky-horus/fb/shop/shop3?Fb', 35, 0, ''),
(10, 1, '17-01-2026', 'vnshop.live/lucky-horus/fb/shop/shop2?Fb', 34, 0, ''),
(11, 1, '17-01-2026', 'vnshop.live/lucky-horus/shop/shop2?AKP', 3, 0, ''),
(12, 1, '17-01-2026', 'vnshop.live/lucky-horus/shop/shop1?AKP', 5, 0, ''),
(13, 1, '17-01-2026', 'vnshop.live/lucky-horus/shop/shop3?AKP', 1, 0, ''),
(14, 1, '18-01-2026', 'vnshop.live/lucky-horus/shop/shop1?AKP', 1, 0, ''),
(15, 1, '18-01-2026', 'vnshop.live/lucky-horus/fb/shop/shop1?Fb', 1, 0, ''),
(16, 1, '18-01-2026', 'vnshop.live/lucky-horus/fb/shop/shop2?Fb', 1, 0, ''),
(17, 1, '18-01-2026', 'vnshop.live/lucky-horus/fb/shop/shop3?Fb', 1, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_marks`
--

CREATE TABLE `core_marks` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `core_marks`
--

INSERT INTO `core_marks` (`id`, `name`, `mark`) VALUES
(1, 'Bahudi VN', 0),
(2, '8PHAT VN', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_notifications`
--

CREATE TABLE `core_notifications` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(20) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_offers`
--

CREATE TABLE `core_offers` (
  `id` int(11) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'stop',
  `name` varchar(50) NOT NULL,
  `offer_link` text,
  `cost` decimal(5,2) NOT NULL DEFAULT '0.00',
  `payout` int(11) DEFAULT '0',
  `payout_type` varchar(20) DEFAULT 'fixed',
  `price` int(10) NOT NULL,
  `price_bonus` int(10) NOT NULL DEFAULT '0',
  `price_deduct` int(10) NOT NULL,
  `price_ship` int(10) NOT NULL,
  `key` varchar(200) NOT NULL,
  `type_ads` int(10) DEFAULT '0',
  `tracking_token` varchar(50) DEFAULT NULL,
  `s2s_postback_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `core_offers`
--

INSERT INTO `core_offers` (`id`, `status`, `name`, `offer_link`, `cost`, `payout`, `payout_type`, `price`, `price_bonus`, `price_deduct`, `price_ship`, `key`, `type_ads`, `tracking_token`, `s2s_postback_url`) VALUES
(1, 'run', 'PT - Horus', NULL, '0.00', 20, '', 690, 0, 660, 30, 'PTHorus', 3, '', ''),
(2, 'run', 'TS - Nhẫn Ngọc Xanh', NULL, '0.00', 20, '', 690, 0, 640, 30, 'nhanngocxanh', 3, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_orders`
--

CREATE TABLE `core_orders` (
  `id` int(11) NOT NULL,
  `parcel_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_office` varchar(50) DEFAULT NULL,
  `offer` int(11) NOT NULL,
  `offer_name` varchar(50) NOT NULL,
  `group` varchar(11) DEFAULT '',
  `price` int(11) NOT NULL,
  `price_deduct` int(11) NOT NULL,
  `price_sell` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `free_ship` tinyint(1) DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT 'uncheck',
  `time` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `order_name` varchar(100) NOT NULL,
  `order_phone` varchar(20) NOT NULL,
  `order_address` varchar(100) DEFAULT '',
  `order_commune` varchar(100) DEFAULT '',
  `order_province` varchar(100) DEFAULT '',
  `order_district` varchar(100) DEFAULT '',
  `area` varchar(50) DEFAULT '',
  `note` text,
  `order_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `payout_leader` int(11) NOT NULL DEFAULT '0',
  `payout_member` int(11) NOT NULL DEFAULT '0',
  `payout_type` varchar(20) DEFAULT 'fixed',
  `deduct_leader` int(11) NOT NULL DEFAULT '0',
  `deduct_member` int(11) NOT NULL DEFAULT '0',
  `user_call` varchar(11) DEFAULT '',
  `user_ship` varchar(11) DEFAULT '',
  `call_time` int(11) DEFAULT '0',
  `ship_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `r_hold` int(1) NOT NULL DEFAULT '0',
  `r_deduct` int(1) NOT NULL DEFAULT '0',
  `is_noti` tinyint(1) DEFAULT '0',
  `r_approve` int(1) NOT NULL DEFAULT '0',
  `last_edit` varchar(50) DEFAULT '',
  `landing` varchar(200) DEFAULT NULL,
  `typeOrder` tinyint(4) NOT NULL DEFAULT '0',
  `ukey` varchar(20) DEFAULT NULL,
  `order_IP` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `core_orders`
--

INSERT INTO `core_orders` (`id`, `parcel_code`, `post_office`, `offer`, `offer_name`, `group`, `price`, `price_deduct`, `price_sell`, `number`, `free_ship`, `status`, `time`, `date`, `order_name`, `order_phone`, `order_address`, `order_commune`, `order_province`, `order_district`, `area`, `note`, `order_info`, `payout_leader`, `payout_member`, `payout_type`, `deduct_leader`, `deduct_member`, `user_call`, `user_ship`, `call_time`, `ship_time`, `update_time`, `r_hold`, `r_deduct`, `is_noti`, `r_approve`, `last_edit`, `landing`, `typeOrder`, `ukey`, `order_IP`) VALUES
(1, NULL, NULL, 1, 'PT - Horus', '', 690, 660, 0, 0, 0, 'uncheck', 1768518673, '2026/01/16', 'Lê văn Minh', '0979239322', 'Số nhà 08 đường bà Triệu thôn thái hòa xã Nông cống Thanh hóa', '', '', '', '', NULL, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 'vnshop.live/lucky-horus/shop/shop1?AKP', 0, '', NULL),
(2, NULL, NULL, 1, 'PT - Horus', '', 690, 660, 0, 0, 0, 'uncheck', 1768603481, '2026/01/17', 'Thiet joang', '0392961850', 'Nga ba ông mân hôi thôn 20 xa đăk rông cư jut đăk nông', '', '', '', '', NULL, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 'vnshop.live/lucky-horus/fb/shop/shop1?Fb', 0, '', NULL),
(3, NULL, NULL, 1, 'PT - Horus', '', 690, 660, 0, 0, 0, 'uncheck', 1768609204, '2026/01/17', 'Ho thanh', '0964473379', '396 ngayn tri phaung', '', '', '', '', NULL, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 'vnshop.live/lucky-horus/fb/shop/shop1?Fb', 0, '', NULL),
(4, NULL, NULL, 1, 'PT - Horus', '', 690, 660, 0, 0, 0, 'uncheck', 1768631389, '2026/01/17', 'Trần văn Huấn', '0342513610', 'Khu đường 23B,thanh tước,phú hữu,tiến thắng,mê linh,hà nội', '', '', '', '', NULL, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 'vnshop.live/lucky-horus/fb/shop/shop1?Fb', 0, '', NULL),
(5, NULL, NULL, 1, 'PT - Horus', '', 690, 660, 0, 0, 0, 'uncheck', 1768656041, '2026/01/17', 'nguyễn phi hồ', '0904420179', '179c đường p2Qbthanh', '', '', '', '', NULL, '', 0, 0, 'fixed', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 'vnshop.live/lucky-horus/fb/shop/shop1?Fb', 0, '', NULL),
(6, NULL, NULL, 1, 'PT - Horus', '', 690, 660, 0, 0, 0, 'uncheck', 1768666694, '2026/01/17', 'Vân', '0962279663', 'Đường 13- kdc Phước hòa Phú giáo Bình dương', '', '', '', '', NULL, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 'vnshop.live/lucky-horus/fb/shop/shop1?Fb', 0, '', NULL),
(7, NULL, NULL, 1, 'PT - Horus', '', 690, 660, 0, 0, 0, 'uncheck', 1768667844, '2026/01/17', 'Trịnh Thị Hiền', '0922949699', 'Ngọc đo yên ninh yên đinh thanh hóa', '', '', '', '', NULL, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 'vnshop.live/lucky-horus/fb/shop/shop1?Fb', 0, '', NULL),
(8, NULL, NULL, 1, 'PT - Horus', '', 690, 660, 0, 0, 0, 'uncheck', 1768674828, '2026/01/17', 'Trần Trọng', '0365652001', 'ABC123', '', '', '', '', NULL, '', 0, 0, 'fixed', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 'localhost/MyWeb/vnshop/shop', 0, '', '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_payments`
--

CREATE TABLE `core_payments` (
  `id` int(11) NOT NULL,
  `refid` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `time` int(20) NOT NULL,
  `paid` int(11) NOT NULL,
  `pending` int(11) NOT NULL,
  `approve` int(11) NOT NULL,
  `deduct` int(11) NOT NULL,
  `payer` int(11) NOT NULL,
  `bank` varchar(100) DEFAULT '',
  `bank_name` varchar(100) DEFAULT '',
  `bank_number` varchar(50) DEFAULT '',
  `bank_branch` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_provinces`
--

CREATE TABLE `core_provinces` (
  `provinceid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_vnpost` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_s2s_postback`
--

CREATE TABLE `core_s2s_postback` (
  `id` int(10) NOT NULL,
  `offer_id` int(10) NOT NULL DEFAULT '0',
  `type_ads_id` int(10) NOT NULL DEFAULT '0',
  `landing_page` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `request_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_code` int(10) NOT NULL,
  `is_send` tinyint(1) DEFAULT '0',
  `is_error` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `ukey` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `core_users`
--

CREATE TABLE `core_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `payment_name` varchar(200) DEFAULT NULL,
  `payment_bank` varchar(200) DEFAULT NULL,
  `payment_number` varchar(200) DEFAULT NULL,
  `payment_branch` varchar(200) DEFAULT NULL,
  `revenue_pending` varchar(11) DEFAULT '0',
  `revenue_approve` varchar(11) DEFAULT '0',
  `revenue_deduct` varchar(11) DEFAULT '0',
  `notifi` tinyint(1) DEFAULT '0',
  `group` varchar(11) DEFAULT NULL,
  `group_payout` int(11) DEFAULT '0',
  `group_deduct` int(11) DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `auto_ban` tinyint(1) DEFAULT '0',
  `ban_limit` tinyint(1) DEFAULT '0',
  `ban_rate` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `adm` tinyint(11) DEFAULT '0',
  `ukey` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `core_users`
--

INSERT INTO `core_users` (`id`, `name`, `pass`, `mail`, `full_name`, `phone`, `payment_name`, `payment_bank`, `payment_number`, `payment_branch`, `revenue_pending`, `revenue_approve`, `revenue_deduct`, `notifi`, `group`, `group_payout`, `group_deduct`, `type`, `auto_ban`, `ban_limit`, `ban_rate`, `active`, `adm`, `ukey`) VALUES
(1, 'admin', '55b4832145e76d61421e8a0ff5fca5af', '', '', '', '', '', '', '', '0', '0', '0', 0, '1', 0, 0, 'admin', 0, 0, 0, 1, 1, 'admin'),
(2, 'trantrong', 'b774c59e66e42909589f18d5a29556cc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', 0, '2', 0, 0, 'call_leader', 0, 0, 0, 1, 0, 'Y4pFAc3939');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `core_ads`
--
ALTER TABLE `core_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Chỉ mục cho bảng `core_backlists`
--
ALTER TABLE `core_backlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `core_comments`
--
ALTER TABLE `core_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_category_id` (`comment_category_id`),
  ADD KEY `comment_category_id1` (`comment_category_id1`),
  ADD KEY `comment_landing_id` (`comment_landing_id`),
  ADD KEY `status` (`status`),
  ADD KEY `id` (`id`),
  ADD KEY `total_like` (`total_like`);

--
-- Chỉ mục cho bảng `core_comment_bads`
--
ALTER TABLE `core_comment_bads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Chỉ mục cho bảng `core_comment_categories1`
--
ALTER TABLE `core_comment_categories1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `core_comment_categories2`
--
ALTER TABLE `core_comment_categories2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_id1` (`category_id1`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `core_comment_landings`
--
ALTER TABLE `core_comment_landings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_id1` (`category_id1`),
  ADD KEY `category_id2` (`category_id2`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `core_comment_replys`
--
ALTER TABLE `core_comment_replys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `id` (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `total_like` (`total_like`);

--
-- Chỉ mục cho bảng `core_districts`
--
ALTER TABLE `core_districts`
  ADD UNIQUE KEY `district_districtid_unique` (`districtid`);

--
-- Chỉ mục cho bảng `core_email_marketings`
--
ALTER TABLE `core_email_marketings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `email_setting_id` (`email_setting_id`),
  ADD KEY `email_category_id1` (`email_category_id1`),
  ADD KEY `email_category_id2` (`email_category_id2`),
  ADD KEY `email_landing_id` (`email_landing_id`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `core_groups`
--
ALTER TABLE `core_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `core_landing_stats`
--
ALTER TABLE `core_landing_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `offer` (`offer`),
  ADD KEY `order` (`order`);

--
-- Chỉ mục cho bảng `core_marks`
--
ALTER TABLE `core_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `core_notifications`
--
ALTER TABLE `core_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_to` (`user_to`),
  ADD KEY `user_from` (`user_from`);

--
-- Chỉ mục cho bảng `core_offers`
--
ALTER TABLE `core_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `key` (`key`),
  ADD KEY `status` (`status`),
  ADD KEY `type_ads` (`type_ads`);

--
-- Chỉ mục cho bảng `core_orders`
--
ALTER TABLE `core_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `offer` (`offer`),
  ADD KEY `typeOrder` (`typeOrder`);

--
-- Chỉ mục cho bảng `core_payments`
--
ALTER TABLE `core_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `refid` (`refid`),
  ADD KEY `type` (`type`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `core_provinces`
--
ALTER TABLE `core_provinces`
  ADD UNIQUE KEY `province_provinceid_unique` (`provinceid`);

--
-- Chỉ mục cho bảng `core_s2s_postback`
--
ALTER TABLE `core_s2s_postback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `type_ads_id` (`type_ads_id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `offer_id_2` (`offer_id`),
  ADD KEY `type_ads_id_2` (`type_ads_id`);

--
-- Chỉ mục cho bảng `core_users`
--
ALTER TABLE `core_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `core_ads`
--
ALTER TABLE `core_ads`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `core_backlists`
--
ALTER TABLE `core_backlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `core_comments`
--
ALTER TABLE `core_comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `core_comment_bads`
--
ALTER TABLE `core_comment_bads`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `core_comment_categories1`
--
ALTER TABLE `core_comment_categories1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `core_comment_categories2`
--
ALTER TABLE `core_comment_categories2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `core_comment_landings`
--
ALTER TABLE `core_comment_landings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `core_comment_replys`
--
ALTER TABLE `core_comment_replys`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `core_email_marketings`
--
ALTER TABLE `core_email_marketings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `core_groups`
--
ALTER TABLE `core_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `core_landing_stats`
--
ALTER TABLE `core_landing_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `core_marks`
--
ALTER TABLE `core_marks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `core_notifications`
--
ALTER TABLE `core_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `core_offers`
--
ALTER TABLE `core_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `core_orders`
--
ALTER TABLE `core_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `core_payments`
--
ALTER TABLE `core_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `core_s2s_postback`
--
ALTER TABLE `core_s2s_postback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `core_users`
--
ALTER TABLE `core_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
