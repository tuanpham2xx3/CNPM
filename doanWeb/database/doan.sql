-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 04, 2023 lúc 06:09 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `status`, `created_time`, `last_updated`) VALUES
(3, 'admin', '1', 1, 1, 1640508066),
(6, 'admin3', '1', 1, 1, 1),
(7, 'admin4', '1', 1, 1, 1640626299),
(8, 'admin5', '1', 0, 1, 1671460843);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_library`
--

DROP TABLE IF EXISTS `image_library`;
CREATE TABLE IF NOT EXISTS `image_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_image_product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image_library`
--

INSERT INTO `image_library` (`id`, `product_id`, `path`, `created_time`, `last_updated`) VALUES
(184, 100, 'images/library/balo1_2.png', 1669973623, 1669973623),
(185, 100, 'images/library/balo1_3.png', 1669973623, 1669973623),
(186, 100, 'images/library/balo1_4.png', 1669973623, 1669973623),
(187, 100, 'images/library/balo1_5.png', 1669973623, 1669973623),
(188, 101, 'images/library/vali1_2.png', 1669973694, 1669973694),
(189, 101, 'images/library/vali1_3.png', 1669973694, 1669973694),
(190, 101, 'images/library/vali1_4.png', 1669973694, 1669973694),
(191, 102, 'images/library/tuixach1_2.png', 1669973737, 1669973737),
(192, 103, 'images/library/dongho1_2.png', 1669973789, 1669973789),
(193, 104, 'images/library/phukien1_2.png', 1669973848, 1669973848),
(194, 104, 'images/library/phukien1_3.png', 1669973848, 1669973848),
(196, 105, 'images/library/balo2_2.png', 1669974756, 1669974756),
(197, 105, 'images/library/balo2_3.png', 1669974756, 1669974756),
(198, 105, 'images/library/balo2_4.png', 1669974756, 1669974756),
(199, 105, 'images/library/balo2_5.png', 1669974756, 1669974756),
(200, 106, 'images/library/balo3_3.png', 1669974830, 1669974830),
(201, 106, 'images/library/balo3_4.png', 1669974830, 1669974830),
(202, 106, 'images/library/balo3_5.png', 1669974830, 1669974830),
(203, 106, 'images/library/balo3_6.png', 1669974830, 1669974830),
(204, 107, 'images/library/balo4_2.png', 1669974875, 1669974875),
(205, 107, 'images/library/balo4_3.png', 1669974875, 1669974875),
(206, 107, 'images/library/balo4_5.png', 1669974875, 1669974875),
(207, 108, 'images/library/balo5_2(1).png', 1669974968, 1669974968),
(208, 108, 'images/library/balo5_3.png', 1669974968, 1669974968),
(209, 108, 'images/library/balo5_4.png', 1669974968, 1669974968),
(210, 109, 'images/library/balo6_2.png', 1669975038, 1669975038),
(211, 109, 'images/library/balo6_3.png', 1669975038, 1669975038),
(212, 110, 'images/library/balo7_2.png', 1669975088, 1669975088),
(213, 110, 'images/library/balo7_3.png', 1669975088, 1669975088),
(214, 111, 'images/library/balo8_2.png', 1669975133, 1669975133),
(215, 111, 'images/library/balo8_3.png', 1669975133, 1669975133),
(216, 111, 'images/library/balo8_4.png', 1669975133, 1669975133),
(217, 110, 'images/library/balo7_4.png', 1669975144, 1669975144),
(224, 114, 'images/library/vali2_2.png', 1669984904, 1669984904),
(225, 114, 'images/library/vali2_3.png', 1669984904, 1669984904),
(226, 114, 'images/library/vali2_4.png', 1669984904, 1669984904),
(227, 114, 'images/library/vali2_5.png', 1669984904, 1669984904),
(228, 115, 'images/library/vali3_2.png', 1669984963, 1669984963),
(229, 115, 'images/library/vali3_3.png', 1669984963, 1669984963),
(230, 115, 'images/library/vali3_4.png', 1669984963, 1669984963),
(231, 115, 'images/library/vali3_5.png', 1669984963, 1669984963),
(232, 116, 'images/library/vali4_2.png', 1669985009, 1669985009),
(233, 116, 'images/library/vali4_3.png', 1669985009, 1669985009),
(234, 116, 'images/library/vali4_4.png', 1669985009, 1669985009),
(235, 117, 'images/library/vali5_2.png', 1669985077, 1669985077),
(236, 117, 'images/library/vali5_3.png', 1669985077, 1669985077),
(237, 118, 'images/library/vali6_2.png', 1669985143, 1669985143),
(238, 118, 'images/library/vali6_3.png', 1669985143, 1669985143),
(239, 118, 'images/library/vali6_4.png', 1669985143, 1669985143),
(240, 119, 'images/library/vali7_2.png', 1669985190, 1669985190),
(241, 119, 'images/library/vali7_3.png', 1669985190, 1669985190),
(242, 119, 'images/library/vali7_4.png', 1669985190, 1669985190),
(243, 120, 'images/library/vali8_2.png', 1669985234, 1669985234),
(244, 120, 'images/library/vali8_3.png', 1669985234, 1669985234),
(245, 120, 'images/library/vali8_4.png', 1669985234, 1669985234),
(246, 121, 'images/library/phukien2_2.png', 1670311281, 1670311281),
(247, 121, 'images/library/phukien2_3.png', 1670311281, 1670311281),
(248, 122, 'images/library/phukien3_2.png', 1670311345, 1670311345),
(249, 122, 'images/library/phukien3_3.png', 1670311345, 1670311345),
(250, 123, 'images/library/phukien4_2.png', 1670311393, 1670311393),
(251, 123, 'images/library/phukien4_3.png', 1670311393, 1670311393),
(252, 123, 'images/library/phukien4_4.png', 1670311393, 1670311393),
(253, 125, 'images/library/phukien6_2.png', 1670311486, 1670311486),
(254, 125, 'images/library/phukien6_3.png', 1670311486, 1670311486),
(255, 126, 'images/library/phukien7_2.png', 1670311526, 1670311526),
(256, 126, 'images/library/phukien7_3.png', 1670311526, 1670311526),
(257, 126, 'images/library/phukien7_4.png', 1670311526, 1670311526),
(258, 128, 'images/library/tuixach2_2.png', 1670311647, 1670311647),
(259, 128, 'images/library/tuixach2_3.png', 1670311647, 1670311647),
(260, 128, 'images/library/tuixach2_4.png', 1670311647, 1670311647),
(261, 129, 'images/library/tuixach3_2.png', 1670311691, 1670311691),
(262, 129, 'images/library/tuixach3_3.png', 1670311691, 1670311691),
(263, 129, 'images/library/tuixach3_4.png', 1670311691, 1670311691),
(264, 130, 'images/library/tuixach4_2.png', 1670311748, 1670311748),
(265, 130, 'images/library/tuixach4_3.png', 1670311748, 1670311748),
(266, 130, 'images/library/tuixach4_4.png', 1670311748, 1670311748),
(267, 132, 'images/library/tuixach5_2.png', 1670311808, 1670311808),
(268, 133, 'images/library/tuixach6_2.png', 1670311843, 1670311843),
(269, 133, 'images/library/tuixach6_3.png', 1670311843, 1670311843),
(270, 133, 'images/library/tuixach6_4.png', 1670311843, 1670311843),
(271, 134, 'images/library/tuixach7_2.png', 1670311897, 1670311897),
(272, 134, 'images/library/tuixach7_3.png', 1670311897, 1670311897),
(273, 134, 'images/library/tuixach7_4.png', 1670311897, 1670311897),
(274, 134, 'images/library/tuixach7_5.png', 1670311897, 1670311897),
(278, 131, 'images/library/tuixach7_2(1).png', 1670312055, 1670312055),
(279, 131, 'images/library/tuixach7_3(1).png', 1670312055, 1670312055),
(280, 131, 'images/library/tuixach7_4(1).png', 1670312055, 1670312055),
(281, 131, 'images/library/tuixach7_5(1).png', 1670312055, 1670312055),
(282, 136, 'images/library/balo5_1.png', 1671502964, 1671502964),
(283, 136, 'images/library/balo5_2(1).png', 1671502964, 1671502964);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_product`
--

