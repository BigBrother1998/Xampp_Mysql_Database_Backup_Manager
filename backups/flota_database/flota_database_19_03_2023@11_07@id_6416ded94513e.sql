-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: flota_database
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car_crush_evidences`
--

DROP TABLE IF EXISTS `car_crush_evidences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_crush_evidences` (
  `car_crush_evidence_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_crush_evidence_date` date NOT NULL,
  `car_crush_evidence_description` text NOT NULL,
  `car_crush_evidence_number` varchar(30) NOT NULL,
  `car_crush_evidence_target` int(11) NOT NULL,
  `car_crush_evidence_status` varchar(15) NOT NULL,
  PRIMARY KEY (`car_crush_evidence_id`),
  KEY `car_crush_evidence_target` (`car_crush_evidence_target`),
  CONSTRAINT `car_crush_evidences_ibfk_1` FOREIGN KEY (`car_crush_evidence_target`) REFERENCES `cars_fleet` (`cars_fleet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_crush_evidences`
--

LOCK TABLES `car_crush_evidences` WRITE;
/*!40000 ALTER TABLE `car_crush_evidences` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_crush_evidences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_crush_evidences_img_attachments`
--

DROP TABLE IF EXISTS `car_crush_evidences_img_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_crush_evidences_img_attachments` (
  `car_crush_evidences_img_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_crush_evidences_img_attachment_file` text NOT NULL,
  `car_crush_evidence_target` int(11) NOT NULL,
  PRIMARY KEY (`car_crush_evidences_img_attachment_id`),
  KEY `car_crush_evidence_target` (`car_crush_evidence_target`),
  CONSTRAINT `car_crush_evidences_img_attachments_ibfk_1` FOREIGN KEY (`car_crush_evidence_target`) REFERENCES `car_crush_evidences` (`car_crush_evidence_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_crush_evidences_img_attachments`
--

LOCK TABLES `car_crush_evidences_img_attachments` WRITE;
/*!40000 ALTER TABLE `car_crush_evidences_img_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_crush_evidences_img_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_crush_evidences_pdf_attachments`
--

DROP TABLE IF EXISTS `car_crush_evidences_pdf_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_crush_evidences_pdf_attachments` (
  `car_crush_evidences_pdf_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_crush_evidences_pdf_attachment_file` text NOT NULL,
  `car_crush_evidence_target` int(11) NOT NULL,
  PRIMARY KEY (`car_crush_evidences_pdf_attachment_id`),
  KEY `car_crush_evidence_target` (`car_crush_evidence_target`),
  CONSTRAINT `car_crush_evidences_pdf_attachments_ibfk_1` FOREIGN KEY (`car_crush_evidence_target`) REFERENCES `car_crush_evidences` (`car_crush_evidence_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_crush_evidences_pdf_attachments`
--

LOCK TABLES `car_crush_evidences_pdf_attachments` WRITE;
/*!40000 ALTER TABLE `car_crush_evidences_pdf_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_crush_evidences_pdf_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars_fleet`
--

DROP TABLE IF EXISTS `cars_fleet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars_fleet` (
  `cars_fleet_id` int(11) NOT NULL AUTO_INCREMENT,
  `cars_fleet_driver_name` varchar(100) NOT NULL,
  `cars_fleet_voivodeship` varchar(50) NOT NULL,
  `cars_fleet_location` varchar(50) NOT NULL,
  `cars_fleet_model` varchar(80) NOT NULL,
  `cars_fleet_registration_number` varchar(50) NOT NULL,
  `cars_fleet_production_year` year(4) NOT NULL,
  `cars_fleet_vin_number` varchar(17) NOT NULL,
  `cars_fleet_routex_number` varchar(20) NOT NULL,
  `cars_fleet_register` varchar(30) NOT NULL,
  `cars_fleet_lease_term` date NOT NULL,
  `cars_fleet_insurance_term` date NOT NULL,
  `cars_fleet_car_overview` date NOT NULL,
  `cars_fleet_car_tacho` date NOT NULL,
  `cars_fleet_car_counter` varchar(10) NOT NULL,
  `cars_fleet_review_program` varchar(30) NOT NULL,
  `cars_fleet_comments` text NOT NULL,
  `cars_fleet_status` varchar(15) NOT NULL,
  `cars_fleet_data_color` varchar(20) NOT NULL,
  `cars_fleet_data_entry` date NOT NULL,
  `cars_fleet_entered_by` varchar(50) NOT NULL,
  `cars_fleet_edited_by` varchar(50) NOT NULL,
  PRIMARY KEY (`cars_fleet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_fleet`
--

LOCK TABLES `cars_fleet` WRITE;
/*!40000 ALTER TABLE `cars_fleet` DISABLE KEYS */;
INSERT INTO `cars_fleet` VALUES (1,'Baran Maciej','Śląskie','Czaniec','Mercedes Benz Atego 1224L','SBI 55448  (WB 2321H) ',2013,'WD89702571L754S35','5548','Ciężarowe','0000-00-00','2023-02-28','2023-05-13','0000-00-00','418','','                                \r\n                                                        ','Dostępny','orange','2023-02-23','Arkadiusz Duraj','Admin'),(3,'Stańczyk Robert ','Śląskie','Czaniec','Mercedes Benz Actros','SBI 0232A ( ST 3441J ) ',2015,'WDB96302010002015','0202','Ciężarowe','0000-00-00','2023-11-11','2023-11-08','2023-03-02','100 000','','                                                                                                                                                    ','Dostępny','','2023-02-23','Arkadiusz Duraj','Admin'),(4,'Stańczyk Robert ','Śląskie','Czaniec','Przyczepa ciężarowa Gniotpol ','SBI 128PC ( ST 0162H ) ',2015,'SYGG1216MF0000091','','Ciężarowe','0000-00-00','2023-11-11','2023-11-08','0000-00-00','0','','                                                                                        ','Dostępny','warning','2023-02-27','Arkadiusz Duraj','Admin'),(7,'Magazyn','Śląskie','Czaniec','Man TGL','SBI 94870  ( DJ 56015 )',2011,'WMAN15ZZ0BY269916','0202','Ciężarowe','0000-00-00','2023-08-01','2023-05-28','0000-00-00','0','','                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ','Dostępny','red','2023-02-23','Arkadiusz Duraj','Admin'),(8,'Magazyn','Śląskie','Czaniec','Renault Clio ','SBI 3502A  ( WE 716ST )',2018,'VF16RBF0A60122628','7171 ','Magazynierzy-Plac ','0000-00-00','2023-03-18','2023-03-18','0000-00-00','0','','                                                                                                                                                                                                                                                                            ','Dostępny','info','2023-02-24','Arkadiusz Duraj','Admin'),(9,'Mechanicy ','Śląskie','Czaniec','Renault Kangoo ','SBI 38110   (WE 6147V)',2011,'VF1FW1BB545219686','','Mechanicy ','0000-00-00','0000-00-00','2023-10-21','0000-00-00','0','','                                                                                        ','Niedostępny','red','2023-02-23','Arkadiusz Duraj','Admin'),(10,'Mechanicy ','Śląskie','Czaniec','Peugeot Boxer ','SBI 0265A ( KOL 20272 )',2018,'1','0202','Mechanicy ','0000-00-00','2023-12-08','2023-05-07','0000-00-00','0','','                            ','Dostępny','','2023-02-23','Arkadiusz Duraj','');
/*!40000 ALTER TABLE `cars_fleet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crew` (
  `crew_id` int(11) NOT NULL AUTO_INCREMENT,
  `crew_name` varchar(100) NOT NULL,
  `crew_birth_date` date NOT NULL,
  `crew_email` varchar(50) NOT NULL,
  `crew_periodic_examination` date NOT NULL,
  `crew_sanitary_examination` date NOT NULL,
  `crew_forklifts_test` date NOT NULL,
  `crew_work_at_height_permission` varchar(3) NOT NULL,
  `crew_platform_permissions` date NOT NULL,
  `crew_B_car_category_test` varchar(3) NOT NULL,
  `crew_C_car_category_test` varchar(3) NOT NULL,
  `crew_E_car_category_test` varchar(3) NOT NULL,
  `crew_truck_qualification` date NOT NULL,
  `crew_psychological_assessment` text NOT NULL,
  `crew_BHP_term` date NOT NULL,
  `crew_BHP_warrianty` int(2) NOT NULL,
  `crew_start_date_of_employment` date NOT NULL,
  `crew_end_date_of_employment` date NOT NULL,
  `crew_data_entry` date NOT NULL,
  `crew_entered_by` varchar(50) NOT NULL,
  `crew_edited_by` varchar(50) NOT NULL,
  PRIMARY KEY (`crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evidences`
--

DROP TABLE IF EXISTS `evidences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evidences` (
  `evidence_id` int(11) NOT NULL AUTO_INCREMENT,
  `evidence_date` date NOT NULL,
  `evidence_description` text NOT NULL,
  `evidence_status` varchar(15) NOT NULL,
  PRIMARY KEY (`evidence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evidences`
--

LOCK TABLES `evidences` WRITE;
/*!40000 ALTER TABLE `evidences` DISABLE KEYS */;
INSERT INTO `evidences` VALUES (1,'2023-02-24','Coś tam','W trakcie'),(2,'2023-02-09','Tak','Zakończona'),(3,'2023-02-22','Super','Zakończona');
/*!40000 ALTER TABLE `evidences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forklifts_fleet`
--

DROP TABLE IF EXISTS `forklifts_fleet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forklifts_fleet` (
  `forklifts_fleet_id` int(11) NOT NULL AUTO_INCREMENT,
  `forklifts_fleet_model` varchar(50) NOT NULL,
  `forklifts_fleet_production_year` year(4) NOT NULL,
  `forklifts_fleet_fabric_number` int(10) NOT NULL,
  `forklifts_fleet_type` varchar(30) NOT NULL,
  `forklifts_fleet_record_number` varchar(10) NOT NULL,
  `forklifts_fleet_company_record_number` varchar(10) NOT NULL,
  `forklifts_fleet_erp_record_number` varchar(10) NOT NULL,
  `forklifts_fleet_localization` varchar(50) NOT NULL,
  `forklifts_fleet_udt_technical_examination` date NOT NULL,
  `forklifts_fleet_insurance` date NOT NULL,
  `forklifts_fleet_comments` text NOT NULL,
  `forklifts_fleet_status` varchar(15) NOT NULL,
  `forklifts_fleet_data_entry` date NOT NULL,
  `forklifts_fleet_entered_by` varchar(50) NOT NULL,
  `forklifts_fleet_edited_by` varchar(50) NOT NULL,
  PRIMARY KEY (`forklifts_fleet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forklifts_fleet`
--

LOCK TABLES `forklifts_fleet` WRITE;
/*!40000 ALTER TABLE `forklifts_fleet` DISABLE KEYS */;
INSERT INTO `forklifts_fleet` VALUES (1,'GERD BAR GMBH',2013,2147483647,'Podest ruchomy','N870201259','','','Mercedes Benz Atego','2025-05-01','0000-00-00','                                                                                        ','Dostępny','2023-02-21','Arkadiusz Duraj',''),(2,'GERD BAR GMBH',2015,2147483647,'Podest ruchomy','N871600159','','','Mercedes Benz Atego 1224L','2026-01-01','0000-00-00','                                                                                        ','Dostępny','2023-02-23','Arkadiusz Duraj','');
/*!40000 ALTER TABLE `forklifts_fleet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forklifts_img_attachments`
--

DROP TABLE IF EXISTS `forklifts_img_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forklifts_img_attachments` (
  `forklift_img_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `forklift_img_attachment_file` text NOT NULL,
  `forklift_target` int(11) NOT NULL,
  PRIMARY KEY (`forklift_img_attachment_id`),
  KEY `forklift_target` (`forklift_target`),
  CONSTRAINT `forklifts_img_attachments_ibfk_1` FOREIGN KEY (`forklift_target`) REFERENCES `forklifts_fleet` (`forklifts_fleet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forklifts_img_attachments`
--

LOCK TABLES `forklifts_img_attachments` WRITE;
/*!40000 ALTER TABLE `forklifts_img_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `forklifts_img_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forklifts_pdf_attachments`
--

DROP TABLE IF EXISTS `forklifts_pdf_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forklifts_pdf_attachments` (
  `forklift_pdf_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `forklift_pdf_attachment_file` text NOT NULL,
  `forklift_target` int(11) NOT NULL,
  PRIMARY KEY (`forklift_pdf_attachment_id`),
  KEY `forklift_target` (`forklift_target`),
  CONSTRAINT `forklifts_pdf_attachments_ibfk_1` FOREIGN KEY (`forklift_target`) REFERENCES `forklifts_fleet` (`forklifts_fleet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forklifts_pdf_attachments`
--

LOCK TABLES `forklifts_pdf_attachments` WRITE;
/*!40000 ALTER TABLE `forklifts_pdf_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `forklifts_pdf_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances`
--

DROP TABLE IF EXISTS `insurances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurances` (
  `insurance_id` int(11) NOT NULL AUTO_INCREMENT,
  `insurance_date` date NOT NULL,
  `insurance_description` text NOT NULL,
  `insurance_target` int(11) NOT NULL,
  PRIMARY KEY (`insurance_id`),
  KEY `insurance_target` (`insurance_target`),
  CONSTRAINT `insurances_ibfk_1` FOREIGN KEY (`insurance_target`) REFERENCES `cars_fleet` (`cars_fleet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances`
--

LOCK TABLES `insurances` WRITE;
/*!40000 ALTER TABLE `insurances` DISABLE KEYS */;
INSERT INTO `insurances` VALUES (3,'2023-02-27','asda',4);
/*!40000 ALTER TABLE `insurances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances_img_attachments`
--

DROP TABLE IF EXISTS `insurances_img_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurances_img_attachments` (
  `insurance_img_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `insurance_img_attachment_file` text NOT NULL,
  `insurance_target` int(11) NOT NULL,
  PRIMARY KEY (`insurance_img_attachment_id`),
  KEY `insurance_target` (`insurance_target`),
  CONSTRAINT `insurances_img_attachments_ibfk_1` FOREIGN KEY (`insurance_target`) REFERENCES `insurances` (`insurance_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances_img_attachments`
--

LOCK TABLES `insurances_img_attachments` WRITE;
/*!40000 ALTER TABLE `insurances_img_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurances_img_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances_pdf_attachments`
--

DROP TABLE IF EXISTS `insurances_pdf_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurances_pdf_attachments` (
  `insurance_pdf_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `insurance_pdf_attachment_file` text NOT NULL,
  `insurance_target` int(11) NOT NULL,
  PRIMARY KEY (`insurance_pdf_attachment_id`),
  KEY `insurance_target` (`insurance_target`),
  CONSTRAINT `insurances_pdf_attachments_ibfk_1` FOREIGN KEY (`insurance_target`) REFERENCES `insurances` (`insurance_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances_pdf_attachments`
--

LOCK TABLES `insurances_pdf_attachments` WRITE;
/*!40000 ALTER TABLE `insurances_pdf_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurances_pdf_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_date` date NOT NULL,
  `invoice_description` text NOT NULL,
  `invoice_target` int(11) NOT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `invoice_target` (`invoice_target`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`invoice_target`) REFERENCES `cars_fleet` (`cars_fleet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices_img_attachments`
--

DROP TABLE IF EXISTS `invoices_img_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices_img_attachments` (
  `invoice_img_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_img_attachment_file` text NOT NULL,
  `invoice_target` int(11) NOT NULL,
  PRIMARY KEY (`invoice_img_attachment_id`),
  KEY `invoice_target` (`invoice_target`),
  CONSTRAINT `invoices_img_attachments_ibfk_1` FOREIGN KEY (`invoice_target`) REFERENCES `invoices` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices_img_attachments`
--

LOCK TABLES `invoices_img_attachments` WRITE;
/*!40000 ALTER TABLE `invoices_img_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices_img_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices_pdf_attachments`
--

DROP TABLE IF EXISTS `invoices_pdf_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices_pdf_attachments` (
  `invoice_pdf_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_pdf_attachment_file` text NOT NULL,
  `invoice_target` int(11) NOT NULL,
  PRIMARY KEY (`invoice_pdf_attachment_id`),
  KEY `invoice_target` (`invoice_target`),
  CONSTRAINT `invoices_pdf_attachments_ibfk_1` FOREIGN KEY (`invoice_target`) REFERENCES `invoices` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices_pdf_attachments`
--

LOCK TABLES `invoices_pdf_attachments` WRITE;
/*!40000 ALTER TABLE `invoices_pdf_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices_pdf_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocols`
--

DROP TABLE IF EXISTS `protocols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocols` (
  `protocol_id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol_date` date NOT NULL,
  `protocol_description` text NOT NULL,
  `protocol_target` int(11) NOT NULL,
  PRIMARY KEY (`protocol_id`),
  KEY `protocol_target` (`protocol_target`),
  CONSTRAINT `protocols_ibfk_1` FOREIGN KEY (`protocol_target`) REFERENCES `cars_fleet` (`cars_fleet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocols`
--

LOCK TABLES `protocols` WRITE;
/*!40000 ALTER TABLE `protocols` DISABLE KEYS */;
/*!40000 ALTER TABLE `protocols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocols_img_attachments`
--

DROP TABLE IF EXISTS `protocols_img_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocols_img_attachments` (
  `protocol_img_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol_img_attachment_file` text NOT NULL,
  `protocol_target` int(11) NOT NULL,
  PRIMARY KEY (`protocol_img_attachment_id`),
  KEY `protocol_target` (`protocol_target`),
  CONSTRAINT `protocols_img_attachments_ibfk_1` FOREIGN KEY (`protocol_target`) REFERENCES `protocols` (`protocol_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocols_img_attachments`
--

LOCK TABLES `protocols_img_attachments` WRITE;
/*!40000 ALTER TABLE `protocols_img_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `protocols_img_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocols_pdf_attachments`
--

DROP TABLE IF EXISTS `protocols_pdf_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocols_pdf_attachments` (
  `protocol_pdf_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol_pdf_attachment_file` text NOT NULL,
  `protocol_target` int(11) NOT NULL,
  PRIMARY KEY (`protocol_pdf_attachment_id`),
  KEY `protocol_target` (`protocol_target`),
  CONSTRAINT `protocols_pdf_attachments_ibfk_1` FOREIGN KEY (`protocol_target`) REFERENCES `protocols` (`protocol_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocols_pdf_attachments`
--

LOCK TABLES `protocols_pdf_attachments` WRITE;
/*!40000 ALTER TABLE `protocols_pdf_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `protocols_pdf_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrations` (
  `registration_id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_date` date NOT NULL,
  `registration_description` text NOT NULL,
  `registration_target` int(11) NOT NULL,
  PRIMARY KEY (`registration_id`),
  KEY `registration_target` (`registration_target`),
  CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`registration_target`) REFERENCES `cars_fleet` (`cars_fleet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations`
--

LOCK TABLES `registrations` WRITE;
/*!40000 ALTER TABLE `registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations_img_attachments`
--

DROP TABLE IF EXISTS `registrations_img_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrations_img_attachments` (
  `registration_img_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_img_attachment_file` text NOT NULL,
  `registration_target` int(11) NOT NULL,
  PRIMARY KEY (`registration_img_attachment_id`),
  KEY `registration_target` (`registration_target`),
  CONSTRAINT `registrations_img_attachments_ibfk_1` FOREIGN KEY (`registration_target`) REFERENCES `registrations` (`registration_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations_img_attachments`
--

LOCK TABLES `registrations_img_attachments` WRITE;
/*!40000 ALTER TABLE `registrations_img_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `registrations_img_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations_pdf_attachments`
--

DROP TABLE IF EXISTS `registrations_pdf_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrations_pdf_attachments` (
  `registration_pdf_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_pdf_attachment_file` text NOT NULL,
  `registration_target` int(11) NOT NULL,
  PRIMARY KEY (`registration_pdf_attachment_id`),
  KEY `registration_target` (`registration_target`),
  CONSTRAINT `registrations_pdf_attachments_ibfk_1` FOREIGN KEY (`registration_target`) REFERENCES `registrations` (`registration_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations_pdf_attachments`
--

LOCK TABLES `registrations_pdf_attachments` WRITE;
/*!40000 ALTER TABLE `registrations_pdf_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `registrations_pdf_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safty_helmets`
--

DROP TABLE IF EXISTS `safty_helmets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safty_helmets` (
  `safty_helmet_id` int(11) NOT NULL AUTO_INCREMENT,
  `safty_helmet_departament` varchar(50) NOT NULL,
  `safty_helmet_owner` varchar(50) NOT NULL,
  `safty_helmet_expiration_date` date NOT NULL,
  PRIMARY KEY (`safty_helmet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safty_helmets`
--

LOCK TABLES `safty_helmets` WRITE;
/*!40000 ALTER TABLE `safty_helmets` DISABLE KEYS */;
/*!40000 ALTER TABLE `safty_helmets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_users`
--

DROP TABLE IF EXISTS `system_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_users` (
  `system_user_id` int(3) NOT NULL AUTO_INCREMENT,
  `system_username` varchar(50) NOT NULL,
  `system_user_login` varchar(50) NOT NULL,
  `system_user_password` varchar(50) NOT NULL,
  `system_user_permissions` varchar(30) NOT NULL,
  PRIMARY KEY (`system_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_users`
--

LOCK TABLES `system_users` WRITE;
/*!40000 ALTER TABLE `system_users` DISABLE KEYS */;
INSERT INTO `system_users` VALUES (1,'Admin','Admin','21232f297a57a5a743894a0e4a801fc3','Administrator'),(4,'Arkadiusz Duraj','ADUR','ed303f25ed8370bf5658fa942528159a','Administrator');
/*!40000 ALTER TABLE `system_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_list`
--

DROP TABLE IF EXISTS `task_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_list` (
  `task_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_list_status` varchar(30) NOT NULL,
  `task_list_description` text NOT NULL,
  `task_list_realization_term` date NOT NULL,
  PRIMARY KEY (`task_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_list`
--

LOCK TABLES `task_list` WRITE;
/*!40000 ALTER TABLE `task_list` DISABLE KEYS */;
INSERT INTO `task_list` VALUES (1,'Do wykonania','asda','2023-02-22');
/*!40000 ALTER TABLE `task_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tires`
--

DROP TABLE IF EXISTS `tires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tires` (
  `tires_id` int(11) NOT NULL AUTO_INCREMENT,
  `tires_give_out` date NOT NULL,
  `tires_type` varchar(30) NOT NULL,
  `tires_owner` int(11) NOT NULL,
  PRIMARY KEY (`tires_id`),
  KEY `tires_owner` (`tires_owner`),
  CONSTRAINT `tires_ibfk_1` FOREIGN KEY (`tires_owner`) REFERENCES `cars_fleet` (`cars_fleet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tires`
--

LOCK TABLES `tires` WRITE;
/*!40000 ALTER TABLE `tires` DISABLE KEYS */;
/*!40000 ALTER TABLE `tires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tires_img_attachments`
--

DROP TABLE IF EXISTS `tires_img_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tires_img_attachments` (
  `tires_img_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `tires_img_attachment_file` text NOT NULL,
  `tires_owner` int(11) NOT NULL,
  PRIMARY KEY (`tires_img_attachment_id`),
  KEY `tires_owner` (`tires_owner`),
  CONSTRAINT `tires_img_attachments_ibfk_1` FOREIGN KEY (`tires_owner`) REFERENCES `tires` (`tires_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tires_img_attachments`
--

LOCK TABLES `tires_img_attachments` WRITE;
/*!40000 ALTER TABLE `tires_img_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tires_img_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tires_pdf_attachments`
--

DROP TABLE IF EXISTS `tires_pdf_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tires_pdf_attachments` (
  `tires_pdf_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `tires_pdf_attachment_file` text NOT NULL,
  `tires_owner` int(11) NOT NULL,
  PRIMARY KEY (`tires_pdf_attachment_id`),
  KEY `tires_owner` (`tires_owner`),
  CONSTRAINT `tires_pdf_attachments_ibfk_1` FOREIGN KEY (`tires_owner`) REFERENCES `tires` (`tires_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tires_pdf_attachments`
--

LOCK TABLES `tires_pdf_attachments` WRITE;
/*!40000 ALTER TABLE `tires_pdf_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tires_pdf_attachments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-19 11:07:21
