-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 10:31 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_nomor` int(11) NOT NULL,
  `invoice_tanggal` date NOT NULL,
  `invoice_pelanggan` varchar(255) NOT NULL,
  `invoice_kasir` int(11) NOT NULL,
  `invoice_sub_total` int(11) NOT NULL,
  `invoice_diskon` int(11) NOT NULL,
  `invoice_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_nomor`, `invoice_tanggal`, `invoice_pelanggan`, `invoice_kasir`, `invoice_sub_total`, `invoice_diskon`, `invoice_total`) VALUES
(1, 19111200, '2019-11-11', 'Jhony', 1, 18000, 0, 18000),
(2, 19111201, '2019-11-11', 'Samsul Bahri', 1, 25000, 0, 25000),
(3, 19111202, '2019-11-11', 'Diki', 1, 38000, 0, 38000),
(4, 19111203, '2019-11-10', 'Zahra', 1, 238000, 0, 238000),
(5, 19111204, '2019-11-10', 'Sulaiman', 1, 7000, 0, 7000),
(6, 19111205, '2019-11-10', 'Suyono', 1, 15000, 0, 15000),
(7, 19111206, '2019-11-12', 'Ahmad', 3, 76000, 0, 76000),
(8, 19111207, '2019-11-12', 'Donno', 3, 59000, 0, 59000),
(9, 19111508, '2019-11-15', 'Yahya', 1, 25000, 0, 25000),
(10, 19111509, '2019-11-15', 'Burni', 1, 5000, 0, 5000),
(11, 19111510, '2019-11-15', 'Bahnana', 1, 74000, 0, 74000),
(12, 19111911, '2019-11-19', 'sulaiman', 1, 26000, 0, 26000),
(13, 24051612, '2024-05-16', 'hadi', 1, 352100, 0, 352100),
(14, 24052213, '2024-05-22', 'cipto', 1, 130050, 0, 130050),
(15, 24052514, '2024-05-25', 'fajar lim', 1, 476200, 0, 476200),
(16, 24052515, '2024-05-25', 'harlan', 1, 18700, 0, 18700),
(17, 24052516, '2024-05-25', 'arief', 1, 41400, 0, 41400),
(18, 24052517, '2024-05-25', 'samsul', 3, 175000, 0, 175000),
(19, 24052518, '2024-05-25', 'aan', 3, 12300, 0, 12300),
(20, 24052519, '2024-05-25', 'toko makmur', 3, 222200, 0, 222200),
(21, 24052720, '2024-05-27', 'fajar lim', 1, 25400, 0, 25400),
(22, 24053121, '2024-05-31', 'rendi', 1, 185760, 0, 185760),
(23, 24060122, '2024-06-01', 'wawan', 1, 13050, 0, 13050),
(24, 24060223, '2024-06-02', 'wawan', 3, 67700, 0, 67700),
(25, 24062824, '2024-06-28', 'cipto', 1, 83650, 0, 83650),
(26, 24062825, '2024-06-28', 'harlan', 3, 99130, 0, 99130);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `kasir_id` int(11) NOT NULL,
  `kasir_nama` varchar(255) NOT NULL,
  `kasir_username` varchar(255) NOT NULL,
  `kasir_password` varchar(255) NOT NULL,
  `kasir_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`kasir_id`, `kasir_nama`, `kasir_username`, `kasir_password`, `kasir_foto`) VALUES
