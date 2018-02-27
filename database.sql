-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2017 at 03:24 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doanthailoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`) VALUES
(1, 'thai', 'admin'),
(2, 'loc', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `fullname`, `createdate`) VALUES
(1, 'thai', '2017-09-25 06:47:42'),
(2, 'thai', '2017-09-25 06:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
CREATE TABLE IF NOT EXISTS `cart_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL,
  `price` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 4, 1, '23640000'),
(2, 1, 11, 1, '66880000'),
(3, 2, 15, 1, '4940000');

-- --------------------------------------------------------

--
-- Table structure for table `dangky`
--

DROP TABLE IF EXISTS `dangky`;
CREATE TABLE IF NOT EXISTS `dangky` (
  `id_khachhang` int(11) NOT NULL AUTO_INCREMENT,
  `tenkhachhang` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachinhan` varchar(200) NOT NULL,
  PRIMARY KEY (`id_khachhang`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dangky`
--

INSERT INTO `dangky` (`id_khachhang`, `tenkhachhang`, `email`, `matkhau`, `dienthoai`, `diachinhan`) VALUES
(1, 'Thai', 'thai@gmail.com', 'thai', 933333333, '180 Cao Lỗ, Phường 4, Quận 8, Tp. Hồ Chí Minh'),
(2, 'Loc', 'loc@gmail.com', 'loc', 93333333, '180 Cao Lá»—, PhÆ°á»ng 4, Quáº­n 8, Tp. Há»“ ChÃ­ Minh');

-- --------------------------------------------------------

--
-- Table structure for table `hieusp`
--

DROP TABLE IF EXISTS `hieusp`;
CREATE TABLE IF NOT EXISTS `hieusp` (
  `idhieusp` int(11) NOT NULL AUTO_INCREMENT,
  `tenhieusp` varchar(255) NOT NULL,
  `tinhtrang` varchar(100) NOT NULL,
  PRIMARY KEY (`idhieusp`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hieusp`
--

INSERT INTO `hieusp` (`idhieusp`, `tenhieusp`, `tinhtrang`) VALUES
(1, 'Casio', '1'),
(2, 'Hublot', '1'),
(3, 'Daniel Wellington', '1'),
(4, 'Longines', '1'),
(5, 'Apple', '1'),
(6, 'Samsung', '1'),
(7, 'Citizen', '1'),
(13, 'Adidas', '1'),
(14, 'Others', '1');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

DROP TABLE IF EXISTS `loaisp`;
CREATE TABLE IF NOT EXISTS `loaisp` (
  `idloaisp` int(11) NOT NULL AUTO_INCREMENT,
  `tenloaisp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) NOT NULL,
  PRIMARY KEY (`idloaisp`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`idloaisp`, `tenloaisp`, `tinhtrang`) VALUES
(1, 'Men Watches', '1'),
(2, 'Women Watches', '1'),
(3, 'Couple Watches', '1'),
(4, 'Smart Watches', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `idsanpham` int(11) NOT NULL AUTO_INCREMENT,
  `tensp` varchar(255) NOT NULL,
  `masp` varchar(255) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `giasp` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `loaisp` int(11) NOT NULL,
  `hieusp` int(11) NOT NULL,
  `tinhtrang` varchar(100) NOT NULL,
  `noidung` longtext NOT NULL,
  PRIMARY KEY (`idsanpham`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensp`, `masp`, `hinhanh`, `giasp`, `soluong`, `loaisp`, `hieusp`, `tinhtrang`, `noidung`) VALUES
(4, 'Casio Edifice EQB-500RBB-2A', 'CS1', 'EQB-500RBB-2AER-0.jpg', 23640000, 1, 1, 1, '1', '<p>Dong Ho Casio</p>'),
(5, 'Casio Edifice EQS-600D-1A2', 'CS2', 'ETD-300D-1AVUDF.png', 6350000, 1, 1, 1, '1', '<p>Dong Ho Casio</p>'),
(6, 'Apple Watch S2 ', 'AP1', 'apple sw.png', 9990000, 1, 4, 5, '1', '<p>Apple SW</p>'),
(7, 'Samsung Gear S3 Frontier', 'SS1', 'samsung gear.png', 5450000, 1, 4, 6, '1', '<p>Samsung Gear</p>'),
(8, 'Daniel Wellington Classic Pink', 'DW1', 'dw class nu.png', 4000000, 1, 2, 3, '1', '<p>DW Classic 36mm</p>'),
(9, 'Hublot Classic Fusion', 'HU1', 'hublot clas.jpg', 3800000, 1, 2, 2, '1', '<p>Hublot Classic Fusion</p>'),
(10, 'Citizen Couple ', 'CT1', 'citi cou.jpg', 10800000, 1, 3, 7, '1', '<p>Couple Watches</p>'),
(11, 'Longines Couple', 'LO1', 'long cou.jpg', 66880000, 1, 3, 4, '1', '<p>Loginess Couple</p>'),
(12, 'Citizen EG2973-55D', 'CT2', 'citi eg.jpg', 9560000, 1, 2, 7, '1', '<p>EG2973-55D</p>'),
(13, 'Citizen AN8162-57P', 'CT3', 'citi an.jpg', 5100000, 1, 1, 7, '1', '<p>Citizen AN</p>'),
(14, 'G-Shock GA-110CS-4ADR', 'GA1', '8058-GA-110CS-4ADR-261x261.jpg', 4232000, 1, 1, 1, '1', '<p>G-Shock GA</p>'),
(15, 'Daniel Wellington Classic Black', 'DW2', 'DW00100133.png', 4940000, 1, 1, 3, '1', '<p>Daniel Wellington Classic Black</p>'),
(19, 'Adidas Performance Fitness Watch', 'AD1', 'adidas.jpg', 1600000, 1, 1, 13, '1', '<p>Adidas Performance Fitness Watch</p>'),
(20, 'Adidas Aberdeen', 'AD2', '41dcaCwtC9L._AC_UL260_SR200,260_.jpg', 1500000, 1, 2, 13, '1', '<p>Adidas Aber</p>'),
(21, 'Adidas StanSmith Watch', 'AD3', '41AygNMoLrL._AC_UL260_SR200,260_.jpg', 1800000, 1, 2, 13, '1', '<p>AD STAN</p>'),
(22, 'Longines L4.209.2.32.8  ', 'LO2', 'wqadwqdwqdwqd.jpg', 33300000, 1, 2, 4, '2', '<p>LONGLINES</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
CREATE TABLE IF NOT EXISTS `tintuc` (
  `idtintuc` int(11) NOT NULL AUTO_INCREMENT,
  `tentintuc` tinytext NOT NULL,
  `matin` varchar(100) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `noidung` longtext NOT NULL,
  `tinhtrang` varchar(100) NOT NULL,
  PRIMARY KEY (`idtintuc`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`idtintuc`, `tentintuc`, `matin`, `hinhanh`, `noidung`, `tinhtrang`) VALUES
(6, '5 máº«u Ä‘á»“ng há»“ huyá»n thoáº¡i xa xá»‰ nháº¥t tháº¿ giá»›i', 'tin1', 'AAEAAQAAAAAAAAuOAAAAJGQyZGIzMmY1LTFkNWItNDNmYy05MjkwLWM4M2Q4YjRmN2IwYg.jpg', '<p>Graff Diamonds Hallucination - 55 triá»‡u USD</p>\r\n<p>Graff Diamonds The Fascination - 40 triá»‡u USD</p>\r\n<p>Marie Antoinette - 30 triá»‡u USD</p>\r\n<p>Chopard 201 Carat - 25 triá»‡u USD</p>\r\n<p>Patek Philippe Henry Graves Supercomplication - 24 triá»‡u USD</p>', '1'),
(7, 'Lá»±a chá»n Ä‘á»“ng há»“ cho dÃ¢n vÄƒn phÃ²ng, cÃ´ng sá»Ÿ ', 'tin2', 'watch-of-the-week-piaget-auto-01-1024x683.jpg', '<h3><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\"><strong><em>Náº¿u báº¡n dÆ°á»›i 30 tuá»•i</em></strong></span></h3>\r\n<p><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\">C&acirc;u há»i Ä‘Æ°á»£c Ä‘áº·t ra má»—i ng&agrave;y khi lá»±a chá»n trang phá»¥c, phá»¥ kiá»‡n l&agrave; l&agrave;m sao tr&ocirc;ng báº¡n váº«n chá»‰nh chu nhÆ°ng kh&ocirc;ng qu&aacute; gi&agrave;. Pháº£i nghi&ecirc;m t&uacute;c nhÆ°ng váº«n tráº» trung tÆ°Æ¡i táº¯n. C&acirc;u tráº£ lá»i Ä‘&oacute; ch&iacute;nh l&agrave; nhá»¯ng chiáº¿c Ä‘á»“ng há»“ d&acirc;y da, d&acirc;y váº£i hoáº·c kim loáº¡i. HÆ¡n ná»¯a thiáº¿t káº¿ cá»§a nhá»¯ng chiáº¿c Ä‘á»“ng há»“ cho d&acirc;n vÄƒn ph&ograve;ng dÆ°á»›i 30 tuá»•i pháº£i tháº­t tráº» trung, phong c&aacute;ch, c&aacute; t&iacute;nh nhá»¯ng váº«n pháº£i Ä‘á»‰nh Ä‘áº¡c v&agrave; ch&iacute;nh cháº¯n</span></p>\r\n<h3><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\"><strong><em>Náº¿u báº¡n tr&ecirc;n 30 tuá»•i</em></strong></span></h3>\r\n<p><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\">Lá»±a chá»n Ä‘á»“ng há»“ cho d&acirc;n vÄƒn ph&ograve;ng á»Ÿ Ä‘á»™ tuá»•i tr&ecirc;n 30 Ä‘&ograve;i há»i nhiá»u yáº¿u tá»‘. BÆ°á»›c v&agrave;o Ä‘á»™ tuá»•i 30, cháº¯c háº³n báº¡n cÅ©ng Ä‘&atilde; Ä‘áº¡t Ä‘Æ°á»£c má»™t vá»‹ tr&iacute; nháº¥t Ä‘á»‹nh cho sá»± nghiá»‡p cá»§a m&igrave;nh. L&uacute;c n&agrave;y báº¡n cáº§n pháº£i thá»ƒ hiá»‡n vá»‹ tháº¿, Ä‘áº³ng cáº¥p, sá»± tin cáº­y. Nhá»¯ng chiáº¿c Ä‘á»“ng há»“ kim loáº¡i, Ä‘á»“ng há»“ máº¡ v&agrave;ng sáº½ l&agrave; lá»±a chá»n tuyá»‡t vá»i nháº¥t. Ch&uacute;ng vá»«a gi&uacute;p báº¡n thá»ƒ hiá»‡n phong c&aacute;ch vá»«a to&aacute;t ra Ä‘Æ°á»£c sá»± sang trá»ng v&agrave; tráº» trung cáº§n c&oacute; cá»§a Ä‘á»™ tuá»•i trÆ°á»Ÿng th&agrave;nh</span></p>\r\n<p>&nbsp;</p>', '1'),
(8, 'Nhá»¯ng Ä‘iá»u cáº§n biáº¿t vá» Ä‘á»“ng há»“ Citizen Eco-Drive chÃ­nh hÃ£ng ', 'tin3', 'banner-citizen-timepieces-1024x341.jpg', '<h3>Äá»“ng há»“ Citizen Eco-Drive</h3>\r\n<p>Citizen Eco-Drive l&agrave; d&ograve;ng Ä‘á»“ng há»“ hoáº¡t Ä‘á»™ng báº±ng nÄƒng lÆ°á»£ng &aacute;nh s&aacute;ng cá»§a Citizen Ä‘áº¿n tá»« Nháº­t Báº£n. Vá»›i kháº©u hiá»‡u &ldquo;á»ž Ä‘&acirc;u c&oacute; &aacute;nh s&aacute;ng á»Ÿ Ä‘&oacute; c&oacute; quyá»n lá»±c&rdquo;, Citizen Ä‘&atilde; nhanh ch&oacute;ng chá»©ng tá» m&igrave;nh ch&iacute;nh l&agrave; h&atilde;ng Ä‘&ograve;ng há»“ sá»‘ má»™t khi sá»Ÿ há»¯u c&ocirc;ng nghá»‡ vÄ© Ä‘áº¡i mang t&iacute;nh Ä‘á»™t ph&aacute;. Ä&oacute; ch&iacute;nh l&agrave; ph&aacute;t minh lá»›n trong viá»‡c &aacute;p dá»¥ng c&ocirc;ng nghá»‡ chuyá»ƒn h&oacute;a &aacute;nh s&aacute;ng th&agrave;nh Ä‘iá»‡n nÄƒng</p>', '1'),
(9, 'Xuáº¥t xá»© Trung Quá»‘c, liá»‡u cháº¥t lÆ°á»£ng Ä‘á»“ng há»“ cÃ³ Ä‘áº£m báº£o? ', 'tin4', 'asdsadqwewqfqw.jpg', '<p><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\">Má»™t sáº£n pháº©m Ä‘Æ°á»£c b&aacute;n ra nh&agrave; cung cáº¥p pháº£i Ä‘áº£m báº£o vá» cáº£ cháº¥t lÆ°á»£ng v&agrave; gi&aacute; cáº£ cho ngÆ°á»i d&ugrave;ng. V&igrave; váº­y há» lu&ocirc;n t&igrave;m má»i c&aacute;ch Ä‘á»ƒ c&oacute; thá»ƒ táº¡o ra sáº£n pháº©m cháº¥t lÆ°á»£ng tá»‘i Æ°u m&agrave; gi&aacute; váº«n náº±m á»Ÿ má»©c ph&ugrave; há»£p nháº¥t. Má»™t trong nhá»¯ng c&aacute;ch Ä‘á»ƒ thá»±c hiá»‡n má»¥c ti&ecirc;u tr&ecirc;n Ä‘&oacute; l&agrave; tá»‘i Æ°u h&oacute;a chi ph&iacute; sáº£n xuáº¥t v&agrave; váº­n chuyá»ƒn. Trong khi lá»±c lÆ°á»£ng nh&acirc;n c&ocirc;ng gi&aacute; ráº» táº¡i Trung Quá»‘c kh&aacute; dá»“i d&agrave;o. Quá»‘c gia láº¡i náº±m á»Ÿ vá»‹ tr&iacute; c&oacute; thá»ƒ dá»… d&agrave;ng ph&acirc;n phá»‘i cho c&aacute;c nÆ°á»›c khu vá»±c Ch&acirc;u &Aacute;.</span></p>\r\n<p><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\">V&igrave; váº­y c&aacute;c h&atilde;ng Ä‘á»“ng há»“ Ä‘Æ°a ra c&aacute;c kiá»ƒu thiáº¿t káº¿, y&ecirc;u cáº§u vá» váº­t liá»‡u. Äáº·c biá»‡t l&agrave; ti&ecirc;u chuáº©n cháº¥t lÆ°á»£ng cá»§a sáº£n pháº©m. Nh&acirc;n c&ocirc;ng nh&agrave; m&aacute;y táº¡i Trung Quá»‘c sáº½ gia c&ocirc;ng theo ti&ecirc;u chuáº©n h&atilde;ng Ä‘áº·t ra. Táº¥t cáº£ sáº£n pháº©m Ä‘Æ°á»£c sáº£n xuáº¥t Ä‘á»u pháº£i qua kh&acirc;u kiá»ƒm nghiá»‡m rá»“i má»›i Ä‘Æ°á»£c b&agrave;y b&aacute;n, tung ra thá»‹ trÆ°á»ng</span></p>', '1'),
(10, 'Vá»‡ sinh Ä‘á»“ng há»“ G-shock táº¡i nhÃ  vá»›i 5 bÆ°á»›c cá»±c ká»³ Ä‘Æ¡n giáº£n ', 'tin5', 'eqwdqwfwqfqwwq.jpg', '<p><span style=\"font-size: 12pt;\">Äá»ƒ thá»±c hiá»‡n vá»‡ sinh Ä‘á»“ng há»“ G-shock táº¡i nh&agrave;, ch&uacute;ng ta cáº§n chuáº©n bá»‹ c&aacute;c dá»¥ng cá»¥ sau:</span></p>\r\n<p><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\">Váº£i má»m hoáº·c b&ocirc;ng tháº¥m nÆ°á»›c</span></p>\r\n<p><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\">B&agrave;n cháº£i Ä‘&aacute;nh rÄƒng cÅ©</span></p>\r\n<p><span style=\"font-size: 12pt;\">TÄƒm b&ocirc;ng</span></p>\r\n<p><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\">Sá»¯a táº¯m ( báº¥t ká»³ loáº¡i n&agrave;o) hoáº·c nÆ°á»›c rá»­a tay Lifebouy</span></p>\r\n<p><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\">T&ocirc; nÆ°á»›c sáº¡ch</span></p>', '1'),
(11, 'Äá»“ng há»“ khÃ´ng cáº§n thay pin, khÃ´ng cáº§n xáº¡c pin Ä‘áº§u tiÃªn trÃªn Tháº¿ giá»›i ', 'tin6', 'fewfrfewrfrewfrewf.jpg', '<p><span style=\"font-family: helvetica,arial,sans-serif;\">Äá»“ng há»“ l&agrave; váº­t dá»¥ng sá»­ dá»¥ng nÄƒng lÆ°á»£ng Ä‘á»ƒ hoáº¡t Ä‘á»™ng, c&oacute; loáº¡i sá»­ dá»¥ng pin vá»›i thá»i gian sá»­ dá»¥ng 1 Ä‘áº¿n 2 nÄƒm, c&oacute; loáº¡i sá»­ dá»¥ng nÄƒng lÆ°á»£ng &aacute;nh s&aacute;ng Ä‘á»ƒ váº­n h&agrave;nh cá»• m&aacute;y b&ecirc;n trong cá»§a m&igrave;nh. Ri&ecirc;ng Ä‘á»‘i vá»›i Ä‘á»“ng há»“ th&ocirc;ng minh vá»›i c&aacute;c t&iacute;nh nÄƒng Ä‘áº·c biá»‡t cá»§a m&igrave;nh n&ecirc;n cáº§n thay pin thÆ°á»ng xuy&ecirc;n hÆ¡n.</span></p>\r\n<p><span style=\"font-family: helvetica,arial,sans-serif;\">C&ocirc;ng dá»¥ng cá»§a Ä‘á»“ng há»“ cÄƒn báº£n l&agrave; Ä‘á»ƒ cung cáº¥p th&ocirc;ng tin vá» thá»i gian cho ngÆ°á»i d&ugrave;ng má»™t c&aacute;ch nhanh chá»‘ng v&agrave; ch&iacute;nh x&aacute;c. Váº­y n&ecirc;n náº¿u Ä‘á»“ng há»“ háº¿t pin v&agrave;o nhá»¯ng l&uacute;c quan trá»ng, máº¥t thá»i gian Ä‘i thay pin, xáº¡c pin,&hellip; sáº½ áº£nh hÆ°á»Ÿng kh&aacute; nhiá»u Ä‘áº¿n c&ocirc;ng viá»‡c v&agrave; sinh hoáº¡t cá»§a báº¡n. V&igrave; váº­y má»™t c&ocirc;ng ty startup Thá»¥y Sá»¹ Ä‘&atilde; nghi&ecirc;n cá»©u v&agrave; cho ra Ä‘á»i máº«u Ä‘á»“ng há»“ th&ocirc;ng minh kh&ocirc;ng cáº§n thay pin Ä‘áº§u ti&ecirc;n tr&ecirc;n tháº¿ giá»›i, Ä‘&oacute; l&agrave; h&atilde;ng Ä‘á»“ng há»“ Sequent.</span></p>\r\n<p><span style=\"font-family: helvetica,arial,sans-serif;\">S&aacute;ng táº¡o l&agrave; l&agrave;m má»›i nhá»¯ng Ä‘iá»u Ä‘&atilde; c&oacute;, biáº¿n ch&uacute;ng trá»Ÿ th&agrave;nh nhá»¯ng Ä‘iá»u tuyá»‡t vá»i hÆ¡n. Äiá»ƒm Ä‘áº·c biá»‡t cá»§a chiáº¿c Ä‘á»“ng há»“ n&agrave;y l&agrave; thiáº¿t bá»‹ sáº¡c Ä‘Æ°á»£c táº¡o ra dá»±a tr&ecirc;n chuyá»ƒn Ä‘á»™ng cá»§a ngÆ°á»i d&ugrave;ng, má»™t phÆ°Æ¡ng ph&aacute;p kh&aacute; quen thuá»™c cá»§a Ä‘á»“ng há»“ cÆ¡ há»c truyá»n thá»‘ng. Nhá» Ä‘&oacute; chiáº¿c Ä‘á»“ng há»“ sáº½ kh&ocirc;ng bao giá» háº¿t pin khi Ä‘Æ°á»£c báº¡n Ä‘eo tr&ecirc;n cÆ¡ thá»ƒ. C&aacute;c váº¥n Ä‘á» ráº¯c rá»‘i do pin g&acirc;y ra Ä‘á»‘i vá»›i má»™t chiáº¿c Ä‘á»“ng há»“ th&ocirc;ng minh Ä‘&atilde; kh&ocirc;ng c&ograve;n ná»¯a.</span></p>', '1'),
(12, 'Äá»“ng há»“ G-shock cÃ³ thá»±c sá»± chá»‘ng va Ä‘áº­p chá»‘ng sá»‘c tá»‘t nhÆ° lá»i Ä‘á»“n? ', 'tin7', 'gwnq-specsbanner-1024x418.jpg', '<p><span style=\"font-family: helvetica,arial,sans-serif; font-size: 12pt;\">Vá»›i t&ecirc;n gá»i l&agrave; Hollow Case Structure, c&ocirc;ng ngh&ecirc;Ì£ naÌ€y coÌ khaÌ‰ nÄƒng tri&ecirc;Ì£t ti&ecirc;u nhÆ°Ìƒng va Ä‘&acirc;Ì£p b&ecirc;n ngoaÌ€i bÄƒÌ€ng caÌch &ldquo;di chuy&ecirc;Ì‰n&rdquo; m&ocirc;-Ä‘un b&ecirc;n trong. Pháº§n vá», lá»›p Ä‘á»‡m v&agrave; b&ocirc;Ì£ maÌy kh&ocirc;ng k&ecirc;Ì€ saÌt thaÌ€nh m&ocirc;Ì£t kh&ocirc;Ìi maÌ€ chuÌng v&acirc;Ìƒn coÌ khoang r&ocirc;Ìƒng, diá»‡n t&iacute;ch tiáº¿p x&uacute;c ráº¥t nhá» khi gÄƒÌn k&ecirc;Ìt vÆ¡Ìi nhau. Khi c&oacute; lÆ°Ì£c va Ä‘&acirc;Ì£p taÌc Ä‘&ocirc;Ì£ng vaÌ€o lÆ¡Ìp voÌ‰ Ä‘á»“ng há»“, nhÆ°Ìƒng khoang r&ocirc;Ìƒng naÌ€y seÌƒ coÌ taÌc duÌ£ng laÌ€m giaÌ‰m sÆ°Ì£ lan truy&ecirc;Ì€n vaÌ€ lá»±c taÌc Ä‘&ocirc;Ì£ng Ä‘&ecirc;Ìn b&ocirc;Ì£ maÌy. Báº£o to&agrave;n c&aacute;c chi tiáº¿t b&ecirc;n trong bá»™ m&aacute;y kh&ocirc;ng bá»‹ hÆ° háº¡i</span></p>', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
