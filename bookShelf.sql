-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookshelf
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `BookName` varchar(50) NOT NULL,
  `BookAuthor` varchar(20) NOT NULL,
  `BookPublisher` varchar(30) DEFAULT NULL,
  `BookDate` date DEFAULT NULL,
  `BookIntroduce` mediumtext,
  `BookStroy` mediumtext,
  `BookReview` mediumtext,
  `BookSign` longblob,
  PRIMARY KEY (`BookName`,`BookAuthor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('눈에 갇힌 외딴 산장에서','히가시노 게이고','재인','2023-07-18','','','',NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_genre`
--

DROP TABLE IF EXISTS `book_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_genre` (
  `Genre` varchar(30) NOT NULL,
  PRIMARY KEY (`Genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_genre`
--

LOCK TABLES `book_genre` WRITE;
/*!40000 ALTER TABLE `book_genre` DISABLE KEYS */;
INSERT INTO `book_genre` VALUES ('가정/육아'),('건강'),('경제'),('공학'),('만화'),('사회과학'),('소설'),('시/에세이'),('여행'),('역사/문화'),('예술'),('요리'),('인문'),('자기계발'),('자연과학'),('잡지'),('정치/사회'),('종교'),('참고서'),('청소년'),('취미/실용'),('취업/수험서'),('컴퓨터과학');
/*!40000 ALTER TABLE `book_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybookshelf`
--

DROP TABLE IF EXISTS `mybookshelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybookshelf` (
  `mybookName` varchar(50) NOT NULL,
  `mybookMark` int(11) NOT NULL,
  `mybookgenre` varchar(30) NOT NULL,
  `mybookAuthor` varchar(20) DEFAULT NULL,
  `mybookUserID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mybookMark`),
  KEY `bookFK_idx` (`mybookName`),
  KEY `genreFK_idx` (`mybookgenre`),
  KEY `AuthorFK_idx` (`mybookAuthor`),
  KEY `userFK_idx` (`mybookUserID`),
  CONSTRAINT `bookFK` FOREIGN KEY (`mybookName`) REFERENCES `book` (`BookName`),
  CONSTRAINT `genreFK` FOREIGN KEY (`mybookgenre`) REFERENCES `book_genre` (`Genre`),
  CONSTRAINT `userFK` FOREIGN KEY (`mybookUserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybookshelf`
--

LOCK TABLES `mybookshelf` WRITE;
/*!40000 ALTER TABLE `mybookshelf` DISABLE KEYS */;
/*!40000 ALTER TABLE `mybookshelf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` varchar(20) NOT NULL,
  `UserPW` varchar(20) NOT NULL,
  `UserName` char(20) DEFAULT NULL,
  `UserGender` char(5) NOT NULL,
  `UserAge` char(5) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('testID','1234','테스트','남자','20');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02  9:01:12
