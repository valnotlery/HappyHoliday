-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 03:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happyholiday`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `ffirst` varchar(20) NOT NULL,
  `flast` varchar(20) NOT NULL,
  `femail` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `fphone` int(15) NOT NULL,
  `fdesti` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `ffirst`, `flast`, `femail`, `city`, `fphone`, `fdesti`) VALUES
(13, 'Noufal', 'Valery', 'mlfuzoes04@gmail.com', 'Bogor', 1234567890, 'Raja Ampat');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `password`, `email`, `city`, `phone`) VALUES
(34, 'admin', 'Adm12345', 'admintms@gmail.com', 'Bogor', 8971046276),
(79, 'valnotlery', 'Nishi123', 'mlfuzoes04@gmail.com', 'bogor', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedbk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedbk`) VALUES
(1, 'joy', 'joy123@gmail.com', 'good website'),
(8, 'Noufal', 'mlfuzoes04@gmail.com', 'blabla');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hid` int(10) NOT NULL,
  `hname` varchar(20) NOT NULL,
  `hphone` varchar(15) NOT NULL,
  `hcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hid`, `hname`, `hphone`, `hcity`) VALUES
(1, 'Aston', '78869565', 'Bali'),
(2, 'Fave Hotel', '78869565', 'Lombok');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pdescription` varchar(10000) NOT NULL,
  `pi_main` varchar(1000) NOT NULL,
  `pi1` varchar(1000) NOT NULL,
  `pi2` varchar(1000) NOT NULL,
  `pi3` varchar(1000) NOT NULL,
  `package` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `pname`, `pdescription`, `pi_main`, `pi1`, `pi2`, `pi3`, `package`) VALUES
