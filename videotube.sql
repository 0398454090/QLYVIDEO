-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 22, 2023 lúc 01:45 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `videotube`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Film & Animation'),
(2, 'Autos & Vehicles'),
(3, 'Music'),
(4, 'Pets & Animals'),
(5, 'Sports'),
(6, 'Travel & Events'),
(7, 'Gaming'),
(8, 'People & Blogs'),
(9, 'Comedy'),
(10, 'Entertainment'),
(11, 'News & Politics'),
(12, 'Howto & Style'),
(13, 'Education'),
(14, 'Science & Technology'),
(15, 'Nonprofits & Activism');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` text NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `username`, `commentId`, `videoId`) VALUES
(1, 'Shiina', 0, 7),
(2, 'HN_Edm', 0, 1),
(3, 'Music_Chill', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) NOT NULL,
  `userFrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `videoId`, `filePath`, `selected`) VALUES
(1, 1, 'uploads/videos/thumbnails/1-6443c3e2cd96a.jpg', 1),
(2, 1, 'uploads/videos/thumbnails/1-6443c3e32ce9a.jpg', 0),
(3, 1, 'uploads/videos/thumbnails/1-6443c3e3b1f58.jpg', 0),
(4, 2, 'uploads/videos/thumbnails/2-6443c4008a20a.jpg', 1),
(5, 2, 'uploads/videos/thumbnails/2-6443c400c96fa.jpg', 0),
(6, 2, 'uploads/videos/thumbnails/2-6443c40138cfa.jpg', 0),
(7, 3, 'uploads/videos/thumbnails/3-6443c42153585.jpg', 1),
(8, 3, 'uploads/videos/thumbnails/3-6443c421876b8.jpg', 0),
(9, 3, 'uploads/videos/thumbnails/3-6443c421cdbb0.jpg', 0),
(10, 4, 'uploads/videos/thumbnails/4-6443c43a05ed9.jpg', 1),
(11, 4, 'uploads/videos/thumbnails/4-6443c43a36632.jpg', 0),
(12, 4, 'uploads/videos/thumbnails/4-6443c43a7cd92.jpg', 0),
(13, 5, 'uploads/videos/thumbnails/5-6443c44ec0fc2.jpg', 1),
(14, 5, 'uploads/videos/thumbnails/5-6443c44f0125a.jpg', 0),
(15, 5, 'uploads/videos/thumbnails/5-6443c44f52282.jpg', 0),
(16, 6, 'uploads/videos/thumbnails/6-6443c48b74a09.jpg', 1),
(17, 6, 'uploads/videos/thumbnails/6-6443c48b9d657.jpg', 0),
(18, 6, 'uploads/videos/thumbnails/6-6443c48bd8aa9.jpg', 0),
(19, 7, 'uploads/videos/thumbnails/7-6443c4a0156f6.jpg', 1),
(20, 7, 'uploads/videos/thumbnails/7-6443c4a03eab8.jpg', 0),
(21, 7, 'uploads/videos/thumbnails/7-6443c4a079e2c.jpg', 0),
(22, 8, 'uploads/videos/thumbnails/8-6443c52b8887c.jpg', 1),
(23, 8, 'uploads/videos/thumbnails/8-6443c52c87060.jpg', 0),
(24, 8, 'uploads/videos/thumbnails/8-6443c52e67a39.jpg', 0),
(25, 9, 'uploads/videos/thumbnails/9-6443c54cc9e0d.jpg', 1),
(26, 9, 'uploads/videos/thumbnails/9-6443c54d74bcc.jpg', 0),
(27, 9, 'uploads/videos/thumbnails/9-6443c54e94c58.jpg', 0),
(28, 10, 'uploads/videos/thumbnails/10-6443c5748e45b.jpg', 1),
(29, 10, 'uploads/videos/thumbnails/10-6443c575108a2.jpg', 0),
(30, 10, 'uploads/videos/thumbnails/10-6443c575c9568.jpg', 0),
(31, 11, 'uploads/videos/thumbnails/11-6443c595758f1.jpg', 1),
(32, 11, 'uploads/videos/thumbnails/11-6443c596483db.jpg', 0),
(33, 11, 'uploads/videos/thumbnails/11-6443c597bd6d2.jpg', 0),
(34, 12, 'uploads/videos/thumbnails/12-6443c5ba11363.jpg', 1),
(35, 12, 'uploads/videos/thumbnails/12-6443c5baf12b1.jpg', 0),
(36, 12, 'uploads/videos/thumbnails/12-6443c5bca20f1.jpg', 0),
(37, 13, 'uploads/videos/thumbnails/13-6443c618d0bea.jpg', 1),
(38, 13, 'uploads/videos/thumbnails/13-6443c61914925.jpg', 0),
(39, 13, 'uploads/videos/thumbnails/13-6443c6196925a.jpg', 0),
(40, 14, 'uploads/videos/thumbnails/14-6443c62ea792c.jpg', 1),
(41, 14, 'uploads/videos/thumbnails/14-6443c62edf9e9.jpg', 0),
(42, 14, 'uploads/videos/thumbnails/14-6443c62f4436c.jpg', 0),
(43, 15, 'uploads/videos/thumbnails/15-6443c65352bb1.jpg', 1),
(44, 15, 'uploads/videos/thumbnails/15-6443c6538a8ee.jpg', 0),
(45, 15, 'uploads/videos/thumbnails/15-6443c653dbf4d.jpg', 0),
(46, 16, 'uploads/videos/thumbnails/16-6443c6742f91d.jpg', 1),
(47, 16, 'uploads/videos/thumbnails/16-6443c6745c8b9.jpg', 0),
(48, 16, 'uploads/videos/thumbnails/16-6443c6749f059.jpg', 0),
(49, 17, 'uploads/videos/thumbnails/17-6443c6b5f07c0.jpg', 1),
(50, 17, 'uploads/videos/thumbnails/17-6443c6b66b795.jpg', 0),
(51, 17, 'uploads/videos/thumbnails/17-6443c6b70c2c6.jpg', 0),
(52, 18, 'uploads/videos/thumbnails/18-6443c6c996fa0.jpg', 1),
(53, 18, 'uploads/videos/thumbnails/18-6443c6c9d23ce.jpg', 0),
(54, 18, 'uploads/videos/thumbnails/18-6443c6ca36a99.jpg', 0),
(55, 19, 'uploads/videos/thumbnails/19-6443c6e44a205.jpg', 1),
(56, 19, 'uploads/videos/thumbnails/19-6443c6e47af33.jpg', 0),
(57, 19, 'uploads/videos/thumbnails/19-6443c6e4c1090.jpg', 0),
(58, 20, 'uploads/videos/thumbnails/20-6443c70a052b0.jpg', 1),
(59, 20, 'uploads/videos/thumbnails/20-6443c70a35240.jpg', 0),
(60, 20, 'uploads/videos/thumbnails/20-6443c70a778f5.jpg', 0),
(61, 21, 'uploads/videos/thumbnails/21-6443c737b602d.jpg', 1),
(62, 21, 'uploads/videos/thumbnails/21-6443c737e1eee.jpg', 0),
(63, 21, 'uploads/videos/thumbnails/21-6443c7382c946.jpg', 0),
(64, 22, 'uploads/videos/thumbnails/22-6443c74d5f488.jpg', 1),
(65, 22, 'uploads/videos/thumbnails/22-6443c74dc9f6c.jpg', 0),
(66, 22, 'uploads/videos/thumbnails/22-6443c74e8aa6c.jpg', 0),
(67, 23, 'uploads/videos/thumbnails/23-6443c7605356b.jpg', 1),
(68, 23, 'uploads/videos/thumbnails/23-6443c7608e438.jpg', 0),
(69, 23, 'uploads/videos/thumbnails/23-6443c760d7fdf.jpg', 0),
(70, 24, 'uploads/videos/thumbnails/24-6443c7813b840.jpg', 1),
(71, 24, 'uploads/videos/thumbnails/24-6443c781914d5.jpg', 0),
(72, 24, 'uploads/videos/thumbnails/24-6443c78233a6a.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `profilePic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Lucy', 'Tv', 'LucyTV', 'lucytv@gmail.com', '7f818fc5e88942783ad1fa360d73c8a8a4af1532cf0e83faf787541acb98d7c6d1d9b89dcac9c42b5ed5e2b022584297f61ce0c6f344d21cd7e0e66b2b1ebcef', '2023-04-19 16:05:43', 'assets/images/profilePictures/default.png'),
(2, 'Shiina', 'Mashiro', 'Shiina', 'shiina@gmail.com', '7f818fc5e88942783ad1fa360d73c8a8a4af1532cf0e83faf787541acb98d7c6d1d9b89dcac9c42b5ed5e2b022584297f61ce0c6f344d21cd7e0e66b2b1ebcef', '2023-04-19 16:07:46', 'assets/images/profilePictures/default.png'),
(3, 'HN', 'Edm', 'HN_Edm', 'hn@gmail.com', '7f818fc5e88942783ad1fa360d73c8a8a4af1532cf0e83faf787541acb98d7c6d1d9b89dcac9c42b5ed5e2b022584297f61ce0c6f344d21cd7e0e66b2b1ebcef', '2023-04-19 16:11:24', 'assets/images/profilePictures/default.png'),
(4, 'Music', 'Chill', 'Music_Chill', 'music@gmail.com', '7f818fc5e88942783ad1fa360d73c8a8a4af1532cf0e83faf787541acb98d7c6d1d9b89dcac9c42b5ed5e2b022584297f61ce0c6f344d21cd7e0e66b2b1ebcef', '2023-04-19 16:14:05', 'assets/images/profilePictures/default.png'),
(5, 'Lak', 'House', 'House_Lak', 'lak@gmail.com', '7f818fc5e88942783ad1fa360d73c8a8a4af1532cf0e83faf787541acb98d7c6d1d9b89dcac9c42b5ed5e2b022584297f61ce0c6f344d21cd7e0e66b2b1ebcef', '2023-04-19 16:16:58', 'assets/images/profilePictures/default.png'),
(6, 'Air', 'Lofi', 'Air_Lofi', 'air@gmail.com', '7f818fc5e88942783ad1fa360d73c8a8a4af1532cf0e83faf787541acb98d7c6d1d9b89dcac9c42b5ed5e2b022584297f61ce0c6f344d21cd7e0e66b2b1ebcef', '2023-04-19 16:19:58', 'assets/images/profilePictures/default.png'),
(7, 'Kien', 'Tv', 'Kien_TV', 'kien@gmail.com', '7f818fc5e88942783ad1fa360d73c8a8a4af1532cf0e83faf787541acb98d7c6d1d9b89dcac9c42b5ed5e2b022584297f61ce0c6f344d21cd7e0e66b2b1ebcef', '2023-04-19 16:23:10', 'assets/images/profilePictures/default.png'),
(8, 'Admin', '123', 'Admin', 'admin@gmail.com', '7f818fc5e88942783ad1fa360d73c8a8a4af1532cf0e83faf787541acb98d7c6d1d9b89dcac9c42b5ed5e2b022584297f61ce0c6f344d21cd7e0e66b2b1ebcef', '2023-04-19 16:26:24', 'assets/images/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `privacy` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL,
  `duration` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
(1, 'LucyTV', 'Thuyen quyen', '', 1, 'uploads/videos/6443c3ddd8a1d.mp4', 3, '2023-04-22 18:24:13', 4, '00:43'),
(2, 'LucyTV', 'Trailer Game', '', 1, 'uploads/videos/6443c3fc28774.mp4', 7, '2023-04-22 18:24:44', 1, '00:21'),
(3, 'LucyTV', 'Gensin impact archon', '', 1, 'uploads/videos/6443c41eb3170.mp4', 1, '2023-04-22 18:25:18', 2, '00:14'),
(4, 'LucyTV', 'Gensin impact Nilou ', '', 1, 'uploads/videos/6443c436808aa.mp4', 1, '2023-04-22 18:25:42', 2, '00:11'),
(5, 'LucyTV', 'Gensin impact until', '', 1, 'uploads/videos/6443c44c29693.mp4', 1, '2023-04-22 18:26:04', 2, '00:40'),
(6, 'Shiina', 'Music chill', '', 1, 'uploads/videos/6443c4890b306.mp4', 3, '2023-04-22 18:27:05', 2, '00:15'),
(7, 'Shiina', 'Music chill', '', 1, 'uploads/videos/6443c49d8a9dc.mp4', 3, '2023-04-22 18:27:25', 3, '00:15'),
(8, 'HN_Edm', 'Ban tinh oi', '', 1, 'uploads/videos/6443c51b6cfcf.mp4', 3, '2023-04-22 18:29:31', 2, '02:54'),
(9, 'HN_Edm', 'Co gai m52', '', 1, 'uploads/videos/6443c54239749.mp4', 3, '2023-04-22 18:30:10', 0, '01:41'),
(10, 'HN_Edm', 'Vi sao', '', 1, 'uploads/videos/6443c56d4d1f5.mp4', 3, '2023-04-22 18:30:53', 1, '01:00'),
(11, 'HN_Edm', 'Ep duyen', '', 1, 'uploads/videos/6443c5888fe9f.mp4', 3, '2023-04-22 18:31:20', 0, '02:14'),
(12, 'HN_Edm', 'No nhau mot loi', '', 1, 'uploads/videos/6443c5a9d5928.mp4', 3, '2023-04-22 18:31:53', 2, '02:19'),
(13, 'Music_Chill', 'Piano nhac fairy tail', '', 1, 'uploads/videos/6443c616da46e.mp4', 3, '2023-04-22 18:33:42', 0, '00:22'),
(14, 'Music_Chill', 'Piano nhac buon', '', 1, 'uploads/videos/6443c62c30079.mp4', 3, '2023-04-22 18:34:04', 0, '00:14'),
(15, 'Music_Chill', 'Hare hare ya', '', 1, 'uploads/videos/6443c6514bc4f.mp4', 3, '2023-04-22 18:34:41', 0, '00:30'),
(16, 'Music_Chill', 'Ai Wo Komete Umi Teshima', '', 1, 'uploads/videos/6443c671c7011.mp4', 3, '2023-04-22 18:35:13', 0, '00:18'),
(17, 'Air_Lofi', 'Đoa quynh lan', '', 1, 'uploads/videos/6443c6ac5ad83.mp4', 3, '2023-04-22 18:36:12', 0, '00:12'),
(18, 'Air_Lofi', 'Take Me Hand', '', 1, 'uploads/videos/6443c6c5b14d7.mp4', 3, '2023-04-22 18:36:37', 0, '00:25'),
(19, 'Air_Lofi', 'Mad Love', '', 1, 'uploads/videos/6443c6e0ca2d6.mp4', 3, '2023-04-22 18:37:04', 0, '00:20'),
(20, 'Air_Lofi', 'Nguoi em co đo', '', 1, 'uploads/videos/6443c706d4a9e.mp4', 3, '2023-04-22 18:37:42', 0, '00:15'),
(21, 'Kien_TV', 'Thuy trieu', '', 1, 'uploads/videos/6443c734e7e03.mp4', 1, '2023-04-22 18:38:28', 0, '00:15'),
(22, 'Kien_TV', 'Thieu nien remix', '', 1, 'uploads/videos/6443c7491276a.mp4', 3, '2023-04-22 18:38:49', 0, '01:00'),
(23, 'Kien_TV', 'Que boi remix', '', 1, 'uploads/videos/6443c75d7763e.mp4', 3, '2023-04-22 18:39:09', 0, '00:24'),
(24, 'Kien_TV', 'Mang chung remix', '', 1, 'uploads/videos/6443c77dab70f.mp4', 3, '2023-04-22 18:39:41', 0, '00:47');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
