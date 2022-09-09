-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Sep 2022 pada 12.38
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srilangkat2017`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_absensi_guru`
--

CREATE TABLE `rb_absensi_guru` (
  `id_absensi_guru` int(5) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `kode_kehadiran` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_absensi_siswa`
--

CREATE TABLE `rb_absensi_siswa` (
  `id_absensi_siswa` int(5) NOT NULL,
  `id_journal` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kehadiran` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_absensi_siswa`
--

INSERT INTO `rb_absensi_siswa` (`id_absensi_siswa`, `id_journal`, `kodejdwl`, `nisn`, `kode_kehadiran`, `tanggal`, `waktu_input`) VALUES
(1, 6, 33, '9991268756', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(2, 6, 33, '0151379251', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(3, 6, 33, '0004107204', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(4, 6, 33, '9998218087', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(5, 6, 33, '0007105659', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(6, 6, 33, '0000267795', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(7, 6, 33, '0007011100', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(8, 6, 33, '0000261160', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(9, 6, 33, '9991261263', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(10, 6, 33, '9994930260', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(11, 6, 33, '9991262828', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(12, 6, 33, '9991261271', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(13, 6, 33, '9998214151', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(14, 6, 33, '0000282457', 'H', '2016-07-16', '2016-07-16 12:19:44'),
(15, 6, 33, '0126523169', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(16, 6, 33, '9997515863', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(17, 6, 33, '9991261719', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(18, 6, 33, '0000240365', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(19, 6, 33, '9998214335', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(20, 6, 33, '9998215055', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(21, 6, 33, '0002882643', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(22, 6, 33, '0009170412', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(23, 6, 33, '0005405460', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(24, 6, 33, '0007675125', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(25, 6, 33, '9991384898', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(26, 6, 33, '9991260829', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(27, 6, 33, '0007011850', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(28, 6, 33, '9993841192', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(29, 6, 33, '0000423077', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(30, 6, 33, '0000261542', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(31, 6, 33, '0002731714', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(32, 6, 33, '0000282184', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(33, 6, 33, '9991263477', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(34, 6, 33, '9999152999', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(35, 6, 33, '0000261141', 'H', '2016-07-16', '2016-07-16 12:19:45'),
(36, 6, 33, '9991268756', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(37, 6, 33, '0151379251', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(38, 6, 33, '0004107204', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(39, 6, 33, '9998218087', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(40, 6, 33, '0007105659', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(41, 6, 33, '0000267795', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(42, 6, 33, '0007011100', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(43, 6, 33, '0000261160', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(44, 6, 33, '9991261263', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(45, 6, 33, '9994930260', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(46, 6, 33, '9991262828', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(47, 6, 33, '9991261271', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(48, 6, 33, '9998214151', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(49, 6, 33, '0000282457', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(50, 6, 33, '0126523169', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(51, 6, 33, '9997515863', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(52, 6, 33, '9991261719', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(53, 6, 33, '0000240365', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(54, 6, 33, '9998214335', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(55, 6, 33, '9998215055', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(56, 6, 33, '0002882643', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(57, 6, 33, '0009170412', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(58, 6, 33, '0005405460', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(59, 6, 33, '0007675125', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(60, 6, 33, '9991384898', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(61, 6, 33, '9991260829', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(62, 6, 33, '0007011850', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(63, 6, 33, '9993841192', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(64, 6, 33, '0000423077', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(65, 6, 33, '0000261542', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(66, 6, 33, '0002731714', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(67, 6, 33, '0000282184', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(68, 6, 33, '9991263477', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(69, 6, 33, '9999152999', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(70, 6, 33, '0000261141', 'H', '2016-07-17', '2016-07-16 12:44:16'),
(71, 8, 34, '9991268756', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(72, 8, 34, '0151379251', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(73, 8, 34, '0004107204', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(74, 8, 34, '9998218087', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(75, 8, 34, '0007105659', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(76, 8, 34, '0000267795', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(77, 8, 34, '0007011100', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(78, 8, 34, '0000261160', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(79, 8, 34, '9991261263', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(80, 8, 34, '9994930260', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(81, 8, 34, '9991262828', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(82, 8, 34, '9991261271', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(83, 8, 34, '9998214151', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(84, 8, 34, '0000282457', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(85, 8, 34, '0126523169', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(86, 8, 34, '9997515863', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(87, 8, 34, '9991261719', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(88, 8, 34, '0000240365', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(89, 8, 34, '9998214335', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(90, 8, 34, '9998215055', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(91, 8, 34, '0002882643', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(92, 8, 34, '0009170412', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(93, 8, 34, '0005405460', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(94, 8, 34, '0007675125', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(95, 8, 34, '9991384898', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(96, 8, 34, '9991260829', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(97, 8, 34, '0007011850', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(98, 8, 34, '9993841192', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(99, 8, 34, '0000423077', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(100, 8, 34, '0000261542', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(101, 8, 34, '0002731714', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(102, 8, 34, '0000282184', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(103, 8, 34, '9991263477', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(104, 8, 34, '9999152999', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(105, 8, 34, '0000261141', 'H', '2016-07-16', '2016-07-16 13:13:32'),
(106, 10, 5, '9991268756', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(107, 10, 5, '0151379251', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(108, 10, 5, '0004107204', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(109, 10, 5, '9998218087', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(110, 10, 5, '0007105659', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(111, 10, 5, '0000267795', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(112, 10, 5, '0007011100', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(113, 10, 5, '0000261160', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(114, 10, 5, '9991261263', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(115, 10, 5, '9994930260', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(116, 10, 5, '9991262828', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(117, 10, 5, '9991261271', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(118, 10, 5, '9998214151', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(119, 10, 5, '0000282457', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(120, 10, 5, '0126523169', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(121, 10, 5, '9997515863', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(122, 10, 5, '9991261719', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(123, 10, 5, '0000240365', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(124, 10, 5, '9998214335', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(125, 10, 5, '9998215055', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(126, 10, 5, '0002882643', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(127, 10, 5, '0009170412', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(128, 10, 5, '0005405460', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(129, 10, 5, '0007675125', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(130, 10, 5, '9991384898', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(131, 10, 5, '9991260829', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(132, 10, 5, '0007011850', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(133, 10, 5, '9993841192', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(134, 10, 5, '0000423077', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(135, 10, 5, '0000261542', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(136, 10, 5, '0002731714', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(137, 10, 5, '0000282184', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(138, 10, 5, '9991263477', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(139, 10, 5, '9999152999', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(140, 10, 5, '0000261141', 'H', '2016-07-18', '2016-07-18 06:12:53'),
(141, 10, 5, '9991268756', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(142, 10, 5, '0151379251', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(143, 10, 5, '0004107204', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(144, 10, 5, '9998218087', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(145, 10, 5, '0007105659', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(146, 10, 5, '0000267795', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(147, 10, 5, '0007011100', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(148, 10, 5, '0000261160', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(149, 10, 5, '9991261263', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(150, 10, 5, '9994930260', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(151, 10, 5, '9991262828', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(152, 10, 5, '9991261271', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(153, 10, 5, '9998214151', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(154, 10, 5, '0000282457', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(155, 10, 5, '0126523169', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(156, 10, 5, '9997515863', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(157, 10, 5, '9991261719', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(158, 10, 5, '0000240365', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(159, 10, 5, '9998214335', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(160, 10, 5, '9998215055', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(161, 10, 5, '0002882643', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(162, 10, 5, '0009170412', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(163, 10, 5, '0005405460', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(164, 10, 5, '0007675125', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(165, 10, 5, '9991384898', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(166, 10, 5, '9991260829', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(167, 10, 5, '0007011850', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(168, 10, 5, '9993841192', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(169, 10, 5, '0000423077', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(170, 10, 5, '0000261542', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(171, 10, 5, '0002731714', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(172, 10, 5, '0000282184', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(173, 10, 5, '9991263477', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(174, 10, 5, '9999152999', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(175, 10, 5, '0000261141', 'H', '2016-07-19', '2016-07-19 15:57:28'),
(176, 12, 14, '0151379251', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(177, 12, 14, '0004107204', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(178, 12, 14, '9998218087', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(179, 12, 14, '0007105659', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(180, 12, 14, '0000267795', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(181, 12, 14, '0007011100', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(182, 12, 14, '0000261160', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(183, 12, 14, '9991261263', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(184, 12, 14, '9994930260', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(185, 12, 14, '9991262828', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(186, 12, 14, '9991261271', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(187, 12, 14, '9998214151', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(188, 12, 14, '0000282457', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(189, 12, 14, '0126523169', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(190, 12, 14, '9997515863', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(191, 12, 14, '9991261719', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(192, 12, 14, '0000240365', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(193, 12, 14, '9998214335', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(194, 12, 14, '9998215055', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(195, 12, 14, '0002882643', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(196, 12, 14, '0009170412', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(197, 12, 14, '0005405460', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(198, 12, 14, '0007675125', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(199, 12, 14, '9991384898', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(200, 12, 14, '9991260829', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(201, 12, 14, '0007011850', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(202, 12, 14, '9993841192', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(203, 12, 14, '0000423077', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(204, 12, 14, '0000261542', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(205, 12, 14, '0002731714', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(206, 12, 14, '0000282184', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(207, 12, 14, '9991263477', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(208, 12, 14, '9999152999', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(209, 12, 14, '0000261141', 'H', '2017-04-01', '2017-04-01 00:39:43'),
(210, 13, 37, '0151379251', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(211, 13, 37, '0004107204', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(212, 13, 37, '9998218087', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(213, 13, 37, '0007105659', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(214, 13, 37, '0000267795', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(215, 13, 37, '0007011100', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(216, 13, 37, '0000261160', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(217, 13, 37, '9991261263', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(218, 13, 37, '9994930260', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(219, 13, 37, '9991262828', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(220, 13, 37, '9991261271', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(221, 13, 37, '9998214151', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(222, 13, 37, '0000282457', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(223, 13, 37, '0126523169', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(224, 13, 37, '9997515863', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(225, 13, 37, '9991261719', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(226, 13, 37, '0000240365', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(227, 13, 37, '9998214335', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(228, 13, 37, '9998215055', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(229, 13, 37, '0002882643', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(230, 13, 37, '0009170412', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(231, 13, 37, '0005405460', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(232, 13, 37, '0007675125', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(233, 13, 37, '9991384898', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(234, 13, 37, '9991260829', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(235, 13, 37, '0007011850', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(236, 13, 37, '9993841192', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(237, 13, 37, '0000423077', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(238, 13, 37, '0000261542', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(239, 13, 37, '0002731714', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(240, 13, 37, '0000282184', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(241, 13, 37, '9991263477', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(242, 13, 37, '9999152999', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(243, 13, 37, '0000261141', 'H', '2017-04-01', '2017-04-01 01:56:58'),
(244, 14, 38, '123', 'H', '2017-04-01', '2017-04-01 20:03:07'),
(245, 58, 38, '123', 'H', '2017-04-22', '2017-04-22 00:10:29'),
(246, 58, 38, '765', 'H', '2017-04-22', '2017-04-22 00:10:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_agama`
--

CREATE TABLE `rb_agama` (
  `id_agama` int(5) NOT NULL,
  `nama_agama` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_agama`
--

INSERT INTO `rb_agama` (`id_agama`, `nama_agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Hindu'),
(4, 'Budha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_bank_pertanyaan_essai`
--

CREATE TABLE `rb_bank_pertanyaan_essai` (
  `id_bank_pertanyaan_essai` int(11) NOT NULL,
  `kode_pelajaran` varchar(20) NOT NULL,
  `pertanyaan_essai` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_bank_pertanyaan_essai`
--

INSERT INTO `rb_bank_pertanyaan_essai` (`id_bank_pertanyaan_essai`, `kode_pelajaran`, `pertanyaan_essai`) VALUES
(1, 'MK02', 'Siapakah Nama Presiden ke 5 Indonesiaa ?'),
(2, 'MK02', 'Sebutkan Nama-nama Pahlawan Revolusi ?'),
(3, 'MK02', 'Dimanakah Terjadinya Perjanjian Linggarjati ?'),
(5, 'MK02', 'Sebutkan Arti Sila Ke 2 ?'),
(6, 'MK02', 'Siapa Nama Pencipta Lagu Indonesia Raya ?'),
(9, 'MK02', 'Siapa Nama Kepa Sekolah Kita ?'),
(10, 'MK02', '<b></b>Berapakah Hasil 234 + 125 ?'),
(11, 'MK02', 'kbkbkjbkjbkbk'),
(21, 'MK01', '<p>fyftydjtr7dot8sjrt7sr57sjrkk &nbsp;ftu dts r57srtu &nbsp;sr67ae57 m t67n5r7</p>'),
(22, 'MK01', 'frtyjrty rysrtu dtu&nbsp;<i>srt7ysrt6u tusrtu srtutzftu zfty dfy</i>'),
(23, 'MK03', '<p>apakah ?<br></p>'),
(24, 'MK03', '<p>dimanakah ?<br></p>'),
(25, 'MK08', '<p><b>apa itu program?</b><br></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_bank_pertanyaan_objektif`
--

CREATE TABLE `rb_bank_pertanyaan_objektif` (
  `id_bank_pertanyaan_objektif` int(11) NOT NULL,
  `kode_pelajaran` varchar(20) NOT NULL,
  `pertanyaan_objektif` text NOT NULL,
  `jawab_a` varchar(255) NOT NULL,
  `jawab_b` varchar(255) NOT NULL,
  `jawab_c` varchar(255) NOT NULL,
  `jawab_d` varchar(255) NOT NULL,
  `jawab_e` varchar(255) NOT NULL,
  `kunci_jawaban` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_bank_pertanyaan_objektif`
--

INSERT INTO `rb_bank_pertanyaan_objektif` (`id_bank_pertanyaan_objektif`, `kode_pelajaran`, `pertanyaan_objektif`, `jawab_a`, `jawab_b`, `jawab_c`, `jawab_d`, `jawab_e`, `kunci_jawaban`) VALUES
(1, 'MK02', 'Gubernur Tertua di Sumbar ?', 'Udin Sedunia', 'Saipul Jamil', 'Roma Irama', 'Fauzi Bahar', '', 'a'),
(2, 'MK02', 'Nama-nama Pahlawan Indonesia ?', 'Robby Prihandaya', 'Taufik Hidayat', 'Ahmad Yani', 'Jokowi', '', 'c'),
(3, 'MK02', 'Dimana Terjadinya Pembunuhan Sukarno ?', 'Padang', 'Payakumbuh', 'Bukit Tinggi', 'Semua Benar', '', 'a'),
(5, 'MK02', 'Sebutkan Arti Sila Ke 2 ?', 'Keadilan Bagi Indonedia', 'Kerakyatan yang dipimpin Ndeso', 'Berjuang Untuk Jadi Lebih Baik', 'Kemanusiaan yang adil dan Beradap', '', 'd'),
(6, 'MK02', 'Siapa Nama Pencipta Lagu Indonesia Raya ?', 'Dewiit Safitri', 'Ahmad Dani', 'Aura Kasih', 'Wr.Supratman', '', 'd'),
(8, 'MK02', 'Siapakah nama Presiden ke 2 Indonesia ?', 'Joko Widodo', 'Susilo Bambang Yudoyono', 'Abdulrahman Wahid', 'Megawati', 'Soehartooo', 'd'),
(14, 'MK03', '<p>apakah ?<br></p>', '<p>a<br></p>', '<p>b<br></p>', '<p>c<br></p>', '<p>d<br></p>', '<p>e<br></p>', 'c'),
(15, 'MK03', '<p>dimanakah ?<br></p>', '<p>1<br></p>', '<p>2<br></p>', '<p>3<br></p>', '<p>4<br></p>', '<p>5<br></p>', 'b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_bar`
--

CREATE TABLE `rb_bar` (
  `id_absen` int(11) NOT NULL,
  `nip` int(20) NOT NULL,
  `tanggal_absen` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `status_masuk` enum('Y','N') NOT NULL DEFAULT 'N',
  `status_keluar` enum('Y','N') NOT NULL DEFAULT 'N',
  `ket` char(3) NOT NULL DEFAULT 'NA',
  `terlambat` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_bar`
--

INSERT INTO `rb_bar` (`id_absen`, `nip`, `tanggal_absen`, `jam_masuk`, `jam_keluar`, `status_masuk`, `status_keluar`, `ket`, `terlambat`) VALUES
(87, 1001, '2017-05-21', '16:18:59', '00:00:00', 'Y', 'N', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_barcode`
--

CREATE TABLE `rb_barcode` (
  `id_absen` int(11) NOT NULL,
  `nipd` int(100) NOT NULL,
  `tanggal_absen` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `status_masuk` enum('Y','N') NOT NULL DEFAULT 'N',
  `status_keluar` enum('Y','N') NOT NULL DEFAULT 'N',
  `ket` char(3) NOT NULL DEFAULT 'NA',
  `terlambat` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_barcode`
--

INSERT INTO `rb_barcode` (`id_absen`, `nipd`, `tanggal_absen`, `jam_masuk`, `jam_keluar`, `status_masuk`, `status_keluar`, `ket`, `terlambat`) VALUES
(100, 1001, '2017-05-21', '16:18:59', '00:00:00', 'Y', 'N', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_elearning`
--

CREATE TABLE `rb_elearning` (
  `id_elearning` int(10) NOT NULL,
  `id_kategori_elearning` int(5) NOT NULL,
  `kodejdwl` int(5) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `file_upload` text NOT NULL,
  `tanggal_tugas` datetime NOT NULL,
  `tanggal_selesai` datetime NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_elearning`
--

INSERT INTO `rb_elearning` (`id_elearning`, `id_kategori_elearning`, `kodejdwl`, `nama_file`, `file_upload`, `tanggal_tugas`, `tanggal_selesai`, `keterangan`) VALUES
(13, 1, 7, 'File Upload Materi 1', 'Contoh_Kasus_AHP.docx', '2015-12-09 08:07:15', '0000-00-00 00:00:00', ''),
(22, 2, 7, 'Tugas Untuk Siswa Kelompok yang Malas', 'cover_Pidana_korupsi.docx', '2015-12-09 22:37:51', '2015-12-23 13:07:09', 'Tolong Dikerjakan, Kalau Tidak Maka nilai Raport anda merah..'),
(23, 2, 7, 'Tugas Pertama ', 'Surat-Keterangan-Kepsek.docx', '2015-12-13 15:02:00', '2016-01-22 15:02:00', 'Selesaikan Secepatnya,..!'),
(24, 1, 5, 'Bahan Untuk Tugas Semester 1', 'journal_profile_matching_beasiswa.pdf', '2016-02-23 09:04:22', '2016-12-23 11:04:22', 'Bahan Untuk Tugas Semester 2 ini tolong dipelajari karena akan banyak keluar di ujian semester nanti.'),
(25, 2, 5, 'Tugas Semester 1 Tahun Ajaran 2015/2016', 'Metode-Profile-Matching.pdf', '2015-12-23 09:11:15', '2016-04-25 09:11:15', 'Silahkan Dijawab dan unutk jawaban di upload disini paling lambat sesuai tanggal selesai..'),
(26, 1, 13, 'Bahan Unutk Peljaran Besok', '20160311072304-Tugas_laura.docx', '2016-03-11 07:22:32', '2016-03-11 07:22:32', ''),
(27, 2, 13, 'Tugas Unutk Dikumpul Besok 12 Maret 2016', '20160311072502-Aturan Main Projects.docx', '2016-03-11 07:24:16', '2016-03-13 07:24:16', ''),
(28, 1, 13, 'kjbkjbkbk', '20160311143928-HITUNG NILAI RAPORT.docx', '2016-03-11 14:39:09', '2016-03-11 14:39:09', 'kjbkbk'),
(29, 1, 5, 'Bahan Ajar awal semester', '20160718060717-Central.Intelligence2016.720pHCWEBRip.srt', '2016-07-18 06:06:38', '2016-07-18 06:06:38', 'Silahkan di download,..'),
(30, 1, 37, 'bahan ajar', '20170401015815-6 undangan khitan kabinet cdr.cdr', '2017-04-01 01:57:18', '2017-04-05 01:57:18', 'silahkan di download');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_elearning_jawab`
--

CREATE TABLE `rb_elearning_jawab` (
  `id_elearning_jawab` int(5) NOT NULL,
  `id_elearning` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `file_tugas` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_elearning_jawab`
--

INSERT INTO `rb_elearning_jawab` (`id_elearning_jawab`, `id_elearning`, `nisn`, `keterangan`, `file_tugas`, `waktu`) VALUES
(3, 25, '9991268756', 'Ini buk Guru tugas dari saya, Tolong diperiksa,..', '20160309112015-Nilai_Siswa_9982679070.pdf', '2016-03-09 11:20:15'),
(4, 27, '9991268756', 'Ini Tugas saya buk..', '20160311072733-Pengembangan Members.txt', '2016-03-11 07:27:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_forum_komentar`
--

CREATE TABLE `rb_forum_komentar` (
  `id_forum_komentar` int(10) NOT NULL,
  `id_forum_topic` int(10) NOT NULL,
  `nisn_nip` varchar(20) NOT NULL,
  `isi_komentar` text NOT NULL,
  `waktu_komentar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_forum_komentar`
--

INSERT INTO `rb_forum_komentar` (`id_forum_komentar`, `id_forum_topic`, `nisn_nip`, `isi_komentar`, `waktu_komentar`) VALUES
(1, 3, '9980707189', 'Senangi dulu pelajaran yang diharapkan nilainya bagus. Tanpa menyenangi pelajaran tersebut, maka hasil yang diperoleh melalui belajar tidak akan maksimal. Paling tidak, jangan sampai membenci pelajarannya. Hal ini karena akan tidak mungkin seseorang bisa betah lama-lama belajar materi suatu mata pelajaran yang dibencinya, apalagi untuk memahaminya.', '2015-12-12 05:09:15'),
(7, 1, '9980722436', 'Hallo teman teman, Numpang share lowongan ya. lagi di butuhkan segera nih buat posisi Full Time Web Developer/ Web Programmer.', '2016-02-26 00:34:01'),
(13, 1, '9991268756', 'Kami hanya ingin berdoa, ingin beribadah dan menjalankan ibadat kami. Kami tidak pernah menggangu apalagi berusaha untuk mengganggu umat beragama lain apalagi melakukan kristenisasi. Berpikir untuk itu saja kami tidak pernah.', '2016-03-09 10:38:51'),
(12, 1, '195704111980032004', 'Kami cuma ingin memiliki rumah ibadat agar kami dapat berdoa kepada Tuhan kami dengan khusuk. Dosakah itu? apakah itu terlarang di negara yag berazaskan Pancasila ini? Dimanakah rasa damai dan keadilan itu? Masih adakah toleransi di negara ini?', '2016-03-09 10:36:22'),
(3, 3, '9980722436', 'Milikilah rasa ingin tahu yang besar, karena hanya orang-orang yang memiliki rasa ingin tahu yang besar dalam banyak hal lah yang akan selalu senang dalam belajar, dan selalu ingin mempelajari dan memahami hal-hal baru dan banyak hal yang ia temui.', '2015-12-11 17:09:55'),
(14, 4, '1', 'Komentari jika ada pertanyaan,..', '2016-07-18 06:30:20'),
(16, 4, '1', 'baiklah kala begitu', '2017-03-30 21:47:51'),
(17, 4, '2', ',jbkjblkn;lklgkjvl', '2017-04-01 01:41:39'),
(19, 5, '0151379251', 'oke buk akan saya ingatkan', '2017-04-01 02:12:57'),
(21, 5, '123', 'baiklah kalau begitu', '2017-04-01 11:37:25'),
(23, 5, '123', 'yaudin', '2017-04-23 10:29:03'),
(24, 5, '765', 'hadir bu', '2017-04-23 10:34:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_forum_topic`
--

CREATE TABLE `rb_forum_topic` (
  `id_forum_topic` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `judul_topic` varchar(255) NOT NULL,
  `isi_topic` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_forum_topic`
--

INSERT INTO `rb_forum_topic` (`id_forum_topic`, `kodejdwl`, `judul_topic`, `isi_topic`, `waktu`) VALUES
(1, 33, 'Cara Unutk Memahami Rumus Pitagoras dengan mudah.', 'Dalam matematika, teorema Pythagoras adalah suatu keterkaitan dalam geometri Euklides antara tiga sisi sebuah segitiga siku-siku. Teorema ini dinamakan menurut nama filsuf dan matematikawan Yunani abad ke-6 SM, Pythagoras. . Pythagoras mendapat kredit karena ialah yang pertama membuktikan kebenaran universal dari teorema ini melalui pembuktian matematis.', '2015-12-11 08:08:18'),
(2, 7, 'Rumus untuk menghitung pendapatan perkapita', 'Pendapatan per kapita adalah jumlah (nilai) barang dan jasa rata-rata yang tersedia bagi setiap penduduk suatu negara pada suatu periode tertentu.\r\n\r\nPendapatan per kapita dapat digunakan untuk membandingkan kesejahteraan atau standar hidup suatu negara dari tahun ke tahun. Dengan melakukan perbandingan seperti itu, kita dapat mengamati apakah kesejahteraan masyarakat pada suatu negara secara rata-rata telah meningkat. Pendapatan per kapita yang meningkat merupakan salah satu tanda bahwa rata-rata kesejahteraan penduduk telah meningkat. Pendapatan per kapita menunjukkan pula apakah pembangunan yang telah dilaksanakan oleh pemerintah telah berhasil, berapa besar keberhasilan tersebut, dan akibat apa yang timbul oleh peningkatan tersebut.', '2015-12-12 13:13:27'),
(3, 7, 'Cara Mendapatkan Nilai Bagus Dan Menjadi Juara Kelas Di Sekolah', 'Bagaimana caranya agar nilai rapor mata pelajaran di sekolah hasilnya baik dan bagus sehingga syukur-syukur bisa menjadi juara kelas ? Ikuti tips di bawah ini yang didasarkan pada sebuah pengalaman nyata bertahun-tahun dari berbagai sumber. \r\n\r\nPerlu untuk digaris-bawahi, tak dibutuhkan otak yang pintar atau jenius untuk mendapatkan nilai yang bagus di sekolah ataupun untuk menjadi seorang juara kelas. Seseorang yang kemampuan otaknya biasa-biasa saja akan bisa memperoleh hasil yang bagus asalkan ia memiliki niat, kemauan, maupun sikap yang tepat dalam mewujudkan ambisinya.', '2015-12-11 16:20:51'),
(4, 5, 'Cara mendapatkan nilai bagus', 'Cara mendapatkan nilai bagus mata kuliah ini adalah dengan rajin datang / mengikuti pelajaran.', '2016-07-18 06:26:42'),
(5, 37, 'lupa', 'saya lupa kalau ada bahan yang akan di kumpulkan malam ini', '2017-04-01 02:06:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_gedung`
--

CREATE TABLE `rb_gedung` (
  `kode_gedung` varchar(10) NOT NULL,
  `nama_gedung` varchar(100) NOT NULL,
  `jumlah_lantai` varchar(20) NOT NULL,
  `panjang` varchar(20) NOT NULL,
  `tinggi` varchar(20) NOT NULL,
  `lebar` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_gedung`
--

INSERT INTO `rb_gedung` (`kode_gedung`, `nama_gedung`, `jumlah_lantai`, `panjang`, `tinggi`, `lebar`, `keterangan`, `aktif`) VALUES
('G001', 'Gedung A', '2', '100', '50', '50', 'asdas', 'Y'),
('G002', 'Gedung B', '3', '50', '80', '30', 'asdasdaasdas', 'Y'),
('G003', 'asdasd', '334', '23', '34', '12', 'asdasd', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_golongan`
--

CREATE TABLE `rb_golongan` (
  `id_golongan` int(5) NOT NULL,
  `nama_golongan` varchar(150) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_golongan`
--

INSERT INTO `rb_golongan` (`id_golongan`, `nama_golongan`, `keterangan`) VALUES
(1, 'IV/a', 'Golongan IV/a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_guru`
--

CREATE TABLE `rb_guru` (
  `nip` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_guru` varchar(150) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `niy_nigk` varchar(50) NOT NULL,
  `nuptk` varchar(50) NOT NULL,
  `id_status_kepegawaian` int(5) NOT NULL,
  `id_jenis_ptk` int(5) NOT NULL,
  `pengawas_bidang_studi` varchar(150) NOT NULL,
  `id_agama` int(5) NOT NULL,
  `alamat_jalan` varchar(255) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `nama_dusun` varchar(100) NOT NULL,
  `desa_kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tugas_tambahan` varchar(100) NOT NULL,
  `id_status_keaktifan` int(5) NOT NULL,
  `sk_cpns` varchar(150) NOT NULL,
  `tanggal_cpns` date NOT NULL,
  `sk_pengangkatan` varchar(150) NOT NULL,
  `tmt_pengangkatan` date NOT NULL,
  `lembaga_pengangkatan` varchar(150) NOT NULL,
  `id_golongan` int(5) NOT NULL,
  `keahlian_laboratorium` varchar(150) NOT NULL,
  `sumber_gaji` varchar(150) NOT NULL,
  `nama_ibu_kandung` varchar(100) NOT NULL,
  `id_status_pernikahan` int(5) NOT NULL,
  `nama_suami_istri` varchar(100) NOT NULL,
  `nip_suami_istri` varchar(30) NOT NULL,
  `pekerjaan_suami_istri` varchar(100) NOT NULL,
  `tmt_pns` date NOT NULL,
  `lisensi_kepsek` varchar(20) NOT NULL,
  `jumlah_sekolah_binaan` int(5) NOT NULL,
  `diklat_kepengawasan` varchar(20) NOT NULL,
  `mampu_handle_kk` varchar(20) NOT NULL,
  `keahlian_breile` varchar(20) NOT NULL,
  `keahlian_bahasa_isyarat` varchar(20) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_guru`
--

INSERT INTO `rb_guru` (`nip`, `password`, `nama_guru`, `id_jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nik`, `niy_nigk`, `nuptk`, `id_status_kepegawaian`, `id_jenis_ptk`, `pengawas_bidang_studi`, `id_agama`, `alamat_jalan`, `rt`, `rw`, `nama_dusun`, `desa_kelurahan`, `kecamatan`, `kode_pos`, `telepon`, `hp`, `email`, `tugas_tambahan`, `id_status_keaktifan`, `sk_cpns`, `tanggal_cpns`, `sk_pengangkatan`, `tmt_pengangkatan`, `lembaga_pengangkatan`, `id_golongan`, `keahlian_laboratorium`, `sumber_gaji`, `nama_ibu_kandung`, `id_status_pernikahan`, `nama_suami_istri`, `nip_suami_istri`, `pekerjaan_suami_istri`, `tmt_pns`, `lisensi_kepsek`, `jumlah_sekolah_binaan`, `diklat_kepengawasan`, `mampu_handle_kk`, `keahlian_breile`, `keahlian_bahasa_isyarat`, `npwp`, `kewarganegaraan`, `foto`) VALUES
('1001', 'guru', 'Adnan Perangin - angin', 1, 'Kuala', '0000-00-00', '', '', '1537730632200033', 4, 2, '', 1, 'Jalan Sei wampu Dusun 1 Pekubuan', '00', '00', '', 'Perkubuan', 'Tanjung Pura', 20853, '', '085275439106', 'srilangkat_sma@ymail.com', '', 1, '', '0000-00-00', '1881', '0000-00-00', 'Ketua Yayasan', 0, '', 'Yayasan', 'Kite Beru Sitepu', 1, 'SYAMSIEM', '', 'Tidak bekerja', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '', 'Indonesia', ''),
('1002', 'guru', 'AMINAH', 2, 'PANTAI CERMIN', '0000-00-00', '', '', '', 2, 2, '', 1, 'DSN. PANGKAL PASAR NO.144', '00', '00', '', 'PANTAI CERMIN', 'Tanjung Pura', 20853, '', '082360039600', 'amiaisyah29@yahoo.com', '', 1, '', '0000-00-00', '086/L-PSL/OT/2008', '0000-00-00', 'Ketua Yayasan', 0, '', 'Yayasan', 'SUMIATI', 1, 'SYAHREL', '', 'Wiraswasta', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '', 'Indonesia', ''),
('1003', 'guru', 'CICI PURNAMA SARI', 2, 'BATANG KUIS', '0000-00-00', '', '', '', 2, 2, '', 1, 'PELITA', '00', '00', '', 'TANJUNG MULIA', 'Hinai', 20852, '', '082166319909', 'ciciebilchem@yahoo.co.id', '', 1, '', '0000-00-00', '004/L-SL/OT/2015', '0000-00-00', 'Ketua Yayasan', 0, '', 'Yayasan', '', 2, '', '', '', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '', 'Indonesia', 'srilangkat-Penguins.jpg'),
('1004', 'guru', 'Farida Hanum', 2, 'Batu Melenggang', '0000-00-00', '', '', '', 2, 2, '', 1, 'Jln. Tanjung Pura Km. 55 Batu Melenggang', '00', '00', 'Dusun I', 'Batu Melenggang', 'Hinai', 20854, '', '085373405400', 'faridamardatillah@yahoo.com', '', 1, '', '0000-00-00', '086/L-PSL/OT/2008', '0000-00-00', 'Ketua Yayasan', 0, '', 'Yayasan', 'Nursiah Hasibuan', 1, 'Mislahuddin Lubis', '', 'Pedagang Kecil', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '', 'Indonesia', ''),
('1005', 'guru', 'FITRI HANDAYANI LUBIS', 2, 'SEI.LIMBAT', '0000-00-00', '', '', '', 2, 2, '', 1, 'JLN SATRIA', '00', '00', 'Dusun II', 'DESA BARU', 'Hinai', 20854, '', '085275403522', 'fitrhandayani472@gmail.com', '', 1, '', '0000-00-00', '149/I05.3/YP.PABAKU/2016', '0000-00-00', 'Ketua Yayasan', 0, '', 'Yayasan', 'NURHAYATI', 2, '', '', '', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '', 'Indonesia', ''),
('1006', 'guru', 'Hartini', 2, 'Tanjung Pura', '0000-00-00', '', '', '4757750652300032', 4, 3, '', 1, 'Jl.Perjuangan No.28 Tanjung Pura', '12', '12', '', 'Pekan Tanjung Pura', 'Tanjung Pura', 20853, '', '085297336280', 'hartinisrilangkat123@gmail.com', '', 1, '', '0000-00-00', '009/L-PSL/OT/2005', '0000-00-00', 'Ketua Yayasan', 0, '', 'Yayasan', 'Alm.Saniah', 0, 'Ahmad Junaidi', '', 'Wiraswasta', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '663695286119000', '', ''),
('1007', 'guru', 'Hotmaida Br Sinaga', 2, 'Tanjung Pura', '1976-06-27', '', '', '3959754656300022', 0, 0, '', 1, 'Dusun harapan Desa pematang Tengah', '2', '3', 'Dusun Harapan', 'Pematang Tengah', 'Kec. Tanjung Pura', 20853, '-', '085359129023', 'hotmaidasrilangkat123@gmail.com', '', 1, '001/105.3/YP-SL/PP/2001', '2001-07-09', '001/105.3/YP-SL/PP/2001', '2001-07-09', 'Ketua Yayasan', 0, '', 'Yayasan', 'SARIPAH', 0, 'Zulmahdi', '', 'Wiraswasta', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '541785556119000', 'Indonesia', ''),
('1008', 'guru', 'Ika Zulaika', 2, 'Medan', '1979-06-06', '', '', '9938757658300042', 0, 0, '', 1, 'Lorong Mulia padang tualang', '2', '2', 'dusun IV', 'Padang tualang', 'Kec. Tanjung Pura', 20852, '-', '081361618864', 'ikazulaikasrilangkat123@gmail.com', '', 1, '', '0000-00-00', '001/105.3/YP-SL/PP/2001', '2001-07-09', 'Ketua Yayasan', 0, '', 'Yayasan', 'T. darlia', 0, 'Imammuddin Ys', '', 'Karyawan Swasta', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '541786281119000', 'Indonesia', ''),
('1009', 'guru', 'Masridawany', 2, 'Tanjung Pura', '1987-02-14', '', '', '5546765666220002', 0, 0, '', 1, 'Jl. Tanjung Pura Dusun II Desa Batu Melenggang', '0', '0', 'Dusun II', 'Batu Melenggang', 'Kec. Hinai', 20854, '-', '081264016531', 'masridawany87@gmail.com', 'Kepala Laboratorium', 1, '', '0000-00-00', '118/YP-EP/E.10/2008', '2008-07-01', 'Ketua Yayasan', 0, '', 'Yayasan', 'Tumini', 0, 'Hendra', '', 'Karyawan Swasta', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '663637429119000', 'Indonesia', ''),
('1010', 'guru', 'Muhammad Indra', 1, 'Tegal Rejo', '1983-02-24', '', '', '2556761662200012', 0, 0, '', 1, 'Lingkungan 1 Tegal Rejo Pekan Gebang', '0', '0', '', 'Pekan Gebang', 'Kec. Tanjung Pura', 20856, '-', '085261147182', 'indra123@gmail.com', '', 1, '042/L-PSL/OT/2010', '2010-07-09', '042/L-PSL/OT/2010', '2010-07-09', 'Pemerintah Pusat', 0, '', 'Lainnya', 'Marsinem', 0, '', '', 'Tidak bekerja', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '663684801119000', 'Indonesia', ''),
('1011', 'guru', 'Muhammad Yusuf', 1, 'Besilam', '1976-12-31', '', '', '7563546582000013', 0, 0, '', 1, 'Desa Padang Tuanglang', '0', '0', '', 'Padang Padang Tualang', 'Kec. Tanjung Pura', 20853, '-', '085762531481', 'yusuf123@gmail.com', '', 1, '', '0000-00-00', '', '2010-06-28', 'Ketua Yayasan', 0, '', 'Yayasan', 'KHAIRIAH', 0, '', '', 'Tidak bekerja', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '695874255119000', 'Indonesia', ''),
('1012', 'guru', 'Nurul Hasanah', 2, 'Tanjung Pura', '1987-01-02', '', '', '1434765665300032', 0, 0, '', 1, 'Jl Terusan', '3', '3', '', 'Lalang', 'Kec. Tanjung Pura', 20853, '-', '082366316112', 'mygozilli@gmail.com', 'Kepala Sekolah', 1, '086/L-PSL/OT/2009', '2009-07-07', '086/L-PSL/OT/2009', '2009-07-07', 'Ketua Yayasan', 0, '', 'Yayasan', 'Faridah Hanum', 0, 'Peria Tarmizi', '', 'Lainnya', '0000-00-00', 'Ya', 0, 'Tidak', '', 'Tidak', 'Tidak', '663697530119000', 'Indonesia', ''),
('1013', 'guru', 'Partiyah', 2, 'Sidorejo', '1972-06-16', '', '', '4948750653300012', 0, 0, '', 1, 'Dusun 1 Sidorejo', '0', '0', 'dusun I Sidorejo', 'Stabat Lama', 'Kec. Wampu', 20851, '-', '081370318326', 'partiyahsrilangkat123@gmail.com', '', 1, '005/105.3/YP-SL/PP/1999', '1999-07-05', '005/105.3/YP-SL/PP/1999', '1999-07-05', 'Ketua Yayasan', 0, '', 'Yayasan', 'Partinem', 0, 'Mukhsin', '', 'Wiraswasta', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '541759296119000', 'Indonesia', ''),
('1014', 'guru', 'RAHMAD AFANDI', 1, 'TANJUNG PURA', '1988-07-07', '', '', '                ', 0, 0, '', 1, 'DUSUN I GG CUKA', '', '', '', 'PEKUBUAN', 'Kec. Tanjung Pura', 0, '', '', 'hermawanwrilangkat@gmail.com', '', 1, '', '0000-00-00', '003.a/SMA-SL/OT/2016', '2016-07-08', 'Ketua Yayasan', 0, '', 'Yayasan', 'INAYAT HANUM', 0, '', '', 'Tidak dapat diterapkan', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '', 'Indonesia', ''),
('1015', 'guru', 'Syafriana', 2, 'Suka damai', '1978-06-12', '', '', '3944756660300002', 0, 0, '', 1, 'Tanjung Beringin', '0', '0', 'Pasar VIII', 'Desa Baru', 'Kec. Hinai', 20854, '-', '085270624135', 'syafrianasrilangkat123@gmail.com', 'Wakil Kepala Kurikulum/Akademik', 1, '051/L-PSL/OT/2006', '2006-07-15', '03/LP-NB/BB/VII/2005', '2005-07-18', 'Ketua Yayasan', 0, '', 'Yayasan', 'Kasmawati', 0, 'Idris', '', 'Wiraswasta', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '541786133119000', 'Indonesia', ''),
('1016', 'guru', 'WIDIA OKTARIA', 2, 'AIR HITAM', '1993-10-22', '', '', '', 0, 0, '', 1, 'JALAN PERJUANGAN No. 3', '0', '0', 'VIII', 'AIR HITAM', 'Kec. Gebang', 20856, '', '082213612843', 'widiaoktaria_mute@yahoo.com', '', 1, '', '0000-00-00', '003/L-SL/OT/2015', '2015-06-28', 'Ketua Yayasan', 0, '', 'Yayasan', 'MISNI', 0, 'Gunawan', '', 'Wiraswasta', '0000-00-00', 'Tidak', 0, 'Tidak', '', 'Tidak', 'Tidak', '', 'Indonesia', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_guru_akses`
--

CREATE TABLE `rb_guru_akses` (
  `id_guru_akses` int(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `id_modul` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_guru_akses`
--

INSERT INTO `rb_guru_akses` (`id_guru_akses`, `nip`, `id_modul`) VALUES
(1, '195806161984000001', 1),
(2, '195806161984000001', 3),
(4, '195806161984000001', 2),
(7, '123456', 0),
(8, '123', 4),
(10, '0012', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_halaman`
--

CREATE TABLE `rb_halaman` (
  `id_halaman` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `judul_seo` varchar(255) NOT NULL,
  `isi_halaman` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` enum('psb','journal') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_halaman`
--

INSERT INTO `rb_halaman` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `username`, `status`) VALUES
(1, 'Selamat Datang di Sistem Pendaftaran Siswa Baru', 'selamat-datang-di-sistem-pendaftaran-siswa-baru', 'Sistem PSB online atau sistem informasi aplikasi penerimaan siswa baru online merupakan produk layanan aplikasi perangkat lunak  yang online real time dan 100%   berbasis web. Sistem   ini   berusaha   memenuhi kebutuhan   masyarakat khususnya  bagi orangtua  dan  calon  siswa  untuk  dapat melaksanakan  pendaftaran  ke sekolah dengan  aman  dan  tertib  dengan menyediakan  fitur  otomasi  proses penerimaan  siswa  baru secara  langsung  menggunakan  media internet,  mulai  dari proses pendaftaran, proses seleksi, hingga pengumuman hasil penerimaan siswa secara langsung nyata melalui internet.\r\n\r\nYayasan phpmu.com didirikan di Padang dengan Akte Notaris Leurentia Siti Nyoman tertanggal 6 Maret 1996.Pada tahun pertama ini dibukalah taman kanak-kanak dan plygroup dengan murid berjumlah 73 orang dan kampusnya berlokasi di jalan Thamrin No.22-25', 'admin', 'psb'),
(2, 'Prosedur Pendaftaran Siswa Baru', 'prosedur-pendaftaran-siswa-baru', 'Melakukan  pendaftaran secara online melalui website psb.dek.sch.id\nMembayar uang pendaftaran sebesar Rp 60.000,00 ke Rekening Sekolah :\nNo Rekening : xxxxxxxxxxxxxx\nAtas Nama : BPN 010 SMAK PADANG\nBRI UNIT PASAR BARU PADANG\n\n<b>Note : Bagi Bapak/Ibuk yang sudah melakukan pembayaran dan konfirmasi harap segera megirim pesan ke nomor 082384116431</b>\n\nUntuk Metode Tansfer.\ndengan format pesan : [jenis metode pembaran] [no_rekening] [nama anak/nama pesera] [nomor_konfirmasi]\nContoh Pesan Metode Transfer : Transfer 111112318923 Annisa Mardatilah QC401\n\nUntuk Metode Setoran.\nInvite/Add ID What\'sApp dengan nomor 081267771344\ndengan format pesan : Kirim foto bukti slip setoran dan nama anak/peserta serta nomor konfirmasi\nContoh Format Pesan Whatsapp : [foto bukti slip setor] Annisa Mardatillah QC401\n\nMenyerahkan berkas dan ketentuan sebagai berikut apabila calon siswa dinyatakan lulus tes online.\nFoto kopi  rapor yang sudah dilegalisasi dari semester I - IV (1 rangkap)\nMemperlihatkan rapor asli\nSehat jasmani dan rohani (diperiksa di  SMK SMAK)\nTidak Buta Warna (diperiksa di SMK SMAK Padang)\nPas foto  warna terbaru ukuran 2x3 sebanyak 2 lembar dan 3X4 sebanyak 3 lembar', 'admin', 'psb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_identitas_sekolah`
--

CREATE TABLE `rb_identitas_sekolah` (
  `id_identitas_sekolah` int(5) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `npsn` varchar(50) NOT NULL,
  `nss` varchar(50) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `kode_pos` int(7) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten_kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_identitas_sekolah`
--

INSERT INTO `rb_identitas_sekolah` (`id_identitas_sekolah`, `nama_sekolah`, `npsn`, `nss`, `alamat_sekolah`, `kode_pos`, `no_telpon`, `kelurahan`, `kecamatan`, `kabupaten_kota`, `provinsi`, `website`, `email`) VALUES
(1, 'SMA SWASTA SRI LANGKAT', '', '', 'Tj.Pura', 8899, '01234567', '', '', 'Langkat', 'Sumatera Utara', 'https://..................com', 'srilangkat@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jadwal_pelajaran`
--

CREATE TABLE `rb_jadwal_pelajaran` (
  `kodejdwl` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `kode_pelajaran` varchar(10) NOT NULL,
  `kode_ruangan` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `paralel` varchar(10) NOT NULL,
  `jadwal_serial` varchar(10) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `hari` varchar(20) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jadwal_pelajaran`
--

INSERT INTO `rb_jadwal_pelajaran` (`kodejdwl`, `id_tahun_akademik`, `kode_kelas`, `kode_pelajaran`, `kode_ruangan`, `nip`, `paralel`, `jadwal_serial`, `jam_mulai`, `jam_selesai`, `hari`, `aktif`) VALUES
(5, 20161, 'X.MIPA.1', 'MK02', 'R003', '195806161984000016', '0', '', '23:00:00', '23:30:00', 'Senin', 'Ya'),
(13, 20161, 'X.MIPA.1', 'MK01', 'R003', '195704111980032004', '', '', '09:00:00', '11:30:00', 'Senin', 'Ya'),
(14, 20161, 'X.MIPA.1', 'MK03', 'R004', '195806161984032002', '', '', '08:00:00', '10:30:00', 'Selasa', 'Ya'),
(34, 20162, 'X.MIPA.1', 'MK06', 'R002', '195806161984000001', '', '', '08:57:31', '09:57:31', 'Selasa', 'Ya'),
(33, 20162, 'X.MIPA.1', 'MK15', 'R001', '195806161984000002', '00', '00', '08:00:00', '10:00:00', 'Senin', 'Ya'),
(35, 20161, 'X.MIPA.2', 'MK04', 'R002', '196307251987112001', '', '', '23:43:03', '23:43:03', 'Selasa', 'Ya'),
(36, 20161, 'X.MIPA.2', 'MK02', 'R001', '195806161984032002', '', '', '23:48:58', '23:48:58', 'Sabtu', 'Ya'),
(37, 20161, 'X.MIPA.1', 'MK03', 'R002', '1234', '', '', '01:55:00', '01:55:00', 'Senin', 'Ya'),
(38, 20161, 'X.MIPA.1', 'MK02', 'R001', '12345', '', '', '20:00:34', '20:00:34', '0', 'Ya'),
(39, 20161, 'XI.MIPA.1', 'MK06', 'R001', '123456', '', '', '02:11:17', '03:11:17', 'Senin', 'Ya'),
(40, 20161, 'XI.MIPA.1', 'MK07', 'R002', '0007', '', '', '02:15:48', '03:15:48', 'Selasa', 'Ya'),
(41, 20161, 'XI.MIPA.1', 'MK08', 'R003', '0001', '', '', '02:17:09', '03:17:09', '0', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jawaban_essai`
--

CREATE TABLE `rb_jawaban_essai` (
  `id_jawaban_essai` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `id_pertanyaan_essai` int(10) NOT NULL,
  `jawaban_essai` text NOT NULL,
  `waktu_tugas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jawaban_essai`
--

INSERT INTO `rb_jawaban_essai` (`id_jawaban_essai`, `nisn`, `id_pertanyaan_essai`, `jawaban_essai`, `waktu_tugas`) VALUES
(1, '0000261141', 1, 'abdurrahman wahid (Gus Dur)', '2016-03-05 14:16:15'),
(2, '0000261141', 2, '1. Udin Sedunia\r\n2. Sopan Sopian\r\n3. Inul Daratista\r\n4. Angelina Sondak\r\n5. Ruhut Sitompul', '2016-03-05 14:16:11'),
(3, '0000261141', 3, 'Di Kota Padang, Sumatera Barat Kota Padang', '2016-03-05 14:16:08'),
(4, '0000261141', 6, 'Wr Supratman', '2016-03-05 14:16:04'),
(5, '0000240365', 36, '359', '2016-07-19 10:32:08'),
(6, '0000240365', 35, 'Robby Prihandaya, S.Kom, M.Kom', '2016-07-19 10:32:11'),
(7, '9991268756', 10, 'Jawaban dari soal no 1..', '2016-03-09 03:39:36'),
(8, '9991268756', 9, 'Jawaban soal no 2,..', '2016-03-09 03:39:46'),
(9, '9991268756', 36, '358', '2016-07-19 10:59:09'),
(10, '9991268756', 35, 'Mariam Tombom', '2016-07-19 10:59:28'),
(11, '0004107204', 38, 'nznznxkzx', '2017-03-31 16:39:58'),
(12, '234', 42, ',nzdfkjsd', '2017-03-31 16:53:34'),
(13, '123', 44, ',mas,ma', '2017-04-23 03:23:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jawaban_objektif`
--

CREATE TABLE `rb_jawaban_objektif` (
  `id_jawaban_objektif` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `id_pertanyaan_objektif` int(10) NOT NULL,
  `jawaban` varchar(2) NOT NULL,
  `waktu_objektif` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jawaban_objektif`
--

INSERT INTO `rb_jawaban_objektif` (`id_jawaban_objektif`, `nisn`, `id_pertanyaan_objektif`, `jawaban`, `waktu_objektif`) VALUES
(21, '0000261141', 5, 'a', '2016-03-05 14:16:54'),
(20, '0000261141', 1, 'b', '2016-03-05 14:16:51'),
(19, '0000261141', 2, 'c', '2016-03-05 14:16:48'),
(18, '0000240365', 16, 'a', '2016-07-19 08:08:52'),
(22, '0000240365', 17, 'd', '2016-07-19 08:08:49'),
(23, '9991268756', 8, 'a', '2016-03-09 03:39:51'),
(24, '9991268756', 6, 'b', '2016-03-09 03:39:51'),
(25, '9991268756', 17, 'd', '2016-07-19 11:00:55'),
(26, '9991268756', 16, 'd', '2016-07-19 11:04:44'),
(27, '0151379251', 17, 'a', '2017-03-30 15:07:03'),
(28, '0151379251', 16, 'b', '2017-03-30 15:07:03'),
(29, '123', 28, 'a', '2017-04-23 03:23:58'),
(30, '123', 27, 'b', '2017-04-23 03:23:58'),
(31, '123', 26, 'c', '2017-04-23 03:23:58'),
(32, '123', 25, 'c', '2017-04-23 03:23:58'),
(33, '123', 24, 'd', '2017-04-23 03:23:58'),
(34, '123', 23, 'a', '2017-04-23 03:23:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jenis_kelamin`
--

CREATE TABLE `rb_jenis_kelamin` (
  `id_jenis_kelamin` int(5) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jenis_kelamin`
--

INSERT INTO `rb_jenis_kelamin` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jenis_ptk`
--

CREATE TABLE `rb_jenis_ptk` (
  `id_jenis_ptk` int(5) NOT NULL,
  `jenis_ptk` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jenis_ptk`
--

INSERT INTO `rb_jenis_ptk` (`id_jenis_ptk`, `jenis_ptk`, `keterangan`) VALUES
(1, 'Tenaga Administrasi Sekolah', ''),
(2, 'Guru Mapel', ''),
(3, 'Guru BK', ''),
(4, 'Guru Kelas', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_journal_list`
--

CREATE TABLE `rb_journal_list` (
  `id_journal` int(10) NOT NULL,
  `id_kompetensi_dasar` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_ke` varchar(50) NOT NULL,
  `materi` text NOT NULL,
  `keterangan` text NOT NULL,
  `waktu_input` datetime NOT NULL,
  `users` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_journal_list`
--

INSERT INTO `rb_journal_list` (`id_journal`, `id_kompetensi_dasar`, `kodejdwl`, `hari`, `tanggal`, `jam_ke`, `materi`, `keterangan`, `waktu_input`, `users`) VALUES
(8, 3, 34, 'Kamis', '2016-07-16', '2', 'dadasdsd', 'asdasdasdasd', '2016-07-16 13:13:32', '1'),
(9, 5, 5, 'Senin', '2016-07-18', '3', 'Ribuan orang berkumpul di Istanbul dan kota-kota lainnya setelah otoritas Turki', 'Indeks berita tempo terbaru dari politik hukum kriminal bisnis sepak bola olahraga gaya hidup selebriti foto video di Indonesia dan Dunia hari ini.', '2016-07-18 06:12:53', '195806161984000016'),
(10, 7, 5, 'Selasa', '2016-07-19', '2', 'kabar terbaru seputar berita nasional maupun internasional online terkini.', 'Situs Berita harian terkini yang menyajikan berita hari ini dan kabar terbaru seputar politik hingga berita lifestyle dan olahraga.', '2016-07-19 15:57:28', '1'),
(6, 2, 33, 'Sabtu', '2016-07-16', '1', 'Contoh diatas masih menampilkan nama hari dalam bahasa inggris. Untuk menampilkan dalam format bahasa indonesia, buat variable array untuk konversi nama hari ke bahasa indonesiaaa.', 'Berikut ini merupakan potongan kode sederhana untuk menampilkan nama hari dari suatu tanggal dengan menggunakan PHP. Sebagai contoh misalkan diberikan tanggal 3 Juni 2015, kemudian kita ingin mengetahui hari apakah itu.', '2016-07-16 12:19:44', '195806161984000002'),
(7, 2, 33, 'Minggu', '2016-07-17', '1', 'Psikolog anak, Roslina Verauli, MSc menjelaskan, bahwa gaya hidup sehat yang aktif, seperti berolahraga bisa membantu mewujudkan pertumbuhan dan perkembangan anak yang sehat secara fisik. ', 'Gaya hidup sehat dan aktivitas fisik dipercaya memberikan manfaat yang baik. Salah satunya untuk tumbuh kembang anak-anak pada usia sekolah. Namun agar mendapatkan manfaatnya, aktivitas fisik harus dikenalkan pada anak sejak dini.', '2016-07-16 12:44:16', '1'),
(11, 0, 35, 'Sabtu', '2017-04-01', '1', 'sdfsd', 'sdfgsdfgsdf', '2017-04-01 00:31:14', '1'),
(12, 0, 14, 'Kamis', '2017-04-28', '', '', '', '2017-04-01 00:39:43', '1'),
(13, 12, 37, 'Kamis', '1980-01-01', '1', 'hmgkhfkg kfkytky ktdyidk fuyffkkfk futdyifuydyktdy   ukfuyfkytfityfit  ulyfyitflyufiyt ', 'ghfjhfkfjh giygutdyutsty  iyfuyfl ghifyiytff uyytdydfytd  iufyiytdiytr yfiytdic  ', '2017-04-01 01:56:58', '1234'),
(14, 0, 38, 'Kamis', '0000-00-00', '', '', '', '2017-04-01 20:03:07', '12345'),
(15, 0, 0, '', '0000-00-00', '', '', '', '2017-04-14 23:58:20', '1'),
(16, 0, 0, '', '0000-00-00', '', '', '', '2017-04-14 23:58:50', '1'),
(17, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:00:02', '1'),
(18, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:06:26', '1'),
(19, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:08:31', '1'),
(20, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:08:36', '1'),
(21, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:12:49', '1'),
(22, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:13:06', '1'),
(23, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:13:39', '1'),
(24, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:14:58', '1'),
(25, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:15:03', '1'),
(26, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:15:04', '1'),
(27, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:15:06', '1'),
(28, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:15:08', '1'),
(29, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:15:10', '1'),
(30, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:15:11', '1'),
(31, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:15:13', '1'),
(32, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:15:14', '1'),
(33, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:15:16', '1'),
(34, 0, 0, '', '0000-00-00', '', '', '', '2017-04-15 00:16:32', '1'),
(35, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:46:48', '1'),
(36, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:46:51', '1'),
(37, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:56:49', '1'),
(38, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:57:01', '1'),
(39, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:57:04', '1'),
(40, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:57:05', '1'),
(41, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:57:06', '1'),
(42, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:57:07', '1'),
(43, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:59:41', '1'),
(44, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:59:42', '1'),
(45, 0, 0, '', '0000-00-00', '', '', '', '2017-04-18 00:59:44', '1'),
(46, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:38', '1'),
(47, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:40', '1'),
(48, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:42', '1'),
(49, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:43', '1'),
(50, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:44', '1'),
(51, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:45', '1'),
(52, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:46', '1'),
(53, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:47', '1'),
(54, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:48', '1'),
(55, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:48', '1'),
(56, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:49', '1'),
(57, 0, 0, '', '0000-00-00', '', '', '', '2017-04-19 00:55:50', '1'),
(58, 0, 38, 'Sabtu', '2017-04-22', '', '', '', '2017-04-22 00:10:29', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jurusan`
--

CREATE TABLE `rb_jurusan` (
  `kode_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `nama_jurusan_en` varchar(255) NOT NULL,
  `bidang_keahlian` varchar(150) NOT NULL,
  `kompetensi_umum` varchar(150) NOT NULL,
  `kompetensi_khusus` varchar(150) NOT NULL,
  `pejabat` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jurusan`
--

INSERT INTO `rb_jurusan` (`kode_jurusan`, `nama_jurusan`, `nama_jurusan_en`, `bidang_keahlian`, `kompetensi_umum`, `kompetensi_khusus`, `pejabat`, `jabatan`, `keterangan`, `aktif`) VALUES
('MIPA', 'Ilmu Pengetahuan Alam', '', 'Biologi, Fisika, kimia', 'Menguasai Semua Bidang Keahlian', 'Menguasai Semua Bidang Biologi', 'Hasan Bin Mail', 'Ketua Jurusan', '', 'Tidak'),
('IPS', 'Ilmu Pengetahuan Sosial', 'ere', 'as', '', '', '', '', '', 'Ya'),
('BAHASA', 'Jurusan Bahasa', '', 'Bahasa Indonesia', '', '', '', '', '', 'Ya'),
('UMUM', 'UMUM', '', '', '', '', '', '', '', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_elearning`
--

CREATE TABLE `rb_kategori_elearning` (
  `id_kategori_elearning` int(5) NOT NULL,
  `nama_kategori_elearning` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_elearning`
--

INSERT INTO `rb_kategori_elearning` (`id_kategori_elearning`, `nama_kategori_elearning`) VALUES
(1, 'Bahan'),
(2, 'Tugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_quiz_ujian`
--

CREATE TABLE `rb_kategori_quiz_ujian` (
  `id_kategori_quiz_ujian` int(5) NOT NULL,
  `kategori_quiz_ujian` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_quiz_ujian`
--

INSERT INTO `rb_kategori_quiz_ujian` (`id_kategori_quiz_ujian`, `kategori_quiz_ujian`) VALUES
(1, 'Quiz Online'),
(2, 'Ujian Online');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kehadiran`
--

CREATE TABLE `rb_kehadiran` (
  `kode_kehadiran` varchar(5) NOT NULL,
  `nama_kehadiran` varchar(20) NOT NULL,
  `nilai` int(2) NOT NULL,
  `bobot` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kehadiran`
--

INSERT INTO `rb_kehadiran` (`kode_kehadiran`, `nama_kehadiran`, `nilai`, `bobot`) VALUES
('H', 'Hadir', 1, '1'),
('I', 'Izin', 1, '0.5'),
('S', 'Sakit', 1, '0.5'),
('A', 'Alpa', 0, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kelas`
--

CREATE TABLE `rb_kelas` (
  `kode_kelas` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `kode_ruangan` varchar(10) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kelas`
--

INSERT INTO `rb_kelas` (`kode_kelas`, `nip`, `kode_jurusan`, `kode_ruangan`, `nama_kelas`, `aktif`) VALUES
('XI.MIPA.1', '13653450022', 'MIPA', 'R001', 'Kelas XI IPA 1', 'Ya'),
('XI.MIPA.2', '13653450022', 'MIPA', 'R002', 'Kelas XI IPA 2', 'Ya'),
('XI.IPS.1', '13653450022', 'IPS', 'R003', 'Kelas XI IPS 1', 'Ya'),
('XI.IPS.2', '13653450022', 'IPS', 'R004', 'Kelas XI IPS 2', 'Ya'),
('XII.MIPA.1', '13653450022', 'MIPA', 'R003', 'Kelas XII IPA 1', 'Ya'),
('XII.MIPA.2', '13653450022', 'MIPA', 'R001', 'Kelas XII IPA 2', 'Ya'),
('XII.IPS.1', '13653450022', 'IPS', 'R002', 'Kelas XII IPS 1', 'Ya'),
('XII.IPS.2', '13653450022', 'IPS', 'R003', 'Kelas XII IPS 2', 'Ya'),
('X-1', '0', 'UMUM', '0', 'X-1', 'Ya'),
('X-2', '0', 'UMUM', '0', 'X-2', 'Tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kelompok_mata_pelajaran`
--

CREATE TABLE `rb_kelompok_mata_pelajaran` (
  `id_kelompok_mata_pelajaran` int(5) NOT NULL,
  `jenis_kelompok_mata_pelajaran` varchar(50) NOT NULL,
  `nama_kelompok_mata_pelajaran` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kelompok_mata_pelajaran`
--

INSERT INTO `rb_kelompok_mata_pelajaran` (`id_kelompok_mata_pelajaran`, `jenis_kelompok_mata_pelajaran`, `nama_kelompok_mata_pelajaran`) VALUES
(1, 'A', 'Kelompok A (Umum)'),
(2, 'B', 'Kelompok B (Umum)'),
(3, 'C', 'Kelompok C (Peminatan)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_keuangan_bayar`
--

CREATE TABLE `rb_keuangan_bayar` (
  `id_keuangan_bayar` int(10) NOT NULL,
  `id_keuangan_jenis` int(5) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `tahun_akademik` int(5) NOT NULL,
  `total_bayar` int(10) NOT NULL,
  `waktu_bayar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_keuangan_bayar`
--

INSERT INTO `rb_keuangan_bayar` (`id_keuangan_bayar`, `id_keuangan_jenis`, `kode_kelas`, `nisn`, `tahun_akademik`, `total_bayar`, `waktu_bayar`) VALUES
(1, 1, 'X.MIPA.1', '9991268756', 20162, 700000, '2016-07-11 09:11:16'),
(2, 4, 'X.MIPA.1', '9991268756', 20162, 200000, '2016-07-11 13:19:32'),
(5, 1, 'X.MIPA.1', '9991268756', 20162, 100000, '2016-07-11 14:01:01'),
(6, 1, 'X.MIPA.1', '0151379251', 20162, 800000, '2016-07-11 14:30:38'),
(7, 1, 'X.MIPA.1', '0004107204', 20162, 300000, '2016-07-11 14:31:01'),
(8, 1, 'X.MIPA.1', '0004107204', 20162, 500000, '2016-07-11 14:31:16'),
(9, 5, 'X.MIPA.1', '9991268756', 20162, 10000, '2016-07-11 14:57:45'),
(10, 5, 'X.MIPA.1', '9991268756', 20162, 5000, '2016-07-11 15:02:00'),
(11, 5, 'X.MIPA.1', '9991268756', 20162, 3000, '2016-07-11 15:02:35'),
(12, 1, 'X.MIPA.1', '9998218087', 20162, 500000, '2016-07-11 15:02:56'),
(13, 1, 'X.MIPA.1', '9998218087', 20162, 300000, '2016-07-11 15:03:08'),
(14, 1, 'X.MIPA.1', '0007105659', 20162, 800000, '2016-07-18 06:21:31'),
(15, 1, 'X.MIPA.1', '0000267795', 20162, 400000, '2016-07-18 06:23:15'),
(16, 1, 'X.MIPA.1', '0000267795', 20162, 120000, '2016-07-18 06:23:30'),
(17, 1, 'X.MIPA.1', '0002731714', 20161, 800000, '2017-03-30 21:50:39'),
(18, 1, 'X.MIPA.1', '9991268756', 20161, 800000, '2017-03-30 21:51:26'),
(19, 4, 'X.MIPA.2', '234', 20161, 200000, '2017-04-01 11:31:19'),
(20, 4, 'X.MIPA.2', '234', 20161, 250000, '2017-04-01 11:31:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_keuangan_jenis`
--

CREATE TABLE `rb_keuangan_jenis` (
  `id_keuangan_jenis` int(5) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL,
  `total_beban` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_keuangan_jenis`
--

INSERT INTO `rb_keuangan_jenis` (`id_keuangan_jenis`, `nama_jenis`, `total_beban`) VALUES
(1, 'SPP', 800000),
(6, 'Milad', 10000),
(5, 'Infak', 0),
(4, 'Seragam Sekolah', 450000),
(7, 'UTS', 25000),
(8, 'UAS', 50000),
(9, 'Syahriah', 450000),
(10, 'Kost Makan', 325000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kompetensi_dasar`
--

CREATE TABLE `rb_kompetensi_dasar` (
  `id_kompetensi_dasar` int(10) NOT NULL,
  `kode_pelajaran` varchar(20) NOT NULL,
  `kd` varchar(5) NOT NULL,
  `ranah` enum('pengetahuan','keterampilan','sikap') NOT NULL,
  `kompetensi_dasar` text NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kompetensi_dasar`
--

INSERT INTO `rb_kompetensi_dasar` (`id_kompetensi_dasar`, `kode_pelajaran`, `kd`, `ranah`, `kompetensi_dasar`, `waktu_input`) VALUES
(1, 'MK15', '1.1', 'pengetahuan', 'Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisannn.', '2016-07-03 08:10:13'),
(2, 'MK15', '1.2', 'keterampilan', 'Menganalisis teks cerita pendek, baik melalui lisan maupun tulisane.', '2016-07-03 09:44:36'),
(3, 'MK06', '1.1', 'pengetahuan', 'zxczxczxczxczx', '2016-07-16 13:13:10'),
(5, 'MK02', '1.1', 'pengetahuan', 'Menganalisis teks cerita pendek, baik melalui lisan maupun tulisan.', '2016-07-18 06:12:38'),
(7, 'MK02', '1.2', 'pengetahuan', 'Lembaran baru Manchester United bersama Jose Mourinho dimulai.', '2016-07-18 10:19:33'),
(8, 'MK02', '1.3', 'pengetahuan', 'Episode perjalanan Mourinho sebagai manajer Setan Merah, dimulai cukup gemilang.', '2016-07-18 10:19:52'),
(9, 'MK01', '1.1', 'pengetahuan', 'Selain tahi lalat dan jenggot di bagian tubuh terduga teroris yang tewas', '2016-07-19 07:42:37'),
(10, 'MK01', '1.2', 'pengetahuan', 'Ada alasan lain Kepolisian menduga bahwa yang tertembak pada Senin petang memang Santoso', '2016-07-19 07:43:10'),
(11, 'MK01', '1.3', 'pengetahuan', 'Pasalnya, penembakan terjadi terhadap lima orang yang dua orang diduga adalah perempuan', '2016-07-19 07:43:36'),
(12, 'MK03', '1.1', 'pengetahuan', 'Sementara yang diketahui biasa memboyong perempuan adalah Santoso.', '2016-07-19 07:44:07'),
(13, 'MK03', '1.2', 'pengetahuan', 'Ada tahi lalatnya dan ada wanita di sana ya karena kami dapat informasi bahwa Santoso', '2016-07-19 07:44:21'),
(14, 'MK03', '1.3', 'pengetahuan', 'Polisi akan melakukan identifikasi DNA terlebih dahulu sebelum memastikan bahwa terduga teroris', '2016-07-19 07:44:42'),
(17, 'MK03', '111', 'keterampilan', 'xxx', '2017-04-02 11:56:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kurikulum`
--

CREATE TABLE `rb_kurikulum` (
  `kode_kurikulum` int(5) NOT NULL,
  `nama_kurikulum` varchar(255) NOT NULL,
  `status_kurikulum` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kurikulum`
--

INSERT INTO `rb_kurikulum` (`kode_kurikulum`, `nama_kurikulum`, `status_kurikulum`) VALUES
(1, 'Kurikulum 2013', 'Ya'),
(2, 'Kurikulum 2016', 'Tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_ledger`
--

CREATE TABLE `rb_ledger` (
  `id_ledger` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `pengetahuan` int(5) NOT NULL,
  `keterampilan` int(5) NOT NULL,
  `sikap` varchar(5) NOT NULL,
  `desk_pengetahuan` text NOT NULL,
  `desk_keterampilan` text NOT NULL,
  `desk_sikap` text NOT NULL,
  `waktu_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_ledger`
--

INSERT INTO `rb_ledger` (`id_ledger`, `kodejdwl`, `nisn`, `kode_kelas`, `pengetahuan`, `keterampilan`, `sikap`, `desk_pengetahuan`, `desk_keterampilan`, `desk_sikap`, `waktu_update`) VALUES
(1, 5, '9991268756', 'X.MIPA.1', 95, 93, 'T', 'Testing Pengetahuan', 'Testing Keterampilan', 'Testing Afektif ', '2016-07-15 07:39:59'),
(2, 5, '0151379251', 'X.MIPA.1', 92, 0, 'S', 'Testing Pengetahuan 2', 'Testing Keterampilan 2', 'Testing Afektif 2', '2016-07-15 07:39:59'),
(3, 5, '0004107204', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(4, 5, '9998218087', 'X.MIPA.1', 0, 94, 'T', 'Testing Pengetahuan 4', 'Testing Keterampilan 4', 'Testing Afektif 4', '2016-07-15 07:39:59'),
(5, 5, '0007105659', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(6, 5, '0000267795', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(7, 5, '0007011100', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(8, 5, '0000261160', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(9, 5, '9991261263', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(10, 5, '9994930260', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(11, 5, '9991262828', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(12, 5, '9991261271', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(13, 5, '9998214151', 'X.MIPA.1', 0, 90, 'S', '', '', '', '2016-07-15 07:39:59'),
(14, 5, '0000282457', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(15, 5, '0126523169', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(16, 5, '9997515863', 'X.MIPA.1', 0, 89, 'S', '', '', '', '2016-07-15 07:39:59'),
(17, 5, '9991261719', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(18, 5, '0000240365', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(19, 5, '9998214335', 'X.MIPA.1', 0, 88, 'R', '', '', '', '2016-07-15 07:39:59'),
(20, 5, '9998215055', 'X.MIPA.1', 0, 92, 'T', '', '', '', '2016-07-15 07:39:59'),
(21, 5, '0002882643', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(22, 5, '0009170412', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(23, 5, '0005405460', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(24, 5, '0007675125', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(25, 5, '9991384898', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(26, 5, '9991260829', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(27, 5, '0007011850', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(28, 5, '9993841192', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(29, 5, '0000423077', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(30, 5, '0000261542', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(31, 5, '0002731714', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(32, 5, '0000282184', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(33, 5, '9991263477', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(34, 5, '9999152999', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(35, 5, '0000261141', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 07:39:59'),
(36, 13, '9991268756', 'X.MIPA.1', 87, 95, 'S', '', '', '', '2016-07-15 13:25:16'),
(37, 13, '0151379251', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(38, 13, '0004107204', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(39, 13, '9998218087', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(40, 13, '0007105659', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(41, 13, '0000267795', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(42, 13, '0007011100', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(43, 13, '0000261160', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(44, 13, '9991261263', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(45, 13, '9994930260', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(46, 13, '9991262828', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(47, 13, '9991261271', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(48, 13, '9998214151', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(49, 13, '0000282457', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(50, 13, '0126523169', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(51, 13, '9997515863', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(52, 13, '9991261719', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(53, 13, '0000240365', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(54, 13, '9998214335', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(55, 13, '9998215055', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(56, 13, '0002882643', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(57, 13, '0009170412', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(58, 13, '0005405460', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(59, 13, '0007675125', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(60, 13, '9991384898', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(61, 13, '9991260829', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(62, 13, '0007011850', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(63, 13, '9993841192', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(64, 13, '0000423077', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(65, 13, '0000261542', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(66, 13, '0002731714', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(67, 13, '0000282184', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(68, 13, '9991263477', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(69, 13, '9999152999', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(70, 13, '0000261141', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:16'),
(71, 14, '9991268756', 'X.MIPA.1', 92, 0, 'R', '', '', '', '2016-07-15 13:25:37'),
(72, 14, '0151379251', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(73, 14, '0004107204', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(74, 14, '9998218087', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(75, 14, '0007105659', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(76, 14, '0000267795', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(77, 14, '0007011100', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(78, 14, '0000261160', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(79, 14, '9991261263', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(80, 14, '9994930260', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(81, 14, '9991262828', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(82, 14, '9991261271', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(83, 14, '9998214151', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(84, 14, '0000282457', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(85, 14, '0126523169', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(86, 14, '9997515863', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(87, 14, '9991261719', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(88, 14, '0000240365', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(89, 14, '9998214335', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(90, 14, '9998215055', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(91, 14, '0002882643', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(92, 14, '0009170412', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(93, 14, '0005405460', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(94, 14, '0007675125', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(95, 14, '9991384898', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(96, 14, '9991260829', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(97, 14, '0007011850', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(98, 14, '9993841192', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(99, 14, '0000423077', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(100, 14, '0000261542', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(101, 14, '0002731714', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(102, 14, '0000282184', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(103, 14, '9991263477', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(104, 14, '9999152999', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(105, 14, '0000261141', 'X.MIPA.1', 0, 0, '0', '', '', '', '2016-07-15 13:25:37'),
(106, 36, '234', 'X.MIPA.2', 0, 0, 'R', '', '', '', '2017-04-01 00:36:03'),
(107, 38, '123', 'X.MIPA.1', 0, 0, '0', 'asefdsddfsfasdf asdfasdf asdf ASF EF', ' ADRG WRs ergerg er drfgersrg  ', 'rgw erg wer er wer', '2017-04-01 20:02:15'),
(108, 38, '234', 'X.MIPA.1', 105, 0, 'T', '', '', '', '2017-04-22 00:10:09'),
(109, 38, '765', 'X.MIPA.1', 0, 0, '0', '', '', '', '2017-04-22 00:10:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_mata_pelajaran`
--

CREATE TABLE `rb_mata_pelajaran` (
  `kode_pelajaran` varchar(20) NOT NULL,
  `id_kelompok_mata_pelajaran` int(3) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `kode_kurikulum` int(5) NOT NULL,
  `namamatapelajaran` varchar(150) NOT NULL,
  `namamatapelajaran_en` varchar(150) NOT NULL,
  `tingkat` varchar(10) NOT NULL,
  `kompetensi_umum` text NOT NULL,
  `kompetensi_khusus` text NOT NULL,
  `jumlah_jam` varchar(20) NOT NULL,
  `sesi` varchar(50) NOT NULL,
  `urutan` int(3) NOT NULL,
  `kkm` int(5) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_mata_pelajaran`
--

INSERT INTO `rb_mata_pelajaran` (`kode_pelajaran`, `id_kelompok_mata_pelajaran`, `kode_jurusan`, `nip`, `kode_kurikulum`, `namamatapelajaran`, `namamatapelajaran_en`, `tingkat`, `kompetensi_umum`, `kompetensi_khusus`, `jumlah_jam`, `sesi`, `urutan`, `kkm`, `aktif`) VALUES
('MK01', 1, 'MIPA', '1234', 1, 'Bahasa Indonesia', '', 'X', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 71, 'Ya'),
('MK02', 1, 'IPS', '195806161984000001', 1, 'Matematika', '', 'X', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 75, 'Ya'),
('MK03', 2, 'MIPA', '195806161984032002', 1, 'Bahasa Inggris', '', 'X', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 77, 'Ya'),
('MK05', 1, 'MIPA', '195806161984000001', 1, 'Aritmatika Dasar', '', 'X', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK04', 3, 'MIPA', '196209051987031007', 1, 'Kalkulus', '', 'X', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK06', 3, 'MIPA', '195806161984000016', 1, 'Pengantar Teknologi', '', 'XI', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK07', 1, 'IPS', '195901241986032002', 1, 'Sejarah Indonesia', '', 'XI', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK08', 1, 'IPS', '196703011992031006', 1, 'Pendidikan Pancasila', '', 'XI', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK09', 1, 'IPS', '196812211997022002', 1, 'Pendidikan Agama', '', 'XI', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK10', 2, 'IPS', '196312041987031000', 1, 'Seni Budaya', '', 'XII', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK11', 2, 'IPS', '198406142009012003', 1, 'Pendidikan Olahraga', '', 'XII', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK12', 2, 'MIPA', '198012112005012005', 1, 'Prakarya Kewirausahaan', '', 'XII', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK13', 3, 'IPS', '196305141990032003', 1, 'Geografi', '', 'XII', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK14', 3, 'MIPA', '198312252009022007', 1, 'Ekonomi', '', 'XII', 'Isikan Nama Kompetensi Umum', 'Isikan Nama Kompetensi Khusus', '2', '', 0, 0, 'Ya'),
('MK15', 3, 'IPS', '195806161984000002', 1, 'Web Programming', '', 'XI', 'Mengenal teknik Pembuatan Web', 'Menguasai Bahasa Pemrograman Web', '3', '', 0, 0, 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_menu`
--

CREATE TABLE `rb_menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `urutan` int(3) NOT NULL,
  `status` enum('psb','journal') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_menu`
--

INSERT INTO `rb_menu` (`id_menu`, `id_parent`, `nama_menu`, `icon`, `link`, `aktif`, `urutan`, `status`) VALUES
(1, 0, 'Beranda', 'home', 'index.mu', 'Ya', 1, 'psb'),
(2, 0, 'Aturan & Prosedur', 'th-list', 'halaman-prosedur-pendaftaran-siswa-baru.mu', 'Ya', 2, 'psb'),
(3, 0, 'Jadwal Pelaksanaan', 'calendar', '#', 'Ya', 3, 'psb'),
(4, 0, 'Alur Pendaftaran', 'retweet', '#', 'Ya', 4, 'psb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_modul`
--

CREATE TABLE `rb_modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_modul`
--

INSERT INTO `rb_modul` (`id_modul`, `nama_modul`, `url`, `aktif`) VALUES
(1, 'Kelompok Mapel', 'index.php?view=kelompokmapel', 'Ya'),
(2, 'Mata Pelajaran', 'index.php?view=matapelajaran', 'Ya'),
(3, 'Jenis Biaya', 'index.php?view=jeniskeuangan', 'Ya'),
(4, 'Pembayaran Siswa', 'index.php?view=pembayaransiswa', 'Ya'),
(5, 'Absen Barcode', 'index.php?view=absen', 'Ya'),
(6, 'Rekap Absensi Barcode Siswa', 'index.php?view=rekap_barcode_siswa', 'Ya'),
(7, 'Rekap Absensi Barcode Guru', 'index.php?view=rekap_barcode_guru', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_extrakulikuler`
--

CREATE TABLE `rb_nilai_extrakulikuler` (
  `id_nilai_extrakulikuler` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `kegiatan` text NOT NULL,
  `nilai` float NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_extrakulikuler`
--

INSERT INTO `rb_nilai_extrakulikuler` (`id_nilai_extrakulikuler`, `id_tahun_akademik`, `nisn`, `kode_kelas`, `kegiatan`, `nilai`, `deskripsi`, `user_akses`, `waktu_input`) VALUES
(1, 20161, '9991268756', 'X.MIPA.1', 'Kegiatan Mandi-mandii', 87, 'Kegiatan mandi-mandi dilaksanakan di lubuak minturun bersamaan dengan perayaan ulang tahun sekolah.', '1', '2016-04-29 10:11:10'),
(2, 20161, '9991268756', 'X.MIPA.1', 'Kegiatan Bakar ayam.', 95, 'Memiliki keterampilan Mengidentifikasi, menyajikan model matematika dan menyelesaikan masalah keseharian.				', '1', '2016-04-29 07:08:28'),
(7, 20161, '234', 'X.MIPA.2', 'tgdgfy', 44, 'fgdfdf', '1', '2017-04-01 00:33:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_keterampilan`
--

CREATE TABLE `rb_nilai_keterampilan` (
  `id_nilai_keterampilan` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kd` varchar(5) NOT NULL,
  `nilai1` float NOT NULL,
  `nilai2` float NOT NULL,
  `nilai3` float NOT NULL,
  `nilai4` float NOT NULL,
  `nilai5` float NOT NULL,
  `nilai6` float NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_keterampilan`
--

INSERT INTO `rb_nilai_keterampilan` (`id_nilai_keterampilan`, `kodejdwl`, `nisn`, `kd`, `nilai1`, `nilai2`, `nilai3`, `nilai4`, `nilai5`, `nilai6`, `deskripsi`, `user_akses`, `waktu`) VALUES
(1, 5, '9991268756', '4.1', 75, 70, 78, 85, 78, 72, 'Mengabstraksi teks cerita pendek, baik secara lisan maupun tulisan ', '1', '2016-04-11 18:26:32'),
(2, 5, '9998218087', '1', 88, 90, 98, 96, 0, 0, '', '1', '2016-04-11 18:26:32'),
(3, 5, '9998215055', '1', 67, 98, 76, 90, 0, 0, '', '1', '2016-04-11 18:26:32'),
(4, 5, '9998214335', '1', 87, 88, 0, 0, 0, 0, '', '1', '2016-04-11 18:26:32'),
(5, 5, '9998214151', '1', 89, 0, 0, 90, 0, 0, '', '1', '2016-04-11 18:26:32'),
(6, 5, '9997515863', '1', 89, 80, 88, 0, 0, 0, '', '1', '2016-04-11 18:26:32'),
(7, 5, '9991268756', '4.2', 87, 90, 94, 93, 88, 83, 'Mengabstraksi teks cerita ulang, baik secara lisan maupun tulisan ', '1', '2016-04-14 08:03:27'),
(8, 5, '9998218087', '2', 88, 93, 90, 99, 0, 0, '', '1', '2016-04-14 08:03:27'),
(9, 5, '9998215055', '2', 78, 87, 89, 79, 0, 0, '', '1', '2016-04-14 08:03:27'),
(10, 5, '9991268756', '4.3', 89, 89, 98, 95, 79, 77, 'Mengabstraksi teks pantun, baik secara lisan maupun tulisan', '1', '2016-04-14 08:03:57'),
(11, 5, '9998218087', '3', 78, 87, 89, 88, 0, 0, '', '1', '2016-04-14 08:03:57'),
(12, 5, '9998215055', '3', 70, 78, 87, 90, 0, 0, '', '1', '2016-04-14 08:03:57'),
(13, 5, '9991268756', '4.4', 90, 89, 87, 90, 85, 90, 'Menginterpretasi makna teks pantun, baik secara lisan maupun tulisan ', '1', '2016-04-14 08:04:20'),
(14, 5, '9998218087', '4', 87, 88, 83, 89, 0, 0, '', '1', '2016-04-14 08:04:20'),
(15, 5, '9991268756', '4.5', 99, 87, 98, 95, 96, 91, 'Menyunting teks cerita ulang, sesuai dengan struktur dan kaidah teks baik secara lisan maupun tulisan', '1', '2016-04-14 08:04:36'),
(17, 13, '9991268756', '4.1', 78, 80, 95, 78, 95, 60, 'Menganalisis teks pantun, baik melalui lisan maupun tulisan', '1', '2016-07-14 12:25:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_pengetahuan`
--

CREATE TABLE `rb_nilai_pengetahuan` (
  `id_nilai_pengetahuan` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `id_kompetensi_dasar` varchar(5) NOT NULL,
  `nilai1` float NOT NULL,
  `nilai2` float NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_pengetahuan`
--

INSERT INTO `rb_nilai_pengetahuan` (`id_nilai_pengetahuan`, `kodejdwl`, `nisn`, `id_kompetensi_dasar`, `nilai1`, `nilai2`, `user_akses`, `waktu`) VALUES
(1, 5, '9991268756', '5', 73, 80, '1', '2016-07-18 10:24:52'),
(2, 5, '9991268756', '7', 87, 95, '1', '2016-07-18 10:34:27'),
(4, 5, '9991268756', '8', 75, 82, '1', '2016-07-18 11:05:29'),
(5, 13, '9991268756', '9', 75, 68, '1', '2016-07-19 07:45:04'),
(6, 13, '9991268756', '10', 88, 82, '1', '2016-07-19 07:45:15'),
(7, 13, '9991268756', '11', 77, 75, '1', '2016-07-19 07:45:23'),
(8, 14, '9991268756', '12', 76, 77, '1', '2016-07-19 07:45:59'),
(9, 14, '9991268756', '13', 98, 78, '1', '2016-07-19 07:46:08'),
(10, 14, '9991268756', '14', 67, 89, '1', '2016-07-19 07:46:19'),
(11, 5, '0151379251', '5', 70, 83, '1', '2016-07-19 15:38:15'),
(13, 33, '9991268756', '0', 89, 77, '1', '2017-03-30 21:38:41'),
(14, 35, '234', '0', 55, 55, '1', '2017-04-01 00:35:29'),
(15, 37, '0151379251', '12', 4, 5, '1234', '2017-04-01 02:02:14'),
(16, 37, '0151379251', '13', 4, 6, '1234', '2017-04-01 02:02:23'),
(17, 37, '0151379251', '14', 7, 7, '1234', '2017-04-01 02:02:33'),
(19, 38, '234', '5', 80, 75, '12345', '2017-04-22 00:00:55'),
(20, 38, '234', '7', 70, 67, '12345', '2017-04-22 00:09:28'),
(21, 38, '234', '8', 99, 88, '12345', '2017-04-22 00:09:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_pengetahuan_semester`
--

CREATE TABLE `rb_nilai_pengetahuan_semester` (
  `id_nilai_pengetahuan_semester` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nilai1` float NOT NULL,
  `nilai2` float NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_pengetahuan_semester`
--

INSERT INTO `rb_nilai_pengetahuan_semester` (`id_nilai_pengetahuan_semester`, `kodejdwl`, `nisn`, `nilai1`, `nilai2`, `user_akses`, `waktu`) VALUES
(1, 5, '9991268756', 85, 66, '1', '2016-07-18 10:24:52'),
(5, 13, '9991268756', 65, 59, '1', '2016-07-19 07:45:32'),
(4, 5, '0151379251', 83, 65, '1', '2016-07-18 11:57:08'),
(6, 14, '9991268756', 79, 60, '1', '2016-07-19 07:46:29'),
(7, 14, '0151379251', 67, 76, '1', '2016-07-19 09:32:52'),
(8, 33, '9991268756', 90, 90, '1', '2017-03-30 21:39:18'),
(9, 35, '234', 745, 745, '1', '2017-04-01 00:35:35'),
(10, 37, '0151379251', 76, 44, '1234', '2017-04-01 02:02:50'),
(11, 37, '123', 0, 0, '1234', '2017-04-01 11:42:58'),
(12, 38, '234', 80, 90, '12345', '2017-04-22 00:01:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_pertanyaan_essai`
--

CREATE TABLE `rb_nilai_pertanyaan_essai` (
  `id_nilai_pertanyaan_essai` int(5) NOT NULL,
  `id_quiz_ujian` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nilai_essai` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_pertanyaan_essai`
--

INSERT INTO `rb_nilai_pertanyaan_essai` (`id_nilai_pertanyaan_essai`, `id_quiz_ujian`, `nisn`, `nilai_essai`) VALUES
(1, 1, '0000261141', 80),
(2, 4, '0000240365', 80),
(4, 4, '9991268756', 75),
(5, 4, '0000261141', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_prestasi`
--

CREATE TABLE `rb_nilai_prestasi` (
  `id_nilai_prestasi` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_prestasi`
--

INSERT INTO `rb_nilai_prestasi` (`id_nilai_prestasi`, `id_tahun_akademik`, `nisn`, `kode_kelas`, `jenis_kegiatan`, `keterangan`, `user_akses`, `waktu_input`) VALUES
(2, 20161, '9991268756', 'X.MIPA.1', 'Kegiatan Jalan-jalan sore', 'Memiliki keterampilan merencanakan dan melaksanakan percobaan interferensi gelombang cahaya 				', '1', '2016-04-29 08:09:42'),
(6, 20161, '234', 'X.MIPA.2', 'dsad', 'sdfas', '1', '2017-04-01 00:33:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_sikap`
--

CREATE TABLE `rb_nilai_sikap` (
  `id_nilai_sikap` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `positif` text NOT NULL,
  `negatif` text NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('spiritual','sosial') NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_sikap`
--

INSERT INTO `rb_nilai_sikap` (`id_nilai_sikap`, `kodejdwl`, `nisn`, `positif`, `negatif`, `deskripsi`, `status`, `user_akses`, `waktu`) VALUES
(1, 5, '9999152999', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-18 16:38:53'),
(2, 5, '9998218087', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-18 16:38:53'),
(3, 5, '9999152999', 'Nilai Sosial Posisitf,..', 'Nilai Sosial Negatif,..', 'Nilai Deskripsi Sosial,..', 'sosial', '1', '2016-04-18 16:39:53'),
(4, 5, '9998218087', 'Nilai Sosial Posisitf 2,..', 'Nilai Sosial Negatif 2,..', 'Nilai Deskripsi Sosial 2,..', 'sosial', '1', '2016-04-18 16:39:53'),
(5, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:12:48'),
(6, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:12:48'),
(7, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:05'),
(8, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:05'),
(9, 5, '9998218087', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:05'),
(10, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:34'),
(11, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:34'),
(12, 5, '9998218087', 'Isi dengan Nilai Positif,..', 'Isi dengan Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:34'),
(13, 5, '9999152999', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:34'),
(14, 5, '9991268756', 'Isi dengan Nilai Sosial Posisitf 2,..', 'Isi dengan Nilai Sosial Negatif 2,..', 'Isi dengan Nilai Deskripsi Sosial 2,..', 'sosial', '1', '2016-04-29 20:14:07'),
(15, 5, '9998218087', 'Nilai Sosial Posisitf 2,..', 'Nilai Sosial Negatif 2,..', '', 'sosial', '1', '2016-04-29 20:14:07'),
(16, 5, '9999152999', 'Nilai Sosial Posisitf,..', 'Nilai Sosial Negatif,..', 'Nilai Deskripsi Sosial,..', 'sosial', '1', '2016-04-29 20:14:07'),
(17, 35, '234', 'rt7y', 'tyu', 'rtu', 'spiritual', '1', '2017-04-01 00:34:24'),
(18, 35, '234', 'rt7y', 'tyu', 'rtu', 'spiritual', '1', '2017-04-01 00:34:30'),
(19, 35, '234', 'tyi', 'ghiu', 'gyu', 'sosial', '1', '2017-04-01 00:34:43'),
(20, 35, '234', '5', '6', 'rtu', 'spiritual', '1', '2017-04-01 00:34:50'),
(21, 35, '234', '5', '6', 'gyu', 'sosial', '1', '2017-04-01 00:35:03'),
(22, 37, '0151379251', 'kljxdlkfzds', 'dgsdfgsd', 'dfsdg', 'spiritual', '1234', '2017-04-01 02:01:15'),
(23, 37, '0151379251', 'xdfgd', 'dfgdf', 'dfgdfg', 'sosial', '1234', '2017-04-01 02:01:32'),
(24, 37, '0151379251', 'kljxdlkfzds', 'dgsdfgsd', 'dfsdg', 'spiritual', '1', '2017-04-01 02:17:17'),
(25, 37, '0004107204', 'ftyrturtu', '', '', 'spiritual', '1', '2017-04-01 02:17:17'),
(26, 37, '0151379251', 'xdfgd', 'dfgdf', 'dfgdfg', 'sosial', '1', '2017-04-01 02:17:26'),
(27, 37, '0004107204', 'fgjufgj', '', '', 'sosial', '1', '2017-04-01 02:17:26'),
(28, 41, '9990433931', 'saling membantu', 'tidak ada', 'tidak ada', 'spiritual', '0001', '2017-05-18 02:23:10'),
(29, 41, '0009645610', 'sedikit', 'pernah melakuan', 'apa itu', 'spiritual', '0001', '2017-05-18 02:23:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_sikap_indikator`
--

CREATE TABLE `rb_nilai_sikap_indikator` (
  `kode_indikator` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_sikap_indikator`
--

INSERT INTO `rb_nilai_sikap_indikator` (`kode_indikator`, `keterangan`) VALUES
('T', 'Tinggi'),
('S', 'Sedang'),
('R', 'Rendah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_sikap_semester`
--

CREATE TABLE `rb_nilai_sikap_semester` (
  `id_nilai_sikap_semester` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `spiritual_predikat` varchar(2) NOT NULL,
  `spiritual_deskripsi` text NOT NULL,
  `sosial_predikat` varchar(2) NOT NULL,
  `sosial_deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_sikap_semester`
--

INSERT INTO `rb_nilai_sikap_semester` (`id_nilai_sikap_semester`, `id_tahun_akademik`, `nisn`, `kode_kelas`, `spiritual_predikat`, `spiritual_deskripsi`, `sosial_predikat`, `sosial_deskripsi`, `user_akses`, `waktu_input`) VALUES
(1, 20161, '9991268756', 'X.MIPA.1', 'A', 'Pertahankan Nilai anda,..', 'B', 'Tingkatkan Nilai anda,..', '1', '2016-04-28 10:10:16'),
(2, 20161, '0151379251', 'X.MIPA.1', 'C', 'Tolong Perbaiki Sikap anda,..', 'D', 'Anda Tidak Berutak,..', '1', '2016-04-28 10:10:16'),
(3, 20161, '0004107204', 'X.MIPA.1', 'A', 'Pertahankan Nilai anda,..', 'C', 'Tolong Perbaiki Sikap anda,..', '1', '2016-04-28 10:10:50'),
(4, 20161, '234', 'X.MIPA.2', 'w', 'terter', 'w', 'ryery', '1', '2017-04-01 00:33:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_uts`
--

CREATE TABLE `rb_nilai_uts` (
  `id_nilai_uts` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `angka_pengetahuan` float NOT NULL,
  `deskripsi_pengetahuan` text NOT NULL,
  `angka_keterampilan` float NOT NULL,
  `deskripsi_keterampilan` text NOT NULL,
  `waktu_input_uts` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_uts`
--

INSERT INTO `rb_nilai_uts` (`id_nilai_uts`, `kodejdwl`, `nisn`, `angka_pengetahuan`, `deskripsi_pengetahuan`, `angka_keterampilan`, `deskripsi_keterampilan`, `waktu_input_uts`) VALUES
(1, 5, '9991268756', 85, '', 90, '', '2016-04-15 17:54:05'),
(2, 5, '9998218087', 74, '', 83, '', '2016-04-15 17:54:05'),
(3, 13, '9999152999', 89, '', 90, '', '2016-04-21 18:52:57'),
(4, 14, '9999152999', 85, '', 79, '', '2016-04-21 18:53:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_peringkat`
--

CREATE TABLE `rb_peringkat` (
  `id_peringkat` int(11) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nilai_total` int(5) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_peringkat`
--

INSERT INTO `rb_peringkat` (`id_peringkat`, `nisn`, `kode_kelas`, `id_tahun_akademik`, `nilai_total`, `rank`) VALUES
(1, '9991268756', 'X.MIPA.1', 20161, 567, 1),
(2, '0151379251', 'X.MIPA.1', 20161, 190, 2),
(3, '0004107204', 'X.MIPA.1', 20161, 0, 8),
(4, '9998218087', 'X.MIPA.1', 20161, 94, 3),
(5, '0007105659', 'X.MIPA.1', 20161, 0, 9),
(6, '0000267795', 'X.MIPA.1', 20161, 0, 10),
(7, '0007011100', 'X.MIPA.1', 20161, 0, 11),
(8, '0000261160', 'X.MIPA.1', 20161, 0, 12),
(9, '9991261263', 'X.MIPA.1', 20161, 0, 13),
(10, '9994930260', 'X.MIPA.1', 20161, 0, 14),
(11, '9991262828', 'X.MIPA.1', 20161, 0, 15),
(12, '9991261271', 'X.MIPA.1', 20161, 0, 16),
(13, '9998214151', 'X.MIPA.1', 20161, 90, 5),
(14, '0000282457', 'X.MIPA.1', 20161, 0, 17),
(15, '0126523169', 'X.MIPA.1', 20161, 0, 18),
(16, '9997515863', 'X.MIPA.1', 20161, 89, 6),
(17, '9991261719', 'X.MIPA.1', 20161, 0, 19),
(18, '0000240365', 'X.MIPA.1', 20161, 0, 20),
(19, '9998214335', 'X.MIPA.1', 20161, 88, 7),
(20, '9998215055', 'X.MIPA.1', 20161, 92, 4),
(21, '0002882643', 'X.MIPA.1', 20161, 0, 21),
(22, '0009170412', 'X.MIPA.1', 20161, 0, 22),
(23, '0005405460', 'X.MIPA.1', 20161, 0, 23),
(24, '0007675125', 'X.MIPA.1', 20161, 0, 24),
(25, '9991384898', 'X.MIPA.1', 20161, 0, 25),
(26, '9991260829', 'X.MIPA.1', 20161, 0, 26),
(27, '0007011850', 'X.MIPA.1', 20161, 0, 27),
(28, '9993841192', 'X.MIPA.1', 20161, 0, 28),
(29, '0000423077', 'X.MIPA.1', 20161, 0, 29),
(30, '0000261542', 'X.MIPA.1', 20161, 0, 30),
(31, '0002731714', 'X.MIPA.1', 20161, 0, 31),
(32, '0000282184', 'X.MIPA.1', 20161, 0, 32),
(33, '9991263477', 'X.MIPA.1', 20161, 0, 33),
(34, '9999152999', 'X.MIPA.1', 20161, 0, 34),
(35, '0000261141', 'X.MIPA.1', 20161, 0, 35),
(36, '9990433931', 'XI.MIPA.1', 0, 0, 73),
(37, '0009645610', 'XI.MIPA.1', 0, 0, 74),
(38, '0009040968', 'XI.MIPA.1', 0, 0, 75),
(39, '0007839864', 'XI.MIPA.1', 0, 0, 76),
(40, '0029249874', 'XI.MIPA.1', 0, 0, 77),
(41, '9990122601', 'XI.MIPA.1', 0, 0, 78),
(42, '0019637301', 'XI.MIPA.1', 0, 0, 79),
(43, '0007972678', 'XI.MIPA.1', 0, 0, 80),
(44, '0008766826', 'XI.MIPA.1', 0, 0, 81),
(45, '9995929965', 'XI.MIPA.1', 0, 0, 82),
(46, '9996906809', 'XI.MIPA.1', 0, 0, 83),
(47, '0008887564', 'XI.MIPA.1', 0, 0, 84),
(48, '9998083170', 'XI.MIPA.1', 0, 0, 85),
(49, '0007429654', 'XI.MIPA.1', 0, 0, 86),
(50, '0006364833', 'XI.MIPA.1', 0, 0, 87),
(51, '0006769487', 'XI.MIPA.1', 0, 0, 88),
(52, '0007214330', 'XI.MIPA.1', 0, 0, 89),
(53, '9999625697', 'XI.MIPA.1', 0, 0, 90),
(54, '0003209837', 'XI.MIPA.1', 0, 0, 91),
(55, '0009524454', 'XI.MIPA.1', 0, 0, 92),
(56, '0007143044', 'XI.MIPA.1', 0, 0, 93),
(57, '0009355065', 'XI.MIPA.1', 0, 0, 94),
(58, '0008897512', 'XI.MIPA.1', 0, 0, 95),
(59, '9990433770', 'XI.MIPA.1', 0, 0, 96),
(60, '9985876814', 'XI.MIPA.1', 0, 0, 97),
(61, '9988835786', 'XI.MIPA.1', 0, 0, 98),
(62, '0007234288', 'XI.MIPA.1', 0, 0, 99),
(63, '9994462195', 'XI.MIPA.1', 0, 0, 100),
(64, '0007955091', 'XI.MIPA.1', 0, 0, 101),
(65, '0009697863', 'XI.MIPA.1', 0, 0, 102),
(66, '0008525957', 'XI.MIPA.1', 0, 0, 103),
(67, '0002898050', 'XI.MIPA.1', 0, 0, 104),
(68, '0007795542', 'XI.MIPA.1', 0, 0, 105),
(69, '9950494907', 'XI.MIPA.1', 0, 0, 106),
(70, '0002938907', 'XI.MIPA.1', 0, 0, 107),
(71, '0007744390', 'XI.MIPA.1', 0, 0, 108),
(72, '9997521322', 'XI.MIPA.1', 0, 0, 109),
(73, '9990433931', 'XI.MIPA.1', 20161, 0, 73),
(74, '0009645610', 'XI.MIPA.1', 20161, 0, 74),
(75, '0009040968', 'XI.MIPA.1', 20161, 0, 75),
(76, '0007839864', 'XI.MIPA.1', 20161, 0, 76),
(77, '0029249874', 'XI.MIPA.1', 20161, 0, 77),
(78, '9990122601', 'XI.MIPA.1', 20161, 0, 78),
(79, '0019637301', 'XI.MIPA.1', 20161, 0, 79),
(80, '0007972678', 'XI.MIPA.1', 20161, 0, 80),
(81, '0008766826', 'XI.MIPA.1', 20161, 0, 81),
(82, '9995929965', 'XI.MIPA.1', 20161, 0, 82),
(83, '9996906809', 'XI.MIPA.1', 20161, 0, 83),
(84, '0008887564', 'XI.MIPA.1', 20161, 0, 84),
(85, '9998083170', 'XI.MIPA.1', 20161, 0, 85),
(86, '0007429654', 'XI.MIPA.1', 20161, 0, 86),
(87, '0006364833', 'XI.MIPA.1', 20161, 0, 87),
(88, '0006769487', 'XI.MIPA.1', 20161, 0, 88),
(89, '0007214330', 'XI.MIPA.1', 20161, 0, 89),
(90, '9999625697', 'XI.MIPA.1', 20161, 0, 90),
(91, '0003209837', 'XI.MIPA.1', 20161, 0, 91),
(92, '0009524454', 'XI.MIPA.1', 20161, 0, 92),
(93, '0007143044', 'XI.MIPA.1', 20161, 0, 93),
(94, '0009355065', 'XI.MIPA.1', 20161, 0, 94),
(95, '0008897512', 'XI.MIPA.1', 20161, 0, 95),
(96, '9990433770', 'XI.MIPA.1', 20161, 0, 96),
(97, '9985876814', 'XI.MIPA.1', 20161, 0, 97),
(98, '9988835786', 'XI.MIPA.1', 20161, 0, 98),
(99, '0007234288', 'XI.MIPA.1', 20161, 0, 99),
(100, '9994462195', 'XI.MIPA.1', 20161, 0, 100),
(101, '0007955091', 'XI.MIPA.1', 20161, 0, 101),
(102, '0009697863', 'XI.MIPA.1', 20161, 0, 102),
(103, '0008525957', 'XI.MIPA.1', 20161, 0, 103),
(104, '0002898050', 'XI.MIPA.1', 20161, 0, 104),
(105, '0007795542', 'XI.MIPA.1', 20161, 0, 105),
(106, '9950494907', 'XI.MIPA.1', 20161, 0, 106),
(107, '0002938907', 'XI.MIPA.1', 20161, 0, 107),
(108, '0007744390', 'XI.MIPA.1', 20161, 0, 108),
(109, '9997521322', 'XI.MIPA.1', 20161, 0, 109);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_essai`
--

CREATE TABLE `rb_pertanyaan_essai` (
  `id_pertanyaan_essai` int(11) NOT NULL,
  `id_quiz_ujian` int(11) NOT NULL,
  `id_bank_pertanyaan_essai` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_essai`
--

INSERT INTO `rb_pertanyaan_essai` (`id_pertanyaan_essai`, `id_quiz_ujian`, `id_bank_pertanyaan_essai`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 2, 5),
(6, 2, 6),
(11, 5, 11),
(36, 4, 10),
(35, 4, 9),
(37, 6, 21),
(38, 6, 22),
(39, 7, 1),
(40, 7, 2),
(41, 7, 3),
(42, 7, 5),
(43, 8, 23),
(44, 8, 24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_objektif`
--

CREATE TABLE `rb_pertanyaan_objektif` (
  `id_pertanyaan_objektif` int(11) NOT NULL,
  `id_quiz_ujian` int(11) NOT NULL,
  `id_bank_pertanyaan_objektif` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_objektif`
--

INSERT INTO `rb_pertanyaan_objektif` (`id_pertanyaan_objektif`, `id_quiz_ujian`, `id_bank_pertanyaan_objektif`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 1, 5),
(17, 4, 8),
(16, 4, 6),
(18, 7, 1),
(19, 7, 2),
(20, 7, 5),
(21, 8, 14),
(22, 8, 15),
(23, 9, 1),
(24, 9, 2),
(25, 9, 3),
(26, 9, 5),
(27, 9, 6),
(28, 9, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_penilaian`
--

CREATE TABLE `rb_pertanyaan_penilaian` (
  `id_pertanyaan_penilaian` int(5) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `status` enum('diri','teman') NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_penilaian`
--

INSERT INTO `rb_pertanyaan_penilaian` (`id_pertanyaan_penilaian`, `pertanyaan`, `status`, `waktu_input`) VALUES
(1, 'Bagaimana kenyamanan anda di sekolah ini pada |namamatapelajaran| ?', 'diri', '2016-07-03 04:17:29'),
(2, 'Bagaimana kenyamanan anda tehadap teman di sekolah inii ?', 'diri', '2016-07-03 08:12:17'),
(4, 'Apa perbuatan jahat yang pernah teman anda ini lakukan ?', 'teman', '2016-07-08 05:08:10'),
(5, 'Apakah dia teman yang baik?', 'teman', '2016-07-08 08:12:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_penilaian_jawab`
--

CREATE TABLE `rb_pertanyaan_penilaian_jawab` (
  `id_pertanyaan_penilaian_jawab` int(10) NOT NULL,
  `id_pertanyaan_penilaian` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nisn_teman` varchar(20) NOT NULL,
  `jawaban` text NOT NULL,
  `status` enum('diri','teman') NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `waktu_jawab` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_penilaian_jawab`
--

INSERT INTO `rb_pertanyaan_penilaian_jawab` (`id_pertanyaan_penilaian_jawab`, `id_pertanyaan_penilaian`, `nisn`, `nisn_teman`, `jawaban`, `status`, `kode_kelas`, `waktu_jawab`) VALUES
(23, 2, '9991268756', '', 'jjjj', 'diri', 'X.MIPA.1', '2016-07-08 15:57:55'),
(12, 4, '9991268756', '0151379251', 'fff', 'teman', 'X.MIPA.1', '2016-07-08 15:21:34'),
(11, 5, '9991268756', '0151379251', 'eee', 'teman', 'X.MIPA.1', '2016-07-08 15:21:34'),
(15, 5, '9991268756', '0004107204', 'aaaa', 'teman', 'X.MIPA.1', '2016-07-08 15:23:05'),
(16, 4, '9991268756', '0004107204', 'bbbb', 'teman', 'X.MIPA.1', '2016-07-08 15:23:05'),
(17, 5, '9991268756', '9998218087', 'ttt', 'teman', 'X.MIPA.1', '2016-07-08 15:23:34'),
(18, 4, '9991268756', '9998218087', 'yyy', 'teman', 'X.MIPA.1', '2016-07-08 15:23:34'),
(24, 1, '9991268756', '', 'kkkk', 'diri', 'X.MIPA.1', '2016-07-08 15:57:55'),
(25, 5, '9991268756', '0007105659', 'hhh', 'teman', 'X.MIPA.1', '2016-07-08 15:58:39'),
(26, 4, '9991268756', '0007105659', 'nnn', 'teman', 'X.MIPA.1', '2016-07-08 15:58:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_predikat`
--

CREATE TABLE `rb_predikat` (
  `id_predikat` int(5) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `nilai_a` int(3) NOT NULL,
  `nilai_b` int(3) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_predikat`
--

INSERT INTO `rb_predikat` (`id_predikat`, `kode_kelas`, `nilai_a`, `nilai_b`, `grade`, `keterangan`) VALUES
(1, '0', 86, 100, 'A', 'Sangat Baik'),
(2, '0', 79, 85, 'B', 'Baik'),
(3, '0', 77, 78, 'C', 'Cukup'),
(4, '0', 0, 77, 'D', 'Kurang'),
(7, 'X.MIPA.1', 85, 100, 'A', 'Sangat Baik'),
(8, 'X.MIPA.1', 70, 84, 'B', 'Baik'),
(9, 'X.MIPA.1', 50, 69, 'C', 'Cukup'),
(10, 'X.MIPA.1', 0, 49, 'D', 'Kurang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_psb_aktivasi`
--

CREATE TABLE `rb_psb_aktivasi` (
  `id_aktivasi` int(10) NOT NULL,
  `kode_pendaftaran` varchar(50) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `status` enum('sma','smk','smp') NOT NULL,
  `proses` int(2) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_psb_aktivasi`
--

INSERT INTO `rb_psb_aktivasi` (`id_aktivasi`, `kode_pendaftaran`, `nama_lengkap`, `status`, `proses`, `waktu_input`) VALUES
(1, 'SMA-20160701085110', 'Robby Prihandaya', 'sma', 1, '2016-06-21 12:11:45'),
(2, 'SMK-20160701085110', 'Dewiit Safitri', 'smk', 1, '2016-06-21 15:04:57'),
(3, 'SMA-20160701085111', 'Tommy Utama', 'sma', 1, '2016-07-01 03:13:12'),
(4, 'SMP-20160701094107', 'Willy Fernando', 'smp', 0, '2016-07-01 09:27:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_psb_pendaftaran`
--

CREATE TABLE `rb_psb_pendaftaran` (
  `id_pendaftaran` int(10) NOT NULL,
  `kode_pendaftaran` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_panggilan` varchar(120) NOT NULL,
  `no_induk` varchar(50) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_agama` int(5) NOT NULL,
  `anak_ke` varchar(10) NOT NULL,
  `jumlah_saudara` varchar(10) NOT NULL,
  `status_dalam_keluarga` varchar(100) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `berat_badan` int(5) NOT NULL,
  `tinggi_badan` int(5) NOT NULL,
  `golongan_darah` varchar(5) NOT NULL,
  `penyakit_pernah_diderita` varchar(255) NOT NULL,
  `diterima_dikelas` varchar(50) NOT NULL,
  `diterima_tanggal` date NOT NULL,
  `sekolah_asal` varchar(255) NOT NULL,
  `alamat_sekolah_asal` text NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tempat_lahir_ayah` text NOT NULL,
  `tanggal_lahir_ayah` date NOT NULL,
  `agama_ayah` int(5) NOT NULL,
  `pendidikan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `alamat_rumah_ayah` text NOT NULL,
  `telpon_rumah_ayah` varchar(15) NOT NULL,
  `alamat_kantor_ayah` text NOT NULL,
  `telpon_kantor_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tempat_lahir_ibu` text NOT NULL,
  `tanggal_lahir_ibu` date NOT NULL,
  `agama_ibu` int(5) NOT NULL,
  `pendidikan_ibu` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `alamat_rumah_ibu` text NOT NULL,
  `telpon_rumah_ibu` varchar(15) NOT NULL,
  `alamat_kantor_ibu` text NOT NULL,
  `telpon_kantor_ibu` varchar(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `alamat_wali` text NOT NULL,
  `no_telpon_wali` varchar(15) NOT NULL,
  `status` enum('sma','smk','smp') NOT NULL,
  `waktu_daftar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_psb_pendaftaran`
--

INSERT INTO `rb_psb_pendaftaran` (`id_pendaftaran`, `kode_pendaftaran`, `nama`, `nama_panggilan`, `no_induk`, `id_jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `id_agama`, `anak_ke`, `jumlah_saudara`, `status_dalam_keluarga`, `alamat_siswa`, `no_telpon`, `berat_badan`, `tinggi_badan`, `golongan_darah`, `penyakit_pernah_diderita`, `diterima_dikelas`, `diterima_tanggal`, `sekolah_asal`, `alamat_sekolah_asal`, `nama_ayah`, `tempat_lahir_ayah`, `tanggal_lahir_ayah`, `agama_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `alamat_rumah_ayah`, `telpon_rumah_ayah`, `alamat_kantor_ayah`, `telpon_kantor_ayah`, `nama_ibu`, `tempat_lahir_ibu`, `tanggal_lahir_ibu`, `agama_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `alamat_rumah_ibu`, `telpon_rumah_ibu`, `alamat_kantor_ibu`, `telpon_kantor_ibu`, `nama_wali`, `alamat_wali`, `no_telpon_wali`, `status`, `waktu_daftar`) VALUES
(1, 'SMA-20160701085110', 'Robby Prihandaya', 'Robby', '5675345', 1, 'Padang', '1989-06-05', 1, '3', '5', 'Anak Kandung', 'Jl. Angkasa Puri, Perundam 4, Blok C No 2', '081267771344', 75, 170, 'O', 'Tdak Pernah', '1', '2016-06-22', 'SMP N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Nafnizon (Alm)', 'Payakumbuh', '1975-04-12', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0752461692', 'Muro Paiti, Kapur IX', '0752786512', 'Yeni Ermawaty', 'Padang', '1974-01-18', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0752461692', '-', '0', 'Tommy Utama', 'Jl.Ulak Karang Padang', '081266881226', 'sma', '2016-06-22 12:11:45'),
(3, 'SMK-20160701085110', 'Dewiit Safitri', 'Dewi', '5674322', 1, 'Gumarang', '1989-02-12', 1, '3', '5', 'Anak Kandung', 'Jl. Linggar Jati, Padang', '082173054501', 60, 170, 'AB', 'Tdak Pernah', '1', '2016-06-22', 'SMP N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Sukarni', 'Gumarang', '1976-12-01', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0753456790', 'Muro Paiti, Kapur IX', '0753445566', 'Mama Dewi', 'Gumarang', '1973-11-11', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0753456790', '-', '0', 'Adeil Putra', 'Jl.Ulak Karang, Padang', '082190871234', 'smk', '2016-06-22 15:04:57'),
(5, 'SMA-20160701085111', 'Tommy Utama', 'Tommy', '5674327', 1, 'Padang', '1985-08-18', 1, '1', '5', 'Anak Kandung', 'Jl. Simpang DPR, Padang', '081266881226', 70, 160, 'AB', 'Tdak Pernah', '1', '2016-07-01', 'SMA N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Sunandar', 'Payakumbuh', '0004-12-05', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0752461645', 'Muro Paiti, Kapur IX', '0752897855', 'Yunimar', 'Padang', '0000-00-00', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0752461645', '-', '0', 'Willy Fernando', 'Jl.Ulak Karang, Padang', '082167771233', 'sma', '2016-07-01 11:19:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_psb_pendaftaran_saudara`
--

CREATE TABLE `rb_psb_pendaftaran_saudara` (
  `id_saudara` int(10) NOT NULL,
  `id_pendaftaran` int(10) NOT NULL,
  `nama_saudara` varchar(150) NOT NULL,
  `umur_saudara` int(5) NOT NULL,
  `pendidikan_saudara` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_psb_pendaftaran_saudara`
--

INSERT INTO `rb_psb_pendaftaran_saudara` (`id_saudara`, `id_pendaftaran`, `nama_saudara`, `umur_saudara`, `pendidikan_saudara`) VALUES
(1, 1, 'Willy Fernando', 29, 'S1'),
(2, 1, 'Randy Komara', 25, 'SMA'),
(3, 1, 'Laura Hikmah Izzatin', 18, 'SMA'),
(4, 3, 'Lira Virna', 15, 'SMP'),
(5, 3, 'Airin Stewano', 13, 'SD'),
(10, 5, 'Randy Komara', 25, 'SMA'),
(9, 5, 'Willy Fernando', 28, 'S1'),
(11, 5, 'Laura Hikmah Izzatin', 19, 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_quiz_ujian`
--

CREATE TABLE `rb_quiz_ujian` (
  `id_quiz_ujian` int(5) NOT NULL,
  `id_kategori_quiz_ujian` int(5) NOT NULL,
  `kodejdwl` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `batas_waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_quiz_ujian`
--

INSERT INTO `rb_quiz_ujian` (`id_quiz_ujian`, `id_kategori_quiz_ujian`, `kodejdwl`, `keterangan`, `batas_waktu`) VALUES
(4, 1, 5, 'Quiz Online Nilai Akhir Matematika', '2016-07-20 08:14:24'),
(5, 1, 5, 'hhhb', '2016-07-19 17:19:54'),
(6, 1, 13, '123', '2017-03-31 23:55:08'),
(7, 1, 36, 'jhvuytvutctcd', '2017-04-01 01:52:10'),
(8, 1, 37, 'jhgjygjhg', '2017-04-22 01:00:40'),
(9, 2, 38, 'ujian ', '2017-04-23 12:18:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_ruangan`
--

CREATE TABLE `rb_ruangan` (
  `kode_ruangan` varchar(10) NOT NULL,
  `kode_gedung` varchar(10) NOT NULL,
  `nama_ruangan` varchar(100) NOT NULL,
  `kapasitas_belajar` int(5) NOT NULL,
  `kapasitas_ujian` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_ruangan`
--

INSERT INTO `rb_ruangan` (`kode_ruangan`, `kode_gedung`, `nama_ruangan`, `kapasitas_belajar`, `kapasitas_ujian`, `keterangan`, `aktif`) VALUES
('R001', 'G001', 'A.1', 35, 30, '', 'Ya'),
('R002', 'G001', 'A.2', 40, 35, '', 'Ya'),
('R003', 'G002', 'B.1', 34, 29, '', 'Ya'),
('R004', 'G002', 'B.2', 45, 40, 'erer', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sesi`
--

CREATE TABLE `rb_sesi` (
  `id_sesi` int(5) NOT NULL,
  `nama_sesi` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_sesi`
--

INSERT INTO `rb_sesi` (`id_sesi`, `nama_sesi`, `keterangan`, `aktif`) VALUES
(1, 'Semester 1', '', 'Ya'),
(2, 'Semester 2', '', 'Ya'),
(3, 'Semester 3', '', 'Ya'),
(4, 'Semester 4', '', 'Ya'),
(5, 'Semester 5', '', 'Ya'),
(6, 'Semester 6', '', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_siswa`
--

CREATE TABLE `rb_siswa` (
  `id_siswa` int(10) NOT NULL,
  `nipd` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `id_agama` int(5) NOT NULL,
  `kebutuhan_khusus` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `dusun` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `jenis_tinggal` varchar(100) NOT NULL,
  `alat_transportasi` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `skhun` varchar(50) NOT NULL,
  `penerima_kps` varchar(20) NOT NULL,
  `no_kps` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tahun_lahir_ayah` int(4) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `kebutuhan_khusus_ayah` varchar(100) NOT NULL,
  `no_telpon_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tahun_lahir_ibu` int(4) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `kebutuhan_khusus_ibu` varchar(100) NOT NULL,
  `no_telpon_ibu` varchar(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `tahun_lahir_wali` int(4) NOT NULL,
  `pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(50) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `status_awal` varchar(20) NOT NULL,
  `status_siswa` enum('Aktif','Tidak Aktif') NOT NULL,
  `tingkat` varchar(10) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `id_sesi` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_siswa`
--

INSERT INTO `rb_siswa` (`id_siswa`, `nipd`, `password`, `nama`, `id_jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `id_agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `foto`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `kebutuhan_khusus_ayah`, `no_telpon_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `kebutuhan_khusus_ibu`, `no_telpon_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `status_awal`, `status_siswa`, `tingkat`, `kode_kelas`, `kode_jurusan`, `id_sesi`) VALUES
(3033, '4929', 'siswa', 'Zumaidah', 2, '9997521322', 'Perlis', '1999-03-07', '1205070319990001', 1, 'Tidak ada', 'Peringgan Gebang', '0', '0', 'VII', 'Pekan Gebang', 'Kec. Gebang', 0, '', '', '', '085262116735', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-zumaidah.JPG', 'Rajali', 1956, 'SMA / sederajat', 'Nelayan', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Umi Kalsum', 1959, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(3032, '4973', 'siswa', 'YUSRIL ABU RIZAL', 1, '0012775664', 'TANJUNG PURA', '2000-07-13', '1205111307000001', 1, 'Tidak ada', 'JALAN MERDEKA', '0', '0', '', 'PEKAN TANJUNG PURA', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-yusril abu rizal.JPG', 'MUHYIN', 1959, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'FARIDAH HANUM', 1969, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(3030, '4726', 'siswa', 'Yuninda Sari', 2, '9980473265', 'Pematang Cengal', '1998-11-03', '1205031119980011', 1, 'Tidak ada', 'Tanjung Pura', '0', '0', '', 'P.Cengal Barat', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '-                   ', 'Tidak', '', '', 'Ngadiman', 1985, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Suwatik', 1987, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(3031, '4799', 'siswa', 'Yunita Putri Asmara', 2, '9980472616', 'Tanjung Pura', '1998-08-23', '1205230819980008', 1, 'Tidak ada', 'Jl.Sekata', '0', '0', '', 'Pekubuan', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI 009M388    ', 'Ya', '34ugte20853005', '', 'Khairul Amri', 1966, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Mahfuza Hsb', 1972, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(3029, '5011', 'siswa', 'YUNI RAHAYU', 2, '0007217788', 'SUKA RAMAI', '2000-02-15', '1205095502000007', 1, 'Tidak ada', 'Dusun V Desa Lalang', '0', '0', '', 'DESA LALANG', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-yuni rahayu.JPG', 'Jumiadi', 1968, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'PARTIYEM', 1979, 'SMP / sederajat', '', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(3028, '4798', 'siswa', 'Yuliana Putri', 2, '0000258594', 'Paluh Merbau', '2000-03-20', '1205200320000003', 1, 'Tidak ada', 'Dusun I Paluh Mardan', '0', '0', 'Dusun I', 'Pematang Cengal', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '-                   ', 'Tidak', '', '', 'Syahbudi', 1971, 'Tidak sekolah', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Rosmalina', 1980, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(3027, '4927', 'siswa', 'Yosi Novita', 2, '0007953122', 'Serapuh ABC', '2000-11-14', '1205125411000008', 1, 'Tidak ada', 'Kw.Pesilam AFD.I', '0', '0', 'Kw.Pesilam', 'Kw.Pesilam', 'Kec. Padang Tualang', 0, '', '', '', '085372085200', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-yosi novita.JPG', 'M.Yusuf', 1972, 'SMP / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Asnidar', 1973, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(3026, '4686', 'siswa', 'Wulan Dari', 2, '9996744193', 'Kampung Pinang', '1999-08-13', '1205130819990008', 1, 'Tidak ada', 'Jl. Terusan Desa Pantai Cermin Kec. Tanjung Pura', '0', '0', '', 'Desa Pantai Cermin', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0016004    ', 'Ya', 'PCABQD', '', 'Ibrahim', 1974, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Masitah', 1977, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(3025, '5006', 'siswa', 'windi suryani', 2, '0010244864', 'Sumber Padi Lima Puluh', '2001-03-28', '0000000000000000', 1, 'Tidak ada', 'Pematang Cengal', '0', '0', 'VII', 'Pematang Cengal', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-windi suryani.JPG', 'Poniman', 1974, 'SD / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'PAINI TRIAWATI', 1975, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1970, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(3024, '4972', 'siswa', 'Widya Ratna Wati', 2, '0012777441', 'Pantai Cermin', '2001-05-14', '1205140500100005', 1, 'Tidak ada', 'Terusan Pantai Cermin', '0', '0', 'Teluk Nibung', 'Pantai Cermin', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-widia ratnawati.JPG', 'Sutino', 1960, 'SD / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Suriani', 1971, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(3023, '4926', 'siswa', 'Widania', 2, '9990122687', 'Desa Dogang', '1999-06-13', '1205135306990001', 1, 'Tidak ada', 'Merdeka', '0', '0', 'IV', 'Desa Dogang', 'Kec. Gebang', 0, '', '', '', '082363055131', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-widania.JPG', 'Juniardi', 1974, 'SD / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Asmi', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(3022, '4725', 'siswa', 'Wardia Ningsih', 2, '9988671822', 'Simpang Limun', '1999-09-27', '1205270919990009', 1, 'Tidak ada', 'Gebang', '0', '0', 'Dusun II Simpang Limun', 'Simpang Limun', 'Kec. Gebang', 0, '', '', '', '081362380083', '', 'DN-07 DI 0090506    ', 'Ya', '34uwtl20856002', '', 'Sutamat', 1972, 'SMP / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'MULIANI', 1973, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(3021, '4932', 'siswa', 'Wahyudi', 1, '0007744390', 'Gebang', '2000-01-15', '1205150120000001', 1, 'Tidak ada', 'Mesjid', '0', '0', 'VI', 'Pekan Gebang', 'Kec. Gebang', 0, '', '', '', '085276095827', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-WAHYUDI IPA 1.JPG', 'Marwan', 1974, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Arbaiyah', 1976, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(3020, '5005', 'siswa', 'VIRA YUNITA', 2, '0016110568', 'GEBANG', '2001-11-24', '1205241100100004', 1, 'Tidak ada', 'JALAN PASAR RAWA', '0', '0', 'DUSUN 2', 'PASAR RAWA', 'Kec. Gebang', 0, '', '', '', '', '', '', '', '', 'srilangkat-vira yunita.JPG', 'HERMAN', 1960, 'SD / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'SITI RAHMAH', 1961, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(3018, '4971', 'siswa', 'Veronika M Panjaitan', 2, '0030014195', 'Matio', '2000-03-05', '1212014503000005', 2, 'Tidak ada', 'Matio', '0', '0', '', 'Matio', 'Kec. Balige', 0, '', '', '', '', '', '', '', '', 'srilangkat-veronika M panjaitan.JPG', 'Manggasal Panjaitan', 1972, 'SMP / sederajat', 'Petani', 'Kurang dari Rp. 500,000', 'Tidak Ada', '', 'Heleria Tampubolon', 1976, 'SMP / sederajat', 'Petani', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(3019, '4724', 'siswa', 'Vira Handayani', 2, '9995328467', 'Psr Satu', '1999-11-25', '1205251119990011', 1, 'Tidak ada', 'Jl. Terusan Desa Lalang Kec. Tanjung Pura', '0', '0', '', 'Desa Lalang', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI 0089906    ', 'Tidak', '', '', 'Bahri', 1970, 'SD / sederajat', 'Pedagang Kecil', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Ramiyanti', 1976, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(3017, '4795', 'siswa', 'Triani', 2, '9977204145', 'Sanggalima', '1997-12-20', '1205190419970001', 1, 'Tidak ada', 'Pekan Tanjung Pura', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN - 07 DI 0016188  ', 'Ya', '34UTSG20853003', '', 'Ramsyah', 1971, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Ana', 1972, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(3016, '4884', 'siswa', 'Tira Mulia Anjani', 2, '0009354069', 'Air Hitam', '2000-05-04', '1205132204080008', 1, 'Tidak ada', 'Air Hitam', '0', '0', 'V', 'Air Hitam', 'Kec. Gebang', 0, '', '', '', '085261866960', 'tiramulia@gmail.com', '', '', '', 'srilangkat-ELIDA ROSALIN.JPG', 'Misnan', 1962, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sry Atun', 1971, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(3015, '4844', 'siswa', 'Tety Erna Wati', 1, '0003290596', 'Tegal Rejo', '2000-02-05', '1205050220000003', 1, 'Tidak ada', 'Tegal Rejo', '0', '0', 'I', 'Pekan Gebang', 'Kec. Gebang', 0, '', '', '', '08236570657', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-no-image.jpg', 'Asrun', 1972, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Suyati.S', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(3014, '4923', 'siswa', 'Tengku Reza Melano', 1, '0002938907', 'Gebang', '2000-05-19', '1205190520000001', 1, 'Tidak ada', 'Peringgan Gebang', '0', '0', 'VII', 'Pekan Gebang', 'Kec. Gebang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-t. reza melano.JPG', 'Tengku Hidayat Johani', 1971, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Syamsidar', 1972, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(3013, '4922', 'siswa', 'Tengku Fahri Zulhanas', 1, '9950494907', 'tanjung pura', '2001-03-28', '1205280320010003', 1, 'Tidak ada', 'P.Brandan', '0', '0', 'IV Melur', 'Paya Perupuk', 'Kec. Tanjung Pura', 0, '', '', '', '085362143021', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-t. fahrizul hannas.JPG', 'Tengku Malahanasi', 1972, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Juliana', 1974, 'SMP / sederajat', 'Tidak bekerja', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(3012, '4722', 'siswa', 'Tedi Erlanda', 1, '9990434336', 'Pantai Cermin', '1999-04-08', '1205080419990004', 1, 'Tidak ada', 'Jl. Terusan Desa Pantai Cermin Kec. Tanjung Pura', '0', '0', '', 'Desa Pantai Cermin', 'Kec. Tanjung Pura', 0, '', '', '', '081263736860', '', 'DN-07 DI 0089905    ', 'Tidak', '', '', 'Saparuddin', 1975, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Yusnita', 1980, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(3011, '5004', 'siswa', 'Tarlianisa', 2, '0012774834', 'Pantai Cermin', '2001-06-06', '1205114606000011', 1, 'Tidak ada', 'Sei Rebat', '0', '0', 'Sei Rebat', 'Pantai Cermin', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-tarlia nisa.JPG', 'Lukman', 1960, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sulastri', 1970, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(3010, '4843', 'siswa', 'T.Zulkarnain', 1, '9998923511', 'Tanjung Pura', '1999-01-26', '1205260199000005', 1, 'Tidak ada', 'Patimura', '0', '0', 'Kenanga', 'Teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-T ZULKARNAIN IPS.JPG', 'T.Arham Azhari', 1963, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Khairani S.PDI', 1962, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(3009, '4882', 'siswa', 'T.Zulfikar', 1, '9994117569', 'Tanjung Pura', '1999-01-26', '1205112601990001', 1, 'Tidak ada', 'T.Bakung', '0', '0', 'Kenanga', 'T.Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'tengkuzulfikar478@gmail.com', '', '', '', 'srilangkat-T ZULFIKAR IPS.JPG', 'T.Arham Azhari', 1972, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Khairani,S.PdI', 1974, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(3008, '4721', 'siswa', 'Syahrani', 2, '0007271620', 'Tanjung Pura', '2000-04-07', '1205070420000004', 1, 'Tidak ada', 'JL.Madrasah No.04', '3', '6', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI  0089772   ', 'Ya', 'PBMHTJ', '', 'Rahman', 1965, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Asiah', 1967, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(3007, '4794', 'siswa', 'Syafitri Firani', 2, '9994800906', 'Tanjung Pura', '1999-04-03', '1205040319990003', 1, 'Tidak ada', 'Khairil Anwar', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI 0090387    ', 'Tidak', '', '', 'Muhammad Yusuf', 1976, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Adek', 1978, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(3006, '4921', 'siswa', 'Syafira', 2, '0007795542', 'Tanjung Pura', '2000-09-27', '1205270920000003', 1, 'Tidak ada', 'bambu runcing no.72', '0', '0', '', 'pekan tanjung pura', 'Kec. Tanjung Pura', 0, '', '', '', '085261058801', 'syafira.ariska@yahoo.com', '', '', '', 'srilangkat-syafira.JPG', 'iskandar', 1972, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Alm.Arbaiyah', 1970, 'D1', 'Sudah Meninggal', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(3005, '5003', 'siswa', 'Susilawati', 2, '0003659937', 'Medan', '2000-06-06', '1205114506000010', 1, 'Tidak ada', 'Simpang Pemda', '0', '0', 'Logas', 'Sei. Langsat', 'Kec. Pangean', 0, '', '', '', '', '', '', '', '', 'srilangkat-susilawati.JPG', 'Lukman', 1958, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sulastri', 1970, 'SD / sederajat', '', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(3004, '4920', 'siswa', 'Susanti', 2, '0006111882', 'Kwala Pesilam', '2000-08-24', '1205126408000004', 1, 'Tidak ada', 'Bukit Tua', '0', '0', 'Afd.I Kw.Pesilam', 'Kw.Pesilam', 'Kec. Padang Tualang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-SUSANTI.JPG', 'Ponirin', 1961, 'SD / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Rusmini', 1964, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(3003, '4919', 'siswa', 'Sugianto', 1, '9999969294', 'Rantau Panjang', '1999-05-19', '1205104221199000', 1, 'Tidak ada', 'Rantau Panjang', '0', '0', 'Mawar', 'Teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '085207241980', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-SUGIANTO IPA 2.JPG', 'Mulyadi', 1964, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Zuwarni', 1964, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(3002, '4842', 'siswa', 'Suci Sushanty', 2, '0007322641', 'Air Hitam', '2000-06-27', '1205136706000006', 1, 'Tidak ada', 'Air Hitam', '0', '0', '', 'Air Hitam', 'Kec. Gebang', 0, '', '', '', '082365943990', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-SUCI SUSANTI XI IPS.JPG', 'Samirin', 1960, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mariani', 1964, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(3001, '4881', 'siswa', 'Sri Wahyuni Ramadhani', 2, '9998834047', 'Air Hitam', '1999-12-10', '1205135012990002', 1, 'Tidak ada', 'Air Hitam', '0', '0', 'VI', 'Air Hitam', 'Kec. Gebang', 0, '', '', '', '087748926411', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-SRI WAHYUNI RAMADHANI.JPG', 'Suhariono', 1969, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sri Tuti', 1973, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(3000, '4685', 'siswa', 'Sri Wahyuni', 2, '9990122683', 'Dogang', '1999-05-06', '1205060519990005', 1, 'Tidak ada', 'Dusun III Tengah Desa Dogang', '0', '0', 'Dusun III Tengah', 'Desa Dogang', 'Kec. Gebang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '-                   ', 'Ya', 'PCS8PU', '', 'Syahril', 1976, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Suriani', 1979, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2999, '4720', 'siswa', 'Sri Wahyuni', 2, '9986479117', 'Aceh Timur', '1998-09-17', '1205170998000004', 1, 'Tidak ada', 'Dusun IV Suka Ramai Mekar Jaya Desa Telaga Said Kec. Sei Lepan', '0', '0', '', 'Desa Telaga Said Kec. Sei Lep', 'Kec. Sei Lepan', 0, '', '', '', '', '', '-                   ', 'Tidak', '', '', 'Muhammad Yunus, AR', 1972, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Umi Hasanah', 1975, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2998, '4793', 'siswa', 'SRI REZEKI WAHYUNI', 2, '0000258734', 'Teluk Bakung', '2000-05-10', '1205100500000005', 1, 'Tidak ada', 'Pulau Banyak', '0', '0', '', 'Teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07  DI 0015571   ', 'Tidak', '', '', 'Ilham Amarullah', 1970, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Herlina', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2997, '4918', 'siswa', 'Sri Rahayu', 2, '9998586335', 'Pekubuan', '1999-08-28', '1205116808990009', 1, 'Tidak ada', 'pekubuan', '0', '0', '', 'pekubuan', 'Kec. Tanjung Pura', 0, '', '', '', '082363476480', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-SRI RAHAYU.JPG', 'Dadi', 1963, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Erwati', 1973, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2996, '4762', 'siswa', 'SRI IRAWATI', 2, '9990122646', 'Sanggalima', '1999-06-26', '1205260619990006', 1, 'Tidak ada', 'Desa Sanggalima Kec. Gebang', '0', '0', '', 'Desa Sanggalima Kec. Gebang', 'Kec. Gebang', 0, '', '', '', '', '', 'DN-07  DI 0090003   ', 'Tidak', '', '', 'Isbarisno', 1968, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Wigati', 1968, 'S1', 'PNS/TNI/Polri', 'Rp. 500,000 - Rp. 999,999', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2995, '4761', 'siswa', 'Sri Gustina', 2, '9990433668', 'Paya Perupuk', '1999-09-13', '1205130919990009', 1, 'Tidak ada', 'Jl. T. Amir Hamzah Lingk. V Kel. Pekan Tanjung Pura Kec. Tanjung Pura', '0', '0', '', 'Jl. T. Amir Hamzah Lingk. V Kel. Pekan Tanjung Pur', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0089704    ', 'Ya', '34UPIR20853005', '', 'M. Suheri', 1972, 'SMP / sederajat', 'Pedagang Kecil', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mariani', 1976, 'SMP / sederajat', 'Buruh', 'Kurang dari Rp. 500,000', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2994, '4791', 'siswa', 'Sri Agustina', 2, '0000258043', 'Tanjung Pura', '1999-08-25', '1205250819990008', 1, 'Tidak ada', 'JL. Jurung', '10', '10', '', 'Pekan tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '-                   ', 'Tidak', '', '', 'Abdul Sani', 1965, 'SMA / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Nursahrani', 1969, 'SMP / sederajat', 'Pedagang Kecil', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2993, '4880', 'siswa', 'Sopian', 1, '0002898050', 'P.Cengal', '2000-10-05', '1205051020000001', 1, 'Tidak ada', 'Bagan Udang', '0', '0', 'Bagan Udang', 'P.Cengal', 'Kec. Tanjung Pura', 0, '', '', '', '082162798465', 'jaki-jaki48@gmail.com', '', '', '', 'srilangkat-sofyan.JPG', 'Mahdan', 1958, 'SMP / sederajat', 'Wiraswasta', 'Rp. 5,000,000 - Rp. 20,000,000', 'Tidak Ada', '', 'Masitah', 1960, 'SD / sederajat', 'Tidak bekerja', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2992, '4841', 'siswa', 'Sonia Ramadhani Br. Ginting', 2, '0008525957', 'Tanjung Pura', '2000-01-01', '1205114101000019', 1, 'Tidak ada', 'Rantau Panjang', '0', '0', 'Teratai', 'Teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-no-image.jpg', 'Rusli Ginting', 1965, 'SMA / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Jumiati', 1971, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2991, '4684', 'siswa', 'SITI WARDANI', 2, '0007234445', 'Desa Baru', '2000-03-21', '1205210320000003', 1, 'Tidak ada', 'Jl. Satria Desa Baru Kec. Hinai', '0', '0', '', 'Desa Baru', 'Kec. Hinai', 0, '', '', '', '', '', 'DN - 07 DI 0088334  ', 'Tidak', '', '', 'Paimun', 1970, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sri Walina', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2990, '4879', 'siswa', 'Siti Nurhaliza Nasution', 2, '0009697863', 'Padang Tualang', '2000-05-05', '1205126307640001', 1, 'Tidak ada', 'Padang Tualang', '0', '0', 'I', 'Padang Tualang', 'Kec. Padang Tualang', 0, '', '', '', '08521190120', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-SITI NURHALIZA IPA 1.JPG', 'Ahmad Nasri Alm', 1976, 'SD / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Asbahar', 1977, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2988, '4801', 'siswa', 'Siti Latifah Savira', 2, '9992363037', 'Cilegon', '1999-11-17', '1205171119990011', 1, 'Tidak ada', 'Paya Plorida', '0', '0', 'Kampung Baru I', 'Lebak Gede', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '-                   ', 'Tidak', '', '', 'Sobirin', 1968, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Fitri Hanum', 1970, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2989, '4970', 'siswa', 'Siti Nurhaliza', 2, '0013292296', 'Padang Langkat', '2001-07-21', '1205136107010005', 1, 'Tidak ada', 'Pasar Barat', '0', '0', 'I PS Barat', 'Padang Langkat', 'Kec. Gebang', 0, '', '', '', '', '', '', '', '', 'srilangkat-siti nurhaliza.JPG', 'Sugianto', 1973, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Maidah', 1975, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2987, '5002', 'siswa', 'Siti Hawa', 2, '0009883882', 'Serapuh Asli', '2000-05-14', '1205112310070017', 1, 'Tidak ada', 'Pangkalan Berandan', '0', '0', 'I Pendidikan', 'Serapuh Asli', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-siti hawa.JPG', 'Hasan Basri', 1959, 'SD / sederajat', 'Wiraswasta', 'Kurang dari Rp. 500,000', 'Tidak Ada', '', 'Ernawati', 1965, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2986, '4840', 'siswa', 'Siti Fadilla', 2, '0009011584', 'Balai Gajah', '2000-10-05', '1205134510000007', 1, 'Tidak ada', 'Air Hitam', '0', '0', 'VII', 'Air Hitam', 'Kec. Gebang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '                    ', 'Ya', '34uw8320856005', '', 'Susanto', 1954, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Nuraini', 1961, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2985, '4790', 'siswa', 'Siti Aisyah', 2, '9985849428', 'Pekubuan', '1998-01-02', '1205020119980001', 1, 'Tidak ada', 'Dusun  VII Desa Pekubuan', '0', '0', 'Dusun  VII Desa Pekubuan', 'Desa Pekubuan', 'Kec. Tanjung Pura', 0, '', '', '', '082361534530', 'srilangkat_sma@ymail.com', 'DN-07 DI 0090347    ', 'Tidak', '', '', 'Ilyas', 1972, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sari Isah', 1978, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2984, '4917', 'siswa', 'Sinta Tri Buana', 2, '0007955091', 'Air Hitam', '2000-03-19', '1205135903000004', 1, 'Tidak ada', 'Perjuangan', '0', '0', 'VIII', 'Air  Hitam', 'Kec. Gebang', 0, '', '', '', '085359803510', 'sintatribuana@yahoo.com', '', '', '', 'srilangkat-SINTA TRIBUANA.JPG', 'Ramlan', 1965, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sulistiani', 1971, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2983, '4719', 'siswa', 'SINTA', 2, '9990123233', 'Air Hitam', '1999-07-07', '1205010719990007', 1, 'Tidak ada', 'Perjuangan', '0', '0', '', 'Air Hitam', 'Kec. Gebang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '10-057-036-5        ', 'Ya', '34UW9U20856002', '', 'Hariyanto', 1958, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Yunaningsih', 1965, 'SD / sederajat', 'Tidak bekerja', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2982, '4651', 'siswa', 'SINDI AULIA', 2, '9990433597', 'Tanjung Pura', '1999-07-14', '1205140719990006', 1, 'Tidak ada', 'Dusun Kenanga Desa Teluk Bakung Kec. Tanjung Pura', '0', '0', 'Dusun Kenanga', 'Desa Teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI  0015410   ', 'Tidak', '', '', 'Hamzah', 1954, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Maida Wati', 1958, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2981, '4969', 'siswa', 'Shindi Lestari', 2, '0000259197', 'Pulau Banyak', '2000-03-31', '1205110605100001', 1, 'Tidak ada', 'Pulau Banyak', '0', '0', 'Paluh Medan', 'Pulau Banyak', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-sindi lestari.JPG', 'Supianto', 1965, 'SMP / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Katmi', 1973, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2980, '4683', 'siswa', 'Sheilla Fazelina', 2, '0000271186', 'Pematang Serai', '2000-05-05', '1205050520000005', 1, 'Tidak ada', 'Dusun  V Pematang Serai Desa Pematang Serai', '0', '0', 'Dusun  V Pematang Serai', 'Desa Pematang Serai', 'Kec. Tanjung Pura', 0, '', '', '', '082273776849', '', '-                   ', 'Tidak', '', '', 'SUDIARNO', 1968, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'SURIANI', 1970, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2979, '4839', 'siswa', 'Sentiya Damayanti', 2, '9994462195', 'Pantai Cermin', '1999-10-04', '1205104410990001', 1, 'Tidak ada', 'Cempa', '0', '0', 'IX Balai', 'Cempa', 'Kec. Hinai', 0, '', '', '', '085206509807', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-SENTIYA DAMAYANTI.JPG', 'Sader', 1976, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Pariyatni', 1978, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2978, '4802', 'siswa', 'Selvi Amelia', 2, '9999998987', 'Pem. Tengah', '1999-09-04', '1205120497000006', 1, 'Tidak ada', 'Tanjung Pura', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07  DI 0016084   ', 'Tidak', '', '', 'Wanto', 1971, '', '', '', 'Tidak Ada', '', 'Wati', 1972, '', '', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2976, '4789', 'siswa', 'Sally Armayani', 2, '9990432027', 'Pekubuan', '1999-07-27', '1205270719990007', 1, 'Tidak ada', 'Tanjung Pura', '0', '0', '', 'Pekubuan', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI 0090344    ', 'Tidak', '', '', 'Suratman', 1973, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Fatimah', 1975, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2977, '4718', 'siswa', 'SARIATUN', 2, '9988803501', 'Sungai Ular', '1998-12-04', '1205041219990004', 1, 'Tidak ada', 'Desa Sungai Ular Kec. Secanggang', '0', '0', '', 'Desa Sungai Ular', 'Kec. Secanggang', 0, '', '', '', '085359811803', '', 'DN-07  DI 0018983   ', 'Tidak', '', '', 'Syahyan', 1973, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Saniah', 1978, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2975, '5001', 'siswa', 'SABARIAH', 2, '0009435194', 'TANJUNG PURA', '2000-06-19', '1205081906200006', 1, 'Tidak ada', 'JALAN BAMBU RUNCING', '0', '0', '', 'PEKAN TANJUNG PURA', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-no-image.jpg', 'HASANUDDIN', 1976, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'JUNIAR NINGSIH', 1974, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2974, '4937', 'siswa', 'Ryan Rafi Gandi', 1, '0017721572', 'Tanjung Pura', '2001-01-01', '1205080101001002', 1, 'Tidak ada', 'JL Sudirman', '0', '0', 'I', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '081269141736', '', '', '', '', 'srilangkat-rian rahfi.JPG', 'Sugimin', 1979, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Santi', 1978, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2973, '5009', 'siswa', 'Ruth Christiani', 2, '9985274451', 'Kabanjahe', '1998-05-26', '1206016605981001', 2, 'Tidak ada', 'Kampung Dalam gg Sederhana no 64 Kabanjahe', '0', '0', '-', 'Kampung Dalam', 'Kec. Kabanjahe', 0, '', '', '', '081362394302', '', 'DN - 07 DI 1589096  ', 'Tidak', '0', '', 'Saut Matondang Ambarita', 1964, 'SMA / sederajat', 'Pensiunan', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Jenni Hamida br Nadeak', 1963, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '', '', '-', 0, 'Lainnya', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2972, '4916', 'siswa', 'Rusmaini', 2, '0007954468', 'Simpang Limun', '2000-02-15', '1205150220000002', 1, 'Tidak ada', 'Padang Langkat', '0', '0', 'II', 'Padang Langkat', 'Kec. Gebang', 0, '', '', '', '081262957303', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-RUSMAINI XI IPS.JPG', 'Rusli', 1976, 'SD / sederajat', 'Petani', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Samini', 1979, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2971, '4760', 'siswa', 'Rudi hartoni Barus', 1, '9986465958', 'Jati Tunggal', '1998-10-21', '1205211019980010', 1, 'Tidak ada', 'Dusun Jati tunggal kec. Padang Tualang', '0', '0', '', 'Dusun Jati tunggal kec. Padang Tualang', 'Kec. Padang Tualang', 0, '', '', '', '', '', '-                   ', 'Tidak', '', '', 'Osen Imanuel Barus', 1972, 'SD / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Boinem', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2970, '4716', 'siswa', 'ROHAYA', 2, '9990123148', 'Gebang', '1999-01-08', '1205080119990001', 1, 'Tidak ada', 'Jl. Pringgan Desa Pasar Rawa Kec. Gebang', '0', '0', '', 'Desa Pasar Rawa', 'Kec. Gebang', 0, '', '', '', '085359761713', '', 'DN-07  DI 0090720   ', 'Tidak', 'PV19T8', '', 'Abdullah', 1966, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Salbiah', 1973, 'SD / sederajat', 'Sudah Meninggal', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2969, '4715', 'siswa', 'Rizky Zulia', 2, '9988671513', 'Gebang', '1998-07-25', '1205250719980007', 1, 'Tidak ada', 'Jl. Pringgan Desa Pasar Rawa Kec. Gebang', '0', '0', '', 'Desa Pasar Rawa', 'Kec. Gebang', 0, '', '', '', '', '', '-                   ', 'Ya', 'P5B2I7', '', 'Syaparuddin', 1957, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rubiah', 1960, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2968, '4838', 'siswa', 'Rizky Ardinata', 1, '0004212153', 'P.Serai', '2000-10-27', '1205111703000001', 1, 'Tidak ada', 'Tanjung Pura', '0', '0', 'IV', 'P.Serai', 'Kec. Tanjung Pura', 0, '', '', '', '085361714630', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-riski ardinata.JPG', 'Kasiran', 1972, 'S1', 'PNS/TNI/Polri', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sri Wanti', 1973, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2967, '4915', 'siswa', 'Rizki Ramadhan', 1, '9999108295', 'P.Brandan', '1999-12-06', '1205112112980003', 1, 'Tidak ada', 'P.Cengal Barat', '0', '0', 'I Mekar', 'P.cengal Barat', 'Kec. Tanjung Pura', 0, '', '', '', '085321143531', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-RIZKI RAMADHAN XI IPS.JPG', 'Mahmuzar', 1973, 'SD / sederajat', 'Nelayan', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Nuraini', 1975, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2966, '4759', 'siswa', 'Rizki Hadinovendra', 1, '9990431371', 'Tanjung Pura', '1999-11-17', '1205171119990011', 1, 'Tidak ada', 'Desa pekubuan Dusun VIII Kec. Tanjung Pura', '0', '0', '', 'Desa pekubuan Dusun VIII Kec. Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI  0090382   ', 'Tidak', '', '', 'Suwardi', 1971, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Misliana', 1976, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2965, '4682', 'siswa', 'RIZKA WULANDARI', 2, '9990123290', 'Dogang', '1999-05-09', '1205090519990005', 1, 'Tidak ada', 'Jl. Kuala gebang Desa Dogang Kec. Gebang', '0', '0', '', 'Desa Dogang', 'Kec. Gebang', 0, '', '', '', '087769943377', '', 'DN - 07 DI 0015379  ', 'Tidak', '', '', 'Muhammad Jamhari', 1974, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Risnawati', 1976, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2964, '4914', 'siswa', 'Rizka Novi Arisandi', 2, '0000258654', 'TANJUNG PURA', '2000-10-30', '1205117010000000', 1, 'Tidak ada', 'Sekata', '0', '0', 'VIII', 'Pekubuan', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-riska nopi arisandi.JPG', 'Suwardi', 1971, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Misliana', 1976, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2963, '4877', 'siswa', 'Riyan Sakti Batubara', 1, '0007270422', 'Paya Perupuk', '2000-11-02', '1205110211000006', 1, 'Tidak ada', 'Anggrek', '0', '0', 'III Anggrek', 'Paya Perupuk', 'Kec. Tanjung Pura', 0, '', '', '', '087867767762', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-RIAN SAKTI BATUBARA IPS.JPG', 'M.Tahir Batu Bara', 1957, 'SMA / sederajat', 'Pensiunan', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Anizar', 1967, 'SMA / sederajat', 'Wiraswasta', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2962, '4758', 'siswa', 'Rismalinda', 2, '9998417602', 'Sungai Ular', '1999-05-04', '1205040519990005', 1, 'Tidak ada', 'Jl. Kebun Kelapa Desa Sungai Ular Kec. Tanjung pura', '0', '0', '', 'Jl. Kebun Kelapa Desa Sungai Ular Kec. Tanjung pur', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '-                   ', 'Tidak', '', '', 'Haili', 1970, 'SMA / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Hj. Mardiana', 1974, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2960, '4714', 'siswa', 'RISKA INDA SARI', 2, '9990123344', 'Tanjung Pura', '1999-05-07', '1205070520000005', 1, 'Tidak ada', 'Simpang Kolam Luar', '0', '0', '', 'Pekan Gebang', 'Kec. Gebang', 0, '', '', '', '082277142880', '', 'DN - 07 - DI 0016331', 'Tidak', '', '', 'Suhardi', 1968, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Rina Yusnita', 1970, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2961, '4968', 'siswa', 'RISMA YANI', 2, '0017742618', 'Tanjung Pura', '2001-02-25', '1205116502010003', 1, 'Tidak ada', 'Desa Pekubuan, Tanjung Pura', '0', '0', 'VII', 'Pekubuan', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-rismayani.JPG', 'SUGIMAN', 1968, 'Putus SD', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'YATINEM', 1972, 'Putus SD', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2959, '4967', 'siswa', 'Rina Dwiyanti', 2, '0013742224', 'Besilam', '2001-09-29', '1205126909010011', 1, 'Tidak ada', 'Padang Tualang', '0', '0', '-', 'Besilam Babussalam', 'Kec. Padang Tualang', 0, '', '', '', '-', '', '', '', '', 'srilangkat-rina dwiyanti.JPG', 'Efendi', 1974, 'SMP / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Julia', 1976, 'SMP / sederajat', 'Tidak bekerja', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2957, '5000', 'siswa', 'Rika Putri', 2, '0012776613', 'Tanjung Pura', '2001-02-07', '0000000000000000', 1, 'Tidak ada', 'JALAN janjung pura', '0', '0', '', 'pekan tanjung pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-rika putri.JPG', 'idram', 1970, 'Putus SD', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Jainabun', 1977, 'Putus SD', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2958, '4939', 'siswa', 'Riki Ardiansyah', 1, '0011908857', 'Tanjung Pura', '2001-12-12', '1205081212001002', 1, 'Tidak ada', 'Jl Pemuda', '0', '0', 'I', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '081269141736', '', '', '', '', 'srilangkat-RIKI ARDIANSYAH.JPG', 'Arya', 1988, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Wati', 1989, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2956, '4837', 'siswa', 'Rika Ervina', 2, '0016905058', 'P.Brandan', '2001-02-02', '1205020220010003', 1, 'Tidak ada', 'Air Hitam', '0', '0', 'VIII', 'Air Hitam', 'Kec. Gebang', 0, '', '', '', '082304385683', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-RIKA ERVINA.JPG', 'Muksin', 1977, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sri Mulyani', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2955, '4876', 'siswa', 'Rianda', 1, '9982424067', 'Simpang Kolam Dalam', '1998-12-17', '1205171219980002', 1, 'Tidak ada', 'Simpang Kolam Dalam', '0', '0', '', 'Simpang Kolam Dalam', 'Kec. Gebang', 0, '', '', '', '085260136475', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-RIANDA XI IPS.JPG', 'Alm.Ruslan', 1973, 'SD / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Alm.Rohani', 1973, 'SMP / sederajat', 'Sudah Meninggal', '', '', '', 'Dahlia', 1973, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2954, '4835', 'siswa', 'Ria Apriani', 2, '0007234288', 'Tg.Muda', '2000-04-06', '1205104604000005', 1, 'Tidak ada', 'Tanjung Beringin', '0', '0', 'III', 'Tg.Mulia', 'Kec. Hinai', 0, '', '', '', '085261652253', 'riaapriani2000@gmail.com', '', '', '', 'srilangkat-ria apriani.JPG', 'Abdul Kadir', 1964, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Kartini', 1968, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2953, '4680', 'siswa', 'REVI WARISMA', 2, '9990128321', 'PEM.SERAI', '1999-05-14', '1205140519990005', 1, 'Tidak ada', 'Jl.P.Serai', '0', '0', 'I', 'Pematang Serai', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '-                   ', 'Ya', 'PXUAY8', '', 'Parlan', 1958, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sutinem', 1968, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2952, '4834', 'siswa', 'Retno patimah suri', 2, '9999744755', 'Air Hitam', '1999-12-02', '1205021219990003', 1, 'Tidak ada', 'Simpang Balai Gajah', '0', '0', 'VII', 'Air Hitam', 'Kec. Gebang', 0, '', '', '', '081397831949', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-retno fatimah suri.JPG', 'Gusnawanto', 1973, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Susi Herawati', 1976, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2951, '4912', 'siswa', 'Reski Emilia Rani', 2, '9988835786', 'Selayang Pulo', '1998-12-30', '1205177012980005', 1, 'Tidak ada', 'Blok Malang', '0', '0', 'IV', 'Telaga Said', 'Kec. Sei Lepan', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-REZKY AMELIA IPA 1.JPG', 'Suraini', 1972, 'SMA / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sri Utami', 1973, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2950, '4875', 'siswa', 'Reni Rezeki', 2, '9994568931', 'Pantai Cermin', '1999-11-21', '1205211119990002', 1, 'Tidak ada', 'P.Cermin', '0', '0', 'II', 'Serapuh Asli', 'Kec. Gebang', 0, '', '', '', '082364656176', 'renirezeki@ymail.com', '', '', '', 'srilangkat-RENI REZEKI.JPG', 'Bahtiar', 1972, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Siti Fatimah', 1981, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2949, '4933', 'siswa', 'Reni Pratiwi', 2, '9985876814', 'Tanjung pura', '1998-04-26', '1205260498000002', 1, 'Tidak ada', 'P.Serai', '0', '0', 'I', 'P.Serai', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-RENY PRATIWI.JPG', 'Sukisno', 1967, 'SMP / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sularsi', 1976, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2948, '4757', 'siswa', 'RENI DAMAYANTI', 2, '9990431014', 'Selayang', '1999-03-07', '1205070319990003', 1, 'Tidak ada', 'Jl. Terusan Desa Lalang Kec. Tanjung Pura', '0', '0', '', 'Jl. Terusan Desa Lalang Kec. Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07  DI 0089868   ', 'Ya', '34UPWI20853005', '', 'SARING', 1963, 'SMP / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Maintriatni', 1964, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2947, '4999', 'siswa', 'Rendi Syah Putra', 1, '0012776851', 'Tanjung Pura', '2001-11-05', '1205110511010001', 1, 'Tidak ada', 'Karantina', '0', '0', 'I Karantina', 'Pekubuan', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-no-image.jpg', 'Tumiran', 1967, 'SD / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Hermini alm', 1974, 'SD / sederajat', 'Sudah Meninggal', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2946, '4998', 'siswa', 'RENATHA OCTAVIA BR HALOHO', 2, '0012775472', 'Tanjung Pura', '2001-10-20', '1205116010010003', 2, 'Tidak ada', 'Bambu Runcing No. 18', '11', '11', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-renata oktavia.JPG', 'Prama Ganda Haloho', 1973, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'RIANA RISMA DEWI BR SARAGIH', 1975, 'SMA / sederajat', 'Wiraswasta', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2945, '4832', 'siswa', 'Refi Rosanti', 2, '0009717265', 'Tanjung Pura', '2000-09-27', '1205116709000002', 1, 'Tidak ada', 'Pemuda I', '0', '0', 'VII', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '081973411278', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-refi rosinta.JPG', 'Ahmad', 1965, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Kamaliah', 1979, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2944, '4756', 'siswa', 'Rayhan', 2, '9990433765', 'Tanjung Pura', '1999-04-19', '1205190419990004', 1, 'Tidak ada', 'Jl. Jurung Benteng Kel. Pekan Tanjung Pura Kec. Tanjung Pura', '0', '0', '', 'Jl. Jurung Benteng Kel. Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0090341    ', 'Ya', '34UPM120853004', '', 'Zulman', 1966, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Fatmah', 1971, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2943, '4911', 'siswa', 'Raudatun Azahra', 2, '9990433770', 'Desa lalang', '1999-10-10', '1205115709900002', 1, 'Tidak ada', 'Terusan', '0', '0', '3', 'Lalang', 'Kec. Tanjung Pura', 0, '', '', '', '087769181975', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-raudatun azzahra.JPG', 'Syaiful Asri', 1965, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Ummi Ani Ms', 1969, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2942, '4755', 'siswa', 'Raudatul Zannah', 2, '9996465971', 'Teluk Bakung', '1999-06-01', '1205010719990007', 1, 'Tidak ada', 'Desa Teluk Bakung Kec. Tanjung Pura', '0', '0', '', 'Desa Teluk Bakung Kec. Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '-                   ', 'Tidak', '', '', 'Syamsuar', 1971, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Nuraihan', 1974, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2941, '4831', 'siswa', 'Ramadhani', 2, '0006527739', 'P.Cermin', '2000-12-16', '1205115612000001', 1, 'Tidak ada', 'P.Cermin', '0', '0', 'Ampera', 'P.cermin', 'Kec. Tanjung Pura', 0, '', '', '', '082273180148', 'rahma.gazawa@gmail.com', '', '', '', 'srilangkat-no-image.jpg', 'Susanto', 1972, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Jamilah', 1963, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1);
INSERT INTO `rb_siswa` (`id_siswa`, `nipd`, `password`, `nama`, `id_jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `id_agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `foto`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `kebutuhan_khusus_ayah`, `no_telpon_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `kebutuhan_khusus_ibu`, `no_telpon_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `status_awal`, `status_siswa`, `tingkat`, `kode_kelas`, `kode_jurusan`, `id_sesi`) VALUES
(2940, '4997', 'siswa', 'RAMADHAN SAPUTRA', 1, '0013159288', 'BUKIT PAYUNG', '2001-12-05', '1205120512010003', 1, 'Tidak ada', 'kwala besilam', '0', '0', 'dua', 'kwala besilam', 'Kec. Padang Tualang', 0, '', '', '', '081375295831', '', '', '', '', 'srilangkat-no-image.jpg', 'selamat', 1969, 'SMA / sederajat', 'PNS/TNI/Polri', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'JUMIYEM', 1973, 'Putus SD', 'Tidak bekerja', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2939, '4830', 'siswa', 'Raju Marbun', 1, '0007954501', 'Air Tawar', '2000-05-23', '1205132205000001', 1, 'Tidak ada', 'Padang Langkat', '0', '0', 'I Simpang', 'Padang  Langkat', 'Kec. Gebang', 0, '', '', '', '082277432384', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-raju marbun.JPG', 'Manogu Marbun', 1959, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Linda Br Pardede', 1962, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2938, '4874', 'siswa', 'Rahmat Syahri', 1, '0000258755', 'P.Tengah', '2000-06-10', '1205111006000008', 1, 'Tidak ada', 'P.Tengah', '0', '0', 'Kesuma', 'P.Tengah', 'Kec. Tanjung Pura', 0, '', '', '', '081262070505', 'rahmatsyahri@rocketmail.com', '', '', '', 'srilangkat-rahmat syahri.JPG', 'Ruslan Firmansyah', 1966, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Dahliana', 1968, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2937, '4910', 'siswa', 'Rahmad Dian Nugraha', 1, '0008897512', 'Serapuh Asli', '2000-02-16', '1271131602000003', 1, 'Tidak ada', 'Serapuh Asli', '0', '0', 'I', 'Pekubuan', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-rahmad dian nugraha.JPG', 'Yudimars', 1970, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Kamalia', 1975, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2936, '4712', 'siswa', 'Rahayu Dwi Putri', 2, '9990433243', 'Tanjung Pura', '1999-05-06', '1205060519990005', 1, 'Tidak ada', 'JL.Terusan', '0', '0', '', 'Suka Maju', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '1-14-07-10-025-094-3', 'Tidak', '', '', 'Ilhamuddin', 1970, 'SMA / sederajat', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Ratna Sari Dewi Siregar', 1970, 'SMA / sederajat', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2935, '4873', 'siswa', 'Rafika Ramadani', 2, '0007955161', 'Air Hitam', '2000-04-05', '1205134504000002', 1, 'Tidak ada', 'Pangkalan Brandan', '0', '0', 'III Mendilingan', 'Pasiran', 'Kec. Gebang', 0, '', '', '', '085361279529', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-RAFIKA RAMADHANI.JPG', 'Sairan Harahap', 1966, 'SMP / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Murniati', 1967, 'SMA / sederajat', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2934, '4829', 'siswa', 'Rabbiatun Raddawiyah', 2, '0008785470', 'Desa Dogang', '2000-03-08', '1205134803000003', 1, 'Tidak ada', 'Desa Dogang', '0', '0', 'II Tambang', 'Dogang', 'Kec. Gebang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-no-image.jpg', 'M.Yusuf', 1967, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Siti Zahara', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2933, '4909', 'siswa', 'Putri Rahayu', 2, '9996682667', 'Tanjung Pura', '1999-12-26', '1205112408070113', 1, 'Tidak ada', 'Jurung', '0', '0', 'X', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '082304234653', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-putri rahayu.JPG', 'Muhammad Raya', 1971, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Nurlela', 1976, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2932, '4711', 'siswa', 'Putri Padila', 2, '9990122703', 'Dogang', '1999-09-28', '1205280919990009', 1, 'Tidak ada', 'Merdeka', '0', '0', 'IV', 'Dogang', 'Kec. Gebang', 0, '', '', '', '', '', 'DN-07  DI 0090719   ', 'Ya', 'PX8EXO', '', 'Sariadi', 1961, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Salmala', 1963, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2931, '4996', 'siswa', 'PUTRI INTAN', 2, '0012774564', 'TELUK BAKUNG', '2001-01-14', '1205115401010001', 1, 'Tidak ada', 'RANTAU PANJANG', '0', '0', 'MELATI', 'TELUK BAKUNG', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-no-image.jpg', 'MUHAMMAD SYAFII', 1968, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'LATIFAH', 1970, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2930, '4679', 'siswa', 'Putri Indriyani', 2, '9998473097', 'Cempa', '1999-07-25', '1205250719990007', 1, 'Tidak ada', 'Lkt Estate Dusun VI', '1', '1', '', 'Desa Cempa', 'Kec. Hinai', 0, '', '', '', '0878671419802', '', 'DN-07 DI 0089761    ', 'Tidak', '', '', 'Amri', 1972, 'SMP / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Widya', 1975, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2929, '4966', 'siswa', 'POPI AYUNDA', 2, '0019578545', 'Tg. Selamat', '2001-03-20', '1205116003010001', 1, 'Tidak ada', 'Jl. Tapak Kuda', '0', '0', 'Dusun II', 'Bubun', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-no-image.jpg', 'Ismail', 1974, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'YAYUK HARTATI', 1978, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2927, '4964', 'siswa', 'Nurul Zahra', 2, '0012752466', 'Stabat', '2001-08-08', '1205074811010005', 1, 'Tidak ada', 'Pemuda', '0', '0', 'VII', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-nurul zahra.JPG', 'M.Najib', 1963, 'SMP / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Fatimah', 1965, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2928, '4965', 'siswa', 'Osamma Putra Panjaitan', 1, '0013274639', 'Tanjung Balai', '2001-06-19', '1274011906010003', 1, 'Tidak ada', 'Jl. Burhanuddin Lk. IV', '0', '0', '', 'Perjuangan', 'Kec. Teluk Nibung', 0, '', '', '', '085262888007', '', '', '', '', 'srilangkat-osama putra p.JPG', 'Khirul Panjaitan', 1971, 'SMA / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Siti Rahma', 1973, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2926, '4787', 'siswa', 'NURUL FADILAH', 2, '9998417606', 'Sungai Ular', '1999-05-24', '1205240519990005', 1, 'Tidak ada', 'Secanggang', '0', '0', '', 'Sungai Ular', 'Kec. Secanggang', 0, '', '', '', '', '', '10-220-030-3        ', 'Tidak', '', '', 'Saidul Bahri', 1965, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Khadijah', 1965, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2925, '4963', 'siswa', 'Nurul April Yana', 2, '0007953044', 'Kebun Kacang', '2000-04-11', '1205125104000002', 1, 'Tidak ada', 'Besilam', '0', '0', 'II', 'Kebun Kacang', 'Kec. Padang Tualang', 0, '', '', '', '', '', '', '', '', 'srilangkat-nurul afriliana.JPG', 'Maimun', 1956, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rusmiati', 1961, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2924, '4908', 'siswa', 'Nursera', 2, '9990128291', 'Pekubuan', '1999-06-30', '1205117006990008', 1, 'Tidak ada', 'Paluh Nipah', '0', '0', '2', 'P.Cengal', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-NURSERA.JPG', 'Bahrum', 1977, 'SD / sederajat', 'Nelayan', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Risnawati', 1979, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2923, '4676', 'siswa', 'Nurmawaddah Andriani', 2, '9990123325', 'Air Hitam', '1999-12-24', '1205241219990012', 1, 'Tidak ada', 'Jl. Pahlawan Desa Air Hitam Kec. Gebang', '0', '0', '', 'Desa Air Hitam', 'Kec. Gebang', 0, '', '', '', '087748992976', '', 'DN-07 DI 0016244    ', 'Ya', '34UWQ520856005', '', 'Andrianto', 1973, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Nuraida', 1977, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2922, '4827', 'siswa', 'Nurma Yunita', 2, '0009355065', 'Air Hitam', '2000-01-03', '020213.141095.00', 1, 'Tidak ada', 'AIir Hitam', '0', '0', 'X', 'AIir Hitam', 'Kec. Gebang', 0, '', '', '', '081263252626', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-nurma yunita.JPG', 'Syahrudi', 1968, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Erna Wati', 1975, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2921, '4675', 'siswa', 'NURLIZA ARMAYANI', 2, '0007270973', 'Paya Perupuk', '2000-03-29', '1205290320000003', 1, 'Tidak ada', 'Jl. P. Brandan Desa Paya Perupuk Kec. Tanjung Pura', '0', '0', '', 'Desa Paya Perupuk', 'Kec. Tanjung Pura', 0, '', '', '', '087794247660', '', 'DN-07  DI 0016031   ', 'Ya', 'PBJVJL', '', 'Edi Arman', 1980, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Susiani', 1982, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2920, '4710', 'siswa', 'NURLAILA', 2, '0008267872', 'Tanjung Pura', '2000-10-24', '1205241220000010', 1, 'Tidak ada', 'Jl. Bambu Runcing No. 72 Kel. Pekan Tanjung Pura Kec. Tanjung Pura', '0', '0', '', 'Kel. Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07  DI 0015883   ', 'Ya', 'PSTQ9F', '', 'Darmadi', 1969, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Radiatun Sakdiah', 1963, 'SMA / sederajat', 'Pedagang Kecil', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2919, '4674', 'siswa', 'Nurkhalifa', 2, '9998417624', 'Sungai Ular', '1999-11-17', '1205171119990005', 1, 'Tidak ada', 'Desa Sungai Ular Kec. Secanggang', '0', '0', '', 'Desa Sungai Ular', 'Kec. Secanggang', 0, '', '', '', '081361786208', '', 'DN-07 DI  0018948   ', 'Tidak', '', '', 'Mahdar', 1967, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Sumiati', 1975, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2918, '4673', 'siswa', 'NURHASANAH', 2, '9990127708', 'SEI MATI', '1999-11-21', '1205211119990009', 1, 'Tidak ada', 'Jl. Sei Mati Desa Alur Gadung Kec. Sawit Seberang', '0', '0', '', 'Desa Alur Gadung', 'Kec. Sawit Seberang', 0, '', '', '', '', '', 'DN-07  DI 0019942   ', 'Ya', 'PB9HGS', '', 'UJANG', 1975, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Winiarti', 1976, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2917, '4826', 'siswa', 'Nurhaliza', 2, '0006761562', 'Pekubuan', '2000-08-25', '1205250820000003', 1, 'Tidak ada', 'Baja Kuning', '0', '0', 'II', 'Baja Kuning', 'Kec. Tanjung Pura', 0, '', '', '', '085763152248', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-NURHALIZA.JPG', 'Suherman', 1970, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Iuraida', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2916, '4995', 'siswa', 'Nurhalimah Br Sinaga', 2, '0012776625', 'Tanjung Pura', '2001-09-14', '1205115409010001', 1, 'Tidak ada', 'Jurung', '0', '0', 'X', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-no-image.jpg', 'M.Arifin Sinaga', 1965, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Megawati Siregar', 1969, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2914, '4754', 'siswa', 'Nur Indahyani', 2, '9993053101', 'Cempa', '1999-11-01', '1205110119990001', 1, 'Tidak ada', 'Jl. Simpang Ladang Desa Cempa Kec. Hinai', '0', '0', '', 'Jl. Simpang Ladang Desa Cempa Kec. Hinai', 'Kec. Hinai', 0, '', '', '', '', '', 'DN-07 DI 0016838    ', 'Tidak', '', '', 'Rusman', 1970, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Maisah', 1972, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2915, '4907', 'siswa', 'Nur Ramadhani Nst', 2, '0007143044', 'Tanjung Pura', '2000-12-10', '1205115012000007', 1, 'Tidak ada', 'Teluk Bakung', '0', '0', 'dahlia', 'Teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-nur ramadhani.JPG', 'Feri Nasution', 1969, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Afrida Wati', 1970, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2913, '4825', 'siswa', 'Nur Hadijah', 2, '9994881515', 'Batu Melenggang', '1999-10-09', '1205102212680002', 1, 'Tidak ada', 'Bate Melenggang', '0', '0', 'VIII', 'Batu Melenggang', 'Kec. Hinai', 0, '', '', '', '085297698536', 'srilangkat_sma@ymail.co', '', '', '', 'srilangkat-NURHADIJAH.JPG', 'Hermanto', 1972, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Jamilah', 1973, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2911, '4962', 'siswa', 'NUR APRILIA GINTING', 2, '0010605604', 'TANJUNG PURA', '2001-04-28', '1205082804010005', 1, 'Tidak ada', 'JALAN BUKIT HARAPAN', '0', '0', 'BUKIT HARAPAN', 'PAYA BENGKUANG', 'Kec. Gebang', 0, '', '', '', '', '', '', '', '', 'srilangkat-no-image.jpg', 'ANTO GINTING', 0, 'SMP / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'SITI RAHMAWATI MANURUNG', 0, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2912, '4672', 'siswa', 'Nur Elsa Dewi Br. Sitepu', 2, '0007970873', 'Pancuran', '2000-03-07', '1205270320000005', 1, 'Tidak ada', 'Desa Buluh Telang Dusun Pancuran Kec. Padang Tualang', '0', '0', '', 'Desa Buluh Telang', 'Kec. Padang Tualang', 0, '', '', '', '085262257931', '', '-                   ', 'Tidak', '', '', 'Suharto Sitepu', 1969, 'SD / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Tina Ria Br Tarigan', 1973, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2910, '4906', 'siswa', 'Novita Dewi', 2, '0009524454', 'Paluh Manis', '2000-10-10', '1205135010000007', 1, 'Tidak ada', 'Perjuangan', '0', '0', 'VI', 'Paluh Manis', 'Kec. Gebang', 0, '', '', '', '085360527188', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-NOVITA DEWI IPA 1.JPG', 'Irwansyah', 1973, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Nurbaiti', 1976, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2909, '4961', 'siswa', 'Novita Cuan Lius', 2, '0007273903', 'Tanjung Pura', '2000-11-19', '1205115811000003', 0, 'Tidak ada', 'jalan sebarau', '9', '9', '', 'pekan tanjung pura', 'Kec. Tanjung Pura', 0, '', '', '', '085297103826', '', '', '', '', 'srilangkat-novita cuan lius.JPG', 'efendi', 1956, 'SMP / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Suri', 1963, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2908, '4753', 'siswa', 'Novika Ariani', 2, '9988671618', 'Air Hitam', '1998-07-08', '1205070819980008', 1, 'Tidak ada', 'Jl. Perjuangan Desa Air Hitam Kec. Gebang', '0', '0', '', 'Jl. Perjuangan Desa Air Hitam Kec. Gebang', 'Kec. Gebang', 0, '', '', '', '', '', 'DN-07 DI 0016209    ', 'Ya', 'P5C18R', '', 'Edwar Effendi', 1969, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Syapiah', 1975, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2907, '4994', 'siswa', 'NOVIA', 2, '0008127156', 'TANJUNG PURA', '2000-02-22', '0202066202010002', 1, 'Tidak ada', 'BENTENG SEPAKAT', '0', '0', '', 'PEKUBUAN', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-no-image.jpg', 'KHAIDIR', 1972, 'SD / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'SITI HAWA', 1984, 'Putus SD', 'Lainnya', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2906, '4671', 'siswa', 'Nila Kusnayanti', 2, '9980473317', 'Baja Kuning', '1998-06-19', '1205190619980002', 1, 'Tidak ada', 'JL. P. Banyak  Desa Baja Kuning Kec. Tanjung Pura', '0', '0', '', 'Desa Baja Kuning', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI  0090243   ', 'Tidak', '', '', 'Azwari', 1969, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rosmawati', 1975, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2904, '4960', 'siswa', 'Neha Febiana', 2, '0004995014', 'Sei  Rotan', '2000-09-05', '1472044509000003', 1, 'Tidak ada', 'Dusun II Jawa', '0', '0', 'Dusun II Jawa', 'Besilam', 'Kec. Padang Tualang', 0, '', '', '', '', '', '', '', '', 'srilangkat-neha febiana.JPG', 'Darwin Efendi', 1978, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Lenny  S', 1981, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2905, '4904', 'siswa', 'Neri Puspita Diana', 2, '0003209837', 'P.Serai', '2000-08-15', '1205110409070483', 1, 'Tidak ada', 'P.Serai', '0', '0', 'VII', 'P.Serai', 'Kec. Tanjung Pura', 0, '', '', '', '085262203915', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-NERI PUSPITA DIANA.JPG', 'Rusdian', 1973, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mahdalena', 1974, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2903, '4903', 'siswa', 'Nasrul Hafiz', 1, '9999625697', 'Gebang', '1999-11-03', '1205132511970002', 1, 'Tidak ada', 'Peringgan', '0', '0', 'VII', 'Pekan Gebang', 'Kec. Gebang', 0, '', '', '', '082272921455', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-nasrul hafiz.JPG', 'Bolian Akhyar', 1955, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Syamsiah', 1961, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2902, '4709', 'siswa', 'Nanda Syahputra', 1, '9990129199', 'Gebang', '1999-05-15', '1205150519990002', 1, 'Tidak ada', 'Jl. Sudirman Desa P. Gebang Kec. Gebang', '0', '0', '', 'P. Gebang', 'Kec. Gebang', 0, '', '', '', '', '', 'DN-07 DI 0016320    ', 'Ya', 'PS2LN2', '', 'Darwianto', 1969, 'SMA / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sapnah', 1977, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2901, '4993', 'siswa', 'NANANG AFRIADI', 1, '0007971361', 'DSN II KEBUN KACANG', '2000-04-28', '1205121704000006', 1, 'Tidak ada', 'KB. KACANG', '0', '0', '2 KB.KACANG', 'KB. KACANG', 'Kec. Padang Tualang', 0, '', '', '', '', '', '', '', '', 'srilangkat-nanang apriyadi.JPG', 'EDI AHMAD', 1967, 'SD / sederajat', 'Wirausaha', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'SITI SALAMIAH', 1975, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2900, '4786', 'siswa', 'Nadila Fitriani', 2, '0000270868', 'Tanjung Pura', '2000-01-11', '1205110120000002', 1, 'Tidak ada', 'Langkat', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI 0090244    ', 'Ya', '34upeb20853001', '', 'M.Amin', 1973, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Nurmala Sinta Wati Sembiring', 1973, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2899, '4992', 'siswa', 'Nadia Juliana', 2, '0007271637', 'Tanjung Pura', '2001-07-31', '1205083107010007', 1, 'Tidak ada', 'T.Amir Hamzaht', '0', '0', 'VItt', 'Pekan Tanjung Purat', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-nadia juliana.JPG', 'Subandi', 1966, 'SMA / sederajat', 'Buruh', 'Kurang dari Rp. 500,000', 'Tidak Ada', '', 'Tina Darmayanti S', 1968, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2897, '4707', 'siswa', 'Mutia Liza', 2, '9992301897', 'Gebang', '1999-10-09', '1205091019990002', 1, 'Tidak ada', 'Pasar 3 Tanjung Beringin', '0', '0', '', 'Muka Paya', 'Kec. Hinai', 0, '', '', '', '', '', 'DN-07 DI  0087972   ', 'Tidak', '', '', 'Azhar', 1965, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Syamsiah', 1973, 'SMP / sederajat', 'Pedagang Kecil', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2898, '4708', 'siswa', 'MUTIARA SAFITRI', 2, '9981610715', 'Wonosobo', '1998-01-31', '1205310119980002', 1, 'Tidak ada', 'Buluh Telang', '0', '0', '', 'Buluh Telang', 'Kec. Padang Tualang', 0, '', '', '', '', '', '-                   ', 'Tidak', '', '', 'Mualim', 1975, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Kartinah', 1960, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2896, '4670', 'siswa', 'Mutia Audina', 2, '9990433579', 'Tanjung Pura', '1999-08-28', '1205082808990003', 1, 'Tidak ada', 'Dusun Kenanga Desa teluk Bakung Kec. Tanjung Pura', '0', '0', 'Dusun Kenanga', 'Desa teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI  0015559   ', 'Tidak', '', '', 'Muhid Buddin', 1973, 'SMP / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sri Furyanti', 1977, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2895, '4751', 'siswa', 'Mukhlis Aulia', 1, '9990122855', 'Dogang', '1999-11-17', '1205081711990003', 1, 'Tidak ada', 'Dusun IV Desa Dogang Kec. Gebang', '0', '0', 'Dusun IV Desa Dogang Kec. Gebang', 'Dusun IV Desa Dogang Kec. Gebang', 'Kec. Gebang', 0, '', '', '', '', '', 'DN-07 DI 0090713    ', 'Ya', '34UYH220856005', '', 'Suriadi', 1966, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Elfina', 1976, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2894, '4869', 'siswa', 'Muhammad Zaky Yanda', 1, '0014248854', 'Stabat', '2001-03-12', '1205120320010007', 1, 'Tidak ada', 'Kebun Raja', '0', '0', 'II', 'Cempa', 'Kec. Hinai', 0, '', '', '', '085763196447', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-M. Zacky.JPG', 'M.Rizal', 1975, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Kamaliah Br Tobing', 1975, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2893, '4935', 'siswa', 'Muhammad Rizky', 1, '0007214330', 'Pematang Cengal', '2000-09-22', '1205110412640001', 1, 'Tidak ada', 'Pematang Cengal Barat', '0', '0', 'II', 'Pematang Cengal Barat', 'Kec. Tanjung Pura', 0, '', '', '', '081270827432', 'sma_srilangkat@ymail.com', '', '', '', 'srilangkat-MUHAMMAD RISKI IPA 1.JPG', 'Fahruddin', 1964, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Hasmah', 1965, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2892, '4783', 'siswa', 'Muhammad Rinaldi', 1, '9995280237', 'Kwala Serapuh', '1999-10-10', '1205101019990003', 1, 'Tidak ada', 'Jl. Jurung Desa Kwala Serapuh Kec. Tanjung Pura', '0', '0', '', 'Desa Kwala Serapuh', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI 0090337    ', 'Tidak', '', '', 'Hanelyansyah', 1965, 'SD / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Asnawati', 1968, 'SD / sederajat', 'Petani', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2891, '4867', 'siswa', 'Muhammad Riki Agustin', 1, '0006769487', 'Sanggalima', '2000-08-28', '1205280820000005', 1, 'Tidak ada', 'Sanggalima', '0', '0', 'I', 'Sanggalima', 'Kec. Gebang', 0, '', '', '', '082304598345', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-m. riki agustin.JPG', 'Suherman', 1972, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Murni', 1973, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2890, '4990', 'siswa', 'Muhammad Ridwan', 1, '0015318084', 'Bukit Payung', '2001-10-20', '1205122010010001', 1, 'Tidak ada', 'Kwala Pesilam', '0', '0', 'Bukit Payung', 'Kwala Pesilam', 'Kec. Padang Tualang', 0, '', '', '', '', '', '', '', '', 'srilangkat-no-image.jpg', 'Misdi', 1975, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Tumiyem', 1980, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2889, '4824', 'siswa', 'Muhammad Rezaldi', 1, '9994748692', 'Teluk Bakung', '1999-03-07', '1205110703990000', 1, 'Tidak ada', 'P.Banyak', '0', '0', 'I Dahlia', 'Teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '082366616531', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-no-image.jpg', 'Zulkifli', 1970, 'SMP / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Nurhayati', 1967, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2888, '4706', 'siswa', 'Muhammad Irvan', 1, '9983974590', 'Belawan', '1998-08-14', '1205140819980007', 1, 'Tidak ada', 'Paya Katep', '0', '0', 'Dusun X', 'Pekubuan', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI 0089833    ', 'Ya', '355dcn20411001', '', 'Ramlan', 1973, 'SD / sederajat', 'Nelayan', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Muriani', 1979, 'SMP / sederajat', 'Pedagang Kecil', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2887, '4750', 'siswa', 'Muhammad Indra Syahbana Lubis', 1, '9990434386', 'Serapuh Asli', '1999-07-27', '1205270719990007', 1, 'Tidak ada', 'Jl. P. Brandan Desa Serapuh Asli Kec. Tanjung Pura', '0', '0', '', 'Jl. P. Brandan Desa Serapuh Asli Kec. Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '-                   ', 'Tidak', '', '', 'Syafril Afendi Lubis', 1969, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Isna Wati', 1978, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2886, '4902', 'siswa', 'Muhammad Hasbi', 1, '9998684072', 'Padang Tualang', '1999-08-06', '1205120608990002', 1, 'Tidak ada', 'Padang Tualang', '0', '0', '', 'Padang Tualang', 'Kec. Padang Tualang', 0, '', '', '', '085296365573', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-m hasbi.JPG', 'Rusli Effendi', 1971, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Yati Sumarti', 1975, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2885, '4785', 'siswa', 'MUHAMMAD HABIBI', 1, '9990433854', 'TG.PURA', '1998-06-05', '1205050619980006', 1, 'Tidak ada', 'Jl.Pemuda', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '081269141736', '', 'DN - 07 DI 0089879  ', 'Tidak', '', '', 'EDI SYAHRIJAL', 1971, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Ratna', 1965, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2884, '4959', 'siswa', 'MUHAMMAD ANGGARA', 1, '0007953125', 'Padang Tualang', '2000-12-25', '1205122512001211', 1, 'Tidak ada', 'Padang Tualang', '0', '0', '', 'Padang Tualang', 'Kec. Padang Tualang', 0, '', '', '', '', '', '', '', '', 'srilangkat-m anggara.jpg', 'Zulamri', 1972, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'ANITA', 1976, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2883, '4958', 'siswa', 'Muhammad Alfa Rabi', 1, '0012774569', 'Teluk Bakung', '2001-03-31', '1205113003010004', 1, 'Tidak ada', 'Pulau Banyak', '0', '0', 'Dahlia', 'Teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-m. alfarabi.JPG', 'Hamdan', 1964, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Syarifah', 1968, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2882, '4668', 'siswa', 'Mita Aulia', 2, '9998433768', 'Cempa', '1999-09-04', '1205040919990003', 1, 'Tidak ada', 'Jl. Simpang Ladang Desa Cempa Kec. Hinai', '0', '0', '', 'Desa Cempa', 'Kec. Hinai', 0, '', '', '', '', '', '-                   ', 'Ya', '34UF9P20852006', '', 'Salmin', 1955, 'SD / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Siti Rafeah', 1963, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', ',', 1),
(2881, '4957', 'siswa', 'Mita Afdilla', 2, '0012775424', 'Kerinci', '2001-01-02', '1205114201010008', 1, 'Tidak ada', 'Bambu Runcing No.74', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-mita afdilla.JPG', 'Mashuri Engky Sustra', 1975, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Darliana', 1977, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2880, '4865', 'siswa', 'Mila Puspita', 2, '0007954436', 'Dogang', '2000-09-06', '1205060920000003', 1, 'Tidak ada', 'Dogang', '0', '0', 'III Tengah', 'Dogang', 'Kec. Gebang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-MILA PUSPITA.JPG', 'Lasiman', 1973, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'SALMIAH', 1974, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2879, '4748', 'siswa', 'Mhd. Ridhaufan', 1, '9980472899', 'Tanjung Pura', '1998-04-22', '1205220419980001', 1, 'Tidak ada', 'JL.Jurung', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI 0090355    ', 'Ya', '34UPOY20853000', '', 'Mazlan', 1969, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Nelly Arfida', 1971, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2878, '4747', 'siswa', 'Mhd. Muammar', 1, '9996381578', 'Tg. Pura', '1999-11-24', '1205110419990004', 1, 'Tidak ada', 'Jl. Khairil Anwar Kel. Pekan Tanjung Pura Kec. Tanjung Pura', '0', '0', '', 'Jl. Khairil Anwar Kel. Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI  0016810   ', 'Ya', 'PFZ64F', '', 'Imran', 1966, 'SMA / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Khairul Asiah', 1972, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2877, '4956', 'siswa', 'Melva Elpriza', 2, '0012777496', 'Teluk Bakung', '2001-10-26', '1205116610010002', 1, 'Tidak ada', 'Pulau Banyak', '0', '0', 'I', 'Teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-no-image.jpg', 'Nanag Aswin', 1979, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mawarni', 1981, 'S1', 'Karyawan Swasta', 'Kurang dari Rp. 500,000', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2876, '4667', 'siswa', 'MELLA MAYOLY', 2, '9990127909', 'DARAT HULU', '1999-08-19', '1205190819990005', 1, 'Tidak ada', 'Jl. Darat Hulu Desa Telaga Said Kec. Sei Lepan', '0', '0', '', 'Desa Telaga Said', 'Kec. Sei Lepan', 0, '', '', '', '', '', 'DN-07  DI 0019938   ', 'Tidak', '', '', 'RAHMAD SYAHPUTRA', 1972, 'SMP / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Nursiah', 1974, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'IPS', 1),
(2875, '4705', 'siswa', 'Melati', 2, '9990432041', 'Paluh Dungun', '1999-02-07', '1205070119990010', 1, 'Tidak ada', 'Terusan', '0', '0', '', 'Suka Maju', 'Kec. Tanjung Pura', 0, '', '', '', '', '', ' DN-07 DI 0090027   ', 'Tidak', '', '', 'Paino', 1976, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sariana', 1979, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2874, '4704', 'siswa', 'MEGAWATI MATONDANG', 2, '9990433729', 'Tanjung Pura', '1999-07-02', '1205020719990007', 1, 'Tidak ada', 'Sei Wampu', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07  DI 0089726   ', 'Ya', '34up7y20853002', '', 'Azwar Matondang', 1954, 'SMA / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Juliana', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2873, '4864', 'siswa', 'Maysarah', 2, '0000258748', 'P.Tengah', '2000-05-22', '1205112408070483', 1, 'Tidak ada', 'P.Tengah', '0', '0', 'Harapan', 'P.Tengah', 'Kec. Tanjung Pura', 0, '', '', '', '087763664316', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-MAISYARAH.JPG', 'Syarifuddin', 1953, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sunarmiati', 1967, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2871, '4955', 'siswa', 'Maya Winanda', 2, '0020383947', 'Bukit Salak', '2002-02-26', '1205131008720002', 1, 'Tidak ada', 'Bukit Salak', '0', '0', 'IV', 'Pasiran', 'Kec. Gebang', 0, '', '', '', '', '', '', '', '', 'srilangkat-maya winanda.JPG', 'Siswanto', 1973, 'SMP / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Ponisem', 1973, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '', '', '', 1990, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2872, '4666', 'siswa', 'MAYANG SARI', 2, '9990121575', 'Besilam', '1998-11-11', '1205111119980005', 1, 'Tidak ada', 'Desa Besilam kec. Padang Tualang', '0', '0', '', 'Desa Besilam', 'Kec. Padang Tualang', 0, '', '', '', '082363444650', '', 'DN-07  DI 0089659   ', 'Tidak', '', '', 'Amat Razali', 1962, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Misnem', 1958, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2870, '4746', 'siswa', 'Maria Ulfa', 2, '9980473312', 'Baja Kuning', '1998-08-30', '1205300819980008', 1, 'Tidak ada', 'Desa Baja Kuning Kec. Tanjung Pura', '0', '0', '', 'Desa Baja Kuning Kec. Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN-07 DI  0089658   ', 'Ya', '34US1M20853008', '', 'Lukman', 1963, 'SMP / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sri Lisnawati', 1970, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2869, '4745', 'siswa', 'MALINDA SYAFIRA', 2, '9998434491', 'Bt. Melenggang', '1999-07-01', '1205010719990007', 1, 'Tidak ada', 'DESA BATU MELNGGANG KEC. HINAI', '0', '0', '', 'DESA BATU MELNGGANG KEC. HINAI', 'Kec. Hinai', 0, '', '', '', '', '', 'DN-07  DI 0089791   ', 'Ya', 'RPA9AS', '', 'Hermansyah', 1966, 'SMA / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rita Mariana', 1967, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2868, '4665', 'siswa', 'MAILINDA SARI', 2, '9990431008', 'Desa Lalang', '1999-05-09', '1205090519990005', 1, 'Tidak ada', 'Jl. Terusan Desa Lalang Kec. Tanjung Pura', '0', '0', '', 'Desa Lalang', 'Kec. Tanjung Pura', 0, '', '', '', '085207597250', '', 'DN-07  DI 0090330   ', 'Ya', '34UFUO20852007', '', 'Hartono', 1970, 'SMP / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Jeminem', 1971, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2867, '4989', 'siswa', 'M.Ridwan Samosir', 1, '0018983193', 'Medan', '2001-09-26', '1205112210980004', 1, 'Tidak ada', 'Jurung', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-M. ridwan samosir.JPG', 'Lahuddin Samosir', 1984, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Yanti Siregar', 1968, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2866, '4900', 'siswa', 'M.Dicky Zulkairnain S', 1, '0009278074', 'Tanjung Pura', '2000-09-19', '1205190920000002', 1, 'Tidak ada', 'khairil anwar', '0', '0', '', 'pekan tanjung pura', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-muhammad dicky zulkarnain.JPG', 'Iskandar Zulkarnain', 1965, 'SMA / sederajat', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Masdaliana', 1966, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2865, '4866 ', 'siswa', 'M.Ardian', 1, '0006827769', 'Benteng', '2000-02-25', '1205250220000001', 1, 'Tidak ada', 'Jurung Benteng', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 0, '', '', '', '085373055834', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-MUHAMMAD ADRIAN XI IPS.JPG', 'Zainudin', 1963, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Nur Baiti', 1970, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2864, '4703', 'siswa', 'Lulu Afriliana', 2, '9990129294', 'SIMPANG BALAI GAJAH', '1999-04-01', '1205010419990001', 1, 'Tidak ada', 'Rukun', '0', '0', '', 'Air Hitam', 'Kec. Gebang', 0, '', '', '', '', '', 'DN-07 DI 0016206    ', 'Tidak', '', '', 'Zainal Abidin', 1966, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Kamilah', 1970, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2863, '4988', 'siswa', 'Linda Nurhayati', 2, '0012777504', 'Serapuh Asli', '2001-05-04', '1205080405010005', 1, 'Tidak ada', 'Pangkalan Brandan', '0', '0', 'II', 'Serapuh Asli', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-linda nurhayati.jpg', 'Mahadi', 1964, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Siti Rahayu', 1969, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2862, '4953', 'siswa', 'Liliana Ayu Ningsih', 2, '0012775448', 'Besitang', '2001-05-30', '1205083005010005', 1, 'Tidak ada', 'Sekata', '0', '0', 'IV', 'Pekubuan', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-liliana ayu ningsih.jpg', 'Lili Surianto', 1966, 'SMA / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Siti Maryam', 1968, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2861, '4702', 'siswa', 'LIA APRILLIA', 2, '9994629437', 'Pd. Tualang', '1999-04-04', '1205040419990004', 1, 'Tidak ada', 'Padang Tualang', '0', '0', '', 'Padang Tualang', 'Kec. Padang Tualang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN - 07 DI 0089656  ', 'Ya', 'P4A124', '', 'Aspandi', 1965, 'SMA / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Nurseha', 1965, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2860, '4863', 'siswa', 'Lia', 2, '0007954304', 'Air Hitam', '2000-12-01', '1205011220000003', 1, 'Tidak ada', 'Pasiran Barat', '0', '0', 'I', 'Padang Langkat', 'Kec. Gebang', 0, '', '', '', '085262529245', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-no-image.jpg', 'Selamat Hariadi', 1972, 'SMA / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Suwarni', 1973, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2859, '4952', 'siswa', 'Lailatul Husna', 2, '0012774581', 'Teluk Bakung', '2001-08-09', '1205114809010001', 1, 'Tidak ada', 'Stasiun Kai', '0', '0', 'Teratai', 'Teluk Bakung', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '', '', '', 'srilangkat-lailatul husna.jpg', 'Husin', 1959, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Jamilah', 1966, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2858, '4782', 'siswa', 'Kimon Batman Sinaga', 1, '9972634852', 'Bukit Mengkirai', '1997-06-05', '1205050619970004', 2, 'Tidak ada', 'Pangkalan Brandan', '0', '0', '', 'Air Hitam', 'Kec. Gebang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '1-14-07-10-057-054-3', 'Tidak', '', '', 'Abidin Sinaga', 1964, 'SMP / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Mariana Ht Soit', 1958, 'SMP / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2857, '4779', 'siswa', 'Kiki Riani', 2, '9990128271', 'Pem.Cengal', '1999-05-14', '1205140519990005', 1, 'Tidak ada', 'Tanjung Pura', '0', '0', 'Dusun I', 'PEMATANG CENGAL', 'Kec. Tanjung Pura', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN -07 DI 0016808   ', 'Tidak', '', '', 'Rizaldi', 1973, 'SD / sederajat', 'Nelayan', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Nursiah', 1976, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2856, '4781', 'siswa', 'Kiki Rahmawati', 2, '9990122718', 'Balai Gajah', '1998-12-24', '1205241219980003', 1, 'Tidak ada', 'Merdeka Desa Dogang', '0', '0', '', 'Desa Dogang', 'Kec. Gebang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0090743    ', 'Ya', '34UYA720856001', '', 'Rahmat Parwadi', 1973, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Arianti', 1976, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2855, '4701', 'siswa', 'Khairunnisa', 2, '9960431364', 'Stabat', '1998-08-15', '1205150819980002', 1, 'Tidak ada', 'Dusun Wampu Desa Pantai Cermin Kec. Tanjung Pura', '0', '0', 'Dusun Wampu', 'Desa Pantai Cermin', 'Kec. Tanjung Pura', 0, '', '', '', '', '', 'DN - 07 DI 0015904  ', 'Ya', 'PIWAFR', '', 'Yahya', 1971, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rinawati', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2854, '4661', 'siswa', 'Khairunisa', 2, '9990121605', 'Pd. Tualang', '1999-06-17', '1205170619990003', 1, 'Tidak ada', 'Desa Padang Tualang Kec. Padang Tualang', '0', '0', '', 'Desa Padang Tualang', 'Kec. Padang Tualang', 0, '', '', '', '', '', '-                   ', 'Ya', 'PPJEL3', '', 'Muhammad Daim', 1974, 'SMP / sederajat', 'Pedagang Kecil', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Elvida', 1976, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2853, '4744', 'siswa', 'KHAIRIL LAILI', 2, '9990128532', 'Pulau Banyak', '1999-11-13', '1205030119990001', 1, 'Tidak ada', 'Jl. Tanjung Pura Desa Pulau Banyak Kec. Tanjung Pura', '0', '0', 'Jl. Tanjung Pura Desa Pulau Banyak Kec. Tanjung Pu', 'Jl. Tanjung Pura Desa Pulau Banyak Kec. Tanjung Pu', 'Kec. Tanjung Pura', 0, '', '', '', '', '', '-                   ', 'Ya', 'PN8B9U', '', 'Lasimen', 1961, 'SD / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sarbini', 1967, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2852, '4861', 'siswa', 'Kelvin Pratama', 1, '9990122658', 'Sanggalima', '1999-10-06', '1205130501000001', 1, 'Tidak ada', 'Sanggalima', '0', '0', 'I', 'Sanggalima', 'Kec. Gebang', 0, '', '', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-KELVIN PRATAMA.JPG', 'Suriono', 1970, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Legiatik', 1978, 'SD / sederajat', 'Wiraswasta', 'Kurang dari Rp. 500,000', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2851, '4951', 'siswa', 'Karnel Minardo', 1, '0007953089', 'KB.Kacang', '2001-05-07', '1205080705010004', 1, 'Tidak ada', 'KB.Kacang', '0', '0', 'II', 'Padang Tualang', 'Kec. Padang Tualang', 0, '', '', '', '', '', '', '', '', 'srilangkat-karnel minardo.jpg', 'Sudarman', 1968, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'T.Dahniar', 1970, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2850, '4777', 'siswa', 'Julkarnain', 1, '9990122709', 'Dogang', '1999-11-12', '1205121119990001', 1, 'Tidak ada', 'Gebang', '0', '0', '', 'Dogang', 'Kec. Gebang', 0, '', '', '', '', '', 'DN-07 DI 0016089    ', 'Ya', 'P3N2FP', '', 'Sukardi', 1956, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Suyasmi', 1964, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2849, '4743', 'siswa', 'Julinda', 2, '9980470549', 'Tanjung Pura', '1998-07-14', '1205140719980003', 1, 'Tidak ada', 'Dusun Pangkalan Garib', '0', '0', 'Dusun Pangkalan Garib', 'Desa P.Cengal', 'Kec. Tanjung Pura', 0, '', '', '', '081377364086', 'srilangkat_sma@ymail.com', 'DN-07 DI 0090278    ', 'Tidak', '', '', 'Padlin', 1976, 'SD / sederajat', 'Nelayan', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mariati', 1978, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2848, '4660', 'siswa', 'JULIANI', 2, '9982289574', 'Sukaramai', '1998-09-04', '1205040919980002', 1, 'Tidak ada', 'Dusun IV Sukaramai', '0', '0', 'Dusun IV Sukaramai', 'Desa Telaga Said', 'Kec. Sei Lepan', 0, '', '', '', '085359661356', 'srilangkat_sma@ymail.com', 'DN - 07 DI 0092289  ', 'Ya', 'PEB791', '', 'Lasimun', 1967, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Indiatun', 1982, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1);
INSERT INTO `rb_siswa` (`id_siswa`, `nipd`, `password`, `nama`, `id_jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `id_agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `foto`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `kebutuhan_khusus_ayah`, `no_telpon_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `kebutuhan_khusus_ibu`, `no_telpon_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `status_awal`, `status_siswa`, `tingkat`, `kode_kelas`, `kode_jurusan`, `id_sesi`) VALUES
(2847, '4742', 'siswa', 'Julian Syah Putra', 1, '9990733563', 'Tanjung Pura', '1999-07-30', '1205300719990002', 1, 'Tidak ada', 'Dusun Anggrek Desa Teluk Bakung', '0', '0', 'Dusun Anggrek', 'Desa Teluk Bakung', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0090368    ', 'Ya', '34UREY20853003', '', 'Sofiyan', 1970, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Nurhayati', 1972, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2846, '5008', 'siswa', 'JUDIKA MALAU', 1, '0007954318', 'SIDIKALANG', '2000-04-16', '1205081604000006', 1, 'Tidak ada', 'JALAN BUKIT', '0', '0', 'LUMBAN GEREJA', 'PAYA BENGKUANG', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-judika malau.jpg', 'BERNON MALAU', 0, 'SMA / sederajat', 'Petani', '', 'Tidak Ada', '', 'LINDA BR. HOMBING', 1976, '', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2845, '4700', 'siswa', 'Jepri', 1, '9988671766', 'Pasar Rawa', '1998-03-30', '1205300319980005', 1, 'Tidak ada', 'Pasar Rawa', '0', '0', '', 'Pasar Rawa', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN - 07 DI 0016352  ', 'Tidak', '', '', 'Jafar', 1958, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Samsidar', 1958, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2844, '4822', 'siswa', 'Ismi Utari', 2, '0006364833', 'Kw.Pesilam', '2000-02-24', '1205125000200000', 1, 'Tidak ada', 'Kw.Pesilam', '0', '0', '', 'Kw.Pesilam', 'Kec. Padang Tualang', 20852, 'Bersama orang tua', 'Sepeda motor', '', '082272808025', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-ismi utari.JPG', 'Marianto', 1962, 'SD / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Sumarni', 1965, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2843, '4821', 'siswa', 'Isa Mahendra', 1, '0007429654', 'Serapuh Asli', '2000-05-02', '1205020520000003', 1, 'Tidak ada', 'Serapuh Asli', '0', '0', 'II Sepakat', 'Serapuh Asli', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '082164751665', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-ISA MAHENDRA IPA 1.JPG', 'M.Ibrahim', 1979, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mariana', 1981, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2842, '4699', 'siswa', 'Irmayanti', 2, '9990430991', 'Jadi Rejo', '1999-05-23', '1205230519990004', 1, 'Tidak ada', 'Desa Karya Maju', '0', '0', '', 'Desa Karya Maju', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0089854    ', 'Tidak', '', '', 'Imanuddin', 1962, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'IRIANI', 1968, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2841, '4659', 'siswa', 'Irma Jayanti', 2, '9990122660', 'Sanggalima', '1999-10-21', '1205210119990002', 1, 'Tidak ada', 'Sanggalima', '0', '0', '', 'Sanggalima', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '10-165-040-9        ', 'Tidak', '', '', 'Jamianto', 1968, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Nur Sariani', 1971, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2840, '4950', 'siswa', 'Iqbal Tritama', 1, '0013159334', 'Serapuh ABC', '2001-08-02', '1205120208010001', 1, 'Tidak ada', 'Serapuh ABC', '0', '0', 'I Serapuh ABC', 'Padang Tualang', 'Kec. Padang Tualang', 20852, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-iqbal tritama.jpg', 'Muliadi', 1968, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Dahliani', 1973, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2839, '4820', 'siswa', 'Iqbal Mustaqim', 1, '9990434282', 'P.Cengal', '1999-05-23', '1205112305990002', 1, 'Tidak ada', 'P.Cengal Barat', '0', '0', 'II', 'P.Cengal Barat', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-no-image.jpg', 'M.Yusuf', 1965, 'SMP / sederajat', 'Nelayan', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Darmawati', 1967, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2838, '4899', 'siswa', 'Indra Cahya Putra', 1, '9998763442', 'p.tengah', '1999-08-12', '1205111208990003', 1, 'Tidak ada', 'P.Tengah', '0', '0', 'Kesuma', 'P.Tengah', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '082165775740', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-indra cahya putra.JPG', 'Muzlin', 1957, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Salamah', 1958, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2837, '4776', 'siswa', 'Indah Purnama Sari Sinurat', 2, '9988671037', 'Samosir', '1999-06-23', '1205230619990005', 2, 'Tidak ada', 'Jl. Bukit Mengkirai Desa Air Hitam Kec. Gebang', '0', '0', '', 'Desa Air Hitam', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 0090641   ', 'Ya', '34VFMK20859003', '', 'Saut Riduan Sinurait', 1972, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Fransiska Br. Saragih', 1975, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2836, '4860', 'siswa', 'Indah Lestari', 2, '0009667099', 'Tegal Rejo', '2000-03-17', '1205170320000002', 1, 'Tidak ada', 'Tegal Rejo', '0', '0', 'I', 'Tegal Rejo', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '083199041402', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-INDAH LESTARI.JPG', 'Abdullah', 1960, 'SMP / sederajat', 'Sudah Meninggal', 'Kurang dari Rp. 500,000', 'Tidak Ada', '', 'Ida Marheni Rangkuti', 1961, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2835, '4740', 'siswa', 'Indah Lestari', 2, '9983804447', 'Suka Mulia', '1998-10-11', '1205151019980010', 1, 'Tidak ada', 'Dusun V Desa Tanjung Mulia Kec. Hinai', '0', '0', 'Dusun V Desa Tanjung Mulia Kec. Hinai', 'Dusun V Desa Tanjung Mulia Kec. Hinai', 'Kec. Hinai', 20854, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0090165    ', 'Tidak', '', '', 'Suwandi', 1968, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sri Murni', 1972, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2834, '4698', 'siswa', 'INDAH GUSTINA', 2, '9988050991', 'Muka Paya', '1998-08-18', '1205180819980003', 1, 'Tidak ada', 'Desa Muka Paya Kec. Hinai', '0', '0', '', 'Desa Muka Paya Kec. Hinai', 'Kec. Hinai', 20854, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 0088071   ', 'Tidak', '', '', 'Khairul Zihad', 1958, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Rosmawati', 1964, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2833, '4697', 'siswa', 'Imelda', 2, '9990129210', 'Gebang', '1999-09-28', '1205280919990001', 1, 'Tidak ada', 'Desa Pasar Rawa Kec. Gebang', '0', '0', '', 'Desa Pasar Rawa Kec. Gebang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 0090676   ', 'Tidak', '', '', 'Sugianto', 1968, 'SMA / sederajat', 'Petani', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Asmini', 1976, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2832, '4987', 'siswa', 'IKA PUTRI', 2, '0012756901', 'BATU MELENGGANG', '2002-03-18', '1205105303020002', 1, 'Tidak ada', 'JALAN BATU MELENGGANG', '0', '0', 'VIII', 'BATU MELENGGANG', 'Kec. Hinai', 20854, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '', '', '', '', '', 'srilangkat-ika putri.jpg', 'SOFYAN', 1972, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'HARTINI', 1974, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2831, '4775', 'siswa', 'Ika Julianti', 2, '9971951721', 'Binjai', '1999-03-01', '1205081212970003', 1, 'Tidak ada', 'Paya Perupuk', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI  0089751   ', 'Tidak', '', '', 'Adi', 1971, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Wati', 1972, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2830, '4696', 'siswa', 'Hikmatu Faradhini', 2, '0007271612', 'Medan', '2000-01-20', '1205200120000003', 1, 'Tidak ada', 'Sudirman', '9', '9', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '1-14-07-10-025-116-5', 'Tidak', '', '', 'Mulyanis', 1975, 'SD / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Fitri Andriani', 1975, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2828, '4949', 'siswa', 'Heni Yatika Dewi', 2, '0019227682', 'Tanjung Pura', '2001-09-10', '1205081009001005', 1, 'Tidak ada', 'Murni', '19', '0', '', 'Basilam Baru', 'Kec. Sungai Sembilan', 28800, '', '', '', '', '', '', '', '', 'srilangkat-heni yatika dewi.jpg', 'Junaidi', 1974, 'SMA / sederajat', '', '', 'Tidak Ada', '', 'Sumini', 1982, '', '', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2829, '4818', 'siswa', 'Herlina', 2, '9994709615', 'Batu Melenggang', '1999-11-02', '1205104211990000', 1, 'Tidak ada', 'Tanjung Beringin', '0', '0', 'III', 'tg.mulia', 'Kec. Hinai', 20854, 'Bersama orang tua', 'Sepeda motor', '', '081362014341', 'herlianasiregar02@gmail.com', '', '', '', 'srilangkat-no-image.jpg', 'Khairul', 1973, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Hernida Siregar', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2827, '4898', 'siswa', 'Helmiji', 1, '9997627267', 'Simpang Kolam', '1999-02-19', '1205131902990001', 1, 'Tidak ada', 'Simp.Kolam', '0', '0', 'V', 'Pekan Gebang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '087891829308', 'kianrizky26@yahoo.com', '', '', '', 'srilangkat-helmiji.JPG', 'Kuari', 1959, 'SD / sederajat', 'Nelayan', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Munawarah', 1964, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2826, '4859', 'siswa', 'Hellisa Putri', 2, '9998083170', 'Tegal Rejo', '1999-02-05', '1205050219990005', 1, 'Tidak ada', 'Tegal Rejo', '0', '0', 'I Tegal Rejo', 'Pekan Gebang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '087713973394', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-HELLISA PUTRI.JPG', 'Robby Rinaldi', 1971, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Susilawati', 1972, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2825, '4817', 'siswa', 'Haria Fina', 2, '0008887564', 'Dogang', '2000-10-15', '1205135510000001', 1, 'Tidak ada', 'Merdeka', '0', '0', 'II', 'Dogang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '085270458517', 'srilangkat_sma@gmail.com', '', '', '', 'srilangkat-HARIA FINA.JPG', 'Ahmad Gunto', 1960, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Paini', 1961, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2824, '4938', 'siswa', 'HAPIPAH SRI MAHYUNI', 2, '9990122622', 'Sanggalima', '1999-01-23', '1205082301990001', 1, 'Tidak ada', 'Manunggal', '0', '0', '', 'Sanggalima', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '081269141736', 'srilangkat_sma@ymail.com', 'DN-07 DI 0016133    ', 'Tidak', '', '', 'YATIMUN', 1975, 'SD / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Hajizah', 1977, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2823, '4739', 'siswa', 'HAMBALI PRATAMA', 1, '9990123045', 'Air Hitam', '1999-06-12', '1205120619990004', 1, 'Tidak ada', 'Singa Dua', '4', '4', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 0089750   ', 'Ya', 'RJSWVO', '', 'Mustafa Kamal', 1967, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Muliani', 1978, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2822, '4658', 'siswa', 'HALWANI ASWIDA', 2, '9998434477', 'Batu Melenggang', '1999-11-21', '1205211119990005', 1, 'Tidak ada', 'Desa Batu Melenggang', '0', '0', '', 'Desa Batu Melenggang', 'Kec. Hinai', 20854, 'Bersama orang tua', 'Sepeda motor', '', '085297292221', 'srilangkat_sma@ymail.com', 'DN-07  DI 0015901   ', 'Tidak', '', '', 'Rustam', 1973, 'SD / sederajat', 'Pedagang Kecil', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Idawati', 1975, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2821, '4816', 'siswa', 'Halimatussakdiah', 2, '0002879033', 'Padang Tualang', '2000-12-14', '1205125412000007', 1, 'Tidak ada', 'Padang Tualang', '0', '0', 'I', 'Padang Tualang', 'Kec. Padang Tualang', 20852, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-halimatus syakdiah.JPG', 'Baharuddin', 1971, 'SD / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Kamaliah', 1973, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2820, '4948', 'siswa', 'Hajijah', 2, '0012775429', 'Tanjung Pura', '2000-02-05', '1205114502010004', 1, 'Tidak ada', 'Sekata', '0', '0', 'VI Sekata', 'Pekubuan', 'Kec. Tanjung Pura', 20853, 'Wali', 'Angkutan umum/bus/pete-pete', '', '', '', '', '', '', 'srilangkat-hajijah.jpg', 'Alm. Husaini', 1966, 'Tidak sekolah', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Khairani', 1978, 'SD / sederajat', 'Tenaga Kerja Indonesia', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2819, '4657', 'siswa', 'Hafizatul Khairi Rangkuti', 2, '9991219624', 'Tanjung Pura', '1999-03-08', '1205180319990003', 1, 'Tidak ada', 'Tanjung Pura', '0', '0', 'I melati', 'Paya Perupuk', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0016805    ', 'Ya', 'PHG9X0', '', 'Khairuddin Rangkuti', 1972, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Ismahahi Dwi Sitepu', 1976, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2818, '4897', 'siswa', 'Hafizah', 2, '9996906809', 'Baja Kuning', '1999-10-10', '1205115011990000', 1, 'Tidak ada', 'Baja Kuning', '0', '0', 'III', 'Baja Kuning', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '082365822259', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-hafizah.JPG', 'Muhammad Yakup', 1966, 'SMA / sederajat', 'Nelayan', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sumiati', 1972, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2817, '4656', 'siswa', 'Habni Rizki Br. Hutasuhut', 2, '9993385312', 'Pantai Cermin', '1999-09-10', '1205100919990002', 1, 'Tidak ada', 'Jl. Bukit Payung Desa Kwala Pesilam Kec. Padang Tualang', '0', '0', '', 'Desa Kwala Pesilam', 'Kec. Padang Tualang', 20852, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 0016921   ', 'Tidak', '', '', 'Muhammad Yamin Hutasuhut', 1972, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Sumiati', 1972, 'SD / sederajat', 'Sudah Meninggal', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2816, '4857', 'siswa', 'Gunawan Aditia', 1, '0009787803', 'Sanggalima', '2000-08-03', '1205130308000004', 1, 'Tidak ada', 'Sanggalima', '0', '0', 'I', 'Sanggalima', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '081360008139', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-gunawan aditia.JPG', 'Basyuni Edi', 1973, 'SMP / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Lena Wati', 1978, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2815, '4774', 'siswa', 'Gilang Ramadhan Hendri', 1, '9980472643', 'Tanjung Pura', '1998-01-06', '1205060119980001', 1, 'Tidak ada', 'Jl.tengku Amir Hamzah', '6', '6', '', 'Pekan tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 1573370    ', 'Tidak', '', '', 'Alm. Hendri Abdi', 1971, 'SMP / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Agustina', 1973, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2814, '4737', 'siswa', 'Ghita Khairani', 2, '9990430615', 'Tanjung Pura', '1999-08-21', '1205210819990008', 1, 'Tidak ada', 'Jl. Jurung Kel. Pekan Tanjung Pura Kec. Tanjung Pura', '0', '0', '', 'Jl. Jurung Kel. Pekan Tanjung Pura Kec. Tanjung Pu', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0090362    ', 'Ya', 'PAI910', '', 'Yudhi', 1970, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Fatimah', 1973, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2813, '4815', 'siswa', 'Fitria Novita', 2, '0008323072', 'P.Tengah', '2000-01-08', '1205114801000007', 1, 'Tidak ada', 'P.Tengah', '0', '0', 'Harapan', 'P.Tengah', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '087748927525', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-fitria novita.JPG', 'Mulyadi', 1971, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Alfina', 1973, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2812, '4947', 'siswa', 'FITRI RAMADHANI', 2, '0006329381', 'Tanjung Pura', '2000-12-21', '1205116112000003', 1, 'Tidak ada', 'Jurung', '10', '10', 'VII', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085270460237', '', '', '', '', 'srilangkat-fitri ramadani.jpg', 'SUANDI', 1956, 'Putus SD', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'AINAH', 1963, 'Putus SD', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2811, '4986', 'siswa', 'FITRI HANDAYANI', 2, '0003433105', 'TANJUNG PURA', '2000-11-27', '1205116711000002', 1, 'Tidak ada', 'JALAN JURUNG', '1', '1', '', 'PEKAN TANJUNG PURA', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Jalan kaki', '', '', '', '', '', '', 'srilangkat-fitri handayani.jpg', 'LILIK KARNO', 1962, 'SMP / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'ELIYANA', 1969, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2810, '4814', 'siswa', 'Filza Tunafsih', 2, '9998473120', 'Tanjung Pura', '1999-10-10', '1205115010990004', 1, 'Tidak ada', 'Benteng Tepian', '0', '0', 'I', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Jalan kaki', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-no-image.jpg', 'Zulham', 1961, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Maria Darma Wanti', 1971, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2809, '4946', 'siswa', 'FERA ERVIANTI', 2, '0014207673', 'DARAT HULU', '2001-05-24', '1205082405010003', 1, 'Tidak ada', 'DARAT HULU', '0', '0', '', 'TELAGA SAID', 'Kec. Sei Lepan', 20857, 'Bersama orang tua', 'Jalan kaki', '', '', '', '', '', '', 'srilangkat-fera erfiyanti.jpg', 'ABDUL MUTHALIB', 1978, 'SD / sederajat', 'Petani', 'Kurang dari Rp 1.000.000', 'Tidak Ada', '', 'PONIAH', 1976, 'SD / sederajat', 'Petani', 'Kurang dari Rp 1.000.000', '', '', 'GULIO', 1978, 'SD / sederajat', 'Petani', 'Kurang dari Rp 1.000.000', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2808, '4945', 'siswa', 'FAUZI FIRMANSYAH', 1, '0011821977', 'GEBANG', '2001-02-01', '1205080102010001', 1, 'Tidak ada', 'SIMPANG KOLAM', '0', '0', 'LINGKUNGAN 5 KOLAM DALAM', 'PEKAN GEBANG', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '', '', '', '', '', 'srilangkat-fauzi firmasyah.jpg', 'SUYOTO', 1975, 'SMP / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'ROSMAWATY, S.PdI', 1974, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2807, '4736', 'siswa', 'Fauzan', 1, '9988935060', 'Tanjung Pura', '1998-12-20', '1205201219980012', 1, 'Tidak ada', 'JL.Badang Durian', '6', '6', '', 'JL.Badang Durian', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '-                   ', 'Ya', 'POCZIC', '', 'M. Fakhri', 1959, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rohani', 1964, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2806, '4735', 'siswa', 'Farida Harum', 2, '9990121539', 'Buluh Telang', '1999-12-21', '1205211219950001', 1, 'Tidak ada', 'Jl. Jurung Kel. Pekan Tanjung Pura Kec. Tanjung Pura', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0019925    ', 'Tidak', '', '', 'Syahbaniar', 1958, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Hilda', 1959, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2805, '4934', 'siswa', 'Fahrozi Yoga Pradana', 1, '0007520220', 'Gebang', '2000-06-05', '1205130560000005', 1, 'Tidak ada', 'Jl.Diponegoro LK.II Air Tawar', '0', '0', 'II Air Hitam', 'Pekan Gebang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-fahrurozi yoga pradana.JPG', 'Paino', 1970, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Urip Kasih Prihartati', 1976, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2804, '4734', 'siswa', 'Fahri Akbar', 1, '9990123050', 'Air Hitam', '1999-06-09', '1205090619990005', 1, 'Tidak ada', 'Jl. Tanjung Pura Desa Pulau Banyak Kec. Tanjung Pura', '0', '0', '', 'Desa Pulau Banyak', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '-                   ', 'Tidak', '', '', 'Lasimen', 1966, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sarbini', 1967, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2803, '4855', 'siswa', 'Fadli', 1, '9999597053', 'Gebang', '1999-10-26', '1205132810990001', 1, 'Tidak ada', 'Gebang', '0', '0', 'VI', 'Pekan Gebang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '082368803847', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-fadli.JPG', 'Ponirin', 1969, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mariana', 1971, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2802, '4896', 'siswa', 'Fachrunisya Siregar', 2, '0000270816', 'Perumnas Cempaka', '2000-04-10', '1205105004000006', 1, 'Tidak ada', 'Cempa', '0', '0', 'I', 'Cempa', 'Kec. Hinai', 20854, 'Bersama orang tua', 'Sepeda motor', '', '087713850977', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-fahrunnisa siregar.JPG', 'Fachruddin Siregar', 1970, 'SMA / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Mahyuni', 1974, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2801, '4695', 'siswa', 'Ewiuma', 2, '9990434354', 'Baja Kuning', '1999-08-15', '1205150819990002', 1, 'Tidak ada', 'Kapten Patimura', '0', '0', 'Cempaka', 'Teluk Bakung', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0089717    ', 'Tidak', '', '', 'Mustafa', 1967, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Ernida', 1973, 'S1', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2800, '4944', 'siswa', 'EVA UTAMI', 2, '0014345944', 'GEBANG', '2001-05-07', '1205070520010001', 1, 'Tidak ada', 'SIMPANG KOLAM', '0', '0', 'SIMPANG KOLAM', 'PEKAN GEBANG', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '', '', '', '', '', 'srilangkat-eva utami.jpg', 'BUHARI', 0, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'NGATINEM', 1972, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2799, '4943', 'siswa', 'EVA LESTARI', 2, '0012777462', 'BAJA KUNING', '2001-02-26', '1205116602010007', 1, 'Tidak ada', 'BAJA KUNING', '0', '0', 'III BAJA KUNING', 'BAJA KUNING', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-eva lestari.jpg', 'FENDI', 1976, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'ARIANA', 1973, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2798, '4655', 'siswa', 'ERIKA HARYATI', 2, '9988671629', 'AIR HITAM', '1998-10-10', '1205101019980004', 1, 'Tidak ada', 'Perjuangan', '0', '0', '', 'Air Hitam', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 0016919   ', 'Tidak', '', '', 'AZHAR', 1970, 'SMA / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Yusneti', 1978, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2797, '4942', 'siswa', 'EPI PIDIYANTI', 2, '9990120954', 'Kwala Besilam', '1999-11-17', '1207045717990002', 1, 'Tidak ada', 'bangunan', '0', '0', '', 'padang tualang', 'Kec. Padang Tualang', 20852, 'Bersama orang tua', 'Andong/bendi/sado/dokar/delman/becak', '', '082365678139', '', '', '', '', 'srilangkat-epi pidiyanti.jpg', 'Adi MS', 1977, 'SMP / sederajat', 'Petani', 'Kurang dari Rp. 500,000', 'Tidak Ada', '', 'nurminah', 1984, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2796, '4733', 'siswa', 'Enissa', 2, '9990127917', 'Antara', '1999-11-17', '1205171119990005', 1, 'Tidak ada', 'Jl. P. Brandan Desa Serapuh Asli Kec. Tanjung Pura', '0', '0', '', 'Desa Serapuh Asli', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '-                   ', 'Tidak', '', '', 'Syafril Afendi Lubis', 1970, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Isna Wati', 1978, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2795, '4694', 'siswa', 'Emil Salim', 1, '9983226889', 'Pantai Cermin', '1998-06-26', '1205260619980001', 1, 'Tidak ada', 'Dusun Wampu Desa Pantai Cermin Kec. Tanjung Pura', '0', '0', 'Dusun Wampu', 'Desa Pantai Cermin', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI  0089883   ', 'Ya', '34UQ2R20853006', '', 'Yahya', 1971, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rinawati', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2794, '4984', 'siswa', 'Elviana', 2, '0017207519', 'Pematang Serai', '2001-10-19', '1205115910010003', 1, 'Tidak ada', 'Pematang Serai', '0', '0', 'VII', 'Pematang Serai', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-elviana.jpg', 'Suhardi', 1967, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Taryuni', 1969, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2793, '4654', 'siswa', 'Elsa Yenci', 2, '9991644499', 'Bangkinang', '1999-08-28', '1205280819990003', 1, 'Tidak ada', 'Jl. Terusan Pantai Cermin Desa Suka Maju Kec. Tanjung Pura', '0', '0', '', 'Desa Suka Maju', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '-                   ', 'Tidak', '', '', 'Asyanto', 1973, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Evi Widarti', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2792, '4813', 'siswa', 'Elsa Anjasa', 2, '9995929965', 'Desa Cempa', '1999-11-28', '1205104211990003', 1, 'Tidak ada', 'Kamib Raja', '0', '0', 'II', 'Cempa', 'Kec. Hinai', 20854, 'Bersama orang tua', 'Sepeda motor', '', '085276427864', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-elsa anjasa.JPG', 'Mardi', 1963, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Parinem', 1966, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2791, '4854', 'siswa', 'Elida Rosalin Pandiangan', 2, '0007954324', 'Bukit Payung', '2000-06-24', '1205136406000001', 2, 'Tidak ada', 'Air Hitam', '0', '0', 'IV Paya Bengkuang', 'Paya Bengkuang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '082169179858', 'elida@ymail.com', '', '', '', 'srilangkat-ELIDA ROSALIN.JPG', 'Benget Pandiangan', 1965, 'SD / sederajat', 'Petani', 'Kurang dari Rp. 500,000', 'Tidak Ada', '', 'Lumitar Br Sianturi', 1966, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2790, '4812', 'siswa', 'Elfidayanti', 2, '0002614671', 'Tanjung pura', '2000-04-04', '1208040420000003', 1, 'Tidak ada', 'Terusan', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-elfidayanti.JPG', 'Ruslan', 1966, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mita', 1967, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2789, '4895', 'siswa', 'Eka Ramadani', 1, '9985155886', 'Paya Rengas', '1998-01-20', '1205133001980006', 1, 'Tidak ada', 'B.Gajah', '0', '0', 'V', 'Dogang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '085261500067', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-eka ramadhani.JPG', 'Muliadi', 1976, 'SD / sederajat', 'Karyawan Swasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sutriyani', 1977, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2788, '4894', 'siswa', 'Ega Syahfitri', 2, '9995361337', 'Desa Lalang', '1999-06-06', '1205060619990002', 1, 'Tidak ada', 'Terusan', '0', '0', 'I', 'LALANG', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '081362976647', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-no-image.jpg', 'Sukatno', 1971, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Dahliana', 1976, 'Tidak sekolah', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2787, '4653', 'siswa', 'EGA PUSPITA', 2, '9990129301', 'AIR HITAM', '1999-06-19', '1205190419990004', 1, 'Tidak ada', 'Kedai muk', '0', '0', '', 'Air Hitam', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 0016200   ', 'Tidak', '', '', 'SUKARI', 1968, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Dahlia', 1968, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2786, '4693', 'siswa', 'Dwi Sintiya', 2, '9990128029', 'KWALA PESILAM', '1999-02-19', '1205190219990002', 1, 'Tidak ada', 'Padang Tualang', '0', '0', '', 'Bukit Payung', 'Kec. Padang Tualang', 20855, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 0089685   ', 'Tidak', '', '', 'Jimin', 1962, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sugiani', 1970, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2785, '4853', 'siswa', 'Dwi Rahayu', 2, '9997160383', 'Batam', '1999-05-31', '1205310519990005', 1, 'Tidak ada', 'Pulau Banyak', '0', '0', 'Manggis', 'P.Banyak', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085275397514', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-no-image.jpg', 'Widodo', 1972, 'SD / sederajat', 'Pedagang Kecil', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Triharni Dalimunte', 1973, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2784, '4893', 'siswa', 'Dwi Anggraini', 2, '0009070796', 'Simpang Kolam', '2000-01-29', '1205136901000001', 1, 'Tidak ada', 'Simpang Kolam Dalam', '0', '0', 'V Kolam Dalam', 'Pekan Gebang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '085311365406', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-dwi anggraini.JPG', 'Sutikno', 1971, 'SD / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Nurhayati', 1973, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2783, '4983', 'siswa', 'Dona Anisa', 2, '9990434348', 'Takengon', '1999-10-15', '1205115510990005', 1, 'Tidak ada', 'Baja Kuning', '0', '0', 'III', 'Baja Kuning', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-dona annisa.jpg', 'Iswan  Gusti', 1963, 'SMP / sederajat', 'Nelayan', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Juliana Yusmita', 1973, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2782, '4731', 'siswa', 'Dio Handoyo', 1, '0007953040', 'Kebun Kacang', '2000-03-14', '1205140320000005', 1, 'Tidak ada', 'Desa Kebun Kacang', '0', '0', '', 'Desa Kebun Kacang', 'Kec. Padang Tualang', 20852, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 0090360   ', 'Tidak', '', '', 'Suhariyono', 1976, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Fatimah', 1979, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2781, '4811', 'siswa', 'Dina Purwati', 2, '0008766826', 'dogang', '2000-11-10', '1205135011060003', 1, 'Tidak ada', 'Dogang', '0', '0', 'I', 'Dogang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '082370668750', 'dina_purwati@yahoo.com', '', '', '', 'srilangkat-DINA PURWATI.JPG', 'Subiyanto', 1973, 'SMP / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rusini', 1973, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2780, '4982', 'siswa', 'DILLA LIVIA', 2, '0012756040', 'TANJUNG MULIA', '2001-04-11', '1205105104010003', 1, 'Tidak ada', 'tanjung mulia', '0', '0', '', 'tanjung mulia', 'Kec. Hinai', 20854, 'Bersama orang tua', 'Sepeda', '', '', '', '', '', '', 'srilangkat-dilla livia.jpg', 'rihardi', 1968, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'HERAWATI', 1979, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2779, '4652', 'siswa', 'Diki Sahputra', 1, '9970473871', 'P.Banyak', '1997-12-02', '120502121997005 ', 1, 'Tidak ada', 'Desa Pulau Banyak Kec. Tanjung Pura', '0', '0', '', 'Desa Pulau Banyak', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0090229    ', 'Ya', 'PLF5B9', '', 'Ngatino', 1969, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Kasmi', 1972, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2778, '4773', 'siswa', 'Dicky Irnanda', 1, '9980459873', 'Stabat', '1998-11-23', '120523111998002 ', 1, 'Tidak ada', 'Dusun III Lubuk Jaya Desa Kwala Serapuh Kec. Tanjung pura', '0', '0', 'Dusun III Lubuk Jaya', 'Desa Kwala Serapuh', 'Kec. Tanjung Pura', 20853, 'Kost', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0090359    ', 'Tidak', '', '', 'Rusli', 1954, 'SD / sederajat', 'Nelayan', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Marnoyah', 1955, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2777, '4810', 'siswa', 'Dicky Armayu', 1, '0007954360', 'Sanggalima', '2000-04-21', '1205210400000005', 1, 'Tidak ada', 'sanggalima', '0', '0', 'III', 'Sanggalima', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '082350395972', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-DICKY ARMAYU XI IPS.JPG', 'Suparman', 1972, 'SMP / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Jumikem', 1975, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2776, '4852', 'siswa', 'Diana Purnama Sari', 2, '0007972678', 'Simpang Balai Gajah', '2000-03-12', '1205135203000001', 1, 'Tidak ada', 'Simpg Balai Gajah', '0', '0', 'VII', 'Air Hitam', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '087763618469', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-DIANA PURNAMA SARI.JPG', 'Ponidi', 1972, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rafeah', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2775, '4981', 'siswa', 'Dewi Syahputri', 2, '0005884047', 'Pasar Rawa', '2000-12-14', '1205135412000010', 1, 'Tidak ada', 'Pasar Rawa', '0', '0', 'IV', 'Pasar Rawa', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-dewi syahputri.jpg', 'Abdul Aziz', 1971, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rusliana', 1971, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2774, '4980', 'siswa', 'Devi Triana', 2, '0012777497', 'Baja Kuning', '2001-10-28', '1205116810010004', 1, 'Tidak ada', 'Baja Kuning', '0', '0', 'III', 'Baja Kuning', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-devi triana.jpg', 'Bahtiar', 1966, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rina Setia Darma', 1968, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2773, '4979', 'siswa', 'DEVI SAFIRA', 2, '0013171681', 'DOGANG', '2001-06-01', '0202134106010001', 1, 'Tidak ada', 'dogang', '0', '0', '', 'dogang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Jalan kaki', '', '', '', '', '', '', 'srilangkat-devi savira.jpg', 'purnama irawan', 1973, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'NURHAJIMAH HANIM', 1973, 'SMP / sederajat', 'Tidak bekerja', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2772, '4729', 'siswa', 'DESY', 2, '9980471207', 'PALUH DUNGUN', '1998-12-30', '1205301219980003', 1, 'Tidak ada', 'JL. Singa Dua', '4', '4', '', 'Singa Dua', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 0090017   ', 'Tidak', '', '', 'SALIADI', 1966, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Muliani', 1978, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2771, '4772', 'siswa', 'Depi Andriani tarigan', 2, '9996874454', 'Dolok Malela', '1999-08-12', '1205120819990004', 1, 'Tidak ada', 'Batu melenggang', '0', '0', '', 'Batu Melenggang', 'Kec. Hinai', 20854, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0022467    ', 'Tidak', '', '', 'Hanudin', 1963, 'SMA / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Parilah', 1969, 'SD / sederajat', 'Sudah Meninggal', '', '', '', 'Saripuddin', 1977, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2770, '4941', 'siswa', 'Della Sakinah', 2, '0007972604', 'Tegal Rejo', '2000-07-07', '120507072000002 ', 1, 'Tidak ada', 'Tekongan Besar', '0', '0', 'I', 'Tekongan Besar', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-della sakinah.jpg', 'Iskandar', 1953, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Pujiati', 1963, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2769, '4771', 'siswa', 'Dedek Novianti', 2, '0007982315', 'Medan', '1999-12-25', '1205251220000004', 1, 'Tidak ada', 'Pematang Cengal', '0', '0', '', 'Pematang Cengal Barat', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0016796    ', 'Tidak', '', '', 'Irwansyah', 1971, 'SMP / sederajat', 'Nelayan', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Darmawati', 1974, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2768, '4809', 'siswa', 'Debby Syahfitri', 2, '0005883536', 'Air Hitam', '2000-08-28', '1205131405010003', 1, 'Tidak ada', 'air hitam', '0', '0', 'V', 'Air Hitam', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '087794220349', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-DEBBY SYAHFITRI.JPG', 'Gusni Irwanto', 1972, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sri Ramadhani', 1975, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2767, '4851', 'siswa', 'Dara Ayuna', 2, '0019637301', 'Tanjung Pura', '2001-06-12', '1205111804080005', 1, 'Tidak ada', 'Jurung', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '087868470066', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-dara ayuna.JPG', 'Erika Yusuf', 1976, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Evi Rahayu', 1975, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2766, '4808', 'siswa', 'Dani Wirawan', 1, '0007954375', 'Sanggalima', '2000-07-15', '1205131507000006', 1, 'Tidak ada', 'Sanggalima', '0', '0', 'I', 'Sanggalima', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-dani wirawan.JPG', 'Suwondo', 1976, 'SMA / sederajat', 'Buruh', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Rahmawati', 1980, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2765, '4728', 'siswa', 'Cindi Cenora Manalu', 2, '9990122605', 'Bukit Lapan', '1999-10-11', '1205111019990004', 2, 'Tidak ada', 'Dusun Pangkalan Garib', '0', '0', 'Dusun Pangkalan Garib', 'Desa Pematang Cengal', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0090632    ', 'Tidak', '', '', 'Padlin', 1976, 'SD / sederajat', 'Nelayan', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mariati', 1978, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2764, '4692', 'siswa', 'CHITRA WULANDARI.A.A', 2, '9990123197', 'Gebang', '1999-05-23', '1205230519990003', 1, 'Tidak ada', 'jl.Peringgan', '0', '0', '', 'Pekan Gebang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '-                   ', 'Tidak', '', '', 'Abdul Gani Abbas', 1965, 'SMP / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Linah', 1970, 'SD / sederajat', 'Tidak bekerja', '', '', '', 'Rendra Ryanda', 1991, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2763, '4892', 'siswa', 'Chenly Arrisa Sinaga', 2, '9990122601', 'Bukit Payung', '1999-08-30', '1205137008990003', 2, 'Tidak ada', 'Pangkalan Brandan', '0', '0', 'IV', 'Paya Bengkuang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '081269743520', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-chenly.JPG', 'Manganar Sinaga', 1967, 'SMA / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Tiawan Br Hombing', 1970, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2762, '4940', 'siswa', 'CHANDRA PRADANA', 1, '0013085838', 'TANGKAHAN PINANG', '2001-03-09', '1205080903010004', 1, 'Tidak ada', 'TANGKAHAN PINANG', '0', '0', 'DUSUN 9', 'AIR HITAM', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '', '', '', '', '', 'srilangkat-candra pradana.jpg', 'SYAHRIZAL', 1973, 'SMP / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'SITI AISYAH', 1977, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2760, '4978', 'siswa', 'Caca Anisa', 2, '0007233731', 'Cempa', '2000-11-15', '1205105511000001', 1, 'Tidak ada', 'Simpang Ladang', '0', '0', 'VI', 'Cempa', 'Kec. Hinai', 20854, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '', '', '', '', '', 'srilangkat-caca annisa.jpg', 'Sunaidi', 1973, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Fatimah Nur', 1976, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1);
INSERT INTO `rb_siswa` (`id_siswa`, `nipd`, `password`, `nama`, `id_jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `id_agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `foto`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `kebutuhan_khusus_ayah`, `no_telpon_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `kebutuhan_khusus_ibu`, `no_telpon_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `status_awal`, `status_siswa`, `tingkat`, `kode_kelas`, `kode_jurusan`, `id_sesi`) VALUES
(2761, '4891', 'siswa', 'Candra Hidayat', 1, '0029249874', 'P.Cengal', '2002-01-25', '1205113004080001', 1, 'Tidak ada', 'Tapak Kuda Baru', '0', '0', 'XI Kampung Baru', 'P.Cengal', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-candra hidayat.JPG', 'Sahibul', 1962, 'SD / sederajat', 'Nelayan', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Siti Aisyah', 1965, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2759, '4691', 'siswa', 'BENNY SUSANTO HS', 1, '9990432033', 'PALUH GASI', '1999-08-21', '1205210899000005', 1, 'Tidak ada', 'Jl. Terusan Desa Suka Maju Kec. Tanjung Pura', '0', '0', '', 'Desa Suka Maju', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '-                   ', 'Tidak', '', '', 'Hasanuddin', 1960, 'SD / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mutiah', 1967, 'SD / sederajat', 'Petani', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.2', 'MIPA', 1),
(2758, '4850', 'siswa', 'Bandi', 1, '0006760215', 'Tanjung Pura', '2000-02-18', '1205111802000001', 1, 'Tidak ada', 'Pembangunan', '0', '0', 'III', 'Pekubuan', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '08526174131317', 'tengkulilifretianabila@gmail.com', '', '', '', 'srilangkat-BANDI XI IPS.JPG', 'Anwar', 1976, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Boinem', 1979, 'Tidak sekolah', 'Tidak bekerja', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2757, '4931', 'siswa', 'Bagus Chair Syahputra', 1, '0007839864', 'Tanjung pura', '2000-12-12', '1205121220000001', 1, 'Tidak ada', 'Jenderal Sudirman', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-bagus khair syahputra.JPG', 'Riadi', 1966, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Ira', 1967, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2756, '5010', 'siswa', 'Badra Rahardi Putra', 1, '0012777461', 'Pulau Banyak', '2001-02-23', '1205112302010001', 1, 'Tidak ada', 'Pulau Banyak', '0', '0', 'Dusun I Madrasah', 'Pulau Banyak', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085261006283', '', '', '', '', 'srilangkat-badra rahardi putra.jpg', 'Anwar', 1961, 'SD / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Salamah Siregar', 1969, 'SMP / sederajat', '', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-1', 'UMUM', 1),
(2755, '4807', 'siswa', 'Azria Syahputra', 1, '9998301980', 'Pekubuan', '1999-11-10', '1205111011990007', 1, 'Tidak ada', 'Sekata', '0', '0', 'VI', 'Pekubuan', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085296142020', 'azriasyahputra@yahoo.co.id', '', '', '', 'srilangkat-no-image.jpg', 'Syahrizal', 1968, 'SMP / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Khamisah', 1968, 'SD / sederajat', 'Sudah Meninggal', '', '', '', 'Sumariah', 1960, 'SMA / sederajat', 'PNS/TNI/Polri', 'Rp. 2,000,000 - Rp. 4,999,999', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2754, '4890', 'siswa', 'Aulia Savitri', 2, '0009040968', 'Dogang', '2000-01-05', '1205134501000005', 1, 'Tidak ada', 'Dogang', '0', '0', '', 'Dogang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '081321778829', 'auliasavitri05@gmail.com', '', '', '', 'srilangkat-AULIA SAVITRI.JPG', 'Muliadi', 1969, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Suriyati', 1971, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2753, '4649', 'siswa', 'Aulia Irawan', 2, '9990434346', 'Kwala Serapuh', '1999-06-28', '1205280619990004', 1, 'Tidak ada', 'Dusun  III Baja  Kunig Desa Baja Kuning Kec. Tanjung Pura', '0', '0', 'Dusun  III Baja  Kunig', 'Desa Baja Kuning', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085761122217', 'srilangkat_sma@ymail.com', 'DN-07 DI  0016098   ', 'Tidak', '', '', 'Susanto', 1982, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'JULIANA', 1981, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2752, '4648', 'siswa', 'Asra Nabila', 2, '9990129302', 'Air Hitam', '1999-06-25', '1205250619990001', 1, 'Tidak ada', 'Dusun VI Desa Air Hitam Kec. Gebang', '0', '0', 'Dusun VI', 'Desa Air Hitam', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '085276311472', 'srilangkat_sma@ymail.com', '-                   ', 'Tidak', '', '', 'Rusmin', 1957, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Rohani', 1960, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2751, '4889', 'siswa', 'Armaida Yanti', 2, '9999930878', 'Pantai Cermin', '1999-10-10', '1205101019990001', 1, 'Tidak ada', 'Terusan', '0', '0', 'Sei Makam', 'Karya Maju', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '082165165396', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-ARMA IDAYANTI.JPG', 'Syaiful Anwar', 1965, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Hawipah', 1968, 'SD / sederajat', 'Buruh', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2750, '4769', 'siswa', 'Arifin Syahputra', 1, '9977563600', 'Proyek', '1997-02-19', '1205190219970003', 1, 'Tidak ada', 'Padang Tualang', '0', '0', '', 'Buluh Telang', 'Kec. Padang Tualang', 20852, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '2-14-07-10-237-002-7', 'Tidak', '', '', 'Busari', 1964, 'SMA / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Painem', 1954, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2749, '4977', 'siswa', 'ARI DARMAWAN', 1, '0012307158', 'Sanggalima', '2001-04-05', '1205130504010001', 1, 'Tidak ada', 'Dusun I', '0', '0', '', 'Sanggalima', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Jalan kaki', '', '', '', '', '', '', 'srilangkat-ari dermawan.jpg', 'Ratno', 1978, 'SD / sederajat', 'Wiraswasta', 'Rp 1.000.000 - Rp 2.000.000', 'Tidak Ada', '', 'Panca Hidayani', 1984, 'SMP / sederajat', 'Tidak bekerja', 'Kurang dari Rp 1.000.000', '', '', '', 1901, '(tidak diisi)', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2748, '4849', 'siswa', 'Anjani Silvia', 2, '0007972566', 'P.Rawa', '2000-04-27', '1205270420000004', 1, 'Tidak ada', 'P.Rawa', '0', '0', 'VII', 'P.Rawa', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '082365026968', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-anjani silvia.JPG', 'Syamsul Bahri', 1970, 'SMA / sederajat', 'Pedagang Kecil', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'T.Fitri Syahwida Wati', 1973, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2747, '4848', 'siswa', 'Anindita Bintang', 2, '0010032441', 'Serapuh Asli', '2001-06-06', '1205117112580082', 1, 'Tidak ada', 'Serapuh Asli', '0', '0', 'II Sepakat', 'Serapuh Asli', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '082166739023', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-ANINDITA BINTANG IPS 1.JPG', 'Usman UD', 1959, 'SD / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Suraiya', 1972, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2746, '4806', 'siswa', 'Andianto Simamora', 1, '0007525379', 'Bukit Payung', '2000-02-02', '1205130202000003', 2, 'Tidak ada', 'Bukit Payung', '0', '0', 'IV', 'Paya Bengkuang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '081361999368', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-andianto simamora.JPG', 'Tumbur Simamora', 1969, 'SMA / sederajat', 'Petani', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Jerlina Simatupang', 1977, 'SMP / sederajat', 'Petani', 'Rp. 500,000 - Rp. 999,999', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2745, '4847', 'siswa', 'Amisha Deviani', 2, '0007960575', 'Tanjung Pura', '2000-06-28', '1205280620000006', 1, 'Tidak ada', 'Tepian Benteng', '0', '0', 'I', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-no-image.jpg', 'M.Said', 1972, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Halimatun Sakdiah', 1974, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2744, '4976', 'siswa', 'Amin Maulana', 1, '0019289949', 'Pematang Tengah', '2001-06-12', '1205111206020002', 1, 'Tidak ada', 'Pangkalan Brandan', '0', '0', 'Fajar', 'Pematang Tengah', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '', '', '', '', '', 'srilangkat-amin maulana.jpg', 'Sugianto', 1957, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mimiwati', 1958, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2743, '4768', 'siswa', 'Ami Susana', 2, '9971865749', 'Tanjung Pura', '1997-10-10', '1205101019970002', 1, 'Tidak ada', 'Pekubuan', '0', '0', '', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 1531932    ', 'Ya', '34UP5Z20853003', '', 'ASRAF', 1960, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mardiana', 1971, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2742, '4690', 'siswa', 'Alvian Syahri', 1, '9990433541', 'Tanjung Pura', '1999-10-29', '1205291099000006', 1, 'Tidak ada', 'Jl. Benteng Tangsi Kel. Pekan Tanjung Pura Kec. Tanjung Pura', '0', '0', 'I', 'Kel. Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07  DI 009225    ', 'Ya', '34UOTZ20853003', '', 'Zulirfan', 1970, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Sutrisni', 1972, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2741, '5007', 'siswa', 'Alfina Rahmadani', 2, '0009645610', 'Gebang', '2000-12-14', '1205141200000004', 1, 'Tidak ada', 'Simpang Rumah Sakit', '0', '0', 'VII', 'Gebang', 'Kec. Gebang', 20853, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-alfina ramadani.JPG', 'Anwar', 1967, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Salmiah', 1966, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, 'Tidak sekolah', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2740, '4689', 'siswa', 'AL AYNI PANGGABEAN', 2, '9990433009', 'Tanjung Pura', '1999-04-12', '1205120419990002', 1, 'Tidak ada', 'Tanjung Pura', '0', '0', 'I', 'PEKAN TANJUNG PURA', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '-                   ', 'Ya', '34upd020853001', '', 'Johan Panggabean', 1969, 'SD / sederajat', 'Petani', 'Kurang dari Rp. 500,000', 'Tidak Ada', '', 'Syafrina', 1973, 'SD / sederajat', 'Buruh', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2739, '4975', 'siswa', 'AKBAR HIDAYAT', 1, '0007820545', 'TANJUNG PURA', '2000-12-19', '1205111912010001', 1, 'Tidak ada', 'JALAN JURUNG', '10', '10', '', 'PEKAN TANJUNG PURA', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-akbar hidayat.jpg', 'YUDHI', 1970, 'SMP / sederajat', 'Wiraswasta', 'Kurang dari Rp. 500,000', 'Tidak Ada', '', 'FATIMAH', 1973, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2738, '4727', 'siswa', 'Aisyah Aura', 2, '9990431295', 'Paya Kumbuh', '1999-03-11', '1205110319990001', 1, 'Tidak ada', 'Desa Kebun Kacang', '0', '0', 'II', 'Desa Kebun Kacang', 'Kec. Padang Tualang', 20852, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '-                   ', 'Ya', '34UTJV20853000', '', 'Zulfadli', 1976, 'SMP / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Sofiaty', 1979, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 1900, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2737, '4688', 'siswa', 'Agus Kamizar', 1, '9990434302', 'Pantai Cermin', '1999-08-28', '1205280819990003', 1, 'Tidak ada', 'Terusan', '0', '0', 'III', 'Pantai Cermin', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '-                   ', 'Ya', 'PFJK1T', '', 'Suhaimi', 1970, 'SMA / sederajat', 'Wiraswasta', 'Rp. 1,000,000 - Rp. 1,999,999', 'Tidak Ada', '', 'Asmah', 1970, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2736, '4766', 'siswa', 'Agus Andrian', 1, '9998471930', 'Air Hitam', '1999-08-09', '1205090819990004', 1, 'Tidak ada', 'P.Brandan', '0', '0', 'I', 'Paya Perupuk', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', 'DN-07 DI 0089744    ', 'Ya', 'PHCJL4', '', 'AMIRUDDIN', 1968, 'SMA / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Muliati', 1968, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1),
(2735, '4765', 'siswa', 'Agung Lesmana', 1, '9990122698', 'Dogang', '1999-08-29', '1205290819990005', 1, 'Tidak ada', 'Dusun IV Hulu Desa Dogang', '0', '0', '', 'Desa Dogang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '082276357203', 'srilangkat_sma@ymail.com', 'DN - 07 DI 0090661  ', 'Tidak', '', '', 'M. Kasim', 1963, 'SD / sederajat', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'Wasriana', 1967, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.2', 'IPS', 1),
(2734, '4936', 'siswa', 'Aditia Ardiansyah', 1, '8091184', 'Mabar', '2000-10-13', '1205081310000001', 1, 'Tidak ada', 'Paluh Mardan', '0', '0', '', 'Pematang Cengal', 'Kec. Tanjung Pura', 20853, 'Wali', 'Sepeda motor', '', '085360791015', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-ADITIYA ARDIANSYAH XI IPS.JPG', 'Muhammad Jhon Fiter Sihombing', 1971, 'SMA / sederajat', 'Sudah Meninggal', '', 'Tidak Ada', '', 'Sri Narsih', 1975, 'SMA / sederajat', 'Tidak bekerja', 'Rp. 500,000 - Rp. 999,999', '', '', 'Sugeng Budiman', 1970, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.IPS.1', 'IPS', 1),
(2733, '4687', 'siswa', 'Ademia Lestari Boru Tarigan', 2, '9992627391', 'Balai Gajah', '1999-06-16', '1205160619990002', 1, 'Tidak ada', 'Balai Gajah', '0', '0', 'Balai Gajah', 'Dogang', 'Kec. Gebang', 20856, 'Bersama orang tua', 'Sepeda motor', '', '081397982150', 'srilangkat_sma@gmail.com', '1-14-07-10-057-186-7', 'Tidak', '', '', 'Suriadi Tarigan', 1975, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Linawati', 1979, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.MIPA.1', 'MIPA', 1),
(2732, '4804', 'siswa', 'Abdul Rahman', 1, '9990433931', 'Pekubuan', '1999-12-24', '1205112412990006', 1, 'Tidak ada', 'Sekata', '0', '0', 'V', 'Pekubuan', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '085762531481', 'srilangkat_sma@ymail.com', '', '', '', 'srilangkat-abdul rahmanok.jpg', 'Rustam', 1968, 'SD / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Aminah', 1969, 'SMP / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.1', 'MIPA', 1),
(2731, '4846', 'siswa', 'Abdul Hadi Gunawan', 1, '9990433603', 'Tanjung Pura', '1999-11-16', '1205111611990001', 1, 'Tidak ada', 'Pemuda', '0', '0', 'Gang Singa Dua', 'Pekan Tanjung Pura', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Angkutan umum/bus/pete-pete', '', '085322608801', 'hadi.gunawan52@ymail.com', '', '', '', 'srilangkat-ABDUL HADI GUNAWAN IPA 2.JPG', 'Ismail', 1965, 'SMA / sederajat', 'Wiraswasta', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Mardiah Suasana Sembiring', 1970, 'SMA / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XI.MIPA.2', 'MIPA', 1),
(2730, '4974', 'siswa', 'ABDUL FAYYAD SITAKAR', 1, '0013014531', 'Medan', '2001-08-14', '1205125408010001', 1, 'Tidak ada', 'Teluk Bakung', '6', '6', 'Kenanga', 'Teluk Bakung', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '', '', '', '', '', '', 'srilangkat-abdul fayat sitakar.jpg', 'SAFIUDDIN', 1963, 'SMP / sederajat', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999', 'Tidak Ada', '', 'ELPIAH', 1972, 'SMA / sederajat', 'Lainnya', 'Kurang dari Rp. 500,000', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'X-2', 'UMUM', 1),
(2729, '4647', 'siswa', 'Abdul Azis', 1, '9997328298', 'Lubuk Jaya', '1999-02-04', '1205040219990003', 1, 'Tidak ada', 'Dusun III Lubuk Jaya Desa', '0', '0', 'Dusun III Lubuk Jaya', 'Desa Kwala Serapuh', 'Kec. Tanjung Pura', 20853, 'Bersama orang tua', 'Sepeda motor', '75221487', '082361532918', 'srilangkat_sma@gmail.com', 'DN-07 DI 0017031    ', 'Tidak', '', '', 'Mhd. Said', 1977, 'SMA / sederajat', 'Nelayan', 'Rp. 500,000 - Rp. 999,999', 'Tidak Ada', '', 'Jamaiyah', 1981, 'SD / sederajat', 'Tidak bekerja', '', '', '', '', 0, '', '', '', 0, 'Baru', 'Aktif', '(SLTA)', 'XII.IPS.1', 'IPS', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms`
--

CREATE TABLE `rb_sms` (
  `id_sms` int(5) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_sms`
--

INSERT INTO `rb_sms` (`id_sms`, `nohp`, `pesan`) VALUES
(6, '087768151554', 'kjbjhbjhbjkk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms_autoreply`
--

CREATE TABLE `rb_sms_autoreply` (
  `id_autoreply` int(5) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `isi_pesan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_sms_autoreply`
--

INSERT INTO `rb_sms_autoreply` (`id_autoreply`, `keyword`, `isi_pesan`, `waktu`) VALUES
(1, 'REG INFO', 'Diharapkan kepada semua orang tua lebih memperhatikan pergaulan anak-anaknya.', '2016-04-23 08:16:22'),
(2, 'REG KEGIATAN', 'Kegiatan Pramuka 27-04-2016, Kegiatan Paskibra 12-05-2016, Kegiatan Maraton Bersama Guru 16-05-2016.', '2016-04-23 09:23:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms_inbox`
--

CREATE TABLE `rb_sms_inbox` (
  `id` int(11) NOT NULL,
  `pesan` text,
  `nohp` varchar(20) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `modem` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms_outbox`
--

CREATE TABLE `rb_sms_outbox` (
  `id_outbox` int(5) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `pesan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_status_keaktifan`
--

CREATE TABLE `rb_status_keaktifan` (
  `id_status_keaktifan` int(5) NOT NULL,
  `nama_status_keaktifan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_status_keaktifan`
--

INSERT INTO `rb_status_keaktifan` (`id_status_keaktifan`, `nama_status_keaktifan`, `keterangan`) VALUES
(1, 'Aktif', ''),
(2, 'Tidak Aktif', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_status_kepegawaian`
--

CREATE TABLE `rb_status_kepegawaian` (
  `id_status_kepegawaian` int(5) NOT NULL,
  `status_kepegawaian` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_status_kepegawaian`
--

INSERT INTO `rb_status_kepegawaian` (`id_status_kepegawaian`, `status_kepegawaian`, `keterangan`) VALUES
(1, 'Tenaga Honor Sekolah\n', ''),
(2, 'Guru Honor Sekolah\n', ''),
(3, 'PNS\r\n', ''),
(4, 'GTY/PTY\r\n', ''),
(5, 'CPNS', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_status_pernikahan`
--

CREATE TABLE `rb_status_pernikahan` (
  `id_status_pernikahan` int(5) NOT NULL,
  `status_pernikahan` varchar(150) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_status_pernikahan`
--

INSERT INTO `rb_status_pernikahan` (`id_status_pernikahan`, `status_pernikahan`, `keterangan`) VALUES
(1, 'Menikah', ''),
(2, 'Belum Menikah', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_tahun_akademik`
--

CREATE TABLE `rb_tahun_akademik` (
  `id_tahun_akademik` int(5) NOT NULL,
  `nama_tahun` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_tahun_akademik`
--

INSERT INTO `rb_tahun_akademik` (`id_tahun_akademik`, `nama_tahun`, `keterangan`, `aktif`) VALUES
(20151, 'Semester Ganjil 2015/2016', '2015/2016', 'Tidak'),
(20152, 'Semester Genap 2015/2016', '2015/2016', 'Tidak'),
(20161, 'Semester Ganjil 2016/2017', '2016/2017', 'Ya'),
(20162, 'Semester Genap 2016/2017', '2016/2017', 'Tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_users`
--

CREATE TABLE `rb_users` (
  `id_user` int(5) NOT NULL,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `password` text COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telpon` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `jabatan` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'sekolah',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `rb_users`
--

INSERT INTO `rb_users` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `no_telpon`, `jabatan`, `level`, `aktif`) VALUES
(1, 'admin', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 'Administrator', 'sdedek15@gmail.com', '087768151554', 'Kepala IT', 'superuser', 'Y'),
(2, '12345678', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 'Dedek Setiawan', 'sdedek15@gmail.com', '087768151554', 'Kepala Sekolah', 'kepala', 'Y'),
(3, 'satpam', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 'budi', 'ranggaaja65@ymail.com', '085276475777', 'satpam', 'satpam', 'Y'),
(4, 'suhar', '12345', 'suhar', '', '', 'Kepala IT', 'superuser', 'Y'),
(109, 'adminbaru', 'd7d2f602e155ba700ed76c48d9a48009b9383e8d17435bfb0fe8ad7c664d4002f16cc7a65c6fb066963714a794f96441ef7f9b9c1b1456acfb9225cbad474fb0', 'admin baru', '', '', 'staf IT', 'superuser', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_users_aktivitas`
--

CREATE TABLE `rb_users_aktivitas` (
  `id_users_aktivitas` int(10) NOT NULL,
  `identitas` varchar(50) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  `status` enum('siswa','guru','superuser') NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_users_aktivitas`
--

INSERT INTO `rb_users_aktivitas` (`id_users_aktivitas`, `identitas`, `ip_address`, `browser`, `os`, `status`, `jam`, `tanggal`) VALUES
(1, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '10:59:57', '2016-04-13'),
(2, '9991268756', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '11:00:27', '2016-04-13'),
(3, '9994030915', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '11:01:44', '2016-04-14'),
(4, '9975540740', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '11:20:43', '2016-04-14'),
(5, '195901241986032002', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '11:21:04', '2016-04-14'),
(6, '0006223671', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:18:06', '2016-04-15'),
(7, '195912121986021004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:18:32', '2016-04-15'),
(8, '197110292005011003', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:18:40', '2016-04-15'),
(9, '196109191988031006', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:18:49', '2016-04-16'),
(10, '196202191990032001', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:19:02', '2016-04-16'),
(11, '9999344284', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:19:24', '2016-04-16'),
(12, '9980725248', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:19:32', '2016-04-16'),
(13, '0006223671', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:19:42', '2016-04-16'),
(14, '2', '', ' Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:13:43', '2016-04-23'),
(15, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:15:28', '2016-04-23'),
(16, '1', '', ' Chrome 49.0.2623.112', 'Windows 7', 'superuser', '06:27:20', '2016-04-23'),
(17, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:34:28', '2016-04-23'),
(18, '9980708111', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '06:36:21', '2016-04-23'),
(19, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:37:05', '2016-04-23'),
(20, '9994030915', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '06:41:40', '2016-04-23'),
(21, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:43:49', '2016-04-23'),
(22, '9991268756', '::1', 'Firefox 46.0', 'Windows 7', 'siswa', '06:46:06', '2016-04-23'),
(23, '1', '', ' Chrome 49.0.2623.112', 'Windows 7', 'superuser', '07:02:03', '2016-04-23'),
(24, '9980708111', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:21:03', '2016-04-23'),
(25, '9980720559', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:21:21', '2016-04-23'),
(26, '9991268756', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:22:01', '2016-04-23'),
(27, '9999152999', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:29:17', '2016-04-23'),
(28, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '08:40:14', '2016-04-23'),
(29, '1', '', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '08:45:52', '2016-04-23'),
(30, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '06:13:18', '2016-04-16'),
(31, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '03:12:26', '2016-04-15'),
(32, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '06:13:18', '2016-04-14'),
(33, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '03:12:26', '2016-04-13'),
(34, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '07:13:18', '2016-04-14'),
(35, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '05:12:26', '2016-04-13'),
(36, '1', '36.68.12.49', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '10:32:19', '2016-04-23'),
(48, '1', '114.4.79.250', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '15:08:36', '2016-04-27'),
(47, '1', '36.84.224.134', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:17:00', '2016-04-27'),
(40, '195704111980032004', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '07:50:45', '2016-04-27'),
(41, '1', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '07:54:08', '2016-04-27'),
(42, '9980708111', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '07:55:08', '2016-04-27'),
(43, '9980722436', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '07:55:23', '2016-04-27'),
(44, '198605012009011001', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '07:55:38', '2016-04-27'),
(45, '1', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '07:55:51', '2016-04-27'),
(46, '1', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '08:01:10', '2016-04-27'),
(49, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '20:16:59', '2016-04-27'),
(50, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '08:27:54', '2016-04-28'),
(51, '198710052010012011', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:41:56', '2016-04-28'),
(52, '195704111980032004', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:42:15', '2016-04-28'),
(53, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '13:12:06', '2016-04-28'),
(54, '9991268756', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '13:30:48', '2016-04-28'),
(55, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '19:15:10', '2016-04-28'),
(56, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:02:22', '2016-04-29'),
(57, '195806161984000001', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '22:37:57', '2016-04-29'),
(58, '9991268756', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '22:41:40', '2016-04-29'),
(59, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '23:09:20', '2016-04-29'),
(60, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '23:20:06', '2016-04-29'),
(61, '195704111980032004', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '06:14:36', '2016-04-30'),
(62, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '06:14:55', '2016-04-30'),
(63, '195806161984000001', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '06:18:35', '2016-04-30'),
(64, '195806161984000001', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '06:19:47', '2016-04-30'),
(65, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:00:28', '2016-04-30'),
(66, '9991268756', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '10:01:25', '2016-04-30'),
(67, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:01:44', '2016-04-30'),
(68, '2', '::1', 'Chrome 50.0.2661.87', 'Windows 7', '', '10:02:29', '2016-04-30'),
(69, '196209051987031007', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:02:51', '2016-04-30'),
(70, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:37:52', '2016-04-30'),
(71, '195806161984000001', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:58:18', '2016-04-30'),
(72, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '12:57:17', '2016-04-30'),
(74, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '10:35:04', '2016-07-11'),
(75, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '12:38:39', '2016-07-11'),
(76, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '09:03:32', '2016-07-12'),
(77, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '18:10:25', '2016-07-12'),
(78, '195704111980032004', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '08:55:18', '2016-07-13'),
(79, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:55:34', '2016-07-13'),
(80, '195806161984000001', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '08:58:43', '2016-07-13'),
(81, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '09:22:11', '2016-07-13'),
(82, '195806161984000001', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '09:42:03', '2016-07-13'),
(83, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '10:14:10', '2016-07-13'),
(84, '195806161984000001', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '11:11:18', '2016-07-13'),
(85, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:11:52', '2016-07-13'),
(86, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:16:23', '2016-07-13'),
(87, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '10:25:22', '2016-07-14'),
(88, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:43:14', '2016-07-15'),
(89, '195806161984000001', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '11:44:46', '2016-07-15'),
(90, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:45:21', '2016-07-15'),
(91, '195806161984000001', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '11:46:08', '2016-07-15'),
(92, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '13:20:29', '2016-07-15'),
(93, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:04:09', '2016-07-16'),
(94, '195806161984000001', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '08:10:29', '2016-07-16'),
(95, '195806161984000016', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '08:10:45', '2016-07-16'),
(96, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:11:21', '2016-07-16'),
(97, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:32:05', '2016-07-16'),
(98, '195806161984000002', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '12:54:38', '2016-07-16'),
(99, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '13:02:14', '2016-07-16'),
(100, '2', '::1', 'Chrome 51.0.2704.103', 'Windows 7', '', '13:03:10', '2016-07-16'),
(101, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '13:06:02', '2016-07-16'),
(102, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:24:19', '2016-07-17'),
(103, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '20:19:44', '2016-07-17'),
(104, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '05:56:40', '2016-07-18'),
(105, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '07:59:13', '2016-07-18'),
(106, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '07:41:02', '2016-07-19'),
(107, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '15:12:55', '2016-07-19'),
(108, '195806161984000016', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '15:13:43', '2016-07-19'),
(109, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '15:13:55', '2016-07-19'),
(110, '195806161984000016', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '15:14:30', '2016-07-19'),
(111, '195806161984000016', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '15:15:56', '2016-07-19'),
(112, '1', '::1', 'Firefox 47.0', 'Windows 7', 'superuser', '15:17:05', '2016-07-19'),
(113, '9991268756', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '17:49:54', '2016-07-19'),
(114, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:37:44', '2016-07-20'),
(115, '1', '::1', 'Firefox 47.0', 'Windows 7', 'superuser', '07:09:25', '2016-07-20'),
(116, '9991268756', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '07:10:00', '2016-07-20'),
(117, '0151379251', '::1', 'Firefox 47.0', 'Windows 7', 'siswa', '07:13:12', '2016-07-20'),
(118, '1', '::1', 'Firefox 47.0', 'Windows 7', 'superuser', '07:13:50', '2016-07-20'),
(119, '0151379251', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '07:13:58', '2016-07-20'),
(120, '0000240365', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '07:54:20', '2016-07-20'),
(121, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:05:41', '2016-07-20'),
(122, '195806161984000016', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '08:06:22', '2016-07-20'),
(123, '2', '::1', 'Chrome 51.0.2704.103', 'Windows 7', '', '08:07:04', '2016-07-20'),
(124, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:12:37', '2016-07-20'),
(125, '9991268756', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '08:17:40', '2016-07-20'),
(126, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:55:44', '2016-07-20'),
(127, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '10:02:27', '2016-07-27'),
(128, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '17:29:43', '2016-07-29'),
(129, '195704111980032004', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '17:31:01', '2016-07-29'),
(130, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:48:57', '2016-07-30'),
(131, '195806161984000016', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '06:50:00', '2016-07-30'),
(132, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:53:45', '2016-07-30'),
(133, '195806161984000016', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '06:56:56', '2016-07-30'),
(134, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '07:00:16', '2016-07-30'),
(135, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:12:50', '2016-07-30'),
(136, '195806161984000016', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '11:14:47', '2016-07-30'),
(137, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:03:10', '2016-07-31'),
(138, '195806161984000016', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '07:02:07', '2016-07-31'),
(139, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '07:15:29', '2016-07-31'),
(140, '1', '::1', 'Chrome 52.0.2743.116', 'Windows 8', 'superuser', '00:35:06', '2016-08-12'),
(141, '9991268756', '::1', 'Chrome 52.0.2743.116', 'Windows 8', 'siswa', '00:36:07', '2016-08-12'),
(142, '1', '::1', 'Chrome 52.0.2743.116', 'Windows 8', 'superuser', '00:36:40', '2016-08-12'),
(143, '9991268756', '::1', 'Chrome 52.0.2743.116', 'Windows 8', 'siswa', '00:41:36', '2016-08-12'),
(144, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '22:01:43', '2017-03-30'),
(145, '0151379251', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '22:02:23', '2017-03-30'),
(146, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '22:08:36', '2017-03-30'),
(147, '198710052010012011', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '22:09:53', '2017-03-30'),
(148, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '22:49:33', '2017-03-30'),
(149, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '23:19:53', '2017-03-30'),
(150, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '23:43:43', '2017-03-30'),
(151, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '00:07:17', '2017-03-31'),
(152, '198710052010012011', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '00:42:59', '2017-03-31'),
(153, '0151379251', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '00:44:17', '2017-03-31'),
(154, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '00:50:40', '2017-03-31'),
(155, '1', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', 'superuser', '23:05:44', '2017-03-31'),
(156, '1', '192.168.43.1', 'Handheld ', 'Android', 'superuser', '23:07:37', '2017-03-31'),
(157, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '23:08:58', '2017-03-31'),
(158, '1', '127.0.0.1', 'Chrome 56.0.2924.87', 'Windows 7', 'superuser', '23:22:04', '2017-03-31'),
(159, '234', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', 'siswa', '23:24:23', '2017-03-31'),
(160, '198605012009011001', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', 'guru', '23:32:25', '2017-03-31'),
(161, '234', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', 'siswa', '23:36:26', '2017-03-31'),
(162, '0004107204', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', 'siswa', '23:38:49', '2017-03-31'),
(163, '234', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', 'siswa', '23:49:46', '2017-03-31'),
(164, '234', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', 'siswa', '23:58:35', '2017-03-31'),
(165, '234', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', 'siswa', '00:52:34', '2017-04-01'),
(166, '2', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', '', '01:36:50', '2017-04-01'),
(167, '1', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', 'superuser', '01:42:25', '2017-04-01'),
(168, '1234', '192.168.43.237', 'Chrome 57.0.2987.110', 'Windows 7', 'guru', '01:54:10', '2017-04-01'),
(169, '0151379251', '127.0.0.1', 'Chrome 56.0.2924.87', 'Windows 7', 'siswa', '02:12:21', '2017-04-01'),
(170, '1234', '127.0.0.1', 'Chrome 56.0.2924.87', 'Windows 7', 'guru', '02:13:34', '2017-04-01'),
(171, '2', '127.0.0.1', 'Chrome 56.0.2924.87', 'Windows 7', '', '02:13:48', '2017-04-01'),
(172, '1', '127.0.0.1', 'Chrome 56.0.2924.87', 'Windows 7', 'superuser', '02:16:18', '2017-04-01'),
(173, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '11:06:43', '2017-04-01'),
(174, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '11:35:13', '2017-04-01'),
(175, '12345', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '11:38:29', '2017-04-01'),
(176, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '11:39:36', '2017-04-01'),
(177, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '11:40:00', '2017-04-01'),
(178, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '11:41:07', '2017-04-01'),
(179, '1234', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '11:41:32', '2017-04-01'),
(180, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '11:48:58', '2017-04-01'),
(181, '1234', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '11:51:58', '2017-04-01'),
(182, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '11:52:10', '2017-04-01'),
(183, '234', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '11:52:43', '2017-04-01'),
(184, '2', '127.0.0.1', 'Firefox 52.0', 'Windows 7', '', '11:53:44', '2017-04-01'),
(185, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '16:26:01', '2017-04-01'),
(186, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '19:18:01', '2017-04-01'),
(187, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '19:21:48', '2017-04-01'),
(188, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '19:25:02', '2017-04-01'),
(189, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '19:33:33', '2017-04-01'),
(190, '234', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '19:33:57', '2017-04-01'),
(191, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '19:36:50', '2017-04-01'),
(192, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '19:58:19', '2017-04-01'),
(193, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '19:59:06', '2017-04-01'),
(194, '12345', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '19:59:33', '2017-04-01'),
(195, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '20:00:18', '2017-04-01'),
(196, '12345', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '20:01:02', '2017-04-01'),
(197, '2', '127.0.0.1', 'Firefox 52.0', 'Windows 7', '', '20:05:34', '2017-04-01'),
(198, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '21:39:11', '2017-04-01'),
(199, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'siswa', '23:34:42', '2017-04-01'),
(200, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '23:46:07', '2017-04-01'),
(201, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '00:17:45', '2017-04-02'),
(202, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '11:32:00', '2017-04-02'),
(203, '1234', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '11:42:29', '2017-04-02'),
(204, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '11:52:44', '2017-04-02'),
(205, '1234', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '11:53:32', '2017-04-02'),
(206, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '12:00:49', '2017-04-02'),
(207, '1', '192.168.43.179', 'Handheld ', 'Android', 'superuser', '12:21:30', '2017-04-02'),
(208, '1', '192.168.43.1', 'Handheld ', 'Android', 'superuser', '12:45:56', '2017-04-02'),
(209, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '18:47:26', '2017-04-02'),
(210, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '22:56:14', '2017-04-02'),
(211, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '11:25:09', '2017-04-07'),
(212, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '23:06:10', '2017-04-10'),
(213, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '23:10:58', '2017-04-10'),
(214, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '10:12:43', '2017-04-11'),
(215, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '22:31:26', '2017-04-11'),
(216, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '22:33:02', '2017-04-11'),
(217, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '00:49:27', '2017-04-12'),
(218, '1', '127.0.0.1', 'Chrome 57.0.2987.133', 'Windows 7', 'superuser', '00:50:52', '2017-04-12'),
(219, '1', '127.0.0.1', 'Chrome 57.0.2987.133', 'Windows 7', 'superuser', '22:48:48', '2017-04-12'),
(220, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '22:50:20', '2017-04-12'),
(221, '1', '192.168.43.1', 'Handheld ', 'Android', 'superuser', '22:50:32', '2017-04-12'),
(222, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '23:58:10', '2017-04-13'),
(223, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '00:13:47', '2017-04-14'),
(224, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '15:35:57', '2017-04-14'),
(225, '1', '192.168.43.126', 'Chrome 56.0.2924.87', 'Windows 7', 'superuser', '16:20:49', '2017-04-14'),
(226, '1', '192.168.43.126', 'Chrome 56.0.2924.87', 'Windows 7', 'superuser', '16:22:29', '2017-04-14'),
(227, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '16:53:40', '2017-04-14'),
(228, '1', '192.168.43.126', 'Chrome 56.0.2924.87', 'Windows 7', 'superuser', '19:36:58', '2017-04-14'),
(229, '1', '192.168.43.126', 'Chrome 56.0.2924.87', 'Windows 7', 'superuser', '20:11:45', '2017-04-14'),
(230, '1', '192.168.43.113', 'Handheld ', 'Android', 'superuser', '20:12:30', '2017-04-14'),
(231, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '22:26:45', '2017-04-17'),
(232, '1', '192.168.43.126', 'Chrome 56.0.2924.87', 'Windows 7', 'superuser', '22:34:30', '2017-04-17'),
(233, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '23:23:43', '2017-04-18'),
(234, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '20:47:02', '2017-04-19'),
(235, '1', '192.168.43.237', 'Chrome 57.0.2987.133', 'Windows 7', 'superuser', '23:51:13', '2017-04-19'),
(236, '1', '192.168.43.237', 'Chrome 57.0.2987.133', 'Windows 7', 'superuser', '02:30:28', '2017-04-20'),
(237, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '02:50:26', '2017-04-20'),
(238, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '12:14:28', '2017-04-20'),
(239, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '22:02:08', '2017-04-20'),
(240, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '22:49:29', '2017-04-21'),
(241, '123', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '23:53:06', '2017-04-21'),
(242, '1', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'superuser', '23:53:47', '2017-04-21'),
(243, '12345', '127.0.0.1', 'Firefox 52.0', 'Windows 7', 'guru', '23:54:13', '2017-04-21'),
(244, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '00:59:00', '2017-04-22'),
(245, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '01:11:18', '2017-04-22'),
(246, '1', '127.0.0.1', 'Chrome 36.0.1985.125', 'Windows 7', 'superuser', '01:15:55', '2017-04-22'),
(247, '1', '127.0.0.1', 'Chrome 36.0.1985.125', 'Windows 7', 'superuser', '01:25:59', '2017-04-22'),
(248, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '01:26:49', '2017-04-22'),
(249, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '01:37:37', '2017-04-22'),
(250, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '01:43:51', '2017-04-22'),
(251, '12345', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'guru', '01:54:42', '2017-04-22'),
(252, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '01:57:52', '2017-04-22'),
(253, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '10:09:37', '2017-04-23'),
(254, '123', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'siswa', '10:13:21', '2017-04-23'),
(255, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '10:17:41', '2017-04-23'),
(256, '12345', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'guru', '10:18:06', '2017-04-23'),
(257, '123', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'siswa', '10:19:26', '2017-04-23'),
(258, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '10:34:04', '2017-04-23'),
(259, '765', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'siswa', '10:34:28', '2017-04-23'),
(260, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '10:40:33', '2017-04-23'),
(261, '2', '127.0.0.1', 'Firefox 30.0', 'Windows 7', '', '10:51:07', '2017-04-23'),
(262, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '12:52:35', '2017-04-23'),
(263, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '16:10:53', '2017-04-23'),
(264, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '00:27:22', '2017-04-24'),
(265, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '02:35:15', '2017-04-24'),
(266, '123', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'siswa', '02:35:46', '2017-04-24'),
(267, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '02:36:27', '2017-04-24'),
(268, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '21:42:42', '2017-04-24'),
(269, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '00:01:45', '2017-04-25'),
(270, '123', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'siswa', '00:01:55', '2017-04-25'),
(271, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '00:02:03', '2017-04-25'),
(272, '123', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'siswa', '00:02:23', '2017-04-25'),
(273, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '00:03:02', '2017-04-25'),
(274, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '17:33:35', '2017-04-25'),
(275, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '00:16:22', '2017-04-26'),
(276, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '23:11:44', '2017-04-26'),
(277, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '01:06:56', '2017-04-27'),
(278, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '13:36:17', '2017-04-27'),
(279, '9990433931', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'siswa', '13:38:09', '2017-04-27'),
(280, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '13:39:24', '2017-04-27'),
(281, '9990433931', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'siswa', '13:44:58', '2017-04-27'),
(282, '1', '127.0.0.1', 'Firefox 30.0', 'Windows 7', 'superuser', '13:46:05', '2017-04-27'),
(283, '1', '127.0.0.1', 'Firefox 43.0', 'Windows 7', 'superuser', '23:28:30', '2017-05-05'),
(284, '1', '127.0.0.1', 'Firefox 43.0', 'Windows 7', 'superuser', '23:29:34', '2017-05-05'),
(285, '1', '127.0.0.1', 'Firefox 43.0', 'Windows 7', 'superuser', '22:30:27', '2017-05-08'),
(286, '1', '127.0.0.1', 'Chrome 58.0.3029.96', 'Windows 7', 'superuser', '22:33:22', '2017-05-08'),
(287, '1', '127.0.0.1', 'Firefox 43.0', 'Windows 7', 'superuser', '22:43:14', '2017-05-08'),
(288, '1', '127.0.0.1', 'Firefox 43.0', 'Windows 7', 'superuser', '22:46:44', '2017-05-08'),
(289, '1', '127.0.0.1', 'Firefox 43.0', 'Windows 7', 'superuser', '23:06:19', '2017-05-08'),
(290, '1', '127.0.0.1', 'Firefox 43.0', 'Windows 7', 'superuser', '23:29:34', '2017-05-08'),
(291, '1', '127.0.0.1', 'Firefox 43.0', 'Windows 7', 'superuser', '23:30:50', '2017-05-08'),
(292, '1', '127.0.0.1', 'Firefox 43.0', 'Windows 7', 'superuser', '10:24:59', '2017-05-11'),
(293, '1', '127.0.0.1', 'Firefox 43.0', 'Windows 7', 'superuser', '11:47:10', '2017-05-13'),
(294, '1', '::1', 'Firefox 53.0', 'Windows 7', 'superuser', '19:29:33', '2017-05-14'),
(295, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '20:04:31', '2017-05-14'),
(296, '0002', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'guru', '20:16:47', '2017-05-14'),
(297, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '20:17:34', '2017-05-14'),
(298, '0009697863', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'siswa', '20:40:21', '2017-05-14'),
(299, '1', '192.168.43.1', 'Handheld ', 'Android', 'superuser', '20:44:42', '2017-05-14'),
(300, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '20:46:13', '2017-05-14'),
(301, '0009645610', '192.168.43.1', 'Handheld ', 'Android', 'siswa', '20:47:52', '2017-05-14'),
(302, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '20:49:20', '2017-05-14'),
(303, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '20:57:35', '2017-05-14'),
(304, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '19:15:45', '2017-05-15'),
(305, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '21:26:49', '2017-05-16'),
(306, '9990433931', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'siswa', '21:44:24', '2017-05-16'),
(307, '0002', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'guru', '21:46:56', '2017-05-16'),
(308, '9990433931', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'siswa', '21:48:14', '2017-05-16'),
(309, '0001', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'guru', '21:55:57', '2017-05-16'),
(310, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '21:56:50', '2017-05-16'),
(311, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '11:49:43', '2017-05-17'),
(312, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '11:56:15', '2017-05-17'),
(313, '2', '::1', 'Chrome 58.0.3029.110', 'Windows 7', '', '11:57:22', '2017-05-17'),
(314, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '11:58:32', '2017-05-17'),
(315, '0002', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'guru', '12:02:51', '2017-05-17'),
(316, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '12:03:57', '2017-05-17'),
(317, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '00:44:03', '2017-05-18'),
(318, '0001', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'guru', '00:54:32', '2017-05-18'),
(319, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '00:56:33', '2017-05-18'),
(320, '1', '192.168.43.1', 'Handheld ', 'Android', 'superuser', '01:44:53', '2017-05-18'),
(321, '1', '192.168.43.126', 'Firefox 53.0', 'Windows 7', 'superuser', '01:50:04', '2017-05-18'),
(322, '1', '192.168.43.126', 'Firefox 53.0', 'Windows 7', 'superuser', '02:00:36', '2017-05-18'),
(323, '2', '192.168.43.126', 'Firefox 53.0', 'Windows 7', '', '02:01:01', '2017-05-18'),
(324, '3', '192.168.43.126', 'Firefox 53.0', 'Windows 7', '', '02:10:07', '2017-05-18'),
(325, '3', '192.168.43.126', 'Firefox 53.0', 'Windows 7', '', '02:17:39', '2017-05-18'),
(326, '1', '192.168.43.126', 'Firefox 53.0', 'Windows 7', 'superuser', '02:18:51', '2017-05-18'),
(327, '0001', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'guru', '02:19:10', '2017-05-18'),
(328, '3', '192.168.43.126', 'Firefox 53.0', 'Windows 7', '', '02:19:52', '2017-05-18'),
(329, '9990433931', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'siswa', '02:25:19', '2017-05-18'),
(330, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '02:28:22', '2017-05-18'),
(331, '0001', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'guru', '02:36:20', '2017-05-18'),
(332, '9990433931', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'siswa', '02:38:42', '2017-05-18'),
(333, '2', '192.168.43.126', 'Firefox 53.0', 'Windows 7', '', '02:48:37', '2017-05-18'),
(334, '3', '192.168.43.126', 'Firefox 53.0', 'Windows 7', '', '02:52:30', '2017-05-18'),
(335, '1', '192.168.43.126', 'Firefox 53.0', 'Windows 7', 'superuser', '03:04:31', '2017-05-18'),
(336, '1', '192.168.43.126', 'Firefox 53.0', 'Windows 7', 'superuser', '03:06:20', '2017-05-18'),
(337, '3', '192.168.43.126', 'Firefox 53.0', 'Windows 7', '', '03:06:28', '2017-05-18'),
(338, '1', '192.168.43.126', 'Firefox 53.0', 'Windows 7', 'superuser', '03:15:49', '2017-05-18'),
(339, '1', '192.168.43.126', 'Firefox 53.0', 'Windows 7', 'superuser', '03:16:09', '2017-05-18'),
(340, '3', '192.168.43.126', 'Firefox 53.0', 'Windows 7', '', '03:16:20', '2017-05-18'),
(341, '3', '192.168.43.126', 'Firefox 53.0', 'Windows 7', '', '03:47:08', '2017-05-18'),
(342, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '03:54:13', '2017-05-18'),
(343, '1', '192.168.43.126', 'Firefox 53.0', 'Windows 7', 'superuser', '04:13:23', '2017-05-18'),
(344, '0001', '192.168.43.126', 'Firefox 53.0', 'Windows 7', 'guru', '04:15:58', '2017-05-18'),
(345, '1', '192.168.43.126', 'Firefox 53.0', 'Windows 7', 'superuser', '04:17:14', '2017-05-18'),
(346, '1', '::1', 'Chrome 54.0.2840.99', 'Windows 7', 'superuser', '13:00:36', '2017-05-19'),
(347, '1', '::1', 'Chrome 54.0.2840.99', 'Windows 7', 'superuser', '15:38:39', '2017-05-19'),
(348, '3', '::1', 'Chrome 54.0.2840.99', 'Windows 7', '', '16:11:56', '2017-05-19'),
(349, '1', '192.168.1.1', 'Chrome 54.0.2840.99', 'Windows 7', 'superuser', '10:11:49', '2017-05-20'),
(350, '1', '192.168.1.1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '10:25:13', '2017-05-20'),
(351, '1', '192.168.1.1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '17:32:45', '2017-05-20'),
(352, '3', '192.168.1.1', 'Chrome 58.0.3029.110', 'Windows 7', '', '17:33:31', '2017-05-20'),
(353, '1', '192.168.1.1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '17:44:00', '2017-05-20'),
(354, '3', '192.168.1.1', 'Chrome 58.0.3029.110', 'Windows 7', '', '17:49:52', '2017-05-20'),
(355, '1', '::1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '12:21:30', '2017-05-21'),
(356, '0012', '192.168.1.1', 'Chrome 58.0.3029.110', 'Windows 7', 'guru', '12:35:54', '2017-05-21'),
(357, '1', '192.168.1.1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '12:42:20', '2017-05-21'),
(358, '0012', '192.168.1.1', 'Chrome 58.0.3029.110', 'Windows 7', 'guru', '12:49:32', '2017-05-21'),
(359, '1', '192.168.1.1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '12:58:04', '2017-05-21'),
(360, '1', '192.168.1.1', 'Chrome 58.0.3029.110', 'Windows 7', 'superuser', '13:17:23', '2017-05-21'),
(361, '1', '::1', 'Chrome 46.0.2490.80', 'Windows 7', 'superuser', '12:52:36', '2017-07-29'),
(362, '4', '::1', 'Chrome 86.0.4240.198', 'Windows 10', 'superuser', '12:56:05', '2020-12-02'),
(363, '9997521322', '::1', 'Chrome 86.0.4240.198', 'Windows 10', 'siswa', '16:31:01', '2020-12-02'),
(364, '4', '::1', 'Chrome 104.0.0.0', 'Windows 10', 'superuser', '16:20:24', '2022-09-02'),
(365, '4', '::1', 'Chrome 104.0.0.0', 'Windows 10', 'superuser', '17:38:23', '2022-09-06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `rb_absensi_guru`
--
ALTER TABLE `rb_absensi_guru`
  ADD PRIMARY KEY (`id_absensi_guru`);

--
-- Indeks untuk tabel `rb_absensi_siswa`
--
ALTER TABLE `rb_absensi_siswa`
  ADD PRIMARY KEY (`id_absensi_siswa`);

--
-- Indeks untuk tabel `rb_agama`
--
ALTER TABLE `rb_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indeks untuk tabel `rb_bank_pertanyaan_essai`
--
ALTER TABLE `rb_bank_pertanyaan_essai`
  ADD PRIMARY KEY (`id_bank_pertanyaan_essai`);

--
-- Indeks untuk tabel `rb_bank_pertanyaan_objektif`
--
ALTER TABLE `rb_bank_pertanyaan_objektif`
  ADD PRIMARY KEY (`id_bank_pertanyaan_objektif`);

--
-- Indeks untuk tabel `rb_bar`
--
ALTER TABLE `rb_bar`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `rb_barcode`
--
ALTER TABLE `rb_barcode`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `rb_elearning`
--
ALTER TABLE `rb_elearning`
  ADD PRIMARY KEY (`id_elearning`);

--
-- Indeks untuk tabel `rb_elearning_jawab`
--
ALTER TABLE `rb_elearning_jawab`
  ADD PRIMARY KEY (`id_elearning_jawab`);

--
-- Indeks untuk tabel `rb_forum_komentar`
--
ALTER TABLE `rb_forum_komentar`
  ADD PRIMARY KEY (`id_forum_komentar`);

--
-- Indeks untuk tabel `rb_forum_topic`
--
ALTER TABLE `rb_forum_topic`
  ADD PRIMARY KEY (`id_forum_topic`);

--
-- Indeks untuk tabel `rb_gedung`
--
ALTER TABLE `rb_gedung`
  ADD PRIMARY KEY (`kode_gedung`);

--
-- Indeks untuk tabel `rb_golongan`
--
ALTER TABLE `rb_golongan`
  ADD PRIMARY KEY (`id_golongan`);

--
-- Indeks untuk tabel `rb_guru`
--
ALTER TABLE `rb_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `rb_guru_akses`
--
ALTER TABLE `rb_guru_akses`
  ADD PRIMARY KEY (`id_guru_akses`);

--
-- Indeks untuk tabel `rb_halaman`
--
ALTER TABLE `rb_halaman`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indeks untuk tabel `rb_identitas_sekolah`
--
ALTER TABLE `rb_identitas_sekolah`
  ADD PRIMARY KEY (`id_identitas_sekolah`);

--
-- Indeks untuk tabel `rb_jadwal_pelajaran`
--
ALTER TABLE `rb_jadwal_pelajaran`
  ADD PRIMARY KEY (`kodejdwl`);

--
-- Indeks untuk tabel `rb_jawaban_essai`
--
ALTER TABLE `rb_jawaban_essai`
  ADD PRIMARY KEY (`id_jawaban_essai`);

--
-- Indeks untuk tabel `rb_jawaban_objektif`
--
ALTER TABLE `rb_jawaban_objektif`
  ADD PRIMARY KEY (`id_jawaban_objektif`);

--
-- Indeks untuk tabel `rb_jenis_kelamin`
--
ALTER TABLE `rb_jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indeks untuk tabel `rb_jenis_ptk`
--
ALTER TABLE `rb_jenis_ptk`
  ADD PRIMARY KEY (`id_jenis_ptk`);

--
-- Indeks untuk tabel `rb_journal_list`
--
ALTER TABLE `rb_journal_list`
  ADD PRIMARY KEY (`id_journal`);

--
-- Indeks untuk tabel `rb_jurusan`
--
ALTER TABLE `rb_jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indeks untuk tabel `rb_kategori_elearning`
--
ALTER TABLE `rb_kategori_elearning`
  ADD PRIMARY KEY (`id_kategori_elearning`);

--
-- Indeks untuk tabel `rb_kategori_quiz_ujian`
--
ALTER TABLE `rb_kategori_quiz_ujian`
  ADD PRIMARY KEY (`id_kategori_quiz_ujian`);

--
-- Indeks untuk tabel `rb_kehadiran`
--
ALTER TABLE `rb_kehadiran`
  ADD PRIMARY KEY (`kode_kehadiran`);

--
-- Indeks untuk tabel `rb_kelas`
--
ALTER TABLE `rb_kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indeks untuk tabel `rb_kelompok_mata_pelajaran`
--
ALTER TABLE `rb_kelompok_mata_pelajaran`
  ADD PRIMARY KEY (`id_kelompok_mata_pelajaran`);

--
-- Indeks untuk tabel `rb_keuangan_bayar`
--
ALTER TABLE `rb_keuangan_bayar`
  ADD PRIMARY KEY (`id_keuangan_bayar`);

--
-- Indeks untuk tabel `rb_keuangan_jenis`
--
ALTER TABLE `rb_keuangan_jenis`
  ADD PRIMARY KEY (`id_keuangan_jenis`);

--
-- Indeks untuk tabel `rb_kompetensi_dasar`
--
ALTER TABLE `rb_kompetensi_dasar`
  ADD PRIMARY KEY (`id_kompetensi_dasar`);

--
-- Indeks untuk tabel `rb_kurikulum`
--
ALTER TABLE `rb_kurikulum`
  ADD PRIMARY KEY (`kode_kurikulum`);

--
-- Indeks untuk tabel `rb_ledger`
--
ALTER TABLE `rb_ledger`
  ADD PRIMARY KEY (`id_ledger`);

--
-- Indeks untuk tabel `rb_mata_pelajaran`
--
ALTER TABLE `rb_mata_pelajaran`
  ADD PRIMARY KEY (`kode_pelajaran`);

--
-- Indeks untuk tabel `rb_menu`
--
ALTER TABLE `rb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `rb_modul`
--
ALTER TABLE `rb_modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `rb_nilai_extrakulikuler`
--
ALTER TABLE `rb_nilai_extrakulikuler`
  ADD PRIMARY KEY (`id_nilai_extrakulikuler`);

--
-- Indeks untuk tabel `rb_nilai_keterampilan`
--
ALTER TABLE `rb_nilai_keterampilan`
  ADD PRIMARY KEY (`id_nilai_keterampilan`);

--
-- Indeks untuk tabel `rb_nilai_pengetahuan`
--
ALTER TABLE `rb_nilai_pengetahuan`
  ADD PRIMARY KEY (`id_nilai_pengetahuan`);

--
-- Indeks untuk tabel `rb_nilai_pengetahuan_semester`
--
ALTER TABLE `rb_nilai_pengetahuan_semester`
  ADD PRIMARY KEY (`id_nilai_pengetahuan_semester`);

--
-- Indeks untuk tabel `rb_nilai_pertanyaan_essai`
--
ALTER TABLE `rb_nilai_pertanyaan_essai`
  ADD PRIMARY KEY (`id_nilai_pertanyaan_essai`);

--
-- Indeks untuk tabel `rb_nilai_prestasi`
--
ALTER TABLE `rb_nilai_prestasi`
  ADD PRIMARY KEY (`id_nilai_prestasi`);

--
-- Indeks untuk tabel `rb_nilai_sikap`
--
ALTER TABLE `rb_nilai_sikap`
  ADD PRIMARY KEY (`id_nilai_sikap`);

--
-- Indeks untuk tabel `rb_nilai_sikap_indikator`
--
ALTER TABLE `rb_nilai_sikap_indikator`
  ADD PRIMARY KEY (`kode_indikator`);

--
-- Indeks untuk tabel `rb_nilai_sikap_semester`
--
ALTER TABLE `rb_nilai_sikap_semester`
  ADD PRIMARY KEY (`id_nilai_sikap_semester`);

--
-- Indeks untuk tabel `rb_nilai_uts`
--
ALTER TABLE `rb_nilai_uts`
  ADD PRIMARY KEY (`id_nilai_uts`);

--
-- Indeks untuk tabel `rb_peringkat`
--
ALTER TABLE `rb_peringkat`
  ADD PRIMARY KEY (`id_peringkat`);

--
-- Indeks untuk tabel `rb_pertanyaan_essai`
--
ALTER TABLE `rb_pertanyaan_essai`
  ADD PRIMARY KEY (`id_pertanyaan_essai`);

--
-- Indeks untuk tabel `rb_pertanyaan_objektif`
--
ALTER TABLE `rb_pertanyaan_objektif`
  ADD PRIMARY KEY (`id_pertanyaan_objektif`);

--
-- Indeks untuk tabel `rb_pertanyaan_penilaian`
--
ALTER TABLE `rb_pertanyaan_penilaian`
  ADD PRIMARY KEY (`id_pertanyaan_penilaian`);

--
-- Indeks untuk tabel `rb_pertanyaan_penilaian_jawab`
--
ALTER TABLE `rb_pertanyaan_penilaian_jawab`
  ADD PRIMARY KEY (`id_pertanyaan_penilaian_jawab`);

--
-- Indeks untuk tabel `rb_predikat`
--
ALTER TABLE `rb_predikat`
  ADD PRIMARY KEY (`id_predikat`);

--
-- Indeks untuk tabel `rb_psb_aktivasi`
--
ALTER TABLE `rb_psb_aktivasi`
  ADD PRIMARY KEY (`id_aktivasi`);

--
-- Indeks untuk tabel `rb_psb_pendaftaran`
--
ALTER TABLE `rb_psb_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indeks untuk tabel `rb_psb_pendaftaran_saudara`
--
ALTER TABLE `rb_psb_pendaftaran_saudara`
  ADD PRIMARY KEY (`id_saudara`);

--
-- Indeks untuk tabel `rb_quiz_ujian`
--
ALTER TABLE `rb_quiz_ujian`
  ADD PRIMARY KEY (`id_quiz_ujian`);

--
-- Indeks untuk tabel `rb_ruangan`
--
ALTER TABLE `rb_ruangan`
  ADD PRIMARY KEY (`kode_ruangan`);

--
-- Indeks untuk tabel `rb_sesi`
--
ALTER TABLE `rb_sesi`
  ADD PRIMARY KEY (`id_sesi`);

--
-- Indeks untuk tabel `rb_siswa`
--
ALTER TABLE `rb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `rb_sms`
--
ALTER TABLE `rb_sms`
  ADD PRIMARY KEY (`id_sms`);

--
-- Indeks untuk tabel `rb_sms_autoreply`
--
ALTER TABLE `rb_sms_autoreply`
  ADD PRIMARY KEY (`id_autoreply`);

--
-- Indeks untuk tabel `rb_sms_inbox`
--
ALTER TABLE `rb_sms_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rb_sms_outbox`
--
ALTER TABLE `rb_sms_outbox`
  ADD PRIMARY KEY (`id_outbox`);

--
-- Indeks untuk tabel `rb_status_keaktifan`
--
ALTER TABLE `rb_status_keaktifan`
  ADD PRIMARY KEY (`id_status_keaktifan`);

--
-- Indeks untuk tabel `rb_status_kepegawaian`
--
ALTER TABLE `rb_status_kepegawaian`
  ADD PRIMARY KEY (`id_status_kepegawaian`);

--
-- Indeks untuk tabel `rb_status_pernikahan`
--
ALTER TABLE `rb_status_pernikahan`
  ADD PRIMARY KEY (`id_status_pernikahan`);

--
-- Indeks untuk tabel `rb_tahun_akademik`
--
ALTER TABLE `rb_tahun_akademik`
  ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- Indeks untuk tabel `rb_users`
--
ALTER TABLE `rb_users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `rb_users_aktivitas`
--
ALTER TABLE `rb_users_aktivitas`
  ADD PRIMARY KEY (`id_users_aktivitas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `rb_absensi_guru`
--
ALTER TABLE `rb_absensi_guru`
  MODIFY `id_absensi_guru` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rb_absensi_siswa`
--
ALTER TABLE `rb_absensi_siswa`
  MODIFY `id_absensi_siswa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT untuk tabel `rb_agama`
--
ALTER TABLE `rb_agama`
  MODIFY `id_agama` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rb_bank_pertanyaan_essai`
--
ALTER TABLE `rb_bank_pertanyaan_essai`
  MODIFY `id_bank_pertanyaan_essai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `rb_bank_pertanyaan_objektif`
--
ALTER TABLE `rb_bank_pertanyaan_objektif`
  MODIFY `id_bank_pertanyaan_objektif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `rb_bar`
--
ALTER TABLE `rb_bar`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `rb_barcode`
--
ALTER TABLE `rb_barcode`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `rb_elearning`
--
ALTER TABLE `rb_elearning`
  MODIFY `id_elearning` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `rb_elearning_jawab`
--
ALTER TABLE `rb_elearning_jawab`
  MODIFY `id_elearning_jawab` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rb_forum_komentar`
--
ALTER TABLE `rb_forum_komentar`
  MODIFY `id_forum_komentar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `rb_forum_topic`
--
ALTER TABLE `rb_forum_topic`
  MODIFY `id_forum_topic` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rb_golongan`
--
ALTER TABLE `rb_golongan`
  MODIFY `id_golongan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rb_guru_akses`
--
ALTER TABLE `rb_guru_akses`
  MODIFY `id_guru_akses` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `rb_halaman`
--
ALTER TABLE `rb_halaman`
  MODIFY `id_halaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rb_identitas_sekolah`
--
ALTER TABLE `rb_identitas_sekolah`
  MODIFY `id_identitas_sekolah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rb_jadwal_pelajaran`
--
ALTER TABLE `rb_jadwal_pelajaran`
  MODIFY `kodejdwl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `rb_jawaban_essai`
--
ALTER TABLE `rb_jawaban_essai`
  MODIFY `id_jawaban_essai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `rb_jawaban_objektif`
--
ALTER TABLE `rb_jawaban_objektif`
  MODIFY `id_jawaban_objektif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `rb_jenis_kelamin`
--
ALTER TABLE `rb_jenis_kelamin`
  MODIFY `id_jenis_kelamin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_jenis_ptk`
--
ALTER TABLE `rb_jenis_ptk`
  MODIFY `id_jenis_ptk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rb_journal_list`
--
ALTER TABLE `rb_journal_list`
  MODIFY `id_journal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `rb_kategori_elearning`
--
ALTER TABLE `rb_kategori_elearning`
  MODIFY `id_kategori_elearning` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_kategori_quiz_ujian`
--
ALTER TABLE `rb_kategori_quiz_ujian`
  MODIFY `id_kategori_quiz_ujian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_kelompok_mata_pelajaran`
--
ALTER TABLE `rb_kelompok_mata_pelajaran`
  MODIFY `id_kelompok_mata_pelajaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rb_keuangan_bayar`
--
ALTER TABLE `rb_keuangan_bayar`
  MODIFY `id_keuangan_bayar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `rb_keuangan_jenis`
--
ALTER TABLE `rb_keuangan_jenis`
  MODIFY `id_keuangan_jenis` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `rb_kompetensi_dasar`
--
ALTER TABLE `rb_kompetensi_dasar`
  MODIFY `id_kompetensi_dasar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `rb_kurikulum`
--
ALTER TABLE `rb_kurikulum`
  MODIFY `kode_kurikulum` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rb_ledger`
--
ALTER TABLE `rb_ledger`
  MODIFY `id_ledger` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT untuk tabel `rb_menu`
--
ALTER TABLE `rb_menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT untuk tabel `rb_modul`
--
ALTER TABLE `rb_modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `rb_nilai_extrakulikuler`
--
ALTER TABLE `rb_nilai_extrakulikuler`
  MODIFY `id_nilai_extrakulikuler` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `rb_nilai_keterampilan`
--
ALTER TABLE `rb_nilai_keterampilan`
  MODIFY `id_nilai_keterampilan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `rb_nilai_pengetahuan`
--
ALTER TABLE `rb_nilai_pengetahuan`
  MODIFY `id_nilai_pengetahuan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `rb_nilai_pengetahuan_semester`
--
ALTER TABLE `rb_nilai_pengetahuan_semester`
  MODIFY `id_nilai_pengetahuan_semester` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `rb_nilai_pertanyaan_essai`
--
ALTER TABLE `rb_nilai_pertanyaan_essai`
  MODIFY `id_nilai_pertanyaan_essai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rb_nilai_prestasi`
--
ALTER TABLE `rb_nilai_prestasi`
  MODIFY `id_nilai_prestasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `rb_nilai_sikap`
--
ALTER TABLE `rb_nilai_sikap`
  MODIFY `id_nilai_sikap` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `rb_nilai_sikap_semester`
--
ALTER TABLE `rb_nilai_sikap_semester`
  MODIFY `id_nilai_sikap_semester` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rb_nilai_uts`
--
ALTER TABLE `rb_nilai_uts`
  MODIFY `id_nilai_uts` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rb_peringkat`
--
ALTER TABLE `rb_peringkat`
  MODIFY `id_peringkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT untuk tabel `rb_pertanyaan_essai`
--
ALTER TABLE `rb_pertanyaan_essai`
  MODIFY `id_pertanyaan_essai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `rb_pertanyaan_objektif`
--
ALTER TABLE `rb_pertanyaan_objektif`
  MODIFY `id_pertanyaan_objektif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `rb_pertanyaan_penilaian`
--
ALTER TABLE `rb_pertanyaan_penilaian`
  MODIFY `id_pertanyaan_penilaian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rb_pertanyaan_penilaian_jawab`
--
ALTER TABLE `rb_pertanyaan_penilaian_jawab`
  MODIFY `id_pertanyaan_penilaian_jawab` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `rb_predikat`
--
ALTER TABLE `rb_predikat`
  MODIFY `id_predikat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `rb_psb_aktivasi`
--
ALTER TABLE `rb_psb_aktivasi`
  MODIFY `id_aktivasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rb_psb_pendaftaran`
--
ALTER TABLE `rb_psb_pendaftaran`
  MODIFY `id_pendaftaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rb_psb_pendaftaran_saudara`
--
ALTER TABLE `rb_psb_pendaftaran_saudara`
  MODIFY `id_saudara` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `rb_quiz_ujian`
--
ALTER TABLE `rb_quiz_ujian`
  MODIFY `id_quiz_ujian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `rb_sesi`
--
ALTER TABLE `rb_sesi`
  MODIFY `id_sesi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `rb_siswa`
--
ALTER TABLE `rb_siswa`
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3098;

--
-- AUTO_INCREMENT untuk tabel `rb_sms`
--
ALTER TABLE `rb_sms`
  MODIFY `id_sms` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `rb_sms_autoreply`
--
ALTER TABLE `rb_sms_autoreply`
  MODIFY `id_autoreply` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_sms_inbox`
--
ALTER TABLE `rb_sms_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_sms_outbox`
--
ALTER TABLE `rb_sms_outbox`
  MODIFY `id_outbox` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rb_status_keaktifan`
--
ALTER TABLE `rb_status_keaktifan`
  MODIFY `id_status_keaktifan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_status_kepegawaian`
--
ALTER TABLE `rb_status_kepegawaian`
  MODIFY `id_status_kepegawaian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `rb_status_pernikahan`
--
ALTER TABLE `rb_status_pernikahan`
  MODIFY `id_status_pernikahan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_tahun_akademik`
--
ALTER TABLE `rb_tahun_akademik`
  MODIFY `id_tahun_akademik` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20164;

--
-- AUTO_INCREMENT untuk tabel `rb_users`
--
ALTER TABLE `rb_users`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT untuk tabel `rb_users_aktivitas`
--
ALTER TABLE `rb_users_aktivitas`
  MODIFY `id_users_aktivitas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
