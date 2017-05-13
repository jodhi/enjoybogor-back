-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 Mei 2017 pada 14.47
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enjoybogor_data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assoc`
--

CREATE TABLE `assoc` (
  `user_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `assoc`
--

INSERT INTO `assoc` (`user_id`, `voucher_id`, `active`) VALUES
(21, 0, 1),
(21, 4, 0),
(21, 3, 0),
(21, 5, 0),
(21, 6, 0),
(21, 7, 0),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 11, 1),
(21, 12, 1),
(21, 13, 1),
(21, 14, 1),
(21, 15, 0),
(21, 19, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL DEFAULT '0',
  `food_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `portion_size` tinyint(100) NOT NULL,
  `menu_description` text NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`menu_id`, `restaurant_id`, `food_name`, `price`, `portion_size`, `menu_description`, `active`) VALUES
(0, 0, 'Belum Ada Makanan', 0, 0, '-', 0),
(1, 2, 'makanan', 0, 2, 'banyak deh!!', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratings_and_comments`
--

CREATE TABLE `ratings_and_comments` (
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurant_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `restaurant_name` varchar(255) NOT NULL,
  `restaurant_address` text NOT NULL,
  `restaurant_category` varchar(20) NOT NULL,
  `restaurant_contact` int(13) NOT NULL,
  `restaurant_description` text NOT NULL,
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `restaurants`
--

INSERT INTO `restaurants` (`restaurant_id`, `menu_id`, `restaurant_name`, `restaurant_address`, `restaurant_category`, `restaurant_contact`, `restaurant_description`, `latitude`, `longitude`, `active`) VALUES
(0, 0, 'Tidak Ada Restaurant', '-', 'none', 0, '-', 0, 0, 0),
(1, 0, 'test', 'test', 'test', 5468, 'banyak lagi', 0, 0, 0),
(2, 0, 'adsc', 'gvsgr', 'seffs', 0, 'sessegg', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `date_signup` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `points` int(11) DEFAULT '0',
  `user_contact` bigint(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `date_signup`, `points`, `user_contact`, `email`, `password`, `active`) VALUES
(6, 'Suryono', '2017-04-29 08:58:39', 0, 8123256, 'romano.diansyah@gmail.com', '1234', 0),
(7, 'Nino', '2017-04-30 04:45:20', 0, 812, 'romano.diansyah@gmail.com', 'sd', 0),
(8, 'Nino', '2017-04-30 04:52:49', 0, 1111, 'romano.diansyah@gmail.com', '03', 0),
(9, 'Nino', '2017-04-30 13:10:36', 0, 81232465326, 'romano.diansyah@gmail.com', 'liasc', 0),
(10, 'Malika', '2017-04-30 13:26:16', 0, 532, 'romano.diansyah@gmail.com', 'aisldk', 0),
(11, 'ed', '2017-05-01 02:03:05', 0, 222, 'rb@bjg', 'jgh', 0),
(12, '', '2017-05-02 14:08:49', 0, 0, '', '', 0),
(13, 'referf', '2017-05-02 14:09:16', 0, 2323, 'romano.diansyah@gmail.com', 'dfv', 0),
(14, 'Mohammad Romano Diansyah', '2017-05-03 09:21:53', 0, 81284863256, 'romano.diansyah@gmail.com', '7681ce2e5ff264a48c5c66708dd55c595164a904714efe4d766de921b95de60d', 0),
(15, 'Tes', '2017-05-03 09:46:24', 0, 98943, 'rom@gmail', '31ec16b27a3a6b677a8e6dce9272521b3ae4f4364bcb9f61c2dc18e7115fa174', 0),
(16, 'Mohammad Romano Diansyah', '2017-05-04 07:59:48', 0, 81284863256, 'romano.diansyah@gmail.com', 'cek', 0),
(17, 'Romano', '2017-05-04 09:13:33', 0, 5, 'romano.diansyah@gmail.com', '88d4266fd4e6338d13b845fcf289579d209c897823b9217da3e161936f031589', 0),
(18, 'jodhi', '2017-05-07 02:53:46', 0, 2315, 'jodhi@gmail.com', '53cad8e01bd4376c3c75f202a38176ecb23b73d6d76abaa3784db4913539008f', 0),
(19, 'aaa', '2017-05-07 05:50:03', 0, 214124, 'aaa@a', '9834876dcfb05cb167a5c24953eba58c4ac89b1adf57f28f2f9d09af107ee8f0', 1),
(20, 'aaaaa', '2017-05-07 15:47:22', 0, 1222222222, 'aaaaa@asasas', '21313123', 1),
(21, 'nuh', '2017-05-12 12:46:43', 988, 3, 'a@a', 'dcf2e01ec4ea88bf26bc8a8c0cb9d84bab12ddccd6e86be16b6ca91f489f6939', 1),
(22, 'ninoz', '2017-05-13 07:28:04', 0, 12, 'a@aa', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vouchers`
--

CREATE TABLE `vouchers` (
  `voucher_id` int(11) NOT NULL,
  `voucher_name` varchar(255) NOT NULL,
  `points_needed` int(11) NOT NULL,
  `voucher_type` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vouchers`
--

INSERT INTO `vouchers` (`voucher_id`, `voucher_name`, `points_needed`, `voucher_type`, `active`, `quantity`) VALUES
(1, 'Bicis', 100, 'Diskon 50%', 0, 4),
(2, 'Voucher', 100, 'Diskon 50%', 0, 3),
(3, 'kaefse', 100, 'disscount', 0, 25),
(4, 'aduddududu', 1, 'aasa', 0, 5),
(5, 'ninooooooooooooo', 11, 'gratisan', 0, 3),
(6, 'fatim', 12, 'ajahhaha', 0, 1),
(7, 'ohoooo', 3, 'aduhh', 0, 4),
(8, 'oyon', 11, 'asas', 0, 3),
(9, 'jajajajaj', 500, 'a', 1, 2),
(10, 'asoyyyyyy', 900, 'dsds', 1, 2),
(11, 'vitooooooo', 12, 'aha', 1, 11),
(12, 'danang', 11, 'nuh', 1, 2),
(13, 'aduduudududuu', 12, 'adsa', 1, 985),
(14, 'zz', 12, 'asasasasasas', 1, 2),
(15, 'zzzzzzzz', 12, 'aadad', 1, 1),
(16, 'kokokorooonooootomooo', 0, 'aduhkan kaget', 1, 0),
(17, 'adududuud mahal nya', 100000, 'asa', 1, 2),
(18, 'mahal', 100000, 'asaaa', 1, 7),
(19, 'as', 12, 'aa', 1, 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assoc`
--
ALTER TABLE `assoc`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menus_ibfk_1` (`restaurant_id`);

--
-- Indexes for table `ratings_and_comments`
--
ALTER TABLE `ratings_and_comments`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurant_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`voucher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `assoc`
--
ALTER TABLE `assoc`
  ADD CONSTRAINT `assoc_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ratings_and_comments`
--
ALTER TABLE `ratings_and_comments`
  ADD CONSTRAINT `ratings_and_comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_and_comments_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`menu_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
