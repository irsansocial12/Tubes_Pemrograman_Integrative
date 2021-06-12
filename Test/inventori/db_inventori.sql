-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2021 pada 12.40
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventori`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `stok`, `satuan`) VALUES
(1, '24997477', 'Mouse', 12, 'pcs'),
(2, '41883464', 'AC', 21, 'pcs'),
(3, '39827857', 'Keyboard', 7, 'dus'),
(4, '85225240', 'PC', 55, 'pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `kode`, `nama`, `email`, `telepon`, `alamat`) VALUES
(2, 'CST589', 'Irsan', 'irsan123@gmail.com', '12345678', 'Medan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_toko`
--

CREATE TABLE `data_toko` (
  `id` int(11) NOT NULL,
  `nama_toko` varchar(80) DEFAULT NULL,
  `nama_pemilik` varchar(80) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_toko`
--

INSERT INTO `data_toko` (`id`, `nama_toko`, `nama_pemilik`, `no_telepon`, `alamat`) VALUES
(1, 'Inventory Barang', 'BERSAMA', '081236441617', 'Jalan Dr. T. Mansur No.9, Padang Bulan, Kec. Medan Baru, Kota Medan, Sumatera Utara 20222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_keluar`
--

CREATE TABLE `detail_keluar` (
  `no_keluar` varchar(25) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_keluar`
--

INSERT INTO `detail_keluar` (`no_keluar`, `nama_barang`, `jumlah`, `satuan`) VALUES
('TR1623385953', 'AC', 1, 'pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_terima`
--

CREATE TABLE `detail_terima` (
  `no_terima` varchar(25) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_terima`
--

INSERT INTO `detail_terima` (`no_terima`, `nama_barang`, `jumlah`, `satuan`) VALUES
('TR1584538872', 'Keyboard', 1, 'pcs'),
('TR1584538872', 'Mouse', 1, 'pcs'),
('TR1584539271', 'Keyboard', 4, 'pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerimaan`
--

CREATE TABLE `penerimaan` (
  `id` int(11) NOT NULL,
  `no_terima` varchar(25) DEFAULT NULL,
  `tgl_terima` varchar(25) DEFAULT NULL,
  `jam_terima` varchar(10) DEFAULT NULL,
  `nama_supplier` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penerimaan`
--

INSERT INTO `penerimaan` (`id`, `no_terima`, `tgl_terima`, `jam_terima`, `nama_supplier`, `nama_petugas`) VALUES
(3, 'TR1584538872', '18/03/2020', '20:41:12', 'Mutiara Comp', 'Nugrohoo'),
(4, 'TR1584539271', '18/03/2020', '20:47:51', 'Mutiara Comp', 'Fanani');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `no_keluar` varchar(25) DEFAULT NULL,
  `tgl_keluar` varchar(25) DEFAULT NULL,
  `jam_keluar` varchar(10) DEFAULT NULL,
  `nama_customer` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `no_keluar`, `tgl_keluar`, `jam_keluar`, `nama_customer`, `nama_petugas`) VALUES
(6, 'TR1623385953', '11/06/2021', '11:32:33', 'Irsan', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `kode`, `nama`, `username`, `password`) VALUES
(1, '01', 'Admin', 'Admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `kode`, `nama`, `username`, `password`) VALUES
(1, '02', 'Shelli Athaya', 'Shelli Athaya', '12345'),
(2, '01', 'Liza Syaf', 'Liza Syaf', '12345'),
(3, '03', 'Nadia Farhani', 'Nadia Farhani', '12345'),
(4, '04', 'Karina Kaban', 'Karina Kaban', '12345'),
(5, '05', 'Tengku Dhila', 'Tengku Dhila', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `kode`, `nama`, `email`, `telepon`, `alamat`) VALUES
(1, 'SPL641', 'UNPAD', 'unpad.ac.id@gmail.com', '123456789', 'Jl. Raya Bandung Sumedang KM.21, Hegarmanah, Jatinangor, Kabupaten Sumedang, Jawa Barat 45363'),
(2, 'SPL407', 'UMSU', 'umsu.ac.id@gmail.com', '12345678', 'Jl. Kapten Muchtar Basri No.3, Glugur Darat II, Kec. Medan Tim., Kota Medan, Sumatera Utara 20238'),
(3, 'SPL149', 'UNAND', 'unand@gmail.com', '12345678', 'Limau Manis, Kec. Pauh, Kota Padang, Sumatera Barat 25175');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_toko`
--
ALTER TABLE `data_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerimaan`
--
ALTER TABLE `penerimaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_terima` (`no_terima`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_keluar` (`no_keluar`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data_toko`
--
ALTER TABLE `data_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penerimaan`
--
ALTER TABLE `penerimaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
