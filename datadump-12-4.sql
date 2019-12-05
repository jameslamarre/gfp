-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: gfp
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `craft_assetindexdata`
--

DROP TABLE IF EXISTS `craft_assetindexdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) unsigned DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  KEY `craft_assetindexdata_volumeId_idx` (`volumeId`),
  CONSTRAINT `craft_assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetindexdata`
--

LOCK TABLES `craft_assetindexdata` WRITE;
/*!40000 ALTER TABLE `craft_assetindexdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_assetindexdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assets`
--

DROP TABLE IF EXISTS `craft_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assets_filename_folderId_idx` (`filename`,`folderId`),
  KEY `craft_assets_folderId_idx` (`folderId`),
  KEY `craft_assets_volumeId_idx` (`volumeId`),
  CONSTRAINT `craft_assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assets`
--

LOCK TABLES `craft_assets` WRITE;
/*!40000 ALTER TABLE `craft_assets` DISABLE KEYS */;
INSERT INTO `craft_assets` VALUES (16,1,1,'Image2.png','image',1440,700,1168614,NULL,NULL,NULL,'2019-11-23 20:23:43','2019-11-23 20:23:43','2019-11-23 20:23:48','35da5cf1-c393-4385-9631-966ff11e13d5'),(17,1,1,'Image1_Duo.png','image',1440,700,1800984,NULL,NULL,NULL,'2019-11-23 20:24:32','2019-11-23 20:24:32','2019-11-23 20:24:37','c99cbd00-1cd0-476b-90e6-034b80a8ee5f'),(107,1,1,'2017_06_25_NYC_PRIDE_GENDER_AND_FAMILY_PROJECT_135.png','image',1442,700,1926713,NULL,NULL,NULL,'2019-12-04 21:00:16','2019-12-04 20:28:01','2019-12-04 21:00:16','f931779b-ca67-4213-a5cc-a4d342be410d'),(120,1,1,'2017_06_25_NYC_PRIDE_GENDER_AND_FAMILY_PROJECT_135_191204_205007.png','image',1442,700,1779980,NULL,0,0,'2019-12-04 20:50:07','2019-12-04 20:50:07','2019-12-04 20:50:07','dd943497-5edb-45ea-ac6c-6ca83bf728a4'),(125,1,1,'2017_06_25_NYC_PRIDE_GENDER_AND_FAMILY_PROJECT_135_191204_210012.png','image',1442,700,1926713,NULL,0,0,'2019-12-04 21:00:13','2019-12-04 21:00:13','2019-12-04 21:00:13','8fa39bbc-196e-4a14-9dcc-e7e97b013761'),(130,1,1,'2017_06_25_NYC_PRIDE_GENDER_AND_FAMILY_PROJECT_135_2.png','image',1442,750,1803540,NULL,NULL,NULL,'2019-12-04 21:08:46','2019-12-04 21:08:46','2019-12-04 21:08:46','054c76ec-f9ba-41ed-acd1-5dce45bd8cc3'),(135,1,1,'20190118_Ackerman_118.png','image',1452,600,1094009,NULL,NULL,NULL,'2019-12-04 21:20:48','2019-12-04 21:17:09','2019-12-04 21:20:48','e67db94a-217a-4104-982a-eec1a4d6e3ac'),(140,1,1,'20190118_Ackerman_118_191204_212044.png','image',1452,600,1094009,NULL,0,0,'2019-12-04 21:20:45','2019-12-04 21:20:45','2019-12-04 21:20:45','a5910c96-7520-4531-9d9e-c5ef06d7b339'),(143,1,1,'GFP_Back_Heart3.png','image',1440,600,1220101,NULL,NULL,NULL,'2019-12-04 21:25:06','2019-12-04 21:25:06','2019-12-04 21:25:06','7773f8c8-7ecd-46f9-bfea-ac227d148ea3');
/*!40000 ALTER TABLE `craft_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assettransformindex`
--

DROP TABLE IF EXISTS `craft_assettransformindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assettransformindex`
--

LOCK TABLES `craft_assettransformindex` WRITE;
/*!40000 ALTER TABLE `craft_assettransformindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_assettransformindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assettransforms`
--

DROP TABLE IF EXISTS `craft_assettransforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assettransforms`
--

LOCK TABLES `craft_assettransforms` WRITE;
/*!40000 ALTER TABLE `craft_assettransforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_assettransforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_categories`
--

DROP TABLE IF EXISTS `craft_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_idx` (`groupId`),
  KEY `craft_categories_parentId_fk` (`parentId`),
  CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categories`
--

