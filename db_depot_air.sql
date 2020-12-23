-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Des 2020 pada 15.41
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_depot_air`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `nama_konsumen` varchar(225) NOT NULL,
  `no_hp_konsumen` varchar(225) NOT NULL,
  `gender_konsumen` varchar(225) NOT NULL,
  `alamat_konsumen` text NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_konsumen`
--

INSERT INTO `tb_konsumen` (`id_konsumen`, `id_role`, `nama_konsumen`, `no_hp_konsumen`, `gender_konsumen`, `alamat_konsumen`, `password`) VALUES
(1, 0, 'konsumen', '08998868938', 'Pria', 'Tambun', 'b3duZXI=');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(225) NOT NULL,
  `purchase_price` int(225) NOT NULL,
  `selling_price` int(225) NOT NULL,
  `stock_product` int(225) NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`id_product`, `name_product`, `purchase_price`, `selling_price`, `stock_product`, `image`) VALUES
(1, 'Galon Aqua', 18000, 20000, 12, 'aqua.jpg'),
(2, 'Gas 3 Kg', 18000, 22000, 10, 'gas3kg.jpg'),
(3, 'Gas 12 Kg', 50000, 60000, 8, 'gas12kg.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_role`
--

CREATE TABLE `tb_role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sales`
--

CREATE TABLE `tb_sales` (
  `id_sales` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `jumlah_beli` int(100) NOT NULL,
  `sales_date` date NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_sales`
--

INSERT INTO `tb_sales` (`id_sales`, `id_user`, `id_product`, `amount`, `jumlah_beli`, `sales_date`, `status`) VALUES
(1, 7, 2, 22000, 0, '2020-08-31', 'kirim'),
(2, 7, 1, 20000, 0, '2020-08-31', 'kirim'),
(3, 7, 3, 60000, 0, '2020-08-31', 'kirim'),
(5, 7, 1, 20000, 0, '2020-09-04', 'kirim'),
(6, 7, 1, 20000, 0, '2020-09-04', ''),
(7, 7, 2, 22000, 0, '2020-12-12', ''),
(8, 7, 1, 20000, 0, '2020-12-12', ''),
(9, 7, 3, 60000, 0, '2020-12-12', ''),
(10, 7, 1, 20000, 0, '2020-12-12', ''),
(11, 7, 1, 20000, 0, '2020-12-12', ''),
(12, 7, 2, 44000, 2, '2020-12-12', ''),
(13, 1, 1, 100000, 5, '2020-12-23', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `phone_number` varchar(225) NOT NULL,
  `address` text NOT NULL,
  `level_user` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `gender`, `phone_number`, `address`, `level_user`) VALUES
(1, 'owner', 'b3duZXI=', 'Pria', '08998868936', 'Tambun', 'owner'),
(6, 'karyawan', 'a2FyeWF3YW4=', 'Pria', '08998868937', 'Tambun', 'karyawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `tb_sales`
--
ALTER TABLE `tb_sales`
  ADD PRIMARY KEY (`id_sales`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_sales`
--
ALTER TABLE `tb_sales`
  MODIFY `id_sales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
