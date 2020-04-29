-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospitaldb
-- ------------------------------------------------------
-- Server version	5.5.8-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `additional`
--

DROP TABLE IF EXISTS `additional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additional` (
  `idadditional` int(11) NOT NULL AUTO_INCREMENT,
  `channelNumber` varchar(45) DEFAULT NULL,
  `rejectReason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idadditional`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional`
--

LOCK TABLES `additional` WRITE;
/*!40000 ALTER TABLE `additional` DISABLE KEYS */;
INSERT INTO `additional` VALUES (1,'1','Mobile Number Is Invalid'),(2,'2','Email Address Is invalid'),(3,'3','Docter will not be present Today. We Will not'),(4,'4',NULL),(5,'5',NULL),(6,'6',NULL),(7,'7',NULL),(8,'8',NULL),(9,'9',NULL),(10,'10',NULL),(11,'11',NULL),(12,'12',NULL),(13,'13',NULL),(14,'14',NULL),(15,'15',NULL),(16,'16',NULL),(17,'17',NULL),(18,'18',NULL),(19,'19',NULL),(20,'20',NULL);
/*!40000 ALTER TABLE `additional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admintable`
--

DROP TABLE IF EXISTS `admintable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admintable` (
  `idAdmin` int(11) NOT NULL,
  `AdminUserID` varchar(45) DEFAULT NULL,
  `AdminPassword` varchar(45) DEFAULT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admintable`
--

LOCK TABLES `admintable` WRITE;
/*!40000 ALTER TABLE `admintable` DISABLE KEYS */;
INSERT INTO `admintable` VALUES (1,'0001','0001','Neranjan ');
/*!40000 ALTER TABLE `admintable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `idappointment` int(11) NOT NULL AUTO_INCREMENT,
  `patientName` varchar(45) DEFAULT NULL,
  `mobileNumber` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `doctor` varchar(45) DEFAULT NULL,
  `DateTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idappointment`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (21,'Sunil Shantha','+94717302133','newneranjan@gmail.com','Asd','Amith Prasad','4/29/2020'),(22,'Kumudu malkanthi','+94258877458','kumudu@gmail.com','Kandy','8','4/28/2020'),(23,'das','+94717302199','n@gmail.com','asd','Nuwan Kumara','4/29/2020'),(24,'Sunil Kumara','+94252255025','sunil@gmail.com','Padaviya','5','4/30/2020'),(25,'Shanthi Kumari','+94717302199','shanthi@gmail.com','Sri pura','Lasantha Wekkramasinha','4/30/2020');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctortable`
--

DROP TABLE IF EXISTS `doctortable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctortable` (
  `idDoctor` int(11) NOT NULL AUTO_INCREMENT,
  `DoctorName` varchar(45) DEFAULT NULL,
  `DoctorSpeciality` varchar(45) DEFAULT NULL,
  `DoctorHospital` varchar(45) DEFAULT NULL,
  `DoctorFees` varchar(45) DEFAULT NULL,
  `DoctorImage` varchar(500) DEFAULT NULL,
  `DoctorGender` varchar(45) DEFAULT NULL,
  `DoctorUserID` varchar(45) NOT NULL,
  `DoctorPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDoctor`,`DoctorUserID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctortable`
--

LOCK TABLES `doctortable` WRITE;
/*!40000 ALTER TABLE `doctortable` DISABLE KEYS */;
INSERT INTO `doctortable` VALUES (5,'Amith Prasad','Canseer','Jaffna','1500','DoctorImages/5.jpg','Male','2535','1111'),(6,'Nuwan Kumara','Canser','Kandy','1100','DoctorImages/2.jpg','Select Gender','1234','1222'),(7,'Lasantha Wekkramasinha','Canser','Badulla','1500','DoctorImages/3.jpg','Female','6541','6541'),(8,'Sandamali Kumari','Canser','Padaviya','4800','DoctorImages/4.jpg','Female','9874','9874'),(10,'Nishan Sampath','Canser','Kandy','1200','DoctorImages/2.jpg','Male','9868','9868');
/*!40000 ALTER TABLE `doctortable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUserName` varchar(45) DEFAULT NULL,
  `CDocotrName` varchar(45) DEFAULT NULL,
  `CDescription` varchar(45) DEFAULT NULL,
  `CTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (34,'nera@gmail.com','Nuwan Kumara','Best Doctor','4/27/2020 11:47:11 PM'),(35,'samali@gmail.com','Nuwan Kumara','Best','4/28/2020 1:13:42 AM'),(36,'n@gmail.com','Amith Prasad','asdsad','4/29/2020 1:46:48 PM');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `idnews` int(11) NOT NULL AUTO_INCREMENT,
  `newsTitle` varchar(45) DEFAULT NULL,
  `newsDescription` varchar(1000) DEFAULT NULL,
  `newsImage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idnews`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (4,'Angiography 25','Nesifjskfkpfklx','newsImg/16 (33)-1024x1365.jpg'),(5,'Hospital Day in 2020-02-02','sdsdal Day in 2020-02-02Hospital Day in 2020-02-02Hospital Day in 2020-02-02Hospital Day in 2020-02-02Hospital Day in 2020-02-02Hospital Day in 2020-02-02','newsImg/16 (33)-1024x1365.jpg'),(6,'Our Hospital Service Stop.',NULL,NULL),(7,'Corona 19 - We Close Today',NULL,NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduleapp`
--

DROP TABLE IF EXISTS `scheduleapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduleapp` (
  `idSchedule` int(11) NOT NULL AUTO_INCREMENT,
  `doctorName` varchar(45) DEFAULT NULL,
  `monday` varchar(45) DEFAULT NULL,
  `tuesday` varchar(45) DEFAULT NULL,
  `wedneday` varchar(45) DEFAULT NULL,
  `thursday` varchar(45) DEFAULT NULL,
  `friday` varchar(45) DEFAULT NULL,
  `saturday` varchar(45) DEFAULT NULL,
  `sunday` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSchedule`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduleapp`
--

LOCK TABLES `scheduleapp` WRITE;
/*!40000 ALTER TABLE `scheduleapp` DISABLE KEYS */;
INSERT INTO `scheduleapp` VALUES (3,'Amith Prasad','6.31  PM','6.31  PM','Not Today','6.31  PM','6.31  PM','6.31  PM','3.25 PM'),(4,'Nuwan Kumara','5.20 PM','5.20 PM','5.20 PM','5.20 PM','5.20 PM','5.20 PM','5.20 PM'),(5,'Nishan Sampath','5.20 PM','5.20 PM','5.20 PM','5.20 PM','5.20 PM','5.20 PM','5.20 PM');
/*!40000 ALTER TABLE `scheduleapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertable` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) DEFAULT NULL,
  `UserMobile` varchar(45) DEFAULT NULL,
  `UserEmail` varchar(45) NOT NULL,
  `UserHomeTown` varchar(45) DEFAULT NULL,
  `UserPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUser`,`UserEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES (29,'Neranjan','+94717302199','neranjan@gmail.com','Padaviya','1234'),(30,'Nuwan Kumara','+94717302199','nuwan@gmail.com','Colombo','Nuwa@123'),(31,'Samali','+94725588965','samali@gmail.com','Padaviya','Samali@123'),(32,'Prasad Sampath','+94717302199','prasad@gmail.com','Anuradhapura','prasad@123'),(33,'asda','+94717598954','n@gmail.com','sadas','123'),(34,'dsada','+94717545433','asdas@gmail.com','dasd','123'),(35,'asasd','+94717302199','d@gmail.com','asd','sadas'),(36,'Lahiru Prasad','+94717302122','lahiru@gmail.com','Padaviya','12345');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-29 18:33:37
