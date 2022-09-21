-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for appseminar
CREATE DATABASE IF NOT EXISTS `appseminar` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `appseminar`;

-- Dumping structure for table appseminar.ss_comment
CREATE TABLE IF NOT EXISTS `ss_comment` (
  `id_comment` int(11) NOT NULL AUTO_INCREMENT,
  `id_seminar` bigint(20) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `comment_date` datetime DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `FK_ss_comment_ss_seminar` (`id_seminar`),
  KEY `FK_ss_comment_ss_user` (`iduser`),
  CONSTRAINT `FK_ss_comment_ss_seminar` FOREIGN KEY (`id_seminar`) REFERENCES `ss_seminar` (`id_seminar`),
  CONSTRAINT `FK_ss_comment_ss_user` FOREIGN KEY (`iduser`) REFERENCES `ss_user` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_comment: ~5 rows (approximately)
/*!40000 ALTER TABLE `ss_comment` DISABLE KEYS */;
INSERT INTO `ss_comment` (`id_comment`, `id_seminar`, `iduser`, `comment_date`, `description`) VALUES
	(15, 42, 298, '2020-08-30 02:52:18', 'siap pak'),
	(16, 42, 292, '2020-08-30 02:53:04', 'perbaiki slidenya dl ya'),
	(17, 46, 1, '2020-08-31 23:33:51', 'tidak bisa ka hari senin'),
	(18, 42, 1, '2020-09-01 15:35:05', 'Saya bisa hadi pada tanggal 29 Agustus 2020'),
	(19, 48, 282, '2020-09-03 17:00:38', 'bisa jumat depan?');
/*!40000 ALTER TABLE `ss_comment` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_config
CREATE TABLE IF NOT EXISTS `ss_config` (
  `idconfig` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(200) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`idconfig`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_config: ~4 rows (approximately)
/*!40000 ALTER TABLE `ss_config` DISABLE KEYS */;
INSERT INTO `ss_config` (`idconfig`, `key`, `value`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(1, 'nama_ketua', 'Prof.Dr.Amir Kamal Amir, M.Sc.', '2018-06-05 22:24:24', NULL, '2018-06-05 22:24:24', NULL, 1),
	(2, 'nip_ketua', '196680803 1992021 001', '2018-06-05 22:24:56', NULL, '2018-06-05 22:24:56', NULL, 1),
	(3, 'nama_aplikasi', 'AppSeminar', NULL, NULL, NULL, NULL, 1),
	(4, 'ketua', '28', '2018-06-07 08:49:58', NULL, '2018-06-07 08:49:58', NULL, 1);
/*!40000 ALTER TABLE `ss_config` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_dosen
CREATE TABLE IF NOT EXISTS `ss_dosen` (
  `id_dosen` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `id_prodi` varchar(3) DEFAULT NULL,
  `bidangahli` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `no_wa` varchar(200) NOT NULL,
  `id_sinta` varchar(250) NOT NULL,
  `ttd` text DEFAULT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_dosen: ~36 rows (approximately)
/*!40000 ALTER TABLE `ss_dosen` DISABLE KEYS */;
INSERT INTO `ss_dosen` (`id_dosen`, `nip`, `nama`, `id_prodi`, `bidangahli`, `email`, `no_wa`, `id_sinta`, `ttd`) VALUES
	(10, '197011011998021001', 'Dr. Amran, S.Si., M.Si.', 'H11', 'Spasial', '', '', '', NULL),
	(16, '195707051985032001', 'Prof. Dr. Hj. Aidawayati Rangkuti, MS', 'H01', 'Matematika Terapan', 'aidawayati@unhas.ac.id', '081342297525', '-', ''),
	(17, '196503311989031002', 'Prof. Dr. Moh. Ivan Azis, M.Sc', 'H01', 'Matematika Terapan', 'ivan@unhas.ac.id', '0811466230', '-', NULL),
	(18, '195808021984031002', 'Dr., Budi Nurwahyu, MS                    ', 'H01', 'Analisis', 'budinurwahyu@unhas.ac.id', '081342248141', '-', ''),
	(19, '196412311990032007', 'Dr. Hasmawati, M.Si', 'H01', 'Analisis', 'hasmawati@unhas.ac.id', '082187191743', '-', NULL),
	(20, '196402171991031004', 'Dr. Muhammad Zakir, M.Si', 'H01', 'Analisis', 'zakir@fmipa.unhas.ac.id', '08124153189', '-', ''),
	(21, '196411121987031002', 'Prof., Dr., Jeffry Kusuma', 'H01', 'Matematika Terapan', 'jeffry.kusuma@unhas.ac.id', '089609138878', '-', NULL),
	(22, '196808031992021001', 'Prof. Dr. Amir Kamal Amir, M.Sc.', 'H01', 'Aljabar', 'amirkamir@science.unhas.ac.id', '0895367486257', '-', NULL),
	(23, '196801141994121001', 'Prof. Dr. Syamsuddin Toaha, M.Sc', 'H01', 'Matematika Terapan', 'syamsuddint@unhas.ac.id', '081343756393', '-', NULL),
	(24, '196806011995122001', 'Jusmawati Massalesse, S.Si. M.Si', 'H01', 'Analisis', 'jusmawati@unhas.ac.id', '081342447760', '-', NULL),
	(25, '196509141991031003', 'Drs.  Khaeruddin, MSc', 'H01', 'Matematika Terapan', 'khaeruddin@unhas.ac.id', '0811445725', '-', NULL),
	(26, '196909121993032001', 'Dra. Nur Erawati, M.Si', 'H01', 'Aljabar', 'nurerawati@unhas.ac.id', '085256563916', '-', NULL),
	(27, '196804292002121001', 'Dr. Firman, S.Si, M.Si', 'H09', 'Analisis', '', '', '', NULL),
	(28, '197008072000031002', 'Dr. Nurdin,. S.Si.M.Si', 'H01', 'Aljabar Kombinatorika', 'nurdin1701@unhas.ac.id', '081395190801', '-', NULL),
	(29, '197012311998021001', 'Prof., Dr. Eng., Mawardi, .M.Si', 'H01', 'Analisis', 'mawardi.bahri@unhas.ac.id', '081355533691', '-', NULL),
	(30, '197110031997022001', 'Naimah Aris, S.Si.M.Math.', 'H01', 'Analisis', 'naimah.aris@unhas.ac.id', '085343608859', '-', NULL),
	(31, '197508161999031001', 'Dr. Agustinus Ribal ,M.Sc', 'H01', 'Matematika Terapan', 'aribal@unhas.ac.id', '081342451675', '-', NULL),
	(32, '198009042003122001', 'Dr. Kasbawati, S.Si, M.Si', 'H09', '', '', '', '', NULL),
	(33, '197601022002121001', 'Dr., Hendra  ,S.Si., M.Kom', 'H07', 'Komputer', 'hendra@unhas.ac.id', '081328339398', '-', NULL),
	(34, '197206282005011002', 'Andi Galsan Mahie,S.Si.M.Si', 'H01', 'Matematika Terapan', 'andigalsan@unhas.ac.id', '081355425590', '-', NULL),
	(35, '198505292008121002', 'Dr. Muh. Nur, S.Si., M.Si.', 'H01', 'Analisis', 'muhammadnur@unhas.ac.id', '082187050898', '-', NULL),
	(37, '196307201989031003', 'Dr. Muhammad Hasbi, MSc', 'H07', 'Komputer', 'muhhasbi@unhas.ac.id', '085230581194', '-', NULL),
	(38, '197204231995121001', 'Dr. Eng. Armin  Lawi, S.Si, M.Eng', 'H07', 'Komputer', 'armin@unhas.ac.id', '081355794212', '-', ''),
	(39, '196312311987021011', 'Dr. Diaraya, M.Ak', 'H07', 'Komputasi', 'diaraya@gmail.com', '081342727590', '-', NULL),
	(40, '197204231995121001', 'Andi Muhammad Anwar, S.Si., M.Si', 'H07', 'Aljabar', '-', '082349609878', '-', NULL),
	(42, '198805042019031012', 'Supri bin Hj Amir, S.Si, M.Eng', 'H07', 'Komputer.', 'supriamir88@gmail.com', '082154328893', 'd', '0dce0e283bd7679cb61145dbc6a93723.png'),
	(43, '199104102020053001', 'Edy Saputra R, S.Si, M.Si', 'H08', 'Komputer ', 'hollowdevil37@gmail.com', '081933925384', '-', ''),
	(46, '199102242019044001', 'Rozalina Amran', 'H07', '-', '-', '082292109010', '-', NULL),
	(47, '199110032019031015', 'A. Muh Amil Siddik, S.Si, M.Si', 'H07', 'Matematika Terapan', 'baka.amil@gmail.com', '085256951665', '-', '50ef57c3de5a8aff8582f9d1ce20b0cb.PNG'),
	(49, '199012282018031001', 'Andi Muhammad Anwar, S.Si, M.Si', 'H07', 'Aljabar', '-', '082349609878', '-', NULL),
	(53, '01', 'Musfira  Putri Lukman, S.Kom, M.T', 'H07', 'Internet of Things', '', '', '', NULL),
	(54, '196804292002121001', 'Dr. Firman, M.Si', 'H01', 'Analisis', 'firman@unhas.ac.id', '081343581877', '-', NULL),
	(55, '199102252018016001', 'Nur Hilal A Syahrir, S.Si., M.Si.', 'H07', 'Komputer', '-', '085299333214', '-', NULL),
	(56, '197201171997032002', 'Dr. Nurtiti Sunusi, S.Si., M.Si.', 'H05', 'Statistika', '', '', '', NULL),
	(57, '197312282000031001', 'Andi Kresna Jaya, S.Si., M.Si.', 'H05', 'Statistika', '', '', '', NULL),
	(59, '197011011998021001', 'Dr. Amran, S.Si., M.Si.', 'H08', 'Data Spasial', '-', '081377773015', '-', NULL);
/*!40000 ALTER TABLE `ss_dosen` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_download
CREATE TABLE IF NOT EXISTS `ss_download` (
  `iddownload_list` int(11) NOT NULL AUTO_INCREMENT,
  `nama_download` varchar(200) DEFAULT NULL,
  `link_download` text DEFAULT NULL,
  `sequence` int(10) DEFAULT NULL,
  PRIMARY KEY (`iddownload_list`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_download: ~2 rows (approximately)
/*!40000 ALTER TABLE `ss_download` DISABLE KEYS */;
INSERT INTO `ss_download` (`iddownload_list`, `nama_download`, `link_download`, `sequence`) VALUES
	(56, 'kfafk', 'b92f0c3fcbb1789064f13999282e32f3.jpeg', 16),
	(57, 'Supriamir', 'c67b9ba984ccf6a8e5e4431b075ef120.jpeg', 16);
/*!40000 ALTER TABLE `ss_download` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_jenis_seminar
CREATE TABLE IF NOT EXISTS `ss_jenis_seminar` (
  `id_jenis_seminar` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jenis_seminar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_jenis_seminar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_jenis_seminar: ~3 rows (approximately)
/*!40000 ALTER TABLE `ss_jenis_seminar` DISABLE KEYS */;
INSERT INTO `ss_jenis_seminar` (`id_jenis_seminar`, `nama_jenis_seminar`) VALUES
	(1, 'proposal'),
	(2, 'hasil'),
	(3, 'sidang');
/*!40000 ALTER TABLE `ss_jenis_seminar` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_mahasiswa
CREATE TABLE IF NOT EXISTS `ss_mahasiswa` (
  `id_mahasiswa` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  `nim` varchar(15) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tahun_masuk` date DEFAULT NULL,
  `tahun_lulus` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `id_prodi` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_mahasiswa: ~249 rows (approximately)
/*!40000 ALTER TABLE `ss_mahasiswa` DISABLE KEYS */;
INSERT INTO `ss_mahasiswa` (`id_mahasiswa`, `nama`, `nim`, `jk`, `no_hp`, `alamat`, `tahun_masuk`, `tahun_lulus`, `status`, `id_prodi`, `email`) VALUES
	(27, 'Yolanda Gabyriela Amir', 'H13114301', 'P', '', '', '2014-08-01', NULL, 'Lulus', 'H07', ''),
	(29, 'Muh Sarwan Nur Akbar', 'H13114304', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(30, 'Muhammad Mappanyompa', 'H13114306', 'L', '082191424230', 'Nusa Harapan Permai Blok A6/11', '2014-08-18', '2018-11-30', 'Lulus', 'H07', 'muhmappanyompa.306@gmail.com'),
	(31, 'Muh Al Fajar', 'H13114307', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(33, 'Nurul Hidayah Rahim', 'H13114309', 'P', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(34, 'Nur Aisyah Triyani Bahrudin', 'H13114310', 'P', '085340714203', 'Jalan Toddopuli XV No.5', '2014-08-01', NULL, 'Aktif', 'H07', 'nuraisyahtriyani09@gmail.com'),
	(35, 'Luki Dwiyanto Saputra', 'H13114312', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(36, 'Muhammad Aspar', 'H13114313', 'L', '', '', NULL, NULL, 'Lulus', 'H07', ''),
	(37, 'Oditya Arif Mustari', 'H13114315', 'L', '', '', '2014-08-01', NULL, 'Lulus', 'H07', ''),
	(38, 'Sukmawati', 'H13114316', 'P', '082228793733', 'BTN Antara', '2014-08-25', '2018-12-18', 'Lulus', 'H07', 'sukmawatimukhtar316@gmail.com'),
	(39, 'Nadya Nurlailya N', 'H13114317', 'P', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(40, 'Agussalim Jabbar', 'H13114319', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(41, 'Yayu Aprilika Yunus', 'H13114502', 'P', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(42, 'Hikmawati', 'H13114509', 'P', '085247277742', 'BTN. Bumi Sudiang Raya', NULL, NULL, 'Aktif', 'H07', 'hiykmawaty@gmail.com'),
	(43, 'Syamsuryadi', 'H13114510', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(44, 'Fuad Fadhil Azzar', 'H13114512', 'L', '082249866328', 'jl.sejiwa no.11 Makassar', '2014-08-18', '2018-11-30', 'Aktif', 'H07', 'fuadf.512@gmail.com'),
	(45, 'A Muh Darul Chairun', 'H13114513', 'L', '', '', NULL, NULL, 'Lulus', 'H07', ''),
	(46, 'Nur Nilamyani', 'H13114514', 'P', '081355834676', 'Jl.Onta Lama No.72', '2014-08-01', '2018-12-19', 'Lulus', 'H07', 'nurnilamyani.514@gmail.com'),
	(47, 'Nurfadhila', 'H13114522', 'P', '', '', NULL, NULL, 'Lulus', 'H07', ''),
	(48, 'Dewi Ayu Hartina', 'H13114523', 'P', '', '', NULL, NULL, 'Lulus', 'H07', ''),
	(49, 'Nurul Hardiyanti', 'H13114524', 'P', '085240490895', 'Baji Gau 2 No.59', NULL, NULL, 'Aktif', 'H07', 'nurulhardiyanti.524@gmail.com'),
	(50, 'Firda Nurul Auliah', 'H13114525', 'P', '082193045092', 'JL. Radio II Blok A3 Nomor 4, Telkomas, Makassar', NULL, NULL, 'Lulus', 'H07', 'firdana.525@gmail.com'),
	(51, 'Muhammad Yaumil Agus Awal', 'H13114526', 'L', '', 'JL. Mon. Emisaelan 3, Perm Graha Hasirah Permai Blok C No 4', NULL, NULL, 'Aktif', 'H07', 'yaumildevice@gmail.com'),
	(52, 'Yusriani Mangguali', 'H13114531', 'P', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(53, 'Andi Hajar Aswad', 'H13114532', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(54, 'Fachrin', 'H11115025', 'L', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(55, 'Iswan', 'H13114009', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(58, 'Winanda Taqiyyah Imran', 'H13114501', 'P', '081245397830', 'Jl. Borong Indah No. 17', '2014-08-01', '2018-12-19', 'Aktif', 'H07', 'Winanda.taqiyyah30@gmail.com'),
	(62, 'Firmansyah', 'H13114505', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(63, 'Hasniar', 'H13114324', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(64, 'Nurul Rahma', 'H13114328', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(65, 'Murniati', 'H13114511', 'P', '082259755443', 'Jl. Politeknik', NULL, NULL, 'Aktif', 'H07', 'murniatii.511@gmail.com'),
	(66, 'Mukrimah Ramdayani', 'H13114322', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(67, 'Nadya Nurlailya Ningsih', 'H13114317', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(68, 'St Neneng Komariah', 'H11115016', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(69, 'Eka Devita Sefrianty', 'H11114504', 'P', '082290556908', 'jln. tambasa 2 no 41 perdos unhas', '2014-08-25', '2019-02-26', 'Aktif', 'H01', 'ekha.devita23@gmail.com'),
	(70, 'Wa Dian', 'H11114512', 'P', '082346677529', 'Jl. sunu Kompleks Unhas Baraya', '2014-08-25', '2019-02-28', 'Lulus', 'H01', 'dianchimoka@gmail.com'),
	(71, 'Fitri Amalyah', 'H11115304', 'P', '085242248040', 'Pondok Asri 2, Blok F1/2, Asramahaji, Sudiang', '2015-08-01', NULL, 'Aktif', 'H01', 'fitriamalyah18@gmail.com'),
	(73, 'Ahmad Muchlas Abrar', 'H11114312', 'L', '+62895320893557', 'Jl.  Kotipa VIII BTN KODAM III MAKASSAR', NULL, NULL, 'Aktif', 'H01', 'ahmad.muchlas312@gmail.com '),
	(74, 'Astri ', 'H11115002', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(76, 'Meylina Siruddin', 'H12114024', 'P', '082291571365', 'Jl. La Ode Abdul Azis, Bau-Bau, Sulawesi Tenggara', '2014-08-18', '2018-11-19', 'Lulus', 'H05', 'meylina.h12114024@gmail.com'),
	(78, 'Ahmad Husain', 'H12114018', 'L', '085342286866', 'Perdos Unhas Tamalanrea', '2014-08-25', '2018-11-23', 'Lulus', 'H05', 'ahmadhusain.018@gmail.com'),
	(79, 'Indasari', 'H12113008', 'P', '081342790016', 'jalan sahabat', '2013-08-19', '2018-11-23', 'Lulus', 'H05', 'nsariindah@gmail.com'),
	(80, 'Agit Darwanto', 'H12113321', 'L', '082293101527', 'Jl. WatompamataNo.19', '2013-08-01', '2018-11-23', 'Lulus', 'H05', 'agit.darwanto@gmail.com'),
	(81, 'Nasrullah', 'H11114013', 'L', '082348006708', 'Kajang desa Topejawa', '2014-08-01', NULL, 'Aktif', 'H01', 'nasrullahmipa.013@gmail.com'),
	(82, 'Nurhikmah', 'H12113015', 'P', '087842335692', 'Jl. Sahabat IV', '2013-08-19', '2018-11-30', 'Lulus', 'H05', 'hikmahnur61@gmail.com'),
	(83, 'I Ketut Ariwiguna', 'H11113308', 'L', '082396630387', 'Pondok Dewi, Belakang kampus cokroaminoto perintis', '2013-08-01', NULL, 'Aktif', 'H01', 'ketut.ariwiguna@gmail.com'),
	(84, 'Muh. Ihsan Fatwa', 'H11113316', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(85, 'Muhammad Rusdi An Nahdi', 'H11114506', 'L', '089635016077', 'jl.korban 40.000 jiwa lorong 1 no.56', '2014-08-25', '2018-11-22', 'Lulus', 'H01', 'muhammad.rusdi506@gmail.com'),
	(86, 'Tri Saputra Ungko', 'H11114301', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(88, 'Andi Utari Samsir', 'H11114015', 'P', '085395418108', 'Jalan Politeknik', '2014-08-25', '2018-11-22', 'Lulus', 'H01', 'andiutarisamsir@gmail.com'),
	(89, 'Afif Budi Andy B', 'H11113301', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(92, 'Wardiman', 'H11114021', 'L', '082346630362', 'jl. flamboyan ', '2014-08-25', NULL, 'Aktif', 'H01', 'dimanm.021@gmail.com'),
	(93, 'Gusnawati', 'H11113016', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(94, 'Zulfiarti', 'H11114024', 'P', '081355909273', 'BTN Wesabbe Blok B No.57', '2014-08-25', '2018-11-28', 'Lulus', 'H01', 'zulfiartiwaris@gmail.com'),
	(95, 'Nurfadilah ', 'H11113023', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(96, 'Muhammad Ij\'lal', 'H13114516', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(100, 'Ariani Inda Sari Suaib', 'H11114011', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(103, 'Muh. Ichsan ', 'H11112258', 'L', '081343797046', 'Jalan Lembo No. 174 Makassar', NULL, NULL, 'Aktif', 'H01', 'ichsanmuh493001@gmail.com'),
	(105, 'Anita Amalia Hak Bisyu', 'H13114302', 'P', '085657320894', 'Jl. Radio 3/33 Taman Telkomas ', '2014-08-01', '2020-03-02', 'Lulus', 'H07', 'nita97@ymail.com'),
	(106, 'Andi Budi Maulana', 'H13114321', 'L', '082293456236', 'Puri Baruga Asri Perumahan Bukopin Blok A no 1', '2014-08-01', NULL, 'Aktif', 'H07', 'andibudim.321@gmail.com'),
	(107, 'Muhammad Tamrin Yusuf', 'H11113003', '', '082337832374', 'Dusun Bantimurung', '2013-08-19', '2018-08-13', 'Aktif', 'H01', 'muhtamrin414@gmail.com'),
	(108, 'Miftah Farid', 'H11107009', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(109, 'Muhammad Rifki Nisardi', 'H11115310', 'L', '', '', NULL, NULL, '', 'H01', ''),
	(110, 'Kurniati Anggreni', 'H11115010', 'L', '', '', NULL, NULL, '', 'H01', ''),
	(112, 'Muhammad Rifki Nisardi', 'H11115310', 'L', '', '', NULL, NULL, '', 'H01', ''),
	(113, 'Kurniati Anggreni J', 'H11115010', 'P', '', '', NULL, NULL, '', 'H01', ''),
	(114, 'Wa Dian', 'H11114512', 'P', '', 'Jl. Sunu ', NULL, NULL, '', 'H01', ''),
	(115, 'Kurniati Anggreni J', 'H11115010', 'P', '', '', NULL, NULL, '', 'H01', ''),
	(116, 'Restu Ananda Putra', 'H11115506', 'L', '', '', NULL, NULL, '', 'H01', ''),
	(117, 'Windi Wilda Ningsi', 'H12115313', 'P', '085342789108', 'Perumahan Green Hasanuddin, Jalan Perintis Kemerdekaan VII, Tamalanrea Indah, Makassar.', '2015-08-01', '2019-02-26', 'Aktif', 'H05', 'ningsyhwilda@gmail.com'),
	(118, 'Putri Ainun Syahrani Lasuwu', 'H12115004', 'P', '085757461808', 'Tamalate II No.178', '2015-08-01', '2019-02-22', 'Lulus', 'H05', 'putriainunsyahrani@gmail.com'),
	(119, 'Nurfauziah', 'H12115301', 'P', '082293418357', 'Jl.Kr.Bontotangnga 2 no.37 C', '2015-08-01', NULL, 'Aktif', 'H05', 'nurfauziah_uci@y7mail.com'),
	(121, 'UCI HASDIANA RUSDI', 'H11113015', 'P', '085244087837', 'Jl. Bukit Antang Indah', '2013-08-01', NULL, 'Aktif', 'H01', 'ucihasdianarusdi@gmail.com'),
	(122, 'mildawanti limbo', 'H111113313', 'P', '085288880891', 'btp blok j no.359', '2013-08-01', NULL, 'Aktif', 'H01', 'mildawanti.limbo303@gmail.com'),
	(123, 'Waode Rahmalia Safitri', 'H12115308', 'P', '082191979683', 'Perintis Kemerdekaan VII', '2015-08-01', '2018-12-28', 'Aktif', 'H05', 'rahmaliawaode@gmail.com'),
	(124, 'Bima Satria Yudha Mohammad', 'H13115504', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(125, 'Nur Multazam', 'H13115516', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(126, 'Sri Ayuwati', 'H11113502', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(127, 'Rahmat ', 'H11113025', 'L', '085342223419', 'Jl. Perintis Kemerdekaan 7. no 66 B', NULL, NULL, 'Aktif', 'H01', 'rahmat13h@student.unhas.ac.id'),
	(128, 'Sri Irma Yani', 'H12115305', 'P', '085394495029', 'Jl. Sahabat V', '2015-08-24', '2019-02-25', 'Lulus', 'H05', 'sriirmayani4@gmail.com'),
	(129, 'Erdyansyah Patahuddin', 'H12115501', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(130, 'Achmad Mukhlisin', 'H12114029', 'L', '', 'Jalan Politeknik Unhas', '2014-08-01', NULL, 'Aktif', 'H05', 'achmad.h12114029@gmail.com'),
	(131, 'Amalia Ramadhani', 'H11114306', 'P', '085218103054', 'BTN Wesabbe A 29', '2014-08-25', '2019-01-23', 'Aktif', 'H01', 'amaliara.306@gmail.com'),
	(132, 'Fandy Heribet', 'H11114307', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(133, 'sarina', 'H12115211', '', '082395497557', 'Asrma Ramsiss Unhas', '2012-08-20', NULL, '', 'H05', ''),
	(135, 'Afrizal Ode', 'H11115306', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(136, 'Nurul Hidayah Rahim', 'H13114309', 'P', '082292283008', 'Jl. Perintis Kemerdekaan III, Azizah Residence, B9', '2014-08-01', NULL, 'Aktif', 'H07', 'nuhirahim@gmail.com'),
	(137, 'Nini Adelia Ahmad', 'H11114005', 'P', '081242667177', 'BTN Villa Pattallassang Indah 3 Blok D/22', '2014-08-25', '2020-01-03', 'Aktif', 'H01', 'niniadelia005@gmil.com'),
	(138, 'A. Muh. Darul Chairun', 'H13114513', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(139, 'Titiyanti Rantepasang', 'H13114323', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(140, 'Nini Adelia Ahmad', 'H11114005', 'P', '', '', NULL, NULL, '', 'H01', ''),
	(141, 'Nini Adelia Ahmad', 'H11114005', 'P', '', '', NULL, NULL, '', 'H01', ''),
	(142, 'Puji Puspa Sari', 'H12115701', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(143, 'Sarina', 'H12115311', 'P', '085343619092', 'Jl. Perintis Kemerdekaan Km. 10', '2015-08-24', '2019-03-29', 'Aktif', 'H05', 'sarinar328@gmail.com'),
	(144, 'Trysha Aris', 'H12115506', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(145, 'Nurul Hidayanti A', 'H12115017', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(146, 'Ade Kurniawan Putra Hadi. HN', 'H12115306', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(147, 'Rizaldy Arsyad', 'H12115019', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(148, 'Ratu Masitah', 'H12114027', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(149, 'Nurhardianti Mukhtar', 'H12115011', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(150, 'Sriwijayanti', 'H12115510', 'P', '082394436617', 'Perum Pondok Asri 1 Blok A5 No.1', '2015-08-20', '2019-03-01', 'Lulus', 'H05', 'wijayantisri29@gmail.com'),
	(151, 'Ika Mustika', 'H12115012', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(152, 'Musaidah', 'H12115018', 'P', '0823-4620-3918', 'jalan Sepakat No. 50', NULL, '2019-03-22', 'Aktif', 'H05', 'musaidah.97@gmail.com'),
	(153, 'Hesti Erdayanti', 'H12115507', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(154, 'Elsa Resa Sari', 'H12115309', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(155, 'Andi Navira Indyani', 'H11114009', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(156, 'Nurfahmi Afdhaly', 'H11114019', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(158, 'Wahyudi Bayu S.R.', 'H12115003', 'L', '082291923823', 'Shabiyan Residence Blok F No.3, Gowa', '2015-08-18', '2019-01-23', 'Lulus', 'H05', 'wahyudibayu05@gmail.com'),
	(159, 'Agnes ', 'H11114309', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(160, 'Andi Ria Basnawali', 'H12115020', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(161, 'Restu Ananda Putra', 'H11115506', 'L', '085242726560', 'BTP Blok H BAru No 467', NULL, NULL, 'Lulus', 'H01', 'restuanandaputra01@gmail.com'),
	(162, 'Kurniati Anggreni J', 'H11115010', 'P', '081221588007', 'Jalan AMD. Perumahan Tamangapa Deltamas Blok A2', NULL, '2019-03-01', 'Lulus', 'H01', 'kurniatianggreni02@gmail.com'),
	(163, 'Wardiman Husain', 'H11115017', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(164, 'Juliandi Arif Wijaya', 'H11112269', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(165, 'Amelia Andriani', 'H12115008', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(167, 'Suhastina', 'H13115009', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(169, 'Putri Qarynah', 'H13115001', '', '08987749319', 'Jl. Tamalabba', NULL, NULL, 'Aktif', 'H07', 'pqarynah@gmail.com'),
	(170, 'Sinar Nur Insani', 'H13115010', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(171, 'Arni Nemgsih', 'H12115517', 'P', '', '', NULL, NULL, '', 'H05', ''),
	(172, 'Arni Nengsih  ', 'H12115517', 'P', '', '', NULL, NULL, '', 'H05', ''),
	(177, 'Dekana Eka Ramadhan', 'H12112270', 'L', '085282383613', 'Jl Batua Raya 10B No.15', NULL, NULL, '', 'H05', 'dekana07@gmail.com'),
	(178, 'Nurwasari', 'H12113020', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(179, 'Indah Puspitasari', 'H11114507', 'P', '082191930807', 'Jl. Prof. Abdurahman Basalamah Komp. UMI Blok E No. 13', '2014-08-25', '2018-12-14', 'Lulus', 'H01', 'indahpuspitasari507@gmail.com'),
	(180, 'Rosida R', 'H11114020', 'P', '085342719009', 'BTN Kodam 3 Blok A4 No. 5A (Bumi Laikang Indah)', '2014-08-21', NULL, 'Aktif', 'H01', 'rosida020@gmail.com'),
	(181, 'Ilham', 'H13115008', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(182, 'Ayu Lestari', 'H13115019', 'P', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(183, 'Putri Qary', 'HH', 'P', 'ss', '', NULL, NULL, 'Aktif', 'H07', ''),
	(184, 'Risna Ayu Fitriani', 'H11115023', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(185, 'Muh. Nur Bahri Ramadhan', 'H11115303', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(186, 'Awalia Reski Nurfadillah', 'H11115024', 'P', '082343117071', 'Jalan Sahabat 1', NULL, '2019-05-23', 'Lulus', 'H01', 'awalia.reski.n@gmail.com'),
	(187, 'Asriani Syam', 'H11115505', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(188, 'Rizny', 'H11115008', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(189, 'Muh Hasbi Hasnan Habib', 'H13115302', 'L', '-', '-', '2015-08-01', NULL, 'Aktif', 'H07', '-'),
	(190, 'A. Ika Putriani', 'H11115502', 'P', '085396513487', 'Jalan Perintis Kemerdekaan KM.10', '2015-08-19', NULL, 'Aktif', 'H01', 'andiikaputriani77@gmail.com'),
	(191, 'Hilmi Abyan', 'H12115513', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(192, 'Moh. Said', 'H11112007', 'L', '085299321922', 'Jln. Perintis Kemerdekaan 3, Perumahan Puri Asri', NULL, NULL, 'Aktif', 'H01', 'moh.said.mashur@gmail.com'),
	(193, 'Rini Septiani Musa', 'H11115019', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(194, 'Lia Yunita Sari', 'H11115308', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(195, 'Agreani Mangera Tangkelangi\'', 'H13115312', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(196, 'Muh. Fachrul Riza', 'H13115505', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(197, 'Miftah Farid', 'H13114308', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(198, 'Andi Aryani Hardiyanti', 'H13114519', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(199, 'Muliani', 'H11114023', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(200, 'Yacoba Febriana Helweldery', 'H11112277', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(201, 'Kadek Eva Suyanti', 'H11115006', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(204, 'Nurlaila Dahlan', 'H11115305', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(205, 'Muhammad Taswin', 'H11115307', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(206, 'Abd. Rahman B. Tasrid', 'H11115512', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(207, 'Alfiandhani Suci Mutiara', 'H11115508', 'P', '', 'JL. SKARDA N LR. 3 NO. 42', NULL, NULL, 'Aktif', 'H01', 'alfiandhanism@gmail.com'),
	(208, 'Ahmad Nurdiansyah', 'H11115015', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(209, 'irma', 'H121 15 022', 'P', '081343758658', 'jalan damai pondok poodja', NULL, NULL, '', 'H05', 'irmaimran29@gmail.com'),
	(210, 'Rahma Almira', 'H11114303', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(211, 'irma', 'H12115022', 'P', '081343758658', 'jalan damai pondok poodja', NULL, NULL, 'Aktif', 'H05', 'irmaimran29@gmail.com'),
	(212, 'Meigy', 'H11115504', 'P', '-', '-', NULL, NULL, 'Aktif', 'H01', '-'),
	(213, 'Resky Pratama Danuruary', 'H11115301', 'L', '082243869805', 'Jl. Onta lama lr. 2 no.400 A', '2015-08-01', NULL, 'Aktif', 'H01', 'resky.pratamaa05@gmail.com'),
	(214, 'Suci Barlian Sari', 'H12115025', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(215, 'Devi Yulianti', 'H12114011', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(216, 'Nurul Afifah Hasra Mahmud', 'H12115509', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(217, 'Rizna Arifin', 'H11115509', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(218, 'Ibnu winardy Khaerul', 'H11112263', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(219, 'Aswad Hariri Mangalaeng', 'H11112276', 'L', '085254527510', 'BTN Asal Mula Blok E5 No. 10A, Kel. Tamalanrea Indah, Tamalanrea, Makassar 90245', '2012-08-27', '2019-08-09', 'Lulus', 'H01', 'aswadh2905@gmail.com'),
	(220, 'Munawir Djamaluddin', 'H13114314', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(221, 'Andi Fahruddin Akas', 'H11112285', 'L', '085268474228', 'Jln. Makmur Siwa', NULL, NULL, 'Aktif', 'H01', 'andifahruddinakas@gmail.com'),
	(222, 'Arimbi Gita DR', 'H11112272', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(223, 'Hendra', 'H11112265', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(224, 'Andi Fiqriah Amaliah', 'H13115512', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(225, 'Adrianto Saputra Mansur', 'H13115314', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(226, 'Adrian Saputra', 'H13115513', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(227, 'Ade Amaliah', 'H11115511', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(228, 'Nadia Yulizar Suharto', 'H12115502', 'P', '085387770431', 'kompleks TNI AL dewa kembar c2 no 5', NULL, '2019-08-07', 'Aktif', 'H05', 'nadiaylzr@gmail.com'),
	(229, 'Oki Anand', 'H13114517', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(231, 'Nivel Saputra Wahid', 'H11114310', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(232, 'Setiawan Ahmad Acomario', 'H11114305', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(233, 'Wa ode Hajratul Isti Tasrin', 'H12115503', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(234, 'Rahmadana ', 'H12112255', 'P', '085298000265', 'Kompleks Antang Jaya Blok C.13', '2012-08-29', '2019-08-07', 'Lulus', 'H05', 'rahmadana84@gmail.com'),
	(235, 'Muh. Arjuna Ansar', 'H12112284', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(236, 'Rezki Try Putri', 'H12112105', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(237, 'Indah', 'H12112106', 'P', '081282777634', 'Jalan Unta No.17, Pangkajene, Sidrap', '2012-08-29', '2019-08-08', 'Lulus', 'H05', 'indah12112106@gmail.com'),
	(238, 'Rihul Jannah Djaya', 'H12112280', 'P', '0895327581913', 'Jalan Matahari Perum Polri B/3, Minasatene, Pangkep', '2012-08-29', '2019-08-08', 'Lulus', 'H05', 'annadjaya.rihul@gmail.com'),
	(239, 'Adi Putra', 'H12113035', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(240, 'I Nyoman Suarsandi', 'H12112285', '', '', '', NULL, NULL, 'Aktif', 'H05', ''),
	(241, 'Ilham', 'H13115008', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(242, 'Nurul Hidayah Rahim', 'H13114309', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(243, 'Zidane Kalil Gibran', '33', 'L', '00', '', NULL, NULL, 'Aktif', 'H07', ''),
	(244, 'Yuliana Jao', 'H11116013', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(245, 'Devvy Anggraini Samiun', 'H11116501', 'P', '082151919088', 'Jl. Politehnik , Workshop Unhas', NULL, NULL, 'Aktif', 'H01', 'devvyanggrainisamiun@gmail.com'),
	(246, 'Syamsuddin ', 'H11115013', 'L', '082300015521', 'Masjid Kampus Unhas', NULL, NULL, 'Aktif', 'H01', 'syam.anchu97@gmail.com'),
	(247, 'Alvira Sabri', 'H11116305', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(248, 'Hendrianto', 'H13115315', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(249, 'x', 'x', '', 'x', 'x', '2019-10-25', '2019-10-26', 'Aktif', 'H07', 'x'),
	(250, 'Agung Setia Budi', 'H11116502', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(251, 'Irwan Budiansyah', 'H13114515', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(252, 'Dewi Rini Andriyani', 'H11115009', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(253, 'Mirnawati', 'H11115001', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(254, 'Aprizal Resky', 'H11116310', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(255, 'Imam Kurniawan', 'H11115311', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(256, 'Nur Aisyah Firman', 'H11115315', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(257, 'Nur Aisyah Firman', 'H11115315', 'P', '085399852688', 'Jl. Dg. Ramang ', '2015-08-11', '2020-02-03', 'Aktif', 'H01', 'aisyahnaif@gmail.com'),
	(258, 'Andi Nurisma', 'H11115005', 'P', '082293234194', 'Mandai, Maros', NULL, NULL, 'Aktif', 'H01', 'andinurisma8@gmail.com'),
	(259, 'Annisa Iqranti Putri', 'H11116513', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(260, 'Wahyuningsih Nurmala ', 'H11116012', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(261, 'Sukmawati', 'H11116010', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(262, 'St. Maryam Mahaseng', 'H11116314', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(263, 'Sri Mariana Ulfa', 'H11116515', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(264, 'Nur Padilah', 'H11116011', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(265, 'Tasnia Akil', 'H13116301', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(266, 'Rizka Syahfitri', 'H13116505', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(267, 'Suci Rahmadana Anwar', 'H13116015', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(268, 'Nurmayulina', 'H13116517', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(269, 'St. Hestiana Kadir ', 'H13116504', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(270, 'Ainun Mardiyah Istiqamah', 'H13116507', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(271, 'Berlian Adriani Putri', 'H13116515', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(272, 'Fifi Ainun Lestari', 'H13116017', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(274, 'Hajrah', 'H13116012', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(275, 'Nuri Iza Afidati', 'H11116015', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(276, 'Nuri Iza Afidati', 'H11116015', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(277, 'Nurma Diyanni Mulya', 'H11116304', '', '', '', NULL, NULL, '', 'H01', ''),
	(278, 'Nurma Diyanni Mulya', 'H11116304', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(279, 'Andi Sayudi S', 'H11113010', 'L', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(280, 'Andi Sayudi S', 'H11113010', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(281, 'Ari Rusli Riyadi', 'H11113007', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(282, 'Mutawally Syarawy', 'H13116524', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(284, 'Hadjrah', 'H11116023', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(287, 'Nisrina Syadza Dewanty', 'H13116514', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(288, 'Sulaeman', 'H13116002', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(289, 'Muhammad Akbar Atori', 'H13116503', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(290, 'Muh. Fikri Satria Amdani', 'H13116501', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(291, 'Deo Valiandro M.', 'H13116306', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(292, 'Fadelyah Eka Anjani Sukmana', 'H11116503', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(293, 'Rabiyatul Adawiyah', 'H11116018', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(294, 'Karla Yusmita Salipadang ', 'H13116521', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(295, 'Hasriah', 'H11116004', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(296, 'Nurul Rasyidah Ripuji Mattengnga', 'H11116512', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(297, 'Marselia Ghanyyu Wahdini', 'H13116516', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(299, 'Indah Hamzah', 'H11116311', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(300, 'Asti Andriani A', 'H11116016', '', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(302, 'Muhammad Reza Darmadi', 'H13116506', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(303, 'Adhityo Nugraha', 'H13114325', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(304, 'Susilawati', 'H13116008', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(305, 'Supri Amir', 'H11107009', 'L', '', '', NULL, NULL, 'Aktif', 'H01', ''),
	(310, 'Bagas Prasetyo', 'H13116308', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(311, 'Hades', 'H11109259', 'L', '085256951665', 'BTN PALU CIPTA NUGRAHA BLOK G 13', '2017-07-05', NULL, 'Aktif', 'H01', 'es.campur91@gmial.com'),
	(312, 'Muh. Ilham', 'H11109260', 'L', '081354732327', 'btn palu cipta', NULL, NULL, 'Aktif', 'H01', 'm.ilham@gmail.com'),
	(316, 'Rahmawati', 'H13115306', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(317, 'supri', 'H11107009', 'L', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(318, 'Irmayani', 'H13115022', 'P', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(319, 'Grathya Sri Mulyani', 'H13116522', '', '', '', NULL, NULL, 'Aktif', 'H07', ''),
	(320, 'Ilyas', 'H11116017', '', '', '', NULL, NULL, 'Aktif', 'H01', '');
/*!40000 ALTER TABLE `ss_mahasiswa` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_nilai
CREATE TABLE IF NOT EXISTS `ss_nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `bobot_nilai` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_nilai: ~10 rows (approximately)
/*!40000 ALTER TABLE `ss_nilai` DISABLE KEYS */;
INSERT INTO `ss_nilai` (`id_nilai`, `nilai_huruf`, `bobot_nilai`) VALUES
	(1, 'A', 4.00),
	(2, 'A-', 3.75),
	(3, 'B+', 3.50),
	(4, 'B', 3.00),
	(5, 'B-', 2.75),
	(6, 'C+', 2.50),
	(7, 'C', 2.00),
	(8, 'D', 1.00),
	(9, 'E', 0.00),
	(10, 'T', 0.00);
/*!40000 ALTER TABLE `ss_nilai` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_pembimbing
CREATE TABLE IF NOT EXISTS `ss_pembimbing` (
  `id_pembimbing` int(11) NOT NULL AUTO_INCREMENT,
  `id_mahasiswa` bigint(20) unsigned DEFAULT NULL,
  `id_pembimbing_utama` int(11) DEFAULT NULL,
  `id_pembimbing_pertama` int(11) DEFAULT NULL,
  `id_pembimbing_kedua` int(11) DEFAULT NULL,
  `id_semester` int(11) DEFAULT NULL,
  `no_sk` varchar(200) DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `judul` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_pembimbing`),
  KEY `FK_ss_pembimbing_ss_mahasiswa` (`id_mahasiswa`),
  KEY `FK_ss_pembimbing_ss_dosen_2` (`id_pembimbing_pertama`),
  KEY `FK_ss_pembimbing_ss_dosen_3` (`id_pembimbing_kedua`),
  KEY `FK_ss_pembimbing_ss_dosen` (`id_pembimbing_utama`),
  CONSTRAINT `FK_ss_pembimbing_ss_dosen` FOREIGN KEY (`id_pembimbing_utama`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_pembimbing_ss_dosen_2` FOREIGN KEY (`id_pembimbing_pertama`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_pembimbing_ss_dosen_3` FOREIGN KEY (`id_pembimbing_kedua`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_pembimbing_ss_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `ss_mahasiswa` (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_pembimbing: ~36 rows (approximately)
/*!40000 ALTER TABLE `ss_pembimbing` DISABLE KEYS */;
INSERT INTO `ss_pembimbing` (`id_pembimbing`, `id_mahasiswa`, `id_pembimbing_utama`, `id_pembimbing_pertama`, `id_pembimbing_kedua`, `id_semester`, `no_sk`, `tgl_sk`, `judul`) VALUES
	(211, 265, 38, 42, NULL, 8, '2037/UN4.11.7/TD.06/2020', '2020-04-13', 'Pengembangan Algoritma Smith Waterman Menggunakan Metode Pemrograman Dinamis untuk Mengidentifikasi Kemiripan Protein'),
	(213, 266, 38, 42, NULL, 8, '2060/UN4.11.7/TD.06/2020', '2020-04-15', 'Pengembangan Algoritma Needleman-Wunsch Menggunakan Metode Pemrograman Dinamis untuk Mengidentifikasi Kemiripan Protein'),
	(214, 267, 38, 42, NULL, 8, '2062/UN4.11.7/TD.06/2020', '2020-04-15', 'Prediksi Interaksi Senyawa-Protein Menggunakan Nearest Profile Method dan Weighted Profile Method'),
	(215, 268, 38, 42, NULL, 8, '2064/UN4.11.7/TD.06/2020', '2020-04-15', 'Prediksi Interaksi Senyawa-Protein Menggunakan Metode Bipartite Graph Learning'),
	(218, 269, 33, 42, NULL, 8, '2110/UN4.11.7/TD.06/2020', '2020-04-21', 'Analisis Perbandingan Metode Artificial Neural Network dan Regresi Linear Berganda Untuk Memprediksi Harga Jual Rumah'),
	(219, 270, 33, 42, NULL, 8, '2154/UN4.11.7/TD.06/2020', '2020-04-24', 'Klasifikasi Citra Menggunakan Convolutional Neural Network Dengan Arsitektur Inception v4 Berbasis Android Pada Dataset Flower Recognition'),
	(220, 271, 33, 42, NULL, 8, '2156/UN4.11.7/TD.06/2020', '2020-04-24', 'Klasifikasi Lip Reading Menggunakan Algoritma Convolutional Neural Network Dengan Arsitektur VGG-16 Net'),
	(221, 272, 38, 53, NULL, 8, '2200/UN4.11.7/TD.06/2020', '2020-04-30', 'Rancangan Bangun Sistem Monitoring Temperature Penghasil Air Tawar dan Garam dari Air Laut Dengan Efek Rumah Kaca Tipe Penutup Limas Berbasis Internet of Things'),
	(222, 274, 38, 53, NULL, 8, '2204/UN4.11.7/TD.06/2020', '2020-04-30', 'Portable Monitoring Sistem Infus Otomatis Berbasis Mikrokontroller dan Cloud Storage'),
	(223, 275, 25, 39, NULL, 8, '2206/UN4.11.7/TD.06/2020', '2020-04-30', 'Penerapan Metode Material Requirement Planning (MRP) Dalam Upaya Pengendalian Persediaan Bahan Baku Tempe di UKM Az-Zahrah Bone'),
	(226, 278, 30, 20, NULL, 8, '2271/UN4.11.7/TD.06/2020', '2020-05-12', 'Keberadaan Dan Ketunggalan Solusi Lemah Model Matematika Transport CO2 Pada Proses Karbonasi Beton'),
	(227, 280, 34, 30, NULL, 8, '2311/UN4.11.7/TD.06/2020', '2020-05-12', 'Simulasi Numerik Aliran Akibat Keruntuhan Bendungan dengan Menggunakan Metode Volume Hingga Lax-Friedrichs'),
	(228, 281, 38, 30, NULL, 8, '2425/UN4.11.7/TD.06/2020', '2020-05-26', 'Implementasi FFT dan HPS Dalam Mendeteksi Nada Dasar Gitar Akustik Menggunakan MATLAB'),
	(229, 282, 33, 43, NULL, 8, '2750/UN4.11.7/TD.06/2020', '2020-06-12', 'Penerapan Algoritma A*Search pada Navigation Mesh sebagai Metode Pathfinding Game 3D Unity'),
	(230, 284, 16, 39, NULL, 8, '2801/UN4.11.7/TD.06/2020', '2020-06-15', 'Pengukuran Nilai Risiko pada Portofolio dengan Simulasi Monte Carlo (Studi Kasus: Harga Penutupan Saham Harian PT. Japfa Comfeed Indonesia Tbk (JPFA) dan PT. Indofood Sukses Makmur Tbk (INDF) Tahun 2019'),
	(231, 287, 38, 42, NULL, 8, '2827/UN4.11.7/TD.06/2020', '2020-06-17', 'Implementasi Convolutional Neural Network dengan Arsitektur ResNet dalam Klasifikasi Aksara Lontara Tulisan Tangan'),
	(232, 288, 38, 39, NULL, 8, '2837/UN4.11.7/TD.06/2020', '2020-06-18', 'Implementasi Filter Spasial Linear pada Video Stream Menggunakan FPGA Hardware Accelerator'),
	(233, 289, 38, 53, NULL, 8, '2888/UN4.11.7/TD.06/2020', '2020-06-22', 'Sistem Monitoring dan Kontrol Sirkulasi Air Tanaman Hidroponik Selada Berbasis Internet of Things pada Sistem Deep Flow Technique'),
	(234, 290, 38, 53, NULL, 8, '3012/UN4.11.7/TD.06/2020', '2020-06-30', 'Sistem Identifikasi Kendaraan pada Pemarkiran dengan Pengenalan Citra Pelat dan Pembacaan RFID'),
	(235, 291, 38, 33, NULL, 8, '3016/UN4.11.7/TD.06/2020', '2020-06-30', 'Pengamanan Jawaban Ujian Computer Basid Test (CBT) dengan menggunakan Algoritma RSA dan Fungsi HMAC berbasis Algoritma SHA-1'),
	(236, 292, 28, 22, NULL, 8, '3085/UN4.11.7/TD.06/2020', '2020-07-02', 'Dimensi Metrik Graf Kincir dengan Pola K1 + mW<span style="font-size: 10.8333px;">n</span>'),
	(240, 293, 25, 39, NULL, 8, '3129/UN4.11.7/TD.06/2020', '2020-07-06', 'Analisis Penilaian Kinerja Black-Litterman Menggunakan Sharpe dan Treynor pada Portofolio Reksa Dana'),
	(241, 294, 38, 33, NULL, 8, '3206/UN4.11.7/TD.06/2020', '2020-07-10', 'Rancang Bangun Aplikasi Library Management Berbasis QR Code dan Cloud Firebase'),
	(242, 295, 16, 24, NULL, 8, '3527/UN4.11.7/TD.06/2020', '2020-07-20', 'Penerapan Metode Pendekatan Eksponensial dan Titik Kosong dalam Mengoptimalkan Pendistribusian Beras di Kabupaten Sidrap Sulawesi Selatan'),
	(243, 296, 25, 33, NULL, 8, '3534/UN4.11.7/TD.06/2020', '2020-07-20', 'Optimasi Penjadwalan Mata Kuliah dengan Pendekatan Column Generation'),
	(244, 297, 38, 33, NULL, 8, '3687/UN4.11.7/TD.06/2020', '2020-07-23', 'Implementasi Metode Bayesin Network untuk Klasifikasi Jamur dapat Dikonsumsi dan Jamur Beracun'),
	(245, 299, 16, 33, NULL, 8, '3693/UN4.11.7/TD.06/2020', '2020-07-23', 'Perbandingan Metode Russell dan Least Cost Dalam Model Transportasi pada Perusahaan Minuman (Studi Kasus: PT.Coca-cola Botling Indonesia)'),
	(246, 300, 23, 10, NULL, 8, '3696/UN4.11.7/TD.06/2020', '2020-07-23', 'Analisis Pengaruh Rasio Keuangan Terhadap Profitabilitas Bank Umum Konvensional dan Bank Umum Syariah di Indonesia Menggunakan Model Regresi Linear Berganda'),
	(247, 302, 33, 39, NULL, 8, '3722/UN4.11.7/TD.06/2020', '2020-07-23', 'Perbandingan Model Poisson Regression, Negative Binomial Regression Neural Networks pada Kasus Demam Berdarah Dengue (DBD) di Sulawesi Selatan'),
	(248, 303, 37, 42, NULL, 8, '14', '2020-07-23', 'IMPLEMENTASI DATA MINING MENGGUNAKAN ALGORITMA C4.5 UNTUK MEMPREDIKSI KEPUASAN PELANGGAN GOJEK'),
	(249, 304, 38, 53, NULL, 8, '3812/UN4.11.7/TD.06/2020', '2020-07-24', 'Rancang Bangun Modul Mikrokontroller Online Berbasis Mobile Sebagai Media Pembelajaran Pembacaan Ekg Untuk Siswa'),
	(251, 310, 33, 42, NULL, 9, '4189/UN4.11.7/TD.06/2020', '2020-07-30', 'Perbandingan Metode-Metode Klasifikasi Satu Kelas Pada Kelas Tidak Seimbang'),
	(252, 311, 47, 42, NULL, 9, '1234/4566UH/2020', '2020-08-01', 'Keberadaan Global Atraktor pada Ruang Hilbert'),
	(254, 312, 47, 43, NULL, 9, '1234/UH.8/2020', '2020-08-24', 'Kestabilan Populasi dengan Menggunakan Prinsip Termodinamika'),
	(259, 316, 33, 47, NULL, 9, '4853/UN4.11.7/TD.06/2020', '2020-08-31', 'Perancangan Augmented Reality 3D Denah, Informasi Ruang dan Benda Bersejarah pada Benteng Fort Rotterdam berbasis Android'),
	(263, 320, 25, 33, NULL, 9, '5045/UN4.11.7/TD.06/2020', '2020-09-07', 'Perbandingan Algoritma Hill Climbing dan Algoritma Ant Colony dalam Penentuan Rute Optimum (Studi kasus: Penentuan Rute Optimum Pariwisata di Kabupaten Tana Toraja)');
/*!40000 ALTER TABLE `ss_pembimbing` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_penguji
CREATE TABLE IF NOT EXISTS `ss_penguji` (
  `id_penguji` int(11) NOT NULL AUTO_INCREMENT,
  `id_mahasiswa` bigint(20) unsigned DEFAULT NULL,
  `no_sk_penguji` varchar(255) DEFAULT NULL,
  `id_penguji_1` int(11) DEFAULT NULL,
  `id_penguji_2` int(11) DEFAULT NULL,
  `id_penguji_3` int(11) DEFAULT NULL,
  `id_penguji_labmath` int(11) DEFAULT NULL,
  `id_penguji_labstath` int(11) DEFAULT NULL,
  `id_penguji_labkom` int(11) DEFAULT NULL,
  `id_semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_penguji`),
  KEY `FK_ss_penguji_ss_mahasiswa` (`id_mahasiswa`),
  KEY `FK_ss_penguji_ss_dosen` (`id_penguji_1`),
  KEY `FK_ss_penguji_ss_dosen_2` (`id_penguji_2`),
  KEY `FK_ss_penguji_ss_dosen_3` (`id_penguji_3`),
  CONSTRAINT `FK_ss_penguji_ss_dosen` FOREIGN KEY (`id_penguji_1`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_penguji_ss_dosen_2` FOREIGN KEY (`id_penguji_2`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_penguji_ss_dosen_3` FOREIGN KEY (`id_penguji_3`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_penguji_ss_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `ss_mahasiswa` (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_penguji: ~39 rows (approximately)
/*!40000 ALTER TABLE `ss_penguji` DISABLE KEYS */;
INSERT INTO `ss_penguji` (`id_penguji`, `id_mahasiswa`, `no_sk_penguji`, `id_penguji_1`, `id_penguji_2`, `id_penguji_3`, `id_penguji_labmath`, `id_penguji_labstath`, `id_penguji_labkom`, `id_semester`) VALUES
	(176, 265, '2038/UN4.11.7/TD.06/2020', 37, 39, NULL, NULL, NULL, NULL, 8),
	(177, 266, '2061/UN4.11.7/TD.06/2020', 33, 39, NULL, NULL, NULL, NULL, 8),
	(178, 267, '2063/UN4.11.7/TD.06/2020', 37, 33, NULL, NULL, NULL, NULL, 8),
	(179, 268, '2065/UN4.11.7/TD.06/2020', 33, 37, NULL, NULL, NULL, NULL, 8),
	(180, 269, '2111/UN4.11.7/TD.06/2020', 39, 43, NULL, NULL, NULL, NULL, 8),
	(181, 270, '2155/UN4.11.7/TD.06/2020', 39, 47, NULL, NULL, NULL, NULL, 8),
	(182, 271, '2157/UN4.11.7/TD.06/2020', 38, 47, NULL, NULL, NULL, NULL, 8),
	(183, 272, '2201/UN4.11.7/TD.06/2020', 39, 47, NULL, NULL, NULL, NULL, 8),
	(184, 274, '2205/UN4.11.7/TD.06/2020', 33, 42, NULL, NULL, NULL, NULL, 8),
	(186, 275, '2207/UN4.11.7/TD.06/2020', 31, 30, NULL, NULL, NULL, NULL, 8),
	(187, 278, '2272/UN4.11.7/TD.06/2020', 29, 27, NULL, NULL, NULL, NULL, 8),
	(188, 280, '2312/UN4.11.7/TD.06/2020', 32, 16, NULL, NULL, NULL, NULL, 8),
	(189, 281, '2426/UN4.11.7/TD.06/2020', 32, 33, NULL, NULL, NULL, NULL, 8),
	(190, 282, '2751/UN4.11.7/TD.06/2020', 38, 42, NULL, NULL, NULL, NULL, 8),
	(191, 284, '2804/UN4.11.7/TD.06/2020', 24, 32, NULL, NULL, NULL, NULL, 8),
	(192, 287, '2828/UN4.11.7/TD.06/2020', 33, 55, NULL, NULL, NULL, NULL, 8),
	(193, 288, '2838/UN4.11.7/TD.06/2020', 33, 55, NULL, NULL, NULL, NULL, 8),
	(194, 289, '2889/UN4.11.7/TD.06/2020', 33, 42, NULL, NULL, NULL, NULL, 8),
	(195, 290, '3013/UN4.11.7/TD.06/2020', 33, 55, NULL, NULL, NULL, NULL, 8),
	(196, 291, '3018/UN4.11.7/TD.06/2020', 37, 47, NULL, NULL, NULL, NULL, 8),
	(197, 292, '3085/UN4.11.7/TD.06/2020', 18, 27, NULL, NULL, NULL, NULL, 8),
	(198, 293, '3130/UN4.11.7/TD.06/2020', 21, 26, NULL, NULL, NULL, NULL, 8),
	(199, 294, '3207/UN4.11.7/TD.06/2020', 37, 40, NULL, NULL, NULL, NULL, 8),
	(200, 295, '3531/UN4.11.7/TD.06/2020', 34, 10, NULL, NULL, NULL, NULL, 8),
	(201, 296, '3538/UN4.11.7/TD.06/2020', 27, 32, NULL, NULL, NULL, NULL, 8),
	(203, 297, '3690/UN4.11.7/Td.06/2020', 37, 40, NULL, NULL, NULL, NULL, 8),
	(205, 299, '3695/UN4.11.7/TD.06/2020', 30, 31, NULL, NULL, NULL, NULL, 8),
	(206, 300, '3697/UN4.11.7/TD.06/2020', 32, 31, NULL, NULL, NULL, NULL, 8),
	(207, 302, '3724/UN4.11.7/TD.06/2020', 37, 55, NULL, NULL, NULL, NULL, 8),
	(208, 303, '33', 39, 43, NULL, NULL, NULL, NULL, 8),
	(209, 304, '3814/UN4.11.7/TD.06/2020', 33, 40, NULL, NULL, NULL, NULL, 8),
	(210, 310, '4192/UN4.11.7/TD.06/2020', 38, 40, NULL, NULL, NULL, NULL, 9),
	(211, 311, '23345/123171/2020', 43, 40, NULL, NULL, NULL, NULL, 9),
	(214, 312, '12123/123123/2020', 40, 42, NULL, NULL, NULL, NULL, 9),
	(217, 34, '12', 47, 47, NULL, NULL, NULL, NULL, 9),
	(218, 29, '1', 42, 42, NULL, NULL, NULL, NULL, 9),
	(219, 316, '4855/UN4.11.7/TD.06/2020', 38, 55, NULL, NULL, NULL, NULL, 9),
	(220, 318, '1443/2312/2020', 42, 43, NULL, NULL, NULL, NULL, 9),
	(221, 320, '5046/UN4.11.7/TD.06/2020', 21, 31, NULL, NULL, NULL, NULL, 9);
/*!40000 ALTER TABLE `ss_penguji` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_prodi
CREATE TABLE IF NOT EXISTS `ss_prodi` (
  `id_prodi` varchar(5) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_prodi: ~3 rows (approximately)
/*!40000 ALTER TABLE `ss_prodi` DISABLE KEYS */;
INSERT INTO `ss_prodi` (`id_prodi`, `nama`) VALUES
	('H01', 'Matematika'),
	('H07', 'Ilmu Komputer'),
	('H08', 'Ilmu Aktuaria');
/*!40000 ALTER TABLE `ss_prodi` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_ralat_pembimbing
CREATE TABLE IF NOT EXISTS `ss_ralat_pembimbing` (
  `id_ralat_pembimbing` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembimbing` int(11) DEFAULT NULL,
  `id_mahasiswa` bigint(20) unsigned DEFAULT NULL,
  `id_pembimbing_utama` int(11) DEFAULT NULL,
  `id_pembimbing_pertama` int(11) DEFAULT NULL,
  `id_pembimbing_kedua` int(11) DEFAULT NULL,
  `id_semester` int(11) DEFAULT NULL,
  `no_sk` varchar(200) DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `judul` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_ralat_pembimbing`),
  KEY `FK_ss_ralat_pembimbing_ss_pembimbing` (`id_pembimbing`),
  KEY `FK_ss_ralat_pembimbing_ss_mahasiswa` (`id_mahasiswa`),
  KEY `FK_ss_ralat_pembimbing_ss_dosen` (`id_pembimbing_utama`),
  KEY `FK_ss_ralat_pembimbing_ss_dosen_2` (`id_pembimbing_pertama`),
  KEY `FK_ss_ralat_pembimbing_ss_dosen_3` (`id_pembimbing_kedua`),
  KEY `FK_ss_ralat_pembimbing_ss_semester` (`id_semester`),
  CONSTRAINT `FK_ss_ralat_pembimbing_ss_dosen` FOREIGN KEY (`id_pembimbing_utama`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_ralat_pembimbing_ss_dosen_2` FOREIGN KEY (`id_pembimbing_pertama`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_ralat_pembimbing_ss_dosen_3` FOREIGN KEY (`id_pembimbing_kedua`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_ralat_pembimbing_ss_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `ss_mahasiswa` (`id_mahasiswa`),
  CONSTRAINT `FK_ss_ralat_pembimbing_ss_pembimbing` FOREIGN KEY (`id_pembimbing`) REFERENCES `ss_pembimbing` (`id_pembimbing`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ss_ralat_pembimbing_ss_semester` FOREIGN KEY (`id_semester`) REFERENCES `ss_semester` (`id_semester`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_ralat_pembimbing: ~0 rows (approximately)
/*!40000 ALTER TABLE `ss_ralat_pembimbing` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss_ralat_pembimbing` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_ralat_penguji
CREATE TABLE IF NOT EXISTS `ss_ralat_penguji` (
  `id_ralat_penguji` int(11) NOT NULL AUTO_INCREMENT,
  `id_penguji` int(11) DEFAULT NULL,
  `id_mahasiswa` bigint(20) unsigned DEFAULT NULL,
  `no_sk_penguji` varchar(255) DEFAULT NULL,
  `id_penguji_1` int(11) DEFAULT NULL,
  `id_penguji_2` int(11) DEFAULT NULL,
  `id_penguji_3` int(11) DEFAULT NULL,
  `id_penguji_labmath` int(11) DEFAULT NULL,
  `id_penguji_labstath` int(11) DEFAULT NULL,
  `id_penguji_labkom` int(11) DEFAULT NULL,
  `id_semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ralat_penguji`),
  KEY `FK_ss_ralat_penguji_ss_mahasiswa` (`id_mahasiswa`),
  KEY `FK_ss_ralat_penguji_ss_dosen` (`id_penguji_1`),
  KEY `FK_ss_ralat_penguji_ss_dosen_2` (`id_penguji_2`),
  KEY `FK_ss_ralat_penguji_ss_dosen_3` (`id_penguji_3`),
  KEY `FK_ss_ralat_penguji_ss_semester` (`id_semester`),
  KEY `FK_ss_ralat_penguji_ss_penguji` (`id_penguji`),
  CONSTRAINT `FK_ss_ralat_penguji_ss_dosen` FOREIGN KEY (`id_penguji_1`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_ralat_penguji_ss_dosen_2` FOREIGN KEY (`id_penguji_2`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_ralat_penguji_ss_dosen_3` FOREIGN KEY (`id_penguji_3`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_ralat_penguji_ss_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `ss_mahasiswa` (`id_mahasiswa`),
  CONSTRAINT `FK_ss_ralat_penguji_ss_penguji` FOREIGN KEY (`id_penguji`) REFERENCES `ss_penguji` (`id_penguji`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ss_ralat_penguji_ss_semester` FOREIGN KEY (`id_semester`) REFERENCES `ss_semester` (`id_semester`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_ralat_penguji: ~0 rows (approximately)
/*!40000 ALTER TABLE `ss_ralat_penguji` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss_ralat_penguji` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_role
CREATE TABLE IF NOT EXISTS `ss_role` (
  `idrole` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_role: ~6 rows (approximately)
/*!40000 ALTER TABLE `ss_role` DISABLE KEYS */;
INSERT INTO `ss_role` (`idrole`, `parent`, `name`, `title`, `description`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(1, 0, 'mahasiswa', 'Mahasiswa', 'Mengisi/Mengedit Biodata; Mendaftar Seminar 1-2 & Sidang; Cetak Data Mahasiswa', '2016-10-30 15:52:32', 0, '2016-12-12 11:46:48', 0, 1),
	(2, 0, 'ketua_prodi', 'KA prodi', 'Dashboard (Laporan); Input Judul Skripsi; Input Pembimbing dan Penguji; Cetak SK Pembimbing', '2018-05-15 03:53:09', NULL, '2018-05-15 03:53:09', NULL, 1),
	(5, 0, 'koordinator_seminar', 'Koordinator Seminar', 'Koordinator Sem', '2018-05-15 03:54:51', NULL, '2018-05-15 03:54:52', NULL, 1),
	(6, 0, 'operator_pegawai', 'Staf Akademik', 'Cetak Usulan Pembimbing dan Penguji', NULL, NULL, NULL, NULL, 1),
	(7, 0, 'dosen', 'Dosen', 'Dosen ', NULL, NULL, NULL, NULL, 1),
	(8, 0, '100', 'Sekretaris Departemen Matematika', 'Penguji', NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `ss_role` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_semester
CREATE TABLE IF NOT EXISTS `ss_semester` (
  `id_semester` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `smstr_aktif` int(11) DEFAULT 0,
  `kode_semester` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_semester`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_semester: ~4 rows (approximately)
/*!40000 ALTER TABLE `ss_semester` DISABLE KEYS */;
INSERT INTO `ss_semester` (`id_semester`, `nama`, `smstr_aktif`, `kode_semester`) VALUES
	(6, 'Semester Akhir 2018/2019', 0, '20182'),
	(7, 'Semester Awal 2019/2020', 0, '20191'),
	(8, 'Semester Akhir 2019/2020', 0, '20192'),
	(9, 'Semester Awal 2020/2021', 1, '20201');
/*!40000 ALTER TABLE `ss_semester` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_semester_1
CREATE TABLE IF NOT EXISTS `ss_semester_1` (
  `nama` varchar(200) DEFAULT NULL,
  `smstr_aktif` int(11) NOT NULL,
  `kode_semester` varchar(20) NOT NULL,
  `id_semester` int(11) DEFAULT NULL,
  UNIQUE KEY `kode_semester` (`kode_semester`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_semester_1: ~2 rows (approximately)
/*!40000 ALTER TABLE `ss_semester_1` DISABLE KEYS */;
INSERT INTO `ss_semester_1` (`nama`, `smstr_aktif`, `kode_semester`, `id_semester`) VALUES
	('Semester Ganjil 2017  ', 0, '20171', NULL),
	('Semester Genap 2017', 1, '20172', NULL);
/*!40000 ALTER TABLE `ss_semester_1` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_seminar
CREATE TABLE IF NOT EXISTS `ss_seminar` (
  `id_seminar` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_mahasiswa` bigint(20) unsigned DEFAULT NULL,
  `id_nilai` int(11) DEFAULT NULL,
  `id_koordinator_seminar` int(11) DEFAULT NULL,
  `id_semester` int(11) DEFAULT NULL,
  `jenis_seminar` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `status_seminar` varchar(50) DEFAULT 'pending',
  `koordinator_seminar_approval` int(11) DEFAULT 0,
  `nilai_pu` double DEFAULT NULL,
  `nilai_pp` double DEFAULT NULL,
  `nilai_p1` double DEFAULT NULL,
  `nilai_p2` double DEFAULT NULL,
  `seminar_nilai_angka` double DEFAULT NULL,
  `seminar_nilai_huruf` varchar(50) DEFAULT NULL,
  `kelulusan` varchar(50) DEFAULT NULL,
  `pembimbing_utama_approval` int(11) DEFAULT 0,
  `pembimbing_pertama_approval` int(11) DEFAULT 0,
  `pembimbing_kedua_approval` int(11) DEFAULT 0,
  `penguji_1_approval` int(11) DEFAULT 0,
  `penguji_2_approval` int(11) DEFAULT 0,
  `penguji_3_approval` int(11) DEFAULT 0,
  PRIMARY KEY (`id_seminar`),
  KEY `FK_ss_seminar_ss_mahasiswa` (`id_mahasiswa`),
  KEY `FK_ss_seminar_ss_nilai` (`id_nilai`),
  KEY `FK_ss_seminar_ss_user` (`id_koordinator_seminar`),
  CONSTRAINT `FK_ss_seminar_ss_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `ss_mahasiswa` (`id_mahasiswa`),
  CONSTRAINT `FK_ss_seminar_ss_nilai` FOREIGN KEY (`id_nilai`) REFERENCES `ss_nilai` (`id_nilai`),
  CONSTRAINT `FK_ss_seminar_ss_user` FOREIGN KEY (`id_koordinator_seminar`) REFERENCES `ss_user` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_seminar: ~5 rows (approximately)
/*!40000 ALTER TABLE `ss_seminar` DISABLE KEYS */;
INSERT INTO `ss_seminar` (`id_seminar`, `id_mahasiswa`, `id_nilai`, `id_koordinator_seminar`, `id_semester`, `jenis_seminar`, `tanggal`, `jam`, `tempat`, `status_seminar`, `koordinator_seminar_approval`, `nilai_pu`, `nilai_pp`, `nilai_p1`, `nilai_p2`, `seminar_nilai_angka`, `seminar_nilai_huruf`, `kelulusan`, `pembimbing_utama_approval`, `pembimbing_pertama_approval`, `pembimbing_kedua_approval`, `penguji_1_approval`, `penguji_2_approval`, `penguji_3_approval`) VALUES
	(42, 270, NULL, 1, 9, 1, '2020-08-30', '23:00', 'TNR Lantai 4', 'selesai', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0),
	(44, 270, NULL, 1, 9, 2, '2020-08-30', '23:00', 'Testing', 'selesai', 1, 60, 50, 40, 30, 45, 'D', 'LULUS', 1, 1, 0, 1, 1, 0),
	(46, 270, NULL, 299, 9, 3, '2020-08-31', '23:00', 'LT 4', 'selesai', 1, 50, 30, 50, 100, 57.5, 'C', 'LULUS', 1, 1, 0, 1, 1, 0),
	(47, 317, NULL, 1, 9, 1, '2020-09-03', '23:00', ' https://meet.google.com/jwe-bczs-grs ', 'terdaftar', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
	(48, 318, NULL, 1, 9, 1, '2020-09-04', '13:00', 'LT4', 'terdaftar', 1, 87, 78, 77, 88, 82.5, 'A-', 'LULUS', 1, 1, 0, 1, 1, 0);
/*!40000 ALTER TABLE `ss_seminar` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_sk_pembimbing
CREATE TABLE IF NOT EXISTS `ss_sk_pembimbing` (
  `id_sk_pembimbing` int(11) NOT NULL AUTO_INCREMENT,
  `id_semester` int(11) DEFAULT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `sampul` text DEFAULT NULL,
  `file2` text DEFAULT NULL,
  PRIMARY KEY (`id_sk_pembimbing`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_sk_pembimbing: ~0 rows (approximately)
/*!40000 ALTER TABLE `ss_sk_pembimbing` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss_sk_pembimbing` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_sk_penguji
CREATE TABLE IF NOT EXISTS `ss_sk_penguji` (
  `id_sk_penguji` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_semester` int(11) DEFAULT NULL,
  `id_mahasiswa` bigint(20) unsigned DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `proposal` text DEFAULT NULL,
  `hasil` text DEFAULT NULL,
  `sidang` text DEFAULT NULL,
  PRIMARY KEY (`id_sk_penguji`),
  KEY `FK_ss_sk_penguji_ss_semester` (`id_semester`),
  KEY `FK_ss_sk_penguji_ss_mahasiswa` (`id_mahasiswa`),
  KEY `FK_ss_sk_penguji_ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_sk_penguji_ss_dosen` FOREIGN KEY (`id_dosen`) REFERENCES `ss_dosen` (`id_dosen`),
  CONSTRAINT `FK_ss_sk_penguji_ss_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `ss_mahasiswa` (`id_mahasiswa`),
  CONSTRAINT `FK_ss_sk_penguji_ss_semester` FOREIGN KEY (`id_semester`) REFERENCES `ss_semester` (`id_semester`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_sk_penguji: ~0 rows (approximately)
/*!40000 ALTER TABLE `ss_sk_penguji` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss_sk_penguji` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_user
CREATE TABLE IF NOT EXISTS `ss_user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `idrole` int(11) DEFAULT NULL,
  `id_mahasiswa` bigint(20) unsigned DEFAULT NULL,
  `id_dosen` bigint(20) unsigned DEFAULT NULL,
  `id_prodi` varchar(50) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`iduser`),
  KEY `FK_user_role` (`idrole`),
  CONSTRAINT `FK_user_role` FOREIGN KEY (`idrole`) REFERENCES `ss_role` (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_user: ~17 rows (approximately)
/*!40000 ALTER TABLE `ss_user` DISABLE KEYS */;
INSERT INTO `ss_user` (`iduser`, `idrole`, `id_mahasiswa`, `id_dosen`, `id_prodi`, `username`, `password`, `nama`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(1, NULL, NULL, NULL, NULL, 'superadmin', 'sfs', 'Superadmin', '2018-05-19 01:47:09', NULL, '2018-05-19 01:47:09', NULL, 1),
	(280, 6, NULL, NULL, NULL, 'innah', '8b3e067637fe964025dd40d241fb67a5', 'Nur amina, S.E', NULL, NULL, NULL, NULL, 1),
	(282, 7, NULL, 28, NULL, 'nurdin', '7ddbde64a6c6ccadbc53b576fde9e54e', 'Dr. Nurdin,. S.Si.M.Si', NULL, NULL, NULL, NULL, 1),
	(283, 8, NULL, NULL, NULL, 'kasbawati', '8b22311d7293c72ca6eca2e13b4e89ff', 'Dr. Kasbawati, M.Si', NULL, NULL, NULL, NULL, 1),
	(287, 7, NULL, 27, NULL, 'firman', '74bfebec67d1a87b161e5cbcf6f72a4a', 'Dr. Firman, S.Si, M.Si', NULL, NULL, NULL, NULL, 1),
	(288, 1, 311, NULL, NULL, 'hades', '60d247db2492dc61af565c203eff43d9', 'Hades', NULL, NULL, NULL, NULL, 1),
	(289, 1, 251, NULL, NULL, 'irwan', 'b360089e48b62d69c6c80fa1b5ef024d', 'Irwan Budiansyah', NULL, NULL, NULL, NULL, 1),
	(292, 7, NULL, 42, NULL, 'supri', 'd79444495ba8886c397b418227564d3f', 'Supri bin Hj Amir, S.Si, M.Eng', NULL, NULL, NULL, NULL, 1),
	(293, 7, NULL, 33, NULL, 'hendra', 'a04cca766a885687e33bc6b114230ee9', 'Dr., Hendra  ,S.Si., M.Kom', NULL, NULL, NULL, NULL, 1),
	(294, 7, NULL, 40, NULL, 'nua', 'c57b65bea3855929e4432575ac8d2c8e', 'Andi Muhammad Anwar, S.Si., M.Si', NULL, NULL, NULL, NULL, 1),
	(295, 1, 312, NULL, NULL, 'ilham', 'b63d204bf086017e34d8bd27ab969f28', 'Muh. Ilham', NULL, NULL, NULL, NULL, 1),
	(296, 7, NULL, 47, NULL, 'mile', 'ea08e678edbf8892b8d67fc36f4a3bf9', 'A. Muh Amil Siddik, S.Si, M.Si', NULL, NULL, NULL, NULL, 1),
	(297, 5, NULL, NULL, 'H07', 'edy', 'f75f761c049dced5d7eb5028ac04174a', 'Edy Saputra R, S.Si, M.Si', NULL, NULL, NULL, NULL, 1),
	(298, 1, 270, NULL, '', 'ainun2016', '64fba4db66b1c508e7743a3319964431', 'Ainun Mardiyah Istiqamah', NULL, NULL, NULL, NULL, 1),
	(299, 5, NULL, 42, NULL, 'supriamir', '223db564d7d7ccecc72ee08875e4b859', 'Supri bin Hj Amir, S.Si, M.Eng', NULL, NULL, NULL, NULL, 1),
	(300, 1, 318, NULL, NULL, 'irma', '76af47488ac4ecce7c29005f15cf7d0e', 'Irmayani', NULL, NULL, NULL, NULL, 1),
	(301, 2, NULL, NULL, NULL, 'nurdin', '5e67eeeffd49b9eb84f0a73e27e51440', 'Dr Nurdin, M.Si', NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `ss_user` ENABLE KEYS */;

-- Dumping structure for table appseminar.ss_user_role
CREATE TABLE IF NOT EXISTS `ss_user_role` (
  `iduser_role` int(11) NOT NULL AUTO_INCREMENT,
  `idrole` int(11) DEFAULT NULL,
  `menu_name` varchar(200) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`iduser_role`),
  KEY `FK_user_role_role` (`idrole`),
  CONSTRAINT `FK_user_role_role` FOREIGN KEY (`idrole`) REFERENCES `ss_role` (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.ss_user_role: ~335 rows (approximately)
/*!40000 ALTER TABLE `ss_user_role` DISABLE KEYS */;
INSERT INTO `ss_user_role` (`iduser_role`, `idrole`, `menu_name`, `access`, `created`, `createdby`, `updated`, `updatedby`, `status`) VALUES
	(15, 1, 'dashboard', 1, NULL, NULL, NULL, NULL, 1),
	(16, 1, 'master', 0, NULL, NULL, NULL, NULL, 1),
	(17, 1, 'master_prodi', 0, NULL, NULL, NULL, NULL, 1),
	(18, 1, 'master_semester', 0, NULL, NULL, NULL, NULL, 1),
	(19, 1, 'master_nilai', 0, NULL, NULL, NULL, NULL, 1),
	(20, 1, 'master_mahasiswa', 1, NULL, NULL, NULL, NULL, 1),
	(21, 1, 'master_dosen', 1, NULL, NULL, NULL, NULL, 1),
	(22, 1, 'pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(23, 1, 'penguji', 0, NULL, NULL, NULL, NULL, 1),
	(24, 1, 'skripsi', 0, NULL, NULL, NULL, NULL, 1),
	(25, 1, 'seminar', 0, NULL, NULL, NULL, NULL, 1),
	(26, 1, 'user', 0, NULL, NULL, NULL, NULL, 1),
	(27, 1, 'user_user', 0, NULL, NULL, NULL, NULL, 1),
	(28, 1, 'user_user_role', 0, NULL, NULL, NULL, NULL, 1),
	(29, 2, 'dashboard', 1, NULL, NULL, NULL, NULL, 1),
	(30, 2, 'master', 0, NULL, NULL, NULL, NULL, 1),
	(31, 2, 'master_prodi', 0, NULL, NULL, NULL, NULL, 1),
	(32, 2, 'master_semester', 0, NULL, NULL, NULL, NULL, 1),
	(33, 2, 'master_nilai', 0, NULL, NULL, NULL, NULL, 1),
	(34, 2, 'master_mahasiswa', 1, NULL, NULL, NULL, NULL, 1),
	(35, 2, 'master_dosen', 1, NULL, NULL, NULL, NULL, 1),
	(36, 2, 'pembimbing', 1, NULL, NULL, NULL, NULL, 1),
	(37, 2, 'penguji', 1, NULL, NULL, NULL, NULL, 1),
	(38, 2, 'skripsi', 1, NULL, NULL, NULL, NULL, 1),
	(39, 2, 'seminar', 1, NULL, NULL, NULL, NULL, 1),
	(40, 2, 'user', 0, NULL, NULL, NULL, NULL, 1),
	(41, 2, 'user_user', 1, NULL, NULL, NULL, NULL, 1),
	(42, 2, 'user_user_role', 0, NULL, NULL, NULL, NULL, 1),
	(43, 5, 'dashboard', 1, NULL, NULL, NULL, NULL, 1),
	(44, 5, 'master', 0, NULL, NULL, NULL, NULL, 1),
	(45, 5, 'master_prodi', 0, NULL, NULL, NULL, NULL, 1),
	(46, 5, 'master_semester', 0, NULL, NULL, NULL, NULL, 1),
	(47, 5, 'master_nilai', 0, NULL, NULL, NULL, NULL, 1),
	(48, 5, 'master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(49, 5, 'master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(50, 5, 'pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(51, 5, 'penguji', 0, NULL, NULL, NULL, NULL, 1),
	(52, 5, 'skripsi', 1, NULL, NULL, NULL, NULL, 1),
	(53, 5, 'seminar', 1, NULL, NULL, NULL, NULL, 1),
	(54, 5, 'user', 0, NULL, NULL, NULL, NULL, 1),
	(55, 5, 'user_user', 0, NULL, NULL, NULL, NULL, 1),
	(56, 5, 'user_user_role', 0, NULL, NULL, NULL, NULL, 1),
	(57, 6, 'dashboard', 1, NULL, NULL, NULL, NULL, 1),
	(58, 6, 'master', 0, NULL, NULL, NULL, NULL, 1),
	(59, 6, 'master_prodi', 0, NULL, NULL, NULL, NULL, 1),
	(60, 6, 'master_semester', 0, NULL, NULL, NULL, NULL, 1),
	(61, 6, 'master_nilai', 0, NULL, NULL, NULL, NULL, 1),
	(62, 6, 'master_mahasiswa', 1, NULL, NULL, NULL, NULL, 1),
	(63, 6, 'master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(64, 6, 'pembimbing', 1, NULL, NULL, NULL, NULL, 1),
	(65, 6, 'penguji', 1, NULL, NULL, NULL, NULL, 1),
	(66, 6, 'skripsi', 0, NULL, NULL, NULL, NULL, 1),
	(67, 6, 'seminar', 0, NULL, NULL, NULL, NULL, 1),
	(68, 6, 'sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(69, 6, 'rekapitulasi', 0, NULL, NULL, NULL, NULL, 1),
	(70, 6, 'rekapitulasi_rekapitulasi_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(71, 6, 'rekapitulasi_rekapitulasi_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(72, 6, 'rekapitulasi_rekapitulasi_lulusan', 0, NULL, NULL, NULL, NULL, 1),
	(73, 6, 'rekapitulasi_rekapitulasi_bimbingan', 0, NULL, NULL, NULL, NULL, 1),
	(74, 6, 'user', 1, NULL, NULL, NULL, NULL, 1),
	(75, 6, 'user_role', 0, NULL, NULL, NULL, NULL, 1),
	(76, 6, 'user_user', 1, NULL, NULL, NULL, NULL, 1),
	(77, 6, 'user_user_role', 0, NULL, NULL, NULL, NULL, 1),
	(78, 1, 'sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(79, 1, 'rekapitulasi', 0, NULL, NULL, NULL, NULL, 1),
	(80, 1, 'rekapitulasi_rekapitulasi_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(81, 1, 'rekapitulasi_rekapitulasi_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(82, 1, 'rekapitulasi_rekapitulasi_lulusan', 0, NULL, NULL, NULL, NULL, 1),
	(83, 1, 'rekapitulasi_rekapitulasi_bimbingan', 0, NULL, NULL, NULL, NULL, 1),
	(84, 1, 'user_role', 0, NULL, NULL, NULL, NULL, 1),
	(85, 5, 'sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(86, 5, 'rekapitulasi', 1, NULL, NULL, NULL, NULL, 1),
	(87, 5, 'rekapitulasi_rekapitulasi_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(88, 5, 'rekapitulasi_rekapitulasi_seminar', 1, NULL, NULL, NULL, NULL, 1),
	(89, 5, 'rekapitulasi_rekapitulasi_lulusan', 0, NULL, NULL, NULL, NULL, 1),
	(90, 5, 'rekapitulasi_rekapitulasi_bimbingan', 0, NULL, NULL, NULL, NULL, 1),
	(91, 5, 'user_role', 0, NULL, NULL, NULL, NULL, 1),
	(92, 7, 'dashboard', 1, NULL, NULL, NULL, NULL, 1),
	(93, 7, 'master', 0, NULL, NULL, NULL, NULL, 1),
	(94, 7, 'master_prodi', 0, NULL, NULL, NULL, NULL, 1),
	(95, 7, 'master_semester', 0, NULL, NULL, NULL, NULL, 1),
	(96, 7, 'master_nilai', 0, NULL, NULL, NULL, NULL, 1),
	(97, 7, 'master_mahasiswa', 1, NULL, NULL, NULL, NULL, 1),
	(98, 7, 'master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(99, 7, 'pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(100, 7, 'penguji', 0, NULL, NULL, NULL, NULL, 1),
	(101, 7, 'skripsi', 0, NULL, NULL, NULL, NULL, 1),
	(102, 7, 'seminar', 0, NULL, NULL, NULL, NULL, 1),
	(103, 7, 'sk_pembimbing', 1, NULL, NULL, NULL, NULL, 1),
	(104, 7, 'rekapitulasi', 1, NULL, NULL, NULL, NULL, 1),
	(105, 7, 'rekapitulasi_rekapitulasi_dosen', 1, NULL, NULL, NULL, NULL, 1),
	(106, 7, 'rekapitulasi_rekapitulasi_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(107, 7, 'rekapitulasi_rekapitulasi_lulusan', 0, NULL, NULL, NULL, NULL, 1),
	(108, 7, 'rekapitulasi_rekapitulasi_bimbingan', 1, NULL, NULL, NULL, NULL, 1),
	(109, 7, 'user', 0, NULL, NULL, NULL, NULL, 1),
	(110, 7, 'user_role', 0, NULL, NULL, NULL, NULL, 1),
	(111, 7, 'user_user', 0, NULL, NULL, NULL, NULL, 1),
	(112, 7, 'user_user_role', 0, NULL, NULL, NULL, NULL, 1),
	(113, 1, 'sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(114, 2, 'sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(115, 2, 'sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(116, 2, 'rekapitulasi', 1, NULL, NULL, NULL, NULL, 1),
	(117, 2, 'rekapitulasi_rekapitulasi_dosen', 1, NULL, NULL, NULL, NULL, 1),
	(118, 2, 'rekapitulasi_rekapitulasi_seminar', 1, NULL, NULL, NULL, NULL, 1),
	(119, 2, 'rekapitulasi_rekapitulasi_lulusan', 1, NULL, NULL, NULL, NULL, 1),
	(120, 2, 'rekapitulasi_rekapitulasi_bimbingan', 1, NULL, NULL, NULL, NULL, 1),
	(121, 2, 'user_role', 0, NULL, NULL, NULL, NULL, 1),
	(122, 5, 'sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(123, 6, 'sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(124, 7, 'sk_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(125, 1, 'role_add_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(126, 1, 'role_edit_master_mahasiswa', 1, NULL, NULL, NULL, NULL, 1),
	(127, 1, 'role_delete_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(128, 1, 'role_add_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(129, 1, 'role_edit_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(130, 1, 'role_delete_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(131, 1, 'role_add_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(132, 1, 'role_edit_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(133, 1, 'role_delete_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(134, 1, 'role_add_master_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(135, 1, 'role_edit_master_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(136, 1, 'role_delete_master_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(137, 1, 'role_add_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(138, 1, 'role_edit_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(139, 1, 'role_delete_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(140, 1, 'role_add_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(141, 1, 'role_edit_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(142, 1, 'role_delete_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(143, 1, 'role_add_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(144, 1, 'role_edit_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(145, 1, 'role_delete_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(146, 1, 'role_add_user', 0, NULL, NULL, NULL, NULL, 1),
	(147, 1, 'role_edit_user', 0, NULL, NULL, NULL, NULL, 1),
	(148, 1, 'role_delete_user', 0, NULL, NULL, NULL, NULL, 1),
	(149, 6, 'role_add_master_mahasiswa', 1, NULL, NULL, NULL, NULL, 1),
	(150, 6, 'role_edit_master_mahasiswa', 1, NULL, NULL, NULL, NULL, 1),
	(151, 6, 'role_delete_master_mahasiswa', 1, NULL, NULL, NULL, NULL, 1),
	(152, 6, 'role_add_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(153, 6, 'role_edit_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(154, 6, 'role_delete_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(155, 6, 'role_add_master_pembimbing', 1, NULL, NULL, NULL, NULL, 1),
	(156, 6, 'role_edit_master_pembimbing', 1, NULL, NULL, NULL, NULL, 1),
	(157, 6, 'role_delete_master_pembimbing', 1, NULL, NULL, NULL, NULL, 1),
	(158, 6, 'role_add_master_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(159, 6, 'role_edit_master_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(160, 6, 'role_delete_master_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(161, 6, 'role_add_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(162, 6, 'role_edit_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(163, 6, 'role_delete_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(164, 6, 'role_add_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(165, 6, 'role_edit_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(166, 6, 'role_delete_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(167, 6, 'role_add_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(168, 6, 'role_edit_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(169, 6, 'role_delete_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(170, 6, 'role_add_user', 1, NULL, NULL, NULL, NULL, 1),
	(171, 6, 'role_edit_user', 1, NULL, NULL, NULL, NULL, 1),
	(172, 6, 'role_delete_user', 1, NULL, NULL, NULL, NULL, 1),
	(173, 6, 'config', 0, NULL, NULL, NULL, NULL, 1),
	(174, 1, 'config', 0, NULL, NULL, NULL, NULL, 1),
	(175, 7, 'role_add_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(176, 7, 'role_edit_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(177, 7, 'role_delete_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(178, 7, 'role_add_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(179, 7, 'role_edit_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(180, 7, 'role_delete_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(181, 7, 'role_add_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(182, 7, 'role_edit_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(183, 7, 'role_delete_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(184, 7, 'role_add_master_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(185, 7, 'role_edit_master_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(186, 7, 'role_delete_master_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(187, 7, 'role_add_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(188, 7, 'role_edit_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(189, 7, 'role_delete_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(190, 7, 'role_add_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(191, 7, 'role_edit_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(192, 7, 'role_delete_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(193, 7, 'role_add_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(194, 7, 'role_edit_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(195, 7, 'role_delete_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(196, 7, 'role_add_user', 0, NULL, NULL, NULL, NULL, 1),
	(197, 7, 'role_edit_user', 0, NULL, NULL, NULL, NULL, 1),
	(198, 7, 'role_delete_user', 0, NULL, NULL, NULL, NULL, 1),
	(199, 7, 'config', 0, NULL, NULL, NULL, NULL, 1),
	(200, 7, 'ralat_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(201, 7, 'ralat_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(202, 1, 'ralat_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(203, 1, 'ralat_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(204, 6, 'ralat_pembimbing', 1, NULL, NULL, NULL, NULL, 1),
	(205, 6, 'ralat_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(206, 5, 'role_add_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(207, 5, 'role_edit_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(208, 5, 'role_delete_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(209, 5, 'role_add_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(210, 5, 'role_edit_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(211, 5, 'role_delete_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(212, 5, 'role_add_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(213, 5, 'role_edit_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(214, 5, 'role_delete_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(215, 5, 'ralat_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(216, 5, 'role_add_master_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(217, 5, 'role_edit_master_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(218, 5, 'role_delete_master_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(219, 5, 'ralat_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(220, 5, 'role_add_master_seminar', 1, NULL, NULL, NULL, NULL, 1),
	(221, 5, 'role_edit_master_seminar', 1, NULL, NULL, NULL, NULL, 1),
	(222, 5, 'role_delete_master_seminar', 1, NULL, NULL, NULL, NULL, 1),
	(223, 5, 'role_add_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(224, 5, 'role_edit_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(225, 5, 'role_delete_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(226, 5, 'role_add_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(227, 5, 'role_edit_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(228, 5, 'role_delete_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(229, 5, 'role_add_user', 0, NULL, NULL, NULL, NULL, 1),
	(230, 5, 'role_edit_user', 0, NULL, NULL, NULL, NULL, 1),
	(231, 5, 'role_delete_user', 0, NULL, NULL, NULL, NULL, 1),
	(232, 5, 'config', 0, NULL, NULL, NULL, NULL, 1),
	(233, 2, 'role_add_master_mahasiswa', 1, NULL, NULL, NULL, NULL, 1),
	(234, 2, 'role_edit_master_mahasiswa', 1, NULL, NULL, NULL, NULL, 1),
	(235, 2, 'role_delete_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(236, 2, 'role_add_master_dosen', 1, NULL, NULL, NULL, NULL, 1),
	(237, 2, 'role_edit_master_dosen', 1, NULL, NULL, NULL, NULL, 1),
	(238, 2, 'role_delete_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(239, 2, 'role_add_master_pembimbing', 1, NULL, NULL, NULL, NULL, 1),
	(240, 2, 'role_edit_master_pembimbing', 1, NULL, NULL, NULL, NULL, 1),
	(241, 2, 'role_delete_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(242, 2, 'ralat_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(243, 2, 'role_add_master_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(244, 2, 'role_edit_master_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(245, 2, 'role_delete_master_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(246, 2, 'ralat_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(247, 2, 'role_add_master_seminar', 1, NULL, NULL, NULL, NULL, 1),
	(248, 2, 'role_edit_master_seminar', 1, NULL, NULL, NULL, NULL, 1),
	(249, 2, 'role_delete_master_seminar', 1, NULL, NULL, NULL, NULL, 1),
	(250, 2, 'role_add_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(251, 2, 'role_edit_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(252, 2, 'role_delete_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(253, 2, 'role_add_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(254, 2, 'role_edit_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(255, 2, 'role_delete_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(256, 2, 'role_add_user', 1, NULL, NULL, NULL, NULL, 1),
	(257, 2, 'role_edit_user', 1, NULL, NULL, NULL, NULL, 1),
	(258, 2, 'role_delete_user', 1, NULL, NULL, NULL, NULL, 1),
	(259, 2, 'config', 0, NULL, NULL, NULL, NULL, 1),
	(260, 8, 'dashboard', 1, NULL, NULL, NULL, NULL, 1),
	(261, 8, 'master', 0, NULL, NULL, NULL, NULL, 1),
	(262, 8, 'master_prodi', 0, NULL, NULL, NULL, NULL, 1),
	(263, 8, 'master_semester', 0, NULL, NULL, NULL, NULL, 1),
	(264, 8, 'master_nilai', 0, NULL, NULL, NULL, NULL, 1),
	(265, 8, 'master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(266, 8, 'role_add_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(267, 8, 'role_edit_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(268, 8, 'role_delete_master_mahasiswa', 0, NULL, NULL, NULL, NULL, 1),
	(269, 8, 'master_dosen', 1, NULL, NULL, NULL, NULL, 1),
	(270, 8, 'role_add_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(271, 8, 'role_edit_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(272, 8, 'role_delete_master_dosen', 0, NULL, NULL, NULL, NULL, 1),
	(273, 8, 'pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(274, 8, 'role_add_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(275, 8, 'role_edit_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(276, 8, 'role_delete_master_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(277, 8, 'ralat_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(278, 8, 'penguji', 1, NULL, NULL, NULL, NULL, 1),
	(279, 8, 'role_add_master_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(280, 8, 'role_edit_master_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(281, 8, 'role_delete_master_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(282, 8, 'ralat_penguji', 1, NULL, NULL, NULL, NULL, 1),
	(283, 8, 'seminar', 0, NULL, NULL, NULL, NULL, 1),
	(284, 8, 'role_add_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(285, 8, 'role_edit_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(286, 8, 'role_delete_master_seminar', 0, NULL, NULL, NULL, NULL, 1),
	(287, 8, 'sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(288, 8, 'role_add_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(289, 8, 'role_edit_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(290, 8, 'role_delete_master_sk_pembimbing', 0, NULL, NULL, NULL, NULL, 1),
	(291, 8, 'sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(292, 8, 'role_add_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(293, 8, 'role_edit_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(294, 8, 'role_delete_master_sk_penguji', 0, NULL, NULL, NULL, NULL, 1),
	(295, 8, 'rekapitulasi', 1, NULL, NULL, NULL, NULL, 1),
	(296, 8, 'rekapitulasi_rekapitulasi_dosen', 1, NULL, NULL, NULL, NULL, 1),
	(297, 8, 'rekapitulasi_rekapitulasi_seminar', 1, NULL, NULL, NULL, NULL, 1),
	(298, 8, 'rekapitulasi_rekapitulasi_lulusan', 1, NULL, NULL, NULL, NULL, 1),
	(299, 8, 'rekapitulasi_rekapitulasi_bimbingan', 1, NULL, NULL, NULL, NULL, 1),
	(300, 8, 'user', 0, NULL, NULL, NULL, NULL, 1),
	(301, 8, 'user_role', 0, NULL, NULL, NULL, NULL, 1),
	(302, 8, 'user_user', 0, NULL, NULL, NULL, NULL, 1),
	(303, 8, 'role_add_user', 0, NULL, NULL, NULL, NULL, 1),
	(304, 8, 'role_edit_user', 0, NULL, NULL, NULL, NULL, 1),
	(305, 8, 'role_delete_user', 0, NULL, NULL, NULL, NULL, 1),
	(306, 8, 'user_user_role', 0, NULL, NULL, NULL, NULL, 1),
	(307, 8, 'config', 0, NULL, NULL, NULL, NULL, 1),
	(308, 6, 'download', 1, NULL, NULL, NULL, NULL, 1),
	(309, 6, 'role_add_master_download', 1, NULL, NULL, NULL, NULL, 1),
	(310, 6, 'role_edit_master_donwload', 1, NULL, NULL, NULL, NULL, 1),
	(311, 6, 'role_delete_master_donwload', 1, NULL, NULL, NULL, NULL, 1),
	(312, 1, 'download', 1, NULL, NULL, NULL, NULL, 1),
	(313, 1, 'role_add_master_download', 0, NULL, NULL, NULL, NULL, 1),
	(314, 1, 'role_edit_master_donwload', 0, NULL, NULL, NULL, NULL, 1),
	(315, 1, 'role_delete_master_donwload', 0, NULL, NULL, NULL, NULL, 1),
	(316, 7, 'download', 1, NULL, NULL, NULL, NULL, 1),
	(317, 7, 'role_add_master_download', 0, NULL, NULL, NULL, NULL, 1),
	(318, 7, 'role_edit_master_donwload', 0, NULL, NULL, NULL, NULL, 1),
	(319, 7, 'role_delete_master_donwload', 0, NULL, NULL, NULL, NULL, 1),
	(320, 1, 'persetujuanseminar', 1, NULL, NULL, NULL, NULL, 1),
	(321, 1, 'role_add_master_persetujuanseminar', 0, NULL, NULL, NULL, NULL, 1),
	(322, 1, 'role_edit_master_persetujuanseminar', 0, NULL, NULL, NULL, NULL, 1),
	(323, 1, 'role_delete_master_persetujuanseminar', 0, NULL, NULL, NULL, NULL, 1),
	(324, 1, 'download_list', 0, NULL, NULL, NULL, NULL, 1),
	(325, 7, 'persetujuanseminar', 1, NULL, NULL, NULL, NULL, 1),
	(326, 7, 'role_add_master_persetujuanseminar', 0, NULL, NULL, NULL, NULL, 1),
	(327, 7, 'role_edit_master_persetujuanseminar', 0, NULL, NULL, NULL, NULL, 1),
	(328, 7, 'role_delete_master_persetujuanseminar', 1, NULL, NULL, NULL, NULL, 1),
	(329, 7, 'download_list', 0, NULL, NULL, NULL, NULL, 1),
	(330, 7, 'input_nilai', 1, NULL, NULL, NULL, NULL, 1),
	(331, 5, 'persetujuanseminar', 1, NULL, NULL, NULL, NULL, 1),
	(332, 5, 'role_add_master_persetujuanseminar', 1, NULL, NULL, NULL, NULL, 1),
	(333, 5, 'role_edit_master_persetujuanseminar', 1, NULL, NULL, NULL, NULL, 1),
	(334, 5, 'role_delete_master_persetujuanseminar', 1, NULL, NULL, NULL, NULL, 1),
	(335, 5, 'input_nilai', 1, NULL, NULL, NULL, NULL, 1),
	(336, 5, 'download_list', 0, NULL, NULL, NULL, NULL, 1),
	(337, 5, 'role_add_master_download', 0, NULL, NULL, NULL, NULL, 1),
	(338, 5, 'role_edit_master_donwload', 0, NULL, NULL, NULL, NULL, 1),
	(339, 5, 'role_delete_master_donwload', 0, NULL, NULL, NULL, NULL, 1),
	(340, 1, 'input_nilai', 0, NULL, NULL, NULL, NULL, 1),
	(341, 2, 'persetujuanseminar', 1, NULL, NULL, NULL, NULL, 1),
	(342, 2, 'role_add_master_persetujuanseminar', 0, NULL, NULL, NULL, NULL, 1),
	(343, 2, 'role_edit_master_persetujuanseminar', 0, NULL, NULL, NULL, NULL, 1),
	(344, 2, 'role_delete_master_persetujuanseminar', 0, NULL, NULL, NULL, NULL, 1),
	(345, 2, 'input_nilai', 0, NULL, NULL, NULL, NULL, 1),
	(346, 2, 'download_list', 0, NULL, NULL, NULL, NULL, 1),
	(347, 2, 'role_add_master_download', 0, NULL, NULL, NULL, NULL, 1),
	(348, 2, 'role_edit_master_donwload', 0, NULL, NULL, NULL, NULL, 1),
	(349, 2, 'role_delete_master_donwload', 0, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `ss_user_role` ENABLE KEYS */;

-- Dumping structure for table appseminar.tlevel_user
CREATE TABLE IF NOT EXISTS `tlevel_user` (
  `id_level` int(10) NOT NULL DEFAULT 0,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.tlevel_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `tlevel_user` DISABLE KEYS */;
INSERT INTO `tlevel_user` (`id_level`, `keterangan`) VALUES
	(1, 'Administrator'),
	(2, 'Operator');
/*!40000 ALTER TABLE `tlevel_user` ENABLE KEYS */;

-- Dumping structure for table appseminar.tmenu
CREATE TABLE IF NOT EXISTS `tmenu` (
  `id_menu` varchar(50) NOT NULL DEFAULT '',
  `keterangan` varchar(100) DEFAULT NULL,
  `kelompok` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table appseminar.tmenu: ~26 rows (approximately)
/*!40000 ALTER TABLE `tmenu` DISABLE KEYS */;
INSERT INTO `tmenu` (`id_menu`, `keterangan`, `kelompok`) VALUES
	('admartikel', 'Manajemen data Artikel', 'MANAJEMEN'),
	('admbeasiswa', 'Manajemen Informasi Beasiswa', 'MANAJEMEN'),
	('admberita', 'Manajemen data Berita', 'MANAJEMEN'),
	('admconfig', 'Pengaturan Semester, dan aturan lain yang digunakan', 'MANAJEMEN'),
	('admdosen', 'Manajemen Data Dosen', 'MANAJEMEN'),
	('admdownload', 'Manajemen Download', 'MANAJEMEN'),
	('admfasilitas', 'Manajemen Fasilitas Jurusan', 'MANAJEMEN'),
	('adminformasi', 'Manajemen data Informasi Jurusan', 'MANAJEMEN'),
	('admkemahasiswaan', 'Manajemen Kegiatan Kemahasiswaan', 'MANAJEMEN'),
	('admkontak', 'Mengubah data Kontak', 'MANAJEMEN'),
	('admkurikulum', 'Manajemen Kurikulum Jurusan', 'MANAJEMEN'),
	('admlab', 'Manajemen Data Nama Lab', 'MASTER'),
	('admlink', 'Manajemen Tautan', 'MANAJEMEN'),
	('admmasterkurikulum', 'Manajemen Data Nama Kurikulum', 'MASTER'),
	('admmisi', 'Manajemen Misi', 'MANAJEMEN'),
	('admpenelitian', 'Manajemen Data Penelitian Dosen', 'MANAJEMEN'),
	('admperiode', 'Manajemen Data Periode Program Kerja', 'MASTER'),
	('admprodi', 'Manajemen Data Nama Prodi', 'MASTER'),
	('admprofil', 'Manajemen Profil Jurusan', 'MANAJEMEN'),
	('admprogram', 'Manajemen Program Kerja Jurusan', 'MANAJEMEN'),
	('admprogramlab', 'Manajemen Program Kerja Laboratorium', 'MANAJEMEN'),
	('admrenstra', 'Manajemen Rencana Strategis', 'MANAJEMEN'),
	('admsemester', 'Manajemen Data Nama Semester', 'MASTER'),
	('admsop', 'Manajemen Pengisian SOP', 'MANAJEMEN'),
	('admvisi', 'Manajemen Visi', 'MANAJEMEN'),
	('cuser', 'Manajemen Pengguna', 'MANAJEMEN');
/*!40000 ALTER TABLE `tmenu` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
