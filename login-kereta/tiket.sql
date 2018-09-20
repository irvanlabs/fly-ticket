-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 20 Sep 2018 pada 04.30
-- Versi Server: 5.6.14
-- Versi PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `tiket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `ID_CUSTOM` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ADDRES` char(200) DEFAULT NULL,
  `PHONE` int(11) DEFAULT NULL,
  `GENDER` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_CUSTOM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kelas` varchar(50) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `kode_kelas`, `nama_kelas`) VALUES
(1, 'ENT', 'Enterprise'),
(2, 'EKO', 'Ekonomi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `revervation`
--

CREATE TABLE IF NOT EXISTS `revervation` (
  `ID_RESERVE` int(11) NOT NULL,
  `ID_RUTE` int(11) DEFAULT NULL,
  `ID_CUSTOM` int(11) DEFAULT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `RESERVE_CODE` int(11) DEFAULT NULL,
  `RESERVE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SEAT_CODE` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `RUTE_ID` int(11) DEFAULT NULL,
  `CUSTOM__ID` int(11) DEFAULT NULL,
  `AT_DEPART` date DEFAULT NULL,
  `PRICE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_RESERVE`),
  KEY `FK_RELATIONSHIP_1` (`ID_USER`),
  KEY `FK_RELATIONSHIP_2` (`ID_CUSTOM`),
  KEY `FK_RELATIONSHIP_5` (`ID_RUTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rute`
--

CREATE TABLE IF NOT EXISTS `rute` (
  `ID_RUTE` int(11) NOT NULL,
  `ID__TRANS` int(11) DEFAULT NULL,
  `DEPART_AT` date DEFAULT NULL,
  `RUTE_FROM` char(200) DEFAULT NULL,
  `RUTE_TO` char(200) DEFAULT NULL,
  `PRICE` decimal(10,0) DEFAULT NULL,
  `TRANS_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_RUTE`),
  KEY `FK_RELATIONSHIP_4` (`ID__TRANS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transportations`
--

CREATE TABLE IF NOT EXISTS `transportations` (
  `ID__TRANS` int(11) NOT NULL,
  `ID_TRANS_TYPE` int(11) DEFAULT NULL,
  `CODE` char(200) DEFAULT NULL,
  `DESCRYPTION` varchar(200) DEFAULT NULL,
  `SEAT_QTY` char(200) DEFAULT NULL,
  `TRANS_TYPE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID__TRANS`),
  KEY `FK_RELATIONSHIP_3` (`ID_TRANS_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transportation_type`
--

CREATE TABLE IF NOT EXISTS `transportation_type` (
  `ID_TRANS_TYPE` int(11) NOT NULL,
  `DESCRYPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID_USER` int(11) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` char(255) DEFAULT NULL,
  `FULLNAME` char(255) DEFAULT NULL,
  `LEVEL` char(5) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `revervation`
--
ALTER TABLE `revervation`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`),
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`ID_CUSTOM`) REFERENCES `customer` (`ID_CUSTOM`),
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`ID_RUTE`) REFERENCES `rute` (`ID_RUTE`);

--
-- Ketidakleluasaan untuk tabel `rute`
--
ALTER TABLE `rute`
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`ID__TRANS`) REFERENCES `transportations` (`ID__TRANS`);

--
-- Ketidakleluasaan untuk tabel `transportations`
--
ALTER TABLE `transportations`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_TRANS_TYPE`) REFERENCES `transportation_type` (`ID_TRANS_TYPE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
