-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 04:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videotube`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` text NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `videoId`, `responseTo`, `body`, `datePosted`) VALUES
(1, 'annagnatyuck', 18, 0, 'Hi everyone!', '2020-05-05 23:02:08'),
(2, 'annagnatyuck', 18, 0, 'Nice video!!!!', '2020-05-05 23:11:41'),
(3, 'annagnatyuck', 18, 0, 'test comment!', '2020-05-05 23:21:57'),
(4, 'annagnatyuck', 18, 0, 'test comment!', '2020-05-05 23:22:30'),
(5, 'annagnatyuck', 18, 0, 'Another comment!', '2020-05-05 23:23:45'),
(6, 'annagnatyuck', 18, 0, 'sdfsdfsdfsdf!', '2020-05-06 15:48:13'),
(7, 'annagnatyuck', 18, 0, 'Hi!', '2020-05-06 15:50:07'),
(8, 'annagnatyuck', 18, 0, 'zxcveargrsbzcvzxv', '2020-05-06 15:51:09'),
(9, 'annagnatyuck', 18, 0, 'fwefrwfsdfsdf', '2020-05-06 16:05:49'),
(10, 'annagnatyuck', 18, 0, 'frefergsdfsdfsd', '2020-05-06 16:06:09'),
(11, 'annagnatyuck', 18, 0, 'sfsdfewrfsdsadcsdc', '2020-05-06 16:17:42'),
(12, 'annagnatyuck', 18, 0, 'sdfsdfsdfsdf', '2020-05-06 16:40:07'),
(13, 'annagnatyuck', 18, 0, 'sdfsdfsdf', '2020-05-06 16:45:06'),
(14, 'annagnatyuck', 18, 0, 'sdfsdfsdf', '2020-05-06 16:45:18'),
(15, 'annagnatyuck', 18, 0, 'Hiiii!', '2020-05-06 16:45:47'),
(16, 'annagnatyuck', 18, 0, 'sdfsdfsdf', '2020-05-06 16:46:11'),
(17, 'annagnatyuck', 18, 0, 'hiiiii', '2020-05-06 16:49:43'),
(18, 'annagnatyuck', 18, 0, 'sfdsdfsdfsdf', '2020-05-06 16:50:07'),
(19, 'annagnatyuck', 18, 0, 'fsdfsf', '2020-05-06 16:50:25'),
(20, 'annagnatyuck', 18, 0, 'sfsdf', '2020-05-06 16:50:46'),
(21, 'annagnatyuck', 18, 0, 'ggggsdfgsdfsdf', '2020-05-06 16:51:54'),
(22, 'annagnatyuck', 18, 0, 'fsdfsdf', '2020-05-06 16:54:02'),
(23, 'annagnatyuck', 18, 0, 'sdfsfsdf', '2020-05-06 16:56:18'),
(24, 'annagnatyuck', 18, 0, 'sfsfsfd', '2020-05-06 16:56:39'),
(25, 'annagnatyuck', 18, 0, 'sdfsdfsdf', '2020-05-06 16:59:18'),
(26, 'annagnatyuck', 18, 0, 'sdfsdfsdf', '2020-05-06 17:01:54'),
(27, 'annagnatyuck', 18, 0, 'werwrwerwers', '2020-05-06 17:03:34'),
(28, 'annagnatyuck', 18, 0, 'sfsdfsdf', '2020-05-06 17:05:09'),
(29, 'annagnatyuck', 19, 0, 'sdfsfsdf', '2020-05-06 17:08:56'),
(30, 'annagnatyuck', 19, 0, 'sfsdfsdf', '2020-05-06 17:11:41'),
(31, 'annagnatyuck', 18, 0, 'rdfsdcsdf', '2020-05-06 17:16:54'),
(32, 'andreyfits', 18, 0, 'sdfsdfsdf', '2020-05-06 17:18:53'),
(33, 'annagnatyuck', 18, 0, 'sdfsfsdf', '2020-05-06 17:20:36'),
(34, 'annagnatyuck', 18, 0, 'czvzxvzv', '2020-05-06 17:20:48'),
(35, 'annagnatyuck', 18, 34, 'sdfsdf', '2020-05-06 17:21:00'),
(36, 'annagnatyuck', 18, 0, 'sfsdfsd', '2020-05-06 17:22:09'),
(37, 'annagnatyuck', 18, 0, 'sdfsdfsdf', '2020-05-06 17:22:38'),
(38, 'annagnatyuck', 18, 0, 'sfsfsdf', '2020-05-06 17:28:49'),
(39, 'annagnatyuck', 18, 0, 'sfdsdfdsf', '2020-05-06 17:32:32'),
(40, 'annagnatyuck', 18, 0, 'sfsdfs', '2020-05-06 17:32:58'),
(41, 'annagnatyuck', 18, 0, 'sfsdfsdf', '2020-05-06 17:33:10'),
(42, 'annagnatyuck', 18, 0, 'sfsdfsdf', '2020-05-06 17:34:45'),
(43, 'annagnatyuck', 18, 0, 'fsdfsdfs', '2020-05-06 17:34:56'),
(44, 'annagnatyuck', 18, 0, 'sdfsdfsdf', '2020-05-06 17:37:19'),
(45, 'annagnatyuck', 18, 0, 'sdfsdfsdf', '2020-05-06 17:42:43'),
(46, 'annagnatyuck', 18, 45, 'sdfsdfsdf', '2020-05-06 17:42:52'),
(47, 'annagnatyuck', 18, 0, 'sfsdfsdf', '2020-05-06 17:42:54'),
(48, 'annagnatyuck', 18, 0, 'sdfsdfsfsdf', '2020-05-06 18:10:53'),
(49, 'annagnatyuck', 18, 0, 'sdfsdfsdf', '2020-05-06 18:22:10'),
(50, 'annagnatyuck', 18, 0, 'fsdfsdccxc', '2020-05-06 18:23:26'),
(51, 'annagnatyuck', 18, 0, 'sfecs wew cs', '2020-05-06 18:34:50'),
(52, 'annagnatyuck', 18, 0, 'sfsdf', '2020-05-06 18:38:42'),
(53, 'annagnatyuck', 18, 0, 'sfsfsccx', '2020-05-06 18:39:31'),
(54, 'annagnatyuck', 18, 53, 'sdfsdf', '2020-05-06 18:39:42'),
(55, 'annagnatyuck', 18, 0, 'ssfsdfsdf', '2020-05-06 18:56:48'),
(56, 'annagnatyuck', 18, 0, 'sfsdfsdcxc', '2020-05-06 18:56:59'),
(57, 'andreyfits', 18, 0, 'sdfsdfsdfsdfsdf', '2020-05-06 19:00:57'),
(58, 'andreyfits', 18, 0, 'zxcvzxv', '2020-05-06 19:08:54'),
(59, 'andreyfits', 18, 0, 'sfscxc', '2020-05-06 19:09:20'),
(60, 'andreyfits', 18, 0, 'sfsdfsdfsdf', '2020-05-06 19:49:09'),
(61, 'andreyfits', 18, 60, 'This is a response!', '2020-05-06 20:08:11'),
(62, 'andreyfits', 18, 60, 'dscscxswedf', '2020-05-06 20:20:51'),
(63, 'andreyfits', 18, 62, 'sdfsdcsdf', '2020-05-06 20:21:01'),
(64, 'andreyfits', 18, 63, 'sfsdfsdfsdfsdfs', '2020-05-06 20:23:24'),
(65, 'andreyfits', 18, 62, 'sfsdfsdfsd', '2020-05-06 20:25:46'),
(66, 'andreyfits', 18, 63, 'sdfsdfsdfsdf', '2020-05-06 20:27:25'),
(67, 'andreyfits', 18, 66, 'sdfwefsdfr', '2020-05-06 20:29:50'),
(68, 'andreyfits', 18, 62, 'sdfsdcxccfsf', '2020-05-06 20:29:59'),
(69, 'andreyfits', 18, 68, 'sfscxf', '2020-05-06 20:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dislikes`
--

INSERT INTO `dislikes` (`id`, `username`, `commentId`, `videoId`) VALUES
(28, 'annagnatyuck', 55, 0),
(32, 'annagnatyuck', 56, 0),
(46, 'andreyfits', 62, 0);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `commentId`, `videoId`) VALUES
(64, 'andreyfits', 0, 18),
(67, 'andreyfits', 0, 19),
(74, 'andreyfits', 57, 0),
(92, 'andreyfits', 60, 0),
(94, 'andreyfits', 59, 0),
(95, 'andreyfits', 63, 0),
(96, 'andreyfits', 67, 0),
(99, 'annagnatyuck', 0, 20),
(100, 'annagnatyuck', 0, 23),
(101, 'annagnatyuck', 0, 27);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) NOT NULL,
  `userFrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `userTo`, `userFrom`) VALUES
(8, 'annagnatyuck', 'andreyfits'),
(11, 'mike123', 'andreyfits'),
(13, 'mickey-mouse', 'andreyfits'),
(17, 'andreyfits', 'annagnatyuck'),
(18, 'mike123', 'annagnatyuck'),
(19, 'littlemac', 'annagnatyuck');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `videoId`, `filePath`, `selected`) VALUES
(25, 18, 'uploads/videos/thumbnails/18-5eaffb35c572b.jpg', 1),
(26, 18, 'uploads/videos/thumbnails/18-5eaffb36b5320.jpg', 0),
(27, 18, 'uploads/videos/thumbnails/18-5eaffb3745c79.jpg', 0),
(28, 19, 'uploads/videos/thumbnails/19-5eb16483a01c5.jpg', 0),
(29, 19, 'uploads/videos/thumbnails/19-5eb164842ffb5.jpg', 1),
(30, 19, 'uploads/videos/thumbnails/19-5eb16484ec125.jpg', 0),
(31, 20, 'uploads/videos/thumbnails/20-5eb40f034c154.jpg', 1),
(32, 20, 'uploads/videos/thumbnails/20-5eb40f03ae5f9.jpg', 0),
(33, 20, 'uploads/videos/thumbnails/20-5eb40f044e540.jpg', 0),
(34, 21, 'uploads/videos/thumbnails/21-5eb410132d18d.jpg', 1),
(35, 21, 'uploads/videos/thumbnails/21-5eb410139340e.jpg', 0),
(36, 21, 'uploads/videos/thumbnails/21-5eb41014355c6.jpg', 0),
(37, 22, 'uploads/videos/thumbnails/22-5eb4105fe6c89.jpg', 1),
(38, 22, 'uploads/videos/thumbnails/22-5eb410604cbe0.jpg', 0),
(39, 22, 'uploads/videos/thumbnails/22-5eb41060be080.jpg', 0),
(40, 23, 'uploads/videos/thumbnails/23-5eb410c227501.jpg', 1),
(41, 23, 'uploads/videos/thumbnails/23-5eb410c2cf1f2.jpg', 0),
(42, 23, 'uploads/videos/thumbnails/23-5eb410c3ae001.jpg', 0),
(43, 24, 'uploads/videos/thumbnails/24-5eb4113acc7e4.jpg', 1),
(44, 24, 'uploads/videos/thumbnails/24-5eb4113b64976.jpg', 0),
(45, 24, 'uploads/videos/thumbnails/24-5eb4113c49d48.jpg', 0),
(46, 25, 'uploads/videos/thumbnails/25-5eb411f064fe1.jpg', 1),
(47, 25, 'uploads/videos/thumbnails/25-5eb411f1c81f3.jpg', 0),
(48, 25, 'uploads/videos/thumbnails/25-5eb411f44cea7.jpg', 0),
(49, 26, 'uploads/videos/thumbnails/26-5eb412fbb4dbd.jpg', 1),
(50, 26, 'uploads/videos/thumbnails/26-5eb412fc72ca7.jpg', 0),
(51, 26, 'uploads/videos/thumbnails/26-5eb412fdb6e6c.jpg', 0),
(52, 27, 'uploads/videos/thumbnails/27-5eb4136f1e3b5.jpg', 1),
(53, 27, 'uploads/videos/thumbnails/27-5eb4136f819b5.jpg', 0),
(54, 27, 'uploads/videos/thumbnails/27-5eb413701ffde.jpg', 0),
(55, 28, 'uploads/videos/thumbnails/28-5eb413b885a2c.jpg', 1),
(56, 28, 'uploads/videos/thumbnails/28-5eb413b8e3ba1.jpg', 0),
(57, 28, 'uploads/videos/thumbnails/28-5eb413b982b36.jpg', 0),
(58, 29, 'uploads/videos/thumbnails/29-5eb5c8da79e61.jpg', 1),
(59, 29, 'uploads/videos/thumbnails/29-5eb5c8dabb0d1.jpg', 0),
(60, 29, 'uploads/videos/thumbnails/29-5eb5c8db21e61.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `profilePic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Andrey', 'Fits', 'andreyfits', 'Andreyfits@mail.ru', '57f59791213c85e873ec4b129ef9ae4c2352c2f940704ac10451fe24c4b58ac7b7213f28f3a3a21cf1ebdfcb6ff6548918f45c7a4c67c81317b7dcf9214a7aa3', '2020-05-03 21:46:17', 'assets/images/profilePictures/default-male.png'),
(2, 'Anna', 'Gnatyuck', 'annagnatyuck', 'annav.gnatyuck@yandex.by', 'a60cb2ac8df1b77382f373fa02fcf17f90e3d61299970b2922d39876f6cc6bcb74583d7f4f560ebabe5a8fd74ca2d48727ac5afc89afedd67c7da7c43c45bc30', '2020-05-03 21:52:01', 'assets/images/profilePictures/default-female.png'),
(3, 'Donkey', 'Kong', 'donkey-kong', 'dk@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2020-05-05 11:50:41', 'assets/images/profilePictures/default.png'),
(4, 'Super', 'Mario', 'mario-sunshine', 'mario@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2020-05-05 19:57:05', 'assets/images/profilePictures/default-female.png'),
(5, 'Mike', 'Wazowski', 'mike123', 'mk@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2020-05-06 17:52:49', 'assets/images/profilePictures/default.png'),
(6, 'Little', 'Mac', 'littlemac', 'mac@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2020-05-06 17:52:49', 'assets/images/profilePictures/default-male.png'),
(7, 'Mickey', 'Mouse', 'mickey-mouse', 'mouse@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2020-05-06 17:52:49', 'assets/images/profilePictures/default.png'),
(8, 'Bugs', 'Bunny', 'bugsbunny', 'bugs@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2020-05-06 17:52:49', 'assets/images/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `privacy` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL,
  `duration` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
(18, 'andreyfits', '	\r\nDog plays in the sand on the beach', 'This is a video of my dog playing in the sand. He\'s awesome!', 1, 'uploads/videos/5eaffb298c33a.mp4', 4, '2020-05-04 14:23:21', 266, '00:05'),
(19, 'annagnatyuck', 'This is a car video', 'Here is a video of my car', 1, 'uploads/videos/5eb16470c49af.mp4', 2, '2020-05-05 16:04:48', 85, '00:08'),
(20, 'andreyfits', 'Man playing guitar having fun', 'Man playing guitar having fun', 1, 'uploads/videos/5eb40ef471c5f.mp4', 3, '2020-05-07 16:36:52', 6, '00:10'),
(21, 'donkey-kong', 'Woman in front of the computer', 'A woman is working now of the computer', 1, 'uploads/videos/5eb410086c8cb.mp4', 14, '2020-05-07 16:41:28', 0, '00:06'),
(22, 'donkey-kong', 'Woman walking with phone', 'This is some stock footage I found', 1, 'uploads/videos/5eb4105610738.mp4', 8, '2020-05-07 16:42:46', 2, '00:04'),
(23, 'mike123', 'Ducks! Awesome!', 'Here are some ducks. Enjoy!', 1, 'uploads/videos/5eb410b01ff26.mp4', 4, '2020-05-07 16:44:16', 3, '00:05'),
(24, 'andreyfits', 'Table tennis with my friends', 'My friends and I playing tennis', 1, 'uploads/videos/5eb41127aff0e.mp4', 5, '2020-05-07 16:46:15', 6, '00:09'),
(25, 'mickey-mouse', 'Card peeking', 'Playing poker', 1, 'uploads/videos/5eb411abbd96f.mp4', 7, '2020-05-07 16:48:27', 3, '00:07'),
(26, 'mickey-mouse', 'Kid playing ice hockey', 'He\'s awesome', 1, 'uploads/videos/5eb412dbc01a1.mp4', 5, '2020-05-07 16:53:31', 4, '00:13'),
(27, 'littlemac', 'Clown fish', 'Here is a video of a clownfish in water', 1, 'uploads/videos/5eb4135eb17a2.mp4', 4, '2020-05-07 16:55:42', 3, '00:05'),
(28, 'mickey-mouse', 'Some funny man swimming', '', 1, 'uploads/videos/5eb413acd0ff0.mp4', 15, '2020-05-07 16:57:00', 1, '00:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
