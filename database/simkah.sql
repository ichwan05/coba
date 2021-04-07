-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Mar 2021 pada 16.17
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simkah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukti_daftar`
--

CREATE TABLE `bukti_daftar` (
  `id_daftar` int(30) NOT NULL,
  `no_daftar` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_daftar`
--

CREATE TABLE `form_daftar` (
  `id_form` int(30) NOT NULL,
  `kode_daftar` varchar(50) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `tgl_akad_nikah` date NOT NULL,
  `waktu_nikah` time NOT NULL,
  `dokumen` text NOT NULL,
  `nikah_di` varchar(100) NOT NULL,
  `alamat_nikah` varchar(100) NOT NULL,
  `nama_suami` varchar(100) NOT NULL,
  `nama_istri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `form_daftar`
--

INSERT INTO `form_daftar` (`id_form`, `kode_daftar`, `tgl_daftar`, `provinsi`, `tgl_akad_nikah`, `waktu_nikah`, `dokumen`, `nikah_di`, `alamat_nikah`, `nama_suami`, `nama_istri`) VALUES
(11, 'SMKH0001', '2021-02-28', 'Purbalingga,Kemangkon', '2021-03-23', '02:17:00', '', 'KUA', 'karangkemri', 'dhemassss', 'Shaf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `istri`
--

CREATE TABLE `istri` (
  `id_istri` int(30) NOT NULL,
  `kode_daftar` varchar(30) NOT NULL,
  `nik_istri` varchar(100) NOT NULL,
  `nama_istri` varchar(100) NOT NULL,
  `alamat_istri` varchar(100) NOT NULL,
  `tmp_lahir_istri` varchar(100) NOT NULL,
  `tgl_lahir_istri` date NOT NULL,
  `status_istri` varchar(100) NOT NULL,
  `pekerjaan_istri` varchar(100) NOT NULL,
  `pendidikan_istri` varchar(100) NOT NULL,
  `nama_ayah_istri` varchar(100) NOT NULL,
  `nama_ibu_istri` varchar(100) NOT NULL,
  `agama_istri` varchar(100) NOT NULL,
  `warganegara_istri` varchar(100) NOT NULL,
  `umur_istri` varchar(100) NOT NULL,
  `telepon_istri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `istri`
--

INSERT INTO `istri` (`id_istri`, `kode_daftar`, `nik_istri`, `nama_istri`, `alamat_istri`, `tmp_lahir_istri`, `tgl_lahir_istri`, `status_istri`, `pekerjaan_istri`, `pendidikan_istri`, `nama_ayah_istri`, `nama_ibu_istri`, `agama_istri`, `warganegara_istri`, `umur_istri`, `telepon_istri`) VALUES
(13, 'SMKH0004', '829018777', 'Indah Wulandari', '', '', '2001-02-17', 'perawan', 'Mahasiswa', 'SD', 'akdja', 'ksjx', 'islam', '', '20', ''),
(14, 'SMKH0004', '829018777', 'Indah Wulandari', '', '', '2001-02-17', 'perawan', 'Mahasiswa', 'SD', 'akdja', 'ksjx', 'islam', '', '20', ''),
(15, 'SMKH0004', '829018777', 'Indah Wulandari', '', '', '2001-02-17', 'perawan', 'Mahasiswa', 'SD', 'akdja', 'ksjx', 'islam', '', '20', ''),
(16, 'SMKH0004', '829018777', 'Indah Wulandari', '', '', '2001-02-17', 'perawan', 'Mahasiswa', 'SD', 'akdja', 'ksjx', 'islam', '', '20', ''),
(17, 'SMKH0004', '829018777', 'Indah Wulandari', '', '', '2001-02-17', 'perawan', 'Mahasiswa', 'SD', 'akdja', 'ksjx', 'islam', '', '20', ''),
(18, 'SMKH0005', '111', 'shaf', '', '', '2021-03-26', 'perawan', 'Mahasiswa', 'SD', 'Turino', 'x', 'islam', '', '20', ''),
(19, 'SMKH0006', '111', 'Shaf', '', '', '2021-03-09', 'perawan', 'buruh', 'SD', 'asa', 'ass', 'islam', '', '20', ''),
(20, 'SMKH0007', '111', 'rani', '', '', '2021-03-18', 'perawan', 'buruh', 'SD', 'asa', 'x', 'islam', '', '20', ''),
(24, 'SMKH0001', '67777777799999', 'Shaf', 'Karangkemiri', 'purbalingga', '2021-01-22', 'perawan', 'Mahasiswa', 'SD', 'Turino', 'Sunarti', 'islam', 'WNI', '20', '085747491266');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suami`
--

CREATE TABLE `suami` (
  `id_suami` int(30) NOT NULL,
  `kode_daftar` varchar(30) NOT NULL,
  `nik_suami` varchar(100) NOT NULL,
  `nama_suami` varchar(100) NOT NULL,
  `alamat_suami` varchar(100) NOT NULL,
  `tmp_lahir_suami` varchar(100) NOT NULL,
  `tgl_lahir_suami` date NOT NULL,
  `status_suami` varchar(100) NOT NULL,
  `pekerjaan_suami` varchar(100) NOT NULL,
  `pendidikan_suami` varchar(100) NOT NULL,
  `nama_ayah_suami` varchar(100) NOT NULL,
  `nama_ibu_suami` varchar(100) NOT NULL,
  `agama_suami` varchar(100) NOT NULL,
  `warganegara_suami` varchar(100) NOT NULL,
  `umur_suami` varchar(100) NOT NULL,
  `telepon_suami` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `suami`
--

INSERT INTO `suami` (`id_suami`, `kode_daftar`, `nik_suami`, `nama_suami`, `alamat_suami`, `tmp_lahir_suami`, `tgl_lahir_suami`, `status_suami`, `pekerjaan_suami`, `pendidikan_suami`, `nama_ayah_suami`, `nama_ibu_suami`, `agama_suami`, `warganegara_suami`, `umur_suami`, `telepon_suami`) VALUES
(21, 'SMKH0004', '2345666', 'aaaaaaaa', '', '', '2000-12-20', 'perawan', 'Direktur', 'SD', 'fsdg', 'sgs', 'islam', '', '21', ''),
(22, 'SMKH0004', '2345666', 'aaaaaaaa', '', '', '2000-12-20', 'perawan', 'Direktur', 'SD', 'fsdg', 'sgs', 'islam', '', '21', ''),
(23, 'SMKH0004', '2345666', 'aaaaaaaa', '', '', '2000-12-20', 'perawan', 'Direktur', 'SD', 'fsdg', 'sgs', 'islam', '', '21', ''),
(24, 'SMKH0004', '2345666', 'aaaaaaaa', '', '', '2000-12-20', 'perawan', 'Direktur', 'SD', 'fsdg', 'sgs', 'islam', '', '21', ''),
(25, 'SMKH0004', '2345666', 'aaaaaaaa', '', '', '2000-12-20', 'perawan', 'Direktur', 'SD', 'fsdg', 'sgs', 'islam', '', '21', ''),
(26, 'SMKH0005', '222222', 'Tarjo', '', '', '2021-03-20', 'perawan', 'asa', 'SD', 'zxzzz', 'Endah', 'islam', '', '20', ''),
(27, 'SMKH0006', '222222', 'turino', '', '', '2021-03-18', 'perawan', 'buruh', 'SD', 'fsdg', 'sgs', 'islam', '', '20', ''),
(28, 'SMKH0007', '1111', 'sarjem', '', '', '2021-03-18', 'perawan', 'mmmla', 'SD', 'fsdg', 'Endah', 'islam', '', '20', ''),
(32, 'SMKH0001', '11222234455', 'dhemassss', 'Tidu', 'purbalingga', '2020-12-27', 'duda mati', 'Mahasiswa', 'SD', 'Suyitno', 'Endah', 'Islam', 'WNI', '20', '08576769243');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `bukti_daftar`
--
ALTER TABLE `bukti_daftar`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indeks untuk tabel `form_daftar`
--
ALTER TABLE `form_daftar`
  ADD PRIMARY KEY (`id_form`);

--
-- Indeks untuk tabel `istri`
--
ALTER TABLE `istri`
  ADD PRIMARY KEY (`id_istri`);

--
-- Indeks untuk tabel `suami`
--
ALTER TABLE `suami`
  ADD PRIMARY KEY (`id_suami`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bukti_daftar`
--
ALTER TABLE `bukti_daftar`
  MODIFY `id_daftar` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `form_daftar`
--
ALTER TABLE `form_daftar`
  MODIFY `id_form` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `istri`
--
ALTER TABLE `istri`
  MODIFY `id_istri` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `suami`
--
ALTER TABLE `suami`
  MODIFY `id_suami` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