(1, 'Ani Nurlatifa', 'kasir1', '29c748d4d8f4bd5cbc0f3f60cb7ed3d0', ''),
(3, 'Muhamad Firdos', 'kasir2', '8c86013d8ba23d9b5ade4d6463f81c45', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`) VALUES
(1, 'Lainnya'),
(3, 'KONIMEX'),
(4, 'SIDOMUNCUL'),
(5, 'HEXPHARM JAYA'),
(6, 'TRIFA'),
(8, 'EAGLE INDONESIA'),
(9, 'SOHO'),
(10, 'BINTANG TOEDJOE'),
(11, 'CENDO'),
(12, 'ERELA'),
(13, 'SAKA FARMA'),
(14, 'IFARS'),
(12346, 'KALBE FARMA'),
(12347, 'SANBE'),
(12348, 'DARYA VARIA'),
(12350, 'ROHTO'),
(12353, 'COMBIPHAR'),
(12354, 'PHAROS'),
(12355, 'DEXA MEDIKA'),
(12356, 'SELAMAT SISWANTO'),
(12357, 'BUFA ANEKA'),
(12358, 'MEDICON'),
(12359, 'INTEGRATED HEALT'),
(12360, 'MERCK'),
(12361, 'DKT INTERNATIONAL'),
(12362, 'ULTRA SAKTI'),
(12363, 'KIMIA FARMA'),
(12364, 'GALENIUM'),
(12365, 'MEDIFARMA'),
(12366, 'NOVELL'),
(12367, 'BINDA'),
(12368, 'STERLING'),
(12370, 'DANKOS');

-- --------------------------------------------------------

--
-- Table structure for table `pimpinan`
--

CREATE TABLE `pimpinan` (
  `pimpinan_id` int(11) NOT NULL,
  `pimpinan_nama` varchar(255) NOT NULL,
  `pimpinan_username` varchar(255) NOT NULL,
  `pimpinan_password` varchar(255) NOT NULL,
  `pimpinan_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pimpinan`
--

INSERT INTO `pimpinan` (`pimpinan_id`, `pimpinan_nama`, `pimpinan_username`, `pimpinan_password`, `pimpinan_foto`) VALUES
(1, 'Aris Syamsul Huda', 'pimpinan', '90973652b88fe07d05a4304f0a945de8', '');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `produk_kode` varchar(255) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_satuan` varchar(20) NOT NULL,
  `produk_kategori` int(11) NOT NULL,
  `produk_stok` int(11) NOT NULL,
  `produk_harga_modal` int(11) NOT NULL,
  `produk_harga_jual` int(11) NOT NULL,
  `produk_keterangan` text NOT NULL,
  `produk_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`produk_id`, `produk_kode`, `produk_nama`, `produk_satuan`, `produk_kategori`, `produk_stok`, `produk_harga_modal`, `produk_harga_jual`, `produk_keterangan`, `produk_foto`) VALUES
(6, 'PROD000', 'AMPLODIPINE 10 MG TRIFA', 'Box', 6, 105, 9900, 10900, '', ''),
(7, 'PROD001', 'ACIFAR 200 MG 100 KAPL', 'Box', 14, 80, 43000, 48000, '', ''),
(8, 'PROD002', 'AMPLODIPINE 5 MG TAB TRIFA', 'Box', 6, 120, 9800, 9200, '', ''),
(9, 'PROD003', 'AMOXICILLIN 500 MG 200\"S HJ', 'Box', 5, 33, 81000, 90000, '', ''),
(10, 'PROD004', 'BALSEM LANG 10 GR', 'Btl', 8, 63, 4020, 44000, '', ''),
(11, 'PROD005', 'BALSEM LANG 20 GR', 'Btl', 8, 62, 7200, 8000, '', ''),
(12, 'PROD006', 'BALSEM LANG 40 GR', 'Btl', 8, 69, 14100, 15600, '', ''),
(13, 'PROD007', 'BEJO PACKS125', 'Box', 10, 13, 25200, 28000, '', ''),
(14, 'PROD008', 'ANAKONIDIN 30 ML', 'Flhs', 3, 36, 6300, 7000, '', ''),
(15, 'PROD009', 'ANAKONIDIN 60 ML', 'Flhs', 3, 35, 10400, 11500, '', ''),
(16, 'PROD010', 'ASAM MEFENAMAT 500MG HJ', 'Box', 5, 67, 19150, 21200, '', ''),
(17, 'PROD011', 'ASKAMEX TAB', 'Box', 3, 9, 94200, 104500, '', ''),
(18, 'PROD012', 'ASTORVASTATIN 20 MG DEXA', 'Box', 12355, 31, 70200, 80000, '', ''),
(20, 'PROD013', 'BETASON N KRIM 5 GR', 'Tube', 12363, 480, 13600, 15100, '', '1811547636_Pepsodent.jpg'),
(21, 'PROD014', 'ARBA MENTHOL 20 GR', 'Pcs', 12356, 566, 26400, 29300, '', ''),
(22, 'PROD015', 'ARBA MENTHOL 8 GR', 'Pcs', 12356, 1121, 90360, 10590, '', ''),
(23, 'PROD016', 'CALADINE LOTION  60ML', 'Btl', 12364, 23, 13800, 15400, '', ''),
(24, 'PROD017', 'CALADINE LOTION  95 ML', 'Btl', 12364, 23, 19500, 216400, '', ''),
(25, 'PROD018', 'CALADINE POWDER  60 ML', 'Btl', 12364, 23, 9600, 10600, '', ''),
(26, 'PROD019', 'CURMA PLUS GROW ORANGE 200 ML', 'Flhs', 9, 4, 25400, 28200, '', ''),
(27, 'PROD020', 'CURMA PLUS IMUNS 60 ML', 'Flhs', 9, 6, 16200, 18100, '', ''),
(28, 'PROD021', 'CURMA PLUS SYR LYSINE 60 ML', 'Flhs', 9, 9, 10700, 11960, '', ''),
(29, 'PROD022', 'DECOLGEN TABS 100\"S', 'Box', 12348, 3, 45794, 50800, '', ''),
(30, 'PROD023', 'DECOLSIN CAPS 100\"S', 'Flhs', 12348, 5, 53100, 58990, '', ''),
(31, 'PROD024', 'DIAPET CAPS 12X150', 'Box', 9, 39, 49100, 54500, '', ''),
(32, 'PROD025', 'DIAPET NR 25X45', 'Box', 9, 10, 61200, 67900, '', ''),
(33, 'PROD026', 'ENSTROSTOP 10\"S', 'Box', 12346, 240, 12400, 13800, '', ''),
(34, 'PROD027', 'ENSTROSTOP HERBAL ANAK', 'Box', 12346, 71, 11100, 12300, '', ''),
(35, 'PROD028', 'ERAMOL TAB STR500MG', 'Box', 12, 10, 23100, 25600, '', ''),
(36, 'PROD029', 'ERLAMYCETIN PLUS TETES MATA', 'Btl', 12, 27, 11800, 13200, '', ''),
(37, 'PROD030', 'ERLAMYCETIN TETES TELINGA', 'Btl', 12, 24, 8700, 9600, '', ''),
(38, 'PROD031', 'ESEMAG', 'Box', 4, 26, 7160, 7950, '', ''),
(39, 'PROD032', 'FRESCARE MINYAK KAYU PUTIH', 'Pcs', 12362, 21, 10810, 11800, '', ''),
(40, 'PROD033', 'FRESCARE LAVENDER', 'Pcs', 12362, 54, 10810, 11800, '', ''),
(41, 'PROD034', 'FRESCARE ORIGINAL', 'Pcs', 12362, 834, 10810, 11800, '', ''),
(42, 'PROD035', 'FRESCARE SPLASH FRUITY', 'Pcs', 12362, 51, 10810, 11800, '', ''),
(43, 'PROD036', 'FRESCARE STRONG', 'Pcs', 12362, 1830, 10810, 11800, '', ''),
(44, 'PROD037', 'GPU SEREH 30 ML', 'Btl', 8, 54, 7400, 8300, '', ''),
(45, 'PROD038', 'GPU SEREH 60 ML', 'Btl', 8, 54, 12960, 14390, '', ''),
(46, 'PROD039', 'ENERVON CTAB 30', 'Box', 12365, 5, 35000, 38900, '', ''),
(47, 'PROD040', 'ENERVON C TAB 100', 'Box', 12365, 8, 109000, 121100, '', ''),
(48, 'PROD041', 'ENERVON ACTIVE 30\"S', 'Btl', 12348, 5, 35000, 38900, '', ''),
(49, 'PROD042', 'FARGETIX 100 KAPL 500 MG', 'Box', 14, 50, 25700, 28500, '', ''),
(50, 'PROD043', 'FARIZOL 500 MG 100 KAPL', 'Box', 14, 44, 27400, 30400, '', ''),
(51, 'PROD044', 'FARSIFEN 200 MG 100 KAPL', 'Box', 14, 80, 19900, 22100, '', ''),
(52, 'PROD045', 'FARSIFEN 400 MG 100 KAPL', 'Box', 14, 50, 43900, 38700, '', ''),
(53, 'PROD046', 'FARSIFEN FORTE SUSP 60 ML', 'Flhs', 14, 48, 6100, 6800, '', ''),
(54, 'PROD047', 'FASIDOL 500 MG 100 KAPL', 'Box', 14, 50, 23900, 26500, '', ''),
(55, 'PROD048', 'FASIDOL FORTE 100 KAPL', 'Box', 14, 49, 29900, 33200, '', ''),
(56, 'PROD049', 'FITKOM GUMMY MULTIVITAMINT', 'Box', 9, 10, 42900, 47400, '', ''),
(57, 'PROD050', 'FITKOM HI C GRAPE', 'Btl', 9, 20, 13900, 15500, '', ''),
(58, 'PROD051', 'FITKOM HI C ORANGE', 'Btl', 9, 20, 13900, 15500, '', ''),
(59, 'PROD052', 'FITKOM HI C STRAWBERRY', 'Btl', 9, 20, 13900, 15500, '', ''),
(60, 'PROD053', 'CENDO CATARLENT TETES MATA 15 ML', 'Btl', 11, 50, 28770, 31900, '', ''),
(61, 'PROD054', 'CENDO CATARLENT TETES MATA 5 ML', 'Btl', 11, 50, 21200, 23500, '', ''),
(62, 'PROD055', 'CENDO MYDRIATHYL 0,5% TETES MATA 5 ML', 'Btl', 11, 50, 27100, 30100, '', ''),
(63, 'PROD056', 'CENDO MYDRIATHYL 1% TETES MATA 5 ML', 'Btl', 11, 46, 35900, 39800, '', ''),
(64, 'PROD057', 'CENDO XITROL TETES MATA 5 ML', 'Btl', 11, 50, 25600, 28400, '', ''),
(65, 'PROD058', 'COOLING 5 PLUS ORANGE', 'Btl', 12366, 44, 30600, 34040, '', ''),
(66, 'PROD059', 'KASA BUNDA 16X16', 'Box', 12367, 730, 6200, 6950, '', ''),
(67, 'PROD060', 'KONIDIN', 'Box', 3, 40, 97000, 107700, '', ''),
(68, 'PROD061', 'KOMIX J.NIPIS G.FORMULA B', 'Pcs', 10, 20, 39200, 43500, '', ''),
(69, 'PROD062', 'KOMIX JAHE G.FORMULA BOX', 'Box', 10, 20, 39200, 43500, '', ''),
(70, 'PROD063', 'KOMIX OBH PE', 'Box', 10, 19, 39200, 43500, '', ''),
(71, 'PROD064', 'KOMIX PEPP G. FORMULA BOX', 'Pcs', 10, 20, 39200, 43500, '', ''),
(72, 'PROD065', 'KALPANAX KRIM 10 GR', 'Tube', 12346, 108, 21400, 23800, '', ''),
(73, 'PROD066', 'KALPANAX SALEP 6/12', 'Tube', 12346, 12, 82900, 92100, '', ''),
(74, 'PROD067', 'KALPANAX-K CREAM 5 GR', 'Tube', 12346, 105, 12500, 13800, '', ''),
(75, 'PROD068', 'INSTO COOL 7,5 ML', 'Pcs', 12368, 18, 13100, 14600, '', ''),
(76, 'PROD069', 'INSTO EYE DROP 15 ML', 'Pcs', 12368, 48, 18700, 20800, '', ''),
(77, 'PROD070', 'INSTO EYE DROP 7,5 ML', 'Pcs', 12368, 52, 12200, 13500, '', ''),
(78, 'PROD071', 'INSTO MOIST 7,5 ML', 'Pcs', 12368, 22, 12700, 14100, '', ''),
(79, 'PROD072', 'IMBOOST COUGH KIDS SYR 60 ML', 'Flhs', 9, 4, 21500, 23900, '', ''),
(80, 'PROD073', 'IMBOOST COUGH SYR 60 ML', 'Flhs', 9, 10, 21500, 23900, '', ''),
(81, 'PROD074', 'IMBOOST SYR 120 ML', 'Flhs', 9, 6, 53200, 59000, '', ''),
(82, 'PROD075', 'IMBOOST FORCE 30 KAP', 'Box', 9, 9, 177500, 197000, '', ''),
(83, 'PROD076', 'IMBOOST TABLET 50S ', 'Box', 9, 8, 159400, 176900, '', ''),
(84, 'PROD077', 'MYLANTA 100 TAB/BOX', 'Box', 12359, 24, 68000, 75400, '', ''),
(85, 'PROD078', 'MYLANTA LIQUID 150 CC', 'Btl', 12359, 41, 35600, 39500, '', ''),
(86, 'PROD079', 'MYLANTA LIQUID 50 ML', 'Btl', 12359, 24, 13200, 14700, '', ''),
(87, 'PROD080', 'NATUR E ADVANCED 16\"S', 'Box', 12348, 9, 35500, 39500, '', ''),
(88, 'PROD081', 'NATUR E ADVANCED 32\"S', 'Box', 12348, 6, 67200, 74600, '', ''),
(89, 'PROD082', 'PIL KB ANDALAN', 'Box', 12361, 18, 196800, 218500, '', ''),
(90, 'PROD083', 'NATUR E ADVANCE 32\"S', 'Box', 12348, 8, 79300, 88050, '', ''),
(91, 'PROD084', 'NEO NAPACIN', 'Box', 3, 36, 52000, 57700, '', ''),
(92, 'PROD085', 'MADU KURMA TJ 150 GR ', 'Btl', 12362, 72, 14800, 16500, '', ''),
(93, 'PROD086', 'MADU KURMA TJ 250 GR ', 'Btl', 12362, 31, 22900, 25400, '', ''),
(94, 'PROD087', 'MADU TJ MURNI 150 GR ', 'Btl', 12362, 63, 14800, 16500, '', ''),
(95, 'PROD088', 'MADU TJ MURNI 250 GR ', 'Btl', 12362, 33, 22900, 25400, '', ''),
(96, 'PROD089', 'PROMAG HERBAL 15 ML', 'Box', 12346, 72, 10900, 12200, '', ''),
(97, 'PROD090', 'PROMAG TABLET', 'Box', 12346, 171, 19800, 22000, '', ''),
(98, 'PROD091', 'PUYER NO.16', 'Box', 10, 23, 74900, 83200, '', ''),
(99, 'PROD092', 'NEUROBION', 'Box', 12360, 10, 515500, 572200, '', ''),
(100, 'PROD093', 'MIXAGRIP FLU KALPET25X4', 'Box', 12370, 31, 59600, 66200, '', ''),
(101, 'PROD094', 'MIXAGRIP FLU&BATUK PE', 'Box', 12370, 31, 61800, 68600, '', ''),
(102, 'PROD095', 'MINYAK ANGIN LANG  3 ML', 'Btl', 8, 60, 5000, 5600, '', ''),
(103, 'PROD096', 'MINYAK KAYU PUTIH 12 ML', 'Btl', 8, 36, 15900, 17700, '', ''),
(104, 'PROD097', 'MINYAK ANGIN LANG  6 ML', 'Btl', 8, 60, 8900, 9600, '', ''),
(105, 'PROD098', 'MINYAK KAYU PUTIH 120 ML', 'Btl', 8, 60, 33300, 63900, '', ''),
(106, 'PROD099', 'MINYAK KAYU PUTIH 15 ML', 'Btl', 8, 564, 4900, 5400, '', ''),
(107, 'PROD100', 'MINYAK KAYU PUTIH 30 ML', 'Btl', 8, 250, 8900, 9600, '', ''),
(108, 'PROD101', 'MINYAK KAYU PUTIH 60 ML', 'Btl', 8, 258, 17200, 19100, '', ''),
(109, 'PROD102', 'OBAT TETES MATA ROHTO7 ML', 'Btl', 12350, 420, 9700, 10800, '', ''),
(110, 'PROD103', 'OBHC BF ANAK APEL 60 ML NEW', 'Flhs', 12353, 39, 13800, 15300, '', ''),
(111, 'PROD104', 'OBHC BF ANAK ORANGE 60 ML NEW', 'Flhs', 12353, 42, 13800, 15300, '', ''),
(112, 'PROD105', 'OBHC BF ANAK STRAWBERRY 60 ML ', 'Flhs', 12353, 42, 13800, 15300, '', ''),
(113, 'PROD106', 'OBHC BF MENTHOL 100 ML NEW', 'Flhs', 12353, 82, 16700, 18500, '', ''),
(114, 'PROD107', 'OBHC MENTHOL 60 ML NEW', 'Flhs', 12353, 85, 29060, 32200, '', ''),
(115, 'PROD108', 'SUPERTETRA CAPS120\"S', 'Box', 12348, 28, 143800, 159660, '', ''),
(116, 'PROD109', 'TERMOREX PLUS 60 ML', 'Flhs', 3, 30, 12500, 13800, '', ''),
(117, 'PROD110', 'TOLAK ANGIN CAIR', 'Box', 4, 292, 40100, 44500, '', ''),
(118, 'PROD111', 'TOLAK ANGIN CAIR ANAK BOX', 'Box', 4, 16, 26800, 29800, '', ''),
(119, 'PROD112', 'TOLAK ANGIN CARE', 'Pcs', 4, 59, 9900, 11080, '', ''),
(120, 'PROD113', 'TOLAK ANGIN FLU CAIR BOX', 'Box', 4, 27, 38300, 42500, '', ''),
(121, 'PROD114', 'TOLAK LINU CAIR BOX', 'Box', 4, 30, 11700, 13050, '', ''),
(122, 'PROD115', 'TOLAK LINU MINT CAIR BOX', 'Box', 4, 34, 11700, 12990, '', ''),
(123, 'PROD116', 'V FRESH ORIGINAL 8 ML', 'Pcs', 8, 9, 8400, 9350, '', ''),
(125, 'PROD117', 'sasas', 'Box', 12373, 13, 34000, 36000, 'aaaaa', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_invoice` int(11) NOT NULL,
  `transaksi_produk` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_jumlah` int(11) NOT NULL,
  `transaksi_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_invoice`, `transaksi_produk`, `transaksi_harga`, `transaksi_jumlah`, `transaksi_total`) VALUES
(1, 1, 18, 5000, 2, 10000),
(2, 1, 16, 8000, 1, 8000),
(3, 2, 18, 5000, 1, 5000),
(4, 2, 17, 5000, 2, 10000),
(5, 2, 13, 2000, 5, 10000),
(8, 3, 13, 2000, 3, 6000),
(9, 3, 12, 32000, 1, 32000),
(10, 4, 18, 5000, 2, 10000),
(11, 4, 15, 150000, 1, 150000),
(12, 4, 11, 17000, 1, 17000),
(13, 4, 9, 53000, 1, 53000),
(14, 4, 16, 8000, 1, 8000),
(21, 5, 17, 5000, 1, 5000),
(22, 5, 14, 2000, 1, 2000),
(23, 6, 17, 5000, 3, 15000),
(24, 7, 18, 5000, 8, 40000),
(25, 7, 14, 2000, 2, 4000),
(26, 7, 12, 32000, 1, 32000),
(27, 8, 13, 2000, 5, 10000),
(28, 8, 12, 32000, 1, 32000),
(29, 8, 11, 17000, 1, 17000),
(30, 9, 20, 5000, 3, 15000),
(31, 9, 17, 5000, 2, 10000),
(32, 10, 20, 5000, 1, 5000),
(33, 11, 20, 5000, 14, 70000),
(34, 11, 14, 2000, 2, 4000),
(35, 12, 18, 5000, 2, 10000),
(36, 12, 16, 8000, 2, 16000),
(37, 13, 63, 39800, 1, 39800),
(38, 13, 50, 30400, 6, 182400),
(39, 13, 17, 104500, 1, 104500),
(40, 13, 93, 25400, 1, 25400),
(41, 14, 123, 9350, 1, 9350),
(42, 14, 120, 42500, 1, 42500),
(43, 14, 116, 13800, 1, 13800),
(44, 14, 114, 32200, 2, 64400),
(45, 15, 118, 29800, 12, 357600),
(46, 15, 114, 32200, 3, 96600),
(47, 15, 97, 22000, 1, 22000),
(48, 16, 123, 9350, 2, 18700),
(49, 17, 74, 13800, 3, 41400),
(50, 18, 6, 10900, 15, 163500),
(51, 18, 15, 11500, 1, 11500),
(52, 19, 34, 12300, 1, 12300),
(53, 20, 98, 83200, 1, 83200),
(54, 20, 66, 6950, 20, 139000),
(55, 21, 95, 25400, 1, 25400),
(56, 22, 121, 13050, 2, 26100),
(57, 22, 115, 159660, 1, 159660),
(58, 23, 121, 13050, 1, 13050),
(61, 24, 78, 14100, 2, 28200),
(62, 24, 85, 39500, 1, 39500),
(63, 25, 121, 13050, 3, 39150),
(64, 25, 117, 44500, 1, 44500),
(65, 26, 119, 11080, 1, 11080),
(66, 26, 90, 88050, 1, 88050);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`) VALUES
(1, 'aris', 'admin', '21232f297a57a5a743894a0e4a801fc3', '482937136_avatar.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`kasir_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `pimpinan`
--
ALTER TABLE `pimpinan`
  ADD PRIMARY KEY (`pimpinan_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kasir`
--
ALTER TABLE `kasir`
  MODIFY `kasir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12374;

--
-- AUTO_INCREMENT for table `pimpinan`
--
ALTER TABLE `pimpinan`
  MODIFY `pimpinan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
