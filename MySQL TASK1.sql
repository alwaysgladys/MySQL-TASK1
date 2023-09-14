-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: staff
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `employee_info`
--

DROP TABLE IF EXISTS `employee_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_info` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Date_of_Entry` date DEFAULT '2020-01-01',
  `Contract_Duration` varchar(15) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Year_of_Exit` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_info`
--

LOCK TABLES `employee_info` WRITE;
/*!40000 ALTER TABLE `employee_info` DISABLE KEYS */;
INSERT INTO `employee_info` VALUES ('1','Amslem Ugo','2020-01-01','Four yrs',25,2030),('10','Duru Loveline','2020-01-01','Three years',60,2030),('2','Asammadu Gold','2020-01-01','One year',30,2030),('3','Edeh Jacinta','2020-01-02','Two years',45,2030),('4','Edet Akpan','2020-01-03','Four years',54,2030),('5','igwe Mary','2020-01-01','three years',27,2030),('6','Mmadu Glad','2010-01-01','Ten years',41,2020),('7','Precious Faustina','2019-07-01','Four years',29,2029),('8','Ugwu Kelvin','2021-09-01','Two years',38,2031),('9','Nwadike Clara','2020-01-01','Three years',55,2030);
/*!40000 ALTER TABLE `employee_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_salary`
--

DROP TABLE IF EXISTS `employee_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_salary` (
  `Employee_ID` varchar(40) DEFAULT NULL,
  `Salary` int NOT NULL,
  `Yearly_Increment` int DEFAULT '5000',
  `Department` varchar(10) DEFAULT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `employee_salary_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee_info` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_salary`
--

LOCK TABLES `employee_salary` WRITE;
/*!40000 ALTER TABLE `employee_salary` DISABLE KEYS */;
INSERT INTO `employee_salary` VALUES ('1',15000,1000,'IT'),('2',5000,500,'Advert'),('3',15000,1000,'IT'),('4',25000,2500,'Comm'),('5',10000,800,'Advert'),('6',12000,1200,'Comm'),('7',15000,1000,'IT'),('8',5000,500,'Comm'),('9',15000,1500,'Advert'),('10',15000,500,'Comm');
/*!40000 ALTER TABLE `employee_salary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-14 22:17:18