DROP TABLE IF EXISTS `menu_product`;
CREATE TABLE IF NOT EXISTS `menu_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_product`
--

INSERT INTO `menu_product` (`id`, `name`) VALUES
(1, 'Balo'),
(2, 'Cặp kéo'),
(3, 'Vali'),
(4, 'Phụ kiện'),
(5, 'Túi xách'),
(6, 'Đồng hồ'),
(7, 'Thương hiệu'),
(8, 'Du lịch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `content`, `created_time`, `last_updated`, `status`) VALUES
(439070, 78, 'Nguyễn Trung', 'nguyentrung712003@gmail.com', '0932583717', '123 tôn đản', '', 1671345605, 1671345605, 2),
(466857, 78, 'trung', 'abc@gmail.com', '0932583717', '23', '12344524twrgvewtbgwt', 1671517788, 1671517788, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE IF NOT EXISTS `orders_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`order_id`, `product_id`, `product_name`, `quantity`, `image`, `price`) VALUES
(439070, 100, 'Balo Carter - AMERICAN TOURISTER - MỸ', 1, 'images/library/balo1_1.png', 840000),
(466857, 100, 'Balo Carter - AMERICAN TOURISTER - MỸ', 1, 'images/library/balo1_1.png', 840000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `quatity` int(11) NOT NULL,
  `price_new` float NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `menu_id`, `name`, `image`, `price`, `quatity`, `price_new`, `content`, `created_time`, `last_updated`) VALUES
(100, 1, 'Balo Carter - AMERICAN TOURISTER - MỸ', 'images/library/balo1_1.png', 1200000, 20, 840000, '<hr />\r\n<p><span style=\"font-size:16px\"><strong>T&Iacute;NH NĂNG:</strong></span></p>\r\n\r\n<ul>\r\n	<li>Ngăn ch&iacute;nh rộng r&atilde;i</li>\r\n	<li>Ngăn trước truy cập nhanh</li>\r\n	<li>Chống thấm nước</li>\r\n	<li>D&acirc;y đeo vai c&oacute; thể điều chỉnh</li>\r\n	<li>T&uacute;i ẩn ở mặt sau balo</li>\r\n	<li>Ngăn b&ecirc;n h&ocirc;ng tiện dụng</li>\r\n</ul>\r\n\r\n<hr />\r\n<p><span style=\"font-size:16px\"><strong>M&Ocirc; TẢ SẢN PHẨM:</strong></span></p>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">Một c&aacute;i balo kh&ocirc;ng chỉ l&agrave; một c&aacute;i t&uacute;i. Đ&oacute; l&agrave; một nơi lưu trữ di động. V&agrave; đ&oacute; c&ograve;n l&agrave;</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">phản &aacute;nh của sự quan t&acirc;m tới những vật dụng bạn đ&atilde; lựa chọn để cất giữ trong</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">balo. Bộ sưu tập balo Carter sử dụng h&agrave;ng ng&agrave;y với thiết kế hiện đại,&nbsp;sử dụng</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">chất liệu th&acirc;n thiện m&ocirc;i trường nhưng vẫn bảo đảm chống thấm nước. Tất cả </span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">c&aacute;c thiết bị điện tử th&ocirc;ng minh của bạn sẽ kh&ocirc;ng sợ bị ướt trong những ng&agrave;y </span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">mưa. Balo Carter lấy cảm hứng ngo&agrave;i trời với nhiều m&agrave;u sắc đẹp mắt, thể hiện </span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">c&aacute; t&iacute;nh của bạn.</span></div>\r\n\r\n<hr />\r\n<p><span style=\"font-size:16px\"><strong>TH&Ocirc;NG SỐ KĨ THUẬT:</strong></span></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Dung t&iacute;ch</strong></td>\r\n			<td>20 L</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Khối lượng</strong></td>\r\n			<td>0.5 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch thước</strong></td>\r\n			<td>29x18x42cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>100% Polyester</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<p><strong>THỜI GIAN BẢO H&Agrave;NH:&nbsp;</strong>2 năm</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n', 1669973623, 1671462696),
(101, 3, 'Vali kéo Zakk - KAMILIANT - MỸ', 'images/library/vali1_1.png', 2400000, 13, 1200000, '', 1669973694, 1669973694),
(102, 5, 'Túi dây rút FlowUp - WENGER - THỤY SĨ', 'images/library/tuixach1_1.png', 500000, 34, 250000, '', 1669973737, 1669973737),
(103, 6, 'Đồng hồ Alliance Large 241763.1 - VICTORINOX - THỤY SĨ', 'images/library/dongho1_1.png', 18000000, 5, 14000000, '', 1669973789, 1669973789),
(104, 1, 'Mũ len Victorinox Brand Collection Fan Beanie Dark Grey - VICTORINOX - THỤY SĨ', 'images/library/phukien1_1.png', 600000, 0, 480000, '<hr />\r\n<p><span style=\"font-size:16px\"><strong>T&Iacute;NH NĂNG:</strong></span></p>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">Một chiếc mũ len dệt kim s&agrave;nh điệu để mang theo trong mọi chuyến phi&ecirc;u lưu của bạn. </span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">Chiếc mũ đội đầu đa năng, d&agrave;nh cho cả nam v&agrave; nữ n&agrave;y vừa ph&ugrave; hợp để đi bộ đường </span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">d&agrave;i tr&ecirc;n c&aacute;c đỉnh n&uacute;i, vừa được kết hợp với tai nghe v&agrave; trang phục thể thao năng động</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">của bạn tại ph&ograve;ng tập hoặc ngay cả khi đi dạo v&agrave;o cuối tuần. Được dệt kim bằng len si&ecirc;u</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">mềm, chiếc mũ l&ecirc;n Victorinox Brand Collection Fan Beanie c&oacute; trọng lượng nhẹ nhưng vẫn </span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">ấm &aacute;p v&agrave; dễ chịu, c&oacute; thể cuộn gọn để dễ d&agrave;ng cất giữ trong vali x&aacute;ch tay hoặc balo của bạn.</span></div>\r\n\r\n<ul>\r\n	<li>Ho&agrave;n hảo cho chuyến phi&ecirc;u lưu ngo&agrave;i trời, đi bộ đường d&agrave;i hoặc kh&aacute;m ph&aacute; một th&agrave;nh phố mới</li>\r\n	<li>\r\n	<div>Mũ len dệt kim được l&agrave;m thủ c&ocirc;ng bằng len si&ecirc;u mềm chất lượng cao</div>\r\n	</li>\r\n	<li><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">C&oacute; đ&iacute;nh logo thương hiệu Victorinox ở mặt trước</span></li>\r\n</ul>\r\n', 1669973848, 1671464635),
(105, 1, 'Balo Magna 02 - AMERICAN TOURISTER - MỸ', 'images/library/balo2_1.png', 1900000, 67, 1350000, '<hr />\r\n<p><span style=\"font-size:16px\"><strong>T&Iacute;NH NĂNG:</strong></span></p>\r\n\r\n<ul>\r\n	<li>Ngăn ch&iacute;nh rộng r&atilde;i</li>\r\n	<li>Ngăn trước truy cập nhanh</li>\r\n	<li>Chống thấm nước</li>\r\n	<li>D&acirc;y đeo vai c&oacute; thể điều chỉnh</li>\r\n	<li>T&uacute;i ẩn ở mặt sau balo</li>\r\n	<li>Ngăn b&ecirc;n h&ocirc;ng tiện dụng</li>\r\n</ul>\r\n\r\n<hr />\r\n<p><span style=\"font-size:16px\"><strong>M&Ocirc; TẢ SẢN PHẨM:</strong></span></p>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">Một c&aacute;i balo kh&ocirc;ng chỉ l&agrave; một c&aacute;i t&uacute;i. Đ&oacute; l&agrave; một nơi lưu trữ di động. V&agrave; đ&oacute; c&ograve;n l&agrave;</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">phản &aacute;nh của sự quan t&acirc;m tới những vật dụng bạn đ&atilde; lựa chọn để cất giữ trong</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">balo. Bộ sưu tập balo Carter sử dụng h&agrave;ng ng&agrave;y với thiết kế hiện đại,&nbsp;sử dụng</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">chất liệu th&acirc;n thiện m&ocirc;i trường nhưng vẫn bảo đảm chống thấm nước. Tất cả</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">c&aacute;c thiết bị điện tử th&ocirc;ng minh của bạn sẽ kh&ocirc;ng sợ bị ướt trong những ng&agrave;y</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">mưa. Balo Carter lấy cảm hứng ngo&agrave;i trời với nhiều m&agrave;u sắc đẹp mắt, thể hiện</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">c&aacute; t&iacute;nh của bạn.</span></div>\r\n\r\n<hr />\r\n<p><span style=\"font-size:16px\"><strong>TH&Ocirc;NG SỐ KĨ THUẬT:</strong></span></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Dung t&iacute;ch</strong></td>\r\n			<td>20 L</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Khối lượng</strong></td>\r\n			<td>0.5 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch thước</strong></td>\r\n			<td>29x18x42cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>100% Polyester</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<p><strong>THỜI GIAN BẢO H&Agrave;NH:&nbsp;</strong>2 năm</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n', 1669974756, 1671205158),
(106, 1, 'Balo Colton - AMERICAN TOURISTER - MỸ', 'images/library/balo3_1.png', 1800000, 0, 1440000, '', 1669974830, 1669974830),
(107, 1, 'Balo Magna 01 - AMERICAN TOURISTER - MỸ', 'images/library/balo4_1.png', 1900000, 0, 1330000, '<hr />\r\n<p><span style=\"font-size:16px\"><strong>T&Iacute;NH NĂNG:</strong></span></p>\r\n\r\n<ul>\r\n	<li>Ngăn ch&iacute;nh rộng r&atilde;i</li>\r\n	<li>Ngăn trước truy cập nhanh</li>\r\n	<li>Chống thấm nước</li>\r\n	<li>D&acirc;y đeo vai c&oacute; thể điều chỉnh</li>\r\n	<li>T&uacute;i ẩn ở mặt sau balo</li>\r\n	<li>Ngăn b&ecirc;n h&ocirc;ng tiện dụng</li>\r\n</ul>\r\n\r\n<hr />\r\n<p><span style=\"font-size:16px\"><strong>M&Ocirc; TẢ SẢN PHẨM:</strong></span></p>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">Một c&aacute;i balo kh&ocirc;ng chỉ l&agrave; một c&aacute;i t&uacute;i. Đ&oacute; l&agrave; một nơi lưu trữ di động. V&agrave; đ&oacute; c&ograve;n l&agrave;</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">phản &aacute;nh của sự quan t&acirc;m tới những vật dụng bạn đ&atilde; lựa chọn để cất giữ trong</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">balo. Bộ sưu tập balo Carter sử dụng h&agrave;ng ng&agrave;y với thiết kế hiện đại,&nbsp;sử dụng</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">chất liệu th&acirc;n thiện m&ocirc;i trường nhưng vẫn bảo đảm chống thấm nước. Tất cả</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">c&aacute;c thiết bị điện tử th&ocirc;ng minh của bạn sẽ kh&ocirc;ng sợ bị ướt trong những ng&agrave;y</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">mưa. Balo Carter lấy cảm hứng ngo&agrave;i trời với nhiều m&agrave;u sắc đẹp mắt, thể hiện</span></div>\r\n\r\n<div><span style=\"color:rgb(39, 39, 39); font-family:quicksand,sans-serif; font-size:15px\">c&aacute; t&iacute;nh của bạn.</span></div>\r\n\r\n<hr />\r\n<p><span style=\"font-size:16px\"><strong>TH&Ocirc;NG SỐ KĨ THUẬT:</strong></span></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Dung t&iacute;ch</strong></td>\r\n			<td>20 L</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Khối lượng</strong></td>\r\n			<td>0.5 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch thước</strong></td>\r\n			<td>29x18x42cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>100% Polyester</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<p><strong>THỜI GIAN BẢO H&Agrave;NH:&nbsp;</strong>2 năm</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n', 1669974875, 1671205146),
(108, 1, 'Balo trẻ em Mix & Patch - SAMSONITE - MỸ', 'images/library/balo5_2.png', 3700000, 0, 2560000, '', 1669974968, 1669974968),
(109, 1, 'Balo laptop Flix NXT 01 - AMERICAN TOURISTER - MỸ', 'images/library/balo6_1.png', 1500000, 0, 1050000, '', 1669975038, 1669975038),
(110, 1, 'Balo trẻ em Tiddle NXT 03 - AMERICAN TOURISTER - MỸ', 'images/library/balo7_1.png', 1100000, 0, 800000, '', 1669975088, 1669975144),
(111, 1, 'Balo Magna 04 - AMERICAN TOURISTER - MỸ', 'images/library/balo8_1.png', 2000000, 0, 1400000, '', 1669975133, 1669975133),
(114, 3, 'Vali kéo Spectra 3.0 Trunk Large Case - VICTORINOX - THỤY SĨ', 'images/library/vali2_1.png', 20300000, 0, 16240000, '', 1669984904, 1669984904),
(115, 3, 'Vali kéo Falls - ACE. TOKYO - NHẬT BẢN', 'images/library/vali3_1.png', 8200000, 0, 6560000, '', 1669984963, 1669984963),
(116, 3, 'Vali kéo Senna - AMERICAN TOURISTER - MỸ', 'images/library/vali4_1.png', 3200000, 0, 2450000, '', 1669985009, 1669985009),
(117, 3, 'Vali kéo Robez - SAMSONITE - MỸ', 'images/library/vali5_1.png', 8000000, 0, 6400000, '', 1669985077, 1669985077),
(118, 3, 'Vali kéo Rock - KAMILIANT - MỸ', 'images/library/vali6_1.png', 2900000, 0, 1450000, '', 1669985143, 1669985143),
(119, 3, 'Vali kéo Curio Trunk- AMERICAN TOURISTER - MỸ', 'images/library/vali7_1.png', 7500000, 0, 6000000, '', 1669985190, 1669985190),
(120, 3, 'Vali kéo Upscape - SAMSONITE - MỸ', 'images/library/vali8_1.png', 6200000, 0, 4950000, '', 1669985234, 1669985234),
(121, 4, 'Mũ len Victorinox Brand Collection Fan Beanie', 'images/library/phukien2_1.png', 600000, 0, 480000, '', 1670311281, 1670311281),
(122, 4, 'Nón Victorinox Brand Collection Tinker Cap', 'images/library/phukien3_1.png', 1700000, 0, 1360000, '', 1670311345, 1670311345),
(123, 4, 'Gối cổ du lịch - AMERICAN TOURISTER - MỸ', 'images/library/phukien4_1.png', 500000, 0, 329000, '', 1670311393, 1670311393),
(124, 4, 'Gối cổ du lịch Delsey - Pháp', 'images/library/phukien5_1.png', 350000, 0, 245000, '', 1670311435, 1670311435),
(125, 4, 'Gối cổ du lịch Global TA', 'images/library/phukien6_1.png', 960000, 0, 767000, '', 1670311486, 1670311486),
(126, 4, 'Dây đai chéo vali Global TA', 'images/library/phukien7_1.png', 680000, 0, 548000, '', 1670311526, 1670311526),
(127, 4, 'Màng che mắt du lịch', 'images/library/phukien8_1.png', 320000, 0, 230000, '', 1670311563, 1670311563),
(128, 5, 'Túi tote Batison', 'images/library/tuixach2_1.png', 3700000, 0, 3080000, '', 1670311647, 1670311647),
(129, 5, 'Túi tote Biena2 62552', 'images/library/tuixach3_1.png', 5200000, 0, 4130000, '', 1670311691, 1670311691),
(130, 5, 'Túi xách Biena2 62554', 'images/library/tuixach4_1.png', 5800000, 0, 4900000, '', 1670311748, 1670311748),
(131, 5, 'Túi xách Karissa 2.0 3 Comp. QLT', 'images/library/tuixach7_1(1).png', 5200000, 0, 3750000, '', 1670311779, 1670312055),
(132, 5, 'Túi xách Karissa 2.0 3 Comp. QLT', 'images/library/tuixach5_1.png', 5200000, 0, 3750000, '', 1670311808, 1670311808),
(133, 5, 'Túi xách My Samsonite', 'images/library/tuixach6_1.png', 4900000, 0, 2450000, '', 1670311843, 1670311843),
(134, 5, 'Túi du lịch Willcarl', 'images/library/tuixach7_1.png', 4500000, 0, 3490000, '', 1670311897, 1670311897),
(136, 1, 'balottttt', 'images/library/balo5_3(1).png', 120000, 13, 150000, '<p>Chi tiết sản phẩm</p>\r\n', 1671502964, 1671502964);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rate`
--

DROP TABLE IF EXISTS `rate`;
CREATE TABLE IF NOT EXISTS `rate` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` tinyint(1) NOT NULL,
  `review` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rate`
--

INSERT INTO `rate` (`product_id`, `user_id`, `name`, `rate`, `review`) VALUES
(100, 78, 'Nguyễn Trung', 4, 'Tốt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_time` int(11) DEFAULT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `username`, `password`, `sdt`, `gioitinh`, `created_time`, `last_updated`) VALUES
(78, 'Nguyễn Trung', 'nguyentrung712003@gmail.com', 'trung1', '202cb962ac59075b964b07152d234b70', '0905434382', 'Nam', 1669972564, 1671517747),
(80, 'Anh Tú', 'abcd@gmail.com', 'tu1', '4297f44b13955235245b2497399d7a93', '0905454578', 'Nam', 1670053237, 1671019205),
(81, 'Huỳnh Nguyễn Như Ngọc', 'nhungochuynh238@gmail.com', 'ngoc1', '8a2d1ab32a3f8803c3437ba830081646', '0932583718', 'Nam', 1671443207, 1671502712),
(82, 'Đăng ký', 'quoc@gmail.com', 'quoc1', '202cb962ac59075b964b07152d234b70', '098765432', 'Nam', 1671443246, 1671443246);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `image_library`
--
ALTER TABLE `image_library`
  ADD CONSTRAINT `FK_image_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `FK_detail_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_product_order` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_menu_product` FOREIGN KEY (`menu_id`) REFERENCES `menu_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `FK_product_rate` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_user_rate` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