(1, 'Borobudur', 'Salah satu ikon wisata budaya Indonesia yang mendunia lainnya adalah Candi Borobudur. Sebagai candi Budha terbesar di dunia dengan luas tak kurang dari 123 X 123 meter, candi yang dibangun pada masa kerajaan Mataram kuno ini merupakan warisan budaya dan sejarah Indonesia yang terkenal akan arsitektur yang memukau.\r\n\r\nSetiap tahunnya, tak cuma wisatawan domestik tetapi banyak juga wisatawan asing yang tertarik untuk mengamati keindahan dari Candi Borobudur.\r\n\r\nBerbagai relief yang menceritakan mengenai berbagai ajaran dalam agama Budha dan perjalanan hidup Sidharta Gautama hingga mencapai pencerahan sempurna bisa Toppers temukan di tempat wisata favorit asal Indonesia.\r\n\r\nCandi Borobudur sendiri memiliki total tak kurang dari 504 arca Buddha dan 2.672 panel relief pada dinding-dindingnya. Menakjubkan sekali, bukan?', 'images//destination//borobudur1.jpg', 'images//destination//borobudur2.jpg', 'images//destination//borobudur3.jpg', 'images//destination//borobudur4.jpg', 500000),
(2, 'Prambanan', 'Sebagai peninggalan kebudayaan Hindu terbesar di Indonesia, Candi Prambanan memang memiliki pesona keindahan tersendiri. Sebab selain bentuk bangunan dan tata letaknya yang menakjubkan, candi Prambanan juga menyimpan kisah sejarah dan legenda yang sangat menarik wisatawan. Tak heran bila candi yang terletak di tepi jalan raya 17 Km dari Yogyakarta menuju Solo ini menjadi obyek wisata andalan bagi kedua kota tersebut. Komplek candi yang dibangun pada abad 9 M ini memiliki tiga bangunan utama berarsitektur indah setinggi 47 meter. Ketiga bangunan tersebut melambangkan Trimurti, yaitu ajaran tentang tiga dewa utama yang terdiri dari Candi Siwa (Dewa Pelebur) di tengah, Candi Brahma (Dewa Penjaga) di selatan, dan Candi Wisnu (Dewa Pencipta) di utara.', 'images//destination//prambanan1.jpg', 'images//destination//prambanan2.jpg', 'images//destination//prambanan3.jpg', 'images//destination//prambanan4.jpg', 40000),
(3, 'Raja Ampat', 'Kepulauan Raja Ampat berada di bagian paling barat Papua dan membentang di area seluas kurang lebih 4,6 juta hektar. Kabupaten Raja Ampat terdiri dari 4 pulau besar yaitu Pulau Waigeo, Batanta, Salawati dan Misool, dan 1.847 pulau-pulau kecil lainnya. Nah, nama Raja Ampat sendiri diyakini berasal dari legenda masyarakat setempat yang percaya bahwa zaman dahulu kala ada seorang wanita yang menemukan tujuh telur, empat telur tersebut menetas menjadi raja-raja yang berkuasa di empat pulau utama. Tersisa tiga lainnya, satu menjadi batu, satu menjadi wanita, dan satu lagi menjadi makhluk gaib atau hantu.Terlepas legenda yang dipercayai masyarakat setempat, keindahan yang disuguhkan oleh Raja Ampat merupakan fakta yang tak bisa diganggu gugat.', 'images//destination//rajaampat1.jpg', 'images//destination//rajaampat2.jpg', 'images//destination//rajaampat3.jpg', 'images//destination//rajaampat4.jpg', 12000000),
(4, 'Tana Toraja', 'Indonesia memang kaya akan adat dan budaya yang menarik mata dunia. Salah satu destinasi wisata Indonesia yang terkenal akan kekayaan tradisi budayanya adalah  Kabupaten Tana Toraja.\r\nTerletak di Sulawesi Selatan dikawasan pegunungan yang indah, Toppers masih bisa melihat uniknya keseharian dan tradisi masyarakat adat Tana Toraja.\r\n\r\nSelain keindahan arsitektur tradisional rumah tongkonan, wisatawan juga bisa mengamati tradisi unik upacara kematian yang dikenal sebagai Rambu Solo yang biasanya diselenggarakan pada Juli dan Agustus\r\nKeunikan dari tradisi ini menjadikan Tana Toraja sebagai tempat wisata asal Indonesia yang memiliki daya tarik mendunia.', 'images//destination//toraja1.jpg', 'images//destination//toraja2.jpg', 'images//destination//toraja3.jpg', 'images//destination//toraja4.jpg', 50000),
(5, 'Nusa Dua', 'Pulau Seribu Dewa satu ini memang tidak perlu diragukan lagi terkait keindahan dan pesonanya dalam memikat para wisatawan dalam negeri maupun mancanegara. Di Bali, ada satu tempat wisata yang begitu cantik, yakni Nusa Dua. \r\nObjek wisata pantai ini memiliki pasir putih yang lembut dan air laut yang berwarna biru jernih. Kamu akan dimanjakan dengan berbagai fasilitas saat berkunjung ke tempat satu ini. Mulai dari penginapan dan resort yang berkelas, restoran, pusat perbelanjaan, hingga aktivitas berselancar di pantainya.', 'images//destination//nusadua1.jpg', 'images//destination//nusadua2.jpg', 'images//destination//nusadua3.jpg', 'images//destination//nusadua4.jpg', 5000000),
(6, 'Pura Besakih', 'Pura Agung Besakih adalah pura terbesar dan termegah di Bali. Pulau ini terletak di Desa Besakih, Kecamatan Rendang, berada di lereng sebelah barat daya Gunung Agung, gunung tertinggi di Bali.\r\nPura Agung Besakih memiliki gaya arsitektur yang mengagumkan khas Bali dan berada di ketinggian 915 kaki di kaki Gunung Agung dengan memukau. Bangunan yang dibangun sejak abad ke-10 Masehi ini menjadi pusat kegiatan spiritual Hindu Dharma di Pulau Dewata.\r\nDengan segala fitur yang dimiliki Pura Besakih, tidak aneh jika situs ini ditetapkan sebagai Situs Warisan Budaya UNESCO sejak selamat dari erupsi Gunung Agung pada tahun 1963.\r\nAkses dari Kota Denpasar untuk mencapai tempat ini berjarak sekitar 25 km ke arah utara dari Kota Semarapura, Kabupaten Klungkung. Perjalanan menuju Pura Besakih melewati panorama Bukit Jambul yang juga merupakan salah satu obyek dan daya tarik wisata Kabupaten Karangasem.', 'images//destination//besakih1.jpg', 'images//destination//besakih2.jpg', 'images//destination//besakih3.jpg', 'images//destination//besakih4.jpg', 70000),
(7, 'Pulau Komodo', 'Destinasi wisata Indonesia yang tersohor di mata dunia selanjutnya adalah Pulau Komodo. Pulau yang berlokasi di Kepulauan Nusa Tenggara Timur ini merupakan rumah bagi ratusan Komodo, hewan endemik yang hanya ada di Indonesia.\r\nSelain bisa mengamati perilaku dan mengeksplorasi habitat dari hewan purba ini, Pulau Komodo juga menawarkan panorama alam yang menakjubkan.\r\nSalah satunya adalah pantai dengan pasir berwarna merah muda yang dikenal dengan nama “Pink Beach“.\r\nPantai seperti ini hanya terdapat tujuh di seluruh dunia sehingga menjadikannya sebagai salah satu tujuan wisata Indonesia yang mendunia.', 'images//destination//komodo1.jpg', 'images//destination//komodo2.jpg', 'images//destination//komodo3.jpg', 'images//destination//komodo4.jpg', 1500000),
(8, 'Bunaken', 'Destinasi wisata di Indonesia yang populer di mancanegara selanjutnya adalah Taman Laut Bunaken yang berada di Teluk Manado.\r\nBunaken menjadi salah satu objek wisata di Indonesia yang mengundang decak kagum karena keindahan taman bawah lautnya yang sulit ditemukan di negara lain.\r\n\r\nBerkunjung ke Taman Laut Bunaken, Toppers akan menemukan keindahan kehidupan di dalam laut yang membuat mata kamu tidak bisa berhenti memandangnya.\r\nDi dalam taman laut ini terdapat 13 jenis terumbu karang yang didominasi dengan bebatuan laut.\r\nSelain itu, pemandangan yang paling menarik adalah adanya terumbu karang terjal vertikal yang menjulang ke bawah sedalam 25 – 50 meter. Tidak sampai di situ, mata kita akan dimanjakan dengan 91 jenis ikan yang ada di dalamnya.\r\nTidak heran kalau Taman Laut Bunaken menjadi salah satu destinasi bagi para wisatawan terutama para pecinta laut.\r\nApalagi tujuan wisata Indonesia favorit wisatawan asing ini menyediakan fasilitas untuk scuba diving dengan 20 titik penyelaman terbaik, di mana penyelam dapat kesempatan berenang di dasar laut dengan beragam biota laut yang menakjubkan.', 'images//destination//bunaken1.jpg', 'images//destination//bunaken2.jpg', 'images//destination//bunaken3.jpg', 'images//destination//bunaken4.jpg', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`, `pcity`) VALUES
(1, 'Nusa Dua', 'Kuta Selatan'),
(2, 'Prambanan', 'Sleman'),
(3, 'Pura Besakih', 'Kecamatan Rendang'),
(4, 'Taman Komodo', 'Pulau Komodo'),
(5, 'Taman Laut Bunaken', 'Manado'),
(6, 'Raja Ampat', 'Sorong');

-- --------------------------------------------------------

--
-- Table structure for table `travel_agent`
--

CREATE TABLE `travel_agent` (
  `aid` int(10) NOT NULL,
  `afname` varchar(20) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `aphone` int(15) NOT NULL,
  `acity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_agent`
--

INSERT INTO `travel_agent` (`aid`, `afname`, `aemail`, `aphone`, `acity`) VALUES
(1, 'Dimas', 'dimas123@gmail.com', 11223344, 'jakarta'),
(2, 'Indah', 'indah123@gmail.com', 22113344, 'Solo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `travel_agent`
--
ALTER TABLE `travel_agent`
  ADD PRIMARY KEY (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `travel_agent`
--
ALTER TABLE `travel_agent`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
