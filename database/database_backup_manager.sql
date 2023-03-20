-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Mar 2023, 22:41
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
-- Struktura tabeli dla tabeli `databases_backup_path`
--

CREATE TABLE `databases_backup_path` (
  `backup_path_id` int(1) NOT NULL,
  `backup_path_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `database_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `databases_operation_reports`
--
ALTER TABLE `databases_operation_reports`
  MODIFY `datatabase_operation_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
