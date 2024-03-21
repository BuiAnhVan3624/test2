-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 08, 2024 lúc 03:02 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlkho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `sophieunhap` int(11) DEFAULT NULL,
  `soluongnhap` int(11) DEFAULT NULL,
  `masanpham` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`sophieunhap`, `soluongnhap`, `masanpham`, `ID`) VALUES
(65, 30, 83, 82),
(65, 20, 87, 83),
(65, 20, 88, 84),
(65, 30, 85, 85);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `sophieuxuat` int(11) DEFAULT NULL,
  `soluongxuat` int(11) DEFAULT NULL,
  `masanpham` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieuxuat`
--

INSERT INTO `chitietphieuxuat` (`sophieuxuat`, `soluongxuat`, `masanpham`, `ID`) VALUES
(37, 10, 83, 41),
(37, 15, 85, 42),
(37, 15, 87, 43),
(37, 20, 88, 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvitinh`
--

CREATE TABLE `donvitinh` (
  `madonvitinh` int(255) NOT NULL,
  `tendonvitinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donvitinh`
--

INSERT INTO `donvitinh` (`madonvitinh`, `tendonvitinh`) VALUES
(39, 'Bộ'),
(40, 'Ống'),
(41, 'Cây'),
(42, 'Đôi '),
(43, 'Cái'),
(44, 'Gói'),
(45, 'Hộp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `dienthoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `tenkhachhang`, `diachi`, `dienthoai`) VALUES
(4, 'Hữu Hiếu ', 'Khóm 5, huyện Châu Thành tỉnh Trà Vinh', '0326589993'),
(5, 'Gia Bảo', 'Phường 8, huyện Châu Thành tỉnh Trà Vinh', '09070056556'),
(6, 'Vỹ Triết ', 'Phường 7, huyện Châu Thành, Tỉnh Trà Vinh', '0322392974'),
(7, 'Tiến Anh', 'Ấp Thanh Nguyên A, huyện Càng Long tỉnh Trà Vinh', '0359056555'),
(8, 'Hà Minh Chiến ', 'Phường 9, huyện Châu Thành, tỉnh Trà Vinh', '0912294399'),
(10, 'Kim Dương Tuấn ', 'Ấp Thanh Nguyên A, huyện Càng Long tỉnh Trà Vinh', '0326589993');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khohang`
--

CREATE TABLE `khohang` (
  `makho` int(11) NOT NULL,
  `tenkho` varchar(255) DEFAULT NULL,
  `loaisanpham` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khohang`
--

INSERT INTO `khohang` (`makho`, `tenkho`, `loaisanpham`) VALUES
(41, 'KH01_BB', 61),
(42, 'KH02_CL', 62),
(43, 'KH03_BĐ', 63),
(44, 'KH04_TN', 64),
(45, 'KH05_BR', 65),
(46, 'KH06_BC', 67);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `maloaisanpham` int(11) NOT NULL,
  `tenloaisanpham` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`maloaisanpham`, `tenloaisanpham`) VALUES
(61, 'Bóng bàn'),
(62, 'Cầu lông '),
(63, 'Bóng đá '),
(64, 'Tennis'),
(65, 'Bóng rổ'),
(67, 'Bóng chuyền');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `manhacungcap` int(11) NOT NULL,
  `tennhacungcap` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`manhacungcap`, `tennhacungcap`, `diachi`, `email`) VALUES
(4, 'Công Ty TNHH Sản Xuất Và Thương Mại HTGOLD Việt Nam', ' Khu Công Nghiệp Vừa Và Nhỏ Nguyên Khê, Xã Nguyên Khê, Huyện Đông Anh, Hà Nội', 'congtycokhihoangtung@gmail.com'),
(5, ' Đồ Tập Thể Thao - Công Ty TNHH Fitness & Yoga Việt Nam', ' 101-103 Đường 3 Tháng 2, P. 11, Q. 10, Tp. Hồ Chí Minh (TPHCM)', 'thegioidotap@gmail.com'),
(6, 'Thiết Bị Thể Thao Koji - Công Ty CP Thể Thao Koji', ' Thôn Tri Thủy, X. Tri Thủy, H. Phú Xuyên, Hà Nội', 'thuynd@koji.com.vn'),
(7, 'KAMA Sport - Công Ty TNHH Phát Triển Thương Mại Đại Thiên', ' LK708 DV15 KĐT Mậu Lương, P. Kiến Hưng, Q Hà Đông, Hà Nội', 'thethaodaithien@gmail.com'),
(8, 'Thiết Bị Thể Thao Quang Minh - Công Ty TNHH Cơ Khí Quang Minh', ' Tổ Dân Phố Số 1, Thị Trấn Quang Minh, Huyện Mê Linh, Hà Nội', 'cokhiquangminh120@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `tendangnhap` varchar(255) NOT NULL,
  `matkhau` text NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`tendangnhap`, `matkhau`, `hoten`, `sodienthoai`, `email`, `quyen`) VALUES
