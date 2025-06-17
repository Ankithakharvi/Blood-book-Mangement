-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2025 at 07:49 PM
-- Server version: 8.2.0
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `AREA_ID` int NOT NULL,
  `CITY_ID` int NOT NULL,
  `STATE_ID` int NOT NULL,
  `AREA_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`AREA_ID`, `CITY_ID`, `STATE_ID`, `AREA_NAME`) VALUES
(1, 1, 1, 'New Bus Stand'),
(2, 2, 1, 'Annur'),
(3, 3, 1, 'Adhanakurichi 621719'),
(5, 3, 1, 'Adhikudikadu 621714'),
(6, 3, 1, 'Alagapuram 608901'),
(7, 3, 1, 'Adhikudikadu 621714'),
(8, 3, 1, 'Alagiamanavalam 621715'),
(9, 3, 1, 'Alathipallam 612903'),
(10, 3, 1, 'Alathiyur 621719'),
(11, 3, 1, 'Ambapur 621701'),
(12, 3, 1, 'Ameenabadd 621713'),
(13, 3, 1, 'Anaikudam 612902'),
(14, 3, 1, 'Anandavadi 621718'),
(15, 3, 1, 'Andimadam 621801'),
(16, 3, 1, 'Anganur 621709'),
(17, 3, 1, 'Angarayanallur 621802'),
(18, 3, 1, 'Anikduichan 621809'),
(19, 3, 1, 'Annanagar 621713'),
(20, 3, 1, 'Aranmanaikurichi 621851'),
(21, 3, 1, 'Ariyalur 621704'),
(22, 3, 1, 'Ariyalur Bazaar 621704'),
(23, 3, 1, 'Ariyalur Cemet Factory 621729'),
(24, 3, 1, 'Arungal 621717'),
(25, 3, 1, 'Asaveerankudikadu 621719'),
(26, 3, 1, 'Attukuraichi 608901'),
(27, 3, 1, 'Ayanathur 621705'),
(28, 3, 1, 'Attukuraichi 608901'),
(29, 3, 1, 'Ayanthattanur 621709'),
(30, 3, 1, 'Ayuthakulam 621901'),
(31, 3, 1, 'Ayyappanaickenpettai 612903'),
(32, 3, 1, 'Ayyur 608901'),
(33, 3, 1, 'Cement Nagar Dalavoy 621730'),
(34, 3, 1, 'Chinnavalayam 621802'),
(35, 3, 1, 'Dalavoy 621730'),
(36, 3, 1, 'Devamangalam 612902'),
(37, 3, 1, 'Devanur 621806'),
(38, 3, 1, 'Edayakurichi 621719'),
(39, 3, 1, 'Edayar 621804'),
(40, 3, 1, 'Edayathangudi 621707'),
(41, 3, 1, 'Elakurichi 621715'),
(42, 3, 1, 'Elangaicheri 621714'),
(43, 3, 1, 'Eravangudi 621803'),
(44, 3, 1, 'Gangaikondacholapuram 621901'),
(45, 3, 1, 'Elakurichi 621715'),
(46, 3, 1, 'Govindapuram 621713'),
(47, 3, 1, 'Devamangalam 612902'),
(48, 3, 1, 'Hasthinapuram  621704'),
(49, 3, 1, 'Devamangalam 612902'),
(50, 3, 1, 'Dalavoy 621730'),
(51, 3, 1, 'Ilaiyur  621806'),
(52, 3, 1, 'Ilandaikudm 621851'),
(53, 3, 1, 'Ilayaperumanallur 612903'),
(54, 3, 1, 'Iluppaiyur  621718'),
(55, 3, 1, 'Inam Athur 621704'),
(56, 3, 1, 'Irugaiyur  612904'),
(57, 3, 1, 'Irubilikurichi  621804'),
(58, 3, 1, 'Jayamkondacholapuram  621802'),
(59, 3, 1, 'Kadambur  621701'),
(60, 3, 1, 'Kadugur  621705'),
(61, 3, 1, 'Kaduvettankuruchi  612904'),
(62, 3, 1, 'Kallankuruchi  621705'),
(63, 3, 1, 'Kallathur thandalai 621803'),
(64, 3, 1, 'Keller 621803'),
(65, 3, 1, 'Kaluvanthondi 621802'),
(66, 3, 1, 'Kamarasavalli 621715'),
(67, 3, 1, 'Kandiankollai 621806'),
(68, 3, 1, 'Kandirathitham 621851'),
(69, 3, 1, 'Karadikulam 621802'),
(70, 3, 1, 'Karaikurichi 612904'),
(71, 3, 1, 'Kargudi 612904'),
(73, 3, 1, 'Karuppur Senapathy 621707'),
(74, 3, 1, 'Karuppilakattalai 621707'),
(75, 3, 1, 'Kansankottai 621701'),
(76, 3, 1, 'Kattagaram 612903'),
(77, 3, 1, 'Kattathur 621803'),
(78, 3, 1, 'Kavanur 621704'),
(80, 3, 1, 'Kavarapalayam 608901'),
(81, 3, 1, 'Keelamichaelpatti 612904'),
(82, 3, 1, 'Kidaramkondan 612901'),
(83, 3, 1, 'Kilaiyur 621707'),
(85, 3, 1, 'Kilakavattankurichi 621715'),
(86, 3, 1, 'Kilakoladur 621705'),
(87, 3, 1, 'Kilakodiyiruppu 621802'),
(88, 3, 1, 'Kilamaligai 621710'),
(89, 3, 1, 'Kilamadhur 621713'),
(90, 3, 1, 'Kilaneduvoi 621805'),
(91, 3, 1, 'Kilapaluvur 621707'),
(92, 3, 1, 'Kilaveli 621804'),
(93, 3, 1, 'Kodali 612902'),
(94, 3, 1, 'kodalikaruppur 612902'),
(95, 3, 1, 'kodukkur 621719'),
(96, 3, 1, 'koilesanai  621851'),
(97, 3, 1, 'kollapuram 612901'),
(98, 3, 1, 'koovathur  621803'),
(99, 3, 1, 'kottiyal  612904'),
(100, 3, 1, 'kulathur  621803'),
(101, 3, 1, 'kulumur  621714'),
(102, 3, 1, 'kumiliam  621804'),
(103, 3, 1, 'kumiliankuli  621803'),
(104, 3, 1, 'kunamangalam  621704'),
(105, 3, 1, 'kundaveli  621715'),
(106, 3, 1, 'kuruvadi  621715'),
(107, 3, 1, 'kuruvalapparkoil  621904'),
(108, 3, 1, 'Kavarapalayam 608901'),
(109, 2, 1, 'Avinashi'),
(110, 2, 1, 'Cbe North'),
(111, 2, 1, 'Avinashi'),
(116, 5, 1, 'Agraharasamakulam'),
(117, 5, 1, 'Anaikattai North'),
(118, 5, 1, 'Anaikattai South'),
(119, 5, 1, 'Anupperpalayam'),
(120, 5, 1, 'Bilichi'),
(121, 5, 1, 'Chinnathadagam'),
(122, 5, 1, 'Chinnavedampatti'),
(123, 0, 1, 'Coimbatore Corporation '),
(124, 5, 1, 'Ganapathy'),
(125, 5, 1, 'Gudalur'),
(126, 5, 1, 'Idagarai'),
(127, 5, 1, 'Kalapatti'),
(128, 5, 1, 'Kallipalayam'),
(129, 5, 1, 'Kavundampalayam'),
(130, 7, 1, 'Keeranatham'),
(131, 5, 1, 'Kondayampalayam'),
(132, 5, 1, 'Krishnarayapalayam'),
(133, 7, 1, 'Kurudampalayam'),
(134, 5, 1, 'Naickenpalayam'),
(135, 5, 1, 'Nanjundapuram'),
(136, 5, 1, 'Narasimhanaickenpalayam'),
(137, 5, 1, 'Pannimadai'),
(138, 5, 1, 'Periyanaickenpalayam'),
(139, 5, 1, 'Puliakulam'),
(140, 5, 1, 'Sanganur'),
(141, 5, 1, 'Saravanampatti'),
(142, 5, 1, 'sarcarsamakulam'),
(143, 5, 1, 'Saravanampatti'),
(144, 5, 1, 'somayampalayam'),
(145, 5, 1, 'Telungupalayam'),
(146, 5, 1, 'Thudiyalur'),
(147, 5, 1, 'veerakeralam'),
(148, 5, 1, 'Thudiyalur'),
(149, 5, 1, 'veerapandi'),
(150, 5, 1, 'Thudiyalur'),
(151, 5, 1, 'veerapandi'),
(152, 5, 1, 'vellakinar'),
(153, 5, 1, 'vellamadai'),
(154, 5, 1, 'vellanaipatti'),
(155, 5, 1, 'vilankuruchi'),
(156, 5, 1, 'vellanaipatti'),
(157, 5, 1, 'Alandurai'),
(158, 5, 1, 'Arasipalayam'),
(159, 5, 1, 'Boluvampatti'),
(160, 5, 1, 'Boluvampatti (block)'),
(161, 5, 1, 'Boluvampatti Extn'),
(162, 5, 1, 'chettipalayam'),
(163, 5, 1, 'Devarayapuram'),
(164, 5, 1, 'chettipalayam'),
(165, 5, 1, 'East chithraichavadi'),
(166, 5, 1, 'Ettimadai'),
(167, 5, 1, 'Ikkaraibolu vampatti'),
(168, 5, 1, 'Jagiru Naickenpalayam'),
(169, 5, 1, 'Kalikkanaickenpalayam'),
(170, 5, 1, 'Karunchanigoundenpalayam'),
(171, 5, 1, 'Komarapalayam'),
(172, 5, 1, 'Kurichi'),
(173, 5, 1, 'Madampatti'),
(174, 5, 1, 'Madhavarayapuram'),
(175, 5, 1, 'Madukkarai'),
(176, 5, 1, 'Malumichampatti'),
(177, 5, 1, 'Mavuthampathy'),
(178, 7, 1, 'Myleripalayam'),
(179, 5, 1, 'Nachipalayam'),
(180, 5, 1, 'Narasipuram'),
(181, 5, 1, 'Orattukuppai'),
(182, 5, 1, 'Othakkalmandapam'),
(183, 5, 1, 'Palathurai'),
(184, 5, 1, 'Perur'),
(185, 5, 1, 'Pichanur'),
(186, 5, 1, 'Pouluvampatti'),
(187, 5, 1, 'Ramanathapuram'),
(188, 5, 1, 'Seerapalayam'),
(189, 5, 1, 'Singanallur'),
(190, 5, 1, 'Solakarai'),
(191, 5, 1, 'Solakarai'),
(192, 5, 1, 'Soviripalayam'),
(193, 5, 1, 'Sundakkamuthur'),
(194, 5, 1, 'Thambagoundenpalayam'),
(195, 5, 1, 'Theethipalayam'),
(196, 5, 1, 'Thenkarai'),
(197, 5, 1, 'Thennamanallur'),
(198, 5, 1, 'Thirumalayampalayam'),
(199, 5, 1, 'Thondamuthur'),
(200, 5, 1, 'Thirumalayampalayam'),
(201, 5, 1, 'Uppilipalayam'),
(202, 5, 1, 'Vadavalli'),
(203, 5, 1, 'Valukkuparai'),
(204, 5, 1, 'Vadapatti'),
(205, 5, 1, 'Vellalore'),
(206, 5, 1, 'Velliamplaipattinam'),
(207, 5, 1, 'West Chitrachavadi'),
(208, 5, 1, 'Belladhi'),
(209, 5, 1, 'Bellepalayam'),
(210, 5, 1, 'Chickarapalayam'),
(211, 5, 1, 'Chikkadasampalayam'),
(212, 5, 1, 'Chinnakallipatti'),
(213, 5, 1, 'Gopanari'),
(214, 5, 1, 'Illupanatham'),
(215, 5, 1, 'Irumbarai'),
(216, 5, 1, 'Jadayampalayam'),
(217, 5, 1, 'Kalam Palayam'),
(218, 5, 1, 'Kallar'),
(219, 5, 1, 'Karamadai'),
(221, 7, 1, 'Kemmaranpalayam'),
(222, 5, 1, 'Kulikal Track'),
(223, 5, 1, 'Marudur'),
(224, 5, 1, 'Melur Slope'),
(225, 5, 1, 'Muduthurai'),
(226, 5, 1, 'Nellithurai'),
(227, 5, 1, 'Odanthurai'),
(228, 5, 1, 'Pillur Slope'),
(229, 5, 1, 'Sirumugai'),
(230, 5, 1, 'Sunguttai Velamundi'),
(231, 5, 1, 'Thekkampatti'),
(232, 5, 1, 'Tholampalayam'),
(233, 5, 1, 'Velliangkadu'),
(234, 5, 1, 'Velliankadu'),
(236, 5, 1, 'Mettupalayam'),
(237, 4, 1, 'Thiruvallur'),
(238, 4, 1, 'oragadam'),
(239, 4, 1, 'Thiruvallur'),
(240, 4, 1, 'Anna nagar'),
(241, 4, 1, 'Madipakkam'),
(242, 4, 1, 'Tambaram East'),
(243, 4, 1, 'Pallikaranai'),
(244, 4, 1, 'Adambakkam'),
(245, 4, 1, 'Tharamani'),
(246, 4, 1, 'Anna nagar'),
(247, 4, 1, 'Arambakkam'),
(248, 4, 1, 'Tiruverkadu'),
(249, 4, 1, 'Triplicane'),
(250, 4, 1, 'Vadapalani'),
(251, 4, 1, 'old pallavaram'),
(252, 4, 1, 'Padappai'),
(253, 4, 1, 'Padi'),
(254, 4, 1, 'Virugambakkam'),
(255, 4, 1, 'Park Town'),
(256, 4, 1, 'Egmore'),
(257, 4, 1, 'Pazhavanthangal'),
(258, 4, 1, 'Gopal puram'),
(259, 4, 1, 'Greams  Road'),
(260, 4, 1, 'Agaram'),
(261, 4, 1, 'Alwarpet'),
(262, 4, 1, 'Ambattur industrial'),
(263, 4, 1, 'Ambattur  OT'),
(264, 4, 1, 'Anna nagar  East'),
(265, 4, 1, 'Anna  Road'),
(266, 4, 1, 'Arumbakkam'),
(267, 4, 1, 'Ayanavaram'),
(268, 4, 1, 'Cathedral  Road'),
(269, 4, 1, 'Chetpet'),
(270, 4, 1, 'Choolaimedu'),
(271, 4, 1, 'Ennore'),
(272, 4, 1, 'Gandhi nagar'),
(273, 4, 1, 'Guindy'),
(274, 4, 1, 'Gerugambakkam'),
(275, 4, 1, 'Indira  nagar'),
(276, 4, 1, 'Jawahar  nagar'),
(277, 4, 1, 'Kanchipuram'),
(278, 4, 1, 'Karayanchavadi'),
(279, 4, 1, 'Kelambakkam'),
(280, 4, 1, 'Kilpauk'),
(281, 4, 1, 'Kondungaiyur'),
(282, 4, 1, 'korattur'),
(283, 4, 1, 'Kotturpuram'),
(284, 4, 1, 'Kundrathur'),
(285, 4, 1, 'Madambakkam'),
(286, 4, 1, 'Mahabalipuram'),
(287, 4, 1, 'Mandaveli'),
(288, 4, 1, 'Mannurpet'),
(289, 4, 1, 'Metha nagar'),
(290, 4, 1, 'Minjur'),
(291, 4, 1, 'Mogappair East'),
(292, 4, 1, 'Mount riad'),
(293, 4, 1, 'Nandambakkam'),
(294, 4, 1, 'Nazerethpettai'),
(295, 4, 1, 'Nerkundram'),
(296, 4, 1, 'Nilankarai'),
(297, 4, 1, 'Old perungalattu'),
(298, 4, 1, 'palavakkam'),
(299, 4, 1, 'Pattalam'),
(300, 4, 1, 'Periyar nagar'),
(301, 4, 1, 'Puzhal'),
(302, 4, 1, 'Puludivakkam'),
(303, 4, 1, 'Raja     Annamalai'),
(304, 4, 1, 'Red  Hills'),
(305, 4, 1, 'Nazarethpettai'),
(306, 4, 1, 'Pazavanthangal'),
(307, 4, 1, 'Vysarpadi'),
(308, 4, 1, 'Officers     Training   Academy'),
(309, 4, 1, 'ICF  colony'),
(310, 4, 1, 'Nandabakkammudiyiruppelavr'),
(311, 4, 1, 'Kaveripettai'),
(312, 4, 1, 'RA Puram'),
(313, 4, 1, 'Shed  Avadi'),
(314, 4, 1, 'Sathyamurthi    Nagar'),
(315, 4, 1, 'Sowcarpet'),
(316, 4, 1, 'Tharamani'),
(317, 4, 1, 'Thirupalaivanam'),
(318, 4, 1, 'St.  George'),
(319, 4, 1, 'Thrisulam  village'),
(320, 4, 1, 'Palavanthangal'),
(321, 4, 1, 'Thirupalaivanam'),
(322, 4, 1, 'Imr Road'),
(323, 4, 1, 'Velacheri'),
(324, 5, 1, 'Poonamalli'),
(325, 4, 1, 'E.C.R Road'),
(326, 4, 1, 'Valasaravakam'),
(327, 4, 1, 'Porur'),
(328, 4, 1, 'Kancheepuram'),
(329, 4, 1, 'Gudovancherry'),
(330, 4, 1, 'Adyar'),
(331, 4, 1, 'Urappakkam'),
(332, 4, 1, 'Manali'),
(333, 4, 1, 'Alwarthirunagar'),
(334, 4, 1, 'Mangadu'),
(335, 4, 1, 'Mylapore'),
(336, 4, 1, 'Tiruvanmiyur'),
(337, 4, 1, 'Thiruvottiyur'),
(338, 4, 1, 'Ashok Nagar'),
(339, 4, 1, 'Nanganallur'),
(340, 5, 1, 'Ayanpuram'),
(341, 4, 1, 'Ayyappa Nagar'),
(342, 4, 1, 'Nungambakkam'),
(343, 4, 1, 'Besant Nagar'),
(344, 4, 1, 'Vandalur'),
(345, 4, 1, 'Velachery'),
(346, 4, 1, 'Chetpet'),
(347, 4, 1, 'Vepery'),
(348, 4, 1, 'Chitlapakkam'),
(349, 4, 1, 'Villivakkam'),
(350, 4, 1, 'Choolai'),
(351, 4, 1, 'Chromepet'),
(352, 4, 1, 'Ethiraj Salai'),
(353, 4, 1, 'Washermanpet'),
(354, 4, 1, 'Mambalam'),
(355, 4, 1, 'Pattabiram'),
(356, 4, 1, 'Ekkaduthangal'),
(357, 4, 1, 'Perambur'),
(358, 4, 1, 'Perungudi'),
(359, 4, 1, 'Polichalur'),
(360, 4, 1, 'Ponneri'),
(361, 4, 1, 'Ponniammanmedu'),
(362, 4, 1, 'Abhiramapuram'),
(363, 4, 1, 'Alandur'),
(364, 4, 1, 'Alappakkam'),
(365, 4, 1, 'Ambattur'),
(366, 4, 1, 'Ambattur  OT'),
(367, 4, 1, 'Ambattur');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `DONOR_ID` int NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `FATHER_NAME` varchar(100) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `BLOOD` varchar(10) DEFAULT NULL,
  `BODY_WEIGHT` float DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ADDRESS` text,
  `AREA` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL,
  `PINCODE` varchar(10) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `CONTACT_1` varchar(15) DEFAULT NULL,
  `NEW_DONOR` varchar(10) DEFAULT NULL,
  `LAST_D_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor1`
