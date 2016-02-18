-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2015 pada 00.07
-- Versi Server: 5.6.14
-- Versi PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `siar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabang`
--

CREATE TABLE IF NOT EXISTS `cabang` (
  `id_cab` int(11) NOT NULL,
  `nama_cab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `nip` varchar(10) NOT NULL,
  `id_cab` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `voucher` varchar(15) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14400 ;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`nip`, `id_cab`, `tgl`, `voucher`, `deskripsi`, `debit`, `credit`, `remarks`, `id_transaksi`) VALUES
('nip', 0, '0000-00-00', 'voucher', 'deskripsi', 0, 0, 'remarks', 14374),
('80312512', 27, '2013-10-18', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14375),
('80312512', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14376),
('80312512', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14377),
('80312512', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14378),
('81325421', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14379),
('81325421', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14380),
('81325421', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14381),
('81325421', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14382),
('81325421', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14383),
('80453254', 73, '2014-02-24', 'BPV14003210', 'BPV 116321 ADVANCE PERJALANAN DINAS KE KENDARI PD: 1348', 2500000, 0, 'Exp belum kirim', 14384),
('80453254', 73, '2014-03-26', 'EEX14000965', 'BPV 115870 ADVANCE By traveling AOM E2 jan''14', 0, 4443500, 'Exp belum kirim', 14385),
('80453254', 73, '2014-04-29', 'EEX14001564', 'BPV 116321 ADVANCE By traveling ACCM E2 Mar''14 PD:1348', 0, 2557000, 'Exp belum kirim', 14386),
('80453254', 73, '2014-06-30', 'EEX14002235', 'BPV 115870 ADVANCE By kunj. ACCM E2 ke HO Mei''14', 0, 720000, 'Exp belum kirim', 14387),
('80312512', 27, '2013-10-18', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14388),
('80312512', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14389),
('80312512', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14390),
('80312512', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14391),
('81325421', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14392),
('81325421', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14393),
('81325421', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14394),
('81325421', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14395),
('81325421', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14396),
('80453254', 73, '2014-02-24', 'BPV14003210', 'BPV 116321 ADVANCE PERJALANAN DINAS KE KENDARI PD: 1348', 2500000, 0, 'Exp belum kirim', 14397),
('80453254', 73, '2014-03-26', 'EEX14000965', 'BPV 115870 ADVANCE By traveling AOM E2 jan''14', 0, 4443500, 'Exp belum kirim', 14398),
('80453254', 73, '2014-04-29', 'EEX14001564', 'BPV 116321 ADVANCE By traveling ACCM E2 Mar''14 PD:1348', 0, 2557000, 'Exp belum kirim', 14399);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `nip` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `id_cab` int(11) NOT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nip`, `username`, `password`, `level`, `nama`, `jabatan`, `id_cab`) VALUES
('54003254', 'desisri', '123456', 3, 'Desi Sri', 'Branch Controller', 74),
('73540071', 'stevi', '123456', 3, 'Stevi', 'Branch Controller', 73),
('80325462', 'fandy', '123456', 2, 'Fandy Yulianto', 'Manager', 0),
('8053254', 'kusnadi', '123456', 1, 'Kusnadi', 'Staff Accounting', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
