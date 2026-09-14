-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: attendance_system
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB

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
-- Current Database: `attendance_system`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `attendance_system` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;

USE `attendance_system`;

--
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_details`
--

LOCK TABLES `admin_details` WRITE;
/*!40000 ALTER TABLE `admin_details` DISABLE KEYS */;
INSERT INTO `admin_details` VALUES
(1,'admin','System Admin','1234');
/*!40000 ALTER TABLE `admin_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_details`
--

DROP TABLE IF EXISTS `attendance_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_details` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `status` enum('Present','Absent') DEFAULT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`semester_id`,`attendance_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_details`
--

LOCK TABLES `attendance_details` WRITE;
/*!40000 ALTER TABLE `attendance_details` DISABLE KEYS */;
INSERT INTO `attendance_details` VALUES
(1,1,1,'2026-01-05','Present'),
(1,1,1,'2026-01-07','Present'),
(1,1,1,'2026-01-09','Absent'),
(1,2,1,'2026-01-05','Present'),
(1,2,1,'2026-01-07','Present'),
(1,2,1,'2026-01-09','Absent'),
(1,2,1,'2026-08-04','Present'),
(1,2,1,'2026-08-31','Present'),
(1,2,1,'2026-09-14','Present'),
(1,3,1,'2026-01-05','Present'),
(1,3,1,'2026-01-07','Present'),
(1,3,1,'2026-01-09','Absent'),
(2,1,1,'2026-01-05','Present'),
(2,1,1,'2026-01-07','Present'),
(2,1,1,'2026-01-09','Absent'),
(2,2,1,'2026-01-05','Present'),
(2,2,1,'2026-01-07','Present'),
(2,2,1,'2026-01-09','Absent'),
(2,2,1,'2026-08-04','Present'),
(2,2,1,'2026-08-31','Present'),
(2,2,1,'2026-09-14','Present'),
(2,3,1,'2026-01-05','Present'),
(2,3,1,'2026-01-07','Present'),
(2,3,1,'2026-01-09','Absent'),
(3,1,1,'2026-01-05','Present'),
(3,1,1,'2026-01-07','Present'),
(3,1,1,'2026-01-09','Absent'),
(3,2,1,'2026-01-05','Present'),
(3,2,1,'2026-01-07','Present'),
(3,2,1,'2026-01-09','Absent'),
(3,2,1,'2026-08-04','Absent'),
(3,2,1,'2026-08-31','Present'),
(3,2,1,'2026-09-14','Present'),
(3,3,1,'2026-01-05','Present'),
(3,3,1,'2026-01-07','Present'),
(3,3,1,'2026-01-09','Absent'),
(4,1,1,'2026-01-05','Present'),
(4,1,1,'2026-01-07','Present'),
(4,1,1,'2026-01-09','Absent'),
(4,2,1,'2026-01-05','Present'),
(4,2,1,'2026-01-07','Present'),
(4,2,1,'2026-01-09','Absent'),
(4,2,1,'2026-08-04','Present'),
(4,2,1,'2026-08-31','Present'),
(4,2,1,'2026-09-14','Present'),
(4,3,1,'2026-01-05','Present'),
(4,3,1,'2026-01-07','Present'),
(4,3,1,'2026-01-09','Absent');
/*!40000 ALTER TABLE `attendance_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_allotment`
--

DROP TABLE IF EXISTS `course_allotment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_allotment` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `section_name` varchar(10) NOT NULL,
  PRIMARY KEY (`faculty_id`,`course_id`,`semester_id`,`section_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_allotment`
--

LOCK TABLES `course_allotment` WRITE;
/*!40000 ALTER TABLE `course_allotment` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_allotment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_details`
--

DROP TABLE IF EXISTS `course_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(20) DEFAULT NULL,
  `course_title` varchar(100) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_code` (`course_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_details`
--

LOCK TABLES `course_details` WRITE;
/*!40000 ALTER TABLE `course_details` DISABLE KEYS */;
INSERT INTO `course_details` VALUES
(1,'CSE321','Operating Systems',3),
(2,'CSE323','Web Technologies',3),
(3,'CSE325','Computer Networks',3);
/*!40000 ALTER TABLE `course_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_registration`
--

DROP TABLE IF EXISTS `course_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_registration` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_registration`
--

LOCK TABLES `course_registration` WRITE;
/*!40000 ALTER TABLE `course_registration` DISABLE KEYS */;
INSERT INTO `course_registration` VALUES
(1,1,1),
(1,2,1),
(1,3,1),
(2,1,1),
(2,2,1),
(2,3,1),
(3,1,1),
(3,2,1),
(3,3,1),
(4,1,1),
(4,2,1),
(4,3,1);
/*!40000 ALTER TABLE `course_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_details`
--

DROP TABLE IF EXISTS `faculty_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faculty_id` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faculty_id` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_details`
--

LOCK TABLES `faculty_details` WRITE;
/*!40000 ALTER TABLE `faculty_details` DISABLE KEYS */;
INSERT INTO `faculty_details` VALUES
(1,'F001','Dr. Rahman','1234'),
(2,'F002','Dr. Karim','1234'),
(3,'F009','Ahsan Kabir','1234');
/*!40000 ALTER TABLE `faculty_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES
(1,1,'Are you in','2026-09-13 18:40:15');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester_details`
--

DROP TABLE IF EXISTS `semester_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semester_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `term` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester_details`
--

LOCK TABLES `semester_details` WRITE;
/*!40000 ALTER TABLE `semester_details` DISABLE KEYS */;
INSERT INTO `semester_details` VALUES
(1,2026,'Spring');
/*!40000 ALTER TABLE `semester_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `parent_email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES
(1,'S001','Arafat Islam','parent1@gmail.com','1234'),
(2,'S002','Tasnima Akter','parent2@gmail.com','1234'),
(3,'S003','Sakib Hossain','parent3@gmail.com','1234'),
(4,'S004','Nusrat Jahan','parent4@gmail.com','1234');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-14  1:17:40
