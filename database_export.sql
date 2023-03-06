CREATE DATABASE  IF NOT EXISTS `craftcms4` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `craftcms4`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: craftcms4
-- ------------------------------------------------------
-- Server version	5.7.40

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
-- Table structure for table `site1_addresses`
--

DROP TABLE IF EXISTS `site1_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_addresses` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `countryCode` varchar(255) NOT NULL,
  `administrativeArea` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `dependentLocality` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `sortingCode` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `organizationTaxId` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site1_fk_nhtkkuyfociuozbqifkfocpxsohzrgbtlsry` (`ownerId`),
  CONSTRAINT `site1_fk_auedatsotwgprzdzvyapubkcgsgnfwfmhaxx` FOREIGN KEY (`id`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_nhtkkuyfociuozbqifkfocpxsohzrgbtlsry` FOREIGN KEY (`ownerId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_addresses`
--

LOCK TABLES `site1_addresses` WRITE;
/*!40000 ALTER TABLE `site1_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_announcements`
--

DROP TABLE IF EXISTS `site1_announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT '1',
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site1_idx_ytmmtdxgfmxsynszztkabyjofccwnjppwthv` (`userId`,`unread`,`dateRead`,`dateCreated`),
  KEY `site1_idx_vfxnyheprwmyiaufvlcduytdiqurumeqmytf` (`dateRead`),
  KEY `site1_fk_pnwkfjtnekpkdtdqywzrverbsldjgmfvtbvb` (`pluginId`),
  CONSTRAINT `site1_fk_pjaggyfzkqfgofmoaotgatpbaldriweurbln` FOREIGN KEY (`userId`) REFERENCES `site1_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_pnwkfjtnekpkdtdqywzrverbsldjgmfvtbvb` FOREIGN KEY (`pluginId`) REFERENCES `site1_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_announcements`
--

LOCK TABLES `site1_announcements` WRITE;
/*!40000 ALTER TABLE `site1_announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_assetindexdata`
--

DROP TABLE IF EXISTS `site1_assetindexdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` int(11) NOT NULL,
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) unsigned DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isDir` tinyint(1) DEFAULT '0',
  `recordId` int(11) DEFAULT NULL,
  `isSkipped` tinyint(1) DEFAULT '0',
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_ompcazazjhhrubvrenajlqjipotuzvqbepqb` (`sessionId`,`volumeId`),
  KEY `site1_idx_pdqhvaqfqbfhmnvlovcfnnzwwzxqndbalygh` (`volumeId`),
  CONSTRAINT `site1_fk_dgoisowqgpsywqbmjumskujltiodippyqbha` FOREIGN KEY (`sessionId`) REFERENCES `site1_assetindexingsessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_owbohkaagyesdvqramdnwfshmnsgznbrtsuh` FOREIGN KEY (`volumeId`) REFERENCES `site1_volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_assetindexdata`
--

LOCK TABLES `site1_assetindexdata` WRITE;
/*!40000 ALTER TABLE `site1_assetindexdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_assetindexdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_assetindexingsessions`
--

DROP TABLE IF EXISTS `site1_assetindexingsessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_assetindexingsessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indexedVolumes` text,
  `totalEntries` int(11) DEFAULT NULL,
  `processedEntries` int(11) NOT NULL DEFAULT '0',
  `cacheRemoteImages` tinyint(1) DEFAULT NULL,
  `isCli` tinyint(1) DEFAULT '0',
  `actionRequired` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_assetindexingsessions`
--

LOCK TABLES `site1_assetindexingsessions` WRITE;
/*!40000 ALTER TABLE `site1_assetindexingsessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_assetindexingsessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_assets`
--

DROP TABLE IF EXISTS `site1_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `alt` text,
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site1_idx_gfdbqrinmyjzndcdfptdbkjpwwtnmxzktbdu` (`filename`,`folderId`),
  KEY `site1_idx_ilvavtpiiyovbhiiruddpuvdyipadukfgplf` (`folderId`),
  KEY `site1_idx_swetwwggbhlosefncqymdkwraugooumpoxpx` (`volumeId`),
  KEY `site1_fk_mbnutnptyqwzrnvimbxzllnbszavgjrxlput` (`uploaderId`),
  CONSTRAINT `site1_fk_fpudrdfrcvsxucxhzhksdtznqiljczkkwing` FOREIGN KEY (`id`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_jdeuzpiyusclwadubufnvcbzuzwrpdwlqliw` FOREIGN KEY (`folderId`) REFERENCES `site1_volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_mbnutnptyqwzrnvimbxzllnbszavgjrxlput` FOREIGN KEY (`uploaderId`) REFERENCES `site1_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `site1_fk_qgjawosgzenhualwjnbycvapphpceqetovfz` FOREIGN KEY (`volumeId`) REFERENCES `site1_volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_assets`
--

LOCK TABLES `site1_assets` WRITE;
/*!40000 ALTER TABLE `site1_assets` DISABLE KEYS */;
INSERT INTO `site1_assets` VALUES (7,1,1,1,'gear.jpg','image',NULL,2000,1332,551689,NULL,NULL,NULL,'2022-12-09 03:01:33','2022-12-09 03:01:33','2022-12-09 03:01:33'),(12,1,1,1,'hero.jpg','image',NULL,1500,1001,162832,NULL,NULL,NULL,'2022-12-09 03:21:43','2022-12-09 03:21:43','2022-12-09 03:21:43'),(23,1,1,1,'henry-potter.jpg','image',NULL,128,128,5426,NULL,NULL,NULL,'2022-12-09 03:59:12','2022-12-09 03:59:12','2022-12-09 03:59:12'),(24,1,1,1,'jack-starfield.jpg','image',NULL,128,128,5657,NULL,NULL,NULL,'2022-12-09 03:59:12','2022-12-09 03:59:12','2022-12-09 03:59:12'),(25,1,1,1,'sarah-bradbury.jpg','image',NULL,128,128,12498,NULL,NULL,NULL,'2022-12-09 03:59:12','2022-12-09 03:59:12','2022-12-09 03:59:12'),(73,1,1,1,'photo-1606293715325-9329879fec0f.jpg','image',NULL,2000,1332,594919,NULL,NULL,NULL,'2022-12-09 12:13:57','2022-12-09 12:13:57','2022-12-09 12:13:57'),(74,1,1,1,'vander-films-IWi2xbThF8U-unsplash.jpg','image',NULL,2000,1332,565775,NULL,NULL,NULL,'2022-12-09 12:13:57','2022-12-09 12:13:57','2022-12-09 12:13:57'),(75,1,1,1,'felix-lam-J7fxkhtOqt0-unsplash.jpg','image',NULL,2000,1332,340985,NULL,NULL,NULL,'2022-12-09 12:13:57','2022-12-09 12:13:57','2022-12-09 12:13:57'),(76,1,1,1,'forest.jpg','image',NULL,2000,1332,490394,NULL,NULL,NULL,'2022-12-09 12:13:57','2022-12-09 12:13:57','2022-12-09 12:13:57'),(77,1,1,1,'jeremy-bishop-hMHJYQlWQwU-unsplash.jpg','image',NULL,2000,1332,820955,NULL,NULL,NULL,'2022-12-09 12:13:57','2022-12-09 12:13:57','2022-12-09 12:13:57'),(78,1,1,1,'mohit-suthar-a1_tFcBSp7w-unsplash.jpg','image',NULL,2000,1332,370272,NULL,NULL,NULL,'2022-12-09 12:13:58','2022-12-09 12:13:58','2022-12-09 12:13:58'),(79,1,1,1,'mountains.jpg','image',NULL,2000,1332,999550,NULL,NULL,NULL,'2022-12-09 12:13:58','2022-12-09 12:13:58','2022-12-09 12:13:58'),(133,1,1,1,'fujifilm-x-pro2-camera.png','image',NULL,1277,705,942459,NULL,NULL,NULL,'2022-12-11 03:07:10','2022-12-11 03:07:10','2022-12-11 03:07:10');
/*!40000 ALTER TABLE `site1_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_categories`
--

DROP TABLE IF EXISTS `site1_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site1_idx_qistjsgefrpdxzuapspmuxutsnjtfzgutzmb` (`groupId`),
  KEY `site1_fk_qxupkwlvfenvdhdtdzcrrdulthedtmbhpbpz` (`parentId`),
  CONSTRAINT `site1_fk_lzkzglgwoiaryborqppgvplcxxwfeowotgwg` FOREIGN KEY (`id`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_ofbvxfwnsafduurtqwtkllaqfuigfxkilpqm` FOREIGN KEY (`groupId`) REFERENCES `site1_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_qxupkwlvfenvdhdtdzcrrdulthedtmbhpbpz` FOREIGN KEY (`parentId`) REFERENCES `site1_categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_categories`
--

LOCK TABLES `site1_categories` WRITE;
/*!40000 ALTER TABLE `site1_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_categorygroups`
--

DROP TABLE IF EXISTS `site1_categorygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_bwuptnnvafaetyajyxxnfjggbrjkkrdjqbud` (`name`),
  KEY `site1_idx_gzwsxiyzzpnejtrygxcnhozihtnoljzmcjlu` (`handle`),
  KEY `site1_idx_edsjtxlbrbsclcwyxaxtiwpkpgtktwvpntdr` (`structureId`),
  KEY `site1_idx_dwkoucqbbtxdeoguxvccbpdgfgllfxpcidwm` (`fieldLayoutId`),
  KEY `site1_idx_sxflaqtgjgvetvzoeosvrhmanpsagnyvdjlz` (`dateDeleted`),
  CONSTRAINT `site1_fk_bbhrlggxnibfnysrrocxewrbwnsoqbvikrdz` FOREIGN KEY (`structureId`) REFERENCES `site1_structures` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_hywnezeuzxejyrisnittltjytbalbbntfbtj` FOREIGN KEY (`fieldLayoutId`) REFERENCES `site1_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_categorygroups`
--

LOCK TABLES `site1_categorygroups` WRITE;
/*!40000 ALTER TABLE `site1_categorygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_categorygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_categorygroups_sites`
--

DROP TABLE IF EXISTS `site1_categorygroups_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_categorygroups_sites` (
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
  UNIQUE KEY `site1_idx_akvyknpbcdesbmdwlrpydjawdjtbswjdjiax` (`groupId`,`siteId`),
  KEY `site1_idx_uvbyaojaadriwmwrtcjyubxvroyjtjzttjon` (`siteId`),
  CONSTRAINT `site1_fk_myidyuzcddllhceeiulznlaqxmnkpjcqzijh` FOREIGN KEY (`siteId`) REFERENCES `site1_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_oxfqvdllbgqmjqjmplzhaulneccjhnsccxjt` FOREIGN KEY (`groupId`) REFERENCES `site1_categorygroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_categorygroups_sites`
--

LOCK TABLES `site1_categorygroups_sites` WRITE;
/*!40000 ALTER TABLE `site1_categorygroups_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_categorygroups_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_changedattributes`
--

DROP TABLE IF EXISTS `site1_changedattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  KEY `site1_idx_soaemtxuqhmjglsqhzylvvjvkqalxridxsvy` (`elementId`,`siteId`,`dateUpdated`),
  KEY `site1_fk_wiwvpszdqsgyhvmynlhrwifpbxentdkephoq` (`siteId`),
  KEY `site1_fk_qrehaztlczoxzditiziayoyagzsgofqzdwhk` (`userId`),
  CONSTRAINT `site1_fk_qrehaztlczoxzditiziayoyagzsgofqzdwhk` FOREIGN KEY (`userId`) REFERENCES `site1_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_wiwvpszdqsgyhvmynlhrwifpbxentdkephoq` FOREIGN KEY (`siteId`) REFERENCES `site1_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_yztqcxevbkgvtptahfvvvzrpsytidmogxnyg` FOREIGN KEY (`elementId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_changedattributes`
--

LOCK TABLES `site1_changedattributes` WRITE;
/*!40000 ALTER TABLE `site1_changedattributes` DISABLE KEYS */;
INSERT INTO `site1_changedattributes` VALUES (1,1,'fullName','2022-12-09 01:41:06',0,1),(2,1,'enabled','2022-12-09 03:49:32',0,1),(69,1,'postDate','2022-12-09 12:12:40',0,1),(69,1,'slug','2022-12-09 12:10:34',0,1),(69,1,'title','2022-12-09 12:19:56',0,1),(69,1,'uri','2022-12-09 12:10:34',0,1),(82,1,'postDate','2022-12-09 12:19:34',0,1),(82,1,'slug','2022-12-09 12:19:33',0,1),(82,1,'title','2022-12-09 12:19:49',0,1),(82,1,'uri','2022-12-09 12:19:33',0,1),(90,1,'postDate','2022-12-09 12:20:40',0,1),(90,1,'slug','2022-12-09 12:20:28',0,1),(90,1,'title','2022-12-09 12:20:28',0,1),(90,1,'uri','2022-12-09 12:20:28',0,1),(99,1,'title','2022-12-11 02:31:13',0,1),(124,1,'postDate','2022-12-11 02:55:56',0,1),(124,1,'slug','2022-12-11 02:55:54',0,1),(124,1,'title','2022-12-11 03:01:05',0,1),(124,1,'uri','2022-12-11 02:55:54',0,1),(132,1,'postDate','2022-12-11 03:08:17',0,1),(132,1,'slug','2022-12-11 03:03:05',0,1),(132,1,'title','2022-12-11 03:03:05',0,1),(132,1,'uri','2022-12-11 03:03:05',0,1);
/*!40000 ALTER TABLE `site1_changedattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_changedfields`
--

DROP TABLE IF EXISTS `site1_changedfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  KEY `site1_idx_hgeuksfqkhridyhkxpxkckvnrzwnabnlihju` (`elementId`,`siteId`,`dateUpdated`),
  KEY `site1_fk_jtdubcwqfykawmceftrrzsgfvywvtvspzapf` (`siteId`),
  KEY `site1_fk_jxxrujtrbmzzosrcwbbgvtzmovfuikipvign` (`fieldId`),
  KEY `site1_fk_ndciaotrbsbrvuktqvuofhaihtraecpidcdt` (`userId`),
  CONSTRAINT `site1_fk_homvkyyjvsmqvcxmzpfuqifvvbffyuphobuh` FOREIGN KEY (`elementId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_jtdubcwqfykawmceftrrzsgfvywvtvspzapf` FOREIGN KEY (`siteId`) REFERENCES `site1_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_jxxrujtrbmzzosrcwbbgvtzmovfuikipvign` FOREIGN KEY (`fieldId`) REFERENCES `site1_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_ndciaotrbsbrvuktqvuofhaihtraecpidcdt` FOREIGN KEY (`userId`) REFERENCES `site1_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_changedfields`
--

LOCK TABLES `site1_changedfields` WRITE;
/*!40000 ALTER TABLE `site1_changedfields` DISABLE KEYS */;
INSERT INTO `site1_changedfields` VALUES (2,1,1,'2022-12-09 03:20:29',0,1),(2,1,2,'2022-12-09 03:21:47',0,1),(2,1,3,'2022-12-09 04:02:01',0,1),(2,1,4,'2022-12-09 04:08:53',0,1),(2,1,11,'2022-12-11 02:44:54',0,1),(69,1,8,'2022-12-09 13:16:55',0,1),(69,1,9,'2022-12-09 13:16:55',0,1),(69,1,10,'2022-12-09 13:16:55',0,1),(82,1,8,'2022-12-09 13:16:55',0,1),(82,1,9,'2022-12-09 13:16:55',0,1),(82,1,10,'2022-12-09 13:16:55',0,1),(90,1,8,'2022-12-09 13:16:55',0,1),(90,1,9,'2022-12-09 13:16:55',0,1),(90,1,10,'2022-12-09 13:16:55',0,1),(124,1,9,'2022-12-11 03:54:41',0,1),(132,1,9,'2022-12-11 03:08:05',0,1),(138,1,13,'2022-12-11 03:18:05',0,1),(138,1,14,'2022-12-11 03:18:05',0,1),(139,1,13,'2022-12-11 03:18:05',0,1),(139,1,14,'2022-12-11 03:18:05',0,1);
/*!40000 ALTER TABLE `site1_changedfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_content`
--

DROP TABLE IF EXISTS `site1_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_heroTitle_qghzmhee` text,
  `field_ridersIntroContent_subbpqar` text,
  `field_richText_bzqtcdcy` text,
  `field_shortDescription_wiibycyf` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_ftpionyzhsahlfhepvkrqgrcaymojexuvcna` (`elementId`,`siteId`),
  KEY `site1_idx_tipyhjhahafnemlprzhfcgxvwsmlwrflpqbb` (`siteId`),
  KEY `site1_idx_tdcaufytgufkhzpagrgpzwrorvqwavrqmlnj` (`title`),
  CONSTRAINT `site1_fk_ruksnedmtwpwmytwtlavmamsvrczeexqivfq` FOREIGN KEY (`siteId`) REFERENCES `site1_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_xhlywyvxioxwlqrcfoignjpzxrxdvckpkdyw` FOREIGN KEY (`elementId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_content`
--

LOCK TABLES `site1_content` WRITE;
/*!40000 ALTER TABLE `site1_content` DISABLE KEYS */;
INSERT INTO `site1_content` VALUES (1,1,1,NULL,'2022-12-09 00:57:44','2022-12-11 04:48:26','7c3101f1-f937-4a11-ab11-51120f9d6094',NULL,NULL,NULL,NULL),(2,2,1,'Home','2022-12-09 01:22:42','2022-12-11 02:44:54','06bb25e5-1549-4c6b-9367-c0cbeca54551','Motorcycle Stories, Lifestyle, and Gear','<h2><strong>Meet the Riders</strong></h2>\r\n<p>Testing 1 2 3</p>',NULL,NULL),(3,3,1,'Home','2022-12-09 01:22:42','2022-12-09 01:22:42','9ebe898b-6092-493b-a9c7-1f08bd9e5001',NULL,NULL,NULL,NULL),(4,4,1,'Home','2022-12-09 01:22:42','2022-12-09 01:22:42','1e18dc98-6be9-4ef6-83f2-e9433bf3ab3b',NULL,NULL,NULL,NULL),(5,5,1,'Home','2022-12-09 01:38:06','2022-12-09 01:38:06','e437f171-4d5a-4189-b9c1-02e9998a9c7d',NULL,NULL,NULL,NULL),(7,7,1,'Gear','2022-12-09 03:01:33','2022-12-09 03:01:33','b70d36cb-e56b-4b29-b021-c898d6ba6a85',NULL,NULL,NULL,NULL),(8,8,1,'Home','2022-12-09 03:05:18','2022-12-09 03:05:18','ed7977da-c681-48c1-9c94-a6c6f80e6105','Testing',NULL,NULL,NULL),(10,10,1,'Home','2022-12-09 03:20:29','2022-12-09 03:20:29','4efeb95d-a7c4-4423-91a8-08abaa40e399','Motorcycle Stories, Lifestyle, and Gear',NULL,NULL,NULL),(12,12,1,'Hero','2022-12-09 03:21:43','2022-12-09 03:21:43','32de8c54-7ecb-4966-82ed-b9f46f8ae559',NULL,NULL,NULL,NULL),(13,13,1,'Home','2022-12-09 03:21:47','2022-12-09 03:21:47','917519e9-ed5a-4f42-813a-c913c0c7a297','Motorcycle Stories, Lifestyle, and Gear',NULL,NULL,NULL),(15,15,1,'Home','2022-12-09 03:49:08','2022-12-09 03:49:08','923fdbd8-b550-44f6-9159-3b99e67dd6a2','Motorcycle Stories, Lifestyle, and Gear',NULL,NULL,NULL),(17,17,1,'Home','2022-12-09 03:49:32','2022-12-09 03:49:32','d3e80207-ca71-4ddd-bac2-6baedf260e5e','Motorcycle Stories, Lifestyle, and Gear',NULL,NULL,NULL),(18,18,1,'Home','2022-12-09 03:58:05','2022-12-09 03:58:05','0b52a82e-c8b0-4a3f-a5d8-8783eca7ed32','Motorcycle Stories, Lifestyle, and Gear',NULL,NULL,NULL),(20,23,1,'Henry potter','2022-12-09 03:59:12','2022-12-09 03:59:12','270c2464-68d3-4e03-b4f3-1e5c3e103101',NULL,NULL,NULL,NULL),(21,24,1,'Jack starfield','2022-12-09 03:59:12','2022-12-09 03:59:12','b4d8758e-6a66-4c30-9528-11539b7cbe7c',NULL,NULL,NULL,NULL),(22,25,1,'Sarah bradbury','2022-12-09 03:59:12','2022-12-09 03:59:12','7a2c2ab3-9167-40a6-99dc-fe723e05ae5b',NULL,NULL,NULL,NULL),(23,50,1,'Home','2022-12-09 04:01:14','2022-12-09 04:01:14','f95126bd-74e0-4ba5-9352-08dee9739d61','Motorcycle Stories, Lifestyle, and Gear','<h1><strong>Meet the Riders</strong></h1>\r\n<p>Testing 1 2 3</p>',NULL,NULL),(25,55,1,'Home','2022-12-09 04:02:01','2022-12-09 04:02:01','0db8ad9d-0927-43e4-86bb-35a448129c8c','Motorcycle Stories, Lifestyle, and Gear','<h2><strong>Meet the Riders</strong></h2>\r\n<p>Testing 1 2 3</p>',NULL,NULL),(27,60,1,'Home','2022-12-09 04:08:23','2022-12-09 04:08:23','f3b9793c-e882-4451-badd-2b61b973954e','Motorcycle Stories, Lifestyle, and Gear','<h2><strong>Meet the Riders</strong></h2>\r\n<p>Testing 1 2 3</p>',NULL,NULL),(29,65,1,'Home','2022-12-09 04:08:53','2022-12-09 04:08:53','7f32bd4a-98a9-4121-838a-925c692e4459','Motorcycle Stories, Lifestyle, and Gear','<h2><strong>Meet the Riders</strong></h2>\r\n<p>Testing 1 2 3</p>',NULL,NULL),(30,69,1,'Story I Title','2022-12-09 12:10:18','2022-12-09 13:16:55','34306bc8-3d5f-4dbc-b231-eaa586cbd70d',NULL,NULL,'<h3>Lorem ipsum dolor</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas felis diam, eu volutpat ipsum mattis in. Sed ex augue, tempor non lorem at, sollicitudin pretium nunc. Fusce et est nulla. Proin rhoncus, neque nec bibendum imperdiet, massa est sollicitudin nibh, quis aliquam erat lorem vel velit. Aenean nisi metus, auctor et ullamcorper eget, facilisis sit amet ipsum. </p>\r\n<p>Donec hendrerit ex sit amet libero scelerisque auctor. Cras efficitur ex at congue faucibus. Donec sit amet eros sit amet quam vulputate finibus. Cras sed eros at est vehicula tempus a vitae leo. In id bibendum lorem, at volutpat est. Curabitur varius dui non ultricies aliquet. Integer in neque vestibulum, consequat justo eget, lacinia libero. </p>\r\n<h3>Lorem ipsum dolor</h3>\r\n<p>Integer porttitor ex ante, nec accumsan magna auctor id. Mauris accumsan euismod neque quis commodo. Nulla feugiat quam a est pulvinar sodales. Vestibulum convallis pulvinar metus, ut volutpat ex aliquam vel. Nullam ligula nisi, commodo a posuere iaculis, finibus vel lorem. Nam aliquet, mi dapibus laoreet interdum, tellus lorem venenatis mi, ac sodales lacus felis nec nisl. </p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas felis diam, eu volutpat ipsum mattis in. Sed ex augue, tempor non lorem at, sollicitudin pretium nunc.'),(31,70,1,'Story 1 Title','2022-12-09 12:12:40','2022-12-09 12:12:40','9a977f23-aa67-423d-9859-dacfeca5d242',NULL,NULL,'<h3>Lorem ipsum dolor</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas felis diam, eu volutpat ipsum mattis in. Sed ex augue, tempor non lorem at, sollicitudin pretium nunc. Fusce et est nulla. Proin rhoncus, neque nec bibendum imperdiet, massa est sollicitudin nibh, quis aliquam erat lorem vel velit. Aenean nisi metus, auctor et ullamcorper eget, facilisis sit amet ipsum. </p>\r\n<p>Donec hendrerit ex sit amet libero scelerisque auctor. Cras efficitur ex at congue faucibus. Donec sit amet eros sit amet quam vulputate finibus. Cras sed eros at est vehicula tempus a vitae leo. In id bibendum lorem, at volutpat est. Curabitur varius dui non ultricies aliquet. Integer in neque vestibulum, consequat justo eget, lacinia libero. </p>\r\n<h3>Lorem ipsum dolor</h3>\r\n<p>Integer porttitor ex ante, nec accumsan magna auctor id. Mauris accumsan euismod neque quis commodo. Nulla feugiat quam a est pulvinar sodales. Vestibulum convallis pulvinar metus, ut volutpat ex aliquam vel. Nullam ligula nisi, commodo a posuere iaculis, finibus vel lorem. Nam aliquet, mi dapibus laoreet interdum, tellus lorem venenatis mi, ac sodales lacus felis nec nisl. </p>',NULL),(33,72,1,'Story 1 Title','2022-12-09 12:13:24','2022-12-09 12:13:24','da5084c8-2b76-41d0-a1e1-f510a2e412f9',NULL,NULL,'<h3>Lorem ipsum dolor</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas felis diam, eu volutpat ipsum mattis in. Sed ex augue, tempor non lorem at, sollicitudin pretium nunc. Fusce et est nulla. Proin rhoncus, neque nec bibendum imperdiet, massa est sollicitudin nibh, quis aliquam erat lorem vel velit. Aenean nisi metus, auctor et ullamcorper eget, facilisis sit amet ipsum. </p>\r\n<p>Donec hendrerit ex sit amet libero scelerisque auctor. Cras efficitur ex at congue faucibus. Donec sit amet eros sit amet quam vulputate finibus. Cras sed eros at est vehicula tempus a vitae leo. In id bibendum lorem, at volutpat est. Curabitur varius dui non ultricies aliquet. Integer in neque vestibulum, consequat justo eget, lacinia libero. </p>\r\n<h3>Lorem ipsum dolor</h3>\r\n<p>Integer porttitor ex ante, nec accumsan magna auctor id. Mauris accumsan euismod neque quis commodo. Nulla feugiat quam a est pulvinar sodales. Vestibulum convallis pulvinar metus, ut volutpat ex aliquam vel. Nullam ligula nisi, commodo a posuere iaculis, finibus vel lorem. Nam aliquet, mi dapibus laoreet interdum, tellus lorem venenatis mi, ac sodales lacus felis nec nisl. </p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas felis diam, eu volutpat ipsum mattis in. Sed ex augue, tempor non lorem at, sollicitudin pretium nunc.'),(34,73,1,'Photo 1606293715325 9329879fec0f','2022-12-09 12:13:56','2022-12-09 12:13:56','36c94d70-e3bd-4031-821a-fedcbdb705a4',NULL,NULL,NULL,NULL),(35,74,1,'Vander films I Wi2xb Th F8 U unsplash','2022-12-09 12:13:57','2022-12-09 12:13:57','ac03c856-0266-49d6-8a70-d244323a7c7b',NULL,NULL,NULL,NULL),(36,75,1,'Felix lam J7fxkht Oqt0 unsplash','2022-12-09 12:13:57','2022-12-09 12:13:57','ca5f0f7d-504b-4e89-b87e-857a9ad9ab6a',NULL,NULL,NULL,NULL),(37,76,1,'Forest','2022-12-09 12:13:57','2022-12-09 12:13:57','fbe3baa1-82b5-4f5d-a64c-fb53415560aa',NULL,NULL,NULL,NULL),(38,77,1,'Jeremy bishop h MHJY Ql W Qw U unsplash','2022-12-09 12:13:57','2022-12-09 12:13:57','7f62f5cf-e9b4-46dc-8ae3-416d725761bd',NULL,NULL,NULL,NULL),(39,78,1,'Mohit suthar a1 t Fc B Sp7w unsplash','2022-12-09 12:13:58','2022-12-09 12:13:58','1c810291-2fb4-42bd-b8e0-be73aadc6bfe',NULL,NULL,NULL,NULL),(40,79,1,'Mountains','2022-12-09 12:13:58','2022-12-09 12:13:58','8ccb4bca-44fa-4d35-b7ba-6f877a2e2e3d',NULL,NULL,NULL,NULL),(42,81,1,'Story 1 Title','2022-12-09 12:17:40','2022-12-09 12:17:40','177e8dcf-089b-4d53-885a-3991d6f1b916',NULL,NULL,'<h3>Lorem ipsum dolor</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas felis diam, eu volutpat ipsum mattis in. Sed ex augue, tempor non lorem at, sollicitudin pretium nunc. Fusce et est nulla. Proin rhoncus, neque nec bibendum imperdiet, massa est sollicitudin nibh, quis aliquam erat lorem vel velit. Aenean nisi metus, auctor et ullamcorper eget, facilisis sit amet ipsum. </p>\r\n<p>Donec hendrerit ex sit amet libero scelerisque auctor. Cras efficitur ex at congue faucibus. Donec sit amet eros sit amet quam vulputate finibus. Cras sed eros at est vehicula tempus a vitae leo. In id bibendum lorem, at volutpat est. Curabitur varius dui non ultricies aliquet. Integer in neque vestibulum, consequat justo eget, lacinia libero. </p>\r\n<h3>Lorem ipsum dolor</h3>\r\n<p>Integer porttitor ex ante, nec accumsan magna auctor id. Mauris accumsan euismod neque quis commodo. Nulla feugiat quam a est pulvinar sodales. Vestibulum convallis pulvinar metus, ut volutpat ex aliquam vel. Nullam ligula nisi, commodo a posuere iaculis, finibus vel lorem. Nam aliquet, mi dapibus laoreet interdum, tellus lorem venenatis mi, ac sodales lacus felis nec nisl. </p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas felis diam, eu volutpat ipsum mattis in. Sed ex augue, tempor non lorem at, sollicitudin pretium nunc.'),(43,82,1,'Story II Title','2022-12-09 12:17:47','2022-12-09 13:16:55','187e272d-89f7-4973-a341-f5867da1a892',NULL,NULL,'<h3>Aliquam venenatis</h3>\r\n<p>Curabitur ac urna lacinia, ullamcorper nunc ac, molestie leo. Nam aliquam rhoncus cursus. Quisque id placerat tellus. Phasellus congue mi vel tempor facilisis. Phasellus eget mauris pulvinar, posuere velit sed, mollis dolor. Proin nec enim orci. Proin nunc leo, pretium ac velit eu, porttitor ornare felis. Nam odio lectus, porta ut molestie non, vestibulum at erat. Integer risus ligula, sodales vel aliquet in, congue id nunc. Praesent commodo est et ex posuere, ac vestibulum turpis lacinia. Morbi diam purus, dignissim vel hendrerit nec, pulvinar quis lorem. Nulla ac risus eget magna vestibulum tempus. Maecenas rutrum sem ut sapien malesuada, id varius justo posuere.</p>\r\n<h3>Maecenas rutrum sem ut sapien</h3>\r\n<p>Proin felis sapien, mollis vitae lobortis mattis, malesuada et est. Sed at neque a ex elementum accumsan. Aliquam dolor ante, malesuada sit amet blandit ac, sollicitudin in leo. Fusce pellentesque ultrices convallis. Vestibulum nec leo nisi. Donec ut vestibulum nisi. Quisque pretium leo non lacus pretium, ut molestie est pretium. Nulla ante ipsum, tristique sed commodo sit amet, aliquam in tortor. Suspendisse aliquam justo lectus, non dignissim magna convallis in. Fusce sit amet tristique nisi. </p>\r\n<p>Phasellus quis leo sit amet nisi luctus sollicitudin. Phasellus vestibulum convallis tortor. In hac habitasse platea dictumst. Donec in enim purus. Cras eu est id elit tempor vulputate. Donec efficitur elementum suscipit. In fermentum purus at mattis vestibulum. Etiam vulputate mollis nibh at gravida. </p>','Curabitur ac urna lacinia, ullamcorper nunc ac, molestie leo. Nam aliquam rhoncus cursus. Quisque id placerat tellus.'),(44,83,1,'Vestibulum nec leo nisi','2022-12-09 12:19:34','2022-12-09 12:19:34','764fd653-39f3-4e07-bd3a-1a32358def74',NULL,NULL,'<h3>Aliquam venenatis</h3>\r\n<p>Curabitur ac urna lacinia, ullamcorper nunc ac, molestie leo. Nam aliquam rhoncus cursus. Quisque id placerat tellus. Phasellus congue mi vel tempor facilisis. Phasellus eget mauris pulvinar, posuere velit sed, mollis dolor. Proin nec enim orci. Proin nunc leo, pretium ac velit eu, porttitor ornare felis. Nam odio lectus, porta ut molestie non, vestibulum at erat. Integer risus ligula, sodales vel aliquet in, congue id nunc. Praesent commodo est et ex posuere, ac vestibulum turpis lacinia. Morbi diam purus, dignissim vel hendrerit nec, pulvinar quis lorem. Nulla ac risus eget magna vestibulum tempus. Maecenas rutrum sem ut sapien malesuada, id varius justo posuere.</p>\r\n<h3>Maecenas rutrum sem ut sapien</h3>\r\n<p>Proin felis sapien, mollis vitae lobortis mattis, malesuada et est. Sed at neque a ex elementum accumsan. Aliquam dolor ante, malesuada sit amet blandit ac, sollicitudin in leo. Fusce pellentesque ultrices convallis. Vestibulum nec leo nisi. Donec ut vestibulum nisi. Quisque pretium leo non lacus pretium, ut molestie est pretium. Nulla ante ipsum, tristique sed commodo sit amet, aliquam in tortor. Suspendisse aliquam justo lectus, non dignissim magna convallis in. Fusce sit amet tristique nisi. </p>\r\n<p>Phasellus quis leo sit amet nisi luctus sollicitudin. Phasellus vestibulum convallis tortor. In hac habitasse platea dictumst. Donec in enim purus. Cras eu est id elit tempor vulputate. Donec efficitur elementum suscipit. In fermentum purus at mattis vestibulum. Etiam vulputate mollis nibh at gravida. </p>',NULL),(46,85,1,'Story II Title','2022-12-09 12:19:49','2022-12-09 12:19:49','0c4c0176-b7cb-4047-92bb-a57da2f85fb8',NULL,NULL,'<h3>Aliquam venenatis</h3>\r\n<p>Curabitur ac urna lacinia, ullamcorper nunc ac, molestie leo. Nam aliquam rhoncus cursus. Quisque id placerat tellus. Phasellus congue mi vel tempor facilisis. Phasellus eget mauris pulvinar, posuere velit sed, mollis dolor. Proin nec enim orci. Proin nunc leo, pretium ac velit eu, porttitor ornare felis. Nam odio lectus, porta ut molestie non, vestibulum at erat. Integer risus ligula, sodales vel aliquet in, congue id nunc. Praesent commodo est et ex posuere, ac vestibulum turpis lacinia. Morbi diam purus, dignissim vel hendrerit nec, pulvinar quis lorem. Nulla ac risus eget magna vestibulum tempus. Maecenas rutrum sem ut sapien malesuada, id varius justo posuere.</p>\r\n<h3>Maecenas rutrum sem ut sapien</h3>\r\n<p>Proin felis sapien, mollis vitae lobortis mattis, malesuada et est. Sed at neque a ex elementum accumsan. Aliquam dolor ante, malesuada sit amet blandit ac, sollicitudin in leo. Fusce pellentesque ultrices convallis. Vestibulum nec leo nisi. Donec ut vestibulum nisi. Quisque pretium leo non lacus pretium, ut molestie est pretium. Nulla ante ipsum, tristique sed commodo sit amet, aliquam in tortor. Suspendisse aliquam justo lectus, non dignissim magna convallis in. Fusce sit amet tristique nisi. </p>\r\n<p>Phasellus quis leo sit amet nisi luctus sollicitudin. Phasellus vestibulum convallis tortor. In hac habitasse platea dictumst. Donec in enim purus. Cras eu est id elit tempor vulputate. Donec efficitur elementum suscipit. In fermentum purus at mattis vestibulum. Etiam vulputate mollis nibh at gravida. </p>',NULL),(48,87,1,'Story I Title','2022-12-09 12:19:56','2022-12-09 12:19:56','55dcbd84-01c2-4458-b5cb-4b976478a7e3',NULL,NULL,'<h3>Lorem ipsum dolor</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas felis diam, eu volutpat ipsum mattis in. Sed ex augue, tempor non lorem at, sollicitudin pretium nunc. Fusce et est nulla. Proin rhoncus, neque nec bibendum imperdiet, massa est sollicitudin nibh, quis aliquam erat lorem vel velit. Aenean nisi metus, auctor et ullamcorper eget, facilisis sit amet ipsum. </p>\r\n<p>Donec hendrerit ex sit amet libero scelerisque auctor. Cras efficitur ex at congue faucibus. Donec sit amet eros sit amet quam vulputate finibus. Cras sed eros at est vehicula tempus a vitae leo. In id bibendum lorem, at volutpat est. Curabitur varius dui non ultricies aliquet. Integer in neque vestibulum, consequat justo eget, lacinia libero. </p>\r\n<h3>Lorem ipsum dolor</h3>\r\n<p>Integer porttitor ex ante, nec accumsan magna auctor id. Mauris accumsan euismod neque quis commodo. Nulla feugiat quam a est pulvinar sodales. Vestibulum convallis pulvinar metus, ut volutpat ex aliquam vel. Nullam ligula nisi, commodo a posuere iaculis, finibus vel lorem. Nam aliquet, mi dapibus laoreet interdum, tellus lorem venenatis mi, ac sodales lacus felis nec nisl. </p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas felis diam, eu volutpat ipsum mattis in. Sed ex augue, tempor non lorem at, sollicitudin pretium nunc.'),(50,89,1,'Story II Title','2022-12-09 12:20:15','2022-12-09 12:20:15','576af30e-87d6-4896-9541-eac8ba93cce1',NULL,NULL,'<h3>Aliquam venenatis</h3>\r\n<p>Curabitur ac urna lacinia, ullamcorper nunc ac, molestie leo. Nam aliquam rhoncus cursus. Quisque id placerat tellus. Phasellus congue mi vel tempor facilisis. Phasellus eget mauris pulvinar, posuere velit sed, mollis dolor. Proin nec enim orci. Proin nunc leo, pretium ac velit eu, porttitor ornare felis. Nam odio lectus, porta ut molestie non, vestibulum at erat. Integer risus ligula, sodales vel aliquet in, congue id nunc. Praesent commodo est et ex posuere, ac vestibulum turpis lacinia. Morbi diam purus, dignissim vel hendrerit nec, pulvinar quis lorem. Nulla ac risus eget magna vestibulum tempus. Maecenas rutrum sem ut sapien malesuada, id varius justo posuere.</p>\r\n<h3>Maecenas rutrum sem ut sapien</h3>\r\n<p>Proin felis sapien, mollis vitae lobortis mattis, malesuada et est. Sed at neque a ex elementum accumsan. Aliquam dolor ante, malesuada sit amet blandit ac, sollicitudin in leo. Fusce pellentesque ultrices convallis. Vestibulum nec leo nisi. Donec ut vestibulum nisi. Quisque pretium leo non lacus pretium, ut molestie est pretium. Nulla ante ipsum, tristique sed commodo sit amet, aliquam in tortor. Suspendisse aliquam justo lectus, non dignissim magna convallis in. Fusce sit amet tristique nisi. </p>\r\n<p>Phasellus quis leo sit amet nisi luctus sollicitudin. Phasellus vestibulum convallis tortor. In hac habitasse platea dictumst. Donec in enim purus. Cras eu est id elit tempor vulputate. Donec efficitur elementum suscipit. In fermentum purus at mattis vestibulum. Etiam vulputate mollis nibh at gravida. </p>',NULL),(51,90,1,'Story III Title','2022-12-09 12:20:22','2022-12-09 13:16:55','82f798d1-469c-4e73-89a8-a8599cb6a85b',NULL,NULL,'<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae orci vel tellus feugiat pellentesque at sed lorem. Aliquam malesuada gravida orci. Ut augue enim, pulvinar a elit sit amet, volutpat suscipit nisl. Pellentesque sed dignissim tellus. Praesent vitae risus volutpat, molestie sapien non, pretium dui. Proin elementum tortor sed purus ultricies pellentesque. Suspendisse tristique nisl in metus fermentum, vel eleifend est maximus. Mauris eu vestibulum nunc.</p>\r\n<h3>Nulla enim elit, lacinia vitae congue sed</h3>\r\n<p>Nulla enim elit, lacinia vitae congue sed, accumsan sed quam. Vestibulum gravida et justo a pharetra. Nunc facilisis ex tristique porttitor euismod. Sed vel finibus libero. Etiam eu maximus ex. Curabitur ut pellentesque dui. Aliquam ut risus nec nibh aliquet molestie. Cras condimentum sed sem ut pulvinar. Mauris fringilla vel diam non euismod. Integer ultrices velit ac venenatis molestie. Sed congue laoreet enim, ac dapibus sem suscipit in. Donec sed egestas enim.</p>\r\n<p>Sed eleifend lorem ac mollis condimentum. Sed eu vulputate quam, eu feugiat dolor. Quisque eget diam in ipsum lobortis congue. Vivamus laoreet lobortis massa quis porta. Donec sit amet tempor dolor. Nulla sed eros nunc. Aenean venenatis luctus magna et aliquam. Aliquam dapibus, eros fermentum gravida venenatis, leo ex aliquam turpis, eget volutpat purus justo at neque. Nullam condimentum dapibus nisi et tempor.</p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae orci vel tellus feugiat pellentesque at sed lorem.'),(52,91,1,'Story III Title','2022-12-09 12:20:40','2022-12-09 12:20:40','d724d80d-7c18-4d91-9d73-13bfd6671e03',NULL,NULL,NULL,NULL),(54,93,1,'Story II Title','2022-12-09 12:20:56','2022-12-09 12:20:56','be8941d8-4726-4b52-a04e-28641a5cef99',NULL,NULL,'<h3>Aliquam venenatis</h3>\r\n<p>Curabitur ac urna lacinia, ullamcorper nunc ac, molestie leo. Nam aliquam rhoncus cursus. Quisque id placerat tellus. Phasellus congue mi vel tempor facilisis. Phasellus eget mauris pulvinar, posuere velit sed, mollis dolor. Proin nec enim orci. Proin nunc leo, pretium ac velit eu, porttitor ornare felis. Nam odio lectus, porta ut molestie non, vestibulum at erat. Integer risus ligula, sodales vel aliquet in, congue id nunc. Praesent commodo est et ex posuere, ac vestibulum turpis lacinia. Morbi diam purus, dignissim vel hendrerit nec, pulvinar quis lorem. Nulla ac risus eget magna vestibulum tempus. Maecenas rutrum sem ut sapien malesuada, id varius justo posuere.</p>\r\n<h3>Maecenas rutrum sem ut sapien</h3>\r\n<p>Proin felis sapien, mollis vitae lobortis mattis, malesuada et est. Sed at neque a ex elementum accumsan. Aliquam dolor ante, malesuada sit amet blandit ac, sollicitudin in leo. Fusce pellentesque ultrices convallis. Vestibulum nec leo nisi. Donec ut vestibulum nisi. Quisque pretium leo non lacus pretium, ut molestie est pretium. Nulla ante ipsum, tristique sed commodo sit amet, aliquam in tortor. Suspendisse aliquam justo lectus, non dignissim magna convallis in. Fusce sit amet tristique nisi. </p>\r\n<p>Phasellus quis leo sit amet nisi luctus sollicitudin. Phasellus vestibulum convallis tortor. In hac habitasse platea dictumst. Donec in enim purus. Cras eu est id elit tempor vulputate. Donec efficitur elementum suscipit. In fermentum purus at mattis vestibulum. Etiam vulputate mollis nibh at gravida. </p>','Curabitur ac urna lacinia, ullamcorper nunc ac, molestie leo. Nam aliquam rhoncus cursus. Quisque id placerat tellus.'),(56,95,1,'Story III Title','2022-12-09 12:24:58','2022-12-09 12:24:58','e895b668-5936-4ea0-939f-9553726bbb89',NULL,NULL,'<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae orci vel tellus feugiat pellentesque at sed lorem. Aliquam malesuada gravida orci. Ut augue enim, pulvinar a elit sit amet, volutpat suscipit nisl. Pellentesque sed dignissim tellus. Praesent vitae risus volutpat, molestie sapien non, pretium dui. Proin elementum tortor sed purus ultricies pellentesque. Suspendisse tristique nisl in metus fermentum, vel eleifend est maximus. Mauris eu vestibulum nunc.</p>\r\n<h3>Nulla enim elit, lacinia vitae congue sed</h3>\r\n<p>Nulla enim elit, lacinia vitae congue sed, accumsan sed quam. Vestibulum gravida et justo a pharetra. Nunc facilisis ex tristique porttitor euismod. Sed vel finibus libero. Etiam eu maximus ex. Curabitur ut pellentesque dui. Aliquam ut risus nec nibh aliquet molestie. Cras condimentum sed sem ut pulvinar. Mauris fringilla vel diam non euismod. Integer ultrices velit ac venenatis molestie. Sed congue laoreet enim, ac dapibus sem suscipit in. Donec sed egestas enim.</p>\r\n<p>Sed eleifend lorem ac mollis condimentum. Sed eu vulputate quam, eu feugiat dolor. Quisque eget diam in ipsum lobortis congue. Vivamus laoreet lobortis massa quis porta. Donec sit amet tempor dolor. Nulla sed eros nunc. Aenean venenatis luctus magna et aliquam. Aliquam dapibus, eros fermentum gravida venenatis, leo ex aliquam turpis, eget volutpat purus justo at neque. Nullam condimentum dapibus nisi et tempor.</p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae orci vel tellus feugiat pellentesque at sed lorem.'),(57,96,1,'Story III Title','2022-12-09 12:25:02','2022-12-09 12:25:02','d422b277-f7e3-4543-9e76-14a2fccb2102',NULL,NULL,'<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae orci vel tellus feugiat pellentesque at sed lorem. Aliquam malesuada gravida orci. Ut augue enim, pulvinar a elit sit amet, volutpat suscipit nisl. Pellentesque sed dignissim tellus. Praesent vitae risus volutpat, molestie sapien non, pretium dui. Proin elementum tortor sed purus ultricies pellentesque. Suspendisse tristique nisl in metus fermentum, vel eleifend est maximus. Mauris eu vestibulum nunc.</p>\r\n<h3>Nulla enim elit, lacinia vitae congue sed</h3>\r\n<p>Nulla enim elit, lacinia vitae congue sed, accumsan sed quam. Vestibulum gravida et justo a pharetra. Nunc facilisis ex tristique porttitor euismod. Sed vel finibus libero. Etiam eu maximus ex. Curabitur ut pellentesque dui. Aliquam ut risus nec nibh aliquet molestie. Cras condimentum sed sem ut pulvinar. Mauris fringilla vel diam non euismod. Integer ultrices velit ac venenatis molestie. Sed congue laoreet enim, ac dapibus sem suscipit in. Donec sed egestas enim.</p>\r\n<p>Sed eleifend lorem ac mollis condimentum. Sed eu vulputate quam, eu feugiat dolor. Quisque eget diam in ipsum lobortis congue. Vivamus laoreet lobortis massa quis porta. Donec sit amet tempor dolor. Nulla sed eros nunc. Aenean venenatis luctus magna et aliquam. Aliquam dapibus, eros fermentum gravida venenatis, leo ex aliquam turpis, eget volutpat purus justo at neque. Nullam condimentum dapibus nisi et tempor.</p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae orci vel tellus feugiat pellentesque at sed lorem.'),(59,98,1,'Story II Title','2022-12-09 12:37:54','2022-12-09 12:37:54','fc2e9aa3-c586-4199-bb37-25e5ef54cb54',NULL,NULL,'<h3>Aliquam venenatis</h3>\r\n<p>Curabitur ac urna lacinia, ullamcorper nunc ac, molestie leo. Nam aliquam rhoncus cursus. Quisque id placerat tellus. Phasellus congue mi vel tempor facilisis. Phasellus eget mauris pulvinar, posuere velit sed, mollis dolor. Proin nec enim orci. Proin nunc leo, pretium ac velit eu, porttitor ornare felis. Nam odio lectus, porta ut molestie non, vestibulum at erat. Integer risus ligula, sodales vel aliquet in, congue id nunc. Praesent commodo est et ex posuere, ac vestibulum turpis lacinia. Morbi diam purus, dignissim vel hendrerit nec, pulvinar quis lorem. Nulla ac risus eget magna vestibulum tempus. Maecenas rutrum sem ut sapien malesuada, id varius justo posuere.</p>\r\n<h3>Maecenas rutrum sem ut sapien</h3>\r\n<p>Proin felis sapien, mollis vitae lobortis mattis, malesuada et est. Sed at neque a ex elementum accumsan. Aliquam dolor ante, malesuada sit amet blandit ac, sollicitudin in leo. Fusce pellentesque ultrices convallis. Vestibulum nec leo nisi. Donec ut vestibulum nisi. Quisque pretium leo non lacus pretium, ut molestie est pretium. Nulla ante ipsum, tristique sed commodo sit amet, aliquam in tortor. Suspendisse aliquam justo lectus, non dignissim magna convallis in. Fusce sit amet tristique nisi. </p>\r\n<p>Phasellus quis leo sit amet nisi luctus sollicitudin. Phasellus vestibulum convallis tortor. In hac habitasse platea dictumst. Donec in enim purus. Cras eu est id elit tempor vulputate. Donec efficitur elementum suscipit. In fermentum purus at mattis vestibulum. Etiam vulputate mollis nibh at gravida. </p>','Curabitur ac urna lacinia, ullamcorper nunc ac, molestie leo. Nam aliquam rhoncus cursus. Quisque id placerat tellus.'),(60,99,1,'Tales From the Trail','2022-12-11 02:27:25','2022-12-11 12:52:29','494a2aa4-d7eb-416e-8f01-bc1b7cfe83a4',NULL,NULL,NULL,NULL),(61,100,1,'Stories Listing','2022-12-11 02:27:25','2022-12-11 02:27:25','6fe65299-edef-434b-b7e6-a7f1e9ab38a9',NULL,NULL,NULL,NULL),(62,101,1,'Stories Listing','2022-12-11 02:27:25','2022-12-11 02:27:25','75cbc192-be6b-48a5-94b1-0dbb86741c64',NULL,NULL,NULL,NULL),(63,102,1,'Stories Listing','2022-12-11 02:27:59','2022-12-11 02:27:59','93e93812-9547-47d2-aafa-24974265658f',NULL,NULL,NULL,NULL),(64,103,1,'Stories Listing','2022-12-11 02:28:38','2022-12-11 02:28:38','6c86039c-d024-49c0-a54c-55b0f59a550e',NULL,NULL,NULL,NULL),(65,104,1,'Stories Listing','2022-12-11 02:28:38','2022-12-11 02:28:38','c2b36cb0-09dc-4bea-9d78-ee345854402e',NULL,NULL,NULL,NULL),(66,105,1,'Stories Listing','2022-12-11 02:28:39','2022-12-11 02:28:39','cc43e31b-deb2-4569-bf60-c39df5426a2e',NULL,NULL,NULL,NULL),(67,106,1,'Stories Listing','2022-12-11 02:28:39','2022-12-11 02:28:39','bec00cd6-bafc-4f21-b45b-ad34200b81f2',NULL,NULL,NULL,NULL),(68,107,1,'Stories Listing','2022-12-11 02:28:40','2022-12-11 02:28:40','821d060e-a126-49a4-bdb6-7eb943e4da59',NULL,NULL,NULL,NULL),(70,109,1,'Tales From the Trail','2022-12-11 02:31:13','2022-12-11 02:31:13','55084aa6-61b0-4478-904b-8a03d346db41',NULL,NULL,NULL,NULL),(71,110,1,'Home','2022-12-11 02:34:56','2022-12-11 02:34:56','2a24f1d2-62dc-4d05-ac52-631c0ff6a7a5','Motorcycle Stories, Lifestyle, and Gear','<h2><strong>Meet the Riders</strong></h2>\r\n<p>Testing 1 2 3</p>',NULL,NULL),(73,115,1,'Home','2022-12-11 02:35:58','2022-12-11 02:35:58','27360859-b517-4e33-8932-5e662b6bf190','Motorcycle Stories, Lifestyle, and Gear','<h2><strong>Meet the Riders</strong></h2>\r\n<p>Testing 1 2 3</p>',NULL,NULL),(75,120,1,'Home','2022-12-11 02:44:54','2022-12-11 02:44:54','a6568502-b79e-4763-88d2-ac8ed6713337','Motorcycle Stories, Lifestyle, and Gear','<h2><strong>Meet the Riders</strong></h2>\r\n<p>Testing 1 2 3</p>',NULL,NULL),(76,124,1,'Our Gear','2022-12-11 02:55:46','2022-12-11 03:54:41','d314520a-203d-4a00-9070-35175d7abd8b',NULL,NULL,'<h3>Lorem ipsum dolor sit amet</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc bibendum elementum mauris vel dapibus. Nam quis lectus gravida nulla interdum elementum. Nunc pulvinar non nulla sed lacinia. Maecenas semper enim odio, a blandit mauris dignissim eu. Quisque ac sodales augue. Proin quis enim nec dolor maximus vestibulum. Donec odio dui, congue sit amet mollis in, feugiat venenatis tellus. Quisque eu dui in ex laoreet iaculis sed vel orci. Suspendisse potenti. Aliquam eu feugiat sapien, et condimentum velit. Ut posuere ipsum non scelerisque malesuada.</p>\r\n<p>Sed cursus, arcu et tempor mattis, lacus nisl mollis tortor, et sodales nisl est venenatis ante. Nunc ac erat ultrices, finibus lectus ac, tempor mauris. Vestibulum vel ligula vel ante gravida gravida. Praesent porttitor lacus dictum ullamcorper tempus. Proin auctor venenatis convallis. Mauris laoreet non elit id sodales. Suspendisse a lacus sem. Vestibulum tincidunt, metus ut rhoncus congue, sapien tortor viverra leo, nec ornare ipsum tortor vitae magna.</p>\r\n\r\n<figure><img src=\"{asset:7:transform:contentImage||http://localhost/craftcms/uploads/_contentImage/gear.jpg}\" alt=\"\" /></figure><h3><br /></h3><h3>Donec ac risus rutrum</h3>\r\n<p>Donec ac risus rutrum, commodo lacus vel, porta magna. Nulla facilisi. Nullam vehicula dui congue, tempor urna sagittis, bibendum sem. Suspendisse aliquam feugiat porta. Nunc feugiat dui quis efficitur pretium. Pellentesque dapibus, felis at consequat ultrices, tortor urna cursus massa, quis sodales mauris velit sed diam. Donec at sodales diam. Sed non efficitur turpis. Phasellus libero mi, pellentesque sit amet sagittis vitae, consectetur sed dui. Morbi quis venenatis massa. Suspendisse vestibulum nulla sit amet mi hendrerit, id gravida turpis pellentesque. Sed et leo lacinia, iaculis justo sit amet, sodales urna. Curabitur sit amet massa mi. Proin malesuada neque eu porta sodales. Suspendisse dictum odio eget imperdiet bibendum.</p>',NULL),(77,125,1,'Our Gear','2022-12-11 02:55:56','2022-12-11 02:55:56','bace3847-cd7f-4faa-b498-10a759eaa2ff',NULL,NULL,NULL,NULL),(79,127,1,'Our Gear','2022-12-11 02:57:34','2022-12-11 02:57:34','ee6b2c76-a21a-4adf-bdb5-38f2b176fea7',NULL,NULL,'<h3>Lorem ipsum dolor sit amet</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc bibendum elementum mauris vel dapibus. Nam quis lectus gravida nulla interdum elementum. Nunc pulvinar non nulla sed lacinia. Maecenas semper enim odio, a blandit mauris dignissim eu. Quisque ac sodales augue. Proin quis enim nec dolor maximus vestibulum. Donec odio dui, congue sit amet mollis in, feugiat venenatis tellus. Quisque eu dui in ex laoreet iaculis sed vel orci. Suspendisse potenti. Aliquam eu feugiat sapien, et condimentum velit. Ut posuere ipsum non scelerisque malesuada.</p>\r\n<p>Sed cursus, arcu et tempor mattis, lacus nisl mollis tortor, et sodales nisl est venenatis ante. Nunc ac erat ultrices, finibus lectus ac, tempor mauris. Vestibulum vel ligula vel ante gravida gravida. Praesent porttitor lacus dictum ullamcorper tempus. Proin auctor venenatis convallis. Mauris laoreet non elit id sodales. Suspendisse a lacus sem. Vestibulum tincidunt, metus ut rhoncus congue, sapien tortor viverra leo, nec ornare ipsum tortor vitae magna.</p>\r\n<h3>Donec ac risus rutrum</h3>\r\n<p>Donec ac risus rutrum, commodo lacus vel, porta magna. Nulla facilisi. Nullam vehicula dui congue, tempor urna sagittis, bibendum sem. Suspendisse aliquam feugiat porta. Nunc feugiat dui quis efficitur pretium. Pellentesque dapibus, felis at consequat ultrices, tortor urna cursus massa, quis sodales mauris velit sed diam. Donec at sodales diam. Sed non efficitur turpis. Phasellus libero mi, pellentesque sit amet sagittis vitae, consectetur sed dui. Morbi quis venenatis massa. Suspendisse vestibulum nulla sit amet mi hendrerit, id gravida turpis pellentesque. Sed et leo lacinia, iaculis justo sit amet, sodales urna. Curabitur sit amet massa mi. Proin malesuada neque eu porta sodales. Suspendisse dictum odio eget imperdiet bibendum.</p>',NULL),(81,129,1,'Our Gear','2022-12-11 02:58:22','2022-12-11 02:58:22','88ac8d97-6c39-4d0e-b09e-e66c40695960',NULL,NULL,'<h3>Lorem ipsum dolor sit amet</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc bibendum elementum mauris vel dapibus. Nam quis lectus gravida nulla interdum elementum. Nunc pulvinar non nulla sed lacinia. Maecenas semper enim odio, a blandit mauris dignissim eu. Quisque ac sodales augue. Proin quis enim nec dolor maximus vestibulum. Donec odio dui, congue sit amet mollis in, feugiat venenatis tellus. Quisque eu dui in ex laoreet iaculis sed vel orci. Suspendisse potenti. Aliquam eu feugiat sapien, et condimentum velit. Ut posuere ipsum non scelerisque malesuada.</p>\r\n<p>Sed cursus, arcu et tempor mattis, lacus nisl mollis tortor, et sodales nisl est venenatis ante. Nunc ac erat ultrices, finibus lectus ac, tempor mauris. Vestibulum vel ligula vel ante gravida gravida. Praesent porttitor lacus dictum ullamcorper tempus. Proin auctor venenatis convallis. Mauris laoreet non elit id sodales. Suspendisse a lacus sem. Vestibulum tincidunt, metus ut rhoncus congue, sapien tortor viverra leo, nec ornare ipsum tortor vitae magna.</p><figure><img src=\"{asset:7:url||http://localhost/craftcms/uploads/gear.jpg}\" alt=\"Our Gear\" /></figure>\r\n<h3>Donec ac risus rutrum</h3>\r\n<p>Donec ac risus rutrum, commodo lacus vel, porta magna. Nulla facilisi. Nullam vehicula dui congue, tempor urna sagittis, bibendum sem. Suspendisse aliquam feugiat porta. Nunc feugiat dui quis efficitur pretium. Pellentesque dapibus, felis at consequat ultrices, tortor urna cursus massa, quis sodales mauris velit sed diam. Donec at sodales diam. Sed non efficitur turpis. Phasellus libero mi, pellentesque sit amet sagittis vitae, consectetur sed dui. Morbi quis venenatis massa. Suspendisse vestibulum nulla sit amet mi hendrerit, id gravida turpis pellentesque. Sed et leo lacinia, iaculis justo sit amet, sodales urna. Curabitur sit amet massa mi. Proin malesuada neque eu porta sodales. Suspendisse dictum odio eget imperdiet bibendum.</p>',NULL),(83,131,1,'Our Gear','2022-12-11 03:01:05','2022-12-11 03:01:05','f80e5d6b-e814-4778-9198-1f29f05f95a0',NULL,NULL,'<h3>Lorem ipsum dolor sit amet</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc bibendum elementum mauris vel dapibus. Nam quis lectus gravida nulla interdum elementum. Nunc pulvinar non nulla sed lacinia. Maecenas semper enim odio, a blandit mauris dignissim eu. Quisque ac sodales augue. Proin quis enim nec dolor maximus vestibulum. Donec odio dui, congue sit amet mollis in, feugiat venenatis tellus. Quisque eu dui in ex laoreet iaculis sed vel orci. Suspendisse potenti. Aliquam eu feugiat sapien, et condimentum velit. Ut posuere ipsum non scelerisque malesuada.</p>\r\n<p>Sed cursus, arcu et tempor mattis, lacus nisl mollis tortor, et sodales nisl est venenatis ante. Nunc ac erat ultrices, finibus lectus ac, tempor mauris. Vestibulum vel ligula vel ante gravida gravida. Praesent porttitor lacus dictum ullamcorper tempus. Proin auctor venenatis convallis. Mauris laoreet non elit id sodales. Suspendisse a lacus sem. Vestibulum tincidunt, metus ut rhoncus congue, sapien tortor viverra leo, nec ornare ipsum tortor vitae magna.</p><figure><img src=\"{asset:7:url||http://localhost/craftcms/uploads/gear.jpg}\" alt=\"Our Gear\" /></figure>\r\n<h3>Donec ac risus rutrum</h3>\r\n<p>Donec ac risus rutrum, commodo lacus vel, porta magna. Nulla facilisi. Nullam vehicula dui congue, tempor urna sagittis, bibendum sem. Suspendisse aliquam feugiat porta. Nunc feugiat dui quis efficitur pretium. Pellentesque dapibus, felis at consequat ultrices, tortor urna cursus massa, quis sodales mauris velit sed diam. Donec at sodales diam. Sed non efficitur turpis. Phasellus libero mi, pellentesque sit amet sagittis vitae, consectetur sed dui. Morbi quis venenatis massa. Suspendisse vestibulum nulla sit amet mi hendrerit, id gravida turpis pellentesque. Sed et leo lacinia, iaculis justo sit amet, sodales urna. Curabitur sit amet massa mi. Proin malesuada neque eu porta sodales. Suspendisse dictum odio eget imperdiet bibendum.</p>',NULL),(84,132,1,'Fujifilm X-Pro2 Camera','2022-12-11 03:02:52','2022-12-11 03:08:49','e99c0515-6da8-4479-850d-cb85c44d2e04',NULL,NULL,'<h3>Praesent nisl ante</h3>\r\n<p>Donec a ante dolor. Maecenas sollicitudin aliquet lacus, non rhoncus mi euismod vitae. Vestibulum iaculis lacus sit amet turpis hendrerit, a molestie orci faucibus. Vivamus ultrices auctor nibh in varius. Sed efficitur quam ut consectetur egestas. Proin non vehicula dui. Pellentesque varius, ex id ullamcorper pretium, dolor ex lobortis augue, eget auctor tortor diam laoreet quam. </p>\r\n<p>Nulla varius eros ac sem faucibus pellentesque. Praesent nisl ante, iaculis nec quam sed, vulputate laoreet erat. Suspendisse in eros enim. Phasellus sit amet vestibulum risus, ac aliquet turpis. Phasellus nec purus nec ipsum maximus fermentum id sit amet purus. </p>\r\n<figure><img src=\"{asset:133:url||http://localhost/craftcms/uploads/fujifilm-x-pro2-camera.png}\" alt=\"Fujifilm X-Pro2 Camera\" /></figure>\r\n<p>Aenean sollicitudin malesuada ex vel fringilla. Praesent fringilla tortor eros, ac feugiat nisl cursus sed. Quisque id eros congue, egestas justo in, porta elit. Proin ut mauris augue.</p>',NULL),(85,133,1,'Fujifilm x pro2 camera','2022-12-11 03:07:09','2022-12-11 03:07:09','27f15026-451d-4c8b-9b32-d8c47003d197',NULL,NULL,NULL,NULL),(86,134,1,'Fujifilm X-Pro2 Camera','2022-12-11 03:08:17','2022-12-11 03:08:17','a26bb265-a84d-4e64-b8dd-bf2439419f94',NULL,NULL,'<h3>Praesent nisl ante</h3>\r\n<p>Donec a ante dolor. Maecenas sollicitudin aliquet lacus, non rhoncus mi euismod vitae. Vestibulum iaculis lacus sit amet turpis hendrerit, a molestie orci faucibus. Vivamus ultrices auctor nibh in varius. Sed efficitur quam ut consectetur egestas. Proin non vehicula dui. Pellentesque varius, ex id ullamcorper pretium, dolor ex lobortis augue, eget auctor tortor diam laoreet quam. </p>\r\n<p>Nulla varius eros ac sem faucibus pellentesque. Praesent nisl ante, iaculis nec quam sed, vulputate laoreet erat. Suspendisse in eros enim. Phasellus sit amet vestibulum risus, ac aliquet turpis. Phasellus nec purus nec ipsum maximus fermentum id sit amet purus. </p>\r\n<figure><img src=\"{asset:133:url||http://localhost/craftcms/uploads/fujifilm-x-pro2-camera.png}\" alt=\"Fujifilm X-Pro2 Camera\" /></figure>\r\n<p>Aenean sollicitudin malesuada ex vel fringilla. Praesent fringilla tortor eros, ac feugiat nisl cursus sed. Quisque id eros congue, egestas justo in, porta elit. Proin ut mauris augue.</p>',NULL),(88,136,1,'Fujifilm X-Pro2 Camera','2022-12-11 03:08:49','2022-12-11 03:08:49','b63bd087-37cd-41db-9705-66c250bff86b',NULL,NULL,'<h3>Praesent nisl ante</h3>\r\n<p>Donec a ante dolor. Maecenas sollicitudin aliquet lacus, non rhoncus mi euismod vitae. Vestibulum iaculis lacus sit amet turpis hendrerit, a molestie orci faucibus. Vivamus ultrices auctor nibh in varius. Sed efficitur quam ut consectetur egestas. Proin non vehicula dui. Pellentesque varius, ex id ullamcorper pretium, dolor ex lobortis augue, eget auctor tortor diam laoreet quam. </p>\r\n<p>Nulla varius eros ac sem faucibus pellentesque. Praesent nisl ante, iaculis nec quam sed, vulputate laoreet erat. Suspendisse in eros enim. Phasellus sit amet vestibulum risus, ac aliquet turpis. Phasellus nec purus nec ipsum maximus fermentum id sit amet purus. </p>\r\n<figure><img src=\"{asset:133:url||http://localhost/craftcms/uploads/fujifilm-x-pro2-camera.png}\" alt=\"Fujifilm X-Pro2 Camera\" /></figure>\r\n<p>Aenean sollicitudin malesuada ex vel fringilla. Praesent fringilla tortor eros, ac feugiat nisl cursus sed. Quisque id eros congue, egestas justo in, porta elit. Proin ut mauris augue.</p>',NULL),(89,137,1,NULL,'2022-12-11 03:16:08','2022-12-11 03:18:05','747b1c58-48a8-4bfd-a489-ac69b70e3aa5',NULL,NULL,NULL,NULL),(90,140,1,NULL,'2022-12-11 03:27:42','2022-12-11 03:28:28','ab5e5c73-3649-4db9-83a6-1a767745dfcc',NULL,NULL,'<p>Copyright 2021 Motoventure Corp. All rights reserved.</p>',NULL),(91,141,1,'Our Gear','2022-12-11 03:53:24','2022-12-11 03:53:24','40919be4-04cb-44be-8a8c-8f0c923f5089',NULL,NULL,'<h3>Lorem ipsum dolor sit amet</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc bibendum elementum mauris vel dapibus. Nam quis lectus gravida nulla interdum elementum. Nunc pulvinar non nulla sed lacinia. Maecenas semper enim odio, a blandit mauris dignissim eu. Quisque ac sodales augue. Proin quis enim nec dolor maximus vestibulum. Donec odio dui, congue sit amet mollis in, feugiat venenatis tellus. Quisque eu dui in ex laoreet iaculis sed vel orci. Suspendisse potenti. Aliquam eu feugiat sapien, et condimentum velit. Ut posuere ipsum non scelerisque malesuada.</p>\r\n<p>Sed cursus, arcu et tempor mattis, lacus nisl mollis tortor, et sodales nisl est venenatis ante. Nunc ac erat ultrices, finibus lectus ac, tempor mauris. Vestibulum vel ligula vel ante gravida gravida. Praesent porttitor lacus dictum ullamcorper tempus. Proin auctor venenatis convallis. Mauris laoreet non elit id sodales. Suspendisse a lacus sem. Vestibulum tincidunt, metus ut rhoncus congue, sapien tortor viverra leo, nec ornare ipsum tortor vitae magna.</p><figure><img src=\"{asset:7:url||http://localhost/craftcms/uploads/gear.jpg}\" alt=\"Our Gear\" /></figure>\r\n<h3>Donec ac risus rutrum</h3>\r\n<p>Donec ac risus rutrum, commodo lacus vel, porta magna. Nulla facilisi. Nullam vehicula dui congue, tempor urna sagittis, bibendum sem. Suspendisse aliquam feugiat porta. Nunc feugiat dui quis efficitur pretium. Pellentesque dapibus, felis at consequat ultrices, tortor urna cursus massa, quis sodales mauris velit sed diam. Donec at sodales diam. Sed non efficitur turpis. Phasellus libero mi, pellentesque sit amet sagittis vitae, consectetur sed dui. Morbi quis venenatis massa. Suspendisse vestibulum nulla sit amet mi hendrerit, id gravida turpis pellentesque. Sed et leo lacinia, iaculis justo sit amet, sodales urna. Curabitur sit amet massa mi. Proin malesuada neque eu porta sodales. Suspendisse dictum odio eget imperdiet bibendum.</p>',NULL),(93,143,1,'Our Gear','2022-12-11 03:54:41','2022-12-11 03:54:41','944b7ad1-c58e-4014-ae67-7e06f50e7fc4',NULL,NULL,'<h3>Lorem ipsum dolor sit amet</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc bibendum elementum mauris vel dapibus. Nam quis lectus gravida nulla interdum elementum. Nunc pulvinar non nulla sed lacinia. Maecenas semper enim odio, a blandit mauris dignissim eu. Quisque ac sodales augue. Proin quis enim nec dolor maximus vestibulum. Donec odio dui, congue sit amet mollis in, feugiat venenatis tellus. Quisque eu dui in ex laoreet iaculis sed vel orci. Suspendisse potenti. Aliquam eu feugiat sapien, et condimentum velit. Ut posuere ipsum non scelerisque malesuada.</p>\r\n<p>Sed cursus, arcu et tempor mattis, lacus nisl mollis tortor, et sodales nisl est venenatis ante. Nunc ac erat ultrices, finibus lectus ac, tempor mauris. Vestibulum vel ligula vel ante gravida gravida. Praesent porttitor lacus dictum ullamcorper tempus. Proin auctor venenatis convallis. Mauris laoreet non elit id sodales. Suspendisse a lacus sem. Vestibulum tincidunt, metus ut rhoncus congue, sapien tortor viverra leo, nec ornare ipsum tortor vitae magna.</p>\r\n\r\n<figure><img src=\"{asset:7:transform:contentImage||http://localhost/craftcms/uploads/_contentImage/gear.jpg}\" alt=\"\" /></figure><h3><br /></h3><h3>Donec ac risus rutrum</h3>\r\n<p>Donec ac risus rutrum, commodo lacus vel, porta magna. Nulla facilisi. Nullam vehicula dui congue, tempor urna sagittis, bibendum sem. Suspendisse aliquam feugiat porta. Nunc feugiat dui quis efficitur pretium. Pellentesque dapibus, felis at consequat ultrices, tortor urna cursus massa, quis sodales mauris velit sed diam. Donec at sodales diam. Sed non efficitur turpis. Phasellus libero mi, pellentesque sit amet sagittis vitae, consectetur sed dui. Morbi quis venenatis massa. Suspendisse vestibulum nulla sit amet mi hendrerit, id gravida turpis pellentesque. Sed et leo lacinia, iaculis justo sit amet, sodales urna. Curabitur sit amet massa mi. Proin malesuada neque eu porta sodales. Suspendisse dictum odio eget imperdiet bibendum.</p>',NULL),(94,144,1,'Tales From the Trail','2022-12-11 12:51:55','2022-12-11 12:51:55','f2bee0e6-1d34-4847-a7b9-46727fc442e6',NULL,NULL,NULL,NULL),(95,145,1,'Tales From the Trail','2022-12-11 12:52:29','2022-12-11 12:52:29','b8646cca-b448-4565-a204-96d05f1f8a0a',NULL,NULL,NULL,NULL),(96,137,2,NULL,'2022-12-11 20:29:45','2022-12-11 20:29:45','2a2dbf2f-3f5e-46db-9164-f6e84217923b',NULL,NULL,NULL,NULL),(97,140,2,NULL,'2022-12-11 20:29:48','2022-12-11 20:29:48','ac6852fb-9364-4ed5-963b-3f2e2b15e282',NULL,NULL,'<p>Copyright 2021 Motoventure Corp. All rights reserved.</p>',NULL),(98,7,2,'Gear','2022-12-11 20:29:48','2022-12-11 20:29:48','36f65275-9864-4390-bdd4-7cc6e71037a7',NULL,NULL,NULL,NULL),(99,12,2,'Hero','2022-12-11 20:29:48','2022-12-11 20:29:48','86cbd3e5-f57b-4d28-9189-3dcaeef75732',NULL,NULL,NULL,NULL),(100,23,2,'Henry potter','2022-12-11 20:29:48','2022-12-11 20:29:48','835194c9-6a71-4267-8cc0-14acdb960e43',NULL,NULL,NULL,NULL),(101,24,2,'Jack starfield','2022-12-11 20:29:48','2022-12-11 20:29:48','57b983a2-1304-453e-9c34-c95d1e689d29',NULL,NULL,NULL,NULL),(102,25,2,'Sarah bradbury','2022-12-11 20:29:48','2022-12-11 20:29:48','2d7c0c13-0b7f-4ad1-86d4-34d7aad46a2d',NULL,NULL,NULL,NULL),(103,73,2,'Photo 1606293715325 9329879fec0f','2022-12-11 20:29:48','2022-12-11 20:29:48','727a7536-f11f-4345-b5fe-1d288c1a7e68',NULL,NULL,NULL,NULL),(104,74,2,'Vander films I Wi2xb Th F8 U unsplash','2022-12-11 20:29:48','2022-12-11 20:29:48','1fe87ae2-354c-4255-8b94-9de61b9f4916',NULL,NULL,NULL,NULL),(105,75,2,'Felix lam J7fxkht Oqt0 unsplash','2022-12-11 20:29:48','2022-12-11 20:29:48','ebe19e77-ff85-4e3a-8fd4-2b14b6f25e26',NULL,NULL,NULL,NULL),(106,76,2,'Forest','2022-12-11 20:29:48','2022-12-11 20:29:48','17fb3067-c018-44a9-af98-84cb3e222205',NULL,NULL,NULL,NULL),(107,77,2,'Jeremy bishop h MHJY Ql W Qw U unsplash','2022-12-11 20:29:48','2022-12-11 20:29:48','f1a4c2eb-14cb-4100-9846-b7027971bd25',NULL,NULL,NULL,NULL),(108,78,2,'Mohit suthar a1 t Fc B Sp7w unsplash','2022-12-11 20:29:49','2022-12-11 20:29:49','e995d75f-09ba-4c7f-bf38-18df0f207f57',NULL,NULL,NULL,NULL),(109,79,2,'Mountains','2022-12-11 20:29:49','2022-12-11 20:29:49','e54c31ab-a2f8-4d5a-af43-ccdb07a1fadb',NULL,NULL,NULL,NULL),(110,133,2,'Fujifilm x pro2 camera','2022-12-11 20:29:49','2022-12-11 20:29:49','10a404b9-0e7d-4d35-9638-656ff4ef0a9d',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `site1_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_craftidtokens`
--

DROP TABLE IF EXISTS `site1_craftidtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_craftidtokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_fk_ppghuqlofhbasecrejhlmjylbizdiothwcrx` (`userId`),
  CONSTRAINT `site1_fk_ppghuqlofhbasecrejhlmjylbizdiothwcrx` FOREIGN KEY (`userId`) REFERENCES `site1_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_craftidtokens`
--

LOCK TABLES `site1_craftidtokens` WRITE;
/*!40000 ALTER TABLE `site1_craftidtokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_craftidtokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_deprecationerrors`
--

DROP TABLE IF EXISTS `site1_deprecationerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) unsigned DEFAULT NULL,
  `message` text,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_vbstjxbzhuxuwhsndfghbfajfoydbrlewjpj` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_deprecationerrors`
--

LOCK TABLES `site1_deprecationerrors` WRITE;
/*!40000 ALTER TABLE `site1_deprecationerrors` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_deprecationerrors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_drafts`
--

DROP TABLE IF EXISTS `site1_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_drafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canonicalId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `notes` text,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `site1_idx_qvtrhjlajgivdejpnuuhimcijcpmfzragmkk` (`creatorId`,`provisional`),
  KEY `site1_idx_nbhaxgvlubrnyaaazvidubdzonyzwcyianqy` (`saved`),
  KEY `site1_fk_oaieogzzmzpamwpwdpfuxzvhvpecoqfwqfut` (`canonicalId`),
  CONSTRAINT `site1_fk_ganzhesjswethnwrmcnliyecdfukxdqclidi` FOREIGN KEY (`creatorId`) REFERENCES `site1_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `site1_fk_oaieogzzmzpamwpwdpfuxzvhvpecoqfwqfut` FOREIGN KEY (`canonicalId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_drafts`
--

LOCK TABLES `site1_drafts` WRITE;
/*!40000 ALTER TABLE `site1_drafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_elements`
--

DROP TABLE IF EXISTS `site1_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canonicalId` int(11) DEFAULT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_fpsztermsyfkjrdcxmvqqvswafkkntasnsqe` (`dateDeleted`),
  KEY `site1_idx_bafplyacssijabzwjhqauswomhcevtvagjne` (`fieldLayoutId`),
  KEY `site1_idx_nfwbugirdjydallbrwkjafyithurvnrpmznt` (`type`),
  KEY `site1_idx_ieipnmorwyhhmlvbxqarjpesottxchzfukwu` (`enabled`),
  KEY `site1_idx_patfmrsudbuvndnxtarxsxqqueghlxfattmz` (`archived`,`dateCreated`),
  KEY `site1_idx_gnyfkrziuhzjjehtxmtpizkwmmawwqabdzqm` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  KEY `site1_idx_xribjyprtymgjeyrndutucbuurvwpdymhyvo` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`),
  KEY `site1_fk_voqndtyqpfsbgkljmonukfaudwnboagrzgvf` (`canonicalId`),
  KEY `site1_fk_dcoomybiipwyxfxvawwhptbltkeupyjultyn` (`draftId`),
  KEY `site1_fk_qqamrwueoeeylednrlundctxpofsrdlyzfvb` (`revisionId`),
  CONSTRAINT `site1_fk_dcoomybiipwyxfxvawwhptbltkeupyjultyn` FOREIGN KEY (`draftId`) REFERENCES `site1_drafts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_jbrunuuymcayovkjmlxndindapykkzloxxnp` FOREIGN KEY (`fieldLayoutId`) REFERENCES `site1_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `site1_fk_qqamrwueoeeylednrlundctxpofsrdlyzfvb` FOREIGN KEY (`revisionId`) REFERENCES `site1_revisions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_voqndtyqpfsbgkljmonukfaudwnboagrzgvf` FOREIGN KEY (`canonicalId`) REFERENCES `site1_elements` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_elements`
--

LOCK TABLES `site1_elements` WRITE;
/*!40000 ALTER TABLE `site1_elements` DISABLE KEYS */;
INSERT INTO `site1_elements` VALUES (1,NULL,NULL,NULL,NULL,'craft\\elements\\User',1,0,'2022-12-09 00:57:44','2022-12-11 04:48:26',NULL,NULL,'9ebc0fcf-a803-415d-986b-bfe3e1507642'),(2,NULL,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2022-12-09 01:22:42','2022-12-11 02:44:54',NULL,NULL,'0ded528a-7264-4555-9832-50cdcedc6f9d'),(3,2,NULL,1,1,'craft\\elements\\Entry',1,0,'2022-12-09 01:22:42','2022-12-09 01:22:42',NULL,NULL,'be47375d-74ab-44a6-848d-5be3f3f71d8c'),(4,2,NULL,2,1,'craft\\elements\\Entry',1,0,'2022-12-09 01:22:42','2022-12-09 01:22:42',NULL,NULL,'887d99b1-f97d-4ea6-930e-dde6a51a91d7'),(5,2,NULL,3,1,'craft\\elements\\Entry',1,0,'2022-12-09 01:38:06','2022-12-09 01:38:06',NULL,NULL,'2e0b64ae-6e24-45cf-b63d-8fa94a7e13c6'),(7,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 03:01:33','2022-12-09 03:01:33',NULL,NULL,'797c977d-1210-471b-9624-c048c58c7a67'),(8,2,NULL,4,1,'craft\\elements\\Entry',1,0,'2022-12-09 03:05:18','2022-12-09 03:05:18',NULL,NULL,'cb87c9ad-0c8e-494e-a0fc-fb7b4661bd80'),(10,2,NULL,5,1,'craft\\elements\\Entry',1,0,'2022-12-09 03:20:29','2022-12-09 03:20:29',NULL,NULL,'152dcbce-5d23-4444-985f-5ff04b865f46'),(12,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 03:21:43','2022-12-09 03:21:43',NULL,NULL,'25da38f2-0cac-4195-9718-c228f16632d3'),(13,2,NULL,6,1,'craft\\elements\\Entry',1,0,'2022-12-09 03:21:47','2022-12-09 03:21:47',NULL,NULL,'7ba14332-4a12-4c67-af22-94d9cdd7451f'),(15,2,NULL,7,1,'craft\\elements\\Entry',1,0,'2022-12-09 03:49:08','2022-12-09 03:49:08',NULL,NULL,'334d4128-b922-43fa-8ebf-0c814e8a3004'),(17,2,NULL,8,1,'craft\\elements\\Entry',1,0,'2022-12-09 03:49:32','2022-12-09 03:49:32',NULL,NULL,'4dddef2b-7251-4c8e-ac1b-2a91c7b17858'),(18,2,NULL,9,1,'craft\\elements\\Entry',1,0,'2022-12-09 03:58:05','2022-12-09 03:58:05',NULL,NULL,'8062df3e-94df-4f91-b397-6aca88c08c67'),(20,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:58:46','2022-12-09 03:58:46',NULL,'2022-12-09 03:58:54','a58fec56-0b39-462b-ba69-9fe9952b27b3'),(21,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:58:54','2022-12-09 03:58:54',NULL,'2022-12-09 03:58:57','a88255d0-1bb0-4a25-a612-495ff1ee5bcc'),(22,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:58:57','2022-12-09 03:58:57',NULL,'2022-12-09 03:59:20','d87195cc-01ad-4955-8cb1-3db4b1ddb3eb'),(23,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 03:59:12','2022-12-09 03:59:12',NULL,NULL,'ae552925-c6fa-481c-bcb2-da4077b7e4d4'),(24,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 03:59:12','2022-12-09 03:59:12',NULL,NULL,'3a9a9876-46e8-42be-9fb7-6286d067562c'),(25,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 03:59:12','2022-12-09 03:59:12',NULL,NULL,'ab8fdbd0-0361-409b-bcdd-4fe5b11be6fe'),(26,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:20','2022-12-09 03:59:20',NULL,'2022-12-09 03:59:22','3352a3b5-4641-4407-9fdb-351d4ed26145'),(27,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:22','2022-12-09 03:59:22',NULL,'2022-12-09 03:59:28','fc08b45e-af96-429a-9e08-26ddf69d3897'),(28,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:22','2022-12-09 03:59:22',NULL,'2022-12-09 03:59:28','ef5fcaca-8973-4dfb-93b5-9696741a05c3'),(29,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:28','2022-12-09 03:59:28',NULL,'2022-12-09 03:59:32','85ca497d-2404-4be2-9052-677e640d40e1'),(30,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:28','2022-12-09 03:59:28',NULL,'2022-12-09 03:59:32','30a369c7-e8e4-49e4-a2a5-ba278bd69ada'),(31,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:32','2022-12-09 03:59:32',NULL,'2022-12-09 03:59:45','861ce9de-da13-45c8-a1d7-19ce61db2c1e'),(32,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:32','2022-12-09 03:59:32',NULL,'2022-12-09 03:59:45','8089f13c-a089-4351-a8df-d210c1c065ff'),(33,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:45','2022-12-09 03:59:45',NULL,'2022-12-09 03:59:47','d5f1459e-f70f-421c-b6bf-974bb8b5e084'),(34,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:45','2022-12-09 03:59:45',NULL,'2022-12-09 03:59:47','e8335d4a-5c86-4b24-88c5-569c810c33b9'),(35,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:47','2022-12-09 03:59:47',NULL,'2022-12-09 03:59:54','302a71cc-1daa-48a4-a879-f053099cf45e'),(36,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:47','2022-12-09 03:59:47',NULL,'2022-12-09 03:59:54','e3a043b4-2c58-4d88-9b33-e80b87124e4a'),(37,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:47','2022-12-09 03:59:47',NULL,'2022-12-09 03:59:54','ff8b8a30-6ff3-4a24-90b7-f632535c1b99'),(38,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:54','2022-12-09 03:59:54',NULL,'2022-12-09 03:59:57','4b755a4d-8458-4b30-8167-5fe3c101f39c'),(39,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:54','2022-12-09 03:59:54',NULL,'2022-12-09 03:59:57','408183c1-e57b-41f8-a99c-4a09983b19f2'),(40,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:54','2022-12-09 03:59:54',NULL,'2022-12-09 03:59:57','ff009392-b9a0-4667-97f6-ca987cff4a31'),(41,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:57','2022-12-09 03:59:57',NULL,'2022-12-09 04:00:01','6dae28e7-8497-4316-82b9-c10bdd442623'),(42,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:57','2022-12-09 03:59:57',NULL,'2022-12-09 04:00:01','9bd8e24c-08fd-448d-876e-bd85909fc309'),(43,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 03:59:57','2022-12-09 03:59:57',NULL,'2022-12-09 04:00:01','ff867aab-393a-4476-bff2-abef572b545e'),(47,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:01:14',NULL,NULL,'caa26396-1248-40ef-a626-ec7f1f642ef3'),(48,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:01:14',NULL,NULL,'b342a8a6-9082-448d-b951-c7ae23a88bbf'),(49,NULL,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:01:14',NULL,NULL,'6e83a21c-5c73-4fb9-b7ac-cccbbe194b7f'),(50,2,NULL,10,1,'craft\\elements\\Entry',1,0,'2022-12-09 04:01:14','2022-12-09 04:01:14',NULL,NULL,'21b9cb52-1cad-4ec8-bd0d-31c215ba5929'),(51,47,NULL,11,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:01:14',NULL,NULL,'0c4ec4ea-c89a-41d8-b3ec-0587ee943043'),(52,48,NULL,12,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:01:14',NULL,NULL,'4087a65e-e8e1-4282-adcd-5ec208570fce'),(53,49,NULL,13,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:01:14',NULL,NULL,'7abdc36d-fffe-40a5-83e8-9df4c29a5a88'),(55,2,NULL,14,1,'craft\\elements\\Entry',1,0,'2022-12-09 04:02:01','2022-12-09 04:02:01',NULL,NULL,'6f33a412-070f-4cb0-8ebf-bb8529745850'),(56,47,NULL,15,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:02:01',NULL,NULL,'7915c321-5010-4103-b76f-e03093532338'),(57,48,NULL,16,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:02:01',NULL,NULL,'e199580e-1f8f-4a7a-89d4-69b2e0ff1b0e'),(58,49,NULL,17,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:02:01',NULL,NULL,'b8d6c359-0827-4a20-9abd-06915fe25d2c'),(60,2,NULL,18,1,'craft\\elements\\Entry',1,0,'2022-12-09 04:08:23','2022-12-09 04:08:23',NULL,NULL,'bd4dd82f-57cc-43c0-99e9-2c4960b042dd'),(61,47,NULL,19,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:08:23',NULL,NULL,'9855a5b0-996e-42e3-861c-9ad35084ee6a'),(62,49,NULL,20,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:08:23',NULL,NULL,'95e8c7cf-3d9a-4927-8a71-5fca37202c33'),(63,48,NULL,21,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:08:23',NULL,NULL,'ec6bda89-b37f-4652-a537-1347e103bfcc'),(65,2,NULL,22,1,'craft\\elements\\Entry',1,0,'2022-12-09 04:08:53','2022-12-09 04:08:53',NULL,NULL,'a03a1f0d-c3a5-4e1e-b6a0-fe8bcaaffa91'),(66,49,NULL,23,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:08:53',NULL,NULL,'41dbd75e-69e0-4539-9345-a58f5a816090'),(67,48,NULL,24,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:08:53',NULL,NULL,'c2150ecd-6abb-4882-b278-3ab3a6246b05'),(68,47,NULL,25,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-09 04:08:53',NULL,NULL,'57cda314-7021-46cd-afee-e0992915ec71'),(69,NULL,NULL,NULL,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:10:18','2022-12-09 12:19:56',NULL,NULL,'4fdfeb90-277a-409a-b226-8081cc96e06b'),(70,69,NULL,26,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:12:40','2022-12-09 12:12:40',NULL,NULL,'aa7968fc-e477-473d-9727-6339e7b6eb0b'),(72,69,NULL,27,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:13:24','2022-12-09 12:13:24',NULL,NULL,'8e935701-9124-419e-82fb-eba560d0b7e1'),(73,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 12:13:56','2022-12-09 12:13:56',NULL,NULL,'38901567-61e0-49e4-8515-09988b4e31d6'),(74,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 12:13:57','2022-12-09 12:13:57',NULL,NULL,'bd449090-cc2e-47f8-948b-12d3aebae8ff'),(75,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 12:13:57','2022-12-09 12:13:57',NULL,NULL,'d150224e-5184-4e25-a664-f0a65f9e0c57'),(76,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 12:13:57','2022-12-09 12:13:57',NULL,NULL,'42aa8518-d523-4e23-bc5a-5aff31182dfa'),(77,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 12:13:57','2022-12-09 12:13:57',NULL,NULL,'82723998-89bb-449d-88e6-6509fd3c5b4a'),(78,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 12:13:58','2022-12-09 12:13:58',NULL,NULL,'173d755a-7dba-4d94-8b65-0bb21eda5257'),(79,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-09 12:13:58','2022-12-09 12:13:58',NULL,NULL,'3791cf5c-8244-49fe-9e10-7bbccad18070'),(81,69,NULL,28,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:17:40','2022-12-09 12:17:40',NULL,NULL,'a8870a75-f151-4709-9a7d-d62d2c015ab7'),(82,NULL,NULL,NULL,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:17:47','2022-12-09 12:37:54',NULL,NULL,'040ab596-88da-44a7-b3d6-1dd3d17ebbb2'),(83,82,NULL,29,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:19:34','2022-12-09 12:19:34',NULL,NULL,'33c79011-1e06-4de6-aa6a-b5ab60bb25eb'),(85,82,NULL,30,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:19:49','2022-12-09 12:19:49',NULL,NULL,'d533827a-de0c-4431-9060-8c8d506553cd'),(87,69,NULL,31,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:19:56','2022-12-09 12:19:56',NULL,NULL,'c535a3d4-e648-4e10-ae59-65e918c6da5f'),(89,82,NULL,32,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:20:15','2022-12-09 12:20:15',NULL,NULL,'e1e6680d-97f3-4cc8-9a70-d9b435f09f3c'),(90,NULL,NULL,NULL,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:20:22','2022-12-09 12:25:02',NULL,NULL,'f6a5fc92-123c-4fc9-820a-79230320c461'),(91,90,NULL,33,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:20:40','2022-12-09 12:20:40',NULL,NULL,'a5429a83-c5e6-4bef-8ca0-d59f26f12a90'),(93,82,NULL,34,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:20:56','2022-12-09 12:20:56',NULL,NULL,'9a62d226-af0b-42c2-b065-3705694beedb'),(95,90,NULL,35,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:24:58','2022-12-09 12:24:58',NULL,NULL,'456eb8e6-9020-4682-bbe4-68a3dda01c2f'),(96,90,NULL,36,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:25:02','2022-12-09 12:25:02',NULL,NULL,'56f2fade-79ba-4e54-8deb-ddbad86b957b'),(98,82,NULL,37,4,'craft\\elements\\Entry',1,0,'2022-12-09 12:37:54','2022-12-09 12:37:54',NULL,NULL,'16914d50-1aad-4bce-849a-9e29be43068b'),(99,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2022-12-11 02:27:25','2022-12-11 12:52:29',NULL,NULL,'31bbac1a-a6fe-4603-a285-024e15cbe626'),(100,99,NULL,38,5,'craft\\elements\\Entry',1,0,'2022-12-11 02:27:25','2022-12-11 02:27:25',NULL,NULL,'2bce3ec9-f9aa-44e6-8358-02b4fa55a4cb'),(101,99,NULL,39,5,'craft\\elements\\Entry',1,0,'2022-12-11 02:27:25','2022-12-11 02:27:25',NULL,NULL,'9fce4e23-d42b-43f4-90f6-c770d3fe743c'),(102,99,NULL,40,5,'craft\\elements\\Entry',1,0,'2022-12-11 02:27:59','2022-12-11 02:27:59',NULL,NULL,'8e98613e-1f7f-435e-bd89-0210e1f81165'),(103,99,NULL,41,5,'craft\\elements\\Entry',1,0,'2022-12-11 02:28:38','2022-12-11 02:28:38',NULL,NULL,'c4e05061-659e-490c-825a-4f886ccf9602'),(104,99,NULL,42,5,'craft\\elements\\Entry',1,0,'2022-12-11 02:28:38','2022-12-11 02:28:38',NULL,NULL,'e95d35cd-403b-46d4-b60f-1f3ad32ce745'),(105,99,NULL,43,5,'craft\\elements\\Entry',1,0,'2022-12-11 02:28:39','2022-12-11 02:28:39',NULL,NULL,'4776d845-a7f0-4491-931a-80d5f6b399df'),(106,99,NULL,44,5,'craft\\elements\\Entry',1,0,'2022-12-11 02:28:39','2022-12-11 02:28:39',NULL,NULL,'2ad7eb5d-cf8d-4770-8781-f5c397716cfb'),(107,99,NULL,45,5,'craft\\elements\\Entry',1,0,'2022-12-11 02:28:40','2022-12-11 02:28:40',NULL,NULL,'9375c51d-68ac-49ec-a91a-bd0c81cae883'),(109,99,NULL,46,5,'craft\\elements\\Entry',1,0,'2022-12-11 02:31:13','2022-12-11 02:31:13',NULL,NULL,'5c8bfd19-8a4d-4a73-b82d-b59cc717a88e'),(110,2,NULL,47,1,'craft\\elements\\Entry',1,0,'2022-12-11 02:34:56','2022-12-11 02:34:56',NULL,NULL,'1736a6d7-54d1-4d83-a1f3-26ac49d9ce52'),(111,49,NULL,48,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-11 02:34:56',NULL,NULL,'a4b0b779-59ad-4bbd-ac24-050c9a4ce15f'),(112,48,NULL,49,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-11 02:34:56',NULL,NULL,'433fe9c3-4c72-4d90-9d7f-6f058504d8f3'),(113,47,NULL,50,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-11 02:34:56',NULL,NULL,'0bb94b4b-25bb-499a-897f-cb7507896982'),(115,2,NULL,51,1,'craft\\elements\\Entry',1,0,'2022-12-11 02:35:58','2022-12-11 02:35:58',NULL,NULL,'905f34f5-3249-4c18-ac1a-777808d86fe9'),(116,49,NULL,52,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-11 02:35:58',NULL,NULL,'69003c4f-dbdf-4813-a710-9f7601fa6300'),(117,48,NULL,53,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-11 02:35:58',NULL,NULL,'396e072e-892f-4370-a6ec-3535f07291fc'),(118,47,NULL,54,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-11 02:35:58',NULL,NULL,'3dde1ed3-26b6-480b-a9a6-2ac78b978f45'),(120,2,NULL,55,1,'craft\\elements\\Entry',1,0,'2022-12-11 02:44:54','2022-12-11 02:44:54',NULL,NULL,'6c1841ea-27b1-48eb-bdc0-39d5e54da2ba'),(121,49,NULL,56,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-11 02:44:54',NULL,NULL,'4c0a9e41-1f67-4641-8d6c-8c632072b335'),(122,48,NULL,57,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-11 02:44:54',NULL,NULL,'d4534fd7-3495-4611-b358-34284869df9a'),(123,47,NULL,58,3,'craft\\elements\\MatrixBlock',1,0,'2022-12-09 04:01:14','2022-12-11 02:44:54',NULL,NULL,'aa6e7921-cf15-453d-9e90-562c809005bb'),(124,NULL,NULL,NULL,6,'craft\\elements\\Entry',1,0,'2022-12-11 02:55:46','2022-12-11 03:54:41',NULL,NULL,'2088c471-05b0-4aa5-a7fb-88d865726f27'),(125,124,NULL,59,6,'craft\\elements\\Entry',1,0,'2022-12-11 02:55:56','2022-12-11 02:55:56',NULL,NULL,'db83123a-aeaa-40d4-8f4d-7a8c85f44768'),(127,124,NULL,60,6,'craft\\elements\\Entry',1,0,'2022-12-11 02:57:34','2022-12-11 02:57:34',NULL,NULL,'345f4f83-6873-4bff-9232-736ed7828b39'),(129,124,NULL,61,6,'craft\\elements\\Entry',1,0,'2022-12-11 02:58:22','2022-12-11 02:58:22',NULL,NULL,'388451e2-6d19-4af6-89e5-574715ee5a33'),(131,124,NULL,62,6,'craft\\elements\\Entry',1,0,'2022-12-11 03:01:05','2022-12-11 03:01:05',NULL,NULL,'d39bb7c8-c2f6-47d1-8fc1-677d3336345e'),(132,NULL,NULL,NULL,6,'craft\\elements\\Entry',1,0,'2022-12-11 03:02:52','2022-12-11 03:08:49',NULL,NULL,'85908fe7-9ab3-4958-be9b-9bd020270303'),(133,NULL,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2022-12-11 03:07:09','2022-12-11 03:07:09',NULL,NULL,'21b75936-186b-46e2-b80d-affb1df88720'),(134,132,NULL,63,6,'craft\\elements\\Entry',1,0,'2022-12-11 03:08:17','2022-12-11 03:08:17',NULL,NULL,'08324f93-9bd0-44ac-9138-6f44d8dce306'),(136,132,NULL,64,6,'craft\\elements\\Entry',1,0,'2022-12-11 03:08:49','2022-12-11 03:08:49',NULL,NULL,'6f2aed95-4f3d-48d2-a8c3-999b63c49448'),(137,NULL,NULL,NULL,8,'craft\\elements\\GlobalSet',1,0,'2022-12-11 03:16:08','2022-12-11 03:18:05',NULL,NULL,'5550e01f-7f7d-4268-8afd-56d52a631495'),(138,NULL,NULL,NULL,7,'craft\\elements\\MatrixBlock',1,0,'2022-12-11 03:17:24','2022-12-11 20:29:45',NULL,NULL,'a212fc70-18c6-4db2-ba78-22457d2c9e63'),(139,NULL,NULL,NULL,7,'craft\\elements\\MatrixBlock',1,0,'2022-12-11 03:17:24','2022-12-11 20:29:45',NULL,NULL,'f0bb3496-b1f8-4e03-9bc3-774ba1eae3fb'),(140,NULL,NULL,NULL,9,'craft\\elements\\GlobalSet',1,0,'2022-12-11 03:27:42','2022-12-11 03:28:28',NULL,NULL,'a0dfd598-c2de-4461-8ab3-6ba7f75c0e25'),(141,124,NULL,65,6,'craft\\elements\\Entry',1,0,'2022-12-11 03:53:23','2022-12-11 03:53:24',NULL,NULL,'732d6342-9285-4968-ac35-abeb5e14775a'),(143,124,NULL,66,6,'craft\\elements\\Entry',1,0,'2022-12-11 03:54:41','2022-12-11 03:54:41',NULL,NULL,'3d4423fd-9561-4892-b691-cd52ff6df957'),(144,99,NULL,67,5,'craft\\elements\\Entry',1,0,'2022-12-11 12:51:55','2022-12-11 12:51:55',NULL,NULL,'ace515d9-0b37-4679-950b-50f8c26e3163'),(145,99,NULL,68,5,'craft\\elements\\Entry',1,0,'2022-12-11 12:52:29','2022-12-11 12:52:29',NULL,NULL,'620d2a8a-9f4d-4430-ae35-6335c2546a0f');
/*!40000 ALTER TABLE `site1_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_elements_sites`
--

DROP TABLE IF EXISTS `site1_elements_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_elements_sites` (
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
  UNIQUE KEY `site1_idx_khnriibcxnsppjlgvbdyrswntggqdouwtazu` (`elementId`,`siteId`),
  KEY `site1_idx_bpqbspxaccakqwacsmcnucvjtfmpapuyfgee` (`siteId`),
  KEY `site1_idx_dfnktcmlhbmbwehqxfcgtixgqlmxmcxywvmf` (`slug`,`siteId`),
  KEY `site1_idx_mywnqcjkyhrnqtaepsccwgyvkhnoniojkllh` (`enabled`),
  KEY `site1_idx_dvyrtmyftzftfyhpxynowyekhpmgmqdgvndc` (`uri`,`siteId`),
  CONSTRAINT `site1_fk_tnqhmivzvgrksjemvxrjggcgucozzqbtrjml` FOREIGN KEY (`siteId`) REFERENCES `site1_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_wwpwfpjrizdavqmbwkyqldfwcyowsblpwqwy` FOREIGN KEY (`elementId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_elements_sites`
--

LOCK TABLES `site1_elements_sites` WRITE;
/*!40000 ALTER TABLE `site1_elements_sites` DISABLE KEYS */;
INSERT INTO `site1_elements_sites` VALUES (1,1,1,NULL,NULL,1,'2022-12-09 00:57:44','2022-12-09 00:57:44','ec9f2959-0335-481a-ab18-e618762ebb09'),(2,2,1,'home','__home__',1,'2022-12-09 01:22:42','2022-12-09 01:22:42','7128b8d8-28bc-48a8-9299-1de42d4efc44'),(3,3,1,'home','__home__',1,'2022-12-09 01:22:42','2022-12-09 01:22:42','6dce8f69-4507-4672-a2f8-a5e8d9d0b97b'),(4,4,1,'home','__home__',1,'2022-12-09 01:22:42','2022-12-09 01:22:42','346136ac-c713-44b7-8ff0-eb923a9108ec'),(5,5,1,'home','__home__',1,'2022-12-09 01:38:06','2022-12-09 01:38:06','c6449fb9-c46c-4695-8eb2-574c7ba106b3'),(7,7,1,NULL,NULL,1,'2022-12-09 03:01:33','2022-12-09 03:01:33','ffe92960-de26-44fb-8003-7e1f1e36ba39'),(8,8,1,'home','__home__',1,'2022-12-09 03:05:18','2022-12-09 03:05:18','50d43cd2-dfd2-4378-9600-7614d3d25f2d'),(10,10,1,'home','__home__',1,'2022-12-09 03:20:29','2022-12-09 03:20:29','12e9b8f4-8ea6-4be7-a56b-259ccd16ae41'),(12,12,1,NULL,NULL,1,'2022-12-09 03:21:43','2022-12-09 03:21:43','6f445116-8274-40ec-a05e-c194eb886098'),(13,13,1,'home','__home__',1,'2022-12-09 03:21:47','2022-12-09 03:21:47','10f23c1e-96dd-44ce-afdc-75453677044b'),(15,15,1,'home','__home__',1,'2022-12-09 03:49:08','2022-12-09 03:49:08','035f0175-418e-4290-b034-8acc36608c13'),(17,17,1,'home','__home__',1,'2022-12-09 03:49:32','2022-12-09 03:49:32','1af02f4e-d9b1-4037-835a-5cdd893a3e8d'),(18,18,1,'home','__home__',1,'2022-12-09 03:58:05','2022-12-09 03:58:05','1619fe7e-4fdf-4eca-a1f8-2027fafc5db1'),(20,20,1,NULL,NULL,1,'2022-12-09 03:58:46','2022-12-09 03:58:46','6feadfa5-33c4-4a2c-810a-aeff6102d697'),(21,21,1,NULL,NULL,1,'2022-12-09 03:58:54','2022-12-09 03:58:54','144754e0-943c-4ba1-9de0-59fe1ee367ee'),(22,22,1,NULL,NULL,1,'2022-12-09 03:58:57','2022-12-09 03:58:57','1cd558e3-efe9-49b5-92b4-e32d990ea2c2'),(23,23,1,NULL,NULL,1,'2022-12-09 03:59:12','2022-12-09 03:59:12','db724dcb-0279-4e21-a87b-7c5fe97c1def'),(24,24,1,NULL,NULL,1,'2022-12-09 03:59:12','2022-12-09 03:59:12','903e8da5-c30a-498d-aad9-2ec5dedef0f0'),(25,25,1,NULL,NULL,1,'2022-12-09 03:59:12','2022-12-09 03:59:12','496f96fc-0cc4-45ca-b818-a83f25a43f39'),(26,26,1,NULL,NULL,1,'2022-12-09 03:59:20','2022-12-09 03:59:20','055318b0-9d0a-40b7-8ed4-cd4761f941ca'),(27,27,1,NULL,NULL,1,'2022-12-09 03:59:22','2022-12-09 03:59:22','608b0d9d-b76c-4549-9b17-b830fb504b18'),(28,28,1,NULL,NULL,1,'2022-12-09 03:59:22','2022-12-09 03:59:22','dd8795a8-fdfb-4402-b178-a7bbb04581cb'),(29,29,1,NULL,NULL,1,'2022-12-09 03:59:28','2022-12-09 03:59:28','49dc871d-90cc-4ce4-b29f-d10c3bbab8a1'),(30,30,1,NULL,NULL,1,'2022-12-09 03:59:28','2022-12-09 03:59:28','eff6c0c1-2f45-4deb-8286-289fc6a44463'),(31,31,1,NULL,NULL,1,'2022-12-09 03:59:32','2022-12-09 03:59:32','3090ba20-c20e-48ef-a184-28866e6a09ff'),(32,32,1,NULL,NULL,1,'2022-12-09 03:59:32','2022-12-09 03:59:32','3c23fdd3-5043-40c2-97cf-351bffaaceb2'),(33,33,1,NULL,NULL,1,'2022-12-09 03:59:45','2022-12-09 03:59:45','86483bb3-6147-4676-bb68-7537a5c1464d'),(34,34,1,NULL,NULL,1,'2022-12-09 03:59:45','2022-12-09 03:59:45','6d4a10e7-c6ea-4829-8bda-1dd4616fd19b'),(35,35,1,NULL,NULL,1,'2022-12-09 03:59:47','2022-12-09 03:59:47','9f653b49-e223-4f4a-84dc-fee4ae54c2aa'),(36,36,1,NULL,NULL,1,'2022-12-09 03:59:47','2022-12-09 03:59:47','5522fc3c-6750-4916-b5d8-edbb0ce90173'),(37,37,1,NULL,NULL,1,'2022-12-09 03:59:47','2022-12-09 03:59:47','e924c2a7-6d87-4bbe-8b4e-aaac37d1a173'),(38,38,1,NULL,NULL,1,'2022-12-09 03:59:54','2022-12-09 03:59:54','14ca18b2-a5fe-472b-aa37-f81d49efee99'),(39,39,1,NULL,NULL,1,'2022-12-09 03:59:54','2022-12-09 03:59:54','81a11b5f-0af6-4a29-ad88-20fead01faee'),(40,40,1,NULL,NULL,1,'2022-12-09 03:59:54','2022-12-09 03:59:54','f7b8df5a-9aee-47bb-b185-72f3f1d21393'),(41,41,1,NULL,NULL,1,'2022-12-09 03:59:57','2022-12-09 03:59:57','bcaab7e2-2350-4ccc-8f42-798b2327bf73'),(42,42,1,NULL,NULL,1,'2022-12-09 03:59:57','2022-12-09 03:59:57','3a529008-ed17-4b83-ae3c-179b1faed283'),(43,43,1,NULL,NULL,1,'2022-12-09 03:59:57','2022-12-09 03:59:57','5baa60df-42e4-4cb0-897e-df4075b1f768'),(47,47,1,NULL,NULL,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','89a06337-6572-4b2b-ac27-959be19cb5ea'),(48,48,1,NULL,NULL,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','f550e527-94b6-45e6-8a01-578ba55ed840'),(49,49,1,NULL,NULL,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','ac899c91-2a94-48d2-bf8c-c8474e605c2d'),(50,50,1,'home','__home__',1,'2022-12-09 04:01:14','2022-12-09 04:01:14','54b020be-db38-4a97-bbc1-449278b99fc9'),(51,51,1,NULL,NULL,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','14559fb0-3e6d-42f6-a2aa-c92b01037273'),(52,52,1,NULL,NULL,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','0b5e1253-29d2-4fdc-b34c-8bbff8980ed3'),(53,53,1,NULL,NULL,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','c1cd8da2-c7d7-4008-928e-ceaa456f2ada'),(55,55,1,'home','__home__',1,'2022-12-09 04:02:01','2022-12-09 04:02:01','8a73a68f-4d05-4647-99d7-9cc2977c1739'),(56,56,1,NULL,NULL,1,'2022-12-09 04:02:01','2022-12-09 04:02:01','fb4add0c-d886-4ba0-bcc1-36e95650bb44'),(57,57,1,NULL,NULL,1,'2022-12-09 04:02:01','2022-12-09 04:02:01','f003bf35-6457-478e-be42-b3518e1e88b5'),(58,58,1,NULL,NULL,1,'2022-12-09 04:02:01','2022-12-09 04:02:01','ef90b78c-5489-4d31-986e-81fd9f1fd3aa'),(60,60,1,'home','__home__',1,'2022-12-09 04:08:23','2022-12-09 04:08:23','bb7f8959-e173-4ba1-ba6b-d8c4f2b0f034'),(61,61,1,NULL,NULL,1,'2022-12-09 04:08:23','2022-12-09 04:08:23','b2432eae-6ce0-467e-95b2-5af7c4699409'),(62,62,1,NULL,NULL,1,'2022-12-09 04:08:23','2022-12-09 04:08:23','787094b3-9234-4778-9e56-de618108dd27'),(63,63,1,NULL,NULL,1,'2022-12-09 04:08:23','2022-12-09 04:08:23','bc6fc534-7223-4aaf-bfe3-caa0daacd884'),(65,65,1,'home','__home__',1,'2022-12-09 04:08:53','2022-12-09 04:08:53','d637026d-478a-4f0a-9ef2-c7ee017091a2'),(66,66,1,NULL,NULL,1,'2022-12-09 04:08:53','2022-12-09 04:08:53','64ee8de5-a696-4093-bb95-a90b87649514'),(67,67,1,NULL,NULL,1,'2022-12-09 04:08:53','2022-12-09 04:08:53','27cb5b34-5f6b-45ea-947a-b841f035e11e'),(68,68,1,NULL,NULL,1,'2022-12-09 04:08:53','2022-12-09 04:08:53','8b6575fd-63fa-464d-a5ba-b18add0e167f'),(69,69,1,'story-1-title','stories/story-1-title',1,'2022-12-09 12:10:18','2022-12-09 12:10:34','9921150d-1659-4717-9b6c-f83ebf16cb6e'),(70,70,1,'story-1-title','stories/story-1-title',1,'2022-12-09 12:12:40','2022-12-09 12:12:40','8c41fd29-9528-435a-b29d-522f697c6982'),(72,72,1,'story-1-title','stories/story-1-title',1,'2022-12-09 12:13:24','2022-12-09 12:13:24','865df786-60f9-4f07-ae0d-9a23b102aca5'),(73,73,1,NULL,NULL,1,'2022-12-09 12:13:56','2022-12-09 12:13:56','1960fa48-bcf8-4e76-a0a8-2c140142d02f'),(74,74,1,NULL,NULL,1,'2022-12-09 12:13:57','2022-12-09 12:13:57','8b969715-d849-4a08-b7fb-091223962d1c'),(75,75,1,NULL,NULL,1,'2022-12-09 12:13:57','2022-12-09 12:13:57','d5f2279f-f1ce-4877-b32f-b30aa81c0530'),(76,76,1,NULL,NULL,1,'2022-12-09 12:13:57','2022-12-09 12:13:57','244eeafb-964d-4f3e-b6c1-8a1544ceaac8'),(77,77,1,NULL,NULL,1,'2022-12-09 12:13:57','2022-12-09 12:13:57','e7c272d8-2111-4d48-98e7-96f7d0aa61fb'),(78,78,1,NULL,NULL,1,'2022-12-09 12:13:58','2022-12-09 12:13:58','1bb17a50-aa48-4fd8-8a77-288e3b4abcbc'),(79,79,1,NULL,NULL,1,'2022-12-09 12:13:58','2022-12-09 12:13:58','104fba07-b7a1-4d3b-9aa5-8c65e7d01d37'),(81,81,1,'story-1-title','stories/story-1-title',1,'2022-12-09 12:17:40','2022-12-09 12:17:40','3a6e5118-5ab1-42ac-b3f7-0650f5bcaf04'),(82,82,1,'vestibulum-nec-leo-nisi','stories/vestibulum-nec-leo-nisi',1,'2022-12-09 12:17:47','2022-12-09 12:19:33','18b8c15f-d52a-402a-90f0-4afb9ee3f4b2'),(83,83,1,'vestibulum-nec-leo-nisi','stories/vestibulum-nec-leo-nisi',1,'2022-12-09 12:19:34','2022-12-09 12:19:34','94fff903-6f86-448e-9499-a9be754555b2'),(85,85,1,'vestibulum-nec-leo-nisi','stories/vestibulum-nec-leo-nisi',1,'2022-12-09 12:19:49','2022-12-09 12:19:49','3e658286-d407-4bff-ace4-998feaef29a3'),(87,87,1,'story-1-title','stories/story-1-title',1,'2022-12-09 12:19:56','2022-12-09 12:19:56','d0c784c4-b8bf-4251-806a-c073256a7b3a'),(89,89,1,'vestibulum-nec-leo-nisi','stories/vestibulum-nec-leo-nisi',1,'2022-12-09 12:20:15','2022-12-09 12:20:15','0f53e598-d066-49bd-8e0d-9854d52d2092'),(90,90,1,'story-iii-title','stories/story-iii-title',1,'2022-12-09 12:20:22','2022-12-09 12:20:28','2adb2794-f7f2-4615-872c-e6ebaad53c10'),(91,91,1,'story-iii-title','stories/story-iii-title',1,'2022-12-09 12:20:40','2022-12-09 12:20:40','fcfa29ba-86ef-4685-9643-cc56f140c994'),(93,93,1,'vestibulum-nec-leo-nisi','stories/vestibulum-nec-leo-nisi',1,'2022-12-09 12:20:56','2022-12-09 12:20:56','247fc2bf-3f1e-4bad-87fc-a8169fba4d5b'),(95,95,1,'story-iii-title','stories/story-iii-title',1,'2022-12-09 12:24:58','2022-12-09 12:24:58','fad98135-e277-441b-8497-0afe82cc95b2'),(96,96,1,'story-iii-title','stories/story-iii-title',1,'2022-12-09 12:25:02','2022-12-09 12:25:02','cd94c36b-506f-4ac1-879f-9c8dfc6bc196'),(98,98,1,'vestibulum-nec-leo-nisi','stories/vestibulum-nec-leo-nisi',1,'2022-12-09 12:37:54','2022-12-09 12:37:54','303317f9-e405-4895-b2d3-f2dcdfdc7de5'),(99,99,1,'stories-listing','stories',1,'2022-12-11 02:27:25','2022-12-11 02:27:25','78234ea3-0a05-4122-92ac-f7ef91ef582a'),(100,100,1,'stories-listing','stories',1,'2022-12-11 02:27:25','2022-12-11 02:27:25','b4374c9e-2b37-4c99-9dca-77ee80daaa36'),(101,101,1,'stories-listing','stories',1,'2022-12-11 02:27:25','2022-12-11 02:27:25','672ad0bc-0447-4798-9fbd-3afd508b7f4e'),(102,102,1,'stories-listing','stories',1,'2022-12-11 02:27:59','2022-12-11 02:27:59','208867c0-4fc7-4630-8ba1-c805e8df2199'),(103,103,1,'stories-listing','stories',1,'2022-12-11 02:28:38','2022-12-11 02:28:38','35b64b41-b662-4277-885b-bd87c491e38c'),(104,104,1,'stories-listing','stories',1,'2022-12-11 02:28:38','2022-12-11 02:28:38','84fbbd12-dc71-43b1-afc9-b0f86fd7af26'),(105,105,1,'stories-listing','stories',1,'2022-12-11 02:28:39','2022-12-11 02:28:39','f169c9a8-45c2-4d23-8f6e-fef5a94946ef'),(106,106,1,'stories-listing','stories',1,'2022-12-11 02:28:39','2022-12-11 02:28:39','fc5a37c8-c792-4d81-8e1f-ad5ff1f6a4d0'),(107,107,1,'stories-listing','stories',1,'2022-12-11 02:28:40','2022-12-11 02:28:40','6f8c155c-8c6a-4ffe-9559-456f3d415526'),(109,109,1,'stories-listing','stories',1,'2022-12-11 02:31:13','2022-12-11 02:31:13','d5478368-29d7-497b-ac32-9d68ac509ee0'),(110,110,1,'home','__home__',1,'2022-12-11 02:34:56','2022-12-11 02:34:56','c15d1a1b-c74c-4f0c-bf53-5163d608a937'),(111,111,1,NULL,NULL,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','9961f027-0701-4cb1-a2bb-5ada1e91f105'),(112,112,1,NULL,NULL,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','3fea2578-d9b3-4fc1-ac10-bd75ab586d3c'),(113,113,1,NULL,NULL,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','67dac5fb-0241-4be4-b744-2c6b84c42ed3'),(115,115,1,'home','__home__',1,'2022-12-11 02:35:58','2022-12-11 02:35:58','a9fa2fcd-4e34-44c5-b5ec-f6a9b00e9336'),(116,116,1,NULL,NULL,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','39256e37-e705-4f82-8b24-4f1a3d5a1e0e'),(117,117,1,NULL,NULL,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','c4819ae5-e793-43a0-80f7-127172ea4e97'),(118,118,1,NULL,NULL,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','2a580dc4-d1c0-48f7-94b8-995df62d7bd2'),(120,120,1,'home','__home__',1,'2022-12-11 02:44:54','2022-12-11 02:44:54','19053936-3b58-44a7-b058-5461dc0fa8e6'),(121,121,1,NULL,NULL,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','7dd6ae40-04c6-4324-87d2-b1175572bc4d'),(122,122,1,NULL,NULL,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','5e928a35-cd0d-4b92-87a1-4e6d6ed88571'),(123,123,1,NULL,NULL,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','39d45ec5-7664-471a-aa0c-d3f3dffb903e'),(124,124,1,'our-gear','our-gear',1,'2022-12-11 02:55:46','2022-12-11 02:55:54','eff31ca9-5ac4-4bf0-87c3-a5a22785ce26'),(125,125,1,'our-gear','our-gear',1,'2022-12-11 02:55:56','2022-12-11 02:55:56','7a8a7882-6641-4c56-a923-bee6bb8134ed'),(127,127,1,'our-gear','our-gear',1,'2022-12-11 02:57:34','2022-12-11 02:57:34','f3f23486-a62d-4615-92d9-4ecbfab06b32'),(129,129,1,'our-gear','our-gear',1,'2022-12-11 02:58:22','2022-12-11 02:58:22','9efb3374-aff8-4dc8-92d0-dafb65958f15'),(131,131,1,'our-gear','our-gear',1,'2022-12-11 03:01:05','2022-12-11 03:01:05','7bba81d3-8690-49c8-b4ca-31ac24ee2065'),(132,132,1,'fujifilm-x-pro2-camera','our-gear/fujifilm-x-pro2-camera',1,'2022-12-11 03:02:52','2022-12-11 03:54:42','2d8e7ced-fd5f-40ff-b926-ba850af3374c'),(133,133,1,NULL,NULL,1,'2022-12-11 03:07:09','2022-12-11 03:07:09','d1e706ef-d567-461a-9c1f-25f478bc9d0e'),(134,134,1,'fujifilm-x-pro2-camera','fujifilm-x-pro2-camera',1,'2022-12-11 03:08:17','2022-12-11 03:08:17','f28f4ac4-0454-41d8-a2e1-852a31d69d27'),(136,136,1,'fujifilm-x-pro2-camera','our-gear/fujifilm-x-pro2-camera',1,'2022-12-11 03:08:49','2022-12-11 03:08:49','7c879bf0-0acb-4c92-adb4-9cd382f2af93'),(137,137,1,NULL,NULL,1,'2022-12-11 03:16:08','2022-12-11 03:16:08','028b1b82-f339-4525-a5f4-5c623ddd487d'),(138,138,1,NULL,NULL,1,'2022-12-11 03:17:24','2022-12-11 03:17:24','d5aeb5b6-17d2-44b9-9ab9-f2583ae31848'),(139,139,1,NULL,NULL,1,'2022-12-11 03:17:24','2022-12-11 03:17:24','4f6c751c-6fca-4a7c-bb66-22b314bd9551'),(140,140,1,NULL,NULL,1,'2022-12-11 03:27:42','2022-12-11 03:27:42','0ccfddd6-5bf6-40d3-b9a4-46ef55eb5fba'),(141,141,1,'our-gear','our-gear',1,'2022-12-11 03:53:24','2022-12-11 03:53:24','49f6ab3a-1ad8-45a3-be7f-a3a7781979f9'),(143,143,1,'our-gear','our-gear',1,'2022-12-11 03:54:41','2022-12-11 03:54:41','de264dfc-ca32-4cce-b69a-9a202cd10d7e'),(144,144,1,'stories-listing','stories',1,'2022-12-11 12:51:55','2022-12-11 12:51:55','fa700d97-60c5-4b6d-867f-776d02ae9b48'),(145,145,1,'stories-listing','stories',1,'2022-12-11 12:52:29','2022-12-11 12:52:29','a8beb120-3f8c-498f-b669-bef0859aa627'),(146,137,2,NULL,NULL,1,'2022-12-11 20:29:45','2022-12-11 20:29:45','f2808a11-ac8c-4686-8d7f-36dc69f7c77a'),(147,138,2,NULL,NULL,1,'2022-12-11 20:29:45','2022-12-11 20:29:45','5f69d0d5-28e1-47a9-9b0b-6d2626187b34'),(148,139,2,NULL,NULL,1,'2022-12-11 20:29:45','2022-12-11 20:29:45','32ed0f4f-7b25-4e3a-a7bd-48c6a00777fd'),(149,140,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','5fb3bae4-ff22-49c8-b3ff-5000630a1067'),(150,7,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','343ef906-3138-48d0-b48c-c4e527af6cc7'),(151,12,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','90bc2764-f4f3-40ed-8011-d8ae25f281b1'),(152,23,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','efb61635-0444-4819-b51b-df9c065ccaa9'),(153,24,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','0f41e4bc-ed36-4125-82eb-06f1294dfc69'),(154,25,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','9816483a-8a85-481c-8786-4cef88e019a6'),(155,73,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','337f7b75-4423-4167-95c7-028221c8be79'),(156,74,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','0c047587-b906-4270-9d7d-f2b50c7687e3'),(157,75,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','c2e8cbc0-45a9-4cd9-b5d8-976fb44e017d'),(158,76,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','df5f8caf-6ab5-4c97-8264-bccd3156ed4e'),(159,77,2,NULL,NULL,1,'2022-12-11 20:29:48','2022-12-11 20:29:48','9baa7e0c-152c-4cbf-8781-f0575cfbc5dc'),(160,78,2,NULL,NULL,1,'2022-12-11 20:29:49','2022-12-11 20:29:49','0abe66b3-02ac-4762-91e6-31ed3de04742'),(161,79,2,NULL,NULL,1,'2022-12-11 20:29:49','2022-12-11 20:29:49','83af9549-d5e7-4906-8684-baf8fbaf1aed'),(162,133,2,NULL,NULL,1,'2022-12-11 20:29:49','2022-12-11 20:29:49','bcac766e-5e48-4f3f-80e5-6de4f6535a69');
/*!40000 ALTER TABLE `site1_elements_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_entries`
--

DROP TABLE IF EXISTS `site1_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_entries` (
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
  PRIMARY KEY (`id`),
  KEY `site1_idx_lvjfxtpkiwjqedzuexibuvluqjmyvxzkuphk` (`postDate`),
  KEY `site1_idx_kkgzqjbnitytbevfpxdprbifkfvnlexjrvga` (`expiryDate`),
  KEY `site1_idx_bjzvnsjaqxcebfprqhmndmwulzwmfwajxelw` (`authorId`),
  KEY `site1_idx_itfamgyktqpahfehwyudlxxgbzsaklqpjmgn` (`sectionId`),
  KEY `site1_idx_zupsoekddphhsqgytfuxiengupgjmpfsjboy` (`typeId`),
  KEY `site1_fk_ymzdykejfzvlvnhmpxjngqanyaejfijathjk` (`parentId`),
  CONSTRAINT `site1_fk_jlwaldaumlblsqjmighgpecrvvlvglasbump` FOREIGN KEY (`sectionId`) REFERENCES `site1_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_nbuyufmlmjzcgvjfpapluixldtrvynzclwdv` FOREIGN KEY (`authorId`) REFERENCES `site1_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `site1_fk_yeibixzehhsjvulvzhtfltqormtdshunmqll` FOREIGN KEY (`typeId`) REFERENCES `site1_entrytypes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_ymzdykejfzvlvnhmpxjngqanyaejfijathjk` FOREIGN KEY (`parentId`) REFERENCES `site1_entries` (`id`) ON DELETE SET NULL,
  CONSTRAINT `site1_fk_yoprstvjsyfspwwwdavsupkrszqqlxgdbgki` FOREIGN KEY (`id`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_entries`
--

LOCK TABLES `site1_entries` WRITE;
/*!40000 ALTER TABLE `site1_entries` DISABLE KEYS */;
INSERT INTO `site1_entries` VALUES (2,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 01:22:42','2022-12-09 01:22:42'),(3,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 01:22:42','2022-12-09 01:22:42'),(4,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 01:22:42','2022-12-09 01:22:42'),(5,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 01:38:06','2022-12-09 01:38:06'),(8,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 03:05:18','2022-12-09 03:05:18'),(10,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 03:20:29','2022-12-09 03:20:29'),(13,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 03:21:47','2022-12-09 03:21:47'),(15,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 03:49:08','2022-12-09 03:49:08'),(17,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 03:49:32','2022-12-09 03:49:32'),(18,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 03:58:05','2022-12-09 03:58:05'),(50,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 04:01:14','2022-12-09 04:01:14'),(55,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 04:02:01','2022-12-09 04:02:01'),(60,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 04:08:23','2022-12-09 04:08:23'),(65,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-09 04:08:53','2022-12-09 04:08:53'),(69,2,NULL,2,1,'2022-12-09 12:12:00',NULL,NULL,'2022-12-09 12:10:18','2022-12-09 12:12:40'),(70,2,NULL,2,1,'2022-12-09 12:12:00',NULL,NULL,'2022-12-09 12:12:40','2022-12-09 12:12:40'),(72,2,NULL,2,1,'2022-12-09 12:12:00',NULL,NULL,'2022-12-09 12:13:24','2022-12-09 12:13:24'),(81,2,NULL,2,1,'2022-12-09 12:12:00',NULL,NULL,'2022-12-09 12:17:40','2022-12-09 12:17:40'),(82,2,NULL,2,1,'2022-12-09 12:19:00',NULL,NULL,'2022-12-09 12:17:47','2022-12-09 12:19:34'),(83,2,NULL,2,1,'2022-12-09 12:19:00',NULL,NULL,'2022-12-09 12:19:34','2022-12-09 12:19:34'),(85,2,NULL,2,1,'2022-12-09 12:19:00',NULL,NULL,'2022-12-09 12:19:49','2022-12-09 12:19:49'),(87,2,NULL,2,1,'2022-12-09 12:12:00',NULL,NULL,'2022-12-09 12:19:56','2022-12-09 12:19:56'),(89,2,NULL,2,1,'2022-12-09 12:19:00',NULL,NULL,'2022-12-09 12:20:15','2022-12-09 12:20:15'),(90,2,NULL,2,1,'2022-12-09 12:20:00',NULL,NULL,'2022-12-09 12:20:22','2022-12-09 12:20:40'),(91,2,NULL,2,1,'2022-12-09 12:20:00',NULL,NULL,'2022-12-09 12:20:40','2022-12-09 12:20:40'),(93,2,NULL,2,1,'2022-12-09 12:19:00',NULL,NULL,'2022-12-09 12:20:56','2022-12-09 12:20:56'),(95,2,NULL,2,1,'2022-12-09 12:20:00',NULL,NULL,'2022-12-09 12:24:58','2022-12-09 12:24:58'),(96,2,NULL,2,1,'2022-12-09 12:20:00',NULL,NULL,'2022-12-09 12:25:02','2022-12-09 12:25:02'),(98,2,NULL,2,1,'2022-12-09 12:19:00',NULL,NULL,'2022-12-09 12:37:54','2022-12-09 12:37:54'),(99,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 02:27:25','2022-12-11 02:27:25'),(100,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 02:27:25','2022-12-11 02:27:25'),(101,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 02:27:25','2022-12-11 02:27:25'),(102,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 02:27:59','2022-12-11 02:27:59'),(103,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 02:28:38','2022-12-11 02:28:38'),(104,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 02:28:38','2022-12-11 02:28:38'),(105,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 02:28:39','2022-12-11 02:28:39'),(106,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 02:28:39','2022-12-11 02:28:39'),(107,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 02:28:40','2022-12-11 02:28:40'),(109,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 02:31:13','2022-12-11 02:31:13'),(110,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-11 02:34:56','2022-12-11 02:34:56'),(115,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-11 02:35:58','2022-12-11 02:35:58'),(120,1,NULL,1,NULL,'2022-12-09 01:22:00',NULL,NULL,'2022-12-11 02:44:54','2022-12-11 02:44:54'),(124,4,NULL,4,1,'2022-12-11 02:55:00',NULL,NULL,'2022-12-11 02:55:46','2022-12-11 02:55:56'),(125,4,NULL,4,1,'2022-12-11 02:55:00',NULL,NULL,'2022-12-11 02:55:56','2022-12-11 02:55:56'),(127,4,NULL,4,1,'2022-12-11 02:55:00',NULL,NULL,'2022-12-11 02:57:34','2022-12-11 02:57:34'),(129,4,NULL,4,1,'2022-12-11 02:55:00',NULL,NULL,'2022-12-11 02:58:22','2022-12-11 02:58:22'),(131,4,NULL,4,1,'2022-12-11 02:55:00',NULL,NULL,'2022-12-11 03:01:05','2022-12-11 03:01:05'),(132,4,NULL,4,1,'2022-12-11 03:08:00',NULL,NULL,'2022-12-11 03:02:52','2022-12-11 03:08:17'),(134,4,NULL,4,1,'2022-12-11 03:08:00',NULL,NULL,'2022-12-11 03:08:17','2022-12-11 03:08:17'),(136,4,NULL,4,1,'2022-12-11 03:08:00',NULL,NULL,'2022-12-11 03:08:49','2022-12-11 03:08:49'),(141,4,NULL,4,1,'2022-12-11 02:55:00',NULL,NULL,'2022-12-11 03:53:24','2022-12-11 03:53:24'),(143,4,NULL,4,1,'2022-12-11 02:55:00',NULL,NULL,'2022-12-11 03:54:41','2022-12-11 03:54:41'),(144,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 12:51:55','2022-12-11 12:51:55'),(145,3,NULL,3,NULL,'2022-12-11 02:27:00',NULL,NULL,'2022-12-11 12:52:29','2022-12-11 12:52:29');
/*!40000 ALTER TABLE `site1_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_entrytypes`
--

DROP TABLE IF EXISTS `site1_entrytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_uanmuqfngcwgqvfbdlntnrerhhybyiszmuam` (`name`,`sectionId`),
  KEY `site1_idx_pkwikdonktdnsbaqrpenpxnqzozemzfhqrtc` (`handle`,`sectionId`),
  KEY `site1_idx_fmygvzjkakqgbjoieildgppvymfazxiwesef` (`sectionId`),
  KEY `site1_idx_gareggldqkdxkruebddrbfgqeumuayniutbz` (`fieldLayoutId`),
  KEY `site1_idx_ovpjouxesbtcojezctszpzkvomgzcnjhjxlx` (`dateDeleted`),
  CONSTRAINT `site1_fk_ajysigrewhvfdwwhuxtplwtanrcasdjizann` FOREIGN KEY (`sectionId`) REFERENCES `site1_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_mioxlplryqtgnivjccghphozfovjvtifyzum` FOREIGN KEY (`fieldLayoutId`) REFERENCES `site1_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_entrytypes`
--

LOCK TABLES `site1_entrytypes` WRITE;
/*!40000 ALTER TABLE `site1_entrytypes` DISABLE KEYS */;
INSERT INTO `site1_entrytypes` VALUES (1,1,1,'Home','home',0,'site',NULL,'{section.name|raw}',1,'2022-12-09 01:22:42','2022-12-09 01:22:42',NULL,'34349688-9057-4f53-9fdc-aa1b70d6a50f'),(2,2,4,'Stories','stories',1,'site',NULL,NULL,1,'2022-12-09 12:08:52','2022-12-09 12:09:34',NULL,'eb8469ce-5b73-4e6c-b016-b122bb07a4f7'),(3,3,5,'Stories Listing','storiesListing',1,'site',NULL,'{section.name|raw}',1,'2022-12-11 02:27:25','2022-12-11 02:27:59',NULL,'3eb03143-09d6-457d-a8d5-d9d30fb516d8'),(4,4,6,'General Pages','generalPages',1,'site',NULL,NULL,1,'2022-12-11 02:54:34','2022-12-11 02:55:15',NULL,'6329b3e2-9459-45aa-93c2-410f6793dfab');
/*!40000 ALTER TABLE `site1_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_fieldgroups`
--

DROP TABLE IF EXISTS `site1_fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_qpuiimhrbsdlssubjubsjrctzgqxakoqeoda` (`name`),
  KEY `site1_idx_cspajjcvyaoawqjwazhsyfqyrplooljspxju` (`dateDeleted`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_fieldgroups`
--

LOCK TABLES `site1_fieldgroups` WRITE;
/*!40000 ALTER TABLE `site1_fieldgroups` DISABLE KEYS */;
INSERT INTO `site1_fieldgroups` VALUES (1,'Common','2022-12-09 00:57:44','2022-12-09 00:57:44',NULL,'3c0c3cab-e196-405c-92e8-5331bb03e27e'),(2,'Home Page','2022-12-09 01:28:52','2022-12-09 01:28:52',NULL,'631f6c4e-5561-49cf-9112-27cc005a4f48');
/*!40000 ALTER TABLE `site1_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_fieldlayoutfields`
--

DROP TABLE IF EXISTS `site1_fieldlayoutfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_fieldlayoutfields` (
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
  UNIQUE KEY `site1_idx_ecuwggoroihyedpapezgicbkfqsuvlvdceiu` (`layoutId`,`fieldId`),
  KEY `site1_idx_zkzhpludjqrpafifywhqtgmvgpkyaogiermf` (`sortOrder`),
  KEY `site1_idx_hmbqedyhgognkyjrlhlyujcdufwdwbvyuion` (`tabId`),
  KEY `site1_idx_zyswwxarbrhmntbgmhwiqzumguvamcagwnpq` (`fieldId`),
  CONSTRAINT `site1_fk_fdwstyysqkkhfvqanielwizjhbcmglvhtjqh` FOREIGN KEY (`layoutId`) REFERENCES `site1_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_jmnektgxjwshdrgfthhsbmpeoczmrpdomlnv` FOREIGN KEY (`tabId`) REFERENCES `site1_fieldlayouttabs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_rrqnnhywqahbtqvjtepcdesoxkdvcvjhtybv` FOREIGN KEY (`fieldId`) REFERENCES `site1_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_fieldlayoutfields`
--

LOCK TABLES `site1_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `site1_fieldlayoutfields` DISABLE KEYS */;
INSERT INTO `site1_fieldlayoutfields` VALUES (3,3,4,7,1,0,'2022-12-09 03:56:41','2022-12-09 03:56:41','085ecc91-d5e2-47f0-a881-e3c128877542'),(4,3,4,6,1,1,'2022-12-09 03:56:41','2022-12-09 03:56:41','6f793af5-05d6-4fcc-8ffa-6badb3705193'),(5,3,4,5,1,2,'2022-12-09 03:56:41','2022-12-09 03:56:41','35c424ef-8db3-4a81-af9c-a579063ed7d7'),(10,4,10,8,0,1,'2022-12-09 12:10:03','2022-12-09 12:10:03','dd9c2f03-19a3-46c2-96ae-c3cd2b917480'),(11,4,10,9,0,2,'2022-12-09 12:10:03','2022-12-09 12:10:03','b3f9629e-3eee-4a41-bdf7-ac2b659b9a79'),(12,4,10,10,0,3,'2022-12-09 12:10:03','2022-12-09 12:10:03','30bfd3cd-8632-4c69-bdbe-1eb8e53c47cb'),(13,1,13,1,0,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','775560c2-0746-403a-b1d3-21d74a63ea87'),(14,1,13,2,0,2,'2022-12-11 02:34:56','2022-12-11 02:34:56','71b6f99a-6152-4913-afc1-f78bfd39bbc5'),(15,1,14,11,0,0,'2022-12-11 02:34:56','2022-12-11 02:34:56','9cb729d0-a005-4270-bc3c-87289a016d4a'),(16,1,15,3,0,0,'2022-12-11 02:34:56','2022-12-11 02:34:56','e682b04e-d646-4e90-ac92-f02c6f01d7be'),(17,1,15,4,0,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','def28210-1f6c-41bc-999f-678467a0550b'),(18,6,18,9,0,1,'2022-12-11 02:56:36','2022-12-11 02:56:36','39ed0be4-55bf-4620-99ba-d9a00f328714'),(19,7,19,13,1,0,'2022-12-11 03:15:13','2022-12-11 03:15:13','ca770e05-0a24-45d8-ac37-5e01ddbca137'),(20,7,19,14,1,1,'2022-12-11 03:15:13','2022-12-11 03:15:13','447da58c-886e-4f08-ad9f-f001065960cd'),(21,8,20,12,0,0,'2022-12-11 03:16:08','2022-12-11 03:16:08','4e4da60e-f43c-454e-8ab0-af413eea3dd0'),(22,9,21,9,0,0,'2022-12-11 03:27:42','2022-12-11 03:27:42','de3c66b5-189f-470c-a52f-29dbc48f4892');
/*!40000 ALTER TABLE `site1_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_fieldlayouts`
--

DROP TABLE IF EXISTS `site1_fieldlayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_dklwumujxaxalmsdjlnnddgzrwosnqivfazv` (`dateDeleted`),
  KEY `site1_idx_oqxwsttdmyxydnmjdhjqfzfpvgrnynjmbnog` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_fieldlayouts`
--

LOCK TABLES `site1_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `site1_fieldlayouts` DISABLE KEYS */;
INSERT INTO `site1_fieldlayouts` VALUES (1,'craft\\elements\\Entry','2022-12-09 01:22:42','2022-12-09 01:22:42',NULL,'50c1bef1-5cb5-44bc-9a2d-75d17d28eea0'),(2,'craft\\elements\\Asset','2022-12-09 01:28:22','2022-12-09 01:28:22',NULL,'cf8cdf2b-ec13-4d82-a32e-e31057d8475b'),(3,'craft\\elements\\MatrixBlock','2022-12-09 03:56:41','2022-12-09 03:56:41',NULL,'48e1a9f1-9885-4933-b06f-b0e654471758'),(4,'craft\\elements\\Entry','2022-12-09 12:08:52','2022-12-09 12:08:52',NULL,'f83232ef-517c-417c-a7d1-1805aa285bc0'),(5,'craft\\elements\\Entry','2022-12-11 02:27:25','2022-12-11 02:27:25',NULL,'6b7063e5-1188-4c78-be22-3bbd73d94c7f'),(6,'craft\\elements\\Entry','2022-12-11 02:54:34','2022-12-11 02:54:34',NULL,'284a2c8b-6acf-4016-a894-78f1283b6c84'),(7,'craft\\elements\\MatrixBlock','2022-12-11 03:15:13','2022-12-11 03:15:13',NULL,'83e7c74f-3cef-4941-92c8-cb1f1c0f6311'),(8,'craft\\elements\\GlobalSet','2022-12-11 03:16:08','2022-12-11 03:16:08',NULL,'e8d3e2c1-ee20-4969-b532-ce6aade8e378'),(9,'craft\\elements\\GlobalSet','2022-12-11 03:27:42','2022-12-11 03:27:42',NULL,'0c913f50-97ba-4195-b48c-19bc953bb94c');
/*!40000 ALTER TABLE `site1_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_fieldlayouttabs`
--

DROP TABLE IF EXISTS `site1_fieldlayouttabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `settings` text,
  `elements` text,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_fwypphmsvycpwvslsxcykmdlfjryglpguyik` (`sortOrder`),
  KEY `site1_idx_cldadibklabzvunkfbytjromsoclklengwot` (`layoutId`),
  CONSTRAINT `site1_fk_vkaixsnvsbzffjvbsydyydeowsbkbnnjlttq` FOREIGN KEY (`layoutId`) REFERENCES `site1_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_fieldlayouttabs`
--

LOCK TABLES `site1_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `site1_fieldlayouttabs` DISABLE KEYS */;
INSERT INTO `site1_fieldlayouttabs` VALUES (2,2,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"daa73310-3c33-4be1-bc35-fefead5c452c\",\"userCondition\":null,\"elementCondition\":null}]',1,'2022-12-09 01:28:22','2022-12-09 01:28:22','55088043-d90c-4b1b-a922-801cfe8d8e92'),(4,3,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"51378276-7439-483d-9fbb-7232808491ca\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"a9e055e3-3a0f-4097-a01f-1b5291d48ff3\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"6f80be96-322c-43bd-b060-1e6156ee5bf5\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"654340c6-51b6-475b-8a5c-7ee1fc41d725\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"7f428924-fdb2-40fd-ae1d-a9d472e4b7a2\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"005df6e8-38d3-4f00-81cf-3a755f6e7ee6\"}]',1,'2022-12-09 03:56:41','2022-12-09 03:56:41','04a7ea6b-3d05-4f49-a9c7-ea92bc7d2f1f'),(10,4,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"6970049b-734b-435b-959e-1884156e6ab9\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"51071f2d-fe18-4b0f-8c1b-5127488ffc71\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"37a653fa-1c39-4171-ba16-5315fdd66b09\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"b111d7b5-17c9-49fb-826e-5a04c2b486f0\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"0a2ae81b-7399-4be2-916c-10d42107daa1\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"429b5bbb-7c3a-4663-aa0f-3a9d3441336a\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed\"}]',1,'2022-12-09 12:10:03','2022-12-09 12:10:03','b8e42da9-8843-498b-901e-6b53831a6506'),(12,5,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"87938f76-183a-4846-8917-c49b0b481893\",\"userCondition\":null,\"elementCondition\":null}]',1,'2022-12-11 02:27:59','2022-12-11 02:27:59','f11832c7-b250-40a5-a634-b1a5a545bdb2'),(13,1,'Hero','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"fc9622d9-27e8-487d-b78f-47c87714e58e\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"c7fd1915-026d-45bd-8367-98d2d72742f4\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"d91ec4e6-cf60-47a7-aecf-34a0aa16ba89\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"0e4bb8b6-fbdc-453c-8c43-41ad8a3f9e11\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b0947df1-f206-43a8-9f0a-6ae8deba0a14\"}]',1,'2022-12-11 02:34:56','2022-12-11 02:34:56','fc85c425-1ea4-4e6d-bae3-d0cbd003cfc5'),(14,1,'Featured Story','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"d0868a04-0b72-4612-82ea-6152dd967b7e\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"183615f5-f05e-457f-8354-9f61d1eefe32\"}]',2,'2022-12-11 02:34:56','2022-12-11 02:34:56','6836f45d-ef0d-41b7-9a6c-5b7690436511'),(15,1,'Riders','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"d7ac45ef-105a-41ba-b91e-6c6d5b492feb\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"6527e8af-af04-4e18-ac6a-cc95356b2510\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"d77a0707-bf6b-4b45-9d6d-6bfe70dbe291\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e78aa919-66d6-4895-aba5-9e67c3c3a284\"}]',3,'2022-12-11 02:34:56','2022-12-11 02:34:56','0de64c14-ceee-4093-9bc5-fd8a2910e946'),(18,6,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"d02a09a9-70c1-4183-af50-a67cf6a63e1a\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"d3a6aaf8-563d-493b-b381-e75cb1758841\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"0a2ae81b-7399-4be2-916c-10d42107daa1\"}]',1,'2022-12-11 02:56:36','2022-12-11 02:56:36','0268b91e-a2ed-4679-8305-edf2b9214989'),(19,7,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"1be71912-ed71-4771-b1fa-40b0d4ac6e2d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"69bff3ff-7a05-4310-a00b-5abd48683eed\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"fdac0953-78f7-40ce-8250-d8096f5fd5b1\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"f2481b47-7c72-4c84-9f9b-47d0b0c84671\"}]',1,'2022-12-11 03:15:13','2022-12-11 03:15:13','ff522db9-64bc-4da8-8e5e-39608d69a79e'),(20,8,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"e385c9c4-9736-46d2-b9d8-22d584a00bc0\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b80f7a4f-d451-4378-9a11-10ecd4d576d5\"}]',1,'2022-12-11 03:16:08','2022-12-11 03:16:08','99f3528b-81ac-4bfc-9de6-2f5816fb0710'),(21,9,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"bc2f9c93-fc33-48fe-ba2d-45c39183b7a1\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"0a2ae81b-7399-4be2-916c-10d42107daa1\"}]',1,'2022-12-11 03:27:42','2022-12-11 03:27:42','a465e07e-f71e-4103-98bc-df5db801eed3');
/*!40000 ALTER TABLE `site1_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_fields`
--

DROP TABLE IF EXISTS `site1_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) DEFAULT NULL,
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
  KEY `site1_idx_bbqmqtvwyhpbtzshlaqksyqzvmmdsajjtljn` (`handle`,`context`),
  KEY `site1_idx_rcpwemmnnpeeyvwokkxzmvdlrgtxsegwswmr` (`groupId`),
  KEY `site1_idx_qmmejmysyxgfflxqpvluzlcsjtcmwythewor` (`context`),
  CONSTRAINT `site1_fk_vithfarjzjprqooxpfghrkarfjvgqkqcryei` FOREIGN KEY (`groupId`) REFERENCES `site1_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_fields`
--

LOCK TABLES `site1_fields` WRITE;
/*!40000 ALTER TABLE `site1_fields` DISABLE KEYS */;
INSERT INTO `site1_fields` VALUES (1,2,'Hero Title','heroTitle','global','qghzmhee',NULL,0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}','2022-12-09 01:29:45','2022-12-09 01:29:45','d91ec4e6-cf60-47a7-aecf-34a0aa16ba89'),(2,2,'Hero Image','heroImage','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maxRelations\":1,\"minRelations\":0,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":\"Add a background image\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"source\":null,\"sources\":[\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"large\"}','2022-12-09 01:37:14','2022-12-09 01:55:40','b0947df1-f206-43a8-9f0a-6ae8deba0a14'),(3,2,'Riders Intro Content','ridersIntroContent','global','subbpqar',NULL,0,'none',NULL,'craft\\redactor\\Field','{\"availableTransforms\":\"\",\"availableVolumes\":\"*\",\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":null,\"purifyHtml\":true,\"redactorConfig\":null,\"removeEmptyTags\":false,\"removeInlineStyles\":false,\"removeNbsp\":false,\"showHtmlButtonForNonAdmins\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}','2022-12-09 03:53:40','2022-12-09 03:53:40','6527e8af-af04-4e18-ac6a-cc95356b2510'),(4,2,'Riders','riders','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Matrix','{\"contentTable\":\"{{%matrixcontent_riders}}\",\"maxBlocks\":null,\"minBlocks\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}','2022-12-09 03:56:41','2022-12-09 03:56:41','e78aa919-66d6-4895-aba5-9e67c3c3a284'),(5,NULL,'Description','description','matrixBlockType:74db721e-e1cd-43a3-bdd7-07b515b52b8c','zrobheoq',NULL,0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":2,\"multiline\":true,\"placeholder\":null,\"uiMode\":\"normal\"}','2022-12-09 03:56:41','2022-12-09 03:56:41','005df6e8-38d3-4f00-81cf-3a755f6e7ee6'),(6,NULL,'Full Name','fullName','matrixBlockType:74db721e-e1cd-43a3-bdd7-07b515b52b8c','vznbkjgz',NULL,0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}','2022-12-09 03:56:41','2022-12-09 03:56:41','654340c6-51b6-475b-8a5c-7ee1fc41d725'),(7,NULL,'Photo','photo','matrixBlockType:74db721e-e1cd-43a3-bdd7-07b515b52b8c',NULL,NULL,0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maxRelations\":1,\"minRelations\":1,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":\"Add a photo\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"source\":null,\"sources\":[\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2022-12-09 03:56:41','2022-12-09 03:56:41','a9e055e3-3a0f-4097-a01f-1b5291d48ff3'),(8,1,'Photos','photos','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":\"Add a photo\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"source\":null,\"sources\":[\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2022-12-09 12:06:35','2022-12-09 12:06:35','37a653fa-1c39-4171-ba16-5315fdd66b09'),(9,1,'Rich text','richText','global','bzqtcdcy',NULL,0,'none',NULL,'craft\\redactor\\Field','{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"1704c7f1-cc95-485d-be6a-eadada2a51bb\",\"manualConfig\":\"\",\"purifierConfig\":null,\"purifyHtml\":true,\"redactorConfig\":null,\"removeEmptyTags\":false,\"removeInlineStyles\":false,\"removeNbsp\":false,\"showHtmlButtonForNonAdmins\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}','2022-12-09 12:07:03','2022-12-11 03:53:02','0a2ae81b-7399-4be2-916c-10d42107daa1'),(10,1,'Short description','shortDescription','global','wiibycyf',NULL,0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":3,\"multiline\":true,\"placeholder\":null,\"uiMode\":\"normal\"}','2022-12-09 12:08:01','2022-12-09 12:08:01','b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed'),(11,2,'Featured Story','featuredStory','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"localizeRelations\":false,\"maxRelations\":1,\"minRelations\":0,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Entry\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"},\"selectionLabel\":\"Select a story\",\"showSiteMenu\":false,\"source\":null,\"sources\":[\"section:eb60c7c5-b86d-4a67-acd3-75e4da63dcb4\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2022-12-11 02:33:41','2022-12-11 02:33:41','183615f5-f05e-457f-8354-9f61d1eefe32'),(12,1,'Nav Links','navLinks','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Matrix','{\"contentTable\":\"{{%matrixcontent_navlinks}}\",\"maxBlocks\":null,\"minBlocks\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}','2022-12-11 03:15:13','2022-12-11 03:15:13','b80f7a4f-d451-4378-9a11-10ecd4d576d5'),(13,NULL,'Link Text','linkText','matrixBlockType:179bc466-1852-442b-8555-7f057ea7cce4','zjztmwlw',NULL,0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}','2022-12-11 03:15:13','2022-12-11 03:15:13','69bff3ff-7a05-4310-a00b-5abd48683eed'),(14,NULL,'Link Destination','linkDestination','matrixBlockType:179bc466-1852-442b-8555-7f057ea7cce4',NULL,NULL,0,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"localizeRelations\":false,\"maxRelations\":1,\"minRelations\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Entry\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"},\"selectionLabel\":\"Select an entry\",\"showSiteMenu\":false,\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2022-12-11 03:15:13','2022-12-11 03:15:13','f2481b47-7c72-4c84-9f9b-47d0b0c84671');
/*!40000 ALTER TABLE `site1_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_globalsets`
--

DROP TABLE IF EXISTS `site1_globalsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_globalsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_lpzczizkpfrelpjfkciqcffilmpmqxhaozbm` (`name`),
  KEY `site1_idx_ywrfhyajzvkutjngqdrsahwuxzxoajteireg` (`handle`),
  KEY `site1_idx_nilwyzlcrsdjlmrtttatzmotdsozbtidmqev` (`fieldLayoutId`),
  KEY `site1_idx_vahhsyvlmrgjkhlmekcjaevoanfgtzaecrdg` (`sortOrder`),
  CONSTRAINT `site1_fk_dogmvdtejtybdsgmhorfbzctiovzinwewdzf` FOREIGN KEY (`id`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_udlecwarwrbvksoiqxbqnsvfgmrktgblwlkg` FOREIGN KEY (`fieldLayoutId`) REFERENCES `site1_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_globalsets`
--

LOCK TABLES `site1_globalsets` WRITE;
/*!40000 ALTER TABLE `site1_globalsets` DISABLE KEYS */;
INSERT INTO `site1_globalsets` VALUES (137,'Header','header',8,1,'2022-12-11 03:16:08','2022-12-11 03:16:08','5550e01f-7f7d-4268-8afd-56d52a631495'),(140,'Footer','footer',9,2,'2022-12-11 03:27:42','2022-12-11 03:27:42','a0dfd598-c2de-4461-8ab3-6ba7f75c0e25');
/*!40000 ALTER TABLE `site1_globalsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_gqlschemas`
--

DROP TABLE IF EXISTS `site1_gqlschemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_gqlschemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `scope` text,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_gqlschemas`
--

LOCK TABLES `site1_gqlschemas` WRITE;
/*!40000 ALTER TABLE `site1_gqlschemas` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_gqlschemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_gqltokens`
--

DROP TABLE IF EXISTS `site1_gqltokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_gqltokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_jxowwvpeurhllfjpfwsxejlfyajnnorkeuue` (`accessToken`),
  UNIQUE KEY `site1_idx_ohpnluqiyygthqlpeztzkeoecpjmmgrcbfws` (`name`),
  KEY `site1_fk_fnxjndwnkxqgfcqdbheyogchqktdyacrvwzo` (`schemaId`),
  CONSTRAINT `site1_fk_fnxjndwnkxqgfcqdbheyogchqktdyacrvwzo` FOREIGN KEY (`schemaId`) REFERENCES `site1_gqlschemas` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_gqltokens`
--

LOCK TABLES `site1_gqltokens` WRITE;
/*!40000 ALTER TABLE `site1_gqltokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_gqltokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_imagetransformindex`
--

DROP TABLE IF EXISTS `site1_imagetransformindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_imagetransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetId` int(11) NOT NULL,
  `transformer` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `transformString` varchar(255) NOT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_nfachpkofctjkzsmsziriitxqfsceekbqkwy` (`assetId`,`transformString`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_imagetransformindex`
--

LOCK TABLES `site1_imagetransformindex` WRITE;
/*!40000 ALTER TABLE `site1_imagetransformindex` DISABLE KEYS */;
INSERT INTO `site1_imagetransformindex` VALUES (1,12,'craft\\imagetransforms\\ImageTransformer','hero.jpg',NULL,'_hero',1,0,0,'2023-03-05 23:53:51','2023-03-05 23:53:51','2023-03-05 23:53:52','b9a0a4c5-0e73-45e7-b298-5da6e1db8bda'),(2,79,'craft\\imagetransforms\\ImageTransformer','mountains.jpg',NULL,'_slider',1,0,0,'2023-03-05 23:53:51','2023-03-05 23:53:51','2023-03-05 23:53:52','ba9d425f-6479-44d1-b1f0-4e5ac900c3e5'),(3,77,'craft\\imagetransforms\\ImageTransformer','jeremy-bishop-hMHJYQlWQwU-unsplash.jpg',NULL,'_slider',1,0,0,'2023-03-05 23:53:51','2023-03-05 23:53:51','2023-03-05 23:53:52','9550fe6c-3880-4c97-a64f-8e3838755684'),(4,73,'craft\\imagetransforms\\ImageTransformer','photo-1606293715325-9329879fec0f.jpg',NULL,'_slider',1,0,0,'2023-03-05 23:53:51','2023-03-05 23:53:51','2023-03-05 23:53:52','4887d80d-c2de-430c-8976-bd943645241f'),(5,25,'craft\\imagetransforms\\ImageTransformer','sarah-bradbury.jpg',NULL,'_avatar',1,0,0,'2023-03-05 23:53:51','2023-03-05 23:53:51','2023-03-05 23:53:52','6dfc6b70-54dc-4d2b-95d3-09da9843556c'),(6,24,'craft\\imagetransforms\\ImageTransformer','jack-starfield.jpg',NULL,'_avatar',1,0,0,'2023-03-05 23:53:51','2023-03-05 23:53:51','2023-03-05 23:53:52','bf729ef7-c8d0-4bf2-8fc1-adc6bae10cde'),(7,23,'craft\\imagetransforms\\ImageTransformer','henry-potter.jpg',NULL,'_avatar',1,0,0,'2023-03-05 23:53:51','2023-03-05 23:53:51','2023-03-05 23:53:52','2ce5dfd6-84af-4e22-98a1-3c1996dbab21'),(8,7,'craft\\imagetransforms\\ImageTransformer','gear.jpg',NULL,'_contentImage',1,0,0,'2023-03-05 23:54:00','2023-03-05 23:54:00','2023-03-05 23:54:00','87350ef1-b606-40e1-bb92-a30746e9430f'),(9,78,'craft\\imagetransforms\\ImageTransformer','mohit-suthar-a1_tFcBSp7w-unsplash.jpg',NULL,'_slider',1,0,0,'2023-03-05 23:54:01','2023-03-05 23:54:01','2023-03-05 23:54:01','f4b1aba2-8b83-4109-ac00-c42e5b7284e0');
/*!40000 ALTER TABLE `site1_imagetransformindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_imagetransforms`
--

DROP TABLE IF EXISTS `site1_imagetransforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_imagetransforms` (
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
  `parameterChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_stluxvnbsinlrkpirgwpmomhtbelipuuzsge` (`name`),
  KEY `site1_idx_ghufnwzvbmuqzktcjlvmzxeswuulolldogks` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_imagetransforms`
--

LOCK TABLES `site1_imagetransforms` WRITE;
/*!40000 ALTER TABLE `site1_imagetransforms` DISABLE KEYS */;
INSERT INTO `site1_imagetransforms` VALUES (1,'Hero','hero','fit','center-center',1400,900,NULL,NULL,'none','2022-12-11 03:42:41','2022-12-11 03:42:41','2022-12-11 03:42:41','0da03db6-d668-4bff-99ea-1b13b8f0f4a8'),(2,'Avatar','avatar','crop','center-center',100,100,NULL,NULL,'none','2022-12-11 03:46:41','2022-12-11 03:46:41','2022-12-11 03:46:41','a0f491b7-74d6-46fc-8ef7-8c1f0852374b'),(3,'Slider','slider','crop','center-center',900,600,NULL,NULL,'none','2022-12-11 03:48:29','2022-12-11 03:48:29','2022-12-11 03:48:29','9373e6a7-ce47-4cb3-b38c-60296a9a3fd5'),(4,'Content Image','contentImage','fit','center-center',900,600,NULL,NULL,'none','2022-12-11 03:52:19','2022-12-11 03:52:19','2022-12-11 03:52:19','1704c7f1-cc95-485d-be6a-eadada2a51bb');
/*!40000 ALTER TABLE `site1_imagetransforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_info`
--

DROP TABLE IF EXISTS `site1_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_info`
--

LOCK TABLES `site1_info` WRITE;
/*!40000 ALTER TABLE `site1_info` DISABLE KEYS */;
INSERT INTO `site1_info` VALUES (1,'4.3.10','4.0.0.9',0,'oyyqzbhllvxo','3@yvcdqdjinq','2022-12-09 00:57:44','2023-03-05 23:51:30','25e9a5cb-106f-46c9-b49a-b59d02945911');
/*!40000 ALTER TABLE `site1_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_matrixblocks`
--

DROP TABLE IF EXISTS `site1_matrixblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_matrixblocks` (
  `id` int(11) NOT NULL,
  `primaryOwnerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site1_idx_mohfzobffalvtjkpljptyylwnwwtolwxtmbk` (`primaryOwnerId`),
  KEY `site1_idx_chopdxkkegreuslxxjmqztwrdwwtvgsjvvri` (`fieldId`),
  KEY `site1_idx_oaryycccvtdjkuwotosfgobrapryeurkiirk` (`typeId`),
  CONSTRAINT `site1_fk_bexczjdwwropqjwnwcygqjhblaxvuhmbxgds` FOREIGN KEY (`primaryOwnerId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_liwdrejoglorjcdjekwfmborzfjczsydfmky` FOREIGN KEY (`id`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_lxcyrnacwgqpnqnsxibeohepytelsujamcky` FOREIGN KEY (`fieldId`) REFERENCES `site1_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_ugsjjonhtgmbdnguldpxkvbbadoatsklbrzn` FOREIGN KEY (`typeId`) REFERENCES `site1_matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_matrixblocks`
--

LOCK TABLES `site1_matrixblocks` WRITE;
/*!40000 ALTER TABLE `site1_matrixblocks` DISABLE KEYS */;
INSERT INTO `site1_matrixblocks` VALUES (47,2,4,1,NULL,'2022-12-09 04:01:14','2022-12-09 04:01:14'),(48,2,4,1,NULL,'2022-12-09 04:01:14','2022-12-09 04:01:14'),(49,2,4,1,NULL,'2022-12-09 04:01:14','2022-12-09 04:01:14'),(51,50,4,1,NULL,'2022-12-09 04:01:14','2022-12-09 04:01:14'),(52,50,4,1,NULL,'2022-12-09 04:01:14','2022-12-09 04:01:14'),(53,50,4,1,NULL,'2022-12-09 04:01:14','2022-12-09 04:01:14'),(56,55,4,1,NULL,'2022-12-09 04:02:01','2022-12-09 04:02:01'),(57,55,4,1,NULL,'2022-12-09 04:02:01','2022-12-09 04:02:01'),(58,55,4,1,NULL,'2022-12-09 04:02:01','2022-12-09 04:02:01'),(61,60,4,1,NULL,'2022-12-09 04:08:23','2022-12-09 04:08:23'),(62,60,4,1,NULL,'2022-12-09 04:08:23','2022-12-09 04:08:23'),(63,60,4,1,NULL,'2022-12-09 04:08:23','2022-12-09 04:08:23'),(66,65,4,1,NULL,'2022-12-09 04:08:53','2022-12-09 04:08:53'),(67,65,4,1,NULL,'2022-12-09 04:08:53','2022-12-09 04:08:53'),(68,65,4,1,NULL,'2022-12-09 04:08:53','2022-12-09 04:08:53'),(111,110,4,1,NULL,'2022-12-11 02:34:56','2022-12-11 02:34:56'),(112,110,4,1,NULL,'2022-12-11 02:34:56','2022-12-11 02:34:56'),(113,110,4,1,NULL,'2022-12-11 02:34:56','2022-12-11 02:34:56'),(116,115,4,1,NULL,'2022-12-11 02:35:58','2022-12-11 02:35:58'),(117,115,4,1,NULL,'2022-12-11 02:35:58','2022-12-11 02:35:58'),(118,115,4,1,NULL,'2022-12-11 02:35:58','2022-12-11 02:35:58'),(121,120,4,1,NULL,'2022-12-11 02:44:54','2022-12-11 02:44:54'),(122,120,4,1,NULL,'2022-12-11 02:44:54','2022-12-11 02:44:54'),(123,120,4,1,NULL,'2022-12-11 02:44:54','2022-12-11 02:44:54'),(138,137,12,2,NULL,'2022-12-11 03:17:24','2022-12-11 03:17:24'),(139,137,12,2,NULL,'2022-12-11 03:17:24','2022-12-11 03:17:24');
/*!40000 ALTER TABLE `site1_matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_matrixblocks_owners`
--

DROP TABLE IF EXISTS `site1_matrixblocks_owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_matrixblocks_owners` (
  `blockId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`blockId`,`ownerId`),
  KEY `site1_fk_dralsstnyllehlkgeorheqdoossxhxvobnir` (`ownerId`),
  CONSTRAINT `site1_fk_dralsstnyllehlkgeorheqdoossxhxvobnir` FOREIGN KEY (`ownerId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_efdxieaswumpaunkltmvykuwsprmbvxzywqj` FOREIGN KEY (`blockId`) REFERENCES `site1_matrixblocks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_matrixblocks_owners`
--

LOCK TABLES `site1_matrixblocks_owners` WRITE;
/*!40000 ALTER TABLE `site1_matrixblocks_owners` DISABLE KEYS */;
INSERT INTO `site1_matrixblocks_owners` VALUES (47,2,3),(48,2,2),(49,2,1),(51,50,1),(52,50,2),(53,50,3),(56,55,1),(57,55,2),(58,55,3),(61,60,1),(62,60,2),(63,60,3),(66,65,1),(67,65,2),(68,65,3),(111,110,1),(112,110,2),(113,110,3),(116,115,1),(117,115,2),(118,115,3),(121,120,1),(122,120,2),(123,120,3),(138,137,1),(139,137,2);
/*!40000 ALTER TABLE `site1_matrixblocks_owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_matrixblocktypes`
--

DROP TABLE IF EXISTS `site1_matrixblocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_matrixblocktypes` (
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
  KEY `site1_idx_jsqfdlzqqnvzbensljwapxusioppuluowkkw` (`name`,`fieldId`),
  KEY `site1_idx_zjdktmxblzobgktrxsyclbewmcuaxlztrxhs` (`handle`,`fieldId`),
  KEY `site1_idx_eekopiloreuulnezdxnldkprccprixqipmct` (`fieldId`),
  KEY `site1_idx_ggdephjeudvttuxrevynwwdjkggqhnifrsta` (`fieldLayoutId`),
  CONSTRAINT `site1_fk_fwlshgpytpyjfgooqqodxufmhdihvsgcqzsn` FOREIGN KEY (`fieldId`) REFERENCES `site1_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_vzrgcdjzbjrfavaekdhbusodzteugazealdt` FOREIGN KEY (`fieldLayoutId`) REFERENCES `site1_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_matrixblocktypes`
--

LOCK TABLES `site1_matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `site1_matrixblocktypes` DISABLE KEYS */;
INSERT INTO `site1_matrixblocktypes` VALUES (1,4,3,'Rider','rider',1,'2022-12-09 03:56:41','2022-12-09 03:56:41','74db721e-e1cd-43a3-bdd7-07b515b52b8c'),(2,12,7,'Link','link',1,'2022-12-11 03:15:13','2022-12-11 03:15:13','179bc466-1852-442b-8555-7f057ea7cce4');
/*!40000 ALTER TABLE `site1_matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_matrixcontent_navlinks`
--

DROP TABLE IF EXISTS `site1_matrixcontent_navlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_matrixcontent_navlinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_link_linkText_zjztmwlw` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_rvlpqpednggzsnuzsqgtqiejqzmlnnfsezay` (`elementId`,`siteId`),
  KEY `site1_fk_ofztxqkhtthevwwodtysouqzacpuqfiihwrf` (`siteId`),
  CONSTRAINT `site1_fk_ofztxqkhtthevwwodtysouqzacpuqfiihwrf` FOREIGN KEY (`siteId`) REFERENCES `site1_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_trwjedlsgcezuehjyzjouxicioypfuwvpcoo` FOREIGN KEY (`elementId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_matrixcontent_navlinks`
--

LOCK TABLES `site1_matrixcontent_navlinks` WRITE;
/*!40000 ALTER TABLE `site1_matrixcontent_navlinks` DISABLE KEYS */;
INSERT INTO `site1_matrixcontent_navlinks` VALUES (1,138,1,'2022-12-11 03:17:24','2022-12-11 20:29:45','a597404d-81fa-4a52-9eaf-b496a632aa83','Stories'),(2,139,1,'2022-12-11 03:17:24','2022-12-11 20:29:45','3ed2de83-bdab-4ff6-9466-f0c3440891eb','Our Gear'),(3,138,2,'2022-12-11 20:29:45','2022-12-11 20:29:45','fc064dd0-5213-46e0-9660-59aa5d855250','Stories'),(4,139,2,'2022-12-11 20:29:45','2022-12-11 20:29:45','b820207c-9101-4e4a-a934-8a27594658cb','Our Gear');
/*!40000 ALTER TABLE `site1_matrixcontent_navlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_matrixcontent_riders`
--

DROP TABLE IF EXISTS `site1_matrixcontent_riders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_matrixcontent_riders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_rider_description_zrobheoq` text,
  `field_rider_fullName_vznbkjgz` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_xjgpnachrfgcsrpgssqttbtlyglfnezrtims` (`elementId`,`siteId`),
  KEY `site1_fk_manlzkvppoatrlfrkvksomfktxebjmhrjoeb` (`siteId`),
  CONSTRAINT `site1_fk_manlzkvppoatrlfrkvksomfktxebjmhrjoeb` FOREIGN KEY (`siteId`) REFERENCES `site1_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_rlaicsosntamljgzlehkvmzlgqxlavzqeqvq` FOREIGN KEY (`elementId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_matrixcontent_riders`
--

LOCK TABLES `site1_matrixcontent_riders` WRITE;
/*!40000 ALTER TABLE `site1_matrixcontent_riders` DISABLE KEYS */;
INSERT INTO `site1_matrixcontent_riders` VALUES (1,20,1,'2022-12-09 03:58:46','2022-12-09 03:58:46','1962e181-fed5-407d-9e27-71e7f07aeca6',NULL,NULL),(2,21,1,'2022-12-09 03:58:54','2022-12-09 03:58:54','a0f3fc61-2faa-4dd2-aa20-7d95f0b565fa',NULL,'Test 1'),(3,22,1,'2022-12-09 03:58:57','2022-12-09 03:58:57','b5b303a0-fbc9-49f0-87de-e78aa90f5792','Testing','Test 1'),(4,26,1,'2022-12-09 03:59:20','2022-12-09 03:59:20','1e9d044e-b28c-4451-8cf9-f8c813519f43','Testing','Test 1'),(5,27,1,'2022-12-09 03:59:22','2022-12-09 03:59:22','6d757059-0c9b-4aa5-be35-9c0e8b4e0695','Testing','Test 1'),(6,28,1,'2022-12-09 03:59:22','2022-12-09 03:59:22','99f20830-f597-42e7-b0c5-b404f093df03',NULL,NULL),(7,29,1,'2022-12-09 03:59:28','2022-12-09 03:59:28','166a4031-6281-4f42-8c7e-fba9e843a643','Testing','Test 1'),(8,30,1,'2022-12-09 03:59:28','2022-12-09 03:59:28','7d605a62-6f91-4cb7-ae54-76171d0836df',NULL,'Test 2'),(9,31,1,'2022-12-09 03:59:32','2022-12-09 03:59:32','907b67f7-5488-4170-90e8-ad1166b999e7','Testing','Test 1'),(10,32,1,'2022-12-09 03:59:32','2022-12-09 03:59:32','5a10b504-bffd-431f-8ac2-0bc4dbee9bc1','Testing 2','Test 2'),(11,33,1,'2022-12-09 03:59:45','2022-12-09 03:59:45','ba41815e-ffe8-46d6-bc8f-6856ad5e6f4e','Testing','Test 1'),(12,34,1,'2022-12-09 03:59:45','2022-12-09 03:59:45','be510e92-f043-4837-8b51-30d52928c2ad','Testing 2','Test 2'),(13,35,1,'2022-12-09 03:59:47','2022-12-09 03:59:47','85f1e9c4-417a-4230-aa0d-ece9748d4762','Testing','Test 1'),(14,36,1,'2022-12-09 03:59:47','2022-12-09 03:59:47','6d636ad6-a22d-446c-9efe-3446eb5040d4','Testing 2','Test 2'),(15,37,1,'2022-12-09 03:59:47','2022-12-09 03:59:47','23d6c59d-aecf-484e-b262-63627d9bd440',NULL,NULL),(16,38,1,'2022-12-09 03:59:54','2022-12-09 03:59:54','5e30e156-719e-4b4d-9ffe-8e165ea804ca','Testing','Test 1'),(17,39,1,'2022-12-09 03:59:54','2022-12-09 03:59:54','46fe6aa5-c5af-4ed9-a171-b19564d01d79','Testing 2','Test 2'),(18,40,1,'2022-12-09 03:59:54','2022-12-09 03:59:54','741ad0c4-6c42-4a7f-8792-39a0fc5bb56d',NULL,NULL),(19,41,1,'2022-12-09 03:59:57','2022-12-09 03:59:57','6378da80-2a7b-4745-b532-0371679022b7','Testing','Test 1'),(20,42,1,'2022-12-09 03:59:57','2022-12-09 03:59:57','a12b1b4d-1dfc-46c8-9add-76d1f5568e08','Testing 2','Test 2'),(21,43,1,'2022-12-09 03:59:57','2022-12-09 03:59:57','d7702948-71f5-41f5-a0b1-e7b60a3228e9',NULL,'Test 3'),(25,47,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','e6187091-2c5b-46a8-91f3-143af57062b3','Testing','Test 1'),(26,48,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','9b997372-a5b6-45ca-a769-a28adb84200f','Testing 2','Test 2'),(27,49,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','120c761f-e99e-4549-8bbd-570b4dbea559','Testing 3','Test 3'),(28,51,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','a87f9deb-638d-4b0c-b8f7-4960c7045e7a','Testing','Test 1'),(29,52,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','93b902d7-ba4e-4f0c-beff-4d7a352ecb87','Testing 2','Test 2'),(30,53,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','ebcc5dc8-6562-420d-9bde-459a175782bc','Testing 3','Test 3'),(31,56,1,'2022-12-09 04:02:01','2022-12-09 04:02:01','92c4fed7-2d31-4a8c-8fb3-4b1e8154179b','Testing','Test 1'),(32,57,1,'2022-12-09 04:02:01','2022-12-09 04:02:01','da65f342-0124-417f-9f49-bf83dcd4256c','Testing 2','Test 2'),(33,58,1,'2022-12-09 04:02:01','2022-12-09 04:02:01','dd230b64-6043-4b4f-8526-9a89cfb006d0','Testing 3','Test 3'),(34,61,1,'2022-12-09 04:08:23','2022-12-09 04:08:23','1d659a6d-fbff-4540-aed6-b221bf59b215','Testing','Test 1'),(35,62,1,'2022-12-09 04:08:23','2022-12-09 04:08:23','c29f6091-c3f5-40d2-9dce-8e2ae83e4a0f','Testing 3','Test 3'),(36,63,1,'2022-12-09 04:08:23','2022-12-09 04:08:23','071d48d6-309e-4510-9df2-21341034b210','Testing 2','Test 2'),(37,66,1,'2022-12-09 04:08:53','2022-12-09 04:08:53','95168d86-d9a5-4544-8de4-6892270e297d','Testing 3','Test 3'),(38,67,1,'2022-12-09 04:08:53','2022-12-09 04:08:53','d4dcb107-e6ce-4c89-b206-4c22b7f7dc83','Testing 2','Test 2'),(39,68,1,'2022-12-09 04:08:53','2022-12-09 04:08:53','058441ee-5fab-4f44-8795-891424b87efa','Testing','Test 1'),(40,111,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','d2d08f32-51e6-4592-b967-4af6b4960473','Testing 3','Test 3'),(41,112,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','28273682-e587-4343-b12f-a2c79d2bd75a','Testing 2','Test 2'),(42,113,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','b823893e-c2e8-49b6-a19d-de4ea750e482','Testing','Test 1'),(43,116,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','ae7fb5fe-e067-41f5-b622-e2666a23d42c','Testing 3','Test 3'),(44,117,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','b6eef162-ebc4-48b2-adff-b1f942ec0e37','Testing 2','Test 2'),(45,118,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','7e5a0dd4-4392-49cd-9d1c-b5d8fbde8d87','Testing','Test 1'),(46,121,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','6503ab98-fce0-47de-8c5e-9092de509298','Testing 3','Test 3'),(47,122,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','dee46ba2-effb-432a-a42f-8491ff7013f4','Testing 2','Test 2'),(48,123,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','5f2e2673-fbf2-41e2-95b3-3916a4d6204b','Testing','Test 1');
/*!40000 ALTER TABLE `site1_matrixcontent_riders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_migrations`
--

DROP TABLE IF EXISTS `site1_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_hciicadzqxruckezqutboywjlidltwxseicx` (`track`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_migrations`
--

LOCK TABLES `site1_migrations` WRITE;
/*!40000 ALTER TABLE `site1_migrations` DISABLE KEYS */;
INSERT INTO `site1_migrations` VALUES (1,'craft','Install','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','9ba2f127-324b-4391-bc4d-043a72fd98f4'),(2,'craft','m210121_145800_asset_indexing_changes','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','0b4a7817-86e6-4a1b-9af4-0fda7eecab7c'),(3,'craft','m210624_222934_drop_deprecated_tables','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','89a9ccff-882b-44c7-a193-3ceb9d0a5806'),(4,'craft','m210724_180756_rename_source_cols','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','d90b4e9e-f6d0-47f4-8130-de61f8f23d31'),(5,'craft','m210809_124211_remove_superfluous_uids','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','d38607f5-3e56-452c-93ca-660530d3c2ef'),(6,'craft','m210817_014201_universal_users','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','811e552f-0aa7-4843-b18b-f42421655cf9'),(7,'craft','m210904_132612_store_element_source_settings_in_project_config','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','750eb7dc-0918-4c94-b24c-b82625ee53e5'),(8,'craft','m211115_135500_image_transformers','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','1ef8d119-94ed-4607-9dd3-16614a137c31'),(9,'craft','m211201_131000_filesystems','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','26dc4004-9bc2-4124-8520-a70044b0feab'),(10,'craft','m220103_043103_tab_conditions','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','df2f8d9a-8d16-4c9d-a755-943e4cd2a8d2'),(11,'craft','m220104_003433_asset_alt_text','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','66484110-87df-4e95-9785-f5371eb80cde'),(12,'craft','m220123_213619_update_permissions','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','c692925a-a29b-4480-98d5-08865df1a970'),(13,'craft','m220126_003432_addresses','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','e1cd7857-8898-4f0c-a6e9-77f3024e38b7'),(14,'craft','m220209_095604_add_indexes','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','9ea58f29-cbaa-4dd2-9e7a-5fd2d42d2ddc'),(15,'craft','m220213_015220_matrixblocks_owners_table','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','170300fd-efae-4947-b67f-6bdb8aa6e0f2'),(16,'craft','m220214_000000_truncate_sessions','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','063f4a0f-4ce3-4d4a-87bb-b84da8288103'),(17,'craft','m220222_122159_full_names','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','d52fbce9-ae3b-435e-ab04-d8aba8a06e30'),(18,'craft','m220223_180559_nullable_address_owner','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','ae36e368-0db2-42e5-92a2-ccc4b27b5c1c'),(19,'craft','m220225_165000_transform_filesystems','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','d7be479e-9b34-4e6a-82e2-2ffb5bcdfe8c'),(20,'craft','m220309_152006_rename_field_layout_elements','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','86fe9de9-ae8c-493d-ade7-eadf3c31eee0'),(21,'craft','m220314_211928_field_layout_element_uids','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','89d900eb-e16f-44bd-b2f1-3689c8ec045a'),(22,'craft','m220316_123800_transform_fs_subpath','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','c8009f90-232f-479f-802f-0657123539f2'),(23,'craft','m220317_174250_release_all_jobs','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','90d155da-a15c-476e-9842-0700c1cc391d'),(24,'craft','m220330_150000_add_site_gql_schema_components','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','ed7635c8-c750-411d-8266-66142ecf981a'),(25,'craft','m220413_024536_site_enabled_string','2022-12-09 00:57:45','2022-12-09 00:57:45','2022-12-09 00:57:45','3902bd28-38cb-472b-9de2-1e48351a459d'),(26,'plugin:redactor','m180430_204710_remove_old_plugins','2022-12-09 03:50:48','2022-12-09 03:50:48','2022-12-09 03:50:48','ef77ef46-ea6d-4992-9fb8-e3fe430470c0'),(27,'plugin:redactor','Install','2022-12-09 03:50:48','2022-12-09 03:50:48','2022-12-09 03:50:48','feaca4bb-0788-435f-b895-8672b5d13549'),(28,'plugin:redactor','m190225_003922_split_cleanup_html_settings','2022-12-09 03:50:48','2022-12-09 03:50:48','2022-12-09 03:50:48','985752fa-c12d-470b-a4a7-21c93b6e5d13');
/*!40000 ALTER TABLE `site1_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_plugins`
--

DROP TABLE IF EXISTS `site1_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','trial','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_bbhopzhduthdcbcjhrzanjplsystiuipgopm` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_plugins`
--

LOCK TABLES `site1_plugins` WRITE;
/*!40000 ALTER TABLE `site1_plugins` DISABLE KEYS */;
INSERT INTO `site1_plugins` VALUES (1,'redactor','3.0.3','2.3.0','unknown',NULL,'2022-12-09 03:50:48','2022-12-09 03:50:48','2023-03-06 00:03:05','0645f460-465a-4454-bb37-dad68c0398d6'),(2,'admin-bar','3.2.0','3.1.0','unknown',NULL,'2022-12-11 04:55:34','2022-12-11 04:55:34','2023-03-06 00:03:05','6941e6f3-df67-4019-9422-96e03d43f9ae'),(3,'plugin-key-generator','v4.0.4','3.0.0','unknown',NULL,'2022-12-11 05:23:57','2022-12-11 05:23:57','2023-03-06 00:03:05','c7ccd98b-c901-4d61-999f-25143cdeed19');
/*!40000 ALTER TABLE `site1_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_projectconfig`
--

DROP TABLE IF EXISTS `site1_projectconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_projectconfig`
--

LOCK TABLES `site1_projectconfig` WRITE;
/*!40000 ALTER TABLE `site1_projectconfig` DISABLE KEYS */;
INSERT INTO `site1_projectconfig` VALUES ('dateModified','1670790662'),('email.fromEmail','\"gildoduarte@gmail.com\"'),('email.fromName','\"Motoventure\"'),('email.transportType','\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elementCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.autocapitalize','true'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.autocomplete','false'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.autocorrect','true'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.class','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.disabled','false'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.elementCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.id','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.instructions','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.label','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.max','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.min','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.name','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.orientation','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.placeholder','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.readonly','false'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.requirable','false'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.size','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.step','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.tip','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.title','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.uid','\"fc9622d9-27e8-487d-b78f-47c87714e58e\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.userCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.warning','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.0.width','100'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.elementCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.fieldUid','\"d91ec4e6-cf60-47a7-aecf-34a0aa16ba89\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.instructions','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.label','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.required','false'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.tip','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.uid','\"c7fd1915-026d-45bd-8367-98d2d72742f4\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.userCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.warning','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.1.width','100'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.elementCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.fieldUid','\"b0947df1-f206-43a8-9f0a-6ae8deba0a14\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.instructions','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.label','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.required','false'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.tip','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.uid','\"0e4bb8b6-fbdc-453c-8c43-41ad8a3f9e11\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.userCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.warning','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.elements.2.width','100'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.name','\"Hero\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.uid','\"fc85c425-1ea4-4e6d-bae3-d0cbd003cfc5\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.0.userCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elementCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.elementCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.fieldUid','\"183615f5-f05e-457f-8354-9f61d1eefe32\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.instructions','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.label','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.required','false'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.tip','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.uid','\"d0868a04-0b72-4612-82ea-6152dd967b7e\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.userCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.warning','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.elements.0.width','100'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.name','\"Featured Story\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.uid','\"6836f45d-ef0d-41b7-9a6c-5b7690436511\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.1.userCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elementCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.elementCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.fieldUid','\"6527e8af-af04-4e18-ac6a-cc95356b2510\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.instructions','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.label','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.required','false'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.tip','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.uid','\"d7ac45ef-105a-41ba-b91e-6c6d5b492feb\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.userCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.warning','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.0.width','100'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.elementCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.fieldUid','\"e78aa919-66d6-4895-aba5-9e67c3c3a284\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.instructions','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.label','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.required','false'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.tip','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.uid','\"d77a0707-bf6b-4b45-9d6d-6bfe70dbe291\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.userCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.warning','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.elements.1.width','100'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.name','\"Riders\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.uid','\"0de64c14-ceee-4093-9bc5-fd8a2910e946\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.fieldLayouts.50c1bef1-5cb5-44bc-9a2d-75d17d28eea0.tabs.2.userCondition','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.handle','\"home\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.hasTitleField','false'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.name','\"Home\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.section','\"dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.sortOrder','1'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.titleFormat','\"{section.name|raw}\"'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.titleTranslationKeyFormat','null'),('entryTypes.34349688-9057-4f53-9fdc-aa1b70d6a50f.titleTranslationMethod','\"site\"'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elementCondition','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.autocapitalize','true'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.autocomplete','false'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.autocorrect','true'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.class','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.disabled','false'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.elementCondition','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.id','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.instructions','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.label','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.max','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.min','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.name','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.orientation','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.placeholder','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.readonly','false'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.requirable','false'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.size','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.step','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.tip','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.title','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.uid','\"87938f76-183a-4846-8917-c49b0b481893\"'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.userCondition','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.warning','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.elements.0.width','100'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.name','\"Content\"'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.uid','\"f11832c7-b250-40a5-a634-b1a5a545bdb2\"'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.fieldLayouts.6b7063e5-1188-4c78-be22-3bbd73d94c7f.tabs.0.userCondition','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.handle','\"storiesListing\"'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.hasTitleField','true'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.name','\"Stories Listing\"'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.section','\"d3f8872c-40b2-4c68-a705-cce1ed9d936f\"'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.sortOrder','1'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.titleFormat','\"{section.name|raw}\"'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.titleTranslationKeyFormat','null'),('entryTypes.3eb03143-09d6-457d-a8d5-d9d30fb516d8.titleTranslationMethod','\"site\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elementCondition','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.autocapitalize','true'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.autocomplete','false'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.autocorrect','true'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.class','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.disabled','false'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.elementCondition','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.id','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.instructions','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.label','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.max','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.min','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.name','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.orientation','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.placeholder','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.readonly','false'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.requirable','false'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.size','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.step','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.tip','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.title','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.uid','\"d02a09a9-70c1-4183-af50-a67cf6a63e1a\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.userCondition','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.warning','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.0.width','100'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.elementCondition','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.fieldUid','\"0a2ae81b-7399-4be2-916c-10d42107daa1\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.instructions','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.label','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.required','false'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.tip','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.uid','\"d3a6aaf8-563d-493b-b381-e75cb1758841\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.userCondition','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.warning','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.elements.1.width','100'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.name','\"Content\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.uid','\"0268b91e-a2ed-4679-8305-edf2b9214989\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.fieldLayouts.284a2c8b-6acf-4016-a894-78f1283b6c84.tabs.0.userCondition','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.handle','\"generalPages\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.hasTitleField','true'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.name','\"General Pages\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.section','\"25583e61-cfcc-45b3-a5ce-711d6b9df47e\"'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.sortOrder','1'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.titleFormat','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.titleTranslationKeyFormat','null'),('entryTypes.6329b3e2-9459-45aa-93c2-410f6793dfab.titleTranslationMethod','\"site\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elementCondition','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.autocapitalize','true'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.autocomplete','false'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.autocorrect','true'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.class','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.disabled','false'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.elementCondition','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.id','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.instructions','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.label','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.max','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.min','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.name','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.orientation','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.placeholder','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.readonly','false'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.requirable','false'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.size','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.step','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.tip','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.title','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.uid','\"6970049b-734b-435b-959e-1884156e6ab9\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.userCondition','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.warning','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.0.width','100'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.elementCondition','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.fieldUid','\"37a653fa-1c39-4171-ba16-5315fdd66b09\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.instructions','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.label','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.required','false'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.tip','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.uid','\"51071f2d-fe18-4b0f-8c1b-5127488ffc71\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.userCondition','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.warning','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.1.width','100'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.elementCondition','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.fieldUid','\"0a2ae81b-7399-4be2-916c-10d42107daa1\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.instructions','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.label','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.required','false'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.tip','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.uid','\"b111d7b5-17c9-49fb-826e-5a04c2b486f0\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.userCondition','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.warning','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.2.width','100'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.elementCondition','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.fieldUid','\"b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.instructions','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.label','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.required','false'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.tip','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.uid','\"429b5bbb-7c3a-4663-aa0f-3a9d3441336a\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.userCondition','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.warning','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.elements.3.width','100'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.name','\"Content\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.uid','\"b8e42da9-8843-498b-901e-6b53831a6506\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.fieldLayouts.f83232ef-517c-417c-a7d1-1805aa285bc0.tabs.0.userCondition','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.handle','\"stories\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.hasTitleField','true'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.name','\"Stories\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.section','\"eb60c7c5-b86d-4a67-acd3-75e4da63dcb4\"'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.sortOrder','1'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.titleFormat','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.titleTranslationKeyFormat','null'),('entryTypes.eb8469ce-5b73-4e6c-b016-b122bb07a4f7.titleTranslationMethod','\"site\"'),('fieldGroups.3c0c3cab-e196-405c-92e8-5331bb03e27e.name','\"Common\"'),('fieldGroups.631f6c4e-5561-49cf-9112-27cc005a4f48.name','\"Home Page\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.columnSuffix','\"bzqtcdcy\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.contentColumnType','\"text\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.fieldGroup','\"3c0c3cab-e196-405c-92e8-5331bb03e27e\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.handle','\"richText\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.instructions','null'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.name','\"Rich text\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.searchable','false'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.availableTransforms','\"*\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.availableVolumes','\"*\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.columnType','\"text\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.configSelectionMode','\"choose\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.defaultTransform','\"1704c7f1-cc95-485d-be6a-eadada2a51bb\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.manualConfig','\"\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.purifierConfig','null'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.purifyHtml','true'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.redactorConfig','null'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.removeEmptyTags','false'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.removeInlineStyles','false'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.removeNbsp','false'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.showHtmlButtonForNonAdmins','true'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.showUnpermittedFiles','false'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.showUnpermittedVolumes','false'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.settings.uiMode','\"enlarged\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.translationKeyFormat','null'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.translationMethod','\"none\"'),('fields.0a2ae81b-7399-4be2-916c-10d42107daa1.type','\"craft\\\\redactor\\\\Field\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.columnSuffix','null'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.contentColumnType','\"string\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.fieldGroup','\"631f6c4e-5561-49cf-9112-27cc005a4f48\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.handle','\"featuredStory\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.instructions','null'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.name','\"Featured Story\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.searchable','false'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.allowSelfRelations','false'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.localizeRelations','false'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.maxRelations','1'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.minRelations','0'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.selectionCondition.__assoc__.0.0','\"elementType\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.selectionCondition.__assoc__.0.1','\"craft\\\\elements\\\\Entry\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.selectionCondition.__assoc__.1.0','\"fieldContext\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.selectionCondition.__assoc__.1.1','\"global\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.selectionCondition.__assoc__.2.0','\"class\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.selectionCondition.__assoc__.2.1','\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.selectionLabel','\"Select a story\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.showSiteMenu','false'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.source','null'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.sources.0','\"section:eb60c7c5-b86d-4a67-acd3-75e4da63dcb4\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.targetSiteId','null'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.validateRelatedElements','false'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.settings.viewMode','null'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.translationKeyFormat','null'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.translationMethod','\"site\"'),('fields.183615f5-f05e-457f-8354-9f61d1eefe32.type','\"craft\\\\fields\\\\Entries\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.columnSuffix','null'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.contentColumnType','\"string\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.fieldGroup','\"3c0c3cab-e196-405c-92e8-5331bb03e27e\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.handle','\"photos\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.instructions','null'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.name','\"Photos\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.searchable','false'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.allowedKinds.0','\"image\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.allowSelfRelations','false'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.allowSubfolders','false'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.allowUploads','true'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.defaultUploadLocationSource','\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.defaultUploadLocationSubpath','null'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.localizeRelations','false'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.maxRelations','null'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.minRelations','null'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.previewMode','\"full\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.restrictedDefaultUploadSubpath','null'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.restrictedLocationSource','\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.restrictedLocationSubpath','null'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.restrictFiles','true'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.restrictLocation','false'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.selectionCondition.__assoc__.0.0','\"elementType\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.selectionCondition.__assoc__.0.1','\"craft\\\\elements\\\\Asset\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.selectionCondition.__assoc__.1.0','\"fieldContext\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.selectionCondition.__assoc__.1.1','\"global\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.selectionCondition.__assoc__.2.0','\"class\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.selectionCondition.__assoc__.2.1','\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.selectionLabel','\"Add a photo\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.showSiteMenu','false'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.showUnpermittedFiles','false'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.showUnpermittedVolumes','false'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.source','null'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.sources.0','\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.targetSiteId','null'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.validateRelatedElements','false'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.settings.viewMode','\"list\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.translationKeyFormat','null'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.translationMethod','\"site\"'),('fields.37a653fa-1c39-4171-ba16-5315fdd66b09.type','\"craft\\\\fields\\\\Assets\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.columnSuffix','\"subbpqar\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.contentColumnType','\"text\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.fieldGroup','\"631f6c4e-5561-49cf-9112-27cc005a4f48\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.handle','\"ridersIntroContent\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.instructions','null'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.name','\"Riders Intro Content\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.searchable','false'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.availableTransforms','\"\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.availableVolumes','\"*\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.columnType','\"text\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.configSelectionMode','\"choose\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.defaultTransform','\"\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.manualConfig','\"\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.purifierConfig','null'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.purifyHtml','true'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.redactorConfig','null'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.removeEmptyTags','false'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.removeInlineStyles','false'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.removeNbsp','false'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.showHtmlButtonForNonAdmins','true'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.showUnpermittedFiles','false'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.showUnpermittedVolumes','false'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.settings.uiMode','\"enlarged\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.translationKeyFormat','null'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.translationMethod','\"none\"'),('fields.6527e8af-af04-4e18-ac6a-cc95356b2510.type','\"craft\\\\redactor\\\\Field\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.columnSuffix','null'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.contentColumnType','\"string\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.fieldGroup','\"631f6c4e-5561-49cf-9112-27cc005a4f48\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.handle','\"heroImage\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.instructions','null'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.name','\"Hero Image\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.searchable','false'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.allowedKinds.0','\"image\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.allowSelfRelations','false'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.allowSubfolders','false'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.allowUploads','true'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.defaultUploadLocationSource','\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.defaultUploadLocationSubpath','null'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.localizeRelations','false'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.maxRelations','1'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.minRelations','0'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.previewMode','\"full\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.restrictedDefaultUploadSubpath','null'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.restrictedLocationSource','\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.restrictedLocationSubpath','null'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.restrictFiles','true'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.restrictLocation','false'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.selectionCondition.__assoc__.0.0','\"elementType\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.selectionCondition.__assoc__.0.1','\"craft\\\\elements\\\\Asset\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.selectionCondition.__assoc__.1.0','\"fieldContext\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.selectionCondition.__assoc__.1.1','\"global\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.selectionCondition.__assoc__.2.0','\"class\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.selectionCondition.__assoc__.2.1','\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.selectionLabel','\"Add a background image\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.showSiteMenu','true'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.showUnpermittedFiles','false'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.showUnpermittedVolumes','false'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.source','null'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.sources.0','\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.targetSiteId','null'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.validateRelatedElements','false'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.settings.viewMode','\"large\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.translationKeyFormat','null'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.translationMethod','\"site\"'),('fields.b0947df1-f206-43a8-9f0a-6ae8deba0a14.type','\"craft\\\\fields\\\\Assets\"'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.columnSuffix','null'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.contentColumnType','\"string\"'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.fieldGroup','\"3c0c3cab-e196-405c-92e8-5331bb03e27e\"'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.handle','\"navLinks\"'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.instructions','null'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.name','\"Nav Links\"'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.searchable','false'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.settings.contentTable','\"{{%matrixcontent_navlinks}}\"'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.settings.maxBlocks','null'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.settings.minBlocks','null'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.settings.propagationKeyFormat','null'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.settings.propagationMethod','\"all\"'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.translationKeyFormat','null'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.translationMethod','\"site\"'),('fields.b80f7a4f-d451-4378-9a11-10ecd4d576d5.type','\"craft\\\\fields\\\\Matrix\"'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.columnSuffix','\"wiibycyf\"'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.contentColumnType','\"text\"'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.fieldGroup','\"3c0c3cab-e196-405c-92e8-5331bb03e27e\"'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.handle','\"shortDescription\"'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.instructions','null'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.name','\"Short description\"'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.searchable','false'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.settings.byteLimit','null'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.settings.charLimit','null'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.settings.code','false'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.settings.columnType','null'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.settings.initialRows','3'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.settings.multiline','true'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.settings.placeholder','null'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.settings.uiMode','\"normal\"'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.translationKeyFormat','null'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.translationMethod','\"none\"'),('fields.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed.type','\"craft\\\\fields\\\\PlainText\"'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.columnSuffix','\"qghzmhee\"'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.contentColumnType','\"text\"'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.fieldGroup','\"631f6c4e-5561-49cf-9112-27cc005a4f48\"'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.handle','\"heroTitle\"'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.instructions','null'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.name','\"Hero Title\"'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.searchable','false'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.settings.byteLimit','null'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.settings.charLimit','null'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.settings.code','false'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.settings.columnType','null'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.settings.initialRows','4'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.settings.multiline','false'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.settings.placeholder','null'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.settings.uiMode','\"normal\"'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.translationKeyFormat','null'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.translationMethod','\"none\"'),('fields.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89.type','\"craft\\\\fields\\\\PlainText\"'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.columnSuffix','null'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.contentColumnType','\"string\"'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.fieldGroup','\"631f6c4e-5561-49cf-9112-27cc005a4f48\"'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.handle','\"riders\"'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.instructions','null'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.name','\"Riders\"'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.searchable','false'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.settings.contentTable','\"{{%matrixcontent_riders}}\"'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.settings.maxBlocks','null'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.settings.minBlocks','null'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.settings.propagationKeyFormat','null'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.settings.propagationMethod','\"all\"'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.translationKeyFormat','null'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.translationMethod','\"site\"'),('fields.e78aa919-66d6-4895-aba5-9e67c3c3a284.type','\"craft\\\\fields\\\\Matrix\"'),('fs.uploads.hasUrls','true'),('fs.uploads.name','\"Uploads\"'),('fs.uploads.settings.path','\"$ASSET_BASE_PATH\"'),('fs.uploads.type','\"craft\\\\fs\\\\Local\"'),('fs.uploads.url','\"$ASSET_BASE_URL\"'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elementCondition','null'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.elementCondition','null'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.fieldUid','\"b80f7a4f-d451-4378-9a11-10ecd4d576d5\"'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.instructions','null'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.label','null'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.required','false'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.tip','null'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.uid','\"e385c9c4-9736-46d2-b9d8-22d584a00bc0\"'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.userCondition','null'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.warning','null'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.elements.0.width','100'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.name','\"Content\"'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.uid','\"99f3528b-81ac-4bfc-9de6-2f5816fb0710\"'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.fieldLayouts.e8d3e2c1-ee20-4969-b532-ce6aade8e378.tabs.0.userCondition','null'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.handle','\"header\"'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.name','\"Header\"'),('globalSets.5550e01f-7f7d-4268-8afd-56d52a631495.sortOrder','1'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elementCondition','null'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.elementCondition','null'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.fieldUid','\"0a2ae81b-7399-4be2-916c-10d42107daa1\"'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.instructions','null'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.label','null'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.required','false'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.tip','null'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.uid','\"bc2f9c93-fc33-48fe-ba2d-45c39183b7a1\"'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.userCondition','null'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.warning','null'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.elements.0.width','100'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.name','\"Content\"'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.uid','\"a465e07e-f71e-4103-98bc-df5db801eed3\"'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.fieldLayouts.0c913f50-97ba-4195-b48c-19bc953bb94c.tabs.0.userCondition','null'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.handle','\"footer\"'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.name','\"Footer\"'),('globalSets.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25.sortOrder','2'),('graphql.publicToken.enabled','false'),('graphql.publicToken.expiryDate','null'),('imageTransforms.0da03db6-d668-4bff-99ea-1b13b8f0f4a8.format','null'),('imageTransforms.0da03db6-d668-4bff-99ea-1b13b8f0f4a8.handle','\"hero\"'),('imageTransforms.0da03db6-d668-4bff-99ea-1b13b8f0f4a8.height','900'),('imageTransforms.0da03db6-d668-4bff-99ea-1b13b8f0f4a8.interlace','\"none\"'),('imageTransforms.0da03db6-d668-4bff-99ea-1b13b8f0f4a8.mode','\"fit\"'),('imageTransforms.0da03db6-d668-4bff-99ea-1b13b8f0f4a8.name','\"Hero\"'),('imageTransforms.0da03db6-d668-4bff-99ea-1b13b8f0f4a8.position','\"center-center\"'),('imageTransforms.0da03db6-d668-4bff-99ea-1b13b8f0f4a8.quality','null'),('imageTransforms.0da03db6-d668-4bff-99ea-1b13b8f0f4a8.width','1400'),('imageTransforms.1704c7f1-cc95-485d-be6a-eadada2a51bb.format','null'),('imageTransforms.1704c7f1-cc95-485d-be6a-eadada2a51bb.handle','\"contentImage\"'),('imageTransforms.1704c7f1-cc95-485d-be6a-eadada2a51bb.height','600'),('imageTransforms.1704c7f1-cc95-485d-be6a-eadada2a51bb.interlace','\"none\"'),('imageTransforms.1704c7f1-cc95-485d-be6a-eadada2a51bb.mode','\"fit\"'),('imageTransforms.1704c7f1-cc95-485d-be6a-eadada2a51bb.name','\"Content Image\"'),('imageTransforms.1704c7f1-cc95-485d-be6a-eadada2a51bb.position','\"center-center\"'),('imageTransforms.1704c7f1-cc95-485d-be6a-eadada2a51bb.quality','null'),('imageTransforms.1704c7f1-cc95-485d-be6a-eadada2a51bb.width','900'),('imageTransforms.9373e6a7-ce47-4cb3-b38c-60296a9a3fd5.format','null'),('imageTransforms.9373e6a7-ce47-4cb3-b38c-60296a9a3fd5.handle','\"slider\"'),('imageTransforms.9373e6a7-ce47-4cb3-b38c-60296a9a3fd5.height','600'),('imageTransforms.9373e6a7-ce47-4cb3-b38c-60296a9a3fd5.interlace','\"none\"'),('imageTransforms.9373e6a7-ce47-4cb3-b38c-60296a9a3fd5.mode','\"crop\"'),('imageTransforms.9373e6a7-ce47-4cb3-b38c-60296a9a3fd5.name','\"Slider\"'),('imageTransforms.9373e6a7-ce47-4cb3-b38c-60296a9a3fd5.position','\"center-center\"'),('imageTransforms.9373e6a7-ce47-4cb3-b38c-60296a9a3fd5.quality','null'),('imageTransforms.9373e6a7-ce47-4cb3-b38c-60296a9a3fd5.width','900'),('imageTransforms.a0f491b7-74d6-46fc-8ef7-8c1f0852374b.format','null'),('imageTransforms.a0f491b7-74d6-46fc-8ef7-8c1f0852374b.handle','\"avatar\"'),('imageTransforms.a0f491b7-74d6-46fc-8ef7-8c1f0852374b.height','100'),('imageTransforms.a0f491b7-74d6-46fc-8ef7-8c1f0852374b.interlace','\"none\"'),('imageTransforms.a0f491b7-74d6-46fc-8ef7-8c1f0852374b.mode','\"crop\"'),('imageTransforms.a0f491b7-74d6-46fc-8ef7-8c1f0852374b.name','\"Avatar\"'),('imageTransforms.a0f491b7-74d6-46fc-8ef7-8c1f0852374b.position','\"center-center\"'),('imageTransforms.a0f491b7-74d6-46fc-8ef7-8c1f0852374b.quality','null'),('imageTransforms.a0f491b7-74d6-46fc-8ef7-8c1f0852374b.width','100'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.field','\"b80f7a4f-d451-4378-9a11-10ecd4d576d5\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elementCondition','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.elementCondition','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.fieldUid','\"69bff3ff-7a05-4310-a00b-5abd48683eed\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.label','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.required','true'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.tip','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.uid','\"1be71912-ed71-4771-b1fa-40b0d4ac6e2d\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.userCondition','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.warning','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.0.width','100'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.elementCondition','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.fieldUid','\"f2481b47-7c72-4c84-9f9b-47d0b0c84671\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.instructions','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.label','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.required','true'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.tip','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.uid','\"fdac0953-78f7-40ce-8250-d8096f5fd5b1\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.userCondition','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.warning','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.elements.1.width','100'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.name','\"Content\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.uid','\"ff522db9-64bc-4da8-8e5e-39608d69a79e\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fieldLayouts.83e7c74f-3cef-4941-92c8-cb1f1c0f6311.tabs.0.userCondition','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.columnSuffix','\"zjztmwlw\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.contentColumnType','\"text\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.fieldGroup','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.handle','\"linkText\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.instructions','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.name','\"Link Text\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.searchable','false'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.settings.byteLimit','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.settings.charLimit','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.settings.code','false'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.settings.columnType','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.settings.initialRows','4'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.settings.multiline','false'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.settings.placeholder','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.settings.uiMode','\"normal\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.translationKeyFormat','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.translationMethod','\"none\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.69bff3ff-7a05-4310-a00b-5abd48683eed.type','\"craft\\\\fields\\\\PlainText\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.columnSuffix','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.contentColumnType','\"string\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.fieldGroup','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.handle','\"linkDestination\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.instructions','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.name','\"Link Destination\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.searchable','false'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.allowSelfRelations','false'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.localizeRelations','false'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.maxRelations','1'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.minRelations','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.selectionCondition.__assoc__.0.0','\"elementType\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.selectionCondition.__assoc__.0.1','\"craft\\\\elements\\\\Entry\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.selectionCondition.__assoc__.1.0','\"fieldContext\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.selectionCondition.__assoc__.1.1','\"global\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.selectionCondition.__assoc__.2.0','\"class\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.selectionCondition.__assoc__.2.1','\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.selectionLabel','\"Select an entry\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.showSiteMenu','false'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.source','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.sources','\"*\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.targetSiteId','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.validateRelatedElements','false'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.settings.viewMode','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.translationKeyFormat','null'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.translationMethod','\"site\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.fields.f2481b47-7c72-4c84-9f9b-47d0b0c84671.type','\"craft\\\\fields\\\\Entries\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.handle','\"link\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.name','\"Link\"'),('matrixBlockTypes.179bc466-1852-442b-8555-7f057ea7cce4.sortOrder','1'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.field','\"e78aa919-66d6-4895-aba5-9e67c3c3a284\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elementCondition','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.elementCondition','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.fieldUid','\"a9e055e3-3a0f-4097-a01f-1b5291d48ff3\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.label','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.required','true'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.tip','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.uid','\"51378276-7439-483d-9fbb-7232808491ca\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.userCondition','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.warning','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.0.width','100'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.elementCondition','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.fieldUid','\"654340c6-51b6-475b-8a5c-7ee1fc41d725\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.instructions','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.label','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.required','true'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.tip','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.uid','\"6f80be96-322c-43bd-b060-1e6156ee5bf5\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.userCondition','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.warning','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.1.width','100'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.elementCondition','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.fieldUid','\"005df6e8-38d3-4f00-81cf-3a755f6e7ee6\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.instructions','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.label','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.required','true'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.tip','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.uid','\"7f428924-fdb2-40fd-ae1d-a9d472e4b7a2\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.userCondition','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.warning','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.elements.2.width','100'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.name','\"Content\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.uid','\"04a7ea6b-3d05-4f49-a9c7-ea92bc7d2f1f\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fieldLayouts.48e1a9f1-9885-4933-b06f-b0e654471758.tabs.0.userCondition','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.columnSuffix','\"zrobheoq\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.contentColumnType','\"text\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.fieldGroup','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.handle','\"description\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.instructions','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.name','\"Description\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.searchable','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.settings.byteLimit','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.settings.charLimit','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.settings.code','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.settings.columnType','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.settings.initialRows','2'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.settings.multiline','true'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.settings.placeholder','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.settings.uiMode','\"normal\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.translationKeyFormat','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.translationMethod','\"none\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.005df6e8-38d3-4f00-81cf-3a755f6e7ee6.type','\"craft\\\\fields\\\\PlainText\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.columnSuffix','\"vznbkjgz\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.contentColumnType','\"text\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.fieldGroup','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.handle','\"fullName\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.instructions','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.name','\"Full Name\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.searchable','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.settings.byteLimit','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.settings.charLimit','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.settings.code','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.settings.columnType','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.settings.initialRows','4'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.settings.multiline','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.settings.placeholder','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.settings.uiMode','\"normal\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.translationKeyFormat','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.translationMethod','\"none\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.654340c6-51b6-475b-8a5c-7ee1fc41d725.type','\"craft\\\\fields\\\\PlainText\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.columnSuffix','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.contentColumnType','\"string\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.fieldGroup','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.handle','\"photo\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.instructions','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.name','\"Photo\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.searchable','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.allowedKinds.0','\"image\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.allowSelfRelations','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.allowSubfolders','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.allowUploads','true'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.defaultUploadLocationSource','\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.defaultUploadLocationSubpath','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.localizeRelations','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.maxRelations','1'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.minRelations','1'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.previewMode','\"full\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.restrictedDefaultUploadSubpath','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.restrictedLocationSource','\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.restrictedLocationSubpath','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.restrictFiles','true'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.restrictLocation','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.selectionCondition.__assoc__.0.0','\"elementType\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.selectionCondition.__assoc__.0.1','\"craft\\\\elements\\\\Asset\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.selectionCondition.__assoc__.1.0','\"fieldContext\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.selectionCondition.__assoc__.1.1','\"global\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.selectionCondition.__assoc__.2.0','\"class\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.selectionCondition.__assoc__.2.1','\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.selectionLabel','\"Add a photo\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.showSiteMenu','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.showUnpermittedFiles','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.showUnpermittedVolumes','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.source','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.sources.0','\"volume:be687ace-5f16-40ac-95e9-7591dda66d5a\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.targetSiteId','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.validateRelatedElements','false'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.settings.viewMode','\"list\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.translationKeyFormat','null'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.translationMethod','\"site\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.fields.a9e055e3-3a0f-4097-a01f-1b5291d48ff3.type','\"craft\\\\fields\\\\Assets\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.handle','\"rider\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.name','\"Rider\"'),('matrixBlockTypes.74db721e-e1cd-43a3-bdd7-07b515b52b8c.sortOrder','1'),('meta.__names__.005df6e8-38d3-4f00-81cf-3a755f6e7ee6','\"Description\"'),('meta.__names__.0a2ae81b-7399-4be2-916c-10d42107daa1','\"Rich text\"'),('meta.__names__.0da03db6-d668-4bff-99ea-1b13b8f0f4a8','\"Hero\"'),('meta.__names__.145f1473-c721-4593-8740-4fceafa405d8','\"Motoventure\"'),('meta.__names__.1704c7f1-cc95-485d-be6a-eadada2a51bb','\"Content Image\"'),('meta.__names__.179bc466-1852-442b-8555-7f057ea7cce4','\"Link\"'),('meta.__names__.183615f5-f05e-457f-8354-9f61d1eefe32','\"Featured Story\"'),('meta.__names__.25583e61-cfcc-45b3-a5ce-711d6b9df47e','\"General Pages\"'),('meta.__names__.34349688-9057-4f53-9fdc-aa1b70d6a50f','\"Home\"'),('meta.__names__.37a653fa-1c39-4171-ba16-5315fdd66b09','\"Photos\"'),('meta.__names__.3c0c3cab-e196-405c-92e8-5331bb03e27e','\"Common\"'),('meta.__names__.3eb03143-09d6-457d-a8d5-d9d30fb516d8','\"Stories Listing\"'),('meta.__names__.5550e01f-7f7d-4268-8afd-56d52a631495','\"Header\"'),('meta.__names__.631f6c4e-5561-49cf-9112-27cc005a4f48','\"Home Page\"'),('meta.__names__.6329b3e2-9459-45aa-93c2-410f6793dfab','\"General Pages\"'),('meta.__names__.6527e8af-af04-4e18-ac6a-cc95356b2510','\"Riders Intro Content\"'),('meta.__names__.654340c6-51b6-475b-8a5c-7ee1fc41d725','\"Full Name\"'),('meta.__names__.69bff3ff-7a05-4310-a00b-5abd48683eed','\"Link Text\"'),('meta.__names__.74db721e-e1cd-43a3-bdd7-07b515b52b8c','\"Rider\"'),('meta.__names__.7bfe4aa4-58ae-4a01-8f0c-d8d9bdfec8a9','\"Motoventure\"'),('meta.__names__.9373e6a7-ce47-4cb3-b38c-60296a9a3fd5','\"Slider\"'),('meta.__names__.a0dfd598-c2de-4461-8ab3-6ba7f75c0e25','\"Footer\"'),('meta.__names__.a0f491b7-74d6-46fc-8ef7-8c1f0852374b','\"Avatar\"'),('meta.__names__.a9e055e3-3a0f-4097-a01f-1b5291d48ff3','\"Photo\"'),('meta.__names__.b0947df1-f206-43a8-9f0a-6ae8deba0a14','\"Hero Image\"'),('meta.__names__.b80f7a4f-d451-4378-9a11-10ecd4d576d5','\"Nav Links\"'),('meta.__names__.b8945cb4-dfc9-47ef-98b2-3e81cfc6b0ed','\"Short description\"'),('meta.__names__.be687ace-5f16-40ac-95e9-7591dda66d5a','\"Uploads\"'),('meta.__names__.d3f8872c-40b2-4c68-a705-cce1ed9d936f','\"Stories Listing\"'),('meta.__names__.d91ec4e6-cf60-47a7-aecf-34a0aa16ba89','\"Hero Title\"'),('meta.__names__.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c','\"Home\"'),('meta.__names__.e1886e0e-a8d3-4451-bb47-9a3b0cb013eb','\"Public Schema\"'),('meta.__names__.e78aa919-66d6-4895-aba5-9e67c3c3a284','\"Riders\"'),('meta.__names__.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4','\"Stories\"'),('meta.__names__.eb8469ce-5b73-4e6c-b016-b122bb07a4f7','\"Stories\"'),('meta.__names__.f2481b47-7c72-4c84-9f9b-47d0b0c84671','\"Link Destination\"'),('plugins.admin-bar.edition','\"standard\"'),('plugins.admin-bar.enabled','false'),('plugins.admin-bar.schemaVersion','\"3.1.0\"'),('plugins.admin-bar.settings.customCss','\"\"'),('plugins.admin-bar.settings.customLinks.0.__assoc__.0.0','\"linkLabel\"'),('plugins.admin-bar.settings.customLinks.0.__assoc__.0.1','\"Admin\"'),('plugins.admin-bar.settings.customLinks.0.__assoc__.1.0','\"linkUrl\"'),('plugins.admin-bar.settings.customLinks.0.__assoc__.1.1','\"http://localhost/craftcms/admin\"'),('plugins.admin-bar.settings.customLinks.0.__assoc__.2.0','\"adminOnly\"'),('plugins.admin-bar.settings.customLinks.0.__assoc__.2.1','\"\"'),('plugins.admin-bar.settings.displayDashboardLink','true'),('plugins.admin-bar.settings.displayDefaultEditSection','true'),('plugins.admin-bar.settings.displayEditAuthor','true'),('plugins.admin-bar.settings.displayEditDate','true'),('plugins.admin-bar.settings.displayGreeting','true'),('plugins.admin-bar.settings.displayGuideLink','true'),('plugins.admin-bar.settings.displayLogout','true'),('plugins.admin-bar.settings.displayRevisionNote','true'),('plugins.admin-bar.settings.displaySettingsLink','true'),('plugins.admin-bar.settings.enableMobileMenu','true'),('plugins.plugin-key-generator.edition','\"standard\"'),('plugins.plugin-key-generator.enabled','true'),('plugins.plugin-key-generator.schemaVersion','\"3.0.0\"'),('plugins.plugin-key-generator.settings.apiToken','\"suz6buixjmiss89q9n49k04bx1n1s9wesajk8a88\"'),('plugins.plugin-key-generator.settings.pluginEditions','\"\"'),('plugins.plugin-key-generator.settings.pluginHandles','\"\"'),('plugins.plugin-key-generator.settings.username','\"masterg\"'),('plugins.redactor.edition','\"standard\"'),('plugins.redactor.enabled','true'),('plugins.redactor.schemaVersion','\"2.3.0\"'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.defaultPlacement','\"end\"'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.enableVersioning','true'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.handle','\"generalPages\"'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.name','\"General Pages\"'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.propagationMethod','\"all\"'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.enabledByDefault','true'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.hasUrls','true'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.template','\"general.twig\"'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.uriFormat','\"{parent.uri}/{slug}\"'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.structure.maxLevels','2'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.structure.uid','\"1dc2afb6-a18a-4e58-aa35-10aa1fa142a1\"'),('sections.25583e61-cfcc-45b3-a5ce-711d6b9df47e.type','\"structure\"'),('sections.d3f8872c-40b2-4c68-a705-cce1ed9d936f.defaultPlacement','\"end\"'),('sections.d3f8872c-40b2-4c68-a705-cce1ed9d936f.enableVersioning','true'),('sections.d3f8872c-40b2-4c68-a705-cce1ed9d936f.handle','\"storiesListing\"'),('sections.d3f8872c-40b2-4c68-a705-cce1ed9d936f.name','\"Stories Listing\"'),('sections.d3f8872c-40b2-4c68-a705-cce1ed9d936f.propagationMethod','\"all\"'),('sections.d3f8872c-40b2-4c68-a705-cce1ed9d936f.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.enabledByDefault','true'),('sections.d3f8872c-40b2-4c68-a705-cce1ed9d936f.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.hasUrls','true'),('sections.d3f8872c-40b2-4c68-a705-cce1ed9d936f.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.template','\"stories/index.twig\"'),('sections.d3f8872c-40b2-4c68-a705-cce1ed9d936f.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.uriFormat','\"stories\"'),('sections.d3f8872c-40b2-4c68-a705-cce1ed9d936f.type','\"single\"'),('sections.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c.defaultPlacement','\"end\"'),('sections.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c.enableVersioning','true'),('sections.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c.handle','\"home\"'),('sections.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c.name','\"Home\"'),('sections.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c.propagationMethod','\"all\"'),('sections.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.enabledByDefault','true'),('sections.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.hasUrls','true'),('sections.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.template','\"home.twig\"'),('sections.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.uriFormat','\"__home__\"'),('sections.dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c.type','\"single\"'),('sections.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4.defaultPlacement','\"end\"'),('sections.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4.enableVersioning','true'),('sections.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4.handle','\"stories\"'),('sections.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4.name','\"Stories\"'),('sections.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4.propagationMethod','\"all\"'),('sections.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.enabledByDefault','true'),('sections.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.hasUrls','true'),('sections.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.template','\"stories/_entry.twig\"'),('sections.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4.siteSettings.145f1473-c721-4593-8740-4fceafa405d8.uriFormat','\"stories/{slug}\"'),('sections.eb60c7c5-b86d-4a67-acd3-75e4da63dcb4.type','\"channel\"'),('siteGroups.7bfe4aa4-58ae-4a01-8f0c-d8d9bdfec8a9.name','\"Motoventure\"'),('sites.145f1473-c721-4593-8740-4fceafa405d8.baseUrl','\"$PRIMARY_SITE_URL\"'),('sites.145f1473-c721-4593-8740-4fceafa405d8.enabled','true'),('sites.145f1473-c721-4593-8740-4fceafa405d8.handle','\"default\"'),('sites.145f1473-c721-4593-8740-4fceafa405d8.hasUrls','true'),('sites.145f1473-c721-4593-8740-4fceafa405d8.language','\"pt-PT\"'),('sites.145f1473-c721-4593-8740-4fceafa405d8.name','\"Motoventure\"'),('sites.145f1473-c721-4593-8740-4fceafa405d8.primary','true'),('sites.145f1473-c721-4593-8740-4fceafa405d8.siteGroup','\"7bfe4aa4-58ae-4a01-8f0c-d8d9bdfec8a9\"'),('sites.145f1473-c721-4593-8740-4fceafa405d8.sortOrder','1'),('system.edition','\"solo\"'),('system.live','true'),('system.name','\"Motoventure\"'),('system.retryDuration','null'),('system.schemaVersion','\"4.0.0.9\"'),('system.timeZone','\"Europe/Lisbon\"'),('users.allowPublicRegistration','false'),('users.defaultGroup','null'),('users.photoSubpath','null'),('users.photoVolumeUid','null'),('users.requireEmailVerification','true'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elementCondition','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.autocapitalize','true'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.autocomplete','false'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.autocorrect','true'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.class','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.disabled','false'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.elementCondition','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.id','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.instructions','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.label','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.max','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.min','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.name','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.orientation','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.placeholder','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.readonly','false'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.requirable','false'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.size','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.step','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.tip','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.title','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\"'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.uid','\"daa73310-3c33-4be1-bc35-fefead5c452c\"'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.userCondition','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.warning','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.elements.0.width','100'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.name','\"Content\"'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.uid','\"55088043-d90c-4b1b-a922-801cfe8d8e92\"'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fieldLayouts.cf8cdf2b-ec13-4d82-a32e-e31057d8475b.tabs.0.userCondition','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.fs','\"uploads\"'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.handle','\"uploads\"'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.name','\"Uploads\"'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.sortOrder','1'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.titleTranslationKeyFormat','null'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.titleTranslationMethod','\"site\"'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.transformFs','\"\"'),('volumes.be687ace-5f16-40ac-95e9-7591dda66d5a.transformSubpath','\"\"');
/*!40000 ALTER TABLE `site1_projectconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_queue`
--

DROP TABLE IF EXISTS `site1_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
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
  KEY `site1_idx_ejpmdwscjcgnbeawicbozugcpofakdgulryv` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  KEY `site1_idx_jgbmtmekewhzouknqqxdrwvspgglqizdpzbf` (`channel`,`fail`,`timeUpdated`,`delay`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_queue`
--

LOCK TABLES `site1_queue` WRITE;
/*!40000 ALTER TABLE `site1_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_relations`
--

DROP TABLE IF EXISTS `site1_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_relations` (
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
  UNIQUE KEY `site1_idx_xortsiabtchcmtswhgmgpijpcbqgzvtswopo` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  KEY `site1_idx_achkpdiqkrliyzbtnwxccpayvnbnwixhgeba` (`sourceId`),
  KEY `site1_idx_iddrvndqnjdpykdkbvzuknhotnoiyktpuzek` (`targetId`),
  KEY `site1_idx_rxefvcuctpwnlphxltdbayojzjvlntczhavh` (`sourceSiteId`),
  CONSTRAINT `site1_fk_cbhvmvfjoxhnseyrxacyqwxjwojioiiwxycs` FOREIGN KEY (`sourceSiteId`) REFERENCES `site1_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `site1_fk_moqpfithmhocemcvrqilwgqnljhxzhazkygp` FOREIGN KEY (`targetId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_wjliczgpbkxlvvsdqnbbxngdrzsunipgfazp` FOREIGN KEY (`sourceId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_zumxvpmcqzjamurhoclenhaeskzwtdbffckc` FOREIGN KEY (`fieldId`) REFERENCES `site1_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_relations`
--

LOCK TABLES `site1_relations` WRITE;
/*!40000 ALTER TABLE `site1_relations` DISABLE KEYS */;
INSERT INTO `site1_relations` VALUES (3,2,8,NULL,7,1,'2022-12-09 03:05:18','2022-12-09 03:05:18','714f75dd-07b9-4cc8-8e00-c3cd112f12a5'),(5,2,10,NULL,7,1,'2022-12-09 03:20:29','2022-12-09 03:20:29','673adaaa-d3d8-476f-a542-dda144b75fba'),(8,2,2,NULL,12,1,'2022-12-09 03:21:47','2022-12-09 03:21:47','f3f37e54-4939-4bf7-9942-d7b8023245fd'),(9,2,13,NULL,12,1,'2022-12-09 03:21:47','2022-12-09 03:21:47','e6b755a8-d481-4933-a725-19162afd142b'),(11,2,15,NULL,12,1,'2022-12-09 03:49:08','2022-12-09 03:49:08','f035367e-0178-44b5-a884-f3a17b87db71'),(13,2,17,NULL,12,1,'2022-12-09 03:49:32','2022-12-09 03:49:32','df600228-a329-4b08-b6f8-7af2efcd2c2c'),(14,2,18,NULL,12,1,'2022-12-09 03:58:05','2022-12-09 03:58:05','cc9c00b5-f46f-4bec-98e3-cfa2d468b857'),(16,7,26,NULL,23,1,'2022-12-09 03:59:20','2022-12-09 03:59:20','55c17302-e89d-4c4c-b198-88bc552a6623'),(17,7,27,NULL,23,1,'2022-12-09 03:59:22','2022-12-09 03:59:22','64676225-87a3-4f52-9ea4-c37a96950f6d'),(18,7,29,NULL,23,1,'2022-12-09 03:59:28','2022-12-09 03:59:28','f61df20d-70e0-4df1-82d6-462b449dd762'),(19,7,31,NULL,23,1,'2022-12-09 03:59:32','2022-12-09 03:59:32','3a516155-5b55-4cc8-a758-0b7144e3f379'),(20,7,33,NULL,23,1,'2022-12-09 03:59:45','2022-12-09 03:59:45','8921460b-193b-4764-a0d0-6d94699a1d4e'),(21,7,34,NULL,24,1,'2022-12-09 03:59:45','2022-12-09 03:59:45','b8e35e28-3eca-47d1-8d04-85e958d51913'),(22,7,35,NULL,23,1,'2022-12-09 03:59:47','2022-12-09 03:59:47','7aeb647d-8cb7-4307-a678-f75d4c0de6ef'),(23,7,36,NULL,24,1,'2022-12-09 03:59:47','2022-12-09 03:59:47','4cda6cae-bbee-498c-bca4-1cb982058b40'),(24,7,38,NULL,23,1,'2022-12-09 03:59:54','2022-12-09 03:59:54','0dd9b3d1-1b5d-4557-8ba0-858fdf0dc0b2'),(25,7,39,NULL,24,1,'2022-12-09 03:59:54','2022-12-09 03:59:54','cf9e0bf0-663d-4206-9fda-6fda370d7621'),(26,7,40,NULL,25,1,'2022-12-09 03:59:54','2022-12-09 03:59:54','ef826513-ce75-4d23-a984-f44be9b73b9e'),(27,7,41,NULL,23,1,'2022-12-09 03:59:57','2022-12-09 03:59:57','48b230e8-4493-4a5d-9828-19590c02df6b'),(28,7,42,NULL,24,1,'2022-12-09 03:59:57','2022-12-09 03:59:57','8a932e9d-843f-42ec-9c63-4608f9430b94'),(29,7,43,NULL,25,1,'2022-12-09 03:59:57','2022-12-09 03:59:57','a09dcdbd-ae3c-4acf-8b5d-305a38bf3d41'),(33,7,47,NULL,23,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','3372184c-af5d-4505-959f-88f27251d2bb'),(34,7,48,NULL,24,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','042466df-9371-4d8c-a26c-b138cc19e8a0'),(35,7,49,NULL,25,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','7a0ebd24-4745-44ff-b617-a73dea6576da'),(36,2,50,NULL,12,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','41b7f0d2-8fab-441f-ae4f-21b18ad16f1a'),(37,7,51,NULL,23,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','b39b3b41-1d9d-4cd2-9827-ab5c8a0551ca'),(38,7,52,NULL,24,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','7ca2fe2f-ca33-4986-b232-13f86117727d'),(39,7,53,NULL,25,1,'2022-12-09 04:01:14','2022-12-09 04:01:14','35b0c9ab-aedc-4287-9cbe-15ebfb40d675'),(41,2,55,NULL,12,1,'2022-12-09 04:02:01','2022-12-09 04:02:01','7b137953-b858-43c2-9312-64b4f0925850'),(42,7,56,NULL,23,1,'2022-12-09 04:02:01','2022-12-09 04:02:01','4ac08ee7-0d0b-4be9-b25c-a5f5c967e4b9'),(43,7,57,NULL,24,1,'2022-12-09 04:02:01','2022-12-09 04:02:01','dd7038ff-e1ff-4766-9d0b-958a5ae64cd5'),(44,7,58,NULL,25,1,'2022-12-09 04:02:01','2022-12-09 04:02:01','a76cdd73-c232-4ad2-a9fe-c723393e761d'),(46,2,60,NULL,12,1,'2022-12-09 04:08:23','2022-12-09 04:08:23','262fa823-6ef9-47b7-acd1-d95e2444662e'),(47,7,61,NULL,23,1,'2022-12-09 04:08:23','2022-12-09 04:08:23','569b9571-187d-4815-86da-76ca43131c5f'),(48,7,62,NULL,25,1,'2022-12-09 04:08:23','2022-12-09 04:08:23','e2e36e66-cf0b-400f-b3d8-3f5a69aeade8'),(49,7,63,NULL,24,1,'2022-12-09 04:08:23','2022-12-09 04:08:23','9846029a-61c3-40b2-afc4-c7be65dc0b23'),(51,2,65,NULL,12,1,'2022-12-09 04:08:53','2022-12-09 04:08:53','c52dba28-786f-4804-8362-6d5c40ed6cc6'),(52,7,66,NULL,25,1,'2022-12-09 04:08:53','2022-12-09 04:08:53','5d3e18b5-f361-457d-9277-ce3ff54783bc'),(53,7,67,NULL,24,1,'2022-12-09 04:08:53','2022-12-09 04:08:53','afe8fefa-9e52-4cbf-8e8f-793a7b7bb73d'),(54,7,68,NULL,23,1,'2022-12-09 04:08:53','2022-12-09 04:08:53','03bfa6d7-9f53-430c-a837-6c9e8d31cc72'),(58,8,69,NULL,79,1,'2022-12-09 12:17:40','2022-12-09 12:17:40','51c2d1e3-1fea-4460-830b-208c9142e45c'),(59,8,69,NULL,77,2,'2022-12-09 12:17:40','2022-12-09 12:17:40','5883a289-c6d0-47e0-9a5b-ce0a34c509ad'),(60,8,69,NULL,73,3,'2022-12-09 12:17:40','2022-12-09 12:17:40','290847ef-1ee7-4b23-a424-314efdf4c5f3'),(61,8,81,NULL,79,1,'2022-12-09 12:17:40','2022-12-09 12:17:40','ad37f78e-32f3-45c6-ad8b-579013831589'),(62,8,81,NULL,77,2,'2022-12-09 12:17:40','2022-12-09 12:17:40','6eb3b8df-a96d-4005-be08-e5c0b303f6db'),(63,8,81,NULL,73,3,'2022-12-09 12:17:40','2022-12-09 12:17:40','15133758-f48e-4ab0-8160-5505fac5cdb6'),(67,8,87,NULL,79,1,'2022-12-09 12:19:56','2022-12-09 12:19:56','e1986c44-1a4c-4877-a5df-947c9cfbd115'),(68,8,87,NULL,77,2,'2022-12-09 12:19:56','2022-12-09 12:19:56','468cb0f3-7125-4fab-ae2c-149d911de91d'),(69,8,87,NULL,73,3,'2022-12-09 12:19:56','2022-12-09 12:19:56','098e3f1d-59d7-4021-b1fa-e7b925f2f51a'),(73,8,82,NULL,79,3,'2022-12-09 12:20:15','2022-12-09 12:37:54','20bceb15-4e4f-4455-bac3-e96dee8386b3'),(74,8,82,NULL,75,2,'2022-12-09 12:20:15','2022-12-09 12:20:15','38cdbed0-e571-462b-aae9-fec6fda99d24'),(75,8,82,NULL,73,1,'2022-12-09 12:20:15','2022-12-09 12:37:54','b00793e7-444b-449c-a385-8379154ac93e'),(76,8,89,NULL,79,1,'2022-12-09 12:20:15','2022-12-09 12:20:15','31f65b86-b4e1-48ff-9994-a78e29afc880'),(77,8,89,NULL,75,2,'2022-12-09 12:20:15','2022-12-09 12:20:15','6c628a12-c135-43a9-8480-85e283777801'),(78,8,89,NULL,73,3,'2022-12-09 12:20:15','2022-12-09 12:20:15','12fa2116-40de-4eab-9929-9ecabd89d747'),(79,8,90,NULL,78,1,'2022-12-09 12:20:34','2022-12-09 12:20:34','9f3d3ff2-b609-4dba-a95a-62f7e854ccdf'),(80,8,90,NULL,79,2,'2022-12-09 12:20:34','2022-12-09 12:20:34','d80400dc-1fc6-4866-90f3-28e1ec1845f8'),(81,8,90,NULL,75,3,'2022-12-09 12:20:34','2022-12-09 12:20:34','f18a024d-a24f-4c9a-b22e-1e1c3d271cd7'),(82,8,91,NULL,78,1,'2022-12-09 12:20:40','2022-12-09 12:20:40','8ff9d701-348e-4210-aa55-cbcc99f28c84'),(83,8,91,NULL,79,2,'2022-12-09 12:20:40','2022-12-09 12:20:40','b4cbfa28-8b12-4714-afc7-b93de670a255'),(84,8,91,NULL,75,3,'2022-12-09 12:20:40','2022-12-09 12:20:40','2629f464-e4d4-4bc5-8d24-337456e5e6e9'),(88,8,93,NULL,79,1,'2022-12-09 12:20:56','2022-12-09 12:20:56','ec382be4-bff6-4095-97f9-df1dfdeaca9e'),(89,8,93,NULL,75,2,'2022-12-09 12:20:56','2022-12-09 12:20:56','aaf3880d-780f-47ec-a7e2-4cdd94c1f746'),(90,8,93,NULL,73,3,'2022-12-09 12:20:56','2022-12-09 12:20:56','0517da51-6e6b-4310-95dc-12d8b895968e'),(94,8,95,NULL,78,1,'2022-12-09 12:24:58','2022-12-09 12:24:58','75b2ab17-9924-4607-aad6-206a3ffbea85'),(95,8,95,NULL,79,2,'2022-12-09 12:24:58','2022-12-09 12:24:58','afed464d-0776-44fa-8a5d-e82c623252ab'),(96,8,95,NULL,75,3,'2022-12-09 12:24:58','2022-12-09 12:24:58','2065e8d1-8579-4b36-9f55-643cdd4b59bc'),(97,8,96,NULL,78,1,'2022-12-09 12:25:02','2022-12-09 12:25:02','b3972642-0285-406e-80ac-2b26b198f60a'),(98,8,96,NULL,79,2,'2022-12-09 12:25:02','2022-12-09 12:25:02','5a690d5d-f778-4946-9224-749ab12bef0f'),(99,8,96,NULL,75,3,'2022-12-09 12:25:02','2022-12-09 12:25:02','33c43028-e2fe-4a3a-9e59-b1213e3e82e8'),(103,8,98,NULL,73,1,'2022-12-09 12:37:54','2022-12-09 12:37:54','29502832-e0cb-4348-91fe-55fa8af47794'),(104,8,98,NULL,75,2,'2022-12-09 12:37:54','2022-12-09 12:37:54','a9f8ee86-10ef-436e-b783-1066bc2b189f'),(105,8,98,NULL,79,3,'2022-12-09 12:37:54','2022-12-09 12:37:54','ca42fe07-a33d-426b-b93f-840cb6d557be'),(106,2,110,NULL,12,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','8d540583-d85c-47d2-8a5c-c136ef29ef27'),(107,7,111,NULL,25,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','fcad85c9-f572-43b1-88de-96bafd4d0604'),(108,7,112,NULL,24,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','7583127f-b1b4-449b-a2e9-b7c5c063ca7d'),(109,7,113,NULL,23,1,'2022-12-11 02:34:56','2022-12-11 02:34:56','73fcc29b-06e4-4be3-bdb9-04972787771c'),(113,2,115,NULL,12,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','ccfc2e05-00ac-4434-9ede-04f63c19b447'),(114,11,115,NULL,90,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','d744056e-0ebd-47dd-9295-3d38e43bb1c6'),(115,7,116,NULL,25,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','26824ffd-f6c4-4d8f-ac79-6884741cd1f4'),(116,7,117,NULL,24,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','04d81b36-161e-449a-a3f5-2dbe59488f0f'),(117,7,118,NULL,23,1,'2022-12-11 02:35:58','2022-12-11 02:35:58','e8b75ffd-9840-4681-af92-501491b8bcdc'),(121,11,2,NULL,69,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','f54faa6b-9103-4b35-9637-1b1fcd6d8a5d'),(122,2,120,NULL,12,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','d7321154-92b6-4510-87e3-6750e7513b63'),(123,11,120,NULL,69,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','20e329fc-19a7-4320-bfbc-ca4fc5f597dd'),(124,7,121,NULL,25,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','2673bd97-9399-4ebf-a817-f813d4b6900a'),(125,7,122,NULL,24,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','4522b9b8-15a0-428e-ada8-39124ff865c7'),(126,7,123,NULL,23,1,'2022-12-11 02:44:54','2022-12-11 02:44:54','e32871be-d46b-48eb-aa4a-b137b1050ba2'),(127,14,138,NULL,99,1,'2022-12-11 03:17:24','2022-12-11 03:17:24','1a6cb70a-9b89-47ca-99ea-2e89662f85ca'),(128,14,139,NULL,124,1,'2022-12-11 03:17:24','2022-12-11 03:17:24','4f25738f-0a34-49d1-ada0-bdd8d4ad1f75');
/*!40000 ALTER TABLE `site1_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_resourcepaths`
--

DROP TABLE IF EXISTS `site1_resourcepaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_resourcepaths`
--

LOCK TABLES `site1_resourcepaths` WRITE;
/*!40000 ALTER TABLE `site1_resourcepaths` DISABLE KEYS */;
INSERT INTO `site1_resourcepaths` VALUES ('12f51cb0','@craft/web/assets/fileupload/dist'),('1ac70506','@craft/web/assets/updates/dist'),('1c95b4ac','@craft/web/assets/deprecationerrors/dist'),('1e30caf9','@craft/web/assets/dashboard/dist'),('1fa2995','@craft/web/assets/matrixsettings/dist'),('21b32405','@craft/web/assets/deprecationerrors/dist'),('23165a50','@craft/web/assets/dashboard/dist'),('245baf70','@craft/web/assets/prismjs/dist'),('27e195af','@craft/web/assets/updates/dist'),('2fd38c19','@craft/web/assets/fileupload/dist'),('31a85ab2','@craft/web/assets/jqueryui/dist'),('38945e5','@craft/web/assets/elementresizedetector/dist'),('3b4fcaa4','@bower/jquery/dist'),('3eafd54c','@craft/web/assets/elementresizedetector/dist'),('41702b29','@craft/web/assets/vue/dist'),('50942ea7','@craft/web/assets/jquerytouchevents/dist'),('50c7f1c5','@craft/web/assets/jquerypayment/dist'),('51babbb2','@craft/web/assets/picturefill/dist'),('52f1f67a','@craft/web/assets/dbbackup/dist'),('537c98a','@craft/web/assets/edituser/dist'),('5550f372','@craft/web/assets/velocity/dist'),('5866d176','@craft/web/assets/craftsupport/dist'),('5a0206b2','@craft/web/assets/xregexp/dist'),('5a4cbce3','@craft/web/assets/clearcaches/dist'),('5a557c9b','@craft/web/assets/feed/dist'),('5af3f665','@craft/web/assets/assetindexes/dist'),('654041df','@craft/web/assets/craftsupport/dist'),('6695a0d','@bower/jquery/dist'),('6724961b','@craft/web/assets/xregexp/dist'),('676a2c4a','@craft/web/assets/clearcaches/dist'),('6773ec32','@craft/web/assets/feed/dist'),('677c0f89','@craft/web/assets/edittransform/dist'),('67d566cc','@craft/web/assets/assetindexes/dist'),('687663db','@craft/web/assets/velocity/dist'),('6c9c2b1b','@craft/web/assets/picturefill/dist'),('6db2be0e','@craft/web/assets/jquerytouchevents/dist'),('6de1616c','@craft/web/assets/jquerypayment/dist'),('74cbe2b0','@craft/redactor/assets/field/dist'),('7c0e4bdf','@craft/web/assets/editsection/dist'),('7c56bb80','@craft/web/assets/vue/dist'),('8260568d','@craft/web/assets/utilities/dist'),('8583acad','@craft/web/assets/queuemanager/dist'),('87de670d','@craft/web/assets/garnish/dist'),('924ac0b3','@craft/web/assets/fabric/dist'),('93e95ab6','@craft/web/assets/focalpoint/dist'),('9cb8c4ae','@craft/web/assets/sites/dist'),('a19e5407','@craft/web/assets/sites/dist'),('a94a9f93','@yii/debug/assets'),('ad77d8aa','@brilliance/pluginkeygenerator/assetbundles/pluginkeygeneratorutilityutility/dist'),('ae64876','@craft/web/assets/htmx/dist'),('af6c501a','@craft/web/assets/fabric/dist'),('b79d125d','@craft/web/assets/matrix/dist'),('b8a53c04','@craft/web/assets/queuemanager/dist'),('baf8f7a4','@craft/web/assets/garnish/dist'),('bf46c624','@craft/web/assets/utilities/dist'),('c0a3d4a7','@craft/redactor/assets/redactor/dist/redactor-plugins/video'),('c1706511','@craft/web/assets/recententries/dist'),('c198baf2','@bower/yii2-pjax'),('c2a7480e','@craft/web/assets/d3/dist'),('c2ecb7d6','@craft/web/assets/updateswidget/dist'),('c2f70d45','@craft/web/assets/conditionbuilder/dist'),('c8b3234e','@craft/web/assets/updater/dist'),('c8eca1b','@craft/web/assets/jqueryui/dist'),('c9c641b9','@craft/web/assets/iframeresizer/dist'),('cbc3e38d','@craft/web/assets/generalsettings/dist'),('cc329a39','@craft/web/assets/findreplace/dist'),('d1e95e3a','@craft/web/assets/pluginstore/dist'),('d3cf762d','@craft/web/assets/tailwindreset/dist'),('d4dacc0f','@craft/web/assets/selectize/dist'),('d8926e47','@craft/web/assets/cp/dist'),('d985f048','@craft/web/assets/axios/dist'),('e1c7c929','@craft/redactor/assets/redactor/dist'),('e4a360e1','@craft/web/assets/axios/dist'),('e5b4feee','@craft/web/assets/cp/dist'),('e9fc5ca6','@craft/web/assets/selectize/dist'),('eccfce93','@craft/web/assets/pluginstore/dist'),('ecde123','@craft/redactor/assets/redactor/dist/redactor-plugins/fullscreen'),('eee9e684','@craft/web/assets/tailwindreset/dist'),('eefbf506','@vendor/yiisoft/yii2/assets'),('f1140a90','@craft/web/assets/findreplace/dist'),('f2890426','@craft/web/assets/fieldsettings/dist'),('f4e0d110','@craft/web/assets/iframeresizer/dist'),('f595b3e7','@craft/web/assets/updater/dist'),('f6e57324','@craft/web/assets/generalsettings/dist'),('fc56f5b8','@craft/web/assets/recententries/dist'),('feecff60','@brilliance/pluginkeygenerator/assetbundles/pluginkeygenerator/dist'),('ff81d8a7','@craft/web/assets/d3/dist'),('ffca277f','@craft/web/assets/updateswidget/dist');
/*!40000 ALTER TABLE `site1_resourcepaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_revisions`
--

DROP TABLE IF EXISTS `site1_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canonicalId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_ufymlwzisqcvainjbqubjfyqcckdyrcszham` (`canonicalId`,`num`),
  KEY `site1_fk_vkbpqbzmwkmcyubmvynokqficzgwzbkosrns` (`creatorId`),
  CONSTRAINT `site1_fk_vkbpqbzmwkmcyubmvynokqficzgwzbkosrns` FOREIGN KEY (`creatorId`) REFERENCES `site1_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `site1_fk_wfyhqwrhwwotkdepxhzwafjrvgliqyabpuuc` FOREIGN KEY (`canonicalId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_revisions`
--

LOCK TABLES `site1_revisions` WRITE;
/*!40000 ALTER TABLE `site1_revisions` DISABLE KEYS */;
INSERT INTO `site1_revisions` VALUES (1,2,1,1,NULL),(2,2,1,2,NULL),(3,2,1,3,NULL),(4,2,1,4,'Applied “Draft 1”'),(5,2,1,5,'Applied “Draft 1”'),(6,2,1,6,'Applied “Draft 1”'),(7,2,1,7,'Applied “Draft 1”'),(8,2,1,8,'Applied “Draft 1”'),(9,2,1,9,NULL),(10,2,1,10,'Applied “Draft 1”'),(11,47,1,1,NULL),(12,48,1,1,NULL),(13,49,1,1,NULL),(14,2,1,11,'Applied “Draft 1”'),(15,47,1,2,NULL),(16,48,1,2,NULL),(17,49,1,2,NULL),(18,2,1,12,'Applied “Draft 1”'),(19,47,1,3,NULL),(20,49,1,3,NULL),(21,48,1,3,NULL),(22,2,1,13,'Applied “Draft 1”'),(23,49,1,4,NULL),(24,48,1,4,NULL),(25,47,1,4,NULL),(26,69,1,1,''),(27,69,1,2,'Applied “Draft 1”'),(28,69,1,3,'Applied “Draft 1”'),(29,82,1,1,''),(30,82,1,2,'Applied “Draft 1”'),(31,69,1,4,'Applied “Draft 1”'),(32,82,1,3,'Applied “Draft 1”'),(33,90,1,1,''),(34,82,1,4,'Applied “Draft 1”'),(35,90,1,2,'Applied “Draft 1”'),(36,90,1,3,''),(37,82,1,5,'Applied “Draft 1”'),(38,99,1,1,NULL),(39,99,1,2,NULL),(40,99,1,3,NULL),(41,99,1,4,NULL),(42,99,1,5,NULL),(43,99,1,6,NULL),(44,99,1,7,NULL),(45,99,1,8,NULL),(46,99,1,9,'Applied “Draft 1”'),(47,2,1,14,NULL),(48,49,1,5,NULL),(49,48,1,5,NULL),(50,47,1,5,NULL),(51,2,1,15,'Applied “Draft 1”'),(52,49,1,6,NULL),(53,48,1,6,NULL),(54,47,1,6,NULL),(55,2,1,16,'Applied “Draft 1”'),(56,49,1,7,NULL),(57,48,1,7,NULL),(58,47,1,7,NULL),(59,124,1,1,''),(60,124,1,2,'Applied “Draft 1”'),(61,124,1,3,'Applied “Draft 1”'),(62,124,1,4,'Applied “Draft 1”'),(63,132,1,1,''),(64,132,1,2,'Applied “Draft 1”'),(65,124,1,5,''),(66,124,1,6,'Applied “Draft 1”'),(67,99,1,10,''),(68,99,1,11,'');
/*!40000 ALTER TABLE `site1_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_searchindex`
--

DROP TABLE IF EXISTS `site1_searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`),
  FULLTEXT KEY `site1_idx_eipilqkcxtmqxrsnsnqvheymwyoisonxfrfa` (`keywords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_searchindex`
--

LOCK TABLES `site1_searchindex` WRITE;
/*!40000 ALTER TABLE `site1_searchindex` DISABLE KEYS */;
INSERT INTO `site1_searchindex` VALUES (1,'email',0,1,' gildoduarte gmail com '),(1,'firstname',0,1,''),(1,'fullname',0,1,''),(1,'lastname',0,1,''),(1,'slug',0,1,''),(1,'username',0,1,' admin '),(2,'slug',0,1,' home '),(2,'title',0,1,' home '),(7,'extension',0,1,' jpg '),(7,'extension',0,2,' jpg '),(7,'filename',0,1,' gear jpg '),(7,'filename',0,2,' gear jpg '),(7,'kind',0,1,' image '),(7,'kind',0,2,' image '),(7,'slug',0,1,''),(7,'slug',0,2,''),(7,'title',0,1,' gear '),(7,'title',0,2,' gear '),(12,'extension',0,1,' jpg '),(12,'extension',0,2,' jpg '),(12,'filename',0,1,' hero jpg '),(12,'filename',0,2,' hero jpg '),(12,'kind',0,1,' image '),(12,'kind',0,2,' image '),(12,'slug',0,1,''),(12,'slug',0,2,''),(12,'title',0,1,' hero '),(12,'title',0,2,' hero '),(23,'extension',0,1,' jpg '),(23,'extension',0,2,' jpg '),(23,'filename',0,1,' henry potter jpg '),(23,'filename',0,2,' henry potter jpg '),(23,'kind',0,1,' image '),(23,'kind',0,2,' image '),(23,'slug',0,1,''),(23,'slug',0,2,''),(23,'title',0,1,' henry potter '),(23,'title',0,2,' henry potter '),(24,'extension',0,1,' jpg '),(24,'extension',0,2,' jpg '),(24,'filename',0,1,' jack starfield jpg '),(24,'filename',0,2,' jack starfield jpg '),(24,'kind',0,1,' image '),(24,'kind',0,2,' image '),(24,'slug',0,1,''),(24,'slug',0,2,''),(24,'title',0,1,' jack starfield '),(24,'title',0,2,' jack starfield '),(25,'extension',0,1,' jpg '),(25,'extension',0,2,' jpg '),(25,'filename',0,1,' sarah bradbury jpg '),(25,'filename',0,2,' sarah bradbury jpg '),(25,'kind',0,1,' image '),(25,'kind',0,2,' image '),(25,'slug',0,1,''),(25,'slug',0,2,''),(25,'title',0,1,' sarah bradbury '),(25,'title',0,2,' sarah bradbury '),(47,'slug',0,1,''),(48,'slug',0,1,''),(49,'slug',0,1,''),(69,'slug',0,1,' story 1 title '),(69,'title',0,1,' story i title '),(73,'extension',0,1,' jpg '),(73,'extension',0,2,' jpg '),(73,'filename',0,1,' photo 1606293715325 9329879fec0f jpg '),(73,'filename',0,2,' photo 1606293715325 9329879fec0f jpg '),(73,'kind',0,1,' image '),(73,'kind',0,2,' image '),(73,'slug',0,1,''),(73,'slug',0,2,''),(73,'title',0,1,' photo 1606293715325 9329879fec0f '),(73,'title',0,2,' photo 1606293715325 9329879fec0f '),(74,'extension',0,1,' jpg '),(74,'extension',0,2,' jpg '),(74,'filename',0,1,' vander films iwi2xbthf8u unsplash jpg '),(74,'filename',0,2,' vander films iwi2xbthf8u unsplash jpg '),(74,'kind',0,1,' image '),(74,'kind',0,2,' image '),(74,'slug',0,1,''),(74,'slug',0,2,''),(74,'title',0,1,' vander films i wi2xb th f8 u unsplash '),(74,'title',0,2,' vander films i wi2xb th f8 u unsplash '),(75,'extension',0,1,' jpg '),(75,'extension',0,2,' jpg '),(75,'filename',0,1,' felix lam j7fxkhtoqt0 unsplash jpg '),(75,'filename',0,2,' felix lam j7fxkhtoqt0 unsplash jpg '),(75,'kind',0,1,' image '),(75,'kind',0,2,' image '),(75,'slug',0,1,''),(75,'slug',0,2,''),(75,'title',0,1,' felix lam j7fxkht oqt0 unsplash '),(75,'title',0,2,' felix lam j7fxkht oqt0 unsplash '),(76,'extension',0,1,' jpg '),(76,'extension',0,2,' jpg '),(76,'filename',0,1,' forest jpg '),(76,'filename',0,2,' forest jpg '),(76,'kind',0,1,' image '),(76,'kind',0,2,' image '),(76,'slug',0,1,''),(76,'slug',0,2,''),(76,'title',0,1,' forest '),(76,'title',0,2,' forest '),(77,'extension',0,1,' jpg '),(77,'extension',0,2,' jpg '),(77,'filename',0,1,' jeremy bishop hmhjyqlwqwu unsplash jpg '),(77,'filename',0,2,' jeremy bishop hmhjyqlwqwu unsplash jpg '),(77,'kind',0,1,' image '),(77,'kind',0,2,' image '),(77,'slug',0,1,''),(77,'slug',0,2,''),(77,'title',0,1,' jeremy bishop h mhjy ql w qw u unsplash '),(77,'title',0,2,' jeremy bishop h mhjy ql w qw u unsplash '),(78,'extension',0,1,' jpg '),(78,'extension',0,2,' jpg '),(78,'filename',0,1,' mohit suthar a1 tfcbsp7w unsplash jpg '),(78,'filename',0,2,' mohit suthar a1 tfcbsp7w unsplash jpg '),(78,'kind',0,1,' image '),(78,'kind',0,2,' image '),(78,'slug',0,1,''),(78,'slug',0,2,''),(78,'title',0,1,' mohit suthar a1 t fc b sp7w unsplash '),(78,'title',0,2,' mohit suthar a1 t fc b sp7w unsplash '),(79,'extension',0,1,' jpg '),(79,'extension',0,2,' jpg '),(79,'filename',0,1,' mountains jpg '),(79,'filename',0,2,' mountains jpg '),(79,'kind',0,1,' image '),(79,'kind',0,2,' image '),(79,'slug',0,1,''),(79,'slug',0,2,''),(79,'title',0,1,' mountains '),(79,'title',0,2,' mountains '),(82,'slug',0,1,' vestibulum nec leo nisi '),(82,'title',0,1,' story ii title '),(90,'slug',0,1,' story iii title '),(90,'title',0,1,' story iii title '),(99,'slug',0,1,' stories listing '),(99,'title',0,1,' tales from the trail '),(124,'slug',0,1,' our gear '),(124,'title',0,1,' our gear '),(132,'slug',0,1,' fujifilm x pro2 camera '),(132,'title',0,1,' fujifilm x pro2 camera '),(133,'extension',0,1,' png '),(133,'extension',0,2,' png '),(133,'filename',0,1,' fujifilm x pro2 camera png '),(133,'filename',0,2,' fujifilm x pro2 camera png '),(133,'kind',0,1,' image '),(133,'kind',0,2,' image '),(133,'slug',0,1,''),(133,'slug',0,2,''),(133,'title',0,1,' fujifilm x pro2 camera '),(133,'title',0,2,' fujifilm x pro2 camera '),(137,'slug',0,1,''),(137,'slug',0,2,''),(138,'slug',0,1,''),(138,'slug',0,2,''),(139,'slug',0,1,''),(139,'slug',0,2,''),(140,'slug',0,1,''),(140,'slug',0,2,'');
/*!40000 ALTER TABLE `site1_searchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_sections`
--

DROP TABLE IF EXISTS `site1_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_dxleghifypktayynzgylarhaacjixlrzhohb` (`handle`),
  KEY `site1_idx_fbtvcyvuluokkngrkwlnntopvdffvypzuckz` (`name`),
  KEY `site1_idx_pawietomhgfcczpsmnnlgudifcfnpbwbltdk` (`structureId`),
  KEY `site1_idx_yolcfwbdyyqfyllaxdiuledkcugsvzgyseto` (`dateDeleted`),
  CONSTRAINT `site1_fk_hobbpirdsxtblusvumasebsgcyiwpqkugcpo` FOREIGN KEY (`structureId`) REFERENCES `site1_structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_sections`
--

LOCK TABLES `site1_sections` WRITE;
/*!40000 ALTER TABLE `site1_sections` DISABLE KEYS */;
INSERT INTO `site1_sections` VALUES (1,NULL,'Home','home','single',1,'all','end',NULL,'2022-12-09 01:22:42','2022-12-09 01:22:42',NULL,'dd8dc5b4-d777-4d74-8bd4-e126c2bf8d3c'),(2,NULL,'Stories','stories','channel',1,'all','end',NULL,'2022-12-09 12:08:52','2022-12-09 12:08:52',NULL,'eb60c7c5-b86d-4a67-acd3-75e4da63dcb4'),(3,NULL,'Stories Listing','storiesListing','single',1,'all','end',NULL,'2022-12-11 02:27:25','2022-12-11 02:27:25',NULL,'d3f8872c-40b2-4c68-a705-cce1ed9d936f'),(4,1,'General Pages','generalPages','structure',1,'all','end',NULL,'2022-12-11 02:54:34','2022-12-11 02:54:34',NULL,'25583e61-cfcc-45b3-a5ce-711d6b9df47e');
/*!40000 ALTER TABLE `site1_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_sections_sites`
--

DROP TABLE IF EXISTS `site1_sections_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_sections_sites` (
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
  UNIQUE KEY `site1_idx_wrpablahbfpwwjyjlwhvjsugadbjbtiywjhw` (`sectionId`,`siteId`),
  KEY `site1_idx_yjhpxigffhctkkulsbuhdohqpykyrfardqly` (`siteId`),
  CONSTRAINT `site1_fk_edevskvfvybzflvslvqbxfmekahqtipzmdvn` FOREIGN KEY (`sectionId`) REFERENCES `site1_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_ierhjxtyyzstwlafpiqulzkyshiyulnmejco` FOREIGN KEY (`siteId`) REFERENCES `site1_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_sections_sites`
--

LOCK TABLES `site1_sections_sites` WRITE;
/*!40000 ALTER TABLE `site1_sections_sites` DISABLE KEYS */;
INSERT INTO `site1_sections_sites` VALUES (1,1,1,1,'__home__','home.twig',1,'2022-12-09 01:22:42','2022-12-09 01:22:42','17835119-898d-4d87-a800-3f282990a1c8'),(2,2,1,1,'stories/{slug}','stories/_entry.twig',1,'2022-12-09 12:08:52','2022-12-09 13:14:49','40d03acd-d3cf-4a4d-a78e-d5f3f06266cb'),(3,3,1,1,'stories','stories/index.twig',1,'2022-12-11 02:27:25','2022-12-11 02:28:38','e11ded3b-573e-43dd-ad84-56ad978a80a1'),(4,4,1,1,'{parent.uri}/{slug}','general.twig',1,'2022-12-11 02:54:34','2022-12-11 02:54:34','f6189e0e-0486-4845-af83-7d4354b15f8f');
/*!40000 ALTER TABLE `site1_sections_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_sequences`
--

DROP TABLE IF EXISTS `site1_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_sequences`
--

LOCK TABLES `site1_sequences` WRITE;
/*!40000 ALTER TABLE `site1_sequences` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_sessions`
--

DROP TABLE IF EXISTS `site1_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_vywilqqywznolutxwaeixzqsfjzjuwkiotrt` (`uid`),
  KEY `site1_idx_sufujwsntqhulwhpjhnwcmsxfscdddhrpjzm` (`token`),
  KEY `site1_idx_loqubiuiwdqodtgipgwnguweytmmbggilwcf` (`dateUpdated`),
  KEY `site1_idx_dmmncuzvdlyjxtmpuqkbjbemuispyzordidj` (`userId`),
  CONSTRAINT `site1_fk_lyfaxivblcdslxunzjqfjlkhrwdjmcktljdn` FOREIGN KEY (`userId`) REFERENCES `site1_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_sessions`
--

LOCK TABLES `site1_sessions` WRITE;
/*!40000 ALTER TABLE `site1_sessions` DISABLE KEYS */;
INSERT INTO `site1_sessions` VALUES (3,1,'z5rfkfU8iGAB0dm-y-SJ-so4VJzjocFe49pUQVTfWLAJQiHq9jnQErCAjFeuFFdgsTnmJIjS4ADegVLlzPU_Htcx8_x9IE2-FBpG','2022-12-09 02:01:22','2022-12-09 02:51:51','ec2cb623-ddee-4cf3-844d-6bd12a5040c0'),(6,1,'2VRD0j9WF3hw_QehVyYgH-mLMMLCd59IkIRcNAylfm2WsJDiCbcHXEWU8LNzVgN62YwlzMNqsGFz2bGvJzbApQnO6uhWrmNTN2Xk','2022-12-11 05:00:23','2022-12-11 21:02:39','60df4c59-01f3-44ed-a7ef-4ccb4726c02f'),(7,1,'ATR0qYCOqpQQbFtQ725UUw94CaQtJ6H0xZodI_mccxTRr3DycGmb7YJg3BohgjPdIuDV4tV49dN94oE7DUEp8VupAudBFq86_ezf','2022-12-11 21:02:39','2022-12-11 21:03:29','cb9380f4-7f31-4eff-a2a3-5afe62c6fd0f'),(8,1,'O4DG35lUpn_QmosTXNWWzt5u2820MoCrkYuFl-n_Tn4m_3LcHuXBC_KflZ94hQ7c251eeh_7zT49gLLqSfBRURapJMijfRyd_ht6','2022-12-11 21:03:29','2022-12-11 21:15:11','fa661671-c93c-4b6c-9fc7-684879226697'),(9,1,'qeiDM6t8V23NCijvqBINgRYATDl3l14e1StWWjb9VRqWTOrql0ayP0XoPSXg41XF40OB4M12OUwC4AZ3mUSXRowEUuetybiNm1tD','2022-12-11 21:04:40','2022-12-11 21:04:40','95cb6697-361a-4ac4-b30d-fd59130e9836'),(10,1,'Ea9Pj6TRlPuNdyFdjDnXpCXpaSVdWxZRupJ_m1KknUE-oObSQGEOUstPZxn_sGEMsvx1TzC9i2j1l0mrPRqLrG-bpVFZBKwcIXTj','2022-12-11 21:05:41','2022-12-11 21:06:01','4eead0c7-9216-48a1-bdb0-d5ad053e853e'),(11,1,'gWVdVWG9R81VypgVVBnCNErXzaNGE0BOGH6Nnec-Ffc2FiL-mBr72NGbpGki5g2DA92FxOz-8e2yypHJDgG6lb154Z-TZuvAn3p-','2022-12-11 21:07:03','2022-12-11 21:07:03','2e7b9d8c-24f7-4761-b9a3-a94d1ebbf537'),(12,1,'QfzHmj39MkmfrZWtm3n0X8mnBKPhOBMGQmzpf6iY-Jc2YzE0kd8OKCWQcpZ-R25MHMAIhhtCyrslFJQLe8WvZmCWg8GE-l0_QTSL','2022-12-11 21:08:04','2022-12-11 21:08:04','417d6b74-c5fa-4762-ba30-6ff37f7b4a68'),(13,1,'-BYTIljGgsm-Cqp1jEmsOJJEgMJhJHGdSfvCS1CbEMn_KC4EG3swcJsVK7hVPM2VoTmFQGTajvTvowrtR8jl0yUsuAxZd_iMTqgY','2022-12-11 21:09:05','2022-12-11 21:09:05','fb9e6ed0-48bb-4125-ae4f-b373b235914e'),(14,1,'Mx0ebQIa-pqAl-T2LyuvpjiST9DavPZZB1jsEqE6CXy9rzXlN4jsI4aYTeUuB6_DMeIsKbx7FtnFTSnu60IBSmDjXWwRFNEsMPHG','2022-12-11 21:10:06','2022-12-11 21:10:06','c52c2ddc-4319-438b-bcc3-fa6b9f2335b5'),(15,1,'GfGBjIc0J3wKBtPTGJRuXV6sBfBfgogZcPXianlXOo1tIJ3_FvC5SU9MIQDLG5d4qF9UybxTOxiH-5ACZD3QZfyR7VTgDT0xeaNA','2022-12-11 21:11:07','2022-12-11 21:11:07','cf4159cd-2943-4542-b45a-87bc974b786f'),(16,1,'g65dpLnpzu5QAAAwHhkBUAPdjGmTBcwv-Cu5QwrLKtv2HU7ob2cEhi7bqERuRHNGJFNOQn-h-tIWk4qTky8D0XbeP3Y3tQw3P_hP','2022-12-11 21:12:08','2022-12-11 21:12:08','754d148a-da56-4865-971f-17f298200da4'),(17,1,'37GQDPZCU5_Nx_gf7-_gUMPMCV7h-3h7eouCtH5Y7ovM94v1MaF7112NhxbKkVkTr-9Dry3oEt2LH4Tfb-Y6tkikeuz9xU3vC_Ts','2022-12-11 21:13:09','2022-12-11 21:13:09','d1dcaa6e-7801-443d-8ec6-0ea2db36727c'),(18,1,'TmCWPQWngmskaxqP0wvFyhPCzk3005TzkkK6ZkORC0aGqf_9WHcrCVJse2nrWG9O0ZC53sl9MBi9uoJJnEYNDYm4eu3amijeg5Ag','2022-12-11 21:14:10','2022-12-11 21:14:10','9a78f279-9407-450a-ad65-a9219d093b02'),(19,1,'5uqOwC7C8riUTHCxabkjRfwTw8sPMbySmnGJUg2ofs3cZSIPCTt95jOuzlCEBRZoTTDevPtJJSyrZ4rfbaPHutGUK9kzr3qTRAnD','2022-12-11 21:15:11','2022-12-13 22:22:28','a86fb9e1-a10e-4b81-a917-9eb2e68e0ded'),(20,1,'G_2Uibr-xbontJVTaZ0dDrcPCZ-tQpoBTI1U67nSt2h9Q83NVzqAiInIvzaHHNUEJAop_S5Rw7X0T2RC3OF3TY9rP914lZkoACD_','2023-03-05 23:48:06','2023-03-06 00:05:41','ad7fdd07-0e8e-4032-b601-ab1cda8fffa5');
/*!40000 ALTER TABLE `site1_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_shunnedmessages`
--

DROP TABLE IF EXISTS `site1_shunnedmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_mtpasqgkwxwtsoqiyjtwnnieekqtbrwsmsbh` (`userId`,`message`),
  CONSTRAINT `site1_fk_maybmgkbhklloqcbcprevhvqugfhufuxzlri` FOREIGN KEY (`userId`) REFERENCES `site1_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_shunnedmessages`
--

LOCK TABLES `site1_shunnedmessages` WRITE;
/*!40000 ALTER TABLE `site1_shunnedmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_shunnedmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_sitegroups`
--

DROP TABLE IF EXISTS `site1_sitegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_sitegroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_zlqtrwshofjudysalliiuoqnmlksxfqrzhug` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_sitegroups`
--

LOCK TABLES `site1_sitegroups` WRITE;
/*!40000 ALTER TABLE `site1_sitegroups` DISABLE KEYS */;
INSERT INTO `site1_sitegroups` VALUES (1,'Motoventure','2022-12-09 00:57:44','2022-12-09 00:57:44',NULL,'7bfe4aa4-58ae-4a01-8f0c-d8d9bdfec8a9');
/*!40000 ALTER TABLE `site1_sitegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_sites`
--

DROP TABLE IF EXISTS `site1_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` varchar(255) NOT NULL DEFAULT 'true',
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
  KEY `site1_idx_tplusajquqmrajsjsxszgxmwqyitefuzjyzk` (`dateDeleted`),
  KEY `site1_idx_vksatrdnuzsfsepoweynuqqyemqoyfubdcqk` (`handle`),
  KEY `site1_idx_engkebmwjzrfalddbcyihrrlyjpotazlzfrv` (`sortOrder`),
  KEY `site1_fk_xmndtzecxratpvxyvaiwpnduuueqbtsovvia` (`groupId`),
  CONSTRAINT `site1_fk_xmndtzecxratpvxyvaiwpnduuueqbtsovvia` FOREIGN KEY (`groupId`) REFERENCES `site1_sitegroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_sites`
--

LOCK TABLES `site1_sites` WRITE;
/*!40000 ALTER TABLE `site1_sites` DISABLE KEYS */;
INSERT INTO `site1_sites` VALUES (1,1,1,'true','Motoventure','default','pt-PT',1,'$PRIMARY_SITE_URL',1,'2022-12-09 00:57:44','2022-12-09 00:57:44',NULL,'145f1473-c721-4593-8740-4fceafa405d8'),(2,1,0,'1','Subdomain','subdomain','pt-PT',1,'@web/subdomain',2,'2022-12-11 20:29:43','2022-12-11 20:29:43','2022-12-11 20:31:02','b793ac52-e50e-414d-b6db-1da5b2517d46');
/*!40000 ALTER TABLE `site1_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_structureelements`
--

DROP TABLE IF EXISTS `site1_structureelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_structureelements` (
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
  UNIQUE KEY `site1_idx_ftgwnvccfhdmvkyqzrpzohblrxezbhanlzkk` (`structureId`,`elementId`),
  KEY `site1_idx_mzeqrhkmptawjvsinsnmucdfgarkdglcfrol` (`root`),
  KEY `site1_idx_ssitacynwnmlfhrmgsjzyfmqkixmxwwwxotf` (`lft`),
  KEY `site1_idx_lmozccrhhfqkszvjyuvybdieqlyfwunredsk` (`rgt`),
  KEY `site1_idx_cyqzppawgqcnshkyhtjtvpxslcohlgqmapdc` (`level`),
  KEY `site1_idx_dobuofypyzgvijtgwuuvftrbfhdhhrahdguc` (`elementId`),
  CONSTRAINT `site1_fk_hflfnagtdcmebwxextlcjawgkxdsvlalmbbf` FOREIGN KEY (`structureId`) REFERENCES `site1_structures` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_uopzrejupqdldnvmoidjenuvjythbvrfxnmy` FOREIGN KEY (`elementId`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_structureelements`
--

LOCK TABLES `site1_structureelements` WRITE;
/*!40000 ALTER TABLE `site1_structureelements` DISABLE KEYS */;
INSERT INTO `site1_structureelements` VALUES (1,1,NULL,1,1,6,0,'2022-12-11 02:55:46','2022-12-11 03:08:49','415a9dda-d206-4d35-a039-501992a3a5bb'),(2,1,124,1,2,5,1,'2022-12-11 02:55:46','2022-12-11 03:08:49','1f9186da-9d8d-4f23-a5e3-c5fe14dc32b6'),(3,1,132,1,3,4,2,'2022-12-11 03:02:52','2022-12-11 03:08:49','cb9ccb7c-a40a-42c8-b157-d7ef53ec8f75');
/*!40000 ALTER TABLE `site1_structureelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_structures`
--

DROP TABLE IF EXISTS `site1_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_xzursvqqjbuwvursgetqrqhonaubzxhtnphz` (`dateDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_structures`
--

LOCK TABLES `site1_structures` WRITE;
/*!40000 ALTER TABLE `site1_structures` DISABLE KEYS */;
INSERT INTO `site1_structures` VALUES (1,2,'2022-12-11 02:54:34','2022-12-11 02:54:34',NULL,'1dc2afb6-a18a-4e58-aa35-10aa1fa142a1');
/*!40000 ALTER TABLE `site1_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_systemmessages`
--

DROP TABLE IF EXISTS `site1_systemmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_systemmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_fqvweqxriwdzssrmduirukhguxemkannfxzh` (`key`,`language`),
  KEY `site1_idx_mdeupdnfwstrkzznyksdobmrwzbdiomueevj` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_systemmessages`
--

LOCK TABLES `site1_systemmessages` WRITE;
/*!40000 ALTER TABLE `site1_systemmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_systemmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_taggroups`
--

DROP TABLE IF EXISTS `site1_taggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_xiiccwnnonrehikbkxhsnzqinbjhxuxtzoxm` (`name`),
  KEY `site1_idx_vtmlxzeokzbpgqynkejmwvmopgihxqjomgcv` (`handle`),
  KEY `site1_idx_alhuaaxuyszqihfrlyjpzqyblbpzmdghxsfm` (`dateDeleted`),
  KEY `site1_fk_lnsahrufkauuckuzisflgyxjouncrucmfqqy` (`fieldLayoutId`),
  CONSTRAINT `site1_fk_lnsahrufkauuckuzisflgyxjouncrucmfqqy` FOREIGN KEY (`fieldLayoutId`) REFERENCES `site1_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_taggroups`
--

LOCK TABLES `site1_taggroups` WRITE;
/*!40000 ALTER TABLE `site1_taggroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_taggroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_tags`
--

DROP TABLE IF EXISTS `site1_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site1_idx_vlcrxfmnzaydpedpolqpbvlvvcujqqdgifhy` (`groupId`),
  CONSTRAINT `site1_fk_fdcwufltalbtwuhavvbwwaqwmvigzmrgrzja` FOREIGN KEY (`groupId`) REFERENCES `site1_taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_gcbhdysddklxzvutitdzejjhlockwpvnvcsq` FOREIGN KEY (`id`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_tags`
--

LOCK TABLES `site1_tags` WRITE;
/*!40000 ALTER TABLE `site1_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_tokens`
--

DROP TABLE IF EXISTS `site1_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_tokens` (
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
  UNIQUE KEY `site1_idx_foighhgznvjplctcheiokavebsmxeyxtrxkc` (`token`),
  KEY `site1_idx_qfyvtbhyylprbvgrzocnwyptlcsbmmbueksn` (`expiryDate`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_tokens`
--

LOCK TABLES `site1_tokens` WRITE;
/*!40000 ALTER TABLE `site1_tokens` DISABLE KEYS */;
INSERT INTO `site1_tokens` VALUES (2,'CUGTCbOPljsXOev1JBttgCAf_QpoHwSr','[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"canonicalId\":124,\"siteId\":1,\"draftId\":null,\"revisionId\":null,\"userId\":1}]',NULL,NULL,'2022-12-12 03:00:56','2022-12-11 03:00:56','2022-12-11 03:00:56','09211c55-114b-4549-a117-9864b2299e8b'),(3,'vK3PzMBXiphXl6uIe0DA4wjUWmqHzK2n','[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"canonicalId\":132,\"siteId\":1,\"draftId\":28,\"revisionId\":null,\"userId\":1}]',NULL,NULL,'2022-12-12 03:08:06','2022-12-11 03:08:06','2022-12-11 03:08:06','032e47a4-21cb-4064-8f3c-44cdaddbde9d');
/*!40000 ALTER TABLE `site1_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_usergroups`
--

DROP TABLE IF EXISTS `site1_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_yzfypdtlbjkwrxrjaxtplxwkowxpujcqvqih` (`handle`),
  KEY `site1_idx_trshjqvikdnbcnkpjezcsyqzbleonzjewisv` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_usergroups`
--

LOCK TABLES `site1_usergroups` WRITE;
/*!40000 ALTER TABLE `site1_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_usergroups_users`
--

DROP TABLE IF EXISTS `site1_usergroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_magcjxaxnyhiqefgawhdghvycvhaefezblqq` (`groupId`,`userId`),
  KEY `site1_idx_zhnpfrmsmthqxeakdxsybxvzdlglmnualjuj` (`userId`),
  CONSTRAINT `site1_fk_gozsjuxzexvexhkgjwncrbkwvixgzsxyyrvg` FOREIGN KEY (`userId`) REFERENCES `site1_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_inmxkjufnqwbqgxupnukkisouydlwkeedebg` FOREIGN KEY (`groupId`) REFERENCES `site1_usergroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_usergroups_users`
--

LOCK TABLES `site1_usergroups_users` WRITE;
/*!40000 ALTER TABLE `site1_usergroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_userpermissions`
--

DROP TABLE IF EXISTS `site1_userpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_yuvunitccznopfljuuglxtrkdssvjdwgwptf` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_userpermissions`
--

LOCK TABLES `site1_userpermissions` WRITE;
/*!40000 ALTER TABLE `site1_userpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_userpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_userpermissions_usergroups`
--

DROP TABLE IF EXISTS `site1_userpermissions_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_goxgxskncfqkhlmedoobrrnkzndegbfiaiag` (`permissionId`,`groupId`),
  KEY `site1_idx_llpwoifzlwoxcqqecnmhojjfzkyqhhrzstgf` (`groupId`),
  CONSTRAINT `site1_fk_aejlatvctyuipuqydkrfvrdcagapnodprwqx` FOREIGN KEY (`groupId`) REFERENCES `site1_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_bnoxwxsawlodpsnmdmhgxxqhmyfjumvgcyoc` FOREIGN KEY (`permissionId`) REFERENCES `site1_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_userpermissions_usergroups`
--

LOCK TABLES `site1_userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `site1_userpermissions_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_userpermissions_users`
--

DROP TABLE IF EXISTS `site1_userpermissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_guhhisfusytpdtfgpzkckkdlhgooelhhrdlg` (`permissionId`,`userId`),
  KEY `site1_idx_vhuigriaqysewceeysjfmtavuzvieiaxzeub` (`userId`),
  CONSTRAINT `site1_fk_bjoxevxnssphifjudetxcgczowbjsruycqir` FOREIGN KEY (`userId`) REFERENCES `site1_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_wheclhajqiqzxthwkqjsehsinzmzeheoncxp` FOREIGN KEY (`permissionId`) REFERENCES `site1_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_userpermissions_users`
--

LOCK TABLES `site1_userpermissions_users` WRITE;
/*!40000 ALTER TABLE `site1_userpermissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `site1_userpermissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_userpreferences`
--

DROP TABLE IF EXISTS `site1_userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_userpreferences` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `preferences` text,
  PRIMARY KEY (`userId`),
  CONSTRAINT `site1_fk_qctigmpnzakcoqnibzionlwsngrslgiygoyu` FOREIGN KEY (`userId`) REFERENCES `site1_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_userpreferences`
--

LOCK TABLES `site1_userpreferences` WRITE;
/*!40000 ALTER TABLE `site1_userpreferences` DISABLE KEYS */;
INSERT INTO `site1_userpreferences` VALUES (1,'{\"language\":\"en-US\",\"locale\":\"pt\",\"weekStartDay\":\"1\",\"alwaysShowFocusRings\":false,\"useShapes\":false,\"underlineLinks\":false,\"notificationDuration\":\"5000\",\"showFieldHandles\":false,\"enableDebugToolbarForSite\":false,\"enableDebugToolbarForCp\":false,\"showExceptionView\":false,\"profileTemplates\":false}');
/*!40000 ALTER TABLE `site1_userpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_users`
--

DROP TABLE IF EXISTS `site1_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_users` (
  `id` int(11) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `site1_idx_vchcppyszrtyouniaqrfkgxfouisgjwvidmn` (`active`),
  KEY `site1_idx_bbvhqkdyzxzmmtyzkevpcbtrbwrcahplhota` (`locked`),
  KEY `site1_idx_qzwytckxiaxxmpzegqmcsuhqbauqbxymrjrd` (`pending`),
  KEY `site1_idx_phlkyssdfzxsxinufwyyrcxvmtasmjbtdjuo` (`suspended`),
  KEY `site1_idx_ykdajqykxqiuvaezzvudbezsqnzqtifhgymf` (`verificationCode`),
  KEY `site1_idx_tprryottvjaxnzotvsxzehhvmeegrfdglpvz` (`email`),
  KEY `site1_idx_gqyopueozjikwcdqiybvnqwkzzjpgqbqkibr` (`username`),
  KEY `site1_fk_bpavnuusmavezofslsegjaqnhyfygmaalpxg` (`photoId`),
  CONSTRAINT `site1_fk_bpavnuusmavezofslsegjaqnhyfygmaalpxg` FOREIGN KEY (`photoId`) REFERENCES `site1_assets` (`id`) ON DELETE SET NULL,
  CONSTRAINT `site1_fk_kbdoovoycssrjqdnhbmzttryulxjatmrktdq` FOREIGN KEY (`id`) REFERENCES `site1_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_users`
--

LOCK TABLES `site1_users` WRITE;
/*!40000 ALTER TABLE `site1_users` DISABLE KEYS */;
INSERT INTO `site1_users` VALUES (1,NULL,1,0,0,0,1,'admin','',NULL,NULL,'gildoduarte@gmail.com','$2y$13$gqvbiDp7VYPLqyp.H3uO1.aTv1eYjyDL.CxoFWV75XWZzN8eCXvNy','2023-03-05 23:48:06',NULL,NULL,NULL,'2023-03-05 23:48:00',NULL,1,NULL,NULL,NULL,0,'2022-12-09 00:57:45','2022-12-09 00:57:45','2023-03-05 23:48:06');
/*!40000 ALTER TABLE `site1_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_volumefolders`
--

DROP TABLE IF EXISTS `site1_volumefolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_volumefolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site1_idx_qmxrgrzwxbzgrmzkrcbhbciusyzvpacjziqj` (`name`,`parentId`,`volumeId`),
  KEY `site1_idx_oydfdvxhokweejkdrkoydujqlxrbbuktkusm` (`parentId`),
  KEY `site1_idx_nsadsrozhhnfddxezgnhltamvslrgjexgoyd` (`volumeId`),
  CONSTRAINT `site1_fk_lqlxkhkamikcwkoxoswlubdtfqllitvqkdfd` FOREIGN KEY (`parentId`) REFERENCES `site1_volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `site1_fk_ojucjprfgwinvuwxprdpnnqdhuiqdrczyixe` FOREIGN KEY (`volumeId`) REFERENCES `site1_volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_volumefolders`
--

LOCK TABLES `site1_volumefolders` WRITE;
/*!40000 ALTER TABLE `site1_volumefolders` DISABLE KEYS */;
INSERT INTO `site1_volumefolders` VALUES (1,NULL,1,'Uploads','','2022-12-09 01:28:22','2022-12-09 01:28:22','18961eed-ecc6-4f33-8a9e-90c7af52353a'),(2,NULL,NULL,'Temporary filesystem',NULL,'2022-12-09 01:38:33','2022-12-09 01:38:33','fd6ec7b2-9970-46ab-a7bc-f1f225c620a5'),(3,2,NULL,'user_1','user_1/','2022-12-09 01:38:33','2022-12-09 01:38:33','28e4ba05-99b2-46df-85e5-c133e6c5e5ac');
/*!40000 ALTER TABLE `site1_volumefolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_volumes`
--

DROP TABLE IF EXISTS `site1_volumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_volumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fs` varchar(255) NOT NULL,
  `transformFs` varchar(255) DEFAULT NULL,
  `transformSubpath` varchar(255) DEFAULT NULL,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site1_idx_aspqlmwhlbhzuhexvcwseyecfwwfxfwjtnue` (`name`),
  KEY `site1_idx_rurpcurkznhjbqejmyfdkaachudjhmvgmmpa` (`handle`),
  KEY `site1_idx_rlqrvgwtqeprnbitzenisrhpwwrrzekrcbbn` (`fieldLayoutId`),
  KEY `site1_idx_wxghncjygxpcwziabkhyidraqbuoqebcjkgr` (`dateDeleted`),
  CONSTRAINT `site1_fk_pvvfzzbairdvqkoxefsbenlbbkwpkhwhunbj` FOREIGN KEY (`fieldLayoutId`) REFERENCES `site1_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_volumes`
--

LOCK TABLES `site1_volumes` WRITE;
/*!40000 ALTER TABLE `site1_volumes` DISABLE KEYS */;
INSERT INTO `site1_volumes` VALUES (1,2,'Uploads','uploads','uploads','','','site',NULL,1,'2022-12-09 01:28:22','2022-12-09 01:28:22',NULL,'be687ace-5f16-40ac-95e9-7591dda66d5a');
/*!40000 ALTER TABLE `site1_volumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site1_widgets`
--

DROP TABLE IF EXISTS `site1_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site1_widgets` (
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
  KEY `site1_idx_biyuyvunlnglpgawffqblwgtrooawhztwmpm` (`userId`),
  CONSTRAINT `site1_fk_nhxrdkmpalzexpcexptsocloebgynmtvjmah` FOREIGN KEY (`userId`) REFERENCES `site1_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site1_widgets`
--

LOCK TABLES `site1_widgets` WRITE;
/*!40000 ALTER TABLE `site1_widgets` DISABLE KEYS */;
INSERT INTO `site1_widgets` VALUES (1,1,'craft\\widgets\\RecentEntries',1,NULL,'{\"siteId\":1,\"section\":\"*\",\"limit\":10}',1,'2022-12-09 00:58:26','2022-12-09 00:58:26','fcb1f4c8-a891-4539-a73c-71d534600dbf'),(2,1,'craft\\widgets\\CraftSupport',2,NULL,'[]',1,'2022-12-09 00:58:26','2022-12-09 00:58:26','64d1828d-b4cd-455f-a413-a888e9531b08'),(3,1,'craft\\widgets\\Updates',3,NULL,'[]',1,'2022-12-09 00:58:26','2022-12-09 00:58:26','046640e8-00e6-4aa9-ab4d-652f8be2713d'),(4,1,'craft\\widgets\\Feed',4,NULL,'{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}',1,'2022-12-09 00:58:26','2022-12-09 00:58:26','fc51021d-1379-4e26-a96e-70c8d988f308');
/*!40000 ALTER TABLE `site1_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'craftcms4'
--

--
-- Dumping routines for database 'craftcms4'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-06  0:05:41
