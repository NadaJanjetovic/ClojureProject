-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 09:52 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nadaclojure`
--

-- --------------------------------------------------------

--
-- Table structure for table `clanci`
--

CREATE TABLE `clanci` (
  `id` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clanci`
--

INSERT INTO `clanci` (`id`, `Title`, `Description`) VALUES
(3, 'Paradentoza', 'Parodontopatija (paradentoza) je oboljenje parodoncijuma, odnosno potpornog aparata zuba. Ovo oboljenje ima nekoliko stadijuma od ?ega zavisi i ozbiljnost posledica. Ukoliko je u poodmaklom stadijumu, parodontopatija može dovesti i do gubitka zuba. Do ovako drasti?nog ishoda može do?i zbog toga što usled parodontopatije dolazi do postepenog razaranja parodontalnog tkiva koje na kraju rezultira povla?enjem i gubitkom vili?ne kosti usled ?ega zub ostaje bez adekvatne potpore,migrira,klati se i potom ispada.\r\n\r\n\r\nVeoma je važno naglasiti da parodontopatija ne može da se izle?i u potpunosti. To zna?i da desni (i celokupni potporni zubni aparat) ne mogu da se oporave i vrate u po?etno, zdravo stanje ukoliko su jednom ošte?ene usled paradentoze. Zbog toga je od krucijalne važnosti da se primete prvi simptomi paradentoze kako bi se oboljenje zaustavilo u što ranijem stadijumu. Po?etni stadijumi nisu opasni, a tretman u tom periodu je izuzetno jednostavan.\r\nNa nastanak parodontopatije uti?u pre svega dentalni plak i zubni kamenac. Dentalni plak je bezbojna, lepljiva masa koja se nakuplja na zubima uglavnom kao posledica ostataka od hrane. U sastav dentalnog plaka ulaze bakterije,koje proizvode endotoksine (štetne materije) koji pokrecu imuni sistem na odbranu.Iz te medjusobne interakcije nastaje zapaljenje , dalje resorpcija( gubitak) kosti, pojava parodontalnih dzepova i kasnije potpuno razaranje parodontalnog tkiva i ispadanje zuba.Zbog toga dentalni plak predstavlja izuzetnu opasnost po desni.\r\n\r\n \r\n\r\nZubni kamenac nastaje kada se dentalni plak meša sa solima i mineralima iz pljuva?ke. Kamenac negativno uti?e na desni tako što stvara mesta na kojima se dodatno nakuplja plak koji je potom teže ukloniti. Pored toga, kamenac može vršiti i mehani?ki pritisak na gingivu što tako?e uti?e na nastanak parodontoze.\r\n\r\n\r\nOsim plaka i kamenca, postoje dodatni faktori usled kojih se parodontopatija može brže razvijati:\r\n\r\nnepravilna i neredovna oralna higijena\r\npušenje\r\nloši protetski radovi\r\nneka sistemska oboljenja\r\nanomalije oblika i položaja zuba\r\ngenetika\r\nupotreba nekih lekova'),
(4, 'Izbeljivanje zuba', 'Izbeljivanje zuba je proces uklanjanja raznih mrlja i diskoloracija sa površine zuba, a samim tim i boja zuba postaje belja. Beljenje zuba je veoma popularna procedura, jer možete bez ikakvih neprijatnosti i po pristupa?noj ceni do?i do prelepih belih zuba.\r\nLep osmeh je jedna od prvih stvari koju neko primeti na vama prilikom upoznavanja i svakako ?e dobro uticati na vaše samopouzdanje. Sa belim i sjajnim osmehom se ose?ate bolje i ostavljate bolji utisak. Životni stil ili starenje mogu negativno uticati na boju zuba. Stvari kao što su kafa, ?aj, koka-kola, crveno vino i cigarete mogu doprineti tamnjenju zuba.\r\n\r\nNaša ordinacija nudi najpoznatije svetski priznate metode izbeljivanja zuba: lasersko izbeljivanje zuba, white smile metodu za izbeljivanje zuba i splint/trej metodu za izbeljivanje zuba (ku?no beljenje zuba).');

-- --------------------------------------------------------

--
-- Table structure for table `dentist`
--

CREATE TABLE `dentist` (
  `Id` int(11) NOT NULL,
  `NameSurname` text,
  `Phone` text,
  `YearsOfWorking` text,
  `WorkingTime` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dentist`
--

INSERT INTO `dentist` (`Id`, `NameSurname`, `Phone`, `YearsOfWorking`, `WorkingTime`) VALUES
(6, 'Danica Stojanovic', '065697', '2 godina', '2h-18h'),
(9, 'Nadezda Janjetovic', '060270010155', '1 godina', '2h-20h');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `ServiceName` text NOT NULL,
  `Price` double NOT NULL,
  `Description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `ServiceName`, `Price`, `Description`) VALUES
(2, 'Izbeljivanje zuba', 35200, 'Izbeljivanje zuba kod nas daje blistav osmeh!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanci`
--
ALTER TABLE `clanci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dentist`
--
ALTER TABLE `dentist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanci`
--
ALTER TABLE `clanci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dentist`
--
ALTER TABLE `dentist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