('dangkimbac', '827ccb0eea8a706c4c34a16891f84e7b', 'Đặng Kim Bắc', '0326972624', 'dangkimbac@gmail.com', 1),
('lamsonhau', '827ccb0eea8a706c4c34a16891f84e7b', 'Lâm Sơn Hậu', '0916741252', 'lamsonhau@gmail.com', 3),
('ngocdanthanhdt', '827ccb0eea8a706c4c34a16891f84e7b', 'Nguyễn Ngọc Đan Thanh', '0916741252', 'ngocdanthanhdt@gmail.com', 2),
('nguyenvana', '827ccb0eea8a706c4c34a16891f84e7b', 'Nguyễn Văn A', '0912969120', 'nguyenvana@gmail.com', 3),
('trangiaqui', '827ccb0eea8a706c4c34a16891f84e7b', 'Trần Gia Quí ', '0165516264', 'trangiaqui@gmail.com', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhaphang`
--

CREATE TABLE `phieunhaphang` (
  `tendangnhap` varchar(255) DEFAULT NULL,
  `sophieunhap` int(11) NOT NULL,
  `ngaynhaphang` datetime DEFAULT NULL,
  `makho` int(11) DEFAULT NULL,
  `manhacungcap` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhaphang`
--

INSERT INTO `phieunhaphang` (`tendangnhap`, `sophieunhap`, `ngaynhaphang`, `makho`, `manhacungcap`) VALUES
('dangkimbac', 65, '2024-01-03 00:00:00', 41, 4),
('ngocdanthanhdt', 66, '2024-01-03 00:00:00', 42, 5),
('nguyenvana', 67, '2024-01-03 00:00:00', 43, 8),
('trangiaqui', 68, '2024-01-03 00:00:00', 44, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuathang`
--

CREATE TABLE `phieuxuathang` (
  `tendangnhap` varchar(255) DEFAULT NULL,
  `sophieuxuat` int(11) NOT NULL,
  `ngayxuathang` datetime DEFAULT NULL,
  `makho` int(11) DEFAULT NULL,
  `makhachhang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuathang`
--

INSERT INTO `phieuxuathang` (`tendangnhap`, `sophieuxuat`, `ngayxuathang`, `makho`, `makhachhang`) VALUES
('dangkimbac', 37, '2024-01-04 00:00:00', 41, 4),
('ngocdanthanhdt', 38, '2024-01-04 00:00:00', 42, 5),
('nguyenvana', 39, '2024-01-04 00:00:00', 43, 8),
('ngocdanthanhdt', 40, '2024-01-04 00:00:00', 44, 10),
('lamsonhau', 41, '2024-01-04 00:00:00', 45, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `ma` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`ma`, `ten`) VALUES
(1, 'Quản trị'),
(2, 'Quản lý kho'),
(3, 'Nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(255) DEFAULT NULL,
  `mausac` varchar(255) DEFAULT NULL,
  `loaisanpham` int(11) DEFAULT NULL,
  `mathuonghieu` int(11) DEFAULT NULL,
  `kichthuoc` varchar(255) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `dongia` varchar(255) DEFAULT NULL,
  `donvitinh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masanpham`, `tensanpham`, `mausac`, `loaisanpham`, `mathuonghieu`, `kichthuoc`, `hinhanh`, `dongia`, `donvitinh`) VALUES
(83, 'Ống Cầu Lông Xsmash Tournament ', 'Trắng', 61, 28, 'NULL', 'uploads/quacaulongtrang.webp', '150.000 ', 40),
(85, 'Vợt cầu lông Astrox 88D pro', 'Trắng', 62, 29, 'NULL', 'uploads/votcaulongyonexastrox.jpeg', '3.250.000', 41),
(87, 'Giày tuyết sport', 'Trắng', 63, 28, '38', 'uploads/giaytuyet.jfif', '150.000 ', 42),
(88, 'Áo Bóng Đá CLB Al Nassr SN 2023-2024 Màu Vàng', 'Trắng', 63, 28, 'M', 'uploads/AoCauLacBo-ChinhThuc2023-24-Al-Nassr-SN.jpg', '150.000 ', 43),
(91, 'Túi Thể Thao Nike Shoe Box Small - Prm', 'Cam', 63, 28, 'NULL', 'uploads/tuidunggiaynikeshoebox.webp', '100.000', 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `mathuonghieu` int(11) NOT NULL,
  `tenthuonghieu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`mathuonghieu`, `tenthuonghieu`) VALUES
(28, 'Nike'),
(29, 'Yonex'),
(30, 'Adidas'),
(31, 'Filla'),
(32, 'Puma'),
(33, 'Mizuno');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `masanpham` (`masanpham`),
  ADD KEY `fk_sophieunhap` (`sophieunhap`);

--
-- Chỉ mục cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `masanpham` (`masanpham`),
  ADD KEY `sophieuxuat` (`sophieuxuat`);

--
-- Chỉ mục cho bảng `donvitinh`
--
ALTER TABLE `donvitinh`
  ADD PRIMARY KEY (`madonvitinh`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`);

--
-- Chỉ mục cho bảng `khohang`
--
ALTER TABLE `khohang`
  ADD PRIMARY KEY (`makho`),
  ADD KEY `loaisanpham` (`loaisanpham`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maloaisanpham`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`manhacungcap`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`tendangnhap`),
  ADD KEY `quyen` (`quyen`);

--
-- Chỉ mục cho bảng `phieunhaphang`
--
ALTER TABLE `phieunhaphang`
  ADD PRIMARY KEY (`sophieunhap`),
  ADD KEY `tendangnhap` (`tendangnhap`),
  ADD KEY `makho` (`makho`),
  ADD KEY `fk_manhacungcap` (`manhacungcap`);

--
-- Chỉ mục cho bảng `phieuxuathang`
--
ALTER TABLE `phieuxuathang`
  ADD PRIMARY KEY (`sophieuxuat`),
  ADD KEY `tendangnhap` (`tendangnhap`),
  ADD KEY `makho` (`makho`),
  ADD KEY `makhachhang` (`makhachhang`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`ma`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`),
  ADD KEY `mathuonghieu` (`mathuonghieu`),
  ADD KEY `donvitinh` (`donvitinh`),
  ADD KEY `fk_loaisanpham` (`loaisanpham`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`mathuonghieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `donvitinh`
--
ALTER TABLE `donvitinh`
  MODIFY `madonvitinh` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `khohang`
--
ALTER TABLE `khohang`
  MODIFY `makho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `maloaisanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `manhacungcap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `phieunhaphang`
--
ALTER TABLE `phieunhaphang`
  MODIFY `sophieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `phieuxuathang`
--
ALTER TABLE `phieuxuathang`
  MODIFY `sophieuxuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `quyen`
--
ALTER TABLE `quyen`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `mathuonghieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`sophieunhap`) REFERENCES `phieunhaphang` (`sophieunhap`),
  ADD CONSTRAINT `fk_sophieunhap` FOREIGN KEY (`sophieunhap`) REFERENCES `phieunhaphang` (`sophieunhap`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD CONSTRAINT `chitietphieuxuat_ibfk_1` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`),
  ADD CONSTRAINT `chitietphieuxuat_ibfk_2` FOREIGN KEY (`sophieuxuat`) REFERENCES `phieuxuathang` (`sophieuxuat`);

--
-- Các ràng buộc cho bảng `khohang`
--
ALTER TABLE `khohang`
  ADD CONSTRAINT `khohang_ibfk_1` FOREIGN KEY (`loaisanpham`) REFERENCES `loaisanpham` (`maloaisanpham`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`quyen`) REFERENCES `quyen` (`ma`);

--
-- Các ràng buộc cho bảng `phieunhaphang`
--
ALTER TABLE `phieunhaphang`
  ADD CONSTRAINT `fk_manhacungcap` FOREIGN KEY (`manhacungcap`) REFERENCES `nhacungcap` (`manhacungcap`) ON DELETE CASCADE,
  ADD CONSTRAINT `phieunhaphang_ibfk_1` FOREIGN KEY (`tendangnhap`) REFERENCES `nhanvien` (`tendangnhap`),
  ADD CONSTRAINT `phieunhaphang_ibfk_2` FOREIGN KEY (`makho`) REFERENCES `khohang` (`makho`),
  ADD CONSTRAINT `phieunhaphang_ibfk_3` FOREIGN KEY (`manhacungcap`) REFERENCES `nhacungcap` (`manhacungcap`);

--
-- Các ràng buộc cho bảng `phieuxuathang`
--
ALTER TABLE `phieuxuathang`
  ADD CONSTRAINT `phieuxuathang_ibfk_1` FOREIGN KEY (`tendangnhap`) REFERENCES `nhanvien` (`tendangnhap`),
  ADD CONSTRAINT `phieuxuathang_ibfk_2` FOREIGN KEY (`makho`) REFERENCES `khohang` (`makho`),
  ADD CONSTRAINT `phieuxuathang_ibfk_3` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`makhachhang`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_loaisanpham` FOREIGN KEY (`loaisanpham`) REFERENCES `loaisanpham` (`maloaisanpham`) ON DELETE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`mathuonghieu`) REFERENCES `thuonghieu` (`mathuonghieu`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`loaisanpham`) REFERENCES `loaisanpham` (`maloaisanpham`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`donvitinh`) REFERENCES `donvitinh` (`madonvitinh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
