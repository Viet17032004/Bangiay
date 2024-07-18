-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 03, 2024 at 06:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan1_2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id_sanpham2` int(11) NOT NULL,
  `id_nguoidung2` int(11) NOT NULL,
  `soLuong2` int(11) NOT NULL,
  `kichCo2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id_sanpham2`, `id_nguoidung2`, `soLuong2`, `kichCo2`) VALUES
(9, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hoadon` int(11) NOT NULL,
  `id_nguoidung1` int(11) NOT NULL,
  `ngayMua` datetime NOT NULL DEFAULT current_timestamp(),
  `tongDon` int(11) NOT NULL,
  `trangTDH` int(11) NOT NULL DEFAULT 1,
  `sDTDH` varchar(255) NOT NULL,
  `diaCDH` varchar(255) NOT NULL,
  `xoa_hoadon` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `id_nguoidung1`, `ngayMua`, `tongDon`, `trangTDH`, `sDTDH`, `diaCDH`, `xoa_hoadon`) VALUES
(2, 1, '2024-03-28 00:00:00', 4286200, 4, '0365245602', 'Bình Thạnh', 0),
(4, 1, '2024-03-28 00:00:00', 3176000, 4, '0365245602', 'Bình Thạnh', 0),
(8, 1, '2024-03-29 00:00:00', 3462790, 4, '0365245602', 'Bình Thạnh', 0),
(9, 1, '2024-03-29 00:00:00', 3176000, 4, '0365245602', 'Bình Thạnh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hoadonchitiet`
--

CREATE TABLE `hoadonchitiet` (
  `id_hoadon1` int(11) NOT NULL,
  `id_sanpham1` int(11) NOT NULL,
  `soLuong1` int(11) NOT NULL,
  `kichCo1` int(11) NOT NULL,
  `tongCT` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoadonchitiet`
--

INSERT INTO `hoadonchitiet` (`id_hoadon1`, `id_sanpham1`, `soLuong1`, `kichCo1`, `tongCT`) VALUES
(2, 6, 1, 1, 4286200),
(4, 1, 1, 2, 3176000),
(8, 3, 1, 1, 3462790),
(9, 1, 1, 1, 3176000);

-- --------------------------------------------------------

--
-- Table structure for table `kichco`
--

CREATE TABLE `kichco` (
  `id_kichco` int(11) NOT NULL,
  `tenKichCo` varchar(255) NOT NULL,
  `xoa_kichco` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kichco`
--

INSERT INTO `kichco` (`id_kichco`, `tenKichCo`, `xoa_kichco`) VALUES
(1, '37', 0),
(2, '38', 0),
(3, '39', 0),
(4, '40', 0),
(5, '41', 0),
(6, '42', 0),
(7, '43', 0),
(8, '44', 0),
(9, '45', 0),
(10, '46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id_nguoidung` int(11) NOT NULL,
  `tenND` varchar(255) NOT NULL,
  `matKhau` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hoVT` varchar(255) NOT NULL,
  `ngaySinh` date NOT NULL,
  `diaChi` varchar(255) NOT NULL,
  `soDT` varchar(255) NOT NULL,
  `vaiTro` int(11) NOT NULL DEFAULT 1,
  `xoa_nguoidung` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id_nguoidung`, `tenND`, `matKhau`, `email`, `hoVT`, `ngaySinh`, `diaChi`, `soDT`, `vaiTro`, `xoa_nguoidung`) VALUES
(1, 'namzee', '1234', 'nguyenvudaianm115@gmail.com', 'Nguyễn Vũ Đại Nam', '2002-11-10', 'Bình Thạnh', '0365245602', 1, 0),
(2, 'Duy123', '1234', 'duy@gmail.com', 'Nguyễn Văn Duy', '2024-03-07', 'Cần thơ', '0365245602', 1, 0),
(3, 'admin', '123', 'admin@gmail.com', 'admin', '2024-03-05', 'Hải Phòng', '0365245602', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tenSanPham` varchar(255) NOT NULL,
  `anhSanPham` varchar(255) NOT NULL,
  `gia` float NOT NULL,
  `loaiSanPham` int(11) NOT NULL,
  `luotXem` int(11) NOT NULL DEFAULT 0,
  `moTa` varchar(255) NOT NULL,
  `xoa_sanpham` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `tenSanPham`, `anhSanPham`, `gia`, `loaiSanPham`, `luotXem`, `moTa`, `xoa_sanpham`) VALUES
(1, 'Nike Air Force 1 \'07', '1.png', 3176000, 1, 37, 'Mang trên mình sự kết hợp giữa phong cách hiện đại và tinh tế, giày Nike Air Force 1 \'07 là biểu tượng của sự thanh lịch và đẳng cấp. Với chất liệu chính là da và đế cao su chắc chắn, đôi giày này không chỉ mang lại sự thoải mái mà còn thể hiện phong cách', 0),
(2, 'Air Jordan 1 Low', '2.png', 4798160, 1, 23, 'Với thiết kế thấp cổ và màu sắc đa dạng, Air Jordan 1 Low là sự kết hợp hoàn hảo giữa phong cách và thoải mái. Đế giày được thiết kế để cung cấp độ đàn hồi và sự thoải mái suốt cả ngày.', 0),
(3, 'Nike V2K Run', '3.png', 3462790, 1, 6, 'Được thiết kế cho những người đam mê thể thao và chạy bộ, giày Nike V2K Run mang lại sự thoải mái và độ bền trong mọi chuyến đi. Với công nghệ đệm tiên tiến và chất liệu thoáng khí, đôi giày này giúp bạn luôn cảm thấy thoải mái và tự tin trên mọi con đườn', 0),
(4, 'Nike Initiator', '4.png', 3919450, 1, 0, 'Được thiết kế đặc biệt cho những người mới bắt đầu hoặc muốn tăng cường khả năng chạy bộ, giày Nike Initiator cung cấp sự ổn định và hỗ trợ tốt nhất. Với công nghệ đệm Nike phổ quát, đôi giày này mang lại sự thoải mái và tự tin cho mỗi bước chạy.', 0),
(5, 'Nike Air Force 1 \'07', '5.png', 4208910, 1, 1, 'Mang trên mình sự kết hợp giữa phong cách hiện đại và tinh tế, giày Nike Air Force 1 \'07 là biểu tượng của sự thanh lịch và đẳng cấp. Với chất liệu chính là da và đế cao su chắc chắn, đôi giày này không chỉ mang lại sự thoải mái mà còn thể hiện phong cách', 0),
(6, 'Nike Air Max Plus Drift', '6.png', 4286200, 1, 6, 'Kế thừa tinh hoa của dòng giày Air Max, Nike Air Max Plus Drift kết hợp giữa sự thoải mái và phong cách. Đế giày được thiết kế để cung cấp độ đàn hồi tối ưu, trong khi chất liệu thoáng khí giúp giữ cho đôi chân luôn mát mẻ và thoải mái suốt cả ngày.', 0),
(7, 'Giày Thời Trang Unisex Puma Slipstream Premium - Xám', '7.png', 4746230, 3, 2, 'Mang lại phong cách độc đáo và hiện đại, giày Puma Slipstream Premium với màu xám thanh lịch sẽ là điểm nhấn cho bộ trang phục của bạn.', 0),
(8, 'Giày Thời Trang Nam Puma Slipstream Lo Texture Cool - Xám', '8.png', 3518860, 3, 1, 'Với chất liệu và thiết kế độc đáo, giày Puma Slipstream Lo Texture Cool màu xám sẽ là lựa chọn hoàn hảo cho phong cách thời trang nam tính và hiện đại.', 0),
(9, 'Giày Thời Trang Nam Puma-180 Perf - Xám', '9.png', 4355600, 3, 11, 'Giày Puma-180 Perf với màu xám tinh tế sẽ là điểm nhấn cho phong cách thời trang nam tính và cá tính của bạn.', 0),
(10, 'Giày Thời Trang Unisex Puma Slipstream Cord - Trắng', '10.png', 4221420, 3, 5, 'Sự kết hợp hoàn hảo giữa kiểu dáng thời trang và sự thoải mái, giày Puma Slipstream Cord màu trắng sẽ là sự lựa chọn tuyệt vời cho cả nam và nữ.', 0),
(11, 'Giày Thời Trang Unisex Puma Slipstream Hi Leather - Trắng', '11.png', 3040310, 3, 8, 'Với chất liệu da cao cấp và kiểu dáng hiện đại, giày Puma Slipstream Hi Leather màu trắng sẽ mang lại sự sang trọng và phá cách cho bất kỳ bộ trang phục nào.', 0),
(12, 'Giày Thời Trang Unisex Puma Clyde Og - Đỏ', '12.png', 3537300, 3, 0, 'Với phong cách retro và màu đỏ nổi bật, giày Puma Clyde Og là sự lựa chọn hoàn hảo cho những người yêu thích phong cách cá nhân và nổi bật.', 0),
(14, 'Sản phẩm mới', '8.png', 3122220, 1, 1, 'Đẹp', 0),
(17, 'Sản phẩm mới1', '10.png', 2050000, 1, 3, 'Hay lắm', 0),
(18, 'Sản phẩm newwww1', '6.png', 200000, 1, 0, 'Rất đắt111', 0);

-- --------------------------------------------------------

--
-- Table structure for table `soluong`
--

CREATE TABLE `soluong` (
  `id_sanpham3` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `id_kichCo1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soluong`
--

INSERT INTO `soluong` (`id_sanpham3`, `soLuong`, `id_kichCo1`) VALUES
(1, 1, 1),
(1, 100, 2),
(1, 100, 3),
(1, 100, 4),
(1, 100, 5),
(1, 100, 6),
(1, 100, 7),
(1, 100, 8),
(1, 100, 9),
(1, 100, 10),
(2, 2, 1),
(2, 100, 2),
(2, 100, 3),
(2, 100, 4),
(2, 100, 5),
(2, 100, 6),
(2, 100, 7),
(2, 103, 8),
(2, 100, 9),
(2, 100, 10),
(3, 0, 1),
(3, 100, 2),
(3, 100, 3),
(3, 100, 4),
(3, 100, 5),
(3, 100, 6),
(3, 100, 7),
(3, 100, 8),
(3, 100, 9),
(3, 100, 10),
(4, 101, 1),
(4, 100, 2),
(4, 100, 3),
(4, 100, 4),
(4, 100, 5),
(4, 100, 6),
(4, 100, 7),
(4, 100, 8),
(4, 100, 9),
(4, 100, 10),
(5, 100, 1),
(5, 100, 2),
(5, 100, 3),
(5, 100, 4),
(5, 100, 5),
(5, 100, 6),
(5, 100, 7),
(5, 100, 8),
(5, 100, 9),
(5, 100, 10),
(6, 100, 1),
(6, 100, 2),
(6, 100, 3),
(6, 100, 4),
(6, 100, 5),
(6, 100, 6),
(6, 100, 7),
(6, 100, 8),
(6, 100, 9),
(6, 100, 10),
(7, 99, 1),
(7, 100, 2),
(7, 100, 3),
(7, 100, 4),
(7, 100, 5),
(7, 100, 6),
(7, 100, 7),
(7, 100, 8),
(7, 100, 9),
(7, 100, 10),
(8, 100, 1),
(8, 100, 2),
(8, 100, 3),
(8, 100, 4),
(8, 100, 5),
(8, 100, 6),
(8, 100, 7),
(8, 100, 8),
(8, 100, 9),
(8, 100, 10),
(9, 98, 1),
(9, 100, 2),
(9, 100, 3),
(9, 100, 4),
(9, 100, 5),
(9, 100, 6),
(9, 100, 7),
(9, 100, 8),
(9, 100, 9),
(9, 100, 10),
(10, 100, 1),
(10, 100, 2),
(10, 100, 3),
(10, 100, 4),
(10, 100, 5),
(10, 100, 6),
(10, 100, 7),
(10, 100, 8),
(10, 100, 9),
(10, 100, 10),
(11, 99, 1),
(11, 100, 2),
(11, 100, 3),
(11, 100, 4),
(11, 100, 5),
(11, 100, 6),
(11, 100, 7),
(11, 100, 8),
(11, 100, 9),
(11, 100, 10),
(12, 100, 1),
(12, 100, 2),
(12, 100, 3),
(12, 100, 4),
(12, 100, 5),
(12, 100, 6),
(12, 100, 7),
(12, 100, 8),
(12, 100, 9),
(12, 100, 10),
(14, 13, 1),
(14, 10, 2),
(14, 11, 3),
(14, 10, 4),
(14, 10, 5),
(14, 2, 6),
(14, 1, 8),
(14, 3, 10),
(17, 5, 1),
(17, 6, 6),
(17, 7, 10),
(18, 7, 1),
(18, 3, 2),
(18, 3, 3),
(18, 10, 5),
(18, 12, 6),
(18, 14, 7);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id_theloai` int(11) NOT NULL,
  `tenTheLoai` varchar(255) NOT NULL,
  `xoa_theloai` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id_theloai`, `tenTheLoai`, `xoa_theloai`) VALUES
(1, 'NIKE', 0),
(2, 'ADIDAS', 0),
(3, 'PUMA', 0),
(4, 'REBOOK', 0),
(5, 'ASICS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trangthaidonhang`
--

CREATE TABLE `trangthaidonhang` (
  `id_trangthaidonhang` int(11) NOT NULL,
  `tenTrangThai` varchar(255) NOT NULL,
  `xoa_trangthai` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trangthaidonhang`
--

INSERT INTO `trangthaidonhang` (`id_trangthaidonhang`, `tenTrangThai`, `xoa_trangthai`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Đang giao', 0),
(4, 'Đã hoàn thành', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD KEY `FK_id_sanpham2` (`id_sanpham2`),
  ADD KEY `FK_kichCo2` (`kichCo2`),
  ADD KEY `FK_id_nguoidung21` (`id_nguoidung2`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`),
  ADD KEY `FK_id_nguoidung1` (`id_nguoidung1`),
  ADD KEY `FK_trangTDH` (`trangTDH`);

--
-- Indexes for table `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD PRIMARY KEY (`id_hoadon1`,`id_sanpham1`),
  ADD KEY `FK_id_sanpham1` (`id_sanpham1`),
  ADD KEY `FK_kichCo1` (`kichCo1`);

--
-- Indexes for table `kichco`
--
ALTER TABLE `kichco`
  ADD PRIMARY KEY (`id_kichco`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id_nguoidung`),
  ADD KEY `fk_id_vaiTro` (`vaiTro`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `FK_loaiSanPham` (`loaiSanPham`);

--
-- Indexes for table `soluong`
--
ALTER TABLE `soluong`
  ADD PRIMARY KEY (`id_sanpham3`,`id_kichCo1`),
  ADD KEY `FK_id_kichCo1` (`id_kichCo1`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id_theloai`);

--
-- Indexes for table `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  ADD PRIMARY KEY (`id_trangthaidonhang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_hoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kichco`
--
ALTER TABLE `kichco`
  MODIFY `id_kichco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id_nguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id_theloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  MODIFY `id_trangthaidonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `FK_id_nguoidung2` FOREIGN KEY (`id_nguoidung2`) REFERENCES `nguoidung` (`id_nguoidung`),
  ADD CONSTRAINT `FK_id_sanpham2` FOREIGN KEY (`id_sanpham2`) REFERENCES `sanpham` (`id_sanpham`),
  ADD CONSTRAINT `FK_kichCo2` FOREIGN KEY (`kichCo2`) REFERENCES `kichco` (`id_kichco`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `FK_id_nguoidung1` FOREIGN KEY (`id_nguoidung1`) REFERENCES `nguoidung` (`id_nguoidung`),
  ADD CONSTRAINT `FK_trangTDH` FOREIGN KEY (`trangTDH`) REFERENCES `trangthaidonhang` (`id_trangthaidonhang`);

--
-- Constraints for table `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD CONSTRAINT `FK_id_hoadon1` FOREIGN KEY (`id_hoadon1`) REFERENCES `hoadon` (`id_hoadon`),
  ADD CONSTRAINT `FK_id_sanpham1` FOREIGN KEY (`id_sanpham1`) REFERENCES `sanpham` (`id_sanpham`),
  ADD CONSTRAINT `FK_kichCo1` FOREIGN KEY (`kichCo1`) REFERENCES `kichco` (`id_kichco`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_loaiSanPham` FOREIGN KEY (`loaiSanPham`) REFERENCES `theloai` (`id_theloai`);

--
-- Constraints for table `soluong`
--
ALTER TABLE `soluong`
  ADD CONSTRAINT `FK_id_kichCo1` FOREIGN KEY (`id_kichCo1`) REFERENCES `kichco` (`id_kichco`),
  ADD CONSTRAINT `FK_id_sanpham3` FOREIGN KEY (`id_sanpham3`) REFERENCES `sanpham` (`id_sanpham`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
