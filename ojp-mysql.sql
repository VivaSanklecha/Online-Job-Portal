CREATE DATABASE  IF NOT EXISTS `ojp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ojp`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: ojp
-- ------------------------------------------------------
-- Server version	5.6.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applicant_emails`
--

DROP TABLE IF EXISTS `applicant_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_uname` varchar(20) DEFAULT NULL,
  `ApplicantMsg` varchar(100) DEFAULT NULL,
  `Applied` varchar(3) DEFAULT NULL,
  `Cmny_name` varchar(45) DEFAULT NULL,
  `ConfirmationMsg` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_emails`
--

LOCK TABLES `applicant_emails` WRITE;
/*!40000 ALTER TABLE `applicant_emails` DISABLE KEYS */;
INSERT INTO `applicant_emails` VALUES (1,'nitin1','Dear candidate you are selected in our company for the ASP.NET interview \r\nThe Date :\r\nVenue:\r\n     ','Y','1234','Dearnitin1your application is confirmed .We Will see you at the interview at given venue. Best Luck For Your Future'),(2,'fdsg','fdgf','Y','dfg','cvbf'),(3,'nitin1','Dear candidate you are selected in our company for the ASP.NET interview \r\nThe Date :\r\nVenue:\r\n     ','N','1234',NULL),(4,'vishal','hiiiii testing','Y','1234','confirmed');
/*!40000 ALTER TABLE `applicant_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_info`
--

DROP TABLE IF EXISTS `applicant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` char(20) DEFAULT NULL,
  `middlename` char(20) DEFAULT NULL,
  `lastname` char(20) DEFAULT NULL,
  `DOB` char(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `EducationLevel` varchar(45) DEFAULT NULL,
  `Edu_Course` varchar(45) DEFAULT NULL,
  `Marks` float DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `Certificate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_info`
--

LOCK TABLES `applicant_info` WRITE;
/*!40000 ALTER TABLE `applicant_info` DISABLE KEYS */;
INSERT INTO `applicant_info` VALUES (4,'Vishal','Dnyaneshwer','Auti','29/04/1991','Male','Bori','9730409246','auti.vishal638@gmail.com','Degree','B.E.',66,'vish','111',NULL),(7,'ajinkya','s','d','27/05/1991','Male','  rajuri                                  ','9579481316','ajinkya.abhang1@gmail.com','Some High School Coursework','B.E. Comp',45,'111','aj1','asd'),(8,'Nitin','Savkar','Hadawale','29/04/1991','Male','Rajuri                              ','9730409248','auti.vishal638@gmail.com','Professional','B.E. Mech',50,'222','nitin1','N/A');
/*!40000 ALTER TABLE `applicant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicantlogin`
--

DROP TABLE IF EXISTS `applicantlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicantlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `delete` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicantlogin`
--

LOCK TABLES `applicantlogin` WRITE;
/*!40000 ALTER TABLE `applicantlogin` DISABLE KEYS */;
INSERT INTO `applicantlogin` VALUES (1,'vishal','111',NULL),(7,'aj1','111','D'),(8,'nitin1','222',NULL);
/*!40000 ALTER TABLE `applicantlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmpny_info`
--

DROP TABLE IF EXISTS `cmpny_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmpny_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `C_RegId` varchar(45) DEFAULT NULL,
  `C_Name` varchar(45) DEFAULT NULL,
  `C_Address` varchar(45) DEFAULT NULL,
  `C_Approve` varchar(3) DEFAULT NULL,
  `C_Scope` varchar(45) DEFAULT NULL,
  `C_Email` varchar(45) DEFAULT NULL,
  `C_Contact` varchar(45) DEFAULT NULL,
  `Emp_Name` varchar(45) DEFAULT NULL,
  `Emp_Post` varchar(45) DEFAULT NULL,
  `Emp_Address` varchar(45) DEFAULT NULL,
  `Emp_contact` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `C_Address_UNIQUE` (`C_RegId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmpny_info`
--

LOCK TABLES `cmpny_info` WRITE;
/*!40000 ALTER TABLE `cmpny_info` DISABLE KEYS */;
INSERT INTO `cmpny_info` VALUES (2,'1234','AMV Technosoft pvt. ltd.','alephata','D','MNC','auti.vishal638@gmail.com','fgj','Vishal Auti','C.E.O.','Bori B.K                                ','9730409248','1234','111'),(3,'12345','City Solution Community','Alephata','Y','Local','citysolcom@gmail.com','9730409248','Anil Dongare','MAnager','Ale                                    ','9570481316','12345','222'),(4,'123456','Shahu Fule Ambedkar Samjasanstha','godre junnar','Y','samajseva','auti@gmail.com','9730409248','Vishal','president',' bori                                   ','9570481316','123456','222');
/*!40000 ALTER TABLE `cmpny_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_list`
--

DROP TABLE IF EXISTS `company_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `C_reg` varchar(45) DEFAULT NULL,
  `C_Name` varchar(45) DEFAULT NULL,
  `C_Address` varchar(45) DEFAULT NULL,
  `Rank` int(11) DEFAULT NULL,
  `C_Approve` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `C_reg_UNIQUE` (`C_reg`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_list`
--

LOCK TABLES `company_list` WRITE;
/*!40000 ALTER TABLE `company_list` DISABLE KEYS */;
INSERT INTO `company_list` VALUES (1,'1234','AMV Technosoft pvt. ltd.','alephata',2,'D'),(2,'12345','City Solution Community','Alephata',NULL,'Y'),(3,'123456','Shahu Fule Ambedkar Samjasanstha','godre junnar',NULL,'Y');
/*!40000 ALTER TABLE `company_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companylogin`
--

DROP TABLE IF EXISTS `companylogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companylogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `Approve` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companylogin`
--

LOCK TABLES `companylogin` WRITE;
/*!40000 ALTER TABLE `companylogin` DISABLE KEYS */;
INSERT INTO `companylogin` VALUES (4,'1234','111','D'),(5,'12345','222','Y'),(6,'123456','222','Y');
/*!40000 ALTER TABLE `companylogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_course`
--

DROP TABLE IF EXISTS `edu_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CourseName` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_course`
--

LOCK TABLES `edu_course` WRITE;
/*!40000 ALTER TABLE `edu_course` DISABLE KEYS */;
INSERT INTO `edu_course` VALUES (1,'B.E. Comp'),(2,'B.E. IT'),(3,'B.E. Elex'),(4,'B.E. E&TC'),(5,'B.E. Mech');
/*!40000 ALTER TABLE `edu_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `latestupdate`
--

DROP TABLE IF EXISTS `latestupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `latestupdate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) DEFAULT NULL,
  `Content` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `latestupdate`
--

LOCK TABLES `latestupdate` WRITE;
/*!40000 ALTER TABLE `latestupdate` DISABLE KEYS */;
INSERT INTO `latestupdate` VALUES (1,'1','xsvxc'),(2,'df','sdfsdf'),(3,'xcvxc','     xcvxcbsdfhiiiiiiiiiiiiiiiiii            '),(4,'About  IBM','IBM pvt ltd is awrded as best IT industry    ');
/*!40000 ALTER TABLE `latestupdate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-16 15:12:04
