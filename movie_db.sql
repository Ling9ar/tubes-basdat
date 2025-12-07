-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2025 at 08:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktor`
--

CREATE TABLE `aktor` (
  `id_aktor` int(11) NOT NULL,
  `nama_aktor` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aktor`
--

INSERT INTO `aktor` (`id_aktor`, `nama_aktor`, `jenis_kelamin`, `tanggal_lahir`, `email`) VALUES
(1, 'Adipati Dolken', 'L', '1900-01-18', 'adipatidolken@movie.com'),
(2, 'Mawar Eva de Jongh', 'P', '1900-01-19', 'mawarevadejongh@movie.com'),
(3, 'Vonny Cornellya', 'P', '1900-01-20', 'vonnycornellya@movie.com'),
(4, 'Sari Nila', 'P', '1900-01-21', 'sarinila@movie.com'),
(5, 'Ivan Leonardy', 'L', '1900-01-22', 'ivanleonardy@movie.com'),
(6, 'Clay Gribble', 'L', '1900-01-23', 'claygribble@movie.com'),
(7, 'Sarah Sechan', 'P', '1900-01-24', 'sarahsechan@movie.com'),
(8, 'Jourdy Pranata', 'L', '1900-01-25', 'jourdypranata@movie.com'),
(9, 'Tubagus Ali', 'L', '1900-01-26', 'tubagusali@movie.com'),
(10, 'Ravil Prasetya', 'L', '1900-01-27', 'ravilprasetya@movie.com'),
(11, 'Nagra Kautsar Pakusadewo', 'L', '1900-01-28', 'nagrakautsarpa@movie.com'),
(12, 'Canti Tachril', 'P', '1900-01-29', 'cantitachril@movie.com'),
(13, 'Thalia Basir', 'P', '1900-01-30', 'thaliabasir@movie.com'),
(14, 'Sp Lili', 'L', '1900-01-31', 'splili@movie.com'),
(15, 'Anna Tairas', 'P', '1900-02-01', 'annatairas@movie.com'),
(16, 'Ranty Maria', 'P', '1900-02-02', 'rantymaria@movie.com'),
(17, 'Jeff Smith', 'L', '1900-02-03', 'jeffsmith@movie.com'),
(18, 'Melanie Berentz', 'P', '1900-02-04', 'melanieberentz@movie.com'),
(19, 'Denira Wiraguna', 'P', '1900-02-05', 'denirawiraguna@movie.com'),
(20, 'Melayu Nicole', 'P', '1900-02-06', 'melayunicole@movie.com'),
(21, 'Cinta Brian', 'L', '1900-02-07', 'cintabrian@movie.com'),
(22, 'Delano Daniel', 'L', '1900-02-08', 'delanodaniel@movie.com'),
(23, 'Denny Weller', 'L', '1900-02-09', 'dennyweller@movie.com'),
(24, 'Mario Wiericx', 'L', '1900-02-10', 'mariowiericx@movie.com'),
(25, 'Wani Siregar', 'P', '1900-02-11', 'wanisiregar@movie.com'),
(26, 'Gary M. Iskak', 'L', '1900-02-12', 'garymiskak@movie.com'),
(27, 'Akja Dethan', 'L', '1900-02-13', 'akjadethan@movie.com'),
(28, 'Ayu Dyah Pasha', 'P', '1900-02-14', 'ayudyahpasha@movie.com'),
(29, 'Natasha Wilona', 'P', '1900-02-15', 'natashawilona@movie.com'),
(30, 'Ria Ricis', 'P', '1900-02-16', 'riaricis@movie.com'),
(31, 'Al Ghazali', 'L', '1900-02-17', 'alghazali@movie.com'),
(32, 'Fitria Rasyidi', 'P', '1900-02-18', 'fitriarasyidi@movie.com'),
(33, 'Ryma Karimah', 'P', '1900-02-19', 'rymakarimah@movie.com'),
(34, 'Sonia Alexa', 'P', '1900-02-20', 'soniaalexa@movie.com'),
(35, 'Asri Welas', 'P', '1900-02-21', 'asriwelas@movie.com'),
(36, 'Cathrine Wilson', 'P', '1900-02-22', 'cathrinewilson@movie.com'),
(37, 'Opie Kumis', 'L', '1900-02-23', 'opiekumis@movie.com'),
(38, 'Adinda Halona', 'P', '1900-02-24', 'adindahalona@movie.com'),
(39, 'Elizabeth Christine', 'P', '1900-02-25', 'elizabethchristine@movie.com'),
(40, 'Daus Separo', 'L', '1900-02-26', 'dausseparo@movie.com'),
(41, 'Rita Nurmaliza', 'P', '1900-02-27', 'ritanurmaliza@movie.com'),
(42, 'Anastasia Adamova', 'P', '1900-02-28', 'anastasiaadamova@movie.com'),
(43, 'Jessica Mila', 'P', '1900-03-01', 'jessicamila@movie.com'),
(44, 'Reza Rahadian', 'L', '1900-03-02', 'rezarahadian@movie.com'),
(45, 'Yasmin Napper', 'P', '1900-03-03', 'yasminnapper@movie.com'),
(46, 'Karina Suwandhi', 'P', '1900-03-04', 'karinasuwandhi@movie.com'),
(47, 'Dion Wiyoko', 'L', '1900-03-05', 'dionwiyoko@movie.com'),
(48, 'Kiki Narendra', 'L', '1900-03-06', 'kikinarendra@movie.com'),
(49, 'Shareefa Daanish', 'P', '1900-03-07', 'shareefadaanisch@movie.com'),
(50, 'Dewi Irawan', 'P', '1900-03-08', 'dewiirawan@movie.com'),
(51, 'Clara Bernadeth', 'P', '1900-03-09', 'clarabernadeth@movie.com'),
(52, 'Karina Nadila', 'P', '1900-03-10', 'karinanadila@movie.com'),
(53, 'Devina Aureel', 'P', '1900-03-11', 'devinaaureel@movie.com'),
(54, 'Kiky Saputri', 'P', '1900-03-12', 'kikysaputri@movie.com'),
(55, 'Zsazsa Utari', 'P', '1900-03-13', 'zsazsaatari@movie.com'),
(56, 'Aci Resti', 'P', '1900-03-14', 'aciresti@movie.com'),
(57, 'Tara Basro', 'P', '1900-03-15', 'tarabasro@movie.com'),
(58, 'Ario Bayu', 'L', '1900-03-16', 'ariobayu@movie.com'),
(59, 'Marissa Anita', 'P', '1900-03-17', 'marissaanita@movie.com'),
(60, 'Christine Hakim', 'P', '1900-03-18', 'christinehakim@movie.com'),
(61, 'Asmara Abigail', 'P', '1900-03-19', 'asmaraabigail@movie.com'),
(62, 'Zidni Hakim', 'L', '1900-03-20', 'zidnihakim@movie.com'),
(63, 'Faradina Mufti', 'P', '1900-03-21', 'faradinamutfti@movie.com'),
(64, 'Abdurrahman Arif', 'L', '1900-03-22', 'abdurrahmanarif@movie.com'),
(65, 'Muhammad Abe Baasyin', 'L', '1900-03-23', 'muhammadabebaasyin@movie.com'),
(66, 'Mursiyanto', 'L', '1900-03-24', 'mursiyanto@movie.com'),
(67, 'Ahmad Ramadhan', 'L', '1900-03-25', 'ahmadramadhan@movie.com'),
(68, 'Aura Agna', 'P', '1900-03-26', 'auraagna@movie.com'),
(69, 'Sindris Ogiska G.', 'P', '1900-03-27', 'sindrisogiskag@movie.com'),
(70, 'Devona Queeny', 'P', '1900-03-28', 'devonaqueeny@movie.com'),
(71, 'Aisha Nurra Datau', 'P', '1900-03-29', 'aishanurradatau@movie.com'),
(72, 'Cok Simbara', 'L', '1900-03-30', 'coksimbara@movie.com'),
(73, 'Raihan Khan', 'L', '1900-03-31', 'raihankhan@movie.com'),
(74, 'Maudy Koesnaedi', 'P', '1900-04-01', 'maudykoesnaedi@movie.com'),
(75, 'Mike Lucock', 'L', '1900-04-02', 'mikelucock@movie.com'),
(76, 'Adhitya Putri', 'P', '1900-04-03', 'adhityaputri@movie.com'),
(77, 'Elliz Christine', 'P', '1900-04-04', 'ellizchristine@movie.com'),
(78, 'Ben Kasyafani', 'L', '1900-04-05', 'benkasyafani@movie.com'),
(79, 'Mario Irwinsyah', 'L', '1900-04-06', 'mairioirwinsyah@movie.com'),
(80, 'Adityawarman', 'L', '1900-04-07', 'adityawarman@movie.com'),
(81, 'Azra Mayraina', 'P', '1900-04-08', 'azramayraina@movie.com'),
(82, 'Aprilya Azzahra', 'P', '1900-04-09', 'aprilyaazzahra@movie.com'),
(83, 'Astri Ivo', 'P', '1900-04-10', 'astriivo@movie.com'),
(84, 'Meriam Bellina', 'P', '1900-04-11', 'meriambellina@movie.com'),
(85, 'Pratiwi Sudarmono', 'P', '1900-04-12', 'pratiwisudarmono@movie.com'),
(86, 'Herjunot Ali', 'L', '1900-04-13', 'herjunotali@movie.com'),
(87, 'Cinta Laura Kiehl', 'P', '1900-04-14', 'cintalaurakiehl@movie.com'),
(88, 'Winky Wiryawan', 'L', '1900-04-15', 'winkywirawan@movie.com'),
(89, 'Indra Brasco', 'L', '1900-04-16', 'indrabrasco@movie.com'),
(90, 'Siva Aprilia', 'P', '1900-04-17', 'sivaaprilia@movie.com'),
(91, 'Fuad Idris', 'L', '1900-04-18', 'fuadidris@movie.com'),
(92, 'Roy Marten', 'L', '1900-04-19', 'roymarten@movie.com'),
(93, 'D\'Ratu', 'P', '1900-04-20', 'dratu@movie.com'),
(94, 'Otig Pakis', 'L', '1900-04-21', 'otigpakis@movie.com'),
(95, 'Uno Eko', 'L', '1900-04-22', 'unoeko@movie.com'),
(96, 'Abah Yongki', 'L', '1900-04-23', 'abahyongki@movie.com'),
(97, 'Lukman Syah', 'L', '1900-04-24', 'lukmansyah@movie.com'),
(98, 'Ali Mario', 'L', '1900-04-25', 'alimario@movie.com'),
(99, 'Goetheng Iku Ahkin', 'L', '1900-04-26', 'goethengikuahkin@movie.com'),
(100, 'Iwan Gardiawan', 'L', '1900-04-27', 'iwangardiawan@movie.com'),
(101, 'Michelle Ziudith', 'P', '1900-04-28', 'michelleziudith@movie.com'),
(102, 'Fero Walandouw', 'L', '1900-04-29', 'ferowalandouw@movie.com'),
(103, 'Nino Fernandez', 'L', '1900-04-30', 'ninofernandez@movie.com'),
(104, 'Jihane Almira', 'P', '1900-05-01', 'jihanealmira@movie.com'),
(105, 'Roy Sungkono', 'L', '1900-05-02', 'roysungkono@movie.com'),
(106, 'Anjasmara', 'L', '1900-05-03', 'anjasmara@movie.com'),
(107, 'Nova Eliza', 'P', '1900-05-04', 'novaeliza@movie.com'),
(108, 'Astrid Tiar', 'P', '1900-05-05', 'astridtiar@movie.com'),
(109, 'Josephine Firmstone', 'P', '1900-05-06', 'josephinefirmstone@movie.com'),
(110, 'Aura Kasih', 'P', '1900-05-07', 'aurakasih@movie.com'),
(111, 'Morgan Oey', 'L', '1900-05-08', 'morganoey@movie.com'),
(112, 'Olga Lydia', 'P', '1900-05-09', 'olgalydia@movie.com'),
(113, 'Haydar Salishz', 'L', '1900-05-10', 'haydarsalishz@movie.com'),
(114, 'Tri Sudarsono', 'L', '1900-05-11', 'trisudarsono@movie.com'),
(115, 'Multiyanti', 'P', '1900-05-12', 'multiyanti@movie.com'),
(116, 'Noel Kevas', 'L', '1900-05-13', 'noelkavas@movie.com'),
(117, 'Karl D. Guilbert', 'L', '1900-05-14', 'karldguilbert@movie.com'),
(118, 'Siti Fauziah', 'P', '1900-05-15', 'sitifauziah@movie.com'),
(119, 'Acintyaswati Widianing', 'P', '1900-05-16', 'acintyaswatiwidianing@movie.com'),
(120, 'Haru Sandra', 'L', '1900-05-17', 'harusandra@movie.com'),
(121, 'Briliana Dewi', 'P', '1900-05-18', 'brilianadewi@movie.com'),
(122, 'Ika Barata', 'P', '1900-05-19', 'ikabarata@movie.com'),
(123, 'Rukman Rosadi', 'L', '1900-05-20', 'rukmanrosadi@movie.com'),
(124, 'Dian Sastrowardoyo', 'P', '1900-05-21', 'diansastrowardoyo@movie.com'),
(125, 'Nicholas Saputra', 'L', '1900-05-22', 'nicholassaputra@movie.com'),
(126, 'Hannah Al Rashid', 'P', '1900-05-23', 'hannahalrashid@movie.com'),
(127, 'Oka Antara', 'L', '1900-05-24', 'okaantara@movie.com'),
(128, 'Muhammad Yusuf H. Abubakar', 'L', '1900-05-25', 'muhammadyusufhabubakar@movie.com'),
(129, 'Ayu Azhari', 'P', '1900-05-26', 'ayuazhari@movie.com'),
(130, 'Hamzah Hoesin Bahanan', 'L', '1900-05-27', 'hamzahhoesinbahan@movie.com'),
(131, 'Dasijem', 'P', '1900-05-28', 'dasijem@movie.com'),
(132, 'Deddy Mahendra Desta', 'L', '1900-05-29', 'deddymahendradesta@movie.com'),
(133, 'Yon Gondrong', 'L', '1900-05-30', 'yongondrong@movie.com'),
(134, 'Irna Jufe', 'P', '1900-05-31', 'irnajufe@movie.com'),
(135, 'Bu Lis', 'P', '1900-06-01', 'bulis@movie.com'),
(136, 'Anggun Priambodo', 'P', '1900-06-02', 'anggunpriambodo@movie.com'),
(137, 'Adhy Suhindra Rachman', 'L', '1900-06-03', 'adhysuhindrarachman@movie.com'),
(138, 'Bee Maura Roki', 'P', '1900-06-04', 'beemauraroki@movie.com'),
(139, 'Masayu Anastasia', 'P', '1900-06-05', 'masayuanastasia@movie.com'),
(140, 'Endy Arfian', 'L', '1900-06-06', 'endyarfian@movie.com'),
(141, 'Christian Loho', 'L', '1900-06-07', 'christianloho@movie.com'),
(142, 'Dwi Sasono', 'L', '1900-06-08', 'dwisasono@movie.com'),
(143, 'Cornelio Sunny', 'L', '1900-06-09', 'corneliosunny@movie.com'),
(144, 'Arifin Putra', 'L', '1900-06-10', 'arifinputra@movie.com'),
(145, 'Muhadkly Acho', 'L', '1900-06-11', 'muhadklyacho@movie.com'),
(146, 'Nirina Zubir', 'P', '1900-06-12', 'nirinazubir@movie.com'),
(147, 'Tika Bravani', 'P', '1900-06-13', 'tikabravani@movie.com'),
(148, 'Ganindra Bimo', 'L', '1900-06-14', 'ganindrabimo@movie.com'),
(149, 'Verdi Solaiman', 'L', '1900-06-15', 'verdisolaiman@movie.com'),
(150, 'Ence Bagus', 'L', '1900-06-16', 'encebagus@movie.com'),
(151, 'Jajang C. Noer', 'P', '1900-06-17', 'jajangcnoer@movie.com'),
(152, 'Emil Kusumo', 'L', '1900-06-18', 'emilkusumo@movie.com'),
(153, 'Yeyen Lydia', 'P', '1900-06-19', 'yeyenlydia@movie.com'),
(154, 'Tomy Babap', 'L', '1900-06-20', 'tomybabap@movie.com'),
(155, 'Fico Fachriza', 'L', '1900-06-21', 'ficofachriza@movie.com'),
(156, 'Indah Permatasari', 'P', '1900-06-22', 'indahpermatasari@movie.com'),
(157, 'Jefri Nichol', 'L', '1900-06-23', 'jefrinichol@movie.com'),
(158, 'Amanda Rawles', 'P', '1900-06-24', 'amandarawles@movie.com'),
(159, 'Brandon Salim', 'L', '1900-06-25', 'brandonsalim@movie.com'),
(160, 'Syifa Hadju', 'P', '1900-06-26', 'syifhadju@movie.com'),
(161, 'Maxime Bouttier', 'L', '1900-06-27', 'maximebouttier@movie.com'),
(162, 'Devin Putra', 'L', '1900-06-28', 'devinputra@movie.com'),
(163, 'Alif Lubis', 'L', '1900-06-29', 'aliflubis@movie.com'),
(164, 'Debo Andryos', 'L', '1900-06-30', 'deboandryos@movie.com'),
(165, 'Richard Gibson', 'L', '1900-07-01', 'richardgibson@movie.com'),
(166, 'Tj Ruth', 'P', '1900-07-02', 'tjruth@movie.com'),
(167, 'Naomi Paulina', 'P', '1900-07-03', 'naomipaulina@movie.com'),
(168, 'Nicho Bryant', 'L', '1900-07-04', 'nichobryant@movie.com'),
(169, 'Sherly Margareta', 'P', '1900-07-05', 'sherlymargareta@movie.com'),
(170, 'Michelle Joan', 'P', '1900-07-06', 'michellejoan@movie.com'),
(171, 'Cassandra Lee', 'P', '1900-07-07', 'cassandralee@movie.com'),
(172, 'Randy Martin', 'L', '1900-07-08', 'randymartin@movie.com'),
(173, 'Amara Sophie', 'P', '1900-07-09', 'amarasophie@movie.com'),
(174, 'Yoriko Angeline', 'P', '1900-07-10', 'yorikoangeline@movie.com'),
(175, 'Maura Gabrielle', 'P', '1900-07-11', 'mauragabrielle@movie.com'),
(176, 'Indah Nic', 'P', '1900-07-12', 'indahninc@movie.com'),
(177, 'Citra Hikmah', 'P', '1900-07-13', 'citrahikmah@movie.com'),
(178, 'Tirta Chan', 'L', '1900-07-14', 'tirtachan@movie.com'),
(179, 'Savira Aulia', 'P', '1900-07-15', 'saviraaulia@movie.com'),
(180, 'Nurlina Evawati', 'P', '1900-07-16', 'nurlinaevawati@movie.com'),
(181, 'Abbi Ibrahim', 'L', '1900-07-17', 'abbiibrahim@movie.com'),
(182, 'Aliyah Faizah', 'P', '1900-07-18', 'aliyahfaizah@movie.com'),
(183, 'Agung Puncak', 'L', '1900-07-19', 'agungpuncak@movie.com'),
(184, 'Kin Wah Chew', 'L', '1900-07-20', 'kinwahchew@movie.com'),
(185, 'Gisella Anastasia', 'P', '1900-07-21', 'gisellaanastasia@movie.com'),
(186, 'Adinia Wirasti', 'P', '1900-07-22', 'adiniawirasti@movie.com'),
(187, 'Dodit Mulyanto', 'L', '1900-07-23', 'doditmulyanto@movie.com'),
(188, 'Tora Sudiro', 'L', '1900-07-24', 'torasudiro@movie.com'),
(189, 'Adjis Doaibu', 'L', '1900-07-25', 'adjisdoaibu@movie.com'),
(190, 'Andi Awwe Wijaya', 'L', '1900-07-26', 'andiawweijaya@movie.com'),
(191, 'Arafah Rianti', 'P', '1900-07-27', 'arafahrianti@movie.com'),
(192, 'Anyun Cadel', 'L', '1900-07-28', 'anyuncadel@movie.com'),
(193, 'Hernawan Yoga', 'L', '1900-07-29', 'hernawanyoga@movie.com'),
(194, 'Ghita Bhebhita', 'P', '1900-07-30', 'ghitahbhebhita@movie.com'),
(195, 'Budi Dalton', 'L', '1900-07-31', 'budidalton@movie.com'),
(196, 'Velove Vexia', 'P', '1900-08-01', 'velovevexia@movie.com'),
(197, 'Deva Mahenra', 'L', '1900-08-02', 'devamahenra@movie.com'),
(198, 'Ira Wibowo', 'P', '1900-08-03', 'irawibowo@movie.com'),
(199, 'Dewi Yull', 'P', '1900-08-04', 'dewiyull@movie.com'),
(200, 'Dini Aminarti', 'P', '1900-08-05', 'diniaminarti@movie.com'),
(201, 'Agus Kuncoro', 'L', '1900-08-06', 'aguskuncoro@movie.com'),
(202, 'Dewi Rezer', 'P', '1900-08-07', 'dewirezer@movie.com'),
(203, 'Uli Herdinansyah', 'L', '1900-08-08', 'uliherdinansyah@movie.com'),
(204, 'Fanny Fabriana', 'P', '1900-08-09', 'fannyfabriana@movie.com'),
(205, 'Adi Nugroho', 'L', '1900-08-10', 'adinugroho@movie.com'),
(206, 'Donita', 'P', '1900-08-11', 'donita@movie.com'),
(207, 'Mellya Baskarani', 'P', '1900-08-12', 'mellyabaskarani@movie.com'),
(208, 'Rizal Idrus', 'L', '1900-08-13', 'rizalidrus@movie.com'),
(209, 'Slamet Rahardjo', 'L', '1900-08-14', 'slametrahardjo@movie.com'),
(210, 'Robby Sugara', 'L', '1900-08-15', 'robbysugara@movie.com'),
(211, 'Rudy Salam', 'L', '1900-08-16', 'rudysalam@movie.com'),
(212, 'Piet Pagau', 'L', '1900-08-17', 'pietpagau@movie.com'),
(213, 'Alexa Key', 'P', '1900-08-18', 'alexakey@movie.com'),
(214, 'Kia Poetri', 'P', '1900-08-19', 'kiapoetri@movie.com'),
(215, 'Balqis Inzalna', 'P', '1900-08-20', 'balqisinzalna@movie.com'),
(216, 'Jacopo Maugeri', 'L', '1900-08-21', 'jacopomaugeri@movie.com'),
(217, 'Alex Abbad', 'L', '1900-08-22', 'alexabbad@movie.com'),
(218, 'Putri Ayudya', 'P', '1900-08-23', 'putriayudya@movie.com'),
(219, 'Maia Estianty', 'P', '1900-08-24', 'maiaestianty@movie.com'),
(220, 'Egy Fedly', 'L', '1900-08-25', 'egyfedly@movie.com'),
(221, 'Tanta Ginting', 'L', '1900-08-26', 'tantaginting@movie.com'),
(222, 'Ade Firman Hakim', 'L', '1900-08-27', 'adefirmanhakim@movie.com'),
(223, 'Chelsea Islan', 'P', '1900-08-28', 'chelseaislan@movie.com'),
(224, 'Ibnu Jamil', 'L', '1900-08-29', 'ibnujamil@movie.com'),
(225, 'Alex Komang', 'L', '1900-08-30', 'alexkomang@movie.com'),
(226, 'Christoffer Nelwan', 'L', '1900-08-31', 'christoffernelwan@movie.com'),
(227, 'Arjan Onderdenwijngaard', 'L', '1900-09-01', 'arjanonderdenwijng@movie.com'),
(228, 'Didi Petet', 'L', '1900-09-02', 'didipetet@movie.com'),
(229, 'Sophia Latjuba', 'P', '1900-09-03', 'sophialatjuba@movie.com'),
(230, 'Zaskia Adya Mecca', 'P', '1900-09-04', 'zaskiaadyamecca@movie.com'),
(231, 'Ananda Omesh', 'L', '1900-09-05', 'anandaomesh@movie.com'),
(232, 'Carissa Putri', 'P', '1900-09-06', 'carissaputri@movie.com'),
(233, 'Natasha Rizki', 'P', '1900-09-07', 'natasharizki@movie.com'),
(234, 'Adipati Dolken', 'L', '1900-01-18', 'adipatidolken@movie.com'),
(235, 'Mawar Eva de Jongh', 'P', '1900-01-19', 'mawarevadejongh@movie.com'),
(236, 'Vonny Cornellya', 'P', '1900-01-20', 'vonnycornellya@movie.com'),
(237, 'Sari Nila', 'P', '1900-01-21', 'sarinila@movie.com'),
(238, 'Ivan Leonardy', 'L', '1900-01-22', 'ivanleonardy@movie.com'),
(239, 'Clay Gribble', 'L', '1900-01-23', 'claygribble@movie.com'),
(240, 'Sarah Sechan', 'P', '1900-01-24', 'sarahsechan@movie.com'),
(241, 'Jourdy Pranata', 'L', '1900-01-25', 'jourdypranata@movie.com'),
(242, 'Tubagus Ali', 'L', '1900-01-26', 'tubagusali@movie.com'),
(243, 'Ravil Prasetya', 'L', '1900-01-27', 'ravilprasetya@movie.com'),
(244, 'Nagra Kautsar Pakusadewo', 'L', '1900-01-28', 'nagrakautsarpa@movie.com'),
(245, 'Canti Tachril', 'P', '1900-01-29', 'cantitachril@movie.com'),
(246, 'Thalia Basir', 'P', '1900-01-30', 'thaliabasir@movie.com'),
(247, 'Sp Lili', 'L', '1900-01-31', 'splili@movie.com'),
(248, 'Anna Tairas', 'P', '1900-02-01', 'annatairas@movie.com'),
(249, 'Ranty Maria', 'P', '1900-02-02', 'rantymaria@movie.com'),
(250, 'Jeff Smith', 'L', '1900-02-03', 'jeffsmith@movie.com'),
(251, 'Melanie Berentz', 'P', '1900-02-04', 'melanieberentz@movie.com'),
(252, 'Denira Wiraguna', 'P', '1900-02-05', 'denirawiraguna@movie.com'),
(253, 'Melayu Nicole', 'P', '1900-02-06', 'melayunicole@movie.com'),
(254, 'Cinta Brian', 'L', '1900-02-07', 'cintabrian@movie.com'),
(255, 'Delano Daniel', 'L', '1900-02-08', 'delanodaniel@movie.com'),
(256, 'Denny Weller', 'L', '1900-02-09', 'dennyweller@movie.com'),
(257, 'Mario Wiericx', 'L', '1900-02-10', 'mariowiericx@movie.com'),
(258, 'Wani Siregar', 'P', '1900-02-11', 'wanisiregar@movie.com'),
(259, 'Gary M. Iskak', 'L', '1900-02-12', 'garymiskak@movie.com'),
(260, 'Akja Dethan', 'L', '1900-02-13', 'akjadethan@movie.com'),
(261, 'Ayu Dyah Pasha', 'P', '1900-02-14', 'ayudyahpasha@movie.com'),
(262, 'Natasha Wilona', 'P', '1900-02-15', 'natashawilona@movie.com'),
(263, 'Ria Ricis', 'P', '1900-02-16', 'riaricis@movie.com'),
(264, 'Al Ghazali', 'L', '1900-02-17', 'alghazali@movie.com'),
(265, 'Fitria Rasyidi', 'P', '1900-02-18', 'fitriarasyidi@movie.com'),
(266, 'Ryma Karimah', 'P', '1900-02-19', 'rymakarimah@movie.com'),
(267, 'Sonia Alexa', 'P', '1900-02-20', 'soniaalexa@movie.com'),
(268, 'Asri Welas', 'P', '1900-02-21', 'asriwelas@movie.com'),
(269, 'Cathrine Wilson', 'P', '1900-02-22', 'cathrinewilson@movie.com'),
(270, 'Opie Kumis', 'L', '1900-02-23', 'opiekumis@movie.com'),
(271, 'Adinda Halona', 'P', '1900-02-24', 'adindahalona@movie.com'),
(272, 'Elizabeth Christine', 'P', '1900-02-25', 'elizabethchristine@movie.com'),
(273, 'Daus Separo', 'L', '1900-02-26', 'dausseparo@movie.com'),
(274, 'Rita Nurmaliza', 'P', '1900-02-27', 'ritanurmaliza@movie.com'),
(275, 'Anastasia Adamova', 'P', '1900-02-28', 'anastasiaadamova@movie.com'),
(276, 'Jessica Mila', 'P', '1900-03-01', 'jessicamila@movie.com'),
(277, 'Reza Rahadian', 'L', '1900-03-02', 'rezarahadian@movie.com'),
(278, 'Yasmin Napper', 'P', '1900-03-03', 'yasminnapper@movie.com'),
(279, 'Karina Suwandhi', 'P', '1900-03-04', 'karinasuwandhi@movie.com'),
(280, 'Dion Wiyoko', 'L', '1900-03-05', 'dionwiyoko@movie.com'),
(281, 'Kiki Narendra', 'L', '1900-03-06', 'kikinarendra@movie.com'),
(282, 'Shareefa Daanish', 'P', '1900-03-07', 'shareefadaanisch@movie.com'),
(283, 'Dewi Irawan', 'P', '1900-03-08', 'dewiirawan@movie.com'),
(284, 'Clara Bernadeth', 'P', '1900-03-09', 'clarabernadeth@movie.com'),
(285, 'Karina Nadila', 'P', '1900-03-10', 'karinanadila@movie.com'),
(286, 'Devina Aureel', 'P', '1900-03-11', 'devinaaureel@movie.com'),
(287, 'Kiky Saputri', 'P', '1900-03-12', 'kikysaputri@movie.com'),
(288, 'Zsazsa Utari', 'P', '1900-03-13', 'zsazsaatari@movie.com'),
(289, 'Aci Resti', 'P', '1900-03-14', 'aciresti@movie.com'),
(290, 'Tara Basro', 'P', '1900-03-15', 'tarabasro@movie.com'),
(291, 'Ario Bayu', 'L', '1900-03-16', 'ariobayu@movie.com'),
(292, 'Marissa Anita', 'P', '1900-03-17', 'marissaanita@movie.com'),
(293, 'Christine Hakim', 'P', '1900-03-18', 'christinehakim@movie.com'),
(294, 'Asmara Abigail', 'P', '1900-03-19', 'asmaraabigail@movie.com'),
(295, 'Zidni Hakim', 'L', '1900-03-20', 'zidnihakim@movie.com'),
(296, 'Faradina Mufti', 'P', '1900-03-21', 'faradinamutfti@movie.com'),
(297, 'Abdurrahman Arif', 'L', '1900-03-22', 'abdurrahmanarif@movie.com'),
(298, 'Muhammad Abe Baasyin', 'L', '1900-03-23', 'muhammadabebaasyin@movie.com'),
(299, 'Mursiyanto', 'L', '1900-03-24', 'mursiyanto@movie.com'),
(300, 'Ahmad Ramadhan', 'L', '1900-03-25', 'ahmadramadhan@movie.com'),
(301, 'Aura Agna', 'P', '1900-03-26', 'auraagna@movie.com'),
(302, 'Sindris Ogiska G.', 'P', '1900-03-27', 'sindrisogiskag@movie.com'),
(303, 'Devona Queeny', 'P', '1900-03-28', 'devonaqueeny@movie.com'),
(304, 'Aisha Nurra Datau', 'P', '1900-03-29', 'aishanurradatau@movie.com'),
(305, 'Cok Simbara', 'L', '1900-03-30', 'coksimbara@movie.com'),
(306, 'Raihan Khan', 'L', '1900-03-31', 'raihankhan@movie.com'),
(307, 'Maudy Koesnaedi', 'P', '1900-04-01', 'maudykoesnaedi@movie.com'),
(308, 'Mike Lucock', 'L', '1900-04-02', 'mikelucock@movie.com'),
(309, 'Adhitya Putri', 'P', '1900-04-03', 'adhityaputri@movie.com'),
(310, 'Elliz Christine', 'P', '1900-04-04', 'ellizchristine@movie.com'),
(311, 'Ben Kasyafani', 'L', '1900-04-05', 'benkasyafani@movie.com'),
(312, 'Mario Irwinsyah', 'L', '1900-04-06', 'mairioirwinsyah@movie.com'),
(313, 'Adityawarman', 'L', '1900-04-07', 'adityawarman@movie.com'),
(314, 'Azra Mayraina', 'P', '1900-04-08', 'azramayraina@movie.com'),
(315, 'Aprilya Azzahra', 'P', '1900-04-09', 'aprilyaazzahra@movie.com'),
(316, 'Astri Ivo', 'P', '1900-04-10', 'astriivo@movie.com'),
(317, 'Meriam Bellina', 'P', '1900-04-11', 'meriambellina@movie.com'),
(318, 'Pratiwi Sudarmono', 'P', '1900-04-12', 'pratiwisudarmono@movie.com'),
(319, 'Herjunot Ali', 'L', '1900-04-13', 'herjunotali@movie.com'),
(320, 'Cinta Laura Kiehl', 'P', '1900-04-14', 'cintalaurakiehl@movie.com'),
(321, 'Winky Wiryawan', 'L', '1900-04-15', 'winkywirawan@movie.com'),
(322, 'Indra Brasco', 'L', '1900-04-16', 'indrabrasco@movie.com'),
(323, 'Siva Aprilia', 'P', '1900-04-17', 'sivaaprilia@movie.com'),
(324, 'Fuad Idris', 'L', '1900-04-18', 'fuadidris@movie.com'),
(325, 'Roy Marten', 'L', '1900-04-19', 'roymarten@movie.com'),
(326, 'D\'Ratu', 'P', '1900-04-20', 'dratu@movie.com'),
(327, 'Otig Pakis', 'L', '1900-04-21', 'otigpakis@movie.com'),
(328, 'Uno Eko', 'L', '1900-04-22', 'unoeko@movie.com'),
(329, 'Abah Yongki', 'L', '1900-04-23', 'abahyongki@movie.com'),
(330, 'Lukman Syah', 'L', '1900-04-24', 'lukmansyah@movie.com'),
(331, 'Ali Mario', 'L', '1900-04-25', 'alimario@movie.com'),
(332, 'Goetheng Iku Ahkin', 'L', '1900-04-26', 'goethengikuahkin@movie.com'),
(333, 'Iwan Gardiawan', 'L', '1900-04-27', 'iwangardiawan@movie.com'),
(334, 'Michelle Ziudith', 'P', '1900-04-28', 'michelleziudith@movie.com'),
(335, 'Fero Walandouw', 'L', '1900-04-29', 'ferowalandouw@movie.com'),
(336, 'Nino Fernandez', 'L', '1900-04-30', 'ninofernandez@movie.com'),
(337, 'Jihane Almira', 'P', '1900-05-01', 'jihanealmira@movie.com'),
(338, 'Roy Sungkono', 'L', '1900-05-02', 'roysungkono@movie.com'),
(339, 'Anjasmara', 'L', '1900-05-03', 'anjasmara@movie.com'),
(340, 'Nova Eliza', 'P', '1900-05-04', 'novaeliza@movie.com'),
(341, 'Astrid Tiar', 'P', '1900-05-05', 'astridtiar@movie.com'),
(342, 'Josephine Firmstone', 'P', '1900-05-06', 'josephinefirmstone@movie.com'),
(343, 'Aura Kasih', 'P', '1900-05-07', 'aurakasih@movie.com'),
(344, 'Morgan Oey', 'L', '1900-05-08', 'morganoey@movie.com'),
(345, 'Olga Lydia', 'P', '1900-05-09', 'olgalydia@movie.com'),
(346, 'Haydar Salishz', 'L', '1900-05-10', 'haydarsalishz@movie.com'),
(347, 'Tri Sudarsono', 'L', '1900-05-11', 'trisudarsono@movie.com'),
(348, 'Multiyanti', 'P', '1900-05-12', 'multiyanti@movie.com'),
(349, 'Noel Kevas', 'L', '1900-05-13', 'noelkavas@movie.com'),
(350, 'Karl D. Guilbert', 'L', '1900-05-14', 'karldguilbert@movie.com'),
(351, 'Siti Fauziah', 'P', '1900-05-15', 'sitifauziah@movie.com'),
(352, 'Acintyaswati Widianing', 'P', '1900-05-16', 'acintyaswatiwidianing@movie.com'),
(353, 'Haru Sandra', 'L', '1900-05-17', 'harusandra@movie.com'),
(354, 'Briliana Dewi', 'P', '1900-05-18', 'brilianadewi@movie.com'),
(355, 'Ika Barata', 'P', '1900-05-19', 'ikabarata@movie.com'),
(356, 'Rukman Rosadi', 'L', '1900-05-20', 'rukmanrosadi@movie.com'),
(357, 'Dian Sastrowardoyo', 'P', '1900-05-21', 'diansastrowardoyo@movie.com'),
(358, 'Nicholas Saputra', 'L', '1900-05-22', 'nicholassaputra@movie.com'),
(359, 'Hannah Al Rashid', 'P', '1900-05-23', 'hannahalrashid@movie.com'),
(360, 'Oka Antara', 'L', '1900-05-24', 'okaantara@movie.com'),
(361, 'Muhammad Yusuf H. Abubakar', 'L', '1900-05-25', 'muhammadyusufhabubakar@movie.com'),
(362, 'Ayu Azhari', 'P', '1900-05-26', 'ayuazhari@movie.com'),
(363, 'Hamzah Hoesin Bahanan', 'L', '1900-05-27', 'hamzahhoesinbahan@movie.com'),
(364, 'Dasijem', 'P', '1900-05-28', 'dasijem@movie.com'),
(365, 'Deddy Mahendra Desta', 'L', '1900-05-29', 'deddymahendradesta@movie.com'),
(366, 'Yon Gondrong', 'L', '1900-05-30', 'yongondrong@movie.com'),
(367, 'Irna Jufe', 'P', '1900-05-31', 'irnajufe@movie.com'),
(368, 'Bu Lis', 'P', '1900-06-01', 'bulis@movie.com'),
(369, 'Anggun Priambodo', 'P', '1900-06-02', 'anggunpriambodo@movie.com'),
(370, 'Adhy Suhindra Rachman', 'L', '1900-06-03', 'adhysuhindrarachman@movie.com'),
(371, 'Bee Maura Roki', 'P', '1900-06-04', 'beemauraroki@movie.com'),
(372, 'Masayu Anastasia', 'P', '1900-06-05', 'masayuanastasia@movie.com'),
(373, 'Endy Arfian', 'L', '1900-06-06', 'endyarfian@movie.com'),
(374, 'Christian Loho', 'L', '1900-06-07', 'christianloho@movie.com'),
(375, 'Dwi Sasono', 'L', '1900-06-08', 'dwisasono@movie.com'),
(376, 'Cornelio Sunny', 'L', '1900-06-09', 'corneliosunny@movie.com'),
(377, 'Arifin Putra', 'L', '1900-06-10', 'arifinputra@movie.com'),
(378, 'Muhadkly Acho', 'L', '1900-06-11', 'muhadklyacho@movie.com'),
(379, 'Nirina Zubir', 'P', '1900-06-12', 'nirinazubir@movie.com'),
(380, 'Tika Bravani', 'P', '1900-06-13', 'tikabravani@movie.com'),
(381, 'Ganindra Bimo', 'L', '1900-06-14', 'ganindrabimo@movie.com'),
(382, 'Verdi Solaiman', 'L', '1900-06-15', 'verdisolaiman@movie.com'),
(383, 'Ence Bagus', 'L', '1900-06-16', 'encebagus@movie.com'),
(384, 'Jajang C. Noer', 'P', '1900-06-17', 'jajangcnoer@movie.com'),
(385, 'Emil Kusumo', 'L', '1900-06-18', 'emilkusumo@movie.com'),
(386, 'Yeyen Lydia', 'P', '1900-06-19', 'yeyenlydia@movie.com'),
(387, 'Tomy Babap', 'L', '1900-06-20', 'tomybabap@movie.com'),
(388, 'Fico Fachriza', 'L', '1900-06-21', 'ficofachriza@movie.com'),
(389, 'Indah Permatasari', 'P', '1900-06-22', 'indahpermatasari@movie.com'),
(390, 'Jefri Nichol', 'L', '1900-06-23', 'jefrinichol@movie.com'),
(391, 'Amanda Rawles', 'P', '1900-06-24', 'amandarawles@movie.com'),
(392, 'Brandon Salim', 'L', '1900-06-25', 'brandonsalim@movie.com'),
(393, 'Syifa Hadju', 'P', '1900-06-26', 'syifhadju@movie.com'),
(394, 'Maxime Bouttier', 'L', '1900-06-27', 'maximebouttier@movie.com'),
(395, 'Devin Putra', 'L', '1900-06-28', 'devinputra@movie.com'),
(396, 'Alif Lubis', 'L', '1900-06-29', 'aliflubis@movie.com'),
(397, 'Debo Andryos', 'L', '1900-06-30', 'deboandryos@movie.com'),
(398, 'Richard Gibson', 'L', '1900-07-01', 'richardgibson@movie.com'),
(399, 'Tj Ruth', 'P', '1900-07-02', 'tjruth@movie.com'),
(400, 'Naomi Paulina', 'P', '1900-07-03', 'naomipaulina@movie.com'),
(401, 'Nicho Bryant', 'L', '1900-07-04', 'nichobryant@movie.com'),
(402, 'Sherly Margareta', 'P', '1900-07-05', 'sherlymargareta@movie.com'),
(403, 'Michelle Joan', 'P', '1900-07-06', 'michellejoan@movie.com'),
(404, 'Cassandra Lee', 'P', '1900-07-07', 'cassandralee@movie.com'),
(405, 'Randy Martin', 'L', '1900-07-08', 'randymartin@movie.com'),
(406, 'Amara Sophie', 'P', '1900-07-09', 'amarasophie@movie.com'),
(407, 'Yoriko Angeline', 'P', '1900-07-10', 'yorikoangeline@movie.com'),
(408, 'Maura Gabrielle', 'P', '1900-07-11', 'mauragabrielle@movie.com'),
(409, 'Indah Nic', 'P', '1900-07-12', 'indahninc@movie.com'),
(410, 'Citra Hikmah', 'P', '1900-07-13', 'citrahikmah@movie.com'),
(411, 'Tirta Chan', 'L', '1900-07-14', 'tirtachan@movie.com'),
(412, 'Savira Aulia', 'P', '1900-07-15', 'saviraaulia@movie.com'),
(413, 'Nurlina Evawati', 'P', '1900-07-16', 'nurlinaevawati@movie.com'),
(414, 'Abbi Ibrahim', 'L', '1900-07-17', 'abbiibrahim@movie.com'),
(415, 'Aliyah Faizah', 'P', '1900-07-18', 'aliyahfaizah@movie.com'),
(416, 'Agung Puncak', 'L', '1900-07-19', 'agungpuncak@movie.com'),
(417, 'Kin Wah Chew', 'L', '1900-07-20', 'kinwahchew@movie.com'),
(418, 'Gisella Anastasia', 'P', '1900-07-21', 'gisellaanastasia@movie.com'),
(419, 'Adinia Wirasti', 'P', '1900-07-22', 'adiniawirasti@movie.com'),
(420, 'Dodit Mulyanto', 'L', '1900-07-23', 'doditmulyanto@movie.com'),
(421, 'Tora Sudiro', 'L', '1900-07-24', 'torasudiro@movie.com'),
(422, 'Adjis Doaibu', 'L', '1900-07-25', 'adjisdoaibu@movie.com'),
(423, 'Andi Awwe Wijaya', 'L', '1900-07-26', 'andiawweijaya@movie.com'),
(424, 'Arafah Rianti', 'P', '1900-07-27', 'arafahrianti@movie.com'),
(425, 'Anyun Cadel', 'L', '1900-07-28', 'anyuncadel@movie.com'),
(426, 'Hernawan Yoga', 'L', '1900-07-29', 'hernawanyoga@movie.com'),
(427, 'Ghita Bhebhita', 'P', '1900-07-30', 'ghitahbhebhita@movie.com'),
(428, 'Budi Dalton', 'L', '1900-07-31', 'budidalton@movie.com'),
(429, 'Velove Vexia', 'P', '1900-08-01', 'velovevexia@movie.com'),
(430, 'Deva Mahenra', 'L', '1900-08-02', 'devamahenra@movie.com'),
(431, 'Ira Wibowo', 'P', '1900-08-03', 'irawibowo@movie.com'),
(432, 'Dewi Yull', 'P', '1900-08-04', 'dewiyull@movie.com'),
(433, 'Dini Aminarti', 'P', '1900-08-05', 'diniaminarti@movie.com'),
(434, 'Agus Kuncoro', 'L', '1900-08-06', 'aguskuncoro@movie.com'),
(435, 'Dewi Rezer', 'P', '1900-08-07', 'dewirezer@movie.com'),
(436, 'Uli Herdinansyah', 'L', '1900-08-08', 'uliherdinansyah@movie.com'),
(437, 'Fanny Fabriana', 'P', '1900-08-09', 'fannyfabriana@movie.com'),
(438, 'Adi Nugroho', 'L', '1900-08-10', 'adinugroho@movie.com'),
(439, 'Donita', 'P', '1900-08-11', 'donita@movie.com'),
(440, 'Mellya Baskarani', 'P', '1900-08-12', 'mellyabaskarani@movie.com'),
(441, 'Rizal Idrus', 'L', '1900-08-13', 'rizalidrus@movie.com'),
(442, 'Slamet Rahardjo', 'L', '1900-08-14', 'slametrahardjo@movie.com'),
(443, 'Robby Sugara', 'L', '1900-08-15', 'robbysugara@movie.com'),
(444, 'Rudy Salam', 'L', '1900-08-16', 'rudysalam@movie.com'),
(445, 'Piet Pagau', 'L', '1900-08-17', 'pietpagau@movie.com'),
(446, 'Alexa Key', 'P', '1900-08-18', 'alexakey@movie.com'),
(447, 'Kia Poetri', 'P', '1900-08-19', 'kiapoetri@movie.com'),
(448, 'Balqis Inzalna', 'P', '1900-08-20', 'balqisinzalna@movie.com'),
(449, 'Jacopo Maugeri', 'L', '1900-08-21', 'jacopomaugeri@movie.com'),
(450, 'Alex Abbad', 'L', '1900-08-22', 'alexabbad@movie.com'),
(451, 'Putri Ayudya', 'P', '1900-08-23', 'putriayudya@movie.com'),
(452, 'Maia Estianty', 'P', '1900-08-24', 'maiaestianty@movie.com'),
(453, 'Egy Fedly', 'L', '1900-08-25', 'egyfedly@movie.com'),
(454, 'Tanta Ginting', 'L', '1900-08-26', 'tantaginting@movie.com'),
(455, 'Ade Firman Hakim', 'L', '1900-08-27', 'adefirmanhakim@movie.com'),
(456, 'Chelsea Islan', 'P', '1900-08-28', 'chelseaislan@movie.com'),
(457, 'Ibnu Jamil', 'L', '1900-08-29', 'ibnujamil@movie.com'),
(458, 'Alex Komang', 'L', '1900-08-30', 'alexkomang@movie.com'),
(459, 'Christoffer Nelwan', 'L', '1900-08-31', 'christoffernelwan@movie.com'),
(460, 'Arjan Onderdenwijngaard', 'L', '1900-09-01', 'arjanonderdenwijng@movie.com'),
(461, 'Didi Petet', 'L', '1900-09-02', 'didipetet@movie.com'),
(462, 'Sophia Latjuba', 'P', '1900-09-03', 'sophialatjuba@movie.com'),
(463, 'Zaskia Adya Mecca', 'P', '1900-09-04', 'zaskiaadyamecca@movie.com'),
(464, 'Ananda Omesh', 'L', '1900-09-05', 'anandaomesh@movie.com'),
(465, 'Carissa Putri', 'P', '1900-09-06', 'carissaputri@movie.com'),
(466, 'Natasha Rizki', 'P', '1900-09-07', 'natasharizki@movie.com'),
(467, 'Adipati Dolken', 'L', '1900-01-18', 'adipatidolken@movie.com'),
(468, 'Mawar Eva de Jongh', 'P', '1900-01-19', 'mawarevadejongh@movie.com'),
(469, 'Vonny Cornellya', 'P', '1900-01-20', 'vonnycornellya@movie.com'),
(470, 'Sari Nila', 'P', '1900-01-21', 'sarinila@movie.com'),
(471, 'Ivan Leonardy', 'L', '1900-01-22', 'ivanleonardy@movie.com'),
(472, 'Clay Gribble', 'L', '1900-01-23', 'claygribble@movie.com'),
(473, 'Sarah Sechan', 'P', '1900-01-24', 'sarahsechan@movie.com'),
(474, 'Jourdy Pranata', 'L', '1900-01-25', 'jourdypranata@movie.com'),
(475, 'Tubagus Ali', 'L', '1900-01-26', 'tubagusali@movie.com'),
(476, 'Ravil Prasetya', 'L', '1900-01-27', 'ravilprasetya@movie.com'),
(477, 'Nagra Kautsar Pakusadewo', 'L', '1900-01-28', 'nagrakautsarpa@movie.com'),
(478, 'Canti Tachril', 'P', '1900-01-29', 'cantitachril@movie.com'),
(479, 'Thalia Basir', 'P', '1900-01-30', 'thaliabasir@movie.com'),
(480, 'Sp Lili', 'L', '1900-01-31', 'splili@movie.com'),
(481, 'Anna Tairas', 'P', '1900-02-01', 'annatairas@movie.com'),
(482, 'Ranty Maria', 'P', '1900-02-02', 'rantymaria@movie.com'),
(483, 'Jeff Smith', 'L', '1900-02-03', 'jeffsmith@movie.com'),
(484, 'Melanie Berentz', 'P', '1900-02-04', 'melanieberentz@movie.com'),
(485, 'Denira Wiraguna', 'P', '1900-02-05', 'denirawiraguna@movie.com'),
(486, 'Melayu Nicole', 'P', '1900-02-06', 'melayunicole@movie.com'),
(487, 'Cinta Brian', 'L', '1900-02-07', 'cintabrian@movie.com'),
(488, 'Delano Daniel', 'L', '1900-02-08', 'delanodaniel@movie.com'),
(489, 'Denny Weller', 'L', '1900-02-09', 'dennyweller@movie.com'),
(490, 'Mario Wiericx', 'L', '1900-02-10', 'mariowiericx@movie.com'),
(491, 'Wani Siregar', 'P', '1900-02-11', 'wanisiregar@movie.com'),
(492, 'Gary M. Iskak', 'L', '1900-02-12', 'garymiskak@movie.com'),
(493, 'Akja Dethan', 'L', '1900-02-13', 'akjadethan@movie.com'),
(494, 'Ayu Dyah Pasha', 'P', '1900-02-14', 'ayudyahpasha@movie.com'),
(495, 'Natasha Wilona', 'P', '1900-02-15', 'natashawilona@movie.com'),
(496, 'Ria Ricis', 'P', '1900-02-16', 'riaricis@movie.com'),
(497, 'Al Ghazali', 'L', '1900-02-17', 'alghazali@movie.com'),
(498, 'Fitria Rasyidi', 'P', '1900-02-18', 'fitriarasyidi@movie.com'),
(499, 'Ryma Karimah', 'P', '1900-02-19', 'rymakarimah@movie.com'),
(500, 'Sonia Alexa', 'P', '1900-02-20', 'soniaalexa@movie.com'),
(501, 'Asri Welas', 'P', '1900-02-21', 'asriwelas@movie.com'),
(502, 'Cathrine Wilson', 'P', '1900-02-22', 'cathrinewilson@movie.com'),
(503, 'Opie Kumis', 'L', '1900-02-23', 'opiekumis@movie.com'),
(504, 'Adinda Halona', 'P', '1900-02-24', 'adindahalona@movie.com'),
(505, 'Elizabeth Christine', 'P', '1900-02-25', 'elizabethchristine@movie.com'),
(506, 'Daus Separo', 'L', '1900-02-26', 'dausseparo@movie.com'),
(507, 'Rita Nurmaliza', 'P', '1900-02-27', 'ritanurmaliza@movie.com'),
(508, 'Anastasia Adamova', 'P', '1900-02-28', 'anastasiaadamova@movie.com'),
(509, 'Jessica Mila', 'P', '1900-03-01', 'jessicamila@movie.com'),
(510, 'Reza Rahadian', 'L', '1900-03-02', 'rezarahadian@movie.com'),
(511, 'Yasmin Napper', 'P', '1900-03-03', 'yasminnapper@movie.com'),
(512, 'Karina Suwandhi', 'P', '1900-03-04', 'karinasuwandhi@movie.com'),
(513, 'Dion Wiyoko', 'L', '1900-03-05', 'dionwiyoko@movie.com'),
(514, 'Kiki Narendra', 'L', '1900-03-06', 'kikinarendra@movie.com'),
(515, 'Shareefa Daanish', 'P', '1900-03-07', 'shareefadaanisch@movie.com'),
(516, 'Dewi Irawan', 'P', '1900-03-08', 'dewiirawan@movie.com'),
(517, 'Clara Bernadeth', 'P', '1900-03-09', 'clarabernadeth@movie.com'),
(518, 'Karina Nadila', 'P', '1900-03-10', 'karinanadila@movie.com'),
(519, 'Devina Aureel', 'P', '1900-03-11', 'devinaaureel@movie.com'),
(520, 'Kiky Saputri', 'P', '1900-03-12', 'kikysaputri@movie.com'),
(521, 'Zsazsa Utari', 'P', '1900-03-13', 'zsazsaatari@movie.com'),
(522, 'Aci Resti', 'P', '1900-03-14', 'aciresti@movie.com'),
(523, 'Tara Basro', 'P', '1900-03-15', 'tarabasro@movie.com'),
(524, 'Ario Bayu', 'L', '1900-03-16', 'ariobayu@movie.com'),
(525, 'Marissa Anita', 'P', '1900-03-17', 'marissaanita@movie.com'),
(526, 'Christine Hakim', 'P', '1900-03-18', 'christinehakim@movie.com'),
(527, 'Asmara Abigail', 'P', '1900-03-19', 'asmaraabigail@movie.com'),
(528, 'Zidni Hakim', 'L', '1900-03-20', 'zidnihakim@movie.com'),
(529, 'Faradina Mufti', 'P', '1900-03-21', 'faradinamutfti@movie.com'),
(530, 'Abdurrahman Arif', 'L', '1900-03-22', 'abdurrahmanarif@movie.com'),
(531, 'Muhammad Abe Baasyin', 'L', '1900-03-23', 'muhammadabebaasyin@movie.com'),
(532, 'Mursiyanto', 'L', '1900-03-24', 'mursiyanto@movie.com'),
(533, 'Ahmad Ramadhan', 'L', '1900-03-25', 'ahmadramadhan@movie.com'),
(534, 'Aura Agna', 'P', '1900-03-26', 'auraagna@movie.com'),
(535, 'Sindris Ogiska G.', 'P', '1900-03-27', 'sindrisogiskag@movie.com'),
(536, 'Devona Queeny', 'P', '1900-03-28', 'devonaqueeny@movie.com'),
(537, 'Aisha Nurra Datau', 'P', '1900-03-29', 'aishanurradatau@movie.com'),
(538, 'Cok Simbara', 'L', '1900-03-30', 'coksimbara@movie.com'),
(539, 'Raihan Khan', 'L', '1900-03-31', 'raihankhan@movie.com'),
(540, 'Maudy Koesnaedi', 'P', '1900-04-01', 'maudykoesnaedi@movie.com'),
(541, 'Mike Lucock', 'L', '1900-04-02', 'mikelucock@movie.com'),
(542, 'Adhitya Putri', 'P', '1900-04-03', 'adhityaputri@movie.com'),
(543, 'Elliz Christine', 'P', '1900-04-04', 'ellizchristine@movie.com'),
(544, 'Ben Kasyafani', 'L', '1900-04-05', 'benkasyafani@movie.com'),
(545, 'Mario Irwinsyah', 'L', '1900-04-06', 'mairioirwinsyah@movie.com'),
(546, 'Adityawarman', 'L', '1900-04-07', 'adityawarman@movie.com'),
(547, 'Azra Mayraina', 'P', '1900-04-08', 'azramayraina@movie.com'),
(548, 'Aprilya Azzahra', 'P', '1900-04-09', 'aprilyaazzahra@movie.com'),
(549, 'Astri Ivo', 'P', '1900-04-10', 'astriivo@movie.com'),
(550, 'Meriam Bellina', 'P', '1900-04-11', 'meriambellina@movie.com'),
(551, 'Pratiwi Sudarmono', 'P', '1900-04-12', 'pratiwisudarmono@movie.com'),
(552, 'Herjunot Ali', 'L', '1900-04-13', 'herjunotali@movie.com'),
(553, 'Cinta Laura Kiehl', 'P', '1900-04-14', 'cintalaurakiehl@movie.com'),
(554, 'Winky Wiryawan', 'L', '1900-04-15', 'winkywirawan@movie.com'),
(555, 'Indra Brasco', 'L', '1900-04-16', 'indrabrasco@movie.com'),
(556, 'Siva Aprilia', 'P', '1900-04-17', 'sivaaprilia@movie.com'),
(557, 'Fuad Idris', 'L', '1900-04-18', 'fuadidris@movie.com'),
(558, 'Roy Marten', 'L', '1900-04-19', 'roymarten@movie.com'),
(559, 'D\'Ratu', 'P', '1900-04-20', 'dratu@movie.com'),
(560, 'Otig Pakis', 'L', '1900-04-21', 'otigpakis@movie.com'),
(561, 'Uno Eko', 'L', '1900-04-22', 'unoeko@movie.com'),
(562, 'Abah Yongki', 'L', '1900-04-23', 'abahyongki@movie.com'),
(563, 'Lukman Syah', 'L', '1900-04-24', 'lukmansyah@movie.com'),
(564, 'Ali Mario', 'L', '1900-04-25', 'alimario@movie.com'),
(565, 'Goetheng Iku Ahkin', 'L', '1900-04-26', 'goethengikuahkin@movie.com'),
(566, 'Iwan Gardiawan', 'L', '1900-04-27', 'iwangardiawan@movie.com'),
(567, 'Michelle Ziudith', 'P', '1900-04-28', 'michelleziudith@movie.com'),
(568, 'Fero Walandouw', 'L', '1900-04-29', 'ferowalandouw@movie.com'),
(569, 'Nino Fernandez', 'L', '1900-04-30', 'ninofernandez@movie.com'),
(570, 'Jihane Almira', 'P', '1900-05-01', 'jihanealmira@movie.com'),
(571, 'Roy Sungkono', 'L', '1900-05-02', 'roysungkono@movie.com'),
(572, 'Anjasmara', 'L', '1900-05-03', 'anjasmara@movie.com'),
(573, 'Nova Eliza', 'P', '1900-05-04', 'novaeliza@movie.com'),
(574, 'Astrid Tiar', 'P', '1900-05-05', 'astridtiar@movie.com'),
(575, 'Josephine Firmstone', 'P', '1900-05-06', 'josephinefirmstone@movie.com'),
(576, 'Aura Kasih', 'P', '1900-05-07', 'aurakasih@movie.com'),
(577, 'Morgan Oey', 'L', '1900-05-08', 'morganoey@movie.com'),
(578, 'Olga Lydia', 'P', '1900-05-09', 'olgalydia@movie.com'),
(579, 'Haydar Salishz', 'L', '1900-05-10', 'haydarsalishz@movie.com'),
(580, 'Tri Sudarsono', 'L', '1900-05-11', 'trisudarsono@movie.com'),
(581, 'Multiyanti', 'P', '1900-05-12', 'multiyanti@movie.com'),
(582, 'Noel Kevas', 'L', '1900-05-13', 'noelkavas@movie.com'),
(583, 'Karl D. Guilbert', 'L', '1900-05-14', 'karldguilbert@movie.com'),
(584, 'Siti Fauziah', 'P', '1900-05-15', 'sitifauziah@movie.com'),
(585, 'Acintyaswati Widianing', 'P', '1900-05-16', 'acintyaswatiwidianing@movie.com'),
(586, 'Haru Sandra', 'L', '1900-05-17', 'harusandra@movie.com'),
(587, 'Briliana Dewi', 'P', '1900-05-18', 'brilianadewi@movie.com'),
(588, 'Ika Barata', 'P', '1900-05-19', 'ikabarata@movie.com'),
(589, 'Rukman Rosadi', 'L', '1900-05-20', 'rukmanrosadi@movie.com'),
(590, 'Dian Sastrowardoyo', 'P', '1900-05-21', 'diansastrowardoyo@movie.com'),
(591, 'Nicholas Saputra', 'L', '1900-05-22', 'nicholassaputra@movie.com'),
(592, 'Hannah Al Rashid', 'P', '1900-05-23', 'hannahalrashid@movie.com'),
(593, 'Oka Antara', 'L', '1900-05-24', 'okaantara@movie.com'),
(594, 'Muhammad Yusuf H. Abubakar', 'L', '1900-05-25', 'muhammadyusufhabubakar@movie.com'),
(595, 'Ayu Azhari', 'P', '1900-05-26', 'ayuazhari@movie.com'),
(596, 'Hamzah Hoesin Bahanan', 'L', '1900-05-27', 'hamzahhoesinbahan@movie.com'),
(597, 'Dasijem', 'P', '1900-05-28', 'dasijem@movie.com'),
(598, 'Deddy Mahendra Desta', 'L', '1900-05-29', 'deddymahendradesta@movie.com'),
(599, 'Yon Gondrong', 'L', '1900-05-30', 'yongondrong@movie.com'),
(600, 'Irna Jufe', 'P', '1900-05-31', 'irnajufe@movie.com'),
(601, 'Bu Lis', 'P', '1900-06-01', 'bulis@movie.com'),
(602, 'Anggun Priambodo', 'P', '1900-06-02', 'anggunpriambodo@movie.com'),
(603, 'Adhy Suhindra Rachman', 'L', '1900-06-03', 'adhysuhindrarachman@movie.com'),
(604, 'Bee Maura Roki', 'P', '1900-06-04', 'beemauraroki@movie.com'),
(605, 'Masayu Anastasia', 'P', '1900-06-05', 'masayuanastasia@movie.com'),
(606, 'Endy Arfian', 'L', '1900-06-06', 'endyarfian@movie.com'),
(607, 'Christian Loho', 'L', '1900-06-07', 'christianloho@movie.com'),
(608, 'Dwi Sasono', 'L', '1900-06-08', 'dwisasono@movie.com'),
(609, 'Cornelio Sunny', 'L', '1900-06-09', 'corneliosunny@movie.com'),
(610, 'Arifin Putra', 'L', '1900-06-10', 'arifinputra@movie.com'),
(611, 'Muhadkly Acho', 'L', '1900-06-11', 'muhadklyacho@movie.com'),
(612, 'Nirina Zubir', 'P', '1900-06-12', 'nirinazubir@movie.com'),
(613, 'Tika Bravani', 'P', '1900-06-13', 'tikabravani@movie.com'),
(614, 'Ganindra Bimo', 'L', '1900-06-14', 'ganindrabimo@movie.com'),
(615, 'Verdi Solaiman', 'L', '1900-06-15', 'verdisolaiman@movie.com'),
(616, 'Ence Bagus', 'L', '1900-06-16', 'encebagus@movie.com'),
(617, 'Jajang C. Noer', 'P', '1900-06-17', 'jajangcnoer@movie.com'),
(618, 'Emil Kusumo', 'L', '1900-06-18', 'emilkusumo@movie.com'),
(619, 'Yeyen Lydia', 'P', '1900-06-19', 'yeyenlydia@movie.com'),
(620, 'Tomy Babap', 'L', '1900-06-20', 'tomybabap@movie.com'),
(621, 'Fico Fachriza', 'L', '1900-06-21', 'ficofachriza@movie.com'),
(622, 'Indah Permatasari', 'P', '1900-06-22', 'indahpermatasari@movie.com'),
(623, 'Jefri Nichol', 'L', '1900-06-23', 'jefrinichol@movie.com'),
(624, 'Amanda Rawles', 'P', '1900-06-24', 'amandarawles@movie.com'),
(625, 'Brandon Salim', 'L', '1900-06-25', 'brandonsalim@movie.com'),
(626, 'Syifa Hadju', 'P', '1900-06-26', 'syifhadju@movie.com'),
(627, 'Maxime Bouttier', 'L', '1900-06-27', 'maximebouttier@movie.com'),
(628, 'Devin Putra', 'L', '1900-06-28', 'devinputra@movie.com'),
(629, 'Alif Lubis', 'L', '1900-06-29', 'aliflubis@movie.com'),
(630, 'Debo Andryos', 'L', '1900-06-30', 'deboandryos@movie.com'),
(631, 'Richard Gibson', 'L', '1900-07-01', 'richardgibson@movie.com'),
(632, 'Tj Ruth', 'P', '1900-07-02', 'tjruth@movie.com'),
(633, 'Naomi Paulina', 'P', '1900-07-03', 'naomipaulina@movie.com'),
(634, 'Nicho Bryant', 'L', '1900-07-04', 'nichobryant@movie.com'),
(635, 'Sherly Margareta', 'P', '1900-07-05', 'sherlymargareta@movie.com'),
(636, 'Michelle Joan', 'P', '1900-07-06', 'michellejoan@movie.com'),
(637, 'Cassandra Lee', 'P', '1900-07-07', 'cassandralee@movie.com'),
(638, 'Randy Martin', 'L', '1900-07-08', 'randymartin@movie.com'),
(639, 'Amara Sophie', 'P', '1900-07-09', 'amarasophie@movie.com'),
(640, 'Yoriko Angeline', 'P', '1900-07-10', 'yorikoangeline@movie.com'),
(641, 'Maura Gabrielle', 'P', '1900-07-11', 'mauragabrielle@movie.com'),
(642, 'Indah Nic', 'P', '1900-07-12', 'indahninc@movie.com'),
(643, 'Citra Hikmah', 'P', '1900-07-13', 'citrahikmah@movie.com'),
(644, 'Tirta Chan', 'L', '1900-07-14', 'tirtachan@movie.com'),
(645, 'Savira Aulia', 'P', '1900-07-15', 'saviraaulia@movie.com'),
(646, 'Nurlina Evawati', 'P', '1900-07-16', 'nurlinaevawati@movie.com'),
(647, 'Abbi Ibrahim', 'L', '1900-07-17', 'abbiibrahim@movie.com'),
(648, 'Aliyah Faizah', 'P', '1900-07-18', 'aliyahfaizah@movie.com'),
(649, 'Agung Puncak', 'L', '1900-07-19', 'agungpuncak@movie.com'),
(650, 'Kin Wah Chew', 'L', '1900-07-20', 'kinwahchew@movie.com'),
(651, 'Gisella Anastasia', 'P', '1900-07-21', 'gisellaanastasia@movie.com'),
(652, 'Adinia Wirasti', 'P', '1900-07-22', 'adiniawirasti@movie.com'),
(653, 'Dodit Mulyanto', 'L', '1900-07-23', 'doditmulyanto@movie.com'),
(654, 'Tora Sudiro', 'L', '1900-07-24', 'torasudiro@movie.com'),
(655, 'Adjis Doaibu', 'L', '1900-07-25', 'adjisdoaibu@movie.com'),
(656, 'Andi Awwe Wijaya', 'L', '1900-07-26', 'andiawweijaya@movie.com'),
(657, 'Arafah Rianti', 'P', '1900-07-27', 'arafahrianti@movie.com'),
(658, 'Anyun Cadel', 'L', '1900-07-28', 'anyuncadel@movie.com'),
(659, 'Hernawan Yoga', 'L', '1900-07-29', 'hernawanyoga@movie.com'),
(660, 'Ghita Bhebhita', 'P', '1900-07-30', 'ghitahbhebhita@movie.com'),
(661, 'Budi Dalton', 'L', '1900-07-31', 'budidalton@movie.com'),
(662, 'Velove Vexia', 'P', '1900-08-01', 'velovevexia@movie.com'),
(663, 'Deva Mahenra', 'L', '1900-08-02', 'devamahenra@movie.com'),
(664, 'Ira Wibowo', 'P', '1900-08-03', 'irawibowo@movie.com'),
(665, 'Dewi Yull', 'P', '1900-08-04', 'dewiyull@movie.com'),
(666, 'Dini Aminarti', 'P', '1900-08-05', 'diniaminarti@movie.com'),
(667, 'Agus Kuncoro', 'L', '1900-08-06', 'aguskuncoro@movie.com'),
(668, 'Dewi Rezer', 'P', '1900-08-07', 'dewirezer@movie.com'),
(669, 'Uli Herdinansyah', 'L', '1900-08-08', 'uliherdinansyah@movie.com'),
(670, 'Fanny Fabriana', 'P', '1900-08-09', 'fannyfabriana@movie.com'),
(671, 'Adi Nugroho', 'L', '1900-08-10', 'adinugroho@movie.com'),
(672, 'Donita', 'P', '1900-08-11', 'donita@movie.com'),
(673, 'Mellya Baskarani', 'P', '1900-08-12', 'mellyabaskarani@movie.com'),
(674, 'Rizal Idrus', 'L', '1900-08-13', 'rizalidrus@movie.com'),
(675, 'Slamet Rahardjo', 'L', '1900-08-14', 'slametrahardjo@movie.com'),
(676, 'Robby Sugara', 'L', '1900-08-15', 'robbysugara@movie.com'),
(677, 'Rudy Salam', 'L', '1900-08-16', 'rudysalam@movie.com'),
(678, 'Piet Pagau', 'L', '1900-08-17', 'pietpagau@movie.com'),
(679, 'Alexa Key', 'P', '1900-08-18', 'alexakey@movie.com'),
(680, 'Kia Poetri', 'P', '1900-08-19', 'kiapoetri@movie.com'),
(681, 'Balqis Inzalna', 'P', '1900-08-20', 'balqisinzalna@movie.com'),
(682, 'Jacopo Maugeri', 'L', '1900-08-21', 'jacopomaugeri@movie.com'),
(683, 'Alex Abbad', 'L', '1900-08-22', 'alexabbad@movie.com'),
(684, 'Putri Ayudya', 'P', '1900-08-23', 'putriayudya@movie.com'),
(685, 'Maia Estianty', 'P', '1900-08-24', 'maiaestianty@movie.com'),
(686, 'Egy Fedly', 'L', '1900-08-25', 'egyfedly@movie.com'),
(687, 'Tanta Ginting', 'L', '1900-08-26', 'tantaginting@movie.com'),
(688, 'Ade Firman Hakim', 'L', '1900-08-27', 'adefirmanhakim@movie.com'),
(689, 'Chelsea Islan', 'P', '1900-08-28', 'chelseaislan@movie.com'),
(690, 'Ibnu Jamil', 'L', '1900-08-29', 'ibnujamil@movie.com'),
(691, 'Alex Komang', 'L', '1900-08-30', 'alexkomang@movie.com'),
(692, 'Christoffer Nelwan', 'L', '1900-08-31', 'christoffernelwan@movie.com'),
(693, 'Arjan Onderdenwijngaard', 'L', '1900-09-01', 'arjanonderdenwijng@movie.com'),
(694, 'Didi Petet', 'L', '1900-09-02', 'didipetet@movie.com'),
(695, 'Sophia Latjuba', 'P', '1900-09-03', 'sophialatjuba@movie.com'),
(696, 'Zaskia Adya Mecca', 'P', '1900-09-04', 'zaskiaadyamecca@movie.com'),
(697, 'Ananda Omesh', 'L', '1900-09-05', 'anandaomesh@movie.com'),
(698, 'Carissa Putri', 'P', '1900-09-06', 'carissaputri@movie.com'),
(699, 'Natasha Rizki', 'P', '1900-09-07', 'natasharizki@movie.com');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id_film` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `user_rating` decimal(3,1) DEFAULT NULL,
  `durasi_film` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id_film`, `judul`, `rating`, `deskripsi`, `user_rating`, `durasi_film`, `votes`, `tahun`) VALUES
