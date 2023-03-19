-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Mar 2023, 11:04
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `database_backup_manager`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `databases_list`
--

CREATE TABLE `databases_list` (
  `database_id` int(11) NOT NULL,
  `database_name` varchar(100) NOT NULL,
  `database_user` varchar(100) NOT NULL,
  `database_password` varchar(100) NOT NULL,
  `database_host` varchar(100) NOT NULL,
  `database_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `databases_list`
--

INSERT INTO `databases_list` (`database_id`, `database_name`, `database_user`, `database_password`, `database_host`, `database_status`) VALUES
(1, 'czaniec_pogoda', 'root', '', 'localhost', 'Aktywny'),
(9, 'flota_database', 'root', '', 'localhost', 'Aktywny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `databases_operation_reports`
--

CREATE TABLE `databases_operation_reports` (
  `datatabase_operation_id` int(11) NOT NULL,
  `datatabase_operation_database_name` varchar(100) NOT NULL,
  `datatabase_operation_status` varchar(30) NOT NULL,
  `datatabase_operation_date` datetime NOT NULL,
  `datatabase_operation_filename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `databases_operation_reports`
--

INSERT INTO `databases_operation_reports` (`datatabase_operation_id`, `datatabase_operation_database_name`, `datatabase_operation_status`, `datatabase_operation_date`, `datatabase_operation_filename`) VALUES
(7, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-05 19:24:46', ''),
(8, 'asdasd', 'Powodzenie operacji', '2023-03-05 19:24:48', ''),
(9, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-05 19:49:12', 'czaniec_pogoda_05_03_2023@19_49@id_6404e428ae27b'),
(10, 'asdasd', 'Powodzenie operacji', '2023-03-05 19:49:15', 'asdasd_05_03_2023@19_49@id_6404e428d001b'),
(11, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:22:22', 'czaniec_pogoda_19_03_2023@09_22@id_6416c63e3345b'),
(12, 'asdasd', 'Powodzenie operacji', '2023-03-19 09:22:24', 'asdasd_19_03_2023@09_22@id_6416c63e65691'),
(13, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:22:25', 'flota_database_19_03_2023@09_22@id_6416c640b5ed0'),
(14, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:22:57', 'czaniec_pogoda_19_03_2023@09_22@id_6416c6618706b'),
(15, 'asdasd', 'Powodzenie operacji', '2023-03-19 09:23:00', 'asdasd_19_03_2023@09_22@id_6416c661ab970'),
(16, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:23:00', 'flota_database_19_03_2023@09_23@id_6416c664127fc'),
(17, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:23:15', 'czaniec_pogoda_19_03_2023@09_23@id_6416c673b1eee'),
(18, 'asdasd', 'Powodzenie operacji', '2023-03-19 09:23:18', 'asdasd_19_03_2023@09_23@id_6416c673da5da'),
(19, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:23:18', 'flota_database_19_03_2023@09_23@id_6416c67640204'),
(20, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:23:56', 'czaniec_pogoda_19_03_2023@09_23@id_6416c69c08f00'),
(21, 'asdasd', 'Powodzenie operacji', '2023-03-19 09:23:58', 'asdasd_19_03_2023@09_23@id_6416c69c2a6db'),
(22, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:23:58', 'flota_database_19_03_2023@09_23@id_6416c69e7fcc8'),
(23, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:25:56', 'czaniec_pogoda_19_03_2023@09_25@id_6416c7142c57d'),
(24, 'asdasd', 'Powodzenie operacji', '2023-03-19 09:25:58', 'asdasd_19_03_2023@09_25@id_6416c7144c5a6'),
(25, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:25:59', 'flota_database_19_03_2023@09_25@id_6416c7169d86a'),
(26, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:27:29', 'czaniec_pogoda_19_03_2023@09_27@id_6416c77149d6d'),
(27, 'asdasd', 'Powodzenie operacji', '2023-03-19 09:27:31', 'asdasd_19_03_2023@09_27@id_6416c77179361'),
(28, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:27:32', 'flota_database_19_03_2023@09_27@id_6416c773d49d7'),
(29, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:28:45', 'czaniec_pogoda_19_03_2023@09_28@id_6416c7bd1437a'),
(30, 'asdasd', 'Powodzenie operacji', '2023-03-19 09:28:47', 'asdasd_19_03_2023@09_28@id_6416c7bd41da1'),
(31, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:28:47', 'flota_database_19_03_2023@09_28@id_6416c7bf99d63'),
(32, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:51:28', 'czaniec_pogoda_19_03_2023@09_51@id_6416cd0fe11b7'),
(33, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:51:28', 'flota_database_19_03_2023@09_51@id_6416cd1019f3b'),
(34, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:52:35', 'czaniec_pogoda_19_03_2023@09_52@id_6416cd53d1765'),
(35, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:52:36', 'flota_database_19_03_2023@09_52@id_6416cd540021c'),
(36, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:57:58', 'czaniec_pogoda_19_03_2023@09_57@id_6416ce961ac03'),
(37, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:57:58', 'flota_database_19_03_2023@09_57@id_6416ce9646332'),
(38, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 09:59:53', 'czaniec_pogoda_19_03_2023@09_59@id_6416cf09239a1'),
(39, 'flota_database', 'Powodzenie operacji', '2023-03-19 09:59:53', 'flota_database_19_03_2023@09_59@id_6416cf09551f8'),
(40, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 10:00:03', 'czaniec_pogoda_19_03_2023@10_00@id_6416cf12d4cd1'),
(41, 'flota_database', 'Powodzenie operacji', '2023-03-19 10:00:03', 'flota_database_19_03_2023@10_00@id_6416cf1303648'),
(42, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 10:01:01', 'czaniec_pogoda_19_03_2023@10_01@id_6416cf4d2e0f2'),
(43, 'flota_database', 'Powodzenie operacji', '2023-03-19 10:01:01', 'flota_database_19_03_2023@10_01@id_6416cf4d53e13'),
(44, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 10:02:43', 'czaniec_pogoda_19_03_2023@10_02@id_6416cfb3a37ef'),
(45, 'flota_database', 'Powodzenie operacji', '2023-03-19 10:02:44', 'flota_database_19_03_2023@10_02@id_6416cfb3d0020'),
(46, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 10:06:12', 'czaniec_pogoda_19_03_2023@10_06@id_6416d083e3f7f'),
(47, 'flota_database', 'Powodzenie operacji', '2023-03-19 10:06:12', 'flota_database_19_03_2023@10_06@id_6416d0842386c'),
(48, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 10:07:02', 'czaniec_pogoda_19_03_2023@10_07@id_6416d0b6c8fdf'),
(49, 'flota_database', 'Powodzenie operacji', '2023-03-19 10:07:03', 'flota_database_19_03_2023@10_07@id_6416d0b6f09dd'),
(50, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 10:07:23', 'czaniec_pogoda_19_03_2023@10_07@id_6416d0cb240c1'),
(51, 'flota_database', 'Powodzenie operacji', '2023-03-19 10:07:23', 'flota_database_19_03_2023@10_07@id_6416d0cb497c9'),
(52, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 10:09:48', 'czaniec_pogoda_19_03_2023@10_09@id_6416d15c6a405'),
(53, 'flota_database', 'Powodzenie operacji', '2023-03-19 10:09:48', 'flota_database_19_03_2023@10_09@id_6416d15c8e8c2'),
(54, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 10:59:41', 'czaniec_pogoda_19_03_2023@10_59@id_6416dd0d18738'),
(55, 'flota_database', 'Powodzenie operacji', '2023-03-19 10:59:41', 'flota_database_19_03_2023@10_59@id_6416dd0d5b289'),
(56, 'czaniec_pogoda', 'Powodzenie operacji', '2023-03-19 11:00:06', 'czaniec_pogoda_19_03_2023@11_00@id_6416dd25dccfe'),
(57, 'flota_database', 'Powodzenie operacji', '2023-03-19 11:00:06', 'flota_database_19_03_2023@11_00@id_6416dd262af6c');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mail_settings`
--

CREATE TABLE `mail_settings` (
  `mail_settings_id` int(1) NOT NULL,
  `mail_settings_receiver` varchar(100) NOT NULL,
  `mail_settings_additional_receiver` varchar(100) NOT NULL,
  `mail_settings_sender` varchar(100) NOT NULL,
  `mail_settings_sender_password` varchar(100) NOT NULL,
  `mail_settings_host_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `mail_settings`
--

INSERT INTO `mail_settings` (`mail_settings_id`, `mail_settings_receiver`, `mail_settings_additional_receiver`, `mail_settings_sender`, `mail_settings_sender_password`, `mail_settings_host_address`) VALUES
(1, 'kontakt@sbdesign.com.pl', '', 'testowy@sbdesign.com.pl', 'KXX8nD_P', 'mail-serwer168839.lh.pl');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `databases_list`
--
ALTER TABLE `databases_list`
  ADD PRIMARY KEY (`database_id`);

--
-- Indeksy dla tabeli `databases_operation_reports`
--
ALTER TABLE `databases_operation_reports`
  ADD PRIMARY KEY (`datatabase_operation_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `databases_list`
--
ALTER TABLE `databases_list`
  MODIFY `database_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `databases_operation_reports`
--
ALTER TABLE `databases_operation_reports`
  MODIFY `datatabase_operation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
