-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 04 Okt 2018 pada 10.34
-- Versi Server: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `DataKelas`
--

CREATE TABLE `DataKelas` (
  `idKelas` int(11) NOT NULL,
  `KodeKelas` varchar(20) NOT NULL,
  `NamaKelas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `DataKelas`
--

INSERT INTO `DataKelas` (`idKelas`, `KodeKelas`, `NamaKelas`) VALUES
(1, 'EK', 'Ekonomi'),
(2, 'BS', 'Bisnis'),
(3, 'ew', 'eefweg'),
(4, 'kok', 'komilim'),
(5, 'af', 'afewg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id_level`, `level`) VALUES
(0, 'belum aktif'),
(1, 'admin'),
(2, 'user'),
(3, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Reservation`
--

CREATE TABLE `Reservation` (
  `id_reserve` int(11) NOT NULL,
  `id_rute` int(11) NOT NULL,
  `id_custom` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `reserve_code` int(20) NOT NULL,
  `reserve_date` date NOT NULL,
  `seat_code` int(11) NOT NULL,
  `depart_at` date NOT NULL,
  `price` decimal(50,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Rute`
--

CREATE TABLE `Rute` (
  `id_rute` int(11) NOT NULL,
  `id_transportation` int(11) NOT NULL,
  `depart_at` date NOT NULL,
  `rute_from` varchar(50) NOT NULL,
  `rute_to` varchar(50) NOT NULL,
  `price` decimal(50,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Transportation`
--

CREATE TABLE `Transportation` (
  `id_transportation` int(11) NOT NULL,
  `id_transportation_type` int(11) NOT NULL,
  `kode_transportation` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `seat_qty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Transportation_type`
--

CREATE TABLE `Transportation_type` (
  `id_transportation_type` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `id_level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'adjie', '1d4ad7cb75f172f6135dd892f772a011', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DataKelas`
--
ALTER TABLE `DataKelas`
  ADD PRIMARY KEY (`idKelas`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DataKelas`
--
ALTER TABLE `DataKelas`
  MODIFY `idKelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
