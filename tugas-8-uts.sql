-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2022 at 03:01 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas-8-uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `id_user`, `title`, `write`, `description`, `created_at`, `updated_at`) VALUES
(30, 11, '1. Sate Padang', 'syarifahhputri', 'Makanan khas Indonesia yang wajib dicoba pertama adalah sate padang. Berasal dari Padang, Sumatera Barat, sate ini terkenal dengan bumbunya yang menggugah selera yang berisi rempah-rempah seperti jinten, jahe, lengkuas, dan cabai. Bumbu-bumbu tersebut dihaluskan dan ditumis hingga aromanya harum. Kemudian sebagian bumbu akan digunakan untuk merendam daging sate dan membuat sausnya. Daging yang direndam kemudian dibakar di atas panggangan arang hingga matang dan disajikan diatas piring beserta ketupat serta saus yang lezat.', '2022-09-10 07:52:42', '2022-09-10 07:52:42'),
(31, 11, '2. Rawon', 'syarifahhputri', 'Selanjutnya, dari Jawa Timur ada rawon yang kaya rasa. Warna hitam kecoklatan rawon berasal dari keluak, buah pohon kepayang. Sebelum dimasak, keluak harus direbus dan diperam dalam abu selama satu bulan. Langkah ini untuk melakukan fermentasi pada racun keluak yang baru dipetik. Selain keluak, bumbu lain yang digunakan adalah jahe, kemiri, kunyit, cabai merah, dan garam. Daging direbus bersama bumbu hingga matang dan sedap kemudian disajikan dengan sepiring nasi hangat. Rasa kacang dalam rawon serta perpaduan gurih bumbu dan daging membuat siapa saja jatuh cinta dengan makanan khas Indonesia yang satu ini.', '2022-09-10 07:53:48', '2022-09-10 07:53:48'),
(32, 12, '3. Gudeg', 'syarifah', 'Beralih ke Kota Yogyakarta, ada makanan khas Indonesia yang terkenal karena manis dan gurih rasanya. Hidangan gudeg sangat terkenal dan banyak dijual sehingga mendapat julukan Kota Gudeg. Bahan utama gudeg adalah nangka yang direbus bersama gula aren, santan, daun salam, serai, dan lengkuas, sampai sangat empuk dan tercampur sempurna. Gudeg biasanya disajikan dengan nasi, telur rebus, potongan ayam, dan sambal goreng krecek yang berisi kulit sapi kenyal.', '2022-09-10 07:57:29', '2022-09-10 07:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `coment`
--

CREATE TABLE `coment` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coment`
--

INSERT INTO `coment` (`id`, `isi`, `nama`, `created_at`, `updated_at`) VALUES
(23, 'req tongseng dong', 'fikri', '2022-09-10 08:00:21', '2022-09-10 08:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'syarifahhputri9', 'syarifahktp211@gmail.com', 'Syarifah Putri', '$2y$10$ho8whYK/CtCnxsoifdWqCO7i7Zl56G8TiYQlox5BZXYJPhZvheZpu', NULL, '2022-09-10 07:43:13', '2022-09-10 07:43:13'),
(12, 'Syarifah', 'syarifah@gmail.com', 'Syarifah', '$2y$10$.TQQE86IQTpYW7XNzZozWOoPKcxq9TOc0y.qziGTbPYrgrCwOQ0/.', NULL, '2022-09-10 07:54:41', '2022-09-10 07:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(9, 11, '081290034449', '2022-09-10 07:43:13', '2022-09-10 07:43:13'),
(10, 12, '081290034449', '2022-09-10 07:54:41', '2022-09-10 07:54:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `coment`
--
ALTER TABLE `coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
