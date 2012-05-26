-- MySQL dump 10.13  Distrib 5.5.22, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.22-0ubuntu1

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
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (3,'SÃ¡ch','2012-05-22 03:08:35','2012-05-23 06:40:58'),(7,'BÃºt viáº¿t','2012-05-22 07:46:22','2012-05-22 08:27:17'),(11,'BÃ n gháº¿','2012-05-22 08:27:04','2012-05-22 08:27:28'),(14,'MÃ¡y tÃ­nh','2012-05-23 08:19:47','2012-05-23 08:19:51');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `number_product` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (18,18,17,1,'2012-05-23 07:37:02','2012-05-23 07:37:02'),(19,18,20,1,'2012-05-23 07:37:02','2012-05-23 07:37:02'),(20,18,22,1,'2012-05-23 07:37:02','2012-05-23 07:37:02'),(33,22,17,2,'2012-05-23 07:50:10','2012-05-23 07:50:10'),(34,22,20,5,'2012-05-23 07:50:10','2012-05-23 07:50:10'),(35,22,22,4,'2012-05-23 07:50:10','2012-05-23 07:50:10'),(36,22,19,3,'2012-05-23 07:50:10','2012-05-23 07:50:10'),(40,29,17,2,'2012-05-23 08:17:48','2012-05-23 08:17:48'),(41,29,20,5,'2012-05-23 08:17:48','2012-05-23 08:17:48'),(42,30,21,1,'2012-05-23 08:19:09','2012-05-23 08:19:09'),(43,31,21,1,'2012-05-23 08:22:41','2012-05-23 08:22:41'),(44,31,19,5,'2012-05-23 08:22:41','2012-05-23 08:22:41'),(45,31,17,1,'2012-05-23 08:22:41','2012-05-23 08:22:41'),(46,32,18,6,'2012-05-23 08:24:41','2012-05-23 08:24:41'),(48,34,19,4,'2012-05-23 08:28:45','2012-05-23 08:28:45'),(49,34,21,7,'2012-05-23 08:28:45','2012-05-23 08:28:45');
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (18,1,'2012-05-23 07:37:02','2012-05-23 07:37:02'),(22,1,'2012-05-23 07:50:09','2012-05-23 07:50:09'),(29,1,'2012-05-23 08:17:48','2012-05-23 08:17:48'),(30,1,'2012-05-23 08:19:09','2012-05-23 08:19:09'),(31,9,'2012-05-23 08:22:41','2012-05-23 08:22:41'),(32,1,'2012-05-23 08:24:41','2012-05-23 08:24:41'),(34,1,'2012-05-23 08:28:45','2012-05-23 08:28:45');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `catalog_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (17,'English','Tieng Anh',3,'2012-05-23 04:03:40','2012-05-23 09:09:42',100),(18,'Japan','Nhat Ban',3,'2012-05-23 04:03:53','2012-05-23 09:11:56',200),(19,'But bi','Viet',7,'2012-05-23 04:04:06','2012-05-23 09:12:28',10),(20,'But muc','Viet',7,'2012-05-23 04:04:14','2012-05-23 09:12:35',5),(21,'Ban hoc','hoc',11,'2012-05-23 04:04:23','2012-05-23 09:12:52',250),(22,'Ban may tinh',' may tinh',11,'2012-05-23 04:04:31','2012-05-23 09:13:06',300);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120509080140'),('20120509081759'),('20120509082340'),('20120511161948'),('20120514233227'),('20120522024942'),('20120522083902'),('20120523054314'),('20120523054533'),('20120523055447'),('20120523060009'),('20120523064637'),('20120523064823'),('20120523065713'),('20120523083738'),('20120523084054'),('20120523090052');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  KEY `index_users_on_remember_token` (`remember_token`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dao Van Mai','daomai3c@gmail.com','2012-05-22 02:28:27','2012-05-23 08:54:37','$2a$10$OR6OSgLi9D4dCUG3Bu93h.R4ttblxTOaH.R2dpSJpOH2sllZJUSDm','VEBl0vxVsixIy9WgQKvhNQ',1,'Ha Noi'),(6,'Ta Anh','anh@yahoo.com','2012-05-23 06:18:00','2012-05-23 06:18:00','$2a$10$Cqsv5trfAmKQNu84tqAvRecRmA4.kBcBo/9B.5sxCYliEYjBSs8Qa','9HPJfybdkzVzH2-pNoxlgQ',0,NULL),(8,'Duy Anh 2','duyanh2@yahoo.com','2012-05-23 06:39:19','2012-05-23 06:39:19','$2a$10$8eRo002OFDNkZOSQI0CkxOohLxfwiKqReeaMP8/st4zdzWf1ww.Fm','bsOQapea1BOJ_UGMT5EOrg',0,NULL),(9,'DuyAnh1','duyanh1@yahoo.com','2012-05-23 08:21:51','2012-05-23 08:55:44','$2a$10$M49/5nIcg/iZEAiqNrcUROGJheURRZDtRRI4Atm/86fTRL0OcSHma','ixfGZfDRMeCLpjAUreDPOQ',0,'Ha Tay');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-23 21:31:09
