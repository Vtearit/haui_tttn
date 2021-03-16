-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 04:02 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hungphat_computer`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `pk_category_product_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`pk_category_product_id`, `c_name`) VALUES
(1, 'Laptop, Máy Tính Xách Tay'),
(2, 'PC Gaming, Streaming'),
(3, 'PC Đồ Họa, Render, Máy Chủ'),
(4, 'PC Văn Phòng, AIO, Mini PC'),
(5, 'Thiết Bị Văn Phòng'),
(6, 'Linh Kiện Máy Tính'),
(7, 'Màn Hình Máy Tính'),
(9, 'Phím Chuột, Gaming Gear'),
(10, 'Máy Chơi Game, Tay Game'),
(11, 'Tản Nhiệt PC, Cooling'),
(12, 'Thiết Bị Lưu Trữ, USB, Thẻ'),
(13, 'Thiết Bị Mạng, Phần Mềm'),
(14, 'Phụ Kiện Laptop, PC, Khác');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `hovaten` varchar(500) NOT NULL,
  `diachi` varchar(2000) NOT NULL,
  `dienthoai` varchar(200) NOT NULL,
  `ghichu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `hovaten`, `diachi`, `dienthoai`, `ghichu`) VALUES
(18, 'Nguyễn Văn A', 'Ha noi', '12345678', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `pk_news_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(20000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_hotnews` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`pk_news_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_hotnews`) VALUES
(2, 'Các mẫu máy trạm xách tay mới nhất của Dell có gì vượt trội so với trước đây?', '<p>Kh&aacute;c với c&aacute;c d&ograve;ng laptop th&ocirc;ng thường, mobile workstation của thương hiệu Dell l&agrave; sự pha trộn giữa m&aacute;y t&iacute;nh b&agrave;n v&agrave; laptop. Với cấu h&igrave;nh mạnh mẽ của desktop v&agrave; thiết kế nhỏ gọn, sang trọng của laptop, c&aacute;c d&ograve;ng sản phẩm mobile workstation mới của Dell ch&iacute;nh l&agrave; sự lựa chọn l&yacute; tưởng cho những ai y&ecirc;u th&iacute;ch m&aacute;y trạm di động thế hệ mới.</p>\r\n', '<p><strong>Dell Precision 3550</strong></p>\r\n\r\n<p>Sở hữu thiết kế đơn giản nhưng kh&ocirc;ng k&eacute;m phần sang trọng, mẫu m&aacute;y Dell Precision 3350 l&agrave; sự lựa chọn ho&agrave;n hảo cho nhu cầu văn ph&ograve;ng, thậm ch&iacute; l&agrave; c&aacute;c phần mềm chuy&ecirc;n dụng ph&ugrave; hợp với cấu h&igrave;nh m&aacute;y. Cụ thể, m&aacute;y k&egrave;m theo c&ocirc;ng nghệ đồ họa NVIDIA Quadro&reg; P520 với bộ nhớ 2GB, c&oacute; khả năng chạy c&aacute;c chương tr&igrave;nh sử dụng CAD 2D v&agrave; 3D dễ d&agrave;ng hơn.</p>\r\n', '1614870704news5.jpg', 1),
(3, 'Dell OptiPlex 3070 Micro – Máy tính để bàn lý tưởng cho văn phòng hiện đại', '<p>Hướng đến doanh nghiệp vừa v&agrave; nhỏ, OptiPlex 3070 l&agrave; chiếc m&aacute;y t&iacute;nh b&agrave;n được kết hợp h&agrave;i h&ograve;a giữa hiệu năng, nhu cầu sử dụng v&agrave; thiết kế nhỏ gọn, tiết kiệm diện t&iacute;ch.</p>\r\n', '<p>C&oacute; thể n&oacute;i đ&acirc;y l&agrave; một trong những d&ograve;ng m&aacute;y t&iacute;nh để b&agrave;n nhỏ gọn nhất của Dell Technologies, bạn ho&agrave;n to&agrave;n c&oacute; thể cầm bằng một tay m&agrave; kh&ocirc;ng hề thấy nặng hay vướng v&iacute;u. Ch&iacute;nh bởi vậy, d&ograve;ng Micro n&agrave;y sẽ khiến d&acirc;n văn ph&ograve;ng h&agrave;i l&ograve;ng bởi c&oacute; thể tiết kiệm tối đa diện t&iacute;ch cũng như dễ d&agrave;ng sắp đặt ở tr&ecirc;n b&agrave;n hoặc những địa điểm ph&ugrave; hợp m&agrave; kh&ocirc;ng phải đắn đo về kh&ocirc;ng gian sử dụng.</p>\r\n', '1614870674news4.jpg', 1),
(4, 'Tối giản hóa không gian làm việc với HP 200 Pro G4 22 All-in-One PC', '<p>HP 200 Pro G4 22 All-in-One PC là t&acirc;n binh của HP Vi&ecirc;̣t Nam với c&acirc;́u hình tuỳ bi&ecirc;́n đa dạng và thi&ecirc;́t k&ecirc;́ t&ocirc;́i giản chi&ecirc;́m ít di&ecirc;̣n tích sẽ là đi&ecirc;̉m nh&acirc;́n trong văn phòng 4.0 của bạn</p>\r\n', '<p><strong>Thi&ecirc;́t k&ecirc;́ k&ecirc;́ đẹp, chuy&ecirc;n nghi&ecirc;̣p</strong></p>\r\n\r\n<p>Với màn hình 3 cạnh tràn vi&ecirc;̀n thời trang cùng ch&acirc;n đ&ecirc;́ ng&ocirc;i sao, HP 200 Pro G4 22 AIO giải phóng kh&ocirc;ng gian làm vi&ecirc;̣c của bạn, chỉ c&acirc;̀n mở h&ocirc;̣p r&ocirc;̀i plug and play là sử dụng kh&ocirc;ng c&acirc;̀n lắp đặt phức tạp.</p>\r\n', '1614870624news3.jpg', 1),
(5, 'HP Slim S01: Thiết kế hoàn hảo dành cho không gian nhỏ', '<p>Một vấn đề lu&ocirc;n được c&aacute;c doanh nghiệp quan t&acirc;m khi trang bị m&aacute;y t&iacute;nh đồng bộ cho văn ph&ograve;ng đ&oacute; l&agrave; tiết kiệm kh&ocirc;ng gian. Với một văn ph&ograve;ng đ&ocirc;ng đ&uacute;c nh&acirc;n vi&ecirc;n, những chiếc PC k&iacute;ch cỡ nhỏ gọn sẽ tạo cảm gi&aacute;c tho&aacute;ng đ&atilde;ng v&agrave; thoải m&aacute;i cho người sử dụng.</p>\r\n', '<p><strong>Xu hướng lựa chọn m&aacute;y t&iacute;nh để b&agrave;n nhỏ gọn</strong></p>\r\n\r\n<p>Đối với những người sở hữu PC tại nh&agrave; hoặc với những c&ocirc;ng ty c&oacute; &iacute;t nh&acirc;n vi&ecirc;n th&igrave; những case m&aacute;y t&iacute;nh k&iacute;ch cỡ th&ocirc;ng thường ho&agrave;n to&agrave;n c&oacute; thể để vừa vặn tr&ecirc;n b&agrave;n l&agrave;m việc hoặc dưới gầm b&agrave;n. Tuy nhi&ecirc;n, đối với những doanh nghiệp lớn với một văn ph&ograve;ng c&oacute; v&agrave;i chục tới v&agrave;i trăm nh&acirc;n vi&ecirc;n th&igrave; ngần ấy chiếc PC sẽ chiếm một kh&ocirc;ng gian kh&ocirc;ng hề nhỏ. Mỗi nh&acirc;n vi&ecirc;n chỉ c&oacute; một diện t&iacute;ch l&agrave;m việc giới hạn với nhiều thứ như m&agrave;n h&igrave;nh, b&agrave;n ph&iacute;m, chuột, giấy tờ, đồ d&ugrave;ng c&aacute; nh&acirc;n,&hellip;nếu th&ecirc;m một chiếc case m&aacute;y t&iacute;nh nữa sẽ khiến mọi thứ trở n&ecirc;n kh&aacute; chật chội.</p>\r\n\r\n<p>Từ đ&oacute;, những chiếc PC nhỏ gọn như HP Slim S01 ra đời gi&uacute;p doanh nghiệp giải ph&oacute;ng kh&ocirc;ng gian một c&aacute;ch hiệu quả. HP đ&atilde; tinh chỉnh v&agrave; sắp xếp c&aacute;c linh kiện b&ecirc;n trong th&ugrave;ng m&aacute;y gi&uacute;p bỏ đi tối đa diện t&iacute;ch thừa, giảm k&iacute;ch thước để dễ d&agrave;ng bố tr&iacute; trong bất kỳ điều kiện văn ph&ograve;ng n&agrave;o.</p>\r\n', '1614869372news2.jpg', 1),
(6, 'Những mẹo đơn giản giúp làm mát máy tính khi sử dụng trong thời gian dài', '<p>Ch&uacute;ng v&ocirc; c&ugrave;ng đơn giản, hiệu quả v&agrave; kh&ocirc;ng ảnh hưởng đến m&aacute;y t&iacute;nh.</p>\r\n', '<p>Theo thời gian, c&oacute; thể bạn sẽ nhận ra l&agrave; hệ thống l&agrave;m m&aacute;t của m&aacute;y t&iacute;nh hoạt động giảm năng suất đ&aacute;ng kể. V&agrave; nếu trường hợp bạn l&agrave;m việc trong m&ocirc;i trường n&oacute;ng bức hoặc xử l&yacute; c&aacute;c t&aacute;c vụ nặng như dựng phim hay thiết kế đồ họa th&igrave; việc m&aacute;y t&iacute;nh qu&aacute; n&oacute;ng c&oacute; thể g&acirc;y ra c&aacute;c vấn đề về phần cứng.</p>\r\n', '1614869321news1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ngaymua` date NOT NULL,
  `gia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `ngaymua`, `gia`) VALUES
(1, 18, '2017-01-06', 6000000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pk_product_id` int(11) NOT NULL,
  `c_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `order_id`, `pk_product_id`, `c_number`) VALUES
(1, 1, 13, 1),
(2, 1, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pk_product_id` int(11) NOT NULL,
  `pk_category_product_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(2000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_price` float NOT NULL DEFAULT 0,
  `c_hotproduct` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pk_product_id`, `pk_category_product_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_price`, `c_hotproduct`) VALUES
(4, 7, 'Màn hình LG 27GL650F-B', '									<p>Thông số sản phẩm</p>\r\n\r\n<ul>\r\n	<li>Độ phân giải 1920 x 1080</li>\r\n	<li>Tần số quét 144 hz</li>\r\n	<li>Độ sáng 400 cd/m2</li>\r\n	<li>Độ tương phản 1000:1</li>\r\n	<li>Thời gian phản ứng 1 ms (GTG)</li>\r\n	<li>Tấm nền IPS (sRGB 99%, Adobe RGB 72%, DCI-P3 78%)</li>\r\n</ul>\r\n								', '									<h3>AMD RADEON FreeSync™</h3>\r\n\r\n<p>Rõ ràng hơn, mượt mà hơn và nhanh hơnVới công nghệ AMD RADEON FreeSync™, người chơi game có thể trải nghiệm chuyển động mượt mà những trò chơi có độ phân giải cao và tốc độ nhanh.Công nghệ này giúp loại bỏ được hiện tượng xé hình và giật hình.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/48815_27GL6501.jpg\" /></p>\r\n\r\n<h3>HDR10</h3>\r\n\r\n<p>Rõ ràng hơn, chân thực hơnMàn hình này tương thích với HDR10, thể hiện chi tiết ở các vùng sáng và tối của nội dung HDR.Vì vậy, người chơi có thể tận hưởng hình ảnh chân thực và có chiều sâu hơn</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/48815_27GL6502.jpg\" /></p>\r\n\r\n<h3>IPS với 99% sRGB</h3>\r\n\r\n<p>Cảm nhận cảnh chiến đấu với màu sắc trung thựcMàn hình IPS với sRGB 99% có độ chính xác màu sắc vượt trội. Màn hình có góc nhìn rộng hơn, mang đến những cảnh chiến đấu sống động trên chiến trường, đặc biệt các cảnh cháy nổ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/48815_27GL6503.jpg\" /></p>\r\n\r\n<h3>144Hz Refresh Rate & 1ms MBR</h3>\r\n\r\n<p>Chuyển động chơi game mượt màVới tốc độ làm mới 144Hz và 1ms Motion Blur Reduction*, các đối tượng được hiển thị rõ ràng mang đến trải nghiệm chơi game mượt mà hơn và chân thực hơn mang lại lợi thế cạnh tranh cho người chơi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/48815_27GL6504.jpg\" /></p>\r\n\r\n<h3>Đồng bộ hành động kép</h3>\r\n\r\n<p>Giảm thiểu độ trễ của thao tác đầu vào với công nghệ Đồng bộ hành động động và bạn có thể nắm bắt được mọi khoảnh khắc theo thời gian thực.</p>\r\n\r\n<p> <img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/48815_27GL6505.jpg\" /></p>\r\n\r\n<h3>Cân bằng tối</h3>\r\n\r\n<p>Duy trì khả năng xem ngay cả trong những cảnh tối. Trình ổn định màu đen của LG cảm nhận những cảnh tối và hiển thị vùng này sáng hơn sao cho bạn có thể tìm ra kẻ thù ẩn nấp và phục kích người chơi của bạn trong bóng tối.</p>\r\n\r\n<h3><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/48815_27GL6506.jpg\" /></h3>\r\n\r\n<h3>Crosshair</h3>\r\n\r\n<p>Với tính năng Crosshair, game thủ có thể nâng cấp kỹ năng của mình lên một tầm cao mới. Bằng cách đặt điểm tấn công ở chính giữa màn hình, tính năng này nâng cao độ chính xác trong các game bắn nhau có người chơi là nhân vật chính.</p>\r\n\r\n<p> <img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/48815_27GL6507.jpg\" /></p>\r\n\r\n<h3>Thiết kế thuận tiện</h3>\r\n\r\n<p>Trải nghiệm chơi game tốt hơnĐó là thiết kế viền 3 cạnh siêu mỏng và chân đế có thể điều chỉnh để thay đổi độ nghiêng và độ cao của màn hình để giúp bạn chơi game thoải mái hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/48815_27GL6508.jpg\" /></p>\r\n								', '1614873383product8.png', 6989000, 1),
(5, 6, 'Mainboard ASUS TUF GAMING B560M-PLUS WIFI', '<p>Th&ocirc;ng số sản phẩm</p>\r\n\r\n<ul>\r\n	<li>Chipset: Intel B560</li>\r\n	<li>Socket: LGA1200</li>\r\n	<li>K&iacute;ch thước: M-ATX</li>\r\n	<li>Số khe RAM: 4</li>\r\n</ul>\r\n', '<p>Đang cập nhật...</p>\r\n', '1614873292product7.jpg', 4269000, 1),
(6, 5, 'Máy in Canon SELPHY CP1300', '<p>Th&ocirc;ng số sản phẩm</p>\r\n\r\n<ul>\r\n	<li>Loại m&aacute;y in: M&aacute;y in ảnh</li>\r\n	<li>Tốc độ: 47 gi&acirc;y với 1 ảnh 4x6</li>\r\n	<li>C&oacute; thể chỉnh sửa ảnh trước khi in</li>\r\n	<li>C&ocirc;ng nghệ in nhiệt thăng hoa m&agrave;u (c&oacute; lớp phủ)</li>\r\n	<li>Sản phẩm sử dụng combo mực, giấy in KP108</li>\r\n	<li>Kh&ocirc;ng đi k&egrave;m mực in v&agrave; giấy in ảnh mẫu</li>\r\n</ul>\r\n', '<h2>M&aacute;y in Wi-Fi di động với nhiều chức năng in</h2>\r\n\r\n<p>M&aacute;y in Wi-Fi cầm tay, nhỏ gọn in h&igrave;nh ảnh chất lượng trực tiếp từ m&aacute;y ảnh của bạn hoặc điện thoại th&ocirc;ng minh tại bất cứ đ&acirc;u, bất kỳ thời điểm n&agrave;o, bất kỳ sự kiện n&agrave;o. Nhờ sử dụng pin t&ugrave;y chọn đủ năng lượng để in được tới 54 h&igrave;nh ảnh, m&aacute;y in n&agrave;y trở th&agrave;nh sản phẩm cơ động hơn bất cứ bao giờ hết. Được trang bị c&aacute;c chức năng như chế độ Wi-Fi Shuffle Print mới, SELPHY CP1300 c&oacute; thể kết hợp c&aacute;c h&igrave;nh ảnh (kết nối với 8 thiết bịth&ocirc;ng minh) để tạo th&agrave;nh một h&igrave;nh ảnh cắt d&aacute;n độc đ&aacute;o tr&ecirc;n một ảnh duy nhất. T&iacute;nh năng bố cục 2x6 inch mới (2 tập mỗi tập 4 ảnh trong một v&ugrave;ng 6 inch) l&agrave;m tăng th&ecirc;m t&iacute;nh đa năng khi người d&ugrave;ng c&oacute; thể tạo được c&aacute;c kiểu in photo booth của ri&ecirc;ng m&igrave;nh.Cuối c&ugrave;ng, với lớp phim đặc biệt bảo vệ ảnh khỏi bụi, nước v&agrave; phai m&agrave;u, c&aacute;c k&yacute; ức c&oacute; thể được lưu lại vĩnh viễn.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh LCD nghi&ecirc;ng k&iacute;ch thước 3.2&rdquo;</p>\r\n\r\n<p>Hỗ trợ in kh&ocirc;ng d&acirc;y (bao gồm AirPrint v&agrave; Mopria Print Service)</p>\r\n\r\n<p>Pin t&ugrave;y chọn (in tới 54 bản in mỗi lần sạc)</p>\r\n', '1614873217product6.jpg', 3299000, 1),
(7, 4, 'PC Dell OptiPlex 3070 Micro', '<p><strong>Bảo h&agrave;nh:</strong>&nbsp;<strong>12 Th&aacute;ng</strong></p>\r\n\r\n<p>&nbsp;Qu&agrave; tặng v&agrave; ưu đ&atilde;i k&egrave;m theo</p>\r\n\r\n<p><strong>BỘ QU&Agrave; TẶNG TRỊ GI&Aacute;&nbsp;1.600.000Đ</strong><br />\r\n+&nbsp;Chuột kh&ocirc;ng d&acirc;y Logitech M185 trị gi&aacute;&nbsp;249.000đ&nbsp;(MELO055)<br />\r\n+&nbsp;Tấm l&oacute;t chuột trị gi&aacute;&nbsp;49.000đ&nbsp;(PADM639)<br />\r\n+&nbsp;Bộ vệ sinh laptop trị gi&aacute;&nbsp;39.000đ&nbsp;(NUOC002)<br />\r\n+&nbsp;T&uacute;i chống sốc LG trị gi&aacute;&nbsp;149.000đ&nbsp;(TUID205)<br />\r\n+&nbsp;Gi&aacute; khuyến mại l&agrave; gi&aacute; đ&atilde; giảm&nbsp;3.600.000đ&nbsp;CT ho&agrave;n tiền của LG.</p>\r\n\r\n<p>+&nbsp;Tặng phiếu vệ sinh bảo dưỡng Laptop, PC miễn ph&iacute; trọn đời trị gi&aacute;&nbsp;999.000đ&nbsp;(THEK417)<br />\r\n+Giảm&nbsp;20%&nbsp;khi mua Tai nghe Zidli ZH20 USB 7.1 (TNZI051)</p>\r\n\r\n<p><br />\r\n<strong>ƯU Đ&Atilde;I KHI MUA K&Egrave;M LAPTOP (&Aacute;P DỤNG ĐẾN 31/1/2021)</strong><br />\r\n+&nbsp;Giảm&nbsp;5%&nbsp;Tai nghe Dareu, Kingston HyperX, Corsair, SteelSeries, Ổ cứng gắn ngo&agrave;i, Microphone Razer, HyperX, Router, Switch, Modem, Loa Logitech.<br />\r\n+&nbsp;Giảm&nbsp;10%&nbsp;Tai nghe JBL (TNJB), B&agrave;n di chuột (PADM), USB, Card mạng, Card sound c&aacute;c loại.</p>\r\n\r\n<p><br />\r\n<strong>MIỄN PH&Iacute; GIAO H&Agrave;NG TO&Agrave;N QUỐC&nbsp;đến hết 31/3/2021</strong></p>\r\n', '<p>PC Dell OptiPlex 3070</p>\r\n\r\n<h3>Gia tăng năng suất của bạn</h3>\r\n\r\n<p><strong>Dell OptiPlex 3070</strong>&nbsp;c&oacute; hơn 25 năm kinh nghiệm mang đến sự đổi mới do kh&aacute;ch h&agrave;ng hướng dẫn cho m&aacute;y t&iacute;nh để b&agrave;n bằng c&aacute;ch li&ecirc;n tục tạo ra trải nghiệm nhanh hơn v&agrave; th&ocirc;ng minh hơn. Với c&aacute;c yếu tố h&igrave;nh thức linh hoạt, tiết kiệm kh&ocirc;ng gian với c&aacute;c t&ugrave;y chọn cấu h&igrave;nh Bộ xử l&yacute; Intel&reg; Core &trade; thế hệ thứ 9.</p>\r\n\r\n<h3>L&agrave;m việc th&ocirc;ng minh</h3>\r\n\r\n<p>Hiệu quả kh&ocirc;ng giới hạn<strong>Dell OptiPlex 3070</strong>&nbsp;l&yacute; tưởng cho m&ocirc;i trường gi&aacute;o dục v&agrave; trung t&acirc;m cuộc gọi, những m&aacute;y t&iacute;nh để b&agrave;n n&agrave;y c&oacute; c&ugrave;ng độ tin cậy v&agrave; lợi &iacute;ch tiết kiệm kh&ocirc;ng gian m&agrave; bạn mong đợi. Dễ d&agrave;ng bảo tr&igrave; v&agrave; gắn kết, những m&aacute;y t&iacute;nh để b&agrave;n cần thiết n&agrave;y loại bỏ mọi r&agrave;o cản để th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p>Điều chỉnh theo nhu cầu của bạnCh&acirc;n đế đa năng dạng nhỏ&nbsp;<strong>Dell OptiPlex 3070</strong>&nbsp;cung cấp hệ thống c&aacute;p t&iacute;ch hợp cho một giải ph&aacute;p d&acirc;y nguồn v&agrave; t&iacute;nh thẩm mỹ của tất cả trong một với khả năng hiển thị tối ưu cho nhu cầu c&ocirc;ng việc của bạn.</p>\r\n\r\n<p>Được chế tạo th&ocirc;ng minhVới &iacute;t nhất 39% * nhựa t&aacute;i chế sau ti&ecirc;u d&ugrave;ng, bạn c&oacute; thể y&ecirc;n t&acirc;m rằng bạn đang l&agrave;m việc th&ocirc;ng minh v&agrave; bền vững.</p>\r\n', '1614873115product5.jpg', 12399000, 1),
(9, 3, 'PC Trading T003', '<p><strong>Bảo h&agrave;nh:</strong>&nbsp;<strong>12 Th&aacute;ng</strong></p>\r\n\r\n<p>&nbsp;Qu&agrave; tặng v&agrave; ưu đ&atilde;i k&egrave;m theo</p>\r\n\r\n<p><strong>BỘ QU&Agrave; TẶNG TRỊ GI&Aacute;&nbsp;1.600.000Đ</strong><br />\r\n+&nbsp;Chuột kh&ocirc;ng d&acirc;y Logitech M185 trị gi&aacute;&nbsp;249.000đ&nbsp;(MELO055)<br />\r\n+&nbsp;Tấm l&oacute;t chuột trị gi&aacute;&nbsp;49.000đ&nbsp;(PADM639)<br />\r\n+&nbsp;Bộ vệ sinh laptop trị gi&aacute;&nbsp;39.000đ&nbsp;(NUOC002)<br />\r\n+&nbsp;T&uacute;i chống sốc LG trị gi&aacute;&nbsp;149.000đ&nbsp;(TUID205)<br />\r\n+&nbsp;Gi&aacute; khuyến mại l&agrave; gi&aacute; đ&atilde; giảm&nbsp;3.600.000đ&nbsp;CT ho&agrave;n tiền của LG.</p>\r\n\r\n<p>+&nbsp;Tặng phiếu vệ sinh bảo dưỡng Laptop, PC miễn ph&iacute; trọn đời trị gi&aacute;&nbsp;999.000đ&nbsp;(THEK417)<br />\r\n+Giảm&nbsp;20%&nbsp;khi mua Tai nghe Zidli ZH20 USB 7.1 (TNZI051)</p>\r\n\r\n<p><br />\r\n<strong>ƯU Đ&Atilde;I KHI MUA K&Egrave;M LAPTOP (&Aacute;P DỤNG ĐẾN 31/1/2021)</strong><br />\r\n+&nbsp;Giảm&nbsp;5%&nbsp;Tai nghe Dareu, Kingston HyperX, Corsair, SteelSeries, Ổ cứng gắn ngo&agrave;i, Microphone Razer, HyperX, Router, Switch, Modem, Loa Logitech.<br />\r\n+&nbsp;Giảm&nbsp;10%&nbsp;Tai nghe JBL (TNJB), B&agrave;n di chuột (PADM), USB, Card mạng, Card sound c&aacute;c loại.</p>\r\n\r\n<p><br />\r\n<strong>MIỄN PH&Iacute; GIAO H&Agrave;NG TO&Agrave;N QUỐC&nbsp;đến hết 31/3/2021</strong></p>\r\n', '<p>L&agrave; giải ph&aacute;p gi&aacute; rẻ khi những nh&agrave; đầu tư cần sử dụng những phần mềm khớp lệnh tự động hoặc l&agrave;m việc c&ugrave;ng l&uacute;c tr&ecirc;n nhiều m&agrave;n h&igrave;nh, PC Trading T003 sẽ mang đến nhiều lợi &iacute;ch đ&aacute;ng kể chỉ với mức gi&aacute; chưa đến 16 triệu đồng.</p>\r\n\r\n<h3>CHIẾC PC N&Agrave;Y D&Agrave;NH CHO AI?</h3>\r\n\r\n<p>C&aacute;c c&aacute; nh&acirc;n, tổ chức đang kinh doanh, giao dịch trong những c&ocirc;ng việc đặc th&ugrave; cần phải l&agrave;m việc với nhiều m&agrave;n h&igrave;nh, y&ecirc;u cầu tốc độ xử l&yacute; cao, ch&iacute;nh x&aacute;c, kh&ocirc;ng giật lag bất ngờ.</p>\r\n\r\n<p>Những ng&agrave;nh dịch vụ cần xuất h&igrave;nh ảnh l&ecirc;n những m&agrave;n chiếu khổ lớn, nhiều nội dung v&agrave; hiệu ứng chuyển cảnh.</p>\r\n\r\n<h3>PC Trading T003</h3>\r\n\r\n<p>Th&ocirc;ng số cơ bản :&nbsp;</p>\r\n\r\n<ul>\r\n	<li>CPU: Intel Core i3-10100</li>\r\n	<li>RAM: 8GB</li>\r\n	<li>VGA: Nvidia Quadro P400 x 2</li>\r\n	<li>Ổ cứng: 240GB SSD</li>\r\n	<li>Nguồn : 450W</li>\r\n</ul>\r\n\r\n<h3>Linh kiện nổi bật trong PC PC Trading T003</h3>\r\n\r\n<h4>CPU Intel Core i3-10100</h4>\r\n\r\n<p>Đầu ti&ecirc;n, bộ n&atilde;o của PC Designer D001 l&agrave; CPU Intel Core i3-10100, một chiếc CPU rất l&agrave;nh t&iacute;nh. Để tối giản chi ph&iacute; cho kh&aacute;ch h&agrave;ng nhưng vẫn đảm bảo hiệu năng tốt nhất, Hanoicomputer đ&atilde; lựa chọn chiếc CPU n&agrave;y cho cấu h&igrave;nh PC thiết kế D010. Sức mạnh của n&oacute; l&agrave; thừa đủ để thực hiện c&aacute;c t&aacute;c vụ tr&ecirc;n Photopshop, AutoCad, 3dsMax,...</p>\r\n\r\n<p>CPU Intel Core i3-10100 sử dụng socket LGA1200 với bốn l&otilde;i v&agrave; t&aacute;m luồng, với xung nhịp cơ bản l&agrave; 3,6 GHz v&agrave; xung nhịp tăng l&ecirc;n l&agrave; 4,3 GHz. Tốc độ n&agrave;y cho ph&eacute;p Intel Core i3-10100 đảm bảo được hiệu suất tương đối ổn trong c&aacute;c t&aacute;c vụ l&agrave;m đồ họa h&agrave;ng ng&agrave;y cũng như chơi c&aacute;c tựa game ở độ ph&acirc;n giải 1080p.&nbsp;</p>\r\n\r\n<h4>Bo mạch chủ&nbsp;ASUS TUF Gaming B460M-Plus</h4>\r\n\r\n<p>L&agrave; một chiếc bo mạch chủ mang thi&ecirc;n hướng gaming nhưng ASUS TUF Gaming B460M-Plus thể hiện l&agrave; một nền tảng bền bỉ, th&iacute;ch hợp cho những chiếc PC Trading phải hoạt động gần như 24/7. Lợi thế về bảo h&agrave;nh cũng l&agrave; một điểm cộng, chưa kể khả năng n&acirc;ng c&acirc;p dễ d&agrave;ng sau n&agrave;y nhờ số cổng kết nối dồi d&agrave;o.</p>\r\n\r\n<h4>Kingston HyperX Fury Black 8GB</h4>\r\n\r\n<p>Ở thời điểm hiện tại, 8GB RAM l&agrave; con số tối thiểu để đ&aacute;p ứng nhu cầu sử dụng cơ bản kết hợp l&agrave;m việc. Kingston HyperX Fury Black 8GB từ l&acirc;u đ&atilde; l&agrave; option được nhiều người hướng đến nhờ thiết kế đơn giản, cắm l&agrave; chạy k&egrave;m với đ&oacute; l&agrave; gi&aacute; cả v&ocirc; c&ugrave;ng hợp l&yacute;.</p>\r\n\r\n<h4>Card đồ hoạ Nvidia Quadro P400 x 2</h4>\r\n\r\n<p>Một chiếc card cơ bản của Nvidia cho ph&eacute;p người d&ugrave;ng tiếp cận được với những c&ocirc;ng nghệ cốt l&otilde;i của d&ograve;ng Quadro m&agrave; Nvidia đ&atilde; x&acirc;y dựng suốt những năm qua, cung cấp th&ecirc;m cả những kết nối cơ bản biến c&ocirc;ng việc h&agrave;ng ng&agrave;y với những m&agrave;n h&igrave;nh đời mới trở n&ecirc;n dễ d&agrave;ng hơn bao giờ hết.</p>\r\n\r\n<p>N&acirc;ng cấp hơn so với P400 v&agrave; c&oacute; nhiều nh&acirc;n CUDA hơn, P400 cho tốc độ xử l&yacute; tốt ở ph&acirc;n kh&uacute;c gi&aacute; rẻ.</p>\r\n\r\n<p>Vẫn mang trong m&igrave;nh khả năng đa nhiệm, hỗ trợ nhiều m&agrave;n h&igrave;nh cực tốt của d&ograve;ng Quadro, người mới l&agrave;m quen với nền tảng Workstation khi đến HNC sẽ kh&ocirc;ng thể bỏ qua lựa chọn n&agrave;y.</p>\r\n\r\n<h4>SSD Kingfast F6 PRO 240GB</h4>\r\n\r\n<p>V&agrave; cuối c&ugrave;ng, SSD Kingfast F6 PRO 240GB SATA3 l&agrave; thiết bị lưu trữ hệ điều h&agrave;nh v&agrave; c&aacute;c phần mềm của bạn. Việc sở hữu ổ cứng SSD sẽ gi&uacute;p cho qu&aacute; tr&igrave;nh khởi động Window, khởi động c&aacute;c phần mềm được nhanh ch&oacute;ng hơn, tiết kiệm được nhiều thời gian khi l&agrave;m việc.&nbsp;</p>\r\n\r\n<p>Đ&oacute;ng vai tr&ograve; l&agrave; một cấu h&igrave;nh tầm trung gi&uacute;p giải quyết những nhu cầu cơ bản của những bạn đang l&agrave;m việc trong ng&agrave;nh quảng c&aacute;o, PC Trading T003 vẫn c&ograve;n nhiều khả năng n&acirc;ng cấp về sau n&agrave;y nếu nhu cầu thật sự cần.</p>\r\n\r\n<h3>LỢI &Iacute;CH &amp; CH&Iacute;NH S&Aacute;CH ĐI K&Egrave;M</h3>\r\n\r\n<h4>Kh&ocirc;ng phải chờ đợi</h4>\r\n\r\n<p>Th&ocirc;ng thường để lắp ho&agrave;n chỉnh một bộ m&aacute;y sẽ ti&ecirc;u tốn của c&aacute;c bạn khoảng từ 30 ph&uacute;t đến 1 giờ đồng hồ trong trường hợp bạn l&agrave; người s&agrave;nh sỏi, nếu kh&ocirc;ng thời gian c&ograve;n hơn như vậy. C&aacute;c bạn c&oacute; muốn thời gian &quot;chết&quot; trước khi được thật sự sử dụng d&agrave;n m&aacute;y m&agrave; m&igrave;nh đ&atilde; bỏ qu&aacute; nhiều tiền ra để sở hữu k&eacute;o d&agrave;i kh&ocirc;ng? 100% l&agrave; kh&ocirc;ng, n&ecirc;n những d&agrave;n m&aacute;y lắp sẵn của HNC sẽ khả dĩ nhất.</p>\r\n\r\n<p>Được lắp sẵn từ đầu ch&iacute; cuối bởi những b&agrave;n tay kỹ thuật l&agrave;nh nghề nhất, những vấn đề vụn vặt sẽ được giải quyết triệt để trước khi giao đến tay kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h4>Đổi mới trong 15 ng&agrave;y đầu nếu c&oacute; lỗi</h4>\r\n\r\n<p>&Aacute;p dụng ch&iacute;nh s&aacute;ch giống hệt như việc mua linh kiện rời, nếu trong v&ograve;ng 15 ng&agrave;y đầu ti&ecirc;n sử dụng c&oacute; ph&aacute;t sinh trục trặc, HNC sẽ tiến h&agrave;nh đổi mới ngay linh kiện mới cho bạn để tr&aacute;nh g&acirc;y ra gi&aacute;n đoạn trong qu&aacute; tr&igrave;nh trải nghiệm sản phẩm.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; ch&iacute;nh s&aacute;ch m&agrave; kh&ocirc;ng phải đơn vị b&aacute;n lẻ n&agrave;o cũng &aacute;p dụng n&ecirc;n sẽ l&agrave; lợi thế lớn cho kh&aacute;ch h&agrave;ng mỗi khi chọn mua m&aacute;y tại HNC.</p>\r\n\r\n<h4>Thời hạn bảo h&agrave;nh l&acirc;u d&agrave;i</h4>\r\n\r\n<p>Kh&ocirc;ng như những chiếc m&aacute;y lắp sẵn đến từ c&aacute;c h&atilde;ng lớn chỉ cover người d&ugrave;ng trong 12 th&aacute;ng. HNC duy tr&igrave; ch&iacute;nh s&aacute;ch bảo h&agrave;nh theo linh kiện cho tất cả những bộ m&aacute;y xuất xưởng, nghĩa l&agrave; kh&aacute;ch h&agrave;ng sẽ được hưởng trọn to&agrave;n bộ những dịch vụ sau b&aacute;n h&agrave;ng theo cam kết của NSX, thường l&ecirc;n đến 3 năm (hoặc hơn) cho CPU, VGA, RAM, Bo mạch chủ.</p>\r\n\r\n<h4>Cam kết về độ tương th&iacute;ch</h4>\r\n\r\n<p>Được l&ecirc;n cấu h&igrave;nh v&agrave; kiểm tra qua nhiều bước. Những linh kiện c&oacute; mặt trong d&agrave;n m&aacute;y của HNC được tinh chỉnh rất kỹ để kh&ocirc;ng một lỗi nhỏ n&agrave;o về phần cứng cũng như phần mềm c&oacute; thể l&agrave;m ảnh hưởng đến trải nghiệm của người d&ugrave;ng.</p>\r\n', '1614872810product4.png', 14099000, 1),
(11, 2, 'PC ENTHUSIAST GAMING PLATINUM 003', '<p><strong>Bảo h&agrave;nh:</strong>&nbsp;<strong>12 Th&aacute;ng</strong></p>\r\n\r\n<p>&nbsp;Qu&agrave; tặng v&agrave; ưu đ&atilde;i k&egrave;m theo</p>\r\n\r\n<p><strong>BỘ QU&Agrave; TẶNG TRỊ GI&Aacute;&nbsp;1.600.000Đ</strong><br />\r\n+&nbsp;Chuột kh&ocirc;ng d&acirc;y Logitech M185 trị gi&aacute;&nbsp;249.000đ&nbsp;(MELO055)<br />\r\n+&nbsp;Tấm l&oacute;t chuột trị gi&aacute;&nbsp;49.000đ&nbsp;(PADM639)<br />\r\n+&nbsp;Bộ vệ sinh laptop trị gi&aacute;&nbsp;39.000đ&nbsp;(NUOC002)<br />\r\n+&nbsp;T&uacute;i chống sốc LG trị gi&aacute;&nbsp;149.000đ&nbsp;(TUID205)<br />\r\n+&nbsp;Gi&aacute; khuyến mại l&agrave; gi&aacute; đ&atilde; giảm&nbsp;3.600.000đ&nbsp;CT ho&agrave;n tiền của LG.</p>\r\n\r\n<p>+&nbsp;Tặng phiếu vệ sinh bảo dưỡng Laptop, PC miễn ph&iacute; trọn đời trị gi&aacute;&nbsp;999.000đ&nbsp;(THEK417)<br />\r\n+Giảm&nbsp;20%&nbsp;khi mua Tai nghe Zidli ZH20 USB 7.1 (TNZI051)</p>\r\n\r\n<p><br />\r\n<strong>ƯU Đ&Atilde;I KHI MUA K&Egrave;M LAPTOP (&Aacute;P DỤNG ĐẾN 31/1/2021)</strong><br />\r\n+&nbsp;Giảm&nbsp;5%&nbsp;Tai nghe Dareu, Kingston HyperX, Corsair, SteelSeries, Ổ cứng gắn ngo&agrave;i, Microphone Razer, HyperX, Router, Switch, Modem, Loa Logitech.<br />\r\n+&nbsp;Giảm&nbsp;10%&nbsp;Tai nghe JBL (TNJB), B&agrave;n di chuột (PADM), USB, Card mạng, Card sound c&aacute;c loại.</p>\r\n\r\n<p><br />\r\n<strong>MIỄN PH&Iacute; GIAO H&Agrave;NG TO&Agrave;N QUỐC&nbsp;đến hết 31/3/2021</strong></p>\r\n', '<ul>\r\n	<li>\r\n	<h3>PC d&ograve;ng Platinum d&agrave;nh cho ai?</h3>\r\n\r\n	<p>Những người coi việc sở hữu những chiếc&nbsp;<a href=\"https://www.hanoicomputer.vn/may-tinh-choi-game\" rel=\"noopener\" target=\"_blank\" title=\"PC gaming\">PC gaming</a>&nbsp;độc đ&aacute;o, mạnh mẽ l&agrave; đam m&ecirc;, đồng thời c&oacute; &yacute; tưởng đồng điệu với đội ngũ ph&aacute;t triển sản phẩm của HANOICOMPUTER khi cho rằng mọi thứ tr&ecirc;n đời kh&ocirc;ng c&oacute; g&igrave; gọi l&agrave; kh&ocirc; khan, miễn l&agrave; ta ch&uacute; t&acirc;m v&agrave; biết c&aacute;ch thổi hồn v&agrave;o cho ch&uacute;ng.</p>\r\n\r\n	<p><img src=\"https://hanoicomputercdn.com/media/product/53835_pcgm220_6.jpg\" style=\"width:1200px\" /></p>\r\n\r\n	<h3>Sức mạnh phần cứng</h3>\r\n\r\n	<p>Khi n&oacute;i về một chiếc m&aacute;y cao cấp, điều kh&ocirc;ng thể kh&ocirc;ng nhắc đến ch&iacute;nh l&agrave; cấu h&igrave;nh của n&oacute;. Thật may mắn, dưới sự tuyển chọn kỹ c&agrave;ng của HANOICOMPUTER, bạn sẽ kh&ocirc;ng phải thất vọng khi nh&igrave;n v&agrave;o những linh kiện ch&iacute;nh tạo n&ecirc;n Platinum 003</p>\r\n	</li>\r\n	<li>Bo mạch chủ: ASUS ROG STRIX Z490-E GAMING</li>\r\n	<li>CPU: Intel Core i9-10900K</li>\r\n	<li>RAM: G.Skill Trident Z Neo 32GB (4x8GB) DDR4 3600MHz</li>\r\n	<li>Card đồ họa: ASUS ROG STRIX RTX 2080 Super O8G GAMING</li>\r\n	<li>SSD: Samsung 970 EVO Plus 500GB PCIe NVMe</li>\r\n	<li>Nguồn: Corsair RM Series RM850</li>\r\n	<li>Vỏ: EK-Classic InWin 303EK - Black</li>\r\n	<li>Tản nhiệt nước: EKWB</li>\r\n	<li>\r\n	<p>Về&nbsp;<a href=\"https://www.hanoicomputer.vn/cpu-bo-vi-xu-ly\" rel=\"noopener\" target=\"_blank\" title=\"CPU\">CPU</a>, c&aacute;i t&ecirc;n xứng đ&aacute;ng nhất kh&ocirc;ng g&igrave; kh&aacute;c ngo&agrave;i&nbsp;<a href=\"https://www.hanoicomputer.vn/cpu-intel-core-i9-10900k3.7ghz-turbo-up-to-5.3ghz-10-nhan-20-luong-20mb-cache-125w-socket-intel-lga-1200\" rel=\"noopener\" target=\"_blank\" title=\"i9-10900K\">i9-10900K</a>&nbsp;- bộ vi xử l&yacute; gaming nhanh nhất ở thời điểm hiện tại. Mặc cho những chỉ tr&iacute;ch nhằm v&agrave;o Intel trong thời gian gần đ&acirc;y, ở thị trường Việt Nam, 10900-K vẫn đang chứng minh được đẳng cấp của m&igrave;nh.</p>\r\n\r\n	<p><img src=\"https://hanoicomputercdn.com/media/product/53835_52358_intel_i9_10900k.jpg\" style=\"width:500px\" /></p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>Xứng đ&ocirc;i vừa lứa nhất với 10900K l&agrave;&nbsp;<a href=\"https://www.hanoicomputer.vn/vga-card-asus-rog-strix-rtx-2080-super-o8g-gaming\" rel=\"noopener\" target=\"_blank\" title=\"ASUS ROG STRIX RTX 2080 Super O8G GAMING\">ASUS ROG STRIX RTX 2080 Super O8G GAMING</a>, nằm trong hệ sinh th&aacute;i ROG STRIX, chiếc&nbsp;<a href=\"https://www.hanoicomputer.vn/vga-card-man-hinh\" rel=\"noopener\" target=\"_blank\" title=\"card đồ họa\">card đồ họa</a>&nbsp;n&agrave;y c&oacute; khả năng ph&aacute;t s&aacute;ng LED RGB rất phong ph&uacute;, đi k&egrave;m với đ&oacute; hiệu năng đỉnh cao c&ugrave;ng những c&ocirc;ng nghệ mới mẻ nhất của d&ograve;ng RTX</p>\r\n\r\n	<p><img src=\"https://hanoicomputercdn.com/media/product/53835_47892_file_pts_chu___n_l____recovered_recovered_recovered_recovered_psd_0004_asus_rog_strix_rtx_2080_super_01.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n	<p>CPU mạnh, VGA tốt kh&ocirc;ng thể ph&aacute;t huy được hết khả năng nếu chỉ được lắp tr&ecirc;n một bo mạch chủ thường. Nhằm tạo ra một nền tảng đ&aacute;ng tin cậy cho c&aacute;c linh kiện kh&aacute;c, bo mạch chủ ASUS ROG STRIX Z490-E GAMING l&agrave; c&aacute;i t&ecirc;n hợp l&yacute; nhờ số lượng, chất lượng linh kiện, chiếc&nbsp;<a href=\"https://www.hanoicomputer.vn/mainboard-bo-mach-chu\" rel=\"noopener\" target=\"_blank\" title=\"bo mạch chủ\">bo mạch chủ</a>&nbsp;n&agrave;y cũng nằm trong line-up c&aacute;c sản phẩm ROG STRIX cao cấp nhất, nhờ vậy n&oacute; c&ograve;n mang lại sự đồng bộ với card đồ họa RTX 2080 Super O8G GAMING</p>\r\n\r\n	<p><img src=\"https://hanoicomputercdn.com/media/product/53835_52345_mainboard_asus_rog_strix_z490_e_gaming_intel_z490_socket_1200_atx_4_khe_ram_ddr4_0004_rog_strix_z490_e_gaming_03.jpg\" style=\"width:700px\" /></p>\r\n\r\n	<p>Game, phần mềm c&aacute;c loại y&ecirc;u cầu về dung lượng&nbsp;<a href=\"https://www.hanoicomputer.vn/ram-bo-nho-trong\" rel=\"noopener\" target=\"_blank\" title=\"RAM\">RAM</a>&nbsp;đang ng&agrave;y một cao, 16GB mới chỉ l&agrave; vừa đủ trong năm 2020 n&agrave;y. Để thật sự y&ecirc;n t&acirc;m th&igrave; 32GB trở l&ecirc;n mới l&agrave; ch&acirc;n l&yacute; v&agrave; Gskill với d&ograve;ng sản phẩm Neo mới nhất sẽ h&acirc;n hạnh trợ gi&uacute;p bạn trong vấn đề n&agrave;y.</p>\r\n\r\n	<p><img src=\"https://hanoicomputercdn.com/media/product/53835_48541_gskill_trident_z_neo_2.jpg\" style=\"width:700px\" /></p>\r\n\r\n	<p>Tr&aacute;i tim của hệ thống cao cấp như thế n&agrave;y sẽ kh&ocirc;ng thể tầm thường,&nbsp;<a href=\"https://www.hanoicomputer.vn/nguon-corsair-rm-series-rm850-850-watt-80-plus-gold-certified-fully-modular\" rel=\"noopener\" target=\"_blank\" title=\"Corsair RM Series RM850\">Corsair RM Series RM850</a>&nbsp;với chuẩn 80 Plus Gold đảm bảo nguồn điện sạch, ổn định c&ugrave;ng c&ocirc;ng suất lớn sẽ gi&uacute;p chủ sở hữu y&ecirc;n t&acirc;m trong suốt nhiều năm tiếp theo</p>\r\n\r\n	<p><img src=\"https://hanoicomputercdn.com/media/product/53835_48214____nh______i_di___n_0007_8.jpg\" style=\"width:700px\" /></p>\r\n	</li>\r\n</ul>\r\n', '1614872688product3.jpg', 77999000, 1),
(12, 1, 'Laptop Asus VivoBook A415EA-EB358T ', '<p><strong>Bảo h&agrave;nh:</strong>&nbsp;<strong>12 Th&aacute;ng</strong></p>\r\n\r\n<p>&nbsp;Qu&agrave; tặng v&agrave; ưu đ&atilde;i k&egrave;m theo</p>\r\n\r\n<p><strong>BỘ QU&Agrave; TẶNG TRỊ GI&Aacute;&nbsp;1.600.000Đ</strong><br />\r\n+&nbsp;Chuột kh&ocirc;ng d&acirc;y Logitech M185 trị gi&aacute;&nbsp;249.000đ&nbsp;(MELO055)<br />\r\n+&nbsp;Tấm l&oacute;t chuột trị gi&aacute;&nbsp;49.000đ&nbsp;(PADM639)<br />\r\n+&nbsp;Bộ vệ sinh laptop trị gi&aacute;&nbsp;39.000đ&nbsp;(NUOC002)<br />\r\n+&nbsp;T&uacute;i chống sốc LG trị gi&aacute;&nbsp;149.000đ&nbsp;(TUID205)<br />\r\n+&nbsp;Gi&aacute; khuyến mại l&agrave; gi&aacute; đ&atilde; giảm&nbsp;3.600.000đ&nbsp;CT ho&agrave;n tiền của LG.</p>\r\n\r\n<p>+&nbsp;Tặng phiếu vệ sinh bảo dưỡng Laptop, PC miễn ph&iacute; trọn đời trị gi&aacute;&nbsp;999.000đ&nbsp;(THEK417)<br />\r\n+Giảm&nbsp;20%&nbsp;khi mua Tai nghe Zidli ZH20 USB 7.1 (TNZI051)</p>\r\n\r\n<p><br />\r\n<strong>ƯU Đ&Atilde;I KHI MUA K&Egrave;M LAPTOP (&Aacute;P DỤNG ĐẾN 31/1/2021)</strong><br />\r\n+&nbsp;Giảm&nbsp;5%&nbsp;Tai nghe Dareu, Kingston HyperX, Corsair, SteelSeries, Ổ cứng gắn ngo&agrave;i, Microphone Razer, HyperX, Router, Switch, Modem, Loa Logitech.<br />\r\n+&nbsp;Giảm&nbsp;10%&nbsp;Tai nghe JBL (TNJB), B&agrave;n di chuột (PADM), USB, Card mạng, Card sound c&aacute;c loại.</p>\r\n\r\n<p><br />\r\n<strong>MIỄN PH&Iacute; GIAO H&Agrave;NG TO&Agrave;N QUỐC&nbsp;đến hết 31/3/2021</strong></p>\r\n', '<p><strong>Laptop Asus VivoBook A415EA</strong>&nbsp;sở hữu vi xử l&yacute; Core i3 thế hệ 11 mới nhất, ổ cứng SSD xử l&yacute; trơn tru c&aacute;c t&aacute;c vụ văn ph&ograve;ng, giải tr&iacute;. Ph&ugrave; hợp với những bạn đang t&igrave;m một chiếc&nbsp;<a href=\"https://www.hanoicomputer.vn/laptop-may-tinh-xach-tay\" rel=\"noopener\" target=\"_blank\" title=\"laptop\">laptop</a>&nbsp;vừa c&oacute; hiệu năng ổn định vừa c&oacute; thiết kế mỏng nhẹ.</p>\r\n\r\n<p><img src=\"https://www.hanoicomputer.vn/media/lib/12-12-2020/imagetools0.png\" style=\"height:457px; width:723px\" /></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh ổn định phục vụ tốt cho c&aacute;c c&ocirc;ng việc văn ph&ograve;ng</strong></h3>\r\n\r\n<p><a href=\"https://www.hanoicomputer.vn/laptop-asus-vivobook-a415ea-eb358t-bac\" rel=\"noopener\" target=\"_blank\" title=\"Laptop Asus VivoBook A415EA-EB358T\"><strong>Laptop Asus VivoBook A415EA-EB358T</strong></a>&nbsp;được trang bị bộ xử l&yacute; Intel Core i3 thế hệ 11 với xung nhịp trung b&igrave;nh ở c&aacute;c t&aacute;c vụ nhẹ nh&agrave;ng như: Mở tr&igrave;nh duyệt, Word, Excel,... v&agrave; đạt xung nhịp tối đa ở c&aacute;c t&aacute;c vụ n&acirc;ng cao hơn như: Photoshop, chơi game,... Nhờ Turbo Boost.&nbsp;</p>\r\n\r\n<p>RAM 4 GB mở được c&ugrave;ng l&uacute;c nhiều ứng dụng như vừa nghe nhạc vừa mở ứng dụng Word để l&agrave;m việc.</p>\r\n\r\n<p>Laptop được trang bị ổ cứng SSD 256 GB kết hợp c&ugrave;ng bộ nhớ Intel Optane 32GB (H10)​ mang đến tốc độ phản hồi nhanh ch&oacute;ng mở ứng dụng, khởi động m&aacute;y chỉ trong v&agrave;i gi&acirc;y. B&ecirc;n cạnh tốc độ xử l&yacute; nhanh th&igrave; ổ cứng c&ograve;n cung cấp cho bạn một kh&ocirc;ng gian lưu trữ lớn, bạn c&oacute; thể thoải m&aacute;i tải về những bộ phim y&ecirc;u th&iacute;ch m&agrave; kh&ocirc;ng phải lo hết dung lượng.</p>\r\n\r\n<p><img src=\"https://www.hanoicomputer.vn/media/lib/12-12-2020/imagetools1.png\" style=\"height:678px; width:720px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Thiết kế mỏng nhẹ, thời thượng</strong></h3>\r\n\r\n<p>Chiếc laptop Asus n&agrave;y được thiết kế để ph&ugrave; hợp với nhu cầu di chuyển thường xuy&ecirc;n của học sinh sinh vi&ecirc;n v&agrave; d&acirc;n văn ph&ograve;ng, m&aacute;y chỉ nặng 1.4 kg v&agrave; mỏng 17.9 mm, laptop c&oacute; k&iacute;ch thước chỉ lớn hơn tờ giấy A4 một ch&uacute;t bạn c&oacute; thể dễ d&agrave;ng để v&agrave;o balo mang theo đến trường hoặc c&ocirc;ng ty.</p>\r\n\r\n<p>M&aacute;y được trang bị bảo mật v&acirc;n tay bạn chỉ cần chạm nhẹ một c&aacute;i để mở m&aacute;y m&agrave; kh&ocirc;ng cần phải nhớ mật khẩu phiền phức v&agrave; kh&ocirc;ng phải lo lắng rằng kẻ gian sẽ đ&aacute;nh cắp mật khẩu để x&acirc;m nhập v&agrave;o m&aacute;y t&iacute;nh để đ&aacute;nh cắp t&agrave;i liệu của bạn.</p>\r\n\r\n<p>M&aacute;y hỗ trợ đa dạng c&aacute;c cổng kết nối phổ biến như: USB 2.0, USB 3.1, HDMI, USB Type-C gi&uacute;p m&aacute;y t&iacute;nh kết nối với c&aacute;c thiết bị ngoại vi một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<p>Phim Enter được thiết kế nổi bật với viền vang neon.</p>\r\n\r\n<p><img src=\"https://www.hanoicomputer.vn/media/lib/12-12-2020/imagetools2.png\" style=\"height:575px; width:738px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Trải nghiệm h&igrave;nh ảnh ch&acirc;n thực hơn</h3>\r\n\r\n<p><br />\r\nLaptop sở hữu viền m&agrave;n h&igrave;nh NanoEdge si&ecirc;u mỏng, tỷ lệ m&agrave;n h&igrave;nh tr&ecirc;n th&acirc;n m&aacute;y l&agrave; 87% cho bạn trải nghiệm m&agrave;n h&igrave;nh 14 inch tr&ecirc;n khung m&aacute;y nhỏ gọn. M&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải Full HD hiển thị h&igrave;nh ảnh sắc n&eacute;t, m&agrave;u sắc ch&acirc;n thực hơn.&nbsp;</p>\r\n\r\n<p>Tấm nền IPS cho g&oacute;c nh&igrave;n rộng bạn c&oacute; thể theo d&otilde;i m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh ở nhiều g&oacute;c độ kh&aacute;c nhau m&agrave; h&igrave;nh ảnh vẫn kh&ocirc;ng bị biến dạng hay lệch m&agrave;u. M&agrave;n h&igrave;nh c&ograve;n được trang bị th&ecirc;m lớp chống ch&oacute;i Anti Glare gi&uacute;p bạn quan s&aacute;t r&otilde; m&agrave;n h&igrave;nh kể cả khi đang ở ngo&agrave;i trời.</p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh Audio by Harman/Kardon cho &acirc;m thanh ph&aacute;t ra ch&iacute;nh x&aacute;c, mạnh mẽ mang đến những ph&uacute;t gi&acirc;y giải tr&iacute; tuyệt vời.</p>\r\n\r\n<p>Laptop Asus VivoBook A415EA&nbsp; với vẻ ngo&agrave;i bắt mắt, hiệu năng ổn định v&agrave; một số t&iacute;nh năng th&ocirc;ng minh sẽ l&agrave; sự lựa chọn tuyệt vời trong d&ograve;ng laptop học tập - văn ph&ograve;ng.</p>\r\n\r\n<p><img src=\"https://www.hanoicomputer.vn/media/lib/12-12-2020/imagetools3.png\" style=\"height:504px; width:734px\" /><img src=\"https://www.hanoicomputer.vn/media/lib/12-12-2020/imagetools4.png\" style=\"height:410px; width:752px\" /></p>\r\n', '1614872529product2.png', 12799000, 1),
(13, 1, 'Laptop LG Gram 14ZD90N-V.AX55A5', '<p><strong>Bảo h&agrave;nh:</strong>&nbsp;<strong>12 Th&aacute;ng</strong></p>\r\n\r\n<p>&nbsp;Qu&agrave; tặng v&agrave; ưu đ&atilde;i k&egrave;m theo</p>\r\n\r\n<p><strong>BỘ QU&Agrave; TẶNG TRỊ GI&Aacute;&nbsp;1.600.000Đ</strong><br />\r\n+&nbsp;Chuột kh&ocirc;ng d&acirc;y Logitech M185 trị gi&aacute;&nbsp;249.000đ&nbsp;(MELO055)<br />\r\n+&nbsp;Tấm l&oacute;t chuột trị gi&aacute;&nbsp;49.000đ&nbsp;(PADM639)<br />\r\n+&nbsp;Bộ vệ sinh laptop trị gi&aacute;&nbsp;39.000đ&nbsp;(NUOC002)<br />\r\n+&nbsp;T&uacute;i chống sốc LG trị gi&aacute;&nbsp;149.000đ&nbsp;(TUID205)<br />\r\n+&nbsp;Gi&aacute; khuyến mại l&agrave; gi&aacute; đ&atilde; giảm&nbsp;3.600.000đ&nbsp;CT ho&agrave;n tiền của LG.</p>\r\n\r\n<p>+&nbsp;Tặng phiếu vệ sinh bảo dưỡng Laptop, PC miễn ph&iacute; trọn đời trị gi&aacute;&nbsp;999.000đ&nbsp;(THEK417)<br />\r\n+Giảm&nbsp;20%&nbsp;khi mua Tai nghe Zidli ZH20 USB 7.1 (TNZI051)</p>\r\n\r\n<p><br />\r\n<strong>ƯU Đ&Atilde;I KHI MUA K&Egrave;M LAPTOP (&Aacute;P DỤNG ĐẾN 31/1/2021)</strong><br />\r\n+&nbsp;Giảm&nbsp;5%&nbsp;Tai nghe Dareu, Kingston HyperX, Corsair, SteelSeries, Ổ cứng gắn ngo&agrave;i, Microphone Razer, HyperX, Router, Switch, Modem, Loa Logitech.<br />\r\n+&nbsp;Giảm&nbsp;10%&nbsp;Tai nghe JBL (TNJB), B&agrave;n di chuột (PADM), USB, Card mạng, Card sound c&aacute;c loại.</p>\r\n\r\n<p><br />\r\n<strong>MIỄN PH&Iacute; GIAO H&Agrave;NG TO&Agrave;N QUỐC&nbsp;đến hết 31/3/2021</strong></p>\r\n', '<p>Nếu bạn đang t&igrave;m một chiếc m&aacute;y t&iacute;nh x&aacute;ch tay si&ecirc;u mỏng nhẹ, hiệu năng cao tiện lợi cho c&ocirc;ng việc y&ecirc;u cầu di chuyển cao th&igrave; chiếc&nbsp;<em><strong>Laptop LG Gram 14ZD90N-V.AX55A5</strong></em>&nbsp;l&agrave; một sự lựa chọn v&ocirc; c&ugrave;ng đ&aacute;ng c&acirc;n nhắc. Vậy sản phẩm n&agrave;y c&oacute; những đặc t&iacute;nh g&igrave; nổi bật, h&atilde;y c&ugrave;ng HANOICOMPUTER kh&aacute;m ph&aacute; ngay trong b&agrave;i viết dưới đ&acirc;y!</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_LaptopLGGram14ZD90N-V.AX55A5i5xam10.jpg\" /></p>\r\n\r\n<h3>Laptop m&agrave;n h&igrave;nh 14&quot; &amp; 999g si&ecirc;u nhẹ v&ocirc; địch</h3>\r\n\r\n<p>LG Gram&nbsp;14 si&ecirc;u nhẹ mang đến khả năng di chuyển tuyệt vời. Trọng lượng chiếc&nbsp;laptop n&agrave;y chỉ 999g, bạn c&oacute; thể mang m&aacute;y t&iacute;nh đến bất cứ nơi n&agrave;o bạn muốn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_LaptopLGGram14ZD90N-V.AX55A5i5xam11.jpg\" /></p>\r\n\r\n<h3>Thoải m&aacute;i l&agrave;m việc cả ng&agrave;y với Pin 72Wh</h3>\r\n\r\n<p>Thời lượng pin d&agrave;i ngay cả khi hoạt động với hiệu suất cải thiện đ&aacute;ng kể. Khi sạc đầy pin 72Wh t&iacute;ch hợp, bạn sẽ c&oacute; thời lượng pin l&ecirc;n đến 18,5 giờ* để tiếp tục hoạt động b&ecirc;n ngo&agrave;i m&agrave; kh&ocirc;ng phải lo lắng về việc sạc lại.</p>\r\n\r\n<p>*Thời lượng pin thực tế sẽ kh&aacute;c với th&ocirc;ng số kỹ thuật t&ugrave;y thuộc v&agrave;o kiểu m&aacute;y, c&agrave;i đặt v&agrave; m&ocirc;i trường sử dụng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_LaptopLGGram14ZD90N-V.AX55A5i5xam12.jpg\" /></p>\r\n\r\n<h3>Hiệu suất đồ họa cao hơn đến 2 lần c&ugrave;ng CPU Intel&reg; Thế hệ thứ 10</h3>\r\n\r\n<p>Với bộ xử l&yacute; Intel&reg; Core&trade; thế hệ thứ 10, đồ họa Intel&reg; Iris&reg; Plus, LG gram mang đến hiệu suất đồ họa cao gấp đ&ocirc;i so với thế hệ thứ 8. Do đ&oacute;, m&aacute;y sẽ hỗ trợ tạo nội dung chuy&ecirc;n nghiệp với m&atilde; h&oacute;a HEVC nhanh hơn gấp 2 lần v&agrave; cho ph&eacute;p bạn trải nghiệm h&igrave;nh ảnh tuyệt đẹp th&ocirc;ng qua khả năng ph&aacute;t lại video 4K HDR mượt m&agrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_LaptopLGGram14ZD90N-V.AX55A5i5xam13.jpg\" /></p>\r\n\r\n<h3>Hiển thị IPS Full HD sống động v&agrave; ch&iacute;nh x&aacute;c ở mọi g&oacute;c xem</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh 14 inch với khả năng hiển thị IPS Full HD (1920X1080) mang đến h&igrave;nh ảnh ch&iacute;nh x&aacute;c v&agrave; r&otilde; r&agrave;ng th&ocirc;ng qua độ ch&iacute;nh x&aacute;c m&agrave;u sắc vượt trội m&agrave; kh&ocirc;ng bị biến dạng ở mọi g&oacute;c xem.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_LaptopLGGram14ZD90N-V.AX55A5i5xam14.jpg\" /></p>\r\n\r\n<h3>Sạc pin, truyền dữ liệu v&agrave; hiển thị với một cổng Thunderbolt&trade; 3</h3>\r\n\r\n<p>Cổng Thunderbolt&trade; cho ph&eacute;p hiển thị l&ecirc;n đến 5k, truyền dữ liệu với băng th&ocirc;ng c&oacute; tốc độ l&ecirc;n đến 40Gb/gi&acirc;y v&agrave; sạc pin cho thiết bị kết nối m&agrave; kh&ocirc;ng cần c&aacute;p nguồn ri&ecirc;ng, tất cả c&ugrave;ng đồng thời tr&ecirc;n một d&acirc;y c&aacute;p duy nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_LaptopLGGram14ZD90N-V.AX55A5i5xam15.jpg\" /></p>\r\n\r\n<h3>Độ bền MIL-STD-810G đ&atilde; được chứng minh</h3>\r\n\r\n<p>Th&acirc;n m&aacute;y ho&agrave;n to&agrave;n bằng kim loại l&agrave;m từ hợp kim magi&ecirc; được sử dụng l&agrave;m vật liệu m&aacute;y bay rất nhẹ v&agrave; si&ecirc;u bền. Độ bền của sản phẩm được kiểm chứng đạt ti&ecirc;u chuẩn qu&acirc;n sự MIL-STD-810G c&oacute; đ&ograve;i hỏi khắt khe về độ bền v&agrave; độ tin cậy, kiểm tra bảy yếu tố từ sốc v&agrave; bụi đến nhiệt độ khắc nghiệt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_LaptopLGGram14ZD90N-V.AX55A5i5xam16.jpg\" /></p>\r\n\r\n<h3>Đăng nhập bảo mật cao nhất với Cảm biến V&acirc;n Tay</h3>\r\n\r\n<p>Để đăng nhập hoặc đ&aacute;nh thức m&aacute;y t&iacute;nh x&aacute;ch tay, bạn chỉ cần chạm v&agrave;o n&uacute;t nguồn c&oacute; chức năng nhận dạng dấu v&acirc;n tay. Với chức năng bảo mật ho&agrave;n hảo n&agrave;y, bạn sẽ kh&ocirc;ng phải lo lắng về việc bị đột nhập hoặc qu&ecirc;n mật khẩu.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_LaptopLGGram14ZD90N-V.AX55A5i5xam17.jpg\" /></p>\r\n\r\n<h3>B&agrave;n ph&iacute;m c&oacute; đ&egrave;n nền gi&uacute;p bạn dễ d&agrave;ng g&otilde; b&agrave;n ph&iacute;m trong b&oacute;ng tối</h3>\r\n\r\n<p>Nhờ b&agrave;n ph&iacute;m c&oacute; đ&egrave;n nền của LG gram 14, bạn c&oacute; thể tiếp tục l&agrave;m việc trong m&ocirc;i trường tối bằng c&aacute;ch chạm v&agrave;o n&uacute;t nguồn. Độ s&aacute;ng b&agrave;n ph&iacute;m dễ d&agrave;ng điều chỉnh ở hai mức.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_LaptopLGGram14ZD90N-V.AX55A5i5xam18.jpg\" /></p>\r\n\r\n<h3>Hệ thống &acirc;m thanh DTS: X Ultra tăng cường sự tr&agrave;n ngập</h3>\r\n\r\n<p>Hệ thống &acirc;m thanh DTS:X Ultra l&agrave; sự tr&igrave;nh diễn &acirc;m thanh 3D thực sự th&ocirc;ng qua loa v&agrave; tai nghe, mang đến trải nghiệm &acirc;m thanh v&ograve;m tuyệt vời. V&agrave; giao diện người d&ugrave;ng linh hoạt của hệ thống cho ph&eacute;p bạn thoải m&aacute;i tạo giao diện t&ugrave;y chỉnh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_LaptopLGGram14ZD90N-V.AX55A5i5xam19.jpg\" /></p>\r\n\r\n<h3>Dịch vụ bảo h&agrave;nh tại nh&agrave;.</h3>\r\n\r\n<p><img alt=\"\" src=\"https://hanoicomputercdn.com/media/lib/52019_Servicebanner-preview.jpg\" /></p>\r\n', '1614872396product1.png', 26489000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_support_online`
--

CREATE TABLE `tbl_support_online` (
  `pk_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_contact` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_support_online`
--

INSERT INTO `tbl_support_online` (`pk_id`, `c_name`, `c_contact`) VALUES
(1, 'Email liên hệ', 'support@mail.com'),
(2, 'Tư vấn bán hàng 2', 'Mr. Tuấn: (04) 3786 8904'),
(3, 'Tư vấn bán hàng 1', 'Mrs. Dung: (04) 3786 8904');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `pk_user_id` int(11) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_password` varchar(500) NOT NULL,
  `c_fullname` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`pk_user_id`, `c_email`, `c_password`, `c_fullname`) VALUES
(1, 'admin@mail.com', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn B1'),
(2, 'admin1', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn B'),
(3, 'admin2', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn B1'),
(4, 'admin3', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn B1'),
(5, 'admin4@mail.com', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn B1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`pk_category_product_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`pk_news_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pk_product_id`);

--
-- Indexes for table `tbl_support_online`
--
ALTER TABLE `tbl_support_online`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`pk_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `pk_category_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `pk_news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pk_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_support_online`
--
ALTER TABLE `tbl_support_online`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `pk_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