(1, '#FriendButMarried 2', 13.0, 'Ayudia (Mawar De Jongh) is not satisfied enough in enjoying the moment as a wife, but she suddenly becomes pregnant. Her personality changes completely and becomes lazy and super sensitive.', 6.5, 100, 120, 2020),
(2, '4 Mantan', 17.0, 'Sara, Airin, Rachel, and Amara were accidentally brought together after the death of their ex, Alex. All four received a letter saying that there was one killer among them.', 6.4, 80, 8, 2020),
(3, 'Aku Tahu Kapan Kamu Mati', 13.0, 'After apparent death, Siena is able to see signs that people will die. However, her friends did not believe in her abilities. Then, the sign appeared on her and those closest to her.', 5.4, 92, 17, 2020),
(4, 'Imperfect', 13.0, 'Being born fat and has dark skins, it feels like a curse for Rara, especially when she worked at the office that has surrounded by pretty girls. Her boss wants her to lose her weight, but there is a man who loves the way she were.', 7.8, 113, 624, 2019),
(5, 'Impetigore', 17.0, 'Maya with her best friend, Dini, tries to survive in a city without a family. She realized that she might inherit a property from her rich family. Maya returns to the village with Dini and unaware of the danger was waiting for her.', 6.9, 106, 1877, 2019),
(6, 'Iqro: My Universe', 0.0, 'Aqilla has aspirations to become an astronaut, Her grandfather, an astronomer, is a place where Aqilla learned a lot and asked questions. Aqilla\'s hobbies in outer space make her compete ...', 6.6, 101, 8, 2019),
(7, 'Jeritan Malam', 17.0, 'Reza and his three friends tried to explore the history of the dorm they lived. But unfortunately, Reza does a ritual that should not have been done.', 6.5, 119, 35, 2019),
(8, 'Ananta', 13.0, 'Tania (Michelle Ziudith), is anti-social and filled with fantasies that she always pour into her canvas. She is also a type of rebel girl.', 8.0, 91, 52, 2018),
(9, 'Arini', 17.0, 'On the train in Germany, Arini (Aura Kasih), a 38 years old woman, meets a man named Nick (Morgan Oey) who is 15 years younger than her. Nick falls in love and tries to get into Arini\'s life, while Arini no longer believes in love.', 7.5, NULL, 84, 2018),
(10, 'Aruna & Lidahnya', 17.0, 'An epidemiologist tried to satisfy her obsession with food when she was assigned to investigate a bird flu case.', 7.3, 106, 539, 2018),
(11, '12:06 Rumah Kucing', 13.0, 'Many strange and frightening events experienced by Randy\'s (Adi Nugroho) family with Rosa (Masayu Anastasia), since her split warehouse floor at her home just past midnight at 12:06 ...', 3.5, 78, 17, 2017),
(12, '5 Cowok Jagoan', NULL, '5 lifelong friends attempt to rescue a damsel in distress from gangsters and zombies in this action packed comedy.', 6.7, 106, 14, 2017),
(13, 'A: Aku, Benci, & Cinta', NULL, 'Alvaro is an annoying boy who became the Student Council President, while Anggia was his deputy. They never get along in meetings. When she didn\'t agree to hold a Prom, he mocks that she was afraid because she would not get a partner.', 7.5, NULL, 138, 2017),
(14, 'After School Horror 2', NULL, NULL, 5.1, NULL, 17, 2017),
(15, 'Cek Toko Sebelah', 13.0, 'Right when everything is going well for Erwin, his father falls sick and asks him to drop everything and help out at the family store disappointing Yohan, his irresponsible older brother.', 8.0, 104, 1472, 2016),
(16, 'Cinta Laki-Laki Biasa', NULL, 'Nania (Velove Vexia) who comes from a rich family falls in love with Rafli (Deva Mahenra), an ordinary man. They were opposed by Nania\'s mother. Their love was tested by various trials.', 7.9, NULL, 34, 2016),
(17, 'Garuda Superhero', NULL, 'An anti-asteroid nuclear missile has been stolen by a terrorist group led by Durja King, who intends to use the weapon as a threat against the world\'s superpower countries. Only the Garuda Superhero, stands in the way of his evil plans.', 3.6, 85, 14, 2015),
(18, 'Guru Bangsa Tjokroaminoto', NULL, 'In 1912, Javanese activist Omar Said Tjokroaminoto (Reza Rahadian) co-founds the Sarekat Islam party to fight injustices of the Dutch East Indies\' colonial regime.', 7.3, 161, 92, 2015),
(19, 'Hijab', NULL, 'Four best friends were independent women in the first place. After three of them married, they became wives who would always serve their husbands and decided to wear hijab in different ...', 5.6, 100, 16, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `nama_genre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id_genre`, `nama_genre`) VALUES
(1, 'Biography'),
(2, 'Thriller'),
(3, 'Horror'),
(4, 'Comedy'),
(5, 'Drama'),
(6, 'Action');

