-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2019 at 04:23 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-travel-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `MaAdmin` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `DienThoai` varchar(11) DEFAULT NULL,
  `CMND` varchar(9) NOT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `GioiTinh` bit(1) DEFAULT NULL,
  `NgayDangKy` datetime DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT 'Content/Images/Upload/Avatar_Admin.jpg',
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`MaAdmin`, `Username`, `Password`, `Email`, `HoTen`, `DiaChi`, `DienThoai`, `CMND`, `NgaySinh`, `GioiTinh`, `NgayDangKy`, `Avatar`, `AnHien`) VALUES
(1, 'thanhtuyen', 'T123', 'thanhtuyenlk@gmail.com', 'Nguyen Thi Thanh Tuyen', NULL, NULL, '', NULL, NULL, NULL, 'Content/Images/Upload/Avatar_Admin.jpg', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int(11) NOT NULL,
  `TenNguoiBL` varchar(50) DEFAULT NULL,
  `TieuDeBL` varchar(50) DEFAULT NULL,
  `NoiDungBL` text,
  `NgayBL` datetime DEFAULT NULL,
  `MaKH` int(11) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ct_donhang`
--

CREATE TABLE `ct_donhang` (
  `MaCTDH` int(11) NOT NULL,
  `MaDH` int(11) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `Gia` decimal(10,0) DEFAULT NULL,
  `Thanhtien` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `diadiem`
--

CREATE TABLE `diadiem` (
  `MaDD` int(11) NOT NULL,
  `TenDD` varchar(255) NOT NULL,
  `UrlHinh` varchar(255) DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diadiem`
--

INSERT INTO `diadiem` (`MaDD`, `TenDD`, `UrlHinh`, `AnHien`) VALUES
(1, 'Vĩnh Long', NULL, b'0'),
(2, 'Sa Pa', NULL, b'0'),
(3, 'Nha Trang', NULL, b'0'),
(4, 'Hậu Giang', NULL, b'0'),
(5, 'Đà Nẫng', NULL, b'0'),
(6, 'Ninh Bình', NULL, b'0'),
(7, 'Thừa Thiên Huế', NULL, b'0'),
(8, 'Đà Lạt', NULL, b'0'),
(9, 'Quảng Ninh', NULL, b'0'),
(10, 'Hà Nội', NULL, b'0'),
(11, 'Ninh Thuận', NULL, b'0'),
(12, 'Phan Thiết', NULL, b'0'),
(13, 'Bắc Kạn', NULL, b'0'),
(15, 'Tây Nguyên', NULL, b'0'),
(16, 'Đồng Tháp', NULL, b'0'),
(17, 'Phú Yên', NULL, b'0'),
(18, 'An Giang', NULL, b'0'),
(19, 'Kiên Giang', NULL, b'0'),
(20, 'Vũng Tàu', NULL, b'0'),
(21, 'Quảng Nam', NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MaDH` int(11) NOT NULL,
  `MaKH` int(11) DEFAULT NULL,
  `NgayMua` datetime DEFAULT NULL,
  `NgayGiao` datetime DEFAULT NULL,
  `TenNguoiNhan` varchar(50) DEFAULT NULL,
  `DiaChiNhan` varchar(50) DEFAULT NULL,
  `DienThoaiNhan` varchar(11) DEFAULT NULL,
  `HTThanhToan` bit(1) DEFAULT b'0',
  `Trigia` decimal(10,0) DEFAULT NULL,
  `Dagiao` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `Id` int(11) NOT NULL,
  `MaGH` varchar(50) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `Thanhtien` decimal(10,0) DEFAULT NULL,
  `NgayMua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `DienThoai` varchar(11) DEFAULT NULL,
  `CMND` varchar(9) NOT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `GioiTinh` bit(1) DEFAULT NULL,
  `NgayDangKy` datetime DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT 'Content/Images/Upload/avatar.jpg',
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `Username`, `Password`, `Email`, `HoTen`, `DiaChi`, `DienThoai`, `CMND`, `NgaySinh`, `GioiTinh`, `NgayDangKy`, `Avatar`, `AnHien`) VALUES
(1, 'dinhhan', '123', 'dinhconghan@gmail.com', 'Đinh Công Hân', 'Bình Chánh', '0123456789', '123871256', '1997-03-04 00:00:00', b'0', '2019-03-22 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0'),
(2, 'HongHai', '1234', 'honghai@gmail.com', 'Tran Hong Hai', 'TP.HCM', '0384024556', '596256545', '1997-03-26 00:00:00', b'0', '2019-03-21 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0'),
(3, 'thanhtuyen', '456', 'thanhtuyen@gmail.com', 'Nguyen Thi Thanh Tuyen', 'Quan 9', '0395719469', '272587181', '1997-05-04 00:00:00', b'0', '2019-03-20 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0'),
(4, 'hoangthien', '789', 'hoangthien@gmail.com', 'Vu Hoang Thien', 'Quan 12', '0356864568', '272587194', '1997-05-16 00:00:00', b'0', '2019-03-19 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0'),
(5, 'DucHanh', '4567', 'duchanh@gmail.com', 'Nguyen Duc Hanh', 'Dong Nai', '0934898789', '272549445', '1985-05-04 00:00:00', b'0', '2019-03-19 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0'),
(6, 'HanhNgan', '8523', 'hanhngan@gmail.com', 'Truong Hanh Ngan', 'TP.HCM', '0232382458', '151106153', '1995-02-12 00:00:00', b'0', '2019-03-18 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0'),
(7, 'MinhPhuong', '2345', 'minhphuong@gmail.com', 'Trinh Minh Phuong', 'Quang Binh', '0232382990', '151106102', '1981-08-07 00:00:00', b'0', '2019-03-19 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0'),
(8, 'PhuCuong', '5678', 'phucuong@gmail.com', 'Nguyen Phu Cuong', 'Quang Nam', '0232381002', '151106154', '1990-02-12 00:00:00', b'0', '2019-03-18 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0'),
(9, 'ChangChang', '7851', 'changchang@gmail.com', 'Tran Chang Chang', 'Quang Ninh', '0232820590', '151102774', '1994-02-10 00:00:00', b'0', '2019-03-14 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0'),
(10, 'QuocDung', '1357', 'quocdung@gmail.com', 'Hoang Quoc Dung', 'TP.HCM', '0234567895', '123456787', '1989-08-07 00:00:00', b'0', '2019-03-17 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0'),
(11, 'LuongYen', '4561', 'luongyen@gmail.com', 'Luong Hoang Yen', 'Binh Chanh', '0451224598', '272584194', '1981-04-03 00:00:00', b'0', '2019-03-16 00:00:00', 'Content/Images/Upload/avatar.jpg', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `MaLH` int(11) NOT NULL,
  `MaKH` int(11) DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `TenNguoiGui` varchar(200) NOT NULL,
  `NoiDung` varchar(1000) NOT NULL,
  `NgayGui` datetime DEFAULT NULL,
  `LuotGui` bit(1) DEFAULT NULL,
  `DaDocKH` bit(1) DEFAULT NULL,
  `DaDocAD` bit(1) DEFAULT NULL,
  `Anhien` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaitintuc`
--

CREATE TABLE `loaitintuc` (
  `MaLTT` int(11) NOT NULL,
  `TenLTT` varchar(255) NOT NULL,
  `TomTat` varchar(255) NOT NULL,
  `UrlHinh` varchar(255) DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaitintuc`
--

INSERT INTO `loaitintuc` (`MaLTT`, `TenLTT`, `TomTat`, `UrlHinh`, `NgayCapNhat`, `AnHien`) VALUES
(1, 'Du Lịch', 'Khai quat cac goi dich vu du lich(trong, ngoai nuoc hay tu do)', NULL, NULL, b'1'),
(5, 'Khuyen Mai', 'Tom tat cac goi khuyen mai danh cho tour', NULL, NULL, b'1'),
(6, 'Kinh Nghiệm', 'Tổng quát kinh nghiệm du lịch', NULL, '2019-03-19 00:00:00', b'1'),
(7, 'Lien He', 'De co the dong gop y kien cua khach hang den cong ty tour du lich', NULL, NULL, b'1'),
(8, 'Khách Sạn', 'Tim khach san phu hop voi nhu cau su dung cua khach hang', NULL, NULL, b'0'),
(9, 'Van Chuyen', 'Noi ve cac hinh thuc van chuyen ve tour du lich', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `MaMenu` int(11) NOT NULL,
  `TenMenu` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `Thutu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen_admin`
--

CREATE TABLE `phanquyen_admin` (
  `MaPQ` int(11) NOT NULL,
  `MaAdmin` int(11) DEFAULT NULL,
  `PQ_Menu` bit(1) DEFAULT NULL,
  `PQ_Slider` bit(1) DEFAULT NULL,
  `PQ_NhaSanXuat` bit(1) DEFAULT NULL,
  `PQ_SanPham` bit(1) DEFAULT NULL,
  `PQ_KhachHang` bit(1) DEFAULT NULL,
  `PQ_DonHang` bit(1) DEFAULT NULL,
  `PQ_TinTuc` bit(1) DEFAULT NULL,
  `PQ_QuangCao` bit(1) DEFAULT NULL,
  `PQ_LienHe` bit(1) DEFAULT NULL,
  `PQ_GioiThieu` bit(1) DEFAULT NULL,
  `PQ_QuanTriAdmin` bit(1) DEFAULT NULL,
  `PQ_SiteMap` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quangcao`
--

CREATE TABLE `quangcao` (
  `MaQC` int(11) NOT NULL,
  `TenQC` varchar(255) NOT NULL,
  `TenCty` varchar(200) NOT NULL,
  `UrlHinh` varchar(100) DEFAULT NULL,
  `LinkUrl` varchar(100) DEFAULT NULL,
  `vitri` varchar(1) NOT NULL,
  `Ngaybatdau` datetime DEFAULT NULL,
  `Ngayhethan` datetime DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `UrlHinh` varchar(255) DEFAULT NULL,
  `GiaHienTai` decimal(10,0) NOT NULL DEFAULT '0',
  `GiaCu` decimal(10,0) NOT NULL DEFAULT '0',
  `MoTa` text,
  `MoTaCT` text,
  `DanhGiaCT` text,
  `MaDD` int(11) NOT NULL,
  `SLDaBan` int(11) NOT NULL DEFAULT '0',
  `KhuyenMai` float NOT NULL DEFAULT '0',
  `LuotXem` int(11) DEFAULT '0',
  `NgayCapNhat` datetime DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `UrlHinh`, `GiaHienTai`, `GiaCu`, `MoTa`, `MoTaCT`, `DanhGiaCT`, `MaDD`, `SLDaBan`, `KhuyenMai`, `LuotXem`, `NgayCapNhat`, `AnHien`) VALUES
(1, 'Phú Quốc - Ngắm Hoàng Hôn Tại Sunset Sanato - Thiền Viện Trúc Lâm Hộ Quốc (Khách sạn 3*, Tour Tiết Kiệm)', NULL, '4300000', '4300000', 'Phú Quốc là điểm nghỉ dưỡng, tham quan, và khám phá sinh thái tuyệt vời. Mũi Ông Đội, Đá Chào là thế giới san hô và cá biển sặc sỡ. Bãi Sao cát trắng mịn, dáng cong, nước xanh ngọc bích. Đặc sản danh tiếng cả nước là tiêu sọ, nước mắm, rượu sim, ngọc trai. Phú Quốc thực sự là một viên ngọc quý trên bản đồ Việt Nam. \r\n\r\n\r\n', '-Quý khách tập trung tại Sân bay Tân Sơn Nhất, cột số 04 ga đi Trong Nước. Hướng dẫn viên làm thủ tục cho Quý khách đáp chuyến bay đi Phú Quốc. Xe đón đoàn tại sân bay đưa Quý khách khởi hành viếng Chùa Sư Muôn (Hùng Long Tự) - Để cầu nguyện sự an lành và hạnh phúc đến với gia đình. Sau đó đoàn khởi hành đi xuyên rừng nguyên sinh khám phá Suối Tranh (tùy theo mùa) - bắt đầu từ dãy Hàm Ninh xanh thẳm, từ trong khe núi nhiều dòng suối nhỏ len lỏi chảy qua rừng cây, khe đá để cùng hoà mình vào dòng chính tạo nên dòng Suối Tranh hiền hoà. Tiếp tục, đoàn tham quan Làng Chài Hàm Ninh, Vườn Tiêu, Nhà Thùng làm nước mắm. Quý khách ghé thăm Dinh Cậu - biểu tượng văn hoá và tín ngưỡng của đảo Phú Quốc, là nơi cầu may mắn, cầu an lành và là nơi ngư dân địa phương gởi gắm niềm tin cho một chuyến ra khơi đánh bắt đầy ắp cá khi trở về. Sau đó nhận phòng khách sạn, Quý khách tự do nghỉ ngơi và tắm biển. --- Buổi tối, Quý khách tự do dạo phố biển hoặc thưởng thức hải sản tại chợ Đêm Phú Quốc (chi phí tự túc). Nghỉ đêm tại Phú Quốc\r\n\r\n\r\n\r\n', 'Rất Tốt', 4, 592, 0, 5102, '2019-03-01 00:00:00', b'0'),
(2, 'Vinpeal Nha Trang', NULL, '4', '5', 'Nếu ai chưa 1 lần đến đây thì thật tiếc. Muốn biết tại sao bạn hãy đến thử nhé!', 'Qu? kh?ch t?p trung t?i Vietravel (190 Pasteur, Q3, Tp.HCM), ?o?n kh?i h?nh ?i Nha Trang tham quan: \r\n- B?i bi?n C? N? - m?t trong nh?ng b?i bi?n ??p nh?t mi?n Trung.T? Cam Ranh xe ??a Qu? kh?ch ?i theo con ???ng m?i c?p s?t bi?n ??n th?nh ph? Nha Trang, ng?m c?nh ho?ng h?n tr?n V?nh Nha Trang. \r\nNgh? ??m t?i Nha Trang.\r\n', 'Quý khách tập trung tại Vietravel (190 Pasteur, Q3, Tp.HCM), đoàn khởi hành đi Nha Trang tham quan: \r\n- Bãi biển Cà Ná - một trong những bãi biển đẹp nhất miền Trung.Từ Cam Ranh xe đưa Quý khách đi theo con đường mới cập sát biển đến thành phố Nha Trang, ngắm cảnh hoàng hôn trên Vịnh Nha Trang. \r\nNghỉ đêm tại Nha Trang.\r\n', 3, 942, 100, 7852, '2019-03-01 00:00:00', b'0'),
(3, 'Phan Thiết - Mũi Né - Bàu Trắng \r\n\r\n\r\n', NULL, '3', '3', 'Mũi Né, Phan Thiết nổi tiếng với những bãi cát trắng trải dài trên mặt biển xanh biếc và những hàng dừa cao vút, đặc biệt tới đây bạn sẽ được thưởng thức những món ăn ngon và nổi tiếng của người vùng đất ven biển vô cùng xinh đẹp này. Nơi đây còn nổi tiếng là khu nghỉ dưỡng bởi hệ thống khách sạn và resort ven biển, là nơi nghỉ ngơi cuối tuần cho cả gia đình đầy thù vị với một số thắng cảnh như Bàu Sen – Bàu Trắng, Suối Hồng, Đồi Cát Bay, hay muốn tìm hiểu về lịch sử có thể tìm về trường Dục Thanh, thành phố Phan Thiết… Hãy đồng hành cùng Vietravel khám phá hành trình thú vị này bạn nhé. \r\n\r\n', 'Quý khách tập trung tại Công ty Vietravel (190 Pasteur, Phường 6, Quận 3, TP.HCM) khởi hành đi Phan Thiết. Quý khách ăn sáng trên cung đường đi. Đến Phan Thiết đoàn tham quan:\r\n- Lâu đài Rượu Vang RD: nghe giới thiệu về quy trình sản xuất, đóng chai và thưởng thức một trong những loại rượu vang hảo hạng nổi tiếng thế giới được xuất xứ từ Thung Lũng Napa (Mỹ). \r\n- Nhận phòng tự do nghỉ ngơi, tắm biển hồ bơi tại khách sạn/resort\r\n- Ăn tối – thưởng thức hải sản Phan Thiết.\r\nBuổi tối Quý khách tự do dạo phố khám phá Mũi Né về đêm,…Nghỉ đêm tại Mũi Né. \r\n\r\n\r\n', 'Rất Tốt', 12, 1500, 150, 4500, '2019-02-20 00:00:00', b'0'),
(4, 'Đà Lạt - Giao Lưu Văn Hoá Cồng Chiêng Tây Nguyên \r\n\r\n', NULL, '2', '2', 'Quý khách tập trung tại Vietravel (190 Pasteur, Q3, Tp.HCM), đoàn khởi hành đi Đà Lạt. Trên đường đi Quý khách dừng chân ăn sáng. Tiếp tục hành trình đến Đà Lạt.', 'Quý khách tập trung tại Vietravel (190 Pasteur, Q3, Tp.HCM), đoàn khởi hành đi Đà Lạt. Trên đường đi Quý khách dừng chân ăn sáng. Tiếp tục hành trình đến Đà Lạt. Quý khách tham quan:\r\n- Thác Đam B’ri - một trong những thác nước đẹp và cao nhất tại cao nguyên Bảo Lộc.\r\nĂn trưa tại Khu du lịch. Sau đó, tiếp tục đến Đà Lạt. Đến nơi, đoàn tham quan:\r\n- Nhà thờ Domain De Marie - theo dòng Nữ tu Bác Ái, với kiến trúc là sự kết hợp hài hòa giữa phương Đông và phương Tây cùng vườn hoa được chăm chút kỹ đã tạo nên sức hút cho ngôi nhà thờ.\r\nĂn tối và nhận phòng khách sạn. Buổi tối, Quý khách tự do tham quan Hồ Xuân Hương, thưởng thức cà phê trong không khí se lạnh của phố núi Đà Lạt.\r\nNghỉ đêm tại Đà Lạt.\r\n', NULL, 8, 2560, 0, 1400, '2019-02-20 00:00:00', b'0'),
(5, 'Nha Trang - Viện Hải Dương Học - Tháp Bà Ponagar - Hòn Lao - Vinpearl Land \r\n\r\n', NULL, '4', '4', 'Điểm nhấn: - Tắm biển tại White Sand Dốc Lết với biển xanh cát trắng nắng vàng. - Thư giãn tại suối khoáng I-Resort yên bình và êm ả. - Tự do hòa vào không khí sôi động tại Sailling Club bar ngoài biển Trần Phú hay trải triệm các trò chơi đa dạng tại Vinpear Land. \r\n\r\n', 'Quý khách tập trung tại ga đi Trong Nước - Sân bay Tân Sơn Nhất, HDV Vietravel sẽ đón Quý khách để làm thủ tục hàng không bay đi Cam Ranh - Khánh Hòa. Đến nơi, HDV sẽ đón và đưa đoàn đi ăn trưa. Sau đó, Xe đưa Quý khách khởi hành đi tham quan:\r\n- Viện Hải Dương Học – là viện nghiên cứu đời sống động thực vật hải dương. Quý khách sẽ có cơ hội được tận mắt chứng kiến những mẫu vật sống được nuôi thả trong bể kính. Có đến hàng trăm loài sinh vật biển quý hiếm đang được nuôi giữ tại đây như: cá mập, rùa biển, cá chình, cá hoàng hậu, tôm hùm, cá mặt quỷ, hải cẩu... \r\n- Tháp Bà Ponagar – nép mình bên dòng sông Cái xinh đẹp, sát bên cầu Xóm Bóng, là một quần thể đền thờ tiêu biểu của nghệ thuật kiến trúc và điêu khắc dân tộc Chăm mà du khách không thể bỏ qua khi đến với thành phố biển Nha Trang.\r\nĂn chiều, nhận phòng khách sạn nghỉ ngơi. Buổi tối, Quý khách sẽ được thưởng thức chương trình đặc sắc:\r\n- Tặng Galina show - Sự kết tinh của tinh hoa văn hóa dân tộc trên mọi miền đất nước và hơi thở đương đại. Chương trình được đầu tư công phu và tỉ mỉ từ âm thanh, ánh sáng, phục trang cho đến từng chi tiết trong các tiết mục… thật ấn tượng mà không một ai có thể bỏ qua khi đến Nha Trang. \r\nNghỉ đêm tại Nha Trang.\r\nGhi chú: Show Galina được tặng sẽ không được hoàn lại chi phí trong trường hợp Quý khách không tham gia hoặc Show bị hủy do các trường hợp khách quan có thông báo của đơn vị tổ chức. Trong trường hợp chuyến bay của Quý khách bay trước 9h sáng thì Vietravel sẽ đưa Quý khách đi tham quan thêm Nhà Thờ Đá là một trong những nhà thờ Công Giáo nổi tiếng tọa lạc giữa trung tâm thành phố Nha Trang. \r\n', NULL, 3, 2740, 0, 4100, '2019-03-20 00:00:00', b'0'),
(6, 'Đà Lạt - Đường Hầm Điêu Khắc Đất Sét\r\n\r\n\r\n', NULL, '3', '3', 'Đà Lạt mộng mơ khiến bao người ngơ ngẩn bởi nơi đây ăm ắp nắng vàng, bầu trời xanh ngắt, khí trời se lạnh thả hồn cho bao chuyện tình lãng mạn, nơi chốn hẹn hò của những trái tim khát khao. Không chỉ dừng nơi ấy, Quý khách sẽ không khỏi ngỡ ngàng khi được tận mắt thấy được sự mênh mông của núi đồi, sự hùng vĩ của thác nước, sự êm ả của mặt hồ, sự đắm thắm của những bông hoa đang hé nụ,… những tuyệt tác mà thiên nhiên ưu ái dành cho xứ sở sương mù. \r\n\r\n\r\n', 'Quý khách tập trung tại Vietravel (190 Pasteur, Quận 3), khởi hành đi Đà Lạt. Trên đường đi tham quan:\r\n- Thác Đam B’ri: một trong những thác nước đẹp và cao nhất tại cao nguyên Bảo Lộc. Ăn trưa tại Khu du lịch. \r\nBuổi tối, Quý khách tự do thưởng thức cà phê trong không khí se lạnh của Đà Lạt, ngắm cảnh Hồ Xuân Hương về đêm. \r\n\r\n\r\n', NULL, 8, 3500, 0, 7400, '2019-03-14 00:00:00', b'0'),
(7, 'Phú Yên - Quy Nhơn - Kỳ Co\r\n\r\n\r\n', NULL, '4', '4', NULL, 'Quý khách tập trung tại cột số 5 ga đi trong nước Sân bay Tân Sơn Nhất, hướng dẫn viên hỗ trợ làm thủ tục cho Quý khách đáp chuyến bay đi Phú Yên. Đến sân bay Tuy Hòa (Phú Yên), hướng dẫn viên đón Quý khách đi tham quan:\r\n- Gành Đá Dĩa: thắng cảnh độc nhất vô nhị của tỉnh Phú Yên và của Quốc Gia. Trên đường đi Quý khách còn được chiêm ngưỡng cảnh Đầm Ô Loan.\r\n- Nhà Thờ Mằng Lăng: nơi còn lưu giữ cuốn kinh thánh bằng chữ Quốc Ngữ đầu tiên của Việt Nam.\r\nĐoàn khởi hành đi Quy Nhơn tham quan:\r\n- Khu du lịch Ghềnh Ráng Tiên Sa, viếng Mộ nhà thơ Hàn Mặc Tử.\r\n- Bãi Trứng (Bãi tắm Hoàng Hậu): với hàng ngàn viên đá khổng lồ hình dáng độc đáo, du khách sẽ có được cảm giác tuyệt vời khi giẫm bàn chân trần lên những viên đá tròn, nhẵn như trứng chim khổng lồ, nằm xếp lên nhau trên bãi biển, là nơi nghỉ dưỡng dành riêng cho Nam Phương Hoàng Hậu.\r\nNhận phòng và nghỉ đêm tại Quy Nhơn\r\n', NULL, 17, 2000, 200, 5000, NULL, b'0'),
(8, 'Đà Lạt - Giao Lưu Văn Hoá Cồng Chiêng Tây Nguyên ', NULL, '2', '2', NULL, 'Quý khách tập trung tại Vietravel (190 Pasteur, Q3, Tp.HCM), đoàn khởi hành đi Đà Lạt. Trên đường đi Quý khách dừng chân ăn sáng. Tiếp tục hành trình đến Đà Lạt. Quý khách tham quan:\r\n- Thác Đam B’ri - một trong những thác nước đẹp và cao nhất tại cao nguyên Bảo Lộc.\r\nĂn trưa tại Khu du lịch. Sau đó, tiếp tục đến Đà Lạt. Đến nơi, đoàn tham quan:\r\n- Nhà thờ Domain De Marie - theo dòng Nữ tu Bác Ái, với kiến trúc là sự kết hợp hài hòa giữa phương Đông và phương Tây cùng vườn hoa được chăm chút kỹ đã tạo nên sức hút cho ngôi nhà thờ.\r\nĂn tối và nhận phòng khách sạn. Buổi tối, Quý khách tự do tham quan Hồ Xuân Hương, thưởng thức cà phê trong không khí se lạnh của phố núi Đà Lạt.\r\nNghỉ đêm tại Đà Lạt.\r\n', NULL, 15, 990, 0, 1200, '2019-03-13 00:00:00', b'0'),
(9, 'Hải Phòng - Sống Lưng Khủng Long - Móng Cái - Mũi Sa Vĩ - Vịnh Hạ Long ', NULL, '5', '6', 'Quảng Ninh với địa thế đắc địa không chỉ nổi tiếng với Vịnh Hạ Long huyền thoại; ngày nay du khách đến vùng đất “than” còn khám phá thêm những địa danh nổi tiếng khác chạy dọc theo biên giới Trung Quốc như: Mũi Sa Vĩ địa đầu Tổ Quốc, “Sống Lưng Khủng Long” điểm check-in đầy mê hoặc của giới trẻ. Vào dịp tháng 2-3 hàng năm, Núi Yên Tử sẽ khoác lên mình chiếc áo cà sa vàng rực rỡ của “Đại lão mai vàng”, thu hút hàng ngàn du khách đến thưởng ngoạn phong cảnh hùng vĩ của dãy núi Yên Tử. ', 'Quý khách tập trung tại điểm Sân bay Tân Sơn Nhất (ga quốc nội) đón chuyến bay VJ (06:00 -08:00) đi Hải Phòng. Đến sân bay Cát Bi, xe đón Quý khách khởi hành tham quan và chụp ảnh bên ngoài những công trình nổi bật của thành phố Hải Phòng: \r\n- Nhà hát lớn - được người Pháp xây dựng trên nền một khu chợ cũ của làng cổ An Biên, có thiết kế theo nguyên mẫu nhà hát Paris và được mô phỏng theo kiến trúc các nhà hát của Pháp thời trung cổ với phong cách Baroc\r\n- Quảng trường trung tâm - nơi đây có rât nhiều công trình đẹp và ý nghĩa như vườn hoa, Trung tâm triển lãm mỹ thuật Hải Phòng, tượng đài nữ tướng Lê Chân, hồ Tam Bạc,…; Chiêm ngưỡng ngôi chùa có một không hai ở Hải Phòng.\r\nTiếp tục hành trình đến với thành phố du lịch nổi tiếng – Hạ Long, tham quan các công trình kiến trúc di tích văn hóa đặc sắc: \r\n- Bảo Tàng Quảng Ninh: một thiết kế có giá trị hơn 900 tỷ đồng của kiến trúc sư người Tây Ban Nha Salvador Perez Arroyo, đã đoạt giải công trình của năm 2013.\r\n- Chụp hình bên ngoài Cung Cá Heo - Cung Quy Hoạch, Hội Chợ, Triển Lãm Và Văn Hóa Quảng Ninh: công trình gồm 2 khối, liên kết với nhau bằng hệ thống thang máy, thang cuốn và thang bộ. Khối thứ nhất hình con ngọc trai, khối thứ hai có hình một con cá heo khổng lồ với chiều dài 320m.\r\n- Đền Cửa Ông - được xem là một trong những ngôi đền đẹp nhất Việt Nam, trước cửa đền là thắng cảnh Vịnh Bái Tử Long với một rừng hòn, đảo muôn hình, muôn vẻ nổi bật trên nền xanh biếc của nước biển như một bức tranh sơn thủy hữu tình tuyệt mỹ. \r\nXe đưa Quý khách đến với cao nguyên Bình Liêu được mệnh danh là “Sapa của vùng đất than”, ăn tối và nhận phòng nghỉ ngơi. \r\nNghỉ đêm tại Bình Liêu. \r\n', NULL, 9, 3520, 1, 7500, '2019-03-12 00:00:00', b'0'),
(10, 'Châu Đốc ', NULL, '2', '2', 'Phong cách hành trình: Truyền thống đặc sắc Hành trình 2 ngày 1 đêm với những trải nghiệm dịch vụ khác biệt tại Victoria Núi Sam Lodge: hồ bơi tràn vô cực hướng nhìn tuyệt vời, mảng xanh ngát của vùng Thất Sơn – An Giang, những trải nghiệm ẩm thực đặc sắc miền Tây sông nước chắc hẳn sẽ đem lại cho Quý khách nhiều khoảnh khắc thú vị, đáng nhớ. ĐIỂM NHẤN: - Trải nghiệm khoảnh khắc hoàng hôn với toàn cảnh ruộng lúa mênh mông bát ngát bên hồ bơi vô cực trong lành Victoria Núi Sam. - Thưởng thức món ngon đặc trưng của miền tây, đặc biệt là cá, mắm, rau xứ An Giang. - Cầu bình an tài lộc tại Miếu Bà Chúa Xứ Núi Sam linh thiêng. - Mê mẩn trước hàng tràm xanh rợp bóng mát cùng âm thanh thiên nhiên tại Rừng tràm Trà Sư\r\n\r\n\r\n', 'Buổi sáng, Quý khách tập trung tại Vietravel (190 Pasteur, Quận 3, Tp.HCM).\r\nĐoàn khởi hành đi Châu Đốc, dừng ăn sáng tại Trạm dừng chân Vạn Thịnh (Bình Chánh), sau đó di chuyển về Châu Đốc bằng đường Cầu Cao Lãnh chiêm ngưỡng cảnh quan bao quát sông Tiền và phà Vàm Cống (sông Hậu).\r\nĐoàn dừng ăn trưa tại thành phố Long Xuyên – thủ phủ của ngành xuất khẩu cá basa ra toàn thế giới và di chuyển đến nhận phòng tại Victoria Núi Sam Lodge (Châu Đốc) vào khoảng 15:30, Quý khách thư giãn cùng hồ bơi vô cực, thưởng thức 1 ly cocktail (chi phí tự túc) trong lúc chiêm ngưỡng khoảnh khắc hoàng hôn tại một trong những điểm ngắm hoàng hôn đẹp nhất Việt Nam. \r\n*Hoạt động tùy chọn trong thời gian nghỉ ngơi tự do: Quý khách có thể tản bộ lên đỉnh núi Sam để tỏ lòng thành tại bệ thờ Bà Chúa Xứ (1.4km - khoảng 25 phút/chiều).\r\nKhi mặt trời đã hoàn toàn khuất sau núi, xe sẽ đưa Quý khách từ Victoria Lodge xuống núi dùng bữa tối với các món đặc sản mùa nước nổi đặc trưng của miền tây.\r\nSau bữa tối, xe đưa Quý khách viếng Miếu Bà Chúa Xứ núi Sam trong khung cảnh đêm – một sắc thái yên bình hoàn toàn khác biệt, rất thích hợp để Quý khách nhắn gửi những lời nguyện cầu thầm kín đến Bà; viếng lăng ông Thoại Ngọc Hầu với công đức vời vợi chủ trì công cuộc xây dựng con kênh Vĩnh Tế vĩ đại. \r\nSau khi tham quan vía 2 điểm miếu và lăng, khoảng 21:30, xe đưa Quý khách trở lại Victoria Núi Sam Lodge để nghỉ đêm, thưởng ngoạn cảnh đêm với bầu trời đầy sao nơi biên giới.\r\n\r\nNghỉ đêm tại Victoria Núi Sam Lodge\r\n\r\n\r\n', NULL, 18, 6050, 0, 9000, NULL, b'0'),
(11, 'Đồng Tháp-Sa Đéc', NULL, '1', '1', 'Du lịch Đồng Tháp cùng Lửa Việt Tours - khám phá tour mới với nhiều trải nghiệm: \r\nTham quan làng hoa Sa Đéc, đồng sen bạt ngàn loài hoa biểu tượng của Đồng Tháp.\r\nKhám phá Gáo Giồng, đi xuồng ngoạn cảnh, ngắm nhìn những đoàn chim về tổ.\r\nViếng Nam Phương Linh Từ, Gò Tháp - di tích quốc gia đặc biệt, di chỉ khảo cổ của vương quốc Phù Nam.\r\nThưởng thức các món ăn đặc sản của mùa nước nổi: lẩu cá linh bông điên điển, cá lóc nướng trui…\r\n\r\n', 'BAO GỒM\r\n•	Xe 16, 29, 45 chỗ vận chuyển theo hành trình tour.\r\n•	Khách sạn 3 sao tiêu chuẩn 2-3 khách/phòng.\r\n•	Ăn các bữa chính theo chương trình.\r\n•	Nước uống: 02 chai 500 ml/người/ngày.\r\n•	Hướng dẫn viên theo đoàn suốt tuyến.\r\n•	Bảo hiểm du lịch 100.000.000 VND/người/trường hợp.\r\n•	Thuế giá trị gia tăng VAT\r\nCHƯA BAO GỒM\r\n•	Chi phí các dịch vụ không được liệt kê trong phần Bao gồm.\r\n•	Phụ thu phòng đơn: 400.000đ/khách/tour (Nếu có).\r\nQUY ĐỊNH TRẺ EM\r\n•	Dưới 06 tuổi: Miễn phí, được mua bảo hiểm du lịch, có chỗ ngồi trên xe, ngủ ghép với gia đình (chi phí phát sinh trên tour gia đình tự chi trả). Hai người lớn chỉ được kèm theo 01 trẻ, từ trẻ thứ hai tính 50% giá tour.\r\n•	Từ 06 – 10 tuổi: 75% giá tour người lớn (ngủ ghép với gia đình). Hai người lớn chỉ được kèm theo 01 trẻ, từ trẻ thứ hai tính giá như người lớn.\r\n•	Từ 11 tuổi trở lên: giá tour như người lớn.\r\nQUY ĐỊNH HỦY - PHẠT\r\nPhí hủy tour căn cứ vào thời gian khách hủy tour so với ngày khởi hành dự kiến, cụ thể:\r\n•	Ngay khi kí hợp đồng: 50% giá tour.\r\n•	Từ 45 - 30 ngày: 70% giá tour.\r\n•	Từ 29 - 15 ngày: 90% giá tour.\r\n•	Trong vòng 14 ngày: 100% giá tour.\r\nThời gian hủy tour được tính là ngày làm việc, không tính thứ bảy, chủ nhật và các ngày lễ, Tết. Khách\r\nđược xem là hủy tour thành công khi có xác nhận của Lửa Việt, không chấp nhận thông báo hủy tour qua điện thoại.\r\n\r\n', NULL, 16, 500, 0, 612, '2019-03-13 00:00:00', b'0'),
(12, 'Đảo Nam Du', NULL, '3', '3', 'Đảo Nam Du xứng đáng được gọi là thiên đường bởi vẻ đẹp tuyệt vời từ thiên nhiên ưu ái dành tặng cho mảnh đất này. Tour Nam Du sẽ là lựa chọn thích hợp dành cho những du khách thích khám phá, trải nghiệm. Đến Nam Du bạn sẽ thay đổi nhiều cung bậc cảm xúc từ ngỡ ngàng, thích thú và vỡ oà trước bãi biển trong vắt bên một hòn đảo tuyệt vời.', 'BAO GỒM:\r\n•	Xe tham quan đời mới máy lạnh suốt tuyến.\r\n•	Vé tàu cao tốc: Rạch Giá - Nam Du - Rạch Giá.\r\n•	Lưu trú: nhà nghỉ có máy lạnh, 02 - 04 người/phòng. Lẻ nam nữ ngủ phòng 3 chung gia đình hoặc phụ thu phòng đơn.\r\n•	Ăn sáng: có cà phê, nước ngọt.\r\n•	Ăn trưa, chiều: thực đơn thay đổi theo ẩm thực địa phương.\r\n•	Tàu tham quan quần đảo Nam Du.\r\n•	Xe máy tham quan đảo.\r\n•	Chòi ghế tại bãi tắm.\r\n•	Chi phí tắm nước ngọt.\r\n•	Bảo hiểm: 30.000.000đ/ khách/ vụ.\r\n•	Huớng dẫn viên tiếng Việt.\r\n•	Khăn lạnh: 01 cái/khách/ngày.\r\n•	Nón du lịch: 01 cái/khách/tour.\r\n•	Nước: 02 chai/khách/ngày.\r\n•	Thuế giá trị gia tăng VAT\r\nCHƯA BAO GỒM:\r\n•	Chi phí cá nhân ngoài chương trình.\r\n•	Xe ôm tham quan Hải Đăng - tour Nam Du\r\n•	Phụ thu phòng đơn 450.000đ/tour nếu không có khách ngủ ghép hoặc có nhu cầu ngủ riêng.\r\nQUI ĐỊNH TRẺ EM:\r\n•	Dưới 05 tuổi: Miễn phí, có bảo hiểm du lịch, không có chỗ ngồi trên xe, ngủ ghép với gia đình (chi phí phát sinh trên tour gia đình tự chi trả). Hai người lớn chỉ được kèm theo 01 trẻ em miễn phí, từ trẻ thứ hai tính 50% giá tour.\r\n•	Từ 06 – 10 tuổi: 50% giá tour người lớn (ngủ ghép với gia đình). Hai người lớn chỉ được kèm theo 01 trẻ, từ trẻ thứ hai tính giá như người lớn.\r\n•	Từ 11 tuổi trở lên: giá tour và dịch vụ như người lớn\r\n	\r\n', 'Rất Tốt', 19, 3000, 100, 4250, '2019-03-05 00:00:00', b'0'),
(13, 'Ninh Chữ- Vịnh Hy', NULL, '4', '4', 'Tour Ninh Chữ - Vĩnh Hy là tour du lịch đầy lý thú với các điểm đến mang đậm văn hóa Chăm và những bãi biển trong xanh:\r\n- Tham quan làng nghề của người Chăm: làng dệt Mỹ Nghiệp, làng gốm Bàu Trúc.\r\n- Viếng tháp chăm Pokrong Giarai.\r\n- Tắm biển Ninh Chữ, tham quan vịnh Vĩnh Hy, ngồi thuyền đáy kính ngắm san hô.\r\n\r\n', 'BAO GỒM:\r\n•	Xe tham quan đời mới, máy lạnh.\r\n•	Ăn sáng có cà phê, nước ngọt.\r\n•	Ăn trưa, chiều thay đổi theo thực đơn địa phương. Từ ngày 02 ăn sáng buffet nếu lưu trú resort 03 sao.\r\n•	Lưu trú resort 3 sao 02 – 04 người/phòng. Trường hợp lẻ nam, nữ: phụ thu phòng đơn. \r\n•	Nước uống: 02chai/người/ngày.\r\n•	Bảo hiểm: 30.000.000đ/người/vụ.\r\n•	Khăn lạnh: 01 cái/người/ngày.\r\n•	Nón du lịch: 01 cái/khách/tour.\r\n•	Hướng dẫn viên tiếng Việt suốt tuyến.\r\n•	Vé tham quan tại tất cả các điểm.\r\n•	Thuế VAT 10%.\r\nCHƯA BAO GỒM:\r\n•	Chi phí cá nhân và tham quan ngoài chương trình.\r\n•	Phụ thu phòng đơn 950.000đ/phòng/tour nếu không có khách ngủ ghép hoặc có nhu cầu ngủ riêng.\r\n________________________________________\r\nGIÁ VÉ TRẺ EM:\r\n•	Dưới 06 tuổi: Miễn phí, được mua bảo hiểm du lịch, có chỗ ngồi trên xe, ngủ ghép với gia đình (chi phí phát sinh trên tour gia đình tự chi trả). Hai người lớn chỉ được kèm theo 01 trẻ, từ trẻ thứ hai tính 50% giá tour.\r\n•	Từ 06 – 10 tuổi: 50% giá tour người lớn (ngủ ghép với gia đình). Hai người lớn chỉ được kèm theo 01 trẻ, từ trẻ thứ hai tính giá như người lớn.\r\n•	Từ 11 tuổi trở lên: giá tour như người lớn.\r\n\r\n', NULL, 11, 2000, 150, 3102, '2019-03-01 00:00:00', b'0'),
(14, 'Côn Đảo', NULL, '6', '6', 'Tour Côn Đảo trọn gói khởi hành hàng ngày sẽ đưa du khách trải nghiệm cảm giác thoải mái và thích thú khi thỏa sức tắm biển và thưởng thức hải sản tươi sống. Tham quan hệ thống nhà tù nổi tiếng, nơi được mệnh danh là \"địa ngục trần gian\".', 'GIÁ BAO GỒM:\r\n•	Vé máy bay khứ hồi Tp HCM – Côn Đảo.\r\n•	Xe ô tô máy lạnh đời mới, phục vụ theo chương trình.\r\n•	Nhà khách Côn Đảo tiêu chuẩn 02 sao. Từ 02 – 04 khách/phòng. Trường hợp lẻ nam, nữ ngủ phòng 3 cùng gia đình hoặc phụ thu phòng đơn\r\n•	Ăn sáng: có cà phê, nước ngọt.\r\n•	Ăn sáng, trưa: thực đơn thay đổi theo ẩm thực địa phương.\r\n•	Nước suối 01 chai/khách/ngày.\r\n•	Khăn lạnh: 01 cái/khách/ngày.\r\n•	Nón du lịch: 01 cái/khách/tour.\r\n•	Vé tham quan tại các điểm.\r\n•	Hướng dẫn viên tiếng Việt.\r\n•	Thuế giá trị gia tăng VAT\r\nCHƯA BAO GỒM:\r\n•	Chi phí cá nhân, tham quan ngoài chương trình.\r\n•	Phụ thu phòng đơn 950.000đ/tour nếu không có khách ngủ ghép hoặc có nhu cầu ngủ riêng.\r\nQUI ĐỊNH TRẺ EM:\r\n•	Trẻ em dưới 02 tuổi: Tính 10% vé máy bay. Không tính giá tour, có bảo hiểm du lịch. Chi phí trên tour gia đính tự thanh toán (nếu có). Hai người lớn chỉ kèm 01 trẻ em dưới 05 tuổi, từ em thứ 02 tính 20% giá tour.\r\n•	Trẻ em từ 02 - 05 tuổi: Tính 20% chi phí tour + 75% vé máy bay, có chỗ ngồi trên xe và suất ăn trẻ em, ngủ ghép với gia đình. Hai người lớn chỉ kèm 01 trẻ em dưới 05 tuổi, từ em thứ 02 tính 50% giá tour.\r\n•	Trẻ em từ 06 - 10 tuổi: Tính 50% chi phí tour + 75% vé máy bay, các dịch vụ như người lớn, ngủ ghép với gia đình. Hai người lớn chỉ kèm 01 trẻ em dưới 06 - 10 tuổi, từ em thứ 02 tính 100% giá tour.\r\n•	Từ 11 tuổi trở lên: giá tour và dịch vụ như người lớn.\r\n\r\n', NULL, 20, 8000, 200, 9500, '2019-03-22 00:00:00', b'0'),
(15, 'Hồ Ba bể', NULL, '5', '5', 'Hồ Ba Bể được biết đến là một trong số những hồ nước ngọt tự nhiên lớn nhất miền Bắc và được UNESCO xếp vào top 20 hồ nước ngọt đẹp nhất thế giới cần được bảo vệ và phát triển.\r\nNằm trong khu vực vườn Quốc gia Ba Bể, thuộc xã Nam Mẫu, huyện Ba bể, tỉnh Bắc Kạn, hồ Ba Bể được bao quanh bởi hai cánh cung Ngân Sơn và Bắc Sơn. Nếu bạn yêu thích cảnh quan núi rừng, nương rẫy, thiên nhiên hùng vĩ nơi đây, hãy tận hưởng chuyến đi thư giãn sau một tuần làm việc mệt mỏi.\r\n\r\n', 'BAO GỒM:\r\n•	Xe đời mới, lái xe nhiệt tình, kinh nghiệm\r\n•	Các  bữa ăn theo lịch trình: 90.000đ/bữa chính; 30.000đ/bữa sáng.\r\n•	Ngủ nhà nghỉ tại cổng vườn quốc gia Hố Ba Bể, hoặc home-stay sạch sẽ tiện nghi, ngăn phòng, chăn đệm, wifi đầy đủ. Khách sạn 2* ở Cao Bằng:  02 người/phòng; lẻ nam/nữ ở phòng 3.\r\n•	Vé tham quan theo lịch trình, đi thuyền hồ Ba Bể.\r\n•	Hướng dẫn viên nhiệt tình, có kinh nghiệm cung đường Đông Bắc.\r\n•	Bảo hiểm du lịch tối đa 30.000.000đ/ người\r\n•	Nước uống 01 chai/ người/ ngày\r\n•	Chi phí tổ chức và điều hành.\r\n•	Thuế giá trị gia tăng VAT\r\nCHƯA BAO GỒM:\r\n•	Chi phí cá nhân ngoài chương trình.\r\n\r\n', NULL, 13, 4580, 200, 5000, '2019-03-10 00:00:00', b'0'),
(16, 'Hồ Cốc', NULL, '800', '900', NULL, '-Giữa ngút ngàn rừng nguyên sinh nổi lên một bàu nước nóng với hơn 70 điểm phun lộ thiên, hình thành hệ thống suối, các hồ lớn nhỏ luôn tỏa nhiệt và bốc hơi, nhiệt độ từ 37ºC đến 82ºC tuỳ từng khu vực. Mạch  nước ẩn  hiện  dưới  rừng  tràm  thơm đặc hữu này có chứa silic, hàm lượng nitơ cao, thêm lưu huỳnh, natri, clo...\r\n-Suối khoáng nóng Bình Châu đã được các nhà khoa học công nhận bởi nguồn nước rất có giá trị trong việc chữa trị phục hồi sức khoẻ. Khu sinh thái Bình Châu - Hồ Cốc với những cảnh quan sinh thái tuyệt đẹp, hiện đang là một điểm du lịch thu hút khách khá đông của tỉnh Bà Rịa Vũng Tàu\r\n', NULL, 20, 10500, 100, 12000, '2019-03-23 00:00:00', b'0'),
(17, 'Long Hải', NULL, '1', '1', NULL, '-Vũng Tàu nằm trên bán đảo cùng tên, là tỉnh lỵ của tỉnh Bà Rịa -Vũng Tàu. Nằm nhô hẳn ra khỏi đất liền như một dải đất có chiều dài khoảng 14km và chiều rộng khoảng 6km. Từ nơi đây, người ta có thể nhìn biển Đông cả khi trời mọc lẫn lúc hoàng hôn.\r\n-Vũng Tàu có nhiều di tích thắng cảnh như Hải đăng Vũng Tàu cao 18m, chiếu xa tới 35 hải lý, Niết bàn tịnh xá (chùa Phật nằm) với pho tượng Phật Thích ca nằm nghiêng dài 12m trên bệ cao 2,5m, Tượng chúa Jêsus giang tay cao 32m trên Núi Nhỏ; dinh thự Bạch Dinh và chùa Thích Ca Phật Đài. Vũng Tàu không có mùa đông, do vậy các khu nghỉ mát có thể hoạt động quanh năm.\r\n', NULL, 20, 10420, 0, 1150, '2019-03-19 00:00:00', b'0'),
(18, 'Hội An', NULL, '2', '2', 'Du lịch Hội An hấp dẫn bởi khu phố cổ Hội An đẹp nên thơ. Hội An hiện nay đã được công nhận là đô thị loại III, trực thuộc tỉnh Quảng Nam. Hội An phía đông giáp biển Đông, phía tây giáp hai huyện Điện Bàn và Duy Xuyên, phía nam giáp huyện Duy Xuyên, phía bắc giáp huyện Điện Bàn, đều thuộc tỉnh Quảng Nam. \r\n\r\n\r\n\r\n', 'DỊCH VỤ BAO GỒM :\r\n1. Vận Chuyển :\r\n- Xe du lịch đời mới, hệ thống máy lạnh, lái xe kinh nghiệm.\r\n2. Vé tham quan:\r\n- Vé Ngũ Hành Sơn\r\n- Vé Hội An\r\n3. Ăn uống :\r\n- Ăn theo chương trình (1 bữa * 120.000/suất)\r\n4. Hướng dẫn viên :\r\n- Vui vẻ, nhiệt tình, hướng dẫn viên suốt hành trình.\r\n5. Bảo hiểm  :  \r\n- Trọn tour theo quy định của bảo hiểm Bảo Việt 10.000.000đ/vụ\r\n6. Nước Suối:\r\n- 500ml /người/ngày\r\nKHÔNG BAO GỒM:\r\n1. Ăn uống ngoài chương trình, điện thoại, giặt là, các chi phí cá nhân khác.\r\n2. Vé máy bay, tàu hỏa trong chương trình.\r\n3.  VAT.\r\nGIÁ TRẺ EM:\r\n1. Trẻ em từ 1 – 4 tuổi: miễn phí \r\n2. Trẻ em từ 5 – 10 tuổi tính 50% vé dịch vụ.\r\n3. Trẻ em từ 11 tuổi trở lên tính nhưng người lớn.\r\n', NULL, 21, 8010, 0, 9040, '2019-03-06 00:00:00', b'0'),
(19, 'Mũi Né', NULL, '2', '2', 'Mũi Né là một trong những bãi biển đẹp nhất Đông Nam Á với nước biển trong xanh và đồi cát rộng. Không chỉ nổi tiếng với những đồi cát trắng, Mũi Né còn gây ấn tượng với du khách bởi những rặng dừa xanh tốt trải dài theo bờ biển thành hình vòng cung. Những thân dừa cao vút, ngã mình ra bờ biển tạo nên một khung cảnh thơ mộng cho biển Mũi Né. Quý khách có thể ngồi dưới những hàng dừa xanh mát để tận hưởng cảm giác khoan khoái từ những cơn gió biển thổi lồng lộng với tour du lịch Mũi Né 2 ngày 1 đêm\r\nNổi bật:\r\n•	Tắm biển ở Hòn Rơm, Đồi Dương.\r\n•	Chinh phục đồi cát bay - suối Hồng.\r\n•	Mua đặc sản tại chợ Phan Thiết.\r\n•	Đi cáp treo tham quan núi Tà Cú.\r\n•	Chiêm ngưỡng Tượng phật nằm lớn nhất Việt Nam tại núi Tà Cú.\r\n\r\n', 'Dịch vụ bao gồm:\r\n•	Vận chuyển : Xe đời mới có máy lạnh tham quan theo chương trình tour.\r\n•	Tiêu chuẩn phòng : tivi, tủ lạnh, điện thoại, máy lạnh, nhà vệ sinh riêng máy nước nóng lạnh.\r\n•	Ăn uống : 02 bữa sáng, 02 bữa trưa và 01 bữa tối.\r\n•	Phí tham quan + hướng dẫn viên tiếng Việt.\r\n•	Khăn lạnh, nước lọc (1 khăn + 1 chai/ ngày). \r\n•	Khách được bảo hiểm du lịch trọn tour.\r\nDịch vụ không bao gồm:\r\n•	Các chi phí cá nhân ngoài chương trình.  \r\n•	Phí cáp treo, Tips, thuế VAT.\r\n\r\n', NULL, 12, 11111, 80, 12505, '2019-03-19 00:00:00', b'0'),
(20, 'Bà Nà', NULL, '3', '3', 'Là khu nghỉ dưỡng nằm trên đỉnh núi Chúa (thuộc xã Hòa Vang, cách biển Mỹ Khê 26km) được người Pháp xây từ đầu thế kỷ 20.\r\nThời người Pháp còn đô hộ Việt Nam, họ chọn Bà Nà để xây một trong những khu nghỉ dưỡng hàng đầu của họ ở Đông Dương (sánh ngang với Đà Lạt, Sapa, Vũng Tàu và cao nguyên Bokor ở Cambodia).\r\nSau năm 1946, ảnh hưởng của chiến tranh – Bà Nà Hill bị bỏ hoang. Mãi tới năm 1999 thành phố Đà Nẵng mới ký quyết định hồi sinh lại khu nghỉ dưỡng này.\r\nSo sánh với các khu nghỉ dưỡng trên cao khác ở Việt Nam như Sapa, Đà Lạt, Tam Đảo thì Bà Nà Hill vượt trội vì vừa có núi, lại gần biển. Công bằng mà nói Sun Group đã hồi sinh một khu du lịch tầm cỡ quốc tế ở Bà Nà Hill.\r\n\r\n', 'Ngày 1: Đà Nẵng - Bà Nà Hills\r\n08h00: Xe và HDV đón khách tại KHÁCH SẠN hoặc NHÀ RIÊNG. Khởi hành thăm quan khu du lịch Bà Nà Hills theo tuyến đường biển dài vòng quanh vịnh Đà Nẵng theo đường Nguyễn Tất Thành quý khách sẽ chiêm ngưỡng được vẻ đẹp của biển sự hùng vĩ của dãy núi Hải Vân sự uy nghi của bán đảo Sơn Trà như một bức bình phòng che chắn bão giông cho thành phố Đà Nẵng.\r\n09h00: Đặt chân đến chân núi Bà Nà tại đây đoàn sẽ tập trung, chụp hình, HDV sẽ đi làm thủ tục để nhận vé cáp treo cho du khách. HDV đưa đoàn lên cáp treo khởi hành lên đỉnh Bà Nà. Ngồi trong những carbin bằng kính chiêm ngưỡng toàn bộ cảnh đẹp hoang vu của núi rừng.\r\n09h30: Trải nghiệm tầu hoả leo núi thăm quan vườn hoa Le Jardin D’Amour, khu hầm rượu Debay thưởng thức các món rượu vang hảo hạng, khu làng Pháp, viếng thăm tượng phật thích ca, chùa linh ứng cùng các điểm tâm linh khác. Khách không muốn thăm quan có thể tách đoàn vô luôn Fantasy tham gia các trò chơi.\r\n12h30: Du khách dùng cơm trưa với thực đơn tự chọn tại nhà hàng Lavender tiêu chuẩn 4 sao với thực đơn buffet 36 món (nhà hàng có soup dành cho em bé), nghỉ ngơi thưởng thức các loại đồ uống tại Bà Nà.\r\n13h30: HDV sẽ đưa đoàn vào tham gia các trò chơi tại công viên trò chơi Fantasy Park với hơn 105 trò chơi hoàn toàn miễn phí, đặc biệt các trò chơi kỹ năng rất tốt cho tư du của bé.\r\n•	Phi công Skiver\r\n•	Công viên kỷ Jura\r\n•	Đua xe OutRun\r\n•	Cối xay gió\r\n•	Trò chơi kỹ năng\r\n•	Anh hùng cứu hỏa\r\n•	Nhà thám hiểm tý hon\r\n•	Rồng rắn lên mây\r\n•	Vòng đua tử thần 4D\r\n•	Miền tây hoang dã 5D\r\n•	Ngôi nhà kinh dị\r\n•	Cuộc du hành vào lòng đất\r\n•	Tháp rơi tự do\r\n•	Cùng nhiều trò chơi khác\r\n16h00: Khách về khách sạn nhận phòng nghỉ ngơi, tự do vui chơi và ngắm hoàng hôn trên đỉnh Bà Nà, dùng cơm tối tự túc và tham gia các hoạt động tập thể tại Bà Nà Hills về đêm.\r\nNgày 2: Bà Nà Hills - Đà Nẵng\r\nBuổi sáng: Quý khách dùng điểm tâm sáng tại nhà hàng khách sạn, thưởng thức trà & cafe miễn phí, tự do thăm quan và vui chơi tại khu du lịch Bà Nà Hills. Sau đó làm thủ tục trả phòng trước 12h00 xuống cáp treo xe đón khách về lại Đà Nẵng, tạm biệt và kết thúc chương trình!\r\nBao gồm\r\n•	Xe du lịch đời mới\r\n•	Hướng dẫn viên\r\n•	Nước suối trên xe & trong phòng\r\n•	Vé cáp treo & thăm quan\r\n•	Phòng Standard khách sạn French Mercure\r\n•	Ăn trưa ngày 1 và ăn sáng buffet ngày 2\r\n•	Bảo hiểm du lịch\r\nKhông bao gồm\r\n•	Vé tượng sáp\r\n•	Bữa tối ngày 1 và bữa trưa ngày 2 tại khách sạn\r\n•	Chi phí cá nhân ngoài chương trình\r\n•	Thuế VAT (10%)\r\n', NULL, 5, 12000, 0, 15412, '2019-03-16 00:00:00', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `MaSlider` int(11) NOT NULL,
  `UrlHinh` varchar(100) DEFAULT NULL,
  `LinkUrl` varchar(100) DEFAULT NULL,
  `Thutu` int(11) DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTin` int(11) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `TomTat` varchar(255) NOT NULL,
  `UrlHinh` varchar(255) NOT NULL,
  `MaLTT` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `LuotXem` int(11) DEFAULT '0',
  `NgayCapNhat` datetime DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`MaTin`, `TieuDe`, `TomTat`, `UrlHinh`, `MaLTT`, `NoiDung`, `LuotXem`, `NgayCapNhat`, `AnHien`) VALUES
(1, 'Du lịch trong nước', 'Khai quat cac dia diem du lich trong nuoc de khach hang co the lua chon de dang', 'imgs/download.jpg', 1, '\r\n\r\n\r\n', 100, '2019-03-20 00:00:00', b'0'),
(7, 'Chương trình khuyến mại xuân 2019 ưu đãi “khủng” lên đến 6,2 triệu đồng/khách', 'Tóm tắt các loại khuyển mãi', 'imgs/1.jpg\r\n', 5, 'Đã trở thành thông lệ để đón chào những sự kiện đặc sắc cuối năm và mở đầu cho một năm mới nhiều hành trình mới, Vietravel tung ra chương trình khuyến mại Xuân 2019 độc đáo và tạo dấu ấn đặc biệt trên thị trường du lịch Việt Nam. Với thông điệp “Du xuân ngày Tết - gắn kết yêu thương” chương trình khuyến mại diễn ra từ 15/11/2018 – 20/2/2019 là cơ hội tốt nhất từ trước đến nay để khách hàng trải nghiệm hàng trăm tour mới lạ, hấp dẫn cùng nhiều ưu đãi “khủng”. Đặc biệt, trong 4 ngày Vàng từ 15 – 18/11/2018 chính là tâm điểm của sự kiện mở mùa xuân 2019, Vietravel tung ra chương trình ưu đãi tour lên đến 6,2 triệu đồng/khách và cơ hội trúng 40 triệu đồng/khách.\r\nDu xuân ngày Tết - Gắn kết yêu thương”\r\n\r\nĐó chính là thông điệp của chương trình khuyến mại Xuân 2019 diễn ra từ 15/11/2018 – 20/2/2019 trên phạm vi toàn quốc, mang ý nghĩa mỗi chuyến đi cùng Vietravel sẽ một hành trình hạnh phúc, nhiều niềm vui và gắn kết mọi người với nhau. Ngày nay, để thay đổi không khí đón Tết, nhiều gia đình đã lựa chọn những chuyến du lịch cùng người thân, tạo thêm niềm hứng khởi trọn vẹn. Du xuân ngày Tết sẽ không chỉ là kỳ nghỉ sau một năm tất bật công việc, không chỉ là hành trình của những trải nghiệm và khám phá thú vị, mà trên hết đó còn là chuyến đi khởi đầu một năm mới hanh thông, tràn đầy năng lượng. Tết là mùa của đoàn viên, sum vầy, là khoảng thời gian mọi người thảnh thơi lên kế hoạch cho những chuyến du xuân gắn kết đầy ý nghĩa.\r\n\r\nLuôn chủ động tìm ra những hướng đi mới nhằm phục vụ nhu cầu đa dạng của khách hàng trong mùa cao điểm Tết, Vietravel giới thiệu hơn 100 bộ sản phẩm trong nước & 300 sản phẩm nước ngoài, đảm bảo tần suất khởi hành liên tục để khách hàng dễ dàng chọn lựa. Ngoài ra, Vietravel còn chuẩn bị chu đáo trong việc kết hợp với các đối tác cung cấp dịch vụ lớn, uy tín, mang đến khách hàng những trải nghiệm độc đáo với nhiều mức giá hấp dẫn. Chương trình khuyến mại Xuân 2019 dành tặng tất cả khách hàng trong 03 tháng xuân trọn vẹn với hàng loạt ưu đãi “khủng” có giá trị như sau:\r\n\r\n04 Ngày Vàng ưu đãi mở mùa xuân\r\n\r\nBắt đầu cho chuỗi sự kiện của chương trình Khuyến mại Xuân 2019, Vietravel đã tung ra ưu đãi đặc biệt 4 ngày vàng diễn ra từ 15 – 18/11/2018 nhân sự kiện Mở Mùa. Theo đó, phải kể đến ưu đãi hoàn tiền lên đến 3 triệu đồng theo giá trị thanh toán của khách hàng. Đây là chương trình đã nhận được sự hưởng ứng rất tốt từ khách hàng trong đợt khuyến mại Hè vừa qua:\r\n\r\n- Đối với các khách hàng đăng ký tour trong 4 ngày vàng từ 15 - 18/11/2018 cho các tour có ngày khởi hành từ 1/1 - 15/2/2019, và sau đó hoàn tất thanh toán 100% giá trị tour đến hết ngày 30/11/2018 sẽ nhận được ưu đãi hoàn tiền từ 500 ngàn đồng đến 3 triệu đồng tùy theo tổng giá trị tour khách đăng ký. (*)\r\n\r\n- Bên cạnh chương trình hoàn tiền, cũng từ ngày 15/11/2018 khi khách hàng hoàn tất thanh toán tour, còn được nhận thêm rất nhiều ưu đãi giảm giá từ các chương trình:\r\n\r\n• Giảm giá nhóm đến 800 ngàn đồng/khách\r\n\r\nMua tour theo nhóm từ 2 khách trở, khách hàng sẽ được mức giảm lên đến 800 ngàn đồng/khách (tùy vào tour đăng ký và số lượng khách trong nhóm).\r\n\r\nĐặc biệt với các khách hàng đăng ký tour charter Fukushima và các tuyến Âu - Úc - Mỹ - Canada - New Zealand khi đăng ký tour càng sớm, còn được ưu đãi nhân hệ số tháng kể từ thời điểm đóng cọc đến lúc khởi hành, áp dụng cho các tour có ngày khởi hành từ tháng 1/2019.\r\n\r\n• Ưu đãi thẻ Thành viên Vietravel lên đến 1,5 triệu đồng/khách\r\n\r\nKhách hàng sở hữu thẻ Thành viên Vietravel sẽ được giảm đến 1,5 triệu đồng (tùy vào từng hạng thẻ và tour đăng ký). (*)\r\n\r\n(*) Các Chương trình giảm giá của Vietravel có thể áp dụng đồng thời giữa một số chương trình với nhau. Áp dụng 100% mức giảm với dòng tour cao cấp, dòng tour tiêu chuẩn, 50% mức giảm cho tour tiết kiệm và không áp dụng với tour giá sốc/giờ chót/mua ngay/tour giảm giá online…\r\n\r\n• Cơ hội trúng thưởng Voucher Du lịch Vietravel trị giá 40 triệu đồng\r\n\r\nBên cạnh hưởng nhiều ưu đãi giảm giá trực tiếp, khách hàng còn có cơ hội trúng thưởng 01 Voucher du lịch hấp dẫn trị giá 40 triệu đồng dành cho nhóm khách hàng có tổng giá trị thanh toán cao nhất trong 4 ngày vàng diễn ra sự kiện. Đây là cơ hội tuyệt vời để khách hàng may mắn sở hữu thêm những hành trình du lịch miễn phí cùng Vietravel.\r\n\r\n23 Ngày Vàng - Ngập tràn ưu đãi\r\n\r\nNhằm tri ân quý khách hàng nhân dịp kỷ niệm 23 năm thành lập, Vietravel tung ra chương trình khuyến mại giai đoạn 2 trong chuỗi khuyến mại Xuân 2019 với thông điệp “23 Ngày Vàng - Ngập tràn ưu đãi” diễn ra từ 28/11 – hết ngày 20/12/2018 nhằm cảm ơn khách hàng đã đồng hành cùng thương hiệu Vietravel với các hạng mục như sau:\r\n\r\n- Nhân Đôi mức giảm giá nhóm đến 1,6 triệu đồng/khách\r\n\r\nVietravel sẽ đặc biệt nhân đôi mức giảm ở một số dòng tour mà Vietravel sẽ “bật mí” mang đến cho khách hàng ở lần công bố tiếp theo của chương trình.\r\n\r\n- Ưu đãi thẻ Thành viên Vietravel lên đến 1,5 triệu đồng/khách\r\n\r\nTương tự như chương trình ưu đãi dành cho khách hàng sở hữu thẻ Vietravel trong thời gian vừa qua.\r\n\r\n\r\n', 2000, NULL, b'0'),
(8, 'Nhiều ưu đãi lớn mùa du lịch hè', 'Khuyến mãi dành riêng cho dịp hè', 'imgs/2.jpg\r\n', 5, 'Các chương trình ưu đãi xuyên suốt mùa hè:\r\nĐặc biệt, mỗi tuần travel tour còn lựa chọn mở bán 1 tuyến sản phẩm giá tốt đến với khách hàng. Cụ thể, từ 12 - 19/5 là tuần lễ du lịch Âu - Úc - Mỹ. Theo đó, khách hàng đăng ký tour Mỹ sẽ được tặng lệ phí Visa cho bố/mẹ đang có con du học Mỹ. Khách hàng đăng ký tour châu Âu hoặc Úc sẽ được giảm ngay 2 triệu/ khách đối với tour khởi hành vào tháng 7, 8, 9/2018. Tuần từ 21 - 26/5 là tuần lễ du lịch Nhật - Hàn với mức giá ưu đãi chỉ từ 23,9 triệu cho tour du lịch Nhật Bản và tặng ngay 1 vé máy bay khứ hồi Bắc Kinh hoặc Trương Gia Giới (KH từ t6 - t8) cho nhóm 4 khách đăng ký tour du lịch Hàn Quốc.\r\nTuần lễ du lịch Trung Quốc diễn ra từ 28/5 - 2/6 với nhiều tuyến mới được khai mở như Trùng Khánh - Tây Tạng, Trùng Khánh - Xích Thủy - Vũ Long, Trương Gia Giới - khách sạn 4 sao, Thạch Sơn - Thượng Hải… áp dụng khuyến mại giảm ngay từ 500.000đ - 1.000.000đ/khách khi đăng ký trong tuần. Thêm vào đó, tuyến Bắc Kinh - Vạn Lý Trường Thành - Đường bay thẳng mới China Air còn có mức giá ưu đãi chỉ từ 8,99 - 9,99 triệu cho hành trình 4 - 5 ngày (giá thông thường là 11,5 - 12,5 triệu). \r\n\r\nMang chủ đề du lịch biển và Phòng nghỉ dưỡng cao cấp, tuần từ 4 - 12/6 sẽ mang đến cho du khách mức giảm ngay 500.000đ/khách cho mọi tour biển đường bay và giảm ngay 5% cho các voucher phòng khách sạn, resort thuộc hệ thống Vinpearl, FLC, Cocobay, Sol Beach, Pao’s Sapa...\r\nBên cạnh các chương trình ưu đãi giảm giá hoặc hoàn tiền trực tiếp như trên, Vietravel còn hợp tác cùng các ngân hàng triển khai chương trình ưu đãi tài chính mang thêm nhiều lợi ích cho khách hàng. Cụ thể, với các giao dịch từ 5 triệu trở lên, khách hàng thanh toán bằng thẻ MasterCard sẽ được cào trúng ngay 1 trong các phần quà giá trị như túi du lịch, loa di động, sạc dự phòng, Tivi 43”... Tặng ngay vali cao cấp khi khách hàng mở thẻ đồng thương hiệu Vietravel - Vietinbank, đồng thời được hoàn tiền lên đến 3 triệu/ chủ thẻ khi mua tour tại travel tour\r\n', 1000, NULL, b'0'),
(9, 'Kinh nghiệm du lịch Singapore\r\n\r\n\r\n', '', 'imgs/3.jpg\r\n', 6, 'Singapore bao gồm một đảo chính với 63 đảo nhỏ xung quanh, hòn đảo chính chiếm diện tích 682 km2. Tuy hòn đảo có diện tích nhỏ bé nhưng lại là một quốc gia có nền kinh tế phát triển. Chỉ trong vòng 150 năm, Singapore đã trở thành một trung tâm thương mại và công nghiệp thịnh vượng. Vai trò là một trung tâm xuất nhập khẩu trước đây của quốc gia này đã và đang dần dần được thay thế bởi nền kinh tế sản xuất.\r\nSơ nét về Singapore\r\n- Đất nước Singapore có một hải cảng tấp nập nhất trên thế giới với hơn 600 tuyến đường biển, một trong những trung tâm lọc dầu và phân phối dầu của thế giới, nơi cung cấp các mặt hàng linh kiện điện tử và là quốc gia đứng đầu về công nghiệp chế tạo và sửa chữa tàu biển. Bên cạnh đó, quốc gia này còn là một trong những trung tâm tài chính quan trọng nhất Châu Á với sự hiện diện của hơn 130 ngân hàng. Cùng với một mạng lưới thông tin liên lạc tân tiến phủ sóng khắp thế giới qua các hệ thống vệ tinh, điện báo, cũng như mạng điện thoại hoạt động 24/24, Singapore là địa điểm kinh doanh vô cùng thuận tiện.\r\n- Năm 2012, dân số Singapore là 5,312 triệu người, trong đó 3,285 triệu (62%) là công dân Singapore và những người còn lại (38%) là những cư dân thường trú hoặc công nhân/học sinh ngoại quốc. Có một triệu cư dân thường trú tại Singapore vào năm 2012. Số cư dân này không tính đến 11 triệu du khách tạm thời đến thăm quan Singapore mỗi năm.\r\n- Tuổi trung bình của người Singapore là 82 và quy mô hộ gia đình trung bình là 3,5 người. Mức thu nhập bình quân của người dân Singapore là 44.352,55 USD/năm tiền lương. Mức lương này được xếp vào top đầu của thế giới.\r\n- Năm 2009, cơ quan điều tra dân số của chính phủ báo cáo rằng 74,2% cư dân là người gốc Hoa, 13,4% là người gốc Mã Lai, và 9,2% là người gốc Ấn Độ, người Âu-Á và các nhóm khác chiếm 3,2%.\r\n- Vị trí chiến lược, cơ sở hạ tầng hoàn hảo, những nét văn hoá tương phản đầy hấp dẫn cùng những điểm tham quan thu hút du khách là những yếu tố góp phần đem đến sự thành công cho Singapore và biến quốc gia này trở thành điểm đến hàng đầu cả trong lĩnh vực thương mại lẫn du lịch.\r\nKhí hậu du lịch\r\n- Khí hậu Singapore ấm và ẩm, nhiệt độ dao động từ 23 đến 31 độ C. Thời tiết này rất lý tưởng với những người thích tắm nắng, bơi lội, đua thuyền và chơi các môn thể thao dưới nước khác. Những người không thích khí hậu nhiệt đới cũng tìm thấy sự mát mẻ ở hầu hết các cửa hàng, khách sạn, nhà hàng, văn phòng có điều hoà nhiệt độ. Singapore có mưa quanh năm, nhưng thường mưa nhiều từ tháng 11 đến tháng 1. Mưa thường bất ngờ và nặng hạt nhưng nhanh tạnh.\r\n- Thời điểm du lịch cao điểm của Singapore rơi vào từ tháng 12 đến tháng 6, đông nhất là vào đầu tháng 12 kéo dài đến năm mới, tức là khoảng tháng 1, tháng 2. Nếu quý khách muốn đi du lịch với giá rẻ thì nên đi vào tháng 7 hoặc tháng 8.\r\nĐi đến Singapore như thế nào ?\r\nHiện tại có rất nhiều chuyến bay từ Việt Nam đến Singapore, trong đó có các hàng hàng không lớn và các hãng hàng không giá rẻ như: Vietnam Airlines, Tiger Air, Jetstar Asia, VietJet, SilkAir, Jetstar Pacific Airlines, Singapore Airlines …\r\nDi chuyển tại Singapore\r\n- Singapore có hệ thống phương tiện giao thông công cộng rất phát triển tiện lợi và dễ dàng đi đến khắp mọi nơi trong thành phố, đặc biệt là hệ thống tàu điện ngầm MTR và xe Bus. Du khách có thể mua vé đi lẻ từng chặng hoặc mua theo gói để sử dụng nhiều lần tùy theo nhu cầu.\r\n- Taxi: có thể đón taxi tại khách sạn, trạm đón taxi hoặc đón xe dọc đường. Tuy nhiên trong giờ cao điểm bạn nên gọi trước và thông báo tên, điểm đón vì tài xế sẽ xác nhận thông tin này khi đón bạn.\r\nLưu ý: Giao thông ở Singapore theo chiều tay lái nghịch (bên trái), vì thế cần lưu ý khi đi bộ, băng qua đường, hoặc khi lên xuống xe Taxi và xe buýt. Quý khách nhớ tuyệt đối tuân theo Luật giao thông.\r\nĐiểm tham quan du lịch\r\nMặc du là một đảo quốc nhỏ bé nhưng Singpore luôn là điểm đến hấp dẩn du khách gần xa bởi các công trình nhân tạo độc đáo và các khu vui chơi giải trí đẳng cấp quốc tế. khi đến Singapore, du khách không thể không ghé qua: Đảo Sentosa, Công viên đại dương (Underwaterworld); Tháp Tiger Sky (Tiger Sky Tower); Tượng sư tử mình cá (Merlion Park); Công viên bướm và vương quốc côn trùng (Butterfly Park & Insect Kingdom); Nhạc nước Sentosa; Vườn thú quốc gia Singapore (Singapore Zoo); Công viên thú đêm Night Safari; Vườn chim Jurong (Jurong Bird Park); Bảo tàng nghệ thuật Singapore (Singapore Art Museum); Công viên nước (Wild Wild Wet); Khu giải trí Universial Studios; Vòng xoay 3600; Tòa nhà Marina Bay Sands; Khu Clarke Quay; khu Vườn thực vật (Garden by the Bay); Khu Little India...\r\nPhong tục tập quán\r\n- Tự hào với sự hòa hợp của cả 3 nền văn hóa lớn nhất Châu Á là Ấn giáo, Phật giáo và Hồi giáo, những cộng đồng người Ấn, người Hoa và người Malay tại Singapre vẫn hàng năm tổ chức những lễ hội tôn giáo mang đậm màu sắc văn hóa của mỗi sắc tộc, đó là Tết Trung Thu (từ 8 đến 30/9), Lễ hội Hari Raya Aidilfitri (từ 8/9 đến 21/10), và Lễ hội Deepavali (từ 12/10 đến 18/11).\r\n- Khi ở Singapore, hãy cố gắng dùng tay phải trong các giao dịch xã hội, ví dụ như bắt tay hoặc tặng hoa, quà. Vởi vì trong xã hội Ấn Độ và Hồi giáo, tay trái chỉ được dùng khi đi vệ sinh. Nên nhớ rằng không chỉ dùng tay phải khi ăn uống hay tặng quà, mà còn với tất cả mọi cử chỉ, đặc biệt là khi cần chỉ trỏ cái gì đó.\r\n- Hãy tháo bỏ giày dép trước khi bước vào nhà riêng hoặc nơi thờ cúng (trừ nhà thờ và giáo đường Do thái).\r\n- Ở hầu hết mọi nơi, mọi người đều bắt tay khi gặp gỡ. Nhưng hãy nhớ rằng phụ nữ Hồi giáo không được phép chạm vào đàn ông trừ khi đó là họ hàng thân thích hoặc chồng họ. Thay vì bắt tay, chỉ cần mỉm cười và gật đầu là đủ.\r\n- Người Singapore thường trao đổi danh thiếp hãy nhớ nhận thiếp bằng cả 2 tay và luôn coi trọng nó, đừng bỏ tọt danh thiếp vào túi áo mà chưa xem gì cả.\r\nLễ hội truyền thống\r\n- Tháng 9, tháng 10 là thời điểm cộng đồng người Ấn, Malaysia và Hoa tại Singapore đồng thời đón chào ba lễ hội văn hóa lớn là Lễ hội Deepavali, lễ hội Hari Raya và tết Trung Thu. Đây được coi là một trong những sự kiện được đón chờ nhất không chỉ với cộng đồng người Malaysia theo đạo Hồi mà còn với người dân Singapore và du khách nói chung.\r\n- Tháng 11 đến tháng 01 là thời điểm diễn ra Lễ hội “Giáng sinh miền nhiệt đới” rực rỡ sắc màu. Đây là lễ hội thường niên được tổ chức tại Singapore.\r\n- Tết Nguyên đán ở Singapore nhộn nhịp với hàng loạt lễ hội mang đậm phong cách phương Tây xen lẫn nét văn hóa truyền thống của người Hoa. Lễ hội sông Hồng Bao Singapore trưng bày những nét đặc sắc nhất của văn hóa người Hoa, đã diễn ra thường niên dịp Tết nguyên đán từ năm 1987. Đại lộ Orchard trong những ngày này sẽ là tâm điểm của Lễ hội Chingay, giới thiệu di sản đa văn hoá của thành phố. Du khách có dịp ngắm những chiếc xe diễu hành và màn trình diễn mang đậm màu sắc văn hoá. Cùng với các xe diễu hành, du khách có thể chứng kiến các màn trình diễn thổi lửa và múa lụa đầy màu sắc bởi vũ đoàn Windmill, xếp người thành hình tháp của vũ công đến từ Thái Lan.\r\n- Thaipusam là một lễ hội đặc biệt của Singapore, diễn ra vào khoảng tháng 2. Sự kiện thường niên này được tổ chức nhằm tỏ lòng tôn kính với vị thần của người Hindu Subramaniam (Chúa tể Murugan). Đây là ngày mọi người cầu nguyện và tạ ơn vì đã được ban cho những ước nguyện và sức khỏe-\r\nLưu trú\r\nKhách sạn ở Singapore có mức giá phòng cao hơn một số nước Châu Á trong khu vực và có diện tích phòng nhỏ như ở Hồng Kông vì ở Singapore giá đất rất đắt nên các khách sạn hay nhà ở thường được xây nhiều tầng với diện tích phòng khá nhỏ. Tuy nhiên trong phòng được trang bị tiện nghi đầy đủ và sang trọng. Các khách sạn có giá rẻ thường nằm ở xa trung tâm và khu mua sắm, các khu Tiểu Ấn, khu phố Hoa là nơi tập trung nhiều loại khách sạn cho du khách chọn lựa. Du khách có thể dễ dàng chọn lựa và đặt phòng tại Singapore thông qua mạng trực tuyến.\r\nTiền tệ\r\n- Đơn vị tiền tệ của Singapore là đồng Đôla Singapore (SGD) và có các mệnh giá là:\r\nTiền giấy: 2, 5, 10, 20, 50, 100, 1.000 và 10.000 SGD.\r\nTiền xu: 5, 10, 20, 50 cent và 1 SGD\r\n- Khi mua hàng hóa, đa số các cửa hàng chỉ sử dụng tiền bản địa. Vì vậy, Quý khách cần mang theo đô la Mỹ để đổi.\r\n- Hoàn thuế GST: khoản thuế hàng hóa và dịch vụ (GST) 5% được áp dụng ở Singapore. Khi mua sắm hàng tại Singapore, bạn có thể hoàn lại tiền thuế GST mà bạn trả cho các hàng hóa đã mua. Tờ khai hoàn thuế phải được Hải quan tại sân bay Changi xác nhận trước khi bạn khởi hành. Việc hoàn thuế không áp dụng cho du khách đi bằng đường bộ hoặc đường thủy. Số tiền được hoàn sẽ là tiền thuế trừ đi phí hành chính. Bạn nhớ kiểm tra với người bán xem có được hoàn thuế không trước khi mua hàng. Có hai công ty hoàn thuế ở Singapore là Global Refund và Premier Tax Free. Các cửa hàng bán lẻ không thuộc Global Refund hay Premier Tax Free thì có cách hoàn thuế GST riêng. Bạn được khuyên nên hỏi người bán về số tiền tối thiểu hợp lệ để được hoàn thuế vì mỗi cửa hàng có quy định khác nhau.\r\n- Ngân phiếu du lịch / Thẻ tín dụng: Hầu hết các cửa hàng đều chấp nhận những thẻ tín dụng và thẻ thanh toán quốc tế chính. Ngân phiếu du lịch bằng Đô la Mỹ có thể qui đổi thành tiền mặt tại bất kỳ ngân hàng địa phương hoặc điểm thu đổi ngoại tệ nào (bạn cần xuất trình hộ chiếu).\r\nẨm thực\r\n- Singapore là một quốc gia đa sắc tộc với nhiều nền văn hóa khác nhau như Trung Quốc, Mã Lai, Ấn Độ. Sự pha trộn về văn hóa dẫn đến nét phong phú về mặt ẩm thực. Thêm vào đó người dân Singapore đam mê thú vui ăn uống, hầu như ở mọi góc phố trên đảo quốc này, bạn sẽ tìm thấy rất nhiều các loại món ăn, dù nóng hay nguội, vào bất cứ giờ nào trong ngày hay đêm.\r\n- Trong muôn vàn những món ngon vật lạ mà du khách có cơ hội thưởng thức tại phố ẩm thực Orchard thì cua biển vẫn là một loại hải sản chiếm vị trí độc tôn với món cua rang ớt rất nổi tiếng. Ở những khu ăn uống bình dân, hai loại đồ uống không thể bỏ qua là teh-tarik (từ trà) và coffee-tarik (từ cà phê). Còn về đồ ăn thì đó là các món sa-tế, cơm gà Hải Nam, laksa (mì ăn với cà-ri nước dừa và tôm, trứng, sò, thịt gà), roti prata và char kuay teow (mì sợi trắng xào hắc xì dầu, giá đỗ, chả cá, sò và lạp xưởng). Ngoài ra còn có các món ăn khác cũng không kém phần hấp dẫn như: Cơm gà Hải Nam, Roti Prata, canh sườn heo Bak Kut The, hủ tiếu xào Char Kway Teow, thịt nướng xiêng Satay, bánh nướng cà rốt… rất hợp khẩu vị và ngon tuyệt dành cho du khách Việt Nam.\r\n- Phần lớn người dân Singapore có những khu ẩm thực và các quán ăn ưa chuộng của riêng họ, một số khu quen thuộc như Bugis, Lau Pa Sat, khu ẩm thực China Town Clarke Quay, phố ẩm thực Scotts Picnic, làng ăn uống thuộc trung tâm mua sắm Takashimaya, phố ẩm thực tại Quảng trường Trung Hoa và Kopitiam.và Chợ Maxwell Road. Ngoài ra, bạn sẽ còn tìm thấy nhiều quán ăn nằm lẫn trong các khu vực dân cư, rất thú vị để khám phá.\r\nMua sắm\r\nSingapore nổi tiếng là thiên đường mua sắm Châu Á với nhiều trung tâm mua sắm lớn như các trung tâm thương mại ở Đại lộ Orchard, Vịnh Marina và khu Bugis - nơi bạn có thể thỏa thích lựa chọn giữa vô vàn các nhãn hiệu thời trang danh tiếng hay ghé qua các khu sắc tộc ở Chinatown, Little India hay Kampong Glam - nơi bạn sẽ bị đắm chìm với âm thanh và màu sắc rộn ràng. Hay để có những trải nghiệm mua sắm bên sông, hãy đến VivoCity - trung tâm mua sắm sành điệu với hơn 350 cửa hàng bán lẻ & lớn nhất Singapore được thiết kế bởi kiến trúc sư Nhật tài ba Toyo Ito.\r\nNếu đến Singapore vào dịp giảm giá từ tháng 5 đến tháng 7 hàng năm, bạn sẽ tìm được những món hàng với giá rẻ bất ngờ (thậm chí có những hàng hoá được giảm giá với mức kỷ lục là 90%) và những chương trình rút thăm may mắn với giá trị cao vào đúng nửa đêm, lần lượt ở từng trung tâm thương mại và siêu thị.\r\nNhững điều cần lưu ý khi du lịch\r\n- Đối với du khách Việt Nam đi du lịch đến Singapore được miễn thị thực\r\n- Giờ ở Singapore đi trước giờ Việt Nam một tiếng (GMT 8+)\r\n- Điện thoại: Hầu hết du khách có thể dùng điện thoại ngay tại phòng của các khách sạn cùng bảng hướng dẫn sử dụng. Tuy nhiên, Quý khách không nên sử dụng điện thoại tại khách sạn vì giá thành rất cao. Cách rẻ hơn là Quý khách nên mua thẻ gọi trả tiền trước đề sử dụng gọi đi quốc tế hay gọi về Việt Nam. Gọi điện thoại ở Singapore: (0065) + số điện thoại.\r\n- Điện ở Singapore sử dụng điện thế 220 ~ 240 volt.\r\n- Hút thuốc bị cấm tại các nơi công cộng, các nhà hàng, quán karaoke, quán bar… Ngoài ra, việc xả rác nơi cộng cộng sẽ bị phạt rất nặng, người xả rác bừa bãi lần đầu tiên sẽ bị phạt tối đa là 1.000 đôla Singapore, tái phạm thì mức phạt sẽ tăng lên 2.000 - 5.000 đôla và phải lao động công ích.\r\nQui định về Hàng không và Hải quan Singapore\r\n- Khi nhập cảnh vào Singapore, nếu Quý khách đem theo rượu bia và thuốc lá sẽ bị đánh thuế rất cao.\r\n- Singapore nghiêm cấm những mặt hàng sau: pháo, tiền giấy và tiền xu đồ chơi, kẹo cao su, sách báo văn hoá phẩm có nội dung không lành mạnh, các loại bật lửa có hình khẩu súng, cũng như các văn hoá phẩm sao chép trộm. Đặc biệt Singapore sẽ áp dụng hình phạt tử hình với những ai mang hơn 15g hêroin, 30g morphine hay cocaine, 1.2kg thuốc phiện, 500g cần sa, 250g methamphetamine.\r\n- Quý khách vui lòng không mang rượu/ trứng/đồ hộp. Hải sản < 5kg, Thức ăn chế biến < 5kg, cây trồng > 3kg, hạt giống < 250g, cá cảnh được phép mang không quá 5 con trong 5 lít nước.\r\n', 1500, NULL, b'0'),
(10, 'Kinh nghiệm du lịch Hàn Quốc\r\n\r\n\r\n', '', 'imgs/4.jpg\r\n', 6, 'Hàn Quốc với những câu chuyện tình yêu lãng mạn trong các tác phẩm điện ảnh đã làm hàng triệu khán giả truyền hình nhuốm lệ; những vũ khúc cuồng nhiệt trong các MV ca nhạc khiến giới trẻ chao đảo, ngả nghiêng; những khu vui chơi hiện đại giữa khung cảnh thiên nhiên tuyệt đẹp cùng dư vị ẩm thực độc đáo níu chân du khách.\r\nKinh nghiệm du lịch Hàn Quốc\r\nHàn Quốc - xứ sở kimchi là nơi du lịch với cảnh đẹp và văn hóa tuyệt vời. Không xa lạ với du khách chính là Đảo Naomi, nơi quay bối cảnh phim Hàn Quốc \"Bản tình ca mùa đông” và đảo ngọc tình yêu Jeju ngọt ngào cho các đôi uyên ương. Đặc biệt nhất là thủ đô Seoul với những cung điện Hoàng gia lộng lẫy, khu chợ Dong Dae Moon, Nam Dae Moon nhộn nhịp, dễ dàng mua nhân sâm, mỹ phẩm và thời trang.\r\nSơ nét về Hàn Quốc\r\nĐất nước nằm ở phía dưới bán đảo Triều Tiên; ba bề tiếp giáp biển - dễ dàng thông thương với Nhật Bản ở phía đông và nam, Trung Quốc ở phía tây. Hàn Quốc có diện tích khoảng 99.720 kmv, dân số hơn 49,1 triệu người. Có 24% dân số theo đạo Tin Lành, 7,6% theo đạo Công giáo La Mã, 24,2% theo đạo Phật; và 43,4% theo tín ngưỡng cổ truyền thờ cúng tổ tiên.\r\nThủ đô đặt tại Seoul (dân số hơn 9,77 triệu người). Các thành phố lớn khác là Busan (hơn 3,21 triệu người), Incheon (gần 2,7 triệu người), Daegu (hơn 2,24 triệu người), Daejon (hơn 1,56 triệu người), Gwangju (hơn 1,53 triệu người).\r\nNgôn ngữ được sử dụng cả nước là tiếng Hàn.\r\nKhí hậu du lịch\r\nHàn Quốc có khí hậu ôn đới mang tính chất lục địa, có bốn mùa rõ rệt. Mùa Hạ nóng và ẩm, từ cuối tháng Sáu đến đầu tháng Chín nhiệt độ trung bình khoảng 25oC - có lúc cao nhất là hơn 38oC, mưa nhiều và nặng hạt. Mùa Đông từ đầu tháng Mười Hai đến hết tháng Hai năm sau nhiệt độ trung bình dưới 0oC, có tuyết rơi gây giá lạnh. Thời tiết dễ chịu nhất là vào mùa Xuân (tháng Ba đến tháng Năm) và mùa Thu (tháng Chín đến tháng Mười Một), bầu trời xanh trong, nhiệt độ không quá thấp, thỉnh thoảng có mưa rào.\r\nCực nam của Hàn Quốc là đảo Jeju (cách bờ khoảng 90km) thì có khí hậu cận nhiệt đới mang tính chất hải dương, không quá lạnh vào mùa đông và không quá nóng vào mùa Hạ.\r\nCó thể du lịch đến Hàn Quốc suốt bốn mùa. Mùa Đông đi trượt tuyết, mùa Xuân ngắm hoa nở và cây cối đâm chồi nẩy lộc, mùa Hạ cảnh vật cây cối xanh tươi, mùa Thu ngắm bức tranh thiên nhiên đủ màu sắc của lá vàng, lá đỏ.\r\nĐi đến Hàn Quốc\r\nMỗi ngày có nhiều chuyến bay từ Hà Nội, thành phố Hồ Chí Minh, và Đà Nẵng, đến Incheon (phi trường quốc tế cách thủ đô Seoul 45 phút ô tô, hay tàu điện hiện đại). Các hãng hàng không hiện có chuyến bay thẳng đến Hàn Quốc là Vietnam Airlines, Vietjet Air, Korean Air, và Asiana Airline.\r\nNgoài ra, Vietnam Airlines còn có chuyến bay mỗi ngày đến Busan (thành phố cảng biển phía nam Hàn Quốc).\r\n\r\nDi chuyển tại Hàn Quốc\r\nPhương tiện giao thông công cộng tại Hàn Quốc rất phát triển, liên kết lẫn nhau, tiện lợi và dễ sử dụng, thuận tiện đối với du khách nước ngoài muốn trải nghiệm Hàn Quốc theo cách của riêng mình.\r\nTại các thành phố lớn, bên cạnh hệ thống tàu điện, xe buýt phủ rộng khắp nơi, nối kết các trung tâm dân cư và các điểm tham quan, còn có hệ thống taxi quốc tế với đội ngũ lái xe giỏi ngoại ngữ. Hoặc du khách có thể thuê xe tự lái (yêu cầu phải có bằng lái xe quốc tế) để du ngoạn khắp nơi.\r\nĐể đi lại giữa các thành phố lớn, du khách có thể sử dụng hệ thống xe buýt liên tỉnh, hay hệ thống tàu điện cao tốc KTX hiện đại (nối liền Seoul - Busan), vận hành với vận tốc hơn 400km/giờ mà vẫn rất êm ái và đúng giờ.\r\nCòn có mạng lưới đường bay quốc nội rộng khắp, đặc biệt để đi từ các thành phố trong đất liền để đến với đảo Jeju.\r\nNhững điểm tham quan du lịch không thể bỏ qua\r\nPhía bắc, dạo quanh Seoul để được trầm lắng với những cung điện đài các xưa (Gyeongbokgung); hòa cùng nhịp sống hiện đại sôi động với những chương trình biểu diễn nghệ thuật đương đại (Nanta show, Drum Cat show); cùng gia đình vui thú tại các công viên giải trí hiện đại (Lotte World, Everland) và thưởng ngoạn cảnh đẹp thiên nhiên (công viên Namsan, công viên sông Hàn, đảo Nami). Với du khách yêu thích văn hóa lịch sử, không thể bỏ qua hàng loạt các bảo tàng mà nổi bật là bảo tàng Dân gian Quốc gia, bảo tàng Cuộc chiến Triều Tiên.\r\nPhía nam, nổi tiếng với hòn đảo tình yêu Jeju, cách Seoul 45 đường bay. Hòn đảo được hình thành bởi dung nham núi lửa tạo nên những thắng cảnh kỳ thú được UNESCO ghi nhận. Leo lên ngắm miệng núi lửa Seongsan trong thời tiết mát lạnh thật không còn gì tuyệt bằng, hay lang thang dạo bước thăm dòng thác Cheonjeyeon để ngắm nhìn nơi những nàng tiên trên trời thường hạ giới xuống, vào thăm những ngôi làng bằng đá với những người dân Jeju chân chất, thiệt thà. Không thể thiếu con đường kỳ bí - điều bí mật làm bao du khách ngạc nhiên khi mà ô tô tự chạy ngược lên dốc. Và lãng mạn hơn hết, đó là công viên tình yêu dành cho những cặp đôi du khách đang yêu, và chuẩn bị yêu.\r\nLễ hội nổi bật\r\nBên cạnh những lễ hội truyền thống Đông Á, như Tết Nguyên Đán, Tết Đoan Ngọ, Tết Trung Thu... đất nước Hàn Quốc còn có hàng loạt các lễ hội khác được tổ chức quanh năm, như lễ hội Hoa Anh Đào, hoa Tulip vào mùa Xuân, lễ hội Kim Chi vào mùa Thu, v.v.\r\nLưu trú\r\nHàn Quốc có đa dạng các hình thức lưu trú giành cho du khách quốc tế. Từ hệ thống khách sạn, khu nghỉ dưỡng đẳng cấp quốc tế (được đánh giá theo tiêu chuẩn 1 - 5 hoa mai, tương đương 1 - 5 sao quốc tế), đến hình thức lưu trú homestay (Han-ok stay), hay temple stay (lưu trú tại chùa và học thiền) dành cho những du khách thích trải nghiệm nền văn hóa đặc sắc, rất riêng Hàn Quốc, hay hình thức lưu trú giá rẻ (youth hostels, motels, guest houses) đạt chuẩn đón khách quốc tế.\r\nẨm thực\r\nMỗi bữa ăn Hàn Quốc không thể thiếu kim chi, món gia vị được chế biến từ cải thảo lên men. Khẩu vị Hàn Quốc mang tính hỗn hợp, không quá mặn, không quá nhạt, không quá cay; khẩu phần mang tính hài hòa giữa chất đạm, tinh bột, chất xơ từ rau củ, và rất ít chất béo.\r\nNướng là kiểu chế biến món ăn được yêu thích nhất, không chỉ người dân Hàn Quốc mà cả du khách nước ngoài.\r\nTiền tệ\r\nTiền địa phương là WON, có tỷ giá khoảng 1USD ~ 1.100KRW (1 KRW ~ 20 VNĐ). Du khách có thể dễ dàng đổi tiền từ USD sang Won tại các quầy đổi tiền có ở khắp các trung tâm mua sắm, hay chợ, sân bay.\r\nCác loại thẻ thanh toán quốc tế được chấp nhận sử dụng rộng rãi.\r\n\r\nQuà\r\nĐến Hàn Quốc, không thể không nhắc đến sản vật nổi bật nhất được thiên nhiên ban tặng cho Hàn Quốc, có một không hay trên thế giới, chính là nhân sâm và các loại cây cỏ làm thuốc, như nấm linh chi, nấm đông trùng hạ thảo, hạt bạch quả... được cả nhân loại biết đến từ ngàn năm qua, hiện vẫn được sử dụng rộng rãi trong đông y cổ truyền lẫn trong tây y hiên đại.\r\nBước vào thế kỷ XXI, nền kinh tế sản xuất hàng hóa của Hàn Quốc lại thêm nổi tiếng với những sản phẩm đạt chuẩn cao cấp mang tầm quốc tế. Đa dạng chủng loại và phong phú loại hàng, như đồ điện tử gia dụng, điện gia dụng, đồ thời trang (quần áo, giày dép, túi xách, trang phụ kiện...), hàng lưu niệm văn hóa Hàn Quốc, v.v.\r\nChuẩn bị cho chuyến du lịch\r\nCần phải xin visa trước khi đến Hàn Quốc. Chuẩn bị kỹ trang phục thích hợp theo mùa, đặc biệt trong mùa đông lạnh.\r\nNhững điều cần lưu ý\r\nKhông được đem vào Hàn Quốc thịt và các sản phẩm chế biến từ thịt. Không được mang vào Hàn Quốc các loại rau, quả, củ nếu không khai báo và chưa được kiểm dịch, chiếu xạ.\r\nKhi mua sắm tại các trung tâm thương mại lớn, du khách nước ngoài được hoàn lại thuế giá trị gia tăng (7%) khi mang hàng đó xuất cảnh khỏi Hàn Quốc.\r\nViệc trả giá (mặc cả) không được đánh giá cao, ngay cả khi du khách mua sắm tại các khu chợ ngoài trời. Người mua có thể được thêm quà tặng từ người bán nếu có thiện chí.\r\nTình trạng cướp giật, móc túi, hầu như không xảy ra tại Hàn Quốc. \r\n\r\n\r\n', 5000, NULL, b'0'),
(11, 'Kinh nghiệm du lịch Hạ Long\r\n\r\n\r\n', '', 'imgs/5.jpg\r\n', 6, 'Hạ Long là điểm đến du lịch bạn nên đến một lần trong đời, bởi ngoài thưởng ngoạn phong cảnh thiên nhiên tuyệt đẹp của Vịnh Hạ Long cùng với hệ thống các hang động, bạn còn trải nghiệm những hoạt động như ngủ đêm trên du thuyền, chèo kayak, tham quan những điểm đến linh thiêng như Yên Tử, Chùa Ba Vàng và không thể cưỡng lại với những món ăn làm mê hoặc lòng người như chả mực, hàu nướng, sá sùng…\r\nPhương tiện đi lại\r\nHạ Long cách Hà Nội khoảng 150km, bạn có thể ra bến xe Lương Yên, Mỹ Đình để bắt xe đi Hạ Long, có nhiều nhà xe và chạy liên tục trong ngày, xe chạy khoảng 4 tiếng. Với những chuyến đi 2 ngày 1 đêm với dịch vụ ngủ đêm trên du thuyền thì bạn an tâm là du thuyền đón bạn tại khách sạn nên sẽ không lo vận chuyển xuống Hạ Long. Từ miền Trung hay miền Nam đến Hạ Long thì bạn có thể lựa chọn bay trực tiếp đến Hà Nội hoặc Hải Phòng sau đó bắt xe đi Hạ Long, riêng miền Tây thì chỉ có bay trực tiếp đến Hà Nội thôi nhé.\r\nNên đi Hạ Long mùa nào?\r\nThời điểm tốt nhất để tham quan Hạ Long là vào mùa hè (tháng 4 – 10), lưu ý tháng 6 – 7 thường có mưa bão nên hạn chế thời gian này. Mùa đông ở Hạ Long rất lạnh (tháng 11 – 3 năm sau), nên bạn lưu ý mang theo áo ấm nhé.\r\nNhững điểm nào nên tham quan khi đến Hạ Long\r\nTrên đường ra Hạ Long nếu đi bằng xe máy bạn có thể ghé tham quan núi Yên Tử, cách thành phố Hạ Long 73km, núi Yên Tử khá rộng và phải di chuyển bằng cáp treo 2 lượt nên nếu tham quan cả Chùa Đồng bạn sẽ mất một ngày. Chiều trên đường về Hạ Long bạn tiếp tục ghé tham quan Chùa Ba Vàng, cách Yên Tử 35km và cách Hạ Long 40km. Ngày hôm sau bắt đầu chuyến hành trình khám phá Vịnh bạn có thể lựa chọn tuyến tham quan Động Thiên Cung và Hang Dấu Gỗ (4 tiếng) hoặc Hang Sửng Sốt và Đảo Ti Tốp (6 tiếng), trên đường đi bạn sẽ được nhìn thấy Hòn Đỉnh Hương, Hòn Gà Chọi… \r\nNếu còn thời gian tại Hạ Long bạn có thể ghé tham quan Làng chải Cửa Vạn để tìm hiểu cuộc sống của ngư dân miền biển và tham gia vào những cuộc đánh bắt cá, câu cá, mực, chèo thuyền với ngư dân. Muốn tắm biển thì ghé đảo Ti Tốp, biển Tuần Châu hay Bãi Cháy. Hay tìm hiểu về di tích lịch sử Hạ Long thì bạn nên ghé núi Bài Thơ, đền thờ Trần Quốc Nghiễm, chùa Cửa Ông, bảo tàng Quảng Ninh. Ngoài ra, Đảo Cô Tô cũng là một điểm đến thú vị mà du khách Hà Nội thường lựa chọn vào dịp hè (cách Hạ Long 60km), đảo hiện tại vẫn còn giữ nét hoang sơ nên biển rất xanh và êm ả.\r\nHạ Long có lễ hội gì đặc sắc?\r\nLễ Hội đặc sắc nhất tại Hạ Long mà du khách hay quan tâm là Carnaval Hạ Long thường tổ chức định kỳ tháng 4 hàng năm tại Quảng Trường thành phố Hạ Long. Trong tháng 4 còn có lễ hội Hoa Anh Đào Hạ Long với hàng trăm cành đào đến từ Nhật Bản. Ngoài ra, tại Hạ Long còn có lễ hội Yên Tử được tổ chức thường niên, bắt đầu từ ngày 10 tháng giêng và kéo dài hết tháng 3 (âm lịch), lễ hội Đền Cửa Ông diễn ra từ 2/1 – 30/3 âm lịch, lễ hội Bạch Đằng được tổ chức vào ngày mùng 8 tháng 3 (âm lịch) hàng năm.\r\nKhách sạn và ẩm thực tại địa phương\r\nHạ Long được phân ra làm 2 khu: Hòn Gai và Bãi Cháy, được nối với nhau bởi cây cầu Bãi Cháy. Khu du lịch chính là Bãi Cháy, với bờ biển chạy dài và các cảng du lịch. Khu Hòn Gai là khu trung tâm hành chính. Bạn nên ở khu Bãi Cháy cho thuận tiện đi lại và ăn uống. Tại Bãi Cháy có rất nhiều khách sạn để bạn lựa chọn, trước khi quyết định đặt khách sạn nào bạn nên tham khảo đánh giá của các khách ở trước trên web Agoda hay Tripadviser để có thêm thông tin tham khảo. Một vài khách sạn gợi ý cho bạn các khách sạn 3 sao như Blue Sky, BMC Thăng Long, Golden Lotus, City Bay Palace. Ngoài ra, bạn nên trải nghiệm một đêm trên du thuyền Hạ Long sẽ rất thú vị, các du thuyền mình hay ngủ đêm như Bài Thơ, Pelican, Halong Emotion.\r\nHạ Long là thiên đường của hải sản nên đến đây bạn không nên bỏ qua món chả Mực, hàu nướng, Sam xào chua ngọt, Sá Sùng, bún tôm, bún xào Ngán, tu hài Vân Đồn. Ngoài ra các món nem chua và canh hà Quảng Yên Cà Sáy (vịt lai nga) cũng rất hấp dẫn.\r\nĐến Hạ Long mua gì về làm quà?\r\nHạ Long có khá nhiều mặt hàng để bạn mua về làm quà cho người thân như đồ hải sản gồm mực khô, sá sùng khô, chả mực được bán nhiều tại các chợ Cái Dăm, chợ Hạ Long 1, Hạ Long 2. Đồ lưu niệm được chế tác từ vỏ sinh vật biển, than đá, gỗ, khảm trai, ngọc trai, các sản phẩm này bạn có thể mua tại cửa hàng lưu niệm Hòn Gai hoặc chợ đêm Hạ Long. Ngoài ra, còn có rượu Ngán Hạ long nem chua Quảng Yên, Cà sáy (vịt lai ngan) bạn có thể mua về để cả gia đình cùng thưởng thức.\r\nNhững điều lưu ý\r\nMua hàng tại Hạ Long thì bạn lưu ý dò hỏi giá ở nhiều cửa hàng để so sánh trước khi quyết định mua vì đa số các cửa hàng đều nói thách. Khi ngủ đêm trên du thuyền lưu ý giữ gìn vệ sinh cảnh quan môi trường biển. Nếu đi đảo Cô Tô bạn nên tránh lúc thời tiết gió bão vì tàu thuyền sẽ không được phép chạy nếu sóng quá lớn.\r\n', 0, NULL, b'0'),
(12, 'Kinh nghiệm du lịch Ninh Bình\r\n\r\n', '', 'imgs/6.jpg\r\n', 6, 'Ninh Bình là một trong ba điểm đến hấp dẫn nhất ở miền Bắc (sau Hạ Long và Sa Pa), bởi nơi đây có nhiều thắng cảnh hùng vĩ và tráng lệ, đó là các danh thắng đất ngập nước Tràng An, Tam Cốc, Vân Long hay những công trình kiến trúc đẹp và đồ sộ như Chùa Bái Đính, nhà thờ Phát Diệm, Cố Đô Hoa Lư và vườn quốc gia Cúc Phương dành cho những ai thích thiên nhiên và khám phá. Vùng đất Ninh Bình còn nổi tiếng với nhiều danh nhân đất Việt tiêu biểu như anh hùng dân tộc Đinh Bộ Lĩnh, Lê Hoàn, Lê Đại Hành,\r\nPhương tiện đi lại\r\nCách Hà Nội chỉ 100km nên bạn có thể tham quan Ninh Bình bằng xe máy hoặc xe khách, nhưng mình khuyên bạn nên đi xe khách vì thuận tiện và sức khỏe. Các bến xe khách đi Ninh Bình đó là Giáp Bát và Mỹ Đình, hàng ngày đều có các chuyến xe khách Bắc Nam chạy liên tục. Nếu đi Open Bus bạn có thể đi của hãng The Sinh Tourist hoặc Hưng Thành. Vì các điểm tham quan ở Ninh Bình cách xa nhau nên đến Ninh Bình bạn nên thuê xe máy để thuận tiện di chuyển. Các bạn từ TP.HCM, miền Tây hay miền Trung thì nên đặt vé máy bay giá rẻ để đến Hà Nội trước, sau đó kết hợp tham quan Ninh Bình.\r\nNên đi Ninh Bình mùa nào?\r\nNếu muốn đi viếng chùa Bái Đính thì nên đến vào những ngày đầu năm (từ mùng 6 đến tháng 3 âm lịch), còn đam mê chụp ảnh mùa vàng Tam Cốc thì bạn nên đến vào tháng 5 – 6. \r\nNhững điểm nào nên tham quan khi đến Ninh Bình\r\nĐể tham quan hết các điểm đặc sắc tại Ninh Bình bạn mất 2 – 3 ngày. Ngày đầu tiên đến Ninh Bình bạn hãy ghé thăm Chùa Bái Đính và Khu du lịch Tràng An – di sản thiên nhiên và địa chất thế giới, Tràng An khá rộng nên mất khoảng 3 tiếng ngồi thuyền, các hang động tại Tràng An khá dài và rộng hang Hang Cả, Hang Hai, Hang Ba.\r\nNgày thứ 2 tại Ninh Bình bạn hãy ghé thăm nhà thờ Phát Diệm cách trung tâm Ninh Bình 30km, trưa về ghé tham quan Cố Đô Hoa Lư – đền thờ vua Đinh, vua Lê. Ngoài ra nếu còn thời gian tại Ninh Bình bạn hãy ghé tham quan Tam Cốc, hệ thống hang động ít và ngắn hơn Tràng An nhưng tuyệt đẹp vào mùa lúa (tháng 5 – 6), chùa Bích Động (cùng hướng Tam Cốc). Khu bảo tồn thiên nhiên Vân Long - khu bảo tồn thiên nhiên ngập nước lớn nhất đồng bằng Bắc Bộ, tại đây còn có suối nước nóng Kênh Gà, động Vân Trình, Kẽm Trống và nhiều núi hang đẹp khác. Ngoài ra còn có động Thiên Hà và Vườn Quốc Gia Cúc Phương cho những yêu thiên nhiên và khám phá.\r\nNinh Bình có lễ hội gì đặc sắc\r\nNếu đến vào dịp đầu năm bạn sẽ tham quan Lễ hội chùa Bái Đính là một lễ hội xuân được tổ chức hàng năm, diễn ra từ ngày mùng 6 Tết đến hết tháng 3 âm lịch. Ngoài ra trong tháng 3 (mồng 10 tháng 3 âm lịch) còn có lễ hội Hoa Lư, tương truyền là ngày vua Đinh lên ngôi hoàng đế, nhân dân Trường Yên lại mở hội tưởng nhớ Đinh Tiên Hoàng. \r\nKhách sạn và ẩm thực địa phương\r\n\r\nTrước khi quyết định đặt phòng bạn hãy tham khảo thêm các đánh giá của những người từng ở trước trên các trang web như Agoda hay Tripadvisor để lựa chọn khách sạn mình thích và hợp túi tiền. Một số khách sạn gợi ý mình đánh giá tốt như Tuấn Ngọc 1 sao, Canh Dieu Moutain, Ngọc Anh & Kinh Đô 2 sao, còn 3 sao thì có Bái Đính và khách sạn Queen.\r\nNhắc đến Ninh Bình là nhắc đến dê núi, vì vậy bạn không quên thưởng thức món dê núi (được chế biến gần 20 món) ăn kèm cơm cháy, ngoài ra còn có những món đặc sắc như gỏi cá nhệch Kim Sơn, ốc núi, nem Yên Mạc, canh chua cá rô, miến lươn chắc chắc sẽ làm bạn hài lòng.\r\nĐến Ninh Bình mua gì về làm quà?\r\nGợi ý một số sản vật Ninh Bình bạn có thể mua về là quà cho người thân là rượu cần Nho Quan, hàng mỹ nghệ từ cói Ninh Bình (như thảm, khay, túi xách, cốc, mũ) và món ăn đặc sản cơm cháy chà bông.\r\nNhững điều lưu ý\r\nMùa mưa ở Ninh Bình từ tháng 5 – tháng 9 nên bạn nhớ mang theo dù khi đi du lịch, còn mùa đông (tháng 12 – tháng 1) thì nên mang theo áo ấm vì mua đông miền Bắc khá lạnh và buốt.\r\n', 0, NULL, b'0'),
(13, 'Kinh nghiệm du lịch Đà Nẵng\r\n\r\n\r\n', '', 'imgs/2.jpg\r\n', 6, 'Đà Nẵng là thành phố thuộc vùng duyên hải Nam Trung Bộ, thành phố vừa hiện đại, sạch đẹp vừa yên bình này nổi tiếng với những tên gọi như thành phố đáng sống nhất Việt Nam, thành phố của những chiếc cầu hay thành phố của những bãi biển. Với chiều dài hơn 60km, biển Đà Nẵng được tạp chí Forbes của Mỹ bình chọn là 1 trong 6 bãi biển quyến rũ nhất hành tinh, đến đây du khách còn được tham quan những thắng cảnh ấn tượng như bán đảo Sơn Trà, khu du lịch Bà Nà Hills, danh thắng Ngũ Hành Sơn… Ngoài ra\r\nPhương tiện đi lại\r\nHiện nay có rất nhiều phương tiện đến Đà Nẵng cho bạn lựa chọn là máy bay, tàu hỏa hay xe khách. Tuy nhiên mình khuyên bạn nếu sắp xếp được thời gian và lên lịch cho kỳ nghỉ rồi thì nên đặt vé máy bay sẽ thuận tiện hơn, cách hãng hàng không VietJetAir, Jetstar hay Vietnam Airlines thường xuyên có chương trình khuyến mãi với giá cả rất hấp dẫn từ 3 đầu Tp.HCM, Hà Nội và Cần Thơ. Từ sân bay Đà Nẵng về thành phố tầm 6km nên bạn đi xe taxi sẽ rất thuận tiện.\r\nNgoài ra, nếu không đặt được vé máy bay bạn có thể đi tàu hỏa với giá cả cũng rất hợp lý tùy theo bạn lựa chọn ghế ngồi hay giường nằm, đặc biệt ga Đà Nẵng nằm ngay trung tâm nên bạn thuận tiện đi lại. Còn nếu chọn xe khách thì bạn dễ dàng mua vé từ bến xe tại TP.HCM hay Hà Nội. Tại thành phố Đà Nẵng bạn nên thuê xe máy đi tham quan vì khoảng cách các điểm không quá xa nên bạn thuận tiện tham quan trong thời gian ở lại đây.\r\nNên đi Đà Nẵng mùa nào?\r\nNếu muốn có cảm giác se lạnh thì đến Đà Nẵng từ tháng 1-3, tuy nhiên cũng không phải quá lạnh mà nhiệt độ chỉ ở ngưỡng vừa phải. Còn đến vào tháng 4-5 thì tuy đã chuyển sang hè nhưng đôi khi vẫn còn sương mù. Thời điểm đẹp nhất để đến Đà Nẵng sẽ là tháng 6-9 bởi bước vào mùa hè của miền Trung, trời nắng ráo và biển trong xanh, thích hợp cho chuyến vui chơi dạo biển của bạn.\r\nNhững điểm nào nên tham quan khi đến Đà Nẵng \r\nThành phố Đà Nẵng nổi tiếng với những bãi biển đẹp nên đến đây bạn không nên bỏ qua việc ngâm mình trong các bãi biển như biển Mỹ Khê, bãi tắm Xuân Thiều, bãi tắm ở Bán Đảo Sơn Trà hoặc bãi tắm Non Nước. Ngay khu vực trung tâm Đà Nẵng bạn nên ghé tham quan bảo tàng Đà Nẵng trưng bày những cổ vật của Chămpa hay tham quan công viên Châu Á với những trò chơi hấp dẫn cùng vòng quay mặt trời Sun Wheel hiện là 1 trong 10 vòng quay lớn nhất thế giới. Đi xa chừng 16km bạn sẽ đến với Bán đảo Sơn Trà, viếng Chùa Linh Ứng, tham quan đỉnh Bàn Cờ, Bãi Bụt, Bãi Bắc, khu du lịch Bãi Cát Vàng và sân bay trực thăng Sơn Trà. \r\nNgày hôm sau tại Đà Nẵng bạn tiếp tục tham quan danh thắng Ngũ Hành Sơn cách trung tâm thành phố Đà Nẵng khoảng 12km hướng về Hội An, sau đó về lại thành phố Đà Nẵng và tiếp tục hành trình khám phá Bà Nà Hills, cách Đà Nẵng 30km. Đến Bà Nà bạn không quên trải nghiệm dịch vụ đi tàu lửa, tham quan vườn hoa Le Jardin D\'Amour và khu Làng Pháp xinh đẹp. Buổi tối tại Đà Nẵng thì đừng quên trải nghiệm dịch vụ di thuyền trên sông Hàn về đêm và chiêm ngưỡng những cây cầu làm nên tên tuổi của thành phố Đà Nẵng đó là cầu sông Hàn, cầu Rồng, cầu Trần Thị Lý, cầu Thuận Phước.\r\nĐà Nẵng có lễ hội gì đặc sắc?\r\nĐà Nẵng nổi tiếng với Lễ hội pháo hoa Đà Nẵng được tổ chức 2 năm một lần, thường được tổ chức vào năm lẻ, hoạt động diễn ra vào cuối tháng 4. Ngoài ra, Đà Nẵng còn có Lễ hội đua thuyền diễn ra vào tháng Giêng âm lịch hàng năm, lễ hội Cầu Ngư tổ chức sau khi ăn Tết và lễ hội Quan Thế Âm vào ngày 19.2 Âm lịch hàng năm.\r\nKhách sạn và ẩm thực địa phương\r\nLà một thành phố du lịch nổi tiếng nên Đà Nẵng được đầu tư rất nhiều về hệ thống giao thông, dịch vụ du lịch như khách sạn, nhà hàng. Vì vậy bạn dễ dàng tìm thấy những khách sạn với mức giá phải chăng đến những khách sạn cao cấp, resort 4-5 sao dọc bãi biển. Để có những lựa chọn tối ưu bạn nên tham khảo thông tin đánh giá trên Agoda hay Tripadvisor. Ngoài ra, nếu muốn thức dậy trong khi khí se lạnh và trải nghiệm cảm giác thiên nhiên thì bạn nên đặt 1 đêm phòng trên Bà Nà Hilss tại khách sạn Lệ Nim hay khu Làng Pháp, mình tin cảm giác sẽ rất khác bởi không gian ở đây rất lãng mạng và nên thơ. \r\nĐà Nẵng có thể được xem là thiên đường của ẩm thực, bởi đến đây bạn không chỉ thưởng thức hải sản tươi sống mà còn ăn được những món ăn độc đáo của miền Trung như Mỳ Quảng, bánh tráng cuốn thịt heo, bún mắm, bê thui Cầu Mống, bún chả cá, gỏi cá Nam Ô, nem lụi, bánh xèo, bánh bèo – nậm lọc, bún bò.... Ngoài ra, nếu muốn ngắm phong cảnh về đêm của Đà Nẵng thì bạn nên đến Sky Bar cao nhất Việt Nam tại tầng 36 của khách sạn Novotel Đà Nẵng, giá cả cũng rất phải chăng với nhiều loại thức uống được phục vụ.\r\nĐến Đà Nẵng mua gì về làm quà?\r\nBạn có thể mua các loại hải sản tươi sống hoặc khô như mực, tôm, cá khô tẩm tại chợ Cồn hay chợ Hàn…Các loại bánh tré Bà Đệ, rong biển Mỹ Khê, nước nắm Nam Ông…là những món quà đặc sản du khách thường mua về làm quà khi tới Đà Nẵng.\r\nNhững điều lưu ý\r\nTháng 10-12 Đà Nẵng (và miền Trung) bắt đầu vào mùa mưa, bão nên không thuận lợi cho các bạn di chuyển, nếu đến Đà Nẵng lúc này gần như chỉ có thể trải nghiệm cảm giác mưa bão miền Trung kết hợp với tour khám phá ẩm thực Đà Nẵng mà thôi. Nhớ là mưa miền Trung khá dai bạn nhé có thể kéo dài từ sáng đến chiều và từ tháng này qua tháng nọ. Và bạn nên nhớ là người dân Đà Nẵng rất nhiệt tình và hiếu khách nên muốn hỏi đường đi thì bạn đừng ngần ngại nhé, họ rất sẵn lòng và chỉ dẫn tận tình.\r\n', 1600, NULL, b'0'),
(14, 'Kinh nghiệm du lịch Quảng Nam', '', 'imgs/1.jpg\r\n', 6, 'Hội An là một đô thị cổ của Việt Nam, là trung tâm giao thương chính của miền trung cuối thế kỷ 16 đến thế kỷ 17. Đến với Hội An bạn sẽ được ngắm nhìn những ngôi nhà cổ hàng trăm năm tuổi, những bãi biển đẹp tại Cửa Đại và Cù Lao Chàm. Quảng Nam là vùng đất còn lưu giữ nhiều dấu tích của nền văn hóa Chăm-pa, là nơi giao thoa của những sắc thái văn hóa giữa hai miền và giao lưu văn hóa với bên ngoài, điều này góp phần làm cho Quảng Nam giàu truyền thống văn hóa, độc đáo về bản sắc văn hóa.\r\nPhương tiện đi lại\r\nÔ-tô và máy bay là hai phương tiện chủ yếu sẽ đưa bạn đến Hội An. Tuy nhiên nếu đi bằng máy bay bạn sẽ phải xuống sân bay Đà Nẵng, sau đó đi xe bus, xe máy hoặc taxi sang Hội An. Nếu đi bằng ôtô thì từ TPHCM bạn có thể đi xe các hãng như Hạnh Cafe, The Sinh Tourist hoặc Thiên An. Từ Hà Nội thì bạn nên đi The Sing Tourist hoặc Hạnh Cafe.\r\nQuảng Nam cách Đà Nẵng khoảng 30km, các bạn có thể bắt xe buýt đi từ bến xe Đà Nẵng về Hội An. Cứ 30 phút có 1 chuyến xe buýt, bắt đầu từ 5 hay 6 giờ sáng gì đó đến 5h chiều, xe buýt đi Hội An. Ngoài xe bus bạn có thể thuê xe máy tại Đà Nẵng rồi đi dọc bờ biển đến Hội An (cảnh rất đẹp).\r\nNên đi Quảng Nam mùa nào?\r\nQuảng Nam có 2 mùa là mùa mưa rơi vào khoảng tháng 9 – tháng 12, nhiều bão và lũ quét đổ bộ. Các bạn nên đến đây vào tầm tháng 4 đến tháng 8 là đẹp. Vào ngày 1 & 14 Âm lịch hàng tháng, nhất là dịp rằm Trung thu thì các con sông đặc biệt là sông Hoài ở Hội An sẽ ngập tràn đèn hoa đăng rất đẹp mắt.\r\nNhững điểm nào nên tham quan khi đến Quảng Nam\r\nTrong chuyến hành trình tham quan miền Trung (Đà Nẵng, Huế, Quảng Bình) bạn hãy kết hợp tham quan Hội An. Đến phố cổ Hội An bạn hãy ghé tham quan Chùa Cầu – ngôi chùa không thờ phật, Hội quán Phúc Kiến, nhà cổ Phùng Hưng, nhà cổ Tân Ký và cụm bảo tàng như bảo tàng văn hoá dân gian, bảo tàng lịch sử văn hoá Hội An, bảo tàng gốm sứ mậu dịch Hội An, bảo tàng văn hóa Sa Huỳnh…. Thường tham quan Hội An nên đi vào buổi chiều để khi về đêm phố Hội lên đèn sẽ rất đẹp và tham gia vào trò chơi hát bài chòi cũng rất thú vị. Ngoài ra, tại Hội An nếu yêu thích các làng nghề bạn có thể ghé thăm làng Làng mộc Kim Bồng, Làng gốm Thanh Hà, Làng rau Trà Quế hay muốn tắm biển thì đến bãi biển Cửa Đại, biển An Bàng. Di tích Thánh Địa Mỹ Sơn cách phố cổ Hội An khoảng 40km, đây cũng là điểm đến thú vị cho các bạn thích khám phá văn hóa Chăm Pa.\r\nNgoài ra, Quảng Nam có đảo Cù Lao Chàm rất hoang sơ và yên bình cách cảng Cửa Đại 15km, nếu đi bạn nên mua tour các công ty du lịch tại Hội An với chi phí tiết kiệm hơn và thời gian tàu linh hoạt, chương trình sáng đi chiều về bằng phương tiện canô. Đến Cù Lao Chàm bạn sẽ đến Bãi Làng và được tham quan khu bảo tồn biển, Âu thuyền – nơi thuyền tránh bảo của người dân địa phương, chùa Hải Tạng, chợ Tân Hiệp và mua sắm. Sau đó di chuyển qua bãi Ông để tắm biển, lặn ngắm san hô và sinh vật biển, ăn trưa, nghỉ ngơi và di chuyển về lại cảng Cửa Đại (Hội An).\r\nKhách sạn và ẩm thực địa phương\r\nHội An có rất nhiều khách sạn để bạn lựa chọn, có thể chọn homestay với người dân hay ở tại các khách sạn 1-2 sao cũng rất thuận tiệnđể tham quan phố cổ. Bạn có thể tham khảo thêm trên Agoda, Tripadvisor hay Mytour để có đánh giá và chọn lựa kỹ càng. Vài gợi ý khách sạn tốt cho bạn như Tân Phương 1, Vaia Boutique Hội An, Thu Sun Homestay dòng 1 sao, hay Họa My 2, Thanh Bình 3, An Hội với tiêu chuẩn 2 sao.\r\nĐến Hội An bạn không nên bỏ lở thưởng thức ẩm thực phố Hội với các món ăn làm níu chân du khách như cao lầu, cơm gà Hội An, mì quảng, cá chuồn nướng Núi Thành, bê thui Cầu Móng, và các món ăn chơi như bánh đập, bánh ú tro, bánh hoa hồng, bánh bao, bánh vạc Hội An, bánh dừa Quảng Nam, bánh tổ, bánh mì Hội An cũng rất đặc sắc.\r\nQuảng Nam có lễ hội gì đặc sắc?\r\nQuảng Nam nổi bật nhất với đêm phố cổ Hội An diễn ra vào ngày 1 & 14 âm lịch hàng tháng, khắp phố phường Hội An trở thành một sân khấu lớn, lung linh và huyền ảo trong muôn ngàn ánh đèn lồng. Người dân trong những bộ xiêm y cổ xưa, trở thành những diễn viên chính trong các hoạt cảnh ngâm thơ, đánh cờ, chơi mạt chược... làm sống lại khung cảnh phồn hoa của cảng thị xưa với những thú vui dân dã trong ngày hội hè. Ngoài ra Quảng Nam còn có các lễ hội văn hóa như Lễ hội rước Cộ chợ Được được tổ chức hằng năm vào ngày 10, 11 tháng Giêng âm lịch; Lễ hội Bà Thu Bồn tổ chức hằng năm vào ngày 12 tháng 2 Âm lịch, tại dinh bà Thu Bồn thuộc xã Duy Tân, huyện Duy Xuyên; Lễ vía Bà Thiên Hậu Thánh Mẫu tổ chức vào ngày 23 tháng 3 Âm lịch hàng năm do người Hoa kiều sinh sống ở Hội An tổ chức tại Hội quán Phúc Kiến và hội quán Ngũ Bang (Hội An).\r\nĐến Quảng Nam mua gì về làm quà?\r\nMột số đặc sản mua về làm quà như các loại bánh như bánh tổ, bánh thuẫn bánh in, bánh đậu xanh, bánh ít lá gai, tương ớt Hội An (cay nồng mà lại thơm). Hay những chiếc đèn lồng xinh xắn nhiều kích thướt, lụa Hội An dành tặng bạn gái rất mền và mịn và tượng đồng Phước Kiều cũng là món quá đậm chất Quảng Nam.\r\nNhững điều lưu ý\r\nBạn nên hạn chế đến Quảng Nam từ tháng 10 – 12 vì thời gian mưa bão, đặc biệt mưa bão miền trung kéo dài có khi cả ngày, cả tuần cứ rả rích từ sáng đến chiều. Tuy nhiên nếu muốn trải nghiệm cảm giác đi thuyền trong phố Hội thì bạn có thể ghé.\r\n', 1980, NULL, b'0');
INSERT INTO `tintuc` (`MaTin`, `TieuDe`, `TomTat`, `UrlHinh`, `MaLTT`, `NoiDung`, `LuotXem`, `NgayCapNhat`, `AnHien`) VALUES
(15, 'Kinh nghiệm du lịch Nha Trang', '', 'imgs/2.jpg\r\n', 6, 'Vốn nổi tiếng là thành phố biển du lịch của Việt Nam, Nha Trang có rất nhiều những danh lam thắng cảnh hút hồn các du khách bởi vẻ đẹp tuyệt vời. Khu giải trí Vinpearl Land với nhiều trò chơi thú vị và hấp dẫn, đảo Hòn Mun với những rặng san hô đẹp lộng lẫy, còn Hòn Tằm thu hút du khách với bãi tắm tuyệt đẹp hay dịch vụ tắm bùn khoáng tại I-Resort, khu du lịch Trăm Trứng sẽ giúp du khách thư giãn sau ngày dài. Đến Nha Trang không quên thưởng thức đặc sản nổi tiếng phố biển như bún sứa, nem nướng\r\nPhương tiện đi lại\r\nĐể đến với thành phố biển Nha Trang có nhiều cách như xe khách, tàu hỏa hoặc máy bay. Nếu đi bằng xe khách thì từ TPHCM bạn có thể chọn xe khách Phương Trang, Cúc Tùng tại bến xe Miền Đông, từ Hà Nội thì chọn xe Hoàng Long từ bến xe Mỹ Đình. Tàu Hỏa thì từ Hà Nội có nhiều lựa chọn hơn như tàu SE1, SE3, SE5 cho lượt đi và SE2, SE4, SE6 cho lượt về; từ Sài Gòn thì chòn SN4 và SNT2, về đi SNT3. Còn lựa chọn máy bay thì bạn sẽ bay đến sân bay Cam Ranh, cách TP Nha Trang 35km, sau đó di chuyển bằng taxi hoặc xe bus về trung tâm thành phố. Để tiết kiệm thời gian và sức khỏe bạn nên lựa chọn đi máy bay vì các hãng hàng không Vietjet hay Jestar thường có chương trình khuyến mãi, nên bạn lưu ý để săn vé nhé.\r\nNên đi Nha Trang mùa nào?\r\nThời gian lý tưởng nhất đến Nha Trang là vào mùa hè từ tháng 4 – 9, đây là thời gian biển êm, nước biển trong xanh thích hợp cho việc tắm biển, tham quan đảo và lặn ngắm san hô. Lưu ý tháng 10 – 11 thường là mùa biển động và mưa bão ở Nha Trang nên bạn hạn chế đến vào mùa này. \r\nNhững điểm tham quan khi đến Nha Trang\r\nTham quan Nha Trang bạn mất khoảng 2-3 ngày để khám phá hết những điểm đến nổi bật tại đây. Ngay trong trung tâm thành phố bạn hãy ghé tham quan Chùa Long Sơn, Nhà Thờ Đá, Tháp Bà Ponagar, Viện Hải Dương Học. Buổi chiều, thích thư giãn tắm bùn khoáng bạn hãy ghé I-Resort hoặc Khu du lịch Trăm Trứng, cả hai đều cách trung tâm tầm 8km. Ngày hôm sau bạn có thể lựa chọn qua Vinperl Land (bằng cáp treo), vui chơi cả ngày với rất nhiều các trò chơi trong nhà, ngoài trời, khu trò chơi nước, thủy cung và ban đêm có biểu diễn nhạc nước rất ấn tượng. Hoặc cách khác bạn hãy lựa chọn tour tham quan đảo, tour Hòn Mun lặn ngắm san Hô; tour du ngoạn 4 đảo (Hòn Tằm, Hòn Một, Suối Hoa Lan, Hòn Miễu xem thủy cung Trí Nguyên). \r\nNếu còn thời gian ở lại Nha Trang bạn có thể ghé tham quan và tắm biển tại Khu du lịch Wonder Park (12km), Bãi Dài (30km) cả hai đều đi hướng về sân bay Cam Ranh hay hướng về tỉnh Phú Yên có khu du lịch Dốc Lết (50km), Vịnh Vân Phong (64km) tất cả đều là những bãi biển đẹp và đến đây còn gì thú vị hơn sau khi tắm biển thì thưởng thức hải sản tươi sống.\r\nKhách sạn và ẩm thực địa phương\r\nTại Nha Trang có rất rất nhiều khách sạn để bạn lựa chọn nghỉ qua đêm, trước khi đặt phòng bạn có thể tham khảo đánh giá qua các website Tripadvisor, Agoda, Mytour để có những lựa chọn hợp lý về dịch vụ và túi tiền của mình. Vài gợi ý khách sạn tiêu chuẩn mình ở tốt như Phi Long, Sun City 2 sao, hay dòng 3 sao như Lavender, Dendro, Paris Nha Trang.\r\nĐến Nha Trang bạn không thể bỏ qua các món hải sản tươi sống của phố biển ở đây, ngoài ra những món bạn nên thử như bún sứa, bún cá dầm, nem nướng, bún chả cá, bánh căn, bánh ướt, bánh bèo, bánh đập, mực rim…\r\nNhững lễ hội đặc sắc tại Nha Trang\r\nMột trong những lễ hội đặc sắc tại Nha Trang là Festival Biển, thường được tổ chức định kỳ vào tháng 7 hàng năm. Ngoài ra, Nha Trang còn có Lễ hội Đền Hùng được tổ chức ngày 10/3 âm lịch tại Đền Hùng Vương đường Ngô Gia Tự. Lễ hội Tháp Bà Ponagar diễn ra ngày 20 - 23/3 âm lịch ngay tại tháp.\r\nĐến Nha Trang mua gì về làm quà\r\nNha Trang nổi tiếng với Yến sào, đây là loại đặc sản quý tốt cho sức khỏe nên bạn có thể mua về làm quà cho người thân. Ngoài ra, những đặc sản của phố biển bạn nên mua như chả cá Nha Trang, nem Ninh Hòa, mực một nắng và mực rim me, bong bóng cá, bánh xoài.\r\n', 1234, NULL, b'0'),
(16, 'Kinh nghiệm du lịch Đà Lạt', '', 'imgs/3.jpg\r\n', 6, 'Cách thành phố Hồ Chí Minh 300km, Đà Lạt là thành phố lý tưởng để bạn trốn cái nóng mùa hè hay tận hưởng cảm giác mùa đông se lạnh. Đà Lạt nổi tiếng với những thắng cảnh như Hồ Xuân Hương, Thung Lũng Vàng, Đồi Mộng Mơ, Thung Lũng Tình Yêu, Langbiang… tất cả đã tạo nên một Đà Lạt lung linh, huyền diệu. Đà Lạt có nhiều dân tộc anh em như Hoa, Cơ Ho, Tày, Nùng, Chăm nhưng trong đó chiếm đại da số vẫn là người kinh.\r\nPhương tiện đi lại\r\nCó hai cách để đi đến Đà Lạt đó là bay và đi xe khách Phương Trang. Để bay tới Đà Lạt bạn có thể đi của Vietjet air hoặc VietnamAirlines. Hai hãng này luôn có những đợt vé máy bay giá rẻ. Bạn chịu khó để ý trên mạng hoặc đăng ký mail với họ để có vé giá rẻ như ý. Ngoài ra bạn có thể đi xe giường nằm đi Đà Lạt từ Sài Gòn, xe mình hay chọn đi là Phương Trang, hãng này uy tín và chất lượng tốt. Bạn có thể đi các chuyến 20h30, 23h từ Sài Gòn. Từ Hà Nội hay Đà Nẵng bạn nên bay trực tiếp đến Đà Lạt để tiết kiệm thời gian di chuyển. Từ miền Tây thì phải đi xe thẳng lên Đà Lạt.\r\nXe từ sân bay Liên Khương về trung tâm Đà lạt bạn có thể đi taxi hoặc xe bus trung chuyển, xe bus sẽ dừng tại bến chợ Đà Lạt. Tại thành phố Đà Lạt bạn nên thuê xe máy để có thể tham quan và trải nghiệm các dịch vụ tại đây, đa số các khách sạn đều có dịch vụ này. Buổi tối, để có trải nghiệm thú vị bạn nên thuê dịch vụ xe đạp đôi vòng quanh thành phố và khu vực Hồ Xuân Hương.\r\nNên đi Đà Lạt mùa nào?\r\nKhí hậu Đà Lạt quanh năm ôn hòa, mát mẻ nên bạn có thể đến bất kỳ thời điểm nào trong năm. Thời điểm lý tưởng nhất là cuối thu đầu đông (tháng 11 – 12) lúc đã chấm dứt những cơn mưa và mùa hoa Dã Quỳ nở rực để bạn thỏa thích săn ảnh. Lưu ý những tháng mùa hè thường có mưa rả rích, thường thì từ tháng 8 đến tháng 10.\r\nNhững điểm nào nên tham quan khi đến Đà Lạt\r\nĐà Lạt có rất nhiều điểm tham quan cho bạn lựa chọn, ngay khu vực trung tâm thành phố bạn có thể ghé thăm vườn hoa Thành Phố, nhà thờ Con Gà, trường đại học Đà Lạt cũng có kiến trúc khá đẹp. Cách trung tâm khoảng 6km về hướng bắc bạn sẽ tham quan cụm điểm: Thung Lũng Tình Yêu, Đồi Mộng Mơ, rừng hoa khô Đà Lạt, XQ Xử Quán và thưởng thức những trái dâu tươi chín mọng tại vườn dâu Hiệp Lực.\r\nNgày hôm sau bắt đầu hành trình bạn nên chinh phục đỉnh Langbiang bằng xe Jeep để có trải nghiệm thú vị, chiều về hãy ghé qua Thung Lũng Vàng nơi có phong cảnh khá đẹp và lãng mạn. Điểm dừng chân buổi tối của bạn hãy ghé làng Cù Lần nằm khép nép dưới thung lũng xã Lát, huyện Lạc Dương. Ngoài tham gia những trò chơi thứ thách như chèo bè trên suối, đi xe địa hình, buổi tối hãy cùng người dân trong bản thưởng thức rượu cần, ăn thịt nướng và hát vang những bản nhạc Tây Nguyên hùng hồn. Nếu còn thời gian tại Đà Lạt bạn không quên ghé qua Thiền Viện Trúc Lâm và Thác Datanla\r\nĐà Lạt có lễ hội gì đặc sắc?\r\nĐà Lạt có lễ hội lớn nhất là Festival Hoa Đà Lạt, được tổ chức 2 năm 1 lần, vào các năm lẻ dịp cuối năm.\r\nKhách sạn và ẩm thực địa phương\r\nĐà Lạt có rất nhiều khách sạn để bạn lựa chọn từ mini đến cao cấp 5 sao hay các dạng biệt thự dành cho gia đình, nhóm bạn group nhỏ. Để có những lựa chọn tin cậy bạn có thể tham khảo các trang web đánh giá tốt về dịch vụ của Tripadvisor hay Agoda. Vài gợi ý khách sạn 3 sao cho bạn như Mai Vàng, Nice Dream, Rum Vàng, Le Petit Paris,… hay các khách sạn 2 sao như Cẩm Đô, \r\nĐà Lạt không chỉ sở hữu nhiều cảnh đẹp mà còn có nhiều món ăn làm níu chân du khách phương xa Nem nướng bà Hùng, bún bò ấp Ánh Sáng, bánh ướt lòng gà, bánh canh Xuân An trên đường Nhà Chung, bánh canh Phan Rang ở đường Trần Phú hay các món ăn vặt như bánh tráng nướng, chả ram bắp, món xắp xắp (giống nộm bò khô ở Hà Nội và gỏi khô bò ở Sài Gòn), bánh bèo, dâu tây kem trên phố Phan Đình Phùng. Ngoài ra, Đà Lạt nổi tiếng với vô vàn loại rau, nếu muốn thưởng thức buffet rau tại hãy ghé nhà hàng Laguda ngay tại khu vực cáp treo Thiền Viện Trúc Lâm để thưởng thức nhé. Và không quên thưởng thức café ngay khu vực đối diện chợ hay xung quanh Hồ Xuân Hương. \r\nĐến Đà Lạt mua gì về làm quà?\r\nĐà Lạt nổi tiếng với nhiều sản vật của địa phương đặc biệt là trái cây như dâu tây, bơ, hồng, mận và bạn cũng có thể mua những sản phẩm đã được chế biến từ củ quả như mứt mận, mứt khoai lang, mứt hồng và các loại nước đóng hủ như nước chanh dây, dâu… Ngoài ra bạn có thể mua rau củ tươi như bông Atiso nấu canh rất ngon và mát, bông cải trắng, xanh, hoa Đà Lạt. Nếu muốn mua áo len thì bạn có thể mua ở chợ hay mua ở nhà thờ Domane de Marie. Rượu vang Đà Lạt hay trà là những món quà cũng có thể mua về làm quà cho người thân.\r\nNhững điều lưu ý\r\nNếu có mua mứt thì vào chợ Đà Lạt mua, không nên mua ngoài đường. Mua bơ thì bạn nên nhờ người quen biết mua sẽ biết được bơ nào dẻo và ngon, lưu ý nên mưa bơ còn cứng để không bị vap đập khi di chuyển, vì để trong xe hầm bơ rất dễ chín\r\n', 1345, NULL, b'0'),
(17, 'Kinh nghiệm du lịch Phan Thiết', '', 'imgs/2.jpg\r\n', 6, 'Phan Thiết là thành phố trực thuộc tỉnh Bình Thuận, nơi đây có Mũi Né nổi tiếng là thủ đô resort trong cả nước, được biết đến vào năm 1995 khi xảy ra hiện tượng nhật thực toàn phần. Phan Thiết cách TP.HCM 200km nên thuận lợi cho việc tham quan, nghĩ dưỡng vào cuối tuần.\r\nPhương tiện đi lại\r\nTừ TP.HCM bạn bắt xe khách Phương Trang tại bến xe Phạm Ngũ Lão hay ra bến xe miền Đông để về Phan Thiết, thời gian khoảng 4 tiếng. Bạn chỉ cần gọi đặt trước và ra lấy vé trước 30 phút là được, thuận tiện là nếu bạn đi bến Phạm Ngũ Lão xe Phương Trang sẽ đi bạn ra thẳng Mũi Né. Hoặc cách khác là đi tàu hỏa từ ga Hòa Hưng, tàu sẽ dừng tại ga Phan Thiết và bạn dễ dàng di chuyển bằng taxi về khách sạn. Đến Phan Thiết thì bạn nên thuê một chiếc xe máy để thuận lợi di chuyển, dịch vụ này hầu như đều có tại các khách sạn trong thành phố Phan Thiết hay Mũi Né.\r\nTừ miền Trung hay miền Bắc thì bạn nên đi máy bay vào Tp.HCM trước, sau đó di chuyển ra Phan Thiết. Tuyến Hà Nội/Đà Nẵng – TP.HCM luôn có chương trình giá rẻ từ các hãng hàng không Vietjet, Jestar hay Vietnam Ailines. Từ Cao Nguyên thì bạn đi xe khách trực tiếp đến Phan Thiết, còn miền Tây thì phải lên TP.HCM nối tuyến đi Phan Thiết.\r\nNên đi Phan Thiết mùa nào?\r\nĐể thuận lợi cho việc tắm biển, tham quan và nghỉ dưỡng bạn nên đến Phan Thiết vào đầu tháng 6 hay từ tháng 8 – 12. Tránh đi vào tháng 7, 8 vì mùa này mưa nhiều, có nhiều tảo biển sẽ làm cho nước biển không được trong xanh. Còn đến đây để lướt sóng thì nên đi vào tháng 9 – 12, mùa có gió dễ chịu nhất là tháng 11 – tháng 4 năm sau.\r\nNhững điểm nào nên tham quan khi đến Phan Thiết\r\nPhan Thiết có hai khu vực chính để bạn tham quan đó là trung tâm thành phố Phan Thiết và khu vực Mũi Né. Ngay trong thành phố Phan Thiết thì có những danh thắng như Bảo tàng Hồ Chí Minh, Trường Dục Thanh hay ghé thăm Dinh Vạn Thủy Tú nơi có bộ xương cá ông lớn nhất tại Bình Thuận. Và đừng quên chụp hình tại Tháp nước Phan Thiết, được xem là biểu tượng của thành phố biển này. Mũi Né cách Phan Thiết chừng 20km, trên đường ra bạn nên ghé tham quan Tháp Chàm Poshanư của người Chăm, ghé và thưởng thức ly rượu vang hảo hạng tại Lâu đài Rượu vang RD. Đến khu vực Mũi Né thì ngoài hoạt động tắm biển, lướt ván bạn không nên bỏ qua việc chinh phục đồi cát đỏ và trượt cát, tham quan suối Hồng, thư giãn tại trung tâm Bùn Khoáng Mũi Né.\r\nPhan Thiết có lễ hội gì đặc sắc?\r\nBình Thuận có 1 lễ hội lớn của người chăm đó là lễ hội Katê tại tháp Pôsanư vào đầu tháng 10 dương lịch, và một lễ hội không kém phần đặc sắc và nhộn nhịp mà bạn không nên bỏ qua nếu đến đây vào dịp Tết âm lịch đó là Lễ hội Đua Thuyền, thường diễn ra vào ngày mùng 2 tết Nguyên Đán hằng năm, trên sông Cà Ty thành phố Phan Thiết.\r\nKhách sạn và ẩm thực địa phương\r\nTrong thành phố Phan Thiết bạn có thể lựa chọn ở khách sạn như Bình Minh 2 sao, Đồi Dương 3 sao. Còn trong khu vực Mũi Né thì khá nhiều các khách sạn để bạn lựa chọn như Minh Tâm resort, Rạng Garden Bungalow Hill Side, Van Nguyen Mini Houes, Golden Sail Hotel với tiêu chuẩn 2 sao. Ngoài ra bạn còn có thể lựa chọn qua đêm tại khu vực Hòn Rơm như Hòn Rơm 2 resort, khu du lịch Nắng Hòn Rơm.\r\nBuổi tối khu vực Hàm Tiến có cả dãy phố nhà hàng món tây (các món hải sản nấu theo kiểu Ý, Pháp, Tây Ban Nha, Nhật). Hoặc bạn có thể tự mua hải sản và nhờ nhà hàng chế biến thành món ăn yêu thích. Ở trong khu vực thành phố Phan Thiết thì không nên bỏ qua các món ăn làm níu chân du khách như gỏi cá Mai, lẩu cá bóp, bánh tráng cuốn dẻo, bánh canh chả cá, bánh xèo, bánh căn, răng mực, bánh quai vạt, mì quãng vịt…. tại khu vực bờ kè và chợ Phan Thiết.\r\nĐến Phan Thiết mua gì về làm quà?\r\nCác bạn muốn mua hải sản về làm quà thì tốt nhất nên ra bờ biển vào buổi sáng sớm để đón các ghe chài của các ngư dân đi đánh bắt ban đêm về thì hải sản sẽ tươi sống ngon hơn so với các cơ sở bán sẵn. Ngoài ra, các bạn còn có thể mua mực một nắng, thanh long, cốm sữa Phan Thiết, bánh rế tại các điểm dừng chân hay tại một số cửa hàng bán đặc sản Phan Thiết trong nội thành Thành phố hoặc tại các siêu thị lớn như Coop - Mart, Lottemart…\r\nNhững điều lưu ý\r\nBạn cần phải trang bị cho mình đầy đủ tư trang như kem chống nắng, nón rộng vành, dép hai quai hay giày sandal, kính râm, kèm theo một chai nước nhỏ bên mình khi di chuyển, vui đùa trên đồi cát… Hay mang theo dù, áo khoác nhẹ nếu đi vào mùa mưa tháng 7, 8. Lưu ý trên đường Trần Hưng Đạo có nhiều khách sạn, giá cả phải chăng nhưng do nằm trên đường lớn, tối xe chạy ồn ào nên không yên tĩnh lắm. Nếu bạn muốn ngắm bình minh thì chỉ có thể ngắm được tại Mũi Né, bãi Đồi Dương tại Phan Thiết bị núi che khuất nên mặt trời qua khỏi núi sẽ gắt, không còn đẹp nữa.\r\n', 2142, NULL, b'0'),
(18, 'Kinh nghiệm du lịch Vũng Tàu', '', 'imgs/6.jpg\r\n', 6, 'Vũng Tàu là thành phố thuộc tỉnh Bà Rịa - Vũng Tàu, ở vùng Đông Nam Bộ Việt Nam. Cách TPHCM 100km, Vũng Tàu thích hợp cho những chuyến nghỉ ngơi, thư giãn vào cuối tuần hay các dịp lễ. Đến đây, ngoài tắm biển, tham quan bạn sẽ bị thu hút bởi những món ăn ngon và một thành phố năng động, mến khách. Cách Vũng Tàu 200km là Côn Đảo với những bãi tắm hoang sơ, tuyệt đẹp, Côn Đảo thích hợp cho những ai thích tìm hiểu văn hóa, lịch sử và tìm một cảm giác bình yên trong lòng.\r\nPhương tiện đi lại\r\nVũng tàu cách TPHCM chỉ 100km nên rất thuận tiện cho các kỳ nghỉ cuối tuần, đặc biệt hiện nay đã có cao tốc TPHCM – Long Thành nên thời gian di chuyển còn rút ngắn hơn chỉ tầm 2h00 – 2h30 di chuyển. Ngoài ra, bạn có thể di chuyển bằng tàu cánh ngầm từ bến Bạch Đằng, mất khoảng 1h30 của các hãng như Greenlines, Vina Express và Petro Express. Đi lại ở Vũng Tàu bạn có thể lựa chọn taxi, xe điện, xe bus, còn với mình thì thích xe máy vừa dạo biển vừa tiện dừng tham quan dọc đường. Các bạn có thể thuê ngay tại khách sạn mình ở.\r\nĐể ra Côn Đảo thì bạn có thể đi tàu hoặc máy bay. Đi tàu thì từ Vũng Tàu bạn đi tàu Côn Đảo 9 hoặc Côn Đảo 10 từ cảng Cát Lở, tàu chạy 17h00 chiều hôm trước và tới lúc 5h00 sáng hôm sau, lưu ý tàu hay dễ điều chỉnh lịch tàu chạy vì ảnh hưởng biển. Còn đi máy bay thì chi phí cao hơn vì hiện tại chỉ có Vasco khai thác đường bay này.\r\nNên đi Vũng Tàu mùa nào?\r\nMùa mưa ở Vũng Tàu thường bắt đầu từ tháng 5 – 10, còn mùa khô từ tháng 11 – 4 năm sau. Tuy nhiên khí hậu ở đây khá ôn hòa, không quá nóng hay quá lạnh nên bạn có thể đến bắt kỳ thời điểm nào trong năm, trừ thời gian ảnh hưởng của bão.\r\nNhững điểm nào nên tham quan khi đến Vũng Tàu\r\nĐến Vũng Tàu đa số khách thích tắm biển và thưởng thức hải sản, bạn có thể lựa chọn bãi Sau (khu vực từ khách sạn Imperial đến khách sạn Lan Rừng), còn đối với những bạn du lịch bụi như mình thì thích bãi Dứa hay bãi Dâu vì ở đây còn hoang sơ và ít người. Còn tham quan trong thành phố Vũng Tàu thì bạn có thể ghé các điểm tâm linh như Thích ca phật đài, Niết Bàn Tịnh Xá, Chùa Quan Thế Âm Bồ Tát, Linh Sơn Cố Tự, Tượng Chúa Giê-su giang tay. Các điểm di tích thì có Hải Đăng Vũng Tàu, khu di tích Đình Thắng Tam, Bạch Dinh, Đền Ông Trần (Nhà Lớn), Bảo tàng vũ khí cổ. Ngoài ra, bạn có thể ghé tham quan Khu du lịch Hồ Mây nằm trên đỉnh núi lớn bằng cáp treo, trên này có dịch vụ khách sạn, cắm trại qua đêm, nhà hàng và khu vui chơi cho người lớn và trẻ em. Một hướng khách để tham quan Vũng Tàu là hướng về Long Hải (tới thành phố Bà Rịa, rẻ trái sẽ qua hướng Long Hải, Hồ Tràm), khu vực bên này chủ yếu là nghỉ dưỡng, tắm biển và tắm bùn khoáng tại Khu du lịch Suối Khoáng Bình Châu. \r\nTừ Vũng Tàu nếu có thời gian bạn có thể đi tàu sang Côn Đảo. Đến Côn Đảo, bạn cần 2 – 3 ngày để tham quan hết các điểm đặc sắc nơi đây. Ngay trung tâm thành phố bạn hãy ghé tham quan Miếu bà Phi Yến, Trại Phú Hải, hệ thống chuồng cọp Pháp – Mỹ, dinh Chúa Đảo, chùa Vân Sơn, viếng mộ chị Võ Thị Sáu tại Nghĩa Trang Hàng Dương. Chiều bạn hãy chạy xe về hướng sân bay Cỏ Ống để tham quan biển Đầm Trầu – bãi biển đẹp và hoang sơ nhất tại Côn Đảo, trở ra bạn nên ghé viếng Dinh Cậu – con thứ phi Phi Yến và vua Nguyễn Ánh. Về lại trung tâm ngắm hoàng hôn buông xuống tại cầu tàu 914. Ngày hôm sau bạn chạy xe ra cảng Bến Đầm vào sáng sớm để trải nghiệm cuộc sống của người dân Côn Đảo, ngắm các địa danh mũi Cá Mập, đỉnh Tình Yêu, tiếp tục ghé Bãi Nhát ngắm nhìn biển trời bao la, bãi biển bị tác động bởi thủy triều, khi nước biển rút sẽ lộ ra một bãi cát trắng mịn. Còn thời gian tại Côn Đảo bạn hãy thuê tàu ra tham quan Hòn Bảy Cạnh, Hòn Tài để khám phá hệ thống rừng sinh thái ngập mặn, lặn ngắm san hô hay xem rùa biển lên đẻ trứng tại Hòn Bảy Cạnh.\r\nVũng Tàu có lễ hội gì đặc sắc?\r\nHàng năm, Vũng Tàu thường tổ chức Festival diều vào tháng 4 hàng năm nên bạn có thể đến đây và chiêm ngưỡng những chú diều nhiều màu sắc rực rỡ giữa phố biển (thời gian chính xác tùy theo năm). Ngoài ra, Vũng Tàu còn có các lễ hội như Lễ hội Nghinh Ông từ 16 – 18/8 âm lịch tại Đình thần Thắng Tam, Lễ hội Miếu Bà Ngũ Hành từ 16 – 18/10 âm lịch tại miếu bà hay Lễ hội bắn súng Thần Công được tổ chức vào dịp khai hội đầu năm và dịp sự kiện quan trọng của thành phố tại Bạch Dinh.\r\nTại Côn Đảo có những ngày lễ rất đặc biệt mà ai trong chúng ta cũng muốn ghé đó là Ngày Côn Đảo - thường vào định kỳ tháng 7 tại Nghĩa Trang Hàng Dương để nhắc nhớ chúng ta về ngày giỗ chung (20-6 âm lịch) của những người tù chính trị đã mất tại Côn Đảo. Ngày giỗ Cô Sáu, cô hy sinh ngày 23-1-1952 đã trở thành một ngày hội của người dân Côn Đảo, gia đình nào cũng làm giỗ chị, nhà nhà mang hoa, mang lễ ra thắp hương kín mộ chị từ sáng tới khuya. Ngoài ra, lễ hội Giỗ bà Phi Yến cũng được tổ chức long trọng vào ngày 17-18/10 âm lịch hàng năm tại miếu bà Phi Yến.\r\nKhách sạn\r\nVũng Tàu có rất nhiều khách sạn để bạn lựa chọn, tuy nhiên lưu ý là Vũng Tàu chủ yếu phục vụ du khách vào dịp cuối tuần nên giá sẽ cao hơn so với giá ngày thường nên bạn lưu ý đặt sớm hoặc tham quan các website Agoda, Mytour để có những lựa chọn hợp với túi tiền của mình nhé. Vài gợi ý cho bạn như sau khách sạn Tháng Mười, Phương Trung, Blue Sea tiêu chuẩn 2 sao hay các khách sạn 3 sao như Green, Romeliss, New Wave. Nếu bạn chọn Long Hải để thư giãn và tắm biển thì hãy lựa chọn các khách sạn như Long Hải, Gold Star, Palace resort với giá cả cũng rất phải chăng.\r\nTại Côn Đảo thì bạn có thể chọn các khách sạn như Phi Yến, Anh Đào, Thiên Tân, Côn Sơn Island, Red với tiêu chuẩn mức 1-2 sao nhưng được đánh giá tốt.\r\nẨm thực địa phương\r\nĐến Vũng Tàu bạn hãy thử qua các món ăn đặc sản địa phương như bánh canh Long Hương, bún nóng Hoà Long, bánh hỏi An Nhất, bánh xèo Long Hải, cháo chim bồ câu, bún súng Vũng Tàu, hủ tiếu mì sườn Tùng Hưng, lẩu cá đuối; hay các món dân dã, bình dân như bánh khọt, bánh bèo, chạo tôm, thịt nướng. Ngoài ra, có các món ăn vặt cũng được các bạn trẻ yêu thích là bánh bông lan trứng muối, kem Alibaba (của anh chàng người Thổ Nhĩ Kỳ).\r\nĐến Côn Đảo ngoài việc tham quan các địa danh nổi tiếng tại Côn Đảo, du khách còn có thể thưởng thức các món ăn đặc sản nơi đây như ốc vú nàng (được xem là đặc sản nổi tiếng ở đây, được chế biến luộc, hấp, xào, nướng đều rất ngon), cua mặt trăng, tôm hùm đỏ, mắm hàu, mực một nắng nướng và không quên nhâm nhi hủ mức hạt bàng.\r\nĐến Vũng Tàu mua gì về làm quà?\r\nVũng Tàu là thành phố biển nên bạn có thể chọn mua hải sản, trong đó ghẹ, cua biển, tôm, mắm ruốc, mắm nêm, tôm chua, mắm cá cơm chua ngọt… là những đặc sản nổi tiếng của địa phương. Bạn có thể mua tại các chợ phường 1, chợ mới Vũng Tàu hoặc siêu thị hải sản Baseafood. Hiện siêu thị Baseafood có 4 nhóm hàng: đông lạnh, khô, khô tẩm gia vị, nướng ăn liền; rất tiện lợi cho du khách mang về thuận tiện, trong đó mực và các loại cá tẩm gia vị rất ngon và được nhiều du khách chọn lựa. Ngoài ra, tại Vũng Tàu bạn có thể mua các sản phẩm mỹ nghệ từ vò sò, ốc với các thành phẩm độc đáo như chuông gió, đèn ngủ, bình hoa hay cả một bộ tranh sơn mài cẩn ốc trai sang trọng.\r\nTại Côn Đảo bạn nên mua mức bàng về làm quà, đây được xem như đặc sản của nơi đây bởi ở đây cây bàng khá nhiều và được người dân tận dụng làm thực phẩm, có hai loại mặn và ngọt (rang muối hoặc rang đường), hoặc hạt bàng rang đều có vị rất riêng và lạ. Ngoài ra, các đặc sản khô như mực khô, mực một nắng và có thể mua đồ lưu niệm từ những sản phẩm thủ công mỹ nghệ bằng vỏ óc. Cá tươi, mực tươi, tôm khô có thể mua trên đường Lê Hồng Phong, sẽ được đóng gói để mang theo máy bay hoặc tàu, giống như ở Phú Quốc.\r\nNhững điều lưu ý\r\nKhi ở Côn Đảo thuê xe máy thì bạn lưu ý là tại đây chỉ có một cây xăng duy nhất nên phòng hờ đổ xăng trước để nếu tối muốn dạo chơi phố biển. Còn đi tàu từ Vũng Tàu qua Côn Đảo thì lưu ý cập nhật lịch tàu chạy thường xuyên vì dễ thay đổi lịch trình nếu thời tiết xấu.\r\n', 2545, NULL, b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`MaAdmin`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`),
  ADD KEY `FK_BL_SP` (`MaSP`),
  ADD KEY `FK_BL_KH` (`MaKH`);

--
-- Indexes for table `ct_donhang`
--
ALTER TABLE `ct_donhang`
  ADD PRIMARY KEY (`MaCTDH`),
  ADD KEY `FK_CT_DonHang_DonHang` (`MaDH`),
  ADD KEY `FK_CT_DonHang_SP` (`MaSP`);

--
-- Indexes for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`MaDD`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDH`),
  ADD KEY `FK_DonHang_KhachHang` (`MaKH`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_GioHang_SanPham` (`MaSP`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`MaLH`),
  ADD KEY `FK_LH_KH` (`MaKH`);

--
-- Indexes for table `loaitintuc`
--
ALTER TABLE `loaitintuc`
  ADD PRIMARY KEY (`MaLTT`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MaMenu`);

--
-- Indexes for table `phanquyen_admin`
--
ALTER TABLE `phanquyen_admin`
  ADD PRIMARY KEY (`MaPQ`),
  ADD KEY `FK_PQAdmin_Admin` (`MaAdmin`);

--
-- Indexes for table `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`MaQC`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `FK_SP_DD` (`MaDD`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`MaSlider`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTin`),
  ADD KEY `FK_TT_LTT` (`MaLTT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `MaAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ct_donhang`
--
ALTER TABLE `ct_donhang`
  MODIFY `MaCTDH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `MaDD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `MaLH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaitintuc`
--
ALTER TABLE `loaitintuc`
  MODIFY `MaLTT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `MaMenu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phanquyen_admin`
--
ALTER TABLE `phanquyen_admin`
  MODIFY `MaPQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `MaQC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `MaSlider` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `FK_BL_KH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `FK_BL_SP` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `ct_donhang`
--
ALTER TABLE `ct_donhang`
  ADD CONSTRAINT `FK_CT_DonHang_DonHang` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`),
  ADD CONSTRAINT `FK_CT_DonHang_SP` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_DonHang_KhachHang` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `FK_GioHang_SanPham` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD CONSTRAINT `FK_LH_KH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Constraints for table `phanquyen_admin`
--
ALTER TABLE `phanquyen_admin`
  ADD CONSTRAINT `FK_PQAdmin_Admin` FOREIGN KEY (`MaAdmin`) REFERENCES `admin` (`MaAdmin`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SP_DD` FOREIGN KEY (`MaDD`) REFERENCES `diadiem` (`MaDD`);

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `FK_TT_LTT` FOREIGN KEY (`MaLTT`) REFERENCES `loaitintuc` (`MaLTT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