--

CREATE TABLE `blood_donor1` (
  `DONOR_ID` int NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `FATHER_NAME` varchar(100) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `BLOOD` varchar(10) DEFAULT NULL,
  `BODY_WEIGHT` float DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `CONTACT_1` varchar(15) DEFAULT NULL,
  `NEW_DONOR` varchar(10) DEFAULT NULL,
  `LAST_D_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_donor1`
--

INSERT INTO `blood_donor1` (`DONOR_ID`, `NAME`, `FATHER_NAME`, `GENDER`, `DOB`, `BLOOD`, `BODY_WEIGHT`, `EMAIL`, `STATE`, `COUNTRY`, `CONTACT_1`, `NEW_DONOR`, `LAST_D_DATE`) VALUES
(9, 'Harsha Patel', 'dfd', 'Male', '2003-05-05', 'A+', 67, 'patelharsha0190@gmail.com', 'Karnataka', 'India', '2233445566', 'No', '2023-05-04'),
(10, 'srajan', 'gf', 'Male', '2005-08-07', 'A+', 56, 'patelharsha0190@gmail.com', 'Karnataka', 'India', 'dfdfd', 'Yes', '2022-12-05'),
(11, 'ankitha', 'namadev', 'Female', '2002-12-29', 'AB+', 90, 'ankitha@gmail.com', 'Karnataka', 'India', '7899657243', 'Yes', '2024-09-02'),
(12, 'ankitha', 'desss', 'Female', '2002-12-29', 'O+', 90, 'ankitha@gmail.com', 'Karnataka', 'India', '3488976678', 'Yes', '2024-10-23'),
(13, 'Harsha Patel', 'sdxsd', 'Male', '2003-02-10', 'O-', 34, 'patelharsha0190@gmail.com', 'Karnataka', 'India', '6578542893', 'Yes', '2024-10-05'),
(14, 'srajan', 'hhhhh', 'Male', '2004-10-12', 'B+', 60, 'srajan@gmail.com', 'Karnataka', 'India', '9876543210', 'Yes', '2004-03-07'),
(15, 'pavan patel', 'dinakar patel', 'Male', '2004-03-05', 'AB+', 60, 'pavanpatel12@gmai.com', 'Karnataka', 'India', '7338628319', 'Yes', '2020-03-04'),
(16, 'srajan', 'nagaraj', 'Male', '2004-06-25', 'A+', 70, 'srajannk@gmail.com', 'Karnataka', 'India', '7204574817', 'No', '2023-08-22'),
(17, 'Harsha Patel', 'aaa', 'Male', '2004-05-04', 'AB+', 60, 'patelharsha0190@gmail.com', 'Karnataka', 'India', '124567890', 'No', '2023-06-08'),
(18, 'pavan', 'dinakar patel', 'Male', '2004-04-05', 'AB+', 60, 'pavan08@gmail.com', 'Karnataka', 'India', '7338628319', 'No', '2004-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CITY_ID` int NOT NULL,
  `STATE_ID` int NOT NULL,
  `CITY_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CITY_ID`, `STATE_ID`, `CITY_NAME`) VALUES
(3, 1, 'Ariyalur'),
(4, 1, 'Chennai'),
(5, 1, 'Coimbatore'),
(7, 1, 'Cuddalore'),
(8, 1, 'Dharmapuri'),
(9, 1, 'Dindigul'),
(10, 1, 'Erode'),
(11, 1, 'Kanchipuram'),
(12, 1, 'Kanyakumari'),
(13, 1, 'Karur'),
(14, 1, 'Krishnagiri'),
(15, 1, 'Madurai'),
(16, 1, 'Nagapattinam'),
(17, 1, 'Namakkal'),
(18, 1, 'Nilgiris and Ooty'),
(19, 1, 'Perambalur'),
(20, 1, 'Pudukkottai'),
(21, 1, 'Ramanathapuram'),
(22, 1, 'Salem'),
(23, 1, 'Sivaganga'),
(24, 1, 'Thanjapur'),
(25, 1, 'Theni'),
(26, 1, 'Thoothukudi'),
(27, 1, 'Tiruchirappalli'),
(28, 1, 'Tirunelveli'),
(29, 1, 'Tiruppur'),
(30, 1, 'Tiruvallur'),
(31, 1, 'Tiruvannamalai'),
(32, 1, 'Tiruvarur'),
(33, 1, 'Vellore'),
(34, 1, 'Viluppuram'),
(35, 1, 'Virudhunagar'),
(36, 40, 'Mali'),
(37, 37, 'Canada'),
(38, 38, 'Kwait'),
(39, 39, 'Malaysia & Brunei'),
(40, 41, 'Nepal'),
(41, 42, 'Oman'),
(42, 43, 'Pakistan'),
(43, 44, 'Qater'),
(44, 45, 'Russia'),
(45, 46, 'Saudi Arabia'),
(46, 47, 'Singapore'),
(47, 46, 'Saudi Arabia'),
(48, 2, 'Kerala'),
(49, 2, 'Alappuzha'),
(50, 2, 'Alleppey'),
(51, 2, 'Alwaye'),
(52, 2, 'Bekal'),
(53, 2, '  Fort Kochi'),
(54, 2, 'Kochi'),
(55, 2, 'Kollam'),
(56, 2, 'Thrissur'),
(57, 2, 'Ernakulam'),
(58, 2, 'Kottayam'),
(59, 2, 'Kovalam'),
(60, 2, 'Kozikode'),
(61, 2, 'Kumarakom'),
(62, 2, 'Malampuzha'),
(63, 2, 'Munnar'),
(64, 2, 'Palakkad'),
(65, 2, 'Pathanamthitta'),
(66, 2, 'Thoppumpaddy'),
(67, 2, 'Ponnani'),
(68, 2, 'Punalur'),
(69, 2, 'Thalassery'),
(70, 2, 'Thekkady'),
(71, 2, 'Thiruvananthapuram'),
(72, 2, 'Thrippunithura'),
(73, 2, 'Varkala'),
(74, 2, 'Perinthalamanna');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `COUNTRY_ID` int NOT NULL,
  `COUNTRY_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`COUNTRY_ID`, `COUNTRY_NAME`) VALUES
(1, 'India'),
(2, 'Saudi Arabia'),
(4, 'Kwait'),
(5, 'Qatar'),
(6, 'Singapore'),
(7, 'Russia'),
(8, 'Pakistan'),
(10, 'Nepal'),
(11, 'Mali'),
(12, 'Malaysia & Brunei'),
(13, 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `created_at`, `usertype`) VALUES
(12, 'admin', 'admin@gmail.com', 'admin@123.', '2025-04-30 12:02:05', 'admin'),
(18, 'ankitha', 'ankitha@gmail.com', 'ankitha123.', '2025-05-02 04:19:51', 'user'),
(21, 'pavan', 'pavan@gmail.com', 'pavan123.', '2025-05-02 13:27:52', 'user'),
(22, 'srajan', 'srajan@gmail.com', 'srajan123.', '2025-05-02 13:45:42', 'user'),
(23, 'pavan patel', 'pavanpatel12@gmail.com ', 'pavan@123.', '2025-05-05 15:24:48', 'user'),
(24, 'srajan', 'srajannk@gmail.com', 'sajju@25', '2025-05-12 06:50:53', 'user'),
(25, 'pavan', 'patelharsha0190@gmail.com', '123!@#qwe', '2025-05-16 09:00:41', 'user'),
(26, 'pavan patel', 'pavan08@gmail.com', 'pavan@123', '2025-05-22 14:40:02', 'user'),
(27, 'PAVAN PATEL', 'pavan033@gmail.com', 'pavan@123.', '2025-05-23 05:34:54', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `CONTACT` text NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `MESSAGE` text NOT NULL,
  `STATUS` text NOT NULL,
  `LOGS` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `NAME`, `CONTACT`, `EMAIL`, `MESSAGE`, `STATUS`, `LOGS`) VALUES
(4, 'sam', '9876543212', 'sam@gmail.com', 'hai', '0', '2017-03-16 10:40:34'),
(6, 'Harsha Patel', '09483954349', 'patelharsha0190@gmail.com', 'hng', '0', '2025-05-01 15:38:23'),
(7, 'ankitha', '09483954349', 'patelharsha0190@gmail.com', 'cfd', '0', '2025-05-01 16:41:37'),
(9, 'srajan', '09483954349', 'patelharsha0190@gmail.com', 'veryy nicee', '0', '2025-05-02 19:21:43'),
(10, 'pavan patel', '7338628319', 'pavanpatel12@gmail.com', 'nice....', '0', '2025-05-05 20:58:24'),
(11, 'srajan', '7204574817', 'srajannk@gmail.com', 'Thank you from bottom of my heart!!!', '0', '2025-05-12 12:34:54'),
(12, 'Harsha Patel', '09483954349', 'patelharsha0190@gmail.com', 'thank you', '0', '2025-05-12 16:09:07'),
(13, 'pavan patel', '09483954349', 'patelharsha0190@gmail.com', 'Thankfulyyyy.........', '0', '2025-05-22 20:18:46'),
(14, 'Harsha Patel', '09483954349', 'patelharsha0190@gmail.com', 'thank you', '0', '2025-05-23 09:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `request_blood`
--

CREATE TABLE `request_blood` (
  `ID` int NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `BLOOD` varchar(10) DEFAULT NULL,
  `BUNIT` int DEFAULT NULL,
  `HOSP` text,
  `CITY` varchar(50) DEFAULT NULL,
  `PIN` varchar(10) DEFAULT NULL,
  `DOC` varchar(100) DEFAULT NULL,
  `RDATE` varchar(20) DEFAULT NULL,
  `CNAME` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `CON1` varchar(15) DEFAULT NULL,
  `CON2` varchar(15) DEFAULT NULL,
  `REASON` text,
  `CADDRESS` text,
  `STATUS` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_blood`
--

INSERT INTO `request_blood` (`ID`, `NAME`, `GENDER`, `BLOOD`, `BUNIT`, `HOSP`, `CITY`, `PIN`, `DOC`, `RDATE`, `CNAME`, `EMAIL`, `CON1`, `CON2`, `REASON`, `CADDRESS`, `STATUS`) VALUES
(5, 'ankitha', 'Female', 'A2B+', 2, 'kmc', 'Kundapura', '576201', 'rajesh', '09/12/2025', 'ankitha', 'ankitha@gmail.com', '9888767655', '7899546765', 'blood', 'jskdkjdasa', 0),
(6, 'Harsha Patel', 'Male', 'B-', 4, 'Kharvi Keri Melkeri Kundapura', 'Kundapura', '576201', 'hjghdwe', '03/4/2024', '5476435687', 'patelharsha0190@gmail.com', '5687564365', '5487563467', 'ftdtsgfdhshvgsdvghs', 'fdcgfdgcfgcfgd', 0),
(7, 'srajan', 'Male', 'AB+', 4, 'Kharvi Keri Melkeri Kundapura', 'Kundapura', '576201', 'haaaa', '2/3/2020', '9876543210', 'patelharsha0190@gmail.com', '9876543210', '9876543210', 'for accident', 'Kharvi Keri Melkeri Kundapura', 0),
(8, 'srajan', 'Male', 'A+', 10, 'Kharvi Keri Melkeri Kundapura', 'Kundapura', '576201', 'nurseamma', '06/07/2025', 'srajan', 'srajannk@gmail.com', '7204574817', '7204574817', 'accident', 'Kharvi Keri Melkeri Kundapura', 0),
(9, 'Harsha Patel', 'Male', 'A+', 10, 'Kharvi Keri Melkeri Kundapura', 'Kundapura', '576201', 'yuhui', '5/6/2025', 'sfg', 'patelharsha0190@gmail.com', '1234567890', '1234567890', '6ryguuhu', 'gt7t7y', 0),
(10, 'pavan patel', 'Male', 'AB+', 1, 'Kharvi Keri Melkeri Kundapura', 'Kundapura', '576201', 'sumashreeee', '1/3/2025', '7338628319', 'patelharsha0190@gmail.com', '9876543210', '9876543210', 'accident...', 'Kharvi Keri Melkeri Kundapura', 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `STATE_ID` int NOT NULL,
  `STATE_NAME` varchar(150) NOT NULL,
  `COUNTRY_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`STATE_ID`, `STATE_NAME`, `COUNTRY_ID`) VALUES
(1, 'Tamilnadu', 1),
(2, 'Kerala', 1),
(3, 'Andra Pradesh', 1),
(4, 'Arunacha Pradesh', 1),
(5, 'Assam', 1),
(6, 'Bihar', 1),
(7, 'Chhattisgarh', 1),
(8, 'Goa', 1),
(9, 'Gujarat', 1),
(10, 'Haryana', 1),
(11, 'Himachal Pradesh', 1),
(12, 'Jammu And Kashmir', 1),
(13, 'Jharkhand', 1),
(14, 'Karnataka', 1),
(15, 'Madya Pradesh', 1),
(16, 'Maharashtra', 1),
(17, 'Manipur', 1),
(18, 'Meghalaya', 1),
(19, 'Mizoram', 1),
(20, 'Nagaland', 1),
(21, 'Orissa', 1),
(22, 'Punjab', 1),
(23, 'Rajasthan', 1),
(24, 'sikkim', 1),
(25, 'Tripura', 1),
(26, 'Uttaranchal', 1),
(27, 'Utter Pradesh', 1),
(28, 'West Bengal', 1),
(29, 'Andaman and Nicobar Islands', 1),
(30, 'Chandigarh ', 1),
(31, 'Daddy and Nagar Haveli', 1),
(32, 'Daman and Diu', 1),
(33, 'Delhi', 1),
(34, 'Lakshadweep', 1),
(35, 'Puducherry', 1),
(36, 'Telangana', 1),
(37, 'Canada', 13),
(38, 'Kwait', 4),
(39, 'Malaysia & Brunei', 12),
(40, 'Mali', 11),
(41, 'Nepal', 10),
(42, 'Oman', 9),
(43, 'Pakistan', 8),
(45, 'Russia', 7),
(46, 'Saudi Arabia', 2),
(47, 'Singapore', 6),
(48, 'Saudi Arabia', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`AREA_ID`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`DONOR_ID`);

--
-- Indexes for table `blood_donor1`
--
ALTER TABLE `blood_donor1`
  ADD PRIMARY KEY (`DONOR_ID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CITY_ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `request_blood`
--
ALTER TABLE `request_blood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`STATE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `AREA_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `DONOR_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_donor1`
--
ALTER TABLE `blood_donor1`
  MODIFY `DONOR_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `CITY_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `COUNTRY_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `request_blood`
--
ALTER TABLE `request_blood`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `STATE_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
