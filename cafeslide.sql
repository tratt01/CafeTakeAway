-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: Jun 16, 2022 at 06:35 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafeslide`
--

-- --------------------------------------------------------

--
-- Table structure for table `ct_hoadon`
--

CREATE TABLE `ct_hoadon` (
  `MaHoaDon` varchar(30) NOT NULL,
  `MaSP` int(30) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ct_hoadon`
--

INSERT INTO `ct_hoadon` (`MaHoaDon`, `MaSP`, `SoLuong`) VALUES
('1', 11, 1),
('1', 12, 1),
('2', 9, 1),
('2', 13, 1),
('3', 4, 4),
('3', 5, 1),
('3', 13, 1),
('4', 2, 1),
('4', 3, 1),
('5', 7, 1),
('5', 11, 1),
('6', 3, 1),
('6', 9, 1),
('6', 12, 1),
('7', 3, 1),
('7', 10, 1),
('8', 3, 1),
('9', 8, 1),
('9', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ct_phieunhap`
--

CREATE TABLE `ct_phieunhap` (
  `MaPN` varchar(30) NOT NULL,
  `MaNL` varchar(30) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ct_phieunhap`
--

INSERT INTO `ct_phieunhap` (`MaPN`, `MaNL`, `SoLuong`, `DonGia`) VALUES
('1', '3', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ct_phieuxuat`
--

CREATE TABLE `ct_phieuxuat` (
  `MaPhieuXuat` varchar(30) NOT NULL,
  `MaNguyenLieu` varchar(30) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonVi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ct_phieuxuat`
--

INSERT INTO `ct_phieuxuat` (`MaPhieuXuat`, `MaNguyenLieu`, `SoLuong`, `DonVi`) VALUES
('1', '2', 100, '100'),
('1', '1', 100, '100');

-- --------------------------------------------------------

--
-- Table structure for table `ct_sanpham`
--

CREATE TABLE `ct_sanpham` (
  `MaSanPham` int(30) NOT NULL,
  `MaNguyenLieu` varchar(30) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonVi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ct_sanpham`
--

INSERT INTO `ct_sanpham` (`MaSanPham`, `MaNguyenLieu`, `SoLuong`, `DonVi`) VALUES
(1, '3', 30, 'ml'),
(1, '2', 50, 'gam');

-- --------------------------------------------------------

--
-- Table structure for table `diadiem`
--

CREATE TABLE `diadiem` (
  `MaDiaDiem` varchar(30) NOT NULL,
  `MaNV` varchar(30) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `NgayThanhToan` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diadiem`
--

INSERT INTO `diadiem` (`MaDiaDiem`, `MaNV`, `DiaChi`, `NgayThanhToan`) VALUES
('Q7_HCM', 'QL02', '453 Nguyễn Bính, Quận 7', '2022-06-14'),
('Q8_HCM', 'QL01', '123 Nguyễn Phương, Quận 8', '2022-06-14'),
('Q9_HCM', 'ADMIN01', '123 Man Thiện, Lê Văn Việt, Quận 9', '2022-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` varchar(30) NOT NULL,
  `MaNV` varchar(30) NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `MaNV`, `NgayLap`, `TongTien`) VALUES
('1', 'ADMIN01', '2022-05-31', 109500),
('2', 'ADMIN01', '2022-05-31', 104000),
('3', 'ADMIN01', '2022-05-31', 252000),
('4', 'ADMIN01', '2022-06-02', 53750),
('5', 'QL01', '2022-06-02', 102000),
('6', 'ADMIN01', '2022-06-03', 135250),
('7', 'QL02', '2022-06-14', 78750),
('8', 'QL02', '2022-06-14', 23750),
('9', 'ADMIN01', '2022-06-14', 102440);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoai` varchar(255) NOT NULL,
  `TenLoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoai`, `TenLoai`) VALUES
('1', 'Cà Phê'),
('2', 'Trà'),
('3', 'Trà sữa');

-- --------------------------------------------------------

--
-- Table structure for table `nguyenlieu`
--

CREATE TABLE `nguyenlieu` (
  `MaNguyenLieu` varchar(30) NOT NULL,
  `TenNguyenLieu` varchar(255) NOT NULL,
  `DonVi` varchar(30) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguyenlieu`
--

INSERT INTO `nguyenlieu` (`MaNguyenLieu`, `TenNguyenLieu`, `DonVi`, `SoLuong`) VALUES
('1', 'Đường', 'gam', 100000),
('2', 'Cafe', 'gam', 100000),
('3', 'Sữa', 'ml', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(255) NOT NULL,
  `TenNCC` text NOT NULL,
  `Email` text NOT NULL,
  `Sdt` text NOT NULL,
  `DiaChi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `Email`, `Sdt`, `DiaChi`) VALUES
('CT_LongChau', 'CTY TNHH Long Châu', 'longchau@gmail.com', '3245432432', '453 Nguyễn Bính, Quận 7');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(30) NOT NULL,
  `Ho` varchar(30) NOT NULL,
  `Ten` varchar(30) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `GioiTinh` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Sdt` varchar(30) NOT NULL,
  `CMND` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `Ho`, `Ten`, `NgaySinh`, `DiaChi`, `GioiTinh`, `Email`, `Sdt`, `CMND`) VALUES
('ADMIN01', 'Trần Văn', 'Hùng', '2000-05-11', '125 Trần Phú , Cần Thơ', 'Nam', 'hung@gmail.com', '0123456789', '987654321'),
('QL01', 'Nguyễn Thị', 'Hiền', '2000-05-07', '125 Trần Phú , Cần Thơ Nụ', 'Nữ', 'thach@gmail.com', '0123456789', '987654321'),
('QL02', 'Trịnh Thăng', 'Long', '1999-06-12', '125 Trần Phú , Cần Thơ Nụ', 'Nam', 'thach@gmail.com', '0123456789', '1234567865'),
('QL03', 'Trần Văn', 'Sĩ', '1997-03-05', '125 Trần Phú , Cần Thơ Nụ', 'Nam', 'thach@gmail.com', '0123456789', '123457'),
('QL04', 'Lương Văn', 'Tần', '1998-07-24', '125 Trần Phú , Cần Thơ Nụ', 'Nam', 'thach@gmail.com', '0123456789', '1223455');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPhieuNhap` varchar(30) NOT NULL,
  `MaNV` varchar(30) NOT NULL,
  `MaNCC` varchar(30) NOT NULL,
  `NgayNhap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`MaPhieuNhap`, `MaNV`, `MaNCC`, `NgayNhap`) VALUES
('1', 'ADMIN01', 'CT_LongChau', '2022-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPhieuXuat` varchar(30) NOT NULL,
  `MaNV` varchar(30) NOT NULL,
  `NgayXuat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieuxuat`
--

INSERT INTO `phieuxuat` (`MaPhieuXuat`, `MaNV`, `NgayXuat`) VALUES
('1', 'ADMIN01', '2022-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(30) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `DonGia` float NOT NULL,
  `DonGiaSauKM` float DEFAULT NULL,
  `TinhTrang` varchar(255) NOT NULL,
  `MieuTa` varchar(255) NOT NULL,
  `Anh` varchar(255) NOT NULL,
  `KhuyenMai` tinyint(1) DEFAULT NULL,
  `MoiNhat` tinyint(1) DEFAULT NULL,
  `MaLoai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `DonGia`, `DonGiaSauKM`, `TinhTrang`, `MieuTa`, `Anh`, `KhuyenMai`, `MoiNhat`, `MaLoai`) VALUES
(1, 'Cà Phê Sữa Đá', 35000, 29750, 'Có sẵn', 'Cà phê được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.\r\n\r\n', 'ca-phe-sua-da.jpg', 1, 0, '1'),
(2, 'Bạc Xỉu Đá', 30000, NULL, 'Có sẵn', 'Bạc sỉu chính là \"Ly sữa trắng kèm một chút cà phê\". Thức uống này rất phù hợp những ai vừa muốn trải nghiệm chút vị đắng của cà phê vừa muốn thưởng thức vị ngọt béo ngậy từ sữa.', 'bac-xiu-da.jpg', 0, 0, '1'),
(3, 'Cà Phê Đen Đá\r\n', 25000, 23750, 'Có sẵn', 'Không ngọt ngào như Bạc sỉu hay Cà phê sữa, Cà phê đen mang trong mình phong vị trầm lắng, thi vị hơn. Người ta thường phải ngồi rất lâu mới cảm nhận được hết hương thơm ngào ngạt, phảng phất mùi cacao và cái đắng mượt mà trôi tuột xuống vòm họng.\r\n\r\n', 'ca-phe-den-da.jpg', 1, 0, '1'),
(4, 'Latte Nóng', 40000, NULL, 'Có sẵn', 'Một sự kết hợp tinh tế giữa vị đắng cà phê Espresso nguyên chất hòa quyện cùng vị sữa nóng ngọt ngào, bên trên là một lớp kem mỏng nhẹ tạo nên một tách cà phê hoàn hảo về hương vị lẫn nhãn quan.', 'latte-nong.jpg', 0, 0, '1'),
(5, 'Americano Nóng', 40000, NULL, 'Có sẵn', 'Americano được pha chế bằng cách pha thêm nước với tỷ lệ nhất định vào tách cà phê Espresso, từ đó mang lại hương vị nhẹ nhàng và giữ trọn được mùi hương cà phê đặc trưng.', 'americano-nong.jpg', 0, 0, '1'),
(6, 'Trà Đào Cam Sả Đá', 45000, NULL, 'Có sẵn', 'Vị thanh ngọt của đào Hy Lạp, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.', 'tra-dao-cam-xa-da.jpg', 0, 0, '2'),
(7, 'Trà Đào Cam Sả Nóng', 52000, NULL, 'Có sẵn', 'Vị thanh ngọt của đào Hy Lạp, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.', 'tdcs-nong.jpg', 0, 0, '2'),
(8, 'Trà Hạt Sen Nóng', 52000, 50440, 'Có sẵn', 'Nền trà oolong hảo hạng kết hợp cùng hạt sen tươi, bùi bùi và lớp foam cheese béo ngậy. Trà hạt sen là thức uống thanh mát, nhẹ nhàng phù hợp cho cả buổi sáng và chiều tối.', 'tra-sen-nong.jpg', 1, 0, '2'),
(9, 'Trà Đen Macchiato\r\n', 65000, 52000, 'Có sẵn', 'Trà đen được ủ mới mỗi ngày, giữ nguyên được vị chát mạnh mẽ đặc trưng của lá trà, phủ bên trên là lớp Macchiato \"homemade\" bồng bềnh quyến rũ vị phô mai mặn mặn mà béo béo.', 'tra-den-matchiato.jpg', 1, 1, '2'),
(10, 'Trà Sữa Mắc Ca Trân Châu Trắng', 55000, NULL, 'Có sẵn', 'Mỗi ngày với The Coffee House sẽ là điều tươi mới hơn với sữa hạt mắc ca thơm ngon, bổ dưỡng quyện cùng nền trà oolong cho vị cân bằng, ngọt dịu đi kèm cùng Trân châu trắng giòn dai mang lại cảm giác “đã” trong từng ngụm trà sữa.', 'tra-sua-mac-ca.jpg', 0, 1, '3'),
(11, 'Hồng Trà Sữa Trân Châu', 50000, NULL, 'Có sẵn', 'Thêm chút ngọt ngào cho ngày mới với hồng trà nguyên lá, sữa thơm ngậy được cân chỉnh với tỉ lệ hoàn hảo, cùng trân châu trắng dai giòn có sẵn để bạn tận hưởng từng ngụm trà sữa ngọt ngào thơm ngậy thiệt đã.', 'hong-tra-sua-tran-chau.jpg', 0, 1, '3'),
(12, 'Trà Sữa Oolong Nướng Nóng', 70000, 59500, 'Có sẵn', 'Đậm đà chuẩn gu và ấm nóng - bởi lớp trà oolong nướng đậm vị hoà cùng lớp sữa thơm béo. Hương vị chân ái đúng gu đậm đà - trà oolong được \"sao\" (nướng) lâu hơn cho vị đậm đà, hoà quyện với sữa thơm ngậy. Cho từng ngụm ấm áp, lưu luyến vị trà sữa đậm đà mã', 'oolong-nuong-nong.jpg', 1, 1, '3'),
(13, 'Hồng Trà Latte', 52000, NULL, '', 'Mỗi ngày với The Coffee House sẽ là điều tươi mới hơn với sữa hạt mắc ca thơm ngon, bổ dưỡng quyện cùng nền trà oolong cho vị cân bằng, ngọt dịu đi kèm cùng Trân châu trắng giòn dai mang lại cảm giác “đã” trong từng ngụm trà sữa.', 'hong-tra-latte.jpg', 0, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `manv` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `chucvu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`manv`, `username`, `password`, `chucvu`) VALUES
('ADMIN01', 'admin', 'admin', 'ADMIN'),
('QL01', 'quanly01', '123', 'Quản Lý'),
('QL02', 'quanly02', '123', 'Quản Lý'),
('QL03', 'a', 'a', 'Quản Lý'),
('QL04', 'b', 'b', 'Quản Lý');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ct_hoadon`
--
ALTER TABLE `ct_hoadon`
  ADD KEY `MaHoaDon` (`MaHoaDon`,`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `ct_phieunhap`
--
ALTER TABLE `ct_phieunhap`
  ADD KEY `MaNL` (`MaNL`),
  ADD KEY `MaPN` (`MaPN`);

--
-- Indexes for table `ct_phieuxuat`
--
ALTER TABLE `ct_phieuxuat`
  ADD KEY `MaPhieuXuat` (`MaPhieuXuat`,`MaNguyenLieu`),
  ADD KEY `MaNguyenLieu` (`MaNguyenLieu`);

--
-- Indexes for table `ct_sanpham`
--
ALTER TABLE `ct_sanpham`
  ADD KEY `MaSanPham` (`MaSanPham`,`MaNguyenLieu`),
  ADD KEY `MaNguyenLieu` (`MaNguyenLieu`);

--
-- Indexes for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`MaDiaDiem`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Indexes for table `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  ADD PRIMARY KEY (`MaNguyenLieu`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPhieuNhap`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaNCC` (`MaNCC`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPhieuXuat`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD UNIQUE KEY `MaSP` (`MaSP`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`manv`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `manv` (`manv`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ct_hoadon`
--
ALTER TABLE `ct_hoadon`
  ADD CONSTRAINT `ct_hoadon_ibfk_1` FOREIGN KEY (`MaHoaDon`) REFERENCES `hoadon` (`MaHoaDon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ct_hoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ct_phieunhap`
--
ALTER TABLE `ct_phieunhap`
  ADD CONSTRAINT `ct_phieunhap_ibfk_2` FOREIGN KEY (`MaNL`) REFERENCES `nguyenlieu` (`MaNguyenLieu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ct_phieunhap_ibfk_3` FOREIGN KEY (`MaPN`) REFERENCES `phieunhap` (`MaPhieuNhap`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ct_phieuxuat`
--
ALTER TABLE `ct_phieuxuat`
  ADD CONSTRAINT `ct_phieuxuat_ibfk_2` FOREIGN KEY (`MaNguyenLieu`) REFERENCES `nguyenlieu` (`MaNguyenLieu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ct_phieuxuat_ibfk_3` FOREIGN KEY (`MaPhieuXuat`) REFERENCES `phieuxuat` (`MaPhieuXuat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ct_sanpham`
--
ALTER TABLE `ct_sanpham`
  ADD CONSTRAINT `ct_sanpham_ibfk_1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ct_sanpham_ibfk_2` FOREIGN KEY (`MaNguyenLieu`) REFERENCES `nguyenlieu` (`MaNguyenLieu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD CONSTRAINT `diadiem_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaisanpham` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
