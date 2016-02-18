-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2015 pada 03.13
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

--
-- Dumping data untuk tabel `cabang`
--

INSERT INTO `cabang` (`id_cab`, `nama_cab`) VALUES
(75, 'BANDUNG POE'),
(74, 'KENDARI'),
(73, 'SINTANG'),
(71, 'BANGKA'),
(70, 'TARAKAN'),
(68, 'GORONTALO'),
(67, 'PALU'),
(65, 'MADIUN'),
(63, 'DUMAI'),
(61, 'BENGKULU'),
(60, 'RANTAU PRAPAT'),
(59, 'CIMAHI'),
(56, 'MAKASSAR BARAT'),
(55, 'BATAM'),
(54, 'BUKIT TINGGI'),
(53, 'PALEMBANG TIMUR'),
(49, 'KEDIRI'),
(46, 'SEMARANG TIMUR'),
(44, 'BANDUNG BARAT'),
(43, 'SIDOARJO'),
(41, 'KALIBATA'),
(40, 'SAMARINDA'),
(38, 'BEKASI'),
(37, 'BANJARMASIN'),
(36, 'PONTIANAK'),
(35, 'LOMBOK'),
(33, 'BANDA ACEH'),
(32, 'BALIKPAPAN'),
(31, 'PEKANBARU'),
(30, 'JEMBER'),
(29, 'MAKASSAR TIMUR'),
(28, 'SURABAYA BARAT'),
(27, 'MANADO'),
(26, 'MEDAN BARAT'),
(25, 'JAKARTA PUSAT'),
(24, 'JAMBI'),
(23, 'BANDAR LAMPUNG'),
(20, 'PURWOKERTO'),
(19, 'TASIKMALAYA'),
(18, 'MALANG TIMUR'),
(17, 'PADANG'),
(16, 'CIREBON'),
(15, 'PALEMBANG BARAT'),
(14, 'MEDAN TIMUR'),
(13, 'PEMANTANG SIANTAR'),
(12, 'DENPASAR TIMUR'),
(11, 'TANGGERANG'),
(10, 'SURABAYA TIMUR'),
(9, 'YOGYA BARAT'),
(8, 'SOLO'),
(7, 'SEMARANG BARAT'),
(5, 'BOGOR'),
(4, 'JAKARTA SELATAN'),
(2, 'JAKARTA UTARA'),
(1, 'JAKARTA BARAT'),
(0, 'HO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ar`
--

CREATE TABLE IF NOT EXISTS `data_ar` (
  `nip` varchar(10) NOT NULL,
  `id_cab` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `voucher` varchar(15) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `period` date DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14709 ;

--
-- Dumping data untuk tabel `data_ar`
--

INSERT INTO `data_ar` (`nip`, `id_cab`, `tgl`, `voucher`, `deskripsi`, `debit`, `credit`, `remarks`, `id_transaksi`, `period`) VALUES
('80312512', 27, '2015-11-07', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14605, '2015-10-31'),
('80312512', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14606, '2015-10-31'),
('80312512', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14607, '2015-10-31'),
('80312512', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14608, '2015-10-31'),
('81325421', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14609, '2015-10-31'),
('81325421', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14610, '2015-10-31'),
('81325421', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14611, '2015-10-31'),
('81325421', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14612, '2015-10-31'),
('81325421', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14613, '2015-10-31'),
('80453254', 73, '2014-02-24', 'BPV14003210', 'BPV 116321 ADVANCE PERJALANAN DINAS KE KENDARI PD: 1348', 2500000, 0, 'Exp belum kirim', 14614, '2015-10-31'),
('80453254', 73, '2014-03-26', 'EEX14000965', 'BPV 115870 ADVANCE By traveling AOM E2 jan''14', 0, 4443500, 'Exp belum kirim', 14615, '2015-10-31'),
('80453254', 73, '2014-04-29', 'EEX14001564', 'BPV 116321 ADVANCE By traveling ACCM E2 Mar''14 PD:1348', 0, 2557000, 'Exp belum kirim', 14616, '2015-10-31'),
('80453254', 73, '2014-06-30', 'EEX14002235', 'BPV 115870 ADVANCE By kunj. ACCM E2 ke HO Mei''14', 0, 720000, 'Exp belum kirim', 14617, '2015-10-31'),
('80312512', 27, '2013-10-18', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14618, '2015-10-31'),
('80312512', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14619, '2015-10-31'),
('80312512', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14620, '2015-10-31'),
('80312512', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14621, '2015-10-31'),
('81325421', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14622, '2015-10-31'),
('81325421', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14623, '2015-10-31'),
('81325421', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14624, '2015-10-31'),
('81325421', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14625, '2015-10-31'),
('81325421', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14626, '2015-10-31'),
('80453254', 73, '2014-02-24', 'BPV14003210', 'BPV 116321 ADVANCE PERJALANAN DINAS KE KENDARI PD: 1348', 2500000, 0, 'Exp belum kirim', 14627, '2015-10-31'),
('80453254', 73, '2014-03-26', 'EEX14000965', 'BPV 115870 ADVANCE By traveling AOM E2 jan''14', 0, 4443500, 'Exp belum kirim', 14628, '2015-10-31'),
('80453254', 73, '2014-04-29', 'EEX14001564', 'BPV 116321 ADVANCE By traveling ACCM E2 Mar''14 PD:1348', 0, 2557000, 'Exp belum kirim', 14629, '2015-10-31'),
('73540071', 27, '2015-11-07', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14630, '2015-10-31'),
('73540071', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14631, '2015-10-31'),
('73540071', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14632, '2015-10-31'),
('73540071', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14633, '2015-10-31'),
('73540071', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14634, '2015-10-31'),
('73540071', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14635, '2015-10-31'),
('73540071', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14636, '2015-10-31'),
('73540071', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14637, '2015-10-31'),
('73540071', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14638, '2015-10-31'),
('73540071', 73, '2014-02-24', 'BPV14003210', 'BPV 116321 ADVANCE PERJALANAN DINAS KE KENDARI PD: 1348', 2500000, 0, 'Exp belum kirim', 14639, '2015-10-31'),
('73540071', 73, '2014-03-26', 'EEX14000965', 'BPV 115870 ADVANCE By traveling AOM E2 jan''14', 0, 4443500, 'Exp belum kirim', 14640, '2015-10-31'),
('73540071', 73, '2014-04-29', 'EEX14001564', 'BPV 116321 ADVANCE By traveling ACCM E2 Mar''14 PD:1348', 0, 2557000, 'Exp belum kirim', 14641, '2015-10-31'),
('73540071', 73, '2014-06-30', 'EEX14002235', 'BPV 115870 ADVANCE By kunj. ACCM E2 ke HO Mei''14', 0, 720000, 'Exp belum kirim', 14642, '2015-10-31'),
('73540071', 27, '2013-10-18', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14643, '2015-10-31'),
('73540071', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14644, '2015-10-31'),
('73540071', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14645, '2015-10-31'),
('73540071', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14646, '2015-10-31'),
('73540071', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14647, '2015-10-31'),
('73540071', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14648, '2015-10-31'),
('73540071', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14649, '2015-10-31'),
('73540071', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14650, '2015-10-31'),
('73540071', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14651, '2015-10-31'),
('73540071', 73, '2014-02-24', 'BPV14003210', 'BPV 116321 ADVANCE PERJALANAN DINAS KE KENDARI PD: 1348', 2500000, 0, 'Exp belum kirim', 14652, '2015-10-31'),
('73540071', 73, '2014-03-26', 'EEX14000965', 'BPV 115870 ADVANCE By traveling AOM E2 jan''14', 0, 4443500, 'Exp belum kirim', 14653, '2015-10-31'),
('73540071', 73, '2014-04-29', 'EEX14001564', 'BPV 116321 ADVANCE By traveling ACCM E2 Mar''14 PD:1348', 0, 2557000, 'Exp belum kirim', 14654, '2015-10-31'),
('80315504', 27, '2015-11-07', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14655, '2015-10-31'),
('80315504', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14656, '2015-10-31'),
('80315504', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14657, '2015-10-31'),
('80315504', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14658, '2015-10-31'),
('80315504', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14659, '2015-10-31'),
('80315504', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14660, '2015-10-31'),
('80315504', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14661, '2015-10-31'),
('80315504', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14662, '2015-10-31'),
('80315504', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14663, '2015-10-31'),
('80315504', 27, '2015-11-07', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14664, '2015-10-31'),
('80315504', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14665, '2015-10-31'),
('80315504', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14666, '2015-10-31'),
('80315504', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14667, '2015-10-31'),
('80315504', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14668, '2015-10-31'),
('80315504', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14669, '2015-10-31'),
('80315504', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14670, '2015-10-31'),
('80315504', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14671, '2015-10-31'),
('80315504', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14672, '2015-10-31'),
('80315504', 27, '2015-11-07', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14673, '2015-10-31'),
('80315504', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14674, '2015-10-31'),
('80315504', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14675, '2015-01-31'),
('80315504', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14676, '2015-01-31'),
('80315504', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14677, '2015-01-31'),
('80315504', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14678, '2015-01-31'),
('80315504', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14679, '2015-01-31'),
('80315504', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14680, '2015-01-31'),
('80315504', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14681, '2015-01-31'),
('54003254', 27, '2015-11-07', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14682, '2015-10-31'),
('54003254', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14683, '2015-10-31'),
('54003254', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14684, '2015-01-31'),
('54003254', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14685, '2015-01-31'),
('54003254', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14686, '2015-01-31'),
('54003254', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14687, '2015-01-31'),
('54003254', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14688, '2015-01-31'),
('54003254', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14689, '2015-01-31'),
('54003254', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14690, '2015-01-31'),
('80453254', 27, '2015-11-07', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14691, '2015-10-31'),
('80453254', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14692, '2015-10-31'),
('80453254', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14693, '2015-01-31'),
('80453254', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14694, '2015-01-31'),
('80453254', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14695, '2015-01-31'),
('80453254', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14696, '2015-01-31'),
('80453254', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14697, '2015-01-31'),
('80453254', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14698, '2015-01-31'),
('80453254', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14699, '2015-01-31'),
('73540071', 27, '2015-11-07', 'BPV10084891', 'BPV 114768 ADV I NYOMAN DIATMIKA BY MEETING SEPT & OKT 2013 PD:1273', 2100000, 0, 'Exp belum kirim', 14700, '2015-10-31'),
('73540071', 27, '2013-11-07', 'BPV10086283', 'BPV 114938 ADV I NYOMAN DIATMIKA BY KUNJUNGAN CABANG & MEETING DI HO NOP 2013 PD:1283', 7000000, 0, 'Exp belum kirim', 14701, '2015-10-31'),
('73540071', 27, '2013-11-19', 'GJV100051294', 'Disapproved EEX1-21808 Airport lounge PD:1197', 75000, 0, 'Exp belum kirim', 14702, '2015-01-31'),
('73540071', 27, '2013-11-19', 'GJV100051295', 'Disapproved EEX1-21809 Airport lounge PD:1218', 44000, 0, 'Exp belum kirim', 14703, '2015-01-31'),
('73540071', 19, '2013-11-29', 'EEX10022769', 'By perjalanan meeting AOM E2 Okt''13 BPV10084891', 0, 2148000, 'Exp belum kirim', 14704, '2015-01-31'),
('73540071', 19, '2014-01-17', 'BPV14000854', 'BPV 115870 ADV I NYOMAN DIATMIKA BY TRAVELLING KE CAB.27.68 JAN 2014 PD:1334', 5150000, 0, 'Exp belum kirim', 14705, '2015-01-31'),
('73540071', 19, '2014-01-27', 'EEX14000187', 'By traveling AOM E2 Nov''13 BPV10086283', 0, 6594000, 'Exp belum kirim', 14706, '2015-01-31'),
('73540071', 19, '2014-01-27', 'EEX14000188', 'By traveling AOM E2 Des''13', 0, 1690000, 'Exp belum kirim', 14707, '2015-01-31'),
('73540071', 19, '2014-02-19', 'GJV140000928', 'Kor. Saldo Business to Personal', 0, 9592430, 'Exp belum kirim', 14708, '2015-01-31');

-- --------------------------------------------------------

--
-- Stand-in structure for view `summary_data_ar`
--
CREATE TABLE IF NOT EXISTS `summary_data_ar` (
`nip` varchar(10)
,`amount` double
,`period` date
);
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
('73540071', 'stevi', '123456', 3, 'Stevi Fauzani', 'Staff Accounting', 0),
('80312512', 'haryadi', 'haryadi', 3, 'Haryadi', 'Branch Controller', 75),
('80315504', 'kusnadi', '123456', 1, 'Kusnadi', 'Staff Accounting', 0),
('80453254', 'fandy', '123456', 2, 'Fandy Yulianto', 'Manager', 0),
('81325421', 'abdul', 'abdul', 3, 'Abdul Aziz', 'Branch Controller', 73);

-- --------------------------------------------------------

--
-- Struktur untuk view `summary_data_ar`
--
DROP TABLE IF EXISTS `summary_data_ar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `summary_data_ar` AS select `data_ar`.`nip` AS `nip`,(sum(`data_ar`.`debit`) - sum(`data_ar`.`credit`)) AS `amount`,`data_ar`.`period` AS `period` from `data_ar` group by `data_ar`.`nip`,`data_ar`.`period`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
