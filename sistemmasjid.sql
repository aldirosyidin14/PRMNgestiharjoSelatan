-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2023 pada 20.39
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemmasjid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun_admin`
--

CREATE TABLE `akun_admin` (
  `id_pengurus` int(255) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `foto` text NOT NULL,
  `profile_admin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip`
--

CREATE TABLE `arsip` (
  `id_arsip` int(11) NOT NULL,
  `nama_arsip` varchar(255) NOT NULL,
  `tanggal_arsip` date NOT NULL,
  `id_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita_masjid`
--

CREATE TABLE `berita_masjid` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `tanggal_berita` date NOT NULL,
  `deskripsi_berita` text NOT NULL,
  `foto_berita` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita_prm`
--

CREATE TABLE `berita_prm` (
  `id_berita_prm` int(11) NOT NULL,
  `judul_berita_prm` varchar(255) NOT NULL,
  `tanggal_berita_prm` date NOT NULL,
  `deskripsi_berita_prm` int(11) NOT NULL,
  `foto_berita_prm` int(11) NOT NULL,
  `id_prm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jamaah`
--

CREATE TABLE `jamaah` (
  `id_jamaah` int(11) NOT NULL,
  `nama_jamaah` int(11) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan','','') NOT NULL,
  `id_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan_masjid`
--

CREATE TABLE `kegiatan_masjid` (
  `id_kegiatan_masjid` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `jenis_kegiatan` varchar(255) NOT NULL,
  `jadwal_kegiatan` date NOT NULL,
  `id_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_kegiatan`
--

CREATE TABLE `laporan_kegiatan` (
  `id_laporan_kegiatan` int(11) NOT NULL,
  `nama_laporan_kegiatan` varchar(255) NOT NULL,
  `tanggal_laporan_kegiatan` date NOT NULL,
  `id_kegiatan_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_keuangan`
--

CREATE TABLE `laporan_keuangan` (
  `id_laporan_keuangan` int(11) NOT NULL,
  `nama_laporan` varchar(255) NOT NULL,
  `deskripsi_laporan` text NOT NULL,
  `total_saldo` varchar(255) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `id_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `masjidprm`
--

CREATE TABLE `masjidprm` (
  `id_masjid` int(11) NOT NULL,
  `nama_masjid` varchar(255) NOT NULL,
  `alamat_masjid` text NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `email_masjid` varchar(255) NOT NULL,
  `deskripsi_masjid` text NOT NULL,
  `id_prm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman_masjid`
--

CREATE TABLE `pengumuman_masjid` (
  `id_pengumuman` int(11) NOT NULL,
  `judul_pengumuman` varchar(255) NOT NULL,
  `tanggal_pengumuman` date NOT NULL,
  `id_berita_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prm`
--

CREATE TABLE `prm` (
  `id_prm` int(11) NOT NULL,
  `nama_prm` varchar(255) NOT NULL,
  `alamat_prm` text NOT NULL,
  `telpon_prm` varchar(25) NOT NULL,
  `email_prm` varchar(50) NOT NULL,
  `website` varchar(255) NOT NULL,
  `deskripsi_prm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_masjid`
--

CREATE TABLE `profile_masjid` (
  `id_profile_masjid` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_prm`
--

CREATE TABLE `profile_prm` (
  `id_profile` int(11) NOT NULL,
  `id_prm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pusat_download`
--

CREATE TABLE `pusat_download` (
  `id_pusat_download` int(11) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `id_berita_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah_masjid`
--

CREATE TABLE `sejarah_masjid` (
  `id_sejarah_masjid` int(11) NOT NULL,
  `deskripsi_sejarah_masjid` text NOT NULL,
  `id_profile_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah_prm`
--

CREATE TABLE `sejarah_prm` (
  `id_sejarah_prm` int(15) NOT NULL,
  `deskripsi_sejarah_prm` text NOT NULL,
  `id_profile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tpa`
--

CREATE TABLE `tpa` (
  `id_tpa` int(11) NOT NULL,
  `nama_tpa` varchar(255) NOT NULL,
  `jadwal_tpa` date NOT NULL,
  `foto_tpa` int(11) NOT NULL,
  `id_kegiatan_masjid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun_admin`
--
ALTER TABLE `akun_admin`
  ADD PRIMARY KEY (`id_pengurus`),
  ADD UNIQUE KEY `profile_admin` (`profile_admin`);

--
-- Indeks untuk tabel `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`id_arsip`),
  ADD UNIQUE KEY `id_masjid` (`id_masjid`);

--
-- Indeks untuk tabel `berita_masjid`
--
ALTER TABLE `berita_masjid`
  ADD PRIMARY KEY (`id_berita`),
  ADD UNIQUE KEY `id_masjid` (`id_masjid`);

--
-- Indeks untuk tabel `berita_prm`
--
ALTER TABLE `berita_prm`
  ADD PRIMARY KEY (`id_berita_prm`),
  ADD UNIQUE KEY `id_prm` (`id_prm`);

--
-- Indeks untuk tabel `jamaah`
--
ALTER TABLE `jamaah`
  ADD PRIMARY KEY (`id_jamaah`),
  ADD UNIQUE KEY `id_masjid` (`id_masjid`);

--
-- Indeks untuk tabel `kegiatan_masjid`
--
ALTER TABLE `kegiatan_masjid`
  ADD PRIMARY KEY (`id_kegiatan_masjid`),
  ADD UNIQUE KEY `id_masjid` (`id_masjid`);

--
-- Indeks untuk tabel `laporan_kegiatan`
--
ALTER TABLE `laporan_kegiatan`
  ADD PRIMARY KEY (`id_laporan_kegiatan`),
  ADD UNIQUE KEY `id_kegiatan_masjid` (`id_kegiatan_masjid`);

--
-- Indeks untuk tabel `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD PRIMARY KEY (`id_laporan_keuangan`),
  ADD UNIQUE KEY `id_masjid` (`id_masjid`);

--
-- Indeks untuk tabel `masjidprm`
--
ALTER TABLE `masjidprm`
  ADD PRIMARY KEY (`id_masjid`),
  ADD UNIQUE KEY `id_prm` (`id_prm`);

--
-- Indeks untuk tabel `pengumuman_masjid`
--
ALTER TABLE `pengumuman_masjid`
  ADD PRIMARY KEY (`id_pengumuman`),
  ADD UNIQUE KEY `id_berita_masjid` (`id_berita_masjid`);

--
-- Indeks untuk tabel `prm`
--
ALTER TABLE `prm`
  ADD PRIMARY KEY (`id_prm`);

--
-- Indeks untuk tabel `profile_masjid`
--
ALTER TABLE `profile_masjid`
  ADD PRIMARY KEY (`id_profile_masjid`),
  ADD UNIQUE KEY `id_masjid` (`id_masjid`);

--
-- Indeks untuk tabel `profile_prm`
--
ALTER TABLE `profile_prm`
  ADD PRIMARY KEY (`id_profile`),
  ADD UNIQUE KEY `id_prm` (`id_prm`);

--
-- Indeks untuk tabel `pusat_download`
--
ALTER TABLE `pusat_download`
  ADD PRIMARY KEY (`id_pusat_download`),
  ADD UNIQUE KEY `id_berita_masjid` (`id_berita_masjid`);

--
-- Indeks untuk tabel `sejarah_masjid`
--
ALTER TABLE `sejarah_masjid`
  ADD PRIMARY KEY (`id_sejarah_masjid`),
  ADD UNIQUE KEY `id_profile_masjid` (`id_profile_masjid`);

--
-- Indeks untuk tabel `sejarah_prm`
--
ALTER TABLE `sejarah_prm`
  ADD PRIMARY KEY (`id_sejarah_prm`),
  ADD UNIQUE KEY `id_profile` (`id_profile`);

--
-- Indeks untuk tabel `tpa`
--
ALTER TABLE `tpa`
  ADD PRIMARY KEY (`id_tpa`),
  ADD UNIQUE KEY `id_kegiatan_masjid` (`id_kegiatan_masjid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun_admin`
--
ALTER TABLE `akun_admin`
  MODIFY `id_pengurus` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `arsip`
--
ALTER TABLE `arsip`
  MODIFY `id_arsip` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `berita_masjid`
--
ALTER TABLE `berita_masjid`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `berita_prm`
--
ALTER TABLE `berita_prm`
  MODIFY `id_berita_prm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporan_kegiatan`
--
ALTER TABLE `laporan_kegiatan`
  MODIFY `id_laporan_kegiatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  MODIFY `id_laporan_keuangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengumuman_masjid`
--
ALTER TABLE `pengumuman_masjid`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prm`
--
ALTER TABLE `prm`
  MODIFY `id_prm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profile_masjid`
--
ALTER TABLE `profile_masjid`
  MODIFY `id_profile_masjid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profile_prm`
--
ALTER TABLE `profile_prm`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pusat_download`
--
ALTER TABLE `pusat_download`
  MODIFY `id_pusat_download` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sejarah_masjid`
--
ALTER TABLE `sejarah_masjid`
  MODIFY `id_sejarah_masjid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sejarah_prm`
--
ALTER TABLE `sejarah_prm`
  MODIFY `id_sejarah_prm` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tpa`
--
ALTER TABLE `tpa`
  MODIFY `id_tpa` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