LOCK TABLES `craft_categories` WRITE;
/*!40000 ALTER TABLE `craft_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_categorygroups`
--

DROP TABLE IF EXISTS `craft_categorygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categorygroups_name_idx` (`name`),
  KEY `craft_categorygroups_handle_idx` (`handle`),
  KEY `craft_categorygroups_structureId_idx` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `craft_categorygroups_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categorygroups`
--

LOCK TABLES `craft_categorygroups` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_categorygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_categorygroups_sites`
--

DROP TABLE IF EXISTS `craft_categorygroups_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  KEY `craft_categorygroups_sites_siteId_idx` (`siteId`),
  CONSTRAINT `craft_categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categorygroups_sites`
--

LOCK TABLES `craft_categorygroups_sites` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_categorygroups_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_content`
--

DROP TABLE IF EXISTS `craft_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_textField` text,
  `field_backgroundColor` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_content_siteId_idx` (`siteId`),
  KEY `craft_content_title_idx` (`title`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_content`
--

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;
INSERT INTO `craft_content` VALUES (1,1,1,NULL,'2019-11-16 18:40:28','2019-11-16 18:54:52','78ba5682-94fe-486d-bb88-6ad67188f959',NULL,NULL),(2,2,1,'Home Page','2019-11-23 17:00:31','2019-12-04 21:08:49','01cdbe40-483c-46b0-a5f5-3d704a7f9133',NULL,NULL),(3,3,1,'Home Page','2019-11-23 17:00:31','2019-11-23 17:00:31','f0ff8a73-6759-42c3-8f94-91e55bd179a7',NULL,NULL),(4,4,1,'About','2019-11-23 17:07:16','2019-12-05 00:37:13','5bb592cc-f60e-44ec-a442-e27d91bab2c8','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>',NULL),(5,5,1,'About Page','2019-11-23 17:07:16','2019-11-23 17:07:16','5c92a660-0319-413b-97fc-acccb137eb63',NULL,NULL),(6,6,1,'Get In Touch','2019-11-23 17:07:59','2019-12-05 00:39:38','9f52159b-d939-42c0-a5fb-d0bc29687ada',NULL,NULL),(7,7,1,'Get Involved','2019-11-23 17:07:59','2019-11-23 17:07:59','82435f44-d769-4ce0-8174-59954588af37',NULL,NULL),(8,8,1,NULL,'2019-11-23 18:23:43','2019-12-04 03:53:35','94201220-0a39-40c6-820e-9a102221696f','<h2>Empowering youth, families and communities with gender affirming services, training and research.</h2>',NULL),(9,9,1,NULL,'2019-11-23 18:37:41','2019-12-05 00:38:34','497b3dcb-8ff1-4718-9a8b-e93c7e63c14e','<p>936 BROADWAY, 2ND FLOOR</p><p>NYC, NY 10010</p><p>(212)-879-4900 x370</p>',NULL),(10,10,1,NULL,'2019-11-23 18:38:06','2019-12-05 00:38:53','44a77b19-25e6-4bde-be06-4bac41bb88d2','<p>@GenderandFamilyProject</p>',NULL),(11,11,1,'404 Page','2019-11-23 18:53:39','2019-11-23 18:54:34','a1a5e556-fd8e-450b-932a-1660603d8a84','<p>This page does not exist. <a href=\"{entry:2:url}\">Back to home</a>. </p>',NULL),(12,12,1,'404 Page','2019-11-23 18:53:39','2019-11-23 18:53:39','12697b13-0508-4e9d-9794-e18584d921c4',NULL,NULL),(13,13,1,'404 Page','2019-11-23 18:54:05','2019-11-23 18:54:05','557197eb-22a3-4c98-bb07-c97848a5f310',NULL,NULL),(14,14,1,'404 Page','2019-11-23 18:54:34','2019-11-23 18:54:34','59bbeb95-522c-4f2a-8bbb-4f62e284e33e','<p>This page does not exist. <a href=\"{entry:2:url}\">Back to home</a>. </p>',NULL),(15,15,1,'Home Page','2019-11-23 20:21:15','2019-11-23 20:21:15','cbe3d995-8eb1-4a82-82fe-402090971e44',NULL,NULL),(16,16,1,'Image2','2019-11-23 20:23:41','2019-11-23 20:23:48','ecb9f9e2-2d74-40e8-a21b-aefc8869b684',NULL,NULL),(17,17,1,'Image1 Duo','2019-11-23 20:24:29','2019-11-23 20:24:37','3251550d-3fda-4beb-b871-461159686ca1',NULL,NULL),(18,20,1,'Home Page','2019-11-23 20:25:01','2019-11-23 20:25:01','884769d0-c108-4e2e-a56f-0bfdb759ec06',NULL,NULL),(19,23,1,'Home Page','2019-11-23 20:54:33','2019-11-23 20:54:33','15381b4f-d5ce-4849-9508-66c420487055',NULL,NULL),(20,26,1,'About Page','2019-11-23 22:38:17','2019-11-23 22:38:17','69500e5b-33e9-4598-ab94-afd360da8149',NULL,NULL),(21,27,1,'Get Involved','2019-11-23 22:38:24','2019-11-23 22:38:24','f5d93285-9e12-4d5d-9b74-1eaa4058a34b',NULL,NULL),(22,28,1,'About Page','2019-11-23 22:39:19','2019-11-23 22:39:19','48d3bd2f-de98-4ec0-bb0d-9458cf3b4f3a','<p>MISSION</p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p><br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>',NULL),(23,29,1,'About Page','2019-11-23 22:49:56','2019-11-23 22:49:56','0e62cee8-af8d-4baf-8d55-323102bad80e','<h1>MISSION</h1><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>',NULL),(24,30,1,'About Page','2019-11-23 22:51:44','2019-11-23 22:51:44','23bc1a15-61d0-4a23-8e6a-862e1dc008c8','<h1>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></h1><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>',NULL),(25,31,1,'About Page','2019-11-23 22:51:59','2019-11-23 22:51:59','06a89320-d0a2-432b-a696-5d1610448e73','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>',NULL),(26,32,1,'About Page','2019-11-23 22:53:05','2019-11-23 22:53:05','059c7e47-0a17-406f-b94f-94e7c39672d8','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>',NULL),(27,33,1,'About','2019-11-23 22:53:15','2019-11-23 22:53:15','52e7b593-e4ed-41e5-8b03-1faec7dbbc06','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>',NULL),(28,34,1,'Home Page','2019-12-01 00:04:11','2019-12-01 00:04:11','d23ad4ba-dd85-4ba6-ba19-7913225fa857',NULL,NULL),(29,38,1,'Home Page','2019-12-01 00:09:15','2019-12-01 00:09:15','b2b6e101-c699-43e3-addd-00da086e0e85',NULL,NULL),(30,42,1,'Home Page','2019-12-01 00:13:23','2019-12-01 00:13:23','2694e56b-b02c-42fa-bb3e-829725f41baa',NULL,NULL),(31,46,1,'Home Page','2019-12-01 00:14:59','2019-12-01 00:14:59','61278d62-f8ae-47dd-a7e9-96dbb850ba87',NULL,NULL),(32,50,1,'About','2019-12-01 00:44:38','2019-12-01 00:44:38','6020bca6-9317-4d01-adc3-7b79adbcd799','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>',NULL),(33,51,1,'About','2019-12-01 00:44:38','2019-12-01 00:44:38','12de393b-7098-474b-915d-4771ca62b5bc','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>',NULL),(34,52,1,'Get Involved','2019-12-01 00:44:49','2019-12-01 00:44:49','aa9b6705-b62f-438a-9512-0133ff4d2317',NULL,NULL),(35,54,1,'About','2019-12-01 00:48:14','2019-12-01 00:48:14','2db239c2-8b9d-410e-921e-3289266c76de',NULL,NULL),(36,56,1,'About','2019-12-01 00:52:47','2019-12-01 00:52:47','46ae0748-55e5-4e09-b42e-30803d45b43a',NULL,NULL),(37,58,1,'About','2019-12-01 00:52:48','2019-12-01 00:52:48','f2472c38-3598-40a4-a1c6-b180b2227332',NULL,NULL),(38,60,1,'Get Involved','2019-12-01 00:52:58','2019-12-01 00:52:58','b0a99dfb-8352-44d7-b6fe-0755293de6f7',NULL,NULL),(39,61,1,'Home Page','2019-12-01 19:11:21','2019-12-01 19:11:21','2ec984ee-fca2-46d0-882e-76c32c905ffc',NULL,NULL),(40,65,1,'Home Page','2019-12-04 03:38:47','2019-12-04 03:38:47','d3e36461-03d0-48b7-8506-bf88d8ef323f',NULL,NULL),(42,72,1,'About','2019-12-04 20:03:31','2019-12-04 20:03:31','dfb5ff10-5617-4423-a4fd-30a5cfbd9670',NULL,NULL),(43,74,1,'Home Page','2019-12-04 20:09:38','2019-12-04 20:09:38','74c5dd58-c23a-43cc-8379-e434869c6d3c',NULL,NULL),(44,78,1,'Home Page','2019-12-04 20:10:15','2019-12-04 20:10:15','613924ca-0766-4e2e-afc8-c1837b6ba02a',NULL,NULL),(45,82,1,'About','2019-12-04 20:12:28','2019-12-04 20:12:28','ffa9151f-9d11-4ad0-a8fc-bf553e3b4b5d',NULL,NULL),(46,84,1,'About','2019-12-04 20:12:54','2019-12-04 20:12:54','5e6a16a7-14da-4670-b35b-a3df4075ee52',NULL,NULL),(47,87,1,'Get Involved','2019-12-04 20:14:55','2019-12-04 20:14:55','e63556f9-00b4-45b8-b64b-7327ea5a8bbc',NULL,NULL),(48,89,1,'Get Involved','2019-12-04 20:15:27','2019-12-04 20:15:27','ba85148a-c80e-4cc6-bf39-ab6f0142f12a',NULL,NULL),(49,91,1,'Get Involved','2019-12-04 20:15:40','2019-12-04 20:15:40','58922fa2-2f1a-419e-a8fa-c29e113a8097',NULL,NULL),(50,93,1,'Get Involved','2019-12-04 20:15:54','2019-12-04 20:15:54','ed16c122-0aa4-471c-8911-510956e5e915',NULL,NULL),(51,95,1,'Get Involved','2019-12-04 20:16:00','2019-12-04 20:16:00','340ae402-93e4-41a1-9df6-cebd854aa4bc',NULL,NULL),(52,97,1,'Get Involved','2019-12-04 20:16:10','2019-12-04 20:16:10','2f5fa7ec-0719-4e1d-98d1-d4a034275f62',NULL,NULL),(53,99,1,'Home Page','2019-12-04 20:18:01','2019-12-04 20:18:01','2f0fd42d-918c-4232-981b-2d89bc8eef85',NULL,NULL),(54,103,1,'Home Page','2019-12-04 20:18:57','2019-12-04 20:18:57','f7da6230-1528-448b-8360-de9865c8b5b3',NULL,NULL),(55,107,1,'2017 06 25 NYC PRIDE GENDER AND FAMILY PROJECT 135','2019-12-04 20:28:00','2019-12-04 21:00:16','98f0764c-1e67-43f7-95fa-16580e15129b',NULL,NULL),(56,108,1,'Home Page','2019-12-04 20:28:08','2019-12-04 20:28:08','e68d5832-6984-480e-bd4c-e0a21867b7ab',NULL,NULL),(57,112,1,'Home Page','2019-12-04 20:30:35','2019-12-04 20:30:35','01993c1b-3eb6-4f81-9a74-3ac580ff598d',NULL,NULL),(58,116,1,'Home Page','2019-12-04 20:45:54','2019-12-04 20:45:54','06ba2a4e-f8ce-4d9d-9ae6-b590efc48224',NULL,NULL),(59,120,1,'2017 06 25 NYC PRIDE GENDER AND FAMILY PROJECT 135','2019-12-04 20:50:07','2019-12-04 20:50:07','03300e2e-6268-4547-b350-e0a7ecdcd0d4',NULL,NULL),(60,121,1,'Home Page','2019-12-04 20:50:15','2019-12-04 20:50:15','a2b5f8be-7bd3-494c-a19a-c2857ca8b8f6',NULL,NULL),(61,125,1,'2017 06 25 NYC PRIDE GENDER AND FAMILY PROJECT 135','2019-12-04 21:00:12','2019-12-04 21:00:12','0be76d99-3c1d-410b-9605-ff416997c1ce',NULL,NULL),(62,126,1,'Home Page','2019-12-04 21:00:19','2019-12-04 21:00:19','1812fe8b-84f1-4175-b111-49cfae701055',NULL,NULL),(63,130,1,'2017 06 25 NYC PRIDE GENDER AND FAMILY PROJECT 135 2','2019-12-04 21:08:45','2019-12-04 21:08:45','a98ca87c-9a54-4ef7-b9cb-a6a9167dd595',NULL,NULL),(64,131,1,'Home Page','2019-12-04 21:08:49','2019-12-04 21:08:49','d91efcf5-acb3-40da-aafc-0206792f9965',NULL,NULL),(65,135,1,'20190118 Ackerman 118','2019-12-04 21:17:08','2019-12-04 21:20:47','0ff48ae9-2c78-48bf-8f92-acc94d7d11c0',NULL,NULL),(66,136,1,'About','2019-12-04 21:17:12','2019-12-04 21:17:12','d06fede1-dcdb-4284-a31b-5fb98e2b919f',NULL,NULL),(67,138,1,'About','2019-12-04 21:17:49','2019-12-04 21:17:49','ea0dc7a7-ec02-4c55-a333-1a2c6b5c9c31',NULL,NULL),(68,140,1,'20190118 Ackerman 118','2019-12-04 21:20:44','2019-12-04 21:20:44','12e4f534-ae60-4d7e-b6d8-ff2f88bac668',NULL,NULL),(69,141,1,'About','2019-12-04 21:20:50','2019-12-04 21:20:50','13e40390-b171-44ec-9f1b-f15681623f3b',NULL,NULL),(70,143,1,'GFP Back Heart3','2019-12-04 21:25:06','2019-12-04 21:25:06','a9d29b89-17ce-4cbe-9cd9-34f9adfb8f2c',NULL,NULL),(71,144,1,'Get Involved','2019-12-04 21:25:10','2019-12-04 21:25:10','8fc11d20-6588-4fb8-aaf8-a2018df5013d',NULL,NULL),(72,146,1,'Get Involved','2019-12-04 21:34:09','2019-12-04 21:34:09','f362e98d-2c8a-443f-8916-5aa3ba2f8d22',NULL,NULL),(73,148,1,'Get Involved','2019-12-04 21:34:17','2019-12-04 21:34:17','a7f4ac7d-3cd3-43da-a9dd-112c91d22bb4',NULL,NULL),(74,150,1,'Get Involved','2019-12-04 21:34:34','2019-12-04 21:34:34','9a871e12-7e6b-4f73-9851-3e571c02a3ff',NULL,NULL),(75,152,1,'About','2019-12-05 00:37:13','2019-12-05 00:37:13','a8fa908f-07ed-4502-b4ee-75a287f09f47',NULL,NULL),(76,154,1,'Get Involved','2019-12-05 00:37:17','2019-12-05 00:37:17','624a228d-fe1a-4598-9a12-ca9a20350104',NULL,NULL),(77,156,1,NULL,'2019-12-05 00:38:20','2019-12-05 00:38:57','da9dedf7-2172-4109-a02d-7c70d5f8e731','<p>@GenderandFamily</p>',NULL),(78,157,1,'Get In Touch','2019-12-05 00:39:38','2019-12-05 00:39:38','2616e46e-8c1c-402a-97aa-5637a3af5287',NULL,NULL);
/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_craftidtokens`
--

DROP TABLE IF EXISTS `craft_craftidtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_craftidtokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_craftidtokens_userId_fk` (`userId`),
  CONSTRAINT `craft_craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_craftidtokens`
--

LOCK TABLES `craft_craftidtokens` WRITE;
/*!40000 ALTER TABLE `craft_craftidtokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_craftidtokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_deprecationerrors`
--

DROP TABLE IF EXISTS `craft_deprecationerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_deprecationerrors`
--

LOCK TABLES `craft_deprecationerrors` WRITE;
/*!40000 ALTER TABLE `craft_deprecationerrors` DISABLE KEYS */;
INSERT INTO `craft_deprecationerrors` VALUES (1,'craft.request.getFirstSegment()','/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig:16','2019-11-16 20:28:07','/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig',16,'craft.request.getFirstSegment() has been deprecated. Use craft.app.request.segments|first instead.','[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/twig/variables/Request.php\",\"line\":178,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"craft.request.getFirstSegment()\\\", \\\"craft.request.getFirstSegment() has been deprecated. Use craft.a...\\\"\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\variables\\\\Request\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Extension/CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\web\\\\twig\\\\variables\\\\Request\",\"method\":\"getFirstSegment\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/helpers/Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\web\\\\twig\\\\variables\\\\Request, \\\"firstSegment\\\", ...\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/87/87b37fd52cb1c431058f332afd778a5dd2bdf2b2c7b888e7934912ba11d4c127.php\",\"line\":55,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\web\\\\twig\\\\variables\\\\Request, \\\"firstSegment\\\", ...\"},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/3d/3dd5f2ad699c303871abb4016604222147a63974ce5dc89e6e4651c8388dc875.php\",\"line\":162,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/81/814966eb4c5d1ebf893748eb4146f67c2675b7388722b74854df0902c2f1d18d.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]','2019-11-16 20:28:07','2019-11-16 20:28:07','80785952-9059-4ef6-9f9d-0373ec7b6542'),(2,'ElementQuery::getIterator()','/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig:29','2019-11-16 20:28:07','/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig',29,'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.','[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\TagQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/87/87b37fd52cb1c431058f332afd778a5dd2bdf2b2c7b888e7934912ba11d4c127.php\",\"line\":75,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/3d/3dd5f2ad699c303871abb4016604222147a63974ce5dc89e6e4651c8388dc875.php\",\"line\":162,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/81/814966eb4c5d1ebf893748eb4146f67c2675b7388722b74854df0902c2f1d18d.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]','2019-11-16 20:28:07','2019-11-16 20:28:07','f9633fb4-1e72-44b6-bad8-7cb45f5789eb'),(3,'craft.request.getFirstSegment()','/Users/jameslamarre/Desktop/web/gfp/templates/globals/footer.twig:1','2019-11-16 20:28:07','/Users/jameslamarre/Desktop/web/gfp/templates/globals/footer.twig',1,'craft.request.getFirstSegment() has been deprecated. Use craft.app.request.segments|first instead.','[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/twig/variables/Request.php\",\"line\":178,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"craft.request.getFirstSegment()\\\", \\\"craft.request.getFirstSegment() has been deprecated. Use craft.a...\\\"\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\variables\\\\Request\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Extension/CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\web\\\\twig\\\\variables\\\\Request\",\"method\":\"getFirstSegment\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/helpers/Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\web\\\\twig\\\\variables\\\\Request, \\\"firstSegment\\\", ...\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/69/69ab2dd91c964e92d537246ae8d425c81df0fda01cb05a41c66c5e4b0f6838ea.php\",\"line\":38,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\web\\\\twig\\\\variables\\\\Request, \\\"firstSegment\\\", ...\"},{\"objectClass\":\"__TwigTemplate_4f18bfee51e129727acf6a7afde782122577174b7d3938efc2439731af2ed50e\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4f18bfee51e129727acf6a7afde782122577174b7d3938efc2439731af2ed50e\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_4f18bfee51e129727acf6a7afde782122577174b7d3938efc2439731af2ed50e\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_4f18bfee51e129727acf6a7afde782122577174b7d3938efc2439731af2ed50e\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/3d/3dd5f2ad699c303871abb4016604222147a63974ce5dc89e6e4651c8388dc875.php\",\"line\":174,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/81/814966eb4c5d1ebf893748eb4146f67c2675b7388722b74854df0902c2f1d18d.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]','2019-11-16 20:28:07','2019-11-16 20:28:07','1df687a8-ce32-4361-bf0c-76c6b091829d'),(7,'ElementQuery::find()','/Users/jameslamarre/Desktop/web/gfp/templates/404.twig:11','2019-11-23 20:15:25','/Users/jameslamarre/Desktop/web/gfp/templates/404.twig',11,'The find() function used to query for elements is now deprecated. Use all() instead.','[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":1835,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::find()\\\", \\\"The find() function used to query for elements is now deprecated...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Extension/CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"find\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/helpers/Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\EntryQuery, \\\"find\\\", ...\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/50/501fa0af06ead913fe09651246a6155ba2bd5805f7219607fbc9e775bfd16dd9.php\",\"line\":62,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\EntryQuery, \\\"find\\\", ...\"},{\"objectClass\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"method\":\"block_content\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/3d/3dd5f2ad699c303871abb4016604222147a63974ce5dc89e6e4651c8388dc875.php\",\"line\":167,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/50/501fa0af06ead913fe09651246a6155ba2bd5805f7219607fbc9e775bfd16dd9.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"404\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"404\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"404\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"404\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"404\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"404\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"404\\\", \\\"p\\\" => \\\"404\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"404\\\", \\\"p\\\" => \\\"404\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"404\\\", \\\"p\\\" => \\\"404\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"404\\\", \\\"p\\\" => \\\"404\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"404\\\", \\\"p\\\" => \\\"404\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]','2019-11-23 20:15:25','2019-11-23 20:15:25','c52cbc65-0c34-4a94-92c8-9c05aec6b50f');
/*!40000 ALTER TABLE `craft_deprecationerrors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_drafts`
--

DROP TABLE IF EXISTS `craft_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_drafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `craft_drafts_creatorId_fk` (`creatorId`),
  KEY `craft_drafts_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_drafts`
--

LOCK TABLES `craft_drafts` WRITE;
/*!40000 ALTER TABLE `craft_drafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_elementindexsettings`
--

DROP TABLE IF EXISTS `craft_elementindexsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elementindexsettings`
--

LOCK TABLES `craft_elementindexsettings` WRITE;
/*!40000 ALTER TABLE `craft_elementindexsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_elementindexsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_elements`
--

DROP TABLE IF EXISTS `craft_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_dateDeleted_idx` (`dateDeleted`),
  KEY `craft_elements_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  KEY `craft_elements_draftId_fk` (`draftId`),
  KEY `craft_elements_revisionId_fk` (`revisionId`),
  CONSTRAINT `craft_elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `craft_drafts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `craft_revisions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elements`
--

LOCK TABLES `craft_elements` WRITE;
/*!40000 ALTER TABLE `craft_elements` DISABLE KEYS */;
INSERT INTO `craft_elements` VALUES (1,NULL,NULL,NULL,'craft\\elements\\User',1,0,'2019-11-16 18:40:28','2019-11-16 18:54:52',NULL,'cb597c03-c537-4553-9d1d-150c24cbf58e'),(2,NULL,NULL,6,'craft\\elements\\Entry',1,0,'2019-11-23 17:00:31','2019-12-04 21:08:49',NULL,'7ba85b6d-6073-4319-becb-aaad26f90e3c'),(3,NULL,1,NULL,'craft\\elements\\Entry',1,0,'2019-11-23 17:00:31','2019-11-23 17:00:31',NULL,'41e39008-5171-476a-b29d-7af4156e0964'),(4,NULL,NULL,7,'craft\\elements\\Entry',1,0,'2019-11-23 17:07:16','2019-12-05 00:37:13',NULL,'2caa0e6a-0878-4525-a24b-845596599d2a'),(5,NULL,2,NULL,'craft\\elements\\Entry',1,0,'2019-11-23 17:07:16','2019-11-23 17:07:16',NULL,'fd62115b-f10f-4e8f-8591-80bafc5a2700'),(6,NULL,NULL,8,'craft\\elements\\Entry',1,0,'2019-11-23 17:07:59','2019-12-05 00:39:38',NULL,'17fc55be-2cee-40e4-adcc-4da486191d0c'),(7,NULL,3,NULL,'craft\\elements\\Entry',1,0,'2019-11-23 17:07:59','2019-11-23 17:07:59',NULL,'62e19400-4a85-4a3b-bd65-c04f0687508b'),(8,NULL,NULL,2,'craft\\elements\\GlobalSet',1,0,'2019-11-23 18:23:43','2019-12-04 03:53:35',NULL,'5fae239b-fc55-4e9d-913e-decd8dcc8d3a'),(9,NULL,NULL,3,'craft\\elements\\GlobalSet',1,0,'2019-11-23 18:37:41','2019-12-05 00:38:34',NULL,'883d4f51-a9a9-41fd-bfed-0fbda8ff415b'),(10,NULL,NULL,4,'craft\\elements\\GlobalSet',1,0,'2019-11-23 18:38:06','2019-12-05 00:38:53',NULL,'74f79638-484e-4e72-bc38-9ba1a4f3a3e2'),(11,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2019-11-23 18:53:39','2019-11-23 18:54:34',NULL,'64443692-cd3a-40bb-bfbd-422b5cf71ba0'),(12,NULL,4,NULL,'craft\\elements\\Entry',1,0,'2019-11-23 18:53:39','2019-11-23 18:53:39',NULL,'cdc945dd-e870-4537-9edf-6e53ab783c41'),(13,NULL,5,NULL,'craft\\elements\\Entry',1,0,'2019-11-23 18:54:05','2019-11-23 18:54:05',NULL,'6803ba1f-0fa7-4c36-b6c6-a571a30cedfd'),(14,NULL,6,5,'craft\\elements\\Entry',1,0,'2019-11-23 18:54:34','2019-11-23 18:54:34',NULL,'34c53b94-774c-4140-bd0c-0d24ec4f87bb'),(15,NULL,7,NULL,'craft\\elements\\Entry',1,0,'2019-11-23 20:21:15','2019-11-23 20:21:15',NULL,'80f95b8c-bb5c-49d2-9eee-59e9428c1446'),(16,NULL,NULL,NULL,'craft\\elements\\Asset',1,0,'2019-11-23 20:23:41','2019-11-23 20:23:48',NULL,'8ef0310c-503a-4846-be12-45de5e8849b7'),(17,NULL,NULL,NULL,'craft\\elements\\Asset',1,0,'2019-11-23 20:24:29','2019-11-23 20:24:37',NULL,'b124c0ba-c815-475f-8f90-68a3edccbf63'),(18,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-11-23 20:25:01','2019-12-04 21:08:49',NULL,'72718e2b-91a4-4dd9-bffb-d6736fbb528f'),(19,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-11-23 20:25:01','2019-12-04 21:08:49',NULL,'945a0239-a57c-4a7c-9fca-42f998bee70a'),(20,NULL,8,6,'craft\\elements\\Entry',1,0,'2019-11-23 20:25:01','2019-11-23 20:25:01',NULL,'94c8a783-6635-40b6-87a0-660ef8a9b922'),(21,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-11-23 20:25:01','2019-11-23 20:25:01',NULL,'7ecb8761-fd81-4c8c-95d3-b951c280b66a'),(22,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-11-23 20:25:01','2019-11-23 20:25:01',NULL,'6485f58d-a316-4efd-a922-95cdfc85d650'),(23,NULL,9,6,'craft\\elements\\Entry',1,0,'2019-11-23 20:54:33','2019-11-23 20:54:33',NULL,'515f192d-ede0-4bd1-a674-f4203351340e'),(24,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-11-23 20:54:33','2019-11-23 20:54:33',NULL,'97764d1b-fd35-43be-9b0c-a8306ac99c73'),(25,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-11-23 20:54:33','2019-11-23 20:54:33',NULL,'4b9b8ba7-c6f9-487b-9a36-7d1bda7995dd'),(26,NULL,10,NULL,'craft\\elements\\Entry',1,0,'2019-11-23 22:38:17','2019-11-23 22:38:17',NULL,'a5c7a520-994b-481d-a36d-05b08f1c27c9'),(27,NULL,11,NULL,'craft\\elements\\Entry',1,0,'2019-11-23 22:38:24','2019-11-23 22:38:24',NULL,'6c2b3767-3266-4d0d-a73e-388d91ec11f5'),(28,NULL,12,7,'craft\\elements\\Entry',1,0,'2019-11-23 22:39:19','2019-11-23 22:39:19',NULL,'3729c638-6898-429b-a20d-437ccf8e0ae6'),(29,NULL,13,7,'craft\\elements\\Entry',1,0,'2019-11-23 22:49:55','2019-11-23 22:49:55',NULL,'b945bcaf-6814-45a7-92c2-e6523062fd91'),(30,NULL,14,7,'craft\\elements\\Entry',1,0,'2019-11-23 22:51:44','2019-11-23 22:51:44',NULL,'12ec4b87-0345-4f58-b132-1ed0f7d1d2b7'),(31,NULL,15,7,'craft\\elements\\Entry',1,0,'2019-11-23 22:51:59','2019-11-23 22:51:59',NULL,'1ed6f327-925d-4f19-bc40-2b875ca617da'),(32,NULL,16,7,'craft\\elements\\Entry',1,0,'2019-11-23 22:53:04','2019-11-23 22:53:04',NULL,'f684a271-196b-4c9c-aec1-8a55b4bd4c20'),(33,NULL,17,7,'craft\\elements\\Entry',1,0,'2019-11-23 22:53:15','2019-11-23 22:53:15',NULL,'4365f0d5-7181-4404-823d-70910fce1e68'),(34,NULL,18,6,'craft\\elements\\Entry',1,0,'2019-12-01 00:04:10','2019-12-01 00:04:10',NULL,'3479ba1b-6f7d-4a66-952e-3ff2be9a594b'),(35,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:04:11','2019-12-01 00:04:10',NULL,'c41a1c8f-8a67-492d-92e4-280e022943d9'),(36,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:04:11','2019-12-01 00:04:11',NULL,'55ef20bc-ec8a-4e3b-a490-1dbf7bb9198c'),(37,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:09:14','2019-12-04 21:08:49',NULL,'9cf2045c-c8f7-4c45-b80d-9fc83c12bb48'),(38,NULL,19,6,'craft\\elements\\Entry',1,0,'2019-12-01 00:09:14','2019-12-01 00:09:14',NULL,'ee5281dd-700a-48a1-8531-f3dd7465aa27'),(39,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:09:15','2019-12-01 00:09:14',NULL,'671b7050-5334-4e56-adf4-dbfc015a18d6'),(40,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:09:15','2019-12-01 00:09:14',NULL,'1e6c68bf-9b55-41e5-bb41-0861258db8d5'),(41,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:09:15','2019-12-01 00:09:14',NULL,'9026b094-0e9c-4d3f-ad99-af1708ccf9bd'),(42,NULL,20,6,'craft\\elements\\Entry',1,0,'2019-12-01 00:13:23','2019-12-01 00:13:23',NULL,'8cbedbe3-47f9-4cd5-b5ba-13883440f1c8'),(43,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:13:23','2019-12-01 00:13:23',NULL,'83a93b51-a634-4b8e-8b3b-984d909dea3d'),(44,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:13:23','2019-12-01 00:13:23',NULL,'ac345d7d-334e-4374-a7d5-d609a3d43859'),(45,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:13:23','2019-12-01 00:13:23',NULL,'2c16a60b-e34e-4695-bef7-1b6387621036'),(46,NULL,21,6,'craft\\elements\\Entry',1,0,'2019-12-01 00:14:58','2019-12-01 00:14:58',NULL,'faf7d585-ad3a-4e07-b2f2-4c4e0b17c75a'),(47,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:14:59','2019-12-01 00:14:58',NULL,'27a42fa5-7b63-4fff-a5da-020ef8cb3433'),(48,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:14:59','2019-12-01 00:14:59',NULL,'9cda9ac0-99b9-411c-89c7-677147953394'),(49,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:14:59','2019-12-01 00:14:59',NULL,'69c4270c-e0c3-4e40-b4d2-eee88130be9d'),(50,NULL,22,7,'craft\\elements\\Entry',1,0,'2019-12-01 00:44:37','2019-12-01 00:44:37',NULL,'84c72a9c-da30-4ce2-845a-39b117f3bfbf'),(51,NULL,23,7,'craft\\elements\\Entry',1,0,'2019-12-01 00:44:38','2019-12-01 00:44:38',NULL,'a5eb8bad-2488-471c-b981-e33841f07030'),(52,NULL,24,8,'craft\\elements\\Entry',1,0,'2019-12-01 00:44:49','2019-12-01 00:44:49',NULL,'deedd40e-6feb-4c73-b03a-8786a4aa6096'),(53,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:48:13','2019-12-01 00:52:48','2019-12-04 20:03:31','f56ff11e-3077-420e-a617-540c268bd9dc'),(54,NULL,25,7,'craft\\elements\\Entry',1,0,'2019-12-01 00:48:13','2019-12-01 00:48:13',NULL,'f5fc8c7c-24a8-4bc5-8aff-647fb553db7c'),(55,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:48:14','2019-12-01 00:48:13',NULL,'4a7c1a87-7aff-4bcd-9249-145b48e2537e'),(56,NULL,26,7,'craft\\elements\\Entry',1,0,'2019-12-01 00:52:47','2019-12-01 00:52:47',NULL,'088f6030-d7c5-4713-95a6-df18bfd3939c'),(57,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:52:47','2019-12-01 00:52:47',NULL,'41480063-7c46-44e9-b2e8-6af130fae99d'),(58,NULL,27,7,'craft\\elements\\Entry',1,0,'2019-12-01 00:52:48','2019-12-01 00:52:48',NULL,'5a86391d-0080-48e4-9e7b-fab60545f474'),(59,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 00:52:48','2019-12-01 00:52:48',NULL,'91e17c72-0d98-4d72-be89-5a4c9c432df8'),(60,NULL,28,8,'craft\\elements\\Entry',1,0,'2019-12-01 00:52:58','2019-12-01 00:52:58',NULL,'7af3b56a-b045-46ab-8c15-609e57ce1440'),(61,NULL,29,6,'craft\\elements\\Entry',1,0,'2019-12-01 19:11:21','2019-12-01 19:11:21',NULL,'32738f37-f6d7-4624-8ab1-c99fdc0b960d'),(62,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 19:11:22','2019-12-01 19:11:21',NULL,'b98c9fad-1018-46e9-bf3d-4151f1924568'),(63,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 19:11:22','2019-12-01 19:11:21',NULL,'1b3cd2bd-8a9f-4685-a710-780344f0207b'),(64,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-01 19:11:22','2019-12-01 19:11:21',NULL,'e5d7d826-43cd-4ae0-941d-346da5009807'),(65,NULL,30,6,'craft\\elements\\Entry',1,0,'2019-12-04 03:38:47','2019-12-04 03:38:47',NULL,'1d1f6e90-5b7f-491e-bd82-4280945ea6d2'),(66,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 03:38:47','2019-12-04 03:38:47',NULL,'d87dd08b-3850-4006-9a08-c77d75acae8a'),(67,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 03:38:48','2019-12-04 03:38:47',NULL,'913ad2e0-8f94-4e0b-aec4-a0b2bbc24093'),(68,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 03:38:48','2019-12-04 03:38:47',NULL,'d099abdc-2e02-4ba4-bec5-8b84f4293a4c'),(71,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:03:31','2019-12-05 00:37:13',NULL,'0a057600-942d-4a5d-879b-88044e3fed6c'),(72,NULL,31,7,'craft\\elements\\Entry',1,0,'2019-12-04 20:03:31','2019-12-04 20:03:31',NULL,'9e5cb6b2-6764-44ec-9824-2ce4b2bd9b99'),(73,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:03:31','2019-12-04 20:03:31',NULL,'ea7d1a20-21c9-482f-9988-ef89d9436857'),(74,NULL,32,6,'craft\\elements\\Entry',1,0,'2019-12-04 20:09:38','2019-12-04 20:09:38',NULL,'25e27fb9-e468-46b3-b7db-ff302349c0e7'),(75,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:09:38','2019-12-04 20:09:38',NULL,'e46a23f2-ee2a-4a5b-aee5-35242bcaf9b0'),(76,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:09:38','2019-12-04 20:09:38',NULL,'0054b6a5-b09b-4e16-b3cd-1f71251cb233'),(77,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:09:38','2019-12-04 20:09:38',NULL,'e1df6d5c-dbaf-4f9d-ab0d-2987d679ee7e'),(78,NULL,33,6,'craft\\elements\\Entry',1,0,'2019-12-04 20:10:15','2019-12-04 20:10:15',NULL,'24209131-a712-4f13-95fc-67da16c32d86'),(79,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:10:15','2019-12-04 20:10:15',NULL,'da47e540-3bf8-4cc8-b94b-84f5e3ea745b'),(80,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:10:15','2019-12-04 20:10:15',NULL,'2010ae59-d177-4112-84d6-758439c49831'),(81,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:10:15','2019-12-04 20:10:15',NULL,'7e67d35f-703c-431b-a966-9d1ecafe97f0'),(82,NULL,34,7,'craft\\elements\\Entry',1,0,'2019-12-04 20:12:28','2019-12-04 20:12:28',NULL,'bb472ab3-1114-4b86-9bda-66b88b7de563'),(83,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:12:28','2019-12-04 20:12:28',NULL,'a7f9ba37-409c-4714-9d65-2fd882652d67'),(84,NULL,35,7,'craft\\elements\\Entry',1,0,'2019-12-04 20:12:54','2019-12-04 20:12:54',NULL,'674ac2db-4d5d-41f0-ac51-3126e889d9a8'),(85,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:12:54','2019-12-04 20:12:54',NULL,'56555e63-4b0d-471a-a577-352c3daffa7e'),(86,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:14:55','2019-12-05 00:39:38',NULL,'cca8089e-b991-45ca-9f88-3c5988683170'),(87,NULL,36,8,'craft\\elements\\Entry',1,0,'2019-12-04 20:14:55','2019-12-04 20:14:55',NULL,'e831ff20-c86d-4d41-9e66-2ac5d9fd8b05'),(88,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:14:55','2019-12-04 20:14:55',NULL,'7c8177d3-e884-470c-9008-a22bd8295810'),(89,NULL,37,8,'craft\\elements\\Entry',1,0,'2019-12-04 20:15:27','2019-12-04 20:15:27',NULL,'1f65ca55-a4a4-465c-8baa-6efe5043c523'),(90,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:15:27','2019-12-04 20:15:27',NULL,'a2c51781-d86e-4083-8d5b-40aa5e7bbf25'),(91,NULL,38,8,'craft\\elements\\Entry',1,0,'2019-12-04 20:15:40','2019-12-04 20:15:40',NULL,'2879d7b1-6e11-41bd-9c75-8bb5b03ee6ed'),(92,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:15:40','2019-12-04 20:15:40',NULL,'499edc1b-3619-4ca7-a9ef-7b7a9123dd27'),(93,NULL,39,8,'craft\\elements\\Entry',1,0,'2019-12-04 20:15:54','2019-12-04 20:15:54',NULL,'ad90dc3d-c380-4896-aef0-4d70b90351dc'),(94,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:15:54','2019-12-04 20:15:54',NULL,'e85c71a3-4644-4cb7-8fff-e2f465551952'),(95,NULL,40,8,'craft\\elements\\Entry',1,0,'2019-12-04 20:16:00','2019-12-04 20:16:00',NULL,'d59d3e28-9ca2-4124-a25f-785c9768ce96'),(96,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:16:00','2019-12-04 20:16:00',NULL,'fc3ccf9a-ba6c-4dea-b274-0951bc941ea3'),(97,NULL,41,8,'craft\\elements\\Entry',1,0,'2019-12-04 20:16:09','2019-12-04 20:16:09',NULL,'3c13a59a-c33f-4f6f-872c-29e152679846'),(98,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:16:10','2019-12-04 20:16:09',NULL,'8d97fe8f-8be0-4cc7-8a59-d86dbc90ab4f'),(99,NULL,42,6,'craft\\elements\\Entry',1,0,'2019-12-04 20:18:01','2019-12-04 20:18:01',NULL,'77b9893b-3c65-4914-b43e-34644500111c'),(100,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:18:01','2019-12-04 20:18:01',NULL,'d71b871e-2a24-48bd-91c7-f8cecd6de0de'),(101,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:18:01','2019-12-04 20:18:01',NULL,'724028c2-1f8b-456b-a2df-980ae35fc966'),(102,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:18:01','2019-12-04 20:18:01',NULL,'67a605e1-feaf-4ebb-9544-46427ace741b'),(103,NULL,43,6,'craft\\elements\\Entry',1,0,'2019-12-04 20:18:57','2019-12-04 20:18:57',NULL,'78c7587c-2973-492a-b4cf-7ae47b875b47'),(104,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:18:57','2019-12-04 20:18:57',NULL,'b03fafb2-af02-4c35-944a-f8cb5c4e40ed'),(105,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:18:57','2019-12-04 20:18:57',NULL,'70de9e1c-2ce7-4eba-9df2-31e3465b29a0'),(106,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:18:57','2019-12-04 20:18:57',NULL,'d0c0adcb-8b95-4137-b702-e5bea04e8d2f'),(107,NULL,NULL,NULL,'craft\\elements\\Asset',1,0,'2019-12-04 20:28:00','2019-12-04 21:00:16',NULL,'efc576ec-187d-4306-ad6c-353307565776'),(108,NULL,44,6,'craft\\elements\\Entry',1,0,'2019-12-04 20:28:07','2019-12-04 20:28:07',NULL,'44129bea-c2d6-4744-8838-d0303bd22592'),(109,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:28:08','2019-12-04 20:28:07',NULL,'744a3eb8-b500-407e-baac-8183d8a6f794'),(110,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:28:08','2019-12-04 20:28:07',NULL,'fdaacfe5-be23-4098-80b0-d1bba9cab3fb'),(111,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:28:08','2019-12-04 20:28:07',NULL,'e6e9ce2b-64b0-43df-8682-a759807e11cf'),(112,NULL,45,6,'craft\\elements\\Entry',1,0,'2019-12-04 20:30:35','2019-12-04 20:30:35',NULL,'8c5ac641-3c4f-4123-baa3-46d46c9e407b'),(113,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:30:35','2019-12-04 20:30:35',NULL,'7cf3b31d-ab72-4853-86af-acd9ee340e8e'),(114,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:30:35','2019-12-04 20:30:35',NULL,'edad3682-09ee-4baa-ae39-e180fcaa8c34'),(115,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:30:36','2019-12-04 20:30:35',NULL,'22bd8f56-a253-4a26-8200-f9cd0c003693'),(116,NULL,46,6,'craft\\elements\\Entry',1,0,'2019-12-04 20:45:54','2019-12-04 20:45:54',NULL,'fda527b7-481c-4801-837d-8dba3f171d9d'),(117,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:45:54','2019-12-04 20:45:54',NULL,'f0140da6-ccfc-44e1-b697-2e28287ed014'),(118,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:45:54','2019-12-04 20:45:54',NULL,'d880eed2-b5ae-4aec-a701-815e75c0e399'),(119,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:45:54','2019-12-04 20:45:54',NULL,'a9591499-e455-4a42-95b4-c7a05fbcab2a'),(120,NULL,NULL,NULL,'craft\\elements\\Asset',1,0,'2019-12-04 20:50:07','2019-12-04 20:50:07','2019-12-04 20:50:11','2e9c552d-c7f3-4d8b-a642-24c8097333cc'),(121,NULL,47,6,'craft\\elements\\Entry',1,0,'2019-12-04 20:50:15','2019-12-04 20:50:15',NULL,'3d857972-d84d-4c4a-a2de-4f189754554e'),(122,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:50:15','2019-12-04 20:50:15',NULL,'2e350e99-874b-4d46-82da-e7eada903804'),(123,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:50:15','2019-12-04 20:50:15',NULL,'b1647d61-0fec-442b-bc06-5fe34369c53d'),(124,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 20:50:15','2019-12-04 20:50:15',NULL,'cedc5d9a-8ab6-4020-85b0-dd65935de7ba'),(125,NULL,NULL,NULL,'craft\\elements\\Asset',1,0,'2019-12-04 21:00:12','2019-12-04 21:00:12','2019-12-04 21:00:16','10ab9e80-2226-420c-ad50-0c81eae5bade'),(126,NULL,48,6,'craft\\elements\\Entry',1,0,'2019-12-04 21:00:19','2019-12-04 21:00:19',NULL,'c96ea5ef-5ee6-4384-801d-d36dcc58cc3d'),(127,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:00:19','2019-12-04 21:00:19',NULL,'fa8c78e5-5b0f-4b06-bc7d-21d257031eb6'),(128,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:00:19','2019-12-04 21:00:19',NULL,'f56d84b2-3aff-4d8d-a4f7-9dcd96de8475'),(129,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:00:19','2019-12-04 21:00:19',NULL,'aa854410-4fa0-40df-ab32-7d1d994ddf77'),(130,NULL,NULL,NULL,'craft\\elements\\Asset',1,0,'2019-12-04 21:08:45','2019-12-04 21:08:45',NULL,'30b58cb9-068c-4099-8ab7-00c02f9d8a8e'),(131,NULL,49,6,'craft\\elements\\Entry',1,0,'2019-12-04 21:08:49','2019-12-04 21:08:49',NULL,'1e808820-f468-4f40-b008-26f46f2add7c'),(132,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:08:49','2019-12-04 21:08:49',NULL,'ff78b1fb-151d-4c97-9afb-aaefc609b037'),(133,NULL,NULL,1,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:08:49','2019-12-04 21:08:49',NULL,'ea144257-db0a-494c-90ee-fee09e8e1747'),(134,NULL,NULL,9,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:08:49','2019-12-04 21:08:49',NULL,'a1b04dfb-bab0-4110-8773-1f67c873d97c'),(135,NULL,NULL,NULL,'craft\\elements\\Asset',1,0,'2019-12-04 21:17:08','2019-12-04 21:20:47',NULL,'b6f9c504-cc38-490b-90cf-f390a8e43175'),(136,NULL,50,7,'craft\\elements\\Entry',1,0,'2019-12-04 21:17:12','2019-12-04 21:17:12',NULL,'f084b3c7-dda3-4060-8758-d6a96619db40'),(137,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:17:12','2019-12-04 21:17:12',NULL,'f675c8d7-22fa-46d6-9291-99f54af4db5a'),(138,NULL,51,7,'craft\\elements\\Entry',1,0,'2019-12-04 21:17:49','2019-12-04 21:17:49',NULL,'65340f21-6b91-4089-a5a3-d074996003aa'),(139,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:17:49','2019-12-04 21:17:49',NULL,'767d7587-5766-433e-a6bd-2017129ce3f7'),(140,NULL,NULL,NULL,'craft\\elements\\Asset',1,0,'2019-12-04 21:20:44','2019-12-04 21:20:44','2019-12-04 21:20:48','8b7b241b-d450-4c4c-92a3-5140256502b0'),(141,NULL,52,7,'craft\\elements\\Entry',1,0,'2019-12-04 21:20:50','2019-12-04 21:20:50',NULL,'86817b7b-35a5-4ac5-bf36-d443a55fa642'),(142,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:20:50','2019-12-04 21:20:50',NULL,'abcbbb2c-1029-4613-ba52-209b3e362098'),(143,NULL,NULL,NULL,'craft\\elements\\Asset',1,0,'2019-12-04 21:25:06','2019-12-04 21:25:06',NULL,'1983adbb-69b7-433e-8f93-d73bc290ce12'),(144,NULL,53,8,'craft\\elements\\Entry',1,0,'2019-12-04 21:25:10','2019-12-04 21:25:10',NULL,'f56f2a4e-9824-48fc-aa6a-5790d3114d31'),(145,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:25:10','2019-12-04 21:25:10',NULL,'940b587d-8235-4bf2-b78c-9ed6af1504bb'),(146,NULL,54,8,'craft\\elements\\Entry',1,0,'2019-12-04 21:34:08','2019-12-04 21:34:08',NULL,'c617e50d-7efc-4ac9-b5ef-831024356f46'),(147,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:34:09','2019-12-04 21:34:09',NULL,'4e9868ee-bdb4-417a-a9fe-6cedbb32cecf'),(148,NULL,55,8,'craft\\elements\\Entry',1,0,'2019-12-04 21:34:17','2019-12-04 21:34:17',NULL,'d65cf021-1859-40d2-8554-f9dfb00f2165'),(149,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:34:17','2019-12-04 21:34:17',NULL,'2b3e17cc-4759-42ce-a4ea-7f822c2db869'),(150,NULL,56,8,'craft\\elements\\Entry',1,0,'2019-12-04 21:34:34','2019-12-04 21:34:34',NULL,'b469b522-d646-4373-98c7-c94beca0fc72'),(151,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-04 21:34:34','2019-12-04 21:34:34',NULL,'2f4ffb29-0436-47e2-b185-cc8e9c81b4cd'),(152,NULL,57,7,'craft\\elements\\Entry',1,0,'2019-12-05 00:37:13','2019-12-05 00:37:13',NULL,'de4bac45-24e6-4d04-97d4-9c6b5fec7900'),(153,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-05 00:37:13','2019-12-05 00:37:13',NULL,'2467ed11-8cb9-4842-bf0d-4d9ad2967cd0'),(154,NULL,58,8,'craft\\elements\\Entry',1,0,'2019-12-05 00:37:17','2019-12-05 00:37:17',NULL,'38c106e7-816e-491d-bf7d-1fa73afb21c5'),(155,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-05 00:37:17','2019-12-05 00:37:17',NULL,'807a84d5-0cd4-42db-b0fa-b3a735ce6111'),(156,NULL,NULL,16,'craft\\elements\\GlobalSet',1,0,'2019-12-05 00:38:20','2019-12-05 00:38:57',NULL,'1edefc3b-f27f-4a43-85c8-e94098d20840'),(157,NULL,59,8,'craft\\elements\\Entry',1,0,'2019-12-05 00:39:38','2019-12-05 00:39:38',NULL,'a0c496f4-1b87-4dcf-aaed-371b8a07dd6f'),(158,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2019-12-05 00:39:38','2019-12-05 00:39:38',NULL,'74bb4d3a-8ed0-4715-9d38-39def1989f39');
/*!40000 ALTER TABLE `craft_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_elements_sites`
--

DROP TABLE IF EXISTS `craft_elements_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elements_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_elements_sites_siteId_idx` (`siteId`),
  KEY `craft_elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  KEY `craft_elements_sites_enabled_idx` (`enabled`),
  KEY `craft_elements_sites_uri_siteId_idx` (`uri`,`siteId`),
  CONSTRAINT `craft_elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elements_sites`
--

LOCK TABLES `craft_elements_sites` WRITE;
/*!40000 ALTER TABLE `craft_elements_sites` DISABLE KEYS */;
INSERT INTO `craft_elements_sites` VALUES (1,1,1,NULL,NULL,1,'2019-11-16 18:40:28','2019-11-16 18:40:28','d716b5b3-94d6-4f16-814e-17d740e38d12'),(2,2,1,'home-page','__home__',1,'2019-11-23 17:00:31','2019-11-23 17:00:31','def29937-6043-4d92-aff2-5866062d6bf9'),(3,3,1,'home-page','__home__',1,'2019-11-23 17:00:31','2019-11-23 17:00:31','43558d0d-f353-46de-96be-93eac7692bf9'),(4,4,1,'about','about',1,'2019-11-23 17:07:16','2019-11-23 22:53:04','c896eea4-71a0-4837-b6b8-17893d44cb2a'),(5,5,1,'about-page','about',1,'2019-11-23 17:07:16','2019-11-23 17:07:16','42472f27-0cae-4c94-aa9b-83a079547705'),(6,6,1,'get-involved','get-in-touch',1,'2019-11-23 17:07:59','2019-12-05 00:39:38','88c98422-f24d-4b92-8d37-19711dad823a'),(7,7,1,'get-involved','get-involved',1,'2019-11-23 17:07:59','2019-11-23 17:07:59','b5d1b4d9-875d-40f6-90e8-37ed513e893c'),(8,8,1,NULL,NULL,1,'2019-11-23 18:23:43','2019-11-23 18:23:43','529b9cb9-577c-4acf-ad4d-7f90b8ceb2bc'),(9,9,1,NULL,NULL,1,'2019-11-23 18:37:41','2019-11-23 18:37:41','fa89075a-69cf-4323-8d64-ec783e38f843'),(10,10,1,NULL,NULL,1,'2019-11-23 18:38:06','2019-11-23 18:38:06','938047c8-7052-40e0-9d94-f0158713d2a1'),(11,11,1,'404-page','404-page',1,'2019-11-23 18:53:39','2019-11-23 18:53:39','2ae12425-d2cc-4ab8-adbb-058e261b29ea'),(12,12,1,'404-page','404-page',1,'2019-11-23 18:53:39','2019-11-23 18:53:39','6e692bb1-c3f8-4262-abb6-d1eb5fa29e1f'),(13,13,1,'404-page','404-page',1,'2019-11-23 18:54:05','2019-11-23 18:54:05','3e2456dd-6284-40b5-a153-a7e77ee35f32'),(14,14,1,'404-page','404-page',1,'2019-11-23 18:54:34','2019-11-23 18:54:34','767a1540-10c7-4171-8c3b-d64a9d4aee94'),(15,15,1,'home-page','__home__',1,'2019-11-23 20:21:15','2019-11-23 20:21:15','d29de125-91af-4e5d-93e0-32e6d2a5bc81'),(16,16,1,NULL,NULL,1,'2019-11-23 20:23:41','2019-11-23 20:23:41','d73bab82-72be-4075-9d31-b4bb61acecde'),(17,17,1,NULL,NULL,1,'2019-11-23 20:24:29','2019-11-23 20:24:29','a8a9066c-21f5-48df-8871-59d29833d557'),(18,18,1,NULL,NULL,1,'2019-11-23 20:25:01','2019-11-23 20:25:01','9d914eda-a651-4ee5-a662-a35fe42b070c'),(19,19,1,NULL,NULL,1,'2019-11-23 20:25:01','2019-11-23 20:25:01','5b5cc2e3-25e6-4dd7-a474-e35fb63eeed9'),(20,20,1,'home-page','__home__',1,'2019-11-23 20:25:01','2019-11-23 20:25:01','a66a0fe9-5fea-428a-be10-42abf1f0ea14'),(21,21,1,NULL,NULL,1,'2019-11-23 20:25:01','2019-11-23 20:25:01','0eb78868-1136-4c4c-ad81-9cd6ec21f19d'),(22,22,1,NULL,NULL,1,'2019-11-23 20:25:01','2019-11-23 20:25:01','d8a03451-d9f3-4a3e-a72c-2413037f18c0'),(23,23,1,'home-page','__home__',1,'2019-11-23 20:54:33','2019-11-23 20:54:33','9653f55a-f9c4-4804-947b-94753c00e61e'),(24,24,1,NULL,NULL,1,'2019-11-23 20:54:33','2019-11-23 20:54:33','9cc15de7-7f07-40c5-bdf1-f17ad8735345'),(25,25,1,NULL,NULL,1,'2019-11-23 20:54:33','2019-11-23 20:54:33','a2c8aa50-5656-44a8-9ece-3c23e26da9a5'),(26,26,1,'about-page','about',1,'2019-11-23 22:38:17','2019-11-23 22:38:17','bf43c99e-49d1-4a29-82b1-aad357cd17d3'),(27,27,1,'get-involved','get-involved',1,'2019-11-23 22:38:24','2019-11-23 22:38:24','e8a3bca8-7c72-483f-80e3-c6b6176573ed'),(28,28,1,'about-page','about',1,'2019-11-23 22:39:19','2019-11-23 22:39:19','c0e0850e-c1f4-4b22-82f6-b732e5dcc102'),(29,29,1,'about-page','about',1,'2019-11-23 22:49:55','2019-11-23 22:49:55','f13051e2-938b-443d-b3ea-241bdc08a53c'),(30,30,1,'about-page','about',1,'2019-11-23 22:51:44','2019-11-23 22:51:44','4a27e038-ed52-4ddf-b06b-f801e86ea2be'),(31,31,1,'about-page','about',1,'2019-11-23 22:51:59','2019-11-23 22:51:59','2c6e08c3-df1c-4b8c-998b-fbfbab8e9c49'),(32,32,1,'about','about',1,'2019-11-23 22:53:05','2019-11-23 22:53:05','bddbcdb8-4d23-4aed-b554-168760f4d4ff'),(33,33,1,'about','about',1,'2019-11-23 22:53:15','2019-11-23 22:53:15','e21fd9eb-fb11-47d7-a38e-56941c775c28'),(34,34,1,'home-page','__home__',1,'2019-12-01 00:04:11','2019-12-01 00:04:11','90966060-f4c7-4b19-bac3-d432e59ae448'),(35,35,1,NULL,NULL,1,'2019-12-01 00:04:11','2019-12-01 00:04:11','78216bfc-1cb5-49dc-a77f-2a5436e7174f'),(36,36,1,NULL,NULL,1,'2019-12-01 00:04:11','2019-12-01 00:04:11','d064fda2-1135-4174-b7f1-59aaa271ac82'),(37,37,1,NULL,NULL,1,'2019-12-01 00:09:14','2019-12-01 00:09:14','fc8a8f61-dd2d-4d0a-a1bc-9363f06b8542'),(38,38,1,'home-page','__home__',1,'2019-12-01 00:09:15','2019-12-01 00:09:15','5c01179f-3000-4b4f-bd49-a909f8adf81a'),(39,39,1,NULL,NULL,1,'2019-12-01 00:09:15','2019-12-01 00:09:15','e00998d5-4b39-40d5-a44d-a35232820d0e'),(40,40,1,NULL,NULL,1,'2019-12-01 00:09:15','2019-12-01 00:09:15','30cec156-090e-4dcc-8b14-7323d0cf525d'),(41,41,1,NULL,NULL,1,'2019-12-01 00:09:15','2019-12-01 00:09:15','15d8da62-5f39-46bb-9ceb-f34907780dda'),(42,42,1,'home-page','__home__',1,'2019-12-01 00:13:23','2019-12-01 00:13:23','237d3ac3-bac3-4e6e-a3e4-82aabaa63035'),(43,43,1,NULL,NULL,1,'2019-12-01 00:13:23','2019-12-01 00:13:23','669bccba-3079-474b-959d-b9013ea47b5c'),(44,44,1,NULL,NULL,1,'2019-12-01 00:13:23','2019-12-01 00:13:23','c7a3cdb5-41c3-4699-8dd9-7af1bcc8fff9'),(45,45,1,NULL,NULL,1,'2019-12-01 00:13:23','2019-12-01 00:13:23','710484fb-1890-4162-9efa-4ba0f4b175b9'),(46,46,1,'home-page','__home__',1,'2019-12-01 00:14:59','2019-12-01 00:14:59','40df984d-becb-4e10-8fda-5c8a0f14bfa1'),(47,47,1,NULL,NULL,1,'2019-12-01 00:14:59','2019-12-01 00:14:59','e3c04d4c-d65f-43bb-852f-06ef5897cc34'),(48,48,1,NULL,NULL,1,'2019-12-01 00:14:59','2019-12-01 00:14:59','21d271b8-1e32-44da-ad1d-8a95e9ce50fc'),(49,49,1,NULL,NULL,1,'2019-12-01 00:14:59','2019-12-01 00:14:59','c6bf2db0-1185-44b9-86c1-ae118bb70fec'),(50,50,1,'about','about',1,'2019-12-01 00:44:38','2019-12-01 00:44:38','efbaa77e-eff6-4601-98c3-233cf7ad969e'),(51,51,1,'about','about',1,'2019-12-01 00:44:38','2019-12-01 00:44:38','32a890a1-0a2d-4a87-926f-63b362ac95db'),(52,52,1,'get-involved','get-involved',1,'2019-12-01 00:44:49','2019-12-01 00:44:49','8e6e7ebf-25e0-4742-9c72-7b8a3e920fa7'),(53,53,1,NULL,NULL,1,'2019-12-01 00:48:13','2019-12-01 00:48:13','fbc8e244-7d51-4419-b10f-f07b0e09132e'),(54,54,1,'about','about',1,'2019-12-01 00:48:14','2019-12-01 00:48:14','2d5938fd-892c-4ac9-a79b-0651535f82f6'),(55,55,1,NULL,NULL,1,'2019-12-01 00:48:14','2019-12-01 00:48:14','c4247b7f-2afb-4aaa-a75b-4430a8b75d26'),(56,56,1,'about','about',1,'2019-12-01 00:52:47','2019-12-01 00:52:47','2c3fe143-8c0a-4be9-9531-6b34d0f8fb88'),(57,57,1,NULL,NULL,1,'2019-12-01 00:52:47','2019-12-01 00:52:47','4b492b01-a0a5-4cf0-995c-43864e03fd8b'),(58,58,1,'about','about',1,'2019-12-01 00:52:48','2019-12-01 00:52:48','72557c3d-6308-40fd-ad51-637ef97aaf42'),(59,59,1,NULL,NULL,1,'2019-12-01 00:52:48','2019-12-01 00:52:48','4c8fc078-c520-4e74-a590-2c5eb30c50e4'),(60,60,1,'get-involved','get-involved',1,'2019-12-01 00:52:58','2019-12-01 00:52:58','edaad49b-6d64-400d-99f3-e2e18566a353'),(61,61,1,'home-page','__home__',1,'2019-12-01 19:11:21','2019-12-01 19:11:21','b9f7201f-86b8-4d02-a7e7-844d0e39da20'),(62,62,1,NULL,NULL,1,'2019-12-01 19:11:22','2019-12-01 19:11:22','63008017-ccf7-4fdf-ad71-2dd32919fa25'),(63,63,1,NULL,NULL,1,'2019-12-01 19:11:22','2019-12-01 19:11:22','f310cf01-e3c1-4b1e-bef8-b19e4ff5699d'),(64,64,1,NULL,NULL,1,'2019-12-01 19:11:22','2019-12-01 19:11:22','05d2e53d-c7f5-48a1-9541-15599a270b8a'),(65,65,1,'home-page','__home__',1,'2019-12-04 03:38:47','2019-12-04 03:38:47','ebb8c209-6649-44c8-90bf-ac9318e1530f'),(66,66,1,NULL,NULL,1,'2019-12-04 03:38:47','2019-12-04 03:38:47','5e1bd176-18dc-40d0-bd82-84d280b325ff'),(67,67,1,NULL,NULL,1,'2019-12-04 03:38:48','2019-12-04 03:38:48','70e0d441-6fbb-4c60-ac84-1dcaee1f9a71'),(68,68,1,NULL,NULL,1,'2019-12-04 03:38:48','2019-12-04 03:38:48','2f4127f3-4f4c-4656-b9e9-164089420f5c'),(71,71,1,NULL,NULL,1,'2019-12-04 20:03:31','2019-12-04 20:03:31','f65958cf-05a9-440c-8574-99f6d6c20f81'),(72,72,1,'about','about',1,'2019-12-04 20:03:31','2019-12-04 20:03:31','be5e4072-7d84-4752-b912-492178e1696a'),(73,73,1,NULL,NULL,1,'2019-12-04 20:03:31','2019-12-04 20:03:31','4501e0b9-874e-4322-bf0e-09da69ab5a70'),(74,74,1,'home-page','__home__',1,'2019-12-04 20:09:38','2019-12-04 20:09:38','72e47ed7-cfc2-4b90-8dec-4da485f1bf56'),(75,75,1,NULL,NULL,1,'2019-12-04 20:09:38','2019-12-04 20:09:38','102a317c-78c7-46aa-8f03-da4f4d0e3af0'),(76,76,1,NULL,NULL,1,'2019-12-04 20:09:38','2019-12-04 20:09:38','5be62054-2df0-4c11-b80f-6b0126eb4396'),(77,77,1,NULL,NULL,1,'2019-12-04 20:09:38','2019-12-04 20:09:38','23d7fb7d-945b-479a-8a8a-b5e6a53363ae'),(78,78,1,'home-page','__home__',1,'2019-12-04 20:10:15','2019-12-04 20:10:15','00ebab5c-eae9-44a3-b8bd-83111f0ed91d'),(79,79,1,NULL,NULL,1,'2019-12-04 20:10:15','2019-12-04 20:10:15','71252c99-3d38-4e73-9175-4004e7355d75'),(80,80,1,NULL,NULL,1,'2019-12-04 20:10:15','2019-12-04 20:10:15','e7ea9757-2fcf-4175-af97-4843afcdf7b9'),(81,81,1,NULL,NULL,1,'2019-12-04 20:10:15','2019-12-04 20:10:15','9ba59a0e-2928-47d4-a4c7-d1e3772ae76b'),(82,82,1,'about','about',1,'2019-12-04 20:12:28','2019-12-04 20:12:28','22dcceaa-7c7d-48ce-adee-4119343f5565'),(83,83,1,NULL,NULL,1,'2019-12-04 20:12:28','2019-12-04 20:12:28','1f1565af-5884-4a6e-838e-990ea1ef2828'),(84,84,1,'about','about',1,'2019-12-04 20:12:54','2019-12-04 20:12:54','bdc9c44f-c83d-49d5-9f27-3d9d82c43650'),(85,85,1,NULL,NULL,1,'2019-12-04 20:12:54','2019-12-04 20:12:54','93d7feb0-5d73-4167-a578-a332b40ba0d1'),(86,86,1,NULL,NULL,1,'2019-12-04 20:14:55','2019-12-04 20:14:55','5fbf93a8-0212-459b-b951-ff4b7e97a486'),(87,87,1,'get-involved','get-involved',1,'2019-12-04 20:14:55','2019-12-04 20:14:55','2904bb8d-eb74-49ec-adea-88f3c2ded0c4'),(88,88,1,NULL,NULL,1,'2019-12-04 20:14:55','2019-12-04 20:14:55','1538c557-b1f3-45e0-b6f5-93497c87e1d2'),(89,89,1,'get-involved','get-involved',1,'2019-12-04 20:15:27','2019-12-04 20:15:27','e9df9d96-d494-45fe-b9d9-7734d052546c'),(90,90,1,NULL,NULL,1,'2019-12-04 20:15:27','2019-12-04 20:15:27','57dc514c-44d0-4e2b-a9bf-81b56c8285bb'),(91,91,1,'get-involved','get-involved',1,'2019-12-04 20:15:40','2019-12-04 20:15:40','2ba28eac-23ce-4966-936a-eae345a3a9e2'),(92,92,1,NULL,NULL,1,'2019-12-04 20:15:40','2019-12-04 20:15:40','ad0ac2f7-4761-43d5-9add-2aedde5f720e'),(93,93,1,'get-involved','get-involved',1,'2019-12-04 20:15:54','2019-12-04 20:15:54','6bc3034c-cdb5-4b82-801f-f61226b396ba'),(94,94,1,NULL,NULL,1,'2019-12-04 20:15:54','2019-12-04 20:15:54','aa94ccf9-a9f5-49ca-a43f-b87597241312'),(95,95,1,'get-involved','get-involved',1,'2019-12-04 20:16:00','2019-12-04 20:16:00','16dd34a4-5032-4da1-ba09-84ee7a269997'),(96,96,1,NULL,NULL,1,'2019-12-04 20:16:00','2019-12-04 20:16:00','ecf7818d-fbdc-45a4-a73c-80432511140d'),(97,97,1,'get-involved','get-involved',1,'2019-12-04 20:16:10','2019-12-04 20:16:10','c1643b61-261b-475f-b011-6f0b6bdfd37b'),(98,98,1,NULL,NULL,1,'2019-12-04 20:16:10','2019-12-04 20:16:10','63c781a5-954d-4b96-bd03-29aef527c7d0'),(99,99,1,'home-page','__home__',1,'2019-12-04 20:18:01','2019-12-04 20:18:01','282c6732-b07a-4d10-9c01-ea0324ee3f7c'),(100,100,1,NULL,NULL,1,'2019-12-04 20:18:01','2019-12-04 20:18:01','1b56e5a9-944d-438c-99f2-1bcd12e31f1f'),(101,101,1,NULL,NULL,1,'2019-12-04 20:18:01','2019-12-04 20:18:01','cd66e644-8703-4736-b442-5f4739841b77'),(102,102,1,NULL,NULL,1,'2019-12-04 20:18:01','2019-12-04 20:18:01','04c629f9-3afa-4166-8915-46e435932129'),(103,103,1,'home-page','__home__',1,'2019-12-04 20:18:57','2019-12-04 20:18:57','cf59340f-7e44-499e-a4fb-a2595ddc5ece'),(104,104,1,NULL,NULL,1,'2019-12-04 20:18:57','2019-12-04 20:18:57','b9b8cd95-eeff-4ce8-8b91-ec49fd59fa9f'),(105,105,1,NULL,NULL,1,'2019-12-04 20:18:57','2019-12-04 20:18:57','c04195d5-c911-4a56-b8b3-411892e016a8'),(106,106,1,NULL,NULL,1,'2019-12-04 20:18:57','2019-12-04 20:18:57','8439c27f-08b0-4ab9-9ccb-9cfa0ece2245'),(107,107,1,NULL,NULL,1,'2019-12-04 20:28:00','2019-12-04 20:28:00','ea644088-5789-49d7-918b-894716eab8e7'),(108,108,1,'home-page','__home__',1,'2019-12-04 20:28:08','2019-12-04 20:28:08','d9cf6d52-4d6e-4fb7-b5a9-208a4f1055b8'),(109,109,1,NULL,NULL,1,'2019-12-04 20:28:08','2019-12-04 20:28:08','6d106e2f-b53f-4a20-b86a-e264e8167828'),(110,110,1,NULL,NULL,1,'2019-12-04 20:28:08','2019-12-04 20:28:08','b182fb09-25b0-43ab-b484-49552dc5d147'),(111,111,1,NULL,NULL,1,'2019-12-04 20:28:08','2019-12-04 20:28:08','c1dbe680-046f-4e19-8e2a-3e1128d99778'),(112,112,1,'home-page','__home__',1,'2019-12-04 20:30:35','2019-12-04 20:30:35','adcb77dc-8d77-4bf3-8ae0-9f5c68ac1e55'),(113,113,1,NULL,NULL,1,'2019-12-04 20:30:35','2019-12-04 20:30:35','3e7f384d-c321-475d-a838-601c1f8c3fe8'),(114,114,1,NULL,NULL,1,'2019-12-04 20:30:35','2019-12-04 20:30:35','48a87778-1e59-4d12-b93d-e0b4b471ce11'),(115,115,1,NULL,NULL,1,'2019-12-04 20:30:36','2019-12-04 20:30:36','a4bc415c-ffc3-4bce-bfb1-3a334ac44380'),(116,116,1,'home-page','__home__',1,'2019-12-04 20:45:54','2019-12-04 20:45:54','cd26c9e7-8cbd-49f5-afcd-f69f0e49e944'),(117,117,1,NULL,NULL,1,'2019-12-04 20:45:54','2019-12-04 20:45:54','947e3fef-207f-40d0-b369-b646545e604e'),(118,118,1,NULL,NULL,1,'2019-12-04 20:45:54','2019-12-04 20:45:54','9e58ce7f-aca9-4ceb-9155-00cc899e9ab0'),(119,119,1,NULL,NULL,1,'2019-12-04 20:45:54','2019-12-04 20:45:54','d48100ce-30bc-4489-b12a-1ab187868a07'),(120,120,1,NULL,NULL,1,'2019-12-04 20:50:07','2019-12-04 20:50:07','30a4bb55-5fa9-4cc2-8741-df7f70fdc847'),(121,121,1,'home-page','__home__',1,'2019-12-04 20:50:15','2019-12-04 20:50:15','f0529cb8-327b-4672-bc0d-30894a9e649d'),(122,122,1,NULL,NULL,1,'2019-12-04 20:50:15','2019-12-04 20:50:15','b38e5415-0f9a-44d7-8c2a-3b156bdf4ccd'),(123,123,1,NULL,NULL,1,'2019-12-04 20:50:15','2019-12-04 20:50:15','20d23e80-63cf-4af4-b1bd-41c52a04fc4c'),(124,124,1,NULL,NULL,1,'2019-12-04 20:50:15','2019-12-04 20:50:15','691a30be-bcec-45c6-bda6-6e39b3947842'),(125,125,1,NULL,NULL,1,'2019-12-04 21:00:12','2019-12-04 21:00:12','900f1d57-8a4d-4aea-bb3f-1d8c8875de68'),(126,126,1,'home-page','__home__',1,'2019-12-04 21:00:19','2019-12-04 21:00:19','85d44c3d-2539-4ff8-b92d-a33b1c9dc9ad'),(127,127,1,NULL,NULL,1,'2019-12-04 21:00:19','2019-12-04 21:00:19','ca424af7-35c9-4120-b61a-b62f6ccc27bb'),(128,128,1,NULL,NULL,1,'2019-12-04 21:00:19','2019-12-04 21:00:19','c2df982e-8be4-4e1b-8860-11848b1a0349'),(129,129,1,NULL,NULL,1,'2019-12-04 21:00:19','2019-12-04 21:00:19','44e853a5-1840-407e-91bb-07ce6509eebb'),(130,130,1,NULL,NULL,1,'2019-12-04 21:08:45','2019-12-04 21:08:45','f67be05e-47cf-4343-b4e2-d04bff7a59f2'),(131,131,1,'home-page','__home__',1,'2019-12-04 21:08:49','2019-12-04 21:08:49','c02aef2d-fa3c-4fef-8a64-5e08a2a7dec2'),(132,132,1,NULL,NULL,1,'2019-12-04 21:08:49','2019-12-04 21:08:49','f9abf69e-6cff-4db0-bab2-4ff895e0ee83'),(133,133,1,NULL,NULL,1,'2019-12-04 21:08:49','2019-12-04 21:08:49','d607d63b-bcc8-4e33-ad9a-950be5da028f'),(134,134,1,NULL,NULL,1,'2019-12-04 21:08:49','2019-12-04 21:08:49','18434341-521a-4211-a6ea-3ca57f18d1af'),(135,135,1,NULL,NULL,1,'2019-12-04 21:17:08','2019-12-04 21:17:08','1ccfc9a6-9c15-402a-b92f-229e80b68920'),(136,136,1,'about','about',1,'2019-12-04 21:17:12','2019-12-04 21:17:12','f945307b-8415-417f-b8e5-24a1cf5bc86c'),(137,137,1,NULL,NULL,1,'2019-12-04 21:17:12','2019-12-04 21:17:12','a4cfb106-19be-4842-8c6c-06b60a53d47f'),(138,138,1,'about','about',1,'2019-12-04 21:17:49','2019-12-04 21:17:49','4148dd0a-7fc7-44ca-a9f3-8aae5657a6c5'),(139,139,1,NULL,NULL,1,'2019-12-04 21:17:49','2019-12-04 21:17:49','58317299-78a3-4d44-9834-610f5f0cbef3'),(140,140,1,NULL,NULL,1,'2019-12-04 21:20:44','2019-12-04 21:20:44','a8d0bf3b-2c48-4838-8aa8-157072bbe769'),(141,141,1,'about','about',1,'2019-12-04 21:20:50','2019-12-04 21:20:50','cef8f8e2-a167-484d-bd84-cd47e7eea83c'),(142,142,1,NULL,NULL,1,'2019-12-04 21:20:50','2019-12-04 21:20:50','1c996acd-9350-4e98-b30c-c1135296f3b8'),(143,143,1,NULL,NULL,1,'2019-12-04 21:25:06','2019-12-04 21:25:06','12c41ec8-b647-40cb-bbf1-aa918ccd991f'),(144,144,1,'get-involved','get-involved',1,'2019-12-04 21:25:10','2019-12-04 21:25:10','a8dcf9f3-e136-4423-8dbc-2fa4614749c5'),(145,145,1,NULL,NULL,1,'2019-12-04 21:25:10','2019-12-04 21:25:10','26224364-8460-488d-9f5d-a0f2270ed577'),(146,146,1,'get-involved','get-involved',1,'2019-12-04 21:34:09','2019-12-04 21:34:09','76a9fd05-73ba-4bc7-9df2-0421ec43a4bf'),(147,147,1,NULL,NULL,1,'2019-12-04 21:34:09','2019-12-04 21:34:09','b986ef65-ff7a-44d9-bca3-1d6e4ea3f01b'),(148,148,1,'get-involved','get-involved',1,'2019-12-04 21:34:17','2019-12-04 21:34:17','e6c29377-6cae-4336-a4d7-cdd3a092c534'),(149,149,1,NULL,NULL,1,'2019-12-04 21:34:17','2019-12-04 21:34:17','fc8cba0d-9886-4ba8-90a3-7a349a57bf79'),(150,150,1,'get-involved','get-involved',1,'2019-12-04 21:34:34','2019-12-04 21:34:34','c7455757-ff92-4aa7-b673-864b166e5555'),(151,151,1,NULL,NULL,1,'2019-12-04 21:34:34','2019-12-04 21:34:34','bfad4909-e69e-4ff7-95f2-b368e9b1c29b'),(152,152,1,'about','about',1,'2019-12-05 00:37:13','2019-12-05 00:37:13','6389affa-c684-4b0b-ad0d-3fdabd2ef71b'),(153,153,1,NULL,NULL,1,'2019-12-05 00:37:13','2019-12-05 00:37:13','70d000de-de08-4868-a5c3-647e811541fb'),(154,154,1,'get-involved','get-involved',1,'2019-12-05 00:37:17','2019-12-05 00:37:17','8add8322-97cd-4069-86e9-a767bdba9171'),(155,155,1,NULL,NULL,1,'2019-12-05 00:37:17','2019-12-05 00:37:17','67992c7a-2a00-4212-a46a-160210e0b910'),(156,156,1,NULL,NULL,1,'2019-12-05 00:38:20','2019-12-05 00:38:20','17948c3e-cbe7-4584-8cfd-2317fcdf90fb'),(157,157,1,'get-involved','get-in-touch',1,'2019-12-05 00:39:38','2019-12-05 00:39:38','e6f3be4b-2e2b-4e2a-8c18-f5864c23ed22'),(158,158,1,NULL,NULL,1,'2019-12-05 00:39:38','2019-12-05 00:39:38','8f6dd1f5-834b-4a47-996d-258322ec39fa');
/*!40000 ALTER TABLE `craft_elements_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_entries`
--

DROP TABLE IF EXISTS `craft_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_idx` (`authorId`),
  KEY `craft_entries_sectionId_idx` (`sectionId`),
  KEY `craft_entries_typeId_idx` (`typeId`),
  KEY `craft_entries_parentId_fk` (`parentId`),
  CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_entries` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entries`
--

LOCK TABLES `craft_entries` WRITE;
/*!40000 ALTER TABLE `craft_entries` DISABLE KEYS */;
INSERT INTO `craft_entries` VALUES (2,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-11-23 17:00:31','2019-11-23 17:00:31','f70fe51d-0478-44e3-a4f4-7bc58928c366'),(3,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-11-23 17:00:31','2019-11-23 17:00:31','e1727af3-81c3-4f4d-9656-9d21951212c5'),(4,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 17:07:16','2019-11-23 17:07:16','b3d75fc1-1780-4e97-b6fc-9800b3bf189b'),(5,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 17:07:16','2019-11-23 17:07:16','f36ed60b-cbb4-43e4-a336-aba5c6074d11'),(6,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 17:07:59','2019-11-23 17:07:59','f02ec9fe-23ad-4e7b-9116-abb9d3f9b1f1'),(7,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 17:07:59','2019-11-23 17:07:59','e0a5e615-ab10-448a-a59d-e04a55a28f19'),(11,4,NULL,4,NULL,'2019-11-23 18:53:00',NULL,NULL,'2019-11-23 18:53:39','2019-11-23 18:53:39','9c4d4edc-5d99-4c46-8fed-383b29fdfcd1'),(12,4,NULL,4,NULL,'2019-11-23 18:53:00',NULL,NULL,'2019-11-23 18:53:39','2019-11-23 18:53:39','01dc7659-5016-4fae-a09a-0509af051418'),(13,4,NULL,4,NULL,'2019-11-23 18:53:00',NULL,NULL,'2019-11-23 18:54:05','2019-11-23 18:54:05','2ca10b8c-09d9-4660-869c-366afe1ee71a'),(14,4,NULL,4,NULL,'2019-11-23 18:53:00',NULL,NULL,'2019-11-23 18:54:34','2019-11-23 18:54:34','273da59c-950b-40af-9dfa-8eb3913fde9b'),(15,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-11-23 20:21:15','2019-11-23 20:21:15','58a78778-2b4a-46e8-af72-375ce49d5625'),(20,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-11-23 20:25:01','2019-11-23 20:25:01','9e1622f4-d269-431a-8bae-b05c215a7447'),(23,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-11-23 20:54:33','2019-11-23 20:54:33','63f70912-78d6-46d2-a06c-6c72842f7b32'),(26,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 22:38:17','2019-11-23 22:38:17','cecc6960-d0cb-436d-88ae-a18bab84b9cf'),(27,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 22:38:24','2019-11-23 22:38:24','a48d7ef4-2239-40bb-8e7e-61f3b3ae0006'),(28,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 22:39:19','2019-11-23 22:39:19','a8a520b2-5dda-4a9b-b496-88ef84b065a1'),(29,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 22:49:56','2019-11-23 22:49:56','5562c403-bcad-45c1-95c3-3061496c8815'),(30,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 22:51:44','2019-11-23 22:51:44','6ed01f01-814b-4613-9317-719d503a4be8'),(31,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 22:51:59','2019-11-23 22:51:59','20a4b972-77fe-4a70-9540-2c7db921493c'),(32,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 22:53:05','2019-11-23 22:53:05','9e64ea12-ea9f-44af-8688-3f7654729ca7'),(33,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-11-23 22:53:15','2019-11-23 22:53:15','9e9d6935-72f8-4f29-a54b-3252cc1b5df7'),(34,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-01 00:04:11','2019-12-01 00:04:11','2a13720f-56f0-4ee8-93a9-e3f6b00d7112'),(38,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-01 00:09:15','2019-12-01 00:09:15','717ac43a-f46e-45b4-bcee-857e58c167db'),(42,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-01 00:13:23','2019-12-01 00:13:23','f248a411-20d2-410d-9c6c-b51a39e09bd6'),(46,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-01 00:14:59','2019-12-01 00:14:59','c15a4167-0834-4d06-9e3b-595fb527d8ca'),(50,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-01 00:44:38','2019-12-01 00:44:38','8a6bfc72-ff3e-4236-9d4b-1ab13a2a1fc8'),(51,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-01 00:44:38','2019-12-01 00:44:38','c48aeae4-8caf-417e-b089-413223fd5812'),(52,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-01 00:44:49','2019-12-01 00:44:49','b5cf24eb-5117-4c8c-a095-08825ea9e0e7'),(54,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-01 00:48:14','2019-12-01 00:48:14','cf87e8e4-9593-440f-b594-00706cdc3014'),(56,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-01 00:52:47','2019-12-01 00:52:47','d8817a5c-0997-4f91-a70c-734fb8efbae0'),(58,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-01 00:52:48','2019-12-01 00:52:48','d24ab335-355b-4270-98b8-6f629bb60925'),(60,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-01 00:52:58','2019-12-01 00:52:58','79a88f51-704e-4e82-aff2-8ddfd7f807a7'),(61,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-01 19:11:21','2019-12-01 19:11:21','b4f9b53e-1c6e-4341-8cac-3fc72b97841e'),(65,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 03:38:47','2019-12-04 03:38:47','6faa5d77-d20e-4b1f-9087-18f649b1919f'),(72,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 20:03:31','2019-12-04 20:03:31','d6f444ae-7fe9-419f-b869-89bc2001acee'),(74,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 20:09:38','2019-12-04 20:09:38','41e8ca82-3aff-4cb3-99cc-834c61ab25b5'),(78,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 20:10:15','2019-12-04 20:10:15','d5cf3d04-868f-4e9d-a684-7fb51e525384'),(82,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 20:12:28','2019-12-04 20:12:28','daf112f0-c2f9-4ab0-813e-659f4d69f713'),(84,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 20:12:54','2019-12-04 20:12:54','5ee9afc2-e256-4a1b-a56d-f9dc98ed7f4c'),(87,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 20:14:55','2019-12-04 20:14:55','c790b1ab-4844-448d-8c87-5f7d7a6ae77c'),(89,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 20:15:27','2019-12-04 20:15:27','b5458c82-3776-447d-9dd8-954acf7b1ee3'),(91,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 20:15:40','2019-12-04 20:15:40','58e4141f-6fed-44a8-a222-b98516922926'),(93,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 20:15:54','2019-12-04 20:15:54','2bdaec5a-1af3-4c92-863b-dbfe21b2cce2'),(95,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 20:16:00','2019-12-04 20:16:00','24b18f51-73c9-4fe9-8ffc-a5c4a4728578'),(97,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 20:16:10','2019-12-04 20:16:10','4f96d549-086b-4192-93a2-97cb2238b33d'),(99,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 20:18:01','2019-12-04 20:18:01','bbfa2891-d038-4687-9496-5be468bb5d17'),(103,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 20:18:57','2019-12-04 20:18:57','e3b815e6-9854-4274-bc6b-a73652647e55'),(108,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 20:28:08','2019-12-04 20:28:08','c4c13232-716c-4406-a4c4-55a38366663a'),(112,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 20:30:35','2019-12-04 20:30:35','aaebe3c8-038a-47a2-9dae-871d20d2abe1'),(116,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 20:45:54','2019-12-04 20:45:54','846f7e42-c5d6-42bb-8aec-f70d2f3020f6'),(121,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 20:50:15','2019-12-04 20:50:15','80ec57a0-0386-45cf-b92c-37aee3f3dc45'),(126,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 21:00:19','2019-12-04 21:00:19','2c0cd877-e298-4eb8-9e1b-60f909689c11'),(131,1,NULL,1,NULL,'2019-11-23 17:00:00',NULL,NULL,'2019-12-04 21:08:49','2019-12-04 21:08:49','b2211f10-3817-4977-9b56-348ed94654ff'),(136,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 21:17:12','2019-12-04 21:17:12','1047da11-3956-4d56-8741-461449755304'),(138,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 21:17:49','2019-12-04 21:17:49','e870cc12-48a6-464a-a73b-e1f0586fbcd5'),(141,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 21:20:50','2019-12-04 21:20:50','059d4704-1b91-4715-94bd-32f80b81491a'),(144,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 21:25:10','2019-12-04 21:25:10','abd7a636-2e5a-4160-83cb-67fe91987703'),(146,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 21:34:09','2019-12-04 21:34:09','f55f9d4f-1c62-4a99-8fd0-142dc9178f11'),(148,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 21:34:17','2019-12-04 21:34:17','626b6296-8337-4e12-949b-57895a828693'),(150,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-04 21:34:34','2019-12-04 21:34:34','3f1e7c9b-390f-4e8c-91a1-aa481d71f78c'),(152,2,NULL,2,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-05 00:37:13','2019-12-05 00:37:13','e0f3548c-cefc-4523-9028-fbfdf700d3a7'),(154,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-05 00:37:17','2019-12-05 00:37:17','6193e8c1-8116-45f6-8403-21e005b9b040'),(157,3,NULL,3,NULL,'2019-11-23 17:07:00',NULL,NULL,'2019-12-05 00:39:38','2019-12-05 00:39:38','d2b685d2-c0ae-485c-a0d4-10198060f34a');
/*!40000 ALTER TABLE `craft_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_entrytypes`
--

DROP TABLE IF EXISTS `craft_entrytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) DEFAULT 'Title',
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  KEY `craft_entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_idx` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `craft_entrytypes_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entrytypes`
--

LOCK TABLES `craft_entrytypes` WRITE;
/*!40000 ALTER TABLE `craft_entrytypes` DISABLE KEYS */;
INSERT INTO `craft_entrytypes` VALUES (1,1,6,'Home Page','homePage',0,'','{section.name|raw}',1,'2019-11-23 17:00:31','2019-11-23 20:21:15',NULL,'1fb2e564-996e-4a4d-958e-e493f4ce0c82'),(2,2,7,'About','aboutPage',0,'','{section.name|raw}',1,'2019-11-23 17:07:16','2019-12-05 00:37:13',NULL,'0cf6242f-209a-49bf-86ed-11401f07107f'),(3,3,8,'Get In Touch','getInvolved',0,'','{section.name|raw}',1,'2019-11-23 17:07:59','2019-12-05 00:39:38',NULL,'9f4b8ffa-86f7-4487-b512-dca1c83b17c6'),(4,4,5,'404 Page','fourOhFourPage',0,'','{section.name|raw}',1,'2019-11-23 18:53:39','2019-11-23 18:54:05',NULL,'eec01ffb-1c83-4168-8f7d-291ec9075903');
/*!40000 ALTER TABLE `craft_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_fieldgroups`
--

DROP TABLE IF EXISTS `craft_fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldgroups`
--

LOCK TABLES `craft_fieldgroups` WRITE;
/*!40000 ALTER TABLE `craft_fieldgroups` DISABLE KEYS */;
INSERT INTO `craft_fieldgroups` VALUES (1,'Common','2019-11-16 18:40:28','2019-11-16 18:40:28','43a12f84-7764-4426-8c01-a05e8c6055c5'),(3,'Home','2019-11-23 17:28:43','2019-11-23 17:28:43','f3888fe6-c608-49b6-9ec5-46b91dd0c97d');
/*!40000 ALTER TABLE `craft_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_fieldlayoutfields`
--

DROP TABLE IF EXISTS `craft_fieldlayoutfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_idx` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_idx` (`fieldId`),
  CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

LOCK TABLES `craft_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayoutfields` DISABLE KEYS */;
INSERT INTO `craft_fieldlayoutfields` VALUES (12,2,6,1,0,1,'2019-11-23 18:24:32','2019-11-23 18:24:32','8d97a4b9-d92f-4a27-b168-8f93e6c2d19f'),(14,4,8,1,0,1,'2019-11-23 18:38:06','2019-11-23 18:38:06','e16d2271-fc3a-41a6-a4ab-0358b9199e1b'),(15,3,9,1,0,1,'2019-11-23 18:38:20','2019-11-23 18:38:20','cb48fc33-1942-4d6e-9506-45ba0aa76880'),(16,5,10,1,0,1,'2019-11-23 18:54:05','2019-11-23 18:54:05','db5a2dcf-5afd-45e3-98a0-a07c2df51172'),(17,6,11,3,0,1,'2019-11-23 20:21:15','2019-11-23 20:21:15','79aa08aa-d83a-4906-8419-40fd9910ca79'),(57,10,26,11,1,1,'2019-12-01 00:43:50','2019-12-01 00:43:50','c2c97b30-af81-489f-822c-a44ddf7a9449'),(58,11,27,12,1,1,'2019-12-01 00:43:50','2019-12-01 00:43:50','27c501b3-0269-4bf0-882e-491d241d152f'),(59,11,27,13,0,2,'2019-12-01 00:43:50','2019-12-01 00:43:50','3dc0690b-c321-4dc0-9473-dad3650385a5'),(60,12,28,14,1,1,'2019-12-01 00:43:51','2019-12-01 00:43:51','ccbefa26-19de-4558-88f4-402587e272d4'),(73,1,35,5,0,2,'2019-12-05 00:36:37','2019-12-05 00:36:37','6a605f08-f8e7-46b0-b361-7245a41c1d5a'),(74,1,35,6,0,3,'2019-12-05 00:36:37','2019-12-05 00:36:37','b847098f-e3ed-44e0-aa0c-7469389f09e4'),(75,1,35,4,1,1,'2019-12-05 00:36:37','2019-12-05 00:36:37','c69ddc3c-eb34-4412-8a5a-018d63d5e3a4'),(76,9,36,7,0,2,'2019-12-05 00:36:37','2019-12-05 00:36:37','c1217aed-0dbb-479a-92e6-91780146fdcb'),(77,9,36,8,0,3,'2019-12-05 00:36:37','2019-12-05 00:36:37','f64c5435-e1f6-406c-8113-a351daa441f4'),(78,9,36,9,1,1,'2019-12-05 00:36:37','2019-12-05 00:36:37','3c4d2fa9-a156-41e9-b6f7-2dbcda268a90'),(79,13,37,15,0,3,'2019-12-05 00:36:38','2019-12-05 00:36:38','28e8aa6b-60a4-457d-8edd-0519b51eb6ba'),(80,13,37,16,0,2,'2019-12-05 00:36:38','2019-12-05 00:36:38','1b707043-1ac7-46e9-b3d1-75df9a0229f3'),(81,13,37,17,1,1,'2019-12-05 00:36:38','2019-12-05 00:36:38','8c52a85c-2fe6-46eb-a3dd-2b6223b70df5'),(82,14,38,18,0,2,'2019-12-05 00:36:38','2019-12-05 00:36:38','0e554a0e-997c-42e6-aee9-f1c033edfcca'),(83,14,38,19,1,1,'2019-12-05 00:36:38','2019-12-05 00:36:38','de92b191-402e-4c46-addc-af695a2ba4f4'),(84,14,38,20,0,3,'2019-12-05 00:36:38','2019-12-05 00:36:38','b018baf6-d9cf-42f5-a828-e3e227afa9cc'),(85,15,39,21,0,3,'2019-12-05 00:36:38','2019-12-05 00:36:38','103256ce-2c8a-4afa-8699-4565bd987f5f'),(86,15,39,22,0,2,'2019-12-05 00:36:38','2019-12-05 00:36:38','24a9d1a4-7349-4536-acb5-ae4c874862d6'),(87,15,39,23,1,1,'2019-12-05 00:36:38','2019-12-05 00:36:38','796a77bb-abae-4b52-bbf6-aaaa93d0fca1'),(88,7,40,2,0,2,'2019-12-05 00:37:13','2019-12-05 00:37:13','cfdfb2e0-61f2-4f59-ae41-090534aecfad'),(89,7,40,10,0,3,'2019-12-05 00:37:13','2019-12-05 00:37:13','dde0d9b5-8246-42f6-9ab3-80efc22e08a0'),(90,7,40,24,0,1,'2019-12-05 00:37:13','2019-12-05 00:37:13','8ce2081e-2873-4e58-b76e-5be5bcfaa78f'),(94,16,42,1,0,1,'2019-12-05 00:38:20','2019-12-05 00:38:20','87e6c4a4-ed54-4518-b05e-aaf95a4d46c2'),(95,8,43,2,0,2,'2019-12-05 00:39:38','2019-12-05 00:39:38','441b71a5-c57a-4c8b-9457-ed051d97c157'),(96,8,43,10,0,3,'2019-12-05 00:39:38','2019-12-05 00:39:38','e1c25052-b0a2-4a7b-8320-4005af9d18fb'),(97,8,43,24,0,1,'2019-12-05 00:39:38','2019-12-05 00:39:38','438e6059-436d-4a2e-ae89-c31595a4c027');
/*!40000 ALTER TABLE `craft_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_fieldlayouts`
--

DROP TABLE IF EXISTS `craft_fieldlayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayouts`
--

LOCK TABLES `craft_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouts` DISABLE KEYS */;
INSERT INTO `craft_fieldlayouts` VALUES (1,'craft\\elements\\MatrixBlock','2019-11-23 17:22:48','2019-11-23 17:22:48',NULL,'fea9050b-c01a-42d5-868f-73e79e9f58f9'),(2,'craft\\elements\\GlobalSet','2019-11-23 18:23:43','2019-11-23 18:23:43',NULL,'e764c720-5c68-41b0-a96a-7bd23e0f2fda'),(3,'craft\\elements\\GlobalSet','2019-11-23 18:37:41','2019-11-23 18:37:41',NULL,'6a5dcfed-ca4b-4255-b3c9-b537ce055e30'),(4,'craft\\elements\\GlobalSet','2019-11-23 18:38:06','2019-11-23 18:38:06',NULL,'eba588db-0266-455f-8f97-be8263b16bca'),(5,'craft\\elements\\Entry','2019-11-23 18:54:05','2019-11-23 18:54:05',NULL,'6edc0daf-61c8-4fa1-9816-063b1a41c278'),(6,'craft\\elements\\Entry','2019-11-23 20:21:15','2019-11-23 20:21:15',NULL,'ba9b4241-a630-4dd2-9ca8-ca03af82a53f'),(7,'craft\\elements\\Entry','2019-11-23 22:38:17','2019-11-23 22:38:17',NULL,'32332611-eb5b-4373-acf6-ca94873806ac'),(8,'craft\\elements\\Entry','2019-11-23 22:38:24','2019-11-23 22:38:24',NULL,'24a06b47-f682-44d5-9a23-162c97cc9e0c'),(9,'craft\\elements\\MatrixBlock','2019-12-01 00:06:28','2019-12-01 00:06:28',NULL,'a456deba-0657-46c2-9d1f-e5ec56b445eb'),(10,'craft\\elements\\MatrixBlock','2019-12-01 00:43:50','2019-12-01 00:43:50',NULL,'29818bcb-76c9-48d1-89c1-c8456c0600db'),(11,'craft\\elements\\MatrixBlock','2019-12-01 00:43:50','2019-12-01 00:43:50',NULL,'9bc62277-e47c-456a-8728-b07ed1f01e4f'),(12,'craft\\elements\\MatrixBlock','2019-12-01 00:43:51','2019-12-01 00:43:51',NULL,'e1e17a32-e7ac-4251-bc57-c1542c46d18e'),(13,'craft\\elements\\MatrixBlock','2019-12-05 00:36:38','2019-12-05 00:36:38',NULL,'2797a0ee-0bf9-4f20-a00f-4537d64c93e5'),(14,'craft\\elements\\MatrixBlock','2019-12-05 00:36:38','2019-12-05 00:36:38',NULL,'fdd622cb-31b3-4d7f-abd1-9d8b7f24363d'),(15,'craft\\elements\\MatrixBlock','2019-12-05 00:36:38','2019-12-05 00:36:38',NULL,'f56f471d-951c-4347-8f19-4bbf1bb53421'),(16,'craft\\elements\\GlobalSet','2019-12-05 00:38:20','2019-12-05 00:38:20',NULL,'44131e2d-c2bf-44d9-83fe-6386212e7fce');
/*!40000 ALTER TABLE `craft_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_fieldlayouttabs`
--

DROP TABLE IF EXISTS `craft_fieldlayouttabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_idx` (`layoutId`),
  CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

LOCK TABLES `craft_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouttabs` DISABLE KEYS */;
INSERT INTO `craft_fieldlayouttabs` VALUES (6,2,'Copy',1,'2019-11-23 18:24:32','2019-11-23 18:24:32','c98ff30e-93bf-4aca-85c7-cabaded76d17'),(8,4,'Handle',1,'2019-11-23 18:38:06','2019-11-23 18:38:06','cae6baa0-1c02-4c44-9cbf-6af5e8c171ff'),(9,3,'Copy',1,'2019-11-23 18:38:20','2019-11-23 18:38:20','a3a31944-cf3a-4f0f-ba29-5cac724d5cf1'),(10,5,'404',1,'2019-11-23 18:54:05','2019-11-23 18:54:05','8b921c7a-4bfa-4432-a5cc-492b4650e7f3'),(11,6,'Home',1,'2019-11-23 20:21:15','2019-11-23 20:21:15','d44ac6f2-15ea-4358-b97a-00cef085da23'),(26,10,'Content',1,'2019-12-01 00:43:50','2019-12-01 00:43:50','d847e49d-92ab-4c54-aeac-2743e75fb174'),(27,11,'Content',1,'2019-12-01 00:43:50','2019-12-01 00:43:50','248a1d9b-ae75-44ad-8923-51b6080d3dad'),(28,12,'Content',1,'2019-12-01 00:43:51','2019-12-01 00:43:51','1bd56794-07f8-4586-aa35-e3cc3b5d9f6a'),(35,1,'Content',1,'2019-12-05 00:36:37','2019-12-05 00:36:37','b325d66d-4680-453c-bda3-87f733a87146'),(36,9,'Content',1,'2019-12-05 00:36:37','2019-12-05 00:36:37','ff6b3c78-9a87-49db-b5f6-620e577c53e3'),(37,13,'Content',1,'2019-12-05 00:36:38','2019-12-05 00:36:38','29d8e017-8b4a-4d09-8340-e690f5202367'),(38,14,'Content',1,'2019-12-05 00:36:38','2019-12-05 00:36:38','788c016a-6884-43ff-8914-05f155e09e97'),(39,15,'Content',1,'2019-12-05 00:36:38','2019-12-05 00:36:38','b5079601-db22-46b2-9845-83d7d41f956d'),(40,7,'Common',1,'2019-12-05 00:37:13','2019-12-05 00:37:13','a7ea74a3-9134-49ad-9311-b5e1800e7d89'),(42,16,'Twitter Handle',1,'2019-12-05 00:38:20','2019-12-05 00:38:20','13e8509d-cb24-4865-8ba9-41bf1dede27a'),(43,8,'Common',1,'2019-12-05 00:39:38','2019-12-05 00:39:38','276c3930-1b60-428b-a19b-b9b3a3a77c1c');
/*!40000 ALTER TABLE `craft_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_fields`
--

DROP TABLE IF EXISTS `craft_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `craft_fields_groupId_idx` (`groupId`),
  KEY `craft_fields_context_idx` (`context`),
  CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fields`
--

LOCK TABLES `craft_fields` WRITE;
/*!40000 ALTER TABLE `craft_fields` DISABLE KEYS */;
INSERT INTO `craft_fields` VALUES (1,1,'Text Field','textField','global','Use the widget to add text here',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}','2019-11-23 16:59:13','2019-11-23 17:27:18','d499c44e-e0d4-47e4-a4ec-d2f7727d723f'),(2,1,'Image Field','imageField','global','',1,'site',NULL,'craft\\fields\\Assets','{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}','2019-11-23 17:10:00','2019-11-23 17:17:52','4b96664e-b12f-47fe-9f83-8eafd29af83c'),(3,3,'Content Lockup','contentLockup','global','Add an image, video or slideshow; title, and subhead. Appears on the home page only. ',1,'site',NULL,'craft\\fields\\Matrix','{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_contentlockup}}\",\"propagationMethod\":\"all\"}','2019-11-23 17:22:48','2019-12-05 00:36:37','60048af4-ec20-4feb-b4a7-8acfbabe0683'),(4,NULL,'Lockup Image','lockupImage','matrixBlockType:6e01c8fe-f719-4b7f-b50a-9bff2d7cf374','Add one or multiple images',1,'site',NULL,'craft\\fields\\Assets','{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}','2019-11-23 17:22:48','2019-12-05 00:36:37','f06caffa-c7e7-4c6f-bad4-defa3dc65daf'),(5,NULL,'Lockup Header','lockupHeader','matrixBlockType:6e01c8fe-f719-4b7f-b50a-9bff2d7cf374','Add the header for the lockup',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}','2019-11-23 17:24:01','2019-12-05 00:36:37','7f78a050-9047-4e53-9f2b-7ff000e06c3c'),(6,NULL,'Lockup Subhead','lockupSubhead','matrixBlockType:6e01c8fe-f719-4b7f-b50a-9bff2d7cf374','Add a subhead here',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}','2019-11-23 17:24:01','2019-12-05 00:36:37','c1d8be44-8a5a-4a17-b22e-906a74dbb5fc'),(7,NULL,'Lockup Header','lockupHeader','matrixBlockType:04454127-324e-4600-80e5-b650f2f27329','',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}','2019-12-01 00:06:27','2019-12-05 00:36:37','7bb44713-09d7-494b-a83a-a69939160e33'),(8,NULL,'Lockup Subhead','lockupSubhead','matrixBlockType:04454127-324e-4600-80e5-b650f2f27329','',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}','2019-12-01 00:06:28','2019-12-05 00:36:37','81a80003-9c7b-42c0-8b0e-2c8a334d82aa'),(9,NULL,'Youtube Video ID','embedLink','matrixBlockType:04454127-324e-4600-80e5-b650f2f27329','Add the youtube video ID here',1,'none',NULL,'craft\\fields\\PlainText','{\"placeholder\":\"TCQEcR7pi_Q\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}','2019-12-01 00:06:28','2019-12-05 00:36:37','877923a2-640f-45c8-9f9b-fa3528911d6a'),(10,1,'Entry Fields','entryFields','global','',1,'site',NULL,'craft\\fields\\Matrix','{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_entryfields}}\",\"propagationMethod\":\"all\"}','2019-12-01 00:43:50','2019-12-01 00:43:50','5e84d008-2762-4327-b794-72545f962ae3'),(11,NULL,'Text Field','textField','matrixBlockType:7bc547ca-d99b-4a4c-bc2f-4f197497c439','Add copy and embedded inline images here here',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}','2019-12-01 00:43:50','2019-12-01 00:43:50','a2b95ad0-688e-43b8-b7cd-b27966ade2be'),(12,NULL,'Video Embed Code','videoEmbedCode','matrixBlockType:0eedfac2-eb7f-4731-ac71-f45394fd3159','',1,'none',NULL,'craft\\fields\\PlainText','{\"placeholder\":\"ie. 10153231379946729\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}','2019-12-01 00:43:50','2019-12-01 00:43:50','1899f18b-1c3a-4b51-b403-2864d1a245ef'),(13,NULL,'Video Caption','videoCaption','matrixBlockType:0eedfac2-eb7f-4731-ac71-f45394fd3159','Add a caption ',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}','2019-12-01 00:43:50','2019-12-01 00:43:50','b1481cc9-328a-4d25-bd2c-142df2e3d53a'),(14,NULL,'Asset Field','assetField','matrixBlockType:187584c8-bc18-4217-a7c3-5dae4c0d402e','Add an image ',1,'site',NULL,'craft\\fields\\Assets','{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":[\"image\",\"pdf\"],\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}','2019-12-01 00:43:51','2019-12-01 00:43:51','26335990-ac90-4372-88eb-845d480bdeba'),(15,NULL,'Lockup Subhead','lockupSubhead','matrixBlockType:6245676f-a107-446a-a920-3acee669c93c','',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}','2019-12-05 00:36:38','2019-12-05 00:36:38','5851260e-a520-4af8-9c05-413dc91e170e'),(16,NULL,'Lockup Header','lockupHeader','matrixBlockType:6245676f-a107-446a-a920-3acee669c93c','',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}','2019-12-05 00:36:38','2019-12-05 00:36:38','9f106fa9-57ec-472d-8a3c-6be975ba940c'),(17,NULL,'Youtube Video ID','embedLink','matrixBlockType:6245676f-a107-446a-a920-3acee669c93c','Add the youtube video ID here',1,'none',NULL,'craft\\fields\\PlainText','{\"placeholder\":\"TCQEcR7pi_Q\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}','2019-12-05 00:36:38','2019-12-05 00:36:38','a25bbf32-1906-4a89-ac5a-0f244aa45000'),(18,NULL,'Lockup Header','lockupHeader','matrixBlockType:249e5662-37ce-4628-a3e3-a908af810f4d','',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}','2019-12-05 00:36:38','2019-12-05 00:36:38','a61d653a-5f43-4c88-b040-c216dc898827'),(19,NULL,'Facebook Video ID','embedLink','matrixBlockType:249e5662-37ce-4628-a3e3-a908af810f4d','',1,'none',NULL,'craft\\fields\\PlainText','{\"placeholder\":\"1592319550798332\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}','2019-12-05 00:36:38','2019-12-05 00:36:38','b07b1e0a-cced-487f-8637-6c051ae489d8'),(20,NULL,'Lockup Subhead','lockupSubhead','matrixBlockType:249e5662-37ce-4628-a3e3-a908af810f4d','',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}','2019-12-05 00:36:38','2019-12-05 00:36:38','fd5a144d-e168-48fb-9a93-e2a851ec0afa'),(21,NULL,'Lockup Subhead','lockupSubhead','matrixBlockType:3bfd6f35-44a6-4ace-bbf9-33ef19c39b76','',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}','2019-12-05 00:36:38','2019-12-05 00:36:38','2e75faa6-d16d-43cc-8990-a6bc6d131cc5'),(22,NULL,'Lockup Header','lockupHeader','matrixBlockType:3bfd6f35-44a6-4ace-bbf9-33ef19c39b76','',1,'none',NULL,'craft\\redactor\\Field','{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}','2019-12-05 00:36:38','2019-12-05 00:36:38','6c558a71-8a0a-48fa-8cd5-d6a5236b308c'),(23,NULL,'Vimeo Video ID','embedLink','matrixBlockType:3bfd6f35-44a6-4ace-bbf9-33ef19c39b76','Add the Vimeo video ID here',1,'none',NULL,'craft\\fields\\PlainText','{\"placeholder\":\"336812660\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}','2019-12-05 00:36:38','2019-12-05 00:36:38','b21ad416-eb07-401c-84cf-20347c5801f5'),(24,1,'Background Color','backgroundColor','global','Pick a color for the page background',1,'none',NULL,'craft\\fields\\Color','{\"defaultColor\":\"\"}','2019-12-05 00:37:05','2019-12-05 00:37:05','5f150873-f54d-43d9-847e-61f60318b76c');
/*!40000 ALTER TABLE `craft_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_globalsets`
--

DROP TABLE IF EXISTS `craft_globalsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_globalsets_name_idx` (`name`),
  KEY `craft_globalsets_handle_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_idx` (`fieldLayoutId`),
  CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_globalsets`
--

LOCK TABLES `craft_globalsets` WRITE;
/*!40000 ALTER TABLE `craft_globalsets` DISABLE KEYS */;
INSERT INTO `craft_globalsets` VALUES (8,'Header Copy','headerCopy',2,'2019-11-23 18:23:43','2019-11-23 18:24:32','5fae239b-fc55-4e9d-913e-decd8dcc8d3a'),(9,'Footer Copy','footerCopy',3,'2019-11-23 18:37:41','2019-11-23 18:38:20','883d4f51-a9a9-41fd-bfed-0fbda8ff415b'),(10,'Footer Handle','footerHandle',4,'2019-11-23 18:38:06','2019-11-23 18:38:06','74f79638-484e-4e72-bc38-9ba1a4f3a3e2'),(156,'Footer Twitter Handle','footerTwitterHandle',16,'2019-12-05 00:38:20','2019-12-05 00:38:20','1edefc3b-f27f-4a43-85c8-e94098d20840');
/*!40000 ALTER TABLE `craft_globalsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_gqlschemas`
--

DROP TABLE IF EXISTS `craft_gqlschemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_gqlschemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `scope` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_gqlschemas_accessToken_unq_idx` (`accessToken`),
  UNIQUE KEY `craft_gqlschemas_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_gqlschemas`
--

LOCK TABLES `craft_gqlschemas` WRITE;
/*!40000 ALTER TABLE `craft_gqlschemas` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_gqlschemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_info`
--

DROP TABLE IF EXISTS `craft_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext,
  `configMap` mediumtext,
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_info`
--

LOCK TABLES `craft_info` WRITE;
/*!40000 ALTER TABLE `craft_info` DISABLE KEYS */;
INSERT INTO `craft_info` VALUES (1,'3.3.16.1','3.3.3',0,'{\"fieldGroups\":{\"43a12f84-7764-4426-8c01-a05e8c6055c5\":{\"name\":\"Common\"},\"f3888fe6-c608-49b6-9ec5-46b91dd0c97d\":{\"name\":\"Home\"}},\"siteGroups\":{\"51b18487-1143-446a-8d3c-0630845313c9\":{\"name\":\"Gender Family Project\"}},\"sites\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"baseUrl\":\"$DEFAULT_SITE_URL\",\"handle\":\"default\",\"hasUrls\":true,\"language\":\"en-US\",\"name\":\"Gender Family Project\",\"primary\":true,\"siteGroup\":\"51b18487-1143-446a-8d3c-0630845313c9\",\"sortOrder\":1}},\"email\":{\"fromEmail\":\"jameslamarre@gmail.com\",\"fromName\":\"Gender Family Project\",\"transportType\":\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"},\"system\":{\"edition\":\"solo\",\"name\":\"Gender Family Project\",\"live\":true,\"schemaVersion\":\"3.3.3\",\"timeZone\":\"America/Los_Angeles\"},\"users\":{\"requireEmailVerification\":true,\"allowPublicRegistration\":false,\"defaultGroup\":null,\"photoVolumeUid\":null,\"photoSubpath\":\"\"},\"dateModified\":1575506378,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"name\":\"Text Field\",\"handle\":\"textField\",\"instructions\":\"Use the widget to add text here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"},\"4b96664e-b12f-47fe-9f83-8eafd29af83c\":{\"name\":\"Image Field\",\"handle\":\"imageField\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"},\"60048af4-ec20-4feb-b4a7-8acfbabe0683\":{\"name\":\"Content Lockup\",\"handle\":\"contentLockup\",\"instructions\":\"Add an image, video or slideshow; title, and subhead. Appears on the home page only. \",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Matrix\",\"settings\":{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_contentlockup}}\",\"propagationMethod\":\"all\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"f3888fe6-c608-49b6-9ec5-46b91dd0c97d\"},\"5e84d008-2762-4327-b794-72545f962ae3\":{\"name\":\"Entry Fields\",\"handle\":\"entryFields\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Matrix\",\"settings\":{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_entryfields}}\",\"propagationMethod\":\"all\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"},\"5f150873-f54d-43d9-847e-61f60318b76c\":{\"name\":\"Background Color\",\"handle\":\"backgroundColor\",\"instructions\":\"Pick a color for the page background\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Color\",\"settings\":{\"defaultColor\":\"\"},\"contentColumnType\":\"string(7)\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"}},\"sections\":{\"a35211f8-5bcb-4cde-bf30-d5e14d414a74\":{\"name\":\"Home Page\",\"handle\":\"homePage\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"__home__\",\"template\":\"\"}},\"entryTypes\":{\"1fb2e564-996e-4a4d-958e-e493f4ce0c82\":{\"name\":\"Home Page\",\"handle\":\"homePage\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"ba9b4241-a630-4dd2-9ca8-ca03af82a53f\":{\"tabs\":[{\"name\":\"Home\",\"sortOrder\":1,\"fields\":{\"60048af4-ec20-4feb-b4a7-8acfbabe0683\":{\"required\":false,\"sortOrder\":1}}}]}}}}},\"5175e050-a0d9-4e52-aee8-91944605faea\":{\"name\":\"About\",\"handle\":\"aboutPage\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"about\",\"template\":\"views/_entry\"}},\"entryTypes\":{\"0cf6242f-209a-49bf-86ed-11401f07107f\":{\"name\":\"About\",\"handle\":\"aboutPage\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"32332611-eb5b-4373-acf6-ca94873806ac\":{\"tabs\":[{\"name\":\"Common\",\"sortOrder\":1,\"fields\":{\"4b96664e-b12f-47fe-9f83-8eafd29af83c\":{\"required\":false,\"sortOrder\":2},\"5e84d008-2762-4327-b794-72545f962ae3\":{\"required\":false,\"sortOrder\":3},\"5f150873-f54d-43d9-847e-61f60318b76c\":{\"required\":false,\"sortOrder\":1}}}]}}}}},\"8ffd4f78-c15f-4a61-b306-3332bc75f5c4\":{\"name\":\"Get In Touch\",\"handle\":\"getInvolved\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"get-in-touch\",\"template\":\"views/_entry\"}},\"entryTypes\":{\"9f4b8ffa-86f7-4487-b512-dca1c83b17c6\":{\"name\":\"Get In Touch\",\"handle\":\"getInvolved\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"24a06b47-f682-44d5-9a23-162c97cc9e0c\":{\"tabs\":[{\"name\":\"Common\",\"sortOrder\":1,\"fields\":{\"4b96664e-b12f-47fe-9f83-8eafd29af83c\":{\"required\":false,\"sortOrder\":2},\"5e84d008-2762-4327-b794-72545f962ae3\":{\"required\":false,\"sortOrder\":3},\"5f150873-f54d-43d9-847e-61f60318b76c\":{\"required\":false,\"sortOrder\":1}}}]}}}}},\"b94bc776-14fa-47f3-9e27-070ac0ed1e2d\":{\"name\":\"404 Page\",\"handle\":\"fourOhFourPage\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"404-page\",\"template\":\"404\"}},\"entryTypes\":{\"eec01ffb-1c83-4168-8f7d-291ec9075903\":{\"name\":\"404 Page\",\"handle\":\"fourOhFourPage\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"6edc0daf-61c8-4fa1-9816-063b1a41c278\":{\"tabs\":[{\"name\":\"404\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}}}}},\"volumes\":{\"38402d41-2ff3-4e10-8f75-6cbc1edb2981\":{\"name\":\"Images\",\"handle\":\"images\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"assets/images/\",\"settings\":{\"path\":\"assets/images/\"},\"sortOrder\":1}},\"matrixBlockTypes\":{\"6e01c8fe-f719-4b7f-b50a-9bff2d7cf374\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Content Lockup\",\"handle\":\"contentLockup\",\"sortOrder\":1,\"fields\":{\"7f78a050-9047-4e53-9f2b-7ff000e06c3c\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"Add the header for the lockup\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"c1d8be44-8a5a-4a17-b22e-906a74dbb5fc\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"Add a subhead here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"f06caffa-c7e7-4c6f-bad4-defa3dc65daf\":{\"name\":\"Lockup Image\",\"handle\":\"lockupImage\",\"instructions\":\"Add one or multiple images\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null}},\"fieldLayouts\":{\"fea9050b-c01a-42d5-868f-73e79e9f58f9\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"7f78a050-9047-4e53-9f2b-7ff000e06c3c\":{\"required\":false,\"sortOrder\":2},\"c1d8be44-8a5a-4a17-b22e-906a74dbb5fc\":{\"required\":false,\"sortOrder\":3},\"f06caffa-c7e7-4c6f-bad4-defa3dc65daf\":{\"required\":true,\"sortOrder\":1}}}]}}},\"04454127-324e-4600-80e5-b650f2f27329\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Video Lockup\",\"handle\":\"videoLockup\",\"sortOrder\":2,\"fields\":{\"7bb44713-09d7-494b-a83a-a69939160e33\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"81a80003-9c7b-42c0-8b0e-2c8a334d82aa\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"877923a2-640f-45c8-9f9b-fa3528911d6a\":{\"name\":\"Youtube Video ID\",\"handle\":\"embedLink\",\"instructions\":\"Add the youtube video ID here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"TCQEcR7pi_Q\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"a456deba-0657-46c2-9d1f-e5ec56b445eb\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"7bb44713-09d7-494b-a83a-a69939160e33\":{\"required\":false,\"sortOrder\":2},\"81a80003-9c7b-42c0-8b0e-2c8a334d82aa\":{\"required\":false,\"sortOrder\":3},\"877923a2-640f-45c8-9f9b-fa3528911d6a\":{\"required\":true,\"sortOrder\":1}}}]}}},\"7bc547ca-d99b-4a4c-bc2f-4f197497c439\":{\"field\":\"5e84d008-2762-4327-b794-72545f962ae3\",\"name\":\"Entry Text Block\",\"handle\":\"entryTextBlock\",\"sortOrder\":1,\"fields\":{\"a2b95ad0-688e-43b8-b7cd-b27966ade2be\":{\"name\":\"Text Field\",\"handle\":\"textField\",\"instructions\":\"Add copy and embedded inline images here here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"29818bcb-76c9-48d1-89c1-c8456c0600db\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"a2b95ad0-688e-43b8-b7cd-b27966ade2be\":{\"required\":true,\"sortOrder\":1}}}]}}},\"0eedfac2-eb7f-4731-ac71-f45394fd3159\":{\"field\":\"5e84d008-2762-4327-b794-72545f962ae3\",\"name\":\"Entry Video Embed\",\"handle\":\"entryVideoEmbed\",\"sortOrder\":2,\"fields\":{\"1899f18b-1c3a-4b51-b403-2864d1a245ef\":{\"name\":\"Video Embed Code\",\"handle\":\"videoEmbedCode\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"ie. 10153231379946729\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"b1481cc9-328a-4d25-bd2c-142df2e3d53a\":{\"name\":\"Video Caption\",\"handle\":\"videoCaption\",\"instructions\":\"Add a caption \",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"9bc62277-e47c-456a-8728-b07ed1f01e4f\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"1899f18b-1c3a-4b51-b403-2864d1a245ef\":{\"required\":true,\"sortOrder\":1},\"b1481cc9-328a-4d25-bd2c-142df2e3d53a\":{\"required\":false,\"sortOrder\":2}}}]}}},\"187584c8-bc18-4217-a7c3-5dae4c0d402e\":{\"field\":\"5e84d008-2762-4327-b794-72545f962ae3\",\"name\":\"Entry Asset\",\"handle\":\"entryAsset\",\"sortOrder\":3,\"fields\":{\"26335990-ac90-4372-88eb-845d480bdeba\":{\"name\":\"Asset Field\",\"handle\":\"assetField\",\"instructions\":\"Add an image \",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":[\"image\",\"pdf\"],\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null}},\"fieldLayouts\":{\"e1e17a32-e7ac-4251-bc57-c1542c46d18e\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"26335990-ac90-4372-88eb-845d480bdeba\":{\"required\":true,\"sortOrder\":1}}}]}}},\"6245676f-a107-446a-a920-3acee669c93c\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Youtube Video Lockup\",\"handle\":\"youtubeVideoLockup\",\"sortOrder\":3,\"fields\":{\"5851260e-a520-4af8-9c05-413dc91e170e\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"9f106fa9-57ec-472d-8a3c-6be975ba940c\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"a25bbf32-1906-4a89-ac5a-0f244aa45000\":{\"name\":\"Youtube Video ID\",\"handle\":\"embedLink\",\"instructions\":\"Add the youtube video ID here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"TCQEcR7pi_Q\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"2797a0ee-0bf9-4f20-a00f-4537d64c93e5\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"5851260e-a520-4af8-9c05-413dc91e170e\":{\"required\":false,\"sortOrder\":3},\"9f106fa9-57ec-472d-8a3c-6be975ba940c\":{\"required\":false,\"sortOrder\":2},\"a25bbf32-1906-4a89-ac5a-0f244aa45000\":{\"required\":true,\"sortOrder\":1}}}]}}},\"249e5662-37ce-4628-a3e3-a908af810f4d\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Facebook Video Lockup\",\"handle\":\"facebookVideoLockup\",\"sortOrder\":4,\"fields\":{\"a61d653a-5f43-4c88-b040-c216dc898827\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"b07b1e0a-cced-487f-8637-6c051ae489d8\":{\"name\":\"Facebook Video ID\",\"handle\":\"embedLink\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"1592319550798332\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"fd5a144d-e168-48fb-9a93-e2a851ec0afa\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"fdd622cb-31b3-4d7f-abd1-9d8b7f24363d\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"a61d653a-5f43-4c88-b040-c216dc898827\":{\"required\":false,\"sortOrder\":2},\"b07b1e0a-cced-487f-8637-6c051ae489d8\":{\"required\":true,\"sortOrder\":1},\"fd5a144d-e168-48fb-9a93-e2a851ec0afa\":{\"required\":false,\"sortOrder\":3}}}]}}},\"3bfd6f35-44a6-4ace-bbf9-33ef19c39b76\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Vimeo Video Lockup\",\"handle\":\"vimeoVideoLockup\",\"sortOrder\":5,\"fields\":{\"2e75faa6-d16d-43cc-8990-a6bc6d131cc5\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"6c558a71-8a0a-48fa-8cd5-d6a5236b308c\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"b21ad416-eb07-401c-84cf-20347c5801f5\":{\"name\":\"Vimeo Video ID\",\"handle\":\"embedLink\",\"instructions\":\"Add the Vimeo video ID here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"336812660\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"f56f471d-951c-4347-8f19-4bbf1bb53421\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"2e75faa6-d16d-43cc-8990-a6bc6d131cc5\":{\"required\":false,\"sortOrder\":3},\"6c558a71-8a0a-48fa-8cd5-d6a5236b308c\":{\"required\":false,\"sortOrder\":2},\"b21ad416-eb07-401c-84cf-20347c5801f5\":{\"required\":true,\"sortOrder\":1}}}]}}}},\"plugins\":{\"redactor\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.3.0\"},\"imager\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.0.0\"},\"constant-contact\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"0.0.1\"}},\"globalSets\":{\"5fae239b-fc55-4e9d-913e-decd8dcc8d3a\":{\"name\":\"Header Copy\",\"handle\":\"headerCopy\",\"fieldLayouts\":{\"e764c720-5c68-41b0-a96a-7bd23e0f2fda\":{\"tabs\":[{\"name\":\"Copy\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}},\"883d4f51-a9a9-41fd-bfed-0fbda8ff415b\":{\"name\":\"Footer Copy\",\"handle\":\"footerCopy\",\"fieldLayouts\":{\"6a5dcfed-ca4b-4255-b3c9-b537ce055e30\":{\"tabs\":[{\"name\":\"Copy\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}},\"74f79638-484e-4e72-bc38-9ba1a4f3a3e2\":{\"name\":\"Footer Handle\",\"handle\":\"footerHandle\",\"fieldLayouts\":{\"eba588db-0266-455f-8f97-be8263b16bca\":{\"tabs\":[{\"name\":\"Handle\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}},\"1edefc3b-f27f-4a43-85c8-e94098d20840\":{\"name\":\"Footer Twitter Handle\",\"handle\":\"footerTwitterHandle\",\"fieldLayouts\":{\"44131e2d-c2bf-44d9-83fe-6386212e7fce\":{\"tabs\":[{\"name\":\"Twitter Handle\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}}}}','[]','kYgRqwqCVKtm','2019-11-16 18:40:28','2019-11-16 18:40:28','7eb6a088-ec22-42e8-b449-98430b01e64e');
/*!40000 ALTER TABLE `craft_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_matrixblocks`
--

DROP TABLE IF EXISTS `craft_matrixblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixblocks`
--

LOCK TABLES `craft_matrixblocks` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocks` DISABLE KEYS */;
INSERT INTO `craft_matrixblocks` VALUES (18,2,3,1,1,NULL,'2019-11-23 20:25:01','2019-11-23 20:25:01','70fee1ee-7c13-4f6b-90a6-878653544835'),(19,2,3,1,2,NULL,'2019-11-23 20:25:01','2019-11-23 20:25:01','63767cea-160d-4fa2-b061-cca03869354d'),(21,20,3,1,1,NULL,'2019-11-23 20:25:01','2019-11-23 20:25:01','ee0f0ff0-80d1-4ee6-aff6-c9c7b6a64bfd'),(22,20,3,1,2,NULL,'2019-11-23 20:25:01','2019-11-23 20:25:01','d892567f-fc34-47d2-a932-95de5459d45f'),(24,23,3,1,1,NULL,'2019-11-23 20:54:33','2019-11-23 20:54:33','77dba976-f75d-4c36-bae6-9793d1286fdc'),(25,23,3,1,2,NULL,'2019-11-23 20:54:33','2019-11-23 20:54:33','e8adec9f-b595-4abb-8f26-cff95cc930ac'),(35,34,3,1,1,NULL,'2019-12-01 00:04:11','2019-12-01 00:04:11','0247b645-55f0-4aa4-a2ca-fffd4403a0c4'),(36,34,3,1,2,NULL,'2019-12-01 00:04:11','2019-12-01 00:04:11','a1bb9542-30f4-437d-ac91-c50cca362a41'),(37,2,3,2,3,NULL,'2019-12-01 00:09:14','2019-12-01 00:09:14','079e2398-02df-4def-a4d0-7dcb73eff1ea'),(39,38,3,1,1,NULL,'2019-12-01 00:09:15','2019-12-01 00:09:15','b64546e7-fce7-493f-97f7-d2c57656542d'),(40,38,3,1,2,NULL,'2019-12-01 00:09:15','2019-12-01 00:09:15','552286e4-93ad-4d68-b773-abd70bdac5ef'),(41,38,3,2,3,NULL,'2019-12-01 00:09:15','2019-12-01 00:09:15','f33f1ace-c284-41bc-bf68-44910ed034bb'),(43,42,3,1,1,NULL,'2019-12-01 00:13:23','2019-12-01 00:13:23','1c053f6f-601c-467b-aff1-e8cd293ef9bc'),(44,42,3,1,2,NULL,'2019-12-01 00:13:23','2019-12-01 00:13:23','4be613bd-e179-468f-bb06-4df872028d95'),(45,42,3,2,3,NULL,'2019-12-01 00:13:23','2019-12-01 00:13:23','e01517c1-a98f-49a4-8a62-229f5a17159e'),(47,46,3,1,1,NULL,'2019-12-01 00:14:59','2019-12-01 00:14:59','b1cdb12e-8aa3-44e6-820b-cecc8dd5f36b'),(48,46,3,1,2,NULL,'2019-12-01 00:14:59','2019-12-01 00:14:59','6a81edf8-8eb3-4a27-88b7-8d38daa28ed1'),(49,46,3,2,3,NULL,'2019-12-01 00:14:59','2019-12-01 00:14:59','0f7b0125-02f1-48f6-b11d-1b81a2fcbc2d'),(53,4,10,3,1,0,'2019-12-01 00:48:13','2019-12-01 00:48:13','9c16b0c4-c57a-420c-9735-c1e6c73ac7c0'),(55,54,10,3,1,NULL,'2019-12-01 00:48:14','2019-12-01 00:48:14','b344c20a-87b5-4d3d-8505-c569265430f0'),(57,56,10,3,1,NULL,'2019-12-01 00:52:47','2019-12-01 00:52:47','3bd93e73-0359-4f6b-a80b-cf334c18300f'),(59,58,10,3,1,NULL,'2019-12-01 00:52:48','2019-12-01 00:52:48','a3245d1d-48f0-4b33-b41f-af87c5f42d20'),(62,61,3,1,1,NULL,'2019-12-01 19:11:22','2019-12-01 19:11:22','444b91db-eab3-4192-a050-23b476823c2f'),(63,61,3,1,2,NULL,'2019-12-01 19:11:22','2019-12-01 19:11:22','e44188fb-4b51-4939-9a40-6343968e7325'),(64,61,3,2,3,NULL,'2019-12-01 19:11:22','2019-12-01 19:11:22','3c3daf9e-7020-4a79-a3f4-dd8007b33f29'),(66,65,3,1,1,NULL,'2019-12-04 03:38:48','2019-12-04 03:38:48','b97300d7-5a9f-4532-85f3-a512c8d73a60'),(67,65,3,1,2,NULL,'2019-12-04 03:38:48','2019-12-04 03:38:48','dbd64813-bf65-41b8-93c0-753b990be046'),(68,65,3,2,3,NULL,'2019-12-04 03:38:48','2019-12-04 03:38:48','871e1618-be44-4e2e-80f6-30d0980d4e7f'),(71,4,10,3,1,NULL,'2019-12-04 20:03:31','2019-12-04 20:03:31','c1edbafc-4f60-4a81-8df2-24cc8b6a8048'),(73,72,10,3,1,NULL,'2019-12-04 20:03:31','2019-12-04 20:03:31','6e61fd57-42ba-43fc-8173-09b7ae6d6e05'),(75,74,3,1,1,NULL,'2019-12-04 20:09:38','2019-12-04 20:09:38','7e464fb1-4266-42e6-816b-8a31f624e504'),(76,74,3,1,2,NULL,'2019-12-04 20:09:38','2019-12-04 20:09:38','afc2de2a-1465-48c3-ad3c-1a4116d47085'),(77,74,3,2,3,NULL,'2019-12-04 20:09:38','2019-12-04 20:09:38','e39e9155-01a0-40f8-9353-b997311cf0a7'),(79,78,3,1,1,NULL,'2019-12-04 20:10:15','2019-12-04 20:10:15','ca4ab5ca-6da4-49c9-bdb1-554b26e629cd'),(80,78,3,1,2,NULL,'2019-12-04 20:10:15','2019-12-04 20:10:15','87de00c9-047e-4307-b744-21a33f539f46'),(81,78,3,2,3,NULL,'2019-12-04 20:10:15','2019-12-04 20:10:15','4682af82-881d-4612-9cf6-66c295a5074f'),(83,82,10,3,1,NULL,'2019-12-04 20:12:28','2019-12-04 20:12:28','f018c203-0883-4361-9a08-b38312b361b7'),(85,84,10,3,1,NULL,'2019-12-04 20:12:54','2019-12-04 20:12:54','575fa393-6f37-4dd6-a3a9-f974172058a5'),(86,6,10,3,1,NULL,'2019-12-04 20:14:55','2019-12-04 20:14:55','59c9c26b-08d6-4d05-9e03-5550811cfdb9'),(88,87,10,3,1,NULL,'2019-12-04 20:14:55','2019-12-04 20:14:55','78822d75-1bd8-49b2-a267-c4b4bfca3eb1'),(90,89,10,3,1,NULL,'2019-12-04 20:15:27','2019-12-04 20:15:27','43da0ff2-de93-4f69-b2fe-965af9b8f184'),(92,91,10,3,1,NULL,'2019-12-04 20:15:40','2019-12-04 20:15:40','2da9a837-9485-419a-8328-b7d6ad2f10ee'),(94,93,10,3,1,NULL,'2019-12-04 20:15:54','2019-12-04 20:15:54','c36ee8e7-8cde-4b05-8298-80ae036cceb8'),(96,95,10,3,1,NULL,'2019-12-04 20:16:00','2019-12-04 20:16:00','504158bb-e879-4b20-b135-6451e037051a'),(98,97,10,3,1,NULL,'2019-12-04 20:16:10','2019-12-04 20:16:10','478eb81b-227f-4de2-8eb6-c0271164ca53'),(100,99,3,1,1,NULL,'2019-12-04 20:18:01','2019-12-04 20:18:01','46ae5871-57ca-4384-bc1c-6a3227c95a0a'),(101,99,3,1,2,NULL,'2019-12-04 20:18:01','2019-12-04 20:18:01','6e70ca5a-a844-4c8e-9eeb-50927c77b9f5'),(102,99,3,2,3,NULL,'2019-12-04 20:18:01','2019-12-04 20:18:01','d780cb1a-fd48-499e-a486-228ac4a6e041'),(104,103,3,1,1,NULL,'2019-12-04 20:18:57','2019-12-04 20:18:57','9cac1d77-a254-4827-b017-9614457ef5c1'),(105,103,3,1,2,NULL,'2019-12-04 20:18:57','2019-12-04 20:18:57','c0af52b7-eac1-49c6-b964-e262a40c7a31'),(106,103,3,2,3,NULL,'2019-12-04 20:18:57','2019-12-04 20:18:57','1e05e641-bd13-422a-a7ac-8d637788fa6d'),(109,108,3,1,1,NULL,'2019-12-04 20:28:08','2019-12-04 20:28:08','28a5989b-31a2-4585-ac63-06febb4255eb'),(110,108,3,1,2,NULL,'2019-12-04 20:28:08','2019-12-04 20:28:08','e31f14af-f4df-475f-b655-3d2cbcc6abe1'),(111,108,3,2,3,NULL,'2019-12-04 20:28:08','2019-12-04 20:28:08','dab7aa3b-5710-498d-a700-1afdf8230c76'),(113,112,3,1,1,NULL,'2019-12-04 20:30:35','2019-12-04 20:30:35','abcfec16-2205-4c85-90ae-79c1c4c4f2ae'),(114,112,3,1,2,NULL,'2019-12-04 20:30:36','2019-12-04 20:30:36','04c11027-e40f-4794-a7f9-4d2c9ea478b9'),(115,112,3,2,3,NULL,'2019-12-04 20:30:36','2019-12-04 20:30:36','a4b8578a-9026-46d7-8a40-ba7bbbfe812b'),(117,116,3,1,1,NULL,'2019-12-04 20:45:54','2019-12-04 20:45:54','75522b47-e16f-4d51-95f6-1062f3d0e3c0'),(118,116,3,1,2,NULL,'2019-12-04 20:45:54','2019-12-04 20:45:54','bcd3b2eb-6282-4c36-b14f-57ceee696089'),(119,116,3,2,3,NULL,'2019-12-04 20:45:54','2019-12-04 20:45:54','848ced05-fed3-4af5-b59a-808d78f02a62'),(122,121,3,1,1,NULL,'2019-12-04 20:50:15','2019-12-04 20:50:15','c0d0764f-978f-4912-ae4b-00ddb77709fb'),(123,121,3,1,2,NULL,'2019-12-04 20:50:15','2019-12-04 20:50:15','e8b70f51-685f-4bee-bafe-04798cba6084'),(124,121,3,2,3,NULL,'2019-12-04 20:50:15','2019-12-04 20:50:15','85da81ce-3242-45c8-b489-fb778daeeeb8'),(127,126,3,1,1,NULL,'2019-12-04 21:00:19','2019-12-04 21:00:19','ca76030a-62b5-4df7-b496-55d5310bc86c'),(128,126,3,1,2,NULL,'2019-12-04 21:00:19','2019-12-04 21:00:19','09228d9f-aadb-48b5-884b-706a5aa2fd2e'),(129,126,3,2,3,NULL,'2019-12-04 21:00:19','2019-12-04 21:00:19','64719f0c-2938-45fe-bc74-c493c4b66351'),(132,131,3,1,1,NULL,'2019-12-04 21:08:49','2019-12-04 21:08:49','6447f944-8800-4598-80fa-4d72f015118c'),(133,131,3,1,2,NULL,'2019-12-04 21:08:49','2019-12-04 21:08:49','90aa5525-c2a5-4168-b9fb-67c16f27c4ba'),(134,131,3,2,3,NULL,'2019-12-04 21:08:49','2019-12-04 21:08:49','1fa99a99-899c-4ea1-bf41-9870ff5e87ba'),(137,136,10,3,1,NULL,'2019-12-04 21:17:12','2019-12-04 21:17:12','4880928a-7305-4a01-b6d5-c8dbe0fa4a3e'),(139,138,10,3,1,NULL,'2019-12-04 21:17:49','2019-12-04 21:17:49','683cb4a5-c81b-4f5f-bd8b-7769dc182d9b'),(142,141,10,3,1,NULL,'2019-12-04 21:20:50','2019-12-04 21:20:50','e7a9bb3d-4a12-4062-9590-316cbddf4707'),(145,144,10,3,1,NULL,'2019-12-04 21:25:10','2019-12-04 21:25:10','9e5d28ec-fb82-4a6e-bfd1-698de8bc23bd'),(147,146,10,3,1,NULL,'2019-12-04 21:34:09','2019-12-04 21:34:09','27dae070-5b3d-4674-ab6d-dde9f3e312df'),(149,148,10,3,1,NULL,'2019-12-04 21:34:17','2019-12-04 21:34:17','1f5d9de1-1368-4284-bbd3-f67ecd9d5393'),(151,150,10,3,1,NULL,'2019-12-04 21:34:34','2019-12-04 21:34:34','52a3ea75-fdef-4187-bb35-5e693ca641e9'),(153,152,10,3,1,NULL,'2019-12-05 00:37:13','2019-12-05 00:37:13','86880486-a1af-485f-85f5-f5eef6e63e9b'),(155,154,10,3,1,NULL,'2019-12-05 00:37:17','2019-12-05 00:37:17','2be96515-bee2-4510-9b56-d520e2f66425'),(158,157,10,3,1,NULL,'2019-12-05 00:39:38','2019-12-05 00:39:38','16e2ead3-0f43-4d90-93e7-40f79ac372bc');
/*!40000 ALTER TABLE `craft_matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_matrixblocktypes`
--

DROP TABLE IF EXISTS `craft_matrixblocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_matrixblocktypes_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`),
  CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixblocktypes`
--

LOCK TABLES `craft_matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocktypes` DISABLE KEYS */;
INSERT INTO `craft_matrixblocktypes` VALUES (1,3,1,'Content Lockup','contentLockup',1,'2019-11-23 17:22:48','2019-11-23 17:22:48','6e01c8fe-f719-4b7f-b50a-9bff2d7cf374'),(2,3,9,'Video Lockup','videoLockup',2,'2019-12-01 00:06:28','2019-12-01 00:06:28','04454127-324e-4600-80e5-b650f2f27329'),(3,10,10,'Entry Text Block','entryTextBlock',1,'2019-12-01 00:43:50','2019-12-01 00:43:50','7bc547ca-d99b-4a4c-bc2f-4f197497c439'),(4,10,11,'Entry Video Embed','entryVideoEmbed',2,'2019-12-01 00:43:50','2019-12-01 00:43:50','0eedfac2-eb7f-4731-ac71-f45394fd3159'),(5,10,12,'Entry Asset','entryAsset',3,'2019-12-01 00:43:51','2019-12-01 00:43:51','187584c8-bc18-4217-a7c3-5dae4c0d402e'),(6,3,13,'Youtube Video Lockup','youtubeVideoLockup',3,'2019-12-05 00:36:38','2019-12-05 00:36:38','6245676f-a107-446a-a920-3acee669c93c'),(7,3,14,'Facebook Video Lockup','facebookVideoLockup',4,'2019-12-05 00:36:38','2019-12-05 00:36:38','249e5662-37ce-4628-a3e3-a908af810f4d'),(8,3,15,'Vimeo Video Lockup','vimeoVideoLockup',5,'2019-12-05 00:36:38','2019-12-05 00:36:38','3bfd6f35-44a6-4ace-bbf9-33ef19c39b76');
/*!40000 ALTER TABLE `craft_matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_matrixcontent_contentlockup`
--

DROP TABLE IF EXISTS `craft_matrixcontent_contentlockup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_contentlockup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_contentLockup_lockupHeader` text,
  `field_contentLockup_lockupSubhead` text,
  `field_videoLockup_lockupHeader` text,
  `field_videoLockup_lockupSubhead` text,
  `field_videoLockup_embedLink` text,
  `field_youtubeVideoLockup_lockupSubhead` text,
  `field_youtubeVideoLockup_lockupHeader` text,
  `field_youtubeVideoLockup_embedLink` text,
  `field_facebookVideoLockup_lockupHeader` text,
  `field_facebookVideoLockup_embedLink` text,
  `field_facebookVideoLockup_lockupSubhead` text,
  `field_vimeoVideoLockup_lockupSubhead` text,
  `field_vimeoVideoLockup_lockupHeader` text,
  `field_vimeoVideoLockup_embedLink` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_contentlockup_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_matrixcontent_contentlockup_siteId_fk` (`siteId`),
  CONSTRAINT `craft_matrixcontent_contentlockup_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_contentlockup_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixcontent_contentlockup`
--

LOCK TABLES `craft_matrixcontent_contentlockup` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_contentlockup` DISABLE KEYS */;
INSERT INTO `craft_matrixcontent_contentlockup` VALUES (1,18,1,'2019-11-23 20:25:01','2019-12-04 21:08:49','17483ca5-42c1-406b-9de2-9fa360169bfa','<p>MEET GFP</p>','<p>NOTG Video here.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,19,1,'2019-11-23 20:25:01','2019-12-04 21:08:49','050de2dd-8362-4758-aab9-740b9a79abeb','<p>JOIN THE FAMILY</p>','<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,21,1,'2019-11-23 20:25:01','2019-11-23 20:25:01','66a570ac-01cf-4d37-bbc3-b59f81c9c843','<p>MEET GFP</p>','This is a subhead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,22,1,'2019-11-23 20:25:01','2019-11-23 20:25:01','d53c8174-3670-4591-b14c-4c925d82f25f','<p>NIGHT OF A THOUSAND GENDERS</p>','This is a subhead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,24,1,'2019-11-23 20:54:33','2019-11-23 20:54:33','c2b80b21-fa15-4c56-97cb-a5aac92be4f6','MEET GFP','This is a subhead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,25,1,'2019-11-23 20:54:33','2019-11-23 20:54:33','12a24c8c-e2e2-4d3f-b6ca-8751bc43857f','NIGHT OF A THOUSAND GENDERS','This is a subhead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,35,1,'2019-12-01 00:04:11','2019-12-01 00:04:11','d5548793-0e79-4e22-8563-6c26bc18cc85','<p>MEET GFP</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,36,1,'2019-12-01 00:04:11','2019-12-01 00:04:11','862b32cc-0942-4ea1-9f51-e0964c5f27d2','<p>NIGHT OF A THOUSAND GENDERS</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,37,1,'2019-12-01 00:09:14','2019-12-04 21:08:49','aded4e7d-4f6a-4ab1-a191-ff0592eba20c',NULL,NULL,'<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,39,1,'2019-12-01 00:09:15','2019-12-01 00:09:15','0181e48d-fe1a-4b64-9323-a0210313d65e','<p>MEET GFP</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,40,1,'2019-12-01 00:09:15','2019-12-01 00:09:15','39c10985-8673-432f-a2b8-eb89e60ac46c','<p>NIGHT OF A THOUSAND GENDERS</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,41,1,'2019-12-01 00:09:15','2019-12-01 00:09:15','a103d4cd-45ec-4200-9261-5ba905c8bb47',NULL,NULL,'<p>Testing Video Header</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>','<pre>&lt;!-- Your embedded video player code --&gt; &lt;div class=\"fb-video\" data-href=\"https://www.facebook.com/facebook/videos/10153231379946729/\" data-width=\"500\" data-show-text=\"false\"&gt; &lt;div class=\"fb-xfbml-parse-ignore\"&gt; &lt;blockquote cite=\"https://www.facebook.com/facebook/videos/10153231379946729/\"&gt; &lt;a href=\"https://www.facebook.com/facebook/videos/10153231379946729/\"&gt;How to Share With Just Friends&lt;/a&gt; &lt;p&gt;How to share with just friends.&lt;/p&gt; Posted by &lt;a href=\"https://www.facebook.com/facebook/\"&gt;Facebook&lt;/a&gt; on Friday, December 5, 2014 &lt;/blockquote&gt; &lt;/div&gt; &lt;/div&gt;</pre>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,43,1,'2019-12-01 00:13:23','2019-12-01 00:13:23','31f4a3d0-575b-49fe-8caa-fa3e1666a39f','<p>MEET GFP</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,44,1,'2019-12-01 00:13:23','2019-12-01 00:13:23','b89bec99-cbc8-4685-a7fe-cd6769b143e1','<p>NIGHT OF A THOUSAND GENDERS</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,45,1,'2019-12-01 00:13:23','2019-12-01 00:13:23','41a57029-814a-4dda-a8c8-b019b63b4c34',NULL,NULL,'<p>Testing Video Header</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>','<!-- Your embedded video player code -->   <div class=\"fb-video\" data-href=\"https://www.facebook.com/facebook/videos/10153231379946729/\" data-width=\"500\" data-show-text=\"false\">     <div class=\"fb-xfbml-parse-ignore\">       <blockquote cite=\"https://www.facebook.com/facebook/videos/10153231379946729/\">         <a href=\"https://www.facebook.com/facebook/videos/10153231379946729/\">How to Share With Just Friends</a>         <p>How to share with just friends.</p>         Posted by <a href=\"https://www.facebook.com/facebook/\">Facebook</a> on Friday, December 5, 2014       </blockquote>     </div>   </div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,47,1,'2019-12-01 00:14:59','2019-12-01 00:14:59','10581040-16e0-4976-b056-5b36c750ee53','<p>MEET GFP</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,48,1,'2019-12-01 00:14:59','2019-12-01 00:14:59','16cfa263-23e3-4f1a-b883-81b836c95d86','<p>NIGHT OF A THOUSAND GENDERS</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,49,1,'2019-12-01 00:14:59','2019-12-01 00:14:59','c2f6a3de-43c3-4f12-a043-e934d9420bd3',NULL,NULL,'<p>Testing Video Header</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>','10153231379946729',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,62,1,'2019-12-01 19:11:22','2019-12-01 19:11:22','7be93f6d-4c37-4aad-be0e-ced533b6d437','<p>MEET GFP</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,63,1,'2019-12-01 19:11:22','2019-12-01 19:11:22','2524fa0b-4ca9-463e-91a7-a9749529819b','<p>NIGHT OF A THOUSAND GENDERS</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,64,1,'2019-12-01 19:11:22','2019-12-01 19:11:22','b6547309-6490-4fee-8d4b-7517d2fc1235',NULL,NULL,'<p>Testing Video Header</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>','1584597334903887',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,66,1,'2019-12-04 03:38:48','2019-12-04 03:38:48','5da52d32-a683-4613-8f6f-57c8ac0b28c8','<p>MEET GFP</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,67,1,'2019-12-04 03:38:48','2019-12-04 03:38:48','3148d63c-501e-4c58-8a45-efafdc32a451','<p>NIGHT OF A THOUSAND GENDERS</p>','<p>This is a subhead.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,68,1,'2019-12-04 03:38:48','2019-12-04 03:38:48','cec91a0b-5f53-4a28-aa88-7ab040eaa6b2',NULL,NULL,'<p>Testing Video Header</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,75,1,'2019-12-04 20:09:38','2019-12-04 20:09:38','ba1dc723-713e-4eed-94ef-e39c6c997c63','<p>MEET GFP</p>','<p>NOTG Video</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,76,1,'2019-12-04 20:09:38','2019-12-04 20:09:38','cc7be168-0b32-4801-a04a-cc4195f2f927','<p>JOIN THE FAMILY</p><p></p>','<p><a href=\"{entry:4:url}\">Pride photo</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,77,1,'2019-12-04 20:09:38','2019-12-04 20:09:38','8ebf21b4-63c6-48ea-9022-f59c77e7cfba',NULL,NULL,'<p>THE GIFT OF GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,79,1,'2019-12-04 20:10:15','2019-12-04 20:10:15','26f8aa7b-5088-4e10-ba25-818e7d0721d3','<p>MEET GFP</p>','<p>NOTG Video here.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,80,1,'2019-12-04 20:10:15','2019-12-04 20:10:15','041691e6-a814-43be-8607-fe8a650fbdd7','<p><a href=\"{entry:4:url}\">JOIN THE FAMILY</a></p>','<p><a href=\"{entry:4:url}\">Pride photo</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,81,1,'2019-12-04 20:10:15','2019-12-04 20:10:15','94b33934-4b62-4b8b-b891-44079bc3641b',NULL,NULL,'<p>THE GIFT OF GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,100,1,'2019-12-04 20:18:01','2019-12-04 20:18:01','f418b19d-01a9-4542-9ecf-1ca8d4d522f0','<p>MEET GFP</p>','<p>NOTG Video here.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,101,1,'2019-12-04 20:18:01','2019-12-04 20:18:01','206404b8-561a-466c-9de1-1f192562269e','<p>JOIN THE FAMILY</p>','<p><a href=\"{entry:4:url}\">Pride photo</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,102,1,'2019-12-04 20:18:01','2019-12-04 20:18:01','e8bed9e7-ad11-439d-ba77-e9c12b37baa5',NULL,NULL,'<p>THE GIFT OF GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,104,1,'2019-12-04 20:18:57','2019-12-04 20:18:57','87566eda-4994-4ded-a592-7a62b86417a3','<p>MEET GFP</p>','<p>NOTG Video here.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,105,1,'2019-12-04 20:18:57','2019-12-04 20:18:57','11f1a67a-82df-4543-aada-009430c1d1ab','<p>JOIN THE FAMILY</p>','<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,106,1,'2019-12-04 20:18:57','2019-12-04 20:18:57','58421c9a-d73d-4a7b-8971-8f484dce8882',NULL,NULL,'<p>THE GIFT OF GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,109,1,'2019-12-04 20:28:08','2019-12-04 20:28:08','f4506f6f-b3f9-4b7a-9c4e-e04735b0bd7a','<p>MEET GFP</p>','<p>NOTG Video here.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,110,1,'2019-12-04 20:28:08','2019-12-04 20:28:08','c0fb9424-cae0-49dc-b900-f176fd26dfc6','<p>JOIN THE FAMILY</p>','<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,111,1,'2019-12-04 20:28:08','2019-12-04 20:28:08','6fc553d7-1c22-4901-b01e-3b572ecdb93c',NULL,NULL,'<p>THE GIFT OF GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,113,1,'2019-12-04 20:30:35','2019-12-04 20:30:35','9e43f4e6-7a59-43f0-a382-8d19280570df','<p>MEET GFP</p>','<p>NOTG Video here.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,114,1,'2019-12-04 20:30:36','2019-12-04 20:30:36','f17ba8db-a3af-4587-9f28-3e6bf15da135','<p>JOIN THE FAMILY</p>','<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,115,1,'2019-12-04 20:30:36','2019-12-04 20:30:36','59c51e7a-0eb3-4e3a-a0d1-7019d33ae489',NULL,NULL,'<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,117,1,'2019-12-04 20:45:54','2019-12-04 20:45:54','265c4c8a-4292-40c6-b142-10ac8791ca87','<p>MEET GFP</p>','<p>NOTG Video here.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,118,1,'2019-12-04 20:45:54','2019-12-04 20:45:54','8f6e7c9f-810f-4f94-b592-e905c0d52bd1','<p>JOIN THE FAMILY</p>','<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,119,1,'2019-12-04 20:45:54','2019-12-04 20:45:54','16fc6ce9-ed8b-4c3f-b207-560eba9f9b97',NULL,NULL,'<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,122,1,'2019-12-04 20:50:15','2019-12-04 20:50:15','93734aea-45f2-40e4-90fa-21c2124939a2','<p>MEET GFP</p>','<p>NOTG Video here.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,123,1,'2019-12-04 20:50:15','2019-12-04 20:50:15','8e0e054d-5079-49f6-bcd7-45be7911d7d4','<p>JOIN THE FAMILY</p>','<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,124,1,'2019-12-04 20:50:15','2019-12-04 20:50:15','16399f90-4083-4509-9b10-b83468563a6b',NULL,NULL,'<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,127,1,'2019-12-04 21:00:19','2019-12-04 21:00:19','368b2ce6-82ba-49fa-8d61-81f912b22614','<p>MEET GFP</p>','<p>NOTG Video here.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,128,1,'2019-12-04 21:00:19','2019-12-04 21:00:19','98948087-2b86-45f2-a320-e64ad3c1d2f3','<p>JOIN THE FAMILY</p>','<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,129,1,'2019-12-04 21:00:19','2019-12-04 21:00:19','ba2bb0ff-6c52-42af-ba11-c00dc1f3a6c7',NULL,NULL,'<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,132,1,'2019-12-04 21:08:49','2019-12-04 21:08:49','9370b8ca-b7af-42b4-a803-ee1f1b5d7684','<p>MEET GFP</p>','<p>NOTG Video here.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,133,1,'2019-12-04 21:08:49','2019-12-04 21:08:49','f4d6086d-9188-44ca-805d-47a0f404099f','<p>JOIN THE FAMILY</p>','<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,134,1,'2019-12-04 21:08:49','2019-12-04 21:08:49','bc6e6898-60c7-463c-9e85-2f809c5480b9',NULL,NULL,'<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>','<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>','TCQEcR7pi_Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `craft_matrixcontent_contentlockup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_matrixcontent_entryfields`
--

DROP TABLE IF EXISTS `craft_matrixcontent_entryfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_entryfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_entryTextBlock_textField` text,
  `field_entryVideoEmbed_videoEmbedCode` text,
  `field_entryVideoEmbed_videoCaption` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_entryfields_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `craft_matrixcontent_entryfields_siteId_fk` (`siteId`),
  CONSTRAINT `craft_matrixcontent_entryfields_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_entryfields_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixcontent_entryfields`
--

LOCK TABLES `craft_matrixcontent_entryfields` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_entryfields` DISABLE KEYS */;
INSERT INTO `craft_matrixcontent_entryfields` VALUES (1,53,1,'2019-12-01 00:48:13','2019-12-01 00:52:48','29c026bd-6da6-4190-a43b-2412a8272a32','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>',NULL,NULL),(2,55,1,'2019-12-01 00:48:14','2019-12-01 00:48:14','fdf66a0a-7f3d-4b25-a020-f89890828ce2','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>',NULL,NULL),(3,57,1,'2019-12-01 00:52:47','2019-12-01 00:52:47','d31eee62-f787-4ff1-960d-96a745b03bcc','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>',NULL,NULL),(4,59,1,'2019-12-01 00:52:48','2019-12-01 00:52:48','ae0d1858-d9eb-4bce-804a-b109e8519b8d','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>',NULL,NULL),(6,71,1,'2019-12-04 20:03:31','2019-12-05 00:37:13','5ed32b1c-8687-4588-a390-ac8453209081','<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong><br /></strong></p><p><strong>What We Do</strong></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>',NULL,NULL),(7,73,1,'2019-12-04 20:03:31','2019-12-04 20:03:31','5bd277c4-e29a-48ef-b3ba-de384a63bcc6','<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>',NULL,NULL),(8,83,1,'2019-12-04 20:12:28','2019-12-04 20:12:28','e330d0ab-786b-42bf-80b5-befe91571557','<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p>What We Do</p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>',NULL,NULL),(9,85,1,'2019-12-04 20:12:54','2019-12-04 20:12:54','9da31bd5-ef68-49f4-98ed-b8fa1521050e','<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><br /></p><p><strong>What We Do</strong></p><p><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>',NULL,NULL),(10,86,1,'2019-12-04 20:14:55','2019-12-05 00:39:38','4fab88db-7771-4d97-9ab9-35fba43afa8e','<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</strong></em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(11,88,1,'2019-12-04 20:14:55','2019-12-04 20:14:55','faf66dd9-48a3-437e-8cf9-0a5e0f66ed0b','<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><br /></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org </strong></p><p>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(12,90,1,'2019-12-04 20:15:27','2019-12-04 20:15:27','8847de32-99fc-46ea-9928-18a17e33c9a1','<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p><br /></p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p><br /></p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org </strong></p><p><br /></p><p>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(13,92,1,'2019-12-04 20:15:40','2019-12-04 20:15:40','482294f4-0a24-4dac-bffe-154bdfa329b1','<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><br /></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org </strong></p><p>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(14,94,1,'2019-12-04 20:15:54','2019-12-04 20:15:54','9a5a633c-f35a-4caf-bf64-da9b11c46e5c','<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p><br /></p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p><br /></p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org </strong></p><p><br /></p><p>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(15,96,1,'2019-12-04 20:16:00','2019-12-04 20:16:00','af50ba59-3660-4fd2-a49d-8a45cd303437','<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org </strong></p><p>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(16,98,1,'2019-12-04 20:16:10','2019-12-04 20:16:10','db6ec3d9-508b-47df-8ddb-1b02eb157728','<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p><br /></p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p><br /></p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><br /></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(17,137,1,'2019-12-04 21:17:12','2019-12-04 21:17:12','4089e9b6-e84a-44e7-9d38-0b2de9b2b570','<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong>What We Do</strong></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>',NULL,NULL),(18,139,1,'2019-12-04 21:17:49','2019-12-04 21:17:49','bd288cd6-8cbc-41c7-a4c3-6ff03d0cfd5a','<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong><br /></strong></p><p><strong>What We Do</strong></p><p><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>',NULL,NULL),(19,142,1,'2019-12-04 21:20:50','2019-12-04 21:20:50','4173636c-9278-4630-8fef-fe0c24863e03','<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong><br /></strong></p><p><strong>What We Do</strong></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>',NULL,NULL),(20,145,1,'2019-12-04 21:25:10','2019-12-04 21:25:10','f9f259b0-4d45-4a44-8ba3-23b37fdd0a5e','<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(21,147,1,'2019-12-04 21:34:09','2019-12-04 21:34:09','5291b9b7-e630-4f08-97cc-f583d5011e65','<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p><br /></p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p><br /></p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><br /></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(22,149,1,'2019-12-04 21:34:17','2019-12-04 21:34:17','9588bccc-d019-46a7-8eec-c258d4783ea6','<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(23,151,1,'2019-12-04 21:34:34','2019-12-04 21:34:34','ecf051c6-22d5-49ca-b834-284a033289fd','<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</strong></em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(24,153,1,'2019-12-05 00:37:13','2019-12-05 00:37:13','264a12eb-4456-4767-ab5f-cdb3ea9cb808','<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong><br /></strong></p><p><strong>What We Do</strong></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>',NULL,NULL),(25,155,1,'2019-12-05 00:37:17','2019-12-05 00:37:17','172d92d0-566e-413f-91b3-d9af7c5ca85d','<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</strong></em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL),(26,158,1,'2019-12-05 00:39:38','2019-12-05 00:39:38','569176ae-599f-4e4f-a1dc-47ddd425ad83','<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</strong></em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>',NULL,NULL);
/*!40000 ALTER TABLE `craft_matrixcontent_entryfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_migrations`
--

DROP TABLE IF EXISTS `craft_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `type` enum('app','plugin','content') NOT NULL DEFAULT 'app',
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_migrations_pluginId_idx` (`pluginId`),
  KEY `craft_migrations_type_pluginId_idx` (`type`,`pluginId`),
  CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_migrations`
--

LOCK TABLES `craft_migrations` WRITE;
/*!40000 ALTER TABLE `craft_migrations` DISABLE KEYS */;
INSERT INTO `craft_migrations` VALUES (1,NULL,'app','Install','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','22df9c43-1a06-40f2-b96a-ad43503f19dd'),(2,NULL,'app','m150403_183908_migrations_table_changes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','fc0b65b1-26fa-4204-9f66-8697c93cc807'),(3,NULL,'app','m150403_184247_plugins_table_changes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','454f1170-13f7-4822-a08e-1fa91152881e'),(4,NULL,'app','m150403_184533_field_version','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','310cca35-b038-48bd-9e40-828f854ecf3a'),(5,NULL,'app','m150403_184729_type_columns','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','12e7a48d-d250-42d3-abcf-83aee15d3ed6'),(6,NULL,'app','m150403_185142_volumes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','d526fdd8-af7f-494a-b495-40dd3e6e96d0'),(7,NULL,'app','m150428_231346_userpreferences','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','8c435649-509d-4664-b544-15b1370ef94b'),(8,NULL,'app','m150519_150900_fieldversion_conversion','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','326cbf58-d00e-4565-a5a7-b7b722b607ec'),(9,NULL,'app','m150617_213829_update_email_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','91ac98dc-fdcf-409b-9a9d-f667531b5bd0'),(10,NULL,'app','m150721_124739_templatecachequeries','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','d1f4ca06-c914-408e-8dc5-d1056e97a845'),(11,NULL,'app','m150724_140822_adjust_quality_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','8883eba8-b9af-4262-815d-0a54d43defc1'),(12,NULL,'app','m150815_133521_last_login_attempt_ip','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','cece4ac9-13a0-4a81-8160-d01b35e7a016'),(13,NULL,'app','m151002_095935_volume_cache_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','0bed8ce8-d392-4683-92f9-1caa65110d60'),(14,NULL,'app','m151005_142750_volume_s3_storage_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','3670cf99-b1fc-4114-af54-a750d4cc04bd'),(15,NULL,'app','m151016_133600_delete_asset_thumbnails','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','a5b28fb5-668e-4cdb-a35a-648b31d3b042'),(16,NULL,'app','m151209_000000_move_logo','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','9a5c0d8d-f183-494c-838d-969e29c056b6'),(17,NULL,'app','m151211_000000_rename_fileId_to_assetId','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','d9e38ec3-ff6a-4de2-89a5-980d978d093e'),(18,NULL,'app','m151215_000000_rename_asset_permissions','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','976586f5-f8b5-4e07-bf5a-a0edb43f5fc2'),(19,NULL,'app','m160707_000001_rename_richtext_assetsource_setting','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','0caecd35-5a89-431d-9092-f1cda6b0cea0'),(20,NULL,'app','m160708_185142_volume_hasUrls_setting','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','d8f77aa5-8a24-4006-afcd-6e26ef18497e'),(21,NULL,'app','m160714_000000_increase_max_asset_filesize','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','381525e5-f06c-4cb3-b87e-b82b31bab7ff'),(22,NULL,'app','m160727_194637_column_cleanup','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','be2bbc67-40a7-4e3b-920c-305f78a554ad'),(23,NULL,'app','m160804_110002_userphotos_to_assets','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','bdbe885d-a23f-4f34-afee-d4576e155505'),(24,NULL,'app','m160807_144858_sites','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','04ec4d9b-7fbe-4946-baa5-08178ed25696'),(25,NULL,'app','m160829_000000_pending_user_content_cleanup','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','d2099eec-e5d0-4503-bb1b-687df2c822d8'),(26,NULL,'app','m160830_000000_asset_index_uri_increase','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','c04a9807-9adf-4135-91a8-04ebf631732d'),(27,NULL,'app','m160912_230520_require_entry_type_id','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','3c974e30-c7b9-4959-8e4f-f9db3ac583af'),(28,NULL,'app','m160913_134730_require_matrix_block_type_id','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','cbc1cbb3-fd8b-443a-8a46-9c7d3972a0c8'),(29,NULL,'app','m160920_174553_matrixblocks_owner_site_id_nullable','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','353d15b1-d6c6-47fb-a6b5-07c496d7bfe5'),(30,NULL,'app','m160920_231045_usergroup_handle_title_unique','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','e8eb88ae-1181-4be3-85c2-a0ee7232a8da'),(31,NULL,'app','m160925_113941_route_uri_parts','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','43982a3c-edff-4d7b-a6b6-4ed536393e7e'),(32,NULL,'app','m161006_205918_schemaVersion_not_null','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','6981876a-629b-45c0-839a-621561fd853e'),(33,NULL,'app','m161007_130653_update_email_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','f005f734-7f45-433f-89a7-6a7ff23fb041'),(34,NULL,'app','m161013_175052_newParentId','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','e8114ded-a0ad-4a0e-ae7c-52f1d754517f'),(35,NULL,'app','m161021_102916_fix_recent_entries_widgets','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','87e4133f-fcde-477f-9cce-f9cb88141a47'),(36,NULL,'app','m161021_182140_rename_get_help_widget','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','550a2c2e-20b3-42fe-b765-f9c336c79818'),(37,NULL,'app','m161025_000000_fix_char_columns','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','44bdec31-695b-495b-ab34-db8d85d848cc'),(38,NULL,'app','m161029_124145_email_message_languages','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','f9fa437d-1928-4dc7-a24e-5c89d6a0e89c'),(39,NULL,'app','m161108_000000_new_version_format','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','a4ccd767-e398-4d4a-ba0f-ecb661365db6'),(40,NULL,'app','m161109_000000_index_shuffle','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','9e37bead-28de-4db3-b4e7-5b9641e1408c'),(41,NULL,'app','m161122_185500_no_craft_app','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','9caccafc-543e-47cc-98d0-ec3593b1ee9d'),(42,NULL,'app','m161125_150752_clear_urlmanager_cache','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','075a2beb-4911-4267-b343-bdcaa3fd08eb'),(43,NULL,'app','m161220_000000_volumes_hasurl_notnull','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','e9965816-1218-4f31-bf97-adf4ce2a7fb0'),(44,NULL,'app','m170114_161144_udates_permission','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','dc66a3a3-d1a4-4663-929f-4ae62219ef75'),(45,NULL,'app','m170120_000000_schema_cleanup','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','8f2f255a-dd47-47f8-a7bf-30aab1248788'),(46,NULL,'app','m170126_000000_assets_focal_point','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','88e64407-b46f-43e3-b233-469698cbc256'),(47,NULL,'app','m170206_142126_system_name','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','8110c47c-d51d-4b7b-9c28-67cc2f34df62'),(48,NULL,'app','m170217_044740_category_branch_limits','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','3b7e4e8e-93f3-4255-9910-1d25430b5938'),(49,NULL,'app','m170217_120224_asset_indexing_columns','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','f29c3829-22e1-420b-8acf-fa8a8b709688'),(50,NULL,'app','m170223_224012_plain_text_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','b6e3ae07-57e8-4a80-9f69-2304081fd4ff'),(51,NULL,'app','m170227_120814_focal_point_percentage','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','2d45c3a5-f307-46ad-a6d6-7b89c8ad95f4'),(52,NULL,'app','m170228_171113_system_messages','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','ee19aa04-0da2-41e8-9fac-0d7fd5bd65fd'),(53,NULL,'app','m170303_140500_asset_field_source_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','84ba26bd-4d15-42d0-bcd1-842afed0e95a'),(54,NULL,'app','m170306_150500_asset_temporary_uploads','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','e4c1f0dc-82a4-460b-b392-33d38fa7665d'),(55,NULL,'app','m170523_190652_element_field_layout_ids','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','22e94f5f-b279-453e-9e57-3d298897ec26'),(56,NULL,'app','m170612_000000_route_index_shuffle','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','7e18ebe2-3d87-4c62-aa43-3cf328f1406d'),(57,NULL,'app','m170621_195237_format_plugin_handles','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','5fc50f80-d96e-4100-9d7b-2fe207a948f0'),(58,NULL,'app','m170630_161027_deprecation_line_nullable','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','8a989e73-ef26-400d-9942-71e523af7e91'),(59,NULL,'app','m170630_161028_deprecation_changes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','d941dea2-6498-4bce-be96-29ac08af6d86'),(60,NULL,'app','m170703_181539_plugins_table_tweaks','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','7cce04a2-b482-441e-af06-8f1204b4bfb4'),(61,NULL,'app','m170704_134916_sites_tables','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','62fec5ab-2c5a-4dc3-8cfc-015c70f8dc90'),(62,NULL,'app','m170706_183216_rename_sequences','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','9b223eac-47b4-4e65-8b53-d7b550bf982c'),(63,NULL,'app','m170707_094758_delete_compiled_traits','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','57a44858-ec2e-4617-9966-4f00581dbd87'),(64,NULL,'app','m170731_190138_drop_asset_packagist','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','f450be7c-8c07-4683-89f9-9b60b2e387e0'),(65,NULL,'app','m170810_201318_create_queue_table','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','e6aae344-8829-4b59-8398-0f4fc3e39ccc'),(66,NULL,'app','m170816_133741_delete_compiled_behaviors','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','0bce94f9-65db-4290-8c33-cbb815c52902'),(67,NULL,'app','m170903_192801_longblob_for_queue_jobs','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','1cda6f04-9e9f-4f3b-a9d9-a9baded28092'),(68,NULL,'app','m170914_204621_asset_cache_shuffle','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','6dcc5e53-d26c-4d90-b21a-be4462e158da'),(69,NULL,'app','m171011_214115_site_groups','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','cec0e927-8b40-45de-bf32-f9b142964bd6'),(70,NULL,'app','m171012_151440_primary_site','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','f8ead728-a5c8-4c7d-8abe-dcc9c1e961d4'),(71,NULL,'app','m171013_142500_transform_interlace','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','cda4eb2f-eff0-4583-a959-f9fe3b0eaefe'),(72,NULL,'app','m171016_092553_drop_position_select','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','e9f88bc3-3479-42c4-b57b-e0eb506391d3'),(73,NULL,'app','m171016_221244_less_strict_translation_method','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','ae8e7fe2-d3df-4237-a141-3ba3b0d50501'),(74,NULL,'app','m171107_000000_assign_group_permissions','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','e7f05205-d191-4185-a1d2-36cafea45bdb'),(75,NULL,'app','m171117_000001_templatecache_index_tune','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','cc0f4e18-2eac-4543-9335-5fd51fa87c6f'),(76,NULL,'app','m171126_105927_disabled_plugins','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','cf03b9e5-7676-42bc-9fa8-f8e0225bd04b'),(77,NULL,'app','m171130_214407_craftidtokens_table','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','3b310f99-73a7-4187-b244-9641306cd53c'),(78,NULL,'app','m171202_004225_update_email_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','86cf350d-1533-45fd-b93a-b9d7c02599ec'),(79,NULL,'app','m171204_000001_templatecache_index_tune_deux','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','a41f5442-7d6f-4029-8f17-c15ffb676a98'),(80,NULL,'app','m171205_130908_remove_craftidtokens_refreshtoken_column','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','0f56ac9a-7ad7-4ddb-8ec3-62529a3c495f'),(81,NULL,'app','m171218_143135_longtext_query_column','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','cce96fae-b2d1-40fb-b06a-bc5593d5ef6d'),(82,NULL,'app','m171231_055546_environment_variables_to_aliases','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','4889f5d0-ae2b-4ed0-bbb0-6c5ee28bb747'),(83,NULL,'app','m180113_153740_drop_users_archived_column','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','05c9eb12-43ed-4e74-a871-3fb601780215'),(84,NULL,'app','m180122_213433_propagate_entries_setting','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','ff2cf009-e264-4b48-9852-a451f0e87215'),(85,NULL,'app','m180124_230459_fix_propagate_entries_values','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','10f1b0c1-f4cb-40b6-a448-be73401eee68'),(86,NULL,'app','m180128_235202_set_tag_slugs','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','cf272a26-5d26-4c87-b5af-1fa2c8bc9892'),(87,NULL,'app','m180202_185551_fix_focal_points','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','d53871a5-5567-46bd-9ac0-8ea24845de8f'),(88,NULL,'app','m180217_172123_tiny_ints','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','c0e33b81-5ab9-4161-8efd-791d4b96b74a'),(89,NULL,'app','m180321_233505_small_ints','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','8aeedb66-f33c-465e-9c01-c7677aa049e9'),(90,NULL,'app','m180328_115523_new_license_key_statuses','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','1658f750-ba54-4727-b694-9829bc4a7800'),(91,NULL,'app','m180404_182320_edition_changes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','34d23bae-4a8a-4b86-a50c-026c466da7ba'),(92,NULL,'app','m180411_102218_fix_db_routes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','0c56c4d4-e12f-44e9-bb42-a0563692a035'),(93,NULL,'app','m180416_205628_resourcepaths_table','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','16d6f623-82b3-416f-9692-304cb5042b61'),(94,NULL,'app','m180418_205713_widget_cleanup','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','876874df-1afb-4254-af86-69c46b414abc'),(95,NULL,'app','m180425_203349_searchable_fields','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','daf14293-0144-4b33-bc92-16eb9c73b70e'),(96,NULL,'app','m180516_153000_uids_in_field_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','bbe5ab7f-6b69-4dc5-9351-7ef77d906c69'),(97,NULL,'app','m180517_173000_user_photo_volume_to_uid','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','f515dfcf-9411-4fdc-9b3e-0ff084ed790a'),(98,NULL,'app','m180518_173000_permissions_to_uid','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','fdb95efc-7617-4ca4-bde3-cf90ff253418'),(99,NULL,'app','m180520_173000_matrix_context_to_uids','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','21b751de-cda5-47c5-9291-083248092420'),(100,NULL,'app','m180521_173000_initial_yml_and_snapshot','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','74a63a82-4efb-4f87-9334-8bc044da1b05'),(101,NULL,'app','m180731_162030_soft_delete_sites','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','d02265fa-2c22-4e30-87f3-534373c5662f'),(102,NULL,'app','m180810_214427_soft_delete_field_layouts','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','6057ead9-bd6c-49c6-8ec9-c31d80408807'),(103,NULL,'app','m180810_214439_soft_delete_elements','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','ce76f46f-a1d9-48ff-b5f8-6769accf2cf1'),(104,NULL,'app','m180824_193422_case_sensitivity_fixes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','aa32ee8a-d09e-4fdf-9514-027fd5a6520d'),(105,NULL,'app','m180901_151639_fix_matrixcontent_tables','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','18249c8d-c089-47cc-92ee-64104be536b3'),(106,NULL,'app','m180904_112109_permission_changes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','502e9371-ea99-4499-a6d8-d4c2c49fb806'),(107,NULL,'app','m180910_142030_soft_delete_sitegroups','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','33477eeb-fd70-45f6-988f-b036de71236e'),(108,NULL,'app','m181011_160000_soft_delete_asset_support','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','50a15edf-6641-48de-91f4-a8477e93392b'),(109,NULL,'app','m181016_183648_set_default_user_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','166f1cb7-b312-44e0-a140-58eb792d99bf'),(110,NULL,'app','m181017_225222_system_config_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','f2783982-cfd4-4f19-ba91-a8d9cd61b730'),(111,NULL,'app','m181018_222343_drop_userpermissions_from_config','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','96b21c99-dab6-4e72-9897-1f7df8907f81'),(112,NULL,'app','m181029_130000_add_transforms_routes_to_config','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','9ac34744-90c7-4763-9172-1c3f8759857f'),(113,NULL,'app','m181112_203955_sequences_table','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','f3c597b9-1d58-4e79-8ca9-7893be252d7d'),(114,NULL,'app','m181121_001712_cleanup_field_configs','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','50091958-5ad9-4687-bc83-490cb8b91151'),(115,NULL,'app','m181128_193942_fix_project_config','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','cf59bd08-2746-4ed3-97e9-03b8b4012031'),(116,NULL,'app','m181130_143040_fix_schema_version','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','42ab0e99-dcf6-45a9-9aef-22a5f3e225f1'),(117,NULL,'app','m181211_143040_fix_entry_type_uids','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','9e79c1fa-5162-46c1-a4a4-e6d24ed5d8af'),(118,NULL,'app','m181213_102500_config_map_aliases','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','ea290e07-2e2f-4122-b06a-dfa4c017c275'),(119,NULL,'app','m181217_153000_fix_structure_uids','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','5e85b4fe-94bb-422c-ad52-556bc768d380'),(120,NULL,'app','m190104_152725_store_licensed_plugin_editions','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','9319982d-5bf9-4fa0-be9b-3383f576a906'),(121,NULL,'app','m190108_110000_cleanup_project_config','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','38480536-29f8-4948-b0e9-928556da7ad2'),(122,NULL,'app','m190108_113000_asset_field_setting_change','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','248fc302-187e-44d4-b284-951e329faa81'),(123,NULL,'app','m190109_172845_fix_colspan','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','a0aaf86d-4fc2-48fc-bb98-07d9dfc46200'),(124,NULL,'app','m190110_150000_prune_nonexisting_sites','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','ee0fa222-9fc3-45df-a14d-208af05a5b2d'),(125,NULL,'app','m190110_214819_soft_delete_volumes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','6baedb94-33ef-44d2-bc32-4014785594d1'),(126,NULL,'app','m190112_124737_fix_user_settings','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','c44bb85e-36f5-4ebe-88f2-a9c7b46f9a53'),(127,NULL,'app','m190112_131225_fix_field_layouts','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','9203af17-c1e5-4aa6-962d-286cf77292bf'),(128,NULL,'app','m190112_201010_more_soft_deletes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','db4661e0-252a-475f-98e2-122fa5513feb'),(129,NULL,'app','m190114_143000_more_asset_field_setting_changes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','f8bd41cf-4d55-46f8-92c6-168670a77f28'),(130,NULL,'app','m190121_120000_rich_text_config_setting','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','c7bc031f-cad4-4487-9393-43bb91a8aabc'),(131,NULL,'app','m190125_191628_fix_email_transport_password','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','08167c56-ea14-4b85-9a66-562f7ea092dc'),(132,NULL,'app','m190128_181422_cleanup_volume_folders','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','96e8f575-7fe0-4db1-9fb5-8280ec0cb92c'),(133,NULL,'app','m190205_140000_fix_asset_soft_delete_index','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','79905ae9-7539-48ab-b254-2edf7d30fb43'),(134,NULL,'app','m190208_140000_reset_project_config_mapping','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','9eda9a98-abed-45c7-b2c7-8f3bfebd5303'),(135,NULL,'app','m190218_143000_element_index_settings_uid','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','d7458a04-a980-457d-8e11-1d817601ea9f'),(136,NULL,'app','m190312_152740_element_revisions','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','42fd6531-ddc1-4477-a854-20e334a20201'),(137,NULL,'app','m190327_235137_propagation_method','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','68809a10-f1f7-45f5-84a5-311653a8586e'),(138,NULL,'app','m190401_223843_drop_old_indexes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','021faef1-06a5-4ee2-9974-bfc414d156f3'),(139,NULL,'app','m190416_014525_drop_unique_global_indexes','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','b524946b-2859-4de4-9cc6-fa75d602925c'),(140,NULL,'app','m190417_085010_add_image_editor_permissions','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','6bcef71a-46db-46d2-8f29-3b2a00816b81'),(141,NULL,'app','m190502_122019_store_default_user_group_uid','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','31a18f77-1db0-4963-b35e-090f28696881'),(142,NULL,'app','m190504_150349_preview_targets','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','cfeb26b3-b658-4f2f-9bb4-e3dbe02680b4'),(143,NULL,'app','m190516_184711_job_progress_label','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','2aa6d152-0170-4170-854e-3cee154a644b'),(144,NULL,'app','m190523_190303_optional_revision_creators','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','9f210fc6-7d63-4892-bf46-52a526626b0d'),(145,NULL,'app','m190529_204501_fix_duplicate_uids','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','bc0e324a-ffea-4611-a37f-9c89b14fa9f3'),(146,NULL,'app','m190605_223807_unsaved_drafts','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','e2fed87b-4c4e-4ae2-b5e4-de20bb0112f8'),(147,NULL,'app','m190607_230042_entry_revision_error_tables','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','6909aff6-1fc1-48c7-9d52-ce5cf8649e8a'),(148,NULL,'app','m190608_033429_drop_elements_uid_idx','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','8cc92d2f-2c9d-4555-8c61-cf79c65449b0'),(149,NULL,'app','m190617_164400_add_gqlschemas_table','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','108abe88-b664-4608-b4d1-c509cfdbacd1'),(150,NULL,'app','m190624_234204_matrix_propagation_method','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','e3139232-df2a-4b77-ab80-cd829ee82d5f'),(151,NULL,'app','m190711_153020_drop_snapshots','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','dc1f9f2f-ac2c-4386-87d8-37f0ea7190c9'),(152,NULL,'app','m190712_195914_no_draft_revisions','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','87ba996c-87c0-4626-8eca-710d0ea8b975'),(153,NULL,'app','m190723_140314_fix_preview_targets_column','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','5860167b-e77b-4f8b-bb59-4ede5942389e'),(154,NULL,'app','m190820_003519_flush_compiled_templates','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','3f7996d0-9d3e-423d-98e5-a5c03faf6190'),(155,NULL,'app','m190823_020339_optional_draft_creators','2019-11-16 18:40:29','2019-11-16 18:40:29','2019-11-16 18:40:29','e01b693c-85ab-430b-86ff-5cde62abe9cc'),(156,1,'plugin','m180430_204710_remove_old_plugins','2019-11-23 17:26:10','2019-11-23 17:26:10','2019-11-23 17:26:10','6c3ff201-179f-4083-9010-327f0c27aeed'),(157,1,'plugin','Install','2019-11-23 17:26:10','2019-11-23 17:26:10','2019-11-23 17:26:10','f149224b-f2f7-41e3-aaf1-0d12247a84cd'),(158,1,'plugin','m190225_003922_split_cleanup_html_settings','2019-11-23 17:26:10','2019-11-23 17:26:10','2019-11-23 17:26:10','75c046d5-1366-449c-8c2b-d9c6b7bf0518');
/*!40000 ALTER TABLE `craft_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_plugins`
--

DROP TABLE IF EXISTS `craft_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_plugins_handle_unq_idx` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_plugins`
--

LOCK TABLES `craft_plugins` WRITE;
/*!40000 ALTER TABLE `craft_plugins` DISABLE KEYS */;
INSERT INTO `craft_plugins` VALUES (1,'redactor','2.4.0','2.3.0','unknown',NULL,'2019-11-23 17:26:10','2019-11-23 17:26:10','2019-12-05 02:58:44','990171d0-3761-4133-af78-8842df56648a'),(2,'imager','v2.3.0','2.0.0','unknown',NULL,'2019-11-23 20:43:55','2019-11-23 20:43:55','2019-12-05 02:58:44','ce78e4a2-d615-4273-a1f8-2ee185b55230'),(3,'constant-contact','0.1.2','0.0.1','unknown',NULL,'2019-12-04 04:45:19','2019-12-04 04:45:19','2019-12-04 04:45:22','b6151e78-3c92-43ce-bf40-db92d33eb73e');
/*!40000 ALTER TABLE `craft_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_queue`
--

DROP TABLE IF EXISTS `craft_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) unsigned NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text,
  PRIMARY KEY (`id`),
  KEY `craft_queue_fail_timeUpdated_timePushed_idx` (`fail`,`timeUpdated`,`timePushed`),
  KEY `craft_queue_fail_timeUpdated_delay_idx` (`fail`,`timeUpdated`,`delay`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_queue`
--

LOCK TABLES `craft_queue` WRITE;
/*!40000 ALTER TABLE `craft_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_relations`
--

DROP TABLE IF EXISTS `craft_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  KEY `craft_relations_sourceId_idx` (`sourceId`),
  KEY `craft_relations_targetId_idx` (`targetId`),
  KEY `craft_relations_sourceSiteId_idx` (`sourceSiteId`),
  CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_relations`
--

LOCK TABLES `craft_relations` WRITE;
/*!40000 ALTER TABLE `craft_relations` DISABLE KEYS */;
INSERT INTO `craft_relations` VALUES (3,4,21,NULL,16,1,'2019-11-23 20:25:01','2019-11-23 20:25:01','9ba24e71-03dc-457d-b497-12a731ebd1eb'),(4,4,22,NULL,17,1,'2019-11-23 20:25:01','2019-11-23 20:25:01','91616bea-6127-474b-8c25-35a2a82f0fb8'),(7,4,24,NULL,16,1,'2019-11-23 20:54:33','2019-11-23 20:54:33','4636a609-18a1-421f-8a20-e7666ea42712'),(8,4,25,NULL,17,1,'2019-11-23 20:54:33','2019-11-23 20:54:33','bdcf698a-4016-48a7-93af-8f44419d0ef9'),(10,2,28,NULL,17,1,'2019-11-23 22:39:19','2019-11-23 22:39:19','d2f5a49f-3672-4542-9669-a215f3fc55a7'),(12,2,29,NULL,17,1,'2019-11-23 22:49:56','2019-11-23 22:49:56','70925295-8332-4912-aed5-f048f56392c5'),(14,2,30,NULL,17,1,'2019-11-23 22:51:44','2019-11-23 22:51:44','fcb5db8f-c9ff-4487-b43b-2ba2624dcbd2'),(16,2,31,NULL,17,1,'2019-11-23 22:51:59','2019-11-23 22:51:59','fff19d23-2279-452c-a18a-ca995593c2d4'),(18,2,32,NULL,17,1,'2019-11-23 22:53:05','2019-11-23 22:53:05','2ac2ea05-b013-4163-898e-4fc055267d67'),(20,2,33,NULL,17,1,'2019-11-23 22:53:15','2019-11-23 22:53:15','eeb205f6-557f-4689-9247-2e5fc0a27d5c'),(25,4,35,NULL,16,1,'2019-12-01 00:04:11','2019-12-01 00:04:11','383c94b7-a641-4ae7-abc0-ea14709c1ce2'),(26,4,36,NULL,17,1,'2019-12-01 00:04:11','2019-12-01 00:04:11','8f69c74d-d157-49c3-ba24-92ff497b38f0'),(29,4,39,NULL,16,1,'2019-12-01 00:09:15','2019-12-01 00:09:15','c6b6aced-f42e-4c28-8f59-eb1cc74e35b2'),(30,4,40,NULL,17,1,'2019-12-01 00:09:15','2019-12-01 00:09:15','851ed26d-7a38-4fc8-b765-692014050c8f'),(33,4,43,NULL,16,1,'2019-12-01 00:13:23','2019-12-01 00:13:23','90e5e887-f81a-44e5-8b1f-7fd3a4e67a03'),(34,4,44,NULL,17,1,'2019-12-01 00:13:23','2019-12-01 00:13:23','9df5848b-80a2-444f-9665-421a60cca339'),(37,4,47,NULL,16,1,'2019-12-01 00:14:59','2019-12-01 00:14:59','4aa8a707-7d6a-449b-a615-01accb31c88a'),(38,4,48,NULL,17,1,'2019-12-01 00:14:59','2019-12-01 00:14:59','22850f51-a097-448e-bb62-099ef1009ba6'),(40,2,50,NULL,17,1,'2019-12-01 00:44:38','2019-12-01 00:44:38','9ff4e387-762a-473a-9dda-d04800495848'),(42,2,51,NULL,17,1,'2019-12-01 00:44:38','2019-12-01 00:44:38','b3bfe837-7bca-422d-a012-54920b7aa15b'),(45,4,62,NULL,16,1,'2019-12-01 19:11:22','2019-12-01 19:11:22','3e2ff7a1-9d2a-4f29-a7d4-3f31565a2a45'),(46,4,63,NULL,17,1,'2019-12-01 19:11:22','2019-12-01 19:11:22','485f415b-0050-4ae8-99a6-aa5dde538124'),(49,4,66,NULL,16,1,'2019-12-04 03:38:48','2019-12-04 03:38:48','75939e1a-1710-498a-a140-070a426c420d'),(50,4,67,NULL,17,1,'2019-12-04 03:38:48','2019-12-04 03:38:48','b1a79492-a295-4e98-a2cc-1e4510b87832'),(55,2,72,NULL,17,1,'2019-12-04 20:03:31','2019-12-04 20:03:31','ee442bc7-2ed9-406b-b287-fc90976ca1a0'),(58,4,75,NULL,16,1,'2019-12-04 20:09:38','2019-12-04 20:09:38','4934db8e-273a-4102-8b6a-0bcbb7822af7'),(59,4,76,NULL,17,1,'2019-12-04 20:09:38','2019-12-04 20:09:38','8c58fe3e-84a2-47eb-b959-6ee779066b85'),(62,4,79,NULL,16,1,'2019-12-04 20:10:15','2019-12-04 20:10:15','722fc83a-dd2a-4179-a42b-8db0ba280603'),(63,4,80,NULL,17,1,'2019-12-04 20:10:15','2019-12-04 20:10:15','3f1c0bc6-432c-482d-92d3-a12e3b23a89f'),(65,2,82,NULL,17,1,'2019-12-04 20:12:28','2019-12-04 20:12:28','7949cfe4-f609-4da7-a220-8de1966af126'),(67,2,84,NULL,17,1,'2019-12-04 20:12:54','2019-12-04 20:12:54','84bae0f9-eb72-4288-8d22-212bad20cc25'),(70,4,100,NULL,16,1,'2019-12-04 20:18:01','2019-12-04 20:18:01','44d684d1-7a0d-4c4d-8f78-3c3e224210a0'),(71,4,101,NULL,17,1,'2019-12-04 20:18:01','2019-12-04 20:18:01','73d99098-174b-48bf-856e-2ace10051a4e'),(74,4,104,NULL,16,1,'2019-12-04 20:18:57','2019-12-04 20:18:57','11e8fd4a-a441-4159-be06-85feb8b680d5'),(75,4,105,NULL,17,1,'2019-12-04 20:18:57','2019-12-04 20:18:57','9f1c5e16-e866-40b7-82c1-1443f8b1ed5a'),(78,4,109,NULL,16,1,'2019-12-04 20:28:08','2019-12-04 20:28:08','f298c3bc-7421-4b43-b4e3-84b94780d609'),(79,4,110,NULL,107,1,'2019-12-04 20:28:08','2019-12-04 20:28:08','b897d063-e42c-4d93-8e55-ab1e3b3f6902'),(82,4,113,NULL,16,1,'2019-12-04 20:30:35','2019-12-04 20:30:35','1d21b621-93eb-408f-9206-88184af16574'),(83,4,114,NULL,107,1,'2019-12-04 20:30:36','2019-12-04 20:30:36','04ed1911-a48f-473f-a2b7-91a294f0ef7a'),(86,4,117,NULL,16,1,'2019-12-04 20:45:54','2019-12-04 20:45:54','84dcfd11-76a2-4920-a76c-ec523048ad08'),(87,4,118,NULL,107,1,'2019-12-04 20:45:54','2019-12-04 20:45:54','fe27007b-d70a-4c39-b09a-1d2f75120932'),(90,4,122,NULL,16,1,'2019-12-04 20:50:15','2019-12-04 20:50:15','3fc38ad7-9ff5-477b-8fcd-6f88ae1df666'),(91,4,123,NULL,107,1,'2019-12-04 20:50:15','2019-12-04 20:50:15','0fb90baf-8d4b-4f20-9af7-0324f4f70846'),(94,4,127,NULL,16,1,'2019-12-04 21:00:19','2019-12-04 21:00:19','1f26ecc6-d64e-4200-a57f-e8b58662d5bd'),(95,4,128,NULL,107,1,'2019-12-04 21:00:19','2019-12-04 21:00:19','db69bcd2-1b09-4895-bb4b-9f04b55c630d'),(96,4,18,NULL,16,1,'2019-12-04 21:08:49','2019-12-04 21:08:49','c15799e9-dc86-4d9c-997b-9aa2b79a1bc5'),(97,4,19,NULL,130,1,'2019-12-04 21:08:49','2019-12-04 21:08:49','46425af2-e6b7-4c06-bc5f-440c3dbcecec'),(98,4,132,NULL,16,1,'2019-12-04 21:08:49','2019-12-04 21:08:49','0718ef48-029c-4b37-9f1c-6ef98be91fa2'),(99,4,133,NULL,130,1,'2019-12-04 21:08:49','2019-12-04 21:08:49','7dfaac68-bea1-4eba-94e7-5bb80e951278'),(101,2,136,NULL,135,1,'2019-12-04 21:17:12','2019-12-04 21:17:12','af9f5be9-3690-4374-b656-dadc6a7254c5'),(103,2,138,NULL,135,1,'2019-12-04 21:17:49','2019-12-04 21:17:49','c3823009-e729-4b65-8a52-89eb4bb1ae7b'),(105,2,141,NULL,135,1,'2019-12-04 21:20:50','2019-12-04 21:20:50','eaf9bf46-3c13-4b17-be73-48a087a9668e'),(107,2,144,NULL,143,1,'2019-12-04 21:25:10','2019-12-04 21:25:10','8772d289-c854-405e-b914-6b64366be045'),(109,2,146,NULL,143,1,'2019-12-04 21:34:09','2019-12-04 21:34:09','cd75ec3d-1682-4058-9b9d-3872ff12893a'),(111,2,148,NULL,143,1,'2019-12-04 21:34:17','2019-12-04 21:34:17','61c3302b-bae9-4604-b6c2-9df63713429d'),(113,2,150,NULL,143,1,'2019-12-04 21:34:34','2019-12-04 21:34:34','6f421f71-e9a0-4d75-bc7a-d8e6c87e35d7'),(115,2,152,NULL,135,1,'2019-12-05 00:37:13','2019-12-05 00:37:13','912541ed-c9f3-4b9b-9c6a-b1720451dee5'),(116,2,4,NULL,135,1,'2019-12-05 00:37:13','2019-12-05 00:37:13','b6f5b7c0-2415-4e5d-96f0-fa68ba64c217'),(118,2,154,NULL,143,1,'2019-12-05 00:37:17','2019-12-05 00:37:17','4456d9f3-5a02-484b-a8d0-39c92a1736dd'),(121,2,157,NULL,143,1,'2019-12-05 00:39:38','2019-12-05 00:39:38','e0d1814e-cabd-453d-a0a2-68a798b0aca3'),(124,2,6,NULL,143,1,'2019-12-05 00:39:38','2019-12-05 00:39:38','f8b01f01-f707-45b6-98dd-9c7363bc0a1b');
/*!40000 ALTER TABLE `craft_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_resourcepaths`
--

DROP TABLE IF EXISTS `craft_resourcepaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_resourcepaths`
--

LOCK TABLES `craft_resourcepaths` WRITE;
/*!40000 ALTER TABLE `craft_resourcepaths` DISABLE KEYS */;
INSERT INTO `craft_resourcepaths` VALUES ('10d26bb9','@app/web/assets/generalsettings/dist'),('14235597','@app/web/assets/updater/dist'),('151dcc7d','@lib/selectize'),('16fb843d','@lib/axios'),('189a861e','@app/web/assets/craftsupport/dist'),('1c2cc474','@lib/jquery-ui'),('1f7188f7','@lib/xregexp'),('23bf7735','@app/web/assets/login/dist'),('2781624b','@app/web/assets/cp/dist'),('296e0a3f','@lib/vue'),('2c1e906','@app/web/assets/edituser/dist'),('31a959f0','@app/web/assets/recententries/dist'),('31c15a42','@app/web/assets/login/dist'),('35ff4f3c','@app/web/assets/cp/dist'),('3acc45c6','@app/web/assets/recententries/dist'),('3b102748','@lib/vue'),('3c6a051f','@vendor/craftcms/redactor/lib/redactor-plugins/fullscreen'),('3cb92f60','@app/web/assets/pluginstore/dist'),('40fb72a6','@lib/velocity'),('4163e1f9','@lib/picturefill'),('430aa8ac','@bower/jquery/dist'),('45fa20da','@app/web/assets/utilities/dist'),('46c7dd3b','@lib/jquery-touch-events'),('47607a8','@app/web/assets/updateswidget/dist'),('47b552b3','@app/web/assets/tablesettings/dist'),('485a94a','@lib/axios'),('4cd04e85','@app/web/assets/tablesettings/dist'),('4ce40482','@app/web/assets/feed/dist'),('4e9f3cec','@app/web/assets/utilities/dist'),('4ea2f039','@lib/jquery.payment'),('4fc6c1a8','@lib/d3'),('517485db','@bower/jquery/dist'),('52855fd1','@lib/velocity'),('5507d6f6','@app/web/assets/dbbackup/dist'),('598be007','@lib/fileupload'),('5cdcdd4e','@lib/jquery.payment'),('5e9a29f5','@app/web/assets/feed/dist'),('693d0210','@lib/fabric'),('6a4f59d5','@app/web/assets/dashboard/dist'),('6bd34bd0','@app/web/assets/deprecationerrors/dist'),('6c9a0359','@lib/element-resize-detector'),('6d28779b','@app/web/assets/fields/dist'),('6f507d9a','@app/web/assets/matrixsettings/dist'),('7047b92c','@craft/redactor/assets/field/dist'),('712f9035','@app/web/assets/routes/dist'),('75b296a4','@app/web/assets/updates/dist'),('7c7bd62e','@lib/garnishjs'),('7d2e50ed','@app/web/assets/matrixsettings/dist'),('7ee42e2e','@lib/element-resize-detector'),('81bab86f','@vendor/craftcms/redactor/lib/redactor'),('83ccd052','@lib/xregexp'),('8427debb','@app/web/assets/craftsupport/dist'),('89a094d8','@lib/selectize'),('8ab5727a','@app/web/assets/updateswidget/dist'),('91b2fd25','@lib/xregexp'),('92efb1a6','@lib/jquery-ui'),('9ae02045','@app/web/assets/updater/dist'),('9bdeb9af','@lib/selectize'),('9cb73614','@app/web/assets/installer/dist'),('9e111e6b','@app/web/assets/generalsettings/dist'),('9e83527b','@vendor/craftcms/redactor/lib/redactor-plugins/video'),('a6476114','@app/web/assets/plugins/dist'),('a9421799','@app/web/assets/cp/dist'),('a9d6a89d','@vendor/craftcms/redactor/lib/redactor-plugins/fullscreen'),('ac78aa2c','@app/web/assets/editsection/dist'),('ad7c02e7','@app/web/assets/login/dist'),('ae4ab69','@app/web/assets/craftsupport/dist'),('ae4da550','@lib/timepicker'),('b3ffff9','@vendor/craftcms/redactor/lib/redactor-plugins/video'),('b40f3014','@app/web/assets/recententries/dist'),('bc338827','@lib/timepicker'),('be06875b','@app/web/assets/editsection/dist'),('c06185eb','@lib/jquery.payment'),('c105b47a','@lib/d3'),('c42aee07','@app/web/assets/editentry/dist'),('c536b8a2','@lib/fileupload'),('c804a8e9','@lib/jquery-touch-events'),('ca82a260','@lib/prismjs'),('cb08cc33','@app/web/assets/matrix/dist'),('cb395508','@app/web/assets/utilities/dist'),('cdc9dd7e','@bower/jquery/dist'),('cfa0942b','@lib/picturefill'),('d0595c27','@app/web/assets/feed/dist'),('d1d24ac','@vendor/craftcms/redactor/lib/redactor'),('d2414589','@app/web/assets/sites/dist'),('d37b990d','@lib/d3'),('d654c370','@app/web/assets/editentry/dist'),('d74895d5','@lib/fileupload'),('d8fc8f17','@lib/prismjs'),('d976e144','@app/web/assets/matrix/dist'),('da7a859e','@lib/jquery-touch-events'),('dc462a03','@lib/velocity'),('dddeb95c','@lib/picturefill'),('e0c68e8b','@lib/garnishjs'),('e259768b','@lib/element-resize-detector'),('e3eb0249','@app/web/assets/fields/dist'),('e48c2c07','@app/web/assets/dashboard/dist'),('e52e903','@lib/jquery-ui'),('e7fe77c2','@lib/fabric'),('f131b9e','@app/web/assets/updateswidget/dist'),('f1952f3e','@app/web/assets/fields/dist'),('f2b8a3fc','@lib/garnishjs'),('f5805ab5','@lib/fabric'),('f5e31c86','@lib'),('f6f20170','@app/web/assets/dashboard/dist'),('fb71e376','@app/web/assets/updates/dist'),('fce025ef','@craft/redactor/assets/field/dist');
/*!40000 ALTER TABLE `craft_resourcepaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_revisions`
--

DROP TABLE IF EXISTS `craft_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  KEY `craft_revisions_creatorId_fk` (`creatorId`),
  CONSTRAINT `craft_revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_revisions`
--

LOCK TABLES `craft_revisions` WRITE;
/*!40000 ALTER TABLE `craft_revisions` DISABLE KEYS */;
INSERT INTO `craft_revisions` VALUES (1,2,1,1,NULL),(2,4,1,1,NULL),(3,6,1,1,NULL),(4,11,1,1,NULL),(5,11,1,2,NULL),(6,11,1,3,NULL),(7,2,1,2,NULL),(8,2,1,3,NULL),(9,2,1,4,NULL),(10,4,1,2,NULL),(11,6,1,2,NULL),(12,4,1,3,NULL),(13,4,1,4,NULL),(14,4,1,5,NULL),(15,4,1,6,NULL),(16,4,1,7,NULL),(17,4,1,8,NULL),(18,2,1,5,NULL),(19,2,1,6,NULL),(20,2,1,7,NULL),(21,2,1,8,NULL),(22,4,1,9,NULL),(23,4,1,10,NULL),(24,6,1,3,NULL),(25,4,1,11,NULL),(26,4,1,12,NULL),(27,4,1,13,NULL),(28,6,1,4,NULL),(29,2,1,9,NULL),(30,2,1,10,NULL),(31,4,1,14,'Applied “Draft 1”'),(32,2,1,11,NULL),(33,2,1,12,NULL),(34,4,1,15,NULL),(35,4,1,16,NULL),(36,6,1,5,NULL),(37,6,1,6,NULL),(38,6,1,7,NULL),(39,6,1,8,NULL),(40,6,1,9,NULL),(41,6,1,10,NULL),(42,2,1,13,NULL),(43,2,1,14,NULL),(44,2,1,15,NULL),(45,2,1,16,NULL),(46,2,1,17,NULL),(47,2,1,18,NULL),(48,2,1,19,NULL),(49,2,1,20,NULL),(50,4,1,17,NULL),(51,4,1,18,NULL),(52,4,1,19,NULL),(53,6,1,11,NULL),(54,6,1,12,NULL),(55,6,1,13,NULL),(56,6,1,14,NULL),(57,4,1,20,NULL),(58,6,1,15,NULL),(59,6,1,16,NULL);
/*!40000 ALTER TABLE `craft_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_searchindex`
--

DROP TABLE IF EXISTS `craft_searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_searchindex`
--

LOCK TABLES `craft_searchindex` WRITE;
/*!40000 ALTER TABLE `craft_searchindex` DISABLE KEYS */;
INSERT INTO `craft_searchindex` VALUES (1,'email',0,1,' jameslamarre gmail com '),(1,'fullname',0,1,''),(1,'lastname',0,1,''),(1,'firstname',0,1,''),(1,'username',0,1,' admin '),(1,'slug',0,1,''),(4,'slug',0,1,' about '),(6,'title',0,1,' get in touch '),(8,'slug',0,1,''),(8,'field',1,1,' empowering youth families and communities with gender affirming services training and research '),(9,'slug',0,1,''),(10,'slug',0,1,''),(9,'field',1,1,' 936 broadway 2nd floornyc ny 10010 212 879 4900 x370 '),(10,'field',1,1,' genderandfamilyproject '),(11,'slug',0,1,' 404 page '),(11,'title',0,1,' 404 page '),(11,'field',1,1,' this page does not exist back to home '),(16,'kind',0,1,' image '),(16,'extension',0,1,' png '),(16,'filename',0,1,' image2 png '),(16,'slug',0,1,''),(16,'title',0,1,' image2 '),(17,'kind',0,1,' image '),(17,'extension',0,1,' png '),(17,'filename',0,1,' image1 duo png '),(17,'slug',0,1,''),(17,'title',0,1,' image1 duo '),(18,'slug',0,1,''),(19,'slug',0,1,''),(18,'field',6,1,' notg video here '),(19,'field',6,1,' click here to learn more about the gender and family project '),(4,'title',0,1,' about '),(6,'slug',0,1,' get involved '),(4,'field',10,1,' the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality what we dogfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family members play group for children and tweens 5 to 14 years old support group for adolescents 14 to 18 years old spanish speaking caregiver support group family therapy and parental coaching affirmative psychological and gender evaluation training and education for educators mental health and health providers corporate training and gender literacy education for groups and organizations '),(53,'slug',0,1,''),(53,'field',11,1,' gfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family members play group for children and tweens 5 to 14 years old support group for adolescents 14 to 18 years old spanish speaking caregiver support group family therapy and parental coaching affirmative psychological and gender evaluation training and education for educators mental health and health providers corporate training and gender literacy education for groups and organizationsi m a proud member of the lgbtq community but i know that we need to do more to make sure the trans community is protected accepted and respected violence against transgender people particularly trans women of color is alarmingly high i m grateful that programs like the gender family project are providing support to transgender individuals and their families '),(18,'field',5,1,' meet gfp '),(37,'slug',0,1,''),(37,'field',9,1,' tcqecr7pi q '),(37,'field',7,1,' the gift of gender authenticity '),(37,'field',8,1,' watch gfp founder and director jean malpas give his tedx talk '),(2,'title',0,1,' home page '),(2,'slug',0,1,' home page '),(19,'field',5,1,' join the family '),(71,'slug',0,1,''),(71,'field',11,1,' the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality what we dogfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family members play group for children and tweens 5 to 14 years old support group for adolescents 14 to 18 years old spanish speaking caregiver support group family therapy and parental coaching affirmative psychological and gender evaluation training and education for educators mental health and health providers corporate training and gender literacy education for groups and organizations '),(86,'slug',0,1,''),(86,'field',11,1,' to get started with services at gfp all families must first complete our screening and intake process the first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services we will also ask you for some preliminary information about your family so that we can determine how we can best support you during the initial phone screening we can schedule you for an in person intake where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff by the end of this intake session our intake clinician and your family will come to a mutual decision about appropriate next steps if you are reaching out regarding the gender family project group and therapy services please email or call gfp program assistant at mdedini ackerman org 212 879 4900 ext 370 if you are already a client at gfp please contact alexis diaz coordinator of clinical community services at adiaz ackerman org or 212 879 4900 ext 307 if you are reaching out about gfp training and advocacy services please contact nadia swanson coordinator of training capacity building at nswanson ackerman org if you are interested in corporate or individual partnerships donations or organizing an event to support gfp please contact jane rennert coordinator of development communications at jrennert ackerman org if you are interested to learn more about our research and dissemination methods please contact elizabeth glaeser coordinator of research dissemination at lglaeser ackerman org '),(6,'field',2,1,' gfp back heart3 '),(6,'field',10,1,' to get started with services at gfp all families must first complete our screening and intake process the first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services we will also ask you for some preliminary information about your family so that we can determine how we can best support you during the initial phone screening we can schedule you for an in person intake where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff by the end of this intake session our intake clinician and your family will come to a mutual decision about appropriate next steps if you are reaching out regarding the gender family project group and therapy services please email or call gfp program assistant at mdedini ackerman org 212 879 4900 ext 370 if you are already a client at gfp please contact alexis diaz coordinator of clinical community services at adiaz ackerman org or 212 879 4900 ext 307 if you are reaching out about gfp training and advocacy services please contact nadia swanson coordinator of training capacity building at nswanson ackerman org if you are interested in corporate or individual partnerships donations or organizing an event to support gfp please contact jane rennert coordinator of development communications at jrennert ackerman org if you are interested to learn more about our research and dissemination methods please contact elizabeth glaeser coordinator of research dissemination at lglaeser ackerman org '),(18,'field',4,1,' image2 '),(107,'title',0,1,' 2017 06 25 nyc pride gender and family project 135 '),(107,'extension',0,1,' png '),(107,'kind',0,1,' image '),(107,'slug',0,1,''),(19,'field',4,1,' 2017 06 25 nyc pride gender and family project 135 2 '),(2,'field',3,1,' meet gfp image2 notg video here join the family 2017 06 25 nyc pride gender and family project 135 2 click here to learn more about the gender and family project the gift of gender authenticity watch gfp founder and director jean malpas give his tedx talk tcqecr7pi q '),(120,'filename',0,1,' 2017 06 25 nyc pride gender and family project 135 191204 205007 png '),(120,'extension',0,1,' png '),(120,'kind',0,1,' image '),(120,'slug',0,1,''),(120,'title',0,1,' 2017 06 25 nyc pride gender and family project 135 '),(107,'filename',0,1,' 2017 06 25 nyc pride gender and family project 135 png '),(125,'filename',0,1,' 2017 06 25 nyc pride gender and family project 135 191204 210012 png '),(125,'extension',0,1,' png '),(125,'kind',0,1,' image '),(125,'slug',0,1,''),(125,'title',0,1,' 2017 06 25 nyc pride gender and family project 135 '),(130,'filename',0,1,' 2017 06 25 nyc pride gender and family project 135 2 png '),(130,'extension',0,1,' png '),(130,'kind',0,1,' image '),(130,'slug',0,1,''),(130,'title',0,1,' 2017 06 25 nyc pride gender and family project 135 2 '),(135,'kind',0,1,' image '),(135,'extension',0,1,' png '),(135,'filename',0,1,' 20190118 ackerman 118 png '),(4,'field',24,1,''),(140,'filename',0,1,' 20190118 ackerman 118 191204 212044 png '),(140,'extension',0,1,' png '),(140,'kind',0,1,' image '),(140,'slug',0,1,''),(140,'title',0,1,' 20190118 ackerman 118 '),(135,'slug',0,1,''),(135,'title',0,1,' 20190118 ackerman 118 '),(143,'filename',0,1,' gfp back heart3 png '),(143,'extension',0,1,' png '),(143,'kind',0,1,' image '),(143,'slug',0,1,''),(143,'title',0,1,' gfp back heart3 '),(6,'field',24,1,''),(4,'field',2,1,' 20190118 ackerman 118 '),(156,'slug',0,1,''),(156,'field',1,1,' genderandfamily ');
/*!40000 ALTER TABLE `craft_searchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_sections`
--

DROP TABLE IF EXISTS `craft_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sections_handle_idx` (`handle`),
  KEY `craft_sections_name_idx` (`name`),
  KEY `craft_sections_structureId_idx` (`structureId`),
  KEY `craft_sections_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sections`
--

LOCK TABLES `craft_sections` WRITE;
/*!40000 ALTER TABLE `craft_sections` DISABLE KEYS */;
INSERT INTO `craft_sections` VALUES (1,NULL,'Home Page','homePage','single',1,'all',NULL,'2019-11-23 17:00:31','2019-11-23 20:21:15',NULL,'a35211f8-5bcb-4cde-bf30-d5e14d414a74'),(2,NULL,'About','aboutPage','single',1,'all',NULL,'2019-11-23 17:07:16','2019-12-05 00:37:13',NULL,'5175e050-a0d9-4e52-aee8-91944605faea'),(3,NULL,'Get In Touch','getInvolved','single',1,'all',NULL,'2019-11-23 17:07:59','2019-12-05 00:39:38',NULL,'8ffd4f78-c15f-4a61-b306-3332bc75f5c4'),(4,NULL,'404 Page','fourOhFourPage','single',1,'all',NULL,'2019-11-23 18:53:39','2019-11-23 18:54:05',NULL,'b94bc776-14fa-47f3-9e27-070ac0ed1e2d');
/*!40000 ALTER TABLE `craft_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_sections_sites`
--

DROP TABLE IF EXISTS `craft_sections_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sections_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  KEY `craft_sections_sites_siteId_idx` (`siteId`),
  CONSTRAINT `craft_sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sections_sites`
--

LOCK TABLES `craft_sections_sites` WRITE;
/*!40000 ALTER TABLE `craft_sections_sites` DISABLE KEYS */;
INSERT INTO `craft_sections_sites` VALUES (1,1,1,1,'__home__','',1,'2019-11-23 17:00:31','2019-11-23 20:21:15','f09bbfc5-1a13-4c94-a8e3-a279566fa5eb'),(2,2,1,1,'about','views/_entry',1,'2019-11-23 17:07:16','2019-12-05 00:37:13','19400732-450d-43cf-be91-263df96ec2f9'),(3,3,1,1,'get-in-touch','views/_entry',1,'2019-11-23 17:07:59','2019-12-05 00:39:38','4e094b43-1d98-4b7a-970a-9e782f7d64b6'),(4,4,1,1,'404-page','404',1,'2019-11-23 18:53:39','2019-11-23 18:54:05','94cf113b-0cdb-479d-8da0-240c89c0d49e');
/*!40000 ALTER TABLE `craft_sections_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_sequences`
--

DROP TABLE IF EXISTS `craft_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sequences`
--

LOCK TABLES `craft_sequences` WRITE;
/*!40000 ALTER TABLE `craft_sequences` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_sessions`
--

DROP TABLE IF EXISTS `craft_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_idx` (`userId`),
  CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sessions`
--

LOCK TABLES `craft_sessions` WRITE;
/*!40000 ALTER TABLE `craft_sessions` DISABLE KEYS */;
INSERT INTO `craft_sessions` VALUES (1,1,'_ky2muJE_tl7tgsp_w45vSvhePIsaKvb5X-4sHyPaIBu22Gf3zf8ZBQzwAG8VtDBDEvywh-QPR3BG9KJhIaUfw-j63zaIwNC70Kn','2019-12-04 03:38:28','2019-12-04 04:50:05','4aa876f2-8e84-413f-b6ea-f8e4d283170a'),(2,1,'0KoQK1ASTYjBcORUaVBQiQJcJ_2q-OFt_Ll0pnUqEZ_5LOopIh_LrZ48pB7hhF8Pvn-pqgqwMu1PBtpbYy5UWUekj_4y1OHn34MY','2019-12-04 03:38:33','2019-12-04 03:38:33','f6b0c763-33a3-401f-91f7-5db191762104'),(7,1,'YbzzI4o_hp27LCCIjqknC_MCWClp4gxeC-TJ_P-bb8_ShXB6Rw3Oo_OGdFuECL251tEwbTOXKwGI2o33tbrhUBHmjQaYQvwwq9yj','2019-12-04 19:33:44','2019-12-04 21:34:43','07bb6110-a20e-4d9e-8fcd-e2867ae281d3'),(9,1,'povew3oCyZnvN763x-6n1ZLVWzDES3J6McC1SrVui-n20LcEFN8JstXsN1wgxPPZ9PHcY8kslCu80C46j8RuGzdokFkGy3uhcH0a','2019-12-05 02:58:41','2019-12-05 02:58:51','6c75d697-b176-4302-992a-40c78d25e91a');
/*!40000 ALTER TABLE `craft_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_shunnedmessages`
--

DROP TABLE IF EXISTS `craft_shunnedmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`),
  CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_shunnedmessages`
--

LOCK TABLES `craft_shunnedmessages` WRITE;
/*!40000 ALTER TABLE `craft_shunnedmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_shunnedmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_sitegroups`
--

DROP TABLE IF EXISTS `craft_sitegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sitegroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sitegroups_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sitegroups`
--

LOCK TABLES `craft_sitegroups` WRITE;
/*!40000 ALTER TABLE `craft_sitegroups` DISABLE KEYS */;
INSERT INTO `craft_sitegroups` VALUES (1,'Gender Family Project','2019-11-16 18:40:28','2019-11-16 18:40:28',NULL,'51b18487-1143-446a-8d3c-0630845313c9');
/*!40000 ALTER TABLE `craft_sitegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_sites`
--

DROP TABLE IF EXISTS `craft_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sites_dateDeleted_idx` (`dateDeleted`),
  KEY `craft_sites_handle_idx` (`handle`),
  KEY `craft_sites_sortOrder_idx` (`sortOrder`),
  KEY `craft_sites_groupId_fk` (`groupId`),
  CONSTRAINT `craft_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_sitegroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sites`
--

LOCK TABLES `craft_sites` WRITE;
/*!40000 ALTER TABLE `craft_sites` DISABLE KEYS */;
INSERT INTO `craft_sites` VALUES (1,1,1,'Gender Family Project','default','en-US',1,'$DEFAULT_SITE_URL',1,'2019-11-16 18:40:28','2019-11-16 18:40:28',NULL,'35707b9d-7d83-4c03-a9d7-ac32c06e1ccb');
/*!40000 ALTER TABLE `craft_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_structureelements`
--

DROP TABLE IF EXISTS `craft_structureelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_idx` (`elementId`),
  CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_structureelements`
--

LOCK TABLES `craft_structureelements` WRITE;
/*!40000 ALTER TABLE `craft_structureelements` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_structureelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_structures`
--

DROP TABLE IF EXISTS `craft_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_structures_dateDeleted_idx` (`dateDeleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_structures`
--

LOCK TABLES `craft_structures` WRITE;
/*!40000 ALTER TABLE `craft_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_systemmessages`
--

DROP TABLE IF EXISTS `craft_systemmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_systemmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemmessages_key_language_unq_idx` (`key`,`language`),
  KEY `craft_systemmessages_language_idx` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_systemmessages`
--

LOCK TABLES `craft_systemmessages` WRITE;
/*!40000 ALTER TABLE `craft_systemmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_systemmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_taggroups`
--

DROP TABLE IF EXISTS `craft_taggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_taggroups_name_idx` (`name`),
  KEY `craft_taggroups_handle_idx` (`handle`),
  KEY `craft_taggroups_dateDeleted_idx` (`dateDeleted`),
  KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_taggroups`
--

LOCK TABLES `craft_taggroups` WRITE;
/*!40000 ALTER TABLE `craft_taggroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_taggroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_tags`
--

DROP TABLE IF EXISTS `craft_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tags_groupId_idx` (`groupId`),
  CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tags`
--

LOCK TABLES `craft_tags` WRITE;
/*!40000 ALTER TABLE `craft_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_templatecacheelements`
--

DROP TABLE IF EXISTS `craft_templatecacheelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_idx` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_idx` (`elementId`),
  CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecacheelements`
--

LOCK TABLES `craft_templatecacheelements` WRITE;
/*!40000 ALTER TABLE `craft_templatecacheelements` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_templatecacheelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_templatecachequeries`
--

DROP TABLE IF EXISTS `craft_templatecachequeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecachequeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachequeries_cacheId_idx` (`cacheId`),
  KEY `craft_templatecachequeries_type_idx` (`type`),
  CONSTRAINT `craft_templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecachequeries`
--

LOCK TABLES `craft_templatecachequeries` WRITE;
/*!40000 ALTER TABLE `craft_templatecachequeries` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_templatecachequeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_templatecaches`
--

DROP TABLE IF EXISTS `craft_templatecaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  KEY `craft_templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  KEY `craft_templatecaches_siteId_idx` (`siteId`),
  CONSTRAINT `craft_templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecaches`
--

LOCK TABLES `craft_templatecaches` WRITE;
/*!40000 ALTER TABLE `craft_templatecaches` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_templatecaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_tokens`
--

DROP TABLE IF EXISTS `craft_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tokens`
--

LOCK TABLES `craft_tokens` WRITE;
/*!40000 ALTER TABLE `craft_tokens` DISABLE KEYS */;
INSERT INTO `craft_tokens` VALUES (1,'jKZvcngfyXhRaswEcG5zkG0VFYQ9LAPW','[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":1,\"revisionId\":null}]',NULL,NULL,'2019-12-05 20:03:26','2019-12-04 20:03:26','2019-12-04 20:03:26','b25e97ea-6c99-4621-afed-5402e4976533');
/*!40000 ALTER TABLE `craft_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_usergroups`
--

DROP TABLE IF EXISTS `craft_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`),
  UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_usergroups`
--

LOCK TABLES `craft_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_usergroups_users`
--

DROP TABLE IF EXISTS `craft_usergroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_idx` (`userId`),
  CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_usergroups_users`
--

LOCK TABLES `craft_usergroups_users` WRITE;
/*!40000 ALTER TABLE `craft_usergroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_userpermissions`
--

DROP TABLE IF EXISTS `craft_userpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions`
--

LOCK TABLES `craft_userpermissions` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_userpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_userpermissions_usergroups`
--

DROP TABLE IF EXISTS `craft_userpermissions_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_idx` (`groupId`),
  CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions_usergroups`
--

LOCK TABLES `craft_userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_userpermissions_users`
--

DROP TABLE IF EXISTS `craft_userpermissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_idx` (`userId`),
  CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions_users`
--

LOCK TABLES `craft_userpermissions_users` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_userpermissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_userpreferences`
--

DROP TABLE IF EXISTS `craft_userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpreferences` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `preferences` text,
  PRIMARY KEY (`userId`),
  CONSTRAINT `craft_userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpreferences`
--

LOCK TABLES `craft_userpreferences` WRITE;
/*!40000 ALTER TABLE `craft_userpreferences` DISABLE KEYS */;
INSERT INTO `craft_userpreferences` VALUES (1,'{\"language\":\"en-US\",\"weekStartDay\":\"1\",\"enableDebugToolbarForSite\":false,\"enableDebugToolbarForCp\":false,\"showExceptionView\":false,\"profileTemplates\":false}');
/*!40000 ALTER TABLE `craft_userpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_users`
--

DROP TABLE IF EXISTS `craft_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_email_idx` (`email`),
  KEY `craft_users_username_idx` (`username`),
  KEY `craft_users_photoId_fk` (`photoId`),
  CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `craft_assets` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_users`
--

LOCK TABLES `craft_users` WRITE;
/*!40000 ALTER TABLE `craft_users` DISABLE KEYS */;
INSERT INTO `craft_users` VALUES (1,'admin',NULL,'','','jameslamarre@gmail.com','$2y$13$YNtkcn14rh3SsIXpAaPHbObxV.JxD5N0742B2HZW3kYozqRpucwcK',1,0,0,0,'2019-12-05 02:58:41',NULL,NULL,NULL,'2019-11-16 18:48:04',NULL,1,NULL,NULL,NULL,0,'2019-11-16 18:54:55','2019-11-16 18:40:29','2019-12-05 02:58:41','f418cce2-0f57-4beb-8646-42f72f6ff1d0');
/*!40000 ALTER TABLE `craft_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_volumefolders`
--

DROP TABLE IF EXISTS `craft_volumefolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_volumefolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  KEY `craft_volumefolders_parentId_idx` (`parentId`),
  KEY `craft_volumefolders_volumeId_idx` (`volumeId`),
  CONSTRAINT `craft_volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_volumefolders`
--

LOCK TABLES `craft_volumefolders` WRITE;
/*!40000 ALTER TABLE `craft_volumefolders` DISABLE KEYS */;
INSERT INTO `craft_volumefolders` VALUES (1,NULL,1,'Images','','2019-11-23 17:15:21','2019-11-23 17:15:21','09f58538-7d39-4dd2-adc8-1f77e018c545'),(2,NULL,NULL,'Temporary source',NULL,'2019-11-23 20:21:32','2019-11-23 20:21:32','debfc4d8-97d4-4b1e-a517-3aa99ecddd1b'),(3,2,NULL,'user_1','user_1/','2019-11-23 20:21:32','2019-11-23 20:21:32','9987f0d7-6109-42f6-a305-f93580c35bac');
/*!40000 ALTER TABLE `craft_volumefolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_volumes`
--

DROP TABLE IF EXISTS `craft_volumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_volumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_volumes_name_idx` (`name`),
  KEY `craft_volumes_handle_idx` (`handle`),
  KEY `craft_volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `craft_volumes_dateDeleted_idx` (`dateDeleted`),
  CONSTRAINT `craft_volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_volumes`
--

LOCK TABLES `craft_volumes` WRITE;
/*!40000 ALTER TABLE `craft_volumes` DISABLE KEYS */;
INSERT INTO `craft_volumes` VALUES (1,NULL,'Images','images','craft\\volumes\\Local',1,'assets/images/','{\"path\":\"assets/images/\"}',1,'2019-11-23 17:15:21','2019-11-23 17:15:21',NULL,'38402d41-2ff3-4e10-8f75-6cbc1edb2981');
/*!40000 ALTER TABLE `craft_volumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_widgets`
--

DROP TABLE IF EXISTS `craft_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_idx` (`userId`),
  CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_widgets`
--

LOCK TABLES `craft_widgets` WRITE;
/*!40000 ALTER TABLE `craft_widgets` DISABLE KEYS */;
INSERT INTO `craft_widgets` VALUES (1,1,'craft\\widgets\\RecentEntries',1,NULL,'{\"section\":\"*\",\"siteId\":\"1\",\"limit\":10}',1,'2019-11-16 18:54:09','2019-11-16 18:54:09','62ca001d-2064-4639-9878-ed4b6e28cffa'),(2,1,'craft\\widgets\\CraftSupport',2,NULL,'[]',1,'2019-11-16 18:54:09','2019-11-16 18:54:09','a7d4f18a-8390-46af-a44b-fc3b84c0d2ef'),(3,1,'craft\\widgets\\Updates',3,NULL,'[]',1,'2019-11-16 18:54:09','2019-11-16 18:54:09','17103f84-681a-4430-8a3c-b7812687b36c'),(4,1,'craft\\widgets\\Feed',4,NULL,'{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}',1,'2019-11-16 18:54:09','2019-11-16 18:54:09','e03f5bb9-9660-4cce-9d8e-503f5d41fddc');
/*!40000 ALTER TABLE `craft_widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05  3:00:51
