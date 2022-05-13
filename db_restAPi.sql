-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 13 Bulan Mei 2022 pada 13.46
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restAPi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses_token`
--

CREATE TABLE `akses_token` (
  `id_token` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `akses_token` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akses_token`
--

INSERT INTO `akses_token` (`id_token`, `id_user`, `akses_token`, `ip_address`, `role`) VALUES
(8, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoxLCJ1c2VybmFtZSI6Inl1ZGkgZ3VuYXdhbiIsImVtYWlsIjoieXVkaS5ndW5hd2FuQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0Z2xfZGFmdGFyIjoiMjAyMS0wMi0yMVQxNzowMDowMC4wMDBaIn1dLCJpYXQiOjE2MjMzNDA1MTIsImV4cCI6MTYyMzQyNjkxMn0.F70Got3_4wbRszoA7YLR3Lo29RhqEmSh1O8C_GEDatI', '192.168.1.248', 2),
(9, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoyLCJ1c2VybmFtZSI6Inl1ZGkiLCJlbWFpbCI6Inl1ZGkuZ3VuYW9uZUBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjdjZmRkMDc4ODliMzI5NWQ2YTU1MDkxNGFiMzVlMDY4Iiwicm9sZSI6MiwidGdsX2RhZnRhciI6IjIwMjEtMDgtMTlUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjI5NDY2MjI5LCJleHAiOjE2Mjk1NTI2Mjl9.ShRNHRzY1-DC9uFL6Y-J4TuNgjoqKuobwqhfk7kmc_s', '192.168.1.218', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(3) NOT NULL,
  `tgl_krs` date NOT NULL,
  `id_matakuliah` int(3) NOT NULL,
  `id_mahasiswa` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id_krs`, `tgl_krs`, `id_matakuliah`, `id_mahasiswa`) VALUES
(1, '2021-02-16', 5, 6),
(2, '2021-02-17', 1, 6),
(3, '2021-02-16', 6, 6),
(4, '2021-02-17', 4, 6),
(5, '2021-02-16', 1, 5),
(6, '2021-02-17', 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(3) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `jurusan` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `jurusan`) VALUES
(5, '14117035', 'yudi gunawan', 'Teknik informatika'),
(6, '177393', 'yadi santoso', 'Teknik pangan'),
(7, '1411700', 'cahya', 'hukum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(3) NOT NULL,
  `matakuliah` varchar(35) NOT NULL,
  `sks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `matakuliah`, `sks`) VALUES
(1, 'pemrograman web', 3),
(2, 'Matriks dan ruang vektor', 3),
(3, 'System operasi', 2),
(4, 'Proyek perangkat lunak', 4),
(5, 'matematika diskrit', 2),
(6, 'statistik', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id` int(5) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `media`
--

INSERT INTO `media` (`id`, `file`) VALUES
(2, 'https://res.cloudinary.com/youone/image/upload/v1640005880/xs9tmmlyzso9bgolosbk.png'),
(3, 'Screenshot from 2021-02-27 18-51-25.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `username` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(3) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `role`, `tgl_daftar`) VALUES
(1, 'yudi gunawan', 'yudi.gunawan@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2021-02-22'),
(2, 'yudi', 'yudi.gunaone@gmail.com', '7cfdd07889b3295d6a550914ab35e068', 2, '2021-08-20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akses_token`
--
ALTER TABLE `akses_token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matakuliah` (`id_matakuliah`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akses_token`
--
ALTER TABLE `akses_token`
  MODIFY `id_token` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