-- --------------------------------------------------------

--
-- Table structure for table `genre_film`
--

CREATE TABLE `genre_film` (
  `id_film` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre_film`
--

INSERT INTO `genre_film` (`id_film`, `id_genre`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(7, 3),
(8, 4),
(9, 5),
(10, 5),
(11, 3),
(12, 6),
(14, 3),
(15, 4),
(16, 5),
(17, 6),
(18, 1),
(19, 4);

-- --------------------------------------------------------

--
-- Table structure for table `karakter`
--

CREATE TABLE `karakter` (
  `id_film` int(11) NOT NULL,
  `id_aktor` int(11) NOT NULL,
  `nama_kakter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karakter`
--

INSERT INTO `karakter` (`id_film`, `id_aktor`, `nama_kakter`) VALUES
(1, 1, 'Dilan Purnama'),
(1, 3, 'Milea Adnan Husein'),
(1, 7, 'Kang Adi'),
(2, 1, 'Dilan Purnama'),
(2, 3, 'Milea Adnan Husein'),
(2, 9, 'Pak Suripto'),
(3, 6, 'Rini Suwono'),
(3, 9, 'Bahri Suwono'),
(3, 10, 'Darini'),
(4, 5, 'Pak Harfan'),
(4, 7, 'Lintang Samudra Basara'),
(4, 8, 'Andrea Hirata'),
(5, 5, 'Harto Suwono'),
(5, 6, 'Rini Suwono'),
(5, 9, 'Budiman'),
(6, 2, 'Iqbal Ramadhan'),
(6, 4, 'Acha'),
(6, 14, 'Bara'),
(7, 12, 'Revan'),
(7, 14, 'Nathan Adamson'),
(7, 15, 'Salma Alvira'),
(8, 8, 'Euis'),
(8, 9, 'Abah Agus'),
(8, 10, 'Emak Arum'),
(9, 6, 'Wulan Guritno'),
(9, 7, 'Pengki'),
(9, 9, 'Sancaka'),
(10, 5, 'B.J. Habibie'),
(10, 9, 'Ilham Habibie'),
(10, 13, 'Hasri Ainun Besari'),
(11, 5, 'Andi'),
(11, 7, 'Rama'),
(11, 9, 'Jaka'),
(12, 6, 'Maya'),
(12, 8, 'Shinta'),
(12, 10, 'Dini'),
(13, 5, 'Erwin'),
(13, 8, 'Natalie'),
(13, 9, 'Koh Afuk'),
(14, 5, 'Ale'),
(14, 11, 'Anya Best Friend'),
(14, 12, 'Anya'),
(15, 7, 'Rangga'),
(15, 8, 'Milly'),
(15, 11, 'Cinta');

-- --------------------------------------------------------

--
-- Table structure for table `sutradara`
--

CREATE TABLE `sutradara` (
  `id_sutradara` int(11) NOT NULL,
  `nama_sutradara` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sutradara`
--

INSERT INTO `sutradara` (`id_sutradara`, `nama_sutradara`, `jenis_kelamin`, `tanggal_lahir`, `email`) VALUES
(1, 'Rako Prijanto', 'L', '1900-01-01', 'rakoprijanto@movie.com'),
(2, 'Hanny Saputra', 'P', '1900-01-02', 'hannysaputra@movie.com'),
(3, 'Hadrah Daeng Ratu', 'P', '1900-01-03', 'hadrahdaengratu@movie.com'),
(4, 'Ernest Prakasa', 'L', '1900-01-04', 'ernestprakasa@movie.com'),
(5, 'Joko Anwar', 'L', '1900-01-05', 'jokoanwar@movie.com'),
(6, 'Iqbal Alfajri', 'L', '1900-01-06', 'iqbalalfajri@movie.com'),
(7, 'Rocky Soraya', 'L', '1900-01-07', 'rockysoraya@movie.com'),
(8, 'Rizki Balki', 'L', '1900-01-08', 'rizkibalki@movie.com'),
(9, 'Ismail Basbeth', 'L', '1900-01-09', 'ismailbasbeth@movie.com'),
(10, 'Edwin', 'L', '1900-01-10', 'edwin@movie.com'),
(11, 'Chiska Doppert', 'P', '1900-01-11', 'chiskadoppert@movie.com'),
(12, 'Anggy Umbara', 'L', '1900-01-12', 'anggyumbara@movie.com'),
(13, 'Nayato Fio Nuala', 'L', '1900-01-13', 'nayatofionuala@movie.com'),
(14, 'Guntur Soeharjanto', 'L', '1900-01-14', 'guntursoeharjanto@movie.com'),
(15, 'X. Jo', 'L', '1900-01-15', 'xjo@movie.com'),
(16, 'Garin Nugroho', 'L', '1900-01-16', 'garinnugroho@movie.com'),
(17, 'Hanung Bramantyo', 'L', '1900-01-17', 'hanungbramantyo@movie.com');

-- --------------------------------------------------------

--
-- Table structure for table `sutradara_film`
--

CREATE TABLE `sutradara_film` (
  `id_film` int(11) NOT NULL,
  `id_sutradara` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sutradara_film`
--

INSERT INTO `sutradara_film` (`id_film`, `id_sutradara`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 8),
(14, 13),
(15, 4),
(16, 14),
(17, 15),
(18, 16),
(19, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktor`
--
ALTER TABLE `aktor`
  ADD PRIMARY KEY (`id_aktor`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indexes for table `genre_film`
--
ALTER TABLE `genre_film`
  ADD PRIMARY KEY (`id_film`,`id_genre`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Indexes for table `karakter`
--
ALTER TABLE `karakter`
  ADD PRIMARY KEY (`id_film`,`id_aktor`),
  ADD KEY `id_aktor` (`id_aktor`);

--
-- Indexes for table `sutradara`
--
ALTER TABLE `sutradara`
  ADD PRIMARY KEY (`id_sutradara`);

--
-- Indexes for table `sutradara_film`
--
ALTER TABLE `sutradara_film`
  ADD PRIMARY KEY (`id_film`,`id_sutradara`),
  ADD KEY `id_sutradara` (`id_sutradara`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktor`
--
ALTER TABLE `aktor`
  MODIFY `id_aktor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sutradara`
--
ALTER TABLE `sutradara`
  MODIFY `id_sutradara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `genre_film`
--
ALTER TABLE `genre_film`
  ADD CONSTRAINT `genre_film_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE,
  ADD CONSTRAINT `genre_film_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`) ON DELETE CASCADE;

--
-- Constraints for table `karakter`
--
ALTER TABLE `karakter`
  ADD CONSTRAINT `karakter_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE,
  ADD CONSTRAINT `karakter_ibfk_2` FOREIGN KEY (`id_aktor`) REFERENCES `aktor` (`id_aktor`) ON DELETE CASCADE;

--
-- Constraints for table `sutradara_film`
--
ALTER TABLE `sutradara_film`
  ADD CONSTRAINT `sutradara_film_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE,
  ADD CONSTRAINT `sutradara_film_ibfk_2` FOREIGN KEY (`id_sutradara`) REFERENCES `sutradara` (`id_sutradara`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
