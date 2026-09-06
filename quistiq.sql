-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Okt 2025 pada 07.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quistiq`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `users_id`, `email`, `nip`, `jabatan`) VALUES
(6, 30, 'yuki@gmail.com', '09080706', 'Kepala Bagian'),
(7, 35, 'admin@gmail.com', '1234567899', 'Kepala Kesejahteraan'),
(8, 44, 'admin1@Gmail.com', '12333332', '1323232'),
(9, 48, 'clara@gmail.com', '9877789', 'Kepala Bagian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_quis`
--

CREATE TABLE `data_quis` (
  `quis_id` int(11) NOT NULL,
  `judul_kuis` varchar(50) NOT NULL,
  `mata_kuliah` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `durasi` int(11) NOT NULL,
  `nilai_minimal` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_quis`
--

INSERT INTO `data_quis` (`quis_id`, `judul_kuis`, `mata_kuliah`, `tanggal`, `tanggal_selesai`, `durasi`, `nilai_minimal`, `dosen_id`) VALUES
(29, 'Menguji kemandirian', 'Arsitektur Protokol internet', '2025-06-25', '2025-07-05', 40, 70, 31),
(32, 'Sistem Ekresi', 'Biologi', '2025-06-30', '2025-07-05', 10, 70, 31),
(33, 'Sistem Peredaran Darah', 'Biologi', '2025-07-02', '2025-07-05', 10, 75, 31),
(34, 'Sistem Saraf', 'Matpen', '2025-06-24', '2025-07-05', 5, 80, 31),
(40, 'Literatur Review', 'Biologi', '2025-06-30', '2025-07-05', 12, 112, 31),
(46, 'lfmfem;l', 'Biologi', '2025-06-24', '2025-07-05', 10, 80, 31),
(52, 'Dasar-Dasar Topologi Jaringan', 'Jaringan Komputer', '2025-07-01', '2025-07-06', 10, 70, 31),
(59, 'Sistem Kampus dunia', 'administrasi', '2025-07-01', '2025-07-05', 1, 70, 31),
(60, 'Sistem Jaringan ', 'Arsitektur Jaringan', '2025-07-01', '2025-07-05', 10, 70, 31),
(64, 'a', 'x', '2025-07-01', '2025-07-07', 1, 70, 31),
(66, 'hqhuwk', 'cms', '2025-07-01', '2025-07-05', 1, 70, 31),
(67, 'msmnk', ',m claml', '2025-07-04', '2025-07-12', 1, 80, 31),
(68, 'amakdks', ',smcs,', '2025-07-03', '2025-07-08', 1, 70, 31),
(69, 'kjjkjhl', 'mkjl;', '2025-07-01', '2025-07-03', 1, 80, 31),
(70, ',e', ',dl', '2025-07-06', '2025-07-09', 20, 1, 31),
(72, 'coba', 'coba1', '2025-07-05', '2025-07-07', 10, 70, 31),
(73, 'cobaa', 'mkdmkd', '2025-07-05', '2025-07-06', 10, 70, 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `nidn` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `fakultas` varchar(20) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id`, `users_id`, `nidn`, `email`, `fakultas`, `jurusan`) VALUES
(5, 31, 8927910, 'irf@gmail.com', 'FST', 'teknologi_informasi'),
(8, 43, 787756789, 'ofelius@gmail.com', 'FST', 'teknologi_informasi'),
(9, 47, 2147483647, 'kevin@gmail.com', 'FST', 'teknologi_informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_kuis`
--

CREATE TABLE `hasil_kuis` (
  `hasil_quis_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) DEFAULT NULL,
  `quis_id` int(11) DEFAULT NULL,
  `total_soal` int(11) DEFAULT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `benar` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil_kuis`
--

INSERT INTO `hasil_kuis` (`hasil_quis_id`, `mahasiswa_id`, `quis_id`, `total_soal`, `waktu_mulai`, `waktu_selesai`, `benar`, `nilai`, `keterangan`, `tanggal`) VALUES
(25, 36, 32, 2, '20:46:10', '20:46:14', 2, 100, 'Lulus', '2025-06-30 13:46:14'),
(26, 40, 32, 2, '20:47:19', '20:47:30', 2, 100, 'Lulus', '2025-06-30 13:47:30'),
(27, 37, 32, 2, '20:48:23', '20:48:32', 2, 100, 'Lulus', '2025-06-30 13:48:32'),
(28, 38, 32, 2, '20:49:25', '20:49:35', 0, 0, 'Tidak Lulus', '2025-06-30 13:49:35'),
(29, 36, 54, 1, '08:15:03', '08:16:46', 1, 100, 'Lulus', '2025-07-01 01:16:46'),
(32, 29, 55, 1, '00:00:00', '08:57:35', 1, 100, 'Lulus', '2025-07-01 01:57:35'),
(33, 37, 52, 10, '00:00:00', '10:04:53', 4, 40, 'Tidak Lulus', '2025-07-01 03:04:53'),
(34, 37, 58, 1, '11:18:21', '11:21:20', 1, 100, 'Lulus', '2025-07-01 04:21:20'),
(35, 36, 58, 1, '11:21:49', '11:23:38', 1, 100, 'Lulus', '2025-07-01 04:23:38'),
(36, 39, 52, 10, '12:35:05', '12:37:15', 5, 50, 'Tidak Lulus', '2025-07-01 05:37:15'),
(37, 41, 59, 1, '14:47:26', '14:47:51', 1, 100, 'Lulus', '2025-07-01 07:47:51'),
(38, 41, 52, 1, '15:06:00', '15:16:02', 0, 0, 'Tidak Lulus', '2025-07-01 08:16:02'),
(39, 36, 53, 1, '14:05:50', '14:20:29', 1, 100, 'Lulus', '2025-07-04 07:20:29'),
(40, 36, 33, 1, '14:20:36', '14:57:54', 0, 0, 'Tidak Lulus', '2025-07-04 07:57:54'),
(41, 36, 52, 1, '15:05:27', '15:20:24', 0, 0, 'Tidak Lulus', '2025-07-04 08:20:24'),
(43, 36, 34, 2, '15:44:37', '15:49:41', 0, 0, 'Tidak Lulus', '2025-07-04 08:49:41'),
(44, 36, 65, 1, '16:02:35', '16:03:36', 0, 0, 'Tidak Lulus', '2025-07-04 09:03:36'),
(45, 36, 66, 1, '19:24:01', '19:24:01', 1, 100, 'Lulus', '2025-07-04 12:24:01'),
(46, 36, 67, 1, '19:59:38', '19:59:38', 0, 0, 'Tidak Lulus', '2025-07-04 12:59:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(50) NOT NULL,
  `fakultas` text NOT NULL,
  `jurusan` text NOT NULL,
  `nomor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `users_id`, `nim`, `jenis_kelamin`, `email`, `fakultas`, `jurusan`, `nomor`) VALUES
(9, 29, 4559900, 'P', 'lilis0@gmail.com', 'FST', 'teknologi_informasi', 2147483647),
(11, 36, 232301016, 'P', 'dortheaelvitaharefa@gmail.com', 'FST', 'teknologi_informasi', 2147483647),
(12, 37, 232301014, 'P', 'dianmaharanibuulolodian@gmail.com', 'FST', 'teknologi_informasi', 8765432),
(13, 38, 242409876, 'P', 'keziareanabuulolo@gmail.com', 'FST', 'teknologi_informasi', 89765431),
(14, 39, 232301021, 'P', 'zegaester1@gmail.com', 'FST', 'teknologi_informasi', 2147483647),
(15, 40, 232301027, 'L', 'fredinsamohounizai@gmail.com', 'FST', 'teknologi_informasi', 2147483647),
(16, 41, 232301026, 'L', 'fikrahwaruwu@gmail.com', 'FST', 'teknologi_informasi', 2147483647),
(17, 42, 123, 'L', 'tes@tes', 'FST', 'teknologi_informasi', 123),
(18, 45, 2323123, 'L', 'dara@gmail.com', 'FKIP', 'biologi', 987),
(19, 46, 232309879, 'P', 'jenyzega24@gmail.com', 'FST', 'teknologi_informasi', 2147483647),
(20, 49, 123452123, 'P', 'tes@t', 'FE', 'manajemen', 998767383);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_mahasiswa`
--

CREATE TABLE `nilai_mahasiswa` (
  `id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `quis_id` int(11) NOT NULL,
  `skor` int(11) NOT NULL,
  `jumlah_benar` int(11) DEFAULT 0,
  `jumlah_salah` int(11) DEFAULT 0,
  `status_kuis` enum('selesai','belum') DEFAULT 'selesai',
  `waktu_pengerjaan` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `percobaan_kuis`
--

CREATE TABLE `percobaan_kuis` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kuis_id` int(11) NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `selesai` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `percobaan_kuis`
--

INSERT INTO `percobaan_kuis` (`id`, `user_id`, `kuis_id`, `waktu_mulai`, `selesai`) VALUES
(1, 36, 59, '2025-07-04 16:55:25', 0),
(2, 36, 60, '2025-07-04 16:56:49', 0),
(3, 36, 64, '2025-07-04 16:57:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_quis`
--

CREATE TABLE `soal_quis` (
  `id` int(11) NOT NULL,
  `quis_id` int(11) NOT NULL,
  `gambar_soal` varchar(225) NOT NULL,
  `pertanyaan` text NOT NULL,
  `opsi_a` text NOT NULL,
  `opsi_b` text NOT NULL,
  `opsi_c` text NOT NULL,
  `opsi_d` text NOT NULL,
  `jawaban` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `soal_quis`
--

INSERT INTO `soal_quis` (`id`, `quis_id`, `gambar_soal`, `pertanyaan`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `jawaban`) VALUES
(41, 32, '../assets/images/Gambar_soal/1751290923_folder windows ftp.png', ' Organ utama yang berfungsi menyaring darah dan menghasilkan urin adalah ...', ' Hati', 'Ginjal', 'Paru-paru', 'Pankreas', 'b'),
(42, 32, '', 'Proses pembentukan urin yang terjadi di glomerulus disebut ...', 'Reabsorpsi', 'Sekresi', 'Filtrasi', 'Ekskresi', 'c'),
(43, 33, '', 'Bagian jantung yang memompa darah menuju paru-paru adalah ...', 'Atrium kiri', 'Ventrikel kanan', 'Ventrikel kiri', 'Atrium kanan', 'A'),
(44, 33, '', 'Enzim yang berfungsi memecah protein dalam lambung adalah ...', ' Amilase', 'Lipase', 'Pepsin', 'Maltase', 'A'),
(45, 34, '', 'Bagian otak yang mengatur keseimbangan tubuh dan koordinasi gerak adalah ...', 'Medula oblongata', 'Otak besar', 'Otak kecil', 'Sumsum tulang belakang', 'c'),
(46, 34, '', 'Pertukaran gas oksigen dan karbon dioksida terjadi di bagian ...', 'Trakea', ' Bronkus', 'Alveolus', 'Laring', 'c'),
(64, 52, '../uploads/soal/soal_52_64_1751340782.png', 'Apa fungsi utama dari switch dalam jaringan komputer?', 'Menyaring alamat IP', 'Mengirim data secara acak', 'Meneruskan data berdasarkan alamat MAC', 'Menyimpan data pengguna', 'A'),
(65, 52, '', 'Topologi jaringan yang semua perangkatnya terhubung ke satu kabel pusat disebut?', 'Mesh', 'Ring|../uploads/opsi/opsi_b_52_65_1751565476.png', 'Star', ' Bus', 'A'),
(66, 52, '', 'Keunggulan utama dari topologi star adalah?', 'Biaya murah', 'Jika satu kabel putus, seluruh jaringan terganggu', 'Mudah diatur dan ditambahkan perangkat', 'Tidak membutuhkan switch', 'A'),
(67, 52, '', 'Perangkat jaringan yang menghubungkan dua jaringan berbeda disebut?', 'Modem', 'Router', 'Switch', 'Hub', 'A'),
(68, 52, '', 'Topologi ring memiliki kelemahan yaitu:', 'Pengiriman data lambat', 'Kabelnya mahal', 'Jika satu node rusak, semua terganggu', 'Tidak bisa digunakan di LAN', 'A'),
(69, 52, '../assets/images/Gambar_soal/1751330601_memasukkan data melalui cmd ke ftp.png', 'IP Address berfungsi untuk:', 'Menyimpan data', 'Menghubungkan perangkat secara fisik', 'Menyediakan identitas unik setiap perangkat di jaringan', 'Mengelola database', 'A'),
(70, 52, '', 'Panjang IP address versi 4 (IPv4) adalah?', '16 bit', '32 bit', '64 bit', '128 bit', 'A'),
(71, 52, '', 'Manakah yang merupakan contoh IP address?', '192.168.1.1', 'www.google.com', '256.256.256.256', 'FTP', 'A'),
(72, 52, '', 'Fungsi DNS dalam jaringan komputer adalah?', 'Mengubah nama domain menjadi alamat IP', 'Mengatur kabel jaringan', 'Menyimpan semua data pengguna', ' Mengelola bandwidth', 'A'),
(73, 52, '', 'Media transmisi yang menggunakan gelombang cahaya adalah:', 'Kabel UTP', 'Wireless', 'Fiber Optic', 'Bluetooth', 'A'),
(81, 59, '../assets/images/Gambar_soal/1751347280_folder windows ftp.png', ',m,d', ',cm,', ',mckd', ' c,d', ' cd', 'a'),
(82, 60, '', 'Siapa Pencipta Jaringan', 'Kevin', 'Clara', 'Fikrah', 'Enjel Waruwu', 'b'),
(85, 64, '', 'a', 'Papua', '|../assets/images/Gambar_soal/1751560841_opsi_b_memasukkan data melalui cmd ke ftp.png', '|../assets/images/Gambar_soal/1751560841_opsi_c_folder windows ftp.png', 'entahlah', 'A'),
(87, 66, '/sistem_quiz_online/assets/images/Gambar_soal/6867c649bcec5_soal.png', 'ksmxks', '', '', '', '', 'A'),
(88, 67, '../assets/images/Gambar_soal/1751633688_folder windows ftp.png', 'cc', '|../assets/images/Gambar_soal/1751633688_opsi_a_memasukkan data melalui cmd ke ftp.png', '|../assets/images/Gambar_soal/1751633688_opsi_b_login windows ftp.png', '|../assets/images/Gambar_soal/1751633688_opsi_c_ftp windows cmd.png', '|../assets/images/Gambar_soal/1751633688_opsi_d_folder windows ftp.png', 'a'),
(89, 68, '../assets/images/Gambar_soal/1751633779_folder windows ftp.png', 'mckdkd', '|../assets/images/Gambar_soal/1751633779_opsi_a_memasukkan data melalui cmd ke ftp.png', '|../assets/images/Gambar_soal/1751633779_opsi_b_login windows ftp.png', '|../assets/images/Gambar_soal/1751633779_opsi_c_ftp windows cmd.png', '|../assets/images/Gambar_soal/1751633779_opsi_d_folder windows ftp.png', 'A'),
(90, 68, '../assets/images/Gambar_soal/1751633779_folder windows ftp.png', 'ls,lsl', '|../assets/images/Gambar_soal/1751633779_opsi_a_login windows ftp.png', '|../assets/images/Gambar_soal/1751633779_opsi_b_folder windows ftp.png', '|../assets/images/Gambar_soal/1751633779_opsi_c_memasukkan data melalui cmd ke ftp.png', '|../assets/images/Gambar_soal/1751633779_opsi_d_folder windows ftp.png', 'A'),
(91, 69, '', 'kj', ',l', 'mlk;', 'mkl;', ',ml', 'a'),
(92, 70, '', 'mdle', ',c l', 'c ,d', ', ldlvf', ',fv ,f', 'a'),
(94, 72, '../assets/images/Gambar_soal/1751679466_folder windows ftp.png', 'tes', '|../assets/images/Gambar_soal/1751679466_opsi_a_folder windows ftp.png', '|../assets/images/Gambar_soal/1751679466_opsi_b_ftp windows cmd.png', '|../assets/images/Gambar_soal/1751679466_opsi_c_login windows ftp.png', '|../assets/images/Gambar_soal/1751679466_opsi_d_memasukkan data melalui cmd ke ftp.png', 'a'),
(95, 73, '', 'd  ', '|../assets/images/Gambar_soal/1751679909_opsi_a_ftp windows cmd.png', '|../assets/images/Gambar_soal/1751679909_opsi_b_memasukkan data melalui cmd ke ftp.png', '|../assets/images/Gambar_soal/1751679909_opsi_c_folder windows ftp.png', '|../assets/images/Gambar_soal/1751679909_opsi_d_memasukkan data melalui cmd ke ftp.png', 'a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `passwd` varchar(8) NOT NULL,
  `roles` enum('admin','dosen','mahasiswa') NOT NULL,
  `reset_token` varchar(100) DEFAULT NULL,
  `reset_expire` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`users_id`, `nama`, `passwd`, `roles`, `reset_token`, `reset_expire`, `email`) VALUES
(29, 'Lilis Harefa', '123', 'mahasiswa', NULL, NULL, 'lilis0@gmail.com'),
(30, 'yukis', '111', 'admin', NULL, NULL, 'yuki@gmail.com'),
(31, 'Irfandi Harefa S.Kom., M.Kom.', '123', 'dosen', NULL, NULL, 'irf@gmail.com'),
(35, 'admin', 'admin123', 'admin', NULL, NULL, 'admin@gmail.com'),
(36, 'Dorthea Elvita Harefa', '123', 'mahasiswa', NULL, NULL, 'dortheaelvitaharefa@gmail.com'),
(37, 'Dian maharani buulolo', '123', 'mahasiswa', NULL, NULL, 'dianmaharanibuulolodian@gmail.com'),
(38, 'kezia reana buulolo', '123', 'mahasiswa', '2804', '2025-06-30 09:55:28', 'keziareanabuulolo@gmail.com'),
(39, 'Ester Ratna Cahyani Zega', '123', 'mahasiswa', NULL, NULL, 'zegaester1@gmail.com'),
(40, 'Fredin Samohouni Zai', 'terserah', 'mahasiswa', NULL, NULL, 'fredinsamohounizai@gmail.com'),
(41, 'fikrah kristo fotriman waruwu ', '123', 'mahasiswa', NULL, NULL, 'fikrahwaruwu@gmail.com'),
(42, 'tes', '123', 'mahasiswa', '2880', '2025-06-30 17:37:42', 'tes@tes'),
(43, 'ofelius Gea S.kom', '123', 'dosen', NULL, NULL, 'ofelius@gmail.com'),
(44, 'Admin123', '12345678', 'admin', NULL, NULL, 'admin1@Gmail.com'),
(45, 'dara', '123', 'mahasiswa', NULL, NULL, 'dara@gmail.com'),
(46, 'Jeny Zega', '123', 'mahasiswa', '1773', '2025-07-01 14:45:12', 'jenyzega24@gmail.com'),
(47, 'Kevin', '123', 'dosen', NULL, NULL, 'kevin@gmail.com'),
(48, 'clara', '123', 'admin', NULL, NULL, 'clara@gmail.com'),
(49, 's c,', '123', 'mahasiswa', NULL, NULL, 'tes@t');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_admin` (`users_id`);

--
-- Indeks untuk tabel `data_quis`
--
ALTER TABLE `data_quis`
  ADD PRIMARY KEY (`quis_id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_dosen` (`users_id`);

--
-- Indeks untuk tabel `hasil_kuis`
--
ALTER TABLE `hasil_kuis`
  ADD PRIMARY KEY (`hasil_quis_id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_mahasiswa` (`users_id`);

--
-- Indeks untuk tabel `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswa_id` (`mahasiswa_id`),
  ADD KEY `quis_id` (`quis_id`);

--
-- Indeks untuk tabel `percobaan_kuis`
--
ALTER TABLE `percobaan_kuis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `kuis_id` (`kuis_id`);

--
-- Indeks untuk tabel `soal_quis`
--
ALTER TABLE `soal_quis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_data_quis` (`quis_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `data_quis`
--
ALTER TABLE `data_quis`
  MODIFY `quis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `hasil_kuis`
--
ALTER TABLE `hasil_kuis`
  MODIFY `hasil_quis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `percobaan_kuis`
--
ALTER TABLE `percobaan_kuis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `soal_quis`
--
ALTER TABLE `soal_quis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `fk_user_admin` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `fk_user_dosen` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_user_mahasiswa` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  ADD CONSTRAINT `nilai_mahasiswa_ibfk_1` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_mahasiswa_ibfk_2` FOREIGN KEY (`quis_id`) REFERENCES `data_quis` (`quis_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `percobaan_kuis`
--
ALTER TABLE `percobaan_kuis`
  ADD CONSTRAINT `percobaan_kuis_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `mahasiswa` (`users_id`),
  ADD CONSTRAINT `percobaan_kuis_ibfk_2` FOREIGN KEY (`kuis_id`) REFERENCES `data_quis` (`quis_id`);

--
-- Ketidakleluasaan untuk tabel `soal_quis`
--
ALTER TABLE `soal_quis`
  ADD CONSTRAINT `fk_data_quis` FOREIGN KEY (`quis_id`) REFERENCES `data_quis` (`quis_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
